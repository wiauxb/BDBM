; Mutation 634
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack633 = internal global [8092 x i32] zeroinitializer, align 16
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
define internal fastcc { i32, i32, i32, i32 } @Func_endswith(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !10 {
Func_8049373.exit.i:
  %tmp2_v.i1.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i1.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %arg_ebx, i32* %1, align 4
  %tmp2_v2.i4.i = add i32 %arg_esp, -32
  %2 = inttoptr i32 %tmp2_v2.i4.i to i32*
  store i32 134517585, i32* %2, align 4
  %tmp2_v.i48.i = add i32 %arg_esp, 4
  %3 = inttoptr i32 %tmp2_v.i48.i to i32*
  %4 = load i32, i32* %3, align 4
  %tmp2_v3.i50.i = add i32 %arg_esp, -44
  %5 = inttoptr i32 %tmp2_v3.i50.i to i32*
  store i32 %4, i32* %5, align 4
  %tmp2_v4.i51.i = add i32 %arg_esp, -48
  %6 = inttoptr i32 %tmp2_v4.i51.i to i32*
  store i32 134517602, i32* %6, align 4
  %arg.i.i = load i32, i32* %5, align 4
  %7 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i8.i = add i32 %arg_esp, -20
  %8 = inttoptr i32 %tmp2_v.i8.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v2.i10.i = add i32 %arg_esp, 8
  %9 = inttoptr i32 %tmp2_v2.i10.i to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 134517619, i32* %6, align 4
  %arg.i.i27 = load i32, i32* %5, align 4
  %11 = tail call i32 @strlen(i32 %arg.i.i27)
  %tmp2_v.i22.i = add i32 %arg_esp, -16
  %12 = inttoptr i32 %tmp2_v.i22.i to i32*
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %.not.i.i = icmp sgt i32 %11, %13
  br i1 %.not.i.i, label %.exit, label %BB_8049388.i

BB_80493C0.i:                                     ; preds = %BB_8049391.i
  %storemerge.neg = xor i32 %storemerge29, -1
  store i32 %tmp0_v1.i.i, i32* %25, align 4
  %14 = load i32, i32* %12, align 4
  %15 = icmp sgt i32 %14, %tmp0_v1.i.i
  br i1 %15, label %BB_8049391.i, label %.exit

BB_8049391.i:                                     ; preds = %BB_8049388.i, %BB_80493C0.i
  %16 = phi i32 [ %14, %BB_80493C0.i ], [ %26, %BB_8049388.i ]
  %storemerge.neg30 = phi i32 [ %storemerge.neg, %BB_80493C0.i ], [ 0, %BB_8049388.i ]
  %storemerge29 = phi i32 [ %tmp0_v1.i.i, %BB_80493C0.i ], [ 0, %BB_8049388.i ]
  %17 = load i32, i32* %8, align 4
  %tmp0_v2.i33.i = add i32 %17, %storemerge.neg30
  %18 = load i32, i32* %3, align 4
  %tmp0_v5.i.i = add i32 %tmp0_v2.i33.i, %18
  %19 = inttoptr i32 %tmp0_v5.i.i to i8*
  %20 = load i8, i8* %19, align 1
  %tmp0_v6.i.i = zext i8 %20 to i32
  %tmp0_v11.i.i = add i32 %16, %storemerge.neg30
  %21 = load i32, i32* %9, align 4
  %tmp0_v14.i.i = add i32 %tmp0_v11.i.i, %21
  %22 = inttoptr i32 %tmp0_v14.i.i to i8*
  %23 = load i8, i8* %22, align 1
  %tmp0_v15.i.i = zext i8 %23 to i32
  %cc_dst_v.i35.i = sub nsw i32 %tmp0_v6.i.i, %tmp0_v15.i.i
  %tmp4_v.i.i = and i32 %cc_dst_v.i35.i, 255
  %24 = icmp eq i32 %tmp4_v.i.i, 0
  %tmp0_v1.i.i = add nuw nsw i32 %storemerge29, 1
  br i1 %24, label %BB_80493C0.i, label %.exit

BB_8049388.i:                                     ; preds = %Func_8049373.exit.i
  %tmp2_v.i53.i = add i32 %arg_esp, -24
  %25 = inttoptr i32 %tmp2_v.i53.i to i32*
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %BB_8049391.i, label %.exit

.exit:                                            ; preds = %BB_8049388.i, %BB_8049391.i, %BB_80493C0.i, %Func_8049373.exit.i
  %r_eax.0 = phi i32 [ 0, %Func_8049373.exit.i ], [ 1, %BB_8049388.i ], [ 1, %BB_80493C0.i ], [ 0, %BB_8049391.i ]
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* %0, align 4
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp2_v.i48.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %29, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %28, 3
  ret { i32, i32, i32, i32 } %mrv3
}

; Function Attrs: norecurse
define internal fastcc void @endswith634(i32 %arg_esp) unnamed_addr  norecurse  !retregs !11 {
Func_8049234.exit.i:
  %tmp2_v.i35.i = add i32 %arg_esp, 4
  %tmp0_v.i36.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i37.i = add i32 %tmp0_v.i36.i, -4
  %2 = inttoptr i32 %tmp2_v3.i37.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i38.i = add i32 %tmp0_v.i36.i, -8
  %3 = inttoptr i32 %tmp2_v4.i38.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i40.i = add i32 %tmp0_v.i36.i, -12
  %4 = inttoptr i32 %tmp2_v5.i40.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i42.i = add i32 %tmp0_v.i36.i, -16
  %5 = inttoptr i32 %tmp2_v6.i42.i to i32*
  store i32 %tmp2_v.i35.i, i32* %5, align 16
  %tmp2_v8.i43.i = add i32 %tmp0_v.i36.i, -84
  %6 = inttoptr i32 %tmp2_v8.i43.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i9.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i36.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i13.i = add i32 %tmp0_v.i36.i, -65
  %10 = inttoptr i32 %tmp2_v3.i13.i to i32*
  store i32 1702063954, i32* %10, align 4
  %tmp2_v4.i14.i = add i32 %tmp0_v.i36.i, -61
  %11 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 1918967923, i32* %11, align 4
  %tmp2_v5.i15.i = add i32 %tmp0_v.i36.i, -57
  %12 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 1701978213, i32* %12, align 4
  %tmp2_v6.i16.i = add i32 %tmp0_v.i36.i, -53
  %13 = inttoptr i32 %tmp2_v6.i16.i to i16*
  store i16 100, i16* %13, align 2
  %tmp2_v7.i17.i = add i32 %tmp0_v.i36.i, -74
  %14 = inttoptr i32 %tmp2_v7.i17.i to i32*
  store i32 6579570, i32* %14, align 4
  %tmp2_v10.i19.i = add i32 %tmp0_v.i36.i, -92
  %15 = inttoptr i32 %tmp2_v10.i19.i to i32*
  store i32 %tmp2_v7.i17.i, i32* %15, align 4
  %tmp2_v12.i21.i = add i32 %tmp0_v.i36.i, -96
  %16 = inttoptr i32 %tmp2_v12.i21.i to i32*
  store i32 %tmp2_v3.i13.i, i32* %16, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i36.i, -100
  %17 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517300, i32* %17, align 4
  %18 = tail call fastcc { i32, i32, i32, i32 } @Func_endswith(i32 %tmp2_v13.i.i, i32 %tmp2_v4.i38.i, i32 134529024)
  %19 = extractvalue { i32, i32, i32, i32 } %18, 0
  %20 = extractvalue { i32, i32, i32, i32 } %18, 2
  %21 = extractvalue { i32, i32, i32, i32 } %18, 3
  %tmp2_v.i25.i = add i32 %21, -8184
  %22 = inttoptr i32 %19 to i32*
  store i32 %tmp2_v.i25.i, i32* %22, align 4
  %tmp2_v2.i27.i = add i32 %19, -4
  %23 = inttoptr i32 %tmp2_v2.i27.i to i32*
  store i32 134517322, i32* %23, align 4
  %arg.i.i = load i32, i32* %22, align 4
  %24 = inttoptr i32 %arg.i.i to i8*
  %25 = tail call i32 @puts(i8* nonnull dereferenceable(1) %24)
  %tmp2_v.i56.i = add i32 %20, -62
  %26 = inttoptr i32 %tmp2_v.i56.i to i32*
  store i32 1702194274, i32* %26, align 4
  %tmp2_v1.i57.i = add i32 %20, -58
  %27 = inttoptr i32 %tmp2_v1.i57.i to i8*
  store i8 0, i8* %27, align 1
  %tmp2_v3.i61.i = add i32 %19, 4
  %28 = inttoptr i32 %tmp2_v3.i61.i to i32*
  store i32 %tmp2_v.i56.i, i32* %28, align 4
  %tmp2_v4.i62.i = add i32 %20, -57
  store i32 %tmp2_v4.i62.i, i32* %22, align 4
  store i32 134517372, i32* %23, align 4
  %29 = tail call fastcc { i32, i32, i32, i32 } @Func_endswith(i32 %tmp2_v2.i27.i, i32 %20, i32 %21)
  %30 = extractvalue { i32, i32, i32, i32 } %29, 0
  %31 = extractvalue { i32, i32, i32, i32 } %29, 2
  %32 = extractvalue { i32, i32, i32, i32 } %29, 3
  %tmp2_v.i31.i = add i32 %32, -8096
  %33 = inttoptr i32 %30 to i32*
  store i32 %tmp2_v.i31.i, i32* %33, align 4
  %tmp2_v2.i33.i = add i32 %30, -4
  %34 = inttoptr i32 %tmp2_v2.i33.i to i32*
  store i32 134517414, i32* %34, align 4
  %arg.i.i1 = load i32, i32* %33, align 4
  %35 = inttoptr i32 %arg.i.i1 to i8*
  %36 = tail call i32 @puts(i8* nonnull dereferenceable(1) %35)
  %tmp2_v.i.i = add i32 %31, -43
  %37 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 1702063954, i32* %37, align 4
  %tmp2_v1.i.i = add i32 %31, -39
  %38 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1918967923, i32* %38, align 4
  %tmp2_v2.i.i = add i32 %31, -35
  %39 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 1701978213, i32* %39, align 4
  %tmp2_v3.i.i = add i32 %31, -31
  %40 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1769349220, i32* %40, align 4
  %tmp2_v4.i.i = add i32 %31, -27
  %41 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1952803951, i32* %41, align 4
  %tmp2_v5.i.i = add i32 %31, -23
  %42 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1918967923, i32* %42, align 4
  %tmp2_v6.i.i = add i32 %31, -19
  %43 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1818370149, i32* %43, align 4
  %tmp2_v7.i.i = add i32 %31, -15
  %44 = inttoptr i32 %tmp2_v7.i.i to i16*
  store i16 25973, i16* %44, align 2
  %tmp2_v8.i.i = add i32 %31, -13
  %45 = inttoptr i32 %tmp2_v8.i.i to i8*
  store i8 0, i8* %45, align 1
  %tmp2_v11.i.i = add i32 %30, 4
  %46 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %46, align 4
  %tmp2_v12.i.i = add i32 %31, -57
  store i32 %tmp2_v12.i.i, i32* %33, align 4
  store i32 134517492, i32* %34, align 4
  %47 = tail call fastcc { i32, i32, i32, i32 } @Func_endswith(i32 %tmp2_v2.i33.i, i32 %31, i32 %32)
  %48 = extractvalue { i32, i32, i32, i32 } %47, 0
  %49 = extractvalue { i32, i32, i32, i32 } %47, 3
  %tmp2_v.i79.i = add i32 %49, -8038
  %50 = inttoptr i32 %48 to i32*
  store i32 %tmp2_v.i79.i, i32* %50, align 4
  %tmp2_v2.i81.i = add i32 %48, -4
  %51 = inttoptr i32 %tmp2_v2.i81.i to i32*
  store i32 134517534, i32* %51, align 4
  %arg.i.i2 = load i32, i32* %50, align 4
  %52 = inttoptr i32 %arg.i.i2 to i8*
  %53 = tail call i32 @puts(i8* nonnull dereferenceable(1) %52)
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
!10 = !{i32 0, i32 2, i32 3}
!11 = !{i32 0, i32 0, i32 0}

  tail call fastcc void @endswith634 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack633, i32 0, i32 8092) to i32)) nounwind
