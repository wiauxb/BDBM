; Mutation 714
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack713 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.710 = constant [12 x i8] c"domain: %s\0a\00"
@str.711 = constant [13 x i8] c"pos[1] = %c\0a\00"
@str.712 = constant [13 x i8] c"pos[0] = %c\0a\00"

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

; Function Attrs: noinline
declare i32 @memchr(i32, i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @memchr714(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_8049263.exit.i:
  %tmp2_v.i80.i = add i32 %arg_esp, 4
  %tmp0_v.i81.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i83.i = add i32 %tmp0_v.i81.i, -4
  %2 = inttoptr i32 %tmp2_v3.i83.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i84.i = add i32 %tmp0_v.i81.i, -8
  %3 = inttoptr i32 %tmp2_v4.i84.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i86.i = add i32 %tmp0_v.i81.i, -12
  %4 = inttoptr i32 %tmp2_v5.i86.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i88.i = add i32 %tmp0_v.i81.i, -16
  %5 = inttoptr i32 %tmp2_v6.i88.i to i32*
  store i32 %tmp2_v.i80.i, i32* %5, align 16
  %tmp2_v8.i90.i = add i32 %tmp0_v.i81.i, -68
  %6 = inttoptr i32 %tmp2_v8.i90.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp4_v.i46.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i50.i = add i32 %tmp0_v.i81.i, -20
  %9 = inttoptr i32 %tmp2_v2.i50.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i51.i = add i32 %tmp0_v.i81.i, -52
  %10 = inttoptr i32 %tmp2_v3.i51.i to i32*
  store i32 1953722993, i32* %10, align 4
  %tmp2_v4.i52.i = add i32 %tmp0_v.i81.i, -48
  %11 = inttoptr i32 %tmp2_v4.i52.i to i16*
  store i16 24944, i16* %11, align 16
  %tmp2_v5.i53.i = add i32 %tmp0_v.i81.i, -46
  %12 = inttoptr i32 %tmp2_v5.i53.i to i8*
  store i8 120, i8* %12, align 2
  %tmp2_v7.i56.i = add i32 %tmp0_v.i81.i, -72
  %13 = inttoptr i32 %tmp2_v7.i56.i to i32*
  store i32 7, i32* %13, align 8
  %tmp2_v8.i57.i = add i32 %tmp0_v.i81.i, -76
  %14 = inttoptr i32 %tmp2_v8.i57.i to i32*
  store i32 116, i32* %14, align 4
  %tmp2_v10.i58.i = add i32 %tmp0_v.i81.i, -80
  %15 = inttoptr i32 %tmp2_v10.i58.i to i32*
  store i32 %tmp2_v3.i51.i, i32* %15, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i81.i, -84
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517347, i32* %16, align 4
  %arg.i.i = load i32, i32* %15, align 16
  %arg2.i.i = load i32, i32* %14, align 4
  %arg4.i.i = load i32, i32* %13, align 8
  %17 = tail call i32 @memchr(i32 %arg.i.i, i32 %arg2.i.i, i32 %arg4.i.i)
  %tmp2_v.i10.i = add i32 %tmp0_v.i81.i, -60
  %18 = inttoptr i32 %tmp2_v.i10.i to i32*
  store i32 %17, i32* %18, align 4
  %19 = inttoptr i32 %17 to i8*
  %20 = load i8, i8* %19, align 1
  %tmp0_v2.i36.i = sext i8 %20 to i32
  store i32 %tmp0_v2.i36.i, i32* %14, align 4
  %spi712 = ptrtoint[13 x i8]* @str.712 to i32
  store i32 %spi712, i32* %15, align 16
  store i32 134517404, i32* %16, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i80.i, i32 inreg noundef 0, i32 noundef %tmp2_v10.i58.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %18, align 4
  %tmp0_v2.i64.i = add i32 %24, 1
  %25 = inttoptr i32 %tmp0_v2.i64.i to i8*
  %26 = load i8, i8* %25, align 1
  %tmp0_v4.i66.i = sext i8 %26 to i32
  store i32 %tmp0_v4.i66.i, i32* %14, align 4
  %spi711 = ptrtoint[13 x i8]* @str.711 to i32
  store i32 %spi711, i32* %15, align 16
  store i32 134517435, i32* %16, align 4
  %27 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i80.i, i32 inreg noundef %23, i32 noundef %tmp2_v10.i58.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %tmp2_v.i17.i = add i32 %tmp0_v.i81.i, -45
  %30 = inttoptr i32 %tmp2_v.i17.i to i32*
  store i32 1852338026, i32* %30, align 4
  %tmp2_v1.i18.i = add i32 %tmp0_v.i81.i, -41
  %31 = inttoptr i32 %tmp2_v1.i18.i to i32*
  store i32 1768780590, i32* %31, align 4
  %tmp2_v2.i19.i = add i32 %tmp0_v.i81.i, -37
  %32 = inttoptr i32 %tmp2_v2.i19.i to i32*
  store i32 1832937588, i32* %32, align 4
  %tmp2_v3.i20.i = add i32 %tmp0_v.i81.i, -33
  %33 = inttoptr i32 %tmp2_v3.i20.i to i32*
  store i32 1869767529, i32* %33, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i81.i, -29
  %34 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1952870259, i32* %34, align 4
  %tmp2_v5.i21.i = add i32 %tmp0_v.i81.i, -25
  %35 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 1836016430, i32* %35, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i81.i, -21
  %36 = inttoptr i32 %tmp2_v6.i.i to i8*
  store i8 0, i8* %36, align 1
  store i32 %tmp2_v.i17.i, i32* %15, align 16
  store i32 134517496, i32* %16, align 4
  %arg.i.i5 = load i32, i32* %15, align 16
  %37 = tail call i32 @strlen(i32 %arg.i.i5)
  store i32 %37, i32* %13, align 8
  store i32 64, i32* %14, align 4
  store i32 %tmp2_v.i17.i, i32* %15, align 16
  store i32 134517514, i32* %16, align 4
  %arg.i.i7 = load i32, i32* %15, align 16
  %arg2.i.i8 = load i32, i32* %14, align 4
  %arg4.i.i9 = load i32, i32* %13, align 8
  %38 = tail call i32 @memchr(i32 %arg.i.i7, i32 %arg2.i.i8, i32 %arg4.i.i9)
  %tmp2_v.i4.i = add i32 %tmp0_v.i81.i, -56
  %39 = inttoptr i32 %tmp2_v.i4.i to i32*
  %tmp0_v3.i.i = add i32 %38, 1
  store i32 %tmp0_v3.i.i, i32* %39, align 8
  store i32 %tmp0_v3.i.i, i32* %14, align 4
  %spi710 = ptrtoint[12 x i8]* @str.710 to i32
  store i32 %spi710, i32* %15, align 16
  store i32 134517542, i32* %16, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i80.i, i32 inreg noundef %29, i32 noundef %tmp2_v10.i58.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @memchr714 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack713, i32 0, i32 8092) to i32)) nounwind
