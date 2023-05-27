; Mutation 6
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack5 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.3 = constant [9 x i8] c"%c - %d\0a\00"

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
define internal fastcc void @count_chars6(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %4, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -52
  %5 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517232, i32* %5, align 4
  %tmp4_v.i12.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i16.i = add i32 %tmp0_v.i3.i, -20
  %8 = inttoptr i32 %tmp2_v2.i16.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i3.i, -48
  %9 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 1684234849, i32* %9, align 16
  %tmp2_v4.i18.i = add i32 %tmp0_v.i3.i, -44
  %10 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 1751606885, i32* %10, align 4
  %tmp2_v5.i19.i = add i32 %tmp0_v.i3.i, -40
  %11 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 1818978921, i32* %11, align 8
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -36
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1886350957, i32* %12, align 4
  %tmp2_v7.i20.i = add i32 %tmp0_v.i3.i, -32
  %13 = inttoptr i32 %tmp2_v7.i20.i to i32*
  store i32 1684234849, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -28
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1650550373, i32* %14, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -24
  %15 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6447459, i32* %15, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -64
  %16 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i17.i, i32* %16, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i3.i, -68
  %17 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517309, i32* %17, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i3.i, -72
  %18 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %18, align 8
  %tmp2_v1.i17.i.i = add i32 %tmp0_v.i3.i, -76
  %19 = inttoptr i32 %tmp2_v1.i17.i.i to i32*
  store i32 0, i32* %19, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -80
  %20 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %20, align 16
  %tmp2_v3.i19.i.i = add i32 %tmp0_v.i3.i, -148
  %21 = inttoptr i32 %tmp2_v3.i19.i.i to i32*
  store i32 134517359, i32* %21, align 4
  %tmp4_v.i.i.i.i = add i32 %tmp0_v.i3.i, -144
  %22 = load i32, i32* %16, align 16
  %tmp2_v2.i54.i.i = add i32 %tmp0_v.i3.i, -132
  %23 = inttoptr i32 %tmp2_v2.i54.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %tmp2_v5.i57.i.i = add i32 %tmp0_v.i3.i, -84
  %25 = inttoptr i32 %tmp2_v5.i57.i.i to i32*
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %23, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i3.i, -160
  %27 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i3.i, -164
  %28 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517397, i32* %28, align 4
  %arg.i.i.i = load i32, i32* %27, align 16
  %29 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i133.i.i = add i32 %tmp0_v.i3.i, -96
  %30 = inttoptr i32 %tmp2_v.i133.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v3.i137.i.i = add i32 %29, -1
  %tmp2_v4.i138.i.i = add i32 %tmp0_v.i3.i, -92
  %31 = inttoptr i32 %tmp2_v4.i138.i.i to i32*
  store i32 %tmp2_v3.i137.i.i, i32* %31, align 4
  %tmp0_v5.i.i.i = add i32 %29, 15
  %tmp0_v.i3.i.i = and i32 %tmp0_v5.i.i.i, 4080
  %tmp0_v1.i.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v.i3.i.i
  %tmp2_v.i66.i.i = add i32 %tmp0_v.i3.i, -88
  %32 = inttoptr i32 %tmp2_v.i66.i.i to i32*
  store i32 %tmp0_v1.i.i.i, i32* %32, align 8
  %tmp2_v4.i67.i.i = add i32 %tmp0_v.i3.i, -112
  %33 = inttoptr i32 %tmp2_v4.i67.i.i to i32*
  store i32 0, i32* %33, align 16
  %tmp2_v5.i68.i.i = add i32 %tmp0_v.i3.i, -116
  %34 = inttoptr i32 %tmp2_v5.i68.i.i to i32*
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %30, align 16
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %BB_804931F.i.lr.ph.i, label %Func_print_occurrences.exit

BB_804931F.i.lr.ph.i:                             ; preds = %.exit
  %tmp0_v9.i139.i.i = and i32 %tmp0_v5.i.i.i, -4096
  %tmp0_v11.i.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v9.i139.i.i
  %tmp2_v.i12.i.i = add i32 %tmp0_v.i3.i, -117
  %37 = inttoptr i32 %tmp2_v.i12.i.i to i8*
  %tmp2_v1.i13.i.i = add i32 %tmp0_v.i3.i, -108
  %38 = inttoptr i32 %tmp2_v1.i13.i.i to i32*
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i3.i, -104
  %39 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i3.i, -100
  %40 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %tmp2_v9.i174.i.i = add i32 %tmp0_v1.i.i.i, -8
  %41 = inttoptr i32 %tmp2_v9.i174.i.i to i32*
  %tmp2_v10.i175.i.i = add i32 %tmp0_v1.i.i.i, -12
  %42 = inttoptr i32 %tmp2_v10.i175.i.i to i32*
  %tmp2_v12.i.i.i = add i32 %tmp0_v1.i.i.i, -16
  %43 = inttoptr i32 %tmp2_v12.i.i.i to i32*
  %tmp2_v13.i.i.i = add i32 %tmp0_v1.i.i.i, -20
  %44 = inttoptr i32 %tmp2_v13.i.i.i to i32*
  br label %BB_804931F.i.i

BB_8049356.i.i:                                   ; preds = %BB_804934A.i.i, %BB_804931F.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.214.i, %BB_804931F.i.i ], [ %54, %BB_804934A.i.i ]
  %45 = load i8, i8* %37, align 1
  %.not.i.i.i = icmp eq i8 %45, 0
  br i1 %.not.i.i.i, label %BB_804935C.i.i, label %BB_80493D6.i.i

BB_804935C.i.i:                                   ; preds = %BB_8049356.i.i
  store i32 0, i32* %39, align 8
  store i32 0, i32* %40, align 4
  %46 = load i32, i32* %30, align 16
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %BB_804936C.i.i, label %BB_8049396.i.i

BB_8049346.i.i:                                   ; preds = %BB_804932C.i.i
  store i8 1, i8* %37, align 1
  %.pre.i = load i32, i32* %38, align 4
  br label %BB_804934A.i.i

BB_804931F.i.i:                                   ; preds = %BB_80493D6.i.i, %BB_804931F.i.lr.ph.i
  %r_ecx.214.i = phi i32 [ %tmp0_v11.i.i.i, %BB_804931F.i.lr.ph.i ], [ %r_ecx.3.i, %BB_80493D6.i.i ]
  store i8 0, i8* %37, align 1
  store i32 0, i32* %38, align 4
  %48 = load i32, i32* %33, align 16
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %BB_804932C.i.i, label %BB_8049356.i.i

BB_804932C.i.i:                                   ; preds = %BB_804934A.i.i, %BB_804931F.i.i
  %storemerge211.i = phi i32 [ %tmp0_v1.i144.i.i, %BB_804934A.i.i ], [ 0, %BB_804931F.i.i ]
  %50 = load i32, i32* %34, align 4
  %51 = load i32, i32* %23, align 4
  %tmp0_v3.i74.i.i = add i32 %51, %50
  %52 = inttoptr i32 %tmp0_v3.i74.i.i to i8*
  %53 = load i8, i8* %52, align 1
  %tmp0_v4.i75.i.i = zext i8 %53 to i32
  %54 = load i32, i32* %32, align 8
  %tmp0_v9.i.i.i = add i32 %54, %storemerge211.i
  %55 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  %56 = load i8, i8* %55, align 1
  %tmp0_v10.i.i.i = zext i8 %56 to i32
  %cc_dst_v.i80.i.i = sub nsw i32 %tmp0_v4.i75.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i81.i.i = and i32 %cc_dst_v.i80.i.i, 255
  %.not.i82.i.i = icmp eq i32 %tmp4_v.i81.i.i, 0
  br i1 %.not.i82.i.i, label %BB_8049346.i.i, label %BB_804934A.i.i

BB_804936C.i.i:                                   ; preds = %BB_804938A.i.i, %BB_804935C.i.i
  %storemerge312.i = phi i32 [ %tmp0_v1.i114.i.i, %BB_804938A.i.i ], [ 0, %BB_804935C.i.i ]
  %57 = load i32, i32* %34, align 4
  %58 = load i32, i32* %23, align 4
  %tmp0_v3.i89.i.i = add i32 %58, %57
  %59 = inttoptr i32 %tmp0_v3.i89.i.i to i8*
  %60 = load i8, i8* %59, align 1
  %tmp0_v4.i90.i.i = zext i8 %60 to i32
  %tmp0_v9.i95.i.i = add i32 %58, %storemerge312.i
  %61 = inttoptr i32 %tmp0_v9.i95.i.i to i8*
  %62 = load i8, i8* %61, align 1
  %tmp0_v10.i96.i.i = zext i8 %62 to i32
  %cc_dst_v.i97.i.i = sub nsw i32 %tmp0_v4.i90.i.i, %tmp0_v10.i96.i.i
  %tmp4_v.i98.i.i = and i32 %cc_dst_v.i97.i.i, 255
  %.not.i99.i.i = icmp eq i32 %tmp4_v.i98.i.i, 0
  br i1 %.not.i99.i.i, label %BB_8049386.i.i, label %BB_804938A.i.i

BB_80493D6.i.i:                                   ; preds = %BB_8049396.i.i, %BB_8049356.i.i
  %r_ecx.3.i = phi i32 [ %82, %BB_8049396.i.i ], [ %r_ecx.0.lcssa.i, %BB_8049356.i.i ]
  %63 = load i32, i32* %34, align 4
  %tmp0_v1.i104.i.i = add i32 %63, 1
  store i32 %tmp0_v1.i104.i.i, i32* %34, align 4
  %64 = load i32, i32* %30, align 16
  %65 = icmp slt i32 %tmp0_v1.i104.i.i, %64
  br i1 %65, label %BB_804931F.i.i, label %Func_print_occurrences.exit

BB_804938A.i.i:                                   ; preds = %BB_8049386.i.i, %BB_804936C.i.i
  %66 = phi i32 [ %storemerge312.i, %BB_804936C.i.i ], [ %.pre15.i, %BB_8049386.i.i ]
  %tmp0_v1.i114.i.i = add i32 %66, 1
  store i32 %tmp0_v1.i114.i.i, i32* %40, align 4
  %67 = load i32, i32* %30, align 16
  %68 = icmp slt i32 %tmp0_v1.i114.i.i, %67
  br i1 %68, label %BB_804936C.i.i, label %BB_8049396.i.i

BB_804934A.i.i:                                   ; preds = %BB_804932C.i.i, %BB_8049346.i.i
  %69 = phi i32 [ %storemerge211.i, %BB_804932C.i.i ], [ %.pre.i, %BB_8049346.i.i ]
  %tmp0_v1.i144.i.i = add i32 %69, 1
  store i32 %tmp0_v1.i144.i.i, i32* %38, align 4
  %70 = load i32, i32* %33, align 16
  %71 = icmp slt i32 %tmp0_v1.i144.i.i, %70
  br i1 %71, label %BB_804932C.i.i, label %BB_8049356.i.i

BB_8049396.i.i:                                   ; preds = %BB_804938A.i.i, %BB_804935C.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.0.lcssa.i, %BB_804935C.i.i ], [ %storemerge312.i, %BB_804938A.i.i ]
  %72 = load i32, i32* %34, align 4
  %73 = load i32, i32* %23, align 4
  %tmp0_v3.i167.i.i = add i32 %73, %72
  %74 = inttoptr i32 %tmp0_v3.i167.i.i to i8*
  %75 = load i8, i8* %74, align 1
  %tmp0_v5.i169.i.i = sext i8 %75 to i32
  %76 = load i32, i32* %39, align 8
  store i32 %76, i32* %41, align 8
  store i32 %tmp0_v5.i169.i.i, i32* %42, align 4
  %spi.bis.3 = ptrtoint[9 x i8]* @str.3 to i32
  store i32 %spi.bis.3, i32* %43, align 16
  store i32 134517687, i32* %44, align 4
  %77 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %72, i32 noundef %tmp2_v12.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %78 = load i32, i32* %34, align 4
  %79 = load i32, i32* %23, align 4
  %tmp0_v4.i158.i.i = add i32 %79, %78
  %80 = inttoptr i32 %tmp0_v4.i158.i.i to i8*
  %81 = load i8, i8* %80, align 1
  %82 = load i32, i32* %32, align 8
  %83 = load i32, i32* %33, align 16
  %tmp0_v10.i161.i.i = add i32 %83, %82
  %84 = inttoptr i32 %tmp0_v10.i161.i.i to i8*
  store i8 %81, i8* %84, align 1
  %85 = load i32, i32* %33, align 16
  %tmp0_v13.i.i.i = add i32 %85, 1
  store i32 %tmp0_v13.i.i.i, i32* %33, align 16
  br label %BB_80493D6.i.i

BB_8049386.i.i:                                   ; preds = %BB_804936C.i.i
  %86 = load i32, i32* %39, align 8
  %tmp0_v1.i188.i.i = add i32 %86, 1
  store i32 %tmp0_v1.i188.i.i, i32* %39, align 8
  %.pre15.i = load i32, i32* %40, align 4
  br label %BB_804938A.i.i

Func_print_occurrences.exit:                      ; preds = %BB_80493D6.i.i, %.exit
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

  tail call fastcc void @count_chars6 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack5, i32 0, i32 8092) to i32)) nounwind
