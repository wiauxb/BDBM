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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split_even_oddm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
helper_divl_EAX.exit393.i:
  %tmp2_v.i105.i = add i32 %arg_esp, 4
  %tmp0_v.i106.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i108.i = add i32 %tmp0_v.i106.i, -4
  %2 = inttoptr i32 %tmp2_v3.i108.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i109.i = add i32 %tmp0_v.i106.i, -8
  %3 = inttoptr i32 %tmp2_v4.i109.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i111.i = add i32 %tmp0_v.i106.i, -12
  %4 = inttoptr i32 %tmp2_v5.i111.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i112.i = add i32 %tmp0_v.i106.i, -16
  %5 = inttoptr i32 %tmp2_v6.i112.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i114.i = add i32 %tmp0_v.i106.i, -20
  %6 = inttoptr i32 %tmp2_v7.i114.i to i32*
  store i32 %tmp2_v.i105.i, i32* %6, align 4
  %tmp2_v9.i116.i = add i32 %tmp0_v.i106.i, -148
  %7 = inttoptr i32 %tmp2_v9.i116.i to i32*
  store i32 134517266, i32* %7, align 4
  %tmp4_v.i65.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i65.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i69.i = add i32 %tmp0_v.i106.i, -36
  %10 = inttoptr i32 %tmp2_v2.i69.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i71.i = add i32 %tmp0_v.i106.i, -76
  %11 = inttoptr i32 %tmp2_v3.i71.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i72.i = add i32 %tmp0_v.i106.i, -72
  %12 = inttoptr i32 %tmp2_v4.i72.i to i32*
  store i32 2, i32* %12, align 8
  %tmp2_v5.i73.i = add i32 %tmp0_v.i106.i, -68
  %13 = inttoptr i32 %tmp2_v5.i73.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i74.i = add i32 %tmp0_v.i106.i, -64
  %14 = inttoptr i32 %tmp2_v6.i74.i to i32*
  store i32 4, i32* %14, align 16
  %tmp2_v7.i75.i = add i32 %tmp0_v.i106.i, -60
  %15 = inttoptr i32 %tmp2_v7.i75.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i106.i, -56
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %16, align 8
  %tmp2_v9.i76.i = add i32 %tmp0_v.i106.i, -52
  %17 = inttoptr i32 %tmp2_v9.i76.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i77.i = add i32 %tmp0_v.i106.i, -48
  %18 = inttoptr i32 %tmp2_v10.i77.i to i32*
  store i32 8, i32* %18, align 16
  %tmp2_v11.i78.i = add i32 %tmp0_v.i106.i, -44
  %19 = inttoptr i32 %tmp2_v11.i78.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v12.i79.i = add i32 %tmp0_v.i106.i, -40
  %20 = inttoptr i32 %tmp2_v12.i79.i to i32*
  store i32 10, i32* %20, align 8
  %tmp2_v13.i80.i = add i32 %tmp0_v.i106.i, -96
  %21 = inttoptr i32 %tmp2_v13.i80.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i83.i = add i32 %tmp0_v.i106.i, -92
  %22 = inttoptr i32 %tmp2_v17.i83.i to i32*
  store i32 9, i32* %22, align 4
  %tmp0_v1.i190.i = add i32 %tmp0_v.i106.i, -192
  %tmp0_v4.i334.i = add i32 %tmp0_v.i106.i, -189
  %tmp0_v6.i337.i = and i32 %tmp0_v4.i334.i, -16
  %tmp2_v.i339.i = add i32 %tmp0_v.i106.i, -88
  %23 = inttoptr i32 %tmp2_v.i339.i to i32*
  store i32 %tmp0_v6.i337.i, i32* %23, align 8
  %24 = load i32, i32* %21, align 16
  %tmp2_v9.i342.i = add i32 %24, -1
  %tmp2_v10.i343.i = add i32 %tmp0_v.i106.i, -84
  %25 = inttoptr i32 %tmp2_v10.i343.i to i32*
  store i32 %tmp2_v9.i342.i, i32* %25, align 4
  %tmp4_v.i344.i = shl i32 %24, 2
  %tmp0_v11.i345.i = add i32 %tmp4_v.i344.i, 15
  %tmp0_v15.i346.i = and i32 %tmp0_v11.i345.i, -4096
  %tmp0_v17.i347.i = sub i32 %tmp0_v1.i190.i, %tmp0_v15.i346.i
  %tmp0_v.i19.i = and i32 %tmp0_v11.i345.i, 4080
  %tmp0_v1.i.i = sub i32 %tmp0_v1.i190.i, %tmp0_v.i19.i
  %tmp2_v.i307.i = add i32 %tmp0_v.i106.i, -80
  %26 = inttoptr i32 %tmp2_v.i307.i to i32*
  store i32 %tmp0_v1.i.i, i32* %26, align 16
  %tmp2_v7.i308.i = add i32 %tmp0_v.i106.i, -100
  %27 = inttoptr i32 %tmp2_v7.i308.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v8.i309.i = add i32 %tmp0_v.i106.i, -104
  %28 = inttoptr i32 %tmp2_v8.i309.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %21, align 16
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_804937C.i, label %BB_80493B3.i

BB_804937C.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.221 = phi i32 [ %r_ecx.3, %BB_80493A7.i ], [ %tmp0_v17.i347.i, %helper_divl_EAX.exit393.i ]
  %storemerge820 = phi i32 [ %tmp0_v1.i217.i, %BB_80493A7.i ], [ 0, %helper_divl_EAX.exit393.i ]
  %tmp4_v.i.i = shl i32 %storemerge820, 2
  %tmp2_v2.i.i = add i32 %tmp4_v.i.i, %tmp2_v3.i71.i
  %31 = inttoptr i32 %tmp2_v2.i.i to i32*
  %32 = load i32, i32* %31, align 4
  %tmp0_v5.i.i = lshr i32 %32, 31
  %tmp0_v6.i.i = add i32 %tmp0_v5.i.i, %32
  %tmp0_v7.i.i = and i32 %tmp0_v6.i.i, 1
  %.neg = add nuw nsw i32 %tmp0_v5.i.i, 1
  %.not.i.i = icmp eq i32 %tmp0_v7.i.i, %.neg
  br i1 %.not.i.i, label %BB_8049393.i, label %BB_80493A7.i

BB_80493E5.i:                                     ; preds = %BB_80493C3.i, %BB_80493D1.i
  %33 = phi i32 [ %storemerge722, %BB_80493C3.i ], [ %.pre29, %BB_80493D1.i ]
  %r_ecx.0 = phi i32 [ %r_ecx.123, %BB_80493C3.i ], [ %152, %BB_80493D1.i ]
  %tmp0_v1.i38.i = add i32 %33, 1
  store i32 %tmp0_v1.i38.i, i32* %49, align 16
  %34 = load i32, i32* %21, align 16
  %35 = icmp slt i32 %tmp0_v1.i38.i, %34
  br i1 %35, label %BB_80493C3.i, label %BB_80493F1.i

BB_80493D1.i:                                     ; preds = %BB_80493C3.i
  %36 = load i32, i32* %23, align 8
  %37 = load i32, i32* %48, align 4
  %tmp4_v8.i.i = shl i32 %37, 2
  %tmp2_v9.i55.i = add i32 %tmp4_v8.i.i, %36
  %38 = inttoptr i32 %tmp2_v9.i55.i to i32*
  store i32 %152, i32* %38, align 4
  %39 = load i32, i32* %48, align 4
  %tmp0_v12.i.i = add i32 %39, 1
  store i32 %tmp0_v12.i.i, i32* %48, align 4
  %.pre29 = load i32, i32* %49, align 16
  br label %BB_80493E5.i

BB_804943B.i:                                     ; preds = %BB_804943B.i.lr.ph, %BB_804943B.i
  %storemerge626 = phi i32 [ 0, %BB_804943B.i.lr.ph ], [ %tmp0_v2.i161.i, %BB_804943B.i ]
  %40 = load i32, i32* %23, align 8
  %tmp4_v.i91.i = shl i32 %storemerge626, 2
  %tmp2_v3.i92.i = add i32 %40, %tmp4_v.i91.i
  %41 = inttoptr i32 %tmp2_v3.i92.i to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %173, align 8
  %43 = load i32, i32* %170, align 8
  store i32 %43, i32* %174, align 4
  store i32 134520860, i32* %.pre-phi, align 16
  store i32 134517847, i32* %.pre-phi34, align 4
  %44 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge626, i32 noundef %tmp2_v.i360.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %45 = load i32, i32* %170, align 8
  %tmp0_v2.i161.i = add i32 %45, 1
  store i32 %tmp0_v2.i161.i, i32* %170, align 8
  %46 = load i32, i32* %48, align 4
  %47 = icmp slt i32 %tmp0_v2.i161.i, %46
  br i1 %47, label %BB_804943B.i, label %BB_8049466.i

BB_80493B3.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.2.lcssa = phi i32 [ %tmp0_v17.i347.i, %helper_divl_EAX.exit393.i ], [ %r_ecx.3, %BB_80493A7.i ]
  %tmp2_v.i118.i = add i32 %tmp0_v.i106.i, -108
  %48 = inttoptr i32 %tmp2_v.i118.i to i32*
  store i32 0, i32* %48, align 4
  %tmp2_v1.i119.i = add i32 %tmp0_v.i106.i, -112
  %49 = inttoptr i32 %tmp2_v1.i119.i to i32*
  store i32 0, i32* %49, align 16
  %50 = load i32, i32* %21, align 16
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %BB_80493C3.i, label %BB_80493F1.i

BB_804950E.i:                                     ; preds = %BB_804950E.i.lr.ph, %BB_804950E.i
  %storemerge528 = phi i32 [ 0, %BB_804950E.i.lr.ph ], [ %tmp0_v2.i173.i, %BB_804950E.i ]
  %52 = load i32, i32* %65, align 4
  %tmp0_v3.i125.i = shl i32 %storemerge528, 2
  %tmp0_v4.i126.i = add i32 %52, %tmp0_v3.i125.i
  %53 = inttoptr i32 %tmp0_v4.i126.i to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %66, align 8
  %55 = load i32, i32* %61, align 4
  store i32 %55, i32* %.pre-phi37, align 4
  store i32 %tmp2_v11.i134.i, i32* %.pre-phi, align 16
  store i32 134518065, i32* %.pre-phi34, align 4
  %56 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v3.i125.i, i32 noundef %tmp2_v.i360.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %57 = load i32, i32* %61, align 4
  %tmp0_v2.i173.i = add i32 %57, 1
  store i32 %tmp0_v2.i173.i, i32* %61, align 4
  %58 = load i32, i32* %62, align 4
  %59 = icmp slt i32 %tmp0_v2.i173.i, %58
  br i1 %59, label %BB_804950E.i, label %.exit

BB_80494F8.i:                                     ; preds = %BB_80494C6.i, %Func_split_nums.exit
  store i32 10, i32* %.pre-phi, align 16
  store i32 134518018, i32* %.pre-phi34, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %60 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i278.i = add i32 %140, -120
  %61 = inttoptr i32 %tmp2_v.i278.i to i32*
  %tmp2_v.i2.i = add i32 %140, -124
  %62 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 0, i32* %61, align 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %BB_804950E.i.lr.ph, label %.exit

BB_804950E.i.lr.ph:                               ; preds = %BB_80494F8.i
  %tmp2_v.i121.i = add i32 %140, -132
  %65 = inttoptr i32 %tmp2_v.i121.i to i32*
  %tmp2_v7.i130.i = add i32 %tmp0_v1.i.i, -8
  %66 = inttoptr i32 %tmp2_v7.i130.i to i32*
  %tmp2_v11.i134.i = add i32 %139, -8128
  br label %BB_804950E.i

BB_80493F1.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.2.lcssa, %BB_80493B3.i ], [ %r_ecx.0, %BB_80493E5.i ]
  %tmp2_v.i155.i = add i32 %tmp0_v.i106.i, -116
  %67 = inttoptr i32 %tmp2_v.i155.i to i32*
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %27, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %BB_80493FA.i.lr.ph, label %BB_80493F1.i.BB_8049425.i_crit_edge

BB_80493F1.i.BB_8049425.i_crit_edge:              ; preds = %BB_80493F1.i
  %.pre30 = add i32 %tmp0_v1.i.i, -16
  %.pre31 = inttoptr i32 %.pre30 to i32*
  %.pre32 = add i32 %tmp0_v1.i.i, -20
  %.pre33 = inttoptr i32 %.pre32 to i32*
  br label %BB_8049425.i

BB_80493FA.i.lr.ph:                               ; preds = %BB_80493F1.i
  %tmp2_v6.i320.i = add i32 %tmp0_v1.i.i, -8
  %70 = inttoptr i32 %tmp2_v6.i320.i to i32*
  %tmp2_v9.i323.i = add i32 %tmp0_v1.i.i, -12
  %71 = inttoptr i32 %tmp2_v9.i323.i to i32*
  %tmp2_v11.i326.i = add i32 %tmp0_v1.i.i, -16
  %72 = inttoptr i32 %tmp2_v11.i326.i to i32*
  %tmp2_v12.i327.i = add i32 %tmp0_v1.i.i, -20
  %73 = inttoptr i32 %tmp2_v12.i327.i to i32*
  br label %BB_80493FA.i

BB_80493A7.i:                                     ; preds = %BB_8049393.i, %BB_804937C.i
  %74 = phi i32 [ %storemerge820, %BB_804937C.i ], [ %.pre, %BB_8049393.i ]
  %r_ecx.3 = phi i32 [ %r_ecx.221, %BB_804937C.i ], [ %32, %BB_8049393.i ]
  %tmp0_v1.i217.i = add i32 %74, 1
  store i32 %tmp0_v1.i217.i, i32* %28, align 8
  %75 = load i32, i32* %21, align 16
  %76 = icmp slt i32 %tmp0_v1.i217.i, %75
  br i1 %76, label %BB_804937C.i, label %BB_80493B3.i

BB_8049466.i:                                     ; preds = %BB_8049425.i.BB_8049466.i_crit_edge, %BB_804943B.i
  %.pre-phi37 = phi i32* [ %.pre36, %BB_8049425.i.BB_8049466.i_crit_edge ], [ %174, %BB_804943B.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517872, i32* %.pre-phi34, align 4
  %arg.i.i16 = load i32, i32* %.pre-phi, align 16
  %77 = tail call i32 @putchar(i32 %arg.i.i16)  nounwind 
  %tmp2_v.i15.i = add i32 %tmp0_v.i106.i, -144
  %78 = inttoptr i32 %tmp2_v.i15.i to i32*
  store i32 0, i32* %78, align 16
  %tmp2_v1.i16.i = add i32 %tmp0_v.i106.i, -140
  %79 = inttoptr i32 %tmp2_v1.i16.i to i32*
  store i32 0, i32* %79, align 4
  %tmp2_v2.i17.i = add i32 %tmp0_v.i106.i, -136
  %80 = inttoptr i32 %tmp2_v2.i17.i to i32*
  store i32 0, i32* %80, align 8
  %tmp2_v3.i.i = add i32 %tmp0_v.i106.i, -132
  %81 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 0, i32* %81, align 4
  store i32 %tmp2_v2.i17.i, i32* %.pre-phi37, align 4
  store i32 %tmp2_v.i15.i, i32* %.pre-phi, align 16
  store i32 %tmp2_v3.i.i, i32* %.pre-phi34, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v1.i.i, -24
  %82 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v1.i16.i, i32* %82, align 8
  %83 = load i32, i32* %21, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v1.i.i, -28
  %84 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %83, i32* %84, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v1.i.i, -32
  %85 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i71.i, i32* %85, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v1.i.i, -36
  %86 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517946, i32* %86, align 4
  %tmp2_v.i34.i.i = add i32 %tmp0_v1.i.i, -40
  %87 = inttoptr i32 %tmp2_v.i34.i.i to i32*
  store i32 %tmp2_v4.i109.i, i32* %87, align 8
  %tmp2_v1.i36.i.i = add i32 %tmp0_v1.i.i, -44
  %88 = inttoptr i32 %tmp2_v1.i36.i.i to i32*
  store i32 134529024, i32* %88, align 4
  %tmp2_v2.i38.i.i = add i32 %tmp0_v1.i.i, -68
  %89 = inttoptr i32 %tmp2_v2.i38.i.i to i32*
  store i32 134518131, i32* %89, align 4
  %90 = load i32, i32* %.pre-phi34, align 4
  %91 = inttoptr i32 %90 to i32*
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %.pre-phi37, align 4
  %93 = inttoptr i32 %92 to i32*
  store i32 0, i32* %93, align 4
  %tmp2_v4.i113.i.i = add i32 %tmp0_v1.i.i, -64
  %94 = inttoptr i32 %tmp2_v4.i113.i.i to i32*
  store i32 0, i32* %94, align 16
  %95 = load i32, i32* %84, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_80495DD.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %97 = load i32, i32* %.pre-phi34, align 4
  %98 = inttoptr i32 %97 to i32*
  %99 = load i32, i32* %98, align 4
  %tmp0_v2.i.i.i = shl i32 %99, 2
  %tmp2_v4.i.i.i = add i32 %tmp0_v1.i.i, -80
  %100 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp0_v2.i.i.i, i32* %100, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v1.i.i, -84
  %101 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134518254, i32* %101, align 4
  %arg.i.i.i = load i32, i32* %100, align 16
  %102 = tail call i32 @malloc(i32 %arg.i.i.i)
  %103 = load i32, i32* %82, align 8
  %104 = inttoptr i32 %103 to i32*
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %.pre-phi37, align 4
  %106 = inttoptr i32 %105 to i32*
  %107 = load i32, i32* %106, align 4
  %tmp0_v5.i94.i.i = shl i32 %107, 2
  store i32 %tmp0_v5.i94.i.i, i32* %100, align 16
  store i32 134518281, i32* %101, align 4
  %arg.i.i36.i = load i32, i32* %100, align 16
  %108 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %109 = load i32, i32* %.pre-phi, align 16
  %110 = inttoptr i32 %109 to i32*
  store i32 %108, i32* %110, align 4
  %tmp2_v2.i82.i.i = add i32 %tmp0_v1.i.i, -60
  %111 = inttoptr i32 %tmp2_v2.i82.i.i to i32*
  store i32 0, i32* %111, align 4
  %tmp2_v3.i83.i.i = add i32 %tmp0_v1.i.i, -56
  %112 = inttoptr i32 %tmp2_v3.i83.i.i to i32*
  store i32 0, i32* %112, align 8
  %tmp2_v4.i84.i.i = add i32 %tmp0_v1.i.i, -52
  %113 = inttoptr i32 %tmp2_v4.i84.i.i to i32*
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* %111, align 4
  %115 = load i32, i32* %84, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_804962A.i.i:                                   ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %117 = phi i32 [ %tmp0_v1.i99.i.i, %BB_804962A.i.i ], [ %114, %BB_80495DD.i.i ]
  %tmp4_v.i13.i.i = shl i32 %117, 2
  %118 = load i32, i32* %85, align 16
  %tmp0_v3.i15.i.i = add i32 %118, %tmp4_v.i13.i.i
  %119 = inttoptr i32 %tmp0_v3.i15.i.i to i32*
  %120 = load i32, i32* %119, align 4
  %tmp0_v6.i.i.i = lshr i32 %120, 31
  %tmp0_v7.i.i.i = add i32 %tmp0_v6.i.i.i, %120
  %tmp0_v8.i.i.i = and i32 %tmp0_v7.i.i.i, 1
  %.neg.i = add nuw nsw i32 %tmp0_v6.i.i.i, 1
  %.not.i.i.i = icmp eq i32 %tmp0_v8.i.i.i, %.neg.i
  %.sink51.i = select i1 %.not.i.i.i, i32* %82, i32* %.pre-phi
  %.sink48.i = select i1 %.not.i.i.i, i32* %113, i32* %112
  %121 = load i32, i32* %.sink51.i, align 8
  %122 = inttoptr i32 %121 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %.sink48.i, align 4
  %tmp0_v9.i141.i.i = shl i32 %124, 2
  %tmp0_v10.i142.i.i = add i32 %tmp0_v9.i141.i.i, %123
  %125 = inttoptr i32 %tmp0_v10.i142.i.i to i32*
  store i32 %120, i32* %125, align 4
  %126 = load i32, i32* %.sink48.i, align 4
  %tmp0_v14.i146.i.i = add i32 %126, 1
  store i32 %tmp0_v14.i146.i.i, i32* %.sink48.i, align 4
  %127 = load i32, i32* %111, align 4
  %tmp0_v1.i99.i.i = add i32 %127, 1
  store i32 %tmp0_v1.i99.i.i, i32* %111, align 4
  %128 = load i32, i32* %84, align 4
  %129 = icmp slt i32 %tmp0_v1.i99.i.i, %128
  br i1 %129, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_8049594.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %storemerge38.i = phi i32 [ %tmp0_v1.i63.i.i, %BB_8049594.i.i ], [ 0, %BB_8049466.i ]
  %tmp4_v.i20.i.i = shl i32 %storemerge38.i, 2
  %130 = load i32, i32* %85, align 16
  %tmp0_v3.i23.i.i = add i32 %130, %tmp4_v.i20.i.i
  %131 = inttoptr i32 %tmp0_v3.i23.i.i to i32*
  %132 = load i32, i32* %131, align 4
  %tmp0_v6.i26.i.i = lshr i32 %132, 31
  %tmp0_v7.i27.i.i = add i32 %tmp0_v6.i26.i.i, %132
  %tmp0_v8.i28.i.i = and i32 %tmp0_v7.i27.i.i, 1
  %.neg30.i = add nuw nsw i32 %tmp0_v6.i26.i.i, 1
  %.not.i31.i.i = icmp eq i32 %tmp0_v8.i28.i.i, %.neg30.i
  %spec.select.i = select i1 %.not.i31.i.i, i32* %.pre-phi34, i32* %.pre-phi37
  %133 = load i32, i32* %spec.select.i, align 4
  %134 = inttoptr i32 %133 to i32*
  %135 = load i32, i32* %134, align 4
  %tmp2_v2.i118.i.i = add i32 %135, 1
  store i32 %tmp2_v2.i118.i.i, i32* %134, align 4
  %136 = load i32, i32* %94, align 16
  %tmp0_v1.i63.i.i = add i32 %136, 1
  store i32 %tmp0_v1.i63.i.i, i32* %94, align 16
  %137 = load i32, i32* %84, align 4
  %138 = icmp slt i32 %tmp0_v1.i63.i.i, %137
  br i1 %138, label %BB_8049594.i.i, label %BB_80495DD.i.i

Func_split_nums.exit:                             ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa, %BB_80495DD.i.i ], [ %tmp0_v3.i15.i.i, %BB_804962A.i.i ]
  %139 = load i32, i32* %88, align 4
  %140 = load i32, i32* %87, align 8
  %tmp2_v.i140.i = add i32 %140, -116
  %141 = inttoptr i32 %tmp2_v.i140.i to i32*
  %tmp2_v.i201.i = add i32 %140, -128
  %142 = inttoptr i32 %tmp2_v.i201.i to i32*
  store i32 0, i32* %141, align 4
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %BB_80494C6.i.lr.ph, label %BB_80494F8.i

BB_80494C6.i.lr.ph:                               ; preds = %Func_split_nums.exit
  %tmp2_v.i280.i = add i32 %140, -136
  %145 = inttoptr i32 %tmp2_v.i280.i to i32*
  %tmp2_v7.i289.i = add i32 %tmp0_v1.i.i, -8
  %146 = inttoptr i32 %tmp2_v7.i289.i to i32*
  %tmp2_v11.i294.i = add i32 %139, -8143
  br label %BB_80494C6.i

BB_8049393.i:                                     ; preds = %BB_804937C.i
  %147 = load i32, i32* %26, align 16
  %148 = load i32, i32* %27, align 4
  %tmp4_v8.i251.i = shl i32 %148, 2
  %tmp2_v9.i252.i = add i32 %tmp4_v8.i251.i, %147
  %149 = inttoptr i32 %tmp2_v9.i252.i to i32*
  store i32 %32, i32* %149, align 4
  %150 = load i32, i32* %27, align 4
  %tmp0_v12.i255.i = add i32 %150, 1
  store i32 %tmp0_v12.i255.i, i32* %27, align 4
  %.pre = load i32, i32* %28, align 8
  br label %BB_80493A7.i

BB_80493C3.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.123 = phi i32 [ %r_ecx.0, %BB_80493E5.i ], [ %r_ecx.2.lcssa, %BB_80493B3.i ]
  %storemerge722 = phi i32 [ %tmp0_v1.i38.i, %BB_80493E5.i ], [ 0, %BB_80493B3.i ]
  %tmp4_v.i269.i = shl i32 %storemerge722, 2
  %tmp2_v2.i270.i = add i32 %tmp4_v.i269.i, %tmp2_v3.i71.i
  %151 = inttoptr i32 %tmp2_v2.i270.i to i32*
  %152 = load i32, i32* %151, align 4
  %tmp0_v4.i272.i = and i32 %152, 1
  %.not.i273.i = icmp eq i32 %tmp0_v4.i272.i, 0
  br i1 %.not.i273.i, label %BB_80493D1.i, label %BB_80493E5.i

BB_80494C6.i:                                     ; preds = %BB_80494C6.i, %BB_80494C6.i.lr.ph
  %storemerge427 = phi i32 [ 0, %BB_80494C6.i.lr.ph ], [ %tmp0_v2.i28.i, %BB_80494C6.i ]
  %153 = load i32, i32* %145, align 4
  %tmp0_v3.i284.i = shl i32 %storemerge427, 2
  %tmp0_v4.i285.i = add i32 %153, %tmp0_v3.i284.i
  %154 = inttoptr i32 %tmp0_v4.i285.i to i32*
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %146, align 8
  %156 = load i32, i32* %141, align 4
  store i32 %156, i32* %.pre-phi37, align 4
  store i32 %tmp2_v11.i294.i, i32* %.pre-phi, align 16
  store i32 134517993, i32* %.pre-phi34, align 4
  %157 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v3.i284.i, i32 noundef %tmp2_v.i360.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %158 = load i32, i32* %141, align 4
  %tmp0_v2.i28.i = add i32 %158, 1
  store i32 %tmp0_v2.i28.i, i32* %141, align 4
  %159 = load i32, i32* %142, align 4
  %160 = icmp slt i32 %tmp0_v2.i28.i, %159
  br i1 %160, label %BB_80494C6.i, label %BB_80494F8.i

BB_80493FA.i:                                     ; preds = %BB_80493FA.i, %BB_80493FA.i.lr.ph
  %storemerge25 = phi i32 [ 0, %BB_80493FA.i.lr.ph ], [ %tmp0_v2.i233.i, %BB_80493FA.i ]
  %161 = load i32, i32* %26, align 16
  %tmp4_v.i315.i = shl i32 %storemerge25, 2
  %tmp2_v3.i316.i = add i32 %161, %tmp4_v.i315.i
  %162 = inttoptr i32 %tmp2_v3.i316.i to i32*
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %70, align 8
  %164 = load i32, i32* %67, align 4
  store i32 %164, i32* %71, align 4
  store i32 134520840, i32* %72, align 16
  store i32 134517782, i32* %73, align 4
  %165 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge25, i32 noundef %tmp2_v11.i326.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %166 = load i32, i32* %67, align 4
  %tmp0_v2.i233.i = add i32 %166, 1
  store i32 %tmp0_v2.i233.i, i32* %67, align 4
  %167 = load i32, i32* %27, align 4
  %168 = icmp slt i32 %tmp0_v2.i233.i, %167
  br i1 %168, label %BB_80493FA.i, label %BB_8049425.i

BB_8049425.i:                                     ; preds = %BB_80493FA.i, %BB_80493F1.i.BB_8049425.i_crit_edge
  %.pre-phi34 = phi i32* [ %.pre33, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %73, %BB_80493FA.i ]
  %.pre-phi = phi i32* [ %.pre31, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %72, %BB_80493FA.i ]
  %tmp2_v.i360.i.pre-phi = phi i32 [ %.pre30, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %tmp2_v11.i326.i, %BB_80493FA.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517807, i32* %.pre-phi34, align 4
  %arg.i.i19 = load i32, i32* %.pre-phi, align 16
  %169 = tail call i32 @putchar(i32 %arg.i.i19)  nounwind 
  %tmp2_v.i365.i = add i32 %tmp0_v.i106.i, -120
  %170 = inttoptr i32 %tmp2_v.i365.i to i32*
  store i32 0, i32* %170, align 8
  %171 = load i32, i32* %48, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %BB_804943B.i.lr.ph, label %BB_8049425.i.BB_8049466.i_crit_edge

BB_8049425.i.BB_8049466.i_crit_edge:              ; preds = %BB_8049425.i
  %.pre35 = add i32 %tmp0_v1.i.i, -12
  %.pre36 = inttoptr i32 %.pre35 to i32*
  br label %BB_8049466.i

BB_804943B.i.lr.ph:                               ; preds = %BB_8049425.i
  %tmp2_v6.i96.i = add i32 %tmp0_v1.i.i, -8
  %173 = inttoptr i32 %tmp2_v6.i96.i to i32*
  %tmp2_v9.i99.i = add i32 %tmp0_v1.i.i, -12
  %174 = inttoptr i32 %tmp2_v9.i99.i to i32*
  br label %BB_804943B.i

.exit:                                            ; preds = %BB_80494F8.i, %BB_804950E.i
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
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @split_even_oddm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
