; Mutation 135
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack134 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.123 = constant [7 x i8] c"Y: %d\0a\00"
@str.124 = constant [19 x i8] c"tolower('Z') = %c\0a\00"
@str.126 = constant [19 x i8] c"tolower('A') = %c\0a\00"
@str.128 = constant [19 x i8] c"tolower('#') = %c\0a\00"
@str.130 = constant [19 x i8] c"tolower('b') = %c\0a\00"
@str.132 = constant [19 x i8] c"tolower('Y') = %c\0a\00"

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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: norecurse nounwind
define internal fastcc void @own_tolower135(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i41.i = add i32 %arg_esp, 4
  %tmp0_v.i42.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i42.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i44.i = add i32 %tmp0_v.i42.i, -8
  %4 = inttoptr i32 %tmp2_v4.i44.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i46.i = add i32 %tmp0_v.i42.i, -12
  %5 = inttoptr i32 %tmp2_v5.i46.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i42.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i41.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i42.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 89, i32* %7, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i42.i, -24
  %8 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517221, i32* %8, align 8
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i42.i, -28
  %9 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %tmp2_v4.i44.i, i32* %9, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i42.i, -32
  %10 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517154, i32* %10, align 16
  %11 = load i32, i32* %7, align 4
  %12 = add i32 %11, -91
  %13 = icmp ult i32 %12, -26
  %tmp0_v1.i9.i.i = add nuw nsw i32 %11, 32
  %r_eax.0.i = select i1 %13, i32 %11, i32 %tmp0_v1.i9.i.i
  %14 = load i32, i32* %9, align 4
  store i32 %r_eax.0.i, i32* %9, align 4
  %spi.bis.132 = ptrtoint[19 x i8]* @str.132 to i32
  store i32 %spi.bis.132, i32* %10, align 16
  %tmp2_v4.i56.i = add i32 %tmp0_v.i42.i, -36
  %15 = inttoptr i32 %tmp2_v4.i56.i to i32*
  store i32 134517240, i32* %15, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef 0, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  store i32 98, i32* %10, align 16
  store i32 134517253, i32* %15, align 4
  %tmp2_v.i4.i.i5 = add i32 %tmp0_v.i42.i, -40
  %19 = inttoptr i32 %tmp2_v.i4.i.i5 to i32*
  store i32 %14, i32* %19, align 8
  %tmp2_v1.i.i.i6 = add i32 %tmp0_v.i42.i, -44
  %20 = inttoptr i32 %tmp2_v1.i.i.i6 to i32*
  store i32 134517154, i32* %20, align 4
  %21 = load i32, i32* %10, align 16
  %22 = add i32 %21, -91
  %23 = icmp ult i32 %22, -26
  %tmp0_v1.i9.i.i7 = add nuw nsw i32 %21, 32
  %r_eax.0.i8 = select i1 %23, i32 %21, i32 %tmp0_v1.i9.i.i7
  %24 = load i32, i32* %19, align 8
  store i32 %r_eax.0.i8, i32* %9, align 4
  %spi.bis.130 = ptrtoint[19 x i8]* @str.130 to i32
  store i32 %spi.bis.130, i32* %10, align 16
  store i32 134517272, i32* %15, align 4
  %25 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %18, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  store i32 35, i32* %10, align 16
  store i32 134517285, i32* %15, align 4
  store i32 %24, i32* %19, align 8
  store i32 134517154, i32* %20, align 4
  %28 = load i32, i32* %10, align 16
  %29 = add i32 %28, -91
  %30 = icmp ult i32 %29, -26
  %tmp0_v1.i9.i.i16 = add nuw nsw i32 %28, 32
  %r_eax.0.i17 = select i1 %30, i32 %28, i32 %tmp0_v1.i9.i.i16
  %31 = load i32, i32* %19, align 8
  store i32 %r_eax.0.i17, i32* %9, align 4
  %spi.bis.128 = ptrtoint[19 x i8]* @str.128 to i32
  store i32 %spi.bis.128, i32* %10, align 16
  store i32 134517304, i32* %15, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %27, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  store i32 65, i32* %10, align 16
  store i32 134517317, i32* %15, align 4
  store i32 %31, i32* %19, align 8
  store i32 134517154, i32* %20, align 4
  %35 = load i32, i32* %10, align 16
  %36 = add i32 %35, -91
  %37 = icmp ult i32 %36, -26
  %tmp0_v1.i9.i.i25 = add nuw nsw i32 %35, 32
  %r_eax.0.i26 = select i1 %37, i32 %35, i32 %tmp0_v1.i9.i.i25
  %38 = load i32, i32* %19, align 8
  store i32 %r_eax.0.i26, i32* %9, align 4
  %spi.bis.126 = ptrtoint[19 x i8]* @str.126 to i32
  store i32 %spi.bis.126, i32* %10, align 16
  store i32 134517336, i32* %15, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %34, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  store i32 90, i32* %10, align 16
  store i32 134517349, i32* %15, align 4
  store i32 %38, i32* %19, align 8
  store i32 134517154, i32* %20, align 4
  %42 = load i32, i32* %10, align 16
  %43 = add i32 %42, -91
  %44 = icmp ult i32 %43, -26
  %tmp0_v1.i9.i.i34 = add nuw nsw i32 %42, 32
  %r_eax.0.i35 = select i1 %44, i32 %42, i32 %tmp0_v1.i9.i.i34
  store i32 %r_eax.0.i35, i32* %9, align 4
  %spi.bis.124 = ptrtoint[19 x i8]* @str.124 to i32
  store i32 %spi.bis.124, i32* %10, align 16
  store i32 134517368, i32* %15, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %41, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  store i32 89, i32* %9, align 4
  %spi.bis.123 = ptrtoint[7 x i8]* @str.123 to i32
  store i32 %spi.bis.123, i32* %10, align 16
  store i32 134517388, i32* %15, align 4
  %48 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %47, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @own_tolower135 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack134, i32 0, i32 8092) to i32)) nounwind
