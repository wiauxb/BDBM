; Mutation 17
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack16 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.14 = constant [4 x i8] c"\25\64\0a\00"
@str.bis.15 = constant [14 x i8] c"\25\64\20\4c\45\41\50\20\59\45\41\52\0a\00"

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
define internal fastcc void @is_leap_year17(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
BB_80491C0.i.lr.ph:
  %tmp2_v.i24.i = add i32 %arg_esp, 4
  %tmp0_v.i25.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i27.i = add i32 %tmp0_v.i25.i, -4
  %2 = inttoptr i32 %tmp2_v3.i27.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i28.i = add i32 %tmp0_v.i25.i, -8
  %3 = inttoptr i32 %tmp2_v4.i28.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i30.i = add i32 %tmp0_v.i25.i, -12
  %4 = inttoptr i32 %tmp2_v5.i30.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i25.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i24.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i25.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i45.i = add i32 %tmp0_v.i25.i, -20
  %7 = inttoptr i32 %tmp2_v.i45.i to i32*
  store i32 1900, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i25.i, -48
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  %tmp2_v3.i.i = add i32 %tmp0_v.i25.i, -52
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  %tmp2_v.i.i.i = add i32 %tmp0_v.i25.i, -56
  %10 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i25.i, -60
  %11 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %tmp2_v2.i13.i = add i32 %tmp0_v.i25.i, -44
  %12 = inttoptr i32 %tmp2_v2.i13.i to i32*
  br label %BB_80491C0.i

BB_80491C0.i:                                     ; preds = %BB_80491FE.i, %BB_80491C0.i.lr.ph
  %13 = phi i32 [ 1900, %BB_80491C0.i.lr.ph ], [ %tmp0_v1.i49.i, %BB_80491FE.i ]
  %r_ecx.013 = phi i32 [ %tmp2_v.i24.i, %BB_80491C0.i.lr.ph ], [ %r_ecx.0.i19, %BB_80491FE.i ]
  %r_edx.112 = phi i32 [ 0, %BB_80491C0.i.lr.ph ], [ %.sink.off32, %BB_80491FE.i ]
  %r_ebp.011 = phi i32 [ %tmp2_v4.i28.i, %BB_80491C0.i.lr.ph ], [ %29, %BB_80491FE.i ]
  store i32 %13, i32* %8, align 16
  store i32 134517195, i32* %9, align 4
  store i32 %r_ebp.011, i32* %10, align 8
  store i32 134517286, i32* %11, align 4
  %14 = load i32, i32* %8, align 16
  %tmp0_v2.i.i.i = and i32 %14, 3
  %15 = icmp eq i32 %tmp0_v2.i.i.i, 0
  br i1 %15, label %BB_804923C.i.i, label %Func_is_leap_year.exit.thread

Func_is_leap_year.exit.thread:                    ; preds = %BB_80491C0.i
  %16 = load i32, i32* %10, align 8
  br label %BB_80491E9.i

BB_804923C.i.i:                                   ; preds = %BB_80491C0.i
  %tmp16_v.i18.i.i = sext i32 %14 to i64
  %tmp15_v.i19.i.i = mul nsw i64 %tmp16_v.i18.i.i, 1374389535
  %tmp15_v1.i20.i.i = lshr i64 %tmp15_v.i19.i.i, 32
  %17 = trunc i64 %tmp15_v1.i20.i.i to i32
  %tmp0_v3.i21.i.i = ashr i32 %17, 5
  %tmp0_v4.i22.i.neg.i = lshr i32 %14, 31
  %tmp0_v5.i23.i.i = add nsw i32 %tmp0_v3.i21.i.i, %tmp0_v4.i22.i.neg.i
  %tmp17_v6.i24.i.neg.i = mul i32 %tmp0_v5.i23.i.i, -100
  %tmp0_v8.i25.i.i = add i32 %tmp17_v6.i24.i.neg.i, %14
  %18 = icmp eq i32 %tmp0_v8.i25.i.i, 0
  br i1 %18, label %Func_is_leap_year.exit, label %Func_is_leap_year.exit.thread20

Func_is_leap_year.exit.thread20:                  ; preds = %BB_804923C.i.i
  %19 = load i32, i32* %10, align 8
  br label %BB_80491D2.i

Func_is_leap_year.exit:                           ; preds = %BB_804923C.i.i
  %tmp0_v3.i.i.i = ashr i32 %17, 7
  %tmp0_v5.i.i.i = add nsw i32 %tmp0_v3.i.i.i, %tmp0_v4.i22.i.neg.i
  %tmp17_v6.i.i.neg.i = mul i32 %tmp0_v5.i.i.i, -400
  %tmp0_v8.i.i.i = add i32 %tmp17_v6.i.i.neg.i, %14
  %.not = icmp eq i32 %tmp0_v8.i.i.i, 0
  %20 = load i32, i32* %10, align 8
  br i1 %.not, label %BB_80491D2.i, label %BB_80491E9.i

BB_80491D2.i:                                     ; preds = %Func_is_leap_year.exit, %Func_is_leap_year.exit.thread20
  %21 = phi i32 [ %19, %Func_is_leap_year.exit.thread20 ], [ %20, %Func_is_leap_year.exit ]
  %r_ecx.0.i25 = phi i32 [ %tmp0_v8.i25.i.i, %Func_is_leap_year.exit.thread20 ], [ %tmp0_v8.i.i.i, %Func_is_leap_year.exit ]
  %r_edx.0.i24 = phi i32 [ %tmp0_v5.i23.i.i, %Func_is_leap_year.exit.thread20 ], [ %tmp0_v5.i.i.i, %Func_is_leap_year.exit ]
  %tmp2_v.i11.i = add i32 %21, -12
  %22 = inttoptr i32 %tmp2_v.i11.i to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %spi.bis.15 = ptrtoint[14 x i8]* @str.bis.15 to i32
  store i32 %spi.bis.15, i32* %8, align 16
  store i32 134517220, i32* %9, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.i25, i32 inreg noundef %r_edx.0.i24, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %extract31 = lshr i64 %24, 32
  %extract.t32 = trunc i64 %extract31 to i32
  br label %BB_80491FE.i

BB_80491E9.i:                                     ; preds = %Func_is_leap_year.exit, %Func_is_leap_year.exit.thread
  %25 = phi i32 [ %16, %Func_is_leap_year.exit.thread ], [ %20, %Func_is_leap_year.exit ]
  %r_ecx.0.i18 = phi i32 [ %r_ecx.013, %Func_is_leap_year.exit.thread ], [ %tmp0_v8.i.i.i, %Func_is_leap_year.exit ]
  %r_edx.0.i17 = phi i32 [ %r_edx.112, %Func_is_leap_year.exit.thread ], [ %tmp0_v5.i.i.i, %Func_is_leap_year.exit ]
  %tmp2_v.i35.i = add i32 %25, -12
  %26 = inttoptr i32 %tmp2_v.i35.i to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %spi.bis.14 = ptrtoint[4 x i8]* @str.bis.14 to i32
  store i32 %spi.bis.14, i32* %8, align 16
  store i32 134517243, i32* %9, align 4
  %28 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.i18, i32 inreg noundef %r_edx.0.i17, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %extract29 = lshr i64 %28, 32
  %extract.t30 = trunc i64 %extract29 to i32
  br label %BB_80491FE.i

BB_80491FE.i:                                     ; preds = %BB_80491E9.i, %BB_80491D2.i
  %.sink.off32 = phi i32 [ %extract.t30, %BB_80491E9.i ], [ %extract.t32, %BB_80491D2.i ]
  %29 = phi i32 [ %25, %BB_80491E9.i ], [ %21, %BB_80491D2.i ]
  %r_ecx.0.i19 = phi i32 [ %r_ecx.0.i18, %BB_80491E9.i ], [ %r_ecx.0.i25, %BB_80491D2.i ]
  %.pre-phi = phi i32* [ %26, %BB_80491E9.i ], [ %22, %BB_80491D2.i ]
  %30 = load i32, i32* %.pre-phi, align 4
  %tmp0_v1.i49.i = add i32 %30, 1
  store i32 %tmp0_v1.i49.i, i32* %.pre-phi, align 4
  %31 = icmp slt i32 %tmp0_v1.i49.i, 2101
  br i1 %31, label %BB_80491C0.i, label %.exit

.exit:                                            ; preds = %BB_80491FE.i
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
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @is_leap_year17 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack16, i32 0, i32 8092) to i32)) nounwind
