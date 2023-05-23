; Mutation 143
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !6
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !6
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !6
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !6
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @remove_duplicate_chars143(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i13.i = add i32 %arg_esp, 4
  %tmp0_v.i14.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i15.i = add i32 %tmp0_v.i14.i, -4
  %2 = inttoptr i32 %tmp2_v3.i15.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i16.i = add i32 %tmp0_v.i14.i, -8
  %3 = inttoptr i32 %tmp2_v4.i16.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i18.i = add i32 %tmp0_v.i14.i, -12
  %4 = inttoptr i32 %tmp2_v5.i18.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i20.i = add i32 %tmp0_v.i14.i, -16
  %5 = inttoptr i32 %tmp2_v6.i20.i to i32*
  store i32 %tmp2_v.i13.i, i32* %5, align 16
  %tmp2_v8.i21.i = add i32 %tmp0_v.i14.i, -68
  %6 = inttoptr i32 %tmp2_v8.i21.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i14.i, -52
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i14.i, -20
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i14.i, -48
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1633771873, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i14.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1650614881, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i14.i, -40
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1667457634, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i14.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1633903459, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i14.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1684103521, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i14.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1701078116, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i14.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6645093, i32* %19, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i14.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i14.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517319, i32* %21, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i14.i, -88
  %22 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i16.i, i32* %22, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i14.i, -92
  %23 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i14.i, -116
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517385, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i14.i, -128
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i14.i, -132
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517403, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i72.i.i = add i32 %tmp0_v.i14.i, -112
  %29 = inttoptr i32 %tmp2_v.i72.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v1.i74.i.i = add i32 %tmp0_v.i14.i, -108
  %30 = inttoptr i32 %tmp2_v1.i74.i.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %29, align 16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492AA.i.lr.ph.i, label %Func_remove_duplicates.exit

BB_80492AA.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i14.i, -104
  %33 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  %tmp2_v1.i32.i.i = add i32 %tmp0_v.i14.i, -100
  %34 = inttoptr i32 %tmp2_v1.i32.i.i to i32*
  br label %BB_80492AA.i.i

BB_80492FB.i.i:                                   ; preds = %BB_80492CF.i.i, %BB_80492D7.i.i
  %.lcssa.i = phi i32 [ %47, %BB_80492CF.i.i ], [ %45, %BB_80492D7.i.i ]
  %tmp0_v1.i.i.i = add i32 %.lcssa.i, -1
  store i32 %tmp0_v1.i.i.i, i32* %29, align 16
  %.pre.i = load i32, i32* %33, align 8
  br label %BB_8049305.i.backedge.i

BB_8049305.i.backedge.i:                          ; preds = %BB_8049301.i.i, %BB_80492FB.i.i
  %35 = phi i32 [ %tmp0_v1.i.i.i, %BB_80492FB.i.i ], [ %.pre32.i, %BB_8049301.i.i ]
  %36 = phi i32 [ %.pre.i, %BB_80492FB.i.i ], [ %tmp0_v1.i12.i.i, %BB_8049301.i.i ]
  %37 = icmp slt i32 %36, %35
  br i1 %37, label %BB_80492B5.i.i, label %BB_804930D.i.i

BB_8049301.i.i:                                   ; preds = %BB_80492B5.i.i
  %tmp0_v1.i12.i.i = add nsw i32 %52, 1
  store i32 %tmp0_v1.i12.i.i, i32* %33, align 8
  %.pre32.i = load i32, i32* %29, align 16
  br label %BB_8049305.i.backedge.i

BB_80492AA.i.i:                                   ; preds = %BB_804930D.i.i, %BB_80492AA.i.lr.ph.i
  %storemerge30.i = phi i32 [ 0, %BB_80492AA.i.lr.ph.i ], [ %tmp0_v1.i36.i.i, %BB_804930D.i.i ]
  %tmp0_v1.i18.i.i = add nsw i32 %storemerge30.i, 1
  store i32 %tmp0_v1.i18.i.i, i32* %33, align 8
  %38 = load i32, i32* %29, align 16
  %39 = icmp slt i32 %tmp0_v1.i18.i.i, %38
  br i1 %39, label %BB_80492B5.i.i, label %BB_804930D.i.i

BB_80492D7.i.i:                                   ; preds = %BB_80492CF.i.i, %BB_80492D7.i.i
  %storemerge2529.i = phi i32 [ %tmp0_v13.i.i.i, %BB_80492D7.i.i ], [ %52, %BB_80492CF.i.i ]
  %40 = load i32, i32* %20, align 16
  %tmp2_v1.i23.i.i = add i32 %40, %storemerge2529.i
  %tmp0_v4.i.i.i = add i32 %tmp2_v1.i23.i.i, 1
  %41 = inttoptr i32 %tmp0_v4.i.i.i to i8*
  %42 = load i8, i8* %41, align 1
  %43 = inttoptr i32 %tmp2_v1.i23.i.i to i8*
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %34, align 4
  %tmp0_v13.i.i.i = add i32 %44, 1
  store i32 %tmp0_v13.i.i.i, i32* %34, align 4
  %45 = load i32, i32* %29, align 16
  %46 = icmp slt i32 %tmp0_v13.i.i.i, %45
  br i1 %46, label %BB_80492D7.i.i, label %BB_80492FB.i.i

BB_80492CF.i.i:                                   ; preds = %BB_80492B5.i.i
  store i32 %52, i32* %34, align 4
  %47 = load i32, i32* %29, align 16
  %48 = icmp slt i32 %52, %47
  br i1 %48, label %BB_80492D7.i.i, label %BB_80492FB.i.i

BB_804930D.i.i:                                   ; preds = %BB_80492AA.i.i, %BB_8049305.i.backedge.i
  %49 = load i32, i32* %30, align 4
  %tmp0_v1.i36.i.i = add i32 %49, 1
  store i32 %tmp0_v1.i36.i.i, i32* %30, align 4
  %50 = load i32, i32* %29, align 16
  %51 = icmp slt i32 %tmp0_v1.i36.i.i, %50
  br i1 %51, label %BB_80492AA.i.i, label %Func_remove_duplicates.exit

BB_80492B5.i.i:                                   ; preds = %BB_80492AA.i.i, %BB_8049305.i.backedge.i
  %52 = phi i32 [ %36, %BB_8049305.i.backedge.i ], [ %tmp0_v1.i18.i.i, %BB_80492AA.i.i ]
  %53 = load i32, i32* %30, align 4
  %54 = load i32, i32* %20, align 16
  %tmp0_v3.i80.i.i = add i32 %54, %53
  %55 = inttoptr i32 %tmp0_v3.i80.i.i to i8*
  %56 = load i8, i8* %55, align 1
  %tmp0_v4.i81.i.i = zext i8 %56 to i32
  %tmp0_v9.i86.i.i = add i32 %54, %52
  %57 = inttoptr i32 %tmp0_v9.i86.i.i to i8*
  %58 = load i8, i8* %57, align 1
  %tmp0_v10.i87.i.i = zext i8 %58 to i32
  %cc_dst_v.i88.i.i = sub nsw i32 %tmp0_v4.i81.i.i, %tmp0_v10.i87.i.i
  %tmp4_v.i89.i.i = and i32 %cc_dst_v.i88.i.i, 255
  %.not.i.i.i = icmp eq i32 %tmp4_v.i89.i.i, 0
  br i1 %.not.i.i.i, label %BB_80492CF.i.i, label %BB_8049301.i.i

Func_remove_duplicates.exit:                      ; preds = %BB_804930D.i.i, %.exit
  %59 = load i32, i32* %22, align 8
  %tmp2_v.i10.i = add i32 %59, -40
  store i32 %tmp2_v.i10.i, i32* %20, align 16
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

  tail call fastcc void @remove_duplicate_chars143(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
