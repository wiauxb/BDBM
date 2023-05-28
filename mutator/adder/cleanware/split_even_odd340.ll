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
@str.bis.337 = constant [20 x i8] c"\6f\64\64\5f\61\72\72\61\79\5b\25\64\5d\20\3d\20\25\64\0a\00"
@str.bis.338 = constant [21 x i8] c"\65\76\65\6e\5f\61\72\72\61\79\5b\25\64\5d\20\3d\20\25\64\0a\00"

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
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split_even_odd340(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
helper_divl_EAX.exit.i:
  %tmp2_v.i138.i = add i32 %arg_esp, 4
  %tmp0_v.i139.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i141.i = add i32 %tmp0_v.i139.i, -4
  %2 = inttoptr i32 %tmp2_v3.i141.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i142.i = add i32 %tmp0_v.i139.i, -8
  %3 = inttoptr i32 %tmp2_v4.i142.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i144.i = add i32 %tmp0_v.i139.i, -12
  %4 = inttoptr i32 %tmp2_v5.i144.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i145.i = add i32 %tmp0_v.i139.i, -16
  %5 = inttoptr i32 %tmp2_v6.i145.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i147.i = add i32 %tmp0_v.i139.i, -20
  %6 = inttoptr i32 %tmp2_v7.i147.i to i32*
  store i32 %tmp2_v.i138.i, i32* %6, align 4
  %tmp2_v9.i149.i = add i32 %tmp0_v.i139.i, -148
  %7 = inttoptr i32 %tmp2_v9.i149.i to i32*
  store i32 134517266, i32* %7, align 4
  %tmp4_v.i286.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i290.i = add i32 %tmp0_v.i139.i, -36
  %10 = inttoptr i32 %tmp2_v2.i290.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i292.i = add i32 %tmp0_v.i139.i, -76
  %11 = inttoptr i32 %tmp2_v3.i292.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i293.i = add i32 %tmp0_v.i139.i, -72
  %12 = inttoptr i32 %tmp2_v4.i293.i to i32*
  store i32 2, i32* %12, align 8
  %tmp2_v5.i294.i = add i32 %tmp0_v.i139.i, -68
  %13 = inttoptr i32 %tmp2_v5.i294.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i295.i = add i32 %tmp0_v.i139.i, -64
  %14 = inttoptr i32 %tmp2_v6.i295.i to i32*
  store i32 4, i32* %14, align 16
  %tmp2_v7.i296.i = add i32 %tmp0_v.i139.i, -60
  %15 = inttoptr i32 %tmp2_v7.i296.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i297.i = add i32 %tmp0_v.i139.i, -56
  %16 = inttoptr i32 %tmp2_v8.i297.i to i32*
  store i32 6, i32* %16, align 8
  %tmp2_v9.i298.i = add i32 %tmp0_v.i139.i, -52
  %17 = inttoptr i32 %tmp2_v9.i298.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i299.i = add i32 %tmp0_v.i139.i, -48
  %18 = inttoptr i32 %tmp2_v10.i299.i to i32*
  store i32 8, i32* %18, align 16
  %tmp2_v11.i300.i = add i32 %tmp0_v.i139.i, -44
  %19 = inttoptr i32 %tmp2_v11.i300.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v12.i301.i = add i32 %tmp0_v.i139.i, -40
  %20 = inttoptr i32 %tmp2_v12.i301.i to i32*
  store i32 10, i32* %20, align 8
  %tmp2_v13.i302.i = add i32 %tmp0_v.i139.i, -96
  %21 = inttoptr i32 %tmp2_v13.i302.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i305.i = add i32 %tmp0_v.i139.i, -92
  %22 = inttoptr i32 %tmp2_v17.i305.i to i32*
  store i32 9, i32* %22, align 4
  %tmp0_v1.i118.i = add i32 %tmp0_v.i139.i, -192
  %tmp0_v4.i246.i = add i32 %tmp0_v.i139.i, -189
  %tmp0_v6.i249.i = and i32 %tmp0_v4.i246.i, -16
  %tmp2_v.i251.i = add i32 %tmp0_v.i139.i, -88
  %23 = inttoptr i32 %tmp2_v.i251.i to i32*
  store i32 %tmp0_v6.i249.i, i32* %23, align 8
  %24 = load i32, i32* %21, align 16
  %tmp2_v9.i254.i = add i32 %24, -1
  %tmp2_v10.i255.i = add i32 %tmp0_v.i139.i, -84
  %25 = inttoptr i32 %tmp2_v10.i255.i to i32*
  store i32 %tmp2_v9.i254.i, i32* %25, align 4
  %tmp4_v.i256.i = shl i32 %24, 2
  %tmp0_v11.i257.i = add i32 %tmp4_v.i256.i, 15
  %tmp0_v15.i258.i = and i32 %tmp0_v11.i257.i, -4096
  %tmp0_v17.i259.i = sub i32 %tmp0_v1.i118.i, %tmp0_v15.i258.i
  %tmp0_v.i3.i = and i32 %tmp0_v11.i257.i, 4080
  %tmp0_v1.i.i = sub i32 %tmp0_v1.i118.i, %tmp0_v.i3.i
  %tmp2_v.i68.i = add i32 %tmp0_v.i139.i, -80
  %26 = inttoptr i32 %tmp2_v.i68.i to i32*
  store i32 %tmp0_v1.i.i, i32* %26, align 16
  %tmp2_v7.i69.i = add i32 %tmp0_v.i139.i, -100
  %27 = inttoptr i32 %tmp2_v7.i69.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i139.i, -104
  %28 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %21, align 16
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_804937C.i, label %BB_80493B3.i

BB_80493F1.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.0.lcssa, %BB_80493B3.i ], [ %r_ecx.2, %BB_80493E5.i ]
  %tmp2_v.i.i = add i32 %tmp0_v.i139.i, -116
  %31 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %27, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %BB_80493FA.i.lr.ph, label %BB_80493F1.i.BB_8049425.i_crit_edge

BB_80493F1.i.BB_8049425.i_crit_edge:              ; preds = %BB_80493F1.i
  %.pre30 = add i32 %tmp0_v1.i.i, -16
  %.pre31 = inttoptr i32 %.pre30 to i32*
  %.pre32 = add i32 %tmp0_v1.i.i, -20
  %.pre33 = inttoptr i32 %.pre32 to i32*
  br label %BB_8049425.i

BB_80493FA.i.lr.ph:                               ; preds = %BB_80493F1.i
  %tmp2_v6.i346.i = add i32 %tmp0_v1.i.i, -8
  %34 = inttoptr i32 %tmp2_v6.i346.i to i32*
  %tmp2_v9.i349.i = add i32 %tmp0_v1.i.i, -12
  %35 = inttoptr i32 %tmp2_v9.i349.i to i32*
  %tmp2_v11.i352.i = add i32 %tmp0_v1.i.i, -16
  %36 = inttoptr i32 %tmp2_v11.i352.i to i32*
  %tmp2_v12.i353.i = add i32 %tmp0_v1.i.i, -20
  %37 = inttoptr i32 %tmp2_v12.i353.i to i32*
  br label %BB_80493FA.i

BB_80493C3.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.123 = phi i32 [ %r_ecx.2, %BB_80493E5.i ], [ %r_ecx.0.lcssa, %BB_80493B3.i ]
  %storemerge722 = phi i32 [ %tmp0_v1.i160.i, %BB_80493E5.i ], [ 0, %BB_80493B3.i ]
  %tmp4_v.i.i = shl i32 %storemerge722, 2
  %tmp2_v2.i.i = add i32 %tmp4_v.i.i, %tmp2_v3.i292.i
  %38 = inttoptr i32 %tmp2_v2.i.i to i32*
  %39 = load i32, i32* %38, align 4
  %tmp0_v4.i.i = and i32 %39, 1
  %.not.i.i = icmp eq i32 %tmp0_v4.i.i, 0
  br i1 %.not.i.i, label %BB_80493D1.i, label %BB_80493E5.i

BB_80494F8.i:                                     ; preds = %Func_split_nums.exit, %BB_80494C6.i
  store i32 10, i32* %.pre-phi, align 16
  store i32 134518018, i32* %.pre-phi34, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %40 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i107.i = add i32 %149, -120
  %41 = inttoptr i32 %tmp2_v.i107.i to i32*
  %tmp2_v.i177.i = add i32 %149, -124
  %42 = inttoptr i32 %tmp2_v.i177.i to i32*
  store i32 0, i32* %41, align 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_804950E.i.lr.ph, label %.exit

BB_804950E.i.lr.ph:                               ; preds = %BB_80494F8.i
  %tmp2_v.i309.i = add i32 %149, -132
  %45 = inttoptr i32 %tmp2_v.i309.i to i32*
  %tmp2_v7.i318.i = add i32 %tmp0_v1.i.i, -8
  %46 = inttoptr i32 %tmp2_v7.i318.i to i32*
  %tmp2_v11.i323.i = add i32 %148, -8128
  br label %BB_804950E.i

BB_804937C.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit.i
  %r_ecx.021 = phi i32 [ %r_ecx.3, %BB_80493A7.i ], [ %tmp0_v17.i259.i, %helper_divl_EAX.exit.i ]
  %storemerge820 = phi i32 [ %tmp0_v1.i329.i, %BB_80493A7.i ], [ 0, %helper_divl_EAX.exit.i ]
  %tmp4_v.i26.i = shl i32 %storemerge820, 2
  %tmp2_v2.i27.i = add i32 %tmp4_v.i26.i, %tmp2_v3.i292.i
  %47 = inttoptr i32 %tmp2_v2.i27.i to i32*
  %48 = load i32, i32* %47, align 4
  %tmp0_v5.i.i = lshr i32 %48, 31
  %tmp0_v6.i.i = add i32 %tmp0_v5.i.i, %48
  %tmp0_v7.i.i = and i32 %tmp0_v6.i.i, 1
  %.neg = add nuw nsw i32 %tmp0_v5.i.i, 1
  %.not.i31.i = icmp eq i32 %tmp0_v7.i.i, %.neg
  br i1 %.not.i31.i, label %BB_8049393.i, label %BB_80493A7.i

BB_804943B.i:                                     ; preds = %BB_804943B.i.lr.ph, %BB_804943B.i
  %storemerge626 = phi i32 [ 0, %BB_804943B.i.lr.ph ], [ %tmp0_v2.i130.i, %BB_804943B.i ]
  %49 = load i32, i32* %23, align 8
  %tmp4_v.i38.i = shl i32 %storemerge626, 2
  %tmp2_v3.i.i = add i32 %49, %tmp4_v.i38.i
  %50 = inttoptr i32 %tmp2_v3.i.i to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %65, align 8
  %52 = load i32, i32* %62, align 8
  store i32 %52, i32* %66, align 4
  %spi.bis.338 = ptrtoint[21 x i8]* @str.bis.338 to i32
  store i32 %spi.bis.338, i32* %.pre-phi, align 16
  store i32 134517847, i32* %.pre-phi34, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge626, i32 noundef %tmp2_v.i123.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %54 = load i32, i32* %62, align 8
  %tmp0_v2.i130.i = add i32 %54, 1
  store i32 %tmp0_v2.i130.i, i32* %62, align 8
  %55 = load i32, i32* %74, align 4
  %56 = icmp slt i32 %tmp0_v2.i130.i, %55
  br i1 %56, label %BB_804943B.i, label %BB_8049466.i

BB_80493D1.i:                                     ; preds = %BB_80493C3.i
  %57 = load i32, i32* %23, align 8
  %58 = load i32, i32* %74, align 4
  %tmp4_v8.i.i = shl i32 %58, 2
  %tmp2_v9.i53.i = add i32 %tmp4_v8.i.i, %57
  %59 = inttoptr i32 %tmp2_v9.i53.i to i32*
  store i32 %39, i32* %59, align 4
  %60 = load i32, i32* %74, align 4
  %tmp0_v12.i.i = add i32 %60, 1
  store i32 %tmp0_v12.i.i, i32* %74, align 4
  %.pre29 = load i32, i32* %75, align 16
  br label %BB_80493E5.i

BB_8049425.i:                                     ; preds = %BB_80493FA.i, %BB_80493F1.i.BB_8049425.i_crit_edge
  %.pre-phi34 = phi i32* [ %.pre33, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %37, %BB_80493FA.i ]
  %.pre-phi = phi i32* [ %.pre31, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %36, %BB_80493FA.i ]
  %tmp2_v.i123.i.pre-phi = phi i32 [ %.pre30, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %tmp2_v11.i352.i, %BB_80493FA.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517807, i32* %.pre-phi34, align 4
  %arg.i.i16 = load i32, i32* %.pre-phi, align 16
  %61 = tail call i32 @putchar(i32 %arg.i.i16)  nounwind 
  %tmp2_v.i13.i = add i32 %tmp0_v.i139.i, -120
  %62 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* %74, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %BB_804943B.i.lr.ph, label %BB_8049425.i.BB_8049466.i_crit_edge

BB_8049425.i.BB_8049466.i_crit_edge:              ; preds = %BB_8049425.i
  %.pre35 = add i32 %tmp0_v1.i.i, -12
  %.pre36 = inttoptr i32 %.pre35 to i32*
  br label %BB_8049466.i

BB_804943B.i.lr.ph:                               ; preds = %BB_8049425.i
  %tmp2_v6.i.i = add i32 %tmp0_v1.i.i, -8
  %65 = inttoptr i32 %tmp2_v6.i.i to i32*
  %tmp2_v9.i.i = add i32 %tmp0_v1.i.i, -12
  %66 = inttoptr i32 %tmp2_v9.i.i to i32*
  br label %BB_804943B.i

BB_80493E5.i:                                     ; preds = %BB_80493D1.i, %BB_80493C3.i
  %67 = phi i32 [ %storemerge722, %BB_80493C3.i ], [ %.pre29, %BB_80493D1.i ]
  %r_ecx.2 = phi i32 [ %r_ecx.123, %BB_80493C3.i ], [ %39, %BB_80493D1.i ]
  %tmp0_v1.i160.i = add i32 %67, 1
  store i32 %tmp0_v1.i160.i, i32* %75, align 16
  %68 = load i32, i32* %21, align 16
  %69 = icmp slt i32 %tmp0_v1.i160.i, %68
  br i1 %69, label %BB_80493C3.i, label %BB_80493F1.i

BB_8049393.i:                                     ; preds = %BB_804937C.i
  %70 = load i32, i32* %26, align 16
  %71 = load i32, i32* %27, align 4
  %tmp4_v8.i206.i = shl i32 %71, 2
  %tmp2_v9.i207.i = add i32 %tmp4_v8.i206.i, %70
  %72 = inttoptr i32 %tmp2_v9.i207.i to i32*
  store i32 %48, i32* %72, align 4
  %73 = load i32, i32* %27, align 4
  %tmp0_v12.i210.i = add i32 %73, 1
  store i32 %tmp0_v12.i210.i, i32* %27, align 4
  %.pre = load i32, i32* %28, align 8
  br label %BB_80493A7.i

BB_80493B3.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit.i
  %r_ecx.0.lcssa = phi i32 [ %tmp0_v17.i259.i, %helper_divl_EAX.exit.i ], [ %r_ecx.3, %BB_80493A7.i ]
  %tmp2_v.i221.i = add i32 %tmp0_v.i139.i, -108
  %74 = inttoptr i32 %tmp2_v.i221.i to i32*
  store i32 0, i32* %74, align 4
  %tmp2_v1.i222.i = add i32 %tmp0_v.i139.i, -112
  %75 = inttoptr i32 %tmp2_v1.i222.i to i32*
  store i32 0, i32* %75, align 16
  %76 = load i32, i32* %21, align 16
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %BB_80493C3.i, label %BB_80493F1.i

BB_80494C6.i:                                     ; preds = %BB_80494C6.i.lr.ph, %BB_80494C6.i
  %storemerge427 = phi i32 [ 0, %BB_80494C6.i.lr.ph ], [ %tmp0_v2.i359.i, %BB_80494C6.i ]
  %78 = load i32, i32* %154, align 4
  %tmp0_v3.i228.i = shl i32 %storemerge427, 2
  %tmp0_v4.i229.i = add i32 %78, %tmp0_v3.i228.i
  %79 = inttoptr i32 %tmp0_v4.i229.i to i32*
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %155, align 8
  %81 = load i32, i32* %150, align 4
  store i32 %81, i32* %.pre-phi37, align 4
  store i32 %tmp2_v11.i237.i, i32* %.pre-phi, align 16
  store i32 134517993, i32* %.pre-phi34, align 4
  %82 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp0_v3.i228.i, i32 noundef %tmp2_v.i123.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %83 = load i32, i32* %150, align 4
  %tmp0_v2.i359.i = add i32 %83, 1
  store i32 %tmp0_v2.i359.i, i32* %150, align 4
  %84 = load i32, i32* %151, align 4
  %85 = icmp slt i32 %tmp0_v2.i359.i, %84
  br i1 %85, label %BB_80494C6.i, label %BB_80494F8.i

BB_8049466.i:                                     ; preds = %BB_8049425.i.BB_8049466.i_crit_edge, %BB_804943B.i
  %.pre-phi37 = phi i32* [ %.pre36, %BB_8049425.i.BB_8049466.i_crit_edge ], [ %66, %BB_804943B.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517872, i32* %.pre-phi34, align 4
  %arg.i.i17 = load i32, i32* %.pre-phi, align 16
  %86 = tail call i32 @putchar(i32 %arg.i.i17)  nounwind 
  %tmp2_v.i82.i = add i32 %tmp0_v.i139.i, -144
  %87 = inttoptr i32 %tmp2_v.i82.i to i32*
  store i32 0, i32* %87, align 16
  %tmp2_v1.i83.i = add i32 %tmp0_v.i139.i, -140
  %88 = inttoptr i32 %tmp2_v1.i83.i to i32*
  store i32 0, i32* %88, align 4
  %tmp2_v2.i84.i = add i32 %tmp0_v.i139.i, -136
  %89 = inttoptr i32 %tmp2_v2.i84.i to i32*
  store i32 0, i32* %89, align 8
  %tmp2_v3.i85.i = add i32 %tmp0_v.i139.i, -132
  %90 = inttoptr i32 %tmp2_v3.i85.i to i32*
  store i32 0, i32* %90, align 4
  store i32 %tmp2_v2.i84.i, i32* %.pre-phi37, align 4
  store i32 %tmp2_v.i82.i, i32* %.pre-phi, align 16
  store i32 %tmp2_v3.i85.i, i32* %.pre-phi34, align 4
  %tmp2_v12.i92.i = add i32 %tmp0_v1.i.i, -24
  %91 = inttoptr i32 %tmp2_v12.i92.i to i32*
  store i32 %tmp2_v1.i83.i, i32* %91, align 8
  %92 = load i32, i32* %21, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v1.i.i, -28
  %93 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %92, i32* %93, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v1.i.i, -32
  %94 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i292.i, i32* %94, align 16
  %tmp2_v18.i96.i = add i32 %tmp0_v1.i.i, -36
  %95 = inttoptr i32 %tmp2_v18.i96.i to i32*
  store i32 134517946, i32* %95, align 4
  %tmp2_v.i14.i.i = add i32 %tmp0_v1.i.i, -40
  %96 = inttoptr i32 %tmp2_v.i14.i.i to i32*
  store i32 %tmp2_v4.i142.i, i32* %96, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v1.i.i, -44
  %97 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %97, align 4
  %tmp2_v2.i17.i.i = add i32 %tmp0_v1.i.i, -68
  %98 = inttoptr i32 %tmp2_v2.i17.i.i to i32*
  store i32 134518131, i32* %98, align 4
  %99 = load i32, i32* %.pre-phi34, align 4
  %100 = inttoptr i32 %99 to i32*
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %.pre-phi37, align 4
  %102 = inttoptr i32 %101 to i32*
  store i32 0, i32* %102, align 4
  %tmp2_v4.i25.i.i = add i32 %tmp0_v1.i.i, -64
  %103 = inttoptr i32 %tmp2_v4.i25.i.i to i32*
  store i32 0, i32* %103, align 16
  %104 = load i32, i32* %93, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_80495DD.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %106 = load i32, i32* %.pre-phi34, align 4
  %107 = inttoptr i32 %106 to i32*
  %108 = load i32, i32* %107, align 4
  %tmp0_v2.i61.i.i = shl i32 %108, 2
  %tmp2_v4.i64.i.i = add i32 %tmp0_v1.i.i, -80
  %109 = inttoptr i32 %tmp2_v4.i64.i.i to i32*
  store i32 %tmp0_v2.i61.i.i, i32* %109, align 16
  %tmp2_v5.i65.i.i = add i32 %tmp0_v1.i.i, -84
  %110 = inttoptr i32 %tmp2_v5.i65.i.i to i32*
  store i32 134518254, i32* %110, align 4
  %arg.i.i.i = load i32, i32* %109, align 16
  %111 = tail call i32 @malloc(i32 %arg.i.i.i)
  %112 = load i32, i32* %91, align 8
  %113 = inttoptr i32 %112 to i32*
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %.pre-phi37, align 4
  %115 = inttoptr i32 %114 to i32*
  %116 = load i32, i32* %115, align 4
  %tmp0_v5.i.i.i = shl i32 %116, 2
  store i32 %tmp0_v5.i.i.i, i32* %109, align 16
  store i32 134518281, i32* %110, align 4
  %arg.i.i36.i = load i32, i32* %109, align 16
  %117 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %118 = load i32, i32* %.pre-phi, align 16
  %119 = inttoptr i32 %118 to i32*
  store i32 %117, i32* %119, align 4
  %tmp2_v2.i94.i.i = add i32 %tmp0_v1.i.i, -60
  %120 = inttoptr i32 %tmp2_v2.i94.i.i to i32*
  store i32 0, i32* %120, align 4
  %tmp2_v3.i95.i.i = add i32 %tmp0_v1.i.i, -56
  %121 = inttoptr i32 %tmp2_v3.i95.i.i to i32*
  store i32 0, i32* %121, align 8
  %tmp2_v4.i96.i.i = add i32 %tmp0_v1.i.i, -52
  %122 = inttoptr i32 %tmp2_v4.i96.i.i to i32*
  store i32 0, i32* %122, align 4
  %123 = load i32, i32* %120, align 4
  %124 = load i32, i32* %93, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_804962A.i.i:                                   ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %126 = phi i32 [ %tmp0_v1.i10.i.i, %BB_804962A.i.i ], [ %123, %BB_80495DD.i.i ]
  %tmp4_v.i76.i.i = shl i32 %126, 2
  %127 = load i32, i32* %94, align 16
  %tmp0_v3.i79.i.i = add i32 %127, %tmp4_v.i76.i.i
  %128 = inttoptr i32 %tmp0_v3.i79.i.i to i32*
  %129 = load i32, i32* %128, align 4
  %tmp0_v6.i82.i.i = lshr i32 %129, 31
  %tmp0_v7.i83.i.i = add i32 %tmp0_v6.i82.i.i, %129
  %tmp0_v8.i84.i.i = and i32 %tmp0_v7.i83.i.i, 1
  %.neg.i = add nuw nsw i32 %tmp0_v6.i82.i.i, 1
  %.not.i.i.i = icmp eq i32 %tmp0_v8.i84.i.i, %.neg.i
  %.sink48.i = select i1 %.not.i.i.i, i32* %91, i32* %.pre-phi
  %.sink45.i = select i1 %.not.i.i.i, i32* %122, i32* %121
  %130 = load i32, i32* %.sink48.i, align 8
  %131 = inttoptr i32 %130 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %.sink45.i, align 4
  %tmp0_v9.i138.i.i = shl i32 %133, 2
  %tmp0_v10.i139.i.i = add i32 %tmp0_v9.i138.i.i, %132
  %134 = inttoptr i32 %tmp0_v10.i139.i.i to i32*
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* %.sink45.i, align 4
  %tmp0_v14.i143.i.i = add i32 %135, 1
  store i32 %tmp0_v14.i143.i.i, i32* %.sink45.i, align 4
  %136 = load i32, i32* %120, align 4
  %tmp0_v1.i10.i.i = add i32 %136, 1
  store i32 %tmp0_v1.i10.i.i, i32* %120, align 4
  %137 = load i32, i32* %93, align 4
  %138 = icmp slt i32 %tmp0_v1.i10.i.i, %137
  br i1 %138, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_8049594.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %storemerge38.i = phi i32 [ %tmp0_v1.i41.i.i, %BB_8049594.i.i ], [ 0, %BB_8049466.i ]
  %tmp4_v.i100.i.i = shl i32 %storemerge38.i, 2
  %139 = load i32, i32* %94, align 16
  %tmp0_v3.i103.i.i = add i32 %139, %tmp4_v.i100.i.i
  %140 = inttoptr i32 %tmp0_v3.i103.i.i to i32*
  %141 = load i32, i32* %140, align 4
  %tmp0_v6.i106.i.i = lshr i32 %141, 31
  %tmp0_v7.i107.i.i = add i32 %tmp0_v6.i106.i.i, %141
  %tmp0_v8.i108.i.i = and i32 %tmp0_v7.i107.i.i, 1
  %.neg30.i = add nuw nsw i32 %tmp0_v6.i106.i.i, 1
  %.not.i111.i.i = icmp eq i32 %tmp0_v8.i108.i.i, %.neg30.i
  %..i = select i1 %.not.i111.i.i, i32* %.pre-phi34, i32* %.pre-phi37
  %142 = load i32, i32* %..i, align 4
  %143 = inttoptr i32 %142 to i32*
  %144 = load i32, i32* %143, align 4
  %tmp2_v2.i30.i.i = add i32 %144, 1
  store i32 %tmp2_v2.i30.i.i, i32* %143, align 4
  %145 = load i32, i32* %103, align 16
  %tmp0_v1.i41.i.i = add i32 %145, 1
  store i32 %tmp0_v1.i41.i.i, i32* %103, align 16
  %146 = load i32, i32* %93, align 4
  %147 = icmp slt i32 %tmp0_v1.i41.i.i, %146
  br i1 %147, label %BB_8049594.i.i, label %BB_80495DD.i.i

Func_split_nums.exit:                             ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.1.lcssa, %BB_80495DD.i.i ], [ %tmp0_v3.i79.i.i, %BB_804962A.i.i ]
  %148 = load i32, i32* %97, align 4
  %149 = load i32, i32* %96, align 8
  %tmp2_v.i21.i = add i32 %149, -116
  %150 = inttoptr i32 %tmp2_v.i21.i to i32*
  %tmp2_v.i151.i = add i32 %149, -128
  %151 = inttoptr i32 %tmp2_v.i151.i to i32*
  store i32 0, i32* %150, align 4
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %BB_80494C6.i.lr.ph, label %BB_80494F8.i

BB_80494C6.i.lr.ph:                               ; preds = %Func_split_nums.exit
  %tmp2_v.i224.i = add i32 %149, -136
  %154 = inttoptr i32 %tmp2_v.i224.i to i32*
  %tmp2_v7.i233.i = add i32 %tmp0_v1.i.i, -8
  %155 = inttoptr i32 %tmp2_v7.i233.i to i32*
  %tmp2_v11.i237.i = add i32 %148, -8143
  br label %BB_80494C6.i

BB_804950E.i:                                     ; preds = %BB_804950E.i, %BB_804950E.i.lr.ph
  %storemerge528 = phi i32 [ 0, %BB_804950E.i.lr.ph ], [ %tmp0_v2.i277.i, %BB_804950E.i ]
  %156 = load i32, i32* %45, align 4
  %tmp0_v3.i313.i = shl i32 %storemerge528, 2
  %tmp0_v4.i314.i = add i32 %156, %tmp0_v3.i313.i
  %157 = inttoptr i32 %tmp0_v4.i314.i to i32*
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %46, align 8
  %159 = load i32, i32* %41, align 4
  store i32 %159, i32* %.pre-phi37, align 4
  store i32 %tmp2_v11.i323.i, i32* %.pre-phi, align 16
  store i32 134518065, i32* %.pre-phi34, align 4
  %160 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp0_v3.i313.i, i32 noundef %tmp2_v.i123.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %161 = load i32, i32* %41, align 4
  %tmp0_v2.i277.i = add i32 %161, 1
  store i32 %tmp0_v2.i277.i, i32* %41, align 4
  %162 = load i32, i32* %42, align 4
  %163 = icmp slt i32 %tmp0_v2.i277.i, %162
  br i1 %163, label %BB_804950E.i, label %.exit

BB_80493A7.i:                                     ; preds = %BB_8049393.i, %BB_804937C.i
  %164 = phi i32 [ %storemerge820, %BB_804937C.i ], [ %.pre, %BB_8049393.i ]
  %r_ecx.3 = phi i32 [ %r_ecx.021, %BB_804937C.i ], [ %48, %BB_8049393.i ]
  %tmp0_v1.i329.i = add i32 %164, 1
  store i32 %tmp0_v1.i329.i, i32* %28, align 8
  %165 = load i32, i32* %21, align 16
  %166 = icmp slt i32 %tmp0_v1.i329.i, %165
  br i1 %166, label %BB_804937C.i, label %BB_80493B3.i

BB_80493FA.i:                                     ; preds = %BB_80493FA.i, %BB_80493FA.i.lr.ph
  %storemerge25 = phi i32 [ 0, %BB_80493FA.i.lr.ph ], [ %tmp0_v2.i188.i, %BB_80493FA.i ]
  %167 = load i32, i32* %26, align 16
  %tmp4_v.i341.i = shl i32 %storemerge25, 2
  %tmp2_v3.i342.i = add i32 %167, %tmp4_v.i341.i
  %168 = inttoptr i32 %tmp2_v3.i342.i to i32*
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %34, align 8
  %170 = load i32, i32* %31, align 4
  store i32 %170, i32* %35, align 4
  %spi.bis.337 = ptrtoint[20 x i8]* @str.bis.337 to i32
  store i32 %spi.bis.337, i32* %36, align 16
  store i32 134517782, i32* %37, align 4
  %171 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge25, i32 noundef %tmp2_v11.i352.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %172 = load i32, i32* %31, align 4
  %tmp0_v2.i188.i = add i32 %172, 1
  store i32 %tmp0_v2.i188.i, i32* %31, align 4
  %173 = load i32, i32* %27, align 4
  %174 = icmp slt i32 %tmp0_v2.i188.i, %173
  br i1 %174, label %BB_80493FA.i, label %BB_8049425.i

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
