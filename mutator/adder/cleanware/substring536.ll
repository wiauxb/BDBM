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
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i6.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i6.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -164
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i85.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i89.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i89.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i90.i = add i32 %tmp0_v.i3.i, -141
  %10 = inttoptr i32 %tmp2_v3.i90.i to i32*
  store i32 758132785, i32* %10, align 4
  %tmp2_v4.i91.i = add i32 %tmp0_v.i3.i, -137
  %11 = inttoptr i32 %tmp2_v4.i91.i to i32*
  store i32 758133812, i32* %11, align 4
  %tmp2_v5.i92.i = add i32 %tmp0_v.i3.i, -133
  %12 = inttoptr i32 %tmp2_v5.i92.i to i32*
  store i32 892808752, i32* %12, align 4
  %tmp2_v6.i93.i = add i32 %tmp0_v.i3.i, -129
  %13 = inttoptr i32 %tmp2_v6.i93.i to i32*
  store i32 875769136, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -125
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1093481523, i32* %14, align 4
  %tmp2_v8.i94.i = add i32 %tmp0_v.i3.i, -121
  %15 = inttoptr i32 %tmp2_v8.i94.i to i8*
  store i8 0, i8* %15, align 1
  store i32 3, i32* %6, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -168
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -154
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -172
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v11.i.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i3.i, -176
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i90.i, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -180
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517321, i32* %19, align 4
  %tmp2_v.i21.i.i = add i32 %tmp0_v.i3.i, -184
  %20 = inttoptr i32 %tmp2_v.i21.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %20, align 8
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i3.i, -188
  %21 = inttoptr i32 %tmp2_v1.i23.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -212
  %22 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517592, i32* %22, align 4
  %23 = load i32, i32* %18, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i3.i, -224
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp2_v4.i19.i.i = add i32 %tmp0_v.i3.i, -228
  %25 = inttoptr i32 %tmp2_v4.i19.i.i to i32*
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

BB_8049385.i.i:                                   ; preds = %BB_80493AD.i.i.preheader, %BB_80493AD.i.i
  %33 = phi i8 [ %32, %BB_80493AD.i.i ], [ %45, %BB_80493AD.i.i.preheader ]
  %storemerge24.i159 = phi i32 [ %tmp0_v15.i.i.i, %BB_80493AD.i.i ], [ 0, %BB_80493AD.i.i.preheader ]
  %34 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i = add i32 %34, %storemerge24.i159
  %35 = inttoptr i32 %tmp0_v11.i.i.i to i8*
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %40, align 4
  %tmp0_v15.i.i.i = add i32 %36, 1
  store i32 %tmp0_v15.i.i.i, i32* %40, align 4
  %37 = load i32, i32* %6, align 4
  %.not.i55.i.i = icmp slt i32 %tmp0_v15.i.i.i, %37
  br i1 %.not.i55.i.i, label %BB_80493AD.i.i, label %BB_80493C3.i.i

BB_8049374.i.i:                                   ; preds = %.exit
  %38 = load i32, i32* %17, align 4
  br label %Func_substring.exit

BB_80493C3.i.i:                                   ; preds = %BB_80493AD.i.i.preheader, %BB_804937C.i.i, %BB_8049385.i.i, %BB_80493AD.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i2.i, %BB_804937C.i.i ], [ %tmp2_v.i2.i, %BB_80493AD.i.i.preheader ], [ %storemerge24.i159, %BB_8049385.i.i ], [ %storemerge24.i159, %BB_80493AD.i.i ]
  %.lcssa.i = phi i32 [ %41, %BB_804937C.i.i ], [ %41, %BB_80493AD.i.i.preheader ], [ %37, %BB_8049385.i.i ], [ %37, %BB_80493AD.i.i ]
  %39 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i = add i32 %39, %.lcssa.i
  br label %Func_substring.exit

BB_804937C.i.i:                                   ; preds = %.exit
  %tmp2_v.i58.i.i = add i32 %tmp0_v.i3.i, -196
  %40 = inttoptr i32 %tmp2_v.i58.i.i to i32*
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %.not.i55.i23.i = icmp sgt i32 %41, 0
  br i1 %.not.i55.i23.i, label %BB_80493AD.i.i.preheader, label %BB_80493C3.i.i

BB_80493AD.i.i.preheader:                         ; preds = %BB_804937C.i.i
  %42 = load i32, i32* %16, align 8
  %43 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i157 = add i32 %42, %43
  %44 = inttoptr i32 %tmp0_v6.i.i.i157 to i8*
  %45 = load i8, i8* %44, align 1
  %.not.i.i.i158 = icmp eq i8 %45, 0
  br i1 %.not.i.i.i158, label %BB_80493C3.i.i, label %BB_8049385.i.i

Func_substring.exit:                              ; preds = %BB_80493C3.i.i, %BB_8049374.i.i
  %tmp0_v3.i43.i.sink.i = phi i32 [ %tmp0_v3.i43.i.i, %BB_80493C3.i.i ], [ %38, %BB_8049374.i.i ]
  %r_ecx.1.i = phi i32 [ %r_ecx.0.lcssa.i, %BB_80493C3.i.i ], [ %tmp2_v.i2.i, %BB_8049374.i.i ]
  %46 = inttoptr i32 %tmp0_v3.i43.i.sink.i to i8*
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %20, align 8
  store i32 3, i32* %6, align 4
  store i32 4, i32* %16, align 8
  %tmp2_v2.i72.i = add i32 %48, -142
  store i32 %tmp2_v2.i72.i, i32* %17, align 4
  %tmp2_v4.i74.i = add i32 %48, -133
  store i32 %tmp2_v4.i74.i, i32* %18, align 16
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
  br i1 %52, label %BB_804937C.i.i30, label %BB_8049374.i.i21

BB_80493AD.i.i15:                                 ; preds = %BB_8049385.i.i19
  %53 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i12 = add i32 %53, %tmp0_v15.i.i.i17
  %54 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i13 = add i32 %tmp0_v3.i.i.i12, %54
  %55 = inttoptr i32 %tmp0_v6.i.i.i13 to i8*
  %56 = load i8, i8* %55, align 1
  %.not.i.i.i14 = icmp eq i8 %56, 0
  br i1 %.not.i.i.i14, label %BB_80493C3.i.i25, label %BB_8049385.i.i19

BB_8049385.i.i19:                                 ; preds = %BB_80493AD.i.i15.preheader, %BB_80493AD.i.i15
  %57 = phi i8 [ %56, %BB_80493AD.i.i15 ], [ %69, %BB_80493AD.i.i15.preheader ]
  %storemerge24.i11165 = phi i32 [ %tmp0_v15.i.i.i17, %BB_80493AD.i.i15 ], [ 0, %BB_80493AD.i.i15.preheader ]
  %58 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i16 = add i32 %58, %storemerge24.i11165
  %59 = inttoptr i32 %tmp0_v11.i.i.i16 to i8*
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %64, align 4
  %tmp0_v15.i.i.i17 = add i32 %60, 1
  store i32 %tmp0_v15.i.i.i17, i32* %64, align 4
  %61 = load i32, i32* %6, align 4
  %.not.i55.i.i18 = icmp slt i32 %tmp0_v15.i.i.i17, %61
  br i1 %.not.i55.i.i18, label %BB_80493AD.i.i15, label %BB_80493C3.i.i25

BB_8049374.i.i21:                                 ; preds = %Func_substring.exit
  %62 = load i32, i32* %17, align 4
  br label %Func_substring.exit38

BB_80493C3.i.i25:                                 ; preds = %BB_80493AD.i.i15.preheader, %BB_804937C.i.i30, %BB_8049385.i.i19, %BB_80493AD.i.i15
  %r_ecx.0.lcssa.i22 = phi i32 [ %r_ecx.1.i, %BB_804937C.i.i30 ], [ %r_ecx.1.i, %BB_80493AD.i.i15.preheader ], [ %storemerge24.i11165, %BB_8049385.i.i19 ], [ %storemerge24.i11165, %BB_80493AD.i.i15 ]
  %.lcssa.i23 = phi i32 [ %65, %BB_804937C.i.i30 ], [ %65, %BB_80493AD.i.i15.preheader ], [ %61, %BB_8049385.i.i19 ], [ %61, %BB_80493AD.i.i15 ]
  %63 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i24 = add i32 %63, %.lcssa.i23
  br label %Func_substring.exit38

BB_804937C.i.i30:                                 ; preds = %Func_substring.exit
  %tmp2_v.i58.i.i26 = add i32 %tmp0_v.i3.i, -196
  %64 = inttoptr i32 %tmp2_v.i58.i.i26 to i32*
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %.not.i55.i23.i28 = icmp sgt i32 %65, 0
  br i1 %.not.i55.i23.i28, label %BB_80493AD.i.i15.preheader, label %BB_80493C3.i.i25

BB_80493AD.i.i15.preheader:                       ; preds = %BB_804937C.i.i30
  %66 = load i32, i32* %16, align 8
  %67 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i13163 = add i32 %66, %67
  %68 = inttoptr i32 %tmp0_v6.i.i.i13163 to i8*
  %69 = load i8, i8* %68, align 1
  %.not.i.i.i14164 = icmp eq i8 %69, 0
  br i1 %.not.i.i.i14164, label %BB_80493C3.i.i25, label %BB_8049385.i.i19

Func_substring.exit38:                            ; preds = %BB_80493C3.i.i25, %BB_8049374.i.i21
  %tmp0_v3.i43.i.sink.i31 = phi i32 [ %tmp0_v3.i43.i.i24, %BB_80493C3.i.i25 ], [ %62, %BB_8049374.i.i21 ]
  %r_ecx.1.i32 = phi i32 [ %r_ecx.0.lcssa.i22, %BB_80493C3.i.i25 ], [ %r_ecx.1.i, %BB_8049374.i.i21 ]
  %70 = inttoptr i32 %tmp0_v3.i43.i.sink.i31 to i8*
  store i8 0, i8* %70, align 1
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %20, align 8
  store i32 4, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i45.i = add i32 %72, -138
  store i32 %tmp2_v2.i45.i, i32* %17, align 4
  %tmp2_v4.i47.i = add i32 %72, -133
  store i32 %tmp2_v4.i47.i, i32* %18, align 16
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
  br i1 %76, label %BB_804937C.i.i66, label %BB_8049374.i.i57

BB_80493AD.i.i51:                                 ; preds = %BB_8049385.i.i55
  %77 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i48 = add i32 %77, %tmp0_v15.i.i.i53
  %78 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i49 = add i32 %tmp0_v3.i.i.i48, %78
  %79 = inttoptr i32 %tmp0_v6.i.i.i49 to i8*
  %80 = load i8, i8* %79, align 1
  %.not.i.i.i50 = icmp eq i8 %80, 0
  br i1 %.not.i.i.i50, label %BB_80493C3.i.i61, label %BB_8049385.i.i55

BB_8049385.i.i55:                                 ; preds = %BB_80493AD.i.i51.preheader, %BB_80493AD.i.i51
  %81 = phi i8 [ %80, %BB_80493AD.i.i51 ], [ %93, %BB_80493AD.i.i51.preheader ]
  %storemerge24.i47172 = phi i32 [ %tmp0_v15.i.i.i53, %BB_80493AD.i.i51 ], [ 0, %BB_80493AD.i.i51.preheader ]
  %82 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i52 = add i32 %82, %storemerge24.i47172
  %83 = inttoptr i32 %tmp0_v11.i.i.i52 to i8*
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %88, align 4
  %tmp0_v15.i.i.i53 = add i32 %84, 1
  store i32 %tmp0_v15.i.i.i53, i32* %88, align 4
  %85 = load i32, i32* %6, align 4
  %.not.i55.i.i54 = icmp slt i32 %tmp0_v15.i.i.i53, %85
  br i1 %.not.i55.i.i54, label %BB_80493AD.i.i51, label %BB_80493C3.i.i61

BB_8049374.i.i57:                                 ; preds = %Func_substring.exit38
  %86 = load i32, i32* %17, align 4
  br label %Func_substring.exit74

BB_80493C3.i.i61:                                 ; preds = %BB_80493AD.i.i51.preheader, %BB_804937C.i.i66, %BB_8049385.i.i55, %BB_80493AD.i.i51
  %r_ecx.0.lcssa.i58 = phi i32 [ %r_ecx.1.i32, %BB_804937C.i.i66 ], [ %r_ecx.1.i32, %BB_80493AD.i.i51.preheader ], [ %storemerge24.i47172, %BB_8049385.i.i55 ], [ %storemerge24.i47172, %BB_80493AD.i.i51 ]
  %.lcssa.i59 = phi i32 [ %89, %BB_804937C.i.i66 ], [ %89, %BB_80493AD.i.i51.preheader ], [ %85, %BB_8049385.i.i55 ], [ %85, %BB_80493AD.i.i51 ]
  %87 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i60 = add i32 %87, %.lcssa.i59
  br label %Func_substring.exit74

BB_804937C.i.i66:                                 ; preds = %Func_substring.exit38
  %tmp2_v.i58.i.i62 = add i32 %tmp0_v.i3.i, -196
  %88 = inttoptr i32 %tmp2_v.i58.i.i62 to i32*
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %.not.i55.i23.i64 = icmp sgt i32 %89, 0
  br i1 %.not.i55.i23.i64, label %BB_80493AD.i.i51.preheader, label %BB_80493C3.i.i61

BB_80493AD.i.i51.preheader:                       ; preds = %BB_804937C.i.i66
  %90 = load i32, i32* %16, align 8
  %91 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i49170 = add i32 %90, %91
  %92 = inttoptr i32 %tmp0_v6.i.i.i49170 to i8*
  %93 = load i8, i8* %92, align 1
  %.not.i.i.i50171 = icmp eq i8 %93, 0
  br i1 %.not.i.i.i50171, label %BB_80493C3.i.i61, label %BB_8049385.i.i55

Func_substring.exit74:                            ; preds = %BB_80493C3.i.i61, %BB_8049374.i.i57
  %tmp0_v3.i43.i.sink.i67 = phi i32 [ %tmp0_v3.i43.i.i60, %BB_80493C3.i.i61 ], [ %86, %BB_8049374.i.i57 ]
  %r_ecx.1.i68 = phi i32 [ %r_ecx.0.lcssa.i58, %BB_80493C3.i.i61 ], [ %r_ecx.1.i32, %BB_8049374.i.i57 ]
  %r_edx.0.i69 = phi i32 [ %.lcssa.i59, %BB_80493C3.i.i61 ], [ %75, %BB_8049374.i.i57 ]
  %94 = inttoptr i32 %tmp0_v3.i43.i.sink.i67 to i8*
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 8
  %tmp2_v.i18.i = add i32 %96, -146
  store i32 %tmp2_v.i18.i, i32* %17, align 4
  %tmp2_v3.i21.i = add i32 %95, -8184
  store i32 %tmp2_v3.i21.i, i32* %18, align 16
  store i32 134517398, i32* %19, align 4
  %97 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %r_edx.0.i69, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  %tmp2_v.i53.i = add i32 %96, -142
  store i32 %tmp2_v.i53.i, i32* %17, align 4
  %tmp2_v3.i56.i = add i32 %95, -8174
  store i32 %tmp2_v3.i56.i, i32* %18, align 16
  store i32 134517423, i32* %19, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %99, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %tmp2_v.i62.i = add i32 %96, -138
  store i32 %tmp2_v.i62.i, i32* %17, align 4
  %tmp2_v3.i65.i = add i32 %95, -8164
  store i32 %tmp2_v3.i65.i, i32* %18, align 16
  store i32 134517448, i32* %19, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %102, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 5, i32* %6, align 4
  store i32 200, i32* %16, align 8
  %tmp2_v2.i36.i = add i32 %96, -112
  store i32 %tmp2_v2.i36.i, i32* %17, align 4
  %tmp2_v4.i38.i = add i32 %96, -133
  store i32 %tmp2_v4.i38.i, i32* %18, align 16
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
  br i1 %107, label %BB_804937C.i.i106, label %BB_8049374.i.i97

BB_80493AD.i.i91:                                 ; preds = %BB_8049385.i.i95
  %108 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i88 = add i32 %108, %tmp0_v15.i.i.i93
  %109 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i89 = add i32 %tmp0_v3.i.i.i88, %109
  %110 = inttoptr i32 %tmp0_v6.i.i.i89 to i8*
  %111 = load i8, i8* %110, align 1
  %.not.i.i.i90 = icmp eq i8 %111, 0
  br i1 %.not.i.i.i90, label %BB_80493C3.i.i101, label %BB_8049385.i.i95

BB_8049385.i.i95:                                 ; preds = %BB_80493AD.i.i91.preheader, %BB_80493AD.i.i91
  %112 = phi i8 [ %111, %BB_80493AD.i.i91 ], [ %124, %BB_80493AD.i.i91.preheader ]
  %storemerge24.i87179 = phi i32 [ %tmp0_v15.i.i.i93, %BB_80493AD.i.i91 ], [ 0, %BB_80493AD.i.i91.preheader ]
  %113 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i92 = add i32 %113, %storemerge24.i87179
  %114 = inttoptr i32 %tmp0_v11.i.i.i92 to i8*
  store i8 %112, i8* %114, align 1
  %115 = load i32, i32* %119, align 4
  %tmp0_v15.i.i.i93 = add i32 %115, 1
  store i32 %tmp0_v15.i.i.i93, i32* %119, align 4
  %116 = load i32, i32* %6, align 4
  %.not.i55.i.i94 = icmp slt i32 %tmp0_v15.i.i.i93, %116
  br i1 %.not.i55.i.i94, label %BB_80493AD.i.i91, label %BB_80493C3.i.i101

BB_8049374.i.i97:                                 ; preds = %Func_substring.exit74
  %117 = load i32, i32* %17, align 4
  br label %Func_substring.exit115

BB_80493C3.i.i101:                                ; preds = %BB_80493AD.i.i91.preheader, %BB_804937C.i.i106, %BB_8049385.i.i95, %BB_80493AD.i.i91
  %r_ecx.0.lcssa.i98 = phi i32 [ %r_ecx.1.i68, %BB_804937C.i.i106 ], [ %r_ecx.1.i68, %BB_80493AD.i.i91.preheader ], [ %storemerge24.i87179, %BB_8049385.i.i95 ], [ %storemerge24.i87179, %BB_80493AD.i.i91 ]
  %.lcssa.i99 = phi i32 [ %120, %BB_804937C.i.i106 ], [ %120, %BB_80493AD.i.i91.preheader ], [ %116, %BB_8049385.i.i95 ], [ %116, %BB_80493AD.i.i91 ]
  %118 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i100 = add i32 %118, %.lcssa.i99
  br label %Func_substring.exit115

BB_804937C.i.i106:                                ; preds = %Func_substring.exit74
  %tmp2_v.i58.i.i102 = add i32 %tmp0_v.i3.i, -196
  %119 = inttoptr i32 %tmp2_v.i58.i.i102 to i32*
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* %6, align 4
  %.not.i55.i23.i104 = icmp sgt i32 %120, 0
  br i1 %.not.i55.i23.i104, label %BB_80493AD.i.i91.preheader, label %BB_80493C3.i.i101

BB_80493AD.i.i91.preheader:                       ; preds = %BB_804937C.i.i106
  %121 = load i32, i32* %16, align 8
  %122 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i89177 = add i32 %121, %122
  %123 = inttoptr i32 %tmp0_v6.i.i.i89177 to i8*
  %124 = load i8, i8* %123, align 1
  %.not.i.i.i90178 = icmp eq i8 %124, 0
  br i1 %.not.i.i.i90178, label %BB_80493C3.i.i101, label %BB_8049385.i.i95

Func_substring.exit115:                           ; preds = %BB_80493C3.i.i101, %BB_8049374.i.i97
  %tmp0_v3.i43.i.sink.i107 = phi i32 [ %tmp0_v3.i43.i.i100, %BB_80493C3.i.i101 ], [ %117, %BB_8049374.i.i97 ]
  %r_ecx.1.i108 = phi i32 [ %r_ecx.0.lcssa.i98, %BB_80493C3.i.i101 ], [ %r_ecx.1.i68, %BB_8049374.i.i97 ]
  %r_edx.0.i109 = phi i32 [ %.lcssa.i99, %BB_80493C3.i.i101 ], [ %106, %BB_8049374.i.i97 ]
  %125 = inttoptr i32 %tmp0_v3.i43.i.sink.i107 to i8*
  store i8 0, i8* %125, align 1
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %20, align 8
  %tmp2_v.i100.i = add i32 %127, -112
  store i32 %tmp2_v.i100.i, i32* %17, align 4
  %tmp2_v3.i103.i = add i32 %126, -8154
  store i32 %tmp2_v3.i103.i, i32* %18, align 16
  store i32 134517496, i32* %19, align 4
  %128 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i108, i32 inreg noundef %r_edx.0.i109, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 100, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i27.i = add i32 %127, -62
  store i32 %tmp2_v2.i27.i, i32* %17, align 4
  %tmp2_v4.i29.i = add i32 %127, -133
  store i32 %tmp2_v4.i29.i, i32* %18, align 16
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
  br i1 %132, label %BB_804937C.i.i145, label %BB_8049374.i.i136

BB_80493AD.i.i130:                                ; preds = %BB_8049385.i.i134
  %133 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i127 = add i32 %133, %tmp0_v15.i.i.i132
  %134 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i128 = add i32 %tmp0_v3.i.i.i127, %134
  %135 = inttoptr i32 %tmp0_v6.i.i.i128 to i8*
  %136 = load i8, i8* %135, align 1
  %.not.i.i.i129 = icmp eq i8 %136, 0
  br i1 %.not.i.i.i129, label %BB_80493C3.i.i140, label %BB_8049385.i.i134

BB_8049385.i.i134:                                ; preds = %BB_80493AD.i.i130.preheader, %BB_80493AD.i.i130
  %137 = phi i8 [ %136, %BB_80493AD.i.i130 ], [ %149, %BB_80493AD.i.i130.preheader ]
  %storemerge24.i126186 = phi i32 [ %tmp0_v15.i.i.i132, %BB_80493AD.i.i130 ], [ 0, %BB_80493AD.i.i130.preheader ]
  %138 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i131 = add i32 %138, %storemerge24.i126186
  %139 = inttoptr i32 %tmp0_v11.i.i.i131 to i8*
  store i8 %137, i8* %139, align 1
  %140 = load i32, i32* %144, align 4
  %tmp0_v15.i.i.i132 = add i32 %140, 1
  store i32 %tmp0_v15.i.i.i132, i32* %144, align 4
  %141 = load i32, i32* %6, align 4
  %.not.i55.i.i133 = icmp slt i32 %tmp0_v15.i.i.i132, %141
  br i1 %.not.i55.i.i133, label %BB_80493AD.i.i130, label %BB_80493C3.i.i140

BB_8049374.i.i136:                                ; preds = %Func_substring.exit115
  %142 = load i32, i32* %17, align 4
  br label %Func_substring.exit154

BB_80493C3.i.i140:                                ; preds = %BB_80493AD.i.i130.preheader, %BB_804937C.i.i145, %BB_8049385.i.i134, %BB_80493AD.i.i130
  %r_ecx.0.lcssa.i137 = phi i32 [ %r_ecx.1.i108, %BB_804937C.i.i145 ], [ %r_ecx.1.i108, %BB_80493AD.i.i130.preheader ], [ %storemerge24.i126186, %BB_8049385.i.i134 ], [ %storemerge24.i126186, %BB_80493AD.i.i130 ]
  %.lcssa.i138 = phi i32 [ %145, %BB_804937C.i.i145 ], [ %145, %BB_80493AD.i.i130.preheader ], [ %141, %BB_8049385.i.i134 ], [ %141, %BB_80493AD.i.i130 ]
  %143 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i139 = add i32 %143, %.lcssa.i138
  br label %Func_substring.exit154

BB_804937C.i.i145:                                ; preds = %Func_substring.exit115
  %tmp2_v.i58.i.i141 = add i32 %tmp0_v.i3.i, -196
  %144 = inttoptr i32 %tmp2_v.i58.i.i141 to i32*
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* %6, align 4
  %.not.i55.i23.i143 = icmp sgt i32 %145, 0
  br i1 %.not.i55.i23.i143, label %BB_80493AD.i.i130.preheader, label %BB_80493C3.i.i140

BB_80493AD.i.i130.preheader:                      ; preds = %BB_804937C.i.i145
  %146 = load i32, i32* %16, align 8
  %147 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i128184 = add i32 %146, %147
  %148 = inttoptr i32 %tmp0_v6.i.i.i128184 to i8*
  %149 = load i8, i8* %148, align 1
  %.not.i.i.i129185 = icmp eq i8 %149, 0
  br i1 %.not.i.i.i129185, label %BB_80493C3.i.i140, label %BB_8049385.i.i134

Func_substring.exit154:                           ; preds = %BB_80493C3.i.i140, %BB_8049374.i.i136
  %tmp0_v3.i43.i.sink.i146 = phi i32 [ %tmp0_v3.i43.i.i139, %BB_80493C3.i.i140 ], [ %142, %BB_8049374.i.i136 ]
  %r_ecx.1.i147 = phi i32 [ %r_ecx.0.lcssa.i137, %BB_80493C3.i.i140 ], [ %r_ecx.1.i108, %BB_8049374.i.i136 ]
  %r_edx.0.i148 = phi i32 [ %.lcssa.i138, %BB_80493C3.i.i140 ], [ %131, %BB_8049374.i.i136 ]
  %150 = inttoptr i32 %tmp0_v3.i43.i.sink.i146 to i8*
  store i8 0, i8* %150, align 1
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %20, align 8
  %tmp2_v.i.i = add i32 %152, -62
  store i32 %tmp2_v.i.i, i32* %17, align 4
  %tmp2_v3.i.i = add i32 %151, -8141
  store i32 %tmp2_v3.i.i, i32* %18, align 16
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

  tail call fastcc void @substring536 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack535, i32 0, i32 8092) to i32)) nounwind
