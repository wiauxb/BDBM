; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr #0 {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr #1 {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5
  tail call fastcc void @helper_fninit() #6
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !6
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !6
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !6
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !6
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) #7
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #2

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #3

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #4 !retregs !10 {
  %tmp2_v.i3.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i3.i to i32*
  store i32 0, i32* %1, align 4
  %tmp0_v.i5.i = and i32 %tmp2_v.i3.i, -16
  %tmp2_v1.i.i = add i32 %tmp0_v.i5.i, -4
  %2 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517214, i32* %2, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i5.i, -8
  %3 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v.i3.i, i32* %3, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i5.i, -12
  %4 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v2.i9.i.i = add i32 %tmp0_v.i5.i, -20
  %5 = inttoptr i32 %tmp2_v2.i9.i.i to i32*
  store i32 134517158, i32* %5, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i5.i, -32
  %sp0 = alloca [13 x i8]
  store [13 x i8] c"I am evil!!!\00", [13 x i8]* %sp0
  %sp1 = ptrtoint [13 x i8]* %sp0 to i32
  %6 = bitcast [13 x i8]* %sp0 to i32*       ; le problème ici est de passer de notre [13 x i8]* %sp0 à un i32* comme %6 (le i32 est le pointeur char* vers notre string)
  ;store i32 134520840, i32* %6, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i5.i, -36
  %7 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517180, i32* %7, align 4
  %arg.i.i.i = load i32, i32* %6, align 16   ; %6 = char**
  %8 = inttoptr i32 %arg.i.i.i to i8*
  %9 = tail call i32 @puts(i8* nonnull dereferenceable(1) %8)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { norecurse }
attributes #5 = { nounwind readnone }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
