; Mutation 423
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack422 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.418 = constant [12 x i8] c"a4 sum: %d\0a\00"
@str.419 = constant [12 x i8] c"a3 sum: %d\0a\00"
@str.420 = constant [12 x i8] c"a2 sum: %d\0a\00"
@str.421 = constant [12 x i8] c"a1 sum: %d\0a\00"

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
define internal fastcc void @sum423(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i14.i = add i32 %arg_esp, 4
  %tmp0_v.i15.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i15.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i16.i = add i32 %tmp0_v.i15.i, -8
  %3 = inttoptr i32 %tmp2_v4.i16.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i15.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i15.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i14.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i15.i, -100
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i66.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i70.i = add i32 %tmp0_v.i15.i, -20
  %9 = inttoptr i32 %tmp2_v2.i70.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i71.i = add i32 %tmp0_v.i15.i, -52
  %10 = inttoptr i32 %tmp2_v3.i71.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v4.i72.i = add i32 %tmp0_v.i15.i, -48
  %11 = inttoptr i32 %tmp2_v4.i72.i to i32*
  store i32 2, i32* %11, align 16
  %tmp2_v5.i73.i = add i32 %tmp0_v.i15.i, -44
  %12 = inttoptr i32 %tmp2_v5.i73.i to i32*
  store i32 6, i32* %12, align 4
  %tmp2_v6.i74.i = add i32 %tmp0_v.i15.i, -40
  %13 = inttoptr i32 %tmp2_v6.i74.i to i32*
  store i32 9, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i15.i, -36
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 8, i32* %14, align 4
  %tmp2_v8.i75.i = add i32 %tmp0_v.i15.i, -32
  %15 = inttoptr i32 %tmp2_v8.i75.i to i32*
  store i32 7, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i15.i, -28
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i15.i, -24
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 5, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i15.i, -88
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 100, i32* %18, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i15.i, -84
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 99, i32* %19, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i15.i, -80
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 99, i32* %20, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i15.i, -76
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 50, i32* %21, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i15.i, -72
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 -50, i32* %22, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i15.i, -68
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 100, i32* %23, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i15.i, -64
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 -100, i32* %24, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i15.i, -60
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 200, i32* %25, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i15.i, -56
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 -200, i32* %26, align 8
  %tmp2_v21.i.i = add i32 %tmp0_v.i15.i, -108
  %27 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 8, i32* %27, align 4
  %tmp2_v23.i.i = add i32 %tmp0_v.i15.i, -112
  %28 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 %tmp2_v3.i71.i, i32* %28, align 16
  %tmp2_v24.i.i = add i32 %tmp0_v.i15.i, -116
  %29 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 134517351, i32* %29, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i15.i, -120
  %30 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i16.i, i32* %30, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i15.i, -140
  %31 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517528, i32* %31, align 4
  %tmp2_v.i10.i.i = add i32 %tmp0_v.i15.i, -128
  %32 = inttoptr i32 %tmp2_v.i10.i.i to i32*
  store i32 0, i32* %32, align 16
  %tmp2_v1.i11.i.i = add i32 %tmp0_v.i15.i, -124
  %33 = inttoptr i32 %tmp2_v1.i11.i.i to i32*
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %27, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_804932D.i.i, label %Func_sum.exit

BB_804932D.i.i:                                   ; preds = %BB_804932D.i.i, %.exit
  %storemerge9.i = phi i32 [ %tmp0_v10.i.i.i, %BB_804932D.i.i ], [ 0, %.exit ]
  %tmp4_v.i15.i.i = shl i32 %storemerge9.i, 2
  %36 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i = add i32 %36, %tmp4_v.i15.i.i
  %37 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i = add i32 %39, %38
  store i32 %tmp0_v7.i.i.i, i32* %32, align 16
  %40 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i = add i32 %40, 1
  store i32 %tmp0_v10.i.i.i, i32* %33, align 4
  %41 = load i32, i32* %27, align 4
  %42 = icmp slt i32 %tmp0_v10.i.i.i, %41
  br i1 %42, label %BB_804932D.i.i, label %Func_sum.exit

Func_sum.exit:                                    ; preds = %BB_804932D.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %tmp4_v.i15.i.i, %BB_804932D.i.i ]
  %43 = load i32, i32* %32, align 16
  %44 = load i32, i32* %30, align 8
  store i32 %43, i32* %27, align 4
  %spi.bis.421 = ptrtoint[12 x i8]* @str.421 to i32
  store i32 %spi.bis.421, i32* %28, align 16
  store i32 134517370, i32* %29, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i14.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  store i32 1, i32* %27, align 4
  %tmp2_v2.i6.i = add i32 %44, -80
  store i32 %tmp2_v2.i6.i, i32* %28, align 16
  store i32 134517387, i32* %29, align 4
  store i32 %44, i32* %30, align 8
  store i32 134517528, i32* %31, align 4
  store i32 0, i32* %32, align 16
  store i32 0, i32* %33, align 4
  %48 = load i32, i32* %27, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %BB_804932D.i.i16, label %Func_sum.exit22

BB_804932D.i.i16:                                 ; preds = %BB_804932D.i.i16, %Func_sum.exit
  %storemerge9.i11 = phi i32 [ %tmp0_v10.i.i.i15, %BB_804932D.i.i16 ], [ 0, %Func_sum.exit ]
  %tmp4_v.i15.i.i12 = shl i32 %storemerge9.i11, 2
  %50 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i13 = add i32 %50, %tmp4_v.i15.i.i12
  %51 = inttoptr i32 %tmp0_v3.i.i.i13 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i14 = add i32 %53, %52
  store i32 %tmp0_v7.i.i.i14, i32* %32, align 16
  %54 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i15 = add i32 %54, 1
  store i32 %tmp0_v10.i.i.i15, i32* %33, align 4
  %55 = load i32, i32* %27, align 4
  %56 = icmp slt i32 %tmp0_v10.i.i.i15, %55
  br i1 %56, label %BB_804932D.i.i16, label %Func_sum.exit22

Func_sum.exit22:                                  ; preds = %BB_804932D.i.i16, %Func_sum.exit
  %r_edx.0.lcssa.i17 = phi i32 [ %47, %Func_sum.exit ], [ %tmp4_v.i15.i.i12, %BB_804932D.i.i16 ]
  %57 = load i32, i32* %32, align 16
  %58 = load i32, i32* %30, align 8
  store i32 %57, i32* %27, align 4
  %spi.bis.420 = ptrtoint[12 x i8]* @str.420 to i32
  store i32 %spi.bis.420, i32* %28, align 16
  store i32 134517406, i32* %29, align 4
  %59 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i14.i, i32 inreg noundef %r_edx.0.lcssa.i17, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %60 = lshr i64 %59, 32
  %61 = trunc i64 %60 to i32
  store i32 2, i32* %27, align 4
  %tmp2_v2.i31.i = add i32 %58, -76
  store i32 %tmp2_v2.i31.i, i32* %28, align 16
  store i32 134517423, i32* %29, align 4
  store i32 %58, i32* %30, align 8
  store i32 134517528, i32* %31, align 4
  store i32 0, i32* %32, align 16
  store i32 0, i32* %33, align 4
  %62 = load i32, i32* %27, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %BB_804932D.i.i36, label %Func_sum.exit42

BB_804932D.i.i36:                                 ; preds = %BB_804932D.i.i36, %Func_sum.exit22
  %storemerge9.i31 = phi i32 [ %tmp0_v10.i.i.i35, %BB_804932D.i.i36 ], [ 0, %Func_sum.exit22 ]
  %tmp4_v.i15.i.i32 = shl i32 %storemerge9.i31, 2
  %64 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i33 = add i32 %64, %tmp4_v.i15.i.i32
  %65 = inttoptr i32 %tmp0_v3.i.i.i33 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i34 = add i32 %67, %66
  store i32 %tmp0_v7.i.i.i34, i32* %32, align 16
  %68 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i35 = add i32 %68, 1
  store i32 %tmp0_v10.i.i.i35, i32* %33, align 4
  %69 = load i32, i32* %27, align 4
  %70 = icmp slt i32 %tmp0_v10.i.i.i35, %69
  br i1 %70, label %BB_804932D.i.i36, label %Func_sum.exit42

Func_sum.exit42:                                  ; preds = %BB_804932D.i.i36, %Func_sum.exit22
  %r_edx.0.lcssa.i37 = phi i32 [ %61, %Func_sum.exit22 ], [ %tmp4_v.i15.i.i32, %BB_804932D.i.i36 ]
  %71 = load i32, i32* %32, align 16
  %72 = load i32, i32* %30, align 8
  store i32 %71, i32* %27, align 4
  %spi.bis.419 = ptrtoint[12 x i8]* @str.419 to i32
  store i32 %spi.bis.419, i32* %28, align 16
  store i32 134517442, i32* %29, align 4
  %73 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i14.i, i32 inreg noundef %r_edx.0.lcssa.i37, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %74 = lshr i64 %73, 32
  %75 = trunc i64 %74 to i32
  store i32 6, i32* %27, align 4
  %tmp2_v2.i.i = add i32 %72, -68
  store i32 %tmp2_v2.i.i, i32* %28, align 16
  store i32 134517459, i32* %29, align 4
  store i32 %72, i32* %30, align 8
  store i32 134517528, i32* %31, align 4
  store i32 0, i32* %32, align 16
  store i32 0, i32* %33, align 4
  %76 = load i32, i32* %27, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %BB_804932D.i.i56, label %Func_sum.exit62

BB_804932D.i.i56:                                 ; preds = %BB_804932D.i.i56, %Func_sum.exit42
  %storemerge9.i51 = phi i32 [ %tmp0_v10.i.i.i55, %BB_804932D.i.i56 ], [ 0, %Func_sum.exit42 ]
  %tmp4_v.i15.i.i52 = shl i32 %storemerge9.i51, 2
  %78 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i53 = add i32 %78, %tmp4_v.i15.i.i52
  %79 = inttoptr i32 %tmp0_v3.i.i.i53 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i54 = add i32 %81, %80
  store i32 %tmp0_v7.i.i.i54, i32* %32, align 16
  %82 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i55 = add i32 %82, 1
  store i32 %tmp0_v10.i.i.i55, i32* %33, align 4
  %83 = load i32, i32* %27, align 4
  %84 = icmp slt i32 %tmp0_v10.i.i.i55, %83
  br i1 %84, label %BB_804932D.i.i56, label %Func_sum.exit62

Func_sum.exit62:                                  ; preds = %BB_804932D.i.i56, %Func_sum.exit42
  %r_edx.0.lcssa.i57 = phi i32 [ %75, %Func_sum.exit42 ], [ %tmp4_v.i15.i.i52, %BB_804932D.i.i56 ]
  %85 = load i32, i32* %32, align 16
  store i32 %85, i32* %27, align 4
  %spi.bis.418 = ptrtoint[12 x i8]* @str.418 to i32
  store i32 %spi.bis.418, i32* %28, align 16
  store i32 134517478, i32* %29, align 4
  %86 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i14.i, i32 inreg noundef %r_edx.0.lcssa.i57, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @sum423 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack422, i32 0, i32 8092) to i32)) nounwind
