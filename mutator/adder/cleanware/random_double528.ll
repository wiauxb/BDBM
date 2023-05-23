; Mutation 528
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }

@fpuc = internal unnamed_addr global i1 false
@fpstt = internal unnamed_addr global i32 0
@fpus = internal unnamed_addr global i16 0
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@fp_status.2 = internal unnamed_addr global i8 0
@ft0.0 = internal unnamed_addr global i64 0
@ft0.1 = internal unnamed_addr global i16 0, align 4
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false

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
  store i16 0, i16* @fpus, align 4
  store i32 0, i32* @fpstt, align 16
  store i1 true, i1* @fpuc, align 1
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
define internal fastcc void @helper_fildl_ST0(i32 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = load i32, i32* @fpstt, align 16
  %3 = add i32 %2, 7
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %int32_to_floatx80.exit, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)  nounwind 
  %ctlz.sh.i = lshr i32 %7, 1
  %ctlz.step.i = or i32 %ctlz.sh.i, %7
  %ctlz.sh1.i = lshr i32 %ctlz.step.i, 2
  %ctlz.step2.i = or i32 %ctlz.sh1.i, %ctlz.step.i
  %ctlz.sh3.i = lshr i32 %ctlz.step2.i, 4
  %ctlz.step4.i = or i32 %ctlz.sh3.i, %ctlz.step2.i
  %ctlz.sh5.i = lshr i32 %ctlz.step4.i, 8
  %ctlz.step6.i = or i32 %ctlz.sh5.i, %ctlz.step4.i
  %ctlz.sh7.i = lshr i32 %ctlz.step6.i, 16
  %ctlz.step8.i = or i32 %ctlz.sh7.i, %ctlz.step6.i
  %8 = xor i32 %ctlz.step8.i, -1
  %cppop.and1.i = and i32 %8, 1431655765
  %ctpop.sh.i = lshr i32 %8, 1
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
  %9 = add nuw nsw i32 %ctpop.step24.i, 32
  %10 = zext i32 %7 to i64
  %11 = sub nuw nsw i32 16414, %ctpop.step24.i
  %12 = zext i32 %9 to i64
  %13 = shl i64 %10, %12
  %14 = lshr i32 %0, 16
  %15 = and i32 %14, 32768
  %16 = or i32 %11, %15
  %17 = trunc i32 %16 to i16
  %18 = insertvalue { i64, i16 } poison, i64 %13, 0
  %19 = insertvalue { i64, i16 } %18, i16 %17, 1
  br label %int32_to_floatx80.exit

int32_to_floatx80.exit:                           ; preds = %6, %1
  %20 = phi { i64, i16 } [ %19, %6 ], [ zeroinitializer, %1 ]
  %21 = extractvalue { i64, i16 } %20, 0
  %22 = extractvalue { i64, i16 } %20, 1
  %23 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 0
  store i64 %21, i64* %23, align 16
  %24 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 1
  store i16 %22, i16* %24, align 8
  store i32 %4, i32* @fpstt, align 16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @helper_fdiv_STN_ST0() unnamed_addr  nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
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
  %12 = and i16 %11, 32767
  %13 = icmp ne i16 %12, 0
  %14 = icmp ne i64 %9, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %0
  %17 = load i16, i16* @fpus, align 4
  %18 = or i16 %17, 4
  store i16 %18, i16* @fpus, align 4
  %.b = load i1, i1* @fpuc, align 1
  %19 = select i1 %.b, i16 0, i16 63
  %20 = and i16 %19, %18
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = or i16 %17, -32636
  store i16 %23, i16* @fpus, align 4
  br label %24

24:                                               ; preds = %22, %16, %0
  %25 = and i16 %7, 32767
  %26 = zext i16 %25 to i32
  %27 = zext i16 %12 to i32
  %28 = xor i16 %11, %7
  %29 = lshr i16 %28, 15
  %30 = trunc i16 %29 to i8
  %31 = icmp eq i16 %25, 32767
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = and i64 %5, 9223372036854775807
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %37 = extractvalue { i64, i16 } %36, 0
  %38 = extractvalue { i64, i16 } %36, 1
  br label %floatx80_div.exit

39:                                               ; preds = %32
  %40 = icmp eq i16 %12, 32767
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = and i64 %9, 9223372036854775807
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %41
  %45 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %46 = extractvalue { i64, i16 } %45, 0
  %47 = extractvalue { i64, i16 } %45, 1
  br label %floatx80_div.exit

48:                                               ; preds = %39
  %49 = or i16 %28, 32767
  br label %floatx80_div.exit

50:                                               ; preds = %24
  switch i32 %27, label %78 [
    i32 32767, label %51
    i32 0, label %60
  ]

51:                                               ; preds = %50
  %52 = and i64 %9, 9223372036854775807
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %56 = extractvalue { i64, i16 } %55, 0
  %57 = extractvalue { i64, i16 } %55, 1
  br label %floatx80_div.exit

58:                                               ; preds = %51
  %59 = and i16 %28, -32768
  br label %floatx80_div.exit

60:                                               ; preds = %50
  %61 = icmp eq i64 %9, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  %63 = zext i16 %25 to i64
  %64 = or i64 %5, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %41
  %67 = load i8, i8* @fp_status.2, align 1
  %68 = or i8 %67, 1
  store i8 %68, i8* @fp_status.2, align 1
  br label %floatx80_div.exit

69:                                               ; preds = %62
  %70 = load i8, i8* @fp_status.2, align 1
  %71 = or i8 %70, 4
  store i8 %71, i8* @fp_status.2, align 1
  %72 = or i16 %28, 32767
  br label %floatx80_div.exit

73:                                               ; preds = %60
  %ctlz.sh.i = lshr i64 %9, 1
  %ctlz.step.i = or i64 %ctlz.sh.i, %9
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
  %74 = xor i64 %ctlz.step10.i, -1
  %cppop.and1.i = and i64 %74, 6148914691236517205
  %ctpop.sh.i = lshr i64 %74, 1
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
  %75 = trunc i64 %ctpop.step30.i to i32
  %76 = shl i64 %9, %ctpop.step30.i
  %77 = sub nsw i32 1, %75
  br label %78

78:                                               ; preds = %73, %50
  %79 = phi i64 [ %9, %50 ], [ %76, %73 ]
  %80 = phi i32 [ %27, %50 ], [ %77, %73 ]
  %81 = icmp eq i16 %25, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = icmp eq i64 %5, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = and i16 %28, -32768
  br label %floatx80_div.exit

86:                                               ; preds = %82
  %ctlz.sh31.i = lshr i64 %5, 1
  %ctlz.step32.i = or i64 %ctlz.sh31.i, %5
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
  %87 = xor i64 %ctlz.step42.i, -1
  %cppop.and143.i = and i64 %87, 6148914691236517205
  %ctpop.sh44.i = lshr i64 %87, 1
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
  %88 = trunc i64 %ctpop.step66.i to i32
  %89 = shl i64 %5, %ctpop.step66.i
  %90 = sub nsw i32 1, %88
  br label %91

91:                                               ; preds = %86, %78
  %92 = phi i64 [ %89, %86 ], [ %5, %78 ]
  %93 = phi i32 [ %90, %86 ], [ %26, %78 ]
  %94 = sub nsw i32 %93, %80
  %95 = icmp ugt i64 %79, %92
  %96 = shl i64 %92, 63
  %97 = xor i1 %95, true
  %98 = zext i1 %97 to i64
  %99 = lshr i64 %92, %98
  %100 = select i1 %95, i64 0, i64 %96
  %101 = select i1 %95, i32 16382, i32 16383
  %102 = add nsw i32 %94, %101
  %103 = icmp ugt i64 %79, %99
  %104 = lshr i64 %79, 32
  br i1 %103, label %107, label %105

105:                                              ; preds = %91
  %106 = and i64 %79, 4294967295
  br label %151

107:                                              ; preds = %91
  %108 = and i64 %79, -4294967296
  %109 = icmp ugt i64 %108, %99
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = udiv i64 %99, %104
  %112 = shl i64 %111, 32
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i64 [ %112, %110 ], [ -4294967296, %107 ]
  %115 = lshr exact i64 %114, 32
  %116 = and i64 %79, 4294967295
  %117 = mul nuw i64 %115, %116
  %118 = mul nuw i64 %115, %104
  %119 = lshr i64 %117, 32
  %120 = shl i64 %117, 32
  %121 = sub i64 %100, %120
  %122 = icmp ult i64 %100, %120
  %123 = sext i1 %122 to i64
  %124 = add nuw i64 %118, %119
  %125 = sub i64 %99, %124
  %126 = add i64 %125, %123
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %.loopexit16.i

128:                                              ; preds = %113
  %129 = shl i64 %79, 32
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i64 [ %114, %128 ], [ %134, %130 ]
  %132 = phi i64 [ %126, %128 ], [ %139, %130 ]
  %133 = phi i64 [ %121, %128 ], [ %135, %130 ]
  %134 = add i64 %131, -4294967296
  %135 = add i64 %133, %129
  %136 = add i64 %132, %104
  %137 = icmp ult i64 %135, %133
  %138 = zext i1 %137 to i64
  %139 = add i64 %136, %138
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %130, label %.loopexit16.i, !llvm.loop !12

.loopexit16.i:                                    ; preds = %130, %113
  %141 = phi i64 [ %121, %113 ], [ %135, %130 ]
  %142 = phi i64 [ %126, %113 ], [ %139, %130 ]
  %143 = phi i64 [ %114, %113 ], [ %134, %130 ]
  %144 = tail call i64 @llvm.fshl.i64(i64 %142, i64 %141, i64 32)  nounwind 
  %145 = icmp ugt i64 %108, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %.loopexit16.i
  %147 = udiv i64 %144, %104
  br label %148

148:                                              ; preds = %146, %.loopexit16.i
  %149 = phi i64 [ %147, %146 ], [ 4294967295, %.loopexit16.i ]
  %150 = or i64 %149, %143
  br label %151

151:                                              ; preds = %148, %105
  %152 = phi i64 [ %106, %105 ], [ %116, %148 ]
  %153 = phi i64 [ -1, %105 ], [ %150, %148 ]
  %154 = lshr i64 %153, 32
  %155 = and i64 %153, 4294967295
  %156 = mul nuw i64 %155, %152
  %157 = mul nuw i64 %154, %152
  %158 = mul nuw i64 %155, %104
  %159 = mul nuw i64 %154, %104
  %160 = add i64 %157, %158
  %161 = icmp ult i64 %160, %158
  %162 = select i1 %161, i64 -4294967296, i64 0
  %163 = lshr i64 %160, 32
  %164 = shl i64 %160, 32
  %165 = add i64 %164, %156
  %166 = icmp ult i64 %165, %164
  %167 = sext i1 %166 to i64
  %168 = sub i64 %100, %165
  %169 = icmp ult i64 %100, %165
  %170 = sext i1 %169 to i64
  %171 = add i64 %159, %163
  %172 = sub i64 %99, %171
  %173 = add i64 %172, %162
  %174 = add i64 %173, %167
  %175 = add i64 %174, %170
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %.preheader14.i, label %.loopexit15.i

.preheader14.i:                                   ; preds = %.preheader14.i, %151
  %177 = phi i64 [ %180, %.preheader14.i ], [ %153, %151 ]
  %178 = phi i64 [ %181, %.preheader14.i ], [ %168, %151 ]
  %179 = phi i64 [ %184, %.preheader14.i ], [ %175, %151 ]
  %180 = add i64 %177, -1
  %181 = add i64 %178, %79
  %182 = icmp ult i64 %181, %178
  %183 = zext i1 %182 to i64
  %184 = add nsw i64 %179, %183
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %.preheader14.i, label %.loopexit15.i, !llvm.loop !14

.loopexit15.i:                                    ; preds = %.preheader14.i, %151
  %186 = phi i64 [ %168, %151 ], [ %181, %.preheader14.i ]
  %187 = phi i64 [ %153, %151 ], [ %180, %.preheader14.i ]
  %188 = icmp ugt i64 %79, %186
  br i1 %188, label %189, label %274

189:                                              ; preds = %.loopexit15.i
  %190 = and i64 %79, -4294967296
  %191 = icmp ugt i64 %190, %186
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = udiv i64 %186, %104
  %194 = shl i64 %193, 32
  br label %195

195:                                              ; preds = %192, %189
  %196 = phi i64 [ %194, %192 ], [ -4294967296, %189 ]
  %197 = lshr exact i64 %196, 32
  %198 = mul nuw i64 %197, %152
  %199 = mul nuw i64 %197, %104
  %200 = lshr i64 %198, 32
  %201 = shl i64 %198, 32
  %202 = sub i64 0, %201
  %203 = icmp ne i64 %201, 0
  %204 = sext i1 %203 to i64
  %205 = add i64 %199, %200
  %206 = sub i64 %186, %205
  %207 = add i64 %206, %204
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %.loopexit13.i

209:                                              ; preds = %195
  %210 = shl i64 %79, 32
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i64 [ %196, %209 ], [ %215, %211 ]
  %213 = phi i64 [ %207, %209 ], [ %220, %211 ]
  %214 = phi i64 [ %202, %209 ], [ %216, %211 ]
  %215 = add i64 %212, -4294967296
  %216 = add i64 %214, %210
  %217 = add i64 %213, %104
  %218 = icmp ult i64 %216, %214
  %219 = zext i1 %218 to i64
  %220 = add i64 %217, %219
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %211, label %.loopexit13.i, !llvm.loop !12

.loopexit13.i:                                    ; preds = %211, %195
  %222 = phi i64 [ %202, %195 ], [ %216, %211 ]
  %223 = phi i64 [ %207, %195 ], [ %220, %211 ]
  %224 = phi i64 [ %196, %195 ], [ %215, %211 ]
  %225 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %222, i64 32)  nounwind 
  %226 = icmp ugt i64 %190, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %.loopexit13.i
  %228 = udiv i64 %225, %104
  br label %229

229:                                              ; preds = %227, %.loopexit13.i
  %230 = phi i64 [ %228, %227 ], [ 4294967295, %.loopexit13.i ]
  %231 = or i64 %230, %224
  %232 = shl i64 %231, 1
  %233 = icmp ult i64 %232, 9
  br i1 %233, label %234, label %274

234:                                              ; preds = %229
  %235 = lshr i64 %231, 32
  %236 = and i64 %231, 4294967295
  %237 = mul nuw i64 %236, %152
  %238 = mul nuw i64 %235, %152
  %239 = mul nuw i64 %236, %104
  %240 = mul nuw i64 %235, %104
  %241 = add i64 %238, %239
  %242 = icmp ult i64 %241, %239
  %243 = select i1 %242, i64 -4294967296, i64 0
  %244 = lshr i64 %241, 32
  %245 = shl i64 %241, 32
  %246 = add i64 %245, %237
  %247 = icmp ult i64 %246, %245
  %248 = sext i1 %247 to i64
  %249 = sub i64 0, %246
  %250 = icmp ne i64 %246, 0
  %251 = sext i1 %250 to i64
  %252 = add i64 %240, %244
  %253 = sub i64 %186, %252
  %254 = add i64 %253, %243
  %255 = add i64 %254, %248
  %256 = add i64 %255, %251
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.preheader.i, %234
  %258 = phi i64 [ %261, %.preheader.i ], [ %231, %234 ]
  %259 = phi i64 [ %262, %.preheader.i ], [ %249, %234 ]
  %260 = phi i64 [ %265, %.preheader.i ], [ %256, %234 ]
  %261 = add i64 %258, -1
  %262 = add i64 %259, %79
  %263 = icmp ult i64 %262, %259
  %264 = zext i1 %263 to i64
  %265 = add nsw i64 %260, %264
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %.preheader.i, label %.loopexit.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %.preheader.i, %234
  %267 = phi i64 [ %256, %234 ], [ 0, %.preheader.i ]
  %268 = phi i64 [ %249, %234 ], [ %262, %.preheader.i ]
  %269 = phi i64 [ %231, %234 ], [ %261, %.preheader.i ]
  %270 = or i64 %268, %267
  %271 = icmp ne i64 %270, 0
  %272 = zext i1 %271 to i64
  %273 = or i64 %269, %272
  br label %274

274:                                              ; preds = %.loopexit.i, %229, %.loopexit15.i
  %275 = phi i64 [ %273, %.loopexit.i ], [ %231, %229 ], [ -1, %.loopexit15.i ]
  %276 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %30, i32 noundef %102, i64 noundef %187, i64 noundef %275)  nounwind 
  %277 = extractvalue { i64, i16 } %276, 0
  %278 = extractvalue { i64, i16 } %276, 1
  br label %floatx80_div.exit

floatx80_div.exit:                                ; preds = %274, %84, %69, %66, %58, %54, %48, %44, %35
  %279 = phi i64 [ %37, %35 ], [ %46, %44 ], [ -4611686018427387904, %66 ], [ -9223372036854775808, %48 ], [ %56, %54 ], [ 0, %58 ], [ -9223372036854775808, %69 ], [ 0, %84 ], [ %277, %274 ]
  %280 = phi i16 [ %38, %35 ], [ %47, %44 ], [ -1, %66 ], [ %49, %48 ], [ %57, %54 ], [ %59, %58 ], [ %72, %69 ], [ %85, %84 ], [ %278, %274 ]
  store i64 %279, i64* %4, align 16
  store i16 %280, i16* %6, align 8
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
define internal fastcc void @helper_fsub_ST0_FT0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = load i64, i64* @ft0.0, align 8
  %7 = load i16, i16* @ft0.1, align 4
  %8 = lshr i16 %5, 15
  %9 = trunc i16 %8 to i8
  %10 = lshr i16 %7, 15
  %11 = trunc i16 %10 to i8
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = tail call fastcc { i64, i16 } @subFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_sub.exit

15:                                               ; preds = %0
  %16 = tail call fastcc { i64, i16 } @addFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_sub.exit

floatx80_sub.exit:                                ; preds = %15, %13
  %17 = phi { i64, i16 } [ %14, %13 ], [ %16, %15 ]
  %18 = extractvalue { i64, i16 } %17, 0
  %19 = extractvalue { i64, i16 } %17, 1
  store i64 %18, i64* %2, align 16
  store i16 %19, i16* %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fmul_STN_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
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
  %12 = and i16 %7, 32767
  %13 = zext i16 %12 to i32
  %14 = and i16 %11, 32767
  %15 = zext i16 %14 to i32
  %16 = xor i16 %11, %7
  %17 = lshr i16 %16, 15
  %18 = trunc i16 %17 to i8
  %19 = icmp eq i16 %12, 32767
  br i1 %19, label %20, label %38

20:                                               ; preds = %0
  %21 = and i64 %5, 9223372036854775807
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = icmp ne i16 %14, 32767
  %25 = and i64 %9, 9223372036854775807
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %20
  %29 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %30 = extractvalue { i64, i16 } %29, 0
  %31 = extractvalue { i64, i16 } %29, 1
  br label %floatx80_mul.exit

32:                                               ; preds = %23
  %33 = zext i16 %14 to i64
  %34 = or i64 %9, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = or i16 %16, 32767
  br label %floatx80_mul.exit

38:                                               ; preds = %0
  %39 = icmp eq i16 %14, 32767
  br i1 %39, label %40, label %56

40:                                               ; preds = %38
  %41 = and i64 %9, 9223372036854775807
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %45 = extractvalue { i64, i16 } %44, 0
  %46 = extractvalue { i64, i16 } %44, 1
  br label %floatx80_mul.exit

47:                                               ; preds = %40
  %48 = zext i16 %12 to i64
  %49 = or i64 %5, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %32
  %52 = load i8, i8* @fp_status.2, align 1
  %53 = or i8 %52, 1
  store i8 %53, i8* @fp_status.2, align 1
  br label %floatx80_mul.exit

54:                                               ; preds = %47
  %55 = or i16 %16, 32767
  br label %floatx80_mul.exit

56:                                               ; preds = %38
  %57 = icmp eq i16 %12, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  %59 = icmp eq i64 %5, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = and i16 %16, -32768
  br label %floatx80_mul.exit

62:                                               ; preds = %58
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
  %63 = xor i64 %ctlz.step10.i, -1
  %cppop.and1.i = and i64 %63, 6148914691236517205
  %ctpop.sh.i = lshr i64 %63, 1
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
  %64 = trunc i64 %ctpop.step30.i to i32
  %65 = shl i64 %5, %ctpop.step30.i
  %66 = sub nsw i32 1, %64
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i32 [ %66, %62 ], [ %13, %56 ]
  %69 = phi i64 [ %65, %62 ], [ %5, %56 ]
  %70 = icmp eq i16 %14, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = icmp eq i64 %9, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = and i16 %16, -32768
  br label %floatx80_mul.exit

75:                                               ; preds = %71
  %ctlz.sh31.i = lshr i64 %9, 1
  %ctlz.step32.i = or i64 %ctlz.sh31.i, %9
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
  %76 = xor i64 %ctlz.step42.i, -1
  %cppop.and143.i = and i64 %76, 6148914691236517205
  %ctpop.sh44.i = lshr i64 %76, 1
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
  %77 = trunc i64 %ctpop.step66.i to i32
  %78 = shl i64 %9, %ctpop.step66.i
  %79 = sub nsw i32 1, %77
  br label %80

80:                                               ; preds = %75, %67
  %81 = phi i32 [ %79, %75 ], [ %15, %67 ]
  %82 = phi i64 [ %78, %75 ], [ %9, %67 ]
  %83 = add nsw i32 %81, %68
  %84 = lshr i64 %69, 32
  %85 = lshr i64 %82, 32
  %86 = and i64 %69, 4294967295
  %87 = and i64 %82, 4294967295
  %88 = mul nuw i64 %87, %86
  %89 = mul nuw i64 %85, %86
  %90 = mul nuw i64 %87, %84
  %91 = mul nuw i64 %85, %84
  %92 = add i64 %89, %90
  %93 = icmp ult i64 %92, %90
  %94 = select i1 %93, i64 4294967296, i64 0
  %95 = lshr i64 %92, 32
  %96 = shl i64 %92, 32
  %97 = add i64 %96, %88
  %98 = icmp ult i64 %97, %96
  %99 = zext i1 %98 to i64
  %100 = add nuw i64 %95, %91
  %101 = add i64 %100, %94
  %102 = add i64 %101, %99
  %103 = icmp sgt i64 %102, 0
  %104 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %97, i64 1)  nounwind 
  %105 = select i1 %103, i64 %104, i64 %102
  %106 = zext i1 %103 to i64
  %107 = shl i64 %97, %106
  %.v.i = select i1 %103, i32 -16383, i32 -16382
  %108 = add nsw i32 %83, %.v.i
  %109 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %18, i32 noundef %108, i64 noundef %105, i64 noundef %107)  nounwind 
  %110 = extractvalue { i64, i16 } %109, 0
  %111 = extractvalue { i64, i16 } %109, 1
  br label %floatx80_mul.exit

floatx80_mul.exit:                                ; preds = %80, %73, %60, %54, %51, %43, %36, %28
  %112 = phi i64 [ %30, %28 ], [ -4611686018427387904, %51 ], [ -9223372036854775808, %36 ], [ %45, %43 ], [ -9223372036854775808, %54 ], [ 0, %60 ], [ 0, %73 ], [ %110, %80 ]
  %113 = phi i16 [ %31, %28 ], [ -1, %51 ], [ %37, %36 ], [ %46, %43 ], [ %55, %54 ], [ %61, %60 ], [ %74, %73 ], [ %111, %80 ]
  store i64 %112, i64* %4, align 16
  store i16 %113, i16* %6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fadd_ST0_FT0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = load i64, i64* @ft0.0, align 8
  %7 = load i16, i16* @ft0.1, align 4
  %8 = lshr i16 %5, 15
  %9 = trunc i16 %8 to i8
  %10 = lshr i16 %7, 15
  %11 = trunc i16 %10 to i8
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = tail call fastcc { i64, i16 } @addFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_add.exit

15:                                               ; preds = %0
  %16 = tail call fastcc { i64, i16 } @subFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_add.exit

floatx80_add.exit:                                ; preds = %15, %13
  %17 = phi { i64, i16 } [ %14, %13 ], [ %16, %15 ]
  %18 = extractvalue { i64, i16 } %17, 0
  %19 = extractvalue { i64, i16 } %17, 1
  store i64 %18, i64* %2, align 16
  store i16 %19, i16* %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc { i64, i16 } @addFloatx80Sigs(i64 %0, i16 %1, i64 %2, i16 %3, i8 noundef zeroext %4) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %6 = and i16 %1, 32767
  %7 = zext i16 %6 to i32
  %8 = and i16 %3, 32767
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 %7, %9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %5
  %13 = icmp eq i16 %6, 32767
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = and i64 %0, 9223372036854775807
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %117, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %19 = extractvalue { i64, i16 } %18, 0
  %20 = extractvalue { i64, i16 } %18, 1
  br label %117

21:                                               ; preds = %12
  %22 = icmp eq i16 %8, 0
  %23 = sext i1 %22 to i32
  %24 = add nsw i32 %10, %23
  %25 = sub nsw i32 0, %24
  %26 = and i32 %25, 63
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %21
  %29 = icmp ult i32 %24, 64
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = zext i32 %26 to i64
  %32 = shl i64 %2, %31
  %33 = zext i32 %24 to i64
  %34 = lshr i64 %2, %33
  br label %92

35:                                               ; preds = %28
  %36 = icmp eq i32 %24, 64
  br i1 %36, label %92, label %37

37:                                               ; preds = %35
  %38 = icmp ne i64 %2, 0
  %39 = zext i1 %38 to i64
  br label %92

40:                                               ; preds = %5
  %41 = icmp slt i32 %10, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %40
  %43 = icmp eq i16 %8, 32767
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = and i64 %2, 9223372036854775807
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %49 = extractvalue { i64, i16 } %48, 0
  %50 = extractvalue { i64, i16 } %48, 1
  br label %117

51:                                               ; preds = %44
  %52 = zext i8 %4 to i16
  %53 = shl i16 %52, 15
  %54 = or i16 %53, 32767
  br label %117

55:                                               ; preds = %42
  %56 = icmp eq i16 %6, 0
  %57 = zext i1 %56 to i32
  %58 = add nsw i32 %10, %57
  %59 = sub nsw i32 0, %58
  %60 = and i32 %58, 63
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %55
  %63 = icmp ult i32 %59, 64
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = zext i32 %60 to i64
  %66 = shl i64 %0, %65
  %67 = zext i32 %59 to i64
  %68 = lshr i64 %0, %67
  br label %92

69:                                               ; preds = %62
  %70 = icmp eq i32 %58, -64
  br i1 %70, label %92, label %71

71:                                               ; preds = %69
  %72 = icmp ne i64 %0, 0
  %73 = zext i1 %72 to i64
  br label %92

74:                                               ; preds = %40
  %75 = icmp eq i16 %6, 32767
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = or i64 %2, %0
  %78 = and i64 %77, 9223372036854775807
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %117, label %80

80:                                               ; preds = %76
  %81 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %82 = extractvalue { i64, i16 } %81, 0
  %83 = extractvalue { i64, i16 } %81, 1
  br label %117

84:                                               ; preds = %74
  %85 = add i64 %2, %0
  %86 = icmp eq i16 %6, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %ctlz.sh = lshr i64 %85, 1
  %ctlz.step = or i64 %ctlz.sh, %85
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
  %88 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %88, 6148914691236517205
  %ctpop.sh = lshr i64 %88, 1
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
  %cppop.and127 = and i64 %ctpop.step26, 63
  %ctpop.sh28 = lshr i64 %ctpop.step26, 32
  %ctpop.step30 = add nuw nsw i64 %cppop.and127, %ctpop.sh28
  %89 = trunc i64 %ctpop.step30 to i32
  %90 = shl i64 %85, %ctpop.step30
  %91 = sub nsw i32 1, %89
  br label %110

92:                                               ; preds = %71, %69, %64, %55, %37, %35, %30, %21
  %93 = phi i64 [ %0, %35 ], [ %0, %21 ], [ %0, %30 ], [ %0, %37 ], [ %68, %64 ], [ %0, %55 ], [ 0, %71 ], [ 0, %69 ]
  %94 = phi i64 [ 0, %35 ], [ %2, %21 ], [ %34, %30 ], [ 0, %37 ], [ %2, %64 ], [ %2, %55 ], [ %2, %71 ], [ %2, %69 ]
  %95 = phi i64 [ %2, %35 ], [ 0, %21 ], [ %32, %30 ], [ %39, %37 ], [ %66, %64 ], [ 0, %55 ], [ %73, %71 ], [ %0, %69 ]
  %96 = phi i32 [ %7, %35 ], [ %7, %21 ], [ %7, %30 ], [ %7, %37 ], [ %9, %64 ], [ %9, %55 ], [ %9, %71 ], [ %9, %69 ]
  %97 = add i64 %94, %93
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %92, %84
  %100 = phi i32 [ %96, %92 ], [ %7, %84 ]
  %101 = phi i64 [ %97, %92 ], [ %85, %84 ]
  %102 = phi i64 [ %95, %92 ], [ 0, %84 ]
  %103 = shl i64 %101, 63
  %104 = icmp ne i64 %102, 0
  %105 = zext i1 %104 to i64
  %106 = or i64 %103, %105
  %107 = lshr i64 %101, 1
  %108 = or i64 %107, -9223372036854775808
  %109 = add nuw nsw i32 %100, 1
  br label %110

110:                                              ; preds = %99, %92, %87
  %111 = phi i32 [ %96, %92 ], [ %109, %99 ], [ %91, %87 ]
  %112 = phi i64 [ %97, %92 ], [ %108, %99 ], [ %90, %87 ]
  %113 = phi i64 [ %95, %92 ], [ %106, %99 ], [ 0, %87 ]
  %114 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %4, i32 noundef %111, i64 noundef %112, i64 noundef %113)
  %115 = extractvalue { i64, i16 } %114, 0
  %116 = extractvalue { i64, i16 } %114, 1
  br label %117

117:                                              ; preds = %110, %80, %76, %51, %47, %17, %14
  %118 = phi i64 [ %19, %17 ], [ %115, %110 ], [ %49, %47 ], [ -9223372036854775808, %51 ], [ %82, %80 ], [ %0, %14 ], [ %0, %76 ]
  %119 = phi i16 [ %20, %17 ], [ %116, %110 ], [ %50, %47 ], [ %54, %51 ], [ %83, %80 ], [ %1, %14 ], [ %1, %76 ]
  %120 = insertvalue { i64, i16 } poison, i64 %118, 0
  %121 = insertvalue { i64, i16 } %120, i16 %119, 1
  ret { i64, i16 } %121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc { i64, i16 } @subFloatx80Sigs(i64 %0, i16 %1, i64 %2, i16 %3, i8 noundef zeroext %4) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %6 = and i16 %1, 32767
  %7 = zext i16 %6 to i32
  %8 = and i16 %3, 32767
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 %7, %9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %87, label %12

12:                                               ; preds = %5
  %13 = icmp slt i32 %10, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %12
  switch i32 %7, label %27 [
    i32 32767, label %15
    i32 0, label %26
  ]

15:                                               ; preds = %14
  %16 = or i64 %2, %0
  %17 = and i64 %16, 9223372036854775807
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %21 = extractvalue { i64, i16 } %20, 0
  %22 = extractvalue { i64, i16 } %20, 1
  br label %162

23:                                               ; preds = %15
  %24 = load i8, i8* @fp_status.2, align 1
  %25 = or i8 %24, 1
  store i8 %25, i8* @fp_status.2, align 1
  br label %162

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %14
  %28 = phi i32 [ 1, %26 ], [ %7, %14 ]
  %29 = phi i32 [ 1, %26 ], [ %9, %14 ]
  %30 = icmp ult i64 %2, %0
  br i1 %30, label %127, label %31

31:                                               ; preds = %27
  %32 = icmp ult i64 %0, %2
  br i1 %32, label %78, label %162

33:                                               ; preds = %12
  %34 = icmp eq i16 %8, 32767
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = and i64 %2, 9223372036854775807
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %40 = extractvalue { i64, i16 } %39, 0
  %41 = extractvalue { i64, i16 } %39, 1
  br label %162

42:                                               ; preds = %35
  %43 = xor i8 %4, -1
  %44 = zext i8 %43 to i16
  %45 = shl i16 %44, 15
  %46 = or i16 %45, 32767
  br label %162

47:                                               ; preds = %33
  %48 = icmp eq i16 %6, 0
  %49 = sext i1 %48 to i32
  %50 = sub nsw i32 %49, %10
  %51 = trunc i32 %50 to i8
  %52 = sub i8 0, %51
  %53 = and i8 %52, 63
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %47
  %56 = icmp ult i32 %50, 64
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = zext i8 %53 to i64
  %59 = shl i64 %0, %58
  %60 = zext i32 %50 to i64
  %61 = lshr i64 %0, %60
  br label %78

62:                                               ; preds = %55
  %63 = icmp eq i32 %50, 64
  br i1 %63, label %78, label %64

64:                                               ; preds = %62
  %65 = icmp ult i32 %50, 128
  br i1 %65, label %66, label %75

66:                                               ; preds = %64
  %67 = and i32 %50, 63
  %68 = zext i32 %67 to i64
  %69 = lshr i64 %0, %68
  %70 = zext i8 %53 to i64
  %71 = shl i64 %0, %70
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = or i64 %69, %73
  br label %78

75:                                               ; preds = %64
  %76 = icmp ne i64 %0, 0
  %77 = zext i1 %76 to i64
  br label %78

78:                                               ; preds = %75, %66, %62, %57, %47, %31
  %79 = phi i64 [ %0, %31 ], [ %61, %57 ], [ %0, %47 ], [ 0, %66 ], [ 0, %75 ], [ 0, %62 ]
  %80 = phi i64 [ 0, %31 ], [ %59, %57 ], [ 0, %47 ], [ %74, %66 ], [ %77, %75 ], [ %0, %62 ]
  %81 = phi i32 [ %29, %31 ], [ %9, %57 ], [ %9, %47 ], [ %9, %66 ], [ %9, %75 ], [ %9, %62 ]
  %82 = sub i64 %2, %79
  %83 = icmp ne i64 %80, 0
  %84 = sext i1 %83 to i64
  %85 = add i64 %82, %84
  %86 = xor i8 %4, 1
  br label %135

87:                                               ; preds = %5
  %88 = icmp eq i16 %6, 32767
  br i1 %88, label %89, label %96

89:                                               ; preds = %87
  %90 = and i64 %0, 9223372036854775807
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %162, label %92

92:                                               ; preds = %89
  %93 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %94 = extractvalue { i64, i16 } %93, 0
  %95 = extractvalue { i64, i16 } %93, 1
  br label %162

96:                                               ; preds = %87
  %97 = icmp eq i16 %8, 0
  %98 = sext i1 %97 to i32
  %99 = add nsw i32 %10, %98
  %100 = trunc i32 %99 to i8
  %101 = sub i8 0, %100
  %102 = and i8 %101, 63
  %103 = icmp eq i32 %99, 0
  br i1 %103, label %127, label %104

104:                                              ; preds = %96
  %105 = icmp ult i32 %99, 64
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = zext i8 %102 to i64
  %108 = shl i64 %2, %107
  %109 = zext i32 %99 to i64
  %110 = lshr i64 %2, %109
  br label %127

111:                                              ; preds = %104
  %112 = icmp eq i32 %99, 64
  br i1 %112, label %127, label %113

113:                                              ; preds = %111
  %114 = icmp ult i32 %99, 128
  br i1 %114, label %115, label %124

115:                                              ; preds = %113
  %116 = and i32 %99, 63
  %117 = zext i32 %116 to i64
  %118 = lshr i64 %2, %117
  %119 = zext i8 %102 to i64
  %120 = shl i64 %2, %119
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = or i64 %118, %122
  br label %127

124:                                              ; preds = %113
  %125 = icmp ne i64 %2, 0
  %126 = zext i1 %125 to i64
  br label %127

127:                                              ; preds = %124, %115, %111, %106, %96, %27
  %128 = phi i64 [ %2, %27 ], [ %110, %106 ], [ %2, %96 ], [ 0, %115 ], [ 0, %124 ], [ 0, %111 ]
  %129 = phi i64 [ 0, %27 ], [ %108, %106 ], [ 0, %96 ], [ %123, %115 ], [ %126, %124 ], [ %2, %111 ]
  %130 = phi i32 [ %28, %27 ], [ %7, %106 ], [ %7, %96 ], [ %7, %115 ], [ %7, %124 ], [ %7, %111 ]
  %131 = sub i64 %0, %128
  %132 = icmp ne i64 %129, 0
  %133 = sext i1 %132 to i64
  %134 = add i64 %131, %133
  br label %135

135:                                              ; preds = %127, %78
  %136 = phi i64 [ %134, %127 ], [ %85, %78 ]
  %137 = phi i64 [ %129, %127 ], [ %80, %78 ]
  %138 = phi i8 [ %4, %127 ], [ %86, %78 ]
  %139 = phi i32 [ %130, %127 ], [ %81, %78 ]
  %140 = sub i64 0, %137
  %141 = icmp eq i64 %136, 0
  %142 = select i1 %141, i64 %140, i64 %136
  %143 = select i1 %141, i64 0, i64 %140
  %ctlz.sh = lshr i64 %142, 1
  %ctlz.step = or i64 %ctlz.sh, %142
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
  %144 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %144, 6148914691236517205
  %ctpop.sh = lshr i64 %144, 1
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
  %cppop.and127 = and i64 %ctpop.step26, 63
  %ctpop.sh28 = lshr i64 %ctpop.step26, 32
  %ctpop.step30 = add nuw nsw i64 %cppop.and127, %ctpop.sh28
  %145 = trunc i64 %ctpop.step30 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %135
  %148 = shl i64 %142, %ctpop.step30
  %149 = sub nsw i64 0, %ctpop.step30
  %150 = and i64 %149, 63
  %151 = lshr i64 %143, %150
  %152 = or i64 %151, %148
  br label %153

153:                                              ; preds = %147, %135
  %154 = phi i64 [ %152, %147 ], [ %142, %135 ]
  %155 = shl i64 %143, %ctpop.step30
  %156 = add nsw i32 %139, -64
  %157 = select i1 %141, i32 %156, i32 %139
  %158 = sub nsw i32 %157, %145
  %159 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %138, i32 noundef %158, i64 noundef %154, i64 noundef %155)  nounwind 
  %160 = extractvalue { i64, i16 } %159, 0
  %161 = extractvalue { i64, i16 } %159, 1
  br label %162

162:                                              ; preds = %153, %92, %89, %42, %38, %31, %23, %19
  %163 = phi i64 [ %94, %92 ], [ %160, %153 ], [ %40, %38 ], [ -9223372036854775808, %42 ], [ %21, %19 ], [ -4611686018427387904, %23 ], [ %0, %89 ], [ 0, %31 ]
  %164 = phi i16 [ %95, %92 ], [ %161, %153 ], [ %41, %38 ], [ %46, %42 ], [ %22, %19 ], [ -1, %23 ], [ %1, %89 ], [ 0, %31 ]
  %165 = insertvalue { i64, i16 } poison, i64 %163, 0
  %166 = insertvalue { i64, i16 } %165, i16 %164, 1
  ret { i64, i16 } %166
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64)  nofree nosync nounwind readnone speculatable willreturn 

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg)  nofree nosync nounwind readnone speculatable willreturn 

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
  %10 = load double, double* %5, align 8, !tbaa !16
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
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !20
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !20
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !20
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !20
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: noinline
declare i32 @rand() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @srand(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @time(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @random_double528(i32 %arg_esp) unnamed_addr  norecurse  !retregs !22 {
BB_8049239.i.lr.ph:
  %tmp2_v.i31.i = add i32 %arg_esp, 4
  %tmp0_v.i32.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i34.i = add i32 %tmp0_v.i32.i, -4
  %2 = inttoptr i32 %tmp2_v3.i34.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i35.i = add i32 %tmp0_v.i32.i, -8
  %3 = inttoptr i32 %tmp2_v4.i35.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i37.i = add i32 %tmp0_v.i32.i, -12
  %4 = inttoptr i32 %tmp2_v5.i37.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i32.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i31.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i32.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp2_v.i28.i = add i32 %tmp0_v.i32.i, -48
  %7 = inttoptr i32 %tmp2_v.i28.i to i32*
  store i32 0, i32* %7, align 16
  %tmp2_v2.i29.i = add i32 %tmp0_v.i32.i, -52
  %8 = inttoptr i32 %tmp2_v2.i29.i to i32*
  store i32 134517281, i32* %8, align 4
  %arg.i.i = load i32, i32* %7, align 16
  %9 = tail call i32 @time(i32 %arg.i.i)
  store i32 %9, i32* %7, align 16
  store i32 134517293, i32* %8, align 4
  %arg.i.i3 = load i32, i32* %7, align 16
  tail call void @srand(i32 %arg.i.i3)
  %tmp2_v.i42.i = add i32 %tmp0_v.i32.i, -20
  %10 = inttoptr i32 %tmp2_v.i42.i to i32*
  store i32 0, i32* %10, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i32.i, -40
  %11 = inttoptr i32 %tmp2_v1.i.i to i64*
  %12 = inttoptr i32 %tmp2_v.i28.i to i64*
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i32.i, -56
  %13 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i32.i, -60
  %14 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  %tmp2_v2.i7.i.i = add i32 %tmp0_v.i32.i, -132
  %15 = inttoptr i32 %tmp2_v2.i7.i.i to i32*
  %tmp2_v2.i12.i.i = add i32 %tmp0_v.i32.i, -104
  %16 = inttoptr i32 %tmp2_v2.i12.i.i to i32*
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i32.i, -44
  %17 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i32.i, -100
  %18 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  %19 = inttoptr i32 %tmp2_v1.i.i to i32*
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i32.i, -112
  %20 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %tmp2_v11.i.i.i = add i32 %tmp0_v.i32.i, -108
  %21 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  %tmp2_v.i.i.i = add i32 %tmp0_v.i32.i, -116
  %22 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i32.i, -88
  %23 = inttoptr i32 %tmp2_v4.i.i.i to i64*
  %24 = inttoptr i32 %tmp2_v8.i.i.i to i64*
  %25 = inttoptr i32 %tmp2_v2.i12.i.i to i64*
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i32.i, -80
  %26 = inttoptr i32 %tmp2_v16.i.i.i to i64*
  %tmp2_v25.i.i.i = add i32 %tmp0_v.i32.i, -72
  %27 = inttoptr i32 %tmp2_v25.i.i.i to i64*
  %28 = inttoptr i32 %tmp2_v3.i.i.i to i64*
  br label %BB_8049239.i

BB_8049239.i:                                     ; preds = %BB_8049239.i, %BB_8049239.i.lr.ph
  %r_ebp.011 = phi i32 [ %tmp2_v4.i35.i, %BB_8049239.i.lr.ph ], [ %46, %BB_8049239.i ]
  %r_ebx.010 = phi i32 [ 134529024, %BB_8049239.i.lr.ph ], [ %45, %BB_8049239.i ]
  %r_edx.09 = phi i32 [ 0, %BB_8049239.i.lr.ph ], [ %49, %BB_8049239.i ]
  %tmp2_v.i6.i = add i32 %r_ebx.010, -8176
  %29 = inttoptr i32 %tmp2_v.i6.i to i64*
  %30 = load i64, i64* %29, align 4
  tail call fastcc void @helper_fldl_ST0(i64 %30)
  %tmp5_v2.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v2.i.i, i64* %11, align 8
  tail call fastcc void @helper_fpop()
  %tmp2_v4.i.i = add i32 %r_ebx.010, -8168
  %31 = inttoptr i32 %tmp2_v4.i.i to i64*
  %32 = load i64, i64* %31, align 4
  tail call fastcc void @helper_fldl_ST0(i64 %32)
  %tmp5_v8.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v8.i.i, i64* %12, align 16
  tail call fastcc void @helper_fpop()
  store i32 134517336, i32* %8, align 4
  store i32 %r_ebp.011, i32* %13, align 8
  store i32 %r_ebx.010, i32* %14, align 4
  store i32 134517405, i32* %15, align 4
  %33 = load i32, i32* %7, align 16
  store i32 %33, i32* %16, align 8
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %19, align 8
  store i32 %35, i32* %20, align 16
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %21, align 4
  store i32 134517440, i32* %15, align 4
  %37 = tail call i32 @rand()
  store i32 %37, i32* %22, align 4
  tail call fastcc void @helper_fildl_ST0(i32 %37)
  %38 = load i64, i64* inttoptr (i32 134520864 to i64*), align 32
  tail call fastcc void @helper_fldl_ST0(i64 %38)
  tail call fastcc void @helper_fdiv_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp5_v5.i.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v5.i.i.i, i64* %23, align 8
  tail call fastcc void @helper_fpop()
  %39 = load i64, i64* %24, align 16
  tail call fastcc void @helper_fldl_ST0(i64 %39)
  %40 = load i64, i64* %25, align 8
  tail call fastcc void @helper_fldl_FT0(i64 %40)
  tail call fastcc void @helper_fsub_ST0_FT0()
  %41 = load i64, i64* %23, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %41)
  tail call fastcc void @helper_fmul_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp5_v17.i.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v17.i.i.i, i64* %26, align 16
  tail call fastcc void @helper_fpop()
  %42 = load i64, i64* %25, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %42)
  %43 = load i64, i64* %26, align 16
  tail call fastcc void @helper_fldl_FT0(i64 %43)
  tail call fastcc void @helper_fadd_ST0_FT0()
  %tmp5_v26.i.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v26.i.i.i, i64* %27, align 8
  tail call fastcc void @helper_fpop()
  %44 = load i64, i64* %27, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %44)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 8
  %tmp5_v.i20.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v.i20.i, i64* %28, align 4
  tail call fastcc void @helper_fpop()
  %tmp2_v2.i22.i = add i32 %45, -8184
  store i32 %tmp2_v2.i22.i, i32* %7, align 16
  store i32 134517361, i32* %8, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i31.i, i32 inreg noundef %r_edx.09, i32 noundef %tmp2_v.i28.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !23
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %tmp2_v.i.i = add i32 %46, -12
  %50 = inttoptr i32 %tmp2_v.i.i to i32*
  %51 = load i32, i32* %50, align 4
  %tmp0_v2.i.i = add i32 %51, 1
  store i32 %tmp0_v2.i.i, i32* %50, align 4
  %52 = icmp slt i32 %tmp0_v2.i.i, 50
  br i1 %52, label %BB_8049239.i, label %.exit

.exit:                                            ; preds = %BB_8049239.i
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !18, i64 0}
!22 = !{i32 0, i32 0, i32 0, i32 0}
!23 = !{!"printf"}

  tail call fastcc void @random_double528(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
