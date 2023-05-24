; Mutation 427
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack426 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.425 = constant [16 x i8] c"Before:\0a\0a'%s'\0a\0a\00"

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
define internal fastcc void @remove_space_chars427(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i31.i = add i32 %arg_esp, 4
  %tmp0_v.i32.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i33.i = add i32 %tmp0_v.i32.i, -4
  %2 = inttoptr i32 %tmp2_v3.i33.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i34.i = add i32 %tmp0_v.i32.i, -8
  %3 = inttoptr i32 %tmp2_v4.i34.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i36.i = add i32 %tmp0_v.i32.i, -12
  %4 = inttoptr i32 %tmp2_v5.i36.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i38.i = add i32 %tmp0_v.i32.i, -16
  %5 = inttoptr i32 %tmp2_v6.i38.i to i32*
  store i32 %tmp2_v.i31.i, i32* %5, align 16
  %tmp2_v8.i39.i = add i32 %tmp0_v.i32.i, -52
  %6 = inttoptr i32 %tmp2_v8.i39.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i32.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i32.i, -47
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1953701953, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i32.i, -43
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1735289202, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i32.i, -39
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1953068832, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i32.i, -35
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1886593128, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i32.i, -31
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1936024417, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i32.i, -27
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 544106784, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i32.i, -23
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 29801, i16* %16, align 2
  %tmp2_v10.i.i = add i32 %tmp0_v.i32.i, -21
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 1
  %tmp2_v13.i.i = add i32 %tmp0_v.i32.i, -60
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %18, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i32.i, -64
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  %spi425 = ptrtoint[16 x i8]* @str.425 to i32
  store i32 %spi425, i32* %19, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i32.i, -68
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517321, i32* %20, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i31.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  store i32 134517336, i32* %20, align 4
  %tmp2_v.i31.i.i = add i32 %tmp0_v.i32.i, -72
  %22 = inttoptr i32 %tmp2_v.i31.i.i to i32*
  store i32 %tmp2_v4.i34.i, i32* %22, align 8
  %tmp2_v1.i33.i.i = add i32 %tmp0_v.i32.i, -76
  %23 = inttoptr i32 %tmp2_v1.i33.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i35.i.i = add i32 %tmp0_v.i32.i, -100
  %24 = inttoptr i32 %tmp2_v2.i35.i.i to i32*
  store i32 134517409, i32* %24, align 4
  %25 = load i32, i32* %19, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i32.i, -112
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i32.i, -116
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517427, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i32.i, -84
  %29 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i32.i, -92
  %30 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %30, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i32.i, -88
  %31 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %29, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %BB_80492C9.i.i, label %Func_remove_spaces.exit

BB_80492D8.i.i:                                   ; preds = %BB_80492C9.i.i
  %34 = load i32, i32* %30, align 4
  %tmp0_v8.i.i.i = add i32 %34, %40
  %35 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %42, i8* %35, align 1
  %36 = load i32, i32* %30, align 4
  %tmp0_v12.i.i.i = add i32 %36, 1
  store i32 %tmp0_v12.i.i.i, i32* %30, align 4
  %.pre.i = load i32, i32* %31, align 8
  br label %BB_80492F1.i.i

BB_80492F1.i.i:                                   ; preds = %BB_80492C9.i.i, %BB_80492D8.i.i
  %37 = phi i32 [ %storemerge19.i, %BB_80492C9.i.i ], [ %.pre.i, %BB_80492D8.i.i ]
  %r_ecx.0.i = phi i32 [ %r_ecx.120.i, %BB_80492C9.i.i ], [ %34, %BB_80492D8.i.i ]
  %tmp0_v1.i15.i.i = add i32 %37, 1
  store i32 %tmp0_v1.i15.i.i, i32* %31, align 8
  %38 = load i32, i32* %29, align 4
  %39 = icmp slt i32 %tmp0_v1.i15.i.i, %38
  br i1 %39, label %BB_80492C9.i.i, label %Func_remove_spaces.exit

BB_80492C9.i.i:                                   ; preds = %BB_80492F1.i.i, %.exit
  %r_ecx.120.i = phi i32 [ %r_ecx.0.i, %BB_80492F1.i.i ], [ %tmp2_v.i31.i, %.exit ]
  %storemerge19.i = phi i32 [ %tmp0_v1.i15.i.i, %BB_80492F1.i.i ], [ 0, %.exit ]
  %40 = load i32, i32* %19, align 16
  %tmp0_v3.i27.i.i = add i32 %40, %storemerge19.i
  %41 = inttoptr i32 %tmp0_v3.i27.i.i to i8*
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 32
  br i1 %43, label %BB_80492F1.i.i, label %BB_80492D8.i.i

Func_remove_spaces.exit:                          ; preds = %BB_80492F1.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i31.i, %.exit ], [ %r_ecx.0.i, %BB_80492F1.i.i ]
  %44 = load i32, i32* %30, align 4
  %45 = load i32, i32* %19, align 16
  %tmp0_v3.i48.i.i = add i32 %45, %44
  %46 = inttoptr i32 %tmp0_v3.i48.i.i to i8*
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* %22, align 8
  %tmp2_v.i5.i = add i32 %48, -39
  store i32 %tmp2_v.i5.i, i32* %18, align 4
  %tmp2_v3.i8.i = add i32 %47, -8168
  store i32 %tmp2_v3.i8.i, i32* %19, align 16
  store i32 134517358, i32* %20, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %44, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @remove_space_chars427 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack426, i32 0, i32 8092) to i32)) nounwind
