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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @toupper(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @switchm15161636(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
label_1.i14.i:
  %tmp2_v.i53.i = add i32 %arg_esp, 4
  %tmp0_v.i54.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i55.i = add i32 %tmp0_v.i54.i, -4
  %2 = inttoptr i32 %tmp2_v3.i55.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i56.i = add i32 %tmp0_v.i54.i, -8
  %3 = inttoptr i32 %tmp2_v4.i56.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i58.i = add i32 %tmp0_v.i54.i, -12
  %4 = inttoptr i32 %tmp2_v5.i58.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i60.i = add i32 %tmp0_v.i54.i, -16
  %5 = inttoptr i32 %tmp2_v6.i60.i to i32*
  store i32 %tmp2_v.i53.i, i32* %5, align 16
  %tmp2_v8.i62.i = add i32 %tmp0_v.i54.i, -68
  %6 = inttoptr i32 %tmp2_v8.i62.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i11.i = add i32 %tmp0_v.i54.i, -20
  %9 = inttoptr i32 %tmp2_v2.i11.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i54.i, -52
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i54.i, -80
  %11 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134520840, i32* %11, align 16
  %tmp2_v2.i.i = add i32 %tmp0_v.i54.i, -84
  %12 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517350, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = inttoptr i32 %arg.i.i to i8*
  %14 = tail call i32 @puts(i8* nonnull dereferenceable(1) %13)
  store i32 134520848, i32* %11, align 16
  store i32 134517368, i32* %12, align 4
  %arg.i.i3 = load i32, i32* %11, align 16
  %15 = inttoptr i32 %arg.i.i3 to i8*
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) %15)
  store i32 134520874, i32* %11, align 16
  store i32 134517426, i32* %12, align 4
  %arg.i.i4 = load i32, i32* %11, align 16
  %17 = inttoptr i32 %arg.i.i4 to i8*
  %18 = tail call i32 @puts(i8* nonnull dereferenceable(1) %17)
  %tmp2_v.i33.i = add i32 %tmp0_v.i54.i, -43
  %19 = inttoptr i32 %tmp2_v.i33.i to i32*
  store i32 1096966497, i32* %19, align 4
  %tmp2_v1.i34.i = add i32 %tmp0_v.i54.i, -39
  %20 = inttoptr i32 %tmp2_v1.i34.i to i32*
  store i32 1734763876, i32* %20, align 4
  %tmp2_v2.i35.i = add i32 %tmp0_v.i54.i, -35
  %21 = inttoptr i32 %tmp2_v2.i35.i to i32*
  store i32 1265256808, i32* %21, align 4
  %tmp2_v3.i36.i = add i32 %tmp0_v.i54.i, -31
  %22 = inttoptr i32 %tmp2_v3.i36.i to i32*
  store i32 1867402604, i32* %22, align 4
  %tmp2_v4.i37.i = add i32 %tmp0_v.i54.i, -27
  %23 = inttoptr i32 %tmp2_v4.i37.i to i32*
  store i32 1934782800, i32* %23, align 4
  %tmp2_v5.i38.i = add i32 %tmp0_v.i54.i, -23
  %24 = inttoptr i32 %tmp2_v5.i38.i to i16*
  store i16 21844, i16* %24, align 2
  %tmp2_v6.i.i = add i32 %tmp0_v.i54.i, -21
  %25 = inttoptr i32 %tmp2_v6.i.i to i8*
  store i8 0, i8* %25, align 1
  store i32 %tmp2_v.i33.i, i32* %11, align 16
  store i32 134517486, i32* %12, align 4
  %arg.i.i5 = load i32, i32* %11, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i5)
  %mrv.i6 = insertvalue { i32, i32 } undef, i32 %tmp2_v1.i.i, 0
  %tmp2_v.i66.i = add i32 %tmp0_v.i54.i, -48
  %27 = inttoptr i32 %tmp2_v.i66.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v1.i67.i = add i32 %tmp0_v.i54.i, -64
  %28 = inttoptr i32 %tmp2_v1.i67.i to i32*
  store i32 0, i32* %28, align 16
  %tmp2_v2.i68.i = add i32 %tmp0_v.i54.i, -60
  %29 = inttoptr i32 %tmp2_v2.i68.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v3.i69.i = add i32 %tmp0_v.i54.i, -56
  %30 = inttoptr i32 %tmp2_v3.i69.i to i32*
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %27, align 16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_804930B.i, label %BB_8049350.i

BB_8049344.i:                                     ; preds = %BB_804930B.i, %BB_8049340.i
  %33 = load i32, i32* %30, align 8
  %tmp0_v1.i.i = add i32 %33, 1
  store i32 %tmp0_v1.i.i, i32* %30, align 8
  %r_esp.0.in = extractvalue { i32, i32 } %.pn15.pn, 0
  %34 = load i32, i32* %27, align 16
  %35 = icmp slt i32 %tmp0_v1.i.i, %34
  br i1 %35, label %BB_804930B.i, label %BB_8049350.i

BB_8049340.i:                                     ; preds = %BB_804930B.i, %BB_804933C.i
  %36 = load i32, i32* %29, align 4
  %tmp0_v1.i18.i = add i32 %36, 1
  store i32 %tmp0_v1.i18.i, i32* %29, align 4
  br label %BB_8049344.i

BB_8049350.i:                                     ; preds = %BB_8049344.i, %label_1.i14.i
  %.pn.pn.lcssa = phi { i32, i32 } [ %mrv.i6, %label_1.i14.i ], [ %.pn15, %BB_8049344.i ]
  %r_edx.0.lcssa = phi i32 [ 0, %label_1.i14.i ], [ %tmp2_v.i33.i, %BB_8049344.i ]
  %r_esp.0.in.le = extractvalue { i32, i32 } %.pn.pn.lcssa, 0
  %37 = load i32, i32* %29, align 4
  %tmp2_v2.i44.i = add i32 %r_esp.0.in.le, 8
  %38 = inttoptr i32 %tmp2_v2.i44.i to i32*
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %28, align 16
  %tmp2_v5.i47.i = add i32 %r_esp.0.in.le, 4
  %40 = inttoptr i32 %tmp2_v5.i47.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = inttoptr i32 %r_esp.0.in.le to i32*
  store i32 134520898, i32* %41, align 4
  %tmp2_v8.i51.i = add i32 %r_esp.0.in.le, -4
  %42 = inttoptr i32 %tmp2_v8.i51.i to i32*
  store i32 134517605, i32* %42, align 4
  %43 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i53.i, i32 inreg noundef %r_edx.0.lcssa, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_804933C.i:                                     ; preds = %BB_804930B.i
  %44 = load i32, i32* %28, align 16
  %tmp0_v1.i107.i = add i32 %44, 1
  store i32 %tmp0_v1.i107.i, i32* %28, align 16
  br label %BB_8049340.i

BB_804930B.i:                                     ; preds = %BB_8049344.i, %label_1.i14.i
  %r_esp.0.in16 = phi i32 [ %r_esp.0.in, %BB_8049344.i ], [ %tmp2_v1.i.i, %label_1.i14.i ]
  %.pn15.pn = phi { i32, i32 } [ %.pn15, %BB_8049344.i ], [ %mrv.i6, %label_1.i14.i ]
  %.pn18 = phi i32 [ %49, %BB_8049344.i ], [ %26, %label_1.i14.i ]
  %storemerge14 = phi i32 [ %tmp0_v1.i.i, %BB_8049344.i ], [ 0, %label_1.i14.i ]
  %.pn15 = insertvalue { i32, i32 } %.pn15.pn, i32 %.pn18, 1
  %tmp0_v2.i133.i = add i32 %storemerge14, %tmp2_v.i33.i
  %45 = inttoptr i32 %tmp0_v2.i133.i to i8*
  %46 = load i8, i8* %45, align 1
  %tmp0_v4.i135.i = sext i8 %46 to i32
  %47 = inttoptr i32 %r_esp.0.in16 to i32*
  store i32 %tmp0_v4.i135.i, i32* %47, align 4
  %tmp2_v7.i139.i = add i32 %r_esp.0.in16, -4
  %48 = inttoptr i32 %tmp2_v7.i139.i to i32*
  store i32 134517538, i32* %48, align 4
  %arg.i.i8 = load i32, i32* %47, align 4
  %49 = tail call i32 @toupper(i32 %arg.i.i8)
  %tmp0_v1.i79.i = shl i32 %49, 2
  %tmp2_v1.i101.i = add i32 %tmp0_v1.i79.i, 134520656
  %50 = inttoptr i32 %tmp2_v1.i101.i to i32*
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %error.i [
    i32 -11460, label %BB_804933C.i
    i32 -11456, label %BB_8049340.i
    i32 -11452, label %BB_8049344.i
  ]

error.i:                                          ; preds = %BB_804930B.i
  unreachable
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

  tail call fastcc void @switchm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
