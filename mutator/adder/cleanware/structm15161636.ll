; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

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
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 -1
  store i32 %7, i32* @df, align 4, !tbaa !10
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %8 = ptrtoint i8** %2 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !10
  %9 = ptrtoint i8** %1 to i32
  store i32 %9, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !10
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !10
  %10 = tail call i8* @llvm.returnaddress(i32 0)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !10
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @structm15161636(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_804928A.exit.i:
  %tmp2_v.i38.i = add i32 %arg_esp, 4
  %tmp0_v.i39.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i41.i = add i32 %tmp0_v.i39.i, -4
  %2 = inttoptr i32 %tmp2_v3.i41.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i42.i = add i32 %tmp0_v.i39.i, -8
  %3 = inttoptr i32 %tmp2_v4.i42.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i44.i = add i32 %tmp0_v.i39.i, -12
  %4 = inttoptr i32 %tmp2_v5.i44.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i45.i = add i32 %tmp0_v.i39.i, -16
  %5 = inttoptr i32 %tmp2_v6.i45.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i46.i = add i32 %tmp0_v.i39.i, -20
  %6 = inttoptr i32 %tmp2_v7.i46.i to i32*
  store i32 0, i32* %6, align 4
  %tmp2_v8.i48.i = add i32 %tmp0_v.i39.i, -24
  %7 = inttoptr i32 %tmp2_v8.i48.i to i32*
  store i32 %tmp2_v.i38.i, i32* %7, align 8
  %tmp2_v10.i49.i = add i32 %tmp0_v.i39.i, -244
  %8 = inttoptr i32 %tmp2_v10.i49.i to i32*
  store i32 134517270, i32* %8, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %9 = select i1 %tmp4_v.i.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %10 = load i32, i32* %9, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i39.i, -36
  %11 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v3.i9.i = add i32 %tmp0_v.i39.i, -120
  %12 = inttoptr i32 %tmp2_v3.i9.i to i32*
  store i32 1769366859, i32* %12, align 8
  %tmp2_v4.i.i = add i32 %tmp0_v.i39.i, -116
  %13 = inttoptr i32 %tmp2_v4.i.i to i16*
  store i16 110, i16* %13, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i39.i, -70
  %14 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 825241648, i32* %14, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i39.i, -66
  %15 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 842085170, i32* %15, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i39.i, -62
  %16 = inttoptr i32 %tmp2_v7.i.i to i16*
  store i16 51, i16* %16, align 2
  %tmp2_v8.i.i = add i32 %tmp0_v.i39.i, -60
  %17 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 40, i32* %17, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i39.i, -56
  %18 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1, i32* %18, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i39.i, -52
  %19 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %19, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i39.i, -48
  %20 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 3, i32* %20, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i39.i, -44
  %21 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 4, i32* %21, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i39.i, -40
  %22 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 5, i32* %22, align 8
  %tmp0_v15.i.i = add i32 %tmp0_v.i39.i, -336
  %23 = load i32, i32* %12, align 8
  %24 = inttoptr i32 %tmp0_v15.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp0_v1.i118.i = load i32, i32* @df, align 4
  %tmp0_v2.i119.i = shl i32 %tmp0_v1.i118.i, 2
  %tmp4_v.i120.i = add i32 %tmp0_v2.i119.i, %tmp2_v3.i9.i
  %tmp4_v3.i.i = add i32 %tmp0_v2.i119.i, %tmp0_v15.i.i
  %25 = inttoptr i32 %tmp4_v.i120.i to i32*
  %26 = load i32, i32* %25, align 4
  %27 = inttoptr i32 %tmp4_v3.i.i to i32*
  store i32 %26, i32* %27, align 4
  %tmp0_v1.i118.i.1 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.1 = shl i32 %tmp0_v1.i118.i.1, 2
  %tmp4_v.i120.i.1 = add i32 %tmp0_v2.i119.i.1, %tmp4_v.i120.i
  %tmp4_v3.i.i.1 = add i32 %tmp0_v2.i119.i.1, %tmp4_v3.i.i
  %28 = inttoptr i32 %tmp4_v.i120.i.1 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = inttoptr i32 %tmp4_v3.i.i.1 to i32*
  store i32 %29, i32* %30, align 4
  %tmp0_v1.i118.i.2 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.2 = shl i32 %tmp0_v1.i118.i.2, 2
  %tmp4_v.i120.i.2 = add i32 %tmp0_v2.i119.i.2, %tmp4_v.i120.i.1
  %tmp4_v3.i.i.2 = add i32 %tmp0_v2.i119.i.2, %tmp4_v3.i.i.1
  %31 = inttoptr i32 %tmp4_v.i120.i.2 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = inttoptr i32 %tmp4_v3.i.i.2 to i32*
  store i32 %32, i32* %33, align 4
  %tmp0_v1.i118.i.3 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.3 = shl i32 %tmp0_v1.i118.i.3, 2
  %tmp4_v.i120.i.3 = add i32 %tmp0_v2.i119.i.3, %tmp4_v.i120.i.2
  %tmp4_v3.i.i.3 = add i32 %tmp0_v2.i119.i.3, %tmp4_v3.i.i.2
  %34 = inttoptr i32 %tmp4_v.i120.i.3 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = inttoptr i32 %tmp4_v3.i.i.3 to i32*
  store i32 %35, i32* %36, align 4
  %tmp0_v1.i118.i.4 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.4 = shl i32 %tmp0_v1.i118.i.4, 2
  %tmp4_v.i120.i.4 = add i32 %tmp0_v2.i119.i.4, %tmp4_v.i120.i.3
  %tmp4_v3.i.i.4 = add i32 %tmp0_v2.i119.i.4, %tmp4_v3.i.i.3
  %37 = inttoptr i32 %tmp4_v.i120.i.4 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = inttoptr i32 %tmp4_v3.i.i.4 to i32*
  store i32 %38, i32* %39, align 4
  %tmp0_v1.i118.i.5 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.5 = shl i32 %tmp0_v1.i118.i.5, 2
  %tmp4_v.i120.i.5 = add i32 %tmp0_v2.i119.i.5, %tmp4_v.i120.i.4
  %tmp4_v3.i.i.5 = add i32 %tmp0_v2.i119.i.5, %tmp4_v3.i.i.4
  %40 = inttoptr i32 %tmp4_v.i120.i.5 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = inttoptr i32 %tmp4_v3.i.i.5 to i32*
  store i32 %41, i32* %42, align 4
  %tmp0_v1.i118.i.6 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.6 = shl i32 %tmp0_v1.i118.i.6, 2
  %tmp4_v.i120.i.6 = add i32 %tmp0_v2.i119.i.6, %tmp4_v.i120.i.5
  %tmp4_v3.i.i.6 = add i32 %tmp0_v2.i119.i.6, %tmp4_v3.i.i.5
  %43 = inttoptr i32 %tmp4_v.i120.i.6 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = inttoptr i32 %tmp4_v3.i.i.6 to i32*
  store i32 %44, i32* %45, align 4
  %tmp0_v1.i118.i.7 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.7 = shl i32 %tmp0_v1.i118.i.7, 2
  %tmp4_v.i120.i.7 = add i32 %tmp0_v2.i119.i.7, %tmp4_v.i120.i.6
  %tmp4_v3.i.i.7 = add i32 %tmp0_v2.i119.i.7, %tmp4_v3.i.i.6
  %46 = inttoptr i32 %tmp4_v.i120.i.7 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = inttoptr i32 %tmp4_v3.i.i.7 to i32*
  store i32 %47, i32* %48, align 4
  %tmp0_v1.i118.i.8 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.8 = shl i32 %tmp0_v1.i118.i.8, 2
  %tmp4_v.i120.i.8 = add i32 %tmp0_v2.i119.i.8, %tmp4_v.i120.i.7
  %tmp4_v3.i.i.8 = add i32 %tmp0_v2.i119.i.8, %tmp4_v3.i.i.7
  %49 = inttoptr i32 %tmp4_v.i120.i.8 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = inttoptr i32 %tmp4_v3.i.i.8 to i32*
  store i32 %50, i32* %51, align 4
  %tmp0_v1.i118.i.9 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.9 = shl i32 %tmp0_v1.i118.i.9, 2
  %tmp4_v.i120.i.9 = add i32 %tmp0_v2.i119.i.9, %tmp4_v.i120.i.8
  %tmp4_v3.i.i.9 = add i32 %tmp0_v2.i119.i.9, %tmp4_v3.i.i.8
  %52 = inttoptr i32 %tmp4_v.i120.i.9 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = inttoptr i32 %tmp4_v3.i.i.9 to i32*
  store i32 %53, i32* %54, align 4
  %tmp0_v1.i118.i.10 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.10 = shl i32 %tmp0_v1.i118.i.10, 2
  %tmp4_v.i120.i.10 = add i32 %tmp0_v2.i119.i.10, %tmp4_v.i120.i.9
  %tmp4_v3.i.i.10 = add i32 %tmp0_v2.i119.i.10, %tmp4_v3.i.i.9
  %55 = inttoptr i32 %tmp4_v.i120.i.10 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = inttoptr i32 %tmp4_v3.i.i.10 to i32*
  store i32 %56, i32* %57, align 4
  %tmp0_v1.i118.i.11 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.11 = shl i32 %tmp0_v1.i118.i.11, 2
  %tmp4_v.i120.i.11 = add i32 %tmp0_v2.i119.i.11, %tmp4_v.i120.i.10
  %tmp4_v3.i.i.11 = add i32 %tmp0_v2.i119.i.11, %tmp4_v3.i.i.10
  %58 = inttoptr i32 %tmp4_v.i120.i.11 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = inttoptr i32 %tmp4_v3.i.i.11 to i32*
  store i32 %59, i32* %60, align 4
  %tmp0_v1.i118.i.12 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.12 = shl i32 %tmp0_v1.i118.i.12, 2
  %tmp4_v.i120.i.12 = add i32 %tmp0_v2.i119.i.12, %tmp4_v.i120.i.11
  %tmp4_v3.i.i.12 = add i32 %tmp0_v2.i119.i.12, %tmp4_v3.i.i.11
  %61 = inttoptr i32 %tmp4_v.i120.i.12 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = inttoptr i32 %tmp4_v3.i.i.12 to i32*
  store i32 %62, i32* %63, align 4
  %tmp0_v1.i118.i.13 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.13 = shl i32 %tmp0_v1.i118.i.13, 2
  %tmp4_v.i120.i.13 = add i32 %tmp0_v2.i119.i.13, %tmp4_v.i120.i.12
  %tmp4_v3.i.i.13 = add i32 %tmp0_v2.i119.i.13, %tmp4_v3.i.i.12
  %64 = inttoptr i32 %tmp4_v.i120.i.13 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = inttoptr i32 %tmp4_v3.i.i.13 to i32*
  store i32 %65, i32* %66, align 4
  %tmp0_v1.i118.i.14 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.14 = shl i32 %tmp0_v1.i118.i.14, 2
  %tmp4_v.i120.i.14 = add i32 %tmp0_v2.i119.i.14, %tmp4_v.i120.i.13
  %tmp4_v3.i.i.14 = add i32 %tmp0_v2.i119.i.14, %tmp4_v3.i.i.13
  %67 = inttoptr i32 %tmp4_v.i120.i.14 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = inttoptr i32 %tmp4_v3.i.i.14 to i32*
  store i32 %68, i32* %69, align 4
  %tmp0_v1.i118.i.15 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.15 = shl i32 %tmp0_v1.i118.i.15, 2
  %tmp4_v.i120.i.15 = add i32 %tmp0_v2.i119.i.15, %tmp4_v.i120.i.14
  %tmp4_v3.i.i.15 = add i32 %tmp0_v2.i119.i.15, %tmp4_v3.i.i.14
  %70 = inttoptr i32 %tmp4_v.i120.i.15 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = inttoptr i32 %tmp4_v3.i.i.15 to i32*
  store i32 %71, i32* %72, align 4
  %tmp0_v1.i118.i.16 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.16 = shl i32 %tmp0_v1.i118.i.16, 2
  %tmp4_v.i120.i.16 = add i32 %tmp0_v2.i119.i.16, %tmp4_v.i120.i.15
  %tmp4_v3.i.i.16 = add i32 %tmp0_v2.i119.i.16, %tmp4_v3.i.i.15
  %73 = inttoptr i32 %tmp4_v.i120.i.16 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = inttoptr i32 %tmp4_v3.i.i.16 to i32*
  store i32 %74, i32* %75, align 4
  %tmp0_v1.i118.i.17 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.17 = shl i32 %tmp0_v1.i118.i.17, 2
  %tmp4_v.i120.i.17 = add i32 %tmp0_v2.i119.i.17, %tmp4_v.i120.i.16
  %tmp4_v3.i.i.17 = add i32 %tmp0_v2.i119.i.17, %tmp4_v3.i.i.16
  %76 = inttoptr i32 %tmp4_v.i120.i.17 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = inttoptr i32 %tmp4_v3.i.i.17 to i32*
  store i32 %77, i32* %78, align 4
  %tmp0_v1.i118.i.18 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.18 = shl i32 %tmp0_v1.i118.i.18, 2
  %tmp4_v.i120.i.18 = add i32 %tmp0_v2.i119.i.18, %tmp4_v.i120.i.17
  %tmp4_v3.i.i.18 = add i32 %tmp0_v2.i119.i.18, %tmp4_v3.i.i.17
  %79 = inttoptr i32 %tmp4_v.i120.i.18 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = inttoptr i32 %tmp4_v3.i.i.18 to i32*
  store i32 %80, i32* %81, align 4
  %tmp0_v1.i118.i.19 = load i32, i32* @df, align 4
  %tmp0_v2.i119.i.19 = shl i32 %tmp0_v1.i118.i.19, 2
  %tmp4_v.i120.i.19 = add i32 %tmp0_v2.i119.i.19, %tmp4_v.i120.i.18
  %tmp4_v3.i.i.19 = add i32 %tmp0_v2.i119.i.19, %tmp4_v3.i.i.18
  %82 = inttoptr i32 %tmp4_v.i120.i.19 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = inttoptr i32 %tmp4_v3.i.i.19 to i32*
  store i32 %83, i32* %84, align 4
  %tmp2_v.i191.i = add i32 %tmp0_v.i39.i, -340
  %85 = inttoptr i32 %tmp2_v.i191.i to i32*
  store i32 134517393, i32* %85, align 4
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i39.i, -344
  %86 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  store i32 %tmp2_v4.i42.i, i32* %86, align 8
  %tmp2_v1.i.i.i14 = add i32 %tmp0_v.i39.i, -348
  %87 = inttoptr i32 %tmp2_v1.i.i.i14 to i32*
  store i32 134529024, i32* %87, align 4
  %tmp2_v2.i12.i.i = add i32 %tmp0_v.i39.i, -372
  %88 = inttoptr i32 %tmp2_v2.i12.i.i to i32*
  store i32 134518204, i32* %88, align 4
  %tmp2_v2.i38.i.i = add i32 %tmp0_v.i39.i, -380
  %89 = inttoptr i32 %tmp2_v2.i38.i.i to i32*
  store i32 %tmp0_v15.i.i, i32* %89, align 4
  %tmp2_v4.i.i.i15 = add i32 %tmp0_v.i39.i, -384
  %90 = inttoptr i32 %tmp2_v4.i.i.i15 to i32*
  store i32 134520931, i32* %90, align 16
  %tmp2_v5.i40.i.i = add i32 %tmp0_v.i39.i, -388
  %91 = inttoptr i32 %tmp2_v5.i40.i.i to i32*
  store i32 134518229, i32* %91, align 4
  %92 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef 21, i32 noundef %tmp2_v4.i.i.i15, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %93 = lshr i64 %92, 32
  %94 = trunc i64 %93 to i32
  %mrv.i2.i = insertvalue { i32, i32 } undef, i32 %tmp2_v4.i.i.i15, 0
  %tmp2_v.i5.i.i = add i32 %tmp0_v.i39.i, -286
  store i32 %tmp2_v.i5.i.i, i32* %89, align 4
  store i32 134520941, i32* %90, align 16
  store i32 134518251, i32* %91, align 4
  %95 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %94, i32 noundef %tmp2_v4.i.i.i15, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %96 = lshr i64 %95, 32
  %97 = trunc i64 %96 to i32
  %tmp2_v.i44.i.i = add i32 %tmp0_v.i39.i, -276
  %98 = inttoptr i32 %tmp2_v.i44.i.i to i32*
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %89, align 4
  store i32 134520949, i32* %90, align 16
  store i32 134518273, i32* %91, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %97, i32 noundef %tmp2_v4.i.i.i15, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  store i32 134520958, i32* %90, align 16
  store i32 134518291, i32* %91, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %102, i32 noundef %tmp2_v4.i.i.i15, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %104 = lshr i64 %103, 32
  %105 = trunc i64 %104 to i32
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i39.i, -356
  %106 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  %tmp4_v.i.i.i16 = add i32 %tmp0_v.i39.i, -272
  store i32 0, i32* %106, align 4
  br label %BB_804961F.i.i

BB_8049376.i:                                     ; preds = %Func_print_student.exit, %BB_8049376.i
  %storemerge42 = phi i32 [ 0, %Func_print_student.exit ], [ %tmp0_v14.i110.i, %BB_8049376.i ]
  %tmp4_v.i100.i = shl i32 %storemerge42, 3
  %tmp2_v4.i101.i = add i32 %tmp2_v3.i99.i, %tmp4_v.i100.i
  %107 = inttoptr i32 %tmp2_v4.i101.i to i32*
  store i32 %storemerge42, i32* %107, align 4
  %108 = load i32, i32* %208, align 4
  %tmp0_v6.i.i = sub i32 10, %108
  %tmp4_v10.i.i = shl i32 %108, 3
  %tmp2_v11.i107.i = add i32 %tmp2_v9.i106.i, %tmp4_v10.i.i
  %109 = inttoptr i32 %tmp2_v11.i107.i to i32*
  store i32 %tmp0_v6.i.i, i32* %109, align 4
  %110 = load i32, i32* %208, align 4
  %tmp0_v14.i110.i = add i32 %110, 1
  store i32 %tmp0_v14.i110.i, i32* %208, align 4
  %111 = icmp slt i32 %tmp0_v14.i110.i, 10
  br i1 %111, label %BB_8049376.i, label %BB_80493B3.i

BB_80493B3.i:                                     ; preds = %BB_8049376.i
  store i32 %tmp2_v3.i99.i, i32* %185, align 16
  store i32 134517698, i32* %186, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i39.i, -264
  %112 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %178, i32* %112, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i39.i, -268
  %113 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 %177, i32* %113, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i39.i, -292
  %114 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134518101, i32* %114, align 4
  %tmp2_v14.i.i.i = add i32 %tmp0_v.i39.i, -296
  %115 = inttoptr i32 %tmp2_v14.i.i.i to i32*
  %tmp2_v17.i.i.i = add i32 %tmp0_v.i39.i, -300
  %116 = inttoptr i32 %tmp2_v17.i.i.i to i32*
  %tmp2_v19.i.i.i = add i32 %tmp0_v.i39.i, -304
  %117 = inttoptr i32 %tmp2_v19.i.i.i to i32*
  %tmp2_v20.i.i.i = add i32 %tmp0_v.i39.i, -308
  %118 = inttoptr i32 %tmp2_v20.i.i.i to i32*
  store i32 0, i32* %98, align 4
  br label %BB_8049564.i.i

BB_8049564.i.i:                                   ; preds = %BB_8049564.i.i, %BB_80493B3.i
  %storemerge18.i = phi i32 [ 0, %BB_80493B3.i ], [ %tmp0_v2.i.i.i, %BB_8049564.i.i ]
  %tmp4_v.i.i.i5 = shl i32 %storemerge18.i, 3
  %119 = load i32, i32* %185, align 16
  %tmp0_v3.i.i.i = add i32 %119, %tmp4_v.i.i.i5
  %tmp2_v4.i.i.i = add i32 %tmp0_v3.i.i.i, 4
  %120 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  %121 = load i32, i32* %120, align 4
  %122 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %123 = load i32, i32* %122, align 4
  store i32 %121, i32* %114, align 4
  store i32 %123, i32* %115, align 8
  %124 = load i32, i32* %98, align 4
  store i32 %124, i32* %116, align 4
  store i32 134520916, i32* %117, align 16
  store i32 134518168, i32* %118, align 4
  %125 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i.i.i5, i32 inreg noundef %121, i32 noundef %tmp2_v19.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %126 = load i32, i32* %98, align 4
  %tmp0_v2.i.i.i = add i32 %126, 1
  store i32 %tmp0_v2.i.i.i, i32* %98, align 4
  %127 = icmp slt i32 %tmp0_v2.i.i.i, 10
  br i1 %127, label %BB_8049564.i.i, label %Func_print_points.exit

Func_print_points.exit:                           ; preds = %BB_8049564.i.i
  %mrv.i22 = insertvalue { i32, i32 } undef, i32 %tmp2_v9.i188.i, 0
  %128 = load i32, i32* %113, align 4
  %129 = load i32, i32* %112, align 8
  store i32 20, i32* %185, align 16
  store i32 134517711, i32* %186, align 4
  %arg.i.i = load i32, i32* %185, align 16
  %130 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i205.i = add i32 %129, -228
  %131 = inttoptr i32 %tmp2_v.i205.i to i32*
  store i32 %130, i32* %131, align 4
  store i32 20, i32* %185, align 16
  store i32 134517730, i32* %186, align 4
  %arg.i.i10 = load i32, i32* %185, align 16
  %132 = tail call i32 @malloc(i32 %arg.i.i10)
  %tmp2_v.i73.i = add i32 %129, -224
  %133 = inttoptr i32 %tmp2_v.i73.i to i32*
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %131, align 4
  %135 = inttoptr i32 %134 to i32*
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* %131, align 4
  %tmp0_v5.i.i = add i32 %136, 4
  %137 = inttoptr i32 %tmp0_v5.i.i to i32*
  store i32 2, i32* %137, align 4
  %138 = load i32, i32* %131, align 4
  %tmp0_v8.i.i = add i32 %138, 8
  %139 = inttoptr i32 %tmp0_v8.i.i to i32*
  store i32 3, i32* %139, align 4
  %140 = load i32, i32* %131, align 4
  %tmp0_v11.i.i = add i32 %140, 12
  %141 = inttoptr i32 %tmp0_v11.i.i to i32*
  store i32 4, i32* %141, align 4
  %142 = load i32, i32* %131, align 4
  %tmp0_v14.i81.i = add i32 %142, 16
  %143 = inttoptr i32 %tmp0_v14.i81.i to i32*
  store i32 5, i32* %143, align 4
  %144 = load i32, i32* %133, align 4
  %145 = inttoptr i32 %144 to i32*
  store i32 9, i32* %145, align 4
  %146 = load i32, i32* %133, align 4
  %tmp0_v19.i83.i = add i32 %146, 4
  %147 = inttoptr i32 %tmp0_v19.i83.i to i32*
  store i32 9, i32* %147, align 4
  %148 = load i32, i32* %133, align 4
  %tmp0_v22.i.i = add i32 %148, 8
  %149 = inttoptr i32 %tmp0_v22.i.i to i32*
  store i32 9, i32* %149, align 4
  %150 = load i32, i32* %133, align 4
  %tmp0_v25.i.i = add i32 %150, 12
  %151 = inttoptr i32 %tmp0_v25.i.i to i32*
  store i32 9, i32* %151, align 4
  %152 = load i32, i32* %133, align 4
  %tmp0_v28.i.i = add i32 %152, 16
  %153 = inttoptr i32 %tmp0_v28.i.i to i32*
  store i32 9, i32* %153, align 4
  %154 = load i32, i32* %133, align 4
  store i32 %154, i32* %131, align 4
  %tmp2_v32.i.i = add i32 %129, -216
  %155 = inttoptr i32 %tmp2_v32.i.i to i32*
  %tmp2_v11.i233.i = add i32 %128, -8144
  store i32 0, i32* %155, align 4
  br label %BB_8049493.i

BB_80494E7.i:                                     ; preds = %BB_80494CF.i, %BB_80494E7.i
  %storemerge247 = phi i32 [ 0, %BB_80494CF.i ], [ %tmp0_v2.i89.i, %BB_80494E7.i ]
  %156 = load i32, i32* %133, align 4
  %tmp0_v3.i162.i = shl i32 %storemerge247, 2
  %tmp0_v4.i163.i = add i32 %156, %tmp0_v3.i162.i
  %157 = inttoptr i32 %tmp0_v4.i163.i to i32*
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %212, align 4
  %159 = load i32, i32* %211, align 4
  store i32 %159, i32* %213, align 4
  store i32 %tmp2_v11.i172.i, i32* %214, align 4
  store i32 134518032, i32* %215, align 4
  %160 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i.i.i5, i32 inreg noundef %tmp0_v3.i162.i, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %161 = load i32, i32* %211, align 4
  %tmp0_v2.i89.i = add i32 %161, 1
  store i32 %tmp0_v2.i89.i, i32* %211, align 4
  %162 = icmp slt i32 %tmp0_v2.i89.i, 5
  br i1 %162, label %BB_80494E7.i, label %.exit

BB_804961F.i.i:                                   ; preds = %BB_804961F.i.i, %Func_804928A.exit.i
  %r_esp.0.in12.i = phi i32 [ %tmp2_v4.i.i.i15, %Func_804928A.exit.i ], [ %r_esp.0.in.i, %BB_804961F.i.i ]
  %.pn811.i = phi i32 [ %105, %Func_804928A.exit.i ], [ %170, %BB_804961F.i.i ]
  %mrv.i2.pn10.i = phi { i32, i32 } [ %mrv.i2.i, %Func_804928A.exit.i ], [ %.pn.i, %BB_804961F.i.i ]
  %storemerge9.i = phi i32 [ 0, %Func_804928A.exit.i ], [ %tmp0_v2.i.i.i17, %BB_804961F.i.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i2.pn10.i, i32 %.pn811.i, 1
  %tmp0_v1.i53.i.i = shl i32 %storemerge9.i, 2
  %tmp2_v3.i55.i.i = add i32 %tmp4_v.i.i.i16, %tmp0_v1.i53.i.i
  %163 = inttoptr i32 %tmp2_v3.i55.i.i to i32*
  %164 = load i32, i32* %163, align 4
  %tmp2_v6.i58.i.i = add i32 %r_esp.0.in12.i, 4
  %165 = inttoptr i32 %tmp2_v6.i58.i.i to i32*
  store i32 %164, i32* %165, align 4
  %166 = inttoptr i32 %r_esp.0.in12.i to i32*
  store i32 134520967, i32* %166, align 4
  %tmp2_v9.i.i.i = add i32 %r_esp.0.in12.i, -4
  %167 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134518329, i32* %167, align 4
  %168 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %.pn811.i, i32 noundef %r_esp.0.in12.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %169 = lshr i64 %168, 32
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* %106, align 4
  %tmp0_v2.i.i.i17 = add i32 %171, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i2.pn10.i, 0
  store i32 %tmp0_v2.i.i.i17, i32* %106, align 4
  %172 = icmp slt i32 %tmp0_v2.i.i.i17, 5
  br i1 %172, label %BB_804961F.i.i, label %Func_print_student.exit

Func_print_student.exit:                          ; preds = %BB_804961F.i.i
  %173 = trunc i64 %169 to i32
  %r_esp.0.in.i.le = extractvalue { i32, i32 } %mrv.i2.pn10.i, 0
  %174 = inttoptr i32 %r_esp.0.in.i.le to i32*
  store i32 10, i32* %174, align 4
  %tmp2_v1.i16.i.i = add i32 %r_esp.0.in.i.le, -4
  %175 = inttoptr i32 %tmp2_v1.i16.i.i to i32*
  store i32 134518352, i32* %175, align 4
  %arg.i.i.i = load i32, i32* %174, align 4
  %176 = tail call i32 @putchar(i32 %arg.i.i.i)  nounwind 
  %177 = load i32, i32* %87, align 4
  %178 = load i32, i32* %86, align 8
  %tmp2_v.i178.i = add i32 %178, -208
  %179 = inttoptr i32 %tmp2_v.i178.i to i32*
  store i32 5, i32* %179, align 4
  %tmp2_v1.i179.i = add i32 %178, -204
  %180 = inttoptr i32 %tmp2_v1.i179.i to i32*
  store i32 10, i32* %180, align 4
  %tmp2_v2.i180.i = add i32 %178, -200
  %181 = inttoptr i32 %tmp2_v2.i180.i to i32*
  store i32 2, i32* %181, align 4
  %tmp2_v3.i181.i = add i32 %178, -196
  %182 = inttoptr i32 %tmp2_v3.i181.i to i32*
  store i32 8, i32* %182, align 4
  %183 = load i32, i32* %179, align 4
  %tmp2_v7.i185.i = add i32 %tmp0_v.i39.i, -252
  %184 = inttoptr i32 %tmp2_v7.i185.i to i32*
  store i32 %183, i32* %184, align 4
  %tmp2_v8.i187.i = add i32 %177, -8184
  %tmp2_v9.i188.i = add i32 %tmp0_v.i39.i, -256
  %185 = inttoptr i32 %tmp2_v9.i188.i to i32*
  store i32 %tmp2_v8.i187.i, i32* %185, align 16
  %tmp2_v10.i189.i = add i32 %tmp0_v.i39.i, -260
  %186 = inttoptr i32 %tmp2_v10.i189.i to i32*
  store i32 134517458, i32* %186, align 4
  %187 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %173, i32 noundef %tmp2_v9.i188.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %188 = lshr i64 %187, 32
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* %180, align 4
  store i32 %190, i32* %184, align 4
  %tmp2_v4.i25.i = add i32 %177, -8174
  store i32 %tmp2_v4.i25.i, i32* %185, align 16
  store i32 134517483, i32* %186, align 4
  %191 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %189, i32 noundef %tmp2_v9.i188.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %192 = lshr i64 %191, 32
  %193 = trunc i64 %192 to i32
  %194 = load i32, i32* %181, align 4
  store i32 %194, i32* %184, align 4
  %tmp2_v4.i58.i = add i32 %177, -8164
  store i32 %tmp2_v4.i58.i, i32* %185, align 16
  store i32 134517508, i32* %186, align 4
  %195 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %193, i32 noundef %tmp2_v9.i188.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %196 = lshr i64 %195, 32
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* %182, align 4
  store i32 %198, i32* %184, align 4
  %tmp2_v4.i35.i = add i32 %177, -8154
  store i32 %tmp2_v4.i35.i, i32* %185, align 16
  store i32 134517533, i32* %186, align 4
  %199 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %197, i32 noundef %tmp2_v9.i188.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %200 = load i32, i32* %181, align 4
  %201 = load i32, i32* %182, align 4
  store i32 %200, i32* %179, align 4
  store i32 %201, i32* %180, align 4
  %202 = load i32, i32* %179, align 4
  store i32 %202, i32* %184, align 4
  store i32 %tmp2_v8.i187.i, i32* %185, align 16
  store i32 134517582, i32* %186, align 4
  %203 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %201, i32 noundef %tmp2_v9.i188.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %204 = lshr i64 %203, 32
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* %180, align 4
  store i32 %206, i32* %184, align 4
  store i32 %tmp2_v4.i25.i, i32* %185, align 16
  store i32 134517607, i32* %186, align 4
  %207 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %205, i32 noundef %tmp2_v9.i188.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v.i.i = add i32 %178, -220
  %208 = inttoptr i32 %tmp2_v.i.i to i32*
  %tmp2_v3.i99.i = add i32 %178, -192
  %tmp2_v9.i106.i = add i32 %178, -188
  store i32 0, i32* %208, align 4
  br label %BB_8049376.i

BB_80494CF.i:                                     ; preds = %BB_8049493.i
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i22.pn44, 0
  %209 = load i32, i32* %131, align 4
  %210 = inttoptr i32 %209 to i32*
  store i32 10, i32* %210, align 4
  %tmp2_v1.i212.i = add i32 %129, -212
  %211 = inttoptr i32 %tmp2_v1.i212.i to i32*
  %tmp2_v7.i167.i = add i32 %r_esp.0.in.le, 8
  %212 = inttoptr i32 %tmp2_v7.i167.i to i32*
  %tmp2_v10.i170.i = add i32 %r_esp.0.in.le, 4
  %213 = inttoptr i32 %tmp2_v10.i170.i to i32*
  %tmp2_v11.i172.i = add i32 %128, -8126
  %214 = inttoptr i32 %r_esp.0.in.le to i32*
  %tmp2_v13.i174.i = add i32 %r_esp.0.in.le, -4
  %215 = inttoptr i32 %tmp2_v13.i174.i to i32*
  store i32 0, i32* %211, align 4
  br label %BB_80494E7.i

BB_8049493.i:                                     ; preds = %BB_8049493.i, %Func_print_points.exit
  %r_esp.0.in46 = phi i32 [ %tmp2_v9.i188.i, %Func_print_points.exit ], [ %r_esp.0.in, %BB_8049493.i ]
  %.pn3745 = phi i32 [ %132, %Func_print_points.exit ], [ %226, %BB_8049493.i ]
  %mrv.i22.pn44 = phi { i32, i32 } [ %mrv.i22, %Func_print_points.exit ], [ %.pn, %BB_8049493.i ]
  %storemerge143 = phi i32 [ 0, %Func_print_points.exit ], [ %tmp0_v2.i.i, %BB_8049493.i ]
  %.pn = insertvalue { i32, i32 } %mrv.i22.pn44, i32 %.pn3745, 1
  %216 = load i32, i32* %131, align 4
  %tmp0_v3.i223.i = shl i32 %storemerge143, 2
  %tmp0_v4.i224.i = add i32 %216, %tmp0_v3.i223.i
  %217 = inttoptr i32 %tmp0_v4.i224.i to i32*
  %218 = load i32, i32* %217, align 4
  %tmp2_v7.i228.i = add i32 %r_esp.0.in46, 8
  %219 = inttoptr i32 %tmp2_v7.i228.i to i32*
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* %155, align 4
  %tmp2_v10.i231.i = add i32 %r_esp.0.in46, 4
  %221 = inttoptr i32 %tmp2_v10.i231.i to i32*
  store i32 %220, i32* %221, align 4
  %222 = inttoptr i32 %r_esp.0.in46 to i32*
  store i32 %tmp2_v11.i233.i, i32* %222, align 4
  %tmp2_v13.i235.i = add i32 %r_esp.0.in46, -4
  %223 = inttoptr i32 %tmp2_v13.i235.i to i32*
  store i32 134517948, i32* %223, align 4
  %224 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i.i.i5, i32 inreg noundef %tmp0_v3.i223.i, i32 noundef %r_esp.0.in46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %225 = lshr i64 %224, 32
  %226 = trunc i64 %225 to i32
  %227 = load i32, i32* %155, align 4
  %tmp0_v2.i.i = add i32 %227, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i22.pn44, 0
  store i32 %tmp0_v2.i.i, i32* %155, align 4
  %228 = icmp slt i32 %tmp0_v2.i.i, 5
  br i1 %228, label %BB_8049493.i, label %BB_80494CF.i

.exit:                                            ; preds = %BB_80494E7.i
  ret void
}

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

  tail call fastcc void @structm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
