; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
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
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !10
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !10
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !10
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !10
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: norecurse nounwind
define internal fastcc void @binary_searchm15161635(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i20.i = add i32 %arg_esp, 4
  %tmp0_v.i21.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i22.i = add i32 %tmp0_v.i21.i, -4
  %2 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i23.i = add i32 %tmp0_v.i21.i, -8
  %3 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i25.i = add i32 %tmp0_v.i21.i, -12
  %4 = inttoptr i32 %tmp2_v5.i25.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i21.i, -16
  %5 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 %tmp2_v.i20.i, i32* %5, align 16
  %tmp2_v8.i28.i = add i32 %tmp0_v.i21.i, -132
  %6 = inttoptr i32 %tmp2_v8.i28.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i6.i = add i32 %tmp0_v.i21.i, -20
  %9 = inttoptr i32 %tmp2_v2.i6.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i21.i, -124
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 9, i32* %10, align 4
  %tmp2_v4.i7.i = add i32 %tmp0_v.i21.i, -120
  %11 = inttoptr i32 %tmp2_v4.i7.i to i32*
  store i32 5, i32* %11, align 8
  %tmp2_v5.i8.i = add i32 %tmp0_v.i21.i, -116
  %12 = inttoptr i32 %tmp2_v5.i8.i to i32*
  store i32 13, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i21.i, -112
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 3, i32* %13, align 16
  %tmp2_v7.i9.i = add i32 %tmp0_v.i21.i, -108
  %14 = inttoptr i32 %tmp2_v7.i9.i to i32*
  store i32 8, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i21.i, -104
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 7, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i21.i, -100
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 2, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i21.i, -96
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 12, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i21.i, -92
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 6, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i21.i, -88
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 10, i32* %19, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i21.i, -84
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 4, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i21.i, -80
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 11, i32* %21, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i21.i, -76
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 1, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i21.i, -72
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 1, i32* %23, align 8
  %tmp2_v17.i.i = add i32 %tmp0_v.i21.i, -68
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 2, i32* %24, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i21.i, -64
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 3, i32* %25, align 16
  %tmp2_v19.i.i = add i32 %tmp0_v.i21.i, -60
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 4, i32* %26, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i21.i, -56
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 5, i32* %27, align 8
  %tmp2_v21.i.i = add i32 %tmp0_v.i21.i, -52
  %28 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 6, i32* %28, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i21.i, -48
  %29 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 7, i32* %29, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i21.i, -44
  %30 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 8, i32* %30, align 4
  %tmp2_v24.i.i = add i32 %tmp0_v.i21.i, -40
  %31 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 9, i32* %31, align 8
  %tmp2_v25.i.i = add i32 %tmp0_v.i21.i, -36
  %32 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 10, i32* %32, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i21.i, -32
  %33 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 11, i32* %33, align 16
  %tmp2_v27.i.i = add i32 %tmp0_v.i21.i, -28
  %34 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 12, i32* %34, align 4
  %tmp2_v28.i.i = add i32 %tmp0_v.i21.i, -24
  %35 = inttoptr i32 %tmp2_v28.i.i to i32*
  store i32 13, i32* %35, align 8
  store i32 12, i32* %6, align 4
  %tmp2_v30.i.i = add i32 %tmp0_v.i21.i, -136
  %36 = inttoptr i32 %tmp2_v30.i.i to i32*
  store i32 0, i32* %36, align 8
  %tmp2_v31.i.i = add i32 %tmp0_v.i21.i, -140
  %37 = inttoptr i32 %tmp2_v31.i.i to i32*
  store i32 12, i32* %37, align 4
  %tmp2_v33.i.i = add i32 %tmp0_v.i21.i, -144
  %38 = inttoptr i32 %tmp2_v33.i.i to i32*
  store i32 %tmp2_v16.i.i, i32* %38, align 16
  %tmp2_v34.i.i = add i32 %tmp0_v.i21.i, -148
  %39 = inttoptr i32 %tmp2_v34.i.i to i32*
  store i32 134517415, i32* %39, align 4
  %40 = tail call fastcc { i32, i32, i32, i32 } @Func_binary_search(i32 %tmp2_v34.i.i, i32 %tmp2_v4.i23.i)
  %41 = extractvalue { i32, i32, i32, i32 } %40, 0
  %42 = extractvalue { i32, i32, i32, i32 } %40, 1
  %43 = extractvalue { i32, i32, i32, i32 } %40, 2
  %44 = extractvalue { i32, i32, i32, i32 } %40, 3
  %tmp2_v.i.i = add i32 %44, -120
  %45 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %42, i32* %45, align 4
  %tmp2_v4.i.i = add i32 %41, 4
  %46 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %42, i32* %46, align 4
  %47 = inttoptr i32 %41 to i32*
  store i32 134520840, i32* %47, align 4
  %tmp2_v7.i.i = add i32 %41, -4
  %48 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517439, i32* %48, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i20.i, i32 inreg noundef %43, i32 noundef %41, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
}

; Function Attrs: nofree nosync nounwind
define internal fastcc { i32, i32, i32, i32 } @Func_binary_search(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !14 {
Func_80492F1.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -32
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517489, i32* %1, align 4
  %tmp2_v.i39.i = add i32 %arg_esp, 16
  %2 = inttoptr i32 %tmp2_v.i39.i to i32*
  %3 = load i32, i32* %2, align 4
  %tmp2_v2.i41.i = add i32 %arg_esp, 12
  %4 = inttoptr i32 %tmp2_v2.i41.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp0_v3.i42.i = sub i32 %3, %5
  %tmp0_v4.i43.i = lshr i32 %tmp0_v3.i42.i, 31
  %tmp0_v5.i.i = add i32 %tmp0_v4.i43.i, %tmp0_v3.i42.i
  %tmp0_v6.i44.i = ashr i32 %tmp0_v5.i.i, 1
  %tmp0_v9.i.i = add i32 %tmp0_v6.i44.i, %5
  %tmp2_v10.i.i = add i32 %arg_esp, -16
  %6 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %tmp0_v9.i.i, i32* %6, align 4
  %tmp4_v.i.i = shl i32 %tmp0_v9.i.i, 2
  %tmp2_v1.i4.i = add i32 %arg_esp, 4
  %7 = inttoptr i32 %tmp2_v1.i4.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp0_v3.i.i = add i32 %tmp4_v.i.i, %8
  %9 = inttoptr i32 %tmp0_v3.i.i to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v5.i.i = add i32 %arg_esp, 8
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  %12 = load i32, i32* %11, align 4
  %.not.i.i = icmp eq i32 %12, %10
  br i1 %.not.i.i, label %.exit, label %Func_8049339.exit.i

Func_8049339.exit.i:                              ; preds = %Func_80492F1.exit.i
  %tmp0_v1.i20.i = add i32 %tmp0_v9.i.i, 1
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  %tmp2_v5.i23.i = add i32 %arg_esp, -36
  %14 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 %tmp0_v1.i20.i, i32* %14, align 4
  %15 = load i32, i32* %11, align 4
  %tmp2_v8.i.i = add i32 %arg_esp, -40
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %tmp2_v11.i.i = add i32 %arg_esp, -44
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %17, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %arg_esp, -48
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517630, i32* %19, align 4
  %20 = tail call fastcc { i32, i32, i32, i32 } @Func_binary_search(i32 %tmp2_v12.i.i, i32 %tmp2_v.i.i)
  %21 = extractvalue { i32, i32, i32, i32 } %20, 1
  %22 = extractvalue { i32, i32, i32, i32 } %20, 2
  %23 = extractvalue { i32, i32, i32, i32 } %20, 3
  %.pre = inttoptr i32 %23 to i32*
  br label %.exit

.exit:                                            ; preds = %Func_8049339.exit.i, %Func_80492F1.exit.i
  %.pre-phi = phi i32* [ %0, %Func_80492F1.exit.i ], [ %.pre, %Func_8049339.exit.i ]
  %r_edx.0 = phi i32 [ %tmp4_v.i.i, %Func_80492F1.exit.i ], [ %22, %Func_8049339.exit.i ]
  %r_ebp.0 = phi i32 [ %tmp2_v.i.i, %Func_80492F1.exit.i ], [ %23, %Func_8049339.exit.i ]
  %r_eax.0 = phi i32 [ %tmp0_v9.i.i, %Func_80492F1.exit.i ], [ %21, %Func_8049339.exit.i ]
  %24 = load i32, i32* %.pre-phi, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %r_edx.0, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %24, 3
  ret { i32, i32, i32, i32 } %mrv3
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}
!14 = !{i32 0, i32 3}

  tail call fastcc void @binary_searchm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
