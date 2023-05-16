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
define internal fastcc void @split_stringm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
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
  %tmp4_v.i19.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i19.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i23.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v2.i23.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i24.i = add i32 %tmp0_v.i29.i, -252
  %10 = inttoptr i32 %tmp2_v3.i24.i to i32*
  store i32 1702242121, i32* %10, align 4
  %tmp2_v4.i25.i = add i32 %tmp0_v.i29.i, -248
  %11 = inttoptr i32 %tmp2_v4.i25.i to i32*
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
  store i32 %tmp2_v3.i24.i, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i29.i, -276
  %21 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517358, i32* %21, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i29.i, -280
  %22 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i31.i, i32* %22, align 8
  %tmp2_v1.i3.i.i = add i32 %tmp0_v.i29.i, -284
  %23 = inttoptr i32 %tmp2_v1.i3.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i29.i, -308
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517442, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i44.i.i = add i32 %tmp0_v.i29.i, -320
  %26 = inttoptr i32 %tmp2_v3.i44.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i45.i.i = add i32 %tmp0_v.i29.i, -324
  %27 = inttoptr i32 %tmp2_v4.i45.i.i to i32*
  store i32 134517460, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i12.i.i = add i32 %tmp0_v.i29.i, -292
  %29 = inttoptr i32 %tmp2_v.i12.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v.i19.i.i = add i32 %tmp0_v.i29.i, -300
  %30 = inttoptr i32 %tmp2_v.i19.i.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492EB.i.i, label %BB_804930C.i.i

BB_804930C.i.i:                                   ; preds = %BB_80492EB.i.i, %.exit
  %.lcssa.i = phi i32 [ %31, %.exit ], [ %52, %BB_80492EB.i.i ]
  %33 = load i32, i32* %18, align 8
  %tmp0_v3.i.i.i = add i32 %33, %.lcssa.i
  %34 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %19, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i29.i, -296
  %36 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %29, align 4
  %.not.i69.i22.i = icmp sgt i32 %35, %37
  br i1 %.not.i69.i22.i, label %Func_string_split.exit, label %BB_804931F.i.i

BB_804931F.i.i:                                   ; preds = %BB_804931F.i.i, %BB_804930C.i.i
  %storemerge1923.i = phi i32 [ %tmp0_v14.i.i.i, %BB_804931F.i.i ], [ %35, %BB_804930C.i.i ]
  %38 = load i32, i32* %20, align 16
  %tmp2_v3.i29.i.i = add i32 %38, %storemerge1923.i
  %39 = load i32, i32* %19, align 4
  %tmp0_v7.i.i.i = sub i32 %storemerge1923.i, %39
  %40 = load i32, i32* %6, align 4
  %tmp0_v10.i.i.i = add i32 %tmp0_v7.i.i.i, %40
  %41 = inttoptr i32 %tmp2_v3.i29.i.i to i8*
  %42 = load i8, i8* %41, align 1
  %43 = inttoptr i32 %tmp0_v10.i.i.i to i8*
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %36, align 8
  %tmp0_v14.i.i.i = add i32 %44, 1
  store i32 %tmp0_v14.i.i.i, i32* %36, align 8
  %45 = load i32, i32* %29, align 4
  %.not.i69.i.i = icmp sgt i32 %tmp0_v14.i.i.i, %45
  br i1 %.not.i69.i.i, label %Func_string_split.exit, label %BB_804931F.i.i

BB_80492EB.i.i:                                   ; preds = %BB_80492EB.i.i, %.exit
  %storemerge21.i = phi i32 [ %tmp0_v12.i.i.i, %BB_80492EB.i.i ], [ 0, %.exit ]
  %46 = load i32, i32* %20, align 16
  %tmp0_v3.i51.i.i = add i32 %46, %storemerge21.i
  %47 = load i32, i32* %18, align 8
  %tmp0_v8.i.i.i = add i32 %47, %storemerge21.i
  %48 = inttoptr i32 %tmp0_v3.i51.i.i to i8*
  %49 = load i8, i8* %48, align 1
  %50 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %49, i8* %50, align 1
  %51 = load i32, i32* %30, align 4
  %tmp0_v12.i.i.i = add i32 %51, 1
  store i32 %tmp0_v12.i.i.i, i32* %30, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp slt i32 %tmp0_v12.i.i.i, %52
  br i1 %53, label %BB_80492EB.i.i, label %BB_804930C.i.i

Func_string_split.exit:                           ; preds = %BB_804931F.i.i, %BB_804930C.i.i
  %54 = load i32, i32* %22, align 8
  %tmp2_v.i16.i = add i32 %54, -212
  store i32 %tmp2_v.i16.i, i32* %20, align 16
  store i32 134517376, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  %55 = inttoptr i32 %arg.i.i to i8*
  %56 = tail call i32 @puts(i8* nonnull dereferenceable(1) %55)
  %tmp2_v.i.i = add i32 %54, -112
  store i32 %tmp2_v.i.i, i32* %20, align 16
  store i32 134517391, i32* %21, align 4
  %arg.i.i3 = load i32, i32* %20, align 16
  %57 = inttoptr i32 %arg.i.i3 to i8*
  %58 = tail call i32 @puts(i8* nonnull dereferenceable(1) %57)
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

  tail call fastcc void @split_stringm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
