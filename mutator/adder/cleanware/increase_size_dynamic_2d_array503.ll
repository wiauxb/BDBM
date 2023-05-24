; Mutation 503
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack502 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.499 = constant [6 x i8] c"%02d \00"
@str.500 = constant [6 x i8] c"%02d \00"
@str.501 = constant [6 x i8] c"%02d \00"

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
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @realloc(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @increase_size_dynamic_2d_array503(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i186.i = add i32 %arg_esp, 4
  %tmp0_v.i187.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i189.i = add i32 %tmp0_v.i187.i, -4
  %3 = inttoptr i32 %tmp2_v3.i189.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i190.i = add i32 %tmp0_v.i187.i, -8
  %4 = inttoptr i32 %tmp2_v4.i190.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i192.i = add i32 %tmp0_v.i187.i, -12
  %5 = inttoptr i32 %tmp2_v5.i192.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i194.i = add i32 %tmp0_v.i187.i, -16
  %6 = inttoptr i32 %tmp2_v6.i194.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i196.i = add i32 %tmp0_v.i187.i, -20
  %7 = inttoptr i32 %tmp2_v7.i196.i to i32*
  store i32 %tmp2_v.i186.i, i32* %7, align 4
  %tmp2_v9.i198.i = add i32 %tmp0_v.i187.i, -116
  %8 = inttoptr i32 %tmp2_v9.i198.i to i32*
  store i32 134517298, i32* %8, align 4
  %tmp2_v.i.i = add i32 %tmp0_v.i187.i, -48
  %9 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 4, i32* %9, align 16
  %tmp2_v1.i.i = add i32 %tmp0_v.i187.i, -44
  %10 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i187.i, -128
  %11 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 16, i32* %11, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i187.i, -132
  %12 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517333, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @malloc(i32 %arg.i.i)
  %mrv.i42 = insertvalue { i32, i32 } undef, i32 %tmp2_v6.i.i, 0
  %tmp2_v.i51.i = add i32 %tmp0_v.i187.i, -40
  %14 = inttoptr i32 %tmp2_v.i51.i to i32*
  store i32 %13, i32* %14, align 8
  %tmp2_v1.i52.i = add i32 %tmp0_v.i187.i, -112
  %15 = inttoptr i32 %tmp2_v1.i52.i to i32*
  store i32 0, i32* %15, align 16
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %BB_8049264.i, label %BB_8049294.i

BB_804941A.i:                                     ; preds = %BB_8049411.i, %BB_804941A.i
  %storemerge2081 = phi i32 [ %tmp0_v2.i458.i, %BB_804941A.i ], [ 0, %BB_8049411.i ]
  %18 = load i32, i32* %100, align 16
  %tmp4_v.i.i = shl i32 %18, 2
  %19 = load i32, i32* %14, align 8
  %tmp0_v3.i5.i = add i32 %19, %tmp4_v.i.i
  %20 = inttoptr i32 %tmp0_v3.i5.i to i32*
  %21 = load i32, i32* %20, align 4
  %tmp0_v7.i.i = shl i32 %storemerge2081, 2
  %tmp0_v8.i.i = add i32 %21, %tmp0_v7.i.i
  %22 = inttoptr i32 %tmp0_v8.i.i to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %104, align 4
  %spi501 = ptrtoint[6 x i8]* @str.501 to i32
  store i32 %spi501, i32* %.pre-phi, align 4
  store i32 134517829, i32* %.pre-phi97, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.5.lcssa, i32 inreg noundef %tmp0_v7.i.i, i32 noundef %r_esp.2.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %25 = load i32, i32* %103, align 4
  %tmp0_v2.i458.i = add i32 %25, 1
  store i32 %tmp0_v2.i458.i, i32* %103, align 4
  %26 = load i32, i32* %9, align 16
  %27 = icmp slt i32 %tmp0_v2.i458.i, %26
  br i1 %27, label %BB_804941A.i, label %BB_8049454.i

BB_804953B.i:                                     ; preds = %BB_804953B.i.lr.ph, %BB_804957E.i
  store i32 0, i32* %146, align 8
  %28 = load i32, i32* %9, align 16
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %BB_8049544.i, label %BB_804957E.i

BB_804957E.i:                                     ; preds = %BB_8049544.i, %BB_804953B.i
  store i32 10, i32* %148, align 4
  store i32 134518152, i32* %149, align 4
  %arg.i.i44 = load i32, i32* %148, align 4
  %30 = tail call i32 @putchar(i32 %arg.i.i44)  nounwind 
  %31 = load i32, i32* %143, align 4
  %tmp0_v2.i85.i = add i32 %31, 1
  store i32 %tmp0_v2.i85.i, i32* %143, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %tmp0_v2.i85.i, %32
  br i1 %33, label %BB_804953B.i, label %BB_8049597.i

BB_8049544.i:                                     ; preds = %BB_8049544.i, %BB_804953B.i
  %storemerge1792 = phi i32 [ %tmp0_v2.i513.i, %BB_8049544.i ], [ 0, %BB_804953B.i ]
  %34 = load i32, i32* %143, align 4
  %tmp4_v.i18.i = shl i32 %34, 2
  %35 = load i32, i32* %14, align 8
  %tmp0_v3.i21.i = add i32 %35, %tmp4_v.i18.i
  %36 = inttoptr i32 %tmp0_v3.i21.i to i32*
  %37 = load i32, i32* %36, align 4
  %tmp0_v7.i25.i = shl i32 %storemerge1792, 2
  %tmp0_v8.i26.i = add i32 %37, %tmp0_v7.i25.i
  %38 = inttoptr i32 %tmp0_v8.i26.i to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %147, align 4
  %spi500 = ptrtoint[6 x i8]* @str.500 to i32
  store i32 %spi500, i32* %148, align 4
  store i32 134518127, i32* %149, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.3.lcssa, i32 inreg noundef %tmp0_v7.i25.i, i32 noundef %r_esp.4.in.le.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %41 = load i32, i32* %146, align 8
  %tmp0_v2.i513.i = add i32 %41, 1
  store i32 %tmp0_v2.i513.i, i32* %146, align 8
  %42 = load i32, i32* %9, align 16
  %43 = icmp slt i32 %tmp0_v2.i513.i, %42
  br i1 %43, label %BB_8049544.i, label %BB_804957E.i

BB_80493B9.i:                                     ; preds = %BB_80493FC.i, %BB_80493B9.i.lr.ph
  %r_ecx.579 = phi i32 [ %r_ecx.7.lcssa, %BB_80493B9.i.lr.ph ], [ %r_ecx.1.lcssa, %BB_80493FC.i ]
  store i32 0, i32* %116, align 4
  %44 = load i32, i32* %9, align 16
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %BB_80493C2.i, label %BB_80493FC.i

BB_80492EC.i:                                     ; preds = %BB_8049294.i, %BB_80492E0.i
  %r_ecx.0.lcssa = phi i32 [ %r_ecx.2.lcssa, %BB_8049294.i ], [ %r_ecx.8.lcssa, %BB_80492E0.i ]
  %tmp2_v.i61.i = add i32 %tmp0_v.i187.i, -100
  %46 = inttoptr i32 %tmp2_v.i61.i to i32*
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %BB_80492F5.i.lr.ph, label %BB_80492EC.i.BB_8049351.i_crit_edge

BB_80492EC.i.BB_8049351.i_crit_edge:              ; preds = %BB_80492EC.i
  %.pre94 = inttoptr i32 %r_esp.2.in.le to i32*
  %.pre95 = add i32 %r_esp.2.in.le, -4
  %.pre96 = inttoptr i32 %.pre95 to i32*
  br label %BB_8049351.i

BB_80492F5.i.lr.ph:                               ; preds = %BB_80492EC.i
  %tmp2_v.i466.i = add i32 %tmp0_v.i187.i, -96
  %49 = inttoptr i32 %tmp2_v.i466.i to i32*
  %tmp2_v11.i160.i = add i32 %r_esp.2.in.le, 4
  %50 = inttoptr i32 %tmp2_v11.i160.i to i32*
  %51 = inttoptr i32 %r_esp.2.in.le to i32*
  %tmp2_v14.i164.i = add i32 %r_esp.2.in.le, -4
  %52 = inttoptr i32 %tmp2_v14.i164.i to i32*
  br label %BB_80492F5.i

BB_80492E0.i:                                     ; preds = %BB_80492A6.i, %BB_804929D.i
  %r_ecx.8.lcssa = phi i32 [ %r_ecx.072, %BB_804929D.i ], [ %tmp0_v3.i403.i, %BB_80492A6.i ]
  %53 = load i32, i32* %125, align 4
  %tmp0_v1.i102.i = add i32 %53, 1
  store i32 %tmp0_v1.i102.i, i32* %125, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %tmp0_v1.i102.i, %54
  br i1 %55, label %BB_804929D.i, label %BB_80492EC.i

BB_8049338.i:                                     ; preds = %BB_80492F5.i, %BB_80492FE.i
  store i32 10, i32* %51, align 4
  store i32 134517570, i32* %52, align 4
  %arg.i.i45 = load i32, i32* %51, align 4
  %56 = tail call i32 @putchar(i32 %arg.i.i45)  nounwind 
  %57 = load i32, i32* %46, align 4
  %tmp0_v2.i552.i = add i32 %57, 1
  store i32 %tmp0_v2.i552.i, i32* %46, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %tmp0_v2.i552.i, %58
  br i1 %59, label %BB_80492F5.i, label %BB_8049351.i

BB_80494AA.i:                                     ; preds = %BB_804946D.i, %BB_80494AA.i
  %r_esp.4.in85 = phi i32 [ %r_esp.4.in, %BB_80494AA.i ], [ %r_esp.2.in.le, %BB_804946D.i ]
  %.pn6484 = phi i32 [ %64, %BB_80494AA.i ], [ %133, %BB_804946D.i ]
  %.pn13.pn83 = phi { i32, i32 } [ %.pn13, %BB_80494AA.i ], [ %.pn.pn.lcssa, %BB_804946D.i ]
  %storemerge1982 = phi i32 [ %tmp0_v2.i74.i, %BB_80494AA.i ], [ %tmp0_v4.i268.i, %BB_804946D.i ]
  %.pn13 = insertvalue { i32, i32 } %.pn13.pn83, i32 %.pn6484, 1
  %60 = load i32, i32* %9, align 16
  %tmp0_v1.i115.i = shl i32 %60, 2
  %tmp4_v.i118.i = shl i32 %storemerge1982, 2
  %61 = load i32, i32* %14, align 8
  %tmp2_v6.i121.i = add i32 %61, %tmp4_v.i118.i
  %62 = inttoptr i32 %r_esp.4.in85 to i32*
  store i32 %tmp0_v1.i115.i, i32* %62, align 4
  %tmp2_v9.i.i = add i32 %r_esp.4.in85, -4
  %63 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517961, i32* %63, align 4
  %arg.i.i46 = load i32, i32* %62, align 4
  %64 = tail call i32 @malloc(i32 %arg.i.i46)
  %65 = inttoptr i32 %tmp2_v6.i121.i to i32*
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %136, align 8
  %tmp0_v2.i74.i = add i32 %66, 1
  store i32 %tmp0_v2.i74.i, i32* %136, align 8
  %r_esp.4.in = extractvalue { i32, i32 } %.pn13.pn83, 0
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %tmp0_v2.i74.i, %67
  br i1 %68, label %BB_80494AA.i, label %BB_80494DA.i.loopexit

BB_8049411.i:                                     ; preds = %BB_8049454.i, %BB_8049411.i.lr.ph
  store i32 0, i32* %103, align 4
  %69 = load i32, i32* %9, align 16
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %BB_804941A.i, label %BB_8049454.i

BB_80492FE.i:                                     ; preds = %BB_80492F5.i, %BB_80492FE.i
  %storemerge2474 = phi i32 [ %tmp0_v2.i432.i, %BB_80492FE.i ], [ 0, %BB_80492F5.i ]
  %71 = load i32, i32* %46, align 4
  %tmp4_v.i148.i = shl i32 %71, 2
  %72 = load i32, i32* %14, align 8
  %tmp0_v3.i151.i = add i32 %72, %tmp4_v.i148.i
  %73 = inttoptr i32 %tmp0_v3.i151.i to i32*
  %74 = load i32, i32* %73, align 4
  %tmp0_v7.i155.i = shl i32 %storemerge2474, 2
  %tmp0_v8.i156.i = add i32 %74, %tmp0_v7.i155.i
  %75 = inttoptr i32 %tmp0_v8.i156.i to i32*
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %50, align 4
  %spi499 = ptrtoint[6 x i8]* @str.499 to i32
  store i32 %spi499, i32* %51, align 4
  store i32 134517545, i32* %52, align 4
  %77 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa, i32 inreg noundef %tmp0_v7.i155.i, i32 noundef %r_esp.2.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %78 = load i32, i32* %49, align 16
  %tmp0_v2.i432.i = add i32 %78, 1
  store i32 %tmp0_v2.i432.i, i32* %49, align 16
  %79 = load i32, i32* %9, align 16
  %80 = icmp slt i32 %tmp0_v2.i432.i, %79
  br i1 %80, label %BB_80492FE.i, label %BB_8049338.i

BB_8049597.i:                                     ; preds = %BB_8049532.i.BB_8049597.i_crit_edge, %BB_804957E.i
  %.pre-phi105 = phi i32* [ %.pre104, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %149, %BB_804957E.i ]
  %.pre-phi102 = phi i32* [ %.pre101, %BB_8049532.i.BB_8049597.i_crit_edge ], [ %148, %BB_804957E.i ]
  store i32 10, i32* %.pre-phi102, align 4
  store i32 134518177, i32* %.pre-phi105, align 4
  %arg.i.i48 = load i32, i32* %.pre-phi102, align 4
  %81 = tail call i32 @putchar(i32 %arg.i.i48)  nounwind 
  %tmp2_v.i202.i = add i32 %tmp0_v.i187.i, -52
  %82 = inttoptr i32 %tmp2_v.i202.i to i32*
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %BB_80495AD.i, label %.exit

BB_80494DA.i.loopexit:                            ; preds = %BB_80494AA.i
  %.pre = extractvalue { i32, i32 } %.pn13.pn83, 0
  br label %BB_80494DA.i

BB_80494DA.i:                                     ; preds = %BB_804946D.i, %BB_80494DA.i.loopexit
  %r_esp.4.in.le.pre-phi = phi i32 [ %.pre, %BB_80494DA.i.loopexit ], [ %r_esp.2.in.le, %BB_804946D.i ]
  %r_ecx.4.lcssa = phi i32 [ %tmp4_v.i118.i, %BB_80494DA.i.loopexit ], [ %r_ecx.5.lcssa, %BB_804946D.i ]
  %tmp2_v.i177.i = add i32 %tmp0_v.i187.i, -68
  %85 = inttoptr i32 %tmp2_v.i177.i to i32*
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %BB_80494E3.i.lr.ph, label %BB_8049532.i

BB_80494E3.i.lr.ph:                               ; preds = %BB_80494DA.i
  %tmp2_v.i299.i = add i32 %tmp0_v.i187.i, -64
  %88 = inttoptr i32 %tmp2_v.i299.i to i32*
  br label %BB_80494E3.i

BB_8049264.i:                                     ; preds = %BB_8049264.i, %0
  %r_esp.2.in68 = phi i32 [ %r_esp.2.in, %BB_8049264.i ], [ %tmp2_v6.i.i, %0 ]
  %.pn6367 = phi i32 [ %93, %BB_8049264.i ], [ %13, %0 ]
  %.pn.pn66 = phi { i32, i32 } [ %.pn, %BB_8049264.i ], [ %mrv.i42, %0 ]
  %storemerge2665 = phi i32 [ %tmp0_v2.i446.i, %BB_8049264.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %.pn.pn66, i32 %.pn6367, 1
  %89 = load i32, i32* %9, align 16
  %tmp0_v1.i232.i = shl i32 %89, 2
  %tmp4_v.i235.i = shl i32 %storemerge2665, 2
  %90 = load i32, i32* %14, align 8
  %tmp2_v6.i238.i = add i32 %90, %tmp4_v.i235.i
  %91 = inttoptr i32 %r_esp.2.in68 to i32*
  store i32 %tmp0_v1.i232.i, i32* %91, align 4
  %tmp2_v9.i242.i = add i32 %r_esp.2.in68, -4
  %92 = inttoptr i32 %tmp2_v9.i242.i to i32*
  store i32 134517379, i32* %92, align 4
  %arg.i.i49 = load i32, i32* %91, align 4
  %93 = tail call i32 @malloc(i32 %arg.i.i49)
  %94 = inttoptr i32 %tmp2_v6.i238.i to i32*
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %15, align 16
  %tmp0_v2.i446.i = add i32 %95, 1
  store i32 %tmp0_v2.i446.i, i32* %15, align 16
  %r_esp.2.in = extractvalue { i32, i32 } %.pn.pn66, 0
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %tmp0_v2.i446.i, %96
  br i1 %97, label %BB_8049264.i, label %BB_8049294.i

BB_804929D.i:                                     ; preds = %BB_804929D.i.lr.ph, %BB_80492E0.i
  %r_ecx.072 = phi i32 [ %r_ecx.2.lcssa, %BB_804929D.i.lr.ph ], [ %r_ecx.8.lcssa, %BB_80492E0.i ]
  store i32 0, i32* %128, align 8
  %98 = load i32, i32* %9, align 16
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %BB_80492A6.i, label %BB_80492E0.i

BB_8049408.i:                                     ; preds = %BB_80493FC.i, %BB_80493B0.i
  %r_ecx.5.lcssa = phi i32 [ %r_ecx.7.lcssa, %BB_80493B0.i ], [ %r_ecx.1.lcssa, %BB_80493FC.i ]
  %tmp2_v.i271.i = add i32 %tmp0_v.i187.i, -80
  %100 = inttoptr i32 %tmp2_v.i271.i to i32*
  store i32 0, i32* %100, align 16
  %101 = load i32, i32* %10, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %BB_8049411.i.lr.ph, label %BB_8049408.i.BB_804946D.i_crit_edge

BB_8049408.i.BB_804946D.i_crit_edge:              ; preds = %BB_8049408.i
  %.pre98 = add i32 %r_esp.2.in.le, 4
  %.pre99 = inttoptr i32 %.pre98 to i32*
  br label %BB_804946D.i

BB_8049411.i.lr.ph:                               ; preds = %BB_8049408.i
  %tmp2_v.i144.i = add i32 %tmp0_v.i187.i, -76
  %103 = inttoptr i32 %tmp2_v.i144.i to i32*
  %tmp2_v11.i.i = add i32 %r_esp.2.in.le, 4
  %104 = inttoptr i32 %tmp2_v11.i.i to i32*
  br label %BB_8049411.i

BB_80495AD.i:                                     ; preds = %BB_80495AD.i, %BB_8049597.i
  %storemerge1693 = phi i32 [ %tmp0_v2.i129.i, %BB_80495AD.i ], [ 0, %BB_8049597.i ]
  %tmp4_v.i282.i = shl i32 %storemerge1693, 2
  %105 = load i32, i32* %14, align 8
  %tmp0_v3.i285.i = add i32 %105, %tmp4_v.i282.i
  %106 = inttoptr i32 %tmp0_v3.i285.i to i32*
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %.pre-phi102, align 4
  store i32 134518215, i32* %.pre-phi105, align 4
  %arg.i.i51 = load i32, i32* %.pre-phi102, align 4
  tail call void @free(i32 %arg.i.i51)
  %108 = load i32, i32* %82, align 4
  %tmp0_v2.i129.i = add i32 %108, 1
  store i32 %tmp0_v2.i129.i, i32* %82, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %tmp0_v2.i129.i, %109
  br i1 %110, label %BB_80495AD.i, label %.exit

BB_80494E3.i:                                     ; preds = %BB_8049526.i, %BB_80494E3.i.lr.ph
  %r_ecx.390 = phi i32 [ %r_ecx.4.lcssa, %BB_80494E3.i.lr.ph ], [ %r_ecx.6.lcssa, %BB_8049526.i ]
  store i32 0, i32* %88, align 16
  %111 = load i32, i32* %9, align 16
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %BB_80494EC.i, label %BB_8049526.i

BB_80493B0.i:                                     ; preds = %BB_8049351.i, %BB_804936B.i
  %r_ecx.7.lcssa = phi i32 [ %r_ecx.0.lcssa, %BB_8049351.i ], [ %118, %BB_804936B.i ]
  %tmp2_v.i301.i = add i32 %tmp0_v.i187.i, -88
  %113 = inttoptr i32 %tmp2_v.i301.i to i32*
  store i32 0, i32* %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %BB_80493B9.i.lr.ph, label %BB_8049408.i

BB_80493B9.i.lr.ph:                               ; preds = %BB_80493B0.i
  %tmp2_v.i36.i = add i32 %tmp0_v.i187.i, -84
  %116 = inttoptr i32 %tmp2_v.i36.i to i32*
  br label %BB_80493B9.i

BB_804936B.i:                                     ; preds = %BB_804936B.i.lr.ph, %BB_804936B.i
  %storemerge1275 = phi i32 [ 0, %BB_804936B.i.lr.ph ], [ %tmp0_v2.i309.i, %BB_804936B.i ]
  %117 = load i32, i32* %9, align 16
  %tmp4_v.i334.i = shl i32 %117, 2
  %tmp4_v3.i337.i = shl i32 %storemerge1275, 2
  %118 = load i32, i32* %14, align 8
  %tmp0_v6.i340.i = add i32 %118, %tmp4_v3.i337.i
  %119 = inttoptr i32 %tmp0_v6.i340.i to i32*
  %120 = load i32, i32* %119, align 4
  store i32 %tmp4_v.i334.i, i32* %155, align 4
  store i32 %120, i32* %.pre-phi, align 4
  store i32 134517663, i32* %.pre-phi97, align 4
  %arg.i.i52 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i = load i32, i32* %155, align 4
  %121 = tail call i32 @realloc(i32 %arg.i.i52, i32 %arg2.i.i)
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %152, align 4
  %tmp0_v2.i309.i = add i32 %122, 1
  store i32 %tmp0_v2.i309.i, i32* %152, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %tmp0_v2.i309.i, %123
  br i1 %124, label %BB_804936B.i, label %BB_80493B0.i

BB_8049294.i:                                     ; preds = %BB_8049264.i, %0
  %.pn.pn.lcssa = phi { i32, i32 } [ %mrv.i42, %0 ], [ %.pn, %BB_8049264.i ]
  %r_ecx.2.lcssa = phi i32 [ %tmp2_v.i186.i, %0 ], [ %tmp4_v.i235.i, %BB_8049264.i ]
  %r_esp.2.in.le = extractvalue { i32, i32 } %.pn.pn.lcssa, 0
  %tmp2_v.i362.i = add i32 %tmp0_v.i187.i, -108
  %125 = inttoptr i32 %tmp2_v.i362.i to i32*
  store i32 0, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %BB_804929D.i.lr.ph, label %BB_80492EC.i

BB_804929D.i.lr.ph:                               ; preds = %BB_8049294.i
  %tmp2_v.i251.i = add i32 %tmp0_v.i187.i, -104
  %128 = inttoptr i32 %tmp2_v.i251.i to i32*
  br label %BB_804929D.i

BB_804946D.i:                                     ; preds = %BB_8049454.i, %BB_8049408.i.BB_804946D.i_crit_edge
  %.pre-phi100 = phi i32* [ %.pre99, %BB_8049408.i.BB_804946D.i_crit_edge ], [ %104, %BB_8049454.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517879, i32* %.pre-phi97, align 4
  %arg.i.i55 = load i32, i32* %.pre-phi, align 4
  %129 = tail call i32 @putchar(i32 %arg.i.i55)  nounwind 
  %tmp2_v.i319.i = add i32 %tmp0_v.i187.i, -36
  %130 = inttoptr i32 %tmp2_v.i319.i to i32*
  store i32 3, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %tmp0_v5.i324.i = add i32 %131, 3
  store i32 %tmp0_v5.i324.i, i32* %10, align 4
  %tmp0_v8.i327.i = shl i32 %tmp0_v5.i324.i, 2
  store i32 %tmp0_v8.i327.i, i32* %.pre-phi100, align 4
  %132 = load i32, i32* %14, align 8
  store i32 %132, i32* %.pre-phi, align 4
  store i32 134517913, i32* %.pre-phi97, align 4
  %arg.i.i56 = load i32, i32* %.pre-phi, align 4
  %arg2.i.i57 = load i32, i32* %.pre-phi100, align 4
  %133 = tail call i32 @realloc(i32 %arg.i.i56, i32 %arg2.i.i57)
  store i32 %133, i32* %14, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %130, align 4
  %tmp0_v4.i268.i = sub i32 %134, %135
  %tmp2_v5.i269.i = add i32 %tmp0_v.i187.i, -72
  %136 = inttoptr i32 %tmp2_v5.i269.i to i32*
  store i32 %tmp0_v4.i268.i, i32* %136, align 8
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %tmp0_v4.i268.i, %137
  br i1 %138, label %BB_80494AA.i, label %BB_80494DA.i

BB_8049454.i:                                     ; preds = %BB_8049411.i, %BB_804941A.i
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517854, i32* %.pre-phi97, align 4
  %arg.i.i60 = load i32, i32* %.pre-phi, align 4
  %139 = tail call i32 @putchar(i32 %arg.i.i60)  nounwind 
  %140 = load i32, i32* %100, align 16
  %tmp0_v2.i501.i = add i32 %140, 1
  store i32 %tmp0_v2.i501.i, i32* %100, align 16
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %tmp0_v2.i501.i, %141
  br i1 %142, label %BB_8049411.i, label %BB_804946D.i

BB_8049532.i:                                     ; preds = %BB_8049526.i, %BB_80494DA.i
  %r_ecx.3.lcssa = phi i32 [ %r_ecx.4.lcssa, %BB_80494DA.i ], [ %r_ecx.6.lcssa, %BB_8049526.i ]
  %tmp2_v.i372.i = add i32 %tmp0_v.i187.i, -60
  %143 = inttoptr i32 %tmp2_v.i372.i to i32*
  store i32 0, i32* %143, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %BB_804953B.i.lr.ph, label %BB_8049532.i.BB_8049597.i_crit_edge

BB_8049532.i.BB_8049597.i_crit_edge:              ; preds = %BB_8049532.i
  %.pre101 = inttoptr i32 %r_esp.4.in.le.pre-phi to i32*
  %.pre103 = add i32 %r_esp.4.in.le.pre-phi, -4
  %.pre104 = inttoptr i32 %.pre103 to i32*
  br label %BB_8049597.i

BB_804953B.i.lr.ph:                               ; preds = %BB_8049532.i
  %tmp2_v.i10.i = add i32 %tmp0_v.i187.i, -56
  %146 = inttoptr i32 %tmp2_v.i10.i to i32*
  %tmp2_v11.i30.i = add i32 %r_esp.4.in.le.pre-phi, 4
  %147 = inttoptr i32 %tmp2_v11.i30.i to i32*
  %148 = inttoptr i32 %r_esp.4.in.le.pre-phi to i32*
  %tmp2_v14.i34.i = add i32 %r_esp.4.in.le.pre-phi, -4
  %149 = inttoptr i32 %tmp2_v14.i34.i to i32*
  br label %BB_804953B.i

BB_8049351.i:                                     ; preds = %BB_8049338.i, %BB_80492EC.i.BB_8049351.i_crit_edge
  %.pre-phi97 = phi i32* [ %.pre96, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %52, %BB_8049338.i ]
  %.pre-phi = phi i32* [ %.pre94, %BB_80492EC.i.BB_8049351.i_crit_edge ], [ %51, %BB_8049338.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517595, i32* %.pre-phi97, align 4
  %arg.i.i61 = load i32, i32* %.pre-phi, align 4
  %150 = tail call i32 @putchar(i32 %arg.i.i61)  nounwind 
  %151 = load i32, i32* %9, align 16
  %tmp0_v2.i535.i = add i32 %151, 3
  store i32 %tmp0_v2.i535.i, i32* %9, align 16
  %tmp2_v3.i536.i = add i32 %tmp0_v.i187.i, -92
  %152 = inttoptr i32 %tmp2_v3.i536.i to i32*
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %BB_804936B.i.lr.ph, label %BB_80493B0.i

BB_804936B.i.lr.ph:                               ; preds = %BB_8049351.i
  %tmp2_v15.i.i = add i32 %r_esp.2.in.le, 4
  %155 = inttoptr i32 %tmp2_v15.i.i to i32*
  br label %BB_804936B.i

BB_80493C2.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %storemerge2277 = phi i32 [ %tmp0_v19.i.i, %BB_80493C2.i ], [ 0, %BB_80493B9.i ]
  %156 = load i32, i32* %113, align 8
  %tmp0_v3.i382.i = mul i32 %156, 10
  %tmp4_v.i385.i = shl i32 %156, 2
  %157 = load i32, i32* %14, align 8
  %tmp0_v8.i388.i = add i32 %157, %tmp4_v.i385.i
  %158 = inttoptr i32 %tmp0_v8.i388.i to i32*
  %159 = load i32, i32* %158, align 4
  %tmp0_v12.i391.i = shl i32 %storemerge2277, 2
  %tmp0_v13.i392.i = add i32 %159, %tmp0_v12.i391.i
  %tmp0_v16.i.i = add i32 %tmp0_v3.i382.i, %storemerge2277
  %160 = inttoptr i32 %tmp0_v13.i392.i to i32*
  store i32 %tmp0_v16.i.i, i32* %160, align 4
  %161 = load i32, i32* %116, align 4
  %tmp0_v19.i.i = add i32 %161, 1
  store i32 %tmp0_v19.i.i, i32* %116, align 4
  %162 = load i32, i32* %9, align 16
  %163 = icmp slt i32 %tmp0_v19.i.i, %162
  br i1 %163, label %BB_80493C2.i, label %BB_80493FC.i

BB_80492A6.i:                                     ; preds = %BB_80492A6.i, %BB_804929D.i
  %storemerge2570 = phi i32 [ %tmp0_v19.i420.i, %BB_80492A6.i ], [ 0, %BB_804929D.i ]
  %164 = load i32, i32* %125, align 4
  %tmp0_v3.i403.i = mul i32 %164, 10
  %tmp4_v.i406.i = shl i32 %164, 2
  %165 = load i32, i32* %14, align 8
  %tmp0_v8.i409.i = add i32 %165, %tmp4_v.i406.i
  %166 = inttoptr i32 %tmp0_v8.i409.i to i32*
  %167 = load i32, i32* %166, align 4
  %tmp0_v12.i413.i = shl i32 %storemerge2570, 2
  %tmp0_v13.i414.i = add i32 %167, %tmp0_v12.i413.i
  %tmp0_v16.i417.i = add i32 %tmp0_v3.i403.i, %storemerge2570
  %168 = inttoptr i32 %tmp0_v13.i414.i to i32*
  store i32 %tmp0_v16.i417.i, i32* %168, align 4
  %169 = load i32, i32* %128, align 8
  %tmp0_v19.i420.i = add i32 %169, 1
  store i32 %tmp0_v19.i420.i, i32* %128, align 8
  %170 = load i32, i32* %9, align 16
  %171 = icmp slt i32 %tmp0_v19.i420.i, %170
  br i1 %171, label %BB_80492A6.i, label %BB_80492E0.i

BB_80492F5.i:                                     ; preds = %BB_8049338.i, %BB_80492F5.i.lr.ph
  store i32 0, i32* %49, align 16
  %172 = load i32, i32* %9, align 16
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %BB_80492FE.i, label %BB_8049338.i

BB_80494EC.i:                                     ; preds = %BB_80494EC.i, %BB_80494E3.i
  %storemerge1888 = phi i32 [ %tmp0_v19.i489.i, %BB_80494EC.i ], [ 0, %BB_80494E3.i ]
  %174 = load i32, i32* %85, align 4
  %tmp0_v3.i472.i = mul i32 %174, 10
  %tmp4_v.i475.i = shl i32 %174, 2
  %175 = load i32, i32* %14, align 8
  %tmp0_v8.i478.i = add i32 %175, %tmp4_v.i475.i
  %176 = inttoptr i32 %tmp0_v8.i478.i to i32*
  %177 = load i32, i32* %176, align 4
  %tmp0_v12.i482.i = shl i32 %storemerge1888, 2
  %tmp0_v13.i483.i = add i32 %177, %tmp0_v12.i482.i
  %tmp0_v16.i486.i = add i32 %tmp0_v3.i472.i, %storemerge1888
  %178 = inttoptr i32 %tmp0_v13.i483.i to i32*
  store i32 %tmp0_v16.i486.i, i32* %178, align 4
  %179 = load i32, i32* %88, align 16
  %tmp0_v19.i489.i = add i32 %179, 1
  store i32 %tmp0_v19.i489.i, i32* %88, align 16
  %180 = load i32, i32* %9, align 16
  %181 = icmp slt i32 %tmp0_v19.i489.i, %180
  br i1 %181, label %BB_80494EC.i, label %BB_8049526.i

BB_8049526.i:                                     ; preds = %BB_80494EC.i, %BB_80494E3.i
  %r_ecx.6.lcssa = phi i32 [ %r_ecx.390, %BB_80494E3.i ], [ %tmp0_v3.i472.i, %BB_80494EC.i ]
  %182 = load i32, i32* %85, align 4
  %tmp0_v1.i523.i = add i32 %182, 1
  store i32 %tmp0_v1.i523.i, i32* %85, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %tmp0_v1.i523.i, %183
  br i1 %184, label %BB_80494E3.i, label %BB_8049532.i

BB_80493FC.i:                                     ; preds = %BB_80493C2.i, %BB_80493B9.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.579, %BB_80493B9.i ], [ %tmp0_v3.i382.i, %BB_80493C2.i ]
  %185 = load i32, i32* %113, align 8
  %tmp0_v1.i540.i = add i32 %185, 1
  store i32 %tmp0_v1.i540.i, i32* %113, align 8
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %tmp0_v1.i540.i, %186
  br i1 %187, label %BB_80493B9.i, label %BB_8049408.i

.exit:                                            ; preds = %BB_80495AD.i, %BB_8049597.i
  %188 = load i32, i32* %14, align 8
  store i32 %188, i32* %.pre-phi102, align 4
  store i32 134518241, i32* %.pre-phi105, align 4
  %arg.i.i62 = load i32, i32* %.pre-phi102, align 4
  tail call void @free(i32 %arg.i.i62)
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

  tail call fastcc void @increase_size_dynamic_2d_array503 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack502, i32 0, i32 8092) to i32)) nounwind
