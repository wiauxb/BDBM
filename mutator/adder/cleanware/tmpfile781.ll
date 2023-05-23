; Mutation 781
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.780 = constant [4 x i8] c"%d \00"

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

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @rewind(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @fread(i32, i32, i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @tmpfile() local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @tmpfile781(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i93.i = add i32 %arg_esp, 4
  %tmp0_v.i94.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i96.i = add i32 %tmp0_v.i94.i, -4
  %3 = inttoptr i32 %tmp2_v3.i96.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i97.i = add i32 %tmp0_v.i94.i, -8
  %4 = inttoptr i32 %tmp2_v4.i97.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i99.i = add i32 %tmp0_v.i94.i, -12
  %5 = inttoptr i32 %tmp2_v5.i99.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i101.i = add i32 %tmp0_v.i94.i, -16
  %6 = inttoptr i32 %tmp2_v6.i101.i to i32*
  store i32 %tmp2_v.i93.i, i32* %6, align 16
  %tmp2_v8.i103.i = add i32 %tmp0_v.i94.i, -52
  %7 = inttoptr i32 %tmp2_v8.i103.i to i32*
  store i32 134517457, i32* %7, align 4
  %tmp2_v.i123.i = add i32 %tmp0_v.i94.i, -64
  %8 = inttoptr i32 %tmp2_v.i123.i to i32*
  store i32 40, i32* %8, align 16
  %tmp2_v2.i124.i = add i32 %tmp0_v.i94.i, -68
  %9 = inttoptr i32 %tmp2_v2.i124.i to i32*
  store i32 134517473, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i128.i = add i32 %tmp0_v.i94.i, -28
  %11 = inttoptr i32 %tmp2_v.i128.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v1.i130.i = add i32 %tmp0_v.i94.i, -36
  %12 = inttoptr i32 %tmp2_v1.i130.i to i32*
  store i32 0, i32* %12, align 4
  br label %BB_80492F0.i

BB_804930E.i:                                     ; preds = %BB_80492F0.i
  store i32 134517523, i32* %7, align 4
  %13 = tail call i32 @tmpfile()
  %tmp2_v.i71.i = add i32 %tmp0_v.i94.i, -24
  %14 = inttoptr i32 %tmp2_v.i71.i to i32*
  store i32 %13, i32* %14, align 8
  store i32 %13, i32* %7, align 4
  %tmp2_v2.i42.i = add i32 %tmp0_v.i94.i, -56
  %15 = inttoptr i32 %tmp2_v2.i42.i to i32*
  store i32 10, i32* %15, align 8
  %tmp2_v3.i.i = add i32 %tmp0_v.i94.i, -60
  %16 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 4, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %8, align 16
  store i32 134517575, i32* %9, align 4
  %arg.i.i11 = load i32, i32* %8, align 16
  %arg2.i.i = load i32, i32* %16, align 4
  %arg4.i.i = load i32, i32* %15, align 8
  %arg6.i.i = load i32, i32* %7, align 4
  %18 = tail call i32 @fwrite(i32 %arg.i.i11, i32 %arg2.i.i, i32 %arg4.i.i, i32 %arg6.i.i)
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %8, align 16
  store i32 134517589, i32* %9, align 4
  %arg.i.i12 = load i32, i32* %8, align 16
  tail call void @free(i32 %arg.i.i12)
  store i32 40, i32* %8, align 16
  store i32 134517602, i32* %9, align 4
  %arg.i.i13 = load i32, i32* %8, align 16
  %20 = tail call i32 @malloc(i32 %arg.i.i13)
  %tmp2_v.i.i = add i32 %tmp0_v.i94.i, -20
  %21 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %14, align 8
  store i32 %22, i32* %8, align 16
  store i32 134517619, i32* %9, align 4
  %arg.i.i16 = load i32, i32* %8, align 16
  tail call void @rewind(i32 %arg.i.i16)
  %23 = load i32, i32* %14, align 8
  store i32 %23, i32* %7, align 4
  store i32 10, i32* %15, align 8
  store i32 4, i32* %16, align 4
  %24 = load i32, i32* %21, align 4
  store i32 %24, i32* %8, align 16
  store i32 134517637, i32* %9, align 4
  %arg.i.i17 = load i32, i32* %8, align 16
  %arg2.i.i18 = load i32, i32* %16, align 4
  %arg4.i.i19 = load i32, i32* %15, align 8
  %arg6.i.i20 = load i32, i32* %7, align 4
  %25 = tail call i32 @fread(i32 %arg.i.i17, i32 %arg2.i.i18, i32 %arg4.i.i19, i32 %arg6.i.i20)
  %26 = load i32, i32* %14, align 8
  store i32 %26, i32* %8, align 16
  store i32 134517651, i32* %9, align 4
  %arg.i.i21 = load i32, i32* %8, align 16
  %27 = tail call i32 @fclose(i32 %arg.i.i21)
  %tmp2_v.i79.i = add i32 %tmp0_v.i94.i, -32
  %28 = inttoptr i32 %tmp2_v.i79.i to i32*
  store i32 0, i32* %28, align 16
  br label %BB_804939F.i

BB_80492F0.i:                                     ; preds = %BB_80492F0.i, %0
  %storemerge24 = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i, %BB_80492F0.i ]
  %tmp4_v.i32.i = shl i32 %storemerge24, 2
  %29 = load i32, i32* %11, align 4
  %tmp0_v3.i35.i = add i32 %29, %tmp4_v.i32.i
  %30 = inttoptr i32 %tmp0_v3.i35.i to i32*
  store i32 %storemerge24, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %tmp0_v8.i.i = add i32 %31, 1
  store i32 %tmp0_v8.i.i, i32* %12, align 4
  %32 = icmp slt i32 %tmp0_v8.i.i, 10
  br i1 %32, label %BB_80492F0.i, label %BB_804930E.i

BB_804939F.i:                                     ; preds = %BB_804939F.i, %BB_804930E.i
  %storemerge525 = phi i32 [ 0, %BB_804930E.i ], [ %tmp0_v2.i114.i, %BB_804939F.i ]
  %tmp4_v.i49.i = shl i32 %storemerge525, 2
  %33 = load i32, i32* %21, align 4
  %tmp0_v3.i52.i = add i32 %33, %tmp4_v.i49.i
  %34 = inttoptr i32 %tmp0_v3.i52.i to i32*
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %spi780 = ptrtoint[4 x i8]* @str.780 to i32
  store i32 %spi780, i32* %8, align 16
  store i32 134517696, i32* %9, align 4
  %36 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i93.i, i32 inreg noundef %tmp4_v.i49.i, i32 noundef %tmp2_v.i123.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %37 = load i32, i32* %28, align 16
  %tmp0_v2.i114.i = add i32 %37, 1
  store i32 %tmp0_v2.i114.i, i32* %28, align 16
  %38 = icmp slt i32 %tmp0_v2.i114.i, 10
  br i1 %38, label %BB_804939F.i, label %.exit

.exit:                                            ; preds = %BB_804939F.i
  store i32 10, i32* %8, align 16
  store i32 134517719, i32* %9, align 4
  %arg.i.i22 = load i32, i32* %8, align 16
  %39 = tail call i32 @putchar(i32 %arg.i.i22)  nounwind 
  %40 = load i32, i32* %21, align 4
  store i32 %40, i32* %8, align 16
  store i32 134517733, i32* %9, align 4
  %arg.i.i23 = load i32, i32* %8, align 16
  tail call void @free(i32 %arg.i.i23)
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

  tail call fastcc void @tmpfile781(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
