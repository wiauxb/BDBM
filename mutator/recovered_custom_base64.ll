; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@onUnfallback = common local_unnamed_addr global i1 false
@base64_decode_table = internal constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
@test_str = internal constant [25 x i8] c"Qm9uam91ciBiYXNlNjQgIQ==\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr #0 {
  store i32 0, i32* @fpstt, align 16
  ret void
}

define internal fastcc i8* @base64_decode(i8* %cipher.ptr, i32 %len) {
  %counts.ptr = alloca i8
  store i8 0, i8* %counts.ptr
  %plain_len.tmp = mul i32 %len, 3
  %plain_len = sdiv i32 %plain_len.tmp, 4
  %buffer = alloca [4 x i8]
  %plain = alloca i8, i32 %plain_len
  %i.ptr = alloca i32
  %p.ptr = alloca i32
  store i32 0, i32* %i.ptr
  store i32 0, i32* %p.ptr
  br label %loop.letters.top
  loop.letters.top:
    %i = load i32, i32* %i.ptr
    %cmp = icmp ult i32 %i, %len
    br i1 %cmp, label %loop.letters.body, label %loop.letters.end
  loop.letters.body:
    %k.ptr = alloca i8
    store i8 0, i8* %k.ptr
    br label %loop.decode.top
    loop.decode.top:
      %k = load i8, i8* %k.ptr
      %cmp1 = icmp ult i8 %k, 64
      br i1 %cmp1, label %loop.decode.body, label %loop.decode.end
      %map_k.ptr = getelementptr inbounds [64 x i8], [64 x i8]* @base64_decode_table, i32 0, i8 %k
      %map_k = load i8, i8* %map_k.ptr, align 1
      %cipher_i = getelementptr inbounds i8, i8* %cipher.ptr, i32 %i
      %cipher = load i8, i8* %cipher_i, align 1
      %cmp2 = icmp ne i8 %map_k, %cipher
      %cmp3 = and i1 %cmp1, %cmp2
      br i1 %cmp3, label %loop.decode.body, label %loop.decode.end
    loop.decode.body:
      %k.inc = add i8 %k, 1
      store i8 %k.inc, i8* %k.ptr
      br label %loop.decode.top
    loop.decode.end:
    %counts = load i8, i8* %counts.ptr
    %buffer_counts = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i8 %counts
    store i8 %k, i8* %buffer_counts
    %counts.inc = add i8 %counts, 1
    store i8 %counts.inc, i8* %counts.ptr
    %counts_is_4 = icmp eq i8 %counts.inc, 4
    br i1 %counts_is_4, label %if.counts_4.true, label %if.counts_4.false
    if.counts_4.true:
      %buffer_0.ptr = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i8 0
      %buffer_1.ptr = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i8 1
      %buffer_0 = load i8, i8* %buffer_0.ptr
      %buffer_1 = load i8, i8* %buffer_1.ptr
      %buffer_0.shifted = shl i8 %buffer_0, 2
      %buffer_1.shifted = lshr i8 %buffer_1, 4
      %buffer.add = add i8 %buffer_0.shifted, %buffer_1.shifted
      %p = load i32, i32* %p.ptr
      %plain_p = getelementptr inbounds i8, i8* %plain, i32 %p
      store i8 %buffer.add, i8* %plain_p
      %p.inc = add i32 %p, 1
      store i32 %p.inc, i32* %p.ptr
      %buffer_2.ptr = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i8 2
      %buffer_2 = load i8, i8* %buffer_2.ptr
      %buffer_2_is_not_64 = icmp ne i8 %buffer_2, 64
      br i1 %buffer_2_is_not_64, label %if.buffer_2_is_not_64.true, label %if.buffer_2_is_not_64.false
      if.buffer_2_is_not_64.true:
        %buffer_1.shifted_1 = shl i8 %buffer_1, 4
        %buffer_2.shifted = lshr i8 %buffer_2, 2
        %buffer_1_2.add = add i8 %buffer_1.shifted_1, %buffer_2.shifted
        %p_1 = load i32, i32* %p.ptr
        %plain_p_1 = getelementptr inbounds i8, i8* %plain, i32 %p_1
        store i8 %buffer_1_2.add, i8* %plain_p_1
        %p.inc_1 = add i32 %p_1, 1
        store i32 %p.inc_1, i32* %p.ptr
        br label %if.buffer_2_is_not_64.false
      if.buffer_2_is_not_64.false:
      %buffer_3.ptr = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i8 3
      %buffer_3 = load i8, i8* %buffer_3.ptr
      %buffer_3_is_not_64 = icmp ne i8 %buffer_3, 64
      br i1 %buffer_3_is_not_64, label %if.buffer_3_is_not_64.true, label %if.buffer_3_is_not_64.false
      if.buffer_3_is_not_64.true:
        %buffer_2.shifted_1 = shl i8 %buffer_2, 6
        %buffer_2_3.add = add i8 %buffer_2.shifted_1, %buffer_3
        %p_2 = load i32, i32* %p.ptr
        %plain_p_2 = getelementptr inbounds i8, i8* %plain, i32 %p_2
        store i8 %buffer_2_3.add, i8* %plain_p_2
        %p.inc_2 = add i32 %p_2, 1
        store i32 %p.inc_2, i32* %p.ptr
        br label %if.buffer_3_is_not_64.false
      if.buffer_3_is_not_64.false:
      store i8 0, i8* %counts.ptr
      br label %if.counts_4.false
    if.counts_4.false:
    %i.inc = add i32 %i, 1
    store i32 %i.inc, i32* %i.ptr
    br label %loop.letters.top
  loop.letters.end:
  %p_3 = load i32, i32* %p.ptr
  %plain_p_3 = getelementptr inbounds i8, i8* %plain, i32 %p_3
  store i8 0, i8* %plain_p_3
  ret i8* %plain
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
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i5.i, -8
  %3 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v.i3.i, i32* %3, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i5.i, -12
  %4 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v2.i4.i.i = add i32 %tmp0_v.i5.i, -20
  %5 = inttoptr i32 %tmp2_v2.i4.i.i to i32*
  store i32 134517158, i32* %5, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i5.i, -32
  %6 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134520840, i32* %6, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i5.i, -36
  %7 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517180, i32* %7, align 4
  %arg.i.i.i = load i32, i32* %6, align 16
  %8 = inttoptr i32 %arg.i.i.i to i8*
  %str.ptr = ptrtoint [25 x i8]* @test_str to i32
  %cipher.ptr = inttoptr i32 %str.ptr to i8*
  %plaintext = tail call i8* @base64_decode(i8* %cipher.ptr, i32 24)
  %9 = tail call i32 @puts(i8* nonnull dereferenceable(1) %plaintext)
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
