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
define internal fastcc void @find_array_lengthm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -100
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517331, i32* %7, align 4
  %tmp2_v.i87.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i87.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i90.i = add i32 %tmp0_v.i.i, -84
  %10 = inttoptr i32 %tmp2_v2.i90.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp4_v.i91.i.b = load i1, i1* @segs.0, align 1
  %11 = select i1 %tmp4_v.i91.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %12 = load i32, i32* %11, align 4
  %tmp2_v5.i94.i = add i32 %tmp0_v.i.i, -20
  %13 = inttoptr i32 %tmp2_v5.i94.i to i32*
  store i32 %12, i32* %13, align 4
  %tmp2_v6.i95.i = add i32 %tmp0_v.i.i, -72
  %14 = inttoptr i32 %tmp2_v6.i95.i to i32*
  store i32 9, i32* %14, align 8
  %tmp2_v7.i96.i = add i32 %tmp0_v.i.i, -56
  %15 = inttoptr i32 %tmp2_v7.i96.i to i32*
  store i32 1, i32* %15, align 8
  %tmp2_v8.i97.i = add i32 %tmp0_v.i.i, -52
  %16 = inttoptr i32 %tmp2_v8.i97.i to i32*
  store i32 2, i32* %16, align 4
  %tmp2_v9.i98.i = add i32 %tmp0_v.i.i, -48
  %17 = inttoptr i32 %tmp2_v9.i98.i to i32*
  store i32 3, i32* %17, align 16
  %tmp2_v10.i99.i = add i32 %tmp0_v.i.i, -44
  %18 = inttoptr i32 %tmp2_v10.i99.i to i32*
  store i32 4, i32* %18, align 4
  %tmp2_v11.i100.i = add i32 %tmp0_v.i.i, -40
  %19 = inttoptr i32 %tmp2_v11.i100.i to i32*
  store i32 5, i32* %19, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -36
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -32
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 7, i32* %21, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -28
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 8, i32* %22, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -24
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 9, i32* %23, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i.i, -68
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 9, i32* %24, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i.i, -76
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  %tmp2_v5.i37.i = add i32 %tmp0_v.i.i, -104
  %26 = inttoptr i32 %tmp2_v5.i37.i to i32*
  %tmp2_v8.i40.i = add i32 %tmp0_v.i.i, -108
  %27 = inttoptr i32 %tmp2_v8.i40.i to i32*
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -112
  %28 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -116
  %29 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %25, align 4
  br label %BB_80492C2.i

BB_80492EB.i:                                     ; preds = %BB_80492C2.i
  %30 = trunc i64 %70 to i32
  %31 = load i32, i32* %24, align 4
  store i32 %31, i32* %27, align 4
  store i32 134520868, i32* %28, align 16
  store i32 134517501, i32* %29, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %30, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  store i32 36, i32* %27, align 4
  store i32 134520880, i32* %28, align 16
  store i32 134517521, i32* %29, align 4
  %35 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %34, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i32
  store i32 4, i32* %27, align 4
  store i32 134520899, i32* %28, align 16
  store i32 134517541, i32* %29, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %37, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  store i32 8, i32* %27, align 4
  store i32 134520916, i32* %28, align 16
  store i32 134517561, i32* %29, align 4
  %41 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %40, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  store i32 4, i32* %27, align 4
  store i32 134520936, i32* %28, align 16
  store i32 134517581, i32* %29, align 4
  %44 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %43, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %45 to i32
  store i32 400, i32* %28, align 16
  store i32 134517597, i32* %29, align 4
  %arg.i.i = load i32, i32* %28, align 16
  %47 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i4.i = add i32 %tmp0_v.i.i, -64
  %48 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %47, i32* %48, align 16
  store i32 4, i32* %27, align 4
  store i32 134520958, i32* %28, align 16
  store i32 134517620, i32* %29, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %46, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  %tmp2_v.i59.i = add i32 %tmp0_v.i.i, -60
  %52 = inttoptr i32 %tmp2_v.i59.i to i32*
  store i32 1, i32* %52, align 4
  store i32 1, i32* %27, align 4
  store i32 134520985, i32* %28, align 16
  store i32 134517648, i32* %29, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %51, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %54 = load i32, i32* %48, align 16
  store i32 %54, i32* %28, align 16
  store i32 134517662, i32* %29, align 4
  %arg.i.i10 = load i32, i32* %28, align 16
  tail call void @free(i32 %arg.i.i10)
  store i32 %tmp2_v7.i96.i, i32* %28, align 16
  store i32 134517677, i32* %29, align 4
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i.i, -120
  %55 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %55, align 8
  %tmp2_v1.i10.i.i = add i32 %tmp0_v.i.i, -124
  %56 = inttoptr i32 %tmp2_v1.i10.i.i to i32*
  store i32 134529024, i32* %56, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -148
  %57 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517254, i32* %57, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -132
  %58 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %28, align 16
  %60 = inttoptr i32 %59 to i32*
  store i32 5, i32* %60, align 4
  %61 = load i32, i32* %58, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i.i, -156
  %62 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %61, i32* %62, align 4
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -160
  %63 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134520840, i32* %63, align 16
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -164
  %64 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134517295, i32* %64, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 134520840, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_80492C2.i:                                     ; preds = %BB_80492C2.i, %0
  %r_edx.014 = phi i32 [ 0, %0 ], [ %71, %BB_80492C2.i ]
  %storemerge13 = phi i32 [ 0, %0 ], [ %tmp0_v2.i71.i, %BB_80492C2.i ]
  %tmp4_v.i33.i = shl nuw nsw i32 %storemerge13, 2
  %tmp2_v2.i34.i = add i32 %tmp4_v.i33.i, %tmp2_v7.i96.i
  %66 = inttoptr i32 %tmp2_v2.i34.i to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %26, align 8
  %68 = load i32, i32* %25, align 4
  store i32 %68, i32* %27, align 4
  store i32 134520852, i32* %28, align 16
  store i32 134517468, i32* %29, align 4
  %69 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.014, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %70 = lshr i64 %69, 32
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %25, align 4
  %tmp0_v2.i71.i = add i32 %72, 1
  store i32 %tmp0_v2.i71.i, i32* %25, align 4
  %73 = icmp ult i32 %tmp0_v2.i71.i, 9
  br i1 %73, label %BB_80492C2.i, label %BB_80492EB.i
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

  tail call fastcc void @find_array_lengthm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
