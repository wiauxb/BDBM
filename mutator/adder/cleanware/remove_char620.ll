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
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i16.i, -4
  %2 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i18.i = add i32 %tmp0_v.i16.i, -8
  %3 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i20.i = add i32 %tmp0_v.i16.i, -12
  %4 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i22.i = add i32 %tmp0_v.i16.i, -16
  %5 = inttoptr i32 %tmp2_v6.i22.i to i32*
  store i32 %tmp2_v.i15.i, i32* %5, align 16
  %tmp2_v8.i23.i = add i32 %tmp0_v.i16.i, -84
  %6 = inttoptr i32 %tmp2_v8.i23.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i16.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i16.i, -72
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1953701953, i32* %10, align 8
  %tmp2_v4.i.i = add i32 %tmp0_v.i16.i, -68
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1735289202, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i16.i, -64
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1953068832, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i16.i, -60
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1869815912, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i16.i, -56
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1998611821, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i16.i, -52
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1935962735, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i16.i, -48
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 33, i16* %16, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i16.i, -92
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i16.i, -96
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  %spi.bis.618 = ptrtoint[15 x i8]* @str.618 to i32
  store i32 %spi.bis.618, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i16.i, -100
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517285, i32* %19, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef 0, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 105, i32* %17, align 4
  store i32 %tmp2_v3.i.i, i32* %18, align 16
  store i32 134517302, i32* %19, align 4
  %tmp2_v.i26.i.i = add i32 %tmp0_v.i16.i, -104
  %21 = inttoptr i32 %tmp2_v.i26.i.i to i32*
  store i32 %tmp2_v4.i18.i, i32* %21, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i16.i, -128
  %22 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 134517483, i32* %22, align 16
  %23 = load i32, i32* %17, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i16.i, -124
  %24 = trunc i32 %23 to i8
  %25 = inttoptr i32 %tmp2_v2.i.i.i to i8*
  store i8 %24, i8* %25, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i16.i, -112
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %26, align 16
  %27 = load i32, i32* %18, align 16
  %28 = inttoptr i32 %27 to i8*
  %29 = load i8, i8* %28, align 1
  %.not.i11.i2233.i = icmp eq i8 %29, 0
  br i1 %.not.i11.i2233.i, label %Func_remove_char.exit, label %BB_80492FF.i.lr.ph.lr.ph.i

BB_80492FF.i.lr.ph.lr.ph.i:                       ; preds = %.exit
  %tmp2_v1.i33.i.i = add i32 %tmp0_v.i16.i, -108
  %30 = inttoptr i32 %tmp2_v1.i33.i.i to i32*
  br label %BB_80492FF.i.lr.ph.i

BB_80492FF.i.i:                                   ; preds = %BB_8049344.i.i, %BB_80492FF.i.lr.ph.i
  %31 = phi i8 [ %38, %BB_80492FF.i.lr.ph.i ], [ %45, %BB_8049344.i.i ]
  %32 = phi i32 [ %39, %BB_80492FF.i.lr.ph.i ], [ %tmp0_v1.i37.i.i, %BB_8049344.i.i ]
  %tmp0_v4.i.i.i = zext i8 %31 to i32
  %33 = load i8, i8* %25, align 4
  %tmp0_v6.i.i.i = zext i8 %33 to i32
  %cc_dst_v.i.i.i = sub nsw i32 %tmp0_v6.i.i.i, %tmp0_v4.i.i.i
  %tmp4_v.i.i.i3 = and i32 %cc_dst_v.i.i.i, 255
  %.not.i.i.i = icmp eq i32 %tmp4_v.i.i.i3, 0
  br i1 %.not.i.i.i, label %BB_804930F.i.i, label %BB_8049344.i.i

BB_8049348.i.loopexit.i:                          ; preds = %BB_8049317.i.i, %BB_804930F.i.i
  %34 = phi i32 [ %40, %BB_804930F.i.i ], [ %51, %BB_8049317.i.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.0.ph34.i, %BB_804930F.i.i ], [ %storemerge30.i, %BB_8049317.i.i ]
  %35 = load i32, i32* %26, align 16
  %tmp0_v3.i9.i21.i = add i32 %35, %34
  %36 = inttoptr i32 %tmp0_v3.i9.i21.i to i8*
  %37 = load i8, i8* %36, align 1
  %.not.i11.i22.i = icmp eq i8 %37, 0
  br i1 %.not.i11.i22.i, label %Func_remove_char.exit, label %BB_80492FF.i.lr.ph.i

BB_80492FF.i.lr.ph.i:                             ; preds = %BB_8049348.i.loopexit.i, %BB_80492FF.i.lr.ph.lr.ph.i
  %38 = phi i8 [ %29, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %37, %BB_8049348.i.loopexit.i ]
  %39 = phi i32 [ 0, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %35, %BB_8049348.i.loopexit.i ]
  %r_ecx.0.ph34.i = phi i32 [ %tmp2_v.i15.i, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %r_ecx.1.lcssa.i, %BB_8049348.i.loopexit.i ]
  br label %BB_80492FF.i.i

BB_804930F.i.i:                                   ; preds = %BB_80492FF.i.i
  store i32 %32, i32* %30, align 4
  %40 = load i32, i32* %18, align 16
  %tmp0_v3.i22.i28.i = add i32 %40, %32
  %41 = inttoptr i32 %tmp0_v3.i22.i28.i to i8*
  %42 = load i8, i8* %41, align 1
  %.not.i24.i29.i = icmp eq i8 %42, 0
  br i1 %.not.i24.i29.i, label %BB_8049348.i.loopexit.i, label %BB_8049317.i.i

BB_8049344.i.i:                                   ; preds = %BB_80492FF.i.i
  %tmp0_v1.i37.i.i = add i32 %32, 1
  store i32 %tmp0_v1.i37.i.i, i32* %26, align 16
  %43 = load i32, i32* %18, align 16
  %tmp0_v3.i9.i.i = add i32 %43, %tmp0_v1.i37.i.i
  %44 = inttoptr i32 %tmp0_v3.i9.i.i to i8*
  %45 = load i8, i8* %44, align 1
  %.not.i11.i.i = icmp eq i8 %45, 0
  br i1 %.not.i11.i.i, label %Func_remove_char.exit, label %BB_80492FF.i.i

BB_8049317.i.i:                                   ; preds = %BB_8049317.i.i, %BB_804930F.i.i
  %46 = phi i8* [ %52, %BB_8049317.i.i ], [ %41, %BB_804930F.i.i ]
  %47 = phi i32 [ %51, %BB_8049317.i.i ], [ %40, %BB_804930F.i.i ]
  %storemerge30.i = phi i32 [ %tmp0_v13.i.i.i, %BB_8049317.i.i ], [ %32, %BB_804930F.i.i ]
  %tmp2_v1.i46.i.i = add i32 %47, 1
  %tmp0_v4.i49.i.i = add i32 %tmp2_v1.i46.i.i, %storemerge30.i
  %48 = inttoptr i32 %tmp0_v4.i49.i.i to i8*
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %46, align 1
  %50 = load i32, i32* %30, align 4
  %tmp0_v13.i.i.i = add i32 %50, 1
  store i32 %tmp0_v13.i.i.i, i32* %30, align 4
  %51 = load i32, i32* %18, align 16
  %tmp0_v3.i22.i.i = add i32 %51, %tmp0_v13.i.i.i
  %52 = inttoptr i32 %tmp0_v3.i22.i.i to i8*
  %53 = load i8, i8* %52, align 1
  %.not.i24.i.i = icmp eq i8 %53, 0
  br i1 %.not.i24.i.i, label %BB_8049348.i.loopexit.i, label %BB_8049317.i.i

Func_remove_char.exit:                            ; preds = %BB_8049344.i.i, %BB_8049348.i.loopexit.i, %.exit
  %r_ecx.0.ph.lcssa.i = phi i32 [ %tmp2_v.i15.i, %.exit ], [ %r_ecx.0.ph34.i, %BB_8049344.i.i ], [ %r_ecx.1.lcssa.i, %BB_8049348.i.loopexit.i ]
  %.lcssa18.i = phi i32 [ 0, %.exit ], [ %tmp0_v1.i37.i.i, %BB_8049344.i.i ], [ %35, %BB_8049348.i.loopexit.i ]
  %54 = load i32, i32* %21, align 8
  %tmp2_v.i28.i = add i32 %54, -64
  store i32 %tmp2_v.i28.i, i32* %17, align 4
  %spi.bis.616 = ptrtoint[14 x i8]* @str.616 to i32
  store i32 %spi.bis.616, i32* %18, align 16
  store i32 134517324, i32* %19, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.lcssa.i, i32 inreg noundef %.lcssa18.i, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %56 = lshr i64 %55, 32
  %57 = trunc i64 %56 to i32
  %tmp2_v.i60.i = add i32 %54, -38
  %58 = inttoptr i32 %tmp2_v.i60.i to i32*
  store i32 1096900961, i32* %58, align 4
  %tmp2_v1.i.i = add i32 %54, -34
  %59 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2021146945, i32* %59, align 4
  %tmp2_v2.i61.i = add i32 %54, -30
  %60 = inttoptr i32 %tmp2_v2.i61.i to i32*
  store i32 1631666497, i32* %60, align 4
  %tmp2_v3.i62.i = add i32 %54, -26
  %61 = inttoptr i32 %tmp2_v3.i62.i to i32*
  store i32 1111646561, i32* %61, align 4
  %tmp2_v4.i63.i = add i32 %54, -22
  %62 = inttoptr i32 %tmp2_v4.i63.i to i32*
  store i32 1631798082, i32* %62, align 4
  %tmp2_v5.i64.i = add i32 %54, -18
  %63 = inttoptr i32 %tmp2_v5.i64.i to i32*
  store i32 1096900961, i32* %63, align 4
  %tmp2_v6.i65.i = add i32 %54, -14
  %64 = inttoptr i32 %tmp2_v6.i65.i to i16*
  store i16 97, i16* %64, align 2
  store i32 %tmp2_v.i60.i, i32* %17, align 4
  %spi.bis.615 = ptrtoint[15 x i8]* @str.615 to i32
  store i32 %spi.bis.615, i32* %18, align 16
  store i32 134517394, i32* %19, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.lcssa.i, i32 inreg noundef %57, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 97, i32* %17, align 4
  store i32 %tmp2_v.i60.i, i32* %18, align 16
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
  %.not.i11.i2233.i14 = icmp eq i8 %70, 0
  br i1 %.not.i11.i2233.i14, label %Func_remove_char.exit49, label %BB_80492FF.i.lr.ph.lr.ph.i16

BB_80492FF.i.lr.ph.lr.ph.i16:                     ; preds = %Func_remove_char.exit
  %tmp2_v1.i33.i.i15 = add i32 %tmp0_v.i16.i, -108
  %71 = inttoptr i32 %tmp2_v1.i33.i.i15 to i32*
  br label %BB_80492FF.i.lr.ph.i28

BB_80492FF.i.i22:                                 ; preds = %BB_8049344.i.i35, %BB_80492FF.i.lr.ph.i28
  %72 = phi i8 [ %79, %BB_80492FF.i.lr.ph.i28 ], [ %86, %BB_8049344.i.i35 ]
  %73 = phi i32 [ %80, %BB_80492FF.i.lr.ph.i28 ], [ %tmp0_v1.i37.i.i32, %BB_8049344.i.i35 ]
  %tmp0_v4.i.i.i17 = zext i8 %72 to i32
  %74 = load i8, i8* %25, align 4
  %tmp0_v6.i.i.i18 = zext i8 %74 to i32
  %cc_dst_v.i.i.i19 = sub nsw i32 %tmp0_v6.i.i.i18, %tmp0_v4.i.i.i17
  %tmp4_v.i.i.i20 = and i32 %cc_dst_v.i.i.i19, 255
  %.not.i.i.i21 = icmp eq i32 %tmp4_v.i.i.i20, 0
  br i1 %.not.i.i.i21, label %BB_804930F.i.i31, label %BB_8049344.i.i35

BB_8049348.i.loopexit.i26:                        ; preds = %BB_8049317.i.i42, %BB_804930F.i.i31
  %75 = phi i32 [ %81, %BB_804930F.i.i31 ], [ %92, %BB_8049317.i.i42 ]
  %r_ecx.1.lcssa.i23 = phi i32 [ %r_ecx.0.ph34.i27, %BB_804930F.i.i31 ], [ %storemerge30.i36, %BB_8049317.i.i42 ]
  %76 = load i32, i32* %26, align 16
  %tmp0_v3.i9.i21.i24 = add i32 %76, %75
  %77 = inttoptr i32 %tmp0_v3.i9.i21.i24 to i8*
  %78 = load i8, i8* %77, align 1
  %.not.i11.i22.i25 = icmp eq i8 %78, 0
  br i1 %.not.i11.i22.i25, label %Func_remove_char.exit49, label %BB_80492FF.i.lr.ph.i28

BB_80492FF.i.lr.ph.i28:                           ; preds = %BB_8049348.i.loopexit.i26, %BB_80492FF.i.lr.ph.lr.ph.i16
  %79 = phi i8 [ %70, %BB_80492FF.i.lr.ph.lr.ph.i16 ], [ %78, %BB_8049348.i.loopexit.i26 ]
  %80 = phi i32 [ 0, %BB_80492FF.i.lr.ph.lr.ph.i16 ], [ %76, %BB_8049348.i.loopexit.i26 ]
  %r_ecx.0.ph34.i27 = phi i32 [ %r_ecx.0.ph.lcssa.i, %BB_80492FF.i.lr.ph.lr.ph.i16 ], [ %r_ecx.1.lcssa.i23, %BB_8049348.i.loopexit.i26 ]
  br label %BB_80492FF.i.i22

BB_804930F.i.i31:                                 ; preds = %BB_80492FF.i.i22
  store i32 %73, i32* %71, align 4
  %81 = load i32, i32* %18, align 16
  %tmp0_v3.i22.i28.i29 = add i32 %81, %73
  %82 = inttoptr i32 %tmp0_v3.i22.i28.i29 to i8*
  %83 = load i8, i8* %82, align 1
  %.not.i24.i29.i30 = icmp eq i8 %83, 0
  br i1 %.not.i24.i29.i30, label %BB_8049348.i.loopexit.i26, label %BB_8049317.i.i42

BB_8049344.i.i35:                                 ; preds = %BB_80492FF.i.i22
  %tmp0_v1.i37.i.i32 = add i32 %73, 1
  store i32 %tmp0_v1.i37.i.i32, i32* %26, align 16
  %84 = load i32, i32* %18, align 16
  %tmp0_v3.i9.i.i33 = add i32 %84, %tmp0_v1.i37.i.i32
  %85 = inttoptr i32 %tmp0_v3.i9.i.i33 to i8*
  %86 = load i8, i8* %85, align 1
  %.not.i11.i.i34 = icmp eq i8 %86, 0
  br i1 %.not.i11.i.i34, label %Func_remove_char.exit49, label %BB_80492FF.i.i22

BB_8049317.i.i42:                                 ; preds = %BB_8049317.i.i42, %BB_804930F.i.i31
  %87 = phi i8* [ %93, %BB_8049317.i.i42 ], [ %82, %BB_804930F.i.i31 ]
  %88 = phi i32 [ %92, %BB_8049317.i.i42 ], [ %81, %BB_804930F.i.i31 ]
  %storemerge30.i36 = phi i32 [ %tmp0_v13.i.i.i39, %BB_8049317.i.i42 ], [ %73, %BB_804930F.i.i31 ]
  %tmp2_v1.i46.i.i37 = add i32 %88, 1
  %tmp0_v4.i49.i.i38 = add i32 %tmp2_v1.i46.i.i37, %storemerge30.i36
  %89 = inttoptr i32 %tmp0_v4.i49.i.i38 to i8*
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %87, align 1
  %91 = load i32, i32* %71, align 4
  %tmp0_v13.i.i.i39 = add i32 %91, 1
  store i32 %tmp0_v13.i.i.i39, i32* %71, align 4
  %92 = load i32, i32* %18, align 16
  %tmp0_v3.i22.i.i40 = add i32 %92, %tmp0_v13.i.i.i39
  %93 = inttoptr i32 %tmp0_v3.i22.i.i40 to i8*
  %94 = load i8, i8* %93, align 1
  %.not.i24.i.i41 = icmp eq i8 %94, 0
  br i1 %.not.i24.i.i41, label %BB_8049348.i.loopexit.i26, label %BB_8049317.i.i42

Func_remove_char.exit49:                          ; preds = %BB_8049344.i.i35, %BB_8049348.i.loopexit.i26, %Func_remove_char.exit
  %r_ecx.0.ph.lcssa.i43 = phi i32 [ %r_ecx.0.ph.lcssa.i, %Func_remove_char.exit ], [ %r_ecx.0.ph34.i27, %BB_8049344.i.i35 ], [ %r_ecx.1.lcssa.i23, %BB_8049348.i.loopexit.i26 ]
  %.lcssa18.i44 = phi i32 [ 0, %Func_remove_char.exit ], [ %tmp0_v1.i37.i.i32, %BB_8049344.i.i35 ], [ %76, %BB_8049348.i.loopexit.i26 ]
  %95 = load i32, i32* %21, align 8
  %tmp2_v.i52.i = add i32 %95, -38
  store i32 %tmp2_v.i52.i, i32* %17, align 4
  %spi.bis.613 = ptrtoint[14 x i8]* @str.613 to i32
  store i32 %spi.bis.613, i32* %18, align 16
  store i32 134517433, i32* %19, align 4
  %96 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.lcssa.i43, i32 inreg noundef %.lcssa18.i44, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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
