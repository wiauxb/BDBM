; Mutation 221
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack554 = internal global [8092 x i32] zeroinitializer, align 16
@stack533 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem145 = internal global [1024 x i8] zeroinitializer, align 1
@stack929 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem143 = internal global [1024 x i8] zeroinitializer, align 1
@stack416 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem141 = internal global [1024 x i8] zeroinitializer, align 1
@stack422 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem139 = internal global [1024 x i8] zeroinitializer, align 1
@stack486 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem137 = internal global [1024 x i8] zeroinitializer, align 1
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 
@stack325 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem135 = internal global [1024 x i8] zeroinitializer, align 1
@stack44 = internal global [8092 x i32] zeroinitializer, align 16
@stack299 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @__errno_location() local_unnamed_addr  noinline 
declare i32 @truncate(i32, i32) local_unnamed_addr  noinline 
@stack360 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem131 = internal global [1024 x i8] zeroinitializer, align 1
@stack844 = internal global [8092 x i32] zeroinitializer, align 16
@stack346 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem128 = internal global [1024 x i8] zeroinitializer, align 1
@stack873 = internal global [8092 x i32] zeroinitializer, align 16
@stack799 = internal global [8092 x i32] zeroinitializer, align 16
@stack970 = internal global [8092 x i32] zeroinitializer, align 16
@df = internal unnamed_addr global i32 0
@_ZL6segmem124 = internal global [1024 x i8] zeroinitializer, align 1
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
@stack993 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem121 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @strncpy(i32, i32, i32) local_unnamed_addr  noinline 
@stack881 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem119 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 
@stack636 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem117 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @malloc(i32) local_unnamed_addr  noinline 
declare void @free(i32) local_unnamed_addr  noinline 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: store i32 134517414, i32* %25, align 4
@str.3.90 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520840, i32* %26, align 8
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: store i32 134520863, i32* %29, align 16
@str.2.93 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520866, i32* %40, align 4
@str.2.94 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520869, i32* %41, align 16
declare i8* @base64_decode(i8*)

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
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7
declare i32 @ptrace( i32, i32, i32, i32) naked noinline

;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

declare i32 @time(i32) local_unnamed_addr noinline 

;-------------------------------
; Function Attrs: norecurse
declare i32 @access(i32, i32) local_unnamed_addr noinline
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 
declare dso_local i32 @puts(i8*) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
declare i32 @atol(i32) local_unnamed_addr  noinline 
declare i32 @tolower(i32) local_unnamed_addr  noinline 
declare i32 @getenv(i32) local_unnamed_addr  noinline 
declare i32 @htonl(i32) local_unnamed_addr nofree noinline nosync nounwind readnone
declare double @atof(i32) local_unnamed_addr  noinline 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @atoi(i32) local_unnamed_addr  noinline 
declare void @perror(i32) local_unnamed_addr noinline
declare i32 @detect_vm()
declare i32 @usleep(i32) local_unnamed_addr  noinline 
declare i32 @alarm(i32) local_unnamed_addr noinline
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.89 = tail call i32 @detect_vm()
  %must.escape.89 = icmp ne i32 %result.89, 0
  br i1 %must.escape.89, label %.escape.89, label %.proceed.89
.proceed.89:
;----------------------------
  %time2 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @min_distance_two_numbers361 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack360, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  tail call void @srand(i32 %time2)
  %rand_init19 = tail call i32 @rand()
  %rand_fin20 = srem i32 %rand_init19, 7
  %rand_init15 = tail call i32 @rand()
  %rand_fin16 = srem i32 %rand_init15, 7
  %rand_init11 = tail call i32 @rand()
  %rand_fin12 = srem i32 %rand_init11, 7
  %rand_init7 = tail call i32 @rand()
  %rand_fin8 = srem i32 %rand_init7, 7
  %rand_init3 = tail call i32 @rand()
  %rand_fin4 = srem i32 %rand_init3, 7
;----------------------------
  ; Detect tracing running
  %result.1 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.1 = icmp eq i32 %result.1, -1
  br i1 %must.escape.1, label %.escape.1, label %.proceed.1
.proceed.1:
;----------------------------
  %tmp2_v.i47.i = add i32 %arg_esp, 4
  %tmp0_v.i48.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i48.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i50.i = add i32 %tmp0_v.i48.i, -8
  %3 = inttoptr i32 %tmp2_v4.i50.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @count_unique930 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack929, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 0, i32* %3, align 8
  %tmp2_v5.i52.i = add i32 %tmp0_v.i48.i, -12
  %4 = inttoptr i32 %tmp2_v5.i52.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i54.i = add i32 %tmp0_v.i48.i, -16
  %5 = inttoptr i32 %tmp2_v6.i54.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i56.i = add i32 %tmp0_v.i48.i, -20
  %6 = inttoptr i32 %tmp2_v7.i56.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @if_elif_else555 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack554, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %tmp2_v.i47.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i48.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i26.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i26.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i28.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i28.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i32.i = add i32 %tmp0_v.i48.i, -44
  %12 = inttoptr i32 %tmp2_v6.i32.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %cipher.ptr.219 = alloca [5 x i8]
  store [5 x i8] c"\4d\51\41\3d\00", [5 x i8]* %cipher.ptr.219
  %cipher.219 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.219, i32 0, i32 0
  %plain.ptr.219 = tail call i8* @base64_decode(i8* %cipher.219)
  %spi219 = ptrtoint i8* %plain.ptr.219 to i32
  store i32 %spi219, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i33.i = add i32 %tmp0_v.i48.i, -48
  %13 = inttoptr i32 %tmp2_v7.i33.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i48.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i.i = icmp eq i32 %15, 0
  br i1 %.not.i.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i48.i, -40
  %16 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i50.i, i32* %16, align 8
;-------------------------------
;----------Random Cond----------
  %.not5.i.i = icmp eq i32 0 , %rand_fin4 
  br i1 %.not5.i.i, label %next5, label %BB_5
next5:
;-------------------------------
  store i32 134529024, i32* %12, align 4
  %es81 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a80 = tail call i32 @access( i32 %es81, i32 %9)
;-------------------------------
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i48.i, -68
  %17 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
  store i32 134517678, i32* %17, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i48.i, -72
  %18 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %18, align 8
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i48.i, -76
;-------------------------------
;--------Basic Condition--------
  %.not109.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not109.i.i, label %BB_109, label %next109
next109:
;-------------------------------
  %19 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 1, i32* %19, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i48.i, -80
  %20 = inttoptr i32 %tmp2_v4.i.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not105.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not105.i.i, label %BB_105, label %next105
next105:
;-------------------------------
  store i32 2, i32* %20, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i48.i, -84
;-------------------------------
;--------Added Syst Call--------
;-------------------------------
;--------Basic Condition--------
  %.not107.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not107.i.i, label %BB_107, label %next107
next107:
;-------------------------------
  %a88 = tail call i32 @socket(i32 %tmp0_v.i48.i, i32 %tmp0_v.i48.i, i32 %rand_init19)
;-------------------------------
  %21 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517705, i32* %21, align 4
  %arg.i.i.i = load i32, i32* %20, align 16
  %arg2.i.i.i = load i32, i32* %19, align 4
  %arg4.i.i.i = load i32, i32* %18, align 8
  %22 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
;-------------------------------
;--------Added Syst Call--------
  %a25 = tail call i32 @alarm (i32 %tmp0_v.i48.i)
;-------------------------------
  store i32 %22, i32* %14, align 4
;-------------------------------
;--------Basic Condition--------
  %.not97.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not97.i.i, label %BB_97, label %next97
next97:
;-------------------------------
  store i32 %22, i32* %20, align 16
  store i32 134517722, i32* %21, align 4
  %arg.i.i3.i = load i32, i32* %20, align 16
  %23 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i2.i.i5 = add i32 %tmp0_v.i48.i, -40
  %24 = inttoptr i32 %tmp2_v.i2.i.i5 to i32*
  store i32 %tmp2_v4.i50.i, i32* %24, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i6.i.i6 = add i32 %tmp0_v.i48.i, -68
;-------------------------------
;----------Random Cond----------
  %.not13.i.i = icmp eq i32 0 , %rand_fin12 
  br i1 %.not13.i.i, label %next13, label %BB_5
next13:
;-------------------------------
  %25 = inttoptr i32 %tmp2_v2.i6.i.i6 to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %25, align 4
  %sp90 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.90 = load [1 x i8], [1 x i8]* @str.0.90
  %cipher.ptr.186 = alloca [5 x i8]
  store [5 x i8] c"\42\51\3d\3d\00", [5 x i8]* %cipher.ptr.186
  %cipher.186 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.186, i32 0, i32 0
  %plain.ptr.186 = tail call i8* @base64_decode(i8* %cipher.186)
  %spi186 = bitcast i8* %plain.ptr.186 to [1 x i8]*
  %s0.90 = load [1 x i8], [1 x i8]* %spi186
;-------------------------------
  %sp0.90 = bitcast [4 x i8]* %sp90 to [1 x i8]*
  store [1 x i8] %s0.90, [1 x i8]* %sp0.90
  %next0.90 = getelementptr [4 x i8], [4 x i8]* %sp90, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.90 = load [1 x i8], [1 x i8]* @str.1.90
  %cipher.ptr.185 = alloca [5 x i8]
  store [5 x i8] c"\57\67\3d\3d\00", [5 x i8]* %cipher.ptr.185
  %cipher.185 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.185, i32 0, i32 0
  %plain.ptr.185 = tail call i8* @base64_decode(i8* %cipher.185)
  %spi185 = bitcast i8* %plain.ptr.185 to [1 x i8]*
  %s1.90 = load [1 x i8], [1 x i8]* %spi185
;-------------------------------
  %sp1.90 = bitcast i8* %next0.90 to [1 x i8]*
  store [1 x i8] %s1.90, [1 x i8]* %sp1.90
  %next1.90 = getelementptr [4 x i8], [4 x i8]* %sp90, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.90 = load [1 x i8], [1 x i8]* @str.2.90
  %cipher.ptr.184 = alloca [5 x i8]
  store [5 x i8] c"\4c\51\3d\3d\00", [5 x i8]* %cipher.ptr.184
  %cipher.184 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.184, i32 0, i32 0
  %plain.ptr.184 = tail call i8* @base64_decode(i8* %cipher.184)
  %spi184 = bitcast i8* %plain.ptr.184 to [1 x i8]*
  %s2.90 = load [1 x i8], [1 x i8]* %spi184
;-------------------------------
  %sp2.90 = bitcast i8* %next1.90 to [1 x i8]*
  store [1 x i8] %s2.90, [1 x i8]* %sp2.90
  %next2.90 = getelementptr [4 x i8], [4 x i8]* %sp90, i32 0, i32 3
  
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @smallest_word_print882 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack881, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %s3.90 = load [1 x i8], [1 x i8]* @str.3.90
  %sp3.90 = bitcast i8* %next2.90 to [1 x i8]*
  store [1 x i8] %s3.90, [1 x i8]* %sp3.90

  %spi90 = ptrtoint [4 x i8]* %sp90 to i32
  store i32 %spi90, i32* %25, align 4
;-------------------------------
  %tmp2_v1.i.i.i7 = add i32 %tmp0_v.i48.i, -56
  %26 = inttoptr i32 %tmp2_v1.i.i.i7 to i32*
  %es38 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a37 = tail call i32 @strlen(i32 %es38)
;-------------------------------
;-------------------------------
; Replace: store i32 134520840, i32* %26, align 8
  %sp91 = alloca [14 x i8]
  
;-------------------------------
; Replace: %s0.91 = load [2 x i8], [2 x i8]* @str.0.91
  %cipher.ptr.191 = alloca [5 x i8]
  store [5 x i8] c"\53\53\41\3d\00", [5 x i8]* %cipher.ptr.191
  %cipher.191 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.191, i32 0, i32 0
  %plain.ptr.191 = tail call i8* @base64_decode(i8* %cipher.191)
  %spi191 = bitcast i8* %plain.ptr.191 to [2 x i8]*
  %s0.91 = load [2 x i8], [2 x i8]* %spi191
;-------------------------------
  %sp0.91 = bitcast [14 x i8]* %sp91 to [2 x i8]*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @second_lowest347 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack346, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store [2 x i8] %s0.91, [2 x i8]* %sp0.91
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @dice_roll800 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack799, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %next0.91 = getelementptr [14 x i8], [14 x i8]* %sp91, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.91 = load [2 x i8], [2 x i8]* @str.1.91
  %cipher.ptr.188 = alloca [5 x i8]
  store [5 x i8] c"\59\57\30\3d\00", [5 x i8]* %cipher.ptr.188
  %cipher.188 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.188, i32 0, i32 0
  %plain.ptr.188 = tail call i8* @base64_decode(i8* %cipher.188)
  %spi188 = bitcast i8* %plain.ptr.188 to [2 x i8]*
  %s1.91 = load [2 x i8], [2 x i8]* %spi188
;-------------------------------
  %sp1.91 = bitcast i8* %next0.91 to [2 x i8]*
  store [2 x i8] %s1.91, [2 x i8]* %sp1.91
  %next1.91 = getelementptr [14 x i8], [14 x i8]* %sp91, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.91 = load [3 x i8], [3 x i8]* @str.2.91
  %cipher.ptr.190 = alloca [5 x i8]
  store [5 x i8] c"\49\47\56\32\00", [5 x i8]* %cipher.ptr.190
  %cipher.190 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.190, i32 0, i32 0
  %plain.ptr.190 = tail call i8* @base64_decode(i8* %cipher.190)
  %spi190 = bitcast i8* %plain.ptr.190 to [3 x i8]*
  %s2.91 = load [3 x i8], [3 x i8]* %spi190
;-------------------------------
  %sp2.91 = bitcast i8* %next1.91 to [3 x i8]*
  store [3 x i8] %s2.91, [3 x i8]* %sp2.91
  %next2.91 = getelementptr [14 x i8], [14 x i8]* %sp91, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.91 = load [2 x i8], [2 x i8]* @str.3.91
  %cipher.ptr.192 = alloca [5 x i8]
  store [5 x i8] c"\61\57\77\3d\00", [5 x i8]* %cipher.ptr.192
  %cipher.192 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.192, i32 0, i32 0
  %plain.ptr.192 = tail call i8* @base64_decode(i8* %cipher.192)
  %spi192 = bitcast i8* %plain.ptr.192 to [2 x i8]*
  %s3.91 = load [2 x i8], [2 x i8]* %spi192
;-------------------------------
  %sp3.91 = bitcast i8* %next2.91 to [2 x i8]*
  store [2 x i8] %s3.91, [2 x i8]* %sp3.91
  %next3.91 = getelementptr [14 x i8], [14 x i8]* %sp91, i32 0, i32 9
  
;-------------------------------
;--------Basic Condition--------
  %.not111.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not111.i.i, label %BB_111, label %next111
next111:
;-------------------------------
;-------------------------------
; Replace: %s4.91 = load [2 x i8], [2 x i8]* @str.4.91
  %cipher.ptr.189 = alloca [5 x i8]
  store [5 x i8] c"\49\53\45\3d\00", [5 x i8]* %cipher.ptr.189
  %cipher.189 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.189, i32 0, i32 0
  %plain.ptr.189 = tail call i8* @base64_decode(i8* %cipher.189)
  %spi189 = bitcast i8* %plain.ptr.189 to [2 x i8]*
  %s4.91 = load [2 x i8], [2 x i8]* %spi189
;-------------------------------
  %sp4.91 = bitcast i8* %next3.91 to [2 x i8]*
  store [2 x i8] %s4.91, [2 x i8]* %sp4.91
  %next4.91 = getelementptr [14 x i8], [14 x i8]* %sp91, i32 0, i32 11
  
;-------------------------------
; Replace: %s5.91 = load [3 x i8], [3 x i8]* @str.5.91
  %cipher.ptr.187 = alloca [5 x i8]
  store [5 x i8] c"\49\51\6f\41\00", [5 x i8]* %cipher.ptr.187
  %cipher.187 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.187, i32 0, i32 0
  %plain.ptr.187 = tail call i8* @base64_decode(i8* %cipher.187)
  %spi187 = bitcast i8* %plain.ptr.187 to [3 x i8]*
  %s5.91 = load [3 x i8], [3 x i8]* %spi187
;-------------------------------
  %sp5.91 = bitcast i8* %next4.91 to [3 x i8]*
;-------------------------------
;--------Basic Condition--------
  %.not103.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not103.i.i, label %BB_103, label %next103
next103:
;-------------------------------
  store [3 x i8] %s5.91, [3 x i8]* %sp5.91

  %spi91 = ptrtoint [14 x i8]* %sp91 to i32
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @constants417 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack416, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %spi91, i32* %26, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp92 = alloca [9 x i8]
  
;-------------------------------
; Replace: %s0.92 = load [1 x i8], [1 x i8]* @str.0.92
  %cipher.ptr.194 = alloca [5 x i8]
  store [5 x i8] c"\51\67\3d\3d\00", [5 x i8]* %cipher.ptr.194
  %cipher.194 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.194, i32 0, i32 0
  %plain.ptr.194 = tail call i8* @base64_decode(i8* %cipher.194)
  %spi194 = bitcast i8* %plain.ptr.194 to [1 x i8]*
  %s0.92 = load [1 x i8], [1 x i8]* %spi194
;-------------------------------
  %sp0.92 = bitcast [9 x i8]* %sp92 to [1 x i8]*
  store [1 x i8] %s0.92, [1 x i8]* %sp0.92
  %next0.92 = getelementptr [9 x i8], [9 x i8]* %sp92, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.92 = load [2 x i8], [2 x i8]* @str.1.92
  %cipher.ptr.196 = alloca [5 x i8]
  store [5 x i8] c"\65\57\55\3d\00", [5 x i8]* %cipher.ptr.196
  %cipher.196 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.196, i32 0, i32 0
  %plain.ptr.196 = tail call i8* @base64_decode(i8* %cipher.196)
  %spi196 = bitcast i8* %plain.ptr.196 to [2 x i8]*
  %s1.92 = load [2 x i8], [2 x i8]* %spi196
;-------------------------------
  %sp1.92 = bitcast i8* %next0.92 to [2 x i8]*
  store [2 x i8] %s1.92, [2 x i8]* %sp1.92
  %next1.92 = getelementptr [9 x i8], [9 x i8]* %sp92, i32 0, i32 3
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @hello45 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack44, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  
;-------------------------------
; Replace: %s2.92 = load [1 x i8], [1 x i8]* @str.2.92
  %cipher.ptr.197 = alloca [5 x i8]
  store [5 x i8] c"\49\41\3d\3d\00", [5 x i8]* %cipher.ptr.197
  %cipher.197 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.197, i32 0, i32 0
  %plain.ptr.197 = tail call i8* @base64_decode(i8* %cipher.197)
  %spi197 = bitcast i8* %plain.ptr.197 to [1 x i8]*
  %s2.92 = load [1 x i8], [1 x i8]* %spi197
;-------------------------------
  %sp2.92 = bitcast i8* %next1.92 to [1 x i8]*
  store [1 x i8] %s2.92, [1 x i8]* %sp2.92
  %next2.92 = getelementptr [9 x i8], [9 x i8]* %sp92, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.92 = load [2 x i8], [2 x i8]* @str.3.92
  %cipher.ptr.195 = alloca [5 x i8]
  store [5 x i8] c"\51\6e\6b\3d\00", [5 x i8]* %cipher.ptr.195
  %cipher.195 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.195, i32 0, i32 0
  %plain.ptr.195 = tail call i8* @base64_decode(i8* %cipher.195)
  %spi195 = bitcast i8* %plain.ptr.195 to [2 x i8]*
  %s3.92 = load [2 x i8], [2 x i8]* %spi195
;-------------------------------
  %sp3.92 = bitcast i8* %next2.92 to [2 x i8]*
  store [2 x i8] %s3.92, [2 x i8]* %sp3.92
  %next3.92 = getelementptr [9 x i8], [9 x i8]* %sp92, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.92 = load [1 x i8], [1 x i8]* @str.4.92
  %cipher.ptr.198 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.198
  %cipher.198 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.198, i32 0, i32 0
  %plain.ptr.198 = tail call i8* @base64_decode(i8* %cipher.198)
  %spi198 = bitcast i8* %plain.ptr.198 to [1 x i8]*
  %s4.92 = load [1 x i8], [1 x i8]* %spi198
;-------------------------------
;-------------------------------
;--------Basic Condition--------
  %.not101.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not101.i.i, label %BB_101, label %next101
next101:
;-------------------------------
  %sp4.92 = bitcast i8* %next3.92 to [1 x i8]*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @find_first_char_occurrence326 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack325, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store [1 x i8] %s4.92, [1 x i8]* %sp4.92
  %next4.92 = getelementptr [9 x i8], [9 x i8]* %sp92, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.92 = load [2 x i8], [2 x i8]* @str.5.92
  %cipher.ptr.193 = alloca [5 x i8]
  store [5 x i8] c"\43\67\41\3d\00", [5 x i8]* %cipher.ptr.193
  %cipher.193 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.193, i32 0, i32 0
  %plain.ptr.193 = tail call i8* @base64_decode(i8* %cipher.193)
  %spi193 = bitcast i8* %plain.ptr.193 to [2 x i8]*
  %s5.92 = load [2 x i8], [2 x i8]* %spi193
;-------------------------------
  %sp5.92 = bitcast i8* %next4.92 to [2 x i8]*
  store [2 x i8] %s5.92, [2 x i8]* %sp5.92

  %spi92 = ptrtoint [9 x i8]* %sp92 to i32
  store i32 %spi92, i32* %14, align 4
;-------------------------------
  %27 = load i32, i32* %26, align 8
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @sum423 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack422, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i48.i, -76
  %28 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  %es83 = load i32, i32* %12, align 16
  %es84 = load i32, i32* %26, align 16
;-------------------------------
;--------Added Syst Call--------
  %a82 = tail call i32 @strcmp( i32 %es83, i32 %es84)
;-------------------------------
  store i32 %27, i32* %28, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i48.i, -80
  %29 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %29, align 16
  %sp93 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.93 = load [1 x i8], [1 x i8]* @str.0.93
  %cipher.ptr.199 = alloca [5 x i8]
  store [5 x i8] c"\4a\51\3d\3d\00", [5 x i8]* %cipher.ptr.199
  %cipher.199 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.199, i32 0, i32 0
  %plain.ptr.199 = tail call i8* @base64_decode(i8* %cipher.199)
  %spi199 = bitcast i8* %plain.ptr.199 to [1 x i8]*
  %s0.93 = load [1 x i8], [1 x i8]* %spi199
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @strcpy_strncpy994 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack993, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %sp0.93 = bitcast [3 x i8]* %sp93 to [1 x i8]*
  store [1 x i8] %s0.93, [1 x i8]* %sp0.93
  %next0.93 = getelementptr [3 x i8], [3 x i8]* %sp93, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.93 = load [1 x i8], [1 x i8]* @str.1.93
  %cipher.ptr.200 = alloca [5 x i8]
  store [5 x i8] c"\63\77\3d\3d\00", [5 x i8]* %cipher.ptr.200
  %cipher.200 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.200, i32 0, i32 0
  %plain.ptr.200 = tail call i8* @base64_decode(i8* %cipher.200)
  %spi200 = bitcast i8* %plain.ptr.200 to [1 x i8]*
  %s1.93 = load [1 x i8], [1 x i8]* %spi200
;-------------------------------
  %sp1.93 = bitcast i8* %next0.93 to [1 x i8]*
  store [1 x i8] %s1.93, [1 x i8]* %sp1.93
  %next1.93 = getelementptr [3 x i8], [3 x i8]* %sp93, i32 0, i32 2
  
  %s2.93 = load [1 x i8], [1 x i8]* @str.2.93
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @random_double667 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack666, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %sp2.93 = bitcast i8* %next1.93 to [1 x i8]*
  store [1 x i8] %s2.93, [1 x i8]* %sp2.93

  %spi93 = ptrtoint [3 x i8]* %sp93 to i32
  store i32 %spi93, i32* %29, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i48.i, -84
  %30 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %30, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i47.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %32 = load i32, i32* %8, align 4
  %tmp0_v1.i18.i = add i32 %32, 4
  %33 = inttoptr i32 %tmp0_v1.i18.i to i32*
  %34 = load i32, i32* %33, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %cipher.ptr.220 = alloca [5 x i8]
  store [5 x i8] c"\4d\77\41\3d\00", [5 x i8]* %cipher.ptr.220
  %cipher.220 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.220, i32 0, i32 0
  %plain.ptr.220 = tail call i8* @base64_decode(i8* %cipher.220)
  %spi220 = ptrtoint i8* %plain.ptr.220 to i32
  store i32 %spi220, i32* %12, align 4
;-------------------------------
;-------------------------------
;----------Random Cond----------
  %.not17.i.i = icmp eq i32 0 , %rand_fin16 
  br i1 %.not17.i.i, label %next17, label %BB_5
next17:
;-------------------------------
  store i32 %34, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i9 = load i32, i32* %13, align 16
  %arg2.i.i10 = load i32, i32* %12, align 4
  %35 = tail call i32 @strcmp(i32 %arg.i.i9, i32 %arg2.i.i10)
;-------------------------------
;--------Basic Condition--------
  %.not115.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not115.i.i, label %BB_115, label %next115
next115:
;-------------------------------
  %.not.i9.i = icmp eq i32 %35, 0
  br i1 %.not.i9.i, label %BB_8049472.i, label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %es34 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a33 = tail call i32 @atoi(i32 %es34)
;-------------------------------
  %tmp2_v.i23.i.i = add i32 %tmp0_v.i48.i, -40
  %36 = inttoptr i32 %tmp2_v.i23.i.i to i32*
  %es51 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a50 = tail call i32 @tolower(i32 %es51)
;-------------------------------
  store i32 %tmp2_v4.i50.i, i32* %36, align 8
;-------------------------------
;----------Random Cond----------
  %.not21.i.i = icmp eq i32 0 , %rand_fin20 
  br i1 %.not21.i.i, label %next21, label %BB_5
next21:
;-------------------------------
  %es42 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a41 = tail call double @atof(i32 %es42)
;-------------------------------
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i28.i.i = add i32 %tmp0_v.i48.i, -84
  %37 = inttoptr i32 %tmp2_v2.i28.i.i to i32*
  store i32 134517482, i32* %37, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %38 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %39 = load i32, i32* %38, align 4
;-------------------------------
;--------Added Syst Call--------
  %a30 = tail call i32 @time(i32 %tmp0_v.i48.i)
;-------------------------------
  store i32 %39, i32* %14, align 4
  %tmp2_v5.i.i.i13 = add i32 %tmp0_v.i48.i, -92
  %40 = inttoptr i32 %tmp2_v5.i.i.i13 to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %40, align 4
  %sp94 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.94 = load [1 x i8], [1 x i8]* @str.0.94
  %cipher.ptr.202 = alloca [5 x i8]
  store [5 x i8] c"\64\77\3d\3d\00", [5 x i8]* %cipher.ptr.202
  %cipher.202 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.202, i32 0, i32 0
  %plain.ptr.202 = tail call i8* @base64_decode(i8* %cipher.202)
  %spi202 = bitcast i8* %plain.ptr.202 to [1 x i8]*
  %s0.94 = load [1 x i8], [1 x i8]* %spi202
;-------------------------------
  %sp0.94 = bitcast [3 x i8]* %sp94 to [1 x i8]*
  store [1 x i8] %s0.94, [1 x i8]* %sp0.94
  %next0.94 = getelementptr [3 x i8], [3 x i8]* %sp94, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.94 = load [1 x i8], [1 x i8]* @str.1.94
  %cipher.ptr.201 = alloca [5 x i8]
  store [5 x i8] c"\4b\77\3d\3d\00", [5 x i8]* %cipher.ptr.201
  %cipher.201 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.201, i32 0, i32 0
  %plain.ptr.201 = tail call i8* @base64_decode(i8* %cipher.201)
  %spi201 = bitcast i8* %plain.ptr.201 to [1 x i8]*
  %s1.94 = load [1 x i8], [1 x i8]* %spi201
;-------------------------------
  %sp1.94 = bitcast i8* %next0.94 to [1 x i8]*
  store [1 x i8] %s1.94, [1 x i8]* %sp1.94
  %next1.94 = getelementptr [3 x i8], [3 x i8]* %sp94, i32 0, i32 2
  
  %s2.94 = load [1 x i8], [1 x i8]* @str.2.94
  %sp2.94 = bitcast i8* %next1.94 to [1 x i8]*
  store [1 x i8] %s2.94, [1 x i8]* %sp2.94

  %spi94 = ptrtoint [3 x i8]* %sp94 to i32
  store i32 %spi94, i32* %40, align 4
;-------------------------------
  %tmp2_v7.i.i.i14 = add i32 %tmp0_v.i48.i, -96
  %41 = inttoptr i32 %tmp2_v7.i.i.i14 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %41, align 16
  %sp95 = alloca [15 x i8]
  
;-------------------------------
; Replace: %s0.95 = load [2 x i8], [2 x i8]* @str.0.95
  %cipher.ptr.205 = alloca [5 x i8]
  store [5 x i8] c"\64\47\55\3d\00", [5 x i8]* %cipher.ptr.205
  %cipher.205 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.205, i32 0, i32 0
  %plain.ptr.205 = tail call i8* @base64_decode(i8* %cipher.205)
  %spi205 = bitcast i8* %plain.ptr.205 to [2 x i8]*
  %s0.95 = load [2 x i8], [2 x i8]* %spi205
;-------------------------------
  %sp0.95 = bitcast [15 x i8]* %sp95 to [2 x i8]*
  store [2 x i8] %s0.95, [2 x i8]* %sp0.95
  %next0.95 = getelementptr [15 x i8], [15 x i8]* %sp95, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.95 = load [3 x i8], [3 x i8]* @str.1.95
  %cipher.ptr.206 = alloca [5 x i8]
  store [5 x i8] c"\65\48\52\66\00", [5 x i8]* %cipher.ptr.206
  %cipher.206 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.206, i32 0, i32 0
  %plain.ptr.206 = tail call i8* @base64_decode(i8* %cipher.206)
  %spi206 = bitcast i8* %plain.ptr.206 to [3 x i8]*
  %s1.95 = load [3 x i8], [3 x i8]* %spi206
;-------------------------------
;-------------------------------
;--------Basic Condition--------
  %.not99.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not99.i.i, label %BB_99, label %next99
next99:
;-------------------------------
  %sp1.95 = bitcast i8* %next0.95 to [3 x i8]*
  store [3 x i8] %s1.95, [3 x i8]* %sp1.95
  %next1.95 = getelementptr [15 x i8], [15 x i8]* %sp95, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.95 = load [2 x i8], [2 x i8]* @str.2.95
  %cipher.ptr.203 = alloca [5 x i8]
  store [5 x i8] c"\5a\6d\6b\3d\00", [5 x i8]* %cipher.ptr.203
  %cipher.203 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.203, i32 0, i32 0
  %plain.ptr.203 = tail call i8* @base64_decode(i8* %cipher.203)
  %spi203 = bitcast i8* %plain.ptr.203 to [2 x i8]*
  %s2.95 = load [2 x i8], [2 x i8]* %spi203
;-------------------------------
  %sp2.95 = bitcast i8* %next1.95 to [2 x i8]*
  store [2 x i8] %s2.95, [2 x i8]* %sp2.95
  %next2.95 = getelementptr [15 x i8], [15 x i8]* %sp95, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.95 = load [3 x i8], [3 x i8]* @str.3.95
  %cipher.ptr.207 = alloca [5 x i8]
  store [5 x i8] c"\62\47\55\7a\00", [5 x i8]* %cipher.ptr.207
  %cipher.207 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.207, i32 0, i32 0
  %plain.ptr.207 = tail call i8* @base64_decode(i8* %cipher.207)
  %spi207 = bitcast i8* %plain.ptr.207 to [3 x i8]*
  %s3.95 = load [3 x i8], [3 x i8]* %spi207
;-------------------------------
  %sp3.95 = bitcast i8* %next2.95 to [3 x i8]*
  store [3 x i8] %s3.95, [3 x i8]* %sp3.95
  %next3.95 = getelementptr [15 x i8], [15 x i8]* %sp95, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.95 = load [2 x i8], [2 x i8]* @str.4.95
  %cipher.ptr.208 = alloca [5 x i8]
  store [5 x i8] c"\4c\6e\51\3d\00", [5 x i8]* %cipher.ptr.208
  %cipher.208 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.208, i32 0, i32 0
  %plain.ptr.208 = tail call i8* @base64_decode(i8* %cipher.208)
  %spi208 = bitcast i8* %plain.ptr.208 to [2 x i8]*
  %s4.95 = load [2 x i8], [2 x i8]* %spi208
;-------------------------------
  %sp4.95 = bitcast i8* %next3.95 to [2 x i8]*
  store [2 x i8] %s4.95, [2 x i8]* %sp4.95
  %next4.95 = getelementptr [15 x i8], [15 x i8]* %sp95, i32 0, i32 12
  
;-------------------------------
; Replace: %s5.95 = load [3 x i8], [3 x i8]* @str.5.95
  %cipher.ptr.204 = alloca [5 x i8]
  store [5 x i8] c"\65\48\51\41\00", [5 x i8]* %cipher.ptr.204
  %cipher.204 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.204, i32 0, i32 0
  %plain.ptr.204 = tail call i8* @base64_decode(i8* %cipher.204)
  %spi204 = bitcast i8* %plain.ptr.204 to [3 x i8]*
  %s5.95 = load [3 x i8], [3 x i8]* %spi204
;-------------------------------
  %sp5.95 = bitcast i8* %next4.95 to [3 x i8]*
  store [3 x i8] %s5.95, [3 x i8]* %sp5.95

;-------------------------------
;--------Basic Condition--------
  %.not113.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not113.i.i, label %BB_113, label %next113
next113:
;-------------------------------
  %spi95 = ptrtoint [15 x i8]* %sp95 to i32
  store i32 %spi95, i32* %41, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i48.i, -100
  %42 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  %es47 = load i32, i32* %41, align 16
;-------------------------------
;--------Added Syst Call--------
  %a46 = tail call i32 @getenv(i32 %es47)
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @print_until_newline487 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack486, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517521, i32* %42, align 4
  %es78 = load i32, i32* %12, align 16
  %es79 = load i32, i32* %41, align 16
;-------------------------------
;--------Added Syst Call--------
  %a77 = tail call i32 @strstr( i32 %es78, i32 %es79)
;-------------------------------
  %arg.i.i.i15 = load i32, i32* %41, align 16
  %es61 = load i32, i32* %40, align 16
;-------------------------------
;--------Added Syst Call--------
  %a60 = tail call i32 @atol(i32 %es61)
;-------------------------------
  %arg2.i.i.i16 = load i32, i32* %40, align 4
  %43 = tail call i32 @fopen(i32 %arg.i.i.i15, i32 %arg2.i.i.i16)
;-------------------------------
;----------Random Cond----------
  %.not9.i.i = icmp eq i32 0 , %rand_fin8 
  br i1 %.not9.i.i, label %next9, label %BB_5
next9:
;-------------------------------
  %tmp2_v.i19.i.i = add i32 %tmp0_v.i48.i, -76
;-------------------------------
;--------Added Syst Call--------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @check_parity874 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack873, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @truncate300 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack299, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %a45 = tail call i32 @htonl(i32 %tmp0_v.i48.i)
;-------------------------------
  %arg.i.i69 = load i32, i32* %40, align 16  %el70= inttoptr i32 %arg.i.i69 to i8*
;-------------------------------
;--------Added Syst Call--------
  %a68 = tail call i32 @puts(i8* %el70)
;-------------------------------
  %44 = inttoptr i32 %tmp2_v.i19.i.i to i32*
  store i32 %43, i32* %44, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i48.i, -72
  %45 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 1818304585, i32* %45, align 8
  %es56 = load i32, i32* %41, align 16
;-------------------------------
;--------Added Syst Call--------
  %a55 = tail call i32 @fopen( i32 %es56, i32 %tmp2_v8.i.i.i)
;-------------------------------
  %tmp2_v1.i.i.i17 = add i32 %tmp0_v.i48.i, -68
  %46 = inttoptr i32 %tmp2_v1.i.i.i17 to i32*
  store i32 1701995892, i32* %46, align 4
  %tmp2_v2.i8.i.i = add i32 %tmp0_v.i48.i, -64
  %47 = inttoptr i32 %tmp2_v2.i8.i.i to i32*
  store i32 1752440932, i32* %47, align 16
  %tmp2_v3.i.i.i18 = add i32 %tmp0_v.i48.i, -60
  %48 = inttoptr i32 %tmp2_v3.i.i.i18 to i32*
  store i32 1768300645, i32* %48, align 4
  %es29 = load i32, i32* %41, align 16
;-------------------------------
;--------Added Syst Call--------
  tail call void @perror(i32 %es29)
;-------------------------------
  %tmp2_v4.i9.i.i = add i32 %tmp0_v.i48.i, -56
  %49 = inttoptr i32 %tmp2_v4.i9.i.i to i32*
  store i32 2188652, i32* %49, align 8
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @structure_padding845 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack844, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %50 = load i32, i32* %44, align 4
  store i32 %50, i32* %37, align 4
  %tmp2_v7.i14.i.i = add i32 %tmp0_v.i48.i, -88
  %51 = inttoptr i32 %tmp2_v7.i14.i.i to i32*
  store i32 20, i32* %51, align 8
  store i32 1, i32* %40, align 4
  store i32 %tmp2_v.i7.i.i, i32* %41, align 16
  store i32 134517622, i32* %42, align 4
  %arg.i.i4.i = load i32, i32* %41, align 16
  %arg2.i.i5.i = load i32, i32* %40, align 4
  %arg4.i.i.i19 = load i32, i32* %51, align 8
  %arg6.i.i.i = load i32, i32* %37, align 4
  %52 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i19, i32 %arg6.i.i.i)
  %53 = load i32, i32* %44, align 4
;-------------------------------
;--------Added Syst Call--------
  %a26 = tail call i32 @usleep(i32 %tmp2_v2.i8.i.i)
;-------------------------------
  store i32 %53, i32* %41, align 16
  store i32 134517636, i32* %42, align 4
  %arg.i.i6.i = load i32, i32* %41, align 16
  %54 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i37.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i37.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %cipher.ptr.221 = alloca [5 x i8]
  store [5 x i8] c"\4d\67\41\3d\00", [5 x i8]* %cipher.ptr.221
  %cipher.221 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.221, i32 0, i32 0
  %plain.ptr.221 = tail call i8* @base64_decode(i8* %cipher.221)
  %spi221 = ptrtoint i8* %plain.ptr.221 to i32
  store i32 %spi221, i32* %12, align 4
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i20 = load i32, i32* %13, align 16
  %arg2.i.i21 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i20, i32 %arg2.i.i21)
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @queue_linked_list637 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack636, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %.not.i14.i = icmp eq i32 %58, 0
  br i1 %.not.i14.i, label %BB_804944C.i, label %BB_8049453.i

.exit:                                            ; preds = %BB_804944C.i, %BB_8049453.i, %BB_8049426.i, %BB_8049472.i
  ret void
.escape.1:
  ret void
BB_5:
  ret void
.escape.89:
  ret void
BB_97:
;-------------------------------
; Replace: %cast97= getelementptr [10 x i8], [10 x i8]* @.str96, i64 0, i64 0
  %cipher.ptr.209 = alloca [17 x i8]
  store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.209
  %cipher.209 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.209, i32 0, i32 0
  %plain.ptr.209 = tail call i8* @base64_decode(i8* %cipher.209)
  %spi209 = bitcast i8* %plain.ptr.209 to [10 x i8]*
  %cast97= getelementptr [10 x i8], [10 x i8]* %spi209, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast97)
  br label %next97
BB_99:
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @print_unique534 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack533, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
; Replace: %cast99= getelementptr [9 x i8], [9 x i8]* @.str98, i64 0, i64 0
  %cipher.ptr.210 = alloca [13 x i8]
  store [13 x i8] c"\65\6d\56\6d\61\63\53\31\61\48\51\41\00", [13 x i8]* %cipher.ptr.210
  %cipher.210 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.210, i32 0, i32 0
  %plain.ptr.210 = tail call i8* @base64_decode(i8* %cipher.210)
  %spi210 = bitcast i8* %plain.ptr.210 to [9 x i8]*
  %cast99= getelementptr [9 x i8], [9 x i8]* %spi210, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast99)
  br label %next99
BB_101:
;-------------------------------
; Replace: %cast101= getelementptr [10 x i8], [10 x i8]* @.str100, i64 0, i64 0
  %cipher.ptr.211 = alloca [17 x i8]
  store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.211
  %cipher.211 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.211, i32 0, i32 0
  %plain.ptr.211 = tail call i8* @base64_decode(i8* %cipher.211)
  %spi211 = bitcast i8* %plain.ptr.211 to [10 x i8]*
  %cast101= getelementptr [10 x i8], [10 x i8]* %spi211, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast101)
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @remove_duplicates_efficient971 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack970, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  br label %next101
BB_103:
;-------------------------------
; Replace: %cast103= getelementptr [10 x i8], [10 x i8]* @.str102, i64 0, i64 0
  %cipher.ptr.212 = alloca [17 x i8]
  store [17 x i8] c"\52\47\56\31\65\47\6e\44\71\47\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.212
  %cipher.212 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.212, i32 0, i32 0
  %plain.ptr.212 = tail call i8* @base64_decode(i8* %cipher.212)
  %spi212 = bitcast i8* %plain.ptr.212 to [10 x i8]*
  %cast103= getelementptr [10 x i8], [10 x i8]* %spi212, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast103)
  br label %next103
BB_105:
;-------------------------------
; Replace: %cast105= getelementptr [11 x i8], [11 x i8]* @.str104, i64 0, i64 0
  %cipher.ptr.213 = alloca [17 x i8]
  store [17 x i8] c"\5a\47\56\79\5a\32\4a\71\65\6d\56\72\59\51\41\3d\00", [17 x i8]* %cipher.ptr.213
  %cipher.213 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.213, i32 0, i32 0
  %plain.ptr.213 = tail call i8* @base64_decode(i8* %cipher.213)
  %spi213 = bitcast i8* %plain.ptr.213 to [11 x i8]*
  %cast105= getelementptr [11 x i8], [11 x i8]* %spi213, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast105)
  br label %next105
BB_107:
;-------------------------------
; Replace: %cast107= getelementptr [10 x i8], [10 x i8]* @.str106, i64 0, i64 0
  %cipher.ptr.214 = alloca [17 x i8]
  store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.214
  %cipher.214 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.214, i32 0, i32 0
  %plain.ptr.214 = tail call i8* @base64_decode(i8* %cipher.214)
  %spi214 = bitcast i8* %plain.ptr.214 to [10 x i8]*
  %cast107= getelementptr [10 x i8], [10 x i8]* %spi214, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast107)
  br label %next107
BB_109:
;-------------------------------
; Replace: %cast109= getelementptr [10 x i8], [10 x i8]* @.str108, i64 0, i64 0
  %cipher.ptr.215 = alloca [17 x i8]
  store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.215
  %cipher.215 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.215, i32 0, i32 0
  %plain.ptr.215 = tail call i8* @base64_decode(i8* %cipher.215)
  %spi215 = bitcast i8* %plain.ptr.215 to [10 x i8]*
  %cast109= getelementptr [10 x i8], [10 x i8]* %spi215, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast109)
  br label %next109
BB_111:
;-------------------------------
; Replace: %cast111= getelementptr [11 x i8], [11 x i8]* @.str110, i64 0, i64 0
  %cipher.ptr.216 = alloca [17 x i8]
  store [17 x i8] c"\62\32\74\70\62\32\70\32\61\53\78\6c\63\67\41\3d\00", [17 x i8]* %cipher.ptr.216
  %cipher.216 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.216, i32 0, i32 0
  %plain.ptr.216 = tail call i8* @base64_decode(i8* %cipher.216)
  %spi216 = bitcast i8* %plain.ptr.216 to [11 x i8]*
  %cast111= getelementptr [11 x i8], [11 x i8]* %spi216, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast111)
  br label %next111
BB_113:
;-------------------------------
; Replace: %cast113= getelementptr [9 x i8], [9 x i8]* @.str112, i64 0, i64 0
  %cipher.ptr.217 = alloca [13 x i8]
  store [13 x i8] c"\65\6d\56\6d\61\63\53\31\61\48\51\41\00", [13 x i8]* %cipher.ptr.217
  %cipher.217 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.217, i32 0, i32 0
  %plain.ptr.217 = tail call i8* @base64_decode(i8* %cipher.217)
  %spi217 = bitcast i8* %plain.ptr.217 to [9 x i8]*
  %cast113= getelementptr [9 x i8], [9 x i8]* %spi217, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast113)
  br label %next113
BB_115:
;-------------------------------
; Replace: %cast115= getelementptr [11 x i8], [11 x i8]* @.str114, i64 0, i64 0
  %cipher.ptr.218 = alloca [17 x i8]
  store [17 x i8] c"\5a\47\56\79\5a\32\4a\71\65\6d\56\72\59\51\41\3d\00", [17 x i8]* %cipher.ptr.218
  %cipher.218 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.218, i32 0, i32 0
  %plain.ptr.218 = tail call i8* @base64_decode(i8* %cipher.218)
  %spi218 = bitcast i8* %plain.ptr.218 to [11 x i8]*
  %cast115= getelementptr [11 x i8], [11 x i8]* %spi218, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast115)
  br label %next115
}

define internal fastcc void @if_elif_else555(i32 %arg_esp) unnamed_addr  norecurse  !retregs !275 {
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
;-------------------------------
; Replace: %spi.bis.553 = ptrtoint[11 x i8]* @str.bis.553 to i32
  %cipher.ptr.153 = alloca [17 x i8]
  store [17 x i8] c"\55\47\78\68\64\47\5a\76\63\6d\30\67\4d\41\41\3d\00", [17 x i8]* %cipher.ptr.153
  %cipher.153 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.153, i32 0, i32 0
  %plain.ptr.153 = tail call i8* @base64_decode(i8* %cipher.153)
  %spi153 = bitcast i8* %plain.ptr.153 to [11 x i8]*
  %spi.bis.553 = ptrtoint[11 x i8]* %spi153 to i32
;-------------------------------
  store i32 %spi.bis.553, i32* %8, align 16
  %tmp2_v3.i25.i = add i32 %tmp0_v.i3.i, -36
  %9 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 134517219, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
;-------------------------------
; Replace: %spi.bis.552 = ptrtoint[11 x i8]* @str.bis.552 to i32
  %cipher.ptr.152 = alloca [17 x i8]
  store [17 x i8] c"\4d\43\42\70\63\79\42\6d\59\57\78\7a\5a\51\41\3d\00", [17 x i8]* %cipher.ptr.152
  %cipher.152 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.152, i32 0, i32 0
  %plain.ptr.152 = tail call i8* @base64_decode(i8* %cipher.152)
  %spi152 = bitcast i8* %plain.ptr.152 to [11 x i8]*
  %spi.bis.552 = ptrtoint[11 x i8]* %spi152 to i32
;-------------------------------
  store i32 %spi.bis.552, i32* %8, align 16
  store i32 134517237, i32* %9, align 4
  %arg.i.i1 = load i32, i32* %8, align 16
  %12 = inttoptr i32 %arg.i.i1 to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
;-------------------------------
; Replace: %spi.bis.551 = ptrtoint[18 x i8]* @str.bis.551 to i32
  %cipher.ptr.151 = alloca [25 x i8]
  store [25 x i8] c"\62\6d\39\75\4c\58\70\6c\63\6d\38\67\61\58\4d\67\64\48\4a\31\5a\53\45\41\00", [25 x i8]* %cipher.ptr.151
  %cipher.151 = getelementptr inbounds [25 x i8], [25 x i8]* %cipher.ptr.151, i32 0, i32 0
  %plain.ptr.151 = tail call i8* @base64_decode(i8* %cipher.151)
  %spi151 = bitcast i8* %plain.ptr.151 to [18 x i8]*
  %spi.bis.551 = ptrtoint[18 x i8]* %spi151 to i32
;-------------------------------
  store i32 %spi.bis.551, i32* %8, align 16
  store i32 134517255, i32* %9, align 4
  %arg.i.i2 = load i32, i32* %8, align 16
  %14 = inttoptr i32 %arg.i.i2 to i8*
  %15 = tail call i32 @puts(i8* nonnull dereferenceable(1) %14)
;-------------------------------
; Replace: %spi.bis.550 = ptrtoint[18 x i8]* @str.bis.550 to i32
  %cipher.ptr.150 = alloca [25 x i8]
  store [25 x i8] c"\56\6b\56\53\55\30\6c\50\54\6c\39\44\54\30\52\46\49\44\30\39\49\47\45\41\00", [25 x i8]* %cipher.ptr.150
  %cipher.150 = getelementptr inbounds [25 x i8], [25 x i8]* %cipher.ptr.150, i32 0, i32 0
  %plain.ptr.150 = tail call i8* @base64_decode(i8* %cipher.150)
  %spi150 = bitcast i8* %plain.ptr.150 to [18 x i8]*
  %spi.bis.550 = ptrtoint[18 x i8]* %spi150 to i32
;-------------------------------
  store i32 %spi.bis.550, i32* %8, align 16
  store i32 134517273, i32* %9, align 4
  %arg.i.i3 = load i32, i32* %8, align 16
  %16 = inttoptr i32 %arg.i.i3 to i8*
  %17 = tail call i32 @puts(i8* nonnull dereferenceable(1) %16)
  %tmp2_v.i29.i = add i32 %tmp0_v.i3.i, -28
  %18 = inttoptr i32 %tmp2_v.i29.i to i32*
  store i32 100, i32* %18, align 4
;-------------------------------
; Replace: %spi.bis.549 = ptrtoint[4 x i8]* @str.bis.549 to i32
  %cipher.ptr.149 = alloca [9 x i8]
  store [9 x i8] c"\4a\57\51\4b\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.149
  %cipher.149 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.149, i32 0, i32 0
  %plain.ptr.149 = tail call i8* @base64_decode(i8* %cipher.149)
  %spi149 = bitcast i8* %plain.ptr.149 to [4 x i8]*
  %spi.bis.549 = ptrtoint[4 x i8]* %spi149 to i32
;-------------------------------
  store i32 %spi.bis.549, i32* %8, align 16
  store i32 134517293, i32* %9, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v2.i24.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !276
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
;-------------------------------
; Replace: %spi.bis.548 = ptrtoint[14 x i8]* @str.bis.548 to i32
  %cipher.ptr.148 = alloca [21 x i8]
  store [21 x i8] c"\54\31\4d\67\61\58\4d\67\5a\47\56\6d\61\57\35\6c\5a\41\41\3d\00", [21 x i8]* %cipher.ptr.148
  %cipher.148 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.148, i32 0, i32 0
  %plain.ptr.148 = tail call i8* @base64_decode(i8* %cipher.148)
  %spi148 = bitcast i8* %plain.ptr.148 to [14 x i8]*
  %spi.bis.548 = ptrtoint[14 x i8]* %spi148 to i32
;-------------------------------
  store i32 %spi.bis.548, i32* %8, align 16
  store i32 134517311, i32* %9, align 4
  %arg.i.i6 = load i32, i32* %8, align 16
  %22 = inttoptr i32 %arg.i.i6 to i8*
  %23 = tail call i32 @puts(i8* nonnull dereferenceable(1) %22)
  store i32 500, i32* %18, align 4
;-------------------------------
; Replace: %spi.bis.547 = ptrtoint[11 x i8]* @str.bis.547 to i32
  %cipher.ptr.147 = alloca [17 x i8]
  store [17 x i8] c"\56\6d\46\73\64\57\55\36\49\43\56\6b\43\67\41\3d\00", [17 x i8]* %cipher.ptr.147
  %cipher.147 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.147, i32 0, i32 0
  %plain.ptr.147 = tail call i8* @base64_decode(i8* %cipher.147)
  %spi147 = bitcast i8* %plain.ptr.147 to [11 x i8]*
  %spi.bis.547 = ptrtoint[11 x i8]* %spi147 to i32
;-------------------------------
  store i32 %spi.bis.547, i32* %8, align 16
  store i32 134517334, i32* %9, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %21, i32 noundef %tmp2_v2.i24.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !276
  ret void
}
define internal fastcc void @print_unique534(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !261 {
.exit:
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
  store i32 %tmp2_v.i.i, i32* %4, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -84
  %5 = inttoptr i32 %tmp2_v7.i.i to i32*
;-------------------------------
; Replace: %spi.bis.532 = ptrtoint[4 x i8]* @str.bis.532 to i32
  %cipher.ptr.155 = alloca [9 x i8]
  store [9 x i8] c"\42\54\41\75\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.155
  %cipher.155 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.155, i32 0, i32 0
  %plain.ptr.155 = tail call i8* @base64_decode(i8* %cipher.155)
  %spi155 = bitcast i8* %plain.ptr.155 to [4 x i8]*
  %spi.bis.532 = ptrtoint[4 x i8]* %spi155 to i32
;-------------------------------
  store i32 %spi.bis.532, i32* %5, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i.i, -72
  %9 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 1, i32* %9, align 8
  %tmp2_v4.i5.i = add i32 %tmp0_v.i.i, -68
  %10 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 2, i32* %10, align 4
  %tmp2_v5.i6.i = add i32 %tmp0_v.i.i, -64
  %11 = inttoptr i32 %tmp2_v5.i6.i to i32*
  store i32 3, i32* %11, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i.i, -60
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %12, align 4
  %tmp2_v7.i7.i = add i32 %tmp0_v.i.i, -56
  %13 = inttoptr i32 %tmp2_v7.i7.i to i32*
  store i32 5, i32* %13, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %14, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -48
  %15 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %15, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -44
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 4, i32* %16, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -40
  %17 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %17, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -36
  %18 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 8, i32* %18, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -32
  %19 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 9, i32* %19, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -28
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 7, i32* %20, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -24
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 8, i32* %21, align 8
  %tmp2_v17.i.i = add i32 %tmp0_v.i.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 13, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i4.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517321, i32* %24, align 4
  %tmp2_v.i60.i.i = add i32 %tmp0_v.i.i, -104
  %25 = inttoptr i32 %tmp2_v.i60.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %25, align 8
  %tmp2_v1.i62.i.i = add i32 %tmp0_v.i.i, -108
  %26 = inttoptr i32 %tmp2_v1.i62.i.i to i32*
  store i32 0, i32* %26, align 4
  %tmp2_v2.i65.i.i = add i32 %tmp0_v.i.i, -132
  %27 = inttoptr i32 %tmp2_v2.i65.i.i to i32*
  store i32 134517370, i32* %27, align 4
  %tmp2_v.i88.i.i = add i32 %tmp0_v.i.i, -120
  %28 = inttoptr i32 %tmp2_v.i88.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %22, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_8049289.i.lr.ph.i, label %Func_print_unique.exit

BB_8049289.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i38.i.i = add i32 %tmp0_v.i.i, -121
  %31 = inttoptr i32 %tmp2_v.i38.i.i to i8*
  %tmp2_v1.i39.i.i = add i32 %tmp0_v.i.i, -116
  %32 = inttoptr i32 %tmp2_v1.i39.i.i to i32*
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i.i, -140
  %33 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %tmp2_v8.i48.i.i = add i32 %tmp0_v.i.i, -144
  %34 = inttoptr i32 %tmp2_v8.i48.i.i to i32*
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -148
  %35 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  br label %BB_8049289.i.i

BB_8049296.i.i:                                   ; preds = %BB_8049289.i.i, %BB_80492C8.i.i
  %storemerge27.i = phi i32 [ %tmp0_v1.i30.i.i, %BB_80492C8.i.i ], [ 0, %BB_8049289.i.i ]
  %36 = load i32, i32* %28, align 8
  %tmp4_v.i.i.i2 = shl i32 %36, 2
  %37 = load i32, i32* %23, align 16
  %tmp0_v3.i.i.i = add i32 %37, %tmp4_v.i.i.i2
  %38 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %39 = load i32, i32* %38, align 4
  %tmp4_v7.i.i.i = shl i32 %storemerge27.i, 2
  %tmp0_v10.i.i.i = add i32 %37, %tmp4_v7.i.i.i
  %40 = inttoptr i32 %tmp0_v10.i.i.i to i32*
  %41 = load i32, i32* %40, align 4
  %.not.i.i.i = icmp ne i32 %39, %41
  %42 = icmp eq i32 %36, %storemerge27.i
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %42
  br i1 %or.cond.i, label %BB_80492C8.i.i, label %BB_80492C4.i.i

BB_8049303.i.i:                                   ; preds = %BB_80492D4.i.i, %BB_80492DF.i.i
  %43 = load i32, i32* %28, align 8
  %tmp0_v1.i22.i.i = add i32 %43, 1
  store i32 %tmp0_v1.i22.i.i, i32* %28, align 8
  %44 = load i32, i32* %22, align 4
  %45 = icmp slt i32 %tmp0_v1.i22.i.i, %44
  br i1 %45, label %BB_8049289.i.i, label %Func_print_unique.exit

BB_80492C8.i.i:                                   ; preds = %BB_80492C4.i.i, %BB_8049296.i.i
  %46 = phi i32 [ %storemerge27.i, %BB_8049296.i.i ], [ %.pre.i, %BB_80492C4.i.i ]
  %tmp0_v1.i30.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i30.i.i, i32* %32, align 4
  %47 = load i32, i32* %22, align 4
  %48 = icmp slt i32 %tmp0_v1.i30.i.i, %47
  br i1 %48, label %BB_8049296.i.i, label %BB_80492D4.i.i

BB_8049289.i.i:                                   ; preds = %BB_8049303.i.i, %BB_8049289.i.lr.ph.i
  %r_ecx.08.i = phi i32 [ %tmp2_v.i.i, %BB_8049289.i.lr.ph.i ], [ %r_ecx.1.lcssa.i, %BB_8049303.i.i ]
  store i8 0, i8* %31, align 1
  store i32 0, i32* %32, align 4
  %49 = load i32, i32* %22, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_8049296.i.i, label %BB_80492D4.i.i

BB_80492DF.i.i:                                   ; preds = %BB_80492D4.i.i
  %51 = load i32, i32* %28, align 8
  %tmp4_v.i43.i.i = shl i32 %51, 2
  %52 = load i32, i32* %23, align 16
  %tmp0_v3.i46.i.i = add i32 %52, %tmp4_v.i43.i.i
  %53 = inttoptr i32 %tmp0_v3.i46.i.i to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %33, align 4
;-------------------------------
; Replace: %spi.bis.531 = ptrtoint[4 x i8]* @str.bis.531 to i32
  %cipher.ptr.154 = alloca [9 x i8]
  store [9 x i8] c"\4a\57\51\4b\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.154
  %cipher.154 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.154, i32 0, i32 0
  %plain.ptr.154 = tail call i8* @base64_decode(i8* %cipher.154)
  %spi154 = bitcast i8* %plain.ptr.154 to [4 x i8]*
  %spi.bis.531 = ptrtoint[4 x i8]* %spi154 to i32
;-------------------------------
  store i32 %spi.bis.531, i32* %34, align 16
  store i32 134517504, i32* %35, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp4_v.i43.i.i, i32 noundef %tmp2_v8.i48.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !262
  br label %BB_8049303.i.i

BB_80492C4.i.i:                                   ; preds = %BB_8049296.i.i
  store i8 1, i8* %31, align 1
  %.pre.i = load i32, i32* %32, align 4
  br label %BB_80492C8.i.i

BB_80492D4.i.i:                                   ; preds = %BB_8049289.i.i, %BB_80492C8.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.08.i, %BB_8049289.i.i ], [ %tmp4_v7.i.i.i, %BB_80492C8.i.i ]
  %56 = load i8, i8* %31, align 1
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %BB_8049303.i.i, label %BB_80492DF.i.i

Func_print_unique.exit:                           ; preds = %BB_8049303.i.i, %.exit
  ret void
}
define internal fastcc void @count_unique930(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !247 {
.exit:
  %tmp2_v.i27.i = add i32 %arg_esp, 4
  %tmp0_v.i28.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i28.i, -4
  %2 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i28.i, -8
  %3 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i32.i = add i32 %tmp0_v.i28.i, -12
  %4 = inttoptr i32 %tmp2_v5.i32.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i34.i = add i32 %tmp0_v.i28.i, -16
  %5 = inttoptr i32 %tmp2_v6.i34.i to i32*
  store i32 %tmp2_v.i27.i, i32* %5, align 16
  %tmp2_v8.i35.i = add i32 %tmp0_v.i28.i, -84
  %6 = inttoptr i32 %tmp2_v8.i35.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i6.i = add i32 %tmp0_v.i28.i, -20
  %9 = inttoptr i32 %tmp2_v2.i6.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i28.i, -72
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1, i32* %10, align 8
  %tmp2_v4.i7.i = add i32 %tmp0_v.i28.i, -68
  %11 = inttoptr i32 %tmp2_v4.i7.i to i32*
  store i32 2, i32* %11, align 4
  %tmp2_v5.i8.i = add i32 %tmp0_v.i28.i, -64
  %12 = inttoptr i32 %tmp2_v5.i8.i to i32*
  store i32 3, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i28.i, -60
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %13, align 4
  %tmp2_v7.i9.i = add i32 %tmp0_v.i28.i, -56
  %14 = inttoptr i32 %tmp2_v7.i9.i to i32*
  store i32 5, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i28.i, -52
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i28.i, -48
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %16, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i28.i, -44
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 4, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i28.i, -40
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %18, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i28.i, -36
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 8, i32* %19, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i28.i, -32
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 9, i32* %20, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i28.i, -28
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 7, i32* %21, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i28.i, -24
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 8, i32* %22, align 8
  %tmp2_v17.i.i = add i32 %tmp0_v.i28.i, -92
  %23 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 13, i32* %23, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i28.i, -96
  %24 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %24, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i28.i, -100
  %25 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517323, i32* %25, align 4
  %tmp2_v.i52.i.i = add i32 %tmp0_v.i28.i, -104
  %26 = inttoptr i32 %tmp2_v.i52.i.i to i32*
  store i32 %tmp2_v4.i30.i, i32* %26, align 8
  %tmp2_v1.i55.i.i = add i32 %tmp0_v.i28.i, -124
  %27 = inttoptr i32 %tmp2_v1.i55.i.i to i32*
;-------------------------------
; Replace: %spi.bis.928 = ptrtoint[4 x i8]* @str.bis.928 to i32
  %cipher.ptr.157 = alloca [9 x i8]
  store [9 x i8] c"\42\57\73\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.157
  %cipher.157 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.157, i32 0, i32 0
  %plain.ptr.157 = tail call i8* @base64_decode(i8* %cipher.157)
  %spi157 = bitcast i8* %plain.ptr.157 to [4 x i8]*
  %spi.bis.928 = ptrtoint[4 x i8]* %spi157 to i32
;-------------------------------
  store i32 %spi.bis.928, i32* %27, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i28.i, -116
  %28 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 0, i32* %28, align 4
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i28.i, -112
  %29 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 0, i32* %29, align 16
  %30 = load i32, i32* %23, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %BB_80492AA.i.lr.ph.i, label %Func_count_unique.exit

BB_80492AA.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i29.i.i = add i32 %tmp0_v.i28.i, -117
  %32 = inttoptr i32 %tmp2_v.i29.i.i to i8*
  %tmp2_v1.i30.i.i = add i32 %tmp0_v.i28.i, -108
  %33 = inttoptr i32 %tmp2_v1.i30.i.i to i32*
  br label %BB_80492AA.i.i

BB_80492B7.i.i:                                   ; preds = %BB_80492E9.i.i, %BB_80492AA.i.i
  %storemerge16.i = phi i32 [ %tmp0_v1.i59.i.i, %BB_80492E9.i.i ], [ 0, %BB_80492AA.i.i ]
  %34 = load i32, i32* %29, align 16
  %tmp4_v.i.i.i1 = shl i32 %34, 2
  %35 = load i32, i32* %24, align 16
  %tmp0_v3.i.i.i = add i32 %35, %tmp4_v.i.i.i1
  %36 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %37 = load i32, i32* %36, align 4
  %tmp4_v7.i.i.i = shl i32 %storemerge16.i, 2
  %tmp0_v10.i.i.i = add i32 %35, %tmp4_v7.i.i.i
  %38 = inttoptr i32 %tmp0_v10.i.i.i to i32*
  %39 = load i32, i32* %38, align 4
  %.not.i.i.i = icmp ne i32 %37, %39
  %40 = icmp eq i32 %34, %storemerge16.i
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %40
  br i1 %or.cond.i, label %BB_80492E9.i.i, label %BB_80492E5.i.i

BB_80492F5.i.i:                                   ; preds = %BB_80492E9.i.i, %BB_80492AA.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.08.i, %BB_80492AA.i.i ], [ %tmp4_v7.i.i.i, %BB_80492E9.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %r_edx.09.i, %BB_80492AA.i.i ], [ %37, %BB_80492E9.i.i ]
  %41 = load i8, i8* %32, align 1
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %BB_8049304.i.i, label %BB_8049300.i.i

BB_80492AA.i.i:                                   ; preds = %BB_8049304.i.i, %BB_80492AA.i.lr.ph.i
  %r_edx.09.i = phi i32 [ 0, %BB_80492AA.i.lr.ph.i ], [ %r_edx.1.lcssa.i, %BB_8049304.i.i ]
  %r_ecx.08.i = phi i32 [ %tmp2_v.i27.i, %BB_80492AA.i.lr.ph.i ], [ %r_ecx.1.lcssa.i, %BB_8049304.i.i ]
  store i8 0, i8* %32, align 1
  store i32 0, i32* %33, align 4
  %43 = load i32, i32* %23, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_80492B7.i.i, label %BB_80492F5.i.i

BB_8049300.i.i:                                   ; preds = %BB_80492F5.i.i
  %45 = load i32, i32* %28, align 4
  %tmp0_v1.i34.i.i = add i32 %45, 1
  store i32 %tmp0_v1.i34.i.i, i32* %28, align 4
  br label %BB_8049304.i.i

BB_80492E5.i.i:                                   ; preds = %BB_80492B7.i.i
  store i8 1, i8* %32, align 1
  %.pre.i = load i32, i32* %33, align 4
  br label %BB_80492E9.i.i

BB_80492E9.i.i:                                   ; preds = %BB_80492E5.i.i, %BB_80492B7.i.i
  %46 = phi i32 [ %storemerge16.i, %BB_80492B7.i.i ], [ %.pre.i, %BB_80492E5.i.i ]
  %tmp0_v1.i59.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i59.i.i, i32* %33, align 4
  %47 = load i32, i32* %23, align 4
  %48 = icmp slt i32 %tmp0_v1.i59.i.i, %47
  br i1 %48, label %BB_80492B7.i.i, label %BB_80492F5.i.i

BB_8049304.i.i:                                   ; preds = %BB_8049300.i.i, %BB_80492F5.i.i
  %49 = load i32, i32* %29, align 16
  %tmp0_v1.i75.i.i = add i32 %49, 1
  store i32 %tmp0_v1.i75.i.i, i32* %29, align 16
  %50 = load i32, i32* %23, align 4
  %51 = icmp slt i32 %tmp0_v1.i75.i.i, %50
  br i1 %51, label %BB_80492AA.i.i, label %Func_count_unique.exit

Func_count_unique.exit:                           ; preds = %BB_8049304.i.i, %.exit
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i27.i, %.exit ], [ %r_ecx.1.lcssa.i, %BB_8049304.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.1.lcssa.i, %BB_8049304.i.i ]
  %52 = load i32, i32* %28, align 4
  %53 = load i32, i32* %26, align 8
  %tmp2_v.i.i = add i32 %53, -68
  %54 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %52, i32* %54, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i28.i, -92
  %55 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %52, i32* %55, align 4
;-------------------------------
; Replace: %spi.bis.927 = ptrtoint[27 x i8]* @str.bis.927 to i32
  %cipher.ptr.156 = alloca [37 x i8]
  store [37 x i8] c"\56\47\39\30\59\57\77\67\56\57\35\70\63\58\56\6c\49\45\56\73\5a\57\31\6c\62\6e\52\7a\4f\69\41\6c\5a\41\6f\41\00", [37 x i8]* %cipher.ptr.156
  %cipher.156 = getelementptr inbounds [37 x i8], [37 x i8]* %cipher.ptr.156, i32 0, i32 0
  %plain.ptr.156 = tail call i8* @base64_decode(i8* %cipher.156)
  %spi156 = bitcast i8* %plain.ptr.156 to [27 x i8]*
  %spi.bis.927 = ptrtoint[27 x i8]* %spi156 to i32
;-------------------------------
  store i32 %spi.bis.927, i32* %24, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i28.i, -100
  %56 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517347, i32* %56, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v19.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !248
  ret void
}
define internal fastcc void @constants417(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !233 {
.exit:
  %tmp2_v.i35.i = add i32 %arg_esp, 4
  %tmp0_v.i36.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i37.i = add i32 %tmp0_v.i36.i, -4
  %2 = inttoptr i32 %tmp2_v3.i37.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i38.i = add i32 %tmp0_v.i36.i, -8
  %3 = inttoptr i32 %tmp2_v4.i38.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i40.i = add i32 %tmp0_v.i36.i, -12
  %4 = inttoptr i32 %tmp2_v5.i40.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i42.i = add i32 %tmp0_v.i36.i, -16
  %5 = inttoptr i32 %tmp2_v6.i42.i to i32*
  store i32 %tmp2_v.i35.i, i32* %5, align 16
  %tmp2_v8.i43.i = add i32 %tmp0_v.i36.i, -116
  %6 = inttoptr i32 %tmp2_v8.i43.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i4.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i8.i = add i32 %tmp0_v.i36.i, -20
  %9 = inttoptr i32 %tmp2_v2.i8.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i36.i, -104
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 0, i32* %10, align 8
  %tmp2_v4.i9.i = add i32 %tmp0_v.i36.i, -100
  %11 = inttoptr i32 %tmp2_v4.i9.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i36.i, -96
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 2, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i36.i, -92
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i36.i, -88
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 4, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i36.i, -84
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i36.i, -80
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %16, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i36.i, -76
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i36.i, -72
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %18, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i36.i, -68
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i36.i, -124
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 10, i32* %20, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i36.i, -128
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i36.i, -132
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 134517334, i32* %22, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i36.i, -136
  %23 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i38.i, i32* %23, align 8
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i36.i, -140
  %24 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
  store i32 134529024, i32* %24, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i36.i, -164
  %25 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517492, i32* %25, align 4
  %26 = load i32, i32* %20, align 4
  %tmp2_v2.i17.i.i = add i32 %tmp0_v.i36.i, -148
  %27 = inttoptr i32 %tmp2_v2.i17.i.i to i32*
  store i32 %26, i32* %27, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i36.i, -152
  %28 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %27, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_8049309.i.lr.ph.i, label %Func_print_array.exit

BB_8049309.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i36.i, -168
  %31 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i36.i, -172
  %32 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  %tmp2_v11.i.i.i = add i32 %tmp0_v.i36.i, -176
  %33 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  %tmp2_v12.i.i.i = add i32 %tmp0_v.i36.i, -180
  %34 = inttoptr i32 %tmp2_v12.i.i.i to i32*
  br label %BB_8049309.i.i

BB_8049309.i.i:                                   ; preds = %BB_8049309.i.i, %BB_8049309.i.lr.ph.i
  %storemerge15.i = phi i32 [ 0, %BB_8049309.i.lr.ph.i ], [ %tmp0_v2.i23.i.i, %BB_8049309.i.i ]
  %tmp4_v.i.i.i1 = shl i32 %storemerge15.i, 2
  %35 = load i32, i32* %21, align 16
  %tmp0_v3.i.i.i = add i32 %35, %tmp4_v.i.i.i1
  %36 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %31, align 8
  %38 = load i32, i32* %28, align 8
  store i32 %38, i32* %32, align 4
;-------------------------------
; Replace: %spi.bis.415 = ptrtoint[14 x i8]* @str.bis.415 to i32
  %cipher.ptr.159 = alloca [21 x i8]
  store [21 x i8] c"\59\58\4a\79\59\58\6c\62\4a\57\52\64\50\53\56\6b\43\67\41\3d\00", [21 x i8]* %cipher.ptr.159
  %cipher.159 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.159, i32 0, i32 0
  %plain.ptr.159 = tail call i8* @base64_decode(i8* %cipher.159)
  %spi159 = bitcast i8* %plain.ptr.159 to [14 x i8]*
  %spi.bis.415 = ptrtoint[14 x i8]* %spi159 to i32
;-------------------------------
  store i32 %spi.bis.415, i32* %33, align 16
  store i32 134517549, i32* %34, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i35.i, i32 inreg noundef %tmp4_v.i.i.i1, i32 noundef %tmp2_v11.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !234
  %40 = load i32, i32* %28, align 8
  %tmp0_v2.i23.i.i = add i32 %40, 1
  store i32 %tmp0_v2.i23.i.i, i32* %28, align 8
  %41 = load i32, i32* %27, align 4
  %42 = icmp slt i32 %tmp0_v2.i23.i.i, %41
  br i1 %42, label %BB_8049309.i.i, label %Func_print_array.exit

Func_print_array.exit:                            ; preds = %BB_8049309.i.i, %.exit
  %43 = load i32, i32* %24, align 4
  %44 = load i32, i32* %23, align 8
  store i32 10, i32* %21, align 16
  store i32 134517347, i32* %22, align 4
  %arg.i.i = load i32, i32* %21, align 16
  %45 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i14.i = add i32 %44, -56
  %46 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 0, i32* %46, align 4
  %tmp2_v1.i.i = add i32 %44, -52
  %47 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 1, i32* %47, align 4
  %tmp2_v2.i15.i = add i32 %44, -48
  %48 = inttoptr i32 %tmp2_v2.i15.i to i32*
  store i32 2, i32* %48, align 4
  %tmp2_v3.i16.i = add i32 %44, -44
  %49 = inttoptr i32 %tmp2_v3.i16.i to i32*
  store i32 3, i32* %49, align 4
  %tmp2_v4.i17.i = add i32 %44, -40
  %50 = inttoptr i32 %tmp2_v4.i17.i to i32*
  store i32 4, i32* %50, align 4
  %tmp2_v5.i18.i = add i32 %44, -36
  %51 = inttoptr i32 %tmp2_v5.i18.i to i32*
  store i32 5, i32* %51, align 4
  %tmp2_v6.i19.i = add i32 %44, -32
  %52 = inttoptr i32 %tmp2_v6.i19.i to i32*
  store i32 6, i32* %52, align 4
  %tmp2_v7.i20.i = add i32 %44, -28
  %53 = inttoptr i32 %tmp2_v7.i20.i to i32*
  store i32 7, i32* %53, align 4
  %tmp2_v8.i21.i = add i32 %44, -24
  %54 = inttoptr i32 %tmp2_v8.i21.i to i32*
  store i32 8, i32* %54, align 4
  %tmp2_v9.i22.i = add i32 %44, -20
  %55 = inttoptr i32 %tmp2_v9.i22.i to i32*
  store i32 9, i32* %55, align 4
  %tmp2_v10.i23.i = add i32 %44, -16
  %56 = inttoptr i32 %tmp2_v10.i23.i to i32*
  store i32 10, i32* %56, align 4
  store i32 11, i32* %20, align 4
  store i32 %tmp2_v.i14.i, i32* %21, align 16
  store i32 134517441, i32* %22, align 4
  store i32 %44, i32* %23, align 8
  store i32 %43, i32* %24, align 4
  store i32 134517492, i32* %25, align 4
  %57 = load i32, i32* %20, align 4
  store i32 %57, i32* %27, align 4
  store i32 0, i32* %28, align 8
  %58 = load i32, i32* %27, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %BB_8049309.i.lr.ph.i14, label %Func_print_array.exit22

BB_8049309.i.lr.ph.i14:                           ; preds = %Func_print_array.exit
  %tmp2_v6.i.i.i10 = add i32 %tmp0_v.i36.i, -168
  %60 = inttoptr i32 %tmp2_v6.i.i.i10 to i32*
  %tmp2_v9.i.i.i11 = add i32 %tmp0_v.i36.i, -172
  %61 = inttoptr i32 %tmp2_v9.i.i.i11 to i32*
  %tmp2_v11.i.i.i12 = add i32 %tmp0_v.i36.i, -176
  %62 = inttoptr i32 %tmp2_v11.i.i.i12 to i32*
  %tmp2_v12.i.i.i13 = add i32 %tmp0_v.i36.i, -180
  %63 = inttoptr i32 %tmp2_v12.i.i.i13 to i32*
  br label %BB_8049309.i.i19

BB_8049309.i.i19:                                 ; preds = %BB_8049309.i.i19, %BB_8049309.i.lr.ph.i14
  %storemerge15.i15 = phi i32 [ 0, %BB_8049309.i.lr.ph.i14 ], [ %tmp0_v2.i23.i.i18, %BB_8049309.i.i19 ]
  %tmp4_v.i.i.i16 = shl i32 %storemerge15.i15, 2
  %64 = load i32, i32* %21, align 16
  %tmp0_v3.i.i.i17 = add i32 %64, %tmp4_v.i.i.i16
  %65 = inttoptr i32 %tmp0_v3.i.i.i17 to i32*
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %60, align 8
  %67 = load i32, i32* %28, align 8
  store i32 %67, i32* %61, align 4
;-------------------------------
; Replace: %spi.bis.414 = ptrtoint[14 x i8]* @str.bis.414 to i32
  %cipher.ptr.158 = alloca [21 x i8]
  store [21 x i8] c"\59\58\4a\79\59\58\6c\62\4a\57\52\64\50\53\56\6b\43\67\41\3d\00", [21 x i8]* %cipher.ptr.158
  %cipher.158 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.158, i32 0, i32 0
  %plain.ptr.158 = tail call i8* @base64_decode(i8* %cipher.158)
  %spi158 = bitcast i8* %plain.ptr.158 to [14 x i8]*
  %spi.bis.414 = ptrtoint[14 x i8]* %spi158 to i32
;-------------------------------
  store i32 %spi.bis.414, i32* %62, align 16
  store i32 134517549, i32* %63, align 4
  %68 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i35.i, i32 inreg noundef %tmp4_v.i.i.i16, i32 noundef %tmp2_v11.i.i.i12, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !234
  %69 = load i32, i32* %28, align 8
  %tmp0_v2.i23.i.i18 = add i32 %69, 1
  store i32 %tmp0_v2.i23.i.i18, i32* %28, align 8
  %70 = load i32, i32* %27, align 4
  %71 = icmp slt i32 %tmp0_v2.i23.i.i18, %70
  br i1 %71, label %BB_8049309.i.i19, label %Func_print_array.exit22

Func_print_array.exit22:                          ; preds = %BB_8049309.i.i19, %Func_print_array.exit
  ret void
}
define internal fastcc void @sum423(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !219 {
.exit:
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
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -100
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i45.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i49.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i49.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i50.i = add i32 %tmp0_v.i.i, -52
  %10 = inttoptr i32 %tmp2_v3.i50.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v4.i51.i = add i32 %tmp0_v.i.i, -48
  %11 = inttoptr i32 %tmp2_v4.i51.i to i32*
  store i32 2, i32* %11, align 16
  %tmp2_v5.i52.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v5.i52.i to i32*
  store i32 6, i32* %12, align 4
  %tmp2_v6.i53.i = add i32 %tmp0_v.i.i, -40
  %13 = inttoptr i32 %tmp2_v6.i53.i to i32*
  store i32 9, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -36
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 8, i32* %14, align 4
  %tmp2_v8.i54.i = add i32 %tmp0_v.i.i, -32
  %15 = inttoptr i32 %tmp2_v8.i54.i to i32*
  store i32 7, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -28
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -24
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 5, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -88
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 100, i32* %18, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -84
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 99, i32* %19, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -80
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 99, i32* %20, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -76
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 50, i32* %21, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -72
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 -50, i32* %22, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i.i, -68
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 100, i32* %23, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i.i, -64
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 -100, i32* %24, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i.i, -60
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 200, i32* %25, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i.i, -56
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 -200, i32* %26, align 8
  %tmp2_v21.i.i = add i32 %tmp0_v.i.i, -108
  %27 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 8, i32* %27, align 4
  %tmp2_v23.i.i = add i32 %tmp0_v.i.i, -112
  %28 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 %tmp2_v3.i50.i, i32* %28, align 16
  %tmp2_v24.i.i = add i32 %tmp0_v.i.i, -116
  %29 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 134517351, i32* %29, align 4
  %tmp2_v.i5.i.i = add i32 %tmp0_v.i.i, -120
  %30 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %30, align 8
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i.i, -140
  %31 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
  store i32 134517528, i32* %31, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -128
  %32 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %32, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -124
  %33 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %27, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_804932D.i.i, label %Func_sum.exit

BB_804932D.i.i:                                   ; preds = %BB_804932D.i.i, %.exit
  %storemerge9.i = phi i32 [ %tmp0_v10.i.i.i, %BB_804932D.i.i ], [ 0, %.exit ]
  %tmp4_v.i15.i.i = shl i32 %storemerge9.i, 2
  %36 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i = add i32 %36, %tmp4_v.i15.i.i
  %37 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i = add i32 %39, %38
  store i32 %tmp0_v7.i.i.i, i32* %32, align 16
  %40 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i = add i32 %40, 1
  store i32 %tmp0_v10.i.i.i, i32* %33, align 4
  %41 = load i32, i32* %27, align 4
  %42 = icmp slt i32 %tmp0_v10.i.i.i, %41
  br i1 %42, label %BB_804932D.i.i, label %Func_sum.exit

Func_sum.exit:                                    ; preds = %BB_804932D.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %tmp4_v.i15.i.i, %BB_804932D.i.i ]
  %43 = load i32, i32* %32, align 16
  %44 = load i32, i32* %30, align 8
  store i32 %43, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.421 = ptrtoint[12 x i8]* @str.bis.421 to i32
  %cipher.ptr.163 = alloca [17 x i8]
  store [17 x i8] c"\59\54\45\67\63\33\56\74\4f\69\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.163
  %cipher.163 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.163, i32 0, i32 0
  %plain.ptr.163 = tail call i8* @base64_decode(i8* %cipher.163)
  %spi163 = bitcast i8* %plain.ptr.163 to [12 x i8]*
  %spi.bis.421 = ptrtoint[12 x i8]* %spi163 to i32
;-------------------------------
  store i32 %spi.bis.421, i32* %28, align 16
  store i32 134517370, i32* %29, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !220
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  store i32 1, i32* %27, align 4
  %tmp2_v2.i61.i = add i32 %44, -80
  store i32 %tmp2_v2.i61.i, i32* %28, align 16
  store i32 134517387, i32* %29, align 4
  store i32 %44, i32* %30, align 8
  store i32 134517528, i32* %31, align 4
  store i32 0, i32* %32, align 16
  store i32 0, i32* %33, align 4
  %48 = load i32, i32* %27, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %BB_804932D.i.i16, label %Func_sum.exit22

BB_804932D.i.i16:                                 ; preds = %BB_804932D.i.i16, %Func_sum.exit
  %storemerge9.i11 = phi i32 [ %tmp0_v10.i.i.i15, %BB_804932D.i.i16 ], [ 0, %Func_sum.exit ]
  %tmp4_v.i15.i.i12 = shl i32 %storemerge9.i11, 2
  %50 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i13 = add i32 %50, %tmp4_v.i15.i.i12
  %51 = inttoptr i32 %tmp0_v3.i.i.i13 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i14 = add i32 %53, %52
  store i32 %tmp0_v7.i.i.i14, i32* %32, align 16
  %54 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i15 = add i32 %54, 1
  store i32 %tmp0_v10.i.i.i15, i32* %33, align 4
  %55 = load i32, i32* %27, align 4
  %56 = icmp slt i32 %tmp0_v10.i.i.i15, %55
  br i1 %56, label %BB_804932D.i.i16, label %Func_sum.exit22

Func_sum.exit22:                                  ; preds = %BB_804932D.i.i16, %Func_sum.exit
  %r_edx.0.lcssa.i17 = phi i32 [ %47, %Func_sum.exit ], [ %tmp4_v.i15.i.i12, %BB_804932D.i.i16 ]
  %57 = load i32, i32* %32, align 16
  %58 = load i32, i32* %30, align 8
  store i32 %57, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.420 = ptrtoint[12 x i8]* @str.bis.420 to i32
  %cipher.ptr.162 = alloca [17 x i8]
  store [17 x i8] c"\59\54\49\67\63\33\56\74\4f\69\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.162
  %cipher.162 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.162, i32 0, i32 0
  %plain.ptr.162 = tail call i8* @base64_decode(i8* %cipher.162)
  %spi162 = bitcast i8* %plain.ptr.162 to [12 x i8]*
  %spi.bis.420 = ptrtoint[12 x i8]* %spi162 to i32
;-------------------------------
  store i32 %spi.bis.420, i32* %28, align 16
  store i32 134517406, i32* %29, align 4
  %59 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.lcssa.i17, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !220
  %60 = lshr i64 %59, 32
  %61 = trunc i64 %60 to i32
  store i32 2, i32* %27, align 4
  %tmp2_v2.i17.i = add i32 %58, -76
  store i32 %tmp2_v2.i17.i, i32* %28, align 16
  store i32 134517423, i32* %29, align 4
  store i32 %58, i32* %30, align 8
  store i32 134517528, i32* %31, align 4
  store i32 0, i32* %32, align 16
  store i32 0, i32* %33, align 4
  %62 = load i32, i32* %27, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %BB_804932D.i.i36, label %Func_sum.exit42

BB_804932D.i.i36:                                 ; preds = %BB_804932D.i.i36, %Func_sum.exit22
  %storemerge9.i31 = phi i32 [ %tmp0_v10.i.i.i35, %BB_804932D.i.i36 ], [ 0, %Func_sum.exit22 ]
  %tmp4_v.i15.i.i32 = shl i32 %storemerge9.i31, 2
  %64 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i33 = add i32 %64, %tmp4_v.i15.i.i32
  %65 = inttoptr i32 %tmp0_v3.i.i.i33 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i34 = add i32 %67, %66
  store i32 %tmp0_v7.i.i.i34, i32* %32, align 16
  %68 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i35 = add i32 %68, 1
  store i32 %tmp0_v10.i.i.i35, i32* %33, align 4
  %69 = load i32, i32* %27, align 4
  %70 = icmp slt i32 %tmp0_v10.i.i.i35, %69
  br i1 %70, label %BB_804932D.i.i36, label %Func_sum.exit42

Func_sum.exit42:                                  ; preds = %BB_804932D.i.i36, %Func_sum.exit22
  %r_edx.0.lcssa.i37 = phi i32 [ %61, %Func_sum.exit22 ], [ %tmp4_v.i15.i.i32, %BB_804932D.i.i36 ]
  %71 = load i32, i32* %32, align 16
  %72 = load i32, i32* %30, align 8
  store i32 %71, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.419 = ptrtoint[12 x i8]* @str.bis.419 to i32
  %cipher.ptr.161 = alloca [17 x i8]
  store [17 x i8] c"\59\54\4d\67\63\33\56\74\4f\69\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.161
  %cipher.161 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.161, i32 0, i32 0
  %plain.ptr.161 = tail call i8* @base64_decode(i8* %cipher.161)
  %spi161 = bitcast i8* %plain.ptr.161 to [12 x i8]*
  %spi.bis.419 = ptrtoint[12 x i8]* %spi161 to i32
;-------------------------------
  store i32 %spi.bis.419, i32* %28, align 16
  store i32 134517442, i32* %29, align 4
  %73 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.lcssa.i37, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !220
  %74 = lshr i64 %73, 32
  %75 = trunc i64 %74 to i32
  store i32 6, i32* %27, align 4
  %tmp2_v2.i68.i = add i32 %72, -68
  store i32 %tmp2_v2.i68.i, i32* %28, align 16
  store i32 134517459, i32* %29, align 4
  store i32 %72, i32* %30, align 8
  store i32 134517528, i32* %31, align 4
  store i32 0, i32* %32, align 16
  store i32 0, i32* %33, align 4
  %76 = load i32, i32* %27, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %BB_804932D.i.i56, label %Func_sum.exit62

BB_804932D.i.i56:                                 ; preds = %BB_804932D.i.i56, %Func_sum.exit42
  %storemerge9.i51 = phi i32 [ %tmp0_v10.i.i.i55, %BB_804932D.i.i56 ], [ 0, %Func_sum.exit42 ]
  %tmp4_v.i15.i.i52 = shl i32 %storemerge9.i51, 2
  %78 = load i32, i32* %28, align 16
  %tmp0_v3.i.i.i53 = add i32 %78, %tmp4_v.i15.i.i52
  %79 = inttoptr i32 %tmp0_v3.i.i.i53 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %32, align 16
  %tmp0_v7.i.i.i54 = add i32 %81, %80
  store i32 %tmp0_v7.i.i.i54, i32* %32, align 16
  %82 = load i32, i32* %33, align 4
  %tmp0_v10.i.i.i55 = add i32 %82, 1
  store i32 %tmp0_v10.i.i.i55, i32* %33, align 4
  %83 = load i32, i32* %27, align 4
  %84 = icmp slt i32 %tmp0_v10.i.i.i55, %83
  br i1 %84, label %BB_804932D.i.i56, label %Func_sum.exit62

Func_sum.exit62:                                  ; preds = %BB_804932D.i.i56, %Func_sum.exit42
  %r_edx.0.lcssa.i57 = phi i32 [ %75, %Func_sum.exit42 ], [ %tmp4_v.i15.i.i52, %BB_804932D.i.i56 ]
  %85 = load i32, i32* %32, align 16
  store i32 %85, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.418 = ptrtoint[12 x i8]* @str.bis.418 to i32
  %cipher.ptr.160 = alloca [17 x i8]
  store [17 x i8] c"\59\54\51\67\63\33\56\74\4f\69\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.160
  %cipher.160 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.160, i32 0, i32 0
  %plain.ptr.160 = tail call i8* @base64_decode(i8* %cipher.160)
  %spi160 = bitcast i8* %plain.ptr.160 to [12 x i8]*
  %spi.bis.418 = ptrtoint[12 x i8]* %spi160 to i32
;-------------------------------
  store i32 %spi.bis.418, i32* %28, align 16
  store i32 134517478, i32* %29, align 4
  %86 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.0.lcssa.i57, i32 noundef %tmp2_v23.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !220
  ret void
}
define internal fastcc void @print_until_newline487(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !206 {
.exit:
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
  store i32 %tmp2_v.i.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i5.i = add i32 %tmp0_v.i.i, -44
  %10 = inttoptr i32 %tmp2_v3.i5.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i.i, -40
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 544434464, i32* %11, align 8
  %tmp2_v5.i7.i = add i32 %tmp0_v.i.i, -36
  %12 = inttoptr i32 %tmp2_v5.i7.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i8.i = add i32 %tmp0_v.i.i, -32
  %13 = inttoptr i32 %tmp2_v6.i8.i to i32*
  store i32 779706743, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -28
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1634156832, i32* %14, align 4
  %tmp2_v8.i9.i = add i32 %tmp0_v.i.i, -24
  %15 = inttoptr i32 %tmp2_v8.i9.i to i32*
  store i32 2190953, i32* %15, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -64
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v3.i5.i, i32* %16, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -68
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517272, i32* %17, align 4
  %tmp2_v.i13.i.i = add i32 %tmp0_v.i.i, -72
  %18 = inttoptr i32 %tmp2_v.i13.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %18, align 8
  %tmp2_v1.i15.i.i = add i32 %tmp0_v.i.i, -76
  %19 = inttoptr i32 %tmp2_v1.i15.i.i to i32*
  store i32 134529024, i32* %19, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -100
  %20 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517336, i32* %20, align 4
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i.i, -84
  %21 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %16, align 16
  %23 = inttoptr i32 %22 to i8*
  %24 = load i8, i8* %23, align 1
  %.not.i.i14.i = icmp eq i8 %24, 0
  br i1 %.not.i.i14.i, label %Func_print_until_newline.exit, label %BB_8049267.i.lr.ph.i

BB_8049267.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -112
  %25 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -116
  %26 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  br label %BB_8049267.i.i

BB_8049267.i.i:                                   ; preds = %BB_8049267.i.i, %BB_8049267.i.lr.ph.i
  %27 = phi i8 [ %24, %BB_8049267.i.lr.ph.i ], [ %32, %BB_8049267.i.i ]
  %tmp0_v5.i.i.i = sext i8 %27 to i32
  store i32 %tmp0_v5.i.i.i, i32* %25, align 16
  store i32 134517374, i32* %26, align 4
  %arg.i.i.i = load i32, i32* %25, align 16
  %28 = tail call i32 @putchar(i32 %arg.i.i.i)  nounwind 
  %29 = load i32, i32* %21, align 4
  %tmp0_v2.i35.i.i = add i32 %29, 1
  store i32 %tmp0_v2.i35.i.i, i32* %21, align 4
  %30 = load i32, i32* %16, align 16
  %tmp0_v3.i.i.i = add i32 %30, %tmp0_v2.i35.i.i
  %31 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %32 = load i8, i8* %31, align 1
  %.not.i.i.i = icmp eq i8 %32, 0
  br i1 %.not.i.i.i, label %Func_print_until_newline.exit, label %BB_8049267.i.i

Func_print_until_newline.exit:                    ; preds = %BB_8049267.i.i, %.exit
  store i32 10, i32* %16, align 16
  store i32 134517285, i32* %17, align 4
  %arg.i.i = load i32, i32* %16, align 16
  %33 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  ret void
}
define internal fastcc void @find_first_char_occurrence326(i32 %arg_esp) unnamed_addr  norecurse  !retregs !194 {
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
;-------------------------------
; Replace: %spi.bis.324 = ptrtoint[4 x i8]* @str.bis.324 to i32
  %cipher.ptr.164 = alloca [9 x i8]
  store [9 x i8] c"\42\55\49\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.164
  %cipher.164 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.164, i32 0, i32 0
  %plain.ptr.164 = tail call i8* @base64_decode(i8* %cipher.164)
  %spi164 = bitcast i8* %plain.ptr.164 to [4 x i8]*
  %spi.bis.324 = ptrtoint[4 x i8]* %spi164 to i32
;-------------------------------
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
  %44 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef %storemerge.i, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !195
  ret void
}
define internal fastcc void @hello45(i32 %arg_esp) unnamed_addr  norecurse  !retregs !181 {
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
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
;-------------------------------
; Replace: %spi.bis.43 = ptrtoint[4 x i8]* @str.bis.43 to i32
  %cipher.ptr.166 = alloca [9 x i8]
  store [9 x i8] c"\42\56\49\75\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.166
  %cipher.166 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.166, i32 0, i32 0
  %plain.ptr.166 = tail call i8* @base64_decode(i8* %cipher.166)
  %spi166 = bitcast i8* %plain.ptr.166 to [4 x i8]*
  %spi.bis.43 = ptrtoint[4 x i8]* %spi166 to i32
;-------------------------------
  store i32 %spi.bis.43, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -32
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
;-------------------------------
; Replace: %spi.bis.42 = ptrtoint[12 x i8]* @str.bis.42 to i32
  %cipher.ptr.165 = alloca [17 x i8]
  store [17 x i8] c"\53\47\56\73\62\47\38\67\56\32\39\79\62\47\51\41\00", [17 x i8]* %cipher.ptr.165
  %cipher.165 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.165, i32 0, i32 0
  %plain.ptr.165 = tail call i8* @base64_decode(i8* %cipher.165)
  %spi165 = bitcast i8* %plain.ptr.165 to [12 x i8]*
  %spi.bis.42 = ptrtoint[12 x i8]* %spi165 to i32
;-------------------------------
  store i32 %spi.bis.42, i32* %8, align 16
  %tmp2_v3.i4.i = add i32 %tmp0_v.i.i, -36
  %9 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 134517188, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  ret void
}
define internal fastcc void @truncate300(i32 %arg_esp) unnamed_addr  norecurse  !retregs !169 {
.exit:
  %tmp2_v.i4.i = add i32 %arg_esp, 4
  %tmp0_v.i5.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i5.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i5.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i8.i = add i32 %tmp0_v.i5.i, -12
  %4 = inttoptr i32 %tmp2_v5.i8.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i5.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i4.i, i32* %5, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i5.i, -20
  %6 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517262, i32* %6, align 4
  %tmp2_v.i13.i = add i32 %tmp0_v.i5.i, -28
  %7 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 10, i32* %7, align 4
  %tmp2_v3.i14.i = add i32 %tmp0_v.i5.i, -32
  %8 = inttoptr i32 %tmp2_v3.i14.i to i32*
;-------------------------------
; Replace: %spi.bis.298 = ptrtoint[9 x i8]* @str.bis.298 to i32
  %cipher.ptr.169 = alloca [13 x i8]
  store [13 x i8] c"\5a\6d\6c\73\5a\53\35\30\65\48\51\41\00", [13 x i8]* %cipher.ptr.169
  %cipher.169 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.169, i32 0, i32 0
  %plain.ptr.169 = tail call i8* @base64_decode(i8* %cipher.169)
  %spi169 = bitcast i8* %plain.ptr.169 to [9 x i8]*
  %spi.bis.298 = ptrtoint[9 x i8]* %spi169 to i32
;-------------------------------
  store i32 %spi.bis.298, i32* %8, align 16
  %tmp2_v4.i15.i = add i32 %tmp0_v.i5.i, -36
  %9 = inttoptr i32 %tmp2_v4.i15.i to i32*
  store i32 134517285, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %arg2.i.i = load i32, i32* %7, align 4
  %10 = tail call i32 @truncate(i32 %arg.i.i, i32 %arg2.i.i)
  store i32 134517298, i32* %6, align 4
  %11 = tail call i32 @__errno_location()
  %12 = inttoptr i32 %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
;-------------------------------
; Replace: %spi.bis.297 = ptrtoint[16 x i8]* @str.bis.297 to i32
  %cipher.ptr.168 = alloca [25 x i8]
  store [25 x i8] c"\52\58\4a\79\62\33\49\67\51\32\39\6b\5a\54\6f\67\4a\57\51\4b\41\41\3d\3d\00", [25 x i8]* %cipher.ptr.168
  %cipher.168 = getelementptr inbounds [25 x i8], [25 x i8]* %cipher.ptr.168, i32 0, i32 0
  %plain.ptr.168 = tail call i8* @base64_decode(i8* %cipher.168)
  %spi168 = bitcast i8* %plain.ptr.168 to [16 x i8]*
  %spi.bis.297 = ptrtoint[16 x i8]* %spi168 to i32
;-------------------------------
  store i32 %spi.bis.297, i32* %8, align 16
  store i32 134517316, i32* %9, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i4.i, i32 inreg noundef 0, i32 noundef %tmp2_v3.i14.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !170
;-------------------------------
; Replace: %spi.bis.296 = ptrtoint[6 x i8]* @str.bis.296 to i32
  %cipher.ptr.167 = alloca [9 x i8]
  store [9 x i8] c"\52\58\4a\79\62\33\49\41\00", [9 x i8]* %cipher.ptr.167
  %cipher.167 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.167, i32 0, i32 0
  %plain.ptr.167 = tail call i8* @base64_decode(i8* %cipher.167)
  %spi167 = bitcast i8* %plain.ptr.167 to [6 x i8]*
  %spi.bis.296 = ptrtoint[6 x i8]* %spi167 to i32
;-------------------------------
  store i32 %spi.bis.296, i32* %8, align 16
  store i32 134517334, i32* %9, align 4
  %arg.i.i5 = load i32, i32* %8, align 16
  tail call void @perror(i32 %arg.i.i5)
  ret void
}
define internal fastcc void @min_distance_two_numbers361(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !155 {
.exit:
  %tmp2_v.i29.i = add i32 %arg_esp, 4
  %tmp0_v.i30.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i32.i = add i32 %tmp0_v.i30.i, -4
  %2 = inttoptr i32 %tmp2_v3.i32.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i33.i = add i32 %tmp0_v.i30.i, -8
  %3 = inttoptr i32 %tmp2_v4.i33.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i35.i = add i32 %tmp0_v.i30.i, -12
  %4 = inttoptr i32 %tmp2_v5.i35.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i37.i = add i32 %tmp0_v.i30.i, -16
  %5 = inttoptr i32 %tmp2_v6.i37.i to i32*
  store i32 %tmp2_v.i29.i, i32* %5, align 16
  %tmp2_v8.i38.i = add i32 %tmp0_v.i30.i, -100
  %6 = inttoptr i32 %tmp2_v8.i38.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i30.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i30.i, -68
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 0, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i30.i, -64
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i30.i, -60
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 2, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i30.i, -56
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 3, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i30.i, -52
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i30.i, -48
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 4, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i30.i, -44
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 8, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i30.i, -40
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 5, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i30.i, -36
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 6, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i30.i, -32
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 8, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i30.i, -28
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 3, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i30.i, -24
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 2, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i30.i, -84
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 12, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i30.i, -80
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 2, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i30.i, -76
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 8, i32* %24, align 4
  store i32 8, i32* %6, align 4
  %25 = load i32, i32* %23, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i30.i, -104
  %26 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %22, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i30.i, -108
  %28 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 %27, i32* %28, align 4
  %tmp2_v28.i.i = add i32 %tmp0_v.i30.i, -112
  %29 = inttoptr i32 %tmp2_v28.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %29, align 16
  %tmp2_v29.i.i = add i32 %tmp0_v.i30.i, -116
  %30 = inttoptr i32 %tmp2_v29.i.i to i32*
  store i32 134517341, i32* %30, align 4
  %tmp2_v.i13.i.i = add i32 %tmp0_v.i30.i, -120
  %31 = inttoptr i32 %tmp2_v.i13.i.i to i32*
  store i32 %tmp2_v4.i33.i, i32* %31, align 8
  %tmp2_v1.i16.i.i = add i32 %tmp0_v.i30.i, -140
  %32 = inttoptr i32 %tmp2_v1.i16.i.i to i32*
;-------------------------------
; Replace: %spi.bis.359 = ptrtoint[4 x i8]* @str.bis.359 to i32
  %cipher.ptr.171 = alloca [9 x i8]
  store [9 x i8] c"\42\56\59\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.171
  %cipher.171 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.171, i32 0, i32 0
  %plain.ptr.171 = tail call i8* @base64_decode(i8* %cipher.171)
  %spi171 = bitcast i8* %plain.ptr.171 to [4 x i8]*
  %spi.bis.359 = ptrtoint[4 x i8]* %spi171 to i32
;-------------------------------
  store i32 %spi.bis.359, i32* %32, align 4
  %tmp2_v.i70.i.i = add i32 %tmp0_v.i30.i, -132
  %33 = inttoptr i32 %tmp2_v.i70.i.i to i32*
  store i32 -1, i32* %33, align 4
  %tmp2_v1.i71.i.i = add i32 %tmp0_v.i30.i, -128
  %34 = inttoptr i32 %tmp2_v1.i71.i.i to i32*
  store i32 -1, i32* %34, align 16
  %tmp2_v2.i72.i.i = add i32 %tmp0_v.i30.i, -124
  %35 = inttoptr i32 %tmp2_v2.i72.i.i to i32*
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %28, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %BB_80492C6.i.i, label %Func_min_distance.exit

BB_80492DC.i.i:                                   ; preds = %BB_80492C6.i.i
  %38 = load i32, i32* %6, align 4
  %.not.i.i.i = icmp eq i32 %38, %46
  br i1 %.not.i.i.i, label %BB_80492F2.i.i, label %BB_804933E.i.i

BB_80492F2.i.i:                                   ; preds = %BB_80492C6.i.i, %BB_80492DC.i.i
  %39 = load i32, i32* %34, align 16
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %BB_8049338.i.i, label %BB_80492F8.i.i

BB_804933E.i.i:                                   ; preds = %BB_8049338.i.i, %BB_80492DC.i.i
  %41 = phi i32 [ %.pre10.i, %BB_8049338.i.i ], [ %storemerge6.i, %BB_80492DC.i.i ]
  %r_edx.1.i = phi i32 [ %r_edx.3.i, %BB_8049338.i.i ], [ %tmp4_v.i39.i.i, %BB_80492DC.i.i ]
  %r_ecx.0.i = phi i32 [ %r_ecx.2.i, %BB_8049338.i.i ], [ %r_ecx.17.i, %BB_80492DC.i.i ]
  %tmp0_v1.i.i.i = add i32 %41, 1
  store i32 %tmp0_v1.i.i.i, i32* %35, align 4
  %42 = load i32, i32* %28, align 4
  %43 = icmp slt i32 %tmp0_v1.i.i.i, %42
  br i1 %43, label %BB_80492C6.i.i, label %Func_min_distance.exit

BB_80492C6.i.i:                                   ; preds = %BB_804933E.i.i, %.exit
  %r_ecx.17.i = phi i32 [ %r_ecx.0.i, %BB_804933E.i.i ], [ %tmp2_v.i29.i, %.exit ]
  %storemerge6.i = phi i32 [ %tmp0_v1.i.i.i, %BB_804933E.i.i ], [ 0, %.exit ]
  %tmp4_v.i39.i.i = shl i32 %storemerge6.i, 2
  %44 = load i32, i32* %29, align 16
  %tmp0_v3.i42.i.i = add i32 %44, %tmp4_v.i39.i.i
  %45 = inttoptr i32 %tmp0_v3.i42.i.i to i32*
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %26, align 8
  %48 = icmp eq i32 %47, %46
  br i1 %48, label %BB_80492F2.i.i, label %BB_80492DC.i.i

BB_80492F8.i.i:                                   ; preds = %BB_80492F2.i.i
  %tmp4_v7.i.i.i = shl i32 %39, 2
  %tmp0_v10.i.i.i = add i32 %tmp4_v7.i.i.i, %44
  %49 = inttoptr i32 %tmp0_v10.i.i.i to i32*
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %BB_8049338.i.i, label %BB_804931E.i.i

BB_804931E.i.i:                                   ; preds = %BB_80492F8.i.i
  %tmp0_v2.i.i.i = sub i32 %storemerge6.i, %39
  store i32 %tmp0_v2.i.i.i, i32* %33, align 4
  %.pre.i = load i32, i32* %35, align 4
  br label %BB_8049338.i.i

BB_8049338.i.i:                                   ; preds = %BB_804931E.i.i, %BB_80492F8.i.i, %BB_80492F2.i.i
  %52 = phi i32 [ %storemerge6.i, %BB_80492F2.i.i ], [ %storemerge6.i, %BB_80492F8.i.i ], [ %.pre.i, %BB_804931E.i.i ]
  %r_edx.3.i = phi i32 [ %tmp4_v.i39.i.i, %BB_80492F2.i.i ], [ %46, %BB_80492F8.i.i ], [ %46, %BB_804931E.i.i ]
  %r_ecx.2.i = phi i32 [ %r_ecx.17.i, %BB_80492F2.i.i ], [ %tmp4_v7.i.i.i, %BB_80492F8.i.i ], [ %tmp4_v7.i.i.i, %BB_804931E.i.i ]
  store i32 %52, i32* %34, align 16
  %.pre10.i = load i32, i32* %35, align 4
  br label %BB_804933E.i.i

Func_min_distance.exit:                           ; preds = %BB_804933E.i.i, %.exit
  %r_edx.2.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.1.i, %BB_804933E.i.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i29.i, %.exit ], [ %r_ecx.0.i, %BB_804933E.i.i ]
  %53 = load i32, i32* %33, align 4
  %54 = load i32, i32* %31, align 8
  %tmp2_v.i10.i = add i32 %54, -64
  %55 = inttoptr i32 %tmp2_v.i10.i to i32*
  store i32 %53, i32* %55, align 4
  store i32 %53, i32* %6, align 4
  %tmp2_v4.i12.i = add i32 %54, -68
  %56 = inttoptr i32 %tmp2_v4.i12.i to i32*
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %26, align 8
  %tmp2_v7.i15.i = add i32 %54, -72
  %58 = inttoptr i32 %tmp2_v7.i15.i to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %28, align 4
;-------------------------------
; Replace: %spi.bis.358 = ptrtoint[34 x i8]* @str.bis.358 to i32
  %cipher.ptr.170 = alloca [49 x i8]
  store [49 x i8] c"\62\57\6c\75\49\47\52\70\63\33\52\68\62\6d\4e\6c\49\47\4a\6c\64\48\64\6c\5a\57\34\67\4a\57\51\67\4a\69\41\6c\5a\44\6f\67\4a\57\51\4b\41\41\3d\3d\00", [49 x i8]* %cipher.ptr.170
  %cipher.170 = getelementptr inbounds [49 x i8], [49 x i8]* %cipher.ptr.170, i32 0, i32 0
  %plain.ptr.170 = tail call i8* @base64_decode(i8* %cipher.170)
  %spi170 = bitcast i8* %plain.ptr.170 to [34 x i8]*
  %spi.bis.358 = ptrtoint[34 x i8]* %spi170 to i32
;-------------------------------
  store i32 %spi.bis.358, i32* %29, align 16
  store i32 134517368, i32* %30, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.2.lcssa.i, i32 noundef %tmp2_v28.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !156
  ret void
}
define internal fastcc void @structure_padding845(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !141 {
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
;-------------------------------
; Replace: %spi.bis.843 = ptrtoint[18 x i8]* @str.bis.843 to i32
  %cipher.ptr.174 = alloca [25 x i8]
  store [25 x i8] c"\63\32\6c\36\5a\57\39\6d\4b\47\6c\75\64\43\6b\36\49\43\56\36\64\51\6f\41\00", [25 x i8]* %cipher.ptr.174
  %cipher.174 = getelementptr inbounds [25 x i8], [25 x i8]* %cipher.ptr.174, i32 0, i32 0
  %plain.ptr.174 = tail call i8* @base64_decode(i8* %cipher.174)
  %spi174 = bitcast i8* %plain.ptr.174 to [18 x i8]*
  %spi.bis.843 = ptrtoint[18 x i8]* %spi174 to i32
;-------------------------------
  store i32 %spi.bis.843, i32* %9, align 16
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -36
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517189, i32* %10, align 4
  %11 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !142
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  store i32 1, i32* %8, align 4
;-------------------------------
; Replace: %spi.bis.842 = ptrtoint[19 x i8]* @str.bis.842 to i32
  %cipher.ptr.173 = alloca [29 x i8]
  store [29 x i8] c"\63\32\6c\36\5a\57\39\6d\4b\47\4e\6f\59\58\49\70\4f\69\41\6c\65\6e\55\4b\41\41\3d\3d\00", [29 x i8]* %cipher.ptr.173
  %cipher.173 = getelementptr inbounds [29 x i8], [29 x i8]* %cipher.ptr.173, i32 0, i32 0
  %plain.ptr.173 = tail call i8* @base64_decode(i8* %cipher.173)
  %spi173 = bitcast i8* %plain.ptr.173 to [19 x i8]*
  %spi.bis.842 = ptrtoint[19 x i8]* %spi173 to i32
;-------------------------------
  store i32 %spi.bis.842, i32* %9, align 16
  store i32 134517209, i32* %10, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %13, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !142
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  store i32 8, i32* %8, align 4
;-------------------------------
; Replace: %spi.bis.841 = ptrtoint[19 x i8]* @str.bis.841 to i32
  %cipher.ptr.172 = alloca [29 x i8]
  store [29 x i8] c"\63\32\6c\36\5a\57\39\6d\4b\47\52\68\64\47\45\70\4f\69\41\6c\65\6e\55\4b\41\41\3d\3d\00", [29 x i8]* %cipher.ptr.172
  %cipher.172 = getelementptr inbounds [29 x i8], [29 x i8]* %cipher.ptr.172, i32 0, i32 0
  %plain.ptr.172 = tail call i8* @base64_decode(i8* %cipher.172)
  %spi172 = bitcast i8* %plain.ptr.172 to [19 x i8]*
  %spi.bis.841 = ptrtoint[19 x i8]* %spi172 to i32
;-------------------------------
  store i32 %spi.bis.841, i32* %9, align 16
  store i32 134517229, i32* %10, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %16, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !142
  ret void
}
define internal fastcc void @second_lowest347(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !127 {
.exit:
  %tmp2_v.i20.i = add i32 %arg_esp, 4
  %tmp0_v.i21.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i22.i = add i32 %tmp0_v.i21.i, -4
  %2 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i23.i = add i32 %tmp0_v.i21.i, -8
  %3 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i25.i = add i32 %tmp0_v.i21.i, -12
  %4 = inttoptr i32 %tmp2_v5.i25.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i21.i, -16
  %5 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 %tmp2_v.i20.i, i32* %5, align 16
  %tmp2_v8.i28.i = add i32 %tmp0_v.i21.i, -68
  %6 = inttoptr i32 %tmp2_v8.i28.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i21.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i21.i, -60
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 9, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i21.i, -56
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 8, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i21.i, -52
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 7, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i21.i, -48
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 6, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i21.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i21.i, -40
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i21.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i21.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i21.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 3, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i21.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 4, i32* %19, align 8
  %tmp2_v14.i.i = add i32 %tmp0_v.i21.i, -76
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 10, i32* %20, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i21.i, -80
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i21.i, -84
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 134517302, i32* %22, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i21.i, -88
  %23 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i23.i, i32* %23, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i21.i, -108
  %24 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517376, i32* %24, align 4
  %25 = load i32, i32* %21, align 16
  %26 = inttoptr i32 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v1.i86.i.i = add i32 %25, 4
  %28 = inttoptr i32 %tmp2_v1.i86.i.i to i32*
  %29 = load i32, i32* %28, align 4
  %tmp2_v3.i88.i.i = add i32 %tmp0_v.i21.i, -100
  %30 = inttoptr i32 %tmp2_v3.i88.i.i to i32*
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %21, align 16
  %32 = inttoptr i32 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i21.i, -96
  %34 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %33, i32* %34, align 16
  %tmp2_v8.i92.i.i = add i32 %tmp0_v.i21.i, -92
  %35 = inttoptr i32 %tmp2_v8.i92.i.i to i32*
  store i32 2, i32* %35, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %BB_80492C3.i.i, label %Func_second_lowest.exit

BB_80492D9.i.i:                                   ; preds = %BB_80492C3.i.i
  store i32 %45, i32* %34, align 16
  %38 = load i32, i32* %35, align 4
  %tmp4_v.i8.i.i = shl i32 %38, 2
  %39 = load i32, i32* %21, align 16
  %tmp0_v6.i.i.i = add i32 %39, %tmp4_v.i8.i.i
  %40 = inttoptr i32 %tmp0_v6.i.i.i to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %30, align 4
  br label %BB_8049335.i.i

BB_80492C3.i.i:                                   ; preds = %BB_8049335.i.i, %.exit
  %storemerge19.i = phi i32 [ %tmp0_v1.i32.i.i, %BB_8049335.i.i ], [ 2, %.exit ]
  %tmp4_v.i20.i.i = shl i32 %storemerge19.i, 2
  %42 = load i32, i32* %21, align 16
  %tmp0_v3.i23.i.i = add i32 %42, %tmp4_v.i20.i.i
  %43 = inttoptr i32 %tmp0_v3.i23.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %30, align 4
  %.not.i.i.i = icmp sgt i32 %45, %44
  br i1 %.not.i.i.i, label %BB_80492D9.i.i, label %BB_80492F5.i.i

BB_8049335.i.i:                                   ; preds = %BB_80492F5.i.i, %Func_804930B.exit.i.i, %BB_80492D9.i.i
  %r_edx.0.i = phi i32 [ %tmp4_v.i20.i.i, %BB_80492F5.i.i ], [ %tmp4_v.i20.i.i, %Func_804930B.exit.i.i ], [ %tmp4_v.i8.i.i, %BB_80492D9.i.i ]
  %46 = load i32, i32* %35, align 4
  %tmp0_v1.i32.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i32.i.i, i32* %35, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp slt i32 %tmp0_v1.i32.i.i, %47
  br i1 %48, label %BB_80492C3.i.i, label %Func_second_lowest.exit

Func_804930B.exit.i.i:                            ; preds = %BB_80492F5.i.i
  store i32 %44, i32* %34, align 16
  br label %BB_8049335.i.i

BB_80492F5.i.i:                                   ; preds = %BB_80492C3.i.i
  %49 = load i32, i32* %34, align 16
  %.not.i81.i.i = icmp sgt i32 %49, %44
  br i1 %.not.i81.i.i, label %Func_804930B.exit.i.i, label %BB_8049335.i.i

Func_second_lowest.exit:                          ; preds = %BB_8049335.i.i, %.exit
  %r_edx.1.lcssa.i = phi i32 [ %27, %.exit ], [ %r_edx.0.i, %BB_8049335.i.i ]
  %50 = load i32, i32* %34, align 16
  %51 = load i32, i32* %23, align 8
  %tmp2_v.i11.i = add i32 %51, -56
  %52 = inttoptr i32 %tmp2_v.i11.i to i32*
  store i32 %50, i32* %52, align 4
  store i32 %50, i32* %20, align 4
;-------------------------------
; Replace: %spi.bis.345 = ptrtoint[19 x i8]* @str.bis.345 to i32
  %cipher.ptr.175 = alloca [29 x i8]
  store [29 x i8] c"\63\32\56\6a\62\32\35\6b\49\47\78\76\64\32\56\7a\64\44\6f\67\4a\57\51\4b\41\41\3d\3d\00", [29 x i8]* %cipher.ptr.175
  %cipher.175 = getelementptr inbounds [29 x i8], [29 x i8]* %cipher.ptr.175, i32 0, i32 0
  %plain.ptr.175 = tail call i8* @base64_decode(i8* %cipher.175)
  %spi175 = bitcast i8* %plain.ptr.175 to [19 x i8]*
  %spi.bis.345 = ptrtoint[19 x i8]* %spi175 to i32
;-------------------------------
  store i32 %spi.bis.345, i32* %21, align 16
  store i32 134517326, i32* %22, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i20.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v16.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !128
  ret void
}
define internal fastcc void @check_parity874(i32 %arg_esp) unnamed_addr  norecurse  !retregs !114 {
label_1.i.i:
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
  %tmp2_v6.i.i = add i32 %tmp0_v.i28.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i27.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i28.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i15.i = add i32 %tmp0_v.i28.i, -20
  %7 = inttoptr i32 %tmp2_v.i15.i to i32*
  store i32 15, i32* %7, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i28.i, -48
  %8 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 15, i32* %8, align 16
  %tmp2_v5.i19.i = add i32 %tmp0_v.i28.i, -52
  %9 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 134517193, i32* %9, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i28.i, -56
  %10 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i31.i, i32* %10, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i28.i, -60
  %11 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517324, i32* %11, align 4
;-------------------------------
; Replace: %spi.bis.872 = ptrtoint[14 x i8]* @str.bis.872 to i32
  %cipher.ptr.176 = alloca [21 x i8]
  store [21 x i8] c"\62\6e\56\74\59\6d\56\79\49\47\6c\7a\49\47\39\6b\5a\41\41\3d\00", [21 x i8]* %cipher.ptr.176
  %cipher.176 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.176, i32 0, i32 0
  %plain.ptr.176 = tail call i8* @base64_decode(i8* %cipher.176)
  %spi176 = bitcast i8* %plain.ptr.176 to [14 x i8]*
  %spi.bis.872 = ptrtoint[14 x i8]* %spi176 to i32
;-------------------------------
  store i32 %spi.bis.872, i32* %8, align 16
  store i32 134517253, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %12 = inttoptr i32 %arg.i.i to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
  ret void
}
define internal fastcc void @dice_roll800(i32 %arg_esp) unnamed_addr  norecurse  !retregs !102 {
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
  store i32 134517265, i32* %7, align 4
  %tmp2_v.i14.i = add i32 %tmp0_v.i.i, -48
  %8 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 0, i32* %8, align 16
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -52
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517281, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = tail call i32 @time(i32 %arg.i.i)
  store i32 %10, i32* %8, align 16
  store i32 134517293, i32* %9, align 4
  %arg.i.i4 = load i32, i32* %8, align 16
  tail call void @srand(i32 %arg.i.i4)
  %tmp2_v.i38.i = add i32 %tmp0_v.i.i, -24
  %11 = inttoptr i32 %tmp2_v.i38.i to i32*
  store i32 10, i32* %11, align 8
  %tmp2_v1.i.i = add i32 %tmp0_v.i.i, -20
  %12 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %12, align 4
  %tmp2_v2.i39.i = add i32 %tmp0_v.i.i, -28
  %13 = inttoptr i32 %tmp2_v2.i39.i to i32*
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %11, align 8
  %.not.i46.i7 = icmp slt i32 %14, 1
  br i1 %.not.i46.i7, label %.exit, label %BB_8049247.i.lr.ph

BB_8049247.i.lr.ph:                               ; preds = %0
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -40
  %15 = inttoptr i32 %tmp2_v12.i.i to i32*
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -44
  %16 = inttoptr i32 %tmp2_v15.i.i to i32*
  br label %BB_8049247.i

BB_8049247.i:                                     ; preds = %BB_8049247.i, %BB_8049247.i.lr.ph
  store i32 134517324, i32* %7, align 4
  %17 = tail call i32 @rand()
  %tmp16_v.i.i = sext i32 %17 to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 715827883
  %tmp15_v1.i.i = lshr i64 %tmp15_v.i.i, 32
  %18 = trunc i64 %tmp15_v1.i.i to i32
  %tmp0_v2.i20.i.neg = lshr i32 %17, 31
  %tmp0_v3.i.i = add i32 %tmp0_v2.i20.i.neg, %18
  %tmp0_v6.i.i.neg = mul i32 %tmp0_v3.i.i, -6
  %tmp0_v7.i22.i = add i32 %tmp0_v6.i.i.neg, %17
  %tmp2_v.i23.i = add i32 %tmp0_v7.i22.i, 1
  store i32 %tmp2_v.i23.i, i32* %12, align 4
  store i32 %tmp2_v.i23.i, i32* %15, align 8
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.798 = ptrtoint[13 x i8]* @str.bis.798 to i32
  %cipher.ptr.177 = alloca [21 x i8]
  store [21 x i8] c"\52\47\6c\6a\5a\53\41\6c\5a\44\6f\67\4a\57\51\4b\41\41\3d\3d\00", [21 x i8]* %cipher.ptr.177
  %cipher.177 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.177, i32 0, i32 0
  %plain.ptr.177 = tail call i8* @base64_decode(i8* %cipher.177)
  %spi177 = bitcast i8* %plain.ptr.177 to [13 x i8]*
  %spi.bis.798 = ptrtoint[13 x i8]* %spi177 to i32
;-------------------------------
  store i32 %spi.bis.798, i32* %8, align 16
  store i32 134517381, i32* %9, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v7.i22.i, i32 inreg noundef %tmp0_v7.i22.i, i32 noundef %tmp2_v.i14.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !103
  %21 = load i32, i32* %13, align 4
  %tmp0_v2.i7.i = add i32 %21, 1
  store i32 %tmp0_v2.i7.i, i32* %13, align 4
  %22 = load i32, i32* %11, align 8
  %.not.i46.i = icmp sgt i32 %tmp0_v2.i7.i, %22
  br i1 %.not.i46.i, label %.exit, label %BB_8049247.i

.exit:                                            ; preds = %BB_8049247.i, %0
  ret void
}
define internal fastcc void @remove_duplicates_efficient971(i32 %arg_esp) unnamed_addr  norecurse  !retregs !89 {
.exit:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i3.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i3.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -84
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp2_v.i20.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i20.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i23.i = add i32 %tmp0_v.i2.i, -68
  %9 = inttoptr i32 %tmp2_v2.i23.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i24.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i26.i = add i32 %tmp0_v.i2.i, -20
  %12 = inttoptr i32 %tmp2_v5.i26.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i2.i, -56
  %13 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 1633771873, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i2.i, -52
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1650549089, i32* %14, align 4
  %tmp2_v8.i28.i = add i32 %tmp0_v.i2.i, -48
  %15 = inttoptr i32 %tmp2_v8.i28.i to i32*
  store i32 1650614882, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -44
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1667457890, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i2.i, -40
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1633903459, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i2.i, -36
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1633771873, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i2.i, -32
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 1684300129, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i2.i, -28
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 1701078116, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i2.i, -24
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 6645093, i32* %21, align 8
  %tmp2_v17.i.i = add i32 %tmp0_v.i2.i, -96
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v6.i27.i, i32* %22, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i2.i, -100
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517333, i32* %23, align 4
  %tmp2_v.i40.i.i = add i32 %tmp0_v.i2.i, -104
  %24 = inttoptr i32 %tmp2_v.i40.i.i to i32*
  store i32 %tmp2_v4.i3.i, i32* %24, align 8
  %tmp2_v1.i42.i.i = add i32 %tmp0_v.i2.i, -108
  %25 = inttoptr i32 %tmp2_v1.i42.i.i to i32*
  store i32 0, i32* %25, align 4
  %tmp2_v2.i43.i.i = add i32 %tmp0_v.i2.i, -112
  %26 = inttoptr i32 %tmp2_v2.i43.i.i to i32*
  store i32 134529024, i32* %26, align 16
  %tmp2_v3.i45.i.i = add i32 %tmp0_v.i2.i, -404
  %27 = inttoptr i32 %tmp2_v3.i45.i.i to i32*
;-------------------------------
; Replace: %spi.bis.969 = ptrtoint[4 x i8]* @str.bis.969 to i32
  %cipher.ptr.178 = alloca [9 x i8]
  store [9 x i8] c"\42\57\55\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.178
  %cipher.178 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.178, i32 0, i32 0
  %plain.ptr.178 = tail call i8* @base64_decode(i8* %cipher.178)
  %spi178 = bitcast i8* %plain.ptr.178 to [4 x i8]*
  %spi.bis.969 = ptrtoint[4 x i8]* %spi178 to i32
;-------------------------------
  store i32 %spi.bis.969, i32* %27, align 4
  %28 = load i32, i32* %22, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i2.i, -388
  %29 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i2.i, -116
  %31 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %29, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i2.i, -416
  %33 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %32, i32* %33, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i2.i, -420
  %34 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517445, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %35 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i68.i.i = add i32 %tmp0_v.i2.i, -376
  %36 = inttoptr i32 %tmp2_v.i68.i.i to i32*
  store i32 %35, i32* %36, align 8
  %tmp2_v1.i70.i.i = add i32 %tmp0_v.i2.i, -372
  br label %Func_80492E0.exit.i.i

BB_80492E2.i.i:                                   ; preds = %Func_80492E0.exit.i.i
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i2.i, -384
  %37 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 0, i32* %37, align 16
  %tmp2_v1.i3.i.i = add i32 %tmp0_v.i2.i, -380
  %38 = inttoptr i32 %tmp2_v1.i3.i.i to i32*
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %36, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %BB_80492F8.i.i, label %Func_remove_duplicates.exit

BB_804935F.i.i:                                   ; preds = %BB_804931B.i.i, %BB_80492F8.i.i
  %41 = phi i32 [ %storemerge9.i, %BB_80492F8.i.i ], [ %.pre.i, %BB_804931B.i.i ]
  %tmp0_v1.i10.i.i = add i32 %41, 1
  store i32 %tmp0_v1.i10.i.i, i32* %38, align 4
  %42 = load i32, i32* %36, align 8
  %43 = icmp slt i32 %tmp0_v1.i10.i.i, %42
  br i1 %43, label %BB_80492F8.i.i, label %Func_remove_duplicates.exit

BB_80492F8.i.i:                                   ; preds = %BB_804935F.i.i, %BB_80492E2.i.i
  %storemerge9.i = phi i32 [ %tmp0_v1.i10.i.i, %BB_804935F.i.i ], [ 0, %BB_80492E2.i.i ]
  %44 = load i32, i32* %29, align 4
  %tmp0_v3.i19.i.i = add i32 %44, %storemerge9.i
  %45 = inttoptr i32 %tmp0_v3.i19.i.i to i8*
  %46 = load i8, i8* %45, align 1
  %tmp0_v5.i.i.i = sext i8 %46 to i32
  %tmp2_v7.i21.i.i = add i32 %tmp2_v1.i70.i.i, %tmp0_v5.i.i.i
  %47 = inttoptr i32 %tmp2_v7.i21.i.i to i8*
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %BB_804935F.i.i, label %BB_804931B.i.i

BB_804931B.i.i:                                   ; preds = %BB_80492F8.i.i
  store i8 1, i8* %47, align 1
  %50 = load i32, i32* %38, align 4
  %51 = load i32, i32* %29, align 4
  %tmp0_v12.i.i.i = add i32 %51, %50
  %52 = load i32, i32* %37, align 16
  %tmp0_v17.i.i.i = add i32 %52, %51
  %53 = inttoptr i32 %tmp0_v12.i.i.i to i8*
  %54 = load i8, i8* %53, align 1
  %55 = inttoptr i32 %tmp0_v17.i.i.i to i8*
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %37, align 16
  %tmp0_v21.i.i.i = add i32 %56, 1
  store i32 %tmp0_v21.i.i.i, i32* %37, align 16
  %.pre.i = load i32, i32* %38, align 4
  br label %BB_804935F.i.i

Func_80492E0.exit.i.i:                            ; preds = %Func_80492E0.exit.i.i, %.exit
  %r_ecx.08.i = phi i32 [ 64, %.exit ], [ %tmp4_v3.i.i.i, %Func_80492E0.exit.i.i ]
  %r_edi.07.i = phi i32 [ %tmp2_v1.i70.i.i, %.exit ], [ %tmp4_v.i78.i.i, %Func_80492E0.exit.i.i ]
  %57 = inttoptr i32 %r_edi.07.i to i32*
  store i32 0, i32* %57, align 4
  %tmp0_v.i76.i.i = load i32, i32* @df, align 4
  %tmp0_v1.i77.i.i = shl i32 %tmp0_v.i76.i.i, 2
  %tmp4_v.i78.i.i = add i32 %tmp0_v1.i77.i.i, %r_edi.07.i
  %tmp4_v3.i.i.i = add nsw i32 %r_ecx.08.i, -1
  %.not.i.i.i = icmp eq i32 %tmp4_v3.i.i.i, 0
  br i1 %.not.i.i.i, label %BB_80492E2.i.i, label %Func_80492E0.exit.i.i

Func_remove_duplicates.exit:                      ; preds = %BB_804935F.i.i, %BB_80492E2.i.i
  %58 = load i32, i32* %37, align 16
  %59 = load i32, i32* %29, align 4
  %tmp0_v3.i51.i.i = add i32 %59, %58
  %60 = inttoptr i32 %tmp0_v3.i51.i.i to i8*
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %24, align 8
  %tmp2_v.i9.i = add i32 %61, -48
  store i32 %tmp2_v.i9.i, i32* %22, align 16
  store i32 134517348, i32* %23, align 4
  %arg.i.i = load i32, i32* %22, align 16
  %62 = inttoptr i32 %arg.i.i to i8*
  %63 = tail call i32 @puts(i8* nonnull dereferenceable(1) %62)
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
  %17 = load i8, i8* @fp_status.2, align 1, !noalias !61
  %18 = or i8 %17, 1
  store i8 %18, i8* @fp_status.2, align 1, !noalias !61
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
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !64
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !64
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
  br i1 %140, label %130, label %.loopexit16.i, !llvm.loop !67

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
  br i1 %185, label %.preheader14.i, label %.loopexit15.i, !llvm.loop !69

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
  br i1 %221, label %211, label %.loopexit13.i, !llvm.loop !67

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
  br i1 %266, label %.preheader.i, label %.loopexit.i, !llvm.loop !70

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
define internal fastcc void @random_double667(i32 %arg_esp) unnamed_addr  norecurse  !retregs !77 {
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
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i5.i, i32 inreg noundef %r_edx.09, i32 noundef %tmp2_v.i32.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !78
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
define internal fastcc void @strcpy_strncpy994(i32 %arg_esp) unnamed_addr  norecurse  !retregs !53 {
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
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i7.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i7.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -196
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517268, i32* %6, align 4
  %tmp4_v.i78.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i82.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i82.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i83.i = add i32 %tmp0_v.i3.i, -180
  %10 = inttoptr i32 %tmp2_v3.i83.i to i32*
  store i32 875770417, i32* %10, align 4
  %tmp2_v4.i84.i = add i32 %tmp0_v.i3.i, -176
  %11 = inttoptr i32 %tmp2_v4.i84.i to i32*
  store i32 943142453, i32* %11, align 16
  %tmp2_v5.i85.i = add i32 %tmp0_v.i3.i, -172
  %12 = inttoptr i32 %tmp2_v5.i85.i to i16*
  store i16 57, i16* %12, align 4
  %tmp2_v8.i87.i = add i32 %tmp0_v.i3.i, -204
  %13 = inttoptr i32 %tmp2_v8.i87.i to i32*
  store i32 %tmp2_v3.i83.i, i32* %13, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -170
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -208
  %14 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %tmp2_v9.i.i, i32* %14, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -212
  %15 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517336, i32* %15, align 4
  %arg.i.i = load i32, i32* %14, align 16
  %arg2.i.i = load i32, i32* %13, align 4
  %16 = tail call i32 @strcpy(i32 %arg.i.i, i32 %arg2.i.i)
  store i32 %tmp2_v9.i.i, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.992 = ptrtoint[11 x i8]* @str.bis.992 to i32
  %cipher.ptr.182 = alloca [17 x i8]
  store [17 x i8] c"\5a\47\56\7a\64\44\45\36\49\43\56\7a\43\67\41\3d\00", [17 x i8]* %cipher.ptr.182
  %cipher.182 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.182, i32 0, i32 0
  %plain.ptr.182 = tail call i8* @base64_decode(i8* %cipher.182)
  %spi182 = bitcast i8* %plain.ptr.182 to [11 x i8]*
  %spi.bis.992 = ptrtoint[11 x i8]* %spi182 to i32
;-------------------------------
  store i32 %spi.bis.992, i32* %14, align 16
  store i32 134517361, i32* %15, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !54
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %tmp2_v.i70.i = add i32 %tmp0_v.i3.i, -200
  %20 = inttoptr i32 %tmp2_v.i70.i to i32*
  store i32 10, i32* %20, align 8
  store i32 %tmp2_v3.i83.i, i32* %13, align 4
  %tmp2_v4.i74.i = add i32 %tmp0_v.i3.i, -120
  store i32 %tmp2_v4.i74.i, i32* %14, align 16
  store i32 134517385, i32* %15, align 4
  %arg.i.i3 = load i32, i32* %14, align 16
  %arg2.i.i4 = load i32, i32* %13, align 4
  %arg4.i.i = load i32, i32* %20, align 8
  %21 = tail call i32 @strncpy(i32 %arg.i.i3, i32 %arg2.i.i4, i32 %arg4.i.i)
  store i32 %tmp2_v4.i74.i, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.991 = ptrtoint[11 x i8]* @str.bis.991 to i32
  %cipher.ptr.181 = alloca [17 x i8]
  store [17 x i8] c"\5a\47\56\7a\64\44\4d\36\49\43\56\7a\43\67\41\3d\00", [17 x i8]* %cipher.ptr.181
  %cipher.181 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.181, i32 0, i32 0
  %plain.ptr.181 = tail call i8* @base64_decode(i8* %cipher.181)
  %spi181 = bitcast i8* %plain.ptr.181 to [11 x i8]*
  %spi.bis.991 = ptrtoint[11 x i8]* %spi181 to i32
;-------------------------------
  store i32 %spi.bis.991, i32* %14, align 16
  store i32 134517407, i32* %15, align 4
  %22 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %19, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !54
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  store i32 40, i32* %20, align 8
  store i32 %tmp2_v3.i83.i, i32* %13, align 4
  %tmp2_v4.i15.i = add i32 %tmp0_v.i3.i, -70
  store i32 %tmp2_v4.i15.i, i32* %14, align 16
  store i32 134517431, i32* %15, align 4
  %arg.i.i6 = load i32, i32* %14, align 16
  %arg2.i.i7 = load i32, i32* %13, align 4
  %arg4.i.i8 = load i32, i32* %20, align 8
  %25 = tail call i32 @strncpy(i32 %arg.i.i6, i32 %arg2.i.i7, i32 %arg4.i.i8)
  store i32 %tmp2_v4.i15.i, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.990 = ptrtoint[11 x i8]* @str.bis.990 to i32
  %cipher.ptr.180 = alloca [17 x i8]
  store [17 x i8] c"\5a\47\56\7a\64\44\55\36\49\43\56\7a\43\67\41\3d\00", [17 x i8]* %cipher.ptr.180
  %cipher.180 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.180, i32 0, i32 0
  %plain.ptr.180 = tail call i8* @base64_decode(i8* %cipher.180)
  %spi180 = bitcast i8* %plain.ptr.180 to [11 x i8]*
  %spi.bis.990 = ptrtoint[11 x i8]* %spi180 to i32
;-------------------------------
  store i32 %spi.bis.990, i32* %14, align 16
  store i32 134517453, i32* %15, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %24, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !54
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  store i32 2, i32* %20, align 8
  store i32 %tmp2_v3.i83.i, i32* %13, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -185
  store i32 %tmp2_v4.i.i, i32* %14, align 16
  store i32 134517480, i32* %15, align 4
  %arg.i.i10 = load i32, i32* %14, align 16
  %arg2.i.i11 = load i32, i32* %13, align 4
  %arg4.i.i12 = load i32, i32* %20, align 8
  %29 = tail call i32 @strncpy(i32 %arg.i.i10, i32 %arg2.i.i11, i32 %arg4.i.i12)
  %tmp2_v.i60.i = add i32 %tmp0_v.i3.i, -183
  %30 = inttoptr i32 %tmp2_v.i60.i to i8*
  store i8 0, i8* %30, align 1
  store i32 %tmp2_v4.i.i, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.989 = ptrtoint[11 x i8]* @str.bis.989 to i32
  %cipher.ptr.179 = alloca [17 x i8]
  store [17 x i8] c"\5a\47\56\7a\64\44\59\36\49\43\56\7a\43\67\41\3d\00", [17 x i8]* %cipher.ptr.179
  %cipher.179 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.179, i32 0, i32 0
  %plain.ptr.179 = tail call i8* @base64_decode(i8* %cipher.179)
  %spi179 = bitcast i8* %plain.ptr.179 to [11 x i8]*
  %spi.bis.989 = ptrtoint[11 x i8]* %spi179 to i32
;-------------------------------
  store i32 %spi.bis.989, i32* %14, align 16
  store i32 134517512, i32* %15, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %28, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !54
  ret void
}
define internal fastcc void @smallest_word_print882(i32 %arg_esp) unnamed_addr  norecurse  !retregs !40 {
.exit:
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i23.i, -4
  %2 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i26.i = add i32 %tmp0_v.i23.i, -8
  %3 = inttoptr i32 %tmp2_v4.i26.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i28.i = add i32 %tmp0_v.i23.i, -12
  %4 = inttoptr i32 %tmp2_v5.i28.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i30.i = add i32 %tmp0_v.i23.i, -16
  %5 = inttoptr i32 %tmp2_v6.i30.i to i32*
  store i32 %tmp2_v.i22.i, i32* %5, align 16
  %tmp2_v8.i31.i = add i32 %tmp0_v.i23.i, -68
  %6 = inttoptr i32 %tmp2_v8.i31.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i23.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i23.i, -51
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1702043713, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i23.i, -47
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1852142702, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i23.i, -43
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1998611811, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i23.i, -39
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 543716457, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i23.i, -35
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1702258035, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i23.i, -31
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 543973746, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i23.i, -27
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1685221239, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i23.i, -23
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 11891, i16* %17, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i23.i, -21
  %18 = inttoptr i32 %tmp2_v11.i.i to i8*
  store i8 0, i8* %18, align 1
  %tmp2_v14.i.i = add i32 %tmp0_v.i23.i, -80
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i23.i, -84
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517449, i32* %20, align 4
  %tmp2_v.i158.i.i = add i32 %tmp0_v.i23.i, -88
  %21 = inttoptr i32 %tmp2_v.i158.i.i to i32*
  store i32 %tmp2_v4.i26.i, i32* %21, align 8
  %tmp2_v1.i160.i.i = add i32 %tmp0_v.i23.i, -92
  %22 = inttoptr i32 %tmp2_v1.i160.i.i to i32*
  store i32 134529024, i32* %22, align 4
  %tmp2_v2.i163.i.i = add i32 %tmp0_v.i23.i, -660
  %23 = inttoptr i32 %tmp2_v2.i163.i.i to i32*
  store i32 134517534, i32* %23, align 4
  %24 = load i32, i32* %19, align 16
  %tmp2_v2.i101.i.i = add i32 %tmp0_v.i23.i, -644
  %25 = inttoptr i32 %tmp2_v2.i101.i.i to i32*
  store i32 %24, i32* %25, align 4
  %tmp4_v.i102.i.b.i = load i1, i1* @segs.0, align 1
  %26 = inttoptr i32 %arg_esp to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v5.i105.i.i = add i32 %tmp0_v.i23.i, -100
  %28 = inttoptr i32 %tmp2_v5.i105.i.i to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %25, align 4
  %tmp2_v9.i110.i.i = add i32 %tmp0_v.i23.i, -672
  %30 = inttoptr i32 %tmp2_v9.i110.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v10.i111.i.i = add i32 %tmp0_v.i23.i, -676
  %31 = inttoptr i32 %tmp2_v10.i111.i.i to i32*
  store i32 134517574, i32* %31, align 4
  %arg.i.i.i = load i32, i32* %30, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i38.i.i = add i32 %tmp0_v.i23.i, -628
  %33 = inttoptr i32 %tmp2_v.i38.i.i to i32*
  store i32 %32, i32* %33, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i23.i, -640
  %34 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 0, i32* %34, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i23.i, -636
  %35 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 -1, i32* %35, align 4
  %tmp2_v2.i3.i.i = add i32 %tmp0_v.i23.i, -619
  %36 = inttoptr i32 %tmp2_v2.i3.i.i to i32*
  store i32 992751136, i32* %36, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i23.i, -615
  %37 = inttoptr i32 %tmp2_v3.i.i.i to i16*
  store i16 2314, i16* %37, align 2
  %tmp2_v4.i4.i.i = add i32 %tmp0_v.i23.i, -613
  %38 = inttoptr i32 %tmp2_v4.i4.i.i to i8*
  store i8 0, i8* %38, align 1
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i23.i, -632
  %39 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %33, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_8049405.i.preheader.lr.ph.i, label %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i

Func_8049346.exit.i.BB_80494B9.i_crit_edge.i:     ; preds = %.exit
  %.pre79.i = add i32 %tmp0_v.i23.i, -356
  %.pre80.i = add i32 %tmp0_v.i23.i, -668
  %.pre81.i = inttoptr i32 %.pre80.i to i32*
  br label %Func_smallest_word.exit

BB_8049405.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i95.i.i = add i32 %tmp0_v.i23.i, -668
  %42 = inttoptr i32 %tmp2_v7.i95.i.i to i32*
  %tmp2_v5.i73.i.i = add i32 %tmp0_v.i23.i, -612
  %tmp2_v5.i60.i.i = add i32 %tmp0_v.i23.i, -356
  br label %BB_8049405.i.preheader.i

BB_8049492.i.i:                                   ; preds = %BB_8049465.i.i
  %tmp0_v1.i8.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i8.i.i, i32* %39, align 8
  %43 = load i32, i32* %33, align 4
  %44 = icmp slt i32 %tmp0_v1.i8.i.i, %43
  br i1 %44, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

BB_804943E.i.i:                                   ; preds = %BB_8049415.i.i
  %45 = load i32, i32* %34, align 16
  store i32 %45, i32* %35, align 4
  store i32 %tmp2_v5.i73.i.i, i32* %42, align 4
  store i32 %tmp2_v5.i60.i.i, i32* %30, align 16
  store i32 134517856, i32* %31, align 4
  %arg.i.i55.i = load i32, i32* %30, align 16
  %arg2.i.i56.i = load i32, i32* %42, align 4
  %46 = tail call i32 @strcpy(i32 %arg.i.i55.i, i32 %arg2.i.i56.i)
  br label %BB_8049499.i.preheader.i

BB_80493D6.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %47 = load i32, i32* %39, align 8
  %48 = load i32, i32* %25, align 4
  %tmp0_v3.i72.i.i = add i32 %48, %47
  %49 = inttoptr i32 %tmp0_v3.i72.i.i to i8*
  %50 = load i8, i8* %49, align 1
  %51 = load i32, i32* %34, align 16
  %tmp0_v8.i.i.i = add i32 %51, %tmp2_v5.i73.i.i
  %52 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %39, align 8
  %tmp0_v11.i.i.i = add i32 %53, 1
  store i32 %tmp0_v11.i.i.i, i32* %39, align 8
  %54 = load i32, i32* %34, align 16
  %tmp0_v14.i.i.i = add i32 %54, 1
  store i32 %tmp0_v14.i.i.i, i32* %34, align 16
  %55 = load i32, i32* %39, align 8
  %56 = load i32, i32* %25, align 4
  %tmp0_v3.i91.i.i = add i32 %56, %55
  %57 = inttoptr i32 %tmp0_v3.i91.i.i to i8*
  %58 = load i8, i8* %57, align 1
  %tmp0_v5.i93.i.i = sext i8 %58 to i32
  store i32 %tmp0_v5.i93.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i52.i = load i32, i32* %30, align 16
  %arg2.i.i.i = load i32, i32* %42, align 4
  %59 = tail call i32 @strchr(i32 %arg.i.i52.i, i32 %arg2.i.i.i)
  %.not.i31.i.i = icmp eq i32 %59, 0
  br i1 %.not.i31.i.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049465.i.i:                                   ; preds = %BB_8049499.i.preheader.i, %BB_8049492.i.i
  %60 = phi i32 [ %tmp0_v1.i8.i.i, %BB_8049492.i.i ], [ %76, %BB_8049499.i.preheader.i ]
  %61 = load i32, i32* %25, align 4
  %tmp0_v3.i117.i.i = add i32 %61, %60
  %62 = inttoptr i32 %tmp0_v3.i117.i.i to i8*
  %63 = load i8, i8* %62, align 1
  %tmp0_v5.i119.i.i = sext i8 %63 to i32
  store i32 %tmp0_v5.i119.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517897, i32* %31, align 4
  %arg.i.i62.i = load i32, i32* %30, align 16
  %arg2.i.i63.i = load i32, i32* %42, align 4
  %64 = tail call i32 @strchr(i32 %arg.i.i62.i, i32 %arg2.i.i63.i)
  %.not.i65.i.i = icmp eq i32 %64, 0
  %.pre.pre.i = load i32, i32* %39, align 8
  br i1 %.not.i65.i.i, label %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, label %BB_8049492.i.i

BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_8049465.i.i
  %.pre76.pre.i = load i32, i32* %33, align 4
  br label %BB_80494A7.i.loopexit.i

BB_80494A7.i.loopexit.i:                          ; preds = %BB_8049499.i.preheader.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, %BB_8049492.i.i
  %65 = phi i32 [ %77, %BB_8049499.i.preheader.i ], [ %.pre76.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %43, %BB_8049492.i.i ]
  %66 = phi i32 [ %76, %BB_8049499.i.preheader.i ], [ %.pre.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i8.i.i, %BB_8049492.i.i ]
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %BB_8049405.i.preheader.i, label %Func_smallest_word.exit

BB_8049405.i.preheader.i:                         ; preds = %BB_80494A7.i.loopexit.i, %BB_8049405.i.preheader.lr.ph.i
  store i32 0, i32* %34, align 16
  %68 = load i32, i32* %39, align 8
  %69 = load i32, i32* %25, align 4
  %tmp0_v3.i91.i69.i = add i32 %69, %68
  %70 = inttoptr i32 %tmp0_v3.i91.i69.i to i8*
  %71 = load i8, i8* %70, align 1
  %tmp0_v5.i93.i70.i = sext i8 %71 to i32
  store i32 %tmp0_v5.i93.i70.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i5271.i = load i32, i32* %30, align 16
  %arg2.i.i72.i = load i32, i32* %42, align 4
  %72 = tail call i32 @strchr(i32 %arg.i.i5271.i, i32 %arg2.i.i72.i)
  %.not.i31.i73.i = icmp eq i32 %72, 0
  br i1 %.not.i31.i73.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049415.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %73 = load i32, i32* %34, align 16
  %tmp0_v2.i137.i.i = add i32 %73, %tmp2_v5.i73.i.i
  %74 = inttoptr i32 %tmp0_v2.i137.i.i to i8*
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %35, align 4
  %.not.i.i.i = icmp eq i32 %75, -1
  br i1 %.not.i.i.i, label %BB_804943E.i.i, label %BB_8049499.i.preheader.i

BB_8049499.i.preheader.i:                         ; preds = %BB_8049415.i.i, %BB_804943E.i.i
  %76 = load i32, i32* %39, align 8
  %77 = load i32, i32* %33, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

Func_smallest_word.exit:                          ; preds = %BB_80494A7.i.loopexit.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i
  %.pre-phi.i = phi i32* [ %.pre81.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %42, %BB_80494A7.i.loopexit.i ]
  %tmp2_v2.i19.i.pre-phi.i = phi i32 [ %.pre79.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %tmp2_v5.i60.i.i, %BB_80494A7.i.loopexit.i ]
  %79 = load i32, i32* %35, align 4
  %tmp0_v1.i81.i.i = add i32 %79, 1
  store i32 %tmp0_v1.i81.i.i, i32* %30, align 16
  store i32 134517963, i32* %31, align 4
  %arg.i.i57.i = load i32, i32* %30, align 16
  %80 = tail call i32 @malloc(i32 %arg.i.i57.i)
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i23.i, -624
  %81 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 %80, i32* %81, align 16
  store i32 %tmp2_v2.i19.i.pre-phi.i, i32* %.pre-phi.i, align 4
  %82 = load i32, i32* %81, align 16
  store i32 %82, i32* %30, align 16
  store i32 134517993, i32* %31, align 4
  %arg.i.i60.i = load i32, i32* %30, align 16
  %arg2.i.i61.i = load i32, i32* %.pre-phi.i, align 4
  %83 = tail call i32 @strcpy(i32 %arg.i.i60.i, i32 %arg2.i.i61.i)
  %84 = load i32, i32* %81, align 16
  %85 = load i32, i32* %21, align 8
  %tmp2_v.i35.i = add i32 %85, -48
  %86 = inttoptr i32 %tmp2_v.i35.i to i32*
  store i32 %84, i32* %86, align 4
  store i32 %84, i32* %19, align 16
  store i32 134517466, i32* %20, align 4
  %arg.i.i = load i32, i32* %19, align 16
  %87 = inttoptr i32 %arg.i.i to i8*
  %88 = tail call i32 @puts(i8* nonnull dereferenceable(1) %87)
  %89 = load i32, i32* %86, align 4
  store i32 %89, i32* %19, align 16
  store i32 134517480, i32* %20, align 4
  %arg.i.i3 = load i32, i32* %19, align 16
  tail call void @free(i32 %arg.i.i3)
  ret void
}
define internal fastcc { i32, i32, i32, i32, i32 } @Func_dequeue(i32 %arg_esp, i32 %arg_edx, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !26 {
Func_8049614.exit.i:
  %tmp2_v.i1.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i1.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %arg_ebx, i32* %1, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, -32
  %2 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134518278, i32* %2, align 4
  %tmp2_v.i18.i = add i32 %arg_esp, 4
  %3 = inttoptr i32 %tmp2_v.i18.i to i32*
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %2, align 4
  %tmp2_v3.i22.i = add i32 %arg_esp, -36
  %5 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 134518292, i32* %5, align 4
  %tmp2_v.i.i.i = add i32 %arg_esp, -40
  %6 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %6, align 4
  %tmp2_v1.i.i.i = add i32 %arg_esp, -44
  %7 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134518048, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %tmp2_v2.i.i.i = add i32 %8, 8
  %9 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %10 = load i32, i32* %9, align 4
  %.not.i.i.i.not = icmp eq i32 %10, 0
  %11 = load i32, i32* %6, align 4
  %tmp2_v.i.i = add i32 %11, 12
  %12 = inttoptr i32 %tmp2_v.i.i to i32*
  %13 = load i32, i32* %12, align 4
  %14 = inttoptr i32 %13 to i8*
  br i1 %.not.i.i.i.not, label %BB_804961B.i, label %BB_8049628.i

BB_804961B.i:                                     ; preds = %Func_8049614.exit.i
  store i8 0, i8* %14, align 1
  %.pre = add i32 %11, 8
  br label %.exit

BB_8049660.i:                                     ; preds = %BB_8049628.i
  %15 = load i32, i32* %40, align 4
  %tmp2_v2.i7.i = add i32 %15, 4
  %16 = inttoptr i32 %tmp2_v2.i7.i to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %40, align 4
  br label %BB_804966D.i

BB_804966D.i:                                     ; preds = %BB_804964B.i, %BB_8049660.i
  %18 = load i32, i32* %36, align 4
  store i32 %18, i32* %7, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, -48
  %19 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 134518392, i32* %19, align 4
  %arg.i.i = load i32, i32* %7, align 4
  tail call void @free(i32 %arg.i.i)
  %20 = load i32, i32* %26, align 4
  %tmp2_v2.i28.i = add i32 %20, 8
  %21 = inttoptr i32 %tmp2_v2.i28.i to i32*
  %22 = load i32, i32* %21, align 4
  %tmp2_v4.i30.i = add i32 %22, -1
  store i32 %tmp2_v4.i30.i, i32* %21, align 4
  %23 = load i32, i32* %32, align 4
  br label %.exit

BB_804964B.i:                                     ; preds = %BB_8049628.i
  store i32 0, i32* %40, align 4
  %24 = load i32, i32* %26, align 4
  %tmp2_v3.i41.i = add i32 %24, 4
  %25 = inttoptr i32 %tmp2_v3.i41.i to i32*
  store i32 0, i32* %25, align 4
  br label %BB_804966D.i

BB_8049628.i:                                     ; preds = %Func_8049614.exit.i
  store i8 1, i8* %14, align 1
  %tmp2_v1.i51.i = add i32 %11, 8
  %26 = inttoptr i32 %tmp2_v1.i51.i to i32*
  %27 = load i32, i32* %26, align 4
  %28 = inttoptr i32 %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = inttoptr i32 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %tmp2_v5.i54.i = add i32 %11, -16
  %32 = inttoptr i32 %tmp2_v5.i54.i to i32*
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %26, align 4
  %34 = inttoptr i32 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %tmp2_v9.i56.i = add i32 %11, -12
  %36 = inttoptr i32 %tmp2_v9.i56.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %26, align 4
  %tmp2_v12.i.i = add i32 %37, 8
  %38 = inttoptr i32 %tmp2_v12.i.i to i32*
  %39 = load i32, i32* %38, align 4
  %.not.i.i = icmp eq i32 %39, 1
  %40 = inttoptr i32 %37 to i32*
  br i1 %.not.i.i, label %BB_804964B.i, label %BB_8049660.i

.exit:                                            ; preds = %BB_804966D.i, %BB_804961B.i
  %tmp4_v3.i.i.pre-phi = phi i32 [ %tmp2_v1.i51.i, %BB_804966D.i ], [ %.pre, %BB_804961B.i ]
  %r_eax.0 = phi i32 [ %23, %BB_804966D.i ], [ 0, %BB_804961B.i ]
  %r_edx.0 = phi i32 [ %tmp2_v4.i30.i, %BB_804966D.i ], [ %arg_edx, %BB_804961B.i ]
  %tmp2_v.i43.i = add i32 %11, -4
  %41 = inttoptr i32 %tmp2_v.i43.i to i32*
  %42 = load i32, i32* %41, align 4
  %43 = inttoptr i32 %11 to i32*
  %44 = load i32, i32* %43, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp4_v3.i.i.pre-phi, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %r_edx.0, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %44, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %42, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}
define internal fastcc { i32, i32, i32, i32 } @Func_enqueue(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !27 {
Func_80495B2.exit.i:
  %tmp2_v.i4.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i6.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i6.i to i32*
  store i32 %arg_ebx, i32* %1, align 4
  %tmp2_v2.i8.i = add i32 %arg_esp, -32
  %2 = inttoptr i32 %tmp2_v2.i8.i to i32*
  store i32 134518142, i32* %2, align 4
  %tmp2_v.i.i = add i32 %arg_esp, -44
  %3 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 8, i32* %3, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, -48
  %4 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134518159, i32* %4, align 4
  %arg.i.i = load i32, i32* %3, align 4
  %5 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i25.i = add i32 %arg_esp, -16
  %6 = inttoptr i32 %tmp2_v.i25.i to i32*
  store i32 %5, i32* %6, align 4
  %tmp2_v3.i29.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v3.i29.i to i32*
  %8 = load i32, i32* %7, align 4
  %9 = inttoptr i32 %5 to i32*
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %tmp2_v7.i32.i = add i32 %10, 4
  %11 = inttoptr i32 %tmp2_v7.i32.i to i32*
  store i32 0, i32* %11, align 4
  %tmp2_v9.i.i = add i32 %arg_esp, 4
  %12 = inttoptr i32 %tmp2_v9.i.i to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  store i32 134518194, i32* %4, align 4
  %tmp2_v.i.i.i = add i32 %arg_esp, -52
  %14 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v.i4.i, i32* %14, align 4
  %tmp2_v1.i.i.i = add i32 %arg_esp, -56
  %15 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134518048, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %tmp2_v2.i.i.i = add i32 %16, 8
  %17 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %18 = load i32, i32* %17, align 4
  %.not.i.i.i.not = icmp eq i32 %18, 0
  %19 = load i32, i32* %14, align 4
  %tmp2_v.i36.i = add i32 %19, 8
  %20 = inttoptr i32 %tmp2_v.i36.i to i32*
  %21 = load i32, i32* %20, align 4
  br i1 %.not.i.i.i.not, label %.exit, label %BB_80495CC.i

BB_80495CC.i:                                     ; preds = %Func_80495B2.exit.i
  %tmp2_v1.i12.i = add i32 %21, 4
  %22 = inttoptr i32 %tmp2_v1.i12.i to i32*
  %23 = load i32, i32* %22, align 4
  %tmp2_v5.i.i = add i32 %23, 4
  br label %.exit

.exit:                                            ; preds = %BB_80495CC.i, %Func_80495B2.exit.i
  %.sink23 = phi i32 [ %tmp2_v5.i.i, %BB_80495CC.i ], [ %21, %Func_80495B2.exit.i ]
  %.sink21.in = add i32 %19, -12
  %.sink21 = inttoptr i32 %.sink21.in to i32*
  %.sink = load i32, i32* %.sink21, align 4
  %24 = inttoptr i32 %.sink23 to i32*
  store i32 %.sink, i32* %24, align 4
  %25 = load i32, i32* %20, align 4
  %26 = load i32, i32* %.sink21, align 4
  %tmp2_v7.i44.i = add i32 %25, 4
  %27 = inttoptr i32 %tmp2_v7.i44.i to i32*
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %20, align 4
  %tmp2_v1.i.i = add i32 %28, 8
  %29 = inttoptr i32 %tmp2_v1.i.i to i32*
  %30 = load i32, i32* %29, align 4
  %tmp2_v3.i.i = add i32 %30, 1
  store i32 %tmp2_v3.i.i, i32* %29, align 4
  %tmp2_v7.i.i = add i32 %19, -4
  %31 = inttoptr i32 %tmp2_v7.i.i to i32*
  %32 = load i32, i32* %31, align 4
  %33 = inttoptr i32 %19 to i32*
  %34 = load i32, i32* %33, align 4
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp2_v.i36.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %tmp2_v3.i.i, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %34, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %32, 3
  ret { i32, i32, i32, i32 } %mrv3
}
define internal fastcc void @queue_linked_list637(i32 %arg_esp) unnamed_addr  norecurse  !retregs !28 {
Func_8049255.exit.i:
  %tmp2_v.i52.i = add i32 %arg_esp, 4
  %tmp0_v.i53.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i55.i = add i32 %tmp0_v.i53.i, -4
  %2 = inttoptr i32 %tmp2_v3.i55.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i56.i = add i32 %tmp0_v.i53.i, -8
  %3 = inttoptr i32 %tmp2_v4.i56.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i58.i = add i32 %tmp0_v.i53.i, -12
  %4 = inttoptr i32 %tmp2_v5.i58.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i60.i = add i32 %tmp0_v.i53.i, -16
  %5 = inttoptr i32 %tmp2_v6.i60.i to i32*
  store i32 %tmp2_v.i52.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i53.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp4_v.i101.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i105.i = add i32 %tmp0_v.i53.i, -20
  %9 = inttoptr i32 %tmp2_v2.i105.i to i32*
  store i32 %8, i32* %9, align 4
  store i32 134517319, i32* %6, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i53.i, -40
  %10 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i56.i, i32* %10, align 8
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i53.i, -44
  %11 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
  store i32 134529024, i32* %11, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i53.i, -68
  %12 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: %spi.bis.635 = ptrtoint[4 x i8]* @str.bis.635 to i32
  %cipher.ptr.183 = alloca [9 x i8]
  store [9 x i8] c"\42\55\45\72\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.183
  %cipher.183 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.183, i32 0, i32 0
  %plain.ptr.183 = tail call i8* @base64_decode(i8* %cipher.183)
  %spi183 = bitcast i8* %plain.ptr.183 to [4 x i8]*
  %spi.bis.635 = ptrtoint[4 x i8]* %spi183 to i32
;-------------------------------
  store i32 %spi.bis.635, i32* %12, align 4
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i53.i, -80
  %13 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 12, i32* %13, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i53.i, -84
  %14 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517968, i32* %14, align 4
  %arg.i.i.i = load i32, i32* %13, align 16
  %15 = tail call i32 @malloc(i32 %arg.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i53.i, -52
  %16 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %15, i32* %16, align 4
  %17 = inttoptr i32 %15 to i32*
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %16, align 4
  %tmp2_v5.i.i.i = add i32 %18, 4
  %19 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %16, align 4
  %tmp2_v8.i.i.i = add i32 %20, 8
  %21 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 8
  %tmp2_v.i76.i = add i32 %24, -20
  %25 = inttoptr i32 %tmp2_v.i76.i to i32*
  store i32 %22, i32* %25, align 4
  %tmp2_v3.i82.i = add i32 %tmp0_v.i53.i, -48
  %26 = inttoptr i32 %tmp2_v3.i82.i to i32*
  store i32 %22, i32* %26, align 16
  store i32 134517333, i32* %16, align 4
  %tmp2_v.i.i.i3 = add i32 %tmp0_v.i53.i, -56
  %27 = inttoptr i32 %tmp2_v.i.i.i3 to i32*
  store i32 %24, i32* %27, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i53.i, -60
  %28 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134518048, i32* %28, align 4
  %29 = load i32, i32* %27, align 8
  %tmp2_v.i152.i = add i32 %23, -8184
  store i32 %tmp2_v.i152.i, i32* %26, align 16
  store i32 134517355, i32* %16, align 4
  %arg.i.i = load i32, i32* %26, align 16
  %30 = inttoptr i32 %arg.i.i to i8*
  %31 = tail call i32 @puts(i8* nonnull dereferenceable(1) %30)
  store i32 4, i32* %11, align 4
  %tmp2_v2.i123.i = add i32 %29, -20
  %32 = inttoptr i32 %tmp2_v2.i123.i to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %26, align 16
  store i32 134517371, i32* %16, align 4
  %34 = tail call fastcc { i32, i32, i32, i32 } @Func_enqueue(i32 %tmp2_v.i.i.i, i32 %29, i32 %23)
  %35 = extractvalue { i32, i32, i32, i32 } %34, 0
  %36 = extractvalue { i32, i32, i32, i32 } %34, 2
  %37 = extractvalue { i32, i32, i32, i32 } %34, 3
  %tmp2_v.i146.i = add i32 %36, -20
  %38 = inttoptr i32 %tmp2_v.i146.i to i32*
  %39 = load i32, i32* %38, align 4
  %40 = inttoptr i32 %35 to i32*
  store i32 %39, i32* %40, align 4
  %tmp2_v4.i148.i = add i32 %35, -4
  %41 = inttoptr i32 %tmp2_v4.i148.i to i32*
  store i32 134517385, i32* %41, align 4
  %tmp2_v.i.i.i8 = add i32 %35, -8
  %42 = inttoptr i32 %tmp2_v.i.i.i8 to i32*
  store i32 %36, i32* %42, align 4
  %tmp2_v1.i.i.i9 = add i32 %35, -12
  %43 = inttoptr i32 %tmp2_v1.i.i.i9 to i32*
  store i32 134518048, i32* %43, align 4
  %44 = load i32, i32* %42, align 4
  %tmp2_v.i278.i = add i32 %37, -8168
  store i32 %tmp2_v.i278.i, i32* %40, align 4
  store i32 134517410, i32* %41, align 4
  %arg.i.i17 = load i32, i32* %40, align 4
  %45 = inttoptr i32 %arg.i.i17 to i8*
  %46 = tail call i32 @puts(i8* nonnull dereferenceable(1) %45)
  %tmp2_v.i36.i = add i32 %35, 4
  %47 = inttoptr i32 %tmp2_v.i36.i to i32*
  store i32 5, i32* %47, align 4
  %tmp2_v2.i38.i = add i32 %44, -20
  %48 = inttoptr i32 %tmp2_v2.i38.i to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %40, align 4
  store i32 134517426, i32* %41, align 4
  %50 = tail call fastcc { i32, i32, i32, i32 } @Func_enqueue(i32 %tmp2_v4.i148.i, i32 %44, i32 %37)
  %51 = extractvalue { i32, i32, i32, i32 } %50, 0
  %52 = extractvalue { i32, i32, i32, i32 } %50, 2
  %53 = extractvalue { i32, i32, i32, i32 } %50, 3
  %tmp2_v.i158.i = add i32 %51, 4
  %54 = inttoptr i32 %tmp2_v.i158.i to i32*
  store i32 6, i32* %54, align 4
  %tmp2_v2.i160.i = add i32 %52, -20
  %55 = inttoptr i32 %tmp2_v2.i160.i to i32*
  %56 = load i32, i32* %55, align 4
  %57 = inttoptr i32 %51 to i32*
  store i32 %56, i32* %57, align 4
  %tmp2_v5.i162.i = add i32 %51, -4
  %58 = inttoptr i32 %tmp2_v5.i162.i to i32*
  store i32 134517442, i32* %58, align 4
  %59 = tail call fastcc { i32, i32, i32, i32 } @Func_enqueue(i32 %tmp2_v5.i162.i, i32 %52, i32 %53)
  %60 = extractvalue { i32, i32, i32, i32 } %59, 0
  %61 = extractvalue { i32, i32, i32, i32 } %59, 1
  %62 = extractvalue { i32, i32, i32, i32 } %59, 2
  %63 = extractvalue { i32, i32, i32, i32 } %59, 3
  %tmp2_v.i96.i = add i32 %62, -20
  %64 = inttoptr i32 %tmp2_v.i96.i to i32*
  %65 = load i32, i32* %64, align 4
  %66 = inttoptr i32 %60 to i32*
  store i32 %65, i32* %66, align 4
  %tmp2_v4.i98.i = add i32 %60, -4
  %67 = inttoptr i32 %tmp2_v4.i98.i to i32*
  store i32 134517456, i32* %67, align 4
  %tmp2_v.i.i.i18 = add i32 %60, -8
  %68 = inttoptr i32 %tmp2_v.i.i.i18 to i32*
  store i32 %62, i32* %68, align 4
  %tmp2_v1.i.i.i19 = add i32 %60, -12
  %69 = inttoptr i32 %tmp2_v1.i.i.i19 to i32*
  store i32 134518023, i32* %69, align 4
  %70 = load i32, i32* %66, align 4
  %tmp2_v2.i.i.i20 = add i32 %70, 8
  %71 = inttoptr i32 %tmp2_v2.i.i.i20 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %68, align 4
  %tmp2_v.i300.i = add i32 %60, 4
  %74 = inttoptr i32 %tmp2_v.i300.i to i32*
  store i32 %72, i32* %74, align 4
  %tmp2_v2.i303.i = add i32 %63, -8148
  store i32 %tmp2_v2.i303.i, i32* %66, align 4
  store i32 134517475, i32* %67, align 4
  %75 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %61, i32 noundef %60, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %76 = lshr i64 %75, 32
  %77 = trunc i64 %76 to i32
  %tmp2_v.i64.i = add i32 %73, -21
  %78 = inttoptr i32 %tmp2_v.i64.i to i8*
  store i8 0, i8* %78, align 1
  %tmp2_v1.i65.i = add i32 %73, -16
  %79 = inttoptr i32 %tmp2_v1.i65.i to i32*
  store i32 0, i32* %79, align 4
  store i32 %tmp2_v.i64.i, i32* %74, align 4
  %tmp2_v5.i69.i = add i32 %73, -20
  %80 = inttoptr i32 %tmp2_v5.i69.i to i32*
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %66, align 4
  store i32 134517504, i32* %67, align 4
  store i32 %73, i32* %68, align 4
  store i32 134518078, i32* %69, align 4
  %82 = load i32, i32* %66, align 4
  store i32 %82, i32* %69, align 4
  %tmp2_v3.i.i.i = add i32 %60, -16
  %83 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134518091, i32* %83, align 4
  %tmp2_v.i.i.i.i = add i32 %60, -20
  %84 = inttoptr i32 %tmp2_v.i.i.i.i to i32*
  store i32 %tmp2_v.i.i.i18, i32* %84, align 4
  %tmp2_v1.i.i.i.i = add i32 %60, -24
  %85 = inttoptr i32 %tmp2_v1.i.i.i.i to i32*
  store i32 134518048, i32* %85, align 4
  %86 = load i32, i32* %69, align 4
  %tmp2_v2.i.i.i.i = add i32 %86, 8
  %87 = inttoptr i32 %tmp2_v2.i.i.i.i to i32*
  %88 = load i32, i32* %87, align 4
  %.not.i.i.i.not.i = icmp eq i32 %88, 0
  %89 = load i32, i32* %84, align 4
  %tmp2_v.i11.i.i = add i32 %89, 12
  %90 = inttoptr i32 %tmp2_v.i11.i.i to i32*
  %91 = load i32, i32* %90, align 4
  %92 = inttoptr i32 %91 to i8*
  br i1 %.not.i.i.i.not.i, label %BB_8049552.i.i, label %BB_804955F.i.i

BB_804955F.i.i:                                   ; preds = %Func_8049255.exit.i
  store i8 1, i8* %92, align 1
  %tmp2_v1.i.i.i26 = add i32 %89, 8
  %93 = inttoptr i32 %tmp2_v1.i.i.i26 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = inttoptr i32 %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = inttoptr i32 %96 to i32*
  %98 = load i32, i32* %97, align 4
  br label %Func_peek.exit

BB_8049552.i.i:                                   ; preds = %Func_8049255.exit.i
  store i8 0, i8* %92, align 1
  %.pre.i = add i32 %89, 8
  %.pre = inttoptr i32 %.pre.i to i32*
  br label %Func_peek.exit

Func_peek.exit:                                   ; preds = %BB_8049552.i.i, %BB_804955F.i.i
  %.pre-phi = phi i32* [ %93, %BB_804955F.i.i ], [ %.pre, %BB_8049552.i.i ]
  %tmp4_v2.i.i.pre-phi.i = phi i32 [ %tmp2_v1.i.i.i26, %BB_804955F.i.i ], [ %.pre.i, %BB_8049552.i.i ]
  %r_eax.0.i = phi i32 [ %98, %BB_804955F.i.i ], [ 0, %BB_8049552.i.i ]
  %99 = inttoptr i32 %89 to i32*
  %100 = load i32, i32* %99, align 4
  %tmp2_v.i87.i = add i32 %100, -16
  %101 = inttoptr i32 %tmp2_v.i87.i to i32*
  store i32 %r_eax.0.i, i32* %101, align 4
  %tmp2_v1.i89.i = add i32 %100, -21
  %tmp2_v2.i254.i = add i32 %tmp4_v2.i.i.pre-phi.i, 4
  %102 = inttoptr i32 %tmp2_v2.i254.i to i32*
  store i32 %r_eax.0.i, i32* %102, align 4
  %tmp2_v3.i256.i = add i32 %63, -8132
  store i32 %tmp2_v3.i256.i, i32* %.pre-phi, align 4
  %tmp2_v5.i258.i = add i32 %tmp4_v2.i.i.pre-phi.i, -4
  %103 = inttoptr i32 %tmp2_v5.i258.i to i32*
  store i32 134517536, i32* %103, align 4
  %104 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %77, i32 noundef %tmp4_v2.i.i.pre-phi.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %105 = lshr i64 %104, 32
  %106 = trunc i64 %105 to i32
  store i32 %tmp2_v1.i89.i, i32* %102, align 4
  %tmp2_v3.i12.i = add i32 %100, -20
  %107 = inttoptr i32 %tmp2_v3.i12.i to i32*
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %.pre-phi, align 4
  store i32 134517554, i32* %103, align 4
  %109 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_dequeue(i32 %tmp2_v5.i258.i, i32 %106, i32 %100, i32 %63)
  %110 = extractvalue { i32, i32, i32, i32, i32 } %109, 0
  %111 = extractvalue { i32, i32, i32, i32, i32 } %109, 1
  %112 = extractvalue { i32, i32, i32, i32, i32 } %109, 2
  %113 = extractvalue { i32, i32, i32, i32, i32 } %109, 3
  %114 = extractvalue { i32, i32, i32, i32, i32 } %109, 4
  %tmp2_v.i217.i = add i32 %113, -16
  %115 = inttoptr i32 %tmp2_v.i217.i to i32*
  store i32 %111, i32* %115, align 4
  %tmp2_v1.i219.i = add i32 %113, -21
  %tmp2_v2.i.i = add i32 %110, 4
  %116 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %111, i32* %116, align 4
  %tmp2_v3.i.i = add i32 %114, -8111
  %117 = inttoptr i32 %110 to i32*
  store i32 %tmp2_v3.i.i, i32* %117, align 4
  %tmp2_v5.i.i = add i32 %110, -4
  %118 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 134517586, i32* %118, align 4
  %119 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %112, i32 noundef %110, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %120 = lshr i64 %119, 32
  %121 = trunc i64 %120 to i32
  store i32 %tmp2_v1.i219.i, i32* %116, align 4
  %tmp2_v3.i228.i = add i32 %113, -20
  %122 = inttoptr i32 %tmp2_v3.i228.i to i32*
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %117, align 4
  store i32 134517604, i32* %118, align 4
  %tmp2_v.i7.i.i34 = add i32 %110, -8
  %124 = inttoptr i32 %tmp2_v.i7.i.i34 to i32*
  store i32 %113, i32* %124, align 4
  %tmp2_v1.i9.i.i35 = add i32 %110, -12
  %125 = inttoptr i32 %tmp2_v1.i9.i.i35 to i32*
  store i32 134518078, i32* %125, align 4
  %126 = load i32, i32* %117, align 4
  store i32 %126, i32* %125, align 4
  %tmp2_v3.i.i.i36 = add i32 %110, -16
  %127 = inttoptr i32 %tmp2_v3.i.i.i36 to i32*
  store i32 134518091, i32* %127, align 4
  %tmp2_v.i.i.i.i37 = add i32 %110, -20
  %128 = inttoptr i32 %tmp2_v.i.i.i.i37 to i32*
  store i32 %tmp2_v.i7.i.i34, i32* %128, align 4
  %tmp2_v1.i.i.i.i38 = add i32 %110, -24
  %129 = inttoptr i32 %tmp2_v1.i.i.i.i38 to i32*
  store i32 134518048, i32* %129, align 4
  %130 = load i32, i32* %125, align 4
  %tmp2_v2.i.i.i.i39 = add i32 %130, 8
  %131 = inttoptr i32 %tmp2_v2.i.i.i.i39 to i32*
  %132 = load i32, i32* %131, align 4
  %.not.i.i.i.not.i40 = icmp eq i32 %132, 0
  %133 = load i32, i32* %128, align 4
  %tmp2_v.i11.i.i41 = add i32 %133, 12
  %134 = inttoptr i32 %tmp2_v.i11.i.i41 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = inttoptr i32 %135 to i8*
  br i1 %.not.i.i.i.not.i40, label %BB_8049552.i.i45, label %BB_804955F.i.i43

BB_804955F.i.i43:                                 ; preds = %Func_peek.exit
  store i8 1, i8* %136, align 1
  %tmp2_v1.i.i.i42 = add i32 %133, 8
  %137 = inttoptr i32 %tmp2_v1.i.i.i42 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = inttoptr i32 %138 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = inttoptr i32 %140 to i32*
  %142 = load i32, i32* %141, align 4
  br label %Func_peek.exit51

BB_8049552.i.i45:                                 ; preds = %Func_peek.exit
  store i8 0, i8* %136, align 1
  %.pre.i44 = add i32 %133, 8
  %.pre102 = inttoptr i32 %.pre.i44 to i32*
  br label %Func_peek.exit51

Func_peek.exit51:                                 ; preds = %BB_8049552.i.i45, %BB_804955F.i.i43
  %.pre-phi103 = phi i32* [ %137, %BB_804955F.i.i43 ], [ %.pre102, %BB_8049552.i.i45 ]
  %tmp4_v2.i.i.pre-phi.i46 = phi i32 [ %tmp2_v1.i.i.i42, %BB_804955F.i.i43 ], [ %.pre.i44, %BB_8049552.i.i45 ]
  %r_eax.0.i47 = phi i32 [ %142, %BB_804955F.i.i43 ], [ 0, %BB_8049552.i.i45 ]
  %143 = inttoptr i32 %133 to i32*
  %144 = load i32, i32* %143, align 4
  %tmp2_v.i166.i = add i32 %144, -16
  %145 = inttoptr i32 %tmp2_v.i166.i to i32*
  store i32 %r_eax.0.i47, i32* %145, align 4
  %tmp2_v1.i168.i = add i32 %144, -21
  %tmp2_v2.i113.i = add i32 %tmp4_v2.i.i.pre-phi.i46, 4
  %146 = inttoptr i32 %tmp2_v2.i113.i to i32*
  store i32 %r_eax.0.i47, i32* %146, align 4
  %tmp2_v3.i115.i = add i32 %114, -8132
  store i32 %tmp2_v3.i115.i, i32* %.pre-phi103, align 4
  %tmp2_v5.i117.i = add i32 %tmp4_v2.i.i.pre-phi.i46, -4
  %147 = inttoptr i32 %tmp2_v5.i117.i to i32*
  store i32 134517636, i32* %147, align 4
  %148 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %121, i32 noundef %tmp4_v2.i.i.pre-phi.i46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %149 = lshr i64 %148, 32
  %150 = trunc i64 %149 to i32
  store i32 %tmp2_v1.i168.i, i32* %146, align 4
  %tmp2_v3.i24.i = add i32 %144, -20
  %151 = inttoptr i32 %tmp2_v3.i24.i to i32*
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %.pre-phi103, align 4
  store i32 134517654, i32* %147, align 4
  %153 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_dequeue(i32 %tmp2_v5.i117.i, i32 %150, i32 %144, i32 %114)
  %154 = extractvalue { i32, i32, i32, i32, i32 } %153, 0
  %155 = extractvalue { i32, i32, i32, i32, i32 } %153, 1
  %156 = extractvalue { i32, i32, i32, i32, i32 } %153, 2
  %157 = extractvalue { i32, i32, i32, i32, i32 } %153, 3
  %158 = extractvalue { i32, i32, i32, i32, i32 } %153, 4
  %tmp2_v.i270.i = add i32 %157, -16
  %159 = inttoptr i32 %tmp2_v.i270.i to i32*
  store i32 %155, i32* %159, align 4
  %tmp2_v1.i272.i = add i32 %157, -21
  %tmp2_v2.i185.i = add i32 %154, 4
  %160 = inttoptr i32 %tmp2_v2.i185.i to i32*
  store i32 %155, i32* %160, align 4
  %tmp2_v3.i187.i = add i32 %158, -8111
  %161 = inttoptr i32 %154 to i32*
  store i32 %tmp2_v3.i187.i, i32* %161, align 4
  %tmp2_v5.i189.i = add i32 %154, -4
  %162 = inttoptr i32 %tmp2_v5.i189.i to i32*
  store i32 134517686, i32* %162, align 4
  %163 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %156, i32 noundef %154, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %164 = lshr i64 %163, 32
  %165 = trunc i64 %164 to i32
  store i32 %tmp2_v1.i272.i, i32* %160, align 4
  %tmp2_v3.i177.i = add i32 %157, -20
  %166 = inttoptr i32 %tmp2_v3.i177.i to i32*
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %161, align 4
  store i32 134517704, i32* %162, align 4
  %tmp2_v.i7.i.i56 = add i32 %154, -8
  %168 = inttoptr i32 %tmp2_v.i7.i.i56 to i32*
  store i32 %157, i32* %168, align 4
  %tmp2_v1.i9.i.i57 = add i32 %154, -12
  %169 = inttoptr i32 %tmp2_v1.i9.i.i57 to i32*
  store i32 134518078, i32* %169, align 4
  %170 = load i32, i32* %161, align 4
  store i32 %170, i32* %169, align 4
  %tmp2_v3.i.i.i58 = add i32 %154, -16
  %171 = inttoptr i32 %tmp2_v3.i.i.i58 to i32*
  store i32 134518091, i32* %171, align 4
  %tmp2_v.i.i.i.i59 = add i32 %154, -20
  %172 = inttoptr i32 %tmp2_v.i.i.i.i59 to i32*
  store i32 %tmp2_v.i7.i.i56, i32* %172, align 4
  %tmp2_v1.i.i.i.i60 = add i32 %154, -24
  %173 = inttoptr i32 %tmp2_v1.i.i.i.i60 to i32*
  store i32 134518048, i32* %173, align 4
  %174 = load i32, i32* %169, align 4
  %tmp2_v2.i.i.i.i61 = add i32 %174, 8
  %175 = inttoptr i32 %tmp2_v2.i.i.i.i61 to i32*
  %176 = load i32, i32* %175, align 4
  %.not.i.i.i.not.i62 = icmp eq i32 %176, 0
  %177 = load i32, i32* %172, align 4
  %tmp2_v.i11.i.i63 = add i32 %177, 12
  %178 = inttoptr i32 %tmp2_v.i11.i.i63 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = inttoptr i32 %179 to i8*
  br i1 %.not.i.i.i.not.i62, label %BB_8049552.i.i67, label %BB_804955F.i.i65

BB_804955F.i.i65:                                 ; preds = %Func_peek.exit51
  store i8 1, i8* %180, align 1
  %tmp2_v1.i.i.i64 = add i32 %177, 8
  %181 = inttoptr i32 %tmp2_v1.i.i.i64 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = inttoptr i32 %182 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = inttoptr i32 %184 to i32*
  %186 = load i32, i32* %185, align 4
  br label %Func_peek.exit73

BB_8049552.i.i67:                                 ; preds = %Func_peek.exit51
  store i8 0, i8* %180, align 1
  %.pre.i66 = add i32 %177, 8
  %.pre104 = inttoptr i32 %.pre.i66 to i32*
  br label %Func_peek.exit73

Func_peek.exit73:                                 ; preds = %BB_8049552.i.i67, %BB_804955F.i.i65
  %.pre-phi105 = phi i32* [ %181, %BB_804955F.i.i65 ], [ %.pre104, %BB_8049552.i.i67 ]
  %tmp4_v2.i.i.pre-phi.i68 = phi i32 [ %tmp2_v1.i.i.i64, %BB_804955F.i.i65 ], [ %.pre.i66, %BB_8049552.i.i67 ]
  %r_eax.0.i69 = phi i32 [ %186, %BB_804955F.i.i65 ], [ 0, %BB_8049552.i.i67 ]
  %187 = inttoptr i32 %177 to i32*
  %188 = load i32, i32* %187, align 4
  %tmp2_v.i262.i = add i32 %188, -16
  %189 = inttoptr i32 %tmp2_v.i262.i to i32*
  store i32 %r_eax.0.i69, i32* %189, align 4
  %tmp2_v1.i264.i = add i32 %188, -21
  %tmp2_v2.i236.i = add i32 %tmp4_v2.i.i.pre-phi.i68, 4
  %190 = inttoptr i32 %tmp2_v2.i236.i to i32*
  store i32 %r_eax.0.i69, i32* %190, align 4
  %tmp2_v3.i238.i = add i32 %158, -8132
  store i32 %tmp2_v3.i238.i, i32* %.pre-phi105, align 4
  %tmp2_v5.i240.i = add i32 %tmp4_v2.i.i.pre-phi.i68, -4
  %191 = inttoptr i32 %tmp2_v5.i240.i to i32*
  store i32 134517736, i32* %191, align 4
  %192 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %165, i32 noundef %tmp4_v2.i.i.pre-phi.i68, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  %193 = lshr i64 %192, 32
  %194 = trunc i64 %193 to i32
  store i32 %tmp2_v1.i264.i, i32* %190, align 4
  %tmp2_v3.i311.i = add i32 %188, -20
  %195 = inttoptr i32 %tmp2_v3.i311.i to i32*
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %.pre-phi105, align 4
  store i32 134517754, i32* %191, align 4
  %197 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_dequeue(i32 %tmp2_v5.i240.i, i32 %194, i32 %188, i32 %158)
  %198 = extractvalue { i32, i32, i32, i32, i32 } %197, 0
  %199 = extractvalue { i32, i32, i32, i32, i32 } %197, 1
  %200 = extractvalue { i32, i32, i32, i32, i32 } %197, 2
  %201 = extractvalue { i32, i32, i32, i32, i32 } %197, 3
  %202 = extractvalue { i32, i32, i32, i32, i32 } %197, 4
  %tmp2_v.i244.i = add i32 %201, -16
  %203 = inttoptr i32 %tmp2_v.i244.i to i32*
  store i32 %199, i32* %203, align 4
  %tmp2_v1.i246.i = add i32 %201, -21
  %tmp2_v2.i46.i = add i32 %198, 4
  %204 = inttoptr i32 %tmp2_v2.i46.i to i32*
  store i32 %199, i32* %204, align 4
  %tmp2_v3.i48.i = add i32 %202, -8111
  %205 = inttoptr i32 %198 to i32*
  store i32 %tmp2_v3.i48.i, i32* %205, align 4
  %tmp2_v5.i50.i = add i32 %198, -4
  %206 = inttoptr i32 %tmp2_v5.i50.i to i32*
  store i32 134517786, i32* %206, align 4
  %207 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef %200, i32 noundef %198, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !29
  store i32 %tmp2_v1.i246.i, i32* %204, align 4
  %tmp2_v3.i294.i = add i32 %201, -20
  %208 = inttoptr i32 %tmp2_v3.i294.i to i32*
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %205, align 4
  store i32 134517804, i32* %206, align 4
  %tmp2_v.i7.i.i78 = add i32 %198, -8
  %210 = inttoptr i32 %tmp2_v.i7.i.i78 to i32*
  store i32 %201, i32* %210, align 4
  %tmp2_v1.i9.i.i79 = add i32 %198, -12
  %211 = inttoptr i32 %tmp2_v1.i9.i.i79 to i32*
  store i32 134518078, i32* %211, align 4
  %212 = load i32, i32* %205, align 4
  store i32 %212, i32* %211, align 4
  %tmp2_v3.i.i.i80 = add i32 %198, -16
  %213 = inttoptr i32 %tmp2_v3.i.i.i80 to i32*
  store i32 134518091, i32* %213, align 4
  %tmp2_v.i.i.i.i81 = add i32 %198, -20
  %214 = inttoptr i32 %tmp2_v.i.i.i.i81 to i32*
  store i32 %tmp2_v.i7.i.i78, i32* %214, align 4
  %tmp2_v1.i.i.i.i82 = add i32 %198, -24
  %215 = inttoptr i32 %tmp2_v1.i.i.i.i82 to i32*
  store i32 134518048, i32* %215, align 4
  %216 = load i32, i32* %211, align 4
  %tmp2_v2.i.i.i.i83 = add i32 %216, 8
  %217 = inttoptr i32 %tmp2_v2.i.i.i.i83 to i32*
  %218 = load i32, i32* %217, align 4
  %.not.i.i.i.not.i84 = icmp eq i32 %218, 0
  %219 = load i32, i32* %214, align 4
  %tmp2_v.i11.i.i85 = add i32 %219, 12
  %220 = inttoptr i32 %tmp2_v.i11.i.i85 to i32*
  %221 = load i32, i32* %220, align 4
  %222 = inttoptr i32 %221 to i8*
  br i1 %.not.i.i.i.not.i84, label %BB_8049552.i.i89, label %BB_804955F.i.i87

BB_804955F.i.i87:                                 ; preds = %Func_peek.exit73
  store i8 1, i8* %222, align 1
  %tmp2_v1.i.i.i86 = add i32 %219, 8
  %223 = inttoptr i32 %tmp2_v1.i.i.i86 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = inttoptr i32 %224 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = inttoptr i32 %226 to i32*
  %228 = load i32, i32* %227, align 4
  br label %Func_peek.exit95

BB_8049552.i.i89:                                 ; preds = %Func_peek.exit73
  store i8 0, i8* %222, align 1
  %.pre.i88 = add i32 %219, 8
  %.pre106 = inttoptr i32 %.pre.i88 to i32*
  br label %Func_peek.exit95

Func_peek.exit95:                                 ; preds = %BB_8049552.i.i89, %BB_804955F.i.i87
  %.pre-phi107 = phi i32* [ %223, %BB_804955F.i.i87 ], [ %.pre106, %BB_8049552.i.i89 ]
  %tmp4_v2.i.i.pre-phi.i90 = phi i32 [ %tmp2_v1.i.i.i86, %BB_804955F.i.i87 ], [ %.pre.i88, %BB_8049552.i.i89 ]
  %r_eax.0.i91 = phi i32 [ %228, %BB_804955F.i.i87 ], [ 0, %BB_8049552.i.i89 ]
  %229 = lshr i64 %207, 32
  %230 = trunc i64 %229 to i32
  %231 = inttoptr i32 %219 to i32*
  %232 = load i32, i32* %231, align 4
  %tmp2_v.i16.i = add i32 %232, -16
  %233 = inttoptr i32 %tmp2_v.i16.i to i32*
  store i32 %r_eax.0.i91, i32* %233, align 4
  %tmp2_v1.i17.i = add i32 %232, -21
  %tmp2_v.i30.i = add i32 %202, -8088
  store i32 %tmp2_v.i30.i, i32* %.pre-phi107, align 4
  %tmp2_v2.i32.i = add i32 %tmp4_v2.i.i.pre-phi.i90, -4
  %234 = inttoptr i32 %tmp2_v2.i32.i to i32*
  store i32 134517836, i32* %234, align 4
  %arg.i.i96 = load i32, i32* %.pre-phi107, align 4
  %235 = inttoptr i32 %arg.i.i96 to i8*
  %236 = tail call i32 @puts(i8* nonnull dereferenceable(1) %235)
  %tmp2_v2.i138.i = add i32 %tmp4_v2.i.i.pre-phi.i90, 4
  %237 = inttoptr i32 %tmp2_v2.i138.i to i32*
  store i32 %tmp2_v1.i17.i, i32* %237, align 4
  %tmp2_v3.i139.i = add i32 %232, -20
  %238 = inttoptr i32 %tmp2_v3.i139.i to i32*
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %.pre-phi107, align 4
  store i32 134517854, i32* %234, align 4
  %240 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_dequeue(i32 %tmp2_v2.i32.i, i32 %230, i32 %232, i32 %202)
  %241 = extractvalue { i32, i32, i32, i32, i32 } %240, 0
  %242 = extractvalue { i32, i32, i32, i32, i32 } %240, 1
  %243 = extractvalue { i32, i32, i32, i32, i32 } %240, 3
  %244 = extractvalue { i32, i32, i32, i32, i32 } %240, 4
  %tmp2_v.i208.i = add i32 %243, -16
  %245 = inttoptr i32 %tmp2_v.i208.i to i32*
  store i32 %242, i32* %245, align 4
  %tmp2_v.i4.i = add i32 %244, -8069
  %246 = inttoptr i32 %241 to i32*
  store i32 %tmp2_v.i4.i, i32* %246, align 4
  %tmp2_v2.i5.i = add i32 %241, -4
  %247 = inttoptr i32 %tmp2_v2.i5.i to i32*
  store i32 134517886, i32* %247, align 4
  %arg.i.i97 = load i32, i32* %246, align 4
  %248 = inttoptr i32 %arg.i.i97 to i8*
  %249 = tail call i32 @puts(i8* nonnull dereferenceable(1) %248)
  %tmp2_v.i130.i = add i32 %243, -20
  %250 = inttoptr i32 %tmp2_v.i130.i to i32*
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %246, align 4
  store i32 134517900, i32* %247, align 4
  %tmp2_v.i5.i.i = add i32 %241, -8
  %252 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  store i32 %243, i32* %252, align 4
  %tmp2_v1.i.i.i98 = add i32 %241, -12
  %253 = inttoptr i32 %tmp2_v1.i.i.i98 to i32*
  store i32 %244, i32* %253, align 4
  %tmp2_v2.i8.i.i = add i32 %241, -36
  %254 = inttoptr i32 %tmp2_v2.i8.i.i to i32*
  store i32 134518434, i32* %254, align 4
  %255 = load i32, i32* %246, align 4
  %256 = inttoptr i32 %255 to i32*
  %257 = load i32, i32* %256, align 4
  %tmp2_v3.i20.i.i = add i32 %241, -24
  %258 = inttoptr i32 %tmp2_v3.i20.i.i to i32*
  store i32 %257, i32* %258, align 4
  %259 = load i32, i32* %246, align 4
  %tmp2_v2.i.i.i99 = add i32 %241, -48
  %260 = inttoptr i32 %tmp2_v2.i.i.i99 to i32*
  store i32 %259, i32* %260, align 4
  %tmp2_v3.i.i.i100 = add i32 %241, -52
  %261 = inttoptr i32 %tmp2_v3.i.i.i100 to i32*
  store i32 134518496, i32* %261, align 4
  %arg.i.i.i101 = load i32, i32* %260, align 4
  tail call void @free(i32 %arg.i.i.i101)
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
!26 = !{i32 0, i32 2, i32 3, i32 4}
!27 = !{i32 0, i32 2, i32 3}
!28 = !{i32 0, i32 0, i32 0}
!29 = !{!"printf"}
!30 = !{!"clang version 14.0.0"}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"PIC Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{i32 1, !"NumRegisterParameters", i32 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{i32 0, i32 0, i32 0}
!41 = !{!"clang version 14.0.0"}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 7, !"PIC Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{i32 1, !"NumRegisterParameters", i32 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"double", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !49, i64 0}
!53 = !{i32 0, i32 0, i32 0, i32 0}
!54 = !{!"printf"}
!55 = !{!"clang version 14.0.0"}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 7, !"PIC Level", i32 2}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{i32 1, !"NumRegisterParameters", i32 0}
!61 = !{!62}
!62 = distinct !{!62, !63, !"float64ToCommonNaN: argument 0"}
!63 = distinct !{!63, !"float64ToCommonNaN"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"floatx80ToCommonNaN: argument 0"}
!66 = distinct !{!66, !"floatx80ToCommonNaN"}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = !{!72, !72, i64 0}
!72 = !{!"double", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C++ TBAA"}
!75 = !{!76, !76, i64 0}
!76 = !{!"int", !73, i64 0}
!77 = !{i32 0, i32 0, i32 0, i32 0}
!78 = !{!"printf"}
!79 = !{!"clang version 14.0.0"}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{i32 7, !"PIC Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{i32 1, !"NumRegisterParameters", i32 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"int", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C++ TBAA"}
!89 = !{i32 0, i32 0, i32 0, i32 0}
!90 = !{!"clang version 14.0.0"}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = !{i32 7, !"PIC Level", i32 2}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{i32 1, !"NumRegisterParameters", i32 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"double", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C++ TBAA"}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !98, i64 0}
!102 = !{i32 0, i32 0, i32 0}
!103 = !{!"printf"}
!104 = !{!"clang version 14.0.0"}
!105 = !{i32 1, !"wchar_size", i32 4}
!106 = !{i32 7, !"PIC Level", i32 2}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{i32 1, !"NumRegisterParameters", i32 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C++ TBAA"}
!114 = !{i32 0, i32 0, i32 0}
!115 = !{!"clang version 14.0.0"}
!116 = !{i32 1, !"wchar_size", i32 4}
!117 = !{i32 7, !"PIC Level", i32 2}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{i32 1, !"NumRegisterParameters", i32 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"double", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C++ TBAA"}
!125 = !{!126, !126, i64 0}
!126 = !{!"int", !123, i64 0}
!127 = !{i32 0, i32 0, i32 0, i32 0}
!128 = !{!"printf"}
!129 = !{!"clang version 14.0.0"}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 7, !"PIC Level", i32 2}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{i32 1, !"NumRegisterParameters", i32 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"double", !137, i64 0}
!137 = !{!"omnipotent char", !138, i64 0}
!138 = !{!"Simple C++ TBAA"}
!139 = !{!140, !140, i64 0}
!140 = !{!"int", !137, i64 0}
!141 = !{i32 0, i32 0, i32 0, i32 0}
!142 = !{!"printf"}
!143 = !{!"clang version 14.0.0"}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{i32 7, !"PIC Level", i32 2}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{i32 1, !"NumRegisterParameters", i32 0}
!149 = !{!150, !150, i64 0}
!150 = !{!"double", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C++ TBAA"}
!153 = !{!154, !154, i64 0}
!154 = !{!"int", !151, i64 0}
!155 = !{i32 0, i32 0, i32 0, i32 0}
!156 = !{!"printf"}
!157 = !{!"clang version 14.0.0"}
!158 = !{i32 1, !"wchar_size", i32 4}
!159 = !{i32 7, !"PIC Level", i32 2}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{i32 1, !"NumRegisterParameters", i32 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"double", !165, i64 0}
!165 = !{!"omnipotent char", !166, i64 0}
!166 = !{!"Simple C++ TBAA"}
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !165, i64 0}
!169 = !{i32 0, i32 0, i32 0, i32 0}
!170 = !{!"printf"}
!171 = !{!"clang version 14.0.0"}
!172 = !{i32 1, !"wchar_size", i32 4}
!173 = !{i32 7, !"PIC Level", i32 2}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{i32 1, !"NumRegisterParameters", i32 0}
!177 = !{!178, !178, i64 0}
!178 = !{!"int", !179, i64 0}
!179 = !{!"omnipotent char", !180, i64 0}
!180 = !{!"Simple C++ TBAA"}
!181 = !{i32 0, i32 0, i32 0}
!182 = !{!"clang version 14.0.0"}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{i32 7, !"PIC Level", i32 2}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{i32 1, !"NumRegisterParameters", i32 0}
!188 = !{!189, !189, i64 0}
!189 = !{!"double", !190, i64 0}
!190 = !{!"omnipotent char", !191, i64 0}
!191 = !{!"Simple C++ TBAA"}
!192 = !{!193, !193, i64 0}
!193 = !{!"int", !190, i64 0}
!194 = !{i32 0, i32 0, i32 0, i32 0}
!195 = !{!"printf"}
!196 = !{!"clang version 14.0.0"}
!197 = !{i32 1, !"wchar_size", i32 4}
!198 = !{i32 7, !"PIC Level", i32 2}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{i32 7, !"frame-pointer", i32 2}
!201 = !{i32 1, !"NumRegisterParameters", i32 0}
!202 = !{!203, !203, i64 0}
!203 = !{!"int", !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C++ TBAA"}
!206 = !{i32 0, i32 0, i32 0}
!207 = !{!"clang version 14.0.0"}
!208 = !{i32 1, !"wchar_size", i32 4}
!209 = !{i32 7, !"PIC Level", i32 2}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{i32 1, !"NumRegisterParameters", i32 0}
!213 = !{!214, !214, i64 0}
!214 = !{!"double", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C++ TBAA"}
!217 = !{!218, !218, i64 0}
!218 = !{!"int", !215, i64 0}
!219 = !{i32 0, i32 0, i32 0, i32 0}
!220 = !{!"printf"}
!221 = !{!"clang version 14.0.0"}
!222 = !{i32 1, !"wchar_size", i32 4}
!223 = !{i32 7, !"PIC Level", i32 2}
!224 = !{i32 7, !"uwtable", i32 1}
!225 = !{i32 7, !"frame-pointer", i32 2}
!226 = !{i32 1, !"NumRegisterParameters", i32 0}
!227 = !{!228, !228, i64 0}
!228 = !{!"double", !229, i64 0}
!229 = !{!"omnipotent char", !230, i64 0}
!230 = !{!"Simple C++ TBAA"}
!231 = !{!232, !232, i64 0}
!232 = !{!"int", !229, i64 0}
!233 = !{i32 0, i32 0, i32 0}
!234 = !{!"printf"}
!235 = !{!"clang version 14.0.0"}
!236 = !{i32 1, !"wchar_size", i32 4}
!237 = !{i32 7, !"PIC Level", i32 2}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{i32 1, !"NumRegisterParameters", i32 0}
!241 = !{!242, !242, i64 0}
!242 = !{!"double", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C++ TBAA"}
!245 = !{!246, !246, i64 0}
!246 = !{!"int", !243, i64 0}
!247 = !{i32 0, i32 0, i32 0, i32 0}
!248 = !{!"printf"}
!249 = !{!"clang version 14.0.0"}
!250 = !{i32 1, !"wchar_size", i32 4}
!251 = !{i32 7, !"PIC Level", i32 2}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = !{i32 1, !"NumRegisterParameters", i32 0}
!255 = !{!256, !256, i64 0}
!256 = !{!"double", !257, i64 0}
!257 = !{!"omnipotent char", !258, i64 0}
!258 = !{!"Simple C++ TBAA"}
!259 = !{!260, !260, i64 0}
!260 = !{!"int", !257, i64 0}
!261 = !{i32 0, i32 0, i32 0}
!262 = !{!"printf"}
!263 = !{!"clang version 14.0.0"}
!264 = !{i32 1, !"wchar_size", i32 4}
!265 = !{i32 7, !"PIC Level", i32 2}
!266 = !{i32 7, !"uwtable", i32 1}
!267 = !{i32 7, !"frame-pointer", i32 2}
!268 = !{i32 1, !"NumRegisterParameters", i32 0}
!269 = !{!270, !270, i64 0}
!270 = !{!"double", !271, i64 0}
!271 = !{!"omnipotent char", !272, i64 0}
!272 = !{!"Simple C++ TBAA"}
!273 = !{!274, !274, i64 0}
!274 = !{!"int", !271, i64 0}
!275 = !{i32 0, i32 0, i32 0, i32 0}
!276 = !{!"printf"}
