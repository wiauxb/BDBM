; Mutation 65
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack535 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem63 = internal global [1024 x i8] zeroinitializer, align 1
@stack732 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem61 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.731 = constant [11 x i8] c"\66\69\72\73\74\3a\20\25\73\0a\00"
declare i32 @calloc(i32, i32) local_unnamed_addr  noinline 
declare i32 @strcat(i32, i32) local_unnamed_addr  noinline 
declare void @free(i32) local_unnamed_addr  noinline 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
@stack921 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem59 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.919 = constant [16 x i8] c"\67\72\61\64\65\5b\25\64\5d\20\3d\20\25\64\0a\00"
@str.bis.920 = constant [13 x i8] c"\61\76\65\72\61\67\65\3a\20\25\64\0a\00"
@stack511 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem57 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.509 = constant [9 x i8] c"\6d\61\78\3a\20\25\64\0a\00"
@str.bis.510 = constant [17 x i8] c"\69\6e\69\74\69\61\6c\20\6d\61\78\3a\20\25\64\0a\00"
@stack725 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.724 = constant [4 x i8] c"\25\64\0a\00"
@stack955 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.948 = constant [9 x i8] c"\49\4e\54\3a\20\25\64\0a\00"
@str.bis.949 = constant [4 x i8] c"\05\21\2d\00"
@str.bis.950 = constant [17 x i8] c"\4d\75\6c\74\20\6f\75\74\70\75\74\3a\20\25\64\0a\00"
@str.bis.951 = constant [4 x i8] c"\05\68\2d\00"
@str.bis.952 = constant [12 x i8] c"\4f\75\74\70\75\74\3a\20\25\64\0a\00"
@str.bis.953 = constant [27 x i8] c"\41\6e\6f\74\68\65\72\20\70\72\69\6e\74\66\20\73\74\61\74\65\6d\65\6e\74\73\21\00"
@str.bis.954 = constant [14 x i8] c"\48\65\6c\6c\6f\2c\20\57\6f\72\6c\64\21\00"
@stack867 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.866 = constant [15 x i8] c"\25\63\20\69\73\20\61\20\64\69\67\69\74\0a\00"
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 
@stack400 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem52 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.398 = constant [3 x i8] c"\5c\30\00"
@str.bis.399 = constant [4 x i8] c"\25\63\0a\00"
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
declare i32 @strtok(i32, i32) local_unnamed_addr  noinline 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
@str.1 = private unnamed_addr constant [2 x i8] c"\7F\77", align 1
@key.1 = private unnamed_addr constant [2 x i8] c"\4e\77", align 1
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
@str.2 = private unnamed_addr constant [4 x i8] c"\5F\2A\1C\51", align 1
@key.2 = private unnamed_addr constant [4 x i8] c"\5a\70\31\51", align 1
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
@str.3 = private unnamed_addr constant [14 x i8] c"\28\45\58\23\53\26\0F\20\2E\79\15\13\61\33", align 1
@key.3 = private unnamed_addr constant [14 x i8] c"\61\65\39\4e\73\43\79\49\42\58\34\32\6b\33", align 1
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
@str.4 = private unnamed_addr constant [9 x i8] c"\30\11\01\69\03\2F\5D\62\36", align 1
@key.4 = private unnamed_addr constant [9 x i8] c"\72\68\64\49\41\56\38\68\36", align 1
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
@str.5 = private unnamed_addr constant [3 x i8] c"\53\38\57", align 1
@key.5 = private unnamed_addr constant [3 x i8] c"\76\4b\57", align 1
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
@str.6 = private unnamed_addr constant [2 x i8] c"\06\4F", align 1
@key.6 = private unnamed_addr constant [2 x i8] c"\34\4f", align 1
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
@str.7 = private unnamed_addr constant [3 x i8] c"\21\1D\57", align 1
@key.7 = private unnamed_addr constant [3 x i8] c"\56\36\57", align 1
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
@str.8 = private unnamed_addr constant [15 x i8] c"\26\34\40\07\06\37\1E\2E\12\7A\7E\3B\49\19\6D", align 1
@key.8 = private unnamed_addr constant [15 x i8] c"\52\51\38\73\59\51\77\42\77\49\50\4f\31\6d\6d", align 1
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
@str.9 = private unnamed_addr constant [2 x i8] c"\06\49", align 1
@key.9 = private unnamed_addr constant [2 x i8] c"\35\49", align 1

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
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7
declare i32 @detect_vm()

;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

declare i32 @time(i32) local_unnamed_addr noinline 

declare i32 @getenv(i32) local_unnamed_addr noinline
declare i32 @ptrace( i32, i32, i32, i32) naked noinline
;-------------------------------
; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect tracing running
  %result.65 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.65 = icmp eq i32 %result.65, -1
  br i1 %must.escape.65, label %.escape.65, label %.proceed.65
.proceed.65:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.2.64 = alloca [11 x i8]
  store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.64
  %debug.ptr.2.64 = ptrtoint [11 x i8]* %debug.str.2.64 to i32
  %result.2.64 = tail call i32 @getenv(i32 %debug.ptr.2.64)
  %must.escape.2.64 = icmp ne i32 %result.2.64, 0
  br i1 %must.escape.2.64, label %.escape.64, label %.proceed.2.64
.proceed.2.64:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.1.64 = alloca [4 x i8]
  store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.64
  %debug.ptr.1.64 = ptrtoint [4 x i8]* %debug.str.1.64 to i32
  %result.1.64 = tail call i32 @getenv(i32 %debug.ptr.1.64)
  %must.escape.1.64 = icmp ne i32 %result.1.64, 0
  br i1 %must.escape.1.64, label %.escape.64, label %.proceed.1.64
.proceed.1.64:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.0.64 = alloca [6 x i8]
  store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.64
  %debug.ptr.0.64 = ptrtoint [6 x i8]* %debug.str.0.64 to i32
  %result.0.64 = tail call i32 @getenv(i32 %debug.ptr.0.64)
  %must.escape.0.64 = icmp ne i32 %result.0.64, 0
  br i1 %must.escape.0.64, label %.escape.64, label %.proceed.0.64
.proceed.0.64:
;----------------------------
  %time11 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time11)
  %rand_init48 = tail call i32 @rand()
  %rand_fin49 = srem i32 %rand_init48, 8
  %rand_init44 = tail call i32 @rand()
  %rand_fin45 = srem i32 %rand_init44, 8
  %rand_init40 = tail call i32 @rand()
  %rand_fin41 = srem i32 %rand_init40, 8
  %rand_init36 = tail call i32 @rand()
  %rand_fin37 = srem i32 %rand_init36, 8
  %rand_init32 = tail call i32 @rand()
  %rand_fin33 = srem i32 %rand_init32, 8
  %rand_init28 = tail call i32 @rand()
  %rand_fin29 = srem i32 %rand_init28, 8
  %rand_init24 = tail call i32 @rand()
  %rand_fin25 = srem i32 %rand_init24, 8
  %rand_init20 = tail call i32 @rand()
  %rand_fin21 = srem i32 %rand_init20, 8
  %rand_init16 = tail call i32 @rand()
  %rand_fin17 = srem i32 %rand_init16, 8
  %rand_init12 = tail call i32 @rand()
  %rand_fin13 = srem i32 %rand_init12, 8
;----------------------------
  ; Detect if we are running in a VMWare vm
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @array_basics922 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack921, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %result.10 = tail call i32 @detect_vm()
  %must.escape.10 = icmp ne i32 %result.10, 0
  br i1 %must.escape.10, label %.escape.10, label %.proceed.10
.proceed.10:
;----------------------------
  %tmp2_v.i30.i = add i32 %arg_esp, 4
  %tmp0_v.i31.i = and i32 %arg_esp, -16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @print_debugging512 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack511, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i31.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i33.i = add i32 %tmp0_v.i31.i, -8
  %3 = inttoptr i32 %tmp2_v4.i33.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i35.i = add i32 %tmp0_v.i31.i, -12
  %4 = inttoptr i32 %tmp2_v5.i35.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i37.i = add i32 %tmp0_v.i31.i, -16
  %5 = inttoptr i32 %tmp2_v6.i37.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i39.i = add i32 %tmp0_v.i31.i, -20
  %6 = inttoptr i32 %tmp2_v7.i39.i to i32*
  store i32 %tmp2_v.i30.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i31.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  %9 = load i32, i32* %8, align 4
;-------------------------------
;----------Random Cond----------
  %.not46.i.i = icmp eq i32 1 , %rand_fin45 
  br i1 %.not46.i.i, label %next46, label %BB_14
next46:
;-------------------------------
  %tmp0_v2.i.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i31.i, -44
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %sp0.1.1 = bitcast [2 x i8]* @str.1 to i16*
  %i0.1 = load i16, i16* %sp0.1.1

  %sp1.1.1 = bitcast [2 x i8]* @key.1 to i16*
  %i1.1 = load i16, i16* %sp1.1.1

  %xp1 = xor i16 %i0.1, %i1.1

  %fi.1 = alloca i16
  store i16 %xp1, i16* %fi.1

  %spi1 = ptrtoint i16* %fi.1 to i32
  store i32 %spi1, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i.i = add i32 %tmp0_v.i31.i, -48
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i31.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i43.i = icmp eq i32 %15, 0
  br i1 %.not.i43.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i31.i, -40
  %16 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i33.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i31.i, -68
  %17 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
  %sp0.1.2 = bitcast [4 x i8]* @str.2 to i32*
  %i0.2 = load i32, i32* %sp0.1.2

  %sp1.1.2 = bitcast [4 x i8]* @key.2 to i32*
  %i1.2 = load i32, i32* %sp1.1.2

  %xp2 = xor i32 %i0.2, %i1.2

  %fi.2 = alloca i32
  store i32 %xp2, i32* %fi.2

  %spi2 = ptrtoint i32* %fi.2 to i32
  store i32 %spi2, i32* %17, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i31.i, -56
  %18 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
  %sp0.1.3 = bitcast [14 x i8]* @str.3 to i112*
  %i0.3 = load i112, i112* %sp0.1.3

  %sp1.1.3 = bitcast [14 x i8]* @key.3 to i112*
  %i1.3 = load i112, i112* %sp1.1.3

  %xp3 = xor i112 %i0.3, %i1.3

  %fi.3 = alloca i112
;-------------------------------
;----------Random Cond----------
  %.not30.i.i = icmp eq i32 7 , %rand_fin29 
  br i1 %.not30.i.i, label %next30, label %BB_14
next30:
;-------------------------------
  store i112 %xp3, i112* %fi.3

  %spi3 = ptrtoint i112* %fi.3 to i32
  store i32 %spi3, i32* %18, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp0.1.4 = bitcast [9 x i8]* @str.4 to i72*
  %i0.4 = load i72, i72* %sp0.1.4

  %sp1.1.4 = bitcast [9 x i8]* @key.4 to i72*
  %i1.4 = load i72, i72* %sp1.1.4

  %xp4 = xor i72 %i0.4, %i1.4

  %fi.4 = alloca i72
  store i72 %xp4, i72* %fi.4

;-------------------------------
;----------Random Cond----------
  %.not22.i.i = icmp eq i32 3 , %rand_fin21 
  br i1 %.not22.i.i, label %next22, label %BB_14
next22:
;-------------------------------
  %spi4 = ptrtoint i72* %fi.4 to i32
  store i32 %spi4, i32* %14, align 4
;-------------------------------
  %19 = load i32, i32* %18, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i31.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i31.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
  %sp0.1.5 = bitcast [3 x i8]* @str.5 to i24*
  %i0.5 = load i24, i24* %sp0.1.5

  %sp1.1.5 = bitcast [3 x i8]* @key.5 to i24*
  %i1.5 = load i24, i24* %sp1.1.5

  %xp5 = xor i24 %i0.5, %i1.5

  %fi.5 = alloca i24
  store i24 %xp5, i24* %fi.5

;-------------------------------
;----------Random Cond----------
  %.not42.i.i = icmp eq i32 6 , %rand_fin41 
  br i1 %.not42.i.i, label %next42, label %BB_14
next42:
;-------------------------------
  %spi5 = ptrtoint i24* %fi.5 to i32
  store i32 %spi5, i32* %21, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i31.i, -84
  %22 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i30.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @string_append733 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack732, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %24 = load i32, i32* %8, align 4
  %tmp0_v1.i7.i = add i32 %24, 4
  %25 = inttoptr i32 %tmp0_v1.i7.i to i32*
;-------------------------------
;----------Random Cond----------
  %.not14.i.i = icmp eq i32 6 , %rand_fin13 
  br i1 %.not14.i.i, label %next14, label %BB_14
next14:
;-------------------------------
  %26 = load i32, i32* %25, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %sp0.1.6 = bitcast [2 x i8]* @str.6 to i16*
;-------------------------------
;----------Random Cond----------
  %.not18.i.i = icmp eq i32 4 , %rand_fin17 
  br i1 %.not18.i.i, label %next18, label %BB_14
next18:
;-------------------------------
  %i0.6 = load i16, i16* %sp0.1.6

  %sp1.1.6 = bitcast [2 x i8]* @key.6 to i16*
  %i1.6 = load i16, i16* %sp1.1.6

  %xp6 = xor i16 %i0.6, %i1.6

  %fi.6 = alloca i16
  store i16 %xp6, i16* %fi.6

  %spi6 = ptrtoint i16* %fi.6 to i32
  store i32 %spi6, i32* %12, align 4
;-------------------------------
  store i32 %26, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i3 = load i32, i32* %13, align 16
  %arg2.i.i4 = load i32, i32* %12, align 4
  %27 = tail call i32 @strcmp(i32 %arg.i.i3, i32 %arg2.i.i4)
  %.not.i.i = icmp eq i32 %27, 0
  br i1 %.not.i.i, label %BB_804944C.i, label %BB_8049453.i

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i31.i, -40
;-------------------------------
;----------Random Cond----------
  %.not38.i.i = icmp eq i32 1 , %rand_fin37 
  br i1 %.not38.i.i, label %next38, label %BB_14
next38:
;-------------------------------
  %28 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 %tmp2_v4.i33.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i22.i.i = add i32 %tmp0_v.i31.i, -84
  %29 = inttoptr i32 %tmp2_v2.i22.i.i to i32*
  store i32 134517482, i32* %29, align 4
  %tmp4_v.i5.i.b.i = load i1, i1* @segs.0, align 1
  %30 = select i1 %tmp4_v.i5.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %tmp2_v5.i12.i.i = add i32 %tmp0_v.i31.i, -92
  %32 = inttoptr i32 %tmp2_v5.i12.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
  %sp0.1.7 = bitcast [3 x i8]* @str.7 to i24*
  %i0.7 = load i24, i24* %sp0.1.7

  %sp1.1.7 = bitcast [3 x i8]* @key.7 to i24*
  %i1.7 = load i24, i24* %sp1.1.7

  %xp7 = xor i24 %i0.7, %i1.7

  %fi.7 = alloca i24
  store i24 %xp7, i24* %fi.7

  %spi7 = ptrtoint i24* %fi.7 to i32
  store i32 %spi7, i32* %32, align 4
;-------------------------------
  %tmp2_v7.i14.i.i = add i32 %tmp0_v.i31.i, -96
  %33 = inttoptr i32 %tmp2_v7.i14.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
  %sp0.1.8 = bitcast [15 x i8]* @str.8 to i120*
;-------------------------------
;----------Random Cond----------
  %.not26.i.i = icmp eq i32 4 , %rand_fin25 
  br i1 %.not26.i.i, label %next26, label %BB_14
next26:
;-------------------------------
  %i0.8 = load i120, i120* %sp0.1.8

  %sp1.1.8 = bitcast [15 x i8]* @key.8 to i120*
  %i1.8 = load i120, i120* %sp1.1.8

  %xp8 = xor i120 %i0.8, %i1.8

  %fi.8 = alloca i120
  store i120 %xp8, i120* %fi.8

  %spi8 = ptrtoint i120* %fi.8 to i32
  store i32 %spi8, i32* %33, align 16
;-------------------------------
  %tmp2_v8.i15.i.i = add i32 %tmp0_v.i31.i, -100
  %34 = inttoptr i32 %tmp2_v8.i15.i.i to i32*
  store i32 134517521, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i26.i.i = add i32 %tmp0_v.i31.i, -76
  %36 = inttoptr i32 %tmp2_v.i26.i.i to i32*
  store i32 %35, i32* %36, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i31.i, -72
  %37 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 1818304585, i32* %37, align 8
  %tmp2_v1.i.i.i6 = add i32 %tmp0_v.i31.i, -68
  %38 = inttoptr i32 %tmp2_v1.i.i.i6 to i32*
  store i32 1701995892, i32* %38, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i31.i, -64
  %39 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 1752440932, i32* %39, align 16
  %tmp2_v3.i.i.i7 = add i32 %tmp0_v.i31.i, -60
  %40 = inttoptr i32 %tmp2_v3.i.i.i7 to i32*
  store i32 1768300645, i32* %40, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i31.i, -56
  %41 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2188652, i32* %41, align 8
  %42 = load i32, i32* %36, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @substring536 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack535, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %42, i32* %29, align 4
;-------------------------------
;----------Random Cond----------
  %.not50.i.i = icmp eq i32 7 , %rand_fin49 
  br i1 %.not50.i.i, label %next50, label %BB_14
next50:
;-------------------------------
  %tmp2_v7.i.i.i8 = add i32 %tmp0_v.i31.i, -88
  %43 = inttoptr i32 %tmp2_v7.i.i.i8 to i32*
  store i32 20, i32* %43, align 8
  store i32 1, i32* %32, align 4
  store i32 %tmp2_v.i2.i.i, i32* %33, align 16
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

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @strtok401 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack400, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @isdigit868 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack867, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i31.i, -40
  %47 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %tmp2_v4.i33.i, i32* %47, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i11.i.i = add i32 %tmp0_v.i31.i, -68
  %48 = inttoptr i32 %tmp2_v2.i11.i.i to i32*
  store i32 134517678, i32* %48, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i10 = add i32 %tmp0_v.i31.i, -72
  %49 = inttoptr i32 %tmp2_v2.i.i.i10 to i32*
  store i32 0, i32* %49, align 8
  %tmp2_v3.i.i.i11 = add i32 %tmp0_v.i31.i, -76
  %50 = inttoptr i32 %tmp2_v3.i.i.i11 to i32*
  store i32 1, i32* %50, align 4
  %tmp2_v4.i.i.i12 = add i32 %tmp0_v.i31.i, -80
  %51 = inttoptr i32 %tmp2_v4.i.i.i12 to i32*
  store i32 2, i32* %51, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i31.i, -84
  %52 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517705, i32* %52, align 4
  %arg.i.i.i13 = load i32, i32* %51, align 16
  %arg2.i.i.i14 = load i32, i32* %50, align 4
  %arg4.i.i.i15 = load i32, i32* %49, align 8
  %53 = tail call i32 @socket(i32 %arg.i.i.i13, i32 %arg2.i.i.i14, i32 %arg4.i.i.i15)
  store i32 %53, i32* %14, align 4
  store i32 %53, i32* %51, align 16
  store i32 134517722, i32* %52, align 4
  %arg.i.i3.i = load i32, i32* %51, align 16
  %54 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @functions956 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack955, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i48.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i48.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %sp0.1.9 = bitcast [2 x i8]* @str.9 to i16*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @sum_naturals726 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack725, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %i0.9 = load i16, i16* %sp0.1.9

  %sp1.1.9 = bitcast [2 x i8]* @key.9 to i16*
  %i1.9 = load i16, i16* %sp1.1.9

  %xp9 = xor i16 %i0.9, %i1.9

  %fi.9 = alloca i16
;-------------------------------
;----------Random Cond----------
  %.not34.i.i = icmp eq i32 4 , %rand_fin33 
  br i1 %.not34.i.i, label %next34, label %BB_14
next34:
;-------------------------------
  store i16 %xp9, i16* %fi.9

  %spi9 = ptrtoint i16* %fi.9 to i32
  store i32 %spi9, i32* %12, align 4
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i16 = load i32, i32* %13, align 16
  %arg2.i.i17 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i16, i32 %arg2.i.i17)
  %.not.i27.i = icmp eq i32 %58, 0
  br i1 %.not.i27.i, label %BB_8049472.i, label %.exit

.exit:                                            ; preds = %BB_8049453.i, %BB_8049472.i, %BB_804944C.i, %BB_8049426.i
  ret void
.escape.10:
  ret void
BB_14:
  ret void
.escape.64:
  ret void
.escape.65:
  ret void
}

define internal fastcc void @substring536(i32 %arg_esp) unnamed_addr  norecurse  !retregs !125 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -164
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i85.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i89.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i89.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i90.i = add i32 %tmp0_v.i3.i, -141
  %10 = inttoptr i32 %tmp2_v3.i90.i to i32*
  store i32 758132785, i32* %10, align 4
  %tmp2_v4.i91.i = add i32 %tmp0_v.i3.i, -137
  %11 = inttoptr i32 %tmp2_v4.i91.i to i32*
  store i32 758133812, i32* %11, align 4
  %tmp2_v5.i92.i = add i32 %tmp0_v.i3.i, -133
  %12 = inttoptr i32 %tmp2_v5.i92.i to i32*
  store i32 892808752, i32* %12, align 4
  %tmp2_v6.i93.i = add i32 %tmp0_v.i3.i, -129
  %13 = inttoptr i32 %tmp2_v6.i93.i to i32*
  store i32 875769136, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -125
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1093481523, i32* %14, align 4
  %tmp2_v8.i94.i = add i32 %tmp0_v.i3.i, -121
  %15 = inttoptr i32 %tmp2_v8.i94.i to i8*
  store i8 0, i8* %15, align 1
  store i32 3, i32* %6, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -168
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i3.i, -154
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -172
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v11.i.i, i32* %17, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i3.i, -176
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i90.i, i32* %18, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -180
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517321, i32* %19, align 4
  %tmp2_v.i21.i.i = add i32 %tmp0_v.i3.i, -184
  %20 = inttoptr i32 %tmp2_v.i21.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %20, align 8
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i3.i, -188
  %21 = inttoptr i32 %tmp2_v1.i23.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -212
  %22 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517592, i32* %22, align 4
  %23 = load i32, i32* %18, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i3.i, -224
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp2_v4.i19.i.i = add i32 %tmp0_v.i3.i, -228
  %25 = inttoptr i32 %tmp2_v4.i19.i.i to i32*
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i = load i32, i32* %24, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i.i)
  %27 = load i32, i32* %16, align 8
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %BB_804937C.i.i, label %BB_8049374.i.i

BB_80493AD.i.i:                                   ; preds = %BB_8049385.i.i
  %29 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i = add i32 %29, %tmp0_v15.i.i.i
  %30 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i = add i32 %tmp0_v3.i.i.i, %30
  %31 = inttoptr i32 %tmp0_v6.i.i.i to i8*
  %32 = load i8, i8* %31, align 1
  %.not.i.i.i = icmp eq i8 %32, 0
  br i1 %.not.i.i.i, label %BB_80493C3.i.i, label %BB_8049385.i.i

BB_8049385.i.i:                                   ; preds = %BB_80493AD.i.i.preheader, %BB_80493AD.i.i
  %33 = phi i8 [ %32, %BB_80493AD.i.i ], [ %45, %BB_80493AD.i.i.preheader ]
  %storemerge24.i159 = phi i32 [ %tmp0_v15.i.i.i, %BB_80493AD.i.i ], [ 0, %BB_80493AD.i.i.preheader ]
  %34 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i = add i32 %34, %storemerge24.i159
  %35 = inttoptr i32 %tmp0_v11.i.i.i to i8*
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %40, align 4
  %tmp0_v15.i.i.i = add i32 %36, 1
  store i32 %tmp0_v15.i.i.i, i32* %40, align 4
  %37 = load i32, i32* %6, align 4
  %.not.i55.i.i = icmp slt i32 %tmp0_v15.i.i.i, %37
  br i1 %.not.i55.i.i, label %BB_80493AD.i.i, label %BB_80493C3.i.i

BB_8049374.i.i:                                   ; preds = %.exit
  %38 = load i32, i32* %17, align 4
  br label %Func_substring.exit

BB_80493C3.i.i:                                   ; preds = %BB_80493AD.i.i.preheader, %BB_804937C.i.i, %BB_8049385.i.i, %BB_80493AD.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i2.i, %BB_804937C.i.i ], [ %tmp2_v.i2.i, %BB_80493AD.i.i.preheader ], [ %storemerge24.i159, %BB_8049385.i.i ], [ %storemerge24.i159, %BB_80493AD.i.i ]
  %.lcssa.i = phi i32 [ %41, %BB_804937C.i.i ], [ %41, %BB_80493AD.i.i.preheader ], [ %37, %BB_8049385.i.i ], [ %37, %BB_80493AD.i.i ]
  %39 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i = add i32 %39, %.lcssa.i
  br label %Func_substring.exit

BB_804937C.i.i:                                   ; preds = %.exit
  %tmp2_v.i58.i.i = add i32 %tmp0_v.i3.i, -196
  %40 = inttoptr i32 %tmp2_v.i58.i.i to i32*
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %.not.i55.i23.i = icmp sgt i32 %41, 0
  br i1 %.not.i55.i23.i, label %BB_80493AD.i.i.preheader, label %BB_80493C3.i.i

BB_80493AD.i.i.preheader:                         ; preds = %BB_804937C.i.i
  %42 = load i32, i32* %16, align 8
  %43 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i157 = add i32 %42, %43
  %44 = inttoptr i32 %tmp0_v6.i.i.i157 to i8*
  %45 = load i8, i8* %44, align 1
  %.not.i.i.i158 = icmp eq i8 %45, 0
  br i1 %.not.i.i.i158, label %BB_80493C3.i.i, label %BB_8049385.i.i

Func_substring.exit:                              ; preds = %BB_80493C3.i.i, %BB_8049374.i.i
  %tmp0_v3.i43.i.sink.i = phi i32 [ %tmp0_v3.i43.i.i, %BB_80493C3.i.i ], [ %38, %BB_8049374.i.i ]
  %r_ecx.1.i = phi i32 [ %r_ecx.0.lcssa.i, %BB_80493C3.i.i ], [ %tmp2_v.i2.i, %BB_8049374.i.i ]
  %46 = inttoptr i32 %tmp0_v3.i43.i.sink.i to i8*
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %20, align 8
  store i32 3, i32* %6, align 4
  store i32 4, i32* %16, align 8
  %tmp2_v2.i72.i = add i32 %48, -142
  store i32 %tmp2_v2.i72.i, i32* %17, align 4
  %tmp2_v4.i74.i = add i32 %48, -133
  store i32 %tmp2_v4.i74.i, i32* %18, align 16
  store i32 134517347, i32* %19, align 4
  store i32 %48, i32* %20, align 8
  store i32 %47, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %49 = load i32, i32* %18, align 16
  store i32 %49, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i8 = load i32, i32* %24, align 16
  %50 = tail call i32 @strlen(i32 %arg.i.i.i8)
  %51 = load i32, i32* %16, align 8
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %BB_804937C.i.i30, label %BB_8049374.i.i21

BB_80493AD.i.i15:                                 ; preds = %BB_8049385.i.i19
  %53 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i12 = add i32 %53, %tmp0_v15.i.i.i17
  %54 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i13 = add i32 %tmp0_v3.i.i.i12, %54
  %55 = inttoptr i32 %tmp0_v6.i.i.i13 to i8*
  %56 = load i8, i8* %55, align 1
  %.not.i.i.i14 = icmp eq i8 %56, 0
  br i1 %.not.i.i.i14, label %BB_80493C3.i.i25, label %BB_8049385.i.i19

BB_8049385.i.i19:                                 ; preds = %BB_80493AD.i.i15.preheader, %BB_80493AD.i.i15
  %57 = phi i8 [ %56, %BB_80493AD.i.i15 ], [ %69, %BB_80493AD.i.i15.preheader ]
  %storemerge24.i11165 = phi i32 [ %tmp0_v15.i.i.i17, %BB_80493AD.i.i15 ], [ 0, %BB_80493AD.i.i15.preheader ]
  %58 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i16 = add i32 %58, %storemerge24.i11165
  %59 = inttoptr i32 %tmp0_v11.i.i.i16 to i8*
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %64, align 4
  %tmp0_v15.i.i.i17 = add i32 %60, 1
  store i32 %tmp0_v15.i.i.i17, i32* %64, align 4
  %61 = load i32, i32* %6, align 4
  %.not.i55.i.i18 = icmp slt i32 %tmp0_v15.i.i.i17, %61
  br i1 %.not.i55.i.i18, label %BB_80493AD.i.i15, label %BB_80493C3.i.i25

BB_8049374.i.i21:                                 ; preds = %Func_substring.exit
  %62 = load i32, i32* %17, align 4
  br label %Func_substring.exit38

BB_80493C3.i.i25:                                 ; preds = %BB_80493AD.i.i15.preheader, %BB_804937C.i.i30, %BB_8049385.i.i19, %BB_80493AD.i.i15
  %r_ecx.0.lcssa.i22 = phi i32 [ %r_ecx.1.i, %BB_804937C.i.i30 ], [ %r_ecx.1.i, %BB_80493AD.i.i15.preheader ], [ %storemerge24.i11165, %BB_8049385.i.i19 ], [ %storemerge24.i11165, %BB_80493AD.i.i15 ]
  %.lcssa.i23 = phi i32 [ %65, %BB_804937C.i.i30 ], [ %65, %BB_80493AD.i.i15.preheader ], [ %61, %BB_8049385.i.i19 ], [ %61, %BB_80493AD.i.i15 ]
  %63 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i24 = add i32 %63, %.lcssa.i23
  br label %Func_substring.exit38

BB_804937C.i.i30:                                 ; preds = %Func_substring.exit
  %tmp2_v.i58.i.i26 = add i32 %tmp0_v.i3.i, -196
  %64 = inttoptr i32 %tmp2_v.i58.i.i26 to i32*
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %.not.i55.i23.i28 = icmp sgt i32 %65, 0
  br i1 %.not.i55.i23.i28, label %BB_80493AD.i.i15.preheader, label %BB_80493C3.i.i25

BB_80493AD.i.i15.preheader:                       ; preds = %BB_804937C.i.i30
  %66 = load i32, i32* %16, align 8
  %67 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i13163 = add i32 %66, %67
  %68 = inttoptr i32 %tmp0_v6.i.i.i13163 to i8*
  %69 = load i8, i8* %68, align 1
  %.not.i.i.i14164 = icmp eq i8 %69, 0
  br i1 %.not.i.i.i14164, label %BB_80493C3.i.i25, label %BB_8049385.i.i19

Func_substring.exit38:                            ; preds = %BB_80493C3.i.i25, %BB_8049374.i.i21
  %tmp0_v3.i43.i.sink.i31 = phi i32 [ %tmp0_v3.i43.i.i24, %BB_80493C3.i.i25 ], [ %62, %BB_8049374.i.i21 ]
  %r_ecx.1.i32 = phi i32 [ %r_ecx.0.lcssa.i22, %BB_80493C3.i.i25 ], [ %r_ecx.1.i, %BB_8049374.i.i21 ]
  %70 = inttoptr i32 %tmp0_v3.i43.i.sink.i31 to i8*
  store i8 0, i8* %70, align 1
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %20, align 8
  store i32 4, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i45.i = add i32 %72, -138
  store i32 %tmp2_v2.i45.i, i32* %17, align 4
  %tmp2_v4.i47.i = add i32 %72, -133
  store i32 %tmp2_v4.i47.i, i32* %18, align 16
  store i32 134517373, i32* %19, align 4
  store i32 %72, i32* %20, align 8
  store i32 %71, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %73 = load i32, i32* %18, align 16
  store i32 %73, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i44 = load i32, i32* %24, align 16
  %74 = tail call i32 @strlen(i32 %arg.i.i.i44)
  %75 = load i32, i32* %16, align 8
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %BB_804937C.i.i66, label %BB_8049374.i.i57

BB_80493AD.i.i51:                                 ; preds = %BB_8049385.i.i55
  %77 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i48 = add i32 %77, %tmp0_v15.i.i.i53
  %78 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i49 = add i32 %tmp0_v3.i.i.i48, %78
  %79 = inttoptr i32 %tmp0_v6.i.i.i49 to i8*
  %80 = load i8, i8* %79, align 1
  %.not.i.i.i50 = icmp eq i8 %80, 0
  br i1 %.not.i.i.i50, label %BB_80493C3.i.i61, label %BB_8049385.i.i55

BB_8049385.i.i55:                                 ; preds = %BB_80493AD.i.i51.preheader, %BB_80493AD.i.i51
  %81 = phi i8 [ %80, %BB_80493AD.i.i51 ], [ %93, %BB_80493AD.i.i51.preheader ]
  %storemerge24.i47172 = phi i32 [ %tmp0_v15.i.i.i53, %BB_80493AD.i.i51 ], [ 0, %BB_80493AD.i.i51.preheader ]
  %82 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i52 = add i32 %82, %storemerge24.i47172
  %83 = inttoptr i32 %tmp0_v11.i.i.i52 to i8*
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %88, align 4
  %tmp0_v15.i.i.i53 = add i32 %84, 1
  store i32 %tmp0_v15.i.i.i53, i32* %88, align 4
  %85 = load i32, i32* %6, align 4
  %.not.i55.i.i54 = icmp slt i32 %tmp0_v15.i.i.i53, %85
  br i1 %.not.i55.i.i54, label %BB_80493AD.i.i51, label %BB_80493C3.i.i61

BB_8049374.i.i57:                                 ; preds = %Func_substring.exit38
  %86 = load i32, i32* %17, align 4
  br label %Func_substring.exit74

BB_80493C3.i.i61:                                 ; preds = %BB_80493AD.i.i51.preheader, %BB_804937C.i.i66, %BB_8049385.i.i55, %BB_80493AD.i.i51
  %r_ecx.0.lcssa.i58 = phi i32 [ %r_ecx.1.i32, %BB_804937C.i.i66 ], [ %r_ecx.1.i32, %BB_80493AD.i.i51.preheader ], [ %storemerge24.i47172, %BB_8049385.i.i55 ], [ %storemerge24.i47172, %BB_80493AD.i.i51 ]
  %.lcssa.i59 = phi i32 [ %89, %BB_804937C.i.i66 ], [ %89, %BB_80493AD.i.i51.preheader ], [ %85, %BB_8049385.i.i55 ], [ %85, %BB_80493AD.i.i51 ]
  %87 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i60 = add i32 %87, %.lcssa.i59
  br label %Func_substring.exit74

BB_804937C.i.i66:                                 ; preds = %Func_substring.exit38
  %tmp2_v.i58.i.i62 = add i32 %tmp0_v.i3.i, -196
  %88 = inttoptr i32 %tmp2_v.i58.i.i62 to i32*
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %6, align 4
  %.not.i55.i23.i64 = icmp sgt i32 %89, 0
  br i1 %.not.i55.i23.i64, label %BB_80493AD.i.i51.preheader, label %BB_80493C3.i.i61

BB_80493AD.i.i51.preheader:                       ; preds = %BB_804937C.i.i66
  %90 = load i32, i32* %16, align 8
  %91 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i49170 = add i32 %90, %91
  %92 = inttoptr i32 %tmp0_v6.i.i.i49170 to i8*
  %93 = load i8, i8* %92, align 1
  %.not.i.i.i50171 = icmp eq i8 %93, 0
  br i1 %.not.i.i.i50171, label %BB_80493C3.i.i61, label %BB_8049385.i.i55

Func_substring.exit74:                            ; preds = %BB_80493C3.i.i61, %BB_8049374.i.i57
  %tmp0_v3.i43.i.sink.i67 = phi i32 [ %tmp0_v3.i43.i.i60, %BB_80493C3.i.i61 ], [ %86, %BB_8049374.i.i57 ]
  %r_ecx.1.i68 = phi i32 [ %r_ecx.0.lcssa.i58, %BB_80493C3.i.i61 ], [ %r_ecx.1.i32, %BB_8049374.i.i57 ]
  %r_edx.0.i69 = phi i32 [ %.lcssa.i59, %BB_80493C3.i.i61 ], [ %75, %BB_8049374.i.i57 ]
  %94 = inttoptr i32 %tmp0_v3.i43.i.sink.i67 to i8*
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 8
  %tmp2_v.i18.i = add i32 %96, -146
  store i32 %tmp2_v.i18.i, i32* %17, align 4
  %tmp2_v3.i21.i = add i32 %95, -8184
  store i32 %tmp2_v3.i21.i, i32* %18, align 16
  store i32 134517398, i32* %19, align 4
  %97 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %r_edx.0.i69, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !126
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  %tmp2_v.i53.i = add i32 %96, -142
  store i32 %tmp2_v.i53.i, i32* %17, align 4
  %tmp2_v3.i56.i = add i32 %95, -8174
  store i32 %tmp2_v3.i56.i, i32* %18, align 16
  store i32 134517423, i32* %19, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %99, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !126
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %tmp2_v.i62.i = add i32 %96, -138
  store i32 %tmp2_v.i62.i, i32* %17, align 4
  %tmp2_v3.i65.i = add i32 %95, -8164
  store i32 %tmp2_v3.i65.i, i32* %18, align 16
  store i32 134517448, i32* %19, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %102, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !126
  store i32 5, i32* %6, align 4
  store i32 200, i32* %16, align 8
  %tmp2_v2.i36.i = add i32 %96, -112
  store i32 %tmp2_v2.i36.i, i32* %17, align 4
  %tmp2_v4.i38.i = add i32 %96, -133
  store i32 %tmp2_v4.i38.i, i32* %18, align 16
  store i32 134517474, i32* %19, align 4
  store i32 %96, i32* %20, align 8
  store i32 %95, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %104 = load i32, i32* %18, align 16
  store i32 %104, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i84 = load i32, i32* %24, align 16
  %105 = tail call i32 @strlen(i32 %arg.i.i.i84)
  %106 = load i32, i32* %16, align 8
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %BB_804937C.i.i106, label %BB_8049374.i.i97

BB_80493AD.i.i91:                                 ; preds = %BB_8049385.i.i95
  %108 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i88 = add i32 %108, %tmp0_v15.i.i.i93
  %109 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i89 = add i32 %tmp0_v3.i.i.i88, %109
  %110 = inttoptr i32 %tmp0_v6.i.i.i89 to i8*
  %111 = load i8, i8* %110, align 1
  %.not.i.i.i90 = icmp eq i8 %111, 0
  br i1 %.not.i.i.i90, label %BB_80493C3.i.i101, label %BB_8049385.i.i95

BB_8049385.i.i95:                                 ; preds = %BB_80493AD.i.i91.preheader, %BB_80493AD.i.i91
  %112 = phi i8 [ %111, %BB_80493AD.i.i91 ], [ %124, %BB_80493AD.i.i91.preheader ]
  %storemerge24.i87179 = phi i32 [ %tmp0_v15.i.i.i93, %BB_80493AD.i.i91 ], [ 0, %BB_80493AD.i.i91.preheader ]
  %113 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i92 = add i32 %113, %storemerge24.i87179
  %114 = inttoptr i32 %tmp0_v11.i.i.i92 to i8*
  store i8 %112, i8* %114, align 1
  %115 = load i32, i32* %119, align 4
  %tmp0_v15.i.i.i93 = add i32 %115, 1
  store i32 %tmp0_v15.i.i.i93, i32* %119, align 4
  %116 = load i32, i32* %6, align 4
  %.not.i55.i.i94 = icmp slt i32 %tmp0_v15.i.i.i93, %116
  br i1 %.not.i55.i.i94, label %BB_80493AD.i.i91, label %BB_80493C3.i.i101

BB_8049374.i.i97:                                 ; preds = %Func_substring.exit74
  %117 = load i32, i32* %17, align 4
  br label %Func_substring.exit115

BB_80493C3.i.i101:                                ; preds = %BB_80493AD.i.i91.preheader, %BB_804937C.i.i106, %BB_8049385.i.i95, %BB_80493AD.i.i91
  %r_ecx.0.lcssa.i98 = phi i32 [ %r_ecx.1.i68, %BB_804937C.i.i106 ], [ %r_ecx.1.i68, %BB_80493AD.i.i91.preheader ], [ %storemerge24.i87179, %BB_8049385.i.i95 ], [ %storemerge24.i87179, %BB_80493AD.i.i91 ]
  %.lcssa.i99 = phi i32 [ %120, %BB_804937C.i.i106 ], [ %120, %BB_80493AD.i.i91.preheader ], [ %116, %BB_8049385.i.i95 ], [ %116, %BB_80493AD.i.i91 ]
  %118 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i100 = add i32 %118, %.lcssa.i99
  br label %Func_substring.exit115

BB_804937C.i.i106:                                ; preds = %Func_substring.exit74
  %tmp2_v.i58.i.i102 = add i32 %tmp0_v.i3.i, -196
  %119 = inttoptr i32 %tmp2_v.i58.i.i102 to i32*
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* %6, align 4
  %.not.i55.i23.i104 = icmp sgt i32 %120, 0
  br i1 %.not.i55.i23.i104, label %BB_80493AD.i.i91.preheader, label %BB_80493C3.i.i101

BB_80493AD.i.i91.preheader:                       ; preds = %BB_804937C.i.i106
  %121 = load i32, i32* %16, align 8
  %122 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i89177 = add i32 %121, %122
  %123 = inttoptr i32 %tmp0_v6.i.i.i89177 to i8*
  %124 = load i8, i8* %123, align 1
  %.not.i.i.i90178 = icmp eq i8 %124, 0
  br i1 %.not.i.i.i90178, label %BB_80493C3.i.i101, label %BB_8049385.i.i95

Func_substring.exit115:                           ; preds = %BB_80493C3.i.i101, %BB_8049374.i.i97
  %tmp0_v3.i43.i.sink.i107 = phi i32 [ %tmp0_v3.i43.i.i100, %BB_80493C3.i.i101 ], [ %117, %BB_8049374.i.i97 ]
  %r_ecx.1.i108 = phi i32 [ %r_ecx.0.lcssa.i98, %BB_80493C3.i.i101 ], [ %r_ecx.1.i68, %BB_8049374.i.i97 ]
  %r_edx.0.i109 = phi i32 [ %.lcssa.i99, %BB_80493C3.i.i101 ], [ %106, %BB_8049374.i.i97 ]
  %125 = inttoptr i32 %tmp0_v3.i43.i.sink.i107 to i8*
  store i8 0, i8* %125, align 1
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %20, align 8
  %tmp2_v.i100.i = add i32 %127, -112
  store i32 %tmp2_v.i100.i, i32* %17, align 4
  %tmp2_v3.i103.i = add i32 %126, -8154
  store i32 %tmp2_v3.i103.i, i32* %18, align 16
  store i32 134517496, i32* %19, align 4
  %128 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i108, i32 inreg noundef %r_edx.0.i109, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !126
  store i32 100, i32* %6, align 4
  store i32 14, i32* %16, align 8
  %tmp2_v2.i27.i = add i32 %127, -62
  store i32 %tmp2_v2.i27.i, i32* %17, align 4
  %tmp2_v4.i29.i = add i32 %127, -133
  store i32 %tmp2_v4.i29.i, i32* %18, align 16
  store i32 134517519, i32* %19, align 4
  store i32 %127, i32* %20, align 8
  store i32 %126, i32* %21, align 4
  store i32 134517592, i32* %22, align 4
  %129 = load i32, i32* %18, align 16
  store i32 %129, i32* %24, align 16
  store i32 134517610, i32* %25, align 4
  %arg.i.i.i123 = load i32, i32* %24, align 16
  %130 = tail call i32 @strlen(i32 %arg.i.i.i123)
  %131 = load i32, i32* %16, align 8
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %BB_804937C.i.i145, label %BB_8049374.i.i136

BB_80493AD.i.i130:                                ; preds = %BB_8049385.i.i134
  %133 = load i32, i32* %16, align 8
  %tmp0_v3.i.i.i127 = add i32 %133, %tmp0_v15.i.i.i132
  %134 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i128 = add i32 %tmp0_v3.i.i.i127, %134
  %135 = inttoptr i32 %tmp0_v6.i.i.i128 to i8*
  %136 = load i8, i8* %135, align 1
  %.not.i.i.i129 = icmp eq i8 %136, 0
  br i1 %.not.i.i.i129, label %BB_80493C3.i.i140, label %BB_8049385.i.i134

BB_8049385.i.i134:                                ; preds = %BB_80493AD.i.i130.preheader, %BB_80493AD.i.i130
  %137 = phi i8 [ %136, %BB_80493AD.i.i130 ], [ %149, %BB_80493AD.i.i130.preheader ]
  %storemerge24.i126186 = phi i32 [ %tmp0_v15.i.i.i132, %BB_80493AD.i.i130 ], [ 0, %BB_80493AD.i.i130.preheader ]
  %138 = load i32, i32* %17, align 4
  %tmp0_v11.i.i.i131 = add i32 %138, %storemerge24.i126186
  %139 = inttoptr i32 %tmp0_v11.i.i.i131 to i8*
  store i8 %137, i8* %139, align 1
  %140 = load i32, i32* %144, align 4
  %tmp0_v15.i.i.i132 = add i32 %140, 1
  store i32 %tmp0_v15.i.i.i132, i32* %144, align 4
  %141 = load i32, i32* %6, align 4
  %.not.i55.i.i133 = icmp slt i32 %tmp0_v15.i.i.i132, %141
  br i1 %.not.i55.i.i133, label %BB_80493AD.i.i130, label %BB_80493C3.i.i140

BB_8049374.i.i136:                                ; preds = %Func_substring.exit115
  %142 = load i32, i32* %17, align 4
  br label %Func_substring.exit154

BB_80493C3.i.i140:                                ; preds = %BB_80493AD.i.i130.preheader, %BB_804937C.i.i145, %BB_8049385.i.i134, %BB_80493AD.i.i130
  %r_ecx.0.lcssa.i137 = phi i32 [ %r_ecx.1.i108, %BB_804937C.i.i145 ], [ %r_ecx.1.i108, %BB_80493AD.i.i130.preheader ], [ %storemerge24.i126186, %BB_8049385.i.i134 ], [ %storemerge24.i126186, %BB_80493AD.i.i130 ]
  %.lcssa.i138 = phi i32 [ %145, %BB_804937C.i.i145 ], [ %145, %BB_80493AD.i.i130.preheader ], [ %141, %BB_8049385.i.i134 ], [ %141, %BB_80493AD.i.i130 ]
  %143 = load i32, i32* %17, align 4
  %tmp0_v3.i43.i.i139 = add i32 %143, %.lcssa.i138
  br label %Func_substring.exit154

BB_804937C.i.i145:                                ; preds = %Func_substring.exit115
  %tmp2_v.i58.i.i141 = add i32 %tmp0_v.i3.i, -196
  %144 = inttoptr i32 %tmp2_v.i58.i.i141 to i32*
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* %6, align 4
  %.not.i55.i23.i143 = icmp sgt i32 %145, 0
  br i1 %.not.i55.i23.i143, label %BB_80493AD.i.i130.preheader, label %BB_80493C3.i.i140

BB_80493AD.i.i130.preheader:                      ; preds = %BB_804937C.i.i145
  %146 = load i32, i32* %16, align 8
  %147 = load i32, i32* %18, align 16
  %tmp0_v6.i.i.i128184 = add i32 %146, %147
  %148 = inttoptr i32 %tmp0_v6.i.i.i128184 to i8*
  %149 = load i8, i8* %148, align 1
  %.not.i.i.i129185 = icmp eq i8 %149, 0
  br i1 %.not.i.i.i129185, label %BB_80493C3.i.i140, label %BB_8049385.i.i134

Func_substring.exit154:                           ; preds = %BB_80493C3.i.i140, %BB_8049374.i.i136
  %tmp0_v3.i43.i.sink.i146 = phi i32 [ %tmp0_v3.i43.i.i139, %BB_80493C3.i.i140 ], [ %142, %BB_8049374.i.i136 ]
  %r_ecx.1.i147 = phi i32 [ %r_ecx.0.lcssa.i137, %BB_80493C3.i.i140 ], [ %r_ecx.1.i108, %BB_8049374.i.i136 ]
  %r_edx.0.i148 = phi i32 [ %.lcssa.i138, %BB_80493C3.i.i140 ], [ %131, %BB_8049374.i.i136 ]
  %150 = inttoptr i32 %tmp0_v3.i43.i.sink.i146 to i8*
  store i8 0, i8* %150, align 1
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %20, align 8
  %tmp2_v.i.i = add i32 %152, -62
  store i32 %tmp2_v.i.i, i32* %17, align 4
  %tmp2_v3.i.i = add i32 %151, -8141
  store i32 %tmp2_v3.i.i, i32* %18, align 16
  store i32 134517541, i32* %19, align 4
  %153 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i147, i32 inreg noundef %r_edx.0.i148, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !126
  ret void
}
define internal fastcc void @string_append733(i32 %arg_esp) unnamed_addr  norecurse  !retregs !111 {
.exit:
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
  %tmp2_v8.i61.i = add i32 %tmp0_v.i53.i, -68
  %6 = inttoptr i32 %tmp2_v8.i61.i to i32*
  store i32 134517329, i32* %6, align 4
  %tmp4_v.i23.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i27.i = add i32 %tmp0_v.i53.i, -20
  %9 = inttoptr i32 %tmp2_v2.i27.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i53.i, -40
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936877894, i32* %10, align 8
  %tmp2_v4.i28.i = add i32 %tmp0_v.i53.i, -36
  %11 = inttoptr i32 %tmp2_v4.i28.i to i32*
  store i32 8308, i32* %11, align 4
  %tmp2_v5.i29.i = add i32 %tmp0_v.i53.i, -32
  %12 = inttoptr i32 %tmp2_v5.i29.i to i32*
  store i32 0, i32* %12, align 16
  %tmp2_v6.i.i = add i32 %tmp0_v.i53.i, -28
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %13, align 4
  %tmp2_v7.i30.i = add i32 %tmp0_v.i53.i, -24
  %14 = inttoptr i32 %tmp2_v7.i30.i to i32*
  store i32 0, i32* %14, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i53.i, -50
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 1868784979, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i53.i, -46
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 25710, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i53.i, -42
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 0, i16* %17, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i53.i, -76
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v8.i.i, i32* %18, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i53.i, -80
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i53.i, -84
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517417, i32* %20, align 4
  %arg.i.i = load i32, i32* %19, align 16
  %arg2.i.i = load i32, i32* %18, align 4
  %21 = tail call i32 @strcat(i32 %arg.i.i, i32 %arg2.i.i)
  store i32 %tmp2_v3.i.i, i32* %18, align 4
  %spi.bis.731 = ptrtoint[11 x i8]* @str.bis.731 to i32
  store i32 %spi.bis.731, i32* %19, align 16
  store i32 134517439, i32* %20, align 4
  %22 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i52.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !112
  %tmp2_v.i44.i = add i32 %tmp0_v.i53.i, -59
  %23 = inttoptr i32 %tmp2_v.i44.i to i32*
  store i32 6513249, i32* %23, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i53.i, -55
  %24 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2054781047, i32* %24, align 4
  %tmp2_v2.i45.i = add i32 %tmp0_v.i53.i, -51
  %25 = inttoptr i32 %tmp2_v2.i45.i to i8*
  store i8 0, i8* %25, align 1
  store i32 %tmp2_v1.i.i, i32* %18, align 4
  store i32 %tmp2_v.i44.i, i32* %19, align 16
  store i32 134517476, i32* %20, align 4
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i53.i, -88
  %26 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 %tmp2_v4.i56.i, i32* %26, align 8
  %tmp2_v1.i22.i.i = add i32 %tmp0_v.i53.i, -92
  %27 = inttoptr i32 %tmp2_v1.i22.i.i to i32*
  store i32 134529024, i32* %27, align 4
  %tmp2_v2.i25.i.i = add i32 %tmp0_v.i53.i, -132
  %28 = inttoptr i32 %tmp2_v2.i25.i.i to i32*
  store i32 134517565, i32* %28, align 4
  %29 = load i32, i32* %19, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i53.i, -144
  %30 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i53.i, -148
  %31 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517582, i32* %31, align 4
  %arg.i.i.i = load i32, i32* %30, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i53.i, -112
  %33 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %30, align 16
  store i32 134517599, i32* %31, align 4
  %arg.i.i31.i = load i32, i32* %30, align 16
  %35 = tail call i32 @strlen(i32 %arg.i.i31.i)
  %tmp2_v.i14.i.i = add i32 %tmp0_v.i53.i, -108
  %36 = inttoptr i32 %tmp2_v.i14.i.i to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %33, align 16
  %tmp0_v5.i.i.i = add i32 %35, 1
  %tmp0_v6.i.i.i = add i32 %tmp0_v5.i.i.i, %37
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i53.i, -104
  %38 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %tmp0_v6.i.i.i, i32* %38, align 8
  %tmp2_v11.i.i.i = add i32 %tmp0_v.i53.i, -140
  %39 = inttoptr i32 %tmp2_v11.i.i.i to i32*
  store i32 1, i32* %39, align 4
  store i32 %tmp0_v6.i.i.i, i32* %30, align 16
  store i32 134517633, i32* %31, align 4
  %arg.i.i33.i = load i32, i32* %30, align 16
  %arg2.i.i.i = load i32, i32* %39, align 4
  %40 = tail call i32 @calloc(i32 %arg.i.i33.i, i32 %arg2.i.i.i)
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i53.i, -100
  %41 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %40, i32* %41, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i53.i, -120
  %42 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %33, align 16
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_8049390.i.i, label %BB_80493B1.i.i

BB_80493BA.i.i:                                   ; preds = %BB_80493B1.i.i, %BB_80493BA.i.i
  %storemerge2735.i = phi i32 [ %tmp0_v15.i.i.i, %BB_80493BA.i.i ], [ 0, %BB_80493B1.i.i ]
  %45 = load i32, i32* %18, align 4
  %tmp0_v3.i42.i.i = add i32 %45, %storemerge2735.i
  %46 = load i32, i32* %33, align 16
  %tmp0_v8.i.i.i = add i32 %46, %storemerge2735.i
  %47 = load i32, i32* %41, align 4
  %tmp0_v11.i.i.i = add i32 %47, %tmp0_v8.i.i.i
  %48 = inttoptr i32 %tmp0_v3.i42.i.i to i8*
  %49 = load i8, i8* %48, align 1
  %50 = inttoptr i32 %tmp0_v11.i.i.i to i8*
  store i8 %49, i8* %50, align 1
  %51 = load i32, i32* %54, align 4
  %tmp0_v15.i.i.i = add i32 %51, 1
  store i32 %tmp0_v15.i.i.i, i32* %54, align 4
  %52 = load i32, i32* %36, align 4
  %53 = icmp slt i32 %tmp0_v15.i.i.i, %52
  br i1 %53, label %BB_80493BA.i.i, label %Func_string_append.exit

BB_80493B1.i.i:                                   ; preds = %BB_8049390.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i52.i, %.exit ], [ %storemerge34.i, %BB_8049390.i.i ]
  %tmp2_v.i51.i.i = add i32 %tmp0_v.i53.i, -116
  %54 = inttoptr i32 %tmp2_v.i51.i.i to i32*
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %36, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %BB_80493BA.i.i, label %Func_string_append.exit

BB_8049390.i.i:                                   ; preds = %BB_8049390.i.i, %.exit
  %storemerge34.i = phi i32 [ %tmp0_v12.i65.i.i, %BB_8049390.i.i ], [ 0, %.exit ]
  %57 = load i32, i32* %19, align 16
  %tmp0_v3.i57.i.i = add i32 %57, %storemerge34.i
  %58 = load i32, i32* %41, align 4
  %tmp0_v8.i62.i.i = add i32 %58, %storemerge34.i
  %59 = inttoptr i32 %tmp0_v3.i57.i.i to i8*
  %60 = load i8, i8* %59, align 1
  %61 = inttoptr i32 %tmp0_v8.i62.i.i to i8*
  store i8 %60, i8* %61, align 1
  %62 = load i32, i32* %42, align 8
  %tmp0_v12.i65.i.i = add i32 %62, 1
  store i32 %tmp0_v12.i65.i.i, i32* %42, align 8
  %63 = load i32, i32* %33, align 16
  %64 = icmp slt i32 %tmp0_v12.i65.i.i, %63
  br i1 %64, label %BB_8049390.i.i, label %BB_80493B1.i.i

Func_string_append.exit:                          ; preds = %BB_80493B1.i.i, %BB_80493BA.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.1.lcssa.i, %BB_80493B1.i.i ], [ %tmp0_v8.i.i.i, %BB_80493BA.i.i ]
  %65 = load i32, i32* %38, align 8
  %tmp2_v1.i74.i.i = add i32 %65, -1
  %66 = load i32, i32* %41, align 4
  %tmp0_v4.i77.i.i = add i32 %66, %tmp2_v1.i74.i.i
  %67 = inttoptr i32 %tmp0_v4.i77.i.i to i8*
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %41, align 4
  %69 = load i32, i32* %27, align 4
  %70 = load i32, i32* %26, align 8
  %tmp2_v.i9.i = add i32 %70, -56
  %71 = inttoptr i32 %tmp2_v.i9.i to i32*
  store i32 %68, i32* %71, align 4
  store i32 %68, i32* %18, align 4
  %tmp2_v5.i.i = add i32 %69, -8173
  store i32 %tmp2_v5.i.i, i32* %19, align 16
  store i32 134517500, i32* %20, align 4
  %72 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp2_v1.i74.i.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !112
  %73 = load i32, i32* %71, align 4
  store i32 %73, i32* %19, align 16
  store i32 134517514, i32* %20, align 4
  %arg.i.i3 = load i32, i32* %19, align 16
  tail call void @free(i32 %arg.i.i3)
  ret void
}
define internal fastcc void @array_basics922(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !97 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -68
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i17.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i.i, -40
  %11 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 91, i32* %11, align 8
  %tmp2_v4.i22.i = add i32 %tmp0_v.i.i, -36
  %12 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 82, i32* %12, align 4
  %tmp2_v5.i23.i = add i32 %tmp0_v.i.i, -32
  %13 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 73, i32* %13, align 16
  %tmp2_v6.i24.i = add i32 %tmp0_v.i.i, -28
  %14 = inttoptr i32 %tmp2_v6.i24.i to i32*
  store i32 64, i32* %14, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -24
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 55, i32* %15, align 8
  %tmp2_v8.i25.i = add i32 %tmp0_v.i.i, -56
  %16 = inttoptr i32 %tmp2_v8.i25.i to i32*
  %tmp2_v5.i45.i = add i32 %tmp0_v.i.i, -72
  %17 = inttoptr i32 %tmp2_v5.i45.i to i32*
  %tmp2_v8.i48.i = add i32 %tmp0_v.i.i, -76
  %18 = inttoptr i32 %tmp2_v8.i48.i to i32*
  %tmp2_v10.i50.i = add i32 %tmp0_v.i.i, -80
  %19 = inttoptr i32 %tmp2_v10.i50.i to i32*
  %tmp2_v11.i51.i = add i32 %tmp0_v.i.i, -84
  %20 = inttoptr i32 %tmp2_v11.i51.i to i32*
  store i32 0, i32* %16, align 8
  br label %BB_804920E.i

BB_8049259.i:                                     ; preds = %BB_8049245.i
  %21 = load i32, i32* %25, align 4
  %tmp16_v.i.i = sext i32 %21 to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 1717986919
  %tmp15_v1.i.i = lshr i64 %tmp15_v.i.i, 32
  %22 = trunc i64 %tmp15_v1.i.i to i32
  %tmp0_v3.i.i = ashr i32 %22, 1
  %tmp0_v4.i.i.neg = lshr i32 %21, 31
  %tmp0_v5.i.i = add nsw i32 %tmp0_v3.i.i, %tmp0_v4.i.i.neg
  %tmp2_v6.i4.i = add i32 %tmp0_v.i.i, -44
  %23 = inttoptr i32 %tmp2_v6.i4.i to i32*
  store i32 %tmp0_v5.i.i, i32* %23, align 4
  store i32 %tmp0_v5.i.i, i32* %18, align 4
  %spi.bis.920 = ptrtoint[13 x i8]* @str.bis.920 to i32
  store i32 %spi.bis.920, i32* %19, align 16
  store i32 134517381, i32* %20, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %21, i32 inreg noundef %tmp0_v5.i.i, i32 noundef %tmp2_v10.i50.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !98
  ret void

BB_8049235.i:                                     ; preds = %BB_804920E.i
  %tmp2_v.i27.i = add i32 %tmp0_v.i.i, -52
  %25 = inttoptr i32 %tmp2_v.i27.i to i32*
  store i32 0, i32* %25, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i.i, -48
  %26 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %26, align 16
  br label %BB_8049245.i

BB_804920E.i:                                     ; preds = %BB_804920E.i, %0
  %r_edx.08 = phi i32 [ 0, %0 ], [ %32, %BB_804920E.i ]
  %storemerge17 = phi i32 [ 0, %0 ], [ %tmp0_v2.i80.i, %BB_804920E.i ]
  %tmp4_v.i40.i = shl i32 %storemerge17, 2
  %tmp2_v2.i41.i = add i32 %tmp4_v.i40.i, %tmp2_v3.i21.i
  %27 = inttoptr i32 %tmp2_v2.i41.i to i32*
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %17, align 8
  %29 = load i32, i32* %16, align 8
  store i32 %29, i32* %18, align 4
  %spi.bis.919 = ptrtoint[16 x i8]* @str.bis.919 to i32
  store i32 %spi.bis.919, i32* %19, align 16
  store i32 134517288, i32* %20, align 4
  %30 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %r_edx.08, i32 noundef %tmp2_v10.i50.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !98
  %31 = lshr i64 %30, 32
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %16, align 8
  %tmp0_v2.i80.i = add i32 %33, 1
  store i32 %tmp0_v2.i80.i, i32* %16, align 8
  %34 = icmp slt i32 %tmp0_v2.i80.i, 5
  br i1 %34, label %BB_804920E.i, label %BB_8049235.i

BB_8049245.i:                                     ; preds = %BB_8049245.i, %BB_8049235.i
  %storemerge9 = phi i32 [ 0, %BB_8049235.i ], [ %tmp0_v9.i62.i, %BB_8049245.i ]
  %tmp4_v.i56.i = shl i32 %storemerge9, 2
  %tmp2_v2.i57.i = add i32 %tmp4_v.i56.i, %tmp2_v3.i21.i
  %35 = inttoptr i32 %tmp2_v2.i57.i to i32*
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %25, align 4
  %tmp0_v6.i.i = add i32 %37, %36
  store i32 %tmp0_v6.i.i, i32* %25, align 4
  %38 = load i32, i32* %26, align 16
  %tmp0_v9.i62.i = add i32 %38, 1
  store i32 %tmp0_v9.i62.i, i32* %26, align 16
  %39 = icmp slt i32 %tmp0_v9.i62.i, 5
  br i1 %39, label %BB_8049245.i, label %BB_8049259.i
}
define internal fastcc void @print_debugging512(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !83 {
Func_80492A5.exit.i:
  %tmp2_v.i30.i = add i32 %arg_esp, 4
  %tmp0_v.i31.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i32.i = add i32 %tmp0_v.i31.i, -4
  %2 = inttoptr i32 %tmp2_v3.i32.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i33.i = add i32 %tmp0_v.i31.i, -8
  %3 = inttoptr i32 %tmp2_v4.i33.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i35.i = add i32 %tmp0_v.i31.i, -12
  %4 = inttoptr i32 %tmp2_v5.i35.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i37.i = add i32 %tmp0_v.i31.i, -16
  %5 = inttoptr i32 %tmp2_v6.i37.i to i32*
  store i32 %tmp2_v.i30.i, i32* %5, align 16
  %tmp2_v8.i38.i = add i32 %tmp0_v.i31.i, -84
  %6 = inttoptr i32 %tmp2_v8.i38.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i12.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i16.i = add i32 %tmp0_v.i31.i, -20
  %9 = inttoptr i32 %tmp2_v2.i16.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i31.i, -60
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v4.i17.i = add i32 %tmp0_v.i31.i, -56
  %11 = inttoptr i32 %tmp2_v4.i17.i to i32*
  store i32 3, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i31.i, -52
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 6, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i31.i, -48
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 5, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i31.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 7, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i31.i, -40
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i31.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 9, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i31.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 8, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i31.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i31.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 2, i32* %19, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i31.i, -64
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %20, align 16
  %21 = load i32, i32* %10, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i31.i, -72
  %22 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %21, i32* %22, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i31.i, -92
  %23 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 %21, i32* %23, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i31.i, -96
  %24 = inttoptr i32 %tmp2_v22.i.i to i32*
  %spi.bis.510 = ptrtoint[17 x i8]* @str.bis.510 to i32
  store i32 %spi.bis.510, i32* %24, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i31.i, -100
  %25 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517319, i32* %25, align 4
  %26 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i30.i, i32 inreg noundef 0, i32 noundef %tmp2_v22.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !84
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  %tmp2_v.i.i = add i32 %tmp0_v.i31.i, -68
  %29 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %22, align 8
  store i32 %30, i32* %23, align 4
  %spi.bis.509 = ptrtoint[9 x i8]* @str.bis.509 to i32
  store i32 %spi.bis.509, i32* %24, align 16
  store i32 134517439, i32* %25, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i30.i, i32 inreg noundef %28, i32 noundef %tmp2_v22.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !84
  ret void
}
define internal fastcc { i32, i32, i32, i32 } @Func_sum(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !68 {
Func_80491F2.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -16
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517234, i32* %1, align 4
  %tmp2_v.i11.i = add i32 %arg_esp, 4
  %2 = inttoptr i32 %tmp2_v.i11.i to i32*
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %Func_80491F2.exit.i..exit_crit_edge, label %BB_80491FD.i

Func_80491F2.exit.i..exit_crit_edge:              ; preds = %Func_80491F2.exit.i
  %.pre1 = add i32 %arg_esp, 4
  br label %.exit

BB_80491FD.i:                                     ; preds = %Func_80491F2.exit.i
  %tmp0_v1.i21.i = add nsw i32 %3, -1
  %tmp2_v3.i.i = add i32 %arg_esp, -28
  %5 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %tmp0_v1.i21.i, i32* %5, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -32
  %6 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517260, i32* %6, align 4
  %7 = tail call fastcc { i32, i32, i32, i32 } @Func_sum(i32 %tmp2_v4.i.i, i32 %tmp2_v.i.i)
  %8 = extractvalue { i32, i32, i32, i32 } %7, 1
  %9 = extractvalue { i32, i32, i32, i32 } %7, 3
  %tmp2_v.i6.i = add i32 %9, 8
  %10 = inttoptr i32 %tmp2_v.i6.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp0_v2.i.i = add i32 %8, %11
  %.pre = inttoptr i32 %9 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_80491FD.i, %Func_80491F2.exit.i..exit_crit_edge
  %tmp4_v2.i17.i.pre-phi = phi i32 [ %.pre1, %Func_80491F2.exit.i..exit_crit_edge ], [ %tmp2_v.i6.i, %BB_80491FD.i ]
  %.pre-phi = phi i32* [ %0, %Func_80491F2.exit.i..exit_crit_edge ], [ %.pre, %BB_80491FD.i ]
  %r_edx.0 = phi i32 [ 0, %Func_80491F2.exit.i..exit_crit_edge ], [ %11, %BB_80491FD.i ]
  %r_eax.0 = phi i32 [ 0, %Func_80491F2.exit.i..exit_crit_edge ], [ %tmp0_v2.i.i, %BB_80491FD.i ]
  %12 = load i32, i32* %.pre-phi, align 4
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp4_v2.i17.i.pre-phi, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %r_edx.0, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %12, 3
  ret { i32, i32, i32, i32 } %mrv3
}
define internal fastcc void @sum_naturals726(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !69 {
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
  store i32 134517166, i32* %7, align 4
  %tmp2_v.i17.i = add i32 %tmp0_v.i.i, -32
  %8 = inttoptr i32 %tmp2_v.i17.i to i32*
  store i32 5, i32* %8, align 16
  %tmp2_v2.i18.i = add i32 %tmp0_v.i.i, -36
  %9 = inttoptr i32 %tmp2_v2.i18.i to i32*
  store i32 134517182, i32* %9, align 4
  %10 = tail call fastcc { i32, i32, i32, i32 } @Func_sum(i32 %tmp2_v2.i18.i, i32 %tmp2_v4.i.i)
  %11 = extractvalue { i32, i32, i32, i32 } %10, 0
  %12 = extractvalue { i32, i32, i32, i32 } %10, 1
  %13 = extractvalue { i32, i32, i32, i32 } %10, 2
  %tmp2_v.i3.i = add i32 %11, 4
  %14 = inttoptr i32 %tmp2_v.i3.i to i32*
  store i32 %12, i32* %14, align 4
  %15 = inttoptr i32 %11 to i32*
  %spi.bis.724 = ptrtoint[4 x i8]* @str.bis.724 to i32
  store i32 %spi.bis.724, i32* %15, align 4
  %tmp2_v4.i5.i = add i32 %11, -4
  %16 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 134517201, i32* %16, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %13, i32 noundef %11, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !70
  ret void
}
define internal fastcc void @functions956(i32 %arg_esp) unnamed_addr  norecurse  !retregs !54 {
  %tmp2_v.i46.i = add i32 %arg_esp, 4
  %tmp0_v.i47.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i49.i = add i32 %tmp0_v.i47.i, -4
  %3 = inttoptr i32 %tmp2_v3.i49.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i50.i = add i32 %tmp0_v.i47.i, -8
  %4 = inttoptr i32 %tmp2_v4.i50.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i52.i = add i32 %tmp0_v.i47.i, -12
  %5 = inttoptr i32 %tmp2_v5.i52.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i47.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i46.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i47.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i47.i, -48
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  %spi.bis.954 = ptrtoint[14 x i8]* @str.bis.954 to i32
  store i32 %spi.bis.954, i32* %8, align 16
  %tmp2_v3.i.i = add i32 %tmp0_v.i47.i, -52
  %9 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 134517222, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  %spi.bis.953 = ptrtoint[27 x i8]* @str.bis.953 to i32
  store i32 %spi.bis.953, i32* %8, align 16
  store i32 134517240, i32* %9, align 4
  %arg.i.i1 = load i32, i32* %8, align 16
  %12 = inttoptr i32 %arg.i.i1 to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
  %tmp2_v.i43.i = add i32 %tmp0_v.i47.i, -44
  %14 = inttoptr i32 %tmp2_v.i43.i to i32*
  store i32 5, i32* %14, align 4
  store i32 4, i32* %8, align 16
  store i32 134517255, i32* %9, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i47.i, -56
  %15 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i50.i, i32* %15, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i47.i, -76
  %16 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517364, i32* %16, align 4
  %17 = load i32, i32* %8, align 16
  %18 = load i32, i32* %14, align 4
  %tmp0_v4.i.i.i = add i32 %18, %17
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i47.i, -60
  %19 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %tmp0_v4.i.i.i, i32* %19, align 4
  %20 = load i32, i32* %15, align 8
  %tmp2_v.i27.i = add i32 %20, -16
  %21 = inttoptr i32 %tmp2_v.i27.i to i32*
  store i32 %tmp0_v4.i.i.i, i32* %21, align 4
  store i32 %tmp0_v4.i.i.i, i32* %14, align 4
  %spi.bis.952 = ptrtoint[12 x i8]* @str.bis.952 to i32
  store i32 %spi.bis.952, i32* %8, align 16
  store i32 134517279, i32* %9, align 4
  %22 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i46.i, i32 inreg noundef %17, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !55
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  store i32 7, i32* %14, align 4
  store i32 9, i32* %8, align 16
  store i32 134517294, i32* %9, align 4
  store i32 %20, i32* %15, align 8
  %spi.bis.951 = ptrtoint[4 x i8]* @str.bis.951 to i32
  store i32 %spi.bis.951, i32* %16, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i47.i, -64
  %25 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 0, i32* %25, align 16
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %8, align 16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %BB_80492AD.i.lr.ph.i, label %Func_mult.exit

BB_80492AD.i.lr.ph.i:                             ; preds = %0
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i47.i, -80
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  %tmp2_v5.i.i.i5 = add i32 %tmp0_v.i47.i, -84
  %29 = inttoptr i32 %tmp2_v5.i.i.i5 to i32*
  %tmp2_v.i1.i.i.i = add i32 %tmp0_v.i47.i, -88
  %30 = inttoptr i32 %tmp2_v.i1.i.i.i to i32*
  %tmp2_v1.i.i.i.i = add i32 %tmp0_v.i47.i, -108
  %31 = inttoptr i32 %tmp2_v1.i.i.i.i to i32*
  %tmp2_v5.i.i.i.i = add i32 %tmp0_v.i47.i, -92
  %32 = inttoptr i32 %tmp2_v5.i.i.i.i to i32*
  br label %BB_80492AD.i.i

BB_80492AD.i.i:                                   ; preds = %BB_80492AD.i.i, %BB_80492AD.i.lr.ph.i
  %r_ebp.019.i = phi i32 [ %tmp2_v.i1.i.i, %BB_80492AD.i.lr.ph.i ], [ %39, %BB_80492AD.i.i ]
  %tmp2_v.i6.i.i = add i32 %r_ebp.019.i, 12
  %33 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %tmp2_v2.i.i.i6 = add i32 %r_ebp.019.i, -8
  %35 = inttoptr i32 %tmp2_v2.i.i.i6 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %28, align 16
  store i32 134517432, i32* %29, align 4
  store i32 %r_ebp.019.i, i32* %30, align 8
  store i32 134517364, i32* %31, align 4
  %37 = load i32, i32* %28, align 16
  %38 = load i32, i32* %16, align 4
  %tmp0_v4.i.i.i.i = add i32 %38, %37
  store i32 %tmp0_v4.i.i.i.i, i32* %32, align 4
  %39 = load i32, i32* %30, align 8
  %tmp2_v.i20.i.i = add i32 %39, -8
  %40 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 %tmp0_v4.i.i.i.i, i32* %40, align 4
  %tmp2_v1.i22.i.i = add i32 %39, -4
  %41 = inttoptr i32 %tmp2_v1.i22.i.i to i32*
  %42 = load i32, i32* %41, align 4
  %tmp0_v3.i24.i.i = add i32 %42, 1
  store i32 %tmp0_v3.i24.i.i, i32* %41, align 4
  %tmp2_v1.i.i.i7 = add i32 %39, 8
  %43 = inttoptr i32 %tmp2_v1.i.i.i7 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %tmp0_v3.i24.i.i, %44
  br i1 %45, label %BB_80492AD.i.i, label %.exit.loopexit.i

.exit.loopexit.i:                                 ; preds = %BB_80492AD.i.i
  %46 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  %47 = inttoptr i32 %tmp2_v1.i.i.i7 to i32*
  %.pre.i = inttoptr i32 %39 to i32*
  br label %Func_mult.exit

Func_mult.exit:                                   ; preds = %.exit.loopexit.i, %0
  %.pre-phi = phi i32* [ %8, %0 ], [ %47, %.exit.loopexit.i ]
  %.pre-phi26.i.pre-phi = phi i32* [ %25, %0 ], [ %46, %.exit.loopexit.i ]
  %.pre-phi.i = phi i32* [ %15, %0 ], [ %.pre.i, %.exit.loopexit.i ]
  %r_edx.0.lcssa.i = phi i32 [ %24, %0 ], [ %37, %.exit.loopexit.i ]
  %tmp2_v1.i.i.lcssa.i = phi i32 [ %tmp2_v2.i.i, %0 ], [ %tmp2_v1.i.i.i7, %.exit.loopexit.i ]
  %48 = load i32, i32* %.pre-phi26.i.pre-phi, align 4
  %49 = load i32, i32* %.pre-phi.i, align 4
  %tmp2_v.i13.i = add i32 %49, -12
  %50 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 %48, i32* %50, align 4
  %tmp2_v4.i.i = add i32 %tmp2_v1.i.i.lcssa.i, 4
  %51 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %48, i32* %51, align 4
  %spi.bis.950 = ptrtoint[17 x i8]* @str.bis.950 to i32
  store i32 %spi.bis.950, i32* %.pre-phi, align 4
  %tmp2_v7.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -4
  %52 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517318, i32* %52, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i46.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v1.i.i.lcssa.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !55
  store i32 5, i32* %.pre-phi, align 4
  store i32 134517331, i32* %52, align 4
  %tmp2_v.i2.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -8
  %54 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %49, i32* %54, align 4
  %tmp2_v1.i.i.i14 = add i32 %tmp2_v1.i.i.lcssa.i, -12
  %55 = inttoptr i32 %tmp2_v1.i.i.i14 to i32*
  store i32 134529024, i32* %55, align 4
  %tmp2_v2.i.i.i15 = add i32 %tmp2_v1.i.i.lcssa.i, -20
  %56 = inttoptr i32 %tmp2_v2.i.i.i15 to i32*
  %spi.bis.949 = ptrtoint[4 x i8]* @str.bis.949 to i32
  store i32 %spi.bis.949, i32* %56, align 4
  %57 = load i32, i32* %.pre-phi, align 4
  %tmp2_v3.i.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -28
  %58 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %57, i32* %58, align 4
  %tmp2_v5.i.i.i16 = add i32 %tmp2_v1.i.i.lcssa.i, -32
  %59 = inttoptr i32 %tmp2_v5.i.i.i16 to i32*
  %spi.bis.948 = ptrtoint[9 x i8]* @str.bis.948 to i32
  store i32 %spi.bis.948, i32* %59, align 4
  %tmp2_v6.i.i.i = add i32 %tmp2_v1.i.i.lcssa.i, -36
  %60 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 134517496, i32* %60, align 4
  %61 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i46.i, i32 inreg noundef 134520910, i32 noundef %tmp2_v5.i.i.i16, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !55
  ret void
}
define internal fastcc void @isdigit868(i32 %arg_esp) unnamed_addr  norecurse  !retregs !40 {
.exit:
  %tmp2_v.i5.i = add i32 %arg_esp, 4
  %tmp0_v.i6.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i6.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i7.i = add i32 %tmp0_v.i6.i, -8
  %3 = inttoptr i32 %tmp2_v4.i7.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i6.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i6.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i5.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i6.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v.i.i = add i32 %tmp0_v.i6.i, -17
  %7 = inttoptr i32 %tmp2_v.i.i to i8*
  store i8 55, i8* %7, align 1
  store i32 134517216, i32* %6, align 4
  %8 = tail call i32 @__ctype_b_loc()
  %9 = load i8, i8* %7, align 1
  %tmp0_v1.i24.i = sext i8 %9 to i32
  %tmp0_v2.i25.i = shl nsw i32 %tmp0_v1.i24.i, 1
  %tmp2_v2.i.i = add i32 %tmp0_v.i6.i, -44
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %tmp0_v1.i24.i, i32* %10, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i6.i, -48
  %11 = inttoptr i32 %tmp2_v4.i19.i to i32*
  %spi.bis.866 = ptrtoint[15 x i8]* @str.bis.866 to i32
  store i32 %spi.bis.866, i32* %11, align 16
  %tmp2_v5.i20.i = add i32 %tmp0_v.i6.i, -52
  %12 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 134517261, i32* %12, align 4
  %13 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i5.i, i32 inreg noundef %tmp0_v2.i25.i, i32 noundef %tmp2_v4.i19.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  ret void
}
define internal fastcc void @strtok401(i32 %arg_esp) unnamed_addr  norecurse  !retregs !26 {
  %tmp2_v.i80.i = add i32 %arg_esp, 4
  %tmp0_v.i81.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i83.i = add i32 %tmp0_v.i81.i, -4
  %3 = inttoptr i32 %tmp2_v3.i83.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i84.i = add i32 %tmp0_v.i81.i, -8
  %4 = inttoptr i32 %tmp2_v4.i84.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i81.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i87.i = add i32 %tmp0_v.i81.i, -16
  %6 = inttoptr i32 %tmp2_v6.i87.i to i32*
  store i32 %tmp2_v.i80.i, i32* %6, align 16
  %tmp2_v8.i88.i = add i32 %tmp0_v.i81.i, -68
  %7 = inttoptr i32 %tmp2_v8.i88.i to i32*
  store i32 134517265, i32* %7, align 4
  %tmp4_v.i93.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i97.i = add i32 %tmp0_v.i81.i, -20
  %10 = inttoptr i32 %tmp2_v2.i97.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i98.i = add i32 %tmp0_v.i81.i, -43
  %11 = inttoptr i32 %tmp2_v3.i98.i to i32*
  store i32 1936287828, i32* %11, align 4
  %tmp2_v4.i99.i = add i32 %tmp0_v.i81.i, -39
  %12 = inttoptr i32 %tmp2_v4.i99.i to i32*
  store i32 544434464, i32* %12, align 4
  %tmp2_v5.i100.i = add i32 %tmp0_v.i81.i, -35
  %13 = inttoptr i32 %tmp2_v5.i100.i to i32*
  store i32 543516788, i32* %13, align 4
  %tmp2_v6.i101.i = add i32 %tmp0_v.i81.i, -31
  %14 = inttoptr i32 %tmp2_v6.i101.i to i32*
  store i32 544825719, i32* %14, align 4
  %tmp2_v7.i102.i = add i32 %tmp0_v.i81.i, -27
  %15 = inttoptr i32 %tmp2_v7.i102.i to i32*
  store i32 1767991137, i32* %15, align 4
  %tmp2_v8.i103.i = add i32 %tmp0_v.i81.i, -23
  %16 = inttoptr i32 %tmp2_v8.i103.i to i16*
  store i16 11886, i16* %16, align 2
  %tmp2_v9.i104.i = add i32 %tmp0_v.i81.i, -21
  %17 = inttoptr i32 %tmp2_v9.i104.i to i8*
  store i8 0, i8* %17, align 1
  %tmp2_v10.i.i = add i32 %tmp0_v.i81.i, -45
  %18 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 32, i16* %18, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i81.i, -76
  %19 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v10.i.i, i32* %19, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i81.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v3.i98.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i81.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517349, i32* %21, align 4
  %arg.i.i = load i32, i32* %20, align 16
  %arg2.i.i = load i32, i32* %19, align 4
  %22 = tail call i32 @strtok(i32 %arg.i.i, i32 %arg2.i.i)
  %mrv.i5 = insertvalue { i32, i32 } undef, i32 %tmp2_v15.i.i, 0
  %tmp2_v.i3.i = add i32 %tmp0_v.i81.i, -56
  %23 = inttoptr i32 %tmp2_v.i3.i to i32*
  store i32 %22, i32* %23, align 8
  %.not.i49.i12 = icmp eq i32 %22, 0
  br i1 %.not.i49.i12, label %BB_8049295.i, label %BB_804926D.i

BB_80492E2.i:                                     ; preds = %BB_80492AD.i, %BB_80492C1.i
  %24 = load i32, i32* %32, align 4
  %tmp0_v1.i13.i = add i32 %24, 1
  store i32 %tmp0_v1.i13.i, i32* %32, align 4
  %25 = icmp slt i32 %tmp0_v1.i13.i, 23
  br i1 %25, label %BB_804929E.i, label %.exit

BB_804926D.i:                                     ; preds = %BB_804926D.i, %0
  %r_esp.1.in15 = phi i32 [ %r_esp.1.in, %BB_804926D.i ], [ %tmp2_v15.i.i, %0 ]
  %.pn14 = phi i32 [ %31, %BB_804926D.i ], [ %22, %0 ]
  %.pn2.pn13 = phi { i32, i32 } [ %.pn2, %BB_804926D.i ], [ %mrv.i5, %0 ]
  %.pn2 = insertvalue { i32, i32 } %.pn2.pn13, i32 %.pn14, 1
  %26 = inttoptr i32 %r_esp.1.in15 to i32*
  store i32 %.pn14, i32* %26, align 4
  %tmp2_v3.i22.i = add i32 %r_esp.1.in15, -4
  %27 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 134517368, i32* %27, align 4
  %arg.i.i7 = load i32, i32* %26, align 4
  %28 = inttoptr i32 %arg.i.i7 to i8*
  %29 = tail call i32 @puts(i8* nonnull dereferenceable(1) %28)
  %tmp2_v2.i44.i = add i32 %r_esp.1.in15, 4
  %30 = inttoptr i32 %tmp2_v2.i44.i to i32*
  store i32 %tmp2_v10.i.i, i32* %30, align 4
  store i32 0, i32* %26, align 4
  store i32 134517385, i32* %27, align 4
  %arg.i.i8 = load i32, i32* %26, align 4
  %arg2.i.i9 = load i32, i32* %30, align 4
  %31 = tail call i32 @strtok(i32 %arg.i.i8, i32 %arg2.i.i9)
  store i32 %31, i32* %23, align 8
  %r_esp.1.in = extractvalue { i32, i32 } %.pn2.pn13, 0
  %.not.i49.i = icmp eq i32 %31, 0
  br i1 %.not.i49.i, label %BB_8049295.i, label %BB_804926D.i

BB_8049295.i:                                     ; preds = %BB_804926D.i, %0
  %.pn2.pn.lcssa = phi { i32, i32 } [ %mrv.i5, %0 ], [ %.pn2, %BB_804926D.i ]
  %r_esp.1.in.le = extractvalue { i32, i32 } %.pn2.pn.lcssa, 0
  %tmp2_v.i32.i = add i32 %tmp0_v.i81.i, -52
  %32 = inttoptr i32 %tmp2_v.i32.i to i32*
  store i32 0, i32* %32, align 4
  %tmp2_v6.i.i = add i32 %r_esp.1.in.le, 4
  %33 = inttoptr i32 %tmp2_v6.i.i to i32*
  %34 = inttoptr i32 %r_esp.1.in.le to i32*
  %tmp2_v9.i.i = add i32 %r_esp.1.in.le, -4
  %35 = inttoptr i32 %tmp2_v9.i.i to i32*
  br label %BB_804929E.i

BB_80492C1.i:                                     ; preds = %BB_804929E.i
  %tmp0_v4.i62.i = sext i8 %38 to i32
  store i32 %tmp0_v4.i62.i, i32* %33, align 4
  %spi.bis.399 = ptrtoint[4 x i8]* @str.bis.399 to i32
  store i32 %spi.bis.399, i32* %34, align 4
  store i32 134517471, i32* %35, align 4
  %36 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i80.i, i32 inreg noundef %tmp2_v3.i98.i, i32 noundef %r_esp.1.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  br label %BB_80492E2.i

BB_804929E.i:                                     ; preds = %BB_8049295.i, %BB_80492E2.i
  %storemerge16 = phi i32 [ 0, %BB_8049295.i ], [ %tmp0_v1.i13.i, %BB_80492E2.i ]
  %tmp0_v2.i69.i = add i32 %storemerge16, %tmp2_v3.i98.i
  %37 = inttoptr i32 %tmp0_v2.i69.i to i8*
  %38 = load i8, i8* %37, align 1
  %.not.i71.i = icmp eq i8 %38, 0
  br i1 %.not.i71.i, label %BB_80492AD.i, label %BB_80492C1.i

BB_80492AD.i:                                     ; preds = %BB_804929E.i
  %spi.bis.398 = ptrtoint[3 x i8]* @str.bis.398 to i32
  store i32 %spi.bis.398, i32* %34, align 4
  store i32 134517436, i32* %35, align 4
  %arg.i.i11 = load i32, i32* %34, align 4
  %39 = inttoptr i32 %arg.i.i11 to i8*
  %40 = tail call i32 @puts(i8* nonnull dereferenceable(1) %39)
  br label %BB_80492E2.i

.exit:                                            ; preds = %BB_80492E2.i
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
!26 = !{i32 0, i32 0, i32 0}
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
!40 = !{i32 0, i32 0, i32 0}
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
!56 = !{!"clang version 14.0.0"}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 7, !"PIC Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{i32 1, !"NumRegisterParameters", i32 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"double", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !64, i64 0}
!68 = !{i32 0, i32 2, i32 3}
!69 = !{i32 0, i32 0, i32 0, i32 0}
!70 = !{!"printf"}
!71 = !{!"clang version 14.0.0"}
!72 = !{i32 1, !"wchar_size", i32 4}
!73 = !{i32 7, !"PIC Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{i32 1, !"NumRegisterParameters", i32 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"double", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C++ TBAA"}
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !79, i64 0}
!83 = !{i32 0, i32 0, i32 0, i32 0}
!84 = !{!"printf"}
!85 = !{!"clang version 14.0.0"}
!86 = !{i32 1, !"wchar_size", i32 4}
!87 = !{i32 7, !"PIC Level", i32 2}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{i32 1, !"NumRegisterParameters", i32 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"double", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C++ TBAA"}
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !93, i64 0}
!97 = !{i32 0, i32 0, i32 0, i32 0}
!98 = !{!"printf"}
!99 = !{!"clang version 14.0.0"}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 7, !"PIC Level", i32 2}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{i32 1, !"NumRegisterParameters", i32 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"double", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C++ TBAA"}
!109 = !{!110, !110, i64 0}
!110 = !{!"int", !107, i64 0}
!111 = !{i32 0, i32 0, i32 0, i32 0}
!112 = !{!"printf"}
!113 = !{!"clang version 14.0.0"}
!114 = !{i32 1, !"wchar_size", i32 4}
!115 = !{i32 7, !"PIC Level", i32 2}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{i32 1, !"NumRegisterParameters", i32 0}
!119 = !{!120, !120, i64 0}
!120 = !{!"double", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C++ TBAA"}
!123 = !{!124, !124, i64 0}
!124 = !{!"int", !121, i64 0}
!125 = !{i32 0, i32 0, i32 0, i32 0}
!126 = !{!"printf"}
