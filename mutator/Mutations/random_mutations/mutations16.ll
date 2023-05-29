; Mutation 123
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
; Replace: store i32 134520866, i32* %20, align 4
@str.2.41 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520869, i32* %21, align 16
;-------------------------------
; Replace: store i32 134517414, i32* %44, align 4
@str.3.43 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520840, i32* %45, align 8
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: store i32 134520863, i32* %48, align 16
@str.2.46 = constant [1 x i8] c"\00"
declare i8* @base64_decode(i8*)
;-------------------------------
; Replace: %s1.41 = load [1 x i8], [1 x i8]* @str.1.41
;-------------------------------
; Replace: %s0.41 = load [1 x i8], [1 x i8]* @str.0.41
;-------------------------------
; Replace: %s3.42 = load [3 x i8], [3 x i8]* @str.3.42
;-------------------------------
; Replace: %s0.42 = load [3 x i8], [3 x i8]* @str.0.42
;-------------------------------
; Replace: %s4.42 = load [3 x i8], [3 x i8]* @str.4.42
;-------------------------------
; Replace: %s2.42 = load [3 x i8], [3 x i8]* @str.2.42
;-------------------------------
; Replace: %s1.42 = load [3 x i8], [3 x i8]* @str.1.42
;-------------------------------
; Replace: %s0.43 = load [1 x i8], [1 x i8]* @str.0.43
;-------------------------------
; Replace: %s2.43 = load [1 x i8], [1 x i8]* @str.2.43
;-------------------------------
; Replace: %s1.43 = load [1 x i8], [1 x i8]* @str.1.43
;-------------------------------
; Replace: %s2.44 = load [3 x i8], [3 x i8]* @str.2.44
;-------------------------------
; Replace: %s1.44 = load [3 x i8], [3 x i8]* @str.1.44
;-------------------------------
; Replace: %s3.44 = load [3 x i8], [3 x i8]* @str.3.44
;-------------------------------
; Replace: %s4.44 = load [3 x i8], [3 x i8]* @str.4.44
;-------------------------------
; Replace: %s0.44 = load [2 x i8], [2 x i8]* @str.0.44
;-------------------------------
; Replace: %s2.45 = load [2 x i8], [2 x i8]* @str.2.45
;-------------------------------
; Replace: %s4.45 = load [2 x i8], [2 x i8]* @str.4.45
;-------------------------------
; Replace: %s0.45 = load [1 x i8], [1 x i8]* @str.0.45
;-------------------------------
; Replace: %s1.45 = load [2 x i8], [2 x i8]* @str.1.45
;-------------------------------
; Replace: %s3.45 = load [2 x i8], [2 x i8]* @str.3.45
;-------------------------------
; Replace: %s1.46 = load [1 x i8], [1 x i8]* @str.1.46
;-------------------------------
; Replace: %s0.46 = load [1 x i8], [1 x i8]* @str.0.46
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
; Replace: %cipher.ptr.72 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.72, i32 0, i32 0
@str.98 = private unnamed_addr constant [5 x i8] c"\12\0E\4D\51\51", align 1
@key.98 = private unnamed_addr constant [5 x i8] c"\59\79\70\6c\51", align 1
;-------------------------------
; Replace: %cipher.ptr.73 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.73, i32 0, i32 0
@str.99 = private unnamed_addr constant [5 x i8] c"\1C\19\0C\75\41", align 1
@key.99 = private unnamed_addr constant [5 x i8] c"\78\6e\31\48\41", align 1
;-------------------------------
; Replace: %cipher.ptr.74 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.74, i32 0, i32 0
@str.100 = private unnamed_addr constant [5 x i8] c"\7F\1F\0C\69\47", align 1
@key.100 = private unnamed_addr constant [5 x i8] c"\32\66\39\59\47", align 1
;-------------------------------
; Replace: %cipher.ptr.75 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.75, i32 0, i32 0
@str.101 = private unnamed_addr constant [5 x i8] c"\50\32\19\07\72", align 1
@key.101 = private unnamed_addr constant [5 x i8] c"\34\75\4f\33\72", align 1
;-------------------------------
; Replace: %cipher.ptr.76 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.76, i32 0, i32 0
@str.102 = private unnamed_addr constant [5 x i8] c"\03\26\13\76\42", align 1
@key.102 = private unnamed_addr constant [5 x i8] c"\66\6e\42\37\42", align 1
;-------------------------------
; Replace: %cipher.ptr.77 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.77, i32 0, i32 0
@str.103 = private unnamed_addr constant [5 x i8] c"\31\65\21\3D\48", align 1
@key.103 = private unnamed_addr constant [5 x i8] c"\50\32\59\51\48", align 1
;-------------------------------
; Replace: %cipher.ptr.78 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.78, i32 0, i32 0
@str.104 = private unnamed_addr constant [5 x i8] c"\2B\24\53\58\67", align 1
@key.104 = private unnamed_addr constant [5 x i8] c"\4f\62\6a\35\67", align 1
;-------------------------------
; Replace: %cipher.ptr.79 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.79, i32 0, i32 0
@str.105 = private unnamed_addr constant [5 x i8] c"\2E\3D\54\0F\62", align 1
@key.105 = private unnamed_addr constant [5 x i8] c"\6c\6c\69\32\62", align 1
;-------------------------------
; Replace: %cipher.ptr.80 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.80, i32 0, i32 0
@str.106 = private unnamed_addr constant [5 x i8] c"\20\38\7E\64\44", align 1
@key.106 = private unnamed_addr constant [5 x i8] c"\6c\69\43\59\44", align 1
;-------------------------------
; Replace: %cipher.ptr.81 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.81, i32 0, i32 0
@str.107 = private unnamed_addr constant [5 x i8] c"\3C\14\72\08\6B", align 1
@key.107 = private unnamed_addr constant [5 x i8] c"\6b\73\4f\35\6b", align 1
;-------------------------------
; Replace: %cipher.ptr.82 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.82, i32 0, i32 0
@str.108 = private unnamed_addr constant [5 x i8] c"\23\13\23\09\67", align 1
@key.108 = private unnamed_addr constant [5 x i8] c"\79\4b\79\79\67", align 1
;-------------------------------
; Replace: %cipher.ptr.83 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.83, i32 0, i32 0
@str.109 = private unnamed_addr constant [5 x i8] c"\09\61\75\10\67", align 1
@key.109 = private unnamed_addr constant [5 x i8] c"\50\36\45\77\67", align 1
;-------------------------------
; Replace: %cipher.ptr.84 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.84, i32 0, i32 0
@str.110 = private unnamed_addr constant [5 x i8] c"\03\25\2A\3B\79", align 1
@key.110 = private unnamed_addr constant [5 x i8] c"\61\66\6f\53\79", align 1
;-------------------------------
; Replace: %cipher.ptr.85 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.85, i32 0, i32 0
@str.111 = private unnamed_addr constant [5 x i8] c"\3E\3D\1D\73\7A", align 1
@key.111 = private unnamed_addr constant [5 x i8] c"\77\6c\72\32\7a", align 1
;-------------------------------
; Replace: %cipher.ptr.86 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.86, i32 0, i32 0
@str.112 = private unnamed_addr constant [5 x i8] c"\05\65\04\0B\53", align 1
@key.112 = private unnamed_addr constant [5 x i8] c"\56\36\45\36\53", align 1
;-------------------------------
; Replace: %cipher.ptr.87 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.87, i32 0, i32 0
@str.113 = private unnamed_addr constant [5 x i8] c"\08\27\0C\7F\67", align 1
@key.113 = private unnamed_addr constant [5 x i8] c"\41\62\45\42\67", align 1
;-------------------------------
; Replace: %cipher.ptr.88 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.88, i32 0, i32 0
@str.114 = private unnamed_addr constant [5 x i8] c"\29\35\02\64\71", align 1
@key.114 = private unnamed_addr constant [5 x i8] c"\6a\52\43\59\71", align 1
;-------------------------------
; Replace: %cipher.ptr.89 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.89, i32 0, i32 0
@str.115 = private unnamed_addr constant [5 x i8] c"\1C\36\04\4F\32", align 1
@key.115 = private unnamed_addr constant [5 x i8] c"\4d\51\39\72\32", align 1
;-------------------------------
; Replace: %cipher.ptr.90 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.90, i32 0, i32 0
@str.116 = private unnamed_addr constant [5 x i8] c"\00\25\67\71\42", align 1
@key.116 = private unnamed_addr constant [5 x i8] c"\65\72\32\4c\42", align 1
;-------------------------------
; Replace: %cipher.ptr.91 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.91, i32 0, i32 0
@str.117 = private unnamed_addr constant [5 x i8] c"\13\05\22\68\63", align 1
@key.117 = private unnamed_addr constant [5 x i8] c"\76\52\77\55\63", align 1
;-------------------------------
; Replace: %cipher.ptr.92 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.92, i32 0, i32 0
@str.118 = private unnamed_addr constant [5 x i8] c"\5B\04\75\7C\65", align 1
@key.118 = private unnamed_addr constant [5 x i8] c"\38\73\48\41\65", align 1
;-------------------------------
; Replace: %cipher.ptr.93 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.93, i32 0, i32 0
@str.119 = private unnamed_addr constant [5 x i8] c"\3D\3A\6F\6C\53", align 1
@key.119 = private unnamed_addr constant [5 x i8] c"\77\6b\52\51\53", align 1
;-------------------------------
; Replace: %cipher.ptr.94 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.94, i32 0, i32 0
@str.120 = private unnamed_addr constant [5 x i8] c"\27\15\26\74\4D", align 1
@key.120 = private unnamed_addr constant [5 x i8] c"\6a\44\67\49\4d", align 1
;-------------------------------
; Replace: %cipher.ptr.95 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.95, i32 0, i32 0
@str.121 = private unnamed_addr constant [5 x i8] c"\3A\3F\10\76\43", align 1
@key.121 = private unnamed_addr constant [5 x i8] c"\77\58\51\4b\43", align 1
;-------------------------------
; Replace: %cipher.ptr.96 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.96, i32 0, i32 0
@str.122 = private unnamed_addr constant [5 x i8] c"\07\12\18\44\6C", align 1
@key.122 = private unnamed_addr constant [5 x i8] c"\4a\65\59\79\6c", align 1

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
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

declare i32 @time(i32) local_unnamed_addr noinline 

;-------------------------------
declare i32 @usleep(i32) local_unnamed_addr  noinline 
declare double @atof(i32) local_unnamed_addr  noinline 
declare i32 @toupper(i32) local_unnamed_addr  noinline 
; Function Attrs: norecurse
declare i32 @access(i32, i32) local_unnamed_addr noinline
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 
declare i32 @detect_vm()
declare i32 @ptrace( i32, i32, i32, i32) naked noinline
declare i32 @getenv(i32) local_unnamed_addr noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @alarm(i32) local_unnamed_addr noinline
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect debug environment
  %debug.str.2.123 = alloca [11 x i8]
  store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.123
  %debug.ptr.2.123 = ptrtoint [11 x i8]* %debug.str.2.123 to i32
  %result.2.123 = tail call i32 @getenv(i32 %debug.ptr.2.123)
  %must.escape.2.123 = icmp ne i32 %result.2.123, 0
  br i1 %must.escape.2.123, label %.escape.123, label %.proceed.2.123
.proceed.2.123:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.1.123 = alloca [4 x i8]
  store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.123
  %debug.ptr.1.123 = ptrtoint [4 x i8]* %debug.str.1.123 to i32
  %result.1.123 = tail call i32 @getenv(i32 %debug.ptr.1.123)
  %must.escape.1.123 = icmp ne i32 %result.1.123, 0
  br i1 %must.escape.1.123, label %.escape.123, label %.proceed.1.123
.proceed.1.123:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.0.123 = alloca [6 x i8]
  store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.123
  %debug.ptr.0.123 = ptrtoint [6 x i8]* %debug.str.0.123 to i32
  %result.0.123 = tail call i32 @getenv(i32 %debug.ptr.0.123)
  %must.escape.0.123 = icmp ne i32 %result.0.123, 0
  br i1 %must.escape.0.123, label %.escape.123, label %.proceed.0.123
.proceed.0.123:
;----------------------------
;----------------------------
  ; Detect tracing running
  %result.97 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.97 = icmp eq i32 %result.97, -1
  br i1 %must.escape.97, label %.escape.97, label %.proceed.97
.proceed.97:
;----------------------------
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.71 = tail call i32 @detect_vm()
  %must.escape.71 = icmp ne i32 %result.71, 0
  br i1 %must.escape.71, label %.escape.71, label %.proceed.71
.proceed.71:
;----------------------------
  %time1 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time1)
  %rand_init38 = tail call i32 @rand()
  %rand_fin39 = srem i32 %rand_init38, 7
  %rand_init34 = tail call i32 @rand()
  %rand_fin35 = srem i32 %rand_init34, 7
  %rand_init30 = tail call i32 @rand()
  %rand_fin31 = srem i32 %rand_init30, 7
  %rand_init26 = tail call i32 @rand()
  %rand_fin27 = srem i32 %rand_init26, 7
  %rand_init22 = tail call i32 @rand()
  %rand_fin23 = srem i32 %rand_init22, 7
  %rand_init18 = tail call i32 @rand()
  %rand_fin19 = srem i32 %rand_init18, 7
  %rand_init14 = tail call i32 @rand()
  %rand_fin15 = srem i32 %rand_init14, 7
  %rand_init10 = tail call i32 @rand()
  %rand_fin11 = srem i32 %rand_init10, 7
  %rand_init6 = tail call i32 @rand()
  %rand_fin7 = srem i32 %rand_init6, 7
  %rand_init2 = tail call i32 @rand()
  %rand_fin3 = srem i32 %rand_init2, 7
  %tmp2_v.i25.i = add i32 %arg_esp, 4
  %tmp0_v.i26.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i26.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i28.i = add i32 %tmp0_v.i26.i, -8
  %3 = inttoptr i32 %tmp2_v4.i28.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i29.i = add i32 %tmp0_v.i26.i, -12
  %4 = inttoptr i32 %tmp2_v5.i29.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i31.i = add i32 %tmp0_v.i26.i, -16
  %5 = inttoptr i32 %tmp2_v6.i31.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i33.i = add i32 %tmp0_v.i26.i, -20
  %6 = inttoptr i32 %tmp2_v7.i33.i to i32*
  store i32 %tmp2_v.i25.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i26.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i36.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i36.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i38.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i38.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i42.i = add i32 %tmp0_v.i26.i, -44
  %12 = inttoptr i32 %tmp2_v6.i42.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
;-------------------------------
; Replace: %cipher.ptr.94 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.94, i32 0, i32 0
  %sp0.1.120 = bitcast [5 x i8]* @str.120 to i40*
  %i0.120 = load i40, i40* %sp0.1.120

  %sp1.1.120 = bitcast [5 x i8]* @key.120 to i40*
  %i1.120 = load i40, i40* %sp1.1.120

  %xp120 = xor i40 %i0.120, %i1.120

  %fi.120 = alloca i40
  store i40 %xp120, i40* %fi.120

  %spi120 = bitcast i40* %fi.120 to [5 x i8]*
  %cipher.ptr.94 = getelementptr inbounds [5 x i8], [5 x i8]* %spi120, i32 0, i32 0
;-------------------------------
  %plain.ptr.94 = tail call i8* @base64_decode(i8* %cipher.ptr.94)
  %spi94 = ptrtoint i8* %plain.ptr.94 to i32
  store i32 %spi94, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i43.i = add i32 %tmp0_v.i26.i, -48
  %13 = inttoptr i32 %tmp2_v7.i43.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i26.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i53.i = icmp eq i32 %15, 0
  br i1 %.not.i53.i, label %BB_8049426.i, label %BB_804942D.i

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i26.i, -40
  %16 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i28.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i26.i, -84
  %17 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517482, i32* %17, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %18 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i26.i, -92
  %20 = inttoptr i32 %tmp2_v5.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %20, align 4
  %sp41 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.41 = load [1 x i8], [1 x i8]* @str.0.41
;-------------------------------
; Replace: %cipher.ptr.73 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.73, i32 0, i32 0
  %sp0.1.99 = bitcast [5 x i8]* @str.99 to i40*
  %i0.99 = load i40, i40* %sp0.1.99

  %sp1.1.99 = bitcast [5 x i8]* @key.99 to i40*
  %i1.99 = load i40, i40* %sp1.1.99

  %xp99 = xor i40 %i0.99, %i1.99

  %fi.99 = alloca i40
  store i40 %xp99, i40* %fi.99

  %spi99 = bitcast i40* %fi.99 to [5 x i8]*
  %cipher.ptr.73 = getelementptr inbounds [5 x i8], [5 x i8]* %spi99, i32 0, i32 0
;-------------------------------
  %plain.ptr.73 = tail call i8* @base64_decode(i8* %cipher.ptr.73)
  %spi73 = bitcast i8* %plain.ptr.73 to [1 x i8]*
  %s0.41 = load [1 x i8], [1 x i8]* %spi73
;-------------------------------
  %sp0.41 = bitcast [3 x i8]* %sp41 to [1 x i8]*
  store [1 x i8] %s0.41, [1 x i8]* %sp0.41
  %next0.41 = getelementptr [3 x i8], [3 x i8]* %sp41, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.41 = load [1 x i8], [1 x i8]* @str.1.41
;-------------------------------
; Replace: %cipher.ptr.72 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.72, i32 0, i32 0
  %sp0.1.98 = bitcast [5 x i8]* @str.98 to i40*
  %i0.98 = load i40, i40* %sp0.1.98

  %sp1.1.98 = bitcast [5 x i8]* @key.98 to i40*
  %i1.98 = load i40, i40* %sp1.1.98

  %xp98 = xor i40 %i0.98, %i1.98

  %fi.98 = alloca i40
  store i40 %xp98, i40* %fi.98

  %spi98 = bitcast i40* %fi.98 to [5 x i8]*
  %cipher.ptr.72 = getelementptr inbounds [5 x i8], [5 x i8]* %spi98, i32 0, i32 0
;-------------------------------
  %plain.ptr.72 = tail call i8* @base64_decode(i8* %cipher.ptr.72)
  %spi72 = bitcast i8* %plain.ptr.72 to [1 x i8]*
  %s1.41 = load [1 x i8], [1 x i8]* %spi72
;-------------------------------
  %sp1.41 = bitcast i8* %next0.41 to [1 x i8]*
  store [1 x i8] %s1.41, [1 x i8]* %sp1.41
  %next1.41 = getelementptr [3 x i8], [3 x i8]* %sp41, i32 0, i32 2
  
  %s2.41 = load [1 x i8], [1 x i8]* @str.2.41
  %sp2.41 = bitcast i8* %next1.41 to [1 x i8]*
  store [1 x i8] %s2.41, [1 x i8]* %sp2.41

  %spi41 = ptrtoint [3 x i8]* %sp41 to i32
  store i32 %spi41, i32* %20, align 4
;-------------------------------
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i26.i, -96
  %21 = inttoptr i32 %tmp2_v7.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %21, align 16
  %sp42 = alloca [15 x i8]
  
;-------------------------------
; Replace: %s0.42 = load [3 x i8], [3 x i8]* @str.0.42
;-------------------------------
; Replace: %cipher.ptr.75 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.75, i32 0, i32 0
  %sp0.1.101 = bitcast [5 x i8]* @str.101 to i40*
  %i0.101 = load i40, i40* %sp0.1.101

  %sp1.1.101 = bitcast [5 x i8]* @key.101 to i40*
  %i1.101 = load i40, i40* %sp1.1.101

  %xp101 = xor i40 %i0.101, %i1.101

  %fi.101 = alloca i40
  store i40 %xp101, i40* %fi.101

  %spi101 = bitcast i40* %fi.101 to [5 x i8]*
  %cipher.ptr.75 = getelementptr inbounds [5 x i8], [5 x i8]* %spi101, i32 0, i32 0
;-------------------------------
  %plain.ptr.75 = tail call i8* @base64_decode(i8* %cipher.ptr.75)
  %spi75 = bitcast i8* %plain.ptr.75 to [3 x i8]*
  %s0.42 = load [3 x i8], [3 x i8]* %spi75
;-------------------------------
  %sp0.42 = bitcast [15 x i8]* %sp42 to [3 x i8]*
  store [3 x i8] %s0.42, [3 x i8]* %sp0.42
  %next0.42 = getelementptr [15 x i8], [15 x i8]* %sp42, i32 0, i32 3
  
;-------------------------------
; Replace: %s1.42 = load [3 x i8], [3 x i8]* @str.1.42
;-------------------------------
; Replace: %cipher.ptr.78 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.78, i32 0, i32 0
  %sp0.1.104 = bitcast [5 x i8]* @str.104 to i40*
  %i0.104 = load i40, i40* %sp0.1.104

  %sp1.1.104 = bitcast [5 x i8]* @key.104 to i40*
  %i1.104 = load i40, i40* %sp1.1.104

  %xp104 = xor i40 %i0.104, %i1.104

  %fi.104 = alloca i40
  store i40 %xp104, i40* %fi.104

  %spi104 = bitcast i40* %fi.104 to [5 x i8]*
  %cipher.ptr.78 = getelementptr inbounds [5 x i8], [5 x i8]* %spi104, i32 0, i32 0
;-------------------------------
  %plain.ptr.78 = tail call i8* @base64_decode(i8* %cipher.ptr.78)
  %spi78 = bitcast i8* %plain.ptr.78 to [3 x i8]*
  %s1.42 = load [3 x i8], [3 x i8]* %spi78
;-------------------------------
  %sp1.42 = bitcast i8* %next0.42 to [3 x i8]*
  store [3 x i8] %s1.42, [3 x i8]* %sp1.42
  %next1.42 = getelementptr [15 x i8], [15 x i8]* %sp42, i32 0, i32 6
  %es59 = load i32, i32* %21, align 16
;-------------------------------
;--------Added Syst Call--------
  %a58 = tail call i32 @strlen(i32 %es59)
;-------------------------------
  
;-------------------------------
; Replace: %s2.42 = load [3 x i8], [3 x i8]* @str.2.42
;-------------------------------
; Replace: %cipher.ptr.77 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.77, i32 0, i32 0
  %sp0.1.103 = bitcast [5 x i8]* @str.103 to i40*
  %i0.103 = load i40, i40* %sp0.1.103

  %sp1.1.103 = bitcast [5 x i8]* @key.103 to i40*
  %i1.103 = load i40, i40* %sp1.1.103

  %xp103 = xor i40 %i0.103, %i1.103

  %fi.103 = alloca i40
  store i40 %xp103, i40* %fi.103

  %spi103 = bitcast i40* %fi.103 to [5 x i8]*
  %cipher.ptr.77 = getelementptr inbounds [5 x i8], [5 x i8]* %spi103, i32 0, i32 0
;-------------------------------
  %plain.ptr.77 = tail call i8* @base64_decode(i8* %cipher.ptr.77)
  %spi77 = bitcast i8* %plain.ptr.77 to [3 x i8]*
  %s2.42 = load [3 x i8], [3 x i8]* %spi77
;-------------------------------
  %sp2.42 = bitcast i8* %next1.42 to [3 x i8]*
  store [3 x i8] %s2.42, [3 x i8]* %sp2.42
  %next2.42 = getelementptr [15 x i8], [15 x i8]* %sp42, i32 0, i32 9
  
;-------------------------------
; Replace: %s3.42 = load [3 x i8], [3 x i8]* @str.3.42
;-------------------------------
; Replace: %cipher.ptr.74 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.74, i32 0, i32 0
  %sp0.1.100 = bitcast [5 x i8]* @str.100 to i40*
  %i0.100 = load i40, i40* %sp0.1.100

  %sp1.1.100 = bitcast [5 x i8]* @key.100 to i40*
  %i1.100 = load i40, i40* %sp1.1.100

  %xp100 = xor i40 %i0.100, %i1.100

  %fi.100 = alloca i40
  store i40 %xp100, i40* %fi.100

  %spi100 = bitcast i40* %fi.100 to [5 x i8]*
  %cipher.ptr.74 = getelementptr inbounds [5 x i8], [5 x i8]* %spi100, i32 0, i32 0
;-------------------------------
  %plain.ptr.74 = tail call i8* @base64_decode(i8* %cipher.ptr.74)
  %spi74 = bitcast i8* %plain.ptr.74 to [3 x i8]*
  %s3.42 = load [3 x i8], [3 x i8]* %spi74
;-------------------------------
  %sp3.42 = bitcast i8* %next2.42 to [3 x i8]*
  store [3 x i8] %s3.42, [3 x i8]* %sp3.42
  %next3.42 = getelementptr [15 x i8], [15 x i8]* %sp42, i32 0, i32 12
  
;-------------------------------
; Replace: %s4.42 = load [3 x i8], [3 x i8]* @str.4.42
;-------------------------------
; Replace: %cipher.ptr.76 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.76, i32 0, i32 0
  %sp0.1.102 = bitcast [5 x i8]* @str.102 to i40*
  %i0.102 = load i40, i40* %sp0.1.102

  %sp1.1.102 = bitcast [5 x i8]* @key.102 to i40*
  %i1.102 = load i40, i40* %sp1.1.102

  %xp102 = xor i40 %i0.102, %i1.102

  %fi.102 = alloca i40
  store i40 %xp102, i40* %fi.102

  %spi102 = bitcast i40* %fi.102 to [5 x i8]*
  %cipher.ptr.76 = getelementptr inbounds [5 x i8], [5 x i8]* %spi102, i32 0, i32 0
;-------------------------------
  %plain.ptr.76 = tail call i8* @base64_decode(i8* %cipher.ptr.76)
  %spi76 = bitcast i8* %plain.ptr.76 to [3 x i8]*
  %s4.42 = load [3 x i8], [3 x i8]* %spi76
;-------------------------------
  %sp4.42 = bitcast i8* %next3.42 to [3 x i8]*
  store [3 x i8] %s4.42, [3 x i8]* %sp4.42

  %spi42 = ptrtoint [15 x i8]* %sp42 to i32
  store i32 %spi42, i32* %21, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i26.i, -100
  %22 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %22, align 4
;-------------------------------
;--------Added Syst Call--------
  %a57 = tail call i32 @alarm (i32 %rand_init14)
;-------------------------------
  %arg.i.i.i = load i32, i32* %21, align 16
  %arg2.i.i.i = load i32, i32* %20, align 4
  %23 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i26.i, -76
  %24 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v.i28.i.i = add i32 %tmp0_v.i26.i, -72
  %25 = inttoptr i32 %tmp2_v.i28.i.i to i32*
  store i32 1818304585, i32* %25, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i26.i, -68
  %26 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 1701995892, i32* %26, align 4
  %tmp2_v2.i30.i.i = add i32 %tmp0_v.i26.i, -64
  %27 = inttoptr i32 %tmp2_v2.i30.i.i to i32*
  store i32 1752440932, i32* %27, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i26.i, -60
  %28 = inttoptr i32 %tmp2_v3.i.i.i to i32*
;-------------------------------
;----------Random Cond----------
  %.not32.i.i = icmp eq i32 3 , %rand_fin31 
  br i1 %.not32.i.i, label %next32, label %BB_4
next32:
;-------------------------------
  store i32 1768300645, i32* %28, align 4
  %tmp2_v4.i31.i.i = add i32 %tmp0_v.i26.i, -56
  %29 = inttoptr i32 %tmp2_v4.i31.i.i to i32*
  store i32 2188652, i32* %29, align 8
;-------------------------------
;----------Random Cond----------
  %.not20.i.i = icmp eq i32 0 , %rand_fin19 
  br i1 %.not20.i.i, label %next20, label %BB_4
next20:
;-------------------------------
  %30 = load i32, i32* %24, align 4
  store i32 %30, i32* %17, align 4
  %tmp2_v7.i36.i.i = add i32 %tmp0_v.i26.i, -88
  %31 = inttoptr i32 %tmp2_v7.i36.i.i to i32*
  store i32 20, i32* %31, align 8
  store i32 1, i32* %20, align 4
  store i32 %tmp2_v.i28.i.i, i32* %21, align 16
  store i32 134517622, i32* %22, align 4
  %arg.i.i4.i = load i32, i32* %21, align 16
  %arg2.i.i5.i = load i32, i32* %20, align 4
  %arg4.i.i.i = load i32, i32* %31, align 8
;-------------------------------
;----------Random Cond----------
  %.not8.i.i = icmp eq i32 1 , %rand_fin7 
  br i1 %.not8.i.i, label %next8, label %BB_4
next8:
;-------------------------------
  %arg6.i.i.i = load i32, i32* %17, align 4
  %32 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i, i32 %arg6.i.i.i)
  %33 = load i32, i32* %24, align 4
  store i32 %33, i32* %21, align 16
  store i32 134517636, i32* %22, align 4
  %arg.i.i6.i = load i32, i32* %21, align 16
  %34 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %35 = load i32, i32* %8, align 4
  %tmp0_v1.i.i = add i32 %35, 4
  %36 = inttoptr i32 %tmp0_v1.i.i to i32*
  %37 = load i32, i32* %36, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: %cipher.ptr.95 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.95, i32 0, i32 0
  %sp0.1.121 = bitcast [5 x i8]* @str.121 to i40*
  %i0.121 = load i40, i40* %sp0.1.121

  %sp1.1.121 = bitcast [5 x i8]* @key.121 to i40*
  %i1.121 = load i40, i40* %sp1.1.121

  %xp121 = xor i40 %i0.121, %i1.121

  %fi.121 = alloca i40
  store i40 %xp121, i40* %fi.121

  %spi121 = bitcast i40* %fi.121 to [5 x i8]*
  %cipher.ptr.95 = getelementptr inbounds [5 x i8], [5 x i8]* %spi121, i32 0, i32 0
;-------------------------------
  %plain.ptr.95 = tail call i8* @base64_decode(i8* %cipher.ptr.95)
  %spi95 = ptrtoint i8* %plain.ptr.95 to i32
  store i32 %spi95, i32* %12, align 4
;-------------------------------
  store i32 %37, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %arg2.i.i6 = load i32, i32* %12, align 4
;-------------------------------
;----------Random Cond----------
  %.not12.i.i = icmp eq i32 6 , %rand_fin11 
;-------------------------------
;----------Random Cond----------
  %.not28.i.i = icmp eq i32 5 , %rand_fin27 
  br i1 %.not28.i.i, label %next28, label %BB_4
next28:
;-------------------------------
  br i1 %.not12.i.i, label %next12, label %BB_4
next12:
;-------------------------------
  %38 = tail call i32 @strcmp(i32 %arg.i.i5, i32 %arg2.i.i6)
  %.not.i.i = icmp eq i32 %38, 0
  br i1 %.not.i.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %39 = load i32, i32* %8, align 4
  %tmp0_v1.i8.i = add i32 %39, 4
  %40 = inttoptr i32 %tmp0_v1.i8.i to i32*
  %41 = load i32, i32* %40, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
; Replace: %cipher.ptr.96 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.96, i32 0, i32 0
  %sp0.1.122 = bitcast [5 x i8]* @str.122 to i40*
  %i0.122 = load i40, i40* %sp0.1.122

  %sp1.1.122 = bitcast [5 x i8]* @key.122 to i40*
  %i1.122 = load i40, i40* %sp1.1.122

  %xp122 = xor i40 %i0.122, %i1.122

  %fi.122 = alloca i40
  store i40 %xp122, i40* %fi.122

  %spi122 = bitcast i40* %fi.122 to [5 x i8]*
  %cipher.ptr.96 = getelementptr inbounds [5 x i8], [5 x i8]* %spi122, i32 0, i32 0
;-------------------------------
  %plain.ptr.96 = tail call i8* @base64_decode(i8* %cipher.ptr.96)
  %spi96 = ptrtoint i8* %plain.ptr.96 to i32
  store i32 %spi96, i32* %12, align 4
;-------------------------------
  store i32 %41, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i8 = load i32, i32* %13, align 16
  %arg2.i.i9 = load i32, i32* %12, align 4
  %42 = tail call i32 @strcmp(i32 %arg.i.i8, i32 %arg2.i.i9)
  %.not.i22.i = icmp eq i32 %42, 0
  br i1 %.not.i22.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i.i.i11 = add i32 %tmp0_v.i26.i, -40
  %43 = inttoptr i32 %tmp2_v.i.i.i11 to i32*
  store i32 %tmp2_v4.i28.i, i32* %43, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i12 = add i32 %tmp0_v.i26.i, -68
;-------------------------------
;----------Random Cond----------
;-------------------------------
;----------Random Cond----------
  %.not16.i.i = icmp eq i32 6 , %rand_fin15 
  br i1 %.not16.i.i, label %next16, label %BB_4
next16:
;-------------------------------
  %.not4.i.i = icmp eq i32 0 , %rand_fin3 
  br i1 %.not4.i.i, label %next4, label %BB_4
next4:
;-------------------------------
  %44 = inttoptr i32 %tmp2_v2.i.i.i12 to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %44, align 4
  %sp43 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.43 = load [1 x i8], [1 x i8]* @str.0.43
;-------------------------------
; Replace: %cipher.ptr.79 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.79, i32 0, i32 0
  %sp0.1.105 = bitcast [5 x i8]* @str.105 to i40*
  %i0.105 = load i40, i40* %sp0.1.105

  %sp1.1.105 = bitcast [5 x i8]* @key.105 to i40*
  %i1.105 = load i40, i40* %sp1.1.105

  %xp105 = xor i40 %i0.105, %i1.105

  %fi.105 = alloca i40
  store i40 %xp105, i40* %fi.105

  %spi105 = bitcast i40* %fi.105 to [5 x i8]*
  %cipher.ptr.79 = getelementptr inbounds [5 x i8], [5 x i8]* %spi105, i32 0, i32 0
;-------------------------------
  %plain.ptr.79 = tail call i8* @base64_decode(i8* %cipher.ptr.79)
  %spi79 = bitcast i8* %plain.ptr.79 to [1 x i8]*
  %s0.43 = load [1 x i8], [1 x i8]* %spi79
;-------------------------------
  %sp0.43 = bitcast [4 x i8]* %sp43 to [1 x i8]*
  store [1 x i8] %s0.43, [1 x i8]* %sp0.43
  %next0.43 = getelementptr [4 x i8], [4 x i8]* %sp43, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.43 = load [1 x i8], [1 x i8]* @str.1.43
;-------------------------------
; Replace: %cipher.ptr.81 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.81, i32 0, i32 0
  %sp0.1.107 = bitcast [5 x i8]* @str.107 to i40*
  %i0.107 = load i40, i40* %sp0.1.107

  %sp1.1.107 = bitcast [5 x i8]* @key.107 to i40*
  %i1.107 = load i40, i40* %sp1.1.107

  %xp107 = xor i40 %i0.107, %i1.107

  %fi.107 = alloca i40
  store i40 %xp107, i40* %fi.107

  %spi107 = bitcast i40* %fi.107 to [5 x i8]*
  %cipher.ptr.81 = getelementptr inbounds [5 x i8], [5 x i8]* %spi107, i32 0, i32 0
;-------------------------------
  %plain.ptr.81 = tail call i8* @base64_decode(i8* %cipher.ptr.81)
  %spi81 = bitcast i8* %plain.ptr.81 to [1 x i8]*
  %s1.43 = load [1 x i8], [1 x i8]* %spi81
;-------------------------------
  %sp1.43 = bitcast i8* %next0.43 to [1 x i8]*
  store [1 x i8] %s1.43, [1 x i8]* %sp1.43
  %next1.43 = getelementptr [4 x i8], [4 x i8]* %sp43, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.43 = load [1 x i8], [1 x i8]* @str.2.43
;-------------------------------
; Replace: %cipher.ptr.80 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.80, i32 0, i32 0
  %sp0.1.106 = bitcast [5 x i8]* @str.106 to i40*
  %i0.106 = load i40, i40* %sp0.1.106

  %sp1.1.106 = bitcast [5 x i8]* @key.106 to i40*
  %i1.106 = load i40, i40* %sp1.1.106

  %xp106 = xor i40 %i0.106, %i1.106

  %fi.106 = alloca i40
  store i40 %xp106, i40* %fi.106

  %spi106 = bitcast i40* %fi.106 to [5 x i8]*
  %cipher.ptr.80 = getelementptr inbounds [5 x i8], [5 x i8]* %spi106, i32 0, i32 0
;-------------------------------
  %plain.ptr.80 = tail call i8* @base64_decode(i8* %cipher.ptr.80)
  %spi80 = bitcast i8* %plain.ptr.80 to [1 x i8]*
  %s2.43 = load [1 x i8], [1 x i8]* %spi80
;-------------------------------
  %sp2.43 = bitcast i8* %next1.43 to [1 x i8]*
  store [1 x i8] %s2.43, [1 x i8]* %sp2.43
  %next2.43 = getelementptr [4 x i8], [4 x i8]* %sp43, i32 0, i32 3
  
  %s3.43 = load [1 x i8], [1 x i8]* @str.3.43
;-------------------------------
;--------Added Syst Call--------
  %a48 = tail call i32 @usleep(i32 %tmp2_v4.i28.i)
;-------------------------------
  %sp3.43 = bitcast i8* %next2.43 to [1 x i8]*
  store [1 x i8] %s3.43, [1 x i8]* %sp3.43

  %spi43 = ptrtoint [4 x i8]* %sp43 to i32
  store i32 %spi43, i32* %44, align 4
;-------------------------------
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i26.i, -56
  %45 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %45, align 8
  %sp44 = alloca [14 x i8]
  
;-------------------------------
; Replace: %s0.44 = load [2 x i8], [2 x i8]* @str.0.44
;-------------------------------
; Replace: %cipher.ptr.86 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.86, i32 0, i32 0
  %sp0.1.112 = bitcast [5 x i8]* @str.112 to i40*
  %i0.112 = load i40, i40* %sp0.1.112

  %sp1.1.112 = bitcast [5 x i8]* @key.112 to i40*
  %i1.112 = load i40, i40* %sp1.1.112

  %xp112 = xor i40 %i0.112, %i1.112

  %fi.112 = alloca i40
  store i40 %xp112, i40* %fi.112

  %spi112 = bitcast i40* %fi.112 to [5 x i8]*
  %cipher.ptr.86 = getelementptr inbounds [5 x i8], [5 x i8]* %spi112, i32 0, i32 0
;-------------------------------
  %plain.ptr.86 = tail call i8* @base64_decode(i8* %cipher.ptr.86)
  %spi86 = bitcast i8* %plain.ptr.86 to [2 x i8]*
  %s0.44 = load [2 x i8], [2 x i8]* %spi86
;-------------------------------
  %sp0.44 = bitcast [14 x i8]* %sp44 to [2 x i8]*
  store [2 x i8] %s0.44, [2 x i8]* %sp0.44
  %next0.44 = getelementptr [14 x i8], [14 x i8]* %sp44, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.44 = load [3 x i8], [3 x i8]* @str.1.44
;-------------------------------
; Replace: %cipher.ptr.83 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.83, i32 0, i32 0
  %sp0.1.109 = bitcast [5 x i8]* @str.109 to i40*
  %i0.109 = load i40, i40* %sp0.1.109

  %sp1.1.109 = bitcast [5 x i8]* @key.109 to i40*
  %i1.109 = load i40, i40* %sp1.1.109

  %xp109 = xor i40 %i0.109, %i1.109

  %fi.109 = alloca i40
  store i40 %xp109, i40* %fi.109

  %spi109 = bitcast i40* %fi.109 to [5 x i8]*
  %cipher.ptr.83 = getelementptr inbounds [5 x i8], [5 x i8]* %spi109, i32 0, i32 0
;-------------------------------
  %plain.ptr.83 = tail call i8* @base64_decode(i8* %cipher.ptr.83)
  %spi83 = bitcast i8* %plain.ptr.83 to [3 x i8]*
  %s1.44 = load [3 x i8], [3 x i8]* %spi83
;-------------------------------
  %sp1.44 = bitcast i8* %next0.44 to [3 x i8]*
  store [3 x i8] %s1.44, [3 x i8]* %sp1.44
  %next1.44 = getelementptr [14 x i8], [14 x i8]* %sp44, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.44 = load [3 x i8], [3 x i8]* @str.2.44
;-------------------------------
; Replace: %cipher.ptr.82 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.82, i32 0, i32 0
  %sp0.1.108 = bitcast [5 x i8]* @str.108 to i40*
  %i0.108 = load i40, i40* %sp0.1.108

  %sp1.1.108 = bitcast [5 x i8]* @key.108 to i40*
  %i1.108 = load i40, i40* %sp1.1.108

  %xp108 = xor i40 %i0.108, %i1.108

  %fi.108 = alloca i40
  store i40 %xp108, i40* %fi.108

  %spi108 = bitcast i40* %fi.108 to [5 x i8]*
  %cipher.ptr.82 = getelementptr inbounds [5 x i8], [5 x i8]* %spi108, i32 0, i32 0
;-------------------------------
  %plain.ptr.82 = tail call i8* @base64_decode(i8* %cipher.ptr.82)
  %spi82 = bitcast i8* %plain.ptr.82 to [3 x i8]*
  %s2.44 = load [3 x i8], [3 x i8]* %spi82
;-------------------------------
  %sp2.44 = bitcast i8* %next1.44 to [3 x i8]*
  %es54 = load i32, i32* %45, align 16
;-------------------------------
;--------Added Syst Call--------
  %a53 = tail call i32 @fopen( i32 %es54, i32 %rand_init30)
;-------------------------------
  store [3 x i8] %s2.44, [3 x i8]* %sp2.44
  %next2.44 = getelementptr [14 x i8], [14 x i8]* %sp44, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.44 = load [3 x i8], [3 x i8]* @str.3.44
;-------------------------------
; Replace: %cipher.ptr.84 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.84, i32 0, i32 0
  %sp0.1.110 = bitcast [5 x i8]* @str.110 to i40*
  %i0.110 = load i40, i40* %sp0.1.110

  %sp1.1.110 = bitcast [5 x i8]* @key.110 to i40*
  %i1.110 = load i40, i40* %sp1.1.110

  %xp110 = xor i40 %i0.110, %i1.110

  %fi.110 = alloca i40
  store i40 %xp110, i40* %fi.110

  %spi110 = bitcast i40* %fi.110 to [5 x i8]*
  %cipher.ptr.84 = getelementptr inbounds [5 x i8], [5 x i8]* %spi110, i32 0, i32 0
;-------------------------------
  %plain.ptr.84 = tail call i8* @base64_decode(i8* %cipher.ptr.84)
  %spi84 = bitcast i8* %plain.ptr.84 to [3 x i8]*
  %s3.44 = load [3 x i8], [3 x i8]* %spi84
;-------------------------------
  %sp3.44 = bitcast i8* %next2.44 to [3 x i8]*
  store [3 x i8] %s3.44, [3 x i8]* %sp3.44
  %next3.44 = getelementptr [14 x i8], [14 x i8]* %sp44, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.44 = load [3 x i8], [3 x i8]* @str.4.44
;-------------------------------
; Replace: %cipher.ptr.85 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.85, i32 0, i32 0
  %sp0.1.111 = bitcast [5 x i8]* @str.111 to i40*
  %i0.111 = load i40, i40* %sp0.1.111

  %sp1.1.111 = bitcast [5 x i8]* @key.111 to i40*
  %i1.111 = load i40, i40* %sp1.1.111

  %xp111 = xor i40 %i0.111, %i1.111

  %fi.111 = alloca i40
  store i40 %xp111, i40* %fi.111

  %spi111 = bitcast i40* %fi.111 to [5 x i8]*
  %cipher.ptr.85 = getelementptr inbounds [5 x i8], [5 x i8]* %spi111, i32 0, i32 0
;-------------------------------
  %plain.ptr.85 = tail call i8* @base64_decode(i8* %cipher.ptr.85)
  %spi85 = bitcast i8* %plain.ptr.85 to [3 x i8]*
  %s4.44 = load [3 x i8], [3 x i8]* %spi85
;-------------------------------
  %sp4.44 = bitcast i8* %next3.44 to [3 x i8]*
  store [3 x i8] %s4.44, [3 x i8]* %sp4.44

  %spi44 = ptrtoint [14 x i8]* %sp44 to i32
  store i32 %spi44, i32* %45, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp45 = alloca [9 x i8]
  
;-------------------------------
; Replace: %s0.45 = load [1 x i8], [1 x i8]* @str.0.45
;-------------------------------
; Replace: %cipher.ptr.89 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.89, i32 0, i32 0
  %sp0.1.115 = bitcast [5 x i8]* @str.115 to i40*
  %i0.115 = load i40, i40* %sp0.1.115

  %sp1.1.115 = bitcast [5 x i8]* @key.115 to i40*
  %i1.115 = load i40, i40* %sp1.1.115

  %xp115 = xor i40 %i0.115, %i1.115

  %fi.115 = alloca i40
  store i40 %xp115, i40* %fi.115

  %spi115 = bitcast i40* %fi.115 to [5 x i8]*
  %cipher.ptr.89 = getelementptr inbounds [5 x i8], [5 x i8]* %spi115, i32 0, i32 0
;-------------------------------
  %plain.ptr.89 = tail call i8* @base64_decode(i8* %cipher.ptr.89)
  %spi89 = bitcast i8* %plain.ptr.89 to [1 x i8]*
  %s0.45 = load [1 x i8], [1 x i8]* %spi89
;-------------------------------
  %sp0.45 = bitcast [9 x i8]* %sp45 to [1 x i8]*
  %es69 = load i32, i32* %12, align 16
  %es70 = load i32, i32* %45, align 16
;-------------------------------
;--------Added Syst Call--------
  %a68 = tail call i32 @strcmp( i32 %es69, i32 %es70)
;-------------------------------
  store [1 x i8] %s0.45, [1 x i8]* %sp0.45
  %next0.45 = getelementptr [9 x i8], [9 x i8]* %sp45, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.45 = load [2 x i8], [2 x i8]* @str.1.45
;-------------------------------
; Replace: %cipher.ptr.90 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.90, i32 0, i32 0
  %sp0.1.116 = bitcast [5 x i8]* @str.116 to i40*
  %i0.116 = load i40, i40* %sp0.1.116

  %sp1.1.116 = bitcast [5 x i8]* @key.116 to i40*
  %i1.116 = load i40, i40* %sp1.1.116

  %xp116 = xor i40 %i0.116, %i1.116

  %fi.116 = alloca i40
  store i40 %xp116, i40* %fi.116

  %spi116 = bitcast i40* %fi.116 to [5 x i8]*
  %cipher.ptr.90 = getelementptr inbounds [5 x i8], [5 x i8]* %spi116, i32 0, i32 0
;-------------------------------
  %plain.ptr.90 = tail call i8* @base64_decode(i8* %cipher.ptr.90)
  %spi90 = bitcast i8* %plain.ptr.90 to [2 x i8]*
  %s1.45 = load [2 x i8], [2 x i8]* %spi90
;-------------------------------
  %sp1.45 = bitcast i8* %next0.45 to [2 x i8]*
  store [2 x i8] %s1.45, [2 x i8]* %sp1.45
  %next1.45 = getelementptr [9 x i8], [9 x i8]* %sp45, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.45 = load [2 x i8], [2 x i8]* @str.2.45
;-------------------------------
; Replace: %cipher.ptr.87 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.87, i32 0, i32 0
  %sp0.1.113 = bitcast [5 x i8]* @str.113 to i40*
  %i0.113 = load i40, i40* %sp0.1.113

  %sp1.1.113 = bitcast [5 x i8]* @key.113 to i40*
  %i1.113 = load i40, i40* %sp1.1.113

  %xp113 = xor i40 %i0.113, %i1.113

  %fi.113 = alloca i40
  store i40 %xp113, i40* %fi.113

  %spi113 = bitcast i40* %fi.113 to [5 x i8]*
  %cipher.ptr.87 = getelementptr inbounds [5 x i8], [5 x i8]* %spi113, i32 0, i32 0
;-------------------------------
  %plain.ptr.87 = tail call i8* @base64_decode(i8* %cipher.ptr.87)
  %spi87 = bitcast i8* %plain.ptr.87 to [2 x i8]*
  %s2.45 = load [2 x i8], [2 x i8]* %spi87
;-------------------------------
  %sp2.45 = bitcast i8* %next1.45 to [2 x i8]*
  store [2 x i8] %s2.45, [2 x i8]* %sp2.45
  %next2.45 = getelementptr [9 x i8], [9 x i8]* %sp45, i32 0, i32 5
  
;-------------------------------
; Replace: %s3.45 = load [2 x i8], [2 x i8]* @str.3.45
;-------------------------------
; Replace: %cipher.ptr.91 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.91, i32 0, i32 0
  %sp0.1.117 = bitcast [5 x i8]* @str.117 to i40*
  %i0.117 = load i40, i40* %sp0.1.117

  %sp1.1.117 = bitcast [5 x i8]* @key.117 to i40*
  %i1.117 = load i40, i40* %sp1.1.117

  %xp117 = xor i40 %i0.117, %i1.117

  %fi.117 = alloca i40
  store i40 %xp117, i40* %fi.117

  %spi117 = bitcast i40* %fi.117 to [5 x i8]*
  %cipher.ptr.91 = getelementptr inbounds [5 x i8], [5 x i8]* %spi117, i32 0, i32 0
;-------------------------------
  %plain.ptr.91 = tail call i8* @base64_decode(i8* %cipher.ptr.91)
  %spi91 = bitcast i8* %plain.ptr.91 to [2 x i8]*
  %s3.45 = load [2 x i8], [2 x i8]* %spi91
;-------------------------------
  %sp3.45 = bitcast i8* %next2.45 to [2 x i8]*
  store [2 x i8] %s3.45, [2 x i8]* %sp3.45
  %next3.45 = getelementptr [9 x i8], [9 x i8]* %sp45, i32 0, i32 7
  
;-------------------------------
; Replace: %s4.45 = load [2 x i8], [2 x i8]* @str.4.45
;-------------------------------
; Replace: %cipher.ptr.88 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.88, i32 0, i32 0
  %sp0.1.114 = bitcast [5 x i8]* @str.114 to i40*
  %i0.114 = load i40, i40* %sp0.1.114

  %sp1.1.114 = bitcast [5 x i8]* @key.114 to i40*
  %i1.114 = load i40, i40* %sp1.1.114

  %xp114 = xor i40 %i0.114, %i1.114

  %fi.114 = alloca i40
  store i40 %xp114, i40* %fi.114

  %spi114 = bitcast i40* %fi.114 to [5 x i8]*
  %cipher.ptr.88 = getelementptr inbounds [5 x i8], [5 x i8]* %spi114, i32 0, i32 0
;-------------------------------
  %plain.ptr.88 = tail call i8* @base64_decode(i8* %cipher.ptr.88)
  %spi88 = bitcast i8* %plain.ptr.88 to [2 x i8]*
  %s4.45 = load [2 x i8], [2 x i8]* %spi88
;-------------------------------
  %sp4.45 = bitcast i8* %next3.45 to [2 x i8]*
  store [2 x i8] %s4.45, [2 x i8]* %sp4.45

  %spi45 = ptrtoint [9 x i8]* %sp45 to i32
  store i32 %spi45, i32* %14, align 4
;-------------------------------
  %46 = load i32, i32* %45, align 8
  %tmp2_v7.i.i.i14 = add i32 %tmp0_v.i26.i, -76
  %47 = inttoptr i32 %tmp2_v7.i.i.i14 to i32*
  store i32 %46, i32* %47, align 4
;-------------------------------
;----------Random Cond----------
  %.not36.i.i = icmp eq i32 6 , %rand_fin35 
  br i1 %.not36.i.i, label %next36, label %BB_4
next36:
;-------------------------------
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i26.i, -80
;-------------------------------
;----------Random Cond----------
  %.not40.i.i = icmp eq i32 6 , %rand_fin39 
  br i1 %.not40.i.i, label %next40, label %BB_4
next40:
;-------------------------------
  %48 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %48, align 16
  %sp46 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.46 = load [1 x i8], [1 x i8]* @str.0.46
;-------------------------------
; Replace: %cipher.ptr.93 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.93, i32 0, i32 0
  %sp0.1.119 = bitcast [5 x i8]* @str.119 to i40*
  %i0.119 = load i40, i40* %sp0.1.119

  %sp1.1.119 = bitcast [5 x i8]* @key.119 to i40*
  %i1.119 = load i40, i40* %sp1.1.119

  %xp119 = xor i40 %i0.119, %i1.119

  %fi.119 = alloca i40
  store i40 %xp119, i40* %fi.119

  %spi119 = bitcast i40* %fi.119 to [5 x i8]*
  %cipher.ptr.93 = getelementptr inbounds [5 x i8], [5 x i8]* %spi119, i32 0, i32 0
;-------------------------------
  %plain.ptr.93 = tail call i8* @base64_decode(i8* %cipher.ptr.93)
  %spi93 = bitcast i8* %plain.ptr.93 to [1 x i8]*
  %s0.46 = load [1 x i8], [1 x i8]* %spi93
;-------------------------------
  %sp0.46 = bitcast [3 x i8]* %sp46 to [1 x i8]*
  store [1 x i8] %s0.46, [1 x i8]* %sp0.46
  %next0.46 = getelementptr [3 x i8], [3 x i8]* %sp46, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.46 = load [1 x i8], [1 x i8]* @str.1.46
;-------------------------------
; Replace: %cipher.ptr.92 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.92, i32 0, i32 0
  %sp0.1.118 = bitcast [5 x i8]* @str.118 to i40*
  %i0.118 = load i40, i40* %sp0.1.118

  %sp1.1.118 = bitcast [5 x i8]* @key.118 to i40*
  %i1.118 = load i40, i40* %sp1.1.118

  %xp118 = xor i40 %i0.118, %i1.118

  %fi.118 = alloca i40
  store i40 %xp118, i40* %fi.118

  %spi118 = bitcast i40* %fi.118 to [5 x i8]*
  %cipher.ptr.92 = getelementptr inbounds [5 x i8], [5 x i8]* %spi118, i32 0, i32 0
;-------------------------------
  %plain.ptr.92 = tail call i8* @base64_decode(i8* %cipher.ptr.92)
  %spi92 = bitcast i8* %plain.ptr.92 to [1 x i8]*
  %s1.46 = load [1 x i8], [1 x i8]* %spi92
;-------------------------------
  %sp1.46 = bitcast i8* %next0.46 to [1 x i8]*
  store [1 x i8] %s1.46, [1 x i8]* %sp1.46
  %next1.46 = getelementptr [3 x i8], [3 x i8]* %sp46, i32 0, i32 2
  
  %s2.46 = load [1 x i8], [1 x i8]* @str.2.46
  %sp2.46 = bitcast i8* %next1.46 to [1 x i8]*
  store [1 x i8] %s2.46, [1 x i8]* %sp2.46

  %spi46 = ptrtoint [3 x i8]* %sp46 to i32
  store i32 %spi46, i32* %48, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i26.i, -84
  %49 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %49, align 4
  %50 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i25.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049472.i:                                     ; preds = %BB_8049453.i
  %es67 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a66 = tail call i32 @access( i32 %es67, i32 %tmp0_v.i26.i)
;-------------------------------
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i.i.i15 = add i32 %tmp0_v.i26.i, -40
  %51 = inttoptr i32 %tmp2_v.i.i.i15 to i32*
  store i32 %tmp2_v4.i28.i, i32* %51, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i17 = add i32 %tmp0_v.i26.i, -68
  %52 = inttoptr i32 %tmp2_v2.i.i.i17 to i32*
  store i32 134517678, i32* %52, align 4
;-------------------------------
;----------Random Cond----------
  %es61 = load i32, i32* %12, align 16
  %es62 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a60 = tail call i32 @strstr( i32 %es61, i32 %es62)
;-------------------------------
  %.not24.i.i = icmp eq i32 3 , %rand_fin23 
  br i1 %.not24.i.i, label %next24, label %BB_4
next24:
;-------------------------------
  store i32 0, i32* %14, align 4
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i26.i, -72
  %53 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
  %es50 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a49 = tail call double @atof(i32 %es50)
;-------------------------------
  store i32 0, i32* %53, align 8
  %tmp2_v3.i.i.i18 = add i32 %tmp0_v.i26.i, -76
  %54 = inttoptr i32 %tmp2_v3.i.i.i18 to i32*
  %es52 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a51 = tail call i32 @toupper(i32 %es52)
;-------------------------------
  store i32 1, i32* %54, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i26.i, -80
  %55 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %55, align 16
  %tmp2_v5.i.i.i19 = add i32 %tmp0_v.i26.i, -84
  %56 = inttoptr i32 %tmp2_v5.i.i.i19 to i32*
  store i32 134517705, i32* %56, align 4
  %arg.i.i.i20 = load i32, i32* %55, align 16
  %arg2.i.i.i21 = load i32, i32* %54, align 4
  %arg4.i.i.i22 = load i32, i32* %53, align 8
  %57 = tail call i32 @socket(i32 %arg.i.i.i20, i32 %arg2.i.i.i21, i32 %arg4.i.i.i22)
  store i32 %57, i32* %14, align 4
  store i32 %57, i32* %55, align 16
  store i32 134517722, i32* %56, align 4
  %arg.i.i3.i = load i32, i32* %55, align 16
  %58 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

.exit:                                            ; preds = %BB_8049472.i, %BB_8049426.i, %BB_8049453.i, %BB_804944C.i
  ret void
BB_4:
  ret void
.escape.71:
  ret void
.escape.97:
  ret void
.escape.123:
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
