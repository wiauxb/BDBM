; Mutation 204
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack203 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.188 = constant [12 x i8] c"log %d: %s\0a\00"
@str.189 = constant [8 x i8] c"log.txt\00"
@str.190 = constant [2 x i8] c"a\00"
@str.191 = constant [12 x i8] c"log %d: %s\0a\00"
@str.192 = constant [8 x i8] c"log.txt\00"
@str.193 = constant [2 x i8] c"a\00"
@str.194 = constant [12 x i8] c"log %d: %s\0a\00"
@str.195 = constant [8 x i8] c"log.txt\00"
@str.196 = constant [2 x i8] c"a\00"
@str.197 = constant [11 x i8] c"calls: %d\0a\00"
@str.199 = constant [11 x i8] c"calls: %d\0a\00"
@str.201 = constant [11 x i8] c"calls: %d\0a\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
._crit_edge:
  %1 = load i32, i32* @fpstt, align 16
  %.pre = and i64 %0, 4503599627370495
  %.pre1 = and i64 %0, 9218868437227405312
  %phi.cmp = icmp ne i64 %.pre1, 9218868437227405312
  %phi.cmp3 = icmp eq i64 %.pre, 0
  %2 = or i1 %phi.cmp, %phi.cmp3
  br i1 %2, label %float64_to_floatx80.18.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.18.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.18.exit

float64_to_floatx80.18.exit:                      ; preds = %.sink.split.i, %3, %._crit_edge
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

; Function Attrs: naked noinline
declare i32 @fprintf()  naked noinline 

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @static_local_variables204(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i12.i = add i32 %arg_esp, 4
  %tmp0_v.i13.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i15.i = add i32 %tmp0_v.i13.i, -4
  %3 = inttoptr i32 %tmp2_v3.i15.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i13.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i17.i = add i32 %tmp0_v.i13.i, -12
  %5 = inttoptr i32 %tmp2_v5.i17.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i13.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i12.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i13.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517273, i32* %7, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i13.i, -24
  %8 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %8, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i13.i, -28
  %9 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %9, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i13.i, -36
  %10 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517487, i32* %10, align 4
  %11 = load i32, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp0_v2.i8.i.i = add i32 %11, 1
  store i32 %tmp0_v2.i8.i.i, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i13.i, -44
  %12 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %tmp0_v2.i8.i.i, i32* %12, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i13.i, -48
  %13 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  %spi.bis.201 = ptrtoint[11 x i8]* @str.201 to i32
  store i32 %spi.bis.201, i32* %13, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i13.i, -52
  %14 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517531, i32* %14, align 4
  %15 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i12.i, i32 inreg noundef 134520895, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 8
  store i32 134517278, i32* %7, align 4
  store i32 %17, i32* %8, align 8
  store i32 %16, i32* %9, align 4
  store i32 134517487, i32* %10, align 4
  %18 = load i32, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp0_v2.i8.i.i6 = add i32 %18, 1
  store i32 %tmp0_v2.i8.i.i6, i32* inttoptr (i32 134529072 to i32*), align 16
  store i32 %tmp0_v2.i8.i.i6, i32* %12, align 4
  %spi.bis.199 = ptrtoint[11 x i8]* @str.199 to i32
  store i32 %spi.bis.199, i32* %13, align 16
  store i32 134517531, i32* %14, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i12.i, i32 inreg noundef 134520895, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 8
  store i32 134517283, i32* %7, align 4
  store i32 %21, i32* %8, align 8
  store i32 %20, i32* %9, align 4
  store i32 134517487, i32* %10, align 4
  %22 = load i32, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp0_v2.i8.i.i16 = add i32 %22, 1
  store i32 %tmp0_v2.i8.i.i16, i32* inttoptr (i32 134529072 to i32*), align 16
  store i32 %tmp0_v2.i8.i.i16, i32* %12, align 4
  %spi.bis.197 = ptrtoint[11 x i8]* @str.197 to i32
  store i32 %spi.bis.197, i32* %13, align 16
  store i32 134517531, i32* %14, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i12.i, i32 inreg noundef 134520895, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 8
  %tmp2_v.i3.i = add i32 %26, -8184
  %tmp2_v1.i.i = add i32 %tmp0_v.i13.i, -32
  %28 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %tmp2_v.i3.i, i32* %28, align 16
  store i32 134517298, i32* %10, align 4
  %tmp2_v.i25.i.i = add i32 %tmp0_v.i13.i, -40
  %29 = inttoptr i32 %tmp2_v.i25.i.i to i32*
  store i32 %27, i32* %29, align 8
  store i32 %26, i32* %12, align 4
  %tmp2_v2.i.i.i23 = add i32 %tmp0_v.i13.i, -68
  %30 = inttoptr i32 %tmp2_v2.i.i.i23 to i32*
  store i32 134517368, i32* %30, align 4
  %31 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp0_v2.i10.i.i = add i32 %31, 1
  store i32 %tmp0_v2.i10.i.i, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i13.i, -76
  %32 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %spi.bis.196 = ptrtoint[2 x i8]* @str.196 to i32
  store i32 %spi.bis.196, i32* %32, align 4
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i13.i, -80
  %33 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %spi.bis.195 = ptrtoint[8 x i8]* @str.195 to i32
  store i32 %spi.bis.195, i32* %33, align 16
  %tmp2_v9.i.i.i24 = add i32 %tmp0_v.i13.i, -84
  %34 = inttoptr i32 %tmp2_v9.i.i.i24 to i32*
  store i32 134517411, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %37 = load i32, i32* %28, align 16
  store i32 %37, i32* %30, align 4
  %tmp2_v4.i19.i.i = add i32 %tmp0_v.i13.i, -72
  %38 = inttoptr i32 %tmp2_v4.i19.i.i to i32*
  store i32 %36, i32* %38, align 8
  %spi.bis.194 = ptrtoint[12 x i8]* @str.194 to i32
  store i32 %spi.bis.194, i32* %32, align 4
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %33, align 16
  store i32 134517448, i32* %34, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i12.i, i32 inreg noundef %25, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %33, align 16
  store i32 134517462, i32* %34, align 4
  %arg.i.i23.i = load i32, i32* %33, align 16
  %44 = tail call i32 @fclose(i32 %arg.i.i23.i)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %29, align 8
  %tmp2_v.i29.i = add i32 %45, -8174
  store i32 %tmp2_v.i29.i, i32* %28, align 16
  store i32 134517316, i32* %10, align 4
  store i32 %46, i32* %29, align 8
  store i32 %45, i32* %12, align 4
  store i32 134517368, i32* %30, align 4
  %47 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp0_v2.i10.i.i33 = add i32 %47, 1
  store i32 %tmp0_v2.i10.i.i33, i32* inttoptr (i32 134529068 to i32*), align 4
  %spi.bis.193 = ptrtoint[2 x i8]* @str.193 to i32
  store i32 %spi.bis.193, i32* %32, align 4
  %spi.bis.192 = ptrtoint[8 x i8]* @str.192 to i32
  store i32 %spi.bis.192, i32* %33, align 16
  store i32 134517411, i32* %34, align 4
  %arg.i.i.i37 = load i32, i32* %33, align 16
  %arg2.i.i.i38 = load i32, i32* %32, align 4
  %48 = tail call i32 @fopen(i32 %arg.i.i.i37, i32 %arg2.i.i.i38)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %50 = load i32, i32* %28, align 16
  store i32 %50, i32* %30, align 4
  store i32 %49, i32* %38, align 8
  %spi.bis.191 = ptrtoint[12 x i8]* @str.191 to i32
  store i32 %spi.bis.191, i32* %32, align 4
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %33, align 16
  store i32 134517448, i32* %34, align 4
  %52 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i12.i, i32 inreg noundef %42, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %33, align 16
  store i32 134517462, i32* %34, align 4
  %arg.i.i23.i41 = load i32, i32* %33, align 16
  %56 = tail call i32 @fclose(i32 %arg.i.i23.i41)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %29, align 8
  %tmp2_v.i10.i = add i32 %57, -8162
  store i32 %tmp2_v.i10.i, i32* %28, align 16
  store i32 134517334, i32* %10, align 4
  store i32 %58, i32* %29, align 8
  store i32 %57, i32* %12, align 4
  store i32 134517368, i32* %30, align 4
  %59 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp0_v2.i10.i.i48 = add i32 %59, 1
  store i32 %tmp0_v2.i10.i.i48, i32* inttoptr (i32 134529068 to i32*), align 4
  %spi.bis.190 = ptrtoint[2 x i8]* @str.190 to i32
  store i32 %spi.bis.190, i32* %32, align 4
  %spi.bis.189 = ptrtoint[8 x i8]* @str.189 to i32
  store i32 %spi.bis.189, i32* %33, align 16
  store i32 134517411, i32* %34, align 4
  %arg.i.i.i52 = load i32, i32* %33, align 16
  %arg2.i.i.i53 = load i32, i32* %32, align 4
  %60 = tail call i32 @fopen(i32 %arg.i.i.i52, i32 %arg2.i.i.i53)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %62 = load i32, i32* %28, align 16
  store i32 %62, i32* %30, align 4
  store i32 %61, i32* %38, align 8
  %spi.bis.188 = ptrtoint[12 x i8]* @str.188 to i32
  store i32 %spi.bis.188, i32* %32, align 4
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %33, align 16
  store i32 134517448, i32* %34, align 4
  %64 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i12.i, i32 inreg noundef %54, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !14
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %33, align 16
  store i32 134517462, i32* %34, align 4
  %arg.i.i23.i56 = load i32, i32* %33, align 16
  %66 = tail call i32 @fclose(i32 %arg.i.i23.i56)
  ret void
}


!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}
!14 = !{!"fprintf"}

  tail call fastcc void @static_local_variables204 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack203, i32 0, i32 8092) to i32)) nounwind
