; Mutation 92
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack91 = internal global [8092 x i32] zeroinitializer, align 16
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
define internal fastcc void @remove_chat_at_pos92(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_8049225.exit.i:
  %tmp2_v.i44.i = add i32 %arg_esp, 4
  %tmp0_v.i45.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i47.i = add i32 %tmp0_v.i45.i, -4
  %2 = inttoptr i32 %tmp2_v3.i47.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i48.i = add i32 %tmp0_v.i45.i, -8
  %3 = inttoptr i32 %tmp2_v4.i48.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i50.i = add i32 %tmp0_v.i45.i, -12
  %4 = inttoptr i32 %tmp2_v5.i50.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i45.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i44.i, i32* %5, align 16
  %tmp2_v8.i52.i = add i32 %tmp0_v.i45.i, -52
  %6 = inttoptr i32 %tmp2_v8.i52.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i28.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i32.i = add i32 %tmp0_v.i45.i, -20
  %9 = inttoptr i32 %tmp2_v2.i32.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i45.i, -32
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 875770417, i32* %10, align 16
  %tmp2_v4.i33.i = add i32 %tmp0_v.i45.i, -28
  %11 = inttoptr i32 %tmp2_v4.i33.i to i32*
  store i32 842083637, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i45.i, -24
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3486771, i32* %12, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i45.i, -60
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 20, i32* %13, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i45.i, -64
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %14, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i45.i, -68
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517285, i32* %15, align 4
  %tmp2_v.i21.i.i = add i32 %tmp0_v.i45.i, -72
  %16 = inttoptr i32 %tmp2_v.i21.i.i to i32*
  store i32 %tmp2_v4.i48.i, i32* %16, align 8
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i45.i, -76
  %17 = inttoptr i32 %tmp2_v1.i23.i.i to i32*
  store i32 134529024, i32* %17, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i45.i, -100
  %18 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517462, i32* %18, align 4
  %19 = load i32, i32* %14, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i45.i, -112
  %20 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %19, i32* %20, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i45.i, -116
  %21 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517480, i32* %21, align 4
  %arg.i.i.i = load i32, i32* %20, align 16
  %22 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i36.i.i = add i32 %tmp0_v.i45.i, -84
  %23 = inttoptr i32 %tmp2_v.i36.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, %22
  br i1 %25, label %BB_80492FD.i.i, label %Func_remove_char.exit

BB_80492FD.i.i:                                   ; preds = %Func_8049225.exit.i
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i45.i, -88
  %26 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %23, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %BB_8049305.i.i, label %Func_remove_char.exit

BB_8049305.i.i:                                   ; preds = %BB_8049305.i.i, %BB_80492FD.i.i
  %storemerge19.i = phi i32 [ %tmp0_v13.i.i.i, %BB_8049305.i.i ], [ %24, %BB_80492FD.i.i ]
  %29 = load i32, i32* %14, align 16
  %tmp2_v1.i28.i.i = add i32 %29, %storemerge19.i
  %tmp0_v4.i.i.i = add i32 %tmp2_v1.i28.i.i, 1
  %30 = inttoptr i32 %tmp0_v4.i.i.i to i8*
  %31 = load i8, i8* %30, align 1
  %32 = inttoptr i32 %tmp2_v1.i28.i.i to i8*
  store i8 %31, i8* %32, align 1
  %33 = load i32, i32* %26, align 8
  %tmp0_v13.i.i.i = add i32 %33, 1
  store i32 %tmp0_v13.i.i.i, i32* %26, align 8
  %34 = load i32, i32* %23, align 4
  %35 = icmp slt i32 %tmp0_v13.i.i.i, %34
  br i1 %35, label %BB_8049305.i.i, label %Func_remove_char.exit

Func_remove_char.exit:                            ; preds = %BB_8049305.i.i, %BB_80492FD.i.i, %Func_8049225.exit.i
  %r_eax.0.i = phi i8 [ 0, %Func_8049225.exit.i ], [ 1, %BB_80492FD.i.i ], [ 1, %BB_8049305.i.i ]
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %16, align 8
  %tmp2_v.i22.i = add i32 %37, -26
  %38 = inttoptr i32 %tmp2_v.i22.i to i8*
  store i8 %r_eax.0.i, i8* %38, align 1
  %tmp2_v.i38.i = add i32 %36, -8158
  store i32 %tmp2_v.i38.i, i32* %14, align 16
  store i32 134517332, i32* %15, align 4
  %arg.i.i = load i32, i32* %14, align 16
  %39 = inttoptr i32 %arg.i.i to i8*
  %40 = tail call i32 @puts(i8* nonnull dereferenceable(1) %39)
  store i32 5, i32* %13, align 4
  %tmp2_v2.i.i = add i32 %37, -24
  store i32 %tmp2_v2.i.i, i32* %14, align 16
  store i32 134517349, i32* %15, align 4
  store i32 %37, i32* %16, align 8
  store i32 %36, i32* %17, align 4
  store i32 134517462, i32* %18, align 4
  %41 = load i32, i32* %14, align 16
  store i32 %41, i32* %20, align 16
  store i32 134517480, i32* %21, align 4
  %arg.i.i.i8 = load i32, i32* %20, align 16
  %42 = tail call i32 @strlen(i32 %arg.i.i.i8)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, %42
  br i1 %44, label %BB_80492FD.i.i12, label %Func_remove_char.exit22

BB_80492FD.i.i12:                                 ; preds = %Func_remove_char.exit
  %tmp2_v1.i.i.i11 = add i32 %tmp0_v.i45.i, -88
  %45 = inttoptr i32 %tmp2_v1.i.i.i11 to i32*
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %23, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %BB_8049305.i.i17, label %Func_remove_char.exit22

BB_8049305.i.i17:                                 ; preds = %BB_8049305.i.i17, %BB_80492FD.i.i12
  %storemerge19.i13 = phi i32 [ %tmp0_v13.i.i.i16, %BB_8049305.i.i17 ], [ %43, %BB_80492FD.i.i12 ]
  %48 = load i32, i32* %14, align 16
  %tmp2_v1.i28.i.i14 = add i32 %48, %storemerge19.i13
  %tmp0_v4.i.i.i15 = add i32 %tmp2_v1.i28.i.i14, 1
  %49 = inttoptr i32 %tmp0_v4.i.i.i15 to i8*
  %50 = load i8, i8* %49, align 1
  %51 = inttoptr i32 %tmp2_v1.i28.i.i14 to i8*
  store i8 %50, i8* %51, align 1
  %52 = load i32, i32* %45, align 8
  %tmp0_v13.i.i.i16 = add i32 %52, 1
  store i32 %tmp0_v13.i.i.i16, i32* %45, align 8
  %53 = load i32, i32* %23, align 4
  %54 = icmp slt i32 %tmp0_v13.i.i.i16, %53
  br i1 %54, label %BB_8049305.i.i17, label %Func_remove_char.exit22

Func_remove_char.exit22:                          ; preds = %BB_8049305.i.i17, %BB_80492FD.i.i12, %Func_remove_char.exit
  %r_eax.0.i18 = phi i8 [ 0, %Func_remove_char.exit ], [ 1, %BB_80492FD.i.i12 ], [ 1, %BB_8049305.i.i17 ]
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %16, align 8
  %tmp2_v.i17.i = add i32 %56, -25
  %57 = inttoptr i32 %tmp2_v.i17.i to i8*
  store i8 %r_eax.0.i18, i8* %57, align 1
  %tmp2_v.i56.i = add i32 %55, -8184
  store i32 %tmp2_v.i56.i, i32* %14, align 16
  store i32 134517376, i32* %15, align 4
  %arg.i.i23 = load i32, i32* %14, align 16
  %58 = inttoptr i32 %arg.i.i23 to i8*
  %59 = tail call i32 @puts(i8* nonnull dereferenceable(1) %58)
  %tmp2_v.i62.i = add i32 %56, -24
  store i32 %tmp2_v.i62.i, i32* %14, align 16
  store i32 134517411, i32* %15, align 4
  %arg.i.i24 = load i32, i32* %14, align 16
  %60 = inttoptr i32 %arg.i.i24 to i8*
  %61 = tail call i32 @puts(i8* nonnull dereferenceable(1) %60)
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

  tail call fastcc void @remove_chat_at_pos92 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack91, i32 0, i32 8092) to i32)) nounwind
