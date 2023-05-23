; Mutation 166
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.165 = constant [4 x i8] c" ,.\00"

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
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split166(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i16.i, -4
  %3 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i16.i, -8
  %4 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i21.i = add i32 %tmp0_v.i16.i, -12
  %5 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i23.i = add i32 %tmp0_v.i16.i, -16
  %6 = inttoptr i32 %tmp2_v6.i23.i to i32*
  store i32 %tmp2_v.i15.i, i32* %6, align 16
  %tmp2_v8.i24.i = add i32 %tmp0_v.i16.i, -84
  %7 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 134517361, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i16.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i16.i, -63
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1646292820, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i16.i, -59
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1864379493, i32* %12, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i16.i, -55
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1869488242, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i16.i, -51
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1869881460, i32* %14, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i16.i, -47
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 744841760, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i16.i, -43
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1634235424, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i16.i, -39
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936269428, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i16.i, -35
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701344288, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i16.i, -31
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1702195488, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i16.i, -27
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1869182067, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i16.i, -23
  %21 = inttoptr i32 %tmp2_v13.i.i to i16*
  store i16 11886, i16* %21, align 2
  %tmp2_v14.i.i = add i32 %tmp0_v.i16.i, -21
  %22 = inttoptr i32 %tmp2_v14.i.i to i8*
  store i8 0, i8* %22, align 1
  %tmp2_v15.i.i = add i32 %tmp0_v.i16.i, -80
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 0, i32* %23, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i16.i, -88
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %24, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i16.i, -92
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  %spi165 = ptrtoint[4 x i8]* @str.165 to i32
  store i32 %spi165, i32* %25, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i16.i, -96
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %26, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i16.i, -100
  %27 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517488, i32* %27, align 4
  %tmp2_v.i254.i.i = add i32 %tmp0_v.i16.i, -104
  %28 = inttoptr i32 %tmp2_v.i254.i.i to i32*
  store i32 %tmp2_v4.i19.i, i32* %28, align 8
  %tmp2_v1.i256.i.i = add i32 %tmp0_v.i16.i, -108
  %29 = inttoptr i32 %tmp2_v1.i256.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v2.i258.i.i = add i32 %tmp0_v.i16.i, -112
  %30 = inttoptr i32 %tmp2_v2.i258.i.i to i32*
  store i32 134529024, i32* %30, align 16
  %tmp2_v.i56.i.i = add i32 %tmp0_v.i16.i, -16548
  %31 = inttoptr i32 %tmp2_v.i56.i.i to i32*
  store i32 134517678, i32* %31, align 4
  %32 = load i32, i32* %26, align 16
  %tmp2_v2.i96.i.i = add i32 %tmp0_v.i16.i, -16532
  %33 = inttoptr i32 %tmp2_v2.i96.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 4
  %tmp2_v5.i99.i.i = add i32 %tmp0_v.i16.i, -16536
  %35 = inttoptr i32 %tmp2_v5.i99.i.i to i32*
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %24, align 8
  %tmp2_v8.i102.i.i = add i32 %tmp0_v.i16.i, -16540
  %37 = inttoptr i32 %tmp2_v8.i102.i.i to i32*
  store i32 %36, i32* %37, align 4
  %tmp4_v.i103.i.b.i = load i1, i1* @segs.0, align 1
  %38 = inttoptr i32 %arg_esp to i32*
  %39 = load i32, i32* %38, align 4
  %tmp2_v11.i106.i.i = add i32 %tmp0_v.i16.i, -116
  %40 = inttoptr i32 %tmp2_v11.i106.i.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %33, align 4
  %tmp2_v15.i109.i.i = add i32 %tmp0_v.i16.i, -16560
  %42 = inttoptr i32 %tmp2_v15.i109.i.i to i32*
  store i32 %41, i32* %42, align 16
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i16.i, -16564
  %43 = inttoptr i32 %tmp2_v16.i.i.i to i32*
  store i32 134517736, i32* %43, align 4
  %arg.i.i13.i = load i32, i32* %42, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i13.i)
  %tmp2_v.i290.i.i = add i32 %tmp0_v.i16.i, -16516
  %45 = inttoptr i32 %tmp2_v.i290.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %37, align 4
  %47 = inttoptr i32 %46 to i32*
  store i32 0, i32* %47, align 4
  %tmp2_v3.i294.i.i = add i32 %tmp0_v.i16.i, -16528
  %48 = inttoptr i32 %tmp2_v3.i294.i.i to i32*
  store i32 0, i32* %48, align 16
  %49 = load i32, i32* %45, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_804943D.i.preheader.lr.ph.i, label %BB_80494D1.i.i

BB_804957F.i.i:                                   ; preds = %BB_8049555.i.i
  %51 = load i32, i32* %48, align 16
  %52 = load i32, i32* %33, align 4
  %tmp0_v3.i4.i.i = add i32 %52, %51
  %53 = inttoptr i32 %tmp0_v3.i4.i.i to i8*
  %54 = load i8, i8* %53, align 1
  %55 = load i32, i32* %99, align 8
  %tmp0_v8.i.i.i = add i32 %55, %tmp2_v5.i.i.i
  %56 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %48, align 16
  %tmp0_v11.i.i.i = add i32 %57, 1
  store i32 %tmp0_v11.i.i.i, i32* %48, align 16
  %58 = load i32, i32* %99, align 8
  %tmp0_v14.i.i.i = add i32 %58, 1
  store i32 %tmp0_v14.i.i.i, i32* %99, align 8
  %59 = load i32, i32* %48, align 16
  %60 = load i32, i32* %45, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %BB_8049555.i.i, label %BB_80495BF.i.i

BB_80494AC.i.i:                                   ; preds = %BB_804949E.i.i
  %62 = load i32, i32* %37, align 4
  %63 = inttoptr i32 %62 to i32*
  %64 = load i32, i32* %63, align 4
  %tmp2_v2.i21.i.i = add i32 %64, 1
  store i32 %tmp2_v2.i21.i.i, i32* %63, align 4
  %.pre41.i = load i32, i32* %48, align 16
  br label %BB_80494BF.i.backedge.i

BB_80494BF.i.backedge.i:                          ; preds = %BB_804949E.i.i, %BB_80494AC.i.i
  %65 = phi i32 [ %.pre41.i, %BB_80494AC.i.i ], [ %135, %BB_804949E.i.i ]
  %66 = load i32, i32* %45, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %BB_804943D.i.preheader.i, label %BB_80494D1.i.i

BB_8049538.i.preheader.i:                         ; preds = %BB_8049653.i.backedge.i, %BB_8049538.i.preheader.lr.ph.i
  %68 = phi i32 [ %96, %BB_8049538.i.preheader.lr.ph.i ], [ %114, %BB_8049653.i.backedge.i ]
  %69 = phi i32 [ %95, %BB_8049538.i.preheader.lr.ph.i ], [ %113, %BB_8049653.i.backedge.i ]
  %70 = icmp slt i32 %69, %68
  br i1 %70, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_804940C.i.i:                                   ; preds = %BB_8049436.i.i, %BB_804943D.i.preheader.i
  %71 = phi i32 [ %tmp0_v1.i302.i.i, %BB_8049436.i.i ], [ %130, %BB_804943D.i.preheader.i ]
  %72 = load i32, i32* %33, align 4
  %tmp0_v3.i42.i.i = add i32 %72, %71
  %73 = inttoptr i32 %tmp0_v3.i42.i.i to i8*
  %74 = load i8, i8* %73, align 1
  %tmp0_v5.i44.i.i = sext i8 %74 to i32
  store i32 %tmp0_v5.i44.i.i, i32* %78, align 4
  %75 = load i32, i32* %35, align 8
  store i32 %75, i32* %42, align 16
  store i32 134517807, i32* %43, align 4
  %arg.i.i.i = load i32, i32* %42, align 16
  %arg2.i.i.i = load i32, i32* %78, align 4
  %76 = tail call i32 @strchr(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %77 = icmp eq i32 %76, 0
  %.pre.pre.i = load i32, i32* %48, align 16
  br i1 %77, label %BB_804944E.i.i, label %BB_8049436.i.i

BB_804943D.i.preheader.lr.ph.i:                   ; preds = %0
  %tmp2_v7.i47.i.i = add i32 %tmp0_v.i16.i, -16556
  %78 = inttoptr i32 %tmp2_v7.i47.i.i to i32*
  %tmp2_v1.i73.i.i = add i32 %tmp0_v.i16.i, -16504
  %79 = inttoptr i32 %tmp2_v1.i73.i.i to i32*
  br label %BB_804943D.i.preheader.i

BB_8049531.i.i:                                   ; preds = %BB_8049507.i.i
  %80 = load i32, i32* %48, align 16
  %tmp0_v1.i64.i.i = add i32 %80, 1
  store i32 %tmp0_v1.i64.i.i, i32* %48, align 16
  %81 = load i32, i32* %45, align 4
  %82 = icmp slt i32 %tmp0_v1.i64.i.i, %81
  br i1 %82, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_804944E.i.i:                                   ; preds = %BB_8049436.i.i, %BB_804943D.i.preheader.i, %BB_804940C.i.i
  %83 = phi i32 [ %130, %BB_804943D.i.preheader.i ], [ %tmp0_v1.i302.i.i, %BB_8049436.i.i ], [ %.pre.pre.i, %BB_804940C.i.i ]
  store i32 %83, i32* %79, align 8
  %84 = load i32, i32* %48, align 16
  %85 = load i32, i32* %45, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %BB_804945C.i.i, label %BB_804949E.i.i

BB_80495BF.ithread-pre-split.i:                   ; preds = %BB_8049555.i.i
  %.pr.i = load i32, i32* %99, align 8
  br label %BB_80495BF.i.i

BB_80495BF.i.i:                                   ; preds = %BB_80495BF.ithread-pre-split.i, %BB_804957F.i.i
  %87 = phi i32 [ %.pr.i, %BB_80495BF.ithread-pre-split.i ], [ %tmp0_v14.i.i.i, %BB_804957F.i.i ]
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %BB_8049653.i.backedge.i, label %BB_80495CC.i.i

BB_80494D1.i.i:                                   ; preds = %BB_80494BF.i.backedge.i, %0
  %89 = load i32, i32* %37, align 4
  %90 = inttoptr i32 %89 to i32*
  %91 = load i32, i32* %90, align 4
  %tmp0_v2.i137.i.i = shl i32 %91, 2
  store i32 %tmp0_v2.i137.i.i, i32* %42, align 16
  store i32 134517989, i32* %43, align 4
  %arg.i.i16.i = load i32, i32* %42, align 16
  %92 = tail call i32 @malloc(i32 %arg.i.i16.i)
  %tmp2_v.i283.i.i = add i32 %tmp0_v.i16.i, -16512
  %93 = inttoptr i32 %tmp2_v.i283.i.i to i32*
  store i32 %92, i32* %93, align 16
  store i32 0, i32* %48, align 16
  %tmp2_v2.i286.i.i = add i32 %tmp0_v.i16.i, -16524
  %94 = inttoptr i32 %tmp2_v2.i286.i.i to i32*
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* %48, align 16
  %96 = load i32, i32* %45, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %BB_8049538.i.preheader.lr.ph.i, label %Func_split.exit

BB_8049538.i.preheader.lr.ph.i:                   ; preds = %BB_80494D1.i.i
  %tmp2_v7.i319.i.i = add i32 %tmp0_v.i16.i, -16556
  %98 = inttoptr i32 %tmp2_v7.i319.i.i to i32*
  %tmp2_v.i271.i.i = add i32 %tmp0_v.i16.i, -16520
  %99 = inttoptr i32 %tmp2_v.i271.i.i to i32*
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i16.i, -16500
  %tmp2_v.i183.i.i = add i32 %tmp0_v.i16.i, -16508
  %100 = inttoptr i32 %tmp2_v.i183.i.i to i32*
  br label %BB_8049538.i.preheader.i

BB_80495CC.i.i:                                   ; preds = %BB_80495BF.i.i
  %tmp0_v2.i153.i.i = add i32 %87, %tmp2_v5.i.i.i
  %101 = inttoptr i32 %tmp0_v2.i153.i.i to i8*
  store i8 0, i8* %101, align 1
  store i32 %tmp2_v5.i.i.i, i32* %42, align 16
  store i32 134518252, i32* %43, align 4
  %arg.i.i19.i = load i32, i32* %42, align 16
  %102 = tail call i32 @strlen(i32 %arg.i.i19.i)
  %tmp0_v1.i181.i.i = add i32 %102, 1
  store i32 %tmp0_v1.i181.i.i, i32* %100, align 4
  %103 = load i32, i32* %94, align 4
  %tmp4_v.i188.i.i = shl i32 %103, 2
  %104 = load i32, i32* %93, align 16
  %tmp2_v8.i191.i.i = add i32 %tmp4_v.i188.i.i, %104
  store i32 %tmp0_v1.i181.i.i, i32* %42, align 16
  store i32 134518301, i32* %43, align 4
  %arg.i.i22.i = load i32, i32* %42, align 16
  %105 = tail call i32 @malloc(i32 %arg.i.i22.i)
  %106 = inttoptr i32 %tmp2_v8.i191.i.i to i32*
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %94, align 4
  %tmp4_v.i.i.i7 = shl i32 %107, 2
  %108 = load i32, i32* %93, align 16
  %tmp0_v4.i.i.i = add i32 %108, %tmp4_v.i.i.i7
  %109 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %110 = load i32, i32* %109, align 4
  store i32 %tmp2_v5.i.i.i, i32* %98, align 4
  store i32 %110, i32* %42, align 16
  store i32 134518345, i32* %43, align 4
  %arg.i.i24.i = load i32, i32* %42, align 16
  %arg2.i.i25.i = load i32, i32* %98, align 4
  %111 = tail call i32 @strcpy(i32 %arg.i.i24.i, i32 %arg2.i.i25.i)
  %112 = load i32, i32* %94, align 4
  %tmp0_v2.i11.i.i = add i32 %112, 1
  store i32 %tmp0_v2.i11.i.i, i32* %94, align 4
  br label %BB_8049653.i.backedge.i

BB_8049653.i.backedge.i:                          ; preds = %BB_8049549.i.i, %BB_80495CC.i.i, %BB_80495BF.i.i
  %113 = load i32, i32* %48, align 16
  %114 = load i32, i32* %45, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %BB_8049538.i.preheader.i, label %Func_split.exit

BB_8049555.i.i:                                   ; preds = %BB_8049549.i.i, %BB_804957F.i.i
  %116 = phi i32 [ %59, %BB_804957F.i.i ], [ %136, %BB_8049549.i.i ]
  %117 = load i32, i32* %33, align 4
  %tmp0_v3.i164.i.i = add i32 %117, %116
  %118 = inttoptr i32 %tmp0_v3.i164.i.i to i8*
  %119 = load i8, i8* %118, align 1
  %tmp0_v5.i166.i.i = sext i8 %119 to i32
  store i32 %tmp0_v5.i166.i.i, i32* %98, align 4
  %120 = load i32, i32* %35, align 8
  store i32 %120, i32* %42, align 16
  store i32 134518136, i32* %43, align 4
  %arg.i.i26.i = load i32, i32* %42, align 16
  %arg2.i.i27.i = load i32, i32* %98, align 4
  %121 = tail call i32 @strchr(i32 %arg.i.i26.i, i32 %arg2.i.i27.i)
  %.not.i251.i.i = icmp eq i32 %121, 0
  br i1 %.not.i251.i.i, label %BB_804957F.i.i, label %BB_80495BF.ithread-pre-split.i

BB_804945C.i.i:                                   ; preds = %BB_8049486.i.i, %BB_804944E.i.i
  %122 = phi i32 [ %tmp0_v1.i233.i.i, %BB_8049486.i.i ], [ %84, %BB_804944E.i.i ]
  %123 = load i32, i32* %33, align 4
  %tmp0_v3.i199.i.i = add i32 %123, %122
  %124 = inttoptr i32 %tmp0_v3.i199.i.i to i8*
  %125 = load i8, i8* %124, align 1
  %tmp0_v5.i201.i.i = sext i8 %125 to i32
  store i32 %tmp0_v5.i201.i.i, i32* %78, align 4
  %126 = load i32, i32* %35, align 8
  store i32 %126, i32* %42, align 16
  store i32 134517887, i32* %43, align 4
  %arg.i.i30.i = load i32, i32* %42, align 16
  %arg2.i.i31.i = load i32, i32* %78, align 4
  %127 = tail call i32 @strchr(i32 %arg.i.i30.i, i32 %arg2.i.i31.i)
  %.not.i.i.i = icmp eq i32 %127, 0
  %128 = load i32, i32* %48, align 16
  br i1 %.not.i.i.i, label %BB_8049486.i.i, label %BB_804949E.i.loopexit.i

BB_804943D.i.preheader.i:                         ; preds = %BB_804943D.i.preheader.lr.ph.i, %BB_80494BF.i.backedge.i
  %129 = phi i32 [ %49, %BB_804943D.i.preheader.lr.ph.i ], [ %66, %BB_80494BF.i.backedge.i ]
  %130 = phi i32 [ 0, %BB_804943D.i.preheader.lr.ph.i ], [ %65, %BB_80494BF.i.backedge.i ]
  %131 = icmp slt i32 %130, %129
  br i1 %131, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_8049486.i.i:                                   ; preds = %BB_804945C.i.i
  %tmp0_v1.i233.i.i = add i32 %128, 1
  store i32 %tmp0_v1.i233.i.i, i32* %48, align 16
  %132 = load i32, i32* %45, align 4
  %133 = icmp slt i32 %tmp0_v1.i233.i.i, %132
  br i1 %133, label %BB_804945C.i.i, label %BB_804949E.i.loopexit.i

BB_804949E.i.loopexit.i:                          ; preds = %BB_8049486.i.i, %BB_804945C.i.i
  %.pre39.i = phi i32 [ %128, %BB_804945C.i.i ], [ %tmp0_v1.i233.i.i, %BB_8049486.i.i ]
  %.pre40.i = load i32, i32* %79, align 8
  br label %BB_804949E.i.i

BB_804949E.i.i:                                   ; preds = %BB_804949E.i.loopexit.i, %BB_804944E.i.i
  %134 = phi i32 [ %.pre40.i, %BB_804949E.i.loopexit.i ], [ %83, %BB_804944E.i.i ]
  %135 = phi i32 [ %.pre39.i, %BB_804949E.i.loopexit.i ], [ %84, %BB_804944E.i.i ]
  %.not.i246.i.i = icmp sgt i32 %135, %134
  br i1 %.not.i246.i.i, label %BB_80494AC.i.i, label %BB_80494BF.i.backedge.i

BB_8049549.i.i:                                   ; preds = %BB_8049507.i.i, %BB_8049531.i.i, %BB_8049538.i.preheader.i
  store i32 0, i32* %99, align 8
  %136 = load i32, i32* %48, align 16
  %137 = load i32, i32* %45, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %BB_8049555.i.i, label %BB_8049653.i.backedge.i

BB_8049436.i.i:                                   ; preds = %BB_804940C.i.i
  %tmp0_v1.i302.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i302.i.i, i32* %48, align 16
  %139 = load i32, i32* %45, align 4
  %140 = icmp slt i32 %tmp0_v1.i302.i.i, %139
  br i1 %140, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_8049507.i.i:                                   ; preds = %BB_8049531.i.i, %BB_8049538.i.preheader.i
  %141 = phi i32 [ %tmp0_v1.i64.i.i, %BB_8049531.i.i ], [ %69, %BB_8049538.i.preheader.i ]
  %142 = load i32, i32* %33, align 4
  %tmp0_v3.i314.i.i = add i32 %142, %141
  %143 = inttoptr i32 %tmp0_v3.i314.i.i to i8*
  %144 = load i8, i8* %143, align 1
  %tmp0_v5.i316.i.i = sext i8 %144 to i32
  store i32 %tmp0_v5.i316.i.i, i32* %98, align 4
  %145 = load i32, i32* %35, align 8
  store i32 %145, i32* %42, align 16
  store i32 134518058, i32* %43, align 4
  %arg.i.i34.i = load i32, i32* %42, align 16
  %arg2.i.i35.i = load i32, i32* %98, align 4
  %146 = tail call i32 @strchr(i32 %arg.i.i34.i, i32 %arg2.i.i35.i)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %BB_8049549.i.i, label %BB_8049531.i.i

Func_split.exit:                                  ; preds = %BB_8049653.i.backedge.i, %BB_80494D1.i.i
  %148 = load i32, i32* %93, align 16
  %149 = load i32, i32* %28, align 8
  %tmp2_v.i95.i = add i32 %149, -60
  %150 = inttoptr i32 %tmp2_v.i95.i to i32*
  store i32 %148, i32* %150, align 4
  %tmp2_v1.i96.i = add i32 %149, -68
  %151 = inttoptr i32 %tmp2_v1.i96.i to i32*
  %tmp2_v.i.i = add i32 %149, -72
  %152 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %151, align 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %BB_80492FF.i, label %BB_8049328.i

BB_8049328.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %tmp2_v.i38.i = add i32 %149, -64
  %155 = inttoptr i32 %tmp2_v.i38.i to i32*
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %152, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %BB_8049331.i, label %BB_804935A.i

BB_80492FF.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %storemerge10 = phi i32 [ %tmp0_v2.i9.i, %BB_80492FF.i ], [ 0, %Func_split.exit ]
  %tmp4_v.i42.i = shl i32 %storemerge10, 2
  %158 = load i32, i32* %150, align 4
  %tmp0_v3.i.i = add i32 %158, %tmp4_v.i42.i
  %159 = inttoptr i32 %tmp0_v3.i.i to i32*
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %26, align 16
  store i32 134517529, i32* %27, align 4
  %arg.i.i = load i32, i32* %26, align 16
  %161 = inttoptr i32 %arg.i.i to i8*
  %162 = tail call i32 @puts(i8* nonnull dereferenceable(1) %161)
  %163 = load i32, i32* %151, align 4
  %tmp0_v2.i9.i = add i32 %163, 1
  store i32 %tmp0_v2.i9.i, i32* %151, align 4
  %164 = load i32, i32* %152, align 4
  %165 = icmp slt i32 %tmp0_v2.i9.i, %164
  br i1 %165, label %BB_80492FF.i, label %BB_8049328.i

BB_804935A.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %166 = load i32, i32* %150, align 4
  store i32 %166, i32* %26, align 16
  store i32 134517605, i32* %27, align 4
  %arg.i.i8 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i8)
  ret void

BB_8049331.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %storemerge311 = phi i32 [ %tmp0_v2.i30.i, %BB_8049331.i ], [ 0, %BB_8049328.i ]
  %tmp4_v.i83.i = shl i32 %storemerge311, 2
  %167 = load i32, i32* %150, align 4
  %tmp0_v3.i86.i = add i32 %167, %tmp4_v.i83.i
  %168 = inttoptr i32 %tmp0_v3.i86.i to i32*
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %26, align 16
  store i32 134517579, i32* %27, align 4
  %arg.i.i9 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i9)
  %170 = load i32, i32* %155, align 4
  %tmp0_v2.i30.i = add i32 %170, 1
  store i32 %tmp0_v2.i30.i, i32* %155, align 4
  %171 = load i32, i32* %152, align 4
  %172 = icmp slt i32 %tmp0_v2.i30.i, %171
  br i1 %172, label %BB_8049331.i, label %BB_804935A.i
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

  tail call fastcc void @split166(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
