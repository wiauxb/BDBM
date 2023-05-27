; Mutation 274
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack273 = internal global [8092 x i32] zeroinitializer, align 16
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
declare void @srand(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @rand() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @time(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @fill_random274(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i37.i = add i32 %arg_esp, 4
  %tmp0_v.i38.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i38.i, -4
  %3 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i41.i = add i32 %tmp0_v.i38.i, -8
  %4 = inttoptr i32 %tmp2_v4.i41.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i43.i = add i32 %tmp0_v.i38.i, -12
  %5 = inttoptr i32 %tmp2_v5.i43.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i45.i = add i32 %tmp0_v.i38.i, -16
  %6 = inttoptr i32 %tmp2_v6.i45.i to i32*
  store i32 %tmp2_v.i37.i, i32* %6, align 16
  %tmp2_v8.i47.i = add i32 %tmp0_v.i38.i, -436
  %7 = inttoptr i32 %tmp2_v8.i47.i to i32*
  store i32 134517300, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i38.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i38.i, -448
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i38.i, -452
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 134517327, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @time(i32 %arg.i.i)
  store i32 %13, i32* %11, align 16
  store i32 134517339, i32* %12, align 4
  %arg.i.i3 = load i32, i32* %11, align 16
  tail call void @srand(i32 %arg.i.i3)
  %tmp2_v.i51.i = add i32 %tmp0_v.i38.i, -440
  %14 = inttoptr i32 %tmp2_v.i51.i to i32*
  store i32 200, i32* %14, align 8
  %tmp2_v2.i52.i = add i32 %tmp0_v.i38.i, -444
  %15 = inttoptr i32 %tmp2_v2.i52.i to i32*
  store i32 100, i32* %15, align 4
  %tmp2_v3.i54.i = add i32 %tmp0_v.i38.i, -420
  store i32 %tmp2_v3.i54.i, i32* %11, align 16
  store i32 134517364, i32* %12, align 4
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i38.i, -456
  %16 = inttoptr i32 %tmp2_v.i9.i.i to i32*
  store i32 %tmp2_v4.i41.i, i32* %16, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i38.i, -460
  %17 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %17, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i38.i, -484
  %18 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517481, i32* %18, align 4
  %tmp4_v.i.i.i.i = add i32 %tmp0_v.i38.i, -480
  %mrv.i.i = insertvalue { i32, i32 } undef, i32 %tmp4_v.i.i.i.i, 0
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i38.i, -468
  %19 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %BB_80492F8.i.i, label %Func_fill_random.exit

BB_80492F8.i.i:                                   ; preds = %BB_80492F8.i.i, %0
  %r_esp.05.i = phi i32 [ %r_esp.0.i, %BB_80492F8.i.i ], [ %tmp4_v.i.i.i.i, %0 ]
  %.pn24.i = phi i32 [ %23, %BB_80492F8.i.i ], [ 134517481, %0 ]
  %mrv.i.pn3.i = phi { i32, i32 } [ %.pn.i, %BB_80492F8.i.i ], [ %mrv.i.i, %0 ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i.pn3.i, i32 %.pn24.i, 1
  %tmp2_v.i21.i.i = add i32 %r_esp.05.i, -4
  %22 = inttoptr i32 %tmp2_v.i21.i.i to i32*
  store i32 134517501, i32* %22, align 4
  %23 = tail call i32 @rand()
  %tmp0_v.i.i.i = ashr i32 %23, 31
  %24 = load i32, i32* %14, align 8
  %25 = zext i32 %23 to i64
  %26 = zext i32 %tmp0_v.i.i.i to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %29 = icmp ne i32 %24, 0
  tail call void @llvm.assume(i1 %29)
  %30 = sext i32 %24 to i64
  %.frozen = freeze i64 %28
  %.frozen13 = freeze i64 %30
  %31 = sdiv i64 %.frozen, %.frozen13
  %32 = add i64 %31, 2147483648
  %33 = icmp ult i64 %32, 4294967296
  tail call void @llvm.assume(i1 %33)
  %34 = mul i64 %31, %.frozen13
  %.decomposed = sub i64 %.frozen, %34
  %35 = trunc i64 %.decomposed to i32
  %36 = load i32, i32* %19, align 4
  %tmp4_v.i.i.i4 = shl i32 %36, 2
  %37 = load i32, i32* %11, align 16
  %tmp0_v7.i.i.i = add i32 %37, %tmp4_v.i.i.i4
  %tmp2_v8.i.i.i = add i32 %35, 1
  %38 = inttoptr i32 %tmp0_v7.i.i.i to i32*
  store i32 %tmp2_v8.i.i.i, i32* %38, align 4
  %39 = load i32, i32* %19, align 4
  %tmp0_v11.i.i.i = add i32 %39, 1
  %r_esp.0.i = extractvalue { i32, i32 } %mrv.i.pn3.i, 0
  store i32 %tmp0_v11.i.i.i, i32* %19, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %tmp0_v11.i.i.i, %40
  br i1 %41, label %BB_80492F8.i.i, label %Func_fill_random.exit.loopexit

Func_fill_random.exit.loopexit:                   ; preds = %BB_80492F8.i.i
  %42 = trunc i64 %.decomposed to i32
  br label %Func_fill_random.exit

Func_fill_random.exit:                            ; preds = %Func_fill_random.exit.loopexit, %0
  %mrv.i.pn.lcssa.i = phi { i32, i32 } [ %mrv.i.i, %0 ], [ %.pn.i, %Func_fill_random.exit.loopexit ]
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i37.i, %0 ], [ %42, %Func_fill_random.exit.loopexit ]
  %r_edx.0.lcssa.i = phi i32 [ 0, %0 ], [ %tmp2_v8.i.i.i, %Func_fill_random.exit.loopexit ]
  %r_esp.0.le.i = extractvalue { i32, i32 } %mrv.i.pn.lcssa.i, 0
  %tmp0_v.i4.i.i = add i32 %r_esp.0.le.i, 20
  %43 = inttoptr i32 %tmp0_v.i4.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %tmp4_v.i6.i.i = add i32 %r_esp.0.le.i, 24
  %45 = inttoptr i32 %tmp4_v.i6.i.i to i32*
  %46 = load i32, i32* %45, align 4
  %tmp4_v5.i.i.i = add i32 %r_esp.0.le.i, 32
  %tmp2_v.i4.i = add i32 %46, -416
  %47 = inttoptr i32 %tmp2_v.i4.i to i32*
  %tmp2_v1.i16.i = add i32 %46, -412
  %tmp2_v5.i21.i = add i32 %r_esp.0.le.i, 40
  %48 = inttoptr i32 %tmp2_v5.i21.i to i32*
  %tmp2_v8.i.i = add i32 %r_esp.0.le.i, 36
  %49 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v9.i.i = add i32 %44, -8184
  %50 = inttoptr i32 %tmp4_v5.i.i.i to i32*
  %tmp2_v11.i.i = add i32 %r_esp.0.le.i, 28
  %51 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %47, align 4
  br label %BB_8049283.i

BB_8049283.i:                                     ; preds = %BB_8049283.i, %Func_fill_random.exit
  %r_edx.011 = phi i32 [ %r_edx.0.lcssa.i, %Func_fill_random.exit ], [ %57, %BB_8049283.i ]
  %storemerge10 = phi i32 [ 0, %Func_fill_random.exit ], [ %tmp0_v2.i28.i, %BB_8049283.i ]
  %tmp4_v.i17.i = shl i32 %storemerge10, 2
  %tmp2_v2.i18.i = add i32 %tmp2_v1.i16.i, %tmp4_v.i17.i
  %52 = inttoptr i32 %tmp2_v2.i18.i to i32*
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %48, align 4
  %54 = load i32, i32* %47, align 4
  store i32 %54, i32* %49, align 4
  store i32 %tmp2_v9.i.i, i32* %50, align 4
  store i32 134517414, i32* %51, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.011, i32 noundef %tmp4_v5.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %56 = lshr i64 %55, 32
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %47, align 4
  %tmp0_v2.i28.i = add i32 %58, 1
  store i32 %tmp0_v2.i28.i, i32* %47, align 4
  %59 = icmp slt i32 %tmp0_v2.i28.i, 100
  br i1 %59, label %BB_8049283.i, label %.exit

.exit:                                            ; preds = %BB_8049283.i
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 


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

  tail call fastcc void @fill_random274 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack273, i32 0, i32 8092) to i32)) nounwind
