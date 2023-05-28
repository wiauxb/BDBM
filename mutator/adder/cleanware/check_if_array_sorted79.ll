; Mutation 79
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack78 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.70 = constant [17 x i8] c"\61\72\72\61\79\32\20\69\73\20\73\6f\72\74\65\64\00"
@str.bis.71 = constant [17 x i8] c"\61\72\72\61\79\31\20\69\73\20\73\6f\72\74\65\64\00"
@str.bis.72 = constant [21 x i8] c"\61\72\72\61\79\32\20\69\73\20\64\65\73\63\65\6e\64\69\6e\67\00"
@str.bis.73 = constant [4 x i8] c"\05\52\2b\00"
@str.bis.74 = constant [22 x i8] c"\61\72\72\61\79\31\20\6e\6f\74\20\64\65\73\63\65\6e\64\69\6e\67\00"
@str.bis.75 = constant [4 x i8] c"\05\52\2b\00"
@str.bis.76 = constant [21 x i8] c"\61\72\72\61\79\32\20\6e\6f\74\20\61\73\63\65\6e\64\69\6e\67\00"
@str.bis.77 = constant [20 x i8] c"\61\72\72\61\79\31\20\69\73\20\61\73\63\65\6e\64\69\6e\67\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse
define internal fastcc void @check_if_array_sorted79(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_804929C.exit.i:
  %tmp2_v.i115.i = add i32 %arg_esp, 4
  %tmp0_v.i116.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i117.i = add i32 %tmp0_v.i116.i, -4
  %2 = inttoptr i32 %tmp2_v3.i117.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i118.i = add i32 %tmp0_v.i116.i, -8
  %3 = inttoptr i32 %tmp2_v4.i118.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i120.i = add i32 %tmp0_v.i116.i, -12
  %4 = inttoptr i32 %tmp2_v5.i120.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i122.i = add i32 %tmp0_v.i116.i, -16
  %5 = inttoptr i32 %tmp2_v6.i122.i to i32*
  store i32 %tmp2_v.i115.i, i32* %5, align 16
  %tmp2_v8.i123.i = add i32 %tmp0_v.i116.i, -116
  %6 = inttoptr i32 %tmp2_v8.i123.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i75.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i79.i = add i32 %tmp0_v.i116.i, -20
  %9 = inttoptr i32 %tmp2_v2.i79.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i80.i = add i32 %tmp0_v.i116.i, -100
  %10 = inttoptr i32 %tmp2_v3.i80.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v4.i81.i = add i32 %tmp0_v.i116.i, -96
  %11 = inttoptr i32 %tmp2_v4.i81.i to i32*
  store i32 2, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i116.i, -92
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i116.i, -88
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i116.i, -84
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i116.i, -80
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i116.i, -76
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 7, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i116.i, -72
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 8, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i116.i, -68
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 9, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i116.i, -64
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 10, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i116.i, -60
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i116.i, -56
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 9, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i116.i, -52
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 8, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i116.i, -48
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 7, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i116.i, -44
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 6, i32* %24, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i116.i, -40
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 5, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i116.i, -36
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 4, i32* %26, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i116.i, -32
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 3, i32* %27, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i116.i, -28
  %28 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 2, i32* %28, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i116.i, -24
  %29 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 1, i32* %29, align 8
  %tmp2_v24.i.i = add i32 %tmp0_v.i116.i, -124
  %30 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 10, i32* %30, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i116.i, -128
  %31 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 %tmp2_v3.i80.i, i32* %31, align 16
  %tmp2_v27.i.i = add i32 %tmp0_v.i116.i, -132
  %32 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 134517404, i32* %32, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i116.i, -136
  %33 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i118.i, i32* %33, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i116.i, -156
  %34 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517817, i32* %34, align 4
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i116.i, -140
  %35 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %30, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %BB_804945A.i.i, label %Func_sorted_ascending.exit

BB_804945A.i.i:                                   ; preds = %BB_8049490.i.i, %Func_804929C.exit.i
  %storemerge14.i = phi i32 [ %tmp0_v1.i7.i.i, %BB_8049490.i.i ], [ 1, %Func_804929C.exit.i ]
  %tmp0_v1.i.i.i = shl i32 %storemerge14.i, 2
  %38 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i8 = add i32 %38, %tmp0_v1.i.i.i
  %tmp0_v4.i.i.i = add i32 %tmp4_v.i.i.i8, -4
  %39 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %40 = load i32, i32* %39, align 4
  %41 = inttoptr i32 %tmp4_v.i.i.i8 to i32*
  %42 = load i32, i32* %41, align 4
  %.not.i.i.i = icmp sgt i32 %40, %42
  %tmp0_v1.i7.i.i = add nuw nsw i32 %storemerge14.i, 1
  br i1 %.not.i.i.i, label %Func_sorted_ascending.exit, label %BB_8049490.i.i

BB_8049490.i.i:                                   ; preds = %BB_804945A.i.i
  store i32 %tmp0_v1.i7.i.i, i32* %35, align 4
  %43 = load i32, i32* %30, align 4
  %44 = icmp slt i32 %tmp0_v1.i7.i.i, %43
  br i1 %44, label %BB_804945A.i.i, label %Func_sorted_ascending.exit

Func_sorted_ascending.exit:                       ; preds = %BB_8049490.i.i, %BB_804945A.i.i, %Func_804929C.exit.i
  %45 = load i32, i32* %33, align 8
  %spi.bis.77 = ptrtoint[20 x i8]* @str.bis.77 to i32
  store i32 %spi.bis.77, i32* %31, align 16
  store i32 134517426, i32* %32, align 4
  %arg.i.i = load i32, i32* %31, align 16
  %46 = inttoptr i32 %arg.i.i to i8*
  %47 = tail call i32 @puts(i8* nonnull dereferenceable(1) %46)
  store i32 10, i32* %30, align 4
  %tmp2_v1.i4.i = add i32 %45, -52
  store i32 %tmp2_v1.i4.i, i32* %31, align 16
  store i32 134517463, i32* %32, align 4
  store i32 %45, i32* %33, align 8
  store i32 134517817, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %48 = load i32, i32* %30, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %BB_804945A.i.i22, label %Func_sorted_ascending.exit27

BB_804945A.i.i22:                                 ; preds = %BB_8049490.i.i23, %Func_sorted_ascending.exit
  %storemerge14.i16 = phi i32 [ %tmp0_v1.i7.i.i21, %BB_8049490.i.i23 ], [ 1, %Func_sorted_ascending.exit ]
  %tmp0_v1.i.i.i17 = shl i32 %storemerge14.i16, 2
  %50 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i18 = add i32 %50, %tmp0_v1.i.i.i17
  %tmp0_v4.i.i.i19 = add i32 %tmp4_v.i.i.i18, -4
  %51 = inttoptr i32 %tmp0_v4.i.i.i19 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = inttoptr i32 %tmp4_v.i.i.i18 to i32*
  %54 = load i32, i32* %53, align 4
  %.not.i.i.i20 = icmp sgt i32 %52, %54
  %tmp0_v1.i7.i.i21 = add nuw nsw i32 %storemerge14.i16, 1
  br i1 %.not.i.i.i20, label %Func_sorted_ascending.exit27, label %BB_8049490.i.i23

BB_8049490.i.i23:                                 ; preds = %BB_804945A.i.i22
  store i32 %tmp0_v1.i7.i.i21, i32* %35, align 4
  %55 = load i32, i32* %30, align 4
  %56 = icmp slt i32 %tmp0_v1.i7.i.i21, %55
  br i1 %56, label %BB_804945A.i.i22, label %Func_sorted_ascending.exit27

Func_sorted_ascending.exit27:                     ; preds = %BB_8049490.i.i23, %BB_804945A.i.i22, %Func_sorted_ascending.exit
  %57 = load i32, i32* %33, align 8
  %spi.bis.76 = ptrtoint[21 x i8]* @str.bis.76 to i32
  store i32 %spi.bis.76, i32* %31, align 16
  store i32 134517505, i32* %32, align 4
  %arg.i.i28 = load i32, i32* %31, align 16
  %58 = inttoptr i32 %arg.i.i28 to i8*
  %59 = tail call i32 @puts(i8* nonnull dereferenceable(1) %58)
  store i32 10, i32* %31, align 16
  store i32 134517518, i32* %32, align 4
  %arg.i.i29 = load i32, i32* %31, align 16
  %60 = tail call i32 @putchar(i32 %arg.i.i29)  nounwind 
  store i32 10, i32* %30, align 4
  %tmp2_v2.i129.i = add i32 %57, -92
  store i32 %tmp2_v2.i129.i, i32* %31, align 16
  store i32 134517535, i32* %32, align 4
  store i32 %57, i32* %33, align 8
  %spi.bis.75 = ptrtoint[4 x i8]* @str.bis.75 to i32
  store i32 %spi.bis.75, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %61 = load i32, i32* %30, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %BB_80494CF.i.i, label %Func_sorted_descending.exit

BB_8049505.i.i:                                   ; preds = %BB_80494CF.i.i
  store i32 %tmp0_v1.i24.i.i, i32* %35, align 4
  %63 = load i32, i32* %30, align 4
  %64 = icmp slt i32 %tmp0_v1.i24.i.i, %63
  br i1 %64, label %BB_80494CF.i.i, label %Func_sorted_descending.exit

BB_80494CF.i.i:                                   ; preds = %BB_8049505.i.i, %Func_sorted_ascending.exit27
  %storemerge14.i30 = phi i32 [ %tmp0_v1.i24.i.i, %BB_8049505.i.i ], [ 1, %Func_sorted_ascending.exit27 ]
  %tmp0_v1.i.i.i31 = shl i32 %storemerge14.i30, 2
  %65 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i32 = add i32 %65, %tmp0_v1.i.i.i31
  %tmp0_v4.i.i.i33 = add i32 %tmp4_v.i.i.i32, -4
  %66 = inttoptr i32 %tmp0_v4.i.i.i33 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = inttoptr i32 %tmp4_v.i.i.i32 to i32*
  %69 = load i32, i32* %68, align 4
  %.not.i.i.i34 = icmp slt i32 %67, %69
  %tmp0_v1.i24.i.i = add nuw nsw i32 %storemerge14.i30, 1
  br i1 %.not.i.i.i34, label %Func_sorted_descending.exit, label %BB_8049505.i.i

Func_sorted_descending.exit:                      ; preds = %BB_80494CF.i.i, %BB_8049505.i.i, %Func_sorted_ascending.exit27
  %70 = load i32, i32* %33, align 8
  %spi.bis.74 = ptrtoint[22 x i8]* @str.bis.74 to i32
  store i32 %spi.bis.74, i32* %31, align 16
  store i32 134517577, i32* %32, align 4
  %arg.i.i38 = load i32, i32* %31, align 16
  %71 = inttoptr i32 %arg.i.i38 to i8*
  %72 = tail call i32 @puts(i8* nonnull dereferenceable(1) %71)
  store i32 10, i32* %30, align 4
  %tmp2_v2.i49.i = add i32 %70, -52
  store i32 %tmp2_v2.i49.i, i32* %31, align 16
  store i32 134517594, i32* %32, align 4
  store i32 %70, i32* %33, align 8
  %spi.bis.73 = ptrtoint[4 x i8]* @str.bis.73 to i32
  store i32 %spi.bis.73, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %73 = load i32, i32* %30, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %BB_80494CF.i.i51, label %Func_sorted_descending.exit55

BB_8049505.i.i44:                                 ; preds = %BB_80494CF.i.i51
  store i32 %tmp0_v1.i24.i.i50, i32* %35, align 4
  %75 = load i32, i32* %30, align 4
  %76 = icmp slt i32 %tmp0_v1.i24.i.i50, %75
  br i1 %76, label %BB_80494CF.i.i51, label %Func_sorted_descending.exit55

BB_80494CF.i.i51:                                 ; preds = %BB_8049505.i.i44, %Func_sorted_descending.exit
  %storemerge14.i45 = phi i32 [ %tmp0_v1.i24.i.i50, %BB_8049505.i.i44 ], [ 1, %Func_sorted_descending.exit ]
  %tmp0_v1.i.i.i46 = shl i32 %storemerge14.i45, 2
  %77 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i47 = add i32 %77, %tmp0_v1.i.i.i46
  %tmp0_v4.i.i.i48 = add i32 %tmp4_v.i.i.i47, -4
  %78 = inttoptr i32 %tmp0_v4.i.i.i48 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = inttoptr i32 %tmp4_v.i.i.i47 to i32*
  %81 = load i32, i32* %80, align 4
  %.not.i.i.i49 = icmp slt i32 %79, %81
  %tmp0_v1.i24.i.i50 = add nuw nsw i32 %storemerge14.i45, 1
  br i1 %.not.i.i.i49, label %Func_sorted_descending.exit55, label %BB_8049505.i.i44

Func_sorted_descending.exit55:                    ; preds = %BB_80494CF.i.i51, %BB_8049505.i.i44, %Func_sorted_descending.exit
  %82 = load i32, i32* %33, align 8
  %spi.bis.72 = ptrtoint[21 x i8]* @str.bis.72 to i32
  store i32 %spi.bis.72, i32* %31, align 16
  store i32 134517616, i32* %32, align 4
  %arg.i.i56 = load i32, i32* %31, align 16
  %83 = inttoptr i32 %arg.i.i56 to i8*
  %84 = tail call i32 @puts(i8* nonnull dereferenceable(1) %83)
  store i32 10, i32* %31, align 16
  store i32 134517649, i32* %32, align 4
  %arg.i.i57 = load i32, i32* %31, align 16
  %85 = tail call i32 @putchar(i32 %arg.i.i57)  nounwind 
  store i32 10, i32* %30, align 4
  %tmp2_v2.i112.i = add i32 %82, -92
  store i32 %tmp2_v2.i112.i, i32* %31, align 16
  store i32 134517666, i32* %32, align 4
  %86 = tail call fastcc { i32, i32 } @Func_sorted(i32 %tmp2_v27.i.i, i32 %82)
  %newret = extractvalue { i32, i32 } %86, 0
  %newret2 = extractvalue { i32, i32 } %86, 1
  %87 = inttoptr i32 %newret to i32*
  %spi.bis.71 = ptrtoint[17 x i8]* @str.bis.71 to i32
  store i32 %spi.bis.71, i32* %87, align 4
  %tmp2_v2.i.i = add i32 %newret, -4
  %88 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517688, i32* %88, align 4
  %arg.i.i58 = load i32, i32* %87, align 4
  %89 = inttoptr i32 %arg.i.i58 to i8*
  %90 = tail call i32 @puts(i8* nonnull dereferenceable(1) %89)
  %tmp2_v.i62.i = add i32 %newret, 4
  %91 = inttoptr i32 %tmp2_v.i62.i to i32*
  store i32 10, i32* %91, align 4
  %tmp2_v1.i64.i = add i32 %newret2, -52
  store i32 %tmp2_v1.i64.i, i32* %87, align 4
  store i32 134517725, i32* %88, align 4
  %92 = tail call fastcc { i32, i32 } @Func_sorted(i32 %tmp2_v2.i.i, i32 %newret2)
  %newret4 = extractvalue { i32, i32 } %92, 0
  %93 = inttoptr i32 %newret4 to i32*
  %spi.bis.70 = ptrtoint[17 x i8]* @str.bis.70 to i32
  store i32 %spi.bis.70, i32* %93, align 4
  %tmp2_v2.i55.i = add i32 %newret4, -4
  %94 = inttoptr i32 %tmp2_v2.i55.i to i32*
  store i32 134517747, i32* %94, align 4
  %arg.i.i59 = load i32, i32* %93, align 4
  %95 = inttoptr i32 %arg.i.i59 to i8*
  %96 = tail call i32 @puts(i8* nonnull dereferenceable(1) %95)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind
define internal fastcc { i32, i32 } @Func_sorted(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree norecurse nosync nounwind  !retregs !11 {
Func_8049530.exit.i:
  %tmp2_v.i21.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i21.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i23.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i23.i to i32*
  store i32 134518048, i32* %1, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i.i to i32*
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, 4
  %4 = inttoptr i32 %tmp2_v3.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v5.i.i = add i32 %arg_esp, -12
  %6 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %5, i32* %6, align 4
  %tmp2_v6.i.i = add i32 %arg_esp, -16
  %7 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134518064, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %arg_esp, -20
  %8 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v.i21.i, i32* %8, align 4
  %tmp2_v1.i.i.i = add i32 %arg_esp, -40
  %9 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517817, i32* %9, align 4
  %tmp2_v.i17.i.i = add i32 %arg_esp, -24
  %10 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %BB_804945A.i.i, label %.exit

BB_804945A.i.i:                                   ; preds = %BB_8049490.i.i, %Func_8049530.exit.i
  %storemerge14.i = phi i32 [ %tmp0_v1.i7.i.i, %BB_8049490.i.i ], [ 1, %Func_8049530.exit.i ]
  %tmp0_v1.i.i.i = shl i32 %storemerge14.i, 2
  %13 = load i32, i32* %6, align 4
  %tmp4_v.i.i.i4 = add i32 %13, %tmp0_v1.i.i.i
  %tmp0_v4.i.i.i = add i32 %tmp4_v.i.i.i4, -4
  %14 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %15 = load i32, i32* %14, align 4
  %16 = inttoptr i32 %tmp4_v.i.i.i4 to i32*
  %17 = load i32, i32* %16, align 4
  %.not.i.i.i = icmp sgt i32 %15, %17
  %tmp0_v1.i7.i.i = add nuw nsw i32 %storemerge14.i, 1
  br i1 %.not.i.i.i, label %BB_8049537.i, label %BB_8049490.i.i

BB_8049490.i.i:                                   ; preds = %BB_804945A.i.i
  store i32 %tmp0_v1.i7.i.i, i32* %10, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %tmp0_v1.i7.i.i, %18
  br i1 %19, label %BB_804945A.i.i, label %.exit

BB_8049537.i:                                     ; preds = %BB_804945A.i.i
  %20 = load i32, i32* %8, align 4
  %tmp2_v.i10.i = add i32 %20, 12
  %21 = inttoptr i32 %tmp2_v.i10.i to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %1, align 4
  %tmp2_v2.i13.i = add i32 %20, 8
  %23 = inttoptr i32 %tmp2_v2.i13.i to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  store i32 134518082, i32* %7, align 4
  store i32 %20, i32* %8, align 4
  store i32 134517934, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %BB_80494CF.i.i, label %.exit

BB_8049505.i.i:                                   ; preds = %BB_80494CF.i.i
  store i32 %tmp0_v1.i24.i.i, i32* %10, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %tmp0_v1.i24.i.i, %27
  br i1 %28, label %BB_80494CF.i.i, label %.exit

BB_80494CF.i.i:                                   ; preds = %BB_8049505.i.i, %BB_8049537.i
  %storemerge14.i5 = phi i32 [ %tmp0_v1.i24.i.i, %BB_8049505.i.i ], [ 1, %BB_8049537.i ]
  %tmp0_v1.i.i.i6 = shl i32 %storemerge14.i5, 2
  %29 = load i32, i32* %6, align 4
  %tmp4_v.i.i.i7 = add i32 %29, %tmp0_v1.i.i.i6
  %tmp0_v4.i.i.i8 = add i32 %tmp4_v.i.i.i7, -4
  %30 = inttoptr i32 %tmp0_v4.i.i.i8 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = inttoptr i32 %tmp4_v.i.i.i7 to i32*
  %33 = load i32, i32* %32, align 4
  %.not.i.i.i9 = icmp slt i32 %31, %33
  %tmp0_v1.i24.i.i = add nuw nsw i32 %storemerge14.i5, 1
  br i1 %.not.i.i.i9, label %.exit, label %BB_8049505.i.i

.exit:                                            ; preds = %BB_80494CF.i.i, %BB_8049505.i.i, %BB_8049537.i, %BB_8049490.i.i, %Func_8049530.exit.i
  %r_ebp.0 = load i32, i32* %8, align 4
  %34 = inttoptr i32 %r_ebp.0 to i32*
  %35 = load i32, i32* %34, align 4
  %tmp4_v3.i.i = add i32 %r_ebp.0, 8
  %newret = insertvalue { i32, i32 } undef, i32 %tmp4_v3.i.i, 0
  %newret3 = insertvalue { i32, i32 } %newret, i32 %35, 1
  ret { i32, i32 } %newret3
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
!11 = !{i32 0, i32 2}

  tail call fastcc void @check_if_array_sorted79 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack78, i32 0, i32 8092) to i32)) nounwind
