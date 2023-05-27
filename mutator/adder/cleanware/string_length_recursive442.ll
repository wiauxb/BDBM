; Mutation 442
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack441 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.440 = constant [12 x i8] c"length: %d\0a\00"

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

; Function Attrs: nofree nosync nounwind
define internal fastcc { i32, i32, i32 } @Func_string_length(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !12 {
Func_8049245.exit.i:
  %tmp2_v.i2.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -16
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517317, i32* %1, align 4
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %2 = inttoptr i32 %tmp2_v.i16.i to i32*
  %3 = load i32, i32* %2, align 4
  %4 = inttoptr i32 %3 to i8*
  %5 = load i8, i8* %4, align 1
  %.not.i.i = icmp eq i8 %5, 0
  br i1 %.not.i.i, label %.exit, label %BB_804925B.i

BB_804925B.i:                                     ; preds = %Func_8049245.exit.i
  %tmp0_v1.i.i = add i32 %3, 1
  %tmp2_v3.i.i = add i32 %arg_esp, -28
  %6 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %tmp0_v1.i.i, i32* %6, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -32
  %7 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517354, i32* %7, align 4
  %8 = tail call fastcc { i32, i32, i32 } @Func_string_length(i32 %tmp2_v4.i.i, i32 %tmp2_v.i2.i)
  %9 = extractvalue { i32, i32, i32 } %8, 1
  %10 = extractvalue { i32, i32, i32 } %8, 2
  %tmp0_v.i8.i = add i32 %9, 1
  %.pre = inttoptr i32 %10 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_804925B.i, %Func_8049245.exit.i
  %.pre-phi = phi i32* [ %0, %Func_8049245.exit.i ], [ %.pre, %BB_804925B.i ]
  %r_ebp.0 = phi i32 [ %tmp2_v.i2.i, %Func_8049245.exit.i ], [ %10, %BB_804925B.i ]
  %r_eax.0 = phi i32 [ 0, %Func_8049245.exit.i ], [ %tmp0_v.i8.i, %BB_804925B.i ]
  %11 = load i32, i32* %.pre-phi, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32 } %mrv1, i32 %11, 2
  ret { i32, i32, i32 } %mrv2
}

; Function Attrs: norecurse nounwind
define internal fastcc void @string_length_recursive442(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !13 {
.exit:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i3.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i3.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i14.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i18.i = add i32 %tmp0_v.i2.i, -20
  %9 = inttoptr i32 %tmp2_v2.i18.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i19.i = add i32 %tmp0_v.i2.i, -26
  %10 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 1684234849, i32* %10, align 4
  %tmp2_v4.i20.i = add i32 %tmp0_v.i2.i, -22
  %11 = inttoptr i32 %tmp2_v4.i20.i to i16*
  store i16 101, i16* %11, align 2
  %tmp2_v7.i.i = add i32 %tmp0_v.i2.i, -48
  %12 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v3.i19.i, i32* %12, align 16
  %tmp2_v8.i24.i = add i32 %tmp0_v.i2.i, -52
  %13 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 134517243, i32* %13, align 4
  %14 = tail call fastcc { i32, i32, i32 } @Func_string_length(i32 %tmp2_v8.i24.i, i32 %tmp2_v4.i3.i)
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = extractvalue { i32, i32, i32 } %14, 1
  %17 = extractvalue { i32, i32, i32 } %14, 2
  %tmp2_v.i28.i = add i32 %17, -24
  %18 = inttoptr i32 %tmp2_v.i28.i to i32*
  store i32 %16, i32* %18, align 4
  %tmp2_v4.i32.i = add i32 %15, 4
  %19 = inttoptr i32 %tmp2_v4.i32.i to i32*
  store i32 %16, i32* %19, align 4
  %20 = inttoptr i32 %15 to i32*
  %spi.bis.440 = ptrtoint[12 x i8]* @str.440 to i32
  store i32 %spi.bis.440, i32* %20, align 4
  %tmp2_v7.i35.i = add i32 %15, -4
  %21 = inttoptr i32 %tmp2_v7.i35.i to i32*
  store i32 134517267, i32* %21, align 4
  %22 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i1.i, i32 inreg noundef 0, i32 noundef %15, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
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
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{i32 0, i32 2}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @string_length_recursive442 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack441, i32 0, i32 8092) to i32)) nounwind
