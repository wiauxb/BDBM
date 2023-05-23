; Mutation 392
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.389 = constant [6 x i8] c"%02d \00"
@str.390 = constant [6 x i8] c"%02d \00"
@str.391 = constant [6 x i8] c"%02d \00"

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

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @realloc(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @increase_size_dynamic_2d_array392(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i129.i = add i32 %arg_esp, 4
  %tmp0_v.i130.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i132.i = add i32 %tmp0_v.i130.i, -4
  %3 = inttoptr i32 %tmp2_v3.i132.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i133.i = add i32 %tmp0_v.i130.i, -8
  %4 = inttoptr i32 %tmp2_v4.i133.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i135.i = add i32 %tmp0_v.i130.i, -12
  %5 = inttoptr i32 %tmp2_v5.i135.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i137.i = add i32 %tmp0_v.i130.i, -16
  %6 = inttoptr i32 %tmp2_v6.i137.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i130.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v.i129.i, i32* %7, align 4
  %tmp2_v9.i139.i = add i32 %tmp0_v.i130.i, -116
  %8 = inttoptr i32 %tmp2_v9.i139.i to i32*
  store i32 134517298, i32* %8, align 4
  %tmp2_v.i201.i = add i32 %tmp0_v.i130.i, -48
  %9 = inttoptr i32 %tmp2_v.i201.i to i32*
  store i32 4, i32* %9, align 16
  %tmp2_v1.i202.i = add i32 %tmp0_v.i130.i, -44
  %10 = inttoptr i32 %tmp2_v1.i202.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v6.i208.i = add i32 %tmp0_v.i130.i, -128
  %11 = inttoptr i32 %tmp2_v6.i208.i to i32*
  store i32 16, i32* %11, align 16
  %tmp2_v7.i209.i = add i32 %tmp0_v.i130.i, -132
  %12 = inttoptr i32 %tmp2_v7.i209.i to i32*
  store i32 134517333, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @malloc(i32 %arg.i.i)
  %mrv.i42 = insertvalue { i32, i32 } undef, i32 %tmp2_v6.i208.i, 0
  %tmp2_v.i234.i = add i32 %tmp0_v.i130.i, -40
  %14 = inttoptr i32 %tmp2_v.i234.i to i32*
  store i32 %13, i32* %14, align 8
  %tmp2_v1.i236.i = add i32 %tmp0_v.i130.i, -112
  %15 = inttoptr i32 %tmp2_v1.i236.i to i32*
  store i32 0, i32* %15, align 16
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %BB_8049264.i, label %BB_8049294.i

BB_8049264.i:                                     ; preds = %BB_8049264.i, %0
  %r_esp.5.in68 = phi i32 [ %r_esp.5.in, %BB_8049264.i ], [ %tmp2_v6.i208.i, %0 ]
  %.pn6367 = phi i32 [ %22, %BB_8049264.i ], [ %13, %0 ]
  %.pn.pn66 = phi { i32, i32 } [ %.pn, %BB_8049264.i ], [ %mrv.i42, %0 ]
  %storemerge2665 = phi i32 [ %tmp0_v2.i66.i, %BB_8049264.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %.pn.pn66, i32 %.pn6367, 1
  %18 = load i32, i32* %9, align 16
  %tmp0_v1.i.i = shl i32 %18, 2
  %tmp4_v.i.i = shl i32 %storemerge2665, 2
  %19 = load i32, i32* %14, align 8
  %tmp2_v6.i.i = add i32 %19, %tmp4_v.i.i
  %20 = inttoptr i32 %r_esp.5.in68 to i32*
  store i32 %tmp0_v1.i.i, i32* %20, align 4
  %tmp2_v9.i.i = add i32 %r_esp.5.in68, -4
  %21 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517379, i32* %21, align 4
  %arg.i.i44 = load i32, i32* %20, align 4
  %22 = tail call i32 @malloc(i32 %arg.i.i44)
  %23 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %15, align 16
  %tmp0_v2.i66.i = add i32 %24, 1
  store i32 %tmp0_v2.i66.i, i32* %15, align 16
  %r_esp.5.in = extractvalue { i32, i32 } %.pn.pn66, 0
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %tmp0_v2.i66.i, %25
  br i1 %26, label %BB_8049264.i, label %BB_8049294.i

BB_8049408.i:                                     ; preds = %BB_80493FC.i, %BB_80493B0.i
  %r_ecx.3.lcssa = phi i32 [ %r_ecx.1.lcssa, %BB_80493B0.i ], [ %r_ecx.6.lcssa, %BB_80493FC.i ]
  %tmp2_v.i2.i = add i32 %tmp0_v.i130.i, -80
  %27 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 0, i32* %27, align 16
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %BB_8049411.i.lr.ph, label %BB_8049408.i.BB_804946D.i_crit_edge

BB_8049408.i.BB_804946D.i_crit_edge:              ; preds = %BB_8049408.i
  %.pre98 = add i32 %r_esp.5.in.le, 4
  %.pre99 = inttoptr i32 %.pre98 to i32*
  br label %BB_804946D.i

BB_8049411.i.lr.ph:                               ; preds = %BB_8049408.i
  %tmp2_v.i362.i = add i32 %tmp0_v.i130.i, -76
  %30 = inttoptr i32 %tmp2_v.i362.i to i32*
  %tmp2_v11.i538.i = add i32 %r_esp.5.in.le, 4
  %31 = inttoptr i32 %tmp2_v11.i538.i to i32*
  br label %BB_8049411.i

BB_80494EC.i:                                     ; preds = %BB_80494E3.i, %BB_80494EC.i
  %storemerge1888 = phi i32 [ %tmp0_v19.i.i, %BB_80494EC.i ], [ 0, %BB_80494E3.i ]
  %32 = load i32, i32* %110, align 4
  %tmp0_v3.i10.i = mul i32 %32, 10
  %tmp4_v.i13.i = shl i32 %32, 2
  %33 = load i32, i32* %14, align 8
  %tmp0_v8.i.i = add i32 %33, %tmp4_v.i13.i
  %34 = inttoptr i32 %tmp0_v8.i.i to i32*
  %35 = load i32, i32* %34, align 4
  %tmp0_v12.i.i = shl i32 %storemerge1888, 2
  %tmp0_v13.i.i = add i32 %35, %tmp0_v12.i.i
  %tmp0_v16.i.i = add i32 %tmp0_v3.i10.i, %storemerge1888
  %36 = inttoptr i32 %tmp0_v13.i.i to i32*
  store i32 %tmp0_v16.i.i, i32* %36, align 4
  %37 = load i32, i32* %113, align 16
  %tmp0_v19.i.i = add i32 %37, 1
  store i32 %tmp0_v19.i.i, i32* %113, align 16
  %38 = load i32, i32* %9, align 16
  %39 = icmp slt i32 %tmp0_v19.i.i, %38
  br i1 %39, label %BB_80494EC.i, label %BB_8049526.i

BB_80493B0.i:                                     ; preds = %BB_8049351.i, %BB_804936B.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.7.lcssa, %BB_8049351.i ], [ %103, %BB_804936B.i ]
  %tmp2_v.i20.i = add i32 %tmp0_v.i130.i, -88
  %40 = inttoptr i32 %tmp2_v.i20.i to i32*
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %BB_80493B9.i.lr.ph, label %BB_8049408.i

BB_80493B9.i.lr.ph:                               ; preds = %BB_80493B0.i
  %tmp2_v.i178.i = add i32 %tmp0_v.i130.i, -84
  %43 = inttoptr i32 %tmp2_v.i178.i to i32*
  br label %BB_80493B9.i

BB_80492A6.i:                                     ; preds = %BB_804929D.i, %BB_80492A6.i
  %storemerge2570 = phi i32 [ %tmp0_v19.i43.i, %BB_80492A6.i ], [ 0, %BB_804929D.i ]
  %44 = load i32, i32* %170, align 4
  %tmp0_v3.i26.i = mul i32 %44, 10
  %tmp4_v.i29.i = shl i32 %44, 2
  %45 = load i32, i32* %14, align 8
  %tmp0_v8.i32.i = add i32 %45, %tmp4_v.i29.i
  %46 = inttoptr i32 %tmp0_v8.i32.i to i32*
  %47 = load i32, i32* %46, align 4
  %tmp0_v12.i36.i = shl i32 %storemerge2570, 2
  %tmp0_v13.i37.i = add i32 %47, %tmp0_v12.i36.i
  %tmp0_v16.i40.i = add i32 %tmp0_v3.i26.i, %storemerge2570
  %48 = inttoptr i32 %tmp0_v13.i37.i to i32*
  store i32 %tmp0_v16.i40.i, i32* %48, align 4
  %49 = load i32, i32* %173, align 8
  %tmp0_v19.i43.i = add i32 %49, 1
  store i32 %tmp0_v19.i43.i, i32* %173, align 8
  %50 = load i32, i32* %9, align 16
  %51 = icmp slt i32 %tmp0_v19.i43.i, %50
  br i1 %51, label %BB_80492A6.i, label %BB_80492E0.i

BB_80492EC.i:                                     ; preds = %BB_8049294.i, %BB_80492E0.i
  %r_ecx.7.lcssa = phi i32 [ %r_ecx.4.lcssa, %BB_8049294.i ], [ %r_ecx.0.lcssa, %BB_80492E0.i ]
  %tmp2_v.i58.i = add i32 %tmp0_v.i130.i, -100
  %52 = inttoptr i32 %tmp2_v.i58.i to i32*
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %BB_80492F5.i.lr.ph, label %BB_80492EC.i.BB_8049351.i_crit_edge

BB_80492EC.i.BB_8049351.i_crit_edge:              ; preds = %BB_80492EC.i
  %.pre94 = inttoptr i32 %r_esp.5.in.le to i32*
  %.pre95 = add i32 %r_esp.5.in.le, -4
  %.pre96 = inttoptr i32 %.pre95 to i32*
  br label %BB_8049351.i

BB_80492F5.i.lr.ph:                               ; preds = %BB_80492EC.i
  %tmp2_v.i503.i = add i32 %tmp0_v.i130.i, -96
  %55 = inttoptr i32 %tmp2_v.i503.i to i32*
  %tmp2_v11.i474.i = add i32 %r_esp.5.in.le, 4
  %56 = inttoptr i32 %tmp2_v11.i474.i to i32*
  %57 = inttoptr i32 %r_esp.5.in.le to i32*
  %tmp2_v14.i478.i = add i32 %r_esp.5.in.le, -4
  %58 = inttoptr i32 %tmp2_v14.i478.i to i32*
  br label %BB_80492F5.i

BB_8049532.i:                                     ; preds = %BB_80494DA.i, %BB_8049526.i
  %r_ecx.5.lcssa = phi i32 [ %r_ecx.2.lcssa, %BB_80494DA.i ], [ %r_ecx.8.lcssa, %BB_8049526.i ]
  %tmp2_v.i60.i = add i32 %tmp0_v.i130.i, -60
  %59 = inttoptr i32 %tmp2_v.i60.i to i32*
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %BB_804953B.i.lr.ph, label %BB_8049532.i.BB_8049597.i_crit_edge

BB_8049532.i.BB_8049597.i_crit_edge:              ; preds = %BB_8049532.i
  %.pre101 = inttoptr i32 %r_esp.3.in.le.pre-phi to i32*
  %.pre103 = add i32 %r_esp.3.in.le.pre-phi, -4
  %.pre104 = inttoptr i32 %.pre103 to i32*
  br label %BB_8049597.i

BB_804953B.i.lr.ph:                               ; preds = %BB_8049532.i
  %tmp2_v.i544.i = add i32 %tmp0_v.i130.i, -56
  %62 = inttoptr i32 %tmp2_v.i544.i to i32*
  %tmp2_v11.i391.i = add i32 %r_esp.3.in.le.pre-phi, 4
  %63 = inttoptr i32 %tmp2_v11.i391.i to i32*
  %64 = inttoptr i32 %r_esp.3.in.le.pre-phi to i32*
  %tmp2_v14.i393.i = add i32 %r_esp.3.in.le.pre-phi, -4
  %65 = inttoptr i32 %tmp2_v14.i393.i to i32*
  br label %BB_804953B.i

BB_80493FC.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %r_ecx.6.lcssa = phi i32 [ %r_ecx.379, %BB_80493B9.i ], [ %tmp0_v3.i431.i, %BB_80493C2.i ]
  %66 = load i32, i32* %40, align 8
  %tmp0_v1.i80.i = add i32 %66, 1
  store i32 %tmp0_v1.i80.i, i32* %40, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %tmp0_v1.i80.i, %67
  br i1 %68, label %BB_80493B9.i, label %BB_8049408.i

BB_80492E0.i:                                     ; preds = %BB_804929D.i, %BB_80492A6.i
  %r_ecx.0.lcssa = phi i32 [ %r_ecx.772, %BB_804929D.i ], [ %tmp0_v3.i26.i, %BB_80492A6.i ]
  %69 = load i32, i32* %170, align 4
  %tmp0_v1.i90.i = add i32 %69, 1
  store i32 %tmp0_v1.i90.i, i32* %170, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %tmp0_v1.i90.i, %70
  br i1 %71, label %BB_804929D.i, label %BB_80492EC.i

BB_804929D.i:                                     ; preds = %BB_804929D.i.lr.ph, %BB_80492E0.i
  %r_ecx.772 = phi i32 [ %r_ecx.4.lcssa, %BB_804929D.i.lr.ph ], [ %r_ecx.0.lcssa, %BB_80492E0.i ]
  store i32 0, i32* %173, align 8
  %72 = load i32, i32* %9, align 16
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %BB_80492A6.i, label %BB_80492E0.i

BB_80494AA.i:                                     ; preds = %BB_804946D.i, %BB_80494AA.i
  %r_esp.3.in85 = phi i32 [ %r_esp.3.in, %BB_80494AA.i ], [ %r_esp.5.in.le, %BB_804946D.i ]
  %.pn6484 = phi i32 [ %78, %BB_80494AA.i ], [ %140, %BB_804946D.i ]
  %.pn13.pn83 = phi { i32, i32 } [ %.pn13, %BB_80494AA.i ], [ %.pn.pn.lcssa, %BB_804946D.i ]
  %storemerge1982 = phi i32 [ %tmp0_v2.i217.i, %BB_80494AA.i ], [ %tmp0_v4.i246.i, %BB_804946D.i ]
  %.pn13 = insertvalue { i32, i32 } %.pn13.pn83, i32 %.pn6484, 1
  %74 = load i32, i32* %9, align 16
  %tmp0_v1.i117.i = shl i32 %74, 2
  %tmp4_v.i120.i = shl i32 %storemerge1982, 2
  %75 = load i32, i32* %14, align 8
  %tmp2_v6.i123.i = add i32 %75, %tmp4_v.i120.i
  %76 = inttoptr i32 %r_esp.3.in85 to i32*
  store i32 %tmp0_v1.i117.i, i32* %76, align 4
  %tmp2_v9.i127.i = add i32 %r_esp.3.in85, -4
  %77 = inttoptr i32 %tmp2_v9.i127.i to i32*
  store i32 134517961, i32* %77, align 4
  %arg.i.i46 = load i32, i32* %76, align 4
  %78 = tail call i32 @malloc(i32 %arg.i.i46)
  %79 = inttoptr i32 %tmp2_v6.i123.i to i32*
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %143, align 8
  %tmp0_v2.i217.i = add i32 %80, 1
  store i32 %tmp0_v2.i217.i, i32* %143, align 8
  %r_esp.3.in = extractvalue { i32, i32 } %.pn13.pn83, 0
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %tmp0_v2.i217.i, %81
  br i1 %82, label %BB_80494AA.i, label %BB_80494DA.i.loopexit

BB_8049526.i:                                     ; preds = %BB_80494E3.i, %BB_80494EC.i
  %r_ecx.8.lcssa = phi i32 [ %r_ecx.590, %BB_80494E3.i ], [ %tmp0_v3.i10.i, %BB_80494EC.i ]
  %83 = load i32, i32* %110, align 4
  %tmp0_v1.i143.i = add i32 %83, 1
  store i32 %tmp0_v1.i143.i, i32* %110, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %tmp0_v1.i143.i, %84
  br i1 %85, label %BB_80494E3.i, label %BB_8049532.i

BB_80495AD.i:                                     ; preds = %BB_8049597.i, %BB_80495AD.i
  %storemerge1693 = phi i32 [ %tmp0_v2.i191.i, %BB_80495AD.i ], [ 0, %BB_8049597.i ]
  %tmp4_v.i153.i = shl i32 %storemerge1693, 2
  %86 = load i32, i32* %14, align 8
  %tmp0_v3.i156.i = add i32 %86, %tmp4_v.i153.i
  %87 = inttoptr i32 %tmp0_v3.i156.i to i32*
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %.pre-phi102, align 4
  store i32 134518215, i32* %.pre-phi105, align 4
  %arg.i.i48 = load i32, i32* %.pre-phi102, align 4
  tail call void @free(i32 %arg.i.i48)
  %89 = load i32, i32* %155, align 4
  %tmp0_v2.i191.i = add i32 %89, 1
  store i32 %tmp0_v2.i191.i, i32* %155, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %tmp0_v2.i191.i, %90
  br i1 %91, label %BB_80495AD.i, label %.exit

BB_8049338.i:                                     ; preds = %BB_80492F5.i, %BB_80492FE.i
  store i32 10, i32* %57, align 4
  store i32 134517570, i32* %58, align 4
  %arg.i.i49 = load i32, i32* %57, align 4
  %92 = tail call i32 @putchar(i32 %arg.i.i49)  nounwind 
  %93 = load i32, i32* %52, align 4
  %tmp0_v2.i411.i = add i32 %93, 1
  store i32 %tmp0_v2.i411.i, i32* %52, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %tmp0_v2.i411.i, %94
  br i1 %95, label %BB_80492F5.i, label %BB_8049351.i

BB_8049454.i:                                     ; preds = %BB_804941A.i, %BB_8049411.i
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517854, i32* %.pre-phi97, align 4
  %arg.i.i50 = load i32, i32* %.pre-phi, align 4
  %96 = tail call i32 @putchar(i32 %arg.i.i50)  nounwind 
  %97 = load i32, i32* %27, align 16
  %tmp0_v2.i509.i = add i32 %97, 1
  store i32 %tmp0_v2.i509.i, i32* %27, align 16
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %tmp0_v2.i509.i, %98
  br i1 %99, label %BB_8049411.i, label %BB_804946D.i

BB_80493B9.i:                                     ; preds = %BB_80493FC.i, %BB_80493B9.i.lr.ph
  %r_ecx.379 = phi i32 [ %r_ecx.1.lcssa, %BB_80493B9.i.lr.ph ], [ %r_ecx.6.lcssa, %BB_80493FC.i ]
  store i32 0, i32* %43, align 4
  %100 = load i32, i32* %9, align 16
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %BB_80493C2.i, label %BB_80493FC.i

BB_804936B.i:                                     ; preds = %BB_804936B.i.lr.ph, %BB_804936B.i
  %storemerge1275 = phi i32 [ 0, %BB_804936B.i.lr.ph ], [ %tmp0_v2.i106.i, %BB_804936B.i ]
  %102 = load i32, i32* %9, align 16
  %tmp4_v.i301.i = shl i32 %102, 2
  %tmp4_v3.i304.i = shl i32 %storemerge1275, 2
  %103 = load i32, i32* %14, align 8
  %tmp0_v6.i307.i = add i32 %103, %tmp4_v3.i304.i
  %104 = inttoptr i32 %tmp0_v6.i307.i to i32*
  %105 = load i32, i32* %104, align 4
  store i32 %tmp4_v.i301.i, i32* %123, align 4
  store i32 %105, i32* %.pre-phi, align 4
  store i32 134517663, i32* %.pre-phi97, align 4
  %arg.i.i51 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i = load i32, i32* %123, align 4
  %106 = tail call i32 @realloc(i32 %arg.i.i51, i32 %arg2.i.i)
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %120, align 4
  %tmp0_v2.i106.i = add i32 %107, 1
  store i32 %tmp0_v2.i106.i, i32* %120, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %tmp0_v2.i106.i, %108
  br i1 %109, label %BB_804936B.i, label %BB_80493B0.i

BB_80494DA.i.loopexit:                            ; preds = %BB_80494AA.i
  %.pre = extractvalue { i32, i32 } %.pn13.pn83, 0
  br label %BB_80494DA.i

BB_80494DA.i:                                     ; preds = %BB_804946D.i, %BB_80494DA.i.loopexit
  %r_esp.3.in.le.pre-phi = phi i32 [ %.pre, %BB_80494DA.i.loopexit ], [ %r_esp.5.in.le, %BB_804946D.i ]
  %r_ecx.2.lcssa = phi i32 [ %tmp4_v.i120.i, %BB_80494DA.i.loopexit ], [ %r_ecx.3.lcssa, %BB_804946D.i ]
  %tmp2_v.i316.i = add i32 %tmp0_v.i130.i, -68
  %110 = inttoptr i32 %tmp2_v.i316.i to i32*
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %BB_80494E3.i.lr.ph, label %BB_8049532.i

BB_80494E3.i.lr.ph:                               ; preds = %BB_80494DA.i
  %tmp2_v.i480.i = add i32 %tmp0_v.i130.i, -64
  %113 = inttoptr i32 %tmp2_v.i480.i to i32*
  br label %BB_80494E3.i

BB_804957E.i:                                     ; preds = %BB_804953B.i, %BB_8049544.i
  store i32 10, i32* %64, align 4
  store i32 134518152, i32* %65, align 4
  %arg.i.i54 = load i32, i32* %64, align 4
  %114 = tail call i32 @putchar(i32 %arg.i.i54)  nounwind 
  %115 = load i32, i32* %59, align 4
  %tmp0_v2.i284.i = add i32 %115, 1
  store i32 %tmp0_v2.i284.i, i32* %59, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %tmp0_v2.i284.i, %116
  br i1 %117, label %BB_804953B.i, label %BB_8049597.i

BB_8049351.i:                                     ; preds = %BB_8049338.i, %BB_80492EC.i.BB_8049351.i_crit_edge
  %.pre-phi97 = phi i32* [ %.pre96, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %58, %BB_8049338.i ]
  %.pre-phi = phi i32* [ %.pre94, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %57, %BB_8049338.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517595, i32* %.pre-phi97, align 4
  %arg.i.i55 = load i32, i32* %.pre-phi, align 4
  %118 = tail call i32 @putchar(i32 %arg.i.i55)  nounwind 
  %119 = load i32, i32* %9, align 16
  %tmp0_v2.i270.i = add i32 %119, 3
  store i32 %tmp0_v2.i270.i, i32* %9, align 16
  %tmp2_v3.i271.i = add i32 %tmp0_v.i130.i, -92
  %120 = inttoptr i32 %tmp2_v3.i271.i to i32*
  store i32 0, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %BB_804936B.i.lr.ph, label %BB_80493B0.i

BB_804936B.i.lr.ph:                               ; preds = %BB_8049351.i
  %tmp2_v15.i.i = add i32 %r_esp.5.in.le, 4
  %123 = inttoptr i32 %tmp2_v15.i.i to i32*
  br label %BB_804936B.i

BB_8049411.i:                                     ; preds = %BB_8049454.i, %BB_8049411.i.lr.ph
  store i32 0, i32* %30, align 4
  %124 = load i32, i32* %9, align 16
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %BB_804941A.i, label %BB_8049454.i

BB_8049544.i:                                     ; preds = %BB_804953B.i, %BB_8049544.i
  %storemerge1792 = phi i32 [ %tmp0_v2.i399.i, %BB_8049544.i ], [ 0, %BB_804953B.i ]
  %126 = load i32, i32* %59, align 4
  %tmp4_v.i380.i = shl i32 %126, 2
  %127 = load i32, i32* %14, align 8
  %tmp0_v3.i383.i = add i32 %127, %tmp4_v.i380.i
  %128 = inttoptr i32 %tmp0_v3.i383.i to i32*
  %129 = load i32, i32* %128, align 4
  %tmp0_v7.i387.i = shl i32 %storemerge1792, 2
  %tmp0_v8.i388.i = add i32 %129, %tmp0_v7.i387.i
  %130 = inttoptr i32 %tmp0_v8.i388.i to i32*
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %63, align 4
  %spi391 = ptrtoint[6 x i8]* @str.391 to i32
  store i32 %spi391, i32* %64, align 4
  store i32 134518127, i32* %65, align 4
  %132 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.5.lcssa, i32 inreg noundef %tmp0_v7.i387.i, i32 noundef %r_esp.3.in.le.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %133 = load i32, i32* %62, align 8
  %tmp0_v2.i399.i = add i32 %133, 1
  store i32 %tmp0_v2.i399.i, i32* %62, align 8
  %134 = load i32, i32* %9, align 16
  %135 = icmp slt i32 %tmp0_v2.i399.i, %134
  br i1 %135, label %BB_8049544.i, label %BB_804957E.i

BB_804946D.i:                                     ; preds = %BB_8049454.i, %BB_8049408.i.BB_804946D.i_crit_edge
  %.pre-phi100 = phi i32* [ %.pre99, %BB_8049408.i.BB_804946D.i_crit_edge ], [ %31, %BB_8049454.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517879, i32* %.pre-phi97, align 4
  %arg.i.i56 = load i32, i32* %.pre-phi, align 4
  %136 = tail call i32 @putchar(i32 %arg.i.i56)  nounwind 
  %tmp2_v.i336.i = add i32 %tmp0_v.i130.i, -36
  %137 = inttoptr i32 %tmp2_v.i336.i to i32*
  store i32 3, i32* %137, align 4
  %138 = load i32, i32* %10, align 4
  %tmp0_v5.i341.i = add i32 %138, 3
  store i32 %tmp0_v5.i341.i, i32* %10, align 4
  %tmp0_v8.i344.i = shl i32 %tmp0_v5.i341.i, 2
  store i32 %tmp0_v8.i344.i, i32* %.pre-phi100, align 4
  %139 = load i32, i32* %14, align 8
  store i32 %139, i32* %.pre-phi, align 4
  store i32 134517913, i32* %.pre-phi97, align 4
  %arg.i.i57 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i58 = load i32, i32* %.pre-phi100, align 4
  %140 = tail call i32 @realloc(i32 %arg.i.i57, i32 %arg2.i.i58)
  store i32 %140, i32* %14, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %137, align 4
  %tmp0_v4.i246.i = sub i32 %141, %142
  %tmp2_v5.i247.i = add i32 %tmp0_v.i130.i, -72
  %143 = inttoptr i32 %tmp2_v5.i247.i to i32*
  store i32 %tmp0_v4.i246.i, i32* %143, align 8
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %tmp0_v4.i246.i, %144
  br i1 %145, label %BB_80494AA.i, label %BB_80494DA.i

BB_80493C2.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %storemerge2277 = phi i32 [ %tmp0_v19.i448.i, %BB_80493C2.i ], [ 0, %BB_80493B9.i ]
  %146 = load i32, i32* %40, align 8
  %tmp0_v3.i431.i = mul i32 %146, 10
  %tmp4_v.i434.i = shl i32 %146, 2
  %147 = load i32, i32* %14, align 8
  %tmp0_v8.i437.i = add i32 %147, %tmp4_v.i434.i
  %148 = inttoptr i32 %tmp0_v8.i437.i to i32*
  %149 = load i32, i32* %148, align 4
  %tmp0_v12.i441.i = shl i32 %storemerge2277, 2
  %tmp0_v13.i442.i = add i32 %149, %tmp0_v12.i441.i
  %tmp0_v16.i445.i = add i32 %tmp0_v3.i431.i, %storemerge2277
  %150 = inttoptr i32 %tmp0_v13.i442.i to i32*
  store i32 %tmp0_v16.i445.i, i32* %150, align 4
  %151 = load i32, i32* %43, align 4
  %tmp0_v19.i448.i = add i32 %151, 1
  store i32 %tmp0_v19.i448.i, i32* %43, align 4
  %152 = load i32, i32* %9, align 16
  %153 = icmp slt i32 %tmp0_v19.i448.i, %152
  br i1 %153, label %BB_80493C2.i, label %BB_80493FC.i

BB_8049597.i:                                     ; preds = %BB_804957E.i, %BB_8049532.i.BB_8049597.i_crit_edge
  %.pre-phi105 = phi i32* [ %.pre104, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %65, %BB_804957E.i ]
  %.pre-phi102 = phi i32* [ %.pre101, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %64, %BB_804957E.i ]
  store i32 10, i32* %.pre-phi102, align 4
  store i32 134518177, i32* %.pre-phi105, align 4
  %arg.i.i61 = load i32, i32* %.pre-phi102, align 4
  %154 = tail call i32 @putchar(i32 %arg.i.i61)  nounwind 
  %tmp2_v.i421.i = add i32 %tmp0_v.i130.i, -52
  %155 = inttoptr i32 %tmp2_v.i421.i to i32*
  store i32 0, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %BB_80495AD.i, label %.exit

BB_80492FE.i:                                     ; preds = %BB_80492F5.i, %BB_80492FE.i
  %storemerge2474 = phi i32 [ %tmp0_v2.i322.i, %BB_80492FE.i ], [ 0, %BB_80492F5.i ]
  %158 = load i32, i32* %52, align 4
  %tmp4_v.i462.i = shl i32 %158, 2
  %159 = load i32, i32* %14, align 8
  %tmp0_v3.i465.i = add i32 %159, %tmp4_v.i462.i
  %160 = inttoptr i32 %tmp0_v3.i465.i to i32*
  %161 = load i32, i32* %160, align 4
  %tmp0_v7.i469.i = shl i32 %storemerge2474, 2
  %tmp0_v8.i470.i = add i32 %161, %tmp0_v7.i469.i
  %162 = inttoptr i32 %tmp0_v8.i470.i to i32*
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %56, align 4
  %spi390 = ptrtoint[6 x i8]* @str.390 to i32
  store i32 %spi390, i32* %57, align 4
  store i32 134517545, i32* %58, align 4
  %164 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.7.lcssa, i32 inreg noundef %tmp0_v7.i469.i, i32 noundef %r_esp.5.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %165 = load i32, i32* %55, align 16
  %tmp0_v2.i322.i = add i32 %165, 1
  store i32 %tmp0_v2.i322.i, i32* %55, align 16
  %166 = load i32, i32* %9, align 16
  %167 = icmp slt i32 %tmp0_v2.i322.i, %166
  br i1 %167, label %BB_80492FE.i, label %BB_8049338.i

BB_80494E3.i:                                     ; preds = %BB_80494E3.i.lr.ph, %BB_8049526.i
  %r_ecx.590 = phi i32 [ %r_ecx.2.lcssa, %BB_80494E3.i.lr.ph ], [ %r_ecx.8.lcssa, %BB_8049526.i ]
  store i32 0, i32* %113, align 16
  %168 = load i32, i32* %9, align 16
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %BB_80494EC.i, label %BB_8049526.i

BB_8049294.i:                                     ; preds = %BB_8049264.i, %0
  %.pn.pn.lcssa = phi { i32, i32 } [ %mrv.i42, %0 ], [ %.pn, %BB_8049264.i ]
  %r_ecx.4.lcssa = phi i32 [ %tmp2_v.i129.i, %0 ], [ %tmp4_v.i.i, %BB_8049264.i ]
  %r_esp.5.in.le = extractvalue { i32, i32 } %.pn.pn.lcssa, 0
  %tmp2_v.i501.i = add i32 %tmp0_v.i130.i, -108
  %170 = inttoptr i32 %tmp2_v.i501.i to i32*
  store i32 0, i32* %170, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %BB_804929D.i.lr.ph, label %BB_80492EC.i

BB_804929D.i.lr.ph:                               ; preds = %BB_8049294.i
  %tmp2_v.i98.i = add i32 %tmp0_v.i130.i, -104
  %173 = inttoptr i32 %tmp2_v.i98.i to i32*
  br label %BB_804929D.i

BB_80492F5.i:                                     ; preds = %BB_8049338.i, %BB_80492F5.i.lr.ph
  store i32 0, i32* %55, align 16
  %174 = load i32, i32* %9, align 16
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %BB_80492FE.i, label %BB_8049338.i

BB_804941A.i:                                     ; preds = %BB_804941A.i, %BB_8049411.i
  %storemerge2081 = phi i32 [ %tmp0_v2.i493.i, %BB_804941A.i ], [ 0, %BB_8049411.i ]
  %176 = load i32, i32* %27, align 16
  %tmp4_v.i526.i = shl i32 %176, 2
  %177 = load i32, i32* %14, align 8
  %tmp0_v3.i529.i = add i32 %177, %tmp4_v.i526.i
  %178 = inttoptr i32 %tmp0_v3.i529.i to i32*
  %179 = load i32, i32* %178, align 4
  %tmp0_v7.i533.i = shl i32 %storemerge2081, 2
  %tmp0_v8.i534.i = add i32 %179, %tmp0_v7.i533.i
  %180 = inttoptr i32 %tmp0_v8.i534.i to i32*
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %31, align 4
  %spi389 = ptrtoint[6 x i8]* @str.389 to i32
  store i32 %spi389, i32* %.pre-phi, align 4
  store i32 134517829, i32* %.pre-phi97, align 4
  %182 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.3.lcssa, i32 inreg noundef %tmp0_v7.i533.i, i32 noundef %r_esp.5.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %183 = load i32, i32* %30, align 4
  %tmp0_v2.i493.i = add i32 %183, 1
  store i32 %tmp0_v2.i493.i, i32* %30, align 4
  %184 = load i32, i32* %9, align 16
  %185 = icmp slt i32 %tmp0_v2.i493.i, %184
  br i1 %185, label %BB_804941A.i, label %BB_8049454.i

BB_804953B.i:                                     ; preds = %BB_804957E.i, %BB_804953B.i.lr.ph
  store i32 0, i32* %62, align 8
  %186 = load i32, i32* %9, align 16
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %BB_8049544.i, label %BB_804957E.i

.exit:                                            ; preds = %BB_8049597.i, %BB_80495AD.i
  %188 = load i32, i32* %14, align 8
  store i32 %188, i32* %.pre-phi102, align 4
  store i32 134518241, i32* %.pre-phi105, align 4
  %arg.i.i62 = load i32, i32* %.pre-phi102, align 4
  tail call void @free(i32 %arg.i.i62)
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

  tail call fastcc void @increase_size_dynamic_2d_array392(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
