; Mutation 453
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack452 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @word_count453(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -100
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i5.i = add i32 %tmp0_v.i.i, -74
  %10 = inttoptr i32 %tmp2_v3.i5.i to i32*
  store i32 1763734601, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i.i, -70
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1852383347, i32* %11, align 4
  %tmp2_v5.i7.i = add i32 %tmp0_v.i.i, -66
  %12 = inttoptr i32 %tmp2_v5.i7.i to i32*
  store i32 1768453152, i32* %12, align 4
  %tmp2_v6.i8.i = add i32 %tmp0_v.i.i, -62
  %13 = inttoptr i32 %tmp2_v6.i8.i to i32*
  store i32 1953702003, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -58
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1735289202, i32* %14, align 4
  %tmp2_v8.i9.i = add i32 %tmp0_v.i.i, -54
  %15 = inttoptr i32 %tmp2_v8.i9.i to i32*
  store i32 1668181792, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -50
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 11877, i16* %16, align 2
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -48
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -80
  %18 = inttoptr i32 %tmp2_v11.i.i to i16*
  store i16 29769, i16* %18, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -78
  %19 = inttoptr i32 %tmp2_v12.i.i to i8*
  store i8 0, i8* %19, align 2
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -108
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v11.i.i, i32* %20, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i.i, -112
  %21 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i5.i, i32* %21, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i.i, -116
  %22 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517328, i32* %22, align 4
  %23 = tail call fastcc { i32, i32, i32, i32, i32, i32 } @Func_word_count(i32 %tmp2_v18.i.i, i32 0, i32 %tmp2_v4.i.i, i32 134529024, i32 %tmp2_v.i.i)
  %24 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 0
  %25 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 1
  %26 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 2
  %27 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 3
  %28 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 4
  %29 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 5
  %tmp2_v.i20.i = add i32 %27, -80
  %30 = inttoptr i32 %tmp2_v.i20.i to i32*
  store i32 %25, i32* %30, align 4
  %tmp2_v4.i24.i = add i32 %24, 4
  %31 = inttoptr i32 %tmp2_v4.i24.i to i32*
  store i32 %25, i32* %31, align 4
  %tmp2_v5.i26.i = add i32 %28, -8184
  %32 = inttoptr i32 %24 to i32*
  store i32 %tmp2_v5.i26.i, i32* %32, align 4
  %tmp2_v7.i27.i = add i32 %24, -4
  %33 = inttoptr i32 %tmp2_v7.i27.i to i32*
  store i32 134517352, i32* %33, align 4
  %34 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %29, i32 inreg noundef %26, i32 noundef %24, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %tmp2_v.i31.i = add i32 %27, -39
  %37 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 1936287828, i32* %37, align 4
  %tmp2_v1.i.i = add i32 %27, -35
  %38 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 544434464, i32* %38, align 4
  %tmp2_v2.i32.i = add i32 %27, -31
  %39 = inttoptr i32 %tmp2_v2.i32.i to i32*
  store i32 1763733097, i32* %39, align 4
  %tmp2_v3.i33.i = add i32 %27, -27
  %40 = inttoptr i32 %tmp2_v3.i33.i to i32*
  store i32 1852383342, i32* %40, align 4
  %tmp2_v4.i34.i = add i32 %27, -23
  %41 = inttoptr i32 %tmp2_v4.i34.i to i32*
  store i32 1701344288, i32* %41, align 4
  %tmp2_v5.i35.i = add i32 %27, -19
  %42 = inttoptr i32 %tmp2_v5.i35.i to i32*
  store i32 1919907616, i32* %42, align 4
  %tmp2_v6.i36.i = add i32 %27, -15
  %43 = inttoptr i32 %tmp2_v6.i36.i to i16*
  store i16 11876, i16* %43, align 2
  %tmp2_v7.i37.i = add i32 %27, -13
  %44 = inttoptr i32 %tmp2_v7.i37.i to i8*
  store i8 0, i8* %44, align 1
  %tmp2_v8.i38.i = add i32 %27, -69
  %45 = inttoptr i32 %tmp2_v8.i38.i to i16*
  store i16 28265, i16* %45, align 2
  %tmp2_v9.i39.i = add i32 %27, -67
  %46 = inttoptr i32 %tmp2_v9.i39.i to i8*
  store i8 0, i8* %46, align 1
  store i32 %tmp2_v8.i38.i, i32* %31, align 4
  store i32 %tmp2_v.i31.i, i32* %32, align 4
  store i32 134517433, i32* %33, align 4
  %47 = tail call fastcc { i32, i32, i32, i32, i32, i32 } @Func_word_count(i32 %tmp2_v7.i27.i, i32 %36, i32 %27, i32 %28, i32 %29)
  %48 = extractvalue { i32, i32, i32, i32, i32, i32 } %47, 0
  %49 = extractvalue { i32, i32, i32, i32, i32, i32 } %47, 1
  %50 = extractvalue { i32, i32, i32, i32, i32, i32 } %47, 2
  %51 = extractvalue { i32, i32, i32, i32, i32, i32 } %47, 3
  %52 = extractvalue { i32, i32, i32, i32, i32, i32 } %47, 4
  %53 = extractvalue { i32, i32, i32, i32, i32, i32 } %47, 5
  %tmp2_v.i46.i = add i32 %51, -76
  %54 = inttoptr i32 %tmp2_v.i46.i to i32*
  store i32 %49, i32* %54, align 4
  %tmp2_v4.i51.i = add i32 %48, 4
  %55 = inttoptr i32 %tmp2_v4.i51.i to i32*
  store i32 %49, i32* %55, align 4
  %tmp2_v5.i53.i = add i32 %52, -8170
  %56 = inttoptr i32 %48 to i32*
  store i32 %tmp2_v5.i53.i, i32* %56, align 4
  %tmp2_v7.i54.i = add i32 %48, -4
  %57 = inttoptr i32 %tmp2_v7.i54.i to i32*
  store i32 134517457, i32* %57, align 4
  %58 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %53, i32 inreg noundef %50, i32 noundef %48, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
}

; Function Attrs: norecurse
define internal fastcc { i32, i32, i32, i32, i32, i32 } @Func_word_count(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx, i32 %arg_ecx) unnamed_addr  norecurse  !retregs !14 {
  %tmp2_v.i61.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i61.i to i32*
  store i32 %arg_ebp, i32* %1, align 4
  %tmp2_v1.i63.i = add i32 %arg_esp, -8
  %2 = inttoptr i32 %tmp2_v1.i63.i to i32*
  store i32 %arg_ebx, i32* %2, align 4
  %tmp2_v2.i66.i = add i32 %arg_esp, -48
  %3 = inttoptr i32 %tmp2_v2.i66.i to i32*
  store i32 134517508, i32* %3, align 4
  %tmp2_v.i4.i = add i32 %arg_esp, 4
  %4 = inttoptr i32 %tmp2_v.i4.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v3.i6.i = add i32 %arg_esp, -60
  %6 = inttoptr i32 %tmp2_v3.i6.i to i32*
  store i32 %5, i32* %6, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -64
  %7 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517525, i32* %7, align 4
  %arg.i.i = load i32, i32* %6, align 4
  %8 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i25.i = add i32 %arg_esp, -24
  %9 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v2.i28.i = add i32 %arg_esp, 8
  %10 = inttoptr i32 %tmp2_v2.i28.i to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  store i32 134517542, i32* %7, align 4
  %arg.i.i35 = load i32, i32* %6, align 4
  %12 = tail call i32 @strlen(i32 %arg.i.i35)
  %tmp2_v.i.i = add i32 %arg_esp, -20
  %13 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %tmp0_v4.i.i = sub i32 1, %12
  %tmp0_v5.i.i = add i32 %tmp0_v4.i.i, %14
  %tmp2_v6.i.i = add i32 %arg_esp, -16
  %15 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp0_v5.i.i, i32* %15, align 4
  %tmp2_v7.i.i = add i32 %arg_esp, -36
  %16 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 0, i32* %16, align 4
  %tmp2_v8.i.i = add i32 %arg_esp, -32
  %17 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %BB_8049348.i.lr.ph, label %.exit

BB_8049348.i.lr.ph:                               ; preds = %0
  %tmp2_v.i91.i = add i32 %arg_esp, -37
  %20 = inttoptr i32 %tmp2_v.i91.i to i8*
  %tmp2_v1.i92.i = add i32 %arg_esp, -28
  %21 = inttoptr i32 %tmp2_v1.i92.i to i32*
  br label %BB_8049348.i

BB_8049388.i.thread:                              ; preds = %BB_8049355.i
  store i8 0, i8* %20, align 1
  br label %BB_8049392.i

BB_8049355.i:                                     ; preds = %BB_8049348.i, %BB_8049380.i
  %storemerge2943 = phi i32 [ %tmp0_v1.i17.i, %BB_8049380.i ], [ 0, %BB_8049348.i ]
  %22 = load i32, i32* %10, align 4
  %tmp0_v3.i35.i = add i32 %22, %storemerge2943
  %23 = inttoptr i32 %tmp0_v3.i35.i to i8*
  %24 = load i8, i8* %23, align 1
  %tmp0_v4.i36.i = zext i8 %24 to i32
  %25 = load i32, i32* %17, align 4
  %tmp0_v9.i.i = add i32 %25, %storemerge2943
  %26 = load i32, i32* %4, align 4
  %tmp0_v12.i.i = add i32 %26, %tmp0_v9.i.i
  %27 = inttoptr i32 %tmp0_v12.i.i to i8*
  %28 = load i8, i8* %27, align 1
  %tmp0_v13.i.i = zext i8 %28 to i32
  %cc_dst_v.i39.i = sub nsw i32 %tmp0_v4.i36.i, %tmp0_v13.i.i
  %tmp4_v.i.i = and i32 %cc_dst_v.i39.i, 255
  %29 = icmp eq i32 %tmp4_v.i.i, 0
  %tmp0_v1.i17.i = add nuw nsw i32 %storemerge2943, 1
  br i1 %29, label %BB_8049380.i, label %BB_8049388.i.thread

BB_8049380.i:                                     ; preds = %BB_8049355.i
  store i32 %tmp0_v1.i17.i, i32* %21, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %tmp0_v1.i17.i, %30
  br i1 %31, label %BB_8049355.i, label %BB_8049388.i

BB_8049388.i:                                     ; preds = %BB_8049348.i, %BB_8049380.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.045, %BB_8049348.i ], [ %tmp0_v9.i.i, %BB_8049380.i ]
  %r_edx.1.lcssa = phi i32 [ %r_edx.046, %BB_8049348.i ], [ %tmp0_v4.i36.i, %BB_8049380.i ]
  %.pr = load i8, i8* %20, align 1
  %32 = icmp eq i8 %.pr, 0
  br i1 %32, label %BB_8049392.i, label %BB_804938E.i

BB_8049392.i:                                     ; preds = %BB_804938E.i, %BB_8049388.i, %BB_8049388.i.thread
  %r_edx.240 = phi i32 [ %tmp0_v4.i36.i, %BB_8049388.i.thread ], [ %r_edx.1.lcssa, %BB_8049388.i ], [ %r_edx.1.lcssa, %BB_804938E.i ]
  %r_ecx.239 = phi i32 [ %tmp0_v9.i.i, %BB_8049388.i.thread ], [ %r_ecx.1.lcssa, %BB_8049388.i ], [ %r_ecx.1.lcssa, %BB_804938E.i ]
  %33 = load i32, i32* %17, align 4
  %tmp0_v1.i70.i = add i32 %33, 1
  store i32 %tmp0_v1.i70.i, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %tmp0_v1.i70.i, %34
  br i1 %35, label %BB_8049348.i, label %.exit

BB_804938E.i:                                     ; preds = %BB_8049388.i
  %36 = load i32, i32* %16, align 4
  %tmp0_v1.i80.i = add i32 %36, 1
  store i32 %tmp0_v1.i80.i, i32* %16, align 4
  br label %BB_8049392.i

BB_8049348.i:                                     ; preds = %BB_8049392.i, %BB_8049348.i.lr.ph
  %r_edx.046 = phi i32 [ %arg_edx, %BB_8049348.i.lr.ph ], [ %r_edx.240, %BB_8049392.i ]
  %r_ecx.045 = phi i32 [ %arg_ecx, %BB_8049348.i.lr.ph ], [ %r_ecx.239, %BB_8049392.i ]
  store i8 1, i8* %20, align 1
  store i32 0, i32* %21, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %BB_8049355.i, label %BB_8049388.i

.exit:                                            ; preds = %BB_8049392.i, %0
  %r_ecx.0.lcssa = phi i32 [ %arg_ecx, %0 ], [ %r_ecx.239, %BB_8049392.i ]
  %r_edx.0.lcssa = phi i32 [ %arg_edx, %0 ], [ %r_edx.240, %BB_8049392.i ]
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %1, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32, i32 } undef, i32 %tmp2_v.i4.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32, i32 } %mrv, i32 %39, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32, i32 } %mrv1, i32 %r_edx.0.lcssa, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32, i32 } %mrv2, i32 %41, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32, i32 } %mrv3, i32 %40, 4
  %mrv5 = insertvalue { i32, i32, i32, i32, i32, i32 } %mrv4, i32 %r_ecx.0.lcssa, 5
  ret { i32, i32, i32, i32, i32, i32 } %mrv5
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
!14 = !{i32 0, i32 2, i32 3, i32 4, i32 5}

  tail call fastcc void @word_count453 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack452, i32 0, i32 8092) to i32)) nounwind
