; Mutation 448
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack447 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.443 = constant [10 x i8] c"\6d\69\6e\32\3a\20\25\64\0a\00"
@str.bis.444 = constant [10 x i8] c"\6d\69\6e\31\3a\20\25\64\0a\00"
@str.bis.445 = constant [4 x i8] c"\05\2d\2d\00"
@str.bis.446 = constant [4 x i8] c"\05\2d\2d\00"

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
define internal fastcc void @find_min448(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i33.i = add i32 %arg_esp, 4
  %tmp0_v.i34.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i36.i = add i32 %tmp0_v.i34.i, -4
  %2 = inttoptr i32 %tmp2_v3.i36.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i37.i = add i32 %tmp0_v.i34.i, -8
  %3 = inttoptr i32 %tmp2_v4.i37.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i39.i = add i32 %tmp0_v.i34.i, -12
  %4 = inttoptr i32 %tmp2_v5.i39.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i41.i = add i32 %tmp0_v.i34.i, -16
  %5 = inttoptr i32 %tmp2_v6.i41.i to i32*
  store i32 %tmp2_v.i33.i, i32* %5, align 16
  %tmp2_v8.i42.i = add i32 %tmp0_v.i34.i, -100
  %6 = inttoptr i32 %tmp2_v8.i42.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i34.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i34.i, -56
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 5, i32* %10, align 8
  %tmp2_v4.i.i = add i32 %tmp0_v.i34.i, -52
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 9, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i34.i, -48
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 10, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i34.i, -44
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 11, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i34.i, -40
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 4, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i34.i, -36
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 3, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i34.i, -32
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1, i32* %16, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i34.i, -28
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 6, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i34.i, -24
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 7, i32* %18, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i34.i, -84
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 2, i32* %19, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i34.i, -80
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 5, i32* %20, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i34.i, -76
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 9, i32* %21, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i34.i, -72
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 2, i32* %22, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i34.i, -68
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 5, i32* %23, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i34.i, -64
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 3, i32* %24, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i34.i, -60
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 0, i32* %25, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i34.i, -108
  %26 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 9, i32* %26, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i34.i, -112
  %27 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %27, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i34.i, -116
  %28 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517344, i32* %28, align 4
  %tmp2_v.i29.i.i = add i32 %tmp0_v.i34.i, -120
  %29 = inttoptr i32 %tmp2_v.i29.i.i to i32*
  store i32 %tmp2_v4.i37.i, i32* %29, align 8
  %tmp2_v1.i32.i.i = add i32 %tmp0_v.i34.i, -140
  %30 = inttoptr i32 %tmp2_v1.i32.i.i to i32*
  %spi.bis.446 = ptrtoint[4 x i8]* @str.bis.446 to i32
  store i32 %spi.bis.446, i32* %30, align 4
  %31 = load i32, i32* %27, align 16
  %32 = inttoptr i32 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i34.i, -128
  %34 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %33, i32* %34, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i34.i, -124
  %35 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %26, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %BB_80492E9.i.i, label %Func_find_min.exit

BB_80492E9.i.i:                                   ; preds = %BB_8049313.i.i, %.exit
  %storemerge13.i = phi i32 [ %tmp0_v1.i36.i.i, %BB_8049313.i.i ], [ 1, %.exit ]
  %tmp4_v.i12.i.i = shl i32 %storemerge13.i, 2
  %38 = load i32, i32* %27, align 16
  %tmp0_v3.i.i.i = add i32 %38, %tmp4_v.i12.i.i
  %39 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %34, align 16
  %.not.i.i.i = icmp sgt i32 %41, %40
  br i1 %.not.i.i.i, label %BB_80492FF.i.i, label %BB_8049313.i.i

BB_80492FF.i.i:                                   ; preds = %BB_80492E9.i.i
  store i32 %40, i32* %34, align 16
  %.pre.i = load i32, i32* %35, align 4
  br label %BB_8049313.i.i

BB_8049313.i.i:                                   ; preds = %BB_80492FF.i.i, %BB_80492E9.i.i
  %42 = phi i32 [ %storemerge13.i, %BB_80492E9.i.i ], [ %.pre.i, %BB_80492FF.i.i ]
  %tmp0_v1.i36.i.i = add i32 %42, 1
  store i32 %tmp0_v1.i36.i.i, i32* %35, align 4
  %43 = load i32, i32* %26, align 4
  %44 = icmp slt i32 %tmp0_v1.i36.i.i, %43
  br i1 %44, label %BB_80492E9.i.i, label %Func_find_min.exit

Func_find_min.exit:                               ; preds = %BB_8049313.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %tmp4_v.i12.i.i, %BB_8049313.i.i ]
  %45 = load i32, i32* %34, align 16
  %46 = load i32, i32* %29, align 8
  %tmp2_v.i4.i = add i32 %46, -84
  %47 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %45, i32* %47, align 4
  store i32 7, i32* %26, align 4
  %tmp2_v3.i7.i = add i32 %46, -76
  store i32 %tmp2_v3.i7.i, i32* %27, align 16
  store i32 134517364, i32* %28, align 4
  store i32 %46, i32* %29, align 8
  %spi.bis.445 = ptrtoint[4 x i8]* @str.bis.445 to i32
  store i32 %spi.bis.445, i32* %30, align 4
  %48 = load i32, i32* %27, align 16
  %49 = inttoptr i32 %48 to i32*
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %34, align 16
  store i32 1, i32* %35, align 4
  %51 = load i32, i32* %26, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %BB_80492E9.i.i12, label %Func_find_min.exit21

BB_80492E9.i.i12:                                 ; preds = %BB_8049313.i.i16, %Func_find_min.exit
  %storemerge13.i8 = phi i32 [ %tmp0_v1.i36.i.i15, %BB_8049313.i.i16 ], [ 1, %Func_find_min.exit ]
  %tmp4_v.i12.i.i9 = shl i32 %storemerge13.i8, 2
  %53 = load i32, i32* %27, align 16
  %tmp0_v3.i.i.i10 = add i32 %53, %tmp4_v.i12.i.i9
  %54 = inttoptr i32 %tmp0_v3.i.i.i10 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %34, align 16
  %.not.i.i.i11 = icmp sgt i32 %56, %55
  br i1 %.not.i.i.i11, label %BB_80492FF.i.i14, label %BB_8049313.i.i16

BB_80492FF.i.i14:                                 ; preds = %BB_80492E9.i.i12
  store i32 %55, i32* %34, align 16
  %.pre.i13 = load i32, i32* %35, align 4
  br label %BB_8049313.i.i16

BB_8049313.i.i16:                                 ; preds = %BB_80492FF.i.i14, %BB_80492E9.i.i12
  %57 = phi i32 [ %storemerge13.i8, %BB_80492E9.i.i12 ], [ %.pre.i13, %BB_80492FF.i.i14 ]
  %tmp0_v1.i36.i.i15 = add i32 %57, 1
  store i32 %tmp0_v1.i36.i.i15, i32* %35, align 4
  %58 = load i32, i32* %26, align 4
  %59 = icmp slt i32 %tmp0_v1.i36.i.i15, %58
  br i1 %59, label %BB_80492E9.i.i12, label %Func_find_min.exit21

Func_find_min.exit21:                             ; preds = %BB_8049313.i.i16, %Func_find_min.exit
  %r_edx.0.lcssa.i17 = phi i32 [ %r_edx.0.lcssa.i, %Func_find_min.exit ], [ %tmp4_v.i12.i.i9, %BB_8049313.i.i16 ]
  %60 = load i32, i32* %34, align 16
  %61 = load i32, i32* %29, align 8
  %tmp2_v.i46.i = add i32 %61, -80
  %62 = inttoptr i32 %tmp2_v.i46.i to i32*
  store i32 %60, i32* %62, align 4
  %tmp2_v2.i49.i = add i32 %61, -84
  %63 = inttoptr i32 %tmp2_v2.i49.i to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %26, align 4
  %spi.bis.444 = ptrtoint[10 x i8]* @str.bis.444 to i32
  store i32 %spi.bis.444, i32* %27, align 16
  store i32 134517388, i32* %28, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i33.i, i32 inreg noundef %r_edx.0.lcssa.i17, i32 noundef %tmp2_v22.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %66 = lshr i64 %65, 32
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %62, align 4
  store i32 %68, i32* %26, align 4
  %spi.bis.443 = ptrtoint[10 x i8]* @str.bis.443 to i32
  store i32 %spi.bis.443, i32* %27, align 16
  store i32 134517409, i32* %28, align 4
  %69 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i33.i, i32 inreg noundef %67, i32 noundef %tmp2_v22.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @find_min448 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack447, i32 0, i32 8092) to i32)) nounwind
