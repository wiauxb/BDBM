; Mutation 897
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack896 = internal global [8092 x i32] zeroinitializer, align 16
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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: nofree nounwind
define internal fastcc { i32, i32 } @Func_print_reverse(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  nofree nounwind  !retregs !10 {
Func_804924E.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %arg_ebx, i32* %1, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, -16
  %2 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517326, i32* %2, align 4
  %tmp2_v.i8.i = add i32 %arg_esp, 4
  %3 = inttoptr i32 %tmp2_v.i8.i to i32*
  %4 = load i32, i32* %3, align 4
  %5 = inttoptr i32 %4 to i8*
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %Func_804924E.exit.i..exit_crit_edge, label %BB_804925E.i

Func_804924E.exit.i..exit_crit_edge:              ; preds = %Func_804924E.exit.i
  %.pre16 = add i32 %arg_esp, 4
  br label %.exit

BB_804925E.i:                                     ; preds = %Func_804924E.exit.i
  %tmp0_v1.i.i = add i32 %4, 1
  %tmp2_v3.i.i = add i32 %arg_esp, -28
  %8 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %tmp0_v1.i.i, i32* %8, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -32
  %9 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517357, i32* %9, align 4
  %10 = tail call fastcc { i32, i32 } @Func_print_reverse(i32 %tmp2_v4.i.i, i32 %tmp2_v.i.i, i32 134529024)
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = extractvalue { i32, i32 } %10, 1
  %tmp2_v.i20.i = add i32 %12, 8
  %13 = inttoptr i32 %tmp2_v.i20.i to i32*
  %14 = load i32, i32* %13, align 4
  %15 = inttoptr i32 %14 to i8*
  %16 = load i8, i8* %15, align 1
  %tmp0_v3.i23.i = sext i8 %16 to i32
  %17 = inttoptr i32 %11 to i32*
  store i32 %tmp0_v3.i23.i, i32* %17, align 4
  %tmp2_v6.i.i = add i32 %11, -4
  %18 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134517378, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 4
  %19 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %.pre = inttoptr i32 %12 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_804925E.i, %Func_804924E.exit.i..exit_crit_edge
  %tmp4_v3.i.i.pre-phi = phi i32 [ %.pre16, %Func_804924E.exit.i..exit_crit_edge ], [ %tmp2_v.i20.i, %BB_804925E.i ]
  %.pre-phi = phi i32* [ %0, %Func_804924E.exit.i..exit_crit_edge ], [ %.pre, %BB_804925E.i ]
  %20 = load i32, i32* %.pre-phi, align 4
  %mrv = insertvalue { i32, i32 } undef, i32 %tmp4_v3.i.i.pre-phi, 0
  %mrv1 = insertvalue { i32, i32 } %mrv, i32 %20, 1
  ret { i32, i32 } %mrv1
}

; Function Attrs: nofree norecurse nounwind
define internal fastcc void @print_reverse_recursive897(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !11 {
.exit:
  %tmp2_v.i12.i = add i32 %arg_esp, 4
  %tmp0_v.i13.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i14.i = add i32 %tmp0_v.i13.i, -4
  %2 = inttoptr i32 %tmp2_v3.i14.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i15.i = add i32 %tmp0_v.i13.i, -8
  %3 = inttoptr i32 %tmp2_v4.i15.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i17.i = add i32 %tmp0_v.i13.i, -12
  %4 = inttoptr i32 %tmp2_v5.i17.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i19.i = add i32 %tmp0_v.i13.i, -16
  %5 = inttoptr i32 %tmp2_v6.i19.i to i32*
  store i32 %tmp2_v.i12.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i13.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i4.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i8.i = add i32 %tmp0_v.i13.i, -20
  %9 = inttoptr i32 %tmp2_v2.i8.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i13.i, -37
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i9.i = add i32 %tmp0_v.i13.i, -33
  %11 = inttoptr i32 %tmp2_v4.i9.i to i32*
  store i32 544434464, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i13.i, -29
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i13.i, -25
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 779706743, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i13.i, -21
  %14 = inttoptr i32 %tmp2_v7.i.i to i8*
  store i8 0, i8* %14, align 1
  %tmp2_v10.i.i = add i32 %tmp0_v.i13.i, -64
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %15, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i13.i, -68
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517262, i32* %16, align 4
  %17 = tail call fastcc { i32, i32 } @Func_print_reverse(i32 %tmp2_v11.i.i, i32 %tmp2_v4.i15.i, i32 134529024)
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = inttoptr i32 %18 to i32*
  store i32 10, i32* %19, align 4
  %tmp2_v2.i.i = add i32 %18, -4
  %20 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517275, i32* %20, align 4
  %arg.i.i = load i32, i32* %19, align 4
  %21 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
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
!10 = !{i32 0, i32 1, i32 0}
!11 = !{i32 0, i32 0, i32 0}

  tail call fastcc void @print_reverse_recursive897 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack896, i32 0, i32 8092) to i32)) nounwind
