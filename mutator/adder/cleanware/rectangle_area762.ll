; Mutation 762
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }

@fpstt = internal unnamed_addr global i32 0
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@ft0.0 = internal unnamed_addr global i64 0
@ft0.1 = internal unnamed_addr global i16 0, align 4
@fp_status.2 = internal unnamed_addr global i8 0
@stack761 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.759 = constant [12 x i8] c"Area: %.2f\0a\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = load i32, i32* @fpstt, align 16
  %3 = add i32 %2, 7
  %4 = and i32 %3, 7
  %5 = tail call fastcc { i64, i16 } @float64_to_floatx80(i64 noundef %0)
  %6 = extractvalue { i64, i16 } %5, 0
  %7 = extractvalue { i64, i16 } %5, 1
  %8 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 0
  store i64 %6, i64* %8, align 16
  %9 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 1
  store i16 %7, i16* %9, align 8
  store i32 %4, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc { i64, i16 } @float64_to_floatx80(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = and i64 %0, 4503599627370495
  %3 = lshr i64 %0, 52
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 2047
  %6 = lshr i64 %0, 63
  %7 = trunc i64 %6 to i16
  switch i32 %5, label %45 [
    i32 2047, label %8
    i32 0, label %32
  ]

8:                                                ; preds = %1
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %8
  %11 = and i64 %0, 9221120237041090560
  %12 = icmp ne i64 %11, 9218868437227405312
  %13 = and i64 %0, 2251799813685247
  %14 = icmp eq i64 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i8, i8* @fp_status.2, align 1, !noalias !6
  %18 = or i8 %17, 1
  store i8 %18, i8* @fp_status.2, align 1, !noalias !6
  br label %19

19:                                               ; preds = %16, %10
  %20 = shl i64 %0, 12
  %21 = icmp eq i64 %20, 0
  %22 = lshr exact i64 %20, 1
  %23 = or i64 %22, -9223372036854775808
  %24 = shl nuw i16 %7, 15
  %25 = or i16 %24, 32767
  %26 = select i1 %21, i64 -4611686018427387904, i64 %23
  %27 = select i1 %21, i16 -1, i16 %25
  %28 = insertvalue { i64, i16 } poison, i64 %26, 0
  br label %56

29:                                               ; preds = %8
  %30 = shl nuw i16 %7, 15
  %31 = or i16 %30, 32767
  br label %56

32:                                               ; preds = %1
  %33 = icmp eq i64 %2, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = shl nuw i16 %7, 15
  br label %56

36:                                               ; preds = %32
  %ctlz.sh = lshr i64 %2, 1
  %ctlz.step = or i64 %ctlz.sh, %2
  %ctlz.sh1 = lshr i64 %ctlz.step, 2
  %ctlz.step2 = or i64 %ctlz.sh1, %ctlz.step
  %ctlz.sh3 = lshr i64 %ctlz.step2, 4
  %ctlz.step4 = or i64 %ctlz.sh3, %ctlz.step2
  %ctlz.sh5 = lshr i64 %ctlz.step4, 8
  %ctlz.step6 = or i64 %ctlz.sh5, %ctlz.step4
  %ctlz.sh7 = lshr i64 %ctlz.step6, 16
  %ctlz.step8 = or i64 %ctlz.sh7, %ctlz.step6
  %ctlz.sh9 = lshr i64 %ctlz.step8, 32
  %ctlz.step10 = or i64 %ctlz.sh9, %ctlz.step8
  %37 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %37, 6148914691236517205
  %ctpop.sh = lshr i64 %37, 1
  %cppop.and2 = and i64 %ctpop.sh, 6148914691236517205
  %ctpop.step = add nuw i64 %cppop.and2, %cppop.and1
  %cppop.and111 = and i64 %ctpop.step, 3689348814741910323
  %ctpop.sh12 = lshr i64 %ctpop.step, 2
  %cppop.and213 = and i64 %ctpop.sh12, 3689348814741910323
  %ctpop.step14 = add nuw nsw i64 %cppop.and213, %cppop.and111
  %cppop.and115 = and i64 %ctpop.step14, 506381209866536711
  %ctpop.sh16 = lshr i64 %ctpop.step14, 4
  %cppop.and217 = and i64 %ctpop.sh16, 506381209866536711
  %ctpop.step18 = add nuw nsw i64 %cppop.and217, %cppop.and115
  %cppop.and119 = and i64 %ctpop.step18, 4222189076152335
  %ctpop.sh20 = lshr i64 %ctpop.step18, 8
  %cppop.and221 = and i64 %ctpop.sh20, 4222189076152335
  %ctpop.step22 = add nuw nsw i64 %cppop.and221, %cppop.and119
  %cppop.and123 = and i64 %ctpop.step22, 133143986207
  %ctpop.sh24 = lshr i64 %ctpop.step22, 16
  %cppop.and225 = and i64 %ctpop.sh24, 133143986207
  %ctpop.step26 = add nuw nsw i64 %cppop.and225, %cppop.and123
  %ctpop.sh28 = lshr i64 %ctpop.step26, 32
  %ctpop.step30 = add nuw nsw i64 %ctpop.sh28, %ctpop.step26
  %38 = trunc i64 %ctpop.step30 to i32
  %39 = shl nuw nsw i32 %38, 24
  %40 = add nsw i32 %39, -184549376
  %41 = ashr exact i32 %40, 24
  %42 = zext i32 %41 to i64
  %43 = shl i64 %2, %42
  %44 = sub nsw i32 1, %41
  br label %45

45:                                               ; preds = %36, %1
  %46 = phi i64 [ %2, %1 ], [ %43, %36 ]
  %47 = phi i32 [ %5, %1 ], [ %44, %36 ]
  %48 = shl i64 %46, 11
  %49 = or i64 %48, -9223372036854775808
  %50 = trunc i64 %6 to i32
  %51 = shl nuw nsw i32 %50, 15
  %52 = or i32 %51, 15360
  %53 = add nsw i32 %52, %47
  %54 = trunc i32 %53 to i16
  %55 = insertvalue { i64, i16 } poison, i64 %49, 0
  br label %56

56:                                               ; preds = %45, %34, %29, %19
  %57 = phi { i64, i16 } [ %28, %19 ], [ { i64 -9223372036854775808, i16 poison }, %29 ], [ { i64 0, i16 poison }, %34 ], [ %55, %45 ]
  %58 = phi i16 [ %27, %19 ], [ %31, %29 ], [ %35, %34 ], [ %54, %45 ]
  %59 = insertvalue { i64, i16 } %57, i16 %58, 1
  ret { i64, i16 } %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
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
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !9
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !9
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fpop() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  store i32 %3, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_FT0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = tail call fastcc { i64, i16 } @float64_to_floatx80(i64 noundef %0)
  %3 = extractvalue { i64, i16 } %2, 0
  %4 = extractvalue { i64, i16 } %2, 1
  store i64 %3, i64* @ft0.0, align 8
  store i16 %4, i16* @ft0.1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fmul_ST0_FT0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = load i64, i64* @ft0.0, align 8
  %7 = load i16, i16* @ft0.1, align 4
  %8 = and i16 %5, 32767
  %9 = zext i16 %8 to i32
  %10 = and i16 %7, 32767
  %11 = zext i16 %10 to i32
  %12 = xor i16 %7, %5
  %13 = and i16 %12, -32768
  %14 = icmp eq i16 %8, 32767
  br i1 %14, label %15, label %33

15:                                               ; preds = %0
  %16 = and i64 %3, 9223372036854775807
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = icmp ne i16 %10, 32767
  %20 = and i64 %6, 9223372036854775807
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %15
  %24 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %3, i16 %5, i64 %6, i16 %7)  nounwind 
  %25 = extractvalue { i64, i16 } %24, 0
  %26 = extractvalue { i64, i16 } %24, 1
  br label %floatx80_mul.exit

27:                                               ; preds = %18
  %28 = zext i16 %10 to i64
  %29 = or i64 %6, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = or i16 %12, 32767
  br label %floatx80_mul.exit

33:                                               ; preds = %0
  %34 = icmp eq i16 %10, 32767
  br i1 %34, label %35, label %51

35:                                               ; preds = %33
  %36 = and i64 %6, 9223372036854775807
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %3, i16 %5, i64 %6, i16 %7)  nounwind 
  %40 = extractvalue { i64, i16 } %39, 0
  %41 = extractvalue { i64, i16 } %39, 1
  br label %floatx80_mul.exit

42:                                               ; preds = %35
  %43 = zext i16 %8 to i64
  %44 = or i64 %3, %43
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %27
  %47 = load i8, i8* @fp_status.2, align 1
  %48 = or i8 %47, 1
  store i8 %48, i8* @fp_status.2, align 1
  br label %floatx80_mul.exit

49:                                               ; preds = %42
  %50 = or i16 %12, 32767
  br label %floatx80_mul.exit

51:                                               ; preds = %33
  %52 = icmp eq i16 %8, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = icmp eq i64 %3, 0
  br i1 %54, label %floatx80_mul.exit, label %55

55:                                               ; preds = %53
  %ctlz.sh.i = lshr i64 %3, 1
  %ctlz.step.i = or i64 %ctlz.sh.i, %3
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
  %56 = xor i64 %ctlz.step10.i, -1
  %cppop.and1.i = and i64 %56, 6148914691236517205
  %ctpop.sh.i = lshr i64 %56, 1
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
  %cppop.and127.i = and i64 %ctpop.step26.i, 63
  %ctpop.sh28.i = lshr i64 %ctpop.step26.i, 32
  %ctpop.step30.i = add nuw nsw i64 %cppop.and127.i, %ctpop.sh28.i
  %57 = trunc i64 %ctpop.step30.i to i32
  %58 = shl i64 %3, %ctpop.step30.i
  %59 = sub nsw i32 1, %57
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i32 [ %59, %55 ], [ %9, %51 ]
  %62 = phi i64 [ %58, %55 ], [ %3, %51 ]
  %63 = icmp eq i16 %10, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = icmp eq i64 %6, 0
  br i1 %65, label %floatx80_mul.exit, label %66

66:                                               ; preds = %64
  %ctlz.sh31.i = lshr i64 %6, 1
  %ctlz.step32.i = or i64 %ctlz.sh31.i, %6
  %ctlz.sh33.i = lshr i64 %ctlz.step32.i, 2
  %ctlz.step34.i = or i64 %ctlz.sh33.i, %ctlz.step32.i
  %ctlz.sh35.i = lshr i64 %ctlz.step34.i, 4
  %ctlz.step36.i = or i64 %ctlz.sh35.i, %ctlz.step34.i
  %ctlz.sh37.i = lshr i64 %ctlz.step36.i, 8
  %ctlz.step38.i = or i64 %ctlz.sh37.i, %ctlz.step36.i
  %ctlz.sh39.i = lshr i64 %ctlz.step38.i, 16
  %ctlz.step40.i = or i64 %ctlz.sh39.i, %ctlz.step38.i
  %ctlz.sh41.i = lshr i64 %ctlz.step40.i, 32
  %ctlz.step42.i = or i64 %ctlz.sh41.i, %ctlz.step40.i
  %67 = xor i64 %ctlz.step42.i, -1
  %cppop.and143.i = and i64 %67, 6148914691236517205
  %ctpop.sh44.i = lshr i64 %67, 1
  %cppop.and245.i = and i64 %ctpop.sh44.i, 6148914691236517205
  %ctpop.step46.i = add nuw i64 %cppop.and245.i, %cppop.and143.i
  %cppop.and147.i = and i64 %ctpop.step46.i, 3689348814741910323
  %ctpop.sh48.i = lshr i64 %ctpop.step46.i, 2
  %cppop.and249.i = and i64 %ctpop.sh48.i, 3689348814741910323
  %ctpop.step50.i = add nuw nsw i64 %cppop.and249.i, %cppop.and147.i
  %cppop.and151.i = and i64 %ctpop.step50.i, 506381209866536711
  %ctpop.sh52.i = lshr i64 %ctpop.step50.i, 4
  %cppop.and253.i = and i64 %ctpop.sh52.i, 506381209866536711
  %ctpop.step54.i = add nuw nsw i64 %cppop.and253.i, %cppop.and151.i
  %cppop.and155.i = and i64 %ctpop.step54.i, 4222189076152335
  %ctpop.sh56.i = lshr i64 %ctpop.step54.i, 8
  %cppop.and257.i = and i64 %ctpop.sh56.i, 4222189076152335
  %ctpop.step58.i = add nuw nsw i64 %cppop.and257.i, %cppop.and155.i
  %cppop.and159.i = and i64 %ctpop.step58.i, 133143986207
  %ctpop.sh60.i = lshr i64 %ctpop.step58.i, 16
  %cppop.and261.i = and i64 %ctpop.sh60.i, 133143986207
  %ctpop.step62.i = add nuw nsw i64 %cppop.and261.i, %cppop.and159.i
  %cppop.and163.i = and i64 %ctpop.step62.i, 63
  %ctpop.sh64.i = lshr i64 %ctpop.step62.i, 32
  %ctpop.step66.i = add nuw nsw i64 %cppop.and163.i, %ctpop.sh64.i
  %68 = trunc i64 %ctpop.step66.i to i32
  %69 = shl i64 %6, %ctpop.step66.i
  %70 = sub nsw i32 1, %68
  br label %71

71:                                               ; preds = %66, %60
  %72 = phi i32 [ %70, %66 ], [ %11, %60 ]
  %73 = phi i64 [ %69, %66 ], [ %6, %60 ]
  %74 = add nsw i32 %72, %61
  %75 = lshr i64 %62, 32
  %76 = lshr i64 %73, 32
  %77 = and i64 %62, 4294967295
  %78 = and i64 %73, 4294967295
  %79 = mul nuw i64 %78, %77
  %80 = mul nuw i64 %76, %77
  %81 = mul nuw i64 %78, %75
  %82 = mul nuw i64 %76, %75
  %83 = add i64 %80, %81
  %84 = icmp ult i64 %83, %81
  %85 = select i1 %84, i64 4294967296, i64 0
  %86 = lshr i64 %83, 32
  %87 = shl i64 %83, 32
  %88 = add i64 %87, %79
  %89 = icmp ult i64 %88, %87
  %90 = zext i1 %89 to i64
  %91 = add nuw i64 %86, %82
  %92 = add i64 %91, %85
  %93 = add i64 %92, %90
  %94 = icmp sgt i64 %93, 0
  %95 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %88, i64 1)  nounwind 
  %96 = select i1 %94, i64 %95, i64 %93
  %97 = zext i1 %94 to i64
  %98 = shl i64 %88, %97
  %.v.i = select i1 %94, i32 -16383, i32 -16382
  %99 = add nsw i32 %74, %.v.i
  %100 = add nsw i32 %99, -32766
  %101 = icmp ult i32 %100, -32765
  br i1 %101, label %102, label %176

102:                                              ; preds = %71
  %103 = icmp sgt i32 %99, 32766
  br i1 %103, label %110, label %104

104:                                              ; preds = %102
  %105 = icmp eq i32 %99, 32766
  %106 = icmp eq i64 %96, -1
  %107 = and i1 %106, %105
  %108 = icmp slt i64 %98, 0
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %115

110:                                              ; preds = %104, %102
  %111 = load i8, i8* @fp_status.2, align 1
  %112 = or i8 %111, 40
  store i8 %112, i8* @fp_status.2, align 1
  %113 = or i16 %12, 32767
  %114 = zext i16 %113 to i32
  br label %roundAndPackFloatx80.exit.i

115:                                              ; preds = %104
  %116 = icmp slt i32 %99, 1
  br i1 %116, label %117, label %176

117:                                              ; preds = %115
  %118 = icmp eq i32 %99, 0
  %119 = select i1 %118, i1 %108, i1 false
  %120 = icmp ne i64 %96, -1
  %121 = xor i1 %119, true
  %122 = or i1 %120, %121
  %123 = sub nsw i32 1, %99
  %124 = icmp ult i32 %123, 64
  br i1 %124, label %125, label %135

125:                                              ; preds = %117
  %126 = add nsw i32 %99, 63
  %127 = and i32 %126, 63
  %128 = zext i32 %127 to i64
  %129 = shl i64 %96, %128
  %130 = icmp ne i64 %98, 0
  %131 = zext i1 %130 to i64
  %132 = or i64 %129, %131
  %133 = zext i32 %123 to i64
  %134 = lshr i64 %96, %133
  br label %145

135:                                              ; preds = %117
  %136 = icmp eq i32 %99, -63
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = icmp ne i64 %98, 0
  %139 = zext i1 %138 to i64
  %140 = or i64 %96, %139
  br label %145

141:                                              ; preds = %135
  %142 = or i64 %98, %96
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  br label %145

145:                                              ; preds = %141, %137, %125
  %146 = phi i64 [ %132, %125 ], [ %140, %137 ], [ %144, %141 ]
  %147 = phi i64 [ %134, %125 ], [ 0, %137 ], [ 0, %141 ]
  %148 = icmp ne i64 %146, 0
  %149 = select i1 %122, i1 %148, i1 false
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i8, i8* @fp_status.2, align 1
  %152 = or i8 %151, 16
  br label %157

153:                                              ; preds = %145
  %154 = icmp eq i64 %146, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %153
  %156 = load i8, i8* @fp_status.2, align 1
  br label %157

157:                                              ; preds = %155, %150
  %158 = phi i8 [ %156, %155 ], [ %152, %150 ]
  %159 = or i8 %158, 32
  store i8 %159, i8* @fp_status.2, align 1
  br label %160

160:                                              ; preds = %157, %153
  %phi.cmp = icmp sgt i64 %146, -1
  br i1 %phi.cmp, label %170, label %161

161:                                              ; preds = %160
  %162 = add nuw i64 %147, 1
  %163 = and i64 %146, 9223372036854775807
  %164 = icmp eq i64 %163, 0
  %165 = zext i1 %164 to i64
  %166 = xor i64 %165, -1
  %167 = and i64 %162, %166
  %168 = lshr i64 %162, 63
  %169 = trunc i64 %168 to i32
  br label %170

170:                                              ; preds = %161, %160
  %171 = phi i64 [ %147, %160 ], [ %167, %161 ]
  %172 = phi i32 [ 0, %160 ], [ %169, %161 ]
  %173 = zext i16 %13 to i32
  %174 = add nuw nsw i32 %172, %173
  %175 = insertvalue { i64, i16 } poison, i64 %171, 0
  br label %roundAndPackFloatx80.exit.i

176:                                              ; preds = %115, %71
  %177 = icmp eq i64 %98, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %176
  %179 = load i8, i8* @fp_status.2, align 1
  %180 = or i8 %179, 32
  store i8 %180, i8* @fp_status.2, align 1
  br label %181

181:                                              ; preds = %178, %176
  %182 = icmp sgt i64 %98, -1
  br i1 %182, label %194, label %183

183:                                              ; preds = %181
  %184 = add i64 %96, 1
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = add nuw nsw i32 %99, 1
  br label %197

188:                                              ; preds = %183
  %189 = and i64 %98, 9223372036854775807
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i64
  %192 = xor i64 %191, -1
  %193 = and i64 %184, %192
  br label %197

194:                                              ; preds = %181
  %195 = icmp eq i64 %96, 0
  %196 = select i1 %195, i32 0, i32 %99
  br label %197

197:                                              ; preds = %194, %188, %186
  %198 = phi i64 [ %96, %194 ], [ -9223372036854775808, %186 ], [ %193, %188 ]
  %199 = phi i32 [ %196, %194 ], [ %187, %186 ], [ %99, %188 ]
  %200 = zext i16 %13 to i32
  %201 = add nuw nsw i32 %199, %200
  %202 = insertvalue { i64, i16 } poison, i64 %198, 0
  br label %roundAndPackFloatx80.exit.i

roundAndPackFloatx80.exit.i:                      ; preds = %197, %170, %110
  %203 = phi { i64, i16 } [ { i64 -9223372036854775808, i16 poison }, %110 ], [ %175, %170 ], [ %202, %197 ]
  %204 = phi i32 [ %114, %110 ], [ %174, %170 ], [ %201, %197 ]
  %205 = trunc i32 %204 to i16
  %206 = extractvalue { i64, i16 } %203, 0
  br label %floatx80_mul.exit

floatx80_mul.exit:                                ; preds = %roundAndPackFloatx80.exit.i, %64, %53, %49, %46, %38, %31, %23
  %207 = phi i64 [ %25, %23 ], [ -4611686018427387904, %46 ], [ -9223372036854775808, %31 ], [ %40, %38 ], [ -9223372036854775808, %49 ], [ %206, %roundAndPackFloatx80.exit.i ], [ 0, %53 ], [ 0, %64 ]
  %208 = phi i16 [ %26, %23 ], [ -1, %46 ], [ %32, %31 ], [ %41, %38 ], [ %50, %49 ], [ %205, %roundAndPackFloatx80.exit.i ], [ %13, %53 ], [ %13, %64 ]
  store i64 %207, i64* %2, align 16
  store i16 %208, i16* %4, align 8
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64)  nofree nosync nounwind readnone speculatable willreturn 

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
  %10 = load double, double* %5, align 8, !tbaa !12
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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: norecurse nounwind
define internal fastcc void @rectangle_area762(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !18 {
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i6.i = add i32 %tmp0_v.i3.i, -12
  %5 = inttoptr i32 %tmp2_v5.i6.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %7, align 4
  %8 = load i64, i64* inttoptr (i32 134520856 to i64*), align 8
  tail call fastcc void @helper_fldl_ST0(i64 %8)
  %tmp2_v1.i16.i = add i32 %tmp0_v.i3.i, -40
  %tmp5_v2.i17.i = tail call fastcc i64 @helper_fstl_ST0()
  %9 = inttoptr i32 %tmp2_v1.i16.i to i64*
  store i64 %tmp5_v2.i17.i, i64* %9, align 8
  tail call fastcc void @helper_fpop()
  %10 = load i64, i64* inttoptr (i32 134520864 to i64*), align 32
  tail call fastcc void @helper_fldl_ST0(i64 %10)
  %tmp2_v7.i22.i = add i32 %tmp0_v.i3.i, -32
  %tmp5_v8.i23.i = tail call fastcc i64 @helper_fstl_ST0()
  %11 = inttoptr i32 %tmp2_v7.i22.i to i64*
  store i64 %tmp5_v8.i23.i, i64* %11, align 16
  tail call fastcc void @helper_fpop()
  %12 = load i64, i64* %9, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %12)
  %13 = load i64, i64* %11, align 16
  tail call fastcc void @helper_fldl_FT0(i64 %13)
  tail call fastcc void @helper_fmul_ST0_FT0()
  %tmp2_v16.i31.i = add i32 %tmp0_v.i3.i, -24
  %tmp5_v17.i32.i = tail call fastcc i64 @helper_fstl_ST0()
  %14 = inttoptr i32 %tmp2_v16.i31.i to i64*
  store i64 %tmp5_v17.i32.i, i64* %14, align 8
  tail call fastcc void @helper_fpop()
  %tmp2_v19.i.i = add i32 %tmp0_v.i3.i, -20
  %15 = inttoptr i32 %tmp2_v19.i.i to i32*
  %16 = load i32, i32* %15, align 4
  %tmp2_v21.i.i = add i32 %tmp0_v.i3.i, -56
  %17 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 %16, i32* %17, align 8
  %18 = inttoptr i32 %tmp2_v16.i31.i to i32*
  %19 = load i32, i32* %18, align 8
  %tmp2_v24.i.i = add i32 %tmp0_v.i3.i, -60
  %20 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v27.i36.i = add i32 %tmp0_v.i3.i, -64
  %21 = inttoptr i32 %tmp2_v27.i36.i to i32*
  %spi.bis.759 = ptrtoint[12 x i8]* @str.759 to i32
  store i32 %spi.bis.759, i32* %21, align 16
  %tmp2_v28.i37.i = add i32 %tmp0_v.i3.i, -68
  %22 = inttoptr i32 %tmp2_v28.i37.i to i32*
  store i32 134517224, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 134520840, i32 noundef %tmp2_v27.i36.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !19
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
!6 = !{!7}
!7 = distinct !{!7, !8, !"float64ToCommonNaN: argument 0"}
!8 = distinct !{!8, !"float64ToCommonNaN"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"floatx80ToCommonNaN: argument 0"}
!11 = distinct !{!11, !"floatx80ToCommonNaN"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !14, i64 0}
!18 = !{i32 0, i32 0, i32 0}
!19 = !{!"printf"}

  tail call fastcc void @rectangle_area762 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack761, i32 0, i32 8092) to i32)) nounwind
