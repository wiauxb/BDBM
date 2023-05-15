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
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @count_wordsm15161636(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i27.i = add i32 %arg_esp, 4
  %tmp0_v.i28.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i28.i, -4
  %2 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i28.i, -8
  %3 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i32.i = add i32 %tmp0_v.i28.i, -12
  %4 = inttoptr i32 %tmp2_v5.i32.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i34.i = add i32 %tmp0_v.i28.i, -16
  %5 = inttoptr i32 %tmp2_v6.i34.i to i32*
  store i32 %tmp2_v.i27.i, i32* %5, align 16
  %tmp2_v8.i35.i = add i32 %tmp0_v.i28.i, -68
  %6 = inttoptr i32 %tmp2_v8.i35.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i9.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i9.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i13.i = add i32 %tmp0_v.i28.i, -20
  %9 = inttoptr i32 %tmp2_v2.i13.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i28.i, -49
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i14.i = add i32 %tmp0_v.i28.i, -45
  %11 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 745761056, i32* %11, align 4
  %tmp2_v5.i15.i = add i32 %tmp0_v.i28.i, -41
  %12 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 1701344288, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i28.i, -37
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 2036430624, i32* %13, align 4
  %tmp2_v7.i16.i = add i32 %tmp0_v.i28.i, -33
  %14 = inttoptr i32 %tmp2_v7.i16.i to i32*
  store i32 1849761838, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i28.i, -29
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1701344367, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i28.i, -25
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 774778482, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i28.i, -21
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 1
  %tmp2_v13.i.i = add i32 %tmp0_v.i28.i, -80
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %18, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i28.i, -84
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517347, i32* %19, align 4
  %tmp2_v.i48.i.i = add i32 %tmp0_v.i28.i, -88
  %20 = inttoptr i32 %tmp2_v.i48.i.i to i32*
  store i32 %tmp2_v4.i30.i, i32* %20, align 8
  %tmp2_v1.i50.i.i = add i32 %tmp0_v.i28.i, -92
  %21 = inttoptr i32 %tmp2_v1.i50.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i52.i.i = add i32 %tmp0_v.i28.i, -148
  %22 = inttoptr i32 %tmp2_v2.i52.i.i to i32*
  store i32 134517422, i32* %22, align 4
  %23 = load i32, i32* %18, align 16
  %tmp2_v2.i101.i.i = add i32 %tmp0_v.i28.i, -132
  %24 = inttoptr i32 %tmp2_v2.i101.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp4_v.i102.i.b.i = load i1, i1* @segs.0, align 1
  %25 = select i1 %tmp4_v.i102.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %26 = load i32, i32* %25, align 4
  %tmp2_v5.i105.i.i = add i32 %tmp0_v.i28.i, -100
  %27 = inttoptr i32 %tmp2_v5.i105.i.i to i32*
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %24, align 4
  %tmp2_v9.i109.i.i = add i32 %tmp0_v.i28.i, -160
  %29 = inttoptr i32 %tmp2_v9.i109.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v10.i110.i.i = add i32 %tmp0_v.i28.i, -164
  %30 = inttoptr i32 %tmp2_v10.i110.i.i to i32*
  store i32 134517456, i32* %30, align 4
  %arg.i.i.i = load i32, i32* %29, align 16
  %31 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i90.i.i = add i32 %tmp0_v.i28.i, -112
  %32 = inttoptr i32 %tmp2_v.i90.i.i to i32*
  store i32 %31, i32* %32, align 16
  %tmp2_v1.i92.i.i = add i32 %tmp0_v.i28.i, -120
  %33 = inttoptr i32 %tmp2_v1.i92.i.i to i32*
  store i32 0, i32* %33, align 8
  %tmp2_v2.i93.i.i = add i32 %tmp0_v.i28.i, -107
  %34 = inttoptr i32 %tmp2_v2.i93.i.i to i32*
  store i32 992751136, i32* %34, align 4
  %tmp2_v3.i94.i.i = add i32 %tmp0_v.i28.i, -103
  %35 = inttoptr i32 %tmp2_v3.i94.i.i to i16*
  store i16 2314, i16* %35, align 2
  %tmp2_v4.i95.i.i = add i32 %tmp0_v.i28.i, -101
  %36 = inttoptr i32 %tmp2_v4.i95.i.i to i8*
  store i8 0, i8* %36, align 1
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i28.i, -116
  %37 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %32, align 16
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %BB_804931D.i.preheader.lr.ph.i, label %Func_word_count.exit

BB_804931D.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i28.i, -156
  %40 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  br label %BB_804931D.i.preheader.i

BB_804931D.i.preheader.i:                         ; preds = %BB_804935F.i.i, %BB_804931D.i.preheader.lr.ph.i
  %41 = phi i32 [ 0, %BB_804931D.i.preheader.lr.ph.i ], [ %tmp0_v1.i114.i.i, %BB_804935F.i.i ]
  %42 = load i32, i32* %24, align 4
  %tmp0_v3.i11.i11.i = add i32 %42, %41
  %43 = inttoptr i32 %tmp0_v3.i11.i11.i to i8*
  %44 = load i8, i8* %43, align 1
  %tmp0_v5.i.i12.i = sext i8 %44 to i32
  store i32 %tmp0_v5.i.i12.i, i32* %40, align 4
  store i32 %tmp2_v2.i93.i.i, i32* %29, align 16
  store i32 134517522, i32* %30, align 4
  %arg.i.i413.i = load i32, i32* %29, align 16
  %arg2.i.i14.i = load i32, i32* %40, align 4
  %45 = tail call i32 @strchr(i32 %arg.i.i413.i, i32 %arg2.i.i14.i)
  %.not.i.i15.i = icmp eq i32 %45, 0
  br i1 %.not.i.i15.i, label %BB_8049319.i.i, label %BB_8049327.i.i

BB_8049350.i.i:                                   ; preds = %BB_804932E.i.i
  %tmp0_v1.i.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i.i.i, i32* %37, align 4
  %46 = load i32, i32* %32, align 16
  %47 = icmp slt i32 %tmp0_v1.i.i.i, %46
  br i1 %47, label %BB_804932E.i.i, label %BB_804935F.i.i

BB_8049327.i.i:                                   ; preds = %BB_8049319.i.i, %BB_804931D.i.preheader.i
  %.lcssa.i = phi i32 [ %41, %BB_804931D.i.preheader.i ], [ %tmp0_v1.i64.i.i, %BB_8049319.i.i ]
  %48 = load i32, i32* %33, align 8
  %tmp0_v1.i32.i.i = add i32 %48, 1
  store i32 %tmp0_v1.i32.i.i, i32* %33, align 8
  %49 = load i32, i32* %37, align 4
  %50 = load i32, i32* %32, align 16
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %BB_804932E.i.i, label %BB_804935F.i.i

BB_804932E.i.i:                                   ; preds = %BB_8049327.i.i, %BB_8049350.i.i
  %52 = phi i32 [ %tmp0_v1.i.i.i, %BB_8049350.i.i ], [ %49, %BB_8049327.i.i ]
  %53 = load i32, i32* %24, align 4
  %tmp0_v3.i38.i.i = add i32 %53, %52
  %54 = inttoptr i32 %tmp0_v3.i38.i.i to i8*
  %55 = load i8, i8* %54, align 1
  %tmp0_v5.i40.i.i = sext i8 %55 to i32
  store i32 %tmp0_v5.i40.i.i, i32* %40, align 4
  store i32 %tmp2_v2.i93.i.i, i32* %29, align 16
  store i32 134517577, i32* %30, align 4
  %arg.i.i7.i = load i32, i32* %29, align 16
  %arg2.i.i8.i = load i32, i32* %40, align 4
  %56 = tail call i32 @strchr(i32 %arg.i.i7.i, i32 %arg2.i.i8.i)
  %57 = icmp eq i32 %56, 0
  %.pre.pre.i = load i32, i32* %37, align 4
  br i1 %57, label %BB_804935F.i.i, label %BB_8049350.i.i

BB_8049319.i.i:                                   ; preds = %BB_8049319.i.i, %BB_804931D.i.preheader.i
  %58 = load i32, i32* %37, align 4
  %tmp0_v1.i64.i.i = add i32 %58, 1
  store i32 %tmp0_v1.i64.i.i, i32* %37, align 4
  %59 = load i32, i32* %24, align 4
  %tmp0_v3.i11.i.i = add i32 %59, %tmp0_v1.i64.i.i
  %60 = inttoptr i32 %tmp0_v3.i11.i.i to i8*
  %61 = load i8, i8* %60, align 1
  %tmp0_v5.i.i.i = sext i8 %61 to i32
  store i32 %tmp0_v5.i.i.i, i32* %40, align 4
  store i32 %tmp2_v2.i93.i.i, i32* %29, align 16
  store i32 134517522, i32* %30, align 4
  %arg.i.i4.i = load i32, i32* %29, align 16
  %arg2.i.i.i = load i32, i32* %40, align 4
  %62 = tail call i32 @strchr(i32 %arg.i.i4.i, i32 %arg2.i.i.i)
  %.not.i.i.i = icmp eq i32 %62, 0
  br i1 %.not.i.i.i, label %BB_8049319.i.i, label %BB_8049327.i.i

BB_804935F.i.i:                                   ; preds = %BB_804932E.i.i, %BB_8049327.i.i, %BB_8049350.i.i
  %63 = phi i32 [ %49, %BB_8049327.i.i ], [ %tmp0_v1.i.i.i, %BB_8049350.i.i ], [ %.pre.pre.i, %BB_804932E.i.i ]
  %r_edx.2.i = phi i32 [ %.lcssa.i, %BB_8049327.i.i ], [ %52, %BB_804932E.i.i ], [ %52, %BB_8049350.i.i ]
  %tmp0_v1.i114.i.i = add i32 %63, 1
  store i32 %tmp0_v1.i114.i.i, i32* %37, align 4
  %64 = load i32, i32* %32, align 16
  %65 = icmp slt i32 %tmp0_v1.i114.i.i, %64
  br i1 %65, label %BB_804931D.i.preheader.i, label %Func_word_count.exit

Func_word_count.exit:                             ; preds = %BB_804935F.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.2.i, %BB_804935F.i.i ]
  %66 = load i32, i32* %33, align 8
  %67 = load i32, i32* %27, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %68 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %69 = load i32, i32* %68, align 4
  %tmp0_v4.i59.i.i = xor i32 %69, %67
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %20, align 8
  %tmp2_v.i.i = add i32 %71, -48
  %72 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %66, i32* %72, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i28.i, -76
  %73 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %66, i32* %73, align 4
  %tmp2_v5.i.i = add i32 %70, -8184
  store i32 %tmp2_v5.i.i, i32* %18, align 16
  store i32 134517371, i32* %19, align 4
  %74 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v4.i59.i.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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
!12 = !{i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @count_wordsm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
