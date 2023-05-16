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
declare void @srand(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @time(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @rand() local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @shuffle_arraym15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -244
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517300, i32* %7, align 4
  %tmp4_v.i10.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i10.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i14.i = add i32 %tmp0_v.i.i, -236
  %11 = inttoptr i32 %tmp2_v3.i14.i to i32*
  %tmp2_v4.i20.i = add i32 %tmp0_v.i.i, -228
  store i32 0, i32* %11, align 4
  br label %BB_8049251.i

BB_8049251.i:                                     ; preds = %BB_8049251.i, %0
  %storemerge8 = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i, %BB_8049251.i ]
  %tmp2_v1.i.i = add nsw i32 %storemerge8, 1
  %tmp4_v.i21.i = shl i32 %storemerge8, 2
  %tmp2_v5.i22.i = add i32 %tmp2_v4.i20.i, %tmp4_v.i21.i
  %12 = inttoptr i32 %tmp2_v5.i22.i to i32*
  store i32 %tmp2_v1.i.i, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %tmp0_v8.i.i = add i32 %13, 1
  store i32 %tmp0_v8.i.i, i32* %11, align 4
  %14 = icmp slt i32 %tmp0_v8.i.i, 52
  br i1 %14, label %BB_8049251.i, label %BB_8049277.i

BB_8049277.i:                                     ; preds = %BB_8049251.i
  %tmp2_v.i29.i = add i32 %tmp0_v.i.i, -252
  %15 = inttoptr i32 %tmp2_v.i29.i to i32*
  store i32 52, i32* %15, align 4
  %tmp2_v2.i32.i = add i32 %tmp0_v.i.i, -256
  %16 = inttoptr i32 %tmp2_v2.i32.i to i32*
  store i32 %tmp2_v4.i20.i, i32* %16, align 16
  %tmp2_v3.i33.i = add i32 %tmp0_v.i.i, -260
  %17 = inttoptr i32 %tmp2_v3.i33.i to i32*
  store i32 134517384, i32* %17, align 4
  %tmp2_v.i21.i.i = add i32 %tmp0_v.i.i, -264
  %18 = inttoptr i32 %tmp2_v.i21.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %18, align 8
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i.i, -268
  %19 = inttoptr i32 %tmp2_v1.i23.i.i to i32*
  store i32 134529024, i32* %19, align 4
  %tmp2_v2.i26.i.i = add i32 %tmp0_v.i.i, -292
  %20 = inttoptr i32 %tmp2_v2.i26.i.i to i32*
  store i32 134517501, i32* %20, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i.i, -304
  %21 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 0, i32* %21, align 16
  %tmp2_v2.i8.i.i = add i32 %tmp0_v.i.i, -308
  %22 = inttoptr i32 %tmp2_v2.i8.i.i to i32*
  store i32 134517517, i32* %22, align 4
  %arg.i.i.i = load i32, i32* %21, align 16
  %23 = tail call i32 @time(i32 %arg.i.i.i)
  store i32 %23, i32* %21, align 16
  store i32 134517529, i32* %22, align 4
  %arg.i.i24.i = load i32, i32* %21, align 16
  tail call void @srand(i32 %arg.i.i24.i)
  %tmp2_v.i32.i.i = add i32 %tmp0_v.i.i, -284
  %24 = inttoptr i32 %tmp2_v.i32.i.i to i32*
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %BB_8049325.i.lr.ph.i, label %Func_shuffle.exit

BB_8049325.i.lr.ph.i:                             ; preds = %BB_8049277.i
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i.i, -280
  %27 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -276
  %28 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  br label %BB_8049325.i.i

BB_8049325.i.i:                                   ; preds = %BB_8049325.i.i, %BB_8049325.i.lr.ph.i
  store i32 134517546, i32* %20, align 4
  %29 = tail call i32 @rand()
  %tmp0_v.i2.i.i = ashr i32 %29, 31
  %30 = load i32, i32* %15, align 4
  %31 = zext i32 %29 to i64
  %32 = zext i32 %tmp0_v.i2.i.i to i64
  %33 = shl nuw i64 %32, 32
  %34 = or i64 %33, %31
  %35 = icmp ne i32 %30, 0
  tail call void @llvm.assume(i1 %35)
  %36 = sext i32 %30 to i64
  %.frozen = freeze i64 %34
  %.frozen11 = freeze i64 %36
  %37 = sdiv i64 %.frozen, %.frozen11
  %38 = add i64 %37, 2147483648
  %39 = icmp ult i64 %38, 4294967296
  tail call void @llvm.assume(i1 %39)
  %40 = mul i64 %37, %.frozen11
  %.decomposed = sub i64 %.frozen, %40
  %41 = trunc i64 %.decomposed to i32
  store i32 %41, i32* %27, align 8
  %42 = load i32, i32* %24, align 4
  %tmp4_v.i.i.i3 = shl i32 %42, 2
  %43 = load i32, i32* %16, align 16
  %tmp0_v8.i.i.i = add i32 %43, %tmp4_v.i.i.i3
  %44 = inttoptr i32 %tmp0_v8.i.i.i to i32*
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %28, align 4
  %46 = load i32, i32* %27, align 8
  %tmp4_v13.i.i.i = shl i32 %46, 2
  %47 = load i32, i32* %16, align 16
  %tmp0_v16.i.i.i = add i32 %47, %tmp4_v13.i.i.i
  %48 = load i32, i32* %24, align 4
  %tmp4_v19.i.i.i = shl i32 %48, 2
  %tmp0_v22.i.i.i = add i32 %tmp4_v19.i.i.i, %47
  %49 = inttoptr i32 %tmp0_v16.i.i.i to i32*
  %50 = load i32, i32* %49, align 4
  %51 = inttoptr i32 %tmp0_v22.i.i.i to i32*
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %27, align 8
  %tmp4_v26.i.i.i = shl i32 %52, 2
  %53 = load i32, i32* %16, align 16
  %tmp0_v29.i.i.i = add i32 %tmp4_v26.i.i.i, %53
  %54 = load i32, i32* %28, align 4
  %55 = inttoptr i32 %tmp0_v29.i.i.i to i32*
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %24, align 4
  %tmp0_v34.i.i.i = add i32 %56, 1
  store i32 %tmp0_v34.i.i.i, i32* %24, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %tmp0_v34.i.i.i, %57
  br i1 %58, label %BB_8049325.i.i, label %Func_shuffle.exit

Func_shuffle.exit:                                ; preds = %BB_8049325.i.i, %BB_8049277.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i.i, %BB_8049277.i ], [ %tmp4_v19.i.i.i, %BB_8049325.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ %tmp2_v1.i.i, %BB_8049277.i ], [ %tmp0_v29.i.i.i, %BB_8049325.i.i ]
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %18, align 8
  %tmp2_v.i42.i = add i32 %60, -224
  %61 = inttoptr i32 %tmp2_v.i42.i to i32*
  %tmp2_v1.i46.i = add i32 %60, -220
  %tmp2_v5.i51.i = add i32 %tmp0_v.i.i, -248
  %62 = inttoptr i32 %tmp2_v5.i51.i to i32*
  %tmp2_v8.i54.i = add i32 %tmp0_v.i.i, -252
  %63 = inttoptr i32 %tmp2_v8.i54.i to i32*
  %tmp2_v9.i56.i = add i32 %59, -8184
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -260
  %64 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %61, align 4
  br label %BB_8049297.i

BB_8049297.i:                                     ; preds = %BB_8049297.i, %Func_shuffle.exit
  %r_edx.010 = phi i32 [ %r_edx.0.lcssa.i, %Func_shuffle.exit ], [ %70, %BB_8049297.i ]
  %storemerge19 = phi i32 [ 0, %Func_shuffle.exit ], [ %tmp0_v2.i69.i, %BB_8049297.i ]
  %tmp4_v.i47.i = shl i32 %storemerge19, 2
  %tmp2_v2.i48.i = add i32 %tmp2_v1.i46.i, %tmp4_v.i47.i
  %65 = inttoptr i32 %tmp2_v2.i48.i to i32*
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %62, align 8
  %67 = load i32, i32* %61, align 4
  store i32 %67, i32* %63, align 4
  store i32 %tmp2_v9.i56.i, i32* %16, align 16
  store i32 134517434, i32* %64, align 4
  %68 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.010, i32 noundef %tmp2_v2.i32.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %69 = lshr i64 %68, 32
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %61, align 4
  %tmp0_v2.i69.i = add i32 %71, 1
  store i32 %tmp0_v2.i69.i, i32* %61, align 4
  %72 = icmp slt i32 %tmp0_v2.i69.i, 52
  br i1 %72, label %BB_8049297.i, label %.exit

.exit:                                            ; preds = %BB_8049297.i
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 

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

  tail call fastcc void @shuffle_arraym15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
