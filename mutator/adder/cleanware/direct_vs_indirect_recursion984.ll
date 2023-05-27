; Mutation 984
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack983 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.982 = constant [9 x i8] c"sum: %d\0a\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
._crit_edge:
  %1 = load i32, i32* @fpstt, align 16
  %.pre = and i64 %0, 4503599627370495
  %.pre1 = and i64 %0, 9218868437227405312
  %phi.cmp = icmp ne i64 %.pre1, 9218868437227405312
  %phi.cmp3 = icmp eq i64 %.pre, 0
  %2 = or i1 %phi.cmp, %phi.cmp3
  br i1 %2, label %float64_to_floatx80.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.exit

float64_to_floatx80.exit:                         ; preds = %.sink.split.i, %3, %._crit_edge
  %11 = add i32 %1, 7
  %12 = and i32 %11, 7
  store i32 %12, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: naked noinline
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr  naked noinline "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: mustprogress nounwind uwtable
define internal x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %0, i32 inreg noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr  mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %5 = alloca double, align 8
  %6 = tail call { i32, i32 } asm "movl    %esp, %ebx\0A\09movl    $2, %esp\0A\09calll   *$3\0A\09movl    %ebx, %esp", "={ax},={dx},r,r,{cx},{dx},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 %2, i32 %3, i32 %0, i32 %1)  nounwind readnone 
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  %9 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9)  nounwind 
  call void asm "fstpl   $0", "=*m,~{dirflag},~{fpsr},~{flags}"(double* nonnull elementtype(double) %5)  nounwind 
  %10 = load double, double* %5, align 8, !tbaa !6
  %11 = fptoui double %10 to i64
  call fastcc void @helper_fldl_ST0(i64 noundef %11)  nobuiltin nounwind "no-builtins" 
  %12 = zext i32 %8 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %7 to i64
  %15 = or i64 %13, %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9)  nounwind 
  ret i64 %15
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture)  argmemonly nofree nosync nounwind willreturn 

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture)  argmemonly nofree nosync nounwind willreturn 

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: norecurse nounwind
define internal fastcc void @direct_vs_indirect_recursion984(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i5.i = add i32 %arg_esp, 4
  %tmp0_v.i6.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i6.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i6.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i9.i = add i32 %tmp0_v.i6.i, -12
  %5 = inttoptr i32 %tmp2_v5.i9.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i6.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i5.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i6.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %7, align 4
  %tmp2_v.i14.i = add i32 %tmp0_v.i6.i, -48
  %8 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 4, i32* %8, align 16
  %tmp2_v2.i15.i = add i32 %tmp0_v.i6.i, -52
  %9 = inttoptr i32 %tmp2_v2.i15.i to i32*
  store i32 134517185, i32* %9, align 4
  %10 = tail call fastcc { i32, i32, i32, i32 } @Func_sum_integers(i32 %tmp2_v2.i15.i, i32 %tmp2_v4.i.i)
  %11 = extractvalue { i32, i32, i32, i32 } %10, 0
  %12 = extractvalue { i32, i32, i32, i32 } %10, 1
  %13 = extractvalue { i32, i32, i32, i32 } %10, 2
  %14 = extractvalue { i32, i32, i32, i32 } %10, 3
  %tmp2_v.i19.i = add i32 %14, -12
  %15 = inttoptr i32 %tmp2_v.i19.i to i32*
  store i32 %12, i32* %15, align 4
  %tmp2_v4.i22.i = add i32 %11, 4
  %16 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 %12, i32* %16, align 4
  %17 = inttoptr i32 %11 to i32*
  %spi.bis.982 = ptrtoint[9 x i8]* @str.982 to i32
  store i32 %spi.bis.982, i32* %17, align 4
  %tmp2_v7.i.i = add i32 %11, -4
  %18 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517209, i32* %18, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i5.i, i32 inreg noundef %13, i32 noundef %11, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 10, i32* %17, align 4
  store i32 134517222, i32* %18, align 4
  %tmp2_v.i5.i.i = add i32 %11, -8
  %20 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  store i32 %14, i32* %20, align 4
  %tmp2_v1.i.i.i = add i32 %11, -20
  %21 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517313, i32* %21, align 4
  %22 = load i32, i32* %17, align 4
  %tmp2_v2.i.i.i = add i32 %11, -32
  %23 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %22, i32* %23, align 4
  %tmp2_v3.i.i.i = add i32 %11, -36
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517339, i32* %24, align 4
  %25 = tail call fastcc i32 @Func_print_even(i32 %tmp2_v3.i.i.i, i32 %tmp2_v.i5.i.i, i32 134529024, i32 %tmp2_v.i5.i)  nounwind 
  ret void
}

; Function Attrs: nofree nosync nounwind
define internal fastcc { i32, i32, i32, i32 } @Func_sum_integers(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !14 {
Func_8049207.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -16
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517255, i32* %1, align 4
  %tmp2_v.i3.i = add i32 %arg_esp, 4
  %2 = inttoptr i32 %tmp2_v.i3.i to i32*
  %3 = load i32, i32* %2, align 4
  %.not.i.i = icmp eq i32 %3, 1
  br i1 %.not.i.i, label %Func_8049207.exit.i..exit_crit_edge, label %BB_8049219.i

Func_8049207.exit.i..exit_crit_edge:              ; preds = %Func_8049207.exit.i
  %.pre1 = add i32 %arg_esp, 4
  br label %.exit

BB_8049219.i:                                     ; preds = %Func_8049207.exit.i
  %tmp0_v1.i10.i = add i32 %3, -1
  %tmp2_v3.i.i = add i32 %arg_esp, -28
  %4 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %tmp0_v1.i10.i, i32* %4, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -32
  %5 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517288, i32* %5, align 4
  %6 = tail call fastcc { i32, i32, i32, i32 } @Func_sum_integers(i32 %tmp2_v4.i.i, i32 %tmp2_v.i.i)
  %7 = extractvalue { i32, i32, i32, i32 } %6, 1
  %8 = extractvalue { i32, i32, i32, i32 } %6, 3
  %tmp2_v.i15.i = add i32 %8, 8
  %9 = inttoptr i32 %tmp2_v.i15.i to i32*
  %10 = load i32, i32* %9, align 4
  %tmp0_v2.i18.i = add i32 %7, %10
  %.pre = inttoptr i32 %8 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_8049219.i, %Func_8049207.exit.i..exit_crit_edge
  %tmp4_v2.i.i.pre-phi = phi i32 [ %.pre1, %Func_8049207.exit.i..exit_crit_edge ], [ %tmp2_v.i15.i, %BB_8049219.i ]
  %.pre-phi = phi i32* [ %0, %Func_8049207.exit.i..exit_crit_edge ], [ %.pre, %BB_8049219.i ]
  %r_edx.0 = phi i32 [ 0, %Func_8049207.exit.i..exit_crit_edge ], [ %10, %BB_8049219.i ]
  %r_eax.0 = phi i32 [ 1, %Func_8049207.exit.i..exit_crit_edge ], [ %tmp0_v2.i18.i, %BB_8049219.i ]
  %11 = load i32, i32* %.pre-phi, align 4
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i.pre-phi, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %r_edx.0, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %11, 3
  ret { i32, i32, i32, i32 } %mrv3
}

; Function Attrs: nounwind
define internal fastcc i32 @Func_print_even(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx, i32 %arg_ecx) unnamed_addr  nounwind  !retregs !15 {
Func_8049281.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %arg_ebx, i32* %1, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, -16
  %2 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517377, i32* %2, align 4
  %tmp2_v.i3.i = add i32 %arg_esp, 4
  %3 = inttoptr i32 %tmp2_v.i3.i to i32*
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %.exit, label %BB_804928C.i

BB_804928C.i:                                     ; preds = %Func_8049281.exit.i
  %tmp2_v2.i14.i = add i32 %arg_esp, -24
  %6 = inttoptr i32 %tmp2_v2.i14.i to i32*
  store i32 %4, i32* %6, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -28
  %7 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134520849, i32* %7, align 4
  %tmp2_v5.i16.i = add i32 %arg_esp, -32
  %8 = inttoptr i32 %tmp2_v5.i16.i to i32*
  store i32 134517408, i32* %8, align 4
  %9 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %arg_ecx, i32 inreg noundef 134520849, i32 noundef %tmp2_v4.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %10 = load i32, i32* %3, align 4
  %tmp0_v2.i.i = add i32 %10, -1
  store i32 %tmp0_v2.i.i, i32* %7, align 4
  store i32 134517426, i32* %8, align 4
  %tmp2_v.i6.i.i = add i32 %arg_esp, -36
  %11 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %11, align 4
  %tmp2_v1.i.i.i = add i32 %arg_esp, -40
  %12 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %arg_esp, -48
  %13 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517451, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %tmp2_v2.i21.i.i = add i32 %arg_esp, -56
  %15 = inttoptr i32 %tmp2_v2.i21.i.i to i32*
  store i32 %14, i32* %15, align 4
  %tmp2_v4.i.i.i = add i32 %arg_esp, -60
  %16 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134520860, i32* %16, align 4
  %tmp2_v5.i23.i.i = add i32 %arg_esp, -64
  %17 = inttoptr i32 %tmp2_v5.i23.i.i to i32*
  store i32 134517482, i32* %17, align 4
  %18 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %arg_ecx, i32 inreg noundef 134520860, i32 noundef %tmp2_v4.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %19 = load i32, i32* %7, align 4
  %tmp0_v2.i14.i.i = add i32 %19, -1
  store i32 %tmp0_v2.i14.i.i, i32* %16, align 4
  store i32 134517500, i32* %17, align 4
  %20 = tail call fastcc i32 @Func_print_even(i32 %tmp2_v5.i23.i.i, i32 %tmp2_v.i6.i.i, i32 134529024, i32 %arg_ecx)
  %21 = inttoptr i32 %20 to i32*
  %22 = load i32, i32* %21, align 4
  %.pre = inttoptr i32 %22 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_804928C.i, %Func_8049281.exit.i
  %.pre-phi = phi i32* [ %0, %Func_8049281.exit.i ], [ %.pre, %BB_804928C.i ]
  %23 = load i32, i32* %.pre-phi, align 4
  ret i32 %23
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
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}
!14 = !{i32 0, i32 2, i32 3}
!15 = !{i32 0, i32 1, i32 0, i32 0}

  tail call fastcc void @direct_vs_indirect_recursion984 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack983, i32 0, i32 8092) to i32)) nounwind
