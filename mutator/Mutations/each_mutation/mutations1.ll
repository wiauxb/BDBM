; Mutation 15
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@fpuc = internal unnamed_addr global i1 false
@fpus = internal unnamed_addr global i16 0
@ft0.0 = internal unnamed_addr global i64 0
@ft0.1 = internal unnamed_addr global i16 0, align 4
@stack666 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @llvm.abs.i32(i32, i1 immarg)  nofree nosync nounwind readnone speculatable willreturn 
declare i32 @rand() local_unnamed_addr  noinline 
declare void @srand(i32) local_unnamed_addr  noinline 
declare i32 @time(i32) local_unnamed_addr  noinline 
@stack87 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem14 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.84 = constant [23 x i8] c"\2a\70\6f\69\6e\74\65\72\5f\74\6f\5f\63\6f\6e\73\74\3a\20\25\63\0a\00"
@str.bis.85 = constant [23 x i8] c"\2a\70\6f\69\6e\74\65\72\5f\74\6f\5f\63\6f\6e\73\74\3a\20\25\63\0a\00"
@str.bis.86 = constant [7 x i8] c"\61\3a\20\25\63\0a\00"
@stack54 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.50 = constant [16 x i8] c"\6f\75\72\20\6c\65\6e\67\74\68\3a\20\25\64\0a\00"
@str.bis.51 = constant [12 x i8] c"\6c\65\6e\67\74\68\3a\20\25\64\0a\00"
@str.bis.52 = constant [17 x i8] c"\54\68\69\73\20\69\73\20\74\68\65\20\77\61\79\2e\00"
@str.bis.53 = constant [17 x i8] c"\54\68\69\73\20\69\73\20\74\68\65\20\77\61\79\2e\00"
@stack864 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.862 = constant [6 x i8] c"\61\66\74\65\72\00"
@str.bis.863 = constant [7 x i8] c"\62\65\66\6f\72\65\00"
declare i32 @usleep(i32) local_unnamed_addr  noinline 
@stack325 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem10 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.324 = constant [4 x i8] c"\05\42\2d\00"
@stack209 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem8 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.208 = constant [4 x i8] c"\20\2c\2e\00"
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 
declare i32 @malloc(i32) local_unnamed_addr  noinline 
declare void @free(i32) local_unnamed_addr  noinline 
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 
%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@fp_status.2 = internal unnamed_addr global i8 0
@ft0 = internal unnamed_addr global %struct.floatx80 zeroinitializer
@stack757 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.756 = constant [4 x i8] c"\25\66\0a\00"
declare i64 @llvm.fshl.i64(i64, i64, i64)  nofree nosync nounwind readnone speculatable willreturn 
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg)  argmemonly nofree nounwind willreturn 
@stack230 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.229 = constant [6 x i8] c"\25\30\32\64\20\00"
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 
@stack248 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem4 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @toupper(i32) local_unnamed_addr  noinline 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
@stack587 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.584 = constant [9 x i8] c"\6c\6f\6f\70\20\65\6e\64\00"
@str.bis.585 = constant [7 x i8] c"\69\3a\20\25\64\0a\00"
@str.bis.586 = constant [11 x i8] c"\6c\6f\6f\70\20\73\74\61\72\74\00"
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
@stack844 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.841 = constant [19 x i8] c"\73\69\7a\65\6f\66\28\64\61\74\61\29\3a\20\25\7a\75\0a\00"
@str.bis.842 = constant [19 x i8] c"\73\69\7a\65\6f\66\28\63\68\61\72\29\3a\20\25\7a\75\0a\00"
@str.bis.843 = constant [18 x i8] c"\73\69\7a\65\6f\66\28\69\6e\74\29\3a\20\25\7a\75\0a\00"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

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
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %tmp2_v.i45.i = add i32 %arg_esp, 4
  %tmp0_v.i46.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i46.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i48.i = add i32 %tmp0_v.i46.i, -8
  %3 = inttoptr i32 %tmp2_v4.i48.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i50.i = add i32 %tmp0_v.i46.i, -12
  %4 = inttoptr i32 %tmp2_v5.i50.i to i32*
  store i32 0, i32* %4, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @split210 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack209, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v6.i52.i = add i32 %tmp0_v.i46.i, -16
  %5 = inttoptr i32 %tmp2_v6.i52.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i54.i = add i32 %tmp0_v.i46.i, -20
  %6 = inttoptr i32 %tmp2_v7.i54.i to i32*
  store i32 %tmp2_v.i45.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i46.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i.i to i32*
  %11 = load i32, i32* %10, align 4
;-------------------------------
;----Call to Added Cleanware----
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @const_pointer_vs_pointer_to_const88 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack87, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  tail call fastcc void @structure_padding845 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack844, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v6.i.i = add i32 %tmp0_v.i46.i, -44
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134520900, i32* %12, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i46.i, -48
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i46.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i.i = icmp eq i32 %15, 0
  br i1 %.not.i.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i46.i, -40
  %16 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i48.i, i32* %16, align 8
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @volume_of_a_sphere758 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack757, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i46.i, -68
  %17 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
  store i32 134517414, i32* %17, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i46.i, -56
  %18 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134520840, i32* %18, align 8
  store i32 134520854, i32* %14, align 4
  %19 = load i32, i32* %18, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i46.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i46.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134520863, i32* %21, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i46.i, -84
  %22 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i45.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %24 = load i32, i32* %8, align 4
  %tmp0_v1.i12.i = add i32 %24, 4
  %25 = inttoptr i32 %tmp0_v1.i12.i to i32*
  %26 = load i32, i32* %25, align 4
  store i32 134520904, i32* %12, align 4
  store i32 %26, i32* %13, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @print_0_99_grid231 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack230, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517867, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %arg2.i.i6 = load i32, i32* %12, align 4
  %27 = tail call i32 @strcmp(i32 %arg.i.i5, i32 %arg2.i.i6)
  %.not.i4.i = icmp eq i32 %27, 0
  br i1 %.not.i4.i, label %BB_8049472.i, label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i46.i, -40
  %28 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i48.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @breakcontinue588 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack587, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i46.i, -84
  %29 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517482, i32* %29, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @sleep865 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack864, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp4_v.i20.i.b.i = load i1, i1* @segs.0, align 1
  %30 = select i1 %tmp4_v.i20.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i46.i, -92
  %32 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134520866, i32* %32, align 4
  %tmp2_v7.i.i.i9 = add i32 %tmp0_v.i46.i, -96
  %33 = inttoptr i32 %tmp2_v7.i.i.i9 to i32*
  store i32 134520869, i32* %33, align 16
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i46.i, -100
  %34 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i46.i, -76
  %36 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %35, i32* %36, align 4
  %tmp2_v.i29.i.i = add i32 %tmp0_v.i46.i, -72
  %37 = inttoptr i32 %tmp2_v.i29.i.i to i32*
  store i32 1818304585, i32* %37, align 8
  %tmp2_v1.i30.i.i = add i32 %tmp0_v.i46.i, -68
  %38 = inttoptr i32 %tmp2_v1.i30.i.i to i32*
  store i32 1701995892, i32* %38, align 4
  %tmp2_v2.i31.i.i = add i32 %tmp0_v.i46.i, -64
  %39 = inttoptr i32 %tmp2_v2.i31.i.i to i32*
  store i32 1752440932, i32* %39, align 16
  %tmp2_v3.i.i.i10 = add i32 %tmp0_v.i46.i, -60
  %40 = inttoptr i32 %tmp2_v3.i.i.i10 to i32*
  store i32 1768300645, i32* %40, align 4
  %tmp2_v4.i32.i.i = add i32 %tmp0_v.i46.i, -56
  %41 = inttoptr i32 %tmp2_v4.i32.i.i to i32*
  store i32 2188652, i32* %41, align 8
  %42 = load i32, i32* %36, align 4
  store i32 %42, i32* %29, align 4
  %tmp2_v7.i37.i.i = add i32 %tmp0_v.i46.i, -88
  %43 = inttoptr i32 %tmp2_v7.i37.i.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @find_first_char_occurrence326 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack325, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 20, i32* %43, align 8
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @random_double667 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack666, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 1, i32* %32, align 4
  store i32 %tmp2_v.i29.i.i, i32* %33, align 16
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
  %tmp0_v1.i35.i = add i32 %47, 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @vowel_counter249 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack248, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %48 = inttoptr i32 %tmp0_v1.i35.i to i32*
  %49 = load i32, i32* %48, align 4
  store i32 134520902, i32* %12, align 4
  store i32 %49, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i11 = load i32, i32* %13, align 16
  %arg2.i.i12 = load i32, i32* %12, align 4
  %50 = tail call i32 @strcmp(i32 %arg.i.i11, i32 %arg2.i.i12)
  %.not.i30.i = icmp eq i32 %50, 0
  br i1 %.not.i30.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i46.i, -40
  %51 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %tmp2_v4.i48.i, i32* %51, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i46.i, -68
  %52 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  store i32 134517678, i32* %52, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i16 = add i32 %tmp0_v.i46.i, -72
  %53 = inttoptr i32 %tmp2_v2.i.i.i16 to i32*
  store i32 0, i32* %53, align 8
  %tmp2_v3.i.i.i17 = add i32 %tmp0_v.i46.i, -76
  %54 = inttoptr i32 %tmp2_v3.i.i.i17 to i32*
  store i32 1, i32* %54, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i46.i, -80
  %55 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %55, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @string_length55 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack54, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v5.i.i.i18 = add i32 %tmp0_v.i46.i, -84
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

.exit:                                            ; preds = %BB_8049472.i, %BB_804944C.i, %BB_8049453.i, %BB_8049426.i
  ret void
}

define internal fastcc void @helper_fildl_ST0(i32 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = load i32, i32* @fpstt, align 16
  %3 = add i32 %2, 7
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %int32_to_floatx80.exit, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)  nounwind 
  %ctlz.sh.i = lshr i32 %7, 1
  %ctlz.step.i = or i32 %ctlz.sh.i, %7
  %ctlz.sh1.i = lshr i32 %ctlz.step.i, 2
  %ctlz.step2.i = or i32 %ctlz.sh1.i, %ctlz.step.i
  %ctlz.sh3.i = lshr i32 %ctlz.step2.i, 4
  %ctlz.step4.i = or i32 %ctlz.sh3.i, %ctlz.step2.i
  %ctlz.sh5.i = lshr i32 %ctlz.step4.i, 8
  %ctlz.step6.i = or i32 %ctlz.sh5.i, %ctlz.step4.i
  %ctlz.sh7.i = lshr i32 %ctlz.step6.i, 16
  %ctlz.step8.i = or i32 %ctlz.sh7.i, %ctlz.step6.i
  %8 = xor i32 %ctlz.step8.i, -1
  %cppop.and1.i = and i32 %8, 1431655765
  %ctpop.sh.i = lshr i32 %8, 1
  %cppop.and2.i = and i32 %ctpop.sh.i, 1431655765
  %ctpop.step.i = add nuw i32 %cppop.and2.i, %cppop.and1.i
  %cppop.and19.i = and i32 %ctpop.step.i, 858993459
  %ctpop.sh10.i = lshr i32 %ctpop.step.i, 2
  %cppop.and211.i = and i32 %ctpop.sh10.i, 858993459
  %ctpop.step12.i = add nuw nsw i32 %cppop.and211.i, %cppop.and19.i
  %cppop.and113.i = and i32 %ctpop.step12.i, 117901063
  %ctpop.sh14.i = lshr i32 %ctpop.step12.i, 4
  %cppop.and215.i = and i32 %ctpop.sh14.i, 117901063
  %ctpop.step16.i = add nuw nsw i32 %cppop.and215.i, %cppop.and113.i
  %cppop.and117.i = and i32 %ctpop.step16.i, 983055
  %ctpop.sh18.i = lshr i32 %ctpop.step16.i, 8
  %cppop.and219.i = and i32 %ctpop.sh18.i, 983055
  %ctpop.step20.i = add nuw nsw i32 %cppop.and219.i, %cppop.and117.i
  %cppop.and121.i = and i32 %ctpop.step20.i, 31
  %ctpop.sh22.i = lshr i32 %ctpop.step20.i, 16
  %ctpop.step24.i = add nuw nsw i32 %cppop.and121.i, %ctpop.sh22.i
  %9 = add nuw nsw i32 %ctpop.step24.i, 32
  %10 = zext i32 %7 to i64
  %11 = sub nuw nsw i32 16414, %ctpop.step24.i
  %12 = zext i32 %9 to i64
  %13 = shl i64 %10, %12
  %14 = lshr i32 %0, 16
  %15 = and i32 %14, 32768
  %16 = or i32 %11, %15
  %17 = trunc i32 %16 to i16
  %18 = insertvalue { i64, i16 } poison, i64 %13, 0
  %19 = insertvalue { i64, i16 } %18, i16 %17, 1
  br label %int32_to_floatx80.exit

int32_to_floatx80.exit:                           ; preds = %6, %1
  %20 = phi { i64, i16 } [ %19, %6 ], [ zeroinitializer, %1 ]
  %21 = extractvalue { i64, i16 } %20, 0
  %22 = extractvalue { i64, i16 } %20, 1
  %23 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 0
  store i64 %21, i64* %23, align 16
  %24 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 1
  store i16 %22, i16* %24, align 8
  store i32 %4, i32* @fpstt, align 16
  ret void
}
define internal fastcc void @helper_fdiv_STN_ST0() unnamed_addr  nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 16
  %6 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %3, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 16
  %10 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 32767
  %13 = icmp ne i16 %12, 0
  %14 = icmp ne i64 %9, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %0
  %17 = load i16, i16* @fpus, align 4
  %18 = or i16 %17, 4
  store i16 %18, i16* @fpus, align 4
  %.b = load i1, i1* @fpuc, align 1
  %19 = select i1 %.b, i16 0, i16 63
  %20 = and i16 %19, %18
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = or i16 %17, -32636
  store i16 %23, i16* @fpus, align 4
  br label %24

24:                                               ; preds = %22, %16, %0
  %25 = and i16 %7, 32767
  %26 = zext i16 %25 to i32
  %27 = zext i16 %12 to i32
  %28 = xor i16 %11, %7
  %29 = lshr i16 %28, 15
  %30 = trunc i16 %29 to i8
  %31 = icmp eq i16 %25, 32767
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = and i64 %5, 9223372036854775807
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %37 = extractvalue { i64, i16 } %36, 0
  %38 = extractvalue { i64, i16 } %36, 1
  br label %floatx80_div.exit

39:                                               ; preds = %32
  %40 = icmp eq i16 %12, 32767
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = and i64 %9, 9223372036854775807
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %41
  %45 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %46 = extractvalue { i64, i16 } %45, 0
  %47 = extractvalue { i64, i16 } %45, 1
  br label %floatx80_div.exit

48:                                               ; preds = %39
  %49 = or i16 %28, 32767
  br label %floatx80_div.exit

50:                                               ; preds = %24
  switch i32 %27, label %78 [
    i32 32767, label %51
    i32 0, label %60
  ]

51:                                               ; preds = %50
  %52 = and i64 %9, 9223372036854775807
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %56 = extractvalue { i64, i16 } %55, 0
  %57 = extractvalue { i64, i16 } %55, 1
  br label %floatx80_div.exit

58:                                               ; preds = %51
  %59 = and i16 %28, -32768
  br label %floatx80_div.exit

60:                                               ; preds = %50
  %61 = icmp eq i64 %9, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  %63 = zext i16 %25 to i64
  %64 = or i64 %5, %63
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %41
  %67 = load i8, i8* @fp_status.2, align 1
  %68 = or i8 %67, 1
  store i8 %68, i8* @fp_status.2, align 1
  br label %floatx80_div.exit

69:                                               ; preds = %62
  %70 = load i8, i8* @fp_status.2, align 1
  %71 = or i8 %70, 4
  store i8 %71, i8* @fp_status.2, align 1
  %72 = or i16 %28, 32767
  br label %floatx80_div.exit

73:                                               ; preds = %60
  %ctlz.sh.i = lshr i64 %9, 1
  %ctlz.step.i = or i64 %ctlz.sh.i, %9
  %ctlz.sh1.i = lshr i64 %ctlz.step.i, 2
  %ctlz.step2.i = or i64 %ctlz.sh1.i, %ctlz.step.i
  %ctlz.sh3.i = lshr i64 %ctlz.step2.i, 4
  %ctlz.step4.i = or i64 %ctlz.sh3.i, %ctlz.step2.i
  %ctlz.sh5.i = lshr i64 %ctlz.step4.i, 8
  %ctlz.step6.i = or i64 %ctlz.sh5.i, %ctlz.step4.i
  %ctlz.sh7.i = lshr i64 %ctlz.step6.i, 16
  %ctlz.step8.i = or i64 %ctlz.sh7.i, %ctlz.step6.i
  %ctlz.sh9.i = lshr i64 %ctlz.step8.i, 32
  %ctlz.step10.i = or i64 %ctlz.sh9.i, %ctlz.step8.i
  %74 = xor i64 %ctlz.step10.i, -1
  %cppop.and1.i = and i64 %74, 6148914691236517205
  %ctpop.sh.i = lshr i64 %74, 1
  %cppop.and2.i = and i64 %ctpop.sh.i, 6148914691236517205
  %ctpop.step.i = add nuw i64 %cppop.and2.i, %cppop.and1.i
  %cppop.and111.i = and i64 %ctpop.step.i, 3689348814741910323
  %ctpop.sh12.i = lshr i64 %ctpop.step.i, 2
  %cppop.and213.i = and i64 %ctpop.sh12.i, 3689348814741910323
  %ctpop.step14.i = add nuw nsw i64 %cppop.and213.i, %cppop.and111.i
  %cppop.and115.i = and i64 %ctpop.step14.i, 506381209866536711
  %ctpop.sh16.i = lshr i64 %ctpop.step14.i, 4
  %cppop.and217.i = and i64 %ctpop.sh16.i, 506381209866536711
  %ctpop.step18.i = add nuw nsw i64 %cppop.and217.i, %cppop.and115.i
  %cppop.and119.i = and i64 %ctpop.step18.i, 4222189076152335
  %ctpop.sh20.i = lshr i64 %ctpop.step18.i, 8
  %cppop.and221.i = and i64 %ctpop.sh20.i, 4222189076152335
  %ctpop.step22.i = add nuw nsw i64 %cppop.and221.i, %cppop.and119.i
  %cppop.and123.i = and i64 %ctpop.step22.i, 133143986207
  %ctpop.sh24.i = lshr i64 %ctpop.step22.i, 16
  %cppop.and225.i = and i64 %ctpop.sh24.i, 133143986207
  %ctpop.step26.i = add nuw nsw i64 %cppop.and225.i, %cppop.and123.i
  %cppop.and127.i = and i64 %ctpop.step26.i, 63
  %ctpop.sh28.i = lshr i64 %ctpop.step26.i, 32
  %ctpop.step30.i = add nuw nsw i64 %cppop.and127.i, %ctpop.sh28.i
  %75 = trunc i64 %ctpop.step30.i to i32
  %76 = shl i64 %9, %ctpop.step30.i
  %77 = sub nsw i32 1, %75
  br label %78

78:                                               ; preds = %73, %50
  %79 = phi i64 [ %9, %50 ], [ %76, %73 ]
  %80 = phi i32 [ %27, %50 ], [ %77, %73 ]
  %81 = icmp eq i16 %25, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = icmp eq i64 %5, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = and i16 %28, -32768
  br label %floatx80_div.exit

86:                                               ; preds = %82
  %ctlz.sh31.i = lshr i64 %5, 1
  %ctlz.step32.i = or i64 %ctlz.sh31.i, %5
  %ctlz.sh33.i = lshr i64 %ctlz.step32.i, 2
  %ctlz.step34.i = or i64 %ctlz.sh33.i, %ctlz.step32.i
  %ctlz.sh35.i = lshr i64 %ctlz.step34.i, 4
  %ctlz.step36.i = or i64 %ctlz.sh35.i, %ctlz.step34.i
  %ctlz.sh37.i = lshr i64 %ctlz.step36.i, 8
  %ctlz.step38.i = or i64 %ctlz.sh37.i, %ctlz.step36.i
  %ctlz.sh39.i = lshr i64 %ctlz.step38.i, 16
  %ctlz.step40.i = or i64 %ctlz.sh39.i, %ctlz.step38.i
  %ctlz.sh41.i = lshr i64 %ctlz.step40.i, 32
  %ctlz.step42.i = or i64 %ctlz.sh41.i, %ctlz.step40.i
  %87 = xor i64 %ctlz.step42.i, -1
  %cppop.and143.i = and i64 %87, 6148914691236517205
  %ctpop.sh44.i = lshr i64 %87, 1
  %cppop.and245.i = and i64 %ctpop.sh44.i, 6148914691236517205
  %ctpop.step46.i = add nuw i64 %cppop.and245.i, %cppop.and143.i
  %cppop.and147.i = and i64 %ctpop.step46.i, 3689348814741910323
  %ctpop.sh48.i = lshr i64 %ctpop.step46.i, 2
  %cppop.and249.i = and i64 %ctpop.sh48.i, 3689348814741910323
  %ctpop.step50.i = add nuw nsw i64 %cppop.and249.i, %cppop.and147.i
  %cppop.and151.i = and i64 %ctpop.step50.i, 506381209866536711
  %ctpop.sh52.i = lshr i64 %ctpop.step50.i, 4
  %cppop.and253.i = and i64 %ctpop.sh52.i, 506381209866536711
  %ctpop.step54.i = add nuw nsw i64 %cppop.and253.i, %cppop.and151.i
  %cppop.and155.i = and i64 %ctpop.step54.i, 4222189076152335
  %ctpop.sh56.i = lshr i64 %ctpop.step54.i, 8
  %cppop.and257.i = and i64 %ctpop.sh56.i, 4222189076152335
  %ctpop.step58.i = add nuw nsw i64 %cppop.and257.i, %cppop.and155.i
  %cppop.and159.i = and i64 %ctpop.step58.i, 133143986207
  %ctpop.sh60.i = lshr i64 %ctpop.step58.i, 16
  %cppop.and261.i = and i64 %ctpop.sh60.i, 133143986207
  %ctpop.step62.i = add nuw nsw i64 %cppop.and261.i, %cppop.and159.i
  %cppop.and163.i = and i64 %ctpop.step62.i, 63
  %ctpop.sh64.i = lshr i64 %ctpop.step62.i, 32
  %ctpop.step66.i = add nuw nsw i64 %cppop.and163.i, %ctpop.sh64.i
  %88 = trunc i64 %ctpop.step66.i to i32
  %89 = shl i64 %5, %ctpop.step66.i
  %90 = sub nsw i32 1, %88
  br label %91

91:                                               ; preds = %86, %78
  %92 = phi i64 [ %89, %86 ], [ %5, %78 ]
  %93 = phi i32 [ %90, %86 ], [ %26, %78 ]
  %94 = sub nsw i32 %93, %80
  %95 = icmp ugt i64 %79, %92
  %96 = shl i64 %92, 63
  %97 = xor i1 %95, true
  %98 = zext i1 %97 to i64
  %99 = lshr i64 %92, %98
  %100 = select i1 %95, i64 0, i64 %96
  %101 = select i1 %95, i32 16382, i32 16383
  %102 = add nsw i32 %94, %101
  %103 = icmp ugt i64 %79, %99
  %104 = lshr i64 %79, 32
  br i1 %103, label %107, label %105

105:                                              ; preds = %91
  %106 = and i64 %79, 4294967295
  br label %151

107:                                              ; preds = %91
  %108 = and i64 %79, -4294967296
  %109 = icmp ugt i64 %108, %99
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = udiv i64 %99, %104
  %112 = shl i64 %111, 32
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i64 [ %112, %110 ], [ -4294967296, %107 ]
  %115 = lshr exact i64 %114, 32
  %116 = and i64 %79, 4294967295
  %117 = mul nuw i64 %115, %116
  %118 = mul nuw i64 %115, %104
  %119 = lshr i64 %117, 32
  %120 = shl i64 %117, 32
  %121 = sub i64 %100, %120
  %122 = icmp ult i64 %100, %120
  %123 = sext i1 %122 to i64
  %124 = add nuw i64 %118, %119
  %125 = sub i64 %99, %124
  %126 = add i64 %125, %123
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %.loopexit16.i

128:                                              ; preds = %113
  %129 = shl i64 %79, 32
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i64 [ %114, %128 ], [ %134, %130 ]
  %132 = phi i64 [ %126, %128 ], [ %139, %130 ]
  %133 = phi i64 [ %121, %128 ], [ %135, %130 ]
  %134 = add i64 %131, -4294967296
  %135 = add i64 %133, %129
  %136 = add i64 %132, %104
  %137 = icmp ult i64 %135, %133
  %138 = zext i1 %137 to i64
  %139 = add i64 %136, %138
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %130, label %.loopexit16.i, !llvm.loop !167

.loopexit16.i:                                    ; preds = %130, %113
  %141 = phi i64 [ %121, %113 ], [ %135, %130 ]
  %142 = phi i64 [ %126, %113 ], [ %139, %130 ]
  %143 = phi i64 [ %114, %113 ], [ %134, %130 ]
  %144 = tail call i64 @llvm.fshl.i64(i64 %142, i64 %141, i64 32)  nounwind 
  %145 = icmp ugt i64 %108, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %.loopexit16.i
  %147 = udiv i64 %144, %104
  br label %148

148:                                              ; preds = %146, %.loopexit16.i
  %149 = phi i64 [ %147, %146 ], [ 4294967295, %.loopexit16.i ]
  %150 = or i64 %149, %143
  br label %151

151:                                              ; preds = %148, %105
  %152 = phi i64 [ %106, %105 ], [ %116, %148 ]
  %153 = phi i64 [ -1, %105 ], [ %150, %148 ]
  %154 = lshr i64 %153, 32
  %155 = and i64 %153, 4294967295
  %156 = mul nuw i64 %155, %152
  %157 = mul nuw i64 %154, %152
  %158 = mul nuw i64 %155, %104
  %159 = mul nuw i64 %154, %104
  %160 = add i64 %157, %158
  %161 = icmp ult i64 %160, %158
  %162 = select i1 %161, i64 -4294967296, i64 0
  %163 = lshr i64 %160, 32
  %164 = shl i64 %160, 32
  %165 = add i64 %164, %156
  %166 = icmp ult i64 %165, %164
  %167 = sext i1 %166 to i64
  %168 = sub i64 %100, %165
  %169 = icmp ult i64 %100, %165
  %170 = sext i1 %169 to i64
  %171 = add i64 %159, %163
  %172 = sub i64 %99, %171
  %173 = add i64 %172, %162
  %174 = add i64 %173, %167
  %175 = add i64 %174, %170
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %.preheader14.i, label %.loopexit15.i

.preheader14.i:                                   ; preds = %.preheader14.i, %151
  %177 = phi i64 [ %180, %.preheader14.i ], [ %153, %151 ]
  %178 = phi i64 [ %181, %.preheader14.i ], [ %168, %151 ]
  %179 = phi i64 [ %184, %.preheader14.i ], [ %175, %151 ]
  %180 = add i64 %177, -1
  %181 = add i64 %178, %79
  %182 = icmp ult i64 %181, %178
  %183 = zext i1 %182 to i64
  %184 = add nsw i64 %179, %183
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %.preheader14.i, label %.loopexit15.i, !llvm.loop !169

.loopexit15.i:                                    ; preds = %.preheader14.i, %151
  %186 = phi i64 [ %168, %151 ], [ %181, %.preheader14.i ]
  %187 = phi i64 [ %153, %151 ], [ %180, %.preheader14.i ]
  %188 = icmp ugt i64 %79, %186
  br i1 %188, label %189, label %274

189:                                              ; preds = %.loopexit15.i
  %190 = and i64 %79, -4294967296
  %191 = icmp ugt i64 %190, %186
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = udiv i64 %186, %104
  %194 = shl i64 %193, 32
  br label %195

195:                                              ; preds = %192, %189
  %196 = phi i64 [ %194, %192 ], [ -4294967296, %189 ]
  %197 = lshr exact i64 %196, 32
  %198 = mul nuw i64 %197, %152
  %199 = mul nuw i64 %197, %104
  %200 = lshr i64 %198, 32
  %201 = shl i64 %198, 32
  %202 = sub i64 0, %201
  %203 = icmp ne i64 %201, 0
  %204 = sext i1 %203 to i64
  %205 = add i64 %199, %200
  %206 = sub i64 %186, %205
  %207 = add i64 %206, %204
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %.loopexit13.i

209:                                              ; preds = %195
  %210 = shl i64 %79, 32
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i64 [ %196, %209 ], [ %215, %211 ]
  %213 = phi i64 [ %207, %209 ], [ %220, %211 ]
  %214 = phi i64 [ %202, %209 ], [ %216, %211 ]
  %215 = add i64 %212, -4294967296
  %216 = add i64 %214, %210
  %217 = add i64 %213, %104
  %218 = icmp ult i64 %216, %214
  %219 = zext i1 %218 to i64
  %220 = add i64 %217, %219
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %211, label %.loopexit13.i, !llvm.loop !167

.loopexit13.i:                                    ; preds = %211, %195
  %222 = phi i64 [ %202, %195 ], [ %216, %211 ]
  %223 = phi i64 [ %207, %195 ], [ %220, %211 ]
  %224 = phi i64 [ %196, %195 ], [ %215, %211 ]
  %225 = tail call i64 @llvm.fshl.i64(i64 %223, i64 %222, i64 32)  nounwind 
  %226 = icmp ugt i64 %190, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %.loopexit13.i
  %228 = udiv i64 %225, %104
  br label %229

229:                                              ; preds = %227, %.loopexit13.i
  %230 = phi i64 [ %228, %227 ], [ 4294967295, %.loopexit13.i ]
  %231 = or i64 %230, %224
  %232 = shl i64 %231, 1
  %233 = icmp ult i64 %232, 9
  br i1 %233, label %234, label %274

234:                                              ; preds = %229
  %235 = lshr i64 %231, 32
  %236 = and i64 %231, 4294967295
  %237 = mul nuw i64 %236, %152
  %238 = mul nuw i64 %235, %152
  %239 = mul nuw i64 %236, %104
  %240 = mul nuw i64 %235, %104
  %241 = add i64 %238, %239
  %242 = icmp ult i64 %241, %239
  %243 = select i1 %242, i64 -4294967296, i64 0
  %244 = lshr i64 %241, 32
  %245 = shl i64 %241, 32
  %246 = add i64 %245, %237
  %247 = icmp ult i64 %246, %245
  %248 = sext i1 %247 to i64
  %249 = sub i64 0, %246
  %250 = icmp ne i64 %246, 0
  %251 = sext i1 %250 to i64
  %252 = add i64 %240, %244
  %253 = sub i64 %186, %252
  %254 = add i64 %253, %243
  %255 = add i64 %254, %248
  %256 = add i64 %255, %251
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.preheader.i, %234
  %258 = phi i64 [ %261, %.preheader.i ], [ %231, %234 ]
  %259 = phi i64 [ %262, %.preheader.i ], [ %249, %234 ]
  %260 = phi i64 [ %265, %.preheader.i ], [ %256, %234 ]
  %261 = add i64 %258, -1
  %262 = add i64 %259, %79
  %263 = icmp ult i64 %262, %259
  %264 = zext i1 %263 to i64
  %265 = add nsw i64 %260, %264
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %.preheader.i, label %.loopexit.i, !llvm.loop !170

.loopexit.i:                                      ; preds = %.preheader.i, %234
  %267 = phi i64 [ %256, %234 ], [ 0, %.preheader.i ]
  %268 = phi i64 [ %249, %234 ], [ %262, %.preheader.i ]
  %269 = phi i64 [ %231, %234 ], [ %261, %.preheader.i ]
  %270 = or i64 %268, %267
  %271 = icmp ne i64 %270, 0
  %272 = zext i1 %271 to i64
  %273 = or i64 %269, %272
  br label %274

274:                                              ; preds = %.loopexit.i, %229, %.loopexit15.i
  %275 = phi i64 [ %273, %.loopexit.i ], [ %231, %229 ], [ -1, %.loopexit15.i ]
  %276 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %30, i32 noundef %102, i64 noundef %187, i64 noundef %275)  nounwind 
  %277 = extractvalue { i64, i16 } %276, 0
  %278 = extractvalue { i64, i16 } %276, 1
  br label %floatx80_div.exit

floatx80_div.exit:                                ; preds = %274, %84, %69, %66, %58, %54, %48, %44, %35
  %279 = phi i64 [ %37, %35 ], [ %46, %44 ], [ -4611686018427387904, %66 ], [ -9223372036854775808, %48 ], [ %56, %54 ], [ 0, %58 ], [ -9223372036854775808, %69 ], [ 0, %84 ], [ %277, %274 ]
  %280 = phi i16 [ %38, %35 ], [ %47, %44 ], [ -1, %66 ], [ %49, %48 ], [ %57, %54 ], [ %59, %58 ], [ %72, %69 ], [ %85, %84 ], [ %278, %274 ]
  store i64 %279, i64* %4, align 16
  store i16 %280, i16* %6, align 8
  ret void
}
define internal fastcc void @helper_fsub_ST0_FT0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = load i64, i64* @ft0.0, align 8
  %7 = load i16, i16* @ft0.1, align 4
  %8 = lshr i16 %5, 15
  %9 = trunc i16 %8 to i8
  %10 = lshr i16 %7, 15
  %11 = trunc i16 %10 to i8
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = tail call fastcc { i64, i16 } @subFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_sub.exit

15:                                               ; preds = %0
  %16 = tail call fastcc { i64, i16 } @addFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_sub.exit

floatx80_sub.exit:                                ; preds = %15, %13
  %17 = phi { i64, i16 } [ %14, %13 ], [ %16, %15 ]
  %18 = extractvalue { i64, i16 } %17, 0
  %19 = extractvalue { i64, i16 } %17, 1
  store i64 %18, i64* %2, align 16
  store i16 %19, i16* %4, align 8
  ret void
}
define internal fastcc void @helper_fadd_ST0_FT0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = load i64, i64* @ft0.0, align 8
  %7 = load i16, i16* @ft0.1, align 4
  %8 = lshr i16 %5, 15
  %9 = trunc i16 %8 to i8
  %10 = lshr i16 %7, 15
  %11 = trunc i16 %10 to i8
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = tail call fastcc { i64, i16 } @addFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_add.exit

15:                                               ; preds = %0
  %16 = tail call fastcc { i64, i16 } @subFloatx80Sigs(i64 %3, i16 %5, i64 %6, i16 %7, i8 noundef zeroext %9)  nounwind 
  br label %floatx80_add.exit

floatx80_add.exit:                                ; preds = %15, %13
  %17 = phi { i64, i16 } [ %14, %13 ], [ %16, %15 ]
  %18 = extractvalue { i64, i16 } %17, 0
  %19 = extractvalue { i64, i16 } %17, 1
  store i64 %18, i64* %2, align 16
  store i16 %19, i16* %4, align 8
  ret void
}
define internal fastcc { i64, i16 } @addFloatx80Sigs(i64 %0, i16 %1, i64 %2, i16 %3, i8 noundef zeroext %4) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %6 = and i16 %1, 32767
  %7 = zext i16 %6 to i32
  %8 = and i16 %3, 32767
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 %7, %9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %5
  %13 = icmp eq i16 %6, 32767
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = and i64 %0, 9223372036854775807
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %117, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %19 = extractvalue { i64, i16 } %18, 0
  %20 = extractvalue { i64, i16 } %18, 1
  br label %117

21:                                               ; preds = %12
  %22 = icmp eq i16 %8, 0
  %23 = sext i1 %22 to i32
  %24 = add nsw i32 %10, %23
  %25 = sub nsw i32 0, %24
  %26 = and i32 %25, 63
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %21
  %29 = icmp ult i32 %24, 64
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = zext i32 %26 to i64
  %32 = shl i64 %2, %31
  %33 = zext i32 %24 to i64
  %34 = lshr i64 %2, %33
  br label %92

35:                                               ; preds = %28
  %36 = icmp eq i32 %24, 64
  br i1 %36, label %92, label %37

37:                                               ; preds = %35
  %38 = icmp ne i64 %2, 0
  %39 = zext i1 %38 to i64
  br label %92

40:                                               ; preds = %5
  %41 = icmp slt i32 %10, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %40
  %43 = icmp eq i16 %8, 32767
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = and i64 %2, 9223372036854775807
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %49 = extractvalue { i64, i16 } %48, 0
  %50 = extractvalue { i64, i16 } %48, 1
  br label %117

51:                                               ; preds = %44
  %52 = zext i8 %4 to i16
  %53 = shl i16 %52, 15
  %54 = or i16 %53, 32767
  br label %117

55:                                               ; preds = %42
  %56 = icmp eq i16 %6, 0
  %57 = zext i1 %56 to i32
  %58 = add nsw i32 %10, %57
  %59 = sub nsw i32 0, %58
  %60 = and i32 %58, 63
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %55
  %63 = icmp ult i32 %59, 64
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = zext i32 %60 to i64
  %66 = shl i64 %0, %65
  %67 = zext i32 %59 to i64
  %68 = lshr i64 %0, %67
  br label %92

69:                                               ; preds = %62
  %70 = icmp eq i32 %58, -64
  br i1 %70, label %92, label %71

71:                                               ; preds = %69
  %72 = icmp ne i64 %0, 0
  %73 = zext i1 %72 to i64
  br label %92

74:                                               ; preds = %40
  %75 = icmp eq i16 %6, 32767
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = or i64 %2, %0
  %78 = and i64 %77, 9223372036854775807
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %117, label %80

80:                                               ; preds = %76
  %81 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %82 = extractvalue { i64, i16 } %81, 0
  %83 = extractvalue { i64, i16 } %81, 1
  br label %117

84:                                               ; preds = %74
  %85 = add i64 %2, %0
  %86 = icmp eq i16 %6, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %ctlz.sh = lshr i64 %85, 1
  %ctlz.step = or i64 %ctlz.sh, %85
  %ctlz.sh1 = lshr i64 %ctlz.step, 2
  %ctlz.step2 = or i64 %ctlz.sh1, %ctlz.step
  %ctlz.sh3 = lshr i64 %ctlz.step2, 4
  %ctlz.step4 = or i64 %ctlz.sh3, %ctlz.step2
  %ctlz.sh5 = lshr i64 %ctlz.step4, 8
  %ctlz.step6 = or i64 %ctlz.sh5, %ctlz.step4
  %ctlz.sh7 = lshr i64 %ctlz.step6, 16
  %ctlz.step8 = or i64 %ctlz.sh7, %ctlz.step6
  %ctlz.sh9 = lshr i64 %ctlz.step8, 32
  %ctlz.step10 = or i64 %ctlz.sh9, %ctlz.step8
  %88 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %88, 6148914691236517205
  %ctpop.sh = lshr i64 %88, 1
  %cppop.and2 = and i64 %ctpop.sh, 6148914691236517205
  %ctpop.step = add nuw i64 %cppop.and2, %cppop.and1
  %cppop.and111 = and i64 %ctpop.step, 3689348814741910323
  %ctpop.sh12 = lshr i64 %ctpop.step, 2
  %cppop.and213 = and i64 %ctpop.sh12, 3689348814741910323
  %ctpop.step14 = add nuw nsw i64 %cppop.and213, %cppop.and111
  %cppop.and115 = and i64 %ctpop.step14, 506381209866536711
  %ctpop.sh16 = lshr i64 %ctpop.step14, 4
  %cppop.and217 = and i64 %ctpop.sh16, 506381209866536711
  %ctpop.step18 = add nuw nsw i64 %cppop.and217, %cppop.and115
  %cppop.and119 = and i64 %ctpop.step18, 4222189076152335
  %ctpop.sh20 = lshr i64 %ctpop.step18, 8
  %cppop.and221 = and i64 %ctpop.sh20, 4222189076152335
  %ctpop.step22 = add nuw nsw i64 %cppop.and221, %cppop.and119
  %cppop.and123 = and i64 %ctpop.step22, 133143986207
  %ctpop.sh24 = lshr i64 %ctpop.step22, 16
  %cppop.and225 = and i64 %ctpop.sh24, 133143986207
  %ctpop.step26 = add nuw nsw i64 %cppop.and225, %cppop.and123
  %cppop.and127 = and i64 %ctpop.step26, 63
  %ctpop.sh28 = lshr i64 %ctpop.step26, 32
  %ctpop.step30 = add nuw nsw i64 %cppop.and127, %ctpop.sh28
  %89 = trunc i64 %ctpop.step30 to i32
  %90 = shl i64 %85, %ctpop.step30
  %91 = sub nsw i32 1, %89
  br label %110

92:                                               ; preds = %71, %69, %64, %55, %37, %35, %30, %21
  %93 = phi i64 [ %0, %35 ], [ %0, %21 ], [ %0, %30 ], [ %0, %37 ], [ %68, %64 ], [ %0, %55 ], [ 0, %71 ], [ 0, %69 ]
  %94 = phi i64 [ 0, %35 ], [ %2, %21 ], [ %34, %30 ], [ 0, %37 ], [ %2, %64 ], [ %2, %55 ], [ %2, %71 ], [ %2, %69 ]
  %95 = phi i64 [ %2, %35 ], [ 0, %21 ], [ %32, %30 ], [ %39, %37 ], [ %66, %64 ], [ 0, %55 ], [ %73, %71 ], [ %0, %69 ]
  %96 = phi i32 [ %7, %35 ], [ %7, %21 ], [ %7, %30 ], [ %7, %37 ], [ %9, %64 ], [ %9, %55 ], [ %9, %71 ], [ %9, %69 ]
  %97 = add i64 %94, %93
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %92, %84
  %100 = phi i32 [ %96, %92 ], [ %7, %84 ]
  %101 = phi i64 [ %97, %92 ], [ %85, %84 ]
  %102 = phi i64 [ %95, %92 ], [ 0, %84 ]
  %103 = shl i64 %101, 63
  %104 = icmp ne i64 %102, 0
  %105 = zext i1 %104 to i64
  %106 = or i64 %103, %105
  %107 = lshr i64 %101, 1
  %108 = or i64 %107, -9223372036854775808
  %109 = add nuw nsw i32 %100, 1
  br label %110

110:                                              ; preds = %99, %92, %87
  %111 = phi i32 [ %96, %92 ], [ %109, %99 ], [ %91, %87 ]
  %112 = phi i64 [ %97, %92 ], [ %108, %99 ], [ %90, %87 ]
  %113 = phi i64 [ %95, %92 ], [ %106, %99 ], [ 0, %87 ]
  %114 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %4, i32 noundef %111, i64 noundef %112, i64 noundef %113)
  %115 = extractvalue { i64, i16 } %114, 0
  %116 = extractvalue { i64, i16 } %114, 1
  br label %117

117:                                              ; preds = %110, %80, %76, %51, %47, %17, %14
  %118 = phi i64 [ %19, %17 ], [ %115, %110 ], [ %49, %47 ], [ -9223372036854775808, %51 ], [ %82, %80 ], [ %0, %14 ], [ %0, %76 ]
  %119 = phi i16 [ %20, %17 ], [ %116, %110 ], [ %50, %47 ], [ %54, %51 ], [ %83, %80 ], [ %1, %14 ], [ %1, %76 ]
  %120 = insertvalue { i64, i16 } poison, i64 %118, 0
  %121 = insertvalue { i64, i16 } %120, i16 %119, 1
  ret { i64, i16 } %121
}
define internal fastcc { i64, i16 } @subFloatx80Sigs(i64 %0, i16 %1, i64 %2, i16 %3, i8 noundef zeroext %4) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %6 = and i16 %1, 32767
  %7 = zext i16 %6 to i32
  %8 = and i16 %3, 32767
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 %7, %9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %87, label %12

12:                                               ; preds = %5
  %13 = icmp slt i32 %10, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %12
  switch i32 %7, label %27 [
    i32 32767, label %15
    i32 0, label %26
  ]

15:                                               ; preds = %14
  %16 = or i64 %2, %0
  %17 = and i64 %16, 9223372036854775807
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %21 = extractvalue { i64, i16 } %20, 0
  %22 = extractvalue { i64, i16 } %20, 1
  br label %162

23:                                               ; preds = %15
  %24 = load i8, i8* @fp_status.2, align 1
  %25 = or i8 %24, 1
  store i8 %25, i8* @fp_status.2, align 1
  br label %162

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %14
  %28 = phi i32 [ 1, %26 ], [ %7, %14 ]
  %29 = phi i32 [ 1, %26 ], [ %9, %14 ]
  %30 = icmp ult i64 %2, %0
  br i1 %30, label %127, label %31

31:                                               ; preds = %27
  %32 = icmp ult i64 %0, %2
  br i1 %32, label %78, label %162

33:                                               ; preds = %12
  %34 = icmp eq i16 %8, 32767
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = and i64 %2, 9223372036854775807
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %40 = extractvalue { i64, i16 } %39, 0
  %41 = extractvalue { i64, i16 } %39, 1
  br label %162

42:                                               ; preds = %35
  %43 = xor i8 %4, -1
  %44 = zext i8 %43 to i16
  %45 = shl i16 %44, 15
  %46 = or i16 %45, 32767
  br label %162

47:                                               ; preds = %33
  %48 = icmp eq i16 %6, 0
  %49 = sext i1 %48 to i32
  %50 = sub nsw i32 %49, %10
  %51 = trunc i32 %50 to i8
  %52 = sub i8 0, %51
  %53 = and i8 %52, 63
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %47
  %56 = icmp ult i32 %50, 64
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = zext i8 %53 to i64
  %59 = shl i64 %0, %58
  %60 = zext i32 %50 to i64
  %61 = lshr i64 %0, %60
  br label %78

62:                                               ; preds = %55
  %63 = icmp eq i32 %50, 64
  br i1 %63, label %78, label %64

64:                                               ; preds = %62
  %65 = icmp ult i32 %50, 128
  br i1 %65, label %66, label %75

66:                                               ; preds = %64
  %67 = and i32 %50, 63
  %68 = zext i32 %67 to i64
  %69 = lshr i64 %0, %68
  %70 = zext i8 %53 to i64
  %71 = shl i64 %0, %70
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = or i64 %69, %73
  br label %78

75:                                               ; preds = %64
  %76 = icmp ne i64 %0, 0
  %77 = zext i1 %76 to i64
  br label %78

78:                                               ; preds = %75, %66, %62, %57, %47, %31
  %79 = phi i64 [ %0, %31 ], [ %61, %57 ], [ %0, %47 ], [ 0, %66 ], [ 0, %75 ], [ 0, %62 ]
  %80 = phi i64 [ 0, %31 ], [ %59, %57 ], [ 0, %47 ], [ %74, %66 ], [ %77, %75 ], [ %0, %62 ]
  %81 = phi i32 [ %29, %31 ], [ %9, %57 ], [ %9, %47 ], [ %9, %66 ], [ %9, %75 ], [ %9, %62 ]
  %82 = sub i64 %2, %79
  %83 = icmp ne i64 %80, 0
  %84 = sext i1 %83 to i64
  %85 = add i64 %82, %84
  %86 = xor i8 %4, 1
  br label %135

87:                                               ; preds = %5
  %88 = icmp eq i16 %6, 32767
  br i1 %88, label %89, label %96

89:                                               ; preds = %87
  %90 = and i64 %0, 9223372036854775807
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %162, label %92

92:                                               ; preds = %89
  %93 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %94 = extractvalue { i64, i16 } %93, 0
  %95 = extractvalue { i64, i16 } %93, 1
  br label %162

96:                                               ; preds = %87
  %97 = icmp eq i16 %8, 0
  %98 = sext i1 %97 to i32
  %99 = add nsw i32 %10, %98
  %100 = trunc i32 %99 to i8
  %101 = sub i8 0, %100
  %102 = and i8 %101, 63
  %103 = icmp eq i32 %99, 0
  br i1 %103, label %127, label %104

104:                                              ; preds = %96
  %105 = icmp ult i32 %99, 64
  br i1 %105, label %106, label %111

106:                                              ; preds = %104
  %107 = zext i8 %102 to i64
  %108 = shl i64 %2, %107
  %109 = zext i32 %99 to i64
  %110 = lshr i64 %2, %109
  br label %127

111:                                              ; preds = %104
  %112 = icmp eq i32 %99, 64
  br i1 %112, label %127, label %113

113:                                              ; preds = %111
  %114 = icmp ult i32 %99, 128
  br i1 %114, label %115, label %124

115:                                              ; preds = %113
  %116 = and i32 %99, 63
  %117 = zext i32 %116 to i64
  %118 = lshr i64 %2, %117
  %119 = zext i8 %102 to i64
  %120 = shl i64 %2, %119
  %121 = icmp ne i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = or i64 %118, %122
  br label %127

124:                                              ; preds = %113
  %125 = icmp ne i64 %2, 0
  %126 = zext i1 %125 to i64
  br label %127

127:                                              ; preds = %124, %115, %111, %106, %96, %27
  %128 = phi i64 [ %2, %27 ], [ %110, %106 ], [ %2, %96 ], [ 0, %115 ], [ 0, %124 ], [ 0, %111 ]
  %129 = phi i64 [ 0, %27 ], [ %108, %106 ], [ 0, %96 ], [ %123, %115 ], [ %126, %124 ], [ %2, %111 ]
  %130 = phi i32 [ %28, %27 ], [ %7, %106 ], [ %7, %96 ], [ %7, %115 ], [ %7, %124 ], [ %7, %111 ]
  %131 = sub i64 %0, %128
  %132 = icmp ne i64 %129, 0
  %133 = sext i1 %132 to i64
  %134 = add i64 %131, %133
  br label %135

135:                                              ; preds = %127, %78
  %136 = phi i64 [ %134, %127 ], [ %85, %78 ]
  %137 = phi i64 [ %129, %127 ], [ %80, %78 ]
  %138 = phi i8 [ %4, %127 ], [ %86, %78 ]
  %139 = phi i32 [ %130, %127 ], [ %81, %78 ]
  %140 = sub i64 0, %137
  %141 = icmp eq i64 %136, 0
  %142 = select i1 %141, i64 %140, i64 %136
  %143 = select i1 %141, i64 0, i64 %140
  %ctlz.sh = lshr i64 %142, 1
  %ctlz.step = or i64 %ctlz.sh, %142
  %ctlz.sh1 = lshr i64 %ctlz.step, 2
  %ctlz.step2 = or i64 %ctlz.sh1, %ctlz.step
  %ctlz.sh3 = lshr i64 %ctlz.step2, 4
  %ctlz.step4 = or i64 %ctlz.sh3, %ctlz.step2
  %ctlz.sh5 = lshr i64 %ctlz.step4, 8
  %ctlz.step6 = or i64 %ctlz.sh5, %ctlz.step4
  %ctlz.sh7 = lshr i64 %ctlz.step6, 16
  %ctlz.step8 = or i64 %ctlz.sh7, %ctlz.step6
  %ctlz.sh9 = lshr i64 %ctlz.step8, 32
  %ctlz.step10 = or i64 %ctlz.sh9, %ctlz.step8
  %144 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %144, 6148914691236517205
  %ctpop.sh = lshr i64 %144, 1
  %cppop.and2 = and i64 %ctpop.sh, 6148914691236517205
  %ctpop.step = add nuw i64 %cppop.and2, %cppop.and1
  %cppop.and111 = and i64 %ctpop.step, 3689348814741910323
  %ctpop.sh12 = lshr i64 %ctpop.step, 2
  %cppop.and213 = and i64 %ctpop.sh12, 3689348814741910323
  %ctpop.step14 = add nuw nsw i64 %cppop.and213, %cppop.and111
  %cppop.and115 = and i64 %ctpop.step14, 506381209866536711
  %ctpop.sh16 = lshr i64 %ctpop.step14, 4
  %cppop.and217 = and i64 %ctpop.sh16, 506381209866536711
  %ctpop.step18 = add nuw nsw i64 %cppop.and217, %cppop.and115
  %cppop.and119 = and i64 %ctpop.step18, 4222189076152335
  %ctpop.sh20 = lshr i64 %ctpop.step18, 8
  %cppop.and221 = and i64 %ctpop.sh20, 4222189076152335
  %ctpop.step22 = add nuw nsw i64 %cppop.and221, %cppop.and119
  %cppop.and123 = and i64 %ctpop.step22, 133143986207
  %ctpop.sh24 = lshr i64 %ctpop.step22, 16
  %cppop.and225 = and i64 %ctpop.sh24, 133143986207
  %ctpop.step26 = add nuw nsw i64 %cppop.and225, %cppop.and123
  %cppop.and127 = and i64 %ctpop.step26, 63
  %ctpop.sh28 = lshr i64 %ctpop.step26, 32
  %ctpop.step30 = add nuw nsw i64 %cppop.and127, %ctpop.sh28
  %145 = trunc i64 %ctpop.step30 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %135
  %148 = shl i64 %142, %ctpop.step30
  %149 = sub nsw i64 0, %ctpop.step30
  %150 = and i64 %149, 63
  %151 = lshr i64 %143, %150
  %152 = or i64 %151, %148
  br label %153

153:                                              ; preds = %147, %135
  %154 = phi i64 [ %152, %147 ], [ %142, %135 ]
  %155 = shl i64 %143, %ctpop.step30
  %156 = add nsw i32 %139, -64
  %157 = select i1 %141, i32 %156, i32 %139
  %158 = sub nsw i32 %157, %145
  %159 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %138, i32 noundef %158, i64 noundef %154, i64 noundef %155)  nounwind 
  %160 = extractvalue { i64, i16 } %159, 0
  %161 = extractvalue { i64, i16 } %159, 1
  br label %162

162:                                              ; preds = %153, %92, %89, %42, %38, %31, %23, %19
  %163 = phi i64 [ %94, %92 ], [ %160, %153 ], [ %40, %38 ], [ -9223372036854775808, %42 ], [ %21, %19 ], [ -4611686018427387904, %23 ], [ %0, %89 ], [ 0, %31 ]
  %164 = phi i16 [ %95, %92 ], [ %161, %153 ], [ %41, %38 ], [ %46, %42 ], [ %22, %19 ], [ -1, %23 ], [ %1, %89 ], [ 0, %31 ]
  %165 = insertvalue { i64, i16 } poison, i64 %163, 0
  %166 = insertvalue { i64, i16 } %165, i16 %164, 1
  ret { i64, i16 } %166
}
define internal fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext %0, i8 noundef zeroext %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  switch i8 %0, label %95 [
    i8 32, label %6
    i8 64, label %7
  ]

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i64 [ 549755813888, %6 ], [ 1024, %5 ]
  %9 = phi i64 [ 1099511627775, %6 ], [ 2047, %5 ]
  %10 = icmp ne i64 %4, 0
  %11 = zext i1 %10 to i64
  %12 = or i64 %11, %3
  %13 = and i64 %9, %12
  %14 = add i32 %2, -32766
  %15 = icmp ult i32 %14, -32765
  br i1 %15, label %16, label %71

16:                                               ; preds = %7
  %17 = icmp sgt i32 %2, 32766
  br i1 %17, label %106, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %2, 32766
  %20 = xor i64 %12, -1
  %21 = icmp ugt i64 %8, %20
  %22 = and i1 %19, %21
  br i1 %22, label %106, label %23

23:                                               ; preds = %18
  %24 = icmp slt i32 %2, 1
  br i1 %24, label %25, label %71

25:                                               ; preds = %23
  %26 = icmp ne i32 %2, 0
  %27 = icmp ule i64 %8, %20
  %28 = or i1 %26, %27
  %29 = sub nsw i32 1, %2
  %30 = icmp ult i32 %29, 64
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = add nsw i32 %2, 63
  %33 = zext i32 %29 to i64
  %34 = lshr i64 %12, %33
  %35 = and i32 %32, 63
  %36 = zext i32 %35 to i64
  %37 = shl i64 %12, %36
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = or i64 %34, %39
  br label %44

41:                                               ; preds = %25
  %42 = icmp ne i64 %12, 0
  %43 = zext i1 %42 to i64
  br label %44

44:                                               ; preds = %41, %31
  %45 = phi i64 [ %40, %31 ], [ %43, %41 ]
  %46 = and i64 %45, %9
  %47 = icmp ne i64 %46, 0
  %48 = select i1 %28, i1 %47, i1 false
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8, i8* @fp_status.2, align 1
  %51 = or i8 %50, 16
  store i8 %51, i8* @fp_status.2, align 1
  br label %52

52:                                               ; preds = %49, %44
  br i1 %47, label %53, label %56

53:                                               ; preds = %52
  %54 = load i8, i8* @fp_status.2, align 1
  %55 = or i8 %54, 32
  store i8 %55, i8* @fp_status.2, align 1
  br label %56

56:                                               ; preds = %53, %52
  %57 = add i64 %45, %8
  %58 = lshr i64 %57, 63
  %59 = trunc i64 %58 to i32
  %60 = add nuw nsw i64 %9, 1
  %61 = shl nuw nsw i64 %46, 1
  %62 = icmp eq i64 %61, %60
  %63 = select i1 %62, i64 %60, i64 0
  %64 = or i64 %63, %9
  %65 = xor i64 %64, -1
  %66 = and i64 %57, %65
  %67 = zext i8 %1 to i32
  %68 = shl nuw nsw i32 %67, 15
  %69 = or i32 %68, %59
  %70 = insertvalue { i64, i16 } poison, i64 %66, 0
  br label %202

71:                                               ; preds = %23, %7
  %72 = icmp eq i64 %13, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = load i8, i8* @fp_status.2, align 1
  %75 = or i8 %74, 32
  store i8 %75, i8* @fp_status.2, align 1
  br label %76

76:                                               ; preds = %73, %71
  %77 = add i64 %8, %12
  %78 = icmp ult i64 %77, %8
  %79 = select i1 %78, i64 -9223372036854775808, i64 %77
  %80 = zext i1 %78 to i32
  %81 = add nuw nsw i32 %80, %2
  %82 = add nuw nsw i64 %9, 1
  %83 = shl nuw nsw i64 %13, 1
  %84 = icmp eq i64 %83, %82
  %85 = select i1 %84, i64 %82, i64 0
  %86 = or i64 %85, %9
  %87 = xor i64 %86, -1
  %88 = and i64 %79, %87
  %89 = icmp eq i64 %88, 0
  %90 = select i1 %89, i32 0, i32 %81
  %91 = zext i8 %1 to i32
  %92 = shl nuw nsw i32 %91, 15
  %93 = add nuw nsw i32 %90, %92
  %94 = insertvalue { i64, i16 } poison, i64 %88, 0
  br label %202

95:                                               ; preds = %5
  %96 = add i32 %2, -32766
  %97 = icmp ult i32 %96, -32765
  br i1 %97, label %98, label %174

98:                                               ; preds = %95
  %99 = icmp sgt i32 %2, 32766
  br i1 %99, label %106, label %100

100:                                              ; preds = %98
  %101 = icmp eq i32 %2, 32766
  %102 = icmp eq i64 %3, -1
  %103 = and i1 %101, %102
  %104 = icmp slt i64 %4, 0
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100, %98, %18, %16
  %107 = load i8, i8* @fp_status.2, align 1
  %108 = or i8 %107, 40
  store i8 %108, i8* @fp_status.2, align 1
  %109 = zext i8 %1 to i32
  %110 = shl nuw nsw i32 %109, 15
  %111 = or i32 %110, 32767
  br label %202

112:                                              ; preds = %100
  %113 = icmp slt i32 %2, 1
  br i1 %113, label %114, label %174

114:                                              ; preds = %112
  %115 = icmp eq i32 %2, 0
  %116 = and i1 %115, %104
  %117 = icmp ne i64 %3, -1
  %118 = xor i1 %116, true
  %119 = or i1 %117, %118
  %120 = sub nsw i32 1, %2
  %121 = icmp ult i32 %120, 64
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = add nsw i32 %2, 63
  %124 = and i32 %123, 63
  %125 = zext i32 %124 to i64
  %126 = shl i64 %3, %125
  %127 = icmp ne i64 %4, 0
  %128 = zext i1 %127 to i64
  %129 = or i64 %126, %128
  %130 = zext i32 %120 to i64
  %131 = lshr i64 %3, %130
  br label %142

132:                                              ; preds = %114
  %133 = icmp eq i32 %2, -63
  br i1 %133, label %134, label %138

134:                                              ; preds = %132
  %135 = icmp ne i64 %4, 0
  %136 = zext i1 %135 to i64
  %137 = or i64 %136, %3
  br label %142

138:                                              ; preds = %132
  %139 = or i64 %4, %3
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  br label %142

142:                                              ; preds = %138, %134, %122
  %143 = phi i64 [ %129, %122 ], [ %137, %134 ], [ %141, %138 ]
  %144 = phi i64 [ %131, %122 ], [ 0, %134 ], [ 0, %138 ]
  %145 = icmp ne i64 %143, 0
  %146 = select i1 %119, i1 %145, i1 false
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8, i8* @fp_status.2, align 1
  %149 = or i8 %148, 16
  br label %154

150:                                              ; preds = %142
  %151 = icmp eq i64 %143, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %150
  %153 = load i8, i8* @fp_status.2, align 1
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi i8 [ %153, %152 ], [ %149, %147 ]
  %156 = or i8 %155, 32
  store i8 %156, i8* @fp_status.2, align 1
  br label %157

157:                                              ; preds = %154, %150
  %phi.cmp = icmp sgt i64 %143, -1
  br i1 %phi.cmp, label %167, label %158

158:                                              ; preds = %157
  %159 = add nuw i64 %144, 1
  %160 = and i64 %143, 9223372036854775807
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = xor i64 %162, -1
  %164 = and i64 %159, %163
  %165 = lshr i64 %159, 63
  %166 = trunc i64 %165 to i32
  br label %167

167:                                              ; preds = %158, %157
  %168 = phi i64 [ %144, %157 ], [ %164, %158 ]
  %169 = phi i32 [ 0, %157 ], [ %166, %158 ]
  %170 = zext i8 %1 to i32
  %171 = shl nuw nsw i32 %170, 15
  %172 = add nuw nsw i32 %169, %171
  %173 = insertvalue { i64, i16 } poison, i64 %168, 0
  br label %202

174:                                              ; preds = %112, %95
  %175 = icmp eq i64 %4, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %174
  %177 = load i8, i8* @fp_status.2, align 1
  %178 = or i8 %177, 32
  store i8 %178, i8* @fp_status.2, align 1
  br label %179

179:                                              ; preds = %176, %174
  %180 = icmp sgt i64 %4, -1
  br i1 %180, label %192, label %181

181:                                              ; preds = %179
  %182 = add i64 %3, 1
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = add nuw nsw i32 %2, 1
  br label %195

186:                                              ; preds = %181
  %187 = and i64 %4, 9223372036854775807
  %188 = icmp eq i64 %187, 0
  %189 = zext i1 %188 to i64
  %190 = xor i64 %189, -1
  %191 = and i64 %182, %190
  br label %195

192:                                              ; preds = %179
  %193 = icmp eq i64 %3, 0
  %194 = select i1 %193, i32 0, i32 %2
  br label %195

195:                                              ; preds = %192, %186, %184
  %196 = phi i64 [ %3, %192 ], [ -9223372036854775808, %184 ], [ %191, %186 ]
  %197 = phi i32 [ %194, %192 ], [ %185, %184 ], [ %2, %186 ]
  %198 = zext i8 %1 to i32
  %199 = shl nuw nsw i32 %198, 15
  %200 = add nuw nsw i32 %197, %199
  %201 = insertvalue { i64, i16 } poison, i64 %196, 0
  br label %202

202:                                              ; preds = %195, %167, %106, %76, %56
  %203 = phi { i64, i16 } [ { i64 -9223372036854775808, i16 poison }, %106 ], [ %173, %167 ], [ %201, %195 ], [ %70, %56 ], [ %94, %76 ]
  %204 = phi i32 [ %111, %106 ], [ %172, %167 ], [ %200, %195 ], [ %69, %56 ], [ %93, %76 ]
  %205 = trunc i32 %204 to i16
  %206 = insertvalue { i64, i16 } %203, i16 %205, 1
  ret { i64, i16 } %206
}
define internal fastcc void @random_double667(i32 %arg_esp) unnamed_addr  norecurse  !retregs !177 {
BB_8049239.i.lr.ph:
  %tmp2_v.i5.i = add i32 %arg_esp, 4
  %tmp0_v.i6.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i6.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i6.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i6.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i6.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i5.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i6.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp2_v.i32.i = add i32 %tmp0_v.i6.i, -48
  %7 = inttoptr i32 %tmp2_v.i32.i to i32*
  store i32 0, i32* %7, align 16
  %tmp2_v2.i33.i = add i32 %tmp0_v.i6.i, -52
  %8 = inttoptr i32 %tmp2_v2.i33.i to i32*
  store i32 134517281, i32* %8, align 4
  %arg.i.i = load i32, i32* %7, align 16
  %9 = tail call i32 @time(i32 %arg.i.i)
  store i32 %9, i32* %7, align 16
  store i32 134517293, i32* %8, align 4
  %arg.i.i3 = load i32, i32* %7, align 16
  tail call void @srand(i32 %arg.i.i3)
  %tmp2_v.i.i = add i32 %tmp0_v.i6.i, -20
  %10 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %10, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i6.i, -40
  %11 = inttoptr i32 %tmp2_v1.i.i to i64*
  %12 = inttoptr i32 %tmp2_v.i32.i to i64*
  %tmp2_v.i.i.i = add i32 %tmp0_v.i6.i, -56
  %13 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i6.i, -60
  %14 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i6.i, -132
  %15 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %tmp2_v2.i5.i.i = add i32 %tmp0_v.i6.i, -104
  %16 = inttoptr i32 %tmp2_v2.i5.i.i to i32*
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i6.i, -44
  %17 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i6.i, -100
  %18 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  %19 = inttoptr i32 %tmp2_v1.i.i to i32*
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i6.i, -112
  %20 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %tmp2_v11.i.i.i = add i32 %tmp0_v.i6.i, -108
  %21 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i6.i, -116
  %22 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i6.i, -88
  %23 = inttoptr i32 %tmp2_v4.i.i.i to i64*
  %24 = inttoptr i32 %tmp2_v8.i.i.i to i64*
  %25 = inttoptr i32 %tmp2_v2.i5.i.i to i64*
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i6.i, -80
  %26 = inttoptr i32 %tmp2_v16.i.i.i to i64*
  %tmp2_v25.i.i.i = add i32 %tmp0_v.i6.i, -72
  %27 = inttoptr i32 %tmp2_v25.i.i.i to i64*
  %28 = inttoptr i32 %tmp2_v3.i.i.i to i64*
  br label %BB_8049239.i

BB_8049239.i:                                     ; preds = %BB_8049239.i, %BB_8049239.i.lr.ph
  %r_ebp.011 = phi i32 [ %tmp2_v4.i.i, %BB_8049239.i.lr.ph ], [ %46, %BB_8049239.i ]
  %r_ebx.010 = phi i32 [ 134529024, %BB_8049239.i.lr.ph ], [ %45, %BB_8049239.i ]
  %r_edx.09 = phi i32 [ 0, %BB_8049239.i.lr.ph ], [ %49, %BB_8049239.i ]
  %tmp2_v.i9.i = add i32 %r_ebx.010, -8176
  %29 = inttoptr i32 %tmp2_v.i9.i to i64*
  %30 = load i64, i64* %29, align 4
  tail call fastcc void @helper_fldl_ST0(i64 %30)
  %tmp5_v2.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v2.i.i, i64* %11, align 8
  tail call fastcc void @helper_fpop()
  %tmp2_v4.i11.i = add i32 %r_ebx.010, -8168
  %31 = inttoptr i32 %tmp2_v4.i11.i to i64*
  %32 = load i64, i64* %31, align 4
  tail call fastcc void @helper_fldl_ST0(i64 %32)
  %tmp5_v8.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v8.i.i, i64* %12, align 16
  tail call fastcc void @helper_fpop()
  store i32 134517336, i32* %8, align 4
  store i32 %r_ebp.011, i32* %13, align 8
  store i32 %r_ebx.010, i32* %14, align 4
  store i32 134517405, i32* %15, align 4
  %33 = load i32, i32* %7, align 16
  store i32 %33, i32* %16, align 8
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %19, align 8
  store i32 %35, i32* %20, align 16
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %21, align 4
  store i32 134517440, i32* %15, align 4
  %37 = tail call i32 @rand()
  store i32 %37, i32* %22, align 4
  tail call fastcc void @helper_fildl_ST0(i32 %37)
  %38 = load i64, i64* inttoptr (i32 134520864 to i64*), align 32
  tail call fastcc void @helper_fldl_ST0(i64 %38)
  tail call fastcc void @helper_fdiv_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp5_v5.i.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v5.i.i.i, i64* %23, align 8
  tail call fastcc void @helper_fpop()
  %39 = load i64, i64* %24, align 16
  tail call fastcc void @helper_fldl_ST0(i64 %39)
  %40 = load i64, i64* %25, align 8
  tail call fastcc void @helper_fldl_FT0(i64 %40)
  tail call fastcc void @helper_fsub_ST0_FT0()
  %41 = load i64, i64* %23, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %41)
  tail call fastcc void @helper_fmul_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp5_v17.i.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v17.i.i.i, i64* %26, align 16
  tail call fastcc void @helper_fpop()
  %42 = load i64, i64* %25, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %42)
  %43 = load i64, i64* %26, align 16
  tail call fastcc void @helper_fldl_FT0(i64 %43)
  tail call fastcc void @helper_fadd_ST0_FT0()
  %tmp5_v26.i.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v26.i.i.i, i64* %27, align 8
  tail call fastcc void @helper_fpop()
  %44 = load i64, i64* %27, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %44)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 8
  %tmp5_v.i23.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v.i23.i, i64* %28, align 4
  tail call fastcc void @helper_fpop()
  %tmp2_v2.i25.i = add i32 %45, -8184
  store i32 %tmp2_v2.i25.i, i32* %7, align 16
  store i32 134517361, i32* %8, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i5.i, i32 inreg noundef %r_edx.09, i32 noundef %tmp2_v.i32.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !178
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %tmp2_v.i37.i = add i32 %46, -12
  %50 = inttoptr i32 %tmp2_v.i37.i to i32*
  %51 = load i32, i32* %50, align 4
  %tmp0_v2.i39.i = add i32 %51, 1
  store i32 %tmp0_v2.i39.i, i32* %50, align 4
  %52 = icmp slt i32 %tmp0_v2.i39.i, 50
  br i1 %52, label %BB_8049239.i, label %.exit

.exit:                                            ; preds = %BB_8049239.i
  ret void
}
define internal fastcc void @const_pointer_vs_pointer_to_const88(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !153 {
.exit:
  %tmp2_v.i41.i = add i32 %arg_esp, 4
  %tmp0_v.i42.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i43.i = add i32 %tmp0_v.i42.i, -4
  %2 = inttoptr i32 %tmp2_v3.i43.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i44.i = add i32 %tmp0_v.i42.i, -8
  %3 = inttoptr i32 %tmp2_v4.i44.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i46.i = add i32 %tmp0_v.i42.i, -12
  %4 = inttoptr i32 %tmp2_v5.i46.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i48.i = add i32 %tmp0_v.i42.i, -16
  %5 = inttoptr i32 %tmp2_v6.i48.i to i32*
  store i32 %tmp2_v.i41.i, i32* %5, align 16
  %tmp2_v8.i49.i = add i32 %tmp0_v.i42.i, -52
  %6 = inttoptr i32 %tmp2_v8.i49.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i8.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i42.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i42.i, -34
  %10 = inttoptr i32 %tmp2_v3.i.i to i8*
  %tmp2_v4.i13.i = add i32 %tmp0_v.i42.i, -33
  %11 = inttoptr i32 %tmp2_v4.i13.i to i8*
  store i8 98, i8* %11, align 1
  %tmp2_v6.i.i = add i32 %tmp0_v.i42.i, -32
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %12, align 16
  store i8 120, i8* %10, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i42.i, -60
  %13 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 120, i32* %13, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i42.i, -64
  %14 = inttoptr i32 %tmp2_v15.i.i to i32*
  %spi.bis.86 = ptrtoint[7 x i8]* @str.bis.86 to i32
  store i32 %spi.bis.86, i32* %14, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i42.i, -68
  %15 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517261, i32* %15, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !154
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %tmp2_v1.i20.i = add i32 %tmp0_v.i42.i, -28
  %19 = inttoptr i32 %tmp2_v1.i20.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 4
  %20 = load i8, i8* %10, align 2
  %tmp0_v5.i24.i = sext i8 %20 to i32
  store i32 %tmp0_v5.i24.i, i32* %13, align 4
  %spi.bis.85 = ptrtoint[23 x i8]* @str.bis.85 to i32
  store i32 %spi.bis.85, i32* %14, align 16
  store i32 134517295, i32* %15, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %18, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !154
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  store i32 %tmp2_v4.i13.i, i32* %19, align 4
  %24 = load i8, i8* %11, align 1
  %tmp0_v5.i.i = sext i8 %24 to i32
  store i32 %tmp0_v5.i.i, i32* %13, align 4
  %spi.bis.84 = ptrtoint[23 x i8]* @str.bis.84 to i32
  store i32 %spi.bis.84, i32* %14, align 16
  store i32 134517329, i32* %15, align 4
  %25 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %23, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !154
  %tmp2_v1.i34.i = add i32 %tmp0_v.i42.i, -24
  %26 = inttoptr i32 %tmp2_v1.i34.i to i32*
  store i32 %tmp2_v3.i.i, i32* %26, align 8
  ret void
}
define internal fastcc void @string_length55(i32 %arg_esp) unnamed_addr  norecurse  !retregs !139 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i.i, -28
  %8 = inttoptr i32 %tmp2_v1.i.i to i32*
  %spi.bis.53 = ptrtoint[17 x i8]* @str.bis.53 to i32
  store i32 %spi.bis.53, i32* %8, align 4
  %tmp2_v5.i42.i = add i32 %tmp0_v.i.i, -48
  %9 = inttoptr i32 %tmp2_v5.i42.i to i32*
  %spi.bis.52 = ptrtoint[17 x i8]* @str.bis.52 to i32
  store i32 %spi.bis.52, i32* %9, align 16
  %tmp2_v6.i43.i = add i32 %tmp0_v.i.i, -52
  %10 = inttoptr i32 %tmp2_v6.i43.i to i32*
  store i32 134517227, i32* %10, align 4
  %arg.i.i = load i32, i32* %9, align 16
  %11 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i18.i = add i32 %tmp0_v.i.i, -24
  %12 = inttoptr i32 %tmp2_v.i18.i to i32*
  store i32 %11, i32* %12, align 8
  %tmp2_v4.i23.i = add i32 %tmp0_v.i.i, -44
  %13 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 %11, i32* %13, align 4
  %spi.bis.51 = ptrtoint[12 x i8]* @str.bis.51 to i32
  store i32 %spi.bis.51, i32* %9, align 16
  store i32 134517251, i32* %10, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v5.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !140
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %9, align 16
  store i32 134517265, i32* %10, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i.i, -56
  %16 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %16, align 8
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i.i, -76
  %17 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 134517322, i32* %17, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i.i, -60
  %18 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  br label %BB_804925C.i.i

BB_804925C.i.i:                                   ; preds = %BB_804925C.i.i, %0
  %storemerge.i = phi i32 [ 0, %0 ], [ %tmp0_v1.i.i.i, %BB_804925C.i.i ]
  store i32 %storemerge.i, i32* %18, align 4
  %19 = load i32, i32* %9, align 16
  %tmp0_v3.i.i.i = add i32 %19, %storemerge.i
  %20 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %21 = load i8, i8* %20, align 1
  %.not.i.i.i = icmp eq i8 %21, 0
  %tmp0_v1.i.i.i = add i32 %storemerge.i, 1
  br i1 %.not.i.i.i, label %Func_string_length.exit, label %BB_804925C.i.i

Func_string_length.exit:                          ; preds = %BB_804925C.i.i
  %22 = load i32, i32* %16, align 8
  %tmp2_v.i4.i = add i32 %22, -12
  %23 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %tmp0_v1.i.i.i, i32* %23, align 4
  store i32 %tmp0_v1.i.i.i, i32* %13, align 4
  %spi.bis.50 = ptrtoint[16 x i8]* @str.bis.50 to i32
  store i32 %spi.bis.50, i32* %9, align 16
  store i32 134517289, i32* %10, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %storemerge.i, i32 noundef %tmp2_v5.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !140
  ret void
}
define internal fastcc void @sleep865(i32 %arg_esp) unnamed_addr  norecurse  !retregs !126 {
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i19.i = add i32 %tmp0_v.i17.i, -4
  %3 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i17.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i21.i = add i32 %tmp0_v.i17.i, -12
  %5 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i17.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i16.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i17.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517198, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i17.i, -32
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  %spi.bis.863 = ptrtoint[7 x i8]* @str.bis.863 to i32
  store i32 %spi.bis.863, i32* %8, align 16
  %tmp2_v3.i6.i = add i32 %tmp0_v.i17.i, -36
  %9 = inttoptr i32 %tmp2_v3.i6.i to i32*
  store i32 134517219, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  store i32 750000, i32* %8, align 16
  store i32 134517235, i32* %9, align 4
  %arg.i.i1 = load i32, i32* %8, align 16
  %12 = tail call i32 @usleep(i32 %arg.i.i1)
  %spi.bis.862 = ptrtoint[6 x i8]* @str.bis.862 to i32
  store i32 %spi.bis.862, i32* %8, align 16
  store i32 134517253, i32* %9, align 4
  %arg.i.i2 = load i32, i32* %8, align 16
  %13 = inttoptr i32 %arg.i.i2 to i8*
  %14 = tail call i32 @puts(i8* nonnull dereferenceable(1) %13)
  ret void
}
define internal fastcc void @find_first_char_occurrence326(i32 %arg_esp) unnamed_addr  norecurse  !retregs !114 {
Func_804924F.exit.i:
  %tmp2_v.i27.i = add i32 %arg_esp, 4
  %tmp0_v.i28.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i30.i = add i32 %tmp0_v.i28.i, -4
  %2 = inttoptr i32 %tmp2_v3.i30.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i31.i = add i32 %tmp0_v.i28.i, -8
  %3 = inttoptr i32 %tmp2_v4.i31.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i33.i = add i32 %tmp0_v.i28.i, -12
  %4 = inttoptr i32 %tmp2_v5.i33.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i35.i = add i32 %tmp0_v.i28.i, -16
  %5 = inttoptr i32 %tmp2_v6.i35.i to i32*
  store i32 %tmp2_v.i27.i, i32* %5, align 16
  %tmp2_v8.i36.i = add i32 %tmp0_v.i28.i, -68
  %6 = inttoptr i32 %tmp2_v8.i36.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i15.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i19.i = add i32 %tmp0_v.i28.i, -20
  %9 = inttoptr i32 %tmp2_v2.i19.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i28.i, -52
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1953701953, i32* %10, align 4
  %tmp2_v4.i20.i = add i32 %tmp0_v.i28.i, -48
  %11 = inttoptr i32 %tmp2_v4.i20.i to i32*
  store i32 1735289202, i32* %11, align 16
  %tmp2_v5.i21.i = add i32 %tmp0_v.i28.i, -44
  %12 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 1852793632, i32* %12, align 4
  %tmp2_v6.i22.i = add i32 %tmp0_v.i28.i, -40
  %13 = inttoptr i32 %tmp2_v6.i22.i to i32*
  store i32 1852399988, i32* %13, align 8
  %tmp2_v7.i23.i = add i32 %tmp0_v.i28.i, -36
  %14 = inttoptr i32 %tmp2_v7.i23.i to i32*
  store i32 543649385, i32* %14, align 4
  %tmp2_v8.i24.i = add i32 %tmp0_v.i28.i, -32
  %15 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 1702043745, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i28.i, -28
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1852142702, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i28.i, -24
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 3040611, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i28.i, -57
  %18 = inttoptr i32 %tmp2_v11.i.i to i8*
  store i8 110, i8* %18, align 1
  %tmp2_v15.i.i = add i32 %tmp0_v.i28.i, -76
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 110, i32* %19, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i28.i, -80
  %20 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i28.i, -84
  %21 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517327, i32* %21, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i28.i, -88
  %22 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i31.i, i32* %22, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i28.i, -92
  %23 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i28.i, -132
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %spi.bis.324 = ptrtoint[4 x i8]* @str.bis.324 to i32
  store i32 %spi.bis.324, i32* %24, align 4
  %25 = load i32, i32* %19, align 4
  %tmp2_v2.i15.i.i = add i32 %tmp0_v.i28.i, -116
  %26 = trunc i32 %25 to i8
  %27 = inttoptr i32 %tmp2_v2.i15.i.i to i8*
  store i8 %26, i8* %27, align 4
  %28 = load i32, i32* %20, align 16
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i28.i, -144
  %29 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i28.i, -148
  %30 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 134517462, i32* %30, align 4
  %arg.i.i.i = load i32, i32* %29, align 16
  %31 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i28.i, -100
  %32 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %31, i32* %32, align 4
  %tmp2_v1.i5.i.i = add i32 %tmp0_v.i28.i, -104
  %33 = inttoptr i32 %tmp2_v1.i5.i.i to i32*
  br label %BB_80492FE.i.i

BB_80492FE.i.i:                                   ; preds = %BB_80492FE.i.i, %Func_804924F.exit.i
  %storemerge.i = phi i32 [ 0, %Func_804924F.exit.i ], [ %tmp0_v1.i.i.i, %BB_80492FE.i.i ]
  store i32 %storemerge.i, i32* %33, align 8
  %34 = load i32, i32* %20, align 16
  %tmp0_v3.i30.i.i = add i32 %34, %storemerge.i
  %35 = inttoptr i32 %tmp0_v3.i30.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %tmp0_v4.i.i.i = zext i8 %36 to i32
  %37 = load i8, i8* %27, align 4
  %tmp0_v6.i.i.i = zext i8 %37 to i32
  %cc_dst_v.i31.i.i = sub nsw i32 %tmp0_v6.i.i.i, %tmp0_v4.i.i.i
  %tmp4_v.i.i.i1 = and i32 %cc_dst_v.i31.i.i, 255
  %.not.i.i.i = icmp eq i32 %tmp4_v.i.i.i1, 0
  %tmp0_v1.i.i.i = add i32 %storemerge.i, 1
  br i1 %.not.i.i.i, label %Func_first_occurrence.exit, label %BB_80492FE.i.i

Func_first_occurrence.exit:                       ; preds = %BB_80492FE.i.i
  %38 = load i32, i32* %23, align 4
  %39 = load i32, i32* %22, align 8
  %tmp2_v.i.i = add i32 %39, -48
  %40 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %storemerge.i, i32* %40, align 4
  %tmp2_v.i2.i = add i32 %39, -49
  %41 = inttoptr i32 %tmp2_v.i2.i to i8*
  %42 = load i8, i8* %41, align 1
  %tmp0_v.i3.i = sext i8 %42 to i32
  %tmp2_v4.i.i = add i32 %tmp0_v.i28.i, -72
  %43 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %storemerge.i, i32* %43, align 8
  store i32 %tmp0_v.i3.i, i32* %19, align 4
  %tmp2_v6.i.i = add i32 %38, -8159
  store i32 %tmp2_v6.i.i, i32* %20, align 16
  store i32 134517387, i32* %21, align 4
  %44 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef %storemerge.i, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !115
  ret void
}
define internal fastcc void @split210(i32 %arg_esp) unnamed_addr  norecurse  !retregs !101 {
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i19.i = add i32 %tmp0_v.i17.i, -4
  %3 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i17.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i17.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i21.i = add i32 %tmp0_v.i17.i, -16
  %6 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 %tmp2_v.i16.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i17.i, -84
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517361, i32* %7, align 4
  %tmp4_v.i46.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i50.i = add i32 %tmp0_v.i17.i, -20
  %10 = inttoptr i32 %tmp2_v2.i50.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i51.i = add i32 %tmp0_v.i17.i, -63
  %11 = inttoptr i32 %tmp2_v3.i51.i to i32*
  store i32 1646292820, i32* %11, align 4
  %tmp2_v4.i52.i = add i32 %tmp0_v.i17.i, -59
  %12 = inttoptr i32 %tmp2_v4.i52.i to i32*
  store i32 1864379493, i32* %12, align 4
  %tmp2_v5.i53.i = add i32 %tmp0_v.i17.i, -55
  %13 = inttoptr i32 %tmp2_v5.i53.i to i32*
  store i32 1869488242, i32* %13, align 4
  %tmp2_v6.i54.i = add i32 %tmp0_v.i17.i, -51
  %14 = inttoptr i32 %tmp2_v6.i54.i to i32*
  store i32 1869881460, i32* %14, align 4
  %tmp2_v7.i55.i = add i32 %tmp0_v.i17.i, -47
  %15 = inttoptr i32 %tmp2_v7.i55.i to i32*
  store i32 744841760, i32* %15, align 4
  %tmp2_v8.i56.i = add i32 %tmp0_v.i17.i, -43
  %16 = inttoptr i32 %tmp2_v8.i56.i to i32*
  store i32 1634235424, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i17.i, -39
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936269428, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i17.i, -35
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701344288, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i17.i, -31
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1702195488, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i17.i, -27
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1869182067, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i17.i, -23
  %21 = inttoptr i32 %tmp2_v13.i.i to i16*
  store i16 11886, i16* %21, align 2
  %tmp2_v14.i.i = add i32 %tmp0_v.i17.i, -21
  %22 = inttoptr i32 %tmp2_v14.i.i to i8*
  store i8 0, i8* %22, align 1
  %tmp2_v15.i.i = add i32 %tmp0_v.i17.i, -80
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 0, i32* %23, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i17.i, -88
  %24 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %24, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i17.i, -92
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  %spi.bis.208 = ptrtoint[4 x i8]* @str.bis.208 to i32
  store i32 %spi.bis.208, i32* %25, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i17.i, -96
  %26 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i51.i, i32* %26, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i17.i, -100
  %27 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517488, i32* %27, align 4
  %tmp2_v.i75.i.i = add i32 %tmp0_v.i17.i, -104
  %28 = inttoptr i32 %tmp2_v.i75.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %28, align 8
  %tmp2_v1.i77.i.i = add i32 %tmp0_v.i17.i, -108
  %29 = inttoptr i32 %tmp2_v1.i77.i.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v2.i78.i.i = add i32 %tmp0_v.i17.i, -112
  %30 = inttoptr i32 %tmp2_v2.i78.i.i to i32*
  store i32 134529024, i32* %30, align 16
  %tmp2_v.i122.i.i = add i32 %tmp0_v.i17.i, -16548
  %31 = inttoptr i32 %tmp2_v.i122.i.i to i32*
  store i32 134517678, i32* %31, align 4
  %32 = load i32, i32* %26, align 16
  %tmp2_v2.i185.i.i = add i32 %tmp0_v.i17.i, -16532
  %33 = inttoptr i32 %tmp2_v2.i185.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 4
  %tmp2_v5.i188.i.i = add i32 %tmp0_v.i17.i, -16536
  %35 = inttoptr i32 %tmp2_v5.i188.i.i to i32*
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %24, align 8
  %tmp2_v8.i191.i.i = add i32 %tmp0_v.i17.i, -16540
  %37 = inttoptr i32 %tmp2_v8.i191.i.i to i32*
  store i32 %36, i32* %37, align 4
  %tmp4_v.i192.i.b.i = load i1, i1* @segs.0, align 1
  %38 = inttoptr i32 %arg_esp to i32*
  %39 = load i32, i32* %38, align 4
  %tmp2_v11.i193.i.i = add i32 %tmp0_v.i17.i, -116
  %40 = inttoptr i32 %tmp2_v11.i193.i.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %33, align 4
  %tmp2_v15.i.i.i = add i32 %tmp0_v.i17.i, -16560
  %42 = inttoptr i32 %tmp2_v15.i.i.i to i32*
  store i32 %41, i32* %42, align 16
  %tmp2_v16.i.i.i = add i32 %tmp0_v.i17.i, -16564
  %43 = inttoptr i32 %tmp2_v16.i.i.i to i32*
  store i32 134517736, i32* %43, align 4
  %arg.i.i30.i = load i32, i32* %42, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i30.i)
  %tmp2_v.i236.i.i = add i32 %tmp0_v.i17.i, -16516
  %45 = inttoptr i32 %tmp2_v.i236.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %37, align 4
  %47 = inttoptr i32 %46 to i32*
  store i32 0, i32* %47, align 4
  %tmp2_v3.i240.i.i = add i32 %tmp0_v.i17.i, -16528
  %48 = inttoptr i32 %tmp2_v3.i240.i.i to i32*
  store i32 0, i32* %48, align 16
  %49 = load i32, i32* %45, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_804943D.i.preheader.lr.ph.i, label %BB_80494D1.i.i

BB_8049555.i.i:                                   ; preds = %BB_804957F.i.i, %BB_8049549.i.i
  %51 = phi i32 [ %115, %BB_804957F.i.i ], [ %104, %BB_8049549.i.i ]
  %52 = load i32, i32* %33, align 4
  %tmp0_v3.i.i.i = add i32 %52, %51
  %53 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %54 = load i8, i8* %53, align 1
  %tmp0_v5.i.i.i = sext i8 %54 to i32
  store i32 %tmp0_v5.i.i.i, i32* %66, align 4
  %55 = load i32, i32* %35, align 8
  store i32 %55, i32* %42, align 16
  store i32 134518136, i32* %43, align 4
  %arg.i.i.i = load i32, i32* %42, align 16
  %arg2.i.i.i = load i32, i32* %66, align 4
  %56 = tail call i32 @strchr(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %.not.i95.i.i = icmp eq i32 %56, 0
  br i1 %.not.i95.i.i, label %BB_804957F.i.i, label %BB_80495BF.ithread-pre-split.i

BB_80494D1.i.i:                                   ; preds = %BB_80494BF.i.backedge.i, %0
  %57 = load i32, i32* %37, align 4
  %58 = inttoptr i32 %57 to i32*
  %59 = load i32, i32* %58, align 4
  %tmp0_v2.i4.i.i = shl i32 %59, 2
  store i32 %tmp0_v2.i4.i.i, i32* %42, align 16
  store i32 134517989, i32* %43, align 4
  %arg.i.i13.i = load i32, i32* %42, align 16
  %60 = tail call i32 @malloc(i32 %arg.i.i13.i)
  %tmp2_v.i258.i.i = add i32 %tmp0_v.i17.i, -16512
  %61 = inttoptr i32 %tmp2_v.i258.i.i to i32*
  store i32 %60, i32* %61, align 16
  store i32 0, i32* %48, align 16
  %tmp2_v2.i261.i.i = add i32 %tmp0_v.i17.i, -16524
  %62 = inttoptr i32 %tmp2_v2.i261.i.i to i32*
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %48, align 16
  %64 = load i32, i32* %45, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %BB_8049538.i.preheader.lr.ph.i, label %Func_split.exit

BB_8049538.i.preheader.lr.ph.i:                   ; preds = %BB_80494D1.i.i
  %tmp2_v7.i31.i.i = add i32 %tmp0_v.i17.i, -16556
  %66 = inttoptr i32 %tmp2_v7.i31.i.i to i32*
  %tmp2_v.i196.i.i = add i32 %tmp0_v.i17.i, -16520
  %67 = inttoptr i32 %tmp2_v.i196.i.i to i32*
  %tmp2_v5.i204.i.i = add i32 %tmp0_v.i17.i, -16500
  %tmp2_v.i14.i.i = add i32 %tmp0_v.i17.i, -16508
  %68 = inttoptr i32 %tmp2_v.i14.i.i to i32*
  br label %BB_8049538.i.preheader.i

BB_8049507.i.i:                                   ; preds = %BB_8049538.i.preheader.i, %BB_8049531.i.i
  %69 = phi i32 [ %tmp0_v1.i60.i.i, %BB_8049531.i.i ], [ %100, %BB_8049538.i.preheader.i ]
  %70 = load i32, i32* %33, align 4
  %tmp0_v3.i26.i.i = add i32 %70, %69
  %71 = inttoptr i32 %tmp0_v3.i26.i.i to i8*
  %72 = load i8, i8* %71, align 1
  %tmp0_v5.i28.i.i = sext i8 %72 to i32
  store i32 %tmp0_v5.i28.i.i, i32* %66, align 4
  %73 = load i32, i32* %35, align 8
  store i32 %73, i32* %42, align 16
  store i32 134518058, i32* %43, align 4
  %arg.i.i16.i = load i32, i32* %42, align 16
  %arg2.i.i17.i = load i32, i32* %66, align 4
  %74 = tail call i32 @strchr(i32 %arg.i.i16.i, i32 %arg2.i.i17.i)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %BB_8049549.i.i, label %BB_8049531.i.i

BB_804945C.i.i:                                   ; preds = %BB_804944E.i.i, %BB_8049486.i.i
  %76 = phi i32 [ %tmp0_v1.i248.i.i, %BB_8049486.i.i ], [ %142, %BB_804944E.i.i ]
  %77 = load i32, i32* %33, align 4
  %tmp0_v3.i47.i.i = add i32 %77, %76
  %78 = inttoptr i32 %tmp0_v3.i47.i.i to i8*
  %79 = load i8, i8* %78, align 1
  %tmp0_v5.i49.i.i = sext i8 %79 to i32
  store i32 %tmp0_v5.i49.i.i, i32* %95, align 4
  %80 = load i32, i32* %35, align 8
  store i32 %80, i32* %42, align 16
  store i32 134517887, i32* %43, align 4
  %arg.i.i20.i = load i32, i32* %42, align 16
  %arg2.i.i21.i = load i32, i32* %95, align 4
  %81 = tail call i32 @strchr(i32 %arg.i.i20.i, i32 %arg2.i.i21.i)
  %.not.i171.i.i = icmp eq i32 %81, 0
  %82 = load i32, i32* %48, align 16
  br i1 %.not.i171.i.i, label %BB_8049486.i.i, label %BB_804949E.i.loopexit.i

BB_8049531.i.i:                                   ; preds = %BB_8049507.i.i
  %83 = load i32, i32* %48, align 16
  %tmp0_v1.i60.i.i = add i32 %83, 1
  store i32 %tmp0_v1.i60.i.i, i32* %48, align 16
  %84 = load i32, i32* %45, align 4
  %85 = icmp slt i32 %tmp0_v1.i60.i.i, %84
  br i1 %85, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_804940C.i.i:                                   ; preds = %BB_804943D.i.preheader.i, %BB_8049436.i.i
  %86 = phi i32 [ %tmp0_v1.i145.i.i, %BB_8049436.i.i ], [ %146, %BB_804943D.i.preheader.i ]
  %87 = load i32, i32* %33, align 4
  %tmp0_v3.i102.i.i = add i32 %87, %86
  %88 = inttoptr i32 %tmp0_v3.i102.i.i to i8*
  %89 = load i8, i8* %88, align 1
  %tmp0_v5.i104.i.i = sext i8 %89 to i32
  store i32 %tmp0_v5.i104.i.i, i32* %95, align 4
  %90 = load i32, i32* %35, align 8
  store i32 %90, i32* %42, align 16
  store i32 134517807, i32* %43, align 4
  %arg.i.i24.i = load i32, i32* %42, align 16
  %arg2.i.i25.i = load i32, i32* %95, align 4
  %91 = tail call i32 @strchr(i32 %arg.i.i24.i, i32 %arg2.i.i25.i)
  %92 = icmp eq i32 %91, 0
  %.pre.pre.i = load i32, i32* %48, align 16
  br i1 %92, label %BB_804944E.i.i, label %BB_8049436.i.i

BB_804949E.i.loopexit.i:                          ; preds = %BB_8049486.i.i, %BB_804945C.i.i
  %.pre41.i = phi i32 [ %82, %BB_804945C.i.i ], [ %tmp0_v1.i248.i.i, %BB_8049486.i.i ]
  %.pre42.i = load i32, i32* %96, align 8
  br label %BB_804949E.i.i

BB_804949E.i.i:                                   ; preds = %BB_804944E.i.i, %BB_804949E.i.loopexit.i
  %93 = phi i32 [ %.pre42.i, %BB_804949E.i.loopexit.i ], [ %141, %BB_804944E.i.i ]
  %94 = phi i32 [ %.pre41.i, %BB_804949E.i.loopexit.i ], [ %142, %BB_804944E.i.i ]
  %.not.i118.i.i = icmp sgt i32 %94, %93
  br i1 %.not.i118.i.i, label %BB_80494AC.i.i, label %BB_80494BF.i.backedge.i

BB_804943D.i.preheader.lr.ph.i:                   ; preds = %0
  %tmp2_v7.i107.i.i = add i32 %tmp0_v.i17.i, -16556
  %95 = inttoptr i32 %tmp2_v7.i107.i.i to i32*
  %tmp2_v1.i297.i.i = add i32 %tmp0_v.i17.i, -16504
  %96 = inttoptr i32 %tmp2_v1.i297.i.i to i32*
  br label %BB_804943D.i.preheader.i

BB_80495BF.ithread-pre-split.i:                   ; preds = %BB_8049555.i.i
  %.pr.i = load i32, i32* %67, align 8
  br label %BB_80495BF.i.i

BB_80495BF.i.i:                                   ; preds = %BB_804957F.i.i, %BB_80495BF.ithread-pre-split.i
  %97 = phi i32 [ %.pr.i, %BB_80495BF.ithread-pre-split.i ], [ %tmp0_v14.i209.i.i, %BB_804957F.i.i ]
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %BB_8049653.i.backedge.i, label %BB_80495CC.i.i

BB_8049538.i.preheader.i:                         ; preds = %BB_8049653.i.backedge.i, %BB_8049538.i.preheader.lr.ph.i
  %99 = phi i32 [ %64, %BB_8049538.i.preheader.lr.ph.i ], [ %139, %BB_8049653.i.backedge.i ]
  %100 = phi i32 [ %63, %BB_8049538.i.preheader.lr.ph.i ], [ %138, %BB_8049653.i.backedge.i ]
  %101 = icmp slt i32 %100, %99
  br i1 %101, label %BB_8049507.i.i, label %BB_8049549.i.i

BB_8049436.i.i:                                   ; preds = %BB_804940C.i.i
  %tmp0_v1.i145.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i145.i.i, i32* %48, align 16
  %102 = load i32, i32* %45, align 4
  %103 = icmp slt i32 %tmp0_v1.i145.i.i, %102
  br i1 %103, label %BB_804940C.i.i, label %BB_804944E.i.i

BB_8049549.i.i:                                   ; preds = %BB_8049538.i.preheader.i, %BB_8049531.i.i, %BB_8049507.i.i
  store i32 0, i32* %67, align 8
  %104 = load i32, i32* %48, align 16
  %105 = load i32, i32* %45, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %BB_8049555.i.i, label %BB_8049653.i.backedge.i

BB_804957F.i.i:                                   ; preds = %BB_8049555.i.i
  %107 = load i32, i32* %48, align 16
  %108 = load i32, i32* %33, align 4
  %tmp0_v3.i202.i.i = add i32 %108, %107
  %109 = inttoptr i32 %tmp0_v3.i202.i.i to i8*
  %110 = load i8, i8* %109, align 1
  %111 = load i32, i32* %67, align 8
  %tmp0_v8.i.i.i = add i32 %111, %tmp2_v5.i204.i.i
  %112 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %110, i8* %112, align 1
  %113 = load i32, i32* %48, align 16
  %tmp0_v11.i.i.i = add i32 %113, 1
  store i32 %tmp0_v11.i.i.i, i32* %48, align 16
  %114 = load i32, i32* %67, align 8
  %tmp0_v14.i209.i.i = add i32 %114, 1
  store i32 %tmp0_v14.i209.i.i, i32* %67, align 8
  %115 = load i32, i32* %48, align 16
  %116 = load i32, i32* %45, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %BB_8049555.i.i, label %BB_80495BF.i.i

BB_80494AC.i.i:                                   ; preds = %BB_804949E.i.i
  %118 = load i32, i32* %37, align 4
  %119 = inttoptr i32 %118 to i32*
  %120 = load i32, i32* %119, align 4
  %tmp2_v2.i218.i.i = add i32 %120, 1
  store i32 %tmp2_v2.i218.i.i, i32* %119, align 4
  %.pre43.i = load i32, i32* %48, align 16
  br label %BB_80494BF.i.backedge.i

BB_80494BF.i.backedge.i:                          ; preds = %BB_80494AC.i.i, %BB_804949E.i.i
  %121 = phi i32 [ %.pre43.i, %BB_80494AC.i.i ], [ %94, %BB_804949E.i.i ]
  %122 = load i32, i32* %45, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %BB_804943D.i.preheader.i, label %BB_80494D1.i.i

BB_8049486.i.i:                                   ; preds = %BB_804945C.i.i
  %tmp0_v1.i248.i.i = add i32 %82, 1
  store i32 %tmp0_v1.i248.i.i, i32* %48, align 16
  %124 = load i32, i32* %45, align 4
  %125 = icmp slt i32 %tmp0_v1.i248.i.i, %124
  br i1 %125, label %BB_804945C.i.i, label %BB_804949E.i.loopexit.i

BB_80495CC.i.i:                                   ; preds = %BB_80495BF.i.i
  %tmp0_v2.i281.i.i = add i32 %97, %tmp2_v5.i204.i.i
  %126 = inttoptr i32 %tmp0_v2.i281.i.i to i8*
  store i8 0, i8* %126, align 1
  store i32 %tmp2_v5.i204.i.i, i32* %42, align 16
  store i32 134518252, i32* %43, align 4
  %arg.i.i33.i = load i32, i32* %42, align 16
  %127 = tail call i32 @strlen(i32 %arg.i.i33.i)
  %tmp0_v1.i12.i.i = add i32 %127, 1
  store i32 %tmp0_v1.i12.i.i, i32* %68, align 4
  %128 = load i32, i32* %62, align 4
  %tmp4_v.i.i.i7 = shl i32 %128, 2
  %129 = load i32, i32* %61, align 16
  %tmp2_v8.i18.i.i = add i32 %tmp4_v.i.i.i7, %129
  store i32 %tmp0_v1.i12.i.i, i32* %42, align 16
  store i32 134518301, i32* %43, align 4
  %arg.i.i36.i = load i32, i32* %42, align 16
  %130 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %131 = inttoptr i32 %tmp2_v8.i18.i.i to i32*
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %62, align 4
  %tmp4_v.i159.i.i = shl i32 %132, 2
  %133 = load i32, i32* %61, align 16
  %tmp0_v4.i162.i.i = add i32 %133, %tmp4_v.i159.i.i
  %134 = inttoptr i32 %tmp0_v4.i162.i.i to i32*
  %135 = load i32, i32* %134, align 4
  store i32 %tmp2_v5.i204.i.i, i32* %66, align 4
  store i32 %135, i32* %42, align 16
  store i32 134518345, i32* %43, align 4
  %arg.i.i38.i = load i32, i32* %42, align 16
  %arg2.i.i39.i = load i32, i32* %66, align 4
  %136 = tail call i32 @strcpy(i32 %arg.i.i38.i, i32 %arg2.i.i39.i)
  %137 = load i32, i32* %62, align 4
  %tmp0_v2.i310.i.i = add i32 %137, 1
  store i32 %tmp0_v2.i310.i.i, i32* %62, align 4
  br label %BB_8049653.i.backedge.i

BB_8049653.i.backedge.i:                          ; preds = %BB_80495CC.i.i, %BB_8049549.i.i, %BB_80495BF.i.i
  %138 = load i32, i32* %48, align 16
  %139 = load i32, i32* %45, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %BB_8049538.i.preheader.i, label %Func_split.exit

BB_804944E.i.i:                                   ; preds = %BB_804943D.i.preheader.i, %BB_8049436.i.i, %BB_804940C.i.i
  %141 = phi i32 [ %146, %BB_804943D.i.preheader.i ], [ %tmp0_v1.i145.i.i, %BB_8049436.i.i ], [ %.pre.pre.i, %BB_804940C.i.i ]
  store i32 %141, i32* %96, align 8
  %142 = load i32, i32* %48, align 16
  %143 = load i32, i32* %45, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %BB_804945C.i.i, label %BB_804949E.i.i

BB_804943D.i.preheader.i:                         ; preds = %BB_80494BF.i.backedge.i, %BB_804943D.i.preheader.lr.ph.i
  %145 = phi i32 [ %49, %BB_804943D.i.preheader.lr.ph.i ], [ %122, %BB_80494BF.i.backedge.i ]
  %146 = phi i32 [ 0, %BB_804943D.i.preheader.lr.ph.i ], [ %121, %BB_80494BF.i.backedge.i ]
  %147 = icmp slt i32 %146, %145
  br i1 %147, label %BB_804940C.i.i, label %BB_804944E.i.i

Func_split.exit:                                  ; preds = %BB_8049653.i.backedge.i, %BB_80494D1.i.i
  %148 = load i32, i32* %61, align 16
  %149 = load i32, i32* %28, align 8
  %tmp2_v.i88.i = add i32 %149, -60
  %150 = inttoptr i32 %tmp2_v.i88.i to i32*
  store i32 %148, i32* %150, align 4
  %tmp2_v1.i89.i = add i32 %149, -68
  %151 = inttoptr i32 %tmp2_v1.i89.i to i32*
  %tmp2_v.i59.i = add i32 %149, -72
  %152 = inttoptr i32 %tmp2_v.i59.i to i32*
  store i32 0, i32* %151, align 4
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %BB_80492FF.i, label %BB_8049328.i

BB_804935A.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %155 = load i32, i32* %150, align 4
  store i32 %155, i32* %26, align 16
  store i32 134517605, i32* %27, align 4
  %arg.i.i = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i)
  ret void

BB_8049328.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %tmp2_v.i2.i = add i32 %149, -64
  %156 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* %152, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %BB_8049331.i, label %BB_804935A.i

BB_8049331.i:                                     ; preds = %BB_8049331.i, %BB_8049328.i
  %storemerge311 = phi i32 [ %tmp0_v2.i39.i, %BB_8049331.i ], [ 0, %BB_8049328.i ]
  %tmp4_v.i.i = shl i32 %storemerge311, 2
  %159 = load i32, i32* %150, align 4
  %tmp0_v3.i.i = add i32 %159, %tmp4_v.i.i
  %160 = inttoptr i32 %tmp0_v3.i.i to i32*
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %26, align 16
  store i32 134517579, i32* %27, align 4
  %arg.i.i8 = load i32, i32* %26, align 16
  tail call void @free(i32 %arg.i.i8)
  %162 = load i32, i32* %156, align 4
  %tmp0_v2.i39.i = add i32 %162, 1
  store i32 %tmp0_v2.i39.i, i32* %156, align 4
  %163 = load i32, i32* %152, align 4
  %164 = icmp slt i32 %tmp0_v2.i39.i, %163
  br i1 %164, label %BB_8049331.i, label %BB_804935A.i

BB_80492FF.i:                                     ; preds = %BB_80492FF.i, %Func_split.exit
  %storemerge10 = phi i32 [ %tmp0_v2.i78.i, %BB_80492FF.i ], [ 0, %Func_split.exit ]
  %tmp4_v.i25.i = shl i32 %storemerge10, 2
  %165 = load i32, i32* %150, align 4
  %tmp0_v3.i28.i = add i32 %165, %tmp4_v.i25.i
  %166 = inttoptr i32 %tmp0_v3.i28.i to i32*
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %26, align 16
  store i32 134517529, i32* %27, align 4
  %arg.i.i9 = load i32, i32* %26, align 16
  %168 = inttoptr i32 %arg.i.i9 to i8*
  %169 = tail call i32 @puts(i8* nonnull dereferenceable(1) %168)
  %170 = load i32, i32* %151, align 4
  %tmp0_v2.i78.i = add i32 %170, 1
  store i32 %tmp0_v2.i78.i, i32* %151, align 4
  %171 = load i32, i32* %152, align 4
  %172 = icmp slt i32 %tmp0_v2.i78.i, %171
  br i1 %172, label %BB_80492FF.i, label %BB_8049328.i
}
define internal fastcc { i64, i16 } @float64_to_floatx80(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = and i64 %0, 4503599627370495
  %3 = lshr i64 %0, 52
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 2047
  %6 = lshr i64 %0, 63
  %7 = trunc i64 %6 to i16
  switch i32 %5, label %45 [
    i32 2047, label %8
    i32 0, label %32
  ]

8:                                                ; preds = %1
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %8
  %11 = and i64 %0, 9221120237041090560
  %12 = icmp ne i64 %11, 9218868437227405312
  %13 = and i64 %0, 2251799813685247
  %14 = icmp eq i64 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i8, i8* @fp_status.2, align 1, !noalias !77
  %18 = or i8 %17, 1
  store i8 %18, i8* @fp_status.2, align 1, !noalias !77
  br label %19

19:                                               ; preds = %16, %10
  %20 = shl i64 %0, 12
  %21 = icmp eq i64 %20, 0
  %22 = lshr exact i64 %20, 1
  %23 = or i64 %22, -9223372036854775808
  %24 = shl nuw i16 %7, 15
  %25 = or i16 %24, 32767
  %26 = select i1 %21, i64 -4611686018427387904, i64 %23
  %27 = select i1 %21, i16 -1, i16 %25
  %28 = insertvalue { i64, i16 } poison, i64 %26, 0
  br label %56

29:                                               ; preds = %8
  %30 = shl nuw i16 %7, 15
  %31 = or i16 %30, 32767
  br label %56

32:                                               ; preds = %1
  %33 = icmp eq i64 %2, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = shl nuw i16 %7, 15
  br label %56

36:                                               ; preds = %32
  %ctlz.sh = lshr i64 %2, 1
  %ctlz.step = or i64 %ctlz.sh, %2
  %ctlz.sh1 = lshr i64 %ctlz.step, 2
  %ctlz.step2 = or i64 %ctlz.sh1, %ctlz.step
  %ctlz.sh3 = lshr i64 %ctlz.step2, 4
  %ctlz.step4 = or i64 %ctlz.sh3, %ctlz.step2
  %ctlz.sh5 = lshr i64 %ctlz.step4, 8
  %ctlz.step6 = or i64 %ctlz.sh5, %ctlz.step4
  %ctlz.sh7 = lshr i64 %ctlz.step6, 16
  %ctlz.step8 = or i64 %ctlz.sh7, %ctlz.step6
  %ctlz.sh9 = lshr i64 %ctlz.step8, 32
  %ctlz.step10 = or i64 %ctlz.sh9, %ctlz.step8
  %37 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %37, 6148914691236517205
  %ctpop.sh = lshr i64 %37, 1
  %cppop.and2 = and i64 %ctpop.sh, 6148914691236517205
  %ctpop.step = add nuw i64 %cppop.and2, %cppop.and1
  %cppop.and111 = and i64 %ctpop.step, 3689348814741910323
  %ctpop.sh12 = lshr i64 %ctpop.step, 2
  %cppop.and213 = and i64 %ctpop.sh12, 3689348814741910323
  %ctpop.step14 = add nuw nsw i64 %cppop.and213, %cppop.and111
  %cppop.and115 = and i64 %ctpop.step14, 506381209866536711
  %ctpop.sh16 = lshr i64 %ctpop.step14, 4
  %cppop.and217 = and i64 %ctpop.sh16, 506381209866536711
  %ctpop.step18 = add nuw nsw i64 %cppop.and217, %cppop.and115
  %cppop.and119 = and i64 %ctpop.step18, 4222189076152335
  %ctpop.sh20 = lshr i64 %ctpop.step18, 8
  %cppop.and221 = and i64 %ctpop.sh20, 4222189076152335
  %ctpop.step22 = add nuw nsw i64 %cppop.and221, %cppop.and119
  %cppop.and123 = and i64 %ctpop.step22, 133143986207
  %ctpop.sh24 = lshr i64 %ctpop.step22, 16
  %cppop.and225 = and i64 %ctpop.sh24, 133143986207
  %ctpop.step26 = add nuw nsw i64 %cppop.and225, %cppop.and123
  %ctpop.sh28 = lshr i64 %ctpop.step26, 32
  %ctpop.step30 = add nuw nsw i64 %ctpop.sh28, %ctpop.step26
  %38 = trunc i64 %ctpop.step30 to i32
  %39 = shl nuw nsw i32 %38, 24
  %40 = add nsw i32 %39, -184549376
  %41 = ashr exact i32 %40, 24
  %42 = zext i32 %41 to i64
  %43 = shl i64 %2, %42
  %44 = sub nsw i32 1, %41
  br label %45

45:                                               ; preds = %36, %1
  %46 = phi i64 [ %2, %1 ], [ %43, %36 ]
  %47 = phi i32 [ %5, %1 ], [ %44, %36 ]
  %48 = shl i64 %46, 11
  %49 = or i64 %48, -9223372036854775808
  %50 = trunc i64 %6 to i32
  %51 = shl nuw nsw i32 %50, 15
  %52 = or i32 %51, 15360
  %53 = add nsw i32 %52, %47
  %54 = trunc i32 %53 to i16
  %55 = insertvalue { i64, i16 } poison, i64 %49, 0
  br label %56

56:                                               ; preds = %45, %34, %29, %19
  %57 = phi { i64, i16 } [ %28, %19 ], [ { i64 -9223372036854775808, i16 poison }, %29 ], [ { i64 0, i16 poison }, %34 ], [ %55, %45 ]
  %58 = phi i16 [ %27, %19 ], [ %31, %29 ], [ %35, %34 ], [ %54, %45 ]
  %59 = insertvalue { i64, i16 } %57, i16 %58, 1
  ret { i64, i16 } %59
}
define internal fastcc i64 @helper_fstl_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 32767
  %7 = lshr i16 %5, 15
  %8 = icmp eq i16 %6, 32767
  br i1 %8, label %9, label %37

9:                                                ; preds = %0
  %10 = and i64 %3, 9223372036854775807
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = and i64 %3, -4611686018427387905
  %14 = and i64 %3, 4611686018427387903
  %15 = icmp eq i64 %14, 0
  %16 = icmp ne i64 %13, %3
  %17 = or i1 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !80
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !80
  br label %21

21:                                               ; preds = %18, %12
  %22 = icmp sgt i64 %3, -1
  %23 = shl i64 %3, 1
  %24 = select i1 %22, i64 -9223372036854775808, i64 %23
  %25 = lshr i64 %24, 12
  %26 = icmp ult i64 %24, 4096
  %27 = zext i16 %7 to i64
  %28 = shl nuw i64 %27, 63
  %29 = select i1 %22, i64 -9223372036854775808, i64 %28
  %30 = or i64 %25, %29
  %31 = or i64 %30, 9218868437227405312
  %32 = select i1 %26, i64 -2251799813685248, i64 %31
  br label %floatx80_to_float64.exit

33:                                               ; preds = %9
  %34 = zext i16 %7 to i64
  %35 = shl nuw i64 %34, 63
  %36 = or i64 %35, 9218868437227405312
  br label %floatx80_to_float64.exit

37:                                               ; preds = %0
  %38 = zext i16 %6 to i32
  %39 = lshr i64 %3, 1
  %40 = and i64 %3, 1
  %41 = or i64 %39, %40
  %42 = icmp ne i16 %6, 0
  %43 = icmp ne i64 %3, 0
  %44 = select i1 %42, i1 true, i1 %43
  %45 = add nsw i32 %38, -15361
  %46 = select i1 %44, i32 %45, i32 0
  %47 = trunc i64 %41 to i32
  %48 = and i32 %47, 1023
  %49 = and i32 %46, 65535
  %50 = icmp ugt i32 %49, 2044
  br i1 %50, label %51, label %93

51:                                               ; preds = %37
  %52 = icmp sgt i32 %46, 2045
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %46, 2045
  %55 = add nuw i64 %41, 512
  %56 = icmp slt i64 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %64

58:                                               ; preds = %53, %51
  %59 = load i8, i8* @fp_status.2, align 1
  %60 = or i8 %59, 40
  store i8 %60, i8* @fp_status.2, align 1
  %61 = zext i16 %7 to i64
  %62 = shl nuw i64 %61, 63
  %63 = or i64 %62, 9218868437227405312
  br label %floatx80_to_float64.exit

64:                                               ; preds = %53
  %65 = icmp slt i32 %46, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %64
  %67 = icmp ne i32 %46, -1
  %68 = icmp sgt i64 %55, -1
  %69 = select i1 %67, i1 true, i1 %68
  %70 = sub nsw i32 0, %46
  %71 = icmp ult i32 %70, 64
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = zext i32 %70 to i64
  %74 = lshr i64 %41, %73
  %75 = and i32 %46, 63
  %76 = zext i32 %75 to i64
  %77 = shl i64 %41, %76
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = or i64 %74, %79
  br label %84

81:                                               ; preds = %66
  %82 = icmp ne i64 %41, 0
  %83 = zext i1 %82 to i64
  br label %84

84:                                               ; preds = %81, %72
  %85 = phi i64 [ %80, %72 ], [ %83, %81 ]
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 1023
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %69, i1 %88, i1 false
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8, i8* @fp_status.2, align 1
  %92 = or i8 %91, 16
  br label %100

93:                                               ; preds = %84, %64, %37
  %94 = phi i64 [ %85, %84 ], [ %41, %64 ], [ %41, %37 ]
  %95 = phi i32 [ 0, %84 ], [ %46, %64 ], [ %46, %37 ]
  %96 = phi i32 [ %87, %84 ], [ %48, %64 ], [ %48, %37 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load i8, i8* @fp_status.2, align 1
  br label %100

100:                                              ; preds = %98, %90
  %101 = phi i8 [ %92, %90 ], [ %99, %98 ]
  %102 = phi i32 [ %87, %90 ], [ %96, %98 ]
  %103 = phi i32 [ 0, %90 ], [ %95, %98 ]
  %104 = phi i64 [ %85, %90 ], [ %94, %98 ]
  %105 = or i8 %101, 32
  store i8 %105, i8* @fp_status.2, align 1
  br label %106

106:                                              ; preds = %100, %93
  %107 = phi i32 [ %102, %100 ], [ 0, %93 ]
  %108 = phi i32 [ %103, %100 ], [ %95, %93 ]
  %109 = phi i64 [ %104, %100 ], [ %94, %93 ]
  %110 = add i64 %109, 512
  %111 = lshr i64 %110, 10
  %112 = icmp eq i32 %107, 512
  %113 = zext i1 %112 to i64
  %114 = xor i64 %113, -1
  %115 = and i64 %111, %114
  %116 = icmp eq i64 %115, 0
  %117 = zext i16 %7 to i64
  %118 = shl nuw i64 %117, 63
  %119 = zext i32 %108 to i64
  %120 = shl i64 %119, 52
  %121 = select i1 %116, i64 0, i64 %120
  %122 = or i64 %115, %118
  %123 = add i64 %122, %121
  br label %floatx80_to_float64.exit

floatx80_to_float64.exit:                         ; preds = %106, %58, %33, %21
  %124 = phi i64 [ %32, %21 ], [ %36, %33 ], [ %63, %58 ], [ %123, %106 ]
  ret i64 %124
}
define internal fastcc void @helper_fpop() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  store i32 %3, i32* @fpstt, align 16
  ret void
}
define internal fastcc void @helper_fmov_FT0_STN() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = and i32 %1, 7
  %3 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %2, i32 0
  %4 = bitcast %struct.floatx80* %3 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.floatx80* @ft0 to i8*), i8* noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)  nounwind 
  ret void
}
define internal fastcc void @helper_fmul_ST0_FT0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.floatx80, %struct.floatx80* @ft0, i32 0, i32 0), align 8
  %7 = load i16, i16* getelementptr inbounds (%struct.floatx80, %struct.floatx80* @ft0, i32 0, i32 1), align 8
  %8 = tail call fastcc { i64, i16 } @floatx80_mul(i64 %3, i16 %5, i64 %6, i16 %7)
  %9 = extractvalue { i64, i16 } %8, 0
  %10 = extractvalue { i64, i16 } %8, 1
  store i64 %9, i64* %2, align 16
  store i16 %10, i16* %4, align 8
  ret void
}
define internal fastcc void @helper_fldl_FT0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = tail call fastcc { i64, i16 } @float64_to_floatx80(i64 noundef %0)
  %3 = extractvalue { i64, i16 } %2, 0
  %4 = extractvalue { i64, i16 } %2, 1
  store i64 %3, i64* getelementptr inbounds (%struct.floatx80, %struct.floatx80* @ft0, i32 0, i32 0), align 8
  store i16 %4, i16* getelementptr inbounds (%struct.floatx80, %struct.floatx80* @ft0, i32 0, i32 1), align 8
  ret void
}
define internal fastcc void @helper_fmul_STN_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 16
  %6 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %3, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 16
  %10 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = tail call fastcc { i64, i16 } @floatx80_mul(i64 %5, i16 %7, i64 %9, i16 %11)
  %13 = extractvalue { i64, i16 } %12, 0
  %14 = extractvalue { i64, i16 } %12, 1
  store i64 %13, i64* %4, align 16
  store i16 %14, i16* %6, align 8
  ret void
}
define internal fastcc { i64, i16 } @floatx80_mul(i64 %0, i16 %1, i64 %2, i16 %3) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %5 = and i16 %1, 32767
  %6 = zext i16 %5 to i32
  %7 = and i16 %3, 32767
  %8 = zext i16 %7 to i32
  %9 = xor i16 %3, %1
  %10 = and i16 %9, -32768
  %11 = icmp eq i16 %5, 32767
  br i1 %11, label %12, label %30

12:                                               ; preds = %4
  %13 = and i64 %0, 9223372036854775807
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = icmp ne i16 %7, 32767
  %17 = and i64 %2, 9223372036854775807
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15, %12
  %21 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %22 = extractvalue { i64, i16 } %21, 0
  %23 = extractvalue { i64, i16 } %21, 1
  br label %204

24:                                               ; preds = %15
  %25 = zext i16 %7 to i64
  %26 = or i64 %25, %2
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = or i16 %9, 32767
  br label %204

30:                                               ; preds = %4
  %31 = icmp eq i16 %7, 32767
  br i1 %31, label %32, label %48

32:                                               ; preds = %30
  %33 = and i64 %2, 9223372036854775807
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %37 = extractvalue { i64, i16 } %36, 0
  %38 = extractvalue { i64, i16 } %36, 1
  br label %204

39:                                               ; preds = %32
  %40 = zext i16 %5 to i64
  %41 = or i64 %40, %0
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %24
  %44 = load i8, i8* @fp_status.2, align 1
  %45 = or i8 %44, 1
  store i8 %45, i8* @fp_status.2, align 1
  br label %204

46:                                               ; preds = %39
  %47 = or i16 %9, 32767
  br label %204

48:                                               ; preds = %30
  %49 = icmp eq i16 %5, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = icmp eq i64 %0, 0
  br i1 %51, label %204, label %52

52:                                               ; preds = %50
  %ctlz.sh = lshr i64 %0, 1
  %ctlz.step = or i64 %ctlz.sh, %0
  %ctlz.sh1 = lshr i64 %ctlz.step, 2
  %ctlz.step2 = or i64 %ctlz.sh1, %ctlz.step
  %ctlz.sh3 = lshr i64 %ctlz.step2, 4
  %ctlz.step4 = or i64 %ctlz.sh3, %ctlz.step2
  %ctlz.sh5 = lshr i64 %ctlz.step4, 8
  %ctlz.step6 = or i64 %ctlz.sh5, %ctlz.step4
  %ctlz.sh7 = lshr i64 %ctlz.step6, 16
  %ctlz.step8 = or i64 %ctlz.sh7, %ctlz.step6
  %ctlz.sh9 = lshr i64 %ctlz.step8, 32
  %ctlz.step10 = or i64 %ctlz.sh9, %ctlz.step8
  %53 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %53, 6148914691236517205
  %ctpop.sh = lshr i64 %53, 1
  %cppop.and2 = and i64 %ctpop.sh, 6148914691236517205
  %ctpop.step = add nuw i64 %cppop.and2, %cppop.and1
  %cppop.and111 = and i64 %ctpop.step, 3689348814741910323
  %ctpop.sh12 = lshr i64 %ctpop.step, 2
  %cppop.and213 = and i64 %ctpop.sh12, 3689348814741910323
  %ctpop.step14 = add nuw nsw i64 %cppop.and213, %cppop.and111
  %cppop.and115 = and i64 %ctpop.step14, 506381209866536711
  %ctpop.sh16 = lshr i64 %ctpop.step14, 4
  %cppop.and217 = and i64 %ctpop.sh16, 506381209866536711
  %ctpop.step18 = add nuw nsw i64 %cppop.and217, %cppop.and115
  %cppop.and119 = and i64 %ctpop.step18, 4222189076152335
  %ctpop.sh20 = lshr i64 %ctpop.step18, 8
  %cppop.and221 = and i64 %ctpop.sh20, 4222189076152335
  %ctpop.step22 = add nuw nsw i64 %cppop.and221, %cppop.and119
  %cppop.and123 = and i64 %ctpop.step22, 133143986207
  %ctpop.sh24 = lshr i64 %ctpop.step22, 16
  %cppop.and225 = and i64 %ctpop.sh24, 133143986207
  %ctpop.step26 = add nuw nsw i64 %cppop.and225, %cppop.and123
  %cppop.and127 = and i64 %ctpop.step26, 63
  %ctpop.sh28 = lshr i64 %ctpop.step26, 32
  %ctpop.step30 = add nuw nsw i64 %cppop.and127, %ctpop.sh28
  %54 = trunc i64 %ctpop.step30 to i32
  %55 = shl i64 %0, %ctpop.step30
  %56 = sub nsw i32 1, %54
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i32 [ %56, %52 ], [ %6, %48 ]
  %59 = phi i64 [ %55, %52 ], [ %0, %48 ]
  %60 = icmp eq i16 %7, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = icmp eq i64 %2, 0
  br i1 %62, label %204, label %63

63:                                               ; preds = %61
  %ctlz.sh31 = lshr i64 %2, 1
  %ctlz.step32 = or i64 %ctlz.sh31, %2
  %ctlz.sh33 = lshr i64 %ctlz.step32, 2
  %ctlz.step34 = or i64 %ctlz.sh33, %ctlz.step32
  %ctlz.sh35 = lshr i64 %ctlz.step34, 4
  %ctlz.step36 = or i64 %ctlz.sh35, %ctlz.step34
  %ctlz.sh37 = lshr i64 %ctlz.step36, 8
  %ctlz.step38 = or i64 %ctlz.sh37, %ctlz.step36
  %ctlz.sh39 = lshr i64 %ctlz.step38, 16
  %ctlz.step40 = or i64 %ctlz.sh39, %ctlz.step38
  %ctlz.sh41 = lshr i64 %ctlz.step40, 32
  %ctlz.step42 = or i64 %ctlz.sh41, %ctlz.step40
  %64 = xor i64 %ctlz.step42, -1
  %cppop.and143 = and i64 %64, 6148914691236517205
  %ctpop.sh44 = lshr i64 %64, 1
  %cppop.and245 = and i64 %ctpop.sh44, 6148914691236517205
  %ctpop.step46 = add nuw i64 %cppop.and245, %cppop.and143
  %cppop.and147 = and i64 %ctpop.step46, 3689348814741910323
  %ctpop.sh48 = lshr i64 %ctpop.step46, 2
  %cppop.and249 = and i64 %ctpop.sh48, 3689348814741910323
  %ctpop.step50 = add nuw nsw i64 %cppop.and249, %cppop.and147
  %cppop.and151 = and i64 %ctpop.step50, 506381209866536711
  %ctpop.sh52 = lshr i64 %ctpop.step50, 4
  %cppop.and253 = and i64 %ctpop.sh52, 506381209866536711
  %ctpop.step54 = add nuw nsw i64 %cppop.and253, %cppop.and151
  %cppop.and155 = and i64 %ctpop.step54, 4222189076152335
  %ctpop.sh56 = lshr i64 %ctpop.step54, 8
  %cppop.and257 = and i64 %ctpop.sh56, 4222189076152335
  %ctpop.step58 = add nuw nsw i64 %cppop.and257, %cppop.and155
  %cppop.and159 = and i64 %ctpop.step58, 133143986207
  %ctpop.sh60 = lshr i64 %ctpop.step58, 16
  %cppop.and261 = and i64 %ctpop.sh60, 133143986207
  %ctpop.step62 = add nuw nsw i64 %cppop.and261, %cppop.and159
  %cppop.and163 = and i64 %ctpop.step62, 63
  %ctpop.sh64 = lshr i64 %ctpop.step62, 32
  %ctpop.step66 = add nuw nsw i64 %cppop.and163, %ctpop.sh64
  %65 = trunc i64 %ctpop.step66 to i32
  %66 = shl i64 %2, %ctpop.step66
  %67 = sub nsw i32 1, %65
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i32 [ %67, %63 ], [ %8, %57 ]
  %70 = phi i64 [ %66, %63 ], [ %2, %57 ]
  %71 = add nsw i32 %69, %58
  %72 = lshr i64 %59, 32
  %73 = lshr i64 %70, 32
  %74 = and i64 %59, 4294967295
  %75 = and i64 %70, 4294967295
  %76 = mul nuw i64 %75, %74
  %77 = mul nuw i64 %73, %74
  %78 = mul nuw i64 %75, %72
  %79 = mul nuw i64 %73, %72
  %80 = add i64 %77, %78
  %81 = icmp ult i64 %80, %78
  %82 = select i1 %81, i64 4294967296, i64 0
  %83 = lshr i64 %80, 32
  %84 = shl i64 %80, 32
  %85 = add i64 %84, %76
  %86 = icmp ult i64 %85, %84
  %87 = zext i1 %86 to i64
  %88 = add nuw i64 %83, %79
  %89 = add i64 %88, %82
  %90 = add i64 %89, %87
  %91 = icmp sgt i64 %90, 0
  %92 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %85, i64 1)
  %93 = select i1 %91, i64 %92, i64 %90
  %94 = zext i1 %91 to i64
  %95 = shl i64 %85, %94
  %.v = select i1 %91, i32 -16383, i32 -16382
  %96 = add nsw i32 %71, %.v
  %97 = add nsw i32 %96, -32766
  %98 = icmp ult i32 %97, -32765
  br i1 %98, label %99, label %173

99:                                               ; preds = %68
  %100 = icmp sgt i32 %96, 32766
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = icmp eq i32 %96, 32766
  %103 = icmp eq i64 %93, -1
  %104 = and i1 %103, %102
  %105 = icmp slt i64 %95, 0
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %112

107:                                              ; preds = %101, %99
  %108 = load i8, i8* @fp_status.2, align 1
  %109 = or i8 %108, 40
  store i8 %109, i8* @fp_status.2, align 1
  %110 = or i16 %9, 32767
  %111 = zext i16 %110 to i32
  br label %roundAndPackFloatx80.exit

112:                                              ; preds = %101
  %113 = icmp slt i32 %96, 1
  br i1 %113, label %114, label %173

114:                                              ; preds = %112
  %115 = icmp eq i32 %96, 0
  %116 = select i1 %115, i1 %105, i1 false
  %117 = icmp ne i64 %93, -1
  %118 = xor i1 %116, true
  %119 = or i1 %117, %118
  %120 = sub nsw i32 1, %96
  %121 = icmp ult i32 %120, 64
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = add nsw i32 %96, 63
  %124 = and i32 %123, 63
  %125 = zext i32 %124 to i64
  %126 = shl i64 %93, %125
  %127 = icmp ne i64 %95, 0
  %128 = zext i1 %127 to i64
  %129 = or i64 %126, %128
  %130 = zext i32 %120 to i64
  %131 = lshr i64 %93, %130
  br label %142

132:                                              ; preds = %114
  %133 = icmp eq i32 %96, -63
  br i1 %133, label %134, label %138

134:                                              ; preds = %132
  %135 = icmp ne i64 %95, 0
  %136 = zext i1 %135 to i64
  %137 = or i64 %93, %136
  br label %142

138:                                              ; preds = %132
  %139 = or i64 %95, %93
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  br label %142

142:                                              ; preds = %138, %134, %122
  %143 = phi i64 [ %129, %122 ], [ %137, %134 ], [ %141, %138 ]
  %144 = phi i64 [ %131, %122 ], [ 0, %134 ], [ 0, %138 ]
  %145 = icmp ne i64 %143, 0
  %146 = select i1 %119, i1 %145, i1 false
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i8, i8* @fp_status.2, align 1
  %149 = or i8 %148, 16
  br label %154

150:                                              ; preds = %142
  %151 = icmp eq i64 %143, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %150
  %153 = load i8, i8* @fp_status.2, align 1
  br label %154

154:                                              ; preds = %152, %147
  %155 = phi i8 [ %153, %152 ], [ %149, %147 ]
  %156 = or i8 %155, 32
  store i8 %156, i8* @fp_status.2, align 1
  br label %157

157:                                              ; preds = %154, %150
  %phi.cmp = icmp sgt i64 %143, -1
  br i1 %phi.cmp, label %167, label %158

158:                                              ; preds = %157
  %159 = add nuw i64 %144, 1
  %160 = and i64 %143, 9223372036854775807
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = xor i64 %162, -1
  %164 = and i64 %159, %163
  %165 = lshr i64 %159, 63
  %166 = trunc i64 %165 to i32
  br label %167

167:                                              ; preds = %158, %157
  %168 = phi i64 [ %144, %157 ], [ %164, %158 ]
  %169 = phi i32 [ 0, %157 ], [ %166, %158 ]
  %170 = zext i16 %10 to i32
  %171 = add nuw nsw i32 %169, %170
  %172 = insertvalue { i64, i16 } poison, i64 %168, 0
  br label %roundAndPackFloatx80.exit

173:                                              ; preds = %112, %68
  %174 = icmp eq i64 %95, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %173
  %176 = load i8, i8* @fp_status.2, align 1
  %177 = or i8 %176, 32
  store i8 %177, i8* @fp_status.2, align 1
  br label %178

178:                                              ; preds = %175, %173
  %179 = icmp sgt i64 %95, -1
  br i1 %179, label %191, label %180

180:                                              ; preds = %178
  %181 = add i64 %93, 1
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = add nuw nsw i32 %96, 1
  br label %194

185:                                              ; preds = %180
  %186 = and i64 %95, 9223372036854775807
  %187 = icmp eq i64 %186, 0
  %188 = zext i1 %187 to i64
  %189 = xor i64 %188, -1
  %190 = and i64 %181, %189
  br label %194

191:                                              ; preds = %178
  %192 = icmp eq i64 %93, 0
  %193 = select i1 %192, i32 0, i32 %96
  br label %194

194:                                              ; preds = %191, %185, %183
  %195 = phi i64 [ %93, %191 ], [ -9223372036854775808, %183 ], [ %190, %185 ]
  %196 = phi i32 [ %193, %191 ], [ %184, %183 ], [ %96, %185 ]
  %197 = zext i16 %10 to i32
  %198 = add nuw nsw i32 %196, %197
  %199 = insertvalue { i64, i16 } poison, i64 %195, 0
  br label %roundAndPackFloatx80.exit

roundAndPackFloatx80.exit:                        ; preds = %194, %167, %107
  %200 = phi { i64, i16 } [ { i64 -9223372036854775808, i16 poison }, %107 ], [ %172, %167 ], [ %199, %194 ]
  %201 = phi i32 [ %111, %107 ], [ %171, %167 ], [ %198, %194 ]
  %202 = trunc i32 %201 to i16
  %203 = extractvalue { i64, i16 } %200, 0
  br label %204

204:                                              ; preds = %roundAndPackFloatx80.exit, %61, %50, %46, %43, %35, %28, %20
  %205 = phi i64 [ %22, %20 ], [ -4611686018427387904, %43 ], [ -9223372036854775808, %28 ], [ %37, %35 ], [ -9223372036854775808, %46 ], [ %203, %roundAndPackFloatx80.exit ], [ 0, %50 ], [ 0, %61 ]
  %206 = phi i16 [ %23, %20 ], [ -1, %43 ], [ %29, %28 ], [ %38, %35 ], [ %47, %46 ], [ %202, %roundAndPackFloatx80.exit ], [ %10, %50 ], [ %10, %61 ]
  %207 = insertvalue { i64, i16 } poison, i64 %205, 0
  %208 = insertvalue { i64, i16 } %207, i16 %206, 1
  ret { i64, i16 } %208
}
define internal fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %5 = and i16 %1, 32767
  %6 = icmp eq i16 %5, 32767
  %7 = and i64 %0, 4611686018427387904
  %8 = icmp eq i64 %7, 0
  %9 = xor i1 %6, true
  %10 = select i1 %9, i1 true, i1 %8
  %11 = and i64 %0, -4611686018427387905
  %12 = and i64 %0, 4611686018427387903
  %13 = icmp ne i64 %12, 0
  %14 = select i1 %6, i1 %13, i1 false
  %15 = icmp eq i64 %11, %0
  %16 = select i1 %14, i1 %15, i1 false
  %17 = and i16 %3, 32767
  %18 = icmp eq i16 %17, 32767
  %19 = and i64 %2, 4611686018427387904
  %20 = icmp ne i64 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  %22 = and i64 %2, -4611686018427387905
  %23 = and i64 %2, 4611686018427387903
  %24 = icmp ne i64 %23, 0
  %25 = select i1 %18, i1 %24, i1 false
  %26 = icmp eq i64 %22, %2
  %27 = select i1 %25, i1 %26, i1 false
  %28 = zext i1 %27 to i8
  %29 = or i1 %16, %27
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i8, i8* @fp_status.2, align 1
  %32 = or i8 %31, 1
  store i8 %32, i8* @fp_status.2, align 1
  br label %33

33:                                               ; preds = %30, %4
  %34 = icmp ult i64 %0, %2
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = icmp ult i64 %2, %0
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = icmp ult i16 %1, %3
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %37, %35, %33
  %41 = phi i8 [ %39, %37 ], [ 0, %33 ], [ 1, %35 ]
  br i1 %16, label %47, label %42

42:                                               ; preds = %40
  br i1 %10, label %50, label %43

43:                                               ; preds = %42
  %44 = or i8 %41, %28
  %45 = icmp eq i8 %44, 0
  %46 = and i1 %21, %45
  br i1 %46, label %50, label %58

47:                                               ; preds = %40
  %48 = icmp eq i8 %41, 0
  %49 = select i1 %27, i1 %48, i1 %21
  br i1 %49, label %50, label %58

50:                                               ; preds = %47, %43, %42
  %51 = icmp ne i16 %17, 32767
  %52 = icmp eq i64 %23, 0
  %53 = select i1 %51, i1 true, i1 %52
  %54 = icmp ne i64 %22, %2
  %55 = select i1 %53, i1 true, i1 %54
  %56 = or i64 %2, -4611686018427387904
  %57 = select i1 %55, i64 %2, i64 %56
  br label %66

58:                                               ; preds = %47, %43
  %59 = icmp ne i16 %5, 32767
  %60 = icmp eq i64 %12, 0
  %61 = select i1 %59, i1 true, i1 %60
  %62 = icmp ne i64 %11, %0
  %63 = select i1 %61, i1 true, i1 %62
  %64 = or i64 %0, -4611686018427387904
  %65 = select i1 %63, i64 %0, i64 %64
  br label %66

66:                                               ; preds = %58, %50
  %67 = phi i64 [ %57, %50 ], [ %65, %58 ]
  %68 = phi i16 [ %3, %50 ], [ %1, %58 ]
  %69 = insertvalue { i64, i16 } poison, i64 %67, 0
  %70 = insertvalue { i64, i16 } %69, i16 %68, 1
  ret { i64, i16 } %70
}
define internal fastcc void @volume_of_a_sphere758(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !89 {
  %tmp2_v.i19.i = add i32 %arg_esp, 4
  %tmp0_v.i20.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i22.i = add i32 %tmp0_v.i20.i, -4
  %3 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i23.i = add i32 %tmp0_v.i20.i, -8
  %4 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i25.i = add i32 %tmp0_v.i20.i, -12
  %5 = inttoptr i32 %tmp2_v5.i25.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i20.i, -16
  %6 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 %tmp2_v.i19.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i20.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517166, i32* %7, align 4
  %8 = load i64, i64* inttoptr (i32 134520848 to i64*), align 16
  tail call fastcc void @helper_fldl_ST0(i64 %8)
  %tmp2_v1.i.i = add i32 %tmp0_v.i20.i, -32
  %tmp5_v2.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %9 = inttoptr i32 %tmp2_v1.i.i to i64*
  store i64 %tmp5_v2.i.i, i64* %9, align 16
  tail call fastcc void @helper_fpop()
  %tmp2_v4.i.i = add i32 %tmp0_v.i20.i, -36
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517193, i32* %10, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i20.i, -40
  %11 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i23.i, i32* %11, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i20.i, -52
  %12 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517251, i32* %12, align 4
  %13 = inttoptr i32 %tmp2_v1.i.i to i32*
  %14 = load i32, i32* %13, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i20.i, -48
  %15 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %14, i32* %15, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i20.i, -28
  %16 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  %17 = load i32, i32* %16, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i20.i, -44
  %18 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %17, i32* %18, align 4
  %19 = inttoptr i32 %tmp2_v2.i.i.i to i64*
  %20 = load i64, i64* %19, align 16
  tail call fastcc void @helper_fldl_ST0(i64 %20)  nounwind 
  tail call fastcc void @helper_fmov_FT0_STN()  nounwind 
  tail call fastcc void @helper_fmul_ST0_FT0()  nounwind 
  %21 = load i64, i64* %19, align 16
  tail call fastcc void @helper_fldl_FT0(i64 %21)  nounwind 
  tail call fastcc void @helper_fmul_ST0_FT0()  nounwind 
  %22 = load i64, i64* inttoptr (i32 134520856 to i64*), align 8
  tail call fastcc void @helper_fldl_ST0(i64 %22)  nounwind 
  tail call fastcc void @helper_fmul_STN_ST0()  nounwind 
  tail call fastcc void @helper_fpop()  nounwind 
  %tmp5_v.i3.i = tail call fastcc i64 @helper_fstl_ST0()
  %23 = inttoptr i32 %tmp2_v3.i.i.i to i64*
  store i64 %tmp5_v.i3.i, i64* %23, align 4
  tail call fastcc void @helper_fpop()
  %spi.bis.756 = ptrtoint[4 x i8]* @str.bis.756 to i32
  store i32 %spi.bis.756, i32* %13, align 16
  store i32 134517218, i32* %10, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i19.i, i32 inreg noundef %17, i32 noundef %tmp2_v1.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !90
  ret void
}
define internal fastcc void @print_0_99_grid231(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !69 {
  %tmp2_v.i26.i = add i32 %arg_esp, 4
  %tmp0_v.i27.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i27.i, -4
  %3 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i27.i, -8
  %4 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i32.i = add i32 %tmp0_v.i27.i, -12
  %5 = inttoptr i32 %tmp2_v5.i32.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i27.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i26.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i27.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v.i3.i = add i32 %tmp0_v.i27.i, -20
  %8 = inttoptr i32 %tmp2_v.i3.i to i32*
  store i32 0, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i27.i, -44
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  %tmp2_v4.i18.i = add i32 %tmp0_v.i27.i, -48
  %10 = inttoptr i32 %tmp2_v4.i18.i to i32*
  %tmp2_v5.i.i = add i32 %tmp0_v.i27.i, -52
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  br label %BB_80491E0.i

BB_8049220.i:                                     ; preds = %BB_80491E0.i
  store i32 10, i32* %10, align 16
  store i32 134517290, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %12 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %.pr.pre = load i32, i32* %8, align 4
  br label %BB_804922D.ithread-pre-split

BB_80491E0.i:                                     ; preds = %BB_804922D.ithread-pre-split, %0
  %r_edx.02 = phi i32 [ 0, %0 ], [ %tmp0_v13.i.i, %BB_804922D.ithread-pre-split ]
  %r_ecx.01 = phi i32 [ %tmp2_v.i26.i, %0 ], [ %tmp0_v13.i.i, %BB_804922D.ithread-pre-split ]
  %13 = phi i32 [ 0, %0 ], [ %.pr, %BB_804922D.ithread-pre-split ]
  store i32 %13, i32* %9, align 4
  %spi.bis.229 = ptrtoint[6 x i8]* @str.bis.229 to i32
  store i32 %spi.bis.229, i32* %10, align 16
  store i32 134517234, i32* %11, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.01, i32 inreg noundef %r_edx.02, i32 noundef %tmp2_v4.i18.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !70
  %15 = load i32, i32* %8, align 4
  %tmp0_v2.i.i = add i32 %15, 1
  store i32 %tmp0_v2.i.i, i32* %8, align 4
  %tmp16_v.i.i = sext i32 %tmp0_v2.i.i to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 1717986919
  %tmp15_v5.i.i = lshr i64 %tmp15_v.i.i, 32
  %16 = trunc i64 %tmp15_v5.i.i to i32
  %tmp0_v7.i.i = ashr i32 %16, 2
  %tmp0_v8.i.i.neg = lshr i32 %tmp0_v2.i.i, 31
  %tmp0_v9.i.i = add nsw i32 %tmp0_v7.i.i, %tmp0_v8.i.i.neg
  %tmp0_v12.i.i.neg = mul i32 %tmp0_v9.i.i, -10
  %tmp0_v13.i.i = add i32 %tmp0_v12.i.i.neg, %tmp0_v2.i.i
  %.not.i.i = icmp eq i32 %tmp0_v13.i.i, 0
  br i1 %.not.i.i, label %BB_8049220.i, label %BB_804922D.ithread-pre-split

BB_804922D.ithread-pre-split:                     ; preds = %BB_80491E0.i, %BB_8049220.i
  %.pr = phi i32 [ %.pr.pre, %BB_8049220.i ], [ %tmp0_v2.i.i, %BB_80491E0.i ]
  %17 = icmp slt i32 %.pr, 100
  br i1 %17, label %BB_80491E0.i, label %.exit

.exit:                                            ; preds = %BB_804922D.ithread-pre-split
  ret void
}
define internal fastcc void @vowel_counter249(i32 %arg_esp) unnamed_addr  norecurse  !retregs !54 {
.exit:
  %tmp2_v.i18.i = add i32 %arg_esp, 4
  %tmp0_v.i19.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i19.i, -4
  %2 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i19.i, -8
  %3 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i24.i = add i32 %tmp0_v.i19.i, -12
  %4 = inttoptr i32 %tmp2_v5.i24.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i26.i = add i32 %tmp0_v.i19.i, -16
  %5 = inttoptr i32 %tmp2_v6.i26.i to i32*
  store i32 %tmp2_v.i18.i, i32* %5, align 16
  %tmp2_v8.i27.i = add i32 %tmp0_v.i19.i, -100
  %6 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i19.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i6.i = add i32 %tmp0_v.i19.i, -43
  %10 = inttoptr i32 %tmp2_v3.i6.i to i32*
  store i32 1931965513, i32* %10, align 4
  %tmp2_v4.i7.i = add i32 %tmp0_v.i19.i, -39
  %11 = inttoptr i32 %tmp2_v4.i7.i to i32*
  store i32 1998610720, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i19.i, -35
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1701080687, i32* %12, align 4
  %tmp2_v6.i8.i = add i32 %tmp0_v.i19.i, -31
  %13 = inttoptr i32 %tmp2_v6.i8.i to i32*
  store i32 1819633266, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i19.i, -27
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1718184992, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i19.i, -23
  %15 = inttoptr i32 %tmp2_v8.i.i to i16*
  store i16 8549, i16* %15, align 2
  %tmp2_v9.i.i = add i32 %tmp0_v.i19.i, -21
  %16 = inttoptr i32 %tmp2_v9.i.i to i8*
  store i8 0, i8* %16, align 1
  %tmp2_v10.i.i = add i32 %tmp0_v.i19.i, -65
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1701541196, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i19.i, -61
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1629505824, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i19.i, -57
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1870209133, i32* %19, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i19.i, -53
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 1176531573, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i19.i, -49
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 1701344353, i32* %21, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i19.i, -45
  %22 = inttoptr i32 %tmp2_v15.i.i to i16*
  store i16 114, i16* %22, align 2
  %tmp2_v16.i.i = add i32 %tmp0_v.i19.i, -76
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 1699045697, i32* %23, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i19.i, -72
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 1867475273, i32* %24, align 8
  %tmp2_v18.i.i = add i32 %tmp0_v.i19.i, -68
  %25 = inttoptr i32 %tmp2_v18.i.i to i16*
  store i16 30037, i16* %25, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i19.i, -66
  %26 = inttoptr i32 %tmp2_v19.i.i to i8*
  store i8 0, i8* %26, align 2
  %tmp2_v22.i.i = add i32 %tmp0_v.i19.i, -112
  %27 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i6.i, i32* %27, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i19.i, -116
  %28 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517404, i32* %28, align 4
  %29 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %tmp2_v23.i.i, i32 %tmp2_v4.i22.i, i32 134529024)
  %30 = extractvalue { i32, i32, i32, i32, i32 } %29, 0
  %31 = extractvalue { i32, i32, i32, i32, i32 } %29, 1
  %32 = extractvalue { i32, i32, i32, i32, i32 } %29, 3
  %33 = extractvalue { i32, i32, i32, i32, i32 } %29, 4
  %tmp2_v.i59.i = add i32 %32, -80
  %34 = inttoptr i32 %tmp2_v.i59.i to i32*
  store i32 %31, i32* %34, align 4
  %tmp2_v2.i62.i = add i32 %32, -57
  %35 = inttoptr i32 %30 to i32*
  store i32 %tmp2_v2.i62.i, i32* %35, align 4
  %tmp2_v4.i63.i = add i32 %30, -4
  %36 = inttoptr i32 %tmp2_v4.i63.i to i32*
  store i32 134517422, i32* %36, align 4
  %37 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %tmp2_v4.i63.i, i32 %32, i32 %33)
  %38 = extractvalue { i32, i32, i32, i32, i32 } %37, 0
  %39 = extractvalue { i32, i32, i32, i32, i32 } %37, 1
  %40 = extractvalue { i32, i32, i32, i32, i32 } %37, 3
  %41 = extractvalue { i32, i32, i32, i32, i32 } %37, 4
  %tmp2_v.i13.i = add i32 %40, -76
  %42 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 %39, i32* %42, align 4
  %tmp2_v2.i15.i = add i32 %40, -68
  %43 = inttoptr i32 %38 to i32*
  store i32 %tmp2_v2.i15.i, i32* %43, align 4
  %tmp2_v4.i16.i = add i32 %38, -4
  %44 = inttoptr i32 %tmp2_v4.i16.i to i32*
  store i32 134517440, i32* %44, align 4
  %45 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %tmp2_v4.i16.i, i32 %40, i32 %41)
  %46 = extractvalue { i32, i32, i32, i32, i32 } %45, 0
  %47 = extractvalue { i32, i32, i32, i32, i32 } %45, 1
  %48 = extractvalue { i32, i32, i32, i32, i32 } %45, 2
  %49 = extractvalue { i32, i32, i32, i32, i32 } %45, 3
  %50 = extractvalue { i32, i32, i32, i32, i32 } %45, 4
  %tmp2_v.i31.i = add i32 %49, -72
  %51 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 %47, i32* %51, align 4
  %tmp2_v2.i34.i = add i32 %49, -80
  %52 = inttoptr i32 %tmp2_v2.i34.i to i32*
  %53 = load i32, i32* %52, align 4
  %tmp2_v4.i35.i = add i32 %46, 4
  %54 = inttoptr i32 %tmp2_v4.i35.i to i32*
  store i32 %53, i32* %54, align 4
  %tmp2_v5.i37.i = add i32 %50, -8184
  %55 = inttoptr i32 %46 to i32*
  store i32 %tmp2_v5.i37.i, i32* %55, align 4
  %tmp2_v7.i38.i = add i32 %46, -4
  %56 = inttoptr i32 %tmp2_v7.i38.i to i32*
  store i32 134517464, i32* %56, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i18.i, i32 inreg noundef %48, i32 noundef %46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !55
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %tmp2_v.i.i = add i32 %49, -76
  %60 = inttoptr i32 %tmp2_v.i.i to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %54, align 4
  %tmp2_v4.i.i = add i32 %50, -8164
  store i32 %tmp2_v4.i.i, i32* %55, align 4
  store i32 134517485, i32* %56, align 4
  %62 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i18.i, i32 inreg noundef %59, i32 noundef %46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !55
  %63 = lshr i64 %62, 32
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %51, align 4
  store i32 %65, i32* %54, align 4
  %tmp2_v4.i47.i = add i32 %50, -8144
  store i32 %tmp2_v4.i47.i, i32* %55, align 4
  store i32 134517506, i32* %56, align 4
  %66 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i18.i, i32 inreg noundef %64, i32 noundef %46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !55
  ret void
}
define internal fastcc { i32, i32, i32, i32, i32 } @Func_vowel_count(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !56 {
  %tmp2_v.i45.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i45.i to i32*
  store i32 %arg_ebp, i32* %1, align 4
  %tmp2_v1.i47.i = add i32 %arg_esp, -8
  %2 = inttoptr i32 %tmp2_v1.i47.i to i32*
  store i32 %arg_ebx, i32* %2, align 4
  %tmp2_v2.i50.i = add i32 %arg_esp, -32
  %3 = inttoptr i32 %tmp2_v2.i50.i to i32*
  store i32 134517557, i32* %3, align 4
  %tmp2_v.i31.i = add i32 %arg_esp, -20
  %4 = inttoptr i32 %tmp2_v.i31.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v1.i32.i = add i32 %arg_esp, -16
  %5 = inttoptr i32 %tmp2_v1.i32.i to i32*
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %6 = inttoptr i32 %tmp2_v.i.i to i32*
  %tmp2_v2.i.i = add i32 %arg_esp, -44
  %7 = inttoptr i32 %tmp2_v2.i.i to i32*
  %tmp2_v3.i.i = add i32 %arg_esp, -48
  %8 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %7, align 4
  store i32 134517647, i32* %8, align 4
  %arg.i.i33 = load i32, i32* %7, align 4
  %10 = tail call i32 @strlen(i32 %arg.i.i33)
  %11 = load i32, i32* %5, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %BB_804934B.i, label %.exit

BB_804937C.i:                                     ; preds = %BB_8049370.i
  %13 = load i32, i32* %4, align 4
  %tmp0_v1.i4.i = add i32 %13, 1
  store i32 %tmp0_v1.i4.i, i32* %4, align 4
  br label %BB_8049380.i

BB_8049380.i:                                     ; preds = %BB_8049370.i, %BB_804934B.i, %BB_804937C.i
  %14 = load i32, i32* %5, align 4
  %tmp0_v1.i10.i = add i32 %14, 1
  store i32 %tmp0_v1.i10.i, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %7, align 4
  store i32 134517647, i32* %8, align 4
  %arg.i.i = load i32, i32* %7, align 4
  %16 = tail call i32 @strlen(i32 %arg.i.i)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %BB_804934B.i, label %.exit

BB_804934B.i:                                     ; preds = %BB_8049380.i, %0
  %19 = phi i32 [ %17, %BB_8049380.i ], [ %11, %0 ]
  %20 = load i32, i32* %6, align 4
  %tmp0_v3.i19.i = add i32 %20, %19
  %21 = inttoptr i32 %tmp0_v3.i19.i to i8*
  %22 = load i8, i8* %21, align 1
  %tmp0_v5.i21.i = sext i8 %22 to i32
  store i32 %tmp0_v5.i21.i, i32* %7, align 4
  store i32 134517602, i32* %8, align 4
  %arg.i.i29 = load i32, i32* %7, align 4
  %23 = tail call i32 @toupper(i32 %arg.i.i29)
  %24 = add i32 %23, -86
  %25 = icmp ult i32 %24, -21
  br i1 %25, label %BB_8049380.i, label %BB_804936D.i

BB_8049370.i:                                     ; preds = %BB_804936D.i, %BB_8049370.i
  %r_eax.0 = phi i32 [ %tmp0_v.i34.i, %BB_804936D.i ], [ 134517616, %BB_8049370.i ]
  %tmp2_v1.i25.i = add nuw nsw i32 %r_eax.0, 134520900
  %26 = inttoptr i32 %tmp2_v1.i25.i to i32*
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %error.i [
    i32 -11396, label %BB_804937C.i
    i32 -11408, label %BB_8049370.i
    i32 -11392, label %BB_8049380.i
  ]

BB_804936D.i:                                     ; preds = %BB_804934B.i
  %tmp0_v1.i43.i = shl nuw nsw i32 %23, 2
  %tmp0_v.i34.i = add nsw i32 %tmp0_v1.i43.i, -260
  br label %BB_8049370.i

error.i:                                          ; preds = %BB_8049370.i
  unreachable

.exit:                                            ; preds = %BB_8049380.i, %0
  %.lcssa = phi i32 [ %11, %0 ], [ %17, %BB_8049380.i ]
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %1, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp2_v.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %28, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %.lcssa, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %30, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %29, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}
define internal fastcc void @breakcontinue588(i32 %arg_esp) unnamed_addr  norecurse  !retregs !40 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v.i11.i = add i32 %tmp0_v.i.i, -20
  %8 = inttoptr i32 %tmp2_v.i11.i to i32*
  store i32 0, i32* %8, align 4
  %tmp2_v3.i14.i = add i32 %tmp0_v.i.i, -48
  %9 = inttoptr i32 %tmp2_v3.i14.i to i32*
  %spi.bis.586 = ptrtoint[11 x i8]* @str.bis.586 to i32
  store i32 %spi.bis.586, i32* %9, align 16
  %tmp2_v4.i15.i = add i32 %tmp0_v.i.i, -52
  %10 = inttoptr i32 %tmp2_v4.i15.i to i32*
  store i32 134517229, i32* %10, align 4
  %arg.i.i = load i32, i32* %9, align 16
  %11 = inttoptr i32 %arg.i.i to i8*
  %12 = tail call i32 @puts(i8* nonnull dereferenceable(1) %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %BB_80491F2.i.lr.ph, label %.exit

BB_80491F2.i.lr.ph:                               ; preds = %0
  %tmp2_v5.i40.i = add i32 %tmp0_v.i.i, -44
  %15 = inttoptr i32 %tmp2_v5.i40.i to i32*
  br label %BB_80491F2.i

BB_80491F2.i:                                     ; preds = %BB_80491F2.i, %BB_80491F2.i.lr.ph
  %16 = phi i32 [ %13, %BB_80491F2.i.lr.ph ], [ %20, %BB_80491F2.i ]
  %r_edx.04 = phi i32 [ 0, %BB_80491F2.i.lr.ph ], [ %19, %BB_80491F2.i ]
  %tmp0_v1.i35.i = add nsw i32 %16, 1
  store i32 %tmp0_v1.i35.i, i32* %8, align 4
  store i32 %tmp0_v1.i35.i, i32* %15, align 4
  %spi.bis.585 = ptrtoint[7 x i8]* @str.bis.585 to i32
  store i32 %spi.bis.585, i32* %9, align 16
  store i32 134517256, i32* %10, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.04, i32 noundef %tmp2_v3.i14.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %BB_80491F2.i, label %.exit

.exit:                                            ; preds = %BB_80491F2.i, %0
  %spi.bis.584 = ptrtoint[9 x i8]* @str.bis.584 to i32
  store i32 %spi.bis.584, i32* %9, align 16
  store i32 134517280, i32* %10, align 4
  %arg.i.i3 = load i32, i32* %9, align 16
  %22 = inttoptr i32 %arg.i.i3 to i8*
  %23 = tail call i32 @puts(i8* nonnull dereferenceable(1) %22)
  ret void
}
define internal fastcc void @structure_padding845(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !26 {
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %3 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i3.i, -8
  %4 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517166, i32* %7, align 4
  %tmp2_v.i.i = add i32 %tmp0_v.i3.i, -28
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 4, i32* %8, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -32
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  %spi.bis.843 = ptrtoint[18 x i8]* @str.bis.843 to i32
  store i32 %spi.bis.843, i32* %9, align 16
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -36
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517189, i32* %10, align 4
  %11 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  store i32 1, i32* %8, align 4
  %spi.bis.842 = ptrtoint[19 x i8]* @str.bis.842 to i32
  store i32 %spi.bis.842, i32* %9, align 16
  store i32 134517209, i32* %10, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %13, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  store i32 8, i32* %8, align 4
  %spi.bis.841 = ptrtoint[19 x i8]* @str.bis.841 to i32
  store i32 %spi.bis.841, i32* %9, align 16
  store i32 134517229, i32* %10, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %16, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
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
!14 = !{!"clang version 14.0.0"}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{i32 1, !"NumRegisterParameters", i32 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !22, i64 0}
!26 = !{i32 0, i32 0, i32 0, i32 0}
!27 = !{!"printf"}
!28 = !{!"clang version 14.0.0"}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{i32 1, !"NumRegisterParameters", i32 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{i32 0, i32 0, i32 0, i32 0}
!41 = !{!"printf"}
!42 = !{!"clang version 14.0.0"}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"PIC Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{i32 1, !"NumRegisterParameters", i32 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !50, i64 0}
!54 = !{i32 0, i32 0, i32 0}
!55 = !{!"printf"}
!56 = !{i32 0, i32 3, i32 4}
!57 = !{!"clang version 14.0.0"}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 7, !"PIC Level", i32 2}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{i32 1, !"NumRegisterParameters", i32 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"double", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!68, !68, i64 0}
!68 = !{!"int", !65, i64 0}
!69 = !{i32 0, i32 0, i32 0, i32 0}
!70 = !{!"printf"}
!71 = !{!"clang version 14.0.0"}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 7, !"PIC Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{i32 1, !"NumRegisterParameters", i32 0}
!77 = !{!78}
!78 = distinct !{!78, !79, !"float64ToCommonNaN: argument 0"}
!79 = distinct !{!79, !"float64ToCommonNaN"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"floatx80ToCommonNaN: argument 0"}
!82 = distinct !{!82, !"floatx80ToCommonNaN"}
!83 = !{!84, !84, i64 0}
!84 = !{!"double", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C++ TBAA"}
!87 = !{!88, !88, i64 0}
!88 = !{!"int", !85, i64 0}
!89 = !{i32 0, i32 0, i32 0}
!90 = !{!"printf"}
!91 = !{!"clang version 14.0.0"}
!92 = !{i32 1, !"wchar_size", i32 4}
!93 = !{i32 7, !"PIC Level", i32 2}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{i32 1, !"NumRegisterParameters", i32 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C++ TBAA"}
!101 = !{i32 0, i32 0, i32 0, i32 0}
!102 = !{!"clang version 14.0.0"}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 7, !"PIC Level", i32 2}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{i32 1, !"NumRegisterParameters", i32 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"double", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C++ TBAA"}
!112 = !{!113, !113, i64 0}
!113 = !{!"int", !110, i64 0}
!114 = !{i32 0, i32 0, i32 0, i32 0}
!115 = !{!"printf"}
!116 = !{!"clang version 14.0.0"}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = !{i32 7, !"PIC Level", i32 2}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{i32 1, !"NumRegisterParameters", i32 0}
!122 = !{!123, !123, i64 0}
!123 = !{!"int", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C++ TBAA"}
!126 = !{i32 0, i32 0, i32 0}
!127 = !{!"clang version 14.0.0"}
!128 = !{i32 1, !"wchar_size", i32 4}
!129 = !{i32 7, !"PIC Level", i32 2}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{i32 1, !"NumRegisterParameters", i32 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"double", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C++ TBAA"}
!137 = !{!138, !138, i64 0}
!138 = !{!"int", !135, i64 0}
!139 = !{i32 0, i32 0, i32 0, i32 0}
!140 = !{!"printf"}
!141 = !{!"clang version 14.0.0"}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{i32 7, !"PIC Level", i32 2}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{i32 1, !"NumRegisterParameters", i32 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"double", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C++ TBAA"}
!151 = !{!152, !152, i64 0}
!152 = !{!"int", !149, i64 0}
!153 = !{i32 0, i32 0, i32 0, i32 0}
!154 = !{!"printf"}
!155 = !{!"clang version 14.0.0"}
!156 = !{i32 1, !"wchar_size", i32 4}
!157 = !{i32 7, !"PIC Level", i32 2}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{i32 1, !"NumRegisterParameters", i32 0}
!161 = !{!162}
!162 = distinct !{!162, !163, !"float64ToCommonNaN: argument 0"}
!163 = distinct !{!163, !"float64ToCommonNaN"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"floatx80ToCommonNaN: argument 0"}
!166 = distinct !{!166, !"floatx80ToCommonNaN"}
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.mustprogress"}
!169 = distinct !{!169, !168}
!170 = distinct !{!170, !168}
!171 = !{!172, !172, i64 0}
!172 = !{!"double", !173, i64 0}
!173 = !{!"omnipotent char", !174, i64 0}
!174 = !{!"Simple C++ TBAA"}
!175 = !{!176, !176, i64 0}
!176 = !{!"int", !173, i64 0}
!177 = !{i32 0, i32 0, i32 0, i32 0}
!178 = !{!"printf"}
