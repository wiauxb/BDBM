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
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
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
  store i16 0, i16* @fpus, align 4
  store i32 0, i32* @fpstt, align 16
  store i1 true, i1* @fpuc, align 1
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
define internal fastcc void @helper_fldz_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  store i64 0, i64* %2, align 16
  %3 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  store i16 0, i16* %3, align 8
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
  br i1 %140, label %130, label %.loopexit16.i, !llvm.loop !18

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
  br i1 %185, label %.preheader14.i, label %.loopexit15.i, !llvm.loop !20

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
  br i1 %221, label %211, label %.loopexit13.i, !llvm.loop !18

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
  br i1 %266, label %.preheader.i, label %.loopexit.i, !llvm.loop !21

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
  %10 = load double, double* %5, align 8, !tbaa !22
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
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 -1
  store i32 %7, i32* @df, align 4, !tbaa !26
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %8 = ptrtoint i8** %2 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !26
  %9 = ptrtoint i8** %1 to i32
  store i32 %9, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !26
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !26
  %10 = tail call i8* @llvm.returnaddress(i32 0)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !26
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: norecurse nounwind
define internal fastcc void @row_sum_avg_2darraym15161635(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !28 {
Func_80491F9.exit.i:
  %tmp2_v.i67.i = add i32 %arg_esp, 4
  %tmp0_v.i68.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i70.i = add i32 %tmp0_v.i68.i, -4
  %2 = inttoptr i32 %tmp2_v3.i70.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i71.i = add i32 %tmp0_v.i68.i, -8
  %3 = inttoptr i32 %tmp2_v4.i71.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i73.i = add i32 %tmp0_v.i68.i, -12
  %4 = inttoptr i32 %tmp2_v5.i73.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i75.i = add i32 %tmp0_v.i68.i, -16
  %5 = inttoptr i32 %tmp2_v6.i75.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i77.i = add i32 %tmp0_v.i68.i, -20
  %6 = inttoptr i32 %tmp2_v7.i77.i to i32*
  store i32 0, i32* %6, align 4
  %tmp2_v8.i79.i = add i32 %tmp0_v.i68.i, -24
  %7 = inttoptr i32 %tmp2_v8.i79.i to i32*
  store i32 %tmp2_v.i67.i, i32* %7, align 8
  %tmp2_v10.i80.i = add i32 %tmp0_v.i68.i, -164
  %8 = inttoptr i32 %tmp2_v10.i80.i to i32*
  store i32 134517206, i32* %8, align 4
  %tmp4_v.i54.i.b = load i1, i1* @segs.0, align 1
  %9 = select i1 %tmp4_v.i54.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %10 = load i32, i32* %9, align 4
  %tmp2_v2.i58.i = add i32 %tmp0_v.i68.i, -36
  %11 = inttoptr i32 %tmp2_v2.i58.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v3.i59.i = add i32 %tmp0_v.i68.i, -136
  %12 = load i32, i32* inttoptr (i32 134520928 to i32*), align 32
  %13 = inttoptr i32 %tmp2_v3.i59.i to i32*
  store i32 %12, i32* %13, align 8
  %tmp0_v1.i18.i = load i32, i32* @df, align 4
  %tmp0_v2.i19.i = shl i32 %tmp0_v1.i18.i, 2
  %tmp4_v.i20.i = add i32 %tmp0_v2.i19.i, 134520928
  %tmp4_v3.i.i = add i32 %tmp0_v2.i19.i, %tmp2_v3.i59.i
  %14 = inttoptr i32 %tmp4_v.i20.i to i32*
  %15 = load i32, i32* %14, align 4
  %16 = inttoptr i32 %tmp4_v3.i.i to i32*
  store i32 %15, i32* %16, align 4
  %tmp0_v1.i18.i.1 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.1 = shl i32 %tmp0_v1.i18.i.1, 2
  %tmp4_v.i20.i.1 = add i32 %tmp0_v2.i19.i.1, %tmp4_v.i20.i
  %tmp4_v3.i.i.1 = add i32 %tmp0_v2.i19.i.1, %tmp4_v3.i.i
  %17 = inttoptr i32 %tmp4_v.i20.i.1 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = inttoptr i32 %tmp4_v3.i.i.1 to i32*
  store i32 %18, i32* %19, align 4
  %tmp0_v1.i18.i.2 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.2 = shl i32 %tmp0_v1.i18.i.2, 2
  %tmp4_v.i20.i.2 = add i32 %tmp0_v2.i19.i.2, %tmp4_v.i20.i.1
  %tmp4_v3.i.i.2 = add i32 %tmp0_v2.i19.i.2, %tmp4_v3.i.i.1
  %20 = inttoptr i32 %tmp4_v.i20.i.2 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = inttoptr i32 %tmp4_v3.i.i.2 to i32*
  store i32 %21, i32* %22, align 4
  %tmp0_v1.i18.i.3 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.3 = shl i32 %tmp0_v1.i18.i.3, 2
  %tmp4_v.i20.i.3 = add i32 %tmp0_v2.i19.i.3, %tmp4_v.i20.i.2
  %tmp4_v3.i.i.3 = add i32 %tmp0_v2.i19.i.3, %tmp4_v3.i.i.2
  %23 = inttoptr i32 %tmp4_v.i20.i.3 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = inttoptr i32 %tmp4_v3.i.i.3 to i32*
  store i32 %24, i32* %25, align 4
  %tmp0_v1.i18.i.4 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.4 = shl i32 %tmp0_v1.i18.i.4, 2
  %tmp4_v.i20.i.4 = add i32 %tmp0_v2.i19.i.4, %tmp4_v.i20.i.3
  %tmp4_v3.i.i.4 = add i32 %tmp0_v2.i19.i.4, %tmp4_v3.i.i.3
  %26 = inttoptr i32 %tmp4_v.i20.i.4 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = inttoptr i32 %tmp4_v3.i.i.4 to i32*
  store i32 %27, i32* %28, align 4
  %tmp0_v1.i18.i.5 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.5 = shl i32 %tmp0_v1.i18.i.5, 2
  %tmp4_v.i20.i.5 = add i32 %tmp0_v2.i19.i.5, %tmp4_v.i20.i.4
  %tmp4_v3.i.i.5 = add i32 %tmp0_v2.i19.i.5, %tmp4_v3.i.i.4
  %29 = inttoptr i32 %tmp4_v.i20.i.5 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = inttoptr i32 %tmp4_v3.i.i.5 to i32*
  store i32 %30, i32* %31, align 4
  %tmp0_v1.i18.i.6 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.6 = shl i32 %tmp0_v1.i18.i.6, 2
  %tmp4_v.i20.i.6 = add i32 %tmp0_v2.i19.i.6, %tmp4_v.i20.i.5
  %tmp4_v3.i.i.6 = add i32 %tmp0_v2.i19.i.6, %tmp4_v3.i.i.5
  %32 = inttoptr i32 %tmp4_v.i20.i.6 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = inttoptr i32 %tmp4_v3.i.i.6 to i32*
  store i32 %33, i32* %34, align 4
  %tmp0_v1.i18.i.7 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.7 = shl i32 %tmp0_v1.i18.i.7, 2
  %tmp4_v.i20.i.7 = add i32 %tmp0_v2.i19.i.7, %tmp4_v.i20.i.6
  %tmp4_v3.i.i.7 = add i32 %tmp0_v2.i19.i.7, %tmp4_v3.i.i.6
  %35 = inttoptr i32 %tmp4_v.i20.i.7 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = inttoptr i32 %tmp4_v3.i.i.7 to i32*
  store i32 %36, i32* %37, align 4
  %tmp0_v1.i18.i.8 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.8 = shl i32 %tmp0_v1.i18.i.8, 2
  %tmp4_v.i20.i.8 = add i32 %tmp0_v2.i19.i.8, %tmp4_v.i20.i.7
  %tmp4_v3.i.i.8 = add i32 %tmp0_v2.i19.i.8, %tmp4_v3.i.i.7
  %38 = inttoptr i32 %tmp4_v.i20.i.8 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = inttoptr i32 %tmp4_v3.i.i.8 to i32*
  store i32 %39, i32* %40, align 4
  %tmp0_v1.i18.i.9 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.9 = shl i32 %tmp0_v1.i18.i.9, 2
  %tmp4_v.i20.i.9 = add i32 %tmp0_v2.i19.i.9, %tmp4_v.i20.i.8
  %tmp4_v3.i.i.9 = add i32 %tmp0_v2.i19.i.9, %tmp4_v3.i.i.8
  %41 = inttoptr i32 %tmp4_v.i20.i.9 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = inttoptr i32 %tmp4_v3.i.i.9 to i32*
  store i32 %42, i32* %43, align 4
  %tmp0_v1.i18.i.10 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.10 = shl i32 %tmp0_v1.i18.i.10, 2
  %tmp4_v.i20.i.10 = add i32 %tmp0_v2.i19.i.10, %tmp4_v.i20.i.9
  %tmp4_v3.i.i.10 = add i32 %tmp0_v2.i19.i.10, %tmp4_v3.i.i.9
  %44 = inttoptr i32 %tmp4_v.i20.i.10 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = inttoptr i32 %tmp4_v3.i.i.10 to i32*
  store i32 %45, i32* %46, align 4
  %tmp0_v1.i18.i.11 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.11 = shl i32 %tmp0_v1.i18.i.11, 2
  %tmp4_v.i20.i.11 = add i32 %tmp0_v2.i19.i.11, %tmp4_v.i20.i.10
  %tmp4_v3.i.i.11 = add i32 %tmp0_v2.i19.i.11, %tmp4_v3.i.i.10
  %47 = inttoptr i32 %tmp4_v.i20.i.11 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = inttoptr i32 %tmp4_v3.i.i.11 to i32*
  store i32 %48, i32* %49, align 4
  %tmp0_v1.i18.i.12 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.12 = shl i32 %tmp0_v1.i18.i.12, 2
  %tmp4_v.i20.i.12 = add i32 %tmp0_v2.i19.i.12, %tmp4_v.i20.i.11
  %tmp4_v3.i.i.12 = add i32 %tmp0_v2.i19.i.12, %tmp4_v3.i.i.11
  %50 = inttoptr i32 %tmp4_v.i20.i.12 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = inttoptr i32 %tmp4_v3.i.i.12 to i32*
  store i32 %51, i32* %52, align 4
  %tmp0_v1.i18.i.13 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.13 = shl i32 %tmp0_v1.i18.i.13, 2
  %tmp4_v.i20.i.13 = add i32 %tmp0_v2.i19.i.13, %tmp4_v.i20.i.12
  %tmp4_v3.i.i.13 = add i32 %tmp0_v2.i19.i.13, %tmp4_v3.i.i.12
  %53 = inttoptr i32 %tmp4_v.i20.i.13 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = inttoptr i32 %tmp4_v3.i.i.13 to i32*
  store i32 %54, i32* %55, align 4
  %tmp0_v1.i18.i.14 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.14 = shl i32 %tmp0_v1.i18.i.14, 2
  %tmp4_v.i20.i.14 = add i32 %tmp0_v2.i19.i.14, %tmp4_v.i20.i.13
  %tmp4_v3.i.i.14 = add i32 %tmp0_v2.i19.i.14, %tmp4_v3.i.i.13
  %56 = inttoptr i32 %tmp4_v.i20.i.14 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = inttoptr i32 %tmp4_v3.i.i.14 to i32*
  store i32 %57, i32* %58, align 4
  %tmp0_v1.i18.i.15 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.15 = shl i32 %tmp0_v1.i18.i.15, 2
  %tmp4_v.i20.i.15 = add i32 %tmp0_v2.i19.i.15, %tmp4_v.i20.i.14
  %tmp4_v3.i.i.15 = add i32 %tmp0_v2.i19.i.15, %tmp4_v3.i.i.14
  %59 = inttoptr i32 %tmp4_v.i20.i.15 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = inttoptr i32 %tmp4_v3.i.i.15 to i32*
  store i32 %60, i32* %61, align 4
  %tmp0_v1.i18.i.16 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.16 = shl i32 %tmp0_v1.i18.i.16, 2
  %tmp4_v.i20.i.16 = add i32 %tmp0_v2.i19.i.16, %tmp4_v.i20.i.15
  %tmp4_v3.i.i.16 = add i32 %tmp0_v2.i19.i.16, %tmp4_v3.i.i.15
  %62 = inttoptr i32 %tmp4_v.i20.i.16 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = inttoptr i32 %tmp4_v3.i.i.16 to i32*
  store i32 %63, i32* %64, align 4
  %tmp0_v1.i18.i.17 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.17 = shl i32 %tmp0_v1.i18.i.17, 2
  %tmp4_v.i20.i.17 = add i32 %tmp0_v2.i19.i.17, %tmp4_v.i20.i.16
  %tmp4_v3.i.i.17 = add i32 %tmp0_v2.i19.i.17, %tmp4_v3.i.i.16
  %65 = inttoptr i32 %tmp4_v.i20.i.17 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = inttoptr i32 %tmp4_v3.i.i.17 to i32*
  store i32 %66, i32* %67, align 4
  %tmp0_v1.i18.i.18 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.18 = shl i32 %tmp0_v1.i18.i.18, 2
  %tmp4_v.i20.i.18 = add i32 %tmp0_v2.i19.i.18, %tmp4_v.i20.i.17
  %tmp4_v3.i.i.18 = add i32 %tmp0_v2.i19.i.18, %tmp4_v3.i.i.17
  %68 = inttoptr i32 %tmp4_v.i20.i.18 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = inttoptr i32 %tmp4_v3.i.i.18 to i32*
  store i32 %69, i32* %70, align 4
  %tmp0_v1.i18.i.19 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.19 = shl i32 %tmp0_v1.i18.i.19, 2
  %tmp4_v.i20.i.19 = add i32 %tmp0_v2.i19.i.19, %tmp4_v.i20.i.18
  %tmp4_v3.i.i.19 = add i32 %tmp0_v2.i19.i.19, %tmp4_v3.i.i.18
  %71 = inttoptr i32 %tmp4_v.i20.i.19 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = inttoptr i32 %tmp4_v3.i.i.19 to i32*
  store i32 %72, i32* %73, align 4
  %tmp0_v1.i18.i.20 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.20 = shl i32 %tmp0_v1.i18.i.20, 2
  %tmp4_v.i20.i.20 = add i32 %tmp0_v2.i19.i.20, %tmp4_v.i20.i.19
  %tmp4_v3.i.i.20 = add i32 %tmp0_v2.i19.i.20, %tmp4_v3.i.i.19
  %74 = inttoptr i32 %tmp4_v.i20.i.20 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = inttoptr i32 %tmp4_v3.i.i.20 to i32*
  store i32 %75, i32* %76, align 4
  %tmp0_v1.i18.i.21 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.21 = shl i32 %tmp0_v1.i18.i.21, 2
  %tmp4_v.i20.i.21 = add i32 %tmp0_v2.i19.i.21, %tmp4_v.i20.i.20
  %tmp4_v3.i.i.21 = add i32 %tmp0_v2.i19.i.21, %tmp4_v3.i.i.20
  %77 = inttoptr i32 %tmp4_v.i20.i.21 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = inttoptr i32 %tmp4_v3.i.i.21 to i32*
  store i32 %78, i32* %79, align 4
  %tmp0_v1.i18.i.22 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.22 = shl i32 %tmp0_v1.i18.i.22, 2
  %tmp4_v.i20.i.22 = add i32 %tmp0_v2.i19.i.22, %tmp4_v.i20.i.21
  %tmp4_v3.i.i.22 = add i32 %tmp0_v2.i19.i.22, %tmp4_v3.i.i.21
  %80 = inttoptr i32 %tmp4_v.i20.i.22 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = inttoptr i32 %tmp4_v3.i.i.22 to i32*
  store i32 %81, i32* %82, align 4
  %tmp0_v1.i18.i.23 = load i32, i32* @df, align 4
  %tmp0_v2.i19.i.23 = shl i32 %tmp0_v1.i18.i.23, 2
  %tmp4_v.i20.i.23 = add i32 %tmp0_v2.i19.i.23, %tmp4_v.i20.i.22
  %tmp4_v3.i.i.23 = add i32 %tmp0_v2.i19.i.23, %tmp4_v3.i.i.22
  %83 = inttoptr i32 %tmp4_v.i20.i.23 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = inttoptr i32 %tmp4_v3.i.i.23 to i32*
  store i32 %84, i32* %85, align 4
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fldz_ST0()
  %tmp2_v.i12.i = add i32 %tmp0_v.i68.i, -152
  %tmp6_v.i13.i = tail call fastcc i32 @helper_fsts_ST0()
  %86 = inttoptr i32 %tmp2_v.i12.i to i32*
  store i32 %tmp6_v.i13.i, i32* %86, align 8
  tail call fastcc void @helper_fpop()
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fldz_ST0()
  %tmp2_v2.i14.i = add i32 %tmp0_v.i68.i, -140
  %tmp6_v3.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %87 = inttoptr i32 %tmp2_v2.i14.i to i32*
  store i32 %tmp6_v3.i.i, i32* %87, align 4
  tail call fastcc void @helper_fpop()
  %tmp2_v5.i16.i = add i32 %tmp0_v.i68.i, -148
  %88 = inttoptr i32 %tmp2_v5.i16.i to i32*
  %tmp2_v2.i26.i = add i32 %tmp0_v.i68.i, -144
  %89 = inttoptr i32 %tmp2_v2.i26.i to i32*
  %tmp2_v1.i.i = add i32 %tmp0_v.i68.i, -168
  %90 = inttoptr i32 %tmp2_v1.i.i to i64*
  %tmp2_v6.i49.i = add i32 %tmp0_v.i68.i, -172
  %91 = inttoptr i32 %tmp2_v6.i49.i to i32*
  %tmp2_v8.i.i = add i32 %tmp0_v.i68.i, -176
  %92 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v9.i.i = add i32 %tmp0_v.i68.i, -180
  %93 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 0, i32* %88, align 4
  br label %BB_804921A.i

BB_804922E.i:                                     ; preds = %BB_804921A.i, %BB_804922E.i
  %storemerge116 = phi i32 [ 0, %BB_804921A.i ], [ %tmp0_v17.i.i, %BB_804922E.i ]
  %94 = load i32, i32* %88, align 4
  %tmp0_v2.i.i = mul i32 %94, 5
  %tmp0_v5.i.i = add i32 %tmp0_v2.i.i, %storemerge116
  %tmp4_v.i.i = shl i32 %tmp0_v5.i.i, 2
  %tmp2_v7.i.i = add i32 %tmp4_v.i.i, %tmp2_v3.i59.i
  %95 = inttoptr i32 %tmp2_v7.i.i to i32*
  %96 = load i32, i32* %95, align 4
  tail call fastcc void @helper_flds_ST0(i32 %96)
  %97 = load i32, i32* %86, align 8
  tail call fastcc void @helper_flds_ST0(i32 %97)
  tail call fastcc void @helper_fadd_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp6_v.i.i = tail call fastcc i32 @helper_fsts_ST0()
  store i32 %tmp6_v.i.i, i32* %86, align 8
  tail call fastcc void @helper_fpop()
  %98 = load i32, i32* %89, align 16
  %tmp0_v17.i.i = add i32 %98, 1
  store i32 %tmp0_v17.i.i, i32* %89, align 16
  %99 = icmp slt i32 %tmp0_v17.i.i, 5
  br i1 %99, label %BB_804922E.i, label %BB_8049265.i

BB_804921A.i:                                     ; preds = %BB_8049265.i, %Func_80491F9.exit.i
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fldz_ST0()
  %tmp6_v.i24.i = tail call fastcc i32 @helper_fsts_ST0()
  store i32 %tmp6_v.i24.i, i32* %86, align 8
  tail call fastcc void @helper_fpop()
  store i32 0, i32* %89, align 16
  br label %BB_804922E.i

BB_8049265.i:                                     ; preds = %BB_804922E.i
  %100 = load i32, i32* %86, align 8
  tail call fastcc void @helper_flds_ST0(i32 %100)
  %tmp5_v.i46.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v.i46.i, i64* %90, align 8
  tail call fastcc void @helper_fpop()
  %101 = load i32, i32* %88, align 4
  store i32 %101, i32* %91, align 4
  store i32 134520864, i32* %92, align 16
  store i32 134517380, i32* %93, align 4
  %102 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %storemerge116, i32 noundef %tmp2_v8.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %103 = lshr i64 %102, 32
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %86, align 8
  tail call fastcc void @helper_flds_ST0(i32 %105)
  %106 = load i32, i32* inttoptr (i32 134521028 to i32*), align 4
  tail call fastcc void @helper_flds_ST0(i32 %106)
  tail call fastcc void @helper_fdiv_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp6_v.i5.i = tail call fastcc i32 @helper_fsts_ST0()
  store i32 %tmp6_v.i5.i, i32* %87, align 4
  tail call fastcc void @helper_fpop()
  %107 = load i32, i32* %87, align 4
  tail call fastcc void @helper_flds_ST0(i32 %107)
  %tmp5_v.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v.i.i, i64* %90, align 8
  tail call fastcc void @helper_fpop()
  %108 = load i32, i32* %88, align 4
  store i32 %108, i32* %91, align 4
  store i32 134520881, i32* %92, align 16
  store i32 134517434, i32* %93, align 4
  %109 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %104, i32 noundef %tmp2_v8.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %110 = load i32, i32* %88, align 4
  %tmp0_v2.i32.i = add i32 %110, 1
  store i32 %tmp0_v2.i32.i, i32* %88, align 4
  %111 = icmp slt i32 %tmp0_v2.i32.i, 5
  br i1 %111, label %BB_804921A.i, label %.exit

.exit:                                            ; preds = %BB_8049265.i
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
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !24, i64 0}
!28 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
!29 = !{!"printf"}

  tail call fastcc void @row_sum_avg_2darraym15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
