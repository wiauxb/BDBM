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
define internal fastcc void @print_arraym15161636(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i181.i = add i32 %arg_esp, 4
  %tmp0_v.i182.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i184.i = add i32 %tmp0_v.i182.i, -4
  %3 = inttoptr i32 %tmp2_v3.i184.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i185.i = add i32 %tmp0_v.i182.i, -8
  %4 = inttoptr i32 %tmp2_v4.i185.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i187.i = add i32 %tmp0_v.i182.i, -12
  %5 = inttoptr i32 %tmp2_v5.i187.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i189.i = add i32 %tmp0_v.i182.i, -16
  %6 = inttoptr i32 %tmp2_v6.i189.i to i32*
  store i32 %tmp2_v.i181.i, i32* %6, align 16
  %tmp2_v8.i191.i = add i32 %tmp0_v.i182.i, -84
  %7 = inttoptr i32 %tmp2_v8.i191.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i182.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i182.i, -52
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i182.i, -48
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 2, i32* %12, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i182.i, -44
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i182.i, -40
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i182.i, -36
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i182.i, -32
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i182.i, -28
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i182.i, -24
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 8, i32* %18, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i182.i, -56
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %19, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i182.i, -72
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* %19, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %BB_804924A.i.lr.ph, label %.BB_8049270.i_crit_edge

.BB_8049270.i_crit_edge:                          ; preds = %0
  %.pre31 = add i32 %tmp0_v.i182.i, -96
  %.pre32 = inttoptr i32 %.pre31 to i32*
  %.pre33 = add i32 %tmp0_v.i182.i, -100
  %.pre34 = inttoptr i32 %.pre33 to i32*
  br label %BB_8049270.i

BB_804924A.i.lr.ph:                               ; preds = %0
  %tmp2_v5.i175.i = add i32 %tmp0_v.i182.i, -92
  %23 = inttoptr i32 %tmp2_v5.i175.i to i32*
  %tmp2_v7.i178.i = add i32 %tmp0_v.i182.i, -96
  %24 = inttoptr i32 %tmp2_v7.i178.i to i32*
  %tmp2_v8.i179.i = add i32 %tmp0_v.i182.i, -100
  %25 = inttoptr i32 %tmp2_v8.i179.i to i32*
  br label %BB_804924A.i

BB_804933F.i:                                     ; preds = %BB_8049333.i, %BB_80492EB.i
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517577, i32* %.pre-phi35, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %26 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  ret void

BB_80492AC.i.loopexit:                            ; preds = %BB_8049286.i
  %27 = trunc i64 %58 to i32
  br label %BB_80492AC.i

BB_80492AC.i:                                     ; preds = %BB_8049270.i, %BB_80492AC.i.loopexit
  %r_edx.2.lcssa = phi i32 [ %r_edx.0.lcssa, %BB_8049270.i ], [ %27, %BB_80492AC.i.loopexit ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517430, i32* %.pre-phi35, align 4
  %arg.i.i7 = load i32, i32* %.pre-phi, align 16
  %28 = tail call i32 @putchar(i32 %arg.i.i7)  nounwind 
  %tmp2_v.i7.i = add i32 %tmp0_v.i182.i, -64
  %29 = inttoptr i32 %tmp2_v.i7.i to i32*
  store i32 0, i32* %29, align 16
  %30 = load i32, i32* %19, align 8
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %BB_80492C2.i.lr.ph, label %BB_80492EB.i

BB_80492C2.i.lr.ph:                               ; preds = %BB_80492AC.i
  %tmp2_v5.i62.i = add i32 %tmp0_v.i182.i, -88
  %32 = inttoptr i32 %tmp2_v5.i62.i to i32*
  %tmp2_v8.i64.i = add i32 %tmp0_v.i182.i, -92
  %33 = inttoptr i32 %tmp2_v8.i64.i to i32*
  br label %BB_80492C2.i

BB_80492EB.i.loopexit:                            ; preds = %BB_80492C2.i
  %34 = trunc i64 %50 to i32
  br label %BB_80492EB.i

BB_80492EB.i:                                     ; preds = %BB_80492EB.i.loopexit, %BB_80492AC.i
  %r_edx.1.lcssa = phi i32 [ %r_edx.2.lcssa, %BB_80492AC.i ], [ %34, %BB_80492EB.i.loopexit ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517493, i32* %.pre-phi35, align 4
  %arg.i.i8 = load i32, i32* %.pre-phi, align 16
  %35 = tail call i32 @putchar(i32 %arg.i.i8)  nounwind 
  %tmp2_v.i72.i = add i32 %tmp0_v.i182.i, -60
  %36 = inttoptr i32 %tmp2_v.i72.i to i32*
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %19, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %BB_8049301.i.lr.ph, label %BB_804933F.i

BB_8049301.i.lr.ph:                               ; preds = %BB_80492EB.i
  %tmp2_v5.i139.i = add i32 %tmp0_v.i182.i, -92
  %39 = inttoptr i32 %tmp2_v5.i139.i to i32*
  br label %BB_8049301.i

BB_8049270.i.loopexit:                            ; preds = %BB_804924A.i
  %40 = trunc i64 %77 to i32
  br label %BB_8049270.i

BB_8049270.i:                                     ; preds = %BB_8049270.i.loopexit, %.BB_8049270.i_crit_edge
  %.pre-phi35 = phi i32* [ %.pre34, %.BB_8049270.i_crit_edge ], [ %25, %BB_8049270.i.loopexit ]
  %.pre-phi = phi i32* [ %.pre32, %.BB_8049270.i_crit_edge ], [ %24, %BB_8049270.i.loopexit ]
  %tmp2_v.i45.i.pre-phi = phi i32 [ %.pre31, %.BB_8049270.i_crit_edge ], [ %tmp2_v7.i178.i, %BB_8049270.i.loopexit ]
  %r_edx.0.lcssa = phi i32 [ 0, %.BB_8049270.i_crit_edge ], [ %40, %BB_8049270.i.loopexit ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517370, i32* %.pre-phi35, align 4
  %arg.i.i9 = load i32, i32* %.pre-phi, align 16
  %41 = tail call i32 @putchar(i32 %arg.i.i9)  nounwind 
  %tmp2_v.i.i = add i32 %tmp0_v.i182.i, -68
  %42 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %19, align 8
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_8049286.i.lr.ph, label %BB_80492AC.i

BB_8049286.i.lr.ph:                               ; preds = %BB_8049270.i
  %tmp2_v5.i92.i = add i32 %tmp0_v.i182.i, -92
  %45 = inttoptr i32 %tmp2_v5.i92.i to i32*
  br label %BB_8049286.i

BB_80492C2.i:                                     ; preds = %BB_80492C2.i, %BB_80492C2.i.lr.ph
  %r_edx.125 = phi i32 [ %r_edx.2.lcssa, %BB_80492C2.i.lr.ph ], [ %51, %BB_80492C2.i ]
  %storemerge224 = phi i32 [ 0, %BB_80492C2.i.lr.ph ], [ %tmp0_v2.i.i, %BB_80492C2.i ]
  %tmp4_v.i58.i = shl i32 %storemerge224, 2
  %tmp2_v2.i59.i = add i32 %tmp4_v.i58.i, %tmp2_v3.i.i
  %46 = inttoptr i32 %tmp2_v2.i59.i to i32*
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %32, align 8
  %48 = load i32, i32* %29, align 16
  store i32 %48, i32* %33, align 4
  store i32 134520848, i32* %.pre-phi, align 16
  store i32 134517468, i32* %.pre-phi35, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i181.i, i32 inreg noundef %r_edx.125, i32 noundef %tmp2_v.i45.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %29, align 16
  %tmp0_v2.i.i = add i32 %52, 1
  store i32 %tmp0_v2.i.i, i32* %29, align 16
  %53 = load i32, i32* %19, align 8
  %54 = icmp slt i32 %tmp0_v2.i.i, %53
  br i1 %54, label %BB_80492C2.i, label %BB_80492EB.i.loopexit

BB_8049286.i:                                     ; preds = %BB_8049286.i, %BB_8049286.i.lr.ph
  %r_edx.222 = phi i32 [ %r_edx.0.lcssa, %BB_8049286.i.lr.ph ], [ %59, %BB_8049286.i ]
  %storemerge21 = phi i32 [ 0, %BB_8049286.i.lr.ph ], [ %tmp0_v2.i149.i, %BB_8049286.i ]
  %tmp4_v.i87.i = shl i32 %storemerge21, 2
  %tmp2_v2.i88.i = add i32 %tmp4_v.i87.i, %tmp2_v3.i.i
  %55 = inttoptr i32 %tmp2_v2.i88.i to i32*
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %45, align 4
  store i32 134520844, i32* %.pre-phi, align 16
  store i32 134517405, i32* %.pre-phi35, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i181.i, i32 inreg noundef %r_edx.222, i32 noundef %tmp2_v.i45.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %42, align 4
  %tmp0_v2.i149.i = add i32 %60, 1
  store i32 %tmp0_v2.i149.i, i32* %42, align 4
  %61 = load i32, i32* %19, align 8
  %62 = icmp slt i32 %tmp0_v2.i149.i, %61
  br i1 %62, label %BB_8049286.i, label %BB_80492AC.i.loopexit

BB_8049301.i:                                     ; preds = %BB_8049333.i, %BB_8049301.i.lr.ph
  %r_edx.328 = phi i32 [ %r_edx.1.lcssa, %BB_8049301.i.lr.ph ], [ %67, %BB_8049333.i ]
  %storemerge127 = phi i32 [ 0, %BB_8049301.i.lr.ph ], [ %tmp0_v1.i159.i, %BB_8049333.i ]
  %tmp4_v.i134.i = shl i32 %storemerge127, 2
  %tmp2_v2.i135.i = add i32 %tmp4_v.i134.i, %tmp2_v3.i.i
  %63 = inttoptr i32 %tmp2_v2.i135.i to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %39, align 4
  store i32 134520864, i32* %.pre-phi, align 16
  store i32 134517528, i32* %.pre-phi35, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i181.i, i32 inreg noundef %r_edx.328, i32 noundef %tmp2_v.i45.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %66 = lshr i64 %65, 32
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %19, align 8
  %tmp0_v2.i113.i = add i32 %68, -1
  %69 = load i32, i32* %36, align 4
  %70 = icmp eq i32 %69, %tmp0_v2.i113.i
  br i1 %70, label %BB_8049333.i, label %BB_8049326.i

BB_8049333.i:                                     ; preds = %BB_8049326.i, %BB_8049301.i
  %71 = phi i32 [ %tmp0_v2.i113.i, %BB_8049301.i ], [ %.pre, %BB_8049326.i ]
  %tmp0_v1.i159.i = add i32 %71, 1
  store i32 %tmp0_v1.i159.i, i32* %36, align 4
  %72 = load i32, i32* %19, align 8
  %73 = icmp slt i32 %tmp0_v1.i159.i, %72
  br i1 %73, label %BB_8049301.i, label %BB_804933F.i

BB_804924A.i:                                     ; preds = %BB_804924A.i, %BB_804924A.i.lr.ph
  %r_edx.020 = phi i32 [ 0, %BB_804924A.i.lr.ph ], [ %78, %BB_804924A.i ]
  %storemerge319 = phi i32 [ 0, %BB_804924A.i.lr.ph ], [ %tmp0_v2.i201.i, %BB_804924A.i ]
  %tmp4_v.i170.i = shl i32 %storemerge319, 2
  %tmp2_v2.i171.i = add i32 %tmp4_v.i170.i, %tmp2_v3.i.i
  %74 = inttoptr i32 %tmp2_v2.i171.i to i32*
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %23, align 4
  store i32 134520840, i32* %24, align 16
  store i32 134517345, i32* %25, align 4
  %76 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i181.i, i32 inreg noundef %r_edx.020, i32 noundef %tmp2_v7.i178.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %77 = lshr i64 %76, 32
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* %20, align 8
  %tmp0_v2.i201.i = add i32 %79, 1
  store i32 %tmp0_v2.i201.i, i32* %20, align 8
  %80 = load i32, i32* %19, align 8
  %81 = icmp slt i32 %tmp0_v2.i201.i, %80
  br i1 %81, label %BB_804924A.i, label %BB_8049270.i.loopexit

BB_8049326.i:                                     ; preds = %BB_8049301.i
  store i32 44, i32* %.pre-phi, align 16
  store i32 134517552, i32* %.pre-phi35, align 4
  %arg.i.i18 = load i32, i32* %.pre-phi, align 16
  %82 = tail call i32 @putchar(i32 %arg.i.i18)  nounwind 
  %.pre = load i32, i32* %36, align 4
  br label %BB_8049333.i
}

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

  tail call fastcc void @print_arraym15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
