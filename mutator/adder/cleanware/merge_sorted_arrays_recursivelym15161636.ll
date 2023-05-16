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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: nofree nosync nounwind
define internal fastcc { i32, i32, i32, i32 } @Func_merge(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ecx) unnamed_addr  nofree nosync nounwind  !retregs !12 {
Func_80492CA.exit.i:
  %tmp2_v.i33.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i33.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -16
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517450, i32* %1, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i.i to i32*
  %3 = load i32, i32* %2, align 4
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %.exit, label %Func_80492DF.exit.i

BB_804935D.i:                                     ; preds = %BB_804931D.i
  %tmp2_v2.i.i = add i32 %arg_esp, 20
  %4 = inttoptr i32 %tmp2_v2.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %6 = inttoptr i32 %5 to i32*
  store i32 %31, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %7, 4
  %8 = load i32, i32* %22, align 4
  %tmp2_v9.i.i = add i32 %8, -1
  %9 = load i32, i32* %28, align 4
  %tmp0_v12.i.i = add i32 %9, 4
  %tmp2_v14.i.i = add i32 %arg_esp, -28
  %10 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %10, align 4
  %tmp2_v15.i.i = add i32 %arg_esp, -32
  %11 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v9.i.i, i32* %11, align 4
  %tmp2_v16.i.i = add i32 %arg_esp, -36
  %12 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %tmp0_v12.i.i, i32* %12, align 4
  %13 = load i32, i32* %2, align 4
  %tmp2_v19.i.i = add i32 %arg_esp, -40
  %14 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %.pre28, align 4
  %tmp2_v22.i.i = add i32 %arg_esp, -44
  %16 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %15, i32* %16, align 4
  %tmp2_v23.i.i = add i32 %arg_esp, -48
  %17 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517642, i32* %17, align 4
  %18 = tail call fastcc { i32, i32, i32, i32 } @Func_merge(i32 %tmp2_v23.i.i, i32 %tmp2_v9.i.i, i32 %tmp2_v.i33.i, i32 %tmp2_v6.i.i)
  %19 = extractvalue { i32, i32, i32, i32 } %18, 1
  %20 = extractvalue { i32, i32, i32, i32 } %18, 2
  %21 = extractvalue { i32, i32, i32, i32 } %18, 3
  br label %.exit

Func_80492DF.exit.i:                              ; preds = %Func_80492CA.exit.i
  %tmp2_v.i17.i = add i32 %arg_esp, 16
  %22 = inttoptr i32 %tmp2_v.i17.i to i32*
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  %.pre = add i32 %arg_esp, 4
  %.pre28 = inttoptr i32 %.pre to i32*
  br i1 %24, label %Func_80492DF.exit.i.BB_804932B.i_crit_edge, label %BB_804931D.i

Func_80492DF.exit.i.BB_804932B.i_crit_edge:       ; preds = %Func_80492DF.exit.i
  %.pre29 = add i32 %arg_esp, 12
  %.pre30 = inttoptr i32 %.pre29 to i32*
  br label %BB_804932B.i

BB_804931D.i:                                     ; preds = %Func_80492DF.exit.i
  %25 = load i32, i32* %.pre28, align 4
  %26 = inttoptr i32 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v2.i24.i = add i32 %arg_esp, 12
  %28 = inttoptr i32 %tmp2_v2.i24.i to i32*
  %29 = load i32, i32* %28, align 4
  %30 = inttoptr i32 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %.not.i26.i = icmp slt i32 %27, %31
  br i1 %.not.i26.i, label %BB_804932B.i, label %BB_804935D.i

BB_804932B.i:                                     ; preds = %BB_804931D.i, %Func_80492DF.exit.i.BB_804932B.i_crit_edge
  %.pre-phi31 = phi i32* [ %.pre30, %Func_80492DF.exit.i.BB_804932B.i_crit_edge ], [ %28, %BB_804931D.i ]
  %32 = load i32, i32* %.pre28, align 4
  %33 = inttoptr i32 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %tmp2_v2.i44.i = add i32 %arg_esp, 20
  %35 = inttoptr i32 %tmp2_v2.i44.i to i32*
  %36 = load i32, i32* %35, align 4
  %37 = inttoptr i32 %36 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %35, align 4
  %tmp2_v6.i48.i = add i32 %38, 4
  %39 = load i32, i32* %2, align 4
  %tmp2_v9.i51.i = add i32 %39, -1
  %40 = load i32, i32* %.pre28, align 4
  %tmp0_v12.i54.i = add i32 %40, 4
  %tmp2_v14.i57.i = add i32 %arg_esp, -28
  %41 = inttoptr i32 %tmp2_v14.i57.i to i32*
  store i32 %tmp2_v6.i48.i, i32* %41, align 4
  %42 = load i32, i32* %22, align 4
  %tmp2_v17.i59.i = add i32 %arg_esp, -32
  %43 = inttoptr i32 %tmp2_v17.i59.i to i32*
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %.pre-phi31, align 4
  %tmp2_v20.i60.i = add i32 %arg_esp, -36
  %45 = inttoptr i32 %tmp2_v20.i60.i to i32*
  store i32 %44, i32* %45, align 4
  %tmp2_v21.i.i = add i32 %arg_esp, -40
  %46 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 %tmp2_v9.i51.i, i32* %46, align 4
  %tmp2_v22.i61.i = add i32 %arg_esp, -44
  %47 = inttoptr i32 %tmp2_v22.i61.i to i32*
  store i32 %tmp0_v12.i54.i, i32* %47, align 4
  %tmp2_v23.i62.i = add i32 %arg_esp, -48
  %48 = inttoptr i32 %tmp2_v23.i62.i to i32*
  store i32 134517592, i32* %48, align 4
  %49 = tail call fastcc { i32, i32, i32, i32 } @Func_merge(i32 %tmp2_v23.i62.i, i32 %tmp2_v9.i51.i, i32 %tmp2_v.i33.i, i32 %tmp2_v6.i48.i)
  %50 = extractvalue { i32, i32, i32, i32 } %49, 1
  %51 = extractvalue { i32, i32, i32, i32 } %49, 2
  %52 = extractvalue { i32, i32, i32, i32 } %49, 3
  br label %.exit

.exit:                                            ; preds = %BB_804932B.i, %BB_804935D.i, %Func_80492CA.exit.i
  %r_ecx.0 = phi i32 [ %52, %BB_804932B.i ], [ %21, %BB_804935D.i ], [ %arg_ecx, %Func_80492CA.exit.i ]
  %r_ebp.0 = phi i32 [ %51, %BB_804932B.i ], [ %20, %BB_804935D.i ], [ %tmp2_v.i33.i, %Func_80492CA.exit.i ]
  %r_edx.0 = phi i32 [ %50, %BB_804932B.i ], [ %19, %BB_804935D.i ], [ %arg_edx, %Func_80492CA.exit.i ]
  %53 = inttoptr i32 %r_ebp.0 to i32*
  %54 = load i32, i32* %53, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_edx.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %54, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %r_ecx.0, 3
  ret { i32, i32, i32, i32 } %mrv3
}

; Function Attrs: norecurse
define internal fastcc void @merge_sorted_arrays_recursivelym15161636(i32 %arg_esp) unnamed_addr  norecurse  !retregs !13 {
  %tmp2_v.i23.i = add i32 %arg_esp, 4
  %tmp0_v.i24.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i24.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i25.i = add i32 %tmp0_v.i24.i, -8
  %4 = inttoptr i32 %tmp2_v4.i25.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i27.i = add i32 %tmp0_v.i24.i, -12
  %5 = inttoptr i32 %tmp2_v5.i27.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i29.i = add i32 %tmp0_v.i24.i, -16
  %6 = inttoptr i32 %tmp2_v6.i29.i to i32*
  store i32 %tmp2_v.i23.i, i32* %6, align 16
  %tmp2_v8.i30.i = add i32 %tmp0_v.i24.i, -100
  %7 = inttoptr i32 %tmp2_v8.i30.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i49.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i49.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i53.i = add i32 %tmp0_v.i24.i, -20
  %10 = inttoptr i32 %tmp2_v2.i53.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i54.i = add i32 %tmp0_v.i24.i, -76
  %11 = inttoptr i32 %tmp2_v3.i54.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i55.i = add i32 %tmp0_v.i24.i, -72
  %12 = inttoptr i32 %tmp2_v4.i55.i to i32*
  store i32 3, i32* %12, align 8
  %tmp2_v5.i56.i = add i32 %tmp0_v.i24.i, -68
  %13 = inttoptr i32 %tmp2_v5.i56.i to i32*
  store i32 5, i32* %13, align 4
  %tmp2_v6.i57.i = add i32 %tmp0_v.i24.i, -64
  %14 = inttoptr i32 %tmp2_v6.i57.i to i32*
  store i32 7, i32* %14, align 16
  %tmp2_v7.i58.i = add i32 %tmp0_v.i24.i, -60
  %15 = inttoptr i32 %tmp2_v7.i58.i to i32*
  store i32 9, i32* %15, align 4
  %tmp2_v8.i59.i = add i32 %tmp0_v.i24.i, -92
  %16 = inttoptr i32 %tmp2_v8.i59.i to i32*
  store i32 2, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i24.i, -88
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 4, i32* %17, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i24.i, -84
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 6, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i24.i, -80
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i24.i, -56
  %tmp2_v14.i.i = add i32 %tmp0_v.i24.i, -112
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v13.i.i, i32* %20, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i24.i, -116
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 4, i32* %21, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i24.i, -120
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v8.i59.i, i32* %22, align 8
  %tmp2_v18.i.i = add i32 %tmp0_v.i24.i, -124
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 5, i32* %23, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i24.i, -128
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 %tmp2_v3.i54.i, i32* %24, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i24.i, -132
  %25 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 134517337, i32* %25, align 4
  %26 = tail call fastcc { i32, i32, i32, i32 } @Func_merge(i32 %tmp2_v21.i.i, i32 0, i32 %tmp2_v4.i25.i, i32 %tmp2_v.i23.i)
  %27 = extractvalue { i32, i32, i32, i32 } %26, 0
  %28 = extractvalue { i32, i32, i32, i32 } %26, 1
  %29 = extractvalue { i32, i32, i32, i32 } %26, 2
  %30 = extractvalue { i32, i32, i32, i32 } %26, 3
  %tmp2_v.i21.i = add i32 %29, -88
  %31 = inttoptr i32 %tmp2_v.i21.i to i32*
  %tmp2_v1.i.i = add i32 %29, -48
  %tmp2_v5.i.i = add i32 %27, 20
  %32 = inttoptr i32 %tmp2_v5.i.i to i32*
  %tmp2_v7.i.i = add i32 %27, 16
  %33 = inttoptr i32 %tmp2_v7.i.i to i32*
  %tmp2_v8.i.i = add i32 %27, 12
  %34 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %31, align 4
  br label %BB_8049265.i

BB_8049265.i:                                     ; preds = %BB_8049265.i, %0
  %r_edx.04 = phi i32 [ %28, %0 ], [ %39, %BB_8049265.i ]
  %storemerge3 = phi i32 [ 0, %0 ], [ %tmp0_v2.i42.i, %BB_8049265.i ]
  %tmp4_v.i.i = shl i32 %storemerge3, 2
  %tmp2_v2.i.i = add i32 %tmp2_v1.i.i, %tmp4_v.i.i
  %35 = inttoptr i32 %tmp2_v2.i.i to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %32, align 4
  store i32 134520840, i32* %33, align 4
  store i32 134517372, i32* %34, align 4
  %37 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %30, i32 inreg noundef %r_edx.04, i32 noundef %tmp2_v7.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %38 = lshr i64 %37, 32
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %31, align 4
  %tmp0_v2.i42.i = add i32 %40, 1
  store i32 %tmp0_v2.i42.i, i32* %31, align 4
  %41 = icmp slt i32 %tmp0_v2.i42.i, 9
  br i1 %41, label %BB_8049265.i, label %BB_8049289.i

BB_8049289.i:                                     ; preds = %BB_8049265.i
  store i32 134520844, i32* %33, align 4
  store i32 134517400, i32* %34, align 4
  %arg.i.i = load i32, i32* %33, align 4
  %42 = inttoptr i32 %arg.i.i to i8*
  %43 = tail call i32 @puts(i8* nonnull dereferenceable(1) %42)
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
!12 = !{i32 0, i32 1, i32 2, i32 3}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @merge_sorted_arrays_recursivelym15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
