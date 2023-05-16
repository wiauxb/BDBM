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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @check_substringm15161636(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_8049247.exit.i:
  %tmp2_v.i29.i = add i32 %arg_esp, 4
  %tmp0_v.i30.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i32.i = add i32 %tmp0_v.i30.i, -4
  %2 = inttoptr i32 %tmp2_v3.i32.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i33.i = add i32 %tmp0_v.i30.i, -8
  %3 = inttoptr i32 %tmp2_v4.i33.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i35.i = add i32 %tmp0_v.i30.i, -12
  %4 = inttoptr i32 %tmp2_v5.i35.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i37.i = add i32 %tmp0_v.i30.i, -16
  %5 = inttoptr i32 %tmp2_v6.i37.i to i32*
  store i32 %tmp2_v.i29.i, i32* %5, align 16
  %tmp2_v8.i38.i = add i32 %tmp0_v.i30.i, -68
  %6 = inttoptr i32 %tmp2_v8.i38.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i16.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i16.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i20.i = add i32 %tmp0_v.i30.i, -20
  %9 = inttoptr i32 %tmp2_v2.i20.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i30.i, -44
  %10 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i30.i, -40
  %11 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 544434464, i32* %11, align 8
  %tmp2_v5.i23.i = add i32 %tmp0_v.i30.i, -36
  %12 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 1948285293, i32* %12, align 4
  %tmp2_v6.i24.i = add i32 %tmp0_v.i30.i, -32
  %13 = inttoptr i32 %tmp2_v6.i24.i to i32*
  store i32 544502629, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i30.i, -28
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1769108595, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i30.i, -24
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 3041134, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i30.i, -49
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1953719668, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i30.i, -45
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 1
  %tmp2_v13.i.i = add i32 %tmp0_v.i30.i, -76
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i21.i, i32* %18, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i30.i, -80
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v9.i.i, i32* %19, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i30.i, -84
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517319, i32* %20, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i30.i, -88
  %21 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %tmp2_v4.i33.i, i32* %21, align 8
  %tmp2_v1.i5.i.i = add i32 %tmp0_v.i30.i, -92
  %22 = inttoptr i32 %tmp2_v1.i5.i.i to i32*
  store i32 134529024, i32* %22, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i30.i, -132
  %23 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517428, i32* %23, align 4
  %24 = load i32, i32* %18, align 4
  %tmp2_v3.i40.i.i = add i32 %tmp0_v.i30.i, -144
  %25 = inttoptr i32 %tmp2_v3.i40.i.i to i32*
  store i32 %24, i32* %25, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i30.i, -148
  %26 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517445, i32* %26, align 4
  %arg.i.i.i = load i32, i32* %25, align 16
  %27 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i18.i.i = add i32 %tmp0_v.i30.i, -108
  %28 = inttoptr i32 %tmp2_v.i18.i.i to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %19, align 16
  store i32 %29, i32* %25, align 16
  store i32 134517462, i32* %26, align 4
  %arg.i.i14.i = load i32, i32* %25, align 16
  %30 = tail call i32 @strlen(i32 %arg.i.i14.i)
  %tmp2_v.i10.i.i = add i32 %tmp0_v.i30.i, -104
  %31 = inttoptr i32 %tmp2_v.i10.i.i to i32*
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %28, align 4
  %tmp0_v4.i13.i.i = sub i32 1, %30
  %tmp0_v5.i.i.i = add i32 %tmp0_v4.i13.i.i, %32
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i30.i, -100
  %33 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %tmp0_v5.i.i.i, i32* %33, align 4
  %tmp2_v7.i14.i.i = add i32 %tmp0_v.i30.i, -116
  %34 = inttoptr i32 %tmp2_v7.i14.i.i to i32*
  %tmp2_v.i49.i.i = add i32 %tmp0_v.i30.i, -117
  %35 = inttoptr i32 %tmp2_v.i49.i.i to i8*
  %tmp2_v1.i50.i.i = add i32 %tmp0_v.i30.i, -112
  %36 = inttoptr i32 %tmp2_v1.i50.i.i to i32*
  br label %BB_8049342.i.i

BB_8049331.i.thread.i:                            ; preds = %BB_80492FE.i.i
  store i8 0, i8* %35, align 1
  br label %BB_804933E.i.i

BB_80492FE.i.i:                                   ; preds = %BB_8049329.i.i, %BB_8049342.i.i
  %storemerge922.i = phi i32 [ %tmp0_v1.i71.i.i, %BB_8049329.i.i ], [ 0, %BB_8049342.i.i ]
  %37 = load i32, i32* %19, align 16
  %tmp0_v3.i.i.i = add i32 %37, %storemerge922.i
  %38 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %39 = load i8, i8* %38, align 1
  %tmp0_v4.i.i.i = zext i8 %39 to i32
  %40 = load i32, i32* %34, align 4
  %tmp0_v9.i.i.i = add i32 %40, %storemerge922.i
  %41 = load i32, i32* %18, align 4
  %tmp0_v12.i.i.i = add i32 %41, %tmp0_v9.i.i.i
  %42 = inttoptr i32 %tmp0_v12.i.i.i to i8*
  %43 = load i8, i8* %42, align 1
  %tmp0_v13.i.i.i = zext i8 %43 to i32
  %cc_dst_v.i.i.i = sub nsw i32 %tmp0_v4.i.i.i, %tmp0_v13.i.i.i
  %tmp4_v.i.i.i1 = and i32 %cc_dst_v.i.i.i, 255
  %44 = icmp eq i32 %tmp4_v.i.i.i1, 0
  %tmp0_v1.i71.i.i = add nuw nsw i32 %storemerge922.i, 1
  br i1 %44, label %BB_8049329.i.i, label %BB_8049331.i.thread.i

BB_8049331.i.i:                                   ; preds = %BB_8049329.i.i, %BB_8049342.i.i
  %r_edx.2.lcssa.i = phi i32 [ %r_edx.1.i, %BB_8049342.i.i ], [ %tmp0_v4.i.i.i, %BB_8049329.i.i ]
  %r_ecx.2.lcssa.i = phi i32 [ %r_ecx.1.i, %BB_8049342.i.i ], [ %tmp0_v9.i.i.i, %BB_8049329.i.i ]
  %.pr.i = load i8, i8* %35, align 1
  %45 = icmp eq i8 %.pr.i, 0
  br i1 %45, label %BB_804933E.i.i, label %Func_is_substring.exit

BB_8049342.i.i:                                   ; preds = %BB_804933E.i.i, %Func_8049247.exit.i
  %storemerge.i = phi i32 [ 0, %Func_8049247.exit.i ], [ %tmp0_v1.i54.i.i, %BB_804933E.i.i ]
  %r_edx.1.i = phi i32 [ 0, %Func_8049247.exit.i ], [ %r_edx.018.i, %BB_804933E.i.i ]
  %r_ecx.1.i = phi i32 [ %tmp2_v.i29.i, %Func_8049247.exit.i ], [ %r_ecx.019.i, %BB_804933E.i.i ]
  store i32 %storemerge.i, i32* %34, align 4
  store i8 1, i8* %35, align 1
  store i32 0, i32* %36, align 16
  %46 = load i32, i32* %31, align 8
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %BB_80492FE.i.i, label %BB_8049331.i.i

BB_804933E.i.i:                                   ; preds = %BB_8049331.i.i, %BB_8049331.i.thread.i
  %r_ecx.019.i = phi i32 [ %tmp0_v9.i.i.i, %BB_8049331.i.thread.i ], [ %r_ecx.2.lcssa.i, %BB_8049331.i.i ]
  %r_edx.018.i = phi i32 [ %tmp0_v4.i.i.i, %BB_8049331.i.thread.i ], [ %r_edx.2.lcssa.i, %BB_8049331.i.i ]
  %48 = load i32, i32* %34, align 4
  %tmp0_v1.i54.i.i = add i32 %48, 1
  br label %BB_8049342.i.i

BB_8049329.i.i:                                   ; preds = %BB_80492FE.i.i
  store i32 %tmp0_v1.i71.i.i, i32* %36, align 16
  %49 = load i32, i32* %31, align 8
  %50 = icmp slt i32 %tmp0_v1.i71.i.i, %49
  br i1 %50, label %BB_80492FE.i.i, label %BB_8049331.i.i

Func_is_substring.exit:                           ; preds = %BB_8049331.i.i
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %21, align 8
  %tmp2_v.i11.i = add i32 %52, -36
  %tmp2_v1.i12.i = add i32 %tmp0_v.i30.i, -72
  %53 = inttoptr i32 %tmp2_v1.i12.i to i32*
  store i32 %tmp2_v.i11.i, i32* %53, align 8
  %tmp2_v2.i.i = add i32 %52, -41
  store i32 %tmp2_v2.i.i, i32* %18, align 4
  %tmp2_v4.i13.i = add i32 %51, -8184
  store i32 %tmp2_v4.i13.i, i32* %19, align 16
  store i32 134517349, i32* %20, align 4
  %54 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa.i, i32 inreg noundef %r_edx.2.lcssa.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @check_substringm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
