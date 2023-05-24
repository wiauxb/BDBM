; Mutation 231
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack230 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.229 = constant [6 x i8] c"%02d \00"

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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse nounwind
define internal fastcc void @print_0_99_grid231(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i20.i = add i32 %arg_esp, 4
  %tmp0_v.i21.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i22.i = add i32 %tmp0_v.i21.i, -4
  %3 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i23.i = add i32 %tmp0_v.i21.i, -8
  %4 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i25.i = add i32 %tmp0_v.i21.i, -12
  %5 = inttoptr i32 %tmp2_v5.i25.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i21.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i20.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i21.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v.i30.i = add i32 %tmp0_v.i21.i, -20
  %8 = inttoptr i32 %tmp2_v.i30.i to i32*
  store i32 0, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i21.i, -44
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  %tmp2_v4.i.i = add i32 %tmp0_v.i21.i, -48
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  %tmp2_v5.i.i = add i32 %tmp0_v.i21.i, -52
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  br label %BB_80491E0.i

BB_80491E0.i:                                     ; preds = %BB_804922D.ithread-pre-split, %0
  %r_ecx.04 = phi i32 [ %tmp2_v.i20.i, %0 ], [ %tmp0_v13.i.i, %BB_804922D.ithread-pre-split ]
  %r_edx.03 = phi i32 [ 0, %0 ], [ %tmp0_v13.i.i, %BB_804922D.ithread-pre-split ]
  %12 = phi i32 [ 0, %0 ], [ %.pr, %BB_804922D.ithread-pre-split ]
  store i32 %12, i32* %9, align 4
  %spi229 = ptrtoint[6 x i8]* @str.229 to i32
  store i32 %spi229, i32* %10, align 16
  store i32 134517234, i32* %11, align 4
  %13 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.04, i32 inreg noundef %r_edx.03, i32 noundef %tmp2_v4.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %14 = load i32, i32* %8, align 4
  %tmp0_v2.i36.i = add i32 %14, 1
  store i32 %tmp0_v2.i36.i, i32* %8, align 4
  %tmp16_v.i.i = sext i32 %tmp0_v2.i36.i to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 1717986919
  %tmp15_v5.i.i = lshr i64 %tmp15_v.i.i, 32
  %15 = trunc i64 %tmp15_v5.i.i to i32
  %tmp0_v7.i38.i = ashr i32 %15, 2
  %tmp0_v8.i.i.neg = lshr i32 %tmp0_v2.i36.i, 31
  %tmp0_v9.i.i = add nsw i32 %tmp0_v7.i38.i, %tmp0_v8.i.i.neg
  %tmp0_v12.i.i.neg = mul i32 %tmp0_v9.i.i, -10
  %tmp0_v13.i.i = add i32 %tmp0_v12.i.i.neg, %tmp0_v2.i36.i
  %.not.i.i = icmp eq i32 %tmp0_v13.i.i, 0
  br i1 %.not.i.i, label %BB_8049220.i, label %BB_804922D.ithread-pre-split

BB_804922D.ithread-pre-split:                     ; preds = %BB_8049220.i, %BB_80491E0.i
  %.pr = phi i32 [ %.pr.pre, %BB_8049220.i ], [ %tmp0_v2.i36.i, %BB_80491E0.i ]
  %16 = icmp slt i32 %.pr, 100
  br i1 %16, label %BB_80491E0.i, label %.exit

BB_8049220.i:                                     ; preds = %BB_80491E0.i
  store i32 10, i32* %10, align 16
  store i32 134517290, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %17 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %.pr.pre = load i32, i32* %8, align 4
  br label %BB_804922D.ithread-pre-split

.exit:                                            ; preds = %BB_804922D.ithread-pre-split
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

  tail call fastcc void @print_0_99_grid231 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack230, i32 0, i32 8092) to i32)) nounwind
