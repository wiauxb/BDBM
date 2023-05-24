; Mutation 661
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack660 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @largest_word661(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i3.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i3.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i16.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i20.i = add i32 %tmp0_v.i2.i, -20
  %9 = inttoptr i32 %tmp2_v2.i20.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i2.i, -49
  %10 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i2.i, -45
  %11 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 745761056, i32* %11, align 4
  %tmp2_v5.i23.i = add i32 %tmp0_v.i2.i, -41
  %12 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 1701344288, i32* %12, align 4
  %tmp2_v6.i24.i = add i32 %tmp0_v.i2.i, -37
  %13 = inttoptr i32 %tmp2_v6.i24.i to i32*
  store i32 544433522, i32* %13, align 4
  %tmp2_v7.i25.i = add i32 %tmp0_v.i2.i, -33
  %14 = inttoptr i32 %tmp2_v7.i25.i to i32*
  store i32 544825719, i32* %14, align 4
  %tmp2_v8.i26.i = add i32 %tmp0_v.i2.i, -29
  %15 = inttoptr i32 %tmp2_v8.i26.i to i32*
  store i32 1767991105, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -25
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 774778478, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i2.i, -21
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 1
  %tmp2_v13.i.i = add i32 %tmp0_v.i2.i, -80
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i21.i, i32* %18, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i2.i, -84
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517347, i32* %19, align 4
  %tmp2_v.i47.i.i = add i32 %tmp0_v.i2.i, -88
  %20 = inttoptr i32 %tmp2_v.i47.i.i to i32*
  store i32 %tmp2_v4.i3.i, i32* %20, align 8
  %tmp2_v1.i49.i.i = add i32 %tmp0_v.i2.i, -92
  %21 = inttoptr i32 %tmp2_v1.i49.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i52.i.i = add i32 %tmp0_v.i2.i, -148
  %22 = inttoptr i32 %tmp2_v2.i52.i.i to i32*
  store i32 134517422, i32* %22, align 4
  %23 = load i32, i32* %18, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i2.i, -132
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %25 = inttoptr i32 %arg_esp to i32*
  %26 = load i32, i32* %25, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i2.i, -100
  %27 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %24, align 4
  %tmp2_v9.i15.i.i = add i32 %tmp0_v.i2.i, -160
  %29 = inttoptr i32 %tmp2_v9.i15.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v10.i16.i.i = add i32 %tmp0_v.i2.i, -164
  %30 = inttoptr i32 %tmp2_v10.i16.i.i to i32*
  store i32 134517456, i32* %30, align 4
  %arg.i.i.i = load i32, i32* %29, align 16
  %31 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i105.i.i = add i32 %tmp0_v.i2.i, -112
  %32 = inttoptr i32 %tmp2_v.i105.i.i to i32*
  store i32 %31, i32* %32, align 16
  %tmp2_v1.i107.i.i = add i32 %tmp0_v.i2.i, -124
  %33 = inttoptr i32 %tmp2_v1.i107.i.i to i32*
  store i32 0, i32* %33, align 4
  %tmp2_v2.i108.i.i = add i32 %tmp0_v.i2.i, -120
  %34 = inttoptr i32 %tmp2_v2.i108.i.i to i32*
  store i32 -1, i32* %34, align 8
  %tmp2_v3.i109.i.i = add i32 %tmp0_v.i2.i, -107
  %35 = inttoptr i32 %tmp2_v3.i109.i.i to i32*
  store i32 992751136, i32* %35, align 4
  %tmp2_v4.i110.i.i = add i32 %tmp0_v.i2.i, -103
  %36 = inttoptr i32 %tmp2_v4.i110.i.i to i16*
  store i16 2314, i16* %36, align 2
  %tmp2_v5.i111.i.i = add i32 %tmp0_v.i2.i, -101
  %37 = inttoptr i32 %tmp2_v5.i111.i.i to i8*
  store i8 0, i8* %37, align 1
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i2.i, -116
  %38 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %32, align 16
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %BB_8049331.i.preheader.lr.ph.i, label %Func_largest_word.exit

BB_8049331.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i2.i, -156
  %41 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  br label %BB_8049331.i.preheader.i

BB_804934C.i.i:                                   ; preds = %BB_8049370.i.i, %BB_8049374.i.preheader.i
  %42 = phi i32 [ %tmp0_v1.i96.i.i, %BB_8049370.i.i ], [ %64, %BB_8049374.i.preheader.i ]
  %43 = load i32, i32* %24, align 4
  %tmp0_v3.i24.i.i = add i32 %43, %42
  %44 = inttoptr i32 %tmp0_v3.i24.i.i to i8*
  %45 = load i8, i8* %44, align 1
  %tmp0_v5.i26.i.i = sext i8 %45 to i32
  store i32 %tmp0_v5.i26.i.i, i32* %41, align 4
  store i32 %tmp2_v3.i109.i.i, i32* %29, align 16
  store i32 134517607, i32* %30, align 4
  %arg.i.i6.i = load i32, i32* %29, align 16
  %arg2.i.i.i = load i32, i32* %41, align 4
  %46 = tail call i32 @strchr(i32 %arg.i.i6.i, i32 %arg2.i.i.i)
  %.not.i73.i.i = icmp eq i32 %46, 0
  %.pre.pre.i = load i32, i32* %38, align 4
  br i1 %.not.i73.i.i, label %BB_804934C.i.BB_804937C.i.loopexit.loopexit_crit_edge.i, label %BB_8049370.i.i

BB_804934C.i.BB_804937C.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_804934C.i.i
  %.pre23.pre.i = load i32, i32* %32, align 16
  br label %BB_804937C.i.loopexit.i

BB_8049329.i.i:                                   ; preds = %BB_8049331.i.preheader.i, %BB_8049329.i.i
  %47 = load i32, i32* %38, align 4
  %tmp0_v1.i36.i.i = add i32 %47, 1
  store i32 %tmp0_v1.i36.i.i, i32* %38, align 4
  %48 = load i32, i32* %33, align 4
  %tmp0_v4.i39.i.i = add i32 %48, 1
  store i32 %tmp0_v4.i39.i.i, i32* %33, align 4
  %49 = load i32, i32* %38, align 4
  %50 = load i32, i32* %24, align 4
  %tmp0_v3.i.i.i = add i32 %50, %49
  %51 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %52 = load i8, i8* %51, align 1
  %tmp0_v5.i.i.i = sext i8 %52 to i32
  store i32 %tmp0_v5.i.i.i, i32* %41, align 4
  store i32 %tmp2_v3.i109.i.i, i32* %29, align 16
  store i32 134517538, i32* %30, align 4
  %arg.i.i9.i = load i32, i32* %29, align 16
  %arg2.i.i10.i = load i32, i32* %41, align 4
  %53 = tail call i32 @strchr(i32 %arg.i.i9.i, i32 %arg2.i.i10.i)
  %.not.i.i.i = icmp eq i32 %53, 0
  br i1 %.not.i.i.i, label %BB_8049329.i.i, label %BB_804933B.i.i

BB_804937C.i.loopexit.i:                          ; preds = %BB_8049370.i.i, %BB_8049374.i.preheader.i, %BB_804934C.i.BB_804937C.i.loopexit.loopexit_crit_edge.i
  %54 = phi i32 [ %65, %BB_8049374.i.preheader.i ], [ %.pre23.pre.i, %BB_804934C.i.BB_804937C.i.loopexit.loopexit_crit_edge.i ], [ %67, %BB_8049370.i.i ]
  %55 = phi i32 [ %64, %BB_8049374.i.preheader.i ], [ %.pre.pre.i, %BB_804934C.i.BB_804937C.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i96.i.i, %BB_8049370.i.i ]
  %r_edx.1.ph.i = phi i32 [ %.lcssa.i, %BB_8049374.i.preheader.i ], [ %42, %BB_804934C.i.BB_804937C.i.loopexit.loopexit_crit_edge.i ], [ %42, %BB_8049370.i.i ]
  %56 = icmp slt i32 %55, %54
  br i1 %56, label %BB_8049331.i.preheader.i, label %Func_largest_word.exit

BB_8049331.i.preheader.i:                         ; preds = %BB_804937C.i.loopexit.i, %BB_8049331.i.preheader.lr.ph.i
  store i32 0, i32* %33, align 4
  %57 = load i32, i32* %38, align 4
  %58 = load i32, i32* %24, align 4
  %tmp0_v3.i.i13.i = add i32 %58, %57
  %59 = inttoptr i32 %tmp0_v3.i.i13.i to i8*
  %60 = load i8, i8* %59, align 1
  %tmp0_v5.i.i14.i = sext i8 %60 to i32
  store i32 %tmp0_v5.i.i14.i, i32* %41, align 4
  store i32 %tmp2_v3.i109.i.i, i32* %29, align 16
  store i32 134517538, i32* %30, align 4
  %arg.i.i915.i = load i32, i32* %29, align 16
  %arg2.i.i1016.i = load i32, i32* %41, align 4
  %61 = tail call i32 @strchr(i32 %arg.i.i915.i, i32 %arg2.i.i1016.i)
  %.not.i.i17.i = icmp eq i32 %61, 0
  br i1 %.not.i.i17.i, label %BB_8049329.i.i, label %BB_804933B.i.i

BB_804933B.i.i:                                   ; preds = %BB_8049331.i.preheader.i, %BB_8049329.i.i
  %.lcssa.i = phi i32 [ %57, %BB_8049331.i.preheader.i ], [ %49, %BB_8049329.i.i ]
  %62 = load i32, i32* %33, align 4
  %63 = load i32, i32* %34, align 8
  %.not.i81.i.i = icmp sgt i32 %62, %63
  br i1 %.not.i81.i.i, label %BB_8049344.i.i, label %BB_8049374.i.preheader.i

BB_8049344.i.i:                                   ; preds = %BB_804933B.i.i
  store i32 %62, i32* %34, align 8
  br label %BB_8049374.i.preheader.i

BB_8049374.i.preheader.i:                         ; preds = %BB_8049344.i.i, %BB_804933B.i.i
  %64 = load i32, i32* %38, align 4
  %65 = load i32, i32* %32, align 16
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %BB_804934C.i.i, label %BB_804937C.i.loopexit.i

BB_8049370.i.i:                                   ; preds = %BB_804934C.i.i
  %tmp0_v1.i96.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i96.i.i, i32* %38, align 4
  %67 = load i32, i32* %32, align 16
  %68 = icmp slt i32 %tmp0_v1.i96.i.i, %67
  br i1 %68, label %BB_804934C.i.i, label %BB_804937C.i.loopexit.i

Func_largest_word.exit:                           ; preds = %BB_804937C.i.loopexit.i, %.exit
  %r_edx.1.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.1.ph.i, %BB_804937C.i.loopexit.i ]
  %69 = load i32, i32* %34, align 8
  %70 = load i32, i32* %27, align 4
  %tmp4_v.i58.i.b.i = load i1, i1* @segs.0, align 1
  %71 = inttoptr i32 %arg_esp to i32*
  %72 = load i32, i32* %71, align 4
  %tmp0_v4.i61.i.i = xor i32 %72, %70
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %20, align 8
  %tmp2_v.i8.i = add i32 %74, -48
  %75 = inttoptr i32 %tmp2_v.i8.i to i32*
  store i32 %69, i32* %75, align 4
  %tmp2_v4.i11.i = add i32 %tmp0_v.i2.i, -76
  %76 = inttoptr i32 %tmp2_v4.i11.i to i32*
  store i32 %69, i32* %76, align 4
  %tmp2_v5.i13.i = add i32 %73, -8184
  store i32 %tmp2_v5.i13.i, i32* %18, align 16
  store i32 134517371, i32* %19, align 4
  %77 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v4.i61.i.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @largest_word661 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack660, i32 0, i32 8092) to i32)) nounwind
