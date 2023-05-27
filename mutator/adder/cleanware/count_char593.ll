; Mutation 593
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack592 = internal global [8092 x i32] zeroinitializer, align 16
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
define internal fastcc { i32, i32, i32, i32, i32 } @Func_count_char(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i25.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 %arg_ebp, i32* %1, align 4
  %tmp2_v1.i27.i = add i32 %arg_esp, -8
  %2 = inttoptr i32 %tmp2_v1.i27.i to i32*
  store i32 %arg_ebx, i32* %2, align 4
  %tmp2_v2.i29.i = add i32 %arg_esp, -48
  %3 = inttoptr i32 %tmp2_v2.i29.i to i32*
  store i32 134517422, i32* %3, align 4
  %tmp2_v.i8.i = add i32 %arg_esp, 8
  %4 = inttoptr i32 %tmp2_v.i8.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v2.i10.i = add i32 %arg_esp, -32
  %6 = trunc i32 %5 to i8
  %7 = inttoptr i32 %tmp2_v2.i10.i to i8*
  store i8 %6, i8* %7, align 1
  %tmp2_v4.i.i = add i32 %arg_esp, 4
  %8 = inttoptr i32 %tmp2_v4.i.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v6.i.i = add i32 %arg_esp, -60
  %10 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v7.i13.i = add i32 %arg_esp, -64
  %11 = inttoptr i32 %tmp2_v7.i13.i to i32*
  store i32 134517446, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 4
  %12 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i3.i = add i32 %arg_esp, -16
  %13 = inttoptr i32 %tmp2_v.i3.i to i32*
  store i32 %12, i32* %13, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -24
  %14 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %14, align 4
  %tmp2_v2.i4.i = add i32 %arg_esp, -20
  %15 = inttoptr i32 %tmp2_v2.i4.i to i32*
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %BB_80492DC.i, label %.exit

BB_80492EC.i:                                     ; preds = %BB_80492DC.i
  %18 = load i32, i32* %14, align 4
  %tmp0_v1.i.i = add i32 %18, 1
  store i32 %tmp0_v1.i.i, i32* %14, align 4
  %.pre = load i32, i32* %15, align 4
  br label %BB_80492F0.i

BB_80492F0.i:                                     ; preds = %BB_80492DC.i, %BB_80492EC.i
  %19 = phi i32 [ %storemerge20, %BB_80492DC.i ], [ %.pre, %BB_80492EC.i ]
  %tmp0_v1.i17.i = add i32 %19, 1
  store i32 %tmp0_v1.i17.i, i32* %15, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %tmp0_v1.i17.i, %20
  br i1 %21, label %BB_80492DC.i, label %.exit

BB_80492DC.i:                                     ; preds = %BB_80492F0.i, %0
  %storemerge20 = phi i32 [ %tmp0_v1.i17.i, %BB_80492F0.i ], [ 0, %0 ]
  %22 = load i32, i32* %8, align 4
  %tmp0_v3.i48.i = add i32 %22, %storemerge20
  %23 = inttoptr i32 %tmp0_v3.i48.i to i8*
  %24 = load i8, i8* %23, align 1
  %tmp0_v4.i49.i = zext i8 %24 to i32
  %25 = load i8, i8* %7, align 1
  %tmp0_v6.i51.i = zext i8 %25 to i32
  %cc_dst_v.i52.i = sub nsw i32 %tmp0_v6.i51.i, %tmp0_v4.i49.i
  %tmp4_v.i53.i = and i32 %cc_dst_v.i52.i, 255
  %.not.i.i = icmp eq i32 %tmp4_v.i53.i, 0
  br i1 %.not.i.i, label %BB_80492EC.i, label %BB_80492F0.i

.exit:                                            ; preds = %BB_80492F0.i, %0
  %r_edx.0.lcssa = phi i32 [ %5, %0 ], [ %storemerge20, %BB_80492F0.i ]
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %1, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp2_v4.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %26, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %r_edx.0.lcssa, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %28, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %27, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}

; Function Attrs: norecurse
define internal fastcc void @count_char593(i32 %arg_esp) unnamed_addr  norecurse  !retregs !13 {
.exit:
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i16.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i17.i = add i32 %tmp0_v.i16.i, -8
  %3 = inttoptr i32 %tmp2_v4.i17.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i19.i = add i32 %tmp0_v.i16.i, -12
  %4 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i16.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i15.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i16.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i23.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i27.i = add i32 %tmp0_v.i16.i, -20
  %9 = inttoptr i32 %tmp2_v2.i27.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i28.i = add i32 %tmp0_v.i16.i, -44
  %10 = inttoptr i32 %tmp2_v3.i28.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i29.i = add i32 %tmp0_v.i16.i, -40
  %11 = inttoptr i32 %tmp2_v4.i29.i to i32*
  store i32 544434464, i32* %11, align 8
  %tmp2_v5.i30.i = add i32 %tmp0_v.i16.i, -36
  %12 = inttoptr i32 %tmp2_v5.i30.i to i32*
  store i32 1948285293, i32* %12, align 4
  %tmp2_v6.i31.i = add i32 %tmp0_v.i16.i, -32
  %13 = inttoptr i32 %tmp2_v6.i31.i to i32*
  store i32 544502629, i32* %13, align 16
  %tmp2_v7.i32.i = add i32 %tmp0_v.i16.i, -28
  %14 = inttoptr i32 %tmp2_v7.i32.i to i32*
  store i32 1769108595, i32* %14, align 4
  %tmp2_v8.i33.i = add i32 %tmp0_v.i16.i, -24
  %15 = inttoptr i32 %tmp2_v8.i33.i to i32*
  store i32 3041134, i32* %15, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i16.i, -76
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 115, i32* %16, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i16.i, -80
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i28.i, i32* %17, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i16.i, -84
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517306, i32* %18, align 4
  %19 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_count_char(i32 %tmp2_v13.i.i, i32 %tmp2_v4.i17.i, i32 134529024)
  %20 = extractvalue { i32, i32, i32, i32, i32 } %19, 0
  %21 = extractvalue { i32, i32, i32, i32, i32 } %19, 1
  %22 = extractvalue { i32, i32, i32, i32, i32 } %19, 2
  %23 = extractvalue { i32, i32, i32, i32, i32 } %19, 3
  %24 = extractvalue { i32, i32, i32, i32, i32 } %19, 4
  %tmp2_v.i38.i = add i32 %23, -44
  %25 = inttoptr i32 %tmp2_v.i38.i to i32*
  store i32 %21, i32* %25, align 4
  %tmp2_v4.i43.i = add i32 %20, 4
  %26 = inttoptr i32 %tmp2_v4.i43.i to i32*
  store i32 %21, i32* %26, align 4
  %tmp2_v5.i45.i = add i32 %24, -8184
  %27 = inttoptr i32 %20 to i32*
  store i32 %tmp2_v5.i45.i, i32* %27, align 4
  %tmp2_v7.i46.i = add i32 %20, -4
  %28 = inttoptr i32 %tmp2_v7.i46.i to i32*
  store i32 134517330, i32* %28, align 4
  %29 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef %22, i32 noundef %20, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  store i32 46, i32* %26, align 4
  %tmp2_v2.i.i = add i32 %23, -36
  store i32 %tmp2_v2.i.i, i32* %27, align 4
  store i32 134517347, i32* %28, align 4
  %30 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_count_char(i32 %tmp2_v7.i46.i, i32 %23, i32 %24)
  %31 = extractvalue { i32, i32, i32, i32, i32 } %30, 0
  %32 = extractvalue { i32, i32, i32, i32, i32 } %30, 1
  %33 = extractvalue { i32, i32, i32, i32, i32 } %30, 2
  %34 = extractvalue { i32, i32, i32, i32, i32 } %30, 3
  %35 = extractvalue { i32, i32, i32, i32, i32 } %30, 4
  %tmp2_v.i9.i = add i32 %34, -40
  %36 = inttoptr i32 %tmp2_v.i9.i to i32*
  store i32 %32, i32* %36, align 4
  %tmp2_v4.i13.i = add i32 %31, 4
  %37 = inttoptr i32 %tmp2_v4.i13.i to i32*
  store i32 %32, i32* %37, align 4
  %tmp2_v5.i.i = add i32 %35, -8171
  %38 = inttoptr i32 %31 to i32*
  store i32 %tmp2_v5.i.i, i32* %38, align 4
  %tmp2_v7.i.i = add i32 %31, -4
  %39 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517371, i32* %39, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i15.i, i32 inreg noundef %33, i32 noundef %31, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
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
!12 = !{i32 0, i32 3, i32 4}
!13 = !{i32 0, i32 0, i32 0, i32 0}
!14 = !{!"printf"}

  tail call fastcc void @count_char593 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack592, i32 0, i32 8092) to i32)) nounwind
