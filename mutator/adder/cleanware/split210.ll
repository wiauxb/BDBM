; Mutation 210
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack209 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.208 = constant [4 x i8] c"\20\2c\2e\00"

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
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split210(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i19.i = add i32 %tmp0_v.i17.i, -4
  %3 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i17.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i17.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i21.i = add i32 %tmp0_v.i17.i, -16
  %6 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 %tmp2_v.i16.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i17.i, -84
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517361, i32* %7, align 4
  %tmp4_v.i46.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i50.i = add i32 %tmp0_v.i17.i, -20
  %10 = inttoptr i32 %tmp2_v2.i50.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i51.i = add i32 %tmp0_v.i17.i, -63
  %11 = inttoptr i32 %tmp2_v3.i51.i to i32*
  store i32 1646292820, i32* %11, align 4
  %tmp2_v4.i52.i = add i32 %tmp0_v.i17.i, -59
  %12 = inttoptr i32 %tmp2_v4.i52.i to i32*
  store i32 1864379493, i32* %12, align 4
  %tmp2_v5.i53.i = add i32 %tmp0_v.i17.i, -55
  %13 = inttoptr i32 %tmp2_v5.i53.i to i32*
  store i32 1869488242, i32* %13, align 4
  %tmp2_v6.i54.i = add i32 %tmp0_v.i17.i, -51
  %14 = inttoptr i32 %tmp2_v6.i54.i to i32*
  store i32 1869881460, i32* %14, align 4
  %tmp2_v7.i55.i = add i32 %tmp0_v.i17.i, -47
  %15 = inttoptr i32 %tmp2_v7.i55.i to i32*
  store i32 744841760, i32* %15, align 4
  %tmp2_v8.i56.i = add i32 %tmp0_v.i17.i, -43
  %16 = inttoptr i32 %tmp2_v8.i56.i to i32*
  store i32 1634235424, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i17.i, -39
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936269428, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i17.i, -35
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701344288, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i17.i, -31
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1702195488, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i17.i, -27
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1869182067, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i17.i, -23
  %21 = inttoptr i32 %tmp2_v13.i.i to i16*
  store i16 11886, i16* %21, align 2
  %tmp2_v14.i.i = add i32 %tmp0_v.i17.i, -21
  %22 = inttoptr i32 %tmp2_v14.i.i to i8*
  store i8 0, i8* %22, align 1
  %tmp2_v15.i.i = add i32 %tmp0_v.i17.i, -80
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 0, i32* %23, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i17.i, -88
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %24, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i17.i, -92
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  %spi.bis.208 = ptrtoint[4 x i8]* @str.bis.208 to i32
  store i32 %spi.bis.208, i32* %25, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i17.i, -96
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i51.i, i32* %26, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i17.i, -100
  %27 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517488, i32* %27, align 4
  %tmp2_v.i75.i.i = add i32 %tmp0_v.i17.i, -104
  %28 = inttoptr i32 %tmp2_v.i75.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %28, align 8
  %tmp2_v1.i77.i.i = add i32 %tmp0_v.i17.i, -108
  %29 = inttoptr i32 %tmp2_v1.i77.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v2.i78.i.i = add i32 %tmp0_v.i17.i, -112
  %30 = inttoptr i32 %tmp2_v2.i78.i.i to i32*
  store i32 134529024, i32* %30, align 16
  %tmp2_v.i122.i.i = add i32 %tmp0_v.i17.i, -16548
  %31 = inttoptr i32 %tmp2_v.i122.i.i to i32*
  store i32 134517678, i32* %31, align 4
  %32 = load i32, i32* %26, align 16
  %tmp2_v2.i185.i.i = add i32 %tmp0_v.i17.i, -16532
  %33 = inttoptr i32 %tmp2_v2.i185.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 4
  %tmp2_v5.i188.i.i = add i32 %tmp0_v.i17.i, -16536
  %35 = inttoptr i32 %tmp2_v5.i188.i.i to i32*
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %24, align 8
  %tmp2_v8.i191.i.i = add i32 %tmp0_v.i17.i, -16540
  %37 = inttoptr i32 %tmp2_v8.i191.i.i to i32*
  store i32 %36, i32* %37, align 4
  %tmp4_v.i192.i.b.i = load i1, i1* @segs.0, align 1
  %38 = inttoptr i32 %arg_esp to i32*
  %39 = load i32, i32* %38, align 4
  %tmp2_v11.i193.i.i = add i32 %tmp0_v.i17.i, -116
  %40 = inttoptr i32 %tmp2_v11.i193.i.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %33, align 4
  %tmp2_v15.i.i.i = add i32 %tmp0_v.i17.i, -16560
  %42 = inttoptr i32 %tmp2_v15.i.i.i to i32*
  store i32 %41, i32* %42, align 16
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i17.i, -16564
  %43 = inttoptr i32 %tmp2_v16.i.i.i to i32*
  store i32 134517736, i32* %43, align 4
  %arg.i.i30.i = load i32, i32* %42, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i30.i)
  %tmp2_v.i236.i.i = add i32 %tmp0_v.i17.i, -16516
  %45 = inttoptr i32 %tmp2_v.i236.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %37, align 4
  %47 = inttoptr i32 %46 to i32*
  store i32 0, i32* %47, align 4
  %tmp2_v3.i240.i.i = add i32 %tmp0_v.i17.i, -16528
  %48 = inttoptr i32 %tmp2_v3.i240.i.i to i32*
  store i32 0, i32* %48, align 16
  %49 = load i32, i32* %45, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_804943D.i.preheader.lr.ph.i, label %BB_80494D1.i.i

BB_8049555.i.i:                                   ; preds = %BB_804957F.i.i, %BB_8049549.i.i
  %51 = phi i32 [ %115, %BB_804957F.i.i ], [ %104, %BB_8049549.i.i ]
  %52 = load i32, i32* %33, align 4
  %tmp0_v3.i.i.i = add i32 %52, %51
  %53 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %54 = load i8, i8* %53, align 1
  %tmp0_v5.i.i.i = sext i8 %54 to i32
  store i32 %tmp0_v5.i.i.i, i32* %66, align 4
  %55 = load i32, i32* %35, align 8
  store i32 %55, i32* %42, align 16
  store i32 134518136, i32* %43, align 4
  %arg.i.i.i = load i32, i32* %42, align 16
  %arg2.i.i.i = load i32, i32* %66, align 4
  %56 = tail call i32 @strchr(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %.not.i95.i.i = icmp eq i32 %56, 0
  br i1 %.not.i95.i.i, label %BB_804957F.i.i, label %BB_80495BF.ithread-pre-split.i

BB_80494D1.i.i:                                   ; preds = %BB_80494BF.i.backedge.i, %0
  %57 = load i32, i32* %37, align 4
  %58 = inttoptr i32 %57 to i32*
  %59 = load i32, i32* %58, align 4
  %tmp0_v2.i4.i.i = shl i32 %59, 2
  store i32 %tmp0_v2.i4.i.i, i32* %42, align 16
  store i32 134517989, i32* %43, align 4
  %arg.i.i13.i = load i32, i32* %42, align 16
  %60 = tail call i32 @malloc(i32 %arg.i.i13.i)
  %tmp2_v.i258.i.i = add i32 %tmp0_v.i17.i, -16512
  %61 = inttoptr i32 %tmp2_v.i258.i.i to i32*
  store i32 %60, i32* %61, align 16
  store i32 0, i32* %48, align 16
  %tmp2_v2.i261.i.i = add i32 %tmp0_v.i17.i, -16524
  %62 = inttoptr i32 %tmp2_v2.i261.i.i to i32*
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %48, align 16
  %64 = load i32, i32* %45, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %BB_8049538.i.preheader.lr.ph.i, label %Func_split.exit

BB_8049538.i.preheader.lr.ph.i:                   ; preds = %BB_80494D1.i.i
  %tmp2_v7.i31.i.i = add i32 %tmp0_v.i17.i, -16556
  %66 = inttoptr i32 %tmp2_v7.i31.i.i to i32*
  %tmp2_v.i196.i.i = add i32 %tmp0_v.i17.i, -16520
  %67 = inttoptr i32 %tmp2_v.i196.i.i to i32*
  %tmp2_v5.i204.i.i = add i32 %tmp0_v.i17.i, -16500
  %tmp2_v.i14.i.i = add i32 %tmp0_v.i17.i, -16508
  %68 = inttoptr i32 %tmp2_v.i14.i.i to i32*
  br label %BB_8049538.i.preheader.i

BB_8049507.i.i:                                   ; preds = %BB_8049538.i.preheader.i, %BB_8049531.i.i
  %69 = phi i32 [ %tmp0_v1.i60.i.i, %BB_8049531.i.i ], [ %100, %BB_8049538.i.preheader.i ]
  %70 = load i32, i32* %33, align 4
  %tmp0_v3.i26.i.i = add i32 %70, %69
  %71 = inttoptr i32 %tmp0_v3.i26.i.i to i8*
  %72 = load i8, i8* %71, align 1
  %tmp0_v5.i28.i.i = sext i8 %72 to i32
  store i32 %tmp0_v5.i28.i.i, i32* %66, align 4
  %73 = load i32, i32* %35, align 8
  store i32 %73, i32* %42, align 16
  store i32 134518058, i32* %43, align 4
  %arg.i.i16.i = load i32, i32* %42, align 16
  %arg2.i.i17.i = load i32, i32* %66, align 4
  %74 = tail call i32 @strchr(i32 %arg.i.i16.i, i32 %arg2.i.i17.i)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %BB_8049549.i.i, label %BB_8049531.i.i

BB_804945C.i.i:                                   ; preds = %BB_804944E.i.i, %BB_8049486.i.i
  %76 = phi i32 [ %tmp0_v1.i248.i.i, %BB_8049486.i.i ], [ %142, %BB_804944E.i.i ]
  %77 = load i32, i32* %33, align 4
  %tmp0_v3.i47.i.i = add i32 %77, %76
  %78 = inttoptr i32 %tmp0_v3.i47.i.i to i8*
  %79 = load i8, i8* %78, align 1
  %tmp0_v5.i49.i.i = sext i8 %79 to i32
  store i32 %tmp0_v5.i49.i.i, i32* %95, align 4
  %80 = load i32, i32* %35, align 8
  store i32 %80, i32* %42, align 16
  store i32 134517887, i32* %43, align 4
  %arg.i.i20.i = load i32, i32* %42, align 16
  %arg2.i.i21.i = load i32, i32* %95, align 4
  %81 = tail call i32 @strchr(i32 %arg.i.i20.i, i32 %arg2.i.i21.i)
  %.not.i171.i.i = icmp eq i32 %81, 0
  %82 = load i32, i32* %48, align 16
  br i1 %.not.i171.i.i, label %BB_8049486.i.i, label %BB_804949E.i.loopexit.i

BB_8049531.i.i:                                   ; preds = %BB_8049507.i.i
  %83 = load i32, i32* %48, align 16
  %tmp0_v1.i60.i.i = add i32 %83, 1
  store i32 %tmp0_v1.i60.i.i, i32* %48, align 16
  %84 = load i32, i32* %45, align 4
  %85 = icmp slt i32 %tmp0_v1.i60.i.i, %84
  br i1 %85, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_804940C.i.i:                                   ; preds = %BB_804943D.i.preheader.i, %BB_8049436.i.i
  %86 = phi i32 [ %tmp0_v1.i145.i.i, %BB_8049436.i.i ], [ %146, %BB_804943D.i.preheader.i ]
  %87 = load i32, i32* %33, align 4
  %tmp0_v3.i102.i.i = add i32 %87, %86
  %88 = inttoptr i32 %tmp0_v3.i102.i.i to i8*
  %89 = load i8, i8* %88, align 1
  %tmp0_v5.i104.i.i = sext i8 %89 to i32
  store i32 %tmp0_v5.i104.i.i, i32* %95, align 4
  %90 = load i32, i32* %35, align 8
  store i32 %90, i32* %42, align 16
  store i32 134517807, i32* %43, align 4
  %arg.i.i24.i = load i32, i32* %42, align 16
  %arg2.i.i25.i = load i32, i32* %95, align 4
  %91 = tail call i32 @strchr(i32 %arg.i.i24.i, i32 %arg2.i.i25.i)
  %92 = icmp eq i32 %91, 0
  %.pre.pre.i = load i32, i32* %48, align 16
  br i1 %92, label %BB_804944E.i.i, label %BB_8049436.i.i

BB_804949E.i.loopexit.i:                          ; preds = %BB_8049486.i.i, %BB_804945C.i.i
  %.pre41.i = phi i32 [ %82, %BB_804945C.i.i ], [ %tmp0_v1.i248.i.i, %BB_8049486.i.i ]
  %.pre42.i = load i32, i32* %96, align 8
  br label %BB_804949E.i.i

BB_804949E.i.i:                                   ; preds = %BB_804944E.i.i, %BB_804949E.i.loopexit.i
  %93 = phi i32 [ %.pre42.i, %BB_804949E.i.loopexit.i ], [ %141, %BB_804944E.i.i ]
  %94 = phi i32 [ %.pre41.i, %BB_804949E.i.loopexit.i ], [ %142, %BB_804944E.i.i ]
  %.not.i118.i.i = icmp sgt i32 %94, %93
  br i1 %.not.i118.i.i, label %BB_80494AC.i.i, label %BB_80494BF.i.backedge.i

BB_804943D.i.preheader.lr.ph.i:                   ; preds = %0
  %tmp2_v7.i107.i.i = add i32 %tmp0_v.i17.i, -16556
  %95 = inttoptr i32 %tmp2_v7.i107.i.i to i32*
  %tmp2_v1.i297.i.i = add i32 %tmp0_v.i17.i, -16504
  %96 = inttoptr i32 %tmp2_v1.i297.i.i to i32*
  br label %BB_804943D.i.preheader.i

BB_80495BF.ithread-pre-split.i:                   ; preds = %BB_8049555.i.i
  %.pr.i = load i32, i32* %67, align 8
  br label %BB_80495BF.i.i

BB_80495BF.i.i:                                   ; preds = %BB_804957F.i.i, %BB_80495BF.ithread-pre-split.i
  %97 = phi i32 [ %.pr.i, %BB_80495BF.ithread-pre-split.i ], [ %tmp0_v14.i209.i.i, %BB_804957F.i.i ]
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %BB_8049653.i.backedge.i, label %BB_80495CC.i.i

BB_8049538.i.preheader.i:                         ; preds = %BB_8049653.i.backedge.i, %BB_8049538.i.preheader.lr.ph.i
  %99 = phi i32 [ %64, %BB_8049538.i.preheader.lr.ph.i ], [ %139, %BB_8049653.i.backedge.i ]
  %100 = phi i32 [ %63, %BB_8049538.i.preheader.lr.ph.i ], [ %138, %BB_8049653.i.backedge.i ]
  %101 = icmp slt i32 %100, %99
  br i1 %101, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_8049436.i.i:                                   ; preds = %BB_804940C.i.i
  %tmp0_v1.i145.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i145.i.i, i32* %48, align 16
  %102 = load i32, i32* %45, align 4
  %103 = icmp slt i32 %tmp0_v1.i145.i.i, %102
  br i1 %103, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_8049549.i.i:                                   ; preds = %BB_8049538.i.preheader.i, %BB_8049531.i.i, %BB_8049507.i.i
  store i32 0, i32* %67, align 8
  %104 = load i32, i32* %48, align 16
  %105 = load i32, i32* %45, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %BB_8049555.i.i, label %BB_8049653.i.backedge.i

BB_804957F.i.i:                                   ; preds = %BB_8049555.i.i
  %107 = load i32, i32* %48, align 16
  %108 = load i32, i32* %33, align 4
  %tmp0_v3.i202.i.i = add i32 %108, %107
  %109 = inttoptr i32 %tmp0_v3.i202.i.i to i8*
  %110 = load i8, i8* %109, align 1
  %111 = load i32, i32* %67, align 8
  %tmp0_v8.i.i.i = add i32 %111, %tmp2_v5.i204.i.i
  %112 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %110, i8* %112, align 1
  %113 = load i32, i32* %48, align 16
  %tmp0_v11.i.i.i = add i32 %113, 1
  store i32 %tmp0_v11.i.i.i, i32* %48, align 16
  %114 = load i32, i32* %67, align 8
  %tmp0_v14.i209.i.i = add i32 %114, 1
  store i32 %tmp0_v14.i209.i.i, i32* %67, align 8
  %115 = load i32, i32* %48, align 16
  %116 = load i32, i32* %45, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %BB_8049555.i.i, label %BB_80495BF.i.i

BB_80494AC.i.i:                                   ; preds = %BB_804949E.i.i
  %118 = load i32, i32* %37, align 4
  %119 = inttoptr i32 %118 to i32*
  %120 = load i32, i32* %119, align 4
  %tmp2_v2.i218.i.i = add i32 %120, 1
  store i32 %tmp2_v2.i218.i.i, i32* %119, align 4
  %.pre43.i = load i32, i32* %48, align 16
  br label %BB_80494BF.i.backedge.i

BB_80494BF.i.backedge.i:                          ; preds = %BB_80494AC.i.i, %BB_804949E.i.i
  %121 = phi i32 [ %.pre43.i, %BB_80494AC.i.i ], [ %94, %BB_804949E.i.i ]
  %122 = load i32, i32* %45, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %BB_804943D.i.preheader.i, label %BB_80494D1.i.i

BB_8049486.i.i:                                   ; preds = %BB_804945C.i.i
  %tmp0_v1.i248.i.i = add i32 %82, 1
  store i32 %tmp0_v1.i248.i.i, i32* %48, align 16
  %124 = load i32, i32* %45, align 4
  %125 = icmp slt i32 %tmp0_v1.i248.i.i, %124
  br i1 %125, label %BB_804945C.i.i, label %BB_804949E.i.loopexit.i

BB_80495CC.i.i:                                   ; preds = %BB_80495BF.i.i
  %tmp0_v2.i281.i.i = add i32 %97, %tmp2_v5.i204.i.i
  %126 = inttoptr i32 %tmp0_v2.i281.i.i to i8*
  store i8 0, i8* %126, align 1
  store i32 %tmp2_v5.i204.i.i, i32* %42, align 16
  store i32 134518252, i32* %43, align 4
  %arg.i.i33.i = load i32, i32* %42, align 16
  %127 = tail call i32 @strlen(i32 %arg.i.i33.i)
  %tmp0_v1.i12.i.i = add i32 %127, 1
  store i32 %tmp0_v1.i12.i.i, i32* %68, align 4
  %128 = load i32, i32* %62, align 4
  %tmp4_v.i.i.i7 = shl i32 %128, 2
  %129 = load i32, i32* %61, align 16
  %tmp2_v8.i18.i.i = add i32 %tmp4_v.i.i.i7, %129
  store i32 %tmp0_v1.i12.i.i, i32* %42, align 16
  store i32 134518301, i32* %43, align 4
  %arg.i.i36.i = load i32, i32* %42, align 16
  %130 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %131 = inttoptr i32 %tmp2_v8.i18.i.i to i32*
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %62, align 4
  %tmp4_v.i159.i.i = shl i32 %132, 2
  %133 = load i32, i32* %61, align 16
  %tmp0_v4.i162.i.i = add i32 %133, %tmp4_v.i159.i.i
  %134 = inttoptr i32 %tmp0_v4.i162.i.i to i32*
  %135 = load i32, i32* %134, align 4
  store i32 %tmp2_v5.i204.i.i, i32* %66, align 4
  store i32 %135, i32* %42, align 16
  store i32 134518345, i32* %43, align 4
  %arg.i.i38.i = load i32, i32* %42, align 16
  %arg2.i.i39.i = load i32, i32* %66, align 4
  %136 = tail call i32 @strcpy(i32 %arg.i.i38.i, i32 %arg2.i.i39.i)
  %137 = load i32, i32* %62, align 4
  %tmp0_v2.i310.i.i = add i32 %137, 1
  store i32 %tmp0_v2.i310.i.i, i32* %62, align 4
  br label %BB_8049653.i.backedge.i

BB_8049653.i.backedge.i:                          ; preds = %BB_80495CC.i.i, %BB_8049549.i.i, %BB_80495BF.i.i
  %138 = load i32, i32* %48, align 16
  %139 = load i32, i32* %45, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %BB_8049538.i.preheader.i, label %Func_split.exit

BB_804944E.i.i:                                   ; preds = %BB_804943D.i.preheader.i, %BB_8049436.i.i, %BB_804940C.i.i
  %141 = phi i32 [ %146, %BB_804943D.i.preheader.i ], [ %tmp0_v1.i145.i.i, %BB_8049436.i.i ], [ %.pre.pre.i, %BB_804940C.i.i ]
  store i32 %141, i32* %96, align 8
  %142 = load i32, i32* %48, align 16
  %143 = load i32, i32* %45, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %BB_804945C.i.i, label %BB_804949E.i.i

BB_804943D.i.preheader.i:                         ; preds = %BB_80494BF.i.backedge.i, %BB_804943D.i.preheader.lr.ph.i
  %145 = phi i32 [ %49, %BB_804943D.i.preheader.lr.ph.i ], [ %122, %BB_80494BF.i.backedge.i ]
  %146 = phi i32 [ 0, %BB_804943D.i.preheader.lr.ph.i ], [ %121, %BB_80494BF.i.backedge.i ]
  %147 = icmp slt i32 %146, %145
  br i1 %147, label %BB_804940C.i.i, label %BB_804944E.i.i

Func_split.exit:                                  ; preds = %BB_8049653.i.backedge.i, %BB_80494D1.i.i
  %148 = load i32, i32* %61, align 16
  %149 = load i32, i32* %28, align 8
  %tmp2_v.i88.i = add i32 %149, -60
  %150 = inttoptr i32 %tmp2_v.i88.i to i32*
  store i32 %148, i32* %150, align 4
  %tmp2_v1.i89.i = add i32 %149, -68
  %151 = inttoptr i32 %tmp2_v1.i89.i to i32*
  %tmp2_v.i59.i = add i32 %149, -72
  %152 = inttoptr i32 %tmp2_v.i59.i to i32*
  store i32 0, i32* %151, align 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %BB_80492FF.i, label %BB_8049328.i

BB_804935A.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %155 = load i32, i32* %150, align 4
  store i32 %155, i32* %26, align 16
  store i32 134517605, i32* %27, align 4
  %arg.i.i = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i)
  ret void

BB_8049328.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %tmp2_v.i2.i = add i32 %149, -64
  %156 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* %152, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %BB_8049331.i, label %BB_804935A.i

BB_8049331.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %storemerge311 = phi i32 [ %tmp0_v2.i39.i, %BB_8049331.i ], [ 0, %BB_8049328.i ]
  %tmp4_v.i.i = shl i32 %storemerge311, 2
  %159 = load i32, i32* %150, align 4
  %tmp0_v3.i.i = add i32 %159, %tmp4_v.i.i
  %160 = inttoptr i32 %tmp0_v3.i.i to i32*
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %26, align 16
  store i32 134517579, i32* %27, align 4
  %arg.i.i8 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i8)
  %162 = load i32, i32* %156, align 4
  %tmp0_v2.i39.i = add i32 %162, 1
  store i32 %tmp0_v2.i39.i, i32* %156, align 4
  %163 = load i32, i32* %152, align 4
  %164 = icmp slt i32 %tmp0_v2.i39.i, %163
  br i1 %164, label %BB_8049331.i, label %BB_804935A.i

BB_80492FF.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %storemerge10 = phi i32 [ %tmp0_v2.i78.i, %BB_80492FF.i ], [ 0, %Func_split.exit ]
  %tmp4_v.i25.i = shl i32 %storemerge10, 2
  %165 = load i32, i32* %150, align 4
  %tmp0_v3.i28.i = add i32 %165, %tmp4_v.i25.i
  %166 = inttoptr i32 %tmp0_v3.i28.i to i32*
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %26, align 16
  store i32 134517529, i32* %27, align 4
  %arg.i.i9 = load i32, i32* %26, align 16
  %168 = inttoptr i32 %arg.i.i9 to i8*
  %169 = tail call i32 @puts(i8* nonnull dereferenceable(1) %168)
  %170 = load i32, i32* %151, align 4
  %tmp0_v2.i78.i = add i32 %170, 1
  store i32 %tmp0_v2.i78.i, i32* %151, align 4
  %171 = load i32, i32* %152, align 4
  %172 = icmp slt i32 %tmp0_v2.i78.i, %171
  br i1 %172, label %BB_80492FF.i, label %BB_8049328.i
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
!10 = !{i32 0, i32 0, i32 0, i32 0}

  tail call fastcc void @split210 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack209, i32 0, i32 8092) to i32)) nounwind
