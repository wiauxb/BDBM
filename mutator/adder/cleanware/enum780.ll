; Mutation 780
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack779 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.763 = constant [3 x i8] c"\4f\4e\00"
@str.bis.764 = constant [4 x i8] c"\4f\46\46\00"
@str.bis.765 = constant [4 x i8] c"\05\19\2d\00"
@str.bis.766 = constant [4 x i8] c"\05\42\2d\00"
@str.bis.767 = constant [4 x i8] c"\05\42\2d\00"
@str.bis.768 = constant [3 x i8] c"\4f\4e\00"
@str.bis.769 = constant [4 x i8] c"\4f\46\46\00"
@str.bis.770 = constant [4 x i8] c"\05\19\2d\00"
@str.bis.771 = constant [4 x i8] c"\05\42\2d\00"
@str.bis.772 = constant [3 x i8] c"\4f\4e\00"
@str.bis.773 = constant [4 x i8] c"\4f\46\46\00"
@str.bis.774 = constant [4 x i8] c"\05\19\2d\00"
@str.bis.775 = constant [12 x i8] c"\46\72\69\64\61\79\3a\20\25\64\0a\00"
@str.bis.776 = constant [14 x i8] c"\54\6f\6d\6f\72\72\6f\77\3a\20\25\64\0a\00"
@str.bis.777 = constant [11 x i8] c"\54\6f\64\61\79\3a\20\25\64\0a\00"
@str.bis.778 = constant [15 x i8] c"\59\65\73\74\65\72\64\61\79\3a\20\25\64\0a\00"

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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: norecurse
define internal fastcc void @enum780(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i64.i = add i32 %arg_esp, 4
  %tmp0_v.i65.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i67.i = add i32 %tmp0_v.i65.i, -4
  %3 = inttoptr i32 %tmp2_v3.i67.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i68.i = add i32 %tmp0_v.i65.i, -8
  %4 = inttoptr i32 %tmp2_v4.i68.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i70.i = add i32 %tmp0_v.i65.i, -12
  %5 = inttoptr i32 %tmp2_v5.i70.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i72.i = add i32 %tmp0_v.i65.i, -16
  %6 = inttoptr i32 %tmp2_v6.i72.i to i32*
  store i32 %tmp2_v.i64.i, i32* %6, align 16
  %tmp2_v8.i73.i = add i32 %tmp0_v.i65.i, -36
  %7 = inttoptr i32 %tmp2_v8.i73.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v.i40.i = add i32 %tmp0_v.i65.i, -32
  %8 = inttoptr i32 %tmp2_v.i40.i to i32*
  store i32 9, i32* %8, align 16
  %tmp2_v1.i.i = add i32 %tmp0_v.i65.i, -28
  %9 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %9, align 4
  %tmp2_v2.i41.i = add i32 %tmp0_v.i65.i, -24
  %10 = inttoptr i32 %tmp2_v2.i41.i to i32*
  store i32 10, i32* %10, align 8
  %11 = load i32, i32* %9, align 4
  %tmp2_v6.i45.i = add i32 %tmp0_v.i65.i, -44
  %12 = inttoptr i32 %tmp2_v6.i45.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i65.i, -48
  %13 = inttoptr i32 %tmp2_v8.i.i to i32*
  %spi.bis.778 = ptrtoint[15 x i8]* @str.bis.778 to i32
  store i32 %spi.bis.778, i32* %13, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i65.i, -52
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517246, i32* %14, align 4
  %15 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i64.i, i32 inreg noundef 0, i32 noundef %tmp2_v8.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* %8, align 16
  store i32 %18, i32* %12, align 4
  %spi.bis.777 = ptrtoint[11 x i8]* @str.bis.777 to i32
  store i32 %spi.bis.777, i32* %13, align 16
  store i32 134517267, i32* %14, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i64.i, i32 inreg noundef %17, i32 noundef %tmp2_v8.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %10, align 8
  store i32 %22, i32* %12, align 4
  %spi.bis.776 = ptrtoint[14 x i8]* @str.bis.776 to i32
  store i32 %spi.bis.776, i32* %13, align 16
  store i32 134517288, i32* %14, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i64.i, i32 inreg noundef %21, i32 noundef %tmp2_v8.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  store i32 20, i32* %12, align 4
  %spi.bis.775 = ptrtoint[12 x i8]* @str.bis.775 to i32
  store i32 %spi.bis.775, i32* %13, align 16
  store i32 134517308, i32* %14, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i64.i, i32 inreg noundef %25, i32 noundef %tmp2_v8.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v.i49.i = add i32 %tmp0_v.i65.i, -20
  %27 = inttoptr i32 %tmp2_v.i49.i to i32*
  store i32 0, i32* %27, align 4
  store i32 0, i32* %13, align 16
  store i32 134517329, i32* %14, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i65.i, -56
  %28 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i68.i, i32* %28, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i65.i, -60
  %29 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %29, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i65.i, -68
  %30 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %spi.bis.774 = ptrtoint[4 x i8]* @str.bis.774 to i32
  store i32 %spi.bis.774, i32* %30, align 4
  %31 = load i32, i32* %13, align 16
  %.not.i.i.i = icmp eq i32 %31, 0
  %tmp2_v1.i14.i.i = add i32 %tmp0_v.i65.i, -80
  %32 = inttoptr i32 %tmp2_v1.i14.i.i to i32*
  %spi.bis.772 = ptrtoint[3 x i8]* @str.bis.772 to i32
  %spi.bis.773 = ptrtoint[4 x i8]* @str.bis.773 to i32
  %..i = select i1 %.not.i.i.i, i32 %spi.bis.772, i32 %spi.bis.773
  %.19.i = select i1 %.not.i.i.i, i32 134517507, i32 134517535
  store i32 %..i, i32* %32, align 16
  %tmp2_v2.i9.i.i = add i32 %tmp0_v.i65.i, -84
  %33 = inttoptr i32 %tmp2_v2.i9.i.i to i32*
  store i32 %.19.i, i32* %33, align 4
  %arg.i.i16.i = load i32, i32* %32, align 16
  %34 = inttoptr i32 %arg.i.i16.i to i8*
  %35 = tail call i32 @puts(i8* nonnull dereferenceable(1) %34)
  %36 = load i32, i32* %29, align 4
  %37 = load i32, i32* %28, align 8
  %tmp2_v.i34.i = add i32 %37, -12
  %38 = inttoptr i32 %tmp2_v.i34.i to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 16
  store i32 134517343, i32* %14, align 4
  store i32 %37, i32* %28, align 8
  %spi.bis.771 = ptrtoint[4 x i8]* @str.bis.771 to i32
  store i32 %spi.bis.771, i32* %29, align 4
  %40 = load i32, i32* %13, align 16
  %.not.i.i.i9 = icmp eq i32 %40, 0
  %spec.select.i = zext i1 %.not.i.i.i9 to i32
  %41 = load i32, i32* %28, align 8
  %tmp2_v.i4.i = add i32 %41, -12
  %42 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %spec.select.i, i32* %42, align 4
  store i32 %spec.select.i, i32* %13, align 16
  store i32 134517360, i32* %14, align 4
  store i32 %41, i32* %28, align 8
  store i32 %36, i32* %29, align 4
  %spi.bis.770 = ptrtoint[4 x i8]* @str.bis.770 to i32
  store i32 %spi.bis.770, i32* %30, align 4
  %43 = load i32, i32* %13, align 16
  %.not.i.i.i15 = icmp eq i32 %43, 0
  %spi.bis.768 = ptrtoint[3 x i8]* @str.bis.768 to i32
  %spi.bis.769 = ptrtoint[4 x i8]* @str.bis.769 to i32
  %..i17 = select i1 %.not.i.i.i15, i32 %spi.bis.768, i32 %spi.bis.769
  %.19.i18 = select i1 %.not.i.i.i15, i32 134517507, i32 134517535
  store i32 %..i17, i32* %32, align 16
  store i32 %.19.i18, i32* %33, align 4
  %arg.i.i16.i20 = load i32, i32* %32, align 16
  %44 = inttoptr i32 %arg.i.i16.i20 to i8*
  %45 = tail call i32 @puts(i8* nonnull dereferenceable(1) %44)
  %46 = load i32, i32* %29, align 4
  %47 = load i32, i32* %28, align 8
  %tmp2_v.i10.i = add i32 %47, -12
  %48 = inttoptr i32 %tmp2_v.i10.i to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 16
  store i32 134517374, i32* %14, align 4
  store i32 %47, i32* %28, align 8
  %spi.bis.767 = ptrtoint[4 x i8]* @str.bis.767 to i32
  store i32 %spi.bis.767, i32* %29, align 4
  %50 = load i32, i32* %13, align 16
  %.not.i.i.i25 = icmp eq i32 %50, 0
  %spec.select.i26 = zext i1 %.not.i.i.i25 to i32
  %51 = load i32, i32* %28, align 8
  %tmp2_v.i84.i = add i32 %51, -12
  %52 = inttoptr i32 %tmp2_v.i84.i to i32*
  store i32 %spec.select.i26, i32* %52, align 4
  store i32 %spec.select.i26, i32* %13, align 16
  store i32 134517391, i32* %14, align 4
  store i32 %51, i32* %28, align 8
  %spi.bis.766 = ptrtoint[4 x i8]* @str.bis.766 to i32
  store i32 %spi.bis.766, i32* %29, align 4
  %53 = load i32, i32* %13, align 16
  %.not.i.i.i31 = icmp eq i32 %53, 0
  %spec.select.i32 = zext i1 %.not.i.i.i31 to i32
  %54 = load i32, i32* %28, align 8
  %tmp2_v.i57.i = add i32 %54, -12
  %55 = inttoptr i32 %tmp2_v.i57.i to i32*
  store i32 %spec.select.i32, i32* %55, align 4
  store i32 %spec.select.i32, i32* %13, align 16
  store i32 134517408, i32* %14, align 4
  store i32 %54, i32* %28, align 8
  store i32 %46, i32* %29, align 4
  %spi.bis.765 = ptrtoint[4 x i8]* @str.bis.765 to i32
  store i32 %spi.bis.765, i32* %30, align 4
  %56 = load i32, i32* %13, align 16
  %.not.i.i.i38 = icmp eq i32 %56, 0
  %spi.bis.763 = ptrtoint[3 x i8]* @str.bis.763 to i32
  %spi.bis.764 = ptrtoint[4 x i8]* @str.bis.764 to i32
  %..i40 = select i1 %.not.i.i.i38, i32 %spi.bis.763, i32 %spi.bis.764
  %.19.i41 = select i1 %.not.i.i.i38, i32 134517507, i32 134517535
  store i32 %..i40, i32* %32, align 16
  store i32 %.19.i41, i32* %33, align 4
  %arg.i.i16.i43 = load i32, i32* %32, align 16
  %57 = inttoptr i32 %arg.i.i16.i43 to i8*
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

  tail call fastcc void @enum780 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack779, i32 0, i32 8092) to i32)) nounwind
