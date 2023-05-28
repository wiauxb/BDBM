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
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @smallest_word_print882(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i23.i, -4
  %2 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i26.i = add i32 %tmp0_v.i23.i, -8
  %3 = inttoptr i32 %tmp2_v4.i26.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i28.i = add i32 %tmp0_v.i23.i, -12
  %4 = inttoptr i32 %tmp2_v5.i28.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i30.i = add i32 %tmp0_v.i23.i, -16
  %5 = inttoptr i32 %tmp2_v6.i30.i to i32*
  store i32 %tmp2_v.i22.i, i32* %5, align 16
  %tmp2_v8.i31.i = add i32 %tmp0_v.i23.i, -68
  %6 = inttoptr i32 %tmp2_v8.i31.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i23.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i23.i, -51
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1702043713, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i23.i, -47
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1852142702, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i23.i, -43
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1998611811, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i23.i, -39
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 543716457, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i23.i, -35
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1702258035, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i23.i, -31
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 543973746, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i23.i, -27
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1685221239, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i23.i, -23
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 11891, i16* %17, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i23.i, -21
  %18 = inttoptr i32 %tmp2_v11.i.i to i8*
  store i8 0, i8* %18, align 1
  %tmp2_v14.i.i = add i32 %tmp0_v.i23.i, -80
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i23.i, -84
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517449, i32* %20, align 4
  %tmp2_v.i158.i.i = add i32 %tmp0_v.i23.i, -88
  %21 = inttoptr i32 %tmp2_v.i158.i.i to i32*
  store i32 %tmp2_v4.i26.i, i32* %21, align 8
  %tmp2_v1.i160.i.i = add i32 %tmp0_v.i23.i, -92
  %22 = inttoptr i32 %tmp2_v1.i160.i.i to i32*
  store i32 134529024, i32* %22, align 4
  %tmp2_v2.i163.i.i = add i32 %tmp0_v.i23.i, -660
  %23 = inttoptr i32 %tmp2_v2.i163.i.i to i32*
  store i32 134517534, i32* %23, align 4
  %24 = load i32, i32* %19, align 16
  %tmp2_v2.i101.i.i = add i32 %tmp0_v.i23.i, -644
  %25 = inttoptr i32 %tmp2_v2.i101.i.i to i32*
  store i32 %24, i32* %25, align 4
  %tmp4_v.i102.i.b.i = load i1, i1* @segs.0, align 1
  %26 = inttoptr i32 %arg_esp to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v5.i105.i.i = add i32 %tmp0_v.i23.i, -100
  %28 = inttoptr i32 %tmp2_v5.i105.i.i to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %25, align 4
  %tmp2_v9.i110.i.i = add i32 %tmp0_v.i23.i, -672
  %30 = inttoptr i32 %tmp2_v9.i110.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v10.i111.i.i = add i32 %tmp0_v.i23.i, -676
  %31 = inttoptr i32 %tmp2_v10.i111.i.i to i32*
  store i32 134517574, i32* %31, align 4
  %arg.i.i.i = load i32, i32* %30, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i38.i.i = add i32 %tmp0_v.i23.i, -628
  %33 = inttoptr i32 %tmp2_v.i38.i.i to i32*
  store i32 %32, i32* %33, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i23.i, -640
  %34 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 0, i32* %34, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i23.i, -636
  %35 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 -1, i32* %35, align 4
  %tmp2_v2.i3.i.i = add i32 %tmp0_v.i23.i, -619
  %36 = inttoptr i32 %tmp2_v2.i3.i.i to i32*
  store i32 992751136, i32* %36, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i23.i, -615
  %37 = inttoptr i32 %tmp2_v3.i.i.i to i16*
  store i16 2314, i16* %37, align 2
  %tmp2_v4.i4.i.i = add i32 %tmp0_v.i23.i, -613
  %38 = inttoptr i32 %tmp2_v4.i4.i.i to i8*
  store i8 0, i8* %38, align 1
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i23.i, -632
  %39 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %33, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_8049405.i.preheader.lr.ph.i, label %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i

Func_8049346.exit.i.BB_80494B9.i_crit_edge.i:     ; preds = %.exit
  %.pre79.i = add i32 %tmp0_v.i23.i, -356
  %.pre80.i = add i32 %tmp0_v.i23.i, -668
  %.pre81.i = inttoptr i32 %.pre80.i to i32*
  br label %Func_smallest_word.exit

BB_8049405.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i95.i.i = add i32 %tmp0_v.i23.i, -668
  %42 = inttoptr i32 %tmp2_v7.i95.i.i to i32*
  %tmp2_v5.i73.i.i = add i32 %tmp0_v.i23.i, -612
  %tmp2_v5.i60.i.i = add i32 %tmp0_v.i23.i, -356
  br label %BB_8049405.i.preheader.i

BB_8049492.i.i:                                   ; preds = %BB_8049465.i.i
  %tmp0_v1.i8.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i8.i.i, i32* %39, align 8
  %43 = load i32, i32* %33, align 4
  %44 = icmp slt i32 %tmp0_v1.i8.i.i, %43
  br i1 %44, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

BB_804943E.i.i:                                   ; preds = %BB_8049415.i.i
  %45 = load i32, i32* %34, align 16
  store i32 %45, i32* %35, align 4
  store i32 %tmp2_v5.i73.i.i, i32* %42, align 4
  store i32 %tmp2_v5.i60.i.i, i32* %30, align 16
  store i32 134517856, i32* %31, align 4
  %arg.i.i55.i = load i32, i32* %30, align 16
  %arg2.i.i56.i = load i32, i32* %42, align 4
  %46 = tail call i32 @strcpy(i32 %arg.i.i55.i, i32 %arg2.i.i56.i)
  br label %BB_8049499.i.preheader.i

BB_80493D6.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %47 = load i32, i32* %39, align 8
  %48 = load i32, i32* %25, align 4
  %tmp0_v3.i72.i.i = add i32 %48, %47
  %49 = inttoptr i32 %tmp0_v3.i72.i.i to i8*
  %50 = load i8, i8* %49, align 1
  %51 = load i32, i32* %34, align 16
  %tmp0_v8.i.i.i = add i32 %51, %tmp2_v5.i73.i.i
  %52 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %39, align 8
  %tmp0_v11.i.i.i = add i32 %53, 1
  store i32 %tmp0_v11.i.i.i, i32* %39, align 8
  %54 = load i32, i32* %34, align 16
  %tmp0_v14.i.i.i = add i32 %54, 1
  store i32 %tmp0_v14.i.i.i, i32* %34, align 16
  %55 = load i32, i32* %39, align 8
  %56 = load i32, i32* %25, align 4
  %tmp0_v3.i91.i.i = add i32 %56, %55
  %57 = inttoptr i32 %tmp0_v3.i91.i.i to i8*
  %58 = load i8, i8* %57, align 1
  %tmp0_v5.i93.i.i = sext i8 %58 to i32
  store i32 %tmp0_v5.i93.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i52.i = load i32, i32* %30, align 16
  %arg2.i.i.i = load i32, i32* %42, align 4
  %59 = tail call i32 @strchr(i32 %arg.i.i52.i, i32 %arg2.i.i.i)
  %.not.i31.i.i = icmp eq i32 %59, 0
  br i1 %.not.i31.i.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049465.i.i:                                   ; preds = %BB_8049499.i.preheader.i, %BB_8049492.i.i
  %60 = phi i32 [ %tmp0_v1.i8.i.i, %BB_8049492.i.i ], [ %76, %BB_8049499.i.preheader.i ]
  %61 = load i32, i32* %25, align 4
  %tmp0_v3.i117.i.i = add i32 %61, %60
  %62 = inttoptr i32 %tmp0_v3.i117.i.i to i8*
  %63 = load i8, i8* %62, align 1
  %tmp0_v5.i119.i.i = sext i8 %63 to i32
  store i32 %tmp0_v5.i119.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517897, i32* %31, align 4
  %arg.i.i62.i = load i32, i32* %30, align 16
  %arg2.i.i63.i = load i32, i32* %42, align 4
  %64 = tail call i32 @strchr(i32 %arg.i.i62.i, i32 %arg2.i.i63.i)
  %.not.i65.i.i = icmp eq i32 %64, 0
  %.pre.pre.i = load i32, i32* %39, align 8
  br i1 %.not.i65.i.i, label %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, label %BB_8049492.i.i

BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_8049465.i.i
  %.pre76.pre.i = load i32, i32* %33, align 4
  br label %BB_80494A7.i.loopexit.i

BB_80494A7.i.loopexit.i:                          ; preds = %BB_8049499.i.preheader.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, %BB_8049492.i.i
  %65 = phi i32 [ %77, %BB_8049499.i.preheader.i ], [ %.pre76.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %43, %BB_8049492.i.i ]
  %66 = phi i32 [ %76, %BB_8049499.i.preheader.i ], [ %.pre.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i8.i.i, %BB_8049492.i.i ]
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %BB_8049405.i.preheader.i, label %Func_smallest_word.exit

BB_8049405.i.preheader.i:                         ; preds = %BB_80494A7.i.loopexit.i, %BB_8049405.i.preheader.lr.ph.i
  store i32 0, i32* %34, align 16
  %68 = load i32, i32* %39, align 8
  %69 = load i32, i32* %25, align 4
  %tmp0_v3.i91.i69.i = add i32 %69, %68
  %70 = inttoptr i32 %tmp0_v3.i91.i69.i to i8*
  %71 = load i8, i8* %70, align 1
  %tmp0_v5.i93.i70.i = sext i8 %71 to i32
  store i32 %tmp0_v5.i93.i70.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i5271.i = load i32, i32* %30, align 16
  %arg2.i.i72.i = load i32, i32* %42, align 4
  %72 = tail call i32 @strchr(i32 %arg.i.i5271.i, i32 %arg2.i.i72.i)
  %.not.i31.i73.i = icmp eq i32 %72, 0
  br i1 %.not.i31.i73.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049415.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %73 = load i32, i32* %34, align 16
  %tmp0_v2.i137.i.i = add i32 %73, %tmp2_v5.i73.i.i
  %74 = inttoptr i32 %tmp0_v2.i137.i.i to i8*
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %35, align 4
  %.not.i.i.i = icmp eq i32 %75, -1
  br i1 %.not.i.i.i, label %BB_804943E.i.i, label %BB_8049499.i.preheader.i

BB_8049499.i.preheader.i:                         ; preds = %BB_8049415.i.i, %BB_804943E.i.i
  %76 = load i32, i32* %39, align 8
  %77 = load i32, i32* %33, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

Func_smallest_word.exit:                          ; preds = %BB_80494A7.i.loopexit.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i
  %.pre-phi.i = phi i32* [ %.pre81.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %42, %BB_80494A7.i.loopexit.i ]
  %tmp2_v2.i19.i.pre-phi.i = phi i32 [ %.pre79.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %tmp2_v5.i60.i.i, %BB_80494A7.i.loopexit.i ]
  %79 = load i32, i32* %35, align 4
  %tmp0_v1.i81.i.i = add i32 %79, 1
  store i32 %tmp0_v1.i81.i.i, i32* %30, align 16
  store i32 134517963, i32* %31, align 4
  %arg.i.i57.i = load i32, i32* %30, align 16
  %80 = tail call i32 @malloc(i32 %arg.i.i57.i)
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i23.i, -624
  %81 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 %80, i32* %81, align 16
  store i32 %tmp2_v2.i19.i.pre-phi.i, i32* %.pre-phi.i, align 4
  %82 = load i32, i32* %81, align 16
  store i32 %82, i32* %30, align 16
  store i32 134517993, i32* %31, align 4
  %arg.i.i60.i = load i32, i32* %30, align 16
  %arg2.i.i61.i = load i32, i32* %.pre-phi.i, align 4
  %83 = tail call i32 @strcpy(i32 %arg.i.i60.i, i32 %arg2.i.i61.i)
  %84 = load i32, i32* %81, align 16
  %85 = load i32, i32* %21, align 8
  %tmp2_v.i35.i = add i32 %85, -48
  %86 = inttoptr i32 %tmp2_v.i35.i to i32*
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
