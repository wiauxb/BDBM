; Mutation 918
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack917 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.913 = constant [11 x i8] c"a[2] = %d\0a\00"
@str.914 = constant [12 x i8] c"%d[a] = %d\0a\00"
@str.915 = constant [11 x i8] c"1[a] = %d\0a\00"
@str.916 = constant [11 x i8] c"a[2] = %d\0a\00"

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

; Function Attrs: norecurse nounwind
define internal fastcc void @array_index_trick918(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
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
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i86.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i90.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i90.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i91.i = add i32 %tmp0_v.i.i, -40
  %11 = inttoptr i32 %tmp2_v3.i91.i to i32*
  store i32 10, i32* %11, align 8
  %tmp2_v4.i92.i = add i32 %tmp0_v.i.i, -36
  %12 = inttoptr i32 %tmp2_v4.i92.i to i32*
  store i32 20, i32* %12, align 4
  %tmp2_v5.i93.i = add i32 %tmp0_v.i.i, -32
  %13 = inttoptr i32 %tmp2_v5.i93.i to i32*
  store i32 30, i32* %13, align 16
  %tmp2_v6.i94.i = add i32 %tmp0_v.i.i, -28
  %14 = inttoptr i32 %tmp2_v6.i94.i to i32*
  store i32 40, i32* %14, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -24
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 50, i32* %15, align 8
  %16 = load i32, i32* %13, align 16
  %tmp2_v11.i98.i = add i32 %tmp0_v.i.i, -60
  %17 = inttoptr i32 %tmp2_v11.i98.i to i32*
  store i32 %16, i32* %17, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -64
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  %spi.bis.916 = ptrtoint[11 x i8]* @str.916 to i32
  store i32 %spi.bis.916, i32* %18, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -68
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517272, i32* %19, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %17, align 4
  %spi.bis.915 = ptrtoint[11 x i8]* @str.915 to i32
  store i32 %spi.bis.915, i32* %18, align 16
  store i32 134517294, i32* %19, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %22, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %25 = lshr i64 %24, 32
  %tmp2_v.i48.i = add i32 %tmp0_v.i.i, -48
  %26 = inttoptr i32 %tmp2_v.i48.i to i32*
  store i32 0, i32* %26, align 16
  br label %BB_804923A.i

BB_804925A.i:                                     ; preds = %BB_8049251.i, %BB_804925A.i
  %r_esp.0.in14 = phi i32 [ %tmp2_v13.i.i, %BB_8049251.i ], [ %r_esp.0.in, %BB_804925A.i ]
  %.pn813 = phi i32 [ %44, %BB_8049251.i ], [ %36, %BB_804925A.i ]
  %mrv.i3.pn12 = phi { i32, i32 } [ %mrv.i3, %BB_8049251.i ], [ %.pn, %BB_804925A.i ]
  %r_edx.011 = phi i32 [ %tmp2_v1.i52.i, %BB_8049251.i ], [ %36, %BB_804925A.i ]
  %storemerge10 = phi i32 [ 0, %BB_8049251.i ], [ %tmp0_v2.i30.i, %BB_804925A.i ]
  %.pn = insertvalue { i32, i32 } %mrv.i3.pn12, i32 %.pn813, 1
  %tmp4_v.i.i = shl i32 %storemerge10, 2
  %tmp2_v2.i.i = add i32 %tmp4_v.i.i, %tmp2_v3.i91.i
  %27 = inttoptr i32 %tmp2_v2.i.i to i32*
  %28 = load i32, i32* %27, align 4
  %tmp2_v5.i8.i = add i32 %r_esp.0.in14, 8
  %29 = inttoptr i32 %tmp2_v5.i8.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %45, align 4
  %tmp2_v8.i11.i = add i32 %r_esp.0.in14, 4
  %31 = inttoptr i32 %tmp2_v8.i11.i to i32*
  store i32 %30, i32* %31, align 4
  %32 = inttoptr i32 %r_esp.0.in14 to i32*
  %spi.bis.914 = ptrtoint[12 x i8]* @str.914 to i32
  store i32 %spi.bis.914, i32* %32, align 4
  %tmp2_v11.i.i = add i32 %r_esp.0.in14, -4
  %33 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517364, i32* %33, align 4
  %34 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.011, i32 noundef %r_esp.0.in14, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %45, align 4
  %tmp0_v2.i30.i = add i32 %37, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i3.pn12, 0
  store i32 %tmp0_v2.i30.i, i32* %45, align 4
  %38 = icmp slt i32 %tmp0_v2.i30.i, 5
  br i1 %38, label %BB_804925A.i, label %BB_8049281.i

BB_8049281.i:                                     ; preds = %BB_804925A.i
  %39 = trunc i64 %35 to i32
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i3.pn12, 0
  store i32 200, i32* %13, align 16
  %tmp2_v3.i19.i = add i32 %r_esp.0.in.le, 4
  %40 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 200, i32* %40, align 4
  %41 = inttoptr i32 %r_esp.0.in.le to i32*
  %spi.bis.913 = ptrtoint[11 x i8]* @str.913 to i32
  store i32 %spi.bis.913, i32* %41, align 4
  %tmp2_v6.i23.i = add i32 %r_esp.0.in.le, -4
  %42 = inttoptr i32 %tmp2_v6.i23.i to i32*
  store i32 134517403, i32* %42, align 4
  %43 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %39, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_8049251.i:                                     ; preds = %BB_804923A.i
  %mrv.i3 = insertvalue { i32, i32 } undef, i32 %tmp2_v13.i.i, 0
  %44 = trunc i64 %25 to i32
  %tmp2_v.i25.i = add i32 %tmp0_v.i.i, -44
  %45 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 0, i32* %45, align 4
  br label %BB_804925A.i

BB_804923A.i:                                     ; preds = %BB_804923A.i, %0
  %storemerge19 = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i, %BB_804923A.i ]
  %tmp2_v1.i52.i = add nsw i32 %storemerge19, 4
  %tmp4_v.i56.i = shl i32 %storemerge19, 2
  %tmp2_v5.i57.i = add i32 %tmp4_v.i56.i, %tmp2_v3.i91.i
  %46 = inttoptr i32 %tmp2_v5.i57.i to i32*
  store i32 %tmp2_v1.i52.i, i32* %46, align 4
  %47 = load i32, i32* %26, align 16
  %tmp0_v8.i.i = add i32 %47, 1
  store i32 %tmp0_v8.i.i, i32* %26, align 16
  %48 = icmp slt i32 %tmp0_v8.i.i, 5
  br i1 %48, label %BB_804923A.i, label %BB_8049251.i
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

  tail call fastcc void @array_index_trick918 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack917, i32 0, i32 8092) to i32)) nounwind
