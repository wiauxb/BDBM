; Mutation 137
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack136 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @rand() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @srand(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @time(i32) local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse
define internal fastcc void @fill_2d_random137(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i10.i = add i32 %arg_esp, 4
  %tmp0_v.i11.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i13.i = add i32 %tmp0_v.i11.i, -4
  %3 = inttoptr i32 %tmp2_v3.i13.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i14.i = add i32 %tmp0_v.i11.i, -8
  %4 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i11.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i17.i = add i32 %tmp0_v.i11.i, -16
  %6 = inttoptr i32 %tmp2_v6.i17.i to i32*
  store i32 %tmp2_v.i10.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i11.i, -84
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517329, i32* %7, align 4
  %tmp4_v.i45.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i49.i = add i32 %tmp0_v.i11.i, -20
  %10 = inttoptr i32 %tmp2_v2.i49.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i52.i = add i32 %tmp0_v.i11.i, -96
  %11 = inttoptr i32 %tmp2_v4.i52.i to i32*
  store i32 0, i32* %11, align 16
  %tmp2_v5.i53.i = add i32 %tmp0_v.i11.i, -100
  %12 = inttoptr i32 %tmp2_v5.i53.i to i32*
  store i32 134517356, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @time(i32 %arg.i.i)
  store i32 %13, i32* %11, align 16
  store i32 134517368, i32* %12, align 4
  %arg.i.i6 = load i32, i32* %11, align 16
  tail call void @srand(i32 %arg.i.i6)
  %tmp2_v.i68.i = add i32 %tmp0_v.i11.i, -92
  %14 = inttoptr i32 %tmp2_v.i68.i to i32*
  store i32 10, i32* %14, align 4
  %tmp2_v2.i70.i = add i32 %tmp0_v.i11.i, -68
  store i32 %tmp2_v2.i70.i, i32* %11, align 16
  store i32 134517385, i32* %12, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i11.i, -104
  %15 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i14.i, i32* %15, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i11.i, -108
  %16 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %16, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i11.i, -132
  %17 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %tmp2_v.i31.i.i = add i32 %tmp0_v.i11.i, -120
  %18 = inttoptr i32 %tmp2_v.i31.i.i to i32*
  %tmp2_v.i22.i.i = add i32 %tmp0_v.i11.i, -116
  %19 = inttoptr i32 %tmp2_v.i22.i.i to i32*
  store i32 0, i32* %18, align 8
  br label %BB_8049324.i.i

BB_8049358.i.i:                                   ; preds = %BB_804932D.i.i
  %20 = load i32, i32* %18, align 8
  %tmp0_v1.i17.i.i = add i32 %20, 1
  store i32 %tmp0_v1.i17.i.i, i32* %18, align 8
  %21 = icmp slt i32 %tmp0_v1.i17.i.i, 3
  br i1 %21, label %BB_8049324.i.i, label %Func_fill_random.exit

BB_8049324.i.i:                                   ; preds = %BB_8049358.i.i, %0
  store i32 0, i32* %19, align 4
  br label %BB_804932D.i.i

BB_804932D.i.i:                                   ; preds = %BB_804932D.i.i, %BB_8049324.i.i
  store i32 134517554, i32* %17, align 4
  %22 = tail call i32 @rand()
  %tmp0_v.i3.i.i = ashr i32 %22, 31
  %23 = load i32, i32* %14, align 4
  %24 = zext i32 %22 to i64
  %25 = zext i32 %tmp0_v.i3.i.i to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = icmp ne i32 %23, 0
  tail call void @llvm.assume(i1 %28)
  %29 = sext i32 %23 to i64
  %.frozen = freeze i64 %27
  %.frozen11 = freeze i64 %29
  %30 = sdiv i64 %.frozen, %.frozen11
  %31 = add i64 %30, 2147483648
  %32 = icmp ult i64 %31, 4294967296
  tail call void @llvm.assume(i1 %32)
  %33 = mul i64 %30, %.frozen11
  %.decomposed = sub i64 %.frozen, %33
  %34 = trunc i64 %.decomposed to i32
  %35 = load i32, i32* %18, align 8
  %tmp0_v5.i.i.i = shl i32 %35, 4
  %36 = load i32, i32* %11, align 16
  %tmp0_v8.i.i.i = add i32 %tmp0_v5.i.i.i, %36
  %tmp0_v9.i.i.i = add i32 %34, 1
  %37 = load i32, i32* %19, align 4
  %tmp4_v.i8.i.i = shl i32 %37, 2
  %tmp2_v12.i.i.i = add i32 %tmp0_v8.i.i.i, %tmp4_v.i8.i.i
  %38 = inttoptr i32 %tmp2_v12.i.i.i to i32*
  store i32 %tmp0_v9.i.i.i, i32* %38, align 4
  %39 = load i32, i32* %19, align 4
  %tmp0_v15.i.i.i = add i32 %39, 1
  store i32 %tmp0_v15.i.i.i, i32* %19, align 4
  %40 = icmp slt i32 %tmp0_v15.i.i.i, 4
  br i1 %40, label %BB_804932D.i.i, label %BB_8049358.i.i

Func_fill_random.exit:                            ; preds = %BB_8049358.i.i
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %15, align 8
  %tmp2_v.i57.i = add i32 %42, -68
  %43 = inttoptr i32 %tmp2_v.i57.i to i32*
  %tmp2_v.i42.i = add i32 %42, -64
  %44 = inttoptr i32 %tmp2_v.i42.i to i32*
  %tmp2_v4.i.i = add i32 %42, -60
  %tmp2_v10.i.i = add i32 %41, -8184
  store i32 0, i32* %43, align 4
  br label %BB_8049295.i

BB_804929E.i:                                     ; preds = %BB_8049295.i, %BB_804929E.i
  %storemerge210 = phi i32 [ 0, %BB_8049295.i ], [ %tmp0_v2.i24.i, %BB_804929E.i ]
  %45 = load i32, i32* %43, align 4
  %tmp4_v.i.i = shl i32 %45, 2
  %tmp0_v3.i.i = add i32 %tmp4_v.i.i, %storemerge210
  %tmp4_v5.i.i = shl i32 %tmp0_v3.i.i, 2
  %tmp2_v6.i.i = add i32 %tmp2_v4.i.i, %tmp4_v5.i.i
  %46 = inttoptr i32 %tmp2_v6.i.i to i32*
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  store i32 %tmp2_v10.i.i, i32* %11, align 16
  store i32 134517441, i32* %12, align 4
  %48 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v9.i.i.i, i32 inreg noundef %tmp4_v.i.i, i32 noundef %tmp2_v4.i52.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %49 = load i32, i32* %44, align 4
  %tmp0_v2.i24.i = add i32 %49, 1
  store i32 %tmp0_v2.i24.i, i32* %44, align 4
  %50 = icmp slt i32 %tmp0_v2.i24.i, 4
  br i1 %50, label %BB_804929E.i, label %BB_80492CE.i

BB_8049295.i:                                     ; preds = %BB_80492CE.i, %Func_fill_random.exit
  store i32 0, i32* %44, align 4
  br label %BB_804929E.i

BB_80492CE.i:                                     ; preds = %BB_804929E.i
  store i32 10, i32* %11, align 16
  store i32 134517464, i32* %12, align 4
  %arg.i.i9 = load i32, i32* %11, align 16
  %51 = tail call i32 @putchar(i32 %arg.i.i9)  nounwind 
  %52 = load i32, i32* %43, align 4
  %tmp0_v2.i.i = add i32 %52, 1
  store i32 %tmp0_v2.i.i, i32* %43, align 4
  %53 = icmp slt i32 %tmp0_v2.i.i, 3
  br i1 %53, label %BB_8049295.i, label %.exit

.exit:                                            ; preds = %BB_80492CE.i
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 


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

  tail call fastcc void @fill_2d_random137 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack136, i32 0, i32 8092) to i32)) nounwind
