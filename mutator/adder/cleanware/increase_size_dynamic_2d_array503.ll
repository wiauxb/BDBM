; Mutation 503
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack502 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.499 = constant [6 x i8] c"%02d \00"
@str.500 = constant [6 x i8] c"%02d \00"
@str.501 = constant [6 x i8] c"%02d \00"

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
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @realloc(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @increase_size_dynamic_2d_array503(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i5.i = add i32 %tmp0_v.i3.i, -4
  %3 = inttoptr i32 %tmp2_v3.i5.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i7.i = add i32 %tmp0_v.i3.i, -12
  %5 = inttoptr i32 %tmp2_v5.i7.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %7, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -116
  %8 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517298, i32* %8, align 4
  %tmp2_v.i149.i = add i32 %tmp0_v.i3.i, -48
  %9 = inttoptr i32 %tmp2_v.i149.i to i32*
  store i32 4, i32* %9, align 16
  %tmp2_v1.i150.i = add i32 %tmp0_v.i3.i, -44
  %10 = inttoptr i32 %tmp2_v1.i150.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v6.i156.i = add i32 %tmp0_v.i3.i, -128
  %11 = inttoptr i32 %tmp2_v6.i156.i to i32*
  store i32 16, i32* %11, align 16
  %tmp2_v7.i157.i = add i32 %tmp0_v.i3.i, -132
  %12 = inttoptr i32 %tmp2_v7.i157.i to i32*
  store i32 134517333, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @malloc(i32 %arg.i.i)
  %mrv.i32 = insertvalue { i32, i32 } undef, i32 %tmp2_v6.i156.i, 0
  %tmp2_v.i94.i = add i32 %tmp0_v.i3.i, -40
  %14 = inttoptr i32 %tmp2_v.i94.i to i32*
  store i32 %13, i32* %14, align 8
  %tmp2_v1.i96.i = add i32 %tmp0_v.i3.i, -112
  %15 = inttoptr i32 %tmp2_v1.i96.i to i32*
  store i32 0, i32* %15, align 16
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %BB_8049264.i, label %BB_8049294.i

BB_804936B.i:                                     ; preds = %BB_804936B.i.lr.ph, %BB_804936B.i
  %storemerge265 = phi i32 [ 0, %BB_804936B.i.lr.ph ], [ %tmp0_v2.i359.i, %BB_804936B.i ]
  %18 = load i32, i32* %9, align 16
  %tmp4_v.i.i = shl i32 %18, 2
  %tmp4_v3.i.i = shl i32 %storemerge265, 2
  %19 = load i32, i32* %14, align 8
  %tmp0_v6.i.i = add i32 %19, %tmp4_v3.i.i
  %20 = inttoptr i32 %tmp0_v6.i.i to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %tmp4_v.i.i, i32* %168, align 4
  store i32 %21, i32* %.pre-phi, align 4
  store i32 134517663, i32* %.pre-phi87, align 4
  %arg.i.i34 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i = load i32, i32* %168, align 4
  %22 = tail call i32 @realloc(i32 %arg.i.i34, i32 %arg2.i.i)
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %165, align 4
  %tmp0_v2.i359.i = add i32 %23, 1
  store i32 %tmp0_v2.i359.i, i32* %165, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %tmp0_v2.i359.i, %24
  br i1 %25, label %BB_804936B.i, label %BB_80493B0.i

BB_8049408.i:                                     ; preds = %BB_80493FC.i, %BB_80493B0.i
  %r_ecx.0.lcssa = phi i32 [ %r_ecx.2.lcssa, %BB_80493B0.i ], [ %r_ecx.6.lcssa, %BB_80493FC.i ]
  %tmp2_v.i21.i = add i32 %tmp0_v.i3.i, -80
  %26 = inttoptr i32 %tmp2_v.i21.i to i32*
  store i32 0, i32* %26, align 16
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %BB_8049411.i.lr.ph, label %BB_8049408.i.BB_804946D.i_crit_edge

BB_8049408.i.BB_804946D.i_crit_edge:              ; preds = %BB_8049408.i
  %.pre88 = add i32 %r_esp.6.in.le, 4
  %.pre89 = inttoptr i32 %.pre88 to i32*
  br label %BB_804946D.i

BB_8049411.i.lr.ph:                               ; preds = %BB_8049408.i
  %tmp2_v.i374.i = add i32 %tmp0_v.i3.i, -76
  %29 = inttoptr i32 %tmp2_v.i374.i to i32*
  %tmp2_v11.i229.i = add i32 %r_esp.6.in.le, 4
  %30 = inttoptr i32 %tmp2_v11.i229.i to i32*
  br label %BB_8049411.i

BB_804929D.i:                                     ; preds = %BB_80492E0.i, %BB_804929D.i.lr.ph
  %r_ecx.762 = phi i32 [ %r_ecx.4.lcssa, %BB_804929D.i.lr.ph ], [ %r_ecx.1.lcssa, %BB_80492E0.i ]
  store i32 0, i32* %145, align 8
  %31 = load i32, i32* %9, align 16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492A6.i, label %BB_80492E0.i

BB_8049338.i:                                     ; preds = %BB_80492FE.i, %BB_80492F5.i
  store i32 10, i32* %183, align 4
  store i32 134517570, i32* %184, align 4
  %arg.i.i37 = load i32, i32* %183, align 4
  %33 = tail call i32 @putchar(i32 %arg.i.i37)  nounwind 
  %34 = load i32, i32* %178, align 4
  %tmp0_v2.i419.i = add i32 %34, 1
  store i32 %tmp0_v2.i419.i, i32* %178, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %tmp0_v2.i419.i, %35
  br i1 %36, label %BB_80492F5.i, label %BB_8049351.i

BB_80493B0.i:                                     ; preds = %BB_8049351.i, %BB_804936B.i
  %r_ecx.2.lcssa = phi i32 [ %r_ecx.7.lcssa, %BB_8049351.i ], [ %19, %BB_804936B.i ]
  %tmp2_v.i29.i = add i32 %tmp0_v.i3.i, -88
  %37 = inttoptr i32 %tmp2_v.i29.i to i32*
  store i32 0, i32* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %BB_80493B9.i.lr.ph, label %BB_8049408.i

BB_80493B9.i.lr.ph:                               ; preds = %BB_80493B0.i
  %tmp2_v.i282.i = add i32 %tmp0_v.i3.i, -84
  %40 = inttoptr i32 %tmp2_v.i282.i to i32*
  br label %BB_80493B9.i

BB_8049532.i:                                     ; preds = %BB_80494DA.i, %BB_8049526.i
  %r_ecx.3.lcssa = phi i32 [ %r_ecx.8.lcssa, %BB_80494DA.i ], [ %r_ecx.5.lcssa, %BB_8049526.i ]
  %tmp2_v.i31.i = add i32 %tmp0_v.i3.i, -60
  %41 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %BB_804953B.i.lr.ph, label %BB_8049532.i.BB_8049597.i_crit_edge

BB_8049532.i.BB_8049597.i_crit_edge:              ; preds = %BB_8049532.i
  %.pre91 = inttoptr i32 %r_esp.9.in.le.pre-phi to i32*
  %.pre93 = add i32 %r_esp.9.in.le.pre-phi, -4
  %.pre94 = inttoptr i32 %.pre93 to i32*
  br label %BB_8049597.i

BB_804953B.i.lr.ph:                               ; preds = %BB_8049532.i
  %tmp2_v.i456.i = add i32 %tmp0_v.i3.i, -56
  %44 = inttoptr i32 %tmp2_v.i456.i to i32*
  %tmp2_v11.i52.i = add i32 %r_esp.9.in.le.pre-phi, 4
  %45 = inttoptr i32 %tmp2_v11.i52.i to i32*
  %46 = inttoptr i32 %r_esp.9.in.le.pre-phi to i32*
  %tmp2_v14.i.i = add i32 %r_esp.9.in.le.pre-phi, -4
  %47 = inttoptr i32 %tmp2_v14.i.i to i32*
  br label %BB_804953B.i

BB_8049544.i:                                     ; preds = %BB_804953B.i, %BB_8049544.i
  %storemerge782 = phi i32 [ %tmp0_v2.i84.i, %BB_8049544.i ], [ 0, %BB_804953B.i ]
  %48 = load i32, i32* %41, align 4
  %tmp4_v.i42.i = shl i32 %48, 2
  %49 = load i32, i32* %14, align 8
  %tmp0_v3.i.i = add i32 %49, %tmp4_v.i42.i
  %50 = inttoptr i32 %tmp0_v3.i.i to i32*
  %51 = load i32, i32* %50, align 4
  %tmp0_v7.i48.i = shl i32 %storemerge782, 2
  %tmp0_v8.i49.i = add i32 %51, %tmp0_v7.i48.i
  %52 = inttoptr i32 %tmp0_v8.i49.i to i32*
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %45, align 4
  %spi.bis.501 = ptrtoint[6 x i8]* @str.501 to i32
  store i32 %spi.bis.501, i32* %46, align 4
  store i32 134518127, i32* %47, align 4
  %54 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.3.lcssa, i32 inreg noundef %tmp0_v7.i48.i, i32 noundef %r_esp.9.in.le.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %55 = load i32, i32* %44, align 8
  %tmp0_v2.i84.i = add i32 %55, 1
  store i32 %tmp0_v2.i84.i, i32* %44, align 8
  %56 = load i32, i32* %9, align 16
  %57 = icmp slt i32 %tmp0_v2.i84.i, %56
  br i1 %57, label %BB_8049544.i, label %BB_804957E.i

BB_80492F5.i:                                     ; preds = %BB_80492F5.i.lr.ph, %BB_8049338.i
  store i32 0, i32* %181, align 16
  %58 = load i32, i32* %9, align 16
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %BB_80492FE.i, label %BB_8049338.i

BB_80493FC.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %r_ecx.6.lcssa = phi i32 [ %r_ecx.069, %BB_80493B9.i ], [ %tmp0_v3.i431.i, %BB_80493C2.i ]
  %60 = load i32, i32* %37, align 8
  %tmp0_v1.i107.i = add i32 %60, 1
  store i32 %tmp0_v1.i107.i, i32* %37, align 8
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %tmp0_v1.i107.i, %61
  br i1 %62, label %BB_80493B9.i, label %BB_8049408.i

BB_80495AD.i:                                     ; preds = %BB_8049597.i, %BB_80495AD.i
  %storemerge683 = phi i32 [ %tmp0_v2.i125.i, %BB_80495AD.i ], [ 0, %BB_8049597.i ]
  %tmp4_v.i161.i = shl i32 %storemerge683, 2
  %63 = load i32, i32* %14, align 8
  %tmp0_v3.i164.i = add i32 %63, %tmp4_v.i161.i
  %64 = inttoptr i32 %tmp0_v3.i164.i to i32*
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %.pre-phi92, align 4
  store i32 134518215, i32* %.pre-phi95, align 4
  %arg.i.i38 = load i32, i32* %.pre-phi92, align 4
  tail call void @free(i32 %arg.i.i38)
  %66 = load i32, i32* %139, align 4
  %tmp0_v2.i125.i = add i32 %66, 1
  store i32 %tmp0_v2.i125.i, i32* %139, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %tmp0_v2.i125.i, %67
  br i1 %68, label %BB_80495AD.i, label %.exit

BB_80494EC.i:                                     ; preds = %BB_80494E3.i, %BB_80494EC.i
  %storemerge878 = phi i32 [ %tmp0_v19.i.i, %BB_80494EC.i ], [ 0, %BB_80494E3.i ]
  %69 = load i32, i32* %120, align 4
  %tmp0_v3.i198.i = mul i32 %69, 10
  %tmp4_v.i201.i = shl i32 %69, 2
  %70 = load i32, i32* %14, align 8
  %tmp0_v8.i204.i = add i32 %70, %tmp4_v.i201.i
  %71 = inttoptr i32 %tmp0_v8.i204.i to i32*
  %72 = load i32, i32* %71, align 4
  %tmp0_v12.i207.i = shl i32 %storemerge878, 2
  %tmp0_v13.i208.i = add i32 %72, %tmp0_v12.i207.i
  %tmp0_v16.i.i = add i32 %tmp0_v3.i198.i, %storemerge878
  %73 = inttoptr i32 %tmp0_v13.i208.i to i32*
  store i32 %tmp0_v16.i.i, i32* %73, align 4
  %74 = load i32, i32* %123, align 16
  %tmp0_v19.i.i = add i32 %74, 1
  store i32 %tmp0_v19.i.i, i32* %123, align 16
  %75 = load i32, i32* %9, align 16
  %76 = icmp slt i32 %tmp0_v19.i.i, %75
  br i1 %76, label %BB_80494EC.i, label %BB_8049526.i

BB_804941A.i:                                     ; preds = %BB_8049411.i, %BB_804941A.i
  %storemerge1071 = phi i32 [ %tmp0_v2.i72.i, %BB_804941A.i ], [ 0, %BB_8049411.i ]
  %77 = load i32, i32* %26, align 16
  %tmp4_v.i217.i = shl i32 %77, 2
  %78 = load i32, i32* %14, align 8
  %tmp0_v3.i220.i = add i32 %78, %tmp4_v.i217.i
  %79 = inttoptr i32 %tmp0_v3.i220.i to i32*
  %80 = load i32, i32* %79, align 4
  %tmp0_v7.i224.i = shl i32 %storemerge1071, 2
  %tmp0_v8.i225.i = add i32 %80, %tmp0_v7.i224.i
  %81 = inttoptr i32 %tmp0_v8.i225.i to i32*
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %30, align 4
  %spi.bis.500 = ptrtoint[6 x i8]* @str.500 to i32
  store i32 %spi.bis.500, i32* %.pre-phi, align 4
  store i32 134517829, i32* %.pre-phi87, align 4
  %83 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa, i32 inreg noundef %tmp0_v7.i224.i, i32 noundef %r_esp.6.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %84 = load i32, i32* %29, align 4
  %tmp0_v2.i72.i = add i32 %84, 1
  store i32 %tmp0_v2.i72.i, i32* %29, align 4
  %85 = load i32, i32* %9, align 16
  %86 = icmp slt i32 %tmp0_v2.i72.i, %85
  br i1 %86, label %BB_804941A.i, label %BB_8049454.i

BB_80494E3.i:                                     ; preds = %BB_80494E3.i.lr.ph, %BB_8049526.i
  %r_ecx.380 = phi i32 [ %r_ecx.8.lcssa, %BB_80494E3.i.lr.ph ], [ %r_ecx.5.lcssa, %BB_8049526.i ]
  store i32 0, i32* %123, align 16
  %87 = load i32, i32* %9, align 16
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %BB_80494EC.i, label %BB_8049526.i

BB_80492FE.i:                                     ; preds = %BB_80492FE.i, %BB_80492F5.i
  %storemerge1464 = phi i32 [ %tmp0_v2.i298.i, %BB_80492FE.i ], [ 0, %BB_80492F5.i ]
  %89 = load i32, i32* %178, align 4
  %tmp4_v.i246.i = shl i32 %89, 2
  %90 = load i32, i32* %14, align 8
  %tmp0_v3.i249.i = add i32 %90, %tmp4_v.i246.i
  %91 = inttoptr i32 %tmp0_v3.i249.i to i32*
  %92 = load i32, i32* %91, align 4
  %tmp0_v7.i253.i = shl i32 %storemerge1464, 2
  %tmp0_v8.i254.i = add i32 %92, %tmp0_v7.i253.i
  %93 = inttoptr i32 %tmp0_v8.i254.i to i32*
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %182, align 4
  %spi.bis.499 = ptrtoint[6 x i8]* @str.499 to i32
  store i32 %spi.bis.499, i32* %183, align 4
  store i32 134517545, i32* %184, align 4
  %95 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.7.lcssa, i32 inreg noundef %tmp0_v7.i253.i, i32 noundef %r_esp.6.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %96 = load i32, i32* %181, align 16
  %tmp0_v2.i298.i = add i32 %96, 1
  store i32 %tmp0_v2.i298.i, i32* %181, align 16
  %97 = load i32, i32* %9, align 16
  %98 = icmp slt i32 %tmp0_v2.i298.i, %97
  br i1 %98, label %BB_80492FE.i, label %BB_8049338.i

BB_804946D.i:                                     ; preds = %BB_8049454.i, %BB_8049408.i.BB_804946D.i_crit_edge
  %.pre-phi90 = phi i32* [ %.pre89, %BB_8049408.i.BB_804946D.i_crit_edge ], [ %30, %BB_8049454.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517879, i32* %.pre-phi87, align 4
  %arg.i.i39 = load i32, i32* %.pre-phi, align 4
  %99 = tail call i32 @putchar(i32 %arg.i.i39)  nounwind 
  %tmp2_v.i173.i = add i32 %tmp0_v.i3.i, -36
  %100 = inttoptr i32 %tmp2_v.i173.i to i32*
  store i32 3, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  %tmp0_v5.i178.i = add i32 %101, 3
  store i32 %tmp0_v5.i178.i, i32* %10, align 4
  %tmp0_v8.i181.i = shl i32 %tmp0_v5.i178.i, 2
  store i32 %tmp0_v8.i181.i, i32* %.pre-phi90, align 4
  %102 = load i32, i32* %14, align 8
  store i32 %102, i32* %.pre-phi, align 4
  store i32 134517913, i32* %.pre-phi87, align 4
  %arg.i.i40 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i41 = load i32, i32* %.pre-phi90, align 4
  %103 = tail call i32 @realloc(i32 %arg.i.i40, i32 %arg2.i.i41)
  store i32 %103, i32* %14, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %100, align 4
  %tmp0_v4.i.i = sub i32 %104, %105
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -72
  %106 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp0_v4.i.i, i32* %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %tmp0_v4.i.i, %107
  br i1 %108, label %BB_80494AA.i, label %BB_80494DA.i

BB_80493B9.i:                                     ; preds = %BB_80493FC.i, %BB_80493B9.i.lr.ph
  %r_ecx.069 = phi i32 [ %r_ecx.2.lcssa, %BB_80493B9.i.lr.ph ], [ %r_ecx.6.lcssa, %BB_80493FC.i ]
  store i32 0, i32* %40, align 4
  %109 = load i32, i32* %9, align 16
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %BB_80493C2.i, label %BB_80493FC.i

BB_8049526.i:                                     ; preds = %BB_80494E3.i, %BB_80494EC.i
  %r_ecx.5.lcssa = phi i32 [ %r_ecx.380, %BB_80494E3.i ], [ %tmp0_v3.i198.i, %BB_80494EC.i ]
  %111 = load i32, i32* %120, align 4
  %tmp0_v1.i286.i = add i32 %111, 1
  store i32 %tmp0_v1.i286.i, i32* %120, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %tmp0_v1.i286.i, %112
  br i1 %113, label %BB_80494E3.i, label %BB_8049532.i

BB_8049411.i:                                     ; preds = %BB_8049454.i, %BB_8049411.i.lr.ph
  store i32 0, i32* %29, align 4
  %114 = load i32, i32* %9, align 16
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %BB_804941A.i, label %BB_8049454.i

BB_8049454.i:                                     ; preds = %BB_8049411.i, %BB_804941A.i
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517854, i32* %.pre-phi87, align 4
  %arg.i.i44 = load i32, i32* %.pre-phi, align 4
  %116 = tail call i32 @putchar(i32 %arg.i.i44)  nounwind 
  %117 = load i32, i32* %26, align 16
  %tmp0_v2.i317.i = add i32 %117, 1
  store i32 %tmp0_v2.i317.i, i32* %26, align 16
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %tmp0_v2.i317.i, %118
  br i1 %119, label %BB_8049411.i, label %BB_804946D.i

BB_80494DA.i.loopexit:                            ; preds = %BB_80494AA.i
  %.pre = extractvalue { i32, i32 } %.pn3.pn73, 0
  br label %BB_80494DA.i

BB_80494DA.i:                                     ; preds = %BB_80494DA.i.loopexit, %BB_804946D.i
  %r_esp.9.in.le.pre-phi = phi i32 [ %.pre, %BB_80494DA.i.loopexit ], [ %r_esp.6.in.le, %BB_804946D.i ]
  %r_ecx.8.lcssa = phi i32 [ %tmp4_v.i502.i, %BB_80494DA.i.loopexit ], [ %r_ecx.0.lcssa, %BB_804946D.i ]
  %tmp2_v.i387.i = add i32 %tmp0_v.i3.i, -68
  %120 = inttoptr i32 %tmp2_v.i387.i to i32*
  store i32 0, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %BB_80494E3.i.lr.ph, label %BB_8049532.i

BB_80494E3.i.lr.ph:                               ; preds = %BB_80494DA.i
  %tmp2_v.i242.i = add i32 %tmp0_v.i3.i, -64
  %123 = inttoptr i32 %tmp2_v.i242.i to i32*
  br label %BB_80494E3.i

BB_80493C2.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %storemerge1267 = phi i32 [ %tmp0_v19.i448.i, %BB_80493C2.i ], [ 0, %BB_80493B9.i ]
  %124 = load i32, i32* %37, align 8
  %tmp0_v3.i431.i = mul i32 %124, 10
  %tmp4_v.i434.i = shl i32 %124, 2
  %125 = load i32, i32* %14, align 8
  %tmp0_v8.i437.i = add i32 %125, %tmp4_v.i434.i
  %126 = inttoptr i32 %tmp0_v8.i437.i to i32*
  %127 = load i32, i32* %126, align 4
  %tmp0_v12.i441.i = shl i32 %storemerge1267, 2
  %tmp0_v13.i442.i = add i32 %127, %tmp0_v12.i441.i
  %tmp0_v16.i445.i = add i32 %tmp0_v3.i431.i, %storemerge1267
  %128 = inttoptr i32 %tmp0_v13.i442.i to i32*
  store i32 %tmp0_v16.i445.i, i32* %128, align 4
  %129 = load i32, i32* %40, align 4
  %tmp0_v19.i448.i = add i32 %129, 1
  store i32 %tmp0_v19.i448.i, i32* %40, align 4
  %130 = load i32, i32* %9, align 16
  %131 = icmp slt i32 %tmp0_v19.i448.i, %130
  br i1 %131, label %BB_80493C2.i, label %BB_80493FC.i

BB_804953B.i:                                     ; preds = %BB_804957E.i, %BB_804953B.i.lr.ph
  store i32 0, i32* %44, align 8
  %132 = load i32, i32* %9, align 16
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %BB_8049544.i, label %BB_804957E.i

BB_804957E.i:                                     ; preds = %BB_804953B.i, %BB_8049544.i
  store i32 10, i32* %46, align 4
  store i32 134518152, i32* %47, align 4
  %arg.i.i45 = load i32, i32* %46, align 4
  %134 = tail call i32 @putchar(i32 %arg.i.i45)  nounwind 
  %135 = load i32, i32* %41, align 4
  %tmp0_v2.i58.i = add i32 %135, 1
  store i32 %tmp0_v2.i58.i, i32* %41, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %tmp0_v2.i58.i, %136
  br i1 %137, label %BB_804953B.i, label %BB_8049597.i

BB_8049597.i:                                     ; preds = %BB_804957E.i, %BB_8049532.i.BB_8049597.i_crit_edge
  %.pre-phi95 = phi i32* [ %.pre94, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %47, %BB_804957E.i ]
  %.pre-phi92 = phi i32* [ %.pre91, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %46, %BB_804957E.i ]
  store i32 10, i32* %.pre-phi92, align 4
  store i32 134518177, i32* %.pre-phi95, align 4
  %arg.i.i46 = load i32, i32* %.pre-phi92, align 4
  %138 = tail call i32 @putchar(i32 %arg.i.i46)  nounwind 
  %tmp2_v.i548.i = add i32 %tmp0_v.i3.i, -52
  %139 = inttoptr i32 %tmp2_v.i548.i to i32*
  store i32 0, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %BB_80495AD.i, label %.exit

BB_8049294.i:                                     ; preds = %BB_8049264.i, %0
  %.pn.pn.lcssa = phi { i32, i32 } [ %mrv.i32, %0 ], [ %.pn, %BB_8049264.i ]
  %r_ecx.4.lcssa = phi i32 [ %tmp2_v.i2.i, %0 ], [ %tmp4_v.i535.i, %BB_8049264.i ]
  %r_esp.6.in.le = extractvalue { i32, i32 } %.pn.pn.lcssa, 0
  %tmp2_v.i466.i = add i32 %tmp0_v.i3.i, -108
  %142 = inttoptr i32 %tmp2_v.i466.i to i32*
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %BB_804929D.i.lr.ph, label %BB_80492EC.i

BB_804929D.i.lr.ph:                               ; preds = %BB_8049294.i
  %tmp2_v.i23.i = add i32 %tmp0_v.i3.i, -104
  %145 = inttoptr i32 %tmp2_v.i23.i to i32*
  br label %BB_804929D.i

BB_80492A6.i:                                     ; preds = %BB_80492A6.i, %BB_804929D.i
  %storemerge1560 = phi i32 [ %tmp0_v19.i489.i, %BB_80492A6.i ], [ 0, %BB_804929D.i ]
  %146 = load i32, i32* %142, align 4
  %tmp0_v3.i472.i = mul i32 %146, 10
  %tmp4_v.i475.i = shl i32 %146, 2
  %147 = load i32, i32* %14, align 8
  %tmp0_v8.i478.i = add i32 %147, %tmp4_v.i475.i
  %148 = inttoptr i32 %tmp0_v8.i478.i to i32*
  %149 = load i32, i32* %148, align 4
  %tmp0_v12.i482.i = shl i32 %storemerge1560, 2
  %tmp0_v13.i483.i = add i32 %149, %tmp0_v12.i482.i
  %tmp0_v16.i486.i = add i32 %tmp0_v3.i472.i, %storemerge1560
  %150 = inttoptr i32 %tmp0_v13.i483.i to i32*
  store i32 %tmp0_v16.i486.i, i32* %150, align 4
  %151 = load i32, i32* %145, align 8
  %tmp0_v19.i489.i = add i32 %151, 1
  store i32 %tmp0_v19.i489.i, i32* %145, align 8
  %152 = load i32, i32* %9, align 16
  %153 = icmp slt i32 %tmp0_v19.i489.i, %152
  br i1 %153, label %BB_80492A6.i, label %BB_80492E0.i

BB_80494AA.i:                                     ; preds = %BB_80494AA.i, %BB_804946D.i
  %r_esp.9.in75 = phi i32 [ %r_esp.9.in, %BB_80494AA.i ], [ %r_esp.6.in.le, %BB_804946D.i ]
  %.pn5474 = phi i32 [ %158, %BB_80494AA.i ], [ %103, %BB_804946D.i ]
  %.pn3.pn73 = phi { i32, i32 } [ %.pn3, %BB_80494AA.i ], [ %.pn.pn.lcssa, %BB_804946D.i ]
  %storemerge972 = phi i32 [ %tmp0_v2.i345.i, %BB_80494AA.i ], [ %tmp0_v4.i.i, %BB_804946D.i ]
  %.pn3 = insertvalue { i32, i32 } %.pn3.pn73, i32 %.pn5474, 1
  %154 = load i32, i32* %9, align 16
  %tmp0_v1.i499.i = shl i32 %154, 2
  %tmp4_v.i502.i = shl i32 %storemerge972, 2
  %155 = load i32, i32* %14, align 8
  %tmp2_v6.i505.i = add i32 %155, %tmp4_v.i502.i
  %156 = inttoptr i32 %r_esp.9.in75 to i32*
  store i32 %tmp0_v1.i499.i, i32* %156, align 4
  %tmp2_v9.i509.i = add i32 %r_esp.9.in75, -4
  %157 = inttoptr i32 %tmp2_v9.i509.i to i32*
  store i32 134517961, i32* %157, align 4
  %arg.i.i47 = load i32, i32* %156, align 4
  %158 = tail call i32 @malloc(i32 %arg.i.i47)
  %159 = inttoptr i32 %tmp2_v6.i505.i to i32*
  store i32 %158, i32* %159, align 4
  %160 = load i32, i32* %106, align 8
  %tmp0_v2.i345.i = add i32 %160, 1
  store i32 %tmp0_v2.i345.i, i32* %106, align 8
  %r_esp.9.in = extractvalue { i32, i32 } %.pn3.pn73, 0
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %tmp0_v2.i345.i, %161
  br i1 %162, label %BB_80494AA.i, label %BB_80494DA.i.loopexit

BB_8049351.i:                                     ; preds = %BB_80492EC.i.BB_8049351.i_crit_edge, %BB_8049338.i
  %.pre-phi87 = phi i32* [ %.pre86, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %184, %BB_8049338.i ]
  %.pre-phi = phi i32* [ %.pre84, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %183, %BB_8049338.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517595, i32* %.pre-phi87, align 4
  %arg.i.i49 = load i32, i32* %.pre-phi, align 4
  %163 = tail call i32 @putchar(i32 %arg.i.i49)  nounwind 
  %164 = load i32, i32* %9, align 16
  %tmp0_v2.i191.i = add i32 %164, 3
  store i32 %tmp0_v2.i191.i, i32* %9, align 16
  %tmp2_v3.i192.i = add i32 %tmp0_v.i3.i, -92
  %165 = inttoptr i32 %tmp2_v3.i192.i to i32*
  store i32 0, i32* %165, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %BB_804936B.i.lr.ph, label %BB_80493B0.i

BB_804936B.i.lr.ph:                               ; preds = %BB_8049351.i
  %tmp2_v15.i.i = add i32 %r_esp.6.in.le, 4
  %168 = inttoptr i32 %tmp2_v15.i.i to i32*
  br label %BB_804936B.i

BB_8049264.i:                                     ; preds = %BB_8049264.i, %0
  %r_esp.6.in58 = phi i32 [ %r_esp.6.in, %BB_8049264.i ], [ %tmp2_v6.i156.i, %0 ]
  %.pn5357 = phi i32 [ %173, %BB_8049264.i ], [ %13, %0 ]
  %.pn.pn56 = phi { i32, i32 } [ %.pn, %BB_8049264.i ], [ %mrv.i32, %0 ]
  %storemerge1655 = phi i32 [ %tmp0_v2.i139.i, %BB_8049264.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %.pn.pn56, i32 %.pn5357, 1
  %169 = load i32, i32* %9, align 16
  %tmp0_v1.i532.i = shl i32 %169, 2
  %tmp4_v.i535.i = shl i32 %storemerge1655, 2
  %170 = load i32, i32* %14, align 8
  %tmp2_v6.i538.i = add i32 %170, %tmp4_v.i535.i
  %171 = inttoptr i32 %r_esp.6.in58 to i32*
  store i32 %tmp0_v1.i532.i, i32* %171, align 4
  %tmp2_v9.i542.i = add i32 %r_esp.6.in58, -4
  %172 = inttoptr i32 %tmp2_v9.i542.i to i32*
  store i32 134517379, i32* %172, align 4
  %arg.i.i50 = load i32, i32* %171, align 4
  %173 = tail call i32 @malloc(i32 %arg.i.i50)
  %174 = inttoptr i32 %tmp2_v6.i538.i to i32*
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* %15, align 16
  %tmp0_v2.i139.i = add i32 %175, 1
  store i32 %tmp0_v2.i139.i, i32* %15, align 16
  %r_esp.6.in = extractvalue { i32, i32 } %.pn.pn56, 0
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %tmp0_v2.i139.i, %176
  br i1 %177, label %BB_8049264.i, label %BB_8049294.i

BB_80492EC.i:                                     ; preds = %BB_80492E0.i, %BB_8049294.i
  %r_ecx.7.lcssa = phi i32 [ %r_ecx.4.lcssa, %BB_8049294.i ], [ %r_ecx.1.lcssa, %BB_80492E0.i ]
  %tmp2_v.i544.i = add i32 %tmp0_v.i3.i, -100
  %178 = inttoptr i32 %tmp2_v.i544.i to i32*
  store i32 0, i32* %178, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %BB_80492F5.i.lr.ph, label %BB_80492EC.i.BB_8049351.i_crit_edge

BB_80492EC.i.BB_8049351.i_crit_edge:              ; preds = %BB_80492EC.i
  %.pre84 = inttoptr i32 %r_esp.6.in.le to i32*
  %.pre85 = add i32 %r_esp.6.in.le, -4
  %.pre86 = inttoptr i32 %.pre85 to i32*
  br label %BB_8049351.i

BB_80492F5.i.lr.ph:                               ; preds = %BB_80492EC.i
  %tmp2_v.i66.i = add i32 %tmp0_v.i3.i, -96
  %181 = inttoptr i32 %tmp2_v.i66.i to i32*
  %tmp2_v11.i258.i = add i32 %r_esp.6.in.le, 4
  %182 = inttoptr i32 %tmp2_v11.i258.i to i32*
  %183 = inttoptr i32 %r_esp.6.in.le to i32*
  %tmp2_v14.i262.i = add i32 %r_esp.6.in.le, -4
  %184 = inttoptr i32 %tmp2_v14.i262.i to i32*
  br label %BB_80492F5.i

BB_80492E0.i:                                     ; preds = %BB_80492A6.i, %BB_804929D.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.762, %BB_804929D.i ], [ %tmp0_v3.i472.i, %BB_80492A6.i ]
  %185 = load i32, i32* %142, align 4
  %tmp0_v1.i552.i = add i32 %185, 1
  store i32 %tmp0_v1.i552.i, i32* %142, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %tmp0_v1.i552.i, %186
  br i1 %187, label %BB_804929D.i, label %BB_80492EC.i

.exit:                                            ; preds = %BB_8049597.i, %BB_80495AD.i
  %188 = load i32, i32* %14, align 8
  store i32 %188, i32* %.pre-phi92, align 4
  store i32 134518241, i32* %.pre-phi95, align 4
  %arg.i.i52 = load i32, i32* %.pre-phi92, align 4
  tail call void @free(i32 %arg.i.i52)
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

  tail call fastcc void @increase_size_dynamic_2d_array503 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack502, i32 0, i32 8092) to i32)) nounwind
