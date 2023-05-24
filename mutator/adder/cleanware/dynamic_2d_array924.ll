; Mutation 924
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack923 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @dynamic_2d_array924(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i10.i = add i32 %arg_esp, 4
  %tmp0_v.i11.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i11.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i13.i = add i32 %tmp0_v.i11.i, -8
  %4 = inttoptr i32 %tmp2_v4.i13.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i11.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i15.i = add i32 %tmp0_v.i11.i, -16
  %6 = inttoptr i32 %tmp2_v6.i15.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i16.i = add i32 %tmp0_v.i11.i, -20
  %7 = inttoptr i32 %tmp2_v7.i16.i to i32*
  store i32 %tmp2_v.i10.i, i32* %7, align 4
  %tmp2_v9.i17.i = add i32 %tmp0_v.i11.i, -68
  %8 = inttoptr i32 %tmp2_v9.i17.i to i32*
  store i32 134517202, i32* %8, align 4
  %tmp2_v.i57.i = add i32 %tmp0_v.i11.i, -44
  %9 = inttoptr i32 %tmp2_v.i57.i to i32*
  store i32 3, i32* %9, align 4
  %tmp2_v1.i58.i = add i32 %tmp0_v.i11.i, -40
  %10 = inttoptr i32 %tmp2_v1.i58.i to i32*
  store i32 3, i32* %10, align 8
  %11 = load i32, i32* %9, align 4
  %tmp0_v4.i61.i = shl i32 %11, 2
  %tmp2_v6.i64.i = add i32 %tmp0_v.i11.i, -80
  %12 = inttoptr i32 %tmp2_v6.i64.i to i32*
  store i32 %tmp0_v4.i61.i, i32* %12, align 16
  %tmp2_v7.i65.i = add i32 %tmp0_v.i11.i, -84
  %13 = inttoptr i32 %tmp2_v7.i65.i to i32*
  store i32 134517237, i32* %13, align 4
  %arg.i.i = load i32, i32* %12, align 16
  %14 = tail call i32 @malloc(i32 %arg.i.i)
  %mrv.i = insertvalue { i32, i32 } undef, i32 %tmp2_v6.i64.i, 0
  %tmp2_v.i81.i = add i32 %tmp0_v.i11.i, -36
  %15 = inttoptr i32 %tmp2_v.i81.i to i32*
  store i32 %14, i32* %15, align 4
  %tmp2_v1.i83.i = add i32 %tmp0_v.i11.i, -52
  %16 = inttoptr i32 %tmp2_v1.i83.i to i32*
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %BB_8049204.i, label %BB_8049234.i

BB_8049204.i:                                     ; preds = %BB_8049204.i, %0
  %r_esp.1.in11 = phi i32 [ %r_esp.1.in, %BB_8049204.i ], [ %tmp2_v6.i64.i, %0 ]
  %.pn710 = phi i32 [ %23, %BB_8049204.i ], [ %14, %0 ]
  %mrv.i.pn9 = phi { i32, i32 } [ %.pn, %BB_8049204.i ], [ %mrv.i, %0 ]
  %storemerge8 = phi i32 [ %tmp0_v2.i24.i, %BB_8049204.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %mrv.i.pn9, i32 %.pn710, 1
  %19 = load i32, i32* %10, align 8
  %tmp0_v1.i.i = shl i32 %19, 2
  %tmp4_v.i.i = shl i32 %storemerge8, 2
  %20 = load i32, i32* %15, align 4
  %tmp2_v6.i.i = add i32 %20, %tmp4_v.i.i
  %21 = inttoptr i32 %r_esp.1.in11 to i32*
  store i32 %tmp0_v1.i.i, i32* %21, align 4
  %tmp2_v9.i.i = add i32 %r_esp.1.in11, -4
  %22 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517283, i32* %22, align 4
  %arg.i.i3 = load i32, i32* %21, align 4
  %23 = tail call i32 @malloc(i32 %arg.i.i3)
  %24 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %16, align 4
  %tmp0_v2.i24.i = add i32 %25, 1
  %r_esp.1.in = extractvalue { i32, i32 } %mrv.i.pn9, 0
  store i32 %tmp0_v2.i24.i, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %tmp0_v2.i24.i, %26
  br i1 %27, label %BB_8049204.i, label %BB_8049234.i

BB_804923D.i:                                     ; preds = %BB_8049234.i, %BB_804923D.i
  %storemerge112 = phi i32 [ %tmp0_v2.i33.i, %BB_804923D.i ], [ 0, %BB_8049234.i ]
  %tmp4_v.i4.i = shl i32 %storemerge112, 2
  %28 = load i32, i32* %15, align 4
  %tmp0_v3.i5.i = add i32 %28, %tmp4_v.i4.i
  %29 = inttoptr i32 %tmp0_v3.i5.i to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %37, align 4
  store i32 134517335, i32* %38, align 4
  %arg.i.i5 = load i32, i32* %37, align 4
  tail call void @free(i32 %arg.i.i5)
  %31 = load i32, i32* %34, align 16
  %tmp0_v2.i33.i = add i32 %31, 1
  store i32 %tmp0_v2.i33.i, i32* %34, align 16
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %tmp0_v2.i33.i, %32
  br i1 %33, label %BB_804923D.i, label %.exit

BB_8049234.i:                                     ; preds = %BB_8049204.i, %0
  %mrv.i.pn.lcssa = phi { i32, i32 } [ %mrv.i, %0 ], [ %.pn, %BB_8049204.i ]
  %r_esp.1.in.le = extractvalue { i32, i32 } %mrv.i.pn.lcssa, 0
  %tmp2_v.i67.i = add i32 %tmp0_v.i11.i, -48
  %34 = inttoptr i32 %tmp2_v.i67.i to i32*
  store i32 0, i32* %34, align 16
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = inttoptr i32 %r_esp.1.in.le to i32*
  %tmp2_v7.i.i = add i32 %r_esp.1.in.le, -4
  %38 = inttoptr i32 %tmp2_v7.i.i to i32*
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

  tail call fastcc void @dynamic_2d_array924 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack923, i32 0, i32 8092) to i32)) nounwind
