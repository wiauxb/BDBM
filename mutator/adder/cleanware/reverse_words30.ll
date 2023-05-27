; Mutation 30
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack29 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @reverse_words30(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i28.i = add i32 %arg_esp, 4
  %tmp0_v.i29.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i30.i = add i32 %tmp0_v.i29.i, -4
  %2 = inttoptr i32 %tmp2_v3.i30.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i31.i = add i32 %tmp0_v.i29.i, -8
  %3 = inttoptr i32 %tmp2_v4.i31.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i33.i = add i32 %tmp0_v.i29.i, -12
  %4 = inttoptr i32 %tmp2_v5.i33.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i35.i = add i32 %tmp0_v.i29.i, -16
  %5 = inttoptr i32 %tmp2_v6.i35.i to i32*
  store i32 %tmp2_v.i28.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i29.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i8.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i29.i, -37
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i13.i = add i32 %tmp0_v.i29.i, -33
  %11 = inttoptr i32 %tmp2_v4.i13.i to i32*
  store i32 544434464, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i29.i, -29
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i29.i, -25
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 779706743, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i29.i, -21
  %14 = inttoptr i32 %tmp2_v7.i.i to i8*
  store i8 0, i8* %14, align 1
  %tmp2_v10.i.i = add i32 %tmp0_v.i29.i, -64
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %15, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i29.i, -68
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517294, i32* %16, align 4
  %arg.i.i = load i32, i32* %15, align 16
  %17 = inttoptr i32 %arg.i.i to i8*
  %18 = tail call i32 @puts(i8* nonnull dereferenceable(1) %17)
  store i32 %tmp2_v3.i.i, i32* %15, align 16
  store i32 134517309, i32* %16, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i29.i, -72
  %19 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i31.i, i32* %19, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i29.i, -76
  %20 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %20, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i29.i, -228
  %21 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517378, i32* %21, align 4
  %22 = load i32, i32* %15, align 16
  %tmp2_v2.i77.i.i = add i32 %tmp0_v.i29.i, -212
  %23 = inttoptr i32 %tmp2_v2.i77.i.i to i32*
  store i32 %22, i32* %23, align 4
  %tmp4_v.i78.i.b.i = load i1, i1* @segs.0, align 1
  %24 = inttoptr i32 %arg_esp to i32*
  %25 = load i32, i32* %24, align 4
  %tmp2_v5.i81.i.i = add i32 %tmp0_v.i29.i, -84
  %26 = inttoptr i32 %tmp2_v5.i81.i.i to i32*
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %23, align 4
  %tmp2_v9.i84.i.i = add i32 %tmp0_v.i29.i, -240
  %28 = inttoptr i32 %tmp2_v9.i84.i.i to i32*
  store i32 %27, i32* %28, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i29.i, -244
  %29 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517420, i32* %29, align 4
  %arg.i.i.i = load i32, i32* %28, align 16
  %30 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i29.i, -188
  %31 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %30, i32* %31, align 4
  %tmp2_v1.i16.i.i = add i32 %tmp0_v.i29.i, -196
  %32 = inttoptr i32 %tmp2_v1.i16.i.i to i32*
  %tmp2_v2.i17.i.i = add i32 %tmp0_v.i29.i, -192
  %33 = inttoptr i32 %tmp2_v2.i17.i.i to i32*
  store i32 0, i32* %33, align 16
  store i32 0, i32* %32, align 4
  %34 = load i32, i32* %31, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_80492CC.i.lr.ph.i, label %Func_reverse_words.exit

BB_80492CC.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i29.i, -184
  br label %BB_80492CC.i.i

BB_80492F9.i.i:                                   ; preds = %BB_8049319.i.i
  %36 = load i32, i32* %33, align 16
  %tmp0_v8.i.i.i = add i32 %36, %tmp2_v5.i.i.i
  %37 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %43, i8* %37, align 1
  %38 = load i32, i32* %33, align 16
  %tmp0_v11.i.i.i = add i32 %38, 1
  store i32 %tmp0_v11.i.i.i, i32* %33, align 16
  %39 = load i32, i32* %32, align 4
  %tmp0_v14.i.i.i = add i32 %39, 1
  store i32 %tmp0_v14.i.i.i, i32* %32, align 4
  br label %BB_8049319.i.i

BB_8049319.i.i:                                   ; preds = %BB_80492CC.i.i, %BB_80492F9.i.i
  %40 = phi i32 [ %.pre.i, %BB_80492CC.i.i ], [ %tmp0_v14.i.i.i, %BB_80492F9.i.i ]
  %41 = load i32, i32* %23, align 4
  %tmp0_v3.i31.i.i = add i32 %41, %40
  %42 = inttoptr i32 %tmp0_v3.i31.i.i to i8*
  %43 = load i8, i8* %42, align 1
  switch i8 %43, label %BB_80492F9.i.i [
    i8 32, label %BB_8049345.i.preheader.i
    i8 46, label %BB_8049345.i.preheader.i
  ]

BB_8049345.i.preheader.i:                         ; preds = %BB_8049319.i.i, %BB_8049319.i.i
  %44 = load i32, i32* %33, align 16
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %BB_8049323.i.i, label %BB_804934B.i.i

BB_804934B.i.loopexit.i:                          ; preds = %BB_8049323.i.i
  %.pre27.i = load i32, i32* %32, align 4
  br label %BB_804934B.i.i

BB_804934B.i.i:                                   ; preds = %BB_804934B.i.loopexit.i, %BB_8049345.i.preheader.i
  %46 = phi i32 [ %.pre27.i, %BB_804934B.i.loopexit.i ], [ %40, %BB_8049345.i.preheader.i ]
  %tmp0_v1.i.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i.i.i, i32* %32, align 4
  %47 = load i32, i32* %31, align 4
  %48 = icmp slt i32 %tmp0_v1.i.i.i, %47
  br i1 %48, label %BB_80492CC.i.i, label %Func_reverse_words.exit

BB_80492CC.i.i:                                   ; preds = %BB_804934B.i.i, %BB_80492CC.i.lr.ph.i
  store i32 0, i32* %33, align 16
  %.pre.i = load i32, i32* %32, align 4
  br label %BB_8049319.i.i

BB_8049323.i.i:                                   ; preds = %BB_8049323.i.i, %BB_8049345.i.preheader.i
  %49 = phi i32 [ %55, %BB_8049323.i.i ], [ %44, %BB_8049345.i.preheader.i ]
  %tmp0_v1.i88.i.i = add nsw i32 %49, -1
  store i32 %tmp0_v1.i88.i.i, i32* %33, align 16
  %50 = load i32, i32* %32, align 4
  %tmp2_v6.i93.i.i = sub i32 %50, %49
  %51 = load i32, i32* %23, align 4
  %tmp0_v9.i.i.i = add i32 %tmp2_v6.i93.i.i, %51
  %tmp0_v13.i97.i.i = add i32 %tmp0_v1.i88.i.i, %tmp2_v5.i.i.i
  %52 = inttoptr i32 %tmp0_v13.i97.i.i to i8*
  %53 = load i8, i8* %52, align 1
  %54 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  store i8 %53, i8* %54, align 1
  %55 = load i32, i32* %33, align 16
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %BB_8049323.i.i, label %BB_804934B.i.loopexit.i

Func_reverse_words.exit:                          ; preds = %BB_804934B.i.i, %.exit
  %57 = load i32, i32* %19, align 8
  %tmp2_v.i19.i = add i32 %57, -29
  store i32 %tmp2_v.i19.i, i32* %15, align 16
  store i32 134517324, i32* %16, align 4
  %arg.i.i3 = load i32, i32* %15, align 16
  %58 = inttoptr i32 %arg.i.i3 to i8*
  %59 = tail call i32 @puts(i8* nonnull dereferenceable(1) %58)
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

  tail call fastcc void @reverse_words30 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack29, i32 0, i32 8092) to i32)) nounwind
