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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @stackm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_804924C.exit.i:
  %tmp2_v.i81.i = add i32 %arg_esp, 4
  %tmp0_v.i82.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i84.i = add i32 %tmp0_v.i82.i, -4
  %2 = inttoptr i32 %tmp2_v3.i84.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i85.i = add i32 %tmp0_v.i82.i, -8
  %3 = inttoptr i32 %tmp2_v4.i85.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i87.i = add i32 %tmp0_v.i82.i, -12
  %4 = inttoptr i32 %tmp2_v5.i87.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i89.i = add i32 %tmp0_v.i82.i, -16
  %5 = inttoptr i32 %tmp2_v6.i89.i to i32*
  store i32 %tmp2_v.i81.i, i32* %5, align 16
  %tmp2_v8.i90.i = add i32 %tmp0_v.i82.i, -52
  %6 = inttoptr i32 %tmp2_v8.i90.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp4_v.i163.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i163.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i167.i = add i32 %tmp0_v.i82.i, -20
  %9 = inttoptr i32 %tmp2_v2.i167.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v4.i170.i = add i32 %tmp0_v.i82.i, -64
  %10 = inttoptr i32 %tmp2_v4.i170.i to i32*
  store i32 5, i32* %10, align 16
  %tmp2_v5.i171.i = add i32 %tmp0_v.i82.i, -68
  %11 = inttoptr i32 %tmp2_v5.i171.i to i32*
  store i32 134517324, i32* %11, align 4
  %tmp2_v.i26.i.i = add i32 %tmp0_v.i82.i, -72
  %12 = inttoptr i32 %tmp2_v.i26.i.i to i32*
  store i32 %tmp2_v4.i85.i, i32* %12, align 8
  %tmp2_v1.i28.i.i = add i32 %tmp0_v.i82.i, -76
  %13 = inttoptr i32 %tmp2_v1.i28.i.i to i32*
  store i32 134529024, i32* %13, align 4
  %tmp2_v2.i30.i.i = add i32 %tmp0_v.i82.i, -100
  %14 = inttoptr i32 %tmp2_v2.i30.i.i to i32*
  store i32 134517889, i32* %14, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i82.i, -112
  %15 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 12, i32* %15, align 16
  %tmp2_v1.i3.i.i = add i32 %tmp0_v.i82.i, -116
  %16 = inttoptr i32 %tmp2_v1.i3.i.i to i32*
  store i32 134517918, i32* %16, align 4
  %arg.i.i.i = load i32, i32* %15, align 16
  %17 = tail call i32 @malloc(i32 %arg.i.i.i)
  %tmp2_v.i19.i.i = add i32 %tmp0_v.i82.i, -84
  %18 = inttoptr i32 %tmp2_v.i19.i.i to i32*
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %10, align 16
  %tmp0_v1.i11.i.i = shl i32 %19, 2
  store i32 %tmp0_v1.i11.i.i, i32* %15, align 16
  store i32 134517952, i32* %16, align 4
  %arg.i.i21.i = load i32, i32* %15, align 16
  %20 = tail call i32 @malloc(i32 %arg.i.i21.i)
  %21 = load i32, i32* %18, align 4
  %22 = inttoptr i32 %21 to i32*
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %18, align 4
  %24 = load i32, i32* %10, align 16
  %tmp2_v3.i.i.i = add i32 %23, 4
  %25 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %18, align 4
  %tmp2_v6.i.i.i = add i32 %26, 8
  %27 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %12, align 8
  %tmp2_v.i101.i = add i32 %30, -16
  %31 = inttoptr i32 %tmp2_v.i101.i to i32*
  store i32 %28, i32* %31, align 4
  store i32 %28, i32* %10, align 16
  store i32 134517375, i32* %11, align 4
  store i32 %30, i32* %12, align 8
  store i32 134518126, i32* %13, align 4
  %32 = load i32, i32* %12, align 8
  %tmp2_v.i3.i = add i32 %29, -8162
  store i32 %tmp2_v.i3.i, i32* %10, align 16
  store i32 134517397, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %33 = inttoptr i32 %arg.i.i to i8*
  %34 = tail call i32 @puts(i8* nonnull dereferenceable(1) %33)
  %tmp2_v.i250.i = add i32 %tmp0_v.i82.i, -60
  %35 = inttoptr i32 %tmp2_v.i250.i to i32*
  store i32 2, i32* %35, align 4
  %tmp2_v2.i252.i = add i32 %32, -16
  %36 = inttoptr i32 %tmp2_v2.i252.i to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 16
  store i32 134517413, i32* %11, align 4
  store i32 %32, i32* %12, align 8
  store i32 134518156, i32* %13, align 4
  %38 = load i32, i32* %10, align 16
  store i32 %38, i32* %13, align 4
  %tmp2_v3.i.i.i9 = add i32 %tmp0_v.i82.i, -80
  %39 = inttoptr i32 %tmp2_v3.i.i.i9 to i32*
  store i32 134518169, i32* %39, align 16
  store i32 %tmp2_v.i26.i.i, i32* %18, align 4
  %tmp2_v1.i.i.i.i = add i32 %tmp0_v.i82.i, -88
  %40 = inttoptr i32 %tmp2_v1.i.i.i.i to i32*
  store i32 134518090, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  %tmp2_v2.i.i.i.i = add i32 %41, 4
  %42 = inttoptr i32 %tmp2_v2.i.i.i.i to i32*
  %43 = load i32, i32* %42, align 4
  %tmp2_v6.i.i.i.i = add i32 %41, 8
  %44 = inttoptr i32 %tmp2_v6.i.i.i.i to i32*
  %45 = load i32, i32* %44, align 4
  %.not.i.i.i.not.i = icmp eq i32 %43, %45
  %46 = load i32, i32* %18, align 4
  %.pre.i = add i32 %46, 8
  br i1 %.not.i.i.i.not.i, label %Func_804924C.exit.i.Func_push.exit_crit_edge, label %BB_80495A7.i.i

Func_804924C.exit.i.Func_push.exit_crit_edge:     ; preds = %Func_804924C.exit.i
  %.pre = add i32 %46, 12
  %.pre233 = inttoptr i32 %.pre to i32*
  %.pre234 = inttoptr i32 %.pre.i to i32*
  br label %Func_push.exit

BB_80495A7.i.i:                                   ; preds = %Func_804924C.exit.i
  %47 = inttoptr i32 %.pre.i to i32*
  %48 = load i32, i32* %47, align 4
  %49 = inttoptr i32 %48 to i32*
  %50 = load i32, i32* %49, align 4
  %tmp2_v4.i.i.i = add i32 %48, 8
  %51 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  %52 = load i32, i32* %51, align 4
  %tmp0_v6.i.i.i = shl i32 %52, 2
  %tmp0_v7.i.i.i = add i32 %tmp0_v6.i.i.i, %50
  %tmp2_v8.i.i.i = add i32 %46, 12
  %53 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %54 = load i32, i32* %53, align 4
  %55 = inttoptr i32 %tmp0_v7.i.i.i to i32*
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %47, align 4
  %tmp2_v12.i.i.i = add i32 %56, 8
  %57 = inttoptr i32 %tmp2_v12.i.i.i to i32*
  %58 = load i32, i32* %57, align 4
  %tmp2_v14.i.i.i = add i32 %58, 1
  store i32 %tmp2_v14.i.i.i, i32* %57, align 4
  br label %Func_push.exit

Func_push.exit:                                   ; preds = %BB_80495A7.i.i, %Func_804924C.exit.i.Func_push.exit_crit_edge
  %.pre-phi235 = phi i32* [ %.pre234, %Func_804924C.exit.i.Func_push.exit_crit_edge ], [ %47, %BB_80495A7.i.i ]
  %.pre-phi = phi i32* [ %.pre233, %Func_804924C.exit.i.Func_push.exit_crit_edge ], [ %53, %BB_80495A7.i.i ]
  %r_edx.0.i = phi i32 [ %43, %Func_804924C.exit.i.Func_push.exit_crit_edge ], [ %tmp2_v14.i.i.i, %BB_80495A7.i.i ]
  %59 = inttoptr i32 %46 to i32*
  %60 = load i32, i32* %59, align 4
  %tmp2_v.i69.i = add i32 %60, -16
  %61 = inttoptr i32 %tmp2_v.i69.i to i32*
  %62 = load i32, i32* %61, align 4
  %tmp2_v2.i71.i = add i32 %62, 8
  %63 = inttoptr i32 %tmp2_v2.i71.i to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %.pre-phi, align 4
  %tmp2_v6.i75.i = add i32 %29, -8147
  store i32 %tmp2_v6.i75.i, i32* %.pre-phi235, align 4
  %tmp2_v8.i.i = add i32 %46, 4
  %65 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517438, i32* %65, align 4
  %66 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %r_edx.0.i, i32 noundef %.pre.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 9, i32* %.pre-phi, align 4
  %67 = load i32, i32* %61, align 4
  store i32 %67, i32* %.pre-phi235, align 4
  store i32 134517454, i32* %65, align 4
  store i32 %60, i32* %59, align 4
  %tmp2_v1.i.i.i17 = add i32 %46, -4
  %68 = inttoptr i32 %tmp2_v1.i.i.i17 to i32*
  store i32 134518156, i32* %68, align 4
  %69 = load i32, i32* %.pre-phi235, align 4
  store i32 %69, i32* %68, align 4
  %tmp2_v3.i.i.i18 = add i32 %46, -8
  %70 = inttoptr i32 %tmp2_v3.i.i.i18 to i32*
  store i32 134518169, i32* %70, align 4
  %tmp2_v.i.i.i.i19 = add i32 %46, -12
  %71 = inttoptr i32 %tmp2_v.i.i.i.i19 to i32*
  store i32 %46, i32* %71, align 4
  %tmp2_v1.i.i.i.i20 = add i32 %46, -16
  %72 = inttoptr i32 %tmp2_v1.i.i.i.i20 to i32*
  store i32 134518090, i32* %72, align 4
  %73 = load i32, i32* %68, align 4
  %tmp2_v2.i.i.i.i21 = add i32 %73, 4
  %74 = inttoptr i32 %tmp2_v2.i.i.i.i21 to i32*
  %75 = load i32, i32* %74, align 4
  %tmp2_v6.i.i.i.i22 = add i32 %73, 8
  %76 = inttoptr i32 %tmp2_v6.i.i.i.i22 to i32*
  %77 = load i32, i32* %76, align 4
  %.not.i.i.i.not.i23 = icmp eq i32 %75, %77
  %78 = load i32, i32* %71, align 4
  %.pre.i24 = add i32 %78, 8
  br i1 %.not.i.i.i.not.i23, label %Func_push.exit.Func_push.exit38_crit_edge, label %BB_80495A7.i.i31

Func_push.exit.Func_push.exit38_crit_edge:        ; preds = %Func_push.exit
  %.pre236 = add i32 %78, 12
  %.pre237 = inttoptr i32 %.pre236 to i32*
  %.pre239 = inttoptr i32 %.pre.i24 to i32*
  br label %Func_push.exit38

BB_80495A7.i.i31:                                 ; preds = %Func_push.exit
  %79 = inttoptr i32 %.pre.i24 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = inttoptr i32 %80 to i32*
  %82 = load i32, i32* %81, align 4
  %tmp2_v4.i.i.i25 = add i32 %80, 8
  %83 = inttoptr i32 %tmp2_v4.i.i.i25 to i32*
  %84 = load i32, i32* %83, align 4
  %tmp0_v6.i.i.i26 = shl i32 %84, 2
  %tmp0_v7.i.i.i27 = add i32 %tmp0_v6.i.i.i26, %82
  %tmp2_v8.i.i.i28 = add i32 %78, 12
  %85 = inttoptr i32 %tmp2_v8.i.i.i28 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = inttoptr i32 %tmp0_v7.i.i.i27 to i32*
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %79, align 4
  %tmp2_v12.i.i.i29 = add i32 %88, 8
  %89 = inttoptr i32 %tmp2_v12.i.i.i29 to i32*
  %90 = load i32, i32* %89, align 4
  %tmp2_v14.i.i.i30 = add i32 %90, 1
  store i32 %tmp2_v14.i.i.i30, i32* %89, align 4
  br label %Func_push.exit38

Func_push.exit38:                                 ; preds = %BB_80495A7.i.i31, %Func_push.exit.Func_push.exit38_crit_edge
  %.pre-phi240 = phi i32* [ %.pre239, %Func_push.exit.Func_push.exit38_crit_edge ], [ %79, %BB_80495A7.i.i31 ]
  %.pre-phi238 = phi i32* [ %.pre237, %Func_push.exit.Func_push.exit38_crit_edge ], [ %85, %BB_80495A7.i.i31 ]
  %91 = inttoptr i32 %78 to i32*
  %92 = load i32, i32* %91, align 4
  store i32 4, i32* %.pre-phi238, align 4
  %tmp2_v2.i158.i = add i32 %92, -16
  %93 = inttoptr i32 %tmp2_v2.i158.i to i32*
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %.pre-phi240, align 4
  %tmp2_v5.i160.i = add i32 %78, 4
  %95 = inttoptr i32 %tmp2_v5.i160.i to i32*
  store i32 134517470, i32* %95, align 4
  store i32 %92, i32* %91, align 4
  %tmp2_v1.i.i.i40 = add i32 %78, -4
  %96 = inttoptr i32 %tmp2_v1.i.i.i40 to i32*
  store i32 134518156, i32* %96, align 4
  %97 = load i32, i32* %.pre-phi240, align 4
  store i32 %97, i32* %96, align 4
  %tmp2_v3.i.i.i41 = add i32 %78, -8
  %98 = inttoptr i32 %tmp2_v3.i.i.i41 to i32*
  store i32 134518169, i32* %98, align 4
  %tmp2_v.i.i.i.i42 = add i32 %78, -12
  %99 = inttoptr i32 %tmp2_v.i.i.i.i42 to i32*
  store i32 %78, i32* %99, align 4
  %tmp2_v1.i.i.i.i43 = add i32 %78, -16
  %100 = inttoptr i32 %tmp2_v1.i.i.i.i43 to i32*
  store i32 134518090, i32* %100, align 4
  %101 = load i32, i32* %96, align 4
  %tmp2_v2.i.i.i.i44 = add i32 %101, 4
  %102 = inttoptr i32 %tmp2_v2.i.i.i.i44 to i32*
  %103 = load i32, i32* %102, align 4
  %tmp2_v6.i.i.i.i45 = add i32 %101, 8
  %104 = inttoptr i32 %tmp2_v6.i.i.i.i45 to i32*
  %105 = load i32, i32* %104, align 4
  %.not.i.i.i.not.i46 = icmp eq i32 %103, %105
  %106 = load i32, i32* %99, align 4
  %.pre.i47 = add i32 %106, 8
  br i1 %.not.i.i.i.not.i46, label %Func_push.exit38.Func_push.exit61_crit_edge, label %BB_80495A7.i.i54

Func_push.exit38.Func_push.exit61_crit_edge:      ; preds = %Func_push.exit38
  %.pre241 = add i32 %106, 12
  %.pre242 = inttoptr i32 %.pre241 to i32*
  %.pre244 = inttoptr i32 %.pre.i47 to i32*
  br label %Func_push.exit61

BB_80495A7.i.i54:                                 ; preds = %Func_push.exit38
  %107 = inttoptr i32 %.pre.i47 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = inttoptr i32 %108 to i32*
  %110 = load i32, i32* %109, align 4
  %tmp2_v4.i.i.i48 = add i32 %108, 8
  %111 = inttoptr i32 %tmp2_v4.i.i.i48 to i32*
  %112 = load i32, i32* %111, align 4
  %tmp0_v6.i.i.i49 = shl i32 %112, 2
  %tmp0_v7.i.i.i50 = add i32 %tmp0_v6.i.i.i49, %110
  %tmp2_v8.i.i.i51 = add i32 %106, 12
  %113 = inttoptr i32 %tmp2_v8.i.i.i51 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = inttoptr i32 %tmp0_v7.i.i.i50 to i32*
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %107, align 4
  %tmp2_v12.i.i.i52 = add i32 %116, 8
  %117 = inttoptr i32 %tmp2_v12.i.i.i52 to i32*
  %118 = load i32, i32* %117, align 4
  %tmp2_v14.i.i.i53 = add i32 %118, 1
  store i32 %tmp2_v14.i.i.i53, i32* %117, align 4
  br label %Func_push.exit61

Func_push.exit61:                                 ; preds = %BB_80495A7.i.i54, %Func_push.exit38.Func_push.exit61_crit_edge
  %.pre-phi245 = phi i32* [ %.pre244, %Func_push.exit38.Func_push.exit61_crit_edge ], [ %107, %BB_80495A7.i.i54 ]
  %.pre-phi243 = phi i32* [ %.pre242, %Func_push.exit38.Func_push.exit61_crit_edge ], [ %113, %BB_80495A7.i.i54 ]
  %119 = inttoptr i32 %106 to i32*
  %120 = load i32, i32* %119, align 4
  store i32 7, i32* %.pre-phi243, align 4
  %tmp2_v2.i260.i = add i32 %120, -16
  %121 = inttoptr i32 %tmp2_v2.i260.i to i32*
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %.pre-phi245, align 4
  %tmp2_v5.i262.i = add i32 %106, 4
  %123 = inttoptr i32 %tmp2_v5.i262.i to i32*
  store i32 134517486, i32* %123, align 4
  store i32 %120, i32* %119, align 4
  %tmp2_v1.i.i.i63 = add i32 %106, -4
  %124 = inttoptr i32 %tmp2_v1.i.i.i63 to i32*
  store i32 134518156, i32* %124, align 4
  %125 = load i32, i32* %.pre-phi245, align 4
  store i32 %125, i32* %124, align 4
  %tmp2_v3.i.i.i64 = add i32 %106, -8
  %126 = inttoptr i32 %tmp2_v3.i.i.i64 to i32*
  store i32 134518169, i32* %126, align 4
  %tmp2_v.i.i.i.i65 = add i32 %106, -12
  %127 = inttoptr i32 %tmp2_v.i.i.i.i65 to i32*
  store i32 %106, i32* %127, align 4
  %tmp2_v1.i.i.i.i66 = add i32 %106, -16
  %128 = inttoptr i32 %tmp2_v1.i.i.i.i66 to i32*
  store i32 134518090, i32* %128, align 4
  %129 = load i32, i32* %124, align 4
  %tmp2_v2.i.i.i.i67 = add i32 %129, 4
  %130 = inttoptr i32 %tmp2_v2.i.i.i.i67 to i32*
  %131 = load i32, i32* %130, align 4
  %tmp2_v6.i.i.i.i68 = add i32 %129, 8
  %132 = inttoptr i32 %tmp2_v6.i.i.i.i68 to i32*
  %133 = load i32, i32* %132, align 4
  %.not.i.i.i.not.i69 = icmp eq i32 %131, %133
  %134 = load i32, i32* %127, align 4
  %.pre.i70 = add i32 %134, 8
  br i1 %.not.i.i.i.not.i69, label %Func_push.exit61.Func_push.exit84_crit_edge, label %BB_80495A7.i.i77

Func_push.exit61.Func_push.exit84_crit_edge:      ; preds = %Func_push.exit61
  %.pre246 = add i32 %134, 12
  %.pre247 = inttoptr i32 %.pre246 to i32*
  %.pre249 = inttoptr i32 %.pre.i70 to i32*
  br label %Func_push.exit84

BB_80495A7.i.i77:                                 ; preds = %Func_push.exit61
  %135 = inttoptr i32 %.pre.i70 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = inttoptr i32 %136 to i32*
  %138 = load i32, i32* %137, align 4
  %tmp2_v4.i.i.i71 = add i32 %136, 8
  %139 = inttoptr i32 %tmp2_v4.i.i.i71 to i32*
  %140 = load i32, i32* %139, align 4
  %tmp0_v6.i.i.i72 = shl i32 %140, 2
  %tmp0_v7.i.i.i73 = add i32 %tmp0_v6.i.i.i72, %138
  %tmp2_v8.i.i.i74 = add i32 %134, 12
  %141 = inttoptr i32 %tmp2_v8.i.i.i74 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = inttoptr i32 %tmp0_v7.i.i.i73 to i32*
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %135, align 4
  %tmp2_v12.i.i.i75 = add i32 %144, 8
  %145 = inttoptr i32 %tmp2_v12.i.i.i75 to i32*
  %146 = load i32, i32* %145, align 4
  %tmp2_v14.i.i.i76 = add i32 %146, 1
  store i32 %tmp2_v14.i.i.i76, i32* %145, align 4
  br label %Func_push.exit84

Func_push.exit84:                                 ; preds = %BB_80495A7.i.i77, %Func_push.exit61.Func_push.exit84_crit_edge
  %.pre-phi250 = phi i32* [ %.pre249, %Func_push.exit61.Func_push.exit84_crit_edge ], [ %135, %BB_80495A7.i.i77 ]
  %.pre-phi248 = phi i32* [ %.pre247, %Func_push.exit61.Func_push.exit84_crit_edge ], [ %141, %BB_80495A7.i.i77 ]
  %147 = inttoptr i32 %134 to i32*
  %148 = load i32, i32* %147, align 4
  store i32 8, i32* %.pre-phi248, align 4
  %tmp2_v2.i32.i = add i32 %148, -16
  %149 = inttoptr i32 %tmp2_v2.i32.i to i32*
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %.pre-phi250, align 4
  %tmp2_v5.i34.i = add i32 %134, 4
  %151 = inttoptr i32 %tmp2_v5.i34.i to i32*
  store i32 134517502, i32* %151, align 4
  store i32 %148, i32* %147, align 4
  %tmp2_v1.i.i.i86 = add i32 %134, -4
  %152 = inttoptr i32 %tmp2_v1.i.i.i86 to i32*
  store i32 134518156, i32* %152, align 4
  %153 = load i32, i32* %.pre-phi250, align 4
  store i32 %153, i32* %152, align 4
  %tmp2_v3.i.i.i87 = add i32 %134, -8
  %154 = inttoptr i32 %tmp2_v3.i.i.i87 to i32*
  store i32 134518169, i32* %154, align 4
  %tmp2_v.i.i.i.i88 = add i32 %134, -12
  %155 = inttoptr i32 %tmp2_v.i.i.i.i88 to i32*
  store i32 %134, i32* %155, align 4
  %tmp2_v1.i.i.i.i89 = add i32 %134, -16
  %156 = inttoptr i32 %tmp2_v1.i.i.i.i89 to i32*
  store i32 134518090, i32* %156, align 4
  %157 = load i32, i32* %152, align 4
  %tmp2_v2.i.i.i.i90 = add i32 %157, 4
  %158 = inttoptr i32 %tmp2_v2.i.i.i.i90 to i32*
  %159 = load i32, i32* %158, align 4
  %tmp2_v6.i.i.i.i91 = add i32 %157, 8
  %160 = inttoptr i32 %tmp2_v6.i.i.i.i91 to i32*
  %161 = load i32, i32* %160, align 4
  %.not.i.i.i.not.i92 = icmp eq i32 %159, %161
  %162 = load i32, i32* %155, align 4
  %.pre.i93 = add i32 %162, 8
  %.pre251 = inttoptr i32 %.pre.i93 to i32*
  br i1 %.not.i.i.i.not.i92, label %Func_push.exit84.Func_push.exit107_crit_edge, label %BB_80495A7.i.i100

Func_push.exit84.Func_push.exit107_crit_edge:     ; preds = %Func_push.exit84
  %.pre253 = add i32 %162, 12
  %.pre254 = inttoptr i32 %.pre253 to i32*
  br label %Func_push.exit107

BB_80495A7.i.i100:                                ; preds = %Func_push.exit84
  %163 = load i32, i32* %.pre251, align 4
  %164 = inttoptr i32 %163 to i32*
  %165 = load i32, i32* %164, align 4
  %tmp2_v4.i.i.i94 = add i32 %163, 8
  %166 = inttoptr i32 %tmp2_v4.i.i.i94 to i32*
  %167 = load i32, i32* %166, align 4
  %tmp0_v6.i.i.i95 = shl i32 %167, 2
  %tmp0_v7.i.i.i96 = add i32 %tmp0_v6.i.i.i95, %165
  %tmp2_v8.i.i.i97 = add i32 %162, 12
  %168 = inttoptr i32 %tmp2_v8.i.i.i97 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = inttoptr i32 %tmp0_v7.i.i.i96 to i32*
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %.pre251, align 4
  %tmp2_v12.i.i.i98 = add i32 %171, 8
  %172 = inttoptr i32 %tmp2_v12.i.i.i98 to i32*
  %173 = load i32, i32* %172, align 4
  %tmp2_v14.i.i.i99 = add i32 %173, 1
  store i32 %tmp2_v14.i.i.i99, i32* %172, align 4
  br label %Func_push.exit107

Func_push.exit107:                                ; preds = %BB_80495A7.i.i100, %Func_push.exit84.Func_push.exit107_crit_edge
  %.pre-phi255 = phi i32* [ %.pre254, %Func_push.exit84.Func_push.exit107_crit_edge ], [ %168, %BB_80495A7.i.i100 ]
  %174 = inttoptr i32 %162 to i32*
  %175 = load i32, i32* %174, align 4
  %tmp2_v.i95.i = add i32 %175, -16
  %176 = inttoptr i32 %tmp2_v.i95.i to i32*
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %.pre251, align 4
  %tmp2_v4.i97.i = add i32 %162, 4
  %178 = inttoptr i32 %tmp2_v4.i97.i to i32*
  store i32 134517516, i32* %178, align 4
  store i32 %175, i32* %174, align 4
  %tmp2_v1.i.i.i108 = add i32 %162, -4
  %179 = inttoptr i32 %tmp2_v1.i.i.i108 to i32*
  store i32 134518090, i32* %179, align 4
  %180 = load i32, i32* %.pre251, align 4
  %tmp2_v2.i.i.i109 = add i32 %180, 4
  %181 = inttoptr i32 %tmp2_v2.i.i.i109 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %174, align 4
  %tmp2_v.i45.i = add i32 %29, -8131
  store i32 %tmp2_v.i45.i, i32* %.pre251, align 4
  store i32 134517538, i32* %178, align 4
  %arg.i.i116 = load i32, i32* %.pre251, align 4
  %184 = inttoptr i32 %arg.i.i116 to i8*
  %185 = tail call i32 @puts(i8* nonnull dereferenceable(1) %184)
  %tmp2_v.i123.i = add i32 %183, -16
  %186 = inttoptr i32 %tmp2_v.i123.i to i32*
  %187 = load i32, i32* %186, align 4
  %tmp2_v2.i125.i = add i32 %187, 8
  %188 = inttoptr i32 %tmp2_v2.i125.i to i32*
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %.pre-phi255, align 4
  store i32 %tmp2_v6.i75.i, i32* %.pre251, align 4
  store i32 134517563, i32* %178, align 4
  %190 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %182, i32 noundef %.pre.i93, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 5, i32* %.pre-phi255, align 4
  %191 = load i32, i32* %186, align 4
  store i32 %191, i32* %.pre251, align 4
  store i32 134517579, i32* %178, align 4
  store i32 %183, i32* %174, align 4
  store i32 134518156, i32* %179, align 4
  %192 = load i32, i32* %.pre251, align 4
  store i32 %192, i32* %179, align 4
  %tmp2_v3.i.i.i121 = add i32 %162, -8
  %193 = inttoptr i32 %tmp2_v3.i.i.i121 to i32*
  store i32 134518169, i32* %193, align 4
  %tmp2_v.i.i.i.i122 = add i32 %162, -12
  %194 = inttoptr i32 %tmp2_v.i.i.i.i122 to i32*
  store i32 %162, i32* %194, align 4
  %tmp2_v1.i.i.i.i123 = add i32 %162, -16
  %195 = inttoptr i32 %tmp2_v1.i.i.i.i123 to i32*
  store i32 134518090, i32* %195, align 4
  %196 = load i32, i32* %179, align 4
  %tmp2_v2.i.i.i.i124 = add i32 %196, 4
  %197 = inttoptr i32 %tmp2_v2.i.i.i.i124 to i32*
  %198 = load i32, i32* %197, align 4
  %tmp2_v6.i.i.i.i125 = add i32 %196, 8
  %199 = inttoptr i32 %tmp2_v6.i.i.i.i125 to i32*
  %200 = load i32, i32* %199, align 4
  %.not.i.i.i.not.i126 = icmp eq i32 %198, %200
  %201 = load i32, i32* %194, align 4
  %.pre.i127 = add i32 %201, 8
  %.pre256 = inttoptr i32 %.pre.i127 to i32*
  br i1 %.not.i.i.i.not.i126, label %Func_push.exit107.Func_push.exit141_crit_edge, label %BB_80495A7.i.i134

Func_push.exit107.Func_push.exit141_crit_edge:    ; preds = %Func_push.exit107
  %.pre258 = add i32 %201, 12
  %.pre259 = inttoptr i32 %.pre258 to i32*
  br label %Func_push.exit141

BB_80495A7.i.i134:                                ; preds = %Func_push.exit107
  %202 = load i32, i32* %.pre256, align 4
  %203 = inttoptr i32 %202 to i32*
  %204 = load i32, i32* %203, align 4
  %tmp2_v4.i.i.i128 = add i32 %202, 8
  %205 = inttoptr i32 %tmp2_v4.i.i.i128 to i32*
  %206 = load i32, i32* %205, align 4
  %tmp0_v6.i.i.i129 = shl i32 %206, 2
  %tmp0_v7.i.i.i130 = add i32 %tmp0_v6.i.i.i129, %204
  %tmp2_v8.i.i.i131 = add i32 %201, 12
  %207 = inttoptr i32 %tmp2_v8.i.i.i131 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = inttoptr i32 %tmp0_v7.i.i.i130 to i32*
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* %.pre256, align 4
  %tmp2_v12.i.i.i132 = add i32 %210, 8
  %211 = inttoptr i32 %tmp2_v12.i.i.i132 to i32*
  %212 = load i32, i32* %211, align 4
  %tmp2_v14.i.i.i133 = add i32 %212, 1
  store i32 %tmp2_v14.i.i.i133, i32* %211, align 4
  br label %Func_push.exit141

Func_push.exit141:                                ; preds = %BB_80495A7.i.i134, %Func_push.exit107.Func_push.exit141_crit_edge
  %.pre-phi260 = phi i32* [ %.pre259, %Func_push.exit107.Func_push.exit141_crit_edge ], [ %207, %BB_80495A7.i.i134 ]
  %r_edx.0.i135 = phi i32 [ %198, %Func_push.exit107.Func_push.exit141_crit_edge ], [ %tmp2_v14.i.i.i133, %BB_80495A7.i.i134 ]
  %r_eax.0.i136 = phi i8 [ 0, %Func_push.exit107.Func_push.exit141_crit_edge ], [ 1, %BB_80495A7.i.i134 ]
  %213 = inttoptr i32 %201 to i32*
  %214 = load i32, i32* %213, align 4
  %tmp2_v.i175.i = add i32 %214, -31
  %215 = inttoptr i32 %tmp2_v.i175.i to i8*
  store i8 %r_eax.0.i136, i8* %215, align 1
  %tmp2_v.i234.i = add i32 %29, -8116
  store i32 %tmp2_v.i234.i, i32* %.pre256, align 4
  %tmp2_v2.i236.i = add i32 %201, 4
  %216 = inttoptr i32 %tmp2_v2.i236.i to i32*
  store i32 134517611, i32* %216, align 4
  %arg.i.i142 = load i32, i32* %.pre256, align 4
  %217 = inttoptr i32 %arg.i.i142 to i8*
  %218 = tail call i32 @puts(i8* nonnull dereferenceable(1) %217)
  %tmp2_v.i200.i = add i32 %214, -28
  %219 = inttoptr i32 %tmp2_v.i200.i to i32*
  store i32 0, i32* %219, align 4
  store i32 %tmp2_v.i200.i, i32* %.pre-phi260, align 4
  %tmp2_v4.i204.i = add i32 %214, -16
  %220 = inttoptr i32 %tmp2_v4.i204.i to i32*
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %.pre256, align 4
  store i32 134517636, i32* %216, align 4
  store i32 %214, i32* %213, align 4
  %tmp2_v1.i.i.i143 = add i32 %201, -4
  %222 = inttoptr i32 %tmp2_v1.i.i.i143 to i32*
  store i32 134518238, i32* %222, align 4
  %223 = load i32, i32* %.pre256, align 4
  store i32 %223, i32* %222, align 4
  %tmp2_v3.i.i.i144 = add i32 %201, -8
  %224 = inttoptr i32 %tmp2_v3.i.i.i144 to i32*
  store i32 134518251, i32* %224, align 4
  %tmp2_v.i2.i.i.i = add i32 %201, -12
  %225 = inttoptr i32 %tmp2_v.i2.i.i.i to i32*
  store i32 %201, i32* %225, align 4
  %tmp2_v1.i.i.i.i145 = add i32 %201, -16
  %226 = inttoptr i32 %tmp2_v1.i.i.i.i145 to i32*
  store i32 134518126, i32* %226, align 4
  %227 = load i32, i32* %222, align 4
  %tmp2_v2.i.i.i.i146 = add i32 %227, 8
  %228 = inttoptr i32 %tmp2_v2.i.i.i.i146 to i32*
  %229 = load i32, i32* %228, align 4
  %.not.i.i.i.not.i147 = icmp eq i32 %229, 0
  %230 = load i32, i32* %225, align 4
  %.pre.i148 = add i32 %230, 8
  br i1 %.not.i.i.i.not.i147, label %Func_push.exit141.Func_peek.exit_crit_edge, label %BB_80495F9.i.i

Func_push.exit141.Func_peek.exit_crit_edge:       ; preds = %Func_push.exit141
  %.pre261 = add i32 %230, 12
  %.pre262 = inttoptr i32 %.pre261 to i32*
  %.pre264 = inttoptr i32 %.pre.i148 to i32*
  br label %BB_80493AD.i.lr.ph

BB_80495F9.i.i:                                   ; preds = %Func_push.exit141
  %231 = inttoptr i32 %.pre.i148 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = inttoptr i32 %232 to i32*
  %234 = load i32, i32* %233, align 4
  %tmp2_v4.i.i.i149 = add i32 %232, 8
  %235 = inttoptr i32 %tmp2_v4.i.i.i149 to i32*
  %236 = load i32, i32* %235, align 4
  %tmp0_v6.i.i.i150 = shl i32 %236, 2
  %tmp0_v7.i.i.i151 = add i32 %234, -4
  %tmp0_v8.i.i.i = add i32 %tmp0_v7.i.i.i151, %tmp0_v6.i.i.i150
  %237 = inttoptr i32 %tmp0_v8.i.i.i to i32*
  %238 = load i32, i32* %237, align 4
  %tmp2_v10.i.i.i = add i32 %230, 12
  %239 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  %240 = load i32, i32* %239, align 4
  %241 = inttoptr i32 %240 to i32*
  store i32 %238, i32* %241, align 4
  br label %BB_80493AD.i.lr.ph

BB_80493AD.i.lr.ph:                               ; preds = %BB_80495F9.i.i, %Func_push.exit141.Func_peek.exit_crit_edge
  %.pre-phi265 = phi i32* [ %.pre264, %Func_push.exit141.Func_peek.exit_crit_edge ], [ %231, %BB_80495F9.i.i ]
  %.pre-phi263 = phi i32* [ %.pre262, %Func_push.exit141.Func_peek.exit_crit_edge ], [ %239, %BB_80495F9.i.i ]
  %r_edx.0.i152 = phi i32 [ %r_edx.0.i135, %Func_push.exit141.Func_peek.exit_crit_edge ], [ %238, %BB_80495F9.i.i ]
  %242 = inttoptr i32 %230 to i32*
  %243 = load i32, i32* %242, align 4
  %tmp2_v.i240.i = add i32 %243, -28
  %244 = inttoptr i32 %tmp2_v.i240.i to i32*
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %.pre-phi263, align 4
  %tmp2_v4.i245.i = add i32 %29, -8103
  store i32 %tmp2_v4.i245.i, i32* %.pre-phi265, align 4
  %tmp2_v6.i246.i = add i32 %230, 4
  %246 = inttoptr i32 %tmp2_v6.i246.i to i32*
  store i32 134517658, i32* %246, align 4
  %247 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %r_edx.0.i152, i32 noundef %.pre.i148, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v.i151.i = add i32 %243, -24
  %248 = inttoptr i32 %tmp2_v.i151.i to i32*
  store i32 0, i32* %248, align 4
  %tmp2_v1.i152.i = add i32 %243, -20
  %249 = inttoptr i32 %tmp2_v1.i152.i to i32*
  store i32 0, i32* %249, align 4
  %250 = lshr i64 %247, 32
  %251 = trunc i64 %250 to i32
  %tmp2_v4.i26.i = add i32 %29, -8089
  br label %BB_80493AD.i

BB_80493AD.i:                                     ; preds = %Func_pop.exit, %BB_80493AD.i.lr.ph
  %r_ebp.0231 = phi i32 [ %243, %BB_80493AD.i.lr.ph ], [ %282, %Func_pop.exit ]
  %.pn226230 = phi i32 [ %251, %BB_80493AD.i.lr.ph ], [ %288, %Func_pop.exit ]
  %.pre.i148.pn229 = phi i32 [ %.pre.i148, %BB_80493AD.i.lr.ph ], [ %.pre.i167, %Func_pop.exit ]
  %tmp2_v.i15.i = add i32 %r_ebp.0231, -24
  %tmp2_v1.i16.i = add i32 %.pre.i148.pn229, 4
  %252 = inttoptr i32 %tmp2_v1.i16.i to i32*
  store i32 %tmp2_v.i15.i, i32* %252, align 4
  %tmp2_v2.i17.i = add i32 %r_ebp.0231, -16
  %253 = inttoptr i32 %tmp2_v2.i17.i to i32*
  %254 = load i32, i32* %253, align 4
  %255 = inttoptr i32 %.pre.i148.pn229 to i32*
  store i32 %254, i32* %255, align 4
  %tmp2_v5.i.i = add i32 %.pre.i148.pn229, -4
  %256 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 134517692, i32* %256, align 4
  %tmp2_v.i.i.i160 = add i32 %.pre.i148.pn229, -8
  %257 = inttoptr i32 %tmp2_v.i.i.i160 to i32*
  store i32 %r_ebp.0231, i32* %257, align 4
  %tmp2_v1.i.i.i161 = add i32 %.pre.i148.pn229, -12
  %258 = inttoptr i32 %tmp2_v1.i.i.i161 to i32*
  store i32 134518312, i32* %258, align 4
  %259 = load i32, i32* %255, align 4
  store i32 %259, i32* %258, align 4
  %tmp2_v3.i.i.i162 = add i32 %.pre.i148.pn229, -16
  %260 = inttoptr i32 %tmp2_v3.i.i.i162 to i32*
  store i32 134518325, i32* %260, align 4
  %tmp2_v.i2.i.i.i163 = add i32 %.pre.i148.pn229, -20
  %261 = inttoptr i32 %tmp2_v.i2.i.i.i163 to i32*
  store i32 %tmp2_v.i.i.i160, i32* %261, align 4
  %tmp2_v1.i.i.i.i164 = add i32 %.pre.i148.pn229, -24
  %262 = inttoptr i32 %tmp2_v1.i.i.i.i164 to i32*
  store i32 134518126, i32* %262, align 4
  %263 = load i32, i32* %258, align 4
  %tmp2_v2.i.i.i.i165 = add i32 %263, 8
  %264 = inttoptr i32 %tmp2_v2.i.i.i.i165 to i32*
  %265 = load i32, i32* %264, align 4
  %.not.i.i.i.not.i166 = icmp eq i32 %265, 0
  %266 = load i32, i32* %261, align 4
  %.pre.i167 = add i32 %266, 8
  br i1 %.not.i.i.i.not.i166, label %BB_80493AD.i.Func_pop.exit_crit_edge, label %BB_8049643.i.i

BB_80493AD.i.Func_pop.exit_crit_edge:             ; preds = %BB_80493AD.i
  %.pre266 = add i32 %266, 12
  %.pre267 = inttoptr i32 %.pre266 to i32*
  %.pre269 = inttoptr i32 %.pre.i167 to i32*
  br label %Func_pop.exit

BB_8049643.i.i:                                   ; preds = %BB_80493AD.i
  %267 = inttoptr i32 %.pre.i167 to i32*
  %268 = load i32, i32* %267, align 4
  %tmp2_v1.i14.i.i = add i32 %268, 8
  %269 = inttoptr i32 %tmp2_v1.i14.i.i to i32*
  %270 = load i32, i32* %269, align 4
  %tmp2_v3.i15.i.i = add i32 %270, -1
  store i32 %tmp2_v3.i15.i.i, i32* %269, align 4
  %271 = load i32, i32* %267, align 4
  %272 = inttoptr i32 %271 to i32*
  %273 = load i32, i32* %272, align 4
  %tmp2_v12.i.i.i168 = add i32 %271, 8
  %274 = inttoptr i32 %tmp2_v12.i.i.i168 to i32*
  %275 = load i32, i32* %274, align 4
  %tmp0_v14.i.i.i = shl i32 %275, 2
  %tmp0_v15.i.i.i = add i32 %tmp0_v14.i.i.i, %273
  %276 = inttoptr i32 %tmp0_v15.i.i.i to i32*
  %277 = load i32, i32* %276, align 4
  %tmp2_v17.i.i.i = add i32 %266, 12
  %278 = inttoptr i32 %tmp2_v17.i.i.i to i32*
  %279 = load i32, i32* %278, align 4
  %280 = inttoptr i32 %279 to i32*
  store i32 %277, i32* %280, align 4
  br label %Func_pop.exit

Func_pop.exit:                                    ; preds = %BB_8049643.i.i, %BB_80493AD.i.Func_pop.exit_crit_edge
  %.pre-phi270 = phi i32* [ %.pre269, %BB_80493AD.i.Func_pop.exit_crit_edge ], [ %267, %BB_8049643.i.i ]
  %.pre-phi268 = phi i32* [ %.pre267, %BB_80493AD.i.Func_pop.exit_crit_edge ], [ %278, %BB_8049643.i.i ]
  %r_edx.0.i169 = phi i32 [ %.pn226230, %BB_80493AD.i.Func_pop.exit_crit_edge ], [ %277, %BB_8049643.i.i ]
  %281 = inttoptr i32 %266 to i32*
  %282 = load i32, i32* %281, align 4
  %tmp2_v.i22.i = add i32 %282, -24
  %283 = inttoptr i32 %tmp2_v.i22.i to i32*
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %.pre-phi268, align 4
  store i32 %tmp2_v4.i26.i, i32* %.pre-phi270, align 4
  %tmp2_v6.i.i = add i32 %266, 4
  %285 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134517714, i32* %285, align 4
  %286 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i81.i, i32 inreg noundef %r_edx.0.i169, i32 noundef %.pre.i167, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %287 = lshr i64 %286, 32
  %288 = trunc i64 %287 to i32
  %tmp2_v.i135.i = add i32 %282, -20
  %289 = inttoptr i32 %tmp2_v.i135.i to i32*
  %290 = load i32, i32* %289, align 4
  %tmp0_v2.i137.i = add i32 %290, 1
  store i32 %tmp0_v2.i137.i, i32* %289, align 4
  %291 = icmp slt i32 %tmp0_v2.i137.i, 5
  br i1 %291, label %BB_80493AD.i, label %BB_80493DF.i

BB_80493DF.i:                                     ; preds = %Func_pop.exit
  %tmp2_v.i191.i = add i32 %282, -24
  %tmp2_v1.i192.i = add i32 %266, 12
  %292 = inttoptr i32 %tmp2_v1.i192.i to i32*
  store i32 %tmp2_v.i191.i, i32* %292, align 4
  %tmp2_v2.i193.i = add i32 %282, -16
  %293 = inttoptr i32 %tmp2_v2.i193.i to i32*
  %294 = load i32, i32* %293, align 4
  %295 = inttoptr i32 %.pre.i167 to i32*
  store i32 %294, i32* %295, align 4
  %tmp2_v5.i196.i = add i32 %266, 4
  %296 = inttoptr i32 %tmp2_v5.i196.i to i32*
  store i32 134517742, i32* %296, align 4
  %297 = inttoptr i32 %266 to i32*
  store i32 %282, i32* %297, align 4
  %tmp2_v1.i.i.i178 = add i32 %266, -4
  %298 = inttoptr i32 %tmp2_v1.i.i.i178 to i32*
  store i32 134518312, i32* %298, align 4
  %299 = load i32, i32* %295, align 4
  store i32 %299, i32* %298, align 4
  %tmp2_v3.i.i.i179 = add i32 %266, -8
  %300 = inttoptr i32 %tmp2_v3.i.i.i179 to i32*
  store i32 134518325, i32* %300, align 4
  %tmp2_v.i2.i.i.i180 = add i32 %266, -12
  %301 = inttoptr i32 %tmp2_v.i2.i.i.i180 to i32*
  store i32 %266, i32* %301, align 4
  %tmp2_v1.i.i.i.i181 = add i32 %266, -16
  %302 = inttoptr i32 %tmp2_v1.i.i.i.i181 to i32*
  store i32 134518126, i32* %302, align 4
  %303 = load i32, i32* %298, align 4
  %tmp2_v2.i.i.i.i182 = add i32 %303, 8
  %304 = inttoptr i32 %tmp2_v2.i.i.i.i182 to i32*
  %305 = load i32, i32* %304, align 4
  %.not.i.i.i.not.i183 = icmp eq i32 %305, 0
  %306 = load i32, i32* %301, align 4
  %.pre.i184 = add i32 %306, 8
  %.pre271 = inttoptr i32 %.pre.i184 to i32*
  br i1 %.not.i.i.i.not.i183, label %BB_80493DF.i.Func_pop.exit198_crit_edge, label %BB_8049643.i.i191

BB_80493DF.i.Func_pop.exit198_crit_edge:          ; preds = %BB_80493DF.i
  %.pre273 = add i32 %306, 12
  %.pre274 = inttoptr i32 %.pre273 to i32*
  br label %Func_pop.exit198

BB_8049643.i.i191:                                ; preds = %BB_80493DF.i
  %307 = load i32, i32* %.pre271, align 4
  %tmp2_v1.i14.i.i185 = add i32 %307, 8
  %308 = inttoptr i32 %tmp2_v1.i14.i.i185 to i32*
  %309 = load i32, i32* %308, align 4
  %tmp2_v3.i15.i.i186 = add i32 %309, -1
  store i32 %tmp2_v3.i15.i.i186, i32* %308, align 4
  %310 = load i32, i32* %.pre271, align 4
  %311 = inttoptr i32 %310 to i32*
  %312 = load i32, i32* %311, align 4
  %tmp2_v12.i.i.i187 = add i32 %310, 8
  %313 = inttoptr i32 %tmp2_v12.i.i.i187 to i32*
  %314 = load i32, i32* %313, align 4
  %tmp0_v14.i.i.i188 = shl i32 %314, 2
  %tmp0_v15.i.i.i189 = add i32 %tmp0_v14.i.i.i188, %312
  %315 = inttoptr i32 %tmp0_v15.i.i.i189 to i32*
  %316 = load i32, i32* %315, align 4
  %tmp2_v17.i.i.i190 = add i32 %306, 12
  %317 = inttoptr i32 %tmp2_v17.i.i.i190 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = inttoptr i32 %318 to i32*
  store i32 %316, i32* %319, align 4
  br label %Func_pop.exit198

Func_pop.exit198:                                 ; preds = %BB_8049643.i.i191, %BB_80493DF.i.Func_pop.exit198_crit_edge
  %.pre-phi275 = phi i32* [ %.pre274, %BB_80493DF.i.Func_pop.exit198_crit_edge ], [ %317, %BB_8049643.i.i191 ]
  %r_eax.0.i193 = phi i8 [ 0, %BB_80493DF.i.Func_pop.exit198_crit_edge ], [ 1, %BB_8049643.i.i191 ]
  %320 = inttoptr i32 %306 to i32*
  %321 = load i32, i32* %320, align 4
  %tmp2_v.i225.i = add i32 %321, -30
  %322 = inttoptr i32 %tmp2_v.i225.i to i8*
  store i8 %r_eax.0.i193, i8* %322, align 1
  %tmp2_v.i145.i = add i32 %29, -8071
  store i32 %tmp2_v.i145.i, i32* %.pre271, align 4
  %tmp2_v2.i147.i = add i32 %306, 4
  %323 = inttoptr i32 %tmp2_v2.i147.i to i32*
  store i32 134517774, i32* %323, align 4
  %arg.i.i199 = load i32, i32* %.pre271, align 4
  %324 = inttoptr i32 %arg.i.i199 to i8*
  %325 = tail call i32 @puts(i8* nonnull dereferenceable(1) %324)
  %tmp2_v.i115.i = add i32 %321, -28
  store i32 %tmp2_v.i115.i, i32* %.pre-phi275, align 4
  %tmp2_v3.i117.i = add i32 %321, -16
  %326 = inttoptr i32 %tmp2_v3.i117.i to i32*
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %.pre271, align 4
  store i32 134517792, i32* %323, align 4
  store i32 %321, i32* %320, align 4
  %tmp2_v1.i.i.i201 = add i32 %306, -4
  %328 = inttoptr i32 %tmp2_v1.i.i.i201 to i32*
  store i32 134518238, i32* %328, align 4
  %329 = load i32, i32* %.pre271, align 4
  store i32 %329, i32* %328, align 4
  %tmp2_v3.i.i.i202 = add i32 %306, -8
  %330 = inttoptr i32 %tmp2_v3.i.i.i202 to i32*
  store i32 134518251, i32* %330, align 4
  %tmp2_v.i2.i.i.i203 = add i32 %306, -12
  %331 = inttoptr i32 %tmp2_v.i2.i.i.i203 to i32*
  store i32 %306, i32* %331, align 4
  %tmp2_v1.i.i.i.i204 = add i32 %306, -16
  %332 = inttoptr i32 %tmp2_v1.i.i.i.i204 to i32*
  store i32 134518126, i32* %332, align 4
  %333 = load i32, i32* %328, align 4
  %tmp2_v2.i.i.i.i205 = add i32 %333, 8
  %334 = inttoptr i32 %tmp2_v2.i.i.i.i205 to i32*
  %335 = load i32, i32* %334, align 4
  %.not.i.i.i.not.i206 = icmp eq i32 %335, 0
  %336 = load i32, i32* %331, align 4
  %.pre.i207 = add i32 %336, 8
  %.pre276 = inttoptr i32 %.pre.i207 to i32*
  br i1 %.not.i.i.i.not.i206, label %Func_peek.exit220, label %BB_80495F9.i.i213

BB_80495F9.i.i213:                                ; preds = %Func_pop.exit198
  %337 = load i32, i32* %.pre276, align 4
  %338 = inttoptr i32 %337 to i32*
  %339 = load i32, i32* %338, align 4
  %tmp2_v4.i.i.i208 = add i32 %337, 8
  %340 = inttoptr i32 %tmp2_v4.i.i.i208 to i32*
  %341 = load i32, i32* %340, align 4
  %tmp0_v6.i.i.i209 = shl i32 %341, 2
  %tmp0_v7.i.i.i210 = add i32 %339, -4
  %tmp0_v8.i.i.i211 = add i32 %tmp0_v7.i.i.i210, %tmp0_v6.i.i.i209
  %342 = inttoptr i32 %tmp0_v8.i.i.i211 to i32*
  %343 = load i32, i32* %342, align 4
  %tmp2_v10.i.i.i212 = add i32 %336, 12
  %344 = inttoptr i32 %tmp2_v10.i.i.i212 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = inttoptr i32 %345 to i32*
  store i32 %343, i32* %346, align 4
  br label %Func_peek.exit220

Func_peek.exit220:                                ; preds = %BB_80495F9.i.i213, %Func_pop.exit198
  %r_eax.0.i215 = phi i8 [ 1, %BB_80495F9.i.i213 ], [ 0, %Func_pop.exit198 ]
  %347 = inttoptr i32 %336 to i32*
  %348 = load i32, i32* %347, align 4
  %tmp2_v.i.i = add i32 %348, -29
  %349 = inttoptr i32 %tmp2_v.i.i to i8*
  store i8 %r_eax.0.i215, i8* %349, align 1
  %tmp2_v.i56.i = add i32 %29, -8059
  store i32 %tmp2_v.i56.i, i32* %.pre276, align 4
  %tmp2_v2.i58.i = add i32 %336, 4
  %350 = inttoptr i32 %tmp2_v2.i58.i to i32*
  store i32 134517824, i32* %350, align 4
  %arg.i.i221 = load i32, i32* %.pre276, align 4
  %351 = inttoptr i32 %arg.i.i221 to i8*
  %352 = tail call i32 @puts(i8* nonnull dereferenceable(1) %351)
  %tmp2_v.i63.i = add i32 %348, -16
  %353 = inttoptr i32 %tmp2_v.i63.i to i32*
  %354 = load i32, i32* %353, align 4
  store i32 %354, i32* %.pre276, align 4
  store i32 134517838, i32* %350, align 4
  store i32 %348, i32* %347, align 4
  %tmp2_v1.i.i.i223 = add i32 %336, -4
  %355 = inttoptr i32 %tmp2_v1.i.i.i223 to i32*
  store i32 %29, i32* %355, align 4
  %tmp2_v2.i.i.i224 = add i32 %336, -12
  %356 = inttoptr i32 %tmp2_v2.i.i.i224 to i32*
  store i32 134518035, i32* %356, align 4
  %357 = load i32, i32* %.pre276, align 4
  %358 = inttoptr i32 %357 to i32*
  %359 = load i32, i32* %358, align 4
  %tmp2_v4.i19.i.i = add i32 %336, -24
  %360 = inttoptr i32 %tmp2_v4.i19.i.i to i32*
  store i32 %359, i32* %360, align 4
  %tmp2_v5.i.i.i = add i32 %336, -28
  %361 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134518055, i32* %361, align 4
  %arg.i.i.i225 = load i32, i32* %360, align 4
  tail call void @free(i32 %arg.i.i.i225)
  %362 = load i32, i32* %.pre276, align 4
  store i32 %362, i32* %360, align 4
  store i32 134518069, i32* %361, align 4
  %arg.i.i3.i = load i32, i32* %360, align 4
  tail call void @free(i32 %arg.i.i3.i)
  ret void
}

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

  tail call fastcc void @stackm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
