; Mutation 357
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack356 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @toupper(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @convert_vowels_uppercase357(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp2_v.i16.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i16.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i19.i = add i32 %tmp0_v.i3.i, -52
  %9 = inttoptr i32 %tmp2_v2.i19.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i20.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i22.i = add i32 %tmp0_v.i3.i, -20
  %12 = inttoptr i32 %tmp2_v5.i22.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i23.i = add i32 %tmp0_v.i3.i, -46
  %13 = inttoptr i32 %tmp2_v6.i23.i to i32*
  store i32 661939532, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -42
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1634541683, i32* %14, align 4
  %tmp2_v8.i24.i = add i32 %tmp0_v.i3.i, -38
  %15 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 1629513067, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -34
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936028704, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -30
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1953702004, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -26
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1735289202, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -22
  %19 = inttoptr i32 %tmp2_v12.i.i to i16*
  store i16 46, i16* %19, align 2
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v6.i23.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i3.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517382, i32* %21, align 4
  %tmp2_v.i29.i.i = add i32 %tmp0_v.i3.i, -88
  %22 = inttoptr i32 %tmp2_v.i29.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %22, align 8
  %tmp2_v1.i31.i.i = add i32 %tmp0_v.i3.i, -92
  %23 = inttoptr i32 %tmp2_v1.i31.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i34.i.i = add i32 %tmp0_v.i3.i, -116
  %24 = inttoptr i32 %tmp2_v2.i34.i.i to i32*
  store i32 134517455, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i3.i, -128
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i3.i, -132
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517472, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i3.i, -100
  %29 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i3.i, -104
  %30 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %29, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492F2.i.i, label %Func_convert_vowels.exit

BB_8049365.i.i:                                   ; preds = %BB_804931A.i.i, %BB_804931A.i.i, %BB_804931A.i.i
  store i32 %tmp0_v6.i19.i.i, i32* %26, align 16
  store i32 134517628, i32* %27, align 4
  %arg.i.i6.i = load i32, i32* %26, align 16
  %33 = tail call i32 @toupper(i32 %arg.i.i6.i)
  %34 = load i32, i32* %30, align 8
  %35 = load i32, i32* %20, align 16
  %tmp0_v4.i90.i.i = add i32 %35, %34
  %36 = trunc i32 %33 to i8
  %37 = inttoptr i32 %tmp0_v4.i90.i.i to i8*
  store i8 %36, i8* %37, align 1
  %.pre.i = load i32, i32* %30, align 8
  br label %BB_804938D.i.i

BB_80492F2.i.i:                                   ; preds = %BB_804938D.i.i, %.exit
  store i32 134517495, i32* %24, align 4
  %38 = tail call i32 @__ctype_b_loc()
  %39 = inttoptr i32 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %30, align 8
  %42 = load i32, i32* %20, align 16
  %tmp0_v4.i17.i.i = add i32 %42, %41
  %43 = inttoptr i32 %tmp0_v4.i17.i.i to i8*
  %44 = load i8, i8* %43, align 1
  %tmp0_v6.i19.i.i = sext i8 %44 to i32
  %tmp0_v7.i.i.i = shl nsw i32 %tmp0_v6.i19.i.i, 1
  %tmp0_v8.i.i.i = add i32 %tmp0_v7.i.i.i, %40
  %45 = inttoptr i32 %tmp0_v8.i.i.i to i16*
  %46 = load i16, i16* %45, align 2
  %47 = and i16 %46, 512
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %BB_804938D.i.i, label %BB_804931A.i.i

BB_804938D.i.i:                                   ; preds = %BB_804931A.i.i, %BB_80492F2.i.i, %BB_8049365.i.i
  %49 = phi i32 [ %41, %BB_80492F2.i.i ], [ %.pre.i, %BB_8049365.i.i ], [ %41, %BB_804931A.i.i ]
  %r_edx.0.i = phi i32 [ %tmp0_v7.i.i.i, %BB_80492F2.i.i ], [ %33, %BB_8049365.i.i ], [ %41, %BB_804931A.i.i ]
  %r_ecx.0.i = phi i32 [ %41, %BB_80492F2.i.i ], [ %33, %BB_8049365.i.i ], [ %41, %BB_804931A.i.i ]
  %tmp0_v1.i50.i.i = add i32 %49, 1
  store i32 %tmp0_v1.i50.i.i, i32* %30, align 8
  %50 = load i32, i32* %29, align 4
  %51 = icmp slt i32 %tmp0_v1.i50.i.i, %50
  br i1 %51, label %BB_80492F2.i.i, label %Func_convert_vowels.exit

BB_804931A.i.i:                                   ; preds = %BB_80492F2.i.i
  switch i8 %44, label %BB_804938D.i.i [
    i8 97, label %BB_8049365.i.i
    i8 101, label %BB_8049365.i.i
    i8 105, label %BB_8049365.i.i
  ]

Func_convert_vowels.exit:                         ; preds = %BB_804938D.i.i, %.exit
  %r_edx.1.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.0.i, %BB_804938D.i.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i2.i, %.exit ], [ %r_ecx.0.i, %BB_804938D.i.i ]
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* %22, align 8
  %tmp2_v.i.i = add i32 %53, -38
  %tmp2_v2.i.i = add i32 %tmp0_v.i3.i, -76
  %54 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %54, align 4
  %tmp2_v3.i.i = add i32 %52, -8184
  store i32 %tmp2_v3.i.i, i32* %20, align 16
  store i32 134517404, i32* %21, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @convert_vowels_uppercase357 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack356, i32 0, i32 8092) to i32)) nounwind
