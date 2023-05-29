; Mutation 62
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack140 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem17 = internal global [1024 x i8] zeroinitializer, align 1
@stack977 = internal global [8092 x i32] zeroinitializer, align 16
@stack725 = internal global [8092 x i32] zeroinitializer, align 16
@stack91 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem13 = internal global [1024 x i8] zeroinitializer, align 1
@stack65 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem11 = internal global [1024 x i8] zeroinitializer, align 1
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
@stack12 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: store i32 134517414, i32* %25, align 4
@str.3.2 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520840, i32* %26, align 8
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: store i32 134520863, i32* %29, align 16
@str.2.5 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520866, i32* %40, align 4
@str.2.6 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: store i32 134520869, i32* %41, align 16

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
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7
declare i32 @ptrace( i32, i32, i32, i32) naked noinline
declare i32 @getenv(i32) local_unnamed_addr noinline

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect debug environment
  %debug.str.2.18 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.18
  %sp0.57 = alloca [11 x i8]
  store [11 x i8] c"\3B\74\0E\7D\1A\24\7A\0D\0B\17\68", [11 x i8]* %sp0.57
  %sp0.1.57 = bitcast [11 x i8]* %sp0.57 to i88*
  %i0.57 = load i88, i88* %sp0.1.57

  %sp1.57 = alloca [11 x i8]
  store [11 x i8] c"\6d\39\51\38\54\65\38\41\4e\53\68", [11 x i8]* %sp1.57
  %sp1.1.57 = bitcast [11 x i8]* %sp1.57 to i88*
  %i1.57 = load i88, i88* %sp1.1.57

  %xp57 = xor i88 %i0.57, %i1.57

  %fi.57 = alloca i88
  store i88 %xp57, i88* %fi.57

  %final.ptr.57 = bitcast i88* %fi.57 to [11 x i8]*
  %spi57 = load [11 x i8], [11 x i8]* %final.ptr.57
  store [11 x i8] %spi57, [11 x i8]* %debug.str.2.18
;-------------------------------
  %debug.ptr.2.18 = ptrtoint [11 x i8]* %debug.str.2.18 to i32
  %result.2.18 = tail call i32 @getenv(i32 %debug.ptr.2.18)
  %must.escape.2.18 = icmp ne i32 %result.2.18, 0
  br i1 %must.escape.2.18, label %.escape.18, label %.proceed.2.18
.proceed.2.18:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.1.18 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.18
  %sp0.58 = alloca [4 x i8]
  store [4 x i8] c"\28\35\35\67", [4 x i8]* %sp0.58
  %sp0.1.58 = bitcast [4 x i8]* %sp0.58 to i32*
  %i0.58 = load i32, i32* %sp0.1.58

  %sp1.58 = alloca [4 x i8]
  store [4 x i8] c"\6f\71\77\67", [4 x i8]* %sp1.58
  %sp1.1.58 = bitcast [4 x i8]* %sp1.58 to i32*
  %i1.58 = load i32, i32* %sp1.1.58

  %xp58 = xor i32 %i0.58, %i1.58

  %fi.58 = alloca i32
  store i32 %xp58, i32* %fi.58

  %final.ptr.58 = bitcast i32* %fi.58 to [4 x i8]*
  %spi58 = load [4 x i8], [4 x i8]* %final.ptr.58
  store [4 x i8] %spi58, [4 x i8]* %debug.str.1.18
;-------------------------------
  %debug.ptr.1.18 = ptrtoint [4 x i8]* %debug.str.1.18 to i32
  %result.1.18 = tail call i32 @getenv(i32 %debug.ptr.1.18)
  %must.escape.1.18 = icmp ne i32 %result.1.18, 0
  br i1 %must.escape.1.18, label %.escape.18, label %.proceed.1.18
.proceed.1.18:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.0.18 = alloca [6 x i8]
;-------------------------------
; Replace: store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.18
  %sp0.59 = alloca [6 x i8]
  store [6 x i8] c"\2B\73\27\17\21\59", [6 x i8]* %sp0.59
  %sp0.1.59 = bitcast [6 x i8]* %sp0.59 to i48*
  %i0.59 = load i48, i48* %sp0.1.59

  %sp1.59 = alloca [6 x i8]
  store [6 x i8] c"\6f\36\65\42\66\59", [6 x i8]* %sp1.59
  %sp1.1.59 = bitcast [6 x i8]* %sp1.59 to i48*
  %i1.59 = load i48, i48* %sp1.1.59

  %xp59 = xor i48 %i0.59, %i1.59

  %fi.59 = alloca i48
  store i48 %xp59, i48* %fi.59

  %final.ptr.59 = bitcast i48* %fi.59 to [6 x i8]*
  %spi59 = load [6 x i8], [6 x i8]* %final.ptr.59
  store [6 x i8] %spi59, [6 x i8]* %debug.str.0.18
;-------------------------------
  %debug.ptr.0.18 = ptrtoint [6 x i8]* %debug.str.0.18 to i32
  %result.0.18 = tail call i32 @getenv(i32 %debug.ptr.0.18)
  %must.escape.0.18 = icmp ne i32 %result.0.18, 0
  br i1 %must.escape.0.18, label %.escape.18, label %.proceed.0.18
.proceed.0.18:
;----------------------------
;----------------------------
  ; Detect tracing running
  %result.1 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.1 = icmp eq i32 %result.1, -1
  br i1 %must.escape.1, label %.escape.1, label %.proceed.1
.proceed.1:
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
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @sum_naturals726 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack725, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i19.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i19.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i21.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i21.i to i32*
  %11 = load i32, i32* %10, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @remove_chat_at_pos92 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack91, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v6.i25.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v6.i25.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %sp0.60 = alloca [2 x i8]
  store [2 x i8] c"\41\67", [2 x i8]* %sp0.60
  %sp0.1.60 = bitcast [2 x i8]* %sp0.60 to i16*
  %i0.60 = load i16, i16* %sp0.1.60

  %sp1.60 = alloca [2 x i8]
  store [2 x i8] c"\70\67", [2 x i8]* %sp1.60
  %sp1.1.60 = bitcast [2 x i8]* %sp1.60 to i16*
  %i1.60 = load i16, i16* %sp1.1.60

  %xp60 = xor i16 %i0.60, %i1.60

  %fi.60 = alloca i16
  store i16 %xp60, i16* %fi.60

  %spi60 = ptrtoint i16* %fi.60 to i32
  store i32 %spi60, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i26.i = add i32 %tmp0_v.i.i, -48
  %13 = inttoptr i32 %tmp2_v7.i26.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i32.i = icmp eq i32 %15, 0
  br i1 %.not.i32.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -40
  %16 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -68
  %17 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517678, i32* %17, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i.i, -72
  %18 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
  store i32 0, i32* %18, align 8
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i.i, -76
  %19 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 1, i32* %19, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -80
  %20 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %20, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -84
  %21 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517705, i32* %21, align 4
  %arg.i.i.i = load i32, i32* %20, align 16
  %arg2.i.i.i = load i32, i32* %19, align 4
  %arg4.i.i.i = load i32, i32* %18, align 8
  %22 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
  store i32 %22, i32* %14, align 4
  store i32 %22, i32* %20, align 16
  store i32 134517722, i32* %21, align 4
  %arg.i.i3.i = load i32, i32* %20, align 16
  %23 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i.i, -40
  %24 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %24, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i.i, -68
  %25 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %25, align 4
  %sp2 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.2 = load [1 x i8], [1 x i8]* @str.0.2
  %sp0.29 = alloca [1 x i8]
  store [1 x i8] c"\4E", [1 x i8]* %sp0.29
  %sp0.1.29 = bitcast [1 x i8]* %sp0.29 to i8*
  %i0.29 = load i8, i8* %sp0.1.29

  %sp1.29 = alloca [1 x i8]
  store [1 x i8] c"\4b", [1 x i8]* %sp1.29
  %sp1.1.29 = bitcast [1 x i8]* %sp1.29 to i8*
  %i1.29 = load i8, i8* %sp1.1.29

  %xp29 = xor i8 %i0.29, %i1.29

  %fi.29 = alloca i8
  store i8 %xp29, i8* %fi.29

  %spi29 = bitcast i8* %fi.29 to [1 x i8]*
  %s0.2 = load [1 x i8], [1 x i8]* %spi29
;-------------------------------
  %sp0.2 = bitcast [4 x i8]* %sp2 to [1 x i8]*
  store [1 x i8] %s0.2, [1 x i8]* %sp0.2
  %next0.2 = getelementptr [4 x i8], [4 x i8]* %sp2, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.2 = load [1 x i8], [1 x i8]* @str.1.2
  %sp0.31 = alloca [1 x i8]
  store [1 x i8] c"\0F", [1 x i8]* %sp0.31
  %sp0.1.31 = bitcast [1 x i8]* %sp0.31 to i8*
  %i0.31 = load i8, i8* %sp0.1.31

  %sp1.31 = alloca [1 x i8]
  store [1 x i8] c"\55", [1 x i8]* %sp1.31
  %sp1.1.31 = bitcast [1 x i8]* %sp1.31 to i8*
  %i1.31 = load i8, i8* %sp1.1.31

  %xp31 = xor i8 %i0.31, %i1.31

  %fi.31 = alloca i8
  store i8 %xp31, i8* %fi.31

  %spi31 = bitcast i8* %fi.31 to [1 x i8]*
  %s1.2 = load [1 x i8], [1 x i8]* %spi31
;-------------------------------
  %sp1.2 = bitcast i8* %next0.2 to [1 x i8]*
  store [1 x i8] %s1.2, [1 x i8]* %sp1.2
  %next1.2 = getelementptr [4 x i8], [4 x i8]* %sp2, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.2 = load [1 x i8], [1 x i8]* @str.2.2
  %sp0.30 = alloca [1 x i8]
  store [1 x i8] c"\1A", [1 x i8]* %sp0.30
  %sp0.1.30 = bitcast [1 x i8]* %sp0.30 to i8*
  %i0.30 = load i8, i8* %sp0.1.30

  %sp1.30 = alloca [1 x i8]
  store [1 x i8] c"\37", [1 x i8]* %sp1.30
  %sp1.1.30 = bitcast [1 x i8]* %sp1.30 to i8*
  %i1.30 = load i8, i8* %sp1.1.30

  %xp30 = xor i8 %i0.30, %i1.30

  %fi.30 = alloca i8
  store i8 %xp30, i8* %fi.30

  %spi30 = bitcast i8* %fi.30 to [1 x i8]*
  %s2.2 = load [1 x i8], [1 x i8]* %spi30
;-------------------------------
  %sp2.2 = bitcast i8* %next1.2 to [1 x i8]*
  store [1 x i8] %s2.2, [1 x i8]* %sp2.2
  %next2.2 = getelementptr [4 x i8], [4 x i8]* %sp2, i32 0, i32 3
  
  %s3.2 = load [1 x i8], [1 x i8]* @str.3.2
  %sp3.2 = bitcast i8* %next2.2 to [1 x i8]*
  store [1 x i8] %s3.2, [1 x i8]* %sp3.2

  %spi2 = ptrtoint [4 x i8]* %sp2 to i32
  store i32 %spi2, i32* %25, align 4
;-------------------------------
  %tmp2_v1.i.i.i5 = add i32 %tmp0_v.i.i, -56
  %26 = inttoptr i32 %tmp2_v1.i.i.i5 to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %26, align 8
  %sp3 = alloca [14 x i8]
  
;-------------------------------
; Replace: %s0.3 = load [2 x i8], [2 x i8]* @str.0.3
  %sp0.35 = alloca [2 x i8]
  store [2 x i8] c"\30\4D", [2 x i8]* %sp0.35
  %sp0.1.35 = bitcast [2 x i8]* %sp0.35 to i16*
  %i0.35 = load i16, i16* %sp0.1.35

  %sp1.35 = alloca [2 x i8]
  store [2 x i8] c"\79\6d", [2 x i8]* %sp1.35
  %sp1.1.35 = bitcast [2 x i8]* %sp1.35 to i16*
  %i1.35 = load i16, i16* %sp1.1.35

  %xp35 = xor i16 %i0.35, %i1.35

  %fi.35 = alloca i16
  store i16 %xp35, i16* %fi.35

  %spi35 = bitcast i16* %fi.35 to [2 x i8]*
  %s0.3 = load [2 x i8], [2 x i8]* %spi35
;-------------------------------
  %sp0.3 = bitcast [14 x i8]* %sp3 to [2 x i8]*
  store [2 x i8] %s0.3, [2 x i8]* %sp0.3
  %next0.3 = getelementptr [14 x i8], [14 x i8]* %sp3, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.3 = load [2 x i8], [2 x i8]* @str.1.3
  %sp0.32 = alloca [2 x i8]
  store [2 x i8] c"\00\18", [2 x i8]* %sp0.32
  %sp0.1.32 = bitcast [2 x i8]* %sp0.32 to i16*
  %i0.32 = load i16, i16* %sp0.1.32

  %sp1.32 = alloca [2 x i8]
  store [2 x i8] c"\61\75", [2 x i8]* %sp1.32
  %sp1.1.32 = bitcast [2 x i8]* %sp1.32 to i16*
  %i1.32 = load i16, i16* %sp1.1.32

  %xp32 = xor i16 %i0.32, %i1.32

  %fi.32 = alloca i16
  store i16 %xp32, i16* %fi.32

  %spi32 = bitcast i16* %fi.32 to [2 x i8]*
  %s1.3 = load [2 x i8], [2 x i8]* %spi32
;-------------------------------
  %sp1.3 = bitcast i8* %next0.3 to [2 x i8]*
  store [2 x i8] %s1.3, [2 x i8]* %sp1.3
  %next1.3 = getelementptr [14 x i8], [14 x i8]* %sp3, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.3 = load [2 x i8], [2 x i8]* @str.2.3
  %sp0.36 = alloca [2 x i8]
  store [2 x i8] c"\61\34", [2 x i8]* %sp0.36
  %sp0.1.36 = bitcast [2 x i8]* %sp0.36 to i16*
  %i0.36 = load i16, i16* %sp0.1.36

  %sp1.36 = alloca [2 x i8]
  store [2 x i8] c"\41\51", [2 x i8]* %sp1.36
  %sp1.1.36 = bitcast [2 x i8]* %sp1.36 to i16*
  %i1.36 = load i16, i16* %sp1.1.36

  %xp36 = xor i16 %i0.36, %i1.36

  %fi.36 = alloca i16
  store i16 %xp36, i16* %fi.36

  %spi36 = bitcast i16* %fi.36 to [2 x i8]*
  %s2.3 = load [2 x i8], [2 x i8]* %spi36
;-------------------------------
  %sp2.3 = bitcast i8* %next1.3 to [2 x i8]*
  store [2 x i8] %s2.3, [2 x i8]* %sp2.3
  %next2.3 = getelementptr [14 x i8], [14 x i8]* %sp3, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.3 = load [2 x i8], [2 x i8]* @str.3.3
  %sp0.34 = alloca [2 x i8]
  store [2 x i8] c"\44\5E", [2 x i8]* %sp0.34
  %sp0.1.34 = bitcast [2 x i8]* %sp0.34 to i16*
  %i0.34 = load i16, i16* %sp0.1.34

  %sp1.34 = alloca [2 x i8]
  store [2 x i8] c"\32\37", [2 x i8]* %sp1.34
  %sp1.1.34 = bitcast [2 x i8]* %sp1.34 to i16*
  %i1.34 = load i16, i16* %sp1.1.34

  %xp34 = xor i16 %i0.34, %i1.34

  %fi.34 = alloca i16
  store i16 %xp34, i16* %fi.34

  %spi34 = bitcast i16* %fi.34 to [2 x i8]*
  %s3.3 = load [2 x i8], [2 x i8]* %spi34
;-------------------------------
  %sp3.3 = bitcast i8* %next2.3 to [2 x i8]*
  store [2 x i8] %s3.3, [2 x i8]* %sp3.3
  %next3.3 = getelementptr [14 x i8], [14 x i8]* %sp3, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.3 = load [2 x i8], [2 x i8]* @str.4.3
  %sp0.33 = alloca [2 x i8]
  store [2 x i8] c"\58\12", [2 x i8]* %sp0.33
  %sp0.1.33 = bitcast [2 x i8]* %sp0.33 to i16*
  %i0.33 = load i16, i16* %sp0.1.33

  %sp1.33 = alloca [2 x i8]
  store [2 x i8] c"\34\33", [2 x i8]* %sp1.33
  %sp1.1.33 = bitcast [2 x i8]* %sp1.33 to i16*
  %i1.33 = load i16, i16* %sp1.1.33

  %xp33 = xor i16 %i0.33, %i1.33

  %fi.33 = alloca i16
  store i16 %xp33, i16* %fi.33

  %spi33 = bitcast i16* %fi.33 to [2 x i8]*
  %s4.3 = load [2 x i8], [2 x i8]* %spi33
;-------------------------------
  %sp4.3 = bitcast i8* %next3.3 to [2 x i8]*
  store [2 x i8] %s4.3, [2 x i8]* %sp4.3
  %next4.3 = getelementptr [14 x i8], [14 x i8]* %sp3, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.3 = load [2 x i8], [2 x i8]* @str.5.3
  %sp0.37 = alloca [2 x i8]
  store [2 x i8] c"\55\49", [2 x i8]* %sp0.37
  %sp0.1.37 = bitcast [2 x i8]* %sp0.37 to i16*
  %i0.37 = load i16, i16* %sp0.1.37

  %sp1.37 = alloca [2 x i8]
  store [2 x i8] c"\74\68", [2 x i8]* %sp1.37
  %sp1.1.37 = bitcast [2 x i8]* %sp1.37 to i16*
  %i1.37 = load i16, i16* %sp1.1.37

  %xp37 = xor i16 %i0.37, %i1.37

  %fi.37 = alloca i16
  store i16 %xp37, i16* %fi.37

  %spi37 = bitcast i16* %fi.37 to [2 x i8]*
  %s5.3 = load [2 x i8], [2 x i8]* %spi37
;-------------------------------
  %sp5.3 = bitcast i8* %next4.3 to [2 x i8]*
  store [2 x i8] %s5.3, [2 x i8]* %sp5.3
  %next5.3 = getelementptr [14 x i8], [14 x i8]* %sp3, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.3 = load [2 x i8], [2 x i8]* @str.6.3
  %sp0.38 = alloca [2 x i8]
  store [2 x i8] c"\52\62", [2 x i8]* %sp0.38
  %sp0.1.38 = bitcast [2 x i8]* %sp0.38 to i16*
  %i0.38 = load i16, i16* %sp0.1.38

  %sp1.38 = alloca [2 x i8]
  store [2 x i8] c"\58\62", [2 x i8]* %sp1.38
  %sp1.1.38 = bitcast [2 x i8]* %sp1.38 to i16*
  %i1.38 = load i16, i16* %sp1.1.38

  %xp38 = xor i16 %i0.38, %i1.38

  %fi.38 = alloca i16
  store i16 %xp38, i16* %fi.38

  %spi38 = bitcast i16* %fi.38 to [2 x i8]*
  %s6.3 = load [2 x i8], [2 x i8]* %spi38
;-------------------------------
  %sp6.3 = bitcast i8* %next5.3 to [2 x i8]*
  store [2 x i8] %s6.3, [2 x i8]* %sp6.3

  %spi3 = ptrtoint [14 x i8]* %sp3 to i32
  store i32 %spi3, i32* %26, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp4 = alloca [9 x i8]
  
;-------------------------------
; Replace: %s0.4 = load [1 x i8], [1 x i8]* @str.0.4
  %sp0.42 = alloca [1 x i8]
  store [1 x i8] c"\20", [1 x i8]* %sp0.42
  %sp0.1.42 = bitcast [1 x i8]* %sp0.42 to i8*
  %i0.42 = load i8, i8* %sp0.1.42

  %sp1.42 = alloca [1 x i8]
  store [1 x i8] c"\62", [1 x i8]* %sp1.42
  %sp1.1.42 = bitcast [1 x i8]* %sp1.42 to i8*
  %i1.42 = load i8, i8* %sp1.1.42

  %xp42 = xor i8 %i0.42, %i1.42

  %fi.42 = alloca i8
  store i8 %xp42, i8* %fi.42

  %spi42 = bitcast i8* %fi.42 to [1 x i8]*
  %s0.4 = load [1 x i8], [1 x i8]* %spi42
;-------------------------------
  %sp0.4 = bitcast [9 x i8]* %sp4 to [1 x i8]*
  store [1 x i8] %s0.4, [1 x i8]* %sp0.4
  %next0.4 = getelementptr [9 x i8], [9 x i8]* %sp4, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.4 = load [1 x i8], [1 x i8]* @str.1.4
  %sp0.41 = alloca [1 x i8]
  store [1 x i8] c"\4D", [1 x i8]* %sp0.41
  %sp0.1.41 = bitcast [1 x i8]* %sp0.41 to i8*
  %i0.41 = load i8, i8* %sp0.1.41

  %sp1.41 = alloca [1 x i8]
  store [1 x i8] c"\34", [1 x i8]* %sp1.41
  %sp1.1.41 = bitcast [1 x i8]* %sp1.41 to i8*
  %i1.41 = load i8, i8* %sp1.1.41

  %xp41 = xor i8 %i0.41, %i1.41

  %fi.41 = alloca i8
  store i8 %xp41, i8* %fi.41

  %spi41 = bitcast i8* %fi.41 to [1 x i8]*
  %s1.4 = load [1 x i8], [1 x i8]* %spi41
;-------------------------------
  %sp1.4 = bitcast i8* %next0.4 to [1 x i8]*
  store [1 x i8] %s1.4, [1 x i8]* %sp1.4
  %next1.4 = getelementptr [9 x i8], [9 x i8]* %sp4, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.4 = load [1 x i8], [1 x i8]* @str.2.4
  %sp0.39 = alloca [1 x i8]
  store [1 x i8] c"\36", [1 x i8]* %sp0.39
  %sp0.1.39 = bitcast [1 x i8]* %sp0.39 to i8*
  %i0.39 = load i8, i8* %sp0.1.39

  %sp1.39 = alloca [1 x i8]
  store [1 x i8] c"\53", [1 x i8]* %sp1.39
  %sp1.1.39 = bitcast [1 x i8]* %sp1.39 to i8*
  %i1.39 = load i8, i8* %sp1.1.39

  %xp39 = xor i8 %i0.39, %i1.39

  %fi.39 = alloca i8
  store i8 %xp39, i8* %fi.39

  %spi39 = bitcast i8* %fi.39 to [1 x i8]*
  %s2.4 = load [1 x i8], [1 x i8]* %spi39
;-------------------------------
  %sp2.4 = bitcast i8* %next1.4 to [1 x i8]*
  store [1 x i8] %s2.4, [1 x i8]* %sp2.4
  %next2.4 = getelementptr [9 x i8], [9 x i8]* %sp4, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.4 = load [2 x i8], [2 x i8]* @str.3.4
  %sp0.40 = alloca [2 x i8]
  store [2 x i8] c"\59\34", [2 x i8]* %sp0.40
  %sp0.1.40 = bitcast [2 x i8]* %sp0.40 to i16*
  %i0.40 = load i16, i16* %sp0.1.40

  %sp1.40 = alloca [2 x i8]
  store [2 x i8] c"\79\76", [2 x i8]* %sp1.40
  %sp1.1.40 = bitcast [2 x i8]* %sp1.40 to i16*
  %i1.40 = load i16, i16* %sp1.1.40

  %xp40 = xor i16 %i0.40, %i1.40

  %fi.40 = alloca i16
  store i16 %xp40, i16* %fi.40

  %spi40 = bitcast i16* %fi.40 to [2 x i8]*
  %s3.4 = load [2 x i8], [2 x i8]* %spi40
;-------------------------------
  %sp3.4 = bitcast i8* %next2.4 to [2 x i8]*
  store [2 x i8] %s3.4, [2 x i8]* %sp3.4
  %next3.4 = getelementptr [9 x i8], [9 x i8]* %sp4, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.4 = load [1 x i8], [1 x i8]* @str.4.4
  %sp0.44 = alloca [1 x i8]
  store [1 x i8] c"\37", [1 x i8]* %sp0.44
  %sp0.1.44 = bitcast [1 x i8]* %sp0.44 to i8*
  %i0.44 = load i8, i8* %sp0.1.44

  %sp1.44 = alloca [1 x i8]
  store [1 x i8] c"\4e", [1 x i8]* %sp1.44
  %sp1.1.44 = bitcast [1 x i8]* %sp1.44 to i8*
  %i1.44 = load i8, i8* %sp1.1.44

  %xp44 = xor i8 %i0.44, %i1.44

  %fi.44 = alloca i8
  store i8 %xp44, i8* %fi.44

  %spi44 = bitcast i8* %fi.44 to [1 x i8]*
  %s4.4 = load [1 x i8], [1 x i8]* %spi44
;-------------------------------
  %sp4.4 = bitcast i8* %next3.4 to [1 x i8]*
  store [1 x i8] %s4.4, [1 x i8]* %sp4.4
  %next4.4 = getelementptr [9 x i8], [9 x i8]* %sp4, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.4 = load [1 x i8], [1 x i8]* @str.5.4
  %sp0.43 = alloca [1 x i8]
  store [1 x i8] c"\22", [1 x i8]* %sp0.43
  %sp0.1.43 = bitcast [1 x i8]* %sp0.43 to i8*
  %i0.43 = load i8, i8* %sp0.1.43

  %sp1.43 = alloca [1 x i8]
  store [1 x i8] c"\47", [1 x i8]* %sp1.43
  %sp1.1.43 = bitcast [1 x i8]* %sp1.43 to i8*
  %i1.43 = load i8, i8* %sp1.1.43

  %xp43 = xor i8 %i0.43, %i1.43

  %fi.43 = alloca i8
  store i8 %xp43, i8* %fi.43

  %spi43 = bitcast i8* %fi.43 to [1 x i8]*
  %s5.4 = load [1 x i8], [1 x i8]* %spi43
;-------------------------------
  %sp5.4 = bitcast i8* %next4.4 to [1 x i8]*
  store [1 x i8] %s5.4, [1 x i8]* %sp5.4
  %next5.4 = getelementptr [9 x i8], [9 x i8]* %sp4, i32 0, i32 7
  
;-------------------------------
; Replace: %s6.4 = load [2 x i8], [2 x i8]* @str.6.4
  %sp0.45 = alloca [2 x i8]
  store [2 x i8] c"\4F\67", [2 x i8]* %sp0.45
  %sp0.1.45 = bitcast [2 x i8]* %sp0.45 to i16*
  %i0.45 = load i16, i16* %sp0.1.45

  %sp1.45 = alloca [2 x i8]
  store [2 x i8] c"\45\67", [2 x i8]* %sp1.45
  %sp1.1.45 = bitcast [2 x i8]* %sp1.45 to i16*
  %i1.45 = load i16, i16* %sp1.1.45

  %xp45 = xor i16 %i0.45, %i1.45

  %fi.45 = alloca i16
  store i16 %xp45, i16* %fi.45

  %spi45 = bitcast i16* %fi.45 to [2 x i8]*
  %s6.4 = load [2 x i8], [2 x i8]* %spi45
;-------------------------------
  %sp6.4 = bitcast i8* %next5.4 to [2 x i8]*
  store [2 x i8] %s6.4, [2 x i8]* %sp6.4

  %spi4 = ptrtoint [9 x i8]* %sp4 to i32
  store i32 %spi4, i32* %14, align 4
;-------------------------------
  %27 = load i32, i32* %26, align 8
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @hello_world978 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack977, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -76
  %28 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %27, i32* %28, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -80
  %29 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %29, align 16
  %sp5 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.5 = load [1 x i8], [1 x i8]* @str.0.5
  %sp0.47 = alloca [1 x i8]
  store [1 x i8] c"\57", [1 x i8]* %sp0.47
  %sp0.1.47 = bitcast [1 x i8]* %sp0.47 to i8*
  %i0.47 = load i8, i8* %sp0.1.47

  %sp1.47 = alloca [1 x i8]
  store [1 x i8] c"\72", [1 x i8]* %sp1.47
  %sp1.1.47 = bitcast [1 x i8]* %sp1.47 to i8*
  %i1.47 = load i8, i8* %sp1.1.47

  %xp47 = xor i8 %i0.47, %i1.47

  %fi.47 = alloca i8
  store i8 %xp47, i8* %fi.47

  %spi47 = bitcast i8* %fi.47 to [1 x i8]*
  %s0.5 = load [1 x i8], [1 x i8]* %spi47
;-------------------------------
  %sp0.5 = bitcast [3 x i8]* %sp5 to [1 x i8]*
  store [1 x i8] %s0.5, [1 x i8]* %sp0.5
  %next0.5 = getelementptr [3 x i8], [3 x i8]* %sp5, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.5 = load [1 x i8], [1 x i8]* @str.1.5
  %sp0.46 = alloca [1 x i8]
  store [1 x i8] c"\35", [1 x i8]* %sp0.46
  %sp0.1.46 = bitcast [1 x i8]* %sp0.46 to i8*
  %i0.46 = load i8, i8* %sp0.1.46

  %sp1.46 = alloca [1 x i8]
  store [1 x i8] c"\46", [1 x i8]* %sp1.46
  %sp1.1.46 = bitcast [1 x i8]* %sp1.46 to i8*
  %i1.46 = load i8, i8* %sp1.1.46

  %xp46 = xor i8 %i0.46, %i1.46

  %fi.46 = alloca i8
  store i8 %xp46, i8* %fi.46

  %spi46 = bitcast i8* %fi.46 to [1 x i8]*
  %s1.5 = load [1 x i8], [1 x i8]* %spi46
;-------------------------------
  %sp1.5 = bitcast i8* %next0.5 to [1 x i8]*
  store [1 x i8] %s1.5, [1 x i8]* %sp1.5
  %next1.5 = getelementptr [3 x i8], [3 x i8]* %sp5, i32 0, i32 2
  
  %s2.5 = load [1 x i8], [1 x i8]* @str.2.5
  %sp2.5 = bitcast i8* %next1.5 to [1 x i8]*
  store [1 x i8] %s2.5, [1 x i8]* %sp2.5

  %spi5 = ptrtoint [3 x i8]* %sp5 to i32
  store i32 %spi5, i32* %29, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -84
  %30 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %30, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %32 = load i32, i32* %8, align 4
  %tmp0_v1.i.i = add i32 %32, 4
  %33 = inttoptr i32 %tmp0_v1.i.i to i32*
  %34 = load i32, i32* %33, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %sp0.61 = alloca [2 x i8]
  store [2 x i8] c"\03\45", [2 x i8]* %sp0.61
  %sp0.1.61 = bitcast [2 x i8]* %sp0.61 to i16*
  %i0.61 = load i16, i16* %sp0.1.61

  %sp1.61 = alloca [2 x i8]
  store [2 x i8] c"\30\45", [2 x i8]* %sp1.61
  %sp1.1.61 = bitcast [2 x i8]* %sp1.61 to i16*
  %i1.61 = load i16, i16* %sp1.1.61

  %xp61 = xor i16 %i0.61, %i1.61

  %fi.61 = alloca i16
  store i16 %xp61, i16* %fi.61

  %spi61 = ptrtoint i16* %fi.61 to i32
  store i32 %spi61, i32* %12, align 4
;-------------------------------
  store i32 %34, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i7 = load i32, i32* %13, align 16
  %arg2.i.i8 = load i32, i32* %12, align 4
  %35 = tail call i32 @strcmp(i32 %arg.i.i7, i32 %arg2.i.i8)
  %.not.i37.i = icmp eq i32 %35, 0
  br i1 %.not.i37.i, label %BB_8049472.i, label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i19.i.i = add i32 %tmp0_v.i.i, -40
  %36 = inttoptr i32 %tmp2_v.i19.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %36, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i24.i.i = add i32 %tmp0_v.i.i, -84
  %37 = inttoptr i32 %tmp2_v2.i24.i.i to i32*
  store i32 134517482, i32* %37, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %38 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %tmp2_v5.i.i.i11 = add i32 %tmp0_v.i.i, -92
  %40 = inttoptr i32 %tmp2_v5.i.i.i11 to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %40, align 4
  %sp6 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.6 = load [1 x i8], [1 x i8]* @str.0.6
  %sp0.49 = alloca [1 x i8]
  store [1 x i8] c"\34", [1 x i8]* %sp0.49
  %sp0.1.49 = bitcast [1 x i8]* %sp0.49 to i8*
  %i0.49 = load i8, i8* %sp0.1.49

  %sp1.49 = alloca [1 x i8]
  store [1 x i8] c"\43", [1 x i8]* %sp1.49
  %sp1.1.49 = bitcast [1 x i8]* %sp1.49 to i8*
  %i1.49 = load i8, i8* %sp1.1.49

  %xp49 = xor i8 %i0.49, %i1.49

  %fi.49 = alloca i8
  store i8 %xp49, i8* %fi.49

  %spi49 = bitcast i8* %fi.49 to [1 x i8]*
  %s0.6 = load [1 x i8], [1 x i8]* %spi49
;-------------------------------
  %sp0.6 = bitcast [3 x i8]* %sp6 to [1 x i8]*
  store [1 x i8] %s0.6, [1 x i8]* %sp0.6
  %next0.6 = getelementptr [3 x i8], [3 x i8]* %sp6, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.6 = load [1 x i8], [1 x i8]* @str.1.6
  %sp0.48 = alloca [1 x i8]
  store [1 x i8] c"\41", [1 x i8]* %sp0.48
  %sp0.1.48 = bitcast [1 x i8]* %sp0.48 to i8*
  %i0.48 = load i8, i8* %sp0.1.48

  %sp1.48 = alloca [1 x i8]
  store [1 x i8] c"\6a", [1 x i8]* %sp1.48
  %sp1.1.48 = bitcast [1 x i8]* %sp1.48 to i8*
  %i1.48 = load i8, i8* %sp1.1.48

  %xp48 = xor i8 %i0.48, %i1.48

  %fi.48 = alloca i8
  store i8 %xp48, i8* %fi.48

  %spi48 = bitcast i8* %fi.48 to [1 x i8]*
  %s1.6 = load [1 x i8], [1 x i8]* %spi48
;-------------------------------
  %sp1.6 = bitcast i8* %next0.6 to [1 x i8]*
  store [1 x i8] %s1.6, [1 x i8]* %sp1.6
  %next1.6 = getelementptr [3 x i8], [3 x i8]* %sp6, i32 0, i32 2
  
  %s2.6 = load [1 x i8], [1 x i8]* @str.2.6
  %sp2.6 = bitcast i8* %next1.6 to [1 x i8]*
  store [1 x i8] %s2.6, [1 x i8]* %sp2.6

  %spi6 = ptrtoint [3 x i8]* %sp6 to i32
  store i32 %spi6, i32* %40, align 4
;-------------------------------
  %tmp2_v7.i.i.i12 = add i32 %tmp0_v.i.i, -96
  %41 = inttoptr i32 %tmp2_v7.i.i.i12 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %41, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @ispunct13 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack12, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %sp7 = alloca [15 x i8]
  
;-------------------------------
; Replace: %s0.7 = load [2 x i8], [2 x i8]* @str.0.7
  %sp0.51 = alloca [2 x i8]
  store [2 x i8] c"\2E\14", [2 x i8]* %sp0.51
  %sp0.1.51 = bitcast [2 x i8]* %sp0.51 to i16*
  %i0.51 = load i16, i16* %sp0.1.51

  %sp1.51 = alloca [2 x i8]
  store [2 x i8] c"\5a\71", [2 x i8]* %sp1.51
  %sp1.1.51 = bitcast [2 x i8]* %sp1.51 to i16*
  %i1.51 = load i16, i16* %sp1.1.51

  %xp51 = xor i16 %i0.51, %i1.51

  %fi.51 = alloca i16
  store i16 %xp51, i16* %fi.51

  %spi51 = bitcast i16* %fi.51 to [2 x i8]*
  %s0.7 = load [2 x i8], [2 x i8]* %spi51
;-------------------------------
  %sp0.7 = bitcast [15 x i8]* %sp7 to [2 x i8]*
  store [2 x i8] %s0.7, [2 x i8]* %sp0.7
  %next0.7 = getelementptr [15 x i8], [15 x i8]* %sp7, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.7 = load [2 x i8], [2 x i8]* @str.1.7
  %sp0.50 = alloca [2 x i8]
  store [2 x i8] c"\4B\3D", [2 x i8]* %sp0.50
  %sp0.1.50 = bitcast [2 x i8]* %sp0.50 to i16*
  %i0.50 = load i16, i16* %sp0.1.50

  %sp1.50 = alloca [2 x i8]
  store [2 x i8] c"\33\49", [2 x i8]* %sp1.50
  %sp1.1.50 = bitcast [2 x i8]* %sp1.50 to i16*
  %i1.50 = load i16, i16* %sp1.1.50

  %xp50 = xor i16 %i0.50, %i1.50

  %fi.50 = alloca i16
  store i16 %xp50, i16* %fi.50

  %spi50 = bitcast i16* %fi.50 to [2 x i8]*
  %s1.7 = load [2 x i8], [2 x i8]* %spi50
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @trim_trailing_whitespace66 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack65, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %sp1.7 = bitcast i8* %next0.7 to [2 x i8]*
  store [2 x i8] %s1.7, [2 x i8]* %sp1.7
  %next1.7 = getelementptr [15 x i8], [15 x i8]* %sp7, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.7 = load [2 x i8], [2 x i8]* @str.2.7
  %sp0.56 = alloca [2 x i8]
  store [2 x i8] c"\30\36", [2 x i8]* %sp0.56
  %sp0.1.56 = bitcast [2 x i8]* %sp0.56 to i16*
  %i0.56 = load i16, i16* %sp0.1.56

  %sp1.56 = alloca [2 x i8]
  store [2 x i8] c"\6f\50", [2 x i8]* %sp1.56
  %sp1.1.56 = bitcast [2 x i8]* %sp1.56 to i16*
  %i1.56 = load i16, i16* %sp1.1.56

  %xp56 = xor i16 %i0.56, %i1.56

  %fi.56 = alloca i16
  store i16 %xp56, i16* %fi.56

  %spi56 = bitcast i16* %fi.56 to [2 x i8]*
  %s2.7 = load [2 x i8], [2 x i8]* %spi56
;-------------------------------
  %sp2.7 = bitcast i8* %next1.7 to [2 x i8]*
  store [2 x i8] %s2.7, [2 x i8]* %sp2.7
  %next2.7 = getelementptr [15 x i8], [15 x i8]* %sp7, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.7 = load [2 x i8], [2 x i8]* @str.3.7
  %sp0.52 = alloca [2 x i8]
  store [2 x i8] c"\22\38", [2 x i8]* %sp0.52
  %sp0.1.52 = bitcast [2 x i8]* %sp0.52 to i16*
  %i0.52 = load i16, i16* %sp0.1.52

  %sp1.52 = alloca [2 x i8]
  store [2 x i8] c"\4b\54", [2 x i8]* %sp1.52
  %sp1.1.52 = bitcast [2 x i8]* %sp1.52 to i16*
  %i1.52 = load i16, i16* %sp1.1.52

  %xp52 = xor i16 %i0.52, %i1.52

  %fi.52 = alloca i16
  store i16 %xp52, i16* %fi.52

  %spi52 = bitcast i16* %fi.52 to [2 x i8]*
  %s3.7 = load [2 x i8], [2 x i8]* %spi52
;-------------------------------
  %sp3.7 = bitcast i8* %next2.7 to [2 x i8]*
  store [2 x i8] %s3.7, [2 x i8]* %sp3.7
  %next3.7 = getelementptr [15 x i8], [15 x i8]* %sp7, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.7 = load [2 x i8], [2 x i8]* @str.4.7
  %sp0.54 = alloca [2 x i8]
  store [2 x i8] c"\24\4B", [2 x i8]* %sp0.54
  %sp0.1.54 = bitcast [2 x i8]* %sp0.54 to i16*
  %i0.54 = load i16, i16* %sp0.1.54

  %sp1.54 = alloca [2 x i8]
  store [2 x i8] c"\41\78", [2 x i8]* %sp1.54
  %sp1.1.54 = bitcast [2 x i8]* %sp1.54 to i16*
  %i1.54 = load i16, i16* %sp1.1.54

  %xp54 = xor i16 %i0.54, %i1.54

  %fi.54 = alloca i16
  store i16 %xp54, i16* %fi.54

  %spi54 = bitcast i16* %fi.54 to [2 x i8]*
  %s4.7 = load [2 x i8], [2 x i8]* %spi54
;-------------------------------
  %sp4.7 = bitcast i8* %next3.7 to [2 x i8]*
  store [2 x i8] %s4.7, [2 x i8]* %sp4.7
  %next4.7 = getelementptr [15 x i8], [15 x i8]* %sp7, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.7 = load [2 x i8], [2 x i8]* @str.5.7
  %sp0.53 = alloca [2 x i8]
  store [2 x i8] c"\46\3F", [2 x i8]* %sp0.53
  %sp0.1.53 = bitcast [2 x i8]* %sp0.53 to i16*
  %i0.53 = load i16, i16* %sp0.1.53

  %sp1.53 = alloca [2 x i8]
  store [2 x i8] c"\68\4b", [2 x i8]* %sp1.53
  %sp1.1.53 = bitcast [2 x i8]* %sp1.53 to i16*
  %i1.53 = load i16, i16* %sp1.1.53

  %xp53 = xor i16 %i0.53, %i1.53

  %fi.53 = alloca i16
  store i16 %xp53, i16* %fi.53

  %spi53 = bitcast i16* %fi.53 to [2 x i8]*
  %s5.7 = load [2 x i8], [2 x i8]* %spi53
;-------------------------------
  %sp5.7 = bitcast i8* %next4.7 to [2 x i8]*
  store [2 x i8] %s5.7, [2 x i8]* %sp5.7
  %next5.7 = getelementptr [15 x i8], [15 x i8]* %sp7, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.7 = load [3 x i8], [3 x i8]* @str.6.7
  %sp0.55 = alloca [3 x i8]
  store [3 x i8] c"\37\21\35", [3 x i8]* %sp0.55
  %sp0.1.55 = bitcast [3 x i8]* %sp0.55 to i24*
  %i0.55 = load i24, i24* %sp0.1.55

  %sp1.55 = alloca [3 x i8]
  store [3 x i8] c"\4f\55\35", [3 x i8]* %sp1.55
  %sp1.1.55 = bitcast [3 x i8]* %sp1.55 to i24*
  %i1.55 = load i24, i24* %sp1.1.55

  %xp55 = xor i24 %i0.55, %i1.55

  %fi.55 = alloca i24
  store i24 %xp55, i24* %fi.55

  %spi55 = bitcast i24* %fi.55 to [3 x i8]*
  %s6.7 = load [3 x i8], [3 x i8]* %spi55
;-------------------------------
  %sp6.7 = bitcast i8* %next5.7 to [3 x i8]*
  store [3 x i8] %s6.7, [3 x i8]* %sp6.7

  %spi7 = ptrtoint [15 x i8]* %sp7 to i32
  store i32 %spi7, i32* %41, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -100
  %42 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %42, align 4
  %arg.i.i.i13 = load i32, i32* %41, align 16
  %arg2.i.i.i14 = load i32, i32* %40, align 4
  %43 = tail call i32 @fopen(i32 %arg.i.i.i13, i32 %arg2.i.i.i14)
  %tmp2_v.i4.i.i15 = add i32 %tmp0_v.i.i, -76
  %44 = inttoptr i32 %tmp2_v.i4.i.i15 to i32*
  store i32 %43, i32* %44, align 4
  %tmp2_v.i35.i.i = add i32 %tmp0_v.i.i, -72
  %45 = inttoptr i32 %tmp2_v.i35.i.i to i32*
  store i32 1818304585, i32* %45, align 8
  %tmp2_v1.i36.i.i = add i32 %tmp0_v.i.i, -68
  %46 = inttoptr i32 %tmp2_v1.i36.i.i to i32*
  store i32 1701995892, i32* %46, align 4
  %tmp2_v2.i37.i.i = add i32 %tmp0_v.i.i, -64
  %47 = inttoptr i32 %tmp2_v2.i37.i.i to i32*
  store i32 1752440932, i32* %47, align 16
  %tmp2_v3.i.i.i16 = add i32 %tmp0_v.i.i, -60
  %48 = inttoptr i32 %tmp2_v3.i.i.i16 to i32*
  store i32 1768300645, i32* %48, align 4
  %tmp2_v4.i38.i.i = add i32 %tmp0_v.i.i, -56
  %49 = inttoptr i32 %tmp2_v4.i38.i.i to i32*
  store i32 2188652, i32* %49, align 8
  %50 = load i32, i32* %44, align 4
  store i32 %50, i32* %37, align 4
  %tmp2_v7.i43.i.i = add i32 %tmp0_v.i.i, -88
  %51 = inttoptr i32 %tmp2_v7.i43.i.i to i32*
  store i32 20, i32* %51, align 8
  store i32 1, i32* %40, align 4
  store i32 %tmp2_v.i35.i.i, i32* %41, align 16
  store i32 134517622, i32* %42, align 4
  %arg.i.i4.i = load i32, i32* %41, align 16
  %arg2.i.i5.i = load i32, i32* %40, align 4
  %arg4.i.i.i17 = load i32, i32* %51, align 8
  %arg6.i.i.i = load i32, i32* %37, align 4
  %52 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i17, i32 %arg6.i.i.i)
  %53 = load i32, i32* %44, align 4
  store i32 %53, i32* %41, align 16
  store i32 134517636, i32* %42, align 4
  %arg.i.i6.i = load i32, i32* %41, align 16
  %54 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i48.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i48.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %sp0.62 = alloca [2 x i8]
  store [2 x i8] c"\77\31", [2 x i8]* %sp0.62
  %sp0.1.62 = bitcast [2 x i8]* %sp0.62 to i16*
  %i0.62 = load i16, i16* %sp0.1.62

  %sp1.62 = alloca [2 x i8]
  store [2 x i8] c"\45\31", [2 x i8]* %sp1.62
  %sp1.1.62 = bitcast [2 x i8]* %sp1.62 to i16*
  %i1.62 = load i16, i16* %sp1.1.62

  %xp62 = xor i16 %i0.62, %i1.62

  %fi.62 = alloca i16
  store i16 %xp62, i16* %fi.62

  %spi62 = ptrtoint i16* %fi.62 to i32
  store i32 %spi62, i32* %12, align 4
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i18 = load i32, i32* %13, align 16
  %arg2.i.i19 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i18, i32 %arg2.i.i19)
  %.not.i.i = icmp eq i32 %58, 0
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @void_function_return141 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack140, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  br i1 %.not.i.i, label %BB_804944C.i, label %BB_8049453.i

.exit:                                            ; preds = %BB_804944C.i, %BB_8049453.i, %BB_8049426.i, %BB_8049472.i
  ret void
.escape.1:
  ret void
.escape.18:
  ret void
}

define internal fastcc void @void_function_return141(i32 %arg_esp) unnamed_addr  norecurse  !retregs !91 {
.exit:
  %tmp2_v.i38.i = add i32 %arg_esp, 4
  %tmp0_v.i39.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i39.i, -4
  %2 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i41.i = add i32 %tmp0_v.i39.i, -8
  %3 = inttoptr i32 %tmp2_v4.i41.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i39.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i44.i = add i32 %tmp0_v.i39.i, -16
  %5 = inttoptr i32 %tmp2_v6.i44.i to i32*
  store i32 %tmp2_v.i38.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i39.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517447, i32* %6, align 4
  %tmp4_v.i8.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i39.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  store i32 1, i32* %6, align 4
  %tmp2_v4.i14.i = add i32 %tmp0_v.i39.i, -56
  %10 = inttoptr i32 %tmp2_v4.i14.i to i32*
  store i32 134517471, i32* %10, align 8
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i39.i, -60
  %11 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i41.i, i32* %11, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i39.i, -64
  %12 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517250, i32* %12, align 16
  %13 = load i32, i32* %6, align 4
  %tmp0_v2.i.i.i = add i32 %13, 1
  %14 = load i32, i32* %11, align 4
  store i32 %tmp0_v2.i.i.i, i32* %11, align 4
;-------------------------------
; Replace: %spi.bis.139 = ptrtoint[4 x i8]* @str.bis.139 to i32
  %sp0.20 = alloca [4 x i8]
  store [4 x i8] c"\16\1D\5E\65", [4 x i8]* %sp0.20
  %sp0.1.20 = bitcast [4 x i8]* %sp0.20 to i32*
  %i0.20 = load i32, i32* %sp0.1.20

  %sp1.20 = alloca [4 x i8]
  store [4 x i8] c"\33\79\54\65", [4 x i8]* %sp1.20
  %sp1.1.20 = bitcast [4 x i8]* %sp1.20 to i32*
  %i1.20 = load i32, i32* %sp1.1.20

  %xp20 = xor i32 %i0.20, %i1.20

  %fi.20 = alloca i32
  store i32 %xp20, i32* %fi.20

  %spi20 = bitcast i32* %fi.20 to [4 x i8]*
  %spi.bis.139 = ptrtoint[4 x i8]* %spi20 to i32
;-------------------------------
  store i32 %spi.bis.139, i32* %12, align 16
  %tmp2_v4.i22.i = add i32 %tmp0_v.i39.i, -68
  %15 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 134517490, i32* %15, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i38.i, i32 inreg noundef 0, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !92
  %tmp2_v.i32.i = add i32 %14, -32
  %17 = inttoptr i32 %tmp2_v.i32.i to i32*
  store i32 1, i32* %17, align 4
  %tmp2_v1.i.i = add i32 %14, -28
  %18 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 2, i32* %18, align 4
  %tmp2_v2.i33.i = add i32 %14, -24
  %19 = inttoptr i32 %tmp2_v2.i33.i to i32*
  store i32 3, i32* %19, align 4
  %tmp2_v3.i34.i = add i32 %14, -20
  %20 = inttoptr i32 %tmp2_v3.i34.i to i32*
  store i32 4, i32* %20, align 4
  %tmp2_v4.i35.i = add i32 %14, -16
  %21 = inttoptr i32 %tmp2_v4.i35.i to i32*
  store i32 5, i32* %21, align 4
  store i32 -1, i32* %11, align 4
  store i32 %tmp2_v.i32.i, i32* %12, align 16
  store i32 134517542, i32* %15, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i39.i, -72
  %22 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %14, i32* %22, align 8
  %tmp2_v1.i.i.i3 = add i32 %tmp0_v.i39.i, -76
  %23 = inttoptr i32 %tmp2_v1.i.i.i3 to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i39.i, -100
  %24 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517343, i32* %24, align 4
  %tmp2_v.i2.i.i.i = add i32 %tmp0_v.i39.i, -104
  %25 = inttoptr i32 %tmp2_v.i2.i.i.i to i32*
  store i32 %tmp2_v.i7.i.i, i32* %25, align 8
  %tmp2_v1.i.i.i.i = add i32 %tmp0_v.i39.i, -108
  %26 = inttoptr i32 %tmp2_v1.i.i.i.i to i32*
  store i32 134529024, i32* %26, align 4
  %tmp2_v2.i4.i.i.i = add i32 %tmp0_v.i39.i, -116
  %27 = inttoptr i32 %tmp2_v2.i4.i.i.i to i32*
  store i32 134517279, i32* %27, align 4
  %tmp2_v2.i.i.i.i = add i32 %tmp0_v.i39.i, -128
  %28 = inttoptr i32 %tmp2_v2.i.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.138 = ptrtoint[22 x i8]* @str.bis.138 to i32
  %sp0.19 = alloca [22 x i8]
  store [22 x i8] c"\18\1A\25\19\36\5E\57\11\0F\46\26\26\41\55\0A\06\03\28\31\10\48\4B", [22 x i8]* %sp0.19
  %sp0.1.19 = bitcast [22 x i8]* %sp0.19 to i176*
  %i0.19 = load i176, i176* %sp0.1.19

  %sp1.19 = alloca [22 x i8]
  store [22 x i8] c"\51\74\53\78\5a\37\33\31\6e\34\54\47\38\75\66\63\6d\4f\45\78\69\4b", [22 x i8]* %sp1.19
  %sp1.1.19 = bitcast [22 x i8]* %sp1.19 to i176*
  %i1.19 = load i176, i176* %sp1.1.19

  %xp19 = xor i176 %i0.19, %i1.19

  %fi.19 = alloca i176
  store i176 %xp19, i176* %fi.19

  %spi19 = bitcast i176* %fi.19 to [22 x i8]*
  %spi.bis.138 = ptrtoint[22 x i8]* %spi19 to i32
;-------------------------------
  store i32 %spi.bis.138, i32* %28, align 16
  %tmp2_v3.i.i.i.i = add i32 %tmp0_v.i39.i, -132
  %29 = inttoptr i32 %tmp2_v3.i.i.i.i to i32*
  store i32 134517301, i32* %29, align 4
  %arg.i.i.i.i = load i32, i32* %28, align 16
  %30 = inttoptr i32 %arg.i.i.i.i to i8*
  %31 = tail call i32 @puts(i8* nonnull dereferenceable(1) %30)
  %32 = load i32, i32* %25, align 8
  %tmp2_v.i2.i.i4 = add i32 %32, -4
  %33 = inttoptr i32 %tmp2_v.i2.i.i4 to i32*
  %34 = load i32, i32* %33, align 4
  %tmp4_v3.i.i.i = add i32 %32, 8
  %tmp2_v.i27.i = add i32 %34, -8154
  %35 = inttoptr i32 %tmp4_v3.i.i.i to i32*
  store i32 %tmp2_v.i27.i, i32* %35, align 4
  %tmp2_v3.i28.i = add i32 %32, 4
  %36 = inttoptr i32 %tmp2_v3.i28.i to i32*
  store i32 134517560, i32* %36, align 4
  %arg.i.i = load i32, i32* %35, align 4
  %37 = inttoptr i32 %arg.i.i to i8*
  %38 = tail call i32 @puts(i8* nonnull dereferenceable(1) %37)
  ret void
}
define internal fastcc void @hello_world978(i32 %arg_esp) unnamed_addr  norecurse  !retregs !78 {
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
; Replace: %spi.bis.976 = ptrtoint[4 x i8]* @str.bis.976 to i32
  %sp0.22 = alloca [4 x i8]
  store [4 x i8] c"\67\20\47\36", [4 x i8]* %sp0.22
  %sp0.1.22 = bitcast [4 x i8]* %sp0.22 to i32*
  %i0.22 = load i32, i32* %sp0.1.22

  %sp1.22 = alloca [4 x i8]
  store [4 x i8] c"\62\72\69\36", [4 x i8]* %sp1.22
  %sp1.1.22 = bitcast [4 x i8]* %sp1.22 to i32*
  %i1.22 = load i32, i32* %sp1.1.22

  %xp22 = xor i32 %i0.22, %i1.22

  %fi.22 = alloca i32
  store i32 %xp22, i32* %fi.22

  %spi22 = bitcast i32* %fi.22 to [4 x i8]*
  %spi.bis.976 = ptrtoint[4 x i8]* %spi22 to i32
;-------------------------------
  store i32 %spi.bis.976, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -32
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
;-------------------------------
; Replace: %spi.bis.975 = ptrtoint[14 x i8]* @str.bis.975 to i32
  %sp0.21 = alloca [14 x i8]
  store [14 x i8] c"\0C\55\36\01\19\18\4F\1C\0A\05\28\15\51\53", [14 x i8]* %sp0.21
  %sp0.1.21 = bitcast [14 x i8]* %sp0.21 to i112*
  %i0.21 = load i112, i112* %sp0.1.21

  %sp1.21 = alloca [14 x i8]
  store [14 x i8] c"\44\30\5a\6d\76\34\6f\4b\65\77\44\71\70\53", [14 x i8]* %sp1.21
  %sp1.1.21 = bitcast [14 x i8]* %sp1.21 to i112*
  %i1.21 = load i112, i112* %sp1.1.21

  %xp21 = xor i112 %i0.21, %i1.21

  %fi.21 = alloca i112
  store i112 %xp21, i112* %fi.21

  %spi21 = bitcast i112* %fi.21 to [14 x i8]*
  %spi.bis.975 = ptrtoint[14 x i8]* %spi21 to i32
;-------------------------------
  store i32 %spi.bis.975, i32* %8, align 16
  %tmp2_v3.i4.i = add i32 %tmp0_v.i.i, -36
  %9 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 134517188, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  ret void
}
define internal fastcc { i32, i32, i32, i32 } @Func_sum(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !65 {
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
define internal fastcc void @sum_naturals726(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !66 {
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
;-------------------------------
; Replace: %spi.bis.724 = ptrtoint[4 x i8]* @str.bis.724 to i32
  %sp0.23 = alloca [4 x i8]
  store [4 x i8] c"\1D\55\3D\4B", [4 x i8]* %sp0.23
  %sp0.1.23 = bitcast [4 x i8]* %sp0.23 to i32*
  %i0.23 = load i32, i32* %sp0.1.23

  %sp1.23 = alloca [4 x i8]
  store [4 x i8] c"\38\31\37\4b", [4 x i8]* %sp1.23
  %sp1.1.23 = bitcast [4 x i8]* %sp1.23 to i32*
  %i1.23 = load i32, i32* %sp1.1.23

  %xp23 = xor i32 %i0.23, %i1.23

  %fi.23 = alloca i32
  store i32 %xp23, i32* %fi.23

  %spi23 = bitcast i32* %fi.23 to [4 x i8]*
  %spi.bis.724 = ptrtoint[4 x i8]* %spi23 to i32
;-------------------------------
  store i32 %spi.bis.724, i32* %15, align 4
  %tmp2_v4.i5.i = add i32 %11, -4
  %16 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 134517201, i32* %16, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %13, i32 noundef %11, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !67
  ret void
}
define internal fastcc void @remove_chat_at_pos92(i32 %arg_esp) unnamed_addr  norecurse  !retregs !52 {
Func_8049225.exit.i:
  %tmp2_v.i4.i = add i32 %arg_esp, 4
  %tmp0_v.i5.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i5.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i5.i, -8
  %3 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i5.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i5.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i4.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i5.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i32.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i36.i = add i32 %tmp0_v.i5.i, -20
  %9 = inttoptr i32 %tmp2_v2.i36.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i37.i = add i32 %tmp0_v.i5.i, -32
  %10 = inttoptr i32 %tmp2_v3.i37.i to i32*
  store i32 875770417, i32* %10, align 16
  %tmp2_v4.i38.i = add i32 %tmp0_v.i5.i, -28
  %11 = inttoptr i32 %tmp2_v4.i38.i to i32*
  store i32 842083637, i32* %11, align 4
  %tmp2_v5.i39.i = add i32 %tmp0_v.i5.i, -24
  %12 = inttoptr i32 %tmp2_v5.i39.i to i32*
  store i32 3486771, i32* %12, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i5.i, -60
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 20, i32* %13, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i5.i, -64
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v3.i37.i, i32* %14, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i5.i, -68
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517285, i32* %15, align 4
  %tmp2_v.i27.i.i = add i32 %tmp0_v.i5.i, -72
  %16 = inttoptr i32 %tmp2_v.i27.i.i to i32*
  store i32 %tmp2_v4.i6.i, i32* %16, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i5.i, -76
  %17 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 134529024, i32* %17, align 4
  %tmp2_v2.i31.i.i = add i32 %tmp0_v.i5.i, -100
  %18 = inttoptr i32 %tmp2_v2.i31.i.i to i32*
;-------------------------------
; Replace: %spi.bis.90 = ptrtoint[4 x i8]* @str.bis.90 to i32
  %sp0.25 = alloca [4 x i8]
  store [4 x i8] c"\42\47\4A\57", [4 x i8]* %sp0.25
  %sp0.1.25 = bitcast [4 x i8]* %sp0.25 to i32*
  %i0.25 = load i32, i32* %sp0.1.25

  %sp1.25 = alloca [4 x i8]
  store [4 x i8] c"\47\6d\67\57", [4 x i8]* %sp1.25
  %sp1.1.25 = bitcast [4 x i8]* %sp1.25 to i32*
  %i1.25 = load i32, i32* %sp1.1.25

  %xp25 = xor i32 %i0.25, %i1.25

  %fi.25 = alloca i32
  store i32 %xp25, i32* %fi.25

  %spi25 = bitcast i32* %fi.25 to [4 x i8]*
  %spi.bis.90 = ptrtoint[4 x i8]* %spi25 to i32
;-------------------------------
  store i32 %spi.bis.90, i32* %18, align 4
  %19 = load i32, i32* %14, align 16
  %tmp2_v3.i39.i.i = add i32 %tmp0_v.i5.i, -112
  %20 = inttoptr i32 %tmp2_v3.i39.i.i to i32*
  store i32 %19, i32* %20, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i5.i, -116
  %21 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517480, i32* %21, align 4
  %arg.i.i.i = load i32, i32* %20, align 16
  %22 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i5.i, -84
  %23 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, %22
  br i1 %25, label %BB_80492FD.i.i, label %Func_remove_char.exit

BB_8049305.i.i:                                   ; preds = %BB_80492FD.i.i, %BB_8049305.i.i
  %storemerge19.i = phi i32 [ %tmp0_v13.i.i.i, %BB_8049305.i.i ], [ %24, %BB_80492FD.i.i ]
  %26 = load i32, i32* %14, align 16
  %tmp2_v1.i.i.i = add i32 %26, %storemerge19.i
  %tmp0_v4.i.i.i = add i32 %tmp2_v1.i.i.i, 1
  %27 = inttoptr i32 %tmp0_v4.i.i.i to i8*
  %28 = load i8, i8* %27, align 1
  %29 = inttoptr i32 %tmp2_v1.i.i.i to i8*
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %33, align 8
  %tmp0_v13.i.i.i = add i32 %30, 1
  store i32 %tmp0_v13.i.i.i, i32* %33, align 8
  %31 = load i32, i32* %23, align 4
  %32 = icmp slt i32 %tmp0_v13.i.i.i, %31
  br i1 %32, label %BB_8049305.i.i, label %Func_remove_char.exit

BB_80492FD.i.i:                                   ; preds = %Func_8049225.exit.i
  %tmp2_v1.i43.i.i = add i32 %tmp0_v.i5.i, -88
  %33 = inttoptr i32 %tmp2_v1.i43.i.i to i32*
  store i32 %24, i32* %33, align 8
  %34 = load i32, i32* %23, align 4
  %35 = icmp slt i32 %24, %34
  br i1 %35, label %BB_8049305.i.i, label %Func_remove_char.exit

Func_remove_char.exit:                            ; preds = %BB_80492FD.i.i, %BB_8049305.i.i, %Func_8049225.exit.i
  %r_eax.0.i = phi i8 [ 0, %Func_8049225.exit.i ], [ 1, %BB_80492FD.i.i ], [ 1, %BB_8049305.i.i ]
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %16, align 8
  %tmp2_v.i11.i = add i32 %37, -26
  %38 = inttoptr i32 %tmp2_v.i11.i to i8*
  store i8 %r_eax.0.i, i8* %38, align 1
  %tmp2_v.i27.i = add i32 %36, -8158
  store i32 %tmp2_v.i27.i, i32* %14, align 16
  store i32 134517332, i32* %15, align 4
  %arg.i.i = load i32, i32* %14, align 16
  %39 = inttoptr i32 %arg.i.i to i8*
  %40 = tail call i32 @puts(i8* nonnull dereferenceable(1) %39)
  store i32 5, i32* %13, align 4
  %tmp2_v2.i.i = add i32 %37, -24
  store i32 %tmp2_v2.i.i, i32* %14, align 16
  store i32 134517349, i32* %15, align 4
  store i32 %37, i32* %16, align 8
  store i32 %36, i32* %17, align 4
;-------------------------------
; Replace: %spi.bis.89 = ptrtoint[4 x i8]* @str.bis.89 to i32
  %sp0.24 = alloca [4 x i8]
  store [4 x i8] c"\3C\1B\58\74", [4 x i8]* %sp0.24
  %sp0.1.24 = bitcast [4 x i8]* %sp0.24 to i32*
  %i0.24 = load i32, i32* %sp0.1.24

  %sp1.24 = alloca [4 x i8]
  store [4 x i8] c"\39\31\75\74", [4 x i8]* %sp1.24
  %sp1.1.24 = bitcast [4 x i8]* %sp1.24 to i32*
  %i1.24 = load i32, i32* %sp1.1.24

  %xp24 = xor i32 %i0.24, %i1.24

  %fi.24 = alloca i32
  store i32 %xp24, i32* %fi.24

  %spi24 = bitcast i32* %fi.24 to [4 x i8]*
  %spi.bis.89 = ptrtoint[4 x i8]* %spi24 to i32
;-------------------------------
  store i32 %spi.bis.89, i32* %18, align 4
  %41 = load i32, i32* %14, align 16
  store i32 %41, i32* %20, align 16
  store i32 134517480, i32* %21, align 4
  %arg.i.i.i8 = load i32, i32* %20, align 16
  %42 = tail call i32 @strlen(i32 %arg.i.i.i8)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, %42
  br i1 %44, label %BB_80492FD.i.i17, label %Func_remove_char.exit22

BB_8049305.i.i15:                                 ; preds = %BB_80492FD.i.i17, %BB_8049305.i.i15
  %storemerge19.i11 = phi i32 [ %tmp0_v13.i.i.i14, %BB_8049305.i.i15 ], [ %43, %BB_80492FD.i.i17 ]
  %45 = load i32, i32* %14, align 16
  %tmp2_v1.i.i.i12 = add i32 %45, %storemerge19.i11
  %tmp0_v4.i.i.i13 = add i32 %tmp2_v1.i.i.i12, 1
  %46 = inttoptr i32 %tmp0_v4.i.i.i13 to i8*
  %47 = load i8, i8* %46, align 1
  %48 = inttoptr i32 %tmp2_v1.i.i.i12 to i8*
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %52, align 8
  %tmp0_v13.i.i.i14 = add i32 %49, 1
  store i32 %tmp0_v13.i.i.i14, i32* %52, align 8
  %50 = load i32, i32* %23, align 4
  %51 = icmp slt i32 %tmp0_v13.i.i.i14, %50
  br i1 %51, label %BB_8049305.i.i15, label %Func_remove_char.exit22

BB_80492FD.i.i17:                                 ; preds = %Func_remove_char.exit
  %tmp2_v1.i43.i.i16 = add i32 %tmp0_v.i5.i, -88
  %52 = inttoptr i32 %tmp2_v1.i43.i.i16 to i32*
  store i32 %43, i32* %52, align 8
  %53 = load i32, i32* %23, align 4
  %54 = icmp slt i32 %43, %53
  br i1 %54, label %BB_8049305.i.i15, label %Func_remove_char.exit22

Func_remove_char.exit22:                          ; preds = %BB_80492FD.i.i17, %BB_8049305.i.i15, %Func_remove_char.exit
  %r_eax.0.i18 = phi i8 [ 0, %Func_remove_char.exit ], [ 1, %BB_80492FD.i.i17 ], [ 1, %BB_8049305.i.i15 ]
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %16, align 8
  %tmp2_v.i45.i = add i32 %56, -25
  %57 = inttoptr i32 %tmp2_v.i45.i to i8*
  store i8 %r_eax.0.i18, i8* %57, align 1
  %tmp2_v.i62.i = add i32 %55, -8184
  store i32 %tmp2_v.i62.i, i32* %14, align 16
  store i32 134517376, i32* %15, align 4
  %arg.i.i23 = load i32, i32* %14, align 16
  %58 = inttoptr i32 %arg.i.i23 to i8*
  %59 = tail call i32 @puts(i8* nonnull dereferenceable(1) %58)
  %tmp2_v.i21.i = add i32 %56, -24
  store i32 %tmp2_v.i21.i, i32* %14, align 16
  store i32 134517411, i32* %15, align 4
  %arg.i.i24 = load i32, i32* %14, align 16
  %60 = inttoptr i32 %arg.i.i24 to i8*
  %61 = tail call i32 @puts(i8* nonnull dereferenceable(1) %60)
  ret void
}
define internal fastcc void @trim_trailing_whitespace66(i32 %arg_esp) unnamed_addr  norecurse  !retregs !40 {
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
  %tmp2_v8.i35.i = add i32 %tmp0_v.i28.i, -52
  %6 = inttoptr i32 %tmp2_v8.i35.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i28.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i28.i, -42
  %10 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i28.i, -38
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 544434464, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i28.i, -34
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i28.i, -30
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 779706743, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i28.i, -26
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 151652896, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i28.i, -22
  %15 = inttoptr i32 %tmp2_v8.i.i to i16*
  store i16 32, i16* %15, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i28.i, -60
  %16 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v3.i17.i, i32* %16, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i28.i, -64
  %17 = inttoptr i32 %tmp2_v13.i.i to i32*
;-------------------------------
; Replace: %spi.bis.64 = ptrtoint[13 x i8]* @str.bis.64 to i32
  %sp0.27 = alloca [13 x i8]
  store [13 x i8] c"\35\55\0E\20\3A\1D\6F\43\3C\57\6F\42\34", [13 x i8]* %sp0.27
  %sp0.1.27 = bitcast [13 x i8]* %sp0.27 to i104*
  %i0.27 = load i104, i104* %sp0.1.27

  %sp1.27 = alloca [13 x i8]
  store [13 x i8] c"\77\30\68\4f\48\78\55\49\36\77\4a\31\34", [13 x i8]* %sp1.27
  %sp1.1.27 = bitcast [13 x i8]* %sp1.27 to i104*
  %i1.27 = load i104, i104* %sp1.1.27

  %xp27 = xor i104 %i0.27, %i1.27

  %fi.27 = alloca i104
  store i104 %xp27, i104* %fi.27

  %spi27 = bitcast i104* %fi.27 to [13 x i8]*
  %spi.bis.64 = ptrtoint[13 x i8]* %spi27 to i32
;-------------------------------
  store i32 %spi.bis.64, i32* %17, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i28.i, -68
  %18 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 134517342, i32* %18, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i27.i, i32 inreg noundef 0, i32 noundef %tmp2_v13.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  store i32 %tmp2_v3.i17.i, i32* %17, align 16
  store i32 134517357, i32* %18, align 4
  %tmp2_v.i5.i.i = add i32 %tmp0_v.i28.i, -72
  %20 = inttoptr i32 %tmp2_v.i5.i.i to i32*
  store i32 %tmp2_v4.i30.i, i32* %20, align 8
  %tmp2_v1.i7.i.i = add i32 %tmp0_v.i28.i, -76
  %21 = inttoptr i32 %tmp2_v1.i7.i.i to i32*
  store i32 134529024, i32* %21, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i28.i, -100
  %22 = inttoptr i32 %tmp2_v2.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.63 = ptrtoint[4 x i8]* @str.bis.63 to i32
  %sp0.26 = alloca [4 x i8]
  store [4 x i8] c"\7F\70\6B\77", [4 x i8]* %sp0.26
  %sp0.1.26 = bitcast [4 x i8]* %sp0.26 to i32*
  %i0.26 = load i32, i32* %sp0.1.26

  %sp1.26 = alloca [4 x i8]
  store [4 x i8] c"\7a\4f\46\77", [4 x i8]* %sp1.26
  %sp1.1.26 = bitcast [4 x i8]* %sp1.26 to i32*
  %i1.26 = load i32, i32* %sp1.1.26

  %xp26 = xor i32 %i0.26, %i1.26

  %fi.26 = alloca i32
  store i32 %xp26, i32* %fi.26

  %spi26 = bitcast i32* %fi.26 to [4 x i8]*
  %spi.bis.63 = ptrtoint[4 x i8]* %spi26 to i32
;-------------------------------
  store i32 %spi.bis.63, i32* %22, align 4
  %23 = load i32, i32* %17, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i28.i, -112
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i28.i, -116
  %25 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517459, i32* %25, align 4
  %arg.i.i.i = load i32, i32* %24, align 16
  %26 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i12.i.i = add i32 %tmp0_v.i28.i, -84
  %27 = inttoptr i32 %tmp2_v.i12.i.i to i32*
  br label %BB_804930F.i.i

BB_804930F.i.i:                                   ; preds = %BB_804930F.i.i.backedge, %.exit
  %storemerge.in.i = phi i32 [ %26, %.exit ], [ %storemerge.i, %BB_804930F.i.i.backedge ]
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, i32* %27, align 4
  %28 = load i32, i32* %17, align 16
  %tmp0_v3.i40.i.i = add i32 %28, %storemerge.i
  %29 = inttoptr i32 %tmp0_v3.i40.i.i to i8*
  %30 = load i8, i8* %29, align 1
  switch i8 %30, label %Func_trim.exit [
    i8 32, label %BB_804930F.i.i.backedge
    i8 10, label %BB_804930F.i.i.backedge
    i8 9, label %BB_804930F.i.i.backedge
  ]

BB_804930F.i.i.backedge:                          ; preds = %BB_804930F.i.i, %BB_804930F.i.i, %BB_804930F.i.i
  br label %BB_804930F.i.i

Func_trim.exit:                                   ; preds = %BB_804930F.i.i
  %tmp0_v4.i19.i.i = add i32 %28, %storemerge.in.i
  %31 = inttoptr i32 %tmp0_v4.i19.i.i to i8*
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %21, align 4
  %33 = load i32, i32* %20, align 8
  %tmp2_v.i.i = add i32 %32, -8171
  store i32 %tmp2_v.i.i, i32* %17, align 16
  store i32 134517375, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 16
  %34 = inttoptr i32 %arg.i.i to i8*
  %35 = tail call i32 @puts(i8* nonnull dereferenceable(1) %34)
  %tmp2_v.i10.i = add i32 %33, -34
  store i32 %tmp2_v.i10.i, i32* %17, align 16
  store i32 134517390, i32* %18, align 4
  %arg.i.i3 = load i32, i32* %17, align 16
  %36 = inttoptr i32 %arg.i.i3 to i8*
  %37 = tail call i32 @puts(i8* nonnull dereferenceable(1) %36)
  ret void
}
define internal fastcc void @ispunct13(i32 %arg_esp) unnamed_addr  norecurse  !retregs !26 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v.i19.i = add i32 %tmp0_v.i.i, -17
  %7 = inttoptr i32 %tmp2_v.i19.i to i8*
  store i8 37, i8* %7, align 1
  store i32 134517216, i32* %6, align 4
  %8 = tail call i32 @__ctype_b_loc()
  %9 = load i8, i8* %7, align 1
  %tmp0_v1.i24.i = sext i8 %9 to i32
  %tmp0_v2.i25.i = shl nsw i32 %tmp0_v1.i24.i, 1
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -44
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %tmp0_v1.i24.i, i32* %10, align 4
  %tmp2_v4.i7.i = add i32 %tmp0_v.i.i, -48
  %11 = inttoptr i32 %tmp2_v4.i7.i to i32*
;-------------------------------
; Replace: %spi.bis.11 = ptrtoint[27 x i8]* @str.bis.11 to i32
  %sp0.28 = alloca [27 x i8]
  store [27 x i8] c"\5D\04\68\27\39\73\02\70\33\16\5B\57\01\42\10\36\0F\5A\36\52\5B\26\33\2C\7F\40\5A", [27 x i8]* %sp0.28
  %sp0.1.28 = bitcast [27 x i8]* %sp0.28 to i216*
  %i0.28 = load i216, i216* %sp0.1.28

  %sp1.28 = alloca [27 x i8]
  store [27 x i8] c"\78\67\48\4e\4a\53\63\50\43\63\35\34\75\37\71\42\66\35\58\72\36\47\41\47\51\4a\5a", [27 x i8]* %sp1.28
  %sp1.1.28 = bitcast [27 x i8]* %sp1.28 to i216*
  %i1.28 = load i216, i216* %sp1.1.28

  %xp28 = xor i216 %i0.28, %i1.28

  %fi.28 = alloca i216
  store i216 %xp28, i216* %fi.28

  %spi28 = bitcast i216* %fi.28 to [27 x i8]*
  %spi.bis.11 = ptrtoint[27 x i8]* %spi28 to i32
;-------------------------------
  store i32 %spi.bis.11, i32* %11, align 16
  %tmp2_v5.i8.i = add i32 %tmp0_v.i.i, -52
  %12 = inttoptr i32 %tmp2_v5.i8.i to i32*
  store i32 134517259, i32* %12, align 4
  %13 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %tmp0_v2.i25.i, i32 noundef %tmp2_v4.i7.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
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
!40 = !{i32 0, i32 0, i32 0, i32 0}
!41 = !{!"printf"}
!42 = !{!"clang version 14.0.0"}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"PIC Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{i32 1, !"NumRegisterParameters", i32 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{i32 0, i32 0, i32 0}
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
!65 = !{i32 0, i32 2, i32 3}
!66 = !{i32 0, i32 0, i32 0, i32 0}
!67 = !{!"printf"}
!68 = !{!"clang version 14.0.0"}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 7, !"PIC Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{i32 1, !"NumRegisterParameters", i32 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C++ TBAA"}
!78 = !{i32 0, i32 0, i32 0}
!79 = !{!"clang version 14.0.0"}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{i32 7, !"PIC Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{i32 1, !"NumRegisterParameters", i32 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"double", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C++ TBAA"}
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !87, i64 0}
!91 = !{i32 0, i32 0, i32 0, i32 0}
!92 = !{!"printf"}
