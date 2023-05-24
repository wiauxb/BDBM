; Mutation 397
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack396 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @rand() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @time(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @srand(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @shuffle_array397(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i24.i = add i32 %arg_esp, 4
  %tmp0_v.i25.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i27.i = add i32 %tmp0_v.i25.i, -4
  %3 = inttoptr i32 %tmp2_v3.i27.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i25.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i29.i = add i32 %tmp0_v.i25.i, -12
  %5 = inttoptr i32 %tmp2_v5.i29.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i31.i = add i32 %tmp0_v.i25.i, -16
  %6 = inttoptr i32 %tmp2_v6.i31.i to i32*
  store i32 %tmp2_v.i24.i, i32* %6, align 16
  %tmp2_v8.i33.i = add i32 %tmp0_v.i25.i, -244
  %7 = inttoptr i32 %tmp2_v8.i33.i to i32*
  store i32 134517300, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i25.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i25.i, -236
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  %tmp2_v4.i40.i = add i32 %tmp0_v.i25.i, -228
  store i32 0, i32* %11, align 4
  br label %BB_8049251.i

BB_8049277.i:                                     ; preds = %BB_8049251.i
  %tmp2_v.i2.i = add i32 %tmp0_v.i25.i, -252
  %12 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 52, i32* %12, align 4
  %tmp2_v2.i4.i = add i32 %tmp0_v.i25.i, -256
  %13 = inttoptr i32 %tmp2_v2.i4.i to i32*
  store i32 %tmp2_v4.i40.i, i32* %13, align 16
  %tmp2_v3.i5.i = add i32 %tmp0_v.i25.i, -260
  %14 = inttoptr i32 %tmp2_v3.i5.i to i32*
  store i32 134517384, i32* %14, align 4
  %tmp2_v.i27.i.i = add i32 %tmp0_v.i25.i, -264
  %15 = inttoptr i32 %tmp2_v.i27.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %15, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i25.i, -268
  %16 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 134529024, i32* %16, align 4
  %tmp2_v2.i32.i.i = add i32 %tmp0_v.i25.i, -292
  %17 = inttoptr i32 %tmp2_v2.i32.i.i to i32*
  store i32 134517501, i32* %17, align 4
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i25.i, -304
  %18 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 0, i32* %18, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i25.i, -308
  %19 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517517, i32* %19, align 4
  %arg.i.i.i = load i32, i32* %18, align 16
  %20 = tail call i32 @time(i32 %arg.i.i.i)
  store i32 %20, i32* %18, align 16
  store i32 134517529, i32* %19, align 4
  %arg.i.i24.i = load i32, i32* %18, align 16
  tail call void @srand(i32 %arg.i.i24.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i25.i, -284
  %21 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %BB_8049325.i.lr.ph.i, label %Func_shuffle.exit

BB_8049325.i.lr.ph.i:                             ; preds = %BB_8049277.i
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i25.i, -280
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i25.i, -276
  %25 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  br label %BB_8049325.i.i

BB_8049325.i.i:                                   ; preds = %BB_8049325.i.i, %BB_8049325.i.lr.ph.i
  store i32 134517546, i32* %17, align 4
  %26 = tail call i32 @rand()
  %tmp0_v.i4.i.i = ashr i32 %26, 31
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %26 to i64
  %29 = zext i32 %tmp0_v.i4.i.i to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = icmp ne i32 %27, 0
  tail call void @llvm.assume(i1 %32)
  %33 = sext i32 %27 to i64
  %.frozen = freeze i64 %31
  %.frozen11 = freeze i64 %33
  %34 = sdiv i64 %.frozen, %.frozen11
  %35 = add i64 %34, 2147483648
  %36 = icmp ult i64 %35, 4294967296
  tail call void @llvm.assume(i1 %36)
  %37 = mul i64 %34, %.frozen11
  %.decomposed = sub i64 %.frozen, %37
  %38 = trunc i64 %.decomposed to i32
  store i32 %38, i32* %24, align 8
  %39 = load i32, i32* %21, align 4
  %tmp4_v.i.i.i3 = shl i32 %39, 2
  %40 = load i32, i32* %13, align 16
  %tmp0_v8.i.i.i = add i32 %40, %tmp4_v.i.i.i3
  %41 = inttoptr i32 %tmp0_v8.i.i.i to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %25, align 4
  %43 = load i32, i32* %24, align 8
  %tmp4_v13.i.i.i = shl i32 %43, 2
  %44 = load i32, i32* %13, align 16
  %tmp0_v16.i.i.i = add i32 %44, %tmp4_v13.i.i.i
  %45 = load i32, i32* %21, align 4
  %tmp4_v19.i.i.i = shl i32 %45, 2
  %tmp0_v22.i.i.i = add i32 %tmp4_v19.i.i.i, %44
  %46 = inttoptr i32 %tmp0_v16.i.i.i to i32*
  %47 = load i32, i32* %46, align 4
  %48 = inttoptr i32 %tmp0_v22.i.i.i to i32*
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %24, align 8
  %tmp4_v26.i.i.i = shl i32 %49, 2
  %50 = load i32, i32* %13, align 16
  %tmp0_v29.i.i.i = add i32 %tmp4_v26.i.i.i, %50
  %51 = load i32, i32* %25, align 4
  %52 = inttoptr i32 %tmp0_v29.i.i.i to i32*
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %21, align 4
  %tmp0_v34.i.i.i = add i32 %53, 1
  store i32 %tmp0_v34.i.i.i, i32* %21, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %tmp0_v34.i.i.i, %54
  br i1 %55, label %BB_8049325.i.i, label %Func_shuffle.exit

Func_shuffle.exit:                                ; preds = %BB_8049325.i.i, %BB_8049277.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i24.i, %BB_8049277.i ], [ %tmp4_v19.i.i.i, %BB_8049325.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ %tmp2_v1.i37.i, %BB_8049277.i ], [ %tmp0_v29.i.i.i, %BB_8049325.i.i ]
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 8
  %tmp2_v.i9.i = add i32 %57, -224
  %58 = inttoptr i32 %tmp2_v.i9.i to i32*
  %tmp2_v1.i13.i = add i32 %57, -220
  %tmp2_v5.i.i = add i32 %tmp0_v.i25.i, -248
  %59 = inttoptr i32 %tmp2_v5.i.i to i32*
  %tmp2_v8.i.i = add i32 %tmp0_v.i25.i, -252
  %60 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v9.i.i = add i32 %56, -8184
  %tmp2_v11.i.i = add i32 %tmp0_v.i25.i, -260
  %61 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %58, align 4
  br label %BB_8049297.i

BB_8049297.i:                                     ; preds = %BB_8049297.i, %Func_shuffle.exit
  %r_edx.110 = phi i32 [ %r_edx.0.lcssa.i, %Func_shuffle.exit ], [ %67, %BB_8049297.i ]
  %storemerge19 = phi i32 [ 0, %Func_shuffle.exit ], [ %tmp0_v2.i59.i, %BB_8049297.i ]
  %tmp4_v.i14.i = shl i32 %storemerge19, 2
  %tmp2_v2.i15.i = add i32 %tmp2_v1.i13.i, %tmp4_v.i14.i
  %62 = inttoptr i32 %tmp2_v2.i15.i to i32*
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %59, align 8
  %64 = load i32, i32* %58, align 4
  store i32 %64, i32* %60, align 4
  store i32 %tmp2_v9.i.i, i32* %13, align 16
  store i32 134517434, i32* %61, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.110, i32 noundef %tmp2_v2.i4.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %66 = lshr i64 %65, 32
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %58, align 4
  %tmp0_v2.i59.i = add i32 %68, 1
  store i32 %tmp0_v2.i59.i, i32* %58, align 4
  %69 = icmp slt i32 %tmp0_v2.i59.i, 52
  br i1 %69, label %BB_8049297.i, label %.exit

BB_8049251.i:                                     ; preds = %BB_8049251.i, %0
  %storemerge8 = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i, %BB_8049251.i ]
  %tmp2_v1.i37.i = add nsw i32 %storemerge8, 1
  %tmp4_v.i41.i = shl i32 %storemerge8, 2
  %tmp2_v5.i42.i = add i32 %tmp2_v4.i40.i, %tmp4_v.i41.i
  %70 = inttoptr i32 %tmp2_v5.i42.i to i32*
  store i32 %tmp2_v1.i37.i, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %tmp0_v8.i.i = add i32 %71, 1
  store i32 %tmp0_v8.i.i, i32* %11, align 4
  %72 = icmp slt i32 %tmp0_v8.i.i, 52
  br i1 %72, label %BB_8049251.i, label %BB_8049277.i

.exit:                                            ; preds = %BB_8049297.i
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 


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

  tail call fastcc void @shuffle_array397 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack396, i32 0, i32 8092) to i32)) nounwind
