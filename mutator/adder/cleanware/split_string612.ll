; Mutation 612
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack611 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.610 = constant [4 x i8] c"\05\3e\2d\00"

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
define internal fastcc void @split_string612(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i28.i = add i32 %arg_esp, 4
  %tmp0_v.i29.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i30.i = add i32 %tmp0_v.i29.i, -4
  %2 = inttoptr i32 %tmp2_v3.i30.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i31.i = add i32 %tmp0_v.i29.i, -8
  %3 = inttoptr i32 %tmp2_v4.i31.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i33.i = add i32 %tmp0_v.i29.i, -12
  %4 = inttoptr i32 %tmp2_v5.i33.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i35.i = add i32 %tmp0_v.i29.i, -16
  %5 = inttoptr i32 %tmp2_v6.i35.i to i32*
  store i32 %tmp2_v.i28.i, i32* %5, align 16
  %tmp2_v8.i36.i = add i32 %tmp0_v.i29.i, -260
  %6 = inttoptr i32 %tmp2_v8.i36.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i29.i, -252
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1702242121, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i29.i, -248
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1953457952, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i29.i, -244
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1701736224, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i29.i, -240
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1851877408, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i29.i, -236
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1852383332, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i29.i, -232
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 544828704, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i29.i, -228
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1801678704, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i29.i, -224
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 3044453, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i29.i, -120
  store i32 %tmp2_v11.i.i, i32* %6, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i29.i, -220
  %tmp2_v14.i.i = add i32 %tmp0_v.i29.i, -264
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v13.i.i, i32* %18, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i29.i, -268
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 13, i32* %19, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i29.i, -272
  %20 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i29.i, -276
  %21 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517358, i32* %21, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i29.i, -280
  %22 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i31.i, i32* %22, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i29.i, -284
  %23 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i29.i, -308
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %spi.bis.610 = ptrtoint[4 x i8]* @str.bis.610 to i32
  store i32 %spi.bis.610, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i29.i, -320
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i29.i, -324
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517460, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i35.i.i = add i32 %tmp0_v.i29.i, -292
  %29 = inttoptr i32 %tmp2_v.i35.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v.i11.i.i = add i32 %tmp0_v.i29.i, -300
  %30 = inttoptr i32 %tmp2_v.i11.i.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492EB.i.i, label %BB_804930C.i.i

BB_80492EB.i.i:                                   ; preds = %BB_80492EB.i.i, %.exit
  %storemerge21.i = phi i32 [ %tmp0_v12.i.i.i, %BB_80492EB.i.i ], [ 0, %.exit ]
  %33 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %33, %storemerge21.i
  %34 = load i32, i32* %18, align 8
  %tmp0_v8.i.i.i = add i32 %34, %storemerge21.i
  %35 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %37 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %30, align 4
  %tmp0_v12.i.i.i = add i32 %38, 1
  store i32 %tmp0_v12.i.i.i, i32* %30, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp slt i32 %tmp0_v12.i.i.i, %39
  br i1 %40, label %BB_80492EB.i.i, label %BB_804930C.i.i

BB_804930C.i.i:                                   ; preds = %BB_80492EB.i.i, %.exit
  %.lcssa.i = phi i32 [ %31, %.exit ], [ %39, %BB_80492EB.i.i ]
  %41 = load i32, i32* %18, align 8
  %tmp0_v3.i49.i.i = add i32 %41, %.lcssa.i
  %42 = inttoptr i32 %tmp0_v3.i49.i.i to i8*
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* %19, align 4
  %tmp2_v6.i52.i.i = add i32 %tmp0_v.i29.i, -296
  %44 = inttoptr i32 %tmp2_v6.i52.i.i to i32*
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %29, align 4
  %.not.i.i22.i = icmp sgt i32 %43, %45
  br i1 %.not.i.i22.i, label %Func_string_split.exit, label %BB_804931F.i.i

BB_804931F.i.i:                                   ; preds = %BB_804931F.i.i, %BB_804930C.i.i
  %storemerge1923.i = phi i32 [ %tmp0_v14.i66.i.i, %BB_804931F.i.i ], [ %43, %BB_804930C.i.i ]
  %46 = load i32, i32* %20, align 16
  %tmp2_v3.i58.i.i = add i32 %46, %storemerge1923.i
  %47 = load i32, i32* %19, align 4
  %tmp0_v7.i63.i.i = sub i32 %storemerge1923.i, %47
  %48 = load i32, i32* %6, align 4
  %tmp0_v10.i.i.i = add i32 %tmp0_v7.i63.i.i, %48
  %49 = inttoptr i32 %tmp2_v3.i58.i.i to i8*
  %50 = load i8, i8* %49, align 1
  %51 = inttoptr i32 %tmp0_v10.i.i.i to i8*
  store i8 %50, i8* %51, align 1
  %52 = load i32, i32* %44, align 8
  %tmp0_v14.i66.i.i = add i32 %52, 1
  store i32 %tmp0_v14.i66.i.i, i32* %44, align 8
  %53 = load i32, i32* %29, align 4
  %.not.i.i.i = icmp sgt i32 %tmp0_v14.i66.i.i, %53
  br i1 %.not.i.i.i, label %Func_string_split.exit, label %BB_804931F.i.i

Func_string_split.exit:                           ; preds = %BB_804931F.i.i, %BB_804930C.i.i
  %54 = load i32, i32* %22, align 8
  %tmp2_v.i17.i = add i32 %54, -212
  store i32 %tmp2_v.i17.i, i32* %20, align 16
  store i32 134517376, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  %55 = inttoptr i32 %arg.i.i to i8*
  %56 = tail call i32 @puts(i8* nonnull dereferenceable(1) %55)
  %tmp2_v.i11.i = add i32 %54, -112
  store i32 %tmp2_v.i11.i, i32* %20, align 16
  store i32 134517391, i32* %21, align 4
  %arg.i.i3 = load i32, i32* %20, align 16
  %57 = inttoptr i32 %arg.i.i3 to i8*
  %58 = tail call i32 @puts(i8* nonnull dereferenceable(1) %57)
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

  tail call fastcc void @split_string612 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack611, i32 0, i32 8092) to i32)) nounwind
