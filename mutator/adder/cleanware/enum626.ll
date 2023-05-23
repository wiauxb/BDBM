; Mutation 626
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.610 = constant [3 x i8] c"ON\00"
@str.611 = constant [4 x i8] c"OFF\00"
@str.615 = constant [3 x i8] c"ON\00"
@str.616 = constant [4 x i8] c"OFF\00"
@str.619 = constant [3 x i8] c"ON\00"
@str.620 = constant [4 x i8] c"OFF\00"
@str.622 = constant [12 x i8] c"Friday: %d\0a\00"
@str.623 = constant [14 x i8] c"Tomorrow: %d\0a\00"
@str.624 = constant [11 x i8] c"Today: %d\0a\00"
@str.625 = constant [15 x i8] c"Yesterday: %d\0a\00"

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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: norecurse
define internal fastcc void @enum626(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i16.i, -4
  %3 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i16.i, -8
  %4 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i16.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i22.i = add i32 %tmp0_v.i16.i, -16
  %6 = inttoptr i32 %tmp2_v6.i22.i to i32*
  store i32 %tmp2_v.i15.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i16.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v.i33.i = add i32 %tmp0_v.i16.i, -32
  %8 = inttoptr i32 %tmp2_v.i33.i to i32*
  store i32 9, i32* %8, align 16
  %tmp2_v1.i.i = add i32 %tmp0_v.i16.i, -28
  %9 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %9, align 4
  %tmp2_v2.i34.i = add i32 %tmp0_v.i16.i, -24
  %10 = inttoptr i32 %tmp2_v2.i34.i to i32*
  store i32 10, i32* %10, align 8
  %11 = load i32, i32* %9, align 4
  %tmp2_v6.i38.i = add i32 %tmp0_v.i16.i, -44
  %12 = inttoptr i32 %tmp2_v6.i38.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v8.i39.i = add i32 %tmp0_v.i16.i, -48
  %13 = inttoptr i32 %tmp2_v8.i39.i to i32*
  %spi625 = ptrtoint[15 x i8]* @str.625 to i32
  store i32 %spi625, i32* %13, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i16.i, -52
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517246, i32* %14, align 4
  %15 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef 0, i32 noundef %tmp2_v8.i39.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* %8, align 16
  store i32 %18, i32* %12, align 4
  %spi624 = ptrtoint[11 x i8]* @str.624 to i32
  store i32 %spi624, i32* %13, align 16
  store i32 134517267, i32* %14, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef %17, i32 noundef %tmp2_v8.i39.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %10, align 8
  store i32 %22, i32* %12, align 4
  %spi623 = ptrtoint[14 x i8]* @str.623 to i32
  store i32 %spi623, i32* %13, align 16
  store i32 134517288, i32* %14, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef %21, i32 noundef %tmp2_v8.i39.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  store i32 20, i32* %12, align 4
  %spi622 = ptrtoint[12 x i8]* @str.622 to i32
  store i32 %spi622, i32* %13, align 16
  store i32 134517308, i32* %14, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef %25, i32 noundef %tmp2_v8.i39.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v.i85.i = add i32 %tmp0_v.i16.i, -20
  %27 = inttoptr i32 %tmp2_v.i85.i to i32*
  store i32 0, i32* %27, align 4
  store i32 0, i32* %13, align 16
  store i32 134517329, i32* %14, align 4
  %tmp2_v.i16.i.i = add i32 %tmp0_v.i16.i, -56
  %28 = inttoptr i32 %tmp2_v.i16.i.i to i32*
  store i32 %tmp2_v4.i19.i, i32* %28, align 8
  %tmp2_v1.i18.i.i = add i32 %tmp0_v.i16.i, -60
  %29 = inttoptr i32 %tmp2_v1.i18.i.i to i32*
  store i32 134529024, i32* %29, align 4
  %tmp2_v2.i20.i.i = add i32 %tmp0_v.i16.i, -68
  %30 = inttoptr i32 %tmp2_v2.i20.i.i to i32*
  store i32 134517479, i32* %30, align 4
  %31 = load i32, i32* %13, align 16
  %.not.i.i.i = icmp eq i32 %31, 0
  %tmp2_v1.i13.i.i = add i32 %tmp0_v.i16.i, -80
  %32 = inttoptr i32 %tmp2_v1.i13.i.i to i32*
  %spi619 = ptrtoint[3 x i8]* @str.619 to i32
  %spi620 = ptrtoint[4 x i8]* @str.620 to i32
  %..i = select i1 %.not.i.i.i, i32 %spi619, i32 %spi620
  %.19.i = select i1 %.not.i.i.i, i32 134517507, i32 134517535
  store i32 %..i, i32* %32, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i16.i, -84
  %33 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %.19.i, i32* %33, align 4
  %arg.i.i16.i = load i32, i32* %32, align 16
  %34 = inttoptr i32 %arg.i.i16.i to i8*
  %35 = tail call i32 @puts(i8* nonnull dereferenceable(1) %34)
  %36 = load i32, i32* %29, align 4
  %37 = load i32, i32* %28, align 8
  %tmp2_v.i79.i = add i32 %37, -12
  %38 = inttoptr i32 %tmp2_v.i79.i to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 16
  store i32 134517343, i32* %14, align 4
  store i32 %37, i32* %28, align 8
  store i32 134517438, i32* %29, align 4
  %40 = load i32, i32* %13, align 16
  %.not.i.i.i8 = icmp eq i32 %40, 0
  %spec.select.i = zext i1 %.not.i.i.i8 to i32
  %41 = load i32, i32* %28, align 8
  %tmp2_v.i43.i = add i32 %41, -12
  %42 = inttoptr i32 %tmp2_v.i43.i to i32*
  store i32 %spec.select.i, i32* %42, align 4
  store i32 %spec.select.i, i32* %13, align 16
  store i32 134517360, i32* %14, align 4
  store i32 %41, i32* %28, align 8
  store i32 %36, i32* %29, align 4
  store i32 134517479, i32* %30, align 4
  %43 = load i32, i32* %13, align 16
  %.not.i.i.i14 = icmp eq i32 %43, 0
  %spi615 = ptrtoint[3 x i8]* @str.615 to i32
  %spi616 = ptrtoint[4 x i8]* @str.616 to i32
  %..i16 = select i1 %.not.i.i.i14, i32 %spi615, i32 %spi616
  %.19.i17 = select i1 %.not.i.i.i14, i32 134517507, i32 134517535
  store i32 %..i16, i32* %32, align 16
  store i32 %.19.i17, i32* %33, align 4
  %arg.i.i16.i19 = load i32, i32* %32, align 16
  %44 = inttoptr i32 %arg.i.i16.i19 to i8*
  %45 = tail call i32 @puts(i8* nonnull dereferenceable(1) %44)
  %46 = load i32, i32* %29, align 4
  %47 = load i32, i32* %28, align 8
  %tmp2_v.i11.i = add i32 %47, -12
  %48 = inttoptr i32 %tmp2_v.i11.i to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 16
  store i32 134517374, i32* %14, align 4
  store i32 %47, i32* %28, align 8
  store i32 134517438, i32* %29, align 4
  %50 = load i32, i32* %13, align 16
  %.not.i.i.i24 = icmp eq i32 %50, 0
  %spec.select.i25 = zext i1 %.not.i.i.i24 to i32
  %51 = load i32, i32* %28, align 8
  %tmp2_v.i26.i = add i32 %51, -12
  %52 = inttoptr i32 %tmp2_v.i26.i to i32*
  store i32 %spec.select.i25, i32* %52, align 4
  store i32 %spec.select.i25, i32* %13, align 16
  store i32 134517391, i32* %14, align 4
  store i32 %51, i32* %28, align 8
  store i32 134517438, i32* %29, align 4
  %53 = load i32, i32* %13, align 16
  %.not.i.i.i30 = icmp eq i32 %53, 0
  %spec.select.i31 = zext i1 %.not.i.i.i30 to i32
  %54 = load i32, i32* %28, align 8
  %tmp2_v.i59.i = add i32 %54, -12
  %55 = inttoptr i32 %tmp2_v.i59.i to i32*
  store i32 %spec.select.i31, i32* %55, align 4
  store i32 %spec.select.i31, i32* %13, align 16
  store i32 134517408, i32* %14, align 4
  store i32 %54, i32* %28, align 8
  store i32 %46, i32* %29, align 4
  store i32 134517479, i32* %30, align 4
  %56 = load i32, i32* %13, align 16
  %.not.i.i.i37 = icmp eq i32 %56, 0
  %spi610 = ptrtoint[3 x i8]* @str.610 to i32
  %spi611 = ptrtoint[4 x i8]* @str.611 to i32
  %..i39 = select i1 %.not.i.i.i37, i32 %spi610, i32 %spi611
  %.19.i40 = select i1 %.not.i.i.i37, i32 134517507, i32 134517535
  store i32 %..i39, i32* %32, align 16
  store i32 %.19.i40, i32* %33, align 4
  %arg.i.i16.i42 = load i32, i32* %32, align 16
  %57 = inttoptr i32 %arg.i.i16.i42 to i8*
  %58 = tail call i32 @puts(i8* nonnull dereferenceable(1) %57)
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
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @enum626(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
