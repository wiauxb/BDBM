; Mutation 882
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack881 = internal global [8092 x i32] zeroinitializer, align 16
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

; Function Attrs: noinline
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @smallest_word_print882(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i29.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i33.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i33.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i34.i = add i32 %tmp0_v.i.i, -51
  %10 = inttoptr i32 %tmp2_v3.i34.i to i32*
  store i32 1702043713, i32* %10, align 4
  %tmp2_v4.i35.i = add i32 %tmp0_v.i.i, -47
  %11 = inttoptr i32 %tmp2_v4.i35.i to i32*
  store i32 1852142702, i32* %11, align 4
  %tmp2_v5.i36.i = add i32 %tmp0_v.i.i, -43
  %12 = inttoptr i32 %tmp2_v5.i36.i to i32*
  store i32 1998611811, i32* %12, align 4
  %tmp2_v6.i37.i = add i32 %tmp0_v.i.i, -39
  %13 = inttoptr i32 %tmp2_v6.i37.i to i32*
  store i32 543716457, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -35
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1702258035, i32* %14, align 4
  %tmp2_v8.i38.i = add i32 %tmp0_v.i.i, -31
  %15 = inttoptr i32 %tmp2_v8.i38.i to i32*
  store i32 543973746, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -27
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1685221239, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -23
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 11891, i16* %17, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -21
  %18 = inttoptr i32 %tmp2_v11.i.i to i8*
  store i8 0, i8* %18, align 1
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -80
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i34.i, i32* %19, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -84
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517449, i32* %20, align 4
  %tmp2_v.i111.i.i = add i32 %tmp0_v.i.i, -88
  %21 = inttoptr i32 %tmp2_v.i111.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %21, align 8
  %tmp2_v1.i113.i.i = add i32 %tmp0_v.i.i, -92
  %22 = inttoptr i32 %tmp2_v1.i113.i.i to i32*
  store i32 134529024, i32* %22, align 4
  %tmp2_v2.i116.i.i = add i32 %tmp0_v.i.i, -660
  %23 = inttoptr i32 %tmp2_v2.i116.i.i to i32*
  store i32 134517534, i32* %23, align 4
  %24 = load i32, i32* %19, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -644
  %25 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %24, i32* %25, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %26 = inttoptr i32 %arg_esp to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -100
  %28 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %25, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -672
  %30 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -676
  %31 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517574, i32* %31, align 4
  %arg.i.i.i = load i32, i32* %30, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i49.i.i = add i32 %tmp0_v.i.i, -628
  %33 = inttoptr i32 %tmp2_v.i49.i.i to i32*
  store i32 %32, i32* %33, align 4
  %tmp2_v.i118.i.i = add i32 %tmp0_v.i.i, -640
  %34 = inttoptr i32 %tmp2_v.i118.i.i to i32*
  store i32 0, i32* %34, align 16
  %tmp2_v1.i119.i.i = add i32 %tmp0_v.i.i, -636
  %35 = inttoptr i32 %tmp2_v1.i119.i.i to i32*
  store i32 -1, i32* %35, align 4
  %tmp2_v2.i120.i.i = add i32 %tmp0_v.i.i, -619
  %36 = inttoptr i32 %tmp2_v2.i120.i.i to i32*
  store i32 992751136, i32* %36, align 4
  %tmp2_v3.i121.i.i = add i32 %tmp0_v.i.i, -615
  %37 = inttoptr i32 %tmp2_v3.i121.i.i to i16*
  store i16 2314, i16* %37, align 2
  %tmp2_v4.i122.i.i = add i32 %tmp0_v.i.i, -613
  %38 = inttoptr i32 %tmp2_v4.i122.i.i to i8*
  store i8 0, i8* %38, align 1
  %tmp2_v5.i123.i.i = add i32 %tmp0_v.i.i, -632
  %39 = inttoptr i32 %tmp2_v5.i123.i.i to i32*
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %33, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_8049405.i.preheader.lr.ph.i, label %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i

Func_8049346.exit.i.BB_80494B9.i_crit_edge.i:     ; preds = %.exit
  %.pre79.i = add i32 %tmp0_v.i.i, -356
  %.pre80.i = add i32 %tmp0_v.i.i, -668
  %.pre81.i = inttoptr i32 %.pre80.i to i32*
  br label %Func_smallest_word.exit

BB_8049405.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i65.i.i = add i32 %tmp0_v.i.i, -668
  %42 = inttoptr i32 %tmp2_v7.i65.i.i to i32*
  %tmp2_v5.i75.i.i = add i32 %tmp0_v.i.i, -612
  %tmp2_v5.i161.i.i = add i32 %tmp0_v.i.i, -356
  br label %BB_8049405.i.preheader.i

BB_8049415.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %43 = load i32, i32* %34, align 16
  %tmp0_v2.i.i.i = add i32 %43, %tmp2_v5.i75.i.i
  %44 = inttoptr i32 %tmp0_v2.i.i.i to i8*
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* %35, align 4
  %.not.i92.i.i = icmp eq i32 %45, -1
  br i1 %.not.i92.i.i, label %BB_804943E.i.i, label %BB_8049499.i.preheader.i

BB_8049499.i.preheader.i:                         ; preds = %BB_804943E.i.i, %BB_8049415.i.i
  %46 = load i32, i32* %39, align 8
  %47 = load i32, i32* %33, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

BB_8049492.i.i:                                   ; preds = %BB_8049465.i.i
  %tmp0_v1.i39.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i39.i.i, i32* %39, align 8
  %49 = load i32, i32* %33, align 4
  %50 = icmp slt i32 %tmp0_v1.i39.i.i, %49
  br i1 %50, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

BB_80493D6.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %51 = load i32, i32* %39, align 8
  %52 = load i32, i32* %25, align 4
  %tmp0_v3.i73.i.i = add i32 %52, %51
  %53 = inttoptr i32 %tmp0_v3.i73.i.i to i8*
  %54 = load i8, i8* %53, align 1
  %55 = load i32, i32* %34, align 16
  %tmp0_v8.i76.i.i = add i32 %55, %tmp2_v5.i75.i.i
  %56 = inttoptr i32 %tmp0_v8.i76.i.i to i8*
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %39, align 8
  %tmp0_v11.i.i.i = add i32 %57, 1
  store i32 %tmp0_v11.i.i.i, i32* %39, align 8
  %58 = load i32, i32* %34, align 16
  %tmp0_v14.i.i.i = add i32 %58, 1
  store i32 %tmp0_v14.i.i.i, i32* %34, align 16
  %59 = load i32, i32* %39, align 8
  %60 = load i32, i32* %25, align 4
  %tmp0_v3.i60.i.i = add i32 %60, %59
  %61 = inttoptr i32 %tmp0_v3.i60.i.i to i8*
  %62 = load i8, i8* %61, align 1
  %tmp0_v5.i62.i.i = sext i8 %62 to i32
  store i32 %tmp0_v5.i62.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i120.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i52.i = load i32, i32* %30, align 16
  %arg2.i.i.i = load i32, i32* %42, align 4
  %63 = tail call i32 @strchr(i32 %arg.i.i52.i, i32 %arg2.i.i.i)
  %.not.i.i.i = icmp eq i32 %63, 0
  br i1 %.not.i.i.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_80494A7.i.loopexit.i:                          ; preds = %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, %BB_8049492.i.i, %BB_8049499.i.preheader.i
  %64 = phi i32 [ %47, %BB_8049499.i.preheader.i ], [ %.pre76.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %49, %BB_8049492.i.i ]
  %65 = phi i32 [ %46, %BB_8049499.i.preheader.i ], [ %.pre.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i39.i.i, %BB_8049492.i.i ]
  %66 = icmp slt i32 %65, %64
  br i1 %66, label %BB_8049405.i.preheader.i, label %Func_smallest_word.exit

BB_8049405.i.preheader.i:                         ; preds = %BB_80494A7.i.loopexit.i, %BB_8049405.i.preheader.lr.ph.i
  store i32 0, i32* %34, align 16
  %67 = load i32, i32* %39, align 8
  %68 = load i32, i32* %25, align 4
  %tmp0_v3.i60.i69.i = add i32 %68, %67
  %69 = inttoptr i32 %tmp0_v3.i60.i69.i to i8*
  %70 = load i8, i8* %69, align 1
  %tmp0_v5.i62.i70.i = sext i8 %70 to i32
  store i32 %tmp0_v5.i62.i70.i, i32* %42, align 4
  store i32 %tmp2_v2.i120.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i5271.i = load i32, i32* %30, align 16
  %arg2.i.i72.i = load i32, i32* %42, align 4
  %71 = tail call i32 @strchr(i32 %arg.i.i5271.i, i32 %arg2.i.i72.i)
  %.not.i.i73.i = icmp eq i32 %71, 0
  br i1 %.not.i.i73.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049465.i.i:                                   ; preds = %BB_8049492.i.i, %BB_8049499.i.preheader.i
  %72 = phi i32 [ %tmp0_v1.i39.i.i, %BB_8049492.i.i ], [ %46, %BB_8049499.i.preheader.i ]
  %73 = load i32, i32* %25, align 4
  %tmp0_v3.i144.i.i = add i32 %73, %72
  %74 = inttoptr i32 %tmp0_v3.i144.i.i to i8*
  %75 = load i8, i8* %74, align 1
  %tmp0_v5.i146.i.i = sext i8 %75 to i32
  store i32 %tmp0_v5.i146.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i120.i.i, i32* %30, align 16
  store i32 134517897, i32* %31, align 4
  %arg.i.i60.i = load i32, i32* %30, align 16
  %arg2.i.i61.i = load i32, i32* %42, align 4
  %76 = tail call i32 @strchr(i32 %arg.i.i60.i, i32 %arg2.i.i61.i)
  %.not.i108.i.i = icmp eq i32 %76, 0
  %.pre.pre.i = load i32, i32* %39, align 8
  br i1 %.not.i108.i.i, label %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, label %BB_8049492.i.i

BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_8049465.i.i
  %.pre76.pre.i = load i32, i32* %33, align 4
  br label %BB_80494A7.i.loopexit.i

BB_804943E.i.i:                                   ; preds = %BB_8049415.i.i
  %77 = load i32, i32* %34, align 16
  store i32 %77, i32* %35, align 4
  store i32 %tmp2_v5.i75.i.i, i32* %42, align 4
  store i32 %tmp2_v5.i161.i.i, i32* %30, align 16
  store i32 134517856, i32* %31, align 4
  %arg.i.i64.i = load i32, i32* %30, align 16
  %arg2.i.i65.i = load i32, i32* %42, align 4
  %78 = tail call i32 @strcpy(i32 %arg.i.i64.i, i32 %arg2.i.i65.i)
  br label %BB_8049499.i.preheader.i

Func_smallest_word.exit:                          ; preds = %BB_80494A7.i.loopexit.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i
  %.pre-phi.i = phi i32* [ %.pre81.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %42, %BB_80494A7.i.loopexit.i ]
  %tmp2_v2.i100.i.pre-phi.i = phi i32 [ %.pre79.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %tmp2_v5.i161.i.i, %BB_80494A7.i.loopexit.i ]
  %79 = load i32, i32* %35, align 4
  %tmp0_v1.i134.i.i = add i32 %79, 1
  store i32 %tmp0_v1.i134.i.i, i32* %30, align 16
  store i32 134517963, i32* %31, align 4
  %arg.i.i55.i = load i32, i32* %30, align 16
  %80 = tail call i32 @malloc(i32 %arg.i.i55.i)
  %tmp2_v.i97.i.i = add i32 %tmp0_v.i.i, -624
  %81 = inttoptr i32 %tmp2_v.i97.i.i to i32*
  store i32 %80, i32* %81, align 16
  store i32 %tmp2_v2.i100.i.pre-phi.i, i32* %.pre-phi.i, align 4
  %82 = load i32, i32* %81, align 16
  store i32 %82, i32* %30, align 16
  store i32 134517993, i32* %31, align 4
  %arg.i.i58.i = load i32, i32* %30, align 16
  %arg2.i.i59.i = load i32, i32* %.pre-phi.i, align 4
  %83 = tail call i32 @strcpy(i32 %arg.i.i58.i, i32 %arg2.i.i59.i)
  %84 = load i32, i32* %81, align 16
  %85 = load i32, i32* %21, align 8
  %tmp2_v.i22.i = add i32 %85, -48
  %86 = inttoptr i32 %tmp2_v.i22.i to i32*
  store i32 %84, i32* %86, align 4
  store i32 %84, i32* %19, align 16
  store i32 134517466, i32* %20, align 4
  %arg.i.i = load i32, i32* %19, align 16
  %87 = inttoptr i32 %arg.i.i to i8*
  %88 = tail call i32 @puts(i8* nonnull dereferenceable(1) %87)
  %89 = load i32, i32* %86, align 4
  store i32 %89, i32* %19, align 16
  store i32 134517480, i32* %20, align 4
  %arg.i.i3 = load i32, i32* %19, align 16
  tail call void @free(i32 %arg.i.i3)
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

  tail call fastcc void @smallest_word_print882 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack881, i32 0, i32 8092) to i32)) nounwind
