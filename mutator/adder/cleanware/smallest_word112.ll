; Mutation 112
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack111 = internal global [8092 x i32] zeroinitializer, align 16
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
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @smallest_word112(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i19.i = add i32 %arg_esp, 4
  %tmp0_v.i20.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i20.i, -4
  %2 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i20.i, -8
  %3 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i24.i = add i32 %tmp0_v.i20.i, -12
  %4 = inttoptr i32 %tmp2_v5.i24.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i26.i = add i32 %tmp0_v.i20.i, -16
  %5 = inttoptr i32 %tmp2_v6.i26.i to i32*
  store i32 %tmp2_v.i19.i, i32* %5, align 16
  %tmp2_v8.i27.i = add i32 %tmp0_v.i20.i, -68
  %6 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i9.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i13.i = add i32 %tmp0_v.i20.i, -20
  %9 = inttoptr i32 %tmp2_v2.i13.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i20.i, -46
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i14.i = add i32 %tmp0_v.i20.i, -42
  %11 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 539779360, i32* %11, align 4
  %tmp2_v5.i15.i = add i32 %tmp0_v.i20.i, -38
  %12 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i20.i, -34
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 779706743, i32* %13, align 4
  %tmp2_v7.i16.i = add i32 %tmp0_v.i20.i, -30
  %14 = inttoptr i32 %tmp2_v7.i16.i to i32*
  store i32 1634156832, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i20.i, -26
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 774794857, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i20.i, -22
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 46, i16* %16, align 2
  %tmp2_v12.i.i = add i32 %tmp0_v.i20.i, -80
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %17, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i20.i, -84
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517342, i32* %18, align 4
  %tmp2_v.i100.i.i = add i32 %tmp0_v.i20.i, -88
  %19 = inttoptr i32 %tmp2_v.i100.i.i to i32*
  store i32 %tmp2_v4.i22.i, i32* %19, align 8
  %tmp2_v1.i102.i.i = add i32 %tmp0_v.i20.i, -92
  %20 = inttoptr i32 %tmp2_v1.i102.i.i to i32*
  store i32 134529024, i32* %20, align 4
  %tmp2_v2.i105.i.i = add i32 %tmp0_v.i20.i, -148
  %21 = inttoptr i32 %tmp2_v2.i105.i.i to i32*
  store i32 134517417, i32* %21, align 4
  %22 = load i32, i32* %17, align 16
  %tmp2_v2.i55.i.i = add i32 %tmp0_v.i20.i, -132
  %23 = inttoptr i32 %tmp2_v2.i55.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %tmp2_v5.i59.i.i = add i32 %tmp0_v.i20.i, -100
  %25 = inttoptr i32 %tmp2_v5.i59.i.i to i32*
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %23, align 4
  %tmp2_v9.i63.i.i = add i32 %tmp0_v.i20.i, -160
  %27 = inttoptr i32 %tmp2_v9.i63.i.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v10.i64.i.i = add i32 %tmp0_v.i20.i, -164
  %28 = inttoptr i32 %tmp2_v10.i64.i.i to i32*
  store i32 134517451, i32* %28, align 4
  %arg.i.i.i = load i32, i32* %27, align 16
  %29 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i86.i.i = add i32 %tmp0_v.i20.i, -112
  %30 = inttoptr i32 %tmp2_v.i86.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v1.i88.i.i = add i32 %tmp0_v.i20.i, -124
  %31 = inttoptr i32 %tmp2_v1.i88.i.i to i32*
  store i32 0, i32* %31, align 4
  %tmp2_v2.i89.i.i = add i32 %tmp0_v.i20.i, -120
  %32 = inttoptr i32 %tmp2_v2.i89.i.i to i32*
  store i32 100000, i32* %32, align 8
  %tmp2_v3.i90.i.i = add i32 %tmp0_v.i20.i, -107
  %33 = inttoptr i32 %tmp2_v3.i90.i.i to i32*
  store i32 992751136, i32* %33, align 4
  %tmp2_v4.i91.i.i = add i32 %tmp0_v.i20.i, -103
  %34 = inttoptr i32 %tmp2_v4.i91.i.i to i16*
  store i16 2569, i16* %34, align 2
  %tmp2_v5.i92.i.i = add i32 %tmp0_v.i20.i, -101
  %35 = inttoptr i32 %tmp2_v5.i92.i.i to i8*
  store i8 0, i8* %35, align 1
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i20.i, -116
  %36 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %30, align 16
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %BB_804932C.i.preheader.lr.ph.i, label %Func_smallest_word.exit

BB_804932C.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i20.i, -156
  %39 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  br label %BB_804932C.i.preheader.i

BB_8049347.i.i:                                   ; preds = %BB_804936B.i.i, %BB_804936F.i.preheader.i
  %40 = phi i32 [ %tmp0_v1.i77.i.i, %BB_804936B.i.i ], [ %60, %BB_804936F.i.preheader.i ]
  %41 = load i32, i32* %23, align 4
  %tmp0_v3.i6.i.i = add i32 %41, %40
  %42 = inttoptr i32 %tmp0_v3.i6.i.i to i8*
  %43 = load i8, i8* %42, align 1
  %tmp0_v5.i8.i.i = sext i8 %43 to i32
  store i32 %tmp0_v5.i8.i.i, i32* %39, align 4
  store i32 %tmp2_v3.i90.i.i, i32* %27, align 16
  store i32 134517602, i32* %28, align 4
  %arg.i.i6.i = load i32, i32* %27, align 16
  %arg2.i.i.i = load i32, i32* %39, align 4
  %44 = tail call i32 @strchr(i32 %arg.i.i6.i, i32 %arg2.i.i.i)
  %.not.i109.i.i = icmp eq i32 %44, 0
  %.pre.pre.i = load i32, i32* %36, align 4
  br i1 %.not.i109.i.i, label %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i, label %BB_804936B.i.i

BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_8049347.i.i
  %.pre23.pre.i = load i32, i32* %30, align 16
  br label %BB_8049377.i.loopexit.i

BB_8049377.i.loopexit.i:                          ; preds = %BB_804936B.i.i, %BB_804936F.i.preheader.i, %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i
  %45 = phi i32 [ %61, %BB_804936F.i.preheader.i ], [ %.pre23.pre.i, %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i ], [ %63, %BB_804936B.i.i ]
  %46 = phi i32 [ %60, %BB_804936F.i.preheader.i ], [ %.pre.pre.i, %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i77.i.i, %BB_804936B.i.i ]
  %r_edx.1.ph.i = phi i32 [ %.lcssa.i, %BB_804936F.i.preheader.i ], [ %40, %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i ], [ %40, %BB_804936B.i.i ]
  %47 = icmp slt i32 %46, %45
  br i1 %47, label %BB_804932C.i.preheader.i, label %Func_smallest_word.exit

BB_804932C.i.preheader.i:                         ; preds = %BB_8049377.i.loopexit.i, %BB_804932C.i.preheader.lr.ph.i
  store i32 0, i32* %31, align 4
  %48 = load i32, i32* %36, align 4
  %49 = load i32, i32* %23, align 4
  %tmp0_v3.i.i13.i = add i32 %49, %48
  %50 = inttoptr i32 %tmp0_v3.i.i13.i to i8*
  %51 = load i8, i8* %50, align 1
  %tmp0_v5.i.i14.i = sext i8 %51 to i32
  store i32 %tmp0_v5.i.i14.i, i32* %39, align 4
  store i32 %tmp2_v3.i90.i.i, i32* %27, align 16
  store i32 134517533, i32* %28, align 4
  %arg.i.i915.i = load i32, i32* %27, align 16
  %arg2.i.i1016.i = load i32, i32* %39, align 4
  %52 = tail call i32 @strchr(i32 %arg.i.i915.i, i32 %arg2.i.i1016.i)
  %.not.i.i17.i = icmp eq i32 %52, 0
  br i1 %.not.i.i17.i, label %BB_8049324.i.i, label %BB_8049336.i.i

BB_8049324.i.i:                                   ; preds = %BB_8049324.i.i, %BB_804932C.i.preheader.i
  %53 = load i32, i32* %36, align 4
  %tmp0_v1.i.i.i = add i32 %53, 1
  store i32 %tmp0_v1.i.i.i, i32* %36, align 4
  %54 = load i32, i32* %31, align 4
  %tmp0_v4.i45.i.i = add i32 %54, 1
  store i32 %tmp0_v4.i45.i.i, i32* %31, align 4
  %55 = load i32, i32* %36, align 4
  %56 = load i32, i32* %23, align 4
  %tmp0_v3.i.i.i = add i32 %56, %55
  %57 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %58 = load i8, i8* %57, align 1
  %tmp0_v5.i.i.i = sext i8 %58 to i32
  store i32 %tmp0_v5.i.i.i, i32* %39, align 4
  store i32 %tmp2_v3.i90.i.i, i32* %27, align 16
  store i32 134517533, i32* %28, align 4
  %arg.i.i9.i = load i32, i32* %27, align 16
  %arg2.i.i10.i = load i32, i32* %39, align 4
  %59 = tail call i32 @strchr(i32 %arg.i.i9.i, i32 %arg2.i.i10.i)
  %.not.i.i.i = icmp eq i32 %59, 0
  br i1 %.not.i.i.i, label %BB_8049324.i.i, label %BB_8049336.i.i

BB_804933F.i.i:                                   ; preds = %BB_8049336.i.i
  store i32 %65, i32* %32, align 8
  br label %BB_804936F.i.preheader.i

BB_804936F.i.preheader.i:                         ; preds = %BB_8049336.i.i, %BB_804933F.i.i
  %60 = load i32, i32* %36, align 4
  %61 = load i32, i32* %30, align 16
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %BB_8049347.i.i, label %BB_8049377.i.loopexit.i

BB_804936B.i.i:                                   ; preds = %BB_8049347.i.i
  %tmp0_v1.i77.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i77.i.i, i32* %36, align 4
  %63 = load i32, i32* %30, align 16
  %64 = icmp slt i32 %tmp0_v1.i77.i.i, %63
  br i1 %64, label %BB_8049347.i.i, label %BB_8049377.i.loopexit.i

BB_8049336.i.i:                                   ; preds = %BB_8049324.i.i, %BB_804932C.i.preheader.i
  %.lcssa.i = phi i32 [ %48, %BB_804932C.i.preheader.i ], [ %55, %BB_8049324.i.i ]
  %65 = load i32, i32* %31, align 4
  %66 = load i32, i32* %32, align 8
  %.not.i117.i.i = icmp slt i32 %65, %66
  br i1 %.not.i117.i.i, label %BB_804933F.i.i, label %BB_804936F.i.preheader.i

Func_smallest_word.exit:                          ; preds = %BB_8049377.i.loopexit.i, %.exit
  %r_edx.1.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.1.ph.i, %BB_8049377.i.loopexit.i ]
  %67 = load i32, i32* %32, align 8
  %68 = load i32, i32* %25, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %69 = inttoptr i32 %arg_esp to i32*
  %70 = load i32, i32* %69, align 4
  %tmp0_v4.i39.i.i = xor i32 %70, %68
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %19, align 8
  %tmp2_v.i.i = add i32 %72, -44
  %73 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %67, i32* %73, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i20.i, -76
  %74 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %67, i32* %74, align 4
  %tmp2_v5.i.i = add i32 %71, -8184
  store i32 %tmp2_v5.i.i, i32* %17, align 16
  store i32 134517366, i32* %18, align 4
  %75 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v4.i39.i.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @smallest_word112 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack111, i32 0, i32 8092) to i32)) nounwind