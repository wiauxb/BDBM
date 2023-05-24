; Mutation 380
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack379 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.377 = constant [12 x i8] c"a[%d] = %d\0a\00"

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
define internal fastcc void @insertion_sort380(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i29.i = add i32 %arg_esp, 4
  %tmp0_v.i30.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i32.i = add i32 %tmp0_v.i30.i, -4
  %3 = inttoptr i32 %tmp2_v3.i32.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i33.i = add i32 %tmp0_v.i30.i, -8
  %4 = inttoptr i32 %tmp2_v4.i33.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i35.i = add i32 %tmp0_v.i30.i, -12
  %5 = inttoptr i32 %tmp2_v5.i35.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i37.i = add i32 %tmp0_v.i30.i, -16
  %6 = inttoptr i32 %tmp2_v6.i37.i to i32*
  store i32 %tmp2_v.i29.i, i32* %6, align 16
  %tmp2_v8.i38.i = add i32 %tmp0_v.i30.i, -68
  %7 = inttoptr i32 %tmp2_v8.i38.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i30.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i30.i, -52
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 8, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i30.i, -48
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 4, i32* %12, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i30.i, -44
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 9, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i30.i, -40
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 5, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i30.i, -36
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 7, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i30.i, -32
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i30.i, -28
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i30.i, -24
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %18, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i30.i, -76
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 8, i32* %19, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i30.i, -80
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %20, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i30.i, -84
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517288, i32* %21, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i30.i, -88
  %22 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %tmp2_v4.i33.i, i32* %22, align 8
  %tmp2_v1.i10.i.i = add i32 %tmp0_v.i30.i, -108
  %23 = inttoptr i32 %tmp2_v1.i10.i.i to i32*
  store i32 134517386, i32* %23, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i30.i, -100
  %24 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %19, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %BB_8049298.i.lr.ph.i, label %Func_insertion_sort.exit

BB_8049298.i.lr.ph.i:                             ; preds = %0
  %tmp2_v5.i41.i.i = add i32 %tmp0_v.i30.i, -92
  %27 = inttoptr i32 %tmp2_v5.i41.i.i to i32*
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i30.i, -96
  %28 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  br label %BB_8049298.i.i

BB_80492E6.i.i:                                   ; preds = %BB_80492B7.i.i
  %tmp4_v.i3.i.i = shl i32 %storemerge1.i, 2
  %29 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %29, %tmp4_v.i3.i.i
  %30 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %27, align 4
  %33 = icmp slt i32 %32, %31
  br i1 %33, label %BB_80492B7.i.i, label %BB_80492FC.i.i

BB_80492FC.i.i:                                   ; preds = %BB_80492B7.i.i, %BB_80492E6.i.i.preheader, %BB_8049298.i.i, %BB_80492E6.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.112.i, %BB_8049298.i.i ], [ %r_ecx.112.i, %BB_80492E6.i.i.preheader ], [ %tmp4_v7.i.i.i, %BB_80492B7.i.i ], [ %tmp4_v7.i.i.i, %BB_80492E6.i.i ]
  %storemerge1.lcssa.i = phi i32 [ %storemerge15.i, %BB_8049298.i.i ], [ %storemerge15.i, %BB_80492E6.i.i.preheader ], [ %storemerge1.i, %BB_80492B7.i.i ], [ %storemerge1.i, %BB_80492E6.i.i ]
  %tmp0_v1.i18.i.i = shl i32 %storemerge1.lcssa.i, 2
  %tmp4_v.i19.i.i = add i32 %tmp0_v1.i18.i.i, 4
  %34 = load i32, i32* %20, align 16
  %tmp0_v4.i21.i.i = add i32 %tmp4_v.i19.i.i, %34
  %35 = load i32, i32* %27, align 4
  %36 = inttoptr i32 %tmp0_v4.i21.i.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %24, align 4
  %tmp0_v9.i.i.i = add i32 %37, 1
  store i32 %tmp0_v9.i.i.i, i32* %24, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp slt i32 %tmp0_v9.i.i.i, %38
  br i1 %39, label %BB_8049298.i.i, label %Func_insertion_sort.exit

BB_8049298.i.i:                                   ; preds = %BB_80492FC.i.i, %BB_8049298.i.lr.ph.i
  %r_ecx.112.i = phi i32 [ %tmp2_v.i29.i, %BB_8049298.i.lr.ph.i ], [ %r_ecx.0.lcssa.i, %BB_80492FC.i.i ]
  %storemerge11.i = phi i32 [ 1, %BB_8049298.i.lr.ph.i ], [ %tmp0_v9.i.i.i, %BB_80492FC.i.i ]
  %tmp4_v.i36.i.i = shl i32 %storemerge11.i, 2
  %40 = load i32, i32* %20, align 16
  %tmp0_v3.i39.i.i = add i32 %40, %tmp4_v.i36.i.i
  %41 = inttoptr i32 %tmp0_v3.i39.i.i to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %27, align 4
  %storemerge1.in4.i = load i32, i32* %24, align 4
  %storemerge15.i = add i32 %storemerge1.in4.i, -1
  store i32 %storemerge15.i, i32* %28, align 16
  %43 = icmp slt i32 %storemerge15.i, 0
  br i1 %43, label %BB_80492FC.i.i, label %BB_80492E6.i.i.preheader

BB_80492E6.i.i.preheader:                         ; preds = %BB_8049298.i.i
  %tmp4_v.i3.i.i5 = shl i32 %storemerge15.i, 2
  %44 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i6 = add i32 %44, %tmp4_v.i3.i.i5
  %45 = inttoptr i32 %tmp0_v3.i.i.i6 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %27, align 4
  %48 = icmp slt i32 %47, %46
  br i1 %48, label %BB_80492B7.i.i, label %BB_80492FC.i.i

BB_80492B7.i.i:                                   ; preds = %BB_80492E6.i.i.preheader, %BB_80492E6.i.i
  %49 = phi i32 [ %31, %BB_80492E6.i.i ], [ %46, %BB_80492E6.i.i.preheader ]
  %50 = phi i32 [ %29, %BB_80492E6.i.i ], [ %44, %BB_80492E6.i.i.preheader ]
  %tmp4_v.i3.i.i7 = phi i32 [ %tmp4_v.i3.i.i, %BB_80492E6.i.i ], [ %tmp4_v.i3.i.i5, %BB_80492E6.i.i.preheader ]
  %tmp4_v7.i.i.i = add i32 %tmp4_v.i3.i.i7, 4
  %tmp0_v10.i.i.i = add i32 %50, %tmp4_v7.i.i.i
  %51 = inttoptr i32 %tmp0_v10.i.i.i to i32*
  store i32 %49, i32* %51, align 4
  %storemerge1.in.i = load i32, i32* %28, align 16
  %storemerge1.i = add i32 %storemerge1.in.i, -1
  store i32 %storemerge1.i, i32* %28, align 16
  %52 = icmp slt i32 %storemerge1.i, 0
  br i1 %52, label %BB_80492FC.i.i, label %BB_80492E6.i.i

Func_insertion_sort.exit:                         ; preds = %BB_80492FC.i.i, %0
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i29.i, %0 ], [ %r_ecx.0.lcssa.i, %BB_80492FC.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ 0, %0 ], [ %tmp0_v4.i21.i.i, %BB_80492FC.i.i ]
  %53 = load i32, i32* %22, align 8
  %tmp2_v.i27.i = add i32 %53, -48
  %54 = inttoptr i32 %tmp2_v.i27.i to i32*
  %tmp2_v1.i42.i = add i32 %53, -44
  %tmp2_v5.i48.i = add i32 %tmp0_v.i30.i, -72
  %55 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 0, i32* %54, align 4
  br label %BB_8049234.i

BB_8049234.i:                                     ; preds = %BB_8049234.i, %Func_insertion_sort.exit
  %r_edx.012 = phi i32 [ %r_edx.0.lcssa.i, %Func_insertion_sort.exit ], [ %61, %BB_8049234.i ]
  %storemerge11 = phi i32 [ 0, %Func_insertion_sort.exit ], [ %tmp0_v2.i10.i, %BB_8049234.i ]
  %tmp4_v.i43.i = shl i32 %storemerge11, 2
  %tmp2_v2.i44.i = add i32 %tmp2_v1.i42.i, %tmp4_v.i43.i
  %56 = inttoptr i32 %tmp2_v2.i44.i to i32*
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* %54, align 4
  store i32 %58, i32* %19, align 4
  %spi377 = ptrtoint[12 x i8]* @str.377 to i32
  store i32 %spi377, i32* %20, align 16
  store i32 134517326, i32* %21, align 4
  %59 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.012, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %60 = lshr i64 %59, 32
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %54, align 4
  %tmp0_v2.i10.i = add i32 %62, 1
  store i32 %tmp0_v2.i10.i, i32* %54, align 4
  %63 = icmp slt i32 %tmp0_v2.i10.i, 8
  br i1 %63, label %BB_8049234.i, label %.exit

.exit:                                            ; preds = %BB_8049234.i
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

  tail call fastcc void @insertion_sort380 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack379, i32 0, i32 8092) to i32)) nounwind
