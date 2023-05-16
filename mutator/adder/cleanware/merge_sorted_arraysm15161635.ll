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

; Function Attrs: norecurse nounwind
define internal fastcc void @merge_sorted_arraysm15161635(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !12 {
  %tmp2_v.i38.i = add i32 %arg_esp, 4
  %tmp0_v.i39.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i41.i = add i32 %tmp0_v.i39.i, -4
  %3 = inttoptr i32 %tmp2_v3.i41.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i42.i = add i32 %tmp0_v.i39.i, -8
  %4 = inttoptr i32 %tmp2_v4.i42.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i44.i = add i32 %tmp0_v.i39.i, -12
  %5 = inttoptr i32 %tmp2_v5.i44.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i46.i = add i32 %tmp0_v.i39.i, -16
  %6 = inttoptr i32 %tmp2_v6.i46.i to i32*
  store i32 %tmp2_v.i38.i, i32* %6, align 16
  %tmp2_v8.i48.i = add i32 %tmp0_v.i39.i, -116
  %7 = inttoptr i32 %tmp2_v8.i48.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i11.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i11.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i39.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i15.i = add i32 %tmp0_v.i39.i, -100
  %11 = inttoptr i32 %tmp2_v3.i15.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i39.i, -96
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 3, i32* %12, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i39.i, -92
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 5, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i39.i, -88
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 7, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i39.i, -84
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 9, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i39.i, -80
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 2, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i39.i, -76
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 4, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i39.i, -72
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 5, i32* %18, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i39.i, -68
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 6, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i39.i, -64
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 8, i32* %20, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i39.i, -60
  %tmp2_v15.i.i = add i32 %tmp0_v.i39.i, -128
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v14.i.i, i32* %21, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i39.i, -132
  %22 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 5, i32* %22, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i39.i, -136
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v8.i.i, i32* %23, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i39.i, -140
  %24 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 5, i32* %24, align 4
  %tmp2_v21.i.i = add i32 %tmp0_v.i39.i, -144
  %25 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 %tmp2_v3.i15.i, i32* %25, align 16
  %tmp2_v22.i.i = add i32 %tmp0_v.i39.i, -148
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 134517312, i32* %26, align 4
  %tmp2_v.i5.i.i = add i32 %tmp0_v.i39.i, -152
  %27 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  store i32 %tmp2_v4.i42.i, i32* %27, align 8
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i39.i, -172
  %28 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
  store i32 134517410, i32* %28, align 4
  %tmp2_v.i71.i.i = add i32 %tmp0_v.i39.i, -164
  %29 = inttoptr i32 %tmp2_v.i71.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v1.i72.i.i = add i32 %tmp0_v.i39.i, -160
  %30 = inttoptr i32 %tmp2_v1.i72.i.i to i32*
  store i32 0, i32* %30, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i39.i, -156
  %31 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %30, align 16
  %33 = load i32, i32* %22, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %BB_80492BE.i.i, label %BB_804937A.i.preheader.i

BB_80492E4.i.i:                                   ; preds = %BB_80492BE.i.i
  store i32 %47, i32* %52, align 4
  %35 = load i32, i32* %31, align 4
  %tmp0_v13.i.i.i = add i32 %35, 1
  store i32 %tmp0_v13.i.i.i, i32* %31, align 4
  %36 = load i32, i32* %29, align 4
  %tmp0_v16.i.i.i = add i32 %36, 1
  store i32 %tmp0_v16.i.i.i, i32* %29, align 4
  %.pre.i = load i32, i32* %30, align 16
  br label %BB_804933A.i.backedge.i

BB_804933A.i.backedge.i:                          ; preds = %BB_8049310.i.i, %BB_80492E4.i.i
  %37 = phi i32 [ %tmp0_v16.i45.i.i, %BB_8049310.i.i ], [ %.pre.i, %BB_80492E4.i.i ]
  %38 = load i32, i32* %22, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %BB_804933A.i.backedge.i.BB_80492BE.i.i_crit_edge, label %BB_804937A.i.preheader.i

BB_804933A.i.backedge.i.BB_80492BE.i.i_crit_edge: ; preds = %BB_804933A.i.backedge.i
  %.pre = load i32, i32* %31, align 4
  br label %BB_80492BE.i.i

BB_8049310.i.i:                                   ; preds = %BB_80492BE.i.i
  store i32 %50, i32* %52, align 4
  %40 = load i32, i32* %31, align 4
  %tmp0_v13.i42.i.i = add i32 %40, 1
  store i32 %tmp0_v13.i42.i.i, i32* %31, align 4
  %41 = load i32, i32* %30, align 16
  %tmp0_v16.i45.i.i = add i32 %41, 1
  store i32 %tmp0_v16.i45.i.i, i32* %30, align 16
  br label %BB_804933A.i.backedge.i

BB_80492BE.i.i:                                   ; preds = %BB_804933A.i.backedge.i.BB_80492BE.i.i_crit_edge, %0
  %42 = phi i32 [ %.pre, %BB_804933A.i.backedge.i.BB_80492BE.i.i_crit_edge ], [ 0, %0 ]
  %43 = phi i32 [ %37, %BB_804933A.i.backedge.i.BB_80492BE.i.i_crit_edge ], [ %32, %0 ]
  %44 = load i32, i32* %29, align 4
  %tmp4_v.i52.i.i = shl i32 %44, 2
  %45 = load i32, i32* %25, align 16
  %tmp0_v3.i55.i.i = add i32 %45, %tmp4_v.i52.i.i
  %46 = inttoptr i32 %tmp0_v3.i55.i.i to i32*
  %47 = load i32, i32* %46, align 4
  %tmp4_v7.i.i.i = shl i32 %43, 2
  %48 = load i32, i32* %23, align 8
  %tmp0_v10.i57.i.i = add i32 %48, %tmp4_v7.i.i.i
  %49 = inttoptr i32 %tmp0_v10.i57.i.i to i32*
  %50 = load i32, i32* %49, align 4
  %.not.i59.i.i = icmp slt i32 %47, %50
  %tmp4_v6.i.i.i = shl i32 %42, 2
  %51 = load i32, i32* %21, align 16
  %tmp0_v9.i.i.i = add i32 %51, %tmp4_v6.i.i.i
  %52 = inttoptr i32 %tmp0_v9.i.i.i to i32*
  br i1 %.not.i59.i.i, label %BB_80492E4.i.i, label %BB_8049310.i.i

BB_804937A.i.preheader.i:                         ; preds = %BB_804933A.i.backedge.i, %0
  %r_edx.1.lcssa.i = phi i32 [ 0, %0 ], [ %tmp0_v9.i.i.i, %BB_804933A.i.backedge.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i38.i, %0 ], [ %tmp4_v6.i.i.i, %BB_804933A.i.backedge.i ]
  %53 = load i32, i32* %29, align 4
  %54 = load i32, i32* %24, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %BB_8049350.i.i, label %Func_merge.exit

BB_8049350.i.i:                                   ; preds = %BB_8049350.i.i, %BB_804937A.i.preheader.i
  %56 = phi i32 [ %tmp0_v16.i92.i.i, %BB_8049350.i.i ], [ %53, %BB_804937A.i.preheader.i ]
  %tmp4_v.i76.i.i = shl i32 %56, 2
  %57 = load i32, i32* %25, align 16
  %tmp0_v3.i79.i.i = add i32 %57, %tmp4_v.i76.i.i
  %58 = load i32, i32* %31, align 4
  %tmp4_v6.i82.i.i = shl i32 %58, 2
  %59 = load i32, i32* %21, align 16
  %tmp0_v9.i85.i.i = add i32 %59, %tmp4_v6.i82.i.i
  %60 = inttoptr i32 %tmp0_v3.i79.i.i to i32*
  %61 = load i32, i32* %60, align 4
  %62 = inttoptr i32 %tmp0_v9.i85.i.i to i32*
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %31, align 4
  %tmp0_v13.i89.i.i = add i32 %63, 1
  store i32 %tmp0_v13.i89.i.i, i32* %31, align 4
  %64 = load i32, i32* %29, align 4
  %tmp0_v16.i92.i.i = add i32 %64, 1
  store i32 %tmp0_v16.i92.i.i, i32* %29, align 4
  %65 = load i32, i32* %24, align 4
  %66 = icmp slt i32 %tmp0_v16.i92.i.i, %65
  br i1 %66, label %BB_8049350.i.i, label %Func_merge.exit

Func_merge.exit:                                  ; preds = %BB_8049350.i.i, %BB_804937A.i.preheader.i
  %r_edx.0.lcssa.i = phi i32 [ %r_edx.1.lcssa.i, %BB_804937A.i.preheader.i ], [ %tmp0_v9.i85.i.i, %BB_8049350.i.i ]
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_804937A.i.preheader.i ], [ %tmp4_v6.i82.i.i, %BB_8049350.i.i ]
  %67 = load i32, i32* %27, align 8
  %tmp2_v.i.i = add i32 %67, -96
  %68 = inttoptr i32 %tmp2_v.i.i to i32*
  %tmp2_v1.i20.i = add i32 %67, -52
  %tmp2_v5.i25.i = add i32 %tmp0_v.i39.i, -120
  %69 = inttoptr i32 %tmp2_v5.i25.i to i32*
  %tmp2_v8.i27.i = add i32 %tmp0_v.i39.i, -124
  %70 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 0, i32* %68, align 4
  br label %BB_804924C.i

BB_804924C.i:                                     ; preds = %BB_804924C.i, %Func_merge.exit
  %r_edx.06 = phi i32 [ %r_edx.0.lcssa.i, %Func_merge.exit ], [ %76, %BB_804924C.i ]
  %storemerge5 = phi i32 [ 0, %Func_merge.exit ], [ %tmp0_v2.i8.i, %BB_804924C.i ]
  %tmp4_v.i21.i = shl i32 %storemerge5, 2
  %tmp2_v2.i22.i = add i32 %tmp2_v1.i20.i, %tmp4_v.i21.i
  %71 = inttoptr i32 %tmp2_v2.i22.i to i32*
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %69, align 8
  %73 = load i32, i32* %68, align 4
  store i32 %73, i32* %70, align 4
  store i32 134520840, i32* %21, align 16
  store i32 134517350, i32* %22, align 4
  %74 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.06, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %75 = lshr i64 %74, 32
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %68, align 4
  %tmp0_v2.i8.i = add i32 %77, 1
  store i32 %tmp0_v2.i8.i, i32* %68, align 4
  %78 = icmp slt i32 %tmp0_v2.i8.i, 10
  br i1 %78, label %BB_804924C.i, label %.exit

.exit:                                            ; preds = %BB_804924C.i
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

  tail call fastcc void @merge_sorted_arraysm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
