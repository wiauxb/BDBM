; Mutation 808
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack807 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.804 = constant [22 x i8] c"Error opening a file.\00"
@str.805 = constant [9 x i8] c"file.txt\00"
@str.806 = constant [2 x i8] c"r\00"

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
define internal fastcc void @char_bug808(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_80492BB.exit.i:
  %tmp2_v.i19.i = add i32 %arg_esp, 4
  %tmp0_v.i20.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i20.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i20.i, -8
  %3 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i24.i = add i32 %tmp0_v.i20.i, -12
  %4 = inttoptr i32 %tmp2_v5.i24.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i26.i = add i32 %tmp0_v.i20.i, -16
  %5 = inttoptr i32 %tmp2_v6.i26.i to i32*
  store i32 %tmp2_v.i19.i, i32* %5, align 16
  %tmp2_v8.i27.i = add i32 %tmp0_v.i20.i, -164
  %6 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 134517396, i32* %6, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i20.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i20.i, -172
  %10 = inttoptr i32 %tmp2_v5.i.i to i32*
  %spi806 = ptrtoint[2 x i8]* @str.806 to i32
  store i32 %spi806, i32* %10, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i20.i, -176
  %11 = inttoptr i32 %tmp2_v7.i.i to i32*
  %spi805 = ptrtoint[9 x i8]* @str.805 to i32
  store i32 %spi805, i32* %11, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i20.i, -180
  %12 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517435, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %arg2.i.i = load i32, i32* %10, align 4
  %13 = tail call i32 @fopen(i32 %arg.i.i, i32 %arg2.i.i)
  %tmp2_v.i31.i = add i32 %tmp0_v.i20.i, -156
  %14 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 %13, i32* %14, align 4
  %spi804 = ptrtoint[22 x i8]* @str.804 to i32
  store i32 %spi804, i32* %11, align 16
  store i32 134517468, i32* %12, align 4
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

  tail call fastcc void @char_bug808 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack807, i32 0, i32 8092) to i32)) nounwind
