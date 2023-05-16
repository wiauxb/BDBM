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

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @replace_substringm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i10.i = add i32 %tmp0_v.i8.i, -4
  %2 = inttoptr i32 %tmp2_v3.i10.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i11.i = add i32 %tmp0_v.i8.i, -8
  %3 = inttoptr i32 %tmp2_v4.i11.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i8.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i14.i = add i32 %tmp0_v.i8.i, -16
  %5 = inttoptr i32 %tmp2_v6.i14.i to i32*
  store i32 %tmp2_v.i7.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i8.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i41.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i41.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i45.i = add i32 %tmp0_v.i8.i, -20
  %9 = inttoptr i32 %tmp2_v2.i45.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i46.i = add i32 %tmp0_v.i8.i, -50
  %10 = inttoptr i32 %tmp2_v3.i46.i to i32*
  store i32 1702125896, i32* %10, align 4
  %tmp2_v4.i47.i = add i32 %tmp0_v.i8.i, -46
  %11 = inttoptr i32 %tmp2_v4.i47.i to i32*
  store i32 1701344288, i32* %11, align 4
  %tmp2_v5.i48.i = add i32 %tmp0_v.i8.i, -42
  %12 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 1852404512, i32* %12, align 4
  %tmp2_v6.i49.i = add i32 %tmp0_v.i8.i, -38
  %13 = inttoptr i32 %tmp2_v6.i49.i to i32*
  store i32 1869357100, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i8.i, -34
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1948280182, i32* %14, align 4
  %tmp2_v8.i50.i = add i32 %tmp0_v.i8.i, -30
  %15 = inttoptr i32 %tmp2_v8.i50.i to i32*
  store i32 1931502952, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i8.i, -26
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1701736041, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i8.i, -22
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 114, i16* %17, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i8.i, -72
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134520840, i32* %18, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i8.i, -76
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134520845, i32* %19, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i8.i, -80
  %20 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i46.i, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i8.i, -84
  %21 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517459, i32* %21, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i8.i, -88
  %22 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %tmp2_v4.i11.i, i32* %22, align 8
  %tmp2_v1.i9.i.i = add i32 %tmp0_v.i8.i, -92
  %23 = inttoptr i32 %tmp2_v1.i9.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i11.i.i = add i32 %tmp0_v.i8.i, -148
  %24 = inttoptr i32 %tmp2_v2.i11.i.i to i32*
  store i32 134517570, i32* %24, align 4
  %25 = load i32, i32* %19, align 4
  %tmp2_v3.i184.i.i = add i32 %tmp0_v.i8.i, -160
  %26 = inttoptr i32 %tmp2_v3.i184.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i185.i.i = add i32 %tmp0_v.i8.i, -164
  %27 = inttoptr i32 %tmp2_v4.i185.i.i to i32*
  store i32 134517587, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %mrv.i61.i = insertvalue { i32, i32 } undef, i32 %tmp2_v3.i184.i.i, 0
  %tmp2_v.i.i.i = add i32 %tmp0_v.i8.i, -116
  %29 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %18, align 8
  store i32 %30, i32* %26, align 16
  store i32 134517604, i32* %27, align 4
  %arg.i.i63.i = load i32, i32* %26, align 16
  %31 = tail call i32 @strlen(i32 %arg.i.i63.i)
  %tmp2_v.i133.i.i = add i32 %tmp0_v.i8.i, -112
  %32 = inttoptr i32 %tmp2_v.i133.i.i to i32*
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %20, align 16
  store i32 %33, i32* %26, align 16
  store i32 134517621, i32* %27, align 4
  %arg.i.i65.i = load i32, i32* %26, align 16
  %34 = tail call i32 @strlen(i32 %arg.i.i65.i)
  %tmp2_v.i59.i.i = add i32 %tmp0_v.i8.i, -108
  %35 = inttoptr i32 %tmp2_v.i59.i.i to i32*
  store i32 %34, i32* %35, align 4
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i8.i, -132
  %36 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 0, i32* %36, align 4
  %tmp2_v1.i21.i.i = add i32 %tmp0_v.i8.i, -128
  %37 = inttoptr i32 %tmp2_v1.i21.i.i to i32*
  store i32 0, i32* %37, align 16
  %38 = load i32, i32* %35, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %BB_80493AA.i.i, label %BB_80493E5.i.i

BB_804946B.i.i:                                   ; preds = %BB_8049423.i.i
  %40 = inttoptr i32 %tmp0_v4.i43.i.i to i8*
  %41 = load i8, i8* %40, align 1
  %42 = inttoptr i32 %tmp0_v3.i107.i.i to i8*
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %78, align 4
  %tmp0_v12.i.i.i = add i32 %43, 1
  store i32 %tmp0_v12.i.i.i, i32* %78, align 4
  br label %BB_8049488.i.backedge.i

BB_8049488.i.backedge.i:                          ; preds = %BB_8049446.i.i, %BB_804946B.i.i
  %.sink90.i = phi i32 [ 1, %BB_804946B.i.i ], [ %66, %BB_8049446.i.i ]
  %r_ecx.0.be.i = phi i32 [ %57, %BB_804946B.i.i ], [ %55, %BB_8049446.i.i ]
  %44 = load i32, i32* %79, align 8
  %tmp0_v15.i.i.i = add i32 %44, %.sink90.i
  store i32 %tmp0_v15.i.i.i, i32* %79, align 8
  %45 = load i32, i32* %20, align 16
  store i32 %45, i32* %74, align 4
  store i32 134517907, i32* %75, align 4
  %arg.i.i69.i = load i32, i32* %74, align 4
  %46 = tail call i32 @strlen(i32 %arg.i.i69.i)
  %47 = load i32, i32* %78, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %BB_8049423.i.i, label %Func_replace.exit

BB_80493D9.i.i:                                   ; preds = %BB_80493AA.i.i
  %tmp0_v1.i15.i.i = add i32 %92, 1
  br label %BB_80493DD.i.backedge.i

BB_80493DD.i.backedge.i:                          ; preds = %BB_80493CD.i.i, %BB_80493D9.i.i
  %storemerge89.i = phi i32 [ %tmp0_v1.i15.i.i, %BB_80493D9.i.i ], [ %tmp0_v6.i55.i.i, %BB_80493CD.i.i ]
  store i32 %storemerge89.i, i32* %37, align 16
  %r_esp.1.in.i = extractvalue { i32, i32 } %.pn82.pn.i, 0
  %49 = load i32, i32* %35, align 4
  %50 = icmp slt i32 %storemerge89.i, %49
  br i1 %50, label %BB_80493AA.i.i, label %BB_80493E5.i.i

BB_8049423.i.i:                                   ; preds = %BB_8049423.i.lr.ph.i, %BB_8049488.i.backedge.i
  %51 = phi i32 [ %82, %BB_8049423.i.lr.ph.i ], [ %47, %BB_8049488.i.backedge.i ]
  %52 = load i32, i32* %20, align 16
  %tmp0_v3.i27.i.i = add i32 %52, %51
  %53 = load i32, i32* %19, align 4
  store i32 %53, i32* %84, align 4
  store i32 %tmp0_v3.i27.i.i, i32* %74, align 4
  store i32 134517815, i32* %75, align 4
  %arg.i.i67.i = load i32, i32* %74, align 4
  %arg2.i.i.i = load i32, i32* %84, align 4
  %54 = tail call i32 @strstr(i32 %arg.i.i67.i, i32 %arg2.i.i.i)
  %55 = load i32, i32* %78, align 4
  %56 = load i32, i32* %20, align 16
  %tmp0_v4.i43.i.i = add i32 %56, %55
  %.not.i.i.i = icmp eq i32 %54, %tmp0_v4.i43.i.i
  %57 = load i32, i32* %79, align 8
  %58 = load i32, i32* %77, align 8
  %tmp0_v3.i107.i.i = add i32 %58, %57
  br i1 %.not.i.i.i, label %BB_8049446.i.i, label %BB_804946B.i.i

BB_80493CD.i.i:                                   ; preds = %BB_80493AA.i.i
  %59 = load i32, i32* %36, align 4
  %tmp0_v1.i50.i.i = add i32 %59, 1
  store i32 %tmp0_v1.i50.i.i, i32* %36, align 4
  %60 = load i32, i32* %29, align 4
  %61 = load i32, i32* %37, align 16
  %tmp0_v6.i55.i.i = add i32 %61, %60
  br label %BB_80493DD.i.backedge.i

BB_8049446.i.i:                                   ; preds = %BB_8049423.i.i
  %62 = load i32, i32* %18, align 8
  store i32 %62, i32* %84, align 4
  store i32 %tmp0_v3.i107.i.i, i32* %74, align 4
  store i32 134517850, i32* %75, align 4
  %arg.i.i72.i = load i32, i32* %74, align 4
  %arg2.i.i73.i = load i32, i32* %84, align 4
  %63 = tail call i32 @strcpy(i32 %arg.i.i72.i, i32 %arg2.i.i73.i)
  %64 = load i32, i32* %29, align 4
  %65 = load i32, i32* %78, align 4
  %tmp0_v4.i171.i.i = add i32 %65, %64
  store i32 %tmp0_v4.i171.i.i, i32* %78, align 4
  %66 = load i32, i32* %32, align 16
  br label %BB_8049488.i.backedge.i

BB_80493E5.i.i:                                   ; preds = %BB_80493DD.i.backedge.i, %.exit
  %mrv.i61.pn.lcssa80.i = phi { i32, i32 } [ %mrv.i61.i, %.exit ], [ %.pn82.i, %BB_80493DD.i.backedge.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i7.i, %.exit ], [ %92, %BB_80493DD.i.backedge.i ]
  %r_esp.1.in.le.i = extractvalue { i32, i32 } %mrv.i61.pn.lcssa80.i, 0
  %67 = load i32, i32* %32, align 16
  %68 = load i32, i32* %29, align 4
  %tmp0_v2.i120.i.i = sub i32 %67, %68
  %tmp2_v3.i121.i.i = add i32 %tmp0_v.i8.i, -104
  %69 = inttoptr i32 %tmp2_v3.i121.i.i to i32*
  store i32 %tmp0_v2.i120.i.i, i32* %69, align 8
  %70 = load i32, i32* %35, align 4
  %tmp2_v6.i124.i.i = add i32 %tmp0_v.i8.i, -100
  %71 = inttoptr i32 %tmp2_v6.i124.i.i to i32*
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %36, align 4
  %73 = load i32, i32* %69, align 8
  %tmp15_v11.i.i.i = mul i32 %73, %72
  %tmp0_v17.i.i.i = add i32 %tmp15_v11.i.i.i, %70
  store i32 %tmp0_v17.i.i.i, i32* %71, align 4
  %tmp0_v20.i.i.i = add i32 %tmp0_v17.i.i.i, 1
  %74 = inttoptr i32 %r_esp.1.in.le.i to i32*
  store i32 %tmp0_v20.i.i.i, i32* %74, align 4
  %tmp2_v23.i.i.i = add i32 %r_esp.1.in.le.i, -4
  %75 = inttoptr i32 %tmp2_v23.i.i.i to i32*
  store i32 134517773, i32* %75, align 4
  %arg.i.i74.i = load i32, i32* %74, align 4
  %76 = tail call i32 @malloc(i32 %arg.i.i74.i)
  %tmp2_v.i98.i.i = add i32 %tmp0_v.i8.i, -136
  %77 = inttoptr i32 %tmp2_v.i98.i.i to i32*
  store i32 %76, i32* %77, align 8
  %tmp2_v1.i100.i.i = add i32 %tmp0_v.i8.i, -124
  %78 = inttoptr i32 %tmp2_v1.i100.i.i to i32*
  store i32 0, i32* %78, align 4
  %tmp2_v2.i101.i.i = add i32 %tmp0_v.i8.i, -120
  %79 = inttoptr i32 %tmp2_v2.i101.i.i to i32*
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* %20, align 16
  store i32 %80, i32* %74, align 4
  store i32 134517907, i32* %75, align 4
  %arg.i.i6986.i = load i32, i32* %74, align 4
  %81 = tail call i32 @strlen(i32 %arg.i.i6986.i)
  %82 = load i32, i32* %78, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %BB_8049423.i.lr.ph.i, label %Func_replace.exit

BB_8049423.i.lr.ph.i:                             ; preds = %BB_80493E5.i.i
  %tmp2_v7.i.i.i = add i32 %r_esp.1.in.le.i, 4
  %84 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  br label %BB_8049423.i.i

BB_80493AA.i.i:                                   ; preds = %BB_80493DD.i.backedge.i, %.exit
  %85 = phi i32 [ %storemerge89.i, %BB_80493DD.i.backedge.i ], [ 0, %.exit ]
  %r_esp.1.in83.i = phi i32 [ %r_esp.1.in.i, %BB_80493DD.i.backedge.i ], [ %tmp2_v3.i184.i.i, %.exit ]
  %.pn82.pn.i = phi { i32, i32 } [ %.pn82.i, %BB_80493DD.i.backedge.i ], [ %mrv.i61.i, %.exit ]
  %.pn88.i = phi i32 [ %91, %BB_80493DD.i.backedge.i ], [ %34, %.exit ]
  %.pn82.i = insertvalue { i32, i32 } %.pn82.pn.i, i32 %.pn88.i, 1
  %86 = load i32, i32* %20, align 16
  %tmp0_v3.i144.i.i = add i32 %86, %85
  %87 = load i32, i32* %19, align 4
  %tmp2_v7.i149.i.i = add i32 %r_esp.1.in83.i, 4
  %88 = inttoptr i32 %tmp2_v7.i149.i.i to i32*
  store i32 %87, i32* %88, align 4
  %89 = inttoptr i32 %r_esp.1.in83.i to i32*
  store i32 %tmp0_v3.i144.i.i, i32* %89, align 4
  %tmp2_v9.i151.i.i = add i32 %r_esp.1.in83.i, -4
  %90 = inttoptr i32 %tmp2_v9.i151.i.i to i32*
  store i32 134517694, i32* %90, align 4
  %arg.i.i76.i = load i32, i32* %89, align 4
  %arg2.i.i77.i = load i32, i32* %88, align 4
  %91 = tail call i32 @strstr(i32 %arg.i.i76.i, i32 %arg2.i.i77.i)
  %92 = load i32, i32* %37, align 16
  %93 = load i32, i32* %20, align 16
  %tmp0_v4.i159.i.i = add i32 %93, %92
  %.not.i162.i.i = icmp eq i32 %91, %tmp0_v4.i159.i.i
  br i1 %.not.i162.i.i, label %BB_80493CD.i.i, label %BB_80493D9.i.i

Func_replace.exit:                                ; preds = %BB_80493E5.i.i, %BB_8049488.i.backedge.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_80493E5.i.i ], [ %r_ecx.0.be.i, %BB_8049488.i.backedge.i ]
  %94 = load i32, i32* %79, align 8
  %95 = load i32, i32* %77, align 8
  %tmp0_v3.i73.i.i = add i32 %95, %94
  %96 = inttoptr i32 %tmp0_v3.i73.i.i to i8*
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %77, align 8
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %22, align 8
  %tmp2_v.i18.i = add i32 %99, -48
  %100 = inttoptr i32 %tmp2_v.i18.i to i32*
  store i32 %97, i32* %100, align 4
  %tmp2_v2.i.i = add i32 %99, -42
  store i32 %tmp2_v2.i.i, i32* %19, align 4
  %tmp2_v4.i22.i = add i32 %98, -8175
  store i32 %tmp2_v4.i22.i, i32* %20, align 16
  store i32 134517484, i32* %21, align 4
  %101 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %94, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %102 = lshr i64 %101, 32
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %100, align 4
  store i32 %104, i32* %19, align 4
  %tmp2_v4.i.i = add i32 %98, -8163
  store i32 %tmp2_v4.i.i, i32* %20, align 16
  store i32 134517505, i32* %21, align 4
  %105 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %103, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %106 = load i32, i32* %100, align 4
  store i32 %106, i32* %20, align 16
  store i32 134517519, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  tail call void @free(i32 %arg.i.i)
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

  tail call fastcc void @replace_substringm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind