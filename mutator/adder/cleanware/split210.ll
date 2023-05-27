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
@str.208 = constant [4 x i8] c" ,.\00"

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
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split210(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i87.i = add i32 %arg_esp, 4
  %tmp0_v.i88.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i90.i = add i32 %tmp0_v.i88.i, -4
  %3 = inttoptr i32 %tmp2_v3.i90.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i91.i = add i32 %tmp0_v.i88.i, -8
  %4 = inttoptr i32 %tmp2_v4.i91.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i93.i = add i32 %tmp0_v.i88.i, -12
  %5 = inttoptr i32 %tmp2_v5.i93.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i95.i = add i32 %tmp0_v.i88.i, -16
  %6 = inttoptr i32 %tmp2_v6.i95.i to i32*
  store i32 %tmp2_v.i87.i, i32* %6, align 16
  %tmp2_v8.i96.i = add i32 %tmp0_v.i88.i, -84
  %7 = inttoptr i32 %tmp2_v8.i96.i to i32*
  store i32 134517361, i32* %7, align 4
  %tmp4_v.i12.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i16.i = add i32 %tmp0_v.i88.i, -20
  %10 = inttoptr i32 %tmp2_v2.i16.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i88.i, -63
  %11 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 1646292820, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i88.i, -59
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1864379493, i32* %12, align 4
  %tmp2_v5.i18.i = add i32 %tmp0_v.i88.i, -55
  %13 = inttoptr i32 %tmp2_v5.i18.i to i32*
  store i32 1869488242, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i88.i, -51
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1869881460, i32* %14, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i88.i, -47
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 744841760, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i88.i, -43
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1634235424, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i88.i, -39
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936269428, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i88.i, -35
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701344288, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i88.i, -31
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1702195488, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i88.i, -27
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1869182067, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i88.i, -23
  %21 = inttoptr i32 %tmp2_v13.i.i to i16*
  store i16 11886, i16* %21, align 2
  %tmp2_v14.i.i = add i32 %tmp0_v.i88.i, -21
  %22 = inttoptr i32 %tmp2_v14.i.i to i8*
  store i8 0, i8* %22, align 1
  %tmp2_v15.i.i = add i32 %tmp0_v.i88.i, -80
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 0, i32* %23, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i88.i, -88
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %24, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i88.i, -92
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  %spi.bis.208 = ptrtoint[4 x i8]* @str.208 to i32
  store i32 %spi.bis.208, i32* %25, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i88.i, -96
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i17.i, i32* %26, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i88.i, -100
  %27 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517488, i32* %27, align 4
  %tmp2_v.i32.i.i = add i32 %tmp0_v.i88.i, -104
  %28 = inttoptr i32 %tmp2_v.i32.i.i to i32*
  store i32 %tmp2_v4.i91.i, i32* %28, align 8
  %tmp2_v1.i34.i.i = add i32 %tmp0_v.i88.i, -108
  %29 = inttoptr i32 %tmp2_v1.i34.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v2.i35.i.i = add i32 %tmp0_v.i88.i, -112
  %30 = inttoptr i32 %tmp2_v2.i35.i.i to i32*
  store i32 134529024, i32* %30, align 16
  %tmp2_v.i172.i.i = add i32 %tmp0_v.i88.i, -16548
  %31 = inttoptr i32 %tmp2_v.i172.i.i to i32*
  store i32 134517678, i32* %31, align 4
  %32 = load i32, i32* %26, align 16
  %tmp2_v2.i11.i.i = add i32 %tmp0_v.i88.i, -16532
  %33 = inttoptr i32 %tmp2_v2.i11.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i88.i, -16536
  %35 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %24, align 8
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i88.i, -16540
  %37 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 %36, i32* %37, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %38 = inttoptr i32 %arg_esp to i32*
  %39 = load i32, i32* %38, align 4
  %tmp2_v11.i.i.i = add i32 %tmp0_v.i88.i, -116
  %40 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %33, align 4
  %tmp2_v15.i.i.i = add i32 %tmp0_v.i88.i, -16560
  %42 = inttoptr i32 %tmp2_v15.i.i.i to i32*
  store i32 %41, i32* %42, align 16
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i88.i, -16564
  %43 = inttoptr i32 %tmp2_v16.i.i.i to i32*
  store i32 134517736, i32* %43, align 4
  %arg.i.i12.i = load i32, i32* %42, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i12.i)
  %tmp2_v.i235.i.i = add i32 %tmp0_v.i88.i, -16516
  %45 = inttoptr i32 %tmp2_v.i235.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %37, align 4
  %47 = inttoptr i32 %46 to i32*
  store i32 0, i32* %47, align 4
  %tmp2_v3.i239.i.i = add i32 %tmp0_v.i88.i, -16528
  %48 = inttoptr i32 %tmp2_v3.i239.i.i to i32*
  store i32 0, i32* %48, align 16
  %49 = load i32, i32* %45, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_804943D.i.preheader.lr.ph.i, label %BB_80494D1.i.i

BB_8049436.i.i:                                   ; preds = %BB_804940C.i.i
  %tmp0_v1.i.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i.i.i, i32* %48, align 16
  %51 = load i32, i32* %45, align 4
  %52 = icmp slt i32 %tmp0_v1.i.i.i, %51
  br i1 %52, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_804943D.i.preheader.i:                         ; preds = %BB_804943D.i.preheader.lr.ph.i, %BB_80494BF.i.backedge.i
  %53 = phi i32 [ %49, %BB_804943D.i.preheader.lr.ph.i ], [ %97, %BB_80494BF.i.backedge.i ]
  %54 = phi i32 [ 0, %BB_804943D.i.preheader.lr.ph.i ], [ %96, %BB_80494BF.i.backedge.i ]
  %55 = icmp slt i32 %54, %53
  br i1 %55, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_8049486.i.i:                                   ; preds = %BB_804945C.i.i
  %tmp0_v1.i24.i.i = add i32 %107, 1
  store i32 %tmp0_v1.i24.i.i, i32* %48, align 16
  %56 = load i32, i32* %45, align 4
  %57 = icmp slt i32 %tmp0_v1.i24.i.i, %56
  br i1 %57, label %BB_804945C.i.i, label %BB_804949E.i.loopexit.i

BB_80494D1.i.i:                                   ; preds = %BB_80494BF.i.backedge.i, %0
  %58 = load i32, i32* %37, align 4
  %59 = inttoptr i32 %58 to i32*
  %60 = load i32, i32* %59, align 4
  %tmp0_v2.i.i.i = shl i32 %60, 2
  store i32 %tmp0_v2.i.i.i, i32* %42, align 16
  store i32 134517989, i32* %43, align 4
  %arg.i.i.i = load i32, i32* %42, align 16
  %61 = tail call i32 @malloc(i32 %arg.i.i.i)
  %tmp2_v.i139.i.i = add i32 %tmp0_v.i88.i, -16512
  %62 = inttoptr i32 %tmp2_v.i139.i.i to i32*
  store i32 %61, i32* %62, align 16
  store i32 0, i32* %48, align 16
  %tmp2_v2.i142.i.i = add i32 %tmp0_v.i88.i, -16524
  %63 = inttoptr i32 %tmp2_v2.i142.i.i to i32*
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %48, align 16
  %65 = load i32, i32* %45, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %BB_8049538.i.preheader.lr.ph.i, label %Func_split.exit

BB_8049538.i.preheader.lr.ph.i:                   ; preds = %BB_80494D1.i.i
  %tmp2_v7.i305.i.i = add i32 %tmp0_v.i88.i, -16556
  %67 = inttoptr i32 %tmp2_v7.i305.i.i to i32*
  %tmp2_v.i127.i.i = add i32 %tmp0_v.i88.i, -16520
  %68 = inttoptr i32 %tmp2_v.i127.i.i to i32*
  %tmp2_v5.i101.i.i = add i32 %tmp0_v.i88.i, -16500
  %tmp2_v.i211.i.i = add i32 %tmp0_v.i88.i, -16508
  %69 = inttoptr i32 %tmp2_v.i211.i.i to i32*
  br label %BB_8049538.i.preheader.i

BB_8049538.i.preheader.i:                         ; preds = %BB_8049653.i.backedge.i, %BB_8049538.i.preheader.lr.ph.i
  %70 = phi i32 [ %65, %BB_8049538.i.preheader.lr.ph.i ], [ %134, %BB_8049653.i.backedge.i ]
  %71 = phi i32 [ %64, %BB_8049538.i.preheader.lr.ph.i ], [ %133, %BB_8049653.i.backedge.i ]
  %72 = icmp slt i32 %71, %70
  br i1 %72, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_804957F.i.i:                                   ; preds = %BB_8049555.i.i
  %73 = load i32, i32* %48, align 16
  %74 = load i32, i32* %33, align 4
  %tmp0_v3.i99.i.i = add i32 %74, %73
  %75 = inttoptr i32 %tmp0_v3.i99.i.i to i8*
  %76 = load i8, i8* %75, align 1
  %77 = load i32, i32* %68, align 8
  %tmp0_v8.i.i.i = add i32 %77, %tmp2_v5.i101.i.i
  %78 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %48, align 16
  %tmp0_v11.i.i.i = add i32 %79, 1
  store i32 %tmp0_v11.i.i.i, i32* %48, align 16
  %80 = load i32, i32* %68, align 8
  %tmp0_v14.i106.i.i = add i32 %80, 1
  store i32 %tmp0_v14.i106.i.i, i32* %68, align 8
  %81 = load i32, i32* %48, align 16
  %82 = load i32, i32* %45, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %BB_8049555.i.i, label %BB_80495BF.i.i

BB_804949E.i.loopexit.i:                          ; preds = %BB_804945C.i.i, %BB_8049486.i.i
  %.pre38.i = phi i32 [ %tmp0_v1.i24.i.i, %BB_8049486.i.i ], [ %107, %BB_804945C.i.i ]
  %.pre39.i = load i32, i32* %100, align 8
  br label %BB_804949E.i.i

BB_804949E.i.i:                                   ; preds = %BB_804944E.i.i, %BB_804949E.i.loopexit.i
  %84 = phi i32 [ %.pre39.i, %BB_804949E.i.loopexit.i ], [ %89, %BB_804944E.i.i ]
  %85 = phi i32 [ %.pre38.i, %BB_804949E.i.loopexit.i ], [ %90, %BB_804944E.i.i ]
  %.not.i117.i.i = icmp sgt i32 %85, %84
  br i1 %.not.i117.i.i, label %BB_80494AC.i.i, label %BB_80494BF.i.backedge.i

BB_8049549.i.i:                                   ; preds = %BB_8049531.i.i, %BB_8049507.i.i, %BB_8049538.i.preheader.i
  store i32 0, i32* %68, align 8
  %86 = load i32, i32* %48, align 16
  %87 = load i32, i32* %45, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %BB_8049555.i.i, label %BB_8049653.i.backedge.i

BB_804944E.i.i:                                   ; preds = %BB_804940C.i.i, %BB_804943D.i.preheader.i, %BB_8049436.i.i
  %89 = phi i32 [ %54, %BB_804943D.i.preheader.i ], [ %.pre.pre.i, %BB_804940C.i.i ], [ %tmp0_v1.i.i.i, %BB_8049436.i.i ]
  store i32 %89, i32* %100, align 8
  %90 = load i32, i32* %48, align 16
  %91 = load i32, i32* %45, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %BB_804945C.i.i, label %BB_804949E.i.i

BB_80494AC.i.i:                                   ; preds = %BB_804949E.i.i
  %93 = load i32, i32* %37, align 4
  %94 = inttoptr i32 %93 to i32*
  %95 = load i32, i32* %94, align 4
  %tmp2_v2.i161.i.i = add i32 %95, 1
  store i32 %tmp2_v2.i161.i.i, i32* %94, align 4
  %.pre40.i = load i32, i32* %48, align 16
  br label %BB_80494BF.i.backedge.i

BB_80494BF.i.backedge.i:                          ; preds = %BB_80494AC.i.i, %BB_804949E.i.i
  %96 = phi i32 [ %.pre40.i, %BB_80494AC.i.i ], [ %85, %BB_804949E.i.i ]
  %97 = load i32, i32* %45, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %BB_804943D.i.preheader.i, label %BB_80494D1.i.i

BB_804943D.i.preheader.lr.ph.i:                   ; preds = %0
  %tmp2_v7.i275.i.i = add i32 %tmp0_v.i88.i, -16556
  %99 = inttoptr i32 %tmp2_v7.i275.i.i to i32*
  %tmp2_v1.i135.i.i = add i32 %tmp0_v.i88.i, -16504
  %100 = inttoptr i32 %tmp2_v1.i135.i.i to i32*
  br label %BB_804943D.i.preheader.i

BB_804945C.i.i:                                   ; preds = %BB_804944E.i.i, %BB_8049486.i.i
  %101 = phi i32 [ %tmp0_v1.i24.i.i, %BB_8049486.i.i ], [ %90, %BB_804944E.i.i ]
  %102 = load i32, i32* %33, align 4
  %tmp0_v3.i197.i.i = add i32 %102, %101
  %103 = inttoptr i32 %tmp0_v3.i197.i.i to i8*
  %104 = load i8, i8* %103, align 1
  %tmp0_v5.i199.i.i = sext i8 %104 to i32
  store i32 %tmp0_v5.i199.i.i, i32* %99, align 4
  %105 = load i32, i32* %35, align 8
  store i32 %105, i32* %42, align 16
  store i32 134517887, i32* %43, align 4
  %arg.i.i15.i = load i32, i32* %42, align 16
  %arg2.i.i.i = load i32, i32* %99, align 4
  %106 = tail call i32 @strchr(i32 %arg.i.i15.i, i32 %arg2.i.i.i)
  %.not.i283.i.i = icmp eq i32 %106, 0
  %107 = load i32, i32* %48, align 16
  br i1 %.not.i283.i.i, label %BB_8049486.i.i, label %BB_804949E.i.loopexit.i

BB_8049555.i.i:                                   ; preds = %BB_8049549.i.i, %BB_804957F.i.i
  %108 = phi i32 [ %81, %BB_804957F.i.i ], [ %86, %BB_8049549.i.i ]
  %109 = load i32, i32* %33, align 4
  %tmp0_v3.i245.i.i = add i32 %109, %108
  %110 = inttoptr i32 %tmp0_v3.i245.i.i to i8*
  %111 = load i8, i8* %110, align 1
  %tmp0_v5.i247.i.i = sext i8 %111 to i32
  store i32 %tmp0_v5.i247.i.i, i32* %67, align 4
  %112 = load i32, i32* %35, align 8
  store i32 %112, i32* %42, align 16
  store i32 134518136, i32* %43, align 4
  %arg.i.i18.i = load i32, i32* %42, align 16
  %arg2.i.i19.i = load i32, i32* %67, align 4
  %113 = tail call i32 @strchr(i32 %arg.i.i18.i, i32 %arg2.i.i19.i)
  %.not.i92.i.i = icmp eq i32 %113, 0
  br i1 %.not.i92.i.i, label %BB_804957F.i.i, label %BB_80495BF.ithread-pre-split.i

BB_804940C.i.i:                                   ; preds = %BB_804943D.i.preheader.i, %BB_8049436.i.i
  %114 = phi i32 [ %tmp0_v1.i.i.i, %BB_8049436.i.i ], [ %54, %BB_804943D.i.preheader.i ]
  %115 = load i32, i32* %33, align 4
  %tmp0_v3.i270.i.i = add i32 %115, %114
  %116 = inttoptr i32 %tmp0_v3.i270.i.i to i8*
  %117 = load i8, i8* %116, align 1
  %tmp0_v5.i272.i.i = sext i8 %117 to i32
  store i32 %tmp0_v5.i272.i.i, i32* %99, align 4
  %118 = load i32, i32* %35, align 8
  store i32 %118, i32* %42, align 16
  store i32 134517807, i32* %43, align 4
  %arg.i.i22.i = load i32, i32* %42, align 16
  %arg2.i.i23.i = load i32, i32* %99, align 4
  %119 = tail call i32 @strchr(i32 %arg.i.i22.i, i32 %arg2.i.i23.i)
  %120 = icmp eq i32 %119, 0
  %.pre.pre.i = load i32, i32* %48, align 16
  br i1 %120, label %BB_804944E.i.i, label %BB_8049436.i.i

BB_80495CC.i.i:                                   ; preds = %BB_80495BF.i.i
  %tmp0_v2.i289.i.i = add i32 %146, %tmp2_v5.i101.i.i
  %121 = inttoptr i32 %tmp0_v2.i289.i.i to i8*
  store i8 0, i8* %121, align 1
  store i32 %tmp2_v5.i101.i.i, i32* %42, align 16
  store i32 134518252, i32* %43, align 4
  %arg.i.i26.i = load i32, i32* %42, align 16
  %122 = tail call i32 @strlen(i32 %arg.i.i26.i)
  %tmp0_v1.i209.i.i = add i32 %122, 1
  store i32 %tmp0_v1.i209.i.i, i32* %69, align 4
  %123 = load i32, i32* %63, align 4
  %tmp4_v.i216.i.i = shl i32 %123, 2
  %124 = load i32, i32* %62, align 16
  %tmp2_v8.i219.i.i = add i32 %tmp4_v.i216.i.i, %124
  store i32 %tmp0_v1.i209.i.i, i32* %42, align 16
  store i32 134518301, i32* %43, align 4
  %arg.i.i29.i = load i32, i32* %42, align 16
  %125 = tail call i32 @malloc(i32 %arg.i.i29.i)
  %126 = inttoptr i32 %tmp2_v8.i219.i.i to i32*
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %63, align 4
  %tmp4_v.i67.i.i = shl i32 %127, 2
  %128 = load i32, i32* %62, align 16
  %tmp0_v4.i70.i.i = add i32 %128, %tmp4_v.i67.i.i
  %129 = inttoptr i32 %tmp0_v4.i70.i.i to i32*
  %130 = load i32, i32* %129, align 4
  store i32 %tmp2_v5.i101.i.i, i32* %67, align 4
  store i32 %130, i32* %42, align 16
  store i32 134518345, i32* %43, align 4
  %arg.i.i31.i = load i32, i32* %42, align 16
  %arg2.i.i32.i = load i32, i32* %67, align 4
  %131 = tail call i32 @strcpy(i32 %arg.i.i31.i, i32 %arg2.i.i32.i)
  %132 = load i32, i32* %63, align 4
  %tmp0_v2.i178.i.i = add i32 %132, 1
  store i32 %tmp0_v2.i178.i.i, i32* %63, align 4
  br label %BB_8049653.i.backedge.i

BB_8049653.i.backedge.i:                          ; preds = %BB_80495BF.i.i, %BB_80495CC.i.i, %BB_8049549.i.i
  %133 = load i32, i32* %48, align 16
  %134 = load i32, i32* %45, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %BB_8049538.i.preheader.i, label %Func_split.exit

BB_8049507.i.i:                                   ; preds = %BB_8049531.i.i, %BB_8049538.i.preheader.i
  %136 = phi i32 [ %tmp0_v1.i313.i.i, %BB_8049531.i.i ], [ %71, %BB_8049538.i.preheader.i ]
  %137 = load i32, i32* %33, align 4
  %tmp0_v3.i300.i.i = add i32 %137, %136
  %138 = inttoptr i32 %tmp0_v3.i300.i.i to i8*
  %139 = load i8, i8* %138, align 1
  %tmp0_v5.i302.i.i = sext i8 %139 to i32
  store i32 %tmp0_v5.i302.i.i, i32* %67, align 4
  %140 = load i32, i32* %35, align 8
  store i32 %140, i32* %42, align 16
  store i32 134518058, i32* %43, align 4
  %arg.i.i33.i = load i32, i32* %42, align 16
  %arg2.i.i34.i = load i32, i32* %67, align 4
  %141 = tail call i32 @strchr(i32 %arg.i.i33.i, i32 %arg2.i.i34.i)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %BB_8049549.i.i, label %BB_8049531.i.i

BB_8049531.i.i:                                   ; preds = %BB_8049507.i.i
  %143 = load i32, i32* %48, align 16
  %tmp0_v1.i313.i.i = add i32 %143, 1
  store i32 %tmp0_v1.i313.i.i, i32* %48, align 16
  %144 = load i32, i32* %45, align 4
  %145 = icmp slt i32 %tmp0_v1.i313.i.i, %144
  br i1 %145, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_80495BF.ithread-pre-split.i:                   ; preds = %BB_8049555.i.i
  %.pr.i = load i32, i32* %68, align 8
  br label %BB_80495BF.i.i

BB_80495BF.i.i:                                   ; preds = %BB_80495BF.ithread-pre-split.i, %BB_804957F.i.i
  %146 = phi i32 [ %.pr.i, %BB_80495BF.ithread-pre-split.i ], [ %tmp0_v14.i106.i.i, %BB_804957F.i.i ]
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %BB_8049653.i.backedge.i, label %BB_80495CC.i.i

Func_split.exit:                                  ; preds = %BB_8049653.i.backedge.i, %BB_80494D1.i.i
  %148 = load i32, i32* %62, align 16
  %149 = load i32, i32* %28, align 8
  %tmp2_v.i.i = add i32 %149, -60
  %150 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %148, i32* %150, align 4
  %tmp2_v1.i.i = add i32 %149, -68
  %151 = inttoptr i32 %tmp2_v1.i.i to i32*
  %tmp2_v.i61.i = add i32 %149, -72
  %152 = inttoptr i32 %tmp2_v.i61.i to i32*
  store i32 0, i32* %151, align 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %BB_80492FF.i, label %BB_8049328.i

BB_8049328.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %tmp2_v.i21.i = add i32 %149, -64
  %155 = inttoptr i32 %tmp2_v.i21.i to i32*
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %152, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %BB_8049331.i, label %BB_804935A.i

BB_80492FF.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %storemerge9 = phi i32 [ %tmp0_v2.i.i, %BB_80492FF.i ], [ 0, %Func_split.exit ]
  %tmp4_v.i25.i = shl i32 %storemerge9, 2
  %158 = load i32, i32* %150, align 4
  %tmp0_v3.i28.i = add i32 %158, %tmp4_v.i25.i
  %159 = inttoptr i32 %tmp0_v3.i28.i to i32*
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %26, align 16
  store i32 134517529, i32* %27, align 4
  %arg.i.i = load i32, i32* %26, align 16
  %161 = inttoptr i32 %arg.i.i to i8*
  %162 = tail call i32 @puts(i8* nonnull dereferenceable(1) %161)
  %163 = load i32, i32* %151, align 4
  %tmp0_v2.i.i = add i32 %163, 1
  store i32 %tmp0_v2.i.i, i32* %151, align 4
  %164 = load i32, i32* %152, align 4
  %165 = icmp slt i32 %tmp0_v2.i.i, %164
  br i1 %165, label %BB_80492FF.i, label %BB_8049328.i

BB_8049331.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %storemerge310 = phi i32 [ %tmp0_v2.i45.i, %BB_8049331.i ], [ 0, %BB_8049328.i ]
  %tmp4_v.i70.i = shl i32 %storemerge310, 2
  %166 = load i32, i32* %150, align 4
  %tmp0_v3.i73.i = add i32 %166, %tmp4_v.i70.i
  %167 = inttoptr i32 %tmp0_v3.i73.i to i32*
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %26, align 16
  store i32 134517579, i32* %27, align 4
  %arg.i.i7 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i7)
  %169 = load i32, i32* %155, align 4
  %tmp0_v2.i45.i = add i32 %169, 1
  store i32 %tmp0_v2.i45.i, i32* %155, align 4
  %170 = load i32, i32* %152, align 4
  %171 = icmp slt i32 %tmp0_v2.i45.i, %170
  br i1 %171, label %BB_8049331.i, label %BB_804935A.i

BB_804935A.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %172 = load i32, i32* %150, align 4
  store i32 %172, i32* %26, align 16
  store i32 134517605, i32* %27, align 4
  %arg.i.i8 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i8)
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
!10 = !{i32 0, i32 0, i32 0, i32 0}

  tail call fastcc void @split210 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack209, i32 0, i32 8092) to i32)) nounwind
