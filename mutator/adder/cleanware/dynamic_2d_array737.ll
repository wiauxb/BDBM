; Mutation 737
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
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

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @dynamic_2d_array737(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i17.i = add i32 %arg_esp, 4
  %tmp0_v.i18.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i18.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i18.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i18.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i18.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i21.i = add i32 %tmp0_v.i18.i, -20
  %7 = inttoptr i32 %tmp2_v7.i21.i to i32*
  store i32 %tmp2_v.i17.i, i32* %7, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i18.i, -68
  %8 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517202, i32* %8, align 4
  %tmp2_v.i26.i = add i32 %tmp0_v.i18.i, -44
  %9 = inttoptr i32 %tmp2_v.i26.i to i32*
  store i32 3, i32* %9, align 4
  %tmp2_v1.i27.i = add i32 %tmp0_v.i18.i, -40
  %10 = inttoptr i32 %tmp2_v1.i27.i to i32*
  store i32 3, i32* %10, align 8
  %11 = load i32, i32* %9, align 4
  %tmp0_v4.i28.i = shl i32 %11, 2
  %tmp2_v6.i30.i = add i32 %tmp0_v.i18.i, -80
  %12 = inttoptr i32 %tmp2_v6.i30.i to i32*
  store i32 %tmp0_v4.i28.i, i32* %12, align 16
  %tmp2_v7.i31.i = add i32 %tmp0_v.i18.i, -84
  %13 = inttoptr i32 %tmp2_v7.i31.i to i32*
  store i32 134517237, i32* %13, align 4
  %arg.i.i = load i32, i32* %12, align 16
  %14 = tail call i32 @malloc(i32 %arg.i.i)
  %mrv.i = insertvalue { i32, i32 } undef, i32 %tmp2_v6.i30.i, 0
  %tmp2_v.i10.i = add i32 %tmp0_v.i18.i, -36
  %15 = inttoptr i32 %tmp2_v.i10.i to i32*
  store i32 %14, i32* %15, align 4
  %tmp2_v1.i11.i = add i32 %tmp0_v.i18.i, -52
  %16 = inttoptr i32 %tmp2_v1.i11.i to i32*
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %BB_8049204.i, label %BB_8049234.i

BB_804923D.i:                                     ; preds = %BB_8049234.i, %BB_804923D.i
  %storemerge112 = phi i32 [ %tmp0_v2.i56.i, %BB_804923D.i ], [ 0, %BB_8049234.i ]
  %tmp4_v.i35.i = shl i32 %storemerge112, 2
  %19 = load i32, i32* %15, align 4
  %tmp0_v3.i38.i = add i32 %19, %tmp4_v.i35.i
  %20 = inttoptr i32 %tmp0_v3.i38.i to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %37, align 4
  store i32 134517335, i32* %38, align 4
  %arg.i.i3 = load i32, i32* %37, align 4
  tail call void @free(i32 %arg.i.i3)
  %22 = load i32, i32* %34, align 16
  %tmp0_v2.i56.i = add i32 %22, 1
  store i32 %tmp0_v2.i56.i, i32* %34, align 16
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %tmp0_v2.i56.i, %23
  br i1 %24, label %BB_804923D.i, label %.exit

BB_8049204.i:                                     ; preds = %BB_8049204.i, %0
  %r_esp.1.in11 = phi i32 [ %r_esp.1.in, %BB_8049204.i ], [ %tmp2_v6.i30.i, %0 ]
  %.pn710 = phi i32 [ %29, %BB_8049204.i ], [ %14, %0 ]
  %mrv.i.pn9 = phi { i32, i32 } [ %.pn, %BB_8049204.i ], [ %mrv.i, %0 ]
  %storemerge8 = phi i32 [ %tmp0_v2.i70.i, %BB_8049204.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %mrv.i.pn9, i32 %.pn710, 1
  %25 = load i32, i32* %10, align 8
  %tmp0_v1.i80.i = shl i32 %25, 2
  %tmp4_v.i83.i = shl i32 %storemerge8, 2
  %26 = load i32, i32* %15, align 4
  %tmp2_v6.i86.i = add i32 %26, %tmp4_v.i83.i
  %27 = inttoptr i32 %r_esp.1.in11 to i32*
  store i32 %tmp0_v1.i80.i, i32* %27, align 4
  %tmp2_v9.i88.i = add i32 %r_esp.1.in11, -4
  %28 = inttoptr i32 %tmp2_v9.i88.i to i32*
  store i32 134517283, i32* %28, align 4
  %arg.i.i4 = load i32, i32* %27, align 4
  %29 = tail call i32 @malloc(i32 %arg.i.i4)
  %30 = inttoptr i32 %tmp2_v6.i86.i to i32*
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %16, align 4
  %tmp0_v2.i70.i = add i32 %31, 1
  %r_esp.1.in = extractvalue { i32, i32 } %mrv.i.pn9, 0
  store i32 %tmp0_v2.i70.i, i32* %16, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %tmp0_v2.i70.i, %32
  br i1 %33, label %BB_8049204.i, label %BB_8049234.i

BB_8049234.i:                                     ; preds = %BB_8049204.i, %0
  %mrv.i.pn.lcssa = phi { i32, i32 } [ %mrv.i, %0 ], [ %.pn, %BB_8049204.i ]
  %r_esp.1.in.le = extractvalue { i32, i32 } %mrv.i.pn.lcssa, 0
  %tmp2_v.i90.i = add i32 %tmp0_v.i18.i, -48
  %34 = inttoptr i32 %tmp2_v.i90.i to i32*
  store i32 0, i32* %34, align 16
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = inttoptr i32 %r_esp.1.in.le to i32*
  %tmp2_v7.i43.i = add i32 %r_esp.1.in.le, -4
  %38 = inttoptr i32 %tmp2_v7.i43.i to i32*
  br i1 %36, label %BB_804923D.i, label %.exit

.exit:                                            ; preds = %BB_8049234.i, %BB_804923D.i
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %37, align 4
  store i32 134517361, i32* %38, align 4
  %arg.i.i6 = load i32, i32* %37, align 4
  tail call void @free(i32 %arg.i.i6)
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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i32 0, i32 0, i32 0, i32 0}

  tail call fastcc void @dynamic_2d_array737(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
