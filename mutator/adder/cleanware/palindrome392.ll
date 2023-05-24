; Mutation 392
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack391 = internal global [8092 x i32] zeroinitializer, align 16
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

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @palindrome392(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_804926F.exit.i:
  %tmp2_v.i9.i = add i32 %arg_esp, 4
  %tmp0_v.i10.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i11.i = add i32 %tmp0_v.i10.i, -4
  %2 = inttoptr i32 %tmp2_v3.i11.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i12.i = add i32 %tmp0_v.i10.i, -8
  %3 = inttoptr i32 %tmp2_v4.i12.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i10.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i10.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i9.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i10.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i67.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i71.i = add i32 %tmp0_v.i10.i, -20
  %9 = inttoptr i32 %tmp2_v2.i71.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i72.i = add i32 %tmp0_v.i10.i, -38
  %10 = inttoptr i32 %tmp2_v3.i72.i to i32*
  store i32 544501614, i32* %10, align 4
  %tmp2_v4.i73.i = add i32 %tmp0_v.i10.i, -34
  %11 = inttoptr i32 %tmp2_v4.i73.i to i32*
  store i32 1634738273, i32* %11, align 4
  %tmp2_v5.i74.i = add i32 %tmp0_v.i10.i, -30
  %12 = inttoptr i32 %tmp2_v5.i74.i to i32*
  store i32 1684957548, i32* %12, align 4
  %tmp2_v6.i75.i = add i32 %tmp0_v.i10.i, -26
  %13 = inttoptr i32 %tmp2_v6.i75.i to i32*
  store i32 1701670770, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i10.i, -22
  %14 = inttoptr i32 %tmp2_v7.i.i to i16*
  store i16 33, i16* %14, align 2
  %tmp2_v8.i76.i = add i32 %tmp0_v.i10.i, -53
  %15 = inttoptr i32 %tmp2_v8.i76.i to i32*
  store i32 1667457633, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i10.i, -49
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 24930, i16* %16, align 2
  %tmp2_v10.i.i = add i32 %tmp0_v.i10.i, -47
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 1
  %tmp2_v11.i.i = add i32 %tmp0_v.i10.i, -46
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1684234849, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i10.i, -42
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6382179, i32* %19, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i10.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v3.i72.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i10.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517359, i32* %21, align 4
  %tmp2_v.i35.i.i = add i32 %tmp0_v.i10.i, -88
  %22 = inttoptr i32 %tmp2_v.i35.i.i to i32*
  store i32 %tmp2_v4.i12.i, i32* %22, align 8
  %tmp2_v1.i37.i.i = add i32 %tmp0_v.i10.i, -92
  %23 = inttoptr i32 %tmp2_v1.i37.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i39.i.i = add i32 %tmp0_v.i10.i, -116
  %24 = inttoptr i32 %tmp2_v2.i39.i.i to i32*
  store i32 134517616, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i10.i, -128
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i19.i.i = add i32 %tmp0_v.i10.i, -132
  %27 = inttoptr i32 %tmp2_v4.i19.i.i to i32*
  store i32 134517634, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i43.i.i = add i32 %tmp0_v.i10.i, -104
  %29 = inttoptr i32 %tmp2_v.i43.i.i to i32*
  store i32 %28, i32* %29, align 8
  %tmp0_v3.i47.i.i = lshr i32 %28, 31
  %tmp0_v4.i48.i.i = add i32 %tmp0_v3.i47.i.i, %28
  %tmp0_v5.i.i.i = ashr i32 %tmp0_v4.i48.i.i, 1
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i10.i, -100
  %30 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %tmp0_v5.i.i.i, i32* %30, align 4
  %tmp2_v7.i49.i.i = add i32 %tmp0_v.i10.i, -108
  %31 = inttoptr i32 %tmp2_v7.i49.i.i to i32*
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %30, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %BB_80493A0.i.i, label %Func_is_palindrome.exit

BB_80493A0.i.i:                                   ; preds = %BB_80493CB.i.i, %Func_804926F.exit.i
  %storemerge19.i = phi i32 [ %tmp0_v1.i.i.i, %BB_80493CB.i.i ], [ 0, %Func_804926F.exit.i ]
  %34 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %34, %storemerge19.i
  %35 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %tmp0_v4.i.i.i = zext i8 %36 to i32
  %37 = load i32, i32* %29, align 8
  %38 = xor i32 %storemerge19.i, -1
  %tmp2_v9.i.i.i = add i32 %37, %38
  %tmp0_v12.i.i.i = add i32 %tmp2_v9.i.i.i, %34
  %39 = inttoptr i32 %tmp0_v12.i.i.i to i8*
  %40 = load i8, i8* %39, align 1
  %tmp0_v13.i.i.i = zext i8 %40 to i32
  %cc_dst_v.i.i.i = sub nsw i32 %tmp0_v4.i.i.i, %tmp0_v13.i.i.i
  %tmp4_v.i.i.i1 = and i32 %cc_dst_v.i.i.i, 255
  %41 = icmp eq i32 %tmp4_v.i.i.i1, 0
  %tmp0_v1.i.i.i = add nuw nsw i32 %storemerge19.i, 1
  br i1 %41, label %BB_80493CB.i.i, label %Func_is_palindrome.exit

BB_80493CB.i.i:                                   ; preds = %BB_80493A0.i.i
  store i32 %tmp0_v1.i.i.i, i32* %31, align 4
  %42 = load i32, i32* %30, align 4
  %43 = icmp slt i32 %tmp0_v1.i.i.i, %42
  br i1 %43, label %BB_80493A0.i.i, label %Func_is_palindrome.exit

Func_is_palindrome.exit:                          ; preds = %BB_80493CB.i.i, %BB_80493A0.i.i, %Func_804926F.exit.i
  %r_ecx.1.i = phi i32 [ %tmp2_v.i9.i, %Func_804926F.exit.i ], [ %tmp2_v9.i.i.i, %BB_80493CB.i.i ], [ %tmp2_v9.i.i.i, %BB_80493A0.i.i ]
  %r_edx.1.i = phi i32 [ %tmp0_v3.i47.i.i, %Func_804926F.exit.i ], [ %tmp0_v4.i.i.i, %BB_80493CB.i.i ], [ %tmp0_v4.i.i.i, %BB_80493A0.i.i ]
  %44 = load i32, i32* %23, align 4
  %45 = load i32, i32* %22, align 8
  %tmp2_v.i81.i = add i32 %45, -30
  %tmp2_v1.i82.i = add i32 %tmp0_v.i10.i, -76
  %46 = inttoptr i32 %tmp2_v1.i82.i to i32*
  store i32 %tmp2_v.i81.i, i32* %46, align 4
  %tmp2_v2.i84.i = add i32 %44, -8162
  store i32 %tmp2_v2.i84.i, i32* %20, align 16
  store i32 134517409, i32* %21, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i, i32 inreg noundef %r_edx.1.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 10, i32* %20, align 16
  store i32 134517422, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  %48 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i63.i = add i32 %45, -45
  store i32 %tmp2_v.i63.i, i32* %20, align 16
  store i32 134517437, i32* %21, align 4
  store i32 %45, i32* %22, align 8
  store i32 %44, i32* %23, align 4
  store i32 134517616, i32* %24, align 4
  %49 = load i32, i32* %20, align 16
  store i32 %49, i32* %26, align 16
  store i32 134517634, i32* %27, align 4
  %arg.i.i.i9 = load i32, i32* %26, align 16
  %50 = tail call i32 @strlen(i32 %arg.i.i.i9)
  store i32 %50, i32* %29, align 8
  %tmp0_v3.i47.i.i11 = lshr i32 %50, 31
  %tmp0_v4.i48.i.i12 = add i32 %tmp0_v3.i47.i.i11, %50
  %tmp0_v5.i.i.i13 = ashr i32 %tmp0_v4.i48.i.i12, 1
  store i32 %tmp0_v5.i.i.i13, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %51 = load i32, i32* %30, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %BB_80493A0.i.i25, label %Func_is_palindrome.exit35

BB_80493A0.i.i25:                                 ; preds = %BB_80493CB.i.i26, %Func_is_palindrome.exit
  %storemerge19.i16 = phi i32 [ %tmp0_v1.i.i.i24, %BB_80493CB.i.i26 ], [ 0, %Func_is_palindrome.exit ]
  %53 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i17 = add i32 %53, %storemerge19.i16
  %54 = inttoptr i32 %tmp0_v3.i.i.i17 to i8*
  %55 = load i8, i8* %54, align 1
  %tmp0_v4.i.i.i18 = zext i8 %55 to i32
  %56 = load i32, i32* %29, align 8
  %57 = xor i32 %storemerge19.i16, -1
  %tmp2_v9.i.i.i19 = add i32 %56, %57
  %tmp0_v12.i.i.i20 = add i32 %tmp2_v9.i.i.i19, %53
  %58 = inttoptr i32 %tmp0_v12.i.i.i20 to i8*
  %59 = load i8, i8* %58, align 1
  %tmp0_v13.i.i.i21 = zext i8 %59 to i32
  %cc_dst_v.i.i.i22 = sub nsw i32 %tmp0_v4.i.i.i18, %tmp0_v13.i.i.i21
  %tmp4_v.i.i.i23 = and i32 %cc_dst_v.i.i.i22, 255
  %60 = icmp eq i32 %tmp4_v.i.i.i23, 0
  %tmp0_v1.i.i.i24 = add nuw nsw i32 %storemerge19.i16, 1
  br i1 %60, label %BB_80493CB.i.i26, label %Func_is_palindrome.exit35

BB_80493CB.i.i26:                                 ; preds = %BB_80493A0.i.i25
  store i32 %tmp0_v1.i.i.i24, i32* %31, align 4
  %61 = load i32, i32* %30, align 4
  %62 = icmp slt i32 %tmp0_v1.i.i.i24, %61
  br i1 %62, label %BB_80493A0.i.i25, label %Func_is_palindrome.exit35

Func_is_palindrome.exit35:                        ; preds = %BB_80493CB.i.i26, %BB_80493A0.i.i25, %Func_is_palindrome.exit
  %r_ecx.1.i27 = phi i32 [ %r_ecx.1.i, %Func_is_palindrome.exit ], [ %tmp2_v9.i.i.i19, %BB_80493CB.i.i26 ], [ %tmp2_v9.i.i.i19, %BB_80493A0.i.i25 ]
  %r_edx.1.i28 = phi i32 [ %tmp0_v3.i47.i.i11, %Func_is_palindrome.exit ], [ %tmp0_v4.i.i.i18, %BB_80493CB.i.i26 ], [ %tmp0_v4.i.i.i18, %BB_80493A0.i.i25 ]
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %22, align 8
  %tmp2_v.i53.i = add i32 %64, -45
  store i32 %tmp2_v.i53.i, i32* %46, align 4
  %tmp2_v2.i56.i = add i32 %63, -8184
  store i32 %tmp2_v2.i56.i, i32* %20, align 16
  store i32 134517463, i32* %21, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i27, i32 inreg noundef %r_edx.1.i28, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 10, i32* %20, align 16
  store i32 134517500, i32* %21, align 4
  %arg.i.i36 = load i32, i32* %20, align 16
  %66 = tail call i32 @putchar(i32 %arg.i.i36)  nounwind 
  %tmp2_v.i28.i = add i32 %64, -38
  store i32 %tmp2_v.i28.i, i32* %20, align 16
  store i32 134517515, i32* %21, align 4
  store i32 %64, i32* %22, align 8
  store i32 %63, i32* %23, align 4
  store i32 134517616, i32* %24, align 4
  %67 = load i32, i32* %20, align 16
  store i32 %67, i32* %26, align 16
  store i32 134517634, i32* %27, align 4
  %arg.i.i.i42 = load i32, i32* %26, align 16
  %68 = tail call i32 @strlen(i32 %arg.i.i.i42)
  store i32 %68, i32* %29, align 8
  %tmp0_v3.i47.i.i44 = lshr i32 %68, 31
  %tmp0_v4.i48.i.i45 = add i32 %tmp0_v3.i47.i.i44, %68
  %tmp0_v5.i.i.i46 = ashr i32 %tmp0_v4.i48.i.i45, 1
  store i32 %tmp0_v5.i.i.i46, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %69 = load i32, i32* %30, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %BB_80493A0.i.i58, label %Func_is_palindrome.exit68

BB_80493A0.i.i58:                                 ; preds = %BB_80493CB.i.i59, %Func_is_palindrome.exit35
  %storemerge19.i49 = phi i32 [ %tmp0_v1.i.i.i57, %BB_80493CB.i.i59 ], [ 0, %Func_is_palindrome.exit35 ]
  %71 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i50 = add i32 %71, %storemerge19.i49
  %72 = inttoptr i32 %tmp0_v3.i.i.i50 to i8*
  %73 = load i8, i8* %72, align 1
  %tmp0_v4.i.i.i51 = zext i8 %73 to i32
  %74 = load i32, i32* %29, align 8
  %75 = xor i32 %storemerge19.i49, -1
  %tmp2_v9.i.i.i52 = add i32 %74, %75
  %tmp0_v12.i.i.i53 = add i32 %tmp2_v9.i.i.i52, %71
  %76 = inttoptr i32 %tmp0_v12.i.i.i53 to i8*
  %77 = load i8, i8* %76, align 1
  %tmp0_v13.i.i.i54 = zext i8 %77 to i32
  %cc_dst_v.i.i.i55 = sub nsw i32 %tmp0_v4.i.i.i51, %tmp0_v13.i.i.i54
  %tmp4_v.i.i.i56 = and i32 %cc_dst_v.i.i.i55, 255
  %78 = icmp eq i32 %tmp4_v.i.i.i56, 0
  %tmp0_v1.i.i.i57 = add nuw nsw i32 %storemerge19.i49, 1
  br i1 %78, label %BB_80493CB.i.i59, label %Func_is_palindrome.exit68

BB_80493CB.i.i59:                                 ; preds = %BB_80493A0.i.i58
  store i32 %tmp0_v1.i.i.i57, i32* %31, align 4
  %79 = load i32, i32* %30, align 4
  %80 = icmp slt i32 %tmp0_v1.i.i.i57, %79
  br i1 %80, label %BB_80493A0.i.i58, label %Func_is_palindrome.exit68

Func_is_palindrome.exit68:                        ; preds = %BB_80493CB.i.i59, %BB_80493A0.i.i58, %Func_is_palindrome.exit35
  %r_ecx.1.i60 = phi i32 [ %r_ecx.1.i27, %Func_is_palindrome.exit35 ], [ %tmp2_v9.i.i.i52, %BB_80493CB.i.i59 ], [ %tmp2_v9.i.i.i52, %BB_80493A0.i.i58 ]
  %r_edx.1.i61 = phi i32 [ %tmp0_v3.i47.i.i44, %Func_is_palindrome.exit35 ], [ %tmp0_v4.i.i.i51, %BB_80493CB.i.i59 ], [ %tmp0_v4.i.i.i51, %BB_80493A0.i.i58 ]
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* %22, align 8
  %tmp2_v.i.i = add i32 %82, -38
  store i32 %tmp2_v.i.i, i32* %46, align 4
  %tmp2_v2.i.i = add i32 %81, -8184
  store i32 %tmp2_v2.i.i, i32* %20, align 16
  store i32 134517541, i32* %21, align 4
  %83 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i60, i32 inreg noundef %r_edx.1.i61, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @palindrome392 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack391, i32 0, i32 8092) to i32)) nounwind
