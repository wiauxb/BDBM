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
define internal fastcc void @array_index_trickm15161636(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i51.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i51.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i55.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i55.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i56.i = add i32 %tmp0_v.i.i, -40
  %11 = inttoptr i32 %tmp2_v3.i56.i to i32*
  store i32 10, i32* %11, align 8
  %tmp2_v4.i57.i = add i32 %tmp0_v.i.i, -36
  %12 = inttoptr i32 %tmp2_v4.i57.i to i32*
  store i32 20, i32* %12, align 4
  %tmp2_v5.i58.i = add i32 %tmp0_v.i.i, -32
  %13 = inttoptr i32 %tmp2_v5.i58.i to i32*
  store i32 30, i32* %13, align 16
  %tmp2_v6.i59.i = add i32 %tmp0_v.i.i, -28
  %14 = inttoptr i32 %tmp2_v6.i59.i to i32*
  store i32 40, i32* %14, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -24
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 50, i32* %15, align 8
  %16 = load i32, i32* %13, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -60
  %17 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %16, i32* %17, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -64
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134520840, i32* %18, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -68
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517272, i32* %19, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %17, align 4
  store i32 134520851, i32* %18, align 16
  store i32 134517294, i32* %19, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %22, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %25 = lshr i64 %24, 32
  %tmp2_v.i32.i = add i32 %tmp0_v.i.i, -48
  %26 = inttoptr i32 %tmp2_v.i32.i to i32*
  store i32 0, i32* %26, align 16
  br label %BB_804923A.i

BB_8049251.i:                                     ; preds = %BB_804923A.i
  %mrv.i3 = insertvalue { i32, i32 } undef, i32 %tmp2_v13.i.i, 0
  %27 = trunc i64 %25 to i32
  %tmp2_v.i18.i = add i32 %tmp0_v.i.i, -44
  %28 = inttoptr i32 %tmp2_v.i18.i to i32*
  store i32 0, i32* %28, align 4
  br label %BB_804925A.i

BB_8049281.i:                                     ; preds = %BB_804925A.i
  %29 = trunc i64 %42 to i32
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i3.pn11, 0
  store i32 200, i32* %13, align 16
  %tmp2_v3.i24.i = add i32 %r_esp.0.in.le, 4
  %30 = inttoptr i32 %tmp2_v3.i24.i to i32*
  store i32 200, i32* %30, align 4
  %31 = inttoptr i32 %r_esp.0.in.le to i32*
  store i32 134520840, i32* %31, align 4
  %tmp2_v6.i28.i = add i32 %r_esp.0.in.le, -4
  %32 = inttoptr i32 %tmp2_v6.i28.i to i32*
  store i32 134517403, i32* %32, align 4
  %33 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %29, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_804925A.i:                                     ; preds = %BB_804925A.i, %BB_8049251.i
  %r_esp.0.in14 = phi i32 [ %tmp2_v13.i.i, %BB_8049251.i ], [ %r_esp.0.in, %BB_804925A.i ]
  %r_edx.013 = phi i32 [ %tmp2_v1.i87.i, %BB_8049251.i ], [ %43, %BB_804925A.i ]
  %.pn812 = phi i32 [ %27, %BB_8049251.i ], [ %43, %BB_804925A.i ]
  %mrv.i3.pn11 = phi { i32, i32 } [ %mrv.i3, %BB_8049251.i ], [ %.pn, %BB_804925A.i ]
  %storemerge10 = phi i32 [ 0, %BB_8049251.i ], [ %tmp0_v2.i5.i, %BB_804925A.i ]
  %.pn = insertvalue { i32, i32 } %mrv.i3.pn11, i32 %.pn812, 1
  %tmp4_v.i66.i = shl i32 %storemerge10, 2
  %tmp2_v2.i67.i = add i32 %tmp4_v.i66.i, %tmp2_v3.i56.i
  %34 = inttoptr i32 %tmp2_v2.i67.i to i32*
  %35 = load i32, i32* %34, align 4
  %tmp2_v5.i71.i = add i32 %r_esp.0.in14, 8
  %36 = inttoptr i32 %tmp2_v5.i71.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %28, align 4
  %tmp2_v8.i74.i = add i32 %r_esp.0.in14, 4
  %38 = inttoptr i32 %tmp2_v8.i74.i to i32*
  store i32 %37, i32* %38, align 4
  %39 = inttoptr i32 %r_esp.0.in14 to i32*
  store i32 134520862, i32* %39, align 4
  %tmp2_v11.i76.i = add i32 %r_esp.0.in14, -4
  %40 = inttoptr i32 %tmp2_v11.i76.i to i32*
  store i32 134517364, i32* %40, align 4
  %41 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.013, i32 noundef %r_esp.0.in14, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %28, align 4
  %tmp0_v2.i5.i = add i32 %44, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i3.pn11, 0
  store i32 %tmp0_v2.i5.i, i32* %28, align 4
  %45 = icmp slt i32 %tmp0_v2.i5.i, 5
  br i1 %45, label %BB_804925A.i, label %BB_8049281.i

BB_804923A.i:                                     ; preds = %BB_804923A.i, %0
  %storemerge19 = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i, %BB_804923A.i ]
  %tmp2_v1.i87.i = add nsw i32 %storemerge19, 4
  %tmp4_v.i91.i = shl i32 %storemerge19, 2
  %tmp2_v5.i92.i = add i32 %tmp4_v.i91.i, %tmp2_v3.i56.i
  %46 = inttoptr i32 %tmp2_v5.i92.i to i32*
  store i32 %tmp2_v1.i87.i, i32* %46, align 4
  %47 = load i32, i32* %26, align 16
  %tmp0_v8.i.i = add i32 %47, 1
  store i32 %tmp0_v8.i.i, i32* %26, align 16
  %48 = icmp slt i32 %tmp0_v8.i.i, 5
  br i1 %48, label %BB_804923A.i, label %BB_8049251.i
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

  tail call fastcc void @array_index_trickm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
