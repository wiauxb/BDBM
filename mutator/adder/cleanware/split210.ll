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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split210(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i80.i = add i32 %arg_esp, 4
  %tmp0_v.i81.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i83.i = add i32 %tmp0_v.i81.i, -4
  %3 = inttoptr i32 %tmp2_v3.i83.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i84.i = add i32 %tmp0_v.i81.i, -8
  %4 = inttoptr i32 %tmp2_v4.i84.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i86.i = add i32 %tmp0_v.i81.i, -12
  %5 = inttoptr i32 %tmp2_v5.i86.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i88.i = add i32 %tmp0_v.i81.i, -16
  %6 = inttoptr i32 %tmp2_v6.i88.i to i32*
  store i32 %tmp2_v.i80.i, i32* %6, align 16
  %tmp2_v8.i89.i = add i32 %tmp0_v.i81.i, -84
  %7 = inttoptr i32 %tmp2_v8.i89.i to i32*
  store i32 134517361, i32* %7, align 4
  %tmp4_v.i48.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i81.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i52.i = add i32 %tmp0_v.i81.i, -63
  %11 = inttoptr i32 %tmp2_v3.i52.i to i32*
  store i32 1646292820, i32* %11, align 4
  %tmp2_v4.i53.i = add i32 %tmp0_v.i81.i, -59
  %12 = inttoptr i32 %tmp2_v4.i53.i to i32*
  store i32 1864379493, i32* %12, align 4
  %tmp2_v5.i54.i = add i32 %tmp0_v.i81.i, -55
  %13 = inttoptr i32 %tmp2_v5.i54.i to i32*
  store i32 1869488242, i32* %13, align 4
  %tmp2_v6.i55.i = add i32 %tmp0_v.i81.i, -51
  %14 = inttoptr i32 %tmp2_v6.i55.i to i32*
  store i32 1869881460, i32* %14, align 4
  %tmp2_v7.i56.i = add i32 %tmp0_v.i81.i, -47
  %15 = inttoptr i32 %tmp2_v7.i56.i to i32*
  store i32 744841760, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i81.i, -43
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1634235424, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i81.i, -39
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936269428, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i81.i, -35
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701344288, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i81.i, -31
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1702195488, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i81.i, -27
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1869182067, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i81.i, -23
  %21 = inttoptr i32 %tmp2_v13.i.i to i16*
  store i16 11886, i16* %21, align 2
  %tmp2_v14.i.i = add i32 %tmp0_v.i81.i, -21
  %22 = inttoptr i32 %tmp2_v14.i.i to i8*
  store i8 0, i8* %22, align 1
  %tmp2_v15.i.i = add i32 %tmp0_v.i81.i, -80
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 0, i32* %23, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i81.i, -88
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %24, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i81.i, -92
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  %spi208 = ptrtoint[4 x i8]* @str.208 to i32
  store i32 %spi208, i32* %25, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i81.i, -96
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i52.i, i32* %26, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i81.i, -100
  %27 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517488, i32* %27, align 4
  %tmp2_v.i171.i.i = add i32 %tmp0_v.i81.i, -104
  %28 = inttoptr i32 %tmp2_v.i171.i.i to i32*
  store i32 %tmp2_v4.i84.i, i32* %28, align 8
  %tmp2_v1.i173.i.i = add i32 %tmp0_v.i81.i, -108
  %29 = inttoptr i32 %tmp2_v1.i173.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v2.i174.i.i = add i32 %tmp0_v.i81.i, -112
  %30 = inttoptr i32 %tmp2_v2.i174.i.i to i32*
  store i32 134529024, i32* %30, align 16
  %tmp2_v.i192.i.i = add i32 %tmp0_v.i81.i, -16548
  %31 = inttoptr i32 %tmp2_v.i192.i.i to i32*
  store i32 134517678, i32* %31, align 4
  %32 = load i32, i32* %26, align 16
  %tmp2_v2.i266.i.i = add i32 %tmp0_v.i81.i, -16532
  %33 = inttoptr i32 %tmp2_v2.i266.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 4
  %tmp2_v5.i269.i.i = add i32 %tmp0_v.i81.i, -16536
  %35 = inttoptr i32 %tmp2_v5.i269.i.i to i32*
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %24, align 8
  %tmp2_v8.i272.i.i = add i32 %tmp0_v.i81.i, -16540
  %37 = inttoptr i32 %tmp2_v8.i272.i.i to i32*
  store i32 %36, i32* %37, align 4
  %tmp4_v.i273.i.b.i = load i1, i1* @segs.0, align 1
  %38 = inttoptr i32 %arg_esp to i32*
  %39 = load i32, i32* %38, align 4
  %tmp2_v11.i274.i.i = add i32 %tmp0_v.i81.i, -116
  %40 = inttoptr i32 %tmp2_v11.i274.i.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %33, align 4
  %tmp2_v15.i.i.i = add i32 %tmp0_v.i81.i, -16560
  %42 = inttoptr i32 %tmp2_v15.i.i.i to i32*
  store i32 %41, i32* %42, align 16
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i81.i, -16564
  %43 = inttoptr i32 %tmp2_v16.i.i.i to i32*
  store i32 134517736, i32* %43, align 4
  %arg.i.i31.i = load i32, i32* %42, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i31.i)
  %tmp2_v.i204.i.i = add i32 %tmp0_v.i81.i, -16516
  %45 = inttoptr i32 %tmp2_v.i204.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %37, align 4
  %47 = inttoptr i32 %46 to i32*
  store i32 0, i32* %47, align 4
  %tmp2_v3.i208.i.i = add i32 %tmp0_v.i81.i, -16528
  %48 = inttoptr i32 %tmp2_v3.i208.i.i to i32*
  store i32 0, i32* %48, align 16
  %49 = load i32, i32* %45, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_804943D.i.preheader.lr.ph.i, label %BB_80494D1.i.i

BB_804944E.i.i:                                   ; preds = %BB_804943D.i.preheader.i, %BB_8049436.i.i, %BB_804940C.i.i
  %51 = phi i32 [ %122, %BB_804943D.i.preheader.i ], [ %.pre.pre.i, %BB_804940C.i.i ], [ %tmp0_v1.i156.i.i, %BB_8049436.i.i ]
  store i32 %51, i32* %117, align 8
  %52 = load i32, i32* %48, align 16
  %53 = load i32, i32* %45, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %BB_804945C.i.i, label %BB_804949E.i.i

BB_80495BF.ithread-pre-split.i:                   ; preds = %BB_8049555.i.i
  %.pr.i = load i32, i32* %67, align 8
  br label %BB_80495BF.i.i

BB_80495BF.i.i:                                   ; preds = %BB_804957F.i.i, %BB_80495BF.ithread-pre-split.i
  %55 = phi i32 [ %.pr.i, %BB_80495BF.ithread-pre-split.i ], [ %tmp0_v14.i301.i.i, %BB_804957F.i.i ]
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %BB_8049653.i.backedge.i, label %BB_80495CC.i.i

BB_80494D1.i.i:                                   ; preds = %BB_80494BF.i.backedge.i, %0
  %57 = load i32, i32* %37, align 4
  %58 = inttoptr i32 %57 to i32*
  %59 = load i32, i32* %58, align 4
  %tmp0_v2.i.i.i = shl i32 %59, 2
  store i32 %tmp0_v2.i.i.i, i32* %42, align 16
  store i32 134517989, i32* %43, align 4
  %arg.i.i.i = load i32, i32* %42, align 16
  %60 = tail call i32 @malloc(i32 %arg.i.i.i)
  %tmp2_v.i78.i.i = add i32 %tmp0_v.i81.i, -16512
  %61 = inttoptr i32 %tmp2_v.i78.i.i to i32*
  store i32 %60, i32* %61, align 16
  store i32 0, i32* %48, align 16
  %tmp2_v2.i81.i.i = add i32 %tmp0_v.i81.i, -16524
  %62 = inttoptr i32 %tmp2_v2.i81.i.i to i32*
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %48, align 16
  %64 = load i32, i32* %45, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %BB_8049538.i.preheader.lr.ph.i, label %Func_split.exit

BB_8049538.i.preheader.lr.ph.i:                   ; preds = %BB_80494D1.i.i
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i81.i, -16556
  %66 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  %tmp2_v.i152.i.i = add i32 %tmp0_v.i81.i, -16520
  %67 = inttoptr i32 %tmp2_v.i152.i.i to i32*
  %tmp2_v5.i296.i.i = add i32 %tmp0_v.i81.i, -16500
  %tmp2_v.i23.i.i = add i32 %tmp0_v.i81.i, -16508
  %68 = inttoptr i32 %tmp2_v.i23.i.i to i32*
  br label %BB_8049538.i.preheader.i

BB_8049531.i.i:                                   ; preds = %BB_8049507.i.i
  %69 = load i32, i32* %48, align 16
  %tmp0_v1.i56.i.i = add i32 %69, 1
  store i32 %tmp0_v1.i56.i.i, i32* %48, align 16
  %70 = load i32, i32* %45, align 4
  %71 = icmp slt i32 %tmp0_v1.i56.i.i, %70
  br i1 %71, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_8049507.i.i:                                   ; preds = %BB_8049538.i.preheader.i, %BB_8049531.i.i
  %72 = phi i32 [ %tmp0_v1.i56.i.i, %BB_8049531.i.i ], [ %119, %BB_8049538.i.preheader.i ]
  %73 = load i32, i32* %33, align 4
  %tmp0_v3.i68.i.i = add i32 %73, %72
  %74 = inttoptr i32 %tmp0_v3.i68.i.i to i8*
  %75 = load i8, i8* %74, align 1
  %tmp0_v5.i70.i.i = sext i8 %75 to i32
  store i32 %tmp0_v5.i70.i.i, i32* %66, align 4
  %76 = load i32, i32* %35, align 8
  store i32 %76, i32* %42, align 16
  store i32 134518058, i32* %43, align 4
  %arg.i.i11.i = load i32, i32* %42, align 16
  %arg2.i.i.i = load i32, i32* %66, align 4
  %77 = tail call i32 @strchr(i32 %arg.i.i11.i, i32 %arg2.i.i.i)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %BB_8049549.i.i, label %BB_8049531.i.i

BB_804940C.i.i:                                   ; preds = %BB_804943D.i.preheader.i, %BB_8049436.i.i
  %79 = phi i32 [ %tmp0_v1.i156.i.i, %BB_8049436.i.i ], [ %122, %BB_804943D.i.preheader.i ]
  %80 = load i32, i32* %33, align 4
  %tmp0_v3.i87.i.i = add i32 %80, %79
  %81 = inttoptr i32 %tmp0_v3.i87.i.i to i8*
  %82 = load i8, i8* %81, align 1
  %tmp0_v5.i89.i.i = sext i8 %82 to i32
  store i32 %tmp0_v5.i89.i.i, i32* %116, align 4
  %83 = load i32, i32* %35, align 8
  store i32 %83, i32* %42, align 16
  store i32 134517807, i32* %43, align 4
  %arg.i.i14.i = load i32, i32* %42, align 16
  %arg2.i.i15.i = load i32, i32* %116, align 4
  %84 = tail call i32 @strchr(i32 %arg.i.i14.i, i32 %arg2.i.i15.i)
  %85 = icmp eq i32 %84, 0
  %.pre.pre.i = load i32, i32* %48, align 16
  br i1 %85, label %BB_804944E.i.i, label %BB_8049436.i.i

BB_8049555.i.i:                                   ; preds = %BB_804957F.i.i, %BB_8049549.i.i
  %86 = phi i32 [ %145, %BB_804957F.i.i ], [ %111, %BB_8049549.i.i ]
  %87 = load i32, i32* %33, align 4
  %tmp0_v3.i106.i.i = add i32 %87, %86
  %88 = inttoptr i32 %tmp0_v3.i106.i.i to i8*
  %89 = load i8, i8* %88, align 1
  %tmp0_v5.i108.i.i = sext i8 %89 to i32
  store i32 %tmp0_v5.i108.i.i, i32* %66, align 4
  %90 = load i32, i32* %35, align 8
  store i32 %90, i32* %42, align 16
  store i32 134518136, i32* %43, align 4
  %arg.i.i18.i = load i32, i32* %42, align 16
  %arg2.i.i19.i = load i32, i32* %66, align 4
  %91 = tail call i32 @strchr(i32 %arg.i.i18.i, i32 %arg2.i.i19.i)
  %.not.i216.i.i = icmp eq i32 %91, 0
  br i1 %.not.i216.i.i, label %BB_804957F.i.i, label %BB_80495BF.ithread-pre-split.i

BB_8049486.i.i:                                   ; preds = %BB_804945C.i.i
  %tmp0_v1.i119.i.i = add i32 %130, 1
  store i32 %tmp0_v1.i119.i.i, i32* %48, align 16
  %92 = load i32, i32* %45, align 4
  %93 = icmp slt i32 %tmp0_v1.i119.i.i, %92
  br i1 %93, label %BB_804945C.i.i, label %BB_804949E.i.loopexit.i

BB_80495CC.i.i:                                   ; preds = %BB_80495BF.i.i
  %tmp0_v2.i130.i.i = add i32 %55, %tmp2_v5.i296.i.i
  %94 = inttoptr i32 %tmp0_v2.i130.i.i to i8*
  store i8 0, i8* %94, align 1
  store i32 %tmp2_v5.i296.i.i, i32* %42, align 16
  store i32 134518252, i32* %43, align 4
  %arg.i.i22.i = load i32, i32* %42, align 16
  %95 = tail call i32 @strlen(i32 %arg.i.i22.i)
  %tmp0_v1.i21.i.i = add i32 %95, 1
  store i32 %tmp0_v1.i21.i.i, i32* %68, align 4
  %96 = load i32, i32* %62, align 4
  %tmp4_v.i26.i.i = shl i32 %96, 2
  %97 = load i32, i32* %61, align 16
  %tmp2_v8.i.i.i = add i32 %tmp4_v.i26.i.i, %97
  store i32 %tmp0_v1.i21.i.i, i32* %42, align 16
  store i32 134518301, i32* %43, align 4
  %arg.i.i25.i = load i32, i32* %42, align 16
  %98 = tail call i32 @malloc(i32 %arg.i.i25.i)
  %99 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %62, align 4
  %tmp4_v.i313.i.i = shl i32 %100, 2
  %101 = load i32, i32* %61, align 16
  %tmp0_v4.i316.i.i = add i32 %101, %tmp4_v.i313.i.i
  %102 = inttoptr i32 %tmp0_v4.i316.i.i to i32*
  %103 = load i32, i32* %102, align 4
  store i32 %tmp2_v5.i296.i.i, i32* %66, align 4
  store i32 %103, i32* %42, align 16
  store i32 134518345, i32* %43, align 4
  %arg.i.i27.i = load i32, i32* %42, align 16
  %arg2.i.i28.i = load i32, i32* %66, align 4
  %104 = tail call i32 @strcpy(i32 %arg.i.i27.i, i32 %arg2.i.i28.i)
  %105 = load i32, i32* %62, align 4
  %tmp0_v2.i39.i.i = add i32 %105, 1
  store i32 %tmp0_v2.i39.i.i, i32* %62, align 4
  br label %BB_8049653.i.backedge.i

BB_8049653.i.backedge.i:                          ; preds = %BB_8049549.i.i, %BB_80495CC.i.i, %BB_80495BF.i.i
  %106 = load i32, i32* %48, align 16
  %107 = load i32, i32* %45, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %BB_8049538.i.preheader.i, label %Func_split.exit

BB_804949E.i.loopexit.i:                          ; preds = %BB_804945C.i.i, %BB_8049486.i.i
  %.pre39.i = phi i32 [ %tmp0_v1.i119.i.i, %BB_8049486.i.i ], [ %130, %BB_804945C.i.i ]
  %.pre40.i = load i32, i32* %117, align 8
  br label %BB_804949E.i.i

BB_804949E.i.i:                                   ; preds = %BB_804949E.i.loopexit.i, %BB_804944E.i.i
  %109 = phi i32 [ %.pre40.i, %BB_804949E.i.loopexit.i ], [ %51, %BB_804944E.i.i ]
  %110 = phi i32 [ %.pre39.i, %BB_804949E.i.loopexit.i ], [ %52, %BB_804944E.i.i ]
  %.not.i149.i.i = icmp sgt i32 %110, %109
  br i1 %.not.i149.i.i, label %BB_80494AC.i.i, label %BB_80494BF.i.backedge.i

BB_8049549.i.i:                                   ; preds = %BB_8049538.i.preheader.i, %BB_8049507.i.i, %BB_8049531.i.i
  store i32 0, i32* %67, align 8
  %111 = load i32, i32* %48, align 16
  %112 = load i32, i32* %45, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %BB_8049555.i.i, label %BB_8049653.i.backedge.i

BB_8049436.i.i:                                   ; preds = %BB_804940C.i.i
  %tmp0_v1.i156.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i156.i.i, i32* %48, align 16
  %114 = load i32, i32* %45, align 4
  %115 = icmp slt i32 %tmp0_v1.i156.i.i, %114
  br i1 %115, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_804943D.i.preheader.lr.ph.i:                   ; preds = %0
  %tmp2_v7.i92.i.i = add i32 %tmp0_v.i81.i, -16556
  %116 = inttoptr i32 %tmp2_v7.i92.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i81.i, -16504
  %117 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  br label %BB_804943D.i.preheader.i

BB_8049538.i.preheader.i:                         ; preds = %BB_8049653.i.backedge.i, %BB_8049538.i.preheader.lr.ph.i
  %118 = phi i32 [ %64, %BB_8049538.i.preheader.lr.ph.i ], [ %107, %BB_8049653.i.backedge.i ]
  %119 = phi i32 [ %63, %BB_8049538.i.preheader.lr.ph.i ], [ %106, %BB_8049653.i.backedge.i ]
  %120 = icmp slt i32 %119, %118
  br i1 %120, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_804943D.i.preheader.i:                         ; preds = %BB_80494BF.i.backedge.i, %BB_804943D.i.preheader.lr.ph.i
  %121 = phi i32 [ %49, %BB_804943D.i.preheader.lr.ph.i ], [ %135, %BB_80494BF.i.backedge.i ]
  %122 = phi i32 [ 0, %BB_804943D.i.preheader.lr.ph.i ], [ %134, %BB_80494BF.i.backedge.i ]
  %123 = icmp slt i32 %122, %121
  br i1 %123, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_804945C.i.i:                                   ; preds = %BB_8049486.i.i, %BB_804944E.i.i
  %124 = phi i32 [ %tmp0_v1.i119.i.i, %BB_8049486.i.i ], [ %52, %BB_804944E.i.i ]
  %125 = load i32, i32* %33, align 4
  %tmp0_v3.i251.i.i = add i32 %125, %124
  %126 = inttoptr i32 %tmp0_v3.i251.i.i to i8*
  %127 = load i8, i8* %126, align 1
  %tmp0_v5.i253.i.i = sext i8 %127 to i32
  store i32 %tmp0_v5.i253.i.i, i32* %116, align 4
  %128 = load i32, i32* %35, align 8
  store i32 %128, i32* %42, align 16
  store i32 134517887, i32* %43, align 4
  %arg.i.i34.i = load i32, i32* %42, align 16
  %arg2.i.i35.i = load i32, i32* %116, align 4
  %129 = tail call i32 @strchr(i32 %arg.i.i34.i, i32 %arg2.i.i35.i)
  %.not.i16.i.i = icmp eq i32 %129, 0
  %130 = load i32, i32* %48, align 16
  br i1 %.not.i16.i.i, label %BB_8049486.i.i, label %BB_804949E.i.loopexit.i

BB_80494AC.i.i:                                   ; preds = %BB_804949E.i.i
  %131 = load i32, i32* %37, align 4
  %132 = inttoptr i32 %131 to i32*
  %133 = load i32, i32* %132, align 4
  %tmp2_v2.i280.i.i = add i32 %133, 1
  store i32 %tmp2_v2.i280.i.i, i32* %132, align 4
  %.pre41.i = load i32, i32* %48, align 16
  br label %BB_80494BF.i.backedge.i

BB_80494BF.i.backedge.i:                          ; preds = %BB_80494AC.i.i, %BB_804949E.i.i
  %134 = phi i32 [ %.pre41.i, %BB_80494AC.i.i ], [ %110, %BB_804949E.i.i ]
  %135 = load i32, i32* %45, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %BB_804943D.i.preheader.i, label %BB_80494D1.i.i

BB_804957F.i.i:                                   ; preds = %BB_8049555.i.i
  %137 = load i32, i32* %48, align 16
  %138 = load i32, i32* %33, align 4
  %tmp0_v3.i294.i.i = add i32 %138, %137
  %139 = inttoptr i32 %tmp0_v3.i294.i.i to i8*
  %140 = load i8, i8* %139, align 1
  %141 = load i32, i32* %67, align 8
  %tmp0_v8.i.i.i = add i32 %141, %tmp2_v5.i296.i.i
  %142 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %140, i8* %142, align 1
  %143 = load i32, i32* %48, align 16
  %tmp0_v11.i.i.i = add i32 %143, 1
  store i32 %tmp0_v11.i.i.i, i32* %48, align 16
  %144 = load i32, i32* %67, align 8
  %tmp0_v14.i301.i.i = add i32 %144, 1
  store i32 %tmp0_v14.i301.i.i, i32* %67, align 8
  %145 = load i32, i32* %48, align 16
  %146 = load i32, i32* %45, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %BB_8049555.i.i, label %BB_80495BF.i.i

Func_split.exit:                                  ; preds = %BB_8049653.i.backedge.i, %BB_80494D1.i.i
  %148 = load i32, i32* %61, align 16
  %149 = load i32, i32* %28, align 8
  %tmp2_v.i68.i = add i32 %149, -60
  %150 = inttoptr i32 %tmp2_v.i68.i to i32*
  store i32 %148, i32* %150, align 4
  %tmp2_v1.i69.i = add i32 %149, -68
  %151 = inttoptr i32 %tmp2_v1.i69.i to i32*
  %tmp2_v.i17.i = add i32 %149, -72
  %152 = inttoptr i32 %tmp2_v.i17.i to i32*
  store i32 0, i32* %151, align 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %BB_80492FF.i, label %BB_8049328.i

BB_8049328.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %tmp2_v.i.i = add i32 %149, -64
  %155 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %152, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %BB_8049331.i, label %BB_804935A.i

BB_80492FF.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %storemerge9 = phi i32 [ %tmp0_v2.i28.i, %BB_80492FF.i ], [ 0, %Func_split.exit ]
  %tmp4_v.i6.i = shl i32 %storemerge9, 2
  %158 = load i32, i32* %150, align 4
  %tmp0_v3.i7.i = add i32 %158, %tmp4_v.i6.i
  %159 = inttoptr i32 %tmp0_v3.i7.i to i32*
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %26, align 16
  store i32 134517529, i32* %27, align 4
  %arg.i.i = load i32, i32* %26, align 16
  %161 = inttoptr i32 %arg.i.i to i8*
  %162 = tail call i32 @puts(i8* nonnull dereferenceable(1) %161)
  %163 = load i32, i32* %151, align 4
  %tmp0_v2.i28.i = add i32 %163, 1
  store i32 %tmp0_v2.i28.i, i32* %151, align 4
  %164 = load i32, i32* %152, align 4
  %165 = icmp slt i32 %tmp0_v2.i28.i, %164
  br i1 %165, label %BB_80492FF.i, label %BB_8049328.i

BB_8049331.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %storemerge310 = phi i32 [ %tmp0_v2.i14.i, %BB_8049331.i ], [ 0, %BB_8049328.i ]
  %tmp4_v.i38.i = shl i32 %storemerge310, 2
  %166 = load i32, i32* %150, align 4
  %tmp0_v3.i41.i = add i32 %166, %tmp4_v.i38.i
  %167 = inttoptr i32 %tmp0_v3.i41.i to i32*
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %26, align 16
  store i32 134517579, i32* %27, align 4
  %arg.i.i7 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i7)
  %169 = load i32, i32* %155, align 4
  %tmp0_v2.i14.i = add i32 %169, 1
  store i32 %tmp0_v2.i14.i, i32* %155, align 4
  %170 = load i32, i32* %152, align 4
  %171 = icmp slt i32 %tmp0_v2.i14.i, %170
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
