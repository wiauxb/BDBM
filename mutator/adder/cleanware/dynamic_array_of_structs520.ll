; Mutation 520
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack519 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.bis.513 = constant [9 x i8] c"\41\72\72\61\79\2e\2e\2e\00"
@str.bis.514 = constant [10 x i8] c"\28\25\64\2c\20\25\64\29\0a\00"
@str.bis.515 = constant [10 x i8] c"\28\25\64\2c\20\25\64\29\0a\00"
@str.bis.516 = constant [9 x i8] c"\41\72\72\61\79\2e\2e\2e\00"
@str.bis.517 = constant [10 x i8] c"\28\25\64\2c\20\25\64\29\0a\00"
@str.bis.518 = constant [10 x i8] c"\28\25\64\2c\20\25\64\29\0a\00"

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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @realloc(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @dynamic_array_of_structs520(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
  %tmp2_v.i187.i = add i32 %arg_esp, 4
  %tmp0_v.i188.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i190.i = add i32 %tmp0_v.i188.i, -4
  %3 = inttoptr i32 %tmp2_v3.i190.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i191.i = add i32 %tmp0_v.i188.i, -8
  %4 = inttoptr i32 %tmp2_v4.i191.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i193.i = add i32 %tmp0_v.i188.i, -12
  %5 = inttoptr i32 %tmp2_v5.i193.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i195.i = add i32 %tmp0_v.i188.i, -16
  %6 = inttoptr i32 %tmp2_v6.i195.i to i32*
  store i32 %tmp2_v.i187.i, i32* %6, align 16
  %tmp2_v8.i197.i = add i32 %tmp0_v.i188.i, -52
  %7 = inttoptr i32 %tmp2_v8.i197.i to i32*
  store i32 134517329, i32* %7, align 4
  %tmp2_v.i9.i = add i32 %tmp0_v.i188.i, -28
  %8 = inttoptr i32 %tmp2_v.i9.i to i32*
  store i32 5, i32* %8, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i188.i, -24
  %9 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2, i32* %9, align 8
  %10 = load i32, i32* %8, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i188.i, -56
  %11 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 2, i32* %11, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i188.i, -60
  %12 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 %10, i32* %12, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i188.i, -64
  %13 = inttoptr i32 %tmp2_v10.i.i to i32*
  %spi.bis.518 = ptrtoint[10 x i8]* @str.bis.518 to i32
  store i32 %spi.bis.518, i32* %13, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i188.i, -68
  %14 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517372, i32* %14, align 4
  %15 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i187.i, i32 inreg noundef 2, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 12, i32* %13, align 16
  store i32 134517385, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %16 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i91.i = add i32 %tmp0_v.i188.i, -40
  %17 = inttoptr i32 %tmp2_v.i91.i to i32*
  store i32 %16, i32* %17, align 8
  %18 = inttoptr i32 %16 to i32*
  store i32 6, i32* %18, align 4
  %19 = load i32, i32* %17, align 8
  %tmp2_v5.i97.i = add i32 %19, 4
  %20 = inttoptr i32 %tmp2_v5.i97.i to i32*
  store i32 10, i32* %20, align 4
  %21 = load i32, i32* %17, align 8
  %tmp2_v8.i98.i = add i32 %21, 4
  %22 = inttoptr i32 %tmp2_v8.i98.i to i32*
  %23 = load i32, i32* %22, align 4
  %24 = inttoptr i32 %21 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %23, i32* %11, align 8
  store i32 %25, i32* %12, align 4
  %spi.bis.517 = ptrtoint[10 x i8]* @str.bis.517 to i32
  store i32 %spi.bis.517, i32* %13, align 16
  store i32 134517438, i32* %14, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i187.i, i32 inreg noundef %23, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %27 = load i32, i32* %17, align 8
  store i32 %27, i32* %13, align 16
  store i32 134517452, i32* %14, align 4
  %arg.i.i16 = load i32, i32* %13, align 16
  tail call void @free(i32 %arg.i.i16)
  %tmp2_v.i178.i = add i32 %tmp0_v.i188.i, -36
  %28 = inttoptr i32 %tmp2_v.i178.i to i32*
  store i32 3, i32* %28, align 4
  store i32 36, i32* %13, align 16
  store i32 134517483, i32* %14, align 4
  %arg.i.i17 = load i32, i32* %13, align 16
  %29 = tail call i32 @malloc(i32 %arg.i.i17)
  %tmp2_v.i108.i = add i32 %tmp0_v.i188.i, -32
  %30 = inttoptr i32 %tmp2_v.i108.i to i32*
  store i32 %29, i32* %30, align 16
  %31 = inttoptr i32 %29 to i32*
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %30, align 16
  %tmp2_v5.i114.i = add i32 %32, 4
  %33 = inttoptr i32 %tmp2_v5.i114.i to i32*
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %30, align 16
  %tmp0_v8.i117.i = add i32 %34, 12
  %35 = inttoptr i32 %tmp0_v8.i117.i to i32*
  store i32 2, i32* %35, align 4
  %36 = load i32, i32* %30, align 16
  %tmp2_v12.i.i = add i32 %36, 16
  %37 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 2, i32* %37, align 4
  %38 = load i32, i32* %30, align 16
  %tmp0_v15.i.i = add i32 %38, 24
  %39 = inttoptr i32 %tmp0_v15.i.i to i32*
  store i32 3, i32* %39, align 4
  %40 = load i32, i32* %30, align 16
  %tmp2_v19.i.i = add i32 %40, 28
  %41 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 3, i32* %41, align 4
  store i32 10, i32* %13, align 16
  store i32 134517568, i32* %14, align 4
  %arg.i.i19 = load i32, i32* %13, align 16
  %42 = tail call i32 @putchar(i32 %arg.i.i19)  nounwind 
  %spi.bis.516 = ptrtoint[9 x i8]* @str.bis.516 to i32
  store i32 %spi.bis.516, i32* %13, align 16
  store i32 134517586, i32* %14, align 4
  %arg.i.i20 = load i32, i32* %13, align 16
  %43 = inttoptr i32 %arg.i.i20 to i8*
  %44 = tail call i32 @puts(i8* nonnull dereferenceable(1) %43)
  %tmp2_v.i129.i = add i32 %tmp0_v.i188.i, -48
  %45 = inttoptr i32 %tmp2_v.i129.i to i32*
  store i32 0, i32* %45, align 16
  %46 = load i32, i32* %28, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %BB_804935E.i, label %BB_80493A9.i

BB_804941C.i:                                     ; preds = %BB_80493A9.i, %BB_804941C.i
  %storemerge30 = phi i32 [ %tmp0_v2.i68.i, %BB_804941C.i ], [ 0, %BB_80493A9.i ]
  %tmp0_v3.i55.i = mul i32 %storemerge30, 12
  %48 = load i32, i32* %30, align 16
  %tmp0_v6.i58.i = add i32 %48, %tmp0_v3.i55.i
  %tmp2_v7.i59.i = add i32 %tmp0_v6.i58.i, 4
  %49 = inttoptr i32 %tmp2_v7.i59.i to i32*
  %50 = load i32, i32* %49, align 4
  %51 = inttoptr i32 %tmp0_v6.i58.i to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %50, i32* %11, align 8
  store i32 %52, i32* %12, align 4
  %spi.bis.515 = ptrtoint[10 x i8]* @str.bis.515 to i32
  store i32 %spi.bis.515, i32* %13, align 16
  store i32 134517848, i32* %14, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %50, i32 inreg noundef %tmp0_v3.i55.i, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %54 = load i32, i32* %75, align 4
  %tmp0_v2.i68.i = add i32 %54, 1
  store i32 %tmp0_v2.i68.i, i32* %75, align 4
  %55 = load i32, i32* %28, align 4
  %56 = icmp slt i32 %tmp0_v2.i68.i, %55
  br i1 %56, label %BB_804941C.i, label %.exit

BB_804935E.i:                                     ; preds = %BB_804935E.i, %0
  %storemerge1229 = phi i32 [ %tmp0_v2.i.i, %BB_804935E.i ], [ 0, %0 ]
  %tmp0_v3.i136.i = mul i32 %storemerge1229, 12
  %57 = load i32, i32* %30, align 16
  %tmp0_v6.i139.i = add i32 %57, %tmp0_v3.i136.i
  %tmp2_v7.i140.i = add i32 %tmp0_v6.i139.i, 4
  %58 = inttoptr i32 %tmp2_v7.i140.i to i32*
  %59 = load i32, i32* %58, align 4
  %60 = inttoptr i32 %tmp0_v6.i139.i to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %59, i32* %11, align 8
  store i32 %61, i32* %12, align 4
  %spi.bis.514 = ptrtoint[10 x i8]* @str.bis.514 to i32
  store i32 %spi.bis.514, i32* %13, align 16
  store i32 134517658, i32* %14, align 4
  %62 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %59, i32 inreg noundef %tmp0_v3.i136.i, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %63 = load i32, i32* %45, align 16
  %tmp0_v2.i.i = add i32 %63, 1
  store i32 %tmp0_v2.i.i, i32* %45, align 16
  %64 = load i32, i32* %28, align 4
  %65 = icmp slt i32 %tmp0_v2.i.i, %64
  br i1 %65, label %BB_804935E.i, label %BB_80493A9.i

BB_80493A9.i:                                     ; preds = %BB_804935E.i, %0
  store i32 10, i32* %13, align 16
  store i32 134517683, i32* %14, align 4
  %arg.i.i21 = load i32, i32* %13, align 16
  %66 = tail call i32 @putchar(i32 %arg.i.i21)  nounwind 
  store i32 4, i32* %28, align 4
  store i32 48, i32* %12, align 4
  %67 = load i32, i32* %30, align 16
  store i32 %67, i32* %13, align 16
  store i32 134517717, i32* %14, align 4
  %arg.i.i22 = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %68 = tail call i32 @realloc(i32 %arg.i.i22, i32 %arg2.i.i)
  store i32 %68, i32* %30, align 16
  %tmp0_v3.i81.i = add i32 %68, 36
  %69 = inttoptr i32 %tmp0_v3.i81.i to i32*
  store i32 4, i32* %69, align 4
  %70 = load i32, i32* %30, align 16
  %tmp2_v7.i85.i = add i32 %70, 40
  %71 = inttoptr i32 %tmp2_v7.i85.i to i32*
  store i32 4, i32* %71, align 4
  store i32 10, i32* %13, align 16
  store i32 134517758, i32* %14, align 4
  %arg.i.i25 = load i32, i32* %13, align 16
  %72 = tail call i32 @putchar(i32 %arg.i.i25)  nounwind 
  %spi.bis.513 = ptrtoint[9 x i8]* @str.bis.513 to i32
  store i32 %spi.bis.513, i32* %13, align 16
  store i32 134517776, i32* %14, align 4
  %arg.i.i26 = load i32, i32* %13, align 16
  %73 = inttoptr i32 %arg.i.i26 to i8*
  %74 = tail call i32 @puts(i8* nonnull dereferenceable(1) %73)
  %tmp2_v.i215.i = add i32 %tmp0_v.i188.i, -44
  %75 = inttoptr i32 %tmp2_v.i215.i to i32*
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* %28, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %BB_804941C.i, label %.exit

.exit:                                            ; preds = %BB_80493A9.i, %BB_804941C.i
  store i32 10, i32* %13, align 16
  store i32 134517873, i32* %14, align 4
  %arg.i.i27 = load i32, i32* %13, align 16
  %78 = tail call i32 @putchar(i32 %arg.i.i27)  nounwind 
  %79 = load i32, i32* %30, align 16
  store i32 %79, i32* %13, align 16
  store i32 134517887, i32* %14, align 4
  %arg.i.i28 = load i32, i32* %13, align 16
  tail call void @free(i32 %arg.i.i28)
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
!12 = !{i32 0, i32 0, i32 0}
!13 = !{!"printf"}

  tail call fastcc void @dynamic_array_of_structs520 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack519, i32 0, i32 8092) to i32)) nounwind
