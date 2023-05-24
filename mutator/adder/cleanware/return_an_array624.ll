; Mutation 624
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack623 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.621 = constant [16 x i8] c"array[%d] = %d\0a\00"

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
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @return_an_array624(i32 %arg_esp) unnamed_addr  norecurse  !retregs !12 {
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
  store i32 134517474, i32* %7, align 4
  %tmp4_v.i20.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i24.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i24.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i.i, -40
  %11 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 1, i32* %11, align 8
  %tmp2_v4.i26.i = add i32 %tmp0_v.i.i, -36
  %12 = inttoptr i32 %tmp2_v4.i26.i to i32*
  store i32 2, i32* %12, align 4
  %tmp2_v5.i27.i = add i32 %tmp0_v.i.i, -32
  %13 = inttoptr i32 %tmp2_v5.i27.i to i32*
  store i32 3, i32* %13, align 16
  %tmp2_v6.i28.i = add i32 %tmp0_v.i.i, -28
  %14 = inttoptr i32 %tmp2_v6.i28.i to i32*
  store i32 4, i32* %14, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -24
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %15, align 8
  store i32 %tmp2_v3.i25.i, i32* %7, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -72
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 4, i32* %16, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -76
  %17 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517537, i32* %17, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i.i, -80
  %18 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %18, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -100
  %19 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517253, i32* %19, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -84
  %20 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %20, align 4
  br label %BB_8049213.i.i

BB_8049213.i.i:                                   ; preds = %BB_8049213.i.i, %0
  %storemerge5.i = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i.i, %BB_8049213.i.i ]
  %tmp4_v.i.i.i11 = shl i32 %storemerge5.i, 2
  %21 = load i32, i32* %7, align 4
  %tmp0_v3.i.i.i = add i32 %21, %tmp4_v.i.i.i11
  %22 = load i32, i32* %16, align 8
  %23 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %20, align 4
  %tmp0_v8.i.i.i = add i32 %24, 1
  store i32 %tmp0_v8.i.i.i, i32* %20, align 4
  %25 = icmp slt i32 %tmp0_v8.i.i.i, 5
  br i1 %25, label %BB_8049213.i.i, label %Func_set_array1.exit

Func_set_array1.exit:                             ; preds = %BB_8049213.i.i
  %26 = load i32, i32* %18, align 16
  %tmp2_v.i129.i = add i32 %26, -52
  %27 = inttoptr i32 %tmp2_v.i129.i to i32*
  %tmp2_v1.i75.i = add i32 %26, -32
  store i32 0, i32* %27, align 4
  br label %BB_804932D.i

BB_804939E.i:                                     ; preds = %BB_804936D.i
  %28 = load i32, i32* %74, align 4
  store i32 %28, i32* %18, align 16
  store i32 134517673, i32* %20, align 4
  %arg.i.i = load i32, i32* %18, align 16
  tail call void @free(i32 %arg.i.i)
  store i32 4, i32* %18, align 16
  store i32 134517686, i32* %20, align 4
  store i32 %73, i32* %59, align 8
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i.i, -108
  %29 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 134517402, i32* %29, align 4
  store i32 0, i32* %60, align 4
  br label %BB_80492A8.i.i

BB_80492A8.i.i:                                   ; preds = %BB_80492A8.i.i, %BB_804939E.i
  %storemerge11.i = phi i32 [ 0, %BB_804939E.i ], [ %tmp0_v7.i.i.i, %BB_80492A8.i.i ]
  %30 = load i32, i32* %18, align 16
  %tmp4_v.i.i.i13 = shl i32 %storemerge11.i, 2
  %tmp2_v4.i.i.i14 = add i32 %tmp4_v.i.i.i13, 134529068
  %31 = inttoptr i32 %tmp2_v4.i.i.i14 to i32*
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %60, align 4
  %tmp0_v7.i.i.i = add i32 %32, 1
  store i32 %tmp0_v7.i.i.i, i32* %60, align 4
  %33 = icmp slt i32 %tmp0_v7.i.i.i, 5
  br i1 %33, label %BB_80492A8.i.i, label %Func_set_array3.exit

Func_set_array3.exit:                             ; preds = %BB_80492A8.i.i
  %34 = load i32, i32* %59, align 8
  %tmp2_v.i124.i = add i32 %34, -36
  %35 = inttoptr i32 %tmp2_v.i124.i to i32*
  store i32 134529068, i32* %35, align 4
  %tmp2_v1.i125.i = add i32 %34, -44
  %36 = inttoptr i32 %tmp2_v1.i125.i to i32*
  %tmp2_v10.i62.i = add i32 %72, -8150
  store i32 0, i32* %36, align 4
  br label %BB_80493C5.i

BB_80493C5.i:                                     ; preds = %BB_80493C5.i, %Func_set_array3.exit
  %storemerge836 = phi i32 [ 0, %Func_set_array3.exit ], [ %tmp0_v2.i11.i, %BB_80493C5.i ]
  %tmp4_v.i53.i = shl i32 %storemerge836, 2
  %37 = load i32, i32* %35, align 4
  %tmp0_v3.i.i = add i32 %37, %tmp4_v.i53.i
  %38 = inttoptr i32 %tmp0_v3.i.i to i32*
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 8
  %40 = load i32, i32* %36, align 4
  store i32 %40, i32* %17, align 4
  store i32 %tmp2_v10.i62.i, i32* %18, align 16
  store i32 134517737, i32* %20, align 4
  %41 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %30, i32 inreg noundef %tmp4_v.i53.i, i32 noundef %tmp2_v.i1.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %42 = load i32, i32* %36, align 4
  %tmp0_v2.i11.i = add i32 %42, 1
  store i32 %tmp0_v2.i11.i, i32* %36, align 4
  %43 = icmp slt i32 %tmp0_v2.i11.i, 5
  br i1 %43, label %BB_80493C5.i, label %.exit

BB_804932D.i:                                     ; preds = %BB_804932D.i, %Func_set_array1.exit
  %r_edx.034 = phi i32 [ %tmp0_v3.i.i.i, %Func_set_array1.exit ], [ %49, %BB_804932D.i ]
  %storemerge33 = phi i32 [ 0, %Func_set_array1.exit ], [ %tmp0_v2.i135.i, %BB_804932D.i ]
  %tmp4_v.i76.i = shl i32 %storemerge33, 2
  %tmp2_v2.i77.i = add i32 %tmp2_v1.i75.i, %tmp4_v.i76.i
  %44 = inttoptr i32 %tmp2_v2.i77.i to i32*
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 8
  %46 = load i32, i32* %27, align 4
  store i32 %46, i32* %17, align 4
  %spi621 = ptrtoint[16 x i8]* @str.621 to i32
  store i32 %spi621, i32* %18, align 16
  store i32 134517575, i32* %20, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.034, i32 noundef %tmp2_v.i1.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %27, align 4
  %tmp0_v2.i135.i = add i32 %50, 1
  store i32 %tmp0_v2.i135.i, i32* %27, align 4
  %51 = icmp slt i32 %tmp0_v2.i135.i, 5
  br i1 %51, label %BB_804932D.i, label %BB_8049354.i

BB_804936D.i:                                     ; preds = %Func_set_array2.exit, %BB_804936D.i
  %storemerge735 = phi i32 [ 0, %Func_set_array2.exit ], [ %tmp0_v2.i41.i, %BB_804936D.i ]
  %tmp4_v.i92.i = shl i32 %storemerge735, 2
  %52 = load i32, i32* %74, align 4
  %tmp0_v3.i95.i = add i32 %52, %tmp4_v.i92.i
  %53 = inttoptr i32 %tmp0_v3.i95.i to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 8
  %55 = load i32, i32* %75, align 4
  store i32 %55, i32* %17, align 4
  store i32 %tmp2_v10.i104.i, i32* %18, align 16
  store i32 134517649, i32* %20, align 4
  %56 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %tmp4_v.i92.i, i32 noundef %tmp2_v.i1.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !13
  %57 = load i32, i32* %75, align 4
  %tmp0_v2.i41.i = add i32 %57, 1
  store i32 %tmp0_v2.i41.i, i32* %75, align 4
  %58 = icmp slt i32 %tmp0_v2.i41.i, 5
  br i1 %58, label %BB_804936D.i, label %BB_804939E.i

BB_8049354.i:                                     ; preds = %BB_804932D.i
  store i32 4, i32* %18, align 16
  store i32 134517598, i32* %20, align 4
  %tmp2_v.i1.i.i23 = add i32 %tmp0_v.i.i, -88
  %59 = inttoptr i32 %tmp2_v.i1.i.i23 to i32*
  store i32 %26, i32* %59, align 8
  %tmp2_v1.i.i.i24 = add i32 %tmp0_v.i.i, -92
  %60 = inttoptr i32 %tmp2_v1.i.i.i24 to i32*
  store i32 134529024, i32* %60, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -116
  %61 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517317, i32* %61, align 4
  %tmp2_v.i12.i.i = add i32 %tmp0_v.i.i, -128
  %62 = inttoptr i32 %tmp2_v.i12.i.i to i32*
  store i32 20, i32* %62, align 16
  %tmp2_v2.i13.i.i = add i32 %tmp0_v.i.i, -132
  %63 = inttoptr i32 %tmp2_v2.i13.i.i to i32*
  store i32 134517334, i32* %63, align 4
  %arg.i.i.i = load i32, i32* %62, align 16
  %64 = tail call i32 @malloc(i32 %arg.i.i.i)
  store i32 %64, i32* %19, align 4
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i.i, -104
  %65 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
  store i32 0, i32* %65, align 8
  br label %BB_8049265.i.i

BB_8049265.i.i:                                   ; preds = %BB_8049265.i.i, %BB_8049354.i
  %storemerge14.i = phi i32 [ 0, %BB_8049354.i ], [ %tmp0_v8.i.i.i28, %BB_8049265.i.i ]
  %tmp4_v.i.i.i26 = shl i32 %storemerge14.i, 2
  %66 = load i32, i32* %19, align 4
  %tmp0_v3.i.i.i27 = add i32 %66, %tmp4_v.i.i.i26
  %67 = load i32, i32* %18, align 16
  %68 = inttoptr i32 %tmp0_v3.i.i.i27 to i32*
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %65, align 8
  %tmp0_v8.i.i.i28 = add i32 %69, 1
  store i32 %tmp0_v8.i.i.i28, i32* %65, align 8
  %70 = icmp slt i32 %tmp0_v8.i.i.i28, 5
  br i1 %70, label %BB_8049265.i.i, label %Func_set_array2.exit

Func_set_array2.exit:                             ; preds = %BB_8049265.i.i
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %60, align 4
  %73 = load i32, i32* %59, align 8
  %tmp2_v.i143.i = add i32 %73, -40
  %74 = inttoptr i32 %tmp2_v.i143.i to i32*
  store i32 %71, i32* %74, align 4
  %tmp2_v1.i145.i = add i32 %73, -48
  %75 = inttoptr i32 %tmp2_v1.i145.i to i32*
  %tmp2_v10.i104.i = add i32 %72, -8168
  store i32 0, i32* %75, align 4
  br label %BB_804936D.i

.exit:                                            ; preds = %BB_80493C5.i
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

  tail call fastcc void @return_an_array624 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack623, i32 0, i32 8092) to i32)) nounwind
