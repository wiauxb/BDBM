; Mutation 434
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack433 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.431 = constant [4 x i8] c"%d \00"

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

; Function Attrs: norecurse nounwind
define internal fastcc void @swap_rows434(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
Func_8049216.exit.i:
  %tmp2_v.i58.i = add i32 %arg_esp, 4
  %tmp0_v.i59.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i61.i = add i32 %tmp0_v.i59.i, -4
  %2 = inttoptr i32 %tmp2_v3.i61.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i62.i = add i32 %tmp0_v.i59.i, -8
  %3 = inttoptr i32 %tmp2_v4.i62.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i59.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i59.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i59.i, -20
  %6 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 0, i32* %6, align 4
  %tmp2_v8.i67.i = add i32 %tmp0_v.i59.i, -24
  %7 = inttoptr i32 %tmp2_v8.i67.i to i32*
  store i32 %tmp2_v.i58.i, i32* %7, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i59.i, -132
  %8 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517235, i32* %8, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %9 = inttoptr i32 %arg_esp to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i59.i, -36
  %11 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i59.i, -116
  %12 = load i32, i32* inttoptr (i32 134520896 to i32*), align 64
  %13 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %12, i32* %13, align 4
  %tmp0_v1.i25.i = load i32, i32* @df, align 4
  %tmp0_v2.i26.i = shl i32 %tmp0_v1.i25.i, 2
  %tmp4_v.i27.i = add i32 %tmp0_v2.i26.i, 134520896
  %tmp4_v3.i.i = add i32 %tmp0_v2.i26.i, %tmp2_v3.i.i
  %14 = inttoptr i32 %tmp4_v.i27.i to i32*
  %15 = load i32, i32* %14, align 4
  %16 = inttoptr i32 %tmp4_v3.i.i to i32*
  store i32 %15, i32* %16, align 4
  %tmp0_v1.i25.i.1 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.1 = shl i32 %tmp0_v1.i25.i.1, 2
  %tmp4_v.i27.i.1 = add i32 %tmp0_v2.i26.i.1, %tmp4_v.i27.i
  %tmp4_v3.i.i.1 = add i32 %tmp0_v2.i26.i.1, %tmp4_v3.i.i
  %17 = inttoptr i32 %tmp4_v.i27.i.1 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = inttoptr i32 %tmp4_v3.i.i.1 to i32*
  store i32 %18, i32* %19, align 4
  %tmp0_v1.i25.i.2 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.2 = shl i32 %tmp0_v1.i25.i.2, 2
  %tmp4_v.i27.i.2 = add i32 %tmp0_v2.i26.i.2, %tmp4_v.i27.i.1
  %tmp4_v3.i.i.2 = add i32 %tmp0_v2.i26.i.2, %tmp4_v3.i.i.1
  %20 = inttoptr i32 %tmp4_v.i27.i.2 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = inttoptr i32 %tmp4_v3.i.i.2 to i32*
  store i32 %21, i32* %22, align 4
  %tmp0_v1.i25.i.3 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.3 = shl i32 %tmp0_v1.i25.i.3, 2
  %tmp4_v.i27.i.3 = add i32 %tmp0_v2.i26.i.3, %tmp4_v.i27.i.2
  %tmp4_v3.i.i.3 = add i32 %tmp0_v2.i26.i.3, %tmp4_v3.i.i.2
  %23 = inttoptr i32 %tmp4_v.i27.i.3 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = inttoptr i32 %tmp4_v3.i.i.3 to i32*
  store i32 %24, i32* %25, align 4
  %tmp0_v1.i25.i.4 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.4 = shl i32 %tmp0_v1.i25.i.4, 2
  %tmp4_v.i27.i.4 = add i32 %tmp0_v2.i26.i.4, %tmp4_v.i27.i.3
  %tmp4_v3.i.i.4 = add i32 %tmp0_v2.i26.i.4, %tmp4_v3.i.i.3
  %26 = inttoptr i32 %tmp4_v.i27.i.4 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = inttoptr i32 %tmp4_v3.i.i.4 to i32*
  store i32 %27, i32* %28, align 4
  %tmp0_v1.i25.i.5 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.5 = shl i32 %tmp0_v1.i25.i.5, 2
  %tmp4_v.i27.i.5 = add i32 %tmp0_v2.i26.i.5, %tmp4_v.i27.i.4
  %tmp4_v3.i.i.5 = add i32 %tmp0_v2.i26.i.5, %tmp4_v3.i.i.4
  %29 = inttoptr i32 %tmp4_v.i27.i.5 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = inttoptr i32 %tmp4_v3.i.i.5 to i32*
  store i32 %30, i32* %31, align 4
  %tmp0_v1.i25.i.6 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.6 = shl i32 %tmp0_v1.i25.i.6, 2
  %tmp4_v.i27.i.6 = add i32 %tmp0_v2.i26.i.6, %tmp4_v.i27.i.5
  %tmp4_v3.i.i.6 = add i32 %tmp0_v2.i26.i.6, %tmp4_v3.i.i.5
  %32 = inttoptr i32 %tmp4_v.i27.i.6 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = inttoptr i32 %tmp4_v3.i.i.6 to i32*
  store i32 %33, i32* %34, align 4
  %tmp0_v1.i25.i.7 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.7 = shl i32 %tmp0_v1.i25.i.7, 2
  %tmp4_v.i27.i.7 = add i32 %tmp0_v2.i26.i.7, %tmp4_v.i27.i.6
  %tmp4_v3.i.i.7 = add i32 %tmp0_v2.i26.i.7, %tmp4_v3.i.i.6
  %35 = inttoptr i32 %tmp4_v.i27.i.7 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = inttoptr i32 %tmp4_v3.i.i.7 to i32*
  store i32 %36, i32* %37, align 4
  %tmp0_v1.i25.i.8 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.8 = shl i32 %tmp0_v1.i25.i.8, 2
  %tmp4_v.i27.i.8 = add i32 %tmp0_v2.i26.i.8, %tmp4_v.i27.i.7
  %tmp4_v3.i.i.8 = add i32 %tmp0_v2.i26.i.8, %tmp4_v3.i.i.7
  %38 = inttoptr i32 %tmp4_v.i27.i.8 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = inttoptr i32 %tmp4_v3.i.i.8 to i32*
  store i32 %39, i32* %40, align 4
  %tmp0_v1.i25.i.9 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.9 = shl i32 %tmp0_v1.i25.i.9, 2
  %tmp4_v.i27.i.9 = add i32 %tmp0_v2.i26.i.9, %tmp4_v.i27.i.8
  %tmp4_v3.i.i.9 = add i32 %tmp0_v2.i26.i.9, %tmp4_v3.i.i.8
  %41 = inttoptr i32 %tmp4_v.i27.i.9 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = inttoptr i32 %tmp4_v3.i.i.9 to i32*
  store i32 %42, i32* %43, align 4
  %tmp0_v1.i25.i.10 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.10 = shl i32 %tmp0_v1.i25.i.10, 2
  %tmp4_v.i27.i.10 = add i32 %tmp0_v2.i26.i.10, %tmp4_v.i27.i.9
  %tmp4_v3.i.i.10 = add i32 %tmp0_v2.i26.i.10, %tmp4_v3.i.i.9
  %44 = inttoptr i32 %tmp4_v.i27.i.10 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = inttoptr i32 %tmp4_v3.i.i.10 to i32*
  store i32 %45, i32* %46, align 4
  %tmp0_v1.i25.i.11 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.11 = shl i32 %tmp0_v1.i25.i.11, 2
  %tmp4_v.i27.i.11 = add i32 %tmp0_v2.i26.i.11, %tmp4_v.i27.i.10
  %tmp4_v3.i.i.11 = add i32 %tmp0_v2.i26.i.11, %tmp4_v3.i.i.10
  %47 = inttoptr i32 %tmp4_v.i27.i.11 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = inttoptr i32 %tmp4_v3.i.i.11 to i32*
  store i32 %48, i32* %49, align 4
  %tmp0_v1.i25.i.12 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.12 = shl i32 %tmp0_v1.i25.i.12, 2
  %tmp4_v.i27.i.12 = add i32 %tmp0_v2.i26.i.12, %tmp4_v.i27.i.11
  %tmp4_v3.i.i.12 = add i32 %tmp0_v2.i26.i.12, %tmp4_v3.i.i.11
  %50 = inttoptr i32 %tmp4_v.i27.i.12 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = inttoptr i32 %tmp4_v3.i.i.12 to i32*
  store i32 %51, i32* %52, align 4
  %tmp0_v1.i25.i.13 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.13 = shl i32 %tmp0_v1.i25.i.13, 2
  %tmp4_v.i27.i.13 = add i32 %tmp0_v2.i26.i.13, %tmp4_v.i27.i.12
  %tmp4_v3.i.i.13 = add i32 %tmp0_v2.i26.i.13, %tmp4_v3.i.i.12
  %53 = inttoptr i32 %tmp4_v.i27.i.13 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = inttoptr i32 %tmp4_v3.i.i.13 to i32*
  store i32 %54, i32* %55, align 4
  %tmp0_v1.i25.i.14 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.14 = shl i32 %tmp0_v1.i25.i.14, 2
  %tmp4_v.i27.i.14 = add i32 %tmp0_v2.i26.i.14, %tmp4_v.i27.i.13
  %tmp4_v3.i.i.14 = add i32 %tmp0_v2.i26.i.14, %tmp4_v3.i.i.13
  %56 = inttoptr i32 %tmp4_v.i27.i.14 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = inttoptr i32 %tmp4_v3.i.i.14 to i32*
  store i32 %57, i32* %58, align 4
  %tmp0_v1.i25.i.15 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.15 = shl i32 %tmp0_v1.i25.i.15, 2
  %tmp4_v.i27.i.15 = add i32 %tmp0_v2.i26.i.15, %tmp4_v.i27.i.14
  %tmp4_v3.i.i.15 = add i32 %tmp0_v2.i26.i.15, %tmp4_v3.i.i.14
  %59 = inttoptr i32 %tmp4_v.i27.i.15 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = inttoptr i32 %tmp4_v3.i.i.15 to i32*
  store i32 %60, i32* %61, align 4
  %tmp0_v1.i25.i.16 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.16 = shl i32 %tmp0_v1.i25.i.16, 2
  %tmp4_v.i27.i.16 = add i32 %tmp0_v2.i26.i.16, %tmp4_v.i27.i.15
  %tmp4_v3.i.i.16 = add i32 %tmp0_v2.i26.i.16, %tmp4_v3.i.i.15
  %62 = inttoptr i32 %tmp4_v.i27.i.16 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = inttoptr i32 %tmp4_v3.i.i.16 to i32*
  store i32 %63, i32* %64, align 4
  %tmp0_v1.i25.i.17 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.17 = shl i32 %tmp0_v1.i25.i.17, 2
  %tmp4_v.i27.i.17 = add i32 %tmp0_v2.i26.i.17, %tmp4_v.i27.i.16
  %tmp4_v3.i.i.17 = add i32 %tmp0_v2.i26.i.17, %tmp4_v3.i.i.16
  %65 = inttoptr i32 %tmp4_v.i27.i.17 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = inttoptr i32 %tmp4_v3.i.i.17 to i32*
  store i32 %66, i32* %67, align 4
  %tmp0_v1.i25.i.18 = load i32, i32* @df, align 4
  %tmp0_v2.i26.i.18 = shl i32 %tmp0_v1.i25.i.18, 2
  %tmp4_v.i27.i.18 = add i32 %tmp0_v2.i26.i.18, %tmp4_v.i27.i.17
  %tmp4_v3.i.i.18 = add i32 %tmp0_v2.i26.i.18, %tmp4_v3.i.i.17
  %68 = inttoptr i32 %tmp4_v.i27.i.18 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = inttoptr i32 %tmp4_v3.i.i.18 to i32*
  store i32 %69, i32* %70, align 4
  %tmp2_v.i31.i = add i32 %tmp0_v.i59.i, -136
  %71 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 3, i32* %71, align 8
  %tmp2_v1.i.i = add i32 %tmp0_v.i59.i, -140
  %72 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1, i32* %72, align 4
  %tmp2_v3.i34.i = add i32 %tmp0_v.i59.i, -144
  %73 = inttoptr i32 %tmp2_v3.i34.i to i32*
  store i32 %tmp2_v3.i.i, i32* %73, align 16
  %tmp2_v4.i35.i = add i32 %tmp0_v.i59.i, -148
  %74 = inttoptr i32 %tmp2_v4.i35.i to i32*
  store i32 134517288, i32* %74, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i59.i, -152
  %75 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %tmp2_v4.i62.i, i32* %75, align 8
  %tmp2_v1.i6.i.i = add i32 %tmp0_v.i59.i, -172
  %76 = inttoptr i32 %tmp2_v1.i6.i.i to i32*
  store i32 134517429, i32* %76, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i59.i, -156
  %77 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %77, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i59.i, -160
  %78 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %78, align 16
  br label %BB_80492CA.i.i

BB_8049234.i:                                     ; preds = %BB_804926D.i, %Func_swap_rows.exit
  store i32 0, i32* %99, align 4
  br label %BB_804923D.i

BB_80492CA.i.i:                                   ; preds = %BB_80492CA.i.i, %Func_8049216.exit.i
  %storemerge8.i = phi i32 [ 0, %Func_8049216.exit.i ], [ %tmp0_v48.i.i.i, %BB_80492CA.i.i ]
  %79 = load i32, i32* %72, align 4
  %tmp0_v1.i10.i.i = shl i32 %79, 4
  %80 = load i32, i32* %73, align 16
  %tmp4_v.i11.i.i = shl i32 %storemerge8.i, 2
  %tmp0_v4.i.i.i = add i32 %80, %tmp4_v.i11.i.i
  %tmp2_v7.i.i.i = add i32 %tmp0_v4.i.i.i, %tmp0_v1.i10.i.i
  %81 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %77, align 4
  %83 = load i32, i32* %71, align 8
  %tmp0_v13.i.i.i = shl i32 %83, 4
  %84 = load i32, i32* %73, align 16
  %85 = load i32, i32* %72, align 4
  %tmp0_v20.i.i.i = shl i32 %85, 4
  %86 = load i32, i32* %78, align 16
  %tmp4_v26.i.i.i = shl i32 %86, 2
  %tmp0_v16.i.i.i = add i32 %tmp4_v26.i.i.i, %84
  %tmp2_v27.i.i.i = add i32 %tmp0_v16.i.i.i, %tmp0_v13.i.i.i
  %87 = inttoptr i32 %tmp2_v27.i.i.i to i32*
  %88 = load i32, i32* %87, align 4
  %tmp2_v32.i.i.i = add i32 %tmp0_v16.i.i.i, %tmp0_v20.i.i.i
  %89 = inttoptr i32 %tmp2_v32.i.i.i to i32*
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %71, align 8
  %tmp0_v36.i.i.i = shl i32 %90, 4
  %91 = load i32, i32* %73, align 16
  %tmp2_v39.i.i.i = add i32 %tmp0_v36.i.i.i, %91
  %92 = load i32, i32* %78, align 16
  %93 = load i32, i32* %77, align 4
  %tmp4_v44.i.i.i = shl i32 %92, 2
  %tmp2_v45.i.i.i = add i32 %tmp4_v44.i.i.i, %tmp2_v39.i.i.i
  %94 = inttoptr i32 %tmp2_v45.i.i.i to i32*
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %78, align 16
  %tmp0_v48.i.i.i = add i32 %95, 1
  store i32 %tmp0_v48.i.i.i, i32* %78, align 16
  %96 = icmp slt i32 %tmp0_v48.i.i.i, 4
  br i1 %96, label %BB_80492CA.i.i, label %Func_swap_rows.exit

Func_swap_rows.exit:                              ; preds = %BB_80492CA.i.i
  %97 = load i32, i32* %75, align 8
  %tmp2_v.i14.i = add i32 %97, -116
  %98 = inttoptr i32 %tmp2_v.i14.i to i32*
  %tmp2_v.i16.i = add i32 %97, -112
  %99 = inttoptr i32 %tmp2_v.i16.i to i32*
  %tmp2_v4.i76.i = add i32 %97, -108
  store i32 0, i32* %98, align 4
  br label %BB_8049234.i

BB_804926D.i:                                     ; preds = %BB_804923D.i
  store i32 10, i32* %73, align 16
  store i32 134517367, i32* %74, align 4
  %arg.i.i = load i32, i32* %73, align 16
  %100 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %101 = load i32, i32* %98, align 4
  %tmp0_v2.i52.i = add i32 %101, 1
  store i32 %tmp0_v2.i52.i, i32* %98, align 4
  %102 = icmp slt i32 %tmp0_v2.i52.i, 5
  br i1 %102, label %BB_8049234.i, label %.exit

BB_804923D.i:                                     ; preds = %BB_804923D.i, %BB_8049234.i
  %storemerge114 = phi i32 [ 0, %BB_8049234.i ], [ %tmp0_v2.i.i, %BB_804923D.i ]
  %103 = load i32, i32* %98, align 4
  %tmp4_v.i72.i = shl i32 %103, 2
  %tmp0_v3.i75.i = add i32 %tmp4_v.i72.i, %storemerge114
  %tmp4_v5.i77.i = shl i32 %tmp0_v3.i75.i, 2
  %tmp2_v6.i78.i = add i32 %tmp2_v4.i76.i, %tmp4_v5.i77.i
  %104 = inttoptr i32 %tmp2_v6.i78.i to i32*
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %72, align 4
  %spi.bis.431 = ptrtoint[4 x i8]* @str.431 to i32
  store i32 %spi.bis.431, i32* %73, align 16
  store i32 134517344, i32* %74, align 4
  %106 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v39.i.i.i, i32 inreg noundef %tmp4_v.i72.i, i32 noundef %tmp2_v3.i34.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %107 = load i32, i32* %99, align 4
  %tmp0_v2.i.i = add i32 %107, 1
  store i32 %tmp0_v2.i.i, i32* %99, align 4
  %108 = icmp slt i32 %tmp0_v2.i.i, 4
  br i1 %108, label %BB_804923D.i, label %BB_804926D.i

.exit:                                            ; preds = %BB_804926D.i
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

  tail call fastcc void @swap_rows434 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack433, i32 0, i32 8092) to i32)) nounwind
