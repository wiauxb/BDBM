; Mutation 620
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack619 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.613 = constant [14 x i8] c"s2 after: %s\0a\00"
@str.615 = constant [15 x i8] c"s2 before: %s\0a\00"
@str.616 = constant [14 x i8] c"s1 after: %s\0a\00"
@str.618 = constant [15 x i8] c"s1 before: %s\0a\00"

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

; Function Attrs: norecurse nounwind
define internal fastcc void @remove_char620(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i31.i = add i32 %arg_esp, 4
  %tmp0_v.i32.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i33.i = add i32 %tmp0_v.i32.i, -4
  %2 = inttoptr i32 %tmp2_v3.i33.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i34.i = add i32 %tmp0_v.i32.i, -8
  %3 = inttoptr i32 %tmp2_v4.i34.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i36.i = add i32 %tmp0_v.i32.i, -12
  %4 = inttoptr i32 %tmp2_v5.i36.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i38.i = add i32 %tmp0_v.i32.i, -16
  %5 = inttoptr i32 %tmp2_v6.i38.i to i32*
  store i32 %tmp2_v.i31.i, i32* %5, align 16
  %tmp2_v8.i40.i = add i32 %tmp0_v.i32.i, -84
  %6 = inttoptr i32 %tmp2_v8.i40.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i32.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i13.i = add i32 %tmp0_v.i32.i, -72
  %10 = inttoptr i32 %tmp2_v3.i13.i to i32*
  store i32 1953701953, i32* %10, align 8
  %tmp2_v4.i14.i = add i32 %tmp0_v.i32.i, -68
  %11 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 1735289202, i32* %11, align 4
  %tmp2_v5.i15.i = add i32 %tmp0_v.i32.i, -64
  %12 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 1953068832, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i32.i, -60
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1869815912, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i32.i, -56
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1998611821, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i32.i, -52
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1935962735, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i32.i, -48
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 33, i16* %16, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i32.i, -92
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i13.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i32.i, -96
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  %spi618 = ptrtoint[15 x i8]* @str.618 to i32
  store i32 %spi618, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i32.i, -100
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517285, i32* %19, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i31.i, i32 inreg noundef 0, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 105, i32* %17, align 4
  store i32 %tmp2_v3.i13.i, i32* %18, align 16
  store i32 134517302, i32* %19, align 4
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i32.i, -104
  %21 = inttoptr i32 %tmp2_v.i9.i.i to i32*
  store i32 %tmp2_v4.i34.i, i32* %21, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i32.i, -128
  %22 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517483, i32* %22, align 16
  %23 = load i32, i32* %17, align 4
  %tmp2_v2.i5.i.i = add i32 %tmp0_v.i32.i, -124
  %24 = trunc i32 %23 to i8
  %25 = inttoptr i32 %tmp2_v2.i5.i.i to i8*
  store i8 %24, i8* %25, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i32.i, -112
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %26, align 16
  %27 = load i32, i32* %18, align 16
  %28 = inttoptr i32 %27 to i8*
  %29 = load i8, i8* %28, align 1
  %.not.i52.i2233.i = icmp eq i8 %29, 0
  br i1 %.not.i52.i2233.i, label %Func_remove_char.exit, label %BB_80492FF.i.lr.ph.lr.ph.i

BB_80492FF.i.lr.ph.lr.ph.i:                       ; preds = %.exit
  %tmp2_v1.i33.i.i = add i32 %tmp0_v.i32.i, -108
  %30 = inttoptr i32 %tmp2_v1.i33.i.i to i32*
  br label %BB_80492FF.i.lr.ph.i

BB_8049344.i.i:                                   ; preds = %BB_80492FF.i.i
  %tmp0_v1.i.i.i = add i32 %35, 1
  store i32 %tmp0_v1.i.i.i, i32* %26, align 16
  %31 = load i32, i32* %18, align 16
  %tmp0_v3.i50.i.i = add i32 %31, %tmp0_v1.i.i.i
  %32 = inttoptr i32 %tmp0_v3.i50.i.i to i8*
  %33 = load i8, i8* %32, align 1
  %.not.i52.i.i = icmp eq i8 %33, 0
  br i1 %.not.i52.i.i, label %Func_remove_char.exit, label %BB_80492FF.i.i

BB_80492FF.i.i:                                   ; preds = %BB_80492FF.i.lr.ph.i, %BB_8049344.i.i
  %34 = phi i8 [ %52, %BB_80492FF.i.lr.ph.i ], [ %33, %BB_8049344.i.i ]
  %35 = phi i32 [ %53, %BB_80492FF.i.lr.ph.i ], [ %tmp0_v1.i.i.i, %BB_8049344.i.i ]
  %tmp0_v4.i25.i.i = zext i8 %34 to i32
  %36 = load i8, i8* %25, align 4
  %tmp0_v6.i26.i.i = zext i8 %36 to i32
  %cc_dst_v.i.i.i = sub nsw i32 %tmp0_v6.i26.i.i, %tmp0_v4.i25.i.i
  %tmp4_v.i27.i.i = and i32 %cc_dst_v.i.i.i, 255
  %.not.i28.i.i = icmp eq i32 %tmp4_v.i27.i.i, 0
  br i1 %.not.i28.i.i, label %BB_804930F.i.i, label %BB_8049344.i.i

BB_804930F.i.i:                                   ; preds = %BB_80492FF.i.i
  store i32 %35, i32* %30, align 4
  %37 = load i32, i32* %18, align 16
  %tmp0_v3.i16.i28.i = add i32 %37, %35
  %38 = inttoptr i32 %tmp0_v3.i16.i28.i to i8*
  %39 = load i8, i8* %38, align 1
  %.not.i17.i29.i = icmp eq i8 %39, 0
  br i1 %.not.i17.i29.i, label %BB_8049348.i.loopexit.i, label %BB_8049317.i.i

BB_8049317.i.i:                                   ; preds = %BB_8049317.i.i, %BB_804930F.i.i
  %40 = phi i8* [ %46, %BB_8049317.i.i ], [ %38, %BB_804930F.i.i ]
  %41 = phi i32 [ %45, %BB_8049317.i.i ], [ %37, %BB_804930F.i.i ]
  %storemerge30.i = phi i32 [ %tmp0_v13.i.i.i, %BB_8049317.i.i ], [ %35, %BB_804930F.i.i ]
  %tmp2_v1.i37.i.i = add i32 %41, 1
  %tmp0_v4.i40.i.i = add i32 %tmp2_v1.i37.i.i, %storemerge30.i
  %42 = inttoptr i32 %tmp0_v4.i40.i.i to i8*
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %40, align 1
  %44 = load i32, i32* %30, align 4
  %tmp0_v13.i.i.i = add i32 %44, 1
  store i32 %tmp0_v13.i.i.i, i32* %30, align 4
  %45 = load i32, i32* %18, align 16
  %tmp0_v3.i16.i.i = add i32 %45, %tmp0_v13.i.i.i
  %46 = inttoptr i32 %tmp0_v3.i16.i.i to i8*
  %47 = load i8, i8* %46, align 1
  %.not.i17.i.i = icmp eq i8 %47, 0
  br i1 %.not.i17.i.i, label %BB_8049348.i.loopexit.i, label %BB_8049317.i.i

BB_8049348.i.loopexit.i:                          ; preds = %BB_8049317.i.i, %BB_804930F.i.i
  %48 = phi i32 [ %37, %BB_804930F.i.i ], [ %45, %BB_8049317.i.i ]
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.ph34.i, %BB_804930F.i.i ], [ %storemerge30.i, %BB_8049317.i.i ]
  %49 = load i32, i32* %26, align 16
  %tmp0_v3.i50.i21.i = add i32 %49, %48
  %50 = inttoptr i32 %tmp0_v3.i50.i21.i to i8*
  %51 = load i8, i8* %50, align 1
  %.not.i52.i22.i = icmp eq i8 %51, 0
  br i1 %.not.i52.i22.i, label %Func_remove_char.exit, label %BB_80492FF.i.lr.ph.i

BB_80492FF.i.lr.ph.i:                             ; preds = %BB_8049348.i.loopexit.i, %BB_80492FF.i.lr.ph.lr.ph.i
  %52 = phi i8 [ %29, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %51, %BB_8049348.i.loopexit.i ]
  %53 = phi i32 [ 0, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %49, %BB_8049348.i.loopexit.i ]
  %r_ecx.1.ph34.i = phi i32 [ %tmp2_v.i31.i, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %r_ecx.0.lcssa.i, %BB_8049348.i.loopexit.i ]
  br label %BB_80492FF.i.i

Func_remove_char.exit:                            ; preds = %BB_8049348.i.loopexit.i, %BB_8049344.i.i, %.exit
  %r_ecx.1.ph.lcssa.i = phi i32 [ %tmp2_v.i31.i, %.exit ], [ %r_ecx.1.ph34.i, %BB_8049344.i.i ], [ %r_ecx.0.lcssa.i, %BB_8049348.i.loopexit.i ]
  %.lcssa18.i = phi i32 [ 0, %.exit ], [ %tmp0_v1.i.i.i, %BB_8049344.i.i ], [ %49, %BB_8049348.i.loopexit.i ]
  %54 = load i32, i32* %21, align 8
  %tmp2_v.i5.i = add i32 %54, -64
  store i32 %tmp2_v.i5.i, i32* %17, align 4
  %spi616 = ptrtoint[14 x i8]* @str.616 to i32
  store i32 %spi616, i32* %18, align 16
  store i32 134517324, i32* %19, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.ph.lcssa.i, i32 inreg noundef %.lcssa18.i, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %56 = lshr i64 %55, 32
  %57 = trunc i64 %56 to i32
  %tmp2_v.i20.i = add i32 %54, -38
  %58 = inttoptr i32 %tmp2_v.i20.i to i32*
  store i32 1096900961, i32* %58, align 4
  %tmp2_v1.i.i = add i32 %54, -34
  %59 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2021146945, i32* %59, align 4
  %tmp2_v2.i21.i = add i32 %54, -30
  %60 = inttoptr i32 %tmp2_v2.i21.i to i32*
  store i32 1631666497, i32* %60, align 4
  %tmp2_v3.i22.i = add i32 %54, -26
  %61 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 1111646561, i32* %61, align 4
  %tmp2_v4.i23.i = add i32 %54, -22
  %62 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 1631798082, i32* %62, align 4
  %tmp2_v5.i24.i = add i32 %54, -18
  %63 = inttoptr i32 %tmp2_v5.i24.i to i32*
  store i32 1096900961, i32* %63, align 4
  %tmp2_v6.i25.i = add i32 %54, -14
  %64 = inttoptr i32 %tmp2_v6.i25.i to i16*
  store i16 97, i16* %64, align 2
  store i32 %tmp2_v.i20.i, i32* %17, align 4
  %spi615 = ptrtoint[15 x i8]* @str.615 to i32
  store i32 %spi615, i32* %18, align 16
  store i32 134517394, i32* %19, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.ph.lcssa.i, i32 inreg noundef %57, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 97, i32* %17, align 4
  store i32 %tmp2_v.i20.i, i32* %18, align 16
  store i32 134517411, i32* %19, align 4
  store i32 %54, i32* %21, align 8
  store i32 134517483, i32* %22, align 16
  %66 = load i32, i32* %17, align 4
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %25, align 4
  store i32 0, i32* %26, align 16
  %68 = load i32, i32* %18, align 16
  %69 = inttoptr i32 %68 to i8*
  %70 = load i8, i8* %69, align 1
  %.not.i52.i2233.i13 = icmp eq i8 %70, 0
  br i1 %.not.i52.i2233.i13, label %Func_remove_char.exit48, label %BB_80492FF.i.lr.ph.lr.ph.i15

BB_80492FF.i.lr.ph.lr.ph.i15:                     ; preds = %Func_remove_char.exit
  %tmp2_v1.i33.i.i14 = add i32 %tmp0_v.i32.i, -108
  %71 = inttoptr i32 %tmp2_v1.i33.i.i14 to i32*
  br label %BB_80492FF.i.lr.ph.i41

BB_8049344.i.i19:                                 ; preds = %BB_80492FF.i.i25
  %tmp0_v1.i.i.i16 = add i32 %76, 1
  store i32 %tmp0_v1.i.i.i16, i32* %26, align 16
  %72 = load i32, i32* %18, align 16
  %tmp0_v3.i50.i.i17 = add i32 %72, %tmp0_v1.i.i.i16
  %73 = inttoptr i32 %tmp0_v3.i50.i.i17 to i8*
  %74 = load i8, i8* %73, align 1
  %.not.i52.i.i18 = icmp eq i8 %74, 0
  br i1 %.not.i52.i.i18, label %Func_remove_char.exit48, label %BB_80492FF.i.i25

BB_80492FF.i.i25:                                 ; preds = %BB_80492FF.i.lr.ph.i41, %BB_8049344.i.i19
  %75 = phi i8 [ %93, %BB_80492FF.i.lr.ph.i41 ], [ %74, %BB_8049344.i.i19 ]
  %76 = phi i32 [ %94, %BB_80492FF.i.lr.ph.i41 ], [ %tmp0_v1.i.i.i16, %BB_8049344.i.i19 ]
  %tmp0_v4.i25.i.i20 = zext i8 %75 to i32
  %77 = load i8, i8* %25, align 4
  %tmp0_v6.i26.i.i21 = zext i8 %77 to i32
  %cc_dst_v.i.i.i22 = sub nsw i32 %tmp0_v6.i26.i.i21, %tmp0_v4.i25.i.i20
  %tmp4_v.i27.i.i23 = and i32 %cc_dst_v.i.i.i22, 255
  %.not.i28.i.i24 = icmp eq i32 %tmp4_v.i27.i.i23, 0
  br i1 %.not.i28.i.i24, label %BB_804930F.i.i28, label %BB_8049344.i.i19

BB_804930F.i.i28:                                 ; preds = %BB_80492FF.i.i25
  store i32 %76, i32* %71, align 4
  %78 = load i32, i32* %18, align 16
  %tmp0_v3.i16.i28.i26 = add i32 %78, %76
  %79 = inttoptr i32 %tmp0_v3.i16.i28.i26 to i8*
  %80 = load i8, i8* %79, align 1
  %.not.i17.i29.i27 = icmp eq i8 %80, 0
  br i1 %.not.i17.i29.i27, label %BB_8049348.i.loopexit.i39, label %BB_8049317.i.i35

BB_8049317.i.i35:                                 ; preds = %BB_8049317.i.i35, %BB_804930F.i.i28
  %81 = phi i8* [ %87, %BB_8049317.i.i35 ], [ %79, %BB_804930F.i.i28 ]
  %82 = phi i32 [ %86, %BB_8049317.i.i35 ], [ %78, %BB_804930F.i.i28 ]
  %storemerge30.i29 = phi i32 [ %tmp0_v13.i.i.i32, %BB_8049317.i.i35 ], [ %76, %BB_804930F.i.i28 ]
  %tmp2_v1.i37.i.i30 = add i32 %82, 1
  %tmp0_v4.i40.i.i31 = add i32 %tmp2_v1.i37.i.i30, %storemerge30.i29
  %83 = inttoptr i32 %tmp0_v4.i40.i.i31 to i8*
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %81, align 1
  %85 = load i32, i32* %71, align 4
  %tmp0_v13.i.i.i32 = add i32 %85, 1
  store i32 %tmp0_v13.i.i.i32, i32* %71, align 4
  %86 = load i32, i32* %18, align 16
  %tmp0_v3.i16.i.i33 = add i32 %86, %tmp0_v13.i.i.i32
  %87 = inttoptr i32 %tmp0_v3.i16.i.i33 to i8*
  %88 = load i8, i8* %87, align 1
  %.not.i17.i.i34 = icmp eq i8 %88, 0
  br i1 %.not.i17.i.i34, label %BB_8049348.i.loopexit.i39, label %BB_8049317.i.i35

BB_8049348.i.loopexit.i39:                        ; preds = %BB_8049317.i.i35, %BB_804930F.i.i28
  %89 = phi i32 [ %78, %BB_804930F.i.i28 ], [ %86, %BB_8049317.i.i35 ]
  %r_ecx.0.lcssa.i36 = phi i32 [ %r_ecx.1.ph34.i40, %BB_804930F.i.i28 ], [ %storemerge30.i29, %BB_8049317.i.i35 ]
  %90 = load i32, i32* %26, align 16
  %tmp0_v3.i50.i21.i37 = add i32 %90, %89
  %91 = inttoptr i32 %tmp0_v3.i50.i21.i37 to i8*
  %92 = load i8, i8* %91, align 1
  %.not.i52.i22.i38 = icmp eq i8 %92, 0
  br i1 %.not.i52.i22.i38, label %Func_remove_char.exit48, label %BB_80492FF.i.lr.ph.i41

BB_80492FF.i.lr.ph.i41:                           ; preds = %BB_8049348.i.loopexit.i39, %BB_80492FF.i.lr.ph.lr.ph.i15
  %93 = phi i8 [ %70, %BB_80492FF.i.lr.ph.lr.ph.i15 ], [ %92, %BB_8049348.i.loopexit.i39 ]
  %94 = phi i32 [ 0, %BB_80492FF.i.lr.ph.lr.ph.i15 ], [ %90, %BB_8049348.i.loopexit.i39 ]
  %r_ecx.1.ph34.i40 = phi i32 [ %r_ecx.1.ph.lcssa.i, %BB_80492FF.i.lr.ph.lr.ph.i15 ], [ %r_ecx.0.lcssa.i36, %BB_8049348.i.loopexit.i39 ]
  br label %BB_80492FF.i.i25

Func_remove_char.exit48:                          ; preds = %BB_8049348.i.loopexit.i39, %BB_8049344.i.i19, %Func_remove_char.exit
  %r_ecx.1.ph.lcssa.i42 = phi i32 [ %r_ecx.1.ph.lcssa.i, %Func_remove_char.exit ], [ %r_ecx.1.ph34.i40, %BB_8049344.i.i19 ], [ %r_ecx.0.lcssa.i36, %BB_8049348.i.loopexit.i39 ]
  %.lcssa18.i43 = phi i32 [ 0, %Func_remove_char.exit ], [ %tmp0_v1.i.i.i16, %BB_8049344.i.i19 ], [ %90, %BB_8049348.i.loopexit.i39 ]
  %95 = load i32, i32* %21, align 8
  %tmp2_v.i59.i = add i32 %95, -38
  store i32 %tmp2_v.i59.i, i32* %17, align 4
  %spi613 = ptrtoint[14 x i8]* @str.613 to i32
  store i32 %spi613, i32* %18, align 16
  store i32 134517433, i32* %19, align 4
  %96 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.ph.lcssa.i42, i32 inreg noundef %.lcssa18.i43, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @remove_char620 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack619, i32 0, i32 8092) to i32)) nounwind
