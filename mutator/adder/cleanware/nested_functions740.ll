; Mutation 740
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack739 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.734 = constant [14 x i8] c"variable: %d\0a\00"
@str.736 = constant [14 x i8] c"variable: %d\0a\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
._crit_edge:
  %1 = load i32, i32* @fpstt, align 16
  %.pre = and i64 %0, 4503599627370495
  %.pre1 = and i64 %0, 9218868437227405312
  %phi.cmp = icmp ne i64 %.pre1, 9218868437227405312
  %phi.cmp3 = icmp eq i64 %.pre, 0
  %2 = or i1 %phi.cmp, %phi.cmp3
  br i1 %2, label %float64_to_floatx80.18.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.18.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.18.exit

float64_to_floatx80.18.exit:                      ; preds = %.sink.split.i, %3, %._crit_edge
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
define internal fastcc void @nested_functions740(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i14.i = add i32 %arg_esp, 4
  %tmp0_v.i15.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i15.i, -4
  %3 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i18.i = add i32 %tmp0_v.i15.i, -8
  %4 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i20.i = add i32 %tmp0_v.i15.i, -12
  %5 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i15.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i14.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i15.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517489, i32* %7, align 4
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i15.i, -24
  %8 = inttoptr i32 %tmp2_v.i9.i.i to i32*
  store i32 %tmp2_v4.i18.i, i32* %8, align 8
  %tmp2_v1.i12.i.i = add i32 %tmp0_v.i15.i, -52
  %9 = inttoptr i32 %tmp2_v1.i12.i.i to i32*
  store i32 134517240, i32* %9, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i15.i, -36
  %12 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i15.i, -40
  %13 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %13, align 8
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i15.i, -44
  %14 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 5, i32* %14, align 4
  store i32 134517280, i32* %9, align 4
  %tmp2_v.i.i.i.i = add i32 %tmp0_v.i15.i, -56
  %15 = inttoptr i32 %tmp2_v.i.i.i.i to i32*
  store i32 %tmp2_v.i9.i.i, i32* %15, align 8
  %tmp2_v1.i.i.i.i = add i32 %tmp0_v.i15.i, -60
  %16 = inttoptr i32 %tmp2_v1.i.i.i.i to i32*
  store i32 134529024, i32* %16, align 4
  %tmp2_v2.i.i.i.i = add i32 %tmp0_v.i15.i, -84
  %17 = inttoptr i32 %tmp2_v2.i.i.i.i to i32*
  store i32 134517186, i32* %17, align 4
  %tmp2_v.i7.i.i.i = add i32 %tmp0_v.i15.i, -68
  %18 = inttoptr i32 %tmp2_v.i7.i.i.i to i32*
  store i32 %tmp2_v5.i.i.i, i32* %18, align 4
  %19 = load i32, i32* %14, align 4
  %tmp2_v3.i.i.i.i = add i32 %tmp0_v.i15.i, -92
  %20 = inttoptr i32 %tmp2_v3.i.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v5.i.i.i.i = add i32 %tmp0_v.i15.i, -96
  %21 = inttoptr i32 %tmp2_v5.i.i.i.i to i32*
  %spi.bis.736 = ptrtoint[14 x i8]* @str.736 to i32
  store i32 %spi.bis.736, i32* %21, align 16
  %tmp2_v6.i.i.i.i = add i32 %tmp0_v.i15.i, -100
  %22 = inttoptr i32 %tmp2_v6.i.i.i.i to i32*
  store i32 134517216, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v5.i.i.i, i32 inreg noundef 134520840, i32 noundef %tmp2_v5.i.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* %15, align 8
  %tmp2_v.i2.i.i = add i32 %25, -20
  store i32 134517290, i32* %9, align 4
  store i32 %25, i32* %15, align 8
  store i32 %24, i32* %16, align 4
  store i32 134517186, i32* %17, align 4
  store i32 %tmp2_v.i2.i.i, i32* %18, align 4
  %26 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %20, align 4
  %spi.bis.734 = ptrtoint[14 x i8]* @str.734 to i32
  store i32 %spi.bis.734, i32* %21, align 16
  store i32 134517216, i32* %22, align 4
  %28 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i.i, i32 inreg noundef 134520840, i32 noundef %tmp2_v5.i.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %15, align 8
  %31 = inttoptr i32 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %tmp2_v.i2.i = add i32 %30, 4
  %33 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 8, i32* %33, align 4
  store i32 9, i32* %31, align 4
  %tmp2_v2.i3.i = add i32 %30, -4
  %34 = inttoptr i32 %tmp2_v2.i3.i to i32*
  store i32 5, i32* %34, align 4
  %tmp2_v3.i.i = add i32 %30, -8
  %35 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 4, i32* %35, align 4
  %tmp2_v4.i4.i = add i32 %30, -12
  %36 = inttoptr i32 %tmp2_v4.i4.i to i32*
  store i32 134517502, i32* %36, align 4
  %tmp2_v.i.i.i = add i32 %30, -16
  %37 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %32, i32* %37, align 4
  %tmp2_v1.i.i.i = add i32 %30, -44
  %38 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517353, i32* %38, align 4
  %tmp4_v.i10.i.b.i = load i1, i1* @segs.0, align 1
  %39 = inttoptr i32 %arg_esp to i32*
  %40 = load i32, i32* %39, align 4
  %tmp2_v2.i14.i.i = add i32 %30, -28
  %41 = inttoptr i32 %tmp2_v2.i14.i.i to i32*
  store i32 %40, i32* %41, align 4
  %tmp2_v4.i15.i.i = add i32 %30, -40
  %42 = inttoptr i32 %tmp2_v4.i15.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %42, align 4
  %43 = load i32, i32* %34, align 4
  store i32 %43, i32* %38, align 4
  %44 = load i32, i32* %35, align 4
  %tmp2_v11.i.i.i = add i32 %30, -48
  %45 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  store i32 %44, i32* %45, align 4
  %tmp2_v12.i.i.i = add i32 %30, -52
  %46 = inttoptr i32 %tmp2_v12.i.i.i to i32*
  store i32 134517391, i32* %46, align 4
  %tmp2_v.i1.i.i.i = add i32 %30, -56
  %47 = inttoptr i32 %tmp2_v.i1.i.i.i to i32*
  store i32 %tmp2_v.i.i.i, i32* %47, align 4
  %tmp2_v1.i4.i.i.i = add i32 %30, -64
  %48 = inttoptr i32 %tmp2_v1.i4.i.i.i to i32*
  store i32 134517321, i32* %48, align 4
  %tmp2_v.i.i.i.i3 = add i32 %30, -60
  %49 = inttoptr i32 %tmp2_v.i.i.i.i3 to i32*
  store i32 %tmp2_v4.i15.i.i, i32* %49, align 4
  %50 = load i32, i32* %45, align 4
  %51 = load i32, i32* %38, align 4
  %tmp15_v5.i.i.i.i = mul i32 %51, %50
  %52 = load i32, i32* %47, align 4
  %tmp2_v.i6.i.i = add i32 %52, -20
  %53 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp15_v5.i.i.i.i, i32* %53, align 4
  %tmp2_v1.i7.i.i = add i32 %52, -24
  %tmp2_v2.i.i.i4 = add i32 %52, 20
  %54 = inttoptr i32 %tmp2_v2.i.i.i4 to i32*
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %38, align 4
  %tmp2_v5.i.i.i5 = add i32 %52, 16
  %56 = inttoptr i32 %tmp2_v5.i.i.i5 to i32*
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %45, align 4
  store i32 134517413, i32* %46, align 4
  store i32 %52, i32* %47, align 4
  store i32 134517321, i32* %48, align 4
  store i32 %tmp2_v1.i7.i.i, i32* %49, align 4
  %58 = load i32, i32* %45, align 4
  %59 = load i32, i32* %38, align 4
  %tmp15_v5.i.i.i27.i = mul i32 %59, %58
  %60 = load i32, i32* %47, align 4
  %tmp2_v.i28.i.i = add i32 %60, -16
  %61 = inttoptr i32 %tmp2_v.i28.i.i to i32*
  store i32 %tmp15_v5.i.i.i27.i, i32* %61, align 4
  %tmp2_v1.i22.i.i = add i32 %60, -12
  %62 = inttoptr i32 %tmp2_v1.i22.i.i to i32*
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %39, align 4
  %tmp0_v4.i.i.i = xor i32 %64, %63
  %tmp4_v2.i.i.i6 = add i32 %60, 8
  %tmp2_v.i.i = add i32 %60, 12
  %65 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %tmp15_v5.i.i.i27.i, i32* %65, align 4
  %tmp2_v2.i.i = add i32 %29, -8170
  %66 = inttoptr i32 %tmp4_v2.i.i.i6 to i32*
  store i32 %tmp2_v2.i.i, i32* %66, align 4
  %tmp2_v4.i.i = add i32 %60, 4
  %67 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517521, i32* %67, align 4
  %68 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v1.i7.i.i, i32 inreg noundef %tmp0_v4.i.i.i, i32 noundef %tmp4_v2.i.i.i6, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
}


!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
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

  tail call fastcc void @nested_functions740 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack739, i32 0, i32 8092) to i32)) nounwind
