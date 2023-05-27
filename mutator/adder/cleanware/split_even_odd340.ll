; Mutation 340
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack339 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.337 = constant [21 x i8] c"even_array[%d] = %d\0a\00"
@str.338 = constant [20 x i8] c"odd_array[%d] = %d\0a\00"

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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @split_even_odd340(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
helper_divl_EAX.exit393.i:
  %tmp2_v.i203.i = add i32 %arg_esp, 4
  %tmp0_v.i204.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i206.i = add i32 %tmp0_v.i204.i, -4
  %2 = inttoptr i32 %tmp2_v3.i206.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i207.i = add i32 %tmp0_v.i204.i, -8
  %3 = inttoptr i32 %tmp2_v4.i207.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i209.i = add i32 %tmp0_v.i204.i, -12
  %4 = inttoptr i32 %tmp2_v5.i209.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i210.i = add i32 %tmp0_v.i204.i, -16
  %5 = inttoptr i32 %tmp2_v6.i210.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i212.i = add i32 %tmp0_v.i204.i, -20
  %6 = inttoptr i32 %tmp2_v7.i212.i to i32*
  store i32 %tmp2_v.i203.i, i32* %6, align 4
  %tmp2_v9.i214.i = add i32 %tmp0_v.i204.i, -148
  %7 = inttoptr i32 %tmp2_v9.i214.i to i32*
  store i32 134517266, i32* %7, align 4
  %tmp4_v.i91.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i95.i = add i32 %tmp0_v.i204.i, -36
  %10 = inttoptr i32 %tmp2_v2.i95.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i97.i = add i32 %tmp0_v.i204.i, -76
  %11 = inttoptr i32 %tmp2_v3.i97.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i98.i = add i32 %tmp0_v.i204.i, -72
  %12 = inttoptr i32 %tmp2_v4.i98.i to i32*
  store i32 2, i32* %12, align 8
  %tmp2_v5.i99.i = add i32 %tmp0_v.i204.i, -68
  %13 = inttoptr i32 %tmp2_v5.i99.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i100.i = add i32 %tmp0_v.i204.i, -64
  %14 = inttoptr i32 %tmp2_v6.i100.i to i32*
  store i32 4, i32* %14, align 16
  %tmp2_v7.i101.i = add i32 %tmp0_v.i204.i, -60
  %15 = inttoptr i32 %tmp2_v7.i101.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i102.i = add i32 %tmp0_v.i204.i, -56
  %16 = inttoptr i32 %tmp2_v8.i102.i to i32*
  store i32 6, i32* %16, align 8
  %tmp2_v9.i103.i = add i32 %tmp0_v.i204.i, -52
  %17 = inttoptr i32 %tmp2_v9.i103.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i104.i = add i32 %tmp0_v.i204.i, -48
  %18 = inttoptr i32 %tmp2_v10.i104.i to i32*
  store i32 8, i32* %18, align 16
  %tmp2_v11.i105.i = add i32 %tmp0_v.i204.i, -44
  %19 = inttoptr i32 %tmp2_v11.i105.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v12.i106.i = add i32 %tmp0_v.i204.i, -40
  %20 = inttoptr i32 %tmp2_v12.i106.i to i32*
  store i32 10, i32* %20, align 8
  %tmp2_v13.i107.i = add i32 %tmp0_v.i204.i, -96
  %21 = inttoptr i32 %tmp2_v13.i107.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i204.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 9, i32* %22, align 4
  %tmp0_v1.i181.i = add i32 %tmp0_v.i204.i, -192
  %tmp0_v4.i118.i = add i32 %tmp0_v.i204.i, -189
  %tmp0_v6.i120.i = and i32 %tmp0_v4.i118.i, -16
  %tmp2_v.i122.i = add i32 %tmp0_v.i204.i, -88
  %23 = inttoptr i32 %tmp2_v.i122.i to i32*
  store i32 %tmp0_v6.i120.i, i32* %23, align 8
  %24 = load i32, i32* %21, align 16
  %tmp2_v9.i124.i = add i32 %24, -1
  %tmp2_v10.i125.i = add i32 %tmp0_v.i204.i, -84
  %25 = inttoptr i32 %tmp2_v10.i125.i to i32*
  store i32 %tmp2_v9.i124.i, i32* %25, align 4
  %tmp4_v.i126.i = shl i32 %24, 2
  %tmp0_v11.i127.i = add i32 %tmp4_v.i126.i, 15
  %tmp0_v15.i128.i = and i32 %tmp0_v11.i127.i, -4096
  %tmp0_v17.i129.i = sub i32 %tmp0_v1.i181.i, %tmp0_v15.i128.i
  %tmp0_v.i20.i = and i32 %tmp0_v11.i127.i, 4080
  %tmp0_v1.i22.i = sub i32 %tmp0_v1.i181.i, %tmp0_v.i20.i
  %tmp2_v.i346.i = add i32 %tmp0_v.i204.i, -80
  %26 = inttoptr i32 %tmp2_v.i346.i to i32*
  store i32 %tmp0_v1.i22.i, i32* %26, align 16
  %tmp2_v7.i347.i = add i32 %tmp0_v.i204.i, -100
  %27 = inttoptr i32 %tmp2_v7.i347.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v8.i348.i = add i32 %tmp0_v.i204.i, -104
  %28 = inttoptr i32 %tmp2_v8.i348.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %21, align 16
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_804937C.i, label %BB_80493B3.i

BB_80493E5.i:                                     ; preds = %BB_80493C3.i, %BB_80493D1.i
  %31 = phi i32 [ %storemerge419, %BB_80493C3.i ], [ %.pre26, %BB_80493D1.i ]
  %r_ecx.0 = phi i32 [ %r_ecx.220, %BB_80493C3.i ], [ %171, %BB_80493D1.i ]
  %tmp0_v1.i.i = add i32 %31, 1
  store i32 %tmp0_v1.i.i, i32* %155, align 16
  %32 = load i32, i32* %21, align 16
  %33 = icmp slt i32 %tmp0_v1.i.i, %32
  br i1 %33, label %BB_80493C3.i, label %BB_80493F1.i

BB_80494C6.i:                                     ; preds = %BB_80494C6.i.lr.ph, %BB_80494C6.i
  %storemerge124 = phi i32 [ 0, %BB_80494C6.i.lr.ph ], [ %tmp0_v2.i283.i, %BB_80494C6.i ]
  %34 = load i32, i32* %110, align 4
  %tmp0_v3.i7.i = shl i32 %storemerge124, 2
  %tmp0_v4.i.i = add i32 %34, %tmp0_v3.i7.i
  %35 = inttoptr i32 %tmp0_v4.i.i to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %111, align 8
  %37 = load i32, i32* %106, align 4
  store i32 %37, i32* %.pre-phi34, align 4
  store i32 %tmp2_v11.i.i, i32* %.pre-phi, align 16
  store i32 134517993, i32* %.pre-phi31, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp0_v3.i7.i, i32 noundef %tmp2_v.i75.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %39 = load i32, i32* %106, align 4
  %tmp0_v2.i283.i = add i32 %39, 1
  store i32 %tmp0_v2.i283.i, i32* %106, align 4
  %40 = load i32, i32* %107, align 4
  %41 = icmp slt i32 %tmp0_v2.i283.i, %40
  br i1 %41, label %BB_80494C6.i, label %BB_80494F8.i

BB_8049466.i:                                     ; preds = %BB_804943B.i, %BB_8049425.i.BB_8049466.i_crit_edge
  %.pre-phi34 = phi i32* [ %.pre33, %BB_8049425.i.BB_8049466.i_crit_edge ], [ %129, %BB_804943B.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517872, i32* %.pre-phi31, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %42 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i293.i = add i32 %tmp0_v.i204.i, -144
  %43 = inttoptr i32 %tmp2_v.i293.i to i32*
  store i32 0, i32* %43, align 16
  %tmp2_v1.i294.i = add i32 %tmp0_v.i204.i, -140
  %44 = inttoptr i32 %tmp2_v1.i294.i to i32*
  store i32 0, i32* %44, align 4
  %tmp2_v2.i295.i = add i32 %tmp0_v.i204.i, -136
  %45 = inttoptr i32 %tmp2_v2.i295.i to i32*
  store i32 0, i32* %45, align 8
  %tmp2_v3.i296.i = add i32 %tmp0_v.i204.i, -132
  %46 = inttoptr i32 %tmp2_v3.i296.i to i32*
  store i32 0, i32* %46, align 4
  store i32 %tmp2_v2.i295.i, i32* %.pre-phi34, align 4
  store i32 %tmp2_v.i293.i, i32* %.pre-phi, align 16
  store i32 %tmp2_v3.i296.i, i32* %.pre-phi31, align 4
  %tmp2_v12.i304.i = add i32 %tmp0_v1.i22.i, -24
  %47 = inttoptr i32 %tmp2_v12.i304.i to i32*
  store i32 %tmp2_v1.i294.i, i32* %47, align 8
  %48 = load i32, i32* %21, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v1.i22.i, -28
  %49 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %48, i32* %49, align 4
  %tmp2_v17.i308.i = add i32 %tmp0_v1.i22.i, -32
  %50 = inttoptr i32 %tmp2_v17.i308.i to i32*
  store i32 %tmp2_v3.i97.i, i32* %50, align 16
  %tmp2_v18.i309.i = add i32 %tmp0_v1.i22.i, -36
  %51 = inttoptr i32 %tmp2_v18.i309.i to i32*
  store i32 134517946, i32* %51, align 4
  %tmp2_v.i97.i.i = add i32 %tmp0_v1.i22.i, -40
  %52 = inttoptr i32 %tmp2_v.i97.i.i to i32*
  store i32 %tmp2_v4.i207.i, i32* %52, align 8
  %tmp2_v1.i99.i.i = add i32 %tmp0_v1.i22.i, -44
  %53 = inttoptr i32 %tmp2_v1.i99.i.i to i32*
  store i32 134529024, i32* %53, align 4
  %tmp2_v2.i102.i.i = add i32 %tmp0_v1.i22.i, -68
  %54 = inttoptr i32 %tmp2_v2.i102.i.i to i32*
  store i32 134518131, i32* %54, align 4
  %55 = load i32, i32* %.pre-phi31, align 4
  %56 = inttoptr i32 %55 to i32*
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %.pre-phi34, align 4
  %58 = inttoptr i32 %57 to i32*
  store i32 0, i32* %58, align 4
  %tmp2_v4.i95.i.i = add i32 %tmp0_v1.i22.i, -64
  %59 = inttoptr i32 %tmp2_v4.i95.i.i to i32*
  store i32 0, i32* %59, align 16
  %60 = load i32, i32* %49, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_80495DD.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %62 = load i32, i32* %.pre-phi31, align 4
  %63 = inttoptr i32 %62 to i32*
  %64 = load i32, i32* %63, align 4
  %tmp0_v2.i47.i.i = shl i32 %64, 2
  %tmp2_v4.i50.i.i = add i32 %tmp0_v1.i22.i, -80
  %65 = inttoptr i32 %tmp2_v4.i50.i.i to i32*
  store i32 %tmp0_v2.i47.i.i, i32* %65, align 16
  %tmp2_v5.i51.i.i = add i32 %tmp0_v1.i22.i, -84
  %66 = inttoptr i32 %tmp2_v5.i51.i.i to i32*
  store i32 134518254, i32* %66, align 4
  %arg.i.i.i = load i32, i32* %65, align 16
  %67 = tail call i32 @malloc(i32 %arg.i.i.i)
  %68 = load i32, i32* %47, align 8
  %69 = inttoptr i32 %68 to i32*
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %.pre-phi34, align 4
  %71 = inttoptr i32 %70 to i32*
  %72 = load i32, i32* %71, align 4
  %tmp0_v5.i.i.i = shl i32 %72, 2
  store i32 %tmp0_v5.i.i.i, i32* %65, align 16
  store i32 134518281, i32* %66, align 4
  %arg.i.i36.i = load i32, i32* %65, align 16
  %73 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %74 = load i32, i32* %.pre-phi, align 16
  %75 = inttoptr i32 %74 to i32*
  store i32 %73, i32* %75, align 4
  %tmp2_v2.i58.i.i = add i32 %tmp0_v1.i22.i, -60
  %76 = inttoptr i32 %tmp2_v2.i58.i.i to i32*
  store i32 0, i32* %76, align 4
  %tmp2_v3.i59.i.i = add i32 %tmp0_v1.i22.i, -56
  %77 = inttoptr i32 %tmp2_v3.i59.i.i to i32*
  store i32 0, i32* %77, align 8
  %tmp2_v4.i60.i.i = add i32 %tmp0_v1.i22.i, -52
  %78 = inttoptr i32 %tmp2_v4.i60.i.i to i32*
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %76, align 4
  %80 = load i32, i32* %49, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_8049594.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %storemerge38.i = phi i32 [ %tmp0_v1.i28.i.i, %BB_8049594.i.i ], [ 0, %BB_8049466.i ]
  %tmp4_v.i113.i.i = shl i32 %storemerge38.i, 2
  %82 = load i32, i32* %50, align 16
  %tmp0_v3.i116.i.i = add i32 %82, %tmp4_v.i113.i.i
  %83 = inttoptr i32 %tmp0_v3.i116.i.i to i32*
  %84 = load i32, i32* %83, align 4
  %tmp0_v6.i119.i.i = lshr i32 %84, 31
  %tmp0_v7.i120.i.i = add i32 %tmp0_v6.i119.i.i, %84
  %tmp0_v8.i121.i.i = and i32 %tmp0_v7.i120.i.i, 1
  %.neg30.i = add nuw nsw i32 %tmp0_v6.i119.i.i, 1
  %.not.i.i.i = icmp eq i32 %tmp0_v8.i121.i.i, %.neg30.i
  %..i = select i1 %.not.i.i.i, i32* %.pre-phi31, i32* %.pre-phi34
  %85 = load i32, i32* %..i, align 4
  %86 = inttoptr i32 %85 to i32*
  %87 = load i32, i32* %86, align 4
  %tmp2_v2.i5.i.i = add i32 %87, 1
  store i32 %tmp2_v2.i5.i.i, i32* %86, align 4
  %88 = load i32, i32* %59, align 16
  %tmp0_v1.i28.i.i = add i32 %88, 1
  store i32 %tmp0_v1.i28.i.i, i32* %59, align 16
  %89 = load i32, i32* %49, align 4
  %90 = icmp slt i32 %tmp0_v1.i28.i.i, %89
  br i1 %90, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_804962A.i.i:                                   ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %91 = phi i32 [ %tmp0_v1.i11.i.i, %BB_804962A.i.i ], [ %79, %BB_80495DD.i.i ]
  %tmp4_v.i134.i.i = shl i32 %91, 2
  %92 = load i32, i32* %50, align 16
  %tmp0_v3.i137.i.i = add i32 %92, %tmp4_v.i134.i.i
  %93 = inttoptr i32 %tmp0_v3.i137.i.i to i32*
  %94 = load i32, i32* %93, align 4
  %tmp0_v6.i140.i.i = lshr i32 %94, 31
  %tmp0_v7.i141.i.i = add i32 %tmp0_v6.i140.i.i, %94
  %tmp0_v8.i142.i.i = and i32 %tmp0_v7.i141.i.i, 1
  %.neg.i = add nuw nsw i32 %tmp0_v6.i140.i.i, 1
  %.not.i145.i.i = icmp eq i32 %tmp0_v8.i142.i.i, %.neg.i
  %.sink48.i = select i1 %.not.i145.i.i, i32* %47, i32* %.pre-phi
  %.sink45.i = select i1 %.not.i145.i.i, i32* %78, i32* %77
  %95 = load i32, i32* %.sink48.i, align 8
  %96 = inttoptr i32 %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %.sink45.i, align 4
  %tmp0_v9.i73.i.i = shl i32 %98, 2
  %tmp0_v10.i74.i.i = add i32 %tmp0_v9.i73.i.i, %97
  %99 = inttoptr i32 %tmp0_v10.i74.i.i to i32*
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* %.sink45.i, align 4
  %tmp0_v14.i78.i.i = add i32 %100, 1
  store i32 %tmp0_v14.i78.i.i, i32* %.sink45.i, align 4
  %101 = load i32, i32* %76, align 4
  %tmp0_v1.i11.i.i = add i32 %101, 1
  store i32 %tmp0_v1.i11.i.i, i32* %76, align 4
  %102 = load i32, i32* %49, align 4
  %103 = icmp slt i32 %tmp0_v1.i11.i.i, %102
  br i1 %103, label %BB_804962A.i.i, label %Func_split_nums.exit

Func_split_nums.exit:                             ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.2.lcssa, %BB_80495DD.i.i ], [ %tmp0_v3.i137.i.i, %BB_804962A.i.i ]
  %104 = load i32, i32* %53, align 4
  %105 = load i32, i32* %52, align 8
  %tmp2_v.i161.i = add i32 %105, -116
  %106 = inttoptr i32 %tmp2_v.i161.i to i32*
  %tmp2_v.i67.i = add i32 %105, -128
  %107 = inttoptr i32 %tmp2_v.i67.i to i32*
  store i32 0, i32* %106, align 4
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %BB_80494C6.i.lr.ph, label %BB_80494F8.i

BB_80494C6.i.lr.ph:                               ; preds = %Func_split_nums.exit
  %tmp2_v.i5.i = add i32 %105, -136
  %110 = inttoptr i32 %tmp2_v.i5.i to i32*
  %tmp2_v7.i.i = add i32 %tmp0_v1.i22.i, -8
  %111 = inttoptr i32 %tmp2_v7.i.i to i32*
  %tmp2_v11.i.i = add i32 %104, -8143
  br label %BB_80494C6.i

BB_80493D1.i:                                     ; preds = %BB_80493C3.i
  %112 = load i32, i32* %23, align 8
  %113 = load i32, i32* %154, align 4
  %tmp4_v8.i.i = shl i32 %113, 2
  %tmp2_v9.i.i = add i32 %tmp4_v8.i.i, %112
  %114 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %171, i32* %114, align 4
  %115 = load i32, i32* %154, align 4
  %tmp0_v12.i.i = add i32 %115, 1
  store i32 %tmp0_v12.i.i, i32* %154, align 4
  %.pre26 = load i32, i32* %155, align 16
  br label %BB_80493E5.i

BB_804950E.i:                                     ; preds = %BB_804950E.i.lr.ph, %BB_804950E.i
  %storemerge225 = phi i32 [ 0, %BB_804950E.i.lr.ph ], [ %tmp0_v2.i319.i, %BB_804950E.i ]
  %116 = load i32, i32* %144, align 4
  %tmp0_v3.i43.i = shl i32 %storemerge225, 2
  %tmp0_v4.i44.i = add i32 %116, %tmp0_v3.i43.i
  %117 = inttoptr i32 %tmp0_v4.i44.i to i32*
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %145, align 8
  %119 = load i32, i32* %140, align 4
  store i32 %119, i32* %.pre-phi34, align 4
  store i32 %tmp2_v11.i53.i, i32* %.pre-phi, align 16
  store i32 134518065, i32* %.pre-phi31, align 4
  %120 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp0_v3.i43.i, i32 noundef %tmp2_v.i75.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %121 = load i32, i32* %140, align 4
  %tmp0_v2.i319.i = add i32 %121, 1
  store i32 %tmp0_v2.i319.i, i32* %140, align 4
  %122 = load i32, i32* %141, align 4
  %123 = icmp slt i32 %tmp0_v2.i319.i, %122
  br i1 %123, label %BB_804950E.i, label %.exit

BB_8049425.i:                                     ; preds = %BB_80493FA.i, %BB_80493F1.i.BB_8049425.i_crit_edge
  %.pre-phi31 = phi i32* [ %.pre30, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %138, %BB_80493FA.i ]
  %.pre-phi = phi i32* [ %.pre28, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %137, %BB_80493FA.i ]
  %tmp2_v.i75.i.pre-phi = phi i32 [ %.pre27, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %tmp2_v11.i200.i, %BB_80493FA.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517807, i32* %.pre-phi31, align 4
  %arg.i.i15 = load i32, i32* %.pre-phi, align 16
  %124 = tail call i32 @putchar(i32 %arg.i.i15)  nounwind 
  %tmp2_v.i.i = add i32 %tmp0_v.i204.i, -120
  %125 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %125, align 8
  %126 = load i32, i32* %154, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %BB_804943B.i.lr.ph, label %BB_8049425.i.BB_8049466.i_crit_edge

BB_8049425.i.BB_8049466.i_crit_edge:              ; preds = %BB_8049425.i
  %.pre32 = add i32 %tmp0_v1.i22.i, -12
  %.pre33 = inttoptr i32 %.pre32 to i32*
  br label %BB_8049466.i

BB_804943B.i.lr.ph:                               ; preds = %BB_8049425.i
  %tmp2_v6.i253.i = add i32 %tmp0_v1.i22.i, -8
  %128 = inttoptr i32 %tmp2_v6.i253.i to i32*
  %tmp2_v9.i256.i = add i32 %tmp0_v1.i22.i, -12
  %129 = inttoptr i32 %tmp2_v9.i256.i to i32*
  br label %BB_804943B.i

BB_804937C.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.118 = phi i32 [ %r_ecx.3, %BB_80493A7.i ], [ %tmp0_v17.i129.i, %helper_divl_EAX.exit393.i ]
  %storemerge517 = phi i32 [ %tmp0_v1.i359.i, %BB_80493A7.i ], [ 0, %helper_divl_EAX.exit393.i ]
  %tmp4_v.i135.i = shl i32 %storemerge517, 2
  %tmp2_v2.i136.i = add i32 %tmp4_v.i135.i, %tmp2_v3.i97.i
  %130 = inttoptr i32 %tmp2_v2.i136.i to i32*
  %131 = load i32, i32* %130, align 4
  %tmp0_v5.i139.i = lshr i32 %131, 31
  %tmp0_v6.i140.i = add i32 %tmp0_v5.i139.i, %131
  %tmp0_v7.i141.i = and i32 %tmp0_v6.i140.i, 1
  %.neg = add nuw nsw i32 %tmp0_v5.i139.i, 1
  %.not.i.i = icmp eq i32 %tmp0_v7.i141.i, %.neg
  br i1 %.not.i.i, label %BB_8049393.i, label %BB_80493A7.i

BB_80493F1.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.2.lcssa = phi i32 [ %r_ecx.1.lcssa, %BB_80493B3.i ], [ %r_ecx.0, %BB_80493E5.i ]
  %tmp2_v.i153.i = add i32 %tmp0_v.i204.i, -116
  %132 = inttoptr i32 %tmp2_v.i153.i to i32*
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* %27, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %BB_80493FA.i.lr.ph, label %BB_80493F1.i.BB_8049425.i_crit_edge

BB_80493F1.i.BB_8049425.i_crit_edge:              ; preds = %BB_80493F1.i
  %.pre27 = add i32 %tmp0_v1.i22.i, -16
  %.pre28 = inttoptr i32 %.pre27 to i32*
  %.pre29 = add i32 %tmp0_v1.i22.i, -20
  %.pre30 = inttoptr i32 %.pre29 to i32*
  br label %BB_8049425.i

BB_80493FA.i.lr.ph:                               ; preds = %BB_80493F1.i
  %tmp2_v6.i194.i = add i32 %tmp0_v1.i22.i, -8
  %135 = inttoptr i32 %tmp2_v6.i194.i to i32*
  %tmp2_v9.i197.i = add i32 %tmp0_v1.i22.i, -12
  %136 = inttoptr i32 %tmp2_v9.i197.i to i32*
  %tmp2_v11.i200.i = add i32 %tmp0_v1.i22.i, -16
  %137 = inttoptr i32 %tmp2_v11.i200.i to i32*
  %tmp2_v12.i201.i = add i32 %tmp0_v1.i22.i, -20
  %138 = inttoptr i32 %tmp2_v12.i201.i to i32*
  br label %BB_80493FA.i

BB_80494F8.i:                                     ; preds = %Func_split_nums.exit, %BB_80494C6.i
  store i32 10, i32* %.pre-phi, align 16
  store i32 134518018, i32* %.pre-phi31, align 4
  %arg.i.i16 = load i32, i32* %.pre-phi, align 16
  %139 = tail call i32 @putchar(i32 %arg.i.i16)  nounwind 
  %tmp2_v.i313.i = add i32 %105, -120
  %140 = inttoptr i32 %tmp2_v.i313.i to i32*
  %tmp2_v.i172.i = add i32 %105, -124
  %141 = inttoptr i32 %tmp2_v.i172.i to i32*
  store i32 0, i32* %140, align 4
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %BB_804950E.i.lr.ph, label %.exit

BB_804950E.i.lr.ph:                               ; preds = %BB_80494F8.i
  %tmp2_v.i39.i = add i32 %105, -132
  %144 = inttoptr i32 %tmp2_v.i39.i to i32*
  %tmp2_v7.i48.i = add i32 %tmp0_v1.i22.i, -8
  %145 = inttoptr i32 %tmp2_v7.i48.i to i32*
  %tmp2_v11.i53.i = add i32 %104, -8128
  br label %BB_804950E.i

BB_80493FA.i:                                     ; preds = %BB_80493FA.i, %BB_80493FA.i.lr.ph
  %storemerge22 = phi i32 [ 0, %BB_80493FA.i.lr.ph ], [ %tmp0_v2.i82.i, %BB_80493FA.i ]
  %146 = load i32, i32* %26, align 16
  %tmp4_v.i189.i = shl i32 %storemerge22, 2
  %tmp2_v3.i190.i = add i32 %146, %tmp4_v.i189.i
  %147 = inttoptr i32 %tmp2_v3.i190.i to i32*
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %135, align 8
  %149 = load i32, i32* %132, align 4
  store i32 %149, i32* %136, align 4
  %spi.bis.338 = ptrtoint[20 x i8]* @str.338 to i32
  store i32 %spi.bis.338, i32* %137, align 16
  store i32 134517782, i32* %138, align 4
  %150 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa, i32 inreg noundef %storemerge22, i32 noundef %tmp2_v11.i200.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %151 = load i32, i32* %132, align 4
  %tmp0_v2.i82.i = add i32 %151, 1
  store i32 %tmp0_v2.i82.i, i32* %132, align 4
  %152 = load i32, i32* %27, align 4
  %153 = icmp slt i32 %tmp0_v2.i82.i, %152
  br i1 %153, label %BB_80493FA.i, label %BB_8049425.i

BB_80493B3.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit393.i
  %r_ecx.1.lcssa = phi i32 [ %tmp0_v17.i129.i, %helper_divl_EAX.exit393.i ], [ %r_ecx.3, %BB_80493A7.i ]
  %tmp2_v.i216.i = add i32 %tmp0_v.i204.i, -108
  %154 = inttoptr i32 %tmp2_v.i216.i to i32*
  store i32 0, i32* %154, align 4
  %tmp2_v1.i217.i = add i32 %tmp0_v.i204.i, -112
  %155 = inttoptr i32 %tmp2_v1.i217.i to i32*
  store i32 0, i32* %155, align 16
  %156 = load i32, i32* %21, align 16
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %BB_80493C3.i, label %BB_80493F1.i

BB_8049393.i:                                     ; preds = %BB_804937C.i
  %158 = load i32, i32* %26, align 16
  %159 = load i32, i32* %27, align 4
  %tmp4_v8.i229.i = shl i32 %159, 2
  %tmp2_v9.i230.i = add i32 %tmp4_v8.i229.i, %158
  %160 = inttoptr i32 %tmp2_v9.i230.i to i32*
  store i32 %131, i32* %160, align 4
  %161 = load i32, i32* %27, align 4
  %tmp0_v12.i233.i = add i32 %161, 1
  store i32 %tmp0_v12.i233.i, i32* %27, align 4
  %.pre = load i32, i32* %28, align 8
  br label %BB_80493A7.i

BB_804943B.i:                                     ; preds = %BB_804943B.i, %BB_804943B.i.lr.ph
  %storemerge323 = phi i32 [ 0, %BB_804943B.i.lr.ph ], [ %tmp0_v2.i61.i, %BB_804943B.i ]
  %162 = load i32, i32* %23, align 8
  %tmp4_v.i248.i = shl i32 %storemerge323, 2
  %tmp2_v3.i249.i = add i32 %162, %tmp4_v.i248.i
  %163 = inttoptr i32 %tmp2_v3.i249.i to i32*
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %128, align 8
  %165 = load i32, i32* %125, align 8
  store i32 %165, i32* %129, align 4
  %spi.bis.337 = ptrtoint[21 x i8]* @str.337 to i32
  store i32 %spi.bis.337, i32* %.pre-phi, align 16
  store i32 134517847, i32* %.pre-phi31, align 4
  %166 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa, i32 inreg noundef %storemerge323, i32 noundef %tmp2_v.i75.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %167 = load i32, i32* %125, align 8
  %tmp0_v2.i61.i = add i32 %167, 1
  store i32 %tmp0_v2.i61.i, i32* %125, align 8
  %168 = load i32, i32* %154, align 4
  %169 = icmp slt i32 %tmp0_v2.i61.i, %168
  br i1 %169, label %BB_804943B.i, label %BB_8049466.i

BB_80493C3.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.220 = phi i32 [ %r_ecx.0, %BB_80493E5.i ], [ %r_ecx.1.lcssa, %BB_80493B3.i ]
  %storemerge419 = phi i32 [ %tmp0_v1.i.i, %BB_80493E5.i ], [ 0, %BB_80493B3.i ]
  %tmp4_v.i272.i = shl i32 %storemerge419, 2
  %tmp2_v2.i273.i = add i32 %tmp4_v.i272.i, %tmp2_v3.i97.i
  %170 = inttoptr i32 %tmp2_v2.i273.i to i32*
  %171 = load i32, i32* %170, align 4
  %tmp0_v4.i275.i = and i32 %171, 1
  %.not.i276.i = icmp eq i32 %tmp0_v4.i275.i, 0
  br i1 %.not.i276.i, label %BB_80493D1.i, label %BB_80493E5.i

BB_80493A7.i:                                     ; preds = %BB_8049393.i, %BB_804937C.i
  %172 = phi i32 [ %storemerge517, %BB_804937C.i ], [ %.pre, %BB_8049393.i ]
  %r_ecx.3 = phi i32 [ %r_ecx.118, %BB_804937C.i ], [ %131, %BB_8049393.i ]
  %tmp0_v1.i359.i = add i32 %172, 1
  store i32 %tmp0_v1.i359.i, i32* %28, align 8
  %173 = load i32, i32* %21, align 16
  %174 = icmp slt i32 %tmp0_v1.i359.i, %173
  br i1 %174, label %BB_804937C.i, label %BB_80493B3.i

.exit:                                            ; preds = %BB_80494F8.i, %BB_804950E.i
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

  tail call fastcc void @split_even_odd340 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack339, i32 0, i32 8092) to i32)) nounwind
