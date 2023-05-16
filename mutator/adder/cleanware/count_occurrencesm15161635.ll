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

; Function Attrs: norecurse nounwind
define internal fastcc void @count_occurrencesm15161635(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i18.i = add i32 %arg_esp, 4
  %tmp0_v.i19.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i19.i, -4
  %2 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i19.i, -8
  %3 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i24.i = add i32 %tmp0_v.i19.i, -12
  %4 = inttoptr i32 %tmp2_v5.i24.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i26.i = add i32 %tmp0_v.i19.i, -16
  %5 = inttoptr i32 %tmp2_v6.i26.i to i32*
  store i32 %tmp2_v.i18.i, i32* %5, align 16
  %tmp2_v8.i27.i = add i32 %tmp0_v.i19.i, -116
  %6 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i8.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i8.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i19.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i13.i = add i32 %tmp0_v.i19.i, -60
  %10 = inttoptr i32 %tmp2_v3.i13.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v4.i14.i = add i32 %tmp0_v.i19.i, -56
  %11 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 9, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i19.i, -52
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 5, i32* %12, align 4
  %tmp2_v6.i15.i = add i32 %tmp0_v.i19.i, -48
  %13 = inttoptr i32 %tmp2_v6.i15.i to i32*
  store i32 5, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i19.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i19.i, -40
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 5, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i19.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i19.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i19.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i19.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 5, i32* %19, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i19.i, -92
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 0, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i19.i, -88
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 0, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i19.i, -84
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 1, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i19.i, -80
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 1, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i19.i, -76
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 0, i32* %24, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i19.i, -72
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 2, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i19.i, -68
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 0, i32* %26, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i19.i, -64
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 3, i32* %27, align 16
  %tmp2_v22.i.i = add i32 %tmp0_v.i19.i, -120
  %28 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 5, i32* %28, align 8
  %tmp2_v23.i.i = add i32 %tmp0_v.i19.i, -124
  %29 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 10, i32* %29, align 4
  %tmp2_v25.i.i = add i32 %tmp0_v.i19.i, -128
  %30 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 %tmp2_v3.i13.i, i32* %30, align 16
  %tmp2_v26.i.i = add i32 %tmp0_v.i19.i, -132
  %31 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 134517360, i32* %31, align 4
  %tmp2_v.i36.i.i = add i32 %tmp0_v.i19.i, -136
  %32 = inttoptr i32 %tmp2_v.i36.i.i to i32*
  store i32 %tmp2_v4.i22.i, i32* %32, align 8
  %tmp2_v1.i39.i.i = add i32 %tmp0_v.i19.i, -156
  %33 = inttoptr i32 %tmp2_v1.i39.i.i to i32*
  store i32 134517477, i32* %33, align 4
  %tmp2_v.i22.i.i = add i32 %tmp0_v.i19.i, -144
  %34 = inttoptr i32 %tmp2_v.i22.i.i to i32*
  store i32 0, i32* %34, align 16
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i19.i, -140
  %35 = inttoptr i32 %tmp2_v1.i23.i.i to i32*
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %29, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %BB_80492FA.i.i, label %Func_occurrences.exit

BB_8049310.i.i:                                   ; preds = %BB_80492FA.i.i
  %38 = load i32, i32* %34, align 16
  %tmp0_v1.i4.i.i = add i32 %38, 1
  store i32 %tmp0_v1.i4.i.i, i32* %34, align 16
  %.pre.i = load i32, i32* %35, align 4
  br label %BB_8049314.i.i

BB_8049314.i.i:                                   ; preds = %BB_80492FA.i.i, %BB_8049310.i.i
  %39 = phi i32 [ %storemerge13.i, %BB_80492FA.i.i ], [ %.pre.i, %BB_8049310.i.i ]
  %tmp0_v1.i14.i.i = add i32 %39, 1
  store i32 %tmp0_v1.i14.i.i, i32* %35, align 4
  %40 = load i32, i32* %29, align 4
  %41 = icmp slt i32 %tmp0_v1.i14.i.i, %40
  br i1 %41, label %BB_80492FA.i.i, label %Func_occurrences.exit

BB_80492FA.i.i:                                   ; preds = %BB_8049314.i.i, %.exit
  %storemerge13.i = phi i32 [ %tmp0_v1.i14.i.i, %BB_8049314.i.i ], [ 0, %.exit ]
  %tmp4_v.i27.i.i = shl i32 %storemerge13.i, 2
  %42 = load i32, i32* %30, align 16
  %tmp0_v3.i30.i.i = add i32 %42, %tmp4_v.i27.i.i
  %43 = inttoptr i32 %tmp0_v3.i30.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %28, align 8
  %.not.i.i.i = icmp eq i32 %45, %44
  br i1 %.not.i.i.i, label %BB_8049310.i.i, label %BB_8049314.i.i

Func_occurrences.exit:                            ; preds = %BB_8049314.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %tmp4_v.i27.i.i, %BB_8049314.i.i ]
  %46 = load i32, i32* %34, align 16
  %47 = load i32, i32* %32, align 8
  %tmp2_v.i49.i = add i32 %47, -92
  %48 = inttoptr i32 %tmp2_v.i49.i to i32*
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %28, align 8
  store i32 8, i32* %29, align 4
  %tmp2_v4.i54.i = add i32 %47, -84
  store i32 %tmp2_v4.i54.i, i32* %30, align 16
  store i32 134517382, i32* %31, align 4
  store i32 %47, i32* %32, align 8
  store i32 134517477, i32* %33, align 4
  store i32 0, i32* %34, align 16
  store i32 0, i32* %35, align 4
  %49 = load i32, i32* %29, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_80492FA.i.i19, label %Func_occurrences.exit24

BB_8049310.i.i12:                                 ; preds = %BB_80492FA.i.i19
  %51 = load i32, i32* %34, align 16
  %tmp0_v1.i4.i.i10 = add i32 %51, 1
  store i32 %tmp0_v1.i4.i.i10, i32* %34, align 16
  %.pre.i11 = load i32, i32* %35, align 4
  br label %BB_8049314.i.i14

BB_8049314.i.i14:                                 ; preds = %BB_80492FA.i.i19, %BB_8049310.i.i12
  %52 = phi i32 [ %storemerge13.i15, %BB_80492FA.i.i19 ], [ %.pre.i11, %BB_8049310.i.i12 ]
  %tmp0_v1.i14.i.i13 = add i32 %52, 1
  store i32 %tmp0_v1.i14.i.i13, i32* %35, align 4
  %53 = load i32, i32* %29, align 4
  %54 = icmp slt i32 %tmp0_v1.i14.i.i13, %53
  br i1 %54, label %BB_80492FA.i.i19, label %Func_occurrences.exit24

BB_80492FA.i.i19:                                 ; preds = %BB_8049314.i.i14, %Func_occurrences.exit
  %storemerge13.i15 = phi i32 [ %tmp0_v1.i14.i.i13, %BB_8049314.i.i14 ], [ 0, %Func_occurrences.exit ]
  %tmp4_v.i27.i.i16 = shl i32 %storemerge13.i15, 2
  %55 = load i32, i32* %30, align 16
  %tmp0_v3.i30.i.i17 = add i32 %55, %tmp4_v.i27.i.i16
  %56 = inttoptr i32 %tmp0_v3.i30.i.i17 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %28, align 8
  %.not.i.i.i18 = icmp eq i32 %58, %57
  br i1 %.not.i.i.i18, label %BB_8049310.i.i12, label %BB_8049314.i.i14

Func_occurrences.exit24:                          ; preds = %BB_8049314.i.i14, %Func_occurrences.exit
  %r_edx.0.lcssa.i20 = phi i32 [ %r_edx.0.lcssa.i, %Func_occurrences.exit ], [ %tmp4_v.i27.i.i16, %BB_8049314.i.i14 ]
  %59 = load i32, i32* %34, align 16
  %60 = load i32, i32* %32, align 8
  %tmp2_v.i31.i = add i32 %60, -88
  %61 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 %59, i32* %61, align 4
  %tmp2_v2.i33.i = add i32 %60, -92
  %62 = inttoptr i32 %tmp2_v2.i33.i to i32*
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %29, align 4
  store i32 134520840, i32* %30, align 16
  store i32 134517406, i32* %31, align 4
  %64 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i18.i, i32 inreg noundef %r_edx.0.lcssa.i20, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %65 = lshr i64 %64, 32
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %61, align 4
  store i32 %67, i32* %29, align 4
  store i32 134520872, i32* %30, align 16
  store i32 134517427, i32* %31, align 4
  %68 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i18.i, i32 inreg noundef %66, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @count_occurrencesm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
