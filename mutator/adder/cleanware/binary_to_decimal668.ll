; Mutation 668
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

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @binary_to_decimal668(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i7.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i11.i = add i32 %tmp0_v.i.i, -41
  %10 = inttoptr i32 %tmp2_v3.i11.i to i32*
  store i32 808529969, i32* %10, align 4
  %tmp2_v4.i12.i = add i32 %tmp0_v.i.i, -37
  %11 = inttoptr i32 %tmp2_v4.i12.i to i16*
  store i16 49, i16* %11, align 2
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -80
  %12 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v3.i11.i, i32* %12, align 16
  %tmp2_v8.i16.i = add i32 %tmp0_v.i.i, -84
  %13 = inttoptr i32 %tmp2_v8.i16.i to i32*
  store i32 134517275, i32* %13, align 4
  %tmp2_v.i34.i.i = add i32 %tmp0_v.i.i, -88
  %14 = inttoptr i32 %tmp2_v.i34.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %14, align 8
  %tmp2_v1.i36.i.i = add i32 %tmp0_v.i.i, -92
  %15 = inttoptr i32 %tmp2_v1.i36.i.i to i32*
  store i32 134529024, i32* %15, align 4
  %tmp2_v2.i38.i.i = add i32 %tmp0_v.i.i, -116
  %16 = inttoptr i32 %tmp2_v2.i38.i.i to i32*
  store i32 134517459, i32* %16, align 4
  %17 = load i32, i32* %12, align 16
  %tmp2_v3.i23.i.i = add i32 %tmp0_v.i.i, -128
  %18 = inttoptr i32 %tmp2_v3.i23.i.i to i32*
  store i32 %17, i32* %18, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -132
  %19 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517477, i32* %19, align 4
  %arg.i.i.i = load i32, i32* %18, align 16
  %20 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i.i, -100
  %21 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %20, i32* %21, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -112
  %22 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %22, align 16
  %tmp2_v2.i8.i.i = add i32 %tmp0_v.i.i, -108
  %23 = inttoptr i32 %tmp2_v2.i8.i.i to i32*
  store i32 1, i32* %23, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i.i, -104
  %24 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %storemerge.in20.i = load i32, i32* %21, align 4
  %storemerge21.i = add i32 %storemerge.in20.i, -1
  store i32 %storemerge21.i, i32* %24, align 8
  %25 = icmp sgt i32 %storemerge21.i, -1
  br i1 %25, label %BB_8049304.i.i, label %Func_convert.exit

BB_8049319.i.i:                                   ; preds = %BB_8049313.i.i, %BB_8049304.i.i
  %26 = load i32, i32* %23, align 4
  %tmp0_v1.i.i.i = shl i32 %26, 1
  store i32 %tmp0_v1.i.i.i, i32* %23, align 4
  %storemerge.in.i = load i32, i32* %24, align 8
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, i32* %24, align 8
  %27 = icmp sgt i32 %storemerge.i, -1
  br i1 %27, label %BB_8049304.i.i, label %Func_convert.exit

BB_8049304.i.i:                                   ; preds = %BB_8049319.i.i, %.exit
  %storemerge22.i = phi i32 [ %storemerge.i, %BB_8049319.i.i ], [ %storemerge21.i, %.exit ]
  %28 = load i32, i32* %12, align 16
  %tmp0_v3.i29.i.i = add i32 %28, %storemerge22.i
  %29 = inttoptr i32 %tmp0_v3.i29.i.i to i8*
  %30 = load i8, i8* %29, align 1
  %.not.i.i.i = icmp eq i8 %30, 49
  br i1 %.not.i.i.i, label %BB_8049313.i.i, label %BB_8049319.i.i

BB_8049313.i.i:                                   ; preds = %BB_8049304.i.i
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %22, align 16
  %tmp0_v3.i44.i.i = add i32 %32, %31
  store i32 %tmp0_v3.i44.i.i, i32* %22, align 16
  br label %BB_8049319.i.i

Func_convert.exit:                                ; preds = %BB_8049319.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %storemerge22.i, %BB_8049319.i.i ]
  %33 = load i32, i32* %22, align 16
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 8
  %tmp2_v.i35.i = add i32 %35, -48
  %36 = inttoptr i32 %tmp2_v.i35.i to i32*
  store i32 %33, i32* %36, align 4
  %tmp2_v4.i39.i = add i32 %tmp0_v.i.i, -76
  %37 = inttoptr i32 %tmp2_v4.i39.i to i32*
  store i32 %33, i32* %37, align 4
  %tmp2_v5.i41.i = add i32 %34, -8184
  store i32 %tmp2_v5.i41.i, i32* %12, align 16
  store i32 134517299, i32* %13, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v7.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  %tmp2_v.i28.i = add i32 %35, -27
  %41 = inttoptr i32 %tmp2_v.i28.i to i32*
  store i32 825307441, i32* %41, align 4
  %tmp2_v1.i.i = add i32 %35, -23
  %42 = inttoptr i32 %tmp2_v1.i.i to i16*
  store i16 49, i16* %42, align 2
  store i32 %tmp2_v.i28.i, i32* %12, align 16
  store i32 134517327, i32* %13, align 4
  store i32 %35, i32* %14, align 8
  store i32 %34, i32* %15, align 4
  store i32 134517459, i32* %16, align 4
  %43 = load i32, i32* %12, align 16
  store i32 %43, i32* %18, align 16
  store i32 134517477, i32* %19, align 4
  %arg.i.i.i10 = load i32, i32* %18, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i.i10)
  store i32 %44, i32* %21, align 4
  store i32 0, i32* %22, align 16
  store i32 1, i32* %23, align 4
  %storemerge.in20.i15 = load i32, i32* %21, align 4
  %storemerge21.i16 = add i32 %storemerge.in20.i15, -1
  store i32 %storemerge21.i16, i32* %24, align 8
  %45 = icmp sgt i32 %storemerge21.i16, -1
  br i1 %45, label %BB_8049304.i.i24, label %Func_convert.exit33

BB_8049319.i.i20:                                 ; preds = %BB_8049313.i.i26, %BB_8049304.i.i24
  %46 = load i32, i32* %23, align 4
  %tmp0_v1.i.i.i17 = shl i32 %46, 1
  store i32 %tmp0_v1.i.i.i17, i32* %23, align 4
  %storemerge.in.i18 = load i32, i32* %24, align 8
  %storemerge.i19 = add i32 %storemerge.in.i18, -1
  store i32 %storemerge.i19, i32* %24, align 8
  %47 = icmp sgt i32 %storemerge.i19, -1
  br i1 %47, label %BB_8049304.i.i24, label %Func_convert.exit33

BB_8049304.i.i24:                                 ; preds = %BB_8049319.i.i20, %Func_convert.exit
  %storemerge22.i21 = phi i32 [ %storemerge.i19, %BB_8049319.i.i20 ], [ %storemerge21.i16, %Func_convert.exit ]
  %48 = load i32, i32* %12, align 16
  %tmp0_v3.i29.i.i22 = add i32 %48, %storemerge22.i21
  %49 = inttoptr i32 %tmp0_v3.i29.i.i22 to i8*
  %50 = load i8, i8* %49, align 1
  %.not.i.i.i23 = icmp eq i8 %50, 49
  br i1 %.not.i.i.i23, label %BB_8049313.i.i26, label %BB_8049319.i.i20

BB_8049313.i.i26:                                 ; preds = %BB_8049304.i.i24
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* %22, align 16
  %tmp0_v3.i44.i.i25 = add i32 %52, %51
  store i32 %tmp0_v3.i44.i.i25, i32* %22, align 16
  br label %BB_8049319.i.i20

Func_convert.exit33:                              ; preds = %BB_8049319.i.i20, %Func_convert.exit
  %r_edx.0.lcssa.i27 = phi i32 [ %40, %Func_convert.exit ], [ %storemerge22.i21, %BB_8049319.i.i20 ]
  %53 = load i32, i32* %22, align 16
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 8
  %tmp2_v.i58.i = add i32 %55, -44
  %56 = inttoptr i32 %tmp2_v.i58.i to i32*
  store i32 %53, i32* %56, align 4
  store i32 %53, i32* %37, align 4
  %tmp2_v5.i65.i = add i32 %54, -8169
  store i32 %tmp2_v5.i65.i, i32* %12, align 16
  store i32 134517351, i32* %13, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.lcssa.i27, i32 noundef %tmp2_v7.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %tmp2_v.i70.i = add i32 %55, -21
  %60 = inttoptr i32 %tmp2_v.i70.i to i32*
  store i32 808464433, i32* %60, align 4
  %tmp2_v1.i71.i = add i32 %55, -17
  %61 = inttoptr i32 %tmp2_v1.i71.i to i32*
  store i32 825241648, i32* %61, align 4
  %tmp2_v2.i72.i = add i32 %55, -13
  %62 = inttoptr i32 %tmp2_v2.i72.i to i8*
  store i8 0, i8* %62, align 1
  store i32 %tmp2_v.i70.i, i32* %12, align 16
  store i32 134517384, i32* %13, align 4
  store i32 %55, i32* %14, align 8
  store i32 %54, i32* %15, align 4
  store i32 134517459, i32* %16, align 4
  %63 = load i32, i32* %12, align 16
  store i32 %63, i32* %18, align 16
  store i32 134517477, i32* %19, align 4
  %arg.i.i.i41 = load i32, i32* %18, align 16
  %64 = tail call i32 @strlen(i32 %arg.i.i.i41)
  store i32 %64, i32* %21, align 4
  store i32 0, i32* %22, align 16
  store i32 1, i32* %23, align 4
  %storemerge.in20.i46 = load i32, i32* %21, align 4
  %storemerge21.i47 = add i32 %storemerge.in20.i46, -1
  store i32 %storemerge21.i47, i32* %24, align 8
  %65 = icmp sgt i32 %storemerge21.i47, -1
  br i1 %65, label %BB_8049304.i.i55, label %Func_convert.exit64

BB_8049319.i.i51:                                 ; preds = %BB_8049313.i.i57, %BB_8049304.i.i55
  %66 = load i32, i32* %23, align 4
  %tmp0_v1.i.i.i48 = shl i32 %66, 1
  store i32 %tmp0_v1.i.i.i48, i32* %23, align 4
  %storemerge.in.i49 = load i32, i32* %24, align 8
  %storemerge.i50 = add i32 %storemerge.in.i49, -1
  store i32 %storemerge.i50, i32* %24, align 8
  %67 = icmp sgt i32 %storemerge.i50, -1
  br i1 %67, label %BB_8049304.i.i55, label %Func_convert.exit64

BB_8049304.i.i55:                                 ; preds = %BB_8049319.i.i51, %Func_convert.exit33
  %storemerge22.i52 = phi i32 [ %storemerge.i50, %BB_8049319.i.i51 ], [ %storemerge21.i47, %Func_convert.exit33 ]
  %68 = load i32, i32* %12, align 16
  %tmp0_v3.i29.i.i53 = add i32 %68, %storemerge22.i52
  %69 = inttoptr i32 %tmp0_v3.i29.i.i53 to i8*
  %70 = load i8, i8* %69, align 1
  %.not.i.i.i54 = icmp eq i8 %70, 49
  br i1 %.not.i.i.i54, label %BB_8049313.i.i57, label %BB_8049319.i.i51

BB_8049313.i.i57:                                 ; preds = %BB_8049304.i.i55
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %22, align 16
  %tmp0_v3.i44.i.i56 = add i32 %72, %71
  store i32 %tmp0_v3.i44.i.i56, i32* %22, align 16
  br label %BB_8049319.i.i51

Func_convert.exit64:                              ; preds = %BB_8049319.i.i51, %Func_convert.exit33
  %r_edx.0.lcssa.i58 = phi i32 [ %59, %Func_convert.exit33 ], [ %storemerge22.i52, %BB_8049319.i.i51 ]
  %73 = load i32, i32* %22, align 16
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 8
  %tmp2_v.i46.i = add i32 %75, -40
  %76 = inttoptr i32 %tmp2_v.i46.i to i32*
  store i32 %73, i32* %76, align 4
  store i32 %73, i32* %37, align 4
  %tmp2_v5.i53.i = add i32 %74, -8154
  store i32 %tmp2_v5.i53.i, i32* %12, align 16
  store i32 134517408, i32* %13, align 4
  %77 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.lcssa.i58, i32 noundef %tmp2_v7.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @binary_to_decimal668(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
