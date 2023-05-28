; Mutation 69
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack68 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.67 = constant [13 x i8] c"\61\20\63\6f\75\6e\74\3a\20\25\64\0a\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
._crit_edge:
  %1 = load i32, i32* @fpstt, align 16
  %.pre = and i64 %0, 4503599627370495
  %.pre1 = and i64 %0, 9218868437227405312
  %phi.cmp = icmp ne i64 %.pre1, 9218868437227405312
  %phi.cmp3 = icmp eq i64 %.pre, 0
  %2 = or i1 %phi.cmp, %phi.cmp3
  br i1 %2, label %float64_to_floatx80.18.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.18.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.18.exit

float64_to_floatx80.18.exit:                      ; preds = %.sink.split.i, %3, %._crit_edge
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
define internal fastcc { i32, i32, i32, i32 } @Func_count_occurrences(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !12 {
Func_8049270.exit.i:
  %tmp2_v.i6.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i6.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i9.i = add i32 %arg_esp, -32
  %1 = inttoptr i32 %tmp2_v1.i9.i to i32*
  store i32 134517360, i32* %1, align 4
  %tmp2_v.i33.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i33.i to i32*
  %3 = load i32, i32* %2, align 4
  %tmp2_v2.i35.i = add i32 %arg_esp, -16
  %4 = trunc i32 %3 to i8
  %5 = inttoptr i32 %tmp2_v2.i35.i to i8*
  store i8 %4, i8* %5, align 1
  %tmp2_v3.i.i = add i32 %arg_esp, 4
  %6 = inttoptr i32 %tmp2_v3.i.i to i32*
  %7 = load i32, i32* %6, align 4
  %8 = inttoptr i32 %7 to i8*
  %9 = load i8, i8* %8, align 1
  %.not.i37.i = icmp eq i8 %9, 0
  br i1 %.not.i37.i, label %.exit, label %BB_804928C.i

BB_80492B3.i:                                     ; preds = %BB_804928C.i
  store i32 134517447, i32* %16, align 4
  %10 = tail call fastcc { i32, i32, i32, i32 } @Func_count_occurrences(i32 %tmp2_v7.i20.i, i32 %tmp0_v3.i15.i, i32 %tmp2_v.i6.i)
  %11 = extractvalue { i32, i32, i32, i32 } %10, 1
  %12 = extractvalue { i32, i32, i32, i32 } %10, 2
  %13 = extractvalue { i32, i32, i32, i32 } %10, 3
  br label %.exit

BB_804928C.i:                                     ; preds = %Func_8049270.exit.i
  %tmp0_v1.i.i = zext i8 %9 to i32
  %cc_dst_v.i.i = sub i32 %3, %tmp0_v1.i.i
  %tmp4_v.i.i = and i32 %cc_dst_v.i.i, 255
  %.not.i.i = icmp eq i32 %tmp4_v.i.i, 0
  %sext23 = shl i32 %3, 24
  %tmp0_v.i12.i = ashr exact i32 %sext23, 24
  %tmp0_v3.i15.i = add i32 %7, 1
  %tmp2_v5.i18.i = add i32 %arg_esp, -40
  %14 = inttoptr i32 %tmp2_v5.i18.i to i32*
  store i32 %tmp0_v.i12.i, i32* %14, align 4
  %tmp2_v6.i19.i = add i32 %arg_esp, -44
  %15 = inttoptr i32 %tmp2_v6.i19.i to i32*
  store i32 %tmp0_v3.i15.i, i32* %15, align 4
  %tmp2_v7.i20.i = add i32 %arg_esp, -48
  %16 = inttoptr i32 %tmp2_v7.i20.i to i32*
  br i1 %.not.i.i, label %BB_8049297.i, label %BB_80492B3.i

BB_8049297.i:                                     ; preds = %BB_804928C.i
  store i32 134517419, i32* %16, align 4
  %17 = tail call fastcc { i32, i32, i32, i32 } @Func_count_occurrences(i32 %tmp2_v7.i20.i, i32 %tmp0_v3.i15.i, i32 %tmp2_v.i6.i)
  %18 = extractvalue { i32, i32, i32, i32 } %17, 1
  %19 = extractvalue { i32, i32, i32, i32 } %17, 2
  %20 = extractvalue { i32, i32, i32, i32 } %17, 3
  %tmp0_v1.i42.i = add i32 %18, 1
  br label %.exit

.exit:                                            ; preds = %BB_8049297.i, %BB_80492B3.i, %Func_8049270.exit.i
  %r_edx.0 = phi i32 [ %12, %BB_80492B3.i ], [ %19, %BB_8049297.i ], [ %arg_edx, %Func_8049270.exit.i ]
  %r_ebp.0 = phi i32 [ %13, %BB_80492B3.i ], [ %20, %BB_8049297.i ], [ %tmp2_v.i6.i, %Func_8049270.exit.i ]
  %r_eax.0 = phi i32 [ %11, %BB_80492B3.i ], [ %tmp0_v1.i42.i, %BB_8049297.i ], [ 0, %Func_8049270.exit.i ]
  %21 = inttoptr i32 %r_ebp.0 to i32*
  %22 = load i32, i32* %21, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %r_edx.0, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %22, 3
  ret { i32, i32, i32, i32 } %mrv3
}

; Function Attrs: norecurse nounwind
define internal fastcc void @count_chars_recursion69(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !13 {
.exit:
  %tmp2_v.i23.i = add i32 %arg_esp, 4
  %tmp0_v.i24.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i24.i, -4
  %2 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i26.i = add i32 %tmp0_v.i24.i, -8
  %3 = inttoptr i32 %tmp2_v4.i26.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i28.i = add i32 %tmp0_v.i24.i, -12
  %4 = inttoptr i32 %tmp2_v5.i28.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i30.i = add i32 %tmp0_v.i24.i, -16
  %5 = inttoptr i32 %tmp2_v6.i30.i to i32*
  store i32 %tmp2_v.i23.i, i32* %5, align 16
  %tmp2_v8.i31.i = add i32 %tmp0_v.i24.i, -68
  %6 = inttoptr i32 %tmp2_v8.i31.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i7.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i11.i = add i32 %tmp0_v.i24.i, -20
  %9 = inttoptr i32 %tmp2_v2.i11.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i24.i, -51
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1701670739, i32* %10, align 4
  %tmp2_v4.i12.i = add i32 %tmp0_v.i24.i, -47
  %11 = inttoptr i32 %tmp2_v4.i12.i to i32*
  store i32 1634231072, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i24.i, -43
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1952670066, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i24.i, -39
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 544436837, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i24.i, -35
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1948282473, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i24.i, -31
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1931502952, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i24.i, -27
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1852404340, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i24.i, -23
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 11879, i16* %17, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i24.i, -21
  %18 = inttoptr i32 %tmp2_v11.i.i to i8*
  store i8 0, i8* %18, align 1
  %tmp2_v13.i.i = add i32 %tmp0_v.i24.i, -76
  %19 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 97, i32* %19, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i24.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i24.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517291, i32* %21, align 4
  %22 = tail call fastcc { i32, i32, i32, i32 } @Func_count_occurrences(i32 %tmp2_v16.i.i, i32 0, i32 %tmp2_v4.i26.i)
  %23 = extractvalue { i32, i32, i32, i32 } %22, 0
  %24 = extractvalue { i32, i32, i32, i32 } %22, 1
  %25 = extractvalue { i32, i32, i32, i32 } %22, 2
  %tmp2_v.i3.i = add i32 %23, 4
  %26 = inttoptr i32 %tmp2_v.i3.i to i32*
  store i32 %24, i32* %26, align 4
  %27 = inttoptr i32 %23 to i32*
  %spi.bis.67 = ptrtoint[13 x i8]* @str.bis.67 to i32
  store i32 %spi.bis.67, i32* %27, align 4
  %tmp2_v4.i4.i = add i32 %23, -4
  %28 = inttoptr i32 %tmp2_v4.i4.i to i32*
  store i32 134517310, i32* %28, align 4
  %29 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i23.i, i32 inreg noundef %25, i32 noundef %23, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  ret void
}


!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
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
!12 = !{i32 0, i32 2, i32 3}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @count_chars_recursion69 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack68, i32 0, i32 8092) to i32)) nounwind
