; Mutation 464
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack463 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.454 = constant [12 x i8] c"LENGTH: %d\0a\00"
@str.455 = constant [20 x i8] c"dynamic_length: %d\0a\00"
@str.456 = constant [27 x i8] c"sizeof(dynamic_array): %d\0a\00"
@str.457 = constant [22 x i8] c"sizeof(array[0]): %d\0a\00"
@str.458 = constant [20 x i8] c"sizeof(double): %d\0a\00"
@str.459 = constant [17 x i8] c"sizeof(int): %d\0a\00"
@str.460 = constant [19 x i8] c"sizeof(array): %d\0a\00"
@str.461 = constant [12 x i8] c"length: %d\0a\00"
@str.462 = constant [16 x i8] c"array[%d] = %d\0a\00"

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
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @find_array_length464(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i81.i = add i32 %arg_esp, 4
  %tmp0_v.i82.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i84.i = add i32 %tmp0_v.i82.i, -4
  %3 = inttoptr i32 %tmp2_v3.i84.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i85.i = add i32 %tmp0_v.i82.i, -8
  %4 = inttoptr i32 %tmp2_v4.i85.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i87.i = add i32 %tmp0_v.i82.i, -12
  %5 = inttoptr i32 %tmp2_v5.i87.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i89.i = add i32 %tmp0_v.i82.i, -16
  %6 = inttoptr i32 %tmp2_v6.i89.i to i32*
  store i32 %tmp2_v.i81.i, i32* %6, align 16
  %tmp2_v8.i91.i = add i32 %tmp0_v.i82.i, -100
  %7 = inttoptr i32 %tmp2_v8.i91.i to i32*
  store i32 134517331, i32* %7, align 4
  %tmp2_v.i107.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i107.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i110.i = add i32 %tmp0_v.i82.i, -84
  %10 = inttoptr i32 %tmp2_v2.i110.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp4_v.i111.i.b = load i1, i1* @segs.0, align 1
  %11 = inttoptr i32 %arg_esp to i32*
  %12 = load i32, i32* %11, align 4
  %tmp2_v5.i114.i = add i32 %tmp0_v.i82.i, -20
  %13 = inttoptr i32 %tmp2_v5.i114.i to i32*
  store i32 %12, i32* %13, align 4
  %tmp2_v6.i115.i = add i32 %tmp0_v.i82.i, -72
  %14 = inttoptr i32 %tmp2_v6.i115.i to i32*
  store i32 9, i32* %14, align 8
  %tmp2_v7.i116.i = add i32 %tmp0_v.i82.i, -56
  %15 = inttoptr i32 %tmp2_v7.i116.i to i32*
  store i32 1, i32* %15, align 8
  %tmp2_v8.i117.i = add i32 %tmp0_v.i82.i, -52
  %16 = inttoptr i32 %tmp2_v8.i117.i to i32*
  store i32 2, i32* %16, align 4
  %tmp2_v9.i118.i = add i32 %tmp0_v.i82.i, -48
  %17 = inttoptr i32 %tmp2_v9.i118.i to i32*
  store i32 3, i32* %17, align 16
  %tmp2_v10.i119.i = add i32 %tmp0_v.i82.i, -44
  %18 = inttoptr i32 %tmp2_v10.i119.i to i32*
  store i32 4, i32* %18, align 4
  %tmp2_v11.i120.i = add i32 %tmp0_v.i82.i, -40
  %19 = inttoptr i32 %tmp2_v11.i120.i to i32*
  store i32 5, i32* %19, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i82.i, -36
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i82.i, -32
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 7, i32* %21, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i82.i, -28
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 8, i32* %22, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i82.i, -24
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 9, i32* %23, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i82.i, -68
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 9, i32* %24, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i82.i, -76
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  %tmp2_v5.i.i = add i32 %tmp0_v.i82.i, -104
  %26 = inttoptr i32 %tmp2_v5.i.i to i32*
  %tmp2_v8.i.i = add i32 %tmp0_v.i82.i, -108
  %27 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v10.i.i = add i32 %tmp0_v.i82.i, -112
  %28 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v11.i.i = add i32 %tmp0_v.i82.i, -116
  %29 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %25, align 4
  br label %BB_80492C2.i

BB_80492C2.i:                                     ; preds = %BB_80492C2.i, %0
  %r_edx.015 = phi i32 [ 0, %0 ], [ %35, %BB_80492C2.i ]
  %storemerge14 = phi i32 [ 0, %0 ], [ %tmp0_v2.i.i, %BB_80492C2.i ]
  %tmp4_v.i.i = shl nuw nsw i32 %storemerge14, 2
  %tmp2_v2.i8.i = add i32 %tmp4_v.i.i, %tmp2_v7.i116.i
  %30 = inttoptr i32 %tmp2_v2.i8.i to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %26, align 8
  %32 = load i32, i32* %25, align 4
  store i32 %32, i32* %27, align 4
  %spi.bis.462 = ptrtoint[16 x i8]* @str.462 to i32
  store i32 %spi.bis.462, i32* %28, align 16
  store i32 134517468, i32* %29, align 4
  %33 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %r_edx.015, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %34 = lshr i64 %33, 32
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %25, align 4
  %tmp0_v2.i.i = add i32 %36, 1
  store i32 %tmp0_v2.i.i, i32* %25, align 4
  %37 = icmp ult i32 %tmp0_v2.i.i, 9
  br i1 %37, label %BB_80492C2.i, label %BB_80492EB.i

BB_80492EB.i:                                     ; preds = %BB_80492C2.i
  %38 = trunc i64 %34 to i32
  %39 = load i32, i32* %24, align 4
  store i32 %39, i32* %27, align 4
  %spi.bis.461 = ptrtoint[12 x i8]* @str.461 to i32
  store i32 %spi.bis.461, i32* %28, align 16
  store i32 134517501, i32* %29, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %38, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  store i32 36, i32* %27, align 4
  %spi.bis.460 = ptrtoint[19 x i8]* @str.460 to i32
  store i32 %spi.bis.460, i32* %28, align 16
  store i32 134517521, i32* %29, align 4
  %43 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %42, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  store i32 4, i32* %27, align 4
  %spi.bis.459 = ptrtoint[17 x i8]* @str.459 to i32
  store i32 %spi.bis.459, i32* %28, align 16
  store i32 134517541, i32* %29, align 4
  %46 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %45, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %47 = lshr i64 %46, 32
  %48 = trunc i64 %47 to i32
  store i32 8, i32* %27, align 4
  %spi.bis.458 = ptrtoint[20 x i8]* @str.458 to i32
  store i32 %spi.bis.458, i32* %28, align 16
  store i32 134517561, i32* %29, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %48, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  store i32 4, i32* %27, align 4
  %spi.bis.457 = ptrtoint[22 x i8]* @str.457 to i32
  store i32 %spi.bis.457, i32* %28, align 16
  store i32 134517581, i32* %29, align 4
  %52 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %51, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  store i32 400, i32* %28, align 16
  store i32 134517597, i32* %29, align 4
  %arg.i.i = load i32, i32* %28, align 16
  %55 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i53.i = add i32 %tmp0_v.i82.i, -64
  %56 = inttoptr i32 %tmp2_v.i53.i to i32*
  store i32 %55, i32* %56, align 16
  store i32 4, i32* %27, align 4
  %spi.bis.456 = ptrtoint[27 x i8]* @str.456 to i32
  store i32 %spi.bis.456, i32* %28, align 16
  store i32 134517620, i32* %29, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %54, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %tmp2_v.i28.i = add i32 %tmp0_v.i82.i, -60
  %60 = inttoptr i32 %tmp2_v.i28.i to i32*
  store i32 1, i32* %60, align 4
  store i32 1, i32* %27, align 4
  %spi.bis.455 = ptrtoint[20 x i8]* @str.455 to i32
  store i32 %spi.bis.455, i32* %28, align 16
  store i32 134517648, i32* %29, align 4
  %61 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %59, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %62 = load i32, i32* %56, align 16
  store i32 %62, i32* %28, align 16
  store i32 134517662, i32* %29, align 4
  %arg.i.i13 = load i32, i32* %28, align 16
  tail call void @free(i32 %arg.i.i13)
  store i32 %tmp2_v7.i116.i, i32* %28, align 16
  store i32 134517677, i32* %29, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i82.i, -120
  %63 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i85.i, i32* %63, align 8
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i82.i, -124
  %64 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 134529024, i32* %64, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i82.i, -148
  %65 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517254, i32* %65, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i82.i, -132
  %66 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %28, align 16
  %68 = inttoptr i32 %67 to i32*
  store i32 5, i32* %68, align 4
  %69 = load i32, i32* %66, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i82.i, -156
  %70 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %69, i32* %70, align 4
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i82.i, -160
  %71 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %spi.bis.454 = ptrtoint[12 x i8]* @str.454 to i32
  store i32 %spi.bis.454, i32* %71, align 16
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i82.i, -164
  %72 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134517295, i32* %72, align 4
  %73 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef 134520840, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @find_array_length464 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack463, i32 0, i32 8092) to i32)) nounwind
