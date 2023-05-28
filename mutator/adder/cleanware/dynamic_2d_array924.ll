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
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @dynamic_2d_array924(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
  %tmp2_v.i6.i = add i32 %arg_esp, 4
  %tmp0_v.i7.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i8.i = add i32 %tmp0_v.i7.i, -4
  %3 = inttoptr i32 %tmp2_v3.i8.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i7.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i7.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i7.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i7.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v.i6.i, i32* %7, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i7.i, -68
  %8 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517202, i32* %8, align 4
  %tmp2_v.i21.i = add i32 %tmp0_v.i7.i, -44
  %9 = inttoptr i32 %tmp2_v.i21.i to i32*
  store i32 3, i32* %9, align 4
  %tmp2_v1.i22.i = add i32 %tmp0_v.i7.i, -40
  %10 = inttoptr i32 %tmp2_v1.i22.i to i32*
  store i32 3, i32* %10, align 8
  %11 = load i32, i32* %9, align 4
  %tmp0_v4.i24.i = shl i32 %11, 2
  %tmp2_v6.i26.i = add i32 %tmp0_v.i7.i, -80
  %12 = inttoptr i32 %tmp2_v6.i26.i to i32*
  store i32 %tmp0_v4.i24.i, i32* %12, align 16
  %tmp2_v7.i27.i = add i32 %tmp0_v.i7.i, -84
  %13 = inttoptr i32 %tmp2_v7.i27.i to i32*
  store i32 134517237, i32* %13, align 4
  %arg.i.i = load i32, i32* %12, align 16
  %14 = tail call i32 @malloc(i32 %arg.i.i)
  %mrv.i = insertvalue { i32, i32 } undef, i32 %tmp2_v6.i26.i, 0
  %tmp2_v.i4.i = add i32 %tmp0_v.i7.i, -36
  %15 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %14, i32* %15, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i7.i, -52
  %16 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %BB_8049204.i, label %BB_8049234.i

BB_8049234.i:                                     ; preds = %BB_8049204.i, %0
  %mrv.i.pn.lcssa = phi { i32, i32 } [ %mrv.i, %0 ], [ %.pn, %BB_8049204.i ]
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i.pn.lcssa, 0
  %tmp2_v.i29.i = add i32 %tmp0_v.i7.i, -48
  %19 = inttoptr i32 %tmp2_v.i29.i to i32*
  store i32 0, i32* %19, align 16
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = inttoptr i32 %r_esp.0.in.le to i32*
  %tmp2_v7.i54.i = add i32 %r_esp.0.in.le, -4
  %23 = inttoptr i32 %tmp2_v7.i54.i to i32*
  br i1 %21, label %BB_804923D.i, label %.exit

BB_804923D.i:                                     ; preds = %BB_804923D.i, %BB_8049234.i
  %storemerge314 = phi i32 [ %tmp0_v2.i15.i, %BB_804923D.i ], [ 0, %BB_8049234.i ]
  %tmp4_v.i.i = shl i32 %storemerge314, 2
  %24 = load i32, i32* %15, align 4
  %tmp0_v3.i49.i = add i32 %24, %tmp4_v.i.i
  %25 = inttoptr i32 %tmp0_v3.i49.i to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %22, align 4
  store i32 134517335, i32* %23, align 4
  %arg.i.i5 = load i32, i32* %22, align 4
  tail call void @free(i32 %arg.i.i5)
  %27 = load i32, i32* %19, align 16
  %tmp0_v2.i15.i = add i32 %27, 1
  store i32 %tmp0_v2.i15.i, i32* %19, align 16
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %tmp0_v2.i15.i, %28
  br i1 %29, label %BB_804923D.i, label %.exit

BB_8049204.i:                                     ; preds = %BB_8049204.i, %0
  %r_esp.0.in13 = phi i32 [ %r_esp.0.in, %BB_8049204.i ], [ %tmp2_v6.i26.i, %0 ]
  %.pn912 = phi i32 [ %34, %BB_8049204.i ], [ %14, %0 ]
  %mrv.i.pn11 = phi { i32, i32 } [ %.pn, %BB_8049204.i ], [ %mrv.i, %0 ]
  %storemerge10 = phi i32 [ %tmp0_v2.i37.i, %BB_8049204.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %mrv.i.pn11, i32 %.pn912, 1
  %30 = load i32, i32* %10, align 8
  %tmp0_v1.i58.i = shl i32 %30, 2
  %tmp4_v.i61.i = shl i32 %storemerge10, 2
  %31 = load i32, i32* %15, align 4
  %tmp2_v6.i64.i = add i32 %31, %tmp4_v.i61.i
  %32 = inttoptr i32 %r_esp.0.in13 to i32*
  store i32 %tmp0_v1.i58.i, i32* %32, align 4
  %tmp2_v9.i66.i = add i32 %r_esp.0.in13, -4
  %33 = inttoptr i32 %tmp2_v9.i66.i to i32*
  store i32 134517283, i32* %33, align 4
  %arg.i.i6 = load i32, i32* %32, align 4
  %34 = tail call i32 @malloc(i32 %arg.i.i6)
  %35 = inttoptr i32 %tmp2_v6.i64.i to i32*
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %tmp0_v2.i37.i = add i32 %36, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i.pn11, 0
  store i32 %tmp0_v2.i37.i, i32* %16, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %tmp0_v2.i37.i, %37
  br i1 %38, label %BB_8049204.i, label %BB_8049234.i

.exit:                                            ; preds = %BB_804923D.i, %BB_8049234.i
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %22, align 4
  store i32 134517361, i32* %23, align 4
  %arg.i.i8 = load i32, i32* %22, align 4
  tail call void @free(i32 %arg.i.i8)
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
