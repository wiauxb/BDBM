; Mutation 880
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack879 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.875 = constant [18 x i8] c"\61\3a\20\25\64\2c\20\76\6f\77\65\6c\3a\20\25\64\0a\00"
@str.bis.876 = constant [24 x i8] c"\42\65\6c\6f\77\20\73\77\69\74\63\68\20\73\74\61\74\65\6d\65\6e\74\21\00"
@str.bis.877 = constant [4 x i8] c"\69\66\21\00"
@str.bis.878 = constant [8 x i8] c"\43\61\73\65\20\31\21\00"

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

; Function Attrs: noinline
declare i32 @toupper(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @switch880(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
label_1.i27.i:
  %tmp2_v.i43.i = add i32 %arg_esp, 4
  %tmp0_v.i44.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i45.i = add i32 %tmp0_v.i44.i, -4
  %2 = inttoptr i32 %tmp2_v3.i45.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i46.i = add i32 %tmp0_v.i44.i, -8
  %3 = inttoptr i32 %tmp2_v4.i46.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i48.i = add i32 %tmp0_v.i44.i, -12
  %4 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i50.i = add i32 %tmp0_v.i44.i, -16
  %5 = inttoptr i32 %tmp2_v6.i50.i to i32*
  store i32 %tmp2_v.i43.i, i32* %5, align 16
  %tmp2_v8.i51.i = add i32 %tmp0_v.i44.i, -68
  %6 = inttoptr i32 %tmp2_v8.i51.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i23.i = add i32 %tmp0_v.i44.i, -20
  %9 = inttoptr i32 %tmp2_v2.i23.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i24.i = add i32 %tmp0_v.i44.i, -52
  %10 = inttoptr i32 %tmp2_v3.i24.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v1.i72.i = add i32 %tmp0_v.i44.i, -80
  %11 = inttoptr i32 %tmp2_v1.i72.i to i32*
  %spi.bis.878 = ptrtoint[8 x i8]* @str.bis.878 to i32
  store i32 %spi.bis.878, i32* %11, align 16
  %tmp2_v2.i73.i = add i32 %tmp0_v.i44.i, -84
  %12 = inttoptr i32 %tmp2_v2.i73.i to i32*
  store i32 134517350, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = inttoptr i32 %arg.i.i to i8*
  %14 = tail call i32 @puts(i8* nonnull dereferenceable(1) %13)
  %spi.bis.877 = ptrtoint[4 x i8]* @str.bis.877 to i32
  store i32 %spi.bis.877, i32* %11, align 16
  store i32 134517368, i32* %12, align 4
  %arg.i.i1 = load i32, i32* %11, align 16
  %15 = inttoptr i32 %arg.i.i1 to i8*
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) %15)
  %spi.bis.876 = ptrtoint[24 x i8]* @str.bis.876 to i32
  store i32 %spi.bis.876, i32* %11, align 16
  store i32 134517426, i32* %12, align 4
  %arg.i.i2 = load i32, i32* %11, align 16
  %17 = inttoptr i32 %arg.i.i2 to i8*
  %18 = tail call i32 @puts(i8* nonnull dereferenceable(1) %17)
  %tmp2_v.i55.i = add i32 %tmp0_v.i44.i, -43
  %19 = inttoptr i32 %tmp2_v.i55.i to i32*
  store i32 1096966497, i32* %19, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i44.i, -39
  %20 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1734763876, i32* %20, align 4
  %tmp2_v2.i56.i = add i32 %tmp0_v.i44.i, -35
  %21 = inttoptr i32 %tmp2_v2.i56.i to i32*
  store i32 1265256808, i32* %21, align 4
  %tmp2_v3.i57.i = add i32 %tmp0_v.i44.i, -31
  %22 = inttoptr i32 %tmp2_v3.i57.i to i32*
  store i32 1867402604, i32* %22, align 4
  %tmp2_v4.i58.i = add i32 %tmp0_v.i44.i, -27
  %23 = inttoptr i32 %tmp2_v4.i58.i to i32*
  store i32 1934782800, i32* %23, align 4
  %tmp2_v5.i59.i = add i32 %tmp0_v.i44.i, -23
  %24 = inttoptr i32 %tmp2_v5.i59.i to i16*
  store i16 21844, i16* %24, align 2
  %tmp2_v6.i60.i = add i32 %tmp0_v.i44.i, -21
  %25 = inttoptr i32 %tmp2_v6.i60.i to i8*
  store i8 0, i8* %25, align 1
  store i32 %tmp2_v.i55.i, i32* %11, align 16
  store i32 134517486, i32* %12, align 4
  %arg.i.i3 = load i32, i32* %11, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i3)
  %mrv.i4 = insertvalue { i32, i32 } undef, i32 %tmp2_v1.i72.i, 0
  %tmp2_v.i133.i = add i32 %tmp0_v.i44.i, -48
  %27 = inttoptr i32 %tmp2_v.i133.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v1.i135.i = add i32 %tmp0_v.i44.i, -64
  %28 = inttoptr i32 %tmp2_v1.i135.i to i32*
  store i32 0, i32* %28, align 16
  %tmp2_v2.i136.i = add i32 %tmp0_v.i44.i, -60
  %29 = inttoptr i32 %tmp2_v2.i136.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v3.i137.i = add i32 %tmp0_v.i44.i, -56
  %30 = inttoptr i32 %tmp2_v3.i137.i to i32*
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %27, align 16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_804930B.i, label %BB_8049350.i

BB_8049350.i:                                     ; preds = %BB_8049344.i, %label_1.i27.i
  %.pn.pn.lcssa = phi { i32, i32 } [ %mrv.i4, %label_1.i27.i ], [ %.pn13, %BB_8049344.i ]
  %r_edx.0.lcssa = phi i32 [ 0, %label_1.i27.i ], [ %tmp2_v.i55.i, %BB_8049344.i ]
  %r_esp.0.in.le = extractvalue { i32, i32 } %.pn.pn.lcssa, 0
  %33 = load i32, i32* %29, align 4
  %tmp2_v2.i.i = add i32 %r_esp.0.in.le, 8
  %34 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %28, align 16
  %tmp2_v5.i.i = add i32 %r_esp.0.in.le, 4
  %36 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = inttoptr i32 %r_esp.0.in.le to i32*
  %spi.bis.875 = ptrtoint[18 x i8]* @str.bis.875 to i32
  store i32 %spi.bis.875, i32* %37, align 4
  %tmp2_v8.i.i = add i32 %r_esp.0.in.le, -4
  %38 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517605, i32* %38, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i43.i, i32 inreg noundef %r_edx.0.lcssa, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_8049340.i:                                     ; preds = %BB_804930B.i, %BB_804933C.i
  %40 = load i32, i32* %29, align 4
  %tmp0_v1.i4.i = add i32 %40, 1
  store i32 %tmp0_v1.i4.i, i32* %29, align 4
  br label %BB_8049344.i

BB_8049344.i:                                     ; preds = %BB_804930B.i, %BB_8049340.i
  %41 = load i32, i32* %30, align 8
  %tmp0_v1.i12.i = add i32 %41, 1
  store i32 %tmp0_v1.i12.i, i32* %30, align 8
  %r_esp.0.in = extractvalue { i32, i32 } %.pn13.pn, 0
  %42 = load i32, i32* %27, align 16
  %43 = icmp slt i32 %tmp0_v1.i12.i, %42
  br i1 %43, label %BB_804930B.i, label %BB_8049350.i

BB_804933C.i:                                     ; preds = %BB_804930B.i
  %44 = load i32, i32* %28, align 16
  %tmp0_v1.i107.i = add i32 %44, 1
  store i32 %tmp0_v1.i107.i, i32* %28, align 16
  br label %BB_8049340.i

BB_804930B.i:                                     ; preds = %BB_8049344.i, %label_1.i27.i
  %r_esp.0.in14 = phi i32 [ %r_esp.0.in, %BB_8049344.i ], [ %tmp2_v1.i72.i, %label_1.i27.i ]
  %.pn13.pn = phi { i32, i32 } [ %.pn13, %BB_8049344.i ], [ %mrv.i4, %label_1.i27.i ]
  %.pn16 = phi i32 [ %49, %BB_8049344.i ], [ %26, %label_1.i27.i ]
  %storemerge12 = phi i32 [ %tmp0_v1.i12.i, %BB_8049344.i ], [ 0, %label_1.i27.i ]
  %.pn13 = insertvalue { i32, i32 } %.pn13.pn, i32 %.pn16, 1
  %tmp0_v2.i123.i = add i32 %storemerge12, %tmp2_v.i55.i
  %45 = inttoptr i32 %tmp0_v2.i123.i to i8*
  %46 = load i8, i8* %45, align 1
  %tmp0_v4.i125.i = sext i8 %46 to i32
  %47 = inttoptr i32 %r_esp.0.in14 to i32*
  store i32 %tmp0_v4.i125.i, i32* %47, align 4
  %tmp2_v7.i129.i = add i32 %r_esp.0.in14, -4
  %48 = inttoptr i32 %tmp2_v7.i129.i to i32*
  store i32 134517538, i32* %48, align 4
  %arg.i.i6 = load i32, i32* %47, align 4
  %49 = tail call i32 @toupper(i32 %arg.i.i6)
  %tmp0_v1.i65.i = shl i32 %49, 2
  %tmp2_v1.i78.i = add i32 %tmp0_v1.i65.i, 134520656
  %50 = inttoptr i32 %tmp2_v1.i78.i to i32*
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %error.i [
    i32 -11460, label %BB_804933C.i
    i32 -11456, label %BB_8049340.i
    i32 -11452, label %BB_8049344.i
  ]

error.i:                                          ; preds = %BB_804930B.i
  unreachable
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

  tail call fastcc void @switch880 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack879, i32 0, i32 8092) to i32)) nounwind
