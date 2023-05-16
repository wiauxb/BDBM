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

; Function Attrs: nofree noinline nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

; Function Attrs: nofree norecurse nounwind
define internal fastcc void @memsetm15161636(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !10 {
  %tmp2_v.i37.i = add i32 %arg_esp, 4
  %tmp0_v.i38.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i38.i, -4
  %3 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i41.i = add i32 %tmp0_v.i38.i, -8
  %4 = inttoptr i32 %tmp2_v4.i41.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i43.i = add i32 %tmp0_v.i38.i, -12
  %5 = inttoptr i32 %tmp2_v5.i43.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i45.i = add i32 %tmp0_v.i38.i, -16
  %6 = inttoptr i32 %tmp2_v6.i45.i to i32*
  store i32 %tmp2_v.i37.i, i32* %6, align 16
  %tmp2_v8.i46.i = add i32 %tmp0_v.i38.i, -52
  %7 = inttoptr i32 %tmp2_v8.i46.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i10.i.b = load i1, i1* @segs.0, align 1
  %8 = select i1 %tmp4_v.i10.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i38.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i16.i = add i32 %tmp0_v.i38.i, -56
  %11 = inttoptr i32 %tmp2_v4.i16.i to i32*
  store i32 5, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i38.i, -60
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 99, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i38.i, -30
  %tmp2_v7.i.i = add i32 %tmp0_v.i38.i, -64
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i38.i, -68
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517266, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %arg4.i.i = load i32, i32* %11, align 8
  %15 = inttoptr i32 %arg.i.i to i8*
  %16 = trunc i32 %arg2.i.i to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %15, i8 %16, i32 %arg4.i.i, i1 false)  nounwind 
  %tmp0_v1.i31.i = add i32 %tmp0_v.i38.i, -25
  store i32 5, i32* %11, align 8
  store i32 100, i32* %12, align 4
  store i32 %tmp0_v1.i31.i, i32* %13, align 16
  store i32 134517288, i32* %14, align 4
  %arg.i.i3 = load i32, i32* %13, align 16
  %arg2.i.i4 = load i32, i32* %12, align 4
  %arg4.i.i5 = load i32, i32* %11, align 8
  %17 = inttoptr i32 %arg.i.i3 to i8*
  %18 = trunc i32 %arg2.i.i4 to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %17, i8 %18, i32 %arg4.i.i5, i1 false)  nounwind 
  %tmp2_v.i.i = add i32 %tmp0_v.i38.i, -36
  %19 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %19, align 4
  br label %BB_8049234.i

BB_8049234.i:                                     ; preds = %BB_8049234.i, %0
  %storemerge8 = phi i32 [ 0, %0 ], [ %tmp0_v2.i.i, %BB_8049234.i ]
  %tmp0_v2.i20.i = add i32 %storemerge8, %tmp2_v6.i.i
  %20 = inttoptr i32 %tmp0_v2.i20.i to i8*
  %21 = load i8, i8* %20, align 1
  %tmp0_v4.i22.i = sext i8 %21 to i32
  store i32 %tmp0_v4.i22.i, i32* %13, align 16
  store i32 134517323, i32* %14, align 4
  %arg.i.i6 = load i32, i32* %13, align 16
  %22 = tail call i32 @putchar(i32 %arg.i.i6)  nounwind 
  %23 = load i32, i32* %19, align 4
  %tmp0_v2.i.i = add i32 %23, 1
  store i32 %tmp0_v2.i.i, i32* %19, align 4
  %24 = icmp slt i32 %tmp0_v2.i.i, 10
  br i1 %24, label %BB_8049234.i, label %BB_8049258.i

BB_8049258.i:                                     ; preds = %BB_8049234.i
  store i32 10, i32* %13, align 16
  store i32 134517346, i32* %14, align 4
  %arg.i.i7 = load i32, i32* %13, align 16
  %25 = tail call i32 @putchar(i32 %arg.i.i7)  nounwind 
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg)  argmemonly nofree nounwind willreturn writeonly 

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

  tail call fastcc void @memsetm15161636(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
