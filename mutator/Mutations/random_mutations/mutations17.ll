; Mutation 193
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack203 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @fprintf()  naked noinline 
@stack683 = internal global [8092 x i32] zeroinitializer, align 16
@stack360 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem124 = internal global [1024 x i8] zeroinitializer, align 1
@fpuc = internal unnamed_addr global i16 0
@fpus = internal unnamed_addr global i16 0
@fp_status.1 = internal unnamed_addr global i8 0
@fp_status.3 = internal unnamed_addr global i8 0
@stack654 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @llvm.abs.i32(i32, i1 immarg)  nofree nosync nounwind readnone speculatable willreturn 
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 
%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@fp_status.2 = internal unnamed_addr global i8 0
@stack466 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem121 = internal global [1024 x i8] zeroinitializer, align 1
declare i64 @llvm.fshl.i64(i64, i64, i64)  nofree nosync nounwind readnone speculatable willreturn 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.1
;-------------------------------
; Replace: store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.1
;-------------------------------
; Replace: store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.1
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
; Replace: store i32 134520866, i32* %36, align 4
;-------------------------------
; Replace: store i32 134520869, i32* %37, align 16
;-------------------------------
; Replace: store i32 134517414, i32* %52, align 4
;-------------------------------
; Replace: store i32 134520840, i32* %53, align 8
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: store i32 134520863, i32* %56, align 16
declare i8* @base64_decode(i8*)
;-------------------------------
; Replace: %sp0.1.2 = bitcast [11 x i8]* @str.2 to i88*
;-------------------------------
; Replace: %sp1.1.2 = bitcast [11 x i8]* @key.2 to i88*
;-------------------------------
; Replace: %sp0.1.3 = bitcast [4 x i8]* @str.3 to i32*
;-------------------------------
; Replace: %sp1.1.3 = bitcast [4 x i8]* @key.3 to i32*
;-------------------------------
; Replace: %sp0.1.4 = bitcast [6 x i8]* @str.4 to i48*
;-------------------------------
; Replace: %sp1.1.4 = bitcast [6 x i8]* @key.4 to i48*
;-------------------------------
; Replace: %sp0.1.5 = bitcast [2 x i8]* @str.5 to i16*
;-------------------------------
; Replace: %sp1.1.5 = bitcast [2 x i8]* @key.5 to i16*
;-------------------------------
; Replace: %sp0.1.6 = bitcast [2 x i8]* @str.6 to i16*
;-------------------------------
; Replace: %sp1.1.6 = bitcast [2 x i8]* @key.6 to i16*
;-------------------------------
; Replace: %sp0.1.7 = bitcast [2 x i8]* @str.7 to i16*
;-------------------------------
; Replace: %sp1.1.7 = bitcast [2 x i8]* @key.7 to i16*
;-------------------------------
; Replace: %sp0.1.8 = bitcast [3 x i8]* @str.8 to i24*
;-------------------------------
; Replace: %sp1.1.8 = bitcast [3 x i8]* @key.8 to i24*
;-------------------------------
; Replace: %sp0.1.9 = bitcast [15 x i8]* @str.9 to i120*
;-------------------------------
; Replace: %sp1.1.9 = bitcast [15 x i8]* @key.9 to i120*
;-------------------------------
; Replace: %sp0.1.10 = bitcast [4 x i8]* @str.10 to i32*
;-------------------------------
; Replace: %sp1.1.10 = bitcast [4 x i8]* @key.10 to i32*
;-------------------------------
; Replace: %sp0.1.11 = bitcast [14 x i8]* @str.11 to i112*
;-------------------------------
; Replace: %sp1.1.11 = bitcast [14 x i8]* @key.11 to i112*
;-------------------------------
; Replace: %sp0.1.12 = bitcast [9 x i8]* @str.12 to i72*
;-------------------------------
; Replace: %sp1.1.12 = bitcast [9 x i8]* @key.12 to i72*
;-------------------------------
; Replace: %sp0.1.13 = bitcast [3 x i8]* @str.13 to i24*
;-------------------------------
; Replace: %sp1.1.13 = bitcast [3 x i8]* @key.13 to i24*
@.str127 = private unnamed_addr constant [1 x i8] c"\0a"

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
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7
declare i32 @getenv(i32) local_unnamed_addr noinline

; Function Attrs: norecurse
;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

declare i32 @time(i32) local_unnamed_addr noinline 

declare i32 @ptrace( i32, i32, i32, i32) naked noinline
;-------------------------------
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #3
declare i32 @atol(i32) local_unnamed_addr  noinline 
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 
declare i32 @usleep(i32) local_unnamed_addr  noinline 
declare i32 @toupper(i32) local_unnamed_addr  noinline 
declare i32 @alarm(i32) local_unnamed_addr noinline
declare i32 @tolower(i32) local_unnamed_addr  noinline 
declare double @atof(i32) local_unnamed_addr  noinline 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @atoi(i32) local_unnamed_addr  noinline 
declare i32 @detect_vm()
declare i32 @strpbrk(i32, i32) local_unnamed_addr  noinline 
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.193 = tail call i32 @detect_vm()
  %must.escape.193 = icmp ne i32 %result.193, 0
  br i1 %must.escape.193, label %.escape.193, label %.proceed.193
.proceed.193:
;----------------------------
;----------------------------
  ; Detect tracing running
  %result.90 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.90 = icmp eq i32 %result.90, -1
  br i1 %must.escape.90, label %.escape.90, label %.proceed.90
.proceed.90:
;----------------------------
  %time66 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time66)
  %rand_init87 = tail call i32 @rand()
  %rand_fin88 = srem i32 %rand_init87, 5
  %rand_init83 = tail call i32 @rand()
  %rand_fin84 = srem i32 %rand_init83, 5
  %rand_init79 = tail call i32 @rand()
  %rand_fin80 = srem i32 %rand_init79, 5
  %rand_init75 = tail call i32 @rand()
  %rand_fin76 = srem i32 %rand_init75, 5
  %rand_init71 = tail call i32 @rand()
  %rand_fin72 = srem i32 %rand_init71, 5
  %rand_init67 = tail call i32 @rand()
  %rand_fin68 = srem i32 %rand_init67, 5
;----------------------------
  ; Detect debug environment
  %debug.str.2.1 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.1
;-------------------------------
; Replace: %sp0.1.2 = bitcast [11 x i8]* @str.2 to i88*
;-------------------------------
; Replace: %cipher.ptr.14 = getelementptr inbounds [17 x i8], [17 x i8]* @cipher.14, i32 0, i32 0
  %spi155 = alloca [17 x i8]

  
  %sp0.155 = bitcast [17 x i8]* %spi155 to [2 x i8]*
  store [2 x i8] c"\4c\41", [2 x i8]* %sp0.155
  %next0.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 2
  
  %sp1.155 = bitcast i8* %next0.155 to [2 x i8]*
  store [2 x i8] c"\34\63", [2 x i8]* %sp1.155
  %next1.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 4
  
  %sp2.155 = bitcast i8* %next1.155 to [3 x i8]*
  store [3 x i8] c"\66\53\56", [3 x i8]* %sp2.155
  %next2.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 7
  
  %sp3.155 = bitcast i8* %next2.155 to [2 x i8]*
  store [2 x i8] c"\30\4f", [2 x i8]* %sp3.155
  %next3.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 9
  
  %sp4.155 = bitcast i8* %next3.155 to [3 x i8]*
  store [3 x i8] c"\68\55\68", [3 x i8]* %sp4.155
  %next4.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 12
  
  %sp5.155 = bitcast i8* %next4.155 to [2 x i8]*
  store [2 x i8] c"\50\55", [2 x i8]* %sp5.155
  %next5.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 14
  
  %sp6.155 = bitcast i8* %next5.155 to [3 x i8]*
  store [3 x i8] c"\49\3d\00", [3 x i8]* %sp6.155
  %cipher.ptr.14 = getelementptr inbounds [17 x i8], [17 x i8]* %spi155, i32 0, i32 0
;-------------------------------
  %plain.ptr.14 = tail call i8* @base64_decode(i8* %cipher.ptr.14)
  %spi14 = bitcast i8* %plain.ptr.14 to [11 x i8]*
  %sp0.1.2 = bitcast [11 x i8]* %spi14 to i88*
;-------------------------------
  %i0.2 = load i88, i88* %sp0.1.2

;-------------------------------
; Replace: %sp1.1.2 = bitcast [11 x i8]* @key.2 to i88*
;-------------------------------
; Replace: %cipher.ptr.15 = getelementptr inbounds [17 x i8], [17 x i8]* @cipher.15, i32 0, i32 0
  %spi156 = alloca [17 x i8]

  
  %sp0.156 = bitcast [17 x i8]* %spi156 to [2 x i8]*
  store [2 x i8] c"\65\6b", [2 x i8]* %sp0.156
  %next0.156 = getelementptr [17 x i8], [17 x i8]* %spi156, i32 0, i32 2
  
  %sp1.156 = bitcast i8* %next0.156 to [2 x i8]*
  store [2 x i8] c"\4e\44", [2 x i8]* %sp1.156
  %next1.156 = getelementptr [17 x i8], [17 x i8]* %spi156, i32 0, i32 4
  
  %sp2.156 = bitcast i8* %next1.156 to [3 x i8]*
  store [3 x i8] c"\4f\47\73", [3 x i8]* %sp2.156
  %next2.156 = getelementptr [17 x i8], [17 x i8]* %spi156, i32 0, i32 7
  
  %sp3.156 = bitcast i8* %next2.156 to [2 x i8]*
  store [2 x i8] c"\31\65", [2 x i8]* %sp3.156
  %next3.156 = getelementptr [17 x i8], [17 x i8]* %spi156, i32 0, i32 9
  
  %sp4.156 = bitcast i8* %next3.156 to [3 x i8]*
  store [3 x i8] c"\46\6c\6b", [3 x i8]* %sp4.156
  %next4.156 = getelementptr [17 x i8], [17 x i8]* %spi156, i32 0, i32 12
  
  %sp5.156 = bitcast i8* %next4.156 to [2 x i8]*
  store [2 x i8] c"\65\55", [2 x i8]* %sp5.156
  %next5.156 = getelementptr [17 x i8], [17 x i8]* %spi156, i32 0, i32 14
  
  %sp6.156 = bitcast i8* %next5.156 to [3 x i8]*
  store [3 x i8] c"\49\3d\00", [3 x i8]* %sp6.156
  %cipher.ptr.15 = getelementptr inbounds [17 x i8], [17 x i8]* %spi156, i32 0, i32 0
;-------------------------------
  %plain.ptr.15 = tail call i8* @base64_decode(i8* %cipher.ptr.15)
  %spi15 = bitcast i8* %plain.ptr.15 to [11 x i8]*
  %sp1.1.2 = bitcast [11 x i8]* %spi15 to i88*
;-------------------------------
  %i1.2 = load i88, i88* %sp1.1.2

  %xp2 = xor i88 %i0.2, %i1.2

  %fi.2 = alloca i88
  store i88 %xp2, i88* %fi.2

  %final.ptr.2 = bitcast i88* %fi.2 to [11 x i8]*
  %spi2 = load [11 x i8], [11 x i8]* %final.ptr.2
  store [11 x i8] %spi2, [11 x i8]* %debug.str.2.1
;-------------------------------
;-------------------------------
;--------Basic Condition--------
  %.not61.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not61.i.i, label %BB_61, label %next61
next61:
;-------------------------------
  %debug.ptr.2.1 = ptrtoint [11 x i8]* %debug.str.2.1 to i32
;-------------------------------
;--------Basic Condition--------
  %.not41.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not41.i.i, label %BB_41, label %next41
next41:
;-------------------------------
  %result.2.1 = tail call i32 @getenv(i32 %debug.ptr.2.1)
  %must.escape.2.1 = icmp ne i32 %result.2.1, 0
  br i1 %must.escape.2.1, label %.escape.1, label %.proceed.2.1
.proceed.2.1:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.1.1 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.1
;-------------------------------
; Replace: %sp0.1.3 = bitcast [4 x i8]* @str.3 to i32*
;-------------------------------
; Replace: %cipher.ptr.16 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.16, i32 0, i32 0
  %spi157 = alloca [9 x i8]

  
  %sp0.157 = bitcast [9 x i8]* %spi157 to [1 x i8]*
  store [1 x i8] c"\41", [1 x i8]* %sp0.157
  %next0.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 1
  
  %sp1.157 = bitcast i8* %next0.157 to [1 x i8]*
  store [1 x i8] c"\33", [1 x i8]* %sp1.157
  %next1.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 2
  
  %sp2.157 = bitcast i8* %next1.157 to [1 x i8]*
  store [1 x i8] c"\63", [1 x i8]* %sp2.157
  %next2.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 3
  
  %sp3.157 = bitcast i8* %next2.157 to [2 x i8]*
  store [2 x i8] c"\71\64", [2 x i8]* %sp3.157
  %next3.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 5
  
  %sp4.157 = bitcast i8* %next3.157 to [1 x i8]*
  store [1 x i8] c"\67", [1 x i8]* %sp4.157
  %next4.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 6
  
  %sp5.157 = bitcast i8* %next4.157 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp5.157
  %next5.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 7
  
  %sp6.157 = bitcast i8* %next5.157 to [2 x i8]*
  store [2 x i8] c"\3d\00", [2 x i8]* %sp6.157
  %cipher.ptr.16 = getelementptr inbounds [9 x i8], [9 x i8]* %spi157, i32 0, i32 0
;-------------------------------
  %plain.ptr.16 = tail call i8* @base64_decode(i8* %cipher.ptr.16)
  %spi16 = bitcast i8* %plain.ptr.16 to [4 x i8]*
  %sp0.1.3 = bitcast [4 x i8]* %spi16 to i32*
;-------------------------------
  %i0.3 = load i32, i32* %sp0.1.3

;-------------------------------
; Replace: %sp1.1.3 = bitcast [4 x i8]* @key.3 to i32*
;-------------------------------
; Replace: %cipher.ptr.17 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.17, i32 0, i32 0
  %spi158 = alloca [9 x i8]

  
  %sp0.158 = bitcast [9 x i8]* %spi158 to [1 x i8]*
  store [1 x i8] c"\52", [1 x i8]* %sp0.158
  %next0.158 = getelementptr [9 x i8], [9 x i8]* %spi158, i32 0, i32 1
  
  %sp1.158 = bitcast i8* %next0.158 to [1 x i8]*
  store [1 x i8] c"\44", [1 x i8]* %sp1.158
  %next1.158 = getelementptr [9 x i8], [9 x i8]* %spi158, i32 0, i32 2
  
  %sp2.158 = bitcast i8* %next1.158 to [1 x i8]*
  store [1 x i8] c"\4e", [1 x i8]* %sp2.158
  %next2.158 = getelementptr [9 x i8], [9 x i8]* %spi158, i32 0, i32 3
  
  %sp3.158 = bitcast i8* %next2.158 to [2 x i8]*
  store [2 x i8] c"\6f\64", [2 x i8]* %sp3.158
  %next3.158 = getelementptr [9 x i8], [9 x i8]* %spi158, i32 0, i32 5
  
  %sp4.158 = bitcast i8* %next3.158 to [1 x i8]*
  store [1 x i8] c"\67", [1 x i8]* %sp4.158
  %next4.158 = getelementptr [9 x i8], [9 x i8]* %spi158, i32 0, i32 6
  
  %sp5.158 = bitcast i8* %next4.158 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp5.158
  %next5.158 = getelementptr [9 x i8], [9 x i8]* %spi158, i32 0, i32 7
  
  %sp6.158 = bitcast i8* %next5.158 to [2 x i8]*
  store [2 x i8] c"\3d\00", [2 x i8]* %sp6.158
  %cipher.ptr.17 = getelementptr inbounds [9 x i8], [9 x i8]* %spi158, i32 0, i32 0
;-------------------------------
  %plain.ptr.17 = tail call i8* @base64_decode(i8* %cipher.ptr.17)
  %spi17 = bitcast i8* %plain.ptr.17 to [4 x i8]*
  %sp1.1.3 = bitcast [4 x i8]* %spi17 to i32*
;-------------------------------
  %i1.3 = load i32, i32* %sp1.1.3

  %xp3 = xor i32 %i0.3, %i1.3

  %fi.3 = alloca i32
  store i32 %xp3, i32* %fi.3

  %final.ptr.3 = bitcast i32* %fi.3 to [4 x i8]*
  %spi3 = load [4 x i8], [4 x i8]* %final.ptr.3
  store [4 x i8] %spi3, [4 x i8]* %debug.str.1.1
;-------------------------------
  %debug.ptr.1.1 = ptrtoint [4 x i8]* %debug.str.1.1 to i32
  %result.1.1 = tail call i32 @getenv(i32 %debug.ptr.1.1)
  %must.escape.1.1 = icmp ne i32 %result.1.1, 0
  br i1 %must.escape.1.1, label %.escape.1, label %.proceed.1.1
.proceed.1.1:
;----------------------------
;----------------------------
;-------------------------------
;--------Basic Condition--------
  %.not51.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not51.i.i, label %BB_51, label %next51
next51:
;-------------------------------
  ; Detect debug environment
  %debug.str.0.1 = alloca [6 x i8]
;-------------------------------
; Replace: store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.1
;-------------------------------
; Replace: %sp0.1.4 = bitcast [6 x i8]* @str.4 to i48*
;-------------------------------
; Replace: %cipher.ptr.18 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.18, i32 0, i32 0
  %spi159 = alloca [9 x i8]

  
  %sp0.159 = bitcast [9 x i8]* %spi159 to [1 x i8]*
  store [1 x i8] c"\43", [1 x i8]* %sp0.159
  %next0.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 1
  
  %sp1.159 = bitcast i8* %next0.159 to [1 x i8]*
  store [1 x i8] c"\77", [1 x i8]* %sp1.159
  %next1.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 2
  
  %sp2.159 = bitcast i8* %next1.159 to [1 x i8]*
  store [1 x i8] c"\77", [1 x i8]* %sp2.159
  %next2.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 3
  
  %sp3.159 = bitcast i8* %next2.159 to [2 x i8]*
  store [2 x i8] c"\6d\59", [2 x i8]* %sp3.159
  %next3.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 5
  
  %sp4.159 = bitcast i8* %next3.159 to [1 x i8]*
  store [1 x i8] c"\77", [1 x i8]* %sp4.159
  %next4.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 6
  
  %sp5.159 = bitcast i8* %next4.159 to [1 x i8]*
  store [1 x i8] c"\4e", [1 x i8]* %sp5.159
  %next5.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 7
  
  %sp6.159 = bitcast i8* %next5.159 to [2 x i8]*
  store [2 x i8] c"\44\00", [2 x i8]* %sp6.159
  %cipher.ptr.18 = getelementptr inbounds [9 x i8], [9 x i8]* %spi159, i32 0, i32 0
;-------------------------------
  %plain.ptr.18 = tail call i8* @base64_decode(i8* %cipher.ptr.18)
  %spi18 = bitcast i8* %plain.ptr.18 to [6 x i8]*
  %sp0.1.4 = bitcast [6 x i8]* %spi18 to i48*
;-------------------------------
  %i0.4 = load i48, i48* %sp0.1.4

;-------------------------------
; Replace: %sp1.1.4 = bitcast [6 x i8]* @key.4 to i48*
;-------------------------------
; Replace: %cipher.ptr.19 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.19, i32 0, i32 0
  %spi160 = alloca [9 x i8]

  
  %sp0.160 = bitcast [9 x i8]* %spi160 to [1 x i8]*
  store [1 x i8] c"\54", [1 x i8]* %sp0.160
  %next0.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 1
  
  %sp1.160 = bitcast i8* %next0.160 to [1 x i8]*
  store [1 x i8] c"\30", [1 x i8]* %sp1.160
  %next1.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 2
  
  %sp2.160 = bitcast i8* %next1.160 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp2.160
  %next2.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 3
  
  %sp3.160 = bitcast i8* %next2.160 to [2 x i8]*
  store [2 x i8] c"\6b\4e", [2 x i8]* %sp3.160
  %next3.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 5
  
  %sp4.160 = bitcast i8* %next3.160 to [1 x i8]*
  store [1 x i8] c"\6b", [1 x i8]* %sp4.160
  %next4.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 6
  
  %sp5.160 = bitcast i8* %next4.160 to [1 x i8]*
  store [1 x i8] c"\52", [1 x i8]* %sp5.160
  %next5.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 7
  
  %sp6.160 = bitcast i8* %next5.160 to [2 x i8]*
  store [2 x i8] c"\44\00", [2 x i8]* %sp6.160
  %cipher.ptr.19 = getelementptr inbounds [9 x i8], [9 x i8]* %spi160, i32 0, i32 0
;-------------------------------
  %plain.ptr.19 = tail call i8* @base64_decode(i8* %cipher.ptr.19)
  %spi19 = bitcast i8* %plain.ptr.19 to [6 x i8]*
  %sp1.1.4 = bitcast [6 x i8]* %spi19 to i48*
;-------------------------------
  %i1.4 = load i48, i48* %sp1.1.4

  %xp4 = xor i48 %i0.4, %i1.4

  %fi.4 = alloca i48
  store i48 %xp4, i48* %fi.4

;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @static_local_variables204 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack203, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %final.ptr.4 = bitcast i48* %fi.4 to [6 x i8]*
  %spi4 = load [6 x i8], [6 x i8]* %final.ptr.4
  store [6 x i8] %spi4, [6 x i8]* %debug.str.0.1
;-------------------------------
  %debug.ptr.0.1 = ptrtoint [6 x i8]* %debug.str.0.1 to i32
  %result.0.1 = tail call i32 @getenv(i32 %debug.ptr.0.1)
  %must.escape.0.1 = icmp ne i32 %result.0.1, 0
  br i1 %must.escape.0.1, label %.escape.1, label %.proceed.0.1
.proceed.0.1:
;----------------------------
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i6.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i6.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i8.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i8.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i10.i = add i32 %tmp0_v.i3.i, -20
  %6 = inttoptr i32 %tmp2_v7.i10.i to i32*
  store i32 %tmp2_v.i2.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i49.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i49.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i51.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i51.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i55.i = add i32 %tmp0_v.i3.i, -44
  %12 = inttoptr i32 %tmp2_v6.i55.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
;-------------------------------
; Replace: %sp0.1.5 = bitcast [2 x i8]* @str.5 to i16*
;-------------------------------
; Replace: %cipher.ptr.20 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.20, i32 0, i32 0
  %spi161 = alloca [5 x i8]

  
  %sp0.161 = bitcast [5 x i8]* %spi161 to [1 x i8]*
  store [1 x i8] c"\57", [1 x i8]* %sp0.161
  %next0.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 1
  
  %sp1.161 = bitcast i8* %next0.161 to [1 x i8]*
  store [1 x i8] c"\47", [1 x i8]* %sp1.161
  %next1.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 2
  
  %sp2.161 = bitcast i8* %next1.161 to [1 x i8]*
  store [1 x i8] c"\51", [1 x i8]* %sp2.161
  %next2.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 3
  
  %sp3.161 = bitcast i8* %next2.161 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp3.161
  %next3.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 4
  
  %sp4.161 = bitcast i8* %next3.161 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.161
  %cipher.ptr.20 = getelementptr inbounds [5 x i8], [5 x i8]* %spi161, i32 0, i32 0
;-------------------------------
  %plain.ptr.20 = tail call i8* @base64_decode(i8* %cipher.ptr.20)
  %spi20 = bitcast i8* %plain.ptr.20 to [2 x i8]*
  %sp0.1.5 = bitcast [2 x i8]* %spi20 to i16*
;-------------------------------
  %i0.5 = load i16, i16* %sp0.1.5

;-------------------------------
; Replace: %sp1.1.5 = bitcast [2 x i8]* @key.5 to i16*
;-------------------------------
; Replace: %cipher.ptr.21 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.21, i32 0, i32 0
  %spi162 = alloca [5 x i8]

  
  %sp0.162 = bitcast [5 x i8]* %spi162 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.162
  %next0.162 = getelementptr [5 x i8], [5 x i8]* %spi162, i32 0, i32 1
  
  %sp1.162 = bitcast i8* %next0.162 to [1 x i8]*
  store [1 x i8] c"\57", [1 x i8]* %sp1.162
  %next1.162 = getelementptr [5 x i8], [5 x i8]* %spi162, i32 0, i32 2
  
  %sp2.162 = bitcast i8* %next1.162 to [1 x i8]*
  store [1 x i8] c"\51", [1 x i8]* %sp2.162
  %next2.162 = getelementptr [5 x i8], [5 x i8]* %spi162, i32 0, i32 3
  
  %sp3.162 = bitcast i8* %next2.162 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp3.162
  %next3.162 = getelementptr [5 x i8], [5 x i8]* %spi162, i32 0, i32 4
  
  %sp4.162 = bitcast i8* %next3.162 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.162
  %cipher.ptr.21 = getelementptr inbounds [5 x i8], [5 x i8]* %spi162, i32 0, i32 0
;-------------------------------
  %plain.ptr.21 = tail call i8* @base64_decode(i8* %cipher.ptr.21)
  %spi21 = bitcast i8* %plain.ptr.21 to [2 x i8]*
  %sp1.1.5 = bitcast [2 x i8]* %spi21 to i16*
;-------------------------------
  %i1.5 = load i16, i16* %sp1.1.5

  %xp5 = xor i16 %i0.5, %i1.5

  %fi.5 = alloca i16
  store i16 %xp5, i16* %fi.5

  %spi5 = ptrtoint i16* %fi.5 to i32
  store i32 %spi5, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i56.i = add i32 %tmp0_v.i3.i, -48
  %13 = inttoptr i32 %tmp2_v7.i56.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i23.i = icmp eq i32 %15, 0
  br i1 %.not.i23.i, label %BB_8049426.i, label %BB_804942D.i

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %16 = load i32, i32* %8, align 4
;-------------------------------
;--------Basic Condition--------
  %.not45.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not45.i.i, label %BB_45, label %next45
next45:
;-------------------------------
  %tmp0_v1.i.i = add i32 %16, 4
  %17 = inttoptr i32 %tmp0_v1.i.i to i32*
  %18 = load i32, i32* %17, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: %sp0.1.6 = bitcast [2 x i8]* @str.6 to i16*
;-------------------------------
; Replace: %cipher.ptr.22 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.22, i32 0, i32 0
  %spi163 = alloca [5 x i8]

  
  %sp0.163 = bitcast [5 x i8]* %spi163 to [1 x i8]*
  store [1 x i8] c"\58", [1 x i8]* %sp0.163
  %next0.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 1
  
  %sp1.163 = bitcast i8* %next0.163 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp1.163
  %next1.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 2
  
  %sp2.163 = bitcast i8* %next1.163 to [1 x i8]*
  store [1 x i8] c"\67", [1 x i8]* %sp2.163
  %next2.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 3
  
  %sp3.163 = bitcast i8* %next2.163 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp3.163
  %next3.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 4
  
  %sp4.163 = bitcast i8* %next3.163 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.163
  %cipher.ptr.22 = getelementptr inbounds [5 x i8], [5 x i8]* %spi163, i32 0, i32 0
;-------------------------------
  %plain.ptr.22 = tail call i8* @base64_decode(i8* %cipher.ptr.22)
  %spi22 = bitcast i8* %plain.ptr.22 to [2 x i8]*
  %sp0.1.6 = bitcast [2 x i8]* %spi22 to i16*
;-------------------------------
  %i0.6 = load i16, i16* %sp0.1.6

;-------------------------------
; Replace: %sp1.1.6 = bitcast [2 x i8]* @key.6 to i16*
;-------------------------------
; Replace: %cipher.ptr.23 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.23, i32 0, i32 0
  %spi164 = alloca [5 x i8]

  
  %sp0.164 = bitcast [5 x i8]* %spi164 to [1 x i8]*
  store [1 x i8] c"\62", [1 x i8]* %sp0.164
  %next0.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 1
  
  %sp1.164 = bitcast i8* %next0.164 to [1 x i8]*
  store [1 x i8] c"\46", [1 x i8]* %sp1.164
  %next1.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 2
  
  %sp2.164 = bitcast i8* %next1.164 to [1 x i8]*
  store [1 x i8] c"\67", [1 x i8]* %sp2.164
  %next2.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 3
  
  %sp3.164 = bitcast i8* %next2.164 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp3.164
  %next3.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 4
  
  %sp4.164 = bitcast i8* %next3.164 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.164
  %cipher.ptr.23 = getelementptr inbounds [5 x i8], [5 x i8]* %spi164, i32 0, i32 0
;-------------------------------
  %plain.ptr.23 = tail call i8* @base64_decode(i8* %cipher.ptr.23)
  %spi23 = bitcast i8* %plain.ptr.23 to [2 x i8]*
  %sp1.1.6 = bitcast [2 x i8]* %spi23 to i16*
;-------------------------------
  %i1.6 = load i16, i16* %sp1.1.6

  %xp6 = xor i16 %i0.6, %i1.6

  %fi.6 = alloca i16
  store i16 %xp6, i16* %fi.6

  %spi6 = ptrtoint i16* %fi.6 to i32
  store i32 %spi6, i32* %12, align 4
;-------------------------------
  store i32 %18, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %arg2.i.i6 = load i32, i32* %12, align 4
  %19 = tail call i32 @strcmp(i32 %arg.i.i5, i32 %arg2.i.i6)
  %.not.i.i = icmp eq i32 %19, 0
  br i1 %.not.i.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %es103 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a102 = tail call i32 @strlen(i32 %es103)
;-------------------------------
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i3.i, -40
  %20 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %tmp2_v4.i5.i, i32* %20, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i11.i.i = add i32 %tmp0_v.i3.i, -68
  %21 = inttoptr i32 %tmp2_v2.i11.i.i to i32*
  store i32 134517678, i32* %21, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -72
  %22 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %22, align 8
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i3.i, -76
;-------------------------------
;--------Basic Condition--------
;-------------------------------
;--------Basic Condition--------
  %.not63.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not63.i.i, label %BB_63, label %next63
next63:
;-------------------------------
  %.not53.i.i = icmp eq i32 0 , 0 ;always true
;-------------------------------
;----------Random Cond----------
  %.not85.i.i = icmp eq i32 4 , %rand_fin84 
  br i1 %.not85.i.i, label %next85, label %BB_69
next85:
;-------------------------------
  br i1 %.not53.i.i, label %BB_53, label %next53
next53:
;-------------------------------
  %23 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 1, i32* %23, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i3.i, -80
  %24 = inttoptr i32 %tmp2_v4.i.i.i to i32*
;-------------------------------
;--------Added Syst Call--------
  %a117 = tail call i32 @time(i32 %rand_init71)
;-------------------------------
  store i32 2, i32* %24, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i3.i, -84
  %25 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517705, i32* %25, align 4
  %arg.i.i.i = load i32, i32* %24, align 16
  %arg2.i.i.i = load i32, i32* %23, align 4
;-------------------------------
;----------Random Cond----------
  %.not81.i.i = icmp eq i32 2 , %rand_fin80 
  br i1 %.not81.i.i, label %next81, label %BB_69
next81:
;-------------------------------
  %arg4.i.i.i = load i32, i32* %22, align 8
  %26 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
;-------------------------------
;--------Basic Condition--------
  %.not47.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not47.i.i, label %BB_47, label %next47
next47:
;-------------------------------
  store i32 %26, i32* %14, align 4
  store i32 %26, i32* %24, align 16
  store i32 134517722, i32* %25, align 4
  %arg.i.i3.i = load i32, i32* %24, align 16
  %27 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
;-------------------------------
;--------Basic Condition--------
  %.not59.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not59.i.i, label %BB_59, label %next59
next59:
;-------------------------------
  %28 = load i32, i32* %8, align 4
  %tmp0_v1.i28.i = add i32 %28, 4
;-------------------------------
;----------Random Cond----------
  %.not77.i.i = icmp eq i32 2 , %rand_fin76 
  br i1 %.not77.i.i, label %next77, label %BB_69
next77:
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @dot_product467 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack466, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %29 = inttoptr i32 %tmp0_v1.i28.i to i32*
  %30 = load i32, i32* %29, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
; Replace: %sp0.1.7 = bitcast [2 x i8]* @str.7 to i16*
;-------------------------------
; Replace: %cipher.ptr.24 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.24, i32 0, i32 0
  %spi165 = alloca [5 x i8]

  
  %sp0.165 = bitcast [5 x i8]* %spi165 to [1 x i8]*
  store [1 x i8] c"\57", [1 x i8]* %sp0.165
  %next0.165 = getelementptr [5 x i8], [5 x i8]* %spi165, i32 0, i32 1
  
  %sp1.165 = bitcast i8* %next0.165 to [1 x i8]*
  store [1 x i8] c"\46", [1 x i8]* %sp1.165
  %next1.165 = getelementptr [5 x i8], [5 x i8]* %spi165, i32 0, i32 2
  
  %sp2.165 = bitcast i8* %next1.165 to [1 x i8]*
  store [1 x i8] c"\41", [1 x i8]* %sp2.165
  %next2.165 = getelementptr [5 x i8], [5 x i8]* %spi165, i32 0, i32 3
  
  %sp3.165 = bitcast i8* %next2.165 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp3.165
  %next3.165 = getelementptr [5 x i8], [5 x i8]* %spi165, i32 0, i32 4
  
  %sp4.165 = bitcast i8* %next3.165 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.165
  %cipher.ptr.24 = getelementptr inbounds [5 x i8], [5 x i8]* %spi165, i32 0, i32 0
;-------------------------------
  %plain.ptr.24 = tail call i8* @base64_decode(i8* %cipher.ptr.24)
  %spi24 = bitcast i8* %plain.ptr.24 to [2 x i8]*
  %sp0.1.7 = bitcast [2 x i8]* %spi24 to i16*
;-------------------------------
  %i0.7 = load i16, i16* %sp0.1.7

;-------------------------------
; Replace: %sp1.1.7 = bitcast [2 x i8]* @key.7 to i16*
;-------------------------------
; Replace: %cipher.ptr.25 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.25, i32 0, i32 0
  %spi166 = alloca [5 x i8]

  
  %sp0.166 = bitcast [5 x i8]* %spi166 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.166
  %next0.166 = getelementptr [5 x i8], [5 x i8]* %spi166, i32 0, i32 1
  
  %sp1.166 = bitcast i8* %next0.166 to [1 x i8]*
  store [1 x i8] c"\31", [1 x i8]* %sp1.166
  %next1.166 = getelementptr [5 x i8], [5 x i8]* %spi166, i32 0, i32 2
  
  %sp2.166 = bitcast i8* %next1.166 to [1 x i8]*
  store [1 x i8] c"\41", [1 x i8]* %sp2.166
  %next2.166 = getelementptr [5 x i8], [5 x i8]* %spi166, i32 0, i32 3
  
  %sp3.166 = bitcast i8* %next2.166 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp3.166
  %next3.166 = getelementptr [5 x i8], [5 x i8]* %spi166, i32 0, i32 4
  
  %sp4.166 = bitcast i8* %next3.166 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.166
  %cipher.ptr.25 = getelementptr inbounds [5 x i8], [5 x i8]* %spi166, i32 0, i32 0
;-------------------------------
  %plain.ptr.25 = tail call i8* @base64_decode(i8* %cipher.ptr.25)
  %spi25 = bitcast i8* %plain.ptr.25 to [2 x i8]*
  %sp1.1.7 = bitcast [2 x i8]* %spi25 to i16*
;-------------------------------
  %i1.7 = load i16, i16* %sp1.1.7

  %xp7 = xor i16 %i0.7, %i1.7

  %fi.7 = alloca i16
  store i16 %xp7, i16* %fi.7

  %spi7 = ptrtoint i16* %fi.7 to i32
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @min_distance_two_numbers361 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack360, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %spi7, i32* %12, align 4
;-------------------------------
  store i32 %30, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i8 = load i32, i32* %13, align 16
  %arg2.i.i9 = load i32, i32* %12, align 4
  %31 = tail call i32 @strcmp(i32 %arg.i.i8, i32 %arg2.i.i9)
  %.not.i16.i = icmp eq i32 %31, 0
  br i1 %.not.i16.i, label %BB_8049472.i, label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i39.i.i = add i32 %tmp0_v.i3.i, -40
  %32 = inttoptr i32 %tmp2_v.i39.i.i to i32*
  store i32 %tmp2_v4.i5.i, i32* %32, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i44.i.i = add i32 %tmp0_v.i3.i, -84
  %33 = inttoptr i32 %tmp2_v2.i44.i.i to i32*
  store i32 134517482, i32* %33, align 4
  %tmp4_v.i26.i.b.i = load i1, i1* @segs.0, align 1
  %34 = select i1 %tmp4_v.i26.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
;-------------------------------
;--------Basic Condition--------
  %.not43.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not43.i.i, label %BB_43, label %next43
next43:
;-------------------------------
  %tmp2_v5.i34.i.i = add i32 %tmp0_v.i3.i, -92
  %36 = inttoptr i32 %tmp2_v5.i34.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %36, align 4
;-------------------------------
; Replace: %sp0.1.8 = bitcast [3 x i8]* @str.8 to i24*
;-------------------------------
; Replace: %cipher.ptr.26 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.26, i32 0, i32 0
  %spi167 = alloca [5 x i8]

  
  %sp0.167 = bitcast [5 x i8]* %spi167 to [1 x i8]*
  store [1 x i8] c"\54", [1 x i8]* %sp0.167
  %next0.167 = getelementptr [5 x i8], [5 x i8]* %spi167, i32 0, i32 1
  
  %sp1.167 = bitcast i8* %next0.167 to [1 x i8]*
  store [1 x i8] c"\6b", [1 x i8]* %sp1.167
  %next1.167 = getelementptr [5 x i8], [5 x i8]* %spi167, i32 0, i32 2
  
  %sp2.167 = bitcast i8* %next1.167 to [1 x i8]*
  store [1 x i8] c"\78", [1 x i8]* %sp2.167
  %next2.167 = getelementptr [5 x i8], [5 x i8]* %spi167, i32 0, i32 3
  
  %sp3.167 = bitcast i8* %next2.167 to [1 x i8]*
  store [1 x i8] c"\77", [1 x i8]* %sp3.167
  %next3.167 = getelementptr [5 x i8], [5 x i8]* %spi167, i32 0, i32 4
  
  %sp4.167 = bitcast i8* %next3.167 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.167
  %cipher.ptr.26 = getelementptr inbounds [5 x i8], [5 x i8]* %spi167, i32 0, i32 0
;-------------------------------
  %plain.ptr.26 = tail call i8* @base64_decode(i8* %cipher.ptr.26)
  %spi26 = bitcast i8* %plain.ptr.26 to [3 x i8]*
  %sp0.1.8 = bitcast [3 x i8]* %spi26 to i24*
;-------------------------------
  %i0.8 = load i24, i24* %sp0.1.8

;-------------------------------
; Replace: %sp1.1.8 = bitcast [3 x i8]* @key.8 to i24*
;-------------------------------
; Replace: %cipher.ptr.27 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.27, i32 0, i32 0
  %spi168 = alloca [5 x i8]

  
  %sp0.168 = bitcast [5 x i8]* %spi168 to [1 x i8]*
  store [1 x i8] c"\4f", [1 x i8]* %sp0.168
  %next0.168 = getelementptr [5 x i8], [5 x i8]* %spi168, i32 0, i32 1
  
  %sp1.168 = bitcast i8* %next0.168 to [1 x i8]*
  store [1 x i8] c"\57", [1 x i8]* %sp1.168
  %next1.168 = getelementptr [5 x i8], [5 x i8]* %spi168, i32 0, i32 2
  
  %sp2.168 = bitcast i8* %next1.168 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp2.168
  %next2.168 = getelementptr [5 x i8], [5 x i8]* %spi168, i32 0, i32 3
  
  %sp3.168 = bitcast i8* %next2.168 to [1 x i8]*
  store [1 x i8] c"\77", [1 x i8]* %sp3.168
  %next3.168 = getelementptr [5 x i8], [5 x i8]* %spi168, i32 0, i32 4
  
  %sp4.168 = bitcast i8* %next3.168 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.168
  %cipher.ptr.27 = getelementptr inbounds [5 x i8], [5 x i8]* %spi168, i32 0, i32 0
;-------------------------------
  %plain.ptr.27 = tail call i8* @base64_decode(i8* %cipher.ptr.27)
  %spi27 = bitcast i8* %plain.ptr.27 to [3 x i8]*
  %sp1.1.8 = bitcast [3 x i8]* %spi27 to i24*
;-------------------------------
  %i1.8 = load i24, i24* %sp1.1.8

  %xp8 = xor i24 %i0.8, %i1.8

  %fi.8 = alloca i24
  store i24 %xp8, i24* %fi.8

  %es101 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a100 = tail call i32 @atoi(i32 %es101)
;-------------------------------
  %spi8 = ptrtoint i24* %fi.8 to i32
  store i32 %spi8, i32* %36, align 4
;-------------------------------
  %tmp2_v7.i36.i.i = add i32 %tmp0_v.i3.i, -96
  %37 = inttoptr i32 %tmp2_v7.i36.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %37, align 16
;-------------------------------
; Replace: %sp0.1.9 = bitcast [15 x i8]* @str.9 to i120*
;-------------------------------
; Replace: %cipher.ptr.28 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.28, i32 0, i32 0
  %spi169 = alloca [21 x i8]

  
  %sp0.169 = bitcast [21 x i8]* %spi169 to [3 x i8]*
  store [3 x i8] c"\47\51\4d", [3 x i8]* %sp0.169
  %next0.169 = getelementptr [21 x i8], [21 x i8]* %spi169, i32 0, i32 3
  
  %sp1.169 = bitcast i8* %next0.169 to [3 x i8]*
  store [3 x i8] c"\72\46\54", [3 x i8]* %sp1.169
  %next1.169 = getelementptr [21 x i8], [21 x i8]* %spi169, i32 0, i32 6
  
  %sp2.169 = bitcast i8* %next1.169 to [3 x i8]*
  store [3 x i8] c"\49\44\57", [3 x i8]* %sp2.169
  %next2.169 = getelementptr [21 x i8], [21 x i8]* %spi169, i32 0, i32 9
  
  %sp3.169 = bitcast i8* %next2.169 to [3 x i8]*
  store [3 x i8] c"\56\73\78", [3 x i8]* %sp3.169
  %next3.169 = getelementptr [21 x i8], [21 x i8]* %spi169, i32 0, i32 12
  
  %sp4.169 = bitcast i8* %next3.169 to [3 x i8]*
  store [3 x i8] c"\42\58\6b", [3 x i8]* %sp4.169
  %next4.169 = getelementptr [21 x i8], [21 x i8]* %spi169, i32 0, i32 15
  
  %sp5.169 = bitcast i8* %next4.169 to [3 x i8]*
  store [3 x i8] c"\74\48\52", [3 x i8]* %sp5.169
  %next5.169 = getelementptr [21 x i8], [21 x i8]* %spi169, i32 0, i32 18
  
  %sp6.169 = bitcast i8* %next5.169 to [3 x i8]*
  store [3 x i8] c"\31\4b\00", [3 x i8]* %sp6.169
  %cipher.ptr.28 = getelementptr inbounds [21 x i8], [21 x i8]* %spi169, i32 0, i32 0
;-------------------------------
  %plain.ptr.28 = tail call i8* @base64_decode(i8* %cipher.ptr.28)
  %spi28 = bitcast i8* %plain.ptr.28 to [15 x i8]*
  %sp0.1.9 = bitcast [15 x i8]* %spi28 to i120*
;-------------------------------
  %i0.9 = load i120, i120* %sp0.1.9

;-------------------------------
; Replace: %sp1.1.9 = bitcast [15 x i8]* @key.9 to i120*
;-------------------------------
; Replace: %cipher.ptr.29 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.29, i32 0, i32 0
  %spi170 = alloca [21 x i8]

  
  %sp0.170 = bitcast [21 x i8]* %spi170 to [3 x i8]*
  store [3 x i8] c"\62\57\5a", [3 x i8]* %sp0.170
  %next0.170 = getelementptr [21 x i8], [21 x i8]* %spi170, i32 0, i32 3
  
  %sp1.170 = bitcast i8* %next0.170 to [3 x i8]*
  store [3 x i8] c"\54\59\57", [3 x i8]* %sp1.170
  %next1.170 = getelementptr [21 x i8], [21 x i8]* %spi170, i32 0, i32 6
  
  %sp2.170 = bitcast i8* %next1.170 to [3 x i8]*
  store [3 x i8] c"\31\6c\4d", [3 x i8]* %sp2.170
  %next2.170 = getelementptr [21 x i8], [21 x i8]* %spi170, i32 0, i32 9
  
  %sp3.170 = bitcast i8* %next2.170 to [3 x i8]*
  store [3 x i8] c"\44\64\55", [3 x i8]* %sp3.170
  %next3.170 = getelementptr [21 x i8], [21 x i8]* %spi170, i32 0, i32 12
  
  %sp4.170 = bitcast i8* %next3.170 to [3 x i8]*
  store [3 x i8] c"\4e\6c\64", [3 x i8]* %sp4.170
  %next4.170 = getelementptr [21 x i8], [21 x i8]* %spi170, i32 0, i32 15
  
  %sp5.170 = bitcast i8* %next4.170 to [3 x i8]*
  store [3 x i8] c"\5a\5a\57", [3 x i8]* %sp5.170
  %next5.170 = getelementptr [21 x i8], [21 x i8]* %spi170, i32 0, i32 18
  
  %sp6.170 = bitcast i8* %next5.170 to [3 x i8]*
  store [3 x i8] c"\6c\4b\00", [3 x i8]* %sp6.170
  %cipher.ptr.29 = getelementptr inbounds [21 x i8], [21 x i8]* %spi170, i32 0, i32 0
;-------------------------------
  %plain.ptr.29 = tail call i8* @base64_decode(i8* %cipher.ptr.29)
  %spi29 = bitcast i8* %plain.ptr.29 to [15 x i8]*
  %sp1.1.9 = bitcast [15 x i8]* %spi29 to i120*
;-------------------------------
  %i1.9 = load i120, i120* %sp1.1.9

  %xp9 = xor i120 %i0.9, %i1.9

  %fi.9 = alloca i120
  store i120 %xp9, i120* %fi.9

  %spi9 = ptrtoint i120* %fi.9 to i32
  store i32 %spi9, i32* %37, align 16
;-------------------------------
  %tmp2_v8.i37.i.i = add i32 %tmp0_v.i3.i, -100
  %38 = inttoptr i32 %tmp2_v8.i37.i.i to i32*
  store i32 134517521, i32* %38, align 4
  %arg.i.i.i11 = load i32, i32* %37, align 16
  %arg2.i.i.i12 = load i32, i32* %36, align 4
  %39 = tail call i32 @fopen(i32 %arg.i.i.i11, i32 %arg2.i.i.i12)
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i3.i, -76
  %40 = inttoptr i32 %tmp2_v.i9.i.i to i32*
  store i32 %39, i32* %40, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i3.i, -72
  %41 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 1818304585, i32* %41, align 8
;-------------------------------
;--------Basic Condition--------
  %.not55.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not55.i.i, label %BB_55, label %next55
next55:
;-------------------------------
  %tmp2_v1.i.i.i13 = add i32 %tmp0_v.i3.i, -68
  %42 = inttoptr i32 %tmp2_v1.i.i.i13 to i32*
  store i32 1701995892, i32* %42, align 4
  %tmp2_v2.i.i.i14 = add i32 %tmp0_v.i3.i, -64
  %43 = inttoptr i32 %tmp2_v2.i.i.i14 to i32*
  store i32 1752440932, i32* %43, align 16
  %tmp2_v3.i.i.i15 = add i32 %tmp0_v.i3.i, -60
  %44 = inttoptr i32 %tmp2_v3.i.i.i15 to i32*
  store i32 1768300645, i32* %44, align 4
;-------------------------------
;----------Random Cond----------
  %.not89.i.i = icmp eq i32 2 , %rand_fin88 
  br i1 %.not89.i.i, label %next89, label %BB_69
next89:
;-------------------------------
  %tmp2_v4.i.i.i16 = add i32 %tmp0_v.i3.i, -56
  %45 = inttoptr i32 %tmp2_v4.i.i.i16 to i32*
  store i32 2188652, i32* %45, align 8
  %46 = load i32, i32* %40, align 4
  store i32 %46, i32* %33, align 4
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i3.i, -88
;-------------------------------
;--------Basic Condition--------
  %.not49.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not49.i.i, label %BB_49, label %next49
next49:
;-------------------------------
  %47 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 20, i32* %47, align 8
  store i32 1, i32* %36, align 4
  store i32 %tmp2_v.i.i.i, i32* %37, align 16
  store i32 134517622, i32* %38, align 4
  %arg.i.i4.i = load i32, i32* %37, align 16
  %arg2.i.i5.i = load i32, i32* %36, align 4
  %arg4.i.i.i17 = load i32, i32* %47, align 8
  %arg6.i.i.i = load i32, i32* %33, align 4
  %48 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i17, i32 %arg6.i.i.i)
;-------------------------------
;--------Added Syst Call--------
  %a113 = tail call i32 @usleep(i32 %tmp2_v2.i.i.i14)
;-------------------------------
  %49 = load i32, i32* %40, align 4
  store i32 %49, i32* %37, align 16
  store i32 134517636, i32* %38, align 4
  %arg.i.i6.i = load i32, i32* %37, align 16
  %50 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i3.i, -40
  %51 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i5.i, i32* %51, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i3.i, -68
  %52 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %52, align 4
;-------------------------------
; Replace: %sp0.1.10 = bitcast [4 x i8]* @str.10 to i32*
;-------------------------------
; Replace: %cipher.ptr.30 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.30, i32 0, i32 0
  %spi171 = alloca [9 x i8]

  
  %sp0.171 = bitcast [9 x i8]* %spi171 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.171
  %next0.171 = getelementptr [9 x i8], [9 x i8]* %spi171, i32 0, i32 1
  
  %sp1.171 = bitcast i8* %next0.171 to [1 x i8]*
  store [1 x i8] c"\53", [1 x i8]* %sp1.171
  %next1.171 = getelementptr [9 x i8], [9 x i8]* %spi171, i32 0, i32 2
  
  %sp2.171 = bitcast i8* %next1.171 to [1 x i8]*
  store [1 x i8] c"\78", [1 x i8]* %sp2.171
  %next2.171 = getelementptr [9 x i8], [9 x i8]* %spi171, i32 0, i32 3
  
  %sp3.171 = bitcast i8* %next2.171 to [2 x i8]*
  store [2 x i8] c"\63\5a", [2 x i8]* %sp3.171
  %next3.171 = getelementptr [9 x i8], [9 x i8]* %spi171, i32 0, i32 5
  
  %sp4.171 = bitcast i8* %next3.171 to [1 x i8]*
  store [1 x i8] c"\51", [1 x i8]* %sp4.171
  %next4.171 = getelementptr [9 x i8], [9 x i8]* %spi171, i32 0, i32 6
  
  %sp5.171 = bitcast i8* %next4.171 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp5.171
  %next5.171 = getelementptr [9 x i8], [9 x i8]* %spi171, i32 0, i32 7
  
  %sp6.171 = bitcast i8* %next5.171 to [2 x i8]*
  store [2 x i8] c"\3d\00", [2 x i8]* %sp6.171
  %cipher.ptr.30 = getelementptr inbounds [9 x i8], [9 x i8]* %spi171, i32 0, i32 0
;-------------------------------
  %plain.ptr.30 = tail call i8* @base64_decode(i8* %cipher.ptr.30)
  %spi30 = bitcast i8* %plain.ptr.30 to [4 x i8]*
  %sp0.1.10 = bitcast [4 x i8]* %spi30 to i32*
;-------------------------------
  %i0.10 = load i32, i32* %sp0.1.10

;-------------------------------
; Replace: %sp1.1.10 = bitcast [4 x i8]* @key.10 to i32*
;-------------------------------
;----------Random Cond----------
  %.not73.i.i = icmp eq i32 0 , %rand_fin72 
  br i1 %.not73.i.i, label %next73, label %BB_69
next73:
;-------------------------------
;-------------------------------
; Replace: %cipher.ptr.31 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.31, i32 0, i32 0
  %spi172 = alloca [9 x i8]

  
  %sp0.172 = bitcast [9 x i8]* %spi172 to [1 x i8]*
  store [1 x i8] c"\62", [1 x i8]* %sp0.172
  %next0.172 = getelementptr [9 x i8], [9 x i8]* %spi172, i32 0, i32 1
  
  %sp1.172 = bitcast i8* %next0.172 to [1 x i8]*
  store [1 x i8] c"\48", [1 x i8]* %sp1.172
  %next1.172 = getelementptr [9 x i8], [9 x i8]* %spi172, i32 0, i32 2
  
  %sp2.172 = bitcast i8* %next1.172 to [1 x i8]*
  store [1 x i8] c"\5a", [1 x i8]* %sp2.172
  %next2.172 = getelementptr [9 x i8], [9 x i8]* %spi172, i32 0, i32 3
  
  %sp3.172 = bitcast i8* %next2.172 to [2 x i8]*
  store [2 x i8] c"\78\5a", [2 x i8]* %sp3.172
  %next3.172 = getelementptr [9 x i8], [9 x i8]* %spi172, i32 0, i32 5
  
  %sp4.172 = bitcast i8* %next3.172 to [1 x i8]*
  store [1 x i8] c"\51", [1 x i8]* %sp4.172
  %next4.172 = getelementptr [9 x i8], [9 x i8]* %spi172, i32 0, i32 6
  
  %sp5.172 = bitcast i8* %next4.172 to [1 x i8]*
  store [1 x i8] c"\3d", [1 x i8]* %sp5.172
  %next5.172 = getelementptr [9 x i8], [9 x i8]* %spi172, i32 0, i32 7
  
  %sp6.172 = bitcast i8* %next5.172 to [2 x i8]*
  store [2 x i8] c"\3d\00", [2 x i8]* %sp6.172
  %cipher.ptr.31 = getelementptr inbounds [9 x i8], [9 x i8]* %spi172, i32 0, i32 0
;-------------------------------
  %plain.ptr.31 = tail call i8* @base64_decode(i8* %cipher.ptr.31)
  %spi31 = bitcast i8* %plain.ptr.31 to [4 x i8]*
  %sp1.1.10 = bitcast [4 x i8]* %spi31 to i32*
;-------------------------------
  %i1.10 = load i32, i32* %sp1.1.10

;-------------------------------
;--------Basic Condition--------
  %.not57.i.i = icmp eq i32 0 , 0 ;always true
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @typecast655 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack654, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  br i1 %.not57.i.i, label %BB_57, label %next57
next57:
;-------------------------------
  %xp10 = xor i32 %i0.10, %i1.10

  %fi.10 = alloca i32
  store i32 %xp10, i32* %fi.10

  %spi10 = ptrtoint i32* %fi.10 to i32
  store i32 %spi10, i32* %52, align 4
;-------------------------------
  %tmp2_v1.i.i.i18 = add i32 %tmp0_v.i3.i, -56
  %53 = inttoptr i32 %tmp2_v1.i.i.i18 to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %53, align 8
;-------------------------------
; Replace: %sp0.1.11 = bitcast [14 x i8]* @str.11 to i112*
;-------------------------------
; Replace: %cipher.ptr.32 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.32, i32 0, i32 0
  %spi173 = alloca [21 x i8]

  
  %sp0.173 = bitcast [21 x i8]* %spi173 to [3 x i8]*
  store [3 x i8] c"\41\33\51", [3 x i8]* %sp0.173
  %next0.173 = getelementptr [21 x i8], [21 x i8]* %spi173, i32 0, i32 3
  
  %sp1.173 = bitcast i8* %next0.173 to [3 x i8]*
  store [3 x i8] c"\6e\58\45", [3 x i8]* %sp1.173
  %next1.173 = getelementptr [21 x i8], [21 x i8]* %spi173, i32 0, i32 6
  
  %sp2.173 = bitcast i8* %next1.173 to [3 x i8]*
  store [3 x i8] c"\67\43\46", [3 x i8]* %sp2.173
  %next2.173 = getelementptr [21 x i8], [21 x i8]* %spi173, i32 0, i32 9
  
  %sp3.173 = bitcast i8* %next2.173 to [3 x i8]*
  store [3 x i8] c"\53\63\70", [3 x i8]* %sp3.173
  %next3.173 = getelementptr [21 x i8], [21 x i8]* %spi173, i32 0, i32 12
  
  %sp4.173 = bitcast i8* %next3.173 to [3 x i8]*
  store [3 x i8] c"\53\68\5a", [3 x i8]* %sp4.173
  %next4.173 = getelementptr [21 x i8], [21 x i8]* %spi173, i32 0, i32 15
  
  %sp5.173 = bitcast i8* %next4.173 to [3 x i8]*
  store [3 x i8] c"\57\4f\47", [3 x i8]* %sp5.173
  %next5.173 = getelementptr [21 x i8], [21 x i8]* %spi173, i32 0, i32 18
  
  %sp6.173 = bitcast i8* %next5.173 to [3 x i8]*
  store [3 x i8] c"\6b\3d\00", [3 x i8]* %sp6.173
  %cipher.ptr.32 = getelementptr inbounds [21 x i8], [21 x i8]* %spi173, i32 0, i32 0
;-------------------------------
  %plain.ptr.32 = tail call i8* @base64_decode(i8* %cipher.ptr.32)
  %spi32 = bitcast i8* %plain.ptr.32 to [14 x i8]*
  %sp0.1.11 = bitcast [14 x i8]* %spi32 to i112*
;-------------------------------
  %es98 = load i32, i32* %12, align 16
  %es119 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a118 = tail call i32 @atol(i32 %es119)
;-------------------------------
  %es99 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a97 = tail call i32 @strpbrk( i32 %es98, i32 %es99)
;-------------------------------
  %i0.11 = load i112, i112* %sp0.1.11

;-------------------------------
; Replace: %sp1.1.11 = bitcast [14 x i8]* @key.11 to i112*
;-------------------------------
; Replace: %cipher.ptr.33 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.33, i32 0, i32 0
  %spi174 = alloca [21 x i8]

  
  %sp0.174 = bitcast [21 x i8]* %spi174 to [3 x i8]*
  store [3 x i8] c"\53\6c\52", [3 x i8]* %sp0.174
  %next0.174 = getelementptr [21 x i8], [21 x i8]* %spi174, i32 0, i32 3
  
  %sp1.174 = bitcast i8* %next0.174 to [3 x i8]*
  store [3 x i8] c"\47\4d\57", [3 x i8]* %sp1.174
  %next1.174 = getelementptr [21 x i8], [21 x i8]* %spi174, i32 0, i32 6
  
  %sp2.174 = bitcast i8* %next1.174 to [3 x i8]*
  store [3 x i8] c"\68\6e\59", [3 x i8]* %sp2.174
  %next2.174 = getelementptr [21 x i8], [21 x i8]* %spi174, i32 0, i32 9
  
  %sp3.174 = bitcast i8* %next2.174 to [3 x i8]*
  store [3 x i8] c"\30\35\46", [3 x i8]* %sp3.174
  %next3.174 = getelementptr [21 x i8], [21 x i8]* %spi174, i32 0, i32 12
  
  %sp4.174 = bitcast i8* %next3.174 to [3 x i8]*
  store [3 x i8] c"\61\7a\64", [3 x i8]* %sp4.174
  %next4.174 = getelementptr [21 x i8], [21 x i8]* %spi174, i32 0, i32 15
  
  %sp5.174 = bitcast i8* %next4.174 to [3 x i8]*
  store [3 x i8] c"\33\4d\6d", [3 x i8]* %sp5.174
  %next5.174 = getelementptr [21 x i8], [21 x i8]* %spi174, i32 0, i32 18
  
  %sp6.174 = bitcast i8* %next5.174 to [3 x i8]*
  store [3 x i8] c"\6b\3d\00", [3 x i8]* %sp6.174
  %cipher.ptr.33 = getelementptr inbounds [21 x i8], [21 x i8]* %spi174, i32 0, i32 0
;-------------------------------
  %plain.ptr.33 = tail call i8* @base64_decode(i8* %cipher.ptr.33)
  %spi33 = bitcast i8* %plain.ptr.33 to [14 x i8]*
  %sp1.1.11 = bitcast [14 x i8]* %spi33 to i112*
;-------------------------------
  %i1.11 = load i112, i112* %sp1.1.11

  %xp11 = xor i112 %i0.11, %i1.11

  %fi.11 = alloca i112
  store i112 %xp11, i112* %fi.11

  %spi11 = ptrtoint i112* %fi.11 to i32
  store i32 %spi11, i32* %53, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: %sp0.1.12 = bitcast [9 x i8]* @str.12 to i72*
;-------------------------------
; Replace: %cipher.ptr.34 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.34, i32 0, i32 0
  %spi175 = alloca [13 x i8]

  
  %sp0.175 = bitcast [13 x i8]* %spi175 to [1 x i8]*
  store [1 x i8] c"\46", [1 x i8]* %sp0.175
  %next0.175 = getelementptr [13 x i8], [13 x i8]* %spi175, i32 0, i32 1
  
  %sp1.175 = bitcast i8* %next0.175 to [2 x i8]*
  store [2 x i8] c"\6a\39", [2 x i8]* %sp1.175
  %next1.175 = getelementptr [13 x i8], [13 x i8]* %spi175, i32 0, i32 3
  
  %sp2.175 = bitcast i8* %next1.175 to [2 x i8]*
  store [2 x i8] c"\51\56", [2 x i8]* %sp2.175
  %next2.175 = getelementptr [13 x i8], [13 x i8]* %spi175, i32 0, i32 5
  
  %sp3.175 = bitcast i8* %next2.175 to [2 x i8]*
  store [2 x i8] c"\48\59", [2 x i8]* %sp3.175
  %next3.175 = getelementptr [13 x i8], [13 x i8]* %spi175, i32 0, i32 7
  
  %sp4.175 = bitcast i8* %next3.175 to [2 x i8]*
  store [2 x i8] c"\7a\45", [2 x i8]* %sp4.175
  %next4.175 = getelementptr [13 x i8], [13 x i8]* %spi175, i32 0, i32 9
  
  %sp5.175 = bitcast i8* %next4.175 to [2 x i8]*
  store [2 x i8] c"\6a\35", [2 x i8]* %sp5.175
  %next5.175 = getelementptr [13 x i8], [13 x i8]* %spi175, i32 0, i32 11
  
  %sp6.175 = bitcast i8* %next5.175 to [2 x i8]*
  store [2 x i8] c"\4b\00", [2 x i8]* %sp6.175
  %cipher.ptr.34 = getelementptr inbounds [13 x i8], [13 x i8]* %spi175, i32 0, i32 0
;-------------------------------
  %plain.ptr.34 = tail call i8* @base64_decode(i8* %cipher.ptr.34)
  %spi34 = bitcast i8* %plain.ptr.34 to [9 x i8]*
  %sp0.1.12 = bitcast [9 x i8]* %spi34 to i72*
;-------------------------------
  %i0.12 = load i72, i72* %sp0.1.12

;-------------------------------
; Replace: %sp1.1.12 = bitcast [9 x i8]* @key.12 to i72*
;-------------------------------
;--------Added Syst Call--------
  %a109 = tail call i32 @alarm (i32 %tmp0_v.i3.i)
;-------------------------------
;-------------------------------
; Replace: %cipher.ptr.35 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.35, i32 0, i32 0
  %spi176 = alloca [13 x i8]

  
  %sp0.176 = bitcast [13 x i8]* %spi176 to [1 x i8]*
  store [1 x i8] c"\56", [1 x i8]* %sp0.176
  %next0.176 = getelementptr [13 x i8], [13 x i8]* %spi176, i32 0, i32 1
  
  %sp1.176 = bitcast i8* %next0.176 to [2 x i8]*
  store [2 x i8] c"\45\59", [2 x i8]* %sp1.176
  %next1.176 = getelementptr [13 x i8], [13 x i8]* %spi176, i32 0, i32 3
  
  %sp2.176 = bitcast i8* %next1.176 to [2 x i8]*
  store [2 x i8] c"\31\64", [2 x i8]* %sp2.176
  %next2.176 = getelementptr [13 x i8], [13 x i8]* %spi176, i32 0, i32 5
  
  %sp3.176 = bitcast i8* %next2.176 to [2 x i8]*
  store [2 x i8] c"\44\52", [2 x i8]* %sp3.176
  %next3.176 = getelementptr [13 x i8], [13 x i8]* %spi176, i32 0, i32 7
  
  %sp4.176 = bitcast i8* %next3.176 to [2 x i8]*
  store [2 x i8] c"\4b\64", [2 x i8]* %sp4.176
  %next4.176 = getelementptr [13 x i8], [13 x i8]* %spi176, i32 0, i32 9
  
  %sp5.176 = bitcast i8* %next4.176 to [2 x i8]*
  store [2 x i8] c"\7a\52", [2 x i8]* %sp5.176
  %next5.176 = getelementptr [13 x i8], [13 x i8]* %spi176, i32 0, i32 11
  
  %sp6.176 = bitcast i8* %next5.176 to [2 x i8]*
  store [2 x i8] c"\4b\00", [2 x i8]* %sp6.176
  %cipher.ptr.35 = getelementptr inbounds [13 x i8], [13 x i8]* %spi176, i32 0, i32 0
;-------------------------------
  %plain.ptr.35 = tail call i8* @base64_decode(i8* %cipher.ptr.35)
  %spi35 = bitcast i8* %plain.ptr.35 to [9 x i8]*
  %sp1.1.12 = bitcast [9 x i8]* %spi35 to i72*
;-------------------------------
  %i1.12 = load i72, i72* %sp1.1.12

  %xp12 = xor i72 %i0.12, %i1.12

  %fi.12 = alloca i72
  store i72 %xp12, i72* %fi.12

  %spi12 = ptrtoint i72* %fi.12 to i32
  store i32 %spi12, i32* %14, align 4
;-------------------------------
  %54 = load i32, i32* %53, align 8
  %tmp2_v7.i.i.i20 = add i32 %tmp0_v.i3.i, -76
  %es95 = load i32, i32* %14, align 16
  %es112 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a111 = tail call i32 @toupper(i32 %es112)
;-------------------------------
  %es96 = load i32, i32* %52, align 16
;-------------------------------
;--------Added Syst Call--------
  %a94 = tail call i32 @strchr( i32 %es95, i32 %es96)
;-------------------------------
  %55 = inttoptr i32 %tmp2_v7.i.i.i20 to i32*
  store i32 %54, i32* %55, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i3.i, -80
  %56 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %56, align 16
;-------------------------------
; Replace: %sp0.1.13 = bitcast [3 x i8]* @str.13 to i24*
;-------------------------------
; Replace: %cipher.ptr.36 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.36, i32 0, i32 0
  %spi177 = alloca [5 x i8]

  
  %sp0.177 = bitcast [5 x i8]* %spi177 to [1 x i8]*
  store [1 x i8] c"\62", [1 x i8]* %sp0.177
  %next0.177 = getelementptr [5 x i8], [5 x i8]* %spi177, i32 0, i32 1
  
  %sp1.177 = bitcast i8* %next0.177 to [1 x i8]*
  store [1 x i8] c"\51", [1 x i8]* %sp1.177
  %next1.177 = getelementptr [5 x i8], [5 x i8]* %spi177, i32 0, i32 2
  
  %sp2.177 = bitcast i8* %next1.177 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp2.177
  %next2.177 = getelementptr [5 x i8], [5 x i8]* %spi177, i32 0, i32 3
  
  %sp3.177 = bitcast i8* %next2.177 to [1 x i8]*
  store [1 x i8] c"\53", [1 x i8]* %sp3.177
  %next3.177 = getelementptr [5 x i8], [5 x i8]* %spi177, i32 0, i32 4
  
  %sp4.177 = bitcast i8* %next3.177 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.177
  %cipher.ptr.36 = getelementptr inbounds [5 x i8], [5 x i8]* %spi177, i32 0, i32 0
;-------------------------------
  %plain.ptr.36 = tail call i8* @base64_decode(i8* %cipher.ptr.36)
  %spi36 = bitcast i8* %plain.ptr.36 to [3 x i8]*
  %sp0.1.13 = bitcast [3 x i8]* %spi36 to i24*
;-------------------------------
  %i0.13 = load i24, i24* %sp0.1.13

;-------------------------------
; Replace: %sp1.1.13 = bitcast [3 x i8]* @key.13 to i24*
;-------------------------------
;--------Basic Condition--------
  %.not39.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not39.i.i, label %BB_39, label %next39
next39:
;-------------------------------
;-------------------------------
; Replace: %cipher.ptr.37 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.37, i32 0, i32 0
  %spi178 = alloca [5 x i8]

  
  %sp0.178 = bitcast [5 x i8]* %spi178 to [1 x i8]*
  store [1 x i8] c"\53", [1 x i8]* %sp0.178
  %next0.178 = getelementptr [5 x i8], [5 x i8]* %spi178, i32 0, i32 1
  
  %sp1.178 = bitcast i8* %next0.178 to [1 x i8]*
  store [1 x i8] c"\48", [1 x i8]* %sp1.178
  %next1.178 = getelementptr [5 x i8], [5 x i8]* %spi178, i32 0, i32 2
  
  %sp2.178 = bitcast i8* %next1.178 to [1 x i8]*
  store [1 x i8] c"\52", [1 x i8]* %sp2.178
  %next2.178 = getelementptr [5 x i8], [5 x i8]* %spi178, i32 0, i32 3
  
  %sp3.178 = bitcast i8* %next2.178 to [1 x i8]*
  store [1 x i8] c"\53", [1 x i8]* %sp3.178
  %next3.178 = getelementptr [5 x i8], [5 x i8]* %spi178, i32 0, i32 4
  
  %sp4.178 = bitcast i8* %next3.178 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.178
  %cipher.ptr.37 = getelementptr inbounds [5 x i8], [5 x i8]* %spi178, i32 0, i32 0
;-------------------------------
  %plain.ptr.37 = tail call i8* @base64_decode(i8* %cipher.ptr.37)
  %spi37 = bitcast i8* %plain.ptr.37 to [3 x i8]*
  %sp1.1.13 = bitcast [3 x i8]* %spi37 to i24*
;-------------------------------
  %i1.13 = load i24, i24* %sp1.1.13

  %xp13 = xor i24 %i0.13, %i1.13

  %fi.13 = alloca i24
  store i24 %xp13, i24* %fi.13

  %spi13 = ptrtoint i24* %fi.13 to i32
  store i32 %spi13, i32* %56, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i3.i, -84
;-------------------------------
;--------Basic Condition--------
  %.not65.i.i = icmp eq i32 0 , 0 ;always true
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @assignment684 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack683, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  br i1 %.not65.i.i, label %BB_65, label %next65
next65:
;-------------------------------
  %57 = inttoptr i32 %tmp2_v10.i.i.i to i32*
;-------------------------------
;----------Random Cond----------
  %.not69.i.i = icmp eq i32 1 , %rand_fin68 
  %es115 = load i32, i32* %53, align 16
  %es116 = load i32, i32* %53, align 16
;-------------------------------
;--------Added Syst Call--------
  %a114 = tail call i32 @strstr( i32 %es115, i32 %es116)
;-------------------------------
  br i1 %.not69.i.i, label %next69, label %BB_69
next69:
;-------------------------------
  store i32 134517457, i32* %57, align 4
  %es105 = load i32, i32* %56, align 16
;-------------------------------
;--------Added Syst Call--------
  %a104 = tail call double @atof(i32 %es105)
;-------------------------------
  %58 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

.exit:                                            ; preds = %BB_8049426.i, %BB_804944C.i, %BB_8049453.i, %BB_8049472.i
  ret void
.escape.1:
  ret void
BB_39:
;-------------------------------
; Replace: %cast39= getelementptr [9 x i8], [9 x i8]* @.str38, i64 0, i64 0
  %spi179 = alloca [9 x i8]

  
  %sp0.179 = bitcast [9 x i8]* %spi179 to [1 x i8]*
  store [1 x i8] c"\7a", [1 x i8]* %sp0.179
  %next0.179 = getelementptr [9 x i8], [9 x i8]* %spi179, i32 0, i32 1
  
  %sp1.179 = bitcast i8* %next0.179 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp1.179
  %next1.179 = getelementptr [9 x i8], [9 x i8]* %spi179, i32 0, i32 2
  
  %sp2.179 = bitcast i8* %next1.179 to [1 x i8]*
  store [1 x i8] c"\66", [1 x i8]* %sp2.179
  %next2.179 = getelementptr [9 x i8], [9 x i8]* %spi179, i32 0, i32 3
  
  %sp3.179 = bitcast i8* %next2.179 to [2 x i8]*
  store [2 x i8] c"\69\c4", [2 x i8]* %sp3.179
  %next3.179 = getelementptr [9 x i8], [9 x i8]* %spi179, i32 0, i32 5
  
  %sp4.179 = bitcast i8* %next3.179 to [1 x i8]*
  store [1 x i8] c"\b5", [1 x i8]* %sp4.179
  %next4.179 = getelementptr [9 x i8], [9 x i8]* %spi179, i32 0, i32 6
  
  %sp5.179 = bitcast i8* %next4.179 to [1 x i8]*
  store [1 x i8] c"\68", [1 x i8]* %sp5.179
  %next5.179 = getelementptr [9 x i8], [9 x i8]* %spi179, i32 0, i32 7
  
  %sp6.179 = bitcast i8* %next5.179 to [2 x i8]*
  store [2 x i8] c"\74\00", [2 x i8]* %sp6.179
  %cast39= getelementptr [9 x i8], [9 x i8]* %spi179, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast39)
  br label %next39
BB_41:
;-------------------------------
; Replace: %cast41= getelementptr [9 x i8], [9 x i8]* @.str40, i64 0, i64 0
  %spi180 = alloca [9 x i8]

  
  %sp0.180 = bitcast [9 x i8]* %spi180 to [1 x i8]*
  store [1 x i8] c"\7a", [1 x i8]* %sp0.180
  %next0.180 = getelementptr [9 x i8], [9 x i8]* %spi180, i32 0, i32 1
  
  %sp1.180 = bitcast i8* %next0.180 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp1.180
  %next1.180 = getelementptr [9 x i8], [9 x i8]* %spi180, i32 0, i32 2
  
  %sp2.180 = bitcast i8* %next1.180 to [1 x i8]*
  store [1 x i8] c"\66", [1 x i8]* %sp2.180
  %next2.180 = getelementptr [9 x i8], [9 x i8]* %spi180, i32 0, i32 3
  
  %sp3.180 = bitcast i8* %next2.180 to [2 x i8]*
  store [2 x i8] c"\69\c4", [2 x i8]* %sp3.180
  %next3.180 = getelementptr [9 x i8], [9 x i8]* %spi180, i32 0, i32 5
  
  %sp4.180 = bitcast i8* %next3.180 to [1 x i8]*
  store [1 x i8] c"\b5", [1 x i8]* %sp4.180
  %next4.180 = getelementptr [9 x i8], [9 x i8]* %spi180, i32 0, i32 6
  
  %sp5.180 = bitcast i8* %next4.180 to [1 x i8]*
  store [1 x i8] c"\68", [1 x i8]* %sp5.180
  %next5.180 = getelementptr [9 x i8], [9 x i8]* %spi180, i32 0, i32 7
  
  %sp6.180 = bitcast i8* %next5.180 to [2 x i8]*
  store [2 x i8] c"\74\00", [2 x i8]* %sp6.180
  %cast41= getelementptr [9 x i8], [9 x i8]* %spi180, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast41)
  br label %next41
BB_43:
  %es107 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a106 = tail call i32 @tolower(i32 %es107)
;-------------------------------
;-------------------------------
; Replace: %cast43= getelementptr [10 x i8], [10 x i8]* @.str42, i64 0, i64 0
  %spi181 = alloca [10 x i8]

  
  %sp0.181 = bitcast [10 x i8]* %spi181 to [1 x i8]*
  store [1 x i8] c"\44", [1 x i8]* %sp0.181
  %next0.181 = getelementptr [10 x i8], [10 x i8]* %spi181, i32 0, i32 1
  
  %sp1.181 = bitcast i8* %next0.181 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp1.181
  %next1.181 = getelementptr [10 x i8], [10 x i8]* %spi181, i32 0, i32 2
  
  %sp2.181 = bitcast i8* %next1.181 to [2 x i8]*
  store [2 x i8] c"\75\78", [2 x i8]* %sp2.181
  %next2.181 = getelementptr [10 x i8], [10 x i8]* %spi181, i32 0, i32 4
  
  %sp3.181 = bitcast i8* %next2.181 to [1 x i8]*
  store [1 x i8] c"\69", [1 x i8]* %sp3.181
  %next3.181 = getelementptr [10 x i8], [10 x i8]* %spi181, i32 0, i32 5
  
  %sp4.181 = bitcast i8* %next3.181 to [2 x i8]*
  store [2 x i8] c"\c3\a8", [2 x i8]* %sp4.181
  %next4.181 = getelementptr [10 x i8], [10 x i8]* %spi181, i32 0, i32 7
  
  %sp5.181 = bitcast i8* %next4.181 to [1 x i8]*
  store [1 x i8] c"\6d", [1 x i8]* %sp5.181
  %next5.181 = getelementptr [10 x i8], [10 x i8]* %spi181, i32 0, i32 8
  
  %sp6.181 = bitcast i8* %next5.181 to [2 x i8]*
  store [2 x i8] c"\65\00", [2 x i8]* %sp6.181
  %cast43= getelementptr [10 x i8], [10 x i8]* %spi181, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast43)
  br label %next43
BB_45:
;-------------------------------
; Replace: %cast45= getelementptr [9 x i8], [9 x i8]* @.str44, i64 0, i64 0
  %spi182 = alloca [9 x i8]

  
  %sp0.182 = bitcast [9 x i8]* %spi182 to [1 x i8]*
  store [1 x i8] c"\7a", [1 x i8]* %sp0.182
  %next0.182 = getelementptr [9 x i8], [9 x i8]* %spi182, i32 0, i32 1
  
  %sp1.182 = bitcast i8* %next0.182 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp1.182
  %next1.182 = getelementptr [9 x i8], [9 x i8]* %spi182, i32 0, i32 2
  
  %sp2.182 = bitcast i8* %next1.182 to [1 x i8]*
  store [1 x i8] c"\66", [1 x i8]* %sp2.182
  %next2.182 = getelementptr [9 x i8], [9 x i8]* %spi182, i32 0, i32 3
  
  %sp3.182 = bitcast i8* %next2.182 to [2 x i8]*
  store [2 x i8] c"\69\c4", [2 x i8]* %sp3.182
  %next3.182 = getelementptr [9 x i8], [9 x i8]* %spi182, i32 0, i32 5
  
  %sp4.182 = bitcast i8* %next3.182 to [1 x i8]*
  store [1 x i8] c"\b5", [1 x i8]* %sp4.182
  %next4.182 = getelementptr [9 x i8], [9 x i8]* %spi182, i32 0, i32 6
  
  %sp5.182 = bitcast i8* %next4.182 to [1 x i8]*
  store [1 x i8] c"\68", [1 x i8]* %sp5.182
  %next5.182 = getelementptr [9 x i8], [9 x i8]* %spi182, i32 0, i32 7
  
  %sp6.182 = bitcast i8* %next5.182 to [2 x i8]*
  store [2 x i8] c"\74\00", [2 x i8]* %sp6.182
  %cast45= getelementptr [9 x i8], [9 x i8]* %spi182, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast45)
  br label %next45
BB_47:
;-------------------------------
; Replace: %cast47= getelementptr [10 x i8], [10 x i8]* @.str46, i64 0, i64 0
  %spi183 = alloca [10 x i8]

  
  %sp0.183 = bitcast [10 x i8]* %spi183 to [1 x i8]*
  store [1 x i8] c"\74", [1 x i8]* %sp0.183
  %next0.183 = getelementptr [10 x i8], [10 x i8]* %spi183, i32 0, i32 1
  
  %sp1.183 = bitcast i8* %next0.183 to [1 x i8]*
  store [1 x i8] c"\72", [1 x i8]* %sp1.183
  %next1.183 = getelementptr [10 x i8], [10 x i8]* %spi183, i32 0, i32 2
  
  %sp2.183 = bitcast i8* %next1.183 to [2 x i8]*
  store [2 x i8] c"\6f\69", [2 x i8]* %sp2.183
  %next2.183 = getelementptr [10 x i8], [10 x i8]* %spi183, i32 0, i32 4
  
  %sp3.183 = bitcast i8* %next2.183 to [1 x i8]*
  store [1 x i8] c"\73", [1 x i8]* %sp3.183
  %next3.183 = getelementptr [10 x i8], [10 x i8]* %spi183, i32 0, i32 5
  
  %sp4.183 = bitcast i8* %next3.183 to [2 x i8]*
  store [2 x i8] c"\69\65", [2 x i8]* %sp4.183
  %next4.183 = getelementptr [10 x i8], [10 x i8]* %spi183, i32 0, i32 7
  
  %sp5.183 = bitcast i8* %next4.183 to [1 x i8]*
  store [1 x i8] c"\6d", [1 x i8]* %sp5.183
  %next5.183 = getelementptr [10 x i8], [10 x i8]* %spi183, i32 0, i32 8
  
  %sp6.183 = bitcast i8* %next5.183 to [2 x i8]*
  store [2 x i8] c"\65\00", [2 x i8]* %sp6.183
  %cast47= getelementptr [10 x i8], [10 x i8]* %spi183, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast47)
  br label %next47
BB_49:
;-------------------------------
; Replace: %cast49= getelementptr [10 x i8], [10 x i8]* @.str48, i64 0, i64 0
  %spi184 = alloca [10 x i8]

  
  %sp0.184 = bitcast [10 x i8]* %spi184 to [1 x i8]*
  store [1 x i8] c"\74", [1 x i8]* %sp0.184
  %next0.184 = getelementptr [10 x i8], [10 x i8]* %spi184, i32 0, i32 1
  
  %sp1.184 = bitcast i8* %next0.184 to [1 x i8]*
  store [1 x i8] c"\72", [1 x i8]* %sp1.184
  %next1.184 = getelementptr [10 x i8], [10 x i8]* %spi184, i32 0, i32 2
  
  %sp2.184 = bitcast i8* %next1.184 to [2 x i8]*
  store [2 x i8] c"\6f\69", [2 x i8]* %sp2.184
  %next2.184 = getelementptr [10 x i8], [10 x i8]* %spi184, i32 0, i32 4
  
  %sp3.184 = bitcast i8* %next2.184 to [1 x i8]*
  store [1 x i8] c"\73", [1 x i8]* %sp3.184
  %next3.184 = getelementptr [10 x i8], [10 x i8]* %spi184, i32 0, i32 5
  
  %sp4.184 = bitcast i8* %next3.184 to [2 x i8]*
  store [2 x i8] c"\69\65", [2 x i8]* %sp4.184
  %next4.184 = getelementptr [10 x i8], [10 x i8]* %spi184, i32 0, i32 7
  
  %sp5.184 = bitcast i8* %next4.184 to [1 x i8]*
  store [1 x i8] c"\6d", [1 x i8]* %sp5.184
  %next5.184 = getelementptr [10 x i8], [10 x i8]* %spi184, i32 0, i32 8
  
  %sp6.184 = bitcast i8* %next5.184 to [2 x i8]*
  store [2 x i8] c"\65\00", [2 x i8]* %sp6.184
  %cast49= getelementptr [10 x i8], [10 x i8]* %spi184, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast49)
  br label %next49
BB_51:
;-------------------------------
; Replace: %cast51= getelementptr [10 x i8], [10 x i8]* @.str50, i64 0, i64 0
  %spi185 = alloca [10 x i8]

  
  %sp0.185 = bitcast [10 x i8]* %spi185 to [1 x i8]*
  store [1 x i8] c"\74", [1 x i8]* %sp0.185
  %next0.185 = getelementptr [10 x i8], [10 x i8]* %spi185, i32 0, i32 1
  
  %sp1.185 = bitcast i8* %next0.185 to [1 x i8]*
  store [1 x i8] c"\72", [1 x i8]* %sp1.185
  %next1.185 = getelementptr [10 x i8], [10 x i8]* %spi185, i32 0, i32 2
  
  %sp2.185 = bitcast i8* %next1.185 to [2 x i8]*
  store [2 x i8] c"\6f\69", [2 x i8]* %sp2.185
  %next2.185 = getelementptr [10 x i8], [10 x i8]* %spi185, i32 0, i32 4
  
  %sp3.185 = bitcast i8* %next2.185 to [1 x i8]*
  store [1 x i8] c"\73", [1 x i8]* %sp3.185
  %next3.185 = getelementptr [10 x i8], [10 x i8]* %spi185, i32 0, i32 5
  
  %sp4.185 = bitcast i8* %next3.185 to [2 x i8]*
  store [2 x i8] c"\69\65", [2 x i8]* %sp4.185
  %next4.185 = getelementptr [10 x i8], [10 x i8]* %spi185, i32 0, i32 7
  
  %sp5.185 = bitcast i8* %next4.185 to [1 x i8]*
  store [1 x i8] c"\6d", [1 x i8]* %sp5.185
  %next5.185 = getelementptr [10 x i8], [10 x i8]* %spi185, i32 0, i32 8
  
  %sp6.185 = bitcast i8* %next5.185 to [2 x i8]*
  store [2 x i8] c"\65\00", [2 x i8]* %sp6.185
  %cast51= getelementptr [10 x i8], [10 x i8]* %spi185, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast51)
  br label %next51
BB_53:
;-------------------------------
; Replace: %cast53= getelementptr [11 x i8], [11 x i8]* @.str52, i64 0, i64 0
  %spi186 = alloca [11 x i8]

  
  %sp0.186 = bitcast [11 x i8]* %spi186 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp0.186
  %next0.186 = getelementptr [11 x i8], [11 x i8]* %spi186, i32 0, i32 1
  
  %sp1.186 = bitcast i8* %next0.186 to [2 x i8]*
  store [2 x i8] c"\6b\69", [2 x i8]* %sp1.186
  %next1.186 = getelementptr [11 x i8], [11 x i8]* %spi186, i32 0, i32 3
  
  %sp2.186 = bitcast i8* %next1.186 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp2.186
  %next2.186 = getelementptr [11 x i8], [11 x i8]* %spi186, i32 0, i32 4
  
  %sp3.186 = bitcast i8* %next2.186 to [2 x i8]*
  store [2 x i8] c"\6a\76", [2 x i8]* %sp3.186
  %next3.186 = getelementptr [11 x i8], [11 x i8]* %spi186, i32 0, i32 6
  
  %sp4.186 = bitcast i8* %next3.186 to [1 x i8]*
  store [1 x i8] c"\69", [1 x i8]* %sp4.186
  %next4.186 = getelementptr [11 x i8], [11 x i8]* %spi186, i32 0, i32 7
  
  %sp5.186 = bitcast i8* %next4.186 to [2 x i8]*
  store [2 x i8] c"\2c\65", [2 x i8]* %sp5.186
  %next5.186 = getelementptr [11 x i8], [11 x i8]* %spi186, i32 0, i32 9
  
  %sp6.186 = bitcast i8* %next5.186 to [2 x i8]*
  store [2 x i8] c"\72\00", [2 x i8]* %sp6.186
  %cast53= getelementptr [11 x i8], [11 x i8]* %spi186, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast53)
  br label %next53
BB_55:
;-------------------------------
; Replace: %cast55= getelementptr [9 x i8], [9 x i8]* @.str54, i64 0, i64 0
  %spi187 = alloca [9 x i8]

  
  %sp0.187 = bitcast [9 x i8]* %spi187 to [1 x i8]*
  store [1 x i8] c"\7a", [1 x i8]* %sp0.187
  %next0.187 = getelementptr [9 x i8], [9 x i8]* %spi187, i32 0, i32 1
  
  %sp1.187 = bitcast i8* %next0.187 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp1.187
  %next1.187 = getelementptr [9 x i8], [9 x i8]* %spi187, i32 0, i32 2
  
  %sp2.187 = bitcast i8* %next1.187 to [1 x i8]*
  store [1 x i8] c"\66", [1 x i8]* %sp2.187
  %next2.187 = getelementptr [9 x i8], [9 x i8]* %spi187, i32 0, i32 3
  
  %sp3.187 = bitcast i8* %next2.187 to [2 x i8]*
  store [2 x i8] c"\69\c4", [2 x i8]* %sp3.187
  %next3.187 = getelementptr [9 x i8], [9 x i8]* %spi187, i32 0, i32 5
  
  %sp4.187 = bitcast i8* %next3.187 to [1 x i8]*
  store [1 x i8] c"\b5", [1 x i8]* %sp4.187
  %next4.187 = getelementptr [9 x i8], [9 x i8]* %spi187, i32 0, i32 6
  
  %sp5.187 = bitcast i8* %next4.187 to [1 x i8]*
  store [1 x i8] c"\68", [1 x i8]* %sp5.187
  %next5.187 = getelementptr [9 x i8], [9 x i8]* %spi187, i32 0, i32 7
  
  %sp6.187 = bitcast i8* %next5.187 to [2 x i8]*
  store [2 x i8] c"\74\00", [2 x i8]* %sp6.187
  %cast55= getelementptr [9 x i8], [9 x i8]* %spi187, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast55)
  br label %next55
BB_57:
;-------------------------------
; Replace: %cast57= getelementptr [11 x i8], [11 x i8]* @.str56, i64 0, i64 0
  %spi188 = alloca [11 x i8]

  
  %sp0.188 = bitcast [11 x i8]* %spi188 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp0.188
  %next0.188 = getelementptr [11 x i8], [11 x i8]* %spi188, i32 0, i32 1
  
  %sp1.188 = bitcast i8* %next0.188 to [2 x i8]*
  store [2 x i8] c"\6b\69", [2 x i8]* %sp1.188
  %next1.188 = getelementptr [11 x i8], [11 x i8]* %spi188, i32 0, i32 3
  
  %sp2.188 = bitcast i8* %next1.188 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp2.188
  %next2.188 = getelementptr [11 x i8], [11 x i8]* %spi188, i32 0, i32 4
  
  %sp3.188 = bitcast i8* %next2.188 to [2 x i8]*
  store [2 x i8] c"\6a\76", [2 x i8]* %sp3.188
  %next3.188 = getelementptr [11 x i8], [11 x i8]* %spi188, i32 0, i32 6
  
  %sp4.188 = bitcast i8* %next3.188 to [1 x i8]*
  store [1 x i8] c"\69", [1 x i8]* %sp4.188
  %next4.188 = getelementptr [11 x i8], [11 x i8]* %spi188, i32 0, i32 7
  
  %sp5.188 = bitcast i8* %next4.188 to [2 x i8]*
  store [2 x i8] c"\2c\65", [2 x i8]* %sp5.188
  %next5.188 = getelementptr [11 x i8], [11 x i8]* %spi188, i32 0, i32 9
  
  %sp6.188 = bitcast i8* %next5.188 to [2 x i8]*
  store [2 x i8] c"\72\00", [2 x i8]* %sp6.188
  %cast57= getelementptr [11 x i8], [11 x i8]* %spi188, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast57)
  br label %next57
BB_59:
;-------------------------------
; Replace: %cast59= getelementptr [8 x i8], [8 x i8]* @.str58, i64 0, i64 0
  %spi189 = alloca [8 x i8]

  
  %sp0.189 = bitcast [8 x i8]* %spi189 to [1 x i8]*
  store [1 x i8] c"\50", [1 x i8]* %sp0.189
  %next0.189 = getelementptr [8 x i8], [8 x i8]* %spi189, i32 0, i32 1
  
  %sp1.189 = bitcast i8* %next0.189 to [1 x i8]*
  store [1 x i8] c"\72", [1 x i8]* %sp1.189
  %next1.189 = getelementptr [8 x i8], [8 x i8]* %spi189, i32 0, i32 2
  
  %sp2.189 = bitcast i8* %next1.189 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp2.189
  %next2.189 = getelementptr [8 x i8], [8 x i8]* %spi189, i32 0, i32 3
  
  %sp3.189 = bitcast i8* %next2.189 to [1 x i8]*
  store [1 x i8] c"\6d", [1 x i8]* %sp3.189
  %next3.189 = getelementptr [8 x i8], [8 x i8]* %spi189, i32 0, i32 4
  
  %sp4.189 = bitcast i8* %next3.189 to [1 x i8]*
  store [1 x i8] c"\69", [1 x i8]* %sp4.189
  %next4.189 = getelementptr [8 x i8], [8 x i8]* %spi189, i32 0, i32 5
  
  %sp5.189 = bitcast i8* %next4.189 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp5.189
  %next5.189 = getelementptr [8 x i8], [8 x i8]* %spi189, i32 0, i32 6
  
  %sp6.189 = bitcast i8* %next5.189 to [2 x i8]*
  store [2 x i8] c"\72\00", [2 x i8]* %sp6.189
  %cast59= getelementptr [8 x i8], [8 x i8]* %spi189, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast59)
  br label %next59
BB_61:
;-------------------------------
; Replace: %cast61= getelementptr [11 x i8], [11 x i8]* @.str60, i64 0, i64 0
  %spi190 = alloca [11 x i8]

  
  %sp0.190 = bitcast [11 x i8]* %spi190 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp0.190
  %next0.190 = getelementptr [11 x i8], [11 x i8]* %spi190, i32 0, i32 1
  
  %sp1.190 = bitcast i8* %next0.190 to [2 x i8]*
  store [2 x i8] c"\6b\69", [2 x i8]* %sp1.190
  %next1.190 = getelementptr [11 x i8], [11 x i8]* %spi190, i32 0, i32 3
  
  %sp2.190 = bitcast i8* %next1.190 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp2.190
  %next2.190 = getelementptr [11 x i8], [11 x i8]* %spi190, i32 0, i32 4
  
  %sp3.190 = bitcast i8* %next2.190 to [2 x i8]*
  store [2 x i8] c"\6a\76", [2 x i8]* %sp3.190
  %next3.190 = getelementptr [11 x i8], [11 x i8]* %spi190, i32 0, i32 6
  
  %sp4.190 = bitcast i8* %next3.190 to [1 x i8]*
  store [1 x i8] c"\69", [1 x i8]* %sp4.190
  %next4.190 = getelementptr [11 x i8], [11 x i8]* %spi190, i32 0, i32 7
  
  %sp5.190 = bitcast i8* %next4.190 to [2 x i8]*
  store [2 x i8] c"\2c\65", [2 x i8]* %sp5.190
  %next5.190 = getelementptr [11 x i8], [11 x i8]* %spi190, i32 0, i32 9
  
  %sp6.190 = bitcast i8* %next5.190 to [2 x i8]*
  store [2 x i8] c"\72\00", [2 x i8]* %sp6.190
  %cast61= getelementptr [11 x i8], [11 x i8]* %spi190, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast61)
  br label %next61
BB_63:
;-------------------------------
; Replace: %cast63= getelementptr [8 x i8], [8 x i8]* @.str62, i64 0, i64 0
  %spi191 = alloca [8 x i8]

  
  %sp0.191 = bitcast [8 x i8]* %spi191 to [1 x i8]*
  store [1 x i8] c"\50", [1 x i8]* %sp0.191
  %next0.191 = getelementptr [8 x i8], [8 x i8]* %spi191, i32 0, i32 1
  
  %sp1.191 = bitcast i8* %next0.191 to [1 x i8]*
  store [1 x i8] c"\72", [1 x i8]* %sp1.191
  %next1.191 = getelementptr [8 x i8], [8 x i8]* %spi191, i32 0, i32 2
  
  %sp2.191 = bitcast i8* %next1.191 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp2.191
  %next2.191 = getelementptr [8 x i8], [8 x i8]* %spi191, i32 0, i32 3
  
  %sp3.191 = bitcast i8* %next2.191 to [1 x i8]*
  store [1 x i8] c"\6d", [1 x i8]* %sp3.191
  %next3.191 = getelementptr [8 x i8], [8 x i8]* %spi191, i32 0, i32 4
  
  %sp4.191 = bitcast i8* %next3.191 to [1 x i8]*
  store [1 x i8] c"\69", [1 x i8]* %sp4.191
  %next4.191 = getelementptr [8 x i8], [8 x i8]* %spi191, i32 0, i32 5
  
  %sp5.191 = bitcast i8* %next4.191 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp5.191
  %next5.191 = getelementptr [8 x i8], [8 x i8]* %spi191, i32 0, i32 6
  
  %sp6.191 = bitcast i8* %next5.191 to [2 x i8]*
  store [2 x i8] c"\72\00", [2 x i8]* %sp6.191
  %cast63= getelementptr [8 x i8], [8 x i8]* %spi191, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast63)
  br label %next63
BB_65:
;-------------------------------
; Replace: %cast65= getelementptr [10 x i8], [10 x i8]* @.str64, i64 0, i64 0
  %spi192 = alloca [10 x i8]

  
  %sp0.192 = bitcast [10 x i8]* %spi192 to [1 x i8]*
  store [1 x i8] c"\44", [1 x i8]* %sp0.192
  %next0.192 = getelementptr [10 x i8], [10 x i8]* %spi192, i32 0, i32 1
  
  %sp1.192 = bitcast i8* %next0.192 to [1 x i8]*
  store [1 x i8] c"\65", [1 x i8]* %sp1.192
  %next1.192 = getelementptr [10 x i8], [10 x i8]* %spi192, i32 0, i32 2
  
  %sp2.192 = bitcast i8* %next1.192 to [2 x i8]*
  store [2 x i8] c"\75\78", [2 x i8]* %sp2.192
  %next2.192 = getelementptr [10 x i8], [10 x i8]* %spi192, i32 0, i32 4
  
  %sp3.192 = bitcast i8* %next2.192 to [1 x i8]*
  store [1 x i8] c"\69", [1 x i8]* %sp3.192
  %next3.192 = getelementptr [10 x i8], [10 x i8]* %spi192, i32 0, i32 5
  
  %sp4.192 = bitcast i8* %next3.192 to [2 x i8]*
  store [2 x i8] c"\c3\a8", [2 x i8]* %sp4.192
  %next4.192 = getelementptr [10 x i8], [10 x i8]* %spi192, i32 0, i32 7
  
  %sp5.192 = bitcast i8* %next4.192 to [1 x i8]*
  store [1 x i8] c"\6d", [1 x i8]* %sp5.192
  %next5.192 = getelementptr [10 x i8], [10 x i8]* %spi192, i32 0, i32 8
  
  %sp6.192 = bitcast i8* %next5.192 to [2 x i8]*
  store [2 x i8] c"\65\00", [2 x i8]* %sp6.192
  %cast65= getelementptr [10 x i8], [10 x i8]* %spi192, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast65)
  br label %next65
BB_69:
  ret void
.escape.90:
  ret void
.escape.193:
  ret void
}

define internal fastcc void @static_local_variables204(i32 %arg_esp) unnamed_addr  norecurse  !retregs !104 {
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i23.i, -4
  %3 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i23.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i27.i = add i32 %tmp0_v.i23.i, -12
  %5 = inttoptr i32 %tmp2_v5.i27.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i23.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i22.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i23.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517273, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i23.i, -24
  %8 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %8, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i23.i, -28
  %9 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %9, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i23.i, -36
  %10 = inttoptr i32 %tmp2_v2.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.202 = ptrtoint[4 x i8]* @str.bis.202 to i32
  %spi142 = alloca [4 x i8]

  
  %sp0.142 = bitcast [4 x i8]* %spi142 to [1 x i8]*
  store [1 x i8] c"\05", [1 x i8]* %sp0.142
  %next0.142 = getelementptr [4 x i8], [4 x i8]* %spi142, i32 0, i32 1
  
  %sp1.142 = bitcast i8* %next0.142 to [1 x i8]*
  store [1 x i8] c"\11", [1 x i8]* %sp1.142
  %next1.142 = getelementptr [4 x i8], [4 x i8]* %spi142, i32 0, i32 2
  
  %sp2.142 = bitcast i8* %next1.142 to [1 x i8]*
  store [1 x i8] c"\2d", [1 x i8]* %sp2.142
  %next2.142 = getelementptr [4 x i8], [4 x i8]* %spi142, i32 0, i32 3
  
  %sp3.142 = bitcast i8* %next2.142 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp3.142
  %spi.bis.202 = ptrtoint[4 x i8]* %spi142 to i32
;-------------------------------
  store i32 %spi.bis.202, i32* %10, align 4
  %11 = load i32, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp0_v2.i.i.i = add i32 %11, 1
  store i32 %tmp0_v2.i.i.i, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i23.i, -44
  %12 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %tmp0_v2.i.i.i, i32* %12, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i23.i, -48
  %13 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.201 = ptrtoint[11 x i8]* @str.bis.201 to i32
  %spi141 = alloca [11 x i8]

  
  %sp0.141 = bitcast [11 x i8]* %spi141 to [1 x i8]*
  store [1 x i8] c"\63", [1 x i8]* %sp0.141
  %next0.141 = getelementptr [11 x i8], [11 x i8]* %spi141, i32 0, i32 1
  
  %sp1.141 = bitcast i8* %next0.141 to [2 x i8]*
  store [2 x i8] c"\61\6c", [2 x i8]* %sp1.141
  %next1.141 = getelementptr [11 x i8], [11 x i8]* %spi141, i32 0, i32 3
  
  %sp2.141 = bitcast i8* %next1.141 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp2.141
  %next2.141 = getelementptr [11 x i8], [11 x i8]* %spi141, i32 0, i32 4
  
  %sp3.141 = bitcast i8* %next2.141 to [2 x i8]*
  store [2 x i8] c"\73\3a", [2 x i8]* %sp3.141
  %next3.141 = getelementptr [11 x i8], [11 x i8]* %spi141, i32 0, i32 6
  
  %sp4.141 = bitcast i8* %next3.141 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp4.141
  %next4.141 = getelementptr [11 x i8], [11 x i8]* %spi141, i32 0, i32 7
  
  %sp5.141 = bitcast i8* %next4.141 to [2 x i8]*
  store [2 x i8] c"\25\64", [2 x i8]* %sp5.141
  %next5.141 = getelementptr [11 x i8], [11 x i8]* %spi141, i32 0, i32 9
  
  %sp6.141 = bitcast i8* %next5.141 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.141
  %spi.bis.201 = ptrtoint[11 x i8]* %spi141 to i32
;-------------------------------
  store i32 %spi.bis.201, i32* %13, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i23.i, -52
  %14 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517531, i32* %14, align 4
  %15 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef 134520895, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !105
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 8
  store i32 134517278, i32* %7, align 4
  store i32 %17, i32* %8, align 8
  store i32 %16, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.200 = ptrtoint[4 x i8]* @str.bis.200 to i32
  %spi140 = alloca [4 x i8]

  
  %sp0.140 = bitcast [4 x i8]* %spi140 to [1 x i8]*
  store [1 x i8] c"\05", [1 x i8]* %sp0.140
  %next0.140 = getelementptr [4 x i8], [4 x i8]* %spi140, i32 0, i32 1
  
  %sp1.140 = bitcast i8* %next0.140 to [1 x i8]*
  store [1 x i8] c"\11", [1 x i8]* %sp1.140
  %next1.140 = getelementptr [4 x i8], [4 x i8]* %spi140, i32 0, i32 2
  
  %sp2.140 = bitcast i8* %next1.140 to [1 x i8]*
  store [1 x i8] c"\2d", [1 x i8]* %sp2.140
  %next2.140 = getelementptr [4 x i8], [4 x i8]* %spi140, i32 0, i32 3
  
  %sp3.140 = bitcast i8* %next2.140 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp3.140
  %spi.bis.200 = ptrtoint[4 x i8]* %spi140 to i32
;-------------------------------
  store i32 %spi.bis.200, i32* %10, align 4
  %18 = load i32, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp0_v2.i.i.i6 = add i32 %18, 1
  store i32 %tmp0_v2.i.i.i6, i32* inttoptr (i32 134529072 to i32*), align 16
  store i32 %tmp0_v2.i.i.i6, i32* %12, align 4
;-------------------------------
; Replace: %spi.bis.199 = ptrtoint[11 x i8]* @str.bis.199 to i32
  %spi139 = alloca [11 x i8]

  
  %sp0.139 = bitcast [11 x i8]* %spi139 to [1 x i8]*
  store [1 x i8] c"\63", [1 x i8]* %sp0.139
  %next0.139 = getelementptr [11 x i8], [11 x i8]* %spi139, i32 0, i32 1
  
  %sp1.139 = bitcast i8* %next0.139 to [2 x i8]*
  store [2 x i8] c"\61\6c", [2 x i8]* %sp1.139
  %next1.139 = getelementptr [11 x i8], [11 x i8]* %spi139, i32 0, i32 3
  
  %sp2.139 = bitcast i8* %next1.139 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp2.139
  %next2.139 = getelementptr [11 x i8], [11 x i8]* %spi139, i32 0, i32 4
  
  %sp3.139 = bitcast i8* %next2.139 to [2 x i8]*
  store [2 x i8] c"\73\3a", [2 x i8]* %sp3.139
  %next3.139 = getelementptr [11 x i8], [11 x i8]* %spi139, i32 0, i32 6
  
  %sp4.139 = bitcast i8* %next3.139 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp4.139
  %next4.139 = getelementptr [11 x i8], [11 x i8]* %spi139, i32 0, i32 7
  
  %sp5.139 = bitcast i8* %next4.139 to [2 x i8]*
  store [2 x i8] c"\25\64", [2 x i8]* %sp5.139
  %next5.139 = getelementptr [11 x i8], [11 x i8]* %spi139, i32 0, i32 9
  
  %sp6.139 = bitcast i8* %next5.139 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.139
  %spi.bis.199 = ptrtoint[11 x i8]* %spi139 to i32
;-------------------------------
  store i32 %spi.bis.199, i32* %13, align 16
  store i32 134517531, i32* %14, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef 134520895, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !105
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 8
  store i32 134517283, i32* %7, align 4
  store i32 %21, i32* %8, align 8
  store i32 %20, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.198 = ptrtoint[4 x i8]* @str.bis.198 to i32
  %spi138 = alloca [4 x i8]

  
  %sp0.138 = bitcast [4 x i8]* %spi138 to [1 x i8]*
  store [1 x i8] c"\05", [1 x i8]* %sp0.138
  %next0.138 = getelementptr [4 x i8], [4 x i8]* %spi138, i32 0, i32 1
  
  %sp1.138 = bitcast i8* %next0.138 to [1 x i8]*
  store [1 x i8] c"\11", [1 x i8]* %sp1.138
  %next1.138 = getelementptr [4 x i8], [4 x i8]* %spi138, i32 0, i32 2
  
  %sp2.138 = bitcast i8* %next1.138 to [1 x i8]*
  store [1 x i8] c"\2d", [1 x i8]* %sp2.138
  %next2.138 = getelementptr [4 x i8], [4 x i8]* %spi138, i32 0, i32 3
  
  %sp3.138 = bitcast i8* %next2.138 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp3.138
  %spi.bis.198 = ptrtoint[4 x i8]* %spi138 to i32
;-------------------------------
  store i32 %spi.bis.198, i32* %10, align 4
  %22 = load i32, i32* inttoptr (i32 134529072 to i32*), align 16
  %tmp0_v2.i.i.i16 = add i32 %22, 1
  store i32 %tmp0_v2.i.i.i16, i32* inttoptr (i32 134529072 to i32*), align 16
  store i32 %tmp0_v2.i.i.i16, i32* %12, align 4
;-------------------------------
; Replace: %spi.bis.197 = ptrtoint[11 x i8]* @str.bis.197 to i32
  %spi137 = alloca [11 x i8]

  
  %sp0.137 = bitcast [11 x i8]* %spi137 to [1 x i8]*
  store [1 x i8] c"\63", [1 x i8]* %sp0.137
  %next0.137 = getelementptr [11 x i8], [11 x i8]* %spi137, i32 0, i32 1
  
  %sp1.137 = bitcast i8* %next0.137 to [2 x i8]*
  store [2 x i8] c"\61\6c", [2 x i8]* %sp1.137
  %next1.137 = getelementptr [11 x i8], [11 x i8]* %spi137, i32 0, i32 3
  
  %sp2.137 = bitcast i8* %next1.137 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp2.137
  %next2.137 = getelementptr [11 x i8], [11 x i8]* %spi137, i32 0, i32 4
  
  %sp3.137 = bitcast i8* %next2.137 to [2 x i8]*
  store [2 x i8] c"\73\3a", [2 x i8]* %sp3.137
  %next3.137 = getelementptr [11 x i8], [11 x i8]* %spi137, i32 0, i32 6
  
  %sp4.137 = bitcast i8* %next3.137 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp4.137
  %next4.137 = getelementptr [11 x i8], [11 x i8]* %spi137, i32 0, i32 7
  
  %sp5.137 = bitcast i8* %next4.137 to [2 x i8]*
  store [2 x i8] c"\25\64", [2 x i8]* %sp5.137
  %next5.137 = getelementptr [11 x i8], [11 x i8]* %spi137, i32 0, i32 9
  
  %sp6.137 = bitcast i8* %next5.137 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.137
  %spi.bis.197 = ptrtoint[11 x i8]* %spi137 to i32
;-------------------------------
  store i32 %spi.bis.197, i32* %13, align 16
  store i32 134517531, i32* %14, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef 134520895, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !105
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 8
  %tmp2_v.i20.i = add i32 %26, -8184
  %tmp2_v1.i.i = add i32 %tmp0_v.i23.i, -32
  %28 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %tmp2_v.i20.i, i32* %28, align 16
  store i32 134517298, i32* %10, align 4
  %tmp2_v.i13.i.i = add i32 %tmp0_v.i23.i, -40
  %29 = inttoptr i32 %tmp2_v.i13.i.i to i32*
  store i32 %27, i32* %29, align 8
  store i32 %26, i32* %12, align 4
  %tmp2_v2.i.i.i24 = add i32 %tmp0_v.i23.i, -68
  %30 = inttoptr i32 %tmp2_v2.i.i.i24 to i32*
  store i32 134517368, i32* %30, align 4
  %31 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp0_v2.i4.i.i = add i32 %31, 1
  store i32 %tmp0_v2.i4.i.i, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i23.i, -76
  %32 = inttoptr i32 %tmp2_v6.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.196 = ptrtoint[2 x i8]* @str.bis.196 to i32
  %spi136 = alloca [2 x i8]

  
  %sp0.136 = bitcast [2 x i8]* %spi136 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.136
  %next0.136 = getelementptr [2 x i8], [2 x i8]* %spi136, i32 0, i32 1
  
  %sp1.136 = bitcast i8* %next0.136 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp1.136
  %spi.bis.196 = ptrtoint[2 x i8]* %spi136 to i32
;-------------------------------
  store i32 %spi.bis.196, i32* %32, align 4
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i23.i, -80
  %33 = inttoptr i32 %tmp2_v8.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.195 = ptrtoint[8 x i8]* @str.bis.195 to i32
  %spi135 = alloca [8 x i8]

  
  %sp0.135 = bitcast [8 x i8]* %spi135 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp0.135
  %next0.135 = getelementptr [8 x i8], [8 x i8]* %spi135, i32 0, i32 1
  
  %sp1.135 = bitcast i8* %next0.135 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp1.135
  %next1.135 = getelementptr [8 x i8], [8 x i8]* %spi135, i32 0, i32 2
  
  %sp2.135 = bitcast i8* %next1.135 to [1 x i8]*
  store [1 x i8] c"\67", [1 x i8]* %sp2.135
  %next2.135 = getelementptr [8 x i8], [8 x i8]* %spi135, i32 0, i32 3
  
  %sp3.135 = bitcast i8* %next2.135 to [1 x i8]*
  store [1 x i8] c"\2e", [1 x i8]* %sp3.135
  %next3.135 = getelementptr [8 x i8], [8 x i8]* %spi135, i32 0, i32 4
  
  %sp4.135 = bitcast i8* %next3.135 to [1 x i8]*
  store [1 x i8] c"\74", [1 x i8]* %sp4.135
  %next4.135 = getelementptr [8 x i8], [8 x i8]* %spi135, i32 0, i32 5
  
  %sp5.135 = bitcast i8* %next4.135 to [1 x i8]*
  store [1 x i8] c"\78", [1 x i8]* %sp5.135
  %next5.135 = getelementptr [8 x i8], [8 x i8]* %spi135, i32 0, i32 6
  
  %sp6.135 = bitcast i8* %next5.135 to [2 x i8]*
  store [2 x i8] c"\74\00", [2 x i8]* %sp6.135
  %spi.bis.195 = ptrtoint[8 x i8]* %spi135 to i32
;-------------------------------
  store i32 %spi.bis.195, i32* %33, align 16
  %tmp2_v9.i.i.i25 = add i32 %tmp0_v.i23.i, -84
  %34 = inttoptr i32 %tmp2_v9.i.i.i25 to i32*
  store i32 134517411, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %37 = load i32, i32* %28, align 16
  store i32 %37, i32* %30, align 4
  %tmp2_v4.i31.i.i = add i32 %tmp0_v.i23.i, -72
  %38 = inttoptr i32 %tmp2_v4.i31.i.i to i32*
  store i32 %36, i32* %38, align 8
;-------------------------------
; Replace: %spi.bis.194 = ptrtoint[12 x i8]* @str.bis.194 to i32
  %spi134 = alloca [12 x i8]

  
  %sp0.134 = bitcast [12 x i8]* %spi134 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp0.134
  %next0.134 = getelementptr [12 x i8], [12 x i8]* %spi134, i32 0, i32 1
  
  %sp1.134 = bitcast i8* %next0.134 to [2 x i8]*
  store [2 x i8] c"\6f\67", [2 x i8]* %sp1.134
  %next1.134 = getelementptr [12 x i8], [12 x i8]* %spi134, i32 0, i32 3
  
  %sp2.134 = bitcast i8* %next1.134 to [2 x i8]*
  store [2 x i8] c"\20\25", [2 x i8]* %sp2.134
  %next2.134 = getelementptr [12 x i8], [12 x i8]* %spi134, i32 0, i32 5
  
  %sp3.134 = bitcast i8* %next2.134 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp3.134
  %next3.134 = getelementptr [12 x i8], [12 x i8]* %spi134, i32 0, i32 6
  
  %sp4.134 = bitcast i8* %next3.134 to [2 x i8]*
  store [2 x i8] c"\3a\20", [2 x i8]* %sp4.134
  %next4.134 = getelementptr [12 x i8], [12 x i8]* %spi134, i32 0, i32 8
  
  %sp5.134 = bitcast i8* %next4.134 to [2 x i8]*
  store [2 x i8] c"\25\73", [2 x i8]* %sp5.134
  %next5.134 = getelementptr [12 x i8], [12 x i8]* %spi134, i32 0, i32 10
  
  %sp6.134 = bitcast i8* %next5.134 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.134
  %spi.bis.194 = ptrtoint[12 x i8]* %spi134 to i32
;-------------------------------
  store i32 %spi.bis.194, i32* %32, align 4
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %33, align 16
  store i32 134517448, i32* %34, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef %25, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !106
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %33, align 16
  store i32 134517462, i32* %34, align 4
  %arg.i.i23.i = load i32, i32* %33, align 16
  %44 = tail call i32 @fclose(i32 %arg.i.i23.i)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %29, align 8
  %tmp2_v.i13.i = add i32 %45, -8174
  store i32 %tmp2_v.i13.i, i32* %28, align 16
  store i32 134517316, i32* %10, align 4
  store i32 %46, i32* %29, align 8
  store i32 %45, i32* %12, align 4
  store i32 134517368, i32* %30, align 4
  %47 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp0_v2.i4.i.i33 = add i32 %47, 1
  store i32 %tmp0_v2.i4.i.i33, i32* inttoptr (i32 134529068 to i32*), align 4
;-------------------------------
; Replace: %spi.bis.193 = ptrtoint[2 x i8]* @str.bis.193 to i32
  %spi133 = alloca [2 x i8]

  
  %sp0.133 = bitcast [2 x i8]* %spi133 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.133
  %next0.133 = getelementptr [2 x i8], [2 x i8]* %spi133, i32 0, i32 1
  
  %sp1.133 = bitcast i8* %next0.133 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp1.133
  %spi.bis.193 = ptrtoint[2 x i8]* %spi133 to i32
;-------------------------------
  store i32 %spi.bis.193, i32* %32, align 4
;-------------------------------
; Replace: %spi.bis.192 = ptrtoint[8 x i8]* @str.bis.192 to i32
  %spi132 = alloca [8 x i8]

  
  %sp0.132 = bitcast [8 x i8]* %spi132 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp0.132
  %next0.132 = getelementptr [8 x i8], [8 x i8]* %spi132, i32 0, i32 1
  
  %sp1.132 = bitcast i8* %next0.132 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp1.132
  %next1.132 = getelementptr [8 x i8], [8 x i8]* %spi132, i32 0, i32 2
  
  %sp2.132 = bitcast i8* %next1.132 to [1 x i8]*
  store [1 x i8] c"\67", [1 x i8]* %sp2.132
  %next2.132 = getelementptr [8 x i8], [8 x i8]* %spi132, i32 0, i32 3
  
  %sp3.132 = bitcast i8* %next2.132 to [1 x i8]*
  store [1 x i8] c"\2e", [1 x i8]* %sp3.132
  %next3.132 = getelementptr [8 x i8], [8 x i8]* %spi132, i32 0, i32 4
  
  %sp4.132 = bitcast i8* %next3.132 to [1 x i8]*
  store [1 x i8] c"\74", [1 x i8]* %sp4.132
  %next4.132 = getelementptr [8 x i8], [8 x i8]* %spi132, i32 0, i32 5
  
  %sp5.132 = bitcast i8* %next4.132 to [1 x i8]*
  store [1 x i8] c"\78", [1 x i8]* %sp5.132
  %next5.132 = getelementptr [8 x i8], [8 x i8]* %spi132, i32 0, i32 6
  
  %sp6.132 = bitcast i8* %next5.132 to [2 x i8]*
  store [2 x i8] c"\74\00", [2 x i8]* %sp6.132
  %spi.bis.192 = ptrtoint[8 x i8]* %spi132 to i32
;-------------------------------
  store i32 %spi.bis.192, i32* %33, align 16
  store i32 134517411, i32* %34, align 4
  %arg.i.i.i37 = load i32, i32* %33, align 16
  %arg2.i.i.i38 = load i32, i32* %32, align 4
  %48 = tail call i32 @fopen(i32 %arg.i.i.i37, i32 %arg2.i.i.i38)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %50 = load i32, i32* %28, align 16
  store i32 %50, i32* %30, align 4
  store i32 %49, i32* %38, align 8
;-------------------------------
; Replace: %spi.bis.191 = ptrtoint[12 x i8]* @str.bis.191 to i32
  %spi131 = alloca [12 x i8]

  
  %sp0.131 = bitcast [12 x i8]* %spi131 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp0.131
  %next0.131 = getelementptr [12 x i8], [12 x i8]* %spi131, i32 0, i32 1
  
  %sp1.131 = bitcast i8* %next0.131 to [2 x i8]*
  store [2 x i8] c"\6f\67", [2 x i8]* %sp1.131
  %next1.131 = getelementptr [12 x i8], [12 x i8]* %spi131, i32 0, i32 3
  
  %sp2.131 = bitcast i8* %next1.131 to [2 x i8]*
  store [2 x i8] c"\20\25", [2 x i8]* %sp2.131
  %next2.131 = getelementptr [12 x i8], [12 x i8]* %spi131, i32 0, i32 5
  
  %sp3.131 = bitcast i8* %next2.131 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp3.131
  %next3.131 = getelementptr [12 x i8], [12 x i8]* %spi131, i32 0, i32 6
  
  %sp4.131 = bitcast i8* %next3.131 to [2 x i8]*
  store [2 x i8] c"\3a\20", [2 x i8]* %sp4.131
  %next4.131 = getelementptr [12 x i8], [12 x i8]* %spi131, i32 0, i32 8
  
  %sp5.131 = bitcast i8* %next4.131 to [2 x i8]*
  store [2 x i8] c"\25\73", [2 x i8]* %sp5.131
  %next5.131 = getelementptr [12 x i8], [12 x i8]* %spi131, i32 0, i32 10
  
  %sp6.131 = bitcast i8* %next5.131 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.131
  %spi.bis.191 = ptrtoint[12 x i8]* %spi131 to i32
;-------------------------------
  store i32 %spi.bis.191, i32* %32, align 4
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %33, align 16
  store i32 134517448, i32* %34, align 4
  %52 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef %42, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !106
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %33, align 16
  store i32 134517462, i32* %34, align 4
  %arg.i.i23.i41 = load i32, i32* %33, align 16
  %56 = tail call i32 @fclose(i32 %arg.i.i23.i41)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %29, align 8
  %tmp2_v.i.i = add i32 %57, -8162
  store i32 %tmp2_v.i.i, i32* %28, align 16
  store i32 134517334, i32* %10, align 4
  store i32 %58, i32* %29, align 8
  store i32 %57, i32* %12, align 4
  store i32 134517368, i32* %30, align 4
  %59 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %tmp0_v2.i4.i.i48 = add i32 %59, 1
  store i32 %tmp0_v2.i4.i.i48, i32* inttoptr (i32 134529068 to i32*), align 4
;-------------------------------
; Replace: %spi.bis.190 = ptrtoint[2 x i8]* @str.bis.190 to i32
  %spi130 = alloca [2 x i8]

  
  %sp0.130 = bitcast [2 x i8]* %spi130 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.130
  %next0.130 = getelementptr [2 x i8], [2 x i8]* %spi130, i32 0, i32 1
  
  %sp1.130 = bitcast i8* %next0.130 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp1.130
  %spi.bis.190 = ptrtoint[2 x i8]* %spi130 to i32
;-------------------------------
  store i32 %spi.bis.190, i32* %32, align 4
;-------------------------------
; Replace: %spi.bis.189 = ptrtoint[8 x i8]* @str.bis.189 to i32
  %spi129 = alloca [8 x i8]

  
  %sp0.129 = bitcast [8 x i8]* %spi129 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp0.129
  %next0.129 = getelementptr [8 x i8], [8 x i8]* %spi129, i32 0, i32 1
  
  %sp1.129 = bitcast i8* %next0.129 to [1 x i8]*
  store [1 x i8] c"\6f", [1 x i8]* %sp1.129
  %next1.129 = getelementptr [8 x i8], [8 x i8]* %spi129, i32 0, i32 2
  
  %sp2.129 = bitcast i8* %next1.129 to [1 x i8]*
  store [1 x i8] c"\67", [1 x i8]* %sp2.129
  %next2.129 = getelementptr [8 x i8], [8 x i8]* %spi129, i32 0, i32 3
  
  %sp3.129 = bitcast i8* %next2.129 to [1 x i8]*
  store [1 x i8] c"\2e", [1 x i8]* %sp3.129
  %next3.129 = getelementptr [8 x i8], [8 x i8]* %spi129, i32 0, i32 4
  
  %sp4.129 = bitcast i8* %next3.129 to [1 x i8]*
  store [1 x i8] c"\74", [1 x i8]* %sp4.129
  %next4.129 = getelementptr [8 x i8], [8 x i8]* %spi129, i32 0, i32 5
  
  %sp5.129 = bitcast i8* %next4.129 to [1 x i8]*
  store [1 x i8] c"\78", [1 x i8]* %sp5.129
  %next5.129 = getelementptr [8 x i8], [8 x i8]* %spi129, i32 0, i32 6
  
  %sp6.129 = bitcast i8* %next5.129 to [2 x i8]*
  store [2 x i8] c"\74\00", [2 x i8]* %sp6.129
  %spi.bis.189 = ptrtoint[8 x i8]* %spi129 to i32
;-------------------------------
  store i32 %spi.bis.189, i32* %33, align 16
  store i32 134517411, i32* %34, align 4
  %arg.i.i.i52 = load i32, i32* %33, align 16
  %arg2.i.i.i53 = load i32, i32* %32, align 4
  %60 = tail call i32 @fopen(i32 %arg.i.i.i52, i32 %arg2.i.i.i53)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* inttoptr (i32 134529068 to i32*), align 4
  %62 = load i32, i32* %28, align 16
  store i32 %62, i32* %30, align 4
  store i32 %61, i32* %38, align 8
;-------------------------------
; Replace: %spi.bis.188 = ptrtoint[12 x i8]* @str.bis.188 to i32
  %spi128 = alloca [12 x i8]

  
  %sp0.128 = bitcast [12 x i8]* %spi128 to [1 x i8]*
  store [1 x i8] c"\6c", [1 x i8]* %sp0.128
  %next0.128 = getelementptr [12 x i8], [12 x i8]* %spi128, i32 0, i32 1
  
  %sp1.128 = bitcast i8* %next0.128 to [2 x i8]*
  store [2 x i8] c"\6f\67", [2 x i8]* %sp1.128
  %next1.128 = getelementptr [12 x i8], [12 x i8]* %spi128, i32 0, i32 3
  
  %sp2.128 = bitcast i8* %next1.128 to [2 x i8]*
  store [2 x i8] c"\20\25", [2 x i8]* %sp2.128
  %next2.128 = getelementptr [12 x i8], [12 x i8]* %spi128, i32 0, i32 5
  
  %sp3.128 = bitcast i8* %next2.128 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp3.128
  %next3.128 = getelementptr [12 x i8], [12 x i8]* %spi128, i32 0, i32 6
  
  %sp4.128 = bitcast i8* %next3.128 to [2 x i8]*
  store [2 x i8] c"\3a\20", [2 x i8]* %sp4.128
  %next4.128 = getelementptr [12 x i8], [12 x i8]* %spi128, i32 0, i32 8
  
  %sp5.128 = bitcast i8* %next4.128 to [2 x i8]*
  store [2 x i8] c"\25\73", [2 x i8]* %sp5.128
  %next5.128 = getelementptr [12 x i8], [12 x i8]* %spi128, i32 0, i32 10
  
  %sp6.128 = bitcast i8* %next5.128 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.128
  %spi.bis.188 = ptrtoint[12 x i8]* %spi128 to i32
;-------------------------------
  store i32 %spi.bis.188, i32* %32, align 4
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %33, align 16
  store i32 134517448, i32* %34, align 4
  %64 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef %54, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 ()* @fprintf to i32))  nobuiltin nounwind "no-builtins" , !funcname !106
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %33, align 16
  store i32 134517462, i32* %34, align 4
  %arg.i.i23.i56 = load i32, i32* %33, align 16
  %66 = tail call i32 @fclose(i32 %arg.i.i23.i56)
  ret void
}
define internal fastcc void @assignment684(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !90 {
  %tmp2_v.i58.i = add i32 %arg_esp, 4
  %tmp0_v.i59.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i59.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i61.i = add i32 %tmp0_v.i59.i, -8
  %4 = inttoptr i32 %tmp2_v4.i61.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i63.i = add i32 %tmp0_v.i59.i, -12
  %5 = inttoptr i32 %tmp2_v5.i63.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i65.i = add i32 %tmp0_v.i59.i, -16
  %6 = inttoptr i32 %tmp2_v6.i65.i to i32*
  store i32 %tmp2_v.i58.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i59.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %7, align 4
  %tmp2_v.i36.i = add i32 %tmp0_v.i59.i, -20
  %8 = inttoptr i32 %tmp2_v.i36.i to i32*
  store i32 5, i32* %8, align 4
  %tmp2_v4.i40.i = add i32 %tmp0_v.i59.i, -44
  %9 = inttoptr i32 %tmp2_v4.i40.i to i32*
  store i32 5, i32* %9, align 4
  %tmp2_v6.i42.i = add i32 %tmp0_v.i59.i, -48
  %10 = inttoptr i32 %tmp2_v6.i42.i to i32*
;-------------------------------
; Replace: %spi.bis.682 = ptrtoint[7 x i8]* @str.bis.682 to i32
  %spi148 = alloca [7 x i8]

  
  %sp0.148 = bitcast [7 x i8]* %spi148 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.148
  %next0.148 = getelementptr [7 x i8], [7 x i8]* %spi148, i32 0, i32 1
  
  %sp1.148 = bitcast i8* %next0.148 to [1 x i8]*
  store [1 x i8] c"\3a", [1 x i8]* %sp1.148
  %next1.148 = getelementptr [7 x i8], [7 x i8]* %spi148, i32 0, i32 2
  
  %sp2.148 = bitcast i8* %next1.148 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp2.148
  %next2.148 = getelementptr [7 x i8], [7 x i8]* %spi148, i32 0, i32 3
  
  %sp3.148 = bitcast i8* %next2.148 to [1 x i8]*
  store [1 x i8] c"\25", [1 x i8]* %sp3.148
  %next3.148 = getelementptr [7 x i8], [7 x i8]* %spi148, i32 0, i32 4
  
  %sp4.148 = bitcast i8* %next3.148 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp4.148
  %next4.148 = getelementptr [7 x i8], [7 x i8]* %spi148, i32 0, i32 5
  
  %sp5.148 = bitcast i8* %next4.148 to [1 x i8]*
  store [1 x i8] c"\0a", [1 x i8]* %sp5.148
  %next5.148 = getelementptr [7 x i8], [7 x i8]* %spi148, i32 0, i32 6
  
  %sp6.148 = bitcast i8* %next5.148 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp6.148
  %spi.bis.682 = ptrtoint[7 x i8]* %spi148 to i32
;-------------------------------
  store i32 %spi.bis.682, i32* %10, align 16
  %tmp2_v7.i43.i = add i32 %tmp0_v.i59.i, -52
  %11 = inttoptr i32 %tmp2_v7.i43.i to i32*
  store i32 134517200, i32* %11, align 4
  %12 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i58.i, i32 inreg noundef 0, i32 noundef %tmp2_v6.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !91
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %8, align 4
  %tmp0_v2.i.i = add i32 %15, 2
  store i32 %tmp0_v2.i.i, i32* %8, align 4
  store i32 %tmp0_v2.i.i, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.681 = ptrtoint[7 x i8]* @str.bis.681 to i32
  %spi147 = alloca [7 x i8]

  
  %sp0.147 = bitcast [7 x i8]* %spi147 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.147
  %next0.147 = getelementptr [7 x i8], [7 x i8]* %spi147, i32 0, i32 1
  
  %sp1.147 = bitcast i8* %next0.147 to [1 x i8]*
  store [1 x i8] c"\3a", [1 x i8]* %sp1.147
  %next1.147 = getelementptr [7 x i8], [7 x i8]* %spi147, i32 0, i32 2
  
  %sp2.147 = bitcast i8* %next1.147 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp2.147
  %next2.147 = getelementptr [7 x i8], [7 x i8]* %spi147, i32 0, i32 3
  
  %sp3.147 = bitcast i8* %next2.147 to [1 x i8]*
  store [1 x i8] c"\25", [1 x i8]* %sp3.147
  %next3.147 = getelementptr [7 x i8], [7 x i8]* %spi147, i32 0, i32 4
  
  %sp4.147 = bitcast i8* %next3.147 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp4.147
  %next4.147 = getelementptr [7 x i8], [7 x i8]* %spi147, i32 0, i32 5
  
  %sp5.147 = bitcast i8* %next4.147 to [1 x i8]*
  store [1 x i8] c"\0a", [1 x i8]* %sp5.147
  %next5.147 = getelementptr [7 x i8], [7 x i8]* %spi147, i32 0, i32 6
  
  %sp6.147 = bitcast i8* %next5.147 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp6.147
  %spi.bis.681 = ptrtoint[7 x i8]* %spi147 to i32
;-------------------------------
  store i32 %spi.bis.681, i32* %10, align 16
  store i32 134517225, i32* %11, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i58.i, i32 inreg noundef %14, i32 noundef %tmp2_v6.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !91
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %8, align 4
  %tmp0_v2.i12.i = add i32 %19, -2
  store i32 %tmp0_v2.i12.i, i32* %8, align 4
  store i32 %tmp0_v2.i12.i, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.680 = ptrtoint[7 x i8]* @str.bis.680 to i32
  %spi146 = alloca [7 x i8]

  
  %sp0.146 = bitcast [7 x i8]* %spi146 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.146
  %next0.146 = getelementptr [7 x i8], [7 x i8]* %spi146, i32 0, i32 1
  
  %sp1.146 = bitcast i8* %next0.146 to [1 x i8]*
  store [1 x i8] c"\3a", [1 x i8]* %sp1.146
  %next1.146 = getelementptr [7 x i8], [7 x i8]* %spi146, i32 0, i32 2
  
  %sp2.146 = bitcast i8* %next1.146 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp2.146
  %next2.146 = getelementptr [7 x i8], [7 x i8]* %spi146, i32 0, i32 3
  
  %sp3.146 = bitcast i8* %next2.146 to [1 x i8]*
  store [1 x i8] c"\25", [1 x i8]* %sp3.146
  %next3.146 = getelementptr [7 x i8], [7 x i8]* %spi146, i32 0, i32 4
  
  %sp4.146 = bitcast i8* %next3.146 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp4.146
  %next4.146 = getelementptr [7 x i8], [7 x i8]* %spi146, i32 0, i32 5
  
  %sp5.146 = bitcast i8* %next4.146 to [1 x i8]*
  store [1 x i8] c"\0a", [1 x i8]* %sp5.146
  %next5.146 = getelementptr [7 x i8], [7 x i8]* %spi146, i32 0, i32 6
  
  %sp6.146 = bitcast i8* %next5.146 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp6.146
  %spi.bis.680 = ptrtoint[7 x i8]* %spi146 to i32
;-------------------------------
  store i32 %spi.bis.680, i32* %10, align 16
  store i32 134517250, i32* %11, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i58.i, i32 inreg noundef %18, i32 noundef %tmp2_v6.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !91
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %8, align 4
  %tmp0_v2.i49.i = shl i32 %23, 1
  store i32 %tmp0_v2.i49.i, i32* %8, align 4
  store i32 %tmp0_v2.i49.i, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.679 = ptrtoint[7 x i8]* @str.bis.679 to i32
  %spi145 = alloca [7 x i8]

  
  %sp0.145 = bitcast [7 x i8]* %spi145 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.145
  %next0.145 = getelementptr [7 x i8], [7 x i8]* %spi145, i32 0, i32 1
  
  %sp1.145 = bitcast i8* %next0.145 to [1 x i8]*
  store [1 x i8] c"\3a", [1 x i8]* %sp1.145
  %next1.145 = getelementptr [7 x i8], [7 x i8]* %spi145, i32 0, i32 2
  
  %sp2.145 = bitcast i8* %next1.145 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp2.145
  %next2.145 = getelementptr [7 x i8], [7 x i8]* %spi145, i32 0, i32 3
  
  %sp3.145 = bitcast i8* %next2.145 to [1 x i8]*
  store [1 x i8] c"\25", [1 x i8]* %sp3.145
  %next3.145 = getelementptr [7 x i8], [7 x i8]* %spi145, i32 0, i32 4
  
  %sp4.145 = bitcast i8* %next3.145 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp4.145
  %next4.145 = getelementptr [7 x i8], [7 x i8]* %spi145, i32 0, i32 5
  
  %sp5.145 = bitcast i8* %next4.145 to [1 x i8]*
  store [1 x i8] c"\0a", [1 x i8]* %sp5.145
  %next5.145 = getelementptr [7 x i8], [7 x i8]* %spi145, i32 0, i32 6
  
  %sp6.145 = bitcast i8* %next5.145 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp6.145
  %spi.bis.679 = ptrtoint[7 x i8]* %spi145 to i32
;-------------------------------
  store i32 %spi.bis.679, i32* %10, align 16
  store i32 134517274, i32* %11, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i58.i, i32 inreg noundef %22, i32 noundef %tmp2_v6.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !91
  %25 = load i32, i32* %8, align 4
  %tmp0_v2.i71.i = lshr i32 %25, 31
  %tmp0_v3.i72.i = add i32 %tmp0_v2.i71.i, %25
  %tmp0_v4.i73.i = ashr i32 %tmp0_v3.i72.i, 1
  store i32 %tmp0_v4.i73.i, i32* %8, align 4
  store i32 %tmp0_v4.i73.i, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.678 = ptrtoint[7 x i8]* @str.bis.678 to i32
  %spi144 = alloca [7 x i8]

  
  %sp0.144 = bitcast [7 x i8]* %spi144 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.144
  %next0.144 = getelementptr [7 x i8], [7 x i8]* %spi144, i32 0, i32 1
  
  %sp1.144 = bitcast i8* %next0.144 to [1 x i8]*
  store [1 x i8] c"\3a", [1 x i8]* %sp1.144
  %next1.144 = getelementptr [7 x i8], [7 x i8]* %spi144, i32 0, i32 2
  
  %sp2.144 = bitcast i8* %next1.144 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp2.144
  %next2.144 = getelementptr [7 x i8], [7 x i8]* %spi144, i32 0, i32 3
  
  %sp3.144 = bitcast i8* %next2.144 to [1 x i8]*
  store [1 x i8] c"\25", [1 x i8]* %sp3.144
  %next3.144 = getelementptr [7 x i8], [7 x i8]* %spi144, i32 0, i32 4
  
  %sp4.144 = bitcast i8* %next3.144 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp4.144
  %next4.144 = getelementptr [7 x i8], [7 x i8]* %spi144, i32 0, i32 5
  
  %sp5.144 = bitcast i8* %next4.144 to [1 x i8]*
  store [1 x i8] c"\0a", [1 x i8]* %sp5.144
  %next5.144 = getelementptr [7 x i8], [7 x i8]* %spi144, i32 0, i32 6
  
  %sp6.144 = bitcast i8* %next5.144 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp6.144
  %spi.bis.678 = ptrtoint[7 x i8]* %spi144 to i32
;-------------------------------
  store i32 %spi.bis.678, i32* %10, align 16
  store i32 134517310, i32* %11, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i58.i, i32 inreg noundef %tmp0_v2.i71.i, i32 noundef %tmp2_v6.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !91
  %27 = load i32, i32* %8, align 4
  %tmp0_v3.i26.i = lshr i32 %27, 31
  %tmp0_v4.i27.i = add i32 %tmp0_v3.i26.i, %27
  %tmp0_v5.i28.i = and i32 %tmp0_v4.i27.i, 1
  %tmp0_v6.i29.i = sub nsw i32 %tmp0_v5.i28.i, %tmp0_v3.i26.i
  store i32 %tmp0_v6.i29.i, i32* %8, align 4
  store i32 %tmp0_v6.i29.i, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.677 = ptrtoint[7 x i8]* @str.bis.677 to i32
  %spi143 = alloca [7 x i8]

  
  %sp0.143 = bitcast [7 x i8]* %spi143 to [1 x i8]*
  store [1 x i8] c"\61", [1 x i8]* %sp0.143
  %next0.143 = getelementptr [7 x i8], [7 x i8]* %spi143, i32 0, i32 1
  
  %sp1.143 = bitcast i8* %next0.143 to [1 x i8]*
  store [1 x i8] c"\3a", [1 x i8]* %sp1.143
  %next1.143 = getelementptr [7 x i8], [7 x i8]* %spi143, i32 0, i32 2
  
  %sp2.143 = bitcast i8* %next1.143 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp2.143
  %next2.143 = getelementptr [7 x i8], [7 x i8]* %spi143, i32 0, i32 3
  
  %sp3.143 = bitcast i8* %next2.143 to [1 x i8]*
  store [1 x i8] c"\25", [1 x i8]* %sp3.143
  %next3.143 = getelementptr [7 x i8], [7 x i8]* %spi143, i32 0, i32 4
  
  %sp4.143 = bitcast i8* %next3.143 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp4.143
  %next4.143 = getelementptr [7 x i8], [7 x i8]* %spi143, i32 0, i32 5
  
  %sp5.143 = bitcast i8* %next4.143 to [1 x i8]*
  store [1 x i8] c"\0a", [1 x i8]* %sp5.143
  %next5.143 = getelementptr [7 x i8], [7 x i8]* %spi143, i32 0, i32 6
  
  %sp6.143 = bitcast i8* %next5.143 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp6.143
  %spi.bis.677 = ptrtoint[7 x i8]* %spi143 to i32
;-------------------------------
  store i32 %spi.bis.677, i32* %10, align 16
  store i32 134517348, i32* %11, align 4
  %28 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i58.i, i32 inreg noundef %tmp0_v3.i26.i, i32 noundef %tmp2_v6.i42.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !91
  ret void
}
define internal fastcc void @min_distance_two_numbers361(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !76 {
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
  %spi150 = alloca [4 x i8]

  
  %sp0.150 = bitcast [4 x i8]* %spi150 to [1 x i8]*
  store [1 x i8] c"\05", [1 x i8]* %sp0.150
  %next0.150 = getelementptr [4 x i8], [4 x i8]* %spi150, i32 0, i32 1
  
  %sp1.150 = bitcast i8* %next0.150 to [1 x i8]*
  store [1 x i8] c"\56", [1 x i8]* %sp1.150
  %next1.150 = getelementptr [4 x i8], [4 x i8]* %spi150, i32 0, i32 2
  
  %sp2.150 = bitcast i8* %next1.150 to [1 x i8]*
  store [1 x i8] c"\2d", [1 x i8]* %sp2.150
  %next2.150 = getelementptr [4 x i8], [4 x i8]* %spi150, i32 0, i32 3
  
  %sp3.150 = bitcast i8* %next2.150 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp3.150
  %spi.bis.359 = ptrtoint[4 x i8]* %spi150 to i32
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
  %spi149 = alloca [34 x i8]

  
  %sp0.149 = bitcast [34 x i8]* %spi149 to [4 x i8]*
  store [4 x i8] c"\6d\69\6e\20", [4 x i8]* %sp0.149
  %next0.149 = getelementptr [34 x i8], [34 x i8]* %spi149, i32 0, i32 4
  
  %sp1.149 = bitcast i8* %next0.149 to [5 x i8]*
  store [5 x i8] c"\64\69\73\74\61", [5 x i8]* %sp1.149
  %next1.149 = getelementptr [34 x i8], [34 x i8]* %spi149, i32 0, i32 9
  
  %sp2.149 = bitcast i8* %next1.149 to [5 x i8]*
  store [5 x i8] c"\6e\63\65\20\62", [5 x i8]* %sp2.149
  %next2.149 = getelementptr [34 x i8], [34 x i8]* %spi149, i32 0, i32 14
  
  %sp3.149 = bitcast i8* %next2.149 to [5 x i8]*
  store [5 x i8] c"\65\74\77\65\65", [5 x i8]* %sp3.149
  %next3.149 = getelementptr [34 x i8], [34 x i8]* %spi149, i32 0, i32 19
  
  %sp4.149 = bitcast i8* %next3.149 to [5 x i8]*
  store [5 x i8] c"\6e\20\25\64\20", [5 x i8]* %sp4.149
  %next4.149 = getelementptr [34 x i8], [34 x i8]* %spi149, i32 0, i32 24
  
  %sp5.149 = bitcast i8* %next4.149 to [5 x i8]*
  store [5 x i8] c"\26\20\25\64\3a", [5 x i8]* %sp5.149
  %next5.149 = getelementptr [34 x i8], [34 x i8]* %spi149, i32 0, i32 29
  
  %sp6.149 = bitcast i8* %next5.149 to [5 x i8]*
  store [5 x i8] c"\20\25\64\0a\00", [5 x i8]* %sp6.149
  %spi.bis.358 = ptrtoint[34 x i8]* %spi149 to i32
;-------------------------------
  store i32 %spi.bis.358, i32* %29, align 16
  store i32 134517368, i32* %30, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.2.lcssa.i, i32 noundef %tmp2_v28.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !77
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
  br i1 %15, label %26, label %16

16:                                               ; preds = %0
  %17 = load i16, i16* @fpus, align 4
  %18 = or i16 %17, 4
  store i16 %18, i16* @fpus, align 4
  %19 = load i16, i16* @fpuc, align 2
  %20 = and i16 %19, 63
  %21 = xor i16 %20, 63
  %22 = and i16 %21, %18
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = or i16 %17, -32636
  store i16 %25, i16* @fpus, align 4
  br label %26

26:                                               ; preds = %24, %16, %0
  %27 = tail call fastcc { i64, i16 } @floatx80_div(i64 %5, i16 %7, i64 %9, i16 %11)
  %28 = extractvalue { i64, i16 } %27, 0
  %29 = extractvalue { i64, i16 } %27, 1
  store i64 %28, i64* %4, align 16
  store i16 %29, i16* %6, align 8
  ret void
}
define internal fastcc { i64, i16 } @floatx80_div(i64 %0, i16 %1, i64 %2, i16 %3) unnamed_addr  nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
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
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %17 = extractvalue { i64, i16 } %16, 0
  %18 = extractvalue { i64, i16 } %16, 1
  br label %516

19:                                               ; preds = %12
  %20 = icmp eq i16 %7, 32767
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = and i64 %2, 9223372036854775807
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %26 = extractvalue { i64, i16 } %25, 0
  %27 = extractvalue { i64, i16 } %25, 1
  br label %516

28:                                               ; preds = %19
  %29 = or i16 %9, 32767
  br label %516

30:                                               ; preds = %4
  switch i32 %8, label %56 [
    i32 32767, label %31
    i32 0, label %38
  ]

31:                                               ; preds = %30
  %32 = and i64 %2, 9223372036854775807
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %516, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %0, i16 %1, i64 %2, i16 %3)
  %36 = extractvalue { i64, i16 } %35, 0
  %37 = extractvalue { i64, i16 } %35, 1
  br label %516

38:                                               ; preds = %30
  %39 = icmp eq i64 %2, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = zext i16 %5 to i64
  %42 = or i64 %41, %0
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %21
  %45 = load i8, i8* @fp_status.2, align 1
  %46 = or i8 %45, 1
  store i8 %46, i8* @fp_status.2, align 1
  br label %516

47:                                               ; preds = %40
  %48 = load i8, i8* @fp_status.2, align 1
  %49 = or i8 %48, 4
  store i8 %49, i8* @fp_status.2, align 1
  %50 = or i16 %9, 32767
  br label %516

51:                                               ; preds = %38
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
  %52 = xor i64 %ctlz.step10, -1
  %cppop.and1 = and i64 %52, 6148914691236517205
  %ctpop.sh = lshr i64 %52, 1
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
  %53 = trunc i64 %ctpop.step30 to i32
  %54 = shl i64 %2, %ctpop.step30
  %55 = sub nsw i32 1, %53
  br label %56

56:                                               ; preds = %51, %30
  %57 = phi i64 [ %2, %30 ], [ %54, %51 ]
  %58 = phi i32 [ %8, %30 ], [ %55, %51 ]
  %59 = icmp eq i16 %5, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = icmp eq i64 %0, 0
  br i1 %61, label %516, label %62

62:                                               ; preds = %60
  %ctlz.sh31 = lshr i64 %0, 1
  %ctlz.step32 = or i64 %ctlz.sh31, %0
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
  %63 = xor i64 %ctlz.step42, -1
  %cppop.and143 = and i64 %63, 6148914691236517205
  %ctpop.sh44 = lshr i64 %63, 1
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
  %64 = trunc i64 %ctpop.step66 to i32
  %65 = shl i64 %0, %ctpop.step66
  %66 = sub nsw i32 1, %64
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i64 [ %65, %62 ], [ %0, %56 ]
  %69 = phi i32 [ %66, %62 ], [ %6, %56 ]
  %70 = sub nsw i32 %69, %58
  %71 = icmp ugt i64 %57, %68
  %72 = shl i64 %68, 63
  %73 = xor i1 %71, true
  %74 = zext i1 %73 to i64
  %75 = lshr i64 %68, %74
  %76 = select i1 %71, i64 0, i64 %72
  %77 = select i1 %71, i32 16382, i32 16383
  %78 = add nsw i32 %70, %77
  %79 = icmp ugt i64 %57, %75
  %80 = lshr i64 %57, 32
  br i1 %79, label %83, label %81

81:                                               ; preds = %67
  %82 = and i64 %57, 4294967295
  br label %127

83:                                               ; preds = %67
  %84 = and i64 %57, -4294967296
  %85 = icmp ugt i64 %84, %75
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = udiv i64 %75, %80
  %88 = shl i64 %87, 32
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i64 [ %88, %86 ], [ -4294967296, %83 ]
  %91 = lshr exact i64 %90, 32
  %92 = and i64 %57, 4294967295
  %93 = mul nuw i64 %91, %92
  %94 = mul nuw i64 %91, %80
  %95 = lshr i64 %93, 32
  %96 = shl i64 %93, 32
  %97 = sub i64 %76, %96
  %98 = icmp ult i64 %76, %96
  %99 = sext i1 %98 to i64
  %100 = add nuw i64 %94, %95
  %101 = sub i64 %75, %100
  %102 = add i64 %101, %99
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %.loopexit15

104:                                              ; preds = %89
  %105 = shl i64 %57, 32
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i64 [ %90, %104 ], [ %110, %106 ]
  %108 = phi i64 [ %102, %104 ], [ %115, %106 ]
  %109 = phi i64 [ %97, %104 ], [ %111, %106 ]
  %110 = add i64 %107, -4294967296
  %111 = add i64 %109, %105
  %112 = add i64 %108, %80
  %113 = icmp ult i64 %111, %109
  %114 = zext i1 %113 to i64
  %115 = add i64 %112, %114
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %106, label %.loopexit15, !llvm.loop !52

.loopexit15:                                      ; preds = %106, %89
  %117 = phi i64 [ %97, %89 ], [ %111, %106 ]
  %118 = phi i64 [ %102, %89 ], [ %115, %106 ]
  %119 = phi i64 [ %90, %89 ], [ %110, %106 ]
  %120 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %117, i64 32)  nounwind 
  %121 = icmp ugt i64 %84, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %.loopexit15
  %123 = udiv i64 %120, %80
  br label %124

124:                                              ; preds = %122, %.loopexit15
  %125 = phi i64 [ %123, %122 ], [ 4294967295, %.loopexit15 ]
  %126 = or i64 %125, %119
  br label %127

127:                                              ; preds = %124, %81
  %128 = phi i64 [ %82, %81 ], [ %92, %124 ]
  %129 = phi i64 [ -1, %81 ], [ %126, %124 ]
  %130 = lshr i64 %129, 32
  %131 = and i64 %129, 4294967295
  %132 = mul nuw i64 %131, %128
  %133 = mul nuw i64 %130, %128
  %134 = mul nuw i64 %131, %80
  %135 = mul nuw i64 %130, %80
  %136 = add i64 %133, %134
  %137 = icmp ult i64 %136, %134
  %138 = select i1 %137, i64 -4294967296, i64 0
  %139 = lshr i64 %136, 32
  %140 = shl i64 %136, 32
  %141 = add i64 %140, %132
  %142 = icmp ult i64 %141, %140
  %143 = sext i1 %142 to i64
  %144 = sub i64 %76, %141
  %145 = icmp ult i64 %76, %141
  %146 = sext i1 %145 to i64
  %147 = add i64 %135, %139
  %148 = sub i64 %75, %147
  %149 = add i64 %148, %138
  %150 = add i64 %149, %143
  %151 = add i64 %150, %146
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %.preheader13, label %.loopexit14

.preheader13:                                     ; preds = %.preheader13, %127
  %153 = phi i64 [ %156, %.preheader13 ], [ %129, %127 ]
  %154 = phi i64 [ %157, %.preheader13 ], [ %144, %127 ]
  %155 = phi i64 [ %160, %.preheader13 ], [ %151, %127 ]
  %156 = add i64 %153, -1
  %157 = add i64 %154, %57
  %158 = icmp ult i64 %157, %154
  %159 = zext i1 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %.preheader13, label %.loopexit14, !llvm.loop !54

.loopexit14:                                      ; preds = %.preheader13, %127
  %162 = phi i64 [ %144, %127 ], [ %157, %.preheader13 ]
  %163 = phi i64 [ %129, %127 ], [ %156, %.preheader13 ]
  %164 = icmp ugt i64 %57, %162
  br i1 %164, label %165, label %250

165:                                              ; preds = %.loopexit14
  %166 = and i64 %57, -4294967296
  %167 = icmp ugt i64 %166, %162
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = udiv i64 %162, %80
  %170 = shl i64 %169, 32
  br label %171

171:                                              ; preds = %168, %165
  %172 = phi i64 [ %170, %168 ], [ -4294967296, %165 ]
  %173 = lshr exact i64 %172, 32
  %174 = mul nuw i64 %173, %128
  %175 = mul nuw i64 %173, %80
  %176 = lshr i64 %174, 32
  %177 = shl i64 %174, 32
  %178 = sub i64 0, %177
  %179 = icmp ne i64 %177, 0
  %180 = sext i1 %179 to i64
  %181 = add i64 %175, %176
  %182 = sub i64 %162, %181
  %183 = add i64 %182, %180
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %.loopexit12

185:                                              ; preds = %171
  %186 = shl i64 %57, 32
  br label %187

187:                                              ; preds = %187, %185
  %188 = phi i64 [ %172, %185 ], [ %191, %187 ]
  %189 = phi i64 [ %183, %185 ], [ %196, %187 ]
  %190 = phi i64 [ %178, %185 ], [ %192, %187 ]
  %191 = add i64 %188, -4294967296
  %192 = add i64 %190, %186
  %193 = add i64 %189, %80
  %194 = icmp ult i64 %192, %190
  %195 = zext i1 %194 to i64
  %196 = add i64 %193, %195
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %187, label %.loopexit12, !llvm.loop !52

.loopexit12:                                      ; preds = %187, %171
  %198 = phi i64 [ %178, %171 ], [ %192, %187 ]
  %199 = phi i64 [ %183, %171 ], [ %196, %187 ]
  %200 = phi i64 [ %172, %171 ], [ %191, %187 ]
  %201 = tail call i64 @llvm.fshl.i64(i64 %199, i64 %198, i64 32)  nounwind 
  %202 = icmp ugt i64 %166, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %.loopexit12
  %204 = udiv i64 %201, %80
  br label %205

205:                                              ; preds = %203, %.loopexit12
  %206 = phi i64 [ %204, %203 ], [ 4294967295, %.loopexit12 ]
  %207 = or i64 %206, %200
  %208 = shl i64 %207, 1
  %209 = icmp ult i64 %208, 9
  br i1 %209, label %210, label %250

210:                                              ; preds = %205
  %211 = lshr i64 %207, 32
  %212 = and i64 %207, 4294967295
  %213 = mul nuw i64 %212, %128
  %214 = mul nuw i64 %211, %128
  %215 = mul nuw i64 %212, %80
  %216 = mul nuw i64 %211, %80
  %217 = add i64 %214, %215
  %218 = icmp ult i64 %217, %215
  %219 = select i1 %218, i64 -4294967296, i64 0
  %220 = lshr i64 %217, 32
  %221 = shl i64 %217, 32
  %222 = add i64 %221, %213
  %223 = icmp ult i64 %222, %221
  %224 = sext i1 %223 to i64
  %225 = sub i64 0, %222
  %226 = icmp ne i64 %222, 0
  %227 = sext i1 %226 to i64
  %228 = add i64 %216, %220
  %229 = sub i64 %162, %228
  %230 = add i64 %229, %219
  %231 = add i64 %230, %224
  %232 = add i64 %231, %227
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader, %210
  %234 = phi i64 [ %237, %.preheader ], [ %207, %210 ]
  %235 = phi i64 [ %238, %.preheader ], [ %225, %210 ]
  %236 = phi i64 [ %241, %.preheader ], [ %232, %210 ]
  %237 = add i64 %234, -1
  %238 = add i64 %235, %57
  %239 = icmp ult i64 %238, %235
  %240 = zext i1 %239 to i64
  %241 = add nsw i64 %236, %240
  %242 = icmp slt i64 %241, 0
  br i1 %242, label %.preheader, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %.preheader, %210
  %243 = phi i64 [ %232, %210 ], [ 0, %.preheader ]
  %244 = phi i64 [ %225, %210 ], [ %238, %.preheader ]
  %245 = phi i64 [ %207, %210 ], [ %237, %.preheader ]
  %246 = or i64 %244, %243
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = or i64 %245, %248
  br label %250

250:                                              ; preds = %.loopexit, %205, %.loopexit14
  %251 = phi i64 [ %249, %.loopexit ], [ %207, %205 ], [ -1, %.loopexit14 ]
  %252 = load i8, i8* @fp_status.3, align 1
  %253 = load i8, i8* @fp_status.1, align 1
  %254 = icmp eq i8 %253, 0
  switch i8 %252, label %356 [
    i8 32, label %255
    i8 64, label %256
  ]

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255, %250
  %257 = phi i64 [ 549755813888, %255 ], [ 1024, %250 ]
  %258 = phi i64 [ 1099511627775, %255 ], [ 2047, %250 ]
  %259 = icmp ne i64 %251, 0
  %260 = zext i1 %259 to i64
  %261 = or i64 %163, %260
  br i1 %254, label %272, label %262

262:                                              ; preds = %256
  %263 = icmp eq i8 %253, 3
  br i1 %263, label %272, label %264

264:                                              ; preds = %262
  %265 = icmp sgt i16 %9, -1
  br i1 %265, label %269, label %266

266:                                              ; preds = %264
  %267 = icmp eq i8 %253, 2
  %268 = select i1 %267, i64 0, i64 %258
  br label %272

269:                                              ; preds = %264
  %270 = icmp eq i8 %253, 1
  %271 = select i1 %270, i64 0, i64 %258
  br label %272

272:                                              ; preds = %269, %266, %262, %256
  %273 = phi i64 [ %257, %256 ], [ 0, %262 ], [ %268, %266 ], [ %271, %269 ]
  %274 = and i64 %258, %261
  %275 = add i32 %78, -32766
  %276 = icmp ult i32 %275, -32765
  br i1 %276, label %277, label %332

277:                                              ; preds = %272
  %278 = icmp sgt i32 %78, 32766
  br i1 %278, label %385, label %279

279:                                              ; preds = %277
  %280 = icmp eq i32 %78, 32766
  %281 = xor i64 %261, -1
  %282 = icmp ugt i64 %273, %281
  %283 = select i1 %280, i1 %282, i1 false
  br i1 %283, label %385, label %284

284:                                              ; preds = %279
  %285 = icmp slt i32 %78, 1
  br i1 %285, label %286, label %332

286:                                              ; preds = %284
  %287 = icmp ne i32 %78, 0
  %288 = icmp ule i64 %273, %281
  %289 = select i1 %287, i1 true, i1 %288
  %290 = sub nsw i32 1, %78
  %291 = icmp ult i32 %290, 64
  br i1 %291, label %292, label %302

292:                                              ; preds = %286
  %293 = add nsw i32 %78, 63
  %294 = zext i32 %290 to i64
  %295 = lshr i64 %261, %294
  %296 = and i32 %293, 63
  %297 = zext i32 %296 to i64
  %298 = shl i64 %261, %297
  %299 = icmp ne i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = or i64 %295, %300
  br label %305

302:                                              ; preds = %286
  %303 = icmp ne i64 %261, 0
  %304 = zext i1 %303 to i64
  br label %305

305:                                              ; preds = %302, %292
  %306 = phi i64 [ %301, %292 ], [ %304, %302 ]
  %307 = and i64 %306, %258
  %308 = icmp ne i64 %307, 0
  %309 = select i1 %289, i1 %308, i1 false
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load i8, i8* @fp_status.2, align 1
  %312 = or i8 %311, 16
  store i8 %312, i8* @fp_status.2, align 1
  br label %313

313:                                              ; preds = %310, %305
  br i1 %308, label %314, label %317

314:                                              ; preds = %313
  %315 = load i8, i8* @fp_status.2, align 1
  %316 = or i8 %315, 32
  store i8 %316, i8* @fp_status.2, align 1
  br label %317

317:                                              ; preds = %314, %313
  %318 = add i64 %306, %273
  %319 = lshr i64 %318, 63
  %320 = trunc i64 %319 to i32
  %321 = add nuw nsw i64 %258, 1
  %322 = shl nuw nsw i64 %307, 1
  %323 = icmp eq i64 %322, %321
  %324 = select i1 %254, i1 %323, i1 false
  %325 = select i1 %324, i64 %321, i64 0
  %326 = or i64 %325, %258
  %327 = xor i64 %326, -1
  %328 = and i64 %318, %327
  %329 = zext i16 %10 to i32
  %330 = or i32 %320, %329
  %331 = insertvalue { i64, i16 } poison, i64 %328, 0
  br label %roundAndPackFloatx80.exit

332:                                              ; preds = %284, %272
  %333 = icmp eq i64 %274, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %332
  %335 = load i8, i8* @fp_status.2, align 1
  %336 = or i8 %335, 32
  store i8 %336, i8* @fp_status.2, align 1
  br label %337

337:                                              ; preds = %334, %332
  %338 = add i64 %273, %261
  %339 = icmp ult i64 %338, %273
  %340 = select i1 %339, i64 -9223372036854775808, i64 %338
  %341 = zext i1 %339 to i32
  %342 = add nuw nsw i32 %78, %341
  %343 = add nuw nsw i64 %258, 1
  %344 = shl nuw nsw i64 %274, 1
  %345 = icmp eq i64 %344, %343
  %346 = select i1 %254, i1 %345, i1 false
  %347 = select i1 %346, i64 %343, i64 0
  %348 = or i64 %347, %258
  %349 = xor i64 %348, -1
  %350 = and i64 %340, %349
  %351 = icmp eq i64 %350, 0
  %352 = select i1 %351, i32 0, i32 %342
  %353 = zext i16 %10 to i32
  %354 = add nuw nsw i32 %352, %353
  %355 = insertvalue { i64, i16 } poison, i64 %350, 0
  br label %roundAndPackFloatx80.exit

356:                                              ; preds = %250
  %357 = lshr i64 %251, 63
  %358 = trunc i64 %357 to i8
  br i1 %254, label %373, label %359

359:                                              ; preds = %356
  %360 = icmp eq i8 %253, 3
  br i1 %360, label %373, label %361

361:                                              ; preds = %359
  %362 = icmp sgt i16 %9, -1
  br i1 %362, label %368, label %363

363:                                              ; preds = %361
  %364 = icmp eq i8 %253, 1
  %365 = icmp ne i64 %251, 0
  %366 = and i1 %365, %364
  %367 = zext i1 %366 to i8
  br label %373

368:                                              ; preds = %361
  %369 = icmp eq i8 %253, 2
  %370 = icmp ne i64 %251, 0
  %371 = and i1 %370, %369
  %372 = zext i1 %371 to i8
  br label %373

373:                                              ; preds = %368, %363, %359, %356
  %374 = phi i8 [ %358, %356 ], [ %367, %363 ], [ %372, %368 ], [ 0, %359 ]
  %375 = add i32 %78, -32766
  %376 = icmp ult i32 %375, -32765
  br i1 %376, label %377, label %484

377:                                              ; preds = %373
  %378 = icmp sgt i32 %78, 32766
  br i1 %378, label %385, label %379

379:                                              ; preds = %377
  %380 = icmp eq i32 %78, 32766
  %381 = icmp eq i64 %163, -1
  %382 = and i1 %380, %381
  %383 = icmp ne i8 %374, 0
  %384 = select i1 %382, i1 %383, i1 false
  br i1 %384, label %385, label %406

385:                                              ; preds = %379, %377, %279, %277
  %386 = phi i64 [ %258, %277 ], [ %258, %279 ], [ 0, %379 ], [ 0, %377 ]
  %387 = load i8, i8* @fp_status.2, align 1
  %388 = or i8 %387, 40
  store i8 %388, i8* @fp_status.2, align 1
  %389 = icmp eq i8 %253, 3
  br i1 %389, label %398, label %390

390:                                              ; preds = %385
  %391 = icmp slt i16 %9, 0
  %392 = icmp eq i8 %253, 2
  %393 = select i1 %391, i1 %392, i1 false
  br i1 %393, label %398, label %394

394:                                              ; preds = %390
  %395 = icmp sgt i16 %9, -1
  %396 = icmp eq i8 %253, 1
  %397 = select i1 %395, i1 %396, i1 false
  br i1 %397, label %398, label %403

398:                                              ; preds = %394, %390, %385
  %399 = xor i64 %386, -1
  %400 = or i16 %10, 32766
  %401 = zext i16 %400 to i32
  %402 = insertvalue { i64, i16 } poison, i64 %399, 0
  br label %roundAndPackFloatx80.exit

403:                                              ; preds = %394
  %404 = or i16 %9, 32767
  %405 = zext i16 %404 to i32
  br label %roundAndPackFloatx80.exit

406:                                              ; preds = %379
  %407 = icmp slt i32 %78, 1
  br i1 %407, label %408, label %484

408:                                              ; preds = %406
  %409 = icmp eq i32 %78, 0
  %410 = select i1 %409, i1 %383, i1 false
  %411 = icmp ne i64 %163, -1
  %412 = xor i1 %410, true
  %413 = or i1 %411, %412
  %414 = sub nsw i32 1, %78
  %415 = icmp ult i32 %414, 64
  br i1 %415, label %416, label %426

416:                                              ; preds = %408
  %417 = add nsw i32 %78, 63
  %418 = and i32 %417, 63
  %419 = zext i32 %418 to i64
  %420 = shl i64 %163, %419
  %421 = icmp ne i64 %251, 0
  %422 = zext i1 %421 to i64
  %423 = or i64 %420, %422
  %424 = zext i32 %414 to i64
  %425 = lshr i64 %163, %424
  br label %436

426:                                              ; preds = %408
  %427 = icmp eq i32 %78, -63
  br i1 %427, label %428, label %432

428:                                              ; preds = %426
  %429 = icmp ne i64 %251, 0
  %430 = zext i1 %429 to i64
  %431 = or i64 %163, %430
  br label %436

432:                                              ; preds = %426
  %433 = or i64 %251, %163
  %434 = icmp ne i64 %433, 0
  %435 = zext i1 %434 to i64
  br label %436

436:                                              ; preds = %432, %428, %416
  %437 = phi i64 [ %423, %416 ], [ %431, %428 ], [ %435, %432 ]
  %438 = phi i64 [ %425, %416 ], [ 0, %428 ], [ 0, %432 ]
  %439 = icmp ne i64 %437, 0
  %440 = select i1 %413, i1 %439, i1 false
  br i1 %440, label %441, label %444

441:                                              ; preds = %436
  %442 = load i8, i8* @fp_status.2, align 1
  %443 = or i8 %442, 16
  br label %448

444:                                              ; preds = %436
  %445 = icmp eq i64 %437, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %444
  %447 = load i8, i8* @fp_status.2, align 1
  br label %448

448:                                              ; preds = %446, %441
  %449 = phi i8 [ %447, %446 ], [ %443, %441 ]
  %450 = or i8 %449, 32
  store i8 %450, i8* @fp_status.2, align 1
  br label %451

451:                                              ; preds = %448, %444
  br i1 %254, label %452, label %455

452:                                              ; preds = %451
  %453 = lshr i64 %437, 63
  %454 = trunc i64 %453 to i8
  br label %465

455:                                              ; preds = %451
  %456 = icmp sgt i16 %9, -1
  br i1 %456, label %461, label %457

457:                                              ; preds = %455
  %458 = icmp eq i8 %253, 1
  %459 = select i1 %458, i1 %439, i1 false
  %460 = zext i1 %459 to i8
  br label %465

461:                                              ; preds = %455
  %462 = icmp eq i8 %253, 2
  %463 = select i1 %462, i1 %439, i1 false
  %464 = zext i1 %463 to i8
  br label %465

465:                                              ; preds = %461, %457, %452
  %466 = phi i8 [ %454, %452 ], [ %460, %457 ], [ %464, %461 ]
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %478, label %468

468:                                              ; preds = %465
  %469 = add nuw i64 %438, 1
  %470 = and i64 %437, 9223372036854775807
  %471 = icmp eq i64 %470, 0
  %472 = and i1 %254, %471
  %473 = zext i1 %472 to i64
  %474 = xor i64 %473, -1
  %475 = and i64 %469, %474
  %476 = lshr i64 %469, 63
  %477 = trunc i64 %476 to i32
  br label %478

478:                                              ; preds = %468, %465
  %479 = phi i64 [ %438, %465 ], [ %475, %468 ]
  %480 = phi i32 [ 0, %465 ], [ %477, %468 ]
  %481 = zext i16 %10 to i32
  %482 = add nuw nsw i32 %480, %481
  %483 = insertvalue { i64, i16 } poison, i64 %479, 0
  br label %roundAndPackFloatx80.exit

484:                                              ; preds = %406, %373
  %485 = icmp eq i64 %251, 0
  br i1 %485, label %489, label %486

486:                                              ; preds = %484
  %487 = load i8, i8* @fp_status.2, align 1
  %488 = or i8 %487, 32
  store i8 %488, i8* @fp_status.2, align 1
  br label %489

489:                                              ; preds = %486, %484
  %490 = icmp eq i8 %374, 0
  br i1 %490, label %503, label %491

491:                                              ; preds = %489
  %492 = add i64 %163, 1
  %493 = icmp eq i64 %492, 0
  br i1 %493, label %494, label %496

494:                                              ; preds = %491
  %495 = add nuw nsw i32 %78, 1
  br label %506

496:                                              ; preds = %491
  %497 = and i64 %251, 9223372036854775807
  %498 = icmp eq i64 %497, 0
  %499 = and i1 %498, %254
  %500 = zext i1 %499 to i64
  %501 = xor i64 %500, -1
  %502 = and i64 %492, %501
  br label %506

503:                                              ; preds = %489
  %504 = icmp eq i64 %163, 0
  %505 = select i1 %504, i32 0, i32 %78
  br label %506

506:                                              ; preds = %503, %496, %494
  %507 = phi i64 [ %163, %503 ], [ -9223372036854775808, %494 ], [ %502, %496 ]
  %508 = phi i32 [ %505, %503 ], [ %495, %494 ], [ %78, %496 ]
  %509 = zext i16 %10 to i32
  %510 = add nuw nsw i32 %508, %509
  %511 = insertvalue { i64, i16 } poison, i64 %507, 0
  br label %roundAndPackFloatx80.exit

roundAndPackFloatx80.exit:                        ; preds = %506, %478, %403, %398, %337, %317
  %512 = phi { i64, i16 } [ %402, %398 ], [ { i64 -9223372036854775808, i16 poison }, %403 ], [ %483, %478 ], [ %511, %506 ], [ %331, %317 ], [ %355, %337 ]
  %513 = phi i32 [ %401, %398 ], [ %405, %403 ], [ %482, %478 ], [ %510, %506 ], [ %330, %317 ], [ %354, %337 ]
  %514 = trunc i32 %513 to i16
  %515 = extractvalue { i64, i16 } %512, 0
  br label %516

516:                                              ; preds = %roundAndPackFloatx80.exit, %60, %47, %44, %34, %31, %28, %24, %15
  %517 = phi i64 [ %17, %15 ], [ %26, %24 ], [ -4611686018427387904, %44 ], [ -9223372036854775808, %28 ], [ %36, %34 ], [ -9223372036854775808, %47 ], [ %515, %roundAndPackFloatx80.exit ], [ 0, %31 ], [ 0, %60 ]
  %518 = phi i16 [ %18, %15 ], [ %27, %24 ], [ -1, %44 ], [ %29, %28 ], [ %37, %34 ], [ %50, %47 ], [ %514, %roundAndPackFloatx80.exit ], [ %10, %31 ], [ %10, %60 ]
  %519 = insertvalue { i64, i16 } poison, i64 %517, 0
  %520 = insertvalue { i64, i16 } %519, i16 %518, 1
  ret { i64, i16 } %520
}
define internal fastcc void @helper_fdivr_STN_ST0() unnamed_addr  nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
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
  %13 = icmp ne i16 %12, 0
  %14 = icmp ne i64 %5, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %0
  %17 = load i16, i16* @fpus, align 4
  %18 = or i16 %17, 4
  store i16 %18, i16* @fpus, align 4
  %19 = load i16, i16* @fpuc, align 2
  %20 = and i16 %19, 63
  %21 = xor i16 %20, 63
  %22 = and i16 %21, %18
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = or i16 %17, -32636
  store i16 %25, i16* @fpus, align 4
  br label %26

26:                                               ; preds = %24, %16, %0
  %27 = tail call fastcc { i64, i16 } @floatx80_div(i64 %9, i16 %11, i64 %5, i16 %7)
  %28 = extractvalue { i64, i16 } %27, 0
  %29 = extractvalue { i64, i16 } %27, 1
  store i64 %28, i64* %4, align 16
  store i16 %29, i16* %6, align 8
  ret void
}
define internal fastcc i32 @helper_fnstcw() unnamed_addr  mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i16, i16* @fpuc, align 2
  %2 = zext i16 %1 to i32
  ret i32 %2
}
define internal fastcc void @helper_fldcw(i32 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = trunc i32 %0 to i16
  store i16 %2, i16* @fpuc, align 2
  %3 = lshr i32 %0, 10
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 3
  store i8 %5, i8* @fp_status.1, align 1
  %6 = lshr i16 %2, 8
  %7 = and i16 %6, 3
  %8 = icmp eq i16 %7, 2
  %9 = icmp eq i16 %7, 0
  %10 = select i1 %8, i8 64, i8 80
  %11 = select i1 %9, i8 32, i8 %10
  store i8 %11, i8* @fp_status.3, align 1
  ret void
}
define internal fastcc i32 @helper_fistl_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 32767
  %7 = zext i16 %6 to i32
  %8 = lshr i16 %5, 15
  %9 = trunc i16 %8 to i8
  %10 = icmp eq i16 %6, 32767
  %11 = and i64 %3, 9223372036854775807
  %12 = icmp eq i64 %11, 0
  %13 = select i1 %12, i8 %9, i8 0
  %14 = select i1 %10, i8 %13, i8 %9
  %15 = sub nsw i32 16439, %7
  %16 = icmp sgt i32 %15, 1
  %17 = select i1 %16, i32 %15, i32 1
  %18 = icmp ult i32 %17, 64
  br i1 %18, label %19, label %29

19:                                               ; preds = %0
  %20 = zext i32 %17 to i64
  %21 = lshr i64 %3, %20
  %22 = sub nsw i32 0, %17
  %23 = and i32 %22, 63
  %24 = zext i32 %23 to i64
  %25 = shl i64 %3, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = or i64 %21, %27
  br label %32

29:                                               ; preds = %0
  %30 = icmp ne i64 %3, 0
  %31 = zext i1 %30 to i64
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi i64 [ %28, %19 ], [ %31, %29 ]
  %34 = load i8, i8* @fp_status.1, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = icmp eq i8 %34, 3
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = icmp eq i8 %14, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = icmp eq i8 %34, 2
  %42 = select i1 %41, i64 0, i64 127
  br label %46

43:                                               ; preds = %38
  %44 = icmp eq i8 %34, 1
  %45 = select i1 %44, i64 0, i64 127
  br label %46

46:                                               ; preds = %43, %40, %36, %32
  %47 = phi i64 [ 64, %32 ], [ 0, %36 ], [ %42, %40 ], [ %45, %43 ]
  %48 = trunc i64 %33 to i8
  %49 = and i8 %48, 127
  %50 = add i64 %47, %33
  %51 = lshr i64 %50, 7
  %52 = icmp eq i8 %49, 64
  %53 = and i1 %35, %52
  %54 = zext i1 %53 to i64
  %55 = xor i64 %54, -1
  %56 = and i64 %51, %55
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i8 %14, 0
  %59 = sub nsw i32 0, %57
  %60 = select i1 %58, i32 %57, i32 %59
  %61 = icmp ult i64 %50, 549755813888
  br i1 %61, label %62, label %68

62:                                               ; preds = %46
  %63 = icmp eq i32 %60, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %62
  %65 = lshr i32 %60, 31
  %66 = zext i8 %14 to i32
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64, %46
  %69 = load i8, i8* @fp_status.2, align 1
  %70 = or i8 %69, 1
  store i8 %70, i8* @fp_status.2, align 1
  %71 = select i1 %58, i32 2147483647, i32 -2147483648
  br label %floatx80_to_int32.exit

72:                                               ; preds = %64, %62
  %73 = icmp eq i8 %49, 0
  br i1 %73, label %floatx80_to_int32.exit, label %74

74:                                               ; preds = %72
  %75 = load i8, i8* @fp_status.2, align 1
  %76 = or i8 %75, 32
  store i8 %76, i8* @fp_status.2, align 1
  br label %floatx80_to_int32.exit

floatx80_to_int32.exit:                           ; preds = %74, %72, %68
  %77 = phi i32 [ %71, %68 ], [ %60, %74 ], [ %60, %72 ]
  ret i32 %77
}
define internal fastcc void @typecast655(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !62 {
.exit:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i8.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i8.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i12.i = add i32 %tmp0_v.i3.i, -48
  %7 = inttoptr i32 %tmp2_v.i12.i to i32*
  store i32 5, i32* %7, align 16
  %tmp2_v1.i.i = add i32 %tmp0_v.i3.i, -44
  %8 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2, i32* %8, align 4
  %9 = load i32, i32* %7, align 16
  tail call fastcc void @helper_fildl_ST0(i32 %9)
  %10 = load i32, i32* %8, align 4
  tail call fastcc void @helper_fildl_ST0(i32 %10)
  tail call fastcc void @helper_fdiv_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp2_v8.i14.i = add i32 %tmp0_v.i3.i, -32
  %tmp5_v.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %11 = inttoptr i32 %tmp2_v8.i14.i to i64*
  store i64 %tmp5_v.i.i, i64* %11, align 16
  tail call fastcc void @helper_fpop()
  %12 = load i32, i32* %7, align 16
  %tmp0_v12.i.i = ashr i32 %12, 31
  %13 = load i32, i32* %8, align 4
  %14 = zext i32 %12 to i64
  %15 = zext i32 %tmp0_v12.i.i to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = icmp ne i32 %13, 0
  tail call void @llvm.assume(i1 %18)
  %19 = sext i32 %13 to i64
  %.frozen = freeze i64 %17
  %.frozen7 = freeze i64 %19
  %20 = sdiv i64 %.frozen, %.frozen7
  %21 = add i64 %20, 2147483648
  %22 = icmp ult i64 %21, 4294967296
  tail call void @llvm.assume(i1 %22)
  %23 = mul i64 %20, %.frozen7
  %.decomposed = sub i64 %.frozen, %23
  %24 = trunc i64 %20 to i32
  %25 = trunc i64 %.decomposed to i32
  store i32 %24, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i3.i, -72
  %27 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %7, align 16
  %tmp2_v22.i.i = add i32 %tmp0_v.i3.i, -76
  %29 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v25.i.i = add i32 %tmp0_v.i3.i, -80
  %30 = inttoptr i32 %tmp2_v25.i.i to i32*
;-------------------------------
; Replace: %spi.bis.653 = ptrtoint[14 x i8]* @str.bis.653 to i32
  %spi153 = alloca [14 x i8]

  
  %sp0.153 = bitcast [14 x i8]* %spi153 to [2 x i8]*
  store [2 x i8] c"\25\64", [2 x i8]* %sp0.153
  %next0.153 = getelementptr [14 x i8], [14 x i8]* %spi153, i32 0, i32 2
  
  %sp1.153 = bitcast i8* %next0.153 to [2 x i8]*
  store [2 x i8] c"\20\2f", [2 x i8]* %sp1.153
  %next1.153 = getelementptr [14 x i8], [14 x i8]* %spi153, i32 0, i32 4
  
  %sp2.153 = bitcast i8* %next1.153 to [2 x i8]*
  store [2 x i8] c"\20\25", [2 x i8]* %sp2.153
  %next2.153 = getelementptr [14 x i8], [14 x i8]* %spi153, i32 0, i32 6
  
  %sp3.153 = bitcast i8* %next2.153 to [2 x i8]*
  store [2 x i8] c"\64\20", [2 x i8]* %sp3.153
  %next3.153 = getelementptr [14 x i8], [14 x i8]* %spi153, i32 0, i32 8
  
  %sp4.153 = bitcast i8* %next3.153 to [2 x i8]*
  store [2 x i8] c"\3d\20", [2 x i8]* %sp4.153
  %next4.153 = getelementptr [14 x i8], [14 x i8]* %spi153, i32 0, i32 10
  
  %sp5.153 = bitcast i8* %next4.153 to [2 x i8]*
  store [2 x i8] c"\25\64", [2 x i8]* %sp5.153
  %next5.153 = getelementptr [14 x i8], [14 x i8]* %spi153, i32 0, i32 12
  
  %sp6.153 = bitcast i8* %next5.153 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.153
  %spi.bis.653 = ptrtoint[14 x i8]* %spi153 to i32
;-------------------------------
  store i32 %spi.bis.653, i32* %30, align 16
  %tmp2_v26.i.i = add i32 %tmp0_v.i3.i, -84
  %31 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 134517226, i32* %31, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %25, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !63
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  %tmp2_v.i.i = add i32 %tmp0_v.i3.i, -28
  %35 = inttoptr i32 %tmp2_v.i.i to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %30, align 16
  %37 = inttoptr i32 %tmp2_v8.i14.i to i32*
  %38 = load i32, i32* %37, align 16
  store i32 %38, i32* %31, align 4
  %39 = load i32, i32* %8, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -88
  %40 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %7, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -92
  %42 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %41, i32* %42, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i3.i, -96
  %43 = inttoptr i32 %tmp2_v14.i.i to i32*
;-------------------------------
; Replace: %spi.bis.652 = ptrtoint[14 x i8]* @str.bis.652 to i32
  %spi152 = alloca [14 x i8]

  
  %sp0.152 = bitcast [14 x i8]* %spi152 to [2 x i8]*
  store [2 x i8] c"\25\64", [2 x i8]* %sp0.152
  %next0.152 = getelementptr [14 x i8], [14 x i8]* %spi152, i32 0, i32 2
  
  %sp1.152 = bitcast i8* %next0.152 to [2 x i8]*
  store [2 x i8] c"\20\2f", [2 x i8]* %sp1.152
  %next1.152 = getelementptr [14 x i8], [14 x i8]* %spi152, i32 0, i32 4
  
  %sp2.152 = bitcast i8* %next1.152 to [2 x i8]*
  store [2 x i8] c"\20\25", [2 x i8]* %sp2.152
  %next2.152 = getelementptr [14 x i8], [14 x i8]* %spi152, i32 0, i32 6
  
  %sp3.152 = bitcast i8* %next2.152 to [2 x i8]*
  store [2 x i8] c"\64\20", [2 x i8]* %sp3.152
  %next3.152 = getelementptr [14 x i8], [14 x i8]* %spi152, i32 0, i32 8
  
  %sp4.152 = bitcast i8* %next3.152 to [2 x i8]*
  store [2 x i8] c"\3d\20", [2 x i8]* %sp4.152
  %next4.152 = getelementptr [14 x i8], [14 x i8]* %spi152, i32 0, i32 10
  
  %sp5.152 = bitcast i8* %next4.152 to [2 x i8]*
  store [2 x i8] c"\25\66", [2 x i8]* %sp5.152
  %next5.152 = getelementptr [14 x i8], [14 x i8]* %spi152, i32 0, i32 12
  
  %sp6.152 = bitcast i8* %next5.152 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.152
  %spi.bis.652 = ptrtoint[14 x i8]* %spi152 to i32
;-------------------------------
  store i32 %spi.bis.652, i32* %43, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -100
  %44 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517256, i32* %44, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %34, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !63
  %46 = lshr i64 %45, 32
  %47 = trunc i64 %46 to i32
  %tmp2_v.i23.i = add i32 %tmp0_v.i3.i, -40
  %48 = inttoptr i32 %tmp2_v.i23.i to i32*
  store i32 2, i32* %48, align 8
  %49 = load i64, i64* inttoptr (i32 134520880 to i64*), align 16
  tail call fastcc void @helper_fldl_ST0(i64 %49)
  %tmp2_v3.i27.i = add i32 %tmp0_v.i3.i, -24
  %tmp5_v4.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %50 = inttoptr i32 %tmp2_v3.i27.i to i64*
  store i64 %tmp5_v4.i.i, i64* %50, align 8
  tail call fastcc void @helper_fpop()
  %51 = load i32, i32* %48, align 8
  tail call fastcc void @helper_fildl_ST0(i32 %51)
  %52 = load i64, i64* %50, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %52)
  tail call fastcc void @helper_fdivr_STN_ST0()
  tail call fastcc void @helper_fpop()
  %tmp2_v12.i31.i = add i32 %tmp0_v.i3.i, -50
  %tmp6_v.i.i = tail call fastcc i32 @helper_fnstcw()
  %53 = trunc i32 %tmp6_v.i.i to i16
  %54 = inttoptr i32 %tmp2_v12.i31.i to i16*
  store i16 %53, i16* %54, align 2
  %tmp0_v17.i.i = and i32 %tmp6_v.i.i, 62463
  %eax_v.i33.i = or i32 %tmp0_v17.i.i, 3072
  %tmp2_v18.i.i = add i32 %tmp0_v.i3.i, -52
  %55 = trunc i32 %eax_v.i33.i to i16
  %56 = inttoptr i32 %tmp2_v18.i.i to i16*
  store i16 %55, i16* %56, align 4
  tail call fastcc void @helper_fldcw(i32 %eax_v.i33.i)
  %tmp2_v22.i35.i = add i32 %tmp0_v.i3.i, -36
  %tmp6_v23.i.i = tail call fastcc i32 @helper_fistl_ST0()
  %57 = inttoptr i32 %tmp2_v22.i35.i to i32*
  store i32 %tmp6_v23.i.i, i32* %57, align 4
  tail call fastcc void @helper_fpop()
  %58 = load i16, i16* %54, align 2
  %tmp0_v26.i.i = zext i16 %58 to i32
  tail call fastcc void @helper_fldcw(i32 %tmp0_v26.i.i)
  %59 = load i32, i32* %57, align 4
  store i32 %59, i32* %29, align 4
;-------------------------------
; Replace: %spi.bis.651 = ptrtoint[7 x i8]* @str.bis.651 to i32
  %spi151 = alloca [7 x i8]

  
  %sp0.151 = bitcast [7 x i8]* %spi151 to [1 x i8]*
  store [1 x i8] c"\7a", [1 x i8]* %sp0.151
  %next0.151 = getelementptr [7 x i8], [7 x i8]* %spi151, i32 0, i32 1
  
  %sp1.151 = bitcast i8* %next0.151 to [1 x i8]*
  store [1 x i8] c"\3a", [1 x i8]* %sp1.151
  %next1.151 = getelementptr [7 x i8], [7 x i8]* %spi151, i32 0, i32 2
  
  %sp2.151 = bitcast i8* %next1.151 to [1 x i8]*
  store [1 x i8] c"\20", [1 x i8]* %sp2.151
  %next2.151 = getelementptr [7 x i8], [7 x i8]* %spi151, i32 0, i32 3
  
  %sp3.151 = bitcast i8* %next2.151 to [1 x i8]*
  store [1 x i8] c"\25", [1 x i8]* %sp3.151
  %next3.151 = getelementptr [7 x i8], [7 x i8]* %spi151, i32 0, i32 4
  
  %sp4.151 = bitcast i8* %next3.151 to [1 x i8]*
  store [1 x i8] c"\64", [1 x i8]* %sp4.151
  %next4.151 = getelementptr [7 x i8], [7 x i8]* %spi151, i32 0, i32 5
  
  %sp5.151 = bitcast i8* %next4.151 to [1 x i8]*
  store [1 x i8] c"\0a", [1 x i8]* %sp5.151
  %next5.151 = getelementptr [7 x i8], [7 x i8]* %spi151, i32 0, i32 6
  
  %sp6.151 = bitcast i8* %next5.151 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp6.151
  %spi.bis.651 = ptrtoint[7 x i8]* %spi151 to i32
;-------------------------------
  store i32 %spi.bis.651, i32* %30, align 16
  store i32 134517324, i32* %31, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %47, i32 noundef %tmp2_v25.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !63
  ret void
}
define internal fastcc void @helper_flds_ST0(i32 noundef %0) unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %2 = load i32, i32* @fpstt, align 16
  %3 = add i32 %2, 7
  %4 = and i32 %3, 7
  %5 = and i32 %0, 8388607
  %6 = lshr i32 %0, 23
  %7 = and i32 %6, 255
  %8 = lshr i32 %0, 31
  %9 = trunc i32 %6 to i8
  switch i8 %9, label %47 [
    i8 -1, label %10
    i8 0, label %37
  ]

10:                                               ; preds = %1
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %10
  %13 = and i32 %0, 2143289344
  %14 = icmp ne i32 %13, 2139095040
  %15 = and i32 %0, 4194303
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !20
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !20
  br label %21

21:                                               ; preds = %18, %12
  %22 = zext i32 %0 to i64
  %23 = shl i64 %22, 41
  %24 = icmp eq i64 %23, 0
  %25 = lshr exact i64 %23, 1
  %26 = or i64 %25, -9223372036854775808
  %27 = trunc i32 %8 to i16
  %28 = shl nuw i16 %27, 15
  %29 = or i16 %28, 32767
  %30 = select i1 %24, i64 -4611686018427387904, i64 %26
  %31 = select i1 %24, i16 -1, i16 %29
  %32 = insertvalue { i64, i16 } poison, i64 %30, 0
  br label %float32_to_floatx80.exit

33:                                               ; preds = %10
  %34 = shl nuw nsw i32 %8, 15
  %35 = trunc i32 %34 to i16
  %36 = or i16 %35, 32767
  br label %float32_to_floatx80.exit

37:                                               ; preds = %1
  %38 = icmp eq i32 %5, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %8, 15
  %41 = trunc i32 %40 to i16
  br label %float32_to_floatx80.exit

42:                                               ; preds = %37
  %ctlz.sh.i = lshr i32 %5, 1
  %ctlz.step.i = or i32 %ctlz.sh.i, %5
  %ctlz.sh1.i = lshr i32 %ctlz.step.i, 2
  %ctlz.step2.i = or i32 %ctlz.sh1.i, %ctlz.step.i
  %ctlz.sh3.i = lshr i32 %ctlz.step2.i, 4
  %ctlz.step4.i = or i32 %ctlz.sh3.i, %ctlz.step2.i
  %ctlz.sh5.i = lshr i32 %ctlz.step4.i, 8
  %ctlz.step6.i = or i32 %ctlz.sh5.i, %ctlz.step4.i
  %ctlz.sh7.i = lshr i32 %ctlz.step6.i, 16
  %ctlz.step8.i = or i32 %ctlz.sh7.i, %ctlz.step6.i
  %43 = xor i32 %ctlz.step8.i, -1
  %cppop.and1.i = and i32 %43, 1431655765
  %ctpop.sh.i = lshr i32 %43, 1
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
  %44 = add nsw i32 %ctpop.step24.i, -8
  %45 = shl i32 %5, %44
  %46 = sub nsw i32 9, %ctpop.step24.i
  br label %47

47:                                               ; preds = %42, %1
  %48 = phi i32 [ %5, %1 ], [ %45, %42 ]
  %49 = phi i32 [ %7, %1 ], [ %46, %42 ]
  %50 = or i32 %48, 8388608
  %51 = zext i32 %50 to i64
  %52 = shl i64 %51, 40
  %53 = shl nuw nsw i32 %8, 15
  %54 = or i32 %53, 16256
  %55 = add nsw i32 %54, %49
  %56 = trunc i32 %55 to i16
  %57 = insertvalue { i64, i16 } poison, i64 %52, 0
  br label %float32_to_floatx80.exit

float32_to_floatx80.exit:                         ; preds = %47, %39, %33, %21
  %58 = phi { i64, i16 } [ %32, %21 ], [ { i64 -9223372036854775808, i16 poison }, %33 ], [ { i64 0, i16 poison }, %39 ], [ %57, %47 ]
  %59 = phi i16 [ %31, %21 ], [ %36, %33 ], [ %41, %39 ], [ %56, %47 ]
  %60 = extractvalue { i64, i16 } %58, 0
  %61 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 0
  store i64 %60, i64* %61, align 16
  %62 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %4, i32 0, i32 1
  store i16 %59, i16* %62, align 8
  store i32 %4, i32* @fpstt, align 16
  ret void
}
define internal fastcc i32 @helper_fsts_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 32767
  %7 = lshr i16 %5, 15
  %8 = icmp eq i16 %6, 32767
  br i1 %8, label %9, label %38

9:                                                ; preds = %0
  %10 = and i64 %3, 9223372036854775807
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %9
  %13 = and i64 %3, -4611686018427387905
  %14 = and i64 %3, 4611686018427387903
  %15 = icmp eq i64 %14, 0
  %16 = icmp ne i64 %13, %3
  %17 = or i1 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !26
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !26
  br label %21

21:                                               ; preds = %18, %12
  %22 = icmp sgt i64 %3, -1
  %23 = shl i64 %3, 1
  %24 = select i1 %22, i64 -9223372036854775808, i64 %23
  %25 = lshr i64 %24, 41
  %26 = icmp ult i64 %24, 2199023255552
  %27 = zext i16 %7 to i64
  %28 = shl nuw nsw i64 %27, 31
  %29 = select i1 %22, i64 2147483648, i64 %28
  %30 = or i64 %29, %25
  %31 = trunc i64 %30 to i32
  %32 = or i32 %31, 2139095040
  %33 = select i1 %26, i32 -4194304, i32 %32
  br label %floatx80_to_float32.exit

34:                                               ; preds = %9
  %35 = zext i16 %7 to i32
  %36 = shl nuw i32 %35, 31
  %37 = or i32 %36, 2139095040
  br label %floatx80_to_float32.exit

38:                                               ; preds = %0
  %39 = zext i16 %7 to i32
  %40 = zext i16 %6 to i32
  %41 = lshr i64 %3, 33
  %42 = and i64 %3, 8589934591
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = or i64 %41, %44
  %46 = icmp ne i16 %6, 0
  %47 = icmp ne i64 %45, 0
  %48 = select i1 %46, i1 true, i1 %47
  %49 = add nsw i32 %40, -16257
  %50 = select i1 %48, i32 %49, i32 0
  %51 = trunc i64 %45 to i32
  %52 = trunc i64 %45 to i8
  %53 = and i8 %52, 127
  %54 = and i32 %50, 65535
  %55 = icmp ugt i32 %54, 252
  br i1 %55, label %56, label %95

56:                                               ; preds = %38
  %57 = icmp sgt i32 %50, 253
  br i1 %57, label %63, label %58

58:                                               ; preds = %56
  %59 = icmp eq i32 %50, 253
  %60 = add nuw i32 %51, 64
  %61 = icmp slt i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %68

63:                                               ; preds = %58, %56
  %64 = load i8, i8* @fp_status.2, align 1
  %65 = or i8 %64, 40
  store i8 %65, i8* @fp_status.2, align 1
  %66 = shl nuw i32 %39, 31
  %67 = or i32 %66, 2139095040
  br label %floatx80_to_float32.exit

68:                                               ; preds = %58
  %69 = icmp slt i32 %50, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %68
  %71 = icmp ne i32 %50, -1
  %72 = icmp sgt i32 %60, -1
  %73 = select i1 %71, i1 true, i1 %72
  %74 = sub nsw i32 0, %50
  %75 = icmp ult i32 %74, 32
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = lshr i32 %51, %74
  %78 = and i32 %50, 31
  %79 = shl i32 %51, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = or i32 %77, %81
  br label %86

83:                                               ; preds = %70
  %84 = icmp ne i32 %51, 0
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi i32 [ %82, %76 ], [ %85, %83 ]
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 127
  %90 = icmp ne i8 %89, 0
  %91 = select i1 %73, i1 %90, i1 false
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i8, i8* @fp_status.2, align 1
  %94 = or i8 %93, 16
  br label %102

95:                                               ; preds = %86, %68, %38
  %96 = phi i32 [ %87, %86 ], [ %51, %68 ], [ %51, %38 ]
  %97 = phi i32 [ 0, %86 ], [ %50, %68 ], [ %50, %38 ]
  %98 = phi i8 [ %89, %86 ], [ %53, %68 ], [ %53, %38 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load i8, i8* @fp_status.2, align 1
  br label %102

102:                                              ; preds = %100, %92
  %103 = phi i8 [ %94, %92 ], [ %101, %100 ]
  %104 = phi i8 [ %89, %92 ], [ %98, %100 ]
  %105 = phi i32 [ 0, %92 ], [ %97, %100 ]
  %106 = phi i32 [ %87, %92 ], [ %96, %100 ]
  %107 = or i8 %103, 32
  store i8 %107, i8* @fp_status.2, align 1
  br label %108

108:                                              ; preds = %102, %95
  %109 = phi i8 [ %104, %102 ], [ 0, %95 ]
  %110 = phi i32 [ %105, %102 ], [ %97, %95 ]
  %111 = phi i32 [ %106, %102 ], [ %96, %95 ]
  %112 = add i32 %111, 64
  %113 = lshr i32 %112, 7
  %114 = icmp eq i8 %109, 64
  %115 = zext i1 %114 to i32
  %116 = xor i32 %115, -1
  %117 = and i32 %113, %116
  %118 = icmp eq i32 %117, 0
  %119 = shl nuw i32 %39, 31
  %120 = shl i32 %110, 23
  %121 = select i1 %118, i32 0, i32 %120
  %122 = or i32 %117, %119
  %123 = add i32 %122, %121
  br label %floatx80_to_float32.exit

floatx80_to_float32.exit:                         ; preds = %108, %63, %34, %21
  %124 = phi i32 [ %33, %21 ], [ %37, %34 ], [ %67, %63 ], [ %123, %108 ]
  ret i32 %124
}
define internal fastcc void @helper_fpop() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  store i32 %3, i32* @fpstt, align 16
  ret void
}
define internal fastcc void @helper_fpush() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 7
  %3 = and i32 %2, 7
  store i32 %3, i32* @fpstt, align 16
  ret void
}
define internal fastcc void @helper_fld1_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  store i64 -9223372036854775808, i64* %2, align 16
  %3 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  store i16 16383, i16* %3, align 8
  ret void
}
define internal fastcc void @helper_fldz_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  store i64 0, i64* %2, align 16
  %3 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  store i16 0, i16* %3, align 8
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
define internal fastcc void @helper_fadd_STN_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
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
  %12 = lshr i16 %7, 15
  %13 = trunc i16 %12 to i8
  %14 = lshr i16 %11, 15
  %15 = trunc i16 %14 to i8
  %16 = icmp eq i8 %13, %15
  %17 = and i16 %7, 32767
  %18 = zext i16 %17 to i32
  %19 = and i16 %11, 32767
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 %18, %20
  %22 = icmp sgt i32 %21, 0
  br i1 %16, label %23, label %127

23:                                               ; preds = %0
  br i1 %22, label %24, label %52

24:                                               ; preds = %23
  %25 = icmp eq i16 %17, 32767
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = and i64 %5, 9223372036854775807
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %floatx80_add.exit, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %31 = extractvalue { i64, i16 } %30, 0
  %32 = extractvalue { i64, i16 } %30, 1
  br label %floatx80_add.exit

33:                                               ; preds = %24
  %34 = icmp eq i16 %19, 0
  %35 = sext i1 %34 to i32
  %36 = add nsw i32 %21, %35
  %37 = sub nsw i32 0, %36
  %38 = and i32 %37, 63
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %102, label %40

40:                                               ; preds = %33
  %41 = icmp ult i32 %36, 64
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = zext i32 %38 to i64
  %44 = shl i64 %9, %43
  %45 = zext i32 %36 to i64
  %46 = lshr i64 %9, %45
  br label %102

47:                                               ; preds = %40
  %48 = icmp eq i32 %36, 64
  br i1 %48, label %102, label %49

49:                                               ; preds = %47
  %50 = icmp ne i64 %9, 0
  %51 = zext i1 %50 to i64
  br label %102

52:                                               ; preds = %23
  %53 = icmp slt i32 %21, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %52
  %55 = icmp eq i16 %19, 32767
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = and i64 %9, 9223372036854775807
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %61 = extractvalue { i64, i16 } %60, 0
  %62 = extractvalue { i64, i16 } %60, 1
  br label %floatx80_add.exit

63:                                               ; preds = %56
  %64 = or i16 %7, 32767
  br label %floatx80_add.exit

65:                                               ; preds = %54
  %66 = icmp eq i16 %17, 0
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %21, %67
  %69 = sub nsw i32 0, %68
  %70 = and i32 %68, 63
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %65
  %73 = icmp ult i32 %69, 64
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = zext i32 %70 to i64
  %76 = shl i64 %5, %75
  %77 = zext i32 %69 to i64
  %78 = lshr i64 %5, %77
  br label %102

79:                                               ; preds = %72
  %80 = icmp eq i32 %68, -64
  br i1 %80, label %102, label %81

81:                                               ; preds = %79
  %82 = icmp ne i64 %5, 0
  %83 = zext i1 %82 to i64
  br label %102

84:                                               ; preds = %52
  %85 = icmp eq i16 %17, 32767
  br i1 %85, label %86, label %94

86:                                               ; preds = %84
  %87 = or i64 %9, %5
  %88 = and i64 %87, 9223372036854775807
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %floatx80_add.exit, label %90

90:                                               ; preds = %86
  %91 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %92 = extractvalue { i64, i16 } %91, 0
  %93 = extractvalue { i64, i16 } %91, 1
  br label %floatx80_add.exit

94:                                               ; preds = %84
  %95 = add i64 %9, %5
  %96 = icmp eq i16 %17, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %ctlz.sh.i.i = lshr i64 %95, 1
  %ctlz.step.i.i = or i64 %ctlz.sh.i.i, %95
  %ctlz.sh1.i.i = lshr i64 %ctlz.step.i.i, 2
  %ctlz.step2.i.i = or i64 %ctlz.sh1.i.i, %ctlz.step.i.i
  %ctlz.sh3.i.i = lshr i64 %ctlz.step2.i.i, 4
  %ctlz.step4.i.i = or i64 %ctlz.sh3.i.i, %ctlz.step2.i.i
  %ctlz.sh5.i.i = lshr i64 %ctlz.step4.i.i, 8
  %ctlz.step6.i.i = or i64 %ctlz.sh5.i.i, %ctlz.step4.i.i
  %ctlz.sh7.i.i = lshr i64 %ctlz.step6.i.i, 16
  %ctlz.step8.i.i = or i64 %ctlz.sh7.i.i, %ctlz.step6.i.i
  %ctlz.sh9.i.i = lshr i64 %ctlz.step8.i.i, 32
  %ctlz.step10.i.i = or i64 %ctlz.sh9.i.i, %ctlz.step8.i.i
  %98 = xor i64 %ctlz.step10.i.i, -1
  %cppop.and1.i.i = and i64 %98, 6148914691236517205
  %ctpop.sh.i.i = lshr i64 %98, 1
  %cppop.and2.i.i = and i64 %ctpop.sh.i.i, 6148914691236517205
  %ctpop.step.i.i = add nuw i64 %cppop.and2.i.i, %cppop.and1.i.i
  %cppop.and111.i.i = and i64 %ctpop.step.i.i, 3689348814741910323
  %ctpop.sh12.i.i = lshr i64 %ctpop.step.i.i, 2
  %cppop.and213.i.i = and i64 %ctpop.sh12.i.i, 3689348814741910323
  %ctpop.step14.i.i = add nuw nsw i64 %cppop.and213.i.i, %cppop.and111.i.i
  %cppop.and115.i.i = and i64 %ctpop.step14.i.i, 506381209866536711
  %ctpop.sh16.i.i = lshr i64 %ctpop.step14.i.i, 4
  %cppop.and217.i.i = and i64 %ctpop.sh16.i.i, 506381209866536711
  %ctpop.step18.i.i = add nuw nsw i64 %cppop.and217.i.i, %cppop.and115.i.i
  %cppop.and119.i.i = and i64 %ctpop.step18.i.i, 4222189076152335
  %ctpop.sh20.i.i = lshr i64 %ctpop.step18.i.i, 8
  %cppop.and221.i.i = and i64 %ctpop.sh20.i.i, 4222189076152335
  %ctpop.step22.i.i = add nuw nsw i64 %cppop.and221.i.i, %cppop.and119.i.i
  %cppop.and123.i.i = and i64 %ctpop.step22.i.i, 133143986207
  %ctpop.sh24.i.i = lshr i64 %ctpop.step22.i.i, 16
  %cppop.and225.i.i = and i64 %ctpop.sh24.i.i, 133143986207
  %ctpop.step26.i.i = add nuw nsw i64 %cppop.and225.i.i, %cppop.and123.i.i
  %cppop.and127.i.i = and i64 %ctpop.step26.i.i, 63
  %ctpop.sh28.i.i = lshr i64 %ctpop.step26.i.i, 32
  %ctpop.step30.i.i = add nuw nsw i64 %cppop.and127.i.i, %ctpop.sh28.i.i
  %99 = trunc i64 %ctpop.step30.i.i to i32
  %100 = shl i64 %95, %ctpop.step30.i.i
  %101 = sub nsw i32 1, %99
  br label %120

102:                                              ; preds = %81, %79, %74, %65, %49, %47, %42, %33
  %103 = phi i64 [ %5, %47 ], [ %5, %33 ], [ %5, %42 ], [ %5, %49 ], [ %78, %74 ], [ %5, %65 ], [ 0, %81 ], [ 0, %79 ]
  %104 = phi i64 [ 0, %47 ], [ %9, %33 ], [ %46, %42 ], [ 0, %49 ], [ %9, %74 ], [ %9, %65 ], [ %9, %81 ], [ %9, %79 ]
  %105 = phi i64 [ %9, %47 ], [ 0, %33 ], [ %44, %42 ], [ %51, %49 ], [ %76, %74 ], [ 0, %65 ], [ %83, %81 ], [ %5, %79 ]
  %106 = phi i32 [ %18, %47 ], [ %18, %33 ], [ %18, %42 ], [ %18, %49 ], [ %20, %74 ], [ %20, %65 ], [ %20, %81 ], [ %20, %79 ]
  %107 = add i64 %104, %103
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %102, %94
  %110 = phi i32 [ %106, %102 ], [ %18, %94 ]
  %111 = phi i64 [ %107, %102 ], [ %95, %94 ]
  %112 = phi i64 [ %105, %102 ], [ 0, %94 ]
  %113 = shl i64 %111, 63
  %114 = icmp ne i64 %112, 0
  %115 = zext i1 %114 to i64
  %116 = or i64 %113, %115
  %117 = lshr i64 %111, 1
  %118 = or i64 %117, -9223372036854775808
  %119 = add nuw nsw i32 %110, 1
  br label %120

120:                                              ; preds = %109, %102, %97
  %121 = phi i32 [ %106, %102 ], [ %119, %109 ], [ %101, %97 ]
  %122 = phi i64 [ %107, %102 ], [ %118, %109 ], [ %100, %97 ]
  %123 = phi i64 [ %105, %102 ], [ %116, %109 ], [ 0, %97 ]
  %124 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %13, i32 noundef %121, i64 noundef %122, i64 noundef %123)  nounwind 
  %125 = extractvalue { i64, i16 } %124, 0
  %126 = extractvalue { i64, i16 } %124, 1
  br label %floatx80_add.exit

127:                                              ; preds = %0
  br i1 %22, label %202, label %128

128:                                              ; preds = %127
  %129 = icmp slt i32 %21, 0
  br i1 %129, label %149, label %130

130:                                              ; preds = %128
  switch i32 %18, label %143 [
    i32 32767, label %131
    i32 0, label %142
  ]

131:                                              ; preds = %130
  %132 = or i64 %9, %5
  %133 = and i64 %132, 9223372036854775807
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %137 = extractvalue { i64, i16 } %136, 0
  %138 = extractvalue { i64, i16 } %136, 1
  br label %floatx80_add.exit

139:                                              ; preds = %131
  %140 = load i8, i8* @fp_status.2, align 1
  %141 = or i8 %140, 1
  store i8 %141, i8* @fp_status.2, align 1
  br label %floatx80_add.exit

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %130
  %144 = phi i32 [ 1, %142 ], [ %18, %130 ]
  %145 = phi i32 [ 1, %142 ], [ %20, %130 ]
  %146 = icmp ult i64 %9, %5
  br i1 %146, label %242, label %147

147:                                              ; preds = %143
  %148 = icmp ult i64 %5, %9
  br i1 %148, label %193, label %floatx80_add.exit

149:                                              ; preds = %128
  %150 = icmp eq i16 %19, 32767
  br i1 %150, label %151, label %162

151:                                              ; preds = %149
  %152 = and i64 %9, 9223372036854775807
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %156 = extractvalue { i64, i16 } %155, 0
  %157 = extractvalue { i64, i16 } %155, 1
  br label %floatx80_add.exit

158:                                              ; preds = %151
  %159 = xor i16 %12, -1
  %160 = shl i16 %159, 15
  %161 = or i16 %160, 32767
  br label %floatx80_add.exit

162:                                              ; preds = %149
  %163 = icmp eq i16 %17, 0
  %164 = sext i1 %163 to i32
  %165 = sub nsw i32 %164, %21
  %166 = trunc i32 %165 to i8
  %167 = sub i8 0, %166
  %168 = and i8 %167, 63
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %193, label %170

170:                                              ; preds = %162
  %171 = icmp ult i32 %165, 64
  br i1 %171, label %172, label %177

172:                                              ; preds = %170
  %173 = zext i8 %168 to i64
  %174 = shl i64 %5, %173
  %175 = zext i32 %165 to i64
  %176 = lshr i64 %5, %175
  br label %193

177:                                              ; preds = %170
  %178 = icmp eq i32 %165, 64
  br i1 %178, label %193, label %179

179:                                              ; preds = %177
  %180 = icmp ult i32 %165, 128
  br i1 %180, label %181, label %190

181:                                              ; preds = %179
  %182 = and i32 %165, 63
  %183 = zext i32 %182 to i64
  %184 = lshr i64 %5, %183
  %185 = zext i8 %168 to i64
  %186 = shl i64 %5, %185
  %187 = icmp ne i64 %186, 0
  %188 = zext i1 %187 to i64
  %189 = or i64 %184, %188
  br label %193

190:                                              ; preds = %179
  %191 = icmp ne i64 %5, 0
  %192 = zext i1 %191 to i64
  br label %193

193:                                              ; preds = %190, %181, %177, %172, %162, %147
  %194 = phi i64 [ %5, %147 ], [ %176, %172 ], [ %5, %162 ], [ 0, %181 ], [ 0, %190 ], [ 0, %177 ]
  %195 = phi i64 [ 0, %147 ], [ %174, %172 ], [ 0, %162 ], [ %189, %181 ], [ %192, %190 ], [ %5, %177 ]
  %196 = phi i32 [ %145, %147 ], [ %20, %172 ], [ %20, %162 ], [ %20, %181 ], [ %20, %190 ], [ %20, %177 ]
  %197 = sub i64 %9, %194
  %198 = icmp ne i64 %195, 0
  %199 = sext i1 %198 to i64
  %200 = add i64 %197, %199
  %201 = xor i8 %13, 1
  br label %250

202:                                              ; preds = %127
  %203 = icmp eq i16 %17, 32767
  br i1 %203, label %204, label %211

204:                                              ; preds = %202
  %205 = and i64 %5, 9223372036854775807
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %floatx80_add.exit, label %207

207:                                              ; preds = %204
  %208 = tail call fastcc { i64, i16 } @propagateFloatx80NaN(i64 %5, i16 %7, i64 %9, i16 %11)  nounwind 
  %209 = extractvalue { i64, i16 } %208, 0
  %210 = extractvalue { i64, i16 } %208, 1
  br label %floatx80_add.exit

211:                                              ; preds = %202
  %212 = icmp eq i16 %19, 0
  %213 = sext i1 %212 to i32
  %214 = add nsw i32 %21, %213
  %215 = trunc i32 %214 to i8
  %216 = sub i8 0, %215
  %217 = and i8 %216, 63
  %218 = icmp eq i32 %214, 0
  br i1 %218, label %242, label %219

219:                                              ; preds = %211
  %220 = icmp ult i32 %214, 64
  br i1 %220, label %221, label %226

221:                                              ; preds = %219
  %222 = zext i8 %217 to i64
  %223 = shl i64 %9, %222
  %224 = zext i32 %214 to i64
  %225 = lshr i64 %9, %224
  br label %242

226:                                              ; preds = %219
  %227 = icmp eq i32 %214, 64
  br i1 %227, label %242, label %228

228:                                              ; preds = %226
  %229 = icmp ult i32 %214, 128
  br i1 %229, label %230, label %239

230:                                              ; preds = %228
  %231 = and i32 %214, 63
  %232 = zext i32 %231 to i64
  %233 = lshr i64 %9, %232
  %234 = zext i8 %217 to i64
  %235 = shl i64 %9, %234
  %236 = icmp ne i64 %235, 0
  %237 = zext i1 %236 to i64
  %238 = or i64 %233, %237
  br label %242

239:                                              ; preds = %228
  %240 = icmp ne i64 %9, 0
  %241 = zext i1 %240 to i64
  br label %242

242:                                              ; preds = %239, %230, %226, %221, %211, %143
  %243 = phi i64 [ %9, %143 ], [ %225, %221 ], [ %9, %211 ], [ 0, %230 ], [ 0, %239 ], [ 0, %226 ]
  %244 = phi i64 [ 0, %143 ], [ %223, %221 ], [ 0, %211 ], [ %238, %230 ], [ %241, %239 ], [ %9, %226 ]
  %245 = phi i32 [ %144, %143 ], [ %18, %221 ], [ %18, %211 ], [ %18, %230 ], [ %18, %239 ], [ %18, %226 ]
  %246 = sub i64 %5, %243
  %247 = icmp ne i64 %244, 0
  %248 = sext i1 %247 to i64
  %249 = add i64 %246, %248
  br label %250

250:                                              ; preds = %242, %193
  %251 = phi i64 [ %249, %242 ], [ %200, %193 ]
  %252 = phi i64 [ %244, %242 ], [ %195, %193 ]
  %253 = phi i8 [ %13, %242 ], [ %201, %193 ]
  %254 = phi i32 [ %245, %242 ], [ %196, %193 ]
  %255 = sub i64 0, %252
  %256 = icmp eq i64 %251, 0
  %257 = select i1 %256, i64 %255, i64 %251
  %258 = select i1 %256, i64 0, i64 %255
  %ctlz.sh.i1.i = lshr i64 %257, 1
  %ctlz.step.i2.i = or i64 %ctlz.sh.i1.i, %257
  %ctlz.sh1.i3.i = lshr i64 %ctlz.step.i2.i, 2
  %ctlz.step2.i4.i = or i64 %ctlz.sh1.i3.i, %ctlz.step.i2.i
  %ctlz.sh3.i5.i = lshr i64 %ctlz.step2.i4.i, 4
  %ctlz.step4.i6.i = or i64 %ctlz.sh3.i5.i, %ctlz.step2.i4.i
  %ctlz.sh5.i7.i = lshr i64 %ctlz.step4.i6.i, 8
  %ctlz.step6.i8.i = or i64 %ctlz.sh5.i7.i, %ctlz.step4.i6.i
  %ctlz.sh7.i9.i = lshr i64 %ctlz.step6.i8.i, 16
  %ctlz.step8.i10.i = or i64 %ctlz.sh7.i9.i, %ctlz.step6.i8.i
  %ctlz.sh9.i11.i = lshr i64 %ctlz.step8.i10.i, 32
  %ctlz.step10.i12.i = or i64 %ctlz.sh9.i11.i, %ctlz.step8.i10.i
  %259 = xor i64 %ctlz.step10.i12.i, -1
  %cppop.and1.i13.i = and i64 %259, 6148914691236517205
  %ctpop.sh.i14.i = lshr i64 %259, 1
  %cppop.and2.i15.i = and i64 %ctpop.sh.i14.i, 6148914691236517205
  %ctpop.step.i16.i = add nuw i64 %cppop.and2.i15.i, %cppop.and1.i13.i
  %cppop.and111.i17.i = and i64 %ctpop.step.i16.i, 3689348814741910323
  %ctpop.sh12.i18.i = lshr i64 %ctpop.step.i16.i, 2
  %cppop.and213.i19.i = and i64 %ctpop.sh12.i18.i, 3689348814741910323
  %ctpop.step14.i20.i = add nuw nsw i64 %cppop.and213.i19.i, %cppop.and111.i17.i
  %cppop.and115.i21.i = and i64 %ctpop.step14.i20.i, 506381209866536711
  %ctpop.sh16.i22.i = lshr i64 %ctpop.step14.i20.i, 4
  %cppop.and217.i23.i = and i64 %ctpop.sh16.i22.i, 506381209866536711
  %ctpop.step18.i24.i = add nuw nsw i64 %cppop.and217.i23.i, %cppop.and115.i21.i
  %cppop.and119.i25.i = and i64 %ctpop.step18.i24.i, 4222189076152335
  %ctpop.sh20.i26.i = lshr i64 %ctpop.step18.i24.i, 8
  %cppop.and221.i27.i = and i64 %ctpop.sh20.i26.i, 4222189076152335
  %ctpop.step22.i28.i = add nuw nsw i64 %cppop.and221.i27.i, %cppop.and119.i25.i
  %cppop.and123.i29.i = and i64 %ctpop.step22.i28.i, 133143986207
  %ctpop.sh24.i30.i = lshr i64 %ctpop.step22.i28.i, 16
  %cppop.and225.i31.i = and i64 %ctpop.sh24.i30.i, 133143986207
  %ctpop.step26.i32.i = add nuw nsw i64 %cppop.and225.i31.i, %cppop.and123.i29.i
  %cppop.and127.i33.i = and i64 %ctpop.step26.i32.i, 63
  %ctpop.sh28.i34.i = lshr i64 %ctpop.step26.i32.i, 32
  %ctpop.step30.i35.i = add nuw nsw i64 %cppop.and127.i33.i, %ctpop.sh28.i34.i
  %260 = trunc i64 %ctpop.step30.i35.i to i32
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %250
  %263 = shl i64 %257, %ctpop.step30.i35.i
  %264 = sub nsw i64 0, %ctpop.step30.i35.i
  %265 = and i64 %264, 63
  %266 = lshr i64 %258, %265
  %267 = or i64 %266, %263
  br label %268

268:                                              ; preds = %262, %250
  %269 = phi i64 [ %267, %262 ], [ %257, %250 ]
  %270 = shl i64 %258, %ctpop.step30.i35.i
  %271 = add nsw i32 %254, -64
  %272 = select i1 %256, i32 %271, i32 %254
  %273 = sub nsw i32 %272, %260
  %274 = tail call fastcc { i64, i16 } @roundAndPackFloatx80(i8 noundef signext 0, i8 noundef zeroext %253, i32 noundef %273, i64 noundef %269, i64 noundef %270)  nounwind 
  %275 = extractvalue { i64, i16 } %274, 0
  %276 = extractvalue { i64, i16 } %274, 1
  br label %floatx80_add.exit

floatx80_add.exit:                                ; preds = %268, %207, %204, %158, %154, %147, %139, %135, %120, %90, %86, %63, %59, %29, %26
  %.pn38.i = phi i64 [ %31, %29 ], [ %125, %120 ], [ %61, %59 ], [ -9223372036854775808, %63 ], [ %92, %90 ], [ %5, %26 ], [ %5, %86 ], [ %209, %207 ], [ %275, %268 ], [ %156, %154 ], [ -9223372036854775808, %158 ], [ %137, %135 ], [ -4611686018427387904, %139 ], [ %5, %204 ], [ 0, %147 ]
  %.pn36.i = phi i16 [ %32, %29 ], [ %126, %120 ], [ %62, %59 ], [ %64, %63 ], [ %93, %90 ], [ %7, %26 ], [ %7, %86 ], [ %210, %207 ], [ %276, %268 ], [ %157, %154 ], [ %161, %158 ], [ %138, %135 ], [ -1, %139 ], [ %7, %204 ], [ 0, %147 ]
  store i64 %.pn38.i, i64* %4, align 16
  store i16 %.pn36.i, i16* %6, align 8
  ret void
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
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !29
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !29
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
define internal fastcc void @dot_product467(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !38 {
.exit:
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i24.i = add i32 %tmp0_v.i23.i, -4
  %2 = inttoptr i32 %tmp2_v3.i24.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i23.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i23.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i23.i, -16
  %5 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 %tmp2_v.i22.i, i32* %5, align 16
  %tmp2_v8.i28.i = add i32 %tmp0_v.i23.i, -52
  %6 = inttoptr i32 %tmp2_v8.i28.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i23.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* inttoptr (i32 134520852 to i32*), align 4
  tail call fastcc void @helper_flds_ST0(i32 %10)
  %tmp2_v1.i.i = add i32 %tmp0_v.i23.i, -44
  %tmp6_v.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %11 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %tmp6_v.i.i, i32* %11, align 4
  tail call fastcc void @helper_fpop()
  %12 = load i32, i32* inttoptr (i32 134520856 to i32*), align 8
  tail call fastcc void @helper_flds_ST0(i32 %12)
  %tmp2_v6.i.i = add i32 %tmp0_v.i23.i, -40
  %tmp6_v7.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp6_v7.i.i, i32* %13, align 8
  tail call fastcc void @helper_fpop()
  %14 = load i32, i32* inttoptr (i32 134520860 to i32*), align 4
  tail call fastcc void @helper_flds_ST0(i32 %14)
  %tmp2_v12.i.i = add i32 %tmp0_v.i23.i, -36
  %tmp6_v13.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %15 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp6_v13.i.i, i32* %15, align 4
  tail call fastcc void @helper_fpop()
  %16 = load i32, i32* inttoptr (i32 134520864 to i32*), align 32
  tail call fastcc void @helper_flds_ST0(i32 %16)
  %tmp2_v18.i.i = add i32 %tmp0_v.i23.i, -32
  %tmp6_v19.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %17 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 %tmp6_v19.i.i, i32* %17, align 16
  tail call fastcc void @helper_fpop()
  %18 = load i32, i32* inttoptr (i32 134520852 to i32*), align 4
  tail call fastcc void @helper_flds_ST0(i32 %18)
  %tmp2_v24.i.i = add i32 %tmp0_v.i23.i, -28
  %tmp6_v25.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %19 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 %tmp6_v25.i.i, i32* %19, align 4
  tail call fastcc void @helper_fpop()
  tail call fastcc void @helper_fpush()
  tail call fastcc void @helper_fld1_ST0()
  %tmp2_v27.i.i = add i32 %tmp0_v.i23.i, -24
  %tmp6_v28.i.i = tail call fastcc i32 @helper_fsts_ST0()
  %20 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 %tmp6_v28.i.i, i32* %20, align 8
  tail call fastcc void @helper_fpop()
  %tmp2_v30.i.i = add i32 %tmp0_v.i23.i, -56
  %21 = inttoptr i32 %tmp2_v30.i.i to i32*
  store i32 3, i32* %21, align 8
  %tmp2_v33.i.i = add i32 %tmp0_v.i23.i, -60
  %22 = inttoptr i32 %tmp2_v33.i.i to i32*
  store i32 %tmp2_v18.i.i, i32* %22, align 4
  %tmp2_v35.i.i = add i32 %tmp0_v.i23.i, -64
  %23 = inttoptr i32 %tmp2_v35.i.i to i32*
  store i32 %tmp2_v1.i.i, i32* %23, align 16
  %tmp2_v36.i.i = add i32 %tmp0_v.i23.i, -68
  %24 = inttoptr i32 %tmp2_v36.i.i to i32*
  store i32 134517286, i32* %24, align 4
  %tmp2_v.i19.i.i = add i32 %tmp0_v.i23.i, -72
  %25 = inttoptr i32 %tmp2_v.i19.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %25, align 8
  %tmp2_v1.i22.i.i = add i32 %tmp0_v.i23.i, -92
  %26 = inttoptr i32 %tmp2_v1.i22.i.i to i32*
  store i32 134517367, i32* %26, align 4
  tail call fastcc void @helper_fpush()  nounwind 
  tail call fastcc void @helper_fldz_ST0()  nounwind 
  %tmp2_v.i.i.i = add i32 %tmp0_v.i23.i, -80
  %tmp6_v.i.i.i = tail call fastcc i32 @helper_fsts_ST0()  nounwind 
  %27 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp6_v.i.i.i, i32* %27, align 16
  tail call fastcc void @helper_fpop()  nounwind 
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i23.i, -76
  %28 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %21, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_804928A.i.i, label %Func_dot_product.exit

BB_804928A.i.i:                                   ; preds = %BB_804928A.i.i, %.exit
  %storemerge1.i = phi i32 [ %tmp0_v21.i.i.i, %BB_804928A.i.i ], [ 0, %.exit ]
  %tmp4_v.i8.i.i = shl i32 %storemerge1.i, 2
  %31 = load i32, i32* %23, align 16
  %tmp0_v3.i10.i.i = add i32 %31, %tmp4_v.i8.i.i
  %32 = inttoptr i32 %tmp0_v3.i10.i.i to i32*
  %33 = load i32, i32* %32, align 4
  tail call fastcc void @helper_flds_ST0(i32 %33)  nounwind 
  %34 = load i32, i32* %28, align 4
  %tmp4_v8.i.i.i = shl i32 %34, 2
  %35 = load i32, i32* %22, align 4
  %tmp0_v11.i.i.i = add i32 %35, %tmp4_v8.i.i.i
  %36 = inttoptr i32 %tmp0_v11.i.i.i to i32*
  %37 = load i32, i32* %36, align 4
  tail call fastcc void @helper_flds_ST0(i32 %37)  nounwind 
  tail call fastcc void @helper_fmul_STN_ST0()  nounwind 
  tail call fastcc void @helper_fpop()  nounwind 
  %38 = load i32, i32* %27, align 16
  tail call fastcc void @helper_flds_ST0(i32 %38)  nounwind 
  tail call fastcc void @helper_fadd_STN_ST0()  nounwind 
  tail call fastcc void @helper_fpop()  nounwind 
  %tmp6_v.i11.i.i = tail call fastcc i32 @helper_fsts_ST0()  nounwind 
  store i32 %tmp6_v.i11.i.i, i32* %27, align 16
  tail call fastcc void @helper_fpop()  nounwind 
  %39 = load i32, i32* %28, align 4
  %tmp0_v21.i.i.i = add i32 %39, 1
  store i32 %tmp0_v21.i.i.i, i32* %28, align 4
  %40 = load i32, i32* %21, align 8
  %41 = icmp slt i32 %tmp0_v21.i.i.i, %40
  br i1 %41, label %BB_804928A.i.i, label %Func_dot_product.exit

Func_dot_product.exit:                            ; preds = %BB_804928A.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %tmp4_v8.i.i.i, %BB_804928A.i.i ]
  %42 = load i32, i32* %27, align 16
  tail call fastcc void @helper_flds_ST0(i32 %42)  nounwind 
  %43 = load i32, i32* %25, align 8
  %tmp2_v.i39.i = add i32 %43, -40
  %tmp6_v.i40.i = tail call fastcc i32 @helper_fsts_ST0()
  %44 = inttoptr i32 %tmp2_v.i39.i to i32*
  store i32 %tmp6_v.i40.i, i32* %44, align 4
  tail call fastcc void @helper_fpop()
  %45 = load i32, i32* %44, align 4
  tail call fastcc void @helper_flds_ST0(i32 %45)
  %tmp5_v.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %46 = inttoptr i32 %tmp2_v33.i.i to i64*
  store i64 %tmp5_v.i.i, i64* %46, align 4
  tail call fastcc void @helper_fpop()
;-------------------------------
; Replace: %spi.bis.465 = ptrtoint[12 x i8]* @str.bis.465 to i32
  %spi154 = alloca [12 x i8]

  
  %sp0.154 = bitcast [12 x i8]* %spi154 to [1 x i8]*
  store [1 x i8] c"\52", [1 x i8]* %sp0.154
  %next0.154 = getelementptr [12 x i8], [12 x i8]* %spi154, i32 0, i32 1
  
  %sp1.154 = bitcast i8* %next0.154 to [2 x i8]*
  store [2 x i8] c"\65\73", [2 x i8]* %sp1.154
  %next1.154 = getelementptr [12 x i8], [12 x i8]* %spi154, i32 0, i32 3
  
  %sp2.154 = bitcast i8* %next1.154 to [2 x i8]*
  store [2 x i8] c"\75\6c", [2 x i8]* %sp2.154
  %next2.154 = getelementptr [12 x i8], [12 x i8]* %spi154, i32 0, i32 5
  
  %sp3.154 = bitcast i8* %next2.154 to [1 x i8]*
  store [1 x i8] c"\74", [1 x i8]* %sp3.154
  %next3.154 = getelementptr [12 x i8], [12 x i8]* %spi154, i32 0, i32 6
  
  %sp4.154 = bitcast i8* %next3.154 to [2 x i8]*
  store [2 x i8] c"\3a\20", [2 x i8]* %sp4.154
  %next4.154 = getelementptr [12 x i8], [12 x i8]* %spi154, i32 0, i32 8
  
  %sp5.154 = bitcast i8* %next4.154 to [2 x i8]*
  store [2 x i8] c"\25\66", [2 x i8]* %sp5.154
  %next5.154 = getelementptr [12 x i8], [12 x i8]* %spi154, i32 0, i32 10
  
  %sp6.154 = bitcast i8* %next5.154 to [2 x i8]*
  store [2 x i8] c"\0a\00", [2 x i8]* %sp6.154
  %spi.bis.465 = ptrtoint[12 x i8]* %spi154 to i32
;-------------------------------
  store i32 %spi.bis.465, i32* %23, align 16
  store i32 134517317, i32* %24, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i22.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v35.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !39
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
!20 = !{!21}
!21 = distinct !{!21, !22, !"float32ToCommonNaN: argument 0"}
!22 = distinct !{!22, !"float32ToCommonNaN"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"float64ToCommonNaN: argument 0"}
!25 = distinct !{!25, !"float64ToCommonNaN"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"floatx80ToCommonNaN: argument 0"}
!28 = distinct !{!28, !"floatx80ToCommonNaN"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"floatx80ToCommonNaN: argument 0"}
!31 = distinct !{!31, !"floatx80ToCommonNaN"}
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C++ TBAA"}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !34, i64 0}
!38 = !{i32 0, i32 0, i32 0, i32 0}
!39 = !{!"printf"}
!40 = !{!"clang version 14.0.0"}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 7, !"PIC Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{i32 1, !"NumRegisterParameters", i32 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"float64ToCommonNaN: argument 0"}
!48 = distinct !{!48, !"float64ToCommonNaN"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"floatx80ToCommonNaN: argument 0"}
!51 = distinct !{!51, !"floatx80ToCommonNaN"}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = !{!57, !57, i64 0}
!57 = !{!"double", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!61, !61, i64 0}
!61 = !{!"int", !58, i64 0}
!62 = !{i32 0, i32 0, i32 0}
!63 = !{!"printf"}
!64 = !{!"clang version 14.0.0"}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = !{i32 7, !"PIC Level", i32 2}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{i32 1, !"NumRegisterParameters", i32 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"double", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C++ TBAA"}
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !72, i64 0}
!76 = !{i32 0, i32 0, i32 0, i32 0}
!77 = !{!"printf"}
!78 = !{!"clang version 14.0.0"}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 7, !"PIC Level", i32 2}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{i32 1, !"NumRegisterParameters", i32 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"double", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C++ TBAA"}
!88 = !{!89, !89, i64 0}
!89 = !{!"int", !86, i64 0}
!90 = !{i32 0, i32 0, i32 0, i32 0}
!91 = !{!"printf"}
!92 = !{!"clang version 14.0.0"}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 7, !"PIC Level", i32 2}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{i32 1, !"NumRegisterParameters", i32 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"double", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C++ TBAA"}
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !100, i64 0}
!104 = !{i32 0, i32 0, i32 0}
!105 = !{!"printf"}
!106 = !{!"fprintf"}
