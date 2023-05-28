; Mutation 493
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack492 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.490 = constant [7 x i8] c"\65\3a\20\25\73\0a\00"
@str.bis.491 = constant [7 x i8] c"\64\3a\20\25\73\0a\00"

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

; Function Attrs: norecurse nounwind
define internal fastcc void @memcpy493(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i16.i, -4
  %2 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i16.i, -8
  %3 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i21.i = add i32 %tmp0_v.i16.i, -12
  %4 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i23.i = add i32 %tmp0_v.i16.i, -16
  %5 = inttoptr i32 %tmp2_v6.i23.i to i32*
  store i32 %tmp2_v.i15.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i16.i, -100
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i33.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i37.i = add i32 %tmp0_v.i16.i, -20
  %9 = inttoptr i32 %tmp2_v2.i37.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i38.i = add i32 %tmp0_v.i16.i, -74
  %10 = inttoptr i32 %tmp2_v3.i38.i to i32*
  store i32 1684234849, i32* %10, align 4
  %tmp2_v4.i39.i = add i32 %tmp0_v.i16.i, -70
  %11 = inttoptr i32 %tmp2_v4.i39.i to i32*
  store i32 1751606885, i32* %11, align 4
  %tmp2_v5.i40.i = add i32 %tmp0_v.i16.i, -66
  %12 = inttoptr i32 %tmp2_v5.i40.i to i32*
  store i32 1818978921, i32* %12, align 4
  %tmp2_v6.i41.i = add i32 %tmp0_v.i16.i, -62
  %13 = inttoptr i32 %tmp2_v6.i41.i to i32*
  store i32 1886350957, i32* %13, align 4
  %tmp2_v7.i42.i = add i32 %tmp0_v.i16.i, -58
  %14 = inttoptr i32 %tmp2_v7.i42.i to i32*
  store i32 1953722993, i32* %14, align 4
  %tmp2_v8.i43.i = add i32 %tmp0_v.i16.i, -54
  %15 = inttoptr i32 %tmp2_v8.i43.i to i32*
  store i32 2021095029, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i16.i, -50
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 31353, i16* %16, align 2
  %tmp2_v10.i.i = add i32 %tmp0_v.i16.i, -48
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 16
  %18 = load i32, i32* %10, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i16.i, -47
  %19 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i16.i, -43
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i16.i, -39
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i16.i, -35
  %25 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %14, align 4
  %tmp2_v25.i.i = add i32 %tmp0_v.i16.i, -31
  %27 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  %tmp2_v28.i.i = add i32 %tmp0_v.i16.i, -27
  %29 = inttoptr i32 %tmp2_v28.i.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i16, i16* %16, align 2
  %tmp2_v31.i.i = add i32 %tmp0_v.i16.i, -23
  %31 = inttoptr i32 %tmp2_v31.i.i to i16*
  store i16 %30, i16* %31, align 2
  %32 = load i8, i8* %17, align 16
  %tmp2_v34.i.i = add i32 %tmp0_v.i16.i, -21
  %33 = inttoptr i32 %tmp2_v34.i.i to i8*
  store i8 %32, i8* %33, align 1
  %tmp2_v37.i.i = add i32 %tmp0_v.i16.i, -108
  %34 = inttoptr i32 %tmp2_v37.i.i to i32*
  store i32 %tmp2_v13.i.i, i32* %34, align 4
  %tmp2_v39.i.i = add i32 %tmp0_v.i16.i, -112
  %35 = inttoptr i32 %tmp2_v39.i.i to i32*
  %spi.bis.491 = ptrtoint[7 x i8]* @str.bis.491 to i32
  store i32 %spi.bis.491, i32* %35, align 16
  %tmp2_v40.i.i = add i32 %tmp0_v.i16.i, -116
  %36 = inttoptr i32 %tmp2_v40.i.i to i32*
  store i32 134517372, i32* %36, align 4
  %37 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef 0, i32 noundef %tmp2_v39.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %38 = lshr i64 %37, 32
  %39 = trunc i64 %38 to i32
  %tmp2_v3.i12.i = add i32 %tmp0_v.i16.i, -104
  %40 = inttoptr i32 %tmp2_v3.i12.i to i32*
  store i32 9, i32* %40, align 8
  store i32 %tmp2_v5.i40.i, i32* %34, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i16.i, -84
  store i32 %tmp2_v5.i.i, i32* %35, align 16
  store i32 134517396, i32* %36, align 4
  %arg.i.i = load i32, i32* %35, align 16
  %arg2.i.i = load i32, i32* %34, align 4
  %arg4.i.i = load i32, i32* %40, align 8
  %41 = inttoptr i32 %arg.i.i to i8*
  %42 = inttoptr i32 %arg2.i.i to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %41, i8* align 1 %42, i32 %arg4.i.i, i1 false)  nounwind 
  %tmp2_v.i4.i = add i32 %tmp0_v.i16.i, -75
  %43 = inttoptr i32 %tmp2_v.i4.i to i8*
  store i8 0, i8* %43, align 1
  store i32 %tmp2_v5.i.i, i32* %34, align 4
  %spi.bis.490 = ptrtoint[7 x i8]* @str.bis.490 to i32
  store i32 %spi.bis.490, i32* %35, align 16
  store i32 134517422, i32* %36, align 4
  %44 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef %39, i32 noundef %tmp2_v39.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg)  argmemonly nofree nounwind willreturn 


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

  tail call fastcc void @memcpy493 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack492, i32 0, i32 8092) to i32)) nounwind
