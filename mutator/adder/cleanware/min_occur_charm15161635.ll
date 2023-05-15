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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @min_occur_charm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i9.i = add i32 %arg_esp, 4
  %tmp0_v.i10.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i11.i = add i32 %tmp0_v.i10.i, -4
  %2 = inttoptr i32 %tmp2_v3.i11.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i12.i = add i32 %tmp0_v.i10.i, -8
  %3 = inttoptr i32 %tmp2_v4.i12.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i14.i = add i32 %tmp0_v.i10.i, -12
  %4 = inttoptr i32 %tmp2_v5.i14.i to i32*
  store i32 %tmp2_v.i9.i, i32* %4, align 4
  %tmp2_v7.i15.i = add i32 %tmp0_v.i10.i, -52
  %5 = inttoptr i32 %tmp2_v7.i15.i to i32*
  store i32 134517264, i32* %5, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %6 = select i1 %tmp4_v.i2.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i6.i = add i32 %tmp0_v.i10.i, -20
  %8 = inttoptr i32 %tmp2_v2.i6.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i10.i, -44
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1684234849, i32* %9, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i10.i, -40
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1751606885, i32* %10, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i10.i, -36
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1684234849, i32* %11, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i10.i, -32
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1751606885, i32* %12, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i10.i, -28
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1684234849, i32* %13, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i10.i, -24
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6776421, i32* %14, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i10.i, -64
  %15 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %15, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i10.i, -68
  %16 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517334, i32* %16, align 4
  %tmp2_v.i5.i.i = add i32 %tmp0_v.i10.i, -72
  %17 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  store i32 %tmp2_v4.i12.i, i32* %17, align 8
  %tmp2_v1.i7.i.i = add i32 %tmp0_v.i10.i, -76
  %18 = inttoptr i32 %tmp2_v1.i7.i.i to i32*
  store i32 0, i32* %18, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i10.i, -80
  %19 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %19, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i10.i, -148
  %20 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517384, i32* %20, align 4
  %tmp4_v.i.i.i.i = add i32 %tmp0_v.i10.i, -144
  %21 = load i32, i32* %15, align 16
  %tmp2_v2.i213.i.i = add i32 %tmp0_v.i10.i, -132
  %22 = inttoptr i32 %tmp2_v2.i213.i.i to i32*
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %tmp2_v5.i217.i.i = add i32 %tmp0_v.i10.i, -84
  %24 = inttoptr i32 %tmp2_v5.i217.i.i to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %22, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i10.i, -160
  %26 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v10.i222.i.i = add i32 %tmp0_v.i10.i, -164
  %27 = inttoptr i32 %tmp2_v10.i222.i.i to i32*
  store i32 134517422, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i30.i.i = add i32 %tmp0_v.i10.i, -96
  %29 = inttoptr i32 %tmp2_v.i30.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v3.i33.i.i = add i32 %28, -1
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i10.i, -92
  %30 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp2_v3.i33.i.i, i32* %30, align 4
  %tmp0_v5.i.i.i = add i32 %28, 15
  %tmp0_v9.i34.i.i = and i32 %tmp0_v5.i.i.i, -4096
  %tmp0_v11.i35.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v9.i34.i.i
  %tmp0_v.i149.i.i = and i32 %tmp0_v5.i.i.i, 4080
  %tmp0_v1.i151.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v.i149.i.i
  %tmp2_v.i172.i.i = add i32 %tmp0_v.i10.i, -88
  %31 = inttoptr i32 %tmp2_v.i172.i.i to i32*
  store i32 %tmp0_v1.i151.i.i, i32* %31, align 8
  %tmp2_v4.i173.i.i = add i32 %tmp0_v.i10.i, -116
  %32 = inttoptr i32 %tmp2_v4.i173.i.i to i32*
  store i32 0, i32* %32, align 4
  %tmp2_v5.i174.i.i = add i32 %tmp0_v.i10.i, -112
  %33 = inttoptr i32 %tmp2_v5.i174.i.i to i32*
  store i32 0, i32* %33, align 16
  %34 = load i32, i32* %29, align 16
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_8049338.i.lr.ph.i, label %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i

helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i: ; preds = %.exit
  %.pre20.i = add i32 %tmp0_v.i10.i, -122
  %.pre21.i = inttoptr i32 %.pre20.i to i8*
  %.pre22.i = add i32 %tmp0_v.i10.i, -120
  %.pre23.i = inttoptr i32 %.pre22.i to i32*
  br label %Func_print_min_char.exit

BB_8049338.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i56.i.i = add i32 %tmp0_v.i10.i, -121
  %36 = inttoptr i32 %tmp2_v.i56.i.i to i8*
  %tmp2_v1.i57.i.i = add i32 %tmp0_v.i10.i, -108
  %37 = inttoptr i32 %tmp2_v1.i57.i.i to i32*
  %tmp2_v.i196.i.i = add i32 %tmp0_v.i10.i, -104
  %38 = inttoptr i32 %tmp2_v.i196.i.i to i32*
  %tmp2_v1.i197.i.i = add i32 %tmp0_v.i10.i, -100
  %39 = inttoptr i32 %tmp2_v1.i197.i.i to i32*
  %tmp2_v1.i40.i.i = add i32 %tmp0_v.i10.i, -120
  %40 = inttoptr i32 %tmp2_v1.i40.i.i to i32*
  %tmp2_v8.i233.i.i = add i32 %tmp0_v.i10.i, -122
  %41 = inttoptr i32 %tmp2_v8.i233.i.i to i8*
  br label %BB_8049338.i.i

BB_80493A3.i.i:                                   ; preds = %BB_8049389.i.i
  %42 = load i32, i32* %38, align 8
  %tmp0_v1.i.i.i = add i32 %42, 1
  store i32 %tmp0_v1.i.i.i, i32* %38, align 8
  %.pre19.i = load i32, i32* %39, align 4
  br label %BB_80493A7.i.i

BB_80493B3.i.i:                                   ; preds = %BB_8049379.i.i, %BB_80493A7.i.i
  %43 = load i32, i32* %33, align 16
  %44 = load i32, i32* %22, align 4
  %tmp0_v3.i20.i.i = add i32 %44, %43
  %45 = inttoptr i32 %tmp0_v3.i20.i.i to i8*
  %46 = load i8, i8* %45, align 1
  %47 = load i32, i32* %31, align 8
  %48 = load i32, i32* %32, align 4
  %tmp0_v9.i.i.i = add i32 %48, %47
  %49 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  store i8 %46, i8* %49, align 1
  %50 = load i32, i32* %32, align 4
  %tmp0_v12.i.i.i = add i32 %50, 1
  store i32 %tmp0_v12.i.i.i, i32* %32, align 4
  %.not.i.i.i = icmp eq i32 %50, 0
  %51 = load i32, i32* %38, align 8
  br i1 %.not.i.i.i, label %BB_8049407.i.sink.split.i, label %BB_80493E8.i.i

BB_80493E8.i.i:                                   ; preds = %BB_80493B3.i.i
  %52 = load i32, i32* %40, align 8
  %.not.i43.i.i = icmp slt i32 %51, %52
  br i1 %.not.i43.i.i, label %BB_8049407.i.sink.split.i, label %BB_8049407.i.i

BB_80493A7.i.i:                                   ; preds = %BB_8049389.i.i, %BB_80493A3.i.i
  %53 = phi i32 [ %storemerge214.i, %BB_8049389.i.i ], [ %.pre19.i, %BB_80493A3.i.i ]
  %tmp0_v1.i48.i.i = add i32 %53, 1
  store i32 %tmp0_v1.i48.i.i, i32* %39, align 4
  %54 = load i32, i32* %29, align 16
  %55 = icmp slt i32 %tmp0_v1.i48.i.i, %54
  br i1 %55, label %BB_8049389.i.i, label %BB_80493B3.i.i

BB_8049338.i.i:                                   ; preds = %BB_8049407.i.i, %BB_8049338.i.lr.ph.i
  %r_edx.016.i = phi i32 [ %tmp0_v.i149.i.i, %BB_8049338.i.lr.ph.i ], [ %r_edx.2.i, %BB_8049407.i.i ]
  %r_ecx.015.i = phi i32 [ %tmp0_v11.i35.i.i, %BB_8049338.i.lr.ph.i ], [ %r_ecx.2.i, %BB_8049407.i.i ]
  store i8 0, i8* %36, align 1
  store i32 0, i32* %37, align 4
  %56 = load i32, i32* %32, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %BB_8049345.i.i, label %BB_804936F.i.i

BB_8049345.i.i:                                   ; preds = %BB_8049363.i.i, %BB_8049338.i.i
  %storemerge112.i = phi i32 [ %tmp0_v1.i115.i.i, %BB_8049363.i.i ], [ 0, %BB_8049338.i.i ]
  %58 = load i32, i32* %33, align 16
  %59 = load i32, i32* %22, align 4
  %tmp0_v3.i73.i.i = add i32 %59, %58
  %60 = inttoptr i32 %tmp0_v3.i73.i.i to i8*
  %61 = load i8, i8* %60, align 1
  %tmp0_v4.i74.i.i = zext i8 %61 to i32
  %62 = load i32, i32* %31, align 8
  %tmp0_v9.i79.i.i = add i32 %62, %storemerge112.i
  %63 = inttoptr i32 %tmp0_v9.i79.i.i to i8*
  %64 = load i8, i8* %63, align 1
  %tmp0_v10.i.i.i = zext i8 %64 to i32
  %cc_dst_v.i80.i.i = sub nsw i32 %tmp0_v4.i74.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i.i.i2 = and i32 %cc_dst_v.i80.i.i, 255
  %.not.i81.i.i = icmp eq i32 %tmp4_v.i.i.i2, 0
  br i1 %.not.i81.i.i, label %BB_804935F.i.i, label %BB_8049363.i.i

BB_804936F.i.i:                                   ; preds = %BB_8049363.i.i, %BB_8049338.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.015.i, %BB_8049338.i.i ], [ %62, %BB_8049363.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %r_edx.016.i, %BB_8049338.i.i ], [ %tmp0_v4.i74.i.i, %BB_8049363.i.i ]
  %65 = load i8, i8* %36, align 1
  %.not.i86.i.i = icmp eq i8 %65, 0
  br i1 %.not.i86.i.i, label %BB_8049379.i.i, label %BB_8049407.i.i

BB_8049389.i.i:                                   ; preds = %BB_8049379.i.i, %BB_80493A7.i.i
  %storemerge214.i = phi i32 [ %tmp0_v1.i48.i.i, %BB_80493A7.i.i ], [ 0, %BB_8049379.i.i ]
  %66 = load i32, i32* %33, align 16
  %67 = load i32, i32* %22, align 4
  %tmp0_v3.i100.i.i = add i32 %67, %66
  %68 = inttoptr i32 %tmp0_v3.i100.i.i to i8*
  %69 = load i8, i8* %68, align 1
  %tmp0_v4.i101.i.i = zext i8 %69 to i32
  %tmp0_v9.i106.i.i = add i32 %67, %storemerge214.i
  %70 = inttoptr i32 %tmp0_v9.i106.i.i to i8*
  %71 = load i8, i8* %70, align 1
  %tmp0_v10.i107.i.i = zext i8 %71 to i32
  %cc_dst_v.i108.i.i = sub nsw i32 %tmp0_v4.i101.i.i, %tmp0_v10.i107.i.i
  %tmp4_v.i109.i.i = and i32 %cc_dst_v.i108.i.i, 255
  %.not.i110.i.i = icmp eq i32 %tmp4_v.i109.i.i, 0
  br i1 %.not.i110.i.i, label %BB_80493A3.i.i, label %BB_80493A7.i.i

BB_8049363.i.i:                                   ; preds = %BB_804935F.i.i, %BB_8049345.i.i
  %72 = phi i32 [ %storemerge112.i, %BB_8049345.i.i ], [ %.pre.i, %BB_804935F.i.i ]
  %tmp0_v1.i115.i.i = add i32 %72, 1
  store i32 %tmp0_v1.i115.i.i, i32* %37, align 4
  %73 = load i32, i32* %32, align 4
  %74 = icmp slt i32 %tmp0_v1.i115.i.i, %73
  br i1 %74, label %BB_8049345.i.i, label %BB_804936F.i.i

BB_8049407.i.sink.split.i:                        ; preds = %BB_80493E8.i.i, %BB_80493B3.i.i
  store i32 %51, i32* %40, align 8
  %.sink26.i = load i32, i32* %33, align 16
  %75 = load i32, i32* %22, align 4
  %tmp0_v6.i231.i.i = add i32 %75, %.sink26.i
  %76 = inttoptr i32 %tmp0_v6.i231.i.i to i8*
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %41, align 2
  br label %BB_8049407.i.i

BB_8049407.i.i:                                   ; preds = %BB_8049407.i.sink.split.i, %BB_804936F.i.i, %BB_80493E8.i.i
  %r_ecx.2.i = phi i32 [ %47, %BB_80493E8.i.i ], [ %r_ecx.1.lcssa.i, %BB_804936F.i.i ], [ %47, %BB_8049407.i.sink.split.i ]
  %r_edx.2.i = phi i32 [ %tmp0_v9.i.i.i, %BB_80493E8.i.i ], [ %r_edx.1.lcssa.i, %BB_804936F.i.i ], [ %.sink26.i, %BB_8049407.i.sink.split.i ]
  %78 = load i32, i32* %33, align 16
  %tmp0_v1.i134.i.i = add i32 %78, 1
  store i32 %tmp0_v1.i134.i.i, i32* %33, align 16
  %79 = load i32, i32* %29, align 16
  %80 = icmp slt i32 %tmp0_v1.i134.i.i, %79
  br i1 %80, label %BB_8049338.i.i, label %Func_print_min_char.exit

BB_804935F.i.i:                                   ; preds = %BB_8049345.i.i
  store i8 1, i8* %36, align 1
  %.pre.i = load i32, i32* %37, align 4
  br label %BB_8049363.i.i

BB_8049379.i.i:                                   ; preds = %BB_804936F.i.i
  store i32 0, i32* %38, align 8
  store i32 0, i32* %39, align 4
  %81 = load i32, i32* %29, align 16
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %BB_8049389.i.i, label %BB_80493B3.i.i

Func_print_min_char.exit:                         ; preds = %BB_8049407.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i
  %.pre-phi24.i = phi i32* [ %.pre23.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %40, %BB_8049407.i.i ]
  %.pre-phi.i = phi i8* [ %.pre21.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %41, %BB_8049407.i.i ]
  %r_ecx.0.lcssa.i = phi i32 [ %tmp0_v11.i35.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %r_ecx.2.i, %BB_8049407.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ %tmp0_v.i149.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %r_edx.2.i, %BB_8049407.i.i ]
  %83 = load i8, i8* %.pre-phi.i, align 1
  %tmp0_v.i177.i.i = sext i8 %83 to i32
  %84 = load i32, i32* %.pre-phi24.i, align 4
  %tmp2_v4.i182.i.i = add i32 %tmp0_v1.i151.i.i, -8
  %85 = inttoptr i32 %tmp2_v4.i182.i.i to i32*
  store i32 %84, i32* %85, align 8
  %tmp2_v5.i183.i.i = add i32 %tmp0_v1.i151.i.i, -12
  %86 = inttoptr i32 %tmp2_v5.i183.i.i to i32*
  store i32 %tmp0_v.i177.i.i, i32* %86, align 4
  %tmp2_v7.i185.i.i = add i32 %tmp0_v1.i151.i.i, -16
  %87 = inttoptr i32 %tmp2_v7.i185.i.i to i32*
  store i32 134520840, i32* %87, align 16
  %tmp2_v8.i.i.i = add i32 %tmp0_v1.i151.i.i, -20
  %88 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517812, i32* %88, align 4
  %89 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v7.i185.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @min_occur_charm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
