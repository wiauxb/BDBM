; Mutation 241
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack240 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.235 = constant [16 x i8] c"second if done!\00"
@str.236 = constant [10 x i8] c"2nd cond!\00"
@str.237 = constant [2 x i8] c"\0a\00"
@str.238 = constant [15 x i8] c"first if done!\00"
@str.239 = constant [12 x i8] c"x equals 4!\00"

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
define internal fastcc void @if241(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
label_1.i44.i:
  %tmp2_v.i46.i = add i32 %arg_esp, 4
  %tmp0_v.i47.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i49.i = add i32 %tmp0_v.i47.i, -4
  %2 = inttoptr i32 %tmp2_v3.i49.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i47.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i51.i = add i32 %tmp0_v.i47.i, -12
  %4 = inttoptr i32 %tmp2_v5.i51.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i47.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i46.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i47.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i39.i = add i32 %tmp0_v.i47.i, -20
  %7 = inttoptr i32 %tmp2_v.i39.i to i32*
  store i32 4, i32* %7, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i47.i, -48
  %8 = inttoptr i32 %tmp2_v1.i.i to i32*
  %spi.bis.239 = ptrtoint[12 x i8]* @str.239 to i32
  store i32 %spi.bis.239, i32* %8, align 16
  %tmp2_v2.i.i = add i32 %tmp0_v.i47.i, -52
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517255, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  %spi.bis.238 = ptrtoint[15 x i8]* @str.238 to i32
  store i32 %spi.bis.238, i32* %8, align 16
  store i32 134517293, i32* %9, align 4
  %arg.i.i5 = load i32, i32* %8, align 16
  %12 = inttoptr i32 %arg.i.i5 to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
  %spi.bis.237 = ptrtoint[2 x i8]* @str.237 to i32
  store i32 %spi.bis.237, i32* %8, align 16
  store i32 134517311, i32* %9, align 4
  %arg.i.i6 = load i32, i32* %8, align 16
  %14 = inttoptr i32 %arg.i.i6 to i8*
  %15 = tail call i32 @puts(i8* nonnull dereferenceable(1) %14)
  %spi.bis.236 = ptrtoint[10 x i8]* @str.236 to i32
  store i32 %spi.bis.236, i32* %8, align 16
  store i32 134517361, i32* %9, align 4
  %arg.i.i7 = load i32, i32* %8, align 16
  %16 = inttoptr i32 %arg.i.i7 to i8*
  %17 = tail call i32 @puts(i8* nonnull dereferenceable(1) %16)
  %spi.bis.235 = ptrtoint[16 x i8]* @str.235 to i32
  store i32 %spi.bis.235, i32* %8, align 16
  store i32 134517451, i32* %9, align 4
  %arg.i.i8 = load i32, i32* %8, align 16
  %18 = inttoptr i32 %arg.i.i8 to i8*
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

  tail call fastcc void @if241 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack240, i32 0, i32 8092) to i32)) nounwind
