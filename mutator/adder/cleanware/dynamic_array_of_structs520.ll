; Mutation 520
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack519 = internal global [8092 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@str.513 = constant [10 x i8] c"(%d, %d)\0a\00"
@str.514 = constant [10 x i8] c"(%d, %d)\0a\00"
@str.515 = constant [9 x i8] c"Array...\00"
@str.516 = constant [9 x i8] c"Array...\00"
@str.517 = constant [10 x i8] c"(%d, %d)\0a\00"
@str.518 = constant [10 x i8] c"(%d, %d)\0a\00"

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
  %tmp2_v.i105.i = add i32 %arg_esp, 4
  %tmp0_v.i106.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i108.i = add i32 %tmp0_v.i106.i, -4
  %3 = inttoptr i32 %tmp2_v3.i108.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i109.i = add i32 %tmp0_v.i106.i, -8
  %4 = inttoptr i32 %tmp2_v4.i109.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i111.i = add i32 %tmp0_v.i106.i, -12
  %5 = inttoptr i32 %tmp2_v5.i111.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i113.i = add i32 %tmp0_v.i106.i, -16
  %6 = inttoptr i32 %tmp2_v6.i113.i to i32*
  store i32 %tmp2_v.i105.i, i32* %6, align 16
  %tmp2_v8.i115.i = add i32 %tmp0_v.i106.i, -52
  %7 = inttoptr i32 %tmp2_v8.i115.i to i32*
  store i32 134517329, i32* %7, align 4
  %tmp2_v.i133.i = add i32 %tmp0_v.i106.i, -28
  %8 = inttoptr i32 %tmp2_v.i133.i to i32*
  store i32 5, i32* %8, align 4
  %tmp2_v1.i134.i = add i32 %tmp0_v.i106.i, -24
  %9 = inttoptr i32 %tmp2_v1.i134.i to i32*
  store i32 2, i32* %9, align 8
  %10 = load i32, i32* %8, align 4
  %tmp2_v7.i141.i = add i32 %tmp0_v.i106.i, -56
  %11 = inttoptr i32 %tmp2_v7.i141.i to i32*
  store i32 2, i32* %11, align 8
  %tmp2_v8.i142.i = add i32 %tmp0_v.i106.i, -60
  %12 = inttoptr i32 %tmp2_v8.i142.i to i32*
  store i32 %10, i32* %12, align 4
  %tmp2_v10.i144.i = add i32 %tmp0_v.i106.i, -64
  %13 = inttoptr i32 %tmp2_v10.i144.i to i32*
  %spi518 = ptrtoint[10 x i8]* @str.518 to i32
  store i32 %spi518, i32* %13, align 16
  %tmp2_v11.i145.i = add i32 %tmp0_v.i106.i, -68
  %14 = inttoptr i32 %tmp2_v11.i145.i to i32*
  store i32 134517372, i32* %14, align 4
  %15 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i105.i, i32 inreg noundef 2, i32 noundef %tmp2_v10.i144.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  store i32 12, i32* %13, align 16
  store i32 134517385, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %16 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i90.i = add i32 %tmp0_v.i106.i, -40
  %17 = inttoptr i32 %tmp2_v.i90.i to i32*
  store i32 %16, i32* %17, align 8
  %18 = inttoptr i32 %16 to i32*
  store i32 6, i32* %18, align 4
  %19 = load i32, i32* %17, align 8
  %tmp2_v5.i96.i = add i32 %19, 4
  %20 = inttoptr i32 %tmp2_v5.i96.i to i32*
  store i32 10, i32* %20, align 4
  %21 = load i32, i32* %17, align 8
  %tmp2_v8.i97.i = add i32 %21, 4
  %22 = inttoptr i32 %tmp2_v8.i97.i to i32*
  %23 = load i32, i32* %22, align 4
  %24 = inttoptr i32 %21 to i32*
  %25 = load i32, i32* %24, align 4
  store i32 %23, i32* %11, align 8
  store i32 %25, i32* %12, align 4
  %spi517 = ptrtoint[10 x i8]* @str.517 to i32
  store i32 %spi517, i32* %13, align 16
  store i32 134517438, i32* %14, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i105.i, i32 inreg noundef %23, i32 noundef %tmp2_v10.i144.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %27 = load i32, i32* %17, align 8
  store i32 %27, i32* %13, align 16
  store i32 134517452, i32* %14, align 4
  %arg.i.i16 = load i32, i32* %13, align 16
  tail call void @free(i32 %arg.i.i16)
  %tmp2_v.i179.i = add i32 %tmp0_v.i106.i, -36
  %28 = inttoptr i32 %tmp2_v.i179.i to i32*
  store i32 3, i32* %28, align 4
  store i32 36, i32* %13, align 16
  store i32 134517483, i32* %14, align 4
  %arg.i.i17 = load i32, i32* %13, align 16
  %29 = tail call i32 @malloc(i32 %arg.i.i17)
  %tmp2_v.i190.i = add i32 %tmp0_v.i106.i, -32
  %30 = inttoptr i32 %tmp2_v.i190.i to i32*
  store i32 %29, i32* %30, align 16
  %31 = inttoptr i32 %29 to i32*
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %30, align 16
  %tmp2_v5.i196.i = add i32 %32, 4
  %33 = inttoptr i32 %tmp2_v5.i196.i to i32*
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %30, align 16
  %tmp0_v8.i199.i = add i32 %34, 12
  %35 = inttoptr i32 %tmp0_v8.i199.i to i32*
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
  %spi516 = ptrtoint[9 x i8]* @str.516 to i32
  store i32 %spi516, i32* %13, align 16
  store i32 134517586, i32* %14, align 4
  %arg.i.i20 = load i32, i32* %13, align 16
  %43 = inttoptr i32 %arg.i.i20 to i8*
  %44 = tail call i32 @puts(i8* nonnull dereferenceable(1) %43)
  %tmp2_v.i23.i = add i32 %tmp0_v.i106.i, -48
  %45 = inttoptr i32 %tmp2_v.i23.i to i32*
  store i32 0, i32* %45, align 16
  %46 = load i32, i32* %28, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %BB_804935E.i, label %BB_80493A9.i

BB_80493A9.i:                                     ; preds = %BB_804935E.i, %0
  store i32 10, i32* %13, align 16
  store i32 134517683, i32* %14, align 4
  %arg.i.i21 = load i32, i32* %13, align 16
  %48 = tail call i32 @putchar(i32 %arg.i.i21)  nounwind 
  store i32 4, i32* %28, align 4
  store i32 48, i32* %12, align 4
  %49 = load i32, i32* %30, align 16
  store i32 %49, i32* %13, align 16
  store i32 134517717, i32* %14, align 4
  %arg.i.i22 = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %50 = tail call i32 @realloc(i32 %arg.i.i22, i32 %arg2.i.i)
  store i32 %50, i32* %30, align 16
  %tmp0_v3.i.i = add i32 %50, 36
  %51 = inttoptr i32 %tmp0_v3.i.i to i32*
  store i32 4, i32* %51, align 4
  %52 = load i32, i32* %30, align 16
  %tmp2_v7.i.i = add i32 %52, 40
  %53 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 4, i32* %53, align 4
  store i32 10, i32* %13, align 16
  store i32 134517758, i32* %14, align 4
  %arg.i.i25 = load i32, i32* %13, align 16
  %54 = tail call i32 @putchar(i32 %arg.i.i25)  nounwind 
  %spi515 = ptrtoint[9 x i8]* @str.515 to i32
  store i32 %spi515, i32* %13, align 16
  store i32 134517776, i32* %14, align 4
  %arg.i.i26 = load i32, i32* %13, align 16
  %55 = inttoptr i32 %arg.i.i26 to i8*
  %56 = tail call i32 @puts(i8* nonnull dereferenceable(1) %55)
  %tmp2_v.i211.i = add i32 %tmp0_v.i106.i, -44
  %57 = inttoptr i32 %tmp2_v.i211.i to i32*
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %28, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %BB_804941C.i, label %.exit

BB_804941C.i:                                     ; preds = %BB_804941C.i, %BB_80493A9.i
  %storemerge30 = phi i32 [ %tmp0_v2.i29.i, %BB_804941C.i ], [ 0, %BB_80493A9.i ]
  %tmp0_v3.i79.i = mul i32 %storemerge30, 12
  %60 = load i32, i32* %30, align 16
  %tmp0_v6.i82.i = add i32 %60, %tmp0_v3.i79.i
  %tmp2_v7.i83.i = add i32 %tmp0_v6.i82.i, 4
  %61 = inttoptr i32 %tmp2_v7.i83.i to i32*
  %62 = load i32, i32* %61, align 4
  %63 = inttoptr i32 %tmp0_v6.i82.i to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %62, i32* %11, align 8
  store i32 %64, i32* %12, align 4
  %spi514 = ptrtoint[10 x i8]* @str.514 to i32
  store i32 %spi514, i32* %13, align 16
  store i32 134517848, i32* %14, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %62, i32 inreg noundef %tmp0_v3.i79.i, i32 noundef %tmp2_v10.i144.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %66 = load i32, i32* %57, align 4
  %tmp0_v2.i29.i = add i32 %66, 1
  store i32 %tmp0_v2.i29.i, i32* %57, align 4
  %67 = load i32, i32* %28, align 4
  %68 = icmp slt i32 %tmp0_v2.i29.i, %67
  br i1 %68, label %BB_804941C.i, label %.exit

BB_804935E.i:                                     ; preds = %BB_804935E.i, %0
  %storemerge1229 = phi i32 [ %tmp0_v2.i6.i, %BB_804935E.i ], [ 0, %0 ]
  %tmp0_v3.i152.i = mul i32 %storemerge1229, 12
  %69 = load i32, i32* %30, align 16
  %tmp0_v6.i155.i = add i32 %69, %tmp0_v3.i152.i
  %tmp2_v7.i156.i = add i32 %tmp0_v6.i155.i, 4
  %70 = inttoptr i32 %tmp2_v7.i156.i to i32*
  %71 = load i32, i32* %70, align 4
  %72 = inttoptr i32 %tmp0_v6.i155.i to i32*
  %73 = load i32, i32* %72, align 4
  store i32 %71, i32* %11, align 8
  store i32 %73, i32* %12, align 4
  %spi513 = ptrtoint[10 x i8]* @str.513 to i32
  store i32 %spi513, i32* %13, align 16
  store i32 134517658, i32* %14, align 4
  %74 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %71, i32 inreg noundef %tmp0_v3.i152.i, i32 noundef %tmp2_v10.i144.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %75 = load i32, i32* %45, align 16
  %tmp0_v2.i6.i = add i32 %75, 1
  store i32 %tmp0_v2.i6.i, i32* %45, align 16
  %76 = load i32, i32* %28, align 4
  %77 = icmp slt i32 %tmp0_v2.i6.i, %76
  br i1 %77, label %BB_804935E.i, label %BB_80493A9.i

.exit:                                            ; preds = %BB_804941C.i, %BB_80493A9.i
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
