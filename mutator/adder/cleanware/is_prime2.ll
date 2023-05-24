; Mutation 2
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack1 = internal global [8092 x i32] zeroinitializer, align 16
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
  br i1 %2, label %float64_to_floatx80.20.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.20.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.20.exit

float64_to_floatx80.20.exit:                      ; preds = %.sink.split.i, %3, %._crit_edge
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
define internal fastcc void @is_prime2(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
BB_80491C0.i.lr.ph:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i53.i = add i32 %tmp0_v.i.i, -20
  %7 = inttoptr i32 %tmp2_v.i53.i to i32*
  store i32 2, i32* %7, align 4
  %tmp2_v2.i16.i = add i32 %tmp0_v.i.i, -48
  %8 = inttoptr i32 %tmp2_v2.i16.i to i32*
  %tmp2_v3.i17.i = add i32 %tmp0_v.i.i, -52
  %9 = inttoptr i32 %tmp2_v3.i17.i to i32*
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -56
  %10 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -76
  %11 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %tmp2_v.i36.i.i = add i32 %tmp0_v.i.i, -60
  %12 = inttoptr i32 %tmp2_v.i36.i.i to i32*
  %tmp2_v2.i23.i = add i32 %tmp0_v.i.i, -44
  %13 = inttoptr i32 %tmp2_v2.i23.i to i32*
  br label %BB_80491C0.i

BB_80491C0.i:                                     ; preds = %BB_80491FE.i, %BB_80491C0.i.lr.ph
  %14 = phi i32 [ 2, %BB_80491C0.i.lr.ph ], [ %tmp0_v1.i31.i, %BB_80491FE.i ]
  %r_ebp.04 = phi i32 [ %tmp2_v4.i.i, %BB_80491C0.i.lr.ph ], [ %28, %BB_80491FE.i ]
  store i32 %14, i32* %8, align 16
  store i32 134517195, i32* %9, align 4
  store i32 %r_ebp.04, i32* %10, align 8
  store i32 134517289, i32* %11, align 4
  store i32 2, i32* %12, align 4
  %15 = load i32, i32* %8, align 16
  %tmp0_v1.i15.i16.i = lshr i32 %15, 31
  %tmp0_v2.i.i17.i = add i32 %tmp0_v1.i15.i16.i, %15
  %.not.i19.i19.i = icmp slt i32 %tmp0_v2.i.i17.i, 4
  br i1 %.not.i19.i19.i, label %BB_80491FE.i, label %BB_8049244.i.i

BB_804925C.i.i:                                   ; preds = %BB_8049244.i.i
  store i32 %tmp0_v1.i11.i.i, i32* %12, align 4
  %16 = load i32, i32* %8, align 16
  %tmp0_v1.i15.i.i = lshr i32 %16, 31
  %tmp0_v2.i.i.i = add i32 %tmp0_v1.i15.i.i, %16
  %tmp0_v3.i16.i.i = ashr i32 %tmp0_v2.i.i.i, 1
  %.not.i19.i.not.i = icmp slt i32 %storemerge20.i, %tmp0_v3.i16.i.i
  br i1 %.not.i19.i.not.i, label %BB_8049244.i.i, label %BB_80491FE.i

BB_8049244.i.i:                                   ; preds = %BB_804925C.i.i, %BB_80491C0.i
  %17 = phi i32 [ %16, %BB_804925C.i.i ], [ %15, %BB_80491C0.i ]
  %storemerge20.i = phi i32 [ %tmp0_v1.i11.i.i, %BB_804925C.i.i ], [ 2, %BB_80491C0.i ]
  %tmp0_v1.i30.i.i = ashr i32 %17, 31
  %18 = zext i32 %17 to i64
  %19 = zext i32 %tmp0_v1.i30.i.i to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %18
  %22 = zext i32 %storemerge20.i to i64
  %.frozen = freeze i64 %21
  %.frozen11 = freeze i64 %22
  %23 = sdiv i64 %.frozen, %.frozen11
  %24 = add i64 %23, 2147483648
  %25 = icmp ult i64 %24, 4294967296
  tail call void @llvm.assume(i1 %25)  nounwind 
  %26 = mul i64 %23, %.frozen11
  %.decomposed = sub i64 %.frozen, %26
  %27 = trunc i64 %.decomposed to i32
  %.not.i33.i.i = icmp eq i32 %27, 0
  %tmp0_v1.i11.i.i = add nuw nsw i32 %storemerge20.i, 1
  br i1 %.not.i33.i.i, label %BB_80491FE.i, label %BB_804925C.i.i

BB_80491FE.i:                                     ; preds = %BB_8049244.i.i, %BB_804925C.i.i, %BB_80491C0.i
  %.sink7 = phi i32 [ 134520840, %BB_80491C0.i ], [ 134520853, %BB_8049244.i.i ], [ 134520840, %BB_804925C.i.i ]
  %.sink = phi i32 [ 134517220, %BB_80491C0.i ], [ 134517243, %BB_8049244.i.i ], [ 134517220, %BB_804925C.i.i ]
  %r_edx.0.i.ph.sink = phi i32 [ %tmp0_v1.i15.i16.i, %BB_80491C0.i ], [ 0, %BB_8049244.i.i ], [ %tmp0_v1.i15.i.i, %BB_804925C.i.i ]
  %28 = load i32, i32* %10, align 8
  %tmp2_v.i21.i = add i32 %28, -12
  %29 = inttoptr i32 %tmp2_v.i21.i to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  store i32 %.sink7, i32* %8, align 16
  store i32 %.sink, i32* %9, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.i.ph.sink, i32 noundef %tmp2_v2.i16.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" 
  %32 = load i32, i32* %29, align 4
  %tmp0_v1.i31.i = add i32 %32, 1
  store i32 %tmp0_v1.i31.i, i32* %29, align 4
  %33 = icmp slt i32 %tmp0_v1.i31.i, 1001
  br i1 %33, label %BB_80491C0.i, label %.exit

.exit:                                            ; preds = %BB_80491FE.i
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 


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
!12 = !{i32 0, i32 0, i32 0, i32 0, i32 0}

  tail call fastcc void @is_prime2 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack1, i32 0, i32 8092) to i32)) nounwind
