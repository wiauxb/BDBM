; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }

@fpstt = internal unnamed_addr global i32 0
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@fp_status.2 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_flds_ST0(i32 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = load i32, i32* @fpstt, align 16
  %3 = add i32 %2, 7
  %4 = and i32 %3, 7
  %5 = and i32 %0, 8388607
  %6 = lshr i32 %0, 23
  %7 = and i32 %6, 255
  %8 = lshr i32 %0, 31
  %9 = trunc i32 %6 to i8
  switch i8 %9, label %47 [
    i8 -1, label %10
    i8 0, label %37
  ]

10:                                               ; preds = %1
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %10
  %13 = and i32 %0, 2143289344
  %14 = icmp ne i32 %13, 2139095040
  %15 = and i32 %0, 4194303
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !6
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !6
  br label %21

21:                                               ; preds = %18, %12
  %22 = zext i32 %0 to i64
  %23 = shl i64 %22, 41
  %24 = icmp eq i64 %23, 0
  %25 = lshr exact i64 %23, 1
  %26 = or i64 %25, -9223372036854775808
  %27 = trunc i32 %8 to i16
  %28 = shl nuw i16 %27, 15
  %29 = or i16 %28, 32767
  %30 = select i1 %24, i64 -4611686018427387904, i64 %26
  %31 = select i1 %24, i16 -1, i16 %29
  %32 = insertvalue { i64, i16 } poison, i64 %30, 0
  br label %float32_to_floatx80.exit

33:                                               ; preds = %10
  %34 = shl nuw nsw i32 %8, 15
  %35 = trunc i32 %34 to i16
  %36 = or i16 %35, 32767
  br label %float32_to_floatx80.exit

37:                                               ; preds = %1
  %38 = icmp eq i32 %5, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %8, 15
  %41 = trunc i32 %40 to i16
  br label %float32_to_floatx80.exit

42:                                               ; preds = %37
  %ctlz.sh.i = lshr i32 %5, 1
  %ctlz.step.i = or i32 %ctlz.sh.i, %5
  %ctlz.sh1.i = lshr i32 %ctlz.step.i, 2
  %ctlz.step2.i = or i32 %ctlz.sh1.i, %ctlz.step.i
  %ctlz.sh3.i = lshr i32 %ctlz.step2.i, 4
  %ctlz.step4.i = or i32 %ctlz.sh3.i, %ctlz.step2.i
  %ctlz.sh5.i = lshr i32 %ctlz.step4.i, 8
  %ctlz.step6.i = or i32 %ctlz.sh5.i, %ctlz.step4.i
  %ctlz.sh7.i = lshr i32 %ctlz.step6.i, 16
  %ctlz.step8.i = or i32 %ctlz.sh7.i, %ctlz.step6.i
  %43 = xor i32 %ctlz.step8.i, -1
  %cppop.and1.i = and i32 %43, 1431655765
  %ctpop.sh.i = lshr i32 %43, 1
  %cppop.and2.i = and i32 %ctpop.sh.i, 1431655765
  %ctpop.step.i = add nuw i32 %cppop.and2.i, %cppop.and1.i
  %cppop.and19.i = and i32 %ctpop.step.i, 858993459
  %ctpop.sh10.i = lshr i32 %ctpop.step.i, 2
  %cppop.and211.i = and i32 %ctpop.sh10.i, 858993459
  %ctpop.step12.i = add nuw nsw i32 %cppop.and211.i, %cppop.and19.i
  %cppop.and113.i = and i32 %ctpop.step12.i, 117901063
  %ctpop.sh14.i = lshr i32 %ctpop.step12.i, 4
  %cppop.and215.i = and i32 %ctpop.sh14.i, 117901063
  %ctpop.step16.i = add nuw nsw i32 %cppop.and215.i, %cppop.and113.i
  %cppop.and117.i = and i32 %ctpop.step16.i, 983055
  %ctpop.sh18.i = lshr i32 %ctpop.step16.i, 8
  %cppop.and219.i = and i32 %ctpop.sh18.i, 983055
  %ctpop.step20.i = add nuw nsw i32 %cppop.and219.i, %cppop.and117.i
  %cppop.and121.i = and i32 %ctpop.step20.i, 31
  %ctpop.sh22.i = lshr i32 %ctpop.step20.i, 16
  %ctpop.step24.i = add nuw nsw i32 %cppop.and121.i, %ctpop.sh22.i
  %44 = add nsw i32 %ctpop.step24.i, -8
  %45 = shl i32 %5, %44
  %46 = sub nsw i32 9, %ctpop.step24.i
  br label %47

47:                                               ; preds = %42, %1
  %48 = phi i32 [ %5, %1 ], [ %45, %42 ]
  %49 = phi i32 [ %7, %1 ], [ %46, %42 ]
  %50 = or i32 %48, 8388608
  %51 = zext i32 %50 to i64
  %52 = shl i64 %51, 40
  %53 = shl nuw nsw i32 %8, 15
  %54 = or i32 %53, 16256
  %55 = add nsw i32 %54, %49
  %56 = trunc i32 %55 to i16
  %57 = insertvalue { i64, i16 } poison, i64 %52, 0
  br label %float32_to_floatx80.exit

float32_to_floatx80.exit:                         ; preds = %47, %39, %33, %21
  %58 = phi { i64, i16 } [ %32, %21 ], [ { i64 -9223372036854775808, i16 poison }, %33 ], [ { i64 0, i16 poison }, %39 ], [ %57, %47 ]
  %59 = phi i16 [ %31, %21 ], [ %36, %33 ], [ %41, %39 ], [ %56, %47 ]
  %60 = extractvalue { i64, i16 } %58, 0
  %61 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 0
  store i64 %60, i64* %61, align 16
  %62 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 1
  store i16 %59, i16* %62, align 8
  store i32 %4, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = load i32, i32* @fpstt, align 16
  %3 = add i32 %2, 7
  %4 = and i32 %3, 7
  %5 = and i64 %0, 4503599627370495
  %6 = lshr i64 %0, 52
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 2047
  %9 = lshr i64 %0, 63
  %10 = trunc i64 %9 to i16
  switch i32 %8, label %48 [
    i32 2047, label %11
    i32 0, label %35
  ]

11:                                               ; preds = %1
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %11
  %14 = and i64 %0, 9221120237041090560
  %15 = icmp ne i64 %14, 9218868437227405312
  %16 = and i64 %0, 2251799813685247
  %17 = icmp eq i64 %16, 0
  %18 = or i1 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i8, i8* @fp_status.2, align 1, !noalias !9
  %21 = or i8 %20, 1
  store i8 %21, i8* @fp_status.2, align 1, !noalias !9
  br label %22

22:                                               ; preds = %19, %13
  %23 = shl i64 %0, 12
  %24 = icmp eq i64 %23, 0
  %25 = lshr exact i64 %23, 1
  %26 = or i64 %25, -9223372036854775808
  %27 = shl nuw i16 %10, 15
  %28 = or i16 %27, 32767
  %29 = select i1 %24, i64 -4611686018427387904, i64 %26
  %30 = select i1 %24, i16 -1, i16 %28
  %31 = insertvalue { i64, i16 } poison, i64 %29, 0
  br label %float64_to_floatx80.exit

32:                                               ; preds = %11
  %33 = shl nuw i16 %10, 15
  %34 = or i16 %33, 32767
  br label %float64_to_floatx80.exit

35:                                               ; preds = %1
  %36 = icmp eq i64 %5, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = shl nuw i16 %10, 15
  br label %float64_to_floatx80.exit

39:                                               ; preds = %35
  %ctlz.sh.i = lshr i64 %5, 1
  %ctlz.step.i = or i64 %ctlz.sh.i, %5
  %ctlz.sh1.i = lshr i64 %ctlz.step.i, 2
  %ctlz.step2.i = or i64 %ctlz.sh1.i, %ctlz.step.i
  %ctlz.sh3.i = lshr i64 %ctlz.step2.i, 4
  %ctlz.step4.i = or i64 %ctlz.sh3.i, %ctlz.step2.i
  %ctlz.sh5.i = lshr i64 %ctlz.step4.i, 8
  %ctlz.step6.i = or i64 %ctlz.sh5.i, %ctlz.step4.i
  %ctlz.sh7.i = lshr i64 %ctlz.step6.i, 16
  %ctlz.step8.i = or i64 %ctlz.sh7.i, %ctlz.step6.i
  %ctlz.sh9.i = lshr i64 %ctlz.step8.i, 32
  %ctlz.step10.i = or i64 %ctlz.sh9.i, %ctlz.step8.i
  %40 = xor i64 %ctlz.step10.i, -1
  %cppop.and1.i = and i64 %40, 6148914691236517205
  %ctpop.sh.i = lshr i64 %40, 1
  %cppop.and2.i = and i64 %ctpop.sh.i, 6148914691236517205
  %ctpop.step.i = add nuw i64 %cppop.and2.i, %cppop.and1.i
  %cppop.and111.i = and i64 %ctpop.step.i, 3689348814741910323
  %ctpop.sh12.i = lshr i64 %ctpop.step.i, 2
  %cppop.and213.i = and i64 %ctpop.sh12.i, 3689348814741910323
  %ctpop.step14.i = add nuw nsw i64 %cppop.and213.i, %cppop.and111.i
  %cppop.and115.i = and i64 %ctpop.step14.i, 506381209866536711
  %ctpop.sh16.i = lshr i64 %ctpop.step14.i, 4
  %cppop.and217.i = and i64 %ctpop.sh16.i, 506381209866536711
  %ctpop.step18.i = add nuw nsw i64 %cppop.and217.i, %cppop.and115.i
  %cppop.and119.i = and i64 %ctpop.step18.i, 4222189076152335
  %ctpop.sh20.i = lshr i64 %ctpop.step18.i, 8
  %cppop.and221.i = and i64 %ctpop.sh20.i, 4222189076152335
  %ctpop.step22.i = add nuw nsw i64 %cppop.and221.i, %cppop.and119.i
  %cppop.and123.i = and i64 %ctpop.step22.i, 133143986207
  %ctpop.sh24.i = lshr i64 %ctpop.step22.i, 16
  %cppop.and225.i = and i64 %ctpop.sh24.i, 133143986207
  %ctpop.step26.i = add nuw nsw i64 %cppop.and225.i, %cppop.and123.i
  %ctpop.sh28.i = lshr i64 %ctpop.step26.i, 32
  %ctpop.step30.i = add nuw nsw i64 %ctpop.sh28.i, %ctpop.step26.i
  %41 = trunc i64 %ctpop.step30.i to i32
  %42 = shl nuw nsw i32 %41, 24
  %43 = add nsw i32 %42, -184549376
  %44 = ashr exact i32 %43, 24
  %45 = zext i32 %44 to i64
  %46 = shl i64 %5, %45
  %47 = sub nsw i32 1, %44
  br label %48

48:                                               ; preds = %39, %1
  %49 = phi i64 [ %5, %1 ], [ %46, %39 ]
  %50 = phi i32 [ %8, %1 ], [ %47, %39 ]
  %51 = shl i64 %49, 11
  %52 = or i64 %51, -9223372036854775808
  %53 = trunc i64 %9 to i32
  %54 = shl nuw nsw i32 %53, 15
  %55 = or i32 %54, 15360
  %56 = add nsw i32 %55, %50
  %57 = trunc i32 %56 to i16
  %58 = insertvalue { i64, i16 } poison, i64 %52, 0
  br label %float64_to_floatx80.exit

float64_to_floatx80.exit:                         ; preds = %48, %37, %32, %22
  %59 = phi { i64, i16 } [ %31, %22 ], [ { i64 -9223372036854775808, i16 poison }, %32 ], [ { i64 0, i16 poison }, %37 ], [ %58, %48 ]
  %60 = phi i16 [ %30, %22 ], [ %34, %32 ], [ %38, %37 ], [ %57, %48 ]
  %61 = extractvalue { i64, i16 } %59, 0
  %62 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 0
  store i64 %61, i64* %62, align 16
  %63 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 1
  store i16 %60, i16* %63, align 8
  store i32 %4, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @helper_fsts_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 32767
  %7 = lshr i16 %5, 15
  %8 = icmp eq i16 %6, 32767
  br i1 %8, label %9, label %38

9:                                                ; preds = %0
  %10 = and i64 %3, 9223372036854775807
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %9
  %13 = and i64 %3, -4611686018427387905
  %14 = and i64 %3, 4611686018427387903
  %15 = icmp eq i64 %14, 0
  %16 = icmp ne i64 %13, %3
  %17 = or i1 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !12
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !12
  br label %21

21:                                               ; preds = %18, %12
  %22 = icmp sgt i64 %3, -1
  %23 = shl i64 %3, 1
  %24 = select i1 %22, i64 -9223372036854775808, i64 %23
  %25 = lshr i64 %24, 41
  %26 = icmp ult i64 %24, 2199023255552
  %27 = zext i16 %7 to i64
  %28 = shl nuw nsw i64 %27, 31
  %29 = select i1 %22, i64 2147483648, i64 %28
  %30 = or i64 %29, %25
  %31 = trunc i64 %30 to i32
  %32 = or i32 %31, 2139095040
  %33 = select i1 %26, i32 -4194304, i32 %32
  br label %floatx80_to_float32.exit

34:                                               ; preds = %9
  %35 = zext i16 %7 to i32
  %36 = shl nuw i32 %35, 31
  %37 = or i32 %36, 2139095040
  br label %floatx80_to_float32.exit

38:                                               ; preds = %0
  %39 = zext i16 %7 to i32
  %40 = zext i16 %6 to i32
  %41 = lshr i64 %3, 33
  %42 = and i64 %3, 8589934591
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = or i64 %41, %44
  %46 = icmp ne i16 %6, 0
  %47 = icmp ne i64 %45, 0
  %48 = select i1 %46, i1 true, i1 %47
  %49 = add nsw i32 %40, -16257
  %50 = select i1 %48, i32 %49, i32 0
  %51 = trunc i64 %45 to i32
  %52 = trunc i64 %45 to i8
  %53 = and i8 %52, 127
  %54 = and i32 %50, 65535
  %55 = icmp ugt i32 %54, 252
  br i1 %55, label %56, label %95

56:                                               ; preds = %38
  %57 = icmp sgt i32 %50, 253
  br i1 %57, label %63, label %58

58:                                               ; preds = %56
  %59 = icmp eq i32 %50, 253
  %60 = add nuw i32 %51, 64
  %61 = icmp slt i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %68

63:                                               ; preds = %58, %56
  %64 = load i8, i8* @fp_status.2, align 1
  %65 = or i8 %64, 40
  store i8 %65, i8* @fp_status.2, align 1
  %66 = shl nuw i32 %39, 31
  %67 = or i32 %66, 2139095040
  br label %floatx80_to_float32.exit

68:                                               ; preds = %58
  %69 = icmp slt i32 %50, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %68
  %71 = icmp ne i32 %50, -1
  %72 = icmp sgt i32 %60, -1
  %73 = select i1 %71, i1 true, i1 %72
  %74 = sub nsw i32 0, %50
  %75 = icmp ult i32 %74, 32
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = lshr i32 %51, %74
  %78 = and i32 %50, 31
  %79 = shl i32 %51, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = or i32 %77, %81
  br label %86

83:                                               ; preds = %70
  %84 = icmp ne i32 %51, 0
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi i32 [ %82, %76 ], [ %85, %83 ]
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 127
  %90 = icmp ne i8 %89, 0
  %91 = select i1 %73, i1 %90, i1 false
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i8, i8* @fp_status.2, align 1
  %94 = or i8 %93, 16
  br label %102

95:                                               ; preds = %86, %68, %38
  %96 = phi i32 [ %87, %86 ], [ %51, %68 ], [ %51, %38 ]
  %97 = phi i32 [ 0, %86 ], [ %50, %68 ], [ %50, %38 ]
  %98 = phi i8 [ %89, %86 ], [ %53, %68 ], [ %53, %38 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load i8, i8* @fp_status.2, align 1
  br label %102

102:                                              ; preds = %100, %92
  %103 = phi i8 [ %94, %92 ], [ %101, %100 ]
  %104 = phi i8 [ %89, %92 ], [ %98, %100 ]
  %105 = phi i32 [ 0, %92 ], [ %97, %100 ]
  %106 = phi i32 [ %87, %92 ], [ %96, %100 ]
  %107 = or i8 %103, 32
  store i8 %107, i8* @fp_status.2, align 1
  br label %108

108:                                              ; preds = %102, %95
  %109 = phi i8 [ %104, %102 ], [ 0, %95 ]
  %110 = phi i32 [ %105, %102 ], [ %97, %95 ]
  %111 = phi i32 [ %106, %102 ], [ %96, %95 ]
  %112 = add i32 %111, 64
  %113 = lshr i32 %112, 7
  %114 = icmp eq i8 %109, 64
  %115 = zext i1 %114 to i32
  %116 = xor i32 %115, -1
  %117 = and i32 %113, %116
  %118 = icmp eq i32 %117, 0
  %119 = shl nuw i32 %39, 31
  %120 = shl i32 %110, 23
  %121 = select i1 %118, i32 0, i32 %120
  %122 = or i32 %117, %119
  %123 = add i32 %122, %121
  br label %floatx80_to_float32.exit

floatx80_to_float32.exit:                         ; preds = %108, %63, %34, %21
  %124 = phi i32 [ %33, %21 ], [ %37, %34 ], [ %67, %63 ], [ %123, %108 ]
  ret i32 %124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fpop() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  store i32 %3, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fpush() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 7
  %3 = and i32 %2, 7
  store i32 %3, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fld1_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  store i64 -9223372036854775808, i64* %2, align 16
  %3 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  store i16 16383, i16* %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldz_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  store i64 0, i64* %2, align 16
  %3 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  store i16 0, i16* %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fadd_STN_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 16
  %6 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %3, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 16
  %10 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = lshr i16 %7, 15
  %13 = trunc i16 %12 to i8
  %14 = lshr i16 %11, 15
  %15 = trunc i16 %14 to i8
  %16 = icmp eq i8 %13, %15
  %17 = and i16 %7, 32767
  %18 = zext i16 %17 to i32
  %19 = and i16 %11, 32767
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 %18, %20
  %22 = icmp sgt i32 %21, 0
  br i1 %16, label %23, label %127

23:                                               ; preds = %0
  br i1 %22, label %24, label %52

24:                                               ; preds = %23
  %25 = icmp eq i16 %17, 32767
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = and i64 %5, 9223372036854775807
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %floatx80_add.exit, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %31 = extractvalue { i64, i16 } %30, 0
  %32 = extractvalue { i64, i16 } %30, 1
  br label %floatx80_add.exit

33:                                               ; preds = %24
  %34 = icmp eq i16 %19, 0
  %35 = sext i1 %34 to i32
  %36 = add nsw i32 %21, %35
  %37 = sub nsw i32 0, %36
  %38 = and i32 %37, 63
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %102, label %40

40:                                               ; preds = %33
  %41 = icmp ult i32 %36, 64
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = zext i32 %38 to i64
  %44 = shl i64 %9, %43
  %45 = zext i32 %36 to i64
  %46 = lshr i64 %9, %45
  br label %102

47:                                               ; preds = %40
  %48 = icmp eq i32 %36, 64
  br i1 %48, label %102, label %49

49:                                               ; preds = %47
  %50 = icmp ne i64 %9, 0
  %51 = zext i1 %50 to i64
  br label %102

52:                                               ; preds = %23
  %53 = icmp slt i32 %21, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %52
  %55 = icmp eq i16 %19, 32767
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = and i64 %9, 9223372036854775807
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %61 = extractvalue { i64, i16 } %60, 0
  %62 = extractvalue { i64, i16 } %60, 1
  br label %floatx80_add.exit

63:                                               ; preds = %56
  %64 = or i16 %7, 32767
  br label %floatx80_add.exit

65:                                               ; preds = %54
  %66 = icmp eq i16 %17, 0
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %21, %67
  %69 = sub nsw i32 0, %68
  %70 = and i32 %68, 63
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %65
  %73 = icmp ult i32 %69, 64
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = zext i32 %70 to i64
  %76 = shl i64 %5, %75
  %77 = zext i32 %69 to i64
  %78 = lshr i64 %5, %77
  br label %102

79:                                               ; preds = %72
  %80 = icmp eq i32 %68, -64
  br i1 %80, label %102, label %81

81:                                               ; preds = %79
  %82 = icmp ne i64 %5, 0
  %83 = zext i1 %82 to i64
  br label %102

84:                                               ; preds = %52
  %85 = icmp eq i16 %17, 32767
  br i1 %85, label %86, label %94

86:                                               ; preds = %84
  %87 = or i64 %9, %5
  %88 = and i64 %87, 9223372036854775807
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %floatx80_add.exit, label %90

90:                                               ; preds = %86
  %91 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %92 = extractvalue { i64, i16 } %91, 0
  %93 = extractvalue { i64, i16 } %91, 1
  br label %floatx80_add.exit

94:                                               ; preds = %84
  %95 = add i64 %9, %5
  %96 = icmp eq i16 %17, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %ctlz.sh.i.i = lshr i64 %95, 1
  %ctlz.step.i.i = or i64 %ctlz.sh.i.i, %95
  %ctlz.sh1.i.i = lshr i64 %ctlz.step.i.i, 2
  %ctlz.step2.i.i = or i64 %ctlz.sh1.i.i, %ctlz.step.i.i
  %ctlz.sh3.i.i = lshr i64 %ctlz.step2.i.i, 4
  %ctlz.step4.i.i = or i64 %ctlz.sh3.i.i, %ctlz.step2.i.i
  %ctlz.sh5.i.i = lshr i64 %ctlz.step4.i.i, 8
  %ctlz.step6.i.i = or i64 %ctlz.sh5.i.i, %ctlz.step4.i.i
  %ctlz.sh7.i.i = lshr i64 %ctlz.step6.i.i, 16
  %ctlz.step8.i.i = or i64 %ctlz.sh7.i.i, %ctlz.step6.i.i
  %ctlz.sh9.i.i = lshr i64 %ctlz.step8.i.i, 32
  %ctlz.step10.i.i = or i64 %ctlz.sh9.i.i, %ctlz.step8.i.i
  %98 = xor i64 %ctlz.step10.i.i, -1
  %cppop.and1.i.i = and i64 %98, 6148914691236517205
  %ctpop.sh.i.i = lshr i64 %98, 1
  %cppop.and2.i.i = and i64 %ctpop.sh.i.i, 6148914691236517205
  %ctpop.step.i.i = add nuw i64 %cppop.and2.i.i, %cppop.and1.i.i
  %cppop.and111.i.i = and i64 %ctpop.step.i.i, 3689348814741910323
  %ctpop.sh12.i.i = lshr i64 %ctpop.step.i.i, 2
  %cppop.and213.i.i = and i64 %ctpop.sh12.i.i, 3689348814741910323
  %ctpop.step14.i.i = add nuw nsw i64 %cppop.and213.i.i, %cppop.and111.i.i
  %cppop.and115.i.i = and i64 %ctpop.step14.i.i, 506381209866536711
  %ctpop.sh16.i.i = lshr i64 %ctpop.step14.i.i, 4
  %cppop.and217.i.i = and i64 %ctpop.sh16.i.i, 506381209866536711
  %ctpop.step18.i.i = add nuw nsw i64 %cppop.and217.i.i, %cppop.and115.i.i
  %cppop.and119.i.i = and i64 %ctpop.step18.i.i, 4222189076152335
  %ctpop.sh20.i.i = lshr i64 %ctpop.step18.i.i, 8
  %cppop.and221.i.i = and i64 %ctpop.sh20.i.i, 4222189076152335
  %ctpop.step22.i.i = add nuw nsw i64 %cppop.and221.i.i, %cppop.and119.i.i
  %cppop.and123.i.i = and i64 %ctpop.step22.i.i, 133143986207
  %ctpop.sh24.i.i = lshr i64 %ctpop.step22.i.i, 16
  %cppop.and225.i.i = and i64 %ctpop.sh24.i.i, 133143986207
  %ctpop.step26.i.i = add nuw nsw i64 %cppop.and225.i.i, %cppop.and123.i.i
  %cppop.and127.i.i = and i64 %ctpop.step26.i.i, 63
  %ctpop.sh28.i.i = lshr i64 %ctpop.step26.i.i, 32
  %ctpop.step30.i.i = add nuw nsw i64 %cppop.and127.i.i, %ctpop.sh28.i.i
  %99 = trunc i64 %ctpop.step30.i.i to i32
  %100 = shl i64 %95, %ctpop.step30.i.i
  %101 = sub nsw i32 1, %99
  br label %120

102:                                              ; preds = %81, %79, %74, %65, %49, %47, %42, %33
  %103 = phi i64 [ %5, %47 ], [ %5, %33 ], [ %5, %42 ], [ %5, %49 ], [ %78, %74 ], [ %5, %65 ], [ 0, %81 ], [ 0, %79 ]
  %104 = phi i64 [ 0, %47 ], [ %9, %33 ], [ %46, %42 ], [ 0, %49 ], [ %9, %74 ], [ %9, %65 ], [ %9, %81 ], [ %9, %79 ]
  %105 = phi i64 [ %9, %47 ], [ 0, %33 ], [ %44, %42 ], [ %51, %49 ], [ %76, %74 ], [ 0, %65 ], [ %83, %81 ], [ %5, %79 ]
  %106 = phi i32 [ %18, %47 ], [ %18, %33 ], [ %18, %42 ], [ %18, %49 ], [ %20, %74 ], [ %20, %65 ], [ %20, %81 ], [ %20, %79 ]
  %107 = add i64 %104, %103
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %102, %94
  %110 = phi i32 [ %106, %102 ], [ %18, %94 ]
  %111 = phi i64 [ %107, %102 ], [ %95, %94 ]
  %112 = phi i64 [ %105, %102 ], [ 0, %94 ]
  %113 = shl i64 %111, 63
  %114 = icmp ne i64 %112, 0
  %115 = zext i1 %114 to i64
  %116 = or i64 %113, %115
  %117 = lshr i64 %111, 1
  %118 = or i64 %117, -9223372036854775808
  %119 = add nuw nsw i32 %110, 1
  br label %120

120:                                              ; preds = %109, %102, %97
  %121 = phi i32 [ %106, %102 ], [ %119, %109 ], [ %101, %97 ]
  %122 = phi i64 [ %107, %102 ], [ %118, %109 ], [ %100, %97 ]
  %123 = phi i64 [ %105, %102 ], [ %116, %109 ], [ 0, %97 ]
  %124 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %13, i32 noundef %121, i64 noundef %122, i64 noundef %123)  nounwind 
  %125 = extractvalue { i64, i16 } %124, 0
  %126 = extractvalue { i64, i16 } %124, 1
  br label %floatx80_add.exit

127:                                              ; preds = %0
  br i1 %22, label %202, label %128

128:                                              ; preds = %127
  %129 = icmp slt i32 %21, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %128
  switch i32 %18, label %143 [
    i32 32767, label %131
    i32 0, label %142
  ]

131:                                              ; preds = %130
  %132 = or i64 %9, %5
  %133 = and i64 %132, 9223372036854775807
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %137 = extractvalue { i64, i16 } %136, 0
  %138 = extractvalue { i64, i16 } %136, 1
  br label %floatx80_add.exit

139:                                              ; preds = %131
  %140 = load i8, i8* @fp_status.2, align 1
  %141 = or i8 %140, 1
  store i8 %141, i8* @fp_status.2, align 1
  br label %floatx80_add.exit

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %130
  %144 = phi i32 [ 1, %142 ], [ %18, %130 ]
  %145 = phi i32 [ 1, %142 ], [ %20, %130 ]
  %146 = icmp ult i64 %9, %5
  br i1 %146, label %242, label %147

147:                                              ; preds = %143
  %148 = icmp ult i64 %5, %9
  br i1 %148, label %193, label %floatx80_add.exit

149:                                              ; preds = %128
  %150 = icmp eq i16 %19, 32767
  br i1 %150, label %151, label %162

151:                                              ; preds = %149
  %152 = and i64 %9, 9223372036854775807
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %156 = extractvalue { i64, i16 } %155, 0
  %157 = extractvalue { i64, i16 } %155, 1
  br label %floatx80_add.exit

158:                                              ; preds = %151
  %159 = xor i16 %12, -1
  %160 = shl i16 %159, 15
  %161 = or i16 %160, 32767
  br label %floatx80_add.exit

162:                                              ; preds = %149
  %163 = icmp eq i16 %17, 0
  %164 = sext i1 %163 to i32
  %165 = sub nsw i32 %164, %21
  %166 = trunc i32 %165 to i8
  %167 = sub i8 0, %166
  %168 = and i8 %167, 63
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %193, label %170

170:                                              ; preds = %162
  %171 = icmp ult i32 %165, 64
  br i1 %171, label %172, label %177

172:                                              ; preds = %170
  %173 = zext i8 %168 to i64
  %174 = shl i64 %5, %173
  %175 = zext i32 %165 to i64
  %176 = lshr i64 %5, %175
  br label %193

177:                                              ; preds = %170
  %178 = icmp eq i32 %165, 64
  br i1 %178, label %193, label %179

179:                                              ; preds = %177
  %180 = icmp ult i32 %165, 128
  br i1 %180, label %181, label %190

181:                                              ; preds = %179
  %182 = and i32 %165, 63
  %183 = zext i32 %182 to i64
  %184 = lshr i64 %5, %183
  %185 = zext i8 %168 to i64
  %186 = shl i64 %5, %185
  %187 = icmp ne i64 %186, 0
  %188 = zext i1 %187 to i64
  %189 = or i64 %184, %188
  br label %193

190:                                              ; preds = %179
  %191 = icmp ne i64 %5, 0
  %192 = zext i1 %191 to i64
  br label %193

193:                                              ; preds = %190, %181, %177, %172, %162, %147
  %194 = phi i64 [ %5, %147 ], [ %176, %172 ], [ %5, %162 ], [ 0, %181 ], [ 0, %190 ], [ 0, %177 ]
  %195 = phi i64 [ 0, %147 ], [ %174, %172 ], [ 0, %162 ], [ %189, %181 ], [ %192, %190 ], [ %5, %177 ]
  %196 = phi i32 [ %145, %147 ], [ %20, %172 ], [ %20, %162 ], [ %20, %181 ], [ %20, %190 ], [ %20, %177 ]
  %197 = sub i64 %9, %194
  %198 = icmp ne i64 %195, 0
  %199 = sext i1 %198 to i64
  %200 = add i64 %197, %199
  %201 = xor i8 %13, 1
  br label %250

202:                                              ; preds = %127
  %203 = icmp eq i16 %17, 32767
  br i1 %203, label %204, label %211

204:                                              ; preds = %202
  %205 = and i64 %5, 9223372036854775807
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %floatx80_add.exit, label %207

207:                                              ; preds = %204
  %208 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %209 = extractvalue { i64, i16 } %208, 0
  %210 = extractvalue { i64, i16 } %208, 1
  br label %floatx80_add.exit

211:                                              ; preds = %202
  %212 = icmp eq i16 %19, 0
  %213 = sext i1 %212 to i32
  %214 = add nsw i32 %21, %213
  %215 = trunc i32 %214 to i8
  %216 = sub i8 0, %215
  %217 = and i8 %216, 63
  %218 = icmp eq i32 %214, 0
  br i1 %218, label %242, label %219

219:                                              ; preds = %211
  %220 = icmp ult i32 %214, 64
  br i1 %220, label %221, label %226

221:                                              ; preds = %219
  %222 = zext i8 %217 to i64
  %223 = shl i64 %9, %222
  %224 = zext i32 %214 to i64
  %225 = lshr i64 %9, %224
  br label %242

226:                                              ; preds = %219
  %227 = icmp eq i32 %214, 64
  br i1 %227, label %242, label %228

228:                                              ; preds = %226
  %229 = icmp ult i32 %214, 128
  br i1 %229, label %230, label %239

230:                                              ; preds = %228
  %231 = and i32 %214, 63
  %232 = zext i32 %231 to i64
  %233 = lshr i64 %9, %232
  %234 = zext i8 %217 to i64
  %235 = shl i64 %9, %234
  %236 = icmp ne i64 %235, 0
  %237 = zext i1 %236 to i64
  %238 = or i64 %233, %237
  br label %242

239:                                              ; preds = %228
  %240 = icmp ne i64 %9, 0
  %241 = zext i1 %240 to i64
  br label %242

242:                                              ; preds = %239, %230, %226, %221, %211, %143
  %243 = phi i64 [ %9, %143 ], [ %225, %221 ], [ %9, %211 ], [ 0, %230 ], [ 0, %239 ], [ 0, %226 ]
  %244 = phi i64 [ 0, %143 ], [ %223, %221 ], [ 0, %211 ], [ %238, %230 ], [ %241, %239 ], [ %9, %226 ]
  %245 = phi i32 [ %144, %143 ], [ %18, %221 ], [ %18, %211 ], [ %18, %230 ], [ %18, %239 ], [ %18, %226 ]
  %246 = sub i64 %5, %243
  %247 = icmp ne i64 %244, 0
  %248 = sext i1 %247 to i64
  %249 = add i64 %246, %248
  br label %250

250:                                              ; preds = %242, %193
  %251 = phi i64 [ %249, %242 ], [ %200, %193 ]
  %252 = phi i64 [ %244, %242 ], [ %195, %193 ]
  %253 = phi i8 [ %13, %242 ], [ %201, %193 ]
  %254 = phi i32 [ %245, %242 ], [ %196, %193 ]
  %255 = sub i64 0, %252
  %256 = icmp eq i64 %251, 0
  %257 = select i1 %256, i64 %255, i64 %251
  %258 = select i1 %256, i64 0, i64 %255
  %ctlz.sh.i1.i = lshr i64 %257, 1
  %ctlz.step.i2.i = or i64 %ctlz.sh.i1.i, %257
  %ctlz.sh1.i3.i = lshr i64 %ctlz.step.i2.i, 2
  %ctlz.step2.i4.i = or i64 %ctlz.sh1.i3.i, %ctlz.step.i2.i
  %ctlz.sh3.i5.i = lshr i64 %ctlz.step2.i4.i, 4
  %ctlz.step4.i6.i = or i64 %ctlz.sh3.i5.i, %ctlz.step2.i4.i
  %ctlz.sh5.i7.i = lshr i64 %ctlz.step4.i6.i, 8
  %ctlz.step6.i8.i = or i64 %ctlz.sh5.i7.i, %ctlz.step4.i6.i
  %ctlz.sh7.i9.i = lshr i64 %ctlz.step6.i8.i, 16
  %ctlz.step8.i10.i = or i64 %ctlz.sh7.i9.i, %ctlz.step6.i8.i
  %ctlz.sh9.i11.i = lshr i64 %ctlz.step8.i10.i, 32
  %ctlz.step10.i12.i = or i64 %ctlz.sh9.i11.i, %ctlz.step8.i10.i
  %259 = xor i64 %ctlz.step10.i12.i, -1
  %cppop.and1.i13.i = and i64 %259, 6148914691236517205
  %ctpop.sh.i14.i = lshr i64 %259, 1
  %cppop.and2.i15.i = and i64 %ctpop.sh.i14.i, 6148914691236517205
  %ctpop.step.i16.i = add nuw i64 %cppop.and2.i15.i, %cppop.and1.i13.i
  %cppop.and111.i17.i = and i64 %ctpop.step.i16.i, 3689348814741910323
  %ctpop.sh12.i18.i = lshr i64 %ctpop.step.i16.i, 2
  %cppop.and213.i19.i = and i64 %ctpop.sh12.i18.i, 3689348814741910323
  %ctpop.step14.i20.i = add nuw nsw i64 %cppop.and213.i19.i, %cppop.and111.i17.i
  %cppop.and115.i21.i = and i64 %ctpop.step14.i20.i, 506381209866536711
  %ctpop.sh16.i22.i = lshr i64 %ctpop.step14.i20.i, 4
  %cppop.and217.i23.i = and i64 %ctpop.sh16.i22.i, 506381209866536711
  %ctpop.step18.i24.i = add nuw nsw i64 %cppop.and217.i23.i, %cppop.and115.i21.i
  %cppop.and119.i25.i = and i64 %ctpop.step18.i24.i, 4222189076152335
  %ctpop.sh20.i26.i = lshr i64 %ctpop.step18.i24.i, 8
  %cppop.and221.i27.i = and i64 %ctpop.sh20.i26.i, 4222189076152335
  %ctpop.step22.i28.i = add nuw nsw i64 %cppop.and221.i27.i, %cppop.and119.i25.i
  %cppop.and123.i29.i = and i64 %ctpop.step22.i28.i, 133143986207
  %ctpop.sh24.i30.i = lshr i64 %ctpop.step22.i28.i, 16
  %cppop.and225.i31.i = and i64 %ctpop.sh24.i30.i, 133143986207
  %ctpop.step26.i32.i = add nuw nsw i64 %cppop.and225.i31.i, %cppop.and123.i29.i
  %cppop.and127.i33.i = and i64 %ctpop.step26.i32.i, 63
  %ctpop.sh28.i34.i = lshr i64 %ctpop.step26.i32.i, 32
  %ctpop.step30.i35.i = add nuw nsw i64 %cppop.and127.i33.i, %ctpop.sh28.i34.i
  %260 = trunc i64 %ctpop.step30.i35.i to i32
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %250
  %263 = shl i64 %257, %ctpop.step30.i35.i
  %264 = sub nsw i64 0, %ctpop.step30.i35.i
  %265 = and i64 %264, 63
  %266 = lshr i64 %258, %265
  %267 = or i64 %266, %263
  br label %268

268:                                              ; preds = %262, %250
  %269 = phi i64 [ %267, %262 ], [ %257, %250 ]
  %270 = shl i64 %258, %ctpop.step30.i35.i
  %271 = add nsw i32 %254, -64
  %272 = select i1 %256, i32 %271, i32 %254
  %273 = sub nsw i32 %272, %260
  %274 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %253, i32 noundef %273, i64 noundef %269, i64 noundef %270)  nounwind 
  %275 = extractvalue { i64, i16 } %274, 0
  %276 = extractvalue { i64, i16 } %274, 1
  br label %floatx80_add.exit

floatx80_add.exit:                                ; preds = %268, %207, %204, %158, %154, %147, %139, %135, %120, %90, %86, %63, %59, %29, %26
  %.pn38.i = phi i64 [ %31, %29 ], [ %125, %120 ], [ %61, %59 ], [ -9223372036854775808, %63 ], [ %92, %90 ], [ %5, %26 ], [ %5, %86 ], [ %209, %207 ], [ %275, %268 ], [ %156, %154 ], [ -9223372036854775808, %158 ], [ %137, %135 ], [ -4611686018427387904, %139 ], [ %5, %204 ], [ 0, %147 ]
  %.pn36.i = phi i16 [ %32, %29 ], [ %126, %120 ], [ %62, %59 ], [ %64, %63 ], [ %93, %90 ], [ %7, %26 ], [ %7, %86 ], [ %210, %207 ], [ %276, %268 ], [ %157, %154 ], [ %161, %158 ], [ %138, %135 ], [ -1, %139 ], [ %7, %204 ], [ 0, %147 ]
  store i64 %.pn38.i, i64* %4, align 16
  store i16 %.pn36.i, i16* %6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %5 = and i16 %1, 32767
  %6 = icmp eq i16 %5, 32767
  %7 = and i64 %0, 4611686018427387904
  %8 = icmp eq i64 %7, 0
  %9 = xor i1 %6, true
  %10 = select i1 %9, i1 true, i1 %8
  %11 = and i64 %0, -4611686018427387905
  %12 = and i64 %0, 4611686018427387903
  %13 = icmp ne i64 %12, 0
  %14 = select i1 %6, i1 %13, i1 false
  %15 = icmp eq i64 %11, %0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = and i16 %3, 32767
  %18 = icmp eq i16 %17, 32767
  %19 = and i64 %2, 4611686018427387904
  %20 = icmp ne i64 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  %22 = and i64 %2, -4611686018427387905
  %23 = and i64 %2, 4611686018427387903
  %24 = icmp ne i64 %23, 0
  %25 = select i1 %18, i1 %24, i1 false
  %26 = icmp eq i64 %22, %2
  %27 = select i1 %25, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  %29 = or i1 %16, %27
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i8, i8* @fp_status.2, align 1
  %32 = or i8 %31, 1
  store i8 %32, i8* @fp_status.2, align 1
  br label %33

33:                                               ; preds = %30, %4
  %34 = icmp ult i64 %0, %2
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = icmp ult i64 %2, %0
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = icmp ult i16 %1, %3
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %35, %33
  %41 = phi i8 [ %39, %37 ], [ 0, %33 ], [ 1, %35 ]
  br i1 %16, label %47, label %42

42:                                               ; preds = %40
  br i1 %10, label %50, label %43

43:                                               ; preds = %42
  %44 = or i8 %41, %28
  %45 = icmp eq i8 %44, 0
  %46 = and i1 %21, %45
  br i1 %46, label %50, label %58

47:                                               ; preds = %40
  %48 = icmp eq i8 %41, 0
  %49 = select i1 %27, i1 %48, i1 %21
  br i1 %49, label %50, label %58

50:                                               ; preds = %47, %43, %42
  %51 = icmp ne i16 %17, 32767
  %52 = icmp eq i64 %23, 0
  %53 = select i1 %51, i1 true, i1 %52
  %54 = icmp ne i64 %22, %2
  %55 = select i1 %53, i1 true, i1 %54
  %56 = or i64 %2, -4611686018427387904
  %57 = select i1 %55, i64 %2, i64 %56
  br label %66

58:                                               ; preds = %47, %43
  %59 = icmp ne i16 %5, 32767
  %60 = icmp eq i64 %12, 0
  %61 = select i1 %59, i1 true, i1 %60
  %62 = icmp ne i64 %11, %0
  %63 = select i1 %61, i1 true, i1 %62
  %64 = or i64 %0, -4611686018427387904
  %65 = select i1 %63, i64 %0, i64 %64
  br label %66

66:                                               ; preds = %58, %50
  %67 = phi i64 [ %57, %50 ], [ %65, %58 ]
  %68 = phi i16 [ %3, %50 ], [ %1, %58 ]
  %69 = insertvalue { i64, i16 } poison, i64 %67, 0
  %70 = insertvalue { i64, i16 } %69, i16 %68, 1
  ret { i64, i16 } %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext %0, i8 noundef zeroext %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  switch i8 %0, label %95 [
    i8 32, label %6
    i8 64, label %7
  ]

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i64 [ 549755813888, %6 ], [ 1024, %5 ]
  %9 = phi i64 [ 1099511627775, %6 ], [ 2047, %5 ]
  %10 = icmp ne i64 %4, 0
  %11 = zext i1 %10 to i64
  %12 = or i64 %11, %3
  %13 = and i64 %9, %12
  %14 = add i32 %2, -32766
  %15 = icmp ult i32 %14, -32765
  br i1 %15, label %16, label %71

16:                                               ; preds = %7
  %17 = icmp sgt i32 %2, 32766
  br i1 %17, label %106, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %2, 32766
  %20 = xor i64 %12, -1
  %21 = icmp ugt i64 %8, %20
  %22 = and i1 %19, %21
  br i1 %22, label %106, label %23

23:                                               ; preds = %18
  %24 = icmp slt i32 %2, 1
  br i1 %24, label %25, label %71

25:                                               ; preds = %23
  %26 = icmp ne i32 %2, 0
  %27 = icmp ule i64 %8, %20
  %28 = or i1 %26, %27
  %29 = sub nsw i32 1, %2
  %30 = icmp ult i32 %29, 64
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = add nsw i32 %2, 63
  %33 = zext i32 %29 to i64
  %34 = lshr i64 %12, %33
  %35 = and i32 %32, 63
  %36 = zext i32 %35 to i64
  %37 = shl i64 %12, %36
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = or i64 %34, %39
  br label %44

41:                                               ; preds = %25
  %42 = icmp ne i64 %12, 0
  %43 = zext i1 %42 to i64
  br label %44

44:                                               ; preds = %41, %31
  %45 = phi i64 [ %40, %31 ], [ %43, %41 ]
  %46 = and i64 %45, %9
  %47 = icmp ne i64 %46, 0
  %48 = select i1 %28, i1 %47, i1 false
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8, i8* @fp_status.2, align 1
  %51 = or i8 %50, 16
  store i8 %51, i8* @fp_status.2, align 1
  br label %52

52:                                               ; preds = %49, %44
  br i1 %47, label %53, label %56

53:                                               ; preds = %52
  %54 = load i8, i8* @fp_status.2, align 1
  %55 = or i8 %54, 32
  store i8 %55, i8* @fp_status.2, align 1
  br label %56

56:                                               ; preds = %53, %52
  %57 = add i64 %45, %8
  %58 = lshr i64 %57, 63
  %59 = trunc i64 %58 to i32
  %60 = add nuw nsw i64 %9, 1
  %61 = shl nuw nsw i64 %46, 1
  %62 = icmp eq i64 %61, %60
  %63 = select i1 %62, i64 %60, i64 0
  %64 = or i64 %63, %9
  %65 = xor i64 %64, -1
  %66 = and i64 %57, %65
  %67 = zext i8 %1 to i32
  %68 = shl nuw nsw i32 %67, 15
  %69 = or i32 %68, %59
  %70 = insertvalue { i64, i16 } poison, i64 %66, 0
  br label %202

71:                                               ; preds = %23, %7
  %72 = icmp eq i64 %13, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = load i8, i8* @fp_status.2, align 1
  %75 = or i8 %74, 32
  store i8 %75, i8* @fp_status.2, align 1
  br label %76

76:                                               ; preds = %73, %71
  %77 = add i64 %8, %12
  %78 = icmp ult i64 %77, %8
  %79 = select i1 %78, i64 -9223372036854775808, i64 %77
  %80 = zext i1 %78 to i32
  %81 = add nuw nsw i32 %80, %2
  %82 = add nuw nsw i64 %9, 1
  %83 = shl nuw nsw i64 %13, 1
  %84 = icmp eq i64 %83, %82
  %85 = select i1 %84, i64 %82, i64 0
  %86 = or i64 %85, %9
  %87 = xor i64 %86, -1
  %88 = and i64 %79, %87
  %89 = icmp eq i64 %88, 0
  %90 = select i1 %89, i32 0, i32 %81
  %91 = zext i8 %1 to i32
  %92 = shl nuw nsw i32 %91, 15
  %93 = add nuw nsw i32 %90, %92
  %94 = insertvalue { i64, i16 } poison, i64 %88, 0
  br label %202

95:                                               ; preds = %5
  %96 = add i32 %2, -32766
  %97 = icmp ult i32 %96, -32765
  br i1 %97, label %98, label %174

98:                                               ; preds = %95
  %99 = icmp sgt i32 %2, 32766
  br i1 %99, label %106, label %100

100:                                              ; preds = %98
  %101 = icmp eq i32 %2, 32766
  %102 = icmp eq i64 %3, -1
  %103 = and i1 %101, %102
  %104 = icmp slt i64 %4, 0
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100, %98, %18, %16
  %107 = load i8, i8* @fp_status.2, align 1
  %108 = or i8 %107, 40
  store i8 %108, i8* @fp_status.2, align 1
  %109 = zext i8 %1 to i32
  %110 = shl nuw nsw i32 %109, 15
  %111 = or i32 %110, 32767
  br label %202

112:                                              ; preds = %100
  %113 = icmp slt i32 %2, 1
  br i1 %113, label %114, label %174

114:                                              ; preds = %112
  %115 = icmp eq i32 %2, 0
  %116 = and i1 %115, %104
  %117 = icmp ne i64 %3, -1
  %118 = xor i1 %116, true
  %119 = or i1 %117, %118
  %120 = sub nsw i32 1, %2
  %121 = icmp ult i32 %120, 64
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = add nsw i32 %2, 63
  %124 = and i32 %123, 63
  %125 = zext i32 %124 to i64
  %126 = shl i64 %3, %125
  %127 = icmp ne i64 %4, 0
  %128 = zext i1 %127 to i64
  %129 = or i64 %126, %128
  %130 = zext i32 %120 to i64
  %131 = lshr i64 %3, %130
  br label %142

132:                                              ; preds = %114
  %133 = icmp eq i32 %2, -63
  br i1 %133, label %134, label %138

134:                                              ; preds = %132
  %135 = icmp ne i64 %4, 0
  %136 = zext i1 %135 to i64
  %137 = or i64 %136, %3
  br label %142

138:                                              ; preds = %132
  %139 = or i64 %4, %3
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  br label %142

142:                                              ; preds = %138, %134, %122
  %143 = phi i64 [ %129, %122 ], [ %137, %134 ], [ %141, %138 ]
  %144 = phi i64 [ %131, %122 ], [ 0, %134 ], [ 0, %138 ]
  %145 = icmp ne i64 %143, 0
  %146 = select i1 %119, i1 %145, i1 false
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8, i8* @fp_status.2, align 1
  %149 = or i8 %148, 16
  br label %154

150:                                              ; preds = %142
  %151 = icmp eq i64 %143, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %150
  %153 = load i8, i8* @fp_status.2, align 1
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi i8 [ %153, %152 ], [ %149, %147 ]
  %156 = or i8 %155, 32
  store i8 %156, i8* @fp_status.2, align 1
  br label %157

157:                                              ; preds = %154, %150
  %phi.cmp = icmp sgt i64 %143, -1
  br i1 %phi.cmp, label %167, label %158

158:                                              ; preds = %157
  %159 = add nuw i64 %144, 1
  %160 = and i64 %143, 9223372036854775807
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = xor i64 %162, -1
  %164 = and i64 %159, %163
  %165 = lshr i64 %159, 63
  %166 = trunc i64 %165 to i32
  br label %167

167:                                              ; preds = %158, %157
  %168 = phi i64 [ %144, %157 ], [ %164, %158 ]
  %169 = phi i32 [ 0, %157 ], [ %166, %158 ]
  %170 = zext i8 %1 to i32
  %171 = shl nuw nsw i32 %170, 15
  %172 = add nuw nsw i32 %169, %171
  %173 = insertvalue { i64, i16 } poison, i64 %168, 0
  br label %202

174:                                              ; preds = %112, %95
  %175 = icmp eq i64 %4, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %174
  %177 = load i8, i8* @fp_status.2, align 1
  %178 = or i8 %177, 32
  store i8 %178, i8* @fp_status.2, align 1
  br label %179

179:                                              ; preds = %176, %174
  %180 = icmp sgt i64 %4, -1
  br i1 %180, label %192, label %181

181:                                              ; preds = %179
  %182 = add i64 %3, 1
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = add nuw nsw i32 %2, 1
  br label %195

186:                                              ; preds = %181
  %187 = and i64 %4, 9223372036854775807
  %188 = icmp eq i64 %187, 0
  %189 = zext i1 %188 to i64
  %190 = xor i64 %189, -1
  %191 = and i64 %182, %190
  br label %195

192:                                              ; preds = %179
  %193 = icmp eq i64 %3, 0
  %194 = select i1 %193, i32 0, i32 %2
  br label %195

195:                                              ; preds = %192, %186, %184
  %196 = phi i64 [ %3, %192 ], [ -9223372036854775808, %184 ], [ %191, %186 ]
  %197 = phi i32 [ %194, %192 ], [ %185, %184 ], [ %2, %186 ]
  %198 = zext i8 %1 to i32
  %199 = shl nuw nsw i32 %198, 15
  %200 = add nuw nsw i32 %197, %199
  %201 = insertvalue { i64, i16 } poison, i64 %196, 0
  br label %202

202:                                              ; preds = %195, %167, %106, %76, %56
  %203 = phi { i64, i16 } [ { i64 -9223372036854775808, i16 poison }, %106 ], [ %173, %167 ], [ %201, %195 ], [ %70, %56 ], [ %94, %76 ]
  %204 = phi i32 [ %111, %106 ], [ %172, %167 ], [ %200, %195 ], [ %69, %56 ], [ %93, %76 ]
  %205 = trunc i32 %204 to i16
  %206 = insertvalue { i64, i16 } %203, i16 %205, 1
  ret { i64, i16 } %206
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc i64 @helper_fstl_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 32767
  %7 = lshr i16 %5, 15
  %8 = icmp eq i16 %6, 32767
  br i1 %8, label %9, label %37

9:                                                ; preds = %0
  %10 = and i64 %3, 9223372036854775807
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = and i64 %3, -4611686018427387905
  %14 = and i64 %3, 4611686018427387903
  %15 = icmp eq i64 %14, 0
  %16 = icmp ne i64 %13, %3
  %17 = or i1 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !15
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !15
  br label %21

21:                                               ; preds = %18, %12
  %22 = icmp sgt i64 %3, -1
  %23 = shl i64 %3, 1
  %24 = select i1 %22, i64 -9223372036854775808, i64 %23
  %25 = lshr i64 %24, 12
  %26 = icmp ult i64 %24, 4096
  %27 = zext i16 %7 to i64
  %28 = shl nuw i64 %27, 63
  %29 = select i1 %22, i64 -9223372036854775808, i64 %28
  %30 = or i64 %25, %29
  %31 = or i64 %30, 9218868437227405312
  %32 = select i1 %26, i64 -2251799813685248, i64 %31
  br label %floatx80_to_float64.exit

33:                                               ; preds = %9
  %34 = zext i16 %7 to i64
  %35 = shl nuw i64 %34, 63
  %36 = or i64 %35, 9218868437227405312
  br label %floatx80_to_float64.exit

37:                                               ; preds = %0
  %38 = zext i16 %6 to i32
  %39 = lshr i64 %3, 1
  %40 = and i64 %3, 1
  %41 = or i64 %39, %40
  %42 = icmp ne i16 %6, 0
  %43 = icmp ne i64 %3, 0
  %44 = select i1 %42, i1 true, i1 %43
  %45 = add nsw i32 %38, -15361
  %46 = select i1 %44, i32 %45, i32 0
  %47 = trunc i64 %41 to i32
  %48 = and i32 %47, 1023
  %49 = and i32 %46, 65535
  %50 = icmp ugt i32 %49, 2044
  br i1 %50, label %51, label %93

51:                                               ; preds = %37
  %52 = icmp sgt i32 %46, 2045
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %46, 2045
  %55 = add nuw i64 %41, 512
  %56 = icmp slt i64 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %64

58:                                               ; preds = %53, %51
  %59 = load i8, i8* @fp_status.2, align 1
  %60 = or i8 %59, 40
  store i8 %60, i8* @fp_status.2, align 1
  %61 = zext i16 %7 to i64
  %62 = shl nuw i64 %61, 63
  %63 = or i64 %62, 9218868437227405312
  br label %floatx80_to_float64.exit

64:                                               ; preds = %53
  %65 = icmp slt i32 %46, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %64
  %67 = icmp ne i32 %46, -1
  %68 = icmp sgt i64 %55, -1
  %69 = select i1 %67, i1 true, i1 %68
  %70 = sub nsw i32 0, %46
  %71 = icmp ult i32 %70, 64
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = zext i32 %70 to i64
  %74 = lshr i64 %41, %73
  %75 = and i32 %46, 63
  %76 = zext i32 %75 to i64
  %77 = shl i64 %41, %76
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = or i64 %74, %79
  br label %84

81:                                               ; preds = %66
  %82 = icmp ne i64 %41, 0
  %83 = zext i1 %82 to i64
  br label %84

84:                                               ; preds = %81, %72
  %85 = phi i64 [ %80, %72 ], [ %83, %81 ]
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 1023
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %69, i1 %88, i1 false
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8, i8* @fp_status.2, align 1
  %92 = or i8 %91, 16
  br label %100

93:                                               ; preds = %84, %64, %37
  %94 = phi i64 [ %85, %84 ], [ %41, %64 ], [ %41, %37 ]
  %95 = phi i32 [ 0, %84 ], [ %46, %64 ], [ %46, %37 ]
  %96 = phi i32 [ %87, %84 ], [ %48, %64 ], [ %48, %37 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load i8, i8* @fp_status.2, align 1
  br label %100

100:                                              ; preds = %98, %90
  %101 = phi i8 [ %92, %90 ], [ %99, %98 ]
  %102 = phi i32 [ %87, %90 ], [ %96, %98 ]
  %103 = phi i32 [ 0, %90 ], [ %95, %98 ]
  %104 = phi i64 [ %85, %90 ], [ %94, %98 ]
  %105 = or i8 %101, 32
  store i8 %105, i8* @fp_status.2, align 1
  br label %106

106:                                              ; preds = %100, %93
  %107 = phi i32 [ %102, %100 ], [ 0, %93 ]
  %108 = phi i32 [ %103, %100 ], [ %95, %93 ]
  %109 = phi i64 [ %104, %100 ], [ %94, %93 ]
  %110 = add i64 %109, 512
  %111 = lshr i64 %110, 10
  %112 = icmp eq i32 %107, 512
  %113 = zext i1 %112 to i64
  %114 = xor i64 %113, -1
  %115 = and i64 %111, %114
  %116 = icmp eq i64 %115, 0
  %117 = zext i16 %7 to i64
  %118 = shl nuw i64 %117, 63
  %119 = zext i32 %108 to i64
  %120 = shl i64 %119, 52
  %121 = select i1 %116, i64 0, i64 %120
  %122 = or i64 %115, %118
  %123 = add i64 %122, %121
  br label %floatx80_to_float64.exit

floatx80_to_float64.exit:                         ; preds = %106, %58, %33, %21
  %124 = phi i64 [ %32, %21 ], [ %36, %33 ], [ %63, %58 ], [ %123, %106 ]
  ret i64 %124
}

; Function Attrs: naked noinline
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr  naked noinline "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: mustprogress nounwind uwtable
define internal x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %0, i32 inreg noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr  mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %5 = alloca double, align 8
  %6 = tail call { i32, i32 } asm "movl    %esp, %ebx\0A\09movl    $2, %esp\0A\09calll   *$3\0A\09movl    %ebx, %esp", "={ax},={dx},r,r,{cx},{dx},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 %2, i32 %3, i32 %0, i32 %1)  nounwind readnone 
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  %9 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9)  nounwind 
  call void asm "fstpl   $0", "=*m,~{dirflag},~{fpsr},~{flags}"(double* nonnull elementtype(double) %5)  nounwind 
  %10 = load double, double* %5, align 8, !tbaa !18
  %11 = fptoui double %10 to i64
  call fastcc void @helper_fldl_ST0(i64 noundef %11)  nobuiltin nounwind "no-builtins" 
  %12 = zext i32 %8 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %7 to i64
  %15 = or i64 %13, %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9)  nounwind 
  ret i64 %15
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture)  argmemonly nofree nosync nounwind willreturn 

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture)  argmemonly nofree nosync nounwind willreturn 

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !22
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !22
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !22
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !22
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: norecurse nounwind
define internal fastcc void @vector_addm15161636(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !24 {
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i23.i, -4
  %3 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i26.i = add i32 %tmp0_v.i23.i, -8
  %4 = inttoptr i32 %tmp2_v4.i26.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i23.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i29.i = add i32 %tmp0_v.i23.i, -16
  %6 = inttoptr i32 %tmp2_v6.i29.i to i32*
  store i32 %tmp2_v.i22.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i23.i, -68
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i52.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i52.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i56.i = add i32 %tmp0_v.i23.i, -20
  %10 = inttoptr i32 %tmp2_v2.i56.i to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* inttoptr (i32 134520856 to i32*), align 8
  tail call fastcc void @helper_flds_ST0(i32 %11)
  %tmp2_v1.i.i = add i32 %tmp0_v.i23.i, -56
  %tmp6_v.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %12 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %tmp6_v.i.i, i32* %12, align 8
  tail call fastcc void @helper_fpop()
  %13 = load i32, i32* inttoptr (i32 134520860 to i32*), align 4
  tail call fastcc void @helper_flds_ST0(i32 %13)
  %tmp2_v6.i.i = add i32 %tmp0_v.i23.i, -52
  %tmp6_v7.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp6_v7.i.i, i32* %14, align 4
  tail call fastcc void @helper_fpop()
  %15 = load i32, i32* inttoptr (i32 134520864 to i32*), align 32
  tail call fastcc void @helper_flds_ST0(i32 %15)
  %tmp2_v12.i.i = add i32 %tmp0_v.i23.i, -48
  %tmp6_v13.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %16 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp6_v13.i.i, i32* %16, align 16
  tail call fastcc void @helper_fpop()
  %17 = load i32, i32* inttoptr (i32 134520868 to i32*), align 4
  tail call fastcc void @helper_flds_ST0(i32 %17)
  %tmp2_v18.i.i = add i32 %tmp0_v.i23.i, -44
  %tmp6_v19.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %18 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp6_v19.i.i, i32* %18, align 4
  tail call fastcc void @helper_fpop()
  %19 = load i32, i32* inttoptr (i32 134520856 to i32*), align 8
  tail call fastcc void @helper_flds_ST0(i32 %19)
  %tmp2_v24.i.i = add i32 %tmp0_v.i23.i, -40
  %tmp6_v25.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %20 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 %tmp6_v25.i.i, i32* %20, align 8
  tail call fastcc void @helper_fpop()
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fld1_ST0()
  %tmp2_v27.i.i = add i32 %tmp0_v.i23.i, -36
  %tmp6_v28.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %21 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 %tmp6_v28.i.i, i32* %21, align 4
  tail call fastcc void @helper_fpop()
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fldz_ST0()
  %tmp2_v30.i.i = add i32 %tmp0_v.i23.i, -32
  %tmp6_v31.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %22 = inttoptr i32 %tmp2_v30.i.i to i32*
  store i32 %tmp6_v31.i.i, i32* %22, align 16
  tail call fastcc void @helper_fpop()
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fldz_ST0()
  %tmp2_v33.i.i = add i32 %tmp0_v.i23.i, -28
  %tmp6_v34.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %23 = inttoptr i32 %tmp2_v33.i.i to i32*
  store i32 %tmp6_v34.i.i, i32* %23, align 4
  tail call fastcc void @helper_fpop()
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fldz_ST0()
  %tmp2_v36.i.i = add i32 %tmp0_v.i23.i, -24
  %tmp6_v37.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %24 = inttoptr i32 %tmp2_v36.i.i to i32*
  store i32 %tmp6_v37.i.i, i32* %24, align 8
  tail call fastcc void @helper_fpop()
  store i32 3, i32* %7, align 4
  %tmp2_v41.i.i = add i32 %tmp0_v.i23.i, -72
  %25 = inttoptr i32 %tmp2_v41.i.i to i32*
  store i32 %tmp2_v30.i.i, i32* %25, align 8
  %tmp2_v43.i.i = add i32 %tmp0_v.i23.i, -76
  %26 = inttoptr i32 %tmp2_v43.i.i to i32*
  store i32 %tmp2_v18.i.i, i32* %26, align 4
  %tmp2_v45.i.i = add i32 %tmp0_v.i23.i, -80
  %27 = inttoptr i32 %tmp2_v45.i.i to i32*
  store i32 %tmp2_v1.i.i, i32* %27, align 16
  %tmp2_v46.i.i = add i32 %tmp0_v.i23.i, -84
  %28 = inttoptr i32 %tmp2_v46.i.i to i32*
  store i32 134517302, i32* %28, align 4
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i23.i, -88
  %29 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  store i32 %tmp2_v4.i26.i, i32* %29, align 8
  %tmp2_v1.i11.i.i = add i32 %tmp0_v.i23.i, -108
  %30 = inttoptr i32 %tmp2_v1.i11.i.i to i32*
  store i32 134517403, i32* %30, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i23.i, -92
  %31 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %BB_80492A9.i.i, label %Func_vector_add.exit

BB_80492A9.i.i:                                   ; preds = %BB_80492A9.i.i, %0
  %storemerge1.i = phi i32 [ %tmp0_v23.i.i.i, %BB_80492A9.i.i ], [ 0, %0 ]
  %tmp4_v.i.i.i1 = shl i32 %storemerge1.i, 2
  %34 = load i32, i32* %27, align 16
  %tmp0_v3.i.i.i = add i32 %34, %tmp4_v.i.i.i1
  %35 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %36 = load i32, i32* %35, align 4
  tail call fastcc void @helper_flds_ST0(i32 %36)  nounwind 
  %37 = load i32, i32* %31, align 4
  %tmp4_v8.i.i.i = shl i32 %37, 2
  %38 = load i32, i32* %26, align 4
  %tmp0_v11.i.i.i = add i32 %38, %tmp4_v8.i.i.i
  %39 = inttoptr i32 %tmp0_v11.i.i.i to i32*
  %40 = load i32, i32* %39, align 4
  tail call fastcc void @helper_flds_ST0(i32 %40)  nounwind 
  %41 = load i32, i32* %31, align 4
  %tmp4_v16.i.i.i = shl i32 %41, 2
  %42 = load i32, i32* %25, align 8
  %tmp0_v19.i.i.i = add i32 %42, %tmp4_v16.i.i.i
  tail call fastcc void @helper_fadd_STN_ST0()  nounwind 
  tail call fastcc void @helper_fpop()  nounwind 
  %tmp6_v.i.i.i = tail call fastcc i32 @helper_fsts_ST0()  nounwind 
  %43 = inttoptr i32 %tmp0_v19.i.i.i to i32*
  store i32 %tmp6_v.i.i.i, i32* %43, align 4
  tail call fastcc void @helper_fpop()  nounwind 
  %44 = load i32, i32* %31, align 4
  %tmp0_v23.i.i.i = add i32 %44, 1
  store i32 %tmp0_v23.i.i.i, i32* %31, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %tmp0_v23.i.i.i, %45
  br i1 %46, label %BB_80492A9.i.i, label %Func_vector_add.exit

Func_vector_add.exit:                             ; preds = %BB_80492A9.i.i, %0
  %r_edx.0.lcssa.i = phi i32 [ 0, %0 ], [ %tmp4_v16.i.i.i, %BB_80492A9.i.i ]
  %47 = load i32, i32* %29, align 8
  %tmp2_v.i20.i = add i32 %47, -52
  %48 = inttoptr i32 %tmp2_v.i20.i to i32*
  %tmp2_v1.i10.i = add i32 %47, -24
  %49 = inttoptr i32 %tmp2_v41.i.i to i64*
  store i32 0, i32* %48, align 4
  br label %BB_8049242.i

BB_8049242.i:                                     ; preds = %BB_8049242.i, %Func_vector_add.exit
  %r_edx.07 = phi i32 [ %r_edx.0.lcssa.i, %Func_vector_add.exit ], [ %55, %BB_8049242.i ]
  %storemerge6 = phi i32 [ 0, %Func_vector_add.exit ], [ %tmp0_v2.i.i, %BB_8049242.i ]
  %tmp4_v.i.i = shl i32 %storemerge6, 2
  %tmp2_v2.i.i = add i32 %tmp2_v1.i10.i, %tmp4_v.i.i
  %50 = inttoptr i32 %tmp2_v2.i.i to i32*
  %51 = load i32, i32* %50, align 4
  tail call fastcc void @helper_flds_ST0(i32 %51)
  %tmp5_v.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v.i.i, i64* %49, align 8
  tail call fastcc void @helper_fpop()
  %52 = load i32, i32* %48, align 4
  store i32 %52, i32* %26, align 4
  store i32 134520840, i32* %27, align 16
  store i32 134517343, i32* %28, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef %r_edx.07, i32 noundef %tmp2_v45.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !25
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %48, align 4
  %tmp0_v2.i.i = add i32 %56, 1
  store i32 %tmp0_v2.i.i, i32* %48, align 4
  %57 = icmp slt i32 %tmp0_v2.i.i, 3
  br i1 %57, label %BB_8049242.i, label %.exit

.exit:                                            ; preds = %BB_8049242.i
  ret void
}

!0 = !{!"clang version 14.0.0"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 1, !"NumRegisterParameters", i32 0}
!6 = !{!7}
!7 = distinct !{!7, !8, !"float32ToCommonNaN: argument 0"}
!8 = distinct !{!8, !"float32ToCommonNaN"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"float64ToCommonNaN: argument 0"}
!11 = distinct !{!11, !"float64ToCommonNaN"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"floatx80ToCommonNaN: argument 0"}
!14 = distinct !{!14, !"floatx80ToCommonNaN"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"floatx80ToCommonNaN: argument 0"}
!17 = distinct !{!17, !"floatx80ToCommonNaN"}
!18 = !{!19, !19, i64 0}
!19 = !{!"double", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !20, i64 0}
!24 = !{i32 0, i32 0, i32 0, i32 0}
!25 = !{!"printf"}

  tail call fastcc void @vector_addm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
