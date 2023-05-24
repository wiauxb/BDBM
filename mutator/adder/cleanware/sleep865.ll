; Mutation 865
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack864 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.862 = constant [6 x i8] c"after\00"
@str.863 = constant [7 x i8] c"before\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @usleep(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @sleep865(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i5.i = add i32 %arg_esp, 4
  %tmp0_v.i6.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i7.i = add i32 %tmp0_v.i6.i, -4
  %3 = inttoptr i32 %tmp2_v3.i7.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i6.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i6.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i6.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i5.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i6.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517198, i32* %7, align 4
  %tmp2_v2.i21.i = add i32 %tmp0_v.i6.i, -32
  %8 = inttoptr i32 %tmp2_v2.i21.i to i32*
  %spi863 = ptrtoint[7 x i8]* @str.863 to i32
  store i32 %spi863, i32* %8, align 16
  %tmp2_v3.i22.i = add i32 %tmp0_v.i6.i, -36
  %9 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 134517219, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  store i32 750000, i32* %8, align 16
  store i32 134517235, i32* %9, align 4
  %arg.i.i1 = load i32, i32* %8, align 16
  %12 = tail call i32 @usleep(i32 %arg.i.i1)
  %spi862 = ptrtoint[6 x i8]* @str.862 to i32
  store i32 %spi862, i32* %8, align 16
  store i32 134517253, i32* %9, align 4
  %arg.i.i2 = load i32, i32* %8, align 16
  %13 = inttoptr i32 %arg.i.i2 to i8*
  %14 = tail call i32 @puts(i8* nonnull dereferenceable(1) %13)
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

  tail call fastcc void @sleep865 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack864, i32 0, i32 8092) to i32)) nounwind
