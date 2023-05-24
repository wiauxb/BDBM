; Mutation 110
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack109 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcat(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @is_rotation110(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_80492CC.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517393, i32* %6, align 4
  %tmp4_v.i5.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i2.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i8.i = add i32 %tmp0_v.i2.i, -32
  %10 = inttoptr i32 %tmp2_v3.i8.i to i32*
  store i32 1330531660, i32* %10, align 16
  %tmp2_v4.i9.i = add i32 %tmp0_v.i2.i, -28
  %11 = inttoptr i32 %tmp2_v4.i9.i to i16*
  store i16 80, i16* %11, align 4
  %tmp2_v5.i10.i = add i32 %tmp0_v.i2.i, -26
  %12 = inttoptr i32 %tmp2_v5.i10.i to i32*
  store i32 1280331598, i32* %12, align 4
  %tmp2_v6.i11.i = add i32 %tmp0_v.i2.i, -22
  %13 = inttoptr i32 %tmp2_v6.i11.i to i16*
  store i16 77, i16* %13, align 2
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -44
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v5.i10.i, i32* %14, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i2.i, -48
  %15 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v3.i8.i, i32* %15, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i2.i, -52
  %16 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517452, i32* %16, align 4
  %tmp2_v.i53.i.i = add i32 %tmp0_v.i2.i, -56
  %17 = inttoptr i32 %tmp2_v.i53.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %17, align 8
  %tmp2_v1.i55.i.i = add i32 %tmp0_v.i2.i, -60
  %18 = inttoptr i32 %tmp2_v1.i55.i.i to i32*
  store i32 134529024, i32* %18, align 4
  %tmp2_v2.i58.i.i = add i32 %tmp0_v.i2.i, -100
  %19 = inttoptr i32 %tmp2_v2.i58.i.i to i32*
  store i32 134517561, i32* %19, align 4
  %20 = load i32, i32* %15, align 16
  %tmp2_v3.i22.i.i = add i32 %tmp0_v.i2.i, -112
  %21 = inttoptr i32 %tmp2_v3.i22.i.i to i32*
  store i32 %20, i32* %21, align 16
  %tmp2_v4.i23.i.i = add i32 %tmp0_v.i2.i, -116
  %22 = inttoptr i32 %tmp2_v4.i23.i.i to i32*
  store i32 134517578, i32* %22, align 4
  %arg.i.i.i = load i32, i32* %21, align 16
  %23 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i74.i.i = add i32 %tmp0_v.i2.i, -84
  %24 = inttoptr i32 %tmp2_v.i74.i.i to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %21, align 16
  store i32 134517595, i32* %22, align 4
  %arg.i.i9.i = load i32, i32* %21, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i9.i)
  %tmp2_v.i27.i.i = add i32 %tmp0_v.i2.i, -80
  %27 = inttoptr i32 %tmp2_v.i27.i.i to i32*
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %24, align 4
  %tmp0_v1.i4.i.i = shl i32 %28, 1
  %tmp0_v2.i5.i.i = or i32 %tmp0_v1.i4.i.i, 1
  %tmp2_v3.i6.i.i = add i32 %tmp0_v.i2.i, -76
  %29 = inttoptr i32 %tmp2_v3.i6.i.i to i32*
  store i32 %tmp0_v2.i5.i.i, i32* %29, align 4
  store i32 %tmp0_v2.i5.i.i, i32* %21, align 16
  store i32 134517639, i32* %22, align 4
  %arg.i.i11.i = load i32, i32* %21, align 16
  %30 = tail call i32 @malloc(i32 %arg.i.i11.i)
  %tmp2_v.i62.i.i = add i32 %tmp0_v.i2.i, -72
  %31 = inttoptr i32 %tmp2_v.i62.i.i to i32*
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %15, align 16
  %tmp2_v4.i67.i.i = add i32 %tmp0_v.i2.i, -108
  %33 = inttoptr i32 %tmp2_v4.i67.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %31, align 8
  store i32 %34, i32* %21, align 16
  store i32 134517659, i32* %22, align 4
  %arg.i.i13.i = load i32, i32* %21, align 16
  %arg2.i.i.i = load i32, i32* %33, align 4
  %35 = tail call i32 @strcpy(i32 %arg.i.i13.i, i32 %arg2.i.i.i)
  %36 = load i32, i32* %15, align 16
  store i32 %36, i32* %33, align 4
  %37 = load i32, i32* %31, align 8
  store i32 %37, i32* %21, align 16
  store i32 134517676, i32* %22, align 4
  %arg.i.i14.i = load i32, i32* %21, align 16
  %arg2.i.i15.i = load i32, i32* %33, align 4
  %38 = tail call i32 @strcat(i32 %arg.i.i14.i, i32 %arg2.i.i15.i)
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %33, align 4
  %40 = load i32, i32* %31, align 8
  store i32 %40, i32* %21, align 16
  store i32 134517693, i32* %22, align 4
  %arg.i.i16.i = load i32, i32* %21, align 16
  %arg2.i.i17.i = load i32, i32* %33, align 4
  %41 = tail call i32 @strstr(i32 %arg.i.i16.i, i32 %arg2.i.i17.i)
  %tmp2_v.i49.i.i = add i32 %tmp0_v.i2.i, -68
  %42 = inttoptr i32 %tmp2_v.i49.i.i to i32*
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %31, align 8
  store i32 %43, i32* %21, align 16
  store i32 134517710, i32* %22, align 4
  %arg.i.i19.i = load i32, i32* %21, align 16
  tail call void @free(i32 %arg.i.i19.i)
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %17, align 8
  %tmp2_v.i32.i = add i32 %45, -18
  %tmp2_v1.i33.i = add i32 %tmp0_v.i2.i, -40
  %46 = inttoptr i32 %tmp2_v1.i33.i to i32*
  store i32 %tmp2_v.i32.i, i32* %46, align 8
  %tmp2_v2.i34.i = add i32 %45, -24
  store i32 %tmp2_v2.i34.i, i32* %14, align 4
  %tmp2_v4.i37.i = add i32 %44, -8184
  store i32 %tmp2_v4.i37.i, i32* %15, align 16
  store i32 134517482, i32* %16, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v11.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @is_rotation110 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack109, i32 0, i32 8092) to i32)) nounwind
