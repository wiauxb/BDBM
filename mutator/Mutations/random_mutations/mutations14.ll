; Mutation 76
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
; Replace: %cast4= getelementptr [10 x i8], [10 x i8]* @.str3, i64 0, i64 0
@str.20 = private unnamed_addr constant [10 x i8] c"\4C\3F\27\01\43\02\5C\01\0D\6D", align 1
@key.20 = private unnamed_addr constant [10 x i8] c"\38\4d\48\68\30\6b\39\6c\68\6d", align 1
;-------------------------------
; Replace: %cast6= getelementptr [10 x i8], [10 x i8]* @.str5, i64 0, i64 0
@str.21 = private unnamed_addr constant [10 x i8] c"\43\47\56\3B\47\06\12\3C\1D\59", align 1
@key.21 = private unnamed_addr constant [10 x i8] c"\37\35\39\52\34\6f\77\51\78\59", align 1
;-------------------------------
; Replace: %cast8= getelementptr [11 x i8], [11 x i8]* @.str7, i64 0, i64 0
@str.22 = private unnamed_addr constant [11 x i8] c"\08\0B\17\2D\3A\33\2C\31\58\36\64", align 1
@key.22 = private unnamed_addr constant [11 x i8] c"\6c\6e\65\4a\58\59\56\54\33\57\64", align 1
;-------------------------------
; Replace: %cast10= getelementptr [8 x i8], [8 x i8]* @.str9, i64 0, i64 0
@str.23 = private unnamed_addr constant [8 x i8] c"\16\38\21\00\2C\0D\39\32", align 1
@key.23 = private unnamed_addr constant [8 x i8] c"\46\4a\44\6d\45\68\4b\32", align 1
;-------------------------------
; Replace: %cast12= getelementptr [11 x i8], [11 x i8]* @.str11, i64 0, i64 0
@str.24 = private unnamed_addr constant [11 x i8] c"\3E\27\3C\39\3E\0E\5F\5D\51\43\39", align 1
@key.24 = private unnamed_addr constant [11 x i8] c"\51\4c\55\56\54\78\36\71\34\31\39", align 1
;-------------------------------
; Replace: %cast14= getelementptr [10 x i8], [10 x i8]* @.str13, i64 0, i64 0
@str.25 = private unnamed_addr constant [10 x i8] c"\23\1D\00\36\2A\A2\DC\0F\08\6B", align 1
@key.25 = private unnamed_addr constant [10 x i8] c"\67\78\75\4e\43\61\74\62\6d\6b", align 1
;-------------------------------
; Replace: %cast16= getelementptr [10 x i8], [10 x i8]* @.str15, i64 0, i64 0
@str.26 = private unnamed_addr constant [10 x i8] c"\00\3A\06\2B\12\3F\0B\2A\36\68", align 1
@key.26 = private unnamed_addr constant [10 x i8] c"\74\48\69\42\61\56\6e\47\53\68", align 1
;-------------------------------
; Replace: %cast18= getelementptr [11 x i8], [11 x i8]* @.str17, i64 0, i64 0
@str.27 = private unnamed_addr constant [11 x i8] c"\10\35\27\53\28\08\39\5D\5F\2A\41", align 1
@key.27 = private unnamed_addr constant [11 x i8] c"\74\50\55\34\4a\62\43\38\34\4b\41", align 1
;-------------------------------
; Replace: store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.1
@str.28 = private unnamed_addr constant [11 x i8] c"\60\02\16\23\3E\31\10\06\06\17\39", align 1
@key.28 = private unnamed_addr constant [11 x i8] c"\36\4f\49\66\70\70\52\4a\43\53\39", align 1
;-------------------------------
; Replace: store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.1
@str.29 = private unnamed_addr constant [4 x i8] c"\3E\35\72\54", align 1
@key.29 = private unnamed_addr constant [4 x i8] c"\79\71\30\54", align 1
;-------------------------------
; Replace: store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.1
@str.30 = private unnamed_addr constant [6 x i8] c"\14\35\21\0D\10\42", align 1
@key.30 = private unnamed_addr constant [6 x i8] c"\50\70\63\58\57\42", align 1
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
@str.31 = private unnamed_addr constant [2 x i8] c"\5F\7A", align 1
@key.31 = private unnamed_addr constant [2 x i8] c"\6e\7a", align 1
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
@str.32 = private unnamed_addr constant [4 x i8] c"\48\23\6E\4F", align 1
@key.32 = private unnamed_addr constant [4 x i8] c"\4d\79\43\4f", align 1
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
@str.33 = private unnamed_addr constant [14 x i8] c"\27\69\24\23\42\09\2E\2D\09\67\51\15\39\71", align 1
@key.33 = private unnamed_addr constant [14 x i8] c"\6e\49\45\4e\62\6c\58\44\65\46\70\34\33\71", align 1
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
@str.34 = private unnamed_addr constant [9 x i8] c"\70\2E\23\58\12\3E\27\32\34", align 1
@key.34 = private unnamed_addr constant [9 x i8] c"\32\57\46\78\50\47\42\38\34", align 1
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
@str.35 = private unnamed_addr constant [3 x i8] c"\4F\14\76", align 1
@key.35 = private unnamed_addr constant [3 x i8] c"\6a\67\76", align 1
;-------------------------------
; Replace: store i32 134520866, i32* %36, align 4
@str.36 = private unnamed_addr constant [3 x i8] c"\31\46\4D", align 1
@key.36 = private unnamed_addr constant [3 x i8] c"\46\6d\4d", align 1
;-------------------------------
; Replace: store i32 134520869, i32* %37, align 16
@str.37 = private unnamed_addr constant [15 x i8] c"\30\2F\33\01\11\16\0C\34\08\01\54\25\1B\37\47", align 1
@key.37 = private unnamed_addr constant [15 x i8] c"\44\4a\4b\75\4e\70\65\58\6d\32\7a\51\63\43\47", align 1
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
@str.38 = private unnamed_addr constant [2 x i8] c"\00\56", align 1
@key.38 = private unnamed_addr constant [2 x i8] c"\33\56", align 1
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
@str.39 = private unnamed_addr constant [2 x i8] c"\44\63", align 1
@key.39 = private unnamed_addr constant [2 x i8] c"\76\63", align 1

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
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7
declare i32 @getenv(i32) local_unnamed_addr noinline

declare i32 @detect_vm()
; Function Attrs: norecurse
;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

declare i32 @time(i32) local_unnamed_addr noinline 

declare i32 @ptrace( i32, i32, i32, i32) naked noinline
;-------------------------------
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #3
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect tracing running
  %result.76 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.76 = icmp eq i32 %result.76, -1
  br i1 %must.escape.76, label %.escape.76, label %.proceed.76
.proceed.76:
;----------------------------
  %time40 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time40)
  %rand_init73 = tail call i32 @rand()
  %rand_fin74 = srem i32 %rand_init73, 6
  %rand_init69 = tail call i32 @rand()
  %rand_fin70 = srem i32 %rand_init69, 6
  %rand_init65 = tail call i32 @rand()
  %rand_fin66 = srem i32 %rand_init65, 6
  %rand_init61 = tail call i32 @rand()
  %rand_fin62 = srem i32 %rand_init61, 6
  %rand_init57 = tail call i32 @rand()
  %rand_fin58 = srem i32 %rand_init57, 6
  %rand_init53 = tail call i32 @rand()
  %rand_fin54 = srem i32 %rand_init53, 6
  %rand_init49 = tail call i32 @rand()
  %rand_fin50 = srem i32 %rand_init49, 6
  %rand_init45 = tail call i32 @rand()
  %rand_fin46 = srem i32 %rand_init45, 6
  %rand_init41 = tail call i32 @rand()
  %rand_fin42 = srem i32 %rand_init41, 6
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.19 = tail call i32 @detect_vm()
  %must.escape.19 = icmp ne i32 %result.19, 0
  br i1 %must.escape.19, label %.escape.19, label %.proceed.19
.proceed.19:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.2.1 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.1
  %sp0.1.28 = bitcast [11 x i8]* @str.28 to i88*
  %i0.28 = load i88, i88* %sp0.1.28

  %sp1.1.28 = bitcast [11 x i8]* @key.28 to i88*
  %i1.28 = load i88, i88* %sp1.1.28

  %xp28 = xor i88 %i0.28, %i1.28

  %fi.28 = alloca i88
  store i88 %xp28, i88* %fi.28

  %final.ptr.28 = bitcast i88* %fi.28 to [11 x i8]*
  %spi28 = load [11 x i8], [11 x i8]* %final.ptr.28
  store [11 x i8] %spi28, [11 x i8]* %debug.str.2.1
;-------------------------------
  %debug.ptr.2.1 = ptrtoint [11 x i8]* %debug.str.2.1 to i32
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
  %sp0.1.29 = bitcast [4 x i8]* @str.29 to i32*
  %i0.29 = load i32, i32* %sp0.1.29

  %sp1.1.29 = bitcast [4 x i8]* @key.29 to i32*
  %i1.29 = load i32, i32* %sp1.1.29

  %xp29 = xor i32 %i0.29, %i1.29

  %fi.29 = alloca i32
  store i32 %xp29, i32* %fi.29

  %final.ptr.29 = bitcast i32* %fi.29 to [4 x i8]*
  %spi29 = load [4 x i8], [4 x i8]* %final.ptr.29
  store [4 x i8] %spi29, [4 x i8]* %debug.str.1.1
;-------------------------------
  %debug.ptr.1.1 = ptrtoint [4 x i8]* %debug.str.1.1 to i32
  %result.1.1 = tail call i32 @getenv(i32 %debug.ptr.1.1)
  %must.escape.1.1 = icmp ne i32 %result.1.1, 0
  br i1 %must.escape.1.1, label %.escape.1, label %.proceed.1.1
.proceed.1.1:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.0.1 = alloca [6 x i8]
;-------------------------------
; Replace: store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.1
  %sp0.1.30 = bitcast [6 x i8]* @str.30 to i48*
  %i0.30 = load i48, i48* %sp0.1.30

  %sp1.1.30 = bitcast [6 x i8]* @key.30 to i48*
  %i1.30 = load i48, i48* %sp1.1.30

  %xp30 = xor i48 %i0.30, %i1.30

  %fi.30 = alloca i48
  store i48 %xp30, i48* %fi.30

  %final.ptr.30 = bitcast i48* %fi.30 to [6 x i8]*
;-------------------------------
;----------Random Cond----------
  %.not43.i.i = icmp eq i32 3 , %rand_fin42 
  br i1 %.not43.i.i, label %next43, label %BB_43
next43:
;-------------------------------
  %spi30 = load [6 x i8], [6 x i8]* %final.ptr.30
  store [6 x i8] %spi30, [6 x i8]* %debug.str.0.1
;-------------------------------
  %debug.ptr.0.1 = ptrtoint [6 x i8]* %debug.str.0.1 to i32
  %result.0.1 = tail call i32 @getenv(i32 %debug.ptr.0.1)
  %must.escape.0.1 = icmp ne i32 %result.0.1, 0
  br i1 %must.escape.0.1, label %.escape.1, label %.proceed.0.1
.proceed.0.1:
;----------------------------
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
  %tmp2_v.i49.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i49.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i51.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i51.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i55.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v6.i55.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %sp0.1.31 = bitcast [2 x i8]* @str.31 to i16*
  %i0.31 = load i16, i16* %sp0.1.31

  %sp1.1.31 = bitcast [2 x i8]* @key.31 to i16*
  %i1.31 = load i16, i16* %sp1.1.31

  %xp31 = xor i16 %i0.31, %i1.31

  %fi.31 = alloca i16
  store i16 %xp31, i16* %fi.31

  %spi31 = ptrtoint i16* %fi.31 to i32
;-------------------------------
;----------Random Cond----------
  %.not63.i.i = icmp eq i32 0 , %rand_fin62 
  br i1 %.not63.i.i, label %next63, label %BB_43
next63:
;-------------------------------
  store i32 %spi31, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i56.i = add i32 %tmp0_v.i.i, -48
  %13 = inttoptr i32 %tmp2_v7.i56.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i28.i = icmp eq i32 %15, 0
  br i1 %.not.i28.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i.i, -40
;-------------------------------
;--------Basic Condition--------
  %.not14.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not14.i.i, label %BB_14, label %next14
next14:
;-------------------------------
  %16 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i.i, -68
  %17 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
  %sp0.1.32 = bitcast [4 x i8]* @str.32 to i32*
  %i0.32 = load i32, i32* %sp0.1.32

  %sp1.1.32 = bitcast [4 x i8]* @key.32 to i32*
  %i1.32 = load i32, i32* %sp1.1.32

  %xp32 = xor i32 %i0.32, %i1.32

;-------------------------------
;----------Random Cond----------
  %.not71.i.i = icmp eq i32 1 , %rand_fin70 
  br i1 %.not71.i.i, label %next71, label %BB_43
next71:
;-------------------------------
  %fi.32 = alloca i32
  store i32 %xp32, i32* %fi.32

  %spi32 = ptrtoint i32* %fi.32 to i32
  store i32 %spi32, i32* %17, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -56
  %18 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
  %sp0.1.33 = bitcast [14 x i8]* @str.33 to i112*
  %i0.33 = load i112, i112* %sp0.1.33

  %sp1.1.33 = bitcast [14 x i8]* @key.33 to i112*
  %i1.33 = load i112, i112* %sp1.1.33

  %xp33 = xor i112 %i0.33, %i1.33

  %fi.33 = alloca i112
  store i112 %xp33, i112* %fi.33

  %spi33 = ptrtoint i112* %fi.33 to i32
  store i32 %spi33, i32* %18, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp0.1.34 = bitcast [9 x i8]* @str.34 to i72*
  %i0.34 = load i72, i72* %sp0.1.34

  %sp1.1.34 = bitcast [9 x i8]* @key.34 to i72*
  %i1.34 = load i72, i72* %sp1.1.34

  %xp34 = xor i72 %i0.34, %i1.34

  %fi.34 = alloca i72
  store i72 %xp34, i72* %fi.34

  %spi34 = ptrtoint i72* %fi.34 to i32
  store i32 %spi34, i32* %14, align 4
;-------------------------------
  %19 = load i32, i32* %18, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
  %sp0.1.35 = bitcast [3 x i8]* @str.35 to i24*
  %i0.35 = load i24, i24* %sp0.1.35

  %sp1.1.35 = bitcast [3 x i8]* @key.35 to i24*
  %i1.35 = load i24, i24* %sp1.1.35

  %xp35 = xor i24 %i0.35, %i1.35

  %fi.35 = alloca i24
  store i24 %xp35, i24* %fi.35

  %spi35 = ptrtoint i24* %fi.35 to i32
;-------------------------------
;----------Random Cond----------
  %.not51.i.i = icmp eq i32 4 , %rand_fin50 
  br i1 %.not51.i.i, label %next51, label %BB_43
next51:
;-------------------------------
  store i32 %spi35, i32* %21, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -84
  %22 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i.i, -40
  %24 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %24, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i5.i.i = add i32 %tmp0_v.i.i, -68
  %25 = inttoptr i32 %tmp2_v2.i5.i.i to i32*
;-------------------------------
;----------Random Cond----------
  %.not67.i.i = icmp eq i32 5 , %rand_fin66 
  br i1 %.not67.i.i, label %next67, label %BB_43
next67:
;-------------------------------
  store i32 134517678, i32* %25, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i12.i.i = add i32 %tmp0_v.i.i, -72
  %26 = inttoptr i32 %tmp2_v2.i12.i.i to i32*
  store i32 0, i32* %26, align 8
  %tmp2_v3.i.i.i6 = add i32 %tmp0_v.i.i, -76
  %27 = inttoptr i32 %tmp2_v3.i.i.i6 to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -80
;-------------------------------
;--------Basic Condition--------
  %.not8.i.i = icmp eq i32 0 , 0 ;always true
;-------------------------------
;----------Random Cond----------
  %.not59.i.i = icmp eq i32 1 , %rand_fin58 
  br i1 %.not59.i.i, label %next59, label %BB_43
next59:
;-------------------------------
  br i1 %.not8.i.i, label %BB_8, label %next8
next8:
;-------------------------------
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %28, align 16
  %tmp2_v5.i13.i.i = add i32 %tmp0_v.i.i, -84
  %29 = inttoptr i32 %tmp2_v5.i13.i.i to i32*
  store i32 134517705, i32* %29, align 4
  %arg.i.i.i = load i32, i32* %28, align 16
  %arg2.i.i.i = load i32, i32* %27, align 4
  %arg4.i.i.i = load i32, i32* %26, align 8
  %30 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
  store i32 %30, i32* %14, align 4
;-------------------------------
;--------Basic Condition--------
;-------------------------------
;--------Basic Condition--------
  %.not12.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not12.i.i, label %BB_12, label %next12
next12:
;-------------------------------
  %.not6.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not6.i.i, label %BB_6, label %next6
next6:
;-------------------------------
;-------------------------------
;--------Basic Condition--------
  %.not16.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not16.i.i, label %BB_16, label %next16
next16:
;-------------------------------
  store i32 %30, i32* %28, align 16
  store i32 134517722, i32* %29, align 4
  %arg.i.i3.i = load i32, i32* %28, align 16
  %31 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -40
  %32 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %32, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -84
  %33 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517482, i32* %33, align 4
  %tmp4_v.i33.i.b.i = load i1, i1* @segs.0, align 1
  %34 = select i1 %tmp4_v.i33.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %tmp2_v5.i41.i.i = add i32 %tmp0_v.i.i, -92
  %36 = inttoptr i32 %tmp2_v5.i41.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %36, align 4
  %sp0.1.36 = bitcast [3 x i8]* @str.36 to i24*
  %i0.36 = load i24, i24* %sp0.1.36

  %sp1.1.36 = bitcast [3 x i8]* @key.36 to i24*
  %i1.36 = load i24, i24* %sp1.1.36

  %xp36 = xor i24 %i0.36, %i1.36

  %fi.36 = alloca i24
  store i24 %xp36, i24* %fi.36

  %spi36 = ptrtoint i24* %fi.36 to i32
  store i32 %spi36, i32* %36, align 4
;-------------------------------
  %tmp2_v7.i43.i.i = add i32 %tmp0_v.i.i, -96
  %37 = inttoptr i32 %tmp2_v7.i43.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %37, align 16
  %sp0.1.37 = bitcast [15 x i8]* @str.37 to i120*
  %i0.37 = load i120, i120* %sp0.1.37

;-------------------------------
;----------Random Cond----------
  %.not55.i.i = icmp eq i32 3 , %rand_fin54 
  br i1 %.not55.i.i, label %next55, label %BB_43
next55:
;-------------------------------
  %sp1.1.37 = bitcast [15 x i8]* @key.37 to i120*
  %i1.37 = load i120, i120* %sp1.1.37

  %xp37 = xor i120 %i0.37, %i1.37

  %fi.37 = alloca i120
  store i120 %xp37, i120* %fi.37

  %spi37 = ptrtoint i120* %fi.37 to i32
  store i32 %spi37, i32* %37, align 16
;-------------------------------
  %tmp2_v8.i44.i.i = add i32 %tmp0_v.i.i, -100
  %38 = inttoptr i32 %tmp2_v8.i44.i.i to i32*
  store i32 134517521, i32* %38, align 4
  %arg.i.i.i8 = load i32, i32* %37, align 16
  %arg2.i.i.i9 = load i32, i32* %36, align 4
  %39 = tail call i32 @fopen(i32 %arg.i.i.i8, i32 %arg2.i.i.i9)
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i.i, -76
  %40 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 %39, i32* %40, align 4
  %tmp2_v.i25.i.i = add i32 %tmp0_v.i.i, -72
  %41 = inttoptr i32 %tmp2_v.i25.i.i to i32*
  store i32 1818304585, i32* %41, align 8
  %tmp2_v1.i26.i.i = add i32 %tmp0_v.i.i, -68
;-------------------------------
;--------Basic Condition--------
  %.not10.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not10.i.i, label %BB_10, label %next10
next10:
;-------------------------------
  %42 = inttoptr i32 %tmp2_v1.i26.i.i to i32*
  store i32 1701995892, i32* %42, align 4
  %tmp2_v2.i27.i.i = add i32 %tmp0_v.i.i, -64
  %43 = inttoptr i32 %tmp2_v2.i27.i.i to i32*
  store i32 1752440932, i32* %43, align 16
  %tmp2_v3.i.i.i10 = add i32 %tmp0_v.i.i, -60
  %44 = inttoptr i32 %tmp2_v3.i.i.i10 to i32*
  store i32 1768300645, i32* %44, align 4
  %tmp2_v4.i28.i.i = add i32 %tmp0_v.i.i, -56
  %45 = inttoptr i32 %tmp2_v4.i28.i.i to i32*
  store i32 2188652, i32* %45, align 8
  %46 = load i32, i32* %40, align 4
  store i32 %46, i32* %33, align 4
  %tmp2_v7.i.i.i11 = add i32 %tmp0_v.i.i, -88
  %47 = inttoptr i32 %tmp2_v7.i.i.i11 to i32*
  store i32 20, i32* %47, align 8
;-------------------------------
;--------Basic Condition--------
  %.not4.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not4.i.i, label %BB_4, label %next4
next4:
;-------------------------------
  store i32 1, i32* %36, align 4
  store i32 %tmp2_v.i25.i.i, i32* %37, align 16
  store i32 134517622, i32* %38, align 4
  %arg.i.i4.i = load i32, i32* %37, align 16
  %arg2.i.i5.i = load i32, i32* %36, align 4
  %arg4.i.i.i12 = load i32, i32* %47, align 8
  %arg6.i.i.i = load i32, i32* %33, align 4
  %48 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i12, i32 %arg6.i.i.i)
  %49 = load i32, i32* %40, align 4
  store i32 %49, i32* %37, align 16
  store i32 134517636, i32* %38, align 4
  %arg.i.i6.i = load i32, i32* %37, align 16
  %50 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %51 = load i32, i32* %8, align 4
  %tmp0_v1.i16.i = add i32 %51, 4
  %52 = inttoptr i32 %tmp0_v1.i16.i to i32*
;-------------------------------
;--------Basic Condition--------
;-------------------------------
;----------Random Cond----------
  %.not47.i.i = icmp eq i32 4 , %rand_fin46 
  br i1 %.not47.i.i, label %next47, label %BB_43
next47:
;-------------------------------
  %.not18.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not18.i.i, label %BB_18, label %next18
next18:
;-------------------------------
  %53 = load i32, i32* %52, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %sp0.1.38 = bitcast [2 x i8]* @str.38 to i16*
  %i0.38 = load i16, i16* %sp0.1.38

  %sp1.1.38 = bitcast [2 x i8]* @key.38 to i16*
  %i1.38 = load i16, i16* %sp1.1.38

  %xp38 = xor i16 %i0.38, %i1.38

  %fi.38 = alloca i16
  store i16 %xp38, i16* %fi.38

  %spi38 = ptrtoint i16* %fi.38 to i32
  store i32 %spi38, i32* %12, align 4
;-------------------------------
  store i32 %53, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i13 = load i32, i32* %13, align 16
  %arg2.i.i14 = load i32, i32* %12, align 4
  %54 = tail call i32 @strcmp(i32 %arg.i.i13, i32 %arg2.i.i14)
  %.not.i.i = icmp eq i32 %54, 0
  br i1 %.not.i.i, label %BB_8049472.i, label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i38.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i38.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %sp0.1.39 = bitcast [2 x i8]* @str.39 to i16*
  %i0.39 = load i16, i16* %sp0.1.39

  %sp1.1.39 = bitcast [2 x i8]* @key.39 to i16*
  %i1.39 = load i16, i16* %sp1.1.39

  %xp39 = xor i16 %i0.39, %i1.39

  %fi.39 = alloca i16
  store i16 %xp39, i16* %fi.39

  %spi39 = ptrtoint i16* %fi.39 to i32
  store i32 %spi39, i32* %12, align 4
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
;-------------------------------
;----------Random Cond----------
  %.not75.i.i = icmp eq i32 0 , %rand_fin74 
  br i1 %.not75.i.i, label %next75, label %BB_43
next75:
;-------------------------------
  %arg.i.i16 = load i32, i32* %13, align 16
  %arg2.i.i17 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i16, i32 %arg2.i.i17)
  %.not.i33.i = icmp eq i32 %58, 0
  br i1 %.not.i33.i, label %BB_804944C.i, label %BB_8049453.i

.exit:                                            ; preds = %BB_8049453.i, %BB_804944C.i, %BB_8049472.i, %BB_8049426.i
  ret void
.escape.1:
  ret void
BB_4:
;-------------------------------
; Replace: %cast4= getelementptr [10 x i8], [10 x i8]* @.str3, i64 0, i64 0
  %sp0.1.20 = bitcast [10 x i8]* @str.20 to i80*
  %i0.20 = load i80, i80* %sp0.1.20

  %sp1.1.20 = bitcast [10 x i8]* @key.20 to i80*
  %i1.20 = load i80, i80* %sp1.1.20

  %xp20 = xor i80 %i0.20, %i1.20

  %fi.20 = alloca i80
  store i80 %xp20, i80* %fi.20

  %spi20 = bitcast i80* %fi.20 to [10 x i8]*
  %cast4= getelementptr [10 x i8], [10 x i8]* %spi20, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast4)
  br label %next4
BB_6:
;-------------------------------
; Replace: %cast6= getelementptr [10 x i8], [10 x i8]* @.str5, i64 0, i64 0
  %sp0.1.21 = bitcast [10 x i8]* @str.21 to i80*
  %i0.21 = load i80, i80* %sp0.1.21

  %sp1.1.21 = bitcast [10 x i8]* @key.21 to i80*
  %i1.21 = load i80, i80* %sp1.1.21

  %xp21 = xor i80 %i0.21, %i1.21

  %fi.21 = alloca i80
  store i80 %xp21, i80* %fi.21

  %spi21 = bitcast i80* %fi.21 to [10 x i8]*
  %cast6= getelementptr [10 x i8], [10 x i8]* %spi21, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast6)
  br label %next6
BB_8:
;-------------------------------
; Replace: %cast8= getelementptr [11 x i8], [11 x i8]* @.str7, i64 0, i64 0
  %sp0.1.22 = bitcast [11 x i8]* @str.22 to i88*
  %i0.22 = load i88, i88* %sp0.1.22

  %sp1.1.22 = bitcast [11 x i8]* @key.22 to i88*
  %i1.22 = load i88, i88* %sp1.1.22

  %xp22 = xor i88 %i0.22, %i1.22

  %fi.22 = alloca i88
  store i88 %xp22, i88* %fi.22

  %spi22 = bitcast i88* %fi.22 to [11 x i8]*
  %cast8= getelementptr [11 x i8], [11 x i8]* %spi22, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast8)
  br label %next8
BB_10:
;-------------------------------
; Replace: %cast10= getelementptr [8 x i8], [8 x i8]* @.str9, i64 0, i64 0
  %sp0.1.23 = bitcast [8 x i8]* @str.23 to i64*
  %i0.23 = load i64, i64* %sp0.1.23

  %sp1.1.23 = bitcast [8 x i8]* @key.23 to i64*
  %i1.23 = load i64, i64* %sp1.1.23

  %xp23 = xor i64 %i0.23, %i1.23

  %fi.23 = alloca i64
  store i64 %xp23, i64* %fi.23

  %spi23 = bitcast i64* %fi.23 to [8 x i8]*
  %cast10= getelementptr [8 x i8], [8 x i8]* %spi23, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast10)
  br label %next10
BB_12:
;-------------------------------
; Replace: %cast12= getelementptr [11 x i8], [11 x i8]* @.str11, i64 0, i64 0
  %sp0.1.24 = bitcast [11 x i8]* @str.24 to i88*
  %i0.24 = load i88, i88* %sp0.1.24

  %sp1.1.24 = bitcast [11 x i8]* @key.24 to i88*
  %i1.24 = load i88, i88* %sp1.1.24

  %xp24 = xor i88 %i0.24, %i1.24

  %fi.24 = alloca i88
  store i88 %xp24, i88* %fi.24

  %spi24 = bitcast i88* %fi.24 to [11 x i8]*
  %cast12= getelementptr [11 x i8], [11 x i8]* %spi24, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast12)
  br label %next12
BB_14:
;-------------------------------
; Replace: %cast14= getelementptr [10 x i8], [10 x i8]* @.str13, i64 0, i64 0
  %sp0.1.25 = bitcast [10 x i8]* @str.25 to i80*
  %i0.25 = load i80, i80* %sp0.1.25

  %sp1.1.25 = bitcast [10 x i8]* @key.25 to i80*
  %i1.25 = load i80, i80* %sp1.1.25

  %xp25 = xor i80 %i0.25, %i1.25

  %fi.25 = alloca i80
  store i80 %xp25, i80* %fi.25

  %spi25 = bitcast i80* %fi.25 to [10 x i8]*
  %cast14= getelementptr [10 x i8], [10 x i8]* %spi25, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast14)
  br label %next14
BB_16:
;-------------------------------
; Replace: %cast16= getelementptr [10 x i8], [10 x i8]* @.str15, i64 0, i64 0
  %sp0.1.26 = bitcast [10 x i8]* @str.26 to i80*
  %i0.26 = load i80, i80* %sp0.1.26

  %sp1.1.26 = bitcast [10 x i8]* @key.26 to i80*
  %i1.26 = load i80, i80* %sp1.1.26

  %xp26 = xor i80 %i0.26, %i1.26

  %fi.26 = alloca i80
  store i80 %xp26, i80* %fi.26

  %spi26 = bitcast i80* %fi.26 to [10 x i8]*
  %cast16= getelementptr [10 x i8], [10 x i8]* %spi26, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast16)
  br label %next16
BB_18:
;-------------------------------
; Replace: %cast18= getelementptr [11 x i8], [11 x i8]* @.str17, i64 0, i64 0
  %sp0.1.27 = bitcast [11 x i8]* @str.27 to i88*
  %i0.27 = load i88, i88* %sp0.1.27

  %sp1.1.27 = bitcast [11 x i8]* @key.27 to i88*
  %i1.27 = load i88, i88* %sp1.1.27

  %xp27 = xor i88 %i0.27, %i1.27

  %fi.27 = alloca i88
  store i88 %xp27, i88* %fi.27

  %spi27 = bitcast i88* %fi.27 to [11 x i8]*
  %cast18= getelementptr [11 x i8], [11 x i8]* %spi27, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast18)
  br label %next18
.escape.19:
  ret void
BB_43:
  ret void
.escape.76:
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
