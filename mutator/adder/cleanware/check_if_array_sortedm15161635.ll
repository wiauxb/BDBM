; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !6
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !6
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !6
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !6
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: norecurse
define internal fastcc void @check_if_array_sortedm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_804929C.exit.i:
  %tmp2_v.i122.i = add i32 %arg_esp, 4
  %tmp0_v.i123.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i125.i = add i32 %tmp0_v.i123.i, -4
  %2 = inttoptr i32 %tmp2_v3.i125.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i126.i = add i32 %tmp0_v.i123.i, -8
  %3 = inttoptr i32 %tmp2_v4.i126.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i128.i = add i32 %tmp0_v.i123.i, -12
  %4 = inttoptr i32 %tmp2_v5.i128.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i130.i = add i32 %tmp0_v.i123.i, -16
  %5 = inttoptr i32 %tmp2_v6.i130.i to i32*
  store i32 %tmp2_v.i122.i, i32* %5, align 16
  %tmp2_v8.i131.i = add i32 %tmp0_v.i123.i, -116
  %6 = inttoptr i32 %tmp2_v8.i131.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i88.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i88.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i92.i = add i32 %tmp0_v.i123.i, -20
  %9 = inttoptr i32 %tmp2_v2.i92.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i93.i = add i32 %tmp0_v.i123.i, -100
  %10 = inttoptr i32 %tmp2_v3.i93.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v4.i94.i = add i32 %tmp0_v.i123.i, -96
  %11 = inttoptr i32 %tmp2_v4.i94.i to i32*
  store i32 2, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i123.i, -92
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i123.i, -88
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i123.i, -84
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i123.i, -80
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i123.i, -76
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 7, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i123.i, -72
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 8, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i123.i, -68
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 9, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i123.i, -64
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 10, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i123.i, -60
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i123.i, -56
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 9, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i123.i, -52
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 8, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i123.i, -48
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 7, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i123.i, -44
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 6, i32* %24, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i123.i, -40
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 5, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i123.i, -36
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 4, i32* %26, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i123.i, -32
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 3, i32* %27, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i123.i, -28
  %28 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 2, i32* %28, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i123.i, -24
  %29 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 1, i32* %29, align 8
  %tmp2_v24.i.i = add i32 %tmp0_v.i123.i, -124
  %30 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 10, i32* %30, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i123.i, -128
  %31 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 %tmp2_v3.i93.i, i32* %31, align 16
  %tmp2_v27.i.i = add i32 %tmp0_v.i123.i, -132
  %32 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 134517404, i32* %32, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i123.i, -136
  %33 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i126.i, i32* %33, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i123.i, -156
  %34 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517817, i32* %34, align 4
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i123.i, -140
  %35 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %30, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %BB_804945A.i.i, label %Func_sorted_ascending.exit

BB_804945A.i.i:                                   ; preds = %BB_8049490.i.i, %Func_804929C.exit.i
  %storemerge14.i = phi i32 [ %tmp0_v1.i13.i.i, %BB_8049490.i.i ], [ 1, %Func_804929C.exit.i ]
  %tmp0_v1.i.i.i = shl i32 %storemerge14.i, 2
  %38 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i14 = add i32 %38, %tmp0_v1.i.i.i
  %tmp0_v4.i.i.i = add i32 %tmp4_v.i.i.i14, -4
  %39 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %40 = load i32, i32* %39, align 4
  %41 = inttoptr i32 %tmp4_v.i.i.i14 to i32*
  %42 = load i32, i32* %41, align 4
  %.not.i.i.i = icmp sgt i32 %40, %42
  %tmp0_v1.i13.i.i = add nuw nsw i32 %storemerge14.i, 1
  br i1 %.not.i.i.i, label %Func_sorted_ascending.exit, label %BB_8049490.i.i

BB_8049490.i.i:                                   ; preds = %BB_804945A.i.i
  store i32 %tmp0_v1.i13.i.i, i32* %35, align 4
  %43 = load i32, i32* %30, align 4
  %44 = icmp slt i32 %tmp0_v1.i13.i.i, %43
  br i1 %44, label %BB_804945A.i.i, label %Func_sorted_ascending.exit

Func_sorted_ascending.exit:                       ; preds = %BB_8049490.i.i, %BB_804945A.i.i, %Func_804929C.exit.i
  %45 = load i32, i32* %33, align 8
  store i32 134520840, i32* %31, align 16
  store i32 134517426, i32* %32, align 4
  %arg.i.i = load i32, i32* %31, align 16
  %46 = inttoptr i32 %arg.i.i to i8*
  %47 = tail call i32 @puts(i8* nonnull dereferenceable(1) %46)
  store i32 10, i32* %30, align 4
  %tmp2_v1.i12.i = add i32 %45, -52
  store i32 %tmp2_v1.i12.i, i32* %31, align 16
  store i32 134517463, i32* %32, align 4
  store i32 %45, i32* %33, align 8
  store i32 134517817, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %48 = load i32, i32* %30, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %BB_804945A.i.i28, label %Func_sorted_ascending.exit33

BB_804945A.i.i28:                                 ; preds = %BB_8049490.i.i29, %Func_sorted_ascending.exit
  %storemerge14.i22 = phi i32 [ %tmp0_v1.i13.i.i27, %BB_8049490.i.i29 ], [ 1, %Func_sorted_ascending.exit ]
  %tmp0_v1.i.i.i23 = shl i32 %storemerge14.i22, 2
  %50 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i24 = add i32 %50, %tmp0_v1.i.i.i23
  %tmp0_v4.i.i.i25 = add i32 %tmp4_v.i.i.i24, -4
  %51 = inttoptr i32 %tmp0_v4.i.i.i25 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = inttoptr i32 %tmp4_v.i.i.i24 to i32*
  %54 = load i32, i32* %53, align 4
  %.not.i.i.i26 = icmp sgt i32 %52, %54
  %tmp0_v1.i13.i.i27 = add nuw nsw i32 %storemerge14.i22, 1
  br i1 %.not.i.i.i26, label %Func_sorted_ascending.exit33, label %BB_8049490.i.i29

BB_8049490.i.i29:                                 ; preds = %BB_804945A.i.i28
  store i32 %tmp0_v1.i13.i.i27, i32* %35, align 4
  %55 = load i32, i32* %30, align 4
  %56 = icmp slt i32 %tmp0_v1.i13.i.i27, %55
  br i1 %56, label %BB_804945A.i.i28, label %Func_sorted_ascending.exit33

Func_sorted_ascending.exit33:                     ; preds = %BB_8049490.i.i29, %BB_804945A.i.i28, %Func_sorted_ascending.exit
  %57 = load i32, i32* %33, align 8
  store i32 134520901, i32* %31, align 16
  store i32 134517505, i32* %32, align 4
  %arg.i.i34 = load i32, i32* %31, align 16
  %58 = inttoptr i32 %arg.i.i34 to i8*
  %59 = tail call i32 @puts(i8* nonnull dereferenceable(1) %58)
  store i32 10, i32* %31, align 16
  store i32 134517518, i32* %32, align 4
  %arg.i.i35 = load i32, i32* %31, align 16
  %60 = tail call i32 @putchar(i32 %arg.i.i35)  nounwind 
  store i32 10, i32* %30, align 4
  %tmp2_v2.i79.i = add i32 %57, -92
  store i32 %tmp2_v2.i79.i, i32* %31, align 16
  store i32 134517535, i32* %32, align 4
  store i32 %57, i32* %33, align 8
  store i32 134517934, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %61 = load i32, i32* %30, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %BB_80494CF.i.i, label %Func_sorted_descending.exit

BB_8049505.i.i:                                   ; preds = %BB_80494CF.i.i
  store i32 %tmp0_v1.i.i.i41, i32* %35, align 4
  %63 = load i32, i32* %30, align 4
  %64 = icmp slt i32 %tmp0_v1.i.i.i41, %63
  br i1 %64, label %BB_80494CF.i.i, label %Func_sorted_descending.exit

BB_80494CF.i.i:                                   ; preds = %BB_8049505.i.i, %Func_sorted_ascending.exit33
  %storemerge14.i37 = phi i32 [ %tmp0_v1.i.i.i41, %BB_8049505.i.i ], [ 1, %Func_sorted_ascending.exit33 ]
  %tmp0_v1.i14.i.i = shl i32 %storemerge14.i37, 2
  %65 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i38 = add i32 %65, %tmp0_v1.i14.i.i
  %tmp0_v4.i.i.i39 = add i32 %tmp4_v.i.i.i38, -4
  %66 = inttoptr i32 %tmp0_v4.i.i.i39 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = inttoptr i32 %tmp4_v.i.i.i38 to i32*
  %69 = load i32, i32* %68, align 4
  %.not.i.i.i40 = icmp slt i32 %67, %69
  %tmp0_v1.i.i.i41 = add nuw nsw i32 %storemerge14.i37, 1
  br i1 %.not.i.i.i40, label %Func_sorted_descending.exit, label %BB_8049505.i.i

Func_sorted_descending.exit:                      ; preds = %BB_80494CF.i.i, %BB_8049505.i.i, %Func_sorted_ascending.exit33
  %70 = load i32, i32* %33, align 8
  store i32 134520943, i32* %31, align 16
  store i32 134517577, i32* %32, align 4
  %arg.i.i45 = load i32, i32* %31, align 16
  %71 = inttoptr i32 %arg.i.i45 to i8*
  %72 = tail call i32 @puts(i8* nonnull dereferenceable(1) %71)
  store i32 10, i32* %30, align 4
  %tmp2_v2.i41.i = add i32 %70, -52
  store i32 %tmp2_v2.i41.i, i32* %31, align 16
  store i32 134517594, i32* %32, align 4
  store i32 %70, i32* %33, align 8
  store i32 134517934, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %73 = load i32, i32* %30, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %BB_80494CF.i.i58, label %Func_sorted_descending.exit62

BB_8049505.i.i51:                                 ; preds = %BB_80494CF.i.i58
  store i32 %tmp0_v1.i.i.i57, i32* %35, align 4
  %75 = load i32, i32* %30, align 4
  %76 = icmp slt i32 %tmp0_v1.i.i.i57, %75
  br i1 %76, label %BB_80494CF.i.i58, label %Func_sorted_descending.exit62

BB_80494CF.i.i58:                                 ; preds = %BB_8049505.i.i51, %Func_sorted_descending.exit
  %storemerge14.i52 = phi i32 [ %tmp0_v1.i.i.i57, %BB_8049505.i.i51 ], [ 1, %Func_sorted_descending.exit ]
  %tmp0_v1.i14.i.i53 = shl i32 %storemerge14.i52, 2
  %77 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i54 = add i32 %77, %tmp0_v1.i14.i.i53
  %tmp0_v4.i.i.i55 = add i32 %tmp4_v.i.i.i54, -4
  %78 = inttoptr i32 %tmp0_v4.i.i.i55 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = inttoptr i32 %tmp4_v.i.i.i54 to i32*
  %81 = load i32, i32* %80, align 4
  %.not.i.i.i56 = icmp slt i32 %79, %81
  %tmp0_v1.i.i.i57 = add nuw nsw i32 %storemerge14.i52, 1
  br i1 %.not.i.i.i56, label %Func_sorted_descending.exit62, label %BB_8049505.i.i51

Func_sorted_descending.exit62:                    ; preds = %BB_80494CF.i.i58, %BB_8049505.i.i51, %Func_sorted_descending.exit
  %82 = load i32, i32* %33, align 8
  store i32 134520965, i32* %31, align 16
  store i32 134517616, i32* %32, align 4
  %arg.i.i63 = load i32, i32* %31, align 16
  %83 = inttoptr i32 %arg.i.i63 to i8*
  %84 = tail call i32 @puts(i8* nonnull dereferenceable(1) %83)
  store i32 10, i32* %31, align 16
  store i32 134517649, i32* %32, align 4
  %arg.i.i64 = load i32, i32* %31, align 16
  %85 = tail call i32 @putchar(i32 %arg.i.i64)  nounwind 
  store i32 10, i32* %30, align 4
  %tmp2_v2.i31.i = add i32 %82, -92
  store i32 %tmp2_v2.i31.i, i32* %31, align 16
  store i32 134517666, i32* %32, align 4
  %86 = tail call fastcc { i32, i32 } @Func_sorted(i32 %tmp2_v27.i.i, i32 %82)
  %newret = extractvalue { i32, i32 } %86, 0
  %newret8 = extractvalue { i32, i32 } %86, 1
  %87 = inttoptr i32 %newret to i32*
  store i32 134521008, i32* %87, align 4
  %tmp2_v2.i137.i = add i32 %newret, -4
  %88 = inttoptr i32 %tmp2_v2.i137.i to i32*
  store i32 134517688, i32* %88, align 4
  %arg.i.i65 = load i32, i32* %87, align 4
  %89 = inttoptr i32 %arg.i.i65 to i8*
  %90 = tail call i32 @puts(i8* nonnull dereferenceable(1) %89)
  %tmp2_v.i51.i = add i32 %newret, 4
  %91 = inttoptr i32 %tmp2_v.i51.i to i32*
  store i32 10, i32* %91, align 4
  %tmp2_v1.i53.i = add i32 %newret8, -52
  store i32 %tmp2_v1.i53.i, i32* %87, align 4
  store i32 134517725, i32* %88, align 4
  %92 = tail call fastcc { i32, i32 } @Func_sorted(i32 %tmp2_v2.i137.i, i32 %newret8)
  %newret10 = extractvalue { i32, i32 } %92, 0
  %93 = inttoptr i32 %newret10 to i32*
  store i32 134521043, i32* %93, align 4
  %tmp2_v2.i61.i = add i32 %newret10, -4
  %94 = inttoptr i32 %tmp2_v2.i61.i to i32*
  store i32 134517747, i32* %94, align 4
  %arg.i.i66 = load i32, i32* %93, align 4
  %95 = inttoptr i32 %arg.i.i66 to i8*
  %96 = tail call i32 @puts(i8* nonnull dereferenceable(1) %95)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind
define internal fastcc { i32, i32 } @Func_sorted(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree norecurse nosync nounwind  !retregs !11 {
Func_8049530.exit.i:
  %tmp2_v.i12.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i12.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i14.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i14.i to i32*
  store i32 134518048, i32* %1, align 4
  %tmp2_v.i6.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i6.i to i32*
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, 4
  %4 = inttoptr i32 %tmp2_v3.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v5.i10.i = add i32 %arg_esp, -12
  %6 = inttoptr i32 %tmp2_v5.i10.i to i32*
  store i32 %5, i32* %6, align 4
  %tmp2_v6.i.i = add i32 %arg_esp, -16
  %7 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134518064, i32* %7, align 4
  %tmp2_v.i1.i.i = add i32 %arg_esp, -20
  %8 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v.i12.i, i32* %8, align 4
  %tmp2_v1.i.i.i = add i32 %arg_esp, -40
  %9 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517817, i32* %9, align 4
  %tmp2_v.i20.i.i = add i32 %arg_esp, -24
  %10 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %BB_804945A.i.i, label %.exit

BB_804945A.i.i:                                   ; preds = %BB_8049490.i.i, %Func_8049530.exit.i
  %storemerge14.i = phi i32 [ %tmp0_v1.i13.i.i, %BB_8049490.i.i ], [ 1, %Func_8049530.exit.i ]
  %tmp0_v1.i.i.i = shl i32 %storemerge14.i, 2
  %13 = load i32, i32* %6, align 4
  %tmp4_v.i.i.i4 = add i32 %13, %tmp0_v1.i.i.i
  %tmp0_v4.i.i.i = add i32 %tmp4_v.i.i.i4, -4
  %14 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %15 = load i32, i32* %14, align 4
  %16 = inttoptr i32 %tmp4_v.i.i.i4 to i32*
  %17 = load i32, i32* %16, align 4
  %.not.i.i.i = icmp sgt i32 %15, %17
  %tmp0_v1.i13.i.i = add nuw nsw i32 %storemerge14.i, 1
  br i1 %.not.i.i.i, label %BB_8049537.i, label %BB_8049490.i.i

BB_8049490.i.i:                                   ; preds = %BB_804945A.i.i
  store i32 %tmp0_v1.i13.i.i, i32* %10, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %tmp0_v1.i13.i.i, %18
  br i1 %19, label %BB_804945A.i.i, label %.exit

BB_8049537.i:                                     ; preds = %BB_804945A.i.i
  %20 = load i32, i32* %8, align 4
  %tmp2_v.i.i = add i32 %20, 12
  %21 = inttoptr i32 %tmp2_v.i.i to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %1, align 4
  %tmp2_v2.i.i = add i32 %20, 8
  %23 = inttoptr i32 %tmp2_v2.i.i to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  store i32 134518082, i32* %7, align 4
  store i32 %20, i32* %8, align 4
  store i32 134517934, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %BB_80494CF.i.i, label %.exit

BB_8049505.i.i:                                   ; preds = %BB_80494CF.i.i
  store i32 %tmp0_v1.i.i.i10, i32* %10, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %tmp0_v1.i.i.i10, %27
  br i1 %28, label %BB_80494CF.i.i, label %.exit

BB_80494CF.i.i:                                   ; preds = %BB_8049505.i.i, %BB_8049537.i
  %storemerge14.i6 = phi i32 [ %tmp0_v1.i.i.i10, %BB_8049505.i.i ], [ 1, %BB_8049537.i ]
  %tmp0_v1.i14.i.i = shl i32 %storemerge14.i6, 2
  %29 = load i32, i32* %6, align 4
  %tmp4_v.i.i.i7 = add i32 %29, %tmp0_v1.i14.i.i
  %tmp0_v4.i.i.i8 = add i32 %tmp4_v.i.i.i7, -4
  %30 = inttoptr i32 %tmp0_v4.i.i.i8 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = inttoptr i32 %tmp4_v.i.i.i7 to i32*
  %33 = load i32, i32* %32, align 4
  %.not.i.i.i9 = icmp slt i32 %31, %33
  %tmp0_v1.i.i.i10 = add nuw nsw i32 %storemerge14.i6, 1
  br i1 %.not.i.i.i9, label %.exit, label %BB_8049505.i.i

.exit:                                            ; preds = %BB_80494CF.i.i, %BB_8049505.i.i, %BB_8049537.i, %BB_8049490.i.i, %Func_8049530.exit.i
  %r_ebp.0 = load i32, i32* %8, align 4
  %34 = inttoptr i32 %r_ebp.0 to i32*
  %35 = load i32, i32* %34, align 4
  %tmp4_v3.i.i = add i32 %r_ebp.0, 8
  %newret = insertvalue { i32, i32 } undef, i32 %tmp4_v3.i.i, 0
  %newret3 = insertvalue { i32, i32 } %newret, i32 %35, 1
  ret { i32, i32 } %newret3
}

!0 = !{!"clang version 14.0.0"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 1, !"NumRegisterParameters", i32 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i32 0, i32 0, i32 0}
!11 = !{i32 0, i32 2}

  tail call fastcc void @check_if_array_sortedm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
