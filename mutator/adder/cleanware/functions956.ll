; Mutation 956
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack955 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.948 = constant [9 x i8] c"\49\4e\54\3a\20\25\64\0a\00"
@str.bis.949 = constant [4 x i8] c"\05\21\2d\00"
@str.bis.950 = constant [17 x i8] c"\4d\75\6c\74\20\6f\75\74\70\75\74\3a\20\25\64\0a\00"
@str.bis.951 = constant [4 x i8] c"\05\68\2d\00"
@str.bis.952 = constant [12 x i8] c"\4f\75\74\70\75\74\3a\20\25\64\0a\00"
@str.bis.953 = constant [27 x i8] c"\41\6e\6f\74\68\65\72\20\70\72\69\6e\74\66\20\73\74\61\74\65\6d\65\6e\74\73\21\00"
@str.bis.954 = constant [14 x i8] c"\48\65\6c\6c\6f\2c\20\57\6f\72\6c\64\21\00"

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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: norecurse
define internal fastcc void @functions956(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i46.i = add i32 %arg_esp, 4
  %tmp0_v.i47.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i49.i = add i32 %tmp0_v.i47.i, -4
  %3 = inttoptr i32 %tmp2_v3.i49.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i50.i = add i32 %tmp0_v.i47.i, -8
  %4 = inttoptr i32 %tmp2_v4.i50.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i52.i = add i32 %tmp0_v.i47.i, -12
  %5 = inttoptr i32 %tmp2_v5.i52.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i47.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i46.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i47.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i47.i, -48
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  %spi.bis.954 = ptrtoint[14 x i8]* @str.bis.954 to i32
  store i32 %spi.bis.954, i32* %8, align 16
  %tmp2_v3.i.i = add i32 %tmp0_v.i47.i, -52
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 134517222, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  %spi.bis.953 = ptrtoint[27 x i8]* @str.bis.953 to i32
  store i32 %spi.bis.953, i32* %8, align 16
  store i32 134517240, i32* %9, align 4
  %arg.i.i1 = load i32, i32* %8, align 16
  %12 = inttoptr i32 %arg.i.i1 to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
  %tmp2_v.i43.i = add i32 %tmp0_v.i47.i, -44
  %14 = inttoptr i32 %tmp2_v.i43.i to i32*
  store i32 5, i32* %14, align 4
  store i32 4, i32* %8, align 16
  store i32 134517255, i32* %9, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i47.i, -56
  %15 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i50.i, i32* %15, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i47.i, -76
  %16 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517364, i32* %16, align 4
  %17 = load i32, i32* %8, align 16
  %18 = load i32, i32* %14, align 4
  %tmp0_v4.i.i.i = add i32 %18, %17
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i47.i, -60
  %19 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %tmp0_v4.i.i.i, i32* %19, align 4
  %20 = load i32, i32* %15, align 8
  %tmp2_v.i27.i = add i32 %20, -16
  %21 = inttoptr i32 %tmp2_v.i27.i to i32*
  store i32 %tmp0_v4.i.i.i, i32* %21, align 4
  store i32 %tmp0_v4.i.i.i, i32* %14, align 4
  %spi.bis.952 = ptrtoint[12 x i8]* @str.bis.952 to i32
  store i32 %spi.bis.952, i32* %8, align 16
  store i32 134517279, i32* %9, align 4
  %22 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i46.i, i32 inreg noundef %17, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  store i32 7, i32* %14, align 4
  store i32 9, i32* %8, align 16
  store i32 134517294, i32* %9, align 4
  store i32 %20, i32* %15, align 8
  %spi.bis.951 = ptrtoint[4 x i8]* @str.bis.951 to i32
  store i32 %spi.bis.951, i32* %16, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i47.i, -64
  %25 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 0, i32* %25, align 16
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %8, align 16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %BB_80492AD.i.lr.ph.i, label %Func_mult.exit

BB_80492AD.i.lr.ph.i:                             ; preds = %0
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i47.i, -80
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  %tmp2_v5.i.i.i5 = add i32 %tmp0_v.i47.i, -84
  %29 = inttoptr i32 %tmp2_v5.i.i.i5 to i32*
  %tmp2_v.i1.i.i.i = add i32 %tmp0_v.i47.i, -88
  %30 = inttoptr i32 %tmp2_v.i1.i.i.i to i32*
  %tmp2_v1.i.i.i.i = add i32 %tmp0_v.i47.i, -108
  %31 = inttoptr i32 %tmp2_v1.i.i.i.i to i32*
  %tmp2_v5.i.i.i.i = add i32 %tmp0_v.i47.i, -92
  %32 = inttoptr i32 %tmp2_v5.i.i.i.i to i32*
  br label %BB_80492AD.i.i

BB_80492AD.i.i:                                   ; preds = %BB_80492AD.i.i, %BB_80492AD.i.lr.ph.i
  %r_ebp.019.i = phi i32 [ %tmp2_v.i1.i.i, %BB_80492AD.i.lr.ph.i ], [ %39, %BB_80492AD.i.i ]
  %tmp2_v.i6.i.i = add i32 %r_ebp.019.i, 12
  %33 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %tmp2_v2.i.i.i6 = add i32 %r_ebp.019.i, -8
  %35 = inttoptr i32 %tmp2_v2.i.i.i6 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %28, align 16
  store i32 134517432, i32* %29, align 4
  store i32 %r_ebp.019.i, i32* %30, align 8
  store i32 134517364, i32* %31, align 4
  %37 = load i32, i32* %28, align 16
  %38 = load i32, i32* %16, align 4
  %tmp0_v4.i.i.i.i = add i32 %38, %37
  store i32 %tmp0_v4.i.i.i.i, i32* %32, align 4
  %39 = load i32, i32* %30, align 8
  %tmp2_v.i20.i.i = add i32 %39, -8
  %40 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 %tmp0_v4.i.i.i.i, i32* %40, align 4
  %tmp2_v1.i22.i.i = add i32 %39, -4
  %41 = inttoptr i32 %tmp2_v1.i22.i.i to i32*
  %42 = load i32, i32* %41, align 4
  %tmp0_v3.i24.i.i = add i32 %42, 1
  store i32 %tmp0_v3.i24.i.i, i32* %41, align 4
  %tmp2_v1.i.i.i7 = add i32 %39, 8
  %43 = inttoptr i32 %tmp2_v1.i.i.i7 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %tmp0_v3.i24.i.i, %44
  br i1 %45, label %BB_80492AD.i.i, label %.exit.loopexit.i

.exit.loopexit.i:                                 ; preds = %BB_80492AD.i.i
  %46 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  %47 = inttoptr i32 %tmp2_v1.i.i.i7 to i32*
  %.pre.i = inttoptr i32 %39 to i32*
  br label %Func_mult.exit

Func_mult.exit:                                   ; preds = %.exit.loopexit.i, %0
  %.pre-phi = phi i32* [ %8, %0 ], [ %47, %.exit.loopexit.i ]
  %.pre-phi26.i.pre-phi = phi i32* [ %25, %0 ], [ %46, %.exit.loopexit.i ]
  %.pre-phi.i = phi i32* [ %15, %0 ], [ %.pre.i, %.exit.loopexit.i ]
  %r_edx.0.lcssa.i = phi i32 [ %24, %0 ], [ %37, %.exit.loopexit.i ]
  %tmp2_v1.i.i.lcssa.i = phi i32 [ %tmp2_v2.i.i, %0 ], [ %tmp2_v1.i.i.i7, %.exit.loopexit.i ]
  %48 = load i32, i32* %.pre-phi26.i.pre-phi, align 4
  %49 = load i32, i32* %.pre-phi.i, align 4
  %tmp2_v.i13.i = add i32 %49, -12
  %50 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 %48, i32* %50, align 4
  %tmp2_v4.i.i = add i32 %tmp2_v1.i.i.lcssa.i, 4
  %51 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %48, i32* %51, align 4
  %spi.bis.950 = ptrtoint[17 x i8]* @str.bis.950 to i32
  store i32 %spi.bis.950, i32* %.pre-phi, align 4
  %tmp2_v7.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -4
  %52 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517318, i32* %52, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i46.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v1.i.i.lcssa.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 5, i32* %.pre-phi, align 4
  store i32 134517331, i32* %52, align 4
  %tmp2_v.i2.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -8
  %54 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %49, i32* %54, align 4
  %tmp2_v1.i.i.i14 = add i32 %tmp2_v1.i.i.lcssa.i, -12
  %55 = inttoptr i32 %tmp2_v1.i.i.i14 to i32*
  store i32 134529024, i32* %55, align 4
  %tmp2_v2.i.i.i15 = add i32 %tmp2_v1.i.i.lcssa.i, -20
  %56 = inttoptr i32 %tmp2_v2.i.i.i15 to i32*
  %spi.bis.949 = ptrtoint[4 x i8]* @str.bis.949 to i32
  store i32 %spi.bis.949, i32* %56, align 4
  %57 = load i32, i32* %.pre-phi, align 4
  %tmp2_v3.i.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -28
  %58 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %57, i32* %58, align 4
  %tmp2_v5.i.i.i16 = add i32 %tmp2_v1.i.i.lcssa.i, -32
  %59 = inttoptr i32 %tmp2_v5.i.i.i16 to i32*
  %spi.bis.948 = ptrtoint[9 x i8]* @str.bis.948 to i32
  store i32 %spi.bis.948, i32* %59, align 4
  %tmp2_v6.i.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -36
  %60 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 134517496, i32* %60, align 4
  %61 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i46.i, i32 inreg noundef 134520910, i32 noundef %tmp2_v5.i.i.i16, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @functions956 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack955, i32 0, i32 8092) to i32)) nounwind
