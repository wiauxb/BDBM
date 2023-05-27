; Mutation 526
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack525 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.524 = constant [15 x i8] c"number %d: %d\0a\00"

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
declare i32 @rand() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @srand(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @time(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @lottery_numbers526(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i73.i = add i32 %arg_esp, 4
  %tmp0_v.i74.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i76.i = add i32 %tmp0_v.i74.i, -4
  %3 = inttoptr i32 %tmp2_v3.i76.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i77.i = add i32 %tmp0_v.i74.i, -8
  %4 = inttoptr i32 %tmp2_v4.i77.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i79.i = add i32 %tmp0_v.i74.i, -12
  %5 = inttoptr i32 %tmp2_v5.i79.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i74.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i73.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i74.i, -68
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517297, i32* %7, align 4
  %tmp4_v.i20.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i24.i = add i32 %tmp0_v.i74.i, -20
  %10 = inttoptr i32 %tmp2_v2.i24.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i27.i = add i32 %tmp0_v.i74.i, -80
  %11 = inttoptr i32 %tmp2_v4.i27.i to i32*
  store i32 0, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i74.i, -84
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 134517324, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @time(i32 %arg.i.i)
  store i32 %13, i32* %11, align 16
  store i32 134517336, i32* %12, align 4
  %arg.i.i5 = load i32, i32* %11, align 16
  tail call void @srand(i32 %arg.i.i5)
  %tmp2_v.i87.i = add i32 %tmp0_v.i74.i, -56
  %14 = inttoptr i32 %tmp2_v.i87.i to i32*
  store i32 0, i32* %14, align 8
  %tmp2_v.i2.i = add i32 %tmp0_v.i74.i, -48
  %15 = inttoptr i32 %tmp2_v.i2.i to i32*
  %tmp2_v9.i.i = add i32 %tmp0_v.i74.i, -57
  %16 = inttoptr i32 %tmp2_v9.i.i to i8*
  %tmp2_v10.i.i = add i32 %tmp0_v.i74.i, -52
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v3.i.i = add i32 %tmp0_v.i74.i, -44
  %tmp2_v11.i.i = add i32 %tmp0_v.i74.i, -72
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  %tmp2_v12.i.i = add i32 %tmp0_v.i74.i, -76
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  br label %BB_8049267.i

Func_80492B9.exit.i:                              ; preds = %BB_80492B1.i
  %20 = load i32, i32* %15, align 16
  %tmp4_v.i56.i = shl i32 %27, 2
  %tmp2_v4.i57.i = add i32 %tmp2_v3.i.i, %tmp4_v.i56.i
  %21 = inttoptr i32 %tmp2_v4.i57.i to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %14, align 8
  %tmp0_v7.i59.i = add i32 %22, 1
  %23 = load i32, i32* %15, align 16
  store i32 %23, i32* %18, align 8
  store i32 %tmp0_v7.i59.i, i32* %19, align 4
  %spi.bis.524 = ptrtoint[15 x i8]* @str.524 to i32
  store i32 %spi.bis.524, i32* %11, align 16
  store i32 134517479, i32* %12, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v7.i.i, i32 inreg noundef %20, i32 noundef %tmp2_v4.i27.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %25 = load i32, i32* %14, align 8
  %tmp0_v2.i93.i = add i32 %25, 1
  store i32 %tmp0_v2.i93.i, i32* %14, align 8
  %26 = icmp slt i32 %tmp0_v2.i93.i, 6
  br i1 %26, label %BB_8049267.i, label %.exit

BB_80492B1.i:                                     ; preds = %BB_8049267.i, %BB_80492B1.i
  %storemerge = phi i32 [ 0, %BB_8049267.i ], [ %tmp0_v1.i9.i, %BB_80492B1.i ]
  store i32 %storemerge, i32* %17, align 4
  %27 = load i32, i32* %14, align 8
  %28 = icmp slt i32 %storemerge, %27
  %tmp0_v1.i9.i = add nuw nsw i32 %storemerge, 1
  br i1 %28, label %BB_80492B1.i, label %Func_80492B9.exit.i

BB_8049267.i:                                     ; preds = %Func_80492B9.exit.i, %0
  store i32 134517356, i32* %7, align 4
  %29 = tail call i32 @rand()
  %tmp16_v.i.i = sext i32 %29 to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 582368447
  %tmp15_v1.i.i = lshr i64 %tmp15_v.i.i, 32
  %30 = trunc i64 %tmp15_v1.i.i to i32
  %tmp0_v2.i.i = ashr i32 %30, 3
  %tmp0_v3.i.i.neg = lshr i32 %29, 31
  %tmp0_v4.i.i = add nsw i32 %tmp0_v2.i.i, %tmp0_v3.i.i.neg
  %tmp17_v5.i.i.neg = mul i32 %tmp0_v4.i.i, -59
  %tmp0_v7.i.i = add i32 %tmp17_v5.i.i.neg, %29
  %tmp0_v8.i.i = add i32 %tmp0_v7.i.i, 1
  store i32 %tmp0_v8.i.i, i32* %15, align 16
  store i8 1, i8* %16, align 1
  br label %BB_80492B1.i

.exit:                                            ; preds = %Func_80492B9.exit.i
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @lottery_numbers526 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack525, i32 0, i32 8092) to i32)) nounwind
