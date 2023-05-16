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
define internal fastcc void @bubble_sortm15161635(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i49.i = add i32 %arg_esp, 4
  %tmp0_v.i50.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i52.i = add i32 %tmp0_v.i50.i, -4
  %3 = inttoptr i32 %tmp2_v3.i52.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i53.i = add i32 %tmp0_v.i50.i, -8
  %4 = inttoptr i32 %tmp2_v4.i53.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i55.i = add i32 %tmp0_v.i50.i, -12
  %5 = inttoptr i32 %tmp2_v5.i55.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i57.i = add i32 %tmp0_v.i50.i, -16
  %6 = inttoptr i32 %tmp2_v6.i57.i to i32*
  store i32 %tmp2_v.i49.i, i32* %6, align 16
  %tmp2_v8.i59.i = add i32 %tmp0_v.i50.i, -84
  %7 = inttoptr i32 %tmp2_v8.i59.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i50.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i50.i, -60
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i50.i, -56
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 3, i32* %12, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i50.i, -52
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 7, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i50.i, -48
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %14, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i50.i, -44
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 2, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i50.i, -40
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 4, i32* %16, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i50.i, -36
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 9, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i50.i, -32
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 5, i32* %18, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i50.i, -28
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i50.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i50.i, -64
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i50.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 10, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i50.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i50.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517310, i32* %24, align 4
  %tmp2_v.i47.i.i = add i32 %tmp0_v.i50.i, -104
  %25 = inttoptr i32 %tmp2_v.i47.i.i to i32*
  store i32 %tmp2_v4.i53.i, i32* %25, align 8
  %tmp2_v1.i50.i.i = add i32 %tmp0_v.i50.i, -124
  %26 = inttoptr i32 %tmp2_v1.i50.i.i to i32*
  store i32 134517410, i32* %26, align 4
  %tmp2_v.i28.i.i = add i32 %tmp0_v.i50.i, -117
  %27 = inttoptr i32 %tmp2_v.i28.i.i to i8*
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i50.i, -116
  %28 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 0, i32* %28, align 4
  store i8 0, i8* %27, align 1
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i50.i, -112
  %29 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %29, align 16
  %tmp2_v5.i39.i.i = add i32 %tmp0_v.i50.i, -108
  %30 = inttoptr i32 %tmp2_v5.i39.i.i to i32*
  br label %BB_8049343.i.outer.i

BB_80492B2.i.i:                                   ; preds = %BB_8049355.i.i
  store i8 0, i8* %27, align 1
  store i32 0, i32* %29, align 16
  %31 = load i32, i32* %22, align 4
  %32 = load i32, i32* %28, align 4
  %33 = xor i32 %32, -1
  %tmp0_v3.i9.i.i = add i32 %31, %33
  %34 = icmp sgt i32 %tmp0_v3.i9.i.i, 0
  br i1 %34, label %BB_80492C2.i.i, label %BB_8049355.i.i

BB_804933F.i.i:                                   ; preds = %BB_80492EB.i.i, %BB_80492C2.i.i
  %35 = phi i32 [ %.lcssa.i, %BB_80492C2.i.i ], [ %.pre.i, %BB_80492EB.i.i ]
  %r_ecx.0.i = phi i32 [ %tmp4_v8.i.i.i, %BB_80492C2.i.i ], [ %tmp0_v8.i41.i.i, %BB_80492EB.i.i ]
  %r_edx.0.i = phi i32 [ %43, %BB_80492C2.i.i ], [ %tmp0_v26.i.i.i, %BB_80492EB.i.i ]
  %tmp0_v1.i.i.i = add i32 %35, 1
  store i32 %tmp0_v1.i.i.i, i32* %29, align 16
  br label %BB_8049343.i.outer.i

BB_8049343.i.outer.i:                             ; preds = %BB_804933F.i.i, %0
  %36 = phi i32 [ %tmp0_v1.i.i.i, %BB_804933F.i.i ], [ 0, %0 ]
  %r_ecx.1.ph.i = phi i32 [ %r_ecx.0.i, %BB_804933F.i.i ], [ %tmp2_v.i49.i, %0 ]
  %r_edx.1.ph.i = phi i32 [ %r_edx.0.i, %BB_804933F.i.i ], [ 0, %0 ]
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* %28, align 4
  %39 = xor i32 %38, -1
  %tmp0_v3.i9.i4.i = add i32 %37, %39
  %40 = icmp slt i32 %36, %tmp0_v3.i9.i4.i
  br i1 %40, label %BB_80492C2.i.i, label %BB_8049355.i.i

BB_80492C2.i.i:                                   ; preds = %BB_8049343.i.outer.i, %BB_80492B2.i.i
  %.lcssa.i = phi i32 [ %36, %BB_8049343.i.outer.i ], [ 0, %BB_80492B2.i.i ]
  %tmp4_v.i18.i.i = shl i32 %.lcssa.i, 2
  %41 = load i32, i32* %23, align 16
  %tmp0_v3.i20.i.i = add i32 %41, %tmp4_v.i18.i.i
  %42 = inttoptr i32 %tmp0_v3.i20.i.i to i32*
  %43 = load i32, i32* %42, align 4
  %tmp4_v8.i.i.i = add i32 %tmp4_v.i18.i.i, 4
  %tmp0_v11.i.i.i = add i32 %tmp4_v8.i.i.i, %41
  %44 = inttoptr i32 %tmp0_v11.i.i.i to i32*
  %45 = load i32, i32* %44, align 4
  %.not.i.i.i = icmp slt i32 %43, %45
  br i1 %.not.i.i.i, label %BB_80492EB.i.i, label %BB_804933F.i.i

BB_80492EB.i.i:                                   ; preds = %BB_80492C2.i.i
  store i32 %43, i32* %30, align 4
  %46 = load i32, i32* %29, align 16
  %tmp0_v8.i41.i.i = shl i32 %46, 2
  %47 = load i32, i32* %23, align 16
  %tmp4_v9.i.i.i = add i32 %47, %tmp0_v8.i41.i.i
  %tmp0_v12.i43.i.i = add i32 %tmp4_v9.i.i.i, 4
  %48 = inttoptr i32 %tmp0_v12.i43.i.i to i32*
  %49 = load i32, i32* %48, align 4
  %50 = inttoptr i32 %tmp4_v9.i.i.i to i32*
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %29, align 16
  %tmp0_v22.i.i.i = shl i32 %51, 2
  %tmp4_v23.i.i.i = add i32 %tmp0_v22.i.i.i, 4
  %52 = load i32, i32* %23, align 16
  %tmp0_v26.i.i.i = add i32 %tmp4_v23.i.i.i, %52
  %53 = load i32, i32* %30, align 4
  %54 = inttoptr i32 %tmp0_v26.i.i.i to i32*
  store i32 %53, i32* %54, align 4
  store i8 1, i8* %27, align 1
  %.pre.i = load i32, i32* %29, align 16
  br label %BB_804933F.i.i

BB_8049355.i.i:                                   ; preds = %BB_8049343.i.outer.i, %BB_80492B2.i.i
  %55 = phi i32 [ %32, %BB_80492B2.i.i ], [ %38, %BB_8049343.i.outer.i ]
  %tmp0_v1.i54.i.i = add i32 %55, 1
  store i32 %tmp0_v1.i54.i.i, i32* %28, align 4
  %56 = load i8, i8* %27, align 1
  %.not.i57.i.i = icmp eq i8 %56, 0
  br i1 %.not.i57.i.i, label %Func_bubble_sort.exit, label %BB_80492B2.i.i

Func_bubble_sort.exit:                            ; preds = %BB_8049355.i.i
  %57 = load i32, i32* %25, align 8
  %tmp2_v.i35.i = add i32 %57, -60
  %58 = inttoptr i32 %tmp2_v.i35.i to i32*
  %tmp2_v1.i17.i = add i32 %57, -56
  %59 = inttoptr i32 %tmp2_v1.i17.i to i32*
  store i32 0, i32* %58, align 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %BB_804924A.i.lr.ph, label %.exit

BB_804924A.i.lr.ph:                               ; preds = %Func_bubble_sort.exit
  %tmp2_v1.i.i = add i32 %57, -52
  %tmp2_v5.i7.i = add i32 %tmp0_v.i50.i, -88
  %62 = inttoptr i32 %tmp2_v5.i7.i to i32*
  br label %BB_804924A.i

BB_804924A.i:                                     ; preds = %BB_804924A.i, %BB_804924A.i.lr.ph
  %r_edx.06 = phi i32 [ %r_edx.1.ph.i, %BB_804924A.i.lr.ph ], [ %68, %BB_804924A.i ]
  %storemerge5 = phi i32 [ 0, %BB_804924A.i.lr.ph ], [ %tmp0_v2.i41.i, %BB_804924A.i ]
  %tmp4_v.i4.i = shl i32 %storemerge5, 2
  %tmp2_v2.i5.i = add i32 %tmp2_v1.i.i, %tmp4_v.i4.i
  %63 = inttoptr i32 %tmp2_v2.i5.i to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %58, align 4
  store i32 %65, i32* %22, align 4
  store i32 134520840, i32* %23, align 16
  store i32 134517348, i32* %24, align 4
  %66 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.ph.i, i32 inreg noundef %r_edx.06, i32 noundef %tmp2_v19.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %67 = lshr i64 %66, 32
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %58, align 4
  %tmp0_v2.i41.i = add i32 %69, 1
  store i32 %tmp0_v2.i41.i, i32* %58, align 4
  %70 = load i32, i32* %59, align 4
  %71 = icmp slt i32 %tmp0_v2.i41.i, %70
  br i1 %71, label %BB_804924A.i, label %.exit

.exit:                                            ; preds = %BB_804924A.i, %Func_bubble_sort.exit
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

  tail call fastcc void @bubble_sortm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
