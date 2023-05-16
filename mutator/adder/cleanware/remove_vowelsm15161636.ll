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
define internal fastcc void @remove_vowelsm15161636(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i16.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i18.i = add i32 %tmp0_v.i16.i, -8
  %4 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i20.i = add i32 %tmp0_v.i16.i, -12
  %5 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i22.i = add i32 %tmp0_v.i16.i, -16
  %6 = inttoptr i32 %tmp2_v6.i22.i to i32*
  store i32 %tmp2_v.i15.i, i32* %6, align 16
  %tmp2_v8.i23.i = add i32 %tmp0_v.i16.i, -52
  %7 = inttoptr i32 %tmp2_v8.i23.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i60.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i60.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i64.i = add i32 %tmp0_v.i16.i, -20
  %10 = inttoptr i32 %tmp2_v2.i64.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i65.i = add i32 %tmp0_v.i16.i, -37
  %11 = inttoptr i32 %tmp2_v3.i65.i to i32*
  store i32 1936287828, i32* %11, align 4
  %tmp2_v4.i66.i = add i32 %tmp0_v.i16.i, -33
  %12 = inttoptr i32 %tmp2_v4.i66.i to i32*
  store i32 544434464, i32* %12, align 4
  %tmp2_v5.i67.i = add i32 %tmp0_v.i16.i, -29
  %13 = inttoptr i32 %tmp2_v5.i67.i to i32*
  store i32 543516788, i32* %13, align 4
  %tmp2_v6.i68.i = add i32 %tmp0_v.i16.i, -25
  %14 = inttoptr i32 %tmp2_v6.i68.i to i32*
  store i32 779706743, i32* %14, align 4
  %tmp2_v7.i69.i = add i32 %tmp0_v.i16.i, -21
  %15 = inttoptr i32 %tmp2_v7.i69.i to i8*
  store i8 0, i8* %15, align 1
  %tmp2_v8.i70.i = add i32 %tmp0_v.i16.i, -48
  %16 = inttoptr i32 %tmp2_v8.i70.i to i32*
  store i32 0, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i16.i, -44
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 0, i32* %17, align 4
  %tmp2_v1.i75.i = add i32 %tmp0_v.i16.i, -64
  %18 = inttoptr i32 %tmp2_v1.i75.i to i32*
  %tmp2_v2.i76.i = add i32 %tmp0_v.i16.i, -68
  %19 = inttoptr i32 %tmp2_v2.i76.i to i32*
  store i32 %tmp2_v3.i65.i, i32* %18, align 16
  store i32 134517414, i32* %19, align 4
  %arg.i.i9 = load i32, i32* %18, align 16
  %20 = tail call i32 @strlen(i32 %arg.i.i9)
  %21 = load i32, i32* %16, align 16
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %BB_8049232.i, label %BB_80492B0.i

BB_80492B0.i:                                     ; preds = %BB_8049296.i, %0
  %r_ecx.0.lcssa = phi i32 [ %tmp2_v.i15.i, %0 ], [ %r_ecx.1, %BB_8049296.i ]
  %23 = load i32, i32* %17, align 4
  %tmp0_v2.i11.i = add i32 %23, %tmp2_v3.i65.i
  %24 = inttoptr i32 %tmp0_v2.i11.i to i8*
  store i8 0, i8* %24, align 1
  %tmp2_v5.i.i = add i32 %tmp0_v.i16.i, -60
  %25 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp2_v3.i65.i, i32* %25, align 4
  store i32 134520840, i32* %18, align 16
  store i32 134517454, i32* %19, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa, i32 inreg noundef %tmp2_v3.i65.i, i32 noundef %tmp2_v1.i75.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_8049232.i:                                     ; preds = %BB_8049296.i, %0
  %27 = phi i32 [ %35, %BB_8049296.i ], [ %21, %0 ]
  %r_ecx.010 = phi i32 [ %r_ecx.1, %BB_8049296.i ], [ %tmp2_v.i15.i, %0 ]
  %tmp0_v2.i44.i = add i32 %27, %tmp2_v3.i65.i
  %28 = inttoptr i32 %tmp0_v2.i44.i to i8*
  %29 = load i8, i8* %28, align 1
  switch i8 %29, label %Func_804926E.exit.i [
    i8 97, label %BB_8049296.i
    i8 101, label %BB_8049296.i
    i8 105, label %BB_8049296.i
  ]

Func_804926E.exit.i:                              ; preds = %BB_8049232.i
  %30 = load i32, i32* %17, align 4
  %tmp0_v7.i85.i = add i32 %30, %tmp2_v3.i65.i
  %31 = inttoptr i32 %tmp0_v7.i85.i to i8*
  store i8 %29, i8* %31, align 1
  %32 = load i32, i32* %17, align 4
  %tmp0_v10.i.i = add i32 %32, 1
  store i32 %tmp0_v10.i.i, i32* %17, align 4
  %.pre = load i32, i32* %16, align 16
  br label %BB_8049296.i

BB_8049296.i:                                     ; preds = %Func_804926E.exit.i, %BB_8049232.i, %BB_8049232.i, %BB_8049232.i
  %33 = phi i32 [ %27, %BB_8049232.i ], [ %.pre, %Func_804926E.exit.i ], [ %27, %BB_8049232.i ], [ %27, %BB_8049232.i ]
  %r_ecx.1 = phi i32 [ %r_ecx.010, %BB_8049232.i ], [ %tmp2_v3.i65.i, %Func_804926E.exit.i ], [ %r_ecx.010, %BB_8049232.i ], [ %r_ecx.010, %BB_8049232.i ]
  %tmp0_v1.i107.i = add i32 %33, 1
  store i32 %tmp0_v1.i107.i, i32* %16, align 16
  store i32 %tmp2_v3.i65.i, i32* %18, align 16
  store i32 134517414, i32* %19, align 4
  %arg.i.i = load i32, i32* %18, align 16
  %34 = tail call i32 @strlen(i32 %arg.i.i)
  %35 = load i32, i32* %16, align 16
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %BB_8049232.i, label %BB_80492B0.i
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @remove_vowelsm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
