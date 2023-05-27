; Mutation 167
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack166 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.161 = constant [15 x i8] c"test[%d]='%c'\0a\00"
@str.162 = constant [12 x i8] c"length: %d\0a\00"
@str.163 = constant [11 x i8] c"test2: %s\0a\00"
@str.164 = constant [8 x i8] c"s2: %s\0a\00"
@str.165 = constant [13 x i8] c"S Count: %d\0a\00"

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

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @string_basics167(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i118.i = add i32 %arg_esp, 4
  %tmp0_v.i119.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i121.i = add i32 %tmp0_v.i119.i, -4
  %3 = inttoptr i32 %tmp2_v3.i121.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i122.i = add i32 %tmp0_v.i119.i, -8
  %4 = inttoptr i32 %tmp2_v4.i122.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i124.i = add i32 %tmp0_v.i119.i, -12
  %5 = inttoptr i32 %tmp2_v5.i124.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i126.i = add i32 %tmp0_v.i119.i, -16
  %6 = inttoptr i32 %tmp2_v6.i126.i to i32*
  store i32 %tmp2_v.i118.i, i32* %6, align 16
  %tmp2_v8.i127.i = add i32 %tmp0_v.i119.i, -164
  %7 = inttoptr i32 %tmp2_v8.i127.i to i32*
  store i32 134517300, i32* %7, align 4
  %tmp4_v.i85.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i89.i = add i32 %tmp0_v.i119.i, -20
  %10 = inttoptr i32 %tmp2_v2.i89.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i90.i = add i32 %tmp0_v.i119.i, -131
  %11 = inttoptr i32 %tmp2_v3.i90.i to i32*
  store i32 1953719668, i32* %11, align 4
  %tmp2_v4.i91.i = add i32 %tmp0_v.i119.i, -127
  %12 = inttoptr i32 %tmp2_v4.i91.i to i8*
  store i8 0, i8* %12, align 1
  %tmp2_v7.i95.i = add i32 %tmp0_v.i119.i, -176
  %13 = inttoptr i32 %tmp2_v7.i95.i to i32*
  store i32 %tmp2_v3.i90.i, i32* %13, align 16
  %tmp2_v8.i96.i = add i32 %tmp0_v.i119.i, -180
  %14 = inttoptr i32 %tmp2_v8.i96.i to i32*
  store i32 134517340, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %15 = inttoptr i32 %arg.i.i to i8*
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) %15)
  %tmp2_v.i44.i = add i32 %tmp0_v.i119.i, -148
  %17 = inttoptr i32 %tmp2_v.i44.i to i32*
  %tmp2_v6.i136.i = add i32 %tmp0_v.i119.i, -168
  %18 = inttoptr i32 %tmp2_v6.i136.i to i32*
  %tmp2_v9.i138.i = add i32 %tmp0_v.i119.i, -172
  %19 = inttoptr i32 %tmp2_v9.i138.i to i32*
  store i32 0, i32* %17, align 4
  br label %BB_804926B.i

BB_804936B.i:                                     ; preds = %BB_8049364.i, %BB_8049340.i
  %20 = phi i32 [ %storemerge117, %BB_8049340.i ], [ %.pre, %BB_8049364.i ]
  %tmp0_v1.i.i = add i32 %20, 1
  store i32 %tmp0_v1.i.i, i32* %59, align 4
  %21 = load i32, i32* %54, align 8
  %22 = icmp slt i32 %tmp0_v1.i.i, %21
  br i1 %22, label %BB_8049340.i, label %BB_804937D.i

BB_804937D.i:                                     ; preds = %BB_80492A5.i, %BB_804936B.i
  %r_edx.2.lcssa = phi i32 [ %57, %BB_80492A5.i ], [ %tmp2_v.i14.i, %BB_804936B.i ]
  %23 = load i32, i32* %58, align 16
  store i32 %23, i32* %19, align 4
  %spi.bis.165 = ptrtoint[13 x i8]* @str.165 to i32
  store i32 %spi.bis.165, i32* %13, align 16
  store i32 134517650, i32* %14, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i118.i, i32 inreg noundef %r_edx.2.lcssa, i32 noundef %tmp2_v7.i95.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %25 = lshr i64 %24, 32
  %26 = trunc i64 %25 to i32
  %tmp2_v.i48.i = add i32 %tmp0_v.i119.i, -111
  %27 = inttoptr i32 %tmp2_v.i48.i to i32*
  store i32 1931508045, i32* %27, align 4
  %tmp2_v1.i49.i = add i32 %tmp0_v.i119.i, -107
  %28 = inttoptr i32 %tmp2_v1.i49.i to i32*
  store i32 1852404340, i32* %28, align 4
  %tmp2_v2.i50.i = add i32 %tmp0_v.i119.i, -103
  %29 = inttoptr i32 %tmp2_v2.i50.i to i32*
  store i32 1869881447, i32* %29, align 4
  %tmp2_v3.i51.i = add i32 %tmp0_v.i119.i, -99
  %30 = inttoptr i32 %tmp2_v3.i51.i to i32*
  store i32 1886348064, i32* %30, align 4
  %tmp2_v4.i52.i = add i32 %tmp0_v.i119.i, -95
  %31 = inttoptr i32 %tmp2_v4.i52.i to i16*
  store i16 8569, i16* %31, align 2
  %tmp2_v5.i53.i = add i32 %tmp0_v.i119.i, -93
  %32 = inttoptr i32 %tmp2_v5.i53.i to i8*
  store i8 0, i8* %32, align 1
  store i32 %tmp2_v.i48.i, i32* %19, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i119.i, -70
  store i32 %tmp2_v9.i.i, i32* %13, align 16
  store i32 134517707, i32* %14, align 4
  %arg.i.i6 = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %19, align 4
  %33 = tail call i32 @strcpy(i32 %arg.i.i6, i32 %arg2.i.i)
  store i32 %tmp2_v9.i.i, i32* %19, align 4
  %spi.bis.164 = ptrtoint[8 x i8]* @str.164 to i32
  store i32 %spi.bis.164, i32* %13, align 16
  store i32 134517729, i32* %14, align 4
  %34 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i118.i, i32 inreg noundef %26, i32 noundef %tmp2_v7.i95.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  ret void

BB_8049340.i:                                     ; preds = %BB_80492A5.i, %BB_804936B.i
  %storemerge117 = phi i32 [ %tmp0_v1.i.i, %BB_804936B.i ], [ 0, %BB_80492A5.i ]
  %tmp0_v2.i.i = add i32 %storemerge117, %tmp2_v.i14.i
  %35 = inttoptr i32 %tmp0_v2.i.i to i8*
  %36 = load i8, i8* %35, align 1
  switch i8 %36, label %BB_804936B.i [
    i8 115, label %BB_8049364.i
    i8 83, label %BB_8049364.i
  ]

BB_80492A5.i:                                     ; preds = %BB_804926B.i
  %37 = lshr i64 %65, 32
  %38 = trunc i64 %37 to i32
  %tmp2_v.i61.i = add i32 %tmp0_v.i119.i, -92
  %39 = inttoptr i32 %tmp2_v.i61.i to i32*
  store i32 1701670739, i32* %39, align 4
  %tmp2_v1.i62.i = add i32 %tmp0_v.i119.i, -88
  %40 = inttoptr i32 %tmp2_v1.i62.i to i32*
  store i32 1734959648, i32* %40, align 8
  %tmp2_v2.i63.i = add i32 %tmp0_v.i119.i, -84
  %41 = inttoptr i32 %tmp2_v2.i63.i to i32*
  store i32 1852795936, i32* %41, align 4
  %tmp2_v3.i64.i = add i32 %tmp0_v.i119.i, -80
  %42 = inttoptr i32 %tmp2_v3.i64.i to i32*
  store i32 1953701991, i32* %42, align 16
  %tmp2_v4.i65.i = add i32 %tmp0_v.i119.i, -76
  %43 = inttoptr i32 %tmp2_v4.i65.i to i32*
  store i32 1735289202, i32* %43, align 4
  %tmp2_v5.i66.i = add i32 %tmp0_v.i119.i, -72
  %44 = inttoptr i32 %tmp2_v5.i66.i to i16*
  store i16 33, i16* %44, align 8
  store i32 %tmp2_v.i61.i, i32* %19, align 4
  %spi.bis.163 = ptrtoint[11 x i8]* @str.163 to i32
  store i32 %spi.bis.163, i32* %13, align 16
  store i32 134517473, i32* %14, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i118.i, i32 inreg noundef %38, i32 noundef %tmp2_v7.i95.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  %tmp2_v.i14.i = add i32 %tmp0_v.i119.i, -126
  %48 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 1701670739, i32* %48, align 4
  %tmp2_v1.i15.i = add i32 %tmp0_v.i119.i, -122
  %49 = inttoptr i32 %tmp2_v1.i15.i to i32*
  store i32 1920234272, i32* %49, align 4
  %tmp2_v2.i16.i = add i32 %tmp0_v.i119.i, -118
  %50 = inttoptr i32 %tmp2_v2.i16.i to i32*
  store i32 560426601, i32* %50, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i119.i, -114
  %51 = inttoptr i32 %tmp2_v3.i.i to i16*
  store i16 8481, i16* %51, align 2
  %tmp2_v4.i17.i = add i32 %tmp0_v.i119.i, -112
  %52 = inttoptr i32 %tmp2_v4.i17.i to i8*
  store i8 0, i8* %52, align 16
  store i32 %tmp2_v.i14.i, i32* %13, align 16
  store i32 134517519, i32* %14, align 4
  %arg.i.i10 = load i32, i32* %13, align 16
  %53 = tail call i32 @strlen(i32 %arg.i.i10)
  %tmp2_v.i109.i = add i32 %tmp0_v.i119.i, -136
  %54 = inttoptr i32 %tmp2_v.i109.i to i32*
  store i32 %53, i32* %54, align 8
  store i32 %53, i32* %19, align 4
  %spi.bis.162 = ptrtoint[12 x i8]* @str.162 to i32
  store i32 %spi.bis.162, i32* %13, align 16
  store i32 134517543, i32* %14, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i118.i, i32 inreg noundef %47, i32 noundef %tmp2_v7.i95.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %56 = lshr i64 %55, 32
  %57 = trunc i64 %56 to i32
  %tmp2_v.i58.i = add i32 %tmp0_v.i119.i, -144
  %58 = inttoptr i32 %tmp2_v.i58.i to i32*
  store i32 0, i32* %58, align 16
  %tmp2_v1.i59.i = add i32 %tmp0_v.i119.i, -140
  %59 = inttoptr i32 %tmp2_v1.i59.i to i32*
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %54, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %BB_8049340.i, label %BB_804937D.i

BB_804926B.i:                                     ; preds = %BB_804926B.i, %0
  %storemerge15 = phi i32 [ 0, %0 ], [ %tmp0_v2.i147.i, %BB_804926B.i ]
  %tmp0_v2.i132.i = add i32 %storemerge15, %tmp2_v3.i90.i
  %62 = inttoptr i32 %tmp0_v2.i132.i to i8*
  %63 = load i8, i8* %62, align 1
  %tmp0_v4.i.i = sext i8 %63 to i32
  store i32 %tmp0_v4.i.i, i32* %18, align 8
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %19, align 4
  %spi.bis.161 = ptrtoint[15 x i8]* @str.161 to i32
  store i32 %spi.bis.161, i32* %13, align 16
  store i32 134517394, i32* %14, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i118.i, i32 inreg noundef %tmp2_v3.i90.i, i32 noundef %tmp2_v7.i95.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %66 = load i32, i32* %17, align 4
  %tmp0_v2.i147.i = add i32 %66, 1
  store i32 %tmp0_v2.i147.i, i32* %17, align 4
  %67 = icmp slt i32 %tmp0_v2.i147.i, 5
  br i1 %67, label %BB_804926B.i, label %BB_80492A5.i

BB_8049364.i:                                     ; preds = %BB_8049340.i, %BB_8049340.i
  %68 = load i32, i32* %58, align 16
  %tmp0_v1.i155.i = add i32 %68, 1
  store i32 %tmp0_v1.i155.i, i32* %58, align 16
  %.pre = load i32, i32* %59, align 4
  br label %BB_804936B.i
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

  tail call fastcc void @string_basics167 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack166, i32 0, i32 8092) to i32)) nounwind
