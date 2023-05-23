; Mutation 548
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
@str.543 = constant [13 x i8] c"p3: (%d,%d)\0a\00"
@str.544 = constant [13 x i8] c"p3: (%d,%d)\0a\00"
@str.545 = constant [13 x i8] c"p2: (%d,%d)\0a\00"
@str.546 = constant [13 x i8] c"p1: (%d,%d)\0a\00"
@str.547 = constant [13 x i8] c"p1: (%d,%d)\0a\00"

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

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @arrow_operator548(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i52.i = add i32 %arg_esp, 4
  %tmp0_v.i53.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i55.i = add i32 %tmp0_v.i53.i, -4
  %2 = inttoptr i32 %tmp2_v3.i55.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i56.i = add i32 %tmp0_v.i53.i, -8
  %3 = inttoptr i32 %tmp2_v4.i56.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i58.i = add i32 %tmp0_v.i53.i, -12
  %4 = inttoptr i32 %tmp2_v5.i58.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i60.i = add i32 %tmp0_v.i53.i, -16
  %5 = inttoptr i32 %tmp2_v6.i60.i to i32*
  store i32 %tmp2_v.i52.i, i32* %5, align 16
  %tmp2_v8.i62.i = add i32 %tmp0_v.i53.i, -52
  %6 = inttoptr i32 %tmp2_v8.i62.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i38.i = add i32 %tmp0_v.i53.i, -20
  %9 = inttoptr i32 %tmp2_v2.i38.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i39.i = add i32 %tmp0_v.i53.i, -28
  %10 = inttoptr i32 %tmp2_v3.i39.i to i32*
  store i32 3, i32* %10, align 4
  %tmp2_v4.i40.i = add i32 %tmp0_v.i53.i, -24
  %11 = inttoptr i32 %tmp2_v4.i40.i to i32*
  store i32 2, i32* %11, align 8
  %12 = load i32, i32* %10, align 4
  %tmp2_v10.i47.i = add i32 %tmp0_v.i53.i, -56
  %13 = inttoptr i32 %tmp2_v10.i47.i to i32*
  store i32 2, i32* %13, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i53.i, -60
  %14 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %12, i32* %14, align 4
  %tmp2_v13.i49.i = add i32 %tmp0_v.i53.i, -64
  %15 = inttoptr i32 %tmp2_v13.i49.i to i32*
  %spi547 = ptrtoint[13 x i8]* @str.547 to i32
  store i32 %spi547, i32* %15, align 16
  %tmp2_v14.i50.i = add i32 %tmp0_v.i53.i, -68
  %16 = inttoptr i32 %tmp2_v14.i50.i to i32*
  store i32 134517287, i32* %16, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef 2, i32 noundef %tmp2_v13.i49.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v1.i5.i = add i32 %tmp0_v.i53.i, -36
  %18 = inttoptr i32 %tmp2_v1.i5.i to i32*
  store i32 %tmp2_v3.i39.i, i32* %18, align 4
  store i32 5, i32* %10, align 4
  %19 = load i32, i32* %18, align 4
  %tmp2_v6.i6.i = add i32 %19, 4
  %20 = inttoptr i32 %tmp2_v6.i6.i to i32*
  store i32 4, i32* %20, align 4
  %21 = load i32, i32* %11, align 8
  %22 = load i32, i32* %10, align 4
  store i32 %21, i32* %13, align 8
  store i32 %22, i32* %14, align 4
  %spi546 = ptrtoint[13 x i8]* @str.546 to i32
  store i32 %spi546, i32* %15, align 16
  store i32 134517338, i32* %16, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %21, i32 noundef %tmp2_v13.i49.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %24 = load i32, i32* %18, align 4
  %tmp2_v2.i76.i = add i32 %24, 4
  %25 = inttoptr i32 %tmp2_v2.i76.i to i32*
  %26 = load i32, i32* %25, align 4
  %27 = inttoptr i32 %24 to i32*
  %28 = load i32, i32* %27, align 4
  store i32 %26, i32* %13, align 8
  store i32 %28, i32* %14, align 4
  %spi545 = ptrtoint[13 x i8]* @str.545 to i32
  store i32 %spi545, i32* %15, align 16
  store i32 134517369, i32* %16, align 4
  %29 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %26, i32 noundef %tmp2_v13.i49.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 8, i32* %15, align 16
  store i32 134517382, i32* %16, align 4
  %arg.i.i = load i32, i32* %15, align 16
  %30 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i.i = add i32 %tmp0_v.i53.i, -32
  %31 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %30, i32* %31, align 16
  %32 = inttoptr i32 %30 to i32*
  store i32 5, i32* %32, align 4
  %33 = load i32, i32* %31, align 16
  %tmp2_v5.i.i = add i32 %33, 4
  %34 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 10, i32* %34, align 4
  %35 = load i32, i32* %31, align 16
  %tmp2_v8.i.i = add i32 %35, 4
  %36 = inttoptr i32 %tmp2_v8.i.i to i32*
  %37 = load i32, i32* %36, align 4
  %38 = inttoptr i32 %35 to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %37, i32* %13, align 8
  store i32 %39, i32* %14, align 4
  %spi544 = ptrtoint[13 x i8]* @str.544 to i32
  store i32 %spi544, i32* %15, align 16
  store i32 134517435, i32* %16, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %37, i32 noundef %tmp2_v13.i49.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %41 = load i32, i32* %31, align 16
  %42 = inttoptr i32 %41 to i32*
  store i32 2, i32* %42, align 4
  %43 = load i32, i32* %31, align 16
  %tmp2_v4.i17.i = add i32 %43, 4
  %44 = inttoptr i32 %tmp2_v4.i17.i to i32*
  store i32 4, i32* %44, align 4
  %45 = load i32, i32* %31, align 16
  %tmp2_v7.i19.i = add i32 %45, 4
  %46 = inttoptr i32 %tmp2_v7.i19.i to i32*
  %47 = load i32, i32* %46, align 4
  %48 = inttoptr i32 %45 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %47, i32* %13, align 8
  store i32 %49, i32* %14, align 4
  %spi543 = ptrtoint[13 x i8]* @str.543 to i32
  store i32 %spi543, i32* %15, align 16
  store i32 134517485, i32* %16, align 4
  %50 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %47, i32 noundef %tmp2_v13.i49.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @arrow_operator548(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
