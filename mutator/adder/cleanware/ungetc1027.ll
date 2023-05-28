; Mutation 1027
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack1026 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.1023 = constant [20 x i8] c"\45\72\72\6f\72\20\6f\70\65\6e\69\6e\67\20\66\69\6c\65\2e\00"
@str.bis.1024 = constant [9 x i8] c"\66\69\6c\65\2e\74\78\74\00"
@str.bis.1025 = constant [2 x i8] c"\72\00"

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
declare i32 @fopen(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @ungetc1027(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_80492FB.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -548
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517460, i32* %6, align 4
  %tmp4_v.i11.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i15.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i15.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v5.i19.i = add i32 %tmp0_v.i.i, -556
  %10 = inttoptr i32 %tmp2_v5.i19.i to i32*
  %spi.bis.1025 = ptrtoint[2 x i8]* @str.bis.1025 to i32
  store i32 %spi.bis.1025, i32* %10, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -560
  %11 = inttoptr i32 %tmp2_v7.i.i to i32*
  %spi.bis.1024 = ptrtoint[9 x i8]* @str.bis.1024 to i32
  store i32 %spi.bis.1024, i32* %11, align 16
  %tmp2_v8.i21.i = add i32 %tmp0_v.i.i, -564
  %12 = inttoptr i32 %tmp2_v8.i21.i to i32*
  store i32 134517499, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %arg2.i.i = load i32, i32* %10, align 4
  %13 = tail call i32 @fopen(i32 %arg.i.i, i32 %arg2.i.i)
  %tmp2_v.i25.i = add i32 %tmp0_v.i.i, -540
  %14 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 %13, i32* %14, align 4
  %spi.bis.1023 = ptrtoint[20 x i8]* @str.bis.1023 to i32
  store i32 %spi.bis.1023, i32* %11, align 16
  store i32 134517532, i32* %12, align 4
  %arg.i.i3 = load i32, i32* %11, align 16
  %15 = inttoptr i32 %arg.i.i3 to i8*
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) %15)
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

  tail call fastcc void @ungetc1027 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack1026, i32 0, i32 8092) to i32)) nounwind
