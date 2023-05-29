; Mutation 143
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack879 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem143 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.875 = constant [18 x i8] c"\61\3a\20\25\64\2c\20\76\6f\77\65\6c\3a\20\25\64\0a\00"
@str.bis.876 = constant [24 x i8] c"\42\65\6c\6f\77\20\73\77\69\74\63\68\20\73\74\61\74\65\6d\65\6e\74\21\00"
@str.bis.877 = constant [4 x i8] c"\69\66\21\00"
@str.bis.878 = constant [8 x i8] c"\43\61\73\65\20\31\21\00"
@stack16 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.14 = constant [4 x i8] c"\25\64\0a\00"
@str.bis.15 = constant [14 x i8] c"\25\64\20\4c\45\41\50\20\59\45\41\52\0a\00"
@stack18 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem140 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 
@stack554 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.547 = constant [11 x i8] c"\56\61\6c\75\65\3a\20\25\64\0a\00"
@str.bis.548 = constant [14 x i8] c"\4f\53\20\69\73\20\64\65\66\69\6e\65\64\00"
@str.bis.549 = constant [4 x i8] c"\25\64\0a\00"
@str.bis.550 = constant [18 x i8] c"\56\45\52\53\49\4f\4e\5f\43\4f\44\45\20\3d\3d\20\61\00"
@str.bis.551 = constant [18 x i8] c"\6e\6f\6e\2d\7a\65\72\6f\20\69\73\20\74\72\75\65\21\00"
@str.bis.552 = constant [11 x i8] c"\30\20\69\73\20\66\61\6c\73\65\00"
@str.bis.553 = constant [11 x i8] c"\50\6c\61\74\66\6f\72\6d\20\30\00"
@stack793 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem137 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.791 = constant [23 x i8] c"\66\61\69\6c\65\64\20\74\6f\20\66\69\6e\64\20\73\74\72\69\6e\67\21\00"
@str.bis.792 = constant [9 x i8] c"\74\68\65\3a\20\25\73\0a\00"
@stack619 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem135 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.613 = constant [14 x i8] c"\73\32\20\61\66\74\65\72\3a\20\25\73\0a\00"
@str.bis.614 = constant [4 x i8] c"\05\15\2d\00"
@str.bis.615 = constant [15 x i8] c"\73\32\20\62\65\66\6f\72\65\3a\20\25\73\0a\00"
@str.bis.616 = constant [14 x i8] c"\73\31\20\61\66\74\65\72\3a\20\25\73\0a\00"
@str.bis.617 = constant [4 x i8] c"\05\15\2d\00"
@str.bis.618 = constant [15 x i8] c"\73\31\20\62\65\66\6f\72\65\3a\20\25\73\0a\00"
@stack717 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.715 = constant [14 x i8] c"\78\3a\20\25\64\2c\20\79\3a\20\25\64\0a\00"
@str.bis.716 = constant [4 x i8] c"\05\4f\2e\00"
@stack611 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem132 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.610 = constant [4 x i8] c"\05\3e\2d\00"

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
declare i8* @base64_decode(i8*)
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
@cipher.1 = constant [5 x i8] c"\4d\51\41\3d\00"
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
@cipher.2 = constant [5 x i8] c"\4d\77\41\3d\00"
;-------------------------------
; Replace: store i32 134517414, i32* %21, align 4
@cipher.3 = constant [9 x i8] c"\42\56\6f\74\41\41\3d\3d\00"
;-------------------------------
; Replace: store i32 134520840, i32* %22, align 8
@cipher.4 = constant [21 x i8] c"\53\53\42\68\62\53\42\6c\64\6d\6c\73\49\53\45\68\43\67\41\3d\00"
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
@cipher.5 = constant [13 x i8] c"\51\6e\6c\6c\49\45\4a\35\5a\51\6f\41\00"
;-------------------------------
; Replace: store i32 134520863, i32* %25, align 16
@cipher.6 = constant [5 x i8] c"\4a\58\4d\41\00"
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
@cipher.7 = constant [5 x i8] c"\64\79\73\41\00"
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
@cipher.8 = constant [21 x i8] c"\64\47\56\34\64\46\39\6d\61\57\78\6c\4d\79\35\30\65\48\51\41\00"
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
@cipher.9 = constant [5 x i8] c"\4d\67\41\3d\00"
@.str51 = private unnamed_addr constant [1 x i8] c"\0a"
@.str108 = private unnamed_addr constant [8 x i8] c"\50\72\65\6d\69\65\72\00"
@.str110 = private unnamed_addr constant [11 x i8] c"\64\65\72\67\62\6a\7a\65\6b\61\00"
@.str112 = private unnamed_addr constant [11 x i8] c"\6f\6b\69\6f\6a\76\69\2c\65\72\00"
@.str114 = private unnamed_addr constant [9 x i8] c"\7a\65\66\69\c4\b5\68\74\00"
@.str116 = private unnamed_addr constant [9 x i8] c"\7a\65\66\69\c4\b5\68\74\00"
@.str118 = private unnamed_addr constant [9 x i8] c"\7a\65\66\69\c4\b5\68\74\00"
@.str120 = private unnamed_addr constant [11 x i8] c"\64\65\72\67\62\6a\7a\65\6b\61\00"
@.str122 = private unnamed_addr constant [11 x i8] c"\6f\6b\69\6f\6a\76\69\2c\65\72\00"
@.str124 = private unnamed_addr constant [11 x i8] c"\6f\6b\69\6f\6a\76\69\2c\65\72\00"
@.str126 = private unnamed_addr constant [10 x i8] c"\74\72\6f\69\73\69\65\6d\65\00"
@.str128 = private unnamed_addr constant [10 x i8] c"\74\72\6f\69\73\69\65\6d\65\00"

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
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

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
declare i32 @htonl(i32) local_unnamed_addr nofree noinline nosync nounwind readnone
declare void @perror(i32) local_unnamed_addr noinline
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 
declare i32 @access(i32, i32) local_unnamed_addr noinline
declare i32 @toupper(i32) local_unnamed_addr  noinline 
declare i32 @atoi(i32) local_unnamed_addr  noinline 
declare i32 @tolower(i32) local_unnamed_addr  noinline 
declare i32 @getenv(i32) local_unnamed_addr noinline
declare i32 @ptrace( i32, i32, i32, i32) naked noinline
declare dso_local i32 @puts(i8*) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
declare i32 @usleep(i32) local_unnamed_addr  noinline 
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect tracing running
  %result.130 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.130 = icmp eq i32 %result.130, -1
  br i1 %must.escape.130, label %.escape.130, label %.proceed.130
.proceed.130:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.2.107 = alloca [11 x i8]
  store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.107
  %debug.ptr.2.107 = ptrtoint [11 x i8]* %debug.str.2.107 to i32
  %result.2.107 = tail call i32 @getenv(i32 %debug.ptr.2.107)
  %must.escape.2.107 = icmp ne i32 %result.2.107, 0
  br i1 %must.escape.2.107, label %.escape.107, label %.proceed.2.107
.proceed.2.107:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.1.107 = alloca [4 x i8]
  store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.107
  %debug.ptr.1.107 = ptrtoint [4 x i8]* %debug.str.1.107 to i32
  %result.1.107 = tail call i32 @getenv(i32 %debug.ptr.1.107)
  %must.escape.1.107 = icmp ne i32 %result.1.107, 0
  br i1 %must.escape.1.107, label %.escape.107, label %.proceed.1.107
.proceed.1.107:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.0.107 = alloca [6 x i8]
  store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.107
  %debug.ptr.0.107 = ptrtoint [6 x i8]* %debug.str.0.107 to i32
  %result.0.107 = tail call i32 @getenv(i32 %debug.ptr.0.107)
;-------------------------------
;--------Basic Condition--------
  %.not109.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not109.i.i, label %BB_109, label %next109
next109:
;-------------------------------
  %must.escape.0.107 = icmp ne i32 %result.0.107, 0
  br i1 %must.escape.0.107, label %.escape.107, label %.proceed.0.107
.proceed.0.107:
;----------------------------
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.50 = tail call i32 @detect_vm()
  %must.escape.50 = icmp ne i32 %result.50, 0
  br i1 %must.escape.50, label %.escape.50, label %.proceed.50
.proceed.50:
;----------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @letter_flip19 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack18, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %time10 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time10)
  %rand_init47 = tail call i32 @rand()
;-------------------------------
;--------Basic Condition--------
  %.not113.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not113.i.i, label %BB_113, label %next113
next113:
;-------------------------------
  %rand_fin48 = srem i32 %rand_init47, 3
  %rand_init43 = tail call i32 @rand()
  %rand_fin44 = srem i32 %rand_init43, 3
  %rand_init39 = tail call i32 @rand()
  %rand_fin40 = srem i32 %rand_init39, 3
  %rand_init35 = tail call i32 @rand()
  %rand_fin36 = srem i32 %rand_init35, 3
  %rand_init31 = tail call i32 @rand()
  %rand_fin32 = srem i32 %rand_init31, 3
  %rand_init27 = tail call i32 @rand()
  %rand_fin28 = srem i32 %rand_init27, 3
  %rand_init23 = tail call i32 @rand()
  %rand_fin24 = srem i32 %rand_init23, 3
  %rand_init19 = tail call i32 @rand()
  %rand_fin20 = srem i32 %rand_init19, 3
  %rand_init15 = tail call i32 @rand()
  %rand_fin16 = srem i32 %rand_init15, 3
  %rand_init11 = tail call i32 @rand()
  %rand_fin12 = srem i32 %rand_init11, 3
  %tmp2_v.i4.i = add i32 %arg_esp, 4
  %tmp0_v.i5.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i5.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not121.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not121.i.i, label %BB_121, label %next121
next121:
;-------------------------------
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i7.i = add i32 %tmp0_v.i5.i, -8
  %3 = inttoptr i32 %tmp2_v4.i7.i to i32*
  store i32 0, i32* %3, align 8
;-------------------------------
;----------Random Cond----------
  %.not17.i.i = icmp eq i32 1 , %rand_fin16 
  br i1 %.not17.i.i, label %next17, label %BB_13
next17:
;-------------------------------
  %tmp2_v5.i8.i = add i32 %tmp0_v.i5.i, -12
  %4 = inttoptr i32 %tmp2_v5.i8.i to i32*
  store i32 0, i32* %4, align 4
;-------------------------------
;----------Random Cond----------
  %.not21.i.i = icmp eq i32 2 , %rand_fin20 
  br i1 %.not21.i.i, label %next21, label %BB_13
next21:
;-------------------------------
  %tmp2_v6.i10.i = add i32 %tmp0_v.i5.i, -16
  %5 = inttoptr i32 %tmp2_v6.i10.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i12.i = add i32 %tmp0_v.i5.i, -20
  %6 = inttoptr i32 %tmp2_v7.i12.i to i32*
  store i32 %tmp2_v.i4.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i5.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not111.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not111.i.i, label %BB_111, label %next111
next111:
;-------------------------------
  store i32 134517759, i32* %7, align 4
;-------------------------------
;----------Random Cond----------
  %.not13.i.i = icmp eq i32 0 , %rand_fin12 
  br i1 %.not13.i.i, label %next13, label %BB_13
next13:
;-------------------------------
  %tmp2_v.i17.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i17.i to i32*
  %9 = load i32, i32* %8, align 4
;-------------------------------
;--------Basic Condition--------
  %.not127.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not127.i.i, label %BB_127, label %next127
next127:
;-------------------------------
  %tmp0_v2.i19.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i19.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i23.i = add i32 %tmp0_v.i5.i, -44
  %12 = inttoptr i32 %tmp2_v6.i23.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %cipher.ptr.1 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.1, i32 0, i32 0
  %plain.ptr.1 = tail call i8* @base64_decode(i8* %cipher.ptr.1)
  %spi1 = ptrtoint i8* %plain.ptr.1 to i32
  store i32 %spi1, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i24.i = add i32 %tmp0_v.i5.i, -48
  %13 = inttoptr i32 %tmp2_v7.i24.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i5.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
;-------------------------------
;----------Random Cond----------
;-------------------------------
;--------Basic Condition--------
  %.not123.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not123.i.i, label %BB_123, label %next123
next123:
;-------------------------------
  %.not49.i.i = icmp eq i32 0 , %rand_fin48 
  br i1 %.not49.i.i, label %next49, label %BB_13
next49:
;-------------------------------
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i53.i = icmp eq i32 %15, 0
  br i1 %.not.i53.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %16 = load i32, i32* %8, align 4
  %tmp0_v1.i.i = add i32 %16, 4
  %17 = inttoptr i32 %tmp0_v1.i.i to i32*
  %18 = load i32, i32* %17, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @xor_swap718 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack717, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %cipher.ptr.2 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.2, i32 0, i32 0
  %plain.ptr.2 = tail call i8* @base64_decode(i8* %cipher.ptr.2)
  %spi2 = ptrtoint i8* %plain.ptr.2 to i32
  store i32 %spi2, i32* %12, align 4
;-------------------------------
  store i32 %18, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i6 = load i32, i32* %13, align 16
  %arg2.i.i7 = load i32, i32* %12, align 4
  %19 = tail call i32 @strcmp(i32 %arg.i.i6, i32 %arg2.i.i7)
  %.not.i48.i = icmp eq i32 %19, 0
  br i1 %.not.i48.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i5.i, -40
;-------------------------------
;--------Added Syst Call--------
  %a102 = tail call i32 @time(i32 %rand_init35)
;-------------------------------
  %20 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i7.i, i32* %20, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i5.i, -68
  %21 = inttoptr i32 %tmp2_v2.i.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %21, align 4
  %cipher.ptr.3 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.3, i32 0, i32 0
  %plain.ptr.3 = tail call i8* @base64_decode(i8* %cipher.ptr.3)
  %spi3 = ptrtoint i8* %plain.ptr.3 to i32
  store i32 %spi3, i32* %21, align 4
;-------------------------------
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i5.i, -56
;-------------------------------
;--------Basic Condition--------
  %.not125.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not125.i.i, label %BB_125, label %next125
next125:
;-------------------------------
  %22 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %22, align 8
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @is_leap_year17 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack16, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %cipher.ptr.4 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.4, i32 0, i32 0
  %plain.ptr.4 = tail call i8* @base64_decode(i8* %cipher.ptr.4)
  %spi4 = ptrtoint i8* %plain.ptr.4 to i32
  %es80 = load i32, i32* %12, align 16
  %es81 = load i32, i32* %21, align 16
;-------------------------------
;--------Added Syst Call--------
  %a79 = tail call i32 @strchr( i32 %es80, i32 %es81)
;-------------------------------
  store i32 %spi4, i32* %22, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %cipher.ptr.5 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.5, i32 0, i32 0
  %plain.ptr.5 = tail call i8* @base64_decode(i8* %cipher.ptr.5)
  %spi5 = ptrtoint i8* %plain.ptr.5 to i32
  store i32 %spi5, i32* %14, align 4
;-------------------------------
  %23 = load i32, i32* %22, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i5.i, -76
  %24 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i5.i, -80
  %25 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %25, align 16
  %cipher.ptr.6 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.6, i32 0, i32 0
  %plain.ptr.6 = tail call i8* @base64_decode(i8* %cipher.ptr.6)
  %spi6 = ptrtoint i8* %plain.ptr.6 to i32
  store i32 %spi6, i32* %25, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i5.i, -84
  %26 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %26, align 4
  %27 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i4.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
;-------------------------------
;----------Random Cond----------
  %.not33.i.i = icmp eq i32 0 , %rand_fin32 
  br i1 %.not33.i.i, label %next33, label %BB_13
next33:
;-------------------------------
  store i32 134517841, i32* %7, align 4
  %es74 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a73 = tail call i32 @atoi(i32 %es74)
;-------------------------------
  %tmp2_v.i14.i.i = add i32 %tmp0_v.i5.i, -40
  %28 = inttoptr i32 %tmp2_v.i14.i.i to i32*
  store i32 %tmp2_v4.i7.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i18.i.i = add i32 %tmp0_v.i5.i, -84
  %29 = inttoptr i32 %tmp2_v2.i18.i.i to i32*
  store i32 134517482, i32* %29, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @split_string612 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack611, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %es76 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a75 = tail call i32 @toupper(i32 %es76)
;-------------------------------
  %30 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i5.i, -92
  %32 = inttoptr i32 %tmp2_v5.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
;-------------------------------
;----------Random Cond----------
  %.not45.i.i = icmp eq i32 1 , %rand_fin44 
  br i1 %.not45.i.i, label %next45, label %BB_13
next45:
;-------------------------------
  %es90 = load i32, i32* %12, align 16
  %es91 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a89 = tail call i32 @strstr( i32 %es90, i32 %es91)
;-------------------------------
  %cipher.ptr.7 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.7, i32 0, i32 0
  %plain.ptr.7 = tail call i8* @base64_decode(i8* %cipher.ptr.7)
  %spi7 = ptrtoint i8* %plain.ptr.7 to i32
  store i32 %spi7, i32* %32, align 4
;-------------------------------
  %es78 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a77 = tail call i32 @access( i32 %es78, i32 %1)
;-------------------------------
  %tmp2_v7.i.i.i11 = add i32 %tmp0_v.i5.i, -96
  %33 = inttoptr i32 %tmp2_v7.i.i.i11 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
  %cipher.ptr.8 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.8, i32 0, i32 0
  %plain.ptr.8 = tail call i8* @base64_decode(i8* %cipher.ptr.8)
  %spi8 = ptrtoint i8* %plain.ptr.8 to i32
;-------------------------------
;--------Basic Condition--------
  %.not119.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not119.i.i, label %BB_119, label %next119
next119:
;-------------------------------
  store i32 %spi8, i32* %33, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i5.i, -100
  %34 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i41.i.i = add i32 %tmp0_v.i5.i, -76
;-------------------------------
;--------Basic Condition--------
  %.not115.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not115.i.i, label %BB_115, label %next115
next115:
;-------------------------------
  %36 = inttoptr i32 %tmp2_v.i41.i.i to i32*
;-------------------------------
;----------Random Cond----------
  %.not37.i.i = icmp eq i32 2 , %rand_fin36 
  br i1 %.not37.i.i, label %next37, label %BB_13
next37:
;-------------------------------
  store i32 %35, i32* %36, align 4
  %tmp2_v.i28.i.i = add i32 %tmp0_v.i5.i, -72
  %37 = inttoptr i32 %tmp2_v.i28.i.i to i32*
  store i32 1818304585, i32* %37, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i5.i, -68
  %38 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 1701995892, i32* %38, align 4
  %arg.i.i61 = load i32, i32* %33, align 16  %el62= inttoptr i32 %arg.i.i61 to i8*
;-------------------------------
;--------Added Syst Call--------
  %a60 = tail call i32 @puts(i8* %el62)
;-------------------------------
  %tmp2_v2.i30.i.i = add i32 %tmp0_v.i5.i, -64
  %39 = inttoptr i32 %tmp2_v2.i30.i.i to i32*
  store i32 1752440932, i32* %39, align 16
  %tmp2_v3.i.i.i12 = add i32 %tmp0_v.i5.i, -60
  %40 = inttoptr i32 %tmp2_v3.i.i.i12 to i32*
  store i32 1768300645, i32* %40, align 4
  %tmp2_v4.i31.i.i = add i32 %tmp0_v.i5.i, -56
  %41 = inttoptr i32 %tmp2_v4.i31.i.i to i32*
;-------------------------------
;--------Added Syst Call--------
  %a106 = tail call i32 @htonl(i32 %tmp2_v7.i.i.i11)
;-------------------------------
  %es95 = load i32, i32* %33, align 16
;-------------------------------
;--------Added Syst Call--------
  tail call void @perror(i32 %es95)
;-------------------------------
  store i32 2188652, i32* %41, align 8
  %es71 = load i32, i32* %32, align 16
;-------------------------------
;--------Added Syst Call--------
  %a70 = tail call i32 @tolower(i32 %es71)
;-------------------------------
;-------------------------------
;--------Basic Condition--------
  %.not129.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not129.i.i, label %BB_129, label %next129
next129:
;-------------------------------
  %42 = load i32, i32* %36, align 4
  store i32 %42, i32* %29, align 4
  %tmp2_v7.i36.i.i = add i32 %tmp0_v.i5.i, -88
  %43 = inttoptr i32 %tmp2_v7.i36.i.i to i32*
  store i32 20, i32* %43, align 8
  store i32 1, i32* %32, align 4
  store i32 %tmp2_v.i28.i.i, i32* %33, align 16
;-------------------------------
;----------Random Cond----------
  %.not25.i.i = icmp eq i32 1 , %rand_fin24 
  br i1 %.not25.i.i, label %next25, label %BB_13
next25:
;-------------------------------
  store i32 134517622, i32* %34, align 4
;-------------------------------
;----------Random Cond----------
  %.not29.i.i = icmp eq i32 2 , %rand_fin28 
  %es86 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a85 = tail call i32 @strlen(i32 %es86)
;-------------------------------
  br i1 %.not29.i.i, label %next29, label %BB_13
next29:
;-------------------------------
  %arg.i.i4.i = load i32, i32* %33, align 16
  %arg2.i.i5.i = load i32, i32* %32, align 4
  %arg4.i.i.i = load i32, i32* %43, align 8
  %arg6.i.i.i = load i32, i32* %29, align 4
  %44 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i, i32 %arg6.i.i.i)
  %45 = load i32, i32* %36, align 4
  store i32 %45, i32* %33, align 16
;-------------------------------
;----------Random Cond----------
  %.not41.i.i = icmp eq i32 1 , %rand_fin40 
  %es64 = load i32, i32* %14, align 16
  %es65 = load i32, i32* %33, align 16
;-------------------------------
;--------Added Syst Call--------
  %a63 = tail call i32 @strcmp( i32 %es64, i32 %es65)
;-------------------------------
  br i1 %.not41.i.i, label %next41, label %BB_13
next41:
;-------------------------------
  store i32 134517636, i32* %34, align 4
  %arg.i.i6.i = load i32, i32* %33, align 16
  %46 = tail call i32 @fclose(i32 %arg.i.i6.i)
  %es88 = load i32, i32* %32, align 16
;-------------------------------
;--------Added Syst Call--------
  %a87 = tail call i32 @fopen( i32 %es88, i32 %tmp2_v7.i.i.i11)
;-------------------------------
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %47 = load i32, i32* %8, align 4
  %tmp0_v1.i30.i = add i32 %47, 4
  %48 = inttoptr i32 %tmp0_v1.i30.i to i32*
  %49 = load i32, i32* %48, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %cipher.ptr.9 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.9, i32 0, i32 0
  %plain.ptr.9 = tail call i8* @base64_decode(i8* %cipher.ptr.9)
  %spi9 = ptrtoint i8* %plain.ptr.9 to i32
  store i32 %spi9, i32* %12, align 4
;-------------------------------
  store i32 %49, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @remove_char620 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack619, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg.i.i13 = load i32, i32* %13, align 16
  %arg2.i.i14 = load i32, i32* %12, align 4
  %50 = tail call i32 @strcmp(i32 %arg.i.i13, i32 %arg2.i.i14)
  %.not.i.i = icmp eq i32 %50, 0
  br i1 %.not.i.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i5.i, -40
  %51 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %tmp2_v4.i7.i, i32* %51, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i5.i, -68
  %52 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  store i32 134517678, i32* %52, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i12.i.i = add i32 %tmp0_v.i5.i, -72
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @strstr794 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack793, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %53 = inttoptr i32 %tmp2_v2.i12.i.i to i32*
  store i32 0, i32* %53, align 8
  %tmp2_v3.i.i.i17 = add i32 %tmp0_v.i5.i, -76
  %54 = inttoptr i32 %tmp2_v3.i.i.i17 to i32*
  store i32 1, i32* %54, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i5.i, -80
  %55 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %55, align 16
  %tmp2_v5.i13.i.i = add i32 %tmp0_v.i5.i, -84
  %56 = inttoptr i32 %tmp2_v5.i13.i.i to i32*
  store i32 134517705, i32* %56, align 4
  %arg.i.i.i18 = load i32, i32* %55, align 16
  %arg2.i.i.i19 = load i32, i32* %54, align 4
;-------------------------------
;--------Basic Condition--------
  %.not117.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not117.i.i, label %BB_117, label %next117
next117:
;-------------------------------
  %arg4.i.i.i20 = load i32, i32* %53, align 8
  %57 = tail call i32 @socket(i32 %arg.i.i.i18, i32 %arg2.i.i.i19, i32 %arg4.i.i.i20)
  store i32 %57, i32* %14, align 4
  store i32 %57, i32* %55, align 16
  store i32 134517722, i32* %56, align 4
  %arg.i.i3.i = load i32, i32* %55, align 16
  %58 = tail call i32 @close(i32 %arg.i.i3.i)
;-------------------------------
;--------Added Syst Call--------
  %a55 = tail call i32 @usleep(i32 %57)
;-------------------------------
  br label %.exit

.exit:                                            ; preds = %BB_8049472.i, %BB_804944C.i, %BB_8049426.i, %BB_8049453.i
  ret void
BB_13:
  ret void
.escape.50:
  ret void
.escape.107:
  ret void
BB_109:
  %cast109= getelementptr [8 x i8], [8 x i8]* @.str108, i64 0, i64 0
  call i32 @puts(i8* %cast109)
  br label %next109
BB_111:
  %cast111= getelementptr [11 x i8], [11 x i8]* @.str110, i64 0, i64 0
  call i32 @puts(i8* %cast111)
  br label %next111
BB_113:
  %cast113= getelementptr [11 x i8], [11 x i8]* @.str112, i64 0, i64 0
  call i32 @puts(i8* %cast113)
  br label %next113
BB_115:
  %cast115= getelementptr [9 x i8], [9 x i8]* @.str114, i64 0, i64 0
  call i32 @puts(i8* %cast115)
  br label %next115
BB_117:
  %cast117= getelementptr [9 x i8], [9 x i8]* @.str116, i64 0, i64 0
  call i32 @puts(i8* %cast117)
  br label %next117
BB_119:
  %cast119= getelementptr [9 x i8], [9 x i8]* @.str118, i64 0, i64 0
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @switch880 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack879, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  call i32 @puts(i8* %cast119)
  br label %next119
BB_121:
  %cast121= getelementptr [11 x i8], [11 x i8]* @.str120, i64 0, i64 0
  call i32 @puts(i8* %cast121)
  br label %next121
BB_123:
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @if_elif_else555 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack554, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %cast123= getelementptr [11 x i8], [11 x i8]* @.str122, i64 0, i64 0
  call i32 @puts(i8* %cast123)
  br label %next123
BB_125:
  %cast125= getelementptr [11 x i8], [11 x i8]* @.str124, i64 0, i64 0
  call i32 @puts(i8* %cast125)
  br label %next125
BB_127:
  %cast127= getelementptr [10 x i8], [10 x i8]* @.str126, i64 0, i64 0
  call i32 @puts(i8* %cast127)
  br label %next127
BB_129:
  %cast129= getelementptr [10 x i8], [10 x i8]* @.str128, i64 0, i64 0
  call i32 @puts(i8* %cast129)
  br label %next129
.escape.130:
  ret void
}

define internal fastcc void @switch880(i32 %arg_esp) unnamed_addr  norecurse  !retregs !122 {
label_1.i27.i:
  %tmp2_v.i43.i = add i32 %arg_esp, 4
  %tmp0_v.i44.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i45.i = add i32 %tmp0_v.i44.i, -4
  %2 = inttoptr i32 %tmp2_v3.i45.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i46.i = add i32 %tmp0_v.i44.i, -8
  %3 = inttoptr i32 %tmp2_v4.i46.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i48.i = add i32 %tmp0_v.i44.i, -12
  %4 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i50.i = add i32 %tmp0_v.i44.i, -16
  %5 = inttoptr i32 %tmp2_v6.i50.i to i32*
  store i32 %tmp2_v.i43.i, i32* %5, align 16
  %tmp2_v8.i51.i = add i32 %tmp0_v.i44.i, -68
  %6 = inttoptr i32 %tmp2_v8.i51.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i23.i = add i32 %tmp0_v.i44.i, -20
  %9 = inttoptr i32 %tmp2_v2.i23.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i24.i = add i32 %tmp0_v.i44.i, -52
  %10 = inttoptr i32 %tmp2_v3.i24.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v1.i72.i = add i32 %tmp0_v.i44.i, -80
  %11 = inttoptr i32 %tmp2_v1.i72.i to i32*
  %spi.bis.878 = ptrtoint[8 x i8]* @str.bis.878 to i32
  store i32 %spi.bis.878, i32* %11, align 16
  %tmp2_v2.i73.i = add i32 %tmp0_v.i44.i, -84
  %12 = inttoptr i32 %tmp2_v2.i73.i to i32*
  store i32 134517350, i32* %12, align 4
  %arg.i.i = load i32, i32* %11, align 16
  %13 = inttoptr i32 %arg.i.i to i8*
  %14 = tail call i32 @puts(i8* nonnull dereferenceable(1) %13)
  %spi.bis.877 = ptrtoint[4 x i8]* @str.bis.877 to i32
  store i32 %spi.bis.877, i32* %11, align 16
  store i32 134517368, i32* %12, align 4
  %arg.i.i1 = load i32, i32* %11, align 16
  %15 = inttoptr i32 %arg.i.i1 to i8*
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) %15)
  %spi.bis.876 = ptrtoint[24 x i8]* @str.bis.876 to i32
  store i32 %spi.bis.876, i32* %11, align 16
  store i32 134517426, i32* %12, align 4
  %arg.i.i2 = load i32, i32* %11, align 16
  %17 = inttoptr i32 %arg.i.i2 to i8*
  %18 = tail call i32 @puts(i8* nonnull dereferenceable(1) %17)
  %tmp2_v.i55.i = add i32 %tmp0_v.i44.i, -43
  %19 = inttoptr i32 %tmp2_v.i55.i to i32*
  store i32 1096966497, i32* %19, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i44.i, -39
  %20 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1734763876, i32* %20, align 4
  %tmp2_v2.i56.i = add i32 %tmp0_v.i44.i, -35
  %21 = inttoptr i32 %tmp2_v2.i56.i to i32*
  store i32 1265256808, i32* %21, align 4
  %tmp2_v3.i57.i = add i32 %tmp0_v.i44.i, -31
  %22 = inttoptr i32 %tmp2_v3.i57.i to i32*
  store i32 1867402604, i32* %22, align 4
  %tmp2_v4.i58.i = add i32 %tmp0_v.i44.i, -27
  %23 = inttoptr i32 %tmp2_v4.i58.i to i32*
  store i32 1934782800, i32* %23, align 4
  %tmp2_v5.i59.i = add i32 %tmp0_v.i44.i, -23
  %24 = inttoptr i32 %tmp2_v5.i59.i to i16*
  store i16 21844, i16* %24, align 2
  %tmp2_v6.i60.i = add i32 %tmp0_v.i44.i, -21
  %25 = inttoptr i32 %tmp2_v6.i60.i to i8*
  store i8 0, i8* %25, align 1
  store i32 %tmp2_v.i55.i, i32* %11, align 16
  store i32 134517486, i32* %12, align 4
  %arg.i.i3 = load i32, i32* %11, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i3)
  %mrv.i4 = insertvalue { i32, i32 } undef, i32 %tmp2_v1.i72.i, 0
  %tmp2_v.i133.i = add i32 %tmp0_v.i44.i, -48
  %27 = inttoptr i32 %tmp2_v.i133.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v1.i135.i = add i32 %tmp0_v.i44.i, -64
  %28 = inttoptr i32 %tmp2_v1.i135.i to i32*
  store i32 0, i32* %28, align 16
  %tmp2_v2.i136.i = add i32 %tmp0_v.i44.i, -60
  %29 = inttoptr i32 %tmp2_v2.i136.i to i32*
  store i32 0, i32* %29, align 4
  %tmp2_v3.i137.i = add i32 %tmp0_v.i44.i, -56
  %30 = inttoptr i32 %tmp2_v3.i137.i to i32*
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %27, align 16
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_804930B.i, label %BB_8049350.i

BB_8049350.i:                                     ; preds = %BB_8049344.i, %label_1.i27.i
  %.pn.pn.lcssa = phi { i32, i32 } [ %mrv.i4, %label_1.i27.i ], [ %.pn13, %BB_8049344.i ]
  %r_edx.0.lcssa = phi i32 [ 0, %label_1.i27.i ], [ %tmp2_v.i55.i, %BB_8049344.i ]
  %r_esp.0.in.le = extractvalue { i32, i32 } %.pn.pn.lcssa, 0
  %33 = load i32, i32* %29, align 4
  %tmp2_v2.i.i = add i32 %r_esp.0.in.le, 8
  %34 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %28, align 16
  %tmp2_v5.i.i = add i32 %r_esp.0.in.le, 4
  %36 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = inttoptr i32 %r_esp.0.in.le to i32*
  %spi.bis.875 = ptrtoint[18 x i8]* @str.bis.875 to i32
  store i32 %spi.bis.875, i32* %37, align 4
  %tmp2_v8.i.i = add i32 %r_esp.0.in.le, -4
  %38 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517605, i32* %38, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i43.i, i32 inreg noundef %r_edx.0.lcssa, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !123
  ret void

BB_8049340.i:                                     ; preds = %BB_804930B.i, %BB_804933C.i
  %40 = load i32, i32* %29, align 4
  %tmp0_v1.i4.i = add i32 %40, 1
  store i32 %tmp0_v1.i4.i, i32* %29, align 4
  br label %BB_8049344.i

BB_8049344.i:                                     ; preds = %BB_804930B.i, %BB_8049340.i
  %41 = load i32, i32* %30, align 8
  %tmp0_v1.i12.i = add i32 %41, 1
  store i32 %tmp0_v1.i12.i, i32* %30, align 8
  %r_esp.0.in = extractvalue { i32, i32 } %.pn13.pn, 0
  %42 = load i32, i32* %27, align 16
  %43 = icmp slt i32 %tmp0_v1.i12.i, %42
  br i1 %43, label %BB_804930B.i, label %BB_8049350.i

BB_804933C.i:                                     ; preds = %BB_804930B.i
  %44 = load i32, i32* %28, align 16
  %tmp0_v1.i107.i = add i32 %44, 1
  store i32 %tmp0_v1.i107.i, i32* %28, align 16
  br label %BB_8049340.i

BB_804930B.i:                                     ; preds = %BB_8049344.i, %label_1.i27.i
  %r_esp.0.in14 = phi i32 [ %r_esp.0.in, %BB_8049344.i ], [ %tmp2_v1.i72.i, %label_1.i27.i ]
  %.pn13.pn = phi { i32, i32 } [ %.pn13, %BB_8049344.i ], [ %mrv.i4, %label_1.i27.i ]
  %.pn16 = phi i32 [ %49, %BB_8049344.i ], [ %26, %label_1.i27.i ]
  %storemerge12 = phi i32 [ %tmp0_v1.i12.i, %BB_8049344.i ], [ 0, %label_1.i27.i ]
  %.pn13 = insertvalue { i32, i32 } %.pn13.pn, i32 %.pn16, 1
  %tmp0_v2.i123.i = add i32 %storemerge12, %tmp2_v.i55.i
  %45 = inttoptr i32 %tmp0_v2.i123.i to i8*
  %46 = load i8, i8* %45, align 1
  %tmp0_v4.i125.i = sext i8 %46 to i32
  %47 = inttoptr i32 %r_esp.0.in14 to i32*
  store i32 %tmp0_v4.i125.i, i32* %47, align 4
  %tmp2_v7.i129.i = add i32 %r_esp.0.in14, -4
  %48 = inttoptr i32 %tmp2_v7.i129.i to i32*
  store i32 134517538, i32* %48, align 4
  %arg.i.i6 = load i32, i32* %47, align 4
  %49 = tail call i32 @toupper(i32 %arg.i.i6)
  %tmp0_v1.i65.i = shl i32 %49, 2
  %tmp2_v1.i78.i = add i32 %tmp0_v1.i65.i, 134520656
  %50 = inttoptr i32 %tmp2_v1.i78.i to i32*
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %error.i [
    i32 -11460, label %BB_804933C.i
    i32 -11456, label %BB_8049340.i
    i32 -11452, label %BB_8049344.i
  ]

error.i:                                          ; preds = %BB_804930B.i
  unreachable
}
define internal fastcc void @is_leap_year17(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !108 {
BB_80491C0.i.lr.ph:
  %tmp2_v.i24.i = add i32 %arg_esp, 4
  %tmp0_v.i25.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i27.i = add i32 %tmp0_v.i25.i, -4
  %2 = inttoptr i32 %tmp2_v3.i27.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i28.i = add i32 %tmp0_v.i25.i, -8
  %3 = inttoptr i32 %tmp2_v4.i28.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i30.i = add i32 %tmp0_v.i25.i, -12
  %4 = inttoptr i32 %tmp2_v5.i30.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i25.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i24.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i25.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i45.i = add i32 %tmp0_v.i25.i, -20
  %7 = inttoptr i32 %tmp2_v.i45.i to i32*
  store i32 1900, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i25.i, -48
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  %tmp2_v3.i.i = add i32 %tmp0_v.i25.i, -52
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  %tmp2_v.i.i.i = add i32 %tmp0_v.i25.i, -56
  %10 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i25.i, -60
  %11 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %tmp2_v2.i13.i = add i32 %tmp0_v.i25.i, -44
  %12 = inttoptr i32 %tmp2_v2.i13.i to i32*
  br label %BB_80491C0.i

BB_80491C0.i:                                     ; preds = %BB_80491FE.i, %BB_80491C0.i.lr.ph
  %13 = phi i32 [ 1900, %BB_80491C0.i.lr.ph ], [ %tmp0_v1.i49.i, %BB_80491FE.i ]
  %r_ecx.013 = phi i32 [ %tmp2_v.i24.i, %BB_80491C0.i.lr.ph ], [ %r_ecx.0.i19, %BB_80491FE.i ]
  %r_edx.112 = phi i32 [ 0, %BB_80491C0.i.lr.ph ], [ %.sink.off32, %BB_80491FE.i ]
  %r_ebp.011 = phi i32 [ %tmp2_v4.i28.i, %BB_80491C0.i.lr.ph ], [ %29, %BB_80491FE.i ]
  store i32 %13, i32* %8, align 16
  store i32 134517195, i32* %9, align 4
  store i32 %r_ebp.011, i32* %10, align 8
  store i32 134517286, i32* %11, align 4
  %14 = load i32, i32* %8, align 16
  %tmp0_v2.i.i.i = and i32 %14, 3
  %15 = icmp eq i32 %tmp0_v2.i.i.i, 0
  br i1 %15, label %BB_804923C.i.i, label %Func_is_leap_year.exit.thread

Func_is_leap_year.exit.thread:                    ; preds = %BB_80491C0.i
  %16 = load i32, i32* %10, align 8
  br label %BB_80491E9.i

BB_804923C.i.i:                                   ; preds = %BB_80491C0.i
  %tmp16_v.i18.i.i = sext i32 %14 to i64
  %tmp15_v.i19.i.i = mul nsw i64 %tmp16_v.i18.i.i, 1374389535
  %tmp15_v1.i20.i.i = lshr i64 %tmp15_v.i19.i.i, 32
  %17 = trunc i64 %tmp15_v1.i20.i.i to i32
  %tmp0_v3.i21.i.i = ashr i32 %17, 5
  %tmp0_v4.i22.i.neg.i = lshr i32 %14, 31
  %tmp0_v5.i23.i.i = add nsw i32 %tmp0_v3.i21.i.i, %tmp0_v4.i22.i.neg.i
  %tmp17_v6.i24.i.neg.i = mul i32 %tmp0_v5.i23.i.i, -100
  %tmp0_v8.i25.i.i = add i32 %tmp17_v6.i24.i.neg.i, %14
  %18 = icmp eq i32 %tmp0_v8.i25.i.i, 0
  br i1 %18, label %Func_is_leap_year.exit, label %Func_is_leap_year.exit.thread20

Func_is_leap_year.exit.thread20:                  ; preds = %BB_804923C.i.i
  %19 = load i32, i32* %10, align 8
  br label %BB_80491D2.i

Func_is_leap_year.exit:                           ; preds = %BB_804923C.i.i
  %tmp0_v3.i.i.i = ashr i32 %17, 7
  %tmp0_v5.i.i.i = add nsw i32 %tmp0_v3.i.i.i, %tmp0_v4.i22.i.neg.i
  %tmp17_v6.i.i.neg.i = mul i32 %tmp0_v5.i.i.i, -400
  %tmp0_v8.i.i.i = add i32 %tmp17_v6.i.i.neg.i, %14
  %.not = icmp eq i32 %tmp0_v8.i.i.i, 0
  %20 = load i32, i32* %10, align 8
  br i1 %.not, label %BB_80491D2.i, label %BB_80491E9.i

BB_80491D2.i:                                     ; preds = %Func_is_leap_year.exit, %Func_is_leap_year.exit.thread20
  %21 = phi i32 [ %19, %Func_is_leap_year.exit.thread20 ], [ %20, %Func_is_leap_year.exit ]
  %r_ecx.0.i25 = phi i32 [ %tmp0_v8.i25.i.i, %Func_is_leap_year.exit.thread20 ], [ %tmp0_v8.i.i.i, %Func_is_leap_year.exit ]
  %r_edx.0.i24 = phi i32 [ %tmp0_v5.i23.i.i, %Func_is_leap_year.exit.thread20 ], [ %tmp0_v5.i.i.i, %Func_is_leap_year.exit ]
  %tmp2_v.i11.i = add i32 %21, -12
  %22 = inttoptr i32 %tmp2_v.i11.i to i32*
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %spi.bis.15 = ptrtoint[14 x i8]* @str.bis.15 to i32
  store i32 %spi.bis.15, i32* %8, align 16
  store i32 134517220, i32* %9, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.i25, i32 inreg noundef %r_edx.0.i24, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !109
  %extract31 = lshr i64 %24, 32
  %extract.t32 = trunc i64 %extract31 to i32
  br label %BB_80491FE.i

BB_80491E9.i:                                     ; preds = %Func_is_leap_year.exit, %Func_is_leap_year.exit.thread
  %25 = phi i32 [ %16, %Func_is_leap_year.exit.thread ], [ %20, %Func_is_leap_year.exit ]
  %r_ecx.0.i18 = phi i32 [ %r_ecx.013, %Func_is_leap_year.exit.thread ], [ %tmp0_v8.i.i.i, %Func_is_leap_year.exit ]
  %r_edx.0.i17 = phi i32 [ %r_edx.112, %Func_is_leap_year.exit.thread ], [ %tmp0_v5.i.i.i, %Func_is_leap_year.exit ]
  %tmp2_v.i35.i = add i32 %25, -12
  %26 = inttoptr i32 %tmp2_v.i35.i to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %spi.bis.14 = ptrtoint[4 x i8]* @str.bis.14 to i32
  store i32 %spi.bis.14, i32* %8, align 16
  store i32 134517243, i32* %9, align 4
  %28 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.i18, i32 inreg noundef %r_edx.0.i17, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !109
  %extract29 = lshr i64 %28, 32
  %extract.t30 = trunc i64 %extract29 to i32
  br label %BB_80491FE.i

BB_80491FE.i:                                     ; preds = %BB_80491E9.i, %BB_80491D2.i
  %.sink.off32 = phi i32 [ %extract.t30, %BB_80491E9.i ], [ %extract.t32, %BB_80491D2.i ]
  %29 = phi i32 [ %25, %BB_80491E9.i ], [ %21, %BB_80491D2.i ]
  %r_ecx.0.i19 = phi i32 [ %r_ecx.0.i18, %BB_80491E9.i ], [ %r_ecx.0.i25, %BB_80491D2.i ]
  %.pre-phi = phi i32* [ %26, %BB_80491E9.i ], [ %22, %BB_80491D2.i ]
  %30 = load i32, i32* %.pre-phi, align 4
  %tmp0_v1.i49.i = add i32 %30, 1
  store i32 %tmp0_v1.i49.i, i32* %.pre-phi, align 4
  %31 = icmp slt i32 %tmp0_v1.i49.i, 2101
  br i1 %31, label %BB_80491C0.i, label %.exit

.exit:                                            ; preds = %BB_80491FE.i
  ret void
}
define internal fastcc { i32, i32, i32, i32, i32 } @Func_letter_flip(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx, i32 %arg_ecx) unnamed_addr  norecurse  !retregs !93 {
  %tmp2_v.i5.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i5.i to i32*
  store i32 %arg_ebp, i32* %1, align 4
  %tmp2_v1.i7.i = add i32 %arg_esp, -8
  %2 = inttoptr i32 %tmp2_v1.i7.i to i32*
  store i32 %arg_ebx, i32* %2, align 4
  %tmp2_v2.i9.i = add i32 %arg_esp, -32
  %3 = inttoptr i32 %tmp2_v2.i9.i to i32*
  store i32 134517530, i32* %3, align 4
  %tmp2_v.i77.i = add i32 %arg_esp, 4
  %4 = inttoptr i32 %tmp2_v.i77.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, -44
  %6 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %5, i32* %6, align 4
  %tmp2_v4.i79.i = add i32 %arg_esp, -48
  %7 = inttoptr i32 %tmp2_v4.i79.i to i32*
  store i32 134517547, i32* %7, align 4
  %arg.i.i = load i32, i32* %6, align 4
  %8 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i33.i = add i32 %arg_esp, -16
  %9 = inttoptr i32 %tmp2_v.i33.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v1.i35.i = add i32 %arg_esp, -20
  %10 = inttoptr i32 %tmp2_v1.i35.i to i32*
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %BB_804933D.i, label %.exit

BB_804933D.i:                                     ; preds = %BB_80493DF.i, %0
  store i32 134517570, i32* %3, align 4
  %13 = tail call i32 @__ctype_b_loc()
  %14 = inttoptr i32 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %4, align 4
  %tmp0_v4.i17.i = add i32 %17, %16
  %18 = inttoptr i32 %tmp0_v4.i17.i to i8*
  %19 = load i8, i8* %18, align 1
  %tmp0_v6.i.i = sext i8 %19 to i32
  %tmp0_v7.i.i = shl nsw i32 %tmp0_v6.i.i, 1
  %tmp0_v8.i.i = add i32 %tmp0_v7.i.i, %15
  %20 = inttoptr i32 %tmp0_v8.i.i to i16*
  %21 = load i16, i16* %20, align 2
  %22 = and i16 %21, 256
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %BB_804938F.i, label %BB_8049365.i

BB_80493DF.i.sink.split:                          ; preds = %BB_8049365.i, %BB_80493B7.i
  %.sink49 = phi i32 [ %43, %BB_8049365.i ], [ %42, %BB_80493B7.i ]
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  %tmp0_v4.i.i = add i32 %25, %24
  %26 = trunc i32 %.sink49 to i8
  %27 = inttoptr i32 %tmp0_v4.i.i to i8*
  store i8 %26, i8* %27, align 1
  br label %BB_80493DF.i

BB_80493DF.i:                                     ; preds = %BB_804938F.i, %BB_80493DF.i.sink.split
  %r_ecx.1 = phi i32 [ %34, %BB_804938F.i ], [ %.sink49, %BB_80493DF.i.sink.split ]
  %r_edx.1 = phi i32 [ %tmp0_v7.i61.i, %BB_804938F.i ], [ %.sink49, %BB_80493DF.i.sink.split ]
  %28 = load i32, i32* %10, align 4
  %tmp0_v1.i24.i = add i32 %28, 1
  store i32 %tmp0_v1.i24.i, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %tmp0_v1.i24.i, %29
  br i1 %30, label %BB_804933D.i, label %.exit

BB_804938F.i:                                     ; preds = %BB_804933D.i
  store i32 134517652, i32* %3, align 4
  %31 = tail call i32 @__ctype_b_loc()
  %32 = inttoptr i32 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %4, align 4
  %tmp0_v4.i58.i = add i32 %35, %34
  %36 = inttoptr i32 %tmp0_v4.i58.i to i8*
  %37 = load i8, i8* %36, align 1
  %tmp0_v6.i60.i = sext i8 %37 to i32
  %tmp0_v7.i61.i = shl nsw i32 %tmp0_v6.i60.i, 1
  %tmp0_v8.i62.i = add i32 %tmp0_v7.i61.i, %33
  %38 = inttoptr i32 %tmp0_v8.i62.i to i16*
  %39 = load i16, i16* %38, align 2
  %40 = and i16 %39, 512
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %BB_80493DF.i, label %BB_80493B7.i

BB_80493B7.i:                                     ; preds = %BB_804938F.i
  store i32 %tmp0_v6.i60.i, i32* %6, align 4
  store i32 134517710, i32* %7, align 4
  %arg.i.i41 = load i32, i32* %6, align 4
  %42 = tail call i32 @toupper(i32 %arg.i.i41)
  br label %BB_80493DF.i.sink.split

BB_8049365.i:                                     ; preds = %BB_804933D.i
  store i32 %tmp0_v6.i.i, i32* %6, align 4
  store i32 134517628, i32* %7, align 4
  %arg.i.i44 = load i32, i32* %6, align 4
  %43 = tail call i32 @tolower(i32 %arg.i.i44)
  br label %BB_80493DF.i.sink.split

.exit:                                            ; preds = %BB_80493DF.i, %0
  %r_ecx.0.lcssa = phi i32 [ %arg_ecx, %0 ], [ %r_ecx.1, %BB_80493DF.i ]
  %r_edx.0.lcssa = phi i32 [ %arg_edx, %0 ], [ %r_edx.1, %BB_80493DF.i ]
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %1, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp2_v.i77.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %r_edx.0.lcssa, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %45, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %44, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %r_ecx.0.lcssa, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}
define internal fastcc void @letter_flip19(i32 %arg_esp) unnamed_addr  norecurse  !retregs !94 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i6.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i6.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517329, i32* %6, align 4
  %tmp4_v.i16.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i20.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i20.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i3.i, -50
  %10 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 1684234849, i32* %10, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i3.i, -46
  %11 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 1128415589, i32* %11, align 4
  %tmp2_v5.i23.i = add i32 %tmp0_v.i3.i, -42
  %12 = inttoptr i32 %tmp2_v5.i23.i to i16*
  store i16 17732, i16* %12, align 2
  %tmp2_v6.i24.i = add i32 %tmp0_v.i3.i, -40
  %13 = inttoptr i32 %tmp2_v6.i24.i to i8*
  store i8 0, i8* %13, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -80
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v3.i21.i, i32* %14, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -84
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517382, i32* %15, align 4
  %16 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_letter_flip(i32 %tmp2_v10.i.i, i32 0, i32 %tmp2_v4.i.i, i32 134529024, i32 %tmp2_v.i2.i)
  %17 = extractvalue { i32, i32, i32, i32, i32 } %16, 0
  %18 = extractvalue { i32, i32, i32, i32, i32 } %16, 1
  %19 = extractvalue { i32, i32, i32, i32, i32 } %16, 2
  %20 = extractvalue { i32, i32, i32, i32, i32 } %16, 3
  %21 = extractvalue { i32, i32, i32, i32, i32 } %16, 4
  %tmp2_v.i.i = add i32 %19, -42
  %tmp2_v2.i.i = add i32 %17, 4
  %22 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %tmp2_v.i.i, i32* %22, align 4
  %tmp2_v3.i.i = add i32 %20, -8184
  %23 = inttoptr i32 %17 to i32*
  store i32 %tmp2_v3.i.i, i32* %23, align 4
  %tmp2_v5.i.i = add i32 %17, -4
  %24 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 134517404, i32* %24, align 4
  %25 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %21, i32 inreg noundef %18, i32 noundef %17, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !95
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %tmp2_v.i38.i = add i32 %19, -31
  %28 = inttoptr i32 %tmp2_v.i38.i to i32*
  store i32 1399416916, i32* %28, align 4
  %tmp2_v1.i.i = add i32 %19, -27
  %29 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 542337312, i32* %29, align 4
  %tmp2_v2.i39.i = add i32 %19, -23
  %30 = inttoptr i32 %tmp2_v2.i39.i to i32*
  store i32 1931508045, i32* %30, align 4
  %tmp2_v3.i40.i = add i32 %19, -19
  %31 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 1850307156, i32* %31, align 4
  %tmp2_v4.i41.i = add i32 %19, -15
  %32 = inttoptr i32 %tmp2_v4.i41.i to i16*
  store i16 8519, i16* %32, align 2
  %tmp2_v5.i42.i = add i32 %19, -13
  %33 = inttoptr i32 %tmp2_v5.i42.i to i8*
  store i8 0, i8* %33, align 1
  store i32 %tmp2_v.i38.i, i32* %23, align 4
  store i32 134517457, i32* %24, align 4
  %34 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_letter_flip(i32 %tmp2_v5.i.i, i32 %27, i32 %19, i32 %20, i32 %21)
  %35 = extractvalue { i32, i32, i32, i32, i32 } %34, 0
  %36 = extractvalue { i32, i32, i32, i32, i32 } %34, 1
  %37 = extractvalue { i32, i32, i32, i32, i32 } %34, 2
  %38 = extractvalue { i32, i32, i32, i32, i32 } %34, 3
  %39 = extractvalue { i32, i32, i32, i32, i32 } %34, 4
  %tmp2_v.i48.i = add i32 %37, -31
  %tmp2_v2.i49.i = add i32 %35, 4
  %40 = inttoptr i32 %tmp2_v2.i49.i to i32*
  store i32 %tmp2_v.i48.i, i32* %40, align 4
  %tmp2_v3.i51.i = add i32 %38, -8170
  %41 = inttoptr i32 %35 to i32*
  store i32 %tmp2_v3.i51.i, i32* %41, align 4
  %tmp2_v5.i52.i = add i32 %35, -4
  %42 = inttoptr i32 %tmp2_v5.i52.i to i32*
  store i32 134517479, i32* %42, align 4
  %43 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %39, i32 inreg noundef %36, i32 noundef %35, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !95
  ret void
}
define internal fastcc void @if_elif_else555(i32 %arg_esp) unnamed_addr  norecurse  !retregs !79 {
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i4.i = add i32 %tmp0_v.i3.i, -8
  %4 = inttoptr i32 %tmp2_v4.i4.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517198, i32* %7, align 4
  %tmp2_v2.i24.i = add i32 %tmp0_v.i3.i, -32
  %8 = inttoptr i32 %tmp2_v2.i24.i to i32*
  %spi.bis.553 = ptrtoint[11 x i8]* @str.bis.553 to i32
  store i32 %spi.bis.553, i32* %8, align 16
  %tmp2_v3.i25.i = add i32 %tmp0_v.i3.i, -36
  %9 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 134517219, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  %spi.bis.552 = ptrtoint[11 x i8]* @str.bis.552 to i32
  store i32 %spi.bis.552, i32* %8, align 16
  store i32 134517237, i32* %9, align 4
  %arg.i.i1 = load i32, i32* %8, align 16
  %12 = inttoptr i32 %arg.i.i1 to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
  %spi.bis.551 = ptrtoint[18 x i8]* @str.bis.551 to i32
  store i32 %spi.bis.551, i32* %8, align 16
  store i32 134517255, i32* %9, align 4
  %arg.i.i2 = load i32, i32* %8, align 16
  %14 = inttoptr i32 %arg.i.i2 to i8*
  %15 = tail call i32 @puts(i8* nonnull dereferenceable(1) %14)
  %spi.bis.550 = ptrtoint[18 x i8]* @str.bis.550 to i32
  store i32 %spi.bis.550, i32* %8, align 16
  store i32 134517273, i32* %9, align 4
  %arg.i.i3 = load i32, i32* %8, align 16
  %16 = inttoptr i32 %arg.i.i3 to i8*
  %17 = tail call i32 @puts(i8* nonnull dereferenceable(1) %16)
  %tmp2_v.i29.i = add i32 %tmp0_v.i3.i, -28
  %18 = inttoptr i32 %tmp2_v.i29.i to i32*
  store i32 100, i32* %18, align 4
  %spi.bis.549 = ptrtoint[4 x i8]* @str.bis.549 to i32
  store i32 %spi.bis.549, i32* %8, align 16
  store i32 134517293, i32* %9, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v2.i24.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !80
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %spi.bis.548 = ptrtoint[14 x i8]* @str.bis.548 to i32
  store i32 %spi.bis.548, i32* %8, align 16
  store i32 134517311, i32* %9, align 4
  %arg.i.i6 = load i32, i32* %8, align 16
  %22 = inttoptr i32 %arg.i.i6 to i8*
  %23 = tail call i32 @puts(i8* nonnull dereferenceable(1) %22)
  store i32 500, i32* %18, align 4
  %spi.bis.547 = ptrtoint[11 x i8]* @str.bis.547 to i32
  store i32 %spi.bis.547, i32* %8, align 16
  store i32 134517334, i32* %9, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %21, i32 noundef %tmp2_v2.i24.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !80
  ret void
}
define internal fastcc void @strstr794(i32 %arg_esp) unnamed_addr  norecurse  !retregs !65 {
Func_804928B.exit.i:
  %tmp2_v.i36.i = add i32 %arg_esp, 4
  %tmp0_v.i37.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i39.i = add i32 %tmp0_v.i37.i, -4
  %2 = inttoptr i32 %tmp2_v3.i39.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i40.i = add i32 %tmp0_v.i37.i, -8
  %3 = inttoptr i32 %tmp2_v4.i40.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i42.i = add i32 %tmp0_v.i37.i, -12
  %4 = inttoptr i32 %tmp2_v5.i42.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i44.i = add i32 %tmp0_v.i37.i, -16
  %5 = inttoptr i32 %tmp2_v6.i44.i to i32*
  store i32 %tmp2_v.i36.i, i32* %5, align 16
  %tmp2_v8.i45.i = add i32 %tmp0_v.i37.i, -68
  %6 = inttoptr i32 %tmp2_v8.i45.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i10.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i14.i = add i32 %tmp0_v.i37.i, -20
  %9 = inttoptr i32 %tmp2_v2.i14.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i37.i, -37
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i15.i = add i32 %tmp0_v.i37.i, -33
  %11 = inttoptr i32 %tmp2_v4.i15.i to i32*
  store i32 544434464, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i37.i, -29
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i37.i, -25
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 779706743, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i37.i, -21
  %14 = inttoptr i32 %tmp2_v7.i.i to i8*
  store i8 0, i8* %14, align 1
  %tmp2_v8.i.i = add i32 %tmp0_v.i37.i, -45
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6645876, i32* %15, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i37.i, -76
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v8.i.i, i32* %16, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i37.i, -80
  %17 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %17, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i37.i, -84
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517337, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 16
  %arg2.i.i = load i32, i32* %16, align 4
  %19 = tail call i32 @strstr(i32 %arg.i.i, i32 %arg2.i.i)
  %tmp2_v.i49.i = add i32 %tmp0_v.i37.i, -56
  %20 = inttoptr i32 %tmp2_v.i49.i to i32*
  store i32 %19, i32* %20, align 8
  store i32 %19, i32* %16, align 4
  %spi.bis.792 = ptrtoint[9 x i8]* @str.bis.792 to i32
  store i32 %spi.bis.792, i32* %17, align 16
  store i32 134517361, i32* %18, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i36.i, i32 inreg noundef 0, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !66
  %tmp2_v.i29.i = add i32 %tmp0_v.i37.i, -41
  %22 = inttoptr i32 %tmp2_v.i29.i to i32*
  store i32 7827310, i32* %22, align 4
  store i32 %tmp2_v.i29.i, i32* %16, align 4
  store i32 %tmp2_v3.i.i, i32* %17, align 16
  store i32 134517387, i32* %18, align 4
  %arg.i.i3 = load i32, i32* %17, align 16
  %arg2.i.i4 = load i32, i32* %16, align 4
  %23 = tail call i32 @strstr(i32 %arg.i.i3, i32 %arg2.i.i4)
  %tmp2_v.i6.i = add i32 %tmp0_v.i37.i, -52
  %24 = inttoptr i32 %tmp2_v.i6.i to i32*
  store i32 %23, i32* %24, align 4
  %spi.bis.791 = ptrtoint[23 x i8]* @str.bis.791 to i32
  store i32 %spi.bis.791, i32* %17, align 16
  store i32 134517414, i32* %18, align 4
  %arg.i.i6 = load i32, i32* %17, align 16
  %25 = inttoptr i32 %arg.i.i6 to i8*
  %26 = tail call i32 @puts(i8* nonnull dereferenceable(1) %25)
  ret void
}
define internal fastcc void @remove_char620(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !51 {
.exit:
  %tmp2_v.i8.i = add i32 %arg_esp, 4
  %tmp0_v.i9.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i10.i = add i32 %tmp0_v.i9.i, -4
  %2 = inttoptr i32 %tmp2_v3.i10.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i11.i = add i32 %tmp0_v.i9.i, -8
  %3 = inttoptr i32 %tmp2_v4.i11.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i13.i = add i32 %tmp0_v.i9.i, -12
  %4 = inttoptr i32 %tmp2_v5.i13.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i15.i = add i32 %tmp0_v.i9.i, -16
  %5 = inttoptr i32 %tmp2_v6.i15.i to i32*
  store i32 %tmp2_v.i8.i, i32* %5, align 16
  %tmp2_v8.i17.i = add i32 %tmp0_v.i9.i, -84
  %6 = inttoptr i32 %tmp2_v8.i17.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i34.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i38.i = add i32 %tmp0_v.i9.i, -20
  %9 = inttoptr i32 %tmp2_v2.i38.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i39.i = add i32 %tmp0_v.i9.i, -72
  %10 = inttoptr i32 %tmp2_v3.i39.i to i32*
  store i32 1953701953, i32* %10, align 8
  %tmp2_v4.i40.i = add i32 %tmp0_v.i9.i, -68
  %11 = inttoptr i32 %tmp2_v4.i40.i to i32*
  store i32 1735289202, i32* %11, align 4
  %tmp2_v5.i41.i = add i32 %tmp0_v.i9.i, -64
  %12 = inttoptr i32 %tmp2_v5.i41.i to i32*
  store i32 1953068832, i32* %12, align 16
  %tmp2_v6.i42.i = add i32 %tmp0_v.i9.i, -60
  %13 = inttoptr i32 %tmp2_v6.i42.i to i32*
  store i32 1869815912, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i9.i, -56
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1998611821, i32* %14, align 8
  %tmp2_v8.i43.i = add i32 %tmp0_v.i9.i, -52
  %15 = inttoptr i32 %tmp2_v8.i43.i to i32*
  store i32 1935962735, i32* %15, align 4
  %tmp2_v9.i44.i = add i32 %tmp0_v.i9.i, -48
  %16 = inttoptr i32 %tmp2_v9.i44.i to i16*
  store i16 33, i16* %16, align 16
  %tmp2_v12.i46.i = add i32 %tmp0_v.i9.i, -92
  %17 = inttoptr i32 %tmp2_v12.i46.i to i32*
  store i32 %tmp2_v3.i39.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i9.i, -96
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  %spi.bis.618 = ptrtoint[15 x i8]* @str.bis.618 to i32
  store i32 %spi.bis.618, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i9.i, -100
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517285, i32* %19, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i8.i, i32 inreg noundef 0, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  store i32 105, i32* %17, align 4
  store i32 %tmp2_v3.i39.i, i32* %18, align 16
  store i32 134517302, i32* %19, align 4
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i9.i, -104
  %21 = inttoptr i32 %tmp2_v.i9.i.i to i32*
  store i32 %tmp2_v4.i11.i, i32* %21, align 8
  %tmp2_v1.i12.i.i = add i32 %tmp0_v.i9.i, -128
  %22 = inttoptr i32 %tmp2_v1.i12.i.i to i32*
  %spi.bis.617 = ptrtoint[4 x i8]* @str.bis.617 to i32
  store i32 %spi.bis.617, i32* %22, align 16
  %23 = load i32, i32* %17, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i9.i, -124
  %24 = trunc i32 %23 to i8
  %25 = inttoptr i32 %tmp2_v2.i.i.i to i8*
  store i8 %24, i8* %25, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i9.i, -112
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %26, align 16
  %27 = load i32, i32* %18, align 16
  %28 = inttoptr i32 %27 to i8*
  %29 = load i8, i8* %28, align 1
  %.not.i39.i2233.i = icmp eq i8 %29, 0
  br i1 %.not.i39.i2233.i, label %Func_remove_char.exit, label %BB_80492FF.i.lr.ph.lr.ph.i

BB_80492FF.i.lr.ph.lr.ph.i:                       ; preds = %.exit
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i9.i, -108
  %30 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  br label %BB_80492FF.i.lr.ph.i

BB_804930F.i.i:                                   ; preds = %BB_80492FF.i.i
  store i32 %46, i32* %30, align 4
  %31 = load i32, i32* %18, align 16
  %tmp0_v3.i46.i28.i = add i32 %31, %46
  %32 = inttoptr i32 %tmp0_v3.i46.i28.i to i8*
  %33 = load i8, i8* %32, align 1
  %.not.i48.i29.i = icmp eq i8 %33, 0
  br i1 %.not.i48.i29.i, label %BB_8049348.i.loopexit.i, label %BB_8049317.i.i

BB_8049344.i.i:                                   ; preds = %BB_80492FF.i.i
  %tmp0_v1.i7.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i7.i.i, i32* %26, align 16
  %34 = load i32, i32* %18, align 16
  %tmp0_v3.i37.i.i = add i32 %34, %tmp0_v1.i7.i.i
  %35 = inttoptr i32 %tmp0_v3.i37.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %.not.i39.i.i = icmp eq i8 %36, 0
  br i1 %.not.i39.i.i, label %Func_remove_char.exit, label %BB_80492FF.i.i

BB_8049317.i.i:                                   ; preds = %BB_8049317.i.i, %BB_804930F.i.i
  %37 = phi i8* [ %43, %BB_8049317.i.i ], [ %32, %BB_804930F.i.i ]
  %38 = phi i32 [ %42, %BB_8049317.i.i ], [ %31, %BB_804930F.i.i ]
  %storemerge30.i = phi i32 [ %tmp0_v13.i.i.i, %BB_8049317.i.i ], [ %46, %BB_804930F.i.i ]
  %tmp2_v1.i16.i.i = add i32 %38, 1
  %tmp0_v4.i.i.i = add i32 %tmp2_v1.i16.i.i, %storemerge30.i
  %39 = inttoptr i32 %tmp0_v4.i.i.i to i8*
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %37, align 1
  %41 = load i32, i32* %30, align 4
  %tmp0_v13.i.i.i = add i32 %41, 1
  store i32 %tmp0_v13.i.i.i, i32* %30, align 4
  %42 = load i32, i32* %18, align 16
  %tmp0_v3.i46.i.i = add i32 %42, %tmp0_v13.i.i.i
  %43 = inttoptr i32 %tmp0_v3.i46.i.i to i8*
  %44 = load i8, i8* %43, align 1
  %.not.i48.i.i = icmp eq i8 %44, 0
  br i1 %.not.i48.i.i, label %BB_8049348.i.loopexit.i, label %BB_8049317.i.i

BB_80492FF.i.i:                                   ; preds = %BB_80492FF.i.lr.ph.i, %BB_8049344.i.i
  %45 = phi i8 [ %52, %BB_80492FF.i.lr.ph.i ], [ %36, %BB_8049344.i.i ]
  %46 = phi i32 [ %53, %BB_80492FF.i.lr.ph.i ], [ %tmp0_v1.i7.i.i, %BB_8049344.i.i ]
  %tmp0_v4.i27.i.i = zext i8 %45 to i32
  %47 = load i8, i8* %25, align 4
  %tmp0_v6.i29.i.i = zext i8 %47 to i32
  %cc_dst_v.i.i.i = sub nsw i32 %tmp0_v6.i29.i.i, %tmp0_v4.i27.i.i
  %tmp4_v.i.i.i3 = and i32 %cc_dst_v.i.i.i, 255
  %.not.i30.i.i = icmp eq i32 %tmp4_v.i.i.i3, 0
  br i1 %.not.i30.i.i, label %BB_804930F.i.i, label %BB_8049344.i.i

BB_8049348.i.loopexit.i:                          ; preds = %BB_8049317.i.i, %BB_804930F.i.i
  %48 = phi i32 [ %31, %BB_804930F.i.i ], [ %42, %BB_8049317.i.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.0.ph34.i, %BB_804930F.i.i ], [ %storemerge30.i, %BB_8049317.i.i ]
  %49 = load i32, i32* %26, align 16
  %tmp0_v3.i37.i21.i = add i32 %49, %48
  %50 = inttoptr i32 %tmp0_v3.i37.i21.i to i8*
  %51 = load i8, i8* %50, align 1
  %.not.i39.i22.i = icmp eq i8 %51, 0
  br i1 %.not.i39.i22.i, label %Func_remove_char.exit, label %BB_80492FF.i.lr.ph.i

BB_80492FF.i.lr.ph.i:                             ; preds = %BB_8049348.i.loopexit.i, %BB_80492FF.i.lr.ph.lr.ph.i
  %52 = phi i8 [ %29, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %51, %BB_8049348.i.loopexit.i ]
  %53 = phi i32 [ 0, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %49, %BB_8049348.i.loopexit.i ]
  %r_ecx.0.ph34.i = phi i32 [ %tmp2_v.i8.i, %BB_80492FF.i.lr.ph.lr.ph.i ], [ %r_ecx.1.lcssa.i, %BB_8049348.i.loopexit.i ]
  br label %BB_80492FF.i.i

Func_remove_char.exit:                            ; preds = %BB_8049348.i.loopexit.i, %BB_8049344.i.i, %.exit
  %r_ecx.0.ph.lcssa.i = phi i32 [ %tmp2_v.i8.i, %.exit ], [ %r_ecx.0.ph34.i, %BB_8049344.i.i ], [ %r_ecx.1.lcssa.i, %BB_8049348.i.loopexit.i ]
  %.lcssa18.i = phi i32 [ 0, %.exit ], [ %tmp0_v1.i7.i.i, %BB_8049344.i.i ], [ %49, %BB_8049348.i.loopexit.i ]
  %54 = load i32, i32* %21, align 8
  %tmp2_v.i51.i = add i32 %54, -64
  store i32 %tmp2_v.i51.i, i32* %17, align 4
  %spi.bis.616 = ptrtoint[14 x i8]* @str.bis.616 to i32
  store i32 %spi.bis.616, i32* %18, align 16
  store i32 134517324, i32* %19, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.lcssa.i, i32 inreg noundef %.lcssa18.i, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %56 = lshr i64 %55, 32
  %57 = trunc i64 %56 to i32
  %tmp2_v.i4.i = add i32 %54, -38
  %58 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 1096900961, i32* %58, align 4
  %tmp2_v1.i.i = add i32 %54, -34
  %59 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2021146945, i32* %59, align 4
  %tmp2_v2.i5.i = add i32 %54, -30
  %60 = inttoptr i32 %tmp2_v2.i5.i to i32*
  store i32 1631666497, i32* %60, align 4
  %tmp2_v3.i.i = add i32 %54, -26
  %61 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1111646561, i32* %61, align 4
  %tmp2_v4.i6.i = add i32 %54, -22
  %62 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1631798082, i32* %62, align 4
  %tmp2_v5.i.i = add i32 %54, -18
  %63 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1096900961, i32* %63, align 4
  %tmp2_v6.i.i = add i32 %54, -14
  %64 = inttoptr i32 %tmp2_v6.i.i to i16*
  store i16 97, i16* %64, align 2
  store i32 %tmp2_v.i4.i, i32* %17, align 4
  %spi.bis.615 = ptrtoint[15 x i8]* @str.bis.615 to i32
  store i32 %spi.bis.615, i32* %18, align 16
  store i32 134517394, i32* %19, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.lcssa.i, i32 inreg noundef %57, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  store i32 97, i32* %17, align 4
  store i32 %tmp2_v.i4.i, i32* %18, align 16
  store i32 134517411, i32* %19, align 4
  store i32 %54, i32* %21, align 8
  %spi.bis.614 = ptrtoint[4 x i8]* @str.bis.614 to i32
  store i32 %spi.bis.614, i32* %22, align 16
  %66 = load i32, i32* %17, align 4
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %25, align 4
  store i32 0, i32* %26, align 16
  %68 = load i32, i32* %18, align 16
  %69 = inttoptr i32 %68 to i8*
  %70 = load i8, i8* %69, align 1
  %.not.i39.i2233.i14 = icmp eq i8 %70, 0
  br i1 %.not.i39.i2233.i14, label %Func_remove_char.exit49, label %BB_80492FF.i.lr.ph.lr.ph.i16

BB_80492FF.i.lr.ph.lr.ph.i16:                     ; preds = %Func_remove_char.exit
  %tmp2_v1.i.i.i15 = add i32 %tmp0_v.i9.i, -108
  %71 = inttoptr i32 %tmp2_v1.i.i.i15 to i32*
  br label %BB_80492FF.i.lr.ph.i42

BB_804930F.i.i19:                                 ; preds = %BB_80492FF.i.i36
  store i32 %87, i32* %71, align 4
  %72 = load i32, i32* %18, align 16
  %tmp0_v3.i46.i28.i17 = add i32 %72, %87
  %73 = inttoptr i32 %tmp0_v3.i46.i28.i17 to i8*
  %74 = load i8, i8* %73, align 1
  %.not.i48.i29.i18 = icmp eq i8 %74, 0
  br i1 %.not.i48.i29.i18, label %BB_8049348.i.loopexit.i40, label %BB_8049317.i.i30

BB_8049344.i.i23:                                 ; preds = %BB_80492FF.i.i36
  %tmp0_v1.i7.i.i20 = add i32 %87, 1
  store i32 %tmp0_v1.i7.i.i20, i32* %26, align 16
  %75 = load i32, i32* %18, align 16
  %tmp0_v3.i37.i.i21 = add i32 %75, %tmp0_v1.i7.i.i20
  %76 = inttoptr i32 %tmp0_v3.i37.i.i21 to i8*
  %77 = load i8, i8* %76, align 1
  %.not.i39.i.i22 = icmp eq i8 %77, 0
  br i1 %.not.i39.i.i22, label %Func_remove_char.exit49, label %BB_80492FF.i.i36

BB_8049317.i.i30:                                 ; preds = %BB_8049317.i.i30, %BB_804930F.i.i19
  %78 = phi i8* [ %84, %BB_8049317.i.i30 ], [ %73, %BB_804930F.i.i19 ]
  %79 = phi i32 [ %83, %BB_8049317.i.i30 ], [ %72, %BB_804930F.i.i19 ]
  %storemerge30.i24 = phi i32 [ %tmp0_v13.i.i.i27, %BB_8049317.i.i30 ], [ %87, %BB_804930F.i.i19 ]
  %tmp2_v1.i16.i.i25 = add i32 %79, 1
  %tmp0_v4.i.i.i26 = add i32 %tmp2_v1.i16.i.i25, %storemerge30.i24
  %80 = inttoptr i32 %tmp0_v4.i.i.i26 to i8*
  %81 = load i8, i8* %80, align 1
  store i8 %81, i8* %78, align 1
  %82 = load i32, i32* %71, align 4
  %tmp0_v13.i.i.i27 = add i32 %82, 1
  store i32 %tmp0_v13.i.i.i27, i32* %71, align 4
  %83 = load i32, i32* %18, align 16
  %tmp0_v3.i46.i.i28 = add i32 %83, %tmp0_v13.i.i.i27
  %84 = inttoptr i32 %tmp0_v3.i46.i.i28 to i8*
  %85 = load i8, i8* %84, align 1
  %.not.i48.i.i29 = icmp eq i8 %85, 0
  br i1 %.not.i48.i.i29, label %BB_8049348.i.loopexit.i40, label %BB_8049317.i.i30

BB_80492FF.i.i36:                                 ; preds = %BB_80492FF.i.lr.ph.i42, %BB_8049344.i.i23
  %86 = phi i8 [ %93, %BB_80492FF.i.lr.ph.i42 ], [ %77, %BB_8049344.i.i23 ]
  %87 = phi i32 [ %94, %BB_80492FF.i.lr.ph.i42 ], [ %tmp0_v1.i7.i.i20, %BB_8049344.i.i23 ]
  %tmp0_v4.i27.i.i31 = zext i8 %86 to i32
  %88 = load i8, i8* %25, align 4
  %tmp0_v6.i29.i.i32 = zext i8 %88 to i32
  %cc_dst_v.i.i.i33 = sub nsw i32 %tmp0_v6.i29.i.i32, %tmp0_v4.i27.i.i31
  %tmp4_v.i.i.i34 = and i32 %cc_dst_v.i.i.i33, 255
  %.not.i30.i.i35 = icmp eq i32 %tmp4_v.i.i.i34, 0
  br i1 %.not.i30.i.i35, label %BB_804930F.i.i19, label %BB_8049344.i.i23

BB_8049348.i.loopexit.i40:                        ; preds = %BB_8049317.i.i30, %BB_804930F.i.i19
  %89 = phi i32 [ %72, %BB_804930F.i.i19 ], [ %83, %BB_8049317.i.i30 ]
  %r_ecx.1.lcssa.i37 = phi i32 [ %r_ecx.0.ph34.i41, %BB_804930F.i.i19 ], [ %storemerge30.i24, %BB_8049317.i.i30 ]
  %90 = load i32, i32* %26, align 16
  %tmp0_v3.i37.i21.i38 = add i32 %90, %89
  %91 = inttoptr i32 %tmp0_v3.i37.i21.i38 to i8*
  %92 = load i8, i8* %91, align 1
  %.not.i39.i22.i39 = icmp eq i8 %92, 0
  br i1 %.not.i39.i22.i39, label %Func_remove_char.exit49, label %BB_80492FF.i.lr.ph.i42

BB_80492FF.i.lr.ph.i42:                           ; preds = %BB_8049348.i.loopexit.i40, %BB_80492FF.i.lr.ph.lr.ph.i16
  %93 = phi i8 [ %70, %BB_80492FF.i.lr.ph.lr.ph.i16 ], [ %92, %BB_8049348.i.loopexit.i40 ]
  %94 = phi i32 [ 0, %BB_80492FF.i.lr.ph.lr.ph.i16 ], [ %90, %BB_8049348.i.loopexit.i40 ]
  %r_ecx.0.ph34.i41 = phi i32 [ %r_ecx.0.ph.lcssa.i, %BB_80492FF.i.lr.ph.lr.ph.i16 ], [ %r_ecx.1.lcssa.i37, %BB_8049348.i.loopexit.i40 ]
  br label %BB_80492FF.i.i36

Func_remove_char.exit49:                          ; preds = %BB_8049348.i.loopexit.i40, %BB_8049344.i.i23, %Func_remove_char.exit
  %r_ecx.0.ph.lcssa.i43 = phi i32 [ %r_ecx.0.ph.lcssa.i, %Func_remove_char.exit ], [ %r_ecx.0.ph34.i41, %BB_8049344.i.i23 ], [ %r_ecx.1.lcssa.i37, %BB_8049348.i.loopexit.i40 ]
  %.lcssa18.i44 = phi i32 [ 0, %Func_remove_char.exit ], [ %tmp0_v1.i7.i.i20, %BB_8049344.i.i23 ], [ %90, %BB_8049348.i.loopexit.i40 ]
  %95 = load i32, i32* %21, align 8
  %tmp2_v.i27.i = add i32 %95, -38
  store i32 %tmp2_v.i27.i, i32* %17, align 4
  %spi.bis.613 = ptrtoint[14 x i8]* @str.bis.613 to i32
  store i32 %spi.bis.613, i32* %18, align 16
  store i32 134517433, i32* %19, align 4
  %96 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.lcssa.i43, i32 inreg noundef %.lcssa18.i44, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  ret void
}
define internal fastcc void @xor_swap718(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !37 {
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i8.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i10.i = add i32 %tmp0_v.i8.i, -8
  %4 = inttoptr i32 %tmp2_v4.i10.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i12.i = add i32 %tmp0_v.i8.i, -12
  %5 = inttoptr i32 %tmp2_v5.i12.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i8.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i7.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i8.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  %spi.bis.716 = ptrtoint[4 x i8]* @str.bis.716 to i32
  store i32 %spi.bis.716, i32* %7, align 4
  %tmp2_v.i.i = add i32 %tmp0_v.i8.i, -24
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 25, i32* %8, align 8
  %tmp2_v1.i.i = add i32 %tmp0_v.i8.i, -20
  %9 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 35, i32* %9, align 4
  %10 = load i32, i32* %8, align 8
  %tmp0_v6.i.i = xor i32 %10, 35
  store i32 %tmp0_v6.i.i, i32* %8, align 8
  %11 = load i32, i32* %9, align 4
  %tmp0_v11.i.i = xor i32 %11, %tmp0_v6.i.i
  store i32 %tmp0_v11.i.i, i32* %9, align 4
  %12 = load i32, i32* %8, align 8
  %tmp0_v16.i.i = xor i32 %12, %tmp0_v11.i.i
  store i32 %tmp0_v16.i.i, i32* %8, align 8
  %13 = load i32, i32* %9, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i8.i, -40
  %14 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %8, align 8
  %tmp2_v23.i.i = add i32 %tmp0_v.i8.i, -44
  %16 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 %15, i32* %16, align 4
  %tmp2_v25.i.i = add i32 %tmp0_v.i8.i, -48
  %17 = inttoptr i32 %tmp2_v25.i.i to i32*
  %spi.bis.715 = ptrtoint[14 x i8]* @str.bis.715 to i32
  store i32 %spi.bis.715, i32* %17, align 16
  %tmp2_v26.i.i = add i32 %tmp0_v.i8.i, -52
  %18 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 134517229, i32* %18, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i7.i, i32 inreg noundef 134520840, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !38
  ret void
}
define internal fastcc void @split_string612(i32 %arg_esp) unnamed_addr  norecurse  !retregs !24 {
.exit:
  %tmp2_v.i28.i = add i32 %arg_esp, 4
  %tmp0_v.i29.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i30.i = add i32 %tmp0_v.i29.i, -4
  %2 = inttoptr i32 %tmp2_v3.i30.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i31.i = add i32 %tmp0_v.i29.i, -8
  %3 = inttoptr i32 %tmp2_v4.i31.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i33.i = add i32 %tmp0_v.i29.i, -12
  %4 = inttoptr i32 %tmp2_v5.i33.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i35.i = add i32 %tmp0_v.i29.i, -16
  %5 = inttoptr i32 %tmp2_v6.i35.i to i32*
  store i32 %tmp2_v.i28.i, i32* %5, align 16
  %tmp2_v8.i36.i = add i32 %tmp0_v.i29.i, -260
  %6 = inttoptr i32 %tmp2_v8.i36.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i29.i, -252
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1702242121, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i29.i, -248
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1953457952, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i29.i, -244
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1701736224, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i29.i, -240
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1851877408, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i29.i, -236
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1852383332, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i29.i, -232
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 544828704, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i29.i, -228
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1801678704, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i29.i, -224
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 3044453, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i29.i, -120
  store i32 %tmp2_v11.i.i, i32* %6, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i29.i, -220
  %tmp2_v14.i.i = add i32 %tmp0_v.i29.i, -264
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v13.i.i, i32* %18, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i29.i, -268
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 13, i32* %19, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i29.i, -272
  %20 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %20, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i29.i, -276
  %21 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517358, i32* %21, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i29.i, -280
  %22 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i31.i, i32* %22, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i29.i, -284
  %23 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i29.i, -308
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %spi.bis.610 = ptrtoint[4 x i8]* @str.bis.610 to i32
  store i32 %spi.bis.610, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i29.i, -320
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i29.i, -324
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517460, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i35.i.i = add i32 %tmp0_v.i29.i, -292
  %29 = inttoptr i32 %tmp2_v.i35.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v.i11.i.i = add i32 %tmp0_v.i29.i, -300
  %30 = inttoptr i32 %tmp2_v.i11.i.i to i32*
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492EB.i.i, label %BB_804930C.i.i

BB_80492EB.i.i:                                   ; preds = %BB_80492EB.i.i, %.exit
  %storemerge21.i = phi i32 [ %tmp0_v12.i.i.i, %BB_80492EB.i.i ], [ 0, %.exit ]
  %33 = load i32, i32* %20, align 16
  %tmp0_v3.i.i.i = add i32 %33, %storemerge21.i
  %34 = load i32, i32* %18, align 8
  %tmp0_v8.i.i.i = add i32 %34, %storemerge21.i
  %35 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %37 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %30, align 4
  %tmp0_v12.i.i.i = add i32 %38, 1
  store i32 %tmp0_v12.i.i.i, i32* %30, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp slt i32 %tmp0_v12.i.i.i, %39
  br i1 %40, label %BB_80492EB.i.i, label %BB_804930C.i.i

BB_804930C.i.i:                                   ; preds = %BB_80492EB.i.i, %.exit
  %.lcssa.i = phi i32 [ %31, %.exit ], [ %39, %BB_80492EB.i.i ]
  %41 = load i32, i32* %18, align 8
  %tmp0_v3.i49.i.i = add i32 %41, %.lcssa.i
  %42 = inttoptr i32 %tmp0_v3.i49.i.i to i8*
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* %19, align 4
  %tmp2_v6.i52.i.i = add i32 %tmp0_v.i29.i, -296
  %44 = inttoptr i32 %tmp2_v6.i52.i.i to i32*
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %29, align 4
  %.not.i.i22.i = icmp sgt i32 %43, %45
  br i1 %.not.i.i22.i, label %Func_string_split.exit, label %BB_804931F.i.i

BB_804931F.i.i:                                   ; preds = %BB_804931F.i.i, %BB_804930C.i.i
  %storemerge1923.i = phi i32 [ %tmp0_v14.i66.i.i, %BB_804931F.i.i ], [ %43, %BB_804930C.i.i ]
  %46 = load i32, i32* %20, align 16
  %tmp2_v3.i58.i.i = add i32 %46, %storemerge1923.i
  %47 = load i32, i32* %19, align 4
  %tmp0_v7.i63.i.i = sub i32 %storemerge1923.i, %47
  %48 = load i32, i32* %6, align 4
  %tmp0_v10.i.i.i = add i32 %tmp0_v7.i63.i.i, %48
  %49 = inttoptr i32 %tmp2_v3.i58.i.i to i8*
  %50 = load i8, i8* %49, align 1
  %51 = inttoptr i32 %tmp0_v10.i.i.i to i8*
  store i8 %50, i8* %51, align 1
  %52 = load i32, i32* %44, align 8
  %tmp0_v14.i66.i.i = add i32 %52, 1
  store i32 %tmp0_v14.i66.i.i, i32* %44, align 8
  %53 = load i32, i32* %29, align 4
  %.not.i.i.i = icmp sgt i32 %tmp0_v14.i66.i.i, %53
  br i1 %.not.i.i.i, label %Func_string_split.exit, label %BB_804931F.i.i

Func_string_split.exit:                           ; preds = %BB_804931F.i.i, %BB_804930C.i.i
  %54 = load i32, i32* %22, align 8
  %tmp2_v.i17.i = add i32 %54, -212
  store i32 %tmp2_v.i17.i, i32* %20, align 16
  store i32 134517376, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  %55 = inttoptr i32 %arg.i.i to i8*
  %56 = tail call i32 @puts(i8* nonnull dereferenceable(1) %55)
  %tmp2_v.i11.i = add i32 %54, -112
  store i32 %tmp2_v.i11.i, i32* %20, align 16
  store i32 134517391, i32* %21, align 4
  %arg.i.i3 = load i32, i32* %20, align 16
  %57 = inttoptr i32 %arg.i.i3 to i8*
  %58 = tail call i32 @puts(i8* nonnull dereferenceable(1) %57)
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
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C++ TBAA"}
!24 = !{i32 0, i32 0, i32 0}
!25 = !{!"clang version 14.0.0"}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{i32 1, !"NumRegisterParameters", i32 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C++ TBAA"}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !33, i64 0}
!37 = !{i32 0, i32 0, i32 0}
!38 = !{!"printf"}
!39 = !{!"clang version 14.0.0"}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{i32 1, !"NumRegisterParameters", i32 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"double", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !47, i64 0}
!51 = !{i32 0, i32 0, i32 0, i32 0}
!52 = !{!"printf"}
!53 = !{!"clang version 14.0.0"}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{i32 1, !"NumRegisterParameters", i32 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"double", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!64, !64, i64 0}
!64 = !{!"int", !61, i64 0}
!65 = !{i32 0, i32 0, i32 0, i32 0}
!66 = !{!"printf"}
!67 = !{!"clang version 14.0.0"}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"PIC Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{i32 1, !"NumRegisterParameters", i32 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"double", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!78, !78, i64 0}
!78 = !{!"int", !75, i64 0}
!79 = !{i32 0, i32 0, i32 0, i32 0}
!80 = !{!"printf"}
!81 = !{!"clang version 14.0.0"}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 7, !"PIC Level", i32 2}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{i32 1, !"NumRegisterParameters", i32 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"double", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C++ TBAA"}
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !89, i64 0}
!93 = !{i32 0, i32 1, i32 2, i32 3, i32 4}
!94 = !{i32 0, i32 0, i32 0, i32 0}
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
