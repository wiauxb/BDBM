; Mutation 774
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
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
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 -1
  store i32 %7, i32* @df, align 4, !tbaa !6
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %8 = ptrtoint i8** %2 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !6
  %9 = ptrtoint i8** %1 to i32
  store i32 %9, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !6
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !6
  %10 = tail call i8* @llvm.returnaddress(i32 0)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !6
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @remove_duplicates_efficient774(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i21.i = add i32 %arg_esp, 4
  %tmp0_v.i22.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i23.i = add i32 %tmp0_v.i22.i, -4
  %2 = inttoptr i32 %tmp2_v3.i23.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i24.i = add i32 %tmp0_v.i22.i, -8
  %3 = inttoptr i32 %tmp2_v4.i24.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i26.i = add i32 %tmp0_v.i22.i, -12
  %4 = inttoptr i32 %tmp2_v5.i26.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i28.i = add i32 %tmp0_v.i22.i, -16
  %5 = inttoptr i32 %tmp2_v6.i28.i to i32*
  store i32 %tmp2_v.i21.i, i32* %5, align 16
  %tmp2_v8.i29.i = add i32 %tmp0_v.i22.i, -84
  %6 = inttoptr i32 %tmp2_v8.i29.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp2_v.i7.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i7.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i10.i = add i32 %tmp0_v.i22.i, -68
  %9 = inttoptr i32 %tmp2_v2.i10.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i11.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i22.i, -20
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i22.i, -56
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1633771873, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i22.i, -52
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1650549089, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i22.i, -48
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1650614882, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i22.i, -44
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1667457890, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i22.i, -40
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1633903459, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i22.i, -36
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1633771873, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i22.i, -32
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1684300129, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i22.i, -28
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 1701078116, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i22.i, -24
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 6645093, i32* %21, align 8
  %tmp2_v17.i.i = add i32 %tmp0_v.i22.i, -96
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %22, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i22.i, -100
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517333, i32* %23, align 4
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i22.i, -104
  %24 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  store i32 %tmp2_v4.i24.i, i32* %24, align 8
  %tmp2_v1.i10.i.i = add i32 %tmp0_v.i22.i, -108
  %25 = inttoptr i32 %tmp2_v1.i10.i.i to i32*
  store i32 0, i32* %25, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i22.i, -112
  %26 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134529024, i32* %26, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i22.i, -404
  %27 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517403, i32* %27, align 4
  %28 = load i32, i32* %22, align 16
  %tmp2_v2.i53.i.i = add i32 %tmp0_v.i22.i, -388
  %29 = inttoptr i32 %tmp2_v2.i53.i.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i22.i, -116
  %31 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %29, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i22.i, -416
  %33 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %32, i32* %33, align 16
  %tmp2_v10.i60.i.i = add i32 %tmp0_v.i22.i, -420
  %34 = inttoptr i32 %tmp2_v10.i60.i.i to i32*
  store i32 134517445, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %35 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i22.i, -376
  %36 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %35, i32* %36, align 8
  %tmp2_v1.i5.i.i = add i32 %tmp0_v.i22.i, -372
  br label %Func_80492E0.exit.i.i

Func_80492E0.exit.i.i:                            ; preds = %Func_80492E0.exit.i.i, %.exit
  %r_edi.09.i = phi i32 [ %tmp2_v1.i5.i.i, %.exit ], [ %tmp4_v.i.i.i1, %Func_80492E0.exit.i.i ]
  %r_ecx.08.i = phi i32 [ 64, %.exit ], [ %tmp4_v3.i.i.i, %Func_80492E0.exit.i.i ]
  %37 = inttoptr i32 %r_edi.09.i to i32*
  store i32 0, i32* %37, align 4
  %tmp0_v.i.i.i = load i32, i32* @df, align 4
  %tmp0_v1.i.i.i = shl i32 %tmp0_v.i.i.i, 2
  %tmp4_v.i.i.i1 = add i32 %tmp0_v1.i.i.i, %r_edi.09.i
  %tmp4_v3.i.i.i = add nsw i32 %r_ecx.08.i, -1
  %.not.i.i.i = icmp eq i32 %tmp4_v3.i.i.i, 0
  br i1 %.not.i.i.i, label %BB_80492E2.i.i, label %Func_80492E0.exit.i.i

BB_80492E2.i.i:                                   ; preds = %Func_80492E0.exit.i.i
  %tmp2_v.i.i.i = add i32 %tmp0_v.i22.i, -384
  %38 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %38, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i22.i, -380
  %39 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %36, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_80492F8.i.i, label %Func_remove_duplicates.exit

BB_80492F8.i.i:                                   ; preds = %BB_804935F.i.i, %BB_80492E2.i.i
  %storemerge10.i = phi i32 [ %tmp0_v1.i42.i.i, %BB_804935F.i.i ], [ 0, %BB_80492E2.i.i ]
  %42 = load i32, i32* %29, align 4
  %tmp0_v3.i18.i.i = add i32 %42, %storemerge10.i
  %43 = inttoptr i32 %tmp0_v3.i18.i.i to i8*
  %44 = load i8, i8* %43, align 1
  %tmp0_v5.i.i.i = sext i8 %44 to i32
  %tmp2_v7.i.i.i = add i32 %tmp2_v1.i5.i.i, %tmp0_v5.i.i.i
  %45 = inttoptr i32 %tmp2_v7.i.i.i to i8*
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %BB_804935F.i.i, label %BB_804931B.i.i

BB_804931B.i.i:                                   ; preds = %BB_80492F8.i.i
  store i8 1, i8* %45, align 1
  %48 = load i32, i32* %39, align 4
  %49 = load i32, i32* %29, align 4
  %tmp0_v12.i.i.i = add i32 %49, %48
  %50 = load i32, i32* %38, align 16
  %tmp0_v17.i.i.i = add i32 %50, %49
  %51 = inttoptr i32 %tmp0_v12.i.i.i to i8*
  %52 = load i8, i8* %51, align 1
  %53 = inttoptr i32 %tmp0_v17.i.i.i to i8*
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %38, align 16
  %tmp0_v21.i.i.i = add i32 %54, 1
  store i32 %tmp0_v21.i.i.i, i32* %38, align 16
  %.pre.i = load i32, i32* %39, align 4
  br label %BB_804935F.i.i

BB_804935F.i.i:                                   ; preds = %BB_804931B.i.i, %BB_80492F8.i.i
  %55 = phi i32 [ %storemerge10.i, %BB_80492F8.i.i ], [ %.pre.i, %BB_804931B.i.i ]
  %tmp0_v1.i42.i.i = add i32 %55, 1
  store i32 %tmp0_v1.i42.i.i, i32* %39, align 4
  %56 = load i32, i32* %36, align 8
  %57 = icmp slt i32 %tmp0_v1.i42.i.i, %56
  br i1 %57, label %BB_80492F8.i.i, label %Func_remove_duplicates.exit

Func_remove_duplicates.exit:                      ; preds = %BB_804935F.i.i, %BB_80492E2.i.i
  %58 = load i32, i32* %38, align 16
  %59 = load i32, i32* %29, align 4
  %tmp0_v3.i73.i.i = add i32 %59, %58
  %60 = inttoptr i32 %tmp0_v3.i73.i.i to i8*
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %24, align 8
  %tmp2_v.i5.i = add i32 %61, -48
  store i32 %tmp2_v.i5.i, i32* %22, align 16
  store i32 134517348, i32* %23, align 4
  %arg.i.i = load i32, i32* %22, align 16
  %62 = inttoptr i32 %arg.i.i to i8*
  %63 = tail call i32 @puts(i8* nonnull dereferenceable(1) %62)
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

  tail call fastcc void @remove_duplicates_efficient774(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
