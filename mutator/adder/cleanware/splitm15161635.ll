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

; Function Attrs: noinline
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @splitm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i14.i = add i32 %arg_esp, 4
  %tmp0_v.i15.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i15.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i15.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i15.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i18.i = add i32 %tmp0_v.i15.i, -16
  %6 = inttoptr i32 %tmp2_v6.i18.i to i32*
  store i32 %tmp2_v.i14.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i15.i, -84
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517361, i32* %7, align 4
  %tmp4_v.i43.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i43.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i47.i = add i32 %tmp0_v.i15.i, -20
  %10 = inttoptr i32 %tmp2_v2.i47.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i48.i = add i32 %tmp0_v.i15.i, -63
  %11 = inttoptr i32 %tmp2_v3.i48.i to i32*
  store i32 1646292820, i32* %11, align 4
  %tmp2_v4.i49.i = add i32 %tmp0_v.i15.i, -59
  %12 = inttoptr i32 %tmp2_v4.i49.i to i32*
  store i32 1864379493, i32* %12, align 4
  %tmp2_v5.i50.i = add i32 %tmp0_v.i15.i, -55
  %13 = inttoptr i32 %tmp2_v5.i50.i to i32*
  store i32 1869488242, i32* %13, align 4
  %tmp2_v6.i51.i = add i32 %tmp0_v.i15.i, -51
  %14 = inttoptr i32 %tmp2_v6.i51.i to i32*
  store i32 1869881460, i32* %14, align 4
  %tmp2_v7.i52.i = add i32 %tmp0_v.i15.i, -47
  %15 = inttoptr i32 %tmp2_v7.i52.i to i32*
  store i32 744841760, i32* %15, align 4
  %tmp2_v8.i53.i = add i32 %tmp0_v.i15.i, -43
  %16 = inttoptr i32 %tmp2_v8.i53.i to i32*
  store i32 1634235424, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i15.i, -39
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936269428, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i15.i, -35
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701344288, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i15.i, -31
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1702195488, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i15.i, -27
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1869182067, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i15.i, -23
  %21 = inttoptr i32 %tmp2_v13.i.i to i16*
  store i16 11886, i16* %21, align 2
  %tmp2_v14.i.i = add i32 %tmp0_v.i15.i, -21
  %22 = inttoptr i32 %tmp2_v14.i.i to i8*
  store i8 0, i8* %22, align 1
  %tmp2_v15.i.i = add i32 %tmp0_v.i15.i, -80
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 0, i32* %23, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i15.i, -88
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %24, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i15.i, -92
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134520840, i32* %25, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i15.i, -96
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i48.i, i32* %26, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i15.i, -100
  %27 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517488, i32* %27, align 4
  %tmp2_v.i290.i.i = add i32 %tmp0_v.i15.i, -104
  %28 = inttoptr i32 %tmp2_v.i290.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %28, align 8
  %tmp2_v1.i292.i.i = add i32 %tmp0_v.i15.i, -108
  %29 = inttoptr i32 %tmp2_v1.i292.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v2.i294.i.i = add i32 %tmp0_v.i15.i, -112
  %30 = inttoptr i32 %tmp2_v2.i294.i.i to i32*
  store i32 134529024, i32* %30, align 16
  %tmp2_v.i302.i.i = add i32 %tmp0_v.i15.i, -16548
  %31 = inttoptr i32 %tmp2_v.i302.i.i to i32*
  store i32 134517678, i32* %31, align 4
  %32 = load i32, i32* %26, align 16
  %tmp2_v2.i185.i.i = add i32 %tmp0_v.i15.i, -16532
  %33 = inttoptr i32 %tmp2_v2.i185.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 4
  %tmp2_v5.i188.i.i = add i32 %tmp0_v.i15.i, -16536
  %35 = inttoptr i32 %tmp2_v5.i188.i.i to i32*
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %24, align 8
  %tmp2_v8.i191.i.i = add i32 %tmp0_v.i15.i, -16540
  %37 = inttoptr i32 %tmp2_v8.i191.i.i to i32*
  store i32 %36, i32* %37, align 4
  %tmp4_v.i192.i.b.i = load i1, i1* @segs.0, align 1
  %38 = select i1 %tmp4_v.i192.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %39 = load i32, i32* %38, align 4
  %tmp2_v11.i193.i.i = add i32 %tmp0_v.i15.i, -116
  %40 = inttoptr i32 %tmp2_v11.i193.i.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %33, align 4
  %tmp2_v15.i.i.i = add i32 %tmp0_v.i15.i, -16560
  %42 = inttoptr i32 %tmp2_v15.i.i.i to i32*
  store i32 %41, i32* %42, align 16
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i15.i, -16564
  %43 = inttoptr i32 %tmp2_v16.i.i.i to i32*
  store i32 134517736, i32* %43, align 4
  %arg.i.i35.i = load i32, i32* %42, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i35.i)
  %tmp2_v.i86.i.i = add i32 %tmp0_v.i15.i, -16516
  %45 = inttoptr i32 %tmp2_v.i86.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %37, align 4
  %47 = inttoptr i32 %46 to i32*
  store i32 0, i32* %47, align 4
  %tmp2_v3.i90.i.i = add i32 %tmp0_v.i15.i, -16528
  %48 = inttoptr i32 %tmp2_v3.i90.i.i to i32*
  store i32 0, i32* %48, align 16
  %49 = load i32, i32* %45, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_804943D.i.preheader.lr.ph.i, label %BB_80494D1.i.i

BB_80495BF.ithread-pre-split.i:                   ; preds = %BB_8049555.i.i
  %.pr.i = load i32, i32* %94, align 8
  br label %BB_80495BF.i.i

BB_80495BF.i.i:                                   ; preds = %BB_804957F.i.i, %BB_80495BF.ithread-pre-split.i
  %51 = phi i32 [ %.pr.i, %BB_80495BF.ithread-pre-split.i ], [ %tmp0_v14.i232.i.i, %BB_804957F.i.i ]
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %BB_8049653.i.backedge.i, label %BB_80495CC.i.i

BB_804944E.i.i:                                   ; preds = %BB_8049436.i.i, %BB_804940C.i.i, %BB_804943D.i.preheader.i
  %53 = phi i32 [ %58, %BB_804943D.i.preheader.i ], [ %.pre.pre.i, %BB_804940C.i.i ], [ %tmp0_v1.i170.i.i, %BB_8049436.i.i ]
  store i32 %53, i32* %144, align 8
  %54 = load i32, i32* %48, align 16
  %55 = load i32, i32* %45, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %BB_804945C.i.i, label %BB_804949E.i.i

BB_804943D.i.preheader.i:                         ; preds = %BB_804943D.i.preheader.lr.ph.i, %BB_80494BF.i.backedge.i
  %57 = phi i32 [ %49, %BB_804943D.i.preheader.lr.ph.i ], [ %120, %BB_80494BF.i.backedge.i ]
  %58 = phi i32 [ 0, %BB_804943D.i.preheader.lr.ph.i ], [ %119, %BB_80494BF.i.backedge.i ]
  %59 = icmp slt i32 %58, %57
  br i1 %59, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_8049555.i.i:                                   ; preds = %BB_8049549.i.i, %BB_804957F.i.i
  %60 = phi i32 [ %130, %BB_804957F.i.i ], [ %140, %BB_8049549.i.i ]
  %61 = load i32, i32* %33, align 4
  %tmp0_v3.i37.i.i = add i32 %61, %60
  %62 = inttoptr i32 %tmp0_v3.i37.i.i to i8*
  %63 = load i8, i8* %62, align 1
  %tmp0_v5.i39.i.i = sext i8 %63 to i32
  store i32 %tmp0_v5.i39.i.i, i32* %93, align 4
  %64 = load i32, i32* %35, align 8
  store i32 %64, i32* %42, align 16
  store i32 134518136, i32* %43, align 4
  %arg.i.i.i = load i32, i32* %42, align 16
  %arg2.i.i.i = load i32, i32* %93, align 4
  %65 = tail call i32 @strchr(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %.not.i111.i.i = icmp eq i32 %65, 0
  br i1 %.not.i111.i.i, label %BB_804957F.i.i, label %BB_80495BF.ithread-pre-split.i

BB_8049538.i.preheader.i:                         ; preds = %BB_8049538.i.preheader.lr.ph.i, %BB_8049653.i.backedge.i
  %66 = phi i32 [ %91, %BB_8049538.i.preheader.lr.ph.i ], [ %82, %BB_8049653.i.backedge.i ]
  %67 = phi i32 [ %90, %BB_8049538.i.preheader.lr.ph.i ], [ %81, %BB_8049653.i.backedge.i ]
  %68 = icmp slt i32 %67, %66
  br i1 %68, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_80495CC.i.i:                                   ; preds = %BB_80495BF.i.i
  %tmp0_v2.i56.i.i = add i32 %51, %tmp2_v5.i227.i.i
  %69 = inttoptr i32 %tmp0_v2.i56.i.i to i8*
  store i8 0, i8* %69, align 1
  store i32 %tmp2_v5.i227.i.i, i32* %42, align 16
  store i32 134518252, i32* %43, align 4
  %arg.i.i11.i = load i32, i32* %42, align 16
  %70 = tail call i32 @strlen(i32 %arg.i.i11.i)
  %tmp0_v1.i94.i.i = add i32 %70, 1
  store i32 %tmp0_v1.i94.i.i, i32* %95, align 4
  %71 = load i32, i32* %89, align 4
  %tmp4_v.i101.i.i = shl i32 %71, 2
  %72 = load i32, i32* %88, align 16
  %tmp2_v8.i103.i.i = add i32 %tmp4_v.i101.i.i, %72
  store i32 %tmp0_v1.i94.i.i, i32* %42, align 16
  store i32 134518301, i32* %43, align 4
  %arg.i.i14.i = load i32, i32* %42, align 16
  %73 = tail call i32 @malloc(i32 %arg.i.i14.i)
  %74 = inttoptr i32 %tmp2_v8.i103.i.i to i32*
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %89, align 4
  %tmp4_v.i.i.i5 = shl i32 %75, 2
  %76 = load i32, i32* %88, align 16
  %tmp0_v4.i.i.i = add i32 %76, %tmp4_v.i.i.i5
  %77 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %78 = load i32, i32* %77, align 4
  store i32 %tmp2_v5.i227.i.i, i32* %93, align 4
  store i32 %78, i32* %42, align 16
  store i32 134518345, i32* %43, align 4
  %arg.i.i16.i = load i32, i32* %42, align 16
  %arg2.i.i17.i = load i32, i32* %93, align 4
  %79 = tail call i32 @strcpy(i32 %arg.i.i16.i, i32 %arg2.i.i17.i)
  %80 = load i32, i32* %89, align 4
  %tmp0_v2.i64.i.i = add i32 %80, 1
  store i32 %tmp0_v2.i64.i.i, i32* %89, align 4
  br label %BB_8049653.i.backedge.i

BB_8049653.i.backedge.i:                          ; preds = %BB_8049549.i.i, %BB_80495CC.i.i, %BB_80495BF.i.i
  %81 = load i32, i32* %48, align 16
  %82 = load i32, i32* %45, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %BB_8049538.i.preheader.i, label %Func_split.exit

BB_80494D1.i.i:                                   ; preds = %BB_80494BF.i.backedge.i, %0
  %84 = load i32, i32* %37, align 4
  %85 = inttoptr i32 %84 to i32*
  %86 = load i32, i32* %85, align 4
  %tmp0_v2.i78.i.i = shl i32 %86, 2
  store i32 %tmp0_v2.i78.i.i, i32* %42, align 16
  store i32 134517989, i32* %43, align 4
  %arg.i.i18.i = load i32, i32* %42, align 16
  %87 = tail call i32 @malloc(i32 %arg.i.i18.i)
  %tmp2_v.i116.i.i = add i32 %tmp0_v.i15.i, -16512
  %88 = inttoptr i32 %tmp2_v.i116.i.i to i32*
  store i32 %87, i32* %88, align 16
  store i32 0, i32* %48, align 16
  %tmp2_v2.i119.i.i = add i32 %tmp0_v.i15.i, -16524
  %89 = inttoptr i32 %tmp2_v2.i119.i.i to i32*
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %48, align 16
  %91 = load i32, i32* %45, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %BB_8049538.i.preheader.lr.ph.i, label %Func_split.exit

BB_8049538.i.preheader.lr.ph.i:                   ; preds = %BB_80494D1.i.i
  %tmp2_v7.i278.i.i = add i32 %tmp0_v.i15.i, -16556
  %93 = inttoptr i32 %tmp2_v7.i278.i.i to i32*
  %tmp2_v.i284.i.i = add i32 %tmp0_v.i15.i, -16520
  %94 = inttoptr i32 %tmp2_v.i284.i.i to i32*
  %tmp2_v5.i227.i.i = add i32 %tmp0_v.i15.i, -16500
  %tmp2_v.i96.i.i = add i32 %tmp0_v.i15.i, -16508
  %95 = inttoptr i32 %tmp2_v.i96.i.i to i32*
  br label %BB_8049538.i.preheader.i

BB_804940C.i.i:                                   ; preds = %BB_8049436.i.i, %BB_804943D.i.preheader.i
  %96 = phi i32 [ %tmp0_v1.i170.i.i, %BB_8049436.i.i ], [ %58, %BB_804943D.i.preheader.i ]
  %97 = load i32, i32* %33, align 4
  %tmp0_v3.i125.i.i = add i32 %97, %96
  %98 = inttoptr i32 %tmp0_v3.i125.i.i to i8*
  %99 = load i8, i8* %98, align 1
  %tmp0_v5.i127.i.i = sext i8 %99 to i32
  store i32 %tmp0_v5.i127.i.i, i32* %143, align 4
  %100 = load i32, i32* %35, align 8
  store i32 %100, i32* %42, align 16
  store i32 134517807, i32* %43, align 4
  %arg.i.i21.i = load i32, i32* %42, align 16
  %arg2.i.i22.i = load i32, i32* %143, align 4
  %101 = tail call i32 @strchr(i32 %arg.i.i21.i, i32 %arg2.i.i22.i)
  %102 = icmp eq i32 %101, 0
  %.pre.pre.i = load i32, i32* %48, align 16
  br i1 %102, label %BB_804944E.i.i, label %BB_8049436.i.i

BB_804945C.i.i:                                   ; preds = %BB_8049486.i.i, %BB_804944E.i.i
  %103 = phi i32 [ %tmp0_v1.i160.i.i, %BB_8049486.i.i ], [ %54, %BB_804944E.i.i ]
  %104 = load i32, i32* %33, align 4
  %tmp0_v3.i140.i.i = add i32 %104, %103
  %105 = inttoptr i32 %tmp0_v3.i140.i.i to i8*
  %106 = load i8, i8* %105, align 1
  %tmp0_v5.i142.i.i = sext i8 %106 to i32
  store i32 %tmp0_v5.i142.i.i, i32* %143, align 4
  %107 = load i32, i32* %35, align 8
  store i32 %107, i32* %42, align 16
  store i32 134517887, i32* %43, align 4
  %arg.i.i25.i = load i32, i32* %42, align 16
  %arg2.i.i26.i = load i32, i32* %143, align 4
  %108 = tail call i32 @strchr(i32 %arg.i.i25.i, i32 %arg2.i.i26.i)
  %.not.i.i.i = icmp eq i32 %108, 0
  %109 = load i32, i32* %48, align 16
  br i1 %.not.i.i.i, label %BB_8049486.i.i, label %BB_804949E.i.loopexit.i

BB_8049486.i.i:                                   ; preds = %BB_804945C.i.i
  %tmp0_v1.i160.i.i = add i32 %109, 1
  store i32 %tmp0_v1.i160.i.i, i32* %48, align 16
  %110 = load i32, i32* %45, align 4
  %111 = icmp slt i32 %tmp0_v1.i160.i.i, %110
  br i1 %111, label %BB_804945C.i.i, label %BB_804949E.i.loopexit.i

BB_8049436.i.i:                                   ; preds = %BB_804940C.i.i
  %tmp0_v1.i170.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i170.i.i, i32* %48, align 16
  %112 = load i32, i32* %45, align 4
  %113 = icmp slt i32 %tmp0_v1.i170.i.i, %112
  br i1 %113, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_804949E.i.loopexit.i:                          ; preds = %BB_8049486.i.i, %BB_804945C.i.i
  %.pre39.i = phi i32 [ %109, %BB_804945C.i.i ], [ %tmp0_v1.i160.i.i, %BB_8049486.i.i ]
  %.pre40.i = load i32, i32* %144, align 8
  br label %BB_804949E.i.i

BB_804949E.i.i:                                   ; preds = %BB_804949E.i.loopexit.i, %BB_804944E.i.i
  %114 = phi i32 [ %.pre40.i, %BB_804949E.i.loopexit.i ], [ %53, %BB_804944E.i.i ]
  %115 = phi i32 [ %.pre39.i, %BB_804949E.i.loopexit.i ], [ %54, %BB_804944E.i.i ]
  %.not.i201.i.i = icmp sgt i32 %115, %114
  br i1 %.not.i201.i.i, label %BB_80494AC.i.i, label %BB_80494BF.i.backedge.i

BB_80494AC.i.i:                                   ; preds = %BB_804949E.i.i
  %116 = load i32, i32* %37, align 4
  %117 = inttoptr i32 %116 to i32*
  %118 = load i32, i32* %117, align 4
  %tmp2_v2.i207.i.i = add i32 %118, 1
  store i32 %tmp2_v2.i207.i.i, i32* %117, align 4
  %.pre41.i = load i32, i32* %48, align 16
  br label %BB_80494BF.i.backedge.i

BB_80494BF.i.backedge.i:                          ; preds = %BB_80494AC.i.i, %BB_804949E.i.i
  %119 = phi i32 [ %.pre41.i, %BB_80494AC.i.i ], [ %115, %BB_804949E.i.i ]
  %120 = load i32, i32* %45, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %BB_804943D.i.preheader.i, label %BB_80494D1.i.i

BB_804957F.i.i:                                   ; preds = %BB_8049555.i.i
  %122 = load i32, i32* %48, align 16
  %123 = load i32, i32* %33, align 4
  %tmp0_v3.i225.i.i = add i32 %123, %122
  %124 = inttoptr i32 %tmp0_v3.i225.i.i to i8*
  %125 = load i8, i8* %124, align 1
  %126 = load i32, i32* %94, align 8
  %tmp0_v8.i.i.i = add i32 %126, %tmp2_v5.i227.i.i
  %127 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %125, i8* %127, align 1
  %128 = load i32, i32* %48, align 16
  %tmp0_v11.i.i.i = add i32 %128, 1
  store i32 %tmp0_v11.i.i.i, i32* %48, align 16
  %129 = load i32, i32* %94, align 8
  %tmp0_v14.i232.i.i = add i32 %129, 1
  store i32 %tmp0_v14.i232.i.i, i32* %94, align 8
  %130 = load i32, i32* %48, align 16
  %131 = load i32, i32* %45, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %BB_8049555.i.i, label %BB_80495BF.i.i

BB_8049507.i.i:                                   ; preds = %BB_8049531.i.i, %BB_8049538.i.preheader.i
  %133 = phi i32 [ %tmp0_v1.i317.i.i, %BB_8049531.i.i ], [ %67, %BB_8049538.i.preheader.i ]
  %134 = load i32, i32* %33, align 4
  %tmp0_v3.i273.i.i = add i32 %134, %133
  %135 = inttoptr i32 %tmp0_v3.i273.i.i to i8*
  %136 = load i8, i8* %135, align 1
  %tmp0_v5.i275.i.i = sext i8 %136 to i32
  store i32 %tmp0_v5.i275.i.i, i32* %93, align 4
  %137 = load i32, i32* %35, align 8
  store i32 %137, i32* %42, align 16
  store i32 134518058, i32* %43, align 4
  %arg.i.i29.i = load i32, i32* %42, align 16
  %arg2.i.i30.i = load i32, i32* %93, align 4
  %138 = tail call i32 @strchr(i32 %arg.i.i29.i, i32 %arg2.i.i30.i)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %BB_8049549.i.i, label %BB_8049531.i.i

BB_8049549.i.i:                                   ; preds = %BB_8049531.i.i, %BB_8049507.i.i, %BB_8049538.i.preheader.i
  store i32 0, i32* %94, align 8
  %140 = load i32, i32* %48, align 16
  %141 = load i32, i32* %45, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %BB_8049555.i.i, label %BB_8049653.i.backedge.i

BB_804943D.i.preheader.lr.ph.i:                   ; preds = %0
  %tmp2_v7.i130.i.i = add i32 %tmp0_v.i15.i, -16556
  %143 = inttoptr i32 %tmp2_v7.i130.i.i to i32*
  %tmp2_v1.i25.i.i = add i32 %tmp0_v.i15.i, -16504
  %144 = inttoptr i32 %tmp2_v1.i25.i.i to i32*
  br label %BB_804943D.i.preheader.i

BB_8049531.i.i:                                   ; preds = %BB_8049507.i.i
  %145 = load i32, i32* %48, align 16
  %tmp0_v1.i317.i.i = add i32 %145, 1
  store i32 %tmp0_v1.i317.i.i, i32* %48, align 16
  %146 = load i32, i32* %45, align 4
  %147 = icmp slt i32 %tmp0_v1.i317.i.i, %146
  br i1 %147, label %BB_8049507.i.i, label %BB_8049549.i.i

Func_split.exit:                                  ; preds = %BB_80494D1.i.i, %BB_8049653.i.backedge.i
  %148 = load i32, i32* %88, align 16
  %149 = load i32, i32* %28, align 8
  %tmp2_v.i39.i = add i32 %149, -60
  %150 = inttoptr i32 %tmp2_v.i39.i to i32*
  store i32 %148, i32* %150, align 4
  %tmp2_v1.i40.i = add i32 %149, -68
  %151 = inttoptr i32 %tmp2_v1.i40.i to i32*
  %tmp2_v.i20.i = add i32 %149, -72
  %152 = inttoptr i32 %tmp2_v.i20.i to i32*
  store i32 0, i32* %151, align 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %BB_80492FF.i, label %BB_8049328.i

BB_80492FF.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %storemerge10 = phi i32 [ %tmp0_v2.i60.i, %BB_80492FF.i ], [ 0, %Func_split.exit ]
  %tmp4_v.i.i = shl i32 %storemerge10, 2
  %155 = load i32, i32* %150, align 4
  %tmp0_v3.i.i = add i32 %155, %tmp4_v.i.i
  %156 = inttoptr i32 %tmp0_v3.i.i to i32*
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %26, align 16
  store i32 134517529, i32* %27, align 4
  %arg.i.i = load i32, i32* %26, align 16
  %158 = inttoptr i32 %arg.i.i to i8*
  %159 = tail call i32 @puts(i8* nonnull dereferenceable(1) %158)
  %160 = load i32, i32* %151, align 4
  %tmp0_v2.i60.i = add i32 %160, 1
  store i32 %tmp0_v2.i60.i, i32* %151, align 4
  %161 = load i32, i32* %152, align 4
  %162 = icmp slt i32 %tmp0_v2.i60.i, %161
  br i1 %162, label %BB_80492FF.i, label %BB_8049328.i

BB_8049328.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %tmp2_v.i35.i = add i32 %149, -64
  %163 = inttoptr i32 %tmp2_v.i35.i to i32*
  store i32 0, i32* %163, align 4
  %164 = load i32, i32* %152, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %BB_8049331.i, label %BB_804935A.i

BB_804935A.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %166 = load i32, i32* %150, align 4
  store i32 %166, i32* %26, align 16
  store i32 134517605, i32* %27, align 4
  %arg.i.i8 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i8)
  ret void

BB_8049331.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %storemerge311 = phi i32 [ %tmp0_v2.i71.i, %BB_8049331.i ], [ 0, %BB_8049328.i ]
  %tmp4_v.i88.i = shl i32 %storemerge311, 2
  %167 = load i32, i32* %150, align 4
  %tmp0_v3.i91.i = add i32 %167, %tmp4_v.i88.i
  %168 = inttoptr i32 %tmp0_v3.i91.i to i32*
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %26, align 16
  store i32 134517579, i32* %27, align 4
  %arg.i.i9 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i9)
  %170 = load i32, i32* %163, align 4
  %tmp0_v2.i71.i = add i32 %170, 1
  store i32 %tmp0_v2.i71.i, i32* %163, align 4
  %171 = load i32, i32* %152, align 4
  %172 = icmp slt i32 %tmp0_v2.i71.i, %171
  br i1 %172, label %BB_8049331.i, label %BB_804935A.i
}

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

  tail call fastcc void @splitm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
