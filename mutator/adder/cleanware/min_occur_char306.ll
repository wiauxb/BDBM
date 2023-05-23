; Mutation 306
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
@str.305 = constant [7 x i8] c"%c:%d\0a\00"

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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @min_occur_char306(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %4, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -52
  %5 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517264, i32* %5, align 4
  %tmp4_v.i12.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i16.i = add i32 %tmp0_v.i.i, -20
  %8 = inttoptr i32 %tmp2_v2.i16.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i.i, -44
  %9 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 1684234849, i32* %9, align 4
  %tmp2_v4.i18.i = add i32 %tmp0_v.i.i, -40
  %10 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 1751606885, i32* %10, align 8
  %tmp2_v5.i19.i = add i32 %tmp0_v.i.i, -36
  %11 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 1684234849, i32* %11, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -32
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1751606885, i32* %12, align 16
  %tmp2_v7.i20.i = add i32 %tmp0_v.i.i, -28
  %13 = inttoptr i32 %tmp2_v7.i20.i to i32*
  store i32 1684234849, i32* %13, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -24
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6776421, i32* %14, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -64
  %15 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v3.i17.i, i32* %15, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -68
  %16 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517334, i32* %16, align 4
  %tmp2_v.i226.i.i = add i32 %tmp0_v.i.i, -72
  %17 = inttoptr i32 %tmp2_v.i226.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %17, align 8
  %tmp2_v1.i228.i.i = add i32 %tmp0_v.i.i, -76
  %18 = inttoptr i32 %tmp2_v1.i228.i.i to i32*
  store i32 0, i32* %18, align 4
  %tmp2_v2.i230.i.i = add i32 %tmp0_v.i.i, -80
  %19 = inttoptr i32 %tmp2_v2.i230.i.i to i32*
  store i32 0, i32* %19, align 16
  %tmp2_v3.i233.i.i = add i32 %tmp0_v.i.i, -148
  %20 = inttoptr i32 %tmp2_v3.i233.i.i to i32*
  store i32 134517384, i32* %20, align 4
  %tmp4_v.i.i.i.i = add i32 %tmp0_v.i.i, -144
  %21 = load i32, i32* %15, align 16
  %tmp2_v2.i21.i.i = add i32 %tmp0_v.i.i, -132
  %22 = inttoptr i32 %tmp2_v2.i21.i.i to i32*
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -84
  %24 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %22, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -160
  %26 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -164
  %27 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517422, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i25.i.i = add i32 %tmp0_v.i.i, -96
  %29 = inttoptr i32 %tmp2_v.i25.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v3.i27.i.i = add i32 %28, -1
  %tmp2_v4.i28.i.i = add i32 %tmp0_v.i.i, -92
  %30 = inttoptr i32 %tmp2_v4.i28.i.i to i32*
  store i32 %tmp2_v3.i27.i.i, i32* %30, align 4
  %tmp0_v5.i.i.i = add i32 %28, 15
  %tmp0_v9.i.i.i = and i32 %tmp0_v5.i.i.i, -4096
  %tmp0_v11.i.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v9.i.i.i
  %tmp0_v.i220.i.i = and i32 %tmp0_v5.i.i.i, 4080
  %tmp0_v1.i222.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v.i220.i.i
  %tmp2_v.i64.i.i = add i32 %tmp0_v.i.i, -88
  %31 = inttoptr i32 %tmp2_v.i64.i.i to i32*
  store i32 %tmp0_v1.i222.i.i, i32* %31, align 8
  %tmp2_v4.i65.i.i = add i32 %tmp0_v.i.i, -116
  %32 = inttoptr i32 %tmp2_v4.i65.i.i to i32*
  store i32 0, i32* %32, align 4
  %tmp2_v5.i66.i.i = add i32 %tmp0_v.i.i, -112
  %33 = inttoptr i32 %tmp2_v5.i66.i.i to i32*
  store i32 0, i32* %33, align 16
  %34 = load i32, i32* %29, align 16
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_8049338.i.lr.ph.i, label %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i

helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i: ; preds = %.exit
  %.pre20.i = add i32 %tmp0_v.i.i, -122
  %.pre21.i = inttoptr i32 %.pre20.i to i8*
  %.pre22.i = add i32 %tmp0_v.i.i, -120
  %.pre23.i = inttoptr i32 %.pre22.i to i32*
  br label %Func_print_min_char.exit

BB_8049338.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i205.i.i = add i32 %tmp0_v.i.i, -121
  %36 = inttoptr i32 %tmp2_v.i205.i.i to i8*
  %tmp2_v1.i206.i.i = add i32 %tmp0_v.i.i, -108
  %37 = inttoptr i32 %tmp2_v1.i206.i.i to i32*
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i.i, -104
  %38 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  %tmp2_v1.i16.i.i = add i32 %tmp0_v.i.i, -100
  %39 = inttoptr i32 %tmp2_v1.i16.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -120
  %40 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -122
  %41 = inttoptr i32 %tmp2_v8.i.i.i to i8*
  br label %BB_8049338.i.i

BB_8049407.i.sink.split.i:                        ; preds = %BB_80493B3.i.i, %BB_80493E8.i.i
  store i32 %67, i32* %40, align 8
  %42 = load i32, i32* %33, align 16
  %43 = load i32, i32* %22, align 4
  %tmp0_v6.i199.i.i = add i32 %43, %42
  %44 = inttoptr i32 %tmp0_v6.i199.i.i to i8*
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %41, align 2
  br label %BB_8049407.i.i

BB_8049407.i.i:                                   ; preds = %BB_804936F.i.i, %BB_80493E8.i.i, %BB_8049407.i.sink.split.i
  %r_edx.0.i = phi i32 [ %tmp0_v9.i119.i.i, %BB_80493E8.i.i ], [ %r_edx.2.lcssa.i, %BB_804936F.i.i ], [ %42, %BB_8049407.i.sink.split.i ]
  %r_ecx.0.i = phi i32 [ %63, %BB_80493E8.i.i ], [ %r_ecx.2.lcssa.i, %BB_804936F.i.i ], [ %63, %BB_8049407.i.sink.split.i ]
  %46 = load i32, i32* %33, align 16
  %tmp0_v1.i.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i.i.i, i32* %33, align 16
  %47 = load i32, i32* %29, align 16
  %48 = icmp slt i32 %tmp0_v1.i.i.i, %47
  br i1 %48, label %BB_8049338.i.i, label %Func_print_min_char.exit

BB_80493E8.i.i:                                   ; preds = %BB_80493B3.i.i
  %49 = load i32, i32* %40, align 8
  %.not.i.i.i = icmp slt i32 %67, %49
  br i1 %.not.i.i.i, label %BB_8049407.i.sink.split.i, label %BB_8049407.i.i

BB_8049379.i.i:                                   ; preds = %BB_804936F.i.i
  store i32 0, i32* %38, align 8
  store i32 0, i32* %39, align 4
  %50 = load i32, i32* %29, align 16
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %BB_8049389.i.i, label %BB_80493B3.i.i

BB_80493A7.i.i:                                   ; preds = %BB_8049389.i.i, %BB_80493A3.i.i
  %52 = phi i32 [ %storemerge214.i, %BB_8049389.i.i ], [ %.pre19.i, %BB_80493A3.i.i ]
  %tmp0_v1.i40.i.i = add i32 %52, 1
  store i32 %tmp0_v1.i40.i.i, i32* %39, align 4
  %53 = load i32, i32* %29, align 16
  %54 = icmp slt i32 %tmp0_v1.i40.i.i, %53
  br i1 %54, label %BB_8049389.i.i, label %BB_80493B3.i.i

BB_8049363.i.i:                                   ; preds = %BB_8049345.i.i, %BB_804935F.i.i
  %55 = phi i32 [ %storemerge112.i, %BB_8049345.i.i ], [ %.pre.i, %BB_804935F.i.i ]
  %tmp0_v1.i50.i.i = add i32 %55, 1
  store i32 %tmp0_v1.i50.i.i, i32* %37, align 4
  %56 = load i32, i32* %32, align 4
  %57 = icmp slt i32 %tmp0_v1.i50.i.i, %56
  br i1 %57, label %BB_8049345.i.i, label %BB_804936F.i.i

BB_80493A3.i.i:                                   ; preds = %BB_8049389.i.i
  %58 = load i32, i32* %38, align 8
  %tmp0_v1.i84.i.i = add i32 %58, 1
  store i32 %tmp0_v1.i84.i.i, i32* %38, align 8
  %.pre19.i = load i32, i32* %39, align 4
  br label %BB_80493A7.i.i

BB_80493B3.i.i:                                   ; preds = %BB_80493A7.i.i, %BB_8049379.i.i
  %59 = load i32, i32* %33, align 16
  %60 = load i32, i32* %22, align 4
  %tmp0_v3.i113.i.i = add i32 %60, %59
  %61 = inttoptr i32 %tmp0_v3.i113.i.i to i8*
  %62 = load i8, i8* %61, align 1
  %63 = load i32, i32* %31, align 8
  %64 = load i32, i32* %32, align 4
  %tmp0_v9.i119.i.i = add i32 %64, %63
  %65 = inttoptr i32 %tmp0_v9.i119.i.i to i8*
  store i8 %62, i8* %65, align 1
  %66 = load i32, i32* %32, align 4
  %tmp0_v12.i.i.i = add i32 %66, 1
  store i32 %tmp0_v12.i.i.i, i32* %32, align 4
  %.not.i123.i.i = icmp eq i32 %66, 0
  %67 = load i32, i32* %38, align 8
  br i1 %.not.i123.i.i, label %BB_8049407.i.sink.split.i, label %BB_80493E8.i.i

BB_804935F.i.i:                                   ; preds = %BB_8049345.i.i
  store i8 1, i8* %36, align 1
  %.pre.i = load i32, i32* %37, align 4
  br label %BB_8049363.i.i

BB_804936F.i.i:                                   ; preds = %BB_8049338.i.i, %BB_8049363.i.i
  %r_edx.2.lcssa.i = phi i32 [ %r_edx.115.i, %BB_8049338.i.i ], [ %tmp0_v4.i147.i.i, %BB_8049363.i.i ]
  %r_ecx.2.lcssa.i = phi i32 [ %r_ecx.116.i, %BB_8049338.i.i ], [ %73, %BB_8049363.i.i ]
  %68 = load i8, i8* %36, align 1
  %.not.i139.i.i = icmp eq i8 %68, 0
  br i1 %.not.i139.i.i, label %BB_8049379.i.i, label %BB_8049407.i.i

BB_8049345.i.i:                                   ; preds = %BB_8049338.i.i, %BB_8049363.i.i
  %storemerge112.i = phi i32 [ %tmp0_v1.i50.i.i, %BB_8049363.i.i ], [ 0, %BB_8049338.i.i ]
  %69 = load i32, i32* %33, align 16
  %70 = load i32, i32* %22, align 4
  %tmp0_v3.i146.i.i = add i32 %70, %69
  %71 = inttoptr i32 %tmp0_v3.i146.i.i to i8*
  %72 = load i8, i8* %71, align 1
  %tmp0_v4.i147.i.i = zext i8 %72 to i32
  %73 = load i32, i32* %31, align 8
  %tmp0_v9.i152.i.i = add i32 %73, %storemerge112.i
  %74 = inttoptr i32 %tmp0_v9.i152.i.i to i8*
  %75 = load i8, i8* %74, align 1
  %tmp0_v10.i.i.i = zext i8 %75 to i32
  %cc_dst_v.i153.i.i = sub nsw i32 %tmp0_v4.i147.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i154.i.i = and i32 %cc_dst_v.i153.i.i, 255
  %.not.i155.i.i = icmp eq i32 %tmp4_v.i154.i.i, 0
  br i1 %.not.i155.i.i, label %BB_804935F.i.i, label %BB_8049363.i.i

BB_8049389.i.i:                                   ; preds = %BB_80493A7.i.i, %BB_8049379.i.i
  %storemerge214.i = phi i32 [ %tmp0_v1.i40.i.i, %BB_80493A7.i.i ], [ 0, %BB_8049379.i.i ]
  %76 = load i32, i32* %33, align 16
  %77 = load i32, i32* %22, align 4
  %tmp0_v3.i170.i.i = add i32 %77, %76
  %78 = inttoptr i32 %tmp0_v3.i170.i.i to i8*
  %79 = load i8, i8* %78, align 1
  %tmp0_v4.i171.i.i = zext i8 %79 to i32
  %tmp0_v9.i176.i.i = add i32 %77, %storemerge214.i
  %80 = inttoptr i32 %tmp0_v9.i176.i.i to i8*
  %81 = load i8, i8* %80, align 1
  %tmp0_v10.i177.i.i = zext i8 %81 to i32
  %cc_dst_v.i178.i.i = sub nsw i32 %tmp0_v4.i171.i.i, %tmp0_v10.i177.i.i
  %tmp4_v.i179.i.i = and i32 %cc_dst_v.i178.i.i, 255
  %.not.i180.i.i = icmp eq i32 %tmp4_v.i179.i.i, 0
  br i1 %.not.i180.i.i, label %BB_80493A3.i.i, label %BB_80493A7.i.i

BB_8049338.i.i:                                   ; preds = %BB_8049407.i.i, %BB_8049338.i.lr.ph.i
  %r_ecx.116.i = phi i32 [ %tmp0_v11.i.i.i, %BB_8049338.i.lr.ph.i ], [ %r_ecx.0.i, %BB_8049407.i.i ]
  %r_edx.115.i = phi i32 [ %tmp0_v.i220.i.i, %BB_8049338.i.lr.ph.i ], [ %r_edx.0.i, %BB_8049407.i.i ]
  store i8 0, i8* %36, align 1
  store i32 0, i32* %37, align 4
  %82 = load i32, i32* %32, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %BB_8049345.i.i, label %BB_804936F.i.i

Func_print_min_char.exit:                         ; preds = %BB_8049407.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i
  %.pre-phi24.i = phi i32* [ %.pre23.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %40, %BB_8049407.i.i ]
  %.pre-phi.i = phi i8* [ %.pre21.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %41, %BB_8049407.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %tmp0_v.i220.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %r_edx.0.i, %BB_8049407.i.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp0_v11.i.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %r_ecx.0.i, %BB_8049407.i.i ]
  %84 = load i8, i8* %.pre-phi.i, align 1
  %tmp0_v.i209.i.i = sext i8 %84 to i32
  %85 = load i32, i32* %.pre-phi24.i, align 4
  %tmp2_v4.i214.i.i = add i32 %tmp0_v1.i222.i.i, -8
  %86 = inttoptr i32 %tmp2_v4.i214.i.i to i32*
  store i32 %85, i32* %86, align 8
  %tmp2_v5.i215.i.i = add i32 %tmp0_v1.i222.i.i, -12
  %87 = inttoptr i32 %tmp2_v5.i215.i.i to i32*
  store i32 %tmp0_v.i209.i.i, i32* %87, align 4
  %tmp2_v7.i217.i.i = add i32 %tmp0_v1.i222.i.i, -16
  %88 = inttoptr i32 %tmp2_v7.i217.i.i to i32*
  %spi305 = ptrtoint[7 x i8]* @str.305 to i32
  store i32 %spi305, i32* %88, align 16
  %tmp2_v8.i218.i.i = add i32 %tmp0_v1.i222.i.i, -20
  %89 = inttoptr i32 %tmp2_v8.i218.i.i to i32*
  store i32 134517812, i32* %89, align 4
  %90 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v7.i217.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @min_occur_char306(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
