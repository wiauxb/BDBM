; Mutation 750
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack749 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse
define internal fastcc void @return_dynamic_2d_array750(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i37.i = add i32 %arg_esp, 4
  %tmp0_v.i38.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i38.i, -4
  %3 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i41.i = add i32 %tmp0_v.i38.i, -8
  %4 = inttoptr i32 %tmp2_v4.i41.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i43.i = add i32 %tmp0_v.i38.i, -12
  %5 = inttoptr i32 %tmp2_v5.i43.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i45.i = add i32 %tmp0_v.i38.i, -16
  %6 = inttoptr i32 %tmp2_v6.i45.i to i32*
  store i32 %tmp2_v.i37.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i38.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517448, i32* %7, align 4
  %tmp2_v.i.i = add i32 %tmp0_v.i38.i, -28
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 5, i32* %8, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i38.i, -24
  %9 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 4, i32* %9, align 8
  %tmp2_v3.i.i = add i32 %tmp0_v.i38.i, -56
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 2, i32* %10, align 8
  %11 = load i32, i32* %9, align 8
  %tmp2_v6.i.i = add i32 %tmp0_v.i38.i, -60
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i38.i, -64
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %13, i32* %14, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i38.i, -68
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517484, i32* %15, align 4
  %tmp2_v.i33.i.i = add i32 %tmp0_v.i38.i, -72
  %16 = inttoptr i32 %tmp2_v.i33.i.i to i32*
  store i32 %tmp2_v4.i41.i, i32* %16, align 8
  %tmp2_v1.i35.i.i = add i32 %tmp0_v.i38.i, -76
  %17 = inttoptr i32 %tmp2_v1.i35.i.i to i32*
  store i32 0, i32* %17, align 4
  %tmp2_v2.i36.i.i = add i32 %tmp0_v.i38.i, -80
  %18 = inttoptr i32 %tmp2_v2.i36.i.i to i32*
  store i32 134529024, i32* %18, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i38.i, -100
  %19 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517255, i32* %19, align 4
  %20 = load i32, i32* %14, align 16
  %tmp0_v2.i43.i.i = shl i32 %20, 2
  %tmp2_v4.i46.i.i = add i32 %tmp0_v.i38.i, -112
  %21 = inttoptr i32 %tmp2_v4.i46.i.i to i32*
  store i32 %tmp0_v2.i43.i.i, i32* %21, align 16
  %tmp2_v5.i47.i.i = add i32 %tmp0_v.i38.i, -116
  %22 = inttoptr i32 %tmp2_v5.i47.i.i to i32*
  store i32 134517276, i32* %22, align 4
  %arg.i.i.i = load i32, i32* %21, align 16
  %23 = tail call i32 @malloc(i32 %arg.i.i.i)
  %tmp2_v.i51.i.i = add i32 %tmp0_v.i38.i, -84
  %24 = inttoptr i32 %tmp2_v.i51.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v1.i52.i.i = add i32 %tmp0_v.i38.i, -96
  %25 = inttoptr i32 %tmp2_v1.i52.i.i to i32*
  store i32 0, i32* %25, align 16
  %26 = load i32, i32* %14, align 16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %BB_804922B.i.lr.ph.i, label %BB_804925B.i.i

BB_804922B.i.lr.ph.i:                             ; preds = %0
  %mrv.i5.i = insertvalue { i32, i32 } undef, i32 %tmp2_v4.i46.i.i, 0
  br label %BB_804922B.i.i

BB_8049297.i.i:                                   ; preds = %BB_8049264.i.i, %BB_804926D.i.i
  %28 = load i32, i32* %49, align 4
  %tmp0_v1.i.i.i = add i32 %28, 1
  store i32 %tmp0_v1.i.i.i, i32* %49, align 4
  %29 = load i32, i32* %14, align 16
  %30 = icmp slt i32 %tmp0_v1.i.i.i, %29
  br i1 %30, label %BB_8049264.i.i, label %Func_create_matrix.exit

BB_804922B.i.i:                                   ; preds = %BB_804922B.i.i, %BB_804922B.i.lr.ph.i
  %r_esp.0.in13.i = phi i32 [ %tmp2_v4.i46.i.i, %BB_804922B.i.lr.ph.i ], [ %r_esp.0.in.i, %BB_804922B.i.i ]
  %.pn912.i = phi i32 [ %23, %BB_804922B.i.lr.ph.i ], [ %35, %BB_804922B.i.i ]
  %mrv.i5.pn11.i = phi { i32, i32 } [ %mrv.i5.i, %BB_804922B.i.lr.ph.i ], [ %.pn.i, %BB_804922B.i.i ]
  %storemerge10.i = phi i32 [ 0, %BB_804922B.i.lr.ph.i ], [ %tmp0_v2.i76.i.i, %BB_804922B.i.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i5.pn11.i, i32 %.pn912.i, 1
  %31 = load i32, i32* %12, align 4
  %tmp0_v1.i17.i.i = shl i32 %31, 2
  %tmp4_v.i.i.i8 = shl i32 %storemerge10.i, 2
  %32 = load i32, i32* %24, align 4
  %tmp2_v6.i.i.i = add i32 %32, %tmp4_v.i.i.i8
  %33 = inttoptr i32 %r_esp.0.in13.i to i32*
  store i32 %tmp0_v1.i17.i.i, i32* %33, align 4
  %tmp2_v9.i.i.i = add i32 %r_esp.0.in13.i, -4
  %34 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134517322, i32* %34, align 4
  %arg.i.i7.i = load i32, i32* %33, align 4
  %35 = tail call i32 @malloc(i32 %arg.i.i7.i)
  %36 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %25, align 16
  %tmp0_v2.i76.i.i = add i32 %37, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i5.pn11.i, 0
  store i32 %tmp0_v2.i76.i.i, i32* %25, align 16
  %38 = load i32, i32* %14, align 16
  %39 = icmp slt i32 %tmp0_v2.i76.i.i, %38
  br i1 %39, label %BB_804922B.i.i, label %BB_804925B.i.i

BB_804926D.i.i:                                   ; preds = %BB_8049264.i.i, %BB_804926D.i.i
  %storemerge214.i = phi i32 [ %tmp0_v13.i.i.i, %BB_804926D.i.i ], [ 0, %BB_8049264.i.i ]
  %40 = load i32, i32* %49, align 4
  %tmp4_v.i24.i.i = shl i32 %40, 2
  %41 = load i32, i32* %24, align 4
  %tmp0_v3.i26.i.i = add i32 %41, %tmp4_v.i24.i.i
  %42 = inttoptr i32 %tmp0_v3.i26.i.i to i32*
  %43 = load i32, i32* %42, align 4
  %tmp0_v7.i27.i.i = shl i32 %storemerge214.i, 2
  %tmp0_v8.i.i.i = add i32 %43, %tmp0_v7.i27.i.i
  %44 = load i32, i32* %10, align 8
  %45 = inttoptr i32 %tmp0_v8.i.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %52, align 8
  %tmp0_v13.i.i.i = add i32 %46, 1
  store i32 %tmp0_v13.i.i.i, i32* %52, align 8
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %tmp0_v13.i.i.i, %47
  br i1 %48, label %BB_804926D.i.i, label %BB_8049297.i.i

BB_804925B.i.i:                                   ; preds = %BB_804922B.i.i, %0
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i37.i, %0 ], [ %tmp4_v.i.i.i8, %BB_804922B.i.i ]
  %tmp2_v.i84.i.i = add i32 %tmp0_v.i38.i, -92
  %49 = inttoptr i32 %tmp2_v.i84.i.i to i32*
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %14, align 16
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %BB_8049264.i.lr.ph.i, label %Func_create_matrix.exit

BB_8049264.i.lr.ph.i:                             ; preds = %BB_804925B.i.i
  %tmp2_v.i86.i.i = add i32 %tmp0_v.i38.i, -88
  %52 = inttoptr i32 %tmp2_v.i86.i.i to i32*
  br label %BB_8049264.i.i

BB_8049264.i.i:                                   ; preds = %BB_8049264.i.lr.ph.i, %BB_8049297.i.i
  store i32 0, i32* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %BB_804926D.i.i, label %BB_8049297.i.i

Func_create_matrix.exit:                          ; preds = %BB_804925B.i.i, %BB_8049297.i.i
  %55 = load i32, i32* %24, align 4
  %56 = load i32, i32* %18, align 16
  %57 = load i32, i32* %16, align 8
  %tmp2_v.i50.i = add i32 %57, -12
  %58 = inttoptr i32 %tmp2_v.i50.i to i32*
  store i32 %55, i32* %58, align 4
  %tmp2_v1.i51.i = add i32 %57, -32
  %59 = inttoptr i32 %tmp2_v1.i51.i to i32*
  %tmp2_v1.i85.i = add i32 %57, -20
  %60 = inttoptr i32 %tmp2_v1.i85.i to i32*
  store i32 0, i32* %59, align 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %BB_80492FB.i.lr.ph, label %BB_8049357.i

BB_80492FB.i.lr.ph:                               ; preds = %Func_create_matrix.exit
  %tmp2_v.i92.i = add i32 %57, -28
  %63 = inttoptr i32 %tmp2_v.i92.i to i32*
  %tmp2_v1.i20.i = add i32 %57, -16
  %64 = inttoptr i32 %tmp2_v1.i20.i to i32*
  %tmp2_v12.i.i = add i32 %56, -8184
  br label %BB_80492FB.i

BB_8049304.i:                                     ; preds = %BB_80492FB.i, %BB_8049304.i
  %storemerge513 = phi i32 [ %tmp0_v2.i75.i, %BB_8049304.i ], [ 0, %BB_80492FB.i ]
  %65 = load i32, i32* %59, align 4
  %tmp4_v.i.i = shl i32 %65, 2
  %66 = load i32, i32* %58, align 4
  %tmp0_v3.i.i = add i32 %66, %tmp4_v.i.i
  %67 = inttoptr i32 %tmp0_v3.i.i to i32*
  %68 = load i32, i32* %67, align 4
  %tmp0_v7.i.i = shl i32 %storemerge513, 2
  %tmp0_v8.i6.i = add i32 %68, %tmp0_v7.i.i
  %69 = inttoptr i32 %tmp0_v8.i6.i to i32*
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  store i32 %tmp2_v12.i.i, i32* %14, align 16
  store i32 134517551, i32* %15, align 4
  %71 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v7.i.i, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %72 = load i32, i32* %63, align 4
  %tmp0_v2.i75.i = add i32 %72, 1
  store i32 %tmp0_v2.i75.i, i32* %63, align 4
  %73 = load i32, i32* %64, align 4
  %74 = icmp slt i32 %tmp0_v2.i75.i, %73
  br i1 %74, label %BB_8049304.i, label %BB_804933E.i

BB_8049360.i:                                     ; preds = %BB_8049357.i, %BB_8049360.i
  %storemerge414 = phi i32 [ %tmp0_v2.i29.i, %BB_8049360.i ], [ 0, %BB_8049357.i ]
  %tmp4_v.i55.i = shl i32 %storemerge414, 2
  %75 = load i32, i32* %58, align 4
  %tmp0_v3.i58.i = add i32 %75, %tmp4_v.i55.i
  %76 = inttoptr i32 %tmp0_v3.i58.i to i32*
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 16
  store i32 134517626, i32* %15, align 4
  %arg.i.i = load i32, i32* %14, align 16
  tail call void @free(i32 %arg.i.i)
  %78 = load i32, i32* %81, align 4
  %tmp0_v2.i29.i = add i32 %78, 1
  store i32 %tmp0_v2.i29.i, i32* %81, align 4
  %79 = load i32, i32* %60, align 4
  %80 = icmp slt i32 %tmp0_v2.i29.i, %79
  br i1 %80, label %BB_8049360.i, label %.exit

BB_8049357.i:                                     ; preds = %BB_804933E.i, %Func_create_matrix.exit
  %tmp2_v.i90.i = add i32 %57, -24
  %81 = inttoptr i32 %tmp2_v.i90.i to i32*
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %60, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %BB_8049360.i, label %.exit

BB_80492FB.i:                                     ; preds = %BB_804933E.i, %BB_80492FB.i.lr.ph
  store i32 0, i32* %63, align 4
  %84 = load i32, i32* %64, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %BB_8049304.i, label %BB_804933E.i

BB_804933E.i:                                     ; preds = %BB_80492FB.i, %BB_8049304.i
  store i32 10, i32* %14, align 16
  store i32 134517576, i32* %15, align 4
  %arg.i.i11 = load i32, i32* %14, align 16
  %86 = tail call i32 @putchar(i32 %arg.i.i11)  nounwind 
  %87 = load i32, i32* %59, align 4
  %tmp0_v2.i13.i = add i32 %87, 1
  store i32 %tmp0_v2.i13.i, i32* %59, align 4
  %88 = load i32, i32* %60, align 4
  %89 = icmp slt i32 %tmp0_v2.i13.i, %88
  br i1 %89, label %BB_80492FB.i, label %BB_8049357.i

.exit:                                            ; preds = %BB_8049357.i, %BB_8049360.i
  %90 = load i32, i32* %58, align 4
  store i32 %90, i32* %14, align 16
  store i32 134517652, i32* %15, align 4
  %arg.i.i12 = load i32, i32* %14, align 16
  tail call void @free(i32 %arg.i.i12)
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
!12 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @return_dynamic_2d_array750 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack749, i32 0, i32 8092) to i32)) nounwind
