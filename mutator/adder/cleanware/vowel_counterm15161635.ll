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
declare i32 @toupper(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @vowel_counterm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i9.i = add i32 %arg_esp, 4
  %tmp0_v.i10.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i12.i = add i32 %tmp0_v.i10.i, -4
  %2 = inttoptr i32 %tmp2_v3.i12.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i13.i = add i32 %tmp0_v.i10.i, -8
  %3 = inttoptr i32 %tmp2_v4.i13.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i15.i = add i32 %tmp0_v.i10.i, -12
  %4 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i17.i = add i32 %tmp0_v.i10.i, -16
  %5 = inttoptr i32 %tmp2_v6.i17.i to i32*
  store i32 %tmp2_v.i9.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i10.i, -100
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i35.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i35.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i39.i = add i32 %tmp0_v.i10.i, -20
  %9 = inttoptr i32 %tmp2_v2.i39.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i10.i, -43
  %10 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 1931965513, i32* %10, align 4
  %tmp2_v4.i41.i = add i32 %tmp0_v.i10.i, -39
  %11 = inttoptr i32 %tmp2_v4.i41.i to i32*
  store i32 1998610720, i32* %11, align 4
  %tmp2_v5.i42.i = add i32 %tmp0_v.i10.i, -35
  %12 = inttoptr i32 %tmp2_v5.i42.i to i32*
  store i32 1701080687, i32* %12, align 4
  %tmp2_v6.i43.i = add i32 %tmp0_v.i10.i, -31
  %13 = inttoptr i32 %tmp2_v6.i43.i to i32*
  store i32 1819633266, i32* %13, align 4
  %tmp2_v7.i44.i = add i32 %tmp0_v.i10.i, -27
  %14 = inttoptr i32 %tmp2_v7.i44.i to i32*
  store i32 1718184992, i32* %14, align 4
  %tmp2_v8.i45.i = add i32 %tmp0_v.i10.i, -23
  %15 = inttoptr i32 %tmp2_v8.i45.i to i16*
  store i16 8549, i16* %15, align 2
  %tmp2_v9.i.i = add i32 %tmp0_v.i10.i, -21
  %16 = inttoptr i32 %tmp2_v9.i.i to i8*
  store i8 0, i8* %16, align 1
  %tmp2_v10.i.i = add i32 %tmp0_v.i10.i, -65
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701541196, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i10.i, -61
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1629505824, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i10.i, -57
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1870209133, i32* %19, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i10.i, -53
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 1176531573, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i10.i, -49
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 1701344353, i32* %21, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i10.i, -45
  %22 = inttoptr i32 %tmp2_v15.i.i to i16*
  store i16 114, i16* %22, align 2
  %tmp2_v16.i.i = add i32 %tmp0_v.i10.i, -76
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 1699045697, i32* %23, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i10.i, -72
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 1867475273, i32* %24, align 8
  %tmp2_v18.i.i = add i32 %tmp0_v.i10.i, -68
  %25 = inttoptr i32 %tmp2_v18.i.i to i16*
  store i16 30037, i16* %25, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i10.i, -66
  %26 = inttoptr i32 %tmp2_v19.i.i to i8*
  store i8 0, i8* %26, align 2
  %tmp2_v22.i.i = add i32 %tmp0_v.i10.i, -112
  %27 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i40.i, i32* %27, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i10.i, -116
  %28 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517404, i32* %28, align 4
  %29 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %tmp2_v23.i.i, i32 %tmp2_v4.i13.i, i32 134529024)
  %30 = extractvalue { i32, i32, i32, i32, i32 } %29, 0
  %31 = extractvalue { i32, i32, i32, i32, i32 } %29, 1
  %32 = extractvalue { i32, i32, i32, i32, i32 } %29, 3
  %33 = extractvalue { i32, i32, i32, i32, i32 } %29, 4
  %tmp2_v.i60.i = add i32 %32, -80
  %34 = inttoptr i32 %tmp2_v.i60.i to i32*
  store i32 %31, i32* %34, align 4
  %tmp2_v2.i63.i = add i32 %32, -57
  %35 = inttoptr i32 %30 to i32*
  store i32 %tmp2_v2.i63.i, i32* %35, align 4
  %tmp2_v4.i64.i = add i32 %30, -4
  %36 = inttoptr i32 %tmp2_v4.i64.i to i32*
  store i32 134517422, i32* %36, align 4
  %37 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %tmp2_v4.i64.i, i32 %32, i32 %33)
  %38 = extractvalue { i32, i32, i32, i32, i32 } %37, 0
  %39 = extractvalue { i32, i32, i32, i32, i32 } %37, 1
  %40 = extractvalue { i32, i32, i32, i32, i32 } %37, 3
  %41 = extractvalue { i32, i32, i32, i32, i32 } %37, 4
  %tmp2_v.i21.i = add i32 %40, -76
  %42 = inttoptr i32 %tmp2_v.i21.i to i32*
  store i32 %39, i32* %42, align 4
  %tmp2_v2.i24.i = add i32 %40, -68
  %43 = inttoptr i32 %38 to i32*
  store i32 %tmp2_v2.i24.i, i32* %43, align 4
  %tmp2_v4.i25.i = add i32 %38, -4
  %44 = inttoptr i32 %tmp2_v4.i25.i to i32*
  store i32 134517440, i32* %44, align 4
  %45 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %tmp2_v4.i25.i, i32 %40, i32 %41)
  %46 = extractvalue { i32, i32, i32, i32, i32 } %45, 0
  %47 = extractvalue { i32, i32, i32, i32, i32 } %45, 1
  %48 = extractvalue { i32, i32, i32, i32, i32 } %45, 2
  %49 = extractvalue { i32, i32, i32, i32, i32 } %45, 3
  %50 = extractvalue { i32, i32, i32, i32, i32 } %45, 4
  %tmp2_v.i.i = add i32 %49, -72
  %51 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %47, i32* %51, align 4
  %tmp2_v2.i.i = add i32 %49, -80
  %52 = inttoptr i32 %tmp2_v2.i.i to i32*
  %53 = load i32, i32* %52, align 4
  %tmp2_v4.i.i = add i32 %46, 4
  %54 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %53, i32* %54, align 4
  %tmp2_v5.i.i = add i32 %50, -8184
  %55 = inttoptr i32 %46 to i32*
  store i32 %tmp2_v5.i.i, i32* %55, align 4
  %tmp2_v7.i.i = add i32 %46, -4
  %56 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517464, i32* %56, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i9.i, i32 inreg noundef %48, i32 noundef %46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %tmp2_v.i51.i = add i32 %49, -76
  %60 = inttoptr i32 %tmp2_v.i51.i to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %54, align 4
  %tmp2_v4.i55.i = add i32 %50, -8164
  store i32 %tmp2_v4.i55.i, i32* %55, align 4
  store i32 134517485, i32* %56, align 4
  %62 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i9.i, i32 inreg noundef %59, i32 noundef %46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %63 = lshr i64 %62, 32
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %51, align 4
  store i32 %65, i32* %54, align 4
  %tmp2_v4.i7.i = add i32 %50, -8144
  store i32 %tmp2_v4.i7.i, i32* %55, align 4
  store i32 134517506, i32* %56, align 4
  %66 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i9.i, i32 inreg noundef %64, i32 noundef %46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void
}

; Function Attrs: norecurse
define internal fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !14 {
  %tmp2_v.i28.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i28.i to i32*
  store i32 %arg_ebp, i32* %1, align 4
  %tmp2_v1.i30.i = add i32 %arg_esp, -8
  %2 = inttoptr i32 %tmp2_v1.i30.i to i32*
  store i32 %arg_ebx, i32* %2, align 4
  %tmp2_v2.i32.i = add i32 %arg_esp, -32
  %3 = inttoptr i32 %tmp2_v2.i32.i to i32*
  store i32 134517557, i32* %3, align 4
  %tmp2_v.i56.i = add i32 %arg_esp, -20
  %4 = inttoptr i32 %tmp2_v.i56.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v1.i57.i = add i32 %arg_esp, -16
  %5 = inttoptr i32 %tmp2_v1.i57.i to i32*
  %tmp2_v.i23.i = add i32 %arg_esp, 4
  %6 = inttoptr i32 %tmp2_v.i23.i to i32*
  %tmp2_v2.i25.i = add i32 %arg_esp, -44
  %7 = inttoptr i32 %tmp2_v2.i25.i to i32*
  %tmp2_v3.i26.i = add i32 %arg_esp, -48
  %8 = inttoptr i32 %tmp2_v3.i26.i to i32*
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %7, align 4
  store i32 134517647, i32* %8, align 4
  %arg.i.i2732 = load i32, i32* %7, align 4
  %10 = tail call i32 @strlen(i32 %arg.i.i2732)
  %11 = load i32, i32* %5, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %BB_804934B.i, label %.exit

BB_804937C.i:                                     ; preds = %BB_8049370.i
  %13 = load i32, i32* %4, align 4
  %tmp0_v1.i2.i = add i32 %13, 1
  store i32 %tmp0_v1.i2.i, i32* %4, align 4
  br label %BB_8049380.i

BB_804934B.i:                                     ; preds = %BB_8049380.i, %0
  %14 = phi i32 [ %24, %BB_8049380.i ], [ %11, %0 ]
  %15 = load i32, i32* %6, align 4
  %tmp0_v3.i7.i = add i32 %15, %14
  %16 = inttoptr i32 %tmp0_v3.i7.i to i8*
  %17 = load i8, i8* %16, align 1
  %tmp0_v5.i9.i = sext i8 %17 to i32
  store i32 %tmp0_v5.i9.i, i32* %7, align 4
  store i32 134517602, i32* %8, align 4
  %arg.i.i = load i32, i32* %7, align 4
  %18 = tail call i32 @toupper(i32 %arg.i.i)
  %19 = add i32 %18, -86
  %20 = icmp ult i32 %19, -21
  br i1 %20, label %BB_8049380.i, label %BB_804936D.i

BB_8049380.i:                                     ; preds = %BB_8049370.i, %BB_804934B.i, %BB_804937C.i
  %21 = load i32, i32* %5, align 4
  %tmp0_v1.i15.i = add i32 %21, 1
  store i32 %tmp0_v1.i15.i, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %7, align 4
  store i32 134517647, i32* %8, align 4
  %arg.i.i27 = load i32, i32* %7, align 4
  %23 = tail call i32 @strlen(i32 %arg.i.i27)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %BB_804934B.i, label %.exit

BB_8049370.i:                                     ; preds = %BB_804936D.i, %BB_8049370.i
  %r_eax.0 = phi i32 [ %tmp0_v.i47.i, %BB_804936D.i ], [ 134517616, %BB_8049370.i ]
  %tmp2_v1.i36.i = add nuw nsw i32 %r_eax.0, 134520900
  %26 = inttoptr i32 %tmp2_v1.i36.i to i32*
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %error.i [
    i32 -11396, label %BB_804937C.i
    i32 -11408, label %BB_8049370.i
    i32 -11392, label %BB_8049380.i
  ]

BB_804936D.i:                                     ; preds = %BB_804934B.i
  %tmp0_v1.i.i = shl nuw nsw i32 %18, 2
  %tmp0_v.i47.i = add nsw i32 %tmp0_v1.i.i, -260
  br label %BB_8049370.i

error.i:                                          ; preds = %BB_8049370.i
  unreachable

.exit:                                            ; preds = %BB_8049380.i, %0
  %.lcssa = phi i32 [ %11, %0 ], [ %24, %BB_8049380.i ]
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %1, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp2_v.i23.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %28, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %.lcssa, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %30, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %29, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
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
!14 = !{i32 0, i32 3, i32 4}

  tail call fastcc void @vowel_counterm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
