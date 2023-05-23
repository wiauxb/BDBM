; Mutation 654
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.648 = constant [15 x i8] c"SIZE_MAX: %zu\0a\00"
@str.649 = constant [14 x i8] c"_size_t: %zu\0a\00"
@str.650 = constant [10 x i8] c"_int: %d\0a\00"
@str.651 = constant [17 x i8] c"string[%d] = %c\0a\00"
@str.652 = constant [7 x i8] c"abcdef\00"
@str.653 = constant [7 x i8] c"abcdef\00"

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
define internal fastcc void @size_t654(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i13.i = add i32 %arg_esp, 4
  %tmp0_v.i14.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i16.i = add i32 %tmp0_v.i14.i, -4
  %3 = inttoptr i32 %tmp2_v3.i16.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i17.i = add i32 %tmp0_v.i14.i, -8
  %4 = inttoptr i32 %tmp2_v4.i17.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i19.i = add i32 %tmp0_v.i14.i, -12
  %5 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i21.i = add i32 %tmp0_v.i14.i, -16
  %6 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 %tmp2_v.i13.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i14.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v1.i55.i = add i32 %tmp0_v.i14.i, -32
  %8 = inttoptr i32 %tmp2_v1.i55.i to i32*
  %spi653 = ptrtoint[7 x i8]* @str.653 to i32
  store i32 %spi653, i32* %8, align 16
  %tmp2_v5.i60.i = add i32 %tmp0_v.i14.i, -64
  %9 = inttoptr i32 %tmp2_v5.i60.i to i32*
  %spi652 = ptrtoint[7 x i8]* @str.652 to i32
  store i32 %spi652, i32* %9, align 16
  %tmp2_v6.i61.i = add i32 %tmp0_v.i14.i, -68
  %10 = inttoptr i32 %tmp2_v6.i61.i to i32*
  store i32 134517227, i32* %10, align 4
  %arg.i.i = load i32, i32* %9, align 16
  %11 = tail call i32 @strlen(i32 %arg.i.i)
  %mrv.i1 = insertvalue { i32, i32 } undef, i32 %tmp2_v5.i60.i, 0
  %tmp2_v.i10.i = add i32 %tmp0_v.i14.i, -28
  %12 = inttoptr i32 %tmp2_v.i10.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v1.i11.i = add i32 %tmp0_v.i14.i, -36
  %13 = inttoptr i32 %tmp2_v1.i11.i to i32*
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %12, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %BB_80491FA.i, label %.exit

BB_80491FA.i:                                     ; preds = %BB_80491FA.i, %0
  %r_esp.0.in12 = phi i32 [ %r_esp.0.in, %BB_80491FA.i ], [ %tmp2_v5.i60.i, %0 ]
  %.pn711 = phi i32 [ %26, %BB_80491FA.i ], [ %11, %0 ]
  %mrv.i1.pn10 = phi { i32, i32 } [ %.pn, %BB_80491FA.i ], [ %mrv.i1, %0 ]
  %storemerge9 = phi i32 [ %tmp0_v2.i47.i, %BB_80491FA.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %mrv.i1.pn10, i32 %.pn711, 1
  %16 = load i32, i32* %8, align 16
  %tmp0_v3.i35.i = add i32 %16, %storemerge9
  %17 = inttoptr i32 %tmp0_v3.i35.i to i8*
  %18 = load i8, i8* %17, align 1
  %tmp0_v5.i.i = sext i8 %18 to i32
  %tmp2_v7.i39.i = add i32 %r_esp.0.in12, 8
  %19 = inttoptr i32 %tmp2_v7.i39.i to i32*
  store i32 %tmp0_v5.i.i, i32* %19, align 4
  %20 = load i32, i32* %13, align 4
  %tmp2_v10.i.i = add i32 %r_esp.0.in12, 4
  %21 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %20, i32* %21, align 4
  %22 = inttoptr i32 %r_esp.0.in12 to i32*
  %spi651 = ptrtoint[17 x i8]* @str.651 to i32
  store i32 %spi651, i32* %22, align 4
  %tmp2_v13.i.i = add i32 %r_esp.0.in12, -4
  %23 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517275, i32* %23, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i13.i, i32 inreg noundef %storemerge9, i32 noundef %r_esp.0.in12, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %25 = lshr i64 %24, 32
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %13, align 4
  %tmp0_v2.i47.i = add i32 %27, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i1.pn10, 0
  store i32 %tmp0_v2.i47.i, i32* %13, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %tmp0_v2.i47.i, %28
  br i1 %29, label %BB_80491FA.i, label %.exit.loopexit

.exit.loopexit:                                   ; preds = %BB_80491FA.i
  %30 = trunc i64 %25 to i32
  br label %.exit

.exit:                                            ; preds = %.exit.loopexit, %0
  %mrv.i1.pn.lcssa8 = phi { i32, i32 } [ %mrv.i1, %0 ], [ %.pn, %.exit.loopexit ]
  %r_edx.0.lcssa = phi i32 [ 0, %0 ], [ %30, %.exit.loopexit ]
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i1.pn.lcssa8, 0
  %tmp2_v.i2.i = add i32 %tmp0_v.i14.i, -24
  %31 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 -2147483648, i32* %31, align 8
  %tmp2_v3.i.i = add i32 %r_esp.0.in.le, 4
  %32 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 -2147483648, i32* %32, align 4
  %33 = inttoptr i32 %r_esp.0.in.le to i32*
  %spi650 = ptrtoint[10 x i8]* @str.650 to i32
  store i32 %spi650, i32* %33, align 4
  %tmp2_v6.i.i = add i32 %r_esp.0.in.le, -4
  %34 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134517315, i32* %34, align 4
  %35 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i13.i, i32 inreg noundef %r_edx.0.lcssa, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i32
  %tmp2_v.i25.i = add i32 %tmp0_v.i14.i, -20
  %38 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 -2147483648, i32* %38, align 4
  store i32 -2147483648, i32* %32, align 4
  %spi649 = ptrtoint[14 x i8]* @str.649 to i32
  store i32 %spi649, i32* %33, align 4
  store i32 134517343, i32* %34, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i13.i, i32 inreg noundef %37, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  store i32 -1, i32* %32, align 4
  %spi648 = ptrtoint[15 x i8]* @str.648 to i32
  store i32 %spi648, i32* %33, align 4
  store i32 134517363, i32* %34, align 4
  %42 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i13.i, i32 inreg noundef %41, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
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

  tail call fastcc void @size_t654(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
