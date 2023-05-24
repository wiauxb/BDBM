; Mutation 340
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack339 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.337 = constant [20 x i8] c"odd_array[%d] = %d\0a\00"
@str.338 = constant [21 x i8] c"even_array[%d] = %d\0a\00"

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
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse
define internal fastcc void @split_even_odd340(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
helper_divl_EAX.exit393.i:
  %tmp2_v.i77.i = add i32 %arg_esp, 4
  %tmp0_v.i78.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i80.i = add i32 %tmp0_v.i78.i, -4
  %2 = inttoptr i32 %tmp2_v3.i80.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i81.i = add i32 %tmp0_v.i78.i, -8
  %3 = inttoptr i32 %tmp2_v4.i81.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i83.i = add i32 %tmp0_v.i78.i, -12
  %4 = inttoptr i32 %tmp2_v5.i83.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i85.i = add i32 %tmp0_v.i78.i, -16
  %5 = inttoptr i32 %tmp2_v6.i85.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i87.i = add i32 %tmp0_v.i78.i, -20
  %6 = inttoptr i32 %tmp2_v7.i87.i to i32*
  store i32 %tmp2_v.i77.i, i32* %6, align 4
  %tmp2_v9.i89.i = add i32 %tmp0_v.i78.i, -148
  %7 = inttoptr i32 %tmp2_v9.i89.i to i32*
  store i32 134517266, i32* %7, align 4
  %tmp4_v.i231.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i235.i = add i32 %tmp0_v.i78.i, -36
  %10 = inttoptr i32 %tmp2_v2.i235.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i237.i = add i32 %tmp0_v.i78.i, -76
  %11 = inttoptr i32 %tmp2_v3.i237.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i238.i = add i32 %tmp0_v.i78.i, -72
  %12 = inttoptr i32 %tmp2_v4.i238.i to i32*
  store i32 2, i32* %12, align 8
  %tmp2_v5.i239.i = add i32 %tmp0_v.i78.i, -68
  %13 = inttoptr i32 %tmp2_v5.i239.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i240.i = add i32 %tmp0_v.i78.i, -64
  %14 = inttoptr i32 %tmp2_v6.i240.i to i32*
  store i32 4, i32* %14, align 16
  %tmp2_v7.i241.i = add i32 %tmp0_v.i78.i, -60
  %15 = inttoptr i32 %tmp2_v7.i241.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i242.i = add i32 %tmp0_v.i78.i, -56
  %16 = inttoptr i32 %tmp2_v8.i242.i to i32*
  store i32 6, i32* %16, align 8
  %tmp2_v9.i243.i = add i32 %tmp0_v.i78.i, -52
  %17 = inttoptr i32 %tmp2_v9.i243.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i244.i = add i32 %tmp0_v.i78.i, -48
  %18 = inttoptr i32 %tmp2_v10.i244.i to i32*
  store i32 8, i32* %18, align 16
  %tmp2_v11.i245.i = add i32 %tmp0_v.i78.i, -44
  %19 = inttoptr i32 %tmp2_v11.i245.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v12.i246.i = add i32 %tmp0_v.i78.i, -40
  %20 = inttoptr i32 %tmp2_v12.i246.i to i32*
  store i32 10, i32* %20, align 8
  %tmp2_v13.i247.i = add i32 %tmp0_v.i78.i, -96
  %21 = inttoptr i32 %tmp2_v13.i247.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i250.i = add i32 %tmp0_v.i78.i, -92
  %22 = inttoptr i32 %tmp2_v17.i250.i to i32*
  store i32 9, i32* %22, align 4
  %tmp0_v1.i103.i = add i32 %tmp0_v.i78.i, -192
  %tmp0_v4.i259.i = add i32 %tmp0_v.i78.i, -189
  %tmp0_v6.i262.i = and i32 %tmp0_v4.i259.i, -16
  %tmp2_v.i264.i = add i32 %tmp0_v.i78.i, -88
  %23 = inttoptr i32 %tmp2_v.i264.i to i32*
  store i32 %tmp0_v6.i262.i, i32* %23, align 8
  %24 = load i32, i32* %21, align 16
  %tmp2_v9.i267.i = add i32 %24, -1
  %tmp2_v10.i268.i = add i32 %tmp0_v.i78.i, -84
  %25 = inttoptr i32 %tmp2_v10.i268.i to i32*
  store i32 %tmp2_v9.i267.i, i32* %25, align 4
  %tmp4_v.i269.i = shl i32 %24, 2
  %tmp0_v11.i270.i = add i32 %tmp4_v.i269.i, 15
  %tmp0_v15.i271.i = and i32 %tmp0_v11.i270.i, -4096
  %tmp0_v17.i272.i = sub i32 %tmp0_v1.i103.i, %tmp0_v15.i271.i
  %tmp0_v.i312.i = and i32 %tmp0_v11.i270.i, 4080
  %tmp0_v1.i314.i = sub i32 %tmp0_v1.i103.i, %tmp0_v.i312.i
  %tmp2_v.i116.i = add i32 %tmp0_v.i78.i, -80
  %26 = inttoptr i32 %tmp2_v.i116.i to i32*
  store i32 %tmp0_v1.i314.i, i32* %26, align 16
  %tmp2_v7.i117.i = add i32 %tmp0_v.i78.i, -100
  %27 = inttoptr i32 %tmp2_v7.i117.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i78.i, -104
  %28 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %21, align 16
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_804937C.i, label %BB_80493B3.i

BB_80493D1.i:                                     ; preds = %BB_80493C3.i
  %31 = load i32, i32* %23, align 8
  %32 = load i32, i32* %35, align 4
  %tmp4_v8.i.i = shl i32 %32, 2
  %tmp2_v9.i.i = add i32 %tmp4_v8.i.i, %31
  %33 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %76, i32* %33, align 4
  %34 = load i32, i32* %35, align 4
  %tmp0_v12.i.i = add i32 %34, 1
  store i32 %tmp0_v12.i.i, i32* %35, align 4
  %.pre26 = load i32, i32* %36, align 16
  br label %BB_80493E5.i

BB_80493B3.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.0.lcssa = phi i32 [ %tmp0_v17.i272.i, %helper_divl_EAX.exit393.i ], [ %r_ecx.3, %BB_80493A7.i ]
  %tmp2_v.i16.i = add i32 %tmp0_v.i78.i, -108
  %35 = inttoptr i32 %tmp2_v.i16.i to i32*
  store i32 0, i32* %35, align 4
  %tmp2_v1.i17.i = add i32 %tmp0_v.i78.i, -112
  %36 = inttoptr i32 %tmp2_v1.i17.i to i32*
  store i32 0, i32* %36, align 16
  %37 = load i32, i32* %21, align 16
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %BB_80493C3.i, label %BB_80493F1.i

BB_804943B.i:                                     ; preds = %BB_804943B.i.lr.ph, %BB_804943B.i
  %storemerge323 = phi i32 [ 0, %BB_804943B.i.lr.ph ], [ %tmp0_v2.i345.i, %BB_804943B.i ]
  %39 = load i32, i32* %23, align 8
  %tmp4_v.i30.i = shl i32 %storemerge323, 2
  %tmp2_v3.i31.i = add i32 %39, %tmp4_v.i30.i
  %40 = inttoptr i32 %tmp2_v3.i31.i to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %170, align 8
  %42 = load i32, i32* %167, align 8
  store i32 %42, i32* %171, align 4
  %spi338 = ptrtoint[21 x i8]* @str.338 to i32
  store i32 %spi338, i32* %.pre-phi, align 16
  store i32 134517847, i32* %.pre-phi31, align 4
  %43 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge323, i32 noundef %tmp2_v.i329.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %44 = load i32, i32* %167, align 8
  %tmp0_v2.i345.i = add i32 %44, 1
  store i32 %tmp0_v2.i345.i, i32* %167, align 8
  %45 = load i32, i32* %35, align 4
  %46 = icmp slt i32 %tmp0_v2.i345.i, %45
  br i1 %46, label %BB_804943B.i, label %BB_8049466.i

BB_80494F8.i:                                     ; preds = %Func_split_nums.exit, %BB_80494C6.i
  store i32 10, i32* %.pre-phi, align 16
  store i32 134518018, i32* %.pre-phi31, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %47 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i355.i = add i32 %148, -120
  %48 = inttoptr i32 %tmp2_v.i355.i to i32*
  %tmp2_v.i305.i = add i32 %148, -124
  %49 = inttoptr i32 %tmp2_v.i305.i to i32*
  store i32 0, i32* %48, align 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %BB_804950E.i.lr.ph, label %.exit

BB_804950E.i.lr.ph:                               ; preds = %BB_80494F8.i
  %tmp2_v.i126.i = add i32 %148, -132
  %52 = inttoptr i32 %tmp2_v.i126.i to i32*
  %tmp2_v7.i135.i = add i32 %tmp0_v1.i314.i, -8
  %53 = inttoptr i32 %tmp2_v7.i135.i to i32*
  %tmp2_v11.i139.i = add i32 %147, -8128
  br label %BB_804950E.i

BB_8049393.i:                                     ; preds = %BB_804937C.i
  %54 = load i32, i32* %26, align 16
  %55 = load i32, i32* %27, align 4
  %tmp4_v8.i53.i = shl i32 %55, 2
  %tmp2_v9.i54.i = add i32 %tmp4_v8.i53.i, %54
  %56 = inttoptr i32 %tmp2_v9.i54.i to i32*
  store i32 %74, i32* %56, align 4
  %57 = load i32, i32* %27, align 4
  %tmp0_v12.i57.i = add i32 %57, 1
  store i32 %tmp0_v12.i57.i, i32* %27, align 4
  %.pre = load i32, i32* %28, align 8
  br label %BB_80493A7.i

BB_80493F1.i:                                     ; preds = %BB_80493E5.i, %BB_80493B3.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.0.lcssa, %BB_80493B3.i ], [ %r_ecx.2, %BB_80493E5.i ]
  %tmp2_v.i68.i = add i32 %tmp0_v.i78.i, -116
  %58 = inttoptr i32 %tmp2_v.i68.i to i32*
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %27, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %BB_80493FA.i.lr.ph, label %BB_80493F1.i.BB_8049425.i_crit_edge

BB_80493F1.i.BB_8049425.i_crit_edge:              ; preds = %BB_80493F1.i
  %.pre27 = add i32 %tmp0_v1.i314.i, -16
  %.pre28 = inttoptr i32 %.pre27 to i32*
  %.pre29 = add i32 %tmp0_v1.i314.i, -20
  %.pre30 = inttoptr i32 %.pre29 to i32*
  br label %BB_8049425.i

BB_80493FA.i.lr.ph:                               ; preds = %BB_80493F1.i
  %tmp2_v6.i288.i = add i32 %tmp0_v1.i314.i, -8
  %61 = inttoptr i32 %tmp2_v6.i288.i to i32*
  %tmp2_v9.i291.i = add i32 %tmp0_v1.i314.i, -12
  %62 = inttoptr i32 %tmp2_v9.i291.i to i32*
  %tmp2_v11.i294.i = add i32 %tmp0_v1.i314.i, -16
  %63 = inttoptr i32 %tmp2_v11.i294.i to i32*
  %tmp2_v12.i295.i = add i32 %tmp0_v1.i314.i, -20
  %64 = inttoptr i32 %tmp2_v12.i295.i to i32*
  br label %BB_80493FA.i

BB_804950E.i:                                     ; preds = %BB_804950E.i, %BB_804950E.i.lr.ph
  %storemerge225 = phi i32 [ 0, %BB_804950E.i.lr.ph ], [ %tmp0_v2.i95.i, %BB_804950E.i ]
  %65 = load i32, i32* %52, align 4
  %tmp0_v3.i130.i = shl i32 %storemerge225, 2
  %tmp0_v4.i131.i = add i32 %65, %tmp0_v3.i130.i
  %66 = inttoptr i32 %tmp0_v4.i131.i to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %53, align 8
  %68 = load i32, i32* %48, align 4
  store i32 %68, i32* %.pre-phi34, align 4
  store i32 %tmp2_v11.i139.i, i32* %.pre-phi, align 16
  store i32 134518065, i32* %.pre-phi31, align 4
  %69 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v3.i130.i, i32 noundef %tmp2_v.i329.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %70 = load i32, i32* %48, align 4
  %tmp0_v2.i95.i = add i32 %70, 1
  store i32 %tmp0_v2.i95.i, i32* %48, align 4
  %71 = load i32, i32* %49, align 4
  %72 = icmp slt i32 %tmp0_v2.i95.i, %71
  br i1 %72, label %BB_804950E.i, label %.exit

BB_804937C.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.018 = phi i32 [ %r_ecx.3, %BB_80493A7.i ], [ %tmp0_v17.i272.i, %helper_divl_EAX.exit393.i ]
  %storemerge517 = phi i32 [ %tmp0_v1.i359.i, %BB_80493A7.i ], [ 0, %helper_divl_EAX.exit393.i ]
  %tmp4_v.i158.i = shl i32 %storemerge517, 2
  %tmp2_v2.i159.i = add i32 %tmp4_v.i158.i, %tmp2_v3.i237.i
  %73 = inttoptr i32 %tmp2_v2.i159.i to i32*
  %74 = load i32, i32* %73, align 4
  %tmp0_v5.i162.i = lshr i32 %74, 31
  %tmp0_v6.i163.i = add i32 %tmp0_v5.i162.i, %74
  %tmp0_v7.i164.i = and i32 %tmp0_v6.i163.i, 1
  %.neg = add nuw nsw i32 %tmp0_v5.i162.i, 1
  %.not.i.i = icmp eq i32 %tmp0_v7.i164.i, %.neg
  br i1 %.not.i.i, label %BB_8049393.i, label %BB_80493A7.i

BB_80493C3.i:                                     ; preds = %BB_80493E5.i, %BB_80493B3.i
  %r_ecx.120 = phi i32 [ %r_ecx.2, %BB_80493E5.i ], [ %r_ecx.0.lcssa, %BB_80493B3.i ]
  %storemerge419 = phi i32 [ %tmp0_v1.i320.i, %BB_80493E5.i ], [ 0, %BB_80493B3.i ]
  %tmp4_v.i179.i = shl i32 %storemerge419, 2
  %tmp2_v2.i180.i = add i32 %tmp4_v.i179.i, %tmp2_v3.i237.i
  %75 = inttoptr i32 %tmp2_v2.i180.i to i32*
  %76 = load i32, i32* %75, align 4
  %tmp0_v4.i182.i = and i32 %76, 1
  %.not.i183.i = icmp eq i32 %tmp0_v4.i182.i, 0
  br i1 %.not.i183.i, label %BB_80493D1.i, label %BB_80493E5.i

BB_80494C6.i:                                     ; preds = %BB_80494C6.i.lr.ph, %BB_80494C6.i
  %storemerge124 = phi i32 [ 0, %BB_80494C6.i.lr.ph ], [ %tmp0_v2.i147.i, %BB_80494C6.i ]
  %77 = load i32, i32* %153, align 4
  %tmp0_v3.i209.i = shl i32 %storemerge124, 2
  %tmp0_v4.i210.i = add i32 %77, %tmp0_v3.i209.i
  %78 = inttoptr i32 %tmp0_v4.i210.i to i32*
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %154, align 8
  %80 = load i32, i32* %149, align 4
  store i32 %80, i32* %.pre-phi34, align 4
  store i32 %tmp2_v11.i219.i, i32* %.pre-phi, align 16
  store i32 134517993, i32* %.pre-phi31, align 4
  %81 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v3.i209.i, i32 noundef %tmp2_v.i329.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %82 = load i32, i32* %149, align 4
  %tmp0_v2.i147.i = add i32 %82, 1
  store i32 %tmp0_v2.i147.i, i32* %149, align 4
  %83 = load i32, i32* %150, align 4
  %84 = icmp slt i32 %tmp0_v2.i147.i, %83
  br i1 %84, label %BB_80494C6.i, label %BB_80494F8.i

BB_8049466.i:                                     ; preds = %BB_8049425.i.BB_8049466.i_crit_edge, %BB_804943B.i
  %.pre-phi34 = phi i32* [ %.pre33, %BB_8049425.i.BB_8049466.i_crit_edge ], [ %171, %BB_804943B.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517872, i32* %.pre-phi31, align 4
  %arg.i.i13 = load i32, i32* %.pre-phi, align 16
  %85 = tail call i32 @putchar(i32 %arg.i.i13)  nounwind 
  %tmp2_v.i188.i = add i32 %tmp0_v.i78.i, -144
  %86 = inttoptr i32 %tmp2_v.i188.i to i32*
  store i32 0, i32* %86, align 16
  %tmp2_v1.i189.i = add i32 %tmp0_v.i78.i, -140
  %87 = inttoptr i32 %tmp2_v1.i189.i to i32*
  store i32 0, i32* %87, align 4
  %tmp2_v2.i190.i = add i32 %tmp0_v.i78.i, -136
  %88 = inttoptr i32 %tmp2_v2.i190.i to i32*
  store i32 0, i32* %88, align 8
  %tmp2_v3.i191.i = add i32 %tmp0_v.i78.i, -132
  %89 = inttoptr i32 %tmp2_v3.i191.i to i32*
  store i32 0, i32* %89, align 4
  store i32 %tmp2_v2.i190.i, i32* %.pre-phi34, align 4
  store i32 %tmp2_v.i188.i, i32* %.pre-phi, align 16
  store i32 %tmp2_v3.i191.i, i32* %.pre-phi31, align 4
  %tmp2_v12.i199.i = add i32 %tmp0_v1.i314.i, -24
  %90 = inttoptr i32 %tmp2_v12.i199.i to i32*
  store i32 %tmp2_v1.i189.i, i32* %90, align 8
  %91 = load i32, i32* %21, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v1.i314.i, -28
  %92 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %91, i32* %92, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v1.i314.i, -32
  %93 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i237.i, i32* %93, align 16
  %tmp2_v18.i203.i = add i32 %tmp0_v1.i314.i, -36
  %94 = inttoptr i32 %tmp2_v18.i203.i to i32*
  store i32 134517946, i32* %94, align 4
  %tmp2_v.i32.i.i = add i32 %tmp0_v1.i314.i, -40
  %95 = inttoptr i32 %tmp2_v.i32.i.i to i32*
  store i32 %tmp2_v4.i81.i, i32* %95, align 8
  %tmp2_v1.i34.i.i = add i32 %tmp0_v1.i314.i, -44
  %96 = inttoptr i32 %tmp2_v1.i34.i.i to i32*
  store i32 134529024, i32* %96, align 4
  %tmp2_v2.i36.i.i = add i32 %tmp0_v1.i314.i, -68
  %97 = inttoptr i32 %tmp2_v2.i36.i.i to i32*
  store i32 134518131, i32* %97, align 4
  %98 = load i32, i32* %.pre-phi31, align 4
  %99 = inttoptr i32 %98 to i32*
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %.pre-phi34, align 4
  %101 = inttoptr i32 %100 to i32*
  store i32 0, i32* %101, align 4
  %tmp2_v4.i146.i.i = add i32 %tmp0_v1.i314.i, -64
  %102 = inttoptr i32 %tmp2_v4.i146.i.i to i32*
  store i32 0, i32* %102, align 16
  %103 = load i32, i32* %92, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_8049594.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %storemerge38.i = phi i32 [ %tmp0_v1.i9.i.i, %BB_8049594.i.i ], [ 0, %BB_8049466.i ]
  %tmp4_v.i54.i.i = shl i32 %storemerge38.i, 2
  %105 = load i32, i32* %93, align 16
  %tmp0_v3.i57.i.i = add i32 %105, %tmp4_v.i54.i.i
  %106 = inttoptr i32 %tmp0_v3.i57.i.i to i32*
  %107 = load i32, i32* %106, align 4
  %tmp0_v6.i60.i.i = lshr i32 %107, 31
  %tmp0_v7.i.i.i = add i32 %tmp0_v6.i60.i.i, %107
  %tmp0_v8.i61.i.i = and i32 %tmp0_v7.i.i.i, 1
  %.neg30.i = add nuw nsw i32 %tmp0_v6.i60.i.i, 1
  %.not.i.i.i = icmp eq i32 %tmp0_v8.i61.i.i, %.neg30.i
  %..i = select i1 %.not.i.i.i, i32* %.pre-phi31, i32* %.pre-phi34
  %108 = load i32, i32* %..i, align 4
  %109 = inttoptr i32 %108 to i32*
  %110 = load i32, i32* %109, align 4
  %tmp2_v2.i126.i.i = add i32 %110, 1
  store i32 %tmp2_v2.i126.i.i, i32* %109, align 4
  %111 = load i32, i32* %102, align 16
  %tmp0_v1.i9.i.i = add i32 %111, 1
  store i32 %tmp0_v1.i9.i.i, i32* %102, align 16
  %112 = load i32, i32* %92, align 4
  %113 = icmp slt i32 %tmp0_v1.i9.i.i, %112
  br i1 %113, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_80495DD.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %114 = load i32, i32* %.pre-phi31, align 4
  %115 = inttoptr i32 %114 to i32*
  %116 = load i32, i32* %115, align 4
  %tmp0_v2.i69.i.i = shl i32 %116, 2
  %tmp2_v4.i72.i.i = add i32 %tmp0_v1.i314.i, -80
  %117 = inttoptr i32 %tmp2_v4.i72.i.i to i32*
  store i32 %tmp0_v2.i69.i.i, i32* %117, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v1.i314.i, -84
  %118 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134518254, i32* %118, align 4
  %arg.i.i.i = load i32, i32* %117, align 16
  %119 = tail call i32 @malloc(i32 %arg.i.i.i)
  %120 = load i32, i32* %90, align 8
  %121 = inttoptr i32 %120 to i32*
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %.pre-phi34, align 4
  %123 = inttoptr i32 %122 to i32*
  %124 = load i32, i32* %123, align 4
  %tmp0_v5.i.i.i = shl i32 %124, 2
  store i32 %tmp0_v5.i.i.i, i32* %117, align 16
  store i32 134518281, i32* %118, align 4
  %arg.i.i36.i = load i32, i32* %117, align 16
  %125 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %126 = load i32, i32* %.pre-phi, align 16
  %127 = inttoptr i32 %126 to i32*
  store i32 %125, i32* %127, align 4
  %tmp2_v2.i22.i.i = add i32 %tmp0_v1.i314.i, -60
  %128 = inttoptr i32 %tmp2_v2.i22.i.i to i32*
  store i32 0, i32* %128, align 4
  %tmp2_v3.i23.i.i = add i32 %tmp0_v1.i314.i, -56
  %129 = inttoptr i32 %tmp2_v3.i23.i.i to i32*
  store i32 0, i32* %129, align 8
  %tmp2_v4.i24.i.i = add i32 %tmp0_v1.i314.i, -52
  %130 = inttoptr i32 %tmp2_v4.i24.i.i to i32*
  store i32 0, i32* %130, align 4
  %131 = load i32, i32* %128, align 4
  %132 = load i32, i32* %92, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_804962A.i.i:                                   ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %134 = phi i32 [ %tmp0_v1.i132.i.i, %BB_804962A.i.i ], [ %131, %BB_80495DD.i.i ]
  %tmp4_v.i76.i.i = shl i32 %134, 2
  %135 = load i32, i32* %93, align 16
  %tmp0_v3.i79.i.i = add i32 %135, %tmp4_v.i76.i.i
  %136 = inttoptr i32 %tmp0_v3.i79.i.i to i32*
  %137 = load i32, i32* %136, align 4
  %tmp0_v6.i82.i.i = lshr i32 %137, 31
  %tmp0_v7.i83.i.i = add i32 %tmp0_v6.i82.i.i, %137
  %tmp0_v8.i84.i.i = and i32 %tmp0_v7.i83.i.i, 1
  %.neg.i = add nuw nsw i32 %tmp0_v6.i82.i.i, 1
  %.not.i87.i.i = icmp eq i32 %tmp0_v8.i84.i.i, %.neg.i
  %.sink51.i = select i1 %.not.i87.i.i, i32* %90, i32* %.pre-phi
  %.sink48.i = select i1 %.not.i87.i.i, i32* %130, i32* %129
  %138 = load i32, i32* %.sink51.i, align 8
  %139 = inttoptr i32 %138 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %.sink48.i, align 4
  %tmp0_v9.i101.i.i = shl i32 %141, 2
  %tmp0_v10.i102.i.i = add i32 %tmp0_v9.i101.i.i, %140
  %142 = inttoptr i32 %tmp0_v10.i102.i.i to i32*
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %.sink48.i, align 4
  %tmp0_v14.i106.i.i = add i32 %143, 1
  store i32 %tmp0_v14.i106.i.i, i32* %.sink48.i, align 4
  %144 = load i32, i32* %128, align 4
  %tmp0_v1.i132.i.i = add i32 %144, 1
  store i32 %tmp0_v1.i132.i.i, i32* %128, align 4
  %145 = load i32, i32* %92, align 4
  %146 = icmp slt i32 %tmp0_v1.i132.i.i, %145
  br i1 %146, label %BB_804962A.i.i, label %Func_split_nums.exit

Func_split_nums.exit:                             ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa, %BB_80495DD.i.i ], [ %tmp0_v3.i79.i.i, %BB_804962A.i.i ]
  %147 = load i32, i32* %96, align 4
  %148 = load i32, i32* %95, align 8
  %tmp2_v.i303.i = add i32 %148, -116
  %149 = inttoptr i32 %tmp2_v.i303.i to i32*
  %tmp2_v.i223.i = add i32 %148, -128
  %150 = inttoptr i32 %tmp2_v.i223.i to i32*
  store i32 0, i32* %149, align 4
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %BB_80494C6.i.lr.ph, label %BB_80494F8.i

BB_80494C6.i.lr.ph:                               ; preds = %Func_split_nums.exit
  %tmp2_v.i205.i = add i32 %148, -136
  %153 = inttoptr i32 %tmp2_v.i205.i to i32*
  %tmp2_v7.i214.i = add i32 %tmp0_v1.i314.i, -8
  %154 = inttoptr i32 %tmp2_v7.i214.i to i32*
  %tmp2_v11.i219.i = add i32 %147, -8143
  br label %BB_80494C6.i

BB_80493FA.i:                                     ; preds = %BB_80493FA.i, %BB_80493FA.i.lr.ph
  %storemerge22 = phi i32 [ 0, %BB_80493FA.i.lr.ph ], [ %tmp0_v2.i11.i, %BB_80493FA.i ]
  %155 = load i32, i32* %26, align 16
  %tmp4_v.i283.i = shl i32 %storemerge22, 2
  %tmp2_v3.i284.i = add i32 %155, %tmp4_v.i283.i
  %156 = inttoptr i32 %tmp2_v3.i284.i to i32*
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %61, align 8
  %158 = load i32, i32* %58, align 4
  store i32 %158, i32* %62, align 4
  %spi337 = ptrtoint[20 x i8]* @str.337 to i32
  store i32 %spi337, i32* %63, align 16
  store i32 134517782, i32* %64, align 4
  %159 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge22, i32 noundef %tmp2_v11.i294.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %160 = load i32, i32* %58, align 4
  %tmp0_v2.i11.i = add i32 %160, 1
  store i32 %tmp0_v2.i11.i, i32* %58, align 4
  %161 = load i32, i32* %27, align 4
  %162 = icmp slt i32 %tmp0_v2.i11.i, %161
  br i1 %162, label %BB_80493FA.i, label %BB_8049425.i

BB_80493E5.i:                                     ; preds = %BB_80493C3.i, %BB_80493D1.i
  %163 = phi i32 [ %storemerge419, %BB_80493C3.i ], [ %.pre26, %BB_80493D1.i ]
  %r_ecx.2 = phi i32 [ %r_ecx.120, %BB_80493C3.i ], [ %76, %BB_80493D1.i ]
  %tmp0_v1.i320.i = add i32 %163, 1
  store i32 %tmp0_v1.i320.i, i32* %36, align 16
  %164 = load i32, i32* %21, align 16
  %165 = icmp slt i32 %tmp0_v1.i320.i, %164
  br i1 %165, label %BB_80493C3.i, label %BB_80493F1.i

BB_8049425.i:                                     ; preds = %BB_80493FA.i, %BB_80493F1.i.BB_8049425.i_crit_edge
  %.pre-phi31 = phi i32* [ %.pre30, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %64, %BB_80493FA.i ]
  %.pre-phi = phi i32* [ %.pre28, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %63, %BB_80493FA.i ]
  %tmp2_v.i329.i.pre-phi = phi i32 [ %.pre27, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %tmp2_v11.i294.i, %BB_80493FA.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517807, i32* %.pre-phi31, align 4
  %arg.i.i16 = load i32, i32* %.pre-phi, align 16
  %166 = tail call i32 @putchar(i32 %arg.i.i16)  nounwind 
  %tmp2_v.i299.i = add i32 %tmp0_v.i78.i, -120
  %167 = inttoptr i32 %tmp2_v.i299.i to i32*
  store i32 0, i32* %167, align 8
  %168 = load i32, i32* %35, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %BB_804943B.i.lr.ph, label %BB_8049425.i.BB_8049466.i_crit_edge

BB_8049425.i.BB_8049466.i_crit_edge:              ; preds = %BB_8049425.i
  %.pre32 = add i32 %tmp0_v1.i314.i, -12
  %.pre33 = inttoptr i32 %.pre32 to i32*
  br label %BB_8049466.i

BB_804943B.i.lr.ph:                               ; preds = %BB_8049425.i
  %tmp2_v6.i35.i = add i32 %tmp0_v1.i314.i, -8
  %170 = inttoptr i32 %tmp2_v6.i35.i to i32*
  %tmp2_v9.i36.i = add i32 %tmp0_v1.i314.i, -12
  %171 = inttoptr i32 %tmp2_v9.i36.i to i32*
  br label %BB_804943B.i

BB_80493A7.i:                                     ; preds = %BB_804937C.i, %BB_8049393.i
  %172 = phi i32 [ %storemerge517, %BB_804937C.i ], [ %.pre, %BB_8049393.i ]
  %r_ecx.3 = phi i32 [ %r_ecx.018, %BB_804937C.i ], [ %74, %BB_8049393.i ]
  %tmp0_v1.i359.i = add i32 %172, 1
  store i32 %tmp0_v1.i359.i, i32* %28, align 8
  %173 = load i32, i32* %21, align 16
  %174 = icmp slt i32 %tmp0_v1.i359.i, %173
  br i1 %174, label %BB_804937C.i, label %BB_80493B3.i

.exit:                                            ; preds = %BB_804950E.i, %BB_80494F8.i
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

  tail call fastcc void @split_even_odd340 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack339, i32 0, i32 8092) to i32)) nounwind
