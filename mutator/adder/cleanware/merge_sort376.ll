; Mutation 376
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack375 = internal global [8092 x i32] zeroinitializer, align 16
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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: nofree nosync nounwind
define internal fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx, i32 %arg_ecx) unnamed_addr  nofree nosync nounwind  !retregs !12 {
Func_80492FA.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -32
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517498, i32* %1, align 4
  %tmp2_v.i5.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i5.i to i32*
  %3 = load i32, i32* %2, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, 12
  %4 = inttoptr i32 %tmp2_v2.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %.not.i.i = icmp sgt i32 %5, %3
  br i1 %.not.i.i, label %BB_8049307.i, label %.exit

BB_8049307.i:                                     ; preds = %Func_80492FA.exit.i
  %tmp0_v2.i.i = sub i32 %5, %3
  %tmp0_v3.i.i = lshr i32 %tmp0_v2.i.i, 31
  %tmp0_v4.i.i = add i32 %tmp0_v3.i.i, %tmp0_v2.i.i
  %tmp0_v5.i.i = ashr i32 %tmp0_v4.i.i, 1
  %tmp0_v8.i.i = add i32 %tmp0_v5.i.i, %3
  %tmp2_v9.i.i = add i32 %arg_esp, -16
  %6 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp0_v8.i.i, i32* %6, align 4
  %tmp2_v13.i.i = add i32 %arg_esp, -36
  %7 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp0_v8.i.i, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %tmp2_v16.i.i = add i32 %arg_esp, -40
  %9 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v17.i.i = add i32 %arg_esp, 4
  %10 = inttoptr i32 %tmp2_v17.i.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v19.i.i = add i32 %arg_esp, -44
  %12 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v20.i.i = add i32 %arg_esp, -48
  %13 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517553, i32* %13, align 4
  %14 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %tmp2_v20.i.i, i32 %tmp0_v5.i.i, i32 %tmp2_v.i.i, i32 %arg_ebx, i32 %arg_ecx)
  %15 = extractvalue { i32, i32, i32, i32, i32 } %14, 0
  %16 = extractvalue { i32, i32, i32, i32, i32 } %14, 1
  %17 = extractvalue { i32, i32, i32, i32, i32 } %14, 2
  %18 = extractvalue { i32, i32, i32, i32, i32 } %14, 3
  %19 = extractvalue { i32, i32, i32, i32, i32 } %14, 4
  %tmp2_v.i33.i = add i32 %17, -12
  %20 = inttoptr i32 %tmp2_v.i33.i to i32*
  %21 = load i32, i32* %20, align 4
  %tmp0_v2.i35.i = add i32 %21, 1
  %tmp2_v4.i.i = add i32 %17, 16
  %22 = inttoptr i32 %tmp2_v4.i.i to i32*
  %23 = load i32, i32* %22, align 4
  %tmp2_v6.i38.i = add i32 %15, 8
  %24 = inttoptr i32 %tmp2_v6.i38.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v7.i.i = add i32 %15, 4
  %25 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp0_v2.i35.i, i32* %25, align 4
  %tmp2_v8.i39.i = add i32 %17, 8
  %26 = inttoptr i32 %tmp2_v8.i39.i to i32*
  %27 = load i32, i32* %26, align 4
  %28 = inttoptr i32 %15 to i32*
  store i32 %27, i32* %28, align 4
  %tmp2_v11.i40.i = add i32 %15, -4
  %29 = inttoptr i32 %tmp2_v11.i40.i to i32*
  store i32 134517577, i32* %29, align 4
  %30 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %tmp2_v11.i40.i, i32 %16, i32 %17, i32 %18, i32 %19)
  %31 = extractvalue { i32, i32, i32, i32, i32 } %30, 0
  %32 = extractvalue { i32, i32, i32, i32, i32 } %30, 2
  %33 = extractvalue { i32, i32, i32, i32, i32 } %30, 3
  %tmp2_v.i16.i = add i32 %32, 16
  %34 = inttoptr i32 %tmp2_v.i16.i to i32*
  %35 = load i32, i32* %34, align 4
  %tmp2_v2.i18.i = add i32 %31, 12
  %36 = inttoptr i32 %tmp2_v2.i18.i to i32*
  store i32 %35, i32* %36, align 4
  %tmp2_v3.i.i = add i32 %32, -12
  %37 = inttoptr i32 %tmp2_v3.i.i to i32*
  %38 = load i32, i32* %37, align 4
  %tmp2_v5.i.i = add i32 %31, 8
  %39 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %38, i32* %39, align 4
  %tmp2_v6.i20.i = add i32 %32, 12
  %40 = inttoptr i32 %tmp2_v6.i20.i to i32*
  %41 = load i32, i32* %40, align 4
  %tmp2_v8.i.i = add i32 %31, 4
  %42 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 %41, i32* %42, align 4
  %tmp2_v9.i22.i = add i32 %32, 8
  %43 = inttoptr i32 %tmp2_v9.i22.i to i32*
  %44 = load i32, i32* %43, align 4
  %45 = inttoptr i32 %31 to i32*
  store i32 %44, i32* %45, align 4
  %tmp2_v12.i.i = add i32 %31, -4
  %46 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517597, i32* %46, align 4
  %tmp2_v.i98.i.i = add i32 %31, -8
  %47 = inttoptr i32 %tmp2_v.i98.i.i to i32*
  store i32 %32, i32* %47, align 4
  %tmp2_v1.i100.i.i = add i32 %31, -12
  %48 = inttoptr i32 %tmp2_v1.i100.i.i to i32*
  store i32 %33, i32* %48, align 4
  %tmp2_v2.i103.i.i = add i32 %31, -84
  %49 = inttoptr i32 %tmp2_v2.i103.i.i to i32*
  store i32 134517619, i32* %49, align 4
  %tmp4_v.i.i.i.i = add i32 %31, -80
  %50 = load i32, i32* %45, align 4
  %tmp2_v2.i172.i.i = add i32 %31, -68
  %51 = inttoptr i32 %tmp2_v2.i172.i.i to i32*
  store i32 %50, i32* %51, align 4
  %tmp4_v.i173.i.b.i = load i1, i1* @segs.0, align 1
  %52 = inttoptr i32 %arg_esp to i32*
  %53 = load i32, i32* %52, align 4
  %tmp2_v5.i176.i.i = add i32 %31, -20
  %54 = inttoptr i32 %tmp2_v5.i176.i.i to i32*
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %39, align 4
  %56 = load i32, i32* %42, align 4
  %tmp0_v9.i182.i.i = add i32 %55, 1
  %tmp0_v10.i183.i.i = sub i32 %tmp0_v9.i182.i.i, %56
  %tmp2_v11.i184.i.i = add i32 %31, -44
  %57 = inttoptr i32 %tmp2_v11.i184.i.i to i32*
  store i32 %tmp0_v10.i183.i.i, i32* %57, align 4
  %58 = load i32, i32* %36, align 4
  %59 = load i32, i32* %39, align 4
  %tmp0_v16.i187.i.i = sub i32 %58, %59
  %tmp2_v17.i188.i.i = add i32 %31, -40
  %60 = inttoptr i32 %tmp2_v17.i188.i.i to i32*
  store i32 %tmp0_v16.i187.i.i, i32* %60, align 4
  %61 = load i32, i32* %57, align 4
  %tmp2_v20.i191.i.i = add i32 %61, -1
  %tmp2_v21.i.i.i = add i32 %31, -36
  %62 = inttoptr i32 %tmp2_v21.i.i.i to i32*
  store i32 %tmp2_v20.i191.i.i, i32* %62, align 4
  %tmp4_v22.i.i.i = shl i32 %61, 2
  %tmp0_v23.i.i.i = add i32 %tmp4_v22.i.i.i, 15
  %tmp0_v.i105.i.i = and i32 %tmp0_v23.i.i.i, 4080
  %tmp0_v1.i107.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v.i105.i.i
  %tmp0_v4.i.i.i = add i32 %tmp0_v1.i107.i.i, 3
  %tmp0_v6.i.i.i = and i32 %tmp0_v4.i.i.i, -4
  %tmp2_v.i28.i.i = add i32 %31, -32
  %63 = inttoptr i32 %tmp2_v.i28.i.i to i32*
  store i32 %tmp0_v6.i.i.i, i32* %63, align 4
  %64 = load i32, i32* %60, align 4
  %tmp2_v9.i29.i.i = add i32 %64, -1
  %tmp2_v10.i.i.i = add i32 %31, -28
  %65 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 %tmp2_v9.i29.i.i, i32* %65, align 4
  %tmp4_v.i30.i.i = shl i32 %64, 2
  %tmp0_v11.i.i.i = add i32 %tmp4_v.i30.i.i, 15
  %tmp0_v15.i31.i.i = and i32 %tmp0_v11.i.i.i, -4096
  %tmp0_v17.i.i.i = sub i32 %tmp0_v1.i107.i.i, %tmp0_v15.i31.i.i
  %tmp0_v.i111.i.i = and i32 %tmp0_v11.i.i.i, 4080
  %tmp0_v4.i160.i.i = sub i32 %tmp0_v4.i.i.i, %tmp0_v.i111.i.i
  %tmp0_v6.i163.i.i = and i32 %tmp0_v4.i160.i.i, -4
  %tmp2_v.i165.i.i = add i32 %31, -24
  %66 = inttoptr i32 %tmp2_v.i165.i.i to i32*
  store i32 %tmp0_v6.i163.i.i, i32* %66, align 4
  %tmp2_v7.i166.i.i = add i32 %31, -60
  %67 = inttoptr i32 %tmp2_v7.i166.i.i to i32*
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %57, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %BB_80494A3.i.i, label %BB_80494CE.i.i

BB_8049562.i.i:                                   ; preds = %BB_804951B.i.BB_8049562.i_crit_edge.i, %BB_804952B.i.i
  %.pre-phi.i = phi i32* [ %.pre30.i, %BB_804951B.i.BB_8049562.i_crit_edge.i ], [ %78, %BB_804952B.i.i ]
  %70 = phi i32 [ %.pre27.i, %BB_804951B.i.BB_8049562.i_crit_edge.i ], [ %108, %BB_804952B.i.i ]
  br label %BB_8049581.i.i

BB_8049505.i.i:                                   ; preds = %BB_80494CE.i.i, %BB_80494D7.i.i
  %r_ecx.3.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_80494CE.i.i ], [ %84, %BB_80494D7.i.i ]
  %r_edx.3.lcssa.i = phi i32 [ %r_edx.1.lcssa.i, %BB_80494CE.i.i ], [ %storemerge817.i, %BB_80494D7.i.i ]
  %tmp2_v.i34.i.i = add i32 %31, -48
  %71 = inttoptr i32 %tmp2_v.i34.i.i to i32*
  store i32 0, i32* %71, align 4
  %tmp2_v1.i35.i.i = add i32 %31, -52
  %72 = inttoptr i32 %tmp2_v1.i35.i.i to i32*
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %42, align 4
  %tmp2_v3.i37.i.i = add i32 %31, -56
  %74 = inttoptr i32 %tmp2_v3.i37.i.i to i32*
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %36, align 4
  %.not.i.i20.i = icmp sgt i32 %73, %75
  br i1 %.not.i.i20.i, label %Func_merge_sorted_arrays.exit, label %BB_804951B.i.i

BB_804952B.i.i:                                   ; preds = %BB_8049523.i.i
  %76 = load i32, i32* %111, align 4
  %77 = load i32, i32* %66, align 4
  %tmp4_v9.i.i.i = shl i32 %108, 2
  %tmp2_v10.i49.i.i = add i32 %77, %tmp4_v9.i.i.i
  %78 = inttoptr i32 %tmp2_v10.i49.i.i to i32*
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %BB_8049562.i.i, label %BB_8049581.i.i

BB_80494D7.i.i:                                   ; preds = %BB_80494CE.i.i, %BB_80494D7.i.i
  %storemerge817.i = phi i32 [ %tmp0_v17.i71.i.i, %BB_80494D7.i.i ], [ 0, %BB_80494CE.i.i ]
  %81 = load i32, i32* %39, align 4
  %tmp2_v1.i56.i.i = add nsw i32 %storemerge817.i, 1
  %tmp0_v4.i59.i.i = add i32 %tmp2_v1.i56.i.i, %81
  %tmp4_v.i60.i.i = shl i32 %tmp0_v4.i59.i.i, 2
  %82 = load i32, i32* %51, align 4
  %tmp0_v7.i63.i.i = add i32 %tmp4_v.i60.i.i, %82
  %83 = inttoptr i32 %tmp0_v7.i63.i.i to i32*
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %66, align 4
  %tmp4_v13.i.i.i = shl i32 %storemerge817.i, 2
  %tmp2_v14.i69.i.i = add i32 %85, %tmp4_v13.i.i.i
  %86 = inttoptr i32 %tmp2_v14.i69.i.i to i32*
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %105, align 4
  %tmp0_v17.i71.i.i = add i32 %87, 1
  store i32 %tmp0_v17.i71.i.i, i32* %105, align 4
  %88 = load i32, i32* %60, align 4
  %89 = icmp slt i32 %tmp0_v17.i71.i.i, %88
  br i1 %89, label %BB_80494D7.i.i, label %BB_8049505.i.i

BB_80494A3.i.i:                                   ; preds = %BB_80494A3.i.i, %BB_8049307.i
  %storemerge15.i = phi i32 [ %tmp0_v16.i90.i.i, %BB_80494A3.i.i ], [ 0, %BB_8049307.i ]
  %90 = load i32, i32* %42, align 4
  %tmp0_v3.i80.i.i = add i32 %90, %storemerge15.i
  %tmp4_v.i81.i.i = shl i32 %tmp0_v3.i80.i.i, 2
  %91 = load i32, i32* %51, align 4
  %tmp0_v6.i84.i.i = add i32 %tmp4_v.i81.i.i, %91
  %92 = inttoptr i32 %tmp0_v6.i84.i.i to i32*
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %63, align 4
  %tmp4_v12.i.i.i = shl i32 %storemerge15.i, 2
  %tmp2_v13.i.i.i = add i32 %94, %tmp4_v12.i.i.i
  %95 = inttoptr i32 %tmp2_v13.i.i.i to i32*
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %67, align 4
  %tmp0_v16.i90.i.i = add i32 %96, 1
  store i32 %tmp0_v16.i90.i.i, i32* %67, align 4
  %97 = load i32, i32* %57, align 4
  %98 = icmp slt i32 %tmp0_v16.i90.i.i, %97
  br i1 %98, label %BB_80494A3.i.i, label %BB_80494CE.i.i

BB_8049581.i.i:                                   ; preds = %BB_8049523.i.i, %BB_804952B.i.i, %BB_8049562.i.i
  %.pre-phi34.sink.i = phi i32* [ %.pre-phi.i, %BB_8049562.i.i ], [ %111, %BB_8049523.i.i ], [ %111, %BB_804952B.i.i ]
  %.sink37.i = phi i32* [ %72, %BB_8049562.i.i ], [ %71, %BB_8049523.i.i ], [ %71, %BB_804952B.i.i ]
  %r_edx.2.i = phi i32 [ %70, %BB_8049562.i.i ], [ %112, %BB_8049523.i.i ], [ %112, %BB_804952B.i.i ]
  %tmp4_v.i132.i.i = shl i32 %storemerge921.i, 2
  %99 = load i32, i32* %51, align 4
  %tmp2_v3.i135.i.i = add i32 %99, %tmp4_v.i132.i.i
  %100 = load i32, i32* %.pre-phi34.sink.i, align 4
  %101 = inttoptr i32 %tmp2_v3.i135.i.i to i32*
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %.sink37.i, align 4
  %tmp0_v13.i145.i.i = add i32 %102, 1
  store i32 %tmp0_v13.i145.i.i, i32* %.sink37.i, align 4
  %103 = load i32, i32* %74, align 4
  %tmp0_v1.i119.i.i = add i32 %103, 1
  store i32 %tmp0_v1.i119.i.i, i32* %74, align 4
  %104 = load i32, i32* %36, align 4
  %.not.i.i.i = icmp sgt i32 %tmp0_v1.i119.i.i, %104
  br i1 %.not.i.i.i, label %Func_merge_sorted_arrays.exit, label %BB_804951B.i.i

BB_80494CE.i.i:                                   ; preds = %BB_80494A3.i.i, %BB_8049307.i
  %r_ecx.1.lcssa.i = phi i32 [ %tmp0_v17.i.i.i, %BB_8049307.i ], [ %93, %BB_80494A3.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %tmp0_v.i111.i.i, %BB_8049307.i ], [ %storemerge15.i, %BB_80494A3.i.i ]
  %tmp2_v.i128.i.i = add i32 %31, -64
  %105 = inttoptr i32 %tmp2_v.i128.i.i to i32*
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* %60, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %BB_80494D7.i.i, label %BB_8049505.i.i

BB_8049523.i.i:                                   ; preds = %BB_804951B.i.i
  %108 = load i32, i32* %72, align 4
  %109 = load i32, i32* %60, align 4
  %.not.i152.i.i = icmp slt i32 %108, %109
  %110 = load i32, i32* %63, align 4
  %tmp4_v.i43.i.i = shl i32 %112, 2
  %tmp2_v3.i44.i.i = add i32 %110, %tmp4_v.i43.i.i
  %111 = inttoptr i32 %tmp2_v3.i44.i.i to i32*
  br i1 %.not.i152.i.i, label %BB_804952B.i.i, label %BB_8049581.i.i

BB_804951B.i.i:                                   ; preds = %BB_8049581.i.i, %BB_8049505.i.i
  %storemerge921.i = phi i32 [ %tmp0_v1.i119.i.i, %BB_8049581.i.i ], [ %73, %BB_8049505.i.i ]
  %112 = load i32, i32* %71, align 4
  %113 = load i32, i32* %57, align 4
  %.not.i206.i.i = icmp slt i32 %112, %113
  br i1 %.not.i206.i.i, label %BB_8049523.i.i, label %BB_804951B.i.BB_8049562.i_crit_edge.i

BB_804951B.i.BB_8049562.i_crit_edge.i:            ; preds = %BB_804951B.i.i
  %.pre26.i = load i32, i32* %66, align 4
  %.pre27.i = load i32, i32* %72, align 4
  %.pre28.i = shl i32 %.pre27.i, 2
  %.pre29.i = add i32 %.pre28.i, %.pre26.i
  %.pre30.i = inttoptr i32 %.pre29.i to i32*
  br label %BB_8049562.i.i

Func_merge_sorted_arrays.exit:                    ; preds = %BB_8049581.i.i, %BB_8049505.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.3.lcssa.i, %BB_8049505.i.i ], [ %tmp2_v3.i135.i.i, %BB_8049581.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ %r_edx.3.lcssa.i, %BB_8049505.i.i ], [ %r_edx.2.i, %BB_8049581.i.i ]
  %114 = load i32, i32* %48, align 4
  %115 = load i32, i32* %47, align 4
  %.pre = inttoptr i32 %115 to i32*
  br label %.exit

.exit:                                            ; preds = %Func_merge_sorted_arrays.exit, %Func_80492FA.exit.i
  %.pre-phi = phi i32* [ %0, %Func_80492FA.exit.i ], [ %.pre, %Func_merge_sorted_arrays.exit ]
  %r_ebx.0 = phi i32 [ %arg_ebx, %Func_80492FA.exit.i ], [ %114, %Func_merge_sorted_arrays.exit ]
  %r_ecx.0 = phi i32 [ %arg_ecx, %Func_80492FA.exit.i ], [ %r_ecx.0.lcssa.i, %Func_merge_sorted_arrays.exit ]
  %r_edx.0 = phi i32 [ %arg_edx, %Func_80492FA.exit.i ], [ %r_edx.0.lcssa.i, %Func_merge_sorted_arrays.exit ]
  %r_ebp.0 = phi i32 [ %tmp2_v.i.i, %Func_80492FA.exit.i ], [ %115, %Func_merge_sorted_arrays.exit ]
  %116 = load i32, i32* %.pre-phi, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %r_edx.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %116, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %r_ebx.0, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %r_ecx.0, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}

; Function Attrs: norecurse nounwind
define internal fastcc void @merge_sort376(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !13 {
  %tmp2_v.i5.i = add i32 %arg_esp, 4
  %tmp0_v.i6.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i8.i = add i32 %tmp0_v.i6.i, -4
  %3 = inttoptr i32 %tmp2_v3.i8.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i6.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i10.i = add i32 %tmp0_v.i6.i, -12
  %5 = inttoptr i32 %tmp2_v5.i10.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i6.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i5.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i6.i, -84
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i51.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i55.i = add i32 %tmp0_v.i6.i, -20
  %10 = inttoptr i32 %tmp2_v2.i55.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i56.i = add i32 %tmp0_v.i6.i, -60
  %11 = inttoptr i32 %tmp2_v3.i56.i to i32*
  store i32 9, i32* %11, align 4
  %tmp2_v4.i57.i = add i32 %tmp0_v.i6.i, -56
  %12 = inttoptr i32 %tmp2_v4.i57.i to i32*
  store i32 4, i32* %12, align 8
  %tmp2_v5.i58.i = add i32 %tmp0_v.i6.i, -52
  %13 = inttoptr i32 %tmp2_v5.i58.i to i32*
  store i32 8, i32* %13, align 4
  %tmp2_v6.i59.i = add i32 %tmp0_v.i6.i, -48
  %14 = inttoptr i32 %tmp2_v6.i59.i to i32*
  store i32 1, i32* %14, align 16
  %tmp2_v7.i60.i = add i32 %tmp0_v.i6.i, -44
  %15 = inttoptr i32 %tmp2_v7.i60.i to i32*
  store i32 7, i32* %15, align 4
  %tmp2_v8.i61.i = add i32 %tmp0_v.i6.i, -40
  %16 = inttoptr i32 %tmp2_v8.i61.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i6.i, -36
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i6.i, -32
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %18, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i6.i, -28
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 5, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i6.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i6.i, -64
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i6.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 10, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i6.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i56.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i6.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517342, i32* %24, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i6.i, -104
  %25 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %25, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i6.i, -116
  %26 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517452, i32* %26, align 4
  %27 = load i32, i32* %22, align 4
  %tmp0_v2.i8.i.i = add i32 %27, -1
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i6.i, -120
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp0_v2.i8.i.i, i32* %28, align 8
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i6.i, -124
  %29 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %23, align 16
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i6.i, -128
  %31 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 %30, i32* %31, align 16
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i6.i, -132
  %32 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134517477, i32* %32, align 4
  %33 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %tmp2_v9.i.i.i, i32 0, i32 %tmp2_v.i.i.i, i32 134529024, i32 %tmp2_v.i5.i)  nounwind 
  %34 = extractvalue { i32, i32, i32, i32, i32 } %33, 2
  %35 = extractvalue { i32, i32, i32, i32, i32 } %33, 4
  %36 = inttoptr i32 %34 to i32*
  %37 = load i32, i32* %36, align 4
  %tmp4_v3.i.i.i = add i32 %34, 8
  %tmp2_v.i48.i = add i32 %37, -60
  %38 = inttoptr i32 %tmp2_v.i48.i to i32*
  %tmp2_v1.i31.i = add i32 %37, -56
  %39 = inttoptr i32 %tmp2_v1.i31.i to i32*
  store i32 0, i32* %38, align 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_804926A.i.lr.ph, label %.BB_8049290.i_crit_edge

.BB_8049290.i_crit_edge:                          ; preds = %0
  %.pre = inttoptr i32 %tmp4_v3.i.i.i to i32*
  %.pre7 = add i32 %34, 4
  %.pre8 = inttoptr i32 %.pre7 to i32*
  br label %BB_8049290.i

BB_804926A.i.lr.ph:                               ; preds = %0
  %42 = extractvalue { i32, i32, i32, i32, i32 } %33, 3
  %43 = extractvalue { i32, i32, i32, i32, i32 } %33, 1
  %tmp2_v1.i19.i = add i32 %37, -52
  %tmp2_v5.i24.i = add i32 %34, 12
  %44 = inttoptr i32 %tmp2_v5.i24.i to i32*
  %tmp2_v6.i26.i = add i32 %42, -8184
  %45 = inttoptr i32 %tmp4_v3.i.i.i to i32*
  %tmp2_v8.i27.i = add i32 %34, 4
  %46 = inttoptr i32 %tmp2_v8.i27.i to i32*
  br label %BB_804926A.i

BB_8049290.i:                                     ; preds = %BB_804926A.i, %.BB_8049290.i_crit_edge
  %.pre-phi9 = phi i32* [ %.pre8, %.BB_8049290.i_crit_edge ], [ %46, %BB_804926A.i ]
  %.pre-phi = phi i32* [ %.pre, %.BB_8049290.i_crit_edge ], [ %45, %BB_804926A.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517402, i32* %.pre-phi9, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 4
  %47 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  ret void

BB_804926A.i:                                     ; preds = %BB_804926A.i, %BB_804926A.i.lr.ph
  %r_edx.06 = phi i32 [ %43, %BB_804926A.i.lr.ph ], [ %52, %BB_804926A.i ]
  %storemerge5 = phi i32 [ 0, %BB_804926A.i.lr.ph ], [ %tmp0_v2.i.i, %BB_804926A.i ]
  %tmp4_v.i20.i = shl i32 %storemerge5, 2
  %tmp2_v2.i.i = add i32 %tmp2_v1.i19.i, %tmp4_v.i20.i
  %48 = inttoptr i32 %tmp2_v2.i.i to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %44, align 4
  store i32 %tmp2_v6.i26.i, i32* %45, align 4
  store i32 134517377, i32* %46, align 4
  %50 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %35, i32 inreg noundef %r_edx.06, i32 noundef %tmp4_v3.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %51 = lshr i64 %50, 32
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %38, align 4
  %tmp0_v2.i.i = add i32 %53, 1
  store i32 %tmp0_v2.i.i, i32* %38, align 4
  %54 = load i32, i32* %39, align 4
  %55 = icmp slt i32 %tmp0_v2.i.i, %54
  br i1 %55, label %BB_804926A.i, label %BB_8049290.i
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
!12 = !{i32 0, i32 1, i32 2, i32 3, i32 4}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @merge_sort376 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack375, i32 0, i32 8092) to i32)) nounwind
