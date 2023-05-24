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
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i7.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i7.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i9.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i9.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -37
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -33
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 544434464, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -29
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -25
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 779706743, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -21
  %14 = inttoptr i32 %tmp2_v7.i.i to i8*
  store i8 0, i8* %14, align 1
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -64
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %15, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -68
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517294, i32* %16, align 4
  %arg.i.i = load i32, i32* %15, align 16
  %17 = inttoptr i32 %arg.i.i to i8*
  %18 = tail call i32 @puts(i8* nonnull dereferenceable(1) %17)
  store i32 %tmp2_v3.i.i, i32* %15, align 16
  store i32 134517309, i32* %16, align 4
  %tmp2_v.i5.i.i = add i32 %tmp0_v.i3.i, -72
  %19 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  store i32 %tmp2_v4.i5.i, i32* %19, align 8
  %tmp2_v1.i7.i.i = add i32 %tmp0_v.i3.i, -76
  %20 = inttoptr i32 %tmp2_v1.i7.i.i to i32*
  store i32 134529024, i32* %20, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -228
  %21 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517378, i32* %21, align 4
  %22 = load i32, i32* %15, align 16
  %tmp2_v2.i47.i.i = add i32 %tmp0_v.i3.i, -212
  %23 = inttoptr i32 %tmp2_v2.i47.i.i to i32*
  store i32 %22, i32* %23, align 4
  %tmp4_v.i48.i.b.i = load i1, i1* @segs.0, align 1
  %24 = inttoptr i32 %arg_esp to i32*
  %25 = load i32, i32* %24, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i3.i, -84
  %26 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %23, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i3.i, -240
  %28 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %27, i32* %28, align 16
  %tmp2_v10.i54.i.i = add i32 %tmp0_v.i3.i, -244
  %29 = inttoptr i32 %tmp2_v10.i54.i.i to i32*
  store i32 134517420, i32* %29, align 4
  %arg.i.i.i = load i32, i32* %28, align 16
  %30 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i39.i.i = add i32 %tmp0_v.i3.i, -188
  %31 = inttoptr i32 %tmp2_v.i39.i.i to i32*
  store i32 %30, i32* %31, align 4
  %tmp2_v1.i40.i.i = add i32 %tmp0_v.i3.i, -196
  %32 = inttoptr i32 %tmp2_v1.i40.i.i to i32*
  %tmp2_v2.i41.i.i = add i32 %tmp0_v.i3.i, -192
  %33 = inttoptr i32 %tmp2_v2.i41.i.i to i32*
  store i32 0, i32* %33, align 16
  store i32 0, i32* %32, align 4
  %34 = load i32, i32* %31, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_80492CC.i.lr.ph.i, label %Func_reverse_words.exit

BB_80492CC.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v5.i91.i.i = add i32 %tmp0_v.i3.i, -184
  br label %BB_80492CC.i.i

BB_8049319.i.i:                                   ; preds = %BB_80492F9.i.i, %BB_80492CC.i.i
  %36 = phi i32 [ %tmp0_v14.i96.i.i, %BB_80492F9.i.i ], [ %.pre.i, %BB_80492CC.i.i ]
  %37 = load i32, i32* %23, align 4
  %tmp0_v3.i26.i.i = add i32 %37, %36
  %38 = inttoptr i32 %tmp0_v3.i26.i.i to i8*
  %39 = load i8, i8* %38, align 1
  switch i8 %39, label %BB_80492F9.i.i [
    i8 32, label %BB_8049345.i.preheader.i
    i8 46, label %BB_8049345.i.preheader.i
  ]

BB_8049345.i.preheader.i:                         ; preds = %BB_8049319.i.i, %BB_8049319.i.i
  %40 = load i32, i32* %33, align 16
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_8049323.i.i, label %BB_804934B.i.i

BB_8049323.i.i:                                   ; preds = %BB_8049323.i.i, %BB_8049345.i.preheader.i
  %42 = phi i32 [ %48, %BB_8049323.i.i ], [ %40, %BB_8049345.i.preheader.i ]
  %tmp0_v1.i.i.i = add nsw i32 %42, -1
  store i32 %tmp0_v1.i.i.i, i32* %33, align 16
  %43 = load i32, i32* %32, align 4
  %tmp2_v6.i.i.i = sub i32 %43, %42
  %44 = load i32, i32* %23, align 4
  %tmp0_v9.i.i.i = add i32 %tmp2_v6.i.i.i, %44
  %tmp0_v13.i.i.i = add i32 %tmp0_v1.i.i.i, %tmp2_v5.i91.i.i
  %45 = inttoptr i32 %tmp0_v13.i.i.i to i8*
  %46 = load i8, i8* %45, align 1
  %47 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %33, align 16
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %BB_8049323.i.i, label %BB_804934B.i.loopexit.i

BB_804934B.i.loopexit.i:                          ; preds = %BB_8049323.i.i
  %.pre27.i = load i32, i32* %32, align 4
  br label %BB_804934B.i.i

BB_804934B.i.i:                                   ; preds = %BB_804934B.i.loopexit.i, %BB_8049345.i.preheader.i
  %50 = phi i32 [ %.pre27.i, %BB_804934B.i.loopexit.i ], [ %36, %BB_8049345.i.preheader.i ]
  %tmp0_v1.i75.i.i = add i32 %50, 1
  store i32 %tmp0_v1.i75.i.i, i32* %32, align 4
  %51 = load i32, i32* %31, align 4
  %52 = icmp slt i32 %tmp0_v1.i75.i.i, %51
  br i1 %52, label %BB_80492CC.i.i, label %Func_reverse_words.exit

BB_80492CC.i.i:                                   ; preds = %BB_804934B.i.i, %BB_80492CC.i.lr.ph.i
  store i32 0, i32* %33, align 16
  %.pre.i = load i32, i32* %32, align 4
  br label %BB_8049319.i.i

BB_80492F9.i.i:                                   ; preds = %BB_8049319.i.i
  %53 = load i32, i32* %33, align 16
  %tmp0_v8.i93.i.i = add i32 %53, %tmp2_v5.i91.i.i
  %54 = inttoptr i32 %tmp0_v8.i93.i.i to i8*
  store i8 %39, i8* %54, align 1
  %55 = load i32, i32* %33, align 16
  %tmp0_v11.i.i.i = add i32 %55, 1
  store i32 %tmp0_v11.i.i.i, i32* %33, align 16
  %56 = load i32, i32* %32, align 4
  %tmp0_v14.i96.i.i = add i32 %56, 1
  store i32 %tmp0_v14.i96.i.i, i32* %32, align 4
  br label %BB_8049319.i.i

Func_reverse_words.exit:                          ; preds = %BB_804934B.i.i, %.exit
  %57 = load i32, i32* %19, align 8
  %tmp2_v.i14.i = add i32 %57, -29
  store i32 %tmp2_v.i14.i, i32* %15, align 16
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
