; Mutation 19
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack18 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

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

; Function Attrs: noinline
declare i32 @tolower(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @toupper(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc { i32, i32, i32, i32, i32 } @Func_letter_flip(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx, i32 %arg_ecx) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i49.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i49.i to i32*
  store i32 %arg_ebp, i32* %1, align 4
  %tmp2_v1.i51.i = add i32 %arg_esp, -8
  %2 = inttoptr i32 %tmp2_v1.i51.i to i32*
  store i32 %arg_ebx, i32* %2, align 4
  %tmp2_v2.i53.i = add i32 %arg_esp, -32
  %3 = inttoptr i32 %tmp2_v2.i53.i to i32*
  store i32 134517530, i32* %3, align 4
  %tmp2_v.i64.i = add i32 %arg_esp, 4
  %4 = inttoptr i32 %tmp2_v.i64.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, -44
  %6 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %5, i32* %6, align 4
  %tmp2_v4.i66.i = add i32 %arg_esp, -48
  %7 = inttoptr i32 %tmp2_v4.i66.i to i32*
  store i32 134517547, i32* %7, align 4
  %arg.i.i = load i32, i32* %6, align 4
  %8 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i4.i = add i32 %arg_esp, -16
  %9 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v1.i5.i = add i32 %arg_esp, -20
  %10 = inttoptr i32 %tmp2_v1.i5.i to i32*
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %BB_804933D.i, label %.exit

BB_8049365.i:                                     ; preds = %BB_804933D.i
  store i32 %tmp0_v6.i13.i, i32* %6, align 4
  store i32 134517628, i32* %7, align 4
  %arg.i.i39 = load i32, i32* %6, align 4
  %13 = tail call i32 @tolower(i32 %arg.i.i39)
  br label %BB_80493DF.i.sink.split

BB_80493DF.i.sink.split:                          ; preds = %BB_80493B7.i, %BB_8049365.i
  %.sink50 = phi i32 [ %43, %BB_80493B7.i ], [ %13, %BB_8049365.i ]
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  %tmp0_v4.i38.i = add i32 %15, %14
  %16 = trunc i32 %.sink50 to i8
  %17 = inttoptr i32 %tmp0_v4.i38.i to i8*
  store i8 %16, i8* %17, align 1
  br label %BB_80493DF.i

BB_80493DF.i:                                     ; preds = %BB_804938F.i, %BB_80493DF.i.sink.split
  %r_ecx.0 = phi i32 [ %24, %BB_804938F.i ], [ %.sink50, %BB_80493DF.i.sink.split ]
  %r_edx.0 = phi i32 [ %tmp0_v7.i98.i, %BB_804938F.i ], [ %.sink50, %BB_80493DF.i.sink.split ]
  %18 = load i32, i32* %10, align 4
  %tmp0_v1.i17.i = add i32 %18, 1
  store i32 %tmp0_v1.i17.i, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %tmp0_v1.i17.i, %19
  br i1 %20, label %BB_804933D.i, label %.exit

BB_804938F.i:                                     ; preds = %BB_804933D.i
  store i32 134517652, i32* %3, align 4
  %21 = tail call i32 @__ctype_b_loc()
  %22 = inttoptr i32 %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  %tmp0_v4.i95.i = add i32 %25, %24
  %26 = inttoptr i32 %tmp0_v4.i95.i to i8*
  %27 = load i8, i8* %26, align 1
  %tmp0_v6.i97.i = sext i8 %27 to i32
  %tmp0_v7.i98.i = shl nsw i32 %tmp0_v6.i97.i, 1
  %tmp0_v8.i99.i = add i32 %tmp0_v7.i98.i, %23
  %28 = inttoptr i32 %tmp0_v8.i99.i to i16*
  %29 = load i16, i16* %28, align 2
  %30 = and i16 %29, 512
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %BB_80493DF.i, label %BB_80493B7.i

BB_804933D.i:                                     ; preds = %BB_80493DF.i, %0
  store i32 134517570, i32* %3, align 4
  %32 = tail call i32 @__ctype_b_loc()
  %33 = inttoptr i32 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %4, align 4
  %tmp0_v4.i11.i = add i32 %36, %35
  %37 = inttoptr i32 %tmp0_v4.i11.i to i8*
  %38 = load i8, i8* %37, align 1
  %tmp0_v6.i13.i = sext i8 %38 to i32
  %tmp0_v7.i.i = shl nsw i32 %tmp0_v6.i13.i, 1
  %tmp0_v8.i.i = add i32 %tmp0_v7.i.i, %34
  %39 = inttoptr i32 %tmp0_v8.i.i to i16*
  %40 = load i16, i16* %39, align 2
  %41 = and i16 %40, 256
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %BB_804938F.i, label %BB_8049365.i

BB_80493B7.i:                                     ; preds = %BB_804938F.i
  store i32 %tmp0_v6.i97.i, i32* %6, align 4
  store i32 134517710, i32* %7, align 4
  %arg.i.i45 = load i32, i32* %6, align 4
  %43 = tail call i32 @toupper(i32 %arg.i.i45)
  br label %BB_80493DF.i.sink.split

.exit:                                            ; preds = %BB_80493DF.i, %0
  %r_ecx.1.lcssa = phi i32 [ %arg_ecx, %0 ], [ %r_ecx.0, %BB_80493DF.i ]
  %r_edx.1.lcssa = phi i32 [ %arg_edx, %0 ], [ %r_edx.0, %BB_80493DF.i ]
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %1, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp2_v.i64.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %r_edx.1.lcssa, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %45, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %44, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %r_ecx.1.lcssa, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}

; Function Attrs: norecurse
define internal fastcc void @letter_flip19(i32 %arg_esp) unnamed_addr  norecurse  !retregs !13 {
.exit:
  %tmp2_v.i18.i = add i32 %arg_esp, 4
  %tmp0_v.i19.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i20.i = add i32 %tmp0_v.i19.i, -4
  %2 = inttoptr i32 %tmp2_v3.i20.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i21.i = add i32 %tmp0_v.i19.i, -8
  %3 = inttoptr i32 %tmp2_v4.i21.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i23.i = add i32 %tmp0_v.i19.i, -12
  %4 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i25.i = add i32 %tmp0_v.i19.i, -16
  %5 = inttoptr i32 %tmp2_v6.i25.i to i32*
  store i32 %tmp2_v.i18.i, i32* %5, align 16
  %tmp2_v8.i27.i = add i32 %tmp0_v.i19.i, -68
  %6 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 134517329, i32* %6, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i6.i = add i32 %tmp0_v.i19.i, -20
  %9 = inttoptr i32 %tmp2_v2.i6.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i19.i, -50
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1684234849, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i19.i, -46
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1128415589, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i19.i, -42
  %12 = inttoptr i32 %tmp2_v5.i.i to i16*
  store i16 17732, i16* %12, align 2
  %tmp2_v6.i.i = add i32 %tmp0_v.i19.i, -40
  %13 = inttoptr i32 %tmp2_v6.i.i to i8*
  store i8 0, i8* %13, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i19.i, -80
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %14, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i19.i, -84
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517382, i32* %15, align 4
  %16 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_letter_flip(i32 %tmp2_v10.i.i, i32 0, i32 %tmp2_v4.i21.i, i32 134529024, i32 %tmp2_v.i18.i)
  %17 = extractvalue { i32, i32, i32, i32, i32 } %16, 0
  %18 = extractvalue { i32, i32, i32, i32, i32 } %16, 1
  %19 = extractvalue { i32, i32, i32, i32, i32 } %16, 2
  %20 = extractvalue { i32, i32, i32, i32, i32 } %16, 3
  %21 = extractvalue { i32, i32, i32, i32, i32 } %16, 4
  %tmp2_v.i41.i = add i32 %19, -42
  %tmp2_v2.i42.i = add i32 %17, 4
  %22 = inttoptr i32 %tmp2_v2.i42.i to i32*
  store i32 %tmp2_v.i41.i, i32* %22, align 4
  %tmp2_v3.i44.i = add i32 %20, -8184
  %23 = inttoptr i32 %17 to i32*
  store i32 %tmp2_v3.i44.i, i32* %23, align 4
  %tmp2_v5.i45.i = add i32 %17, -4
  %24 = inttoptr i32 %tmp2_v5.i45.i to i32*
  store i32 134517404, i32* %24, align 4
  %25 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %21, i32 inreg noundef %18, i32 noundef %17, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %tmp2_v.i31.i = add i32 %19, -31
  %28 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 1399416916, i32* %28, align 4
  %tmp2_v1.i.i = add i32 %19, -27
  %29 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 542337312, i32* %29, align 4
  %tmp2_v2.i32.i = add i32 %19, -23
  %30 = inttoptr i32 %tmp2_v2.i32.i to i32*
  store i32 1931508045, i32* %30, align 4
  %tmp2_v3.i33.i = add i32 %19, -19
  %31 = inttoptr i32 %tmp2_v3.i33.i to i32*
  store i32 1850307156, i32* %31, align 4
  %tmp2_v4.i34.i = add i32 %19, -15
  %32 = inttoptr i32 %tmp2_v4.i34.i to i16*
  store i16 8519, i16* %32, align 2
  %tmp2_v5.i35.i = add i32 %19, -13
  %33 = inttoptr i32 %tmp2_v5.i35.i to i8*
  store i8 0, i8* %33, align 1
  store i32 %tmp2_v.i31.i, i32* %23, align 4
  store i32 134517457, i32* %24, align 4
  %34 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_letter_flip(i32 %tmp2_v5.i45.i, i32 %27, i32 %19, i32 %20, i32 %21)
  %35 = extractvalue { i32, i32, i32, i32, i32 } %34, 0
  %36 = extractvalue { i32, i32, i32, i32, i32 } %34, 1
  %37 = extractvalue { i32, i32, i32, i32, i32 } %34, 2
  %38 = extractvalue { i32, i32, i32, i32, i32 } %34, 3
  %39 = extractvalue { i32, i32, i32, i32, i32 } %34, 4
  %tmp2_v.i12.i = add i32 %37, -31
  %tmp2_v2.i13.i = add i32 %35, 4
  %40 = inttoptr i32 %tmp2_v2.i13.i to i32*
  store i32 %tmp2_v.i12.i, i32* %40, align 4
  %tmp2_v3.i15.i = add i32 %38, -8170
  %41 = inttoptr i32 %35 to i32*
  store i32 %tmp2_v3.i15.i, i32* %41, align 4
  %tmp2_v5.i16.i = add i32 %35, -4
  %42 = inttoptr i32 %tmp2_v5.i16.i to i32*
  store i32 134517479, i32* %42, align 4
  %43 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %39, i32 inreg noundef %36, i32 noundef %35, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
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
!12 = !{i32 0, i32 1, i32 2, i32 3, i32 4}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @letter_flip19 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack18, i32 0, i32 8092) to i32)) nounwind
