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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @string_basicsm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i27.i = add i32 %arg_esp, 4
  %tmp0_v.i28.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i28.i, -4
  %3 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i28.i, -8
  %4 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i32.i = add i32 %tmp0_v.i28.i, -12
  %5 = inttoptr i32 %tmp2_v5.i32.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i34.i = add i32 %tmp0_v.i28.i, -16
  %6 = inttoptr i32 %tmp2_v6.i34.i to i32*
  store i32 %tmp2_v.i27.i, i32* %6, align 16
  %tmp2_v8.i35.i = add i32 %tmp0_v.i28.i, -164
  %7 = inttoptr i32 %tmp2_v8.i35.i to i32*
  store i32 134517300, i32* %7, align 4
  %tmp4_v.i128.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i128.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i132.i = add i32 %tmp0_v.i28.i, -20
  %10 = inttoptr i32 %tmp2_v2.i132.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i133.i = add i32 %tmp0_v.i28.i, -131
  %11 = inttoptr i32 %tmp2_v3.i133.i to i32*
  store i32 1953719668, i32* %11, align 4
  %tmp2_v4.i134.i = add i32 %tmp0_v.i28.i, -127
  %12 = inttoptr i32 %tmp2_v4.i134.i to i8*
  store i8 0, i8* %12, align 1
  %tmp2_v7.i138.i = add i32 %tmp0_v.i28.i, -176
  %13 = inttoptr i32 %tmp2_v7.i138.i to i32*
  store i32 %tmp2_v3.i133.i, i32* %13, align 16
  %tmp2_v8.i139.i = add i32 %tmp0_v.i28.i, -180
  %14 = inttoptr i32 %tmp2_v8.i139.i to i32*
  store i32 134517340, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %15 = inttoptr i32 %arg.i.i to i8*
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) %15)
  %tmp2_v.i4.i = add i32 %tmp0_v.i28.i, -148
  %17 = inttoptr i32 %tmp2_v.i4.i to i32*
  %tmp2_v6.i149.i = add i32 %tmp0_v.i28.i, -168
  %18 = inttoptr i32 %tmp2_v6.i149.i to i32*
  %tmp2_v9.i151.i = add i32 %tmp0_v.i28.i, -172
  %19 = inttoptr i32 %tmp2_v9.i151.i to i32*
  store i32 0, i32* %17, align 4
  br label %BB_804926B.i

BB_80492A5.i:                                     ; preds = %BB_804926B.i
  %20 = lshr i64 %66, 32
  %21 = trunc i64 %20 to i32
  %tmp2_v.i.i = add i32 %tmp0_v.i28.i, -92
  %22 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 1701670739, i32* %22, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i28.i, -88
  %23 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1734959648, i32* %23, align 8
  %tmp2_v2.i.i = add i32 %tmp0_v.i28.i, -84
  %24 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 1852795936, i32* %24, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i28.i, -80
  %25 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1953701991, i32* %25, align 16
  %tmp2_v4.i.i = add i32 %tmp0_v.i28.i, -76
  %26 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1735289202, i32* %26, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i28.i, -72
  %27 = inttoptr i32 %tmp2_v5.i.i to i16*
  store i16 33, i16* %27, align 8
  store i32 %tmp2_v.i.i, i32* %19, align 4
  store i32 134520855, i32* %13, align 16
  store i32 134517473, i32* %14, align 4
  %28 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef %21, i32 noundef %tmp2_v7.i138.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %tmp2_v.i158.i = add i32 %tmp0_v.i28.i, -126
  %31 = inttoptr i32 %tmp2_v.i158.i to i32*
  store i32 1701670739, i32* %31, align 4
  %tmp2_v1.i159.i = add i32 %tmp0_v.i28.i, -122
  %32 = inttoptr i32 %tmp2_v1.i159.i to i32*
  store i32 1920234272, i32* %32, align 4
  %tmp2_v2.i160.i = add i32 %tmp0_v.i28.i, -118
  %33 = inttoptr i32 %tmp2_v2.i160.i to i32*
  store i32 560426601, i32* %33, align 4
  %tmp2_v3.i161.i = add i32 %tmp0_v.i28.i, -114
  %34 = inttoptr i32 %tmp2_v3.i161.i to i16*
  store i16 8481, i16* %34, align 2
  %tmp2_v4.i162.i = add i32 %tmp0_v.i28.i, -112
  %35 = inttoptr i32 %tmp2_v4.i162.i to i8*
  store i8 0, i8* %35, align 16
  store i32 %tmp2_v.i158.i, i32* %13, align 16
  store i32 134517519, i32* %14, align 4
  %arg.i.i7 = load i32, i32* %13, align 16
  %36 = tail call i32 @strlen(i32 %arg.i.i7)
  %tmp2_v.i20.i = add i32 %tmp0_v.i28.i, -136
  %37 = inttoptr i32 %tmp2_v.i20.i to i32*
  store i32 %36, i32* %37, align 8
  store i32 %36, i32* %19, align 4
  store i32 134520866, i32* %13, align 16
  store i32 134517543, i32* %14, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef %30, i32 noundef %tmp2_v7.i138.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  %tmp2_v.i54.i = add i32 %tmp0_v.i28.i, -144
  %41 = inttoptr i32 %tmp2_v.i54.i to i32*
  store i32 0, i32* %41, align 16
  %tmp2_v1.i55.i = add i32 %tmp0_v.i28.i, -140
  %42 = inttoptr i32 %tmp2_v1.i55.i to i32*
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %37, align 8
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_8049340.i, label %BB_804937D.i

BB_8049340.i:                                     ; preds = %BB_804936B.i, %BB_80492A5.i
  %storemerge117 = phi i32 [ %tmp0_v1.i66.i, %BB_804936B.i ], [ 0, %BB_80492A5.i ]
  %tmp0_v2.i40.i = add i32 %storemerge117, %tmp2_v.i158.i
  %45 = inttoptr i32 %tmp0_v2.i40.i to i8*
  %46 = load i8, i8* %45, align 1
  switch i8 %46, label %BB_804936B.i [
    i8 115, label %BB_8049364.i
    i8 83, label %BB_8049364.i
  ]

BB_804936B.i:                                     ; preds = %BB_8049364.i, %BB_8049340.i
  %47 = phi i32 [ %storemerge117, %BB_8049340.i ], [ %.pre, %BB_8049364.i ]
  %tmp0_v1.i66.i = add i32 %47, 1
  store i32 %tmp0_v1.i66.i, i32* %42, align 4
  %48 = load i32, i32* %37, align 8
  %49 = icmp slt i32 %tmp0_v1.i66.i, %48
  br i1 %49, label %BB_8049340.i, label %BB_804937D.i

BB_8049364.i:                                     ; preds = %BB_8049340.i, %BB_8049340.i
  %50 = load i32, i32* %41, align 16
  %tmp0_v1.i75.i = add i32 %50, 1
  store i32 %tmp0_v1.i75.i, i32* %41, align 16
  %.pre = load i32, i32* %42, align 4
  br label %BB_804936B.i

BB_804937D.i:                                     ; preds = %BB_804936B.i, %BB_80492A5.i
  %r_edx.2.lcssa = phi i32 [ %40, %BB_80492A5.i ], [ %tmp2_v.i158.i, %BB_804936B.i ]
  %51 = load i32, i32* %41, align 16
  store i32 %51, i32* %19, align 4
  store i32 134520878, i32* %13, align 16
  store i32 134517650, i32* %14, align 4
  %52 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef %r_edx.2.lcssa, i32 noundef %tmp2_v7.i138.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %tmp2_v.i8.i = add i32 %tmp0_v.i28.i, -111
  %55 = inttoptr i32 %tmp2_v.i8.i to i32*
  store i32 1931508045, i32* %55, align 4
  %tmp2_v1.i9.i = add i32 %tmp0_v.i28.i, -107
  %56 = inttoptr i32 %tmp2_v1.i9.i to i32*
  store i32 1852404340, i32* %56, align 4
  %tmp2_v2.i10.i = add i32 %tmp0_v.i28.i, -103
  %57 = inttoptr i32 %tmp2_v2.i10.i to i32*
  store i32 1869881447, i32* %57, align 4
  %tmp2_v3.i11.i = add i32 %tmp0_v.i28.i, -99
  %58 = inttoptr i32 %tmp2_v3.i11.i to i32*
  store i32 1886348064, i32* %58, align 4
  %tmp2_v4.i12.i = add i32 %tmp0_v.i28.i, -95
  %59 = inttoptr i32 %tmp2_v4.i12.i to i16*
  store i16 8569, i16* %59, align 2
  %tmp2_v5.i13.i = add i32 %tmp0_v.i28.i, -93
  %60 = inttoptr i32 %tmp2_v5.i13.i to i8*
  store i8 0, i8* %60, align 1
  store i32 %tmp2_v.i8.i, i32* %19, align 4
  %tmp2_v9.i16.i = add i32 %tmp0_v.i28.i, -70
  store i32 %tmp2_v9.i16.i, i32* %13, align 16
  store i32 134517707, i32* %14, align 4
  %arg.i.i11 = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %19, align 4
  %61 = tail call i32 @strcpy(i32 %arg.i.i11, i32 %arg2.i.i)
  store i32 %tmp2_v9.i16.i, i32* %19, align 4
  store i32 134520891, i32* %13, align 16
  store i32 134517729, i32* %14, align 4
  %62 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef %54, i32 noundef %tmp2_v7.i138.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_804926B.i:                                     ; preds = %BB_804926B.i, %0
  %storemerge15 = phi i32 [ 0, %0 ], [ %tmp0_v2.i47.i, %BB_804926B.i ]
  %tmp0_v2.i144.i = add i32 %storemerge15, %tmp2_v3.i133.i
  %63 = inttoptr i32 %tmp0_v2.i144.i to i8*
  %64 = load i8, i8* %63, align 1
  %tmp0_v4.i146.i = sext i8 %64 to i32
  store i32 %tmp0_v4.i146.i, i32* %18, align 8
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %19, align 4
  store i32 134520840, i32* %13, align 16
  store i32 134517394, i32* %14, align 4
  %66 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef %tmp2_v3.i133.i, i32 noundef %tmp2_v7.i138.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %67 = load i32, i32* %17, align 4
  %tmp0_v2.i47.i = add i32 %67, 1
  store i32 %tmp0_v2.i47.i, i32* %17, align 4
  %68 = icmp slt i32 %tmp0_v2.i47.i, 5
  br i1 %68, label %BB_804926B.i, label %BB_80492A5.i
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
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @string_basicsm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
