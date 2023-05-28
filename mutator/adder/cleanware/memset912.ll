; Mutation 912
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack911 = internal global [8092 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: nofree norecurse nounwind
define internal fastcc void @memset912(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !10 {
  %tmp2_v.i6.i = add i32 %arg_esp, 4
  %tmp0_v.i7.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i7.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i7.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i7.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i7.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i6.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i7.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i15.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i19.i = add i32 %tmp0_v.i7.i, -20
  %10 = inttoptr i32 %tmp2_v2.i19.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i7.i, -56
  %11 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 5, i32* %11, align 8
  %tmp2_v5.i23.i = add i32 %tmp0_v.i7.i, -60
  %12 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 99, i32* %12, align 4
  %tmp2_v6.i24.i = add i32 %tmp0_v.i7.i, -30
  %tmp2_v7.i.i = add i32 %tmp0_v.i7.i, -64
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v6.i24.i, i32* %13, align 16
  %tmp2_v8.i25.i = add i32 %tmp0_v.i7.i, -68
  %14 = inttoptr i32 %tmp2_v8.i25.i to i32*
  store i32 134517266, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %arg4.i.i = load i32, i32* %11, align 8
  %15 = inttoptr i32 %arg.i.i to i8*
  %16 = trunc i32 %arg2.i.i to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %15, i8 %16, i32 %arg4.i.i, i1 false)  nounwind 
  %tmp0_v1.i30.i = add i32 %tmp0_v.i7.i, -25
  store i32 5, i32* %11, align 8
  store i32 100, i32* %12, align 4
  store i32 %tmp0_v1.i30.i, i32* %13, align 16
  store i32 134517288, i32* %14, align 4
  %arg.i.i1 = load i32, i32* %13, align 16
  %arg2.i.i2 = load i32, i32* %12, align 4
  %arg4.i.i3 = load i32, i32* %11, align 8
  %17 = inttoptr i32 %arg.i.i1 to i8*
  %18 = trunc i32 %arg2.i.i2 to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %17, i8 %18, i32 %arg4.i.i3, i1 false)  nounwind 
  %tmp2_v.i12.i = add i32 %tmp0_v.i7.i, -36
  %19 = inttoptr i32 %tmp2_v.i12.i to i32*
  store i32 0, i32* %19, align 4
  br label %BB_8049234.i

BB_8049234.i:                                     ; preds = %BB_8049234.i, %0
  %storemerge6 = phi i32 [ 0, %0 ], [ %tmp0_v2.i40.i, %BB_8049234.i ]
  %tmp0_v2.i54.i = add i32 %storemerge6, %tmp2_v6.i24.i
  %20 = inttoptr i32 %tmp0_v2.i54.i to i8*
  %21 = load i8, i8* %20, align 1
  %tmp0_v4.i56.i = sext i8 %21 to i32
  store i32 %tmp0_v4.i56.i, i32* %13, align 16
  store i32 134517323, i32* %14, align 4
  %arg.i.i4 = load i32, i32* %13, align 16
  %22 = tail call i32 @putchar(i32 %arg.i.i4)  nounwind 
  %23 = load i32, i32* %19, align 4
  %tmp0_v2.i40.i = add i32 %23, 1
  store i32 %tmp0_v2.i40.i, i32* %19, align 4
  %24 = icmp slt i32 %tmp0_v2.i40.i, 10
  br i1 %24, label %BB_8049234.i, label %BB_8049258.i

BB_8049258.i:                                     ; preds = %BB_8049234.i
  store i32 10, i32* %13, align 16
  store i32 134517346, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %25 = tail call i32 @putchar(i32 %arg.i.i5)  nounwind 
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg)  argmemonly nofree nounwind willreturn writeonly 


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

  tail call fastcc void @memset912 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack911, i32 0, i32 8092) to i32)) nounwind
