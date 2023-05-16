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
define internal fastcc void @substringm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i40.i = add i32 %arg_esp, 4
  %tmp0_v.i41.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i42.i = add i32 %tmp0_v.i41.i, -4
  %2 = inttoptr i32 %tmp2_v3.i42.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i43.i = add i32 %tmp0_v.i41.i, -8
  %3 = inttoptr i32 %tmp2_v4.i43.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i45.i = add i32 %tmp0_v.i41.i, -12
  %4 = inttoptr i32 %tmp2_v5.i45.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i47.i = add i32 %tmp0_v.i41.i, -16
  %5 = inttoptr i32 %tmp2_v6.i47.i to i32*
  store i32 %tmp2_v.i40.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i41.i, -164
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i59.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i59.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i63.i = add i32 %tmp0_v.i41.i, -20
  %9 = inttoptr i32 %tmp2_v2.i63.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i64.i = add i32 %tmp0_v.i41.i, -141
  %10 = inttoptr i32 %tmp2_v3.i64.i to i32*
  store i32 758132785, i32* %10, align 4
  %tmp2_v4.i65.i = add i32 %tmp0_v.i41.i, -137
  %11 = inttoptr i32 %tmp2_v4.i65.i to i32*
  store i32 758133812, i32* %11, align 4
  %tmp2_v5.i66.i = add i32 %tmp0_v.i41.i, -133
  %12 = inttoptr i32 %tmp2_v5.i66.i to i32*
  store i32 892808752, i32* %12, align 4
  %tmp2_v6.i67.i = add i32 %tmp0_v.i41.i, -129
  %13 = inttoptr i32 %tmp2_v6.i67.i to i32*
  store i32 875769136, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i41.i, -125
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1093481523, i32* %14, align 4
  %tmp2_v8.i68.i = add i32 %tmp0_v.i41.i, -121
  %15 = inttoptr i32 %tmp2_v8.i68.i to i8*
  store i8 0, i8* %15, align 1
  store i32 3, i32* %6, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i41.i, -168
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i41.i, -154
  %tmp2_v12.i.i = add i32 %tmp0_v.i41.i, -172
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v11.i.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i41.i, -176
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i64.i, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i41.i, -180
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517321, i32* %19, align 4
  %tmp2_v.i33.i.i = add i32 %tmp0_v.i41.i, -184
  %20 = inttoptr i32 %tmp2_v.i33.i.i to i32*
  store i32 %tmp2_v4.i43.i, i32* %20, align 8
  %tmp2_v1.i35.i.i = add i32 %tmp0_v.i41.i, -188
  %21 = inttoptr i32 %tmp2_v1.i35.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i41.i, -212
  %22 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517592, i32* %22, align 4
  %23 = load i32, i32* %18, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i41.i, -224
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i41.i, -228
  %25 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i = load i32, i32* %24, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i.i)
  %27 = load i32, i32* %16, align 8
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %BB_804937C.i.i, label %BB_8049374.i.i

BB_8049374.i.i:                                   ; preds = %.exit
  %29 = load i32, i32* %17, align 4
  br label %Func_substring.exit

BB_80493C3.i.i:                                   ; preds = %BB_80493AD.i.i, %BB_80493AD.i.i.preheader, %BB_804937C.i.i, %BB_8049385.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i40.i, %BB_804937C.i.i ], [ %tmp2_v.i40.i, %BB_80493AD.i.i.preheader ], [ %storemerge24.i159, %BB_80493AD.i.i ], [ %storemerge24.i159, %BB_8049385.i.i ]
  %.lcssa.i = phi i32 [ %37, %BB_804937C.i.i ], [ %37, %BB_80493AD.i.i.preheader ], [ %35, %BB_80493AD.i.i ], [ %35, %BB_8049385.i.i ]
  %30 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i = add i32 %30, %.lcssa.i
  br label %Func_substring.exit

BB_8049385.i.i:                                   ; preds = %BB_80493AD.i.i, %BB_80493AD.i.i.preheader
  %31 = phi i8 [ %45, %BB_80493AD.i.i ], [ %41, %BB_80493AD.i.i.preheader ]
  %storemerge24.i159 = phi i32 [ %tmp0_v15.i.i.i, %BB_80493AD.i.i ], [ 0, %BB_80493AD.i.i.preheader ]
  %32 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i = add i32 %32, %storemerge24.i159
  %33 = inttoptr i32 %tmp0_v11.i.i.i to i8*
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %36, align 4
  %tmp0_v15.i.i.i = add i32 %34, 1
  store i32 %tmp0_v15.i.i.i, i32* %36, align 4
  %35 = load i32, i32* %6, align 4
  %.not.i57.i.i = icmp slt i32 %tmp0_v15.i.i.i, %35
  br i1 %.not.i57.i.i, label %BB_80493AD.i.i, label %BB_80493C3.i.i

BB_804937C.i.i:                                   ; preds = %.exit
  %tmp2_v.i38.i.i = add i32 %tmp0_v.i41.i, -196
  %36 = inttoptr i32 %tmp2_v.i38.i.i to i32*
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %.not.i57.i23.i = icmp sgt i32 %37, 0
  br i1 %.not.i57.i23.i, label %BB_80493AD.i.i.preheader, label %BB_80493C3.i.i

BB_80493AD.i.i.preheader:                         ; preds = %BB_804937C.i.i
  %38 = load i32, i32* %16, align 8
  %39 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i157 = add i32 %38, %39
  %40 = inttoptr i32 %tmp0_v6.i47.i.i157 to i8*
  %41 = load i8, i8* %40, align 1
  %.not.i49.i.i158 = icmp eq i8 %41, 0
  br i1 %.not.i49.i.i158, label %BB_80493C3.i.i, label %BB_8049385.i.i

BB_80493AD.i.i:                                   ; preds = %BB_8049385.i.i
  %42 = load i32, i32* %16, align 8
  %tmp0_v3.i44.i.i = add i32 %42, %tmp0_v15.i.i.i
  %43 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i = add i32 %tmp0_v3.i44.i.i, %43
  %44 = inttoptr i32 %tmp0_v6.i47.i.i to i8*
  %45 = load i8, i8* %44, align 1
  %.not.i49.i.i = icmp eq i8 %45, 0
  br i1 %.not.i49.i.i, label %BB_80493C3.i.i, label %BB_8049385.i.i

Func_substring.exit:                              ; preds = %BB_80493C3.i.i, %BB_8049374.i.i
  %tmp0_v3.i.i.sink.i = phi i32 [ %tmp0_v3.i.i.i, %BB_80493C3.i.i ], [ %29, %BB_8049374.i.i ]
  %r_ecx.1.i = phi i32 [ %r_ecx.0.lcssa.i, %BB_80493C3.i.i ], [ %tmp2_v.i40.i, %BB_8049374.i.i ]
  %46 = inttoptr i32 %tmp0_v3.i.i.sink.i to i8*
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %20, align 8
  store i32 3, i32* %6, align 4
  store i32 4, i32* %16, align 8
  %tmp2_v2.i14.i = add i32 %48, -142
  store i32 %tmp2_v2.i14.i, i32* %17, align 4
  %tmp2_v4.i.i = add i32 %48, -133
  store i32 %tmp2_v4.i.i, i32* %18, align 16
  store i32 134517347, i32* %19, align 4
  store i32 %48, i32* %20, align 8
  store i32 %47, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %49 = load i32, i32* %18, align 16
  store i32 %49, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i8 = load i32, i32* %24, align 16
  %50 = tail call i32 @strlen(i32 %arg.i.i.i8)
  %51 = load i32, i32* %16, align 8
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %BB_804937C.i.i24, label %BB_8049374.i.i11

BB_8049374.i.i11:                                 ; preds = %Func_substring.exit
  %53 = load i32, i32* %17, align 4
  br label %Func_substring.exit38

BB_80493C3.i.i15:                                 ; preds = %BB_80493AD.i.i30, %BB_80493AD.i.i30.preheader, %BB_804937C.i.i24, %BB_8049385.i.i19
  %r_ecx.0.lcssa.i12 = phi i32 [ %r_ecx.1.i, %BB_804937C.i.i24 ], [ %r_ecx.1.i, %BB_80493AD.i.i30.preheader ], [ %storemerge24.i26165, %BB_80493AD.i.i30 ], [ %storemerge24.i26165, %BB_8049385.i.i19 ]
  %.lcssa.i13 = phi i32 [ %61, %BB_804937C.i.i24 ], [ %61, %BB_80493AD.i.i30.preheader ], [ %59, %BB_80493AD.i.i30 ], [ %59, %BB_8049385.i.i19 ]
  %54 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i14 = add i32 %54, %.lcssa.i13
  br label %Func_substring.exit38

BB_8049385.i.i19:                                 ; preds = %BB_80493AD.i.i30, %BB_80493AD.i.i30.preheader
  %55 = phi i8 [ %69, %BB_80493AD.i.i30 ], [ %65, %BB_80493AD.i.i30.preheader ]
  %storemerge24.i26165 = phi i32 [ %tmp0_v15.i.i.i17, %BB_80493AD.i.i30 ], [ 0, %BB_80493AD.i.i30.preheader ]
  %56 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i16 = add i32 %56, %storemerge24.i26165
  %57 = inttoptr i32 %tmp0_v11.i.i.i16 to i8*
  store i8 %55, i8* %57, align 1
  %58 = load i32, i32* %60, align 4
  %tmp0_v15.i.i.i17 = add i32 %58, 1
  store i32 %tmp0_v15.i.i.i17, i32* %60, align 4
  %59 = load i32, i32* %6, align 4
  %.not.i57.i.i18 = icmp slt i32 %tmp0_v15.i.i.i17, %59
  br i1 %.not.i57.i.i18, label %BB_80493AD.i.i30, label %BB_80493C3.i.i15

BB_804937C.i.i24:                                 ; preds = %Func_substring.exit
  %tmp2_v.i38.i.i20 = add i32 %tmp0_v.i41.i, -196
  %60 = inttoptr i32 %tmp2_v.i38.i.i20 to i32*
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %.not.i57.i23.i22 = icmp sgt i32 %61, 0
  br i1 %.not.i57.i23.i22, label %BB_80493AD.i.i30.preheader, label %BB_80493C3.i.i15

BB_80493AD.i.i30.preheader:                       ; preds = %BB_804937C.i.i24
  %62 = load i32, i32* %16, align 8
  %63 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i28163 = add i32 %62, %63
  %64 = inttoptr i32 %tmp0_v6.i47.i.i28163 to i8*
  %65 = load i8, i8* %64, align 1
  %.not.i49.i.i29164 = icmp eq i8 %65, 0
  br i1 %.not.i49.i.i29164, label %BB_80493C3.i.i15, label %BB_8049385.i.i19

BB_80493AD.i.i30:                                 ; preds = %BB_8049385.i.i19
  %66 = load i32, i32* %16, align 8
  %tmp0_v3.i44.i.i27 = add i32 %66, %tmp0_v15.i.i.i17
  %67 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i28 = add i32 %tmp0_v3.i44.i.i27, %67
  %68 = inttoptr i32 %tmp0_v6.i47.i.i28 to i8*
  %69 = load i8, i8* %68, align 1
  %.not.i49.i.i29 = icmp eq i8 %69, 0
  br i1 %.not.i49.i.i29, label %BB_80493C3.i.i15, label %BB_8049385.i.i19

Func_substring.exit38:                            ; preds = %BB_80493C3.i.i15, %BB_8049374.i.i11
  %tmp0_v3.i.i.sink.i31 = phi i32 [ %tmp0_v3.i.i.i14, %BB_80493C3.i.i15 ], [ %53, %BB_8049374.i.i11 ]
  %r_ecx.1.i32 = phi i32 [ %r_ecx.0.lcssa.i12, %BB_80493C3.i.i15 ], [ %r_ecx.1.i, %BB_8049374.i.i11 ]
  %70 = inttoptr i32 %tmp0_v3.i.i.sink.i31 to i8*
  store i8 0, i8* %70, align 1
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %20, align 8
  store i32 4, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i84.i = add i32 %72, -138
  store i32 %tmp2_v2.i84.i, i32* %17, align 4
  %tmp2_v4.i86.i = add i32 %72, -133
  store i32 %tmp2_v4.i86.i, i32* %18, align 16
  store i32 134517373, i32* %19, align 4
  store i32 %72, i32* %20, align 8
  store i32 %71, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %73 = load i32, i32* %18, align 16
  store i32 %73, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i44 = load i32, i32* %24, align 16
  %74 = tail call i32 @strlen(i32 %arg.i.i.i44)
  %75 = load i32, i32* %16, align 8
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %BB_804937C.i.i60, label %BB_8049374.i.i47

BB_8049374.i.i47:                                 ; preds = %Func_substring.exit38
  %77 = load i32, i32* %17, align 4
  br label %Func_substring.exit74

BB_80493C3.i.i51:                                 ; preds = %BB_80493AD.i.i66, %BB_80493AD.i.i66.preheader, %BB_804937C.i.i60, %BB_8049385.i.i55
  %r_ecx.0.lcssa.i48 = phi i32 [ %r_ecx.1.i32, %BB_804937C.i.i60 ], [ %r_ecx.1.i32, %BB_80493AD.i.i66.preheader ], [ %storemerge24.i62172, %BB_80493AD.i.i66 ], [ %storemerge24.i62172, %BB_8049385.i.i55 ]
  %.lcssa.i49 = phi i32 [ %85, %BB_804937C.i.i60 ], [ %85, %BB_80493AD.i.i66.preheader ], [ %83, %BB_80493AD.i.i66 ], [ %83, %BB_8049385.i.i55 ]
  %78 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i50 = add i32 %78, %.lcssa.i49
  br label %Func_substring.exit74

BB_8049385.i.i55:                                 ; preds = %BB_80493AD.i.i66, %BB_80493AD.i.i66.preheader
  %79 = phi i8 [ %93, %BB_80493AD.i.i66 ], [ %89, %BB_80493AD.i.i66.preheader ]
  %storemerge24.i62172 = phi i32 [ %tmp0_v15.i.i.i53, %BB_80493AD.i.i66 ], [ 0, %BB_80493AD.i.i66.preheader ]
  %80 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i52 = add i32 %80, %storemerge24.i62172
  %81 = inttoptr i32 %tmp0_v11.i.i.i52 to i8*
  store i8 %79, i8* %81, align 1
  %82 = load i32, i32* %84, align 4
  %tmp0_v15.i.i.i53 = add i32 %82, 1
  store i32 %tmp0_v15.i.i.i53, i32* %84, align 4
  %83 = load i32, i32* %6, align 4
  %.not.i57.i.i54 = icmp slt i32 %tmp0_v15.i.i.i53, %83
  br i1 %.not.i57.i.i54, label %BB_80493AD.i.i66, label %BB_80493C3.i.i51

BB_804937C.i.i60:                                 ; preds = %Func_substring.exit38
  %tmp2_v.i38.i.i56 = add i32 %tmp0_v.i41.i, -196
  %84 = inttoptr i32 %tmp2_v.i38.i.i56 to i32*
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %.not.i57.i23.i58 = icmp sgt i32 %85, 0
  br i1 %.not.i57.i23.i58, label %BB_80493AD.i.i66.preheader, label %BB_80493C3.i.i51

BB_80493AD.i.i66.preheader:                       ; preds = %BB_804937C.i.i60
  %86 = load i32, i32* %16, align 8
  %87 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i64170 = add i32 %86, %87
  %88 = inttoptr i32 %tmp0_v6.i47.i.i64170 to i8*
  %89 = load i8, i8* %88, align 1
  %.not.i49.i.i65171 = icmp eq i8 %89, 0
  br i1 %.not.i49.i.i65171, label %BB_80493C3.i.i51, label %BB_8049385.i.i55

BB_80493AD.i.i66:                                 ; preds = %BB_8049385.i.i55
  %90 = load i32, i32* %16, align 8
  %tmp0_v3.i44.i.i63 = add i32 %90, %tmp0_v15.i.i.i53
  %91 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i64 = add i32 %tmp0_v3.i44.i.i63, %91
  %92 = inttoptr i32 %tmp0_v6.i47.i.i64 to i8*
  %93 = load i8, i8* %92, align 1
  %.not.i49.i.i65 = icmp eq i8 %93, 0
  br i1 %.not.i49.i.i65, label %BB_80493C3.i.i51, label %BB_8049385.i.i55

Func_substring.exit74:                            ; preds = %BB_80493C3.i.i51, %BB_8049374.i.i47
  %tmp0_v3.i.i.sink.i67 = phi i32 [ %tmp0_v3.i.i.i50, %BB_80493C3.i.i51 ], [ %77, %BB_8049374.i.i47 ]
  %r_ecx.1.i68 = phi i32 [ %r_ecx.0.lcssa.i48, %BB_80493C3.i.i51 ], [ %r_ecx.1.i32, %BB_8049374.i.i47 ]
  %r_edx.0.i69 = phi i32 [ %.lcssa.i49, %BB_80493C3.i.i51 ], [ %75, %BB_8049374.i.i47 ]
  %94 = inttoptr i32 %tmp0_v3.i.i.sink.i67 to i8*
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 8
  %tmp2_v.i.i = add i32 %96, -146
  store i32 %tmp2_v.i.i, i32* %17, align 4
  %tmp2_v3.i.i = add i32 %95, -8184
  store i32 %tmp2_v3.i.i, i32* %18, align 16
  store i32 134517398, i32* %19, align 4
  %97 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %r_edx.0.i69, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  %tmp2_v.i74.i = add i32 %96, -142
  store i32 %tmp2_v.i74.i, i32* %17, align 4
  %tmp2_v3.i77.i = add i32 %95, -8174
  store i32 %tmp2_v3.i77.i, i32* %18, align 16
  store i32 134517423, i32* %19, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %99, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %tmp2_v.i5.i = add i32 %96, -138
  store i32 %tmp2_v.i5.i, i32* %17, align 4
  %tmp2_v3.i8.i = add i32 %95, -8164
  store i32 %tmp2_v3.i8.i, i32* %18, align 16
  store i32 134517448, i32* %19, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %102, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 5, i32* %6, align 4
  store i32 200, i32* %16, align 8
  %tmp2_v2.i93.i = add i32 %96, -112
  store i32 %tmp2_v2.i93.i, i32* %17, align 4
  %tmp2_v4.i95.i = add i32 %96, -133
  store i32 %tmp2_v4.i95.i, i32* %18, align 16
  store i32 134517474, i32* %19, align 4
  store i32 %96, i32* %20, align 8
  store i32 %95, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %104 = load i32, i32* %18, align 16
  store i32 %104, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i84 = load i32, i32* %24, align 16
  %105 = tail call i32 @strlen(i32 %arg.i.i.i84)
  %106 = load i32, i32* %16, align 8
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %BB_804937C.i.i100, label %BB_8049374.i.i87

BB_8049374.i.i87:                                 ; preds = %Func_substring.exit74
  %108 = load i32, i32* %17, align 4
  br label %Func_substring.exit115

BB_80493C3.i.i91:                                 ; preds = %BB_80493AD.i.i106, %BB_80493AD.i.i106.preheader, %BB_804937C.i.i100, %BB_8049385.i.i95
  %r_ecx.0.lcssa.i88 = phi i32 [ %r_ecx.1.i68, %BB_804937C.i.i100 ], [ %r_ecx.1.i68, %BB_80493AD.i.i106.preheader ], [ %storemerge24.i102179, %BB_80493AD.i.i106 ], [ %storemerge24.i102179, %BB_8049385.i.i95 ]
  %.lcssa.i89 = phi i32 [ %116, %BB_804937C.i.i100 ], [ %116, %BB_80493AD.i.i106.preheader ], [ %114, %BB_80493AD.i.i106 ], [ %114, %BB_8049385.i.i95 ]
  %109 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i90 = add i32 %109, %.lcssa.i89
  br label %Func_substring.exit115

BB_8049385.i.i95:                                 ; preds = %BB_80493AD.i.i106, %BB_80493AD.i.i106.preheader
  %110 = phi i8 [ %124, %BB_80493AD.i.i106 ], [ %120, %BB_80493AD.i.i106.preheader ]
  %storemerge24.i102179 = phi i32 [ %tmp0_v15.i.i.i93, %BB_80493AD.i.i106 ], [ 0, %BB_80493AD.i.i106.preheader ]
  %111 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i92 = add i32 %111, %storemerge24.i102179
  %112 = inttoptr i32 %tmp0_v11.i.i.i92 to i8*
  store i8 %110, i8* %112, align 1
  %113 = load i32, i32* %115, align 4
  %tmp0_v15.i.i.i93 = add i32 %113, 1
  store i32 %tmp0_v15.i.i.i93, i32* %115, align 4
  %114 = load i32, i32* %6, align 4
  %.not.i57.i.i94 = icmp slt i32 %tmp0_v15.i.i.i93, %114
  br i1 %.not.i57.i.i94, label %BB_80493AD.i.i106, label %BB_80493C3.i.i91

BB_804937C.i.i100:                                ; preds = %Func_substring.exit74
  %tmp2_v.i38.i.i96 = add i32 %tmp0_v.i41.i, -196
  %115 = inttoptr i32 %tmp2_v.i38.i.i96 to i32*
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* %6, align 4
  %.not.i57.i23.i98 = icmp sgt i32 %116, 0
  br i1 %.not.i57.i23.i98, label %BB_80493AD.i.i106.preheader, label %BB_80493C3.i.i91

BB_80493AD.i.i106.preheader:                      ; preds = %BB_804937C.i.i100
  %117 = load i32, i32* %16, align 8
  %118 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i104177 = add i32 %117, %118
  %119 = inttoptr i32 %tmp0_v6.i47.i.i104177 to i8*
  %120 = load i8, i8* %119, align 1
  %.not.i49.i.i105178 = icmp eq i8 %120, 0
  br i1 %.not.i49.i.i105178, label %BB_80493C3.i.i91, label %BB_8049385.i.i95

BB_80493AD.i.i106:                                ; preds = %BB_8049385.i.i95
  %121 = load i32, i32* %16, align 8
  %tmp0_v3.i44.i.i103 = add i32 %121, %tmp0_v15.i.i.i93
  %122 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i104 = add i32 %tmp0_v3.i44.i.i103, %122
  %123 = inttoptr i32 %tmp0_v6.i47.i.i104 to i8*
  %124 = load i8, i8* %123, align 1
  %.not.i49.i.i105 = icmp eq i8 %124, 0
  br i1 %.not.i49.i.i105, label %BB_80493C3.i.i91, label %BB_8049385.i.i95

Func_substring.exit115:                           ; preds = %BB_80493C3.i.i91, %BB_8049374.i.i87
  %tmp0_v3.i.i.sink.i107 = phi i32 [ %tmp0_v3.i.i.i90, %BB_80493C3.i.i91 ], [ %108, %BB_8049374.i.i87 ]
  %r_ecx.1.i108 = phi i32 [ %r_ecx.0.lcssa.i88, %BB_80493C3.i.i91 ], [ %r_ecx.1.i68, %BB_8049374.i.i87 ]
  %r_edx.0.i109 = phi i32 [ %.lcssa.i89, %BB_80493C3.i.i91 ], [ %106, %BB_8049374.i.i87 ]
  %125 = inttoptr i32 %tmp0_v3.i.i.sink.i107 to i8*
  store i8 0, i8* %125, align 1
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %20, align 8
  %tmp2_v.i20.i = add i32 %127, -112
  store i32 %tmp2_v.i20.i, i32* %17, align 4
  %tmp2_v3.i23.i = add i32 %126, -8154
  store i32 %tmp2_v3.i23.i, i32* %18, align 16
  store i32 134517496, i32* %19, align 4
  %128 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i108, i32 inreg noundef %r_edx.0.i109, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 100, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i35.i = add i32 %127, -62
  store i32 %tmp2_v2.i35.i, i32* %17, align 4
  %tmp2_v4.i37.i = add i32 %127, -133
  store i32 %tmp2_v4.i37.i, i32* %18, align 16
  store i32 134517519, i32* %19, align 4
  store i32 %127, i32* %20, align 8
  store i32 %126, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %129 = load i32, i32* %18, align 16
  store i32 %129, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i123 = load i32, i32* %24, align 16
  %130 = tail call i32 @strlen(i32 %arg.i.i.i123)
  %131 = load i32, i32* %16, align 8
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %BB_804937C.i.i139, label %BB_8049374.i.i126

BB_8049374.i.i126:                                ; preds = %Func_substring.exit115
  %133 = load i32, i32* %17, align 4
  br label %Func_substring.exit154

BB_80493C3.i.i130:                                ; preds = %BB_80493AD.i.i145, %BB_80493AD.i.i145.preheader, %BB_804937C.i.i139, %BB_8049385.i.i134
  %r_ecx.0.lcssa.i127 = phi i32 [ %r_ecx.1.i108, %BB_804937C.i.i139 ], [ %r_ecx.1.i108, %BB_80493AD.i.i145.preheader ], [ %storemerge24.i141186, %BB_80493AD.i.i145 ], [ %storemerge24.i141186, %BB_8049385.i.i134 ]
  %.lcssa.i128 = phi i32 [ %141, %BB_804937C.i.i139 ], [ %141, %BB_80493AD.i.i145.preheader ], [ %139, %BB_80493AD.i.i145 ], [ %139, %BB_8049385.i.i134 ]
  %134 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i129 = add i32 %134, %.lcssa.i128
  br label %Func_substring.exit154

BB_8049385.i.i134:                                ; preds = %BB_80493AD.i.i145, %BB_80493AD.i.i145.preheader
  %135 = phi i8 [ %149, %BB_80493AD.i.i145 ], [ %145, %BB_80493AD.i.i145.preheader ]
  %storemerge24.i141186 = phi i32 [ %tmp0_v15.i.i.i132, %BB_80493AD.i.i145 ], [ 0, %BB_80493AD.i.i145.preheader ]
  %136 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i131 = add i32 %136, %storemerge24.i141186
  %137 = inttoptr i32 %tmp0_v11.i.i.i131 to i8*
  store i8 %135, i8* %137, align 1
  %138 = load i32, i32* %140, align 4
  %tmp0_v15.i.i.i132 = add i32 %138, 1
  store i32 %tmp0_v15.i.i.i132, i32* %140, align 4
  %139 = load i32, i32* %6, align 4
  %.not.i57.i.i133 = icmp slt i32 %tmp0_v15.i.i.i132, %139
  br i1 %.not.i57.i.i133, label %BB_80493AD.i.i145, label %BB_80493C3.i.i130

BB_804937C.i.i139:                                ; preds = %Func_substring.exit115
  %tmp2_v.i38.i.i135 = add i32 %tmp0_v.i41.i, -196
  %140 = inttoptr i32 %tmp2_v.i38.i.i135 to i32*
  store i32 0, i32* %140, align 4
  %141 = load i32, i32* %6, align 4
  %.not.i57.i23.i137 = icmp sgt i32 %141, 0
  br i1 %.not.i57.i23.i137, label %BB_80493AD.i.i145.preheader, label %BB_80493C3.i.i130

BB_80493AD.i.i145.preheader:                      ; preds = %BB_804937C.i.i139
  %142 = load i32, i32* %16, align 8
  %143 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i143184 = add i32 %142, %143
  %144 = inttoptr i32 %tmp0_v6.i47.i.i143184 to i8*
  %145 = load i8, i8* %144, align 1
  %.not.i49.i.i144185 = icmp eq i8 %145, 0
  br i1 %.not.i49.i.i144185, label %BB_80493C3.i.i130, label %BB_8049385.i.i134

BB_80493AD.i.i145:                                ; preds = %BB_8049385.i.i134
  %146 = load i32, i32* %16, align 8
  %tmp0_v3.i44.i.i142 = add i32 %146, %tmp0_v15.i.i.i132
  %147 = load i32, i32* %18, align 16
  %tmp0_v6.i47.i.i143 = add i32 %tmp0_v3.i44.i.i142, %147
  %148 = inttoptr i32 %tmp0_v6.i47.i.i143 to i8*
  %149 = load i8, i8* %148, align 1
  %.not.i49.i.i144 = icmp eq i8 %149, 0
  br i1 %.not.i49.i.i144, label %BB_80493C3.i.i130, label %BB_8049385.i.i134

Func_substring.exit154:                           ; preds = %BB_80493C3.i.i130, %BB_8049374.i.i126
  %tmp0_v3.i.i.sink.i146 = phi i32 [ %tmp0_v3.i.i.i129, %BB_80493C3.i.i130 ], [ %133, %BB_8049374.i.i126 ]
  %r_ecx.1.i147 = phi i32 [ %r_ecx.0.lcssa.i127, %BB_80493C3.i.i130 ], [ %r_ecx.1.i108, %BB_8049374.i.i126 ]
  %r_edx.0.i148 = phi i32 [ %.lcssa.i128, %BB_80493C3.i.i130 ], [ %131, %BB_8049374.i.i126 ]
  %150 = inttoptr i32 %tmp0_v3.i.i.sink.i146 to i8*
  store i8 0, i8* %150, align 1
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %20, align 8
  %tmp2_v.i52.i = add i32 %152, -62
  store i32 %tmp2_v.i52.i, i32* %17, align 4
  %tmp2_v3.i55.i = add i32 %151, -8141
  store i32 %tmp2_v3.i55.i, i32* %18, align 16
  store i32 134517541, i32* %19, align 4
  %153 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i147, i32 inreg noundef %r_edx.0.i148, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @substringm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
