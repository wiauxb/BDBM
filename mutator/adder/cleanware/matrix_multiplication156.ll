; Mutation 156
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack155 = internal global [8092 x i32] zeroinitializer, align 16
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

; Function Attrs: norecurse nounwind
define internal fastcc void @matrix_multiplication156(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i4.i = add i32 %arg_esp, 4
  %tmp0_v.i5.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i7.i = add i32 %tmp0_v.i5.i, -4
  %3 = inttoptr i32 %tmp2_v3.i7.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i5.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i5.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i5.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i4.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i5.i, -164
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517236, i32* %7, align 4
  %tmp4_v.i31.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i5.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i35.i = add i32 %tmp0_v.i5.i, -116
  %11 = inttoptr i32 %tmp2_v3.i35.i to i32*
  store i32 2, i32* %11, align 4
  %tmp2_v4.i36.i = add i32 %tmp0_v.i5.i, -112
  %12 = inttoptr i32 %tmp2_v4.i36.i to i32*
  store i32 1, i32* %12, align 16
  %tmp2_v5.i37.i = add i32 %tmp0_v.i5.i, -108
  %13 = inttoptr i32 %tmp2_v5.i37.i to i32*
  store i32 0, i32* %13, align 4
  %tmp2_v6.i38.i = add i32 %tmp0_v.i5.i, -104
  %14 = inttoptr i32 %tmp2_v6.i38.i to i32*
  store i32 3, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i5.i, -100
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1, i32* %15, align 4
  %tmp2_v8.i39.i = add i32 %tmp0_v.i5.i, -96
  %16 = inttoptr i32 %tmp2_v8.i39.i to i32*
  store i32 0, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i5.i, -92
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i5.i, -88
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1, i32* %18, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i5.i, -84
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 2, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i5.i, -80
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1, i32* %20, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i5.i, -76
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 3, i32* %21, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i5.i, -72
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 0, i32* %22, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i5.i, -68
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 2, i32* %23, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i5.i, -64
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 1, i32* %24, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i5.i, -60
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 1, i32* %25, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i5.i, -56
  %26 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 1, i32* %26, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i5.i, -52
  %27 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i5.i, -48
  %28 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 0, i32* %28, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i5.i, -44
  %29 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 3, i32* %29, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i5.i, -40
  %30 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 3, i32* %30, align 8
  %tmp2_v23.i.i = add i32 %tmp0_v.i5.i, -36
  %31 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 3, i32* %31, align 4
  %tmp2_v24.i.i = add i32 %tmp0_v.i5.i, -32
  %32 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 0, i32* %32, align 16
  %tmp2_v25.i.i = add i32 %tmp0_v.i5.i, -28
  %33 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 2, i32* %33, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i5.i, -24
  %34 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 2, i32* %34, align 8
  %tmp2_v28.i.i = add i32 %tmp0_v.i5.i, -152
  %tmp2_v29.i.i = add i32 %tmp0_v.i5.i, -168
  %35 = inttoptr i32 %tmp2_v29.i.i to i32*
  store i32 %tmp2_v28.i.i, i32* %35, align 8
  %tmp2_v31.i.i = add i32 %tmp0_v.i5.i, -172
  %36 = inttoptr i32 %tmp2_v31.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %36, align 4
  %tmp2_v33.i.i = add i32 %tmp0_v.i5.i, -176
  %37 = inttoptr i32 %tmp2_v33.i.i to i32*
  store i32 %tmp2_v3.i35.i, i32* %37, align 16
  %tmp2_v34.i.i = add i32 %tmp0_v.i5.i, -180
  %38 = inttoptr i32 %tmp2_v34.i.i to i32*
  store i32 134517444, i32* %38, align 4
  %tmp2_v.i41.i.i = add i32 %tmp0_v.i5.i, -184
  %39 = inttoptr i32 %tmp2_v.i41.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %39, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i5.i, -188
  %40 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %40, align 4
  %tmp2_v2.i44.i.i = add i32 %tmp0_v.i5.i, -208
  %41 = inttoptr i32 %tmp2_v2.i44.i.i to i32*
  store i32 134517610, i32* %41, align 16
  %tmp2_v.i5.i.i = add i32 %tmp0_v.i5.i, -200
  %42 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i5.i, -196
  %43 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i5.i, -192
  %44 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 0, i32* %42, align 8
  br label %BB_804937B.i.i

BB_8049387.i.i:                                   ; preds = %BB_804941A.i.i, %BB_804937B.i.i
  %storemerge1722.i = phi i32 [ 0, %BB_804937B.i.i ], [ %tmp0_v1.i9.i.i, %BB_804941A.i.i ]
  %45 = load i32, i32* %42, align 8
  %tmp0_v3.i.i.i = mul i32 %45, 12
  %46 = load i32, i32* %35, align 8
  %tmp4_v.i.i.i3 = shl i32 %storemerge1722.i, 2
  %tmp0_v6.i.i.i = add i32 %46, %tmp4_v.i.i.i3
  %tmp2_v9.i.i.i = add i32 %tmp0_v6.i.i.i, %tmp0_v3.i.i.i
  %47 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 0, i32* %47, align 4
  store i32 0, i32* %44, align 16
  br label %BB_80493AD.i.i

BB_804937B.i.i:                                   ; preds = %BB_8049428.i.i, %0
  store i32 0, i32* %43, align 4
  br label %BB_8049387.i.i

BB_804941A.i.i:                                   ; preds = %BB_80493AD.i.i
  %48 = load i32, i32* %43, align 4
  %tmp0_v1.i9.i.i = add i32 %48, 1
  store i32 %tmp0_v1.i9.i.i, i32* %43, align 4
  %49 = icmp slt i32 %tmp0_v1.i9.i.i, 3
  br i1 %49, label %BB_8049387.i.i, label %BB_8049428.i.i

BB_80493AD.i.i:                                   ; preds = %BB_80493AD.i.i, %BB_8049387.i.i
  %storemerge1821.i = phi i32 [ 0, %BB_8049387.i.i ], [ %tmp0_v57.i.i.i, %BB_80493AD.i.i ]
  %50 = load i32, i32* %42, align 8
  %tmp0_v3.i27.i.i = mul i32 %50, 12
  %51 = load i32, i32* %35, align 8
  %tmp0_v6.i30.i.i = add i32 %tmp0_v3.i27.i.i, %51
  %52 = load i32, i32* %43, align 4
  %tmp4_v.i33.i.i = shl i32 %52, 2
  %tmp2_v9.i34.i.i = add i32 %tmp0_v6.i30.i.i, %tmp4_v.i33.i.i
  %53 = inttoptr i32 %tmp2_v9.i34.i.i to i32*
  %54 = load i32, i32* %53, align 4
  %tmp0_v14.i.i.i = shl i32 %50, 4
  %55 = load i32, i32* %37, align 16
  %tmp4_v20.i.i.i = shl i32 %storemerge1821.i, 2
  %tmp0_v17.i.i.i = add i32 %tmp0_v14.i.i.i, %tmp4_v20.i.i.i
  %tmp2_v21.i.i.i = add i32 %tmp0_v17.i.i.i, %55
  %56 = inttoptr i32 %tmp2_v21.i.i.i to i32*
  %57 = load i32, i32* %56, align 4
  %tmp0_v28.i.i.i = mul i32 %storemerge1821.i, 12
  %58 = load i32, i32* %36, align 4
  %tmp0_v31.i.i.i = add i32 %tmp4_v.i33.i.i, %tmp0_v28.i.i.i
  %tmp2_v35.i.i.i = add i32 %tmp0_v31.i.i.i, %58
  %59 = inttoptr i32 %tmp2_v35.i.i.i to i32*
  %60 = load i32, i32* %59, align 4
  %tmp15_v37.i.i.i = mul i32 %60, %57
  %tmp0_v50.i.i.i = add i32 %tmp15_v37.i.i.i, %54
  store i32 %tmp0_v50.i.i.i, i32* %53, align 4
  %61 = load i32, i32* %44, align 16
  %tmp0_v57.i.i.i = add i32 %61, 1
  store i32 %tmp0_v57.i.i.i, i32* %44, align 16
  %62 = icmp slt i32 %tmp0_v57.i.i.i, 4
  br i1 %62, label %BB_80493AD.i.i, label %BB_804941A.i.i

BB_8049428.i.i:                                   ; preds = %BB_804941A.i.i
  %63 = load i32, i32* %42, align 8
  %tmp0_v1.i53.i.i = add i32 %63, 1
  store i32 %tmp0_v1.i53.i.i, i32* %42, align 8
  %64 = icmp slt i32 %tmp0_v1.i53.i.i, 3
  br i1 %64, label %BB_804937B.i.i, label %Func_matrix_mult.exit

Func_matrix_mult.exit:                            ; preds = %BB_8049428.i.i
  %65 = load i32, i32* %40, align 4
  %66 = load i32, i32* %39, align 8
  %tmp2_v.i48.i = add i32 %66, -152
  %67 = inttoptr i32 %tmp2_v.i48.i to i32*
  %tmp2_v.i2.i = add i32 %66, -148
  %68 = inttoptr i32 %tmp2_v.i2.i to i32*
  %tmp2_v6.i56.i = add i32 %66, -144
  %tmp2_v11.i62.i = add i32 %65, -8184
  store i32 0, i32* %67, align 4
  br label %BB_80492D3.i

BB_80492D3.i:                                     ; preds = %BB_804931D.i, %Func_matrix_mult.exit
  store i32 0, i32* %68, align 4
  br label %BB_80492DF.i

BB_804931D.i:                                     ; preds = %BB_80492DF.i
  store i32 10, i32* %37, align 16
  store i32 134517543, i32* %38, align 4
  %arg.i.i = load i32, i32* %37, align 16
  %69 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %70 = load i32, i32* %67, align 4
  %tmp0_v2.i.i = add i32 %70, 1
  store i32 %tmp0_v2.i.i, i32* %67, align 4
  %71 = icmp slt i32 %tmp0_v2.i.i, 3
  br i1 %71, label %BB_80492D3.i, label %.exit

BB_80492DF.i:                                     ; preds = %BB_80492DF.i, %BB_80492D3.i
  %storemerge16 = phi i32 [ 0, %BB_80492D3.i ], [ %tmp0_v2.i14.i, %BB_80492DF.i ]
  %72 = load i32, i32* %67, align 4
  %tmp0_v2.i53.i = mul i32 %72, 3
  %tmp0_v5.i.i = add i32 %tmp0_v2.i53.i, %storemerge16
  %tmp4_v.i57.i = shl i32 %tmp0_v5.i.i, 2
  %tmp2_v7.i58.i = add i32 %tmp2_v6.i56.i, %tmp4_v.i57.i
  %73 = inttoptr i32 %tmp2_v7.i58.i to i32*
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %36, align 4
  store i32 %tmp2_v11.i62.i, i32* %37, align 16
  store i32 134517514, i32* %38, align 4
  %75 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v50.i.i.i, i32 inreg noundef %storemerge16, i32 noundef %tmp2_v33.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %76 = load i32, i32* %68, align 4
  %tmp0_v2.i14.i = add i32 %76, 1
  store i32 %tmp0_v2.i14.i, i32* %68, align 4
  %77 = icmp slt i32 %tmp0_v2.i14.i, 3
  br i1 %77, label %BB_80492DF.i, label %BB_804931D.i

.exit:                                            ; preds = %BB_804931D.i
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @matrix_multiplication156 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack155, i32 0, i32 8092) to i32)) nounwind
