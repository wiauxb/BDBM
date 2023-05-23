; Mutation 426
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
@str.424 = constant [15 x i8] c"source[%d]=%d\0a\00"
@str.425 = constant [20 x i8] c"destination[%d]=%d\0a\00"

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

; Function Attrs: norecurse nounwind
define internal fastcc void @memmove426(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i50.i = add i32 %arg_esp, 4
  %tmp0_v.i51.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i53.i = add i32 %tmp0_v.i51.i, -4
  %3 = inttoptr i32 %tmp2_v3.i53.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i54.i = add i32 %tmp0_v.i51.i, -8
  %4 = inttoptr i32 %tmp2_v4.i54.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i56.i = add i32 %tmp0_v.i51.i, -12
  %5 = inttoptr i32 %tmp2_v5.i56.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i58.i = add i32 %tmp0_v.i51.i, -16
  %6 = inttoptr i32 %tmp2_v6.i58.i to i32*
  store i32 %tmp2_v.i50.i, i32* %6, align 16
  %tmp2_v8.i60.i = add i32 %tmp0_v.i51.i, -116
  %7 = inttoptr i32 %tmp2_v8.i60.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i37.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i41.i = add i32 %tmp0_v.i51.i, -20
  %10 = inttoptr i32 %tmp2_v2.i41.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i42.i = add i32 %tmp0_v.i51.i, -100
  %11 = inttoptr i32 %tmp2_v3.i42.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i51.i, -96
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 2, i32* %12, align 16
  %tmp2_v5.i43.i = add i32 %tmp0_v.i51.i, -92
  %13 = inttoptr i32 %tmp2_v5.i43.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i44.i = add i32 %tmp0_v.i51.i, -88
  %14 = inttoptr i32 %tmp2_v6.i44.i to i32*
  store i32 4, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i51.i, -84
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i45.i = add i32 %tmp0_v.i51.i, -80
  %16 = inttoptr i32 %tmp2_v8.i45.i to i32*
  store i32 6, i32* %16, align 16
  %tmp2_v9.i46.i = add i32 %tmp0_v.i51.i, -76
  %17 = inttoptr i32 %tmp2_v9.i46.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i47.i = add i32 %tmp0_v.i51.i, -72
  %18 = inttoptr i32 %tmp2_v10.i47.i to i32*
  store i32 8, i32* %18, align 8
  %tmp2_v11.i48.i = add i32 %tmp0_v.i51.i, -68
  %19 = inttoptr i32 %tmp2_v11.i48.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i51.i, -64
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 10, i32* %20, align 16
  %21 = load i32, i32* %11, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i51.i, -60
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %12, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i51.i, -56
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %13, align 4
  %tmp2_v21.i.i = add i32 %tmp0_v.i51.i, -52
  %26 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %14, align 8
  %tmp2_v24.i.i = add i32 %tmp0_v.i51.i, -48
  %28 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %15, align 4
  %tmp2_v27.i.i = add i32 %tmp0_v.i51.i, -44
  %30 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %16, align 16
  %tmp2_v30.i.i = add i32 %tmp0_v.i51.i, -40
  %32 = inttoptr i32 %tmp2_v30.i.i to i32*
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %17, align 4
  %tmp2_v33.i.i = add i32 %tmp0_v.i51.i, -36
  %34 = inttoptr i32 %tmp2_v33.i.i to i32*
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %18, align 8
  %tmp2_v36.i.i = add i32 %tmp0_v.i51.i, -32
  %36 = inttoptr i32 %tmp2_v36.i.i to i32*
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* %19, align 4
  %tmp2_v39.i.i = add i32 %tmp0_v.i51.i, -28
  %38 = inttoptr i32 %tmp2_v39.i.i to i32*
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %20, align 16
  %tmp2_v42.i.i = add i32 %tmp0_v.i51.i, -24
  %40 = inttoptr i32 %tmp2_v42.i.i to i32*
  store i32 %39, i32* %40, align 8
  %tmp2_v43.i.i = add i32 %tmp0_v.i51.i, -108
  %41 = inttoptr i32 %tmp2_v43.i.i to i32*
  %tmp2_v5.i.i = add i32 %tmp0_v.i51.i, -120
  %42 = inttoptr i32 %tmp2_v5.i.i to i32*
  %tmp2_v8.i.i = add i32 %tmp0_v.i51.i, -124
  %43 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v10.i.i = add i32 %tmp0_v.i51.i, -128
  %44 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v11.i.i = add i32 %tmp0_v.i51.i, -132
  %45 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %41, align 4
  br label %BB_804926D.i

BB_804926D.i:                                     ; preds = %BB_804926D.i, %0
  %r_edx.08 = phi i32 [ 0, %0 ], [ %51, %BB_804926D.i ]
  %storemerge7 = phi i32 [ 0, %0 ], [ %tmp0_v2.i12.i, %BB_804926D.i ]
  %tmp4_v.i5.i = shl i32 %storemerge7, 2
  %tmp2_v2.i.i = add i32 %tmp4_v.i5.i, %tmp2_v15.i.i
  %46 = inttoptr i32 %tmp2_v2.i.i to i32*
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %42, align 8
  %48 = load i32, i32* %41, align 4
  store i32 %48, i32* %43, align 4
  %spi425 = ptrtoint[20 x i8]* @str.425 to i32
  store i32 %spi425, i32* %44, align 16
  store i32 134517383, i32* %45, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i50.i, i32 inreg noundef %r_edx.08, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %41, align 4
  %tmp0_v2.i12.i = add i32 %52, 1
  store i32 %tmp0_v2.i12.i, i32* %41, align 4
  %53 = icmp slt i32 %tmp0_v2.i12.i, 10
  br i1 %53, label %BB_804926D.i, label %BB_8049294.i

BB_8049294.i:                                     ; preds = %BB_804926D.i
  %54 = trunc i64 %50 to i32
  %tmp2_v.i7.i = add i32 %tmp0_v.i51.i, -104
  %55 = inttoptr i32 %tmp2_v.i7.i to i32*
  store i32 0, i32* %55, align 8
  br label %BB_804929D.i

BB_804929D.i:                                     ; preds = %BB_804929D.i, %BB_8049294.i
  %r_edx.110 = phi i32 [ %54, %BB_8049294.i ], [ %61, %BB_804929D.i ]
  %storemerge19 = phi i32 [ 0, %BB_8049294.i ], [ %tmp0_v2.i20.i, %BB_804929D.i ]
  %tmp4_v.i65.i = shl i32 %storemerge19, 2
  %tmp2_v2.i66.i = add i32 %tmp4_v.i65.i, %tmp2_v3.i42.i
  %56 = inttoptr i32 %tmp2_v2.i66.i to i32*
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %42, align 8
  %58 = load i32, i32* %55, align 8
  store i32 %58, i32* %43, align 4
  %spi424 = ptrtoint[15 x i8]* @str.424 to i32
  store i32 %spi424, i32* %44, align 16
  store i32 134517431, i32* %45, align 4
  %59 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i50.i, i32 inreg noundef %r_edx.110, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %60 = lshr i64 %59, 32
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %55, align 8
  %tmp0_v2.i20.i = add i32 %62, 1
  store i32 %tmp0_v2.i20.i, i32* %55, align 8
  %63 = icmp slt i32 %tmp0_v2.i20.i, 10
  br i1 %63, label %BB_804929D.i, label %.exit

.exit:                                            ; preds = %BB_804929D.i
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

  tail call fastcc void @memmove426(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
