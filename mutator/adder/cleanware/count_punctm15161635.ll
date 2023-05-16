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
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @count_punctm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i5.i = add i32 %tmp0_v.i.i, -54
  %10 = inttoptr i32 %tmp2_v3.i5.i to i32*
  store i32 1819308129, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i.i, -50
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1881156709, i32* %11, align 4
  %tmp2_v5.i7.i = add i32 %tmp0_v.i.i, -46
  %12 = inttoptr i32 %tmp2_v5.i7.i to i32*
  store i32 745693541, i32* %12, align 4
  %tmp2_v6.i8.i = add i32 %tmp0_v.i.i, -42
  %13 = inttoptr i32 %tmp2_v6.i8.i to i32*
  store i32 1634889504, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -38
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 996501358, i32* %14, align 4
  %tmp2_v8.i9.i = add i32 %tmp0_v.i.i, -34
  %15 = inttoptr i32 %tmp2_v8.i9.i to i32*
  store i32 1836020512, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -30
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1768453221, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -26
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 774793070, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -22
  %18 = inttoptr i32 %tmp2_v11.i.i to i16*
  store i16 46, i16* %18, align 2
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -80
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i5.i, i32* %19, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -84
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517356, i32* %20, align 4
  %tmp2_v.i23.i.i = add i32 %tmp0_v.i.i, -88
  %21 = inttoptr i32 %tmp2_v.i23.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %21, align 8
  %tmp2_v1.i25.i.i = add i32 %tmp0_v.i.i, -92
  %22 = inttoptr i32 %tmp2_v1.i25.i.i to i32*
  store i32 134529024, i32* %22, align 4
  %tmp2_v2.i28.i.i = add i32 %tmp0_v.i.i, -116
  %23 = inttoptr i32 %tmp2_v2.i28.i.i to i32*
  store i32 134517431, i32* %23, align 4
  %24 = load i32, i32* %19, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i.i, -128
  %25 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %24, i32* %25, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -132
  %26 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517448, i32* %26, align 4
  %arg.i.i.i = load i32, i32* %25, align 16
  %27 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i49.i.i = add i32 %tmp0_v.i.i, -100
  %28 = inttoptr i32 %tmp2_v.i49.i.i to i32*
  store i32 %27, i32* %28, align 4
  %tmp2_v1.i51.i.i = add i32 %tmp0_v.i.i, -108
  %29 = inttoptr i32 %tmp2_v1.i51.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v2.i52.i.i = add i32 %tmp0_v.i.i, -104
  %30 = inttoptr i32 %tmp2_v2.i52.i.i to i32*
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %28, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492DE.i.i, label %Func_count_punct.exit

BB_8049304.i.i:                                   ; preds = %BB_80492DE.i.i
  %33 = load i32, i32* %29, align 4
  %tmp0_v1.i.i.i = add i32 %33, 1
  store i32 %tmp0_v1.i.i.i, i32* %29, align 4
  %.pre.i = load i32, i32* %30, align 8
  br label %BB_8049308.i.i

BB_80492DE.i.i:                                   ; preds = %BB_8049308.i.i, %.exit
  store i32 134517475, i32* %23, align 4
  %34 = tail call i32 @__ctype_b_loc()
  %35 = inttoptr i32 %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %30, align 8
  %38 = load i32, i32* %19, align 16
  %tmp0_v4.i7.i.i = add i32 %38, %37
  %39 = inttoptr i32 %tmp0_v4.i7.i.i to i8*
  %40 = load i8, i8* %39, align 1
  %tmp0_v6.i8.i.i = sext i8 %40 to i32
  %tmp0_v7.i.i.i = shl nsw i32 %tmp0_v6.i8.i.i, 1
  %tmp0_v8.i.i.i = add i32 %tmp0_v7.i.i.i, %36
  %41 = inttoptr i32 %tmp0_v8.i.i.i to i16*
  %42 = load i16, i16* %41, align 2
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %BB_8049308.i.i, label %BB_8049304.i.i

BB_8049308.i.i:                                   ; preds = %BB_80492DE.i.i, %BB_8049304.i.i
  %45 = phi i32 [ %37, %BB_80492DE.i.i ], [ %.pre.i, %BB_8049304.i.i ]
  %tmp0_v1.i39.i.i = add i32 %45, 1
  store i32 %tmp0_v1.i39.i.i, i32* %30, align 8
  %46 = load i32, i32* %28, align 4
  %47 = icmp slt i32 %tmp0_v1.i39.i.i, %46
  br i1 %47, label %BB_80492DE.i.i, label %Func_count_punct.exit

Func_count_punct.exit:                            ; preds = %BB_8049308.i.i, %.exit
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i.i, %.exit ], [ %37, %BB_8049308.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %tmp0_v7.i.i.i, %BB_8049308.i.i ]
  %48 = load i32, i32* %29, align 4
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* %21, align 8
  %tmp2_v.i14.i = add i32 %50, -52
  %51 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 %48, i32* %51, align 4
  %tmp2_v4.i17.i = add i32 %tmp0_v.i.i, -76
  %52 = inttoptr i32 %tmp2_v4.i17.i to i32*
  store i32 %48, i32* %52, align 4
  %tmp2_v5.i19.i = add i32 %49, -8184
  store i32 %tmp2_v5.i19.i, i32* %19, align 16
  store i32 134517380, i32* %20, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
}

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

  tail call fastcc void @count_punctm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind