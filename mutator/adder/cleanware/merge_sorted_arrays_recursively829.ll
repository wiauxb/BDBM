; Mutation 829
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack828 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.826 = constant [4 x i8] c"\25\64\20\00"
@str.bis.827 = constant [2 x i8] c"\0a\00"

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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: nofree nosync nounwind
define internal fastcc { i32, i32, i32, i32 } @Func_merge(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ecx) unnamed_addr  nofree nosync nounwind  !retregs !12 {
Func_80492CA.exit.i:
  %tmp2_v.i25.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -16
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517450, i32* %1, align 4
  %tmp2_v.i3.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i3.i to i32*
  %3 = load i32, i32* %2, align 4
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %.exit, label %Func_80492DF.exit.i

BB_804931D.i:                                     ; preds = %Func_80492DF.exit.i
  %4 = load i32, i32* %.pre27, align 4
  %5 = inttoptr i32 %4 to i32*
  %6 = load i32, i32* %5, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, 12
  %7 = inttoptr i32 %tmp2_v2.i.i to i32*
  %8 = load i32, i32* %7, align 4
  %9 = inttoptr i32 %8 to i32*
  %10 = load i32, i32* %9, align 4
  %.not.i13.i = icmp slt i32 %6, %10
  br i1 %.not.i13.i, label %BB_804932B.i, label %BB_804935D.i

BB_804935D.i:                                     ; preds = %BB_804931D.i
  %tmp2_v2.i22.i = add i32 %arg_esp, 20
  %11 = inttoptr i32 %tmp2_v2.i22.i to i32*
  %12 = load i32, i32* %11, align 4
  %13 = inttoptr i32 %12 to i32*
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* %11, align 4
  %tmp2_v6.i.i = add i32 %14, 4
  %15 = load i32, i32* %29, align 4
  %tmp2_v9.i.i = add i32 %15, -1
  %16 = load i32, i32* %7, align 4
  %tmp0_v12.i.i = add i32 %16, 4
  %tmp2_v14.i.i = add i32 %arg_esp, -28
  %17 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %17, align 4
  %tmp2_v15.i.i = add i32 %arg_esp, -32
  %18 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v9.i.i, i32* %18, align 4
  %tmp2_v16.i.i = add i32 %arg_esp, -36
  %19 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %tmp0_v12.i.i, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %tmp2_v19.i.i = add i32 %arg_esp, -40
  %21 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %.pre27, align 4
  %tmp2_v22.i.i = add i32 %arg_esp, -44
  %23 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %22, i32* %23, align 4
  %tmp2_v23.i.i = add i32 %arg_esp, -48
  %24 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517642, i32* %24, align 4
  %25 = tail call fastcc { i32, i32, i32, i32 } @Func_merge(i32 %tmp2_v23.i.i, i32 %tmp2_v9.i.i, i32 %tmp2_v.i25.i, i32 %tmp2_v6.i.i)
  %26 = extractvalue { i32, i32, i32, i32 } %25, 1
  %27 = extractvalue { i32, i32, i32, i32 } %25, 2
  %28 = extractvalue { i32, i32, i32, i32 } %25, 3
  br label %.exit

Func_80492DF.exit.i:                              ; preds = %Func_80492CA.exit.i
  %tmp2_v.i6.i = add i32 %arg_esp, 16
  %29 = inttoptr i32 %tmp2_v.i6.i to i32*
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  %.pre = add i32 %arg_esp, 4
  %.pre27 = inttoptr i32 %.pre to i32*
  br i1 %31, label %Func_80492DF.exit.i.BB_804932B.i_crit_edge, label %BB_804931D.i

Func_80492DF.exit.i.BB_804932B.i_crit_edge:       ; preds = %Func_80492DF.exit.i
  %.pre28 = add i32 %arg_esp, 12
  %.pre29 = inttoptr i32 %.pre28 to i32*
  br label %BB_804932B.i

BB_804932B.i:                                     ; preds = %Func_80492DF.exit.i.BB_804932B.i_crit_edge, %BB_804931D.i
  %.pre-phi30 = phi i32* [ %.pre29, %Func_80492DF.exit.i.BB_804932B.i_crit_edge ], [ %7, %BB_804931D.i ]
  %32 = load i32, i32* %.pre27, align 4
  %33 = inttoptr i32 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %tmp2_v2.i39.i = add i32 %arg_esp, 20
  %35 = inttoptr i32 %tmp2_v2.i39.i to i32*
  %36 = load i32, i32* %35, align 4
  %37 = inttoptr i32 %36 to i32*
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %35, align 4
  %tmp2_v6.i43.i = add i32 %38, 4
  %39 = load i32, i32* %2, align 4
  %tmp2_v9.i46.i = add i32 %39, -1
  %40 = load i32, i32* %.pre27, align 4
  %tmp0_v12.i49.i = add i32 %40, 4
  %tmp2_v14.i52.i = add i32 %arg_esp, -28
  %41 = inttoptr i32 %tmp2_v14.i52.i to i32*
  store i32 %tmp2_v6.i43.i, i32* %41, align 4
  %42 = load i32, i32* %29, align 4
  %tmp2_v17.i54.i = add i32 %arg_esp, -32
  %43 = inttoptr i32 %tmp2_v17.i54.i to i32*
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %.pre-phi30, align 4
  %tmp2_v20.i55.i = add i32 %arg_esp, -36
  %45 = inttoptr i32 %tmp2_v20.i55.i to i32*
  store i32 %44, i32* %45, align 4
  %tmp2_v21.i.i = add i32 %arg_esp, -40
  %46 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 %tmp2_v9.i46.i, i32* %46, align 4
  %tmp2_v22.i56.i = add i32 %arg_esp, -44
  %47 = inttoptr i32 %tmp2_v22.i56.i to i32*
  store i32 %tmp0_v12.i49.i, i32* %47, align 4
  %tmp2_v23.i57.i = add i32 %arg_esp, -48
  %48 = inttoptr i32 %tmp2_v23.i57.i to i32*
  store i32 134517592, i32* %48, align 4
  %49 = tail call fastcc { i32, i32, i32, i32 } @Func_merge(i32 %tmp2_v23.i57.i, i32 %tmp2_v9.i46.i, i32 %tmp2_v.i25.i, i32 %tmp2_v6.i43.i)
  %50 = extractvalue { i32, i32, i32, i32 } %49, 1
  %51 = extractvalue { i32, i32, i32, i32 } %49, 2
  %52 = extractvalue { i32, i32, i32, i32 } %49, 3
  br label %.exit

.exit:                                            ; preds = %BB_804932B.i, %BB_804935D.i, %Func_80492CA.exit.i
  %r_edx.0 = phi i32 [ %50, %BB_804932B.i ], [ %26, %BB_804935D.i ], [ %arg_edx, %Func_80492CA.exit.i ]
  %r_ecx.0 = phi i32 [ %52, %BB_804932B.i ], [ %28, %BB_804935D.i ], [ %arg_ecx, %Func_80492CA.exit.i ]
  %r_ebp.0 = phi i32 [ %51, %BB_804932B.i ], [ %27, %BB_804935D.i ], [ %tmp2_v.i25.i, %Func_80492CA.exit.i ]
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
define internal fastcc void @merge_sorted_arrays_recursively829(i32 %arg_esp) unnamed_addr  norecurse  !retregs !13 {
  %tmp2_v.i20.i = add i32 %arg_esp, 4
  %tmp0_v.i21.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i22.i = add i32 %tmp0_v.i21.i, -4
  %3 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i23.i = add i32 %tmp0_v.i21.i, -8
  %4 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i25.i = add i32 %tmp0_v.i21.i, -12
  %5 = inttoptr i32 %tmp2_v5.i25.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i21.i, -16
  %6 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 %tmp2_v.i20.i, i32* %6, align 16
  %tmp2_v8.i28.i = add i32 %tmp0_v.i21.i, -100
  %7 = inttoptr i32 %tmp2_v8.i28.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i11.i = add i32 %tmp0_v.i21.i, -20
  %10 = inttoptr i32 %tmp2_v2.i11.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i21.i, -76
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i21.i, -72
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 3, i32* %12, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i21.i, -68
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 5, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i21.i, -64
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 7, i32* %14, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i21.i, -60
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 9, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i21.i, -92
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 2, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i21.i, -88
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 4, i32* %17, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i21.i, -84
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 6, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i21.i, -80
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i21.i, -56
  %tmp2_v14.i.i = add i32 %tmp0_v.i21.i, -112
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v13.i.i, i32* %20, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i21.i, -116
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 4, i32* %21, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i21.i, -120
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v8.i.i, i32* %22, align 8
  %tmp2_v18.i.i = add i32 %tmp0_v.i21.i, -124
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 5, i32* %23, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i21.i, -128
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %24, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i21.i, -132
  %25 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 134517337, i32* %25, align 4
  %26 = tail call fastcc { i32, i32, i32, i32 } @Func_merge(i32 %tmp2_v21.i.i, i32 0, i32 %tmp2_v4.i23.i, i32 %tmp2_v.i20.i)
  %27 = extractvalue { i32, i32, i32, i32 } %26, 0
  %28 = extractvalue { i32, i32, i32, i32 } %26, 1
  %29 = extractvalue { i32, i32, i32, i32 } %26, 2
  %30 = extractvalue { i32, i32, i32, i32 } %26, 3
  %tmp2_v.i6.i = add i32 %29, -88
  %31 = inttoptr i32 %tmp2_v.i6.i to i32*
  %tmp2_v1.i50.i = add i32 %29, -48
  %tmp2_v5.i56.i = add i32 %27, 20
  %32 = inttoptr i32 %tmp2_v5.i56.i to i32*
  %tmp2_v7.i59.i = add i32 %27, 16
  %33 = inttoptr i32 %tmp2_v7.i59.i to i32*
  %tmp2_v8.i60.i = add i32 %27, 12
  %34 = inttoptr i32 %tmp2_v8.i60.i to i32*
  store i32 0, i32* %31, align 4
  br label %BB_8049265.i

BB_8049289.i:                                     ; preds = %BB_8049265.i
  %spi.bis.827 = ptrtoint[2 x i8]* @str.bis.827 to i32
  store i32 %spi.bis.827, i32* %33, align 4
  store i32 134517400, i32* %34, align 4
  %arg.i.i = load i32, i32* %33, align 4
  %35 = inttoptr i32 %arg.i.i to i8*
  %36 = tail call i32 @puts(i8* nonnull dereferenceable(1) %35)
  ret void

BB_8049265.i:                                     ; preds = %BB_8049265.i, %0
  %r_edx.04 = phi i32 [ %28, %0 ], [ %41, %BB_8049265.i ]
  %storemerge3 = phi i32 [ 0, %0 ], [ %tmp0_v2.i43.i, %BB_8049265.i ]
  %tmp4_v.i51.i = shl i32 %storemerge3, 2
  %tmp2_v2.i52.i = add i32 %tmp2_v1.i50.i, %tmp4_v.i51.i
  %37 = inttoptr i32 %tmp2_v2.i52.i to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %32, align 4
  %spi.bis.826 = ptrtoint[4 x i8]* @str.bis.826 to i32
  store i32 %spi.bis.826, i32* %33, align 4
  store i32 134517372, i32* %34, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %30, i32 inreg noundef %r_edx.04, i32 noundef %tmp2_v7.i59.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %31, align 4
  %tmp0_v2.i43.i = add i32 %42, 1
  store i32 %tmp0_v2.i43.i, i32* %31, align 4
  %43 = icmp slt i32 %tmp0_v2.i43.i, 9
  br i1 %43, label %BB_8049265.i, label %BB_8049289.i
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
!12 = !{i32 0, i32 1, i32 2, i32 3}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @merge_sorted_arrays_recursively829 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack828, i32 0, i32 8092) to i32)) nounwind
