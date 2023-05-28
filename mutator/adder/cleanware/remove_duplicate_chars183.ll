; Mutation 183
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack182 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.181 = constant [4 x i8] c"\05\77\2d\00"

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
define internal fastcc void @remove_duplicate_chars183(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp2_v.i20.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i20.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i23.i = add i32 %tmp0_v.i3.i, -52
  %9 = inttoptr i32 %tmp2_v2.i23.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i24.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i26.i = add i32 %tmp0_v.i3.i, -20
  %12 = inttoptr i32 %tmp2_v5.i26.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i3.i, -48
  %13 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 1633771873, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1650614881, i32* %14, align 4
  %tmp2_v8.i28.i = add i32 %tmp0_v.i3.i, -40
  %15 = inttoptr i32 %tmp2_v8.i28.i to i32*
  store i32 1667457634, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1633903459, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1684103521, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1701078116, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6645093, i32* %19, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v6.i27.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i3.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517319, i32* %21, align 4
  %tmp2_v.i31.i.i = add i32 %tmp0_v.i3.i, -88
  %22 = inttoptr i32 %tmp2_v.i31.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %22, align 8
  %tmp2_v1.i33.i.i = add i32 %tmp0_v.i3.i, -92
  %23 = inttoptr i32 %tmp2_v1.i33.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i35.i.i = add i32 %tmp0_v.i3.i, -116
  %24 = inttoptr i32 %tmp2_v2.i35.i.i to i32*
  %spi.bis.181 = ptrtoint[4 x i8]* @str.bis.181 to i32
  store i32 %spi.bis.181, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i3.i, -128
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i52.i.i = add i32 %tmp0_v.i3.i, -132
  %27 = inttoptr i32 %tmp2_v4.i52.i.i to i32*
  store i32 134517403, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i79.i.i = add i32 %tmp0_v.i3.i, -112
  %29 = inttoptr i32 %tmp2_v.i79.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v1.i81.i.i = add i32 %tmp0_v.i3.i, -108
  %30 = inttoptr i32 %tmp2_v1.i81.i.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %29, align 16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492AA.i.lr.ph.i, label %Func_remove_duplicates.exit

BB_80492AA.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v2.i86.i.i = add i32 %tmp0_v.i3.i, -104
  %33 = inttoptr i32 %tmp2_v2.i86.i.i to i32*
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i3.i, -100
  %34 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  br label %BB_80492AA.i.i

BB_80492CF.i.i:                                   ; preds = %BB_80492B5.i.i
  store i32 %40, i32* %34, align 4
  %35 = load i32, i32* %29, align 16
  %36 = icmp slt i32 %40, %35
  br i1 %36, label %BB_80492D7.i.i, label %BB_80492FB.i.i

BB_8049301.i.i:                                   ; preds = %BB_80492B5.i.i
  %tmp0_v1.i.i.i = add nsw i32 %40, 1
  store i32 %tmp0_v1.i.i.i, i32* %33, align 8
  %.pre32.i = load i32, i32* %29, align 16
  br label %BB_8049305.i.backedge.i

BB_8049305.i.backedge.i:                          ; preds = %BB_80492FB.i.i, %BB_8049301.i.i
  %37 = phi i32 [ %.pre32.i, %BB_8049301.i.i ], [ %tmp0_v1.i90.i.i, %BB_80492FB.i.i ]
  %38 = phi i32 [ %tmp0_v1.i.i.i, %BB_8049301.i.i ], [ %.pre.i, %BB_80492FB.i.i ]
  %39 = icmp slt i32 %38, %37
  br i1 %39, label %BB_80492B5.i.i, label %BB_804930D.i.i

BB_80492B5.i.i:                                   ; preds = %BB_80492AA.i.i, %BB_8049305.i.backedge.i
  %40 = phi i32 [ %38, %BB_8049305.i.backedge.i ], [ %tmp0_v1.i85.i.i, %BB_80492AA.i.i ]
  %41 = load i32, i32* %30, align 4
  %42 = load i32, i32* %20, align 16
  %tmp0_v3.i27.i.i = add i32 %42, %41
  %43 = inttoptr i32 %tmp0_v3.i27.i.i to i8*
  %44 = load i8, i8* %43, align 1
  %tmp0_v4.i.i.i = zext i8 %44 to i32
  %tmp0_v9.i.i.i = add i32 %42, %40
  %45 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  %46 = load i8, i8* %45, align 1
  %tmp0_v10.i.i.i = zext i8 %46 to i32
  %cc_dst_v.i28.i.i = sub nsw i32 %tmp0_v4.i.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i29.i.i = and i32 %cc_dst_v.i28.i.i, 255
  %.not.i.i.i = icmp eq i32 %tmp4_v.i29.i.i, 0
  br i1 %.not.i.i.i, label %BB_80492CF.i.i, label %BB_8049301.i.i

BB_804930D.i.i:                                   ; preds = %BB_80492AA.i.i, %BB_8049305.i.backedge.i
  %47 = load i32, i32* %30, align 4
  %tmp0_v1.i39.i.i = add i32 %47, 1
  store i32 %tmp0_v1.i39.i.i, i32* %30, align 4
  %48 = load i32, i32* %29, align 16
  %49 = icmp slt i32 %tmp0_v1.i39.i.i, %48
  br i1 %49, label %BB_80492AA.i.i, label %Func_remove_duplicates.exit

BB_80492D7.i.i:                                   ; preds = %BB_80492D7.i.i, %BB_80492CF.i.i
  %storemerge2529.i = phi i32 [ %tmp0_v13.i.i.i, %BB_80492D7.i.i ], [ %40, %BB_80492CF.i.i ]
  %50 = load i32, i32* %20, align 16
  %tmp2_v1.i56.i.i = add i32 %50, %storemerge2529.i
  %tmp0_v4.i59.i.i = add i32 %tmp2_v1.i56.i.i, 1
  %51 = inttoptr i32 %tmp0_v4.i59.i.i to i8*
  %52 = load i8, i8* %51, align 1
  %53 = inttoptr i32 %tmp2_v1.i56.i.i to i8*
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %34, align 4
  %tmp0_v13.i.i.i = add i32 %54, 1
  store i32 %tmp0_v13.i.i.i, i32* %34, align 4
  %55 = load i32, i32* %29, align 16
  %56 = icmp slt i32 %tmp0_v13.i.i.i, %55
  br i1 %56, label %BB_80492D7.i.i, label %BB_80492FB.i.i

BB_80492AA.i.i:                                   ; preds = %BB_804930D.i.i, %BB_80492AA.i.lr.ph.i
  %storemerge30.i = phi i32 [ 0, %BB_80492AA.i.lr.ph.i ], [ %tmp0_v1.i39.i.i, %BB_804930D.i.i ]
  %tmp0_v1.i85.i.i = add nsw i32 %storemerge30.i, 1
  store i32 %tmp0_v1.i85.i.i, i32* %33, align 8
  %57 = load i32, i32* %29, align 16
  %58 = icmp slt i32 %tmp0_v1.i85.i.i, %57
  br i1 %58, label %BB_80492B5.i.i, label %BB_804930D.i.i

BB_80492FB.i.i:                                   ; preds = %BB_80492D7.i.i, %BB_80492CF.i.i
  %.lcssa.i = phi i32 [ %35, %BB_80492CF.i.i ], [ %55, %BB_80492D7.i.i ]
  %tmp0_v1.i90.i.i = add i32 %.lcssa.i, -1
  store i32 %tmp0_v1.i90.i.i, i32* %29, align 16
  %.pre.i = load i32, i32* %33, align 8
  br label %BB_8049305.i.backedge.i

Func_remove_duplicates.exit:                      ; preds = %BB_804930D.i.i, %.exit
  %59 = load i32, i32* %22, align 8
  %tmp2_v.i16.i = add i32 %59, -40
  store i32 %tmp2_v.i16.i, i32* %20, align 16
  store i32 134517334, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  %60 = inttoptr i32 %arg.i.i to i8*
  %61 = tail call i32 @puts(i8* nonnull dereferenceable(1) %60)
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

  tail call fastcc void @remove_duplicate_chars183 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack182, i32 0, i32 8092) to i32)) nounwind
