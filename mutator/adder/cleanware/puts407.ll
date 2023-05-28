; Mutation 407
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack406 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.402 = constant [21 x i8] c"\50\72\69\6e\74\20\73\74\72\69\6e\67\20\6c\69\74\65\72\61\6c\00"
@str.bis.403 = constant [21 x i8] c"\50\72\69\6e\74\20\73\74\72\69\6e\67\20\6c\69\74\65\72\61\6c\00"
@str.bis.404 = constant [21 x i8] c"\50\72\69\6e\74\20\61\6e\6f\74\68\65\72\20\73\74\72\69\6e\67\00"
@str.bis.405 = constant [21 x i8] c"\50\72\69\6e\74\20\73\74\72\69\6e\67\20\6c\69\74\65\72\61\6c\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: norecurse
define internal fastcc void @puts407(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_804925F.exit.i:
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i9.i = add i32 %tmp0_v.i8.i, -4
  %2 = inttoptr i32 %tmp2_v3.i9.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i10.i = add i32 %tmp0_v.i8.i, -8
  %3 = inttoptr i32 %tmp2_v4.i10.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i12.i = add i32 %tmp0_v.i8.i, -12
  %4 = inttoptr i32 %tmp2_v5.i12.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i8.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i7.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i8.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i37.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i41.i = add i32 %tmp0_v.i8.i, -20
  %9 = inttoptr i32 %tmp2_v2.i41.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v5.i45.i = add i32 %tmp0_v.i8.i, -64
  %10 = inttoptr i32 %tmp2_v5.i45.i to i32*
  %spi.bis.405 = ptrtoint[21 x i8]* @str.bis.405 to i32
  store i32 %spi.bis.405, i32* %10, align 16
  %tmp2_v6.i46.i = add i32 %tmp0_v.i8.i, -68
  %11 = inttoptr i32 %tmp2_v6.i46.i to i32*
  store i32 134517233, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %12 = inttoptr i32 %arg.i.i to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
  %spi.bis.404 = ptrtoint[21 x i8]* @str.bis.404 to i32
  store i32 %spi.bis.404, i32* %10, align 16
  store i32 134517251, i32* %11, align 4
  %arg.i.i3 = load i32, i32* %10, align 16
  %14 = inttoptr i32 %arg.i.i3 to i8*
  %15 = tail call i32 @puts(i8* nonnull dereferenceable(1) %14)
  %tmp2_v1.i18.i = add i32 %tmp0_v.i8.i, -48
  %16 = inttoptr i32 %tmp2_v1.i18.i to i32*
  %spi.bis.403 = ptrtoint[21 x i8]* @str.bis.403 to i32
  store i32 %spi.bis.403, i32* %16, align 16
  %spi.bis.402 = ptrtoint[21 x i8]* @str.bis.402 to i32
  store i32 %spi.bis.402, i32* %10, align 16
  store i32 134517274, i32* %11, align 4
  %arg.i.i5 = load i32, i32* %10, align 16
  %17 = inttoptr i32 %arg.i.i5 to i8*
  %18 = tail call i32 @puts(i8* nonnull dereferenceable(1) %17)
  %tmp2_v.i.i = add i32 %tmp0_v.i8.i, -41
  %19 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 1769108563, i32* %19, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i8.i, -37
  %20 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1763731310, i32* %20, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i8.i, -33
  %21 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 1751326830, i32* %21, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i8.i, -29
  %22 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1629516385, i32* %22, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i8.i, -25
  %23 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 2036429426, i32* %23, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i8.i, -21
  %24 = inttoptr i32 %tmp2_v5.i.i to i8*
  store i8 0, i8* %24, align 1
  store i32 %tmp2_v.i.i, i32* %10, align 16
  store i32 134517328, i32* %11, align 4
  %arg.i.i7 = load i32, i32* %10, align 16
  %25 = inttoptr i32 %arg.i.i7 to i8*
  %26 = tail call i32 @puts(i8* nonnull dereferenceable(1) %25)
  store i32 %tmp2_v.i.i, i32* %10, align 16
  store i32 134517343, i32* %11, align 4
  %arg.i.i9 = load i32, i32* %10, align 16
  %27 = inttoptr i32 %arg.i.i9 to i8*
  %28 = tail call i32 @puts(i8* nonnull dereferenceable(1) %27)
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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i32 0, i32 0, i32 0}

  tail call fastcc void @puts407 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack406, i32 0, i32 8092) to i32)) nounwind
