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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @reverse_a_stringm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i9.i = add i32 %tmp0_v.i8.i, -4
  %2 = inttoptr i32 %tmp2_v3.i9.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i8.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i8.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i8.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i7.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i8.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i13.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i13.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i17.i = add i32 %tmp0_v.i8.i, -20
  %9 = inttoptr i32 %tmp2_v2.i17.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i8.i, -48
  %10 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 543518287, i32* %10, align 16
  %tmp2_v4.i19.i = add i32 %tmp0_v.i8.i, -44
  %11 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 1818324339, i32* %11, align 4
  %tmp2_v5.i20.i = add i32 %tmp0_v.i8.i, -40
  %12 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 1953701996, i32* %12, align 8
  %tmp2_v6.i21.i = add i32 %tmp0_v.i8.i, -36
  %13 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 1713401957, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i8.i, -32
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 673215087, i32* %14, align 16
  %tmp2_v8.i22.i = add i32 %tmp0_v.i8.i, -28
  %15 = inttoptr i32 %tmp2_v8.i22.i to i32*
  store i32 1830824289, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i8.i, -24
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3042913, i32* %16, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i8.i, -64
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i18.i, i32* %17, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i8.i, -68
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517311, i32* %18, align 4
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i8.i, -72
  %19 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %19, align 8
  %tmp2_v1.i19.i.i = add i32 %tmp0_v.i8.i, -76
  %20 = inttoptr i32 %tmp2_v1.i19.i.i to i32*
  store i32 134529024, i32* %20, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i8.i, -100
  %21 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517377, i32* %21, align 4
  %22 = load i32, i32* %17, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i8.i, -112
  %23 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %22, i32* %23, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i8.i, -116
  %24 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517395, i32* %24, align 4
  %arg.i.i.i = load i32, i32* %23, align 16
  %25 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i12.i.i = add i32 %tmp0_v.i8.i, -88
  %26 = inttoptr i32 %tmp2_v.i12.i.i to i32*
  store i32 %25, i32* %26, align 8
  %tmp0_v3.i.i.i = lshr i32 %25, 31
  %tmp0_v4.i.i.i = add i32 %tmp0_v3.i.i.i, %25
  %tmp0_v5.i.i.i = ashr i32 %tmp0_v4.i.i.i, 1
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i8.i, -84
  %27 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %tmp0_v5.i.i.i, i32* %27, align 4
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i8.i, -92
  %28 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %27, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_80492B1.i.lr.ph.i, label %Func_reverse.exit

BB_80492B1.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i8.i, -93
  %31 = inttoptr i32 %tmp2_v5.i.i.i to i8*
  br label %BB_80492B1.i.i

BB_80492B1.i.i:                                   ; preds = %BB_80492B1.i.i, %BB_80492B1.i.lr.ph.i
  %storemerge14.i = phi i32 [ 0, %BB_80492B1.i.lr.ph.i ], [ %tmp0_v33.i.i.i, %BB_80492B1.i.i ]
  %32 = load i32, i32* %17, align 16
  %tmp0_v3.i26.i.i = add i32 %32, %storemerge14.i
  %33 = inttoptr i32 %tmp0_v3.i26.i.i to i8*
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %31, align 1
  %35 = load i32, i32* %26, align 8
  %36 = load i32, i32* %28, align 4
  %37 = xor i32 %36, -1
  %tmp2_v10.i.i.i = add i32 %35, %37
  %38 = load i32, i32* %17, align 16
  %tmp0_v13.i.i.i = add i32 %tmp2_v10.i.i.i, %38
  %tmp0_v18.i.i.i = add i32 %38, %36
  %39 = inttoptr i32 %tmp0_v13.i.i.i to i8*
  %40 = load i8, i8* %39, align 1
  %41 = inttoptr i32 %tmp0_v18.i.i.i to i8*
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %26, align 8
  %43 = load i32, i32* %28, align 4
  %44 = xor i32 %43, -1
  %tmp2_v25.i.i.i = add i32 %42, %44
  %45 = load i32, i32* %17, align 16
  %tmp0_v28.i.i.i = add i32 %tmp2_v25.i.i.i, %45
  %46 = load i8, i8* %31, align 1
  %47 = inttoptr i32 %tmp0_v28.i.i.i to i8*
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %28, align 4
  %tmp0_v33.i.i.i = add i32 %48, 1
  store i32 %tmp0_v33.i.i.i, i32* %28, align 4
  %49 = load i32, i32* %27, align 4
  %50 = icmp slt i32 %tmp0_v33.i.i.i, %49
  br i1 %50, label %BB_80492B1.i.i, label %Func_reverse.exit

Func_reverse.exit:                                ; preds = %BB_80492B1.i.i, %.exit
  %51 = load i32, i32* %19, align 8
  %tmp2_v.i.i = add i32 %51, -40
  store i32 %tmp2_v.i.i, i32* %17, align 16
  store i32 134517326, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 16
  %52 = inttoptr i32 %arg.i.i to i8*
  %53 = tail call i32 @puts(i8* nonnull dereferenceable(1) %52)
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

  tail call fastcc void @reverse_a_stringm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind