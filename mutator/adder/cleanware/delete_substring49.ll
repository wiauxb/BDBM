; Mutation 49
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack48 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.46 = constant [5 x i8] c"the \00"
@str.47 = constant [12 x i8] c"Before: %s\0a\00"

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

; Function Attrs: norecurse
define internal fastcc void @delete_substring49(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i6.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i6.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i24.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i28.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i28.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i3.i, -50
  %10 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 1702125896, i32* %10, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i3.i, -46
  %11 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 1701344288, i32* %11, align 4
  %tmp2_v5.i31.i = add i32 %tmp0_v.i3.i, -42
  %12 = inttoptr i32 %tmp2_v5.i31.i to i32*
  store i32 1852404512, i32* %12, align 4
  %tmp2_v6.i32.i = add i32 %tmp0_v.i3.i, -38
  %13 = inttoptr i32 %tmp2_v6.i32.i to i32*
  store i32 1869357100, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -34
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1948280182, i32* %14, align 4
  %tmp2_v8.i33.i = add i32 %tmp0_v.i3.i, -30
  %15 = inttoptr i32 %tmp2_v8.i33.i to i32*
  store i32 1931502952, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -26
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1701736041, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -22
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 114, i16* %17, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i3.i, -76
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i29.i, i32* %18, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -80
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  %spi47 = ptrtoint[12 x i8]* @str.47 to i32
  store i32 %spi47, i32* %19, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i3.i, -84
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517356, i32* %20, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %spi46 = ptrtoint[5 x i8]* @str.46 to i32
  store i32 %spi46, i32* %18, align 4
  store i32 %tmp2_v3.i29.i, i32* %19, align 16
  store i32 134517378, i32* %20, align 4
  %tmp2_v.i40.i.i = add i32 %tmp0_v.i3.i, -88
  %22 = inttoptr i32 %tmp2_v.i40.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %22, align 8
  %tmp2_v1.i42.i.i = add i32 %tmp0_v.i3.i, -92
  %23 = inttoptr i32 %tmp2_v1.i42.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i44.i.i = add i32 %tmp0_v.i3.i, -116
  %24 = inttoptr i32 %tmp2_v2.i44.i.i to i32*
  store i32 134517451, i32* %24, align 4
  %tmp2_v.i70.i.i = add i32 %tmp0_v.i3.i, -112
  %25 = inttoptr i32 %tmp2_v.i70.i.i to i32*
  store i32 0, i32* %25, align 16
  %26 = load i32, i32* %19, align 16
  %tmp2_v4.i75.i.i = add i32 %tmp0_v.i3.i, -128
  %27 = inttoptr i32 %tmp2_v4.i75.i.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v5.i76.i.i = add i32 %tmp0_v.i3.i, -132
  %28 = inttoptr i32 %tmp2_v5.i76.i.i to i32*
  store i32 134517475, i32* %28, align 4
  %arg.i.i.i = load i32, i32* %27, align 16
  %29 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i3.i, -108
  %30 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %27, align 16
  store i32 134517492, i32* %28, align 4
  %arg.i.i33.i = load i32, i32* %27, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i33.i)
  %tmp2_v.i87.i.i = add i32 %tmp0_v.i3.i, -100
  %33 = inttoptr i32 %tmp2_v.i87.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 16
  %35 = load i32, i32* %30, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %BB_80492FC.i.lr.ph.i, label %Func_delete.exit

BB_80492FC.i.lr.ph.i:                             ; preds = %.exit
  %mrv.i31.i = insertvalue { i32, i32 } undef, i32 %tmp2_v4.i75.i.i, 0
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i3.i, -104
  %37 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  br label %BB_80492FC.i.i

BB_804931F.i.i:                                   ; preds = %BB_80492FC.i.i
  %38 = load i32, i32* %33, align 4
  %39 = load i32, i32* %30, align 4
  %tmp0_v3.i.i.i = sub i32 %39, %38
  store i32 %tmp0_v3.i.i.i, i32* %30, align 4
  %40 = load i32, i32* %25, align 16
  store i32 %40, i32* %37, align 8
  %41 = load i32, i32* %30, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %BB_804932D.i.i, label %BB_804935B.i.backedge.i

BB_8049357.i.i:                                   ; preds = %BB_80492FC.i.i
  %tmp0_v1.i.i.i = add i32 %61, 1
  store i32 %tmp0_v1.i.i.i, i32* %25, align 16
  %.pre.i = load i32, i32* %30, align 4
  br label %BB_804935B.i.backedge.i

BB_804935B.i.backedge.i:                          ; preds = %BB_804932D.i.i, %BB_8049357.i.i, %BB_804931F.i.i
  %43 = phi i32 [ %.pre.i, %BB_8049357.i.i ], [ %41, %BB_804931F.i.i ], [ %52, %BB_804932D.i.i ]
  %r_ecx.1.be.i = phi i32 [ %61, %BB_8049357.i.i ], [ %61, %BB_804931F.i.i ], [ %storemerge38.i, %BB_804932D.i.i ]
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i31.pn.i, 0
  %44 = load i32, i32* %25, align 16
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %BB_80492FC.i.i, label %Func_delete.exit

BB_804932D.i.i:                                   ; preds = %BB_804932D.i.i, %BB_804931F.i.i
  %storemerge38.i = phi i32 [ %tmp0_v15.i.i.i, %BB_804932D.i.i ], [ %40, %BB_804931F.i.i ]
  %46 = load i32, i32* %33, align 4
  %47 = load i32, i32* %19, align 16
  %tmp0_v3.i24.i.i = add i32 %47, %storemerge38.i
  %tmp0_v6.i.i.i = add i32 %tmp0_v3.i24.i.i, %46
  %48 = inttoptr i32 %tmp0_v6.i.i.i to i8*
  %49 = load i8, i8* %48, align 1
  %50 = inttoptr i32 %tmp0_v3.i24.i.i to i8*
  store i8 %49, i8* %50, align 1
  %51 = load i32, i32* %37, align 8
  %tmp0_v15.i.i.i = add i32 %51, 1
  store i32 %tmp0_v15.i.i.i, i32* %37, align 8
  %52 = load i32, i32* %30, align 4
  %53 = icmp slt i32 %tmp0_v15.i.i.i, %52
  br i1 %53, label %BB_804932D.i.i, label %BB_804935B.i.backedge.i

BB_80492FC.i.i:                                   ; preds = %BB_804935B.i.backedge.i, %BB_80492FC.i.lr.ph.i
  %54 = phi i32 [ %34, %BB_80492FC.i.lr.ph.i ], [ %44, %BB_804935B.i.backedge.i ]
  %r_esp.0.in41.i = phi i32 [ %tmp2_v4.i75.i.i, %BB_80492FC.i.lr.ph.i ], [ %r_esp.0.in.i, %BB_804935B.i.backedge.i ]
  %mrv.i31.pn.i = phi { i32, i32 } [ %mrv.i31.i, %BB_80492FC.i.lr.ph.i ], [ %.pn40.i, %BB_804935B.i.backedge.i ]
  %.pn44.i = phi i32 [ %32, %BB_80492FC.i.lr.ph.i ], [ %60, %BB_804935B.i.backedge.i ]
  %.pn40.i = insertvalue { i32, i32 } %mrv.i31.pn.i, i32 %.pn44.i, 1
  %55 = load i32, i32* %19, align 16
  %tmp0_v3.i50.i.i = add i32 %55, %54
  %56 = load i32, i32* %18, align 4
  %tmp2_v7.i54.i.i = add i32 %r_esp.0.in41.i, 4
  %57 = inttoptr i32 %tmp2_v7.i54.i.i to i32*
  store i32 %56, i32* %57, align 4
  %58 = inttoptr i32 %r_esp.0.in41.i to i32*
  store i32 %tmp0_v3.i50.i.i, i32* %58, align 4
  %tmp2_v9.i55.i.i = add i32 %r_esp.0.in41.i, -4
  %59 = inttoptr i32 %tmp2_v9.i55.i.i to i32*
  store i32 134517520, i32* %59, align 4
  %arg.i.i35.i = load i32, i32* %58, align 4
  %arg2.i.i.i = load i32, i32* %57, align 4
  %60 = tail call i32 @strstr(i32 %arg.i.i35.i, i32 %arg2.i.i.i)
  %61 = load i32, i32* %25, align 16
  %62 = load i32, i32* %19, align 16
  %tmp0_v4.i63.i.i = add i32 %62, %61
  %.not.i.i.i = icmp eq i32 %60, %tmp0_v4.i63.i.i
  br i1 %.not.i.i.i, label %BB_804931F.i.i, label %BB_8049357.i.i

Func_delete.exit:                                 ; preds = %BB_804935B.i.backedge.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i2.i, %.exit ], [ %r_ecx.1.be.i, %BB_804935B.i.backedge.i ]
  %.lcssa.i = phi i32 [ %34, %.exit ], [ %44, %BB_804935B.i.backedge.i ]
  %63 = load i32, i32* %19, align 16
  %tmp0_v3.i35.i.i = add i32 %63, %.lcssa.i
  %64 = inttoptr i32 %tmp0_v3.i35.i.i to i8*
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %22, align 8
  %tmp2_v.i17.i = add i32 %66, -42
  store i32 %tmp2_v.i17.i, i32* %18, align 4
  %tmp2_v3.i20.i = add i32 %65, -8167
  store i32 %tmp2_v3.i20.i, i32* %19, align 16
  store i32 134517400, i32* %20, align 4
  %67 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %.lcssa.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @delete_substring49 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack48, i32 0, i32 8092) to i32)) nounwind
