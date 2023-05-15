; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
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

; Function Attrs: noinline
declare i32 @realloc(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @increase_size_dynamic_2d_arraym15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %7, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -116
  %8 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517298, i32* %8, align 4
  %tmp2_v.i525.i = add i32 %tmp0_v.i.i, -48
  %9 = inttoptr i32 %tmp2_v.i525.i to i32*
  store i32 4, i32* %9, align 16
  %tmp2_v1.i526.i = add i32 %tmp0_v.i.i, -44
  %10 = inttoptr i32 %tmp2_v1.i526.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v6.i532.i = add i32 %tmp0_v.i.i, -128
  %11 = inttoptr i32 %tmp2_v6.i532.i to i32*
  store i32 16, i32* %11, align 16
  %tmp2_v7.i533.i = add i32 %tmp0_v.i.i, -132
  %12 = inttoptr i32 %tmp2_v7.i533.i to i32*
  store i32 134517333, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @malloc(i32 %arg.i.i)
  %mrv.i32 = insertvalue { i32, i32 } undef, i32 %tmp2_v6.i532.i, 0
  %tmp2_v.i11.i = add i32 %tmp0_v.i.i, -40
  %14 = inttoptr i32 %tmp2_v.i11.i to i32*
  store i32 %13, i32* %14, align 8
  %tmp2_v1.i.i = add i32 %tmp0_v.i.i, -112
  %15 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %15, align 16
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %BB_8049264.i, label %BB_8049294.i

BB_8049532.i:                                     ; preds = %BB_80494DA.i, %BB_8049526.i
  %r_ecx.4.lcssa = phi i32 [ %r_ecx.2.lcssa, %BB_80494DA.i ], [ %r_ecx.7.lcssa, %BB_8049526.i ]
  %tmp2_v.i20.i = add i32 %tmp0_v.i.i, -60
  %18 = inttoptr i32 %tmp2_v.i20.i to i32*
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %BB_804953B.i.lr.ph, label %BB_8049532.i.BB_8049597.i_crit_edge

BB_8049532.i.BB_8049597.i_crit_edge:              ; preds = %BB_8049532.i
  %.pre91 = inttoptr i32 %r_esp.1.in.le.pre-phi to i32*
  %.pre93 = add i32 %r_esp.1.in.le.pre-phi, -4
  %.pre94 = inttoptr i32 %.pre93 to i32*
  br label %BB_8049597.i

BB_804953B.i.lr.ph:                               ; preds = %BB_8049532.i
  %tmp2_v.i151.i = add i32 %tmp0_v.i.i, -56
  %21 = inttoptr i32 %tmp2_v.i151.i to i32*
  %tmp2_v11.i215.i = add i32 %r_esp.1.in.le.pre-phi, 4
  %22 = inttoptr i32 %tmp2_v11.i215.i to i32*
  %23 = inttoptr i32 %r_esp.1.in.le.pre-phi to i32*
  %tmp2_v14.i219.i = add i32 %r_esp.1.in.le.pre-phi, -4
  %24 = inttoptr i32 %tmp2_v14.i219.i to i32*
  br label %BB_804953B.i

BB_8049338.i:                                     ; preds = %BB_80492FE.i, %BB_80492F5.i
  store i32 10, i32* %120, align 4
  store i32 134517570, i32* %121, align 4
  %arg.i.i34 = load i32, i32* %120, align 4
  %25 = tail call i32 @putchar(i32 %arg.i.i34)  nounwind 
  %26 = load i32, i32* %115, align 4
  %tmp0_v2.i418.i = add i32 %26, 1
  store i32 %tmp0_v2.i418.i, i32* %115, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %tmp0_v2.i418.i, %27
  br i1 %28, label %BB_80492F5.i, label %BB_8049351.i

BB_8049597.i:                                     ; preds = %BB_804957E.i, %BB_8049532.i.BB_8049597.i_crit_edge
  %.pre-phi95 = phi i32* [ %.pre94, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %24, %BB_804957E.i ]
  %.pre-phi92 = phi i32* [ %.pre91, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %23, %BB_804957E.i ]
  store i32 10, i32* %.pre-phi92, align 4
  store i32 134518177, i32* %.pre-phi95, align 4
  %arg.i.i35 = load i32, i32* %.pre-phi92, align 4
  %29 = tail call i32 @putchar(i32 %arg.i.i35)  nounwind 
  %tmp2_v.i521.i = add i32 %tmp0_v.i.i, -52
  %30 = inttoptr i32 %tmp2_v.i521.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80495AD.i, label %.exit

BB_804936B.i:                                     ; preds = %BB_804936B.i.lr.ph, %BB_804936B.i
  %storemerge265 = phi i32 [ 0, %BB_804936B.i.lr.ph ], [ %tmp0_v2.i105.i, %BB_804936B.i ]
  %33 = load i32, i32* %9, align 16
  %tmp4_v.i.i = shl i32 %33, 2
  %tmp4_v3.i.i = shl i32 %storemerge265, 2
  %34 = load i32, i32* %14, align 8
  %tmp0_v6.i.i = add i32 %34, %tmp4_v3.i.i
  %35 = inttoptr i32 %tmp0_v6.i.i to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %tmp4_v.i.i, i32* %114, align 4
  store i32 %36, i32* %.pre-phi, align 4
  store i32 134517663, i32* %.pre-phi87, align 4
  %arg.i.i36 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i = load i32, i32* %114, align 4
  %37 = tail call i32 @realloc(i32 %arg.i.i36, i32 %arg2.i.i)
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %111, align 4
  %tmp0_v2.i105.i = add i32 %38, 1
  store i32 %tmp0_v2.i105.i, i32* %111, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %tmp0_v2.i105.i, %39
  br i1 %40, label %BB_804936B.i, label %BB_80493B0.i

BB_80493FC.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %r_ecx.8.lcssa = phi i32 [ %r_ecx.569, %BB_80493B9.i ], [ %tmp0_v3.i430.i, %BB_80493C2.i ]
  %41 = load i32, i32* %156, align 8
  %tmp0_v1.i60.i = add i32 %41, 1
  store i32 %tmp0_v1.i60.i, i32* %156, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %tmp0_v1.i60.i, %42
  br i1 %43, label %BB_80493B9.i, label %BB_8049408.i

BB_8049526.i:                                     ; preds = %BB_80494EC.i, %BB_80494E3.i
  %r_ecx.7.lcssa = phi i32 [ %r_ecx.480, %BB_80494E3.i ], [ %tmp0_v3.i375.i, %BB_80494EC.i ]
  %44 = load i32, i32* %69, align 4
  %tmp0_v1.i68.i = add i32 %44, 1
  store i32 %tmp0_v1.i68.i, i32* %69, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %tmp0_v1.i68.i, %45
  br i1 %46, label %BB_80494E3.i, label %BB_8049532.i

BB_80492A6.i:                                     ; preds = %BB_804929D.i, %BB_80492A6.i
  %storemerge1560 = phi i32 [ %tmp0_v19.i.i, %BB_80492A6.i ], [ 0, %BB_804929D.i ]
  %47 = load i32, i32* %172, align 4
  %tmp0_v3.i80.i = mul i32 %47, 10
  %tmp4_v.i83.i = shl i32 %47, 2
  %48 = load i32, i32* %14, align 8
  %tmp0_v8.i86.i = add i32 %48, %tmp4_v.i83.i
  %49 = inttoptr i32 %tmp0_v8.i86.i to i32*
  %50 = load i32, i32* %49, align 4
  %tmp0_v12.i88.i = shl i32 %storemerge1560, 2
  %tmp0_v13.i89.i = add i32 %50, %tmp0_v12.i88.i
  %tmp0_v16.i.i = add i32 %tmp0_v3.i80.i, %storemerge1560
  %51 = inttoptr i32 %tmp0_v13.i89.i to i32*
  store i32 %tmp0_v16.i.i, i32* %51, align 4
  %52 = load i32, i32* %175, align 8
  %tmp0_v19.i.i = add i32 %52, 1
  store i32 %tmp0_v19.i.i, i32* %175, align 8
  %53 = load i32, i32* %9, align 16
  %54 = icmp slt i32 %tmp0_v19.i.i, %53
  br i1 %54, label %BB_80492A6.i, label %BB_80492E0.i

BB_804957E.i:                                     ; preds = %BB_8049544.i, %BB_804953B.i
  store i32 10, i32* %23, align 4
  store i32 134518152, i32* %24, align 4
  %arg.i.i39 = load i32, i32* %23, align 4
  %55 = tail call i32 @putchar(i32 %arg.i.i39)  nounwind 
  %56 = load i32, i32* %18, align 4
  %tmp0_v2.i5.i = add i32 %56, 1
  store i32 %tmp0_v2.i5.i, i32* %18, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %tmp0_v2.i5.i, %57
  br i1 %58, label %BB_804953B.i, label %BB_8049597.i

BB_804941A.i:                                     ; preds = %BB_8049411.i, %BB_804941A.i
  %storemerge1071 = phi i32 [ %tmp0_v2.i186.i, %BB_804941A.i ], [ 0, %BB_8049411.i ]
  %59 = load i32, i32* %135, align 16
  %tmp4_v.i115.i = shl i32 %59, 2
  %60 = load i32, i32* %14, align 8
  %tmp0_v3.i118.i = add i32 %60, %tmp4_v.i115.i
  %61 = inttoptr i32 %tmp0_v3.i118.i to i32*
  %62 = load i32, i32* %61, align 4
  %tmp0_v7.i122.i = shl i32 %storemerge1071, 2
  %tmp0_v8.i123.i = add i32 %62, %tmp0_v7.i122.i
  %63 = inttoptr i32 %tmp0_v8.i123.i to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %139, align 4
  store i32 134520840, i32* %.pre-phi, align 4
  store i32 134517829, i32* %.pre-phi87, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.5.lcssa, i32 inreg noundef %tmp0_v7.i122.i, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %66 = load i32, i32* %138, align 4
  %tmp0_v2.i186.i = add i32 %66, 1
  store i32 %tmp0_v2.i186.i, i32* %138, align 4
  %67 = load i32, i32* %9, align 16
  %68 = icmp slt i32 %tmp0_v2.i186.i, %67
  br i1 %68, label %BB_804941A.i, label %BB_8049454.i

BB_80494DA.i.loopexit:                            ; preds = %BB_80494AA.i
  %.pre = extractvalue { i32, i32 } %.pn3.pn73, 0
  br label %BB_80494DA.i

BB_80494DA.i:                                     ; preds = %BB_804946D.i, %BB_80494DA.i.loopexit
  %r_esp.1.in.le.pre-phi = phi i32 [ %.pre, %BB_80494DA.i.loopexit ], [ %r_esp.0.in.le, %BB_804946D.i ]
  %r_ecx.2.lcssa = phi i32 [ %tmp4_v.i233.i, %BB_80494DA.i.loopexit ], [ %r_ecx.5.lcssa, %BB_804946D.i ]
  %tmp2_v.i130.i = add i32 %tmp0_v.i.i, -68
  %69 = inttoptr i32 %tmp2_v.i130.i to i32*
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %BB_80494E3.i.lr.ph, label %BB_8049532.i

BB_80494E3.i.lr.ph:                               ; preds = %BB_80494DA.i
  %tmp2_v.i244.i = add i32 %tmp0_v.i.i, -64
  %72 = inttoptr i32 %tmp2_v.i244.i to i32*
  br label %BB_80494E3.i

BB_804953B.i:                                     ; preds = %BB_804957E.i, %BB_804953B.i.lr.ph
  store i32 0, i32* %21, align 8
  %73 = load i32, i32* %9, align 16
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %BB_8049544.i, label %BB_804957E.i

BB_80495AD.i:                                     ; preds = %BB_80495AD.i, %BB_8049597.i
  %storemerge683 = phi i32 [ %tmp0_v2.i541.i, %BB_80495AD.i ], [ 0, %BB_8049597.i ]
  %tmp4_v.i155.i = shl i32 %storemerge683, 2
  %75 = load i32, i32* %14, align 8
  %tmp0_v3.i158.i = add i32 %75, %tmp4_v.i155.i
  %76 = inttoptr i32 %tmp0_v3.i158.i to i32*
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %.pre-phi92, align 4
  store i32 134518215, i32* %.pre-phi95, align 4
  %arg.i.i40 = load i32, i32* %.pre-phi92, align 4
  tail call void @free(i32 %arg.i.i40)
  %78 = load i32, i32* %30, align 4
  %tmp0_v2.i541.i = add i32 %78, 1
  store i32 %tmp0_v2.i541.i, i32* %30, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %tmp0_v2.i541.i, %79
  br i1 %80, label %BB_80495AD.i, label %.exit

BB_80492E0.i:                                     ; preds = %BB_804929D.i, %BB_80492A6.i
  %r_ecx.0.lcssa = phi i32 [ %r_ecx.662, %BB_804929D.i ], [ %tmp0_v3.i80.i, %BB_80492A6.i ]
  %81 = load i32, i32* %172, align 4
  %tmp0_v1.i167.i = add i32 %81, 1
  store i32 %tmp0_v1.i167.i, i32* %172, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %tmp0_v1.i167.i, %82
  br i1 %83, label %BB_804929D.i, label %BB_80492EC.i

BB_8049544.i:                                     ; preds = %BB_8049544.i, %BB_804953B.i
  %storemerge782 = phi i32 [ %tmp0_v2.i143.i, %BB_8049544.i ], [ 0, %BB_804953B.i ]
  %84 = load i32, i32* %18, align 4
  %tmp4_v.i203.i = shl i32 %84, 2
  %85 = load i32, i32* %14, align 8
  %tmp0_v3.i206.i = add i32 %85, %tmp4_v.i203.i
  %86 = inttoptr i32 %tmp0_v3.i206.i to i32*
  %87 = load i32, i32* %86, align 4
  %tmp0_v7.i210.i = shl i32 %storemerge782, 2
  %tmp0_v8.i211.i = add i32 %87, %tmp0_v7.i210.i
  %88 = inttoptr i32 %tmp0_v8.i211.i to i32*
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %22, align 4
  store i32 134520840, i32* %23, align 4
  store i32 134518127, i32* %24, align 4
  %90 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.4.lcssa, i32 inreg noundef %tmp0_v7.i210.i, i32 noundef %r_esp.1.in.le.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %91 = load i32, i32* %21, align 8
  %tmp0_v2.i143.i = add i32 %91, 1
  store i32 %tmp0_v2.i143.i, i32* %21, align 8
  %92 = load i32, i32* %9, align 16
  %93 = icmp slt i32 %tmp0_v2.i143.i, %92
  br i1 %93, label %BB_8049544.i, label %BB_804957E.i

BB_80494AA.i:                                     ; preds = %BB_804946D.i, %BB_80494AA.i
  %r_esp.1.in75 = phi i32 [ %r_esp.1.in, %BB_80494AA.i ], [ %r_esp.0.in.le, %BB_804946D.i ]
  %.pn5474 = phi i32 [ %98, %BB_80494AA.i ], [ %182, %BB_804946D.i ]
  %.pn3.pn73 = phi { i32, i32 } [ %.pn3, %BB_80494AA.i ], [ %.pn.pn.lcssa, %BB_804946D.i ]
  %storemerge972 = phi i32 [ %tmp0_v2.i43.i, %BB_80494AA.i ], [ %tmp0_v4.i312.i, %BB_804946D.i ]
  %.pn3 = insertvalue { i32, i32 } %.pn3.pn73, i32 %.pn5474, 1
  %94 = load i32, i32* %9, align 16
  %tmp0_v1.i230.i = shl i32 %94, 2
  %tmp4_v.i233.i = shl i32 %storemerge972, 2
  %95 = load i32, i32* %14, align 8
  %tmp2_v6.i236.i = add i32 %95, %tmp4_v.i233.i
  %96 = inttoptr i32 %r_esp.1.in75 to i32*
  store i32 %tmp0_v1.i230.i, i32* %96, align 4
  %tmp2_v9.i240.i = add i32 %r_esp.1.in75, -4
  %97 = inttoptr i32 %tmp2_v9.i240.i to i32*
  store i32 134517961, i32* %97, align 4
  %arg.i.i41 = load i32, i32* %96, align 4
  %98 = tail call i32 @malloc(i32 %arg.i.i41)
  %99 = inttoptr i32 %tmp2_v6.i236.i to i32*
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %185, align 8
  %tmp0_v2.i43.i = add i32 %100, 1
  store i32 %tmp0_v2.i43.i, i32* %185, align 8
  %r_esp.1.in = extractvalue { i32, i32 } %.pn3.pn73, 0
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %tmp0_v2.i43.i, %101
  br i1 %102, label %BB_80494AA.i, label %BB_80494DA.i.loopexit

BB_8049411.i:                                     ; preds = %BB_8049411.i.lr.ph, %BB_8049454.i
  store i32 0, i32* %138, align 4
  %103 = load i32, i32* %9, align 16
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %BB_804941A.i, label %BB_8049454.i

BB_80494E3.i:                                     ; preds = %BB_80494E3.i.lr.ph, %BB_8049526.i
  %r_ecx.480 = phi i32 [ %r_ecx.2.lcssa, %BB_80494E3.i.lr.ph ], [ %r_ecx.7.lcssa, %BB_8049526.i ]
  store i32 0, i32* %72, align 16
  %105 = load i32, i32* %9, align 16
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %BB_80494EC.i, label %BB_8049526.i

BB_80493B9.i:                                     ; preds = %BB_80493B9.i.lr.ph, %BB_80493FC.i
  %r_ecx.569 = phi i32 [ %r_ecx.3.lcssa, %BB_80493B9.i.lr.ph ], [ %r_ecx.8.lcssa, %BB_80493FC.i ]
  store i32 0, i32* %159, align 4
  %107 = load i32, i32* %9, align 16
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %BB_80493C2.i, label %BB_80493FC.i

BB_8049351.i:                                     ; preds = %BB_80492EC.i.BB_8049351.i_crit_edge, %BB_8049338.i
  %.pre-phi87 = phi i32* [ %.pre86, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %121, %BB_8049338.i ]
  %.pre-phi = phi i32* [ %.pre84, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %120, %BB_8049338.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517595, i32* %.pre-phi87, align 4
  %arg.i.i43 = load i32, i32* %.pre-phi, align 4
  %109 = tail call i32 @putchar(i32 %arg.i.i43)  nounwind 
  %110 = load i32, i32* %9, align 16
  %tmp0_v2.i250.i = add i32 %110, 3
  store i32 %tmp0_v2.i250.i, i32* %9, align 16
  %tmp2_v3.i251.i = add i32 %tmp0_v.i.i, -92
  %111 = inttoptr i32 %tmp2_v3.i251.i to i32*
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %BB_804936B.i.lr.ph, label %BB_80493B0.i

BB_804936B.i.lr.ph:                               ; preds = %BB_8049351.i
  %tmp2_v15.i.i = add i32 %r_esp.0.in.le, 4
  %114 = inttoptr i32 %tmp2_v15.i.i to i32*
  br label %BB_804936B.i

BB_80492EC.i:                                     ; preds = %BB_8049294.i, %BB_80492E0.i
  %r_ecx.6.lcssa = phi i32 [ %r_ecx.1.lcssa, %BB_8049294.i ], [ %r_ecx.0.lcssa, %BB_80492E0.i ]
  %tmp2_v.i322.i = add i32 %tmp0_v.i.i, -100
  %115 = inttoptr i32 %tmp2_v.i322.i to i32*
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %BB_80492F5.i.lr.ph, label %BB_80492EC.i.BB_8049351.i_crit_edge

BB_80492EC.i.BB_8049351.i_crit_edge:              ; preds = %BB_80492EC.i
  %.pre84 = inttoptr i32 %r_esp.0.in.le to i32*
  %.pre85 = add i32 %r_esp.0.in.le, -4
  %.pre86 = inttoptr i32 %.pre85 to i32*
  br label %BB_8049351.i

BB_80492F5.i.lr.ph:                               ; preds = %BB_80492EC.i
  %tmp2_v.i457.i = add i32 %tmp0_v.i.i, -96
  %118 = inttoptr i32 %tmp2_v.i457.i to i32*
  %tmp2_v11.i473.i = add i32 %r_esp.0.in.le, 4
  %119 = inttoptr i32 %tmp2_v11.i473.i to i32*
  %120 = inttoptr i32 %r_esp.0.in.le to i32*
  %tmp2_v14.i477.i = add i32 %r_esp.0.in.le, -4
  %121 = inttoptr i32 %tmp2_v14.i477.i to i32*
  br label %BB_80492F5.i

BB_8049454.i:                                     ; preds = %BB_8049411.i, %BB_804941A.i
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517854, i32* %.pre-phi87, align 4
  %arg.i.i44 = load i32, i32* %.pre-phi, align 4
  %122 = tail call i32 @putchar(i32 %arg.i.i44)  nounwind 
  %123 = load i32, i32* %135, align 16
  %tmp0_v2.i483.i = add i32 %123, 1
  store i32 %tmp0_v2.i483.i, i32* %135, align 16
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %tmp0_v2.i483.i, %124
  br i1 %125, label %BB_8049411.i, label %BB_804946D.i

BB_8049264.i:                                     ; preds = %BB_8049264.i, %0
  %r_esp.0.in58 = phi i32 [ %r_esp.0.in, %BB_8049264.i ], [ %tmp2_v6.i532.i, %0 ]
  %.pn5357 = phi i32 [ %130, %BB_8049264.i ], [ %13, %0 ]
  %.pn.pn56 = phi { i32, i32 } [ %.pn, %BB_8049264.i ], [ %mrv.i32, %0 ]
  %storemerge1655 = phi i32 [ %tmp0_v2.i406.i, %BB_8049264.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %.pn.pn56, i32 %.pn5357, 1
  %126 = load i32, i32* %9, align 16
  %tmp0_v1.i357.i = shl i32 %126, 2
  %tmp4_v.i360.i = shl i32 %storemerge1655, 2
  %127 = load i32, i32* %14, align 8
  %tmp2_v6.i363.i = add i32 %127, %tmp4_v.i360.i
  %128 = inttoptr i32 %r_esp.0.in58 to i32*
  store i32 %tmp0_v1.i357.i, i32* %128, align 4
  %tmp2_v9.i367.i = add i32 %r_esp.0.in58, -4
  %129 = inttoptr i32 %tmp2_v9.i367.i to i32*
  store i32 134517379, i32* %129, align 4
  %arg.i.i45 = load i32, i32* %128, align 4
  %130 = tail call i32 @malloc(i32 %arg.i.i45)
  %131 = inttoptr i32 %tmp2_v6.i363.i to i32*
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %15, align 16
  %tmp0_v2.i406.i = add i32 %132, 1
  store i32 %tmp0_v2.i406.i, i32* %15, align 16
  %r_esp.0.in = extractvalue { i32, i32 } %.pn.pn56, 0
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %tmp0_v2.i406.i, %133
  br i1 %134, label %BB_8049264.i, label %BB_8049294.i

BB_8049408.i:                                     ; preds = %BB_80493B0.i, %BB_80493FC.i
  %r_ecx.5.lcssa = phi i32 [ %r_ecx.3.lcssa, %BB_80493B0.i ], [ %r_ecx.8.lcssa, %BB_80493FC.i ]
  %tmp2_v.i369.i = add i32 %tmp0_v.i.i, -80
  %135 = inttoptr i32 %tmp2_v.i369.i to i32*
  store i32 0, i32* %135, align 16
  %136 = load i32, i32* %10, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %BB_8049411.i.lr.ph, label %BB_8049408.i.BB_804946D.i_crit_edge

BB_8049408.i.BB_804946D.i_crit_edge:              ; preds = %BB_8049408.i
  %.pre88 = add i32 %r_esp.0.in.le, 4
  %.pre89 = inttoptr i32 %.pre88 to i32*
  br label %BB_804946D.i

BB_8049411.i.lr.ph:                               ; preds = %BB_8049408.i
  %tmp2_v.i242.i = add i32 %tmp0_v.i.i, -76
  %138 = inttoptr i32 %tmp2_v.i242.i to i32*
  %tmp2_v11.i126.i = add i32 %r_esp.0.in.le, 4
  %139 = inttoptr i32 %tmp2_v11.i126.i to i32*
  br label %BB_8049411.i

BB_80494EC.i:                                     ; preds = %BB_80494EC.i, %BB_80494E3.i
  %storemerge878 = phi i32 [ %tmp0_v19.i392.i, %BB_80494EC.i ], [ 0, %BB_80494E3.i ]
  %140 = load i32, i32* %69, align 4
  %tmp0_v3.i375.i = mul i32 %140, 10
  %tmp4_v.i378.i = shl i32 %140, 2
  %141 = load i32, i32* %14, align 8
  %tmp0_v8.i381.i = add i32 %141, %tmp4_v.i378.i
  %142 = inttoptr i32 %tmp0_v8.i381.i to i32*
  %143 = load i32, i32* %142, align 4
  %tmp0_v12.i385.i = shl i32 %storemerge878, 2
  %tmp0_v13.i386.i = add i32 %143, %tmp0_v12.i385.i
  %tmp0_v16.i389.i = add i32 %tmp0_v3.i375.i, %storemerge878
  %144 = inttoptr i32 %tmp0_v13.i386.i to i32*
  store i32 %tmp0_v16.i389.i, i32* %144, align 4
  %145 = load i32, i32* %72, align 16
  %tmp0_v19.i392.i = add i32 %145, 1
  store i32 %tmp0_v19.i392.i, i32* %72, align 16
  %146 = load i32, i32* %9, align 16
  %147 = icmp slt i32 %tmp0_v19.i392.i, %146
  br i1 %147, label %BB_80494EC.i, label %BB_8049526.i

BB_80493C2.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %storemerge1267 = phi i32 [ %tmp0_v19.i447.i, %BB_80493C2.i ], [ 0, %BB_80493B9.i ]
  %148 = load i32, i32* %156, align 8
  %tmp0_v3.i430.i = mul i32 %148, 10
  %tmp4_v.i433.i = shl i32 %148, 2
  %149 = load i32, i32* %14, align 8
  %tmp0_v8.i436.i = add i32 %149, %tmp4_v.i433.i
  %150 = inttoptr i32 %tmp0_v8.i436.i to i32*
  %151 = load i32, i32* %150, align 4
  %tmp0_v12.i440.i = shl i32 %storemerge1267, 2
  %tmp0_v13.i441.i = add i32 %151, %tmp0_v12.i440.i
  %tmp0_v16.i444.i = add i32 %tmp0_v3.i430.i, %storemerge1267
  %152 = inttoptr i32 %tmp0_v13.i441.i to i32*
  store i32 %tmp0_v16.i444.i, i32* %152, align 4
  %153 = load i32, i32* %159, align 4
  %tmp0_v19.i447.i = add i32 %153, 1
  store i32 %tmp0_v19.i447.i, i32* %159, align 4
  %154 = load i32, i32* %9, align 16
  %155 = icmp slt i32 %tmp0_v19.i447.i, %154
  br i1 %155, label %BB_80493C2.i, label %BB_80493FC.i

BB_80493B0.i:                                     ; preds = %BB_8049351.i, %BB_804936B.i
  %r_ecx.3.lcssa = phi i32 [ %r_ecx.6.lcssa, %BB_8049351.i ], [ %34, %BB_804936B.i ]
  %tmp2_v.i455.i = add i32 %tmp0_v.i.i, -88
  %156 = inttoptr i32 %tmp2_v.i455.i to i32*
  store i32 0, i32* %156, align 8
  %157 = load i32, i32* %10, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %BB_80493B9.i.lr.ph, label %BB_8049408.i

BB_80493B9.i.lr.ph:                               ; preds = %BB_80493B0.i
  %tmp2_v.i253.i = add i32 %tmp0_v.i.i, -84
  %159 = inttoptr i32 %tmp2_v.i253.i to i32*
  br label %BB_80493B9.i

BB_80492F5.i:                                     ; preds = %BB_80492F5.i.lr.ph, %BB_8049338.i
  store i32 0, i32* %118, align 16
  %160 = load i32, i32* %9, align 16
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %BB_80492FE.i, label %BB_8049338.i

BB_80492FE.i:                                     ; preds = %BB_80492FE.i, %BB_80492F5.i
  %storemerge1464 = phi i32 [ %tmp0_v2.i509.i, %BB_80492FE.i ], [ 0, %BB_80492F5.i ]
  %162 = load i32, i32* %115, align 4
  %tmp4_v.i461.i = shl i32 %162, 2
  %163 = load i32, i32* %14, align 8
  %tmp0_v3.i464.i = add i32 %163, %tmp4_v.i461.i
  %164 = inttoptr i32 %tmp0_v3.i464.i to i32*
  %165 = load i32, i32* %164, align 4
  %tmp0_v7.i468.i = shl i32 %storemerge1464, 2
  %tmp0_v8.i469.i = add i32 %165, %tmp0_v7.i468.i
  %166 = inttoptr i32 %tmp0_v8.i469.i to i32*
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %119, align 4
  store i32 134520840, i32* %120, align 4
  store i32 134517545, i32* %121, align 4
  %168 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.6.lcssa, i32 inreg noundef %tmp0_v7.i468.i, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %169 = load i32, i32* %118, align 16
  %tmp0_v2.i509.i = add i32 %169, 1
  store i32 %tmp0_v2.i509.i, i32* %118, align 16
  %170 = load i32, i32* %9, align 16
  %171 = icmp slt i32 %tmp0_v2.i509.i, %170
  br i1 %171, label %BB_80492FE.i, label %BB_8049338.i

BB_8049294.i:                                     ; preds = %BB_8049264.i, %0
  %.pn.pn.lcssa = phi { i32, i32 } [ %mrv.i32, %0 ], [ %.pn, %BB_8049264.i ]
  %r_ecx.1.lcssa = phi i32 [ %tmp2_v.i.i, %0 ], [ %tmp4_v.i360.i, %BB_8049264.i ]
  %r_esp.0.in.le = extractvalue { i32, i32 } %.pn.pn.lcssa, 0
  %tmp2_v.i517.i = add i32 %tmp0_v.i.i, -108
  %172 = inttoptr i32 %tmp2_v.i517.i to i32*
  store i32 0, i32* %172, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %BB_804929D.i.lr.ph, label %BB_80492EC.i

BB_804929D.i.lr.ph:                               ; preds = %BB_8049294.i
  %tmp2_v.i535.i = add i32 %tmp0_v.i.i, -104
  %175 = inttoptr i32 %tmp2_v.i535.i to i32*
  br label %BB_804929D.i

BB_804929D.i:                                     ; preds = %BB_804929D.i.lr.ph, %BB_80492E0.i
  %r_ecx.662 = phi i32 [ %r_ecx.1.lcssa, %BB_804929D.i.lr.ph ], [ %r_ecx.0.lcssa, %BB_80492E0.i ]
  store i32 0, i32* %175, align 8
  %176 = load i32, i32* %9, align 16
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %BB_80492A6.i, label %BB_80492E0.i

BB_804946D.i:                                     ; preds = %BB_8049408.i.BB_804946D.i_crit_edge, %BB_8049454.i
  %.pre-phi90 = phi i32* [ %.pre89, %BB_8049408.i.BB_804946D.i_crit_edge ], [ %139, %BB_8049454.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517879, i32* %.pre-phi87, align 4
  %arg.i.i47 = load i32, i32* %.pre-phi, align 4
  %178 = tail call i32 @putchar(i32 %arg.i.i47)  nounwind 
  %tmp2_v.i264.i = add i32 %tmp0_v.i.i, -36
  %179 = inttoptr i32 %tmp2_v.i264.i to i32*
  store i32 3, i32* %179, align 4
  %180 = load i32, i32* %10, align 4
  %tmp0_v5.i269.i = add i32 %180, 3
  store i32 %tmp0_v5.i269.i, i32* %10, align 4
  %tmp0_v8.i272.i = shl i32 %tmp0_v5.i269.i, 2
  store i32 %tmp0_v8.i272.i, i32* %.pre-phi90, align 4
  %181 = load i32, i32* %14, align 8
  store i32 %181, i32* %.pre-phi, align 4
  store i32 134517913, i32* %.pre-phi87, align 4
  %arg.i.i48 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i49 = load i32, i32* %.pre-phi90, align 4
  %182 = tail call i32 @realloc(i32 %arg.i.i48, i32 %arg2.i.i49)
  store i32 %182, i32* %14, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %179, align 4
  %tmp0_v4.i312.i = sub i32 %183, %184
  %tmp2_v5.i313.i = add i32 %tmp0_v.i.i, -72
  %185 = inttoptr i32 %tmp2_v5.i313.i to i32*
  store i32 %tmp0_v4.i312.i, i32* %185, align 8
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %tmp0_v4.i312.i, %186
  br i1 %187, label %BB_80494AA.i, label %BB_80494DA.i

.exit:                                            ; preds = %BB_80495AD.i, %BB_8049597.i
  %188 = load i32, i32* %14, align 8
  store i32 %188, i32* %.pre-phi92, align 4
  store i32 134518241, i32* %.pre-phi95, align 4
  %arg.i.i52 = load i32, i32* %.pre-phi92, align 4
  tail call void @free(i32 %arg.i.i52)
  ret void
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

  tail call fastcc void @increase_size_dynamic_2d_arraym15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
