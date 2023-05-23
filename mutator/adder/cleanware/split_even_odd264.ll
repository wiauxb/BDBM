; Mutation 264
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
@str.262 = constant [20 x i8] c"odd_array[%d] = %d\0a\00"
@str.263 = constant [21 x i8] c"even_array[%d] = %d\0a\00"

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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split_even_odd264(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
helper_divl_EAX.exit393.i:
  %tmp2_v.i188.i = add i32 %arg_esp, 4
  %tmp0_v.i189.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i191.i = add i32 %tmp0_v.i189.i, -4
  %2 = inttoptr i32 %tmp2_v3.i191.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i192.i = add i32 %tmp0_v.i189.i, -8
  %3 = inttoptr i32 %tmp2_v4.i192.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i194.i = add i32 %tmp0_v.i189.i, -12
  %4 = inttoptr i32 %tmp2_v5.i194.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i195.i = add i32 %tmp0_v.i189.i, -16
  %5 = inttoptr i32 %tmp2_v6.i195.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i197.i = add i32 %tmp0_v.i189.i, -20
  %6 = inttoptr i32 %tmp2_v7.i197.i to i32*
  store i32 %tmp2_v.i188.i, i32* %6, align 4
  %tmp2_v9.i199.i = add i32 %tmp0_v.i189.i, -148
  %7 = inttoptr i32 %tmp2_v9.i199.i to i32*
  store i32 134517266, i32* %7, align 4
  %tmp4_v.i44.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i48.i = add i32 %tmp0_v.i189.i, -36
  %10 = inttoptr i32 %tmp2_v2.i48.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i50.i = add i32 %tmp0_v.i189.i, -76
  %11 = inttoptr i32 %tmp2_v3.i50.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i51.i = add i32 %tmp0_v.i189.i, -72
  %12 = inttoptr i32 %tmp2_v4.i51.i to i32*
  store i32 2, i32* %12, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i189.i, -68
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i52.i = add i32 %tmp0_v.i189.i, -64
  %14 = inttoptr i32 %tmp2_v6.i52.i to i32*
  store i32 4, i32* %14, align 16
  %tmp2_v7.i53.i = add i32 %tmp0_v.i189.i, -60
  %15 = inttoptr i32 %tmp2_v7.i53.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i54.i = add i32 %tmp0_v.i189.i, -56
  %16 = inttoptr i32 %tmp2_v8.i54.i to i32*
  store i32 6, i32* %16, align 8
  %tmp2_v9.i55.i = add i32 %tmp0_v.i189.i, -52
  %17 = inttoptr i32 %tmp2_v9.i55.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i56.i = add i32 %tmp0_v.i189.i, -48
  %18 = inttoptr i32 %tmp2_v10.i56.i to i32*
  store i32 8, i32* %18, align 16
  %tmp2_v11.i57.i = add i32 %tmp0_v.i189.i, -44
  %19 = inttoptr i32 %tmp2_v11.i57.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v12.i58.i = add i32 %tmp0_v.i189.i, -40
  %20 = inttoptr i32 %tmp2_v12.i58.i to i32*
  store i32 10, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i189.i, -96
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i189.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 9, i32* %22, align 4
  %tmp0_v1.i24.i = add i32 %tmp0_v.i189.i, -192
  %tmp0_v4.i172.i = add i32 %tmp0_v.i189.i, -189
  %tmp0_v6.i175.i = and i32 %tmp0_v4.i172.i, -16
  %tmp2_v.i177.i = add i32 %tmp0_v.i189.i, -88
  %23 = inttoptr i32 %tmp2_v.i177.i to i32*
  store i32 %tmp0_v6.i175.i, i32* %23, align 8
  %24 = load i32, i32* %21, align 16
  %tmp2_v9.i180.i = add i32 %24, -1
  %tmp2_v10.i181.i = add i32 %tmp0_v.i189.i, -84
  %25 = inttoptr i32 %tmp2_v10.i181.i to i32*
  store i32 %tmp2_v9.i180.i, i32* %25, align 4
  %tmp4_v.i182.i = shl i32 %24, 2
  %tmp0_v11.i183.i = add i32 %tmp4_v.i182.i, 15
  %tmp0_v15.i184.i = and i32 %tmp0_v11.i183.i, -4096
  %tmp0_v17.i185.i = sub i32 %tmp0_v1.i24.i, %tmp0_v15.i184.i
  %tmp0_v.i291.i = and i32 %tmp0_v11.i183.i, 4080
  %tmp0_v1.i293.i = sub i32 %tmp0_v1.i24.i, %tmp0_v.i291.i
  %tmp2_v.i36.i = add i32 %tmp0_v.i189.i, -80
  %26 = inttoptr i32 %tmp2_v.i36.i to i32*
  store i32 %tmp0_v1.i293.i, i32* %26, align 16
  %tmp2_v7.i37.i = add i32 %tmp0_v.i189.i, -100
  %27 = inttoptr i32 %tmp2_v7.i37.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i189.i, -104
  %28 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %21, align 16
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_804937C.i, label %BB_80493B3.i

BB_80493A7.i:                                     ; preds = %BB_804937C.i, %BB_8049393.i
  %31 = phi i32 [ %storemerge1124, %BB_804937C.i ], [ %.pre, %BB_8049393.i ]
  %r_ecx.0 = phi i32 [ %r_ecx.325, %BB_804937C.i ], [ %140, %BB_8049393.i ]
  %tmp0_v1.i.i = add i32 %31, 1
  store i32 %tmp0_v1.i.i, i32* %28, align 8
  %32 = load i32, i32* %21, align 16
  %33 = icmp slt i32 %tmp0_v1.i.i, %32
  br i1 %33, label %BB_804937C.i, label %BB_80493B3.i

BB_804943B.i:                                     ; preds = %BB_804943B.i.lr.ph, %BB_804943B.i
  %storemerge930 = phi i32 [ 0, %BB_804943B.i.lr.ph ], [ %tmp0_v2.i68.i, %BB_804943B.i ]
  %34 = load i32, i32* %23, align 8
  %tmp4_v.i.i = shl i32 %storemerge930, 2
  %tmp2_v3.i.i = add i32 %34, %tmp4_v.i.i
  %35 = inttoptr i32 %tmp2_v3.i.i to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %153, align 8
  %37 = load i32, i32* %150, align 8
  store i32 %37, i32* %154, align 4
  %spi263 = ptrtoint[21 x i8]* @str.263 to i32
  store i32 %spi263, i32* %.pre-phi, align 16
  store i32 134517847, i32* %.pre-phi38, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa, i32 inreg noundef %storemerge930, i32 noundef %tmp2_v.i250.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %39 = load i32, i32* %150, align 8
  %tmp0_v2.i68.i = add i32 %39, 1
  store i32 %tmp0_v2.i68.i, i32* %150, align 8
  %40 = load i32, i32* %163, align 4
  %41 = icmp slt i32 %tmp0_v2.i68.i, %40
  br i1 %41, label %BB_804943B.i, label %BB_8049466.i

BB_80493E5.i:                                     ; preds = %BB_80493D1.i, %BB_80493C3.i
  %42 = phi i32 [ %storemerge1026, %BB_80493C3.i ], [ %.pre33, %BB_80493D1.i ]
  %r_ecx.1 = phi i32 [ %r_ecx.227, %BB_80493C3.i ], [ %53, %BB_80493D1.i ]
  %tmp0_v1.i7.i = add i32 %42, 1
  store i32 %tmp0_v1.i7.i, i32* %164, align 16
  %43 = load i32, i32* %21, align 16
  %44 = icmp slt i32 %tmp0_v1.i7.i, %43
  br i1 %44, label %BB_80493C3.i, label %BB_80493F1.i

BB_80493F1.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.2.lcssa = phi i32 [ %r_ecx.3.lcssa, %BB_80493B3.i ], [ %r_ecx.1, %BB_80493E5.i ]
  %tmp2_v.i62.i = add i32 %tmp0_v.i189.i, -116
  %45 = inttoptr i32 %tmp2_v.i62.i to i32*
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %27, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %BB_80493FA.i.lr.ph, label %BB_80493F1.i.BB_8049425.i_crit_edge

BB_80493F1.i.BB_8049425.i_crit_edge:              ; preds = %BB_80493F1.i
  %.pre34 = add i32 %tmp0_v1.i293.i, -16
  %.pre35 = inttoptr i32 %.pre34 to i32*
  %.pre36 = add i32 %tmp0_v1.i293.i, -20
  %.pre37 = inttoptr i32 %.pre36 to i32*
  br label %BB_8049425.i

BB_80493FA.i.lr.ph:                               ; preds = %BB_80493F1.i
  %tmp2_v6.i262.i = add i32 %tmp0_v1.i293.i, -8
  %48 = inttoptr i32 %tmp2_v6.i262.i to i32*
  %tmp2_v9.i265.i = add i32 %tmp0_v1.i293.i, -12
  %49 = inttoptr i32 %tmp2_v9.i265.i to i32*
  %tmp2_v11.i268.i = add i32 %tmp0_v1.i293.i, -16
  %50 = inttoptr i32 %tmp2_v11.i268.i to i32*
  %tmp2_v12.i269.i = add i32 %tmp0_v1.i293.i, -20
  %51 = inttoptr i32 %tmp2_v12.i269.i to i32*
  br label %BB_80493FA.i

BB_80493C3.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.227 = phi i32 [ %r_ecx.1, %BB_80493E5.i ], [ %r_ecx.3.lcssa, %BB_80493B3.i ]
  %storemerge1026 = phi i32 [ %tmp0_v1.i7.i, %BB_80493E5.i ], [ 0, %BB_80493B3.i ]
  %tmp4_v.i86.i = shl i32 %storemerge1026, 2
  %tmp2_v2.i87.i = add i32 %tmp4_v.i86.i, %tmp2_v3.i50.i
  %52 = inttoptr i32 %tmp2_v2.i87.i to i32*
  %53 = load i32, i32* %52, align 4
  %tmp0_v4.i89.i = and i32 %53, 1
  %.not.i.i = icmp eq i32 %tmp0_v4.i89.i, 0
  br i1 %.not.i.i, label %BB_80493D1.i, label %BB_80493E5.i

BB_80494F8.i:                                     ; preds = %BB_80494C6.i, %Func_split_nums.exit
  store i32 10, i32* %.pre-phi, align 16
  store i32 134518018, i32* %.pre-phi38, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %54 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i41.i = add i32 %132, -120
  %55 = inttoptr i32 %tmp2_v.i41.i to i32*
  %tmp2_v.i335.i = add i32 %132, -124
  %56 = inttoptr i32 %tmp2_v.i335.i to i32*
  store i32 0, i32* %55, align 4
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %BB_804950E.i.lr.ph, label %.exit

BB_804950E.i.lr.ph:                               ; preds = %BB_80494F8.i
  %tmp2_v.i220.i = add i32 %132, -132
  %59 = inttoptr i32 %tmp2_v.i220.i to i32*
  %tmp2_v7.i229.i = add i32 %tmp0_v1.i293.i, -8
  %60 = inttoptr i32 %tmp2_v7.i229.i to i32*
  %tmp2_v11.i233.i = add i32 %131, -8128
  br label %BB_804950E.i

BB_80493D1.i:                                     ; preds = %BB_80493C3.i
  %61 = load i32, i32* %23, align 8
  %62 = load i32, i32* %163, align 4
  %tmp4_v8.i.i = shl i32 %62, 2
  %tmp2_v9.i114.i = add i32 %tmp4_v8.i.i, %61
  %63 = inttoptr i32 %tmp2_v9.i114.i to i32*
  store i32 %53, i32* %63, align 4
  %64 = load i32, i32* %163, align 4
  %tmp0_v12.i.i = add i32 %64, 1
  store i32 %tmp0_v12.i.i, i32* %163, align 4
  %.pre33 = load i32, i32* %164, align 16
  br label %BB_80493E5.i

BB_8049393.i:                                     ; preds = %BB_804937C.i
  %65 = load i32, i32* %26, align 16
  %66 = load i32, i32* %27, align 4
  %tmp4_v8.i133.i = shl i32 %66, 2
  %tmp2_v9.i134.i = add i32 %tmp4_v8.i133.i, %65
  %67 = inttoptr i32 %tmp2_v9.i134.i to i32*
  store i32 %140, i32* %67, align 4
  %68 = load i32, i32* %27, align 4
  %tmp0_v12.i137.i = add i32 %68, 1
  store i32 %tmp0_v12.i137.i, i32* %27, align 4
  %.pre = load i32, i32* %28, align 8
  br label %BB_80493A7.i

BB_8049466.i:                                     ; preds = %BB_8049425.i.BB_8049466.i_crit_edge, %BB_804943B.i
  %.pre-phi41 = phi i32* [ %.pre40, %BB_8049425.i.BB_8049466.i_crit_edge ], [ %154, %BB_804943B.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517872, i32* %.pre-phi38, align 4
  %arg.i.i19 = load i32, i32* %.pre-phi, align 16
  %69 = tail call i32 @putchar(i32 %arg.i.i19)  nounwind 
  %tmp2_v.i273.i = add i32 %tmp0_v.i189.i, -144
  %70 = inttoptr i32 %tmp2_v.i273.i to i32*
  store i32 0, i32* %70, align 16
  %tmp2_v1.i274.i = add i32 %tmp0_v.i189.i, -140
  %71 = inttoptr i32 %tmp2_v1.i274.i to i32*
  store i32 0, i32* %71, align 4
  %tmp2_v2.i275.i = add i32 %tmp0_v.i189.i, -136
  %72 = inttoptr i32 %tmp2_v2.i275.i to i32*
  store i32 0, i32* %72, align 8
  %tmp2_v3.i276.i = add i32 %tmp0_v.i189.i, -132
  %73 = inttoptr i32 %tmp2_v3.i276.i to i32*
  store i32 0, i32* %73, align 4
  store i32 %tmp2_v2.i275.i, i32* %.pre-phi41, align 4
  store i32 %tmp2_v.i273.i, i32* %.pre-phi, align 16
  store i32 %tmp2_v3.i276.i, i32* %.pre-phi38, align 4
  %tmp2_v12.i284.i = add i32 %tmp0_v1.i293.i, -24
  %74 = inttoptr i32 %tmp2_v12.i284.i to i32*
  store i32 %tmp2_v1.i274.i, i32* %74, align 8
  %75 = load i32, i32* %21, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v1.i293.i, -28
  %76 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %75, i32* %76, align 4
  %tmp2_v17.i288.i = add i32 %tmp0_v1.i293.i, -32
  %77 = inttoptr i32 %tmp2_v17.i288.i to i32*
  store i32 %tmp2_v3.i50.i, i32* %77, align 16
  %tmp2_v18.i289.i = add i32 %tmp0_v1.i293.i, -36
  %78 = inttoptr i32 %tmp2_v18.i289.i to i32*
  store i32 134517946, i32* %78, align 4
  %tmp2_v.i141.i.i = add i32 %tmp0_v1.i293.i, -40
  %79 = inttoptr i32 %tmp2_v.i141.i.i to i32*
  store i32 %tmp2_v4.i192.i, i32* %79, align 8
  %tmp2_v1.i143.i.i = add i32 %tmp0_v1.i293.i, -44
  %80 = inttoptr i32 %tmp2_v1.i143.i.i to i32*
  store i32 134529024, i32* %80, align 4
  %tmp2_v2.i146.i.i = add i32 %tmp0_v1.i293.i, -68
  %81 = inttoptr i32 %tmp2_v2.i146.i.i to i32*
  store i32 134518131, i32* %81, align 4
  %82 = load i32, i32* %.pre-phi38, align 4
  %83 = inttoptr i32 %82 to i32*
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %.pre-phi41, align 4
  %85 = inttoptr i32 %84 to i32*
  store i32 0, i32* %85, align 4
  %tmp2_v4.i13.i.i = add i32 %tmp0_v1.i293.i, -64
  %86 = inttoptr i32 %tmp2_v4.i13.i.i to i32*
  store i32 0, i32* %86, align 16
  %87 = load i32, i32* %76, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_804962A.i.i:                                   ; preds = %BB_80495DD.i.i, %BB_804962A.i.i
  %89 = phi i32 [ %tmp0_v1.i96.i.i, %BB_804962A.i.i ], [ %119, %BB_80495DD.i.i ]
  %tmp4_v.i.i.i20 = shl i32 %89, 2
  %90 = load i32, i32* %77, align 16
  %tmp0_v3.i.i.i = add i32 %90, %tmp4_v.i.i.i20
  %91 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %92 = load i32, i32* %91, align 4
  %tmp0_v6.i.i.i = lshr i32 %92, 31
  %tmp0_v7.i.i.i = add i32 %tmp0_v6.i.i.i, %92
  %tmp0_v8.i.i.i = and i32 %tmp0_v7.i.i.i, 1
  %.neg.i = add nuw nsw i32 %tmp0_v6.i.i.i, 1
  %.not.i.i.i = icmp eq i32 %tmp0_v8.i.i.i, %.neg.i
  %.sink51.i = select i1 %.not.i.i.i, i32* %74, i32* %.pre-phi
  %.sink48.i = select i1 %.not.i.i.i, i32* %118, i32* %117
  %93 = load i32, i32* %.sink51.i, align 8
  %94 = inttoptr i32 %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %.sink48.i, align 4
  %tmp0_v9.i122.i.i = shl i32 %96, 2
  %tmp0_v10.i123.i.i = add i32 %tmp0_v9.i122.i.i, %95
  %97 = inttoptr i32 %tmp0_v10.i123.i.i to i32*
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* %.sink48.i, align 4
  %tmp0_v14.i127.i.i = add i32 %98, 1
  store i32 %tmp0_v14.i127.i.i, i32* %.sink48.i, align 4
  %99 = load i32, i32* %116, align 4
  %tmp0_v1.i96.i.i = add i32 %99, 1
  store i32 %tmp0_v1.i96.i.i, i32* %116, align 4
  %100 = load i32, i32* %76, align 4
  %101 = icmp slt i32 %tmp0_v1.i96.i.i, %100
  br i1 %101, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_80495DD.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %102 = load i32, i32* %.pre-phi38, align 4
  %103 = inttoptr i32 %102 to i32*
  %104 = load i32, i32* %103, align 4
  %tmp0_v2.i65.i.i = shl i32 %104, 2
  %tmp2_v4.i67.i.i = add i32 %tmp0_v1.i293.i, -80
  %105 = inttoptr i32 %tmp2_v4.i67.i.i to i32*
  store i32 %tmp0_v2.i65.i.i, i32* %105, align 16
  %tmp2_v5.i68.i.i = add i32 %tmp0_v1.i293.i, -84
  %106 = inttoptr i32 %tmp2_v5.i68.i.i to i32*
  store i32 134518254, i32* %106, align 4
  %arg.i.i.i = load i32, i32* %105, align 16
  %107 = tail call i32 @malloc(i32 %arg.i.i.i)
  %108 = load i32, i32* %74, align 8
  %109 = inttoptr i32 %108 to i32*
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %.pre-phi41, align 4
  %111 = inttoptr i32 %110 to i32*
  %112 = load i32, i32* %111, align 4
  %tmp0_v5.i137.i.i = shl i32 %112, 2
  store i32 %tmp0_v5.i137.i.i, i32* %105, align 16
  store i32 134518281, i32* %106, align 4
  %arg.i.i36.i = load i32, i32* %105, align 16
  %113 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %114 = load i32, i32* %.pre-phi, align 16
  %115 = inttoptr i32 %114 to i32*
  store i32 %113, i32* %115, align 4
  %tmp2_v2.i90.i.i = add i32 %tmp0_v1.i293.i, -60
  %116 = inttoptr i32 %tmp2_v2.i90.i.i to i32*
  store i32 0, i32* %116, align 4
  %tmp2_v3.i91.i.i = add i32 %tmp0_v1.i293.i, -56
  %117 = inttoptr i32 %tmp2_v3.i91.i.i to i32*
  store i32 0, i32* %117, align 8
  %tmp2_v4.i92.i.i = add i32 %tmp0_v1.i293.i, -52
  %118 = inttoptr i32 %tmp2_v4.i92.i.i to i32*
  store i32 0, i32* %118, align 4
  %119 = load i32, i32* %116, align 4
  %120 = load i32, i32* %76, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_8049594.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %storemerge38.i = phi i32 [ %tmp0_v1.i.i.i, %BB_8049594.i.i ], [ 0, %BB_8049466.i ]
  %tmp4_v.i72.i.i = shl i32 %storemerge38.i, 2
  %122 = load i32, i32* %77, align 16
  %tmp0_v3.i75.i.i = add i32 %122, %tmp4_v.i72.i.i
  %123 = inttoptr i32 %tmp0_v3.i75.i.i to i32*
  %124 = load i32, i32* %123, align 4
  %tmp0_v6.i78.i.i = lshr i32 %124, 31
  %tmp0_v7.i79.i.i = add i32 %tmp0_v6.i78.i.i, %124
  %tmp0_v8.i80.i.i = and i32 %tmp0_v7.i79.i.i, 1
  %.neg30.i = add nuw nsw i32 %tmp0_v6.i78.i.i, 1
  %.not.i83.i.i = icmp eq i32 %tmp0_v8.i80.i.i, %.neg30.i
  %spec.select.i = select i1 %.not.i83.i.i, i32* %.pre-phi38, i32* %.pre-phi41
  %125 = load i32, i32* %spec.select.i, align 4
  %126 = inttoptr i32 %125 to i32*
  %127 = load i32, i32* %126, align 4
  %tmp2_v2.i107.i.i = add i32 %127, 1
  store i32 %tmp2_v2.i107.i.i, i32* %126, align 4
  %128 = load i32, i32* %86, align 16
  %tmp0_v1.i.i.i = add i32 %128, 1
  store i32 %tmp0_v1.i.i.i, i32* %86, align 16
  %129 = load i32, i32* %76, align 4
  %130 = icmp slt i32 %tmp0_v1.i.i.i, %129
  br i1 %130, label %BB_8049594.i.i, label %BB_80495DD.i.i

Func_split_nums.exit:                             ; preds = %BB_80495DD.i.i, %BB_804962A.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.2.lcssa, %BB_80495DD.i.i ], [ %tmp0_v3.i.i.i, %BB_804962A.i.i ]
  %131 = load i32, i32* %80, align 4
  %132 = load i32, i32* %79, align 8
  %tmp2_v.i21.i = add i32 %132, -116
  %133 = inttoptr i32 %tmp2_v.i21.i to i32*
  %tmp2_v.i76.i = add i32 %132, -128
  %134 = inttoptr i32 %tmp2_v.i76.i to i32*
  store i32 0, i32* %133, align 4
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %BB_80494C6.i.lr.ph, label %BB_80494F8.i

BB_80494C6.i.lr.ph:                               ; preds = %Func_split_nums.exit
  %tmp2_v.i342.i = add i32 %132, -136
  %137 = inttoptr i32 %tmp2_v.i342.i to i32*
  %tmp2_v7.i351.i = add i32 %tmp0_v1.i293.i, -8
  %138 = inttoptr i32 %tmp2_v7.i351.i to i32*
  %tmp2_v11.i356.i = add i32 %131, -8143
  br label %BB_80494C6.i

BB_804937C.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.325 = phi i32 [ %r_ecx.0, %BB_80493A7.i ], [ %tmp0_v17.i185.i, %helper_divl_EAX.exit393.i ]
  %storemerge1124 = phi i32 [ %tmp0_v1.i.i, %BB_80493A7.i ], [ 0, %helper_divl_EAX.exit393.i ]
  %tmp4_v.i155.i = shl i32 %storemerge1124, 2
  %tmp2_v2.i156.i = add i32 %tmp4_v.i155.i, %tmp2_v3.i50.i
  %139 = inttoptr i32 %tmp2_v2.i156.i to i32*
  %140 = load i32, i32* %139, align 4
  %tmp0_v5.i159.i = lshr i32 %140, 31
  %tmp0_v6.i160.i = add i32 %tmp0_v5.i159.i, %140
  %tmp0_v7.i161.i = and i32 %tmp0_v6.i160.i, 1
  %.neg = add nuw nsw i32 %tmp0_v5.i159.i, 1
  %.not.i164.i = icmp eq i32 %tmp0_v7.i161.i, %.neg
  br i1 %.not.i164.i, label %BB_8049393.i, label %BB_80493A7.i

BB_804950E.i:                                     ; preds = %BB_804950E.i, %BB_804950E.i.lr.ph
  %storemerge832 = phi i32 [ 0, %BB_804950E.i.lr.ph ], [ %tmp0_v2.i205.i, %BB_804950E.i ]
  %141 = load i32, i32* %59, align 4
  %tmp0_v3.i224.i = shl i32 %storemerge832, 2
  %tmp0_v4.i225.i = add i32 %141, %tmp0_v3.i224.i
  %142 = inttoptr i32 %tmp0_v4.i225.i to i32*
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %60, align 8
  %144 = load i32, i32* %55, align 4
  store i32 %144, i32* %.pre-phi41, align 4
  store i32 %tmp2_v11.i233.i, i32* %.pre-phi, align 16
  store i32 134518065, i32* %.pre-phi38, align 4
  %145 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v3.i224.i, i32 noundef %tmp2_v.i250.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %146 = load i32, i32* %55, align 4
  %tmp0_v2.i205.i = add i32 %146, 1
  store i32 %tmp0_v2.i205.i, i32* %55, align 4
  %147 = load i32, i32* %56, align 4
  %148 = icmp slt i32 %tmp0_v2.i205.i, %147
  br i1 %148, label %BB_804950E.i, label %.exit

BB_8049425.i:                                     ; preds = %BB_80493FA.i, %BB_80493F1.i.BB_8049425.i_crit_edge
  %.pre-phi38 = phi i32* [ %.pre37, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %51, %BB_80493FA.i ]
  %.pre-phi = phi i32* [ %.pre35, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %50, %BB_80493FA.i ]
  %tmp2_v.i250.i.pre-phi = phi i32 [ %.pre34, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %tmp2_v11.i268.i, %BB_80493FA.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517807, i32* %.pre-phi38, align 4
  %arg.i.i23 = load i32, i32* %.pre-phi, align 16
  %149 = tail call i32 @putchar(i32 %arg.i.i23)  nounwind 
  %tmp2_v.i17.i = add i32 %tmp0_v.i189.i, -120
  %150 = inttoptr i32 %tmp2_v.i17.i to i32*
  store i32 0, i32* %150, align 8
  %151 = load i32, i32* %163, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %BB_804943B.i.lr.ph, label %BB_8049425.i.BB_8049466.i_crit_edge

BB_8049425.i.BB_8049466.i_crit_edge:              ; preds = %BB_8049425.i
  %.pre39 = add i32 %tmp0_v1.i293.i, -12
  %.pre40 = inttoptr i32 %.pre39 to i32*
  br label %BB_8049466.i

BB_804943B.i.lr.ph:                               ; preds = %BB_8049425.i
  %tmp2_v6.i.i = add i32 %tmp0_v1.i293.i, -8
  %153 = inttoptr i32 %tmp2_v6.i.i to i32*
  %tmp2_v9.i.i = add i32 %tmp0_v1.i293.i, -12
  %154 = inttoptr i32 %tmp2_v9.i.i to i32*
  br label %BB_804943B.i

BB_80493FA.i:                                     ; preds = %BB_80493FA.i, %BB_80493FA.i.lr.ph
  %storemerge29 = phi i32 [ 0, %BB_80493FA.i.lr.ph ], [ %tmp0_v2.i320.i, %BB_80493FA.i ]
  %155 = load i32, i32* %26, align 16
  %tmp4_v.i257.i = shl i32 %storemerge29, 2
  %tmp2_v3.i258.i = add i32 %155, %tmp4_v.i257.i
  %156 = inttoptr i32 %tmp2_v3.i258.i to i32*
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %48, align 8
  %158 = load i32, i32* %45, align 4
  store i32 %158, i32* %49, align 4
  %spi262 = ptrtoint[20 x i8]* @str.262 to i32
  store i32 %spi262, i32* %50, align 16
  store i32 134517782, i32* %51, align 4
  %159 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa, i32 inreg noundef %storemerge29, i32 noundef %tmp2_v11.i268.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %160 = load i32, i32* %45, align 4
  %tmp0_v2.i320.i = add i32 %160, 1
  store i32 %tmp0_v2.i320.i, i32* %45, align 4
  %161 = load i32, i32* %27, align 4
  %162 = icmp slt i32 %tmp0_v2.i320.i, %161
  br i1 %162, label %BB_80493FA.i, label %BB_8049425.i

BB_80493B3.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.3.lcssa = phi i32 [ %tmp0_v17.i185.i, %helper_divl_EAX.exit393.i ], [ %r_ecx.0, %BB_80493A7.i ]
  %tmp2_v.i297.i = add i32 %tmp0_v.i189.i, -108
  %163 = inttoptr i32 %tmp2_v.i297.i to i32*
  store i32 0, i32* %163, align 4
  %tmp2_v1.i298.i = add i32 %tmp0_v.i189.i, -112
  %164 = inttoptr i32 %tmp2_v1.i298.i to i32*
  store i32 0, i32* %164, align 16
  %165 = load i32, i32* %21, align 16
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %BB_80493C3.i, label %BB_80493F1.i

BB_80494C6.i:                                     ; preds = %BB_80494C6.i, %BB_80494C6.i.lr.ph
  %storemerge731 = phi i32 [ 0, %BB_80494C6.i.lr.ph ], [ %tmp0_v2.i241.i, %BB_80494C6.i ]
  %167 = load i32, i32* %137, align 4
  %tmp0_v3.i346.i = shl i32 %storemerge731, 2
  %tmp0_v4.i347.i = add i32 %167, %tmp0_v3.i346.i
  %168 = inttoptr i32 %tmp0_v4.i347.i to i32*
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %138, align 8
  %170 = load i32, i32* %133, align 4
  store i32 %170, i32* %.pre-phi41, align 4
  store i32 %tmp2_v11.i356.i, i32* %.pre-phi, align 16
  store i32 134517993, i32* %.pre-phi38, align 4
  %171 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v3.i346.i, i32 noundef %tmp2_v.i250.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %172 = load i32, i32* %133, align 4
  %tmp0_v2.i241.i = add i32 %172, 1
  store i32 %tmp0_v2.i241.i, i32* %133, align 4
  %173 = load i32, i32* %134, align 4
  %174 = icmp slt i32 %tmp0_v2.i241.i, %173
  br i1 %174, label %BB_80494C6.i, label %BB_80494F8.i

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

  tail call fastcc void @split_even_odd264(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
