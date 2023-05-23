; Mutation 634
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.630 = constant [16 x i8] c"array[%d] = %d\0a\00"
@str.631 = constant [3 x i8] c"%d\00"
@str.632 = constant [4 x i8] c"%d\0a\00"
@str.633 = constant [4 x i8] c"%d \00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
._crit_edge:
  %1 = load i32, i32* @fpstt, align 16
  %.pre = and i64 %0, 4503599627370495
  %.pre1 = and i64 %0, 9218868437227405312
  %phi.cmp = icmp ne i64 %.pre1, 9218868437227405312
  %phi.cmp3 = icmp eq i64 %.pre, 0
  %2 = or i1 %phi.cmp, %phi.cmp3
  br i1 %2, label %float64_to_floatx80.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.exit

float64_to_floatx80.exit:                         ; preds = %.sink.split.i, %3, %._crit_edge
  %11 = add i32 %1, 7
  %12 = and i32 %11, 7
  store i32 %12, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: naked noinline
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr  naked noinline "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: mustprogress nounwind uwtable
define internal x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %0, i32 inreg noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr  mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %5 = alloca double, align 8
  %6 = tail call { i32, i32 } asm "movl    %esp, %ebx\0A\09movl    $2, %esp\0A\09calll   *$3\0A\09movl    %ebx, %esp", "={ax},={dx},r,r,{cx},{dx},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 %2, i32 %3, i32 %0, i32 %1)  nounwind readnone 
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  %9 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9)  nounwind 
  call void asm "fstpl   $0", "=*m,~{dirflag},~{fpsr},~{flags}"(double* nonnull elementtype(double) %5)  nounwind 
  %10 = load double, double* %5, align 8, !tbaa !6
  %11 = fptoui double %10 to i64
  call fastcc void @helper_fldl_ST0(i64 noundef %11)  nobuiltin nounwind "no-builtins" 
  %12 = zext i32 %8 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %7 to i64
  %15 = or i64 %13, %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9)  nounwind 
  ret i64 %15
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture)  argmemonly nofree nosync nounwind willreturn 

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture)  argmemonly nofree nosync nounwind willreturn 

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !10
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !10
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !10
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !10
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse nounwind
define internal fastcc void @print_array634(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i21.i = add i32 %arg_esp, 4
  %tmp0_v.i22.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i24.i = add i32 %tmp0_v.i22.i, -4
  %3 = inttoptr i32 %tmp2_v3.i24.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i22.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i22.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i22.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i21.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i22.i, -84
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i35.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i39.i = add i32 %tmp0_v.i22.i, -20
  %10 = inttoptr i32 %tmp2_v2.i39.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i22.i, -52
  %11 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i41.i = add i32 %tmp0_v.i22.i, -48
  %12 = inttoptr i32 %tmp2_v4.i41.i to i32*
  store i32 2, i32* %12, align 16
  %tmp2_v5.i42.i = add i32 %tmp0_v.i22.i, -44
  %13 = inttoptr i32 %tmp2_v5.i42.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i43.i = add i32 %tmp0_v.i22.i, -40
  %14 = inttoptr i32 %tmp2_v6.i43.i to i32*
  store i32 4, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i22.i, -36
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i44.i = add i32 %tmp0_v.i22.i, -32
  %16 = inttoptr i32 %tmp2_v8.i44.i to i32*
  store i32 6, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i22.i, -28
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i22.i, -24
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 8, i32* %18, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i22.i, -56
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %19, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i22.i, -72
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* %19, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %BB_804924A.i.lr.ph, label %.BB_8049270.i_crit_edge

.BB_8049270.i_crit_edge:                          ; preds = %0
  %.pre31 = add i32 %tmp0_v.i22.i, -96
  %.pre32 = inttoptr i32 %.pre31 to i32*
  %.pre33 = add i32 %tmp0_v.i22.i, -100
  %.pre34 = inttoptr i32 %.pre33 to i32*
  br label %BB_8049270.i

BB_804924A.i.lr.ph:                               ; preds = %0
  %tmp2_v5.i93.i = add i32 %tmp0_v.i22.i, -92
  %23 = inttoptr i32 %tmp2_v5.i93.i to i32*
  %tmp2_v7.i96.i = add i32 %tmp0_v.i22.i, -96
  %24 = inttoptr i32 %tmp2_v7.i96.i to i32*
  %tmp2_v8.i97.i = add i32 %tmp0_v.i22.i, -100
  %25 = inttoptr i32 %tmp2_v8.i97.i to i32*
  br label %BB_804924A.i

BB_8049333.i:                                     ; preds = %BB_8049326.i, %BB_8049301.i
  %26 = phi i32 [ %tmp0_v2.i.i, %BB_8049301.i ], [ %.pre, %BB_8049326.i ]
  %tmp0_v1.i59.i = add i32 %26, 1
  store i32 %tmp0_v1.i59.i, i32* %79, align 4
  %27 = load i32, i32* %19, align 8
  %28 = icmp slt i32 %tmp0_v1.i59.i, %27
  br i1 %28, label %BB_8049301.i, label %BB_804933F.i

BB_8049270.i.loopexit:                            ; preds = %BB_804924A.i
  %29 = trunc i64 %46 to i32
  br label %BB_8049270.i

BB_8049270.i:                                     ; preds = %BB_8049270.i.loopexit, %.BB_8049270.i_crit_edge
  %.pre-phi35 = phi i32* [ %.pre34, %.BB_8049270.i_crit_edge ], [ %25, %BB_8049270.i.loopexit ]
  %.pre-phi = phi i32* [ %.pre32, %.BB_8049270.i_crit_edge ], [ %24, %BB_8049270.i.loopexit ]
  %tmp2_v.i68.i.pre-phi = phi i32 [ %.pre31, %.BB_8049270.i_crit_edge ], [ %tmp2_v7.i96.i, %BB_8049270.i.loopexit ]
  %r_edx.3.lcssa = phi i32 [ 0, %.BB_8049270.i_crit_edge ], [ %29, %BB_8049270.i.loopexit ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517370, i32* %.pre-phi35, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %30 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i199.i = add i32 %tmp0_v.i22.i, -68
  %31 = inttoptr i32 %tmp2_v.i199.i to i32*
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %19, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %BB_8049286.i.lr.ph, label %BB_80492AC.i

BB_8049286.i.lr.ph:                               ; preds = %BB_8049270.i
  %tmp2_v5.i79.i = add i32 %tmp0_v.i22.i, -92
  %34 = inttoptr i32 %tmp2_v5.i79.i to i32*
  br label %BB_8049286.i

BB_8049286.i:                                     ; preds = %BB_8049286.i, %BB_8049286.i.lr.ph
  %r_edx.222 = phi i32 [ %r_edx.3.lcssa, %BB_8049286.i.lr.ph ], [ %39, %BB_8049286.i ]
  %storemerge21 = phi i32 [ 0, %BB_8049286.i.lr.ph ], [ %tmp0_v2.i178.i, %BB_8049286.i ]
  %tmp4_v.i74.i = shl i32 %storemerge21, 2
  %tmp2_v2.i75.i = add i32 %tmp4_v.i74.i, %tmp2_v3.i40.i
  %35 = inttoptr i32 %tmp2_v2.i75.i to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %34, align 4
  %spi633 = ptrtoint[4 x i8]* @str.633 to i32
  store i32 %spi633, i32* %.pre-phi, align 16
  store i32 134517405, i32* %.pre-phi35, align 4
  %37 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i21.i, i32 inreg noundef %r_edx.222, i32 noundef %tmp2_v.i68.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %38 = lshr i64 %37, 32
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %31, align 4
  %tmp0_v2.i178.i = add i32 %40, 1
  store i32 %tmp0_v2.i178.i, i32* %31, align 4
  %41 = load i32, i32* %19, align 8
  %42 = icmp slt i32 %tmp0_v2.i178.i, %41
  br i1 %42, label %BB_8049286.i, label %BB_80492AC.i.loopexit

BB_804924A.i:                                     ; preds = %BB_804924A.i, %BB_804924A.i.lr.ph
  %r_edx.320 = phi i32 [ 0, %BB_804924A.i.lr.ph ], [ %47, %BB_804924A.i ]
  %storemerge319 = phi i32 [ 0, %BB_804924A.i.lr.ph ], [ %tmp0_v2.i133.i, %BB_804924A.i ]
  %tmp4_v.i88.i = shl i32 %storemerge319, 2
  %tmp2_v2.i89.i = add i32 %tmp4_v.i88.i, %tmp2_v3.i40.i
  %43 = inttoptr i32 %tmp2_v2.i89.i to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %23, align 4
  %spi632 = ptrtoint[4 x i8]* @str.632 to i32
  store i32 %spi632, i32* %24, align 16
  store i32 134517345, i32* %25, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i21.i, i32 inreg noundef %r_edx.320, i32 noundef %tmp2_v7.i96.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %20, align 8
  %tmp0_v2.i133.i = add i32 %48, 1
  store i32 %tmp0_v2.i133.i, i32* %20, align 8
  %49 = load i32, i32* %19, align 8
  %50 = icmp slt i32 %tmp0_v2.i133.i, %49
  br i1 %50, label %BB_804924A.i, label %BB_8049270.i.loopexit

BB_8049301.i:                                     ; preds = %BB_8049301.i.lr.ph, %BB_8049333.i
  %r_edx.128 = phi i32 [ %r_edx.0.lcssa, %BB_8049301.i.lr.ph ], [ %55, %BB_8049333.i ]
  %storemerge127 = phi i32 [ 0, %BB_8049301.i.lr.ph ], [ %tmp0_v1.i59.i, %BB_8049333.i ]
  %tmp4_v.i106.i = shl i32 %storemerge127, 2
  %tmp2_v2.i107.i = add i32 %tmp4_v.i106.i, %tmp2_v3.i40.i
  %51 = inttoptr i32 %tmp2_v2.i107.i to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %82, align 4
  %spi631 = ptrtoint[3 x i8]* @str.631 to i32
  store i32 %spi631, i32* %.pre-phi, align 16
  store i32 134517528, i32* %.pre-phi35, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i21.i, i32 inreg noundef %r_edx.128, i32 noundef %tmp2_v.i68.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %19, align 8
  %tmp0_v2.i.i = add i32 %56, -1
  %57 = load i32, i32* %79, align 4
  %58 = icmp eq i32 %57, %tmp0_v2.i.i
  br i1 %58, label %BB_8049333.i, label %BB_8049326.i

BB_80492AC.i.loopexit:                            ; preds = %BB_8049286.i
  %59 = trunc i64 %38 to i32
  br label %BB_80492AC.i

BB_80492AC.i:                                     ; preds = %BB_80492AC.i.loopexit, %BB_8049270.i
  %r_edx.2.lcssa = phi i32 [ %r_edx.3.lcssa, %BB_8049270.i ], [ %59, %BB_80492AC.i.loopexit ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517430, i32* %.pre-phi35, align 4
  %arg.i.i13 = load i32, i32* %.pre-phi, align 16
  %60 = tail call i32 @putchar(i32 %arg.i.i13)  nounwind 
  %tmp2_v.i101.i = add i32 %tmp0_v.i22.i, -64
  %61 = inttoptr i32 %tmp2_v.i101.i to i32*
  store i32 0, i32* %61, align 16
  %62 = load i32, i32* %19, align 8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %BB_80492C2.i.lr.ph, label %BB_80492EB.i

BB_80492C2.i.lr.ph:                               ; preds = %BB_80492AC.i
  %tmp2_v5.i165.i = add i32 %tmp0_v.i22.i, -88
  %64 = inttoptr i32 %tmp2_v5.i165.i to i32*
  %tmp2_v8.i168.i = add i32 %tmp0_v.i22.i, -92
  %65 = inttoptr i32 %tmp2_v8.i168.i to i32*
  br label %BB_80492C2.i

BB_80492C2.i:                                     ; preds = %BB_80492C2.i, %BB_80492C2.i.lr.ph
  %r_edx.025 = phi i32 [ %r_edx.2.lcssa, %BB_80492C2.i.lr.ph ], [ %71, %BB_80492C2.i ]
  %storemerge224 = phi i32 [ 0, %BB_80492C2.i.lr.ph ], [ %tmp0_v2.i145.i, %BB_80492C2.i ]
  %tmp4_v.i160.i = shl i32 %storemerge224, 2
  %tmp2_v2.i161.i = add i32 %tmp4_v.i160.i, %tmp2_v3.i40.i
  %66 = inttoptr i32 %tmp2_v2.i161.i to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %64, align 8
  %68 = load i32, i32* %61, align 16
  store i32 %68, i32* %65, align 4
  %spi630 = ptrtoint[16 x i8]* @str.630 to i32
  store i32 %spi630, i32* %.pre-phi, align 16
  store i32 134517468, i32* %.pre-phi35, align 4
  %69 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i21.i, i32 inreg noundef %r_edx.025, i32 noundef %tmp2_v.i68.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %70 = lshr i64 %69, 32
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %61, align 16
  %tmp0_v2.i145.i = add i32 %72, 1
  store i32 %tmp0_v2.i145.i, i32* %61, align 16
  %73 = load i32, i32* %19, align 8
  %74 = icmp slt i32 %tmp0_v2.i145.i, %73
  br i1 %74, label %BB_80492C2.i, label %BB_80492EB.i.loopexit

BB_8049326.i:                                     ; preds = %BB_8049301.i
  store i32 44, i32* %.pre-phi, align 16
  store i32 134517552, i32* %.pre-phi35, align 4
  %arg.i.i16 = load i32, i32* %.pre-phi, align 16
  %75 = tail call i32 @putchar(i32 %arg.i.i16)  nounwind 
  %.pre = load i32, i32* %79, align 4
  br label %BB_8049333.i

BB_804933F.i:                                     ; preds = %BB_80492EB.i, %BB_8049333.i
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517577, i32* %.pre-phi35, align 4
  %arg.i.i17 = load i32, i32* %.pre-phi, align 16
  %76 = tail call i32 @putchar(i32 %arg.i.i17)  nounwind 
  ret void

BB_80492EB.i.loopexit:                            ; preds = %BB_80492C2.i
  %77 = trunc i64 %70 to i32
  br label %BB_80492EB.i

BB_80492EB.i:                                     ; preds = %BB_80492EB.i.loopexit, %BB_80492AC.i
  %r_edx.0.lcssa = phi i32 [ %r_edx.2.lcssa, %BB_80492AC.i ], [ %77, %BB_80492EB.i.loopexit ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517493, i32* %.pre-phi35, align 4
  %arg.i.i18 = load i32, i32* %.pre-phi, align 16
  %78 = tail call i32 @putchar(i32 %arg.i.i18)  nounwind 
  %tmp2_v.i55.i = add i32 %tmp0_v.i22.i, -60
  %79 = inttoptr i32 %tmp2_v.i55.i to i32*
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %19, align 8
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %BB_8049301.i.lr.ph, label %BB_804933F.i

BB_8049301.i.lr.ph:                               ; preds = %BB_80492EB.i
  %tmp2_v5.i111.i = add i32 %tmp0_v.i22.i, -92
  %82 = inttoptr i32 %tmp2_v5.i111.i to i32*
  br label %BB_8049301.i
}


!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 14.0.0"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 1, !"NumRegisterParameters", i32 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @print_array634(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
