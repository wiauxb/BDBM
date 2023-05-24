; Mutation 536
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack535 = internal global [8092 x i32] zeroinitializer, align 16
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

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @substring536(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i11.i = add i32 %arg_esp, 4
  %tmp0_v.i12.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i13.i = add i32 %tmp0_v.i12.i, -4
  %2 = inttoptr i32 %tmp2_v3.i13.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i12.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i15.i = add i32 %tmp0_v.i12.i, -12
  %4 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i12.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i11.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i12.i, -164
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i41.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i45.i = add i32 %tmp0_v.i12.i, -20
  %9 = inttoptr i32 %tmp2_v2.i45.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i46.i = add i32 %tmp0_v.i12.i, -141
  %10 = inttoptr i32 %tmp2_v3.i46.i to i32*
  store i32 758132785, i32* %10, align 4
  %tmp2_v4.i47.i = add i32 %tmp0_v.i12.i, -137
  %11 = inttoptr i32 %tmp2_v4.i47.i to i32*
  store i32 758133812, i32* %11, align 4
  %tmp2_v5.i48.i = add i32 %tmp0_v.i12.i, -133
  %12 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 892808752, i32* %12, align 4
  %tmp2_v6.i49.i = add i32 %tmp0_v.i12.i, -129
  %13 = inttoptr i32 %tmp2_v6.i49.i to i32*
  store i32 875769136, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i12.i, -125
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1093481523, i32* %14, align 4
  %tmp2_v8.i50.i = add i32 %tmp0_v.i12.i, -121
  %15 = inttoptr i32 %tmp2_v8.i50.i to i8*
  store i8 0, i8* %15, align 1
  store i32 3, i32* %6, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i12.i, -168
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i12.i, -154
  %tmp2_v12.i.i = add i32 %tmp0_v.i12.i, -172
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v11.i.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i12.i, -176
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i46.i, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i12.i, -180
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517321, i32* %19, align 4
  %tmp2_v.i25.i.i = add i32 %tmp0_v.i12.i, -184
  %20 = inttoptr i32 %tmp2_v.i25.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %20, align 8
  %tmp2_v1.i27.i.i = add i32 %tmp0_v.i12.i, -188
  %21 = inttoptr i32 %tmp2_v1.i27.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i12.i, -212
  %22 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517592, i32* %22, align 4
  %23 = load i32, i32* %18, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i12.i, -224
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp2_v4.i46.i.i = add i32 %tmp0_v.i12.i, -228
  %25 = inttoptr i32 %tmp2_v4.i46.i.i to i32*
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i = load i32, i32* %24, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i.i)
  %27 = load i32, i32* %16, align 8
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %BB_804937C.i.i, label %BB_8049374.i.i

BB_80493C3.i.i:                                   ; preds = %BB_80493AD.i.i, %BB_8049385.i.i, %BB_80493AD.i.i.preheader, %BB_804937C.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i11.i, %BB_804937C.i.i ], [ %tmp2_v.i11.i, %BB_80493AD.i.i.preheader ], [ %storemerge24.i159, %BB_80493AD.i.i ], [ %storemerge24.i159, %BB_8049385.i.i ]
  %.lcssa.i = phi i32 [ %31, %BB_804937C.i.i ], [ %31, %BB_80493AD.i.i.preheader ], [ %40, %BB_80493AD.i.i ], [ %40, %BB_8049385.i.i ]
  %29 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i = add i32 %29, %.lcssa.i
  br label %Func_substring.exit

BB_804937C.i.i:                                   ; preds = %.exit
  %tmp2_v.i11.i.i = add i32 %tmp0_v.i12.i, -196
  %30 = inttoptr i32 %tmp2_v.i11.i.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %.not.i.i23.i = icmp sgt i32 %31, 0
  br i1 %.not.i.i23.i, label %BB_80493AD.i.i.preheader, label %BB_80493C3.i.i

BB_80493AD.i.i.preheader:                         ; preds = %BB_804937C.i.i
  %32 = load i32, i32* %16, align 8
  %33 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i157 = add i32 %32, %33
  %34 = inttoptr i32 %tmp0_v6.i55.i.i157 to i8*
  %35 = load i8, i8* %34, align 1
  %.not.i57.i.i158 = icmp eq i8 %35, 0
  br i1 %.not.i57.i.i158, label %BB_80493C3.i.i, label %BB_8049385.i.i

BB_8049385.i.i:                                   ; preds = %BB_80493AD.i.i, %BB_80493AD.i.i.preheader
  %36 = phi i8 [ %45, %BB_80493AD.i.i ], [ %35, %BB_80493AD.i.i.preheader ]
  %storemerge24.i159 = phi i32 [ %tmp0_v15.i.i.i, %BB_80493AD.i.i ], [ 0, %BB_80493AD.i.i.preheader ]
  %37 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i = add i32 %37, %storemerge24.i159
  %38 = inttoptr i32 %tmp0_v11.i.i.i to i8*
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %30, align 4
  %tmp0_v15.i.i.i = add i32 %39, 1
  store i32 %tmp0_v15.i.i.i, i32* %30, align 4
  %40 = load i32, i32* %6, align 4
  %.not.i.i.i = icmp slt i32 %tmp0_v15.i.i.i, %40
  br i1 %.not.i.i.i, label %BB_80493AD.i.i, label %BB_80493C3.i.i

BB_8049374.i.i:                                   ; preds = %.exit
  %41 = load i32, i32* %17, align 4
  br label %Func_substring.exit

BB_80493AD.i.i:                                   ; preds = %BB_8049385.i.i
  %42 = load i32, i32* %16, align 8
  %tmp0_v3.i52.i.i = add i32 %42, %tmp0_v15.i.i.i
  %43 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i = add i32 %tmp0_v3.i52.i.i, %43
  %44 = inttoptr i32 %tmp0_v6.i55.i.i to i8*
  %45 = load i8, i8* %44, align 1
  %.not.i57.i.i = icmp eq i8 %45, 0
  br i1 %.not.i57.i.i, label %BB_80493C3.i.i, label %BB_8049385.i.i

Func_substring.exit:                              ; preds = %BB_8049374.i.i, %BB_80493C3.i.i
  %.sink30.i = phi i32 [ %41, %BB_8049374.i.i ], [ %tmp0_v3.i.i.i, %BB_80493C3.i.i ]
  %r_ecx.1.i = phi i32 [ %tmp2_v.i11.i, %BB_8049374.i.i ], [ %r_ecx.0.lcssa.i, %BB_80493C3.i.i ]
  %46 = inttoptr i32 %.sink30.i to i8*
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %20, align 8
  store i32 3, i32* %6, align 4
  store i32 4, i32* %16, align 8
  %tmp2_v2.i93.i = add i32 %48, -142
  store i32 %tmp2_v2.i93.i, i32* %17, align 4
  %tmp2_v4.i95.i = add i32 %48, -133
  store i32 %tmp2_v4.i95.i, i32* %18, align 16
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
  br i1 %52, label %BB_804937C.i.i18, label %BB_8049374.i.i24

BB_80493C3.i.i13:                                 ; preds = %BB_80493AD.i.i30, %BB_8049385.i.i22, %BB_80493AD.i.i30.preheader, %BB_804937C.i.i18
  %r_ecx.0.lcssa.i10 = phi i32 [ %r_ecx.1.i, %BB_804937C.i.i18 ], [ %r_ecx.1.i, %BB_80493AD.i.i30.preheader ], [ %storemerge24.i26165, %BB_80493AD.i.i30 ], [ %storemerge24.i26165, %BB_8049385.i.i22 ]
  %.lcssa.i11 = phi i32 [ %55, %BB_804937C.i.i18 ], [ %55, %BB_80493AD.i.i30.preheader ], [ %64, %BB_80493AD.i.i30 ], [ %64, %BB_8049385.i.i22 ]
  %53 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i12 = add i32 %53, %.lcssa.i11
  br label %Func_substring.exit38

BB_804937C.i.i18:                                 ; preds = %Func_substring.exit
  %tmp2_v.i11.i.i14 = add i32 %tmp0_v.i12.i, -196
  %54 = inttoptr i32 %tmp2_v.i11.i.i14 to i32*
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %.not.i.i23.i16 = icmp sgt i32 %55, 0
  br i1 %.not.i.i23.i16, label %BB_80493AD.i.i30.preheader, label %BB_80493C3.i.i13

BB_80493AD.i.i30.preheader:                       ; preds = %BB_804937C.i.i18
  %56 = load i32, i32* %16, align 8
  %57 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i28163 = add i32 %56, %57
  %58 = inttoptr i32 %tmp0_v6.i55.i.i28163 to i8*
  %59 = load i8, i8* %58, align 1
  %.not.i57.i.i29164 = icmp eq i8 %59, 0
  br i1 %.not.i57.i.i29164, label %BB_80493C3.i.i13, label %BB_8049385.i.i22

BB_8049385.i.i22:                                 ; preds = %BB_80493AD.i.i30, %BB_80493AD.i.i30.preheader
  %60 = phi i8 [ %69, %BB_80493AD.i.i30 ], [ %59, %BB_80493AD.i.i30.preheader ]
  %storemerge24.i26165 = phi i32 [ %tmp0_v15.i.i.i20, %BB_80493AD.i.i30 ], [ 0, %BB_80493AD.i.i30.preheader ]
  %61 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i19 = add i32 %61, %storemerge24.i26165
  %62 = inttoptr i32 %tmp0_v11.i.i.i19 to i8*
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %54, align 4
  %tmp0_v15.i.i.i20 = add i32 %63, 1
  store i32 %tmp0_v15.i.i.i20, i32* %54, align 4
  %64 = load i32, i32* %6, align 4
  %.not.i.i.i21 = icmp slt i32 %tmp0_v15.i.i.i20, %64
  br i1 %.not.i.i.i21, label %BB_80493AD.i.i30, label %BB_80493C3.i.i13

BB_8049374.i.i24:                                 ; preds = %Func_substring.exit
  %65 = load i32, i32* %17, align 4
  br label %Func_substring.exit38

BB_80493AD.i.i30:                                 ; preds = %BB_8049385.i.i22
  %66 = load i32, i32* %16, align 8
  %tmp0_v3.i52.i.i27 = add i32 %66, %tmp0_v15.i.i.i20
  %67 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i28 = add i32 %tmp0_v3.i52.i.i27, %67
  %68 = inttoptr i32 %tmp0_v6.i55.i.i28 to i8*
  %69 = load i8, i8* %68, align 1
  %.not.i57.i.i29 = icmp eq i8 %69, 0
  br i1 %.not.i57.i.i29, label %BB_80493C3.i.i13, label %BB_8049385.i.i22

Func_substring.exit38:                            ; preds = %BB_8049374.i.i24, %BB_80493C3.i.i13
  %.sink30.i31 = phi i32 [ %65, %BB_8049374.i.i24 ], [ %tmp0_v3.i.i.i12, %BB_80493C3.i.i13 ]
  %r_ecx.1.i33 = phi i32 [ %r_ecx.1.i, %BB_8049374.i.i24 ], [ %r_ecx.0.lcssa.i10, %BB_80493C3.i.i13 ]
  %70 = inttoptr i32 %.sink30.i31 to i8*
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
  br i1 %76, label %BB_804937C.i.i54, label %BB_8049374.i.i60

BB_80493C3.i.i49:                                 ; preds = %BB_80493AD.i.i66, %BB_8049385.i.i58, %BB_80493AD.i.i66.preheader, %BB_804937C.i.i54
  %r_ecx.0.lcssa.i46 = phi i32 [ %r_ecx.1.i33, %BB_804937C.i.i54 ], [ %r_ecx.1.i33, %BB_80493AD.i.i66.preheader ], [ %storemerge24.i62172, %BB_80493AD.i.i66 ], [ %storemerge24.i62172, %BB_8049385.i.i58 ]
  %.lcssa.i47 = phi i32 [ %79, %BB_804937C.i.i54 ], [ %79, %BB_80493AD.i.i66.preheader ], [ %88, %BB_80493AD.i.i66 ], [ %88, %BB_8049385.i.i58 ]
  %77 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i48 = add i32 %77, %.lcssa.i47
  br label %Func_substring.exit74

BB_804937C.i.i54:                                 ; preds = %Func_substring.exit38
  %tmp2_v.i11.i.i50 = add i32 %tmp0_v.i12.i, -196
  %78 = inttoptr i32 %tmp2_v.i11.i.i50 to i32*
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %.not.i.i23.i52 = icmp sgt i32 %79, 0
  br i1 %.not.i.i23.i52, label %BB_80493AD.i.i66.preheader, label %BB_80493C3.i.i49

BB_80493AD.i.i66.preheader:                       ; preds = %BB_804937C.i.i54
  %80 = load i32, i32* %16, align 8
  %81 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i64170 = add i32 %80, %81
  %82 = inttoptr i32 %tmp0_v6.i55.i.i64170 to i8*
  %83 = load i8, i8* %82, align 1
  %.not.i57.i.i65171 = icmp eq i8 %83, 0
  br i1 %.not.i57.i.i65171, label %BB_80493C3.i.i49, label %BB_8049385.i.i58

BB_8049385.i.i58:                                 ; preds = %BB_80493AD.i.i66, %BB_80493AD.i.i66.preheader
  %84 = phi i8 [ %93, %BB_80493AD.i.i66 ], [ %83, %BB_80493AD.i.i66.preheader ]
  %storemerge24.i62172 = phi i32 [ %tmp0_v15.i.i.i56, %BB_80493AD.i.i66 ], [ 0, %BB_80493AD.i.i66.preheader ]
  %85 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i55 = add i32 %85, %storemerge24.i62172
  %86 = inttoptr i32 %tmp0_v11.i.i.i55 to i8*
  store i8 %84, i8* %86, align 1
  %87 = load i32, i32* %78, align 4
  %tmp0_v15.i.i.i56 = add i32 %87, 1
  store i32 %tmp0_v15.i.i.i56, i32* %78, align 4
  %88 = load i32, i32* %6, align 4
  %.not.i.i.i57 = icmp slt i32 %tmp0_v15.i.i.i56, %88
  br i1 %.not.i.i.i57, label %BB_80493AD.i.i66, label %BB_80493C3.i.i49

BB_8049374.i.i60:                                 ; preds = %Func_substring.exit38
  %89 = load i32, i32* %17, align 4
  br label %Func_substring.exit74

BB_80493AD.i.i66:                                 ; preds = %BB_8049385.i.i58
  %90 = load i32, i32* %16, align 8
  %tmp0_v3.i52.i.i63 = add i32 %90, %tmp0_v15.i.i.i56
  %91 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i64 = add i32 %tmp0_v3.i52.i.i63, %91
  %92 = inttoptr i32 %tmp0_v6.i55.i.i64 to i8*
  %93 = load i8, i8* %92, align 1
  %.not.i57.i.i65 = icmp eq i8 %93, 0
  br i1 %.not.i57.i.i65, label %BB_80493C3.i.i49, label %BB_8049385.i.i58

Func_substring.exit74:                            ; preds = %BB_8049374.i.i60, %BB_80493C3.i.i49
  %.sink30.i67 = phi i32 [ %89, %BB_8049374.i.i60 ], [ %tmp0_v3.i.i.i48, %BB_80493C3.i.i49 ]
  %r_edx.0.i68 = phi i32 [ %75, %BB_8049374.i.i60 ], [ %.lcssa.i47, %BB_80493C3.i.i49 ]
  %r_ecx.1.i69 = phi i32 [ %r_ecx.1.i33, %BB_8049374.i.i60 ], [ %r_ecx.0.lcssa.i46, %BB_80493C3.i.i49 ]
  %94 = inttoptr i32 %.sink30.i67 to i8*
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 8
  %tmp2_v.i5.i = add i32 %96, -146
  store i32 %tmp2_v.i5.i, i32* %17, align 4
  %tmp2_v3.i8.i = add i32 %95, -8184
  store i32 %tmp2_v3.i8.i, i32* %18, align 16
  store i32 134517398, i32* %19, align 4
  %97 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i69, i32 inreg noundef %r_edx.0.i68, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  %tmp2_v.i65.i = add i32 %96, -142
  store i32 %tmp2_v.i65.i, i32* %17, align 4
  %tmp2_v3.i68.i = add i32 %95, -8174
  store i32 %tmp2_v3.i68.i, i32* %18, align 16
  store i32 134517423, i32* %19, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i69, i32 inreg noundef %99, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %tmp2_v.i.i = add i32 %96, -138
  store i32 %tmp2_v.i.i, i32* %17, align 4
  %tmp2_v3.i.i = add i32 %95, -8164
  store i32 %tmp2_v3.i.i, i32* %18, align 16
  store i32 134517448, i32* %19, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i69, i32 inreg noundef %102, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 5, i32* %6, align 4
  store i32 200, i32* %16, align 8
  %tmp2_v2.i35.i = add i32 %96, -112
  store i32 %tmp2_v2.i35.i, i32* %17, align 4
  %tmp2_v4.i37.i = add i32 %96, -133
  store i32 %tmp2_v4.i37.i, i32* %18, align 16
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
  br i1 %107, label %BB_804937C.i.i94, label %BB_8049374.i.i100

BB_80493C3.i.i89:                                 ; preds = %BB_80493AD.i.i106, %BB_8049385.i.i98, %BB_80493AD.i.i106.preheader, %BB_804937C.i.i94
  %r_ecx.0.lcssa.i86 = phi i32 [ %r_ecx.1.i69, %BB_804937C.i.i94 ], [ %r_ecx.1.i69, %BB_80493AD.i.i106.preheader ], [ %storemerge24.i102179, %BB_80493AD.i.i106 ], [ %storemerge24.i102179, %BB_8049385.i.i98 ]
  %.lcssa.i87 = phi i32 [ %110, %BB_804937C.i.i94 ], [ %110, %BB_80493AD.i.i106.preheader ], [ %119, %BB_80493AD.i.i106 ], [ %119, %BB_8049385.i.i98 ]
  %108 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i88 = add i32 %108, %.lcssa.i87
  br label %Func_substring.exit115

BB_804937C.i.i94:                                 ; preds = %Func_substring.exit74
  %tmp2_v.i11.i.i90 = add i32 %tmp0_v.i12.i, -196
  %109 = inttoptr i32 %tmp2_v.i11.i.i90 to i32*
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %.not.i.i23.i92 = icmp sgt i32 %110, 0
  br i1 %.not.i.i23.i92, label %BB_80493AD.i.i106.preheader, label %BB_80493C3.i.i89

BB_80493AD.i.i106.preheader:                      ; preds = %BB_804937C.i.i94
  %111 = load i32, i32* %16, align 8
  %112 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i104177 = add i32 %111, %112
  %113 = inttoptr i32 %tmp0_v6.i55.i.i104177 to i8*
  %114 = load i8, i8* %113, align 1
  %.not.i57.i.i105178 = icmp eq i8 %114, 0
  br i1 %.not.i57.i.i105178, label %BB_80493C3.i.i89, label %BB_8049385.i.i98

BB_8049385.i.i98:                                 ; preds = %BB_80493AD.i.i106, %BB_80493AD.i.i106.preheader
  %115 = phi i8 [ %124, %BB_80493AD.i.i106 ], [ %114, %BB_80493AD.i.i106.preheader ]
  %storemerge24.i102179 = phi i32 [ %tmp0_v15.i.i.i96, %BB_80493AD.i.i106 ], [ 0, %BB_80493AD.i.i106.preheader ]
  %116 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i95 = add i32 %116, %storemerge24.i102179
  %117 = inttoptr i32 %tmp0_v11.i.i.i95 to i8*
  store i8 %115, i8* %117, align 1
  %118 = load i32, i32* %109, align 4
  %tmp0_v15.i.i.i96 = add i32 %118, 1
  store i32 %tmp0_v15.i.i.i96, i32* %109, align 4
  %119 = load i32, i32* %6, align 4
  %.not.i.i.i97 = icmp slt i32 %tmp0_v15.i.i.i96, %119
  br i1 %.not.i.i.i97, label %BB_80493AD.i.i106, label %BB_80493C3.i.i89

BB_8049374.i.i100:                                ; preds = %Func_substring.exit74
  %120 = load i32, i32* %17, align 4
  br label %Func_substring.exit115

BB_80493AD.i.i106:                                ; preds = %BB_8049385.i.i98
  %121 = load i32, i32* %16, align 8
  %tmp0_v3.i52.i.i103 = add i32 %121, %tmp0_v15.i.i.i96
  %122 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i104 = add i32 %tmp0_v3.i52.i.i103, %122
  %123 = inttoptr i32 %tmp0_v6.i55.i.i104 to i8*
  %124 = load i8, i8* %123, align 1
  %.not.i57.i.i105 = icmp eq i8 %124, 0
  br i1 %.not.i57.i.i105, label %BB_80493C3.i.i89, label %BB_8049385.i.i98

Func_substring.exit115:                           ; preds = %BB_8049374.i.i100, %BB_80493C3.i.i89
  %.sink30.i107 = phi i32 [ %120, %BB_8049374.i.i100 ], [ %tmp0_v3.i.i.i88, %BB_80493C3.i.i89 ]
  %r_edx.0.i108 = phi i32 [ %106, %BB_8049374.i.i100 ], [ %.lcssa.i87, %BB_80493C3.i.i89 ]
  %r_ecx.1.i109 = phi i32 [ %r_ecx.1.i69, %BB_8049374.i.i100 ], [ %r_ecx.0.lcssa.i86, %BB_80493C3.i.i89 ]
  %125 = inttoptr i32 %.sink30.i107 to i8*
  store i8 0, i8* %125, align 1
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %20, align 8
  %tmp2_v.i21.i = add i32 %127, -112
  store i32 %tmp2_v.i21.i, i32* %17, align 4
  %tmp2_v3.i24.i = add i32 %126, -8154
  store i32 %tmp2_v3.i24.i, i32* %18, align 16
  store i32 134517496, i32* %19, align 4
  %128 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i109, i32 inreg noundef %r_edx.0.i108, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 100, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i57.i = add i32 %127, -62
  store i32 %tmp2_v2.i57.i, i32* %17, align 4
  %tmp2_v4.i59.i = add i32 %127, -133
  store i32 %tmp2_v4.i59.i, i32* %18, align 16
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
  br i1 %132, label %BB_804937C.i.i133, label %BB_8049374.i.i139

BB_80493C3.i.i128:                                ; preds = %BB_80493AD.i.i145, %BB_8049385.i.i137, %BB_80493AD.i.i145.preheader, %BB_804937C.i.i133
  %r_ecx.0.lcssa.i125 = phi i32 [ %r_ecx.1.i109, %BB_804937C.i.i133 ], [ %r_ecx.1.i109, %BB_80493AD.i.i145.preheader ], [ %storemerge24.i141186, %BB_80493AD.i.i145 ], [ %storemerge24.i141186, %BB_8049385.i.i137 ]
  %.lcssa.i126 = phi i32 [ %135, %BB_804937C.i.i133 ], [ %135, %BB_80493AD.i.i145.preheader ], [ %144, %BB_80493AD.i.i145 ], [ %144, %BB_8049385.i.i137 ]
  %133 = load i32, i32* %17, align 4
  %tmp0_v3.i.i.i127 = add i32 %133, %.lcssa.i126
  br label %Func_substring.exit154

BB_804937C.i.i133:                                ; preds = %Func_substring.exit115
  %tmp2_v.i11.i.i129 = add i32 %tmp0_v.i12.i, -196
  %134 = inttoptr i32 %tmp2_v.i11.i.i129 to i32*
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* %6, align 4
  %.not.i.i23.i131 = icmp sgt i32 %135, 0
  br i1 %.not.i.i23.i131, label %BB_80493AD.i.i145.preheader, label %BB_80493C3.i.i128

BB_80493AD.i.i145.preheader:                      ; preds = %BB_804937C.i.i133
  %136 = load i32, i32* %16, align 8
  %137 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i143184 = add i32 %136, %137
  %138 = inttoptr i32 %tmp0_v6.i55.i.i143184 to i8*
  %139 = load i8, i8* %138, align 1
  %.not.i57.i.i144185 = icmp eq i8 %139, 0
  br i1 %.not.i57.i.i144185, label %BB_80493C3.i.i128, label %BB_8049385.i.i137

BB_8049385.i.i137:                                ; preds = %BB_80493AD.i.i145, %BB_80493AD.i.i145.preheader
  %140 = phi i8 [ %149, %BB_80493AD.i.i145 ], [ %139, %BB_80493AD.i.i145.preheader ]
  %storemerge24.i141186 = phi i32 [ %tmp0_v15.i.i.i135, %BB_80493AD.i.i145 ], [ 0, %BB_80493AD.i.i145.preheader ]
  %141 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i134 = add i32 %141, %storemerge24.i141186
  %142 = inttoptr i32 %tmp0_v11.i.i.i134 to i8*
  store i8 %140, i8* %142, align 1
  %143 = load i32, i32* %134, align 4
  %tmp0_v15.i.i.i135 = add i32 %143, 1
  store i32 %tmp0_v15.i.i.i135, i32* %134, align 4
  %144 = load i32, i32* %6, align 4
  %.not.i.i.i136 = icmp slt i32 %tmp0_v15.i.i.i135, %144
  br i1 %.not.i.i.i136, label %BB_80493AD.i.i145, label %BB_80493C3.i.i128

BB_8049374.i.i139:                                ; preds = %Func_substring.exit115
  %145 = load i32, i32* %17, align 4
  br label %Func_substring.exit154

BB_80493AD.i.i145:                                ; preds = %BB_8049385.i.i137
  %146 = load i32, i32* %16, align 8
  %tmp0_v3.i52.i.i142 = add i32 %146, %tmp0_v15.i.i.i135
  %147 = load i32, i32* %18, align 16
  %tmp0_v6.i55.i.i143 = add i32 %tmp0_v3.i52.i.i142, %147
  %148 = inttoptr i32 %tmp0_v6.i55.i.i143 to i8*
  %149 = load i8, i8* %148, align 1
  %.not.i57.i.i144 = icmp eq i8 %149, 0
  br i1 %.not.i57.i.i144, label %BB_80493C3.i.i128, label %BB_8049385.i.i137

Func_substring.exit154:                           ; preds = %BB_8049374.i.i139, %BB_80493C3.i.i128
  %.sink30.i146 = phi i32 [ %145, %BB_8049374.i.i139 ], [ %tmp0_v3.i.i.i127, %BB_80493C3.i.i128 ]
  %r_edx.0.i147 = phi i32 [ %131, %BB_8049374.i.i139 ], [ %.lcssa.i126, %BB_80493C3.i.i128 ]
  %r_ecx.1.i148 = phi i32 [ %r_ecx.1.i109, %BB_8049374.i.i139 ], [ %r_ecx.0.lcssa.i125, %BB_80493C3.i.i128 ]
  %150 = inttoptr i32 %.sink30.i146 to i8*
  store i8 0, i8* %150, align 1
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %20, align 8
  %tmp2_v.i74.i = add i32 %152, -62
  store i32 %tmp2_v.i74.i, i32* %17, align 4
  %tmp2_v3.i77.i = add i32 %151, -8141
  store i32 %tmp2_v3.i77.i, i32* %18, align 16
  store i32 134517541, i32* %19, align 4
  %153 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i148, i32 inreg noundef %r_edx.0.i147, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @substring536 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack535, i32 0, i32 8092) to i32)) nounwind
