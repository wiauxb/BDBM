; Mutation 217
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack216 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
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
declare i32 @tolower(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @anagram_checker217(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_8049254.exit.i:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i14.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i17.i = add i32 %tmp0_v.i2.i, -20
  %9 = inttoptr i32 %tmp2_v2.i17.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i2.i, -34
  %10 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 1953720652, i32* %10, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i2.i, -30
  %11 = inttoptr i32 %tmp2_v4.i19.i to i16*
  store i16 28261, i16* %11, align 2
  %tmp2_v5.i20.i = add i32 %tmp0_v.i2.i, -28
  %12 = inttoptr i32 %tmp2_v5.i20.i to i8*
  store i8 0, i8* %12, align 4
  %tmp2_v6.i21.i = add i32 %tmp0_v.i2.i, -27
  %13 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 1701603667, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i2.i, -23
  %14 = inttoptr i32 %tmp2_v7.i.i to i16*
  store i16 29806, i16* %14, align 2
  %tmp2_v8.i22.i = add i32 %tmp0_v.i2.i, -21
  %15 = inttoptr i32 %tmp2_v8.i22.i to i8*
  store i8 0, i8* %15, align 1
  %tmp2_v11.i.i = add i32 %tmp0_v.i2.i, -60
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v6.i21.i, i32* %16, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i2.i, -64
  %17 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i18.i, i32* %17, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i2.i, -68
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517332, i32* %18, align 4
  %tmp2_v.i128.i.i = add i32 %tmp0_v.i2.i, -72
  %19 = inttoptr i32 %tmp2_v.i128.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %19, align 8
  %tmp2_v1.i130.i.i = add i32 %tmp0_v.i2.i, -76
  %20 = inttoptr i32 %tmp2_v1.i130.i.i to i32*
  store i32 0, i32* %20, align 4
  %tmp2_v2.i132.i.i = add i32 %tmp0_v.i2.i, -80
  %21 = inttoptr i32 %tmp2_v2.i132.i.i to i32*
  store i32 134529024, i32* %21, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i2.i, -340
  %22 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517429, i32* %22, align 4
  %23 = load i32, i32* %17, align 16
  %tmp2_v2.i141.i.i = add i32 %tmp0_v.i2.i, -324
  %24 = inttoptr i32 %tmp2_v2.i141.i.i to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %16, align 4
  %tmp2_v5.i144.i.i = add i32 %tmp0_v.i2.i, -328
  %26 = inttoptr i32 %tmp2_v5.i144.i.i to i32*
  store i32 %25, i32* %26, align 8
  %tmp4_v.i145.i.b.i = load i1, i1* @segs.0, align 1
  %27 = inttoptr i32 %arg_esp to i32*
  %28 = load i32, i32* %27, align 4
  %tmp2_v8.i148.i.i = add i32 %tmp0_v.i2.i, -84
  %29 = inttoptr i32 %tmp2_v8.i148.i.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %24, align 4
  %tmp2_v12.i.i.i = add i32 %tmp0_v.i2.i, -352
  %31 = inttoptr i32 %tmp2_v12.i.i.i to i32*
  store i32 %30, i32* %31, align 16
  %tmp2_v13.i.i.i = add i32 %tmp0_v.i2.i, -356
  %32 = inttoptr i32 %tmp2_v13.i.i.i to i32*
  store i32 134517478, i32* %32, align 4
  %arg.i.i.i = load i32, i32* %31, align 16
  %33 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i2.i, -308
  %34 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %26, align 8
  store i32 %35, i32* %31, align 16
  store i32 134517501, i32* %32, align 4
  %arg.i.i12.i = load i32, i32* %31, align 16
  %36 = tail call i32 @strlen(i32 %arg.i.i12.i)
  %tmp2_v.i39.i.i = add i32 %tmp0_v.i2.i, -304
  %37 = inttoptr i32 %tmp2_v.i39.i.i to i32*
  store i32 %36, i32* %37, align 16
  %tmp2_v1.i41.i.i = add i32 %tmp0_v.i2.i, -292
  %38 = inttoptr i32 %tmp2_v1.i41.i.i to i32*
  store i32 0, i32* %38, align 4
  %tmp0_v.i96.i.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.i = shl i32 %tmp0_v.i96.i.i, 2
  %tmp4_v.i98.i.i = add i32 %tmp0_v1.i97.i.i, %tmp2_v1.i41.i.i
  %39 = inttoptr i32 %tmp4_v.i98.i.i to i32*
  store i32 0, i32* %39, align 4
  %tmp0_v.i96.i.1.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.1.i = shl i32 %tmp0_v.i96.i.1.i, 2
  %tmp4_v.i98.i.1.i = add i32 %tmp0_v1.i97.i.1.i, %tmp4_v.i98.i.i
  %40 = inttoptr i32 %tmp4_v.i98.i.1.i to i32*
  store i32 0, i32* %40, align 4
  %tmp0_v.i96.i.2.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.2.i = shl i32 %tmp0_v.i96.i.2.i, 2
  %tmp4_v.i98.i.2.i = add i32 %tmp0_v1.i97.i.2.i, %tmp4_v.i98.i.1.i
  %41 = inttoptr i32 %tmp4_v.i98.i.2.i to i32*
  store i32 0, i32* %41, align 4
  %tmp0_v.i96.i.3.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.3.i = shl i32 %tmp0_v.i96.i.3.i, 2
  %tmp4_v.i98.i.3.i = add i32 %tmp0_v1.i97.i.3.i, %tmp4_v.i98.i.2.i
  %42 = inttoptr i32 %tmp4_v.i98.i.3.i to i32*
  store i32 0, i32* %42, align 4
  %tmp0_v.i96.i.4.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.4.i = shl i32 %tmp0_v.i96.i.4.i, 2
  %tmp4_v.i98.i.4.i = add i32 %tmp0_v1.i97.i.4.i, %tmp4_v.i98.i.3.i
  %43 = inttoptr i32 %tmp4_v.i98.i.4.i to i32*
  store i32 0, i32* %43, align 4
  %tmp0_v.i96.i.5.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.5.i = shl i32 %tmp0_v.i96.i.5.i, 2
  %tmp4_v.i98.i.5.i = add i32 %tmp0_v1.i97.i.5.i, %tmp4_v.i98.i.4.i
  %44 = inttoptr i32 %tmp4_v.i98.i.5.i to i32*
  store i32 0, i32* %44, align 4
  %tmp0_v.i96.i.6.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.6.i = shl i32 %tmp0_v.i96.i.6.i, 2
  %tmp4_v.i98.i.6.i = add i32 %tmp0_v1.i97.i.6.i, %tmp4_v.i98.i.5.i
  %45 = inttoptr i32 %tmp4_v.i98.i.6.i to i32*
  store i32 0, i32* %45, align 4
  %tmp0_v.i96.i.7.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.7.i = shl i32 %tmp0_v.i96.i.7.i, 2
  %tmp4_v.i98.i.7.i = add i32 %tmp0_v1.i97.i.7.i, %tmp4_v.i98.i.6.i
  %46 = inttoptr i32 %tmp4_v.i98.i.7.i to i32*
  store i32 0, i32* %46, align 4
  %tmp0_v.i96.i.8.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.8.i = shl i32 %tmp0_v.i96.i.8.i, 2
  %tmp4_v.i98.i.8.i = add i32 %tmp0_v1.i97.i.8.i, %tmp4_v.i98.i.7.i
  %47 = inttoptr i32 %tmp4_v.i98.i.8.i to i32*
  store i32 0, i32* %47, align 4
  %tmp0_v.i96.i.9.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.9.i = shl i32 %tmp0_v.i96.i.9.i, 2
  %tmp4_v.i98.i.9.i = add i32 %tmp0_v1.i97.i.9.i, %tmp4_v.i98.i.8.i
  %48 = inttoptr i32 %tmp4_v.i98.i.9.i to i32*
  store i32 0, i32* %48, align 4
  %tmp0_v.i96.i.10.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.10.i = shl i32 %tmp0_v.i96.i.10.i, 2
  %tmp4_v.i98.i.10.i = add i32 %tmp0_v1.i97.i.10.i, %tmp4_v.i98.i.9.i
  %49 = inttoptr i32 %tmp4_v.i98.i.10.i to i32*
  store i32 0, i32* %49, align 4
  %tmp0_v.i96.i.11.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.11.i = shl i32 %tmp0_v.i96.i.11.i, 2
  %tmp4_v.i98.i.11.i = add i32 %tmp0_v1.i97.i.11.i, %tmp4_v.i98.i.10.i
  %50 = inttoptr i32 %tmp4_v.i98.i.11.i to i32*
  store i32 0, i32* %50, align 4
  %tmp0_v.i96.i.12.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.12.i = shl i32 %tmp0_v.i96.i.12.i, 2
  %tmp4_v.i98.i.12.i = add i32 %tmp0_v1.i97.i.12.i, %tmp4_v.i98.i.11.i
  %51 = inttoptr i32 %tmp4_v.i98.i.12.i to i32*
  store i32 0, i32* %51, align 4
  %tmp0_v.i96.i.13.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.13.i = shl i32 %tmp0_v.i96.i.13.i, 2
  %tmp4_v.i98.i.13.i = add i32 %tmp0_v1.i97.i.13.i, %tmp4_v.i98.i.12.i
  %52 = inttoptr i32 %tmp4_v.i98.i.13.i to i32*
  store i32 0, i32* %52, align 4
  %tmp0_v.i96.i.14.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.14.i = shl i32 %tmp0_v.i96.i.14.i, 2
  %tmp4_v.i98.i.14.i = add i32 %tmp0_v1.i97.i.14.i, %tmp4_v.i98.i.13.i
  %53 = inttoptr i32 %tmp4_v.i98.i.14.i to i32*
  store i32 0, i32* %53, align 4
  %tmp0_v.i96.i.15.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.15.i = shl i32 %tmp0_v.i96.i.15.i, 2
  %tmp4_v.i98.i.15.i = add i32 %tmp0_v1.i97.i.15.i, %tmp4_v.i98.i.14.i
  %54 = inttoptr i32 %tmp4_v.i98.i.15.i to i32*
  store i32 0, i32* %54, align 4
  %tmp0_v.i96.i.16.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.16.i = shl i32 %tmp0_v.i96.i.16.i, 2
  %tmp4_v.i98.i.16.i = add i32 %tmp0_v1.i97.i.16.i, %tmp4_v.i98.i.15.i
  %55 = inttoptr i32 %tmp4_v.i98.i.16.i to i32*
  store i32 0, i32* %55, align 4
  %tmp0_v.i96.i.17.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.17.i = shl i32 %tmp0_v.i96.i.17.i, 2
  %tmp4_v.i98.i.17.i = add i32 %tmp0_v1.i97.i.17.i, %tmp4_v.i98.i.16.i
  %56 = inttoptr i32 %tmp4_v.i98.i.17.i to i32*
  store i32 0, i32* %56, align 4
  %tmp0_v.i96.i.18.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.18.i = shl i32 %tmp0_v.i96.i.18.i, 2
  %tmp4_v.i98.i.18.i = add i32 %tmp0_v1.i97.i.18.i, %tmp4_v.i98.i.17.i
  %57 = inttoptr i32 %tmp4_v.i98.i.18.i to i32*
  store i32 0, i32* %57, align 4
  %tmp0_v.i96.i.19.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.19.i = shl i32 %tmp0_v.i96.i.19.i, 2
  %tmp4_v.i98.i.19.i = add i32 %tmp0_v1.i97.i.19.i, %tmp4_v.i98.i.18.i
  %58 = inttoptr i32 %tmp4_v.i98.i.19.i to i32*
  store i32 0, i32* %58, align 4
  %tmp0_v.i96.i.20.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.20.i = shl i32 %tmp0_v.i96.i.20.i, 2
  %tmp4_v.i98.i.20.i = add i32 %tmp0_v1.i97.i.20.i, %tmp4_v.i98.i.19.i
  %59 = inttoptr i32 %tmp4_v.i98.i.20.i to i32*
  store i32 0, i32* %59, align 4
  %tmp0_v.i96.i.21.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.21.i = shl i32 %tmp0_v.i96.i.21.i, 2
  %tmp4_v.i98.i.21.i = add i32 %tmp0_v1.i97.i.21.i, %tmp4_v.i98.i.20.i
  %60 = inttoptr i32 %tmp4_v.i98.i.21.i to i32*
  store i32 0, i32* %60, align 4
  %tmp0_v.i96.i.22.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.22.i = shl i32 %tmp0_v.i96.i.22.i, 2
  %tmp4_v.i98.i.22.i = add i32 %tmp0_v1.i97.i.22.i, %tmp4_v.i98.i.21.i
  %61 = inttoptr i32 %tmp4_v.i98.i.22.i to i32*
  store i32 0, i32* %61, align 4
  %tmp0_v.i96.i.23.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.23.i = shl i32 %tmp0_v.i96.i.23.i, 2
  %tmp4_v.i98.i.23.i = add i32 %tmp0_v1.i97.i.23.i, %tmp4_v.i98.i.22.i
  %62 = inttoptr i32 %tmp4_v.i98.i.23.i to i32*
  store i32 0, i32* %62, align 4
  %tmp0_v.i96.i.24.i = load i32, i32* @df, align 4
  %tmp0_v1.i97.i.24.i = shl i32 %tmp0_v.i96.i.24.i, 2
  %tmp4_v.i98.i.24.i = add i32 %tmp0_v1.i97.i.24.i, %tmp4_v.i98.i.23.i
  %63 = inttoptr i32 %tmp4_v.i98.i.24.i to i32*
  store i32 0, i32* %63, align 4
  %tmp2_v.i81.i.i = add i32 %tmp0_v.i2.i, -188
  %64 = inttoptr i32 %tmp2_v.i81.i.i to i32*
  store i32 0, i32* %64, align 4
  %tmp0_v.i86.i.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.i = shl i32 %tmp0_v.i86.i.i, 2
  %tmp4_v.i88.i.i = add i32 %tmp0_v1.i87.i.i, %tmp2_v.i81.i.i
  %65 = inttoptr i32 %tmp4_v.i88.i.i to i32*
  store i32 0, i32* %65, align 4
  %tmp0_v.i86.i.1.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.1.i = shl i32 %tmp0_v.i86.i.1.i, 2
  %tmp4_v.i88.i.1.i = add i32 %tmp0_v1.i87.i.1.i, %tmp4_v.i88.i.i
  %66 = inttoptr i32 %tmp4_v.i88.i.1.i to i32*
  store i32 0, i32* %66, align 4
  %tmp0_v.i86.i.2.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.2.i = shl i32 %tmp0_v.i86.i.2.i, 2
  %tmp4_v.i88.i.2.i = add i32 %tmp0_v1.i87.i.2.i, %tmp4_v.i88.i.1.i
  %67 = inttoptr i32 %tmp4_v.i88.i.2.i to i32*
  store i32 0, i32* %67, align 4
  %tmp0_v.i86.i.3.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.3.i = shl i32 %tmp0_v.i86.i.3.i, 2
  %tmp4_v.i88.i.3.i = add i32 %tmp0_v1.i87.i.3.i, %tmp4_v.i88.i.2.i
  %68 = inttoptr i32 %tmp4_v.i88.i.3.i to i32*
  store i32 0, i32* %68, align 4
  %tmp0_v.i86.i.4.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.4.i = shl i32 %tmp0_v.i86.i.4.i, 2
  %tmp4_v.i88.i.4.i = add i32 %tmp0_v1.i87.i.4.i, %tmp4_v.i88.i.3.i
  %69 = inttoptr i32 %tmp4_v.i88.i.4.i to i32*
  store i32 0, i32* %69, align 4
  %tmp0_v.i86.i.5.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.5.i = shl i32 %tmp0_v.i86.i.5.i, 2
  %tmp4_v.i88.i.5.i = add i32 %tmp0_v1.i87.i.5.i, %tmp4_v.i88.i.4.i
  %70 = inttoptr i32 %tmp4_v.i88.i.5.i to i32*
  store i32 0, i32* %70, align 4
  %tmp0_v.i86.i.6.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.6.i = shl i32 %tmp0_v.i86.i.6.i, 2
  %tmp4_v.i88.i.6.i = add i32 %tmp0_v1.i87.i.6.i, %tmp4_v.i88.i.5.i
  %71 = inttoptr i32 %tmp4_v.i88.i.6.i to i32*
  store i32 0, i32* %71, align 4
  %tmp0_v.i86.i.7.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.7.i = shl i32 %tmp0_v.i86.i.7.i, 2
  %tmp4_v.i88.i.7.i = add i32 %tmp0_v1.i87.i.7.i, %tmp4_v.i88.i.6.i
  %72 = inttoptr i32 %tmp4_v.i88.i.7.i to i32*
  store i32 0, i32* %72, align 4
  %tmp0_v.i86.i.8.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.8.i = shl i32 %tmp0_v.i86.i.8.i, 2
  %tmp4_v.i88.i.8.i = add i32 %tmp0_v1.i87.i.8.i, %tmp4_v.i88.i.7.i
  %73 = inttoptr i32 %tmp4_v.i88.i.8.i to i32*
  store i32 0, i32* %73, align 4
  %tmp0_v.i86.i.9.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.9.i = shl i32 %tmp0_v.i86.i.9.i, 2
  %tmp4_v.i88.i.9.i = add i32 %tmp0_v1.i87.i.9.i, %tmp4_v.i88.i.8.i
  %74 = inttoptr i32 %tmp4_v.i88.i.9.i to i32*
  store i32 0, i32* %74, align 4
  %tmp0_v.i86.i.10.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.10.i = shl i32 %tmp0_v.i86.i.10.i, 2
  %tmp4_v.i88.i.10.i = add i32 %tmp0_v1.i87.i.10.i, %tmp4_v.i88.i.9.i
  %75 = inttoptr i32 %tmp4_v.i88.i.10.i to i32*
  store i32 0, i32* %75, align 4
  %tmp0_v.i86.i.11.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.11.i = shl i32 %tmp0_v.i86.i.11.i, 2
  %tmp4_v.i88.i.11.i = add i32 %tmp0_v1.i87.i.11.i, %tmp4_v.i88.i.10.i
  %76 = inttoptr i32 %tmp4_v.i88.i.11.i to i32*
  store i32 0, i32* %76, align 4
  %tmp0_v.i86.i.12.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.12.i = shl i32 %tmp0_v.i86.i.12.i, 2
  %tmp4_v.i88.i.12.i = add i32 %tmp0_v1.i87.i.12.i, %tmp4_v.i88.i.11.i
  %77 = inttoptr i32 %tmp4_v.i88.i.12.i to i32*
  store i32 0, i32* %77, align 4
  %tmp0_v.i86.i.13.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.13.i = shl i32 %tmp0_v.i86.i.13.i, 2
  %tmp4_v.i88.i.13.i = add i32 %tmp0_v1.i87.i.13.i, %tmp4_v.i88.i.12.i
  %78 = inttoptr i32 %tmp4_v.i88.i.13.i to i32*
  store i32 0, i32* %78, align 4
  %tmp0_v.i86.i.14.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.14.i = shl i32 %tmp0_v.i86.i.14.i, 2
  %tmp4_v.i88.i.14.i = add i32 %tmp0_v1.i87.i.14.i, %tmp4_v.i88.i.13.i
  %79 = inttoptr i32 %tmp4_v.i88.i.14.i to i32*
  store i32 0, i32* %79, align 4
  %tmp0_v.i86.i.15.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.15.i = shl i32 %tmp0_v.i86.i.15.i, 2
  %tmp4_v.i88.i.15.i = add i32 %tmp0_v1.i87.i.15.i, %tmp4_v.i88.i.14.i
  %80 = inttoptr i32 %tmp4_v.i88.i.15.i to i32*
  store i32 0, i32* %80, align 4
  %tmp0_v.i86.i.16.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.16.i = shl i32 %tmp0_v.i86.i.16.i, 2
  %tmp4_v.i88.i.16.i = add i32 %tmp0_v1.i87.i.16.i, %tmp4_v.i88.i.15.i
  %81 = inttoptr i32 %tmp4_v.i88.i.16.i to i32*
  store i32 0, i32* %81, align 4
  %tmp0_v.i86.i.17.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.17.i = shl i32 %tmp0_v.i86.i.17.i, 2
  %tmp4_v.i88.i.17.i = add i32 %tmp0_v1.i87.i.17.i, %tmp4_v.i88.i.16.i
  %82 = inttoptr i32 %tmp4_v.i88.i.17.i to i32*
  store i32 0, i32* %82, align 4
  %tmp0_v.i86.i.18.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.18.i = shl i32 %tmp0_v.i86.i.18.i, 2
  %tmp4_v.i88.i.18.i = add i32 %tmp0_v1.i87.i.18.i, %tmp4_v.i88.i.17.i
  %83 = inttoptr i32 %tmp4_v.i88.i.18.i to i32*
  store i32 0, i32* %83, align 4
  %tmp0_v.i86.i.19.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.19.i = shl i32 %tmp0_v.i86.i.19.i, 2
  %tmp4_v.i88.i.19.i = add i32 %tmp0_v1.i87.i.19.i, %tmp4_v.i88.i.18.i
  %84 = inttoptr i32 %tmp4_v.i88.i.19.i to i32*
  store i32 0, i32* %84, align 4
  %tmp0_v.i86.i.20.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.20.i = shl i32 %tmp0_v.i86.i.20.i, 2
  %tmp4_v.i88.i.20.i = add i32 %tmp0_v1.i87.i.20.i, %tmp4_v.i88.i.19.i
  %85 = inttoptr i32 %tmp4_v.i88.i.20.i to i32*
  store i32 0, i32* %85, align 4
  %tmp0_v.i86.i.21.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.21.i = shl i32 %tmp0_v.i86.i.21.i, 2
  %tmp4_v.i88.i.21.i = add i32 %tmp0_v1.i87.i.21.i, %tmp4_v.i88.i.20.i
  %86 = inttoptr i32 %tmp4_v.i88.i.21.i to i32*
  store i32 0, i32* %86, align 4
  %tmp0_v.i86.i.22.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.22.i = shl i32 %tmp0_v.i86.i.22.i, 2
  %tmp4_v.i88.i.22.i = add i32 %tmp0_v1.i87.i.22.i, %tmp4_v.i88.i.21.i
  %87 = inttoptr i32 %tmp4_v.i88.i.22.i to i32*
  store i32 0, i32* %87, align 4
  %tmp0_v.i86.i.23.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.23.i = shl i32 %tmp0_v.i86.i.23.i, 2
  %tmp4_v.i88.i.23.i = add i32 %tmp0_v1.i87.i.23.i, %tmp4_v.i88.i.22.i
  %88 = inttoptr i32 %tmp4_v.i88.i.23.i to i32*
  store i32 0, i32* %88, align 4
  %tmp0_v.i86.i.24.i = load i32, i32* @df, align 4
  %tmp0_v1.i87.i.24.i = shl i32 %tmp0_v.i86.i.24.i, 2
  %tmp4_v.i88.i.24.i = add i32 %tmp0_v1.i87.i.24.i, %tmp4_v.i88.i.23.i
  %89 = inttoptr i32 %tmp4_v.i88.i.24.i to i32*
  store i32 0, i32* %89, align 4
  %mrv.i10.i = insertvalue { i32, i32 } undef, i32 %tmp2_v12.i.i.i, 0
  %tmp2_v.i165.i.i = add i32 %tmp0_v.i2.i, -320
  %90 = inttoptr i32 %tmp2_v.i165.i.i to i32*
  store i32 0, i32* %90, align 16
  %91 = load i32, i32* %34, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %BB_8049337.i.lr.ph.i, label %BB_804938C.i.i

BB_8049398.i.i:                                   ; preds = %BB_8049398.i.lr.ph.i, %BB_8049398.i.i
  %storemerge538.i = phi i32 [ 0, %BB_8049398.i.lr.ph.i ], [ %tmp0_v13.i.i.i, %BB_8049398.i.i ]
  %93 = load i32, i32* %26, align 8
  %tmp0_v3.i32.i.i = add i32 %93, %storemerge538.i
  %94 = inttoptr i32 %tmp0_v3.i32.i.i to i8*
  %95 = load i8, i8* %94, align 1
  %tmp0_v5.i33.i.i = sext i8 %95 to i32
  store i32 %tmp0_v5.i33.i.i, i32* %116, align 4
  store i32 134517685, i32* %117, align 4
  %arg.i.i14.i = load i32, i32* %116, align 4
  %96 = tail call i32 @tolower(i32 %arg.i.i14.i)
  store i32 %96, i32* %118, align 4
  %tmp0_v3.i52.i.i = shl i32 %96, 2
  %tmp2_v5.i55.i.i = add i32 %tmp4_v.i54.i.i, %tmp0_v3.i52.i.i
  %97 = inttoptr i32 %tmp2_v5.i55.i.i to i32*
  %98 = load i32, i32* %97, align 4
  %tmp0_v7.i.i.i = add i32 %98, 1
  store i32 %tmp0_v7.i.i.i, i32* %97, align 4
  %99 = load i32, i32* %113, align 4
  %tmp0_v13.i.i.i = add i32 %99, 1
  store i32 %tmp0_v13.i.i.i, i32* %113, align 4
  %100 = load i32, i32* %37, align 16
  %101 = icmp slt i32 %tmp0_v13.i.i.i, %100
  br i1 %101, label %BB_8049398.i.i, label %Func_check_anagram.exit

BB_8049337.i.i:                                   ; preds = %BB_8049337.i.lr.ph.i, %BB_8049337.i.i
  %r_esp.0.in37.i = phi i32 [ %tmp2_v12.i.i.i, %BB_8049337.i.lr.ph.i ], [ %r_esp.0.in.i, %BB_8049337.i.i ]
  %.pn2936.i = phi i32 [ %36, %BB_8049337.i.lr.ph.i ], [ %107, %BB_8049337.i.i ]
  %mrv.i10.pn35.i = phi { i32, i32 } [ %mrv.i10.i, %BB_8049337.i.lr.ph.i ], [ %.pn.i, %BB_8049337.i.i ]
  %storemerge34.i = phi i32 [ 0, %BB_8049337.i.lr.ph.i ], [ %tmp0_v13.i120.i.i, %BB_8049337.i.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i10.pn35.i, i32 %.pn2936.i, 1
  %102 = load i32, i32* %24, align 4
  %tmp0_v3.i73.i.i = add i32 %102, %storemerge34.i
  %103 = inttoptr i32 %tmp0_v3.i73.i.i to i8*
  %104 = load i8, i8* %103, align 1
  %tmp0_v5.i75.i.i = sext i8 %104 to i32
  %105 = inttoptr i32 %r_esp.0.in37.i to i32*
  store i32 %tmp0_v5.i75.i.i, i32* %105, align 4
  %tmp2_v8.i79.i.i = add i32 %r_esp.0.in37.i, -4
  %106 = inttoptr i32 %tmp2_v8.i79.i.i to i32*
  store i32 134517588, i32* %106, align 4
  %arg.i.i17.i = load i32, i32* %105, align 4
  %107 = tail call i32 @tolower(i32 %arg.i.i17.i)
  store i32 %107, i32* %119, align 8
  %tmp0_v3.i109.i.i = shl i32 %107, 2
  %tmp2_v5.i112.i.i = add i32 %tmp4_v.i111.i.i, %tmp0_v3.i109.i.i
  %108 = inttoptr i32 %tmp2_v5.i112.i.i to i32*
  %109 = load i32, i32* %108, align 4
  %tmp0_v7.i114.i.i = add i32 %109, 1
  store i32 %tmp0_v7.i114.i.i, i32* %108, align 4
  %110 = load i32, i32* %90, align 16
  %tmp0_v13.i120.i.i = add i32 %110, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i10.pn35.i, 0
  store i32 %tmp0_v13.i120.i.i, i32* %90, align 16
  %111 = load i32, i32* %34, align 4
  %112 = icmp slt i32 %tmp0_v13.i120.i.i, %111
  br i1 %112, label %BB_8049337.i.i, label %BB_804938C.i.i

BB_804938C.i.i:                                   ; preds = %BB_8049337.i.i, %Func_8049254.exit.i
  %mrv.i10.pn.lcssa.i = phi { i32, i32 } [ %mrv.i10.i, %Func_8049254.exit.i ], [ %.pn.i, %BB_8049337.i.i ]
  %r_esp.0.in.le.i = extractvalue { i32, i32 } %mrv.i10.pn.lcssa.i, 0
  %tmp2_v.i91.i.i = add i32 %tmp0_v.i2.i, -316
  %113 = inttoptr i32 %tmp2_v.i91.i.i to i32*
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* %37, align 16
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %BB_8049398.i.lr.ph.i, label %Func_check_anagram.exit

BB_8049398.i.lr.ph.i:                             ; preds = %BB_804938C.i.i
  %116 = inttoptr i32 %r_esp.0.in.le.i to i32*
  %tmp2_v8.i35.i.i = add i32 %r_esp.0.in.le.i, -4
  %117 = inttoptr i32 %tmp2_v8.i35.i.i to i32*
  %tmp2_v.i48.i.i = add i32 %tmp0_v.i2.i, -300
  %118 = inttoptr i32 %tmp2_v.i48.i.i to i32*
  %tmp4_v.i54.i.i = add i32 %tmp0_v.i2.i, -576
  br label %BB_8049398.i.i

BB_8049337.i.lr.ph.i:                             ; preds = %Func_8049254.exit.i
  %tmp2_v.i105.i.i = add i32 %tmp0_v.i2.i, -296
  %119 = inttoptr i32 %tmp2_v.i105.i.i to i32*
  %tmp4_v.i111.i.i = add i32 %tmp0_v.i2.i, -680
  br label %BB_8049337.i.i

Func_check_anagram.exit:                          ; preds = %BB_804938C.i.i, %BB_8049398.i.i
  %tmp2_v.i135.i.i = add i32 %tmp0_v.i2.i, -312
  %120 = inttoptr i32 %tmp2_v.i135.i.i to i32*
  store i32 26, i32* %120, align 8
  %121 = load i32, i32* %21, align 16
  %tmp2_v.i10.i = add i32 %121, -8184
  store i32 %tmp2_v.i10.i, i32* %17, align 16
  store i32 134517354, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 16
  %122 = inttoptr i32 %arg.i.i to i8*
  %123 = tail call i32 @puts(i8* nonnull dereferenceable(1) %122)
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

  tail call fastcc void @anagram_checker217 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack216, i32 0, i32 8092) to i32)) nounwind