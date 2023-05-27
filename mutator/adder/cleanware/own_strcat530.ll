; Mutation 530
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack529 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.527 = constant [12 x i8] c"Result: %s\0a\00"

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
define internal fastcc void @own_strcat530(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
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
  store i32 0, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %7, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -1076
  %8 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517205, i32* %8, align 4
  %tmp4_v.i15.i.b = load i1, i1* @segs.0, align 1
  %9 = inttoptr i32 %arg_esp to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v2.i19.i = add i32 %tmp0_v.i.i, -36
  %11 = inttoptr i32 %tmp2_v2.i19.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v3.i20.i = add i32 %tmp0_v.i.i, -1060
  %12 = inttoptr i32 %tmp2_v3.i20.i to i32*
  store i32 1936877894, i32* %12, align 4
  %tmp2_v4.i21.i = add i32 %tmp0_v.i.i, -1056
  %13 = inttoptr i32 %tmp2_v4.i21.i to i32*
  store i32 116, i32* %13, align 16
  %tmp2_v5.i22.i = add i32 %tmp0_v.i.i, -1052
  br label %Func_804920C.exit.i

BB_804920E.i:                                     ; preds = %Func_804920C.exit.i
  %tmp2_v.i25.i = add i32 %tmp0_v.i.i, -1067
  %14 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 1868784979, i32* %14, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i.i, -1063
  %15 = inttoptr i32 %tmp2_v1.i.i to i16*
  store i16 25710, i16* %15, align 2
  %tmp2_v2.i26.i = add i32 %tmp0_v.i.i, -1061
  %16 = inttoptr i32 %tmp2_v2.i26.i to i8*
  store i8 0, i8* %16, align 1
  %tmp2_v4.i30.i = add i32 %tmp0_v.i.i, -1084
  %17 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 %tmp2_v.i25.i, i32* %17, align 4
  %tmp2_v6.i32.i = add i32 %tmp0_v.i.i, -1088
  %18 = inttoptr i32 %tmp2_v6.i32.i to i32*
  store i32 %tmp2_v3.i20.i, i32* %18, align 16
  %tmp2_v7.i33.i = add i32 %tmp0_v.i.i, -1092
  %19 = inttoptr i32 %tmp2_v7.i33.i to i32*
  store i32 134517310, i32* %19, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -1096
  %20 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %20, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -1116
  %21 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517386, i32* %21, align 4
  %tmp2_v.i24.i.i = add i32 %tmp0_v.i.i, -1104
  %22 = inttoptr i32 %tmp2_v.i24.i.i to i32*
  store i32 0, i32* %22, align 16
  %tmp2_v1.i25.i.i = add i32 %tmp0_v.i.i, -1100
  %23 = inttoptr i32 %tmp2_v1.i25.i.i to i32*
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %18, align 16
  %25 = load i32, i32* %22, align 16
  %tmp0_v3.i.i13.i = add i32 %25, %24
  %26 = inttoptr i32 %tmp0_v3.i.i13.i to i8*
  %27 = load i8, i8* %26, align 1
  %.not.i.i14.i = icmp eq i8 %27, 0
  br i1 %.not.i.i14.i, label %BB_80492D1.i.preheader.i, label %BB_804929F.i.i

BB_80492D1.i.preheader.loopexit.i:                ; preds = %BB_804929F.i.i
  %.pre.i = load i32, i32* %23, align 4
  br label %BB_80492D1.i.preheader.i

BB_80492D1.i.preheader.i:                         ; preds = %BB_80492D1.i.preheader.loopexit.i, %BB_804920E.i
  %28 = phi i32 [ %tmp0_v1.i.i.i, %BB_80492D1.i.preheader.loopexit.i ], [ %25, %BB_804920E.i ]
  %29 = phi i32 [ %48, %BB_80492D1.i.preheader.loopexit.i ], [ %24, %BB_804920E.i ]
  %30 = phi i32 [ %.pre.i, %BB_80492D1.i.preheader.loopexit.i ], [ 0, %BB_804920E.i ]
  %31 = load i32, i32* %17, align 4
  %tmp0_v3.i10.i16.i = add i32 %31, %30
  %32 = inttoptr i32 %tmp0_v3.i10.i16.i to i8*
  %33 = load i8, i8* %32, align 1
  %.not.i12.i17.i = icmp eq i8 %33, 0
  br i1 %.not.i12.i17.i, label %Func__strcat.exit, label %BB_80492B4.i.i.preheader

BB_80492B4.i.i.preheader:                         ; preds = %BB_80492D1.i.preheader.i
  %tmp0_v8.i.i.i12 = add i32 %29, %28
  %34 = inttoptr i32 %tmp0_v8.i.i.i12 to i8*
  store i8 %33, i8* %34, align 1
  %35 = load i32, i32* %22, align 16
  %tmp0_v12.i.i.i13 = add i32 %35, 1
  store i32 %tmp0_v12.i.i.i13, i32* %22, align 16
  %36 = load i32, i32* %23, align 4
  %tmp0_v15.i.i.i14 = add i32 %36, 1
  store i32 %tmp0_v15.i.i.i14, i32* %23, align 4
  %37 = load i32, i32* %17, align 4
  %tmp0_v3.i10.i.i15 = add i32 %37, %tmp0_v15.i.i.i14
  %38 = inttoptr i32 %tmp0_v3.i10.i.i15 to i8*
  %39 = load i8, i8* %38, align 1
  %.not.i12.i.i16 = icmp eq i8 %39, 0
  br i1 %.not.i12.i.i16, label %.exit.loopexit.i, label %BB_80492B4.i.BB_80492B4.i_crit_edge.i

BB_80492B4.i.BB_80492B4.i_crit_edge.i:            ; preds = %BB_80492B4.i.BB_80492B4.i_crit_edge.i, %BB_80492B4.i.i.preheader
  %40 = phi i8 [ %46, %BB_80492B4.i.BB_80492B4.i_crit_edge.i ], [ %39, %BB_80492B4.i.i.preheader ]
  %.pre19.i = load i32, i32* %18, align 16
  %.pre20.i = load i32, i32* %22, align 16
  %tmp0_v8.i.i.i = add i32 %.pre19.i, %.pre20.i
  %41 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %22, align 16
  %tmp0_v12.i.i.i = add i32 %42, 1
  store i32 %tmp0_v12.i.i.i, i32* %22, align 16
  %43 = load i32, i32* %23, align 4
  %tmp0_v15.i.i.i = add i32 %43, 1
  store i32 %tmp0_v15.i.i.i, i32* %23, align 4
  %44 = load i32, i32* %17, align 4
  %tmp0_v3.i10.i.i = add i32 %44, %tmp0_v15.i.i.i
  %45 = inttoptr i32 %tmp0_v3.i10.i.i to i8*
  %46 = load i8, i8* %45, align 1
  %.not.i12.i.i = icmp eq i8 %46, 0
  br i1 %.not.i12.i.i, label %.exit.loopexit.i, label %BB_80492B4.i.BB_80492B4.i_crit_edge.i

BB_804929F.i.i:                                   ; preds = %BB_804929F.i.i, %BB_804920E.i
  %47 = phi i32 [ %tmp0_v1.i.i.i, %BB_804929F.i.i ], [ %25, %BB_804920E.i ]
  %tmp0_v1.i.i.i = add i32 %47, 1
  store i32 %tmp0_v1.i.i.i, i32* %22, align 16
  %48 = load i32, i32* %18, align 16
  %tmp0_v3.i.i.i = add i32 %48, %tmp0_v1.i.i.i
  %49 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %50 = load i8, i8* %49, align 1
  %.not.i.i.i = icmp eq i8 %50, 0
  br i1 %.not.i.i.i, label %BB_80492D1.i.preheader.loopexit.i, label %BB_804929F.i.i

.exit.loopexit.i:                                 ; preds = %BB_80492B4.i.BB_80492B4.i_crit_edge.i, %BB_80492B4.i.i.preheader
  %.lcssa = phi i32 [ %29, %BB_80492B4.i.i.preheader ], [ %.pre19.i, %BB_80492B4.i.BB_80492B4.i_crit_edge.i ]
  %.pre21.i = load i32, i32* %18, align 16
  %.pre22.i = load i32, i32* %22, align 16
  br label %Func__strcat.exit

Func__strcat.exit:                                ; preds = %.exit.loopexit.i, %BB_80492D1.i.preheader.i
  %51 = phi i32 [ %28, %BB_80492D1.i.preheader.i ], [ %.pre22.i, %.exit.loopexit.i ]
  %52 = phi i32 [ %29, %BB_80492D1.i.preheader.i ], [ %.pre21.i, %.exit.loopexit.i ]
  %r_ecx.0.lcssa.i = phi i32 [ 0, %BB_80492D1.i.preheader.i ], [ %.lcssa, %.exit.loopexit.i ]
  %tmp0_v3.i31.i.i = add i32 %52, %51
  %53 = inttoptr i32 %tmp0_v3.i31.i.i to i8*
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %20, align 8
  %tmp2_v.i4.i = add i32 %54, -1052
  store i32 %tmp2_v.i4.i, i32* %17, align 4
  %spi.bis.527 = ptrtoint[12 x i8]* @str.527 to i32
  store i32 %spi.bis.527, i32* %18, align 16
  store i32 134517335, i32* %19, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %52, i32 noundef %tmp2_v6.i32.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

Func_804920C.exit.i:                              ; preds = %Func_804920C.exit.i, %0
  %r_ecx.011 = phi i32 [ 254, %0 ], [ %tmp4_v3.i.i, %Func_804920C.exit.i ]
  %r_edi.010 = phi i32 [ %tmp2_v5.i22.i, %0 ], [ %tmp4_v.i45.i, %Func_804920C.exit.i ]
  %56 = inttoptr i32 %r_edi.010 to i32*
  store i32 0, i32* %56, align 4
  %tmp0_v.i43.i = load i32, i32* @df, align 4
  %tmp0_v1.i44.i = shl i32 %tmp0_v.i43.i, 2
  %tmp4_v.i45.i = add i32 %tmp0_v1.i44.i, %r_edi.010
  %tmp4_v3.i.i = add nsw i32 %r_ecx.011, -1
  %.not.i.i = icmp eq i32 %tmp4_v3.i.i, 0
  br i1 %.not.i.i, label %BB_804920E.i, label %Func_804920C.exit.i
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

  tail call fastcc void @own_strcat530 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack529, i32 0, i32 8092) to i32)) nounwind
