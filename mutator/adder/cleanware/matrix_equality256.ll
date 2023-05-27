; Mutation 256
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack255 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.253 = constant [5 x i8] c"A!=B\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: norecurse
define internal fastcc void @matrix_equality256(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
label_1.i.i:
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i17.i, -4
  %2 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i17.i, -8
  %3 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i21.i = add i32 %tmp0_v.i17.i, -12
  %4 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i23.i = add i32 %tmp0_v.i17.i, -16
  %5 = inttoptr i32 %tmp2_v6.i23.i to i32*
  store i32 %tmp2_v.i16.i, i32* %5, align 16
  %tmp2_v8.i24.i = add i32 %tmp0_v.i17.i, -132
  %6 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i8.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i17.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i17.i, -116
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v4.i13.i = add i32 %tmp0_v.i17.i, -112
  %11 = inttoptr i32 %tmp2_v4.i13.i to i32*
  store i32 2, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i17.i, -108
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i17.i, -104
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i17.i, -100
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i17.i, -96
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 2, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i17.i, -92
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i17.i, -88
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 4, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i17.i, -84
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i17.i, -80
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 2, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i17.i, -76
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 3, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i17.i, -72
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 4, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i17.i, -68
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 1, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i17.i, -64
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 2, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i17.i, -60
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 3, i32* %24, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i17.i, -56
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 4, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i17.i, -52
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 1, i32* %26, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i17.i, -48
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 2, i32* %27, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i17.i, -44
  %28 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 5, i32* %28, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i17.i, -40
  %29 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 4, i32* %29, align 8
  %tmp2_v23.i.i = add i32 %tmp0_v.i17.i, -36
  %30 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 1, i32* %30, align 4
  %tmp2_v24.i.i = add i32 %tmp0_v.i17.i, -32
  %31 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 2, i32* %31, align 16
  %tmp2_v25.i.i = add i32 %tmp0_v.i17.i, -28
  %32 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 3, i32* %32, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i17.i, -24
  %33 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 4, i32* %33, align 8
  %tmp2_v29.i.i = add i32 %tmp0_v.i17.i, -140
  %34 = inttoptr i32 %tmp2_v29.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %34, align 4
  %tmp2_v31.i.i = add i32 %tmp0_v.i17.i, -144
  %35 = inttoptr i32 %tmp2_v31.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %35, align 16
  %tmp2_v32.i.i = add i32 %tmp0_v.i17.i, -148
  %36 = inttoptr i32 %tmp2_v32.i.i to i32*
  store i32 134517402, i32* %36, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i17.i, -152
  %37 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i19.i, i32* %37, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i17.i, -172
  %38 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517494, i32* %38, align 4
  %tmp2_v.i31.i.i = add i32 %tmp0_v.i17.i, -160
  %39 = inttoptr i32 %tmp2_v.i31.i.i to i32*
  %tmp2_v.i38.i.i = add i32 %tmp0_v.i17.i, -156
  %40 = inttoptr i32 %tmp2_v.i38.i.i to i32*
  store i32 0, i32* %39, align 16
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %39, align 16
  %tmp0_v1.i15.i.i1 = shl i32 %41, 4
  %42 = load i32, i32* %35, align 16
  %tmp2_v7.i.i.i2 = add i32 %tmp0_v1.i15.i.i1, %42
  %43 = inttoptr i32 %tmp2_v7.i.i.i2 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %34, align 4
  %tmp2_v19.i.i.i3 = add i32 %45, %tmp0_v1.i15.i.i1
  %46 = inttoptr i32 %tmp2_v19.i.i.i3 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %BB_8049342.i.i, label %Func_matrix_equality.exit

BB_8049342.i.i:                                   ; preds = %BB_8049342.i.3.i, %label_1.i.i
  store i32 1, i32* %40, align 4
  %49 = load i32, i32* %39, align 16
  %tmp0_v1.i15.i.1.i = shl i32 %49, 4
  %50 = load i32, i32* %35, align 16
  %tmp0_v4.i.i.1.i = or i32 %tmp0_v1.i15.i.1.i, 4
  %tmp2_v7.i.i.1.i = add i32 %tmp0_v4.i.i.1.i, %50
  %51 = inttoptr i32 %tmp2_v7.i.i.1.i to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %34, align 4
  %tmp2_v19.i.i.1.i = add i32 %53, %tmp0_v4.i.i.1.i
  %54 = inttoptr i32 %tmp2_v19.i.i.1.i to i32*
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %BB_8049342.i.1.i, label %Func_matrix_equality.exit

BB_8049342.i.1.i:                                 ; preds = %BB_8049342.i.i
  store i32 2, i32* %40, align 4
  %57 = load i32, i32* %39, align 16
  %tmp0_v1.i15.i.2.i = shl i32 %57, 4
  %58 = load i32, i32* %35, align 16
  %tmp0_v4.i.i.2.i = or i32 %tmp0_v1.i15.i.2.i, 8
  %tmp2_v7.i.i.2.i = add i32 %tmp0_v4.i.i.2.i, %58
  %59 = inttoptr i32 %tmp2_v7.i.i.2.i to i32*
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %34, align 4
  %tmp2_v19.i.i.2.i = add i32 %61, %tmp0_v4.i.i.2.i
  %62 = inttoptr i32 %tmp2_v19.i.i.2.i to i32*
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %BB_8049342.i.2.i, label %Func_matrix_equality.exit

BB_8049342.i.2.i:                                 ; preds = %BB_8049342.i.1.i
  store i32 3, i32* %40, align 4
  %65 = load i32, i32* %39, align 16
  %tmp0_v1.i15.i.3.i = shl i32 %65, 4
  %66 = load i32, i32* %35, align 16
  %tmp0_v4.i.i.3.i = or i32 %tmp0_v1.i15.i.3.i, 12
  %tmp2_v7.i.i.3.i = add i32 %tmp0_v4.i.i.3.i, %66
  %67 = inttoptr i32 %tmp2_v7.i.i.3.i to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %34, align 4
  %tmp2_v19.i.i.3.i = add i32 %69, %tmp0_v4.i.i.3.i
  %70 = inttoptr i32 %tmp2_v19.i.i.3.i to i32*
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %BB_8049342.i.3.i, label %Func_matrix_equality.exit

BB_8049342.i.3.i:                                 ; preds = %BB_8049342.i.2.i
  store i32 4, i32* %40, align 4
  %73 = load i32, i32* %39, align 16
  %tmp0_v1.i24.i.i = add i32 %73, 1
  store i32 %tmp0_v1.i24.i.i, i32* %39, align 16
  store i32 0, i32* %40, align 4
  %74 = load i32, i32* %39, align 16
  %tmp0_v1.i15.i.i = shl i32 %74, 4
  %75 = load i32, i32* %35, align 16
  %tmp2_v7.i.i.i = add i32 %tmp0_v1.i15.i.i, %75
  %76 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %34, align 4
  %tmp2_v19.i.i.i = add i32 %78, %tmp0_v1.i15.i.i
  %79 = inttoptr i32 %tmp2_v19.i.i.i to i32*
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %BB_8049342.i.i, label %Func_matrix_equality.exit

Func_matrix_equality.exit:                        ; preds = %BB_8049342.i.3.i, %BB_8049342.i.2.i, %BB_8049342.i.1.i, %BB_8049342.i.i, %label_1.i.i
  %spi.bis.253 = ptrtoint[5 x i8]* @str.253 to i32
  store i32 %spi.bis.253, i32* %35, align 16
  store i32 134517444, i32* %36, align 4
  %arg.i.i = load i32, i32* %35, align 16
  %82 = inttoptr i32 %arg.i.i to i8*
  %83 = tail call i32 @puts(i8* nonnull dereferenceable(1) %82)
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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i32 0, i32 0, i32 0}

  tail call fastcc void @matrix_equality256 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack255, i32 0, i32 8092) to i32)) nounwind
