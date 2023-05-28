; Mutation 34
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack33 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.31 = constant [4 x i8] c"\74\68\65\00"
@str.bis.32 = constant [5 x i8] c"\74\68\61\74\00"

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
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @replace_substring34(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i42.i = add i32 %arg_esp, 4
  %tmp0_v.i43.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i45.i = add i32 %tmp0_v.i43.i, -4
  %2 = inttoptr i32 %tmp2_v3.i45.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i46.i = add i32 %tmp0_v.i43.i, -8
  %3 = inttoptr i32 %tmp2_v4.i46.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i48.i = add i32 %tmp0_v.i43.i, -12
  %4 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i50.i = add i32 %tmp0_v.i43.i, -16
  %5 = inttoptr i32 %tmp2_v6.i50.i to i32*
  store i32 %tmp2_v.i42.i, i32* %5, align 16
  %tmp2_v8.i51.i = add i32 %tmp0_v.i43.i, -68
  %6 = inttoptr i32 %tmp2_v8.i51.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i14.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i18.i = add i32 %tmp0_v.i43.i, -20
  %9 = inttoptr i32 %tmp2_v2.i18.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i19.i = add i32 %tmp0_v.i43.i, -50
  %10 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 1702125896, i32* %10, align 4
  %tmp2_v4.i20.i = add i32 %tmp0_v.i43.i, -46
  %11 = inttoptr i32 %tmp2_v4.i20.i to i32*
  store i32 1701344288, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i43.i, -42
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1852404512, i32* %12, align 4
  %tmp2_v6.i21.i = add i32 %tmp0_v.i43.i, -38
  %13 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 1869357100, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i43.i, -34
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1948280182, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i43.i, -30
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1931502952, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i43.i, -26
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1701736041, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i43.i, -22
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 114, i16* %17, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i43.i, -72
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  %spi.bis.32 = ptrtoint[5 x i8]* @str.bis.32 to i32
  store i32 %spi.bis.32, i32* %18, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i43.i, -76
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  %spi.bis.31 = ptrtoint[4 x i8]* @str.bis.31 to i32
  store i32 %spi.bis.31, i32* %19, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i43.i, -80
  %20 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i19.i, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i43.i, -84
  %21 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517459, i32* %21, align 4
  %tmp2_v.i67.i.i = add i32 %tmp0_v.i43.i, -88
  %22 = inttoptr i32 %tmp2_v.i67.i.i to i32*
  store i32 %tmp2_v4.i46.i, i32* %22, align 8
  %tmp2_v1.i69.i.i = add i32 %tmp0_v.i43.i, -92
  %23 = inttoptr i32 %tmp2_v1.i69.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i71.i.i = add i32 %tmp0_v.i43.i, -148
  %24 = inttoptr i32 %tmp2_v2.i71.i.i to i32*
  store i32 134517570, i32* %24, align 4
  %25 = load i32, i32* %19, align 4
  %tmp2_v3.i145.i.i = add i32 %tmp0_v.i43.i, -160
  %26 = inttoptr i32 %tmp2_v3.i145.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i146.i.i = add i32 %tmp0_v.i43.i, -164
  %27 = inttoptr i32 %tmp2_v4.i146.i.i to i32*
  store i32 134517587, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %mrv.i59.i = insertvalue { i32, i32 } undef, i32 %tmp2_v3.i145.i.i, 0
  %tmp2_v.i39.i.i = add i32 %tmp0_v.i43.i, -116
  %29 = inttoptr i32 %tmp2_v.i39.i.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %18, align 8
  store i32 %30, i32* %26, align 16
  store i32 134517604, i32* %27, align 4
  %arg.i.i61.i = load i32, i32* %26, align 16
  %31 = tail call i32 @strlen(i32 %arg.i.i61.i)
  %tmp2_v.i120.i.i = add i32 %tmp0_v.i43.i, -112
  %32 = inttoptr i32 %tmp2_v.i120.i.i to i32*
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %20, align 16
  store i32 %33, i32* %26, align 16
  store i32 134517621, i32* %27, align 4
  %arg.i.i63.i = load i32, i32* %26, align 16
  %34 = tail call i32 @strlen(i32 %arg.i.i63.i)
  %tmp2_v.i48.i.i = add i32 %tmp0_v.i43.i, -108
  %35 = inttoptr i32 %tmp2_v.i48.i.i to i32*
  store i32 %34, i32* %35, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i43.i, -132
  %36 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 0, i32* %36, align 4
  %tmp2_v1.i3.i.i = add i32 %tmp0_v.i43.i, -128
  %37 = inttoptr i32 %tmp2_v1.i3.i.i to i32*
  store i32 0, i32* %37, align 16
  %38 = load i32, i32* %35, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %BB_80493AA.i.i, label %BB_80493E5.i.i

BB_8049423.i.i:                                   ; preds = %BB_8049423.i.lr.ph.i, %BB_8049488.i.backedge.i
  %40 = phi i32 [ %78, %BB_8049423.i.lr.ph.i ], [ %58, %BB_8049488.i.backedge.i ]
  %41 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %41, %40
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %80, align 4
  store i32 %tmp0_v3.i.i.i, i32* %70, align 4
  store i32 134517815, i32* %71, align 4
  %arg.i.i65.i = load i32, i32* %70, align 4
  %arg2.i.i.i = load i32, i32* %80, align 4
  %43 = tail call i32 @strstr(i32 %arg.i.i65.i, i32 %arg2.i.i.i)
  %44 = load i32, i32* %74, align 4
  %45 = load i32, i32* %20, align 16
  %tmp0_v4.i181.i.i = add i32 %45, %44
  %.not.i184.i.i = icmp eq i32 %43, %tmp0_v4.i181.i.i
  %46 = load i32, i32* %75, align 8
  %47 = load i32, i32* %73, align 8
  %tmp0_v3.i13.i.i = add i32 %47, %46
  br i1 %.not.i184.i.i, label %BB_8049446.i.i, label %BB_804946B.i.i

BB_80493D9.i.i:                                   ; preds = %BB_80493AA.i.i
  %tmp0_v1.i.i.i = add i32 %92, 1
  br label %BB_80493DD.i.backedge.i

BB_80493DD.i.backedge.i:                          ; preds = %BB_80493CD.i.i, %BB_80493D9.i.i
  %storemerge87.i = phi i32 [ %tmp0_v1.i.i.i, %BB_80493D9.i.i ], [ %tmp0_v6.i35.i.i, %BB_80493CD.i.i ]
  store i32 %storemerge87.i, i32* %37, align 16
  %r_esp.1.in.i = extractvalue { i32, i32 } %.pn80.pn.i, 0
  %48 = load i32, i32* %35, align 4
  %49 = icmp slt i32 %storemerge87.i, %48
  br i1 %49, label %BB_80493AA.i.i, label %BB_80493E5.i.i

BB_8049446.i.i:                                   ; preds = %BB_8049423.i.i
  %50 = load i32, i32* %18, align 8
  store i32 %50, i32* %80, align 4
  store i32 %tmp0_v3.i13.i.i, i32* %70, align 4
  store i32 134517850, i32* %71, align 4
  %arg.i.i67.i = load i32, i32* %70, align 4
  %arg2.i.i68.i = load i32, i32* %80, align 4
  %51 = tail call i32 @strcpy(i32 %arg.i.i67.i, i32 %arg2.i.i68.i)
  %52 = load i32, i32* %29, align 4
  %53 = load i32, i32* %74, align 4
  %tmp0_v4.i62.i.i = add i32 %53, %52
  store i32 %tmp0_v4.i62.i.i, i32* %74, align 4
  %54 = load i32, i32* %32, align 16
  br label %BB_8049488.i.backedge.i

BB_8049488.i.backedge.i:                          ; preds = %BB_804946B.i.i, %BB_8049446.i.i
  %.sink88.i = phi i32 [ %54, %BB_8049446.i.i ], [ 1, %BB_804946B.i.i ]
  %r_ecx.0.be.i = phi i32 [ %44, %BB_8049446.i.i ], [ %46, %BB_804946B.i.i ]
  %55 = load i32, i32* %75, align 8
  %tmp0_v9.i.i.i = add i32 %55, %.sink88.i
  store i32 %tmp0_v9.i.i.i, i32* %75, align 8
  %56 = load i32, i32* %20, align 16
  store i32 %56, i32* %70, align 4
  store i32 134517907, i32* %71, align 4
  %arg.i.i71.i = load i32, i32* %70, align 4
  %57 = tail call i32 @strlen(i32 %arg.i.i71.i)
  %58 = load i32, i32* %74, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %BB_8049423.i.i, label %Func_replace.exit

BB_80493CD.i.i:                                   ; preds = %BB_80493AA.i.i
  %60 = load i32, i32* %36, align 4
  %tmp0_v1.i31.i.i = add i32 %60, 1
  store i32 %tmp0_v1.i31.i.i, i32* %36, align 4
  %61 = load i32, i32* %29, align 4
  %62 = load i32, i32* %37, align 16
  %tmp0_v6.i35.i.i = add i32 %62, %61
  br label %BB_80493DD.i.backedge.i

BB_80493E5.i.i:                                   ; preds = %BB_80493DD.i.backedge.i, %.exit
  %mrv.i59.pn.lcssa78.i = phi { i32, i32 } [ %mrv.i59.i, %.exit ], [ %.pn80.i, %BB_80493DD.i.backedge.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i42.i, %.exit ], [ %92, %BB_80493DD.i.backedge.i ]
  %r_esp.1.in.le.i = extractvalue { i32, i32 } %mrv.i59.pn.lcssa78.i, 0
  %63 = load i32, i32* %32, align 16
  %64 = load i32, i32* %29, align 4
  %tmp0_v2.i77.i.i = sub i32 %63, %64
  %tmp2_v3.i78.i.i = add i32 %tmp0_v.i43.i, -104
  %65 = inttoptr i32 %tmp2_v3.i78.i.i to i32*
  store i32 %tmp0_v2.i77.i.i, i32* %65, align 8
  %66 = load i32, i32* %35, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i43.i, -100
  %67 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %36, align 4
  %69 = load i32, i32* %65, align 8
  %tmp15_v11.i.i.i = mul i32 %69, %68
  %tmp0_v17.i.i.i = add i32 %tmp15_v11.i.i.i, %66
  store i32 %tmp0_v17.i.i.i, i32* %67, align 4
  %tmp0_v20.i.i.i = add i32 %tmp0_v17.i.i.i, 1
  %70 = inttoptr i32 %r_esp.1.in.le.i to i32*
  store i32 %tmp0_v20.i.i.i, i32* %70, align 4
  %tmp2_v23.i.i.i = add i32 %r_esp.1.in.le.i, -4
  %71 = inttoptr i32 %tmp2_v23.i.i.i to i32*
  store i32 134517773, i32* %71, align 4
  %arg.i.i69.i = load i32, i32* %70, align 4
  %72 = tail call i32 @malloc(i32 %arg.i.i69.i)
  %tmp2_v.i170.i.i = add i32 %tmp0_v.i43.i, -136
  %73 = inttoptr i32 %tmp2_v.i170.i.i to i32*
  store i32 %72, i32* %73, align 8
  %tmp2_v1.i172.i.i = add i32 %tmp0_v.i43.i, -124
  %74 = inttoptr i32 %tmp2_v1.i172.i.i to i32*
  store i32 0, i32* %74, align 4
  %tmp2_v2.i173.i.i = add i32 %tmp0_v.i43.i, -120
  %75 = inttoptr i32 %tmp2_v2.i173.i.i to i32*
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %20, align 16
  store i32 %76, i32* %70, align 4
  store i32 134517907, i32* %71, align 4
  %arg.i.i7184.i = load i32, i32* %70, align 4
  %77 = tail call i32 @strlen(i32 %arg.i.i7184.i)
  %78 = load i32, i32* %74, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %BB_8049423.i.lr.ph.i, label %Func_replace.exit

BB_8049423.i.lr.ph.i:                             ; preds = %BB_80493E5.i.i
  %tmp2_v7.i.i.i = add i32 %r_esp.1.in.le.i, 4
  %80 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  br label %BB_8049423.i.i

BB_804946B.i.i:                                   ; preds = %BB_8049423.i.i
  %81 = inttoptr i32 %tmp0_v4.i181.i.i to i8*
  %82 = load i8, i8* %81, align 1
  %83 = inttoptr i32 %tmp0_v3.i13.i.i to i8*
  store i8 %82, i8* %83, align 1
  %84 = load i32, i32* %74, align 4
  %tmp0_v12.i.i.i = add i32 %84, 1
  store i32 %tmp0_v12.i.i.i, i32* %74, align 4
  br label %BB_8049488.i.backedge.i

BB_80493AA.i.i:                                   ; preds = %BB_80493DD.i.backedge.i, %.exit
  %85 = phi i32 [ %storemerge87.i, %BB_80493DD.i.backedge.i ], [ 0, %.exit ]
  %r_esp.1.in81.i = phi i32 [ %r_esp.1.in.i, %BB_80493DD.i.backedge.i ], [ %tmp2_v3.i145.i.i, %.exit ]
  %.pn80.pn.i = phi { i32, i32 } [ %.pn80.i, %BB_80493DD.i.backedge.i ], [ %mrv.i59.i, %.exit ]
  %.pn86.i = phi i32 [ %91, %BB_80493DD.i.backedge.i ], [ %34, %.exit ]
  %.pn80.i = insertvalue { i32, i32 } %.pn80.pn.i, i32 %.pn86.i, 1
  %86 = load i32, i32* %20, align 16
  %tmp0_v3.i159.i.i = add i32 %86, %85
  %87 = load i32, i32* %19, align 4
  %tmp2_v7.i164.i.i = add i32 %r_esp.1.in81.i, 4
  %88 = inttoptr i32 %tmp2_v7.i164.i.i to i32*
  store i32 %87, i32* %88, align 4
  %89 = inttoptr i32 %r_esp.1.in81.i to i32*
  store i32 %tmp0_v3.i159.i.i, i32* %89, align 4
  %tmp2_v9.i166.i.i = add i32 %r_esp.1.in81.i, -4
  %90 = inttoptr i32 %tmp2_v9.i166.i.i to i32*
  store i32 134517694, i32* %90, align 4
  %arg.i.i74.i = load i32, i32* %89, align 4
  %arg2.i.i75.i = load i32, i32* %88, align 4
  %91 = tail call i32 @strstr(i32 %arg.i.i74.i, i32 %arg2.i.i75.i)
  %92 = load i32, i32* %37, align 16
  %93 = load i32, i32* %20, align 16
  %tmp0_v4.i112.i.i = add i32 %93, %92
  %.not.i115.i.i = icmp eq i32 %91, %tmp0_v4.i112.i.i
  br i1 %.not.i115.i.i, label %BB_80493CD.i.i, label %BB_80493D9.i.i

Func_replace.exit:                                ; preds = %BB_80493E5.i.i, %BB_8049488.i.backedge.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_80493E5.i.i ], [ %r_ecx.0.be.i, %BB_8049488.i.backedge.i ]
  %94 = load i32, i32* %75, align 8
  %95 = load i32, i32* %73, align 8
  %tmp0_v3.i131.i.i = add i32 %95, %94
  %96 = inttoptr i32 %tmp0_v3.i131.i.i to i8*
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %73, align 8
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %22, align 8
  %tmp2_v.i9.i = add i32 %99, -48
  %100 = inttoptr i32 %tmp2_v.i9.i to i32*
  store i32 %97, i32* %100, align 4
  %tmp2_v2.i.i = add i32 %99, -42
  store i32 %tmp2_v2.i.i, i32* %19, align 4
  %tmp2_v4.i11.i = add i32 %98, -8175
  store i32 %tmp2_v4.i11.i, i32* %20, align 16
  store i32 134517484, i32* %21, align 4
  %101 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %94, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %102 = lshr i64 %101, 32
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %100, align 4
  store i32 %104, i32* %19, align 4
  %tmp2_v4.i39.i = add i32 %98, -8163
  store i32 %tmp2_v4.i39.i, i32* %20, align 16
  store i32 134517505, i32* %21, align 4
  %105 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %103, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %106 = load i32, i32* %100, align 4
  store i32 %106, i32* %20, align 16
  store i32 134517519, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  tail call void @free(i32 %arg.i.i)
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

  tail call fastcc void @replace_substring34 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack33, i32 0, i32 8092) to i32)) nounwind
