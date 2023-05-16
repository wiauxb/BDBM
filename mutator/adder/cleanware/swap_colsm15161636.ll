; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
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
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !10
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !10
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !10
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !10
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse nounwind
define internal fastcc void @swap_colsm15161636(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i37.i = add i32 %arg_esp, 4
  %tmp0_v.i38.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i38.i, -4
  %3 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i38.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i38.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i43.i = add i32 %tmp0_v.i38.i, -16
  %6 = inttoptr i32 %tmp2_v6.i43.i to i32*
  store i32 %tmp2_v.i37.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i38.i, -100
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i62.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i62.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i38.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i66.i = add i32 %tmp0_v.i38.i, -80
  %11 = inttoptr i32 %tmp2_v3.i66.i to i32*
  store i32 1, i32* %11, align 16
  %tmp2_v4.i67.i = add i32 %tmp0_v.i38.i, -76
  %12 = inttoptr i32 %tmp2_v4.i67.i to i32*
  store i32 2, i32* %12, align 4
  %tmp2_v5.i68.i = add i32 %tmp0_v.i38.i, -72
  %13 = inttoptr i32 %tmp2_v5.i68.i to i32*
  store i32 3, i32* %13, align 8
  %tmp2_v6.i69.i = add i32 %tmp0_v.i38.i, -68
  %14 = inttoptr i32 %tmp2_v6.i69.i to i32*
  store i32 4, i32* %14, align 4
  %tmp2_v7.i70.i = add i32 %tmp0_v.i38.i, -64
  %15 = inttoptr i32 %tmp2_v7.i70.i to i32*
  store i32 5, i32* %15, align 16
  %tmp2_v8.i71.i = add i32 %tmp0_v.i38.i, -60
  %16 = inttoptr i32 %tmp2_v8.i71.i to i32*
  store i32 1, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i38.i, -56
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 2, i32* %17, align 8
  %tmp2_v10.i72.i = add i32 %tmp0_v.i38.i, -52
  %18 = inttoptr i32 %tmp2_v10.i72.i to i32*
  store i32 3, i32* %18, align 4
  %tmp2_v11.i73.i = add i32 %tmp0_v.i38.i, -48
  %19 = inttoptr i32 %tmp2_v11.i73.i to i32*
  store i32 4, i32* %19, align 16
  %tmp2_v12.i74.i = add i32 %tmp0_v.i38.i, -44
  %20 = inttoptr i32 %tmp2_v12.i74.i to i32*
  store i32 5, i32* %20, align 4
  %tmp2_v13.i75.i = add i32 %tmp0_v.i38.i, -40
  %21 = inttoptr i32 %tmp2_v13.i75.i to i32*
  store i32 1, i32* %21, align 8
  %tmp2_v14.i.i = add i32 %tmp0_v.i38.i, -36
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 2, i32* %22, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i38.i, -32
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 3, i32* %23, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i38.i, -28
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 4, i32* %24, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i38.i, -24
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 5, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i38.i, -104
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 3, i32* %26, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i38.i, -108
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i38.i, -112
  %28 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i66.i, i32* %28, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i38.i, -116
  %29 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517371, i32* %29, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i38.i, -120
  %30 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %30, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i38.i, -124
  %31 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %31, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i38.i, -144
  %32 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517511, i32* %32, align 16
  %tmp2_v.i16.i.i = add i32 %tmp0_v.i38.i, -128
  %33 = inttoptr i32 %tmp2_v.i16.i.i to i32*
  store i32 0, i32* %33, align 16
  %tmp2_v1.i17.i.i = add i32 %tmp0_v.i38.i, -132
  %34 = inttoptr i32 %tmp2_v1.i17.i.i to i32*
  store i32 0, i32* %34, align 4
  br label %BB_804931C.i.i

BB_804931C.i.i:                                   ; preds = %BB_804931C.i.i, %0
  %storemerge9.i = phi i32 [ 0, %0 ], [ %tmp0_v56.i.i.i, %BB_804931C.i.i ]
  %tmp0_v3.i.i.i = mul i32 %storemerge9.i, 20
  %35 = load i32, i32* %28, align 16
  %tmp0_v6.i.i.i = add i32 %35, %tmp0_v3.i.i.i
  %36 = load i32, i32* %27, align 4
  %tmp4_v.i11.i.i = shl i32 %36, 2
  %tmp2_v9.i.i.i = add i32 %tmp0_v6.i.i.i, %tmp4_v.i11.i.i
  %37 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %33, align 16
  %39 = load i32, i32* %34, align 4
  %tmp0_v17.i.i.i = mul i32 %39, 20
  %40 = load i32, i32* %28, align 16
  %tmp2_v20.i.i.i = add i32 %tmp0_v17.i.i.i, %40
  %41 = load i32, i32* %26, align 8
  %tmp4_v32.i.i.i = shl i32 %41, 2
  %tmp2_v33.i.i.i = add i32 %tmp4_v32.i.i.i, %tmp2_v20.i.i.i
  %42 = inttoptr i32 %tmp2_v33.i.i.i to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %27, align 4
  %tmp4_v37.i.i.i = shl i32 %44, 2
  %tmp2_v38.i.i.i = add i32 %tmp4_v37.i.i.i, %tmp2_v20.i.i.i
  %45 = inttoptr i32 %tmp2_v38.i.i.i to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %34, align 4
  %tmp0_v44.i.i.i = mul i32 %46, 20
  %47 = load i32, i32* %28, align 16
  %tmp2_v47.i.i.i = add i32 %tmp0_v44.i.i.i, %47
  %48 = load i32, i32* %26, align 8
  %49 = load i32, i32* %33, align 16
  %tmp4_v52.i.i.i = shl i32 %48, 2
  %tmp2_v53.i.i.i = add i32 %tmp4_v52.i.i.i, %tmp2_v47.i.i.i
  %50 = inttoptr i32 %tmp2_v53.i.i.i to i32*
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %34, align 4
  %tmp0_v56.i.i.i = add i32 %51, 1
  store i32 %tmp0_v56.i.i.i, i32* %34, align 4
  %52 = icmp slt i32 %tmp0_v56.i.i.i, 3
  br i1 %52, label %BB_804931C.i.i, label %Func_col_swap.exit

Func_col_swap.exit:                               ; preds = %BB_804931C.i.i
  %53 = load i32, i32* %31, align 4
  %54 = load i32, i32* %30, align 8
  %tmp2_v.i47.i = add i32 %54, -80
  %55 = inttoptr i32 %tmp2_v.i47.i to i32*
  %tmp2_v.i7.i = add i32 %54, -76
  %56 = inttoptr i32 %tmp2_v.i7.i to i32*
  %tmp2_v6.i.i = add i32 %54, -72
  %tmp2_v11.i.i = add i32 %53, -8184
  store i32 0, i32* %55, align 4
  br label %BB_8049287.i

BB_8049287.i:                                     ; preds = %BB_80492C0.i, %Func_col_swap.exit
  store i32 0, i32* %56, align 4
  br label %BB_8049290.i

BB_80492C0.i:                                     ; preds = %BB_8049290.i
  store i32 10, i32* %28, align 16
  store i32 134517450, i32* %29, align 4
  %arg.i.i = load i32, i32* %28, align 16
  %57 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %58 = load i32, i32* %55, align 4
  %tmp0_v2.i17.i = add i32 %58, 1
  store i32 %tmp0_v2.i17.i, i32* %55, align 4
  %59 = icmp slt i32 %tmp0_v2.i17.i, 3
  br i1 %59, label %BB_8049287.i, label %.exit

BB_8049290.i:                                     ; preds = %BB_8049290.i, %BB_8049287.i
  %storemerge15 = phi i32 [ 0, %BB_8049287.i ], [ %tmp0_v2.i.i, %BB_8049290.i ]
  %60 = load i32, i32* %55, align 4
  %tmp0_v2.i31.i = mul i32 %60, 5
  %tmp0_v5.i.i = add i32 %tmp0_v2.i31.i, %storemerge15
  %tmp4_v.i34.i = shl i32 %tmp0_v5.i.i, 2
  %tmp2_v7.i.i = add i32 %tmp2_v6.i.i, %tmp4_v.i34.i
  %61 = inttoptr i32 %tmp2_v7.i.i to i32*
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %27, align 4
  store i32 %tmp2_v11.i.i, i32* %28, align 16
  store i32 134517427, i32* %29, align 4
  %63 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v47.i.i.i, i32 inreg noundef %storemerge15, i32 noundef %tmp2_v22.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %64 = load i32, i32* %56, align 4
  %tmp0_v2.i.i = add i32 %64, 1
  store i32 %tmp0_v2.i.i, i32* %56, align 4
  %65 = icmp slt i32 %tmp0_v2.i.i, 5
  br i1 %65, label %BB_8049290.i, label %BB_80492C0.i

.exit:                                            ; preds = %BB_80492C0.i
  ret void
}

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

  tail call fastcc void @swap_colsm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
