; Mutation 10
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack9 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.7 = constant [29 x i8] c"Could not find 11 in array a\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: norecurse
define internal fastcc void @array_includes10(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
label_1.i.i:
  %tmp2_v.i25.i = add i32 %arg_esp, 4
  %tmp0_v.i26.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i27.i = add i32 %tmp0_v.i26.i, -4
  %2 = inttoptr i32 %tmp2_v3.i27.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i28.i = add i32 %tmp0_v.i26.i, -8
  %3 = inttoptr i32 %tmp2_v4.i28.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i30.i = add i32 %tmp0_v.i26.i, -12
  %4 = inttoptr i32 %tmp2_v5.i30.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i32.i = add i32 %tmp0_v.i26.i, -16
  %5 = inttoptr i32 %tmp2_v6.i32.i to i32*
  store i32 %tmp2_v.i25.i, i32* %5, align 16
  %tmp2_v8.i33.i = add i32 %tmp0_v.i26.i, -68
  %6 = inttoptr i32 %tmp2_v8.i33.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i26.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i26.i, -60
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i26.i, -56
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 2, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i26.i, -52
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i26.i, -48
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i26.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i26.i, -40
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i26.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 7, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i26.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 8, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i26.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 9, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i26.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 10, i32* %19, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i26.i, -64
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %20, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i26.i, -72
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 11, i32* %21, align 8
  %22 = load i32, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i26.i, -76
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %22, i32* %23, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i26.i, -80
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %24, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i26.i, -84
  %25 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 134517312, i32* %25, align 4
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i26.i, -88
  %26 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 %tmp2_v4.i28.i, i32* %26, align 8
  %tmp2_v1.i20.i.i = add i32 %tmp0_v.i26.i, -108
  %27 = inttoptr i32 %tmp2_v1.i20.i.i to i32*
  store i32 134517404, i32* %27, align 4
  %tmp2_v.i16.i.i = add i32 %tmp0_v.i26.i, -92
  %28 = inttoptr i32 %tmp2_v.i16.i.i to i32*
  br label %BB_80492CB.i.i

BB_80492CB.i.i:                                   ; preds = %BB_80492CB.i.i, %label_1.i.i
  %storemerge.i = phi i32 [ 0, %label_1.i.i ], [ %tmp0_v1.i.i.i, %BB_80492CB.i.i ]
  store i32 %storemerge.i, i32* %28, align 4
  %29 = load i32, i32* %23, align 4
  %30 = icmp slt i32 %storemerge.i, %29
  %tmp0_v1.i.i.i = add nuw nsw i32 %storemerge.i, 1
  br i1 %30, label %BB_80492CB.i.i, label %Func_includes.exit

Func_includes.exit:                               ; preds = %BB_80492CB.i.i
  %spi.bis.7 = ptrtoint[29 x i8]* @str.7 to i32
  store i32 %spi.bis.7, i32* %24, align 16
  store i32 134517354, i32* %25, align 4
  %arg.i.i = load i32, i32* %24, align 16
  %31 = inttoptr i32 %arg.i.i to i8*
  %32 = tail call i32 @puts(i8* nonnull dereferenceable(1) %31)
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
!10 = !{i32 0, i32 0, i32 0}

  tail call fastcc void @array_includes10 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack9, i32 0, i32 8092) to i32)) nounwind
