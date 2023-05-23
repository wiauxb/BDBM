; Mutation 279
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
@str.277 = constant [34 x i8] c"min distance between %d & %d: %d\0a\00"

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

; Function Attrs: norecurse nounwind
define internal fastcc void @min_distance_two_numbers279(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
.exit:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i3.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i3.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -100
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i24.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i28.i = add i32 %tmp0_v.i2.i, -20
  %9 = inttoptr i32 %tmp2_v2.i28.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i2.i, -68
  %10 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 0, i32* %10, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i2.i, -64
  %11 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 1, i32* %11, align 16
  %tmp2_v5.i31.i = add i32 %tmp0_v.i2.i, -60
  %12 = inttoptr i32 %tmp2_v5.i31.i to i32*
  store i32 2, i32* %12, align 4
  %tmp2_v6.i32.i = add i32 %tmp0_v.i2.i, -56
  %13 = inttoptr i32 %tmp2_v6.i32.i to i32*
  store i32 3, i32* %13, align 8
  %tmp2_v7.i33.i = add i32 %tmp0_v.i2.i, -52
  %14 = inttoptr i32 %tmp2_v7.i33.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i34.i = add i32 %tmp0_v.i2.i, -48
  %15 = inttoptr i32 %tmp2_v8.i34.i to i32*
  store i32 4, i32* %15, align 16
  %tmp2_v9.i35.i = add i32 %tmp0_v.i2.i, -44
  %16 = inttoptr i32 %tmp2_v9.i35.i to i32*
  store i32 8, i32* %16, align 4
  %tmp2_v10.i36.i = add i32 %tmp0_v.i2.i, -40
  %17 = inttoptr i32 %tmp2_v10.i36.i to i32*
  store i32 5, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i2.i, -36
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 6, i32* %18, align 4
  %tmp2_v12.i37.i = add i32 %tmp0_v.i2.i, -32
  %19 = inttoptr i32 %tmp2_v12.i37.i to i32*
  store i32 8, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i2.i, -28
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 3, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i2.i, -24
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 2, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i2.i, -84
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 12, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i2.i, -80
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 2, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i2.i, -76
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 8, i32* %24, align 4
  store i32 8, i32* %6, align 4
  %25 = load i32, i32* %23, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i2.i, -104
  %26 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %22, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i2.i, -108
  %28 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 %27, i32* %28, align 4
  %tmp2_v28.i.i = add i32 %tmp0_v.i2.i, -112
  %29 = inttoptr i32 %tmp2_v28.i.i to i32*
  store i32 %tmp2_v3.i29.i, i32* %29, align 16
  %tmp2_v29.i.i = add i32 %tmp0_v.i2.i, -116
  %30 = inttoptr i32 %tmp2_v29.i.i to i32*
  store i32 134517341, i32* %30, align 4
  %tmp2_v.i13.i.i = add i32 %tmp0_v.i2.i, -120
  %31 = inttoptr i32 %tmp2_v.i13.i.i to i32*
  store i32 %tmp2_v4.i3.i, i32* %31, align 8
  %tmp2_v1.i16.i.i = add i32 %tmp0_v.i2.i, -140
  %32 = inttoptr i32 %tmp2_v1.i16.i.i to i32*
  store i32 134517418, i32* %32, align 4
  %tmp2_v.i65.i.i = add i32 %tmp0_v.i2.i, -132
  %33 = inttoptr i32 %tmp2_v.i65.i.i to i32*
  store i32 -1, i32* %33, align 4
  %tmp2_v1.i66.i.i = add i32 %tmp0_v.i2.i, -128
  %34 = inttoptr i32 %tmp2_v1.i66.i.i to i32*
  store i32 -1, i32* %34, align 16
  %tmp2_v2.i67.i.i = add i32 %tmp0_v.i2.i, -124
  %35 = inttoptr i32 %tmp2_v2.i67.i.i to i32*
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %28, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %BB_80492C6.i.i, label %Func_min_distance.exit

BB_8049338.i.i:                                   ; preds = %BB_804931E.i.i, %BB_80492F8.i.i, %BB_80492F2.i.i
  %38 = phi i32 [ %storemerge6.i, %BB_80492F2.i.i ], [ %storemerge6.i, %BB_80492F8.i.i ], [ %.pre.i, %BB_804931E.i.i ]
  %r_ecx.0.i = phi i32 [ %r_ecx.17.i, %BB_80492F2.i.i ], [ %tmp4_v7.i.i.i, %BB_80492F8.i.i ], [ %tmp4_v7.i.i.i, %BB_804931E.i.i ]
  %r_edx.0.i = phi i32 [ %tmp4_v.i76.i.i, %BB_80492F2.i.i ], [ %50, %BB_80492F8.i.i ], [ %50, %BB_804931E.i.i ]
  store i32 %38, i32* %34, align 16
  %.pre10.i = load i32, i32* %35, align 4
  br label %BB_804933E.i.i

BB_80492F2.i.i:                                   ; preds = %BB_80492C6.i.i, %BB_80492DC.i.i
  %39 = load i32, i32* %34, align 16
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %BB_8049338.i.i, label %BB_80492F8.i.i

BB_80492F8.i.i:                                   ; preds = %BB_80492F2.i.i
  %tmp4_v7.i.i.i = shl i32 %39, 2
  %tmp0_v10.i.i.i = add i32 %tmp4_v7.i.i.i, %48
  %41 = inttoptr i32 %tmp0_v10.i.i.i to i32*
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %50, %42
  br i1 %43, label %BB_8049338.i.i, label %BB_804931E.i.i

BB_804933E.i.i:                                   ; preds = %BB_80492DC.i.i, %BB_8049338.i.i
  %44 = phi i32 [ %.pre10.i, %BB_8049338.i.i ], [ %storemerge6.i, %BB_80492DC.i.i ]
  %r_ecx.2.i = phi i32 [ %r_ecx.0.i, %BB_8049338.i.i ], [ %r_ecx.17.i, %BB_80492DC.i.i ]
  %r_edx.3.i = phi i32 [ %r_edx.0.i, %BB_8049338.i.i ], [ %tmp4_v.i76.i.i, %BB_80492DC.i.i ]
  %tmp0_v1.i.i.i = add i32 %44, 1
  store i32 %tmp0_v1.i.i.i, i32* %35, align 4
  %45 = load i32, i32* %28, align 4
  %46 = icmp slt i32 %tmp0_v1.i.i.i, %45
  br i1 %46, label %BB_80492C6.i.i, label %Func_min_distance.exit

BB_80492DC.i.i:                                   ; preds = %BB_80492C6.i.i
  %47 = load i32, i32* %6, align 4
  %.not.i61.i.i = icmp eq i32 %47, %50
  br i1 %.not.i61.i.i, label %BB_80492F2.i.i, label %BB_804933E.i.i

BB_804931E.i.i:                                   ; preds = %BB_80492F8.i.i
  %tmp0_v2.i90.i.i = sub i32 %storemerge6.i, %39
  store i32 %tmp0_v2.i90.i.i, i32* %33, align 4
  %.pre.i = load i32, i32* %35, align 4
  br label %BB_8049338.i.i

BB_80492C6.i.i:                                   ; preds = %BB_804933E.i.i, %.exit
  %r_ecx.17.i = phi i32 [ %r_ecx.2.i, %BB_804933E.i.i ], [ %tmp2_v.i1.i, %.exit ]
  %storemerge6.i = phi i32 [ %tmp0_v1.i.i.i, %BB_804933E.i.i ], [ 0, %.exit ]
  %tmp4_v.i76.i.i = shl i32 %storemerge6.i, 2
  %48 = load i32, i32* %29, align 16
  %tmp0_v3.i79.i.i = add i32 %48, %tmp4_v.i76.i.i
  %49 = inttoptr i32 %tmp0_v3.i79.i.i to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %26, align 8
  %52 = icmp eq i32 %51, %50
  br i1 %52, label %BB_80492F2.i.i, label %BB_80492DC.i.i

Func_min_distance.exit:                           ; preds = %BB_804933E.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i1.i, %.exit ], [ %r_ecx.2.i, %BB_804933E.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.3.i, %BB_804933E.i.i ]
  %53 = load i32, i32* %33, align 4
  %54 = load i32, i32* %31, align 8
  %tmp2_v.i15.i = add i32 %54, -64
  %55 = inttoptr i32 %tmp2_v.i15.i to i32*
  store i32 %53, i32* %55, align 4
  store i32 %53, i32* %6, align 4
  %tmp2_v4.i18.i = add i32 %54, -68
  %56 = inttoptr i32 %tmp2_v4.i18.i to i32*
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %26, align 8
  %tmp2_v7.i.i = add i32 %54, -72
  %58 = inttoptr i32 %tmp2_v7.i.i to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %28, align 4
  %spi277 = ptrtoint[34 x i8]* @str.277 to i32
  store i32 %spi277, i32* %29, align 16
  store i32 134517368, i32* %30, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v28.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @min_distance_two_numbers279(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
