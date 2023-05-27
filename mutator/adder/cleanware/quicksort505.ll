; Mutation 505
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack504 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: noinline
declare void @srand(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @time(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @rand() local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

define internal fastcc { i32, i32, i32, i32, i32 } @Func_quicksort_recursion(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx, i32 %arg_ecx) unnamed_addr !retregs !12 {
Func_80493BE.exit.i:
  %tmp2_v.i5.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i5.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -32
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517694, i32* %1, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i.i to i32*
  %3 = load i32, i32* %2, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, 12
  %4 = inttoptr i32 %tmp2_v2.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %.not.i.i = icmp slt i32 %3, %5
  br i1 %.not.i.i, label %BB_80493CB.i, label %.exit

BB_80493CB.i:                                     ; preds = %Func_80493BE.exit.i
  %tmp2_v2.i29.i = add i32 %arg_esp, -36
  %6 = inttoptr i32 %tmp2_v2.i29.i to i32*
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %tmp2_v5.i31.i = add i32 %arg_esp, -40
  %8 = inttoptr i32 %tmp2_v5.i31.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v6.i32.i = add i32 %arg_esp, 4
  %9 = inttoptr i32 %tmp2_v6.i32.i to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v8.i34.i = add i32 %arg_esp, -44
  %11 = inttoptr i32 %tmp2_v8.i34.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v9.i35.i = add i32 %arg_esp, -48
  %12 = inttoptr i32 %tmp2_v9.i35.i to i32*
  store i32 134517724, i32* %12, align 4
  %tmp2_v.i90.i.i = add i32 %arg_esp, -52
  %13 = inttoptr i32 %tmp2_v.i90.i.i to i32*
  store i32 %tmp2_v.i5.i, i32* %13, align 4
  %tmp2_v1.i92.i.i = add i32 %arg_esp, -56
  %14 = inttoptr i32 %tmp2_v1.i92.i.i to i32*
  store i32 %arg_ebx, i32* %14, align 4
  %tmp2_v2.i94.i.i = add i32 %arg_esp, -80
  %15 = inttoptr i32 %tmp2_v2.i94.i.i to i32*
  store i32 134517809, i32* %15, align 4
  %16 = tail call i32 @rand()
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %tmp0_v2.i49.i.i = sub i32 %17, %18
  %tmp0_v3.i50.i.i = ashr i32 %16, 31
  %19 = zext i32 %16 to i64
  %20 = zext i32 %tmp0_v3.i50.i.i to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = icmp ne i32 %tmp0_v2.i49.i.i, 0
  tail call void @llvm.assume(i1 %23)
  %24 = sext i32 %tmp0_v2.i49.i.i to i64
  %.frozen = freeze i64 %22
  %.frozen28 = freeze i64 %24
  %25 = sdiv i64 %.frozen, %.frozen28
  %26 = add i64 %25, 2147483648
  %27 = icmp ult i64 %26, 4294967296
  tail call void @llvm.assume(i1 %27)
  %28 = mul i64 %25, %.frozen28
  %.decomposed = sub i64 %.frozen, %28
  %29 = trunc i64 %.decomposed to i32
  %tmp0_v7.i.i.i = add i32 %18, %29
  %tmp2_v8.i.i.i = add i32 %arg_esp, -68
  %30 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 %tmp0_v7.i.i.i, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %tmp4_v.i30.i.i = shl i32 %31, 2
  %32 = load i32, i32* %11, align 4
  %tmp0_v3.i33.i.i = add i32 %tmp4_v.i30.i.i, %32
  %tmp4_v6.i36.i.i = shl i32 %tmp0_v7.i.i.i, 2
  %tmp0_v9.i39.i.i = add i32 %32, %tmp4_v6.i36.i.i
  %tmp2_v11.i42.i.i = add i32 %arg_esp, -88
  %33 = inttoptr i32 %tmp2_v11.i42.i.i to i32*
  store i32 %tmp0_v3.i33.i.i, i32* %33, align 4
  %tmp2_v12.i43.i.i = add i32 %arg_esp, -92
  %34 = inttoptr i32 %tmp2_v12.i43.i.i to i32*
  store i32 %tmp0_v9.i39.i.i, i32* %34, align 4
  %tmp2_v13.i44.i.i = add i32 %arg_esp, -96
  %35 = inttoptr i32 %tmp2_v13.i44.i.i to i32*
  store i32 134517876, i32* %35, align 4
  %tmp2_v.i.i.i39.i = add i32 %arg_esp, -100
  %36 = inttoptr i32 %tmp2_v.i.i.i39.i to i32*
  store i32 %tmp2_v.i90.i.i, i32* %36, align 4
  %tmp2_v1.i.i.i40.i = add i32 %arg_esp, -120
  %37 = inttoptr i32 %tmp2_v1.i.i.i40.i to i32*
  store i32 134517569, i32* %37, align 4
  %38 = load i32, i32* %34, align 4
  %39 = inttoptr i32 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %tmp2_v3.i.i.i42.i = add i32 %arg_esp, -104
  %41 = inttoptr i32 %tmp2_v3.i.i.i42.i to i32*
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %33, align 4
  %43 = inttoptr i32 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %34, align 4
  %46 = inttoptr i32 %45 to i32*
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %33, align 4
  %48 = load i32, i32* %41, align 4
  %49 = inttoptr i32 %47 to i32*
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %36, align 4
  %tmp2_v.i108.i.i = add i32 %50, 16
  %51 = inttoptr i32 %tmp2_v.i108.i.i to i32*
  %52 = load i32, i32* %51, align 4
  %tmp4_v.i110.i.i = shl i32 %52, 2
  %tmp2_v2.i111.i.i = add i32 %50, 8
  %53 = inttoptr i32 %tmp2_v2.i111.i.i to i32*
  %54 = load i32, i32* %53, align 4
  %tmp0_v4.i113.i.i = add i32 %54, %tmp4_v.i110.i.i
  %55 = inttoptr i32 %tmp0_v4.i113.i.i to i32*
  %56 = load i32, i32* %55, align 4
  %tmp2_v6.i115.i.i = add i32 %50, -12
  %57 = inttoptr i32 %tmp2_v6.i115.i.i to i32*
  store i32 %56, i32* %57, align 4
  %tmp2_v7.i116.i.i = add i32 %50, 12
  %58 = inttoptr i32 %tmp2_v7.i116.i.i to i32*
  %59 = load i32, i32* %58, align 4
  %tmp2_v9.i118.i.i = add i32 %50, -24
  %60 = inttoptr i32 %tmp2_v9.i118.i.i to i32*
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %58, align 4
  %tmp2_v12.i119.i.i = add i32 %50, -20
  %62 = inttoptr i32 %tmp2_v12.i119.i.i to i32*
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %51, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %BB_8049499.i.i, label %Func_partition.exit

BB_80494AF.i.i:                                   ; preds = %BB_8049499.i.i
  %tmp2_v4.i16.i.i = add i32 %r_ebp.057.i, -24
  %65 = inttoptr i32 %tmp2_v4.i16.i.i to i32*
  %66 = load i32, i32* %65, align 4
  %tmp4_v6.i18.i.i = shl i32 %66, 2
  %tmp0_v9.i21.i.i = add i32 %tmp4_v6.i18.i.i, %83
  store i32 %tmp0_v3.i76.i.i, i32* %33, align 4
  store i32 %tmp0_v9.i21.i.i, i32* %34, align 4
  store i32 134517975, i32* %35, align 4
  store i32 %r_ebp.057.i, i32* %36, align 4
  store i32 134517569, i32* %37, align 4
  %67 = load i32, i32* %34, align 4
  %68 = inttoptr i32 %67 to i32*
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %41, align 4
  %70 = load i32, i32* %33, align 4
  %71 = inttoptr i32 %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %34, align 4
  %74 = inttoptr i32 %73 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %33, align 4
  %76 = load i32, i32* %41, align 4
  %77 = inttoptr i32 %75 to i32*
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %36, align 4
  %tmp2_v.i60.i.i = add i32 %78, -24
  %79 = inttoptr i32 %tmp2_v.i60.i.i to i32*
  %80 = load i32, i32* %79, align 4
  %tmp0_v2.i62.i.i = add i32 %80, 1
  store i32 %tmp0_v2.i62.i.i, i32* %79, align 4
  br label %BB_80494DE.i.i

BB_8049499.i.i:                                   ; preds = %BB_80494DE.i.i, %BB_80493CB.i
  %81 = phi i32 [ %tmp0_v1.i98.i.i, %BB_80494DE.i.i ], [ %61, %BB_80493CB.i ]
  %r_ebp.057.i = phi i32 [ %r_ebp.1.i, %BB_80494DE.i.i ], [ %50, %BB_80493CB.i ]
  %tmp4_v.i73.i.i = shl i32 %81, 2
  %tmp2_v1.i74.i.i = add i32 %r_ebp.057.i, 8
  %82 = inttoptr i32 %tmp2_v1.i74.i.i to i32*
  %83 = load i32, i32* %82, align 4
  %tmp0_v3.i76.i.i = add i32 %83, %tmp4_v.i73.i.i
  %84 = inttoptr i32 %tmp0_v3.i76.i.i to i32*
  %85 = load i32, i32* %84, align 4
  %tmp2_v5.i78.i.i = add i32 %r_ebp.057.i, -12
  %86 = inttoptr i32 %tmp2_v5.i78.i.i to i32*
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, %85
  br i1 %88, label %BB_80494DE.i.i, label %BB_80494AF.i.i

BB_80494DE.i.i:                                   ; preds = %BB_8049499.i.i, %BB_80494AF.i.i
  %r_ebp.1.i = phi i32 [ %r_ebp.057.i, %BB_8049499.i.i ], [ %78, %BB_80494AF.i.i ]
  %tmp2_v.i96.i.i = add i32 %r_ebp.1.i, -20
  %89 = inttoptr i32 %tmp2_v.i96.i.i to i32*
  %90 = load i32, i32* %89, align 4
  %tmp0_v1.i98.i.i = add i32 %90, 1
  store i32 %tmp0_v1.i98.i.i, i32* %89, align 4
  %tmp2_v1.i85.i.i = add i32 %r_ebp.1.i, 16
  %91 = inttoptr i32 %tmp2_v1.i85.i.i to i32*
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %tmp0_v1.i98.i.i, %92
  br i1 %93, label %BB_8049499.i.i, label %.exit.loopexit.i

.exit.loopexit.i:                                 ; preds = %BB_80494DE.i.i
  %.pre.i = add i32 %r_ebp.1.i, 8
  %.pre60.i = inttoptr i32 %.pre.i to i32*
  %.pre61.i = add i32 %r_ebp.1.i, -24
  %.pre62.i = inttoptr i32 %.pre61.i to i32*
  br label %Func_partition.exit

Func_partition.exit:                              ; preds = %.exit.loopexit.i, %BB_80493CB.i
  %.pre-phi63.i = phi i32* [ %.pre62.i, %.exit.loopexit.i ], [ %60, %BB_80493CB.i ]
  %.pre-phi.i = phi i32* [ %.pre60.i, %.exit.loopexit.i ], [ %53, %BB_80493CB.i ]
  %r_ebp.0.lcssa.i = phi i32 [ %r_ebp.1.i, %.exit.loopexit.i ], [ %50, %BB_80493CB.i ]
  %.lcssa.i = phi i32 [ %92, %.exit.loopexit.i ], [ %63, %BB_80493CB.i ]
  %tmp4_v.i.i.i27 = shl i32 %.lcssa.i, 2
  %94 = load i32, i32* %.pre-phi.i, align 4
  %tmp0_v3.i.i.i = add i32 %94, %tmp4_v.i.i.i27
  %95 = load i32, i32* %.pre-phi63.i, align 4
  %tmp4_v6.i.i.i = shl i32 %95, 2
  %tmp0_v9.i.i.i = add i32 %tmp4_v6.i.i.i, %94
  store i32 %tmp0_v3.i.i.i, i32* %33, align 4
  store i32 %tmp0_v9.i.i.i, i32* %34, align 4
  store i32 134518034, i32* %35, align 4
  store i32 %r_ebp.0.lcssa.i, i32* %36, align 4
  store i32 134517569, i32* %37, align 4
  %96 = load i32, i32* %34, align 4
  %97 = inttoptr i32 %96 to i32*
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %41, align 4
  %99 = load i32, i32* %33, align 4
  %100 = inttoptr i32 %99 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %34, align 4
  %103 = inttoptr i32 %102 to i32*
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %33, align 4
  %105 = load i32, i32* %41, align 4
  %106 = inttoptr i32 %104 to i32*
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %36, align 4
  %tmp2_v.i4.i.i = add i32 %107, -24
  %108 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  %109 = load i32, i32* %108, align 4
  %tmp2_v2.i.i.i = add i32 %107, -4
  %110 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %111 = load i32, i32* %110, align 4
  %112 = inttoptr i32 %107 to i32*
  %113 = load i32, i32* %112, align 4
  %tmp4_v6.i8.i.i = add i32 %107, 8
  %tmp2_v.i17.i = add i32 %113, -12
  %114 = inttoptr i32 %tmp2_v.i17.i to i32*
  store i32 %109, i32* %114, align 4
  %tmp0_v3.i21.i = add i32 %109, -1
  %tmp2_v5.i.i = add i32 %107, 16
  %115 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp0_v3.i21.i, i32* %115, align 4
  %tmp2_v6.i22.i = add i32 %113, 12
  %116 = inttoptr i32 %tmp2_v6.i22.i to i32*
  %117 = load i32, i32* %116, align 4
  %tmp2_v8.i23.i = add i32 %107, 12
  %118 = inttoptr i32 %tmp2_v8.i23.i to i32*
  store i32 %117, i32* %118, align 4
  %tmp2_v9.i.i = add i32 %113, 8
  %119 = inttoptr i32 %tmp2_v9.i.i to i32*
  %120 = load i32, i32* %119, align 4
  %121 = inttoptr i32 %tmp4_v6.i8.i.i to i32*
  store i32 %120, i32* %121, align 4
  %tmp2_v12.i.i = add i32 %107, 4
  %122 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517751, i32* %122, align 4
  %123 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_quicksort_recursion(i32 %tmp2_v12.i.i, i32 %105, i32 %113, i32 %111, i32 %tmp4_v6.i.i.i)
  %124 = extractvalue { i32, i32, i32, i32, i32 } %123, 0
  %125 = extractvalue { i32, i32, i32, i32, i32 } %123, 1
  %126 = extractvalue { i32, i32, i32, i32, i32 } %123, 2
  %127 = extractvalue { i32, i32, i32, i32, i32 } %123, 3
  %128 = extractvalue { i32, i32, i32, i32, i32 } %123, 4
  %tmp2_v.i11.i = add i32 %126, -12
  %129 = inttoptr i32 %tmp2_v.i11.i to i32*
  %130 = load i32, i32* %129, align 4
  %tmp0_v2.i13.i = add i32 %130, 1
  %tmp2_v4.i.i = add i32 %126, 16
  %131 = inttoptr i32 %tmp2_v4.i.i to i32*
  %132 = load i32, i32* %131, align 4
  %tmp2_v6.i.i = add i32 %124, 8
  %133 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %132, i32* %133, align 4
  %tmp2_v7.i.i = add i32 %124, 4
  %134 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp0_v2.i13.i, i32* %134, align 4
  %tmp2_v8.i.i = add i32 %126, 8
  %135 = inttoptr i32 %tmp2_v8.i.i to i32*
  %136 = load i32, i32* %135, align 4
  %137 = inttoptr i32 %124 to i32*
  store i32 %136, i32* %137, align 4
  %tmp2_v11.i.i = add i32 %124, -4
  %138 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517775, i32* %138, align 4
  %139 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_quicksort_recursion(i32 %tmp2_v11.i.i, i32 %125, i32 %126, i32 %127, i32 %128)
  %140 = extractvalue { i32, i32, i32, i32, i32 } %139, 1
  %141 = extractvalue { i32, i32, i32, i32, i32 } %139, 2
  %142 = extractvalue { i32, i32, i32, i32, i32 } %139, 3
  %143 = extractvalue { i32, i32, i32, i32, i32 } %139, 4
  %.pre = inttoptr i32 %141 to i32*
  br label %.exit

.exit:                                            ; preds = %Func_partition.exit, %Func_80493BE.exit.i
  %.pre-phi = phi i32* [ %0, %Func_80493BE.exit.i ], [ %.pre, %Func_partition.exit ]
  %r_ebx.0 = phi i32 [ %arg_ebx, %Func_80493BE.exit.i ], [ %142, %Func_partition.exit ]
  %r_ebp.0 = phi i32 [ %tmp2_v.i5.i, %Func_80493BE.exit.i ], [ %141, %Func_partition.exit ]
  %r_ecx.0 = phi i32 [ %arg_ecx, %Func_80493BE.exit.i ], [ %143, %Func_partition.exit ]
  %r_edx.0 = phi i32 [ %arg_edx, %Func_80493BE.exit.i ], [ %140, %Func_partition.exit ]
  %144 = load i32, i32* %.pre-phi, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %r_edx.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %144, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %r_ebx.0, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %r_ecx.0, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}

; Function Attrs: norecurse
define internal fastcc void @quicksort505(i32 %arg_esp) unnamed_addr  norecurse  !retregs !13 {
  %tmp2_v.i18.i = add i32 %arg_esp, 4
  %tmp0_v.i19.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i19.i, -4
  %3 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i19.i, -8
  %4 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i24.i = add i32 %tmp0_v.i19.i, -12
  %5 = inttoptr i32 %tmp2_v5.i24.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i26.i = add i32 %tmp0_v.i19.i, -16
  %6 = inttoptr i32 %tmp2_v6.i26.i to i32*
  store i32 %tmp2_v.i18.i, i32* %6, align 16
  %tmp2_v8.i27.i = add i32 %tmp0_v.i19.i, -84
  %7 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 134517329, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i19.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i19.i, -72
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 10, i32* %11, align 8
  %tmp2_v4.i.i = add i32 %tmp0_v.i19.i, -68
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 11, i32* %12, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i19.i, -64
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 23, i32* %13, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i19.i, -60
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 44, i32* %14, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i19.i, -56
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 8, i32* %15, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i19.i, -52
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 15, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i19.i, -48
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %17, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i19.i, -44
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 9, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i19.i, -40
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 12, i32* %19, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i19.i, -36
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 45, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i19.i, -32
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 56, i32* %21, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i19.i, -28
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 45, i32* %22, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i19.i, -24
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 45, i32* %23, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i19.i, -76
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 13, i32* %24, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i19.i, -92
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 13, i32* %25, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i19.i, -96
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %26, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i19.i, -100
  %27 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517459, i32* %27, align 4
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i19.i, -104
  %28 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 %tmp2_v4.i22.i, i32* %28, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i19.i, -108
  %29 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %29, align 4
  %tmp2_v2.i21.i.i = add i32 %tmp0_v.i19.i, -116
  %30 = inttoptr i32 %tmp2_v2.i21.i.i to i32*
  store i32 134517619, i32* %30, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i19.i, -128
  %31 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 0, i32* %31, align 16
  %tmp2_v2.i8.i.i = add i32 %tmp0_v.i19.i, -132
  %32 = inttoptr i32 %tmp2_v2.i8.i.i to i32*
  store i32 134517635, i32* %32, align 4
  %arg.i.i.i = load i32, i32* %31, align 16
  %33 = tail call i32 @time(i32 %arg.i.i.i)
  store i32 %33, i32* %31, align 16
  store i32 134517647, i32* %32, align 4
  %arg.i.i3.i = load i32, i32* %31, align 16
  tail call void @srand(i32 %arg.i.i3.i)
  %34 = load i32, i32* %25, align 4
  %tmp0_v2.i14.i.i = add i32 %34, -1
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i19.i, -120
  %35 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp0_v2.i14.i.i, i32* %35, align 8
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i19.i, -124
  %36 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %26, align 16
  store i32 %37, i32* %31, align 16
  store i32 134517670, i32* %32, align 4
  %38 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_quicksort_recursion(i32 %tmp2_v2.i8.i.i, i32 0, i32 %tmp2_v.i17.i.i, i32 134529024, i32 %tmp2_v.i18.i)
  %39 = extractvalue { i32, i32, i32, i32, i32 } %38, 2
  %40 = extractvalue { i32, i32, i32, i32, i32 } %38, 4
  %tmp2_v.i.i.i = add i32 %39, -4
  %41 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %42 = load i32, i32* %41, align 4
  %43 = inttoptr i32 %39 to i32*
  %44 = load i32, i32* %43, align 4
  %tmp4_v4.i.i.i = add i32 %39, 8
  %tmp2_v.i41.i = add i32 %44, -72
  %45 = inttoptr i32 %tmp2_v.i41.i to i32*
  %tmp2_v1.i45.i = add i32 %44, -68
  %46 = inttoptr i32 %tmp2_v1.i45.i to i32*
  store i32 0, i32* %45, align 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %BB_80492DF.i.lr.ph, label %.BB_8049305.i_crit_edge

.BB_8049305.i_crit_edge:                          ; preds = %0
  %.pre = inttoptr i32 %tmp4_v4.i.i.i to i32*
  %.pre7 = add i32 %39, 4
  %.pre8 = inttoptr i32 %.pre7 to i32*
  br label %BB_8049305.i

BB_80492DF.i.lr.ph:                               ; preds = %0
  %49 = extractvalue { i32, i32, i32, i32, i32 } %38, 1
  %tmp2_v1.i52.i = add i32 %44, -64
  %tmp2_v5.i58.i = add i32 %39, 12
  %50 = inttoptr i32 %tmp2_v5.i58.i to i32*
  %tmp2_v6.i60.i = add i32 %42, -8184
  %51 = inttoptr i32 %tmp4_v4.i.i.i to i32*
  %tmp2_v8.i62.i = add i32 %39, 4
  %52 = inttoptr i32 %tmp2_v8.i62.i to i32*
  br label %BB_80492DF.i

BB_8049305.i:                                     ; preds = %BB_80492DF.i, %.BB_8049305.i_crit_edge
  %.pre-phi9 = phi i32* [ %.pre8, %.BB_8049305.i_crit_edge ], [ %52, %BB_80492DF.i ]
  %.pre-phi = phi i32* [ %.pre, %.BB_8049305.i_crit_edge ], [ %51, %BB_80492DF.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517519, i32* %.pre-phi9, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 4
  %53 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  ret void

BB_80492DF.i:                                     ; preds = %BB_80492DF.i, %BB_80492DF.i.lr.ph
  %r_edx.06 = phi i32 [ %49, %BB_80492DF.i.lr.ph ], [ %58, %BB_80492DF.i ]
  %storemerge5 = phi i32 [ 0, %BB_80492DF.i.lr.ph ], [ %tmp0_v2.i.i, %BB_80492DF.i ]
  %tmp4_v.i53.i = shl i32 %storemerge5, 2
  %tmp2_v2.i54.i = add i32 %tmp2_v1.i52.i, %tmp4_v.i53.i
  %54 = inttoptr i32 %tmp2_v2.i54.i to i32*
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %50, align 4
  store i32 %tmp2_v6.i60.i, i32* %51, align 4
  store i32 134517494, i32* %52, align 4
  %56 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %40, i32 inreg noundef %r_edx.06, i32 noundef %tmp4_v4.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %57 = lshr i64 %56, 32
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %45, align 4
  %tmp0_v2.i.i = add i32 %59, 1
  store i32 %tmp0_v2.i.i, i32* %45, align 4
  %60 = load i32, i32* %46, align 4
  %61 = icmp slt i32 %tmp0_v2.i.i, %60
  br i1 %61, label %BB_80492DF.i, label %BB_8049305.i
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
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{i32 0, i32 1, i32 2, i32 3, i32 4}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @quicksort505 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack504, i32 0, i32 8092) to i32)) nounwind
