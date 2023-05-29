; Mutation 309
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack1011 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.1010 = constant [3 x i8] c"\25\64\00"
@stack844 = internal global [8092 x i32] zeroinitializer, align 16
@str.bis.841 = constant [19 x i8] c"\73\69\7a\65\6f\66\28\64\61\74\61\29\3a\20\25\7a\75\0a\00"
@str.bis.842 = constant [19 x i8] c"\73\69\7a\65\6f\66\28\63\68\61\72\29\3a\20\25\7a\75\0a\00"
@str.bis.843 = constant [18 x i8] c"\73\69\7a\65\6f\66\28\69\6e\74\29\3a\20\25\7a\75\0a\00"
@stack749 = internal global [8092 x i32] zeroinitializer, align 16
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 
@stack839 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem306 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.838 = constant [9 x i8] c"\70\6f\73\3a\20\25\64\0a\00"
declare i32 @strspn(i32, i32) local_unnamed_addr  noinline 
@stack389 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem304 = internal global [1024 x i8] zeroinitializer, align 1
@str.bis.381 = constant [9 x i8] c"\72\65\74\3a\20\25\73\0a\00"
@str.bis.382 = constant [4 x i8] c"\05\18\2c\00"
@str.bis.383 = constant [10 x i8] c"\73\74\72\32\3a\20\25\73\0a\00"
@str.bis.384 = constant [4 x i8] c"\05\53\2c\00"
@str.bis.385 = constant [10 x i8] c"\73\74\72\31\3a\20\25\73\0a\00"
@str.bis.386 = constant [7 x i8] c"\73\74\72\69\6e\67\00"
@str.bis.387 = constant [7 x i8] c"\73\74\72\69\6e\67\00"
@str.bis.388 = constant [4 x i8] c"\05\6f\2c\00"
declare i32 @malloc(i32) local_unnamed_addr  noinline 
declare void @free(i32) local_unnamed_addr  noinline 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@.str301 = private unnamed_addr constant [1 x i8] c"\0a"
declare i8* @base64_decode(i8*)
;-------------------------------
; Replace: %cast2= getelementptr [9 x i8], [9 x i8]* @.str1, i64 0, i64 0
;-------------------------------
; Replace: %cast4= getelementptr [10 x i8], [10 x i8]* @.str3, i64 0, i64 0
;-------------------------------
; Replace: %cast6= getelementptr [10 x i8], [10 x i8]* @.str5, i64 0, i64 0
;-------------------------------
; Replace: %cast8= getelementptr [8 x i8], [8 x i8]* @.str7, i64 0, i64 0
;-------------------------------
; Replace: %cast10= getelementptr [11 x i8], [11 x i8]* @.str9, i64 0, i64 0
;-------------------------------
; Replace: %cast12= getelementptr [9 x i8], [9 x i8]* @.str11, i64 0, i64 0
;-------------------------------
; Replace: %cast14= getelementptr [8 x i8], [8 x i8]* @.str13, i64 0, i64 0
;-------------------------------
; Replace: %cast16= getelementptr [11 x i8], [11 x i8]* @.str15, i64 0, i64 0
;-------------------------------
; Replace: %cast18= getelementptr [11 x i8], [11 x i8]* @.str17, i64 0, i64 0
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
; Replace: store i32 134520866, i32* %36, align 4
;-------------------------------
; Replace: store i32 134520869, i32* %37, align 16
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4

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
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: norecurse
declare i32 @atol(i32) local_unnamed_addr  noinline 
declare i32 @time(i32) local_unnamed_addr  noinline 
declare double @atof(i32) local_unnamed_addr  noinline 
declare i32 @atoi(i32) local_unnamed_addr  noinline 
declare i32 @usleep(i32) local_unnamed_addr  noinline 
declare i32 @htonl(i32) local_unnamed_addr nofree noinline nosync nounwind readnone
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #3
declare i32 @toupper(i32) local_unnamed_addr  noinline 
declare i32 @access(i32, i32) local_unnamed_addr noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @alarm(i32) local_unnamed_addr noinline
declare i32 @tolower(i32) local_unnamed_addr  noinline 
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 
declare i32 @ptrace( i32, i32, i32, i32) naked noinline
declare void @perror(i32) local_unnamed_addr noinline
;-------------------------------
;--------Extra functions--------
declare i32 @rand() local_unnamed_addr  noinline

declare void @srand(i32) local_unnamed_addr  noinline 

;-------------------------------
declare i32 @getenv(i32) local_unnamed_addr  noinline 
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
;----------------------------
  ; Detect debug environment
  %debug.str.2.302 = alloca [11 x i8]
  store [11 x i8] c"VM_ENABLED\00", [11 x i8]* %debug.str.2.302
  %debug.ptr.2.302 = ptrtoint [11 x i8]* %debug.str.2.302 to i32
  %result.2.302 = tail call i32 @getenv(i32 %debug.ptr.2.302)
  %must.escape.2.302 = icmp ne i32 %result.2.302, 0
  br i1 %must.escape.2.302, label %.escape.302, label %.proceed.2.302
.proceed.2.302:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.1.302 = alloca [4 x i8]
  store [4 x i8] c"GDB\00", [4 x i8]* %debug.str.1.302
  %debug.ptr.1.302 = ptrtoint [4 x i8]* %debug.str.1.302 to i32
  %result.1.302 = tail call i32 @getenv(i32 %debug.ptr.1.302)
  %must.escape.1.302 = icmp ne i32 %result.1.302, 0
  br i1 %must.escape.1.302, label %.escape.302, label %.proceed.1.302
.proceed.1.302:
;----------------------------
;----------------------------
  ; Detect debug environment
  %debug.str.0.302 = alloca [6 x i8]
  store [6 x i8] c"DEBUG\00", [6 x i8]* %debug.str.0.302
  %debug.ptr.0.302 = ptrtoint [6 x i8]* %debug.str.0.302 to i32
  %result.0.302 = tail call i32 @getenv(i32 %debug.ptr.0.302)
  %must.escape.0.302 = icmp ne i32 %result.0.302, 0
  br i1 %must.escape.0.302, label %.escape.302, label %.proceed.0.302
.proceed.0.302:
;----------------------------
  %time119 = tail call i32 @time(i32 ptrtoint (i8* null to i32))
  tail call void @srand(i32 %time119)
  %rand_init144 = tail call i32 @rand()
  %rand_fin145 = srem i32 %rand_init144, 7
  %rand_init140 = tail call i32 @rand()
  %rand_fin141 = srem i32 %rand_init140, 7
  %rand_init136 = tail call i32 @rand()
  %rand_fin137 = srem i32 %rand_init136, 7
  %rand_init132 = tail call i32 @rand()
  %rand_fin133 = srem i32 %rand_init132, 7
  %rand_init128 = tail call i32 @rand()
  %rand_fin129 = srem i32 %rand_init128, 7
  %rand_init124 = tail call i32 @rand()
  %rand_fin125 = srem i32 %rand_init124, 7
  %rand_init120 = tail call i32 @rand()
  %rand_fin121 = srem i32 %rand_init120, 7
;----------------------------
  ; Detect tracing running
  %result.100 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.100 = icmp eq i32 %result.100, -1
  br i1 %must.escape.100, label %.escape.100, label %.proceed.100
.proceed.100:
;----------------------------
  %tmp2_v.i4.i = add i32 %arg_esp, 4
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
  store i32 %tmp2_v.i4.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i32.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i32.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i34.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i34.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i38.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v6.i38.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
;-------------------------------
; Replace: %cipher.ptr.110 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.110, i32 0, i32 0
  %spi156 = alloca [5 x i8]

  
  %sp0.156 = bitcast [5 x i8]* %spi156 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp0.156
  %sp0.165 = alloca [1 x i8]
  store [1 x i8] c"\3C", [1 x i8]* %sp0.165
  %sp0.1.165 = bitcast [1 x i8]* %sp0.165 to i8*
  %i0.165 = load i8, i8* %sp0.1.165

  %sp1.165 = alloca [1 x i8]
  store [1 x i8] c"\71", [1 x i8]* %sp1.165
  %sp1.1.165 = bitcast [1 x i8]* %sp1.165 to i8*
  %i1.165 = load i8, i8* %sp1.1.165

  %xp165 = xor i8 %i0.165, %i1.165

  %fi.165 = alloca i8
  store i8 %xp165, i8* %fi.165

  %final.ptr.165 = bitcast i8* %fi.165 to [1 x i8]*
  %spi165 = load [1 x i8], [1 x i8]* %final.ptr.165
  store [1 x i8] %spi165, [1 x i8]* %sp0.156
;-------------------------------
  %next0.156 = getelementptr [5 x i8], [5 x i8]* %spi156, i32 0, i32 1
  
  %sp1.156 = bitcast i8* %next0.156 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp1.156
  %sp0.166 = alloca [1 x i8]
  store [1 x i8] c"\24", [1 x i8]* %sp0.166
  %sp0.1.166 = bitcast [1 x i8]* %sp0.166 to i8*
  %i0.166 = load i8, i8* %sp0.1.166

  %sp1.166 = alloca [1 x i8]
  store [1 x i8] c"\75", [1 x i8]* %sp1.166
  %sp1.1.166 = bitcast [1 x i8]* %sp1.166 to i8*
  %i1.166 = load i8, i8* %sp1.1.166

  %xp166 = xor i8 %i0.166, %i1.166

  %fi.166 = alloca i8
  store i8 %xp166, i8* %fi.166

  %final.ptr.166 = bitcast i8* %fi.166 to [1 x i8]*
  %spi166 = load [1 x i8], [1 x i8]* %final.ptr.166
  store [1 x i8] %spi166, [1 x i8]* %sp1.156
;-------------------------------
  %next1.156 = getelementptr [5 x i8], [5 x i8]* %spi156, i32 0, i32 2
  
  %sp2.156 = bitcast i8* %next1.156 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp2.156
  %sp0.167 = alloca [1 x i8]
  store [1 x i8] c"\26", [1 x i8]* %sp0.167
  %sp0.1.167 = bitcast [1 x i8]* %sp0.167 to i8*
  %i0.167 = load i8, i8* %sp0.1.167

  %sp1.167 = alloca [1 x i8]
  store [1 x i8] c"\67", [1 x i8]* %sp1.167
  %sp1.1.167 = bitcast [1 x i8]* %sp1.167 to i8*
  %i1.167 = load i8, i8* %sp1.1.167

  %xp167 = xor i8 %i0.167, %i1.167

  %fi.167 = alloca i8
  store i8 %xp167, i8* %fi.167

  %final.ptr.167 = bitcast i8* %fi.167 to [1 x i8]*
  %spi167 = load [1 x i8], [1 x i8]* %final.ptr.167
  store [1 x i8] %spi167, [1 x i8]* %sp2.156
;-------------------------------
  %next2.156 = getelementptr [5 x i8], [5 x i8]* %spi156, i32 0, i32 3
  
  %sp3.156 = bitcast i8* %next2.156 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp3.156
  %sp0.168 = alloca [1 x i8]
  store [1 x i8] c"\5B", [1 x i8]* %sp0.168
  %sp0.1.168 = bitcast [1 x i8]* %sp0.168 to i8*
  %i0.168 = load i8, i8* %sp0.1.168

  %sp1.168 = alloca [1 x i8]
  store [1 x i8] c"\66", [1 x i8]* %sp1.168
  %sp1.1.168 = bitcast [1 x i8]* %sp1.168 to i8*
  %i1.168 = load i8, i8* %sp1.1.168

  %xp168 = xor i8 %i0.168, %i1.168

  %fi.168 = alloca i8
  store i8 %xp168, i8* %fi.168

  %final.ptr.168 = bitcast i8* %fi.168 to [1 x i8]*
  %spi168 = load [1 x i8], [1 x i8]* %final.ptr.168
  store [1 x i8] %spi168, [1 x i8]* %sp3.156
;-------------------------------
  %next3.156 = getelementptr [5 x i8], [5 x i8]* %spi156, i32 0, i32 4
  
  %sp4.156 = bitcast i8* %next3.156 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.156
  %cipher.ptr.110 = getelementptr inbounds [5 x i8], [5 x i8]* %spi156, i32 0, i32 0
;-------------------------------
  %plain.ptr.110 = tail call i8* @base64_decode(i8* %cipher.ptr.110)
  %spi110 = ptrtoint i8* %plain.ptr.110 to i32
  store i32 %spi110, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i39.i = add i32 %tmp0_v.i.i, -48
  %13 = inttoptr i32 %tmp2_v7.i39.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
;-------------------------------
;--------Basic Condition--------
  %.not2.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not2.i.i, label %BB_2, label %next2
next2:
;-------------------------------
  %arg2.i.i = load i32, i32* %12, align 4
;-------------------------------
;----------Random Cond----------
  %.not142.i.i = icmp eq i32 1 , %rand_fin141 
  br i1 %.not142.i.i, label %next142, label %BB_122
next142:
;-------------------------------
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i55.i = icmp eq i32 %15, 0
  br i1 %.not.i55.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i.i, -40
  %16 = inttoptr i32 %tmp2_v.i6.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not4.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not4.i.i, label %BB_4, label %next4
next4:
;-------------------------------
  store i32 %tmp2_v4.i.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i.i, -68
  %17 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
;-------------------------------
; Replace: %cipher.ptr.111 = getelementptr inbounds [9 x i8], [9 x i8]* @cipher.111, i32 0, i32 0
  %spi157 = alloca [9 x i8]

  
  %sp0.157 = bitcast [9 x i8]* %spi157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\42", [1 x i8]* %sp0.157
  %sp0.169 = alloca [1 x i8]
  store [1 x i8] c"\37", [1 x i8]* %sp0.169
  %sp0.1.169 = bitcast [1 x i8]* %sp0.169 to i8*
  %i0.169 = load i8, i8* %sp0.1.169

  %sp1.169 = alloca [1 x i8]
  store [1 x i8] c"\75", [1 x i8]* %sp1.169
  %sp1.1.169 = bitcast [1 x i8]* %sp1.169 to i8*
  %i1.169 = load i8, i8* %sp1.1.169

  %xp169 = xor i8 %i0.169, %i1.169

  %fi.169 = alloca i8
  store i8 %xp169, i8* %fi.169

  %final.ptr.169 = bitcast i8* %fi.169 to [1 x i8]*
  %spi169 = load [1 x i8], [1 x i8]* %final.ptr.169
  store [1 x i8] %spi169, [1 x i8]* %sp0.157
;-------------------------------
  %next0.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 1
  
  %sp1.157 = bitcast i8* %next0.157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\56", [1 x i8]* %sp1.157
  %sp0.170 = alloca [1 x i8]
  store [1 x i8] c"\67", [1 x i8]* %sp0.170
  %sp0.1.170 = bitcast [1 x i8]* %sp0.170 to i8*
  %i0.170 = load i8, i8* %sp0.1.170

  %sp1.170 = alloca [1 x i8]
  store [1 x i8] c"\31", [1 x i8]* %sp1.170
  %sp1.1.170 = bitcast [1 x i8]* %sp1.170 to i8*
  %i1.170 = load i8, i8* %sp1.1.170

  %xp170 = xor i8 %i0.170, %i1.170

  %fi.170 = alloca i8
  store i8 %xp170, i8* %fi.170

  %final.ptr.170 = bitcast i8* %fi.170 to [1 x i8]*
  %spi170 = load [1 x i8], [1 x i8]* %final.ptr.170
  store [1 x i8] %spi170, [1 x i8]* %sp1.157
;-------------------------------
  %next1.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 2
  
  %sp2.157 = bitcast i8* %next1.157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6f", [1 x i8]* %sp2.157
  %sp0.171 = alloca [1 x i8]
  store [1 x i8] c"\24", [1 x i8]* %sp0.171
  %sp0.1.171 = bitcast [1 x i8]* %sp0.171 to i8*
  %i0.171 = load i8, i8* %sp0.1.171

  %sp1.171 = alloca [1 x i8]
  store [1 x i8] c"\4b", [1 x i8]* %sp1.171
  %sp1.1.171 = bitcast [1 x i8]* %sp1.171 to i8*
  %i1.171 = load i8, i8* %sp1.1.171

  %xp171 = xor i8 %i0.171, %i1.171

  %fi.171 = alloca i8
  store i8 %xp171, i8* %fi.171

  %final.ptr.171 = bitcast i8* %fi.171 to [1 x i8]*
  %spi171 = load [1 x i8], [1 x i8]* %final.ptr.171
  store [1 x i8] %spi171, [1 x i8]* %sp2.157
;-------------------------------
  %next2.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 3
  
  %sp3.157 = bitcast i8* %next2.157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\74", [1 x i8]* %sp3.157
  %sp0.172 = alloca [1 x i8]
  store [1 x i8] c"\3C", [1 x i8]* %sp0.172
  %sp0.1.172 = bitcast [1 x i8]* %sp0.172 to i8*
  %i0.172 = load i8, i8* %sp0.1.172

  %sp1.172 = alloca [1 x i8]
  store [1 x i8] c"\48", [1 x i8]* %sp1.172
  %sp1.1.172 = bitcast [1 x i8]* %sp1.172 to i8*
  %i1.172 = load i8, i8* %sp1.1.172

  %xp172 = xor i8 %i0.172, %i1.172

  %fi.172 = alloca i8
  store i8 %xp172, i8* %fi.172

  %final.ptr.172 = bitcast i8* %fi.172 to [1 x i8]*
  %spi172 = load [1 x i8], [1 x i8]* %final.ptr.172
  store [1 x i8] %spi172, [1 x i8]* %sp3.157
;-------------------------------
  %next3.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 4
  
  %sp4.157 = bitcast i8* %next3.157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp4.157
  %sp0.173 = alloca [1 x i8]
  store [1 x i8] c"\0A", [1 x i8]* %sp0.173
  %sp0.1.173 = bitcast [1 x i8]* %sp0.173 to i8*
  %i0.173 = load i8, i8* %sp0.1.173

  %sp1.173 = alloca [1 x i8]
  store [1 x i8] c"\4b", [1 x i8]* %sp1.173
  %sp1.1.173 = bitcast [1 x i8]* %sp1.173 to i8*
  %i1.173 = load i8, i8* %sp1.1.173

  %xp173 = xor i8 %i0.173, %i1.173

  %fi.173 = alloca i8
  store i8 %xp173, i8* %fi.173

  %final.ptr.173 = bitcast i8* %fi.173 to [1 x i8]*
  %spi173 = load [1 x i8], [1 x i8]* %final.ptr.173
  store [1 x i8] %spi173, [1 x i8]* %sp4.157
;-------------------------------
  %next4.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 5
  
  %sp5.157 = bitcast i8* %next4.157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp5.157
  %sp0.174 = alloca [1 x i8]
  store [1 x i8] c"\20", [1 x i8]* %sp0.174
  %sp0.1.174 = bitcast [1 x i8]* %sp0.174 to i8*
  %i0.174 = load i8, i8* %sp0.1.174

  %sp1.174 = alloca [1 x i8]
  store [1 x i8] c"\61", [1 x i8]* %sp1.174
  %sp1.1.174 = bitcast [1 x i8]* %sp1.174 to i8*
  %i1.174 = load i8, i8* %sp1.1.174

  %xp174 = xor i8 %i0.174, %i1.174

  %fi.174 = alloca i8
  store i8 %xp174, i8* %fi.174

  %final.ptr.174 = bitcast i8* %fi.174 to [1 x i8]*
  %spi174 = load [1 x i8], [1 x i8]* %final.ptr.174
  store [1 x i8] %spi174, [1 x i8]* %sp5.157
;-------------------------------
  %next5.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 6
  
  %sp6.157 = bitcast i8* %next5.157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp6.157
  %sp0.175 = alloca [1 x i8]
  store [1 x i8] c"\56", [1 x i8]* %sp0.175
  %sp0.1.175 = bitcast [1 x i8]* %sp0.175 to i8*
  %i0.175 = load i8, i8* %sp0.1.175

  %sp1.175 = alloca [1 x i8]
  store [1 x i8] c"\6b", [1 x i8]* %sp1.175
  %sp1.1.175 = bitcast [1 x i8]* %sp1.175 to i8*
  %i1.175 = load i8, i8* %sp1.1.175

  %xp175 = xor i8 %i0.175, %i1.175

  %fi.175 = alloca i8
  store i8 %xp175, i8* %fi.175

  %final.ptr.175 = bitcast i8* %fi.175 to [1 x i8]*
  %spi175 = load [1 x i8], [1 x i8]* %final.ptr.175
  store [1 x i8] %spi175, [1 x i8]* %sp6.157
;-------------------------------
  %next6.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 7
  
  %sp7.157 = bitcast i8* %next6.157 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp7.157
  %sp0.176 = alloca [1 x i8]
  store [1 x i8] c"\70", [1 x i8]* %sp0.176
  %sp0.1.176 = bitcast [1 x i8]* %sp0.176 to i8*
  %i0.176 = load i8, i8* %sp0.1.176

  %sp1.176 = alloca [1 x i8]
  store [1 x i8] c"\4d", [1 x i8]* %sp1.176
  %sp1.1.176 = bitcast [1 x i8]* %sp1.176 to i8*
  %i1.176 = load i8, i8* %sp1.1.176

  %xp176 = xor i8 %i0.176, %i1.176

  %fi.176 = alloca i8
  store i8 %xp176, i8* %fi.176

  %final.ptr.176 = bitcast i8* %fi.176 to [1 x i8]*
  %spi176 = load [1 x i8], [1 x i8]* %final.ptr.176
  store [1 x i8] %spi176, [1 x i8]* %sp7.157
;-------------------------------
  %next7.157 = getelementptr [9 x i8], [9 x i8]* %spi157, i32 0, i32 8
  
  %sp8.157 = bitcast i8* %next7.157 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp8.157
  %cipher.ptr.111 = getelementptr inbounds [9 x i8], [9 x i8]* %spi157, i32 0, i32 0
;-------------------------------
  %plain.ptr.111 = tail call i8* @base64_decode(i8* %cipher.ptr.111)
  %spi111 = ptrtoint i8* %plain.ptr.111 to i32
  store i32 %spi111, i32* %17, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -56
;-------------------------------
;--------Basic Condition--------
  %.not8.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not8.i.i, label %BB_8, label %next8
next8:
;-------------------------------
  %18 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
;-------------------------------
; Replace: %cipher.ptr.112 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.112, i32 0, i32 0
  %spi158 = alloca [21 x i8]

  
  %sp0.158 = bitcast [21 x i8]* %spi158 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\53\53", [2 x i8]* %sp0.158
  %sp0.177 = alloca [2 x i8]
  store [2 x i8] c"\15\1A", [2 x i8]* %sp0.177
  %sp0.1.177 = bitcast [2 x i8]* %sp0.177 to i16*
  %i0.177 = load i16, i16* %sp0.1.177

  %sp1.177 = alloca [2 x i8]
  store [2 x i8] c"\46\49", [2 x i8]* %sp1.177
  %sp1.1.177 = bitcast [2 x i8]* %sp1.177 to i16*
  %i1.177 = load i16, i16* %sp1.1.177

  %xp177 = xor i16 %i0.177, %i1.177

  %fi.177 = alloca i16
  store i16 %xp177, i16* %fi.177

  %final.ptr.177 = bitcast i16* %fi.177 to [2 x i8]*
  %spi177 = load [2 x i8], [2 x i8]* %final.ptr.177
  store [2 x i8] %spi177, [2 x i8]* %sp0.158
;-------------------------------
  %next0.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 2
  
  %sp1.158 = bitcast i8* %next0.158 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\42\68", [2 x i8]* %sp1.158
  %sp0.178 = alloca [2 x i8]
  store [2 x i8] c"\11\02", [2 x i8]* %sp0.178
  %sp0.1.178 = bitcast [2 x i8]* %sp0.178 to i16*
  %i0.178 = load i16, i16* %sp0.1.178

  %sp1.178 = alloca [2 x i8]
  store [2 x i8] c"\53\6a", [2 x i8]* %sp1.178
  %sp1.1.178 = bitcast [2 x i8]* %sp1.178 to i16*
  %i1.178 = load i16, i16* %sp1.1.178

  %xp178 = xor i16 %i0.178, %i1.178

  %fi.178 = alloca i16
  store i16 %xp178, i16* %fi.178

  %final.ptr.178 = bitcast i16* %fi.178 to [2 x i8]*
  %spi178 = load [2 x i8], [2 x i8]* %final.ptr.178
  store [2 x i8] %spi178, [2 x i8]* %sp1.158
;-------------------------------
  %next1.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 4
  
  %sp2.158 = bitcast i8* %next1.158 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\62\53\42", [3 x i8]* %sp2.158
  %sp0.179 = alloca [3 x i8]
  store [3 x i8] c"\1B\3D\06", [3 x i8]* %sp0.179
  %sp0.1.179 = bitcast [3 x i8]* %sp0.179 to i24*
  %i0.179 = load i24, i24* %sp0.1.179

  %sp1.179 = alloca [3 x i8]
  store [3 x i8] c"\79\6e\44", [3 x i8]* %sp1.179
  %sp1.1.179 = bitcast [3 x i8]* %sp1.179 to i24*
  %i1.179 = load i24, i24* %sp1.1.179

  %xp179 = xor i24 %i0.179, %i1.179

  %fi.179 = alloca i24
  store i24 %xp179, i24* %fi.179

  %final.ptr.179 = bitcast i24* %fi.179 to [3 x i8]*
  %spi179 = load [3 x i8], [3 x i8]* %final.ptr.179
  store [3 x i8] %spi179, [3 x i8]* %sp2.158
;-------------------------------
  %next2.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 7
  
  %sp3.158 = bitcast i8* %next2.158 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\64", [2 x i8]* %sp3.158
  %sp0.180 = alloca [2 x i8]
  store [2 x i8] c"\1E\06", [2 x i8]* %sp0.180
  %sp0.1.180 = bitcast [2 x i8]* %sp0.180 to i16*
  %i0.180 = load i16, i16* %sp0.1.180

  %sp1.180 = alloca [2 x i8]
  store [2 x i8] c"\72\62", [2 x i8]* %sp1.180
  %sp1.1.180 = bitcast [2 x i8]* %sp1.180 to i16*
  %i1.180 = load i16, i16* %sp1.1.180

  %xp180 = xor i16 %i0.180, %i1.180

  %fi.180 = alloca i16
  store i16 %xp180, i16* %fi.180

  %final.ptr.180 = bitcast i16* %fi.180 to [2 x i8]*
  %spi180 = load [2 x i8], [2 x i8]* %final.ptr.180
  store [2 x i8] %spi180, [2 x i8]* %sp3.158
;-------------------------------
  %next3.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 9
  
  %sp4.158 = bitcast i8* %next3.158 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\6c", [2 x i8]* %sp4.158
  %sp0.181 = alloca [2 x i8]
  store [2 x i8] c"\3E\1A", [2 x i8]* %sp0.181
  %sp0.1.181 = bitcast [2 x i8]* %sp0.181 to i16*
  %i0.181 = load i16, i16* %sp0.1.181

  %sp1.181 = alloca [2 x i8]
  store [2 x i8] c"\53\76", [2 x i8]* %sp1.181
  %sp1.1.181 = bitcast [2 x i8]* %sp1.181 to i16*
  %i1.181 = load i16, i16* %sp1.1.181

  %xp181 = xor i16 %i0.181, %i1.181

  %fi.181 = alloca i16
  store i16 %xp181, i16* %fi.181

  %final.ptr.181 = bitcast i16* %fi.181 to [2 x i8]*
  %spi181 = load [2 x i8], [2 x i8]* %final.ptr.181
  store [2 x i8] %spi181, [2 x i8]* %sp4.158
;-------------------------------
  %next4.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 11
  
  %sp5.158 = bitcast i8* %next4.158 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\73\49\53", [3 x i8]* %sp5.158
  %sp0.182 = alloca [3 x i8]
  store [3 x i8] c"\29\06\14", [3 x i8]* %sp0.182
  %sp0.1.182 = bitcast [3 x i8]* %sp0.182 to i24*
  %i0.182 = load i24, i24* %sp0.1.182

  %sp1.182 = alloca [3 x i8]
  store [3 x i8] c"\5a\4f\47", [3 x i8]* %sp1.182
  %sp1.1.182 = bitcast [3 x i8]* %sp1.182 to i24*
  %i1.182 = load i24, i24* %sp1.1.182

  %xp182 = xor i24 %i0.182, %i1.182

  %fi.182 = alloca i24
  store i24 %xp182, i24* %fi.182

  %final.ptr.182 = bitcast i24* %fi.182 to [3 x i8]*
  %spi182 = load [3 x i8], [3 x i8]* %final.ptr.182
  store [3 x i8] %spi182, [3 x i8]* %sp5.158
;-------------------------------
  %next5.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 14
  
  %sp6.158 = bitcast i8* %next5.158 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\45\68", [2 x i8]* %sp6.158
  %sp0.183 = alloca [2 x i8]
  store [2 x i8] c"\10\0C", [2 x i8]* %sp0.183
  %sp0.1.183 = bitcast [2 x i8]* %sp0.183 to i16*
  %i0.183 = load i16, i16* %sp0.1.183

  %sp1.183 = alloca [2 x i8]
  store [2 x i8] c"\55\64", [2 x i8]* %sp1.183
  %sp1.1.183 = bitcast [2 x i8]* %sp1.183 to i16*
  %i1.183 = load i16, i16* %sp1.1.183

  %xp183 = xor i16 %i0.183, %i1.183

  %fi.183 = alloca i16
  store i16 %xp183, i16* %fi.183

  %final.ptr.183 = bitcast i16* %fi.183 to [2 x i8]*
  %spi183 = load [2 x i8], [2 x i8]* %final.ptr.183
  store [2 x i8] %spi183, [2 x i8]* %sp6.158
;-------------------------------
  %next6.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 16
  
  %sp7.158 = bitcast i8* %next6.158 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\43\67", [2 x i8]* %sp7.158
  %sp0.184 = alloca [2 x i8]
  store [2 x i8] c"\11\21", [2 x i8]* %sp0.184
  %sp0.1.184 = bitcast [2 x i8]* %sp0.184 to i16*
  %i0.184 = load i16, i16* %sp0.1.184

  %sp1.184 = alloca [2 x i8]
  store [2 x i8] c"\52\46", [2 x i8]* %sp1.184
  %sp1.1.184 = bitcast [2 x i8]* %sp1.184 to i16*
  %i1.184 = load i16, i16* %sp1.1.184

  %xp184 = xor i16 %i0.184, %i1.184

  %fi.184 = alloca i16
  store i16 %xp184, i16* %fi.184

  %final.ptr.184 = bitcast i16* %fi.184 to [2 x i8]*
  %spi184 = load [2 x i8], [2 x i8]* %final.ptr.184
  store [2 x i8] %spi184, [2 x i8]* %sp7.158
;-------------------------------
  %next7.158 = getelementptr [21 x i8], [21 x i8]* %spi158, i32 0, i32 18
  
  %sp8.158 = bitcast i8* %next7.158 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\41\3d\00", [3 x i8]* %sp8.158
  %sp0.185 = alloca [3 x i8]
  store [3 x i8] c"\08\7C\30", [3 x i8]* %sp0.185
  %sp0.1.185 = bitcast [3 x i8]* %sp0.185 to i24*
  %i0.185 = load i24, i24* %sp0.1.185

  %sp1.185 = alloca [3 x i8]
  store [3 x i8] c"\49\41\30", [3 x i8]* %sp1.185
  %sp1.1.185 = bitcast [3 x i8]* %sp1.185 to i24*
  %i1.185 = load i24, i24* %sp1.1.185

  %xp185 = xor i24 %i0.185, %i1.185

  %fi.185 = alloca i24
  store i24 %xp185, i24* %fi.185

  %final.ptr.185 = bitcast i24* %fi.185 to [3 x i8]*
  %spi185 = load [3 x i8], [3 x i8]* %final.ptr.185
  store [3 x i8] %spi185, [3 x i8]* %sp8.158
;-------------------------------
  %cipher.ptr.112 = getelementptr inbounds [21 x i8], [21 x i8]* %spi158, i32 0, i32 0
;-------------------------------
  %plain.ptr.112 = tail call i8* @base64_decode(i8* %cipher.ptr.112)
  %spi112 = ptrtoint i8* %plain.ptr.112 to i32
  store i32 %spi112, i32* %18, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
;-------------------------------
; Replace: %cipher.ptr.113 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.113, i32 0, i32 0
  %spi159 = alloca [13 x i8]

  
  %sp0.159 = bitcast [13 x i8]* %spi159 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp0.159
  %sp0.186 = alloca [1 x i8]
  store [1 x i8] c"\60", [1 x i8]* %sp0.186
  %sp0.1.186 = bitcast [1 x i8]* %sp0.186 to i8*
  %i0.186 = load i8, i8* %sp0.1.186

  %sp1.186 = alloca [1 x i8]
  store [1 x i8] c"\31", [1 x i8]* %sp1.186
  %sp1.1.186 = bitcast [1 x i8]* %sp1.186 to i8*
  %i1.186 = load i8, i8* %sp1.1.186

  %xp186 = xor i8 %i0.186, %i1.186

  %fi.186 = alloca i8
  store i8 %xp186, i8* %fi.186

  %final.ptr.186 = bitcast i8* %fi.186 to [1 x i8]*
  %spi186 = load [1 x i8], [1 x i8]* %final.ptr.186
  store [1 x i8] %spi186, [1 x i8]* %sp0.159
;-------------------------------
  %next0.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 1
  
  %sp1.159 = bitcast i8* %next0.159 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6e", [1 x i8]* %sp1.159
  %sp0.187 = alloca [1 x i8]
  store [1 x i8] c"\08", [1 x i8]* %sp0.187
  %sp0.1.187 = bitcast [1 x i8]* %sp0.187 to i8*
  %i0.187 = load i8, i8* %sp0.1.187

  %sp1.187 = alloca [1 x i8]
  store [1 x i8] c"\66", [1 x i8]* %sp1.187
  %sp1.1.187 = bitcast [1 x i8]* %sp1.187 to i8*
  %i1.187 = load i8, i8* %sp1.1.187

  %xp187 = xor i8 %i0.187, %i1.187

  %fi.187 = alloca i8
  store i8 %xp187, i8* %fi.187

  %final.ptr.187 = bitcast i8* %fi.187 to [1 x i8]*
  %spi187 = load [1 x i8], [1 x i8]* %final.ptr.187
  store [1 x i8] %spi187, [1 x i8]* %sp1.159
;-------------------------------
  %next1.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 2
  
  %sp2.159 = bitcast i8* %next1.159 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\6c", [2 x i8]* %sp2.159
  %sp0.188 = alloca [2 x i8]
  store [2 x i8] c"\25\5E", [2 x i8]* %sp0.188
  %sp0.1.188 = bitcast [2 x i8]* %sp0.188 to i16*
  %i0.188 = load i16, i16* %sp0.1.188

  %sp1.188 = alloca [2 x i8]
  store [2 x i8] c"\49\32", [2 x i8]* %sp1.188
  %sp1.1.188 = bitcast [2 x i8]* %sp1.188 to i16*
  %i1.188 = load i16, i16* %sp1.1.188

  %xp188 = xor i16 %i0.188, %i1.188

  %fi.188 = alloca i16
  store i16 %xp188, i16* %fi.188

  %final.ptr.188 = bitcast i16* %fi.188 to [2 x i8]*
  %spi188 = load [2 x i8], [2 x i8]* %final.ptr.188
  store [2 x i8] %spi188, [2 x i8]* %sp2.159
;-------------------------------
  %next2.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 4
  
  %sp3.159 = bitcast i8* %next2.159 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\49", [1 x i8]* %sp3.159
  %sp0.189 = alloca [1 x i8]
  store [1 x i8] c"\3C", [1 x i8]* %sp0.189
  %sp0.1.189 = bitcast [1 x i8]* %sp0.189 to i8*
  %i0.189 = load i8, i8* %sp0.1.189

  %sp1.189 = alloca [1 x i8]
  store [1 x i8] c"\75", [1 x i8]* %sp1.189
  %sp1.1.189 = bitcast [1 x i8]* %sp1.189 to i8*
  %i1.189 = load i8, i8* %sp1.1.189

  %xp189 = xor i8 %i0.189, %i1.189

  %fi.189 = alloca i8
  store i8 %xp189, i8* %fi.189

  %final.ptr.189 = bitcast i8* %fi.189 to [1 x i8]*
  %spi189 = load [1 x i8], [1 x i8]* %final.ptr.189
  store [1 x i8] %spi189, [1 x i8]* %sp3.159
;-------------------------------
  %next3.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 5
  
  %sp4.159 = bitcast i8* %next3.159 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\45\4a", [2 x i8]* %sp4.159
  %sp0.190 = alloca [2 x i8]
  store [2 x i8] c"\2E\27", [2 x i8]* %sp0.190
  %sp0.1.190 = bitcast [2 x i8]* %sp0.190 to i16*
  %i0.190 = load i16, i16* %sp0.1.190

  %sp1.190 = alloca [2 x i8]
  store [2 x i8] c"\6b\6d", [2 x i8]* %sp1.190
  %sp1.1.190 = bitcast [2 x i8]* %sp1.190 to i16*
  %i1.190 = load i16, i16* %sp1.1.190

  %xp190 = xor i16 %i0.190, %i1.190

  %fi.190 = alloca i16
  store i16 %xp190, i16* %fi.190

  %final.ptr.190 = bitcast i16* %fi.190 to [2 x i8]*
  %spi190 = load [2 x i8], [2 x i8]* %final.ptr.190
  store [2 x i8] %spi190, [2 x i8]* %sp4.159
;-------------------------------
  %next4.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 7
  
  %sp5.159 = bitcast i8* %next4.159 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\35", [1 x i8]* %sp5.159
  %sp0.191 = alloca [1 x i8]
  store [1 x i8] c"\70", [1 x i8]* %sp0.191
  %sp0.1.191 = bitcast [1 x i8]* %sp0.191 to i8*
  %i0.191 = load i8, i8* %sp0.1.191

  %sp1.191 = alloca [1 x i8]
  store [1 x i8] c"\45", [1 x i8]* %sp1.191
  %sp1.1.191 = bitcast [1 x i8]* %sp1.191 to i8*
  %i1.191 = load i8, i8* %sp1.1.191

  %xp191 = xor i8 %i0.191, %i1.191

  %fi.191 = alloca i8
  store i8 %xp191, i8* %fi.191

  %final.ptr.191 = bitcast i8* %fi.191 to [1 x i8]*
  %spi191 = load [1 x i8], [1 x i8]* %final.ptr.191
  store [1 x i8] %spi191, [1 x i8]* %sp5.159
;-------------------------------
  %next5.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 8
  
  %sp6.159 = bitcast i8* %next5.159 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\5a\51", [2 x i8]* %sp6.159
  %sp0.192 = alloca [2 x i8]
  store [2 x i8] c"\2B\29", [2 x i8]* %sp0.192
  %sp0.1.192 = bitcast [2 x i8]* %sp0.192 to i16*
  %i0.192 = load i16, i16* %sp0.1.192

  %sp1.192 = alloca [2 x i8]
  store [2 x i8] c"\71\78", [2 x i8]* %sp1.192
  %sp1.1.192 = bitcast [2 x i8]* %sp1.192 to i16*
  %i1.192 = load i16, i16* %sp1.1.192

  %xp192 = xor i16 %i0.192, %i1.192

  %fi.192 = alloca i16
  store i16 %xp192, i16* %fi.192

  %final.ptr.192 = bitcast i16* %fi.192 to [2 x i8]*
  %spi192 = load [2 x i8], [2 x i8]* %final.ptr.192
  store [2 x i8] %spi192, [2 x i8]* %sp6.159
;-------------------------------
  %next6.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 10
  
  %sp7.159 = bitcast i8* %next6.159 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6f", [1 x i8]* %sp7.159
  %sp0.193 = alloca [1 x i8]
  store [1 x i8] c"\36", [1 x i8]* %sp0.193
  %sp0.1.193 = bitcast [1 x i8]* %sp0.193 to i8*
  %i0.193 = load i8, i8* %sp0.1.193

  %sp1.193 = alloca [1 x i8]
  store [1 x i8] c"\59", [1 x i8]* %sp1.193
  %sp1.1.193 = bitcast [1 x i8]* %sp1.193 to i8*
  %i1.193 = load i8, i8* %sp1.1.193

  %xp193 = xor i8 %i0.193, %i1.193

  %fi.193 = alloca i8
  store i8 %xp193, i8* %fi.193

  %final.ptr.193 = bitcast i8* %fi.193 to [1 x i8]*
  %spi193 = load [1 x i8], [1 x i8]* %final.ptr.193
  store [1 x i8] %spi193, [1 x i8]* %sp7.159
;-------------------------------
  %next7.159 = getelementptr [13 x i8], [13 x i8]* %spi159, i32 0, i32 11
  
  %sp8.159 = bitcast i8* %next7.159 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\00", [2 x i8]* %sp8.159
  %sp0.194 = alloca [2 x i8]
  store [2 x i8] c"\2B\6B", [2 x i8]* %sp0.194
  %sp0.1.194 = bitcast [2 x i8]* %sp0.194 to i16*
  %i0.194 = load i16, i16* %sp0.1.194

  %sp1.194 = alloca [2 x i8]
  store [2 x i8] c"\6a\6b", [2 x i8]* %sp1.194
  %sp1.1.194 = bitcast [2 x i8]* %sp1.194 to i16*
  %i1.194 = load i16, i16* %sp1.1.194

  %xp194 = xor i16 %i0.194, %i1.194

  %fi.194 = alloca i16
  store i16 %xp194, i16* %fi.194

  %final.ptr.194 = bitcast i16* %fi.194 to [2 x i8]*
  %spi194 = load [2 x i8], [2 x i8]* %final.ptr.194
  store [2 x i8] %spi194, [2 x i8]* %sp8.159
;-------------------------------
  %cipher.ptr.113 = getelementptr inbounds [13 x i8], [13 x i8]* %spi159, i32 0, i32 0
;-------------------------------
  %plain.ptr.113 = tail call i8* @base64_decode(i8* %cipher.ptr.113)
  %spi113 = ptrtoint i8* %plain.ptr.113 to i32
  store i32 %spi113, i32* %14, align 4
;-------------------------------
  %19 = load i32, i32* %18, align 8
  %es28 = load i32, i32* %18, align 16
;-------------------------------
;--------Added Syst Call--------
  %a27 = tail call i32 @atoi(i32 %es28)
;-------------------------------
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
;-------------------------------
;--------Added Syst Call--------
  %a88 = tail call i32 @alarm (i32 %tmp0_v.i.i)
;-------------------------------
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
;-------------------------------
; Replace: %cipher.ptr.114 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.114, i32 0, i32 0
  %spi160 = alloca [5 x i8]

  
  %sp0.160 = bitcast [5 x i8]* %spi160 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4a", [1 x i8]* %sp0.160
  %sp0.195 = alloca [1 x i8]
  store [1 x i8] c"\7A", [1 x i8]* %sp0.195
  %sp0.1.195 = bitcast [1 x i8]* %sp0.195 to i8*
  %i0.195 = load i8, i8* %sp0.1.195

  %sp1.195 = alloca [1 x i8]
  store [1 x i8] c"\30", [1 x i8]* %sp1.195
  %sp1.1.195 = bitcast [1 x i8]* %sp1.195 to i8*
  %i1.195 = load i8, i8* %sp1.1.195

  %xp195 = xor i8 %i0.195, %i1.195

  %fi.195 = alloca i8
  store i8 %xp195, i8* %fi.195

  %final.ptr.195 = bitcast i8* %fi.195 to [1 x i8]*
  %spi195 = load [1 x i8], [1 x i8]* %final.ptr.195
  store [1 x i8] %spi195, [1 x i8]* %sp0.160
;-------------------------------
  %next0.160 = getelementptr [5 x i8], [5 x i8]* %spi160, i32 0, i32 1
  
  %sp1.160 = bitcast i8* %next0.160 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\58", [1 x i8]* %sp1.160
  %sp0.196 = alloca [1 x i8]
  store [1 x i8] c"\3D", [1 x i8]* %sp0.196
  %sp0.1.196 = bitcast [1 x i8]* %sp0.196 to i8*
  %i0.196 = load i8, i8* %sp0.1.196

  %sp1.196 = alloca [1 x i8]
  store [1 x i8] c"\65", [1 x i8]* %sp1.196
  %sp1.1.196 = bitcast [1 x i8]* %sp1.196 to i8*
  %i1.196 = load i8, i8* %sp1.1.196

  %xp196 = xor i8 %i0.196, %i1.196

  %fi.196 = alloca i8
  store i8 %xp196, i8* %fi.196

  %final.ptr.196 = bitcast i8* %fi.196 to [1 x i8]*
  %spi196 = load [1 x i8], [1 x i8]* %final.ptr.196
  store [1 x i8] %spi196, [1 x i8]* %sp1.160
;-------------------------------
  %next1.160 = getelementptr [5 x i8], [5 x i8]* %spi160, i32 0, i32 2
  
  %sp2.160 = bitcast i8* %next1.160 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp2.160
  %sp0.197 = alloca [1 x i8]
  store [1 x i8] c"\2B", [1 x i8]* %sp0.197
  %sp0.1.197 = bitcast [1 x i8]* %sp0.197 to i8*
  %i0.197 = load i8, i8* %sp0.1.197

  %sp1.197 = alloca [1 x i8]
  store [1 x i8] c"\66", [1 x i8]* %sp1.197
  %sp1.1.197 = bitcast [1 x i8]* %sp1.197 to i8*
  %i1.197 = load i8, i8* %sp1.1.197

  %xp197 = xor i8 %i0.197, %i1.197

  %fi.197 = alloca i8
  store i8 %xp197, i8* %fi.197

  %final.ptr.197 = bitcast i8* %fi.197 to [1 x i8]*
  %spi197 = load [1 x i8], [1 x i8]* %final.ptr.197
  store [1 x i8] %spi197, [1 x i8]* %sp2.160
;-------------------------------
  %next2.160 = getelementptr [5 x i8], [5 x i8]* %spi160, i32 0, i32 3
  
  %sp3.160 = bitcast i8* %next2.160 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp3.160
  %sp0.198 = alloca [1 x i8]
  store [1 x i8] c"\31", [1 x i8]* %sp0.198
  %sp0.1.198 = bitcast [1 x i8]* %sp0.198 to i8*
  %i0.198 = load i8, i8* %sp0.1.198

  %sp1.198 = alloca [1 x i8]
  store [1 x i8] c"\70", [1 x i8]* %sp1.198
  %sp1.1.198 = bitcast [1 x i8]* %sp1.198 to i8*
  %i1.198 = load i8, i8* %sp1.1.198

  %xp198 = xor i8 %i0.198, %i1.198

  %fi.198 = alloca i8
  store i8 %xp198, i8* %fi.198

  %final.ptr.198 = bitcast i8* %fi.198 to [1 x i8]*
  %spi198 = load [1 x i8], [1 x i8]* %final.ptr.198
  store [1 x i8] %spi198, [1 x i8]* %sp3.160
;-------------------------------
  %next3.160 = getelementptr [5 x i8], [5 x i8]* %spi160, i32 0, i32 4
  
  %sp4.160 = bitcast i8* %next3.160 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.160
  %cipher.ptr.114 = getelementptr inbounds [5 x i8], [5 x i8]* %spi160, i32 0, i32 0
;-------------------------------
  %plain.ptr.114 = tail call i8* @base64_decode(i8* %cipher.ptr.114)
  %spi114 = ptrtoint i8* %plain.ptr.114 to i32
  store i32 %spi114, i32* %21, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -84
  %es80 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a79 = tail call i32 @tolower(i32 %es80)
;-------------------------------
  %22 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i4.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i.i, -40
  %24 = inttoptr i32 %tmp2_v.i9.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not10.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not10.i.i, label %BB_10, label %next10
next10:
;-------------------------------
  store i32 %tmp2_v4.i.i, i32* %24, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i13.i.i = add i32 %tmp0_v.i.i, -68
  %25 = inttoptr i32 %tmp2_v2.i13.i.i to i32*
  store i32 134517678, i32* %25, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i.i, -72
  %26 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
  store i32 0, i32* %26, align 8
  %tmp2_v3.i.i.i4 = add i32 %tmp0_v.i.i, -76
  %27 = inttoptr i32 %tmp2_v3.i.i.i4 to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -80
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %28, align 16
  %tmp2_v5.i7.i.i = add i32 %tmp0_v.i.i, -84
  %29 = inttoptr i32 %tmp2_v5.i7.i.i to i32*
;-------------------------------
;--------Added Syst Call--------
  %a33 = tail call i32 @htonl(i32 %tmp2_v.i32.i)
;-------------------------------
  store i32 134517705, i32* %29, align 4
;-------------------------------
;----------Random Cond----------
  %.not146.i.i = icmp eq i32 4 , %rand_fin145 
  br i1 %.not146.i.i, label %next146, label %BB_122
next146:
;-------------------------------
  %arg.i.i.i = load i32, i32* %28, align 16
;-------------------------------
;--------Basic Condition--------
  %.not18.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not18.i.i, label %BB_18, label %next18
next18:
;-------------------------------
  %arg2.i.i.i = load i32, i32* %27, align 4
  %arg4.i.i.i = load i32, i32* %26, align 8
  %30 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
  store i32 %30, i32* %14, align 4
;-------------------------------
;----------Random Cond----------
  %.not138.i.i = icmp eq i32 3 , %rand_fin137 
  br i1 %.not138.i.i, label %next138, label %BB_122
next138:
;-------------------------------
  store i32 %30, i32* %28, align 16
  %es53 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a52 = tail call i32 @getenv(i32 %es53)
;-------------------------------
  store i32 134517722, i32* %29, align 4
  %arg.i.i3.i = load i32, i32* %28, align 16
  %31 = tail call i32 @close(i32 %arg.i.i3.i)
;-------------------------------
;--------Basic Condition--------
  %.not14.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not14.i.i, label %BB_14, label %next14
next14:
;-------------------------------
  br label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
;-------------------------------
;----------Random Cond----------
  %.not130.i.i = icmp eq i32 2 , %rand_fin129 
  br i1 %.not130.i.i, label %next130, label %BB_122
next130:
;-------------------------------
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i.i, -40
  %32 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %32, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -84
  %33 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517482, i32* %33, align 4
  %tmp4_v.i19.i.b.i = load i1, i1* @segs.0, align 1
;-------------------------------
;--------Basic Condition--------
  %.not12.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not12.i.i, label %BB_12, label %next12
next12:
;-------------------------------
  %34 = select i1 %tmp4_v.i19.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %35 = load i32, i32* %34, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @structure_padding845 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack844, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %35, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -92
  %36 = inttoptr i32 %tmp2_v5.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %36, align 4
;-------------------------------
; Replace: %cipher.ptr.115 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.115, i32 0, i32 0
  %spi161 = alloca [5 x i8]

  
  %sp0.161 = bitcast [5 x i8]* %spi161 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\64", [1 x i8]* %sp0.161
  %sp0.199 = alloca [1 x i8]
  store [1 x i8] c"\01", [1 x i8]* %sp0.199
  %sp0.1.199 = bitcast [1 x i8]* %sp0.199 to i8*
  %i0.199 = load i8, i8* %sp0.1.199

  %sp1.199 = alloca [1 x i8]
  store [1 x i8] c"\65", [1 x i8]* %sp1.199
  %sp1.1.199 = bitcast [1 x i8]* %sp1.199 to i8*
  %i1.199 = load i8, i8* %sp1.1.199

  %xp199 = xor i8 %i0.199, %i1.199

  %fi.199 = alloca i8
  store i8 %xp199, i8* %fi.199

  %final.ptr.199 = bitcast i8* %fi.199 to [1 x i8]*
  %spi199 = load [1 x i8], [1 x i8]* %final.ptr.199
  store [1 x i8] %spi199, [1 x i8]* %sp0.161
;-------------------------------
  %next0.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 1
  
  %sp1.161 = bitcast i8* %next0.161 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\79", [1 x i8]* %sp1.161
  %sp0.200 = alloca [1 x i8]
  store [1 x i8] c"\17", [1 x i8]* %sp0.200
  %sp0.1.200 = bitcast [1 x i8]* %sp0.200 to i8*
  %i0.200 = load i8, i8* %sp0.1.200

  %sp1.200 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.200
  %sp1.1.200 = bitcast [1 x i8]* %sp1.200 to i8*
  %i1.200 = load i8, i8* %sp1.1.200

  %xp200 = xor i8 %i0.200, %i1.200

  %fi.200 = alloca i8
  store i8 %xp200, i8* %fi.200

  %final.ptr.200 = bitcast i8* %fi.200 to [1 x i8]*
  %spi200 = load [1 x i8], [1 x i8]* %final.ptr.200
  store [1 x i8] %spi200, [1 x i8]* %sp1.161
;-------------------------------
  %next1.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 2
  
  %sp2.161 = bitcast i8* %next1.161 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\73", [1 x i8]* %sp2.161
  %sp0.201 = alloca [1 x i8]
  store [1 x i8] c"\3E", [1 x i8]* %sp0.201
  %sp0.1.201 = bitcast [1 x i8]* %sp0.201 to i8*
  %i0.201 = load i8, i8* %sp0.1.201

  %sp1.201 = alloca [1 x i8]
  store [1 x i8] c"\4d", [1 x i8]* %sp1.201
  %sp1.1.201 = bitcast [1 x i8]* %sp1.201 to i8*
  %i1.201 = load i8, i8* %sp1.1.201

  %xp201 = xor i8 %i0.201, %i1.201

  %fi.201 = alloca i8
  store i8 %xp201, i8* %fi.201

  %final.ptr.201 = bitcast i8* %fi.201 to [1 x i8]*
  %spi201 = load [1 x i8], [1 x i8]* %final.ptr.201
  store [1 x i8] %spi201, [1 x i8]* %sp2.161
;-------------------------------
  %next2.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 3
  
  %sp3.161 = bitcast i8* %next2.161 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp3.161
  %sp0.202 = alloca [1 x i8]
  store [1 x i8] c"\18", [1 x i8]* %sp0.202
  %sp0.1.202 = bitcast [1 x i8]* %sp0.202 to i8*
  %i0.202 = load i8, i8* %sp0.1.202

  %sp1.202 = alloca [1 x i8]
  store [1 x i8] c"\59", [1 x i8]* %sp1.202
  %sp1.1.202 = bitcast [1 x i8]* %sp1.202 to i8*
  %i1.202 = load i8, i8* %sp1.1.202

  %xp202 = xor i8 %i0.202, %i1.202

  %fi.202 = alloca i8
  store i8 %xp202, i8* %fi.202

  %final.ptr.202 = bitcast i8* %fi.202 to [1 x i8]*
  %spi202 = load [1 x i8], [1 x i8]* %final.ptr.202
  store [1 x i8] %spi202, [1 x i8]* %sp3.161
;-------------------------------
  %next3.161 = getelementptr [5 x i8], [5 x i8]* %spi161, i32 0, i32 4
  
  %sp4.161 = bitcast i8* %next3.161 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.161
  %cipher.ptr.115 = getelementptr inbounds [5 x i8], [5 x i8]* %spi161, i32 0, i32 0
;-------------------------------
  %plain.ptr.115 = tail call i8* @base64_decode(i8* %cipher.ptr.115)
  %spi115 = ptrtoint i8* %plain.ptr.115 to i32
  store i32 %spi115, i32* %36, align 4
;-------------------------------
  %tmp2_v7.i.i.i6 = add i32 %tmp0_v.i.i, -96
  %37 = inttoptr i32 %tmp2_v7.i.i.i6 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %37, align 16
;-------------------------------
; Replace: %cipher.ptr.116 = getelementptr inbounds [21 x i8], [21 x i8]* @cipher.116, i32 0, i32 0
  %spi162 = alloca [21 x i8]

  
  %sp0.162 = bitcast [21 x i8]* %spi162 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\64\47", [2 x i8]* %sp0.162
  %sp0.203 = alloca [2 x i8]
  store [2 x i8] c"\01\22", [2 x i8]* %sp0.203
  %sp0.1.203 = bitcast [2 x i8]* %sp0.203 to i16*
  %i0.203 = load i16, i16* %sp0.1.203

  %sp1.203 = alloca [2 x i8]
  store [2 x i8] c"\65\65", [2 x i8]* %sp1.203
  %sp1.1.203 = bitcast [2 x i8]* %sp1.203 to i16*
  %i1.203 = load i16, i16* %sp1.1.203

  %xp203 = xor i16 %i0.203, %i1.203

  %fi.203 = alloca i16
  store i16 %xp203, i16* %fi.203

  %final.ptr.203 = bitcast i16* %fi.203 to [2 x i8]*
  %spi203 = load [2 x i8], [2 x i8]* %final.ptr.203
  store [2 x i8] %spi203, [2 x i8]* %sp0.162
;-------------------------------
  %next0.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 2
  
  %sp1.162 = bitcast i8* %next0.162 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\56\34", [2 x i8]* %sp1.162
  %sp0.204 = alloca [2 x i8]
  store [2 x i8] c"\67\59", [2 x i8]* %sp0.204
  %sp0.1.204 = bitcast [2 x i8]* %sp0.204 to i16*
  %i0.204 = load i16, i16* %sp0.1.204

  %sp1.204 = alloca [2 x i8]
  store [2 x i8] c"\31\6d", [2 x i8]* %sp1.204
  %sp1.1.204 = bitcast [2 x i8]* %sp1.204 to i16*
  %i1.204 = load i16, i16* %sp1.1.204

  %xp204 = xor i16 %i0.204, %i1.204

  %fi.204 = alloca i16
  store i16 %xp204, i16* %fi.204

  %final.ptr.204 = bitcast i16* %fi.204 to [2 x i8]*
  %spi204 = load [2 x i8], [2 x i8]* %final.ptr.204
  store [2 x i8] %spi204, [2 x i8]* %sp1.162
;-------------------------------
  %next1.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 4
  
  %sp2.162 = bitcast i8* %next1.162 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\64\46\39", [3 x i8]* %sp2.162
  %sp0.205 = alloca [3 x i8]
  store [3 x i8] c"\27\11\56", [3 x i8]* %sp0.205
  %sp0.1.205 = bitcast [3 x i8]* %sp0.205 to i24*
  %i0.205 = load i24, i24* %sp0.1.205

  %sp1.205 = alloca [3 x i8]
  store [3 x i8] c"\43\57\6f", [3 x i8]* %sp1.205
  %sp1.1.205 = bitcast [3 x i8]* %sp1.205 to i24*
  %i1.205 = load i24, i24* %sp1.1.205

  %xp205 = xor i24 %i0.205, %i1.205

  %fi.205 = alloca i24
  store i24 %xp205, i24* %fi.205

  %final.ptr.205 = bitcast i24* %fi.205 to [3 x i8]*
  %spi205 = load [3 x i8], [3 x i8]* %final.ptr.205
  store [3 x i8] %spi205, [3 x i8]* %sp2.162
;-------------------------------
  %next2.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 7
  
  %sp3.162 = bitcast i8* %next2.162 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\61", [2 x i8]* %sp3.162
  %sp0.206 = alloca [2 x i8]
  store [2 x i8] c"\3F\22", [2 x i8]* %sp0.206
  %sp0.1.206 = bitcast [2 x i8]* %sp0.206 to i16*
  %i0.206 = load i16, i16* %sp0.1.206

  %sp1.206 = alloca [2 x i8]
  store [2 x i8] c"\52\43", [2 x i8]* %sp1.206
  %sp1.1.206 = bitcast [2 x i8]* %sp1.206 to i16*
  %i1.206 = load i16, i16* %sp1.1.206

  %xp206 = xor i16 %i0.206, %i1.206

  %fi.206 = alloca i16
  store i16 %xp206, i16* %fi.206

  %final.ptr.206 = bitcast i16* %fi.206 to [2 x i8]*
  %spi206 = load [2 x i8], [2 x i8]* %final.ptr.206
  store [2 x i8] %spi206, [2 x i8]* %sp3.162
;-------------------------------
  %next3.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 9
  
  %sp4.162 = bitcast i8* %next3.162 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\78", [2 x i8]* %sp4.162
  %sp0.207 = alloca [2 x i8]
  store [2 x i8] c"\32\3F", [2 x i8]* %sp0.207
  %sp0.1.207 = bitcast [2 x i8]* %sp0.207 to i16*
  %i0.207 = load i16, i16* %sp0.1.207

  %sp1.207 = alloca [2 x i8]
  store [2 x i8] c"\65\47", [2 x i8]* %sp1.207
  %sp1.1.207 = bitcast [2 x i8]* %sp1.207 to i16*
  %i1.207 = load i16, i16* %sp1.1.207

  %xp207 = xor i16 %i0.207, %i1.207

  %fi.207 = alloca i16
  store i16 %xp207, i16* %fi.207

  %final.ptr.207 = bitcast i16* %fi.207 to [2 x i8]*
  %spi207 = load [2 x i8], [2 x i8]* %final.ptr.207
  store [2 x i8] %spi207, [2 x i8]* %sp4.162
;-------------------------------
  %next4.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 11
  
  %sp5.162 = bitcast i8* %next4.162 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\6c\4d\79", [3 x i8]* %sp5.162
  %sp0.208 = alloca [3 x i8]
  store [3 x i8] c"\5C\7A\3C", [3 x i8]* %sp0.208
  %sp0.1.208 = bitcast [3 x i8]* %sp0.208 to i24*
  %i0.208 = load i24, i24* %sp0.1.208

  %sp1.208 = alloca [3 x i8]
  store [3 x i8] c"\30\37\45", [3 x i8]* %sp1.208
  %sp1.1.208 = bitcast [3 x i8]* %sp1.208 to i24*
  %i1.208 = load i24, i24* %sp1.1.208

  %xp208 = xor i24 %i0.208, %i1.208

  %fi.208 = alloca i24
  store i24 %xp208, i24* %fi.208

  %final.ptr.208 = bitcast i24* %fi.208 to [3 x i8]*
  %spi208 = load [3 x i8], [3 x i8]* %final.ptr.208
  store [3 x i8] %spi208, [3 x i8]* %sp5.162
;-------------------------------
  %next5.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 14
  
  %sp6.162 = bitcast i8* %next5.162 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\35\30", [2 x i8]* %sp6.162
  %sp0.209 = alloca [2 x i8]
  store [2 x i8] c"\71\49", [2 x i8]* %sp0.209
  %sp0.1.209 = bitcast [2 x i8]* %sp0.209 to i16*
  %i0.209 = load i16, i16* %sp0.1.209

  %sp1.209 = alloca [2 x i8]
  store [2 x i8] c"\44\79", [2 x i8]* %sp1.209
  %sp1.1.209 = bitcast [2 x i8]* %sp1.209 to i16*
  %i1.209 = load i16, i16* %sp1.1.209

  %xp209 = xor i16 %i0.209, %i1.209

  %fi.209 = alloca i16
  store i16 %xp209, i16* %fi.209

  %final.ptr.209 = bitcast i16* %fi.209 to [2 x i8]*
  %spi209 = load [2 x i8], [2 x i8]* %final.ptr.209
  store [2 x i8] %spi209, [2 x i8]* %sp6.162
;-------------------------------
  %next6.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 16
  
  %sp7.162 = bitcast i8* %next6.162 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\65\48", [2 x i8]* %sp7.162
  %sp0.210 = alloca [2 x i8]
  store [2 x i8] c"\57\09", [2 x i8]* %sp0.210
  %sp0.1.210 = bitcast [2 x i8]* %sp0.210 to i16*
  %i0.210 = load i16, i16* %sp0.1.210

  %sp1.210 = alloca [2 x i8]
  store [2 x i8] c"\32\41", [2 x i8]* %sp1.210
  %sp1.1.210 = bitcast [2 x i8]* %sp1.210 to i16*
  %i1.210 = load i16, i16* %sp1.1.210

  %xp210 = xor i16 %i0.210, %i1.210

  %fi.210 = alloca i16
  store i16 %xp210, i16* %fi.210

  %final.ptr.210 = bitcast i16* %fi.210 to [2 x i8]*
  %spi210 = load [2 x i8], [2 x i8]* %final.ptr.210
  store [2 x i8] %spi210, [2 x i8]* %sp7.162
;-------------------------------
  %next7.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 18
  
  %sp8.162 = bitcast i8* %next7.162 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\51\41\00", [3 x i8]* %sp8.162
  %sp0.211 = alloca [3 x i8]
  store [3 x i8] c"\33\17\6E", [3 x i8]* %sp0.211
  %sp0.1.211 = bitcast [3 x i8]* %sp0.211 to i24*
  %i0.211 = load i24, i24* %sp0.1.211

  %sp1.211 = alloca [3 x i8]
  store [3 x i8] c"\62\56\6e", [3 x i8]* %sp1.211
  %sp1.1.211 = bitcast [3 x i8]* %sp1.211 to i24*
  %i1.211 = load i24, i24* %sp1.1.211

  %xp211 = xor i24 %i0.211, %i1.211

  %fi.211 = alloca i24
  store i24 %xp211, i24* %fi.211

  %final.ptr.211 = bitcast i24* %fi.211 to [3 x i8]*
  %spi211 = load [3 x i8], [3 x i8]* %final.ptr.211
  store [3 x i8] %spi211, [3 x i8]* %sp8.162
;-------------------------------
  %cipher.ptr.116 = getelementptr inbounds [21 x i8], [21 x i8]* %spi162, i32 0, i32 0
;-------------------------------
  %plain.ptr.116 = tail call i8* @base64_decode(i8* %cipher.ptr.116)
  %spi116 = ptrtoint i8* %plain.ptr.116 to i32
  store i32 %spi116, i32* %37, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -100
  %38 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %38, align 4
  %arg.i.i.i7 = load i32, i32* %37, align 16
  %arg2.i.i.i8 = load i32, i32* %36, align 4
  %39 = tail call i32 @fopen(i32 %arg.i.i.i7, i32 %arg2.i.i.i8)
  %tmp2_v.i41.i.i = add i32 %tmp0_v.i.i, -76
  %40 = inttoptr i32 %tmp2_v.i41.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not16.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not16.i.i, label %BB_16, label %next16
next16:
;-------------------------------
  store i32 %39, i32* %40, align 4
  %tmp2_v.i28.i.i = add i32 %tmp0_v.i.i, -72
  %41 = inttoptr i32 %tmp2_v.i28.i.i to i32*
  store i32 1818304585, i32* %41, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i.i, -68
  %42 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 1701995892, i32* %42, align 4
  %tmp2_v2.i30.i.i = add i32 %tmp0_v.i.i, -64
;-------------------------------
;--------Basic Condition--------
  %.not6.i.i = icmp eq i32 0 , 0 ;always true
  %es78 = load i32, i32* %37, align 16
;-------------------------------
;--------Added Syst Call--------
  %a77 = tail call i32 @fopen( i32 %es78, i32 %tmp0_v.i.i)
;-------------------------------
  br i1 %.not6.i.i, label %BB_6, label %next6
next6:
;-------------------------------
  %es20 = load i32, i32* %37, align 16
;-------------------------------
;--------Added Syst Call--------
  %a19 = tail call i32 @atol(i32 %es20)
;-------------------------------
;-------------------------------
;----------Random Cond----------
  %.not126.i.i = icmp eq i32 2 , %rand_fin125 
  br i1 %.not126.i.i, label %next126, label %BB_122
next126:
;-------------------------------
  %43 = inttoptr i32 %tmp2_v2.i30.i.i to i32*
  store i32 1752440932, i32* %43, align 16
  %tmp2_v3.i.i.i9 = add i32 %tmp0_v.i.i, -60
  %44 = inttoptr i32 %tmp2_v3.i.i.i9 to i32*
  store i32 1768300645, i32* %44, align 4
  %es99 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a98 = tail call i32 @toupper(i32 %es99)
;-------------------------------
  %tmp2_v4.i31.i.i = add i32 %tmp0_v.i.i, -56
  %45 = inttoptr i32 %tmp2_v4.i31.i.i to i32*
  store i32 2188652, i32* %45, align 8
  %46 = load i32, i32* %40, align 4
  store i32 %46, i32* %33, align 4
  %tmp2_v7.i36.i.i = add i32 %tmp0_v.i.i, -88
  %47 = inttoptr i32 %tmp2_v7.i36.i.i to i32*
  store i32 20, i32* %47, align 8
  store i32 1, i32* %36, align 4
  store i32 %tmp2_v.i28.i.i, i32* %37, align 16
  store i32 134517622, i32* %38, align 4
  %arg.i.i4.i = load i32, i32* %37, align 16
  %arg2.i.i5.i = load i32, i32* %36, align 4
  %arg4.i.i.i10 = load i32, i32* %47, align 8
  %arg6.i.i.i = load i32, i32* %33, align 4
  %48 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i10, i32 %arg6.i.i.i)
  %49 = load i32, i32* %40, align 4
  store i32 %49, i32* %37, align 16
  store i32 134517636, i32* %38, align 4
  %arg.i.i6.i = load i32, i32* %37, align 16
  %50 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %51 = load i32, i32* %8, align 4
  %tmp0_v1.i.i = add i32 %51, 4
  %52 = inttoptr i32 %tmp0_v1.i.i to i32*
  %53 = load i32, i32* %52, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
;-------------------------------
; Replace: %cipher.ptr.117 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.117, i32 0, i32 0
  %spi163 = alloca [5 x i8]

  
  %sp0.163 = bitcast [5 x i8]* %spi163 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp0.163
  %sp0.212 = alloca [1 x i8]
  store [1 x i8] c"\25", [1 x i8]* %sp0.212
  %sp0.1.212 = bitcast [1 x i8]* %sp0.212 to i8*
  %i0.212 = load i8, i8* %sp0.1.212

  %sp1.212 = alloca [1 x i8]
  store [1 x i8] c"\68", [1 x i8]* %sp1.212
  %sp1.1.212 = bitcast [1 x i8]* %sp1.212 to i8*
  %i1.212 = load i8, i8* %sp1.1.212

  %xp212 = xor i8 %i0.212, %i1.212

  %fi.212 = alloca i8
  store i8 %xp212, i8* %fi.212

  %final.ptr.212 = bitcast i8* %fi.212 to [1 x i8]*
  %spi212 = load [1 x i8], [1 x i8]* %final.ptr.212
  store [1 x i8] %spi212, [1 x i8]* %sp0.163
;-------------------------------
  %next0.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 1
  
  %sp1.163 = bitcast i8* %next0.163 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\67", [1 x i8]* %sp1.163
  %sp0.213 = alloca [1 x i8]
  store [1 x i8] c"\33", [1 x i8]* %sp0.213
  %sp0.1.213 = bitcast [1 x i8]* %sp0.213 to i8*
  %i0.213 = load i8, i8* %sp0.1.213

  %sp1.213 = alloca [1 x i8]
  store [1 x i8] c"\54", [1 x i8]* %sp1.213
  %sp1.1.213 = bitcast [1 x i8]* %sp1.213 to i8*
  %i1.213 = load i8, i8* %sp1.1.213

  %xp213 = xor i8 %i0.213, %i1.213

  %fi.213 = alloca i8
  store i8 %xp213, i8* %fi.213

  %final.ptr.213 = bitcast i8* %fi.213 to [1 x i8]*
  %spi213 = load [1 x i8], [1 x i8]* %final.ptr.213
  store [1 x i8] %spi213, [1 x i8]* %sp1.163
;-------------------------------
  %next1.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 2
  
  %sp2.163 = bitcast i8* %next1.163 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp2.163
  %sp0.214 = alloca [1 x i8]
  store [1 x i8] c"\35", [1 x i8]* %sp0.214
  %sp0.1.214 = bitcast [1 x i8]* %sp0.214 to i8*
  %i0.214 = load i8, i8* %sp0.1.214

  %sp1.214 = alloca [1 x i8]
  store [1 x i8] c"\74", [1 x i8]* %sp1.214
  %sp1.1.214 = bitcast [1 x i8]* %sp1.214 to i8*
  %i1.214 = load i8, i8* %sp1.1.214

  %xp214 = xor i8 %i0.214, %i1.214

  %fi.214 = alloca i8
  store i8 %xp214, i8* %fi.214

  %final.ptr.214 = bitcast i8* %fi.214 to [1 x i8]*
  %spi214 = load [1 x i8], [1 x i8]* %final.ptr.214
  store [1 x i8] %spi214, [1 x i8]* %sp2.163
;-------------------------------
  %next2.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 3
  
  %sp3.163 = bitcast i8* %next2.163 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp3.163
  %sp0.215 = alloca [1 x i8]
  store [1 x i8] c"\44", [1 x i8]* %sp0.215
  %sp0.1.215 = bitcast [1 x i8]* %sp0.215 to i8*
  %i0.215 = load i8, i8* %sp0.1.215

  %sp1.215 = alloca [1 x i8]
  store [1 x i8] c"\79", [1 x i8]* %sp1.215
  %sp1.1.215 = bitcast [1 x i8]* %sp1.215 to i8*
  %i1.215 = load i8, i8* %sp1.1.215

  %xp215 = xor i8 %i0.215, %i1.215

  %fi.215 = alloca i8
  store i8 %xp215, i8* %fi.215

  %final.ptr.215 = bitcast i8* %fi.215 to [1 x i8]*
  %spi215 = load [1 x i8], [1 x i8]* %final.ptr.215
  store [1 x i8] %spi215, [1 x i8]* %sp3.163
;-------------------------------
  %next3.163 = getelementptr [5 x i8], [5 x i8]* %spi163, i32 0, i32 4
  
  %sp4.163 = bitcast i8* %next3.163 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.163
  %cipher.ptr.117 = getelementptr inbounds [5 x i8], [5 x i8]* %spi163, i32 0, i32 0
;-------------------------------
  %plain.ptr.117 = tail call i8* @base64_decode(i8* %cipher.ptr.117)
  %spi117 = ptrtoint i8* %plain.ptr.117 to i32
  store i32 %spi117, i32* %12, align 4
;-------------------------------
;-------------------------------
;--------Added Syst Call--------
  %a21 = tail call i32 @time(i32 %tmp0_v.i.i)
;-------------------------------
;-------------------------------
;----------Random Cond----------
  %.not122.i.i = icmp eq i32 4 , %rand_fin121 
  br i1 %.not122.i.i, label %next122, label %BB_122
next122:
;-------------------------------
  store i32 %53, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i11 = load i32, i32* %13, align 16
  %arg2.i.i12 = load i32, i32* %12, align 4
  %54 = tail call i32 @strcmp(i32 %arg.i.i11, i32 %arg2.i.i12)
  %.not.i.i = icmp eq i32 %54, 0
  br i1 %.not.i.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049453.i:                                     ; preds = %BB_804942D.i
;-------------------------------
;----------Random Cond----------
  %.not134.i.i = icmp eq i32 1 , %rand_fin133 
  br i1 %.not134.i.i, label %next134, label %BB_122
next134:
;-------------------------------
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i43.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i43.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
;-------------------------------
; Replace: %cipher.ptr.118 = getelementptr inbounds [5 x i8], [5 x i8]* @cipher.118, i32 0, i32 0
  %spi164 = alloca [5 x i8]

  
  %sp0.164 = bitcast [5 x i8]* %spi164 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\4d", [1 x i8]* %sp0.164
  %sp0.216 = alloca [1 x i8]
  store [1 x i8] c"\7B", [1 x i8]* %sp0.216
  %sp0.1.216 = bitcast [1 x i8]* %sp0.216 to i8*
  %i0.216 = load i8, i8* %sp0.1.216

  %sp1.216 = alloca [1 x i8]
  store [1 x i8] c"\36", [1 x i8]* %sp1.216
  %sp1.1.216 = bitcast [1 x i8]* %sp1.216 to i8*
  %i1.216 = load i8, i8* %sp1.1.216

  %xp216 = xor i8 %i0.216, %i1.216

  %fi.216 = alloca i8
  store i8 %xp216, i8* %fi.216

  %final.ptr.216 = bitcast i8* %fi.216 to [1 x i8]*
  %spi216 = load [1 x i8], [1 x i8]* %final.ptr.216
  store [1 x i8] %spi216, [1 x i8]* %sp0.164
;-------------------------------
  %next0.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 1
  
  %sp1.164 = bitcast i8* %next0.164 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\77", [1 x i8]* %sp1.164
  %sp0.217 = alloca [1 x i8]
  store [1 x i8] c"\41", [1 x i8]* %sp0.217
  %sp0.1.217 = bitcast [1 x i8]* %sp0.217 to i8*
  %i0.217 = load i8, i8* %sp0.1.217

  %sp1.217 = alloca [1 x i8]
  store [1 x i8] c"\36", [1 x i8]* %sp1.217
  %sp1.1.217 = bitcast [1 x i8]* %sp1.217 to i8*
  %i1.217 = load i8, i8* %sp1.1.217

  %xp217 = xor i8 %i0.217, %i1.217

  %fi.217 = alloca i8
  store i8 %xp217, i8* %fi.217

  %final.ptr.217 = bitcast i8* %fi.217 to [1 x i8]*
  %spi217 = load [1 x i8], [1 x i8]* %final.ptr.217
  store [1 x i8] %spi217, [1 x i8]* %sp1.164
;-------------------------------
  %next1.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 2
  
  %sp2.164 = bitcast i8* %next1.164 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp2.164
  %sp0.218 = alloca [1 x i8]
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @strspn840 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack839, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store [1 x i8] c"\2F", [1 x i8]* %sp0.218
  %sp0.1.218 = bitcast [1 x i8]* %sp0.218 to i8*
  %i0.218 = load i8, i8* %sp0.1.218

  %sp1.218 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.218
  %sp1.1.218 = bitcast [1 x i8]* %sp1.218 to i8*
  %i1.218 = load i8, i8* %sp1.1.218

  %xp218 = xor i8 %i0.218, %i1.218

  %fi.218 = alloca i8
  store i8 %xp218, i8* %fi.218

  %final.ptr.218 = bitcast i8* %fi.218 to [1 x i8]*
  %spi218 = load [1 x i8], [1 x i8]* %final.ptr.218
  store [1 x i8] %spi218, [1 x i8]* %sp2.164
;-------------------------------
  %next2.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 3
  
  %sp3.164 = bitcast i8* %next2.164 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\3d", [1 x i8]* %sp3.164
  %sp0.219 = alloca [1 x i8]
  store [1 x i8] c"\53", [1 x i8]* %sp0.219
  %sp0.1.219 = bitcast [1 x i8]* %sp0.219 to i8*
  %i0.219 = load i8, i8* %sp0.1.219

  %sp1.219 = alloca [1 x i8]
  store [1 x i8] c"\6e", [1 x i8]* %sp1.219
  %sp1.1.219 = bitcast [1 x i8]* %sp1.219 to i8*
  %i1.219 = load i8, i8* %sp1.1.219

  %xp219 = xor i8 %i0.219, %i1.219

  %fi.219 = alloca i8
  store i8 %xp219, i8* %fi.219

  %final.ptr.219 = bitcast i8* %fi.219 to [1 x i8]*
  %spi219 = load [1 x i8], [1 x i8]* %final.ptr.219
  store [1 x i8] %spi219, [1 x i8]* %sp3.164
;-------------------------------
  %next3.164 = getelementptr [5 x i8], [5 x i8]* %spi164, i32 0, i32 4
  
  %sp4.164 = bitcast i8* %next3.164 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp4.164
  %cipher.ptr.118 = getelementptr inbounds [5 x i8], [5 x i8]* %spi164, i32 0, i32 0
;-------------------------------
  %plain.ptr.118 = tail call i8* @base64_decode(i8* %cipher.ptr.118)
  %spi118 = ptrtoint i8* %plain.ptr.118 to i32
  store i32 %spi118, i32* %12, align 4
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i14 = load i32, i32* %13, align 16
  %arg2.i.i15 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i14, i32 %arg2.i.i15)
  %es73 = load i32, i32* %12, align 16
  %es74 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %es93 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a92 = tail call i32 @strlen(i32 %es93)
;-------------------------------
  %a72 = tail call i32 @strchr( i32 %es73, i32 %es74)
;-------------------------------
  %.not.i22.i = icmp eq i32 %58, 0
  br i1 %.not.i22.i, label %BB_8049472.i, label %.exit

.exit:                                            ; preds = %BB_8049453.i, %BB_804944C.i, %BB_8049472.i, %BB_8049426.i
  ret void
BB_2:
  %es95 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a94 = tail call i32 @access( i32 %es95, i32 %tmp0_v.i.i)
;-------------------------------
  %arg.i.i31 = load i32, i32* %12, align 16  %el32= inttoptr i32 %arg.i.i31 to i8*
;-------------------------------
;--------Added Syst Call--------
  %a30 = tail call i32 @puts(i8* %el32)
;-------------------------------
  %es26 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a25 = tail call double @atof(i32 %es26)
;-------------------------------
;-------------------------------
; Replace: %cast2= getelementptr [9 x i8], [9 x i8]* @.str1, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.101 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.101, i32 0, i32 0
  %spi147 = alloca [13 x i8]

  
  %sp0.147 = bitcast [13 x i8]* %spi147 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\65", [1 x i8]* %sp0.147
  %sp0.220 = alloca [1 x i8]
  store [1 x i8] c"\06", [1 x i8]* %sp0.220
  %sp0.1.220 = bitcast [1 x i8]* %sp0.220 to i8*
  %i0.220 = load i8, i8* %sp0.1.220

  %sp1.220 = alloca [1 x i8]
  store [1 x i8] c"\63", [1 x i8]* %sp1.220
  %sp1.1.220 = bitcast [1 x i8]* %sp1.220 to i8*
  %i1.220 = load i8, i8* %sp1.1.220

  %xp220 = xor i8 %i0.220, %i1.220

  %fi.220 = alloca i8
  store i8 %xp220, i8* %fi.220

  %final.ptr.220 = bitcast i8* %fi.220 to [1 x i8]*
  %spi220 = load [1 x i8], [1 x i8]* %final.ptr.220
  store [1 x i8] %spi220, [1 x i8]* %sp0.147
;-------------------------------
  %next0.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 1
  
  %sp1.147 = bitcast i8* %next0.147 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6d", [1 x i8]* %sp1.147
  %sp0.221 = alloca [1 x i8]
  store [1 x i8] c"\05", [1 x i8]* %sp0.221
  %sp0.1.221 = bitcast [1 x i8]* %sp0.221 to i8*
  %i0.221 = load i8, i8* %sp0.1.221

  %sp1.221 = alloca [1 x i8]
  store [1 x i8] c"\68", [1 x i8]* %sp1.221
  %sp1.1.221 = bitcast [1 x i8]* %sp1.221 to i8*
  %i1.221 = load i8, i8* %sp1.1.221

  %xp221 = xor i8 %i0.221, %i1.221

  %fi.221 = alloca i8
  store i8 %xp221, i8* %fi.221

  %final.ptr.221 = bitcast i8* %fi.221 to [1 x i8]*
  %spi221 = load [1 x i8], [1 x i8]* %final.ptr.221
  store [1 x i8] %spi221, [1 x i8]* %sp1.147
;-------------------------------
  %next1.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 2
  
  %sp2.147 = bitcast i8* %next1.147 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\56\6d", [2 x i8]* %sp2.147
  %sp0.222 = alloca [2 x i8]
  store [2 x i8] c"\00\29", [2 x i8]* %sp0.222
  %sp0.1.222 = bitcast [2 x i8]* %sp0.222 to i16*
  %i0.222 = load i16, i16* %sp0.1.222

  %sp1.222 = alloca [2 x i8]
  store [2 x i8] c"\56\44", [2 x i8]* %sp1.222
  %sp1.1.222 = bitcast [2 x i8]* %sp1.222 to i16*
  %i1.222 = load i16, i16* %sp1.1.222

  %xp222 = xor i16 %i0.222, %i1.222

  %fi.222 = alloca i16
  store i16 %xp222, i16* %fi.222

  %final.ptr.222 = bitcast i16* %fi.222 to [2 x i8]*
  %spi222 = load [2 x i8], [2 x i8]* %final.ptr.222
  store [2 x i8] %spi222, [2 x i8]* %sp2.147
;-------------------------------
  %next2.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 4
  
  %sp3.147 = bitcast i8* %next2.147 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\61", [1 x i8]* %sp3.147
  %sp0.223 = alloca [1 x i8]
  store [1 x i8] c"\05", [1 x i8]* %sp0.223
  %sp0.1.223 = bitcast [1 x i8]* %sp0.223 to i8*
  %i0.223 = load i8, i8* %sp0.1.223

  %sp1.223 = alloca [1 x i8]
  store [1 x i8] c"\64", [1 x i8]* %sp1.223
  %sp1.1.223 = bitcast [1 x i8]* %sp1.223 to i8*
  %i1.223 = load i8, i8* %sp1.1.223

  %xp223 = xor i8 %i0.223, %i1.223

  %fi.223 = alloca i8
  store i8 %xp223, i8* %fi.223

  %final.ptr.223 = bitcast i8* %fi.223 to [1 x i8]*
  %spi223 = load [1 x i8], [1 x i8]* %final.ptr.223
  store [1 x i8] %spi223, [1 x i8]* %sp3.147
;-------------------------------
  %next3.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 5
  
  %sp4.147 = bitcast i8* %next3.147 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\53", [2 x i8]* %sp4.147
  %sp0.224 = alloca [2 x i8]
  store [2 x i8] c"\2D\2B", [2 x i8]* %sp0.224
  %sp0.1.224 = bitcast [2 x i8]* %sp0.224 to i16*
  %i0.224 = load i16, i16* %sp0.1.224

  %sp1.224 = alloca [2 x i8]
  store [2 x i8] c"\4e\78", [2 x i8]* %sp1.224
  %sp1.1.224 = bitcast [2 x i8]* %sp1.224 to i16*
  %i1.224 = load i16, i16* %sp1.1.224

  %xp224 = xor i16 %i0.224, %i1.224

  %fi.224 = alloca i16
  store i16 %xp224, i16* %fi.224

  %final.ptr.224 = bitcast i16* %fi.224 to [2 x i8]*
  %spi224 = load [2 x i8], [2 x i8]* %final.ptr.224
  store [2 x i8] %spi224, [2 x i8]* %sp4.147
;-------------------------------
  %next4.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 7
  
  %sp5.147 = bitcast i8* %next4.147 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\31", [1 x i8]* %sp5.147
  %sp0.225 = alloca [1 x i8]
  store [1 x i8] c"\42", [1 x i8]* %sp0.225
  %sp0.1.225 = bitcast [1 x i8]* %sp0.225 to i8*
  %i0.225 = load i8, i8* %sp0.1.225

  %sp1.225 = alloca [1 x i8]
  store [1 x i8] c"\73", [1 x i8]* %sp1.225
  %sp1.1.225 = bitcast [1 x i8]* %sp1.225 to i8*
  %i1.225 = load i8, i8* %sp1.1.225

  %xp225 = xor i8 %i0.225, %i1.225

  %fi.225 = alloca i8
  store i8 %xp225, i8* %fi.225

  %final.ptr.225 = bitcast i8* %fi.225 to [1 x i8]*
  %spi225 = load [1 x i8], [1 x i8]* %final.ptr.225
  store [1 x i8] %spi225, [1 x i8]* %sp5.147
;-------------------------------
  %next5.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 8
  
  %sp6.147 = bitcast i8* %next5.147 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\61\48", [2 x i8]* %sp6.147
  %sp0.226 = alloca [2 x i8]
  store [2 x i8] c"\00\18", [2 x i8]* %sp0.226
  %sp0.1.226 = bitcast [2 x i8]* %sp0.226 to i16*
  %i0.226 = load i16, i16* %sp0.1.226

  %sp1.226 = alloca [2 x i8]
  store [2 x i8] c"\61\50", [2 x i8]* %sp1.226
  %sp1.1.226 = bitcast [2 x i8]* %sp1.226 to i16*
  %i1.226 = load i16, i16* %sp1.1.226

  %xp226 = xor i16 %i0.226, %i1.226

  %fi.226 = alloca i16
  store i16 %xp226, i16* %fi.226

  %final.ptr.226 = bitcast i16* %fi.226 to [2 x i8]*
  %spi226 = load [2 x i8], [2 x i8]* %final.ptr.226
  store [2 x i8] %spi226, [2 x i8]* %sp6.147
;-------------------------------
  %next6.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 10
  
  %sp7.147 = bitcast i8* %next6.147 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp7.147
  %sp0.227 = alloca [1 x i8]
  store [1 x i8] c"\21", [1 x i8]* %sp0.227
  %sp0.1.227 = bitcast [1 x i8]* %sp0.227 to i8*
  %i0.227 = load i8, i8* %sp0.1.227

  %sp1.227 = alloca [1 x i8]
  store [1 x i8] c"\70", [1 x i8]* %sp1.227
  %sp1.1.227 = bitcast [1 x i8]* %sp1.227 to i8*
  %i1.227 = load i8, i8* %sp1.1.227

  %xp227 = xor i8 %i0.227, %i1.227

  %fi.227 = alloca i8
  store i8 %xp227, i8* %fi.227

  %final.ptr.227 = bitcast i8* %fi.227 to [1 x i8]*
  %spi227 = load [1 x i8], [1 x i8]* %final.ptr.227
  store [1 x i8] %spi227, [1 x i8]* %sp7.147
;-------------------------------
  %next7.147 = getelementptr [13 x i8], [13 x i8]* %spi147, i32 0, i32 11
  
  %sp8.147 = bitcast i8* %next7.147 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\00", [2 x i8]* %sp8.147
  %sp0.228 = alloca [2 x i8]
  store [2 x i8] c"\3B\6C", [2 x i8]* %sp0.228
  %sp0.1.228 = bitcast [2 x i8]* %sp0.228 to i16*
  %i0.228 = load i16, i16* %sp0.1.228

  %sp1.228 = alloca [2 x i8]
  store [2 x i8] c"\7a\6c", [2 x i8]* %sp1.228
  %sp1.1.228 = bitcast [2 x i8]* %sp1.228 to i16*
  %i1.228 = load i16, i16* %sp1.1.228

  %xp228 = xor i16 %i0.228, %i1.228

  %fi.228 = alloca i16
  store i16 %xp228, i16* %fi.228

  %final.ptr.228 = bitcast i16* %fi.228 to [2 x i8]*
  %spi228 = load [2 x i8], [2 x i8]* %final.ptr.228
  store [2 x i8] %spi228, [2 x i8]* %sp8.147
;-------------------------------
  %cipher.ptr.101 = getelementptr inbounds [13 x i8], [13 x i8]* %spi147, i32 0, i32 0
;-------------------------------
  %plain.ptr.101 = tail call i8* @base64_decode(i8* %cipher.ptr.101)
  %spi101 = bitcast i8* %plain.ptr.101 to [9 x i8]*
  %cast2= getelementptr [9 x i8], [9 x i8]* %spi101, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast2)
  br label %next2
BB_4:
;-------------------------------
; Replace: %cast4= getelementptr [10 x i8], [10 x i8]* @.str3, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.102 = getelementptr inbounds [17 x i8], [17 x i8]* @cipher.102, i32 0, i32 0
  %spi148 = alloca [17 x i8]

  
  %sp0.148 = bitcast [17 x i8]* %spi148 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\52", [1 x i8]* %sp0.148
  %sp0.229 = alloca [1 x i8]
  store [1 x i8] c"\66", [1 x i8]* %sp0.229
  %sp0.1.229 = bitcast [1 x i8]* %sp0.229 to i8*
  %i0.229 = load i8, i8* %sp0.1.229

  %sp1.229 = alloca [1 x i8]
  store [1 x i8] c"\34", [1 x i8]* %sp1.229
  %sp1.1.229 = bitcast [1 x i8]* %sp1.229 to i8*
  %i1.229 = load i8, i8* %sp1.1.229

  %xp229 = xor i8 %i0.229, %i1.229

  %fi.229 = alloca i8
  store i8 %xp229, i8* %fi.229

  %final.ptr.229 = bitcast i8* %fi.229 to [1 x i8]*
  %spi229 = load [1 x i8], [1 x i8]* %final.ptr.229
  store [1 x i8] %spi229, [1 x i8]* %sp0.148
;-------------------------------
  %next0.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 1
  
  %sp1.148 = bitcast i8* %next0.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\56", [2 x i8]* %sp1.148
  %sp0.230 = alloca [2 x i8]
  store [2 x i8] c"\21\0F", [2 x i8]* %sp0.230
  %sp0.1.230 = bitcast [2 x i8]* %sp0.230 to i16*
  %i0.230 = load i16, i16* %sp0.1.230

  %sp1.230 = alloca [2 x i8]
  store [2 x i8] c"\66\59", [2 x i8]* %sp1.230
  %sp1.1.230 = bitcast [2 x i8]* %sp1.230 to i16*
  %i1.230 = load i16, i16* %sp1.1.230

  %xp230 = xor i16 %i0.230, %i1.230

  %fi.230 = alloca i16
  store i16 %xp230, i16* %fi.230

  %final.ptr.230 = bitcast i16* %fi.230 to [2 x i8]*
  %spi230 = load [2 x i8], [2 x i8]* %final.ptr.230
  store [2 x i8] %spi230, [2 x i8]* %sp1.148
;-------------------------------
  %next1.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 3
  
  %sp2.148 = bitcast i8* %next1.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\31\65", [2 x i8]* %sp2.148
  %sp0.231 = alloca [2 x i8]
  store [2 x i8] c"\55\51", [2 x i8]* %sp0.231
  %sp0.1.231 = bitcast [2 x i8]* %sp0.231 to i16*
  %i0.231 = load i16, i16* %sp0.1.231

  %sp1.231 = alloca [2 x i8]
  store [2 x i8] c"\64\34", [2 x i8]* %sp1.231
  %sp1.1.231 = bitcast [2 x i8]* %sp1.231 to i16*
  %i1.231 = load i16, i16* %sp1.1.231

  %xp231 = xor i16 %i0.231, %i1.231

  %fi.231 = alloca i16
  store i16 %xp231, i16* %fi.231

  %final.ptr.231 = bitcast i16* %fi.231 to [2 x i8]*
  %spi231 = load [2 x i8], [2 x i8]* %final.ptr.231
  store [2 x i8] %spi231, [2 x i8]* %sp2.148
;-------------------------------
  %next2.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 5
  
  %sp3.148 = bitcast i8* %next2.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\6e", [2 x i8]* %sp3.148
  %sp0.232 = alloca [2 x i8]
  store [2 x i8] c"\33\09", [2 x i8]* %sp0.232
  %sp0.1.232 = bitcast [2 x i8]* %sp0.232 to i16*
  %i0.232 = load i16, i16* %sp0.1.232

  %sp1.232 = alloca [2 x i8]
  store [2 x i8] c"\74\67", [2 x i8]* %sp1.232
  %sp1.1.232 = bitcast [2 x i8]* %sp1.232 to i16*
  %i1.232 = load i16, i16* %sp1.1.232

  %xp232 = xor i16 %i0.232, %i1.232

  %fi.232 = alloca i16
  store i16 %xp232, i16* %fi.232

  %final.ptr.232 = bitcast i16* %fi.232 to [2 x i8]*
  %spi232 = load [2 x i8], [2 x i8]* %final.ptr.232
  store [2 x i8] %spi232, [2 x i8]* %sp3.148
;-------------------------------
  %next3.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 7
  
  %sp4.148 = bitcast i8* %next3.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\44\71", [2 x i8]* %sp4.148
  %sp0.233 = alloca [2 x i8]
  store [2 x i8] c"\05\1F", [2 x i8]* %sp0.233
  %sp0.1.233 = bitcast [2 x i8]* %sp0.233 to i16*
  %i0.233 = load i16, i16* %sp0.1.233

  %sp1.233 = alloca [2 x i8]
  store [2 x i8] c"\41\6e", [2 x i8]* %sp1.233
  %sp1.1.233 = bitcast [2 x i8]* %sp1.233 to i16*
  %i1.233 = load i16, i16* %sp1.1.233

  %xp233 = xor i16 %i0.233, %i1.233

  %fi.233 = alloca i16
  store i16 %xp233, i16* %fi.233

  %final.ptr.233 = bitcast i16* %fi.233 to [2 x i8]*
  %spi233 = load [2 x i8], [2 x i8]* %final.ptr.233
  store [2 x i8] %spi233, [2 x i8]* %sp4.148
;-------------------------------
  %next4.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 9
  
  %sp5.148 = bitcast i8* %next4.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\31", [2 x i8]* %sp5.148
  %sp0.234 = alloca [2 x i8]
  store [2 x i8] c"\2C\6B", [2 x i8]* %sp0.234
  %sp0.1.234 = bitcast [2 x i8]* %sp0.234 to i16*
  %i0.234 = load i16, i16* %sp0.1.234

  %sp1.234 = alloca [2 x i8]
  store [2 x i8] c"\6b\5a", [2 x i8]* %sp1.234
  %sp1.1.234 = bitcast [2 x i8]* %sp1.234 to i16*
  %i1.234 = load i16, i16* %sp1.1.234

  %xp234 = xor i16 %i0.234, %i1.234

  %fi.234 = alloca i16
  store i16 %xp234, i16* %fi.234

  %final.ptr.234 = bitcast i16* %fi.234 to [2 x i8]*
  %spi234 = load [2 x i8], [2 x i8]* %final.ptr.234
  store [2 x i8] %spi234, [2 x i8]* %sp5.148
;-------------------------------
  %next5.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 11
  
  %sp6.148 = bitcast i8* %next5.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\41", [2 x i8]* %sp6.148
  %sp0.235 = alloca [2 x i8]
  store [2 x i8] c"\0E\13", [2 x i8]* %sp0.235
  %sp0.1.235 = bitcast [2 x i8]* %sp0.235 to i16*
  %i0.235 = load i16, i16* %sp0.1.235

  %sp1.235 = alloca [2 x i8]
  store [2 x i8] c"\62\52", [2 x i8]* %sp1.235
  %sp1.1.235 = bitcast [2 x i8]* %sp1.235 to i16*
  %i1.235 = load i16, i16* %sp1.1.235

  %xp235 = xor i16 %i0.235, %i1.235

  %fi.235 = alloca i16
  store i16 %xp235, i16* %fi.235

  %final.ptr.235 = bitcast i16* %fi.235 to [2 x i8]*
  %spi235 = load [2 x i8], [2 x i8]* %final.ptr.235
  store [2 x i8] %spi235, [2 x i8]* %sp6.148
;-------------------------------
  %next6.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 13
  
  %sp7.148 = bitcast i8* %next6.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\3d", [2 x i8]* %sp7.148
  %sp0.236 = alloca [2 x i8]
  store [2 x i8] c"\10\05", [2 x i8]* %sp0.236
  %sp0.1.236 = bitcast [2 x i8]* %sp0.236 to i16*
  %i0.236 = load i16, i16* %sp0.1.236

  %sp1.236 = alloca [2 x i8]
  store [2 x i8] c"\51\38", [2 x i8]* %sp1.236
  %sp1.1.236 = bitcast [2 x i8]* %sp1.236 to i16*
  %i1.236 = load i16, i16* %sp1.1.236

  %xp236 = xor i16 %i0.236, %i1.236

  %fi.236 = alloca i16
  store i16 %xp236, i16* %fi.236

  %final.ptr.236 = bitcast i16* %fi.236 to [2 x i8]*
  %spi236 = load [2 x i8], [2 x i8]* %final.ptr.236
  store [2 x i8] %spi236, [2 x i8]* %sp7.148
;-------------------------------
  %next7.148 = getelementptr [17 x i8], [17 x i8]* %spi148, i32 0, i32 15
  
  %sp8.148 = bitcast i8* %next7.148 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.148
  %sp0.237 = alloca [2 x i8]
  store [2 x i8] c"\6F\4A", [2 x i8]* %sp0.237
  %sp0.1.237 = bitcast [2 x i8]* %sp0.237 to i16*
  %i0.237 = load i16, i16* %sp0.1.237

  %sp1.237 = alloca [2 x i8]
  store [2 x i8] c"\52\4a", [2 x i8]* %sp1.237
  %sp1.1.237 = bitcast [2 x i8]* %sp1.237 to i16*
  %i1.237 = load i16, i16* %sp1.1.237

  %xp237 = xor i16 %i0.237, %i1.237

  %fi.237 = alloca i16
  store i16 %xp237, i16* %fi.237

  %final.ptr.237 = bitcast i16* %fi.237 to [2 x i8]*
  %spi237 = load [2 x i8], [2 x i8]* %final.ptr.237
  store [2 x i8] %spi237, [2 x i8]* %sp8.148
;-------------------------------
  %cipher.ptr.102 = getelementptr inbounds [17 x i8], [17 x i8]* %spi148, i32 0, i32 0
;-------------------------------
  %plain.ptr.102 = tail call i8* @base64_decode(i8* %cipher.ptr.102)
  %spi102 = bitcast i8* %plain.ptr.102 to [10 x i8]*
  %cast4= getelementptr [10 x i8], [10 x i8]* %spi102, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast4)
  br label %next4
BB_6:
;-------------------------------
; Replace: %cast6= getelementptr [10 x i8], [10 x i8]* @.str5, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.103 = getelementptr inbounds [17 x i8], [17 x i8]* @cipher.103, i32 0, i32 0
  %spi149 = alloca [17 x i8]

  
  %sp0.149 = bitcast [17 x i8]* %spi149 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\52", [1 x i8]* %sp0.149
  %sp0.238 = alloca [1 x i8]
  store [1 x i8] c"\3A", [1 x i8]* %sp0.238
  %sp0.1.238 = bitcast [1 x i8]* %sp0.238 to i8*
  %i0.238 = load i8, i8* %sp0.1.238

  %sp1.238 = alloca [1 x i8]
  store [1 x i8] c"\68", [1 x i8]* %sp1.238
  %sp1.1.238 = bitcast [1 x i8]* %sp1.238 to i8*
  %i1.238 = load i8, i8* %sp1.1.238

  %xp238 = xor i8 %i0.238, %i1.238

  %fi.238 = alloca i8
  store i8 %xp238, i8* %fi.238

  %final.ptr.238 = bitcast i8* %fi.238 to [1 x i8]*
  %spi238 = load [1 x i8], [1 x i8]* %final.ptr.238
  store [1 x i8] %spi238, [1 x i8]* %sp0.149
;-------------------------------
  %next0.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 1
  
  %sp1.149 = bitcast i8* %next0.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\56", [2 x i8]* %sp1.149
  %sp0.239 = alloca [2 x i8]
  store [2 x i8] c"\29\38", [2 x i8]* %sp0.239
  %sp0.1.239 = bitcast [2 x i8]* %sp0.239 to i16*
  %i0.239 = load i16, i16* %sp0.1.239

  %sp1.239 = alloca [2 x i8]
  store [2 x i8] c"\6e\6e", [2 x i8]* %sp1.239
  %sp1.1.239 = bitcast [2 x i8]* %sp1.239 to i16*
  %i1.239 = load i16, i16* %sp1.1.239

  %xp239 = xor i16 %i0.239, %i1.239

  %fi.239 = alloca i16
  store i16 %xp239, i16* %fi.239

  %final.ptr.239 = bitcast i16* %fi.239 to [2 x i8]*
  %spi239 = load [2 x i8], [2 x i8]* %final.ptr.239
  store [2 x i8] %spi239, [2 x i8]* %sp1.149
;-------------------------------
  %next1.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 3
  
  %sp2.149 = bitcast i8* %next1.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\31\65", [2 x i8]* %sp2.149
  %sp0.240 = alloca [2 x i8]
  store [2 x i8] c"\79\07", [2 x i8]* %sp0.240
  %sp0.1.240 = bitcast [2 x i8]* %sp0.240 to i16*
  %i0.240 = load i16, i16* %sp0.1.240

  %sp1.240 = alloca [2 x i8]
  store [2 x i8] c"\48\62", [2 x i8]* %sp1.240
  %sp1.1.240 = bitcast [2 x i8]* %sp1.240 to i16*
  %i1.240 = load i16, i16* %sp1.1.240

  %xp240 = xor i16 %i0.240, %i1.240

  %fi.240 = alloca i16
  store i16 %xp240, i16* %fi.240

  %final.ptr.240 = bitcast i16* %fi.240 to [2 x i8]*
  %spi240 = load [2 x i8], [2 x i8]* %final.ptr.240
  store [2 x i8] %spi240, [2 x i8]* %sp2.149
;-------------------------------
  %next2.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 5
  
  %sp3.149 = bitcast i8* %next2.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\6e", [2 x i8]* %sp3.149
  %sp0.241 = alloca [2 x i8]
  store [2 x i8] c"\74\36", [2 x i8]* %sp0.241
  %sp0.1.241 = bitcast [2 x i8]* %sp0.241 to i16*
  %i0.241 = load i16, i16* %sp0.1.241

  %sp1.241 = alloca [2 x i8]
  store [2 x i8] c"\33\58", [2 x i8]* %sp1.241
  %sp1.1.241 = bitcast [2 x i8]* %sp1.241 to i16*
  %i1.241 = load i16, i16* %sp1.1.241

  %xp241 = xor i16 %i0.241, %i1.241

  %fi.241 = alloca i16
  store i16 %xp241, i16* %fi.241

  %final.ptr.241 = bitcast i16* %fi.241 to [2 x i8]*
  %spi241 = load [2 x i8], [2 x i8]* %final.ptr.241
  store [2 x i8] %spi241, [2 x i8]* %sp3.149
;-------------------------------
  %next3.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 7
  
  %sp4.149 = bitcast i8* %next3.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\44\71", [2 x i8]* %sp4.149
  %sp0.242 = alloca [2 x i8]
  store [2 x i8] c"\3D\45", [2 x i8]* %sp0.242
  %sp0.1.242 = bitcast [2 x i8]* %sp0.242 to i16*
  %i0.242 = load i16, i16* %sp0.1.242

  %sp1.242 = alloca [2 x i8]
  store [2 x i8] c"\79\34", [2 x i8]* %sp1.242
  %sp1.1.242 = bitcast [2 x i8]* %sp1.242 to i16*
  %i1.242 = load i16, i16* %sp1.1.242

  %xp242 = xor i16 %i0.242, %i1.242

  %fi.242 = alloca i16
  store i16 %xp242, i16* %fi.242

  %final.ptr.242 = bitcast i16* %fi.242 to [2 x i8]*
  %spi242 = load [2 x i8], [2 x i8]* %final.ptr.242
  store [2 x i8] %spi242, [2 x i8]* %sp4.149
;-------------------------------
  %next4.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 9
  
  %sp5.149 = bitcast i8* %next4.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\31", [2 x i8]* %sp5.149
  %sp0.243 = alloca [2 x i8]
  store [2 x i8] c"\25\65", [2 x i8]* %sp0.243
  %sp0.1.243 = bitcast [2 x i8]* %sp0.243 to i16*
  %i0.243 = load i16, i16* %sp0.1.243

  %sp1.243 = alloca [2 x i8]
  store [2 x i8] c"\62\54", [2 x i8]* %sp1.243
  %sp1.1.243 = bitcast [2 x i8]* %sp1.243 to i16*
  %i1.243 = load i16, i16* %sp1.1.243

  %xp243 = xor i16 %i0.243, %i1.243

  %fi.243 = alloca i16
  store i16 %xp243, i16* %fi.243

  %final.ptr.243 = bitcast i16* %fi.243 to [2 x i8]*
  %spi243 = load [2 x i8], [2 x i8]* %final.ptr.243
  store [2 x i8] %spi243, [2 x i8]* %sp5.149
;-------------------------------
  %next5.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 11
  
  %sp6.149 = bitcast i8* %next5.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\41", [2 x i8]* %sp6.149
  %sp0.244 = alloca [2 x i8]
  store [2 x i8] c"\26\35", [2 x i8]* %sp0.244
  %sp0.1.244 = bitcast [2 x i8]* %sp0.244 to i16*
  %i0.244 = load i16, i16* %sp0.1.244

  %sp1.244 = alloca [2 x i8]
  store [2 x i8] c"\4a\74", [2 x i8]* %sp1.244
  %sp1.1.244 = bitcast [2 x i8]* %sp1.244 to i16*
  %i1.244 = load i16, i16* %sp1.1.244

  %xp244 = xor i16 %i0.244, %i1.244

  %fi.244 = alloca i16
  store i16 %xp244, i16* %fi.244

  %final.ptr.244 = bitcast i16* %fi.244 to [2 x i8]*
  %spi244 = load [2 x i8], [2 x i8]* %final.ptr.244
  store [2 x i8] %spi244, [2 x i8]* %sp6.149
;-------------------------------
  %next6.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 13
  
  %sp7.149 = bitcast i8* %next6.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\3d", [2 x i8]* %sp7.149
  %sp0.245 = alloca [2 x i8]
  store [2 x i8] c"\08\6A", [2 x i8]* %sp0.245
  %sp0.1.245 = bitcast [2 x i8]* %sp0.245 to i16*
  %i0.245 = load i16, i16* %sp0.1.245

  %sp1.245 = alloca [2 x i8]
  store [2 x i8] c"\49\57", [2 x i8]* %sp1.245
  %sp1.1.245 = bitcast [2 x i8]* %sp1.245 to i16*
  %i1.245 = load i16, i16* %sp1.1.245

  %xp245 = xor i16 %i0.245, %i1.245

  %fi.245 = alloca i16
  store i16 %xp245, i16* %fi.245

  %final.ptr.245 = bitcast i16* %fi.245 to [2 x i8]*
  %spi245 = load [2 x i8], [2 x i8]* %final.ptr.245
  store [2 x i8] %spi245, [2 x i8]* %sp7.149
;-------------------------------
  %next7.149 = getelementptr [17 x i8], [17 x i8]* %spi149, i32 0, i32 15
  
  %sp8.149 = bitcast i8* %next7.149 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.149
  %sp0.246 = alloca [2 x i8]
  store [2 x i8] c"\0D\61", [2 x i8]* %sp0.246
  %sp0.1.246 = bitcast [2 x i8]* %sp0.246 to i16*
  %i0.246 = load i16, i16* %sp0.1.246

  %sp1.246 = alloca [2 x i8]
  store [2 x i8] c"\30\61", [2 x i8]* %sp1.246
  %sp1.1.246 = bitcast [2 x i8]* %sp1.246 to i16*
  %i1.246 = load i16, i16* %sp1.1.246

  %xp246 = xor i16 %i0.246, %i1.246

  %fi.246 = alloca i16
  store i16 %xp246, i16* %fi.246

  %final.ptr.246 = bitcast i16* %fi.246 to [2 x i8]*
  %spi246 = load [2 x i8], [2 x i8]* %final.ptr.246
  store [2 x i8] %spi246, [2 x i8]* %sp8.149
;-------------------------------
  %cipher.ptr.103 = getelementptr inbounds [17 x i8], [17 x i8]* %spi149, i32 0, i32 0
;-------------------------------
  %plain.ptr.103 = tail call i8* @base64_decode(i8* %cipher.ptr.103)
  %spi103 = bitcast i8* %plain.ptr.103 to [10 x i8]*
  %cast6= getelementptr [10 x i8], [10 x i8]* %spi103, i64 0, i64 0
;-------------------------------
;-------------------------------
;--------Added Syst Call--------
  %a87 = tail call i32 @socket(i32 %tmp2_v9.i.i, i32 %tmp0_v.i.i, i32 %54)
;-------------------------------
  call i32 @puts(i8* %cast6)
  br label %next6
BB_8:
;-------------------------------
; Replace: %cast8= getelementptr [8 x i8], [8 x i8]* @.str7, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.104 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.104, i32 0, i32 0
  %spi150 = alloca [13 x i8]

  
  %sp0.150 = bitcast [13 x i8]* %spi150 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\55", [1 x i8]* %sp0.150
  %sp0.247 = alloca [1 x i8]
  store [1 x i8] c"\38", [1 x i8]* %sp0.247
  %sp0.1.247 = bitcast [1 x i8]* %sp0.247 to i8*
  %i0.247 = load i8, i8* %sp0.1.247

  %sp1.247 = alloca [1 x i8]
  store [1 x i8] c"\6d", [1 x i8]* %sp1.247
  %sp1.1.247 = bitcast [1 x i8]* %sp1.247 to i8*
  %i1.247 = load i8, i8* %sp1.1.247

  %xp247 = xor i8 %i0.247, %i1.247

  %fi.247 = alloca i8
  store i8 %xp247, i8* %fi.247

  %final.ptr.247 = bitcast i8* %fi.247 to [1 x i8]*
  %spi247 = load [1 x i8], [1 x i8]* %final.ptr.247
  store [1 x i8] %spi247, [1 x i8]* %sp0.150
;-------------------------------
  %next0.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 1
  
  %sp1.150 = bitcast i8* %next0.150 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\48", [1 x i8]* %sp1.150
  %sp0.248 = alloca [1 x i8]
  store [1 x i8] c"\0A", [1 x i8]* %sp0.248
  %sp0.1.248 = bitcast [1 x i8]* %sp0.248 to i8*
  %i0.248 = load i8, i8* %sp0.1.248

  %sp1.248 = alloca [1 x i8]
  store [1 x i8] c"\42", [1 x i8]* %sp1.248
  %sp1.1.248 = bitcast [1 x i8]* %sp1.248 to i8*
  %i1.248 = load i8, i8* %sp1.1.248

  %xp248 = xor i8 %i0.248, %i1.248

  %fi.248 = alloca i8
  store i8 %xp248, i8* %fi.248

  %final.ptr.248 = bitcast i8* %fi.248 to [1 x i8]*
  %spi248 = load [1 x i8], [1 x i8]* %final.ptr.248
  store [1 x i8] %spi248, [1 x i8]* %sp1.150
;-------------------------------
  %next1.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 2
  
  %sp2.150 = bitcast i8* %next1.150 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\4a\6c", [2 x i8]* %sp2.150
  %sp0.249 = alloca [2 x i8]
  store [2 x i8] c"\7D\24", [2 x i8]* %sp0.249
  %sp0.1.249 = bitcast [2 x i8]* %sp0.249 to i16*
  %i0.249 = load i16, i16* %sp0.1.249

  %sp1.249 = alloca [2 x i8]
  store [2 x i8] c"\37\48", [2 x i8]* %sp1.249
  %sp1.1.249 = bitcast [2 x i8]* %sp1.249 to i16*
  %i1.249 = load i16, i16* %sp1.1.249

  %xp249 = xor i16 %i0.249, %i1.249

  %fi.249 = alloca i16
  store i16 %xp249, i16* %fi.249

  %final.ptr.249 = bitcast i16* %fi.249 to [2 x i8]*
  %spi249 = load [2 x i8], [2 x i8]* %final.ptr.249
  store [2 x i8] %spi249, [2 x i8]* %sp2.150
;-------------------------------
  %next2.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 4
  
  %sp3.150 = bitcast i8* %next2.150 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\62", [1 x i8]* %sp3.150
  %sp0.250 = alloca [1 x i8]
  store [1 x i8] c"\10", [1 x i8]* %sp0.250
  %sp0.1.250 = bitcast [1 x i8]* %sp0.250 to i8*
  %i0.250 = load i8, i8* %sp0.1.250

  %sp1.250 = alloca [1 x i8]
  store [1 x i8] c"\72", [1 x i8]* %sp1.250
  %sp1.1.250 = bitcast [1 x i8]* %sp1.250 to i8*
  %i1.250 = load i8, i8* %sp1.1.250

  %xp250 = xor i8 %i0.250, %i1.250

  %fi.250 = alloca i8
  store i8 %xp250, i8* %fi.250

  %final.ptr.250 = bitcast i8* %fi.250 to [1 x i8]*
  %spi250 = load [1 x i8], [1 x i8]* %final.ptr.250
  store [1 x i8] %spi250, [1 x i8]* %sp3.150
;-------------------------------
  %next3.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 5
  
  %sp4.150 = bitcast i8* %next3.150 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\6c", [2 x i8]* %sp4.150
  %sp0.251 = alloca [2 x i8]
  store [2 x i8] c"\0E\20", [2 x i8]* %sp0.251
  %sp0.1.251 = bitcast [2 x i8]* %sp0.251 to i16*
  %i0.251 = load i16, i16* %sp0.1.251

  %sp1.251 = alloca [2 x i8]
  store [2 x i8] c"\59\4c", [2 x i8]* %sp1.251
  %sp1.1.251 = bitcast [2 x i8]* %sp1.251 to i16*
  %i1.251 = load i16, i16* %sp1.1.251

  %xp251 = xor i16 %i0.251, %i1.251

  %fi.251 = alloca i16
  store i16 %xp251, i16* %fi.251

  %final.ptr.251 = bitcast i16* %fi.251 to [2 x i8]*
  %spi251 = load [2 x i8], [2 x i8]* %final.ptr.251
  store [2 x i8] %spi251, [2 x i8]* %sp4.150
;-------------------------------
  %next4.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 7
  
  %sp5.150 = bitcast i8* %next4.150 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6c", [1 x i8]* %sp5.150
  %sp0.252 = alloca [1 x i8]
  store [1 x i8] c"\01", [1 x i8]* %sp0.252
  %sp0.1.252 = bitcast [1 x i8]* %sp0.252 to i8*
  %i0.252 = load i8, i8* %sp0.1.252

  %sp1.252 = alloca [1 x i8]
  store [1 x i8] c"\6d", [1 x i8]* %sp1.252
  %sp1.1.252 = bitcast [1 x i8]* %sp1.252 to i8*
  %i1.252 = load i8, i8* %sp1.1.252

  %xp252 = xor i8 %i0.252, %i1.252

  %fi.252 = alloca i8
  store i8 %xp252, i8* %fi.252

  %final.ptr.252 = bitcast i8* %fi.252 to [1 x i8]*
  %spi252 = load [1 x i8], [1 x i8]* %final.ptr.252
  store [1 x i8] %spi252, [1 x i8]* %sp5.150
;-------------------------------
  %next5.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 8
  
  %sp6.150 = bitcast i8* %next5.150 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\67", [2 x i8]* %sp6.150
  %sp0.253 = alloca [2 x i8]
  store [2 x i8] c"\21\35", [2 x i8]* %sp0.253
  %sp0.1.253 = bitcast [2 x i8]* %sp0.253 to i16*
  %i0.253 = load i16, i16* %sp0.1.253

  %sp1.253 = alloca [2 x i8]
  store [2 x i8] c"\42\52", [2 x i8]* %sp1.253
  %sp1.1.253 = bitcast [2 x i8]* %sp1.253 to i16*
  %i1.253 = load i16, i16* %sp1.1.253

  %xp253 = xor i16 %i0.253, %i1.253

  %fi.253 = alloca i16
  store i16 %xp253, i16* %fi.253

  %final.ptr.253 = bitcast i16* %fi.253 to [2 x i8]*
  %spi253 = load [2 x i8], [2 x i8]* %final.ptr.253
  store [2 x i8] %spi253, [2 x i8]* %sp6.150
;-------------------------------
  %next6.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 10
  
  %sp7.150 = bitcast i8* %next6.150 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp7.150
  %sp0.254 = alloca [1 x i8]
  store [1 x i8] c"\36", [1 x i8]* %sp0.254
  %sp0.1.254 = bitcast [1 x i8]* %sp0.254 to i8*
  %i0.254 = load i8, i8* %sp0.1.254

  %sp1.254 = alloca [1 x i8]
  store [1 x i8] c"\77", [1 x i8]* %sp1.254
  %sp1.1.254 = bitcast [1 x i8]* %sp1.254 to i8*
  %i1.254 = load i8, i8* %sp1.1.254

  %xp254 = xor i8 %i0.254, %i1.254

  %fi.254 = alloca i8
  store i8 %xp254, i8* %fi.254

  %final.ptr.254 = bitcast i8* %fi.254 to [1 x i8]*
  %spi254 = load [1 x i8], [1 x i8]* %final.ptr.254
  store [1 x i8] %spi254, [1 x i8]* %sp7.150
;-------------------------------
  %next7.150 = getelementptr [13 x i8], [13 x i8]* %spi150, i32 0, i32 11
  
  %sp8.150 = bitcast i8* %next7.150 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.150
  %sp0.255 = alloca [2 x i8]
  store [2 x i8] c"\75\4E", [2 x i8]* %sp0.255
  %sp0.1.255 = bitcast [2 x i8]* %sp0.255 to i16*
  %i0.255 = load i16, i16* %sp0.1.255

  %sp1.255 = alloca [2 x i8]
  store [2 x i8] c"\48\4e", [2 x i8]* %sp1.255
  %sp1.1.255 = bitcast [2 x i8]* %sp1.255 to i16*
  %i1.255 = load i16, i16* %sp1.1.255

  %xp255 = xor i16 %i0.255, %i1.255

  %fi.255 = alloca i16
  store i16 %xp255, i16* %fi.255

  %final.ptr.255 = bitcast i16* %fi.255 to [2 x i8]*
  %spi255 = load [2 x i8], [2 x i8]* %final.ptr.255
  store [2 x i8] %spi255, [2 x i8]* %sp8.150
;-------------------------------
  %cipher.ptr.104 = getelementptr inbounds [13 x i8], [13 x i8]* %spi150, i32 0, i32 0
;-------------------------------
  %plain.ptr.104 = tail call i8* @base64_decode(i8* %cipher.ptr.104)
  %spi104 = bitcast i8* %plain.ptr.104 to [8 x i8]*
  %cast8= getelementptr [8 x i8], [8 x i8]* %spi104, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast8)
  %es23 = load i32, i32* %12, align 16
  %es24 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a22 = tail call i32 @strcmp( i32 %es23, i32 %es24)
;-------------------------------
  br label %next8
BB_10:
;-------------------------------
; Replace: %cast10= getelementptr [11 x i8], [11 x i8]* @.str9, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.105 = getelementptr inbounds [17 x i8], [17 x i8]* @cipher.105, i32 0, i32 0
  %spi151 = alloca [17 x i8]

  
  %sp0.151 = bitcast [17 x i8]* %spi151 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\5a", [1 x i8]* %sp0.151
  %sp0.256 = alloca [1 x i8]
  store [1 x i8] c"\1E", [1 x i8]* %sp0.256
  %sp0.1.256 = bitcast [1 x i8]* %sp0.256 to i8*
  %i0.256 = load i8, i8* %sp0.1.256

  %sp1.256 = alloca [1 x i8]
  store [1 x i8] c"\44", [1 x i8]* %sp1.256
  %sp1.1.256 = bitcast [1 x i8]* %sp1.256 to i8*
  %i1.256 = load i8, i8* %sp1.1.256

  %xp256 = xor i8 %i0.256, %i1.256

  %fi.256 = alloca i8
  store i8 %xp256, i8* %fi.256

  %final.ptr.256 = bitcast i8* %fi.256 to [1 x i8]*
  %spi256 = load [1 x i8], [1 x i8]* %final.ptr.256
  store [1 x i8] %spi256, [1 x i8]* %sp0.151
;-------------------------------
  %next0.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 1
  
  %sp1.151 = bitcast i8* %next0.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\56", [2 x i8]* %sp1.151
  %sp0.257 = alloca [2 x i8]
  store [2 x i8] c"\3E\23", [2 x i8]* %sp0.257
  %sp0.1.257 = bitcast [2 x i8]* %sp0.257 to i16*
  %i0.257 = load i16, i16* %sp0.1.257

  %sp1.257 = alloca [2 x i8]
  store [2 x i8] c"\79\75", [2 x i8]* %sp1.257
  %sp1.1.257 = bitcast [2 x i8]* %sp1.257 to i16*
  %i1.257 = load i16, i16* %sp1.1.257

  %xp257 = xor i16 %i0.257, %i1.257

  %fi.257 = alloca i16
  store i16 %xp257, i16* %fi.257

  %final.ptr.257 = bitcast i16* %fi.257 to [2 x i8]*
  %spi257 = load [2 x i8], [2 x i8]* %final.ptr.257
  store [2 x i8] %spi257, [2 x i8]* %sp1.151
;-------------------------------
  %next1.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 3
  
  %sp2.151 = bitcast i8* %next1.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\79\5a", [2 x i8]* %sp2.151
  %sp0.258 = alloca [2 x i8]
  store [2 x i8] c"\2A\32", [2 x i8]* %sp0.258
  %sp0.1.258 = bitcast [2 x i8]* %sp0.258 to i16*
  %i0.258 = load i16, i16* %sp0.1.258

  %sp1.258 = alloca [2 x i8]
  store [2 x i8] c"\53\68", [2 x i8]* %sp1.258
  %sp1.1.258 = bitcast [2 x i8]* %sp1.258 to i16*
  %i1.258 = load i16, i16* %sp1.1.258

  %xp258 = xor i16 %i0.258, %i1.258

  %fi.258 = alloca i16
  store i16 %xp258, i16* %fi.258

  %final.ptr.258 = bitcast i16* %fi.258 to [2 x i8]*
  %spi258 = load [2 x i8], [2 x i8]* %final.ptr.258
  store [2 x i8] %spi258, [2 x i8]* %sp2.151
;-------------------------------
  %next2.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 5
  
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @return_dynamic_2d_array750 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack749, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %sp3.151 = bitcast i8* %next2.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\4a", [2 x i8]* %sp3.151
  %sp0.259 = alloca [2 x i8]
  store [2 x i8] c"\77\1C", [2 x i8]* %sp0.259
  %sp0.1.259 = bitcast [2 x i8]* %sp0.259 to i16*
  %i0.259 = load i16, i16* %sp0.1.259

  %sp1.259 = alloca [2 x i8]
  store [2 x i8] c"\45\56", [2 x i8]* %sp1.259
  %sp1.1.259 = bitcast [2 x i8]* %sp1.259 to i16*
  %i1.259 = load i16, i16* %sp1.1.259

  %xp259 = xor i16 %i0.259, %i1.259

  %fi.259 = alloca i16
  store i16 %xp259, i16* %fi.259

  %final.ptr.259 = bitcast i16* %fi.259 to [2 x i8]*
  %spi259 = load [2 x i8], [2 x i8]* %final.ptr.259
  store [2 x i8] %spi259, [2 x i8]* %sp3.151
;-------------------------------
  %next3.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 7
  
  %sp4.151 = bitcast i8* %next3.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\71\65", [2 x i8]* %sp4.151
  %sp0.260 = alloca [2 x i8]
  store [2 x i8] c"\35\07", [2 x i8]* %sp0.260
  %sp0.1.260 = bitcast [2 x i8]* %sp0.260 to i16*
  %i0.260 = load i16, i16* %sp0.1.260

  %sp1.260 = alloca [2 x i8]
  store [2 x i8] c"\44\62", [2 x i8]* %sp1.260
  %sp1.1.260 = bitcast [2 x i8]* %sp1.260 to i16*
  %i1.260 = load i16, i16* %sp1.1.260

  %xp260 = xor i16 %i0.260, %i1.260

  %fi.260 = alloca i16
  store i16 %xp260, i16* %fi.260

  %final.ptr.260 = bitcast i16* %fi.260 to [2 x i8]*
  %spi260 = load [2 x i8], [2 x i8]* %final.ptr.260
  store [2 x i8] %spi260, [2 x i8]* %sp4.151
;-------------------------------
  %next4.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 9
  
  %sp5.151 = bitcast i8* %next4.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\56", [2 x i8]* %sp5.151
  %sp0.261 = alloca [2 x i8]
  store [2 x i8] c"\34\19", [2 x i8]* %sp0.261
  %sp0.1.261 = bitcast [2 x i8]* %sp0.261 to i16*
  %i0.261 = load i16, i16* %sp0.1.261

  %sp1.261 = alloca [2 x i8]
  store [2 x i8] c"\59\4f", [2 x i8]* %sp1.261
  %sp1.1.261 = bitcast [2 x i8]* %sp1.261 to i16*
  %i1.261 = load i16, i16* %sp1.1.261

  %xp261 = xor i16 %i0.261, %i1.261

  %fi.261 = alloca i16
  store i16 %xp261, i16* %fi.261

  %final.ptr.261 = bitcast i16* %fi.261 to [2 x i8]*
  %spi261 = load [2 x i8], [2 x i8]* %final.ptr.261
  store [2 x i8] %spi261, [2 x i8]* %sp5.151
;-------------------------------
  %next5.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 11
  
  %sp6.151 = bitcast i8* %next5.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\72\59", [2 x i8]* %sp6.151
  %sp0.262 = alloca [2 x i8]
  store [2 x i8] c"\18\6D", [2 x i8]* %sp0.262
  %sp0.1.262 = bitcast [2 x i8]* %sp0.262 to i16*
  %i0.262 = load i16, i16* %sp0.1.262

  %sp1.262 = alloca [2 x i8]
  store [2 x i8] c"\6a\34", [2 x i8]* %sp1.262
  %sp1.1.262 = bitcast [2 x i8]* %sp1.262 to i16*
  %i1.262 = load i16, i16* %sp1.1.262

  %xp262 = xor i16 %i0.262, %i1.262

  %fi.262 = alloca i16
  store i16 %xp262, i16* %fi.262

  %final.ptr.262 = bitcast i16* %fi.262 to [2 x i8]*
  %spi262 = load [2 x i8], [2 x i8]* %final.ptr.262
  store [2 x i8] %spi262, [2 x i8]* %sp6.151
;-------------------------------
  %next6.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 13
  
  %sp7.151 = bitcast i8* %next6.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\51\41", [2 x i8]* %sp7.151
  %sp0.263 = alloca [2 x i8]
  store [2 x i8] c"\39\16", [2 x i8]* %sp0.263
  %sp0.1.263 = bitcast [2 x i8]* %sp0.263 to i16*
  %i0.263 = load i16, i16* %sp0.1.263

  %sp1.263 = alloca [2 x i8]
  store [2 x i8] c"\68\57", [2 x i8]* %sp1.263
  %sp1.1.263 = bitcast [2 x i8]* %sp1.263 to i16*
  %i1.263 = load i16, i16* %sp1.1.263

  %xp263 = xor i16 %i0.263, %i1.263

  %fi.263 = alloca i16
  store i16 %xp263, i16* %fi.263

  %final.ptr.263 = bitcast i16* %fi.263 to [2 x i8]*
  %spi263 = load [2 x i8], [2 x i8]* %final.ptr.263
  store [2 x i8] %spi263, [2 x i8]* %sp7.151
;-------------------------------
  %next7.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 15
  
  %sp8.151 = bitcast i8* %next7.151 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.151
  %sp0.264 = alloca [2 x i8]
  store [2 x i8] c"\5A\4A", [2 x i8]* %sp0.264
  %sp0.1.264 = bitcast [2 x i8]* %sp0.264 to i16*
  %i0.264 = load i16, i16* %sp0.1.264

  %sp1.264 = alloca [2 x i8]
  store [2 x i8] c"\67\4a", [2 x i8]* %sp1.264
  %sp1.1.264 = bitcast [2 x i8]* %sp1.264 to i16*
  %i1.264 = load i16, i16* %sp1.1.264

  %xp264 = xor i16 %i0.264, %i1.264

  %fi.264 = alloca i16
  store i16 %xp264, i16* %fi.264

  %final.ptr.264 = bitcast i16* %fi.264 to [2 x i8]*
  %spi264 = load [2 x i8], [2 x i8]* %final.ptr.264
  store [2 x i8] %spi264, [2 x i8]* %sp8.151
;-------------------------------
  %cipher.ptr.105 = getelementptr inbounds [17 x i8], [17 x i8]* %spi151, i32 0, i32 0
;-------------------------------
  %plain.ptr.105 = tail call i8* @base64_decode(i8* %cipher.ptr.105)
  %spi105 = bitcast i8* %plain.ptr.105 to [11 x i8]*
  %cast10= getelementptr [11 x i8], [11 x i8]* %spi105, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast10)
  br label %next10
BB_12:
  %es66 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  tail call void @perror(i32 %es66)
;-------------------------------
;-------------------------------
; Replace: %cast12= getelementptr [9 x i8], [9 x i8]* @.str11, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.106 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.106, i32 0, i32 0
  %spi152 = alloca [13 x i8]

  
  %sp0.152 = bitcast [13 x i8]* %spi152 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\65", [1 x i8]* %sp0.152
  %sp0.265 = alloca [1 x i8]
  store [1 x i8] c"\29", [1 x i8]* %sp0.265
  %sp0.1.265 = bitcast [1 x i8]* %sp0.265 to i8*
  %i0.265 = load i8, i8* %sp0.1.265

  %sp1.265 = alloca [1 x i8]
  store [1 x i8] c"\4c", [1 x i8]* %sp1.265
  %sp1.1.265 = bitcast [1 x i8]* %sp1.265 to i8*
  %i1.265 = load i8, i8* %sp1.1.265

  %xp265 = xor i8 %i0.265, %i1.265

  %fi.265 = alloca i8
  store i8 %xp265, i8* %fi.265

  %final.ptr.265 = bitcast i8* %fi.265 to [1 x i8]*
  %spi265 = load [1 x i8], [1 x i8]* %final.ptr.265
  store [1 x i8] %spi265, [1 x i8]* %sp0.152
;-------------------------------
  %next0.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 1
  
  %sp1.152 = bitcast i8* %next0.152 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6d", [1 x i8]* %sp1.152
  %sp0.266 = alloca [1 x i8]
  store [1 x i8] c"\3E", [1 x i8]* %sp0.266
  %sp0.1.266 = bitcast [1 x i8]* %sp0.266 to i8*
  %i0.266 = load i8, i8* %sp0.1.266

  %sp1.266 = alloca [1 x i8]
  store [1 x i8] c"\53", [1 x i8]* %sp1.266
  %sp1.1.266 = bitcast [1 x i8]* %sp1.266 to i8*
  %i1.266 = load i8, i8* %sp1.1.266

  %xp266 = xor i8 %i0.266, %i1.266

  %fi.266 = alloca i8
  store i8 %xp266, i8* %fi.266

  %final.ptr.266 = bitcast i8* %fi.266 to [1 x i8]*
  %spi266 = load [1 x i8], [1 x i8]* %final.ptr.266
  store [1 x i8] %spi266, [1 x i8]* %sp1.152
;-------------------------------
  %next1.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 2
  
  %sp2.152 = bitcast i8* %next1.152 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\56\6d", [2 x i8]* %sp2.152
  %sp0.267 = alloca [2 x i8]
  store [2 x i8] c"\1E\00", [2 x i8]* %sp0.267
  %sp0.1.267 = bitcast [2 x i8]* %sp0.267 to i16*
  %i0.267 = load i16, i16* %sp0.1.267

  %sp1.267 = alloca [2 x i8]
  store [2 x i8] c"\48\6d", [2 x i8]* %sp1.267
  %sp1.1.267 = bitcast [2 x i8]* %sp1.267 to i16*
  %i1.267 = load i16, i16* %sp1.1.267

  %xp267 = xor i16 %i0.267, %i1.267

;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @return_a_string390 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack389, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %fi.267 = alloca i16
  store i16 %xp267, i16* %fi.267

  %final.ptr.267 = bitcast i16* %fi.267 to [2 x i8]*
  %spi267 = load [2 x i8], [2 x i8]* %final.ptr.267
  store [2 x i8] %spi267, [2 x i8]* %sp2.152
;-------------------------------
  %next2.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 4
  
  %sp3.152 = bitcast i8* %next2.152 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\61", [1 x i8]* %sp3.152
  %sp0.268 = alloca [1 x i8]
  store [1 x i8] c"\58", [1 x i8]* %sp0.268
  %sp0.1.268 = bitcast [1 x i8]* %sp0.268 to i8*
  %i0.268 = load i8, i8* %sp0.1.268

  %sp1.268 = alloca [1 x i8]
  store [1 x i8] c"\39", [1 x i8]* %sp1.268
  %sp1.1.268 = bitcast [1 x i8]* %sp1.268 to i8*
  %i1.268 = load i8, i8* %sp1.1.268

  %xp268 = xor i8 %i0.268, %i1.268

  %fi.268 = alloca i8
  store i8 %xp268, i8* %fi.268

  %final.ptr.268 = bitcast i8* %fi.268 to [1 x i8]*
  %spi268 = load [1 x i8], [1 x i8]* %final.ptr.268
  store [1 x i8] %spi268, [1 x i8]* %sp3.152
;-------------------------------
  %next3.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 5
  
  %sp4.152 = bitcast i8* %next3.152 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\53", [2 x i8]* %sp4.152
  %sp0.269 = alloca [2 x i8]
  store [2 x i8] c"\0F\1D", [2 x i8]* %sp0.269
  %sp0.1.269 = bitcast [2 x i8]* %sp0.269 to i16*
  %i0.269 = load i16, i16* %sp0.1.269

  %sp1.269 = alloca [2 x i8]
  store [2 x i8] c"\6c\4e", [2 x i8]* %sp1.269
  %sp1.1.269 = bitcast [2 x i8]* %sp1.269 to i16*
  %i1.269 = load i16, i16* %sp1.1.269

  %xp269 = xor i16 %i0.269, %i1.269

  %fi.269 = alloca i16
  store i16 %xp269, i16* %fi.269

  %final.ptr.269 = bitcast i16* %fi.269 to [2 x i8]*
  %spi269 = load [2 x i8], [2 x i8]* %final.ptr.269
  store [2 x i8] %spi269, [2 x i8]* %sp4.152
;-------------------------------
  %next4.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 7
  
  %sp5.152 = bitcast i8* %next4.152 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\31", [1 x i8]* %sp5.152
  %sp0.270 = alloca [1 x i8]
  store [1 x i8] c"\56", [1 x i8]* %sp0.270
  %sp0.1.270 = bitcast [1 x i8]* %sp0.270 to i8*
  %i0.270 = load i8, i8* %sp0.1.270

  %sp1.270 = alloca [1 x i8]
  store [1 x i8] c"\67", [1 x i8]* %sp1.270
  %sp1.1.270 = bitcast [1 x i8]* %sp1.270 to i8*
  %i1.270 = load i8, i8* %sp1.1.270

  %xp270 = xor i8 %i0.270, %i1.270

  %fi.270 = alloca i8
  store i8 %xp270, i8* %fi.270

  %final.ptr.270 = bitcast i8* %fi.270 to [1 x i8]*
  %spi270 = load [1 x i8], [1 x i8]* %final.ptr.270
  store [1 x i8] %spi270, [1 x i8]* %sp5.152
;-------------------------------
  %next5.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 8
  
  %sp6.152 = bitcast i8* %next5.152 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\61\48", [2 x i8]* %sp6.152
  %sp0.271 = alloca [2 x i8]
  store [2 x i8] c"\27\21", [2 x i8]* %sp0.271
  %sp0.1.271 = bitcast [2 x i8]* %sp0.271 to i16*
  %i0.271 = load i16, i16* %sp0.1.271

  %sp1.271 = alloca [2 x i8]
  store [2 x i8] c"\46\69", [2 x i8]* %sp1.271
  %sp1.1.271 = bitcast [2 x i8]* %sp1.271 to i16*
  %i1.271 = load i16, i16* %sp1.1.271

  %xp271 = xor i16 %i0.271, %i1.271

  %fi.271 = alloca i16
  store i16 %xp271, i16* %fi.271

  %final.ptr.271 = bitcast i16* %fi.271 to [2 x i8]*
  %spi271 = load [2 x i8], [2 x i8]* %final.ptr.271
  store [2 x i8] %spi271, [2 x i8]* %sp6.152
;-------------------------------
  %next6.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 10
  
  %sp7.152 = bitcast i8* %next6.152 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\51", [1 x i8]* %sp7.152
  %sp0.272 = alloca [1 x i8]
  store [1 x i8] c"\28", [1 x i8]* %sp0.272
  %sp0.1.272 = bitcast [1 x i8]* %sp0.272 to i8*
  %i0.272 = load i8, i8* %sp0.1.272

  %sp1.272 = alloca [1 x i8]
  store [1 x i8] c"\79", [1 x i8]* %sp1.272
  %sp1.1.272 = bitcast [1 x i8]* %sp1.272 to i8*
  %i1.272 = load i8, i8* %sp1.1.272

  %xp272 = xor i8 %i0.272, %i1.272

  %fi.272 = alloca i8
  store i8 %xp272, i8* %fi.272

  %final.ptr.272 = bitcast i8* %fi.272 to [1 x i8]*
  %spi272 = load [1 x i8], [1 x i8]* %final.ptr.272
  store [1 x i8] %spi272, [1 x i8]* %sp7.152
;-------------------------------
  %next7.152 = getelementptr [13 x i8], [13 x i8]* %spi152, i32 0, i32 11
  
  %sp8.152 = bitcast i8* %next7.152 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\41\00", [2 x i8]* %sp8.152
  %sp0.273 = alloca [2 x i8]
  store [2 x i8] c"\16\47", [2 x i8]* %sp0.273
  %sp0.1.273 = bitcast [2 x i8]* %sp0.273 to i16*
  %i0.273 = load i16, i16* %sp0.1.273

  %sp1.273 = alloca [2 x i8]
  store [2 x i8] c"\57\47", [2 x i8]* %sp1.273
  %sp1.1.273 = bitcast [2 x i8]* %sp1.273 to i16*
  %i1.273 = load i16, i16* %sp1.1.273

  %xp273 = xor i16 %i0.273, %i1.273

  %fi.273 = alloca i16
  store i16 %xp273, i16* %fi.273

  %final.ptr.273 = bitcast i16* %fi.273 to [2 x i8]*
  %spi273 = load [2 x i8], [2 x i8]* %final.ptr.273
  store [2 x i8] %spi273, [2 x i8]* %sp8.152
;-------------------------------
  %cipher.ptr.106 = getelementptr inbounds [13 x i8], [13 x i8]* %spi152, i32 0, i32 0
;-------------------------------
  %plain.ptr.106 = tail call i8* @base64_decode(i8* %cipher.ptr.106)
  %spi106 = bitcast i8* %plain.ptr.106 to [9 x i8]*
  %cast12= getelementptr [9 x i8], [9 x i8]* %spi106, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast12)
  br label %next12
BB_14:
;-------------------------------
; Replace: %cast14= getelementptr [8 x i8], [8 x i8]* @.str13, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.107 = getelementptr inbounds [13 x i8], [13 x i8]* @cipher.107, i32 0, i32 0
  %spi153 = alloca [13 x i8]

  
  %sp0.153 = bitcast [13 x i8]* %spi153 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\55", [1 x i8]* %sp0.153
  %sp0.274 = alloca [1 x i8]
  store [1 x i8] c"\06", [1 x i8]* %sp0.274
  %sp0.1.274 = bitcast [1 x i8]* %sp0.274 to i8*
  %i0.274 = load i8, i8* %sp0.1.274

  %sp1.274 = alloca [1 x i8]
  store [1 x i8] c"\53", [1 x i8]* %sp1.274
  %sp1.1.274 = bitcast [1 x i8]* %sp1.274 to i8*
  %i1.274 = load i8, i8* %sp1.1.274

  %xp274 = xor i8 %i0.274, %i1.274

  %fi.274 = alloca i8
  store i8 %xp274, i8* %fi.274

  %final.ptr.274 = bitcast i8* %fi.274 to [1 x i8]*
  %spi274 = load [1 x i8], [1 x i8]* %final.ptr.274
  store [1 x i8] %spi274, [1 x i8]* %sp0.153
;-------------------------------
  %next0.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 1
  
  %sp1.153 = bitcast i8* %next0.153 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\48", [1 x i8]* %sp1.153
  %sp0.275 = alloca [1 x i8]
  store [1 x i8] c"\19", [1 x i8]* %sp0.275
  %sp0.1.275 = bitcast [1 x i8]* %sp0.275 to i8*
  %i0.275 = load i8, i8* %sp0.1.275

  %sp1.275 = alloca [1 x i8]
  store [1 x i8] c"\51", [1 x i8]* %sp1.275
  %sp1.1.275 = bitcast [1 x i8]* %sp1.275 to i8*
  %i1.275 = load i8, i8* %sp1.1.275

  %xp275 = xor i8 %i0.275, %i1.275

  %fi.275 = alloca i8
  store i8 %xp275, i8* %fi.275

  %final.ptr.275 = bitcast i8* %fi.275 to [1 x i8]*
  %spi275 = load [1 x i8], [1 x i8]* %final.ptr.275
  store [1 x i8] %spi275, [1 x i8]* %sp1.153
;-------------------------------
  %next1.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 2
  
  %sp2.153 = bitcast i8* %next1.153 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\4a\6c", [2 x i8]* %sp2.153
  %sp0.276 = alloca [2 x i8]
  store [2 x i8] c"\7D\2D", [2 x i8]* %sp0.276
  %sp0.1.276 = bitcast [2 x i8]* %sp0.276 to i16*
  %i0.276 = load i16, i16* %sp0.1.276

  %sp1.276 = alloca [2 x i8]
  store [2 x i8] c"\37\41", [2 x i8]* %sp1.276
  %sp1.1.276 = bitcast [2 x i8]* %sp1.276 to i16*
  %i1.276 = load i16, i16* %sp1.1.276

  %xp276 = xor i16 %i0.276, %i1.276

  %fi.276 = alloca i16
  store i16 %xp276, i16* %fi.276

  %final.ptr.276 = bitcast i16* %fi.276 to [2 x i8]*
  %spi276 = load [2 x i8], [2 x i8]* %final.ptr.276
  store [2 x i8] %spi276, [2 x i8]* %sp2.153
;-------------------------------
  %next2.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 4
  
  %sp3.153 = bitcast i8* %next2.153 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\62", [1 x i8]* %sp3.153
  %sp0.277 = alloca [1 x i8]
  store [1 x i8] c"\0F", [1 x i8]* %sp0.277
  %sp0.1.277 = bitcast [1 x i8]* %sp0.277 to i8*
  %i0.277 = load i8, i8* %sp0.1.277

  %sp1.277 = alloca [1 x i8]
  store [1 x i8] c"\6d", [1 x i8]* %sp1.277
  %sp1.1.277 = bitcast [1 x i8]* %sp1.277 to i8*
  %i1.277 = load i8, i8* %sp1.1.277

  %xp277 = xor i8 %i0.277, %i1.277

  %fi.277 = alloca i8
  store i8 %xp277, i8* %fi.277

  %final.ptr.277 = bitcast i8* %fi.277 to [1 x i8]*
  %spi277 = load [1 x i8], [1 x i8]* %final.ptr.277
  store [1 x i8] %spi277, [1 x i8]* %sp3.153
;-------------------------------
  %next3.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 5
  
  %sp4.153 = bitcast i8* %next3.153 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\57\6c", [2 x i8]* %sp4.153
  %sp0.278 = alloca [2 x i8]
  store [2 x i8] c"\12\0E", [2 x i8]* %sp0.278
  %sp0.1.278 = bitcast [2 x i8]* %sp0.278 to i16*
  %i0.278 = load i16, i16* %sp0.1.278

  %sp1.278 = alloca [2 x i8]
  store [2 x i8] c"\45\62", [2 x i8]* %sp1.278
  %sp1.1.278 = bitcast [2 x i8]* %sp1.278 to i16*
  %i1.278 = load i16, i16* %sp1.1.278

  %xp278 = xor i16 %i0.278, %i1.278

  %fi.278 = alloca i16
  store i16 %xp278, i16* %fi.278

  %final.ptr.278 = bitcast i16* %fi.278 to [2 x i8]*
  %spi278 = load [2 x i8], [2 x i8]* %final.ptr.278
  store [2 x i8] %spi278, [2 x i8]* %sp4.153
;-------------------------------
  %next4.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 7
  
  %sp5.153 = bitcast i8* %next4.153 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\6c", [1 x i8]* %sp5.153
  %sp0.279 = alloca [1 x i8]
  store [1 x i8] c"\1E", [1 x i8]* %sp0.279
  %sp0.1.279 = bitcast [1 x i8]* %sp0.279 to i8*
  %i0.279 = load i8, i8* %sp0.1.279

  %sp1.279 = alloca [1 x i8]
  store [1 x i8] c"\72", [1 x i8]* %sp1.279
  %sp1.1.279 = bitcast [1 x i8]* %sp1.279 to i8*
  %i1.279 = load i8, i8* %sp1.1.279

  %xp279 = xor i8 %i0.279, %i1.279

  %fi.279 = alloca i8
  store i8 %xp279, i8* %fi.279

  %final.ptr.279 = bitcast i8* %fi.279 to [1 x i8]*
  %spi279 = load [1 x i8], [1 x i8]* %final.ptr.279
  store [1 x i8] %spi279, [1 x i8]* %sp5.153
;-------------------------------
  %next5.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 8
  
  %sp6.153 = bitcast i8* %next5.153 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\63\67", [2 x i8]* %sp6.153
  %sp0.280 = alloca [2 x i8]
  store [2 x i8] c"\53\1E", [2 x i8]* %sp0.280
  %sp0.1.280 = bitcast [2 x i8]* %sp0.280 to i16*
  %i0.280 = load i16, i16* %sp0.1.280

  %sp1.280 = alloca [2 x i8]
  store [2 x i8] c"\30\79", [2 x i8]* %sp1.280
  %sp1.1.280 = bitcast [2 x i8]* %sp1.280 to i16*
  %i1.280 = load i16, i16* %sp1.1.280

  %xp280 = xor i16 %i0.280, %i1.280

  %fi.280 = alloca i16
  store i16 %xp280, i16* %fi.280

  %final.ptr.280 = bitcast i16* %fi.280 to [2 x i8]*
  %spi280 = load [2 x i8], [2 x i8]* %final.ptr.280
  store [2 x i8] %spi280, [2 x i8]* %sp6.153
;-------------------------------
  %next6.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 10
  
  %sp7.153 = bitcast i8* %next6.153 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\41", [1 x i8]* %sp7.153
  %sp0.281 = alloca [1 x i8]
  store [1 x i8] c"\1B", [1 x i8]* %sp0.281
  %sp0.1.281 = bitcast [1 x i8]* %sp0.281 to i8*
  %i0.281 = load i8, i8* %sp0.1.281

  %sp1.281 = alloca [1 x i8]
  store [1 x i8] c"\5a", [1 x i8]* %sp1.281
  %sp1.1.281 = bitcast [1 x i8]* %sp1.281 to i8*
  %i1.281 = load i8, i8* %sp1.1.281

  %xp281 = xor i8 %i0.281, %i1.281

  %fi.281 = alloca i8
  store i8 %xp281, i8* %fi.281

  %final.ptr.281 = bitcast i8* %fi.281 to [1 x i8]*
  %spi281 = load [1 x i8], [1 x i8]* %final.ptr.281
  store [1 x i8] %spi281, [1 x i8]* %sp7.153
;-------------------------------
  %next7.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 11
  
  %sp8.153 = bitcast i8* %next7.153 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.153
  %sp0.282 = alloca [2 x i8]
  store [2 x i8] c"\09\33", [2 x i8]* %sp0.282
  %sp0.1.282 = bitcast [2 x i8]* %sp0.282 to i16*
  %i0.282 = load i16, i16* %sp0.1.282

  %sp1.282 = alloca [2 x i8]
  store [2 x i8] c"\34\33", [2 x i8]* %sp1.282
  %sp1.1.282 = bitcast [2 x i8]* %sp1.282 to i16*
  %i1.282 = load i16, i16* %sp1.1.282

  %xp282 = xor i16 %i0.282, %i1.282

  %fi.282 = alloca i16
  store i16 %xp282, i16* %fi.282

  %final.ptr.282 = bitcast i16* %fi.282 to [2 x i8]*
  %spi282 = load [2 x i8], [2 x i8]* %final.ptr.282
  store [2 x i8] %spi282, [2 x i8]* %sp8.153
;-------------------------------
  %cipher.ptr.107 = getelementptr inbounds [13 x i8], [13 x i8]* %spi153, i32 0, i32 0
;-------------------------------
  %plain.ptr.107 = tail call i8* @base64_decode(i8* %cipher.ptr.107)
  %spi107 = bitcast i8* %plain.ptr.107 to [8 x i8]*
  %cast14= getelementptr [8 x i8], [8 x i8]* %spi107, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast14)
  br label %next14
BB_16:
;-------------------------------
; Replace: %cast16= getelementptr [11 x i8], [11 x i8]* @.str15, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.108 = getelementptr inbounds [17 x i8], [17 x i8]* @cipher.108, i32 0, i32 0
  %spi154 = alloca [17 x i8]

  
  %sp0.154 = bitcast [17 x i8]* %spi154 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\5a", [1 x i8]* %sp0.154
  %sp0.283 = alloca [1 x i8]
  store [1 x i8] c"\6A", [1 x i8]* %sp0.283
  %sp0.1.283 = bitcast [1 x i8]* %sp0.283 to i8*
  %i0.283 = load i8, i8* %sp0.1.283

  %sp1.283 = alloca [1 x i8]
  store [1 x i8] c"\30", [1 x i8]* %sp1.283
  %sp1.1.283 = bitcast [1 x i8]* %sp1.283 to i8*
  %i1.283 = load i8, i8* %sp1.1.283

  %xp283 = xor i8 %i0.283, %i1.283

  %fi.283 = alloca i8
  store i8 %xp283, i8* %fi.283

  %final.ptr.283 = bitcast i8* %fi.283 to [1 x i8]*
  %spi283 = load [1 x i8], [1 x i8]* %final.ptr.283
  store [1 x i8] %spi283, [1 x i8]* %sp0.154
;-------------------------------
  %next0.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 1
  
  %sp1.154 = bitcast i8* %next0.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\47\56", [2 x i8]* %sp1.154
  %sp0.284 = alloca [2 x i8]
  store [2 x i8] c"\2F\19", [2 x i8]* %sp0.284
  %sp0.1.284 = bitcast [2 x i8]* %sp0.284 to i16*
  %i0.284 = load i16, i16* %sp0.1.284

  %sp1.284 = alloca [2 x i8]
  store [2 x i8] c"\68\4f", [2 x i8]* %sp1.284
  %sp1.1.284 = bitcast [2 x i8]* %sp1.284 to i16*
  %i1.284 = load i16, i16* %sp1.1.284

  %xp284 = xor i16 %i0.284, %i1.284

  %fi.284 = alloca i16
  store i16 %xp284, i16* %fi.284

  %final.ptr.284 = bitcast i16* %fi.284 to [2 x i8]*
  %spi284 = load [2 x i8], [2 x i8]* %final.ptr.284
  store [2 x i8] %spi284, [2 x i8]* %sp1.154
;-------------------------------
  %next1.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 3
  
  %sp2.154 = bitcast i8* %next1.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\79\5a", [2 x i8]* %sp2.154
  %sp0.285 = alloca [2 x i8]
  store [2 x i8] c"\40\12", [2 x i8]* %sp0.285
  %sp0.1.285 = bitcast [2 x i8]* %sp0.285 to i16*
  %i0.285 = load i16, i16* %sp0.1.285

  %sp1.285 = alloca [2 x i8]
  store [2 x i8] c"\39\48", [2 x i8]* %sp1.285
  %sp1.1.285 = bitcast [2 x i8]* %sp1.285 to i16*
  %i1.285 = load i16, i16* %sp1.1.285

  %xp285 = xor i16 %i0.285, %i1.285

  %fi.285 = alloca i16
  store i16 %xp285, i16* %fi.285

  %final.ptr.285 = bitcast i16* %fi.285 to [2 x i8]*
  %spi285 = load [2 x i8], [2 x i8]* %final.ptr.285
  store [2 x i8] %spi285, [2 x i8]* %sp2.154
;-------------------------------
  %next2.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 5
  
  %sp3.154 = bitcast i8* %next2.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\4a", [2 x i8]* %sp3.154
  %sp0.286 = alloca [2 x i8]
  store [2 x i8] c"\02\24", [2 x i8]* %sp0.286
  %sp0.1.286 = bitcast [2 x i8]* %sp0.286 to i16*
  %i0.286 = load i16, i16* %sp0.1.286

  %sp1.286 = alloca [2 x i8]
  store [2 x i8] c"\30\6e", [2 x i8]* %sp1.286
  %sp1.1.286 = bitcast [2 x i8]* %sp1.286 to i16*
  %i1.286 = load i16, i16* %sp1.1.286

  %xp286 = xor i16 %i0.286, %i1.286

  %fi.286 = alloca i16
  store i16 %xp286, i16* %fi.286

  %final.ptr.286 = bitcast i16* %fi.286 to [2 x i8]*
  %spi286 = load [2 x i8], [2 x i8]* %final.ptr.286
  store [2 x i8] %spi286, [2 x i8]* %sp3.154
;-------------------------------
  %next3.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 7
  
  %sp4.154 = bitcast i8* %next3.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\71\65", [2 x i8]* %sp4.154
  %sp0.287 = alloca [2 x i8]
  store [2 x i8] c"\49\33", [2 x i8]* %sp0.287
  %sp0.1.287 = bitcast [2 x i8]* %sp0.287 to i16*
  %i0.287 = load i16, i16* %sp0.1.287

  %sp1.287 = alloca [2 x i8]
  store [2 x i8] c"\38\56", [2 x i8]* %sp1.287
  %sp1.1.287 = bitcast [2 x i8]* %sp1.287 to i16*
  %i1.287 = load i16, i16* %sp1.1.287

;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @alarm1012 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack1011, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %xp287 = xor i16 %i0.287, %i1.287

  %fi.287 = alloca i16
  store i16 %xp287, i16* %fi.287

  %final.ptr.287 = bitcast i16* %fi.287 to [2 x i8]*
  %spi287 = load [2 x i8], [2 x i8]* %final.ptr.287
  store [2 x i8] %spi287, [2 x i8]* %sp4.154
;-------------------------------
  %next4.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 9
  
  %sp5.154 = bitcast i8* %next4.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6d\56", [2 x i8]* %sp5.154
  %sp0.288 = alloca [2 x i8]
  store [2 x i8] c"\1A\3A", [2 x i8]* %sp0.288
  %sp0.1.288 = bitcast [2 x i8]* %sp0.288 to i16*
  %i0.288 = load i16, i16* %sp0.1.288

  %sp1.288 = alloca [2 x i8]
  store [2 x i8] c"\77\6c", [2 x i8]* %sp1.288
  %sp1.1.288 = bitcast [2 x i8]* %sp1.288 to i16*
  %i1.288 = load i16, i16* %sp1.1.288

  %xp288 = xor i16 %i0.288, %i1.288

  %fi.288 = alloca i16
  store i16 %xp288, i16* %fi.288

  %final.ptr.288 = bitcast i16* %fi.288 to [2 x i8]*
  %spi288 = load [2 x i8], [2 x i8]* %final.ptr.288
  store [2 x i8] %spi288, [2 x i8]* %sp5.154
;-------------------------------
  %next5.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 11
  
  %sp6.154 = bitcast i8* %next5.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\72\59", [2 x i8]* %sp6.154
  %sp0.289 = alloca [2 x i8]
  store [2 x i8] c"\31\2F", [2 x i8]* %sp0.289
  %sp0.1.289 = bitcast [2 x i8]* %sp0.289 to i16*
  %i0.289 = load i16, i16* %sp0.1.289

  %sp1.289 = alloca [2 x i8]
  store [2 x i8] c"\43\76", [2 x i8]* %sp1.289
  %sp1.1.289 = bitcast [2 x i8]* %sp1.289 to i16*
  %i1.289 = load i16, i16* %sp1.1.289

  %xp289 = xor i16 %i0.289, %i1.289

  %fi.289 = alloca i16
  store i16 %xp289, i16* %fi.289

  %final.ptr.289 = bitcast i16* %fi.289 to [2 x i8]*
  %spi289 = load [2 x i8], [2 x i8]* %final.ptr.289
  store [2 x i8] %spi289, [2 x i8]* %sp6.154
;-------------------------------
  %next6.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 13
  
  %sp7.154 = bitcast i8* %next6.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\51\41", [2 x i8]* %sp7.154
  %sp0.290 = alloca [2 x i8]
  store [2 x i8] c"\10\35", [2 x i8]* %sp0.290
  %sp0.1.290 = bitcast [2 x i8]* %sp0.290 to i16*
  %i0.290 = load i16, i16* %sp0.1.290

  %sp1.290 = alloca [2 x i8]
  store [2 x i8] c"\41\74", [2 x i8]* %sp1.290
  %sp1.1.290 = bitcast [2 x i8]* %sp1.290 to i16*
  %i1.290 = load i16, i16* %sp1.1.290

  %xp290 = xor i16 %i0.290, %i1.290

  %fi.290 = alloca i16
  store i16 %xp290, i16* %fi.290

  %final.ptr.290 = bitcast i16* %fi.290 to [2 x i8]*
  %spi290 = load [2 x i8], [2 x i8]* %final.ptr.290
  store [2 x i8] %spi290, [2 x i8]* %sp7.154
;-------------------------------
  %next7.154 = getelementptr [17 x i8], [17 x i8]* %spi154, i32 0, i32 15
  
  %sp8.154 = bitcast i8* %next7.154 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.154
  %sp0.291 = alloca [2 x i8]
  store [2 x i8] c"\59\4E", [2 x i8]* %sp0.291
  %sp0.1.291 = bitcast [2 x i8]* %sp0.291 to i16*
  %i0.291 = load i16, i16* %sp0.1.291

  %sp1.291 = alloca [2 x i8]
  store [2 x i8] c"\64\4e", [2 x i8]* %sp1.291
  %sp1.1.291 = bitcast [2 x i8]* %sp1.291 to i16*
  %i1.291 = load i16, i16* %sp1.1.291

  %xp291 = xor i16 %i0.291, %i1.291

  %fi.291 = alloca i16
  store i16 %xp291, i16* %fi.291

  %final.ptr.291 = bitcast i16* %fi.291 to [2 x i8]*
  %spi291 = load [2 x i8], [2 x i8]* %final.ptr.291
  store [2 x i8] %spi291, [2 x i8]* %sp8.154
;-------------------------------
  %cipher.ptr.108 = getelementptr inbounds [17 x i8], [17 x i8]* %spi154, i32 0, i32 0
;-------------------------------
  %plain.ptr.108 = tail call i8* @base64_decode(i8* %cipher.ptr.108)
  %spi108 = bitcast i8* %plain.ptr.108 to [11 x i8]*
  %cast16= getelementptr [11 x i8], [11 x i8]* %spi108, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast16)
  br label %next16
BB_18:
;-------------------------------
; Replace: %cast18= getelementptr [11 x i8], [11 x i8]* @.str17, i64 0, i64 0
;-------------------------------
; Replace: %cipher.ptr.109 = getelementptr inbounds [17 x i8], [17 x i8]* @cipher.109, i32 0, i32 0
  %spi155 = alloca [17 x i8]

  
  %sp0.155 = bitcast [17 x i8]* %spi155 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\62", [1 x i8]* %sp0.155
  %sp0.292 = alloca [1 x i8]
  store [1 x i8] c"\32", [1 x i8]* %sp0.292
  %sp0.1.292 = bitcast [1 x i8]* %sp0.292 to i8*
  %i0.292 = load i8, i8* %sp0.1.292

  %sp1.292 = alloca [1 x i8]
  store [1 x i8] c"\50", [1 x i8]* %sp1.292
  %sp1.1.292 = bitcast [1 x i8]* %sp1.292 to i8*
  %i1.292 = load i8, i8* %sp1.1.292

  %xp292 = xor i8 %i0.292, %i1.292

  %fi.292 = alloca i8
  store i8 %xp292, i8* %fi.292

  %final.ptr.292 = bitcast i8* %fi.292 to [1 x i8]*
  %spi292 = load [1 x i8], [1 x i8]* %final.ptr.292
  store [1 x i8] %spi292, [1 x i8]* %sp0.155
;-------------------------------
  %next0.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 1
  
  %sp1.155 = bitcast i8* %next0.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\74", [2 x i8]* %sp1.155
  %sp0.293 = alloca [2 x i8]
  store [2 x i8] c"\50\17", [2 x i8]* %sp0.293
  %sp0.1.293 = bitcast [2 x i8]* %sp0.293 to i16*
  %i0.293 = load i16, i16* %sp0.1.293

  %sp1.293 = alloca [2 x i8]
  store [2 x i8] c"\62\63", [2 x i8]* %sp1.293
  %sp1.1.293 = bitcast [2 x i8]* %sp1.293 to i16*
  %i1.293 = load i16, i16* %sp1.1.293

  %xp293 = xor i16 %i0.293, %i1.293

  %fi.293 = alloca i16
  store i16 %xp293, i16* %fi.293

  %final.ptr.293 = bitcast i16* %fi.293 to [2 x i8]*
  %spi293 = load [2 x i8], [2 x i8]* %final.ptr.293
  store [2 x i8] %spi293, [2 x i8]* %sp1.155
;-------------------------------
  %next1.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 3
  
  %sp2.155 = bitcast i8* %next1.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\70\62", [2 x i8]* %sp2.155
  %sp0.294 = alloca [2 x i8]
  store [2 x i8] c"\12\07", [2 x i8]* %sp0.294
  %sp0.1.294 = bitcast [2 x i8]* %sp0.294 to i16*
  %i0.294 = load i16, i16* %sp0.1.294

  %sp1.294 = alloca [2 x i8]
  store [2 x i8] c"\62\65", [2 x i8]* %sp1.294
  %sp1.1.294 = bitcast [2 x i8]* %sp1.294 to i16*
  %i1.294 = load i16, i16* %sp1.1.294

  %xp294 = xor i16 %i0.294, %i1.294

  %fi.294 = alloca i16
  store i16 %xp294, i16* %fi.294

  %final.ptr.294 = bitcast i16* %fi.294 to [2 x i8]*
  %spi294 = load [2 x i8], [2 x i8]* %final.ptr.294
  store [2 x i8] %spi294, [2 x i8]* %sp2.155
;-------------------------------
  %next2.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 5
  
  %sp3.155 = bitcast i8* %next2.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\70", [2 x i8]* %sp3.155
  %sp0.295 = alloca [2 x i8]
  store [2 x i8] c"\5A\3C", [2 x i8]* %sp0.295
  %sp0.1.295 = bitcast [2 x i8]* %sp0.295 to i16*
  %i0.295 = load i16, i16* %sp0.1.295

  %sp1.295 = alloca [2 x i8]
  store [2 x i8] c"\68\4c", [2 x i8]* %sp1.295
  %sp1.1.295 = bitcast [2 x i8]* %sp1.295 to i16*
  %i1.295 = load i16, i16* %sp1.1.295

  %xp295 = xor i16 %i0.295, %i1.295

  %fi.295 = alloca i16
  store i16 %xp295, i16* %fi.295

  %final.ptr.295 = bitcast i16* %fi.295 to [2 x i8]*
  %spi295 = load [2 x i8], [2 x i8]* %final.ptr.295
  store [2 x i8] %spi295, [2 x i8]* %sp3.155
;-------------------------------
  %next3.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 7
  
  %sp4.155 = bitcast i8* %next3.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\32\61", [2 x i8]* %sp4.155
  %sp0.296 = alloca [2 x i8]
  store [2 x i8] c"\0B\26", [2 x i8]* %sp0.296
  %sp0.1.296 = bitcast [2 x i8]* %sp0.296 to i16*
  %i0.296 = load i16, i16* %sp0.1.296

  %sp1.296 = alloca [2 x i8]
  store [2 x i8] c"\39\47", [2 x i8]* %sp1.296
  %sp1.1.296 = bitcast [2 x i8]* %sp1.296 to i16*
  %i1.296 = load i16, i16* %sp1.1.296

  %xp296 = xor i16 %i0.296, %i1.296

  %fi.296 = alloca i16
  store i16 %xp296, i16* %fi.296

  %final.ptr.296 = bitcast i16* %fi.296 to [2 x i8]*
  %spi296 = load [2 x i8], [2 x i8]* %final.ptr.296
  store [2 x i8] %spi296, [2 x i8]* %sp4.155
;-------------------------------
  %next4.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 9
  
  %sp5.155 = bitcast i8* %next4.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\53\78", [2 x i8]* %sp5.155
  %sp0.297 = alloca [2 x i8]
  store [2 x i8] c"\17\48", [2 x i8]* %sp0.297
  %sp0.1.297 = bitcast [2 x i8]* %sp0.297 to i16*
  %i0.297 = load i16, i16* %sp0.1.297

  %sp1.297 = alloca [2 x i8]
  store [2 x i8] c"\44\30", [2 x i8]* %sp1.297
  %sp1.1.297 = bitcast [2 x i8]* %sp1.297 to i16*
  %i1.297 = load i16, i16* %sp1.1.297

  %xp297 = xor i16 %i0.297, %i1.297

  %fi.297 = alloca i16
  store i16 %xp297, i16* %fi.297

  %final.ptr.297 = bitcast i16* %fi.297 to [2 x i8]*
  %spi297 = load [2 x i8], [2 x i8]* %final.ptr.297
  store [2 x i8] %spi297, [2 x i8]* %sp5.155
;-------------------------------
  %next5.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 11
  
  %sp6.155 = bitcast i8* %next5.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\6c\63", [2 x i8]* %sp6.155
  %sp0.298 = alloca [2 x i8]
  store [2 x i8] c"\35\17", [2 x i8]* %sp0.298
  %sp0.1.298 = bitcast [2 x i8]* %sp0.298 to i16*
  %i0.298 = load i16, i16* %sp0.1.298

  %sp1.298 = alloca [2 x i8]
  store [2 x i8] c"\59\74", [2 x i8]* %sp1.298
  %sp1.1.298 = bitcast [2 x i8]* %sp1.298 to i16*
  %i1.298 = load i16, i16* %sp1.1.298

  %xp298 = xor i16 %i0.298, %i1.298

  %fi.298 = alloca i16
  store i16 %xp298, i16* %fi.298

  %final.ptr.298 = bitcast i16* %fi.298 to [2 x i8]*
  %spi298 = load [2 x i8], [2 x i8]* %final.ptr.298
  store [2 x i8] %spi298, [2 x i8]* %sp6.155
;-------------------------------
  %next6.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 13
  
  %sp7.155 = bitcast i8* %next6.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\67\41", [2 x i8]* %sp7.155
  %sp0.299 = alloca [2 x i8]
  store [2 x i8] c"\23\04", [2 x i8]* %sp0.299
  %sp0.1.299 = bitcast [2 x i8]* %sp0.299 to i16*
  %i0.299 = load i16, i16* %sp0.1.299

  %sp1.299 = alloca [2 x i8]
  store [2 x i8] c"\44\45", [2 x i8]* %sp1.299
  %sp1.1.299 = bitcast [2 x i8]* %sp1.299 to i16*
  %i1.299 = load i16, i16* %sp1.1.299

  %xp299 = xor i16 %i0.299, %i1.299

  %fi.299 = alloca i16
  store i16 %xp299, i16* %fi.299

  %final.ptr.299 = bitcast i16* %fi.299 to [2 x i8]*
  %spi299 = load [2 x i8], [2 x i8]* %final.ptr.299
  store [2 x i8] %spi299, [2 x i8]* %sp7.155
;-------------------------------
  %next7.155 = getelementptr [17 x i8], [17 x i8]* %spi155, i32 0, i32 15
  
  %sp8.155 = bitcast i8* %next7.155 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\3d\00", [2 x i8]* %sp8.155
  %sp0.300 = alloca [2 x i8]
  store [2 x i8] c"\53\33", [2 x i8]* %sp0.300
  %sp0.1.300 = bitcast [2 x i8]* %sp0.300 to i16*
  %i0.300 = load i16, i16* %sp0.1.300

  %sp1.300 = alloca [2 x i8]
  store [2 x i8] c"\6e\33", [2 x i8]* %sp1.300
  %sp1.1.300 = bitcast [2 x i8]* %sp1.300 to i16*
  %i1.300 = load i16, i16* %sp1.1.300

  %xp300 = xor i16 %i0.300, %i1.300

  %fi.300 = alloca i16
  store i16 %xp300, i16* %fi.300

  %final.ptr.300 = bitcast i16* %fi.300 to [2 x i8]*
  %spi300 = load [2 x i8], [2 x i8]* %final.ptr.300
  store [2 x i8] %spi300, [2 x i8]* %sp8.155
;-------------------------------
  %cipher.ptr.109 = getelementptr inbounds [17 x i8], [17 x i8]* %spi155, i32 0, i32 0
;-------------------------------
  %plain.ptr.109 = tail call i8* @base64_decode(i8* %cipher.ptr.109)
  %spi109 = bitcast i8* %plain.ptr.109 to [11 x i8]*
  %cast18= getelementptr [11 x i8], [11 x i8]* %spi109, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast18)
;-------------------------------
;--------Added Syst Call--------
  %a29 = tail call i32 @usleep(i32 %tmp0_v.i.i)
;-------------------------------
  br label %next18
.escape.100:
  ret void
BB_122:
  ret void
.escape.302:
  ret void
}

define internal fastcc void @alarm1012(i32 %arg_esp) unnamed_addr  norecurse  !retregs !82 {
  %tmp2_v.i8.i = add i32 %arg_esp, 4
  %tmp0_v.i9.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i9.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i11.i = add i32 %tmp0_v.i9.i, -8
  %4 = inttoptr i32 %tmp2_v4.i11.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i13.i = add i32 %tmp0_v.i9.i, -12
  %5 = inttoptr i32 %tmp2_v5.i13.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i9.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i8.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i9.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v.i19.i = add i32 %tmp0_v.i9.i, -48
  %8 = inttoptr i32 %tmp2_v.i19.i to i32*
  store i32 1, i32* %8, align 16
  %tmp2_v2.i20.i = add i32 %tmp0_v.i9.i, -52
  %9 = inttoptr i32 %tmp2_v2.i20.i to i32*
  store i32 134517217, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = tail call i32 @alarm(i32 %arg.i.i)
  %tmp2_v.i4.i = add i32 %tmp0_v.i9.i, -20
  %11 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i9.i, -44
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %10, i32* %12, align 4
  %spi.bis.1010 = ptrtoint[3 x i8]* @str.bis.1010 to i32
  store i32 %spi.bis.1010, i32* %8, align 16
  store i32 134517241, i32* %9, align 4
  %13 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i8.i, i32 inreg noundef 0, i32 noundef %tmp2_v.i19.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !83
  ret void
}
define internal fastcc void @structure_padding845(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !68 {
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
  %spi.bis.843 = ptrtoint[18 x i8]* @str.bis.843 to i32
  store i32 %spi.bis.843, i32* %9, align 16
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -36
  %10 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517189, i32* %10, align 4
  %11 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !69
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  store i32 1, i32* %8, align 4
  %spi.bis.842 = ptrtoint[19 x i8]* @str.bis.842 to i32
  store i32 %spi.bis.842, i32* %9, align 16
  store i32 134517209, i32* %10, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %13, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !69
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  store i32 8, i32* %8, align 4
  %spi.bis.841 = ptrtoint[19 x i8]* @str.bis.841 to i32
  store i32 %spi.bis.841, i32* %9, align 16
  store i32 134517229, i32* %10, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %16, i32 noundef %tmp2_v3.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !69
  ret void
}
define internal fastcc void @return_dynamic_2d_array750(i32 %arg_esp) unnamed_addr  norecurse  !retregs !54 {
  %tmp2_v.i91.i = add i32 %arg_esp, 4
  %tmp0_v.i92.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i94.i = add i32 %tmp0_v.i92.i, -4
  %3 = inttoptr i32 %tmp2_v3.i94.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i95.i = add i32 %tmp0_v.i92.i, -8
  %4 = inttoptr i32 %tmp2_v4.i95.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i97.i = add i32 %tmp0_v.i92.i, -12
  %5 = inttoptr i32 %tmp2_v5.i97.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i99.i = add i32 %tmp0_v.i92.i, -16
  %6 = inttoptr i32 %tmp2_v6.i99.i to i32*
  store i32 %tmp2_v.i91.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i92.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517448, i32* %7, align 4
  %tmp2_v.i.i = add i32 %tmp0_v.i92.i, -28
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 5, i32* %8, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i92.i, -24
  %9 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 4, i32* %9, align 8
  %tmp2_v3.i.i = add i32 %tmp0_v.i92.i, -56
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 2, i32* %10, align 8
  %11 = load i32, i32* %9, align 8
  %tmp2_v6.i.i = add i32 %tmp0_v.i92.i, -60
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i92.i, -64
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %13, i32* %14, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i92.i, -68
  %15 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517484, i32* %15, align 4
  %tmp2_v.i69.i.i = add i32 %tmp0_v.i92.i, -72
  %16 = inttoptr i32 %tmp2_v.i69.i.i to i32*
  store i32 %tmp2_v4.i95.i, i32* %16, align 8
  %tmp2_v1.i71.i.i = add i32 %tmp0_v.i92.i, -76
  %17 = inttoptr i32 %tmp2_v1.i71.i.i to i32*
  store i32 0, i32* %17, align 4
  %tmp2_v2.i73.i.i = add i32 %tmp0_v.i92.i, -80
  %18 = inttoptr i32 %tmp2_v2.i73.i.i to i32*
  store i32 134529024, i32* %18, align 16
  %tmp2_v3.i76.i.i = add i32 %tmp0_v.i92.i, -100
  %19 = inttoptr i32 %tmp2_v3.i76.i.i to i32*
  store i32 134517255, i32* %19, align 4
  %20 = load i32, i32* %14, align 16
  %tmp0_v2.i48.i.i = shl i32 %20, 2
  %tmp2_v4.i51.i.i = add i32 %tmp0_v.i92.i, -112
  %21 = inttoptr i32 %tmp2_v4.i51.i.i to i32*
  store i32 %tmp0_v2.i48.i.i, i32* %21, align 16
  %tmp2_v5.i52.i.i = add i32 %tmp0_v.i92.i, -116
  %22 = inttoptr i32 %tmp2_v5.i52.i.i to i32*
  store i32 134517276, i32* %22, align 4
  %arg.i.i.i = load i32, i32* %21, align 16
  %23 = tail call i32 @malloc(i32 %arg.i.i.i)
  %tmp2_v.i63.i.i = add i32 %tmp0_v.i92.i, -84
  %24 = inttoptr i32 %tmp2_v.i63.i.i to i32*
  store i32 %23, i32* %24, align 4
  %tmp2_v1.i65.i.i = add i32 %tmp0_v.i92.i, -96
  %25 = inttoptr i32 %tmp2_v1.i65.i.i to i32*
  store i32 0, i32* %25, align 16
  %26 = load i32, i32* %14, align 16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %BB_804922B.i.lr.ph.i, label %BB_804925B.i.i

BB_804922B.i.lr.ph.i:                             ; preds = %0
  %mrv.i5.i = insertvalue { i32, i32 } undef, i32 %tmp2_v4.i51.i.i, 0
  br label %BB_804922B.i.i

BB_804926D.i.i:                                   ; preds = %BB_8049264.i.i, %BB_804926D.i.i
  %storemerge214.i = phi i32 [ %tmp0_v13.i.i.i, %BB_804926D.i.i ], [ 0, %BB_8049264.i.i ]
  %28 = load i32, i32* %48, align 4
  %tmp4_v.i.i.i8 = shl i32 %28, 2
  %29 = load i32, i32* %24, align 4
  %tmp0_v3.i.i.i = add i32 %29, %tmp4_v.i.i.i8
  %30 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %31 = load i32, i32* %30, align 4
  %tmp0_v7.i.i.i = shl i32 %storemerge214.i, 2
  %tmp0_v8.i.i.i = add i32 %31, %tmp0_v7.i.i.i
  %32 = load i32, i32* %10, align 8
  %33 = inttoptr i32 %tmp0_v8.i.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %51, align 8
  %tmp0_v13.i.i.i = add i32 %34, 1
  store i32 %tmp0_v13.i.i.i, i32* %51, align 8
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %tmp0_v13.i.i.i, %35
  br i1 %36, label %BB_804926D.i.i, label %BB_8049297.i.i

BB_804922B.i.i:                                   ; preds = %BB_804922B.i.i, %BB_804922B.i.lr.ph.i
  %r_esp.0.in13.i = phi i32 [ %tmp2_v4.i51.i.i, %BB_804922B.i.lr.ph.i ], [ %r_esp.0.in.i, %BB_804922B.i.i ]
  %.pn912.i = phi i32 [ %23, %BB_804922B.i.lr.ph.i ], [ %41, %BB_804922B.i.i ]
  %mrv.i5.pn11.i = phi { i32, i32 } [ %mrv.i5.i, %BB_804922B.i.lr.ph.i ], [ %.pn.i, %BB_804922B.i.i ]
  %storemerge10.i = phi i32 [ 0, %BB_804922B.i.lr.ph.i ], [ %tmp0_v2.i38.i.i, %BB_804922B.i.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i5.pn11.i, i32 %.pn912.i, 1
  %37 = load i32, i32* %12, align 4
  %tmp0_v1.i.i.i = shl i32 %37, 2
  %tmp4_v.i12.i.i = shl i32 %storemerge10.i, 2
  %38 = load i32, i32* %24, align 4
  %tmp2_v6.i.i.i = add i32 %38, %tmp4_v.i12.i.i
  %39 = inttoptr i32 %r_esp.0.in13.i to i32*
  store i32 %tmp0_v1.i.i.i, i32* %39, align 4
  %tmp2_v9.i14.i.i = add i32 %r_esp.0.in13.i, -4
  %40 = inttoptr i32 %tmp2_v9.i14.i.i to i32*
  store i32 134517322, i32* %40, align 4
  %arg.i.i7.i = load i32, i32* %39, align 4
  %41 = tail call i32 @malloc(i32 %arg.i.i7.i)
  %42 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %25, align 16
  %tmp0_v2.i38.i.i = add i32 %43, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i5.pn11.i, 0
  store i32 %tmp0_v2.i38.i.i, i32* %25, align 16
  %44 = load i32, i32* %14, align 16
  %45 = icmp slt i32 %tmp0_v2.i38.i.i, %44
  br i1 %45, label %BB_804922B.i.i, label %BB_804925B.i.i

BB_8049264.i.i:                                   ; preds = %BB_8049297.i.i, %BB_8049264.i.lr.ph.i
  store i32 0, i32* %51, align 8
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %BB_804926D.i.i, label %BB_8049297.i.i

BB_804925B.i.i:                                   ; preds = %BB_804922B.i.i, %0
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i91.i, %0 ], [ %tmp4_v.i12.i.i, %BB_804922B.i.i ]
  %tmp2_v.i67.i.i = add i32 %tmp0_v.i92.i, -92
  %48 = inttoptr i32 %tmp2_v.i67.i.i to i32*
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %14, align 16
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %BB_8049264.i.lr.ph.i, label %Func_create_matrix.exit

BB_8049264.i.lr.ph.i:                             ; preds = %BB_804925B.i.i
  %tmp2_v.i16.i.i = add i32 %tmp0_v.i92.i, -88
  %51 = inttoptr i32 %tmp2_v.i16.i.i to i32*
  br label %BB_8049264.i.i

BB_8049297.i.i:                                   ; preds = %BB_8049264.i.i, %BB_804926D.i.i
  %52 = load i32, i32* %48, align 4
  %tmp0_v1.i80.i.i = add i32 %52, 1
  store i32 %tmp0_v1.i80.i.i, i32* %48, align 4
  %53 = load i32, i32* %14, align 16
  %54 = icmp slt i32 %tmp0_v1.i80.i.i, %53
  br i1 %54, label %BB_8049264.i.i, label %Func_create_matrix.exit

Func_create_matrix.exit:                          ; preds = %BB_8049297.i.i, %BB_804925B.i.i
  %55 = load i32, i32* %24, align 4
  %56 = load i32, i32* %18, align 16
  %57 = load i32, i32* %16, align 8
  %tmp2_v.i69.i = add i32 %57, -12
  %58 = inttoptr i32 %tmp2_v.i69.i to i32*
  store i32 %55, i32* %58, align 4
  %tmp2_v1.i70.i = add i32 %57, -32
  %59 = inttoptr i32 %tmp2_v1.i70.i to i32*
  %tmp2_v1.i39.i = add i32 %57, -20
  %60 = inttoptr i32 %tmp2_v1.i39.i to i32*
  store i32 0, i32* %59, align 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %BB_80492FB.i.lr.ph, label %BB_8049357.i

BB_80492FB.i.lr.ph:                               ; preds = %Func_create_matrix.exit
  %tmp2_v.i72.i = add i32 %57, -28
  %63 = inttoptr i32 %tmp2_v.i72.i to i32*
  %tmp2_v1.i20.i = add i32 %57, -16
  %64 = inttoptr i32 %tmp2_v1.i20.i to i32*
  %tmp2_v12.i.i = add i32 %56, -8184
  br label %BB_80492FB.i

BB_8049357.i:                                     ; preds = %BB_804933E.i, %Func_create_matrix.exit
  %tmp2_v.i2.i = add i32 %57, -24
  %65 = inttoptr i32 %tmp2_v.i2.i to i32*
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* %60, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %BB_8049360.i, label %.exit

BB_8049360.i:                                     ; preds = %BB_8049360.i, %BB_8049357.i
  %storemerge414 = phi i32 [ %tmp0_v2.i29.i, %BB_8049360.i ], [ 0, %BB_8049357.i ]
  %tmp4_v.i58.i = shl i32 %storemerge414, 2
  %68 = load i32, i32* %58, align 4
  %tmp0_v3.i.i = add i32 %68, %tmp4_v.i58.i
  %69 = inttoptr i32 %tmp0_v3.i.i to i32*
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 16
  store i32 134517626, i32* %15, align 4
  %arg.i.i = load i32, i32* %14, align 16
  tail call void @free(i32 %arg.i.i)
  %71 = load i32, i32* %65, align 4
  %tmp0_v2.i29.i = add i32 %71, 1
  store i32 %tmp0_v2.i29.i, i32* %65, align 4
  %72 = load i32, i32* %60, align 4
  %73 = icmp slt i32 %tmp0_v2.i29.i, %72
  br i1 %73, label %BB_8049360.i, label %.exit

BB_80492FB.i:                                     ; preds = %BB_804933E.i, %BB_80492FB.i.lr.ph
  store i32 0, i32* %63, align 4
  %74 = load i32, i32* %64, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %BB_8049304.i, label %BB_804933E.i

BB_804933E.i:                                     ; preds = %BB_8049304.i, %BB_80492FB.i
  store i32 10, i32* %14, align 16
  store i32 134517576, i32* %15, align 4
  %arg.i.i11 = load i32, i32* %14, align 16
  %76 = tail call i32 @putchar(i32 %arg.i.i11)  nounwind 
  %77 = load i32, i32* %59, align 4
  %tmp0_v2.i13.i = add i32 %77, 1
  store i32 %tmp0_v2.i13.i, i32* %59, align 4
  %78 = load i32, i32* %60, align 4
  %79 = icmp slt i32 %tmp0_v2.i13.i, %78
  br i1 %79, label %BB_80492FB.i, label %BB_8049357.i

BB_8049304.i:                                     ; preds = %BB_8049304.i, %BB_80492FB.i
  %storemerge513 = phi i32 [ %tmp0_v2.i48.i, %BB_8049304.i ], [ 0, %BB_80492FB.i ]
  %80 = load i32, i32* %59, align 4
  %tmp4_v.i103.i = shl i32 %80, 2
  %81 = load i32, i32* %58, align 4
  %tmp0_v3.i106.i = add i32 %81, %tmp4_v.i103.i
  %82 = inttoptr i32 %tmp0_v3.i106.i to i32*
  %83 = load i32, i32* %82, align 4
  %tmp0_v7.i110.i = shl i32 %storemerge513, 2
  %tmp0_v8.i111.i = add i32 %83, %tmp0_v7.i110.i
  %84 = inttoptr i32 %tmp0_v8.i111.i to i32*
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  store i32 %tmp2_v12.i.i, i32* %14, align 16
  store i32 134517551, i32* %15, align 4
  %86 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %tmp0_v7.i110.i, i32 noundef %tmp2_v9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !55
  %87 = load i32, i32* %63, align 4
  %tmp0_v2.i48.i = add i32 %87, 1
  store i32 %tmp0_v2.i48.i, i32* %63, align 4
  %88 = load i32, i32* %64, align 4
  %89 = icmp slt i32 %tmp0_v2.i48.i, %88
  br i1 %89, label %BB_8049304.i, label %BB_804933E.i

.exit:                                            ; preds = %BB_8049360.i, %BB_8049357.i
  %90 = load i32, i32* %58, align 4
  store i32 %90, i32* %14, align 16
  store i32 134517652, i32* %15, align 4
  %arg.i.i12 = load i32, i32* %14, align 16
  tail call void @free(i32 %arg.i.i12)
  ret void
}
define internal fastcc void @strspn840(i32 %arg_esp) unnamed_addr  norecurse  !retregs !40 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i35.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i39.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i39.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i40.i = add i32 %tmp0_v.i.i, -39
  %10 = inttoptr i32 %tmp2_v3.i40.i to i32*
  store i32 959658037, i32* %10, align 4
  %tmp2_v4.i41.i = add i32 %tmp0_v.i.i, -35
  %11 = inttoptr i32 %tmp2_v4.i41.i to i32*
  store i32 808793137, i32* %11, align 4
  %tmp2_v5.i42.i = add i32 %tmp0_v.i.i, -31
  %12 = inttoptr i32 %tmp2_v5.i42.i to i32*
  store i32 1245856050, i32* %12, align 4
  %tmp2_v6.i43.i = add i32 %tmp0_v.i.i, -27
  %13 = inttoptr i32 %tmp2_v6.i43.i to i32*
  store i32 1313690699, i32* %13, align 4
  %tmp2_v7.i44.i = add i32 %tmp0_v.i.i, -23
  %14 = inttoptr i32 %tmp2_v7.i44.i to i16*
  store i16 22868, i16* %14, align 2
  %tmp2_v8.i45.i = add i32 %tmp0_v.i.i, -21
  %15 = inttoptr i32 %tmp2_v8.i45.i to i8*
  store i8 0, i8* %15, align 1
  %tmp2_v9.i46.i = add i32 %tmp0_v.i.i, -50
  %16 = inttoptr i32 %tmp2_v9.i46.i to i32*
  store i32 942813488, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -46
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 892613433, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -42
  %18 = inttoptr i32 %tmp2_v11.i.i to i16*
  store i16 14134, i16* %18, align 2
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -40
  %19 = inttoptr i32 %tmp2_v12.i.i to i8*
  store i8 0, i8* %19, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -76
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v9.i46.i, i32* %20, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i.i, -80
  %21 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i40.i, i32* %21, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i.i, -84
  %22 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517360, i32* %22, align 4
  %arg.i.i = load i32, i32* %21, align 16
  %arg2.i.i = load i32, i32* %20, align 4
  %23 = tail call i32 @strspn(i32 %arg.i.i, i32 %arg2.i.i)
  %tmp2_v.i4.i = add i32 %tmp0_v.i.i, -60
  %24 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %23, i32* %24, align 4
  store i32 %23, i32* %20, align 4
  %spi.bis.838 = ptrtoint[9 x i8]* @str.bis.838 to i32
  store i32 %spi.bis.838, i32* %21, align 16
  store i32 134517384, i32* %22, align 4
  %25 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  %26 = load i32, i32* %24, align 4
  %tmp0_v3.i21.i = add i32 %26, %tmp2_v3.i40.i
  %tmp2_v4.i22.i = add i32 %tmp0_v.i.i, -56
  %27 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 %tmp0_v3.i21.i, i32* %27, align 8
  store i32 %tmp0_v3.i21.i, i32* %21, align 16
  store i32 134517409, i32* %22, align 4
  %arg.i.i3 = load i32, i32* %21, align 16
  %28 = inttoptr i32 %arg.i.i3 to i8*
  %29 = tail call i32 @puts(i8* nonnull dereferenceable(1) %28)
  ret void
}
define internal fastcc void @return_a_string390(i32 %arg_esp) unnamed_addr  norecurse  !retregs !26 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -308
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517412, i32* %6, align 4
  %tmp2_v.i66.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i66.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i69.i = add i32 %tmp0_v.i.i, -292
  %9 = inttoptr i32 %tmp2_v2.i69.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i70.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i72.i = add i32 %tmp0_v.i.i, -20
  %12 = inttoptr i32 %tmp2_v5.i72.i to i32*
  store i32 %11, i32* %12, align 4
  store i32 134517445, i32* %6, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i.i, -312
  %13 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %13, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -316
  %14 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %spi.bis.388 = ptrtoint[4 x i8]* @str.bis.388 to i32
  store i32 %spi.bis.388, i32* %14, align 4
  %15 = load i32, i32* %13, align 8
  %tmp2_v.i24.i = add i32 %15, -280
  %16 = inttoptr i32 %tmp2_v.i24.i to i32*
  %spi.bis.387 = ptrtoint[7 x i8]* @str.bis.387 to i32
  store i32 %spi.bis.387, i32* %16, align 4
  %spi.bis.386 = ptrtoint[7 x i8]* @str.bis.386 to i32
  store i32 %spi.bis.386, i32* %14, align 4
  %tmp2_v5.i33.i = add i32 %tmp0_v.i.i, -320
  %17 = inttoptr i32 %tmp2_v5.i33.i to i32*
  %spi.bis.385 = ptrtoint[10 x i8]* @str.bis.385 to i32
  store i32 %spi.bis.385, i32* %17, align 16
  %tmp2_v6.i34.i = add i32 %tmp0_v.i.i, -324
  %18 = inttoptr i32 %tmp2_v6.i34.i to i32*
  store i32 134517472, i32* %18, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v5.i33.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  store i32 134517480, i32* %6, align 4
  store i32 %15, i32* %13, align 8
  %tmp2_v1.i.i.i5 = add i32 %tmp0_v.i.i, -340
  %20 = inttoptr i32 %tmp2_v1.i.i.i5 to i32*
  %spi.bis.384 = ptrtoint[4 x i8]* @str.bis.384 to i32
  store i32 %spi.bis.384, i32* %20, align 4
  %tmp4_v.i4.i.b.i = load i1, i1* @segs.0, align 1
  %21 = inttoptr i32 %arg_esp to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %18, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i.i, -328
  %23 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 7959156, i32* %23, align 8
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %21, align 4
  %tmp0_v8.i.i.i = xor i32 %25, %24
  %26 = load i32, i32* %13, align 8
  %tmp2_v.i8.i = add i32 %26, -276
  %27 = inttoptr i32 %tmp2_v.i8.i to i32*
  store i32 0, i32* %27, align 4
  store i32 0, i32* %14, align 4
  %spi.bis.383 = ptrtoint[10 x i8]* @str.bis.383 to i32
  store i32 %spi.bis.383, i32* %17, align 16
  store i32 134517507, i32* %18, align 4
  %28 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %tmp0_v8.i.i.i, i32 noundef %tmp2_v5.i33.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %tmp2_v.i21.i = add i32 %26, -268
  store i32 %tmp2_v.i21.i, i32* %17, align 16
  store i32 134517525, i32* %18, align 4
  store i32 %26, i32* %23, align 8
  %tmp2_v1.i.i.i9 = add i32 %tmp0_v.i.i, -332
  %31 = inttoptr i32 %tmp2_v1.i.i.i9 to i32*
  %spi.bis.382 = ptrtoint[4 x i8]* @str.bis.382 to i32
  store i32 %spi.bis.382, i32* %31, align 4
  %32 = load i32, i32* %17, align 16
  %33 = inttoptr i32 %32 to i32*
  store i32 1752458605, i32* %33, align 4
  %tmp2_v2.i.i.i10 = add i32 %32, 4
  %34 = inttoptr i32 %tmp2_v2.i.i.i10 to i32*
  store i32 540238959, i32* %34, align 4
  %tmp2_v3.i.i.i11 = add i32 %32, 8
  %35 = inttoptr i32 %tmp2_v3.i.i.i11 to i32*
  store i32 1769108595, i32* %35, align 4
  %tmp2_v4.i.i.i = add i32 %32, 12
  %36 = inttoptr i32 %tmp2_v4.i.i.i to i16*
  store i16 26478, i16* %36, align 2
  %tmp2_v5.i.i.i = add i32 %32, 14
  %37 = inttoptr i32 %tmp2_v5.i.i.i to i8*
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %23, align 8
  %tmp2_v.i59.i = add i32 %38, -268
  store i32 %tmp2_v.i59.i, i32* %14, align 4
  %spi.bis.381 = ptrtoint[9 x i8]* @str.bis.381 to i32
  store i32 %spi.bis.381, i32* %17, align 16
  store i32 134517550, i32* %18, align 4
  %39 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %30, i32 noundef %tmp2_v5.i33.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %40 = lshr i64 %39, 32
  %41 = trunc i64 %40 to i32
  store i32 134517558, i32* %6, align 4
  store i32 %38, i32* %13, align 8
  store i32 134529024, i32* %14, align 4
  store i32 134517793, i32* %20, align 4
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i.i, -352
  %42 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 8, i32* %42, align 16
  %tmp2_v2.i.i.i14 = add i32 %tmp0_v.i.i, -356
  %43 = inttoptr i32 %tmp2_v2.i.i.i14 to i32*
  store i32 134517810, i32* %43, align 4
  %arg.i.i.i = load i32, i32* %42, align 16
  %44 = tail call i32 @malloc(i32 %arg.i.i.i)
  store i32 %44, i32* %18, align 4
  %45 = inttoptr i32 %44 to i32*
  store i32 1634629988, i32* %45, align 4
  %tmp2_v3.i.i.i16 = add i32 %44, 4
  %46 = inttoptr i32 %tmp2_v3.i.i.i16 to i32*
  store i32 6515053, i32* %46, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %13, align 8
  %tmp2_v.i44.i = add i32 %49, -272
  %50 = inttoptr i32 %tmp2_v.i44.i to i32*
  store i32 %47, i32* %50, align 4
  store i32 %47, i32* %14, align 4
  %tmp2_v4.i52.i = add i32 %48, -8155
  store i32 %tmp2_v4.i52.i, i32* %17, align 16
  store i32 134517585, i32* %18, align 4
  %51 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef %41, i32 noundef %tmp2_v5.i33.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %17, align 16
  store i32 134517602, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 16
  tail call void @free(i32 %arg.i.i)
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
!26 = !{i32 0, i32 0, i32 0, i32 0}
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
!49 = !{!"double", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !50, i64 0}
!54 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
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
!68 = !{i32 0, i32 0, i32 0, i32 0}
!69 = !{!"printf"}
!70 = !{!"clang version 14.0.0"}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 7, !"PIC Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{i32 1, !"NumRegisterParameters", i32 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"double", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C++ TBAA"}
!80 = !{!81, !81, i64 0}
!81 = !{!"int", !78, i64 0}
!82 = !{i32 0, i32 0, i32 0, i32 0}
!83 = !{!"printf"}
