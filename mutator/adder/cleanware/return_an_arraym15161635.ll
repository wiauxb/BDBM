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

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @return_an_arraym15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i63.i = add i32 %arg_esp, 4
  %tmp0_v.i64.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i66.i = add i32 %tmp0_v.i64.i, -4
  %3 = inttoptr i32 %tmp2_v3.i66.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i67.i = add i32 %tmp0_v.i64.i, -8
  %4 = inttoptr i32 %tmp2_v4.i67.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i69.i = add i32 %tmp0_v.i64.i, -12
  %5 = inttoptr i32 %tmp2_v5.i69.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i71.i = add i32 %tmp0_v.i64.i, -16
  %6 = inttoptr i32 %tmp2_v6.i71.i to i32*
  store i32 %tmp2_v.i63.i, i32* %6, align 16
  %tmp2_v8.i73.i = add i32 %tmp0_v.i64.i, -68
  %7 = inttoptr i32 %tmp2_v8.i73.i to i32*
  store i32 134517474, i32* %7, align 4
  %tmp4_v.i116.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i116.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i120.i = add i32 %tmp0_v.i64.i, -20
  %10 = inttoptr i32 %tmp2_v2.i120.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i121.i = add i32 %tmp0_v.i64.i, -40
  %11 = inttoptr i32 %tmp2_v3.i121.i to i32*
  store i32 1, i32* %11, align 8
  %tmp2_v4.i122.i = add i32 %tmp0_v.i64.i, -36
  %12 = inttoptr i32 %tmp2_v4.i122.i to i32*
  store i32 2, i32* %12, align 4
  %tmp2_v5.i123.i = add i32 %tmp0_v.i64.i, -32
  %13 = inttoptr i32 %tmp2_v5.i123.i to i32*
  store i32 3, i32* %13, align 16
  %tmp2_v6.i124.i = add i32 %tmp0_v.i64.i, -28
  %14 = inttoptr i32 %tmp2_v6.i124.i to i32*
  store i32 4, i32* %14, align 4
  %tmp2_v7.i125.i = add i32 %tmp0_v.i64.i, -24
  %15 = inttoptr i32 %tmp2_v7.i125.i to i32*
  store i32 5, i32* %15, align 8
  store i32 %tmp2_v3.i121.i, i32* %7, align 4
  %tmp2_v10.i129.i = add i32 %tmp0_v.i64.i, -72
  %16 = inttoptr i32 %tmp2_v10.i129.i to i32*
  store i32 4, i32* %16, align 8
  %tmp2_v11.i130.i = add i32 %tmp0_v.i64.i, -76
  %17 = inttoptr i32 %tmp2_v11.i130.i to i32*
  store i32 134517537, i32* %17, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i64.i, -80
  %18 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %tmp2_v4.i67.i, i32* %18, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i64.i, -100
  %19 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517253, i32* %19, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i64.i, -84
  %20 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %20, align 4
  br label %BB_8049213.i.i

BB_8049213.i.i:                                   ; preds = %BB_8049213.i.i, %0
  %storemerge5.i = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i.i, %BB_8049213.i.i ]
  %tmp4_v.i9.i.i = shl i32 %storemerge5.i, 2
  %21 = load i32, i32* %7, align 4
  %tmp0_v3.i.i.i = add i32 %21, %tmp4_v.i9.i.i
  %22 = load i32, i32* %16, align 8
  %23 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %20, align 4
  %tmp0_v8.i.i.i = add i32 %24, 1
  store i32 %tmp0_v8.i.i.i, i32* %20, align 4
  %25 = icmp slt i32 %tmp0_v8.i.i.i, 5
  br i1 %25, label %BB_8049213.i.i, label %Func_set_array1.exit

Func_set_array1.exit:                             ; preds = %BB_8049213.i.i
  %26 = load i32, i32* %18, align 16
  %tmp2_v.i23.i = add i32 %26, -52
  %27 = inttoptr i32 %tmp2_v.i23.i to i32*
  %tmp2_v1.i.i = add i32 %26, -32
  store i32 0, i32* %27, align 4
  br label %BB_804932D.i

BB_804932D.i:                                     ; preds = %BB_804932D.i, %Func_set_array1.exit
  %r_edx.042 = phi i32 [ %tmp0_v3.i.i.i, %Func_set_array1.exit ], [ %33, %BB_804932D.i ]
  %storemerge41 = phi i32 [ 0, %Func_set_array1.exit ], [ %tmp0_v2.i141.i, %BB_804932D.i ]
  %tmp4_v.i.i = shl i32 %storemerge41, 2
  %tmp2_v2.i.i = add i32 %tmp2_v1.i.i, %tmp4_v.i.i
  %28 = inttoptr i32 %tmp2_v2.i.i to i32*
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 8
  %30 = load i32, i32* %27, align 4
  store i32 %30, i32* %17, align 4
  store i32 134520840, i32* %18, align 16
  store i32 134517575, i32* %20, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i63.i, i32 inreg noundef %r_edx.042, i32 noundef %tmp2_v.i3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %27, align 4
  %tmp0_v2.i141.i = add i32 %34, 1
  store i32 %tmp0_v2.i141.i, i32* %27, align 4
  %35 = icmp slt i32 %tmp0_v2.i141.i, 5
  br i1 %35, label %BB_804932D.i, label %BB_8049354.i

BB_80493C5.i:                                     ; preds = %Func_set_array3.exit, %BB_80493C5.i
  %storemerge1944 = phi i32 [ 0, %Func_set_array3.exit ], [ %tmp0_v2.i11.i, %BB_80493C5.i ]
  %tmp4_v.i27.i = shl i32 %storemerge1944, 2
  %36 = load i32, i32* %50, align 4
  %tmp0_v3.i30.i = add i32 %36, %tmp4_v.i27.i
  %37 = inttoptr i32 %tmp0_v3.i30.i to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 8
  %39 = load i32, i32* %51, align 4
  store i32 %39, i32* %17, align 4
  store i32 %tmp2_v10.i36.i, i32* %18, align 16
  store i32 134517737, i32* %20, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %45, i32 inreg noundef %tmp4_v.i27.i, i32 noundef %tmp2_v.i3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %41 = load i32, i32* %51, align 4
  %tmp0_v2.i11.i = add i32 %41, 1
  store i32 %tmp0_v2.i11.i, i32* %51, align 4
  %42 = icmp slt i32 %tmp0_v2.i11.i, 5
  br i1 %42, label %BB_80493C5.i, label %.exit

BB_804939E.i:                                     ; preds = %BB_804936D.i
  %43 = load i32, i32* %67, align 4
  store i32 %43, i32* %18, align 16
  store i32 134517673, i32* %20, align 4
  %arg.i.i = load i32, i32* %18, align 16
  tail call void @free(i32 %arg.i.i)
  store i32 4, i32* %18, align 16
  store i32 134517686, i32* %20, align 4
  store i32 %66, i32* %52, align 8
  %tmp2_v1.i.i.i26 = add i32 %tmp0_v.i64.i, -108
  %44 = inttoptr i32 %tmp2_v1.i.i.i26 to i32*
  store i32 134517402, i32* %44, align 4
  store i32 0, i32* %53, align 4
  br label %BB_80492A8.i.i

BB_80492A8.i.i:                                   ; preds = %BB_80492A8.i.i, %BB_804939E.i
  %storemerge11.i = phi i32 [ 0, %BB_804939E.i ], [ %tmp0_v7.i.i.i, %BB_80492A8.i.i ]
  %45 = load i32, i32* %18, align 16
  %tmp4_v.i.i.i27 = shl i32 %storemerge11.i, 2
  %tmp2_v4.i.i.i28 = add i32 %tmp4_v.i.i.i27, 134529068
  %46 = inttoptr i32 %tmp2_v4.i.i.i28 to i32*
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %53, align 4
  %tmp0_v7.i.i.i = add i32 %47, 1
  store i32 %tmp0_v7.i.i.i, i32* %53, align 4
  %48 = icmp slt i32 %tmp0_v7.i.i.i, 5
  br i1 %48, label %BB_80492A8.i.i, label %Func_set_array3.exit

Func_set_array3.exit:                             ; preds = %BB_80492A8.i.i
  %49 = load i32, i32* %52, align 8
  %tmp2_v.i86.i = add i32 %49, -36
  %50 = inttoptr i32 %tmp2_v.i86.i to i32*
  store i32 134529068, i32* %50, align 4
  %tmp2_v1.i88.i = add i32 %49, -44
  %51 = inttoptr i32 %tmp2_v1.i88.i to i32*
  %tmp2_v10.i36.i = add i32 %65, -8150
  store i32 0, i32* %51, align 4
  br label %BB_80493C5.i

BB_8049354.i:                                     ; preds = %BB_804932D.i
  store i32 4, i32* %18, align 16
  store i32 134517598, i32* %20, align 4
  %tmp2_v.i11.i.i = add i32 %tmp0_v.i64.i, -88
  %52 = inttoptr i32 %tmp2_v.i11.i.i to i32*
  store i32 %26, i32* %52, align 8
  %tmp2_v1.i13.i.i = add i32 %tmp0_v.i64.i, -92
  %53 = inttoptr i32 %tmp2_v1.i13.i.i to i32*
  store i32 134529024, i32* %53, align 4
  %tmp2_v2.i15.i.i = add i32 %tmp0_v.i64.i, -116
  %54 = inttoptr i32 %tmp2_v2.i15.i.i to i32*
  store i32 134517317, i32* %54, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i64.i, -128
  %55 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 20, i32* %55, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i64.i, -132
  %56 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517334, i32* %56, align 4
  %arg.i.i.i = load i32, i32* %55, align 16
  %57 = tail call i32 @malloc(i32 %arg.i.i.i)
  store i32 %57, i32* %19, align 4
  %tmp2_v1.i21.i.i = add i32 %tmp0_v.i64.i, -104
  %58 = inttoptr i32 %tmp2_v1.i21.i.i to i32*
  store i32 0, i32* %58, align 8
  br label %BB_8049265.i.i

BB_8049265.i.i:                                   ; preds = %BB_8049265.i.i, %BB_8049354.i
  %storemerge14.i = phi i32 [ 0, %BB_8049354.i ], [ %tmp0_v8.i.i.i34, %BB_8049265.i.i ]
  %tmp4_v.i.i.i32 = shl i32 %storemerge14.i, 2
  %59 = load i32, i32* %19, align 4
  %tmp0_v3.i.i.i33 = add i32 %59, %tmp4_v.i.i.i32
  %60 = load i32, i32* %18, align 16
  %61 = inttoptr i32 %tmp0_v3.i.i.i33 to i32*
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %58, align 8
  %tmp0_v8.i.i.i34 = add i32 %62, 1
  store i32 %tmp0_v8.i.i.i34, i32* %58, align 8
  %63 = icmp slt i32 %tmp0_v8.i.i.i34, 5
  br i1 %63, label %BB_8049265.i.i, label %Func_set_array2.exit

Func_set_array2.exit:                             ; preds = %BB_8049265.i.i
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %53, align 4
  %66 = load i32, i32* %52, align 8
  %tmp2_v.i48.i = add i32 %66, -40
  %67 = inttoptr i32 %tmp2_v.i48.i to i32*
  store i32 %64, i32* %67, align 4
  %tmp2_v1.i49.i = add i32 %66, -48
  %68 = inttoptr i32 %tmp2_v1.i49.i to i32*
  %tmp2_v10.i104.i = add i32 %65, -8168
  store i32 0, i32* %68, align 4
  br label %BB_804936D.i

BB_804936D.i:                                     ; preds = %BB_804936D.i, %Func_set_array2.exit
  %storemerge1843 = phi i32 [ 0, %Func_set_array2.exit ], [ %tmp0_v2.i.i, %BB_804936D.i ]
  %tmp4_v.i92.i = shl i32 %storemerge1843, 2
  %69 = load i32, i32* %67, align 4
  %tmp0_v3.i95.i = add i32 %69, %tmp4_v.i92.i
  %70 = inttoptr i32 %tmp0_v3.i95.i to i32*
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %16, align 8
  %72 = load i32, i32* %68, align 4
  store i32 %72, i32* %17, align 4
  store i32 %tmp2_v10.i104.i, i32* %18, align 16
  store i32 134517649, i32* %20, align 4
  %73 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i63.i, i32 inreg noundef %tmp4_v.i92.i, i32 noundef %tmp2_v.i3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %74 = load i32, i32* %68, align 4
  %tmp0_v2.i.i = add i32 %74, 1
  store i32 %tmp0_v2.i.i, i32* %68, align 4
  %75 = icmp slt i32 %tmp0_v2.i.i, 5
  br i1 %75, label %BB_804936D.i, label %BB_804939E.i

.exit:                                            ; preds = %BB_80493C5.i
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
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @return_an_arraym15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
