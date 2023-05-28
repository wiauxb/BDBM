; Mutation 417
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack416 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.414 = constant [14 x i8] c"\61\72\72\61\79\5b\25\64\5d\3d\25\64\0a\00"
@str.bis.415 = constant [14 x i8] c"\61\72\72\61\79\5b\25\64\5d\3d\25\64\0a\00"

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
define internal fastcc void @constants417(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i35.i = add i32 %arg_esp, 4
  %tmp0_v.i36.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i37.i = add i32 %tmp0_v.i36.i, -4
  %2 = inttoptr i32 %tmp2_v3.i37.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i38.i = add i32 %tmp0_v.i36.i, -8
  %3 = inttoptr i32 %tmp2_v4.i38.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i40.i = add i32 %tmp0_v.i36.i, -12
  %4 = inttoptr i32 %tmp2_v5.i40.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i42.i = add i32 %tmp0_v.i36.i, -16
  %5 = inttoptr i32 %tmp2_v6.i42.i to i32*
  store i32 %tmp2_v.i35.i, i32* %5, align 16
  %tmp2_v8.i43.i = add i32 %tmp0_v.i36.i, -116
  %6 = inttoptr i32 %tmp2_v8.i43.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i4.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i8.i = add i32 %tmp0_v.i36.i, -20
  %9 = inttoptr i32 %tmp2_v2.i8.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i36.i, -104
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 0, i32* %10, align 8
  %tmp2_v4.i9.i = add i32 %tmp0_v.i36.i, -100
  %11 = inttoptr i32 %tmp2_v4.i9.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i36.i, -96
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 2, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i36.i, -92
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i36.i, -88
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 4, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i36.i, -84
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i36.i, -80
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %16, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i36.i, -76
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i36.i, -72
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %18, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i36.i, -68
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i36.i, -124
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 10, i32* %20, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i36.i, -128
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i36.i, -132
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 134517334, i32* %22, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i36.i, -136
  %23 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i38.i, i32* %23, align 8
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i36.i, -140
  %24 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 134529024, i32* %24, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i36.i, -164
  %25 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517492, i32* %25, align 4
  %26 = load i32, i32* %20, align 4
  %tmp2_v2.i17.i.i = add i32 %tmp0_v.i36.i, -148
  %27 = inttoptr i32 %tmp2_v2.i17.i.i to i32*
  store i32 %26, i32* %27, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i36.i, -152
  %28 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %27, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_8049309.i.lr.ph.i, label %Func_print_array.exit

BB_8049309.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i36.i, -168
  %31 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i36.i, -172
  %32 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  %tmp2_v11.i.i.i = add i32 %tmp0_v.i36.i, -176
  %33 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  %tmp2_v12.i.i.i = add i32 %tmp0_v.i36.i, -180
  %34 = inttoptr i32 %tmp2_v12.i.i.i to i32*
  br label %BB_8049309.i.i

BB_8049309.i.i:                                   ; preds = %BB_8049309.i.i, %BB_8049309.i.lr.ph.i
  %storemerge15.i = phi i32 [ 0, %BB_8049309.i.lr.ph.i ], [ %tmp0_v2.i23.i.i, %BB_8049309.i.i ]
  %tmp4_v.i.i.i1 = shl i32 %storemerge15.i, 2
  %35 = load i32, i32* %21, align 16
  %tmp0_v3.i.i.i = add i32 %35, %tmp4_v.i.i.i1
  %36 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %31, align 8
  %38 = load i32, i32* %28, align 8
  store i32 %38, i32* %32, align 4
  %spi.bis.415 = ptrtoint[14 x i8]* @str.bis.415 to i32
  store i32 %spi.bis.415, i32* %33, align 16
  store i32 134517549, i32* %34, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i35.i, i32 inreg noundef %tmp4_v.i.i.i1, i32 noundef %tmp2_v11.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %40 = load i32, i32* %28, align 8
  %tmp0_v2.i23.i.i = add i32 %40, 1
  store i32 %tmp0_v2.i23.i.i, i32* %28, align 8
  %41 = load i32, i32* %27, align 4
  %42 = icmp slt i32 %tmp0_v2.i23.i.i, %41
  br i1 %42, label %BB_8049309.i.i, label %Func_print_array.exit

Func_print_array.exit:                            ; preds = %BB_8049309.i.i, %.exit
  %43 = load i32, i32* %24, align 4
  %44 = load i32, i32* %23, align 8
  store i32 10, i32* %21, align 16
  store i32 134517347, i32* %22, align 4
  %arg.i.i = load i32, i32* %21, align 16
  %45 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i14.i = add i32 %44, -56
  %46 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 0, i32* %46, align 4
  %tmp2_v1.i.i = add i32 %44, -52
  %47 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1, i32* %47, align 4
  %tmp2_v2.i15.i = add i32 %44, -48
  %48 = inttoptr i32 %tmp2_v2.i15.i to i32*
  store i32 2, i32* %48, align 4
  %tmp2_v3.i16.i = add i32 %44, -44
  %49 = inttoptr i32 %tmp2_v3.i16.i to i32*
  store i32 3, i32* %49, align 4
  %tmp2_v4.i17.i = add i32 %44, -40
  %50 = inttoptr i32 %tmp2_v4.i17.i to i32*
  store i32 4, i32* %50, align 4
  %tmp2_v5.i18.i = add i32 %44, -36
  %51 = inttoptr i32 %tmp2_v5.i18.i to i32*
  store i32 5, i32* %51, align 4
  %tmp2_v6.i19.i = add i32 %44, -32
  %52 = inttoptr i32 %tmp2_v6.i19.i to i32*
  store i32 6, i32* %52, align 4
  %tmp2_v7.i20.i = add i32 %44, -28
  %53 = inttoptr i32 %tmp2_v7.i20.i to i32*
  store i32 7, i32* %53, align 4
  %tmp2_v8.i21.i = add i32 %44, -24
  %54 = inttoptr i32 %tmp2_v8.i21.i to i32*
  store i32 8, i32* %54, align 4
  %tmp2_v9.i22.i = add i32 %44, -20
  %55 = inttoptr i32 %tmp2_v9.i22.i to i32*
  store i32 9, i32* %55, align 4
  %tmp2_v10.i23.i = add i32 %44, -16
  %56 = inttoptr i32 %tmp2_v10.i23.i to i32*
  store i32 10, i32* %56, align 4
  store i32 11, i32* %20, align 4
  store i32 %tmp2_v.i14.i, i32* %21, align 16
  store i32 134517441, i32* %22, align 4
  store i32 %44, i32* %23, align 8
  store i32 %43, i32* %24, align 4
  store i32 134517492, i32* %25, align 4
  %57 = load i32, i32* %20, align 4
  store i32 %57, i32* %27, align 4
  store i32 0, i32* %28, align 8
  %58 = load i32, i32* %27, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %BB_8049309.i.lr.ph.i14, label %Func_print_array.exit22

BB_8049309.i.lr.ph.i14:                           ; preds = %Func_print_array.exit
  %tmp2_v6.i.i.i10 = add i32 %tmp0_v.i36.i, -168
  %60 = inttoptr i32 %tmp2_v6.i.i.i10 to i32*
  %tmp2_v9.i.i.i11 = add i32 %tmp0_v.i36.i, -172
  %61 = inttoptr i32 %tmp2_v9.i.i.i11 to i32*
  %tmp2_v11.i.i.i12 = add i32 %tmp0_v.i36.i, -176
  %62 = inttoptr i32 %tmp2_v11.i.i.i12 to i32*
  %tmp2_v12.i.i.i13 = add i32 %tmp0_v.i36.i, -180
  %63 = inttoptr i32 %tmp2_v12.i.i.i13 to i32*
  br label %BB_8049309.i.i19

BB_8049309.i.i19:                                 ; preds = %BB_8049309.i.i19, %BB_8049309.i.lr.ph.i14
  %storemerge15.i15 = phi i32 [ 0, %BB_8049309.i.lr.ph.i14 ], [ %tmp0_v2.i23.i.i18, %BB_8049309.i.i19 ]
  %tmp4_v.i.i.i16 = shl i32 %storemerge15.i15, 2
  %64 = load i32, i32* %21, align 16
  %tmp0_v3.i.i.i17 = add i32 %64, %tmp4_v.i.i.i16
  %65 = inttoptr i32 %tmp0_v3.i.i.i17 to i32*
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %60, align 8
  %67 = load i32, i32* %28, align 8
  store i32 %67, i32* %61, align 4
  %spi.bis.414 = ptrtoint[14 x i8]* @str.bis.414 to i32
  store i32 %spi.bis.414, i32* %62, align 16
  store i32 134517549, i32* %63, align 4
  %68 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i35.i, i32 inreg noundef %tmp4_v.i.i.i16, i32 noundef %tmp2_v11.i.i.i12, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %69 = load i32, i32* %28, align 8
  %tmp0_v2.i23.i.i18 = add i32 %69, 1
  store i32 %tmp0_v2.i23.i.i18, i32* %28, align 8
  %70 = load i32, i32* %27, align 4
  %71 = icmp slt i32 %tmp0_v2.i23.i.i18, %70
  br i1 %71, label %BB_8049309.i.i19, label %Func_print_array.exit22

Func_print_array.exit22:                          ; preds = %BB_8049309.i.i19, %Func_print_array.exit
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

  tail call fastcc void @constants417 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack416, i32 0, i32 8092) to i32)) nounwind
