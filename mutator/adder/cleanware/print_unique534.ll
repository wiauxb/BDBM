; Mutation 534
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack533 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.531 = constant [4 x i8] c"%d\0a\00"

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
define internal fastcc void @print_unique534(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i9.i = add i32 %arg_esp, 4
  %tmp0_v.i10.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i11.i = add i32 %tmp0_v.i10.i, -4
  %2 = inttoptr i32 %tmp2_v3.i11.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i12.i = add i32 %tmp0_v.i10.i, -8
  %3 = inttoptr i32 %tmp2_v4.i12.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i14.i = add i32 %tmp0_v.i10.i, -12
  %4 = inttoptr i32 %tmp2_v5.i14.i to i32*
  store i32 %tmp2_v.i9.i, i32* %4, align 4
  %tmp2_v7.i15.i = add i32 %tmp0_v.i10.i, -84
  %5 = inttoptr i32 %tmp2_v7.i15.i to i32*
  store i32 134517200, i32* %5, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i10.i, -20
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i10.i, -72
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %9, align 8
  %tmp2_v4.i.i = add i32 %tmp0_v.i10.i, -68
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 2, i32* %10, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i10.i, -64
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %11, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i10.i, -60
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %12, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i10.i, -56
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %13, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i10.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %14, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i10.i, -48
  %15 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %15, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i10.i, -44
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 4, i32* %16, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i10.i, -40
  %17 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %17, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i10.i, -36
  %18 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 8, i32* %18, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i10.i, -32
  %19 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 9, i32* %19, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i10.i, -28
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 7, i32* %20, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i10.i, -24
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 8, i32* %21, align 8
  %tmp2_v17.i.i = add i32 %tmp0_v.i10.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 13, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i10.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i10.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517321, i32* %24, align 4
  %tmp2_v.i88.i.i = add i32 %tmp0_v.i10.i, -104
  %25 = inttoptr i32 %tmp2_v.i88.i.i to i32*
  store i32 %tmp2_v4.i12.i, i32* %25, align 8
  %tmp2_v1.i90.i.i = add i32 %tmp0_v.i10.i, -108
  %26 = inttoptr i32 %tmp2_v1.i90.i.i to i32*
  store i32 0, i32* %26, align 4
  %tmp2_v2.i93.i.i = add i32 %tmp0_v.i10.i, -132
  %27 = inttoptr i32 %tmp2_v2.i93.i.i to i32*
  store i32 134517370, i32* %27, align 4
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i10.i, -120
  %28 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %22, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_8049289.i.lr.ph.i, label %Func_print_unique.exit

BB_8049289.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i85.i.i = add i32 %tmp0_v.i10.i, -121
  %31 = inttoptr i32 %tmp2_v.i85.i.i to i8*
  %tmp2_v1.i86.i.i = add i32 %tmp0_v.i10.i, -116
  %32 = inttoptr i32 %tmp2_v1.i86.i.i to i32*
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i10.i, -140
  %33 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i10.i, -144
  %34 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i10.i, -148
  %35 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  br label %BB_8049289.i.i

BB_80492DF.i.i:                                   ; preds = %BB_80492D4.i.i
  %36 = load i32, i32* %28, align 8
  %tmp4_v.i.i.i1 = shl i32 %36, 2
  %37 = load i32, i32* %23, align 16
  %tmp0_v3.i.i.i = add i32 %37, %tmp4_v.i.i.i1
  %38 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %33, align 4
  %spi531 = ptrtoint[4 x i8]* @str.531 to i32
  store i32 %spi531, i32* %34, align 16
  store i32 134517504, i32* %35, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp4_v.i.i.i1, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  br label %BB_8049303.i.i

BB_8049296.i.i:                                   ; preds = %BB_8049289.i.i, %BB_80492C8.i.i
  %storemerge27.i = phi i32 [ %tmp0_v1.i.i.i, %BB_80492C8.i.i ], [ 0, %BB_8049289.i.i ]
  %41 = load i32, i32* %28, align 8
  %tmp4_v.i26.i.i = shl i32 %41, 2
  %42 = load i32, i32* %23, align 16
  %tmp0_v3.i29.i.i = add i32 %42, %tmp4_v.i26.i.i
  %43 = inttoptr i32 %tmp0_v3.i29.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %tmp4_v7.i.i.i = shl i32 %storemerge27.i, 2
  %tmp0_v10.i.i.i = add i32 %42, %tmp4_v7.i.i.i
  %45 = inttoptr i32 %tmp0_v10.i.i.i to i32*
  %46 = load i32, i32* %45, align 4
  %.not.i.i.i = icmp ne i32 %44, %46
  %47 = icmp eq i32 %41, %storemerge27.i
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %47
  br i1 %or.cond.i, label %BB_80492C8.i.i, label %BB_80492C4.i.i

BB_80492C8.i.i:                                   ; preds = %BB_80492C4.i.i, %BB_8049296.i.i
  %48 = phi i32 [ %storemerge27.i, %BB_8049296.i.i ], [ %.pre.i, %BB_80492C4.i.i ]
  %tmp0_v1.i.i.i = add i32 %48, 1
  store i32 %tmp0_v1.i.i.i, i32* %32, align 4
  %49 = load i32, i32* %22, align 4
  %50 = icmp slt i32 %tmp0_v1.i.i.i, %49
  br i1 %50, label %BB_8049296.i.i, label %BB_80492D4.i.i

BB_8049303.i.i:                                   ; preds = %BB_80492D4.i.i, %BB_80492DF.i.i
  %51 = load i32, i32* %28, align 8
  %tmp0_v1.i44.i.i = add i32 %51, 1
  store i32 %tmp0_v1.i44.i.i, i32* %28, align 8
  %52 = load i32, i32* %22, align 4
  %53 = icmp slt i32 %tmp0_v1.i44.i.i, %52
  br i1 %53, label %BB_8049289.i.i, label %Func_print_unique.exit

BB_80492C4.i.i:                                   ; preds = %BB_8049296.i.i
  store i8 1, i8* %31, align 1
  %.pre.i = load i32, i32* %32, align 4
  br label %BB_80492C8.i.i

BB_80492D4.i.i:                                   ; preds = %BB_8049289.i.i, %BB_80492C8.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.18.i, %BB_8049289.i.i ], [ %tmp4_v7.i.i.i, %BB_80492C8.i.i ]
  %54 = load i8, i8* %31, align 1
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %BB_8049303.i.i, label %BB_80492DF.i.i

BB_8049289.i.i:                                   ; preds = %BB_8049303.i.i, %BB_8049289.i.lr.ph.i
  %r_ecx.18.i = phi i32 [ %tmp2_v.i9.i, %BB_8049289.i.lr.ph.i ], [ %r_ecx.0.lcssa.i, %BB_8049303.i.i ]
  store i8 0, i8* %31, align 1
  store i32 0, i32* %32, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %BB_8049296.i.i, label %BB_80492D4.i.i

Func_print_unique.exit:                           ; preds = %BB_8049303.i.i, %.exit
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @print_unique534 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack533, i32 0, i32 8092) to i32)) nounwind
