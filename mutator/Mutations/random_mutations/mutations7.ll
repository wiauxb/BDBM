; Mutation 6
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: store i32 134517414, i32* %21, align 4
@str.2.1 = constant [1 x i8] c"\2d"
@str.3.1 = constant [1 x i8] c"\00"
@str.1.1 = constant [1 x i8] c"\5a"
@str.0.1 = constant [1 x i8] c"\05"
;-------------------------------
; Replace: store i32 134520840, i32* %22, align 8
@str.2.2 = constant [2 x i8] c"\20\65"
@str.4.2 = constant [2 x i8] c"\6c\21"
@str.6.2 = constant [2 x i8] c"\0a\00"
@str.3.2 = constant [2 x i8] c"\76\69"
@str.0.2 = constant [2 x i8] c"\49\20"
@str.1.2 = constant [2 x i8] c"\61\6d"
@str.5.2 = constant [2 x i8] c"\21\21"
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
@str.3.3 = constant [2 x i8] c"\20\42"
@str.2.3 = constant [1 x i8] c"\65"
@str.4.3 = constant [1 x i8] c"\79"
@str.5.3 = constant [1 x i8] c"\65"
@str.0.3 = constant [1 x i8] c"\42"
@str.1.3 = constant [1 x i8] c"\79"
@str.6.3 = constant [2 x i8] c"\0a\00"
;-------------------------------
; Replace: store i32 134520863, i32* %25, align 16
@str.0.4 = constant [1 x i8] c"\25"
@str.1.4 = constant [1 x i8] c"\73"
@str.2.4 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
@str.2.5 = constant [1 x i8] c"\00"
@str.1.5 = constant [1 x i8] c"\2b"
@str.0.5 = constant [1 x i8] c"\77"
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
@str.5.6 = constant [2 x i8] c"\2e\74"
@str.4.6 = constant [2 x i8] c"\65\33"
@str.2.6 = constant [2 x i8] c"\5f\66"
@str.3.6 = constant [2 x i8] c"\69\6c"
@str.1.6 = constant [2 x i8] c"\78\74"
@str.0.6 = constant [2 x i8] c"\74\65"
@str.6.6 = constant [3 x i8] c"\78\74\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc void @helper_fldl_ST0(i64 noundef %0) unnamed_addr #0 {
._crit_edge:
  %1 = load i32, i32* @fpstt, align 16
  %.pre = and i64 %0, 4503599627370495
  %.pre1 = and i64 %0, 9218868437227405312
  %phi.cmp = icmp ne i64 %.pre1, 9218868437227405312
  %phi.cmp3 = icmp eq i64 %.pre, 0
  %2 = or i1 %phi.cmp, %phi.cmp3
  br i1 %2, label %float64_to_floatx80.18.exit, label %3

3:                                                ; preds = %._crit_edge
  %4 = and i64 %0, 9221120237041090560
  %5 = icmp ne i64 %4, 9218868437227405312
  %6 = and i64 %0, 2251799813685247
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %float64_to_floatx80.18.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %3
  %9 = load i8, i8* @fp_status.0, align 1
  %10 = or i8 %9, 1
  store i8 %10, i8* @fp_status.0, align 1
  br label %float64_to_floatx80.18.exit

float64_to_floatx80.18.exit:                      ; preds = %.sink.split.i, %3, %._crit_edge
  %11 = add i32 %1, 7
  %12 = and i32 %11, 7
  store i32 %12, i32* @fpstt, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr #1 {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: naked noinline
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %0, i32 inreg noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca double, align 8
  %6 = tail call { i32, i32 } asm "movl    %esp, %ebx\0A\09movl    $2, %esp\0A\09calll   *$3\0A\09movl    %ebx, %esp", "={ax},={dx},r,r,{cx},{dx},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 %2, i32 %3, i32 %0, i32 %1) #9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = extractvalue { i32, i32 } %6, 1
  %9 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #10
  call void asm "fstpl   $0", "=*m,~{dirflag},~{fpsr},~{flags}"(double* nonnull elementtype(double) %5) #10
  %10 = load double, double* %5, align 8, !tbaa !6
  %11 = fptoui double %10 to i64
  call fastcc void @helper_fldl_ST0(i64 noundef %11) #11
  %12 = zext i32 %8 to i64
  %13 = shl nuw i64 %12, 32
  %14 = zext i32 %7 to i64
  %15 = or i64 %13, %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #10
  ret i64 %15
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr #5 {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"() #9
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit() #11
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !10
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !10
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !10
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !10
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) #10
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %tmp2_v.i40.i = add i32 %arg_esp, 4
  %tmp0_v.i41.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i41.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i43.i = add i32 %tmp0_v.i41.i, -8
  %3 = inttoptr i32 %tmp2_v4.i43.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i45.i = add i32 %tmp0_v.i41.i, -12
  %4 = inttoptr i32 %tmp2_v5.i45.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i47.i = add i32 %tmp0_v.i41.i, -16
  %5 = inttoptr i32 %tmp2_v6.i47.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i49.i = add i32 %tmp0_v.i41.i, -20
  %6 = inttoptr i32 %tmp2_v7.i49.i to i32*
  store i32 %tmp2_v.i40.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i41.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i41.i, -44
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134520900, i32* %12, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i41.i, -48
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i41.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i20.i = icmp eq i32 %15, 0
  br i1 %.not.i20.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %16 = load i32, i32* %8, align 4
  %tmp0_v1.i3.i = add i32 %16, 4
  %17 = inttoptr i32 %tmp0_v1.i3.i to i32*
  %18 = load i32, i32* %17, align 4
  store i32 134520904, i32* %12, align 4
  store i32 %18, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %arg2.i.i6 = load i32, i32* %12, align 4
  %19 = tail call i32 @strcmp(i32 %arg.i.i5, i32 %arg2.i.i6)
  %.not.i.i = icmp eq i32 %19, 0
  br i1 %.not.i.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i41.i, -40
  %20 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i43.i, i32* %20, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i41.i, -68
  %21 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %21, align 4
  %sp1 = alloca [4 x i8]
  
  %s0.1 = load [1 x i8], [1 x i8]* @str.0.1
  %sp0.1 = bitcast [4 x i8]* %sp1 to [1 x i8]*
  store [1 x i8] %s0.1, [1 x i8]* %sp0.1
  %next0.1 = getelementptr [4 x i8], [4 x i8]* %sp1, i32 0, i32 1
  
  %s1.1 = load [1 x i8], [1 x i8]* @str.1.1
  %sp1.1 = bitcast i8* %next0.1 to [1 x i8]*
  store [1 x i8] %s1.1, [1 x i8]* %sp1.1
  %next1.1 = getelementptr [4 x i8], [4 x i8]* %sp1, i32 0, i32 2
  
  %s2.1 = load [1 x i8], [1 x i8]* @str.2.1
  %sp2.1 = bitcast i8* %next1.1 to [1 x i8]*
  store [1 x i8] %s2.1, [1 x i8]* %sp2.1
  %next2.1 = getelementptr [4 x i8], [4 x i8]* %sp1, i32 0, i32 3
  
  %s3.1 = load [1 x i8], [1 x i8]* @str.3.1
  %sp3.1 = bitcast i8* %next2.1 to [1 x i8]*
  store [1 x i8] %s3.1, [1 x i8]* %sp3.1

  %spi1 = ptrtoint [4 x i8]* %sp1 to i32
  store i32 %spi1, i32* %21, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i41.i, -56
  %22 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %22, align 8
  %sp2 = alloca [14 x i8]
  
  %s0.2 = load [2 x i8], [2 x i8]* @str.0.2
  %sp0.2 = bitcast [14 x i8]* %sp2 to [2 x i8]*
  store [2 x i8] %s0.2, [2 x i8]* %sp0.2
  %next0.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 2
  
  %s1.2 = load [2 x i8], [2 x i8]* @str.1.2
  %sp1.2 = bitcast i8* %next0.2 to [2 x i8]*
  store [2 x i8] %s1.2, [2 x i8]* %sp1.2
  %next1.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 4
  
  %s2.2 = load [2 x i8], [2 x i8]* @str.2.2
  %sp2.2 = bitcast i8* %next1.2 to [2 x i8]*
  store [2 x i8] %s2.2, [2 x i8]* %sp2.2
  %next2.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 6
  
  %s3.2 = load [2 x i8], [2 x i8]* @str.3.2
  %sp3.2 = bitcast i8* %next2.2 to [2 x i8]*
  store [2 x i8] %s3.2, [2 x i8]* %sp3.2
  %next3.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 8
  
  %s4.2 = load [2 x i8], [2 x i8]* @str.4.2
  %sp4.2 = bitcast i8* %next3.2 to [2 x i8]*
  store [2 x i8] %s4.2, [2 x i8]* %sp4.2
  %next4.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 10
  
  %s5.2 = load [2 x i8], [2 x i8]* @str.5.2
  %sp5.2 = bitcast i8* %next4.2 to [2 x i8]*
  store [2 x i8] %s5.2, [2 x i8]* %sp5.2
  %next5.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 12
  
  %s6.2 = load [2 x i8], [2 x i8]* @str.6.2
  %sp6.2 = bitcast i8* %next5.2 to [2 x i8]*
  store [2 x i8] %s6.2, [2 x i8]* %sp6.2

  %spi2 = ptrtoint [14 x i8]* %sp2 to i32
  store i32 %spi2, i32* %22, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp3 = alloca [9 x i8]
  
  %s0.3 = load [1 x i8], [1 x i8]* @str.0.3
  %sp0.3 = bitcast [9 x i8]* %sp3 to [1 x i8]*
  store [1 x i8] %s0.3, [1 x i8]* %sp0.3
  %next0.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 1
  
  %s1.3 = load [1 x i8], [1 x i8]* @str.1.3
  %sp1.3 = bitcast i8* %next0.3 to [1 x i8]*
  store [1 x i8] %s1.3, [1 x i8]* %sp1.3
  %next1.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 2
  
  %s2.3 = load [1 x i8], [1 x i8]* @str.2.3
  %sp2.3 = bitcast i8* %next1.3 to [1 x i8]*
  store [1 x i8] %s2.3, [1 x i8]* %sp2.3
  %next2.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 3
  
  %s3.3 = load [2 x i8], [2 x i8]* @str.3.3
  %sp3.3 = bitcast i8* %next2.3 to [2 x i8]*
  store [2 x i8] %s3.3, [2 x i8]* %sp3.3
  %next3.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 5
  
  %s4.3 = load [1 x i8], [1 x i8]* @str.4.3
  %sp4.3 = bitcast i8* %next3.3 to [1 x i8]*
  store [1 x i8] %s4.3, [1 x i8]* %sp4.3
  %next4.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 6
  
  %s5.3 = load [1 x i8], [1 x i8]* @str.5.3
  %sp5.3 = bitcast i8* %next4.3 to [1 x i8]*
  store [1 x i8] %s5.3, [1 x i8]* %sp5.3
  %next5.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 7
  
  %s6.3 = load [2 x i8], [2 x i8]* @str.6.3
  %sp6.3 = bitcast i8* %next5.3 to [2 x i8]*
  store [2 x i8] %s6.3, [2 x i8]* %sp6.3

  %spi3 = ptrtoint [9 x i8]* %sp3 to i32
  store i32 %spi3, i32* %14, align 4
;-------------------------------
  %23 = load i32, i32* %22, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i41.i, -76
  %24 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i41.i, -80
  %25 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %25, align 16
  %sp4 = alloca [3 x i8]
  
  %s0.4 = load [1 x i8], [1 x i8]* @str.0.4
  %sp0.4 = bitcast [3 x i8]* %sp4 to [1 x i8]*
  store [1 x i8] %s0.4, [1 x i8]* %sp0.4
  %next0.4 = getelementptr [3 x i8], [3 x i8]* %sp4, i32 0, i32 1
  
  %s1.4 = load [1 x i8], [1 x i8]* @str.1.4
  %sp1.4 = bitcast i8* %next0.4 to [1 x i8]*
  store [1 x i8] %s1.4, [1 x i8]* %sp1.4
  %next1.4 = getelementptr [3 x i8], [3 x i8]* %sp4, i32 0, i32 2
  
  %s2.4 = load [1 x i8], [1 x i8]* @str.2.4
  %sp2.4 = bitcast i8* %next1.4 to [1 x i8]*
  store [1 x i8] %s2.4, [1 x i8]* %sp2.4

  %spi4 = ptrtoint [3 x i8]* %sp4 to i32
  store i32 %spi4, i32* %25, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i41.i, -84
  %26 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %26, align 4
  %27 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i40.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i41.i, -40
  %28 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i43.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i41.i, -84
  %29 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517482, i32* %29, align 4
  %tmp4_v.i20.i.b.i = load i1, i1* @segs.0, align 1
  %30 = select i1 %tmp4_v.i20.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i41.i, -92
  %32 = inttoptr i32 %tmp2_v5.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
  %sp5 = alloca [3 x i8]
  
  %s0.5 = load [1 x i8], [1 x i8]* @str.0.5
  %sp0.5 = bitcast [3 x i8]* %sp5 to [1 x i8]*
  store [1 x i8] %s0.5, [1 x i8]* %sp0.5
  %next0.5 = getelementptr [3 x i8], [3 x i8]* %sp5, i32 0, i32 1
  
  %s1.5 = load [1 x i8], [1 x i8]* @str.1.5
  %sp1.5 = bitcast i8* %next0.5 to [1 x i8]*
  store [1 x i8] %s1.5, [1 x i8]* %sp1.5
  %next1.5 = getelementptr [3 x i8], [3 x i8]* %sp5, i32 0, i32 2
  
  %s2.5 = load [1 x i8], [1 x i8]* @str.2.5
  %sp2.5 = bitcast i8* %next1.5 to [1 x i8]*
  store [1 x i8] %s2.5, [1 x i8]* %sp2.5

  %spi5 = ptrtoint [3 x i8]* %sp5 to i32
  store i32 %spi5, i32* %32, align 4
;-------------------------------
  %tmp2_v7.i.i.i9 = add i32 %tmp0_v.i41.i, -96
  %33 = inttoptr i32 %tmp2_v7.i.i.i9 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
  %sp6 = alloca [15 x i8]
  
  %s0.6 = load [2 x i8], [2 x i8]* @str.0.6
  %sp0.6 = bitcast [15 x i8]* %sp6 to [2 x i8]*
  store [2 x i8] %s0.6, [2 x i8]* %sp0.6
  %next0.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 2
  
  %s1.6 = load [2 x i8], [2 x i8]* @str.1.6
  %sp1.6 = bitcast i8* %next0.6 to [2 x i8]*
  store [2 x i8] %s1.6, [2 x i8]* %sp1.6
  %next1.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 4
  
  %s2.6 = load [2 x i8], [2 x i8]* @str.2.6
  %sp2.6 = bitcast i8* %next1.6 to [2 x i8]*
  store [2 x i8] %s2.6, [2 x i8]* %sp2.6
  %next2.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 6
  
  %s3.6 = load [2 x i8], [2 x i8]* @str.3.6
  %sp3.6 = bitcast i8* %next2.6 to [2 x i8]*
  store [2 x i8] %s3.6, [2 x i8]* %sp3.6
  %next3.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 8
  
  %s4.6 = load [2 x i8], [2 x i8]* @str.4.6
  %sp4.6 = bitcast i8* %next3.6 to [2 x i8]*
  store [2 x i8] %s4.6, [2 x i8]* %sp4.6
  %next4.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 10
  
  %s5.6 = load [2 x i8], [2 x i8]* @str.5.6
  %sp5.6 = bitcast i8* %next4.6 to [2 x i8]*
  store [2 x i8] %s5.6, [2 x i8]* %sp5.6
  %next5.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 12
  
  %s6.6 = load [3 x i8], [3 x i8]* @str.6.6
  %sp6.6 = bitcast i8* %next5.6 to [3 x i8]*
  store [3 x i8] %s6.6, [3 x i8]* %sp6.6

  %spi6 = ptrtoint [15 x i8]* %sp6 to i32
  store i32 %spi6, i32* %33, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i41.i, -100
  %34 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i14.i.i = add i32 %tmp0_v.i41.i, -76
  %36 = inttoptr i32 %tmp2_v.i14.i.i to i32*
  store i32 %35, i32* %36, align 4
  %tmp2_v.i35.i.i = add i32 %tmp0_v.i41.i, -72
  %37 = inttoptr i32 %tmp2_v.i35.i.i to i32*
  store i32 1818304585, i32* %37, align 8
  %tmp2_v1.i36.i.i = add i32 %tmp0_v.i41.i, -68
  %38 = inttoptr i32 %tmp2_v1.i36.i.i to i32*
  store i32 1701995892, i32* %38, align 4
  %tmp2_v2.i37.i.i = add i32 %tmp0_v.i41.i, -64
  %39 = inttoptr i32 %tmp2_v2.i37.i.i to i32*
  store i32 1752440932, i32* %39, align 16
  %tmp2_v3.i.i.i10 = add i32 %tmp0_v.i41.i, -60
  %40 = inttoptr i32 %tmp2_v3.i.i.i10 to i32*
  store i32 1768300645, i32* %40, align 4
  %tmp2_v4.i38.i.i = add i32 %tmp0_v.i41.i, -56
  %41 = inttoptr i32 %tmp2_v4.i38.i.i to i32*
  store i32 2188652, i32* %41, align 8
  %42 = load i32, i32* %36, align 4
  store i32 %42, i32* %29, align 4
  %tmp2_v7.i43.i.i = add i32 %tmp0_v.i41.i, -88
  %43 = inttoptr i32 %tmp2_v7.i43.i.i to i32*
  store i32 20, i32* %43, align 8
  store i32 1, i32* %32, align 4
  store i32 %tmp2_v.i35.i.i, i32* %33, align 16
  store i32 134517622, i32* %34, align 4
  %arg.i.i4.i = load i32, i32* %33, align 16
  %arg2.i.i5.i = load i32, i32* %32, align 4
  %arg4.i.i.i = load i32, i32* %43, align 8
  %arg6.i.i.i = load i32, i32* %29, align 4
  %44 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i, i32 %arg6.i.i.i)
  %45 = load i32, i32* %36, align 4
  store i32 %45, i32* %33, align 16
  store i32 134517636, i32* %34, align 4
  %arg.i.i6.i = load i32, i32* %33, align 16
  %46 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %47 = load i32, i32* %8, align 4
  %tmp0_v1.i30.i = add i32 %47, 4
  %48 = inttoptr i32 %tmp0_v1.i30.i to i32*
  %49 = load i32, i32* %48, align 4
  store i32 134520902, i32* %12, align 4
  store i32 %49, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i11 = load i32, i32* %13, align 16
  %arg2.i.i12 = load i32, i32* %12, align 4
  %50 = tail call i32 @strcmp(i32 %arg.i.i11, i32 %arg2.i.i12)
  %.not.i55.i = icmp eq i32 %50, 0
  br i1 %.not.i55.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i.i.i14 = add i32 %tmp0_v.i41.i, -40
  %51 = inttoptr i32 %tmp2_v.i.i.i14 to i32*
  store i32 %tmp2_v4.i43.i, i32* %51, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i16 = add i32 %tmp0_v.i41.i, -68
  %52 = inttoptr i32 %tmp2_v2.i.i.i16 to i32*
  store i32 134517678, i32* %52, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i11.i.i = add i32 %tmp0_v.i41.i, -72
  %53 = inttoptr i32 %tmp2_v2.i11.i.i to i32*
  store i32 0, i32* %53, align 8
  %tmp2_v3.i.i.i17 = add i32 %tmp0_v.i41.i, -76
  %54 = inttoptr i32 %tmp2_v3.i.i.i17 to i32*
  store i32 1, i32* %54, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i41.i, -80
  %55 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %55, align 16
  %tmp2_v5.i.i.i18 = add i32 %tmp0_v.i41.i, -84
  %56 = inttoptr i32 %tmp2_v5.i.i.i18 to i32*
  store i32 134517705, i32* %56, align 4
  %arg.i.i.i19 = load i32, i32* %55, align 16
  %arg2.i.i.i20 = load i32, i32* %54, align 4
  %arg4.i.i.i21 = load i32, i32* %53, align 8
  %57 = tail call i32 @socket(i32 %arg.i.i.i19, i32 %arg2.i.i.i20, i32 %arg4.i.i.i21)
  store i32 %57, i32* %14, align 4
  store i32 %57, i32* %55, align 16
  store i32 134517722, i32* %56, align 4
  %arg.i.i3.i = load i32, i32* %55, align 16
  %58 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

.exit:                                            ; preds = %BB_8049472.i, %BB_804944C.i, %BB_8049426.i, %BB_8049453.i
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { naked noinline "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { noinline }
attributes #8 = { norecurse }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
