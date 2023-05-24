; Mutation 899
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack898 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @startswith899(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_804923A.exit.i:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -84
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i9.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i13.i = add i32 %tmp0_v.i3.i, -65
  %10 = inttoptr i32 %tmp2_v3.i13.i to i32*
  store i32 1702063954, i32* %10, align 4
  %tmp2_v4.i14.i = add i32 %tmp0_v.i3.i, -61
  %11 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 1918967923, i32* %11, align 4
  %tmp2_v5.i15.i = add i32 %tmp0_v.i3.i, -57
  %12 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 1701978213, i32* %12, align 4
  %tmp2_v6.i16.i = add i32 %tmp0_v.i3.i, -53
  %13 = inttoptr i32 %tmp2_v6.i16.i to i16*
  store i16 100, i16* %13, align 2
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -79
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1702063954, i32* %14, align 4
  %tmp2_v8.i17.i = add i32 %tmp0_v.i3.i, -75
  %15 = inttoptr i32 %tmp2_v8.i17.i to i16*
  store i16 115, i16* %15, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -92
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v7.i.i, i32* %16, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i3.i, -96
  %17 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i13.i, i32* %17, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i3.i, -100
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517306, i32* %18, align 4
  %19 = tail call fastcc { i32, i32, i32, i32 } @Func_startswith(i32 %tmp2_v14.i.i, i32 %tmp2_v4.i.i, i32 134529024)
  %20 = extractvalue { i32, i32, i32, i32 } %19, 0
  %21 = extractvalue { i32, i32, i32, i32 } %19, 2
  %22 = extractvalue { i32, i32, i32, i32 } %19, 3
  %tmp2_v.i28.i = add i32 %22, -8184
  %23 = inttoptr i32 %20 to i32*
  store i32 %tmp2_v.i28.i, i32* %23, align 4
  %tmp2_v2.i30.i = add i32 %20, -4
  %24 = inttoptr i32 %tmp2_v2.i30.i to i32*
  store i32 134517328, i32* %24, align 4
  %arg.i.i = load i32, i32* %23, align 4
  %25 = inttoptr i32 %arg.i.i to i8*
  %26 = tail call i32 @puts(i8* nonnull dereferenceable(1) %25)
  %tmp2_v.i70.i = add i32 %21, -65
  %27 = inttoptr i32 %tmp2_v.i70.i to i32*
  store i32 1819240790, i32* %27, align 4
  %tmp2_v1.i71.i = add i32 %21, -61
  %28 = inttoptr i32 %tmp2_v1.i71.i to i32*
  store i32 7566437, i32* %28, align 4
  %tmp2_v3.i75.i = add i32 %20, 4
  %29 = inttoptr i32 %tmp2_v3.i75.i to i32*
  store i32 %tmp2_v.i70.i, i32* %29, align 4
  %tmp2_v4.i76.i = add i32 %21, -57
  store i32 %tmp2_v4.i76.i, i32* %23, align 4
  store i32 134517381, i32* %24, align 4
  %30 = tail call fastcc { i32, i32, i32, i32 } @Func_startswith(i32 %tmp2_v2.i30.i, i32 %21, i32 %22)
  %31 = extractvalue { i32, i32, i32, i32 } %30, 0
  %32 = extractvalue { i32, i32, i32, i32 } %30, 2
  %33 = extractvalue { i32, i32, i32, i32 } %30, 3
  %tmp2_v.i82.i = add i32 %33, -8076
  %34 = inttoptr i32 %31 to i32*
  store i32 %tmp2_v.i82.i, i32* %34, align 4
  %tmp2_v2.i84.i = add i32 %31, -4
  %35 = inttoptr i32 %tmp2_v2.i84.i to i32*
  store i32 134517423, i32* %35, align 4
  %arg.i.i1 = load i32, i32* %34, align 4
  %36 = inttoptr i32 %arg.i.i1 to i8*
  %37 = tail call i32 @puts(i8* nonnull dereferenceable(1) %36)
  %tmp2_v.i34.i = add i32 %32, -43
  %38 = inttoptr i32 %tmp2_v.i34.i to i32*
  store i32 1702063954, i32* %38, align 4
  %tmp2_v1.i35.i = add i32 %32, -39
  %39 = inttoptr i32 %tmp2_v1.i35.i to i32*
  store i32 1918967923, i32* %39, align 4
  %tmp2_v2.i36.i = add i32 %32, -35
  %40 = inttoptr i32 %tmp2_v2.i36.i to i32*
  store i32 1701978213, i32* %40, align 4
  %tmp2_v3.i37.i = add i32 %32, -31
  %41 = inttoptr i32 %tmp2_v3.i37.i to i32*
  store i32 1767252068, i32* %41, align 4
  %tmp2_v4.i38.i = add i32 %32, -27
  %42 = inttoptr i32 %tmp2_v4.i38.i to i32*
  store i32 1952803951, i32* %42, align 4
  %tmp2_v5.i39.i = add i32 %32, -23
  %43 = inttoptr i32 %tmp2_v5.i39.i to i32*
  store i32 1918967923, i32* %43, align 4
  %tmp2_v6.i40.i = add i32 %32, -19
  %44 = inttoptr i32 %tmp2_v6.i40.i to i32*
  store i32 1816272997, i32* %44, align 4
  %tmp2_v7.i41.i = add i32 %32, -15
  %45 = inttoptr i32 %tmp2_v7.i41.i to i16*
  store i16 25973, i16* %45, align 2
  %tmp2_v8.i42.i = add i32 %32, -13
  %46 = inttoptr i32 %tmp2_v8.i42.i to i8*
  store i8 0, i8* %46, align 1
  %tmp2_v11.i45.i = add i32 %31, 4
  %47 = inttoptr i32 %tmp2_v11.i45.i to i32*
  store i32 %tmp2_v.i34.i, i32* %47, align 4
  %tmp2_v12.i46.i = add i32 %32, -57
  store i32 %tmp2_v12.i46.i, i32* %34, align 4
  store i32 134517501, i32* %35, align 4
  %48 = tail call fastcc { i32, i32, i32, i32 } @Func_startswith(i32 %tmp2_v2.i84.i, i32 %32, i32 %33)
  %49 = extractvalue { i32, i32, i32, i32 } %48, 0
  %50 = extractvalue { i32, i32, i32, i32 } %48, 3
  %tmp2_v.i.i = add i32 %50, -8015
  %51 = inttoptr i32 %49 to i32*
  store i32 %tmp2_v.i.i, i32* %51, align 4
  %tmp2_v2.i.i = add i32 %49, -4
  %52 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517543, i32* %52, align 4
  %arg.i.i2 = load i32, i32* %51, align 4
  %53 = inttoptr i32 %arg.i.i2 to i8*
  %54 = tail call i32 @puts(i8* nonnull dereferenceable(1) %53)
  ret void
}

; Function Attrs: norecurse
define internal fastcc { i32, i32, i32, i32 } @Func_startswith(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !11 {
Func_804937C.exit.i:
  %tmp2_v.i48.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i48.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i50.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i50.i to i32*
  store i32 %arg_ebx, i32* %1, align 4
  %tmp2_v2.i53.i = add i32 %arg_esp, -32
  %2 = inttoptr i32 %tmp2_v2.i53.i to i32*
  store i32 134517594, i32* %2, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %3 = inttoptr i32 %tmp2_v.i.i to i32*
  %4 = load i32, i32* %3, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, -44
  %5 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %4, i32* %5, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -48
  %6 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517611, i32* %6, align 4
  %arg.i.i = load i32, i32* %5, align 4
  %7 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i4.i = add i32 %arg_esp, -20
  %8 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, 8
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 134517628, i32* %6, align 4
  %arg.i.i27 = load i32, i32* %5, align 4
  %11 = tail call i32 @strlen(i32 %arg.i.i27)
  %tmp2_v.i23.i = add i32 %arg_esp, -16
  %12 = inttoptr i32 %tmp2_v.i23.i to i32*
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %.not.i.i = icmp sgt i32 %11, %13
  br i1 %.not.i.i, label %.exit, label %BB_8049391.i

BB_804939A.i:                                     ; preds = %BB_80493BF.i, %BB_8049391.i
  %storemerge29 = phi i32 [ %tmp0_v1.i40.i, %BB_80493BF.i ], [ 0, %BB_8049391.i ]
  %14 = load i32, i32* %3, align 4
  %tmp0_v3.i10.i = add i32 %14, %storemerge29
  %15 = inttoptr i32 %tmp0_v3.i10.i to i8*
  %16 = load i8, i8* %15, align 1
  %tmp0_v4.i.i = zext i8 %16 to i32
  %17 = load i32, i32* %9, align 4
  %tmp0_v9.i.i = add i32 %17, %storemerge29
  %18 = inttoptr i32 %tmp0_v9.i.i to i8*
  %19 = load i8, i8* %18, align 1
  %tmp0_v10.i.i = zext i8 %19 to i32
  %cc_dst_v.i.i = sub nsw i32 %tmp0_v4.i.i, %tmp0_v10.i.i
  %tmp4_v.i.i = and i32 %cc_dst_v.i.i, 255
  %20 = icmp eq i32 %tmp4_v.i.i, 0
  %tmp0_v1.i40.i = add nuw nsw i32 %storemerge29, 1
  br i1 %20, label %BB_80493BF.i, label %.exit

BB_8049391.i:                                     ; preds = %Func_804937C.exit.i
  %tmp2_v.i13.i = add i32 %arg_esp, -24
  %21 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %BB_804939A.i, label %.exit

BB_80493BF.i:                                     ; preds = %BB_804939A.i
  store i32 %tmp0_v1.i40.i, i32* %21, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %tmp0_v1.i40.i, %24
  br i1 %25, label %BB_804939A.i, label %.exit

.exit:                                            ; preds = %BB_80493BF.i, %BB_8049391.i, %BB_804939A.i, %Func_804937C.exit.i
  %r_eax.0 = phi i32 [ 0, %Func_804937C.exit.i ], [ 1, %BB_8049391.i ], [ 0, %BB_804939A.i ], [ 1, %BB_80493BF.i ]
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %0, align 4
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp2_v.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %27, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %26, 3
  ret { i32, i32, i32, i32 } %mrv3
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
!10 = !{i32 0, i32 0, i32 0}
!11 = !{i32 0, i32 2, i32 3}

  tail call fastcc void @startswith899 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack898, i32 0, i32 8092) to i32)) nounwind
