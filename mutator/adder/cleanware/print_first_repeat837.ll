; Mutation 837
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack836 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.835 = constant [29 x i8] c"\4e\6f\20\72\65\70\65\61\74\69\6e\67\20\63\68\61\72\61\63\74\65\72\20\66\6f\75\6e\64\00"

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
define internal fastcc void @print_first_repeat837(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %4, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i2.i, -36
  %5 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517264, i32* %5, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i8.i = add i32 %tmp0_v.i2.i, -20
  %8 = inttoptr i32 %tmp2_v2.i8.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i9.i = add i32 %tmp0_v.i2.i, -31
  %9 = inttoptr i32 %tmp2_v3.i9.i to i32*
  store i32 1684234849, i32* %9, align 4
  %tmp2_v4.i10.i = add i32 %tmp0_v.i2.i, -27
  %10 = inttoptr i32 %tmp2_v4.i10.i to i32*
  store i32 1751606885, i32* %10, align 4
  %tmp2_v5.i11.i = add i32 %tmp0_v.i2.i, -23
  %11 = inttoptr i32 %tmp2_v5.i11.i to i16*
  store i16 27241, i16* %11, align 2
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -21
  %12 = inttoptr i32 %tmp2_v6.i.i to i8*
  store i8 0, i8* %12, align 1
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -48
  %13 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v3.i9.i, i32* %13, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i2.i, -52
  %14 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517316, i32* %14, align 4
  %tmp2_v.i31.i.i = add i32 %tmp0_v.i2.i, -56
  %15 = inttoptr i32 %tmp2_v.i31.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %15, align 8
  %tmp2_v1.i33.i.i = add i32 %tmp0_v.i2.i, -60
  %16 = inttoptr i32 %tmp2_v1.i33.i.i to i32*
  store i32 0, i32* %16, align 4
  %tmp2_v2.i36.i.i = add i32 %tmp0_v.i2.i, -84
  %17 = inttoptr i32 %tmp2_v2.i36.i.i to i32*
  store i32 134517365, i32* %17, align 4
  %18 = load i32, i32* %13, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i2.i, -96
  %19 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %18, i32* %19, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i2.i, -100
  %20 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517382, i32* %20, align 4
  %arg.i.i.i = load i32, i32* %19, align 16
  %21 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i22.i.i = add i32 %tmp0_v.i2.i, -68
  %22 = inttoptr i32 %tmp2_v.i22.i.i to i32*
  store i32 %21, i32* %22, align 4
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i2.i, -77
  %23 = inttoptr i32 %tmp2_v1.i23.i.i to i8*
  store i8 0, i8* %23, align 1
  %tmp2_v2.i24.i.i = add i32 %tmp0_v.i2.i, -76
  %24 = inttoptr i32 %tmp2_v2.i24.i.i to i32*
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %22, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %BB_8049299.i.lr.ph.i, label %Func_print_first_repeat.exit

BB_8049299.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i42.i.i = add i32 %tmp0_v.i2.i, -72
  %27 = inttoptr i32 %tmp2_v.i42.i.i to i32*
  br label %BB_80492CC.i.i

Func_80492D4.exit.i.i:                            ; preds = %BB_80492CC.i.i
  %28 = load i32, i32* %24, align 4
  %tmp0_v1.i13.i.i = add i32 %28, 1
  store i32 %tmp0_v1.i13.i.i, i32* %24, align 4
  %29 = load i32, i32* %22, align 4
  %30 = icmp slt i32 %tmp0_v1.i13.i.i, %29
  br i1 %30, label %BB_80492CC.i.i.backedge, label %Func_print_first_repeat.exit

BB_80492CC.i.i:                                   ; preds = %BB_80492CC.i.i.backedge, %BB_8049299.i.lr.ph.i
  %storemerge1.i = phi i32 [ 0, %BB_8049299.i.lr.ph.i ], [ %storemerge1.i.be, %BB_80492CC.i.i.backedge ]
  store i32 %storemerge1.i, i32* %27, align 8
  %31 = load i32, i32* %22, align 4
  %32 = icmp slt i32 %storemerge1.i, %31
  %tmp0_v1.i53.i.i = add nuw nsw i32 %storemerge1.i, 1
  br i1 %32, label %BB_80492CC.i.i.backedge, label %Func_80492D4.exit.i.i

BB_80492CC.i.i.backedge:                          ; preds = %BB_80492CC.i.i, %Func_80492D4.exit.i.i
  %storemerge1.i.be = phi i32 [ %tmp0_v1.i53.i.i, %BB_80492CC.i.i ], [ 0, %Func_80492D4.exit.i.i ]
  br label %BB_80492CC.i.i

Func_print_first_repeat.exit:                     ; preds = %Func_80492D4.exit.i.i, %.exit
  %spi.bis.835 = ptrtoint[29 x i8]* @str.bis.835 to i32
  store i32 %spi.bis.835, i32* %19, align 16
  store i32 134517539, i32* %20, align 4
  %arg.i.i6.i = load i32, i32* %19, align 16
  %33 = inttoptr i32 %arg.i.i6.i to i8*
  %34 = tail call i32 @puts(i8* nonnull dereferenceable(1) %33)
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

  tail call fastcc void @print_first_repeat837 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack836, i32 0, i32 8092) to i32)) nounwind
