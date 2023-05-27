; Mutation 797
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack796 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.795 = constant [7 x i8] c"s: %s\0a\00"

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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @remove_vowels797(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i102.i = add i32 %arg_esp, 4
  %tmp0_v.i103.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i105.i = add i32 %tmp0_v.i103.i, -4
  %3 = inttoptr i32 %tmp2_v3.i105.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i106.i = add i32 %tmp0_v.i103.i, -8
  %4 = inttoptr i32 %tmp2_v4.i106.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i108.i = add i32 %tmp0_v.i103.i, -12
  %5 = inttoptr i32 %tmp2_v5.i108.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i110.i = add i32 %tmp0_v.i103.i, -16
  %6 = inttoptr i32 %tmp2_v6.i110.i to i32*
  store i32 %tmp2_v.i102.i, i32* %6, align 16
  %tmp2_v8.i112.i = add i32 %tmp0_v.i103.i, -52
  %7 = inttoptr i32 %tmp2_v8.i112.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i64.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i68.i = add i32 %tmp0_v.i103.i, -20
  %10 = inttoptr i32 %tmp2_v2.i68.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i69.i = add i32 %tmp0_v.i103.i, -37
  %11 = inttoptr i32 %tmp2_v3.i69.i to i32*
  store i32 1936287828, i32* %11, align 4
  %tmp2_v4.i70.i = add i32 %tmp0_v.i103.i, -33
  %12 = inttoptr i32 %tmp2_v4.i70.i to i32*
  store i32 544434464, i32* %12, align 4
  %tmp2_v5.i71.i = add i32 %tmp0_v.i103.i, -29
  %13 = inttoptr i32 %tmp2_v5.i71.i to i32*
  store i32 543516788, i32* %13, align 4
  %tmp2_v6.i72.i = add i32 %tmp0_v.i103.i, -25
  %14 = inttoptr i32 %tmp2_v6.i72.i to i32*
  store i32 779706743, i32* %14, align 4
  %tmp2_v7.i73.i = add i32 %tmp0_v.i103.i, -21
  %15 = inttoptr i32 %tmp2_v7.i73.i to i8*
  store i8 0, i8* %15, align 1
  %tmp2_v8.i74.i = add i32 %tmp0_v.i103.i, -48
  %16 = inttoptr i32 %tmp2_v8.i74.i to i32*
  store i32 0, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i103.i, -44
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 0, i32* %17, align 4
  %tmp2_v1.i43.i = add i32 %tmp0_v.i103.i, -64
  %18 = inttoptr i32 %tmp2_v1.i43.i to i32*
  %tmp2_v2.i44.i = add i32 %tmp0_v.i103.i, -68
  %19 = inttoptr i32 %tmp2_v2.i44.i to i32*
  store i32 %tmp2_v3.i69.i, i32* %18, align 16
  store i32 134517414, i32* %19, align 4
  %arg.i.i7 = load i32, i32* %18, align 16
  %20 = tail call i32 @strlen(i32 %arg.i.i7)
  %21 = load i32, i32* %16, align 16
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %BB_8049232.i, label %BB_80492B0.i

Func_804926E.exit.i:                              ; preds = %BB_8049232.i
  %23 = load i32, i32* %17, align 4
  %tmp0_v7.i.i = add i32 %23, %tmp2_v3.i69.i
  %24 = inttoptr i32 %tmp0_v7.i.i to i8*
  store i8 %28, i8* %24, align 1
  %25 = load i32, i32* %17, align 4
  %tmp0_v10.i.i = add i32 %25, 1
  store i32 %tmp0_v10.i.i, i32* %17, align 4
  %.pre = load i32, i32* %16, align 16
  br label %BB_8049296.i

BB_8049232.i:                                     ; preds = %BB_8049296.i, %0
  %26 = phi i32 [ %35, %BB_8049296.i ], [ %21, %0 ]
  %r_ecx.08 = phi i32 [ %r_ecx.1, %BB_8049296.i ], [ %tmp2_v.i102.i, %0 ]
  %tmp0_v2.i11.i = add i32 %26, %tmp2_v3.i69.i
  %27 = inttoptr i32 %tmp0_v2.i11.i to i8*
  %28 = load i8, i8* %27, align 1
  switch i8 %28, label %Func_804926E.exit.i [
    i8 97, label %BB_8049296.i
    i8 101, label %BB_8049296.i
    i8 105, label %BB_8049296.i
  ]

BB_80492B0.i:                                     ; preds = %BB_8049296.i, %0
  %r_ecx.0.lcssa = phi i32 [ %tmp2_v.i102.i, %0 ], [ %r_ecx.1, %BB_8049296.i ]
  %29 = load i32, i32* %17, align 4
  %tmp0_v2.i29.i = add i32 %29, %tmp2_v3.i69.i
  %30 = inttoptr i32 %tmp0_v2.i29.i to i8*
  store i8 0, i8* %30, align 1
  %tmp2_v5.i.i = add i32 %tmp0_v.i103.i, -60
  %31 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp2_v3.i69.i, i32* %31, align 4
  %spi.bis.795 = ptrtoint[7 x i8]* @str.795 to i32
  store i32 %spi.bis.795, i32* %18, align 16
  store i32 134517454, i32* %19, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa, i32 inreg noundef %tmp2_v3.i69.i, i32 noundef %tmp2_v1.i43.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_8049296.i:                                     ; preds = %BB_8049232.i, %BB_8049232.i, %BB_8049232.i, %Func_804926E.exit.i
  %33 = phi i32 [ %26, %BB_8049232.i ], [ %.pre, %Func_804926E.exit.i ], [ %26, %BB_8049232.i ], [ %26, %BB_8049232.i ]
  %r_ecx.1 = phi i32 [ %r_ecx.08, %BB_8049232.i ], [ %tmp2_v3.i69.i, %Func_804926E.exit.i ], [ %r_ecx.08, %BB_8049232.i ], [ %r_ecx.08, %BB_8049232.i ]
  %tmp0_v1.i57.i = add i32 %33, 1
  store i32 %tmp0_v1.i57.i, i32* %16, align 16
  store i32 %tmp2_v3.i69.i, i32* %18, align 16
  store i32 134517414, i32* %19, align 4
  %arg.i.i = load i32, i32* %18, align 16
  %34 = tail call i32 @strlen(i32 %arg.i.i)
  %35 = load i32, i32* %16, align 16
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %BB_8049232.i, label %BB_80492B0.i
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

  tail call fastcc void @remove_vowels797 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack796, i32 0, i32 8092) to i32)) nounwind
