; Mutation 41
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack40 = internal global [8092 x i32] zeroinitializer, align 16
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

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @remove_chars_from_string41(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i12.i = add i32 %arg_esp, 4
  %tmp0_v.i13.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i14.i = add i32 %tmp0_v.i13.i, -4
  %2 = inttoptr i32 %tmp2_v3.i14.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i15.i = add i32 %tmp0_v.i13.i, -8
  %3 = inttoptr i32 %tmp2_v4.i15.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i17.i = add i32 %tmp0_v.i13.i, -12
  %4 = inttoptr i32 %tmp2_v5.i17.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i19.i = add i32 %tmp0_v.i13.i, -16
  %5 = inttoptr i32 %tmp2_v6.i19.i to i32*
  store i32 %tmp2_v.i12.i, i32* %5, align 16
  %tmp2_v8.i20.i = add i32 %tmp0_v.i13.i, -68
  %6 = inttoptr i32 %tmp2_v8.i20.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i13.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i13.i, -46
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 661939532, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i13.i, -42
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1920213107, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i13.i, -38
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1752440953, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i13.i, -34
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1864397673, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i13.i, -30
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1948284021, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i13.i, -26
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 2036425839, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i13.i, -22
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 33, i16* %16, align 2
  %tmp2_v10.i.i = add i32 %tmp0_v.i13.i, -52
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1869178209, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i13.i, -48
  %18 = inttoptr i32 %tmp2_v11.i.i to i16*
  store i16 117, i16* %18, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i13.i, -76
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v10.i.i, i32* %19, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i13.i, -80
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %20, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i13.i, -84
  %21 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 134517327, i32* %21, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i13.i, -88
  %22 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i15.i, i32* %22, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i13.i, -92
  %23 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i4.i.i = add i32 %tmp0_v.i13.i, -132
  %24 = inttoptr i32 %tmp2_v2.i4.i.i to i32*
  store i32 134517424, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i64.i.i = add i32 %tmp0_v.i13.i, -144
  %26 = inttoptr i32 %tmp2_v3.i64.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i65.i.i = add i32 %tmp0_v.i13.i, -148
  %27 = inttoptr i32 %tmp2_v4.i65.i.i to i32*
  store i32 134517441, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i42.i.i = add i32 %tmp0_v.i13.i, -104
  %29 = inttoptr i32 %tmp2_v.i42.i.i to i32*
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %19, align 4
  store i32 %30, i32* %26, align 16
  store i32 134517458, i32* %27, align 4
  %arg.i.i36.i = load i32, i32* %26, align 16
  %31 = tail call i32 @strlen(i32 %arg.i.i36.i)
  %tmp2_v.i18.i.i = add i32 %tmp0_v.i13.i, -100
  %32 = inttoptr i32 %tmp2_v.i18.i.i to i32*
  store i32 %31, i32* %32, align 4
  %tmp2_v1.i19.i.i = add i32 %tmp0_v.i13.i, -120
  %33 = inttoptr i32 %tmp2_v1.i19.i.i to i32*
  store i32 0, i32* %33, align 8
  %tmp2_v2.i20.i.i = add i32 %tmp0_v.i13.i, -116
  %34 = inttoptr i32 %tmp2_v2.i20.i.i to i32*
  store i32 0, i32* %34, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i13.i, -112
  %35 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %35, align 16
  %36 = load i32, i32* %29, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %BB_80492EF.i.lr.ph.i, label %Func_remove_chars.exit

BB_80492EF.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i97.i.i = add i32 %tmp0_v.i13.i, -121
  %38 = inttoptr i32 %tmp2_v.i97.i.i to i8*
  %tmp2_v1.i98.i.i = add i32 %tmp0_v.i13.i, -108
  %39 = inttoptr i32 %tmp2_v1.i98.i.i to i32*
  br label %BB_80492EF.i.i

BB_8049350.i.i:                                   ; preds = %BB_8049326.i.i, %BB_8049331.i.i
  %.sink42.i = phi i32* [ %34, %BB_8049331.i.i ], [ %33, %BB_8049326.i.i ]
  %r_ecx.0.i = phi i32 [ %49, %BB_8049331.i.i ], [ %r_ecx.2.lcssa.i, %BB_8049326.i.i ]
  %40 = load i32, i32* %.sink42.i, align 4
  %tmp0_v1.i50.i.i = add i32 %40, 1
  store i32 %tmp0_v1.i50.i.i, i32* %.sink42.i, align 4
  %41 = load i32, i32* %35, align 16
  %tmp0_v1.i.i.i = add i32 %41, 1
  store i32 %tmp0_v1.i.i.i, i32* %35, align 16
  %42 = load i32, i32* %29, align 8
  %43 = icmp slt i32 %tmp0_v1.i.i.i, %42
  br i1 %43, label %BB_80492EF.i.i, label %Func_remove_chars.exit

BB_804931A.i.i:                                   ; preds = %BB_80492FC.i.i, %BB_8049316.i.i
  %44 = phi i32 [ %storemerge3038.i, %BB_80492FC.i.i ], [ %.pre.i, %BB_8049316.i.i ]
  %tmp0_v1.i8.i.i = add i32 %44, 1
  store i32 %tmp0_v1.i8.i.i, i32* %39, align 4
  %45 = load i32, i32* %32, align 4
  %46 = icmp slt i32 %tmp0_v1.i8.i.i, %45
  br i1 %46, label %BB_80492FC.i.i, label %BB_8049326.i.i

BB_8049331.i.i:                                   ; preds = %BB_8049326.i.i
  %47 = load i32, i32* %35, align 16
  %48 = load i32, i32* %20, align 16
  %tmp0_v3.i25.i.i = add i32 %48, %47
  %49 = load i32, i32* %34, align 4
  %tmp0_v8.i.i.i = add i32 %49, %48
  %50 = inttoptr i32 %tmp0_v3.i25.i.i to i8*
  %51 = load i8, i8* %50, align 1
  %52 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %51, i8* %52, align 1
  br label %BB_8049350.i.i

BB_8049326.i.i:                                   ; preds = %BB_80492EF.i.i, %BB_804931A.i.i
  %r_ecx.2.lcssa.i = phi i32 [ %r_ecx.139.i, %BB_80492EF.i.i ], [ %storemerge3038.i, %BB_804931A.i.i ]
  %53 = load i8, i8* %38, align 1
  %54 = icmp eq i8 %53, 1
  br i1 %54, label %BB_8049350.i.i, label %BB_8049331.i.i

BB_8049316.i.i:                                   ; preds = %BB_80492FC.i.i
  store i8 1, i8* %38, align 1
  %.pre.i = load i32, i32* %39, align 4
  br label %BB_804931A.i.i

BB_80492EF.i.i:                                   ; preds = %BB_8049350.i.i, %BB_80492EF.i.lr.ph.i
  %r_ecx.139.i = phi i32 [ %tmp2_v.i12.i, %BB_80492EF.i.lr.ph.i ], [ %r_ecx.0.i, %BB_8049350.i.i ]
  store i8 0, i8* %38, align 1
  store i32 0, i32* %39, align 4
  %55 = load i32, i32* %32, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %BB_80492FC.i.i, label %BB_8049326.i.i

BB_80492FC.i.i:                                   ; preds = %BB_80492EF.i.i, %BB_804931A.i.i
  %storemerge3038.i = phi i32 [ %tmp0_v1.i8.i.i, %BB_804931A.i.i ], [ 0, %BB_80492EF.i.i ]
  %57 = load i32, i32* %35, align 16
  %58 = load i32, i32* %20, align 16
  %tmp0_v3.i104.i.i = add i32 %58, %57
  %59 = inttoptr i32 %tmp0_v3.i104.i.i to i8*
  %60 = load i8, i8* %59, align 1
  %tmp0_v4.i105.i.i = zext i8 %60 to i32
  %61 = load i32, i32* %19, align 4
  %tmp0_v9.i110.i.i = add i32 %61, %storemerge3038.i
  %62 = inttoptr i32 %tmp0_v9.i110.i.i to i8*
  %63 = load i8, i8* %62, align 1
  %tmp0_v10.i.i.i = zext i8 %63 to i32
  %cc_dst_v.i111.i.i = sub nsw i32 %tmp0_v4.i105.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i112.i.i = and i32 %cc_dst_v.i111.i.i, 255
  %.not.i.i.i = icmp eq i32 %tmp4_v.i112.i.i, 0
  br i1 %.not.i.i.i, label %BB_8049316.i.i, label %BB_804931A.i.i

Func_remove_chars.exit:                           ; preds = %BB_8049350.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i12.i, %.exit ], [ %r_ecx.0.i, %BB_8049350.i.i ]
  %64 = load i32, i32* %34, align 4
  %65 = load i32, i32* %20, align 16
  %tmp0_v3.i32.i.i = add i32 %65, %64
  %66 = inttoptr i32 %tmp0_v3.i32.i.i to i8*
  store i8 0, i8* %66, align 1
  %67 = load i32, i32* %33, align 8
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %22, align 8
  %tmp2_v.i4.i = add i32 %69, -48
  %70 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %67, i32* %70, align 4
  %tmp2_v2.i6.i = add i32 %69, -38
  store i32 %tmp2_v2.i6.i, i32* %19, align 4
  %tmp2_v4.i9.i = add i32 %68, -8184
  store i32 %tmp2_v4.i9.i, i32* %20, align 16
  store i32 134517352, i32* %21, align 4
  %71 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %64, i32 noundef %tmp2_v16.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %72 = lshr i64 %71, 32
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %70, align 4
  store i32 %74, i32* %19, align 4
  %tmp2_v4.i29.i = add i32 %68, -8172
  store i32 %tmp2_v4.i29.i, i32* %20, align 16
  store i32 134517373, i32* %21, align 4
  %75 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %73, i32 noundef %tmp2_v16.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @remove_chars_from_string41 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack40, i32 0, i32 8092) to i32)) nounwind
