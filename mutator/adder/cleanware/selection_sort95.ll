; Mutation 95
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack94 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.93 = constant [12 x i8] c"\61\5b\25\64\5d\20\3d\20\25\64\0a\00"

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
define internal fastcc void @selection_sort95(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i8.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i8.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i11.i = add i32 %tmp0_v.i8.i, -12
  %5 = inttoptr i32 %tmp2_v5.i11.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i13.i = add i32 %tmp0_v.i8.i, -16
  %6 = inttoptr i32 %tmp2_v6.i13.i to i32*
  store i32 %tmp2_v.i7.i, i32* %6, align 16
  %tmp2_v8.i15.i = add i32 %tmp0_v.i8.i, -100
  %7 = inttoptr i32 %tmp2_v8.i15.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i134.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i138.i = add i32 %tmp0_v.i8.i, -20
  %10 = inttoptr i32 %tmp2_v2.i138.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i139.i = add i32 %tmp0_v.i8.i, -60
  %11 = inttoptr i32 %tmp2_v3.i139.i to i32*
  store i32 5, i32* %11, align 4
  %tmp2_v4.i140.i = add i32 %tmp0_v.i8.i, -56
  %12 = inttoptr i32 %tmp2_v4.i140.i to i32*
  store i32 9, i32* %12, align 8
  %tmp2_v5.i141.i = add i32 %tmp0_v.i8.i, -52
  %13 = inttoptr i32 %tmp2_v5.i141.i to i32*
  store i32 7, i32* %13, align 4
  %tmp2_v6.i142.i = add i32 %tmp0_v.i8.i, -48
  %14 = inttoptr i32 %tmp2_v6.i142.i to i32*
  store i32 6, i32* %14, align 16
  %tmp2_v7.i143.i = add i32 %tmp0_v.i8.i, -44
  %15 = inttoptr i32 %tmp2_v7.i143.i to i32*
  store i32 4, i32* %15, align 4
  %tmp2_v8.i144.i = add i32 %tmp0_v.i8.i, -40
  %16 = inttoptr i32 %tmp2_v8.i144.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v9.i145.i = add i32 %tmp0_v.i8.i, -36
  %17 = inttoptr i32 %tmp2_v9.i145.i to i32*
  store i32 2, i32* %17, align 4
  %tmp2_v10.i146.i = add i32 %tmp0_v.i8.i, -32
  %18 = inttoptr i32 %tmp2_v10.i146.i to i32*
  store i32 3, i32* %18, align 16
  %tmp2_v11.i147.i = add i32 %tmp0_v.i8.i, -28
  %19 = inttoptr i32 %tmp2_v11.i147.i to i32*
  store i32 8, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i8.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1, i32* %20, align 8
  %tmp2_v13.i148.i = add i32 %tmp0_v.i8.i, -68
  %21 = inttoptr i32 %tmp2_v13.i148.i to i32*
  store i32 10, i32* %21, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i8.i, -84
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %21, align 4
  %tmp0_v1.i117.i12 = add i32 %23, -1
  %24 = icmp sgt i32 %tmp0_v1.i117.i12, 0
  br i1 %24, label %BB_8049238.i.lr.ph, label %BB_80492A6.i

BB_8049238.i.lr.ph:                               ; preds = %0
  %tmp2_v1.i19.i = add i32 %tmp0_v.i8.i, -80
  %25 = inttoptr i32 %tmp2_v1.i19.i to i32*
  %tmp2_v5.i23.i = add i32 %tmp0_v.i8.i, -76
  %26 = inttoptr i32 %tmp2_v5.i23.i to i32*
  %tmp2_v4.i98.i = add i32 %tmp0_v.i8.i, -64
  %27 = inttoptr i32 %tmp2_v4.i98.i to i32*
  br label %BB_8049238.i

BB_80492AF.i:                                     ; preds = %BB_80492AF.i.lr.ph, %BB_80492AF.i
  %r_edx.217 = phi i32 [ %r_edx.3.lcssa, %BB_80492AF.i.lr.ph ], [ %33, %BB_80492AF.i ]
  %storemerge116 = phi i32 [ 0, %BB_80492AF.i.lr.ph ], [ %tmp0_v2.i49.i, %BB_80492AF.i ]
  %tmp4_v.i.i = shl i32 %storemerge116, 2
  %tmp2_v2.i.i = add i32 %tmp4_v.i.i, %tmp2_v3.i139.i
  %28 = inttoptr i32 %tmp2_v2.i.i to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %50, align 8
  %30 = load i32, i32* %47, align 8
  store i32 %30, i32* %51, align 4
  %spi.bis.93 = ptrtoint[12 x i8]* @str.bis.93 to i32
  store i32 %spi.bis.93, i32* %52, align 16
  store i32 134517449, i32* %53, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i7.i, i32 inreg noundef %r_edx.217, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %47, align 8
  %tmp0_v2.i49.i = add i32 %34, 1
  store i32 %tmp0_v2.i49.i, i32* %47, align 8
  %35 = load i32, i32* %21, align 4
  %36 = icmp slt i32 %tmp0_v2.i49.i, %35
  br i1 %36, label %BB_80492AF.i, label %.exit

BB_8049238.i:                                     ; preds = %BB_8049297.i, %BB_8049238.i.lr.ph
  %r_edx.314 = phi i32 [ 0, %BB_8049238.i.lr.ph ], [ %r_edx.0, %BB_8049297.i ]
  %storemerge13 = phi i32 [ 0, %BB_8049238.i.lr.ph ], [ %tmp0_v1.i.i, %BB_8049297.i ]
  store i32 %storemerge13, i32* %25, align 16
  %storemerge2.in9 = load i32, i32* %22, align 4
  %storemerge210 = add i32 %storemerge2.in9, 1
  store i32 %storemerge210, i32* %26, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp slt i32 %storemerge210, %37
  br i1 %38, label %BB_8049249.i, label %BB_804926D.i

BB_804925B.i:                                     ; preds = %BB_8049249.i
  store i32 %storemerge211, i32* %25, align 16
  %storemerge2.in.pre = load i32, i32* %26, align 4
  br label %BB_8049261.i

BB_8049297.i:                                     ; preds = %BB_8049275.i, %BB_804926D.i
  %39 = phi i32 [ %54, %BB_804926D.i ], [ %.pre, %BB_8049275.i ]
  %r_edx.0 = phi i32 [ %r_edx.1.lcssa, %BB_804926D.i ], [ %65, %BB_8049275.i ]
  %tmp0_v1.i.i = add i32 %39, 1
  store i32 %tmp0_v1.i.i, i32* %22, align 4
  %40 = load i32, i32* %21, align 4
  %tmp0_v1.i117.i = add i32 %40, -1
  %41 = icmp slt i32 %tmp0_v1.i.i, %tmp0_v1.i117.i
  br i1 %41, label %BB_8049238.i, label %BB_80492A6.i

BB_8049249.i:                                     ; preds = %BB_8049261.i, %BB_8049238.i
  %storemerge211 = phi i32 [ %storemerge2, %BB_8049261.i ], [ %storemerge210, %BB_8049238.i ]
  %tmp4_v.i67.i = shl i32 %storemerge211, 2
  %tmp2_v2.i68.i = add i32 %tmp4_v.i67.i, %tmp2_v3.i139.i
  %42 = inttoptr i32 %tmp2_v2.i68.i to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %25, align 16
  %tmp4_v7.i.i = shl i32 %44, 2
  %tmp2_v8.i72.i = add i32 %tmp4_v7.i.i, %tmp2_v3.i139.i
  %45 = inttoptr i32 %tmp2_v8.i72.i to i32*
  %46 = load i32, i32* %45, align 4
  %.not.i.i = icmp sgt i32 %43, %46
  br i1 %.not.i.i, label %BB_804925B.i, label %BB_8049261.i

BB_80492A6.i:                                     ; preds = %BB_8049297.i, %0
  %r_edx.3.lcssa = phi i32 [ 0, %0 ], [ %r_edx.0, %BB_8049297.i ]
  %tmp2_v.i76.i = add i32 %tmp0_v.i8.i, -72
  %47 = inttoptr i32 %tmp2_v.i76.i to i32*
  store i32 0, i32* %47, align 8
  %48 = load i32, i32* %21, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %BB_80492AF.i.lr.ph, label %.exit

BB_80492AF.i.lr.ph:                               ; preds = %BB_80492A6.i
  %tmp2_v5.i.i = add i32 %tmp0_v.i8.i, -104
  %50 = inttoptr i32 %tmp2_v5.i.i to i32*
  %tmp2_v8.i.i = add i32 %tmp0_v.i8.i, -108
  %51 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v10.i.i = add i32 %tmp0_v.i8.i, -112
  %52 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v11.i.i = add i32 %tmp0_v.i8.i, -116
  %53 = inttoptr i32 %tmp2_v11.i.i to i32*
  br label %BB_80492AF.i

BB_804926D.i:                                     ; preds = %BB_8049261.i, %BB_8049238.i
  %r_edx.1.lcssa = phi i32 [ %r_edx.314, %BB_8049238.i ], [ %43, %BB_8049261.i ]
  %54 = load i32, i32* %25, align 16
  %55 = load i32, i32* %22, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %BB_8049297.i, label %BB_8049275.i

BB_8049275.i:                                     ; preds = %BB_804926D.i
  %tmp4_v.i95.i = shl i32 %55, 2
  %tmp2_v2.i96.i = add i32 %tmp4_v.i95.i, %tmp2_v3.i139.i
  %57 = inttoptr i32 %tmp2_v2.i96.i to i32*
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %27, align 16
  %59 = load i32, i32* %25, align 16
  %tmp4_v8.i.i = shl i32 %59, 2
  %tmp2_v9.i102.i = add i32 %tmp4_v8.i.i, %tmp2_v3.i139.i
  %60 = inttoptr i32 %tmp2_v9.i102.i to i32*
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %22, align 4
  %tmp4_v14.i.i = shl i32 %62, 2
  %tmp2_v15.i.i = add i32 %tmp4_v14.i.i, %tmp2_v3.i139.i
  %63 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %25, align 16
  %65 = load i32, i32* %27, align 16
  %tmp4_v21.i.i = shl i32 %64, 2
  %tmp2_v22.i.i = add i32 %tmp4_v21.i.i, %tmp2_v3.i139.i
  %66 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %65, i32* %66, align 4
  %.pre = load i32, i32* %22, align 4
  br label %BB_8049297.i

BB_8049261.i:                                     ; preds = %BB_8049249.i, %BB_804925B.i
  %storemerge2.in = phi i32 [ %storemerge211, %BB_8049249.i ], [ %storemerge2.in.pre, %BB_804925B.i ]
  %storemerge2 = add i32 %storemerge2.in, 1
  store i32 %storemerge2, i32* %26, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp slt i32 %storemerge2, %67
  br i1 %68, label %BB_8049249.i, label %BB_804926D.i

.exit:                                            ; preds = %BB_80492A6.i, %BB_80492AF.i
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

  tail call fastcc void @selection_sort95 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack94, i32 0, i32 8092) to i32)) nounwind
