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

; Function Attrs: naked noinline
declare i32 @fprintf()  naked noinline 

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @predefined_macrosm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i40.i = add i32 %arg_esp, 4
  %tmp0_v.i41.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i42.i = add i32 %tmp0_v.i41.i, -4
  %3 = inttoptr i32 %tmp2_v3.i42.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i43.i = add i32 %tmp0_v.i41.i, -8
  %4 = inttoptr i32 %tmp2_v4.i43.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i44.i = add i32 %tmp0_v.i41.i, -12
  %5 = inttoptr i32 %tmp2_v5.i44.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i46.i = add i32 %tmp0_v.i41.i, -16
  %6 = inttoptr i32 %tmp2_v6.i46.i to i32*
  store i32 %tmp2_v.i40.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i41.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517326, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i41.i, -28
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134520840, i32* %8, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i41.i, -32
  %9 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134520860, i32* %9, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i41.i, -36
  %10 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 134517354, i32* %10, align 4
  %11 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef 0, i32 noundef %tmp2_v4.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  store i32 134520870, i32* %8, align 4
  store i32 134520882, i32* %9, align 16
  store i32 134517379, i32* %10, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef %13, i32 noundef %tmp2_v4.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  store i32 134520892, i32* %8, align 4
  store i32 134520901, i32* %9, align 16
  store i32 134517404, i32* %10, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef %16, i32 noundef %tmp2_v4.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  store i32 43, i32* %8, align 4
  store i32 134520911, i32* %9, align 16
  store i32 134517424, i32* %10, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef %19, i32 noundef %tmp2_v4.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  store i32 1, i32* %8, align 4
  store i32 134520921, i32* %9, align 16
  store i32 134517444, i32* %10, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef %22, i32 noundef %tmp2_v4.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %tmp2_v.i57.i = add i32 %tmp0_v.i41.i, -24
  %26 = inttoptr i32 %tmp2_v.i57.i to i32*
  store i32 52, i32* %26, align 8
  store i32 134520840, i32* %8, align 4
  store i32 134520931, i32* %9, align 16
  store i32 134517471, i32* %10, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i41.i, -40
  %27 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i43.i, i32* %27, align 8
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i41.i, -44
  %28 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 134529024, i32* %28, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i41.i, -68
  %29 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517532, i32* %29, align 4
  %tmp2_v2.i23.i.i = add i32 %tmp0_v.i41.i, -76
  %30 = inttoptr i32 %tmp2_v2.i23.i.i to i32*
  store i32 134520955, i32* %30, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i41.i, -80
  %31 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134520957, i32* %31, align 16
  %tmp2_v5.i25.i.i = add i32 %tmp0_v.i41.i, -84
  %32 = inttoptr i32 %tmp2_v5.i25.i.i to i32*
  store i32 134517560, i32* %32, align 4
  %arg.i.i.i = load i32, i32* %31, align 16
  %arg2.i.i.i = load i32, i32* %30, align 4
  %33 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i41.i, -52
  %34 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 16
  store i32 %35, i32* %31, align 16
  %36 = load i32, i32* %26, align 8
  store i32 %36, i32* %32, align 4
  %37 = load i32, i32* %8, align 4
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i41.i, -88
  %38 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 %37, i32* %38, align 8
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i41.i, -92
  %39 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134520989, i32* %39, align 4
  %40 = load i32, i32* %34, align 4
  %tmp2_v13.i.i.i = add i32 %tmp0_v.i41.i, -96
  %41 = inttoptr i32 %tmp2_v13.i.i.i to i32*
  store i32 %40, i32* %41, align 16
  %tmp2_v14.i.i.i = add i32 %tmp0_v.i41.i, -100
  %42 = inttoptr i32 %tmp2_v14.i.i.i to i32*
  store i32 134517627, i32* %42, align 4
  %43 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef %25, i32 noundef %tmp2_v13.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %34, align 4
  store i32 %46, i32* %31, align 16
  store i32 134517641, i32* %32, align 4
  %arg.i.i24.i = load i32, i32* %31, align 16
  %47 = tail call i32 @fclose(i32 %arg.i.i24.i)
  %48 = load i32, i32* %28, align 4
  %49 = load i32, i32* %27, align 8
  store i32 57, i32* %26, align 8
  %tmp2_v2.i36.i = add i32 %48, -8184
  store i32 %tmp2_v2.i36.i, i32* %8, align 4
  %tmp2_v4.i38.i = add i32 %48, -8081
  store i32 %tmp2_v4.i38.i, i32* %9, align 16
  store i32 134517498, i32* %10, align 4
  store i32 %49, i32* %27, align 8
  store i32 %48, i32* %28, align 4
  store i32 134517532, i32* %29, align 4
  store i32 134520955, i32* %30, align 4
  store i32 134520957, i32* %31, align 16
  store i32 134517560, i32* %32, align 4
  %arg.i.i.i15 = load i32, i32* %31, align 16
  %arg2.i.i.i16 = load i32, i32* %30, align 4
  %50 = tail call i32 @fopen(i32 %arg.i.i.i15, i32 %arg2.i.i.i16)
  store i32 %50, i32* %34, align 4
  %51 = load i32, i32* %9, align 16
  store i32 %51, i32* %31, align 16
  %52 = load i32, i32* %26, align 8
  store i32 %52, i32* %32, align 4
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %38, align 8
  store i32 134520989, i32* %39, align 4
  %54 = load i32, i32* %34, align 4
  store i32 %54, i32* %41, align 16
  store i32 134517627, i32* %42, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef %45, i32 noundef %tmp2_v13.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %56 = load i32, i32* %34, align 4
  store i32 %56, i32* %31, align 16
  store i32 134517641, i32* %32, align 4
  %arg.i.i24.i24 = load i32, i32* %31, align 16
  %57 = tail call i32 @fclose(i32 %arg.i.i24.i24)
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
!14 = !{!"fprintf"}

  tail call fastcc void @predefined_macrosm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
