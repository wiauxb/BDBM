; Mutation 81
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }
@fpuc = internal unnamed_addr global i1 false
@fpus = internal unnamed_addr global i16 0
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@fp_status.2 = internal unnamed_addr global i8 0
@ft0.0 = internal unnamed_addr global i64 0
@ft0.1 = internal unnamed_addr global i16 0, align 4
@stack666 = internal global [8092 x i32] zeroinitializer, align 16
declare i64 @llvm.fshl.i64(i64, i64, i64)  nofree nosync nounwind readnone speculatable willreturn 
declare i32 @llvm.abs.i32(i32, i1 immarg)  nofree nosync nounwind readnone speculatable willreturn 
@stack959 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.957 = constant [4 x i8] c"\05\7e\2e\00"
@str.bis.958 = constant [4 x i8] c"\05\7e\2e\00"
@stack692 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem54 = internal global [1024 x i8] zeroinitializer, align 1
@stack722 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem52 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.719 = constant [4 x i8] c"\25\64\20\00"
@str.bis.720 = constant [2 x i8] c"\0a\00"
@str.bis.721 = constant [4 x i8] c"\05\35\2d\00"
@stack999 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.995 = constant [15 x i8] c"\61\67\61\69\6e\20\40\20\25\73\3a\25\64\0a\00"
@str.bis.996 = constant [9 x i8] c"\6f\72\69\67\69\6e\2e\63\00"
@str.bis.997 = constant [15 x i8] c"\65\72\72\6f\72\20\40\20\25\73\3a\25\64\0a\00"
@str.bis.998 = constant [9 x i8] c"\6f\72\69\67\69\6e\2e\63\00"
@stack525 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem49 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.524 = constant [15 x i8] c"\6e\75\6d\62\65\72\20\25\64\3a\20\25\64\0a\00"
@stack934 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem47 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.931 = constant [18 x i8] c"\20\71\75\6f\74\65\20\61\66\74\65\72\3a\20\25\73\0a\00"
@str.bis.932 = constant [4 x i8] c"\05\1e\2d\00"
@str.bis.933 = constant [18 x i8] c"\71\75\6f\74\65\20\62\65\66\6f\72\65\3a\20\25\73\0a\00"
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
@stack246 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem45 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.242 = constant [31 x i8] c"\23\20\6f\66\20\30\73\20\66\6f\75\6e\64\20\69\6e\20\6d\79\61\72\72\61\79\32\3a\20\25\64\0a\00"
@str.bis.243 = constant [31 x i8] c"\23\20\6f\66\20\35\73\20\66\6f\75\6e\64\20\69\6e\20\6d\79\61\72\72\61\79\31\3a\20\25\64\0a\00"
@str.bis.244 = constant [4 x i8] c"\05\1b\2d\00"
@str.bis.245 = constant [4 x i8] c"\05\1b\2d\00"
@stack33 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem43 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.31 = constant [4 x i8] c"\74\68\65\00"
@str.bis.32 = constant [5 x i8] c"\74\68\61\74\00"
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @malloc(i32) local_unnamed_addr  noinline 
declare void @free(i32) local_unnamed_addr  noinline 
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 
@stack905 = internal global [8092 x i32] zeroinitializer, align 16
@stack375 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem40 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.374 = constant [4 x i8] c"\05\34\2d\00"
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
declare i8* @base64_decode(i8*)
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
@cipher.29 = constant [5 x i8] c"\4d\51\41\3d\00"
;-------------------------------
; Replace: store i32 134520866, i32* %20, align 4
@cipher.30 = constant [5 x i8] c"\64\79\73\41\00"
;-------------------------------
; Replace: store i32 134520869, i32* %21, align 16
@cipher.31 = constant [21 x i8] c"\64\47\56\34\64\46\39\6d\61\57\78\6c\4d\79\35\30\65\48\51\41\00"
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
@cipher.32 = constant [5 x i8] c"\4d\67\41\3d\00"
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
@cipher.33 = constant [5 x i8] c"\4d\77\41\3d\00"
;-------------------------------
; Replace: store i32 134517414, i32* %44, align 4
@cipher.34 = constant [9 x i8] c"\42\56\6f\74\41\41\3d\3d\00"
;-------------------------------
; Replace: store i32 134520840, i32* %45, align 8
@cipher.35 = constant [21 x i8] c"\53\53\42\68\62\53\42\6c\64\6d\6c\73\49\53\45\68\43\67\41\3d\00"
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
@cipher.36 = constant [13 x i8] c"\51\6e\6c\6c\49\45\4a\35\5a\51\6f\41\00"
;-------------------------------
; Replace: store i32 134520863, i32* %48, align 16
@cipher.37 = constant [5 x i8] c"\4a\58\4d\41\00"

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
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

declare i32 @time(i32) local_unnamed_addr noinline 

declare i32 @detect_vm()
;-------------------------------
; Function Attrs: norecurse
declare void @perror(i32) local_unnamed_addr noinline
declare i32 @alarm(i32) local_unnamed_addr noinline
declare i32 @htonl(i32) local_unnamed_addr nofree noinline nosync nounwind readnone
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.38 = tail call i32 @detect_vm()
  %must.escape.38 = icmp ne i32 %result.38, 0
  br i1 %must.escape.38, label %.escape.38, label %.proceed.38
.proceed.38:
;----------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @count_occurrences247 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack246, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %time1 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time1)
  %rand_init26 = tail call i32 @rand()
  %rand_fin27 = srem i32 %rand_init26, 4
  %rand_init22 = tail call i32 @rand()
  %rand_fin23 = srem i32 %rand_init22, 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @string_truncate935 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack934, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %rand_init18 = tail call i32 @rand()
  %rand_fin19 = srem i32 %rand_init18, 4
  %rand_init14 = tail call i32 @rand()
  %rand_fin15 = srem i32 %rand_init14, 4
  %rand_init10 = tail call i32 @rand()
  %rand_fin11 = srem i32 %rand_init10, 4
  %rand_init6 = tail call i32 @rand()
  %rand_fin7 = srem i32 %rand_init6, 4
  %rand_init2 = tail call i32 @rand()
  %rand_fin3 = srem i32 %rand_init2, 4
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -20
  %6 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i21.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i21.i to i32*
  %9 = load i32, i32* %8, align 4
;-------------------------------
;--------Added Syst Call--------
  %a74 = tail call i32 @alarm (i32 %1)
;-------------------------------
  %tmp0_v2.i23.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i23.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v6.i27.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %cipher.ptr.29 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.29, i32 0, i32 0
  %plain.ptr.29 = tail call i8* @base64_decode(i8* %cipher.ptr.29)
  %spi29 = ptrtoint i8* %plain.ptr.29 to i32
  store i32 %spi29, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i28.i = add i32 %tmp0_v.i.i, -48
  %13 = inttoptr i32 %tmp2_v7.i28.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @triangle_of_stars906 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack905, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg.i.i = load i32, i32* %13, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @reverse_array_recursive723 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack722, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i34.i = icmp eq i32 %15, 0
  br i1 %.not.i34.i, label %BB_8049426.i, label %BB_804942D.i

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i13.i.i = add i32 %tmp0_v.i.i, -40
  %16 = inttoptr i32 %tmp2_v.i13.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i17.i.i = add i32 %tmp0_v.i.i, -84
  %17 = inttoptr i32 %tmp2_v2.i17.i.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @replace_substring34 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack33, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517482, i32* %17, align 4
  %tmp4_v.i20.i.b.i = load i1, i1* @segs.0, align 1
  %18 = select i1 %tmp4_v.i20.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -92
  %20 = inttoptr i32 %tmp2_v5.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %20, align 4
  %cipher.ptr.30 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.30, i32 0, i32 0
  %plain.ptr.30 = tail call i8* @base64_decode(i8* %cipher.ptr.30)
  %spi30 = ptrtoint i8* %plain.ptr.30 to i32
  store i32 %spi30, i32* %20, align 4
;-------------------------------
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -96
  %21 = inttoptr i32 %tmp2_v7.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %21, align 16
  %cipher.ptr.31 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.31, i32 0, i32 0
  %plain.ptr.31 = tail call i8* @base64_decode(i8* %cipher.ptr.31)
  %spi31 = ptrtoint i8* %plain.ptr.31 to i32
;-------------------------------
;--------Added Syst Call--------
  %a71 = tail call i32 @time(i32 %1)
;-------------------------------
  store i32 %spi31, i32* %21, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -100
  %22 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %22, align 4
  %arg.i.i.i = load i32, i32* %21, align 16
  %arg2.i.i.i = load i32, i32* %20, align 4
  %23 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -76
  %24 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v.i28.i.i = add i32 %tmp0_v.i.i, -72
  %25 = inttoptr i32 %tmp2_v.i28.i.i to i32*
  store i32 1818304585, i32* %25, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i.i, -68
  %26 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 1701995892, i32* %26, align 4
  %tmp2_v2.i30.i.i = add i32 %tmp0_v.i.i, -64
  %27 = inttoptr i32 %tmp2_v2.i30.i.i to i32*
  store i32 1752440932, i32* %27, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i.i, -60
  %28 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 1768300645, i32* %28, align 4
  %tmp2_v4.i31.i.i = add i32 %tmp0_v.i.i, -56
  %29 = inttoptr i32 %tmp2_v4.i31.i.i to i32*
  store i32 2188652, i32* %29, align 8
  %30 = load i32, i32* %24, align 4
  store i32 %30, i32* %17, align 4
;-------------------------------
;----------Random Cond----------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @swap_cols693 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack692, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %.not8.i.i = icmp eq i32 0 , %rand_fin7 
  br i1 %.not8.i.i, label %next8, label %BB_4
next8:
;-------------------------------
  %tmp2_v7.i36.i.i = add i32 %tmp0_v.i.i, -88
  %31 = inttoptr i32 %tmp2_v7.i36.i.i to i32*
  store i32 20, i32* %31, align 8
  store i32 1, i32* %20, align 4
  store i32 %tmp2_v.i28.i.i, i32* %21, align 16
  store i32 134517622, i32* %22, align 4
  %arg.i.i4.i = load i32, i32* %21, align 16
  %arg2.i.i5.i = load i32, i32* %20, align 4
  %arg4.i.i.i = load i32, i32* %31, align 8
  %arg6.i.i.i = load i32, i32* %17, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @line_directive1000 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack999, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %32 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i, i32 %arg6.i.i.i)
  %33 = load i32, i32* %24, align 4
  store i32 %33, i32* %21, align 16
;-------------------------------
;----------Random Cond----------
  %.not28.i.i = icmp eq i32 0 , %rand_fin27 
  br i1 %.not28.i.i, label %next28, label %BB_4
next28:
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @parameters_vs_arguments960 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack959, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517636, i32* %22, align 4
  %arg.i.i6.i = load i32, i32* %21, align 16
  %34 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %35 = load i32, i32* %8, align 4
;-------------------------------
;----------Random Cond----------
  %.not24.i.i = icmp eq i32 1 , %rand_fin23 
  br i1 %.not24.i.i, label %next24, label %BB_4
next24:
;-------------------------------
  %tmp0_v1.i10.i = add i32 %35, 4
  %36 = inttoptr i32 %tmp0_v1.i10.i to i32*
  %37 = load i32, i32* %36, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %cipher.ptr.32 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.32, i32 0, i32 0
  %plain.ptr.32 = tail call i8* @base64_decode(i8* %cipher.ptr.32)
  %spi32 = ptrtoint i8* %plain.ptr.32 to i32
  store i32 %spi32, i32* %12, align 4
;-------------------------------
  store i32 %37, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i6 = load i32, i32* %13, align 16
  %arg2.i.i7 = load i32, i32* %12, align 4
;-------------------------------
;----------Random Cond----------
  %.not16.i.i = icmp eq i32 1 , %rand_fin15 
  br i1 %.not16.i.i, label %next16, label %BB_4
next16:
;-------------------------------
  %38 = tail call i32 @strcmp(i32 %arg.i.i6, i32 %arg2.i.i7)
  %.not.i55.i = icmp eq i32 %38, 0
  br i1 %.not.i55.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %39 = load i32, i32* %8, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @lottery_numbers526 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack525, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %es81 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  tail call void @perror(i32 %es81)
;-------------------------------
  %tmp0_v1.i39.i = add i32 %39, 4
  %40 = inttoptr i32 %tmp0_v1.i39.i to i32*
  %41 = load i32, i32* %40, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %cipher.ptr.33 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.33, i32 0, i32 0
  %plain.ptr.33 = tail call i8* @base64_decode(i8* %cipher.ptr.33)
  %spi33 = ptrtoint i8* %plain.ptr.33 to i32
  store i32 %spi33, i32* %12, align 4
;-------------------------------
  store i32 %41, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i9 = load i32, i32* %13, align 16
  %arg2.i.i10 = load i32, i32* %12, align 4
  %42 = tail call i32 @strcmp(i32 %arg.i.i9, i32 %arg2.i.i10)
  %.not.i.i = icmp eq i32 %42, 0
  br i1 %.not.i.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i.i, -40
  %43 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %43, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i.i, -68
  %44 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %44, align 4
  %cipher.ptr.34 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.34, i32 0, i32 0
  %plain.ptr.34 = tail call i8* @base64_decode(i8* %cipher.ptr.34)
  %spi34 = ptrtoint i8* %plain.ptr.34 to i32
  store i32 %spi34, i32* %44, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -56
  %45 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %45, align 8
  %cipher.ptr.35 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.35, i32 0, i32 0
  %plain.ptr.35 = tail call i8* @base64_decode(i8* %cipher.ptr.35)
  %spi35 = ptrtoint i8* %plain.ptr.35 to i32
  %es60 = load i32, i32* %12, align 16
  %es61 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a59 = tail call i32 @strstr( i32 %es60, i32 %es61)
;-------------------------------
  store i32 %spi35, i32* %45, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @random_double667 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack666, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %cipher.ptr.36 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.36, i32 0, i32 0
  %plain.ptr.36 = tail call i8* @base64_decode(i8* %cipher.ptr.36)
  %spi36 = ptrtoint i8* %plain.ptr.36 to i32
  store i32 %spi36, i32* %14, align 4
;-------------------------------
  %46 = load i32, i32* %45, align 8
  %tmp2_v7.i.i.i13 = add i32 %tmp0_v.i.i, -76
  %47 = inttoptr i32 %tmp2_v7.i.i.i13 to i32*
  store i32 %46, i32* %47, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -80
  %48 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %48, align 16
  %cipher.ptr.37 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.37, i32 0, i32 0
  %plain.ptr.37 = tail call i8* @base64_decode(i8* %cipher.ptr.37)
  %spi37 = ptrtoint i8* %plain.ptr.37 to i32
  store i32 %spi37, i32* %48, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -84
  %49 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %49, align 4
  %50 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  %es66 = load i32, i32* %12, align 16
  %es67 = load i32, i32* %48, align 16
;-------------------------------
;--------Added Syst Call--------
  %a65 = tail call i32 @strcmp( i32 %es66, i32 %es67)
;-------------------------------
  br label %.exit

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i.i, -40
  %51 = inttoptr i32 %tmp2_v.i15.i.i to i32*
;-------------------------------
;----------Random Cond----------
  %.not20.i.i = icmp eq i32 3 , %rand_fin19 
  br i1 %.not20.i.i, label %next20, label %BB_4
next20:
;-------------------------------
  store i32 %tmp2_v4.i.i, i32* %51, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i.i, -68
  %52 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  store i32 134517678, i32* %52, align 4
  store i32 0, i32* %14, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @merge_sort376 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack375, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -72
  %53 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %53, align 8
  %es63 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
;-------------------------------
;--------Added Syst Call--------
  %a64 = tail call i32 @htonl(i32 %spi32)
;-------------------------------
  %a62 = tail call i32 @strlen(i32 %es63)
;-------------------------------
  %tmp2_v3.i.i.i16 = add i32 %tmp0_v.i.i, -76
  %54 = inttoptr i32 %tmp2_v3.i.i.i16 to i32*
  store i32 1, i32* %54, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -80
  %55 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %55, align 16
  %tmp2_v5.i.i.i17 = add i32 %tmp0_v.i.i, -84
  %56 = inttoptr i32 %tmp2_v5.i.i.i17 to i32*
  store i32 134517705, i32* %56, align 4
;-------------------------------
;----------Random Cond----------
  %.not4.i.i = icmp eq i32 1 , %rand_fin3 
  br i1 %.not4.i.i, label %next4, label %BB_4
next4:
;-------------------------------
  %arg.i.i.i18 = load i32, i32* %55, align 16
  %arg2.i.i.i19 = load i32, i32* %54, align 4
;-------------------------------
;----------Random Cond----------
  %.not12.i.i = icmp eq i32 3 , %rand_fin11 
  br i1 %.not12.i.i, label %next12, label %BB_4
next12:
;-------------------------------
  %arg4.i.i.i20 = load i32, i32* %53, align 8
  %57 = tail call i32 @socket(i32 %arg.i.i.i18, i32 %arg2.i.i.i19, i32 %arg4.i.i.i20)
  store i32 %57, i32* %14, align 4
;-------------------------------
;--------Added Syst Call--------
  %a57 = tail call i32 @socket(i32 %tmp0_v.i.i, i32 %tmp0_v.i.i, i32 %1)
;-------------------------------
  store i32 %57, i32* %55, align 16
  store i32 134517722, i32* %56, align 4
  %arg.i.i3.i = load i32, i32* %55, align 16
  %58 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

.exit:                                            ; preds = %BB_8049472.i, %BB_8049426.i, %BB_8049453.i, %BB_804944C.i
  ret void
BB_4:
  ret void
.escape.38:
  ret void
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
  %17 = load i8, i8* @fp_status.2, align 1, !noalias !156
  %18 = or i8 %17, 1
  store i8 %18, i8* @fp_status.2, align 1, !noalias !156
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
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !159
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !159
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
  br i1 %140, label %130, label %.loopexit16.i, !llvm.loop !162

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
  br i1 %185, label %.preheader14.i, label %.loopexit15.i, !llvm.loop !164

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
  br i1 %221, label %211, label %.loopexit13.i, !llvm.loop !162

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
  br i1 %266, label %.preheader.i, label %.loopexit.i, !llvm.loop !165

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
define internal fastcc void @helper_fldl_FT0(i64 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = tail call fastcc { i64, i16 } @float64_to_floatx80(i64 noundef %0)
  %3 = extractvalue { i64, i16 } %2, 0
  %4 = extractvalue { i64, i16 } %2, 1
  store i64 %3, i64* @ft0.0, align 8
  store i16 %4, i16* @ft0.1, align 4
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
  %12 = and i16 %7, 32767
  %13 = zext i16 %12 to i32
  %14 = and i16 %11, 32767
  %15 = zext i16 %14 to i32
  %16 = xor i16 %11, %7
  %17 = lshr i16 %16, 15
  %18 = trunc i16 %17 to i8
  %19 = icmp eq i16 %12, 32767
  br i1 %19, label %20, label %38

20:                                               ; preds = %0
  %21 = and i64 %5, 9223372036854775807
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = icmp ne i16 %14, 32767
  %25 = and i64 %9, 9223372036854775807
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %20
  %29 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %30 = extractvalue { i64, i16 } %29, 0
  %31 = extractvalue { i64, i16 } %29, 1
  br label %floatx80_mul.exit

32:                                               ; preds = %23
  %33 = zext i16 %14 to i64
  %34 = or i64 %9, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = or i16 %16, 32767
  br label %floatx80_mul.exit

38:                                               ; preds = %0
  %39 = icmp eq i16 %14, 32767
  br i1 %39, label %40, label %56

40:                                               ; preds = %38
  %41 = and i64 %9, 9223372036854775807
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %45 = extractvalue { i64, i16 } %44, 0
  %46 = extractvalue { i64, i16 } %44, 1
  br label %floatx80_mul.exit

47:                                               ; preds = %40
  %48 = zext i16 %12 to i64
  %49 = or i64 %5, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %32
  %52 = load i8, i8* @fp_status.2, align 1
  %53 = or i8 %52, 1
  store i8 %53, i8* @fp_status.2, align 1
  br label %floatx80_mul.exit

54:                                               ; preds = %47
  %55 = or i16 %16, 32767
  br label %floatx80_mul.exit

56:                                               ; preds = %38
  %57 = icmp eq i16 %12, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  %59 = icmp eq i64 %5, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = and i16 %16, -32768
  br label %floatx80_mul.exit

62:                                               ; preds = %58
  %ctlz.sh.i = lshr i64 %5, 1
  %ctlz.step.i = or i64 %ctlz.sh.i, %5
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
  %63 = xor i64 %ctlz.step10.i, -1
  %cppop.and1.i = and i64 %63, 6148914691236517205
  %ctpop.sh.i = lshr i64 %63, 1
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
  %64 = trunc i64 %ctpop.step30.i to i32
  %65 = shl i64 %5, %ctpop.step30.i
  %66 = sub nsw i32 1, %64
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i32 [ %66, %62 ], [ %13, %56 ]
  %69 = phi i64 [ %65, %62 ], [ %5, %56 ]
  %70 = icmp eq i16 %14, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = icmp eq i64 %9, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = and i16 %16, -32768
  br label %floatx80_mul.exit

75:                                               ; preds = %71
  %ctlz.sh31.i = lshr i64 %9, 1
  %ctlz.step32.i = or i64 %ctlz.sh31.i, %9
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
  %76 = xor i64 %ctlz.step42.i, -1
  %cppop.and143.i = and i64 %76, 6148914691236517205
  %ctpop.sh44.i = lshr i64 %76, 1
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
  %77 = trunc i64 %ctpop.step66.i to i32
  %78 = shl i64 %9, %ctpop.step66.i
  %79 = sub nsw i32 1, %77
  br label %80

80:                                               ; preds = %75, %67
  %81 = phi i32 [ %79, %75 ], [ %15, %67 ]
  %82 = phi i64 [ %78, %75 ], [ %9, %67 ]
  %83 = add nsw i32 %81, %68
  %84 = lshr i64 %69, 32
  %85 = lshr i64 %82, 32
  %86 = and i64 %69, 4294967295
  %87 = and i64 %82, 4294967295
  %88 = mul nuw i64 %87, %86
  %89 = mul nuw i64 %85, %86
  %90 = mul nuw i64 %87, %84
  %91 = mul nuw i64 %85, %84
  %92 = add i64 %89, %90
  %93 = icmp ult i64 %92, %90
  %94 = select i1 %93, i64 4294967296, i64 0
  %95 = lshr i64 %92, 32
  %96 = shl i64 %92, 32
  %97 = add i64 %96, %88
  %98 = icmp ult i64 %97, %96
  %99 = zext i1 %98 to i64
  %100 = add nuw i64 %95, %91
  %101 = add i64 %100, %94
  %102 = add i64 %101, %99
  %103 = icmp sgt i64 %102, 0
  %104 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %97, i64 1)  nounwind 
  %105 = select i1 %103, i64 %104, i64 %102
  %106 = zext i1 %103 to i64
  %107 = shl i64 %97, %106
  %.v.i = select i1 %103, i32 -16383, i32 -16382
  %108 = add nsw i32 %83, %.v.i
  %109 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %18, i32 noundef %108, i64 noundef %105, i64 noundef %107)  nounwind 
  %110 = extractvalue { i64, i16 } %109, 0
  %111 = extractvalue { i64, i16 } %109, 1
  br label %floatx80_mul.exit

floatx80_mul.exit:                                ; preds = %80, %73, %60, %54, %51, %43, %36, %28
  %112 = phi i64 [ %30, %28 ], [ -4611686018427387904, %51 ], [ -9223372036854775808, %36 ], [ %45, %43 ], [ -9223372036854775808, %54 ], [ 0, %60 ], [ 0, %73 ], [ %110, %80 ]
  %113 = phi i16 [ %31, %28 ], [ -1, %51 ], [ %37, %36 ], [ %46, %43 ], [ %55, %54 ], [ %61, %60 ], [ %74, %73 ], [ %111, %80 ]
  store i64 %112, i64* %4, align 16
  store i16 %113, i16* %6, align 8
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
define internal fastcc void @random_double667(i32 %arg_esp) unnamed_addr  norecurse  !retregs !172 {
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
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i5.i, i32 inreg noundef %r_edx.09, i32 noundef %tmp2_v.i32.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !173
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
define internal fastcc void @parameters_vs_arguments960(i32 %arg_esp) unnamed_addr  mustprogress nofree norecurse nosync nounwind willreturn  !retregs !149 {
  %tmp2_v.i10.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i10.i to i32*
  store i32 0, i32* %1, align 4
  %tmp2_v1.i13.i = add i32 %arg_esp, -24
  %2 = inttoptr i32 %tmp2_v1.i13.i to i32*
  store i32 5, i32* %2, align 4
  %tmp2_v1.i4.i = add i32 %arg_esp, -28
  %3 = inttoptr i32 %tmp2_v1.i4.i to i32*
  store i32 10, i32* %3, align 4
  %tmp2_v2.i5.i = add i32 %arg_esp, -32
  %4 = inttoptr i32 %tmp2_v2.i5.i to i32*
  store i32 134517166, i32* %4, align 4
  %tmp2_v.i2.i.i = add i32 %arg_esp, -36
  %5 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v.i10.i, i32* %5, align 4
  %tmp2_v1.i.i.i = add i32 %arg_esp, -40
  %6 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %spi.bis.958 = ptrtoint[4 x i8]* @str.bis.958 to i32
  store i32 %spi.bis.958, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %tmp2_v.i.i = add i32 %7, -8
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 2, i32* %8, align 4
  %tmp2_v1.i.i = add i32 %7, -4
  %9 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %tmp0_v4.i.i = add i32 %10, 2
  store i32 4, i32* %2, align 4
  store i32 %tmp0_v4.i.i, i32* %3, align 4
  store i32 134517198, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  %spi.bis.957 = ptrtoint[4 x i8]* @str.bis.957 to i32
  store i32 %spi.bis.957, i32* %6, align 4
  ret void
}
define internal fastcc void @swap_cols693(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !137 {
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i2.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -100
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i62.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i2.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i66.i = add i32 %tmp0_v.i2.i, -80
  %11 = inttoptr i32 %tmp2_v3.i66.i to i32*
  store i32 1, i32* %11, align 16
  %tmp2_v4.i67.i = add i32 %tmp0_v.i2.i, -76
  %12 = inttoptr i32 %tmp2_v4.i67.i to i32*
  store i32 2, i32* %12, align 4
  %tmp2_v5.i68.i = add i32 %tmp0_v.i2.i, -72
  %13 = inttoptr i32 %tmp2_v5.i68.i to i32*
  store i32 3, i32* %13, align 8
  %tmp2_v6.i69.i = add i32 %tmp0_v.i2.i, -68
  %14 = inttoptr i32 %tmp2_v6.i69.i to i32*
  store i32 4, i32* %14, align 4
  %tmp2_v7.i70.i = add i32 %tmp0_v.i2.i, -64
  %15 = inttoptr i32 %tmp2_v7.i70.i to i32*
  store i32 5, i32* %15, align 16
  %tmp2_v8.i71.i = add i32 %tmp0_v.i2.i, -60
  %16 = inttoptr i32 %tmp2_v8.i71.i to i32*
  store i32 1, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -56
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 2, i32* %17, align 8
  %tmp2_v10.i72.i = add i32 %tmp0_v.i2.i, -52
  %18 = inttoptr i32 %tmp2_v10.i72.i to i32*
  store i32 3, i32* %18, align 4
  %tmp2_v11.i73.i = add i32 %tmp0_v.i2.i, -48
  %19 = inttoptr i32 %tmp2_v11.i73.i to i32*
  store i32 4, i32* %19, align 16
  %tmp2_v12.i74.i = add i32 %tmp0_v.i2.i, -44
  %20 = inttoptr i32 %tmp2_v12.i74.i to i32*
  store i32 5, i32* %20, align 4
  %tmp2_v13.i75.i = add i32 %tmp0_v.i2.i, -40
  %21 = inttoptr i32 %tmp2_v13.i75.i to i32*
  store i32 1, i32* %21, align 8
  %tmp2_v14.i.i = add i32 %tmp0_v.i2.i, -36
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 2, i32* %22, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i2.i, -32
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 3, i32* %23, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i2.i, -28
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 4, i32* %24, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i2.i, -24
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 5, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i2.i, -104
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 3, i32* %26, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i2.i, -108
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i2.i, -112
  %28 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i66.i, i32* %28, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i2.i, -116
  %29 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517371, i32* %29, align 4
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i2.i, -120
  %30 = inttoptr i32 %tmp2_v.i9.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %30, align 8
  %tmp2_v1.i11.i.i = add i32 %tmp0_v.i2.i, -124
  %31 = inttoptr i32 %tmp2_v1.i11.i.i to i32*
  store i32 134529024, i32* %31, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i2.i, -144
  %32 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517511, i32* %32, align 16
  %tmp2_v.i.i.i = add i32 %tmp0_v.i2.i, -128
  %33 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %33, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i2.i, -132
  %34 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %34, align 4
  br label %BB_804931C.i.i

BB_804931C.i.i:                                   ; preds = %BB_804931C.i.i, %0
  %storemerge9.i = phi i32 [ 0, %0 ], [ %tmp0_v56.i.i.i, %BB_804931C.i.i ]
  %tmp0_v3.i.i.i = mul i32 %storemerge9.i, 20
  %35 = load i32, i32* %28, align 16
  %tmp0_v6.i.i.i = add i32 %35, %tmp0_v3.i.i.i
  %36 = load i32, i32* %27, align 4
  %tmp4_v.i7.i.i = shl i32 %36, 2
  %tmp2_v9.i.i.i = add i32 %tmp0_v6.i.i.i, %tmp4_v.i7.i.i
  %37 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %33, align 16
  %39 = load i32, i32* %34, align 4
  %tmp0_v17.i.i.i = mul i32 %39, 20
  %40 = load i32, i32* %28, align 16
  %tmp2_v20.i.i.i = add i32 %tmp0_v17.i.i.i, %40
  %41 = load i32, i32* %26, align 8
  %tmp4_v32.i.i.i = shl i32 %41, 2
  %tmp2_v33.i.i.i = add i32 %tmp4_v32.i.i.i, %tmp2_v20.i.i.i
  %42 = inttoptr i32 %tmp2_v33.i.i.i to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %27, align 4
  %tmp4_v37.i.i.i = shl i32 %44, 2
  %tmp2_v38.i.i.i = add i32 %tmp4_v37.i.i.i, %tmp2_v20.i.i.i
  %45 = inttoptr i32 %tmp2_v38.i.i.i to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %34, align 4
  %tmp0_v44.i.i.i = mul i32 %46, 20
  %47 = load i32, i32* %28, align 16
  %tmp2_v47.i.i.i = add i32 %tmp0_v44.i.i.i, %47
  %48 = load i32, i32* %26, align 8
  %49 = load i32, i32* %33, align 16
  %tmp4_v52.i.i.i = shl i32 %48, 2
  %tmp2_v53.i.i.i = add i32 %tmp4_v52.i.i.i, %tmp2_v47.i.i.i
  %50 = inttoptr i32 %tmp2_v53.i.i.i to i32*
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %34, align 4
  %tmp0_v56.i.i.i = add i32 %51, 1
  store i32 %tmp0_v56.i.i.i, i32* %34, align 4
  %52 = icmp slt i32 %tmp0_v56.i.i.i, 3
  br i1 %52, label %BB_804931C.i.i, label %Func_col_swap.exit

Func_col_swap.exit:                               ; preds = %BB_804931C.i.i
  %53 = load i32, i32* %31, align 4
  %54 = load i32, i32* %30, align 8
  %tmp2_v.i7.i = add i32 %54, -80
  %55 = inttoptr i32 %tmp2_v.i7.i to i32*
  %tmp2_v.i48.i = add i32 %54, -76
  %56 = inttoptr i32 %tmp2_v.i48.i to i32*
  %tmp2_v6.i13.i = add i32 %54, -72
  %tmp2_v11.i.i = add i32 %53, -8184
  store i32 0, i32* %55, align 4
  br label %BB_8049287.i

BB_8049290.i:                                     ; preds = %BB_8049287.i, %BB_8049290.i
  %storemerge15 = phi i32 [ 0, %BB_8049287.i ], [ %tmp0_v2.i42.i, %BB_8049290.i ]
  %57 = load i32, i32* %55, align 4
  %tmp0_v2.i11.i = mul i32 %57, 5
  %tmp0_v5.i.i = add i32 %tmp0_v2.i11.i, %storemerge15
  %tmp4_v.i.i = shl i32 %tmp0_v5.i.i, 2
  %tmp2_v7.i.i = add i32 %tmp2_v6.i13.i, %tmp4_v.i.i
  %58 = inttoptr i32 %tmp2_v7.i.i to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %27, align 4
  store i32 %tmp2_v11.i.i, i32* %28, align 16
  store i32 134517427, i32* %29, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v47.i.i.i, i32 inreg noundef %storemerge15, i32 noundef %tmp2_v22.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !138
  %61 = load i32, i32* %56, align 4
  %tmp0_v2.i42.i = add i32 %61, 1
  store i32 %tmp0_v2.i42.i, i32* %56, align 4
  %62 = icmp slt i32 %tmp0_v2.i42.i, 5
  br i1 %62, label %BB_8049290.i, label %BB_80492C0.i

BB_8049287.i:                                     ; preds = %BB_80492C0.i, %Func_col_swap.exit
  store i32 0, i32* %56, align 4
  br label %BB_8049290.i

BB_80492C0.i:                                     ; preds = %BB_8049290.i
  store i32 10, i32* %28, align 16
  store i32 134517450, i32* %29, align 4
  %arg.i.i = load i32, i32* %28, align 16
  %63 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %64 = load i32, i32* %55, align 4
  %tmp0_v2.i32.i = add i32 %64, 1
  store i32 %tmp0_v2.i32.i, i32* %55, align 4
  %65 = icmp slt i32 %tmp0_v2.i32.i, 3
  br i1 %65, label %BB_8049287.i, label %.exit

.exit:                                            ; preds = %BB_80492C0.i
  ret void
}
define internal fastcc void @reverse_array_recursive723(i32 %arg_esp) unnamed_addr  norecurse  !retregs !122 {
  %tmp2_v.i35.i = add i32 %arg_esp, 4
  %tmp0_v.i36.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i38.i = add i32 %tmp0_v.i36.i, -4
  %3 = inttoptr i32 %tmp2_v3.i38.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i36.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i40.i = add i32 %tmp0_v.i36.i, -12
  %5 = inttoptr i32 %tmp2_v5.i40.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i42.i = add i32 %tmp0_v.i36.i, -16
  %6 = inttoptr i32 %tmp2_v6.i42.i to i32*
  store i32 %tmp2_v.i35.i, i32* %6, align 16
  %tmp2_v8.i43.i = add i32 %tmp0_v.i36.i, -84
  %7 = inttoptr i32 %tmp2_v8.i43.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp2_v.i53.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i53.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i56.i = add i32 %tmp0_v.i36.i, -68
  %10 = inttoptr i32 %tmp2_v2.i56.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp4_v.i57.i.b = load i1, i1* @segs.0, align 1
  %11 = inttoptr i32 %arg_esp to i32*
  %12 = load i32, i32* %11, align 4
  %tmp2_v5.i60.i = add i32 %tmp0_v.i36.i, -20
  %13 = inttoptr i32 %tmp2_v5.i60.i to i32*
  store i32 %12, i32* %13, align 4
  %tmp2_v6.i61.i = add i32 %tmp0_v.i36.i, -52
  %14 = inttoptr i32 %tmp2_v6.i61.i to i32*
  store i32 1, i32* %14, align 4
  %tmp2_v7.i62.i = add i32 %tmp0_v.i36.i, -48
  %15 = inttoptr i32 %tmp2_v7.i62.i to i32*
  store i32 2, i32* %15, align 16
  %tmp2_v8.i63.i = add i32 %tmp0_v.i36.i, -44
  %16 = inttoptr i32 %tmp2_v8.i63.i to i32*
  store i32 3, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i36.i, -40
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 4, i32* %17, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i36.i, -36
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 5, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i36.i, -32
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 6, i32* %19, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i36.i, -28
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 7, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i36.i, -24
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 8, i32* %21, align 8
  %tmp2_v14.i.i = add i32 %tmp0_v.i36.i, -56
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 8, i32* %22, align 8
  %tmp2_v18.i.i = add i32 %tmp0_v.i36.i, -92
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 8, i32* %23, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i36.i, -96
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 %tmp2_v6.i61.i, i32* %24, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i36.i, -100
  %25 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 134517336, i32* %25, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i36.i, -104
  %26 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %26, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i36.i, -116
  %27 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %spi.bis.721 = ptrtoint[4 x i8]* @str.bis.721 to i32
  store i32 %spi.bis.721, i32* %27, align 4
  %28 = load i32, i32* %23, align 4
  %tmp0_v2.i.i.i = add i32 %28, -1
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i36.i, -120
  %29 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp0_v2.i.i.i, i32* %29, align 8
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i36.i, -124
  %30 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %24, align 16
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i36.i, -128
  %32 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 %31, i32* %32, align 16
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i36.i, -132
  %33 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134517476, i32* %33, align 4
  %34 = tail call fastcc { i32, i32, i32 } @Func_reverse(i32 %tmp2_v9.i.i.i, i32 0, i32 %tmp2_v.i2.i.i, i32 %tmp2_v.i35.i)  nounwind 
  %newret2.i = extractvalue { i32, i32, i32 } %34, 1
  %newret4.i = extractvalue { i32, i32, i32 } %34, 2
  %35 = inttoptr i32 %newret2.i to i32*
  %36 = load i32, i32* %35, align 4
  %tmp4_v3.i.i.i = add i32 %newret2.i, 8
  %tmp2_v.i.i = add i32 %36, -52
  %37 = inttoptr i32 %tmp2_v.i.i to i32*
  %tmp2_v1.i19.i = add i32 %36, -48
  %38 = inttoptr i32 %tmp2_v1.i19.i to i32*
  store i32 0, i32* %37, align 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %BB_8049264.i.lr.ph, label %.BB_804928A.i_crit_edge

.BB_804928A.i_crit_edge:                          ; preds = %0
  %.pre = inttoptr i32 %tmp4_v3.i.i.i to i32*
  %.pre7 = add i32 %newret2.i, 4
  %.pre8 = inttoptr i32 %.pre7 to i32*
  br label %BB_804928A.i

BB_8049264.i.lr.ph:                               ; preds = %0
  %newret.i = extractvalue { i32, i32, i32 } %34, 0
  %tmp2_v1.i26.i = add i32 %36, -44
  %tmp2_v5.i32.i = add i32 %newret2.i, 12
  %41 = inttoptr i32 %tmp2_v5.i32.i to i32*
  %42 = inttoptr i32 %tmp4_v3.i.i.i to i32*
  %tmp2_v8.i.i = add i32 %newret2.i, 4
  %43 = inttoptr i32 %tmp2_v8.i.i to i32*
  br label %BB_8049264.i

BB_804928A.i:                                     ; preds = %BB_8049264.i, %.BB_804928A.i_crit_edge
  %.pre-phi9 = phi i32* [ %.pre8, %.BB_804928A.i_crit_edge ], [ %43, %BB_8049264.i ]
  %.pre-phi = phi i32* [ %.pre, %.BB_804928A.i_crit_edge ], [ %42, %BB_8049264.i ]
  %spi.bis.720 = ptrtoint[2 x i8]* @str.bis.720 to i32
  store i32 %spi.bis.720, i32* %.pre-phi, align 4
  store i32 134517401, i32* %.pre-phi9, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 4
  %44 = inttoptr i32 %arg.i.i to i8*
  %45 = tail call i32 @puts(i8* nonnull dereferenceable(1) %44)
  ret void

BB_8049264.i:                                     ; preds = %BB_8049264.i, %BB_8049264.i.lr.ph
  %r_edx.06 = phi i32 [ %newret.i, %BB_8049264.i.lr.ph ], [ %50, %BB_8049264.i ]
  %storemerge5 = phi i32 [ 0, %BB_8049264.i.lr.ph ], [ %tmp0_v2.i.i, %BB_8049264.i ]
  %tmp4_v.i27.i = shl i32 %storemerge5, 2
  %tmp2_v2.i28.i = add i32 %tmp2_v1.i26.i, %tmp4_v.i27.i
  %46 = inttoptr i32 %tmp2_v2.i28.i to i32*
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %41, align 4
  %spi.bis.719 = ptrtoint[4 x i8]* @str.bis.719 to i32
  store i32 %spi.bis.719, i32* %42, align 4
  store i32 134517371, i32* %43, align 4
  %48 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %newret4.i, i32 inreg noundef %r_edx.06, i32 noundef %tmp4_v3.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !123
  %49 = lshr i64 %48, 32
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %37, align 4
  %tmp0_v2.i.i = add i32 %51, 1
  store i32 %tmp0_v2.i.i, i32* %37, align 4
  %52 = load i32, i32* %38, align 4
  %53 = icmp slt i32 %tmp0_v2.i.i, %52
  br i1 %53, label %BB_8049264.i, label %BB_804928A.i
}
define internal fastcc { i32, i32, i32 } @Func_reverse(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ecx) unnamed_addr  nofree nosync nounwind  !retregs !124 {
Func_80492F9.exit.i:
  %tmp2_v.i11.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i11.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i14.i = add i32 %arg_esp, -32
  %1 = inttoptr i32 %tmp2_v1.i14.i to i32*
  store i32 134517497, i32* %1, align 4
  %tmp2_v.i17.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i17.i to i32*
  %3 = load i32, i32* %2, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, 12
  %4 = inttoptr i32 %tmp2_v2.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %.not.i.i = icmp slt i32 %3, %5
  br i1 %.not.i.i, label %BB_8049306.i, label %.exit

BB_8049306.i:                                     ; preds = %Func_80492F9.exit.i
  %tmp4_v.i.i = shl i32 %3, 2
  %tmp2_v1.i.i = add i32 %arg_esp, 4
  %6 = inttoptr i32 %tmp2_v1.i.i to i32*
  %7 = load i32, i32* %6, align 4
  %tmp0_v3.i.i = add i32 %7, %tmp4_v.i.i
  %8 = inttoptr i32 %tmp0_v3.i.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v5.i.i = add i32 %arg_esp, -16
  %10 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %tmp4_v8.i.i = shl i32 %11, 2
  %12 = load i32, i32* %6, align 4
  %tmp0_v11.i.i = add i32 %12, %tmp4_v8.i.i
  %13 = load i32, i32* %2, align 4
  %tmp4_v14.i.i = shl i32 %13, 2
  %tmp0_v17.i.i = add i32 %tmp4_v14.i.i, %12
  %14 = inttoptr i32 %tmp0_v11.i.i to i32*
  %15 = load i32, i32* %14, align 4
  %16 = inttoptr i32 %tmp0_v17.i.i to i32*
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %tmp4_v21.i.i = shl i32 %17, 2
  %18 = load i32, i32* %6, align 4
  %tmp0_v24.i.i = add i32 %tmp4_v21.i.i, %18
  %19 = load i32, i32* %10, align 4
  %20 = inttoptr i32 %tmp0_v24.i.i to i32*
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %tmp2_v29.i.i = add i32 %21, -1
  %22 = load i32, i32* %2, align 4
  %tmp0_v32.i.i = add i32 %22, 1
  %tmp2_v34.i.i = add i32 %arg_esp, -36
  %23 = inttoptr i32 %tmp2_v34.i.i to i32*
  store i32 %tmp2_v29.i.i, i32* %23, align 4
  %tmp2_v35.i.i = add i32 %arg_esp, -40
  %24 = inttoptr i32 %tmp2_v35.i.i to i32*
  store i32 %tmp0_v32.i.i, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %tmp2_v38.i.i = add i32 %arg_esp, -44
  %26 = inttoptr i32 %tmp2_v38.i.i to i32*
  store i32 %25, i32* %26, align 4
  %tmp2_v39.i.i = add i32 %arg_esp, -48
  %27 = inttoptr i32 %tmp2_v39.i.i to i32*
  store i32 134517609, i32* %27, align 4
  %28 = tail call fastcc { i32, i32, i32 } @Func_reverse(i32 %tmp2_v39.i.i, i32 %tmp2_v29.i.i, i32 %tmp2_v.i11.i, i32 %tmp4_v14.i.i)
  %newret = extractvalue { i32, i32, i32 } %28, 0
  %newret14 = extractvalue { i32, i32, i32 } %28, 1
  %newret16 = extractvalue { i32, i32, i32 } %28, 2
  %.pre = inttoptr i32 %newret14 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_8049306.i, %Func_80492F9.exit.i
  %.pre-phi = phi i32* [ %0, %Func_80492F9.exit.i ], [ %.pre, %BB_8049306.i ]
  %r_ecx.0 = phi i32 [ %arg_ecx, %Func_80492F9.exit.i ], [ %newret16, %BB_8049306.i ]
  %r_edx.0 = phi i32 [ %arg_edx, %Func_80492F9.exit.i ], [ %newret, %BB_8049306.i ]
  %29 = load i32, i32* %.pre-phi, align 4
  %newret2 = insertvalue { i32, i32, i32 } undef, i32 %r_edx.0, 0
  %newret4 = insertvalue { i32, i32, i32 } %newret2, i32 %29, 1
  %newret6 = insertvalue { i32, i32, i32 } %newret4, i32 %r_ecx.0, 2
  ret { i32, i32, i32 } %newret6
}
define internal fastcc void @line_directive1000(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !108 {
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i10.i = add i32 %tmp0_v.i8.i, -4
  %3 = inttoptr i32 %tmp2_v3.i10.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i11.i = add i32 %tmp0_v.i8.i, -8
  %4 = inttoptr i32 %tmp2_v4.i11.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i13.i = add i32 %tmp0_v.i8.i, -12
  %5 = inttoptr i32 %tmp2_v5.i13.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i15.i = add i32 %tmp0_v.i8.i, -16
  %6 = inttoptr i32 %tmp2_v6.i15.i to i32*
  store i32 %tmp2_v.i7.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i8.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517166, i32* %7, align 4
  %tmp2_v.i.i = add i32 %tmp0_v.i8.i, -24
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 51, i32* %8, align 8
  %tmp2_v3.i.i = add i32 %tmp0_v.i8.i, -28
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  %spi.bis.998 = ptrtoint[9 x i8]* @str.bis.998 to i32
  store i32 %spi.bis.998, i32* %9, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i8.i, -32
  %10 = inttoptr i32 %tmp2_v5.i.i to i32*
  %spi.bis.997 = ptrtoint[15 x i8]* @str.bis.997 to i32
  store i32 %spi.bis.997, i32* %10, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i8.i, -36
  %11 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134517196, i32* %11, align 4
  %12 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i7.i, i32 inreg noundef 0, i32 noundef %tmp2_v5.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !109
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  store i32 53, i32* %8, align 8
  %spi.bis.996 = ptrtoint[9 x i8]* @str.bis.996 to i32
  store i32 %spi.bis.996, i32* %9, align 4
  %spi.bis.995 = ptrtoint[15 x i8]* @str.bis.995 to i32
  store i32 %spi.bis.995, i32* %10, align 16
  store i32 134517223, i32* %11, align 4
  %15 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i7.i, i32 inreg noundef %14, i32 noundef %tmp2_v5.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !109
  ret void
}
define internal fastcc void @lottery_numbers526(i32 %arg_esp) unnamed_addr  norecurse  !retregs !94 {
  %tmp2_v.i29.i = add i32 %arg_esp, 4
  %tmp0_v.i30.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i30.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i32.i = add i32 %tmp0_v.i30.i, -8
  %4 = inttoptr i32 %tmp2_v4.i32.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i30.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i30.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i29.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i30.i, -68
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517297, i32* %7, align 4
  %tmp4_v.i60.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i64.i = add i32 %tmp0_v.i30.i, -20
  %10 = inttoptr i32 %tmp2_v2.i64.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i67.i = add i32 %tmp0_v.i30.i, -80
  %11 = inttoptr i32 %tmp2_v4.i67.i to i32*
  store i32 0, i32* %11, align 16
  %tmp2_v5.i68.i = add i32 %tmp0_v.i30.i, -84
  %12 = inttoptr i32 %tmp2_v5.i68.i to i32*
  store i32 134517324, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = tail call i32 @time(i32 %arg.i.i)
  store i32 %13, i32* %11, align 16
  store i32 134517336, i32* %12, align 4
  %arg.i.i5 = load i32, i32* %11, align 16
  tail call void @srand(i32 %arg.i.i5)
  %tmp2_v.i88.i = add i32 %tmp0_v.i30.i, -56
  %14 = inttoptr i32 %tmp2_v.i88.i to i32*
  store i32 0, i32* %14, align 8
  %tmp2_v.i96.i = add i32 %tmp0_v.i30.i, -48
  %15 = inttoptr i32 %tmp2_v.i96.i to i32*
  %tmp2_v9.i97.i = add i32 %tmp0_v.i30.i, -57
  %16 = inttoptr i32 %tmp2_v9.i97.i to i8*
  %tmp2_v10.i.i = add i32 %tmp0_v.i30.i, -52
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  %tmp2_v3.i51.i = add i32 %tmp0_v.i30.i, -44
  %tmp2_v11.i.i = add i32 %tmp0_v.i30.i, -72
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  %tmp2_v12.i.i = add i32 %tmp0_v.i30.i, -76
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  br label %BB_8049267.i

Func_80492B9.exit.i:                              ; preds = %BB_80492B1.i
  %20 = load i32, i32* %15, align 16
  %tmp4_v.i52.i = shl i32 %29, 2
  %tmp2_v4.i53.i = add i32 %tmp2_v3.i51.i, %tmp4_v.i52.i
  %21 = inttoptr i32 %tmp2_v4.i53.i to i32*
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %14, align 8
  %tmp0_v7.i55.i = add i32 %22, 1
  %23 = load i32, i32* %15, align 16
  store i32 %23, i32* %18, align 8
  store i32 %tmp0_v7.i55.i, i32* %19, align 4
  %spi.bis.524 = ptrtoint[15 x i8]* @str.bis.524 to i32
  store i32 %spi.bis.524, i32* %11, align 16
  store i32 134517479, i32* %12, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v7.i93.i, i32 inreg noundef %20, i32 noundef %tmp2_v4.i67.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !95
  %25 = load i32, i32* %14, align 8
  %tmp0_v2.i81.i = add i32 %25, 1
  store i32 %tmp0_v2.i81.i, i32* %14, align 8
  %26 = icmp slt i32 %tmp0_v2.i81.i, 6
  br i1 %26, label %BB_8049267.i, label %.exit

BB_8049267.i:                                     ; preds = %Func_80492B9.exit.i, %0
  store i32 134517356, i32* %7, align 4
  %27 = tail call i32 @rand()
  %tmp16_v.i.i = sext i32 %27 to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 582368447
  %tmp15_v1.i.i = lshr i64 %tmp15_v.i.i, 32
  %28 = trunc i64 %tmp15_v1.i.i to i32
  %tmp0_v2.i90.i = ashr i32 %28, 3
  %tmp0_v3.i91.i.neg = lshr i32 %27, 31
  %tmp0_v4.i92.i = add nsw i32 %tmp0_v2.i90.i, %tmp0_v3.i91.i.neg
  %tmp17_v5.i.i.neg = mul i32 %tmp0_v4.i92.i, -59
  %tmp0_v7.i93.i = add i32 %tmp17_v5.i.i.neg, %27
  %tmp0_v8.i94.i = add i32 %tmp0_v7.i93.i, 1
  store i32 %tmp0_v8.i94.i, i32* %15, align 16
  store i8 1, i8* %16, align 1
  br label %BB_80492B1.i

BB_80492B1.i:                                     ; preds = %BB_80492B1.i, %BB_8049267.i
  %storemerge = phi i32 [ 0, %BB_8049267.i ], [ %tmp0_v1.i12.i, %BB_80492B1.i ]
  store i32 %storemerge, i32* %17, align 4
  %29 = load i32, i32* %14, align 8
  %30 = icmp slt i32 %storemerge, %29
  %tmp0_v1.i12.i = add nuw nsw i32 %storemerge, 1
  br i1 %30, label %BB_80492B1.i, label %Func_80492B9.exit.i

.exit:                                            ; preds = %Func_80492B9.exit.i
  ret void
}
define internal fastcc void @string_truncate935(i32 %arg_esp) unnamed_addr  norecurse  !retregs !80 {
.exit:
  %tmp2_v.i11.i = add i32 %arg_esp, 4
  %tmp0_v.i12.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i13.i = add i32 %tmp0_v.i12.i, -4
  %2 = inttoptr i32 %tmp2_v3.i13.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i12.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i15.i = add i32 %tmp0_v.i12.i, -12
  %4 = inttoptr i32 %tmp2_v5.i15.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i17.i = add i32 %tmp0_v.i12.i, -16
  %5 = inttoptr i32 %tmp2_v6.i17.i to i32*
  store i32 %tmp2_v.i11.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i12.i, -84
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i12.i, -68
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i12.i, -20
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i12.i, -64
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1684234849, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i12.i, -60
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 6776421, i32* %14, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i12.i, -96
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %15, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i12.i, -100
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517284, i32* %16, align 4
  %arg.i.i = load i32, i32* %15, align 16
  %17 = inttoptr i32 %arg.i.i to i8*
  %18 = tail call i32 @puts(i8* nonnull dereferenceable(1) %17)
  %tmp2_v.i56.i = add i32 %tmp0_v.i12.i, -59
  %19 = inttoptr i32 %tmp2_v.i56.i to i8*
  store i8 0, i8* %19, align 1
  store i32 %tmp2_v6.i.i, i32* %15, align 16
  store i32 134517303, i32* %16, align 4
  %arg.i.i4 = load i32, i32* %15, align 16
  %20 = inttoptr i32 %arg.i.i4 to i8*
  %21 = tail call i32 @puts(i8* nonnull dereferenceable(1) %20)
  %tmp2_v.i28.i = add i32 %tmp0_v.i12.i, -56
  %22 = inttoptr i32 %tmp2_v.i28.i to i32*
  store i32 1634038356, i32* %22, align 8
  %tmp2_v1.i.i = add i32 %tmp0_v.i12.i, -52
  %23 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1752440948, i32* %23, align 4
  %tmp2_v2.i29.i = add i32 %tmp0_v.i12.i, -48
  %24 = inttoptr i32 %tmp2_v2.i29.i to i32*
  store i32 1919950949, i32* %24, align 16
  %tmp2_v3.i30.i = add i32 %tmp0_v.i12.i, -44
  %25 = inttoptr i32 %tmp2_v3.i30.i to i32*
  store i32 1701601903, i32* %25, align 4
  %tmp2_v4.i31.i = add i32 %tmp0_v.i12.i, -40
  %26 = inttoptr i32 %tmp2_v4.i31.i to i32*
  store i32 1847602285, i32* %26, align 8
  %tmp2_v5.i32.i = add i32 %tmp0_v.i12.i, -36
  %27 = inttoptr i32 %tmp2_v5.i32.i to i32*
  store i32 1948284015, i32* %27, align 4
  %tmp2_v6.i33.i = add i32 %tmp0_v.i12.i, -32
  %28 = inttoptr i32 %tmp2_v6.i33.i to i32*
  store i32 1931502952, i32* %28, align 16
  %tmp2_v7.i34.i = add i32 %tmp0_v.i12.i, -28
  %29 = inttoptr i32 %tmp2_v7.i34.i to i32*
  store i32 1953525113, i32* %29, align 4
  %tmp2_v8.i35.i = add i32 %tmp0_v.i12.i, -24
  %30 = inttoptr i32 %tmp2_v8.i35.i to i32*
  store i32 3042671, i32* %30, align 8
  %tmp2_v11.i37.i = add i32 %tmp0_v.i12.i, -92
  %31 = inttoptr i32 %tmp2_v11.i37.i to i32*
  store i32 %tmp2_v.i28.i, i32* %31, align 4
  %spi.bis.933 = ptrtoint[18 x i8]* @str.bis.933 to i32
  store i32 %spi.bis.933, i32* %15, align 16
  store i32 134517388, i32* %16, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i11.i, i32 inreg noundef 0, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !81
  store i32 17, i32* %31, align 4
  store i32 %tmp2_v.i28.i, i32* %15, align 16
  store i32 134517405, i32* %16, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i12.i, -104
  %33 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %33, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i12.i, -108
  %34 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %spi.bis.932 = ptrtoint[4 x i8]* @str.bis.932 to i32
  store i32 %spi.bis.932, i32* %34, align 4
  %35 = load i32, i32* %31, align 4
  %36 = load i32, i32* %15, align 16
  %tmp0_v4.i.i.i = add i32 %36, %35
  %37 = inttoptr i32 %tmp0_v4.i.i.i to i8*
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %33, align 8
  %tmp2_v.i5.i = add i32 %38, -48
  store i32 %tmp2_v.i5.i, i32* %31, align 4
  %spi.bis.931 = ptrtoint[18 x i8]* @str.bis.931 to i32
  store i32 %spi.bis.931, i32* %15, align 16
  store i32 134517427, i32* %16, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i11.i, i32 inreg noundef %35, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !81
  ret void
}
define internal fastcc void @count_occurrences247(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !66 {
.exit:
  %tmp2_v.i11.i = add i32 %arg_esp, 4
  %tmp0_v.i12.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i14.i = add i32 %tmp0_v.i12.i, -4
  %2 = inttoptr i32 %tmp2_v3.i14.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i15.i = add i32 %tmp0_v.i12.i, -8
  %3 = inttoptr i32 %tmp2_v4.i15.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i17.i = add i32 %tmp0_v.i12.i, -12
  %4 = inttoptr i32 %tmp2_v5.i17.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i19.i = add i32 %tmp0_v.i12.i, -16
  %5 = inttoptr i32 %tmp2_v6.i19.i to i32*
  store i32 %tmp2_v.i11.i, i32* %5, align 16
  %tmp2_v8.i20.i = add i32 %tmp0_v.i12.i, -116
  %6 = inttoptr i32 %tmp2_v8.i20.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i12.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i12.i, -60
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i12.i, -56
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 9, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i12.i, -52
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 5, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i12.i, -48
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 5, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i12.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i12.i, -40
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 5, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i12.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i12.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i12.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i12.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 5, i32* %19, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i12.i, -92
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 0, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i12.i, -88
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 0, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i12.i, -84
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 1, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i12.i, -80
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 1, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i12.i, -76
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 0, i32* %24, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i12.i, -72
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 2, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i12.i, -68
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 0, i32* %26, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i12.i, -64
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 3, i32* %27, align 16
  %tmp2_v22.i.i = add i32 %tmp0_v.i12.i, -120
  %28 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 5, i32* %28, align 8
  %tmp2_v23.i.i = add i32 %tmp0_v.i12.i, -124
  %29 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 10, i32* %29, align 4
  %tmp2_v25.i.i = add i32 %tmp0_v.i12.i, -128
  %30 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %30, align 16
  %tmp2_v26.i.i = add i32 %tmp0_v.i12.i, -132
  %31 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 134517360, i32* %31, align 4
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i12.i, -136
  %32 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %tmp2_v4.i15.i, i32* %32, align 8
  %tmp2_v1.i7.i.i = add i32 %tmp0_v.i12.i, -156
  %33 = inttoptr i32 %tmp2_v1.i7.i.i to i32*
  %spi.bis.245 = ptrtoint[4 x i8]* @str.bis.245 to i32
  store i32 %spi.bis.245, i32* %33, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i12.i, -144
  %34 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 0, i32* %34, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i12.i, -140
  %35 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %29, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %BB_80492FA.i.i, label %Func_occurrences.exit

BB_8049314.i.i:                                   ; preds = %BB_80492FA.i.i, %BB_8049310.i.i
  %38 = phi i32 [ %storemerge13.i, %BB_80492FA.i.i ], [ %.pre.i, %BB_8049310.i.i ]
  %tmp0_v1.i.i.i = add i32 %38, 1
  store i32 %tmp0_v1.i.i.i, i32* %35, align 4
  %39 = load i32, i32* %29, align 4
  %40 = icmp slt i32 %tmp0_v1.i.i.i, %39
  br i1 %40, label %BB_80492FA.i.i, label %Func_occurrences.exit

BB_8049310.i.i:                                   ; preds = %BB_80492FA.i.i
  %41 = load i32, i32* %34, align 16
  %tmp0_v1.i15.i.i = add i32 %41, 1
  store i32 %tmp0_v1.i15.i.i, i32* %34, align 16
  %.pre.i = load i32, i32* %35, align 4
  br label %BB_8049314.i.i

BB_80492FA.i.i:                                   ; preds = %BB_8049314.i.i, %.exit
  %storemerge13.i = phi i32 [ %tmp0_v1.i.i.i, %BB_8049314.i.i ], [ 0, %.exit ]
  %tmp4_v.i24.i.i = shl i32 %storemerge13.i, 2
  %42 = load i32, i32* %30, align 16
  %tmp0_v3.i27.i.i = add i32 %42, %tmp4_v.i24.i.i
  %43 = inttoptr i32 %tmp0_v3.i27.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %28, align 8
  %.not.i.i.i = icmp eq i32 %45, %44
  br i1 %.not.i.i.i, label %BB_8049310.i.i, label %BB_8049314.i.i

Func_occurrences.exit:                            ; preds = %BB_8049314.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %tmp4_v.i24.i.i, %BB_8049314.i.i ]
  %46 = load i32, i32* %34, align 16
  %47 = load i32, i32* %32, align 8
  %tmp2_v.i24.i = add i32 %47, -92
  %48 = inttoptr i32 %tmp2_v.i24.i to i32*
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %28, align 8
  store i32 8, i32* %29, align 4
  %tmp2_v4.i28.i = add i32 %47, -84
  store i32 %tmp2_v4.i28.i, i32* %30, align 16
  store i32 134517382, i32* %31, align 4
  store i32 %47, i32* %32, align 8
  %spi.bis.244 = ptrtoint[4 x i8]* @str.bis.244 to i32
  store i32 %spi.bis.244, i32* %33, align 4
  store i32 0, i32* %34, align 16
  store i32 0, i32* %35, align 4
  %49 = load i32, i32* %29, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_80492FA.i.i19, label %Func_occurrences.exit24

BB_8049314.i.i11:                                 ; preds = %BB_80492FA.i.i19, %BB_8049310.i.i14
  %51 = phi i32 [ %storemerge13.i15, %BB_80492FA.i.i19 ], [ %.pre.i13, %BB_8049310.i.i14 ]
  %tmp0_v1.i.i.i10 = add i32 %51, 1
  store i32 %tmp0_v1.i.i.i10, i32* %35, align 4
  %52 = load i32, i32* %29, align 4
  %53 = icmp slt i32 %tmp0_v1.i.i.i10, %52
  br i1 %53, label %BB_80492FA.i.i19, label %Func_occurrences.exit24

BB_8049310.i.i14:                                 ; preds = %BB_80492FA.i.i19
  %54 = load i32, i32* %34, align 16
  %tmp0_v1.i15.i.i12 = add i32 %54, 1
  store i32 %tmp0_v1.i15.i.i12, i32* %34, align 16
  %.pre.i13 = load i32, i32* %35, align 4
  br label %BB_8049314.i.i11

BB_80492FA.i.i19:                                 ; preds = %BB_8049314.i.i11, %Func_occurrences.exit
  %storemerge13.i15 = phi i32 [ %tmp0_v1.i.i.i10, %BB_8049314.i.i11 ], [ 0, %Func_occurrences.exit ]
  %tmp4_v.i24.i.i16 = shl i32 %storemerge13.i15, 2
  %55 = load i32, i32* %30, align 16
  %tmp0_v3.i27.i.i17 = add i32 %55, %tmp4_v.i24.i.i16
  %56 = inttoptr i32 %tmp0_v3.i27.i.i17 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %28, align 8
  %.not.i.i.i18 = icmp eq i32 %58, %57
  br i1 %.not.i.i.i18, label %BB_8049310.i.i14, label %BB_8049314.i.i11

Func_occurrences.exit24:                          ; preds = %BB_8049314.i.i11, %Func_occurrences.exit
  %r_edx.0.lcssa.i20 = phi i32 [ %r_edx.0.lcssa.i, %Func_occurrences.exit ], [ %tmp4_v.i24.i.i16, %BB_8049314.i.i11 ]
  %59 = load i32, i32* %34, align 16
  %60 = load i32, i32* %32, align 8
  %tmp2_v.i47.i = add i32 %60, -88
  %61 = inttoptr i32 %tmp2_v.i47.i to i32*
  store i32 %59, i32* %61, align 4
  %tmp2_v2.i50.i = add i32 %60, -92
  %62 = inttoptr i32 %tmp2_v2.i50.i to i32*
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %29, align 4
  %spi.bis.243 = ptrtoint[31 x i8]* @str.bis.243 to i32
  store i32 %spi.bis.243, i32* %30, align 16
  store i32 134517406, i32* %31, align 4
  %64 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i11.i, i32 inreg noundef %r_edx.0.lcssa.i20, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !67
  %65 = lshr i64 %64, 32
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %61, align 4
  store i32 %67, i32* %29, align 4
  %spi.bis.242 = ptrtoint[31 x i8]* @str.bis.242 to i32
  store i32 %spi.bis.242, i32* %30, align 16
  store i32 134517427, i32* %31, align 4
  %68 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i11.i, i32 inreg noundef %66, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !67
  ret void
}
define internal fastcc void @replace_substring34(i32 %arg_esp) unnamed_addr  norecurse  !retregs !52 {
.exit:
  %tmp2_v.i42.i = add i32 %arg_esp, 4
  %tmp0_v.i43.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i45.i = add i32 %tmp0_v.i43.i, -4
  %2 = inttoptr i32 %tmp2_v3.i45.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i46.i = add i32 %tmp0_v.i43.i, -8
  %3 = inttoptr i32 %tmp2_v4.i46.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i48.i = add i32 %tmp0_v.i43.i, -12
  %4 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i50.i = add i32 %tmp0_v.i43.i, -16
  %5 = inttoptr i32 %tmp2_v6.i50.i to i32*
  store i32 %tmp2_v.i42.i, i32* %5, align 16
  %tmp2_v8.i51.i = add i32 %tmp0_v.i43.i, -68
  %6 = inttoptr i32 %tmp2_v8.i51.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i14.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i18.i = add i32 %tmp0_v.i43.i, -20
  %9 = inttoptr i32 %tmp2_v2.i18.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i19.i = add i32 %tmp0_v.i43.i, -50
  %10 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 1702125896, i32* %10, align 4
  %tmp2_v4.i20.i = add i32 %tmp0_v.i43.i, -46
  %11 = inttoptr i32 %tmp2_v4.i20.i to i32*
  store i32 1701344288, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i43.i, -42
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1852404512, i32* %12, align 4
  %tmp2_v6.i21.i = add i32 %tmp0_v.i43.i, -38
  %13 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 1869357100, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i43.i, -34
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1948280182, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i43.i, -30
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1931502952, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i43.i, -26
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1701736041, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i43.i, -22
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 114, i16* %17, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i43.i, -72
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  %spi.bis.32 = ptrtoint[5 x i8]* @str.bis.32 to i32
  store i32 %spi.bis.32, i32* %18, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i43.i, -76
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  %spi.bis.31 = ptrtoint[4 x i8]* @str.bis.31 to i32
  store i32 %spi.bis.31, i32* %19, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i43.i, -80
  %20 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i19.i, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i43.i, -84
  %21 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517459, i32* %21, align 4
  %tmp2_v.i67.i.i = add i32 %tmp0_v.i43.i, -88
  %22 = inttoptr i32 %tmp2_v.i67.i.i to i32*
  store i32 %tmp2_v4.i46.i, i32* %22, align 8
  %tmp2_v1.i69.i.i = add i32 %tmp0_v.i43.i, -92
  %23 = inttoptr i32 %tmp2_v1.i69.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i71.i.i = add i32 %tmp0_v.i43.i, -148
  %24 = inttoptr i32 %tmp2_v2.i71.i.i to i32*
  store i32 134517570, i32* %24, align 4
  %25 = load i32, i32* %19, align 4
  %tmp2_v3.i145.i.i = add i32 %tmp0_v.i43.i, -160
  %26 = inttoptr i32 %tmp2_v3.i145.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i146.i.i = add i32 %tmp0_v.i43.i, -164
  %27 = inttoptr i32 %tmp2_v4.i146.i.i to i32*
  store i32 134517587, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %mrv.i59.i = insertvalue { i32, i32 } undef, i32 %tmp2_v3.i145.i.i, 0
  %tmp2_v.i39.i.i = add i32 %tmp0_v.i43.i, -116
  %29 = inttoptr i32 %tmp2_v.i39.i.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %18, align 8
  store i32 %30, i32* %26, align 16
  store i32 134517604, i32* %27, align 4
  %arg.i.i61.i = load i32, i32* %26, align 16
  %31 = tail call i32 @strlen(i32 %arg.i.i61.i)
  %tmp2_v.i120.i.i = add i32 %tmp0_v.i43.i, -112
  %32 = inttoptr i32 %tmp2_v.i120.i.i to i32*
  store i32 %31, i32* %32, align 16
  %33 = load i32, i32* %20, align 16
  store i32 %33, i32* %26, align 16
  store i32 134517621, i32* %27, align 4
  %arg.i.i63.i = load i32, i32* %26, align 16
  %34 = tail call i32 @strlen(i32 %arg.i.i63.i)
  %tmp2_v.i48.i.i = add i32 %tmp0_v.i43.i, -108
  %35 = inttoptr i32 %tmp2_v.i48.i.i to i32*
  store i32 %34, i32* %35, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i43.i, -132
  %36 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 0, i32* %36, align 4
  %tmp2_v1.i3.i.i = add i32 %tmp0_v.i43.i, -128
  %37 = inttoptr i32 %tmp2_v1.i3.i.i to i32*
  store i32 0, i32* %37, align 16
  %38 = load i32, i32* %35, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %BB_80493AA.i.i, label %BB_80493E5.i.i

BB_8049423.i.i:                                   ; preds = %BB_8049423.i.lr.ph.i, %BB_8049488.i.backedge.i
  %40 = phi i32 [ %78, %BB_8049423.i.lr.ph.i ], [ %58, %BB_8049488.i.backedge.i ]
  %41 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %41, %40
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %80, align 4
  store i32 %tmp0_v3.i.i.i, i32* %70, align 4
  store i32 134517815, i32* %71, align 4
  %arg.i.i65.i = load i32, i32* %70, align 4
  %arg2.i.i.i = load i32, i32* %80, align 4
  %43 = tail call i32 @strstr(i32 %arg.i.i65.i, i32 %arg2.i.i.i)
  %44 = load i32, i32* %74, align 4
  %45 = load i32, i32* %20, align 16
  %tmp0_v4.i181.i.i = add i32 %45, %44
  %.not.i184.i.i = icmp eq i32 %43, %tmp0_v4.i181.i.i
  %46 = load i32, i32* %75, align 8
  %47 = load i32, i32* %73, align 8
  %tmp0_v3.i13.i.i = add i32 %47, %46
  br i1 %.not.i184.i.i, label %BB_8049446.i.i, label %BB_804946B.i.i

BB_80493D9.i.i:                                   ; preds = %BB_80493AA.i.i
  %tmp0_v1.i.i.i = add i32 %92, 1
  br label %BB_80493DD.i.backedge.i

BB_80493DD.i.backedge.i:                          ; preds = %BB_80493CD.i.i, %BB_80493D9.i.i
  %storemerge87.i = phi i32 [ %tmp0_v1.i.i.i, %BB_80493D9.i.i ], [ %tmp0_v6.i35.i.i, %BB_80493CD.i.i ]
  store i32 %storemerge87.i, i32* %37, align 16
  %r_esp.1.in.i = extractvalue { i32, i32 } %.pn80.pn.i, 0
  %48 = load i32, i32* %35, align 4
  %49 = icmp slt i32 %storemerge87.i, %48
  br i1 %49, label %BB_80493AA.i.i, label %BB_80493E5.i.i

BB_8049446.i.i:                                   ; preds = %BB_8049423.i.i
  %50 = load i32, i32* %18, align 8
  store i32 %50, i32* %80, align 4
  store i32 %tmp0_v3.i13.i.i, i32* %70, align 4
  store i32 134517850, i32* %71, align 4
  %arg.i.i67.i = load i32, i32* %70, align 4
  %arg2.i.i68.i = load i32, i32* %80, align 4
  %51 = tail call i32 @strcpy(i32 %arg.i.i67.i, i32 %arg2.i.i68.i)
  %52 = load i32, i32* %29, align 4
  %53 = load i32, i32* %74, align 4
  %tmp0_v4.i62.i.i = add i32 %53, %52
  store i32 %tmp0_v4.i62.i.i, i32* %74, align 4
  %54 = load i32, i32* %32, align 16
  br label %BB_8049488.i.backedge.i

BB_8049488.i.backedge.i:                          ; preds = %BB_804946B.i.i, %BB_8049446.i.i
  %.sink88.i = phi i32 [ %54, %BB_8049446.i.i ], [ 1, %BB_804946B.i.i ]
  %r_ecx.0.be.i = phi i32 [ %44, %BB_8049446.i.i ], [ %46, %BB_804946B.i.i ]
  %55 = load i32, i32* %75, align 8
  %tmp0_v9.i.i.i = add i32 %55, %.sink88.i
  store i32 %tmp0_v9.i.i.i, i32* %75, align 8
  %56 = load i32, i32* %20, align 16
  store i32 %56, i32* %70, align 4
  store i32 134517907, i32* %71, align 4
  %arg.i.i71.i = load i32, i32* %70, align 4
  %57 = tail call i32 @strlen(i32 %arg.i.i71.i)
  %58 = load i32, i32* %74, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %BB_8049423.i.i, label %Func_replace.exit

BB_80493CD.i.i:                                   ; preds = %BB_80493AA.i.i
  %60 = load i32, i32* %36, align 4
  %tmp0_v1.i31.i.i = add i32 %60, 1
  store i32 %tmp0_v1.i31.i.i, i32* %36, align 4
  %61 = load i32, i32* %29, align 4
  %62 = load i32, i32* %37, align 16
  %tmp0_v6.i35.i.i = add i32 %62, %61
  br label %BB_80493DD.i.backedge.i

BB_80493E5.i.i:                                   ; preds = %BB_80493DD.i.backedge.i, %.exit
  %mrv.i59.pn.lcssa78.i = phi { i32, i32 } [ %mrv.i59.i, %.exit ], [ %.pn80.i, %BB_80493DD.i.backedge.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i42.i, %.exit ], [ %92, %BB_80493DD.i.backedge.i ]
  %r_esp.1.in.le.i = extractvalue { i32, i32 } %mrv.i59.pn.lcssa78.i, 0
  %63 = load i32, i32* %32, align 16
  %64 = load i32, i32* %29, align 4
  %tmp0_v2.i77.i.i = sub i32 %63, %64
  %tmp2_v3.i78.i.i = add i32 %tmp0_v.i43.i, -104
  %65 = inttoptr i32 %tmp2_v3.i78.i.i to i32*
  store i32 %tmp0_v2.i77.i.i, i32* %65, align 8
  %66 = load i32, i32* %35, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i43.i, -100
  %67 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %36, align 4
  %69 = load i32, i32* %65, align 8
  %tmp15_v11.i.i.i = mul i32 %69, %68
  %tmp0_v17.i.i.i = add i32 %tmp15_v11.i.i.i, %66
  store i32 %tmp0_v17.i.i.i, i32* %67, align 4
  %tmp0_v20.i.i.i = add i32 %tmp0_v17.i.i.i, 1
  %70 = inttoptr i32 %r_esp.1.in.le.i to i32*
  store i32 %tmp0_v20.i.i.i, i32* %70, align 4
  %tmp2_v23.i.i.i = add i32 %r_esp.1.in.le.i, -4
  %71 = inttoptr i32 %tmp2_v23.i.i.i to i32*
  store i32 134517773, i32* %71, align 4
  %arg.i.i69.i = load i32, i32* %70, align 4
  %72 = tail call i32 @malloc(i32 %arg.i.i69.i)
  %tmp2_v.i170.i.i = add i32 %tmp0_v.i43.i, -136
  %73 = inttoptr i32 %tmp2_v.i170.i.i to i32*
  store i32 %72, i32* %73, align 8
  %tmp2_v1.i172.i.i = add i32 %tmp0_v.i43.i, -124
  %74 = inttoptr i32 %tmp2_v1.i172.i.i to i32*
  store i32 0, i32* %74, align 4
  %tmp2_v2.i173.i.i = add i32 %tmp0_v.i43.i, -120
  %75 = inttoptr i32 %tmp2_v2.i173.i.i to i32*
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %20, align 16
  store i32 %76, i32* %70, align 4
  store i32 134517907, i32* %71, align 4
  %arg.i.i7184.i = load i32, i32* %70, align 4
  %77 = tail call i32 @strlen(i32 %arg.i.i7184.i)
  %78 = load i32, i32* %74, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %BB_8049423.i.lr.ph.i, label %Func_replace.exit

BB_8049423.i.lr.ph.i:                             ; preds = %BB_80493E5.i.i
  %tmp2_v7.i.i.i = add i32 %r_esp.1.in.le.i, 4
  %80 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  br label %BB_8049423.i.i

BB_804946B.i.i:                                   ; preds = %BB_8049423.i.i
  %81 = inttoptr i32 %tmp0_v4.i181.i.i to i8*
  %82 = load i8, i8* %81, align 1
  %83 = inttoptr i32 %tmp0_v3.i13.i.i to i8*
  store i8 %82, i8* %83, align 1
  %84 = load i32, i32* %74, align 4
  %tmp0_v12.i.i.i = add i32 %84, 1
  store i32 %tmp0_v12.i.i.i, i32* %74, align 4
  br label %BB_8049488.i.backedge.i

BB_80493AA.i.i:                                   ; preds = %BB_80493DD.i.backedge.i, %.exit
  %85 = phi i32 [ %storemerge87.i, %BB_80493DD.i.backedge.i ], [ 0, %.exit ]
  %r_esp.1.in81.i = phi i32 [ %r_esp.1.in.i, %BB_80493DD.i.backedge.i ], [ %tmp2_v3.i145.i.i, %.exit ]
  %.pn80.pn.i = phi { i32, i32 } [ %.pn80.i, %BB_80493DD.i.backedge.i ], [ %mrv.i59.i, %.exit ]
  %.pn86.i = phi i32 [ %91, %BB_80493DD.i.backedge.i ], [ %34, %.exit ]
  %.pn80.i = insertvalue { i32, i32 } %.pn80.pn.i, i32 %.pn86.i, 1
  %86 = load i32, i32* %20, align 16
  %tmp0_v3.i159.i.i = add i32 %86, %85
  %87 = load i32, i32* %19, align 4
  %tmp2_v7.i164.i.i = add i32 %r_esp.1.in81.i, 4
  %88 = inttoptr i32 %tmp2_v7.i164.i.i to i32*
  store i32 %87, i32* %88, align 4
  %89 = inttoptr i32 %r_esp.1.in81.i to i32*
  store i32 %tmp0_v3.i159.i.i, i32* %89, align 4
  %tmp2_v9.i166.i.i = add i32 %r_esp.1.in81.i, -4
  %90 = inttoptr i32 %tmp2_v9.i166.i.i to i32*
  store i32 134517694, i32* %90, align 4
  %arg.i.i74.i = load i32, i32* %89, align 4
  %arg2.i.i75.i = load i32, i32* %88, align 4
  %91 = tail call i32 @strstr(i32 %arg.i.i74.i, i32 %arg2.i.i75.i)
  %92 = load i32, i32* %37, align 16
  %93 = load i32, i32* %20, align 16
  %tmp0_v4.i112.i.i = add i32 %93, %92
  %.not.i115.i.i = icmp eq i32 %91, %tmp0_v4.i112.i.i
  br i1 %.not.i115.i.i, label %BB_80493CD.i.i, label %BB_80493D9.i.i

Func_replace.exit:                                ; preds = %BB_80493E5.i.i, %BB_8049488.i.backedge.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_80493E5.i.i ], [ %r_ecx.0.be.i, %BB_8049488.i.backedge.i ]
  %94 = load i32, i32* %75, align 8
  %95 = load i32, i32* %73, align 8
  %tmp0_v3.i131.i.i = add i32 %95, %94
  %96 = inttoptr i32 %tmp0_v3.i131.i.i to i8*
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* %73, align 8
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %22, align 8
  %tmp2_v.i9.i = add i32 %99, -48
  %100 = inttoptr i32 %tmp2_v.i9.i to i32*
  store i32 %97, i32* %100, align 4
  %tmp2_v2.i.i = add i32 %99, -42
  store i32 %tmp2_v2.i.i, i32* %19, align 4
  %tmp2_v4.i11.i = add i32 %98, -8175
  store i32 %tmp2_v4.i11.i, i32* %20, align 16
  store i32 134517484, i32* %21, align 4
  %101 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %94, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !53
  %102 = lshr i64 %101, 32
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %100, align 4
  store i32 %104, i32* %19, align 4
  %tmp2_v4.i39.i = add i32 %98, -8163
  store i32 %tmp2_v4.i39.i, i32* %20, align 16
  store i32 134517505, i32* %21, align 4
  %105 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %103, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !53
  %106 = load i32, i32* %100, align 4
  store i32 %106, i32* %20, align 16
  store i32 134517519, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  tail call void @free(i32 %arg.i.i)
  ret void
}
define internal fastcc void @triangle_of_stars906(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !39 {
  %tmp2_v.i28.i = add i32 %arg_esp, 4
  %tmp0_v.i29.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i31.i = add i32 %tmp0_v.i29.i, -4
  %3 = inttoptr i32 %tmp2_v3.i31.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i32.i = add i32 %tmp0_v.i29.i, -8
  %4 = inttoptr i32 %tmp2_v4.i32.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i34.i = add i32 %tmp0_v.i29.i, -12
  %5 = inttoptr i32 %tmp2_v5.i34.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i29.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i28.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i29.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %7, align 4
  %tmp2_v.i48.i = add i32 %tmp0_v.i29.i, -24
  %8 = inttoptr i32 %tmp2_v.i48.i to i32*
  %tmp2_v.i44.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v.i44.i to i32*
  store i32 1, i32* %8, align 8
  %tmp2_v.i41.i = add i32 %tmp0_v.i29.i, -48
  %10 = inttoptr i32 %tmp2_v.i41.i to i32*
  %tmp2_v1.i42.i = add i32 %tmp0_v.i29.i, -52
  %11 = inttoptr i32 %tmp2_v1.i42.i to i32*
  br label %BB_80491C0.i

BB_80491E2.i:                                     ; preds = %BB_80491C0.i, %BB_80491C9.i
  store i32 10, i32* %10, align 16
  store i32 134517228, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %12 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %13 = load i32, i32* %8, align 8
  %tmp0_v2.i.i = add i32 %13, 1
  store i32 %tmp0_v2.i.i, i32* %8, align 8
  %14 = icmp slt i32 %tmp0_v2.i.i, 11
  br i1 %14, label %BB_80491C0.i, label %.exit

BB_80491C9.i:                                     ; preds = %BB_80491C0.i, %BB_80491C9.i
  store i32 42, i32* %10, align 16
  store i32 134517203, i32* %11, align 4
  %arg.i.i5 = load i32, i32* %10, align 16
  %15 = tail call i32 @putchar(i32 %arg.i.i5)  nounwind 
  %16 = load i32, i32* %9, align 4
  %tmp0_v2.i20.i = add i32 %16, 1
  store i32 %tmp0_v2.i20.i, i32* %9, align 4
  %17 = load i32, i32* %8, align 8
  %.not.i.i = icmp sgt i32 %tmp0_v2.i20.i, %17
  br i1 %.not.i.i, label %BB_80491E2.i, label %BB_80491C9.i

BB_80491C0.i:                                     ; preds = %BB_80491E2.i, %0
  store i32 1, i32* %9, align 4
  %18 = load i32, i32* %8, align 8
  %.not.i.i6 = icmp slt i32 %18, 1
  br i1 %.not.i.i6, label %BB_80491E2.i, label %BB_80491C9.i

.exit:                                            ; preds = %BB_80491E2.i
  ret void
}
define internal fastcc void @merge_sort376(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !26 {
  %tmp2_v.i9.i = add i32 %arg_esp, 4
  %tmp0_v.i10.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i11.i = add i32 %tmp0_v.i10.i, -4
  %3 = inttoptr i32 %tmp2_v3.i11.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i12.i = add i32 %tmp0_v.i10.i, -8
  %4 = inttoptr i32 %tmp2_v4.i12.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i14.i = add i32 %tmp0_v.i10.i, -12
  %5 = inttoptr i32 %tmp2_v5.i14.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i16.i = add i32 %tmp0_v.i10.i, -16
  %6 = inttoptr i32 %tmp2_v6.i16.i to i32*
  store i32 %tmp2_v.i9.i, i32* %6, align 16
  %tmp2_v8.i17.i = add i32 %tmp0_v.i10.i, -84
  %7 = inttoptr i32 %tmp2_v8.i17.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i10.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i10.i, -60
  %11 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 9, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i10.i, -56
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 4, i32* %12, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i10.i, -52
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 8, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i10.i, -48
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1, i32* %14, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i10.i, -44
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 7, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i10.i, -40
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i10.i, -36
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i10.i, -32
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %18, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i10.i, -28
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 5, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i10.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i10.i, -64
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i10.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 10, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i10.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i10.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517342, i32* %24, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i10.i, -104
  %25 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i12.i, i32* %25, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i10.i, -116
  %26 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %spi.bis.374 = ptrtoint[4 x i8]* @str.bis.374 to i32
  store i32 %spi.bis.374, i32* %26, align 4
  %27 = load i32, i32* %22, align 4
  %tmp0_v2.i8.i.i = add i32 %27, -1
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i10.i, -120
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %tmp0_v2.i8.i.i, i32* %28, align 8
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i10.i, -124
  %29 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %23, align 16
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i10.i, -128
  %31 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 %30, i32* %31, align 16
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i10.i, -132
  %32 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134517477, i32* %32, align 4
  %33 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %tmp2_v9.i.i.i, i32 0, i32 %tmp2_v.i.i.i, i32 134529024, i32 %tmp2_v.i9.i)  nounwind 
  %34 = extractvalue { i32, i32, i32, i32, i32 } %33, 2
  %35 = extractvalue { i32, i32, i32, i32, i32 } %33, 4
  %36 = inttoptr i32 %34 to i32*
  %37 = load i32, i32* %36, align 4
  %tmp4_v3.i.i.i = add i32 %34, 8
  %tmp2_v.i.i = add i32 %37, -60
  %38 = inttoptr i32 %tmp2_v.i.i to i32*
  %tmp2_v1.i.i = add i32 %37, -56
  %39 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %38, align 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_804926A.i.lr.ph, label %.BB_8049290.i_crit_edge

.BB_8049290.i_crit_edge:                          ; preds = %0
  %.pre = inttoptr i32 %tmp4_v3.i.i.i to i32*
  %.pre7 = add i32 %34, 4
  %.pre8 = inttoptr i32 %.pre7 to i32*
  br label %BB_8049290.i

BB_804926A.i.lr.ph:                               ; preds = %0
  %42 = extractvalue { i32, i32, i32, i32, i32 } %33, 3
  %43 = extractvalue { i32, i32, i32, i32, i32 } %33, 1
  %tmp2_v1.i21.i = add i32 %37, -52
  %tmp2_v5.i25.i = add i32 %34, 12
  %44 = inttoptr i32 %tmp2_v5.i25.i to i32*
  %tmp2_v6.i27.i = add i32 %42, -8184
  %45 = inttoptr i32 %tmp4_v3.i.i.i to i32*
  %tmp2_v8.i29.i = add i32 %34, 4
  %46 = inttoptr i32 %tmp2_v8.i29.i to i32*
  br label %BB_804926A.i

BB_804926A.i:                                     ; preds = %BB_804926A.i, %BB_804926A.i.lr.ph
  %r_edx.06 = phi i32 [ %43, %BB_804926A.i.lr.ph ], [ %51, %BB_804926A.i ]
  %storemerge5 = phi i32 [ 0, %BB_804926A.i.lr.ph ], [ %tmp0_v2.i42.i, %BB_804926A.i ]
  %tmp4_v.i22.i = shl i32 %storemerge5, 2
  %tmp2_v2.i23.i = add i32 %tmp2_v1.i21.i, %tmp4_v.i22.i
  %47 = inttoptr i32 %tmp2_v2.i23.i to i32*
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %44, align 4
  store i32 %tmp2_v6.i27.i, i32* %45, align 4
  store i32 134517377, i32* %46, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %35, i32 inreg noundef %r_edx.06, i32 noundef %tmp4_v3.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %38, align 4
  %tmp0_v2.i42.i = add i32 %52, 1
  store i32 %tmp0_v2.i42.i, i32* %38, align 4
  %53 = load i32, i32* %39, align 4
  %54 = icmp slt i32 %tmp0_v2.i42.i, %53
  br i1 %54, label %BB_804926A.i, label %BB_8049290.i

BB_8049290.i:                                     ; preds = %BB_804926A.i, %.BB_8049290.i_crit_edge
  %.pre-phi9 = phi i32* [ %.pre8, %.BB_8049290.i_crit_edge ], [ %46, %BB_804926A.i ]
  %.pre-phi = phi i32* [ %.pre, %.BB_8049290.i_crit_edge ], [ %45, %BB_804926A.i ]
  store i32 10, i32* %.pre-phi, align 4
  store i32 134517402, i32* %.pre-phi9, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 4
  %55 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  ret void
}
define internal fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx, i32 %arg_ecx) unnamed_addr  nofree nosync nounwind  !retregs !28 {
Func_80492FA.exit.i:
  %tmp2_v.i14.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -32
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517498, i32* %1, align 4
  %tmp2_v.i37.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i37.i to i32*
  %3 = load i32, i32* %2, align 4
  %tmp2_v2.i39.i = add i32 %arg_esp, 12
  %4 = inttoptr i32 %tmp2_v2.i39.i to i32*
  %5 = load i32, i32* %4, align 4
  %.not.i.i = icmp sgt i32 %5, %3
  br i1 %.not.i.i, label %BB_8049307.i, label %.exit

BB_8049307.i:                                     ; preds = %Func_80492FA.exit.i
  %tmp0_v2.i21.i = sub i32 %5, %3
  %tmp0_v3.i22.i = lshr i32 %tmp0_v2.i21.i, 31
  %tmp0_v4.i23.i = add i32 %tmp0_v3.i22.i, %tmp0_v2.i21.i
  %tmp0_v5.i24.i = ashr i32 %tmp0_v4.i23.i, 1
  %tmp0_v8.i.i = add i32 %tmp0_v5.i24.i, %3
  %tmp2_v9.i27.i = add i32 %arg_esp, -16
  %6 = inttoptr i32 %tmp2_v9.i27.i to i32*
  store i32 %tmp0_v8.i.i, i32* %6, align 4
  %tmp2_v13.i.i = add i32 %arg_esp, -36
  %7 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp0_v8.i.i, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %tmp2_v16.i.i = add i32 %arg_esp, -40
  %9 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v17.i.i = add i32 %arg_esp, 4
  %10 = inttoptr i32 %tmp2_v17.i.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v19.i.i = add i32 %arg_esp, -44
  %12 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v20.i.i = add i32 %arg_esp, -48
  %13 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517553, i32* %13, align 4
  %14 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %tmp2_v20.i.i, i32 %tmp0_v5.i24.i, i32 %tmp2_v.i14.i, i32 %arg_ebx, i32 %arg_ecx)
  %15 = extractvalue { i32, i32, i32, i32, i32 } %14, 0
  %16 = extractvalue { i32, i32, i32, i32, i32 } %14, 1
  %17 = extractvalue { i32, i32, i32, i32, i32 } %14, 2
  %18 = extractvalue { i32, i32, i32, i32, i32 } %14, 3
  %19 = extractvalue { i32, i32, i32, i32, i32 } %14, 4
  %tmp2_v.i4.i = add i32 %17, -12
  %20 = inttoptr i32 %tmp2_v.i4.i to i32*
  %21 = load i32, i32* %20, align 4
  %tmp0_v2.i.i = add i32 %21, 1
  %tmp2_v4.i.i = add i32 %17, 16
  %22 = inttoptr i32 %tmp2_v4.i.i to i32*
  %23 = load i32, i32* %22, align 4
  %tmp2_v6.i6.i = add i32 %15, 8
  %24 = inttoptr i32 %tmp2_v6.i6.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v7.i.i = add i32 %15, 4
  %25 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp0_v2.i.i, i32* %25, align 4
  %tmp2_v8.i7.i = add i32 %17, 8
  %26 = inttoptr i32 %tmp2_v8.i7.i to i32*
  %27 = load i32, i32* %26, align 4
  %28 = inttoptr i32 %15 to i32*
  store i32 %27, i32* %28, align 4
  %tmp2_v11.i.i = add i32 %15, -4
  %29 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517577, i32* %29, align 4
  %30 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_merge_sort_recursion(i32 %tmp2_v11.i.i, i32 %16, i32 %17, i32 %18, i32 %19)
  %31 = extractvalue { i32, i32, i32, i32, i32 } %30, 0
  %32 = extractvalue { i32, i32, i32, i32, i32 } %30, 2
  %33 = extractvalue { i32, i32, i32, i32, i32 } %30, 3
  %tmp2_v.i.i = add i32 %32, 16
  %34 = inttoptr i32 %tmp2_v.i.i to i32*
  %35 = load i32, i32* %34, align 4
  %tmp2_v2.i.i = add i32 %31, 12
  %36 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %35, i32* %36, align 4
  %tmp2_v3.i.i = add i32 %32, -12
  %37 = inttoptr i32 %tmp2_v3.i.i to i32*
  %38 = load i32, i32* %37, align 4
  %tmp2_v5.i.i = add i32 %31, 8
  %39 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %38, i32* %39, align 4
  %tmp2_v6.i.i = add i32 %32, 12
  %40 = inttoptr i32 %tmp2_v6.i.i to i32*
  %41 = load i32, i32* %40, align 4
  %tmp2_v8.i.i = add i32 %31, 4
  %42 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 %41, i32* %42, align 4
  %tmp2_v9.i.i = add i32 %32, 8
  %43 = inttoptr i32 %tmp2_v9.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %45 = inttoptr i32 %31 to i32*
  store i32 %44, i32* %45, align 4
  %tmp2_v12.i.i = add i32 %31, -4
  %46 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517597, i32* %46, align 4
  %tmp2_v.i54.i.i = add i32 %31, -8
  %47 = inttoptr i32 %tmp2_v.i54.i.i to i32*
  store i32 %32, i32* %47, align 4
  %tmp2_v1.i56.i.i = add i32 %31, -12
  %48 = inttoptr i32 %tmp2_v1.i56.i.i to i32*
  store i32 %33, i32* %48, align 4
  %tmp2_v2.i58.i.i = add i32 %31, -84
  %49 = inttoptr i32 %tmp2_v2.i58.i.i to i32*
  store i32 134517619, i32* %49, align 4
  %tmp4_v.i.i.i.i = add i32 %31, -80
  %50 = load i32, i32* %45, align 4
  %tmp2_v2.i86.i.i = add i32 %31, -68
  %51 = inttoptr i32 %tmp2_v2.i86.i.i to i32*
  store i32 %50, i32* %51, align 4
  %tmp4_v.i87.i.b.i = load i1, i1* @segs.0, align 1
  %52 = inttoptr i32 %arg_esp to i32*
  %53 = load i32, i32* %52, align 4
  %tmp2_v5.i90.i.i = add i32 %31, -20
  %54 = inttoptr i32 %tmp2_v5.i90.i.i to i32*
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %39, align 4
  %56 = load i32, i32* %42, align 4
  %tmp0_v9.i95.i.i = add i32 %55, 1
  %tmp0_v10.i96.i.i = sub i32 %tmp0_v9.i95.i.i, %56
  %tmp2_v11.i97.i.i = add i32 %31, -44
  %57 = inttoptr i32 %tmp2_v11.i97.i.i to i32*
  store i32 %tmp0_v10.i96.i.i, i32* %57, align 4
  %58 = load i32, i32* %36, align 4
  %59 = load i32, i32* %39, align 4
  %tmp0_v16.i99.i.i = sub i32 %58, %59
  %tmp2_v17.i100.i.i = add i32 %31, -40
  %60 = inttoptr i32 %tmp2_v17.i100.i.i to i32*
  store i32 %tmp0_v16.i99.i.i, i32* %60, align 4
  %61 = load i32, i32* %57, align 4
  %tmp2_v20.i103.i.i = add i32 %61, -1
  %tmp2_v21.i.i.i = add i32 %31, -36
  %62 = inttoptr i32 %tmp2_v21.i.i.i to i32*
  store i32 %tmp2_v20.i103.i.i, i32* %62, align 4
  %tmp4_v22.i.i.i = shl i32 %61, 2
  %tmp0_v23.i.i.i = add i32 %tmp4_v22.i.i.i, 15
  %tmp0_v.i3.i.i = and i32 %tmp0_v23.i.i.i, 4080
  %tmp0_v1.i.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v.i3.i.i
  %tmp0_v4.i20.i.i = add i32 %tmp0_v1.i.i.i, 3
  %tmp0_v6.i21.i.i = and i32 %tmp0_v4.i20.i.i, -4
  %tmp2_v.i23.i.i = add i32 %31, -32
  %63 = inttoptr i32 %tmp2_v.i23.i.i to i32*
  store i32 %tmp0_v6.i21.i.i, i32* %63, align 4
  %64 = load i32, i32* %60, align 4
  %tmp2_v9.i25.i.i = add i32 %64, -1
  %tmp2_v10.i.i.i = add i32 %31, -28
  %65 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 %tmp2_v9.i25.i.i, i32* %65, align 4
  %tmp4_v.i26.i.i = shl i32 %64, 2
  %tmp0_v11.i.i.i = add i32 %tmp4_v.i26.i.i, 15
  %tmp0_v15.i.i.i = and i32 %tmp0_v11.i.i.i, -4096
  %tmp0_v17.i27.i.i = sub i32 %tmp0_v1.i.i.i, %tmp0_v15.i.i.i
  %tmp0_v.i76.i.i = and i32 %tmp0_v11.i.i.i, 4080
  %tmp0_v4.i124.i.i = sub i32 %tmp0_v4.i20.i.i, %tmp0_v.i76.i.i
  %tmp0_v6.i127.i.i = and i32 %tmp0_v4.i124.i.i, -4
  %tmp2_v.i129.i.i = add i32 %31, -24
  %66 = inttoptr i32 %tmp2_v.i129.i.i to i32*
  store i32 %tmp0_v6.i127.i.i, i32* %66, align 4
  %tmp2_v7.i130.i.i = add i32 %31, -60
  %67 = inttoptr i32 %tmp2_v7.i130.i.i to i32*
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %57, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %BB_80494A3.i.i, label %BB_80494CE.i.i

BB_80494CE.i.i:                                   ; preds = %BB_80494A3.i.i, %BB_8049307.i
  %r_ecx.1.lcssa.i = phi i32 [ %tmp0_v17.i27.i.i, %BB_8049307.i ], [ %96, %BB_80494A3.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %tmp0_v.i76.i.i, %BB_8049307.i ], [ %storemerge15.i, %BB_80494A3.i.i ]
  %tmp2_v.i.i.i = add i32 %31, -64
  %70 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* %60, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %BB_80494D7.i.i, label %BB_8049505.i.i

BB_80494D7.i.i:                                   ; preds = %BB_80494D7.i.i, %BB_80494CE.i.i
  %storemerge817.i = phi i32 [ %tmp0_v17.i.i.i, %BB_80494D7.i.i ], [ 0, %BB_80494CE.i.i ]
  %73 = load i32, i32* %39, align 4
  %tmp2_v1.i.i.i = add nsw i32 %storemerge817.i, 1
  %tmp0_v4.i.i.i = add i32 %tmp2_v1.i.i.i, %73
  %tmp4_v.i.i.i33 = shl i32 %tmp0_v4.i.i.i, 2
  %74 = load i32, i32* %51, align 4
  %tmp0_v7.i.i.i = add i32 %tmp4_v.i.i.i33, %74
  %75 = inttoptr i32 %tmp0_v7.i.i.i to i32*
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %66, align 4
  %tmp4_v13.i.i.i = shl i32 %storemerge817.i, 2
  %tmp2_v14.i.i.i = add i32 %77, %tmp4_v13.i.i.i
  %78 = inttoptr i32 %tmp2_v14.i.i.i to i32*
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %70, align 4
  %tmp0_v17.i.i.i = add i32 %79, 1
  store i32 %tmp0_v17.i.i.i, i32* %70, align 4
  %80 = load i32, i32* %60, align 4
  %81 = icmp slt i32 %tmp0_v17.i.i.i, %80
  br i1 %81, label %BB_80494D7.i.i, label %BB_8049505.i.i

BB_8049581.i.i:                                   ; preds = %BB_804951B.i.BB_8049562.i_crit_edge.i, %BB_8049541.i.i, %BB_804952B.i.i
  %.pre-phi34.sink.i = phi i32* [ %110, %BB_8049541.i.i ], [ %.pre30.i, %BB_804951B.i.BB_8049562.i_crit_edge.i ], [ %104, %BB_804952B.i.i ]
  %.sink37.i = phi i32* [ %88, %BB_8049541.i.i ], [ %89, %BB_804951B.i.BB_8049562.i_crit_edge.i ], [ %89, %BB_804952B.i.i ]
  %r_edx.0.i = phi i32 [ %111, %BB_8049541.i.i ], [ %.pre27.i, %BB_804951B.i.BB_8049562.i_crit_edge.i ], [ %107, %BB_804952B.i.i ]
  %tmp4_v.i192.i.i = shl i32 %storemerge921.i, 2
  %82 = load i32, i32* %51, align 4
  %tmp2_v3.i195.i.i = add i32 %82, %tmp4_v.i192.i.i
  %83 = load i32, i32* %.pre-phi34.sink.i, align 4
  %84 = inttoptr i32 %tmp2_v3.i195.i.i to i32*
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %.sink37.i, align 4
  %tmp0_v13.i205.i.i = add i32 %85, 1
  store i32 %tmp0_v13.i205.i.i, i32* %.sink37.i, align 4
  %86 = load i32, i32* %91, align 4
  %tmp0_v1.i8.i.i = add i32 %86, 1
  store i32 %tmp0_v1.i8.i.i, i32* %91, align 4
  %87 = load i32, i32* %36, align 4
  %.not.i180.i.i = icmp sgt i32 %tmp0_v1.i8.i.i, %87
  br i1 %.not.i180.i.i, label %Func_merge_sorted_arrays.exit, label %BB_804951B.i.i

BB_8049505.i.i:                                   ; preds = %BB_80494D7.i.i, %BB_80494CE.i.i
  %r_ecx.3.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_80494CE.i.i ], [ %76, %BB_80494D7.i.i ]
  %r_edx.3.lcssa.i = phi i32 [ %r_edx.1.lcssa.i, %BB_80494CE.i.i ], [ %storemerge817.i, %BB_80494D7.i.i ]
  %tmp2_v.i30.i.i = add i32 %31, -48
  %88 = inttoptr i32 %tmp2_v.i30.i.i to i32*
  store i32 0, i32* %88, align 4
  %tmp2_v1.i31.i.i = add i32 %31, -52
  %89 = inttoptr i32 %tmp2_v1.i31.i.i to i32*
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %42, align 4
  %tmp2_v3.i.i.i = add i32 %31, -56
  %91 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %36, align 4
  %.not.i180.i20.i = icmp sgt i32 %90, %92
  br i1 %.not.i180.i20.i, label %Func_merge_sorted_arrays.exit, label %BB_804951B.i.i

BB_80494A3.i.i:                                   ; preds = %BB_80494A3.i.i, %BB_8049307.i
  %storemerge15.i = phi i32 [ %tmp0_v16.i49.i.i, %BB_80494A3.i.i ], [ 0, %BB_8049307.i ]
  %93 = load i32, i32* %42, align 4
  %tmp0_v3.i39.i.i = add i32 %93, %storemerge15.i
  %tmp4_v.i40.i.i = shl i32 %tmp0_v3.i39.i.i, 2
  %94 = load i32, i32* %51, align 4
  %tmp0_v6.i43.i.i = add i32 %tmp4_v.i40.i.i, %94
  %95 = inttoptr i32 %tmp0_v6.i43.i.i to i32*
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %63, align 4
  %tmp4_v12.i.i.i = shl i32 %storemerge15.i, 2
  %tmp2_v13.i.i.i = add i32 %97, %tmp4_v12.i.i.i
  %98 = inttoptr i32 %tmp2_v13.i.i.i to i32*
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %67, align 4
  %tmp0_v16.i49.i.i = add i32 %99, 1
  store i32 %tmp0_v16.i49.i.i, i32* %67, align 4
  %100 = load i32, i32* %57, align 4
  %101 = icmp slt i32 %tmp0_v16.i49.i.i, %100
  br i1 %101, label %BB_80494A3.i.i, label %BB_80494CE.i.i

BB_804952B.i.i:                                   ; preds = %BB_8049523.i.i
  %102 = load i32, i32* %110, align 4
  %103 = load i32, i32* %66, align 4
  %tmp4_v9.i.i.i = shl i32 %107, 2
  %tmp2_v10.i71.i.i = add i32 %103, %tmp4_v9.i.i.i
  %104 = inttoptr i32 %tmp2_v10.i71.i.i to i32*
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %BB_8049581.i.i, label %BB_8049541.i.i

BB_8049523.i.i:                                   ; preds = %BB_804951B.i.i
  %107 = load i32, i32* %89, align 4
  %108 = load i32, i32* %60, align 4
  %.not.i172.i.i = icmp slt i32 %107, %108
  %109 = load i32, i32* %63, align 4
  %tmp4_v.i64.i.i = shl i32 %111, 2
  %tmp2_v3.i65.i.i = add i32 %109, %tmp4_v.i64.i.i
  %110 = inttoptr i32 %tmp2_v3.i65.i.i to i32*
  br i1 %.not.i172.i.i, label %BB_804952B.i.i, label %BB_8049541.i.i

BB_8049541.i.i:                                   ; preds = %BB_8049523.i.i, %BB_804952B.i.i
  br label %BB_8049581.i.i

BB_804951B.i.i:                                   ; preds = %BB_8049505.i.i, %BB_8049581.i.i
  %storemerge921.i = phi i32 [ %tmp0_v1.i8.i.i, %BB_8049581.i.i ], [ %90, %BB_8049505.i.i ]
  %111 = load i32, i32* %88, align 4
  %112 = load i32, i32* %57, align 4
  %.not.i212.i.i = icmp slt i32 %111, %112
  br i1 %.not.i212.i.i, label %BB_8049523.i.i, label %BB_804951B.i.BB_8049562.i_crit_edge.i

BB_804951B.i.BB_8049562.i_crit_edge.i:            ; preds = %BB_804951B.i.i
  %.pre26.i = load i32, i32* %66, align 4
  %.pre27.i = load i32, i32* %89, align 4
  %.pre28.i = shl i32 %.pre27.i, 2
  %.pre29.i = add i32 %.pre28.i, %.pre26.i
  %.pre30.i = inttoptr i32 %.pre29.i to i32*
  br label %BB_8049581.i.i

Func_merge_sorted_arrays.exit:                    ; preds = %BB_8049505.i.i, %BB_8049581.i.i
  %r_ecx.2.lcssa.i = phi i32 [ %r_ecx.3.lcssa.i, %BB_8049505.i.i ], [ %tmp2_v3.i195.i.i, %BB_8049581.i.i ]
  %r_edx.2.lcssa.i = phi i32 [ %r_edx.3.lcssa.i, %BB_8049505.i.i ], [ %r_edx.0.i, %BB_8049581.i.i ]
  %113 = load i32, i32* %48, align 4
  %114 = load i32, i32* %47, align 4
  %.pre = inttoptr i32 %114 to i32*
  br label %.exit

.exit:                                            ; preds = %Func_merge_sorted_arrays.exit, %Func_80492FA.exit.i
  %.pre-phi = phi i32* [ %0, %Func_80492FA.exit.i ], [ %.pre, %Func_merge_sorted_arrays.exit ]
  %r_ebp.0 = phi i32 [ %tmp2_v.i14.i, %Func_80492FA.exit.i ], [ %114, %Func_merge_sorted_arrays.exit ]
  %r_ebx.0 = phi i32 [ %arg_ebx, %Func_80492FA.exit.i ], [ %113, %Func_merge_sorted_arrays.exit ]
  %r_ecx.0 = phi i32 [ %arg_ecx, %Func_80492FA.exit.i ], [ %r_ecx.2.lcssa.i, %Func_merge_sorted_arrays.exit ]
  %r_edx.0 = phi i32 [ %arg_edx, %Func_80492FA.exit.i ], [ %r_edx.2.lcssa.i, %Func_merge_sorted_arrays.exit ]
  %115 = load i32, i32* %.pre-phi, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %r_edx.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %115, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %r_ebx.0, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %r_ecx.0, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
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
!28 = !{i32 0, i32 1, i32 2, i32 3, i32 4}
!29 = !{!"clang version 14.0.0"}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{i32 1, !"NumRegisterParameters", i32 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{i32 0, i32 0, i32 0}
!40 = !{!"clang version 14.0.0"}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 7, !"PIC Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{i32 1, !"NumRegisterParameters", i32 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"double", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !48, i64 0}
!52 = !{i32 0, i32 0, i32 0, i32 0}
!53 = !{!"printf"}
!54 = !{!"clang version 14.0.0"}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{i32 7, !"PIC Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{i32 1, !"NumRegisterParameters", i32 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !62, i64 0}
!66 = !{i32 0, i32 0, i32 0, i32 0}
!67 = !{!"printf"}
!68 = !{!"clang version 14.0.0"}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 7, !"PIC Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{i32 1, !"NumRegisterParameters", i32 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"double", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C++ TBAA"}
!78 = !{!79, !79, i64 0}
!79 = !{!"int", !76, i64 0}
!80 = !{i32 0, i32 0, i32 0, i32 0}
!81 = !{!"printf"}
!82 = !{!"clang version 14.0.0"}
!83 = !{i32 1, !"wchar_size", i32 4}
!84 = !{i32 7, !"PIC Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{i32 1, !"NumRegisterParameters", i32 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"double", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C++ TBAA"}
!92 = !{!93, !93, i64 0}
!93 = !{!"int", !90, i64 0}
!94 = !{i32 0, i32 0, i32 0}
!95 = !{!"printf"}
!96 = !{!"clang version 14.0.0"}
!97 = !{i32 1, !"wchar_size", i32 4}
!98 = !{i32 7, !"PIC Level", i32 2}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{i32 1, !"NumRegisterParameters", i32 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"double", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C++ TBAA"}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !104, i64 0}
!108 = !{i32 0, i32 0, i32 0, i32 0}
!109 = !{!"printf"}
!110 = !{!"clang version 14.0.0"}
!111 = !{i32 1, !"wchar_size", i32 4}
!112 = !{i32 7, !"PIC Level", i32 2}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{i32 1, !"NumRegisterParameters", i32 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"double", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C++ TBAA"}
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !118, i64 0}
!122 = !{i32 0, i32 0, i32 0, i32 0}
!123 = !{!"printf"}
!124 = !{i32 0, i32 1, i32 2, i32 3}
!125 = !{!"clang version 14.0.0"}
!126 = !{i32 1, !"wchar_size", i32 4}
!127 = !{i32 7, !"PIC Level", i32 2}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{i32 1, !"NumRegisterParameters", i32 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"double", !133, i64 0}
!133 = !{!"omnipotent char", !134, i64 0}
!134 = !{!"Simple C++ TBAA"}
!135 = !{!136, !136, i64 0}
!136 = !{!"int", !133, i64 0}
!137 = !{i32 0, i32 0, i32 0}
!138 = !{!"printf"}
!139 = !{!"clang version 14.0.0"}
!140 = !{i32 1, !"wchar_size", i32 4}
!141 = !{i32 7, !"PIC Level", i32 2}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{i32 1, !"NumRegisterParameters", i32 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"int", !147, i64 0}
!147 = !{!"omnipotent char", !148, i64 0}
!148 = !{!"Simple C++ TBAA"}
!149 = !{i32 0, i32 0}
!150 = !{!"clang version 14.0.0"}
!151 = !{i32 1, !"wchar_size", i32 4}
!152 = !{i32 7, !"PIC Level", i32 2}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{i32 1, !"NumRegisterParameters", i32 0}
!156 = !{!157}
!157 = distinct !{!157, !158, !"float64ToCommonNaN: argument 0"}
!158 = distinct !{!158, !"float64ToCommonNaN"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"floatx80ToCommonNaN: argument 0"}
!161 = distinct !{!161, !"floatx80ToCommonNaN"}
!162 = distinct !{!162, !163}
!163 = !{!"llvm.loop.mustprogress"}
!164 = distinct !{!164, !163}
!165 = distinct !{!165, !163}
!166 = !{!167, !167, i64 0}
!167 = !{!"double", !168, i64 0}
!168 = !{!"omnipotent char", !169, i64 0}
!169 = !{!"Simple C++ TBAA"}
!170 = !{!171, !171, i64 0}
!171 = !{!"int", !168, i64 0}
!172 = !{i32 0, i32 0, i32 0, i32 0}
!173 = !{!"printf"}
