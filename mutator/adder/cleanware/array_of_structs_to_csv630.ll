; Mutation 630
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }

@fpstt = internal unnamed_addr global i32 0
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@fp_status.2 = internal unnamed_addr global i8 0
@stack629 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.625 = constant [23 x i8] c"\0a\25\64\20\72\65\63\6f\72\64\73\20\77\72\69\74\74\65\6e\2e\0a\0a\00"
@str.bis.626 = constant [15 x i8] c"\25\63\2c\25\73\2c\25\64\2c\25\2e\32\66\0a\00"
@str.bis.627 = constant [9 x i8] c"\66\69\6c\65\2e\63\73\76\00"
@str.bis.628 = constant [2 x i8] c"\77\00"

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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: naked noinline
declare i32 @fprintf()  naked noinline 

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @ferror(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @array_of_structs_to_csv630(i32 %arg_esp) unnamed_addr  norecurse  !retregs !18 {
Func_804929C.exit.i:
  %tmp2_v.i92.i = add i32 %arg_esp, 4
  %tmp0_v.i93.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i95.i = add i32 %tmp0_v.i93.i, -4
  %2 = inttoptr i32 %tmp2_v3.i95.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i96.i = add i32 %tmp0_v.i93.i, -8
  %3 = inttoptr i32 %tmp2_v4.i96.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i98.i = add i32 %tmp0_v.i93.i, -12
  %4 = inttoptr i32 %tmp2_v5.i98.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i99.i = add i32 %tmp0_v.i93.i, -16
  %5 = inttoptr i32 %tmp2_v6.i99.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i101.i = add i32 %tmp0_v.i93.i, -20
  %6 = inttoptr i32 %tmp2_v7.i101.i to i32*
  store i32 %tmp2_v.i92.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i93.i, -244
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517365, i32* %7, align 4
  %tmp4_v.i73.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i77.i = add i32 %tmp0_v.i93.i, -36
  %10 = inttoptr i32 %tmp2_v2.i77.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v5.i81.i = add i32 %tmp0_v.i93.i, -252
  %11 = inttoptr i32 %tmp2_v5.i81.i to i32*
  %spi.bis.628 = ptrtoint[2 x i8]* @str.bis.628 to i32
  store i32 %spi.bis.628, i32* %11, align 4
  %tmp2_v7.i83.i = add i32 %tmp0_v.i93.i, -256
  %12 = inttoptr i32 %tmp2_v7.i83.i to i32*
  %spi.bis.627 = ptrtoint[9 x i8]* @str.bis.627 to i32
  store i32 %spi.bis.627, i32* %12, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i93.i, -260
  %13 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517404, i32* %13, align 4
  %arg.i.i = load i32, i32* %12, align 16
  %arg2.i.i = load i32, i32* %11, align 4
  %14 = tail call i32 @fopen(i32 %arg.i.i, i32 %arg2.i.i)
  %mrv.i1 = insertvalue { i32, i32 } undef, i32 %tmp2_v7.i83.i, 0
  %tmp2_v.i33.i = add i32 %tmp0_v.i93.i, -232
  %15 = inttoptr i32 %tmp2_v.i33.i to i32*
  store i32 %14, i32* %15, align 8
  %tmp2_v.i50.i = add i32 %tmp0_v.i93.i, -228
  %16 = inttoptr i32 %tmp2_v.i50.i to i8*
  store i8 85, i8* %16, align 4
  %tmp0_v.i52.i = add i32 %tmp0_v.i93.i, -227
  %17 = inttoptr i32 %tmp0_v.i52.i to i32*
  store i32 1701273934, i32* %17, align 4
  %tmp2_v2.i53.i = add i32 %tmp0_v.i93.i, -223
  %18 = inttoptr i32 %tmp2_v2.i53.i to i16*
  store i16 25189, i16* %18, align 2
  %tmp2_v3.i54.i = add i32 %tmp0_v.i93.i, -221
  %19 = inttoptr i32 %tmp2_v3.i54.i to i8*
  store i8 0, i8* %19, align 1
  %tmp2_v4.i55.i = add i32 %tmp0_v.i93.i, -176
  %20 = inttoptr i32 %tmp2_v4.i55.i to i32*
  store i32 20, i32* %20, align 16
  %21 = load i64, i64* inttoptr (i32 134520936 to i64*), align 8
  tail call fastcc void @helper_fldl_ST0(i64 %21)
  %tmp2_v7.i60.i = add i32 %tmp0_v.i93.i, -172
  %tmp5_v8.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %22 = inttoptr i32 %tmp2_v7.i60.i to i64*
  store i64 %tmp5_v8.i.i, i64* %22, align 4
  tail call fastcc void @helper_fpop()
  %tmp2_v10.i61.i = add i32 %tmp0_v.i93.i, -164
  %23 = inttoptr i32 %tmp2_v10.i61.i to i8*
  store i8 85, i8* %23, align 4
  %tmp0_v12.i62.i = add i32 %tmp0_v.i93.i, -163
  %24 = inttoptr i32 %tmp0_v12.i62.i to i32*
  store i32 2037539149, i32* %24, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i93.i, -159
  %25 = inttoptr i32 %tmp2_v13.i.i to i8*
  store i8 0, i8* %25, align 1
  %tmp2_v14.i63.i = add i32 %tmp0_v.i93.i, -112
  %26 = inttoptr i32 %tmp2_v14.i63.i to i32*
  store i32 19, i32* %26, align 16
  %27 = load i64, i64* inttoptr (i32 134520944 to i64*), align 16
  tail call fastcc void @helper_fldl_ST0(i64 %27)
  %tmp2_v19.i64.i = add i32 %tmp0_v.i93.i, -108
  %tmp5_v20.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %28 = inttoptr i32 %tmp2_v19.i64.i to i64*
  store i64 %tmp5_v20.i.i, i64* %28, align 4
  tail call fastcc void @helper_fpop()
  %tmp2_v22.i.i = add i32 %tmp0_v.i93.i, -100
  %29 = inttoptr i32 %tmp2_v22.i.i to i8*
  store i8 71, i8* %29, align 4
  %tmp0_v24.i66.i = add i32 %tmp0_v.i93.i, -99
  %30 = inttoptr i32 %tmp0_v24.i66.i to i32*
  store i32 1986819403, i32* %30, align 4
  %tmp2_v25.i.i = add i32 %tmp0_v.i93.i, -95
  %31 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 1701080681, i32* %31, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i93.i, -91
  %32 = inttoptr i32 %tmp2_v26.i.i to i16*
  store i16 114, i16* %32, align 2
  %tmp2_v27.i.i = add i32 %tmp0_v.i93.i, -48
  %33 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 21, i32* %33, align 16
  %34 = load i64, i64* inttoptr (i32 134520952 to i64*), align 8
  tail call fastcc void @helper_fldl_ST0(i64 %34)
  %tmp2_v32.i69.i = add i32 %tmp0_v.i93.i, -44
  %tmp5_v33.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %35 = inttoptr i32 %tmp2_v32.i69.i to i64*
  store i64 %tmp5_v33.i.i, i64* %35, align 4
  tail call fastcc void @helper_fpop()
  %tmp2_v35.i70.i = add i32 %tmp0_v.i93.i, -236
  %36 = inttoptr i32 %tmp2_v35.i70.i to i32*
  %tmp2_v2.i40.i = add i32 %tmp0_v.i93.i, -32
  store i32 0, i32* %36, align 4
  br label %BB_804936B.i

BB_804936B.i:                                     ; preds = %BB_804936B.i, %Func_804929C.exit.i
  %r_esp.0.in13 = phi i32 [ %tmp2_v7.i83.i, %Func_804929C.exit.i ], [ %r_esp.0.in, %BB_804936B.i ]
  %.pn912 = phi i32 [ %14, %Func_804929C.exit.i ], [ %54, %BB_804936B.i ]
  %mrv.i1.pn11 = phi { i32, i32 } [ %mrv.i1, %Func_804929C.exit.i ], [ %.pn, %BB_804936B.i ]
  %storemerge10 = phi i32 [ 0, %Func_804929C.exit.i ], [ %tmp0_v1.i13.i, %BB_804936B.i ]
  %.pn = insertvalue { i32, i32 } %mrv.i1.pn11, i32 %.pn912, 1
  %tmp0_v1.i39.i = shl i32 %storemerge10, 6
  %tmp2_v5.i.i = add i32 %tmp2_v7.i60.i, %tmp0_v1.i39.i
  %37 = inttoptr i32 %tmp2_v5.i.i to i64*
  %38 = load i64, i64* %37, align 4
  tail call fastcc void @helper_fldl_ST0(i64 %38)
  %39 = load i32, i32* %36, align 4
  %tmp0_v9.i.i = shl i32 %39, 6
  %tmp0_v11.i.i = add i32 %tmp0_v9.i.i, %tmp2_v2.i40.i
  %tmp0_v12.i.i = add i32 %tmp0_v11.i.i, -144
  %40 = inttoptr i32 %tmp0_v12.i.i to i32*
  %41 = load i32, i32* %40, align 16
  %tmp0_v18.i.i = add i32 %tmp0_v9.i.i, %tmp2_v.i50.i
  %tmp2_v19.i.i = or i32 %tmp0_v18.i.i, 1
  %tmp0_v25.i.i = add i32 %tmp0_v11.i.i, -196
  %42 = inttoptr i32 %tmp0_v25.i.i to i8*
  %43 = load i8, i8* %42, align 4
  %tmp0_v27.i.i = sext i8 %43 to i32
  %tmp2_v29.i.i = add i32 %r_esp.0.in13, 4
  %tmp5_v30.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %44 = inttoptr i32 %tmp2_v29.i.i to i64*
  store i64 %tmp5_v30.i.i, i64* %44, align 4
  tail call fastcc void @helper_fpop()
  %45 = inttoptr i32 %r_esp.0.in13 to i32*
  store i32 %41, i32* %45, align 4
  %tmp2_v33.i.i = add i32 %r_esp.0.in13, -4
  %46 = inttoptr i32 %tmp2_v33.i.i to i32*
  store i32 %tmp2_v19.i.i, i32* %46, align 4
  %tmp2_v34.i.i = add i32 %r_esp.0.in13, -8
  %47 = inttoptr i32 %tmp2_v34.i.i to i32*
  store i32 %tmp0_v27.i.i, i32* %47, align 4
  %tmp2_v36.i.i = add i32 %r_esp.0.in13, -12
  %48 = inttoptr i32 %tmp2_v36.i.i to i32*
  %spi.bis.626 = ptrtoint[15 x i8]* @str.bis.626 to i32
  store i32 %spi.bis.626, i32* %48, align 4
  %49 = load i32, i32* %15, align 8
  %tmp2_v40.i.i = add i32 %r_esp.0.in13, -16
  %50 = inttoptr i32 %tmp2_v40.i.i to i32*
  store i32 %49, i32* %50, align 4
  %tmp2_v41.i.i = add i32 %r_esp.0.in13, -20
  %51 = inttoptr i32 %tmp2_v41.i.i to i32*
  store i32 134517730, i32* %51, align 4
  %52 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v19.i.i, i32 inreg noundef %41, i32 noundef %tmp2_v40.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !19
  %53 = load i32, i32* %15, align 8
  store i32 %53, i32* %45, align 4
  store i32 134517747, i32* %46, align 4
  %arg.i.i5 = load i32, i32* %45, align 4
  %54 = tail call i32 @ferror(i32 %arg.i.i5)
  %55 = load i32, i32* %36, align 4
  %tmp0_v1.i13.i = add i32 %55, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i1.pn11, 0
  store i32 %tmp0_v1.i13.i, i32* %36, align 4
  %56 = icmp slt i32 %tmp0_v1.i13.i, 3
  br i1 %56, label %BB_804936B.i, label %BB_8049427.i

BB_8049427.i:                                     ; preds = %BB_804936B.i
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i1.pn11, 0
  %57 = lshr i64 %52, 32
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %15, align 8
  %60 = inttoptr i32 %r_esp.0.in.le to i32*
  store i32 %59, i32* %60, align 4
  %tmp2_v3.i90.i = add i32 %r_esp.0.in.le, -4
  %61 = inttoptr i32 %tmp2_v3.i90.i to i32*
  store i32 134517813, i32* %61, align 4
  %arg.i.i8 = load i32, i32* %60, align 4
  %62 = tail call i32 @fclose(i32 %arg.i.i8)
  %tmp2_v.i21.i = add i32 %r_esp.0.in.le, 4
  %63 = inttoptr i32 %tmp2_v.i21.i to i32*
  store i32 3, i32* %63, align 4
  %spi.bis.625 = ptrtoint[23 x i8]* @str.bis.625 to i32
  store i32 %spi.bis.625, i32* %60, align 4
  store i32 134517833, i32* %61, align 4
  %64 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v19.i.i, i32 inreg noundef %58, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !20
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
!18 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
!19 = !{!"fprintf"}
!20 = !{!"printf"}

  tail call fastcc void @array_of_structs_to_csv630 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack629, i32 0, i32 8092) to i32)) nounwind
