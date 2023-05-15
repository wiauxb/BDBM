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
define internal fastcc void @replace_occurrencesm15161636(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i53.i = add i32 %arg_esp, 4
  %tmp0_v.i54.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i56.i = add i32 %tmp0_v.i54.i, -4
  %3 = inttoptr i32 %tmp2_v3.i56.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i57.i = add i32 %tmp0_v.i54.i, -8
  %4 = inttoptr i32 %tmp2_v4.i57.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i59.i = add i32 %tmp0_v.i54.i, -12
  %5 = inttoptr i32 %tmp2_v5.i59.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i61.i = add i32 %tmp0_v.i54.i, -16
  %6 = inttoptr i32 %tmp2_v6.i61.i to i32*
  store i32 %tmp2_v.i53.i, i32* %6, align 16
  %tmp2_v8.i62.i = add i32 %tmp0_v.i54.i, -84
  %7 = inttoptr i32 %tmp2_v8.i62.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i6.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i6.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i54.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i10.i = add i32 %tmp0_v.i54.i, -60
  %11 = inttoptr i32 %tmp2_v3.i10.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i11.i = add i32 %tmp0_v.i54.i, -56
  %12 = inttoptr i32 %tmp2_v4.i11.i to i32*
  store i32 2, i32* %12, align 8
  %tmp2_v5.i12.i = add i32 %tmp0_v.i54.i, -52
  %13 = inttoptr i32 %tmp2_v5.i12.i to i32*
  store i32 1, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i54.i, -48
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 2, i32* %14, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i54.i, -44
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i54.i, -40
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 2, i32* %16, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i54.i, -36
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i54.i, -32
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %18, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i54.i, -28
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i54.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 2, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i54.i, -64
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %21, align 16
  store i32 3, i32* %7, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i54.i, -88
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 2, i32* %22, align 8
  %23 = load i32, i32* %21, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i54.i, -92
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i54.i, -96
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 %tmp2_v3.i10.i, i32* %25, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i54.i, -100
  %26 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 134517343, i32* %26, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i54.i, -104
  %27 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i57.i, i32* %27, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i54.i, -124
  %28 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517453, i32* %28, align 4
  %tmp2_v.i26.i.i = add i32 %tmp0_v.i54.i, -108
  %29 = inttoptr i32 %tmp2_v.i26.i.i to i32*
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %24, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %BB_80492DB.i.i, label %Func_replace.exit

BB_80492F1.i.i:                                   ; preds = %BB_80492DB.i.i
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %34, align 4
  %.pre.i = load i32, i32* %29, align 4
  br label %BB_8049305.i.i

BB_80492DB.i.i:                                   ; preds = %BB_8049305.i.i, %0
  %storemerge2.i = phi i32 [ %tmp0_v1.i30.i.i, %BB_8049305.i.i ], [ 0, %0 ]
  %tmp4_v.i11.i.i = shl i32 %storemerge2.i, 2
  %33 = load i32, i32* %25, align 16
  %tmp0_v3.i14.i.i = add i32 %33, %tmp4_v.i11.i.i
  %34 = inttoptr i32 %tmp0_v3.i14.i.i to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %22, align 8
  %.not.i.i.i = icmp eq i32 %36, %35
  br i1 %.not.i.i.i, label %BB_80492F1.i.i, label %BB_8049305.i.i

BB_8049305.i.i:                                   ; preds = %BB_80492DB.i.i, %BB_80492F1.i.i
  %37 = phi i32 [ %storemerge2.i, %BB_80492DB.i.i ], [ %.pre.i, %BB_80492F1.i.i ]
  %r_edx.1.i = phi i32 [ %tmp4_v.i11.i.i, %BB_80492DB.i.i ], [ %tmp0_v3.i14.i.i, %BB_80492F1.i.i ]
  %tmp0_v1.i30.i.i = add i32 %37, 1
  store i32 %tmp0_v1.i30.i.i, i32* %29, align 4
  %38 = load i32, i32* %24, align 4
  %39 = icmp slt i32 %tmp0_v1.i30.i.i, %38
  br i1 %39, label %BB_80492DB.i.i, label %Func_replace.exit

Func_replace.exit:                                ; preds = %BB_8049305.i.i, %0
  %r_edx.0.lcssa.i = phi i32 [ 0, %0 ], [ %r_edx.1.i, %BB_8049305.i.i ]
  %40 = load i32, i32* %27, align 8
  %tmp2_v.i30.i = add i32 %40, -60
  %41 = inttoptr i32 %tmp2_v.i30.i to i32*
  %tmp2_v1.i34.i = add i32 %40, -56
  %42 = inttoptr i32 %tmp2_v1.i34.i to i32*
  store i32 0, i32* %41, align 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_804926B.i.lr.ph, label %BB_8049291.i

BB_804926B.i.lr.ph:                               ; preds = %Func_replace.exit
  %tmp2_v1.i41.i = add i32 %40, -52
  br label %BB_804926B.i

BB_8049291.i:                                     ; preds = %BB_804926B.i, %Func_replace.exit
  store i32 10, i32* %25, align 16
  store i32 134517403, i32* %26, align 4
  %arg.i.i = load i32, i32* %25, align 16
  %45 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  ret void

BB_804926B.i:                                     ; preds = %BB_804926B.i, %BB_804926B.i.lr.ph
  %r_edx.06 = phi i32 [ %r_edx.0.lcssa.i, %BB_804926B.i.lr.ph ], [ %50, %BB_804926B.i ]
  %storemerge5 = phi i32 [ 0, %BB_804926B.i.lr.ph ], [ %tmp0_v2.i.i, %BB_804926B.i ]
  %tmp4_v.i42.i = shl i32 %storemerge5, 2
  %tmp2_v2.i43.i = add i32 %tmp2_v1.i41.i, %tmp4_v.i42.i
  %46 = inttoptr i32 %tmp2_v2.i43.i to i32*
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %24, align 4
  store i32 134520840, i32* %25, align 16
  store i32 134517378, i32* %26, align 4
  %48 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i53.i, i32 inreg noundef %r_edx.06, i32 noundef %tmp2_v20.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %49 = lshr i64 %48, 32
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %41, align 4
  %tmp0_v2.i.i = add i32 %51, 1
  store i32 %tmp0_v2.i.i, i32* %41, align 4
  %52 = load i32, i32* %42, align 4
  %53 = icmp slt i32 %tmp0_v2.i.i, %52
  br i1 %53, label %BB_804926B.i, label %BB_8049291.i
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

  tail call fastcc void @replace_occurrencesm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
