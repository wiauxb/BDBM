; Mutation 706
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
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @smallest_word_print706(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i16.i, -4
  %2 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i16.i, -8
  %3 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i21.i = add i32 %tmp0_v.i16.i, -12
  %4 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i23.i = add i32 %tmp0_v.i16.i, -16
  %5 = inttoptr i32 %tmp2_v6.i23.i to i32*
  store i32 %tmp2_v.i15.i, i32* %5, align 16
  %tmp2_v8.i24.i = add i32 %tmp0_v.i16.i, -68
  %6 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i16.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i16.i, -51
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1702043713, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i16.i, -47
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1852142702, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i16.i, -43
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1998611811, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i16.i, -39
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 543716457, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i16.i, -35
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1702258035, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i16.i, -31
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 543973746, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i16.i, -27
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1685221239, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i16.i, -23
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 11891, i16* %17, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i16.i, -21
  %18 = inttoptr i32 %tmp2_v11.i.i to i8*
  store i8 0, i8* %18, align 1
  %tmp2_v14.i.i = add i32 %tmp0_v.i16.i, -80
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i16.i, -84
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517449, i32* %20, align 4
  %tmp2_v.i74.i.i = add i32 %tmp0_v.i16.i, -88
  %21 = inttoptr i32 %tmp2_v.i74.i.i to i32*
  store i32 %tmp2_v4.i19.i, i32* %21, align 8
  %tmp2_v1.i76.i.i = add i32 %tmp0_v.i16.i, -92
  %22 = inttoptr i32 %tmp2_v1.i76.i.i to i32*
  store i32 134529024, i32* %22, align 4
  %tmp2_v2.i79.i.i = add i32 %tmp0_v.i16.i, -660
  %23 = inttoptr i32 %tmp2_v2.i79.i.i to i32*
  store i32 134517534, i32* %23, align 4
  %24 = load i32, i32* %19, align 16
  %tmp2_v2.i48.i.i = add i32 %tmp0_v.i16.i, -644
  %25 = inttoptr i32 %tmp2_v2.i48.i.i to i32*
  store i32 %24, i32* %25, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %26 = inttoptr i32 %arg_esp to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v5.i51.i.i = add i32 %tmp0_v.i16.i, -100
  %28 = inttoptr i32 %tmp2_v5.i51.i.i to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %25, align 4
  %tmp2_v9.i55.i.i = add i32 %tmp0_v.i16.i, -672
  %30 = inttoptr i32 %tmp2_v9.i55.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v10.i56.i.i = add i32 %tmp0_v.i16.i, -676
  %31 = inttoptr i32 %tmp2_v10.i56.i.i to i32*
  store i32 134517574, i32* %31, align 4
  %arg.i.i.i = load i32, i32* %30, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i16.i, -628
  %33 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %32, i32* %33, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i16.i, -640
  %34 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %34, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i16.i, -636
  %35 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 -1, i32* %35, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i16.i, -619
  %36 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 992751136, i32* %36, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i16.i, -615
  %37 = inttoptr i32 %tmp2_v3.i.i.i to i16*
  store i16 2314, i16* %37, align 2
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i16.i, -613
  %38 = inttoptr i32 %tmp2_v4.i.i.i to i8*
  store i8 0, i8* %38, align 1
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i16.i, -632
  %39 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %33, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_8049405.i.preheader.lr.ph.i, label %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i

Func_8049346.exit.i.BB_80494B9.i_crit_edge.i:     ; preds = %.exit
  %.pre79.i = add i32 %tmp0_v.i16.i, -356
  %.pre80.i = add i32 %tmp0_v.i16.i, -668
  %.pre81.i = inttoptr i32 %.pre80.i to i32*
  br label %Func_smallest_word.exit

BB_8049405.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i31.i.i = add i32 %tmp0_v.i16.i, -668
  %42 = inttoptr i32 %tmp2_v7.i31.i.i to i32*
  %tmp2_v5.i155.i.i = add i32 %tmp0_v.i16.i, -612
  %tmp2_v5.i126.i.i = add i32 %tmp0_v.i16.i, -356
  br label %BB_8049405.i.preheader.i

BB_80494A7.i.loopexit.i:                          ; preds = %BB_8049499.i.preheader.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, %BB_8049492.i.i
  %43 = phi i32 [ %62, %BB_8049499.i.preheader.i ], [ %.pre76.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %51, %BB_8049492.i.i ]
  %44 = phi i32 [ %61, %BB_8049499.i.preheader.i ], [ %.pre.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i60.i.i, %BB_8049492.i.i ]
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %BB_8049405.i.preheader.i, label %Func_smallest_word.exit

BB_8049405.i.preheader.i:                         ; preds = %BB_80494A7.i.loopexit.i, %BB_8049405.i.preheader.lr.ph.i
  store i32 0, i32* %34, align 16
  %46 = load i32, i32* %39, align 8
  %47 = load i32, i32* %25, align 4
  %tmp0_v3.i.i69.i = add i32 %47, %46
  %48 = inttoptr i32 %tmp0_v3.i.i69.i to i8*
  %49 = load i8, i8* %48, align 1
  %tmp0_v5.i29.i70.i = sext i8 %49 to i32
  store i32 %tmp0_v5.i29.i70.i, i32* %42, align 4
  store i32 %tmp2_v2.i.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i5571.i = load i32, i32* %30, align 16
  %arg2.i.i5672.i = load i32, i32* %42, align 4
  %50 = tail call i32 @strchr(i32 %arg.i.i5571.i, i32 %arg2.i.i5672.i)
  %.not.i35.i73.i = icmp eq i32 %50, 0
  br i1 %.not.i35.i73.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049492.i.i:                                   ; preds = %BB_8049465.i.i
  %tmp0_v1.i60.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i60.i.i, i32* %39, align 8
  %51 = load i32, i32* %33, align 4
  %52 = icmp slt i32 %tmp0_v1.i60.i.i, %51
  br i1 %52, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

BB_8049465.i.i:                                   ; preds = %BB_8049499.i.preheader.i, %BB_8049492.i.i
  %53 = phi i32 [ %tmp0_v1.i60.i.i, %BB_8049492.i.i ], [ %61, %BB_8049499.i.preheader.i ]
  %54 = load i32, i32* %25, align 4
  %tmp0_v3.i85.i.i = add i32 %54, %53
  %55 = inttoptr i32 %tmp0_v3.i85.i.i to i8*
  %56 = load i8, i8* %55, align 1
  %tmp0_v5.i87.i.i = sext i8 %56 to i32
  store i32 %tmp0_v5.i87.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i.i.i, i32* %30, align 16
  store i32 134517897, i32* %31, align 4
  %arg.i.i52.i = load i32, i32* %30, align 16
  %arg2.i.i.i = load i32, i32* %42, align 4
  %57 = tail call i32 @strchr(i32 %arg.i.i52.i, i32 %arg2.i.i.i)
  %.not.i42.i.i = icmp eq i32 %57, 0
  %.pre.pre.i = load i32, i32* %39, align 8
  br i1 %.not.i42.i.i, label %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, label %BB_8049492.i.i

BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_8049465.i.i
  %.pre76.pre.i = load i32, i32* %33, align 4
  br label %BB_80494A7.i.loopexit.i

BB_8049415.i.i:                                   ; preds = %BB_80493D6.i.i, %BB_8049405.i.preheader.i
  %58 = load i32, i32* %34, align 16
  %tmp0_v2.i111.i.i = add i32 %58, %tmp2_v5.i155.i.i
  %59 = inttoptr i32 %tmp0_v2.i111.i.i to i8*
  store i8 0, i8* %59, align 1
  %60 = load i32, i32* %35, align 4
  %.not.i71.i.i = icmp eq i32 %60, -1
  br i1 %.not.i71.i.i, label %BB_804943E.i.i, label %BB_8049499.i.preheader.i

BB_8049499.i.preheader.i:                         ; preds = %BB_804943E.i.i, %BB_8049415.i.i
  %61 = load i32, i32* %39, align 8
  %62 = load i32, i32* %33, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

BB_804943E.i.i:                                   ; preds = %BB_8049415.i.i
  %64 = load i32, i32* %34, align 16
  store i32 %64, i32* %35, align 4
  store i32 %tmp2_v5.i155.i.i, i32* %42, align 4
  store i32 %tmp2_v5.i126.i.i, i32* %30, align 16
  store i32 134517856, i32* %31, align 4
  %arg.i.i59.i = load i32, i32* %30, align 16
  %arg2.i.i60.i = load i32, i32* %42, align 4
  %65 = tail call i32 @strcpy(i32 %arg.i.i59.i, i32 %arg2.i.i60.i)
  br label %BB_8049499.i.preheader.i

BB_80493D6.i.i:                                   ; preds = %BB_80493D6.i.i, %BB_8049405.i.preheader.i
  %66 = load i32, i32* %39, align 8
  %67 = load i32, i32* %25, align 4
  %tmp0_v3.i153.i.i = add i32 %67, %66
  %68 = inttoptr i32 %tmp0_v3.i153.i.i to i8*
  %69 = load i8, i8* %68, align 1
  %70 = load i32, i32* %34, align 16
  %tmp0_v8.i157.i.i = add i32 %70, %tmp2_v5.i155.i.i
  %71 = inttoptr i32 %tmp0_v8.i157.i.i to i8*
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %39, align 8
  %tmp0_v11.i.i.i = add i32 %72, 1
  store i32 %tmp0_v11.i.i.i, i32* %39, align 8
  %73 = load i32, i32* %34, align 16
  %tmp0_v14.i.i.i = add i32 %73, 1
  store i32 %tmp0_v14.i.i.i, i32* %34, align 16
  %74 = load i32, i32* %39, align 8
  %75 = load i32, i32* %25, align 4
  %tmp0_v3.i.i.i = add i32 %75, %74
  %76 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %77 = load i8, i8* %76, align 1
  %tmp0_v5.i29.i.i = sext i8 %77 to i32
  store i32 %tmp0_v5.i29.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i55.i = load i32, i32* %30, align 16
  %arg2.i.i56.i = load i32, i32* %42, align 4
  %78 = tail call i32 @strchr(i32 %arg.i.i55.i, i32 %arg2.i.i56.i)
  %.not.i35.i.i = icmp eq i32 %78, 0
  br i1 %.not.i35.i.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

Func_smallest_word.exit:                          ; preds = %BB_80494A7.i.loopexit.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i
  %.pre-phi.i = phi i32* [ %.pre81.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %42, %BB_80494A7.i.loopexit.i ]
  %tmp2_v2.i21.i.pre-phi.i = phi i32 [ %.pre79.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %tmp2_v5.i126.i.i, %BB_80494A7.i.loopexit.i ]
  %79 = load i32, i32* %35, align 4
  %tmp0_v1.i131.i.i = add i32 %79, 1
  store i32 %tmp0_v1.i131.i.i, i32* %30, align 16
  store i32 134517963, i32* %31, align 4
  %arg.i.i61.i = load i32, i32* %30, align 16
  %80 = tail call i32 @malloc(i32 %arg.i.i61.i)
  %tmp2_v.i19.i.i = add i32 %tmp0_v.i16.i, -624
  %81 = inttoptr i32 %tmp2_v.i19.i.i to i32*
  store i32 %80, i32* %81, align 16
  store i32 %tmp2_v2.i21.i.pre-phi.i, i32* %.pre-phi.i, align 4
  %82 = load i32, i32* %81, align 16
  store i32 %82, i32* %30, align 16
  store i32 134517993, i32* %31, align 4
  %arg.i.i64.i = load i32, i32* %30, align 16
  %arg2.i.i65.i = load i32, i32* %.pre-phi.i, align 4
  %83 = tail call i32 @strcpy(i32 %arg.i.i64.i, i32 %arg2.i.i65.i)
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

  tail call fastcc void @smallest_word_print706(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
