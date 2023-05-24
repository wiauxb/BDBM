; Mutation 639
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack638 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @return_multiple_dynamic639(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i10.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i15.i = add i32 %tmp0_v.i.i, -64
  %11 = inttoptr i32 %tmp2_v4.i15.i to i32*
  store i32 10, i32* %11, align 16
  %tmp2_v5.i16.i = add i32 %tmp0_v.i.i, -68
  %12 = inttoptr i32 %tmp2_v5.i16.i to i32*
  store i32 134517260, i32* %12, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i.i, -72
  %13 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %13, align 8
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i.i, -76
  %14 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
  store i32 134529024, i32* %14, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -100
  %15 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517541, i32* %15, align 4
  %16 = load i32, i32* %11, align 16
  %tmp0_v2.i14.i.i = shl i32 %16, 2
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -112
  %17 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp0_v2.i14.i.i, i32* %17, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -116
  %18 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517563, i32* %18, align 4
  %arg.i.i.i = load i32, i32* %17, align 16
  %19 = tail call i32 @malloc(i32 %arg.i.i.i)
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i.i, -84
  %20 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i.i, -88
  %21 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %11, align 16
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %BB_804934A.i.i, label %Func_create_dynamic.exit

BB_804934A.i.i:                                   ; preds = %BB_804934A.i.i, %0
  %storemerge15.i = phi i32 [ %tmp0_v8.i.i.i, %BB_804934A.i.i ], [ 0, %0 ]
  %tmp4_v.i24.i.i = shl i32 %storemerge15.i, 2
  %24 = load i32, i32* %20, align 4
  %tmp0_v3.i27.i.i = add i32 %24, %tmp4_v.i24.i.i
  %25 = inttoptr i32 %tmp0_v3.i27.i.i to i32*
  store i32 %storemerge15.i, i32* %25, align 4
  %26 = load i32, i32* %21, align 8
  %tmp0_v8.i.i.i = add i32 %26, 1
  store i32 %tmp0_v8.i.i.i, i32* %21, align 8
  %27 = load i32, i32* %11, align 16
  %28 = icmp slt i32 %tmp0_v8.i.i.i, %27
  br i1 %28, label %BB_804934A.i.i, label %Func_create_dynamic.exit

Func_create_dynamic.exit:                         ; preds = %BB_804934A.i.i, %0
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %13, align 8
  %tmp2_v.i38.i = add i32 %31, -16
  %32 = inttoptr i32 %tmp2_v.i38.i to i32*
  store i32 %29, i32* %32, align 4
  %tmp2_v1.i39.i = add i32 %31, -24
  %33 = inttoptr i32 %tmp2_v1.i39.i to i32*
  %tmp2_v6.i6.i = add i32 %tmp0_v.i.i, -56
  %34 = inttoptr i32 %tmp2_v6.i6.i to i32*
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -60
  %35 = inttoptr i32 %tmp2_v9.i.i to i32*
  %tmp2_v10.i.i = add i32 %30, -8184
  store i32 0, i32* %33, align 4
  br label %BB_804921B.i

BB_804921B.i:                                     ; preds = %BB_804921B.i, %Func_create_dynamic.exit
  %storemerge19 = phi i32 [ 0, %Func_create_dynamic.exit ], [ %tmp0_v2.i69.i, %BB_804921B.i ]
  %tmp4_v.i.i = shl i32 %storemerge19, 2
  %36 = load i32, i32* %32, align 4
  %tmp0_v3.i.i = add i32 %36, %tmp4_v.i.i
  %37 = inttoptr i32 %tmp0_v3.i.i to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %34, align 8
  %39 = load i32, i32* %33, align 4
  store i32 %39, i32* %35, align 4
  store i32 %tmp2_v10.i.i, i32* %11, align 16
  store i32 134517311, i32* %12, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %tmp4_v.i.i, i32 noundef %tmp2_v4.i15.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %41 = load i32, i32* %33, align 4
  %tmp0_v2.i69.i = add i32 %41, 1
  store i32 %tmp0_v2.i69.i, i32* %33, align 4
  %42 = icmp slt i32 %tmp0_v2.i69.i, 10
  br i1 %42, label %BB_804921B.i, label %BB_804924C.i

BB_80492A5.i:                                     ; preds = %Func_allocate_two.exit, %BB_80492A5.i
  %storemerge420 = phi i32 [ 0, %Func_allocate_two.exit ], [ %tmp0_v2.i108.i, %BB_80492A5.i ]
  %43 = load i32, i32* %94, align 4
  %tmp0_v3.i25.i = shl i32 %storemerge420, 2
  %tmp0_v4.i26.i = add i32 %43, %tmp0_v3.i25.i
  %44 = inttoptr i32 %tmp0_v4.i26.i to i32*
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %34, align 8
  %46 = load i32, i32* %93, align 4
  store i32 %46, i32* %35, align 4
  store i32 %tmp2_v11.i33.i, i32* %11, align 16
  store i32 134517445, i32* %12, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %tmp0_v3.i25.i, i32 noundef %tmp2_v4.i15.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %48 = load i32, i32* %95, align 4
  %49 = load i32, i32* %93, align 4
  %tmp0_v4.i81.i = shl i32 %49, 2
  %tmp0_v5.i82.i = add i32 %tmp0_v4.i81.i, %48
  %50 = inttoptr i32 %tmp0_v5.i82.i to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %34, align 8
  %52 = load i32, i32* %93, align 4
  store i32 %52, i32* %35, align 4
  store i32 %tmp2_v12.i89.i, i32* %11, align 16
  store i32 134517480, i32* %12, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %tmp0_v4.i81.i, i32 noundef %tmp2_v4.i15.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %54 = load i32, i32* %93, align 4
  %tmp0_v2.i108.i = add i32 %54, 1
  store i32 %tmp0_v2.i108.i, i32* %93, align 4
  %55 = icmp slt i32 %tmp0_v2.i108.i, 10
  br i1 %55, label %BB_80492A5.i, label %.exit

BB_804924C.i:                                     ; preds = %BB_804921B.i
  %tmp2_v.i41.i = add i32 %31, -40
  %56 = inttoptr i32 %tmp2_v.i41.i to i32*
  store i32 4, i32* %56, align 4
  %tmp2_v1.i42.i = add i32 %31, -36
  %57 = inttoptr i32 %tmp2_v1.i42.i to i32*
  store i32 5, i32* %57, align 4
  store i32 %tmp2_v1.i42.i, i32* %35, align 4
  store i32 %tmp2_v.i41.i, i32* %11, align 16
  store i32 134517354, i32* %12, align 4
  store i32 %31, i32* %13, align 8
  store i32 134517630, i32* %14, align 4
  %58 = load i32, i32* %11, align 16
  %59 = inttoptr i32 %58 to i32*
  store i32 10, i32* %59, align 4
  %60 = load i32, i32* %35, align 4
  %61 = inttoptr i32 %60 to i32*
  store i32 20, i32* %61, align 4
  %62 = load i32, i32* %13, align 8
  %tmp2_v.i93.i = add i32 %62, -36
  %63 = inttoptr i32 %tmp2_v.i93.i to i32*
  %64 = load i32, i32* %63, align 4
  %tmp2_v2.i95.i = add i32 %62, -40
  %65 = inttoptr i32 %tmp2_v2.i95.i to i32*
  %66 = load i32, i32* %65, align 4
  store i32 %64, i32* %34, align 8
  store i32 %66, i32* %35, align 4
  %tmp2_v7.i101.i = add i32 %30, -8168
  store i32 %tmp2_v7.i101.i, i32* %11, align 16
  store i32 134517380, i32* %12, align 4
  %67 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %64, i32 noundef %tmp2_v4.i15.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 10, i32* %34, align 8
  %tmp2_v2.i55.i = add i32 %62, -28
  store i32 %tmp2_v2.i55.i, i32* %35, align 4
  %tmp2_v4.i57.i = add i32 %62, -32
  store i32 %tmp2_v4.i57.i, i32* %11, align 16
  store i32 134517401, i32* %12, align 4
  store i32 %62, i32* %13, align 8
  store i32 %30, i32* %14, align 4
  store i32 134517672, i32* %15, align 4
  %68 = load i32, i32* %34, align 8
  %tmp0_v2.i30.i.i = shl i32 %68, 2
  store i32 %tmp0_v2.i30.i.i, i32* %17, align 16
  store i32 134517693, i32* %18, align 4
  %arg.i.i.i15 = load i32, i32* %17, align 16
  %69 = tail call i32 @malloc(i32 %arg.i.i.i15)
  %70 = load i32, i32* %11, align 16
  %71 = inttoptr i32 %70 to i32*
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %34, align 8
  %tmp0_v4.i.i.i = shl i32 %72, 2
  store i32 %tmp0_v4.i.i.i, i32* %17, align 16
  store i32 134517718, i32* %18, align 4
  %arg.i.i20.i = load i32, i32* %17, align 16
  %73 = tail call i32 @malloc(i32 %arg.i.i20.i)
  %74 = load i32, i32* %35, align 4
  %75 = inttoptr i32 %74 to i32*
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %20, align 4
  %76 = load i32, i32* %34, align 8
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %BB_80493E9.i.i, label %Func_allocate_two.exit

BB_80493E9.i.i:                                   ; preds = %BB_80493E9.i.i, %BB_804924C.i
  %storemerge22.i = phi i32 [ %tmp0_v21.i.i.i, %BB_80493E9.i.i ], [ 0, %BB_804924C.i ]
  %78 = load i32, i32* %11, align 16
  %79 = inttoptr i32 %78 to i32*
  %80 = load i32, i32* %79, align 4
  %tmp0_v4.i16.i.i = shl i32 %storemerge22.i, 2
  %tmp0_v5.i17.i.i = add i32 %80, %tmp0_v4.i16.i.i
  %81 = inttoptr i32 %tmp0_v5.i17.i.i to i32*
  store i32 %storemerge22.i, i32* %81, align 4
  %82 = load i32, i32* %35, align 4
  %83 = inttoptr i32 %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %20, align 4
  %tmp0_v13.i.i.i = shl i32 %85, 2
  %tmp0_v14.i.i.i = add i32 %tmp0_v13.i.i.i, %84
  %86 = load i32, i32* %34, align 8
  %tmp0_v18.i.i.i = sub i32 %86, %85
  %87 = inttoptr i32 %tmp0_v14.i.i.i to i32*
  store i32 %tmp0_v18.i.i.i, i32* %87, align 4
  %88 = load i32, i32* %20, align 4
  %tmp0_v21.i.i.i = add i32 %88, 1
  store i32 %tmp0_v21.i.i.i, i32* %20, align 4
  %89 = load i32, i32* %34, align 8
  %90 = icmp slt i32 %tmp0_v21.i.i.i, %89
  br i1 %90, label %BB_80493E9.i.i, label %Func_allocate_two.exit

Func_allocate_two.exit:                           ; preds = %BB_80493E9.i.i, %BB_804924C.i
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 8
  %tmp2_v.i124.i = add i32 %92, -20
  %93 = inttoptr i32 %tmp2_v.i124.i to i32*
  %tmp2_v.i21.i = add i32 %92, -32
  %94 = inttoptr i32 %tmp2_v.i21.i to i32*
  %tmp2_v11.i33.i = add i32 %91, -8155
  store i32 0, i32* %93, align 4
  %tmp2_v.i77.i = add i32 %92, -28
  %95 = inttoptr i32 %tmp2_v.i77.i to i32*
  %tmp2_v12.i89.i = add i32 %91, -8138
  br label %BB_80492A5.i

.exit:                                            ; preds = %BB_80492A5.i
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

  tail call fastcc void @return_multiple_dynamic639 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack638, i32 0, i32 8092) to i32)) nounwind
