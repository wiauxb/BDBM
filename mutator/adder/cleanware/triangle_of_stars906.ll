; Mutation 906
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack905 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: nofree norecurse nounwind
define internal fastcc void @triangle_of_stars906(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !10 {
  %tmp2_v.i28.i = add i32 %arg_esp, 4
  %tmp0_v.i29.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i31.i = add i32 %tmp0_v.i29.i, -4
  %3 = inttoptr i32 %tmp2_v3.i31.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i32.i = add i32 %tmp0_v.i29.i, -8
  %4 = inttoptr i32 %tmp2_v4.i32.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i34.i = add i32 %tmp0_v.i29.i, -12
  %5 = inttoptr i32 %tmp2_v5.i34.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i29.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i28.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i29.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %7, align 4
  %tmp2_v.i48.i = add i32 %tmp0_v.i29.i, -24
  %8 = inttoptr i32 %tmp2_v.i48.i to i32*
  %tmp2_v.i44.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v.i44.i to i32*
  store i32 1, i32* %8, align 8
  %tmp2_v.i41.i = add i32 %tmp0_v.i29.i, -48
  %10 = inttoptr i32 %tmp2_v.i41.i to i32*
  %tmp2_v1.i42.i = add i32 %tmp0_v.i29.i, -52
  %11 = inttoptr i32 %tmp2_v1.i42.i to i32*
  br label %BB_80491C0.i

BB_80491E2.i:                                     ; preds = %BB_80491C0.i, %BB_80491C9.i
  store i32 10, i32* %10, align 16
  store i32 134517228, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %12 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %13 = load i32, i32* %8, align 8
  %tmp0_v2.i.i = add i32 %13, 1
  store i32 %tmp0_v2.i.i, i32* %8, align 8
  %14 = icmp slt i32 %tmp0_v2.i.i, 11
  br i1 %14, label %BB_80491C0.i, label %.exit

BB_80491C9.i:                                     ; preds = %BB_80491C0.i, %BB_80491C9.i
  store i32 42, i32* %10, align 16
  store i32 134517203, i32* %11, align 4
  %arg.i.i5 = load i32, i32* %10, align 16
  %15 = tail call i32 @putchar(i32 %arg.i.i5)  nounwind 
  %16 = load i32, i32* %9, align 4
  %tmp0_v2.i20.i = add i32 %16, 1
  store i32 %tmp0_v2.i20.i, i32* %9, align 4
  %17 = load i32, i32* %8, align 8
  %.not.i.i = icmp sgt i32 %tmp0_v2.i20.i, %17
  br i1 %.not.i.i, label %BB_80491E2.i, label %BB_80491C9.i

BB_80491C0.i:                                     ; preds = %BB_80491E2.i, %0
  store i32 1, i32* %9, align 4
  %18 = load i32, i32* %8, align 8
  %.not.i.i6 = icmp slt i32 %18, 1
  br i1 %.not.i.i6, label %BB_80491E2.i, label %BB_80491C9.i

.exit:                                            ; preds = %BB_80491E2.i
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

  tail call fastcc void @triangle_of_stars906 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack905, i32 0, i32 8092) to i32)) nounwind
