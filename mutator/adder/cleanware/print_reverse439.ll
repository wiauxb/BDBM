; Mutation 439
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack438 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.435 = constant [4 x i8] c"%d \00"
@str.436 = constant [4 x i8] c"%d \00"

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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse nounwind
define internal fastcc void @print_reverse439(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i7.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i7.i to i32*
  store i32 %tmp2_v.i2.i, i32* %4, align 4
  %tmp2_v7.i8.i = add i32 %tmp0_v.i3.i, -116
  %5 = inttoptr i32 %tmp2_v7.i8.i to i32*
  store i32 134517232, i32* %5, align 4
  %tmp2_v.i15.i = add i32 %arg_esp, 8
  %6 = inttoptr i32 %tmp2_v.i15.i to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i18.i = add i32 %tmp0_v.i3.i, -100
  %8 = inttoptr i32 %tmp2_v2.i18.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp4_v.i19.i.b = load i1, i1* @segs.0, align 1
  %9 = inttoptr i32 %arg_esp to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v5.i21.i = add i32 %tmp0_v.i3.i, -20
  %11 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v6.i22.i = add i32 %tmp0_v.i3.i, -84
  %12 = inttoptr i32 %tmp2_v6.i22.i to i32*
  store i32 5, i32* %12, align 4
  %tmp2_v7.i23.i = add i32 %tmp0_v.i3.i, -80
  %13 = inttoptr i32 %tmp2_v7.i23.i to i32*
  store i32 6, i32* %13, align 16
  %tmp2_v8.i24.i = add i32 %tmp0_v.i3.i, -76
  %14 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 7, i32* %14, align 4
  %tmp2_v9.i25.i = add i32 %tmp0_v.i3.i, -72
  %15 = inttoptr i32 %tmp2_v9.i25.i to i32*
  store i32 8, i32* %15, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -68
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 9, i32* %16, align 4
  %tmp2_v11.i26.i = add i32 %tmp0_v.i3.i, -64
  %17 = inttoptr i32 %tmp2_v11.i26.i to i32*
  store i32 10, i32* %17, align 16
  %tmp2_v12.i27.i = add i32 %tmp0_v.i3.i, -88
  %18 = inttoptr i32 %tmp2_v12.i27.i to i32*
  store i32 6, i32* %18, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i3.i, -124
  %19 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 6, i32* %19, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i3.i, -128
  %20 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v6.i22.i, i32* %20, align 16
  %tmp2_v19.i.i = add i32 %tmp0_v.i3.i, -132
  %21 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 134517320, i32* %21, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i3.i, -136
  %22 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i5.i, i32* %22, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i3.i, -140
  %23 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %23, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -164
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517456, i32* %24, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i3.i, -148
  %25 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  %storemerge.in18.i = load i32, i32* %19, align 4
  %storemerge19.i = add i32 %storemerge.in18.i, -1
  store i32 %storemerge19.i, i32* %25, align 4
  %26 = icmp sgt i32 %storemerge19.i, -1
  br i1 %26, label %BB_80492E1.i.lr.ph.i, label %..exit_crit_edge.i

..exit_crit_edge.i:                               ; preds = %.exit
  %.pre.i = add i32 %tmp0_v.i3.i, -176
  %.pre21.i = inttoptr i32 %.pre.i to i32*
  %.pre22.i = add i32 %tmp0_v.i3.i, -180
  %.pre23.i = inttoptr i32 %.pre22.i to i32*
  br label %Func_print_reverse.exit

BB_80492E1.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i3.i, -172
  %27 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i3.i, -176
  %28 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i3.i, -180
  %29 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  br label %BB_80492E1.i.i

BB_80492E1.i.i:                                   ; preds = %BB_80492E1.i.i, %BB_80492E1.i.lr.ph.i
  %storemerge20.i = phi i32 [ %storemerge19.i, %BB_80492E1.i.lr.ph.i ], [ %storemerge.i, %BB_80492E1.i.i ]
  %tmp4_v.i.i.i1 = shl i32 %storemerge20.i, 2
  %30 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %30, %tmp4_v.i.i.i1
  %31 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 4
  %spi436 = ptrtoint[4 x i8]* @str.436 to i32
  store i32 %spi436, i32* %28, align 16
  store i32 134517506, i32* %29, align 4
  %33 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %tmp4_v.i.i.i1, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %storemerge.in.i = load i32, i32* %25, align 4
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, i32* %25, align 4
  %34 = icmp sgt i32 %storemerge.i, -1
  br i1 %34, label %BB_80492E1.i.i, label %Func_print_reverse.exit

Func_print_reverse.exit:                          ; preds = %BB_80492E1.i.i, %..exit_crit_edge.i
  %.pre-phi24.i = phi i32* [ %.pre23.i, %..exit_crit_edge.i ], [ %29, %BB_80492E1.i.i ]
  %.pre-phi.i = phi i32* [ %.pre21.i, %..exit_crit_edge.i ], [ %28, %BB_80492E1.i.i ]
  store i32 10, i32* %.pre-phi.i, align 4
  store i32 134517529, i32* %.pre-phi24.i, align 4
  %arg.i.i.i = load i32, i32* %.pre-phi.i, align 4
  %35 = tail call i32 @putchar(i32 %arg.i.i.i)  nounwind 
  %36 = load i32, i32* %23, align 4
  %37 = load i32, i32* %22, align 8
  %tmp2_v.i.i = add i32 %37, -52
  %38 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %38, align 4
  %tmp2_v1.i.i = add i32 %37, -48
  %39 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1, i32* %39, align 4
  %tmp2_v2.i.i = add i32 %37, -44
  %40 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 2, i32* %40, align 4
  %tmp2_v3.i.i = add i32 %37, -40
  %41 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 3, i32* %41, align 4
  %tmp2_v4.i.i = add i32 %37, -36
  %42 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 4, i32* %42, align 4
  %tmp2_v5.i.i = add i32 %37, -32
  %43 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 5, i32* %43, align 4
  %tmp2_v6.i.i = add i32 %37, -28
  %44 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 6, i32* %44, align 4
  %tmp2_v7.i.i = add i32 %37, -24
  %45 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 7, i32* %45, align 4
  %tmp2_v8.i.i = add i32 %37, -20
  %46 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 8, i32* %46, align 4
  %tmp2_v9.i.i = add i32 %37, -16
  %47 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 9, i32* %47, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -124
  %48 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 10, i32* %48, align 4
  store i32 %tmp2_v.i.i, i32* %20, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i3.i, -132
  %49 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517407, i32* %49, align 4
  %tmp2_v.i.i.i2 = add i32 %tmp0_v.i3.i, -136
  %50 = inttoptr i32 %tmp2_v.i.i.i2 to i32*
  store i32 %37, i32* %50, align 8
  %tmp2_v1.i.i.i3 = add i32 %tmp0_v.i3.i, -140
  %51 = inttoptr i32 %tmp2_v1.i.i.i3 to i32*
  store i32 %36, i32* %51, align 4
  %tmp2_v2.i.i.i4 = add i32 %tmp0_v.i3.i, -164
  %52 = inttoptr i32 %tmp2_v2.i.i.i4 to i32*
  store i32 134517456, i32* %52, align 4
  %tmp2_v3.i.i.i6 = add i32 %tmp0_v.i3.i, -148
  %53 = inttoptr i32 %tmp2_v3.i.i.i6 to i32*
  %storemerge.in18.i7 = load i32, i32* %48, align 4
  %storemerge19.i8 = add i32 %storemerge.in18.i7, -1
  store i32 %storemerge19.i8, i32* %53, align 4
  %54 = icmp sgt i32 %storemerge19.i8, -1
  br i1 %54, label %BB_80492E1.i.lr.ph.i17, label %..exit_crit_edge.i13

..exit_crit_edge.i13:                             ; preds = %Func_print_reverse.exit
  %.pre.i9 = add i32 %tmp0_v.i3.i, -176
  %.pre21.i10 = inttoptr i32 %.pre.i9 to i32*
  %.pre22.i11 = add i32 %tmp0_v.i3.i, -180
  %.pre23.i12 = inttoptr i32 %.pre22.i11 to i32*
  br label %Func_print_reverse.exit31

BB_80492E1.i.lr.ph.i17:                           ; preds = %Func_print_reverse.exit
  %tmp2_v6.i.i.i14 = add i32 %tmp0_v.i3.i, -172
  %55 = inttoptr i32 %tmp2_v6.i.i.i14 to i32*
  %tmp2_v8.i.i.i15 = add i32 %tmp0_v.i3.i, -176
  %56 = inttoptr i32 %tmp2_v8.i.i.i15 to i32*
  %tmp2_v9.i.i.i16 = add i32 %tmp0_v.i3.i, -180
  %57 = inttoptr i32 %tmp2_v9.i.i.i16 to i32*
  br label %BB_80492E1.i.i23

BB_80492E1.i.i23:                                 ; preds = %BB_80492E1.i.i23, %BB_80492E1.i.lr.ph.i17
  %storemerge20.i18 = phi i32 [ %storemerge19.i8, %BB_80492E1.i.lr.ph.i17 ], [ %storemerge.i22, %BB_80492E1.i.i23 ]
  %tmp4_v.i.i.i19 = shl i32 %storemerge20.i18, 2
  %58 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i20 = add i32 %58, %tmp4_v.i.i.i19
  %59 = inttoptr i32 %tmp0_v3.i.i.i20 to i32*
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %55, align 4
  %spi435 = ptrtoint[4 x i8]* @str.435 to i32
  store i32 %spi435, i32* %56, align 16
  store i32 134517506, i32* %57, align 4
  %61 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %tmp4_v.i.i.i19, i32 noundef %tmp2_v8.i.i.i15, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %storemerge.in.i21 = load i32, i32* %53, align 4
  %storemerge.i22 = add i32 %storemerge.in.i21, -1
  store i32 %storemerge.i22, i32* %53, align 4
  %62 = icmp sgt i32 %storemerge.i22, -1
  br i1 %62, label %BB_80492E1.i.i23, label %Func_print_reverse.exit31

Func_print_reverse.exit31:                        ; preds = %BB_80492E1.i.i23, %..exit_crit_edge.i13
  %.pre-phi24.i25 = phi i32* [ %.pre23.i12, %..exit_crit_edge.i13 ], [ %57, %BB_80492E1.i.i23 ]
  %.pre-phi.i26 = phi i32* [ %.pre21.i10, %..exit_crit_edge.i13 ], [ %56, %BB_80492E1.i.i23 ]
  store i32 10, i32* %.pre-phi.i26, align 4
  store i32 134517529, i32* %.pre-phi24.i25, align 4
  %arg.i.i.i27 = load i32, i32* %.pre-phi.i26, align 4
  %63 = tail call i32 @putchar(i32 %arg.i.i.i27)  nounwind 
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

  tail call fastcc void @print_reverse439 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack438, i32 0, i32 8092) to i32)) nounwind
