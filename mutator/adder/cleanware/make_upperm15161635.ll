; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !6
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !6
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !6
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !6
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
define internal fastcc void @make_upperm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i6.i = add i32 %arg_esp, 4
  %tmp0_v.i7.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i8.i = add i32 %tmp0_v.i7.i, -4
  %2 = inttoptr i32 %tmp2_v3.i8.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i9.i = add i32 %tmp0_v.i7.i, -8
  %3 = inttoptr i32 %tmp2_v4.i9.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i7.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i7.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i6.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i7.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i13.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i13.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i7.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i7.i, -60
  %10 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 1701670739, i32* %10, align 4
  %tmp2_v4.i18.i = add i32 %tmp0_v.i7.i, -56
  %11 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 1920234272, i32* %11, align 8
  %tmp2_v5.i19.i = add i32 %tmp0_v.i7.i, -52
  %12 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 543649385, i32* %12, align 4
  %tmp2_v6.i20.i = add i32 %tmp0_v.i7.i, -48
  %13 = inttoptr i32 %tmp2_v6.i20.i to i32*
  store i32 1752459639, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i7.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1851878688, i32* %14, align 4
  %tmp2_v8.i21.i = add i32 %tmp0_v.i7.i, -40
  %15 = inttoptr i32 %tmp2_v8.i21.i to i32*
  store i32 1869357177, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i7.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1668441463, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i7.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 543519585, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i7.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1414808908, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i7.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 5460549, i32* %19, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i7.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v3.i17.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i7.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517364, i32* %21, align 4
  %tmp2_v.i34.i.i = add i32 %tmp0_v.i7.i, -88
  %22 = inttoptr i32 %tmp2_v.i34.i.i to i32*
  store i32 %tmp2_v4.i9.i, i32* %22, align 8
  %tmp2_v1.i36.i.i = add i32 %tmp0_v.i7.i, -92
  %23 = inttoptr i32 %tmp2_v1.i36.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i39.i.i = add i32 %tmp0_v.i7.i, -116
  %24 = inttoptr i32 %tmp2_v2.i39.i.i to i32*
  store i32 134517430, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i7.i, -128
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i7.i, -132
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517447, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i7.i, -100
  %29 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i7.i, -104
  %30 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %29, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492D6.i.preheader.i, label %Func_make_upper.exit

BB_80492D6.i.preheader.i:                         ; preds = %.exit
  %mrv.i18.i = insertvalue { i32, i32 } undef, i32 %tmp2_v3.i.i.i, 0
  br label %BB_80492D6.i.i

BB_80492D6.i.i:                                   ; preds = %BB_80492D6.i.i, %BB_80492D6.i.preheader.i
  %r_esp.0.in26.i = phi i32 [ %r_esp.0.in.i, %BB_80492D6.i.i ], [ %tmp2_v3.i.i.i, %BB_80492D6.i.preheader.i ]
  %.pn2225.i = phi i32 [ %38, %BB_80492D6.i.i ], [ %28, %BB_80492D6.i.preheader.i ]
  %mrv.i18.pn24.i = phi { i32, i32 } [ %.pn.i, %BB_80492D6.i.i ], [ %mrv.i18.i, %BB_80492D6.i.preheader.i ]
  %storemerge23.i = phi i32 [ %tmp0_v7.i.i.i, %BB_80492D6.i.i ], [ 0, %BB_80492D6.i.preheader.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i18.pn24.i, i32 %.pn2225.i, 1
  %33 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %33, %storemerge23.i
  %34 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %35 = load i8, i8* %34, align 1
  %tmp0_v5.i.i.i = sext i8 %35 to i32
  %36 = inttoptr i32 %r_esp.0.in26.i to i32*
  store i32 %tmp0_v5.i.i.i, i32* %36, align 4
  %tmp2_v8.i.i.i = add i32 %r_esp.0.in26.i, -4
  %37 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517485, i32* %37, align 4
  %arg.i.i20.i = load i32, i32* %36, align 4
  %38 = tail call i32 @toupper(i32 %arg.i.i20.i)
  %39 = load i32, i32* %30, align 8
  %40 = load i32, i32* %20, align 16
  %tmp0_v4.i17.i.i = add i32 %40, %39
  %41 = trunc i32 %38 to i8
  %42 = inttoptr i32 %tmp0_v4.i17.i.i to i8*
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %30, align 8
  %tmp0_v7.i.i.i = add i32 %43, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i18.pn24.i, 0
  store i32 %tmp0_v7.i.i.i, i32* %30, align 8
  %44 = load i32, i32* %29, align 4
  %45 = icmp slt i32 %tmp0_v7.i.i.i, %44
  br i1 %45, label %BB_80492D6.i.i, label %Func_make_upper.exit

Func_make_upper.exit:                             ; preds = %BB_80492D6.i.i, %.exit
  %46 = load i32, i32* %22, align 8
  %tmp2_v.i.i = add i32 %46, -52
  store i32 %tmp2_v.i.i, i32* %20, align 16
  store i32 134517379, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  %47 = inttoptr i32 %arg.i.i to i8*
  %48 = tail call i32 @puts(i8* nonnull dereferenceable(1) %47)
  ret void
}

!0 = !{!"clang version 14.0.0"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 1, !"NumRegisterParameters", i32 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i32 0, i32 0, i32 0}

  tail call fastcc void @make_upperm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
