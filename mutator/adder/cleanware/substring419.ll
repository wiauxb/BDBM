; Mutation 419
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
define internal fastcc void @substring419(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i24.i = add i32 %tmp0_v.i23.i, -4
  %2 = inttoptr i32 %tmp2_v3.i24.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i25.i = add i32 %tmp0_v.i23.i, -8
  %3 = inttoptr i32 %tmp2_v4.i25.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i27.i = add i32 %tmp0_v.i23.i, -12
  %4 = inttoptr i32 %tmp2_v5.i27.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i29.i = add i32 %tmp0_v.i23.i, -16
  %5 = inttoptr i32 %tmp2_v6.i29.i to i32*
  store i32 %tmp2_v.i22.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i23.i, -164
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i32.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i36.i = add i32 %tmp0_v.i23.i, -20
  %9 = inttoptr i32 %tmp2_v2.i36.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i37.i = add i32 %tmp0_v.i23.i, -141
  %10 = inttoptr i32 %tmp2_v3.i37.i to i32*
  store i32 758132785, i32* %10, align 4
  %tmp2_v4.i38.i = add i32 %tmp0_v.i23.i, -137
  %11 = inttoptr i32 %tmp2_v4.i38.i to i32*
  store i32 758133812, i32* %11, align 4
  %tmp2_v5.i39.i = add i32 %tmp0_v.i23.i, -133
  %12 = inttoptr i32 %tmp2_v5.i39.i to i32*
  store i32 892808752, i32* %12, align 4
  %tmp2_v6.i40.i = add i32 %tmp0_v.i23.i, -129
  %13 = inttoptr i32 %tmp2_v6.i40.i to i32*
  store i32 875769136, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i23.i, -125
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1093481523, i32* %14, align 4
  %tmp2_v8.i41.i = add i32 %tmp0_v.i23.i, -121
  %15 = inttoptr i32 %tmp2_v8.i41.i to i8*
  store i8 0, i8* %15, align 1
  store i32 3, i32* %6, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i23.i, -168
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i23.i, -154
  %tmp2_v12.i.i = add i32 %tmp0_v.i23.i, -172
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v11.i.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i23.i, -176
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i37.i, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i23.i, -180
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517321, i32* %19, align 4
  %tmp2_v.i52.i.i = add i32 %tmp0_v.i23.i, -184
  %20 = inttoptr i32 %tmp2_v.i52.i.i to i32*
  store i32 %tmp2_v4.i25.i, i32* %20, align 8
  %tmp2_v1.i54.i.i = add i32 %tmp0_v.i23.i, -188
  %21 = inttoptr i32 %tmp2_v1.i54.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i23.i, -212
  %22 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517592, i32* %22, align 4
  %23 = load i32, i32* %18, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i23.i, -224
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp2_v4.i34.i.i = add i32 %tmp0_v.i23.i, -228
  %25 = inttoptr i32 %tmp2_v4.i34.i.i to i32*
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i = load i32, i32* %24, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i.i)
  %27 = load i32, i32* %16, align 8
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %BB_804937C.i.i, label %BB_8049374.i.i

BB_80493AD.i.i:                                   ; preds = %BB_8049385.i.i
  %29 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i = add i32 %29, %tmp0_v15.i.i.i
  %30 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i = add i32 %tmp0_v3.i.i.i, %30
  %31 = inttoptr i32 %tmp0_v6.i.i.i to i8*
  %32 = load i8, i8* %31, align 1
  %.not.i.i.i = icmp eq i8 %32, 0
  br i1 %.not.i.i.i, label %BB_80493C3.i.i, label %BB_8049385.i.i

BB_804937C.i.i:                                   ; preds = %.exit
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i23.i, -196
  %33 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %.not.i25.i23.i = icmp sgt i32 %34, 0
  br i1 %.not.i25.i23.i, label %BB_80493AD.i.i.preheader, label %BB_80493C3.i.i

BB_80493AD.i.i.preheader:                         ; preds = %BB_804937C.i.i
  %35 = load i32, i32* %16, align 8
  %36 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i157 = add i32 %35, %36
  %37 = inttoptr i32 %tmp0_v6.i.i.i157 to i8*
  %38 = load i8, i8* %37, align 1
  %.not.i.i.i158 = icmp eq i8 %38, 0
  br i1 %.not.i.i.i158, label %BB_80493C3.i.i, label %BB_8049385.i.i

BB_8049385.i.i:                                   ; preds = %BB_80493AD.i.i.preheader, %BB_80493AD.i.i
  %39 = phi i8 [ %32, %BB_80493AD.i.i ], [ %38, %BB_80493AD.i.i.preheader ]
  %storemerge24.i159 = phi i32 [ %tmp0_v15.i.i.i, %BB_80493AD.i.i ], [ 0, %BB_80493AD.i.i.preheader ]
  %40 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i = add i32 %40, %storemerge24.i159
  %41 = inttoptr i32 %tmp0_v11.i.i.i to i8*
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %33, align 4
  %tmp0_v15.i.i.i = add i32 %42, 1
  store i32 %tmp0_v15.i.i.i, i32* %33, align 4
  %43 = load i32, i32* %6, align 4
  %.not.i25.i.i = icmp slt i32 %tmp0_v15.i.i.i, %43
  br i1 %.not.i25.i.i, label %BB_80493AD.i.i, label %BB_80493C3.i.i

BB_80493C3.i.i:                                   ; preds = %BB_8049385.i.i, %BB_80493AD.i.i.preheader, %BB_804937C.i.i, %BB_80493AD.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i22.i, %BB_804937C.i.i ], [ %tmp2_v.i22.i, %BB_80493AD.i.i.preheader ], [ %storemerge24.i159, %BB_8049385.i.i ], [ %storemerge24.i159, %BB_80493AD.i.i ]
  %.lcssa.i = phi i32 [ %34, %BB_804937C.i.i ], [ %34, %BB_80493AD.i.i.preheader ], [ %43, %BB_8049385.i.i ], [ %43, %BB_80493AD.i.i ]
  %44 = load i32, i32* %17, align 4
  %tmp0_v3.i40.i.i = add i32 %44, %.lcssa.i
  br label %Func_substring.exit

BB_8049374.i.i:                                   ; preds = %.exit
  %45 = load i32, i32* %17, align 4
  br label %Func_substring.exit

Func_substring.exit:                              ; preds = %BB_8049374.i.i, %BB_80493C3.i.i
  %.sink30.i = phi i32 [ %45, %BB_8049374.i.i ], [ %tmp0_v3.i40.i.i, %BB_80493C3.i.i ]
  %r_ecx.1.i = phi i32 [ %tmp2_v.i22.i, %BB_8049374.i.i ], [ %r_ecx.0.lcssa.i, %BB_80493C3.i.i ]
  %46 = inttoptr i32 %.sink30.i to i8*
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %20, align 8
  store i32 3, i32* %6, align 4
  store i32 4, i32* %16, align 8
  %tmp2_v2.i92.i = add i32 %48, -142
  store i32 %tmp2_v2.i92.i, i32* %17, align 4
  %tmp2_v4.i94.i = add i32 %48, -133
  store i32 %tmp2_v4.i94.i, i32* %18, align 16
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
  br i1 %52, label %BB_804937C.i.i20, label %BB_8049374.i.i30

BB_80493AD.i.i15:                                 ; preds = %BB_8049385.i.i24
  %53 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i12 = add i32 %53, %tmp0_v15.i.i.i22
  %54 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i13 = add i32 %tmp0_v3.i.i.i12, %54
  %55 = inttoptr i32 %tmp0_v6.i.i.i13 to i8*
  %56 = load i8, i8* %55, align 1
  %.not.i.i.i14 = icmp eq i8 %56, 0
  br i1 %.not.i.i.i14, label %BB_80493C3.i.i28, label %BB_8049385.i.i24

BB_804937C.i.i20:                                 ; preds = %Func_substring.exit
  %tmp2_v.i6.i.i16 = add i32 %tmp0_v.i23.i, -196
  %57 = inttoptr i32 %tmp2_v.i6.i.i16 to i32*
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %.not.i25.i23.i18 = icmp sgt i32 %58, 0
  br i1 %.not.i25.i23.i18, label %BB_80493AD.i.i15.preheader, label %BB_80493C3.i.i28

BB_80493AD.i.i15.preheader:                       ; preds = %BB_804937C.i.i20
  %59 = load i32, i32* %16, align 8
  %60 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i13163 = add i32 %59, %60
  %61 = inttoptr i32 %tmp0_v6.i.i.i13163 to i8*
  %62 = load i8, i8* %61, align 1
  %.not.i.i.i14164 = icmp eq i8 %62, 0
  br i1 %.not.i.i.i14164, label %BB_80493C3.i.i28, label %BB_8049385.i.i24

BB_8049385.i.i24:                                 ; preds = %BB_80493AD.i.i15.preheader, %BB_80493AD.i.i15
  %63 = phi i8 [ %56, %BB_80493AD.i.i15 ], [ %62, %BB_80493AD.i.i15.preheader ]
  %storemerge24.i11165 = phi i32 [ %tmp0_v15.i.i.i22, %BB_80493AD.i.i15 ], [ 0, %BB_80493AD.i.i15.preheader ]
  %64 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i21 = add i32 %64, %storemerge24.i11165
  %65 = inttoptr i32 %tmp0_v11.i.i.i21 to i8*
  store i8 %63, i8* %65, align 1
  %66 = load i32, i32* %57, align 4
  %tmp0_v15.i.i.i22 = add i32 %66, 1
  store i32 %tmp0_v15.i.i.i22, i32* %57, align 4
  %67 = load i32, i32* %6, align 4
  %.not.i25.i.i23 = icmp slt i32 %tmp0_v15.i.i.i22, %67
  br i1 %.not.i25.i.i23, label %BB_80493AD.i.i15, label %BB_80493C3.i.i28

BB_80493C3.i.i28:                                 ; preds = %BB_8049385.i.i24, %BB_80493AD.i.i15.preheader, %BB_804937C.i.i20, %BB_80493AD.i.i15
  %r_ecx.0.lcssa.i25 = phi i32 [ %r_ecx.1.i, %BB_804937C.i.i20 ], [ %r_ecx.1.i, %BB_80493AD.i.i15.preheader ], [ %storemerge24.i11165, %BB_8049385.i.i24 ], [ %storemerge24.i11165, %BB_80493AD.i.i15 ]
  %.lcssa.i26 = phi i32 [ %58, %BB_804937C.i.i20 ], [ %58, %BB_80493AD.i.i15.preheader ], [ %67, %BB_8049385.i.i24 ], [ %67, %BB_80493AD.i.i15 ]
  %68 = load i32, i32* %17, align 4
  %tmp0_v3.i40.i.i27 = add i32 %68, %.lcssa.i26
  br label %Func_substring.exit38

BB_8049374.i.i30:                                 ; preds = %Func_substring.exit
  %69 = load i32, i32* %17, align 4
  br label %Func_substring.exit38

Func_substring.exit38:                            ; preds = %BB_8049374.i.i30, %BB_80493C3.i.i28
  %.sink30.i31 = phi i32 [ %69, %BB_8049374.i.i30 ], [ %tmp0_v3.i40.i.i27, %BB_80493C3.i.i28 ]
  %r_ecx.1.i32 = phi i32 [ %r_ecx.1.i, %BB_8049374.i.i30 ], [ %r_ecx.0.lcssa.i25, %BB_80493C3.i.i28 ]
  %70 = inttoptr i32 %.sink30.i31 to i8*
  store i8 0, i8* %70, align 1
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %20, align 8
  store i32 4, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i101.i = add i32 %72, -138
  store i32 %tmp2_v2.i101.i, i32* %17, align 4
  %tmp2_v4.i103.i = add i32 %72, -133
  store i32 %tmp2_v4.i103.i, i32* %18, align 16
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
  br i1 %76, label %BB_804937C.i.i56, label %BB_8049374.i.i66

BB_80493AD.i.i51:                                 ; preds = %BB_8049385.i.i60
  %77 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i48 = add i32 %77, %tmp0_v15.i.i.i58
  %78 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i49 = add i32 %tmp0_v3.i.i.i48, %78
  %79 = inttoptr i32 %tmp0_v6.i.i.i49 to i8*
  %80 = load i8, i8* %79, align 1
  %.not.i.i.i50 = icmp eq i8 %80, 0
  br i1 %.not.i.i.i50, label %BB_80493C3.i.i64, label %BB_8049385.i.i60

BB_804937C.i.i56:                                 ; preds = %Func_substring.exit38
  %tmp2_v.i6.i.i52 = add i32 %tmp0_v.i23.i, -196
  %81 = inttoptr i32 %tmp2_v.i6.i.i52 to i32*
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %.not.i25.i23.i54 = icmp sgt i32 %82, 0
  br i1 %.not.i25.i23.i54, label %BB_80493AD.i.i51.preheader, label %BB_80493C3.i.i64

BB_80493AD.i.i51.preheader:                       ; preds = %BB_804937C.i.i56
  %83 = load i32, i32* %16, align 8
  %84 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i49170 = add i32 %83, %84
  %85 = inttoptr i32 %tmp0_v6.i.i.i49170 to i8*
  %86 = load i8, i8* %85, align 1
  %.not.i.i.i50171 = icmp eq i8 %86, 0
  br i1 %.not.i.i.i50171, label %BB_80493C3.i.i64, label %BB_8049385.i.i60

BB_8049385.i.i60:                                 ; preds = %BB_80493AD.i.i51.preheader, %BB_80493AD.i.i51
  %87 = phi i8 [ %80, %BB_80493AD.i.i51 ], [ %86, %BB_80493AD.i.i51.preheader ]
  %storemerge24.i47172 = phi i32 [ %tmp0_v15.i.i.i58, %BB_80493AD.i.i51 ], [ 0, %BB_80493AD.i.i51.preheader ]
  %88 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i57 = add i32 %88, %storemerge24.i47172
  %89 = inttoptr i32 %tmp0_v11.i.i.i57 to i8*
  store i8 %87, i8* %89, align 1
  %90 = load i32, i32* %81, align 4
  %tmp0_v15.i.i.i58 = add i32 %90, 1
  store i32 %tmp0_v15.i.i.i58, i32* %81, align 4
  %91 = load i32, i32* %6, align 4
  %.not.i25.i.i59 = icmp slt i32 %tmp0_v15.i.i.i58, %91
  br i1 %.not.i25.i.i59, label %BB_80493AD.i.i51, label %BB_80493C3.i.i64

BB_80493C3.i.i64:                                 ; preds = %BB_8049385.i.i60, %BB_80493AD.i.i51.preheader, %BB_804937C.i.i56, %BB_80493AD.i.i51
  %r_ecx.0.lcssa.i61 = phi i32 [ %r_ecx.1.i32, %BB_804937C.i.i56 ], [ %r_ecx.1.i32, %BB_80493AD.i.i51.preheader ], [ %storemerge24.i47172, %BB_8049385.i.i60 ], [ %storemerge24.i47172, %BB_80493AD.i.i51 ]
  %.lcssa.i62 = phi i32 [ %82, %BB_804937C.i.i56 ], [ %82, %BB_80493AD.i.i51.preheader ], [ %91, %BB_8049385.i.i60 ], [ %91, %BB_80493AD.i.i51 ]
  %92 = load i32, i32* %17, align 4
  %tmp0_v3.i40.i.i63 = add i32 %92, %.lcssa.i62
  br label %Func_substring.exit74

BB_8049374.i.i66:                                 ; preds = %Func_substring.exit38
  %93 = load i32, i32* %17, align 4
  br label %Func_substring.exit74

Func_substring.exit74:                            ; preds = %BB_8049374.i.i66, %BB_80493C3.i.i64
  %.sink30.i67 = phi i32 [ %93, %BB_8049374.i.i66 ], [ %tmp0_v3.i40.i.i63, %BB_80493C3.i.i64 ]
  %r_ecx.1.i68 = phi i32 [ %r_ecx.1.i32, %BB_8049374.i.i66 ], [ %r_ecx.0.lcssa.i61, %BB_80493C3.i.i64 ]
  %r_edx.0.i69 = phi i32 [ %75, %BB_8049374.i.i66 ], [ %.lcssa.i62, %BB_80493C3.i.i64 ]
  %94 = inttoptr i32 %.sink30.i67 to i8*
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 8
  %tmp2_v.i4.i = add i32 %96, -146
  store i32 %tmp2_v.i4.i, i32* %17, align 4
  %tmp2_v3.i.i = add i32 %95, -8184
  store i32 %tmp2_v3.i.i, i32* %18, align 16
  store i32 134517398, i32* %19, align 4
  %97 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %r_edx.0.i69, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  %tmp2_v.i55.i = add i32 %96, -142
  store i32 %tmp2_v.i55.i, i32* %17, align 4
  %tmp2_v3.i58.i = add i32 %95, -8174
  store i32 %tmp2_v3.i58.i, i32* %18, align 16
  store i32 134517423, i32* %19, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %99, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %tmp2_v.i64.i = add i32 %96, -138
  store i32 %tmp2_v.i64.i, i32* %17, align 4
  %tmp2_v3.i67.i = add i32 %95, -8164
  store i32 %tmp2_v3.i67.i, i32* %18, align 16
  store i32 134517448, i32* %19, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %102, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 5, i32* %6, align 4
  store i32 200, i32* %16, align 8
  %tmp2_v2.i18.i = add i32 %96, -112
  store i32 %tmp2_v2.i18.i, i32* %17, align 4
  %tmp2_v4.i20.i = add i32 %96, -133
  store i32 %tmp2_v4.i20.i, i32* %18, align 16
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
  br i1 %107, label %BB_804937C.i.i96, label %BB_8049374.i.i106

BB_80493AD.i.i91:                                 ; preds = %BB_8049385.i.i100
  %108 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i88 = add i32 %108, %tmp0_v15.i.i.i98
  %109 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i89 = add i32 %tmp0_v3.i.i.i88, %109
  %110 = inttoptr i32 %tmp0_v6.i.i.i89 to i8*
  %111 = load i8, i8* %110, align 1
  %.not.i.i.i90 = icmp eq i8 %111, 0
  br i1 %.not.i.i.i90, label %BB_80493C3.i.i104, label %BB_8049385.i.i100

BB_804937C.i.i96:                                 ; preds = %Func_substring.exit74
  %tmp2_v.i6.i.i92 = add i32 %tmp0_v.i23.i, -196
  %112 = inttoptr i32 %tmp2_v.i6.i.i92 to i32*
  store i32 0, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %.not.i25.i23.i94 = icmp sgt i32 %113, 0
  br i1 %.not.i25.i23.i94, label %BB_80493AD.i.i91.preheader, label %BB_80493C3.i.i104

BB_80493AD.i.i91.preheader:                       ; preds = %BB_804937C.i.i96
  %114 = load i32, i32* %16, align 8
  %115 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i89177 = add i32 %114, %115
  %116 = inttoptr i32 %tmp0_v6.i.i.i89177 to i8*
  %117 = load i8, i8* %116, align 1
  %.not.i.i.i90178 = icmp eq i8 %117, 0
  br i1 %.not.i.i.i90178, label %BB_80493C3.i.i104, label %BB_8049385.i.i100

BB_8049385.i.i100:                                ; preds = %BB_80493AD.i.i91.preheader, %BB_80493AD.i.i91
  %118 = phi i8 [ %111, %BB_80493AD.i.i91 ], [ %117, %BB_80493AD.i.i91.preheader ]
  %storemerge24.i87179 = phi i32 [ %tmp0_v15.i.i.i98, %BB_80493AD.i.i91 ], [ 0, %BB_80493AD.i.i91.preheader ]
  %119 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i97 = add i32 %119, %storemerge24.i87179
  %120 = inttoptr i32 %tmp0_v11.i.i.i97 to i8*
  store i8 %118, i8* %120, align 1
  %121 = load i32, i32* %112, align 4
  %tmp0_v15.i.i.i98 = add i32 %121, 1
  store i32 %tmp0_v15.i.i.i98, i32* %112, align 4
  %122 = load i32, i32* %6, align 4
  %.not.i25.i.i99 = icmp slt i32 %tmp0_v15.i.i.i98, %122
  br i1 %.not.i25.i.i99, label %BB_80493AD.i.i91, label %BB_80493C3.i.i104

BB_80493C3.i.i104:                                ; preds = %BB_8049385.i.i100, %BB_80493AD.i.i91.preheader, %BB_804937C.i.i96, %BB_80493AD.i.i91
  %r_ecx.0.lcssa.i101 = phi i32 [ %r_ecx.1.i68, %BB_804937C.i.i96 ], [ %r_ecx.1.i68, %BB_80493AD.i.i91.preheader ], [ %storemerge24.i87179, %BB_8049385.i.i100 ], [ %storemerge24.i87179, %BB_80493AD.i.i91 ]
  %.lcssa.i102 = phi i32 [ %113, %BB_804937C.i.i96 ], [ %113, %BB_80493AD.i.i91.preheader ], [ %122, %BB_8049385.i.i100 ], [ %122, %BB_80493AD.i.i91 ]
  %123 = load i32, i32* %17, align 4
  %tmp0_v3.i40.i.i103 = add i32 %123, %.lcssa.i102
  br label %Func_substring.exit115

BB_8049374.i.i106:                                ; preds = %Func_substring.exit74
  %124 = load i32, i32* %17, align 4
  br label %Func_substring.exit115

Func_substring.exit115:                           ; preds = %BB_8049374.i.i106, %BB_80493C3.i.i104
  %.sink30.i107 = phi i32 [ %124, %BB_8049374.i.i106 ], [ %tmp0_v3.i40.i.i103, %BB_80493C3.i.i104 ]
  %r_ecx.1.i108 = phi i32 [ %r_ecx.1.i68, %BB_8049374.i.i106 ], [ %r_ecx.0.lcssa.i101, %BB_80493C3.i.i104 ]
  %r_edx.0.i109 = phi i32 [ %106, %BB_8049374.i.i106 ], [ %.lcssa.i102, %BB_80493C3.i.i104 ]
  %125 = inttoptr i32 %.sink30.i107 to i8*
  store i8 0, i8* %125, align 1
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %20, align 8
  %tmp2_v.i9.i = add i32 %127, -112
  store i32 %tmp2_v.i9.i, i32* %17, align 4
  %tmp2_v3.i12.i = add i32 %126, -8154
  store i32 %tmp2_v3.i12.i, i32* %18, align 16
  store i32 134517496, i32* %19, align 4
  %128 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i108, i32 inreg noundef %r_edx.0.i109, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 100, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i83.i = add i32 %127, -62
  store i32 %tmp2_v2.i83.i, i32* %17, align 4
  %tmp2_v4.i85.i = add i32 %127, -133
  store i32 %tmp2_v4.i85.i, i32* %18, align 16
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
  br i1 %132, label %BB_804937C.i.i135, label %BB_8049374.i.i145

BB_80493AD.i.i130:                                ; preds = %BB_8049385.i.i139
  %133 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i127 = add i32 %133, %tmp0_v15.i.i.i137
  %134 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i128 = add i32 %tmp0_v3.i.i.i127, %134
  %135 = inttoptr i32 %tmp0_v6.i.i.i128 to i8*
  %136 = load i8, i8* %135, align 1
  %.not.i.i.i129 = icmp eq i8 %136, 0
  br i1 %.not.i.i.i129, label %BB_80493C3.i.i143, label %BB_8049385.i.i139

BB_804937C.i.i135:                                ; preds = %Func_substring.exit115
  %tmp2_v.i6.i.i131 = add i32 %tmp0_v.i23.i, -196
  %137 = inttoptr i32 %tmp2_v.i6.i.i131 to i32*
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  %.not.i25.i23.i133 = icmp sgt i32 %138, 0
  br i1 %.not.i25.i23.i133, label %BB_80493AD.i.i130.preheader, label %BB_80493C3.i.i143

BB_80493AD.i.i130.preheader:                      ; preds = %BB_804937C.i.i135
  %139 = load i32, i32* %16, align 8
  %140 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i128184 = add i32 %139, %140
  %141 = inttoptr i32 %tmp0_v6.i.i.i128184 to i8*
  %142 = load i8, i8* %141, align 1
  %.not.i.i.i129185 = icmp eq i8 %142, 0
  br i1 %.not.i.i.i129185, label %BB_80493C3.i.i143, label %BB_8049385.i.i139

BB_8049385.i.i139:                                ; preds = %BB_80493AD.i.i130.preheader, %BB_80493AD.i.i130
  %143 = phi i8 [ %136, %BB_80493AD.i.i130 ], [ %142, %BB_80493AD.i.i130.preheader ]
  %storemerge24.i126186 = phi i32 [ %tmp0_v15.i.i.i137, %BB_80493AD.i.i130 ], [ 0, %BB_80493AD.i.i130.preheader ]
  %144 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i136 = add i32 %144, %storemerge24.i126186
  %145 = inttoptr i32 %tmp0_v11.i.i.i136 to i8*
  store i8 %143, i8* %145, align 1
  %146 = load i32, i32* %137, align 4
  %tmp0_v15.i.i.i137 = add i32 %146, 1
  store i32 %tmp0_v15.i.i.i137, i32* %137, align 4
  %147 = load i32, i32* %6, align 4
  %.not.i25.i.i138 = icmp slt i32 %tmp0_v15.i.i.i137, %147
  br i1 %.not.i25.i.i138, label %BB_80493AD.i.i130, label %BB_80493C3.i.i143

BB_80493C3.i.i143:                                ; preds = %BB_8049385.i.i139, %BB_80493AD.i.i130.preheader, %BB_804937C.i.i135, %BB_80493AD.i.i130
  %r_ecx.0.lcssa.i140 = phi i32 [ %r_ecx.1.i108, %BB_804937C.i.i135 ], [ %r_ecx.1.i108, %BB_80493AD.i.i130.preheader ], [ %storemerge24.i126186, %BB_8049385.i.i139 ], [ %storemerge24.i126186, %BB_80493AD.i.i130 ]
  %.lcssa.i141 = phi i32 [ %138, %BB_804937C.i.i135 ], [ %138, %BB_80493AD.i.i130.preheader ], [ %147, %BB_8049385.i.i139 ], [ %147, %BB_80493AD.i.i130 ]
  %148 = load i32, i32* %17, align 4
  %tmp0_v3.i40.i.i142 = add i32 %148, %.lcssa.i141
  br label %Func_substring.exit154

BB_8049374.i.i145:                                ; preds = %Func_substring.exit115
  %149 = load i32, i32* %17, align 4
  br label %Func_substring.exit154

Func_substring.exit154:                           ; preds = %BB_8049374.i.i145, %BB_80493C3.i.i143
  %.sink30.i146 = phi i32 [ %149, %BB_8049374.i.i145 ], [ %tmp0_v3.i40.i.i142, %BB_80493C3.i.i143 ]
  %r_ecx.1.i147 = phi i32 [ %r_ecx.1.i108, %BB_8049374.i.i145 ], [ %r_ecx.0.lcssa.i140, %BB_80493C3.i.i143 ]
  %r_edx.0.i148 = phi i32 [ %131, %BB_8049374.i.i145 ], [ %.lcssa.i141, %BB_80493C3.i.i143 ]
  %150 = inttoptr i32 %.sink30.i146 to i8*
  store i8 0, i8* %150, align 1
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %20, align 8
  %tmp2_v.i73.i = add i32 %152, -62
  store i32 %tmp2_v.i73.i, i32* %17, align 4
  %tmp2_v3.i76.i = add i32 %151, -8141
  store i32 %tmp2_v3.i76.i, i32* %18, align 16
  store i32 134517541, i32* %19, align 4
  %153 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i147, i32 inreg noundef %r_edx.0.i148, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @substring419(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
