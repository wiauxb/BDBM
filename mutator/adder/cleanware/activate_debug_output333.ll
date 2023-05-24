; Mutation 333
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack332 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.329 = constant [10 x i8] c"sum = %d\0a\00"
@str.330 = constant [29 x i8] c"Additional output statement.\00"
@str.331 = constant [12 x i8] c"a[%d] = %d\0a\00"

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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: norecurse
define internal fastcc void @activate_debug_output333(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i35.i = add i32 %arg_esp, 4
  %tmp0_v.i36.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i38.i = add i32 %tmp0_v.i36.i, -4
  %3 = inttoptr i32 %tmp2_v3.i38.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i39.i = add i32 %tmp0_v.i36.i, -8
  %4 = inttoptr i32 %tmp2_v4.i39.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i41.i = add i32 %tmp0_v.i36.i, -12
  %5 = inttoptr i32 %tmp2_v5.i41.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i43.i = add i32 %tmp0_v.i36.i, -16
  %6 = inttoptr i32 %tmp2_v6.i43.i to i32*
  store i32 %tmp2_v.i35.i, i32* %6, align 16
  %tmp2_v8.i45.i = add i32 %tmp0_v.i36.i, -84
  %7 = inttoptr i32 %tmp2_v8.i45.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i67.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i71.i = add i32 %tmp0_v.i36.i, -20
  %10 = inttoptr i32 %tmp2_v2.i71.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i72.i = add i32 %tmp0_v.i36.i, -60
  %11 = inttoptr i32 %tmp2_v3.i72.i to i32*
  store i32 0, i32* %11, align 4
  %tmp2_v4.i73.i = add i32 %tmp0_v.i36.i, -56
  %12 = inttoptr i32 %tmp2_v4.i73.i to i32*
  store i32 1, i32* %12, align 8
  %tmp2_v5.i74.i = add i32 %tmp0_v.i36.i, -52
  %13 = inttoptr i32 %tmp2_v5.i74.i to i32*
  store i32 2, i32* %13, align 4
  %tmp2_v6.i75.i = add i32 %tmp0_v.i36.i, -48
  %14 = inttoptr i32 %tmp2_v6.i75.i to i32*
  store i32 3, i32* %14, align 16
  %tmp2_v7.i76.i = add i32 %tmp0_v.i36.i, -44
  %15 = inttoptr i32 %tmp2_v7.i76.i to i32*
  store i32 4, i32* %15, align 4
  %tmp2_v8.i77.i = add i32 %tmp0_v.i36.i, -40
  %16 = inttoptr i32 %tmp2_v8.i77.i to i32*
  store i32 5, i32* %16, align 8
  %tmp2_v9.i78.i = add i32 %tmp0_v.i36.i, -36
  %17 = inttoptr i32 %tmp2_v9.i78.i to i32*
  store i32 6, i32* %17, align 4
  %tmp2_v10.i79.i = add i32 %tmp0_v.i36.i, -32
  %18 = inttoptr i32 %tmp2_v10.i79.i to i32*
  store i32 7, i32* %18, align 16
  %tmp2_v11.i80.i = add i32 %tmp0_v.i36.i, -28
  %19 = inttoptr i32 %tmp2_v11.i80.i to i32*
  store i32 8, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i36.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 9, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i36.i, -76
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 0, i32* %21, align 4
  br label %BB_8049251.i

BB_8049279.i:                                     ; preds = %BB_8049270.i, %BB_8049279.i
  %r_edx.111 = phi i32 [ %tmp0_v5.i99.i, %BB_8049270.i ], [ %27, %BB_8049279.i ]
  %storemerge210 = phi i32 [ 0, %BB_8049270.i ], [ %tmp0_v2.i.i, %BB_8049279.i ]
  %tmp4_v.i.i = shl i32 %storemerge210, 2
  %tmp2_v2.i.i = add i32 %tmp4_v.i.i, %tmp2_v3.i72.i
  %22 = inttoptr i32 %tmp2_v2.i.i to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %31, align 8
  %24 = load i32, i32* %30, align 8
  store i32 %24, i32* %32, align 4
  %spi331 = ptrtoint[12 x i8]* @str.331 to i32
  store i32 %spi331, i32* %33, align 16
  store i32 134517395, i32* %34, align 4
  %25 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i35.i, i32 inreg noundef %r_edx.111, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %30, align 8
  %tmp0_v2.i.i = add i32 %28, 1
  store i32 %tmp0_v2.i.i, i32* %30, align 8
  %29 = icmp slt i32 %tmp0_v2.i.i, 10
  br i1 %29, label %BB_8049279.i, label %BB_80492A0.i

BB_8049270.i:                                     ; preds = %BB_8049251.i
  %tmp2_v.i12.i = add i32 %tmp0_v.i36.i, -72
  %30 = inttoptr i32 %tmp2_v.i12.i to i32*
  %tmp2_v5.i.i = add i32 %tmp0_v.i36.i, -88
  %31 = inttoptr i32 %tmp2_v5.i.i to i32*
  %tmp2_v8.i.i = add i32 %tmp0_v.i36.i, -92
  %32 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v10.i.i = add i32 %tmp0_v.i36.i, -96
  %33 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v11.i.i = add i32 %tmp0_v.i36.i, -100
  %34 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %30, align 8
  br label %BB_8049279.i

BB_80492A0.i:                                     ; preds = %BB_8049279.i
  %spi330 = ptrtoint[29 x i8]* @str.330 to i32
  store i32 %spi330, i32* %33, align 16
  store i32 134517423, i32* %34, align 4
  %arg.i.i = load i32, i32* %33, align 16
  %35 = inttoptr i32 %arg.i.i to i8*
  %36 = tail call i32 @puts(i8* nonnull dereferenceable(1) %35)
  %tmp2_v.i89.i = add i32 %tmp0_v.i36.i, -68
  %37 = inttoptr i32 %tmp2_v.i89.i to i32*
  store i32 0, i32* %37, align 4
  %tmp2_v1.i90.i = add i32 %tmp0_v.i36.i, -64
  %38 = inttoptr i32 %tmp2_v1.i90.i to i32*
  store i32 0, i32* %38, align 16
  br label %BB_80492C2.i

BB_80492C2.i:                                     ; preds = %BB_80492C2.i, %BB_80492A0.i
  %storemerge112 = phi i32 [ 0, %BB_80492A0.i ], [ %tmp0_v9.i.i, %BB_80492C2.i ]
  %tmp4_v.i28.i = shl i32 %storemerge112, 2
  %tmp2_v2.i29.i = add i32 %tmp4_v.i28.i, %tmp2_v3.i72.i
  %39 = inttoptr i32 %tmp2_v2.i29.i to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %37, align 4
  %tmp0_v6.i.i = add i32 %41, %40
  store i32 %tmp0_v6.i.i, i32* %37, align 4
  %42 = load i32, i32* %38, align 16
  %tmp0_v9.i.i = add i32 %42, 1
  store i32 %tmp0_v9.i.i, i32* %38, align 16
  %43 = icmp slt i32 %tmp0_v9.i.i, 10
  br i1 %43, label %BB_80492C2.i, label %BB_80492D6.i

BB_80492D6.i:                                     ; preds = %BB_80492C2.i
  %44 = trunc i64 %26 to i32
  %45 = load i32, i32* %37, align 4
  store i32 %45, i32* %32, align 4
  %spi329 = ptrtoint[10 x i8]* @str.329 to i32
  store i32 %spi329, i32* %33, align 16
  store i32 134517480, i32* %34, align 4
  %46 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i35.i, i32 inreg noundef %44, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_8049251.i:                                     ; preds = %BB_8049251.i, %0
  %storemerge9 = phi i32 [ 0, %0 ], [ %tmp0_v13.i.i, %BB_8049251.i ]
  %tmp4_v.i95.i = shl i32 %storemerge9, 2
  %tmp2_v2.i96.i = add i32 %tmp4_v.i95.i, %tmp2_v3.i72.i
  %47 = inttoptr i32 %tmp2_v2.i96.i to i32*
  %48 = load i32, i32* %47, align 4
  %tmp0_v5.i99.i = mul i32 %48, 5
  store i32 %tmp0_v5.i99.i, i32* %47, align 4
  %49 = load i32, i32* %21, align 4
  %tmp0_v13.i.i = add i32 %49, 1
  store i32 %tmp0_v13.i.i, i32* %21, align 4
  %50 = icmp slt i32 %tmp0_v13.i.i, 10
  br i1 %50, label %BB_8049251.i, label %BB_8049270.i
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

  tail call fastcc void @activate_debug_output333 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack332, i32 0, i32 8092) to i32)) nounwind
