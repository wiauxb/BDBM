; Mutation 355
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack354 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.350 = constant [8 x i8] c"The End\00"
@str.351 = constant [23 x i8] c"goto statement jumping\00"
@str.352 = constant [12 x i8] c"Statement 3\00"
@str.353 = constant [12 x i8] c"Statement 1\00"

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
define internal fastcc void @goto355(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
label_1.i5.i:
  %tmp2_v.i53.i = add i32 %arg_esp, 4
  %tmp0_v.i54.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i56.i = add i32 %tmp0_v.i54.i, -4
  %2 = inttoptr i32 %tmp2_v3.i56.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i54.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i58.i = add i32 %tmp0_v.i54.i, -12
  %4 = inttoptr i32 %tmp2_v5.i58.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i54.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i53.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i54.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v2.i18.i = add i32 %tmp0_v.i54.i, -48
  %7 = inttoptr i32 %tmp2_v2.i18.i to i32*
  %spi.bis.353 = ptrtoint[12 x i8]* @str.353 to i32
  store i32 %spi.bis.353, i32* %7, align 16
  %tmp2_v3.i.i = add i32 %tmp0_v.i54.i, -52
  %8 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 134517190, i32* %8, align 4
  %arg.i.i = load i32, i32* %7, align 16
  %9 = inttoptr i32 %arg.i.i to i8*
  %10 = tail call i32 @puts(i8* nonnull dereferenceable(1) %9)
  %spi.bis.352 = ptrtoint[12 x i8]* @str.352 to i32
  store i32 %spi.bis.352, i32* %7, align 16
  store i32 134517213, i32* %8, align 4
  %arg.i.i4 = load i32, i32* %7, align 16
  %11 = inttoptr i32 %arg.i.i4 to i8*
  %12 = tail call i32 @puts(i8* nonnull dereferenceable(1) %11)
  %tmp2_v.i51.i = add i32 %tmp0_v.i54.i, -28
  %13 = inttoptr i32 %tmp2_v.i51.i to i32*
  store i32 0, i32* %13, align 4
  %tmp2_v.i9.i = add i32 %tmp0_v.i54.i, -24
  %14 = inttoptr i32 %tmp2_v.i9.i to i32*
  store i32 0, i32* %14, align 8
  %tmp2_v.i11.i = add i32 %tmp0_v.i54.i, -20
  %15 = inttoptr i32 %tmp2_v.i11.i to i32*
  store i32 5, i32* %15, align 4
  %spi.bis.351 = ptrtoint[23 x i8]* @str.351 to i32
  store i32 %spi.bis.351, i32* %7, align 16
  store i32 134517268, i32* %8, align 4
  %arg.i.i5 = load i32, i32* %7, align 16
  %16 = inttoptr i32 %arg.i.i5 to i8*
  %17 = tail call i32 @puts(i8* nonnull dereferenceable(1) %16)
  %spi.bis.350 = ptrtoint[8 x i8]* @str.350 to i32
  store i32 %spi.bis.350, i32* %7, align 16
  store i32 134517319, i32* %8, align 4
  %arg.i.i6 = load i32, i32* %7, align 16
  %18 = inttoptr i32 %arg.i.i6 to i8*
  %19 = tail call i32 @puts(i8* nonnull dereferenceable(1) %18)
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

  tail call fastcc void @goto355 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack354, i32 0, i32 8092) to i32)) nounwind
