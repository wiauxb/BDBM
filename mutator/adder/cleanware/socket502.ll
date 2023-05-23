; Mutation 502
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

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr  noinline 

; Function Attrs: nofree noinline nosync nounwind readnone
declare i32 @htonl(i32) local_unnamed_addr  nofree noinline nosync nounwind readnone 

; Function Attrs: noinline
declare i32 @htons(i16) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @bind(i32, i32, i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @socket502(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i7.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i7.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i8.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i8.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp2_v.i46.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i46.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i49.i = add i32 %tmp0_v.i3.i, -52
  %9 = inttoptr i32 %tmp2_v2.i49.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i50.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i52.i = add i32 %tmp0_v.i3.i, -20
  %12 = inttoptr i32 %tmp2_v5.i52.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i53.i = add i32 %tmp0_v.i3.i, -40
  %13 = inttoptr i32 %tmp2_v6.i53.i to i32*
  store i32 0, i32* %13, align 8
  %tmp2_v8.i56.i = add i32 %tmp0_v.i3.i, -72
  %14 = inttoptr i32 %tmp2_v8.i56.i to i32*
  store i32 0, i32* %14, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -76
  %15 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1, i32* %15, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -80
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %16, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -84
  %17 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517407, i32* %17, align 4
  %arg.i.i = load i32, i32* %16, align 16
  %arg2.i.i = load i32, i32* %15, align 4
  %arg4.i.i = load i32, i32* %14, align 8
  %18 = tail call i32 @socket(i32 %arg.i.i, i32 %arg2.i.i, i32 %arg4.i.i)
  store i32 %18, i32* %13, align 8
  store i32 16, i32* %14, align 8
  store i32 48, i32* %15, align 4
  %tmp2_v4.i42.i = add i32 %tmp0_v.i3.i, -36
  store i32 %tmp2_v4.i42.i, i32* %16, align 16
  store i32 134517429, i32* %17, align 4
  %arg.i.i3 = load i32, i32* %16, align 16
  %arg2.i.i4 = load i32, i32* %15, align 4
  %arg4.i.i5 = load i32, i32* %14, align 8
  %19 = inttoptr i32 %arg.i.i3 to i8*
  %20 = trunc i32 %arg2.i.i4 to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %19, i8 %20, i32 %arg4.i.i5, i1 false)  nounwind 
  %21 = inttoptr i32 %tmp2_v4.i42.i to i16*
  store i16 2, i16* %21, align 4
  store i32 0, i32* %16, align 16
  store i32 134517448, i32* %17, align 4
  %arg.i.i6 = load i32, i32* %16, align 16
  %22 = tail call i32 @htonl(i32 %arg.i.i6)  nounwind 
  %tmp2_v.i24.i = add i32 %tmp0_v.i3.i, -32
  %23 = inttoptr i32 %tmp2_v.i24.i to i32*
  store i32 %22, i32* %23, align 16
  store i32 5000, i32* %16, align 16
  store i32 134517467, i32* %17, align 4
  %24 = inttoptr i32 %tmp2_v10.i.i to i16*
  %arg.i.i8 = load i16, i16* %24, align 16
  %25 = tail call i32 @htons(i16 %arg.i.i8)
  %tmp2_v.i.i = add i32 %tmp0_v.i3.i, -34
  %26 = trunc i32 %25 to i16
  %27 = inttoptr i32 %tmp2_v.i.i to i16*
  store i16 %26, i16* %27, align 2
  store i32 16, i32* %14, align 8
  store i32 %tmp2_v4.i42.i, i32* %15, align 4
  %28 = load i32, i32* %13, align 8
  store i32 %28, i32* %16, align 16
  store i32 134517491, i32* %17, align 4
  %arg.i.i10 = load i32, i32* %16, align 16
  %arg2.i.i11 = load i32, i32* %15, align 4
  %arg4.i.i12 = load i32, i32* %14, align 8
  %29 = tail call i32 @bind(i32 %arg.i.i10, i32 %arg2.i.i11, i32 %arg4.i.i12)
  %30 = load i32, i32* %13, align 8
  store i32 %30, i32* %16, align 16
  store i32 134517505, i32* %17, align 4
  %arg.i.i13 = load i32, i32* %16, align 16
  %31 = tail call i32 @close(i32 %arg.i.i13)
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

  tail call fastcc void @socket502(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
