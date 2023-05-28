; Mutation 269
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack268 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.267 = constant [7 x i8] c"\25\63\3a\25\64\0a\00"

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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @max_occur_char269(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i9.i = add i32 %tmp0_v.i8.i, -4
  %2 = inttoptr i32 %tmp2_v3.i9.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i10.i = add i32 %tmp0_v.i8.i, -8
  %3 = inttoptr i32 %tmp2_v4.i10.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i12.i = add i32 %tmp0_v.i8.i, -12
  %4 = inttoptr i32 %tmp2_v5.i12.i to i32*
  store i32 %tmp2_v.i7.i, i32* %4, align 4
  %tmp2_v7.i13.i = add i32 %tmp0_v.i8.i, -52
  %5 = inttoptr i32 %tmp2_v7.i13.i to i32*
  store i32 134517264, i32* %5, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i5.i = add i32 %tmp0_v.i8.i, -20
  %8 = inttoptr i32 %tmp2_v2.i5.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i8.i, -48
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1684234849, i32* %9, align 16
  %tmp2_v4.i.i = add i32 %tmp0_v.i8.i, -44
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1751606885, i32* %10, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i8.i, -40
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1684234849, i32* %11, align 8
  %tmp2_v6.i.i = add i32 %tmp0_v.i8.i, -36
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1751606885, i32* %12, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i8.i, -32
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1667457633, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i8.i, -28
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1701077859, i32* %14, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i8.i, -24
  %15 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6842214, i32* %15, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i8.i, -64
  %16 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %16, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i8.i, -68
  %17 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517341, i32* %17, align 4
  %tmp2_v.i16.i.i = add i32 %tmp0_v.i8.i, -72
  %18 = inttoptr i32 %tmp2_v.i16.i.i to i32*
  store i32 %tmp2_v4.i10.i, i32* %18, align 8
  %tmp2_v1.i18.i.i = add i32 %tmp0_v.i8.i, -76
  %19 = inttoptr i32 %tmp2_v1.i18.i.i to i32*
  store i32 0, i32* %19, align 4
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i8.i, -80
  %20 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  store i32 0, i32* %20, align 16
  %tmp2_v3.i21.i.i = add i32 %tmp0_v.i8.i, -148
  %21 = inttoptr i32 %tmp2_v3.i21.i.i to i32*
  store i32 134517391, i32* %21, align 4
  %tmp4_v.i.i.i.i = add i32 %tmp0_v.i8.i, -144
  %22 = load i32, i32* %16, align 16
  %tmp2_v2.i156.i.i = add i32 %tmp0_v.i8.i, -132
  %23 = inttoptr i32 %tmp2_v2.i156.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %tmp2_v5.i160.i.i = add i32 %tmp0_v.i8.i, -84
  %25 = inttoptr i32 %tmp2_v5.i160.i.i to i32*
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %23, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i8.i, -160
  %27 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v10.i165.i.i = add i32 %tmp0_v.i8.i, -164
  %28 = inttoptr i32 %tmp2_v10.i165.i.i to i32*
  store i32 134517429, i32* %28, align 4
  %arg.i.i.i = load i32, i32* %27, align 16
  %29 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i169.i.i = add i32 %tmp0_v.i8.i, -96
  %30 = inttoptr i32 %tmp2_v.i169.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v3.i173.i.i = add i32 %29, -1
  %tmp2_v4.i174.i.i = add i32 %tmp0_v.i8.i, -92
  %31 = inttoptr i32 %tmp2_v4.i174.i.i to i32*
  store i32 %tmp2_v3.i173.i.i, i32* %31, align 4
  %tmp0_v5.i175.i.i = add i32 %29, 15
  %tmp0_v9.i176.i.i = and i32 %tmp0_v5.i175.i.i, -4096
  %tmp0_v11.i177.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v9.i176.i.i
  %tmp0_v.i105.i.i = and i32 %tmp0_v5.i175.i.i, 4080
  %tmp0_v1.i107.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v.i105.i.i
  %tmp2_v.i121.i.i = add i32 %tmp0_v.i8.i, -88
  %32 = inttoptr i32 %tmp2_v.i121.i.i to i32*
  store i32 %tmp0_v1.i107.i.i, i32* %32, align 8
  %tmp2_v4.i122.i.i = add i32 %tmp0_v.i8.i, -116
  %33 = inttoptr i32 %tmp2_v4.i122.i.i to i32*
  store i32 0, i32* %33, align 4
  %tmp2_v5.i123.i.i = add i32 %tmp0_v.i8.i, -112
  %34 = inttoptr i32 %tmp2_v5.i123.i.i to i32*
  store i32 0, i32* %34, align 16
  %35 = load i32, i32* %30, align 16
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %BB_804933F.i.lr.ph.i, label %helper_divl_EAX.exit.i.Func_804941E.exit.i_crit_edge.i

helper_divl_EAX.exit.i.Func_804941E.exit.i_crit_edge.i: ; preds = %.exit
  %.pre20.i = add i32 %tmp0_v.i8.i, -122
  %.pre21.i = inttoptr i32 %.pre20.i to i8*
  %.pre22.i = add i32 %tmp0_v.i8.i, -120
  %.pre23.i = inttoptr i32 %.pre22.i to i32*
  br label %Func_print_max_char.exit

BB_804933F.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i47.i.i = add i32 %tmp0_v.i8.i, -121
  %37 = inttoptr i32 %tmp2_v.i47.i.i to i8*
  %tmp2_v1.i48.i.i = add i32 %tmp0_v.i8.i, -108
  %38 = inttoptr i32 %tmp2_v1.i48.i.i to i32*
  %tmp2_v.i103.i.i = add i32 %tmp0_v.i8.i, -104
  %39 = inttoptr i32 %tmp2_v.i103.i.i to i32*
  %tmp2_v1.i104.i.i = add i32 %tmp0_v.i8.i, -100
  %40 = inttoptr i32 %tmp2_v1.i104.i.i to i32*
  %tmp2_v1.i52.i.i = add i32 %tmp0_v.i8.i, -120
  %41 = inttoptr i32 %tmp2_v1.i52.i.i to i32*
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i8.i, -122
  %42 = inttoptr i32 %tmp2_v8.i.i.i to i8*
  br label %BB_804933F.i.i

BB_8049366.i.i:                                   ; preds = %BB_804934C.i.i
  store i8 1, i8* %37, align 1
  %.pre.i = load i32, i32* %38, align 4
  br label %BB_804936A.i.i

BB_8049376.i.i:                                   ; preds = %BB_804936A.i.i, %BB_804933F.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.015.i, %BB_804933F.i.i ], [ %82, %BB_804936A.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %r_edx.016.i, %BB_804933F.i.i ], [ %tmp0_v4.i223.i.i, %BB_804936A.i.i ]
  %43 = load i8, i8* %37, align 1
  %.not.i.i.i = icmp eq i8 %43, 0
  br i1 %.not.i.i.i, label %BB_8049380.i.i, label %BB_804940E.i.i

BB_80493BA.i.i:                                   ; preds = %BB_80493AE.i.i, %BB_8049380.i.i
  %44 = load i32, i32* %34, align 16
  %45 = load i32, i32* %23, align 4
  %tmp0_v3.i27.i.i = add i32 %45, %44
  %46 = inttoptr i32 %tmp0_v3.i27.i.i to i8*
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %32, align 8
  %49 = load i32, i32* %33, align 4
  %tmp0_v9.i.i.i = add i32 %49, %48
  %50 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  store i8 %47, i8* %50, align 1
  %51 = load i32, i32* %33, align 4
  %tmp0_v12.i.i.i = add i32 %51, 1
  store i32 %tmp0_v12.i.i.i, i32* %33, align 4
  %.not.i32.i.i = icmp eq i32 %51, 0
  %52 = load i32, i32* %39, align 8
  br i1 %.not.i32.i.i, label %BB_804940E.i.sink.split.i, label %BB_80493EF.i.i

BB_80493AA.i.i:                                   ; preds = %BB_8049390.i.i
  %53 = load i32, i32* %39, align 8
  %tmp0_v1.i.i.i = add i32 %53, 1
  store i32 %tmp0_v1.i.i.i, i32* %39, align 8
  %.pre19.i = load i32, i32* %40, align 4
  br label %BB_80493AE.i.i

BB_804933F.i.i:                                   ; preds = %BB_804940E.i.i, %BB_804933F.i.lr.ph.i
  %r_edx.016.i = phi i32 [ %tmp0_v.i105.i.i, %BB_804933F.i.lr.ph.i ], [ %r_edx.2.i, %BB_804940E.i.i ]
  %r_ecx.015.i = phi i32 [ %tmp0_v11.i177.i.i, %BB_804933F.i.lr.ph.i ], [ %r_ecx.2.i, %BB_804940E.i.i ]
  store i8 0, i8* %37, align 1
  store i32 0, i32* %38, align 4
  %54 = load i32, i32* %33, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %BB_804934C.i.i, label %BB_8049376.i.i

BB_80493EF.i.i:                                   ; preds = %BB_80493BA.i.i
  %56 = load i32, i32* %41, align 8
  %.not.i55.i.i = icmp sgt i32 %52, %56
  br i1 %.not.i55.i.i, label %BB_804940E.i.sink.split.i, label %BB_804940E.i.i

BB_8049380.i.i:                                   ; preds = %BB_8049376.i.i
  store i32 0, i32* %39, align 8
  store i32 0, i32* %40, align 4
  %57 = load i32, i32* %30, align 16
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %BB_8049390.i.i, label %BB_80493BA.i.i

BB_804936A.i.i:                                   ; preds = %BB_804934C.i.i, %BB_8049366.i.i
  %59 = phi i32 [ %storemerge112.i, %BB_804934C.i.i ], [ %.pre.i, %BB_8049366.i.i ]
  %tmp0_v1.i127.i.i = add i32 %59, 1
  store i32 %tmp0_v1.i127.i.i, i32* %38, align 4
  %60 = load i32, i32* %33, align 4
  %61 = icmp slt i32 %tmp0_v1.i127.i.i, %60
  br i1 %61, label %BB_804934C.i.i, label %BB_8049376.i.i

BB_804940E.i.sink.split.i:                        ; preds = %BB_80493EF.i.i, %BB_80493BA.i.i
  store i32 %52, i32* %41, align 8
  %62 = load i32, i32* %34, align 16
  %63 = load i32, i32* %23, align 4
  %tmp0_v6.i99.i.i = add i32 %63, %62
  %64 = inttoptr i32 %tmp0_v6.i99.i.i to i8*
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %42, align 2
  br label %BB_804940E.i.i

BB_804940E.i.i:                                   ; preds = %BB_804940E.i.sink.split.i, %BB_80493EF.i.i, %BB_8049376.i.i
  %r_ecx.2.i = phi i32 [ %48, %BB_80493EF.i.i ], [ %r_ecx.1.lcssa.i, %BB_8049376.i.i ], [ %48, %BB_804940E.i.sink.split.i ]
  %r_edx.2.i = phi i32 [ %tmp0_v9.i.i.i, %BB_80493EF.i.i ], [ %r_edx.1.lcssa.i, %BB_8049376.i.i ], [ %62, %BB_804940E.i.sink.split.i ]
  %66 = load i32, i32* %34, align 16
  %tmp0_v1.i144.i.i = add i32 %66, 1
  store i32 %tmp0_v1.i144.i.i, i32* %34, align 16
  %67 = load i32, i32* %30, align 16
  %68 = icmp slt i32 %tmp0_v1.i144.i.i, %67
  br i1 %68, label %BB_804933F.i.i, label %Func_print_max_char.exit

BB_80493AE.i.i:                                   ; preds = %BB_8049390.i.i, %BB_80493AA.i.i
  %69 = phi i32 [ %storemerge214.i, %BB_8049390.i.i ], [ %.pre19.i, %BB_80493AA.i.i ]
  %tmp0_v1.i194.i.i = add i32 %69, 1
  store i32 %tmp0_v1.i194.i.i, i32* %40, align 4
  %70 = load i32, i32* %30, align 16
  %71 = icmp slt i32 %tmp0_v1.i194.i.i, %70
  br i1 %71, label %BB_8049390.i.i, label %BB_80493BA.i.i

BB_8049390.i.i:                                   ; preds = %BB_80493AE.i.i, %BB_8049380.i.i
  %storemerge214.i = phi i32 [ %tmp0_v1.i194.i.i, %BB_80493AE.i.i ], [ 0, %BB_8049380.i.i ]
  %72 = load i32, i32* %34, align 16
  %73 = load i32, i32* %23, align 4
  %tmp0_v3.i206.i.i = add i32 %73, %72
  %74 = inttoptr i32 %tmp0_v3.i206.i.i to i8*
  %75 = load i8, i8* %74, align 1
  %tmp0_v4.i207.i.i = zext i8 %75 to i32
  %tmp0_v9.i212.i.i = add i32 %73, %storemerge214.i
  %76 = inttoptr i32 %tmp0_v9.i212.i.i to i8*
  %77 = load i8, i8* %76, align 1
  %tmp0_v10.i.i.i = zext i8 %77 to i32
  %cc_dst_v.i213.i.i = sub nsw i32 %tmp0_v4.i207.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i214.i.i = and i32 %cc_dst_v.i213.i.i, 255
  %.not.i215.i.i = icmp eq i32 %tmp4_v.i214.i.i, 0
  br i1 %.not.i215.i.i, label %BB_80493AA.i.i, label %BB_80493AE.i.i

BB_804934C.i.i:                                   ; preds = %BB_804936A.i.i, %BB_804933F.i.i
  %storemerge112.i = phi i32 [ %tmp0_v1.i127.i.i, %BB_804936A.i.i ], [ 0, %BB_804933F.i.i ]
  %78 = load i32, i32* %34, align 16
  %79 = load i32, i32* %23, align 4
  %tmp0_v3.i222.i.i = add i32 %79, %78
  %80 = inttoptr i32 %tmp0_v3.i222.i.i to i8*
  %81 = load i8, i8* %80, align 1
  %tmp0_v4.i223.i.i = zext i8 %81 to i32
  %82 = load i32, i32* %32, align 8
  %tmp0_v9.i228.i.i = add i32 %82, %storemerge112.i
  %83 = inttoptr i32 %tmp0_v9.i228.i.i to i8*
  %84 = load i8, i8* %83, align 1
  %tmp0_v10.i229.i.i = zext i8 %84 to i32
  %cc_dst_v.i230.i.i = sub nsw i32 %tmp0_v4.i223.i.i, %tmp0_v10.i229.i.i
  %tmp4_v.i231.i.i = and i32 %cc_dst_v.i230.i.i, 255
  %.not.i232.i.i = icmp eq i32 %tmp4_v.i231.i.i, 0
  br i1 %.not.i232.i.i, label %BB_8049366.i.i, label %BB_804936A.i.i

Func_print_max_char.exit:                         ; preds = %BB_804940E.i.i, %helper_divl_EAX.exit.i.Func_804941E.exit.i_crit_edge.i
  %.pre-phi24.i = phi i32* [ %.pre23.i, %helper_divl_EAX.exit.i.Func_804941E.exit.i_crit_edge.i ], [ %41, %BB_804940E.i.i ]
  %.pre-phi.i = phi i8* [ %.pre21.i, %helper_divl_EAX.exit.i.Func_804941E.exit.i_crit_edge.i ], [ %42, %BB_804940E.i.i ]
  %r_ecx.0.lcssa.i = phi i32 [ %tmp0_v11.i177.i.i, %helper_divl_EAX.exit.i.Func_804941E.exit.i_crit_edge.i ], [ %r_ecx.2.i, %BB_804940E.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ %tmp0_v.i105.i.i, %helper_divl_EAX.exit.i.Func_804941E.exit.i_crit_edge.i ], [ %r_edx.2.i, %BB_804940E.i.i ]
  %85 = load i8, i8* %.pre-phi.i, align 1
  %tmp0_v.i73.i.i = sext i8 %85 to i32
  %86 = load i32, i32* %.pre-phi24.i, align 4
  %tmp2_v4.i78.i.i = add i32 %tmp0_v1.i107.i.i, -8
  %87 = inttoptr i32 %tmp2_v4.i78.i.i to i32*
  store i32 %86, i32* %87, align 8
  %tmp2_v5.i79.i.i = add i32 %tmp0_v1.i107.i.i, -12
  %88 = inttoptr i32 %tmp2_v5.i79.i.i to i32*
  store i32 %tmp0_v.i73.i.i, i32* %88, align 4
  %tmp2_v7.i81.i.i = add i32 %tmp0_v1.i107.i.i, -16
  %89 = inttoptr i32 %tmp2_v7.i81.i.i to i32*
  %spi.bis.267 = ptrtoint[7 x i8]* @str.bis.267 to i32
  store i32 %spi.bis.267, i32* %89, align 16
  %tmp2_v8.i82.i.i = add i32 %tmp0_v1.i107.i.i, -20
  %90 = inttoptr i32 %tmp2_v8.i82.i.i to i32*
  store i32 134517819, i32* %90, align 4
  %91 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v7.i81.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @max_occur_char269 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack268, i32 0, i32 8092) to i32)) nounwind
