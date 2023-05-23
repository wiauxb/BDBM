; Mutation 552
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
@str.550 = constant [12 x i8] c"buffer: %s\0a\00"

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
define internal fastcc void @strncpy_implementation552(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i6.i = add i32 %arg_esp, 4
  %tmp0_v.i7.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i7.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i7.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i7.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i11.i = add i32 %tmp0_v.i7.i, -16
  %6 = inttoptr i32 %tmp2_v6.i11.i to i32*
  store i32 %tmp2_v.i6.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i7.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i32.i = add i32 %tmp0_v.i7.i, -20
  %10 = inttoptr i32 %tmp2_v2.i32.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i33.i = add i32 %tmp0_v.i7.i, -37
  %11 = inttoptr i32 %tmp2_v3.i33.i to i32*
  store i32 1684234849, i32* %11, align 4
  %tmp2_v4.i34.i = add i32 %tmp0_v.i7.i, -33
  %12 = inttoptr i32 %tmp2_v4.i34.i to i16*
  store i16 26213, i16* %12, align 2
  %tmp2_v5.i35.i = add i32 %tmp0_v.i7.i, -31
  %13 = inttoptr i32 %tmp2_v5.i35.i to i8*
  store i8 0, i8* %13, align 1
  %tmp2_v6.i36.i = add i32 %tmp0_v.i7.i, -48
  %14 = inttoptr i32 %tmp2_v6.i36.i to i32*
  %tmp2_v.i48.i = add i32 %tmp0_v.i7.i, -30
  store i32 0, i32* %14, align 16
  br label %BB_80491FC.i

BB_804926B.i:                                     ; preds = %BB_8049245.i
  %tmp0_v4.i.i = sext i8 %52 to i32
  store i32 %tmp0_v4.i.i, i32* %22, align 8
  %15 = load i32, i32* %50, align 4
  br label %BB_804928F.i

BB_804928F.i:                                     ; preds = %BB_8049245.i, %BB_804926B.i
  %storemerge11.sink = phi i32 [ %15, %BB_804926B.i ], [ %storemerge11, %BB_8049245.i ]
  %.sink16 = phi i32 [ 134520869, %BB_804926B.i ], [ 134520852, %BB_8049245.i ]
  %.sink = phi i32 [ 134517388, %BB_804926B.i ], [ 134517350, %BB_8049245.i ]
  store i32 %storemerge11.sink, i32* %23, align 4
  store i32 %.sink16, i32* %24, align 16
  store i32 %.sink, i32* %25, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp2_v.i91.i, i32 noundef %tmp2_v4.i66.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" 
  %17 = load i32, i32* %50, align 4
  %tmp0_v1.i.i = add i32 %17, 1
  store i32 %tmp0_v1.i.i, i32* %50, align 4
  %18 = icmp slt i32 %tmp0_v1.i.i, 10
  br i1 %18, label %BB_8049245.i, label %.exit

BB_80491FC.i:                                     ; preds = %BB_80491FC.i, %0
  %storemerge310 = phi i32 [ 0, %0 ], [ %tmp0_v5.i54.i, %BB_80491FC.i ]
  %tmp0_v2.i51.i = add i32 %tmp2_v.i48.i, %storemerge310
  %19 = inttoptr i32 %tmp0_v2.i51.i to i8*
  store i8 35, i8* %19, align 1
  %20 = load i32, i32* %14, align 16
  %tmp0_v5.i54.i = add i32 %20, 1
  store i32 %tmp0_v5.i54.i, i32* %14, align 16
  %21 = icmp slt i32 %tmp0_v5.i54.i, 10
  br i1 %21, label %BB_80491FC.i, label %BB_8049211.i

BB_8049211.i:                                     ; preds = %BB_80491FC.i
  %tmp2_v.i61.i = add i32 %tmp0_v.i7.i, -56
  %22 = inttoptr i32 %tmp2_v.i61.i to i32*
  store i32 7, i32* %22, align 8
  %tmp2_v2.i64.i = add i32 %tmp0_v.i7.i, -60
  %23 = inttoptr i32 %tmp2_v2.i64.i to i32*
  store i32 %tmp2_v3.i33.i, i32* %23, align 4
  %tmp2_v4.i66.i = add i32 %tmp0_v.i7.i, -64
  %24 = inttoptr i32 %tmp2_v4.i66.i to i32*
  store i32 %tmp2_v.i48.i, i32* %24, align 16
  %tmp2_v5.i67.i = add i32 %tmp0_v.i7.i, -68
  %25 = inttoptr i32 %tmp2_v5.i67.i to i32*
  store i32 134517283, i32* %25, align 4
  %tmp2_v.i45.i.i = add i32 %tmp0_v.i7.i, -72
  %26 = inttoptr i32 %tmp2_v.i45.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %26, align 8
  %tmp2_v1.i48.i.i = add i32 %tmp0_v.i7.i, -92
  %27 = inttoptr i32 %tmp2_v1.i48.i.i to i32*
  store i32 134517448, i32* %27, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i7.i, -76
  %28 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %23, align 4
  %30 = inttoptr i32 %29 to i8*
  %31 = load i8, i8* %30, align 1
  %.not.i43.i15.i = icmp eq i8 %31, 0
  br i1 %.not.i43.i15.i, label %BB_804932E.i.preheader.i, label %BB_80492ED.i.i

BB_804931F.i.i:                                   ; preds = %BB_804932E.i.preheader.i, %BB_804931F.i.i
  %32 = phi i32 [ %tmp0_v6.i.i.i, %BB_804931F.i.i ], [ %45, %BB_804932E.i.preheader.i ]
  %33 = load i32, i32* %24, align 16
  %tmp0_v3.i.i.i = add i32 %33, %32
  %34 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %28, align 4
  %tmp0_v6.i.i.i = add i32 %35, 1
  store i32 %tmp0_v6.i.i.i, i32* %28, align 4
  %36 = load i32, i32* %22, align 8
  %37 = icmp ult i32 %tmp0_v6.i.i.i, %36
  br i1 %37, label %BB_804931F.i.i, label %Func__strncpy.exit

BB_80492ED.i.i:                                   ; preds = %BB_80492ED.i.i, %BB_8049211.i
  %38 = phi i8 [ %44, %BB_80492ED.i.i ], [ %31, %BB_8049211.i ]
  %storemerge16.i = phi i32 [ %tmp0_v12.i.i.i, %BB_80492ED.i.i ], [ 0, %BB_8049211.i ]
  %39 = load i32, i32* %24, align 16
  %tmp0_v8.i19.i.i = add i32 %39, %storemerge16.i
  %40 = inttoptr i32 %tmp0_v8.i19.i.i to i8*
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %28, align 4
  %tmp0_v12.i.i.i = add i32 %41, 1
  store i32 %tmp0_v12.i.i.i, i32* %28, align 4
  %42 = load i32, i32* %23, align 4
  %tmp0_v3.i42.i.i = add i32 %42, %tmp0_v12.i.i.i
  %43 = inttoptr i32 %tmp0_v3.i42.i.i to i8*
  %44 = load i8, i8* %43, align 1
  %.not.i43.i.i = icmp eq i8 %44, 0
  br i1 %.not.i43.i.i, label %BB_804932E.i.preheader.i, label %BB_80492ED.i.i

BB_804932E.i.preheader.i:                         ; preds = %BB_80492ED.i.i, %BB_8049211.i
  %45 = phi i32 [ 0, %BB_8049211.i ], [ %tmp0_v12.i.i.i, %BB_80492ED.i.i ]
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i6.i, %BB_8049211.i ], [ %39, %BB_80492ED.i.i ]
  %.lcssa.i = phi i32 [ %29, %BB_8049211.i ], [ %42, %BB_80492ED.i.i ]
  %46 = load i32, i32* %22, align 8
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %BB_804931F.i.i, label %Func__strncpy.exit

Func__strncpy.exit:                               ; preds = %BB_804932E.i.preheader.i, %BB_804931F.i.i
  %r_edx.0.lcssa.i = phi i32 [ %.lcssa.i, %BB_804932E.i.preheader.i ], [ %33, %BB_804931F.i.i ]
  %48 = load i32, i32* %26, align 8
  %tmp2_v.i91.i = add i32 %48, -22
  store i32 %tmp2_v.i91.i, i32* %23, align 4
  %spi550 = ptrtoint[12 x i8]* @str.550 to i32
  store i32 %spi550, i32* %24, align 16
  store i32 134517305, i32* %25, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v4.i66.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v.i71.i = add i32 %48, -36
  %50 = inttoptr i32 %tmp2_v.i71.i to i32*
  store i32 0, i32* %50, align 4
  br label %BB_8049245.i

BB_8049245.i:                                     ; preds = %Func__strncpy.exit, %BB_804928F.i
  %storemerge11 = phi i32 [ 0, %Func__strncpy.exit ], [ %tmp0_v1.i.i, %BB_804928F.i ]
  %tmp0_v2.i107.i = add i32 %storemerge11, %tmp2_v.i91.i
  %51 = inttoptr i32 %tmp0_v2.i107.i to i8*
  %52 = load i8, i8* %51, align 1
  %.not.i.i = icmp eq i8 %52, 0
  br i1 %.not.i.i, label %BB_804928F.i, label %BB_804926B.i

.exit:                                            ; preds = %BB_804928F.i
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

  tail call fastcc void @strncpy_implementation552(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
