; Mutation 748
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack747 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.741 = constant [15 x i8] c"p%d = (%d,%d)\0a\00"
@str.742 = constant [4 x i8] c"%d \00"
@str.743 = constant [9 x i8] c"Grades: \00"
@str.744 = constant [9 x i8] c"Age: %d\0a\00"
@str.745 = constant [8 x i8] c"ID: %s\0a\00"
@str.746 = constant [10 x i8] c"Name: %s\0a\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
._crit_edge:
  %1 = load i32, i32* @fpstt, align 16
  %.pre = and i64 %0, 4503599627370495
  %.pre1 = and i64 %0, 9218868437227405312
  %phi.cmp = icmp ne i64 %.pre1, 9218868437227405312
  %phi.cmp3 = icmp eq i64 %.pre, 0
  %2 = or i1 %phi.cmp, %phi.cmp3
  br i1 %2, label %float64_to_floatx80.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.exit

float64_to_floatx80.exit:                         ; preds = %.sink.split.i, %3, %._crit_edge
  %11 = add i32 %1, 7
  %12 = and i32 %11, 7
  store i32 %12, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
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
  %10 = load double, double* %5, align 8, !tbaa !6
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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @struct748(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_804928A.exit.i:
  %tmp2_v.i165.i = add i32 %arg_esp, 4
  %tmp0_v.i166.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i168.i = add i32 %tmp0_v.i166.i, -4
  %2 = inttoptr i32 %tmp2_v3.i168.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i169.i = add i32 %tmp0_v.i166.i, -8
  %3 = inttoptr i32 %tmp2_v4.i169.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i171.i = add i32 %tmp0_v.i166.i, -12
  %4 = inttoptr i32 %tmp2_v5.i171.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i173.i = add i32 %tmp0_v.i166.i, -16
  %5 = inttoptr i32 %tmp2_v6.i173.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i175.i = add i32 %tmp0_v.i166.i, -20
  %6 = inttoptr i32 %tmp2_v7.i175.i to i32*
  store i32 0, i32* %6, align 4
  %tmp2_v8.i177.i = add i32 %tmp0_v.i166.i, -24
  %7 = inttoptr i32 %tmp2_v8.i177.i to i32*
  store i32 %tmp2_v.i165.i, i32* %7, align 8
  %tmp2_v10.i179.i = add i32 %tmp0_v.i166.i, -244
  %8 = inttoptr i32 %tmp2_v10.i179.i to i32*
  store i32 134517270, i32* %8, align 4
  %tmp4_v.i94.i.b = load i1, i1* @segs.0, align 1
  %9 = inttoptr i32 %arg_esp to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v2.i98.i = add i32 %tmp0_v.i166.i, -36
  %11 = inttoptr i32 %tmp2_v2.i98.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v3.i99.i = add i32 %tmp0_v.i166.i, -120
  %12 = inttoptr i32 %tmp2_v3.i99.i to i32*
  store i32 1769366859, i32* %12, align 8
  %tmp2_v4.i100.i = add i32 %tmp0_v.i166.i, -116
  %13 = inttoptr i32 %tmp2_v4.i100.i to i16*
  store i16 110, i16* %13, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i166.i, -70
  %14 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 825241648, i32* %14, align 4
  %tmp2_v6.i101.i = add i32 %tmp0_v.i166.i, -66
  %15 = inttoptr i32 %tmp2_v6.i101.i to i32*
  store i32 842085170, i32* %15, align 4
  %tmp2_v7.i102.i = add i32 %tmp0_v.i166.i, -62
  %16 = inttoptr i32 %tmp2_v7.i102.i to i16*
  store i16 51, i16* %16, align 2
  %tmp2_v8.i103.i = add i32 %tmp0_v.i166.i, -60
  %17 = inttoptr i32 %tmp2_v8.i103.i to i32*
  store i32 40, i32* %17, align 4
  %tmp2_v9.i104.i = add i32 %tmp0_v.i166.i, -56
  %18 = inttoptr i32 %tmp2_v9.i104.i to i32*
  store i32 1, i32* %18, align 8
  %tmp2_v10.i105.i = add i32 %tmp0_v.i166.i, -52
  %19 = inttoptr i32 %tmp2_v10.i105.i to i32*
  store i32 2, i32* %19, align 4
  %tmp2_v11.i106.i = add i32 %tmp0_v.i166.i, -48
  %20 = inttoptr i32 %tmp2_v11.i106.i to i32*
  store i32 3, i32* %20, align 16
  %tmp2_v12.i107.i = add i32 %tmp0_v.i166.i, -44
  %21 = inttoptr i32 %tmp2_v12.i107.i to i32*
  store i32 4, i32* %21, align 4
  %tmp2_v13.i108.i = add i32 %tmp0_v.i166.i, -40
  %22 = inttoptr i32 %tmp2_v13.i108.i to i32*
  store i32 5, i32* %22, align 8
  %tmp0_v15.i.i = add i32 %tmp0_v.i166.i, -336
  %23 = load i32, i32* %12, align 8
  %24 = inttoptr i32 %tmp0_v15.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp0_v1.i5.i = load i32, i32* @df, align 4
  %tmp0_v2.i6.i = shl i32 %tmp0_v1.i5.i, 2
  %tmp4_v.i.i = add i32 %tmp0_v2.i6.i, %tmp2_v3.i99.i
  %tmp4_v3.i.i = add i32 %tmp0_v2.i6.i, %tmp0_v15.i.i
  %25 = inttoptr i32 %tmp4_v.i.i to i32*
  %26 = load i32, i32* %25, align 4
  %27 = inttoptr i32 %tmp4_v3.i.i to i32*
  store i32 %26, i32* %27, align 4
  %tmp0_v1.i5.i.1 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.1 = shl i32 %tmp0_v1.i5.i.1, 2
  %tmp4_v.i.i.1 = add i32 %tmp0_v2.i6.i.1, %tmp4_v.i.i
  %tmp4_v3.i.i.1 = add i32 %tmp0_v2.i6.i.1, %tmp4_v3.i.i
  %28 = inttoptr i32 %tmp4_v.i.i.1 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = inttoptr i32 %tmp4_v3.i.i.1 to i32*
  store i32 %29, i32* %30, align 4
  %tmp0_v1.i5.i.2 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.2 = shl i32 %tmp0_v1.i5.i.2, 2
  %tmp4_v.i.i.2 = add i32 %tmp0_v2.i6.i.2, %tmp4_v.i.i.1
  %tmp4_v3.i.i.2 = add i32 %tmp0_v2.i6.i.2, %tmp4_v3.i.i.1
  %31 = inttoptr i32 %tmp4_v.i.i.2 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = inttoptr i32 %tmp4_v3.i.i.2 to i32*
  store i32 %32, i32* %33, align 4
  %tmp0_v1.i5.i.3 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.3 = shl i32 %tmp0_v1.i5.i.3, 2
  %tmp4_v.i.i.3 = add i32 %tmp0_v2.i6.i.3, %tmp4_v.i.i.2
  %tmp4_v3.i.i.3 = add i32 %tmp0_v2.i6.i.3, %tmp4_v3.i.i.2
  %34 = inttoptr i32 %tmp4_v.i.i.3 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = inttoptr i32 %tmp4_v3.i.i.3 to i32*
  store i32 %35, i32* %36, align 4
  %tmp0_v1.i5.i.4 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.4 = shl i32 %tmp0_v1.i5.i.4, 2
  %tmp4_v.i.i.4 = add i32 %tmp0_v2.i6.i.4, %tmp4_v.i.i.3
  %tmp4_v3.i.i.4 = add i32 %tmp0_v2.i6.i.4, %tmp4_v3.i.i.3
  %37 = inttoptr i32 %tmp4_v.i.i.4 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = inttoptr i32 %tmp4_v3.i.i.4 to i32*
  store i32 %38, i32* %39, align 4
  %tmp0_v1.i5.i.5 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.5 = shl i32 %tmp0_v1.i5.i.5, 2
  %tmp4_v.i.i.5 = add i32 %tmp0_v2.i6.i.5, %tmp4_v.i.i.4
  %tmp4_v3.i.i.5 = add i32 %tmp0_v2.i6.i.5, %tmp4_v3.i.i.4
  %40 = inttoptr i32 %tmp4_v.i.i.5 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = inttoptr i32 %tmp4_v3.i.i.5 to i32*
  store i32 %41, i32* %42, align 4
  %tmp0_v1.i5.i.6 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.6 = shl i32 %tmp0_v1.i5.i.6, 2
  %tmp4_v.i.i.6 = add i32 %tmp0_v2.i6.i.6, %tmp4_v.i.i.5
  %tmp4_v3.i.i.6 = add i32 %tmp0_v2.i6.i.6, %tmp4_v3.i.i.5
  %43 = inttoptr i32 %tmp4_v.i.i.6 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = inttoptr i32 %tmp4_v3.i.i.6 to i32*
  store i32 %44, i32* %45, align 4
  %tmp0_v1.i5.i.7 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.7 = shl i32 %tmp0_v1.i5.i.7, 2
  %tmp4_v.i.i.7 = add i32 %tmp0_v2.i6.i.7, %tmp4_v.i.i.6
  %tmp4_v3.i.i.7 = add i32 %tmp0_v2.i6.i.7, %tmp4_v3.i.i.6
  %46 = inttoptr i32 %tmp4_v.i.i.7 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = inttoptr i32 %tmp4_v3.i.i.7 to i32*
  store i32 %47, i32* %48, align 4
  %tmp0_v1.i5.i.8 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.8 = shl i32 %tmp0_v1.i5.i.8, 2
  %tmp4_v.i.i.8 = add i32 %tmp0_v2.i6.i.8, %tmp4_v.i.i.7
  %tmp4_v3.i.i.8 = add i32 %tmp0_v2.i6.i.8, %tmp4_v3.i.i.7
  %49 = inttoptr i32 %tmp4_v.i.i.8 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = inttoptr i32 %tmp4_v3.i.i.8 to i32*
  store i32 %50, i32* %51, align 4
  %tmp0_v1.i5.i.9 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.9 = shl i32 %tmp0_v1.i5.i.9, 2
  %tmp4_v.i.i.9 = add i32 %tmp0_v2.i6.i.9, %tmp4_v.i.i.8
  %tmp4_v3.i.i.9 = add i32 %tmp0_v2.i6.i.9, %tmp4_v3.i.i.8
  %52 = inttoptr i32 %tmp4_v.i.i.9 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = inttoptr i32 %tmp4_v3.i.i.9 to i32*
  store i32 %53, i32* %54, align 4
  %tmp0_v1.i5.i.10 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.10 = shl i32 %tmp0_v1.i5.i.10, 2
  %tmp4_v.i.i.10 = add i32 %tmp0_v2.i6.i.10, %tmp4_v.i.i.9
  %tmp4_v3.i.i.10 = add i32 %tmp0_v2.i6.i.10, %tmp4_v3.i.i.9
  %55 = inttoptr i32 %tmp4_v.i.i.10 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = inttoptr i32 %tmp4_v3.i.i.10 to i32*
  store i32 %56, i32* %57, align 4
  %tmp0_v1.i5.i.11 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.11 = shl i32 %tmp0_v1.i5.i.11, 2
  %tmp4_v.i.i.11 = add i32 %tmp0_v2.i6.i.11, %tmp4_v.i.i.10
  %tmp4_v3.i.i.11 = add i32 %tmp0_v2.i6.i.11, %tmp4_v3.i.i.10
  %58 = inttoptr i32 %tmp4_v.i.i.11 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = inttoptr i32 %tmp4_v3.i.i.11 to i32*
  store i32 %59, i32* %60, align 4
  %tmp0_v1.i5.i.12 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.12 = shl i32 %tmp0_v1.i5.i.12, 2
  %tmp4_v.i.i.12 = add i32 %tmp0_v2.i6.i.12, %tmp4_v.i.i.11
  %tmp4_v3.i.i.12 = add i32 %tmp0_v2.i6.i.12, %tmp4_v3.i.i.11
  %61 = inttoptr i32 %tmp4_v.i.i.12 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = inttoptr i32 %tmp4_v3.i.i.12 to i32*
  store i32 %62, i32* %63, align 4
  %tmp0_v1.i5.i.13 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.13 = shl i32 %tmp0_v1.i5.i.13, 2
  %tmp4_v.i.i.13 = add i32 %tmp0_v2.i6.i.13, %tmp4_v.i.i.12
  %tmp4_v3.i.i.13 = add i32 %tmp0_v2.i6.i.13, %tmp4_v3.i.i.12
  %64 = inttoptr i32 %tmp4_v.i.i.13 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = inttoptr i32 %tmp4_v3.i.i.13 to i32*
  store i32 %65, i32* %66, align 4
  %tmp0_v1.i5.i.14 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.14 = shl i32 %tmp0_v1.i5.i.14, 2
  %tmp4_v.i.i.14 = add i32 %tmp0_v2.i6.i.14, %tmp4_v.i.i.13
  %tmp4_v3.i.i.14 = add i32 %tmp0_v2.i6.i.14, %tmp4_v3.i.i.13
  %67 = inttoptr i32 %tmp4_v.i.i.14 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = inttoptr i32 %tmp4_v3.i.i.14 to i32*
  store i32 %68, i32* %69, align 4
  %tmp0_v1.i5.i.15 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.15 = shl i32 %tmp0_v1.i5.i.15, 2
  %tmp4_v.i.i.15 = add i32 %tmp0_v2.i6.i.15, %tmp4_v.i.i.14
  %tmp4_v3.i.i.15 = add i32 %tmp0_v2.i6.i.15, %tmp4_v3.i.i.14
  %70 = inttoptr i32 %tmp4_v.i.i.15 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = inttoptr i32 %tmp4_v3.i.i.15 to i32*
  store i32 %71, i32* %72, align 4
  %tmp0_v1.i5.i.16 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.16 = shl i32 %tmp0_v1.i5.i.16, 2
  %tmp4_v.i.i.16 = add i32 %tmp0_v2.i6.i.16, %tmp4_v.i.i.15
  %tmp4_v3.i.i.16 = add i32 %tmp0_v2.i6.i.16, %tmp4_v3.i.i.15
  %73 = inttoptr i32 %tmp4_v.i.i.16 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = inttoptr i32 %tmp4_v3.i.i.16 to i32*
  store i32 %74, i32* %75, align 4
  %tmp0_v1.i5.i.17 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.17 = shl i32 %tmp0_v1.i5.i.17, 2
  %tmp4_v.i.i.17 = add i32 %tmp0_v2.i6.i.17, %tmp4_v.i.i.16
  %tmp4_v3.i.i.17 = add i32 %tmp0_v2.i6.i.17, %tmp4_v3.i.i.16
  %76 = inttoptr i32 %tmp4_v.i.i.17 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = inttoptr i32 %tmp4_v3.i.i.17 to i32*
  store i32 %77, i32* %78, align 4
  %tmp0_v1.i5.i.18 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.18 = shl i32 %tmp0_v1.i5.i.18, 2
  %tmp4_v.i.i.18 = add i32 %tmp0_v2.i6.i.18, %tmp4_v.i.i.17
  %tmp4_v3.i.i.18 = add i32 %tmp0_v2.i6.i.18, %tmp4_v3.i.i.17
  %79 = inttoptr i32 %tmp4_v.i.i.18 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = inttoptr i32 %tmp4_v3.i.i.18 to i32*
  store i32 %80, i32* %81, align 4
  %tmp0_v1.i5.i.19 = load i32, i32* @df, align 4
  %tmp0_v2.i6.i.19 = shl i32 %tmp0_v1.i5.i.19, 2
  %tmp4_v.i.i.19 = add i32 %tmp0_v2.i6.i.19, %tmp4_v.i.i.18
  %tmp4_v3.i.i.19 = add i32 %tmp0_v2.i6.i.19, %tmp4_v3.i.i.18
  %82 = inttoptr i32 %tmp4_v.i.i.19 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = inttoptr i32 %tmp4_v3.i.i.19 to i32*
  store i32 %83, i32* %84, align 4
  %tmp2_v.i24.i = add i32 %tmp0_v.i166.i, -340
  %85 = inttoptr i32 %tmp2_v.i24.i to i32*
  store i32 134517393, i32* %85, align 4
  %tmp2_v.i50.i.i = add i32 %tmp0_v.i166.i, -344
  %86 = inttoptr i32 %tmp2_v.i50.i.i to i32*
  store i32 %tmp2_v4.i169.i, i32* %86, align 8
  %tmp2_v1.i52.i.i = add i32 %tmp0_v.i166.i, -348
  %87 = inttoptr i32 %tmp2_v1.i52.i.i to i32*
  store i32 134529024, i32* %87, align 4
  %tmp2_v2.i55.i.i = add i32 %tmp0_v.i166.i, -372
  %88 = inttoptr i32 %tmp2_v2.i55.i.i to i32*
  store i32 134518204, i32* %88, align 4
  %tmp2_v2.i36.i.i = add i32 %tmp0_v.i166.i, -380
  %89 = inttoptr i32 %tmp2_v2.i36.i.i to i32*
  store i32 %tmp0_v15.i.i, i32* %89, align 4
  %tmp2_v4.i38.i.i = add i32 %tmp0_v.i166.i, -384
  %90 = inttoptr i32 %tmp2_v4.i38.i.i to i32*
  %spi.bis.746 = ptrtoint[10 x i8]* @str.746 to i32
  store i32 %spi.bis.746, i32* %90, align 16
  %tmp2_v5.i39.i.i = add i32 %tmp0_v.i166.i, -388
  %91 = inttoptr i32 %tmp2_v5.i39.i.i to i32*
  store i32 134518229, i32* %91, align 4
  %92 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef 21, i32 noundef %tmp2_v4.i38.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %93 = lshr i64 %92, 32
  %94 = trunc i64 %93 to i32
  %mrv.i2.i = insertvalue { i32, i32 } undef, i32 %tmp2_v4.i38.i.i, 0
  %tmp2_v.i21.i.i = add i32 %tmp0_v.i166.i, -286
  store i32 %tmp2_v.i21.i.i, i32* %89, align 4
  %spi.bis.745 = ptrtoint[8 x i8]* @str.745 to i32
  store i32 %spi.bis.745, i32* %90, align 16
  store i32 134518251, i32* %91, align 4
  %95 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %94, i32 noundef %tmp2_v4.i38.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %96 = lshr i64 %95, 32
  %97 = trunc i64 %96 to i32
  %tmp2_v.i13.i.i = add i32 %tmp0_v.i166.i, -276
  %98 = inttoptr i32 %tmp2_v.i13.i.i to i32*
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %89, align 4
  %spi.bis.744 = ptrtoint[9 x i8]* @str.744 to i32
  store i32 %spi.bis.744, i32* %90, align 16
  store i32 134518273, i32* %91, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %97, i32 noundef %tmp2_v4.i38.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %spi.bis.743 = ptrtoint[9 x i8]* @str.743 to i32
  store i32 %spi.bis.743, i32* %90, align 16
  store i32 134518291, i32* %91, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %102, i32 noundef %tmp2_v4.i38.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %104 = lshr i64 %103, 32
  %105 = trunc i64 %104 to i32
  %tmp2_v.i48.i.i = add i32 %tmp0_v.i166.i, -356
  %106 = inttoptr i32 %tmp2_v.i48.i.i to i32*
  %tmp4_v.i61.i.i = add i32 %tmp0_v.i166.i, -272
  store i32 0, i32* %106, align 4
  br label %BB_804961F.i.i

BB_80494E7.i:                                     ; preds = %BB_80494CF.i, %BB_80494E7.i
  %storemerge244 = phi i32 [ 0, %BB_80494CF.i ], [ %tmp0_v2.i61.i, %BB_80494E7.i ]
  %107 = load i32, i32* %194, align 4
  %tmp0_v3.i.i = shl i32 %storemerge244, 2
  %tmp0_v4.i.i = add i32 %107, %tmp0_v3.i.i
  %108 = inttoptr i32 %tmp0_v4.i.i to i32*
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %220, align 4
  %110 = load i32, i32* %219, align 4
  store i32 %110, i32* %221, align 4
  store i32 %tmp2_v11.i.i, i32* %222, align 4
  store i32 134518032, i32* %223, align 4
  %111 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i22.i.i, i32 inreg noundef %tmp0_v3.i.i, i32 noundef %r_esp.1.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %112 = load i32, i32* %219, align 4
  %tmp0_v2.i61.i = add i32 %112, 1
  store i32 %tmp0_v2.i61.i, i32* %219, align 4
  %113 = icmp slt i32 %tmp0_v2.i61.i, 5
  br i1 %113, label %BB_80494E7.i, label %.exit

BB_804961F.i.i:                                   ; preds = %BB_804961F.i.i, %Func_804928A.exit.i
  %r_esp.0.in12.i = phi i32 [ %tmp2_v4.i38.i.i, %Func_804928A.exit.i ], [ %r_esp.0.in.i, %BB_804961F.i.i ]
  %.pn811.i = phi i32 [ %105, %Func_804928A.exit.i ], [ %121, %BB_804961F.i.i ]
  %mrv.i2.pn10.i = phi { i32, i32 } [ %mrv.i2.i, %Func_804928A.exit.i ], [ %.pn.i, %BB_804961F.i.i ]
  %storemerge9.i = phi i32 [ 0, %Func_804928A.exit.i ], [ %tmp0_v2.i.i.i, %BB_804961F.i.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i2.pn10.i, i32 %.pn811.i, 1
  %tmp0_v1.i59.i.i = shl i32 %storemerge9.i, 2
  %tmp2_v3.i62.i.i = add i32 %tmp4_v.i61.i.i, %tmp0_v1.i59.i.i
  %114 = inttoptr i32 %tmp2_v3.i62.i.i to i32*
  %115 = load i32, i32* %114, align 4
  %tmp2_v6.i65.i.i = add i32 %r_esp.0.in12.i, 4
  %116 = inttoptr i32 %tmp2_v6.i65.i.i to i32*
  store i32 %115, i32* %116, align 4
  %117 = inttoptr i32 %r_esp.0.in12.i to i32*
  %spi.bis.742 = ptrtoint[4 x i8]* @str.742 to i32
  store i32 %spi.bis.742, i32* %117, align 4
  %tmp2_v9.i.i.i = add i32 %r_esp.0.in12.i, -4
  %118 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134518329, i32* %118, align 4
  %119 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %.pn811.i, i32 noundef %r_esp.0.in12.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %120 = lshr i64 %119, 32
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* %106, align 4
  %tmp0_v2.i.i.i = add i32 %122, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i2.pn10.i, 0
  store i32 %tmp0_v2.i.i.i, i32* %106, align 4
  %123 = icmp slt i32 %tmp0_v2.i.i.i, 5
  br i1 %123, label %BB_804961F.i.i, label %Func_print_student.exit

Func_print_student.exit:                          ; preds = %BB_804961F.i.i
  %124 = trunc i64 %120 to i32
  %r_esp.0.in.i.le = extractvalue { i32, i32 } %mrv.i2.pn10.i, 0
  %125 = inttoptr i32 %r_esp.0.in.i.le to i32*
  store i32 10, i32* %125, align 4
  %tmp2_v1.i.i.i = add i32 %r_esp.0.in.i.le, -4
  %126 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134518352, i32* %126, align 4
  %arg.i.i.i = load i32, i32* %125, align 4
  %127 = tail call i32 @putchar(i32 %arg.i.i.i)  nounwind 
  %128 = load i32, i32* %87, align 4
  %129 = load i32, i32* %86, align 8
  %tmp2_v.i46.i = add i32 %129, -208
  %130 = inttoptr i32 %tmp2_v.i46.i to i32*
  store i32 5, i32* %130, align 4
  %tmp2_v1.i47.i = add i32 %129, -204
  %131 = inttoptr i32 %tmp2_v1.i47.i to i32*
  store i32 10, i32* %131, align 4
  %tmp2_v2.i.i = add i32 %129, -200
  %132 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 2, i32* %132, align 4
  %tmp2_v3.i48.i = add i32 %129, -196
  %133 = inttoptr i32 %tmp2_v3.i48.i to i32*
  store i32 8, i32* %133, align 4
  %134 = load i32, i32* %130, align 4
  %tmp2_v7.i52.i = add i32 %tmp0_v.i166.i, -252
  %135 = inttoptr i32 %tmp2_v7.i52.i to i32*
  store i32 %134, i32* %135, align 4
  %tmp2_v8.i54.i = add i32 %128, -8184
  %tmp2_v9.i.i = add i32 %tmp0_v.i166.i, -256
  %136 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v8.i54.i, i32* %136, align 16
  %tmp2_v10.i55.i = add i32 %tmp0_v.i166.i, -260
  %137 = inttoptr i32 %tmp2_v10.i55.i to i32*
  store i32 134517458, i32* %137, align 4
  %138 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %124, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %139 = lshr i64 %138, 32
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* %131, align 4
  store i32 %141, i32* %135, align 4
  %tmp2_v4.i125.i = add i32 %128, -8174
  store i32 %tmp2_v4.i125.i, i32* %136, align 16
  store i32 134517483, i32* %137, align 4
  %142 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %140, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %143 = lshr i64 %142, 32
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* %132, align 4
  store i32 %145, i32* %135, align 4
  %tmp2_v4.i224.i = add i32 %128, -8164
  store i32 %tmp2_v4.i224.i, i32* %136, align 16
  store i32 134517508, i32* %137, align 4
  %146 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %144, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %147 = lshr i64 %146, 32
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* %133, align 4
  store i32 %149, i32* %135, align 4
  %tmp2_v4.i234.i = add i32 %128, -8154
  store i32 %tmp2_v4.i234.i, i32* %136, align 16
  store i32 134517533, i32* %137, align 4
  %150 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %148, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %151 = load i32, i32* %132, align 4
  %152 = load i32, i32* %133, align 4
  store i32 %151, i32* %130, align 4
  store i32 %152, i32* %131, align 4
  %153 = load i32, i32* %130, align 4
  store i32 %153, i32* %135, align 4
  store i32 %tmp2_v8.i54.i, i32* %136, align 16
  store i32 134517582, i32* %137, align 4
  %154 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %152, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %155 = lshr i64 %154, 32
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* %131, align 4
  store i32 %157, i32* %135, align 4
  store i32 %tmp2_v4.i125.i, i32* %136, align 16
  store i32 134517607, i32* %137, align 4
  %158 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %156, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v.i22.i = add i32 %129, -220
  %159 = inttoptr i32 %tmp2_v.i22.i to i32*
  %tmp2_v3.i150.i = add i32 %129, -192
  %tmp2_v9.i158.i = add i32 %129, -188
  store i32 0, i32* %159, align 4
  br label %BB_8049376.i

BB_8049493.i:                                     ; preds = %Func_print_points.exit, %BB_8049493.i
  %r_esp.1.in43 = phi i32 [ %tmp2_v9.i.i, %Func_print_points.exit ], [ %r_esp.1.in, %BB_8049493.i ]
  %.pn3442 = phi i32 [ %193, %Func_print_points.exit ], [ %170, %BB_8049493.i ]
  %mrv.i9.pn41 = phi { i32, i32 } [ %mrv.i9, %Func_print_points.exit ], [ %.pn, %BB_8049493.i ]
  %storemerge140 = phi i32 [ 0, %Func_print_points.exit ], [ %tmp0_v2.i77.i, %BB_8049493.i ]
  %.pn = insertvalue { i32, i32 } %mrv.i9.pn41, i32 %.pn3442, 1
  %160 = load i32, i32* %192, align 4
  %tmp0_v3.i30.i = shl i32 %storemerge140, 2
  %tmp0_v4.i31.i = add i32 %160, %tmp0_v3.i30.i
  %161 = inttoptr i32 %tmp0_v4.i31.i to i32*
  %162 = load i32, i32* %161, align 4
  %tmp2_v7.i35.i = add i32 %r_esp.1.in43, 8
  %163 = inttoptr i32 %tmp2_v7.i35.i to i32*
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %216, align 4
  %tmp2_v10.i38.i = add i32 %r_esp.1.in43, 4
  %165 = inttoptr i32 %tmp2_v10.i38.i to i32*
  store i32 %164, i32* %165, align 4
  %166 = inttoptr i32 %r_esp.1.in43 to i32*
  store i32 %tmp2_v11.i40.i, i32* %166, align 4
  %tmp2_v13.i42.i = add i32 %r_esp.1.in43, -4
  %167 = inttoptr i32 %tmp2_v13.i42.i to i32*
  store i32 134517948, i32* %167, align 4
  %168 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i22.i.i, i32 inreg noundef %tmp0_v3.i30.i, i32 noundef %r_esp.1.in43, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %169 = lshr i64 %168, 32
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* %216, align 4
  %tmp0_v2.i77.i = add i32 %171, 1
  %r_esp.1.in = extractvalue { i32, i32 } %mrv.i9.pn41, 0
  store i32 %tmp0_v2.i77.i, i32* %216, align 4
  %172 = icmp slt i32 %tmp0_v2.i77.i, 5
  br i1 %172, label %BB_8049493.i, label %BB_80494CF.i

BB_80493B3.i:                                     ; preds = %BB_8049376.i
  store i32 %tmp2_v3.i150.i, i32* %136, align 16
  store i32 134517698, i32* %137, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i166.i, -264
  %173 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %129, i32* %173, align 8
  %tmp2_v1.i.i.i17 = add i32 %tmp0_v.i166.i, -268
  %174 = inttoptr i32 %tmp2_v1.i.i.i17 to i32*
  store i32 %128, i32* %174, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i166.i, -292
  %175 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134518101, i32* %175, align 4
  %tmp2_v14.i.i.i = add i32 %tmp0_v.i166.i, -296
  %176 = inttoptr i32 %tmp2_v14.i.i.i to i32*
  %tmp2_v17.i.i.i = add i32 %tmp0_v.i166.i, -300
  %177 = inttoptr i32 %tmp2_v17.i.i.i to i32*
  %tmp2_v19.i.i.i = add i32 %tmp0_v.i166.i, -304
  %178 = inttoptr i32 %tmp2_v19.i.i.i to i32*
  %tmp2_v20.i.i.i = add i32 %tmp0_v.i166.i, -308
  %179 = inttoptr i32 %tmp2_v20.i.i.i to i32*
  store i32 0, i32* %98, align 4
  br label %BB_8049564.i.i

BB_8049564.i.i:                                   ; preds = %BB_8049564.i.i, %BB_80493B3.i
  %storemerge18.i = phi i32 [ 0, %BB_80493B3.i ], [ %tmp0_v2.i.i.i18, %BB_8049564.i.i ]
  %tmp4_v.i22.i.i = shl i32 %storemerge18.i, 3
  %180 = load i32, i32* %136, align 16
  %tmp0_v3.i.i.i = add i32 %180, %tmp4_v.i22.i.i
  %tmp2_v4.i.i.i = add i32 %tmp0_v3.i.i.i, 4
  %181 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  %182 = load i32, i32* %181, align 4
  %183 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %184 = load i32, i32* %183, align 4
  store i32 %182, i32* %175, align 4
  store i32 %184, i32* %176, align 8
  %185 = load i32, i32* %98, align 4
  store i32 %185, i32* %177, align 4
  %spi.bis.741 = ptrtoint[15 x i8]* @str.741 to i32
  store i32 %spi.bis.741, i32* %178, align 16
  store i32 134518168, i32* %179, align 4
  %186 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i22.i.i, i32 inreg noundef %182, i32 noundef %tmp2_v19.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %187 = load i32, i32* %98, align 4
  %tmp0_v2.i.i.i18 = add i32 %187, 1
  store i32 %tmp0_v2.i.i.i18, i32* %98, align 4
  %188 = icmp slt i32 %tmp0_v2.i.i.i18, 10
  br i1 %188, label %BB_8049564.i.i, label %Func_print_points.exit

Func_print_points.exit:                           ; preds = %BB_8049564.i.i
  %mrv.i9 = insertvalue { i32, i32 } undef, i32 %tmp2_v9.i.i, 0
  %189 = load i32, i32* %174, align 4
  %190 = load i32, i32* %173, align 8
  store i32 20, i32* %136, align 16
  store i32 134517711, i32* %137, align 4
  %arg.i.i = load i32, i32* %136, align 16
  %191 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i85.i = add i32 %190, -228
  %192 = inttoptr i32 %tmp2_v.i85.i to i32*
  store i32 %191, i32* %192, align 4
  store i32 20, i32* %136, align 16
  store i32 134517730, i32* %137, align 4
  %arg.i.i25 = load i32, i32* %136, align 16
  %193 = tail call i32 @malloc(i32 %arg.i.i25)
  %tmp2_v.i183.i = add i32 %190, -224
  %194 = inttoptr i32 %tmp2_v.i183.i to i32*
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %192, align 4
  %196 = inttoptr i32 %195 to i32*
  store i32 1, i32* %196, align 4
  %197 = load i32, i32* %192, align 4
  %tmp0_v5.i189.i = add i32 %197, 4
  %198 = inttoptr i32 %tmp0_v5.i189.i to i32*
  store i32 2, i32* %198, align 4
  %199 = load i32, i32* %192, align 4
  %tmp0_v8.i192.i = add i32 %199, 8
  %200 = inttoptr i32 %tmp0_v8.i192.i to i32*
  store i32 3, i32* %200, align 4
  %201 = load i32, i32* %192, align 4
  %tmp0_v11.i.i = add i32 %201, 12
  %202 = inttoptr i32 %tmp0_v11.i.i to i32*
  store i32 4, i32* %202, align 4
  %203 = load i32, i32* %192, align 4
  %tmp0_v14.i196.i = add i32 %203, 16
  %204 = inttoptr i32 %tmp0_v14.i196.i to i32*
  store i32 5, i32* %204, align 4
  %205 = load i32, i32* %194, align 4
  %206 = inttoptr i32 %205 to i32*
  store i32 9, i32* %206, align 4
  %207 = load i32, i32* %194, align 4
  %tmp0_v19.i200.i = add i32 %207, 4
  %208 = inttoptr i32 %tmp0_v19.i200.i to i32*
  store i32 9, i32* %208, align 4
  %209 = load i32, i32* %194, align 4
  %tmp0_v22.i.i = add i32 %209, 8
  %210 = inttoptr i32 %tmp0_v22.i.i to i32*
  store i32 9, i32* %210, align 4
  %211 = load i32, i32* %194, align 4
  %tmp0_v25.i.i = add i32 %211, 12
  %212 = inttoptr i32 %tmp0_v25.i.i to i32*
  store i32 9, i32* %212, align 4
  %213 = load i32, i32* %194, align 4
  %tmp0_v28.i.i = add i32 %213, 16
  %214 = inttoptr i32 %tmp0_v28.i.i to i32*
  store i32 9, i32* %214, align 4
  %215 = load i32, i32* %194, align 4
  store i32 %215, i32* %192, align 4
  %tmp2_v32.i.i = add i32 %190, -216
  %216 = inttoptr i32 %tmp2_v32.i.i to i32*
  %tmp2_v11.i40.i = add i32 %189, -8144
  store i32 0, i32* %216, align 4
  br label %BB_8049493.i

BB_80494CF.i:                                     ; preds = %BB_8049493.i
  %r_esp.1.in.le = extractvalue { i32, i32 } %mrv.i9.pn41, 0
  %217 = load i32, i32* %192, align 4
  %218 = inttoptr i32 %217 to i32*
  store i32 10, i32* %218, align 4
  %tmp2_v1.i144.i = add i32 %190, -212
  %219 = inttoptr i32 %tmp2_v1.i144.i to i32*
  %tmp2_v7.i.i = add i32 %r_esp.1.in.le, 8
  %220 = inttoptr i32 %tmp2_v7.i.i to i32*
  %tmp2_v10.i.i = add i32 %r_esp.1.in.le, 4
  %221 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v11.i.i = add i32 %189, -8126
  %222 = inttoptr i32 %r_esp.1.in.le to i32*
  %tmp2_v13.i.i = add i32 %r_esp.1.in.le, -4
  %223 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 0, i32* %219, align 4
  br label %BB_80494E7.i

BB_8049376.i:                                     ; preds = %BB_8049376.i, %Func_print_student.exit
  %storemerge39 = phi i32 [ 0, %Func_print_student.exit ], [ %tmp0_v14.i161.i, %BB_8049376.i ]
  %tmp4_v.i151.i = shl i32 %storemerge39, 3
  %tmp2_v4.i152.i = add i32 %tmp2_v3.i150.i, %tmp4_v.i151.i
  %224 = inttoptr i32 %tmp2_v4.i152.i to i32*
  store i32 %storemerge39, i32* %224, align 4
  %225 = load i32, i32* %159, align 4
  %tmp0_v6.i155.i = sub i32 10, %225
  %tmp4_v10.i.i = shl i32 %225, 3
  %tmp2_v11.i159.i = add i32 %tmp2_v9.i158.i, %tmp4_v10.i.i
  %226 = inttoptr i32 %tmp2_v11.i159.i to i32*
  store i32 %tmp0_v6.i155.i, i32* %226, align 4
  %227 = load i32, i32* %159, align 4
  %tmp0_v14.i161.i = add i32 %227, 1
  store i32 %tmp0_v14.i161.i, i32* %159, align 4
  %228 = icmp slt i32 %tmp0_v14.i161.i, 10
  br i1 %228, label %BB_8049376.i, label %BB_80493B3.i

.exit:                                            ; preds = %BB_80494E7.i
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
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @struct748 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack747, i32 0, i32 8092) to i32)) nounwind
