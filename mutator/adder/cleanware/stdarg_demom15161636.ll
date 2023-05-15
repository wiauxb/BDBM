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
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !16
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !16
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !16
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !16
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @stdarg_demom15161636(i32 %arg_esp) unnamed_addr  norecurse  !retregs !18 {
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %3 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i3.i, -48
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134520840, i32* %8, align 16
  %tmp2_v3.i11.i = add i32 %tmp0_v.i3.i, -52
  %9 = inttoptr i32 %tmp2_v3.i11.i to i32*
  store i32 134517286, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  store i32 2, i32* %7, align 4
  %tmp2_v1.i37.i = add i32 %tmp0_v.i3.i, -40
  %12 = inttoptr i32 %tmp2_v1.i37.i to i32*
  store i32 11, i32* %12, align 8
  %tmp2_v2.i38.i = add i32 %tmp0_v.i3.i, -44
  %13 = inttoptr i32 %tmp2_v2.i38.i to i32*
  store i32 120, i32* %13, align 4
  store i32 30, i32* %8, align 16
  store i32 25, i32* %9, align 4
  %tmp2_v5.i40.i = add i32 %tmp0_v.i3.i, -56
  %14 = inttoptr i32 %tmp2_v5.i40.i to i32*
  store i32 15, i32* %14, align 8
  %tmp2_v6.i41.i = add i32 %tmp0_v.i3.i, -60
  %15 = inttoptr i32 %tmp2_v6.i41.i to i32*
  store i32 10, i32* %15, align 4
  %tmp2_v7.i42.i = add i32 %tmp0_v.i3.i, -64
  %16 = inttoptr i32 %tmp2_v7.i42.i to i32*
  store i32 7, i32* %16, align 16
  %tmp2_v8.i43.i = add i32 %tmp0_v.i3.i, -68
  %17 = inttoptr i32 %tmp2_v8.i43.i to i32*
  store i32 134517310, i32* %17, align 4
  %tmp2_v.i40.i.i = add i32 %tmp0_v.i3.i, -72
  %18 = inttoptr i32 %tmp2_v.i40.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %18, align 8
  %tmp2_v1.i43.i.i = add i32 %tmp0_v.i3.i, -116
  %19 = inttoptr i32 %tmp2_v1.i43.i.i to i32*
  store i32 134517468, i32* %19, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %20 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %21 = load i32, i32* %20, align 4
  %tmp2_v2.i11.i.i = add i32 %tmp0_v.i3.i, -84
  %22 = inttoptr i32 %tmp2_v2.i11.i.i to i32*
  store i32 %21, i32* %22, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i3.i, -100
  %23 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp2_v6.i41.i, i32* %23, align 4
  %tmp2_v5.i12.i.i = add i32 %tmp0_v.i3.i, -96
  %24 = inttoptr i32 %tmp2_v5.i12.i.i to i32*
  store i32 0, i32* %24, align 16
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i3.i, -92
  %25 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %16, align 16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %BB_8049302.i.lr.ph.i, label %Func_max.exit

BB_8049302.i.lr.ph.i:                             ; preds = %0
  %tmp2_v4.i57.i.i = add i32 %tmp0_v.i3.i, -88
  %28 = inttoptr i32 %tmp2_v4.i57.i.i to i32*
  br label %BB_8049302.i.i

BB_804932C.i.sink.split.i:                        ; preds = %BB_8049302.i.i, %BB_804931E.i.i
  store i32 %35, i32* %24, align 16
  %.pre = load i32, i32* %25, align 4
  br label %BB_804932C.i.i

BB_804932C.i.i:                                   ; preds = %BB_804931E.i.i, %BB_804932C.i.sink.split.i
  %29 = phi i32 [ %36, %BB_804931E.i.i ], [ %.pre, %BB_804932C.i.sink.split.i ]
  %tmp0_v1.i25.i.i = add i32 %29, 1
  store i32 %tmp0_v1.i25.i.i, i32* %25, align 4
  %30 = load i32, i32* %16, align 16
  %31 = icmp slt i32 %tmp0_v1.i25.i.i, %30
  br i1 %31, label %BB_8049302.i.i, label %Func_max.exit

BB_804931E.i.i:                                   ; preds = %BB_8049302.i.i
  %32 = load i32, i32* %24, align 16
  %.not.i.i.i = icmp sgt i32 %35, %32
  br i1 %.not.i.i.i, label %BB_804932C.i.sink.split.i, label %BB_804932C.i.i

BB_8049302.i.i:                                   ; preds = %BB_804932C.i.i, %BB_8049302.i.lr.ph.i
  %33 = load i32, i32* %23, align 4
  %tmp2_v1.i54.i.i = add i32 %33, 4
  store i32 %tmp2_v1.i54.i.i, i32* %23, align 4
  %34 = inttoptr i32 %33 to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %28, align 8
  %36 = load i32, i32* %25, align 4
  %.not.i60.i.i = icmp eq i32 %36, 0
  br i1 %.not.i60.i.i, label %BB_804932C.i.sink.split.i, label %BB_804931E.i.i

Func_max.exit:                                    ; preds = %BB_804932C.i.i, %0
  %r_edx.0.lcssa.i = phi i32 [ 0, %0 ], [ %tmp2_v1.i54.i.i, %BB_804932C.i.i ]
  %37 = load i32, i32* %24, align 16
  %38 = load i32, i32* %22, align 4
  %39 = load i32, i32* %20, align 4
  %tmp0_v4.i20.i.i = xor i32 %39, %38
  %40 = load i32, i32* %18, align 8
  %tmp2_v.i47.i = add i32 %40, -12
  %41 = inttoptr i32 %tmp2_v.i47.i to i32*
  store i32 %37, i32* %41, align 4
  store i32 %37, i32* %13, align 4
  store i32 134520850, i32* %8, align 16
  store i32 134517334, i32* %9, align 4
  %42 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v4.i20.i.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !19
  %43 = lshr i64 %42, 32
  %44 = trunc i64 %43 to i32
  store i32 12, i32* %8, align 16
  store i32 15, i32* %9, align 4
  store i32 55, i32* %14, align 8
  store i32 20, i32* %15, align 4
  store i32 4, i32* %16, align 16
  store i32 134517355, i32* %17, align 4
  store i32 %40, i32* %18, align 8
  store i32 134517468, i32* %19, align 4
  %tmp4_v.i.i.b.i5 = load i1, i1* @segs.0, align 1
  %45 = select i1 %tmp4_v.i.i.b.i5, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %22, align 4
  store i32 %tmp2_v6.i41.i, i32* %23, align 4
  store i32 0, i32* %24, align 16
  store i32 0, i32* %25, align 4
  %47 = load i32, i32* %16, align 16
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %BB_8049302.i.lr.ph.i13, label %Func_max.exit29

BB_8049302.i.lr.ph.i13:                           ; preds = %Func_max.exit
  %tmp2_v4.i57.i.i12 = add i32 %tmp0_v.i3.i, -88
  %49 = inttoptr i32 %tmp2_v4.i57.i.i12 to i32*
  br label %BB_8049302.i.i28

BB_804932C.i.sink.split.i21:                      ; preds = %BB_8049302.i.i28, %BB_804931E.i.i25
  store i32 %56, i32* %24, align 16
  %.pre33 = load i32, i32* %25, align 4
  br label %BB_804932C.i.i23

BB_804932C.i.i23:                                 ; preds = %BB_804931E.i.i25, %BB_804932C.i.sink.split.i21
  %50 = phi i32 [ %57, %BB_804931E.i.i25 ], [ %.pre33, %BB_804932C.i.sink.split.i21 ]
  %tmp0_v1.i25.i.i22 = add i32 %50, 1
  store i32 %tmp0_v1.i25.i.i22, i32* %25, align 4
  %51 = load i32, i32* %16, align 16
  %52 = icmp slt i32 %tmp0_v1.i25.i.i22, %51
  br i1 %52, label %BB_8049302.i.i28, label %Func_max.exit29

BB_804931E.i.i25:                                 ; preds = %BB_8049302.i.i28
  %53 = load i32, i32* %24, align 16
  %.not.i.i.i24 = icmp sgt i32 %56, %53
  br i1 %.not.i.i.i24, label %BB_804932C.i.sink.split.i21, label %BB_804932C.i.i23

BB_8049302.i.i28:                                 ; preds = %BB_804932C.i.i23, %BB_8049302.i.lr.ph.i13
  %54 = load i32, i32* %23, align 4
  %tmp2_v1.i54.i.i26 = add i32 %54, 4
  store i32 %tmp2_v1.i54.i.i26, i32* %23, align 4
  %55 = inttoptr i32 %54 to i32*
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %49, align 8
  %57 = load i32, i32* %25, align 4
  %.not.i60.i.i27 = icmp eq i32 %57, 0
  br i1 %.not.i60.i.i27, label %BB_804932C.i.sink.split.i21, label %BB_804931E.i.i25

Func_max.exit29:                                  ; preds = %BB_804932C.i.i23, %Func_max.exit
  %r_edx.0.lcssa.i14 = phi i32 [ %44, %Func_max.exit ], [ %tmp2_v1.i54.i.i26, %BB_804932C.i.i23 ]
  %58 = load i32, i32* %24, align 16
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %45, align 4
  %tmp0_v4.i20.i.i15 = xor i32 %60, %59
  %61 = load i32, i32* %18, align 8
  %tmp2_v.i58.i = add i32 %61, -12
  %62 = inttoptr i32 %tmp2_v.i58.i to i32*
  store i32 %58, i32* %62, align 4
  store i32 %58, i32* %13, align 4
  store i32 134520850, i32* %8, align 16
  store i32 134517379, i32* %9, align 4
  %63 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v4.i20.i.i15, i32 inreg noundef %r_edx.0.lcssa.i14, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !19
  store i32 134520859, i32* %8, align 16
  store i32 134517397, i32* %9, align 4
  %arg.i.i32 = load i32, i32* %8, align 16
  %64 = inttoptr i32 %arg.i.i32 to i8*
  %65 = tail call i32 @puts(i8* nonnull dereferenceable(1) %64)
  store i32 -2, i32* %7, align 4
  store i32 -1, i32* %12, align 8
  %66 = load i64, i64* inttoptr (i32 134520888 to i64*), align 8
  tail call fastcc void @helper_fldl_ST0(i64 %66)
  %tmp5_v5.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %67 = inttoptr i32 %tmp2_v2.i.i to i64*
  store i64 %tmp5_v5.i.i, i64* %67, align 16
  tail call fastcc void @helper_fpop()
  store i32 3, i32* %9, align 4
  store i32 2, i32* %14, align 8
  store i32 1, i32* %15, align 4
  store i32 134520872, i32* %16, align 16
  store i32 134517435, i32* %17, align 4
  store i32 %61, i32* %18, align 8
  %tmp2_v1.i10.i.i = add i32 %tmp0_v.i3.i, -76
  %68 = inttoptr i32 %tmp2_v1.i10.i.i to i32*
  store i32 134529024, i32* %68, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -132
  %69 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517598, i32* %69, align 4
  %70 = load i32, i32* %16, align 16
  store i32 %70, i32* %19, align 4
  %tmp4_v.i45.i.b.i = load i1, i1* @segs.0, align 1
  %71 = select i1 %tmp4_v.i45.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %19, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i3.i, -144
  %74 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %73, i32* %74, align 16
  %tmp2_v10.i49.i.i = add i32 %tmp0_v.i3.i, -148
  %75 = inttoptr i32 %tmp2_v10.i49.i.i to i32*
  store i32 134517632, i32* %75, align 4
  %arg.i.i.i = load i32, i32* %74, align 16
  %76 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i72.i.i = add i32 %tmp0_v.i3.i, -104
  %77 = inttoptr i32 %tmp2_v.i72.i.i to i32*
  store i32 %76, i32* %77, align 8
  %tmp2_v2.i74.i.i = add i32 %tmp0_v.i3.i, -112
  %78 = inttoptr i32 %tmp2_v2.i74.i.i to i32*
  store i32 %tmp2_v6.i41.i, i32* %78, align 16
  %tmp2_v3.i75.i.i = add i32 %tmp0_v.i3.i, -108
  %79 = inttoptr i32 %tmp2_v3.i75.i.i to i32*
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %77, align 8
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %BB_8049395.i.lr.ph.i, label %Func_print.exit

BB_8049395.i.lr.ph.i:                             ; preds = %Func_max.exit29
  %mrv.i10.i = insertvalue { i32, i32 } undef, i32 %tmp2_v9.i.i.i, 0
  %82 = inttoptr i32 %tmp2_v5.i12.i.i to i64*
  br label %BB_8049395.i.i

Func_80493C9.exit.i.i:                            ; preds = %BB_8049395.i.i
  %tmp2_v1.i34.i.i = add i32 %91, 8
  store i32 %tmp2_v1.i34.i.i, i32* %78, align 16
  %83 = inttoptr i32 %91 to i64*
  %84 = load i64, i64* %83, align 4
  tail call fastcc void @helper_fldl_ST0(i64 %84)
  %tmp5_v5.i.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v5.i.i.i, i64* %82, align 16
  tail call fastcc void @helper_fpop()
  %85 = load i32, i32* %25, align 4
  %tmp2_v10.i.i.i = add i32 %r_esp.1.in18.i, 8
  %86 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %24, align 16
  br label %BB_80493FE.i.i

BB_8049395.i.i:                                   ; preds = %BB_80493FE.i.i, %BB_8049395.i.lr.ph.i
  %r_esp.1.in18.i = phi i32 [ %tmp2_v9.i.i.i, %BB_8049395.i.lr.ph.i ], [ %r_esp.1.in.i, %BB_80493FE.i.i ]
  %mrv.i10.pn.i = phi { i32, i32 } [ %mrv.i10.i, %BB_8049395.i.lr.ph.i ], [ %.pn817.i, %BB_80493FE.i.i ]
  %.pn.i = phi i32 [ %76, %BB_8049395.i.lr.ph.i ], [ %97, %BB_80493FE.i.i ]
  %storemerge16.i = phi i32 [ 0, %BB_8049395.i.lr.ph.i ], [ %tmp0_v1.i26.i.i, %BB_80493FE.i.i ]
  %.pn817.i = insertvalue { i32, i32 } %mrv.i10.pn.i, i32 %.pn.i, 1
  %88 = load i32, i32* %19, align 4
  %tmp0_v3.i17.i.i = add i32 %88, %storemerge16.i
  %89 = inttoptr i32 %tmp0_v3.i17.i.i to i8*
  %90 = load i8, i8* %89, align 1
  %.not.i21.i.i = icmp eq i8 %90, 100
  %91 = load i32, i32* %78, align 16
  br i1 %.not.i21.i.i, label %BB_80493A4.i.i, label %Func_80493C9.exit.i.i

BB_80493FE.i.i:                                   ; preds = %BB_80493A4.i.i, %Func_80493C9.exit.i.i
  %.sink23.i = phi i32 [ %102, %BB_80493A4.i.i ], [ %87, %Func_80493C9.exit.i.i ]
  %.sink21.i = phi i32 [ 134520879, %BB_80493A4.i.i ], [ 134520883, %Func_80493C9.exit.i.i ]
  %.sink.i = phi i32 [ 134517700, %BB_80493A4.i.i ], [ 134517755, %Func_80493C9.exit.i.i ]
  %tmp2_v1.i87.i.sink.i = phi i32 [ %tmp2_v1.i87.i.i, %BB_80493A4.i.i ], [ %tmp2_v1.i34.i.i, %Func_80493C9.exit.i.i ]
  %tmp2_v8.i92.i.i = add i32 %r_esp.1.in18.i, 4
  %92 = inttoptr i32 %tmp2_v8.i92.i.i to i32*
  store i32 %.sink23.i, i32* %92, align 4
  %93 = inttoptr i32 %r_esp.1.in18.i to i32*
  store i32 %.sink21.i, i32* %93, align 4
  %tmp2_v11.i96.i.i = add i32 %r_esp.1.in18.i, -4
  %94 = inttoptr i32 %tmp2_v11.i96.i.i to i32*
  store i32 %.sink.i, i32* %94, align 4
  %95 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v4.i20.i.i15, i32 inreg noundef %tmp2_v1.i87.i.sink.i, i32 noundef %r_esp.1.in18.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" 
  %96 = lshr i64 %95, 32
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %79, align 4
  %tmp0_v1.i26.i.i = add i32 %98, 1
  %r_esp.1.in.i = extractvalue { i32, i32 } %mrv.i10.pn.i, 0
  store i32 %tmp0_v1.i26.i.i, i32* %79, align 4
  %99 = load i32, i32* %77, align 8
  %100 = icmp slt i32 %tmp0_v1.i26.i.i, %99
  br i1 %100, label %BB_8049395.i.i, label %Func_print.exit

BB_80493A4.i.i:                                   ; preds = %BB_8049395.i.i
  %tmp2_v1.i87.i.i = add i32 %91, 4
  store i32 %tmp2_v1.i87.i.i, i32* %78, align 16
  %101 = inttoptr i32 %91 to i32*
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %23, align 4
  br label %BB_80493FE.i.i

Func_print.exit:                                  ; preds = %BB_80493FE.i.i, %Func_max.exit29
  ret void
}

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
!18 = !{i32 0, i32 0, i32 0, i32 0}
!19 = !{!"printf"}

  tail call fastcc void @stdarg_demom15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
