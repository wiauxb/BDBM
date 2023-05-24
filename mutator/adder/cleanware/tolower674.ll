; Mutation 674
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack673 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.668 = constant [19 x i8] c" string lower: %s\0a\00"
@str.669 = constant [19 x i8] c" string after: %s\0a\00"
@str.670 = constant [19 x i8] c"string before: %s\0a\00"
@str.671 = constant [12 x i8] c" after: %c\0a\00"
@str.672 = constant [12 x i8] c"before: %c\0a\00"

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
declare i32 @tolower(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @tolower674(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -68
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %7, align 4
  %tmp4_v.i78.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i82.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i82.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i83.i = add i32 %tmp0_v.i.i, -54
  %11 = inttoptr i32 %tmp2_v3.i83.i to i8*
  store i8 65, i8* %11, align 2
  %tmp2_v7.i88.i = add i32 %tmp0_v.i.i, -80
  %12 = inttoptr i32 %tmp2_v7.i88.i to i32*
  store i32 65, i32* %12, align 16
  %tmp2_v8.i89.i = add i32 %tmp0_v.i.i, -84
  %13 = inttoptr i32 %tmp2_v8.i89.i to i32*
  store i32 134517299, i32* %13, align 4
  %arg.i.i = load i32, i32* %12, align 16
  %14 = tail call i32 @tolower(i32 %arg.i.i)
  %mrv.i1 = insertvalue { i32, i32 } undef, i32 %tmp2_v7.i88.i, 0
  %tmp2_v.i58.i = add i32 %tmp0_v.i.i, -53
  %15 = trunc i32 %14 to i8
  %16 = inttoptr i32 %tmp2_v.i58.i to i8*
  store i8 %15, i8* %16, align 1
  %17 = load i8, i8* %11, align 2
  %tmp0_v2.i61.i = sext i8 %17 to i32
  %tmp2_v4.i63.i = add i32 %tmp0_v.i.i, -76
  %18 = inttoptr i32 %tmp2_v4.i63.i to i32*
  store i32 %tmp0_v2.i61.i, i32* %18, align 4
  %spi672 = ptrtoint[12 x i8]* @str.672 to i32
  store i32 %spi672, i32* %12, align 16
  store i32 134517325, i32* %13, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v7.i88.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = load i8, i8* %16, align 1
  %tmp0_v1.i42.i = sext i8 %22 to i32
  store i32 %tmp0_v1.i42.i, i32* %18, align 4
  %spi671 = ptrtoint[12 x i8]* @str.671 to i32
  store i32 %spi671, i32* %12, align 16
  store i32 134517348, i32* %13, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %21, i32 noundef %tmp2_v7.i88.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %tmp2_v.i93.i = add i32 %tmp0_v.i.i, -41
  %26 = inttoptr i32 %tmp2_v.i93.i to i32*
  store i32 1230132307, i32* %26, align 4
  %tmp2_v1.i94.i = add i32 %tmp0_v.i.i, -37
  %27 = inttoptr i32 %tmp2_v1.i94.i to i32*
  store i32 1327515470, i32* %27, align 4
  %tmp2_v2.i95.i = add i32 %tmp0_v.i.i, -33
  %28 = inttoptr i32 %tmp2_v2.i95.i to i32*
  store i32 1212358726, i32* %28, align 4
  %tmp2_v3.i96.i = add i32 %tmp0_v.i.i, -29
  %29 = inttoptr i32 %tmp2_v3.i96.i to i32*
  store i32 1128354369, i32* %29, align 4
  %tmp2_v4.i97.i = add i32 %tmp0_v.i.i, -25
  %30 = inttoptr i32 %tmp2_v4.i97.i to i32*
  store i32 1397900628, i32* %30, align 4
  %tmp2_v5.i98.i = add i32 %tmp0_v.i.i, -21
  %31 = inttoptr i32 %tmp2_v5.i98.i to i8*
  store i8 0, i8* %31, align 1
  store i32 %tmp2_v.i93.i, i32* %18, align 4
  %spi670 = ptrtoint[19 x i8]* @str.670 to i32
  store i32 %spi670, i32* %12, align 16
  store i32 134517409, i32* %13, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %25, i32 noundef %tmp2_v7.i88.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  %tmp2_v.i124.i = add i32 %tmp0_v.i.i, -39
  %35 = inttoptr i32 %tmp2_v.i124.i to i8*
  %36 = load i8, i8* %35, align 1
  %tmp0_v2.i126.i = sext i8 %36 to i32
  store i32 %tmp0_v2.i126.i, i32* %12, align 16
  store i32 134517428, i32* %13, align 4
  %arg.i.i6 = load i32, i32* %12, align 16
  %37 = tail call i32 @tolower(i32 %arg.i.i6)
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %35, align 1
  store i32 %tmp2_v.i93.i, i32* %18, align 4
  %spi669 = ptrtoint[19 x i8]* @str.669 to i32
  store i32 %spi669, i32* %12, align 16
  store i32 134517453, i32* %13, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %34, i32 noundef %tmp2_v7.i88.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  store i32 %tmp2_v.i93.i, i32* %12, align 16
  store i32 134517468, i32* %13, align 4
  %arg.i.i9 = load i32, i32* %12, align 16
  %42 = tail call i32 @strlen(i32 %arg.i.i9)
  %tmp2_v.i35.i = add i32 %tmp0_v.i.i, -48
  %43 = inttoptr i32 %tmp2_v.i35.i to i32*
  store i32 %42, i32* %43, align 16
  %tmp2_v1.i37.i = add i32 %tmp0_v.i.i, -52
  %44 = inttoptr i32 %tmp2_v1.i37.i to i32*
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %43, align 16
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %BB_80492EB.i, label %BB_804931D.i

BB_80492EB.i:                                     ; preds = %BB_80492EB.i, %0
  %r_esp.0.in18 = phi i32 [ %r_esp.0.in, %BB_80492EB.i ], [ %tmp2_v7.i88.i, %0 ]
  %.pn1417 = phi i32 [ %51, %BB_80492EB.i ], [ %42, %0 ]
  %mrv.i1.pn16 = phi { i32, i32 } [ %.pn, %BB_80492EB.i ], [ %mrv.i1, %0 ]
  %storemerge15 = phi i32 [ %tmp0_v6.i.i, %BB_80492EB.i ], [ 0, %0 ]
  %.pn = insertvalue { i32, i32 } %mrv.i1.pn16, i32 %.pn1417, 1
  %tmp0_v2.i26.i = add i32 %storemerge15, %tmp2_v.i93.i
  %47 = inttoptr i32 %tmp0_v2.i26.i to i8*
  %48 = load i8, i8* %47, align 1
  %tmp0_v4.i.i = sext i8 %48 to i32
  %49 = inttoptr i32 %r_esp.0.in18 to i32*
  store i32 %tmp0_v4.i.i, i32* %49, align 4
  %tmp2_v7.i31.i = add i32 %r_esp.0.in18, -4
  %50 = inttoptr i32 %tmp2_v7.i31.i to i32*
  store i32 134517506, i32* %50, align 4
  %arg.i.i11 = load i32, i32* %49, align 4
  %51 = tail call i32 @tolower(i32 %arg.i.i11)
  %52 = load i32, i32* %44, align 4
  %tmp0_v3.i.i = add i32 %52, %tmp2_v.i93.i
  %53 = trunc i32 %51 to i8
  %54 = inttoptr i32 %tmp0_v3.i.i to i8*
  store i8 %53, i8* %54, align 1
  %55 = load i32, i32* %44, align 4
  %tmp0_v6.i.i = add i32 %55, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i1.pn16, 0
  store i32 %tmp0_v6.i.i, i32* %44, align 4
  %56 = load i32, i32* %43, align 16
  %57 = icmp slt i32 %tmp0_v6.i.i, %56
  br i1 %57, label %BB_80492EB.i, label %BB_804931D.i

BB_804931D.i:                                     ; preds = %BB_80492EB.i, %0
  %mrv.i1.pn.lcssa = phi { i32, i32 } [ %mrv.i1, %0 ], [ %.pn, %BB_80492EB.i ]
  %r_ecx.0.lcssa = phi i32 [ %tmp2_v.i.i, %0 ], [ %51, %BB_80492EB.i ]
  %r_edx.0.lcssa = phi i32 [ %41, %0 ], [ %tmp2_v.i93.i, %BB_80492EB.i ]
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i1.pn.lcssa, 0
  %tmp2_v1.i116.i = add i32 %r_esp.0.in.le, 4
  %58 = inttoptr i32 %tmp2_v1.i116.i to i32*
  store i32 %tmp2_v.i93.i, i32* %58, align 4
  %59 = inttoptr i32 %r_esp.0.in.le to i32*
  %spi668 = ptrtoint[19 x i8]* @str.668 to i32
  store i32 %spi668, i32* %59, align 4
  %tmp2_v4.i120.i = add i32 %r_esp.0.in.le, -4
  %60 = inttoptr i32 %tmp2_v4.i120.i to i32*
  store i32 134517552, i32* %60, align 4
  %61 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa, i32 inreg noundef %r_edx.0.lcssa, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
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

  tail call fastcc void @tolower674 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack673, i32 0, i32 8092) to i32)) nounwind
