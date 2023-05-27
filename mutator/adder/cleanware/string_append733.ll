; Mutation 733
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack732 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.731 = constant [11 x i8] c"first: %s\0a\00"

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
declare i32 @strcat(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @calloc(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @string_append733(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
.exit:
  %tmp2_v.i25.i = add i32 %arg_esp, 4
  %tmp0_v.i26.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i28.i = add i32 %tmp0_v.i26.i, -4
  %2 = inttoptr i32 %tmp2_v3.i28.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i29.i = add i32 %tmp0_v.i26.i, -8
  %3 = inttoptr i32 %tmp2_v4.i29.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i31.i = add i32 %tmp0_v.i26.i, -12
  %4 = inttoptr i32 %tmp2_v5.i31.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i33.i = add i32 %tmp0_v.i26.i, -16
  %5 = inttoptr i32 %tmp2_v6.i33.i to i32*
  store i32 %tmp2_v.i25.i, i32* %5, align 16
  %tmp2_v8.i34.i = add i32 %tmp0_v.i26.i, -68
  %6 = inttoptr i32 %tmp2_v8.i34.i to i32*
  store i32 134517329, i32* %6, align 4
  %tmp4_v.i7.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i26.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i26.i, -40
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936877894, i32* %10, align 8
  %tmp2_v4.i11.i = add i32 %tmp0_v.i26.i, -36
  %11 = inttoptr i32 %tmp2_v4.i11.i to i32*
  store i32 8308, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i26.i, -32
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i26.i, -28
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i26.i, -24
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 0, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i26.i, -50
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1868784979, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i26.i, -46
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 25710, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i26.i, -42
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 0, i16* %17, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i26.i, -76
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v8.i.i, i32* %18, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i26.i, -80
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i26.i, -84
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517417, i32* %20, align 4
  %arg.i.i = load i32, i32* %19, align 16
  %arg2.i.i = load i32, i32* %18, align 4
  %21 = tail call i32 @strcat(i32 %arg.i.i, i32 %arg2.i.i)
  store i32 %tmp2_v3.i.i, i32* %18, align 4
  %spi.bis.731 = ptrtoint[11 x i8]* @str.731 to i32
  store i32 %spi.bis.731, i32* %19, align 16
  store i32 134517439, i32* %20, align 4
  %22 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i25.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %tmp2_v.i38.i = add i32 %tmp0_v.i26.i, -59
  %23 = inttoptr i32 %tmp2_v.i38.i to i32*
  store i32 6513249, i32* %23, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i26.i, -55
  %24 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2054781047, i32* %24, align 4
  %tmp2_v2.i39.i = add i32 %tmp0_v.i26.i, -51
  %25 = inttoptr i32 %tmp2_v2.i39.i to i8*
  store i8 0, i8* %25, align 1
  store i32 %tmp2_v1.i.i, i32* %18, align 4
  store i32 %tmp2_v.i38.i, i32* %19, align 16
  store i32 134517476, i32* %20, align 4
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i26.i, -88
  %26 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 %tmp2_v4.i29.i, i32* %26, align 8
  %tmp2_v1.i22.i.i = add i32 %tmp0_v.i26.i, -92
  %27 = inttoptr i32 %tmp2_v1.i22.i.i to i32*
  store i32 134529024, i32* %27, align 4
  %tmp2_v2.i24.i.i = add i32 %tmp0_v.i26.i, -132
  %28 = inttoptr i32 %tmp2_v2.i24.i.i to i32*
  store i32 134517565, i32* %28, align 4
  %29 = load i32, i32* %19, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i26.i, -144
  %30 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v4.i32.i.i = add i32 %tmp0_v.i26.i, -148
  %31 = inttoptr i32 %tmp2_v4.i32.i.i to i32*
  store i32 134517582, i32* %31, align 4
  %arg.i.i.i = load i32, i32* %30, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i26.i, -112
  %33 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %30, align 16
  store i32 134517599, i32* %31, align 4
  %arg.i.i31.i = load i32, i32* %30, align 16
  %35 = tail call i32 @strlen(i32 %arg.i.i31.i)
  %tmp2_v.i51.i.i = add i32 %tmp0_v.i26.i, -108
  %36 = inttoptr i32 %tmp2_v.i51.i.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %33, align 16
  %tmp0_v5.i57.i.i = add i32 %35, 1
  %tmp0_v6.i58.i.i = add i32 %tmp0_v5.i57.i.i, %37
  %tmp2_v7.i59.i.i = add i32 %tmp0_v.i26.i, -104
  %38 = inttoptr i32 %tmp2_v7.i59.i.i to i32*
  store i32 %tmp0_v6.i58.i.i, i32* %38, align 8
  %tmp2_v11.i.i.i = add i32 %tmp0_v.i26.i, -140
  %39 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  store i32 1, i32* %39, align 4
  store i32 %tmp0_v6.i58.i.i, i32* %30, align 16
  store i32 134517633, i32* %31, align 4
  %arg.i.i33.i = load i32, i32* %30, align 16
  %arg2.i.i.i = load i32, i32* %39, align 4
  %40 = tail call i32 @calloc(i32 %arg.i.i33.i, i32 %arg2.i.i.i)
  %tmp2_v.i36.i.i = add i32 %tmp0_v.i26.i, -100
  %41 = inttoptr i32 %tmp2_v.i36.i.i to i32*
  store i32 %40, i32* %41, align 4
  %tmp2_v1.i38.i.i = add i32 %tmp0_v.i26.i, -120
  %42 = inttoptr i32 %tmp2_v1.i38.i.i to i32*
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %33, align 16
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_8049390.i.i, label %BB_80493B1.i.i

BB_80493BA.i.i:                                   ; preds = %BB_80493B1.i.i, %BB_80493BA.i.i
  %storemerge2735.i = phi i32 [ %tmp0_v15.i.i.i, %BB_80493BA.i.i ], [ 0, %BB_80493B1.i.i ]
  %45 = load i32, i32* %18, align 4
  %tmp0_v3.i15.i.i = add i32 %45, %storemerge2735.i
  %46 = load i32, i32* %33, align 16
  %tmp0_v8.i.i.i = add i32 %46, %storemerge2735.i
  %47 = load i32, i32* %41, align 4
  %tmp0_v11.i.i.i = add i32 %47, %tmp0_v8.i.i.i
  %48 = inttoptr i32 %tmp0_v3.i15.i.i to i8*
  %49 = load i8, i8* %48, align 1
  %50 = inttoptr i32 %tmp0_v11.i.i.i to i8*
  store i8 %49, i8* %50, align 1
  %51 = load i32, i32* %54, align 4
  %tmp0_v15.i.i.i = add i32 %51, 1
  store i32 %tmp0_v15.i.i.i, i32* %54, align 4
  %52 = load i32, i32* %36, align 4
  %53 = icmp slt i32 %tmp0_v15.i.i.i, %52
  br i1 %53, label %BB_80493BA.i.i, label %Func_string_append.exit

BB_80493B1.i.i:                                   ; preds = %BB_8049390.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i25.i, %.exit ], [ %storemerge34.i, %BB_8049390.i.i ]
  %tmp2_v.i64.i.i = add i32 %tmp0_v.i26.i, -116
  %54 = inttoptr i32 %tmp2_v.i64.i.i to i32*
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %36, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %BB_80493BA.i.i, label %Func_string_append.exit

BB_8049390.i.i:                                   ; preds = %BB_8049390.i.i, %.exit
  %storemerge34.i = phi i32 [ %tmp0_v12.i78.i.i, %BB_8049390.i.i ], [ 0, %.exit ]
  %57 = load i32, i32* %19, align 16
  %tmp0_v3.i70.i.i = add i32 %57, %storemerge34.i
  %58 = load i32, i32* %41, align 4
  %tmp0_v8.i75.i.i = add i32 %58, %storemerge34.i
  %59 = inttoptr i32 %tmp0_v3.i70.i.i to i8*
  %60 = load i8, i8* %59, align 1
  %61 = inttoptr i32 %tmp0_v8.i75.i.i to i8*
  store i8 %60, i8* %61, align 1
  %62 = load i32, i32* %42, align 8
  %tmp0_v12.i78.i.i = add i32 %62, 1
  store i32 %tmp0_v12.i78.i.i, i32* %42, align 8
  %63 = load i32, i32* %33, align 16
  %64 = icmp slt i32 %tmp0_v12.i78.i.i, %63
  br i1 %64, label %BB_8049390.i.i, label %BB_80493B1.i.i

Func_string_append.exit:                          ; preds = %BB_80493B1.i.i, %BB_80493BA.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_80493B1.i.i ], [ %tmp0_v8.i.i.i, %BB_80493BA.i.i ]
  %65 = load i32, i32* %38, align 8
  %tmp2_v1.i42.i.i = add i32 %65, -1
  %66 = load i32, i32* %41, align 4
  %tmp0_v4.i.i.i = add i32 %66, %tmp2_v1.i42.i.i
  %67 = inttoptr i32 %tmp0_v4.i.i.i to i8*
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %41, align 4
  %69 = load i32, i32* %27, align 4
  %70 = load i32, i32* %26, align 8
  %tmp2_v.i16.i = add i32 %70, -56
  %71 = inttoptr i32 %tmp2_v.i16.i to i32*
  store i32 %68, i32* %71, align 4
  store i32 %68, i32* %18, align 4
  %tmp2_v5.i22.i = add i32 %69, -8173
  store i32 %tmp2_v5.i22.i, i32* %19, align 16
  store i32 134517500, i32* %20, align 4
  %72 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp2_v1.i42.i.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %73 = load i32, i32* %71, align 4
  store i32 %73, i32* %19, align 16
  store i32 134517514, i32* %20, align 4
  %arg.i.i4 = load i32, i32* %19, align 16
  tail call void @free(i32 %arg.i.i4)
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

  tail call fastcc void @string_append733 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack732, i32 0, i32 8092) to i32)) nounwind
