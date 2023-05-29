; Mutation 91
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
; Replace: store i32 134520900, i32* %12, align 4
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: store i32 134520866, i32* %40, align 4
;-------------------------------
; Replace: store i32 134520869, i32* %41, align 16
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
; Replace: %sp0.1.2 = bitcast [2 x i8]* @str.2 to i16*
@str.0.35 = constant [1 x i8] c"\7b"
@str.1.35 = constant [1 x i8] c"\48"
;-------------------------------
; Replace: %sp1.1.2 = bitcast [2 x i8]* @key.2 to i16*
@str.1.36 = constant [1 x i8] c"\48"
@str.0.36 = constant [1 x i8] c"\4a"
;-------------------------------
; Replace: %sp0.1.3 = bitcast [4 x i8]* @str.3 to i32*
@str.0.37 = constant [1 x i8] c"\77"
@str.1.37 = constant [1 x i8] c"\39"
@str.2.37 = constant [1 x i8] c"\14"
@str.3.37 = constant [1 x i8] c"\57"
;-------------------------------
; Replace: %sp1.1.3 = bitcast [4 x i8]* @key.3 to i32*
@str.2.38 = constant [1 x i8] c"\39"
@str.1.38 = constant [1 x i8] c"\63"
@str.0.38 = constant [1 x i8] c"\72"
@str.3.38 = constant [1 x i8] c"\57"
;-------------------------------
; Replace: %sp0.1.4 = bitcast [14 x i8]* @str.4 to i112*
@str.1.39 = constant [2 x i8] c"\03\3e"
@str.3.39 = constant [2 x i8] c"\5e\1d"
@str.2.39 = constant [3 x i8] c"\11\0d\0c"
@str.5.39 = constant [3 x i8] c"\40\61\6a"
@str.4.39 = constant [2 x i8] c"\6d\45"
@str.0.39 = constant [2 x i8] c"\31\11"
;-------------------------------
; Replace: %sp1.1.4 = bitcast [14 x i8]* @key.4 to i112*
@str.4.40 = constant [2 x i8] c"\4c\64"
@str.5.40 = constant [3 x i8] c"\61\6b\6a"
@str.2.40 = constant [3 x i8] c"\31\68\7a"
@str.0.40 = constant [2 x i8] c"\78\31"
@str.3.40 = constant [2 x i8] c"\37\71"
@str.1.40 = constant [2 x i8] c"\62\53"
;-------------------------------
; Replace: %sp0.1.5 = bitcast [9 x i8]* @str.5 to i72*
@str.3.41 = constant [2 x i8] c"\24\1b"
@str.1.41 = constant [2 x i8] c"\13\0b"
@str.2.41 = constant [1 x i8] c"\73"
@str.0.41 = constant [1 x i8] c"\15"
@str.5.41 = constant [2 x i8] c"\59\77"
@str.4.41 = constant [1 x i8] c"\51"
;-------------------------------
; Replace: %sp1.1.5 = bitcast [9 x i8]* @key.5 to i72*
@str.3.42 = constant [2 x i8] c"\66\62"
@str.5.42 = constant [2 x i8] c"\53\77"
@str.2.42 = constant [1 x i8] c"\53"
@str.1.42 = constant [2 x i8] c"\6a\6e"
@str.4.42 = constant [1 x i8] c"\34"
@str.0.42 = constant [1 x i8] c"\57"
;-------------------------------
; Replace: %sp0.1.6 = bitcast [3 x i8]* @str.6 to i24*
@str.1.43 = constant [1 x i8] c"\3e"
@str.2.43 = constant [1 x i8] c"\68"
@str.0.43 = constant [1 x i8] c"\75"
;-------------------------------
; Replace: %sp1.1.6 = bitcast [3 x i8]* @key.6 to i24*
@str.1.44 = constant [1 x i8] c"\4d"
@str.2.44 = constant [1 x i8] c"\68"
@str.0.44 = constant [1 x i8] c"\50"
;-------------------------------
; Replace: %sp0.1.7 = bitcast [2 x i8]* @str.7 to i16*
@str.0.45 = constant [1 x i8] c"\66"
@str.1.45 = constant [1 x i8] c"\6a"
;-------------------------------
; Replace: %sp1.1.7 = bitcast [2 x i8]* @key.7 to i16*
@str.0.46 = constant [1 x i8] c"\54"
@str.1.46 = constant [1 x i8] c"\6a"
;-------------------------------
; Replace: %sp0.1.8 = bitcast [3 x i8]* @str.8 to i24*
@str.2.47 = constant [1 x i8] c"\68"
@str.1.47 = constant [1 x i8] c"\12"
@str.0.47 = constant [1 x i8] c"\07"
;-------------------------------
; Replace: %sp1.1.8 = bitcast [3 x i8]* @key.8 to i24*
@str.1.48 = constant [1 x i8] c"\39"
@str.2.48 = constant [1 x i8] c"\68"
@str.0.48 = constant [1 x i8] c"\70"
;-------------------------------
; Replace: %sp0.1.9 = bitcast [15 x i8]* @str.9 to i120*
@str.2.49 = constant [2 x i8] c"\35\2b"
@str.0.49 = constant [2 x i8] c"\21\1f"
@str.5.49 = constant [3 x i8] c"\00\2e\64"
@str.4.49 = constant [2 x i8] c"\61\10"
@str.1.49 = constant [3 x i8] c"\2e\23\69"
@str.3.49 = constant [3 x i8] c"\09\3f\07"
;-------------------------------
; Replace: %sp1.1.9 = bitcast [15 x i8]* @key.9 to i120*
@str.4.50 = constant [2 x i8] c"\4f\64"
@str.3.50 = constant [3 x i8] c"\65\5a\34"
@str.2.50 = constant [2 x i8] c"\53\42"
@str.0.50 = constant [2 x i8] c"\55\7a"
@str.1.50 = constant [3 x i8] c"\56\57\36"
@str.5.50 = constant [3 x i8] c"\78\5a\64"
;-------------------------------
; Replace: %sp0.1.10 = bitcast [2 x i8]* @str.10 to i16*
@str.1.51 = constant [1 x i8] c"\68"
@str.0.51 = constant [1 x i8] c"\7e"
;-------------------------------
; Replace: %sp1.1.10 = bitcast [2 x i8]* @key.10 to i16*
@str.1.52 = constant [1 x i8] c"\68"
@str.0.52 = constant [1 x i8] c"\4d"

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
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

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
declare i32 @alarm(i32) local_unnamed_addr noinline
declare void @perror(i32) local_unnamed_addr noinline
declare double @atof(i32) local_unnamed_addr  noinline 
declare i32 @usleep(i32) local_unnamed_addr  noinline 
declare i32 @toupper(i32) local_unnamed_addr  noinline 
declare i32 @htonl(i32) local_unnamed_addr nofree noinline nosync nounwind readnone
declare i32 @atol(i32) local_unnamed_addr  noinline 
declare i32 @strpbrk(i32, i32) local_unnamed_addr  noinline 
declare i32 @tolower(i32) local_unnamed_addr  noinline 
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 
declare dso_local i32 @puts(i8*) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.53 = tail call i32 @detect_vm()
  %must.escape.53 = icmp ne i32 %result.53, 0
  br i1 %must.escape.53, label %.escape.53, label %.proceed.53
.proceed.53:
;----------------------------
  %time11 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time11)
  %rand_init32 = tail call i32 @rand()
  %rand_fin33 = srem i32 %rand_init32, 5
  %rand_init28 = tail call i32 @rand()
  %rand_fin29 = srem i32 %rand_init28, 5
  %rand_init24 = tail call i32 @rand()
  %rand_fin25 = srem i32 %rand_init24, 5
  %rand_init20 = tail call i32 @rand()
  %rand_fin21 = srem i32 %rand_init20, 5
  %rand_init16 = tail call i32 @rand()
  %rand_fin17 = srem i32 %rand_init16, 5
  %rand_init12 = tail call i32 @rand()
  %rand_fin13 = srem i32 %rand_init12, 5
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
  %tmp2_v.i7.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i7.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i8.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i8.i to i32*
  %11 = load i32, i32* %10, align 4
;-------------------------------
;----------Random Cond----------
  %.not18.i.i = icmp eq i32 2 , %rand_fin17 
;-------------------------------
;----------Random Cond----------
  %.not34.i.i = icmp eq i32 3 , %rand_fin33 
  br i1 %.not34.i.i, label %next34, label %BB_14
next34:
;-------------------------------
  br i1 %.not18.i.i, label %next18, label %BB_14
next18:
;-------------------------------
  %tmp2_v6.i11.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v6.i11.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
;-------------------------------
; Replace: %sp0.1.2 = bitcast [2 x i8]* @str.2 to i16*
  %spi35 = alloca [2 x i8]
  
  %s0.35 = load [1 x i8], [1 x i8]* @str.0.35
  %sp0.35 = bitcast [2 x i8]* %spi35 to [1 x i8]*
  store [1 x i8] %s0.35, [1 x i8]* %sp0.35
  %next0.35 = getelementptr [2 x i8], [2 x i8]* %spi35, i32 0, i32 1
  
  %s1.35 = load [1 x i8], [1 x i8]* @str.1.35
  %sp1.35 = bitcast i8* %next0.35 to [1 x i8]*
  store [1 x i8] %s1.35, [1 x i8]* %sp1.35
  %sp0.1.2 = bitcast [2 x i8]* %spi35 to i16*
;-------------------------------
  %i0.2 = load i16, i16* %sp0.1.2

;-------------------------------
; Replace: %sp1.1.2 = bitcast [2 x i8]* @key.2 to i16*
  %spi36 = alloca [2 x i8]
  
  %s0.36 = load [1 x i8], [1 x i8]* @str.0.36
  %sp0.36 = bitcast [2 x i8]* %spi36 to [1 x i8]*
  store [1 x i8] %s0.36, [1 x i8]* %sp0.36
  %next0.36 = getelementptr [2 x i8], [2 x i8]* %spi36, i32 0, i32 1
  
  %s1.36 = load [1 x i8], [1 x i8]* @str.1.36
  %sp1.36 = bitcast i8* %next0.36 to [1 x i8]*
  store [1 x i8] %s1.36, [1 x i8]* %sp1.36
  %sp1.1.2 = bitcast [2 x i8]* %spi36 to i16*
;-------------------------------
  %i1.2 = load i16, i16* %sp1.1.2

;-------------------------------
;----------Random Cond----------
  %.not22.i.i = icmp eq i32 3 , %rand_fin21 
  br i1 %.not22.i.i, label %next22, label %BB_14
next22:
;-------------------------------
  %xp2 = xor i16 %i0.2, %i1.2

  %fi.2 = alloca i16
  store i16 %xp2, i16* %fi.2

  %spi2 = ptrtoint i16* %fi.2 to i32
  store i32 %spi2, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i12.i = add i32 %tmp0_v.i.i, -48
  %13 = inttoptr i32 %tmp2_v7.i12.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i55.i = icmp eq i32 %15, 0
  br i1 %.not.i55.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -40
  %16 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -68
  %17 = inttoptr i32 %tmp2_v2.i.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
;-------------------------------
; Replace: %sp0.1.3 = bitcast [4 x i8]* @str.3 to i32*
  %spi37 = alloca [4 x i8]
  
  %s0.37 = load [1 x i8], [1 x i8]* @str.0.37
  %sp0.37 = bitcast [4 x i8]* %spi37 to [1 x i8]*
  store [1 x i8] %s0.37, [1 x i8]* %sp0.37
  %next0.37 = getelementptr [4 x i8], [4 x i8]* %spi37, i32 0, i32 1
  
  %s1.37 = load [1 x i8], [1 x i8]* @str.1.37
  %sp1.37 = bitcast i8* %next0.37 to [1 x i8]*
  store [1 x i8] %s1.37, [1 x i8]* %sp1.37
  %next1.37 = getelementptr [4 x i8], [4 x i8]* %spi37, i32 0, i32 2
  
  %s2.37 = load [1 x i8], [1 x i8]* @str.2.37
  %sp2.37 = bitcast i8* %next1.37 to [1 x i8]*
  store [1 x i8] %s2.37, [1 x i8]* %sp2.37
  %next2.37 = getelementptr [4 x i8], [4 x i8]* %spi37, i32 0, i32 3
  
  %s3.37 = load [1 x i8], [1 x i8]* @str.3.37
  %sp3.37 = bitcast i8* %next2.37 to [1 x i8]*
  store [1 x i8] %s3.37, [1 x i8]* %sp3.37
  %sp0.1.3 = bitcast [4 x i8]* %spi37 to i32*
;-------------------------------
  %i0.3 = load i32, i32* %sp0.1.3

;-------------------------------
; Replace: %sp1.1.3 = bitcast [4 x i8]* @key.3 to i32*
  %spi38 = alloca [4 x i8]
  
  %s0.38 = load [1 x i8], [1 x i8]* @str.0.38
  %sp0.38 = bitcast [4 x i8]* %spi38 to [1 x i8]*
  store [1 x i8] %s0.38, [1 x i8]* %sp0.38
  %next0.38 = getelementptr [4 x i8], [4 x i8]* %spi38, i32 0, i32 1
  
  %s1.38 = load [1 x i8], [1 x i8]* @str.1.38
  %sp1.38 = bitcast i8* %next0.38 to [1 x i8]*
  store [1 x i8] %s1.38, [1 x i8]* %sp1.38
  %next1.38 = getelementptr [4 x i8], [4 x i8]* %spi38, i32 0, i32 2
  
  %s2.38 = load [1 x i8], [1 x i8]* @str.2.38
  %sp2.38 = bitcast i8* %next1.38 to [1 x i8]*
  store [1 x i8] %s2.38, [1 x i8]* %sp2.38
  %next2.38 = getelementptr [4 x i8], [4 x i8]* %spi38, i32 0, i32 3
  
  %s3.38 = load [1 x i8], [1 x i8]* @str.3.38
  %sp3.38 = bitcast i8* %next2.38 to [1 x i8]*
  store [1 x i8] %s3.38, [1 x i8]* %sp3.38
  %sp1.1.3 = bitcast [4 x i8]* %spi38 to i32*
;-------------------------------
  %i1.3 = load i32, i32* %sp1.1.3

  %xp3 = xor i32 %i0.3, %i1.3

  %fi.3 = alloca i32
  store i32 %xp3, i32* %fi.3

  %spi3 = ptrtoint i32* %fi.3 to i32
  store i32 %spi3, i32* %17, align 4
;-------------------------------
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i.i, -56
  %18 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
;-------------------------------
; Replace: %sp0.1.4 = bitcast [14 x i8]* @str.4 to i112*
  %spi39 = alloca [14 x i8]
  
  %s0.39 = load [2 x i8], [2 x i8]* @str.0.39
  %sp0.39 = bitcast [14 x i8]* %spi39 to [2 x i8]*
  store [2 x i8] %s0.39, [2 x i8]* %sp0.39
  %next0.39 = getelementptr [14 x i8], [14 x i8]* %spi39, i32 0, i32 2
  
  %s1.39 = load [2 x i8], [2 x i8]* @str.1.39
  %sp1.39 = bitcast i8* %next0.39 to [2 x i8]*
  store [2 x i8] %s1.39, [2 x i8]* %sp1.39
  %next1.39 = getelementptr [14 x i8], [14 x i8]* %spi39, i32 0, i32 4
  
  %s2.39 = load [3 x i8], [3 x i8]* @str.2.39
  %sp2.39 = bitcast i8* %next1.39 to [3 x i8]*
  store [3 x i8] %s2.39, [3 x i8]* %sp2.39
  %next2.39 = getelementptr [14 x i8], [14 x i8]* %spi39, i32 0, i32 7
  
  %s3.39 = load [2 x i8], [2 x i8]* @str.3.39
  %sp3.39 = bitcast i8* %next2.39 to [2 x i8]*
  store [2 x i8] %s3.39, [2 x i8]* %sp3.39
  %next3.39 = getelementptr [14 x i8], [14 x i8]* %spi39, i32 0, i32 9
  
  %s4.39 = load [2 x i8], [2 x i8]* @str.4.39
  %sp4.39 = bitcast i8* %next3.39 to [2 x i8]*
  store [2 x i8] %s4.39, [2 x i8]* %sp4.39
  %next4.39 = getelementptr [14 x i8], [14 x i8]* %spi39, i32 0, i32 11
  
  %s5.39 = load [3 x i8], [3 x i8]* @str.5.39
  %sp5.39 = bitcast i8* %next4.39 to [3 x i8]*
  store [3 x i8] %s5.39, [3 x i8]* %sp5.39
  %sp0.1.4 = bitcast [14 x i8]* %spi39 to i112*
;-------------------------------
  %i0.4 = load i112, i112* %sp0.1.4

;-------------------------------
; Replace: %sp1.1.4 = bitcast [14 x i8]* @key.4 to i112*
  %spi40 = alloca [14 x i8]
  
  %s0.40 = load [2 x i8], [2 x i8]* @str.0.40
  %sp0.40 = bitcast [14 x i8]* %spi40 to [2 x i8]*
  store [2 x i8] %s0.40, [2 x i8]* %sp0.40
  %next0.40 = getelementptr [14 x i8], [14 x i8]* %spi40, i32 0, i32 2
  
  %s1.40 = load [2 x i8], [2 x i8]* @str.1.40
  %sp1.40 = bitcast i8* %next0.40 to [2 x i8]*
  store [2 x i8] %s1.40, [2 x i8]* %sp1.40
  %next1.40 = getelementptr [14 x i8], [14 x i8]* %spi40, i32 0, i32 4
  
  %s2.40 = load [3 x i8], [3 x i8]* @str.2.40
  %sp2.40 = bitcast i8* %next1.40 to [3 x i8]*
  store [3 x i8] %s2.40, [3 x i8]* %sp2.40
  %next2.40 = getelementptr [14 x i8], [14 x i8]* %spi40, i32 0, i32 7
  
  %s3.40 = load [2 x i8], [2 x i8]* @str.3.40
  %sp3.40 = bitcast i8* %next2.40 to [2 x i8]*
  store [2 x i8] %s3.40, [2 x i8]* %sp3.40
  %next3.40 = getelementptr [14 x i8], [14 x i8]* %spi40, i32 0, i32 9
  %es66 = load i32, i32* %17, align 16
  %es67 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a65 = tail call i32 @strstr( i32 %es66, i32 %es67)
;-------------------------------
  
  %s4.40 = load [2 x i8], [2 x i8]* @str.4.40
  %sp4.40 = bitcast i8* %next3.40 to [2 x i8]*
  store [2 x i8] %s4.40, [2 x i8]* %sp4.40
  %next4.40 = getelementptr [14 x i8], [14 x i8]* %spi40, i32 0, i32 11
  
  %s5.40 = load [3 x i8], [3 x i8]* @str.5.40
  %sp5.40 = bitcast i8* %next4.40 to [3 x i8]*
  store [3 x i8] %s5.40, [3 x i8]* %sp5.40
  %sp1.1.4 = bitcast [14 x i8]* %spi40 to i112*
;-------------------------------
  %i1.4 = load i112, i112* %sp1.1.4

  %xp4 = xor i112 %i0.4, %i1.4

  %fi.4 = alloca i112
  store i112 %xp4, i112* %fi.4

  %spi4 = ptrtoint i112* %fi.4 to i32
  store i32 %spi4, i32* %18, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: %sp0.1.5 = bitcast [9 x i8]* @str.5 to i72*
  %spi41 = alloca [9 x i8]
  
  %s0.41 = load [1 x i8], [1 x i8]* @str.0.41
  %sp0.41 = bitcast [9 x i8]* %spi41 to [1 x i8]*
  store [1 x i8] %s0.41, [1 x i8]* %sp0.41
  %next0.41 = getelementptr [9 x i8], [9 x i8]* %spi41, i32 0, i32 1
  
  %s1.41 = load [2 x i8], [2 x i8]* @str.1.41
  %sp1.41 = bitcast i8* %next0.41 to [2 x i8]*
  store [2 x i8] %s1.41, [2 x i8]* %sp1.41
  %next1.41 = getelementptr [9 x i8], [9 x i8]* %spi41, i32 0, i32 3
  
  %s2.41 = load [1 x i8], [1 x i8]* @str.2.41
  %sp2.41 = bitcast i8* %next1.41 to [1 x i8]*
  store [1 x i8] %s2.41, [1 x i8]* %sp2.41
  %next2.41 = getelementptr [9 x i8], [9 x i8]* %spi41, i32 0, i32 4
  
  %s3.41 = load [2 x i8], [2 x i8]* @str.3.41
  %sp3.41 = bitcast i8* %next2.41 to [2 x i8]*
  store [2 x i8] %s3.41, [2 x i8]* %sp3.41
  %next3.41 = getelementptr [9 x i8], [9 x i8]* %spi41, i32 0, i32 6
  
  %s4.41 = load [1 x i8], [1 x i8]* @str.4.41
  %sp4.41 = bitcast i8* %next3.41 to [1 x i8]*
  store [1 x i8] %s4.41, [1 x i8]* %sp4.41
  %next4.41 = getelementptr [9 x i8], [9 x i8]* %spi41, i32 0, i32 7
  
  %s5.41 = load [2 x i8], [2 x i8]* @str.5.41
  %sp5.41 = bitcast i8* %next4.41 to [2 x i8]*
  store [2 x i8] %s5.41, [2 x i8]* %sp5.41
  %sp0.1.5 = bitcast [9 x i8]* %spi41 to i72*
;-------------------------------
  %i0.5 = load i72, i72* %sp0.1.5

;-------------------------------
; Replace: %sp1.1.5 = bitcast [9 x i8]* @key.5 to i72*
  %spi42 = alloca [9 x i8]
  
  %s0.42 = load [1 x i8], [1 x i8]* @str.0.42
  %sp0.42 = bitcast [9 x i8]* %spi42 to [1 x i8]*
  store [1 x i8] %s0.42, [1 x i8]* %sp0.42
  %next0.42 = getelementptr [9 x i8], [9 x i8]* %spi42, i32 0, i32 1
  
  %s1.42 = load [2 x i8], [2 x i8]* @str.1.42
  %sp1.42 = bitcast i8* %next0.42 to [2 x i8]*
  store [2 x i8] %s1.42, [2 x i8]* %sp1.42
  %next1.42 = getelementptr [9 x i8], [9 x i8]* %spi42, i32 0, i32 3
  %es75 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a74 = tail call i32 @atol(i32 %es75)
;-------------------------------
  
  %s2.42 = load [1 x i8], [1 x i8]* @str.2.42
  %sp2.42 = bitcast i8* %next1.42 to [1 x i8]*
  store [1 x i8] %s2.42, [1 x i8]* %sp2.42
;-------------------------------
;--------Added Syst Call--------
  %a81 = tail call i32 @usleep(i32 %i0.3)
;-------------------------------
  %next2.42 = getelementptr [9 x i8], [9 x i8]* %spi42, i32 0, i32 4
  
  %s3.42 = load [2 x i8], [2 x i8]* @str.3.42
  %sp3.42 = bitcast i8* %next2.42 to [2 x i8]*
  store [2 x i8] %s3.42, [2 x i8]* %sp3.42
  %next3.42 = getelementptr [9 x i8], [9 x i8]* %spi42, i32 0, i32 6
  
  %s4.42 = load [1 x i8], [1 x i8]* @str.4.42
  %sp4.42 = bitcast i8* %next3.42 to [1 x i8]*
  store [1 x i8] %s4.42, [1 x i8]* %sp4.42
  %next4.42 = getelementptr [9 x i8], [9 x i8]* %spi42, i32 0, i32 7
  
  %s5.42 = load [2 x i8], [2 x i8]* @str.5.42
  %sp5.42 = bitcast i8* %next4.42 to [2 x i8]*
  store [2 x i8] %s5.42, [2 x i8]* %sp5.42
  %sp1.1.5 = bitcast [9 x i8]* %spi42 to i72*
;-------------------------------
  %i1.5 = load i72, i72* %sp1.1.5

  %xp5 = xor i72 %i0.5, %i1.5

  %fi.5 = alloca i72
  store i72 %xp5, i72* %fi.5

  %spi5 = ptrtoint i72* %fi.5 to i32
  store i32 %spi5, i32* %14, align 4
;-------------------------------
  %19 = load i32, i32* %18, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
;-------------------------------
; Replace: %sp0.1.6 = bitcast [3 x i8]* @str.6 to i24*
  %spi43 = alloca [3 x i8]
  
  %s0.43 = load [1 x i8], [1 x i8]* @str.0.43
  %sp0.43 = bitcast [3 x i8]* %spi43 to [1 x i8]*
  store [1 x i8] %s0.43, [1 x i8]* %sp0.43
  %next0.43 = getelementptr [3 x i8], [3 x i8]* %spi43, i32 0, i32 1
  
  %s1.43 = load [1 x i8], [1 x i8]* @str.1.43
  %sp1.43 = bitcast i8* %next0.43 to [1 x i8]*
  store [1 x i8] %s1.43, [1 x i8]* %sp1.43
  %next1.43 = getelementptr [3 x i8], [3 x i8]* %spi43, i32 0, i32 2
  
  %s2.43 = load [1 x i8], [1 x i8]* @str.2.43
  %sp2.43 = bitcast i8* %next1.43 to [1 x i8]*
  store [1 x i8] %s2.43, [1 x i8]* %sp2.43
  %sp0.1.6 = bitcast [3 x i8]* %spi43 to i24*
;-------------------------------
  %i0.6 = load i24, i24* %sp0.1.6

;-------------------------------
; Replace: %sp1.1.6 = bitcast [3 x i8]* @key.6 to i24*
  %spi44 = alloca [3 x i8]
  
  %s0.44 = load [1 x i8], [1 x i8]* @str.0.44
  %sp0.44 = bitcast [3 x i8]* %spi44 to [1 x i8]*
  store [1 x i8] %s0.44, [1 x i8]* %sp0.44
  %next0.44 = getelementptr [3 x i8], [3 x i8]* %spi44, i32 0, i32 1
  
  %s1.44 = load [1 x i8], [1 x i8]* @str.1.44
  %sp1.44 = bitcast i8* %next0.44 to [1 x i8]*
  store [1 x i8] %s1.44, [1 x i8]* %sp1.44
  %next1.44 = getelementptr [3 x i8], [3 x i8]* %spi44, i32 0, i32 2
  
  %s2.44 = load [1 x i8], [1 x i8]* @str.2.44
  %sp2.44 = bitcast i8* %next1.44 to [1 x i8]*
  store [1 x i8] %s2.44, [1 x i8]* %sp2.44
  %sp1.1.6 = bitcast [3 x i8]* %spi44 to i24*
;-------------------------------
  %i1.6 = load i24, i24* %sp1.1.6

  %xp6 = xor i24 %i0.6, %i1.6

  %fi.6 = alloca i24
  store i24 %xp6, i24* %fi.6

  %spi6 = ptrtoint i24* %fi.6 to i32
  store i32 %spi6, i32* %21, align 16
;-------------------------------
  %es80 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a79 = tail call i32 @toupper(i32 %es80)
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -84
  %22 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  %arg.i.i60 = load i32, i32* %18, align 16  %el61= inttoptr i32 %arg.i.i60 to i8*
;-------------------------------
;--------Added Syst Call--------
  %a59 = tail call i32 @puts(i8* %el61)
;-------------------------------
  br label %.exit

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i.i, -40
  %24 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %24, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i.i, -68
  %25 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
  store i32 134517678, i32* %25, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i7 = add i32 %tmp0_v.i.i, -72
  %26 = inttoptr i32 %tmp2_v2.i.i.i7 to i32*
  store i32 0, i32* %26, align 8
  %tmp2_v3.i.i.i8 = add i32 %tmp0_v.i.i, -76
  %27 = inttoptr i32 %tmp2_v3.i.i.i8 to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -80
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %28, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -84
  %29 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517705, i32* %29, align 4
  %arg.i.i.i = load i32, i32* %28, align 16
  %arg2.i.i.i = load i32, i32* %27, align 4
  %arg4.i.i.i = load i32, i32* %26, align 8
  %30 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
  store i32 %30, i32* %14, align 4
  store i32 %30, i32* %28, align 16
  store i32 134517722, i32* %29, align 4
  %arg.i.i3.i = load i32, i32* %28, align 16
  %31 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %32 = load i32, i32* %8, align 4
  %tmp0_v1.i29.i = add i32 %32, 4
  %33 = inttoptr i32 %tmp0_v1.i29.i to i32*
  %34 = load i32, i32* %33, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: %sp0.1.7 = bitcast [2 x i8]* @str.7 to i16*
  %spi45 = alloca [2 x i8]
  
  %s0.45 = load [1 x i8], [1 x i8]* @str.0.45
  %sp0.45 = bitcast [2 x i8]* %spi45 to [1 x i8]*
  store [1 x i8] %s0.45, [1 x i8]* %sp0.45
  %next0.45 = getelementptr [2 x i8], [2 x i8]* %spi45, i32 0, i32 1
  
  %s1.45 = load [1 x i8], [1 x i8]* @str.1.45
  %sp1.45 = bitcast i8* %next0.45 to [1 x i8]*
  store [1 x i8] %s1.45, [1 x i8]* %sp1.45
  %sp0.1.7 = bitcast [2 x i8]* %spi45 to i16*
;-------------------------------
  %i0.7 = load i16, i16* %sp0.1.7

;-------------------------------
; Replace: %sp1.1.7 = bitcast [2 x i8]* @key.7 to i16*
  %spi46 = alloca [2 x i8]
  
  %s0.46 = load [1 x i8], [1 x i8]* @str.0.46
  %sp0.46 = bitcast [2 x i8]* %spi46 to [1 x i8]*
  store [1 x i8] %s0.46, [1 x i8]* %sp0.46
  %next0.46 = getelementptr [2 x i8], [2 x i8]* %spi46, i32 0, i32 1
  
  %s1.46 = load [1 x i8], [1 x i8]* @str.1.46
  %sp1.46 = bitcast i8* %next0.46 to [1 x i8]*
  store [1 x i8] %s1.46, [1 x i8]* %sp1.46
  %sp1.1.7 = bitcast [2 x i8]* %spi46 to i16*
;-------------------------------
  %i1.7 = load i16, i16* %sp1.1.7

  %xp7 = xor i16 %i0.7, %i1.7

  %fi.7 = alloca i16
  store i16 %xp7, i16* %fi.7

  %spi7 = ptrtoint i16* %fi.7 to i32
  store i32 %spi7, i32* %12, align 4
;-------------------------------
  store i32 %34, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i9 = load i32, i32* %13, align 16
  %arg2.i.i10 = load i32, i32* %12, align 4
  %35 = tail call i32 @strcmp(i32 %arg.i.i9, i32 %arg2.i.i10)
  %.not.i24.i = icmp eq i32 %35, 0
  br i1 %.not.i24.i, label %BB_804944C.i, label %BB_8049453.i

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i39.i.i = add i32 %tmp0_v.i.i, -40
  %36 = inttoptr i32 %tmp2_v.i39.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %36, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i44.i.i = add i32 %tmp0_v.i.i, -84
  %37 = inttoptr i32 %tmp2_v2.i44.i.i to i32*
  store i32 134517482, i32* %37, align 4
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %38 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %tmp2_v5.i.i.i13 = add i32 %tmp0_v.i.i, -92
  %40 = inttoptr i32 %tmp2_v5.i.i.i13 to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %40, align 4
;-------------------------------
; Replace: %sp0.1.8 = bitcast [3 x i8]* @str.8 to i24*
  %spi47 = alloca [3 x i8]
  
  %s0.47 = load [1 x i8], [1 x i8]* @str.0.47
  %sp0.47 = bitcast [3 x i8]* %spi47 to [1 x i8]*
  store [1 x i8] %s0.47, [1 x i8]* %sp0.47
  %next0.47 = getelementptr [3 x i8], [3 x i8]* %spi47, i32 0, i32 1
  
  %s1.47 = load [1 x i8], [1 x i8]* @str.1.47
  %sp1.47 = bitcast i8* %next0.47 to [1 x i8]*
  store [1 x i8] %s1.47, [1 x i8]* %sp1.47
  %next1.47 = getelementptr [3 x i8], [3 x i8]* %spi47, i32 0, i32 2
  
  %s2.47 = load [1 x i8], [1 x i8]* @str.2.47
  %sp2.47 = bitcast i8* %next1.47 to [1 x i8]*
  %es90 = load i32, i32* %40, align 16
;-------------------------------
;--------Added Syst Call--------
  tail call void @perror(i32 %es90)
;-------------------------------
  store [1 x i8] %s2.47, [1 x i8]* %sp2.47
  %sp0.1.8 = bitcast [3 x i8]* %spi47 to i24*
;-------------------------------
;-------------------------------
;----------Random Cond----------
  %.not26.i.i = icmp eq i32 2 , %rand_fin25 
  br i1 %.not26.i.i, label %next26, label %BB_14
next26:
;-------------------------------
  %i0.8 = load i24, i24* %sp0.1.8

;-------------------------------
; Replace: %sp1.1.8 = bitcast [3 x i8]* @key.8 to i24*
  %spi48 = alloca [3 x i8]
  
  %s0.48 = load [1 x i8], [1 x i8]* @str.0.48
  %sp0.48 = bitcast [3 x i8]* %spi48 to [1 x i8]*
  store [1 x i8] %s0.48, [1 x i8]* %sp0.48
  %next0.48 = getelementptr [3 x i8], [3 x i8]* %spi48, i32 0, i32 1
  
  %s1.48 = load [1 x i8], [1 x i8]* @str.1.48
  %sp1.48 = bitcast i8* %next0.48 to [1 x i8]*
  store [1 x i8] %s1.48, [1 x i8]* %sp1.48
  %next1.48 = getelementptr [3 x i8], [3 x i8]* %spi48, i32 0, i32 2
  
  %s2.48 = load [1 x i8], [1 x i8]* @str.2.48
  %sp2.48 = bitcast i8* %next1.48 to [1 x i8]*
  store [1 x i8] %s2.48, [1 x i8]* %sp2.48
  %sp1.1.8 = bitcast [3 x i8]* %spi48 to i24*
;-------------------------------
  %i1.8 = load i24, i24* %sp1.1.8

;-------------------------------
;----------Random Cond----------
  %.not30.i.i = icmp eq i32 0 , %rand_fin29 
  br i1 %.not30.i.i, label %next30, label %BB_14
next30:
;-------------------------------
  %xp8 = xor i24 %i0.8, %i1.8

  %fi.8 = alloca i24
  store i24 %xp8, i24* %fi.8

  %spi8 = ptrtoint i24* %fi.8 to i32
  store i32 %spi8, i32* %40, align 4
;-------------------------------
  %tmp2_v7.i.i.i14 = add i32 %tmp0_v.i.i, -96
  %41 = inttoptr i32 %tmp2_v7.i.i.i14 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %41, align 16
;-------------------------------
; Replace: %sp0.1.9 = bitcast [15 x i8]* @str.9 to i120*
  %spi49 = alloca [15 x i8]
  
  %s0.49 = load [2 x i8], [2 x i8]* @str.0.49
  %sp0.49 = bitcast [15 x i8]* %spi49 to [2 x i8]*
  store [2 x i8] %s0.49, [2 x i8]* %sp0.49
  %next0.49 = getelementptr [15 x i8], [15 x i8]* %spi49, i32 0, i32 2
  
  %s1.49 = load [3 x i8], [3 x i8]* @str.1.49
  %sp1.49 = bitcast i8* %next0.49 to [3 x i8]*
  store [3 x i8] %s1.49, [3 x i8]* %sp1.49
  %next1.49 = getelementptr [15 x i8], [15 x i8]* %spi49, i32 0, i32 5
  
  %s2.49 = load [2 x i8], [2 x i8]* @str.2.49
  %sp2.49 = bitcast i8* %next1.49 to [2 x i8]*
  store [2 x i8] %s2.49, [2 x i8]* %sp2.49
  %next2.49 = getelementptr [15 x i8], [15 x i8]* %spi49, i32 0, i32 7
  
  %s3.49 = load [3 x i8], [3 x i8]* @str.3.49
  %sp3.49 = bitcast i8* %next2.49 to [3 x i8]*
  store [3 x i8] %s3.49, [3 x i8]* %sp3.49
  %next3.49 = getelementptr [15 x i8], [15 x i8]* %spi49, i32 0, i32 10
  
  %s4.49 = load [2 x i8], [2 x i8]* @str.4.49
  %sp4.49 = bitcast i8* %next3.49 to [2 x i8]*
  store [2 x i8] %s4.49, [2 x i8]* %sp4.49
  %next4.49 = getelementptr [15 x i8], [15 x i8]* %spi49, i32 0, i32 12
  
  %s5.49 = load [3 x i8], [3 x i8]* @str.5.49
  %sp5.49 = bitcast i8* %next4.49 to [3 x i8]*
  store [3 x i8] %s5.49, [3 x i8]* %sp5.49
  %sp0.1.9 = bitcast [15 x i8]* %spi49 to i120*
;-------------------------------
  %es83 = load i32, i32* %40, align 16
;-------------------------------
;--------Added Syst Call--------
  %a82 = tail call double @atof(i32 %es83)
;-------------------------------
  %i0.9 = load i120, i120* %sp0.1.9

;-------------------------------
; Replace: %sp1.1.9 = bitcast [15 x i8]* @key.9 to i120*
  %spi50 = alloca [15 x i8]
  
  %s0.50 = load [2 x i8], [2 x i8]* @str.0.50
  %sp0.50 = bitcast [15 x i8]* %spi50 to [2 x i8]*
  store [2 x i8] %s0.50, [2 x i8]* %sp0.50
  %next0.50 = getelementptr [15 x i8], [15 x i8]* %spi50, i32 0, i32 2
  
  %s1.50 = load [3 x i8], [3 x i8]* @str.1.50
  %sp1.50 = bitcast i8* %next0.50 to [3 x i8]*
  store [3 x i8] %s1.50, [3 x i8]* %sp1.50
  %next1.50 = getelementptr [15 x i8], [15 x i8]* %spi50, i32 0, i32 5
  
  %s2.50 = load [2 x i8], [2 x i8]* @str.2.50
  %sp2.50 = bitcast i8* %next1.50 to [2 x i8]*
  store [2 x i8] %s2.50, [2 x i8]* %sp2.50
;-------------------------------
;--------Added Syst Call--------
  %a76 = tail call i32 @htonl(i32 %rand_init32)
;-------------------------------
  %next2.50 = getelementptr [15 x i8], [15 x i8]* %spi50, i32 0, i32 7
  
  %s3.50 = load [3 x i8], [3 x i8]* @str.3.50
  %sp3.50 = bitcast i8* %next2.50 to [3 x i8]*
  store [3 x i8] %s3.50, [3 x i8]* %sp3.50
  %next3.50 = getelementptr [15 x i8], [15 x i8]* %spi50, i32 0, i32 10
  
  %s4.50 = load [2 x i8], [2 x i8]* @str.4.50
  %sp4.50 = bitcast i8* %next3.50 to [2 x i8]*
  store [2 x i8] %s4.50, [2 x i8]* %sp4.50
  %next4.50 = getelementptr [15 x i8], [15 x i8]* %spi50, i32 0, i32 12
  
  %s5.50 = load [3 x i8], [3 x i8]* @str.5.50
  %sp5.50 = bitcast i8* %next4.50 to [3 x i8]*
  store [3 x i8] %s5.50, [3 x i8]* %sp5.50
  %es69 = load i32, i32* %41, align 16
;-------------------------------
;--------Added Syst Call--------
  %a68 = tail call i32 @tolower(i32 %es69)
;-------------------------------
  %sp1.1.9 = bitcast [15 x i8]* %spi50 to i120*
;-------------------------------
  %i1.9 = load i120, i120* %sp1.1.9

  %xp9 = xor i120 %i0.9, %i1.9

  %fi.9 = alloca i120
  store i120 %xp9, i120* %fi.9

  %spi9 = ptrtoint i120* %fi.9 to i32
  store i32 %spi9, i32* %41, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -100
  %42 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %42, align 4
  %arg.i.i.i15 = load i32, i32* %41, align 16
  %arg2.i.i.i16 = load i32, i32* %40, align 4
  %43 = tail call i32 @fopen(i32 %arg.i.i.i15, i32 %arg2.i.i.i16)
;-------------------------------
;--------Added Syst Call--------
  %a70 = tail call i32 @time(i32 %35)
;-------------------------------
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i.i, -76
  %44 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %43, i32* %44, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i.i, -72
  %45 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 1818304585, i32* %45, align 8
  %tmp2_v1.i16.i.i = add i32 %tmp0_v.i.i, -68
  %46 = inttoptr i32 %tmp2_v1.i16.i.i to i32*
  %es72 = load i32, i32* %12, align 16
  %es73 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a71 = tail call i32 @strpbrk( i32 %es72, i32 %es73)
;-------------------------------
  store i32 1701995892, i32* %46, align 4
  %tmp2_v2.i17.i.i = add i32 %tmp0_v.i.i, -64
  %47 = inttoptr i32 %tmp2_v2.i17.i.i to i32*
  store i32 1752440932, i32* %47, align 16
  %tmp2_v3.i.i.i17 = add i32 %tmp0_v.i.i, -60
  %48 = inttoptr i32 %tmp2_v3.i.i.i17 to i32*
  store i32 1768300645, i32* %48, align 4
  %tmp2_v4.i18.i.i = add i32 %tmp0_v.i.i, -56
  %49 = inttoptr i32 %tmp2_v4.i18.i.i to i32*
  store i32 2188652, i32* %49, align 8
  %50 = load i32, i32* %44, align 4
  store i32 %50, i32* %37, align 4
  %tmp2_v7.i23.i.i = add i32 %tmp0_v.i.i, -88
  %51 = inttoptr i32 %tmp2_v7.i23.i.i to i32*
  store i32 20, i32* %51, align 8
  store i32 1, i32* %40, align 4
  store i32 %tmp2_v.i15.i.i, i32* %41, align 16
  store i32 134517622, i32* %42, align 4
  %arg.i.i4.i = load i32, i32* %41, align 16
  %es57 = load i32, i32* %12, align 16
  %es58 = load i32, i32* %41, align 16
;-------------------------------
;--------Added Syst Call--------
  %a56 = tail call i32 @strcmp( i32 %es57, i32 %es58)
;-------------------------------
  %arg2.i.i5.i = load i32, i32* %40, align 4
  %arg4.i.i.i18 = load i32, i32* %51, align 8
  %arg6.i.i.i = load i32, i32* %37, align 4
  %52 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i18, i32 %arg6.i.i.i)
  %53 = load i32, i32* %44, align 4
  store i32 %53, i32* %41, align 16
  store i32 134517636, i32* %42, align 4
  %arg.i.i6.i = load i32, i32* %41, align 16
  %54 = tail call i32 @fclose(i32 %arg.i.i6.i)
;-------------------------------
;--------Added Syst Call--------
  %a91 = tail call i32 @alarm (i32 %53)
;-------------------------------
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i43.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i43.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
; Replace: %sp0.1.10 = bitcast [2 x i8]* @str.10 to i16*
  %spi51 = alloca [2 x i8]
  
  %s0.51 = load [1 x i8], [1 x i8]* @str.0.51
  %sp0.51 = bitcast [2 x i8]* %spi51 to [1 x i8]*
  store [1 x i8] %s0.51, [1 x i8]* %sp0.51
  %next0.51 = getelementptr [2 x i8], [2 x i8]* %spi51, i32 0, i32 1
  
  %s1.51 = load [1 x i8], [1 x i8]* @str.1.51
  %es78 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a77 = tail call i32 @fopen( i32 %es78, i32 %tmp0_v.i.i)
;-------------------------------
  %sp1.51 = bitcast i8* %next0.51 to [1 x i8]*
  store [1 x i8] %s1.51, [1 x i8]* %sp1.51
  %sp0.1.10 = bitcast [2 x i8]* %spi51 to i16*
;-------------------------------
  %i0.10 = load i16, i16* %sp0.1.10

;-------------------------------
; Replace: %sp1.1.10 = bitcast [2 x i8]* @key.10 to i16*
  %spi52 = alloca [2 x i8]
  
  %s0.52 = load [1 x i8], [1 x i8]* @str.0.52
  %sp0.52 = bitcast [2 x i8]* %spi52 to [1 x i8]*
  store [1 x i8] %s0.52, [1 x i8]* %sp0.52
  %next0.52 = getelementptr [2 x i8], [2 x i8]* %spi52, i32 0, i32 1
  
  %s1.52 = load [1 x i8], [1 x i8]* @str.1.52
  %sp1.52 = bitcast i8* %next0.52 to [1 x i8]*
  store [1 x i8] %s1.52, [1 x i8]* %sp1.52
  %sp1.1.10 = bitcast [2 x i8]* %spi52 to i16*
;-------------------------------
  %i1.10 = load i16, i16* %sp1.1.10

  %xp10 = xor i16 %i0.10, %i1.10

  %fi.10 = alloca i16
  store i16 %xp10, i16* %fi.10

  %spi10 = ptrtoint i16* %fi.10 to i32
  store i32 %spi10, i32* %12, align 4
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i19 = load i32, i32* %13, align 16
  %arg2.i.i20 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i19, i32 %arg2.i.i20)
;-------------------------------
;----------Random Cond----------
  %.not14.i.i = icmp eq i32 0 , %rand_fin13 
  br i1 %.not14.i.i, label %next14, label %BB_14
next14:
;-------------------------------
  %.not.i.i = icmp eq i32 %58, 0
  br i1 %.not.i.i, label %BB_8049472.i, label %.exit

.exit:                                            ; preds = %BB_8049453.i, %BB_804944C.i, %BB_8049472.i, %BB_8049426.i
  ret void
BB_14:
  ret void
.escape.53:
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
