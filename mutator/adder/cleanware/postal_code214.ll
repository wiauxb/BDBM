; Mutation 214
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

; Function Attrs: noinline
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @postal_code214(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
Func_804926D.exit.i:
  %tmp2_v.i26.i = add i32 %arg_esp, 4
  %tmp0_v.i27.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i28.i = add i32 %tmp0_v.i27.i, -4
  %2 = inttoptr i32 %tmp2_v3.i28.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i29.i = add i32 %tmp0_v.i27.i, -8
  %3 = inttoptr i32 %tmp2_v4.i29.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i27.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i27.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i26.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i27.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i48.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i52.i = add i32 %tmp0_v.i27.i, -20
  %9 = inttoptr i32 %tmp2_v2.i52.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i53.i = add i32 %tmp0_v.i27.i, -45
  %10 = inttoptr i32 %tmp2_v3.i53.i to i32*
  store i32 541800524, i32* %10, align 4
  %tmp2_v4.i54.i = add i32 %tmp0_v.i27.i, -41
  %11 = inttoptr i32 %tmp2_v4.i54.i to i32*
  store i32 3555892, i32* %11, align 4
  %tmp2_v5.i55.i = add i32 %tmp0_v.i27.i, -29
  %12 = inttoptr i32 %tmp2_v5.i55.i to i32*
  store i32 540424268, i32* %12, align 4
  %tmp2_v6.i56.i = add i32 %tmp0_v.i27.i, -25
  %13 = inttoptr i32 %tmp2_v6.i56.i to i32*
  store i32 892748340, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i27.i, -21
  %14 = inttoptr i32 %tmp2_v7.i.i to i8*
  store i8 0, i8* %14, align 1
  %tmp2_v8.i57.i = add i32 %tmp0_v.i27.i, -52
  %15 = inttoptr i32 %tmp2_v8.i57.i to i32*
  store i32 875968588, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i27.i, -48
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 13890, i16* %16, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i27.i, -46
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i27.i, -37
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 541538380, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i27.i, -33
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 4670004, i32* %19, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i27.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v3.i53.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i27.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517357, i32* %21, align 4
  %22 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_is_postal_code(i32 %tmp2_v16.i.i, i32 0, i32 %tmp2_v4.i29.i, i32 134529024)
  %23 = extractvalue { i32, i32, i32, i32, i32 } %22, 0
  %24 = extractvalue { i32, i32, i32, i32, i32 } %22, 2
  %25 = extractvalue { i32, i32, i32, i32, i32 } %22, 3
  %26 = extractvalue { i32, i32, i32, i32, i32 } %22, 4
  %tmp2_v.i62.i = add i32 %25, -37
  %tmp2_v1.i63.i = add i32 %23, 4
  %27 = inttoptr i32 %tmp2_v1.i63.i to i32*
  store i32 %tmp2_v.i62.i, i32* %27, align 4
  %tmp2_v2.i65.i = add i32 %26, -8184
  %28 = inttoptr i32 %23 to i32*
  store i32 %tmp2_v2.i65.i, i32* %28, align 4
  %tmp2_v4.i67.i = add i32 %23, -4
  %29 = inttoptr i32 %tmp2_v4.i67.i to i32*
  store i32 134517383, i32* %29, align 4
  %30 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i26.i, i32 inreg noundef %24, i32 noundef %23, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %31 = lshr i64 %30, 32
  %32 = trunc i64 %31 to i32
  %tmp2_v.i80.i = add i32 %25, -21
  store i32 %tmp2_v.i80.i, i32* %28, align 4
  store i32 134517422, i32* %29, align 4
  %33 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_is_postal_code(i32 %tmp2_v4.i67.i, i32 %32, i32 %25, i32 %26)
  %34 = extractvalue { i32, i32, i32, i32, i32 } %33, 0
  %35 = extractvalue { i32, i32, i32, i32, i32 } %33, 2
  %36 = extractvalue { i32, i32, i32, i32, i32 } %33, 3
  %37 = extractvalue { i32, i32, i32, i32, i32 } %33, 4
  %tmp2_v.i11.i = add i32 %36, -21
  %tmp2_v1.i.i = add i32 %34, 4
  %38 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %tmp2_v.i11.i, i32* %38, align 4
  %tmp2_v2.i.i = add i32 %37, -8163
  %39 = inttoptr i32 %34 to i32*
  store i32 %tmp2_v2.i.i, i32* %39, align 4
  %tmp2_v4.i.i = add i32 %34, -4
  %40 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517472, i32* %40, align 4
  %41 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i26.i, i32 inreg noundef %35, i32 noundef %34, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %tmp2_v.i.i = add i32 %36, -44
  store i32 %tmp2_v.i.i, i32* %39, align 4
  store i32 134517487, i32* %40, align 4
  %44 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_is_postal_code(i32 %tmp2_v4.i.i, i32 %43, i32 %36, i32 %37)
  %45 = extractvalue { i32, i32, i32, i32, i32 } %44, 0
  %46 = extractvalue { i32, i32, i32, i32, i32 } %44, 2
  %47 = extractvalue { i32, i32, i32, i32, i32 } %44, 3
  %48 = extractvalue { i32, i32, i32, i32, i32 } %44, 4
  %tmp2_v.i88.i = add i32 %47, -44
  %tmp2_v1.i89.i = add i32 %45, 4
  %49 = inttoptr i32 %tmp2_v1.i89.i to i32*
  store i32 %tmp2_v.i88.i, i32* %49, align 4
  %tmp2_v2.i91.i = add i32 %48, -8163
  %50 = inttoptr i32 %45 to i32*
  store i32 %tmp2_v2.i91.i, i32* %50, align 4
  %tmp2_v4.i93.i = add i32 %45, -4
  %51 = inttoptr i32 %tmp2_v4.i93.i to i32*
  store i32 134517537, i32* %51, align 4
  %52 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i26.i, i32 inreg noundef %46, i32 noundef %45, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %tmp2_v.i23.i = add i32 %47, -29
  store i32 %tmp2_v.i23.i, i32* %50, align 4
  store i32 134517552, i32* %51, align 4
  %55 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_is_postal_code(i32 %tmp2_v4.i93.i, i32 %54, i32 %47, i32 %48)
  %56 = extractvalue { i32, i32, i32, i32, i32 } %55, 0
  %57 = extractvalue { i32, i32, i32, i32, i32 } %55, 2
  %58 = extractvalue { i32, i32, i32, i32, i32 } %55, 3
  %59 = extractvalue { i32, i32, i32, i32, i32 } %55, 4
  %tmp2_v.i71.i = add i32 %58, -29
  %tmp2_v1.i72.i = add i32 %56, 4
  %60 = inttoptr i32 %tmp2_v1.i72.i to i32*
  store i32 %tmp2_v.i71.i, i32* %60, align 4
  %tmp2_v2.i74.i = add i32 %59, -8163
  %61 = inttoptr i32 %56 to i32*
  store i32 %tmp2_v2.i74.i, i32* %61, align 4
  %tmp2_v4.i76.i = add i32 %56, -4
  %62 = inttoptr i32 %tmp2_v4.i76.i to i32*
  store i32 134517602, i32* %62, align 4
  %63 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i26.i, i32 inreg noundef %57, i32 noundef %56, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
}

; Function Attrs: norecurse
define internal fastcc { i32, i32, i32, i32, i32 } @Func_is_postal_code(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !14 {
Func_80493A6.exit.i:
  %tmp2_v.i32.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i32.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %arg_ebx, i32* %1, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, -16
  %2 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517653, i32* %2, align 4
  %tmp2_v.i56.i = add i32 %arg_esp, 4
  %3 = inttoptr i32 %tmp2_v.i56.i to i32*
  %4 = load i32, i32* %3, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, -28
  %5 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %4, i32* %5, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -32
  %6 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517670, i32* %6, align 4
  %arg.i.i = load i32, i32* %5, align 4
  %7 = tail call i32 @strlen(i32 %arg.i.i)
  %8 = icmp eq i32 %7, 7
  br i1 %8, label %BB_80493B8.i, label %.exit

BB_80493B8.i:                                     ; preds = %Func_80493A6.exit.i
  store i32 134517693, i32* %2, align 4
  %9 = tail call i32 @__ctype_b_loc()
  store i32 134517738, i32* %2, align 4
  %10 = tail call i32 @__ctype_b_loc()
  store i32 134517786, i32* %2, align 4
  %11 = tail call i32 @__ctype_b_loc()
  store i32 134517857, i32* %2, align 4
  %12 = tail call i32 @__ctype_b_loc()
  store i32 134517902, i32* %2, align 4
  %13 = tail call i32 @__ctype_b_loc()
  store i32 134517947, i32* %2, align 4
  %14 = tail call i32 @__ctype_b_loc()
  %15 = inttoptr i32 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %tmp0_v2.i42.i = add i32 %17, 6
  %18 = inttoptr i32 %tmp0_v2.i42.i to i8*
  %19 = load i8, i8* %18, align 1
  %tmp0_v4.i44.i = sext i8 %19 to i32
  %tmp0_v5.i45.i = shl nsw i32 %tmp0_v4.i44.i, 1
  %tmp0_v6.i46.i = add i32 %tmp0_v5.i45.i, %16
  %20 = inttoptr i32 %tmp0_v6.i46.i to i16*
  %21 = load i16, i16* %20, align 2
  %22 = lshr i16 %21, 11
  %.lobit = and i16 %22, 1
  %23 = zext i16 %.lobit to i32
  br label %.exit

.exit:                                            ; preds = %BB_80493B8.i, %Func_80493A6.exit.i
  %r_edx.0 = phi i32 [ %arg_edx, %Func_80493A6.exit.i ], [ %tmp0_v5.i45.i, %BB_80493B8.i ]
  %r_eax.0 = phi i32 [ 0, %Func_80493A6.exit.i ], [ %23, %BB_80493B8.i ]
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %0, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp2_v.i56.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %r_edx.0, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %25, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %24, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
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
!14 = !{i32 0, i32 2, i32 3, i32 4}

  tail call fastcc void @postal_code214(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
