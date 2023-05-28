; Mutation 655
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }

@fpuc = internal unnamed_addr global i16 0
@fpstt = internal unnamed_addr global i32 0
@fpus = internal unnamed_addr global i16 0
@fp_status.1 = internal unnamed_addr global i8 0
@fp_status.2 = internal unnamed_addr global i8 0
@fp_status.3 = internal unnamed_addr global i8 0
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@stack654 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.651 = constant [7 x i8] c"\7a\3a\20\25\64\0a\00"
@str.bis.652 = constant [14 x i8] c"\25\64\20\2f\20\25\64\20\3d\20\25\66\0a\00"
@str.bis.653 = constant [14 x i8] c"\25\64\20\2f\20\25\64\20\3d\20\25\64\0a\00"

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
  %20 = load i8, i8* @fp_status.2, align 1, !noalias !6
  %21 = or i8 %20, 1
  store i8 %21, i8* @fp_status.2, align 1, !noalias !6
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
  store i16 895, i16* @fpuc, align 2
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
  br i1 %15, label %26, label %16

16:                                               ; preds = %0
  %17 = load i16, i16* @fpus, align 4
  %18 = or i16 %17, 4
  store i16 %18, i16* @fpus, align 4
  %19 = load i16, i16* @fpuc, align 2
  %20 = and i16 %19, 63
  %21 = xor i16 %20, 63
  %22 = and i16 %21, %18
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = or i16 %17, -32636
  store i16 %25, i16* @fpus, align 4
  br label %26

26:                                               ; preds = %24, %16, %0
  %27 = tail call fastcc { i64, i16 } @floatx80_div(i64 %5, i16 %7, i64 %9, i16 %11)
  %28 = extractvalue { i64, i16 } %27, 0
  %29 = extractvalue { i64, i16 } %27, 1
  store i64 %28, i64* %4, align 16
  store i16 %29, i16* %6, align 8
  ret void
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
  %47 = load i8, i8* @fp_status.1, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %37
  %50 = icmp eq i8 %47, 3
  br i1 %50, label %61, label %51

51:                                               ; preds = %49
  %52 = icmp sgt i16 %5, -1
  br i1 %52, label %57, label %53

53:                                               ; preds = %51
  %54 = icmp eq i8 %47, 2
  %55 = sext i1 %54 to i64
  %56 = select i1 %54, i64 0, i64 1023
  br label %61

57:                                               ; preds = %51
  %58 = icmp eq i8 %47, 1
  %59 = sext i1 %58 to i64
  %60 = select i1 %58, i64 0, i64 1023
  br label %61

61:                                               ; preds = %57, %53, %49, %37
  %62 = phi i64 [ 0, %37 ], [ -1, %49 ], [ %55, %53 ], [ %59, %57 ]
  %63 = phi i64 [ 512, %37 ], [ 0, %49 ], [ %56, %53 ], [ %60, %57 ]
  %64 = trunc i64 %41 to i32
  %65 = and i32 %64, 1023
  %66 = and i32 %46, 65535
  %67 = icmp ugt i32 %66, 2044
  br i1 %67, label %68, label %111

68:                                               ; preds = %61
  %69 = icmp sgt i32 %46, 2045
  br i1 %69, label %75, label %70

70:                                               ; preds = %68
  %71 = icmp eq i32 %46, 2045
  %72 = add nuw i64 %63, %41
  %73 = icmp slt i64 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %82

75:                                               ; preds = %70, %68
  %76 = load i8, i8* @fp_status.2, align 1
  %77 = or i8 %76, 40
  store i8 %77, i8* @fp_status.2, align 1
  %78 = zext i16 %7 to i64
  %79 = shl nuw i64 %78, 63
  %80 = or i64 %79, 9218868437227405312
  %81 = add i64 %80, %62
  br label %floatx80_to_float64.exit

82:                                               ; preds = %70
  %83 = icmp slt i32 %46, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %82
  %85 = icmp ne i32 %46, -1
  %86 = icmp sgt i64 %72, -1
  %87 = select i1 %85, i1 true, i1 %86
  %88 = sub nsw i32 0, %46
  %89 = icmp ult i32 %88, 64
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = zext i32 %88 to i64
  %92 = lshr i64 %41, %91
  %93 = and i32 %46, 63
  %94 = zext i32 %93 to i64
  %95 = shl i64 %41, %94
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = or i64 %92, %97
  br label %102

99:                                               ; preds = %84
  %100 = icmp ne i64 %41, 0
  %101 = zext i1 %100 to i64
  br label %102

102:                                              ; preds = %99, %90
  %103 = phi i64 [ %98, %90 ], [ %101, %99 ]
  %104 = trunc i64 %103 to i32
  %105 = and i32 %104, 1023
  %106 = icmp ne i32 %105, 0
  %107 = select i1 %87, i1 %106, i1 false
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i8, i8* @fp_status.2, align 1
  %110 = or i8 %109, 16
  br label %118

111:                                              ; preds = %102, %82, %61
  %112 = phi i64 [ %103, %102 ], [ %41, %82 ], [ %41, %61 ]
  %113 = phi i32 [ 0, %102 ], [ %46, %82 ], [ %46, %61 ]
  %114 = phi i32 [ %105, %102 ], [ %65, %82 ], [ %65, %61 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %111
  %117 = load i8, i8* @fp_status.2, align 1
  br label %118

118:                                              ; preds = %116, %108
  %119 = phi i8 [ %110, %108 ], [ %117, %116 ]
  %120 = phi i32 [ %105, %108 ], [ %114, %116 ]
  %121 = phi i32 [ 0, %108 ], [ %113, %116 ]
  %122 = phi i64 [ %103, %108 ], [ %112, %116 ]
  %123 = or i8 %119, 32
  store i8 %123, i8* @fp_status.2, align 1
  br label %124

124:                                              ; preds = %118, %111
  %125 = phi i32 [ %120, %118 ], [ 0, %111 ]
  %126 = phi i32 [ %121, %118 ], [ %113, %111 ]
  %127 = phi i64 [ %122, %118 ], [ %112, %111 ]
  %128 = add i64 %127, %63
  %129 = lshr i64 %128, 10
  %130 = icmp eq i32 %125, 512
  %131 = and i1 %48, %130
  %132 = zext i1 %131 to i64
  %133 = xor i64 %132, -1
  %134 = and i64 %129, %133
  %135 = icmp eq i64 %134, 0
  %136 = zext i16 %7 to i64
  %137 = shl nuw i64 %136, 63
  %138 = zext i32 %126 to i64
  %139 = shl i64 %138, 52
  %140 = select i1 %135, i64 0, i64 %139
  %141 = or i64 %134, %137
  %142 = add i64 %141, %140
  br label %floatx80_to_float64.exit

floatx80_to_float64.exit:                         ; preds = %124, %75, %33, %21
  %143 = phi i64 [ %32, %21 ], [ %36, %33 ], [ %81, %75 ], [ %142, %124 ]
  ret i64 %143
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc { i64, i16 } @floatx80_div(i64 %0, i16 %1, i64 %2, i16 %3) unnamed_addr  nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %5 = and i16 %1, 32767
  %6 = zext i16 %5 to i32
  %7 = and i16 %3, 32767
  %8 = zext i16 %7 to i32
  %9 = xor i16 %3, %1
  %10 = and i16 %9, -32768
  %11 = icmp eq i16 %5, 32767
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = and i64 %0, 9223372036854775807
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %17 = extractvalue { i64, i16 } %16, 0
  %18 = extractvalue { i64, i16 } %16, 1
  br label %516

19:                                               ; preds = %12
  %20 = icmp eq i16 %7, 32767
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = and i64 %2, 9223372036854775807
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %26 = extractvalue { i64, i16 } %25, 0
  %27 = extractvalue { i64, i16 } %25, 1
  br label %516

28:                                               ; preds = %19
  %29 = or i16 %9, 32767
  br label %516

30:                                               ; preds = %4
  switch i32 %8, label %56 [
    i32 32767, label %31
    i32 0, label %38
  ]

31:                                               ; preds = %30
  %32 = and i64 %2, 9223372036854775807
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %516, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %36 = extractvalue { i64, i16 } %35, 0
  %37 = extractvalue { i64, i16 } %35, 1
  br label %516

38:                                               ; preds = %30
  %39 = icmp eq i64 %2, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = zext i16 %5 to i64
  %42 = or i64 %41, %0
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %21
  %45 = load i8, i8* @fp_status.2, align 1
  %46 = or i8 %45, 1
  store i8 %46, i8* @fp_status.2, align 1
  br label %516

47:                                               ; preds = %40
  %48 = load i8, i8* @fp_status.2, align 1
  %49 = or i8 %48, 4
  store i8 %49, i8* @fp_status.2, align 1
  %50 = or i16 %9, 32767
  br label %516

51:                                               ; preds = %38
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
  %52 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %52, 6148914691236517205
  %ctpop.sh = lshr i64 %52, 1
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
  %53 = trunc i64 %ctpop.step30 to i32
  %54 = shl i64 %2, %ctpop.step30
  %55 = sub nsw i32 1, %53
  br label %56

56:                                               ; preds = %51, %30
  %57 = phi i64 [ %2, %30 ], [ %54, %51 ]
  %58 = phi i32 [ %8, %30 ], [ %55, %51 ]
  %59 = icmp eq i16 %5, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = icmp eq i64 %0, 0
  br i1 %61, label %516, label %62

62:                                               ; preds = %60
  %ctlz.sh31 = lshr i64 %0, 1
  %ctlz.step32 = or i64 %ctlz.sh31, %0
  %ctlz.sh33 = lshr i64 %ctlz.step32, 2
  %ctlz.step34 = or i64 %ctlz.sh33, %ctlz.step32
  %ctlz.sh35 = lshr i64 %ctlz.step34, 4
  %ctlz.step36 = or i64 %ctlz.sh35, %ctlz.step34
  %ctlz.sh37 = lshr i64 %ctlz.step36, 8
  %ctlz.step38 = or i64 %ctlz.sh37, %ctlz.step36
  %ctlz.sh39 = lshr i64 %ctlz.step38, 16
  %ctlz.step40 = or i64 %ctlz.sh39, %ctlz.step38
  %ctlz.sh41 = lshr i64 %ctlz.step40, 32
  %ctlz.step42 = or i64 %ctlz.sh41, %ctlz.step40
  %63 = xor i64 %ctlz.step42, -1
  %cppop.and143 = and i64 %63, 6148914691236517205
  %ctpop.sh44 = lshr i64 %63, 1
  %cppop.and245 = and i64 %ctpop.sh44, 6148914691236517205
  %ctpop.step46 = add nuw i64 %cppop.and245, %cppop.and143
  %cppop.and147 = and i64 %ctpop.step46, 3689348814741910323
  %ctpop.sh48 = lshr i64 %ctpop.step46, 2
  %cppop.and249 = and i64 %ctpop.sh48, 3689348814741910323
  %ctpop.step50 = add nuw nsw i64 %cppop.and249, %cppop.and147
  %cppop.and151 = and i64 %ctpop.step50, 506381209866536711
  %ctpop.sh52 = lshr i64 %ctpop.step50, 4
  %cppop.and253 = and i64 %ctpop.sh52, 506381209866536711
  %ctpop.step54 = add nuw nsw i64 %cppop.and253, %cppop.and151
  %cppop.and155 = and i64 %ctpop.step54, 4222189076152335
  %ctpop.sh56 = lshr i64 %ctpop.step54, 8
  %cppop.and257 = and i64 %ctpop.sh56, 4222189076152335
  %ctpop.step58 = add nuw nsw i64 %cppop.and257, %cppop.and155
  %cppop.and159 = and i64 %ctpop.step58, 133143986207
  %ctpop.sh60 = lshr i64 %ctpop.step58, 16
  %cppop.and261 = and i64 %ctpop.sh60, 133143986207
  %ctpop.step62 = add nuw nsw i64 %cppop.and261, %cppop.and159
  %cppop.and163 = and i64 %ctpop.step62, 63
  %ctpop.sh64 = lshr i64 %ctpop.step62, 32
  %ctpop.step66 = add nuw nsw i64 %cppop.and163, %ctpop.sh64
  %64 = trunc i64 %ctpop.step66 to i32
  %65 = shl i64 %0, %ctpop.step66
  %66 = sub nsw i32 1, %64
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i64 [ %65, %62 ], [ %0, %56 ]
  %69 = phi i32 [ %66, %62 ], [ %6, %56 ]
  %70 = sub nsw i32 %69, %58
  %71 = icmp ugt i64 %57, %68
  %72 = shl i64 %68, 63
  %73 = xor i1 %71, true
  %74 = zext i1 %73 to i64
  %75 = lshr i64 %68, %74
  %76 = select i1 %71, i64 0, i64 %72
  %77 = select i1 %71, i32 16382, i32 16383
  %78 = add nsw i32 %70, %77
  %79 = icmp ugt i64 %57, %75
  %80 = lshr i64 %57, 32
  br i1 %79, label %83, label %81

81:                                               ; preds = %67
  %82 = and i64 %57, 4294967295
  br label %127

83:                                               ; preds = %67
  %84 = and i64 %57, -4294967296
  %85 = icmp ugt i64 %84, %75
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = udiv i64 %75, %80
  %88 = shl i64 %87, 32
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i64 [ %88, %86 ], [ -4294967296, %83 ]
  %91 = lshr exact i64 %90, 32
  %92 = and i64 %57, 4294967295
  %93 = mul nuw i64 %91, %92
  %94 = mul nuw i64 %91, %80
  %95 = lshr i64 %93, 32
  %96 = shl i64 %93, 32
  %97 = sub i64 %76, %96
  %98 = icmp ult i64 %76, %96
  %99 = sext i1 %98 to i64
  %100 = add nuw i64 %94, %95
  %101 = sub i64 %75, %100
  %102 = add i64 %101, %99
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %.loopexit15

104:                                              ; preds = %89
  %105 = shl i64 %57, 32
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i64 [ %90, %104 ], [ %110, %106 ]
  %108 = phi i64 [ %102, %104 ], [ %115, %106 ]
  %109 = phi i64 [ %97, %104 ], [ %111, %106 ]
  %110 = add i64 %107, -4294967296
  %111 = add i64 %109, %105
  %112 = add i64 %108, %80
  %113 = icmp ult i64 %111, %109
  %114 = zext i1 %113 to i64
  %115 = add i64 %112, %114
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %106, label %.loopexit15, !llvm.loop !12

.loopexit15:                                      ; preds = %106, %89
  %117 = phi i64 [ %97, %89 ], [ %111, %106 ]
  %118 = phi i64 [ %102, %89 ], [ %115, %106 ]
  %119 = phi i64 [ %90, %89 ], [ %110, %106 ]
  %120 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %117, i64 32)  nounwind 
  %121 = icmp ugt i64 %84, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %.loopexit15
  %123 = udiv i64 %120, %80
  br label %124

124:                                              ; preds = %122, %.loopexit15
  %125 = phi i64 [ %123, %122 ], [ 4294967295, %.loopexit15 ]
  %126 = or i64 %125, %119
  br label %127

127:                                              ; preds = %124, %81
  %128 = phi i64 [ %82, %81 ], [ %92, %124 ]
  %129 = phi i64 [ -1, %81 ], [ %126, %124 ]
  %130 = lshr i64 %129, 32
  %131 = and i64 %129, 4294967295
  %132 = mul nuw i64 %131, %128
  %133 = mul nuw i64 %130, %128
  %134 = mul nuw i64 %131, %80
  %135 = mul nuw i64 %130, %80
  %136 = add i64 %133, %134
  %137 = icmp ult i64 %136, %134
  %138 = select i1 %137, i64 -4294967296, i64 0
  %139 = lshr i64 %136, 32
  %140 = shl i64 %136, 32
  %141 = add i64 %140, %132
  %142 = icmp ult i64 %141, %140
  %143 = sext i1 %142 to i64
  %144 = sub i64 %76, %141
  %145 = icmp ult i64 %76, %141
  %146 = sext i1 %145 to i64
  %147 = add i64 %135, %139
  %148 = sub i64 %75, %147
  %149 = add i64 %148, %138
  %150 = add i64 %149, %143
  %151 = add i64 %150, %146
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %.preheader13, label %.loopexit14

.preheader13:                                     ; preds = %.preheader13, %127
  %153 = phi i64 [ %156, %.preheader13 ], [ %129, %127 ]
  %154 = phi i64 [ %157, %.preheader13 ], [ %144, %127 ]
  %155 = phi i64 [ %160, %.preheader13 ], [ %151, %127 ]
  %156 = add i64 %153, -1
  %157 = add i64 %154, %57
  %158 = icmp ult i64 %157, %154
  %159 = zext i1 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %.preheader13, label %.loopexit14, !llvm.loop !14

.loopexit14:                                      ; preds = %.preheader13, %127
  %162 = phi i64 [ %144, %127 ], [ %157, %.preheader13 ]
  %163 = phi i64 [ %129, %127 ], [ %156, %.preheader13 ]
  %164 = icmp ugt i64 %57, %162
  br i1 %164, label %165, label %250

165:                                              ; preds = %.loopexit14
  %166 = and i64 %57, -4294967296
  %167 = icmp ugt i64 %166, %162
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = udiv i64 %162, %80
  %170 = shl i64 %169, 32
  br label %171

171:                                              ; preds = %168, %165
  %172 = phi i64 [ %170, %168 ], [ -4294967296, %165 ]
  %173 = lshr exact i64 %172, 32
  %174 = mul nuw i64 %173, %128
  %175 = mul nuw i64 %173, %80
  %176 = lshr i64 %174, 32
  %177 = shl i64 %174, 32
  %178 = sub i64 0, %177
  %179 = icmp ne i64 %177, 0
  %180 = sext i1 %179 to i64
  %181 = add i64 %175, %176
  %182 = sub i64 %162, %181
  %183 = add i64 %182, %180
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %.loopexit12

185:                                              ; preds = %171
  %186 = shl i64 %57, 32
  br label %187

187:                                              ; preds = %187, %185
  %188 = phi i64 [ %172, %185 ], [ %191, %187 ]
  %189 = phi i64 [ %183, %185 ], [ %196, %187 ]
  %190 = phi i64 [ %178, %185 ], [ %192, %187 ]
  %191 = add i64 %188, -4294967296
  %192 = add i64 %190, %186
  %193 = add i64 %189, %80
  %194 = icmp ult i64 %192, %190
  %195 = zext i1 %194 to i64
  %196 = add i64 %193, %195
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %187, label %.loopexit12, !llvm.loop !12

.loopexit12:                                      ; preds = %187, %171
  %198 = phi i64 [ %178, %171 ], [ %192, %187 ]
  %199 = phi i64 [ %183, %171 ], [ %196, %187 ]
  %200 = phi i64 [ %172, %171 ], [ %191, %187 ]
  %201 = tail call i64 @llvm.fshl.i64(i64 %199, i64 %198, i64 32)  nounwind 
  %202 = icmp ugt i64 %166, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %.loopexit12
  %204 = udiv i64 %201, %80
  br label %205

205:                                              ; preds = %203, %.loopexit12
  %206 = phi i64 [ %204, %203 ], [ 4294967295, %.loopexit12 ]
  %207 = or i64 %206, %200
  %208 = shl i64 %207, 1
  %209 = icmp ult i64 %208, 9
  br i1 %209, label %210, label %250

210:                                              ; preds = %205
  %211 = lshr i64 %207, 32
  %212 = and i64 %207, 4294967295
  %213 = mul nuw i64 %212, %128
  %214 = mul nuw i64 %211, %128
  %215 = mul nuw i64 %212, %80
  %216 = mul nuw i64 %211, %80
  %217 = add i64 %214, %215
  %218 = icmp ult i64 %217, %215
  %219 = select i1 %218, i64 -4294967296, i64 0
  %220 = lshr i64 %217, 32
  %221 = shl i64 %217, 32
  %222 = add i64 %221, %213
  %223 = icmp ult i64 %222, %221
  %224 = sext i1 %223 to i64
  %225 = sub i64 0, %222
  %226 = icmp ne i64 %222, 0
  %227 = sext i1 %226 to i64
  %228 = add i64 %216, %220
  %229 = sub i64 %162, %228
  %230 = add i64 %229, %219
  %231 = add i64 %230, %224
  %232 = add i64 %231, %227
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader, %210
  %234 = phi i64 [ %237, %.preheader ], [ %207, %210 ]
  %235 = phi i64 [ %238, %.preheader ], [ %225, %210 ]
  %236 = phi i64 [ %241, %.preheader ], [ %232, %210 ]
  %237 = add i64 %234, -1
  %238 = add i64 %235, %57
  %239 = icmp ult i64 %238, %235
  %240 = zext i1 %239 to i64
  %241 = add nsw i64 %236, %240
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %.preheader, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.preheader, %210
  %243 = phi i64 [ %232, %210 ], [ 0, %.preheader ]
  %244 = phi i64 [ %225, %210 ], [ %238, %.preheader ]
  %245 = phi i64 [ %207, %210 ], [ %237, %.preheader ]
  %246 = or i64 %244, %243
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = or i64 %245, %248
  br label %250

250:                                              ; preds = %.loopexit, %205, %.loopexit14
  %251 = phi i64 [ %249, %.loopexit ], [ %207, %205 ], [ -1, %.loopexit14 ]
  %252 = load i8, i8* @fp_status.3, align 1
  %253 = load i8, i8* @fp_status.1, align 1
  %254 = icmp eq i8 %253, 0
  switch i8 %252, label %356 [
    i8 32, label %255
    i8 64, label %256
  ]

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255, %250
  %257 = phi i64 [ 549755813888, %255 ], [ 1024, %250 ]
  %258 = phi i64 [ 1099511627775, %255 ], [ 2047, %250 ]
  %259 = icmp ne i64 %251, 0
  %260 = zext i1 %259 to i64
  %261 = or i64 %163, %260
  br i1 %254, label %272, label %262

262:                                              ; preds = %256
  %263 = icmp eq i8 %253, 3
  br i1 %263, label %272, label %264

264:                                              ; preds = %262
  %265 = icmp sgt i16 %9, -1
  br i1 %265, label %269, label %266

266:                                              ; preds = %264
  %267 = icmp eq i8 %253, 2
  %268 = select i1 %267, i64 0, i64 %258
  br label %272

269:                                              ; preds = %264
  %270 = icmp eq i8 %253, 1
  %271 = select i1 %270, i64 0, i64 %258
  br label %272

272:                                              ; preds = %269, %266, %262, %256
  %273 = phi i64 [ %257, %256 ], [ 0, %262 ], [ %268, %266 ], [ %271, %269 ]
  %274 = and i64 %258, %261
  %275 = add i32 %78, -32766
  %276 = icmp ult i32 %275, -32765
  br i1 %276, label %277, label %332

277:                                              ; preds = %272
  %278 = icmp sgt i32 %78, 32766
  br i1 %278, label %385, label %279

279:                                              ; preds = %277
  %280 = icmp eq i32 %78, 32766
  %281 = xor i64 %261, -1
  %282 = icmp ugt i64 %273, %281
  %283 = select i1 %280, i1 %282, i1 false
  br i1 %283, label %385, label %284

284:                                              ; preds = %279
  %285 = icmp slt i32 %78, 1
  br i1 %285, label %286, label %332

286:                                              ; preds = %284
  %287 = icmp ne i32 %78, 0
  %288 = icmp ule i64 %273, %281
  %289 = select i1 %287, i1 true, i1 %288
  %290 = sub nsw i32 1, %78
  %291 = icmp ult i32 %290, 64
  br i1 %291, label %292, label %302

292:                                              ; preds = %286
  %293 = add nsw i32 %78, 63
  %294 = zext i32 %290 to i64
  %295 = lshr i64 %261, %294
  %296 = and i32 %293, 63
  %297 = zext i32 %296 to i64
  %298 = shl i64 %261, %297
  %299 = icmp ne i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = or i64 %295, %300
  br label %305

302:                                              ; preds = %286
  %303 = icmp ne i64 %261, 0
  %304 = zext i1 %303 to i64
  br label %305

305:                                              ; preds = %302, %292
  %306 = phi i64 [ %301, %292 ], [ %304, %302 ]
  %307 = and i64 %306, %258
  %308 = icmp ne i64 %307, 0
  %309 = select i1 %289, i1 %308, i1 false
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load i8, i8* @fp_status.2, align 1
  %312 = or i8 %311, 16
  store i8 %312, i8* @fp_status.2, align 1
  br label %313

313:                                              ; preds = %310, %305
  br i1 %308, label %314, label %317

314:                                              ; preds = %313
  %315 = load i8, i8* @fp_status.2, align 1
  %316 = or i8 %315, 32
  store i8 %316, i8* @fp_status.2, align 1
  br label %317

317:                                              ; preds = %314, %313
  %318 = add i64 %306, %273
  %319 = lshr i64 %318, 63
  %320 = trunc i64 %319 to i32
  %321 = add nuw nsw i64 %258, 1
  %322 = shl nuw nsw i64 %307, 1
  %323 = icmp eq i64 %322, %321
  %324 = select i1 %254, i1 %323, i1 false
  %325 = select i1 %324, i64 %321, i64 0
  %326 = or i64 %325, %258
  %327 = xor i64 %326, -1
  %328 = and i64 %318, %327
  %329 = zext i16 %10 to i32
  %330 = or i32 %320, %329
  %331 = insertvalue { i64, i16 } poison, i64 %328, 0
  br label %roundAndPackFloatx80.exit

332:                                              ; preds = %284, %272
  %333 = icmp eq i64 %274, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %332
  %335 = load i8, i8* @fp_status.2, align 1
  %336 = or i8 %335, 32
  store i8 %336, i8* @fp_status.2, align 1
  br label %337

337:                                              ; preds = %334, %332
  %338 = add i64 %273, %261
  %339 = icmp ult i64 %338, %273
  %340 = select i1 %339, i64 -9223372036854775808, i64 %338
  %341 = zext i1 %339 to i32
  %342 = add nuw nsw i32 %78, %341
  %343 = add nuw nsw i64 %258, 1
  %344 = shl nuw nsw i64 %274, 1
  %345 = icmp eq i64 %344, %343
  %346 = select i1 %254, i1 %345, i1 false
  %347 = select i1 %346, i64 %343, i64 0
  %348 = or i64 %347, %258
  %349 = xor i64 %348, -1
  %350 = and i64 %340, %349
  %351 = icmp eq i64 %350, 0
  %352 = select i1 %351, i32 0, i32 %342
  %353 = zext i16 %10 to i32
  %354 = add nuw nsw i32 %352, %353
  %355 = insertvalue { i64, i16 } poison, i64 %350, 0
  br label %roundAndPackFloatx80.exit

356:                                              ; preds = %250
  %357 = lshr i64 %251, 63
  %358 = trunc i64 %357 to i8
  br i1 %254, label %373, label %359

359:                                              ; preds = %356
  %360 = icmp eq i8 %253, 3
  br i1 %360, label %373, label %361

361:                                              ; preds = %359
  %362 = icmp sgt i16 %9, -1
  br i1 %362, label %368, label %363

363:                                              ; preds = %361
  %364 = icmp eq i8 %253, 1
  %365 = icmp ne i64 %251, 0
  %366 = and i1 %365, %364
  %367 = zext i1 %366 to i8
  br label %373

368:                                              ; preds = %361
  %369 = icmp eq i8 %253, 2
  %370 = icmp ne i64 %251, 0
  %371 = and i1 %370, %369
  %372 = zext i1 %371 to i8
  br label %373

373:                                              ; preds = %368, %363, %359, %356
  %374 = phi i8 [ %358, %356 ], [ %367, %363 ], [ %372, %368 ], [ 0, %359 ]
  %375 = add i32 %78, -32766
  %376 = icmp ult i32 %375, -32765
  br i1 %376, label %377, label %484

377:                                              ; preds = %373
  %378 = icmp sgt i32 %78, 32766
  br i1 %378, label %385, label %379

379:                                              ; preds = %377
  %380 = icmp eq i32 %78, 32766
  %381 = icmp eq i64 %163, -1
  %382 = and i1 %380, %381
  %383 = icmp ne i8 %374, 0
  %384 = select i1 %382, i1 %383, i1 false
  br i1 %384, label %385, label %406

385:                                              ; preds = %379, %377, %279, %277
  %386 = phi i64 [ %258, %277 ], [ %258, %279 ], [ 0, %379 ], [ 0, %377 ]
  %387 = load i8, i8* @fp_status.2, align 1
  %388 = or i8 %387, 40
  store i8 %388, i8* @fp_status.2, align 1
  %389 = icmp eq i8 %253, 3
  br i1 %389, label %398, label %390

390:                                              ; preds = %385
  %391 = icmp slt i16 %9, 0
  %392 = icmp eq i8 %253, 2
  %393 = select i1 %391, i1 %392, i1 false
  br i1 %393, label %398, label %394

394:                                              ; preds = %390
  %395 = icmp sgt i16 %9, -1
  %396 = icmp eq i8 %253, 1
  %397 = select i1 %395, i1 %396, i1 false
  br i1 %397, label %398, label %403

398:                                              ; preds = %394, %390, %385
  %399 = xor i64 %386, -1
  %400 = or i16 %10, 32766
  %401 = zext i16 %400 to i32
  %402 = insertvalue { i64, i16 } poison, i64 %399, 0
  br label %roundAndPackFloatx80.exit

403:                                              ; preds = %394
  %404 = or i16 %9, 32767
  %405 = zext i16 %404 to i32
  br label %roundAndPackFloatx80.exit

406:                                              ; preds = %379
  %407 = icmp slt i32 %78, 1
  br i1 %407, label %408, label %484

408:                                              ; preds = %406
  %409 = icmp eq i32 %78, 0
  %410 = select i1 %409, i1 %383, i1 false
  %411 = icmp ne i64 %163, -1
  %412 = xor i1 %410, true
  %413 = or i1 %411, %412
  %414 = sub nsw i32 1, %78
  %415 = icmp ult i32 %414, 64
  br i1 %415, label %416, label %426

416:                                              ; preds = %408
  %417 = add nsw i32 %78, 63
  %418 = and i32 %417, 63
  %419 = zext i32 %418 to i64
  %420 = shl i64 %163, %419
  %421 = icmp ne i64 %251, 0
  %422 = zext i1 %421 to i64
  %423 = or i64 %420, %422
  %424 = zext i32 %414 to i64
  %425 = lshr i64 %163, %424
  br label %436

426:                                              ; preds = %408
  %427 = icmp eq i32 %78, -63
  br i1 %427, label %428, label %432

428:                                              ; preds = %426
  %429 = icmp ne i64 %251, 0
  %430 = zext i1 %429 to i64
  %431 = or i64 %163, %430
  br label %436

432:                                              ; preds = %426
  %433 = or i64 %251, %163
  %434 = icmp ne i64 %433, 0
  %435 = zext i1 %434 to i64
  br label %436

436:                                              ; preds = %432, %428, %416
  %437 = phi i64 [ %423, %416 ], [ %431, %428 ], [ %435, %432 ]
  %438 = phi i64 [ %425, %416 ], [ 0, %428 ], [ 0, %432 ]
  %439 = icmp ne i64 %437, 0
  %440 = select i1 %413, i1 %439, i1 false
  br i1 %440, label %441, label %444

441:                                              ; preds = %436
  %442 = load i8, i8* @fp_status.2, align 1
  %443 = or i8 %442, 16
  br label %448

444:                                              ; preds = %436
  %445 = icmp eq i64 %437, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %444
  %447 = load i8, i8* @fp_status.2, align 1
  br label %448

448:                                              ; preds = %446, %441
  %449 = phi i8 [ %447, %446 ], [ %443, %441 ]
  %450 = or i8 %449, 32
  store i8 %450, i8* @fp_status.2, align 1
  br label %451

451:                                              ; preds = %448, %444
  br i1 %254, label %452, label %455

452:                                              ; preds = %451
  %453 = lshr i64 %437, 63
  %454 = trunc i64 %453 to i8
  br label %465

455:                                              ; preds = %451
  %456 = icmp sgt i16 %9, -1
  br i1 %456, label %461, label %457

457:                                              ; preds = %455
  %458 = icmp eq i8 %253, 1
  %459 = select i1 %458, i1 %439, i1 false
  %460 = zext i1 %459 to i8
  br label %465

461:                                              ; preds = %455
  %462 = icmp eq i8 %253, 2
  %463 = select i1 %462, i1 %439, i1 false
  %464 = zext i1 %463 to i8
  br label %465

465:                                              ; preds = %461, %457, %452
  %466 = phi i8 [ %454, %452 ], [ %460, %457 ], [ %464, %461 ]
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %478, label %468

468:                                              ; preds = %465
  %469 = add nuw i64 %438, 1
  %470 = and i64 %437, 9223372036854775807
  %471 = icmp eq i64 %470, 0
  %472 = and i1 %254, %471
  %473 = zext i1 %472 to i64
  %474 = xor i64 %473, -1
  %475 = and i64 %469, %474
  %476 = lshr i64 %469, 63
  %477 = trunc i64 %476 to i32
  br label %478

478:                                              ; preds = %468, %465
  %479 = phi i64 [ %438, %465 ], [ %475, %468 ]
  %480 = phi i32 [ 0, %465 ], [ %477, %468 ]
  %481 = zext i16 %10 to i32
  %482 = add nuw nsw i32 %480, %481
  %483 = insertvalue { i64, i16 } poison, i64 %479, 0
  br label %roundAndPackFloatx80.exit

484:                                              ; preds = %406, %373
  %485 = icmp eq i64 %251, 0
  br i1 %485, label %489, label %486

486:                                              ; preds = %484
  %487 = load i8, i8* @fp_status.2, align 1
  %488 = or i8 %487, 32
  store i8 %488, i8* @fp_status.2, align 1
  br label %489

489:                                              ; preds = %486, %484
  %490 = icmp eq i8 %374, 0
  br i1 %490, label %503, label %491

491:                                              ; preds = %489
  %492 = add i64 %163, 1
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %496

494:                                              ; preds = %491
  %495 = add nuw nsw i32 %78, 1
  br label %506

496:                                              ; preds = %491
  %497 = and i64 %251, 9223372036854775807
  %498 = icmp eq i64 %497, 0
  %499 = and i1 %498, %254
  %500 = zext i1 %499 to i64
  %501 = xor i64 %500, -1
  %502 = and i64 %492, %501
  br label %506

503:                                              ; preds = %489
  %504 = icmp eq i64 %163, 0
  %505 = select i1 %504, i32 0, i32 %78
  br label %506

506:                                              ; preds = %503, %496, %494
  %507 = phi i64 [ %163, %503 ], [ -9223372036854775808, %494 ], [ %502, %496 ]
  %508 = phi i32 [ %505, %503 ], [ %495, %494 ], [ %78, %496 ]
  %509 = zext i16 %10 to i32
  %510 = add nuw nsw i32 %508, %509
  %511 = insertvalue { i64, i16 } poison, i64 %507, 0
  br label %roundAndPackFloatx80.exit

roundAndPackFloatx80.exit:                        ; preds = %506, %478, %403, %398, %337, %317
  %512 = phi { i64, i16 } [ %402, %398 ], [ { i64 -9223372036854775808, i16 poison }, %403 ], [ %483, %478 ], [ %511, %506 ], [ %331, %317 ], [ %355, %337 ]
  %513 = phi i32 [ %401, %398 ], [ %405, %403 ], [ %482, %478 ], [ %510, %506 ], [ %330, %317 ], [ %354, %337 ]
  %514 = trunc i32 %513 to i16
  %515 = extractvalue { i64, i16 } %512, 0
  br label %516

516:                                              ; preds = %roundAndPackFloatx80.exit, %60, %47, %44, %34, %31, %28, %24, %15
  %517 = phi i64 [ %17, %15 ], [ %26, %24 ], [ -4611686018427387904, %44 ], [ -9223372036854775808, %28 ], [ %36, %34 ], [ -9223372036854775808, %47 ], [ %515, %roundAndPackFloatx80.exit ], [ 0, %31 ], [ 0, %60 ]
  %518 = phi i16 [ %18, %15 ], [ %27, %24 ], [ -1, %44 ], [ %29, %28 ], [ %37, %34 ], [ %50, %47 ], [ %514, %roundAndPackFloatx80.exit ], [ %10, %31 ], [ %10, %60 ]
  %519 = insertvalue { i64, i16 } poison, i64 %517, 0
  %520 = insertvalue { i64, i16 } %519, i16 %518, 1
  ret { i64, i16 } %520
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg)  nofree nosync nounwind readnone speculatable willreturn 

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal fastcc void @helper_fdivr_STN_ST0() unnamed_addr  nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
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
  %13 = icmp ne i16 %12, 0
  %14 = icmp ne i64 %5, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %0
  %17 = load i16, i16* @fpus, align 4
  %18 = or i16 %17, 4
  store i16 %18, i16* @fpus, align 4
  %19 = load i16, i16* @fpuc, align 2
  %20 = and i16 %19, 63
  %21 = xor i16 %20, 63
  %22 = and i16 %21, %18
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = or i16 %17, -32636
  store i16 %25, i16* @fpus, align 4
  br label %26

26:                                               ; preds = %24, %16, %0
  %27 = tail call fastcc { i64, i16 } @floatx80_div(i64 %9, i16 %11, i64 %5, i16 %7)
  %28 = extractvalue { i64, i16 } %27, 0
  %29 = extractvalue { i64, i16 } %27, 1
  store i64 %28, i64* %4, align 16
  store i16 %29, i16* %6, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @helper_fnstcw() unnamed_addr  mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i16, i16* @fpuc, align 2
  %2 = zext i16 %1 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldcw(i32 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = trunc i32 %0 to i16
  store i16 %2, i16* @fpuc, align 2
  %3 = lshr i32 %0, 10
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 3
  store i8 %5, i8* @fp_status.1, align 1
  %6 = lshr i16 %2, 8
  %7 = and i16 %6, 3
  %8 = icmp eq i16 %7, 2
  %9 = icmp eq i16 %7, 0
  %10 = select i1 %8, i8 64, i8 80
  %11 = select i1 %9, i8 32, i8 %10
  store i8 %11, i8* @fp_status.3, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @helper_fistl_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 32767
  %7 = zext i16 %6 to i32
  %8 = lshr i16 %5, 15
  %9 = trunc i16 %8 to i8
  %10 = icmp eq i16 %6, 32767
  %11 = and i64 %3, 9223372036854775807
  %12 = icmp eq i64 %11, 0
  %13 = select i1 %12, i8 %9, i8 0
  %14 = select i1 %10, i8 %13, i8 %9
  %15 = sub nsw i32 16439, %7
  %16 = icmp sgt i32 %15, 1
  %17 = select i1 %16, i32 %15, i32 1
  %18 = icmp ult i32 %17, 64
  br i1 %18, label %19, label %29

19:                                               ; preds = %0
  %20 = zext i32 %17 to i64
  %21 = lshr i64 %3, %20
  %22 = sub nsw i32 0, %17
  %23 = and i32 %22, 63
  %24 = zext i32 %23 to i64
  %25 = shl i64 %3, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = or i64 %21, %27
  br label %32

29:                                               ; preds = %0
  %30 = icmp ne i64 %3, 0
  %31 = zext i1 %30 to i64
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi i64 [ %28, %19 ], [ %31, %29 ]
  %34 = load i8, i8* @fp_status.1, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = icmp eq i8 %34, 3
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = icmp eq i8 %14, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = icmp eq i8 %34, 2
  %42 = select i1 %41, i64 0, i64 127
  br label %46

43:                                               ; preds = %38
  %44 = icmp eq i8 %34, 1
  %45 = select i1 %44, i64 0, i64 127
  br label %46

46:                                               ; preds = %43, %40, %36, %32
  %47 = phi i64 [ 64, %32 ], [ 0, %36 ], [ %42, %40 ], [ %45, %43 ]
  %48 = trunc i64 %33 to i8
  %49 = and i8 %48, 127
  %50 = add i64 %47, %33
  %51 = lshr i64 %50, 7
  %52 = icmp eq i8 %49, 64
  %53 = and i1 %35, %52
  %54 = zext i1 %53 to i64
  %55 = xor i64 %54, -1
  %56 = and i64 %51, %55
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i8 %14, 0
  %59 = sub nsw i32 0, %57
  %60 = select i1 %58, i32 %57, i32 %59
  %61 = icmp ult i64 %50, 549755813888
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %62
  %65 = lshr i32 %60, 31
  %66 = zext i8 %14 to i32
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64, %46
  %69 = load i8, i8* @fp_status.2, align 1
  %70 = or i8 %69, 1
  store i8 %70, i8* @fp_status.2, align 1
  %71 = select i1 %58, i32 2147483647, i32 -2147483648
  br label %floatx80_to_int32.exit

72:                                               ; preds = %64, %62
  %73 = icmp eq i8 %49, 0
  br i1 %73, label %floatx80_to_int32.exit, label %74

74:                                               ; preds = %72
  %75 = load i8, i8* @fp_status.2, align 1
  %76 = or i8 %75, 32
  store i8 %76, i8* @fp_status.2, align 1
  br label %floatx80_to_int32.exit

floatx80_to_int32.exit:                           ; preds = %74, %72, %68
  %77 = phi i32 [ %71, %68 ], [ %60, %74 ], [ %60, %72 ]
  ret i32 %77
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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: norecurse nounwind
define internal fastcc void @typecast655(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !22 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i8.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i8.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i12.i = add i32 %tmp0_v.i3.i, -48
  %7 = inttoptr i32 %tmp2_v.i12.i to i32*
  store i32 5, i32* %7, align 16
  %tmp2_v1.i.i = add i32 %tmp0_v.i3.i, -44
  %8 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* %7, align 16
  tail call fastcc void @helper_fildl_ST0(i32 %9)
  %10 = load i32, i32* %8, align 4
  tail call fastcc void @helper_fildl_ST0(i32 %10)
  tail call fastcc void @helper_fdiv_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp2_v8.i14.i = add i32 %tmp0_v.i3.i, -32
  %tmp5_v.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %11 = inttoptr i32 %tmp2_v8.i14.i to i64*
  store i64 %tmp5_v.i.i, i64* %11, align 16
  tail call fastcc void @helper_fpop()
  %12 = load i32, i32* %7, align 16
  %tmp0_v12.i.i = ashr i32 %12, 31
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %12 to i64
  %15 = zext i32 %tmp0_v12.i.i to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = icmp ne i32 %13, 0
  tail call void @llvm.assume(i1 %18)
  %19 = sext i32 %13 to i64
  %.frozen = freeze i64 %17
  %.frozen7 = freeze i64 %19
  %20 = sdiv i64 %.frozen, %.frozen7
  %21 = add i64 %20, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  tail call void @llvm.assume(i1 %22)
  %23 = mul i64 %20, %.frozen7
  %.decomposed = sub i64 %.frozen, %23
  %24 = trunc i64 %20 to i32
  %25 = trunc i64 %.decomposed to i32
  store i32 %24, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i3.i, -72
  %27 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %7, align 16
  %tmp2_v22.i.i = add i32 %tmp0_v.i3.i, -76
  %29 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v25.i.i = add i32 %tmp0_v.i3.i, -80
  %30 = inttoptr i32 %tmp2_v25.i.i to i32*
  %spi.bis.653 = ptrtoint[14 x i8]* @str.bis.653 to i32
  store i32 %spi.bis.653, i32* %30, align 16
  %tmp2_v26.i.i = add i32 %tmp0_v.i3.i, -84
  %31 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 134517226, i32* %31, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %25, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !23
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  %tmp2_v.i.i = add i32 %tmp0_v.i3.i, -28
  %35 = inttoptr i32 %tmp2_v.i.i to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %30, align 16
  %37 = inttoptr i32 %tmp2_v8.i14.i to i32*
  %38 = load i32, i32* %37, align 16
  store i32 %38, i32* %31, align 4
  %39 = load i32, i32* %8, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -88
  %40 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %7, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -92
  %42 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %41, i32* %42, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i3.i, -96
  %43 = inttoptr i32 %tmp2_v14.i.i to i32*
  %spi.bis.652 = ptrtoint[14 x i8]* @str.bis.652 to i32
  store i32 %spi.bis.652, i32* %43, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -100
  %44 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517256, i32* %44, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %34, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !23
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  %tmp2_v.i23.i = add i32 %tmp0_v.i3.i, -40
  %48 = inttoptr i32 %tmp2_v.i23.i to i32*
  store i32 2, i32* %48, align 8
  %49 = load i64, i64* inttoptr (i32 134520880 to i64*), align 16
  tail call fastcc void @helper_fldl_ST0(i64 %49)
  %tmp2_v3.i27.i = add i32 %tmp0_v.i3.i, -24
  %tmp5_v4.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %50 = inttoptr i32 %tmp2_v3.i27.i to i64*
  store i64 %tmp5_v4.i.i, i64* %50, align 8
  tail call fastcc void @helper_fpop()
  %51 = load i32, i32* %48, align 8
  tail call fastcc void @helper_fildl_ST0(i32 %51)
  %52 = load i64, i64* %50, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %52)
  tail call fastcc void @helper_fdivr_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp2_v12.i31.i = add i32 %tmp0_v.i3.i, -50
  %tmp6_v.i.i = tail call fastcc i32 @helper_fnstcw()
  %53 = trunc i32 %tmp6_v.i.i to i16
  %54 = inttoptr i32 %tmp2_v12.i31.i to i16*
  store i16 %53, i16* %54, align 2
  %tmp0_v17.i.i = and i32 %tmp6_v.i.i, 62463
  %eax_v.i33.i = or i32 %tmp0_v17.i.i, 3072
  %tmp2_v18.i.i = add i32 %tmp0_v.i3.i, -52
  %55 = trunc i32 %eax_v.i33.i to i16
  %56 = inttoptr i32 %tmp2_v18.i.i to i16*
  store i16 %55, i16* %56, align 4
  tail call fastcc void @helper_fldcw(i32 %eax_v.i33.i)
  %tmp2_v22.i35.i = add i32 %tmp0_v.i3.i, -36
  %tmp6_v23.i.i = tail call fastcc i32 @helper_fistl_ST0()
  %57 = inttoptr i32 %tmp2_v22.i35.i to i32*
  store i32 %tmp6_v23.i.i, i32* %57, align 4
  tail call fastcc void @helper_fpop()
  %58 = load i16, i16* %54, align 2
  %tmp0_v26.i.i = zext i16 %58 to i32
  tail call fastcc void @helper_fldcw(i32 %tmp0_v26.i.i)
  %59 = load i32, i32* %57, align 4
  store i32 %59, i32* %29, align 4
  %spi.bis.651 = ptrtoint[7 x i8]* @str.bis.651 to i32
  store i32 %spi.bis.651, i32* %30, align 16
  store i32 134517324, i32* %31, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %47, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !23
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 


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
!22 = !{i32 0, i32 0, i32 0}
!23 = !{!"printf"}

  tail call fastcc void @typecast655 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack654, i32 0, i32 8092) to i32)) nounwind
