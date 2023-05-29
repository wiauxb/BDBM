; Mutation 29
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack1021 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem10 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @llvm.abs.i32(i32, i1 immarg)  nofree nosync nounwind readnone speculatable willreturn 
@stack36 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem8 = internal global [1024 x i8] zeroinitializer, align 1
@stack206 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem6 = internal global [1024 x i8] zeroinitializer, align 1
@stack729 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @rand() local_unnamed_addr  noinline 
declare void @srand(i32) local_unnamed_addr  noinline 
declare i32 @time(i32) local_unnamed_addr  noinline 
@stack339 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem3 = internal global [1024 x i8] zeroinitializer, align 1
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 
declare i32 @malloc(i32) local_unnamed_addr  noinline 

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
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %tmp2_v.i45.i = add i32 %arg_esp, 4
  %tmp0_v.i46.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i46.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i48.i = add i32 %tmp0_v.i46.i, -8
  %3 = inttoptr i32 %tmp2_v4.i48.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i50.i = add i32 %tmp0_v.i46.i, -12
  %4 = inttoptr i32 %tmp2_v5.i50.i to i32*
  store i32 0, i32* %4, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @split_even_odd340 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack339, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v6.i52.i = add i32 %tmp0_v.i46.i, -16
  %5 = inttoptr i32 %tmp2_v6.i52.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i54.i = add i32 %tmp0_v.i46.i, -20
  %6 = inttoptr i32 %tmp2_v7.i54.i to i32*
  store i32 %tmp2_v.i45.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i46.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i46.i, -44
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %cipher.ptr.21 = alloca [5 x i8]
  store [5 x i8] c"\4d\51\41\3d\00", [5 x i8]* %cipher.ptr.21
  %cipher.21 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.21, i32 0, i32 0
  %plain.ptr.21 = tail call i8* @base64_decode(i8* %cipher.21)
  %spi21 = ptrtoint i8* %plain.ptr.21 to i32
  store i32 %spi21, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i.i = add i32 %tmp0_v.i46.i, -48
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i46.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @find_array_max_recursive207 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack206, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i.i = icmp eq i32 %15, 0
  br i1 %.not.i.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i46.i, -40
  %16 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i48.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i46.i, -68
  %17 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
  %cipher.ptr.22 = alloca [9 x i8]
  store [9 x i8] c"\42\56\6f\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.22
  %cipher.22 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.22, i32 0, i32 0
  %plain.ptr.22 = tail call i8* @base64_decode(i8* %cipher.22)
  %spi22 = ptrtoint i8* %plain.ptr.22 to i32
  store i32 %spi22, i32* %17, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i46.i, -56
  %18 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
  %cipher.ptr.23 = alloca [21 x i8]
  store [21 x i8] c"\53\53\42\68\62\53\42\6c\64\6d\6c\73\49\53\45\68\43\67\41\3d\00", [21 x i8]* %cipher.ptr.23
  %cipher.23 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.23, i32 0, i32 0
  %plain.ptr.23 = tail call i8* @base64_decode(i8* %cipher.23)
  %spi23 = ptrtoint i8* %plain.ptr.23 to i32
  store i32 %spi23, i32* %18, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %cipher.ptr.24 = alloca [13 x i8]
  store [13 x i8] c"\51\6e\6c\6c\49\45\4a\35\5a\51\6f\41\00", [13 x i8]* %cipher.ptr.24
  %cipher.24 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.24, i32 0, i32 0
  %plain.ptr.24 = tail call i8* @base64_decode(i8* %cipher.24)
  %spi24 = ptrtoint i8* %plain.ptr.24 to i32
  store i32 %spi24, i32* %14, align 4
;-------------------------------
  %19 = load i32, i32* %18, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i46.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i46.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
  %cipher.ptr.25 = alloca [5 x i8]
  store [5 x i8] c"\4a\58\4d\41\00", [5 x i8]* %cipher.ptr.25
  %cipher.25 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.25, i32 0, i32 0
  %plain.ptr.25 = tail call i8* @base64_decode(i8* %cipher.25)
  %spi25 = ptrtoint i8* %plain.ptr.25 to i32
  store i32 %spi25, i32* %21, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i46.i, -84
  %22 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i45.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %24 = load i32, i32* %8, align 4
  %tmp0_v1.i12.i = add i32 %24, 4
  %25 = inttoptr i32 %tmp0_v1.i12.i to i32*
  %26 = load i32, i32* %25, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %cipher.ptr.26 = alloca [5 x i8]
  store [5 x i8] c"\4d\77\41\3d\00", [5 x i8]* %cipher.ptr.26
  %cipher.26 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.26, i32 0, i32 0
  %plain.ptr.26 = tail call i8* @base64_decode(i8* %cipher.26)
  %spi26 = ptrtoint i8* %plain.ptr.26 to i32
  store i32 %spi26, i32* %12, align 4
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @random730 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack729, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %26, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %arg2.i.i6 = load i32, i32* %12, align 4
  %27 = tail call i32 @strcmp(i32 %arg.i.i5, i32 %arg2.i.i6)
  %.not.i4.i = icmp eq i32 %27, 0
  br i1 %.not.i4.i, label %BB_8049472.i, label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @elems_closest_to_zero1022 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack1021, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i46.i, -40
  %28 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i48.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i46.i, -84
  %29 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517482, i32* %29, align 4
  %tmp4_v.i20.i.b.i = load i1, i1* @segs.0, align 1
  %30 = select i1 %tmp4_v.i20.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i46.i, -92
  %32 = inttoptr i32 %tmp2_v5.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
  %cipher.ptr.27 = alloca [5 x i8]
  store [5 x i8] c"\64\79\73\41\00", [5 x i8]* %cipher.ptr.27
  %cipher.27 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.27, i32 0, i32 0
  %plain.ptr.27 = tail call i8* @base64_decode(i8* %cipher.27)
  %spi27 = ptrtoint i8* %plain.ptr.27 to i32
  store i32 %spi27, i32* %32, align 4
;-------------------------------
  %tmp2_v7.i.i.i9 = add i32 %tmp0_v.i46.i, -96
  %33 = inttoptr i32 %tmp2_v7.i.i.i9 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
  %cipher.ptr.28 = alloca [21 x i8]
  store [21 x i8] c"\64\47\56\34\64\46\39\6d\61\57\78\6c\4d\79\35\30\65\48\51\41\00", [21 x i8]* %cipher.ptr.28
  %cipher.28 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.28, i32 0, i32 0
  %plain.ptr.28 = tail call i8* @base64_decode(i8* %cipher.28)
  %spi28 = ptrtoint i8* %plain.ptr.28 to i32
  store i32 %spi28, i32* %33, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i46.i, -100
  %34 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i46.i, -76
  %36 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %35, i32* %36, align 4
  %tmp2_v.i29.i.i = add i32 %tmp0_v.i46.i, -72
  %37 = inttoptr i32 %tmp2_v.i29.i.i to i32*
  store i32 1818304585, i32* %37, align 8
  %tmp2_v1.i30.i.i = add i32 %tmp0_v.i46.i, -68
  %38 = inttoptr i32 %tmp2_v1.i30.i.i to i32*
  store i32 1701995892, i32* %38, align 4
  %tmp2_v2.i31.i.i = add i32 %tmp0_v.i46.i, -64
  %39 = inttoptr i32 %tmp2_v2.i31.i.i to i32*
  store i32 1752440932, i32* %39, align 16
  %tmp2_v3.i.i.i10 = add i32 %tmp0_v.i46.i, -60
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @comments37 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack36, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %40 = inttoptr i32 %tmp2_v3.i.i.i10 to i32*
  store i32 1768300645, i32* %40, align 4
  %tmp2_v4.i32.i.i = add i32 %tmp0_v.i46.i, -56
  %41 = inttoptr i32 %tmp2_v4.i32.i.i to i32*
  store i32 2188652, i32* %41, align 8
  %42 = load i32, i32* %36, align 4
  store i32 %42, i32* %29, align 4
  %tmp2_v7.i37.i.i = add i32 %tmp0_v.i46.i, -88
  %43 = inttoptr i32 %tmp2_v7.i37.i.i to i32*
  store i32 20, i32* %43, align 8
  store i32 1, i32* %32, align 4
  store i32 %tmp2_v.i29.i.i, i32* %33, align 16
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

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %47 = load i32, i32* %8, align 4
  %tmp0_v1.i35.i = add i32 %47, 4
  %48 = inttoptr i32 %tmp0_v1.i35.i to i32*
  %49 = load i32, i32* %48, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %cipher.ptr.29 = alloca [5 x i8]
  store [5 x i8] c"\4d\67\41\3d\00", [5 x i8]* %cipher.ptr.29
  %cipher.29 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.29, i32 0, i32 0
  %plain.ptr.29 = tail call i8* @base64_decode(i8* %cipher.29)
  %spi29 = ptrtoint i8* %plain.ptr.29 to i32
  store i32 %spi29, i32* %12, align 4
;-------------------------------
  store i32 %49, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i11 = load i32, i32* %13, align 16
  %arg2.i.i12 = load i32, i32* %12, align 4
  %50 = tail call i32 @strcmp(i32 %arg.i.i11, i32 %arg2.i.i12)
  %.not.i30.i = icmp eq i32 %50, 0
  br i1 %.not.i30.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i46.i, -40
  %51 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %tmp2_v4.i48.i, i32* %51, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i46.i, -68
  %52 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  store i32 134517678, i32* %52, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i16 = add i32 %tmp0_v.i46.i, -72
  %53 = inttoptr i32 %tmp2_v2.i.i.i16 to i32*
  store i32 0, i32* %53, align 8
  %tmp2_v3.i.i.i17 = add i32 %tmp0_v.i46.i, -76
  %54 = inttoptr i32 %tmp2_v3.i.i.i17 to i32*
  store i32 1, i32* %54, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i46.i, -80
  %55 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %55, align 16
  %tmp2_v5.i.i.i18 = add i32 %tmp0_v.i46.i, -84
  %56 = inttoptr i32 %tmp2_v5.i.i.i18 to i32*
  store i32 134517705, i32* %56, align 4
  %arg.i.i.i19 = load i32, i32* %55, align 16
  %arg2.i.i.i20 = load i32, i32* %54, align 4
  %arg4.i.i.i21 = load i32, i32* %53, align 8
  %57 = tail call i32 @socket(i32 %arg.i.i.i19, i32 %arg2.i.i.i20, i32 %arg4.i.i.i21)
  store i32 %57, i32* %14, align 4
  store i32 %57, i32* %55, align 16
  store i32 134517722, i32* %56, align 4
  %arg.i.i3.i = load i32, i32* %55, align 16
  %58 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

.exit:                                            ; preds = %BB_8049472.i, %BB_804944C.i, %BB_8049453.i, %BB_8049426.i
  ret void
}

define internal fastcc void @elems_closest_to_zero1022(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !83 {
.exit:
  %tmp2_v.i15.i = add i32 %arg_esp, 4
  %tmp0_v.i16.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i16.i, -4
  %2 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i16.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i19.i = add i32 %tmp0_v.i16.i, -12
  %4 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 %tmp2_v.i15.i, i32* %4, align 4
  %tmp2_v7.i20.i = add i32 %tmp0_v.i16.i, -84
  %5 = inttoptr i32 %tmp2_v7.i20.i to i32*
;-------------------------------
; Replace: %spi.bis.1020 = ptrtoint[4 x i8]* @str.bis.1020 to i32
  %cipher.ptr.14 = alloca [9 x i8]
  store [9 x i8] c"\42\54\41\75\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.14
  %cipher.14 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.14, i32 0, i32 0
  %plain.ptr.14 = tail call i8* @base64_decode(i8* %cipher.14)
  %spi14 = bitcast i8* %plain.ptr.14 to [4 x i8]*
  %spi.bis.1020 = ptrtoint[4 x i8]* %spi14 to i32
;-------------------------------
  store i32 %spi.bis.1020, i32* %5, align 4
  %tmp2_v.i2.i = add i32 %arg_esp, 8
  %6 = inttoptr i32 %tmp2_v.i2.i to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i5.i = add i32 %tmp0_v.i16.i, -68
  %8 = inttoptr i32 %tmp2_v2.i5.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %9 = inttoptr i32 %arg_esp to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i16.i, -20
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i16.i, -60
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 25, i32* %12, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i16.i, -56
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 42, i32* %13, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i16.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 -31, i32* %14, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i16.i, -48
  %15 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 12, i32* %15, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i16.i, -44
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 55, i32* %16, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i16.i, -40
  %17 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 -20, i32* %17, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i16.i, -36
  %18 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 -18, i32* %18, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i16.i, -32
  %19 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 -48, i32* %19, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i16.i, -28
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 16, i32* %20, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i16.i, -24
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 34, i32* %21, align 8
  %tmp2_v17.i.i = add i32 %tmp0_v.i16.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 10, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i16.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v6.i.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i16.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517308, i32* %24, align 4
  %tmp2_v.i30.i.i = add i32 %tmp0_v.i16.i, -104
  %25 = inttoptr i32 %tmp2_v.i30.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %25, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i16.i, -108
  %26 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %26, align 4
  %tmp2_v2.i34.i.i = add i32 %tmp0_v.i16.i, -148
  %27 = inttoptr i32 %tmp2_v2.i34.i.i to i32*
  store i32 134517357, i32* %27, align 4
  %28 = load i32, i32* %23, align 16
  %29 = inttoptr i32 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %tmp0_v4.i77.i.i = add i32 %28, 4
  %31 = inttoptr i32 %tmp0_v4.i77.i.i to i32*
  %32 = load i32, i32* %31, align 4
  %tmp0_v6.i79.i.i = add i32 %32, %30
  %tmp2_v7.i80.i.i = add i32 %tmp0_v.i16.i, -136
  %33 = inttoptr i32 %tmp2_v7.i80.i.i to i32*
  store i32 %tmp0_v6.i79.i.i, i32* %33, align 8
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i16.i, -132
  %34 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 0, i32* %34, align 4
  %tmp2_v9.i81.i.i = add i32 %tmp0_v.i16.i, -128
  %35 = inttoptr i32 %tmp2_v9.i81.i.i to i32*
  store i32 1, i32* %35, align 16
  %tmp2_v10.i82.i.i = add i32 %tmp0_v.i16.i, -124
  %36 = inttoptr i32 %tmp2_v10.i82.i.i to i32*
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %22, align 4
  %tmp0_v1.i125.i9.i = add i32 %37, -1
  %38 = icmp sgt i32 %tmp0_v1.i125.i9.i, 0
  br i1 %38, label %BB_80492A6.i.lr.ph.i, label %Func_find_min_sum_pair.exit

BB_80492A6.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i16.i, -120
  %39 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  %tmp2_v13.i118.i.i = add i32 %tmp0_v.i16.i, -116
  %40 = inttoptr i32 %tmp2_v13.i118.i.i to i32*
  br label %BB_80492A6.i.i

BB_80492A6.i.i:                                   ; preds = %BB_8049316.i.i, %BB_80492A6.i.lr.ph.i
  %storemerge2.in5.i = phi i32 [ 0, %BB_80492A6.i.lr.ph.i ], [ %tmp0_v1.i15.i.i, %BB_8049316.i.i ]
  %r_edx.111.i = phi i32 [ %30, %BB_80492A6.i.lr.ph.i ], [ %r_edx.0.lcssa.i, %BB_8049316.i.i ]
  %r_ecx.110.i = phi i32 [ %tmp2_v.i15.i, %BB_80492A6.i.lr.ph.i ], [ %r_ecx.0.lcssa.i, %BB_8049316.i.i ]
  %storemerge26.i = add nsw i32 %storemerge2.in5.i, 1
  store i32 %storemerge26.i, i32* %39, align 8
  %41 = load i32, i32* %22, align 4
  %42 = icmp slt i32 %storemerge26.i, %41
  br i1 %42, label %BB_80492B1.i.i, label %BB_8049316.i.i

BB_804930A.i.i:                                   ; preds = %BB_80492B1.i.i, %BB_80492F8.i.i
  %storemerge2.in.i = load i32, i32* %39, align 8
  %storemerge2.i = add i32 %storemerge2.in.i, 1
  store i32 %storemerge2.i, i32* %39, align 8
  %43 = load i32, i32* %22, align 4
  %44 = icmp slt i32 %storemerge2.i, %43
  br i1 %44, label %BB_80492B1.i.i, label %BB_8049316.i.i

BB_8049316.i.i:                                   ; preds = %BB_804930A.i.i, %BB_80492A6.i.i
  %r_ecx.0.lcssa.i = phi i32 [ %r_ecx.110.i, %BB_80492A6.i.i ], [ %tmp0_v23.i.i.i, %BB_804930A.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ %r_edx.111.i, %BB_80492A6.i.i ], [ %56, %BB_804930A.i.i ]
  %45 = load i32, i32* %36, align 4
  %tmp0_v1.i15.i.i = add i32 %45, 1
  store i32 %tmp0_v1.i15.i.i, i32* %36, align 4
  %46 = load i32, i32* %22, align 4
  %tmp0_v1.i125.i.i = add i32 %46, -1
  %47 = icmp slt i32 %tmp0_v1.i15.i.i, %tmp0_v1.i125.i.i
  br i1 %47, label %BB_80492A6.i.i, label %Func_find_min_sum_pair.exit

BB_80492F8.i.i:                                   ; preds = %BB_80492B1.i.i
  store i32 %tmp0_v12.i117.i.i, i32* %33, align 8
  %48 = load i32, i32* %36, align 4
  store i32 %48, i32* %34, align 4
  %49 = load i32, i32* %39, align 8
  store i32 %49, i32* %35, align 16
  br label %BB_804930A.i.i

BB_80492B1.i.i:                                   ; preds = %BB_804930A.i.i, %BB_80492A6.i.i
  %storemerge27.i = phi i32 [ %storemerge2.i, %BB_804930A.i.i ], [ %storemerge26.i, %BB_80492A6.i.i ]
  %50 = load i32, i32* %36, align 4
  %tmp4_v.i107.i.i = shl i32 %50, 2
  %51 = load i32, i32* %23, align 16
  %tmp0_v3.i110.i.i = add i32 %51, %tmp4_v.i107.i.i
  %52 = inttoptr i32 %tmp0_v3.i110.i.i to i32*
  %53 = load i32, i32* %52, align 4
  %tmp4_v7.i.i.i = shl i32 %storemerge27.i, 2
  %tmp0_v10.i116.i.i = add i32 %51, %tmp4_v7.i.i.i
  %54 = inttoptr i32 %tmp0_v10.i116.i.i to i32*
  %55 = load i32, i32* %54, align 4
  %tmp0_v12.i117.i.i = add i32 %55, %53
  store i32 %tmp0_v12.i117.i.i, i32* %40, align 4
  %56 = tail call i32 @llvm.abs.i32(i32 %tmp0_v12.i117.i.i, i1 false)  nounwind 
  %57 = load i32, i32* %33, align 8
  %tmp0_v23.i.i.i = ashr i32 %57, 31
  %tmp0_v26.i.i.i = xor i32 %tmp0_v23.i.i.i, %57
  %tmp0_v27.i.i.i = sub i32 %tmp0_v26.i.i.i, %tmp0_v23.i.i.i
  %.not.i.i.i = icmp slt i32 %56, %tmp0_v27.i.i.i
  br i1 %.not.i.i.i, label %BB_80492F8.i.i, label %BB_804930A.i.i

Func_find_min_sum_pair.exit:                      ; preds = %BB_8049316.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i15.i, %.exit ], [ %r_ecx.0.lcssa.i, %BB_8049316.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %30, %.exit ], [ %r_edx.0.lcssa.i, %BB_8049316.i.i ]
  %58 = load i32, i32* %33, align 8
  %tmp2_v2.i40.i.i = add i32 %tmp0_v.i16.i, -156
  %59 = inttoptr i32 %tmp2_v2.i40.i.i to i32*
  store i32 %58, i32* %59, align 4
  %tmp2_v4.i42.i.i = add i32 %tmp0_v.i16.i, -160
  %60 = inttoptr i32 %tmp2_v4.i42.i.i to i32*
;-------------------------------
; Replace: %spi.bis.1019 = ptrtoint[13 x i8]* @str.bis.1019 to i32
  %cipher.ptr.13 = alloca [21 x i8]
  store [21 x i8] c"\54\57\6c\75\49\46\4e\31\62\54\6f\67\4a\57\51\4b\41\41\3d\3d\00", [21 x i8]* %cipher.ptr.13
  %cipher.13 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.13, i32 0, i32 0
  %plain.ptr.13 = tail call i8* @base64_decode(i8* %cipher.13)
  %spi13 = bitcast i8* %plain.ptr.13 to [13 x i8]*
  %spi.bis.1019 = ptrtoint[13 x i8]* %spi13 to i32
;-------------------------------
  store i32 %spi.bis.1019, i32* %60, align 16
  %tmp2_v5.i43.i.i = add i32 %tmp0_v.i16.i, -164
  %61 = inttoptr i32 %tmp2_v5.i43.i.i to i32*
  store i32 134517559, i32* %61, align 4
  %62 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v4.i42.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !84
  %63 = load i32, i32* %34, align 4
  %tmp4_v.i.i.i2 = shl i32 %63, 2
  %64 = load i32, i32* %23, align 16
  %tmp0_v4.i26.i.i = add i32 %64, %tmp4_v.i.i.i2
  %65 = inttoptr i32 %tmp0_v4.i26.i.i to i32*
  %66 = load i32, i32* %65, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i16.i, -152
  %67 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %63, i32* %67, align 8
  store i32 %66, i32* %59, align 4
;-------------------------------
; Replace: %spi.bis.1018 = ptrtoint[33 x i8]* @str.bis.1018 to i32
  %cipher.ptr.12 = alloca [45 x i8]
  store [45 x i8] c"\56\6d\46\73\64\57\55\78\4f\69\41\6c\5a\43\41\6f\62\32\4e\6a\64\58\4a\7a\49\47\46\30\49\47\6c\75\5a\47\56\34\49\43\56\6b\4b\51\6f\41\00", [45 x i8]* %cipher.ptr.12
  %cipher.12 = getelementptr inbounds [45 x i8], [45 x i8]* %cipher.ptr.12, i32 0, i32 0
  %plain.ptr.12 = tail call i8* @base64_decode(i8* %cipher.12)
  %spi12 = bitcast i8* %plain.ptr.12 to [33 x i8]*
  %spi.bis.1018 = ptrtoint[33 x i8]* %spi12 to i32
;-------------------------------
  store i32 %spi.bis.1018, i32* %60, align 16
  store i32 134517598, i32* %61, align 4
  %68 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp4_v.i.i.i2, i32 noundef %tmp2_v4.i42.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !84
  %69 = load i32, i32* %35, align 16
  %tmp4_v.i49.i.i = shl i32 %69, 2
  %70 = load i32, i32* %23, align 16
  %tmp0_v4.i52.i.i = add i32 %70, %tmp4_v.i49.i.i
  %71 = inttoptr i32 %tmp0_v4.i52.i.i to i32*
  %72 = load i32, i32* %71, align 4
  store i32 %69, i32* %67, align 8
  store i32 %72, i32* %59, align 4
;-------------------------------
; Replace: %spi.bis.1017 = ptrtoint[33 x i8]* @str.bis.1017 to i32
  %cipher.ptr.11 = alloca [45 x i8]
  store [45 x i8] c"\56\6d\46\73\64\57\55\79\4f\69\41\6c\5a\43\41\6f\62\32\4e\6a\64\58\4a\7a\49\47\46\30\49\47\6c\75\5a\47\56\34\49\43\56\6b\4b\51\6f\41\00", [45 x i8]* %cipher.ptr.11
  %cipher.11 = getelementptr inbounds [45 x i8], [45 x i8]* %cipher.ptr.11, i32 0, i32 0
  %plain.ptr.11 = tail call i8* @base64_decode(i8* %cipher.11)
  %spi11 = bitcast i8* %plain.ptr.11 to [33 x i8]*
  %spi.bis.1017 = ptrtoint[33 x i8]* %spi11 to i32
;-------------------------------
  store i32 %spi.bis.1017, i32* %60, align 16
  store i32 134517637, i32* %61, align 4
  %73 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp4_v.i49.i.i, i32 noundef %tmp2_v4.i42.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !84
  ret void
}
define internal fastcc void @comments37(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !69 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -84
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i4.i = add i32 %tmp0_v.i.i, -60
  %11 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 0, i32* %11, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i.i, -56
  %12 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 1, i32* %12, align 8
  %tmp2_v5.i6.i = add i32 %tmp0_v.i.i, -52
  %13 = inttoptr i32 %tmp2_v5.i6.i to i32*
  store i32 2, i32* %13, align 4
  %tmp2_v6.i7.i = add i32 %tmp0_v.i.i, -48
  %14 = inttoptr i32 %tmp2_v6.i7.i to i32*
  store i32 3, i32* %14, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -44
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 4, i32* %15, align 4
  %tmp2_v8.i8.i = add i32 %tmp0_v.i.i, -40
  %16 = inttoptr i32 %tmp2_v8.i8.i to i32*
  store i32 5, i32* %16, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -36
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -32
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 7, i32* %18, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -28
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 8, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 9, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -68
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 0, i32* %21, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i.i, -64
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 0, i32* %22, align 16
  br label %BB_8049238.i

BB_804924C.i:                                     ; preds = %BB_8049238.i
  %23 = load i32, i32* %21, align 4
  %tmp16_v.i.i = sext i32 %23 to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 1717986919
  %tmp15_v1.i.i = lshr i64 %tmp15_v.i.i, 32
  %24 = trunc i64 %tmp15_v1.i.i to i32
  %tmp0_v3.i19.i = ashr i32 %24, 2
  %tmp0_v4.i.i.neg = lshr i32 %23, 31
  %tmp0_v5.i.i = add nsw i32 %tmp0_v3.i19.i, %tmp0_v4.i.i.neg
  %tmp2_v7.i21.i = add i32 %tmp0_v.i.i, -92
  %25 = inttoptr i32 %tmp2_v7.i21.i to i32*
  store i32 %tmp0_v5.i.i, i32* %25, align 4
  %tmp2_v9.i24.i = add i32 %tmp0_v.i.i, -96
  %26 = inttoptr i32 %tmp2_v9.i24.i to i32*
;-------------------------------
; Replace: %spi.bis.35 = ptrtoint[13 x i8]* @str.bis.35 to i32
  %cipher.ptr.15 = alloca [21 x i8]
  store [21 x i8] c"\51\58\5a\6c\63\6d\46\6e\5a\54\6f\67\4a\57\51\4b\41\41\3d\3d\00", [21 x i8]* %cipher.ptr.15
  %cipher.15 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.15, i32 0, i32 0
  %plain.ptr.15 = tail call i8* @base64_decode(i8* %cipher.15)
  %spi15 = bitcast i8* %plain.ptr.15 to [13 x i8]*
  %spi.bis.35 = ptrtoint[13 x i8]* %spi15 to i32
;-------------------------------
  store i32 %spi.bis.35, i32* %26, align 16
  %tmp2_v10.i25.i = add i32 %tmp0_v.i.i, -100
  %27 = inttoptr i32 %tmp2_v10.i25.i to i32*
  store i32 134517366, i32* %27, align 4
  %28 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 134529024, i32 inreg noundef %tmp0_v5.i.i, i32 noundef %tmp2_v9.i24.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !70
  ret void

BB_8049238.i:                                     ; preds = %BB_8049238.i, %0
  %storemerge1 = phi i32 [ 0, %0 ], [ %tmp0_v9.i.i, %BB_8049238.i ]
  %tmp4_v.i37.i = shl i32 %storemerge1, 2
  %tmp2_v2.i38.i = add i32 %tmp4_v.i37.i, %tmp2_v3.i4.i
  %29 = inttoptr i32 %tmp2_v2.i38.i to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %21, align 4
  %tmp0_v6.i42.i = add i32 %31, %30
  store i32 %tmp0_v6.i42.i, i32* %21, align 4
  %32 = load i32, i32* %22, align 16
  %tmp0_v9.i.i = add i32 %32, 1
  store i32 %tmp0_v9.i.i, i32* %22, align 16
  %33 = icmp slt i32 %tmp0_v9.i.i, 10
  br i1 %33, label %BB_8049238.i, label %BB_804924C.i
}
define internal fastcc { i32, i32, i32, i32 } @Func_max(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !54 {
Func_8049283.exit.i:
  %tmp2_v.i23.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i23.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i26.i = add i32 %arg_esp, -32
  %1 = inttoptr i32 %tmp2_v1.i26.i to i32*
  store i32 134517379, i32* %1, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i.i to i32*
  %3 = load i32, i32* %2, align 4
  %.not.i.i = icmp eq i32 %3, 1
  br i1 %.not.i.i, label %BB_804928E.i, label %BB_80492A6.i

BB_804928E.i:                                     ; preds = %Func_8049283.exit.i
  %tmp2_v2.i.i = add i32 %arg_esp, 4
  %4 = inttoptr i32 %tmp2_v2.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %6 = inttoptr i32 %5 to i32*
  %.pre18 = add i32 %arg_esp, 4
  br label %.exit

BB_80492A6.i:                                     ; preds = %Func_8049283.exit.i
  %tmp0_v1.i30.i = add i32 %3, -1
  %tmp2_v3.i.i = add i32 %arg_esp, -40
  %7 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %tmp0_v1.i30.i, i32* %7, align 4
  %tmp2_v4.i33.i = add i32 %arg_esp, 4
  %8 = inttoptr i32 %tmp2_v4.i33.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v6.i.i = add i32 %arg_esp, -44
  %10 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v7.i.i = add i32 %arg_esp, -48
  %11 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517432, i32* %11, align 4
  %12 = tail call fastcc { i32, i32, i32, i32 } @Func_max(i32 %tmp2_v7.i.i, i32 %tmp2_v.i23.i)
  %13 = extractvalue { i32, i32, i32, i32 } %12, 1
  %14 = extractvalue { i32, i32, i32, i32 } %12, 3
  %tmp2_v.i6.i = add i32 %14, -12
  %15 = inttoptr i32 %tmp2_v.i6.i to i32*
  store i32 %13, i32* %15, align 4
  %tmp2_v1.i.i = add i32 %14, 12
  %16 = inttoptr i32 %tmp2_v1.i.i to i32*
  %17 = load i32, i32* %16, align 4
  %tmp0_v3.i.i = shl i32 %17, 2
  %tmp4_v.i8.i = add i32 %tmp0_v3.i.i, -4
  %tmp2_v4.i.i = add i32 %14, 8
  %18 = inttoptr i32 %tmp2_v4.i.i to i32*
  %19 = load i32, i32* %18, align 4
  %tmp0_v6.i.i = add i32 %tmp4_v.i8.i, %19
  %20 = inttoptr i32 %tmp0_v6.i.i to i32*
  %21 = load i32, i32* %20, align 4
  %.not.i10.i = icmp sgt i32 %13, %21
  %spec.select = select i1 %.not.i10.i, i32* %15, i32* %20
  %.pre = inttoptr i32 %14 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_80492A6.i, %BB_804928E.i
  %tmp4_v2.i.i.pre-phi = phi i32 [ %tmp2_v4.i.i, %BB_80492A6.i ], [ %.pre18, %BB_804928E.i ]
  %.pre-phi = phi i32* [ %.pre, %BB_80492A6.i ], [ %0, %BB_804928E.i ]
  %r_eax.0.in = phi i32* [ %spec.select, %BB_80492A6.i ], [ %6, %BB_804928E.i ]
  %r_edx.0 = phi i32 [ %tmp4_v.i8.i, %BB_80492A6.i ], [ 0, %BB_804928E.i ]
  %r_eax.0 = load i32, i32* %r_eax.0.in, align 4
  %22 = load i32, i32* %.pre-phi, align 4
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %tmp4_v2.i.i.pre-phi, 0
  %mrv1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32, i32 } %mrv1, i32 %r_edx.0, 2
  %mrv3 = insertvalue { i32, i32, i32, i32 } %mrv2, i32 %22, 3
  ret { i32, i32, i32, i32 } %mrv3
}
define internal fastcc void @find_array_max_recursive207(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !55 {
.exit:
  %tmp2_v.i7.i = add i32 %arg_esp, 4
  %tmp0_v.i8.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i8.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i9.i = add i32 %tmp0_v.i8.i, -8
  %3 = inttoptr i32 %tmp2_v4.i9.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i8.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i8.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i7.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i8.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i21.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i25.i = add i32 %tmp0_v.i8.i, -20
  %9 = inttoptr i32 %tmp2_v2.i25.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i26.i = add i32 %tmp0_v.i8.i, -60
  %10 = inttoptr i32 %tmp2_v3.i26.i to i32*
  store i32 4, i32* %10, align 4
  %tmp2_v4.i27.i = add i32 %tmp0_v.i8.i, -56
  %11 = inttoptr i32 %tmp2_v4.i27.i to i32*
  store i32 1, i32* %11, align 8
  %tmp2_v5.i28.i = add i32 %tmp0_v.i8.i, -52
  %12 = inttoptr i32 %tmp2_v5.i28.i to i32*
  store i32 8, i32* %12, align 4
  %tmp2_v6.i29.i = add i32 %tmp0_v.i8.i, -48
  %13 = inttoptr i32 %tmp2_v6.i29.i to i32*
  store i32 6, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i8.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 0, i32* %14, align 4
  %tmp2_v8.i30.i = add i32 %tmp0_v.i8.i, -40
  %15 = inttoptr i32 %tmp2_v8.i30.i to i32*
  store i32 9, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i8.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 5, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i8.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i8.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 3, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i8.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 7, i32* %19, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i8.i, -64
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %20, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i8.i, -76
  %21 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 10, i32* %21, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i8.i, -80
  %22 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i26.i, i32* %22, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i8.i, -84
  %23 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517310, i32* %23, align 4
  %24 = tail call fastcc { i32, i32, i32, i32 } @Func_max(i32 %tmp2_v20.i.i, i32 %tmp2_v4.i9.i)
  %25 = extractvalue { i32, i32, i32, i32 } %24, 0
  %26 = extractvalue { i32, i32, i32, i32 } %24, 1
  %27 = extractvalue { i32, i32, i32, i32 } %24, 2
  %tmp2_v.i4.i = add i32 %25, 4
  %28 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %26, i32* %28, align 4
  %29 = inttoptr i32 %25 to i32*
;-------------------------------
; Replace: %spi.bis.205 = ptrtoint[9 x i8]* @str.bis.205 to i32
  %cipher.ptr.16 = alloca [13 x i8]
  store [13 x i8] c"\62\57\46\34\4f\69\41\6c\5a\41\6f\41\00", [13 x i8]* %cipher.ptr.16
  %cipher.16 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.16, i32 0, i32 0
  %plain.ptr.16 = tail call i8* @base64_decode(i8* %cipher.16)
  %spi16 = bitcast i8* %plain.ptr.16 to [9 x i8]*
  %spi.bis.205 = ptrtoint[9 x i8]* %spi16 to i32
;-------------------------------
  store i32 %spi.bis.205, i32* %29, align 4
  %tmp2_v4.i.i = add i32 %25, -4
  %30 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517329, i32* %30, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i7.i, i32 inreg noundef %27, i32 noundef %25, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !56
  ret void
}
define internal fastcc void @random730(i32 %arg_esp) unnamed_addr  norecurse  !retregs !40 {
  %tmp2_v.i3.i = add i32 %arg_esp, 4
  %tmp0_v.i4.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i4.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i4.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i4.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i4.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i3.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i4.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %7, align 4
  %tmp2_v.i33.i = add i32 %tmp0_v.i4.i, -48
  %8 = inttoptr i32 %tmp2_v.i33.i to i32*
  store i32 0, i32* %8, align 16
  %tmp2_v2.i34.i = add i32 %tmp0_v.i4.i, -52
  %9 = inttoptr i32 %tmp2_v2.i34.i to i32*
  store i32 134517281, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = tail call i32 @time(i32 %arg.i.i)
  store i32 %10, i32* %8, align 16
  store i32 134517293, i32* %9, align 4
  %arg.i.i3 = load i32, i32* %8, align 16
  tail call void @srand(i32 %arg.i.i3)
  %tmp2_v.i15.i = add i32 %tmp0_v.i4.i, -24
  %11 = inttoptr i32 %tmp2_v.i15.i to i32*
  store i32 0, i32* %11, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i4.i, -20
  %12 = inttoptr i32 %tmp2_v9.i.i to i32*
  %tmp2_v13.i.i = add i32 %tmp0_v.i4.i, -44
  %13 = inttoptr i32 %tmp2_v13.i.i to i32*
  br label %BB_8049239.i

BB_8049239.i:                                     ; preds = %BB_8049239.i, %0
  store i32 134517310, i32* %7, align 4
  %14 = tail call i32 @rand()
  %tmp16_v.i.i = sext i32 %14 to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 1717986919
  %tmp15_v1.i.i = lshr i64 %tmp15_v.i.i, 32
  %15 = trunc i64 %tmp15_v1.i.i to i32
  %tmp0_v2.i36.i = ashr i32 %15, 3
  %tmp0_v3.i.i.neg = lshr i32 %14, 31
  %tmp0_v4.i37.i = add nsw i32 %tmp0_v2.i36.i, %tmp0_v3.i.i.neg
  %tmp0_v7.i39.i.neg = mul i32 %tmp0_v4.i37.i, -20
  %tmp0_v8.i.i = add i32 %tmp0_v7.i39.i.neg, %14
  %tmp2_v.i40.i = add i32 %tmp0_v8.i.i, 1
  store i32 %tmp2_v.i40.i, i32* %12, align 4
  store i32 %tmp2_v.i40.i, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.728 = ptrtoint[4 x i8]* @str.bis.728 to i32
  %cipher.ptr.18 = alloca [9 x i8]
  store [9 x i8] c"\4a\57\51\4b\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.18
  %cipher.18 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.18, i32 0, i32 0
  %plain.ptr.18 = tail call i8* @base64_decode(i8* %cipher.18)
  %spi18 = bitcast i8* %plain.ptr.18 to [4 x i8]*
  %spi.bis.728 = ptrtoint[4 x i8]* %spi18 to i32
;-------------------------------
  store i32 %spi.bis.728, i32* %8, align 16
  store i32 134517369, i32* %9, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v8.i.i, i32 inreg noundef %tmp0_v8.i.i, i32 noundef %tmp2_v.i33.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  %17 = load i32, i32* %11, align 8
  %tmp0_v2.i24.i = add i32 %17, 1
  store i32 %tmp0_v2.i24.i, i32* %11, align 8
  %18 = icmp slt i32 %tmp0_v2.i24.i, 6
  br i1 %18, label %BB_8049239.i, label %.exit

.exit:                                            ; preds = %BB_8049239.i
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  store i32 2147483647, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.727 = ptrtoint[14 x i8]* @str.bis.727 to i32
  %cipher.ptr.17 = alloca [21 x i8]
  store [21 x i8] c"\55\6b\46\4f\52\46\39\4e\51\56\67\36\49\43\56\6b\43\67\41\3d\00", [21 x i8]* %cipher.ptr.17
  %cipher.17 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.17, i32 0, i32 0
  %plain.ptr.17 = tail call i8* @base64_decode(i8* %cipher.17)
  %spi17 = bitcast i8* %plain.ptr.17 to [14 x i8]*
  %spi.bis.727 = ptrtoint[14 x i8]* %spi17 to i32
;-------------------------------
  store i32 %spi.bis.727, i32* %8, align 16
  store i32 134517402, i32* %9, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v8.i.i, i32 inreg noundef %20, i32 noundef %tmp2_v.i33.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  ret void
}
define internal fastcc void @split_even_odd340(i32 %arg_esp) unnamed_addr  norecurse  !retregs !26 {
helper_divl_EAX.exit.i:
  %tmp2_v.i138.i = add i32 %arg_esp, 4
  %tmp0_v.i139.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i141.i = add i32 %tmp0_v.i139.i, -4
  %2 = inttoptr i32 %tmp2_v3.i141.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i142.i = add i32 %tmp0_v.i139.i, -8
  %3 = inttoptr i32 %tmp2_v4.i142.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i144.i = add i32 %tmp0_v.i139.i, -12
  %4 = inttoptr i32 %tmp2_v5.i144.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i145.i = add i32 %tmp0_v.i139.i, -16
  %5 = inttoptr i32 %tmp2_v6.i145.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i147.i = add i32 %tmp0_v.i139.i, -20
  %6 = inttoptr i32 %tmp2_v7.i147.i to i32*
  store i32 %tmp2_v.i138.i, i32* %6, align 4
  %tmp2_v9.i149.i = add i32 %tmp0_v.i139.i, -148
  %7 = inttoptr i32 %tmp2_v9.i149.i to i32*
  store i32 134517266, i32* %7, align 4
  %tmp4_v.i286.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i290.i = add i32 %tmp0_v.i139.i, -36
  %10 = inttoptr i32 %tmp2_v2.i290.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i292.i = add i32 %tmp0_v.i139.i, -76
  %11 = inttoptr i32 %tmp2_v3.i292.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i293.i = add i32 %tmp0_v.i139.i, -72
  %12 = inttoptr i32 %tmp2_v4.i293.i to i32*
  store i32 2, i32* %12, align 8
  %tmp2_v5.i294.i = add i32 %tmp0_v.i139.i, -68
  %13 = inttoptr i32 %tmp2_v5.i294.i to i32*
  store i32 3, i32* %13, align 4
  %tmp2_v6.i295.i = add i32 %tmp0_v.i139.i, -64
  %14 = inttoptr i32 %tmp2_v6.i295.i to i32*
  store i32 4, i32* %14, align 16
  %tmp2_v7.i296.i = add i32 %tmp0_v.i139.i, -60
  %15 = inttoptr i32 %tmp2_v7.i296.i to i32*
  store i32 5, i32* %15, align 4
  %tmp2_v8.i297.i = add i32 %tmp0_v.i139.i, -56
  %16 = inttoptr i32 %tmp2_v8.i297.i to i32*
  store i32 6, i32* %16, align 8
  %tmp2_v9.i298.i = add i32 %tmp0_v.i139.i, -52
  %17 = inttoptr i32 %tmp2_v9.i298.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i299.i = add i32 %tmp0_v.i139.i, -48
  %18 = inttoptr i32 %tmp2_v10.i299.i to i32*
  store i32 8, i32* %18, align 16
  %tmp2_v11.i300.i = add i32 %tmp0_v.i139.i, -44
  %19 = inttoptr i32 %tmp2_v11.i300.i to i32*
  store i32 9, i32* %19, align 4
  %tmp2_v12.i301.i = add i32 %tmp0_v.i139.i, -40
  %20 = inttoptr i32 %tmp2_v12.i301.i to i32*
  store i32 10, i32* %20, align 8
  %tmp2_v13.i302.i = add i32 %tmp0_v.i139.i, -96
  %21 = inttoptr i32 %tmp2_v13.i302.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i305.i = add i32 %tmp0_v.i139.i, -92
  %22 = inttoptr i32 %tmp2_v17.i305.i to i32*
  store i32 9, i32* %22, align 4
  %tmp0_v1.i118.i = add i32 %tmp0_v.i139.i, -192
  %tmp0_v4.i246.i = add i32 %tmp0_v.i139.i, -189
  %tmp0_v6.i249.i = and i32 %tmp0_v4.i246.i, -16
  %tmp2_v.i251.i = add i32 %tmp0_v.i139.i, -88
  %23 = inttoptr i32 %tmp2_v.i251.i to i32*
  store i32 %tmp0_v6.i249.i, i32* %23, align 8
  %24 = load i32, i32* %21, align 16
  %tmp2_v9.i254.i = add i32 %24, -1
  %tmp2_v10.i255.i = add i32 %tmp0_v.i139.i, -84
  %25 = inttoptr i32 %tmp2_v10.i255.i to i32*
  store i32 %tmp2_v9.i254.i, i32* %25, align 4
  %tmp4_v.i256.i = shl i32 %24, 2
  %tmp0_v11.i257.i = add i32 %tmp4_v.i256.i, 15
  %tmp0_v15.i258.i = and i32 %tmp0_v11.i257.i, -4096
  %tmp0_v17.i259.i = sub i32 %tmp0_v1.i118.i, %tmp0_v15.i258.i
  %tmp0_v.i3.i = and i32 %tmp0_v11.i257.i, 4080
  %tmp0_v1.i.i = sub i32 %tmp0_v1.i118.i, %tmp0_v.i3.i
  %tmp2_v.i68.i = add i32 %tmp0_v.i139.i, -80
  %26 = inttoptr i32 %tmp2_v.i68.i to i32*
  store i32 %tmp0_v1.i.i, i32* %26, align 16
  %tmp2_v7.i69.i = add i32 %tmp0_v.i139.i, -100
  %27 = inttoptr i32 %tmp2_v7.i69.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i139.i, -104
  %28 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* %21, align 16
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_804937C.i, label %BB_80493B3.i

BB_80493F1.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.1.lcssa = phi i32 [ %r_ecx.0.lcssa, %BB_80493B3.i ], [ %r_ecx.2, %BB_80493E5.i ]
  %tmp2_v.i.i = add i32 %tmp0_v.i139.i, -116
  %31 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %27, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %BB_80493FA.i.lr.ph, label %BB_80493F1.i.BB_8049425.i_crit_edge

BB_80493F1.i.BB_8049425.i_crit_edge:              ; preds = %BB_80493F1.i
  %.pre30 = add i32 %tmp0_v1.i.i, -16
  %.pre31 = inttoptr i32 %.pre30 to i32*
  %.pre32 = add i32 %tmp0_v1.i.i, -20
  %.pre33 = inttoptr i32 %.pre32 to i32*
  br label %BB_8049425.i

BB_80493FA.i.lr.ph:                               ; preds = %BB_80493F1.i
  %tmp2_v6.i346.i = add i32 %tmp0_v1.i.i, -8
  %34 = inttoptr i32 %tmp2_v6.i346.i to i32*
  %tmp2_v9.i349.i = add i32 %tmp0_v1.i.i, -12
  %35 = inttoptr i32 %tmp2_v9.i349.i to i32*
  %tmp2_v11.i352.i = add i32 %tmp0_v1.i.i, -16
  %36 = inttoptr i32 %tmp2_v11.i352.i to i32*
  %tmp2_v12.i353.i = add i32 %tmp0_v1.i.i, -20
  %37 = inttoptr i32 %tmp2_v12.i353.i to i32*
  br label %BB_80493FA.i

BB_80493C3.i:                                     ; preds = %BB_80493B3.i, %BB_80493E5.i
  %r_ecx.123 = phi i32 [ %r_ecx.2, %BB_80493E5.i ], [ %r_ecx.0.lcssa, %BB_80493B3.i ]
  %storemerge722 = phi i32 [ %tmp0_v1.i160.i, %BB_80493E5.i ], [ 0, %BB_80493B3.i ]
  %tmp4_v.i.i = shl i32 %storemerge722, 2
  %tmp2_v2.i.i = add i32 %tmp4_v.i.i, %tmp2_v3.i292.i
  %38 = inttoptr i32 %tmp2_v2.i.i to i32*
  %39 = load i32, i32* %38, align 4
  %tmp0_v4.i.i = and i32 %39, 1
  %.not.i.i = icmp eq i32 %tmp0_v4.i.i, 0
  br i1 %.not.i.i, label %BB_80493D1.i, label %BB_80493E5.i

BB_80494F8.i:                                     ; preds = %Func_split_nums.exit, %BB_80494C6.i
  store i32 10, i32* %.pre-phi, align 16
  store i32 134518018, i32* %.pre-phi34, align 4
  %arg.i.i = load i32, i32* %.pre-phi, align 16
  %40 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %tmp2_v.i107.i = add i32 %149, -120
  %41 = inttoptr i32 %tmp2_v.i107.i to i32*
  %tmp2_v.i177.i = add i32 %149, -124
  %42 = inttoptr i32 %tmp2_v.i177.i to i32*
  store i32 0, i32* %41, align 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %BB_804950E.i.lr.ph, label %.exit

BB_804950E.i.lr.ph:                               ; preds = %BB_80494F8.i
  %tmp2_v.i309.i = add i32 %149, -132
  %45 = inttoptr i32 %tmp2_v.i309.i to i32*
  %tmp2_v7.i318.i = add i32 %tmp0_v1.i.i, -8
  %46 = inttoptr i32 %tmp2_v7.i318.i to i32*
  %tmp2_v11.i323.i = add i32 %148, -8128
  br label %BB_804950E.i

BB_804937C.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit.i
  %r_ecx.021 = phi i32 [ %r_ecx.3, %BB_80493A7.i ], [ %tmp0_v17.i259.i, %helper_divl_EAX.exit.i ]
  %storemerge820 = phi i32 [ %tmp0_v1.i329.i, %BB_80493A7.i ], [ 0, %helper_divl_EAX.exit.i ]
  %tmp4_v.i26.i = shl i32 %storemerge820, 2
  %tmp2_v2.i27.i = add i32 %tmp4_v.i26.i, %tmp2_v3.i292.i
  %47 = inttoptr i32 %tmp2_v2.i27.i to i32*
  %48 = load i32, i32* %47, align 4
  %tmp0_v5.i.i = lshr i32 %48, 31
  %tmp0_v6.i.i = add i32 %tmp0_v5.i.i, %48
  %tmp0_v7.i.i = and i32 %tmp0_v6.i.i, 1
  %.neg = add nuw nsw i32 %tmp0_v5.i.i, 1
  %.not.i31.i = icmp eq i32 %tmp0_v7.i.i, %.neg
  br i1 %.not.i31.i, label %BB_8049393.i, label %BB_80493A7.i

BB_804943B.i:                                     ; preds = %BB_804943B.i.lr.ph, %BB_804943B.i
  %storemerge626 = phi i32 [ 0, %BB_804943B.i.lr.ph ], [ %tmp0_v2.i130.i, %BB_804943B.i ]
  %49 = load i32, i32* %23, align 8
  %tmp4_v.i38.i = shl i32 %storemerge626, 2
  %tmp2_v3.i.i = add i32 %49, %tmp4_v.i38.i
  %50 = inttoptr i32 %tmp2_v3.i.i to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %65, align 8
  %52 = load i32, i32* %62, align 8
  store i32 %52, i32* %66, align 4
;-------------------------------
; Replace: %spi.bis.338 = ptrtoint[21 x i8]* @str.bis.338 to i32
  %cipher.ptr.20 = alloca [29 x i8]
  store [29 x i8] c"\5a\58\5a\6c\62\6c\39\68\63\6e\4a\68\65\56\73\6c\5a\46\30\67\50\53\41\6c\5a\41\6f\41\00", [29 x i8]* %cipher.ptr.20
  %cipher.20 = getelementptr inbounds [29 x i8], [29 x i8]* %cipher.ptr.20, i32 0, i32 0
  %plain.ptr.20 = tail call i8* @base64_decode(i8* %cipher.20)
  %spi20 = bitcast i8* %plain.ptr.20 to [21 x i8]*
  %spi.bis.338 = ptrtoint[21 x i8]* %spi20 to i32
;-------------------------------
  store i32 %spi.bis.338, i32* %.pre-phi, align 16
  store i32 134517847, i32* %.pre-phi34, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge626, i32 noundef %tmp2_v.i123.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %54 = load i32, i32* %62, align 8
  %tmp0_v2.i130.i = add i32 %54, 1
  store i32 %tmp0_v2.i130.i, i32* %62, align 8
  %55 = load i32, i32* %74, align 4
  %56 = icmp slt i32 %tmp0_v2.i130.i, %55
  br i1 %56, label %BB_804943B.i, label %BB_8049466.i

BB_80493D1.i:                                     ; preds = %BB_80493C3.i
  %57 = load i32, i32* %23, align 8
  %58 = load i32, i32* %74, align 4
  %tmp4_v8.i.i = shl i32 %58, 2
  %tmp2_v9.i53.i = add i32 %tmp4_v8.i.i, %57
  %59 = inttoptr i32 %tmp2_v9.i53.i to i32*
  store i32 %39, i32* %59, align 4
  %60 = load i32, i32* %74, align 4
  %tmp0_v12.i.i = add i32 %60, 1
  store i32 %tmp0_v12.i.i, i32* %74, align 4
  %.pre29 = load i32, i32* %75, align 16
  br label %BB_80493E5.i

BB_8049425.i:                                     ; preds = %BB_80493FA.i, %BB_80493F1.i.BB_8049425.i_crit_edge
  %.pre-phi34 = phi i32* [ %.pre33, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %37, %BB_80493FA.i ]
  %.pre-phi = phi i32* [ %.pre31, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %36, %BB_80493FA.i ]
  %tmp2_v.i123.i.pre-phi = phi i32 [ %.pre30, %BB_80493F1.i.BB_8049425.i_crit_edge ], [ %tmp2_v11.i352.i, %BB_80493FA.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517807, i32* %.pre-phi34, align 4
  %arg.i.i16 = load i32, i32* %.pre-phi, align 16
  %61 = tail call i32 @putchar(i32 %arg.i.i16)  nounwind 
  %tmp2_v.i13.i = add i32 %tmp0_v.i139.i, -120
  %62 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* %74, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %BB_804943B.i.lr.ph, label %BB_8049425.i.BB_8049466.i_crit_edge

BB_8049425.i.BB_8049466.i_crit_edge:              ; preds = %BB_8049425.i
  %.pre35 = add i32 %tmp0_v1.i.i, -12
  %.pre36 = inttoptr i32 %.pre35 to i32*
  br label %BB_8049466.i

BB_804943B.i.lr.ph:                               ; preds = %BB_8049425.i
  %tmp2_v6.i.i = add i32 %tmp0_v1.i.i, -8
  %65 = inttoptr i32 %tmp2_v6.i.i to i32*
  %tmp2_v9.i.i = add i32 %tmp0_v1.i.i, -12
  %66 = inttoptr i32 %tmp2_v9.i.i to i32*
  br label %BB_804943B.i

BB_80493E5.i:                                     ; preds = %BB_80493D1.i, %BB_80493C3.i
  %67 = phi i32 [ %storemerge722, %BB_80493C3.i ], [ %.pre29, %BB_80493D1.i ]
  %r_ecx.2 = phi i32 [ %r_ecx.123, %BB_80493C3.i ], [ %39, %BB_80493D1.i ]
  %tmp0_v1.i160.i = add i32 %67, 1
  store i32 %tmp0_v1.i160.i, i32* %75, align 16
  %68 = load i32, i32* %21, align 16
  %69 = icmp slt i32 %tmp0_v1.i160.i, %68
  br i1 %69, label %BB_80493C3.i, label %BB_80493F1.i

BB_8049393.i:                                     ; preds = %BB_804937C.i
  %70 = load i32, i32* %26, align 16
  %71 = load i32, i32* %27, align 4
  %tmp4_v8.i206.i = shl i32 %71, 2
  %tmp2_v9.i207.i = add i32 %tmp4_v8.i206.i, %70
  %72 = inttoptr i32 %tmp2_v9.i207.i to i32*
  store i32 %48, i32* %72, align 4
  %73 = load i32, i32* %27, align 4
  %tmp0_v12.i210.i = add i32 %73, 1
  store i32 %tmp0_v12.i210.i, i32* %27, align 4
  %.pre = load i32, i32* %28, align 8
  br label %BB_80493A7.i

BB_80493B3.i:                                     ; preds = %BB_80493A7.i, %helper_divl_EAX.exit.i
  %r_ecx.0.lcssa = phi i32 [ %tmp0_v17.i259.i, %helper_divl_EAX.exit.i ], [ %r_ecx.3, %BB_80493A7.i ]
  %tmp2_v.i221.i = add i32 %tmp0_v.i139.i, -108
  %74 = inttoptr i32 %tmp2_v.i221.i to i32*
  store i32 0, i32* %74, align 4
  %tmp2_v1.i222.i = add i32 %tmp0_v.i139.i, -112
  %75 = inttoptr i32 %tmp2_v1.i222.i to i32*
  store i32 0, i32* %75, align 16
  %76 = load i32, i32* %21, align 16
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %BB_80493C3.i, label %BB_80493F1.i

BB_80494C6.i:                                     ; preds = %BB_80494C6.i.lr.ph, %BB_80494C6.i
  %storemerge427 = phi i32 [ 0, %BB_80494C6.i.lr.ph ], [ %tmp0_v2.i359.i, %BB_80494C6.i ]
  %78 = load i32, i32* %154, align 4
  %tmp0_v3.i228.i = shl i32 %storemerge427, 2
  %tmp0_v4.i229.i = add i32 %78, %tmp0_v3.i228.i
  %79 = inttoptr i32 %tmp0_v4.i229.i to i32*
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %155, align 8
  %81 = load i32, i32* %150, align 4
  store i32 %81, i32* %.pre-phi37, align 4
  store i32 %tmp2_v11.i237.i, i32* %.pre-phi, align 16
  store i32 134517993, i32* %.pre-phi34, align 4
  %82 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp0_v3.i228.i, i32 noundef %tmp2_v.i123.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %83 = load i32, i32* %150, align 4
  %tmp0_v2.i359.i = add i32 %83, 1
  store i32 %tmp0_v2.i359.i, i32* %150, align 4
  %84 = load i32, i32* %151, align 4
  %85 = icmp slt i32 %tmp0_v2.i359.i, %84
  br i1 %85, label %BB_80494C6.i, label %BB_80494F8.i

BB_8049466.i:                                     ; preds = %BB_8049425.i.BB_8049466.i_crit_edge, %BB_804943B.i
  %.pre-phi37 = phi i32* [ %.pre36, %BB_8049425.i.BB_8049466.i_crit_edge ], [ %66, %BB_804943B.i ]
  store i32 10, i32* %.pre-phi, align 16
  store i32 134517872, i32* %.pre-phi34, align 4
  %arg.i.i17 = load i32, i32* %.pre-phi, align 16
  %86 = tail call i32 @putchar(i32 %arg.i.i17)  nounwind 
  %tmp2_v.i82.i = add i32 %tmp0_v.i139.i, -144
  %87 = inttoptr i32 %tmp2_v.i82.i to i32*
  store i32 0, i32* %87, align 16
  %tmp2_v1.i83.i = add i32 %tmp0_v.i139.i, -140
  %88 = inttoptr i32 %tmp2_v1.i83.i to i32*
  store i32 0, i32* %88, align 4
  %tmp2_v2.i84.i = add i32 %tmp0_v.i139.i, -136
  %89 = inttoptr i32 %tmp2_v2.i84.i to i32*
  store i32 0, i32* %89, align 8
  %tmp2_v3.i85.i = add i32 %tmp0_v.i139.i, -132
  %90 = inttoptr i32 %tmp2_v3.i85.i to i32*
  store i32 0, i32* %90, align 4
  store i32 %tmp2_v2.i84.i, i32* %.pre-phi37, align 4
  store i32 %tmp2_v.i82.i, i32* %.pre-phi, align 16
  store i32 %tmp2_v3.i85.i, i32* %.pre-phi34, align 4
  %tmp2_v12.i92.i = add i32 %tmp0_v1.i.i, -24
  %91 = inttoptr i32 %tmp2_v12.i92.i to i32*
  store i32 %tmp2_v1.i83.i, i32* %91, align 8
  %92 = load i32, i32* %21, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v1.i.i, -28
  %93 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %92, i32* %93, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v1.i.i, -32
  %94 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i292.i, i32* %94, align 16
  %tmp2_v18.i96.i = add i32 %tmp0_v1.i.i, -36
  %95 = inttoptr i32 %tmp2_v18.i96.i to i32*
  store i32 134517946, i32* %95, align 4
  %tmp2_v.i14.i.i = add i32 %tmp0_v1.i.i, -40
  %96 = inttoptr i32 %tmp2_v.i14.i.i to i32*
  store i32 %tmp2_v4.i142.i, i32* %96, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v1.i.i, -44
  %97 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %97, align 4
  %tmp2_v2.i17.i.i = add i32 %tmp0_v1.i.i, -68
  %98 = inttoptr i32 %tmp2_v2.i17.i.i to i32*
  store i32 134518131, i32* %98, align 4
  %99 = load i32, i32* %.pre-phi34, align 4
  %100 = inttoptr i32 %99 to i32*
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %.pre-phi37, align 4
  %102 = inttoptr i32 %101 to i32*
  store i32 0, i32* %102, align 4
  %tmp2_v4.i25.i.i = add i32 %tmp0_v1.i.i, -64
  %103 = inttoptr i32 %tmp2_v4.i25.i.i to i32*
  store i32 0, i32* %103, align 16
  %104 = load i32, i32* %93, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %BB_8049594.i.i, label %BB_80495DD.i.i

BB_80495DD.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %106 = load i32, i32* %.pre-phi34, align 4
  %107 = inttoptr i32 %106 to i32*
  %108 = load i32, i32* %107, align 4
  %tmp0_v2.i61.i.i = shl i32 %108, 2
  %tmp2_v4.i64.i.i = add i32 %tmp0_v1.i.i, -80
  %109 = inttoptr i32 %tmp2_v4.i64.i.i to i32*
  store i32 %tmp0_v2.i61.i.i, i32* %109, align 16
  %tmp2_v5.i65.i.i = add i32 %tmp0_v1.i.i, -84
  %110 = inttoptr i32 %tmp2_v5.i65.i.i to i32*
  store i32 134518254, i32* %110, align 4
  %arg.i.i.i = load i32, i32* %109, align 16
  %111 = tail call i32 @malloc(i32 %arg.i.i.i)
  %112 = load i32, i32* %91, align 8
  %113 = inttoptr i32 %112 to i32*
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %.pre-phi37, align 4
  %115 = inttoptr i32 %114 to i32*
  %116 = load i32, i32* %115, align 4
  %tmp0_v5.i.i.i = shl i32 %116, 2
  store i32 %tmp0_v5.i.i.i, i32* %109, align 16
  store i32 134518281, i32* %110, align 4
  %arg.i.i36.i = load i32, i32* %109, align 16
  %117 = tail call i32 @malloc(i32 %arg.i.i36.i)
  %118 = load i32, i32* %.pre-phi, align 16
  %119 = inttoptr i32 %118 to i32*
  store i32 %117, i32* %119, align 4
  %tmp2_v2.i94.i.i = add i32 %tmp0_v1.i.i, -60
  %120 = inttoptr i32 %tmp2_v2.i94.i.i to i32*
  store i32 0, i32* %120, align 4
  %tmp2_v3.i95.i.i = add i32 %tmp0_v1.i.i, -56
  %121 = inttoptr i32 %tmp2_v3.i95.i.i to i32*
  store i32 0, i32* %121, align 8
  %tmp2_v4.i96.i.i = add i32 %tmp0_v1.i.i, -52
  %122 = inttoptr i32 %tmp2_v4.i96.i.i to i32*
  store i32 0, i32* %122, align 4
  %123 = load i32, i32* %120, align 4
  %124 = load i32, i32* %93, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_804962A.i.i:                                   ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %126 = phi i32 [ %tmp0_v1.i10.i.i, %BB_804962A.i.i ], [ %123, %BB_80495DD.i.i ]
  %tmp4_v.i76.i.i = shl i32 %126, 2
  %127 = load i32, i32* %94, align 16
  %tmp0_v3.i79.i.i = add i32 %127, %tmp4_v.i76.i.i
  %128 = inttoptr i32 %tmp0_v3.i79.i.i to i32*
  %129 = load i32, i32* %128, align 4
  %tmp0_v6.i82.i.i = lshr i32 %129, 31
  %tmp0_v7.i83.i.i = add i32 %tmp0_v6.i82.i.i, %129
  %tmp0_v8.i84.i.i = and i32 %tmp0_v7.i83.i.i, 1
  %.neg.i = add nuw nsw i32 %tmp0_v6.i82.i.i, 1
  %.not.i.i.i = icmp eq i32 %tmp0_v8.i84.i.i, %.neg.i
  %.sink48.i = select i1 %.not.i.i.i, i32* %91, i32* %.pre-phi
  %.sink45.i = select i1 %.not.i.i.i, i32* %122, i32* %121
  %130 = load i32, i32* %.sink48.i, align 8
  %131 = inttoptr i32 %130 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %.sink45.i, align 4
  %tmp0_v9.i138.i.i = shl i32 %133, 2
  %tmp0_v10.i139.i.i = add i32 %tmp0_v9.i138.i.i, %132
  %134 = inttoptr i32 %tmp0_v10.i139.i.i to i32*
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* %.sink45.i, align 4
  %tmp0_v14.i143.i.i = add i32 %135, 1
  store i32 %tmp0_v14.i143.i.i, i32* %.sink45.i, align 4
  %136 = load i32, i32* %120, align 4
  %tmp0_v1.i10.i.i = add i32 %136, 1
  store i32 %tmp0_v1.i10.i.i, i32* %120, align 4
  %137 = load i32, i32* %93, align 4
  %138 = icmp slt i32 %tmp0_v1.i10.i.i, %137
  br i1 %138, label %BB_804962A.i.i, label %Func_split_nums.exit

BB_8049594.i.i:                                   ; preds = %BB_8049594.i.i, %BB_8049466.i
  %storemerge38.i = phi i32 [ %tmp0_v1.i41.i.i, %BB_8049594.i.i ], [ 0, %BB_8049466.i ]
  %tmp4_v.i100.i.i = shl i32 %storemerge38.i, 2
  %139 = load i32, i32* %94, align 16
  %tmp0_v3.i103.i.i = add i32 %139, %tmp4_v.i100.i.i
  %140 = inttoptr i32 %tmp0_v3.i103.i.i to i32*
  %141 = load i32, i32* %140, align 4
  %tmp0_v6.i106.i.i = lshr i32 %141, 31
  %tmp0_v7.i107.i.i = add i32 %tmp0_v6.i106.i.i, %141
  %tmp0_v8.i108.i.i = and i32 %tmp0_v7.i107.i.i, 1
  %.neg30.i = add nuw nsw i32 %tmp0_v6.i106.i.i, 1
  %.not.i111.i.i = icmp eq i32 %tmp0_v8.i108.i.i, %.neg30.i
  %..i = select i1 %.not.i111.i.i, i32* %.pre-phi34, i32* %.pre-phi37
  %142 = load i32, i32* %..i, align 4
  %143 = inttoptr i32 %142 to i32*
  %144 = load i32, i32* %143, align 4
  %tmp2_v2.i30.i.i = add i32 %144, 1
  store i32 %tmp2_v2.i30.i.i, i32* %143, align 4
  %145 = load i32, i32* %103, align 16
  %tmp0_v1.i41.i.i = add i32 %145, 1
  store i32 %tmp0_v1.i41.i.i, i32* %103, align 16
  %146 = load i32, i32* %93, align 4
  %147 = icmp slt i32 %tmp0_v1.i41.i.i, %146
  br i1 %147, label %BB_8049594.i.i, label %BB_80495DD.i.i

Func_split_nums.exit:                             ; preds = %BB_804962A.i.i, %BB_80495DD.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.1.lcssa, %BB_80495DD.i.i ], [ %tmp0_v3.i79.i.i, %BB_804962A.i.i ]
  %148 = load i32, i32* %97, align 4
  %149 = load i32, i32* %96, align 8
  %tmp2_v.i21.i = add i32 %149, -116
  %150 = inttoptr i32 %tmp2_v.i21.i to i32*
  %tmp2_v.i151.i = add i32 %149, -128
  %151 = inttoptr i32 %tmp2_v.i151.i to i32*
  store i32 0, i32* %150, align 4
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %BB_80494C6.i.lr.ph, label %BB_80494F8.i

BB_80494C6.i.lr.ph:                               ; preds = %Func_split_nums.exit
  %tmp2_v.i224.i = add i32 %149, -136
  %154 = inttoptr i32 %tmp2_v.i224.i to i32*
  %tmp2_v7.i233.i = add i32 %tmp0_v1.i.i, -8
  %155 = inttoptr i32 %tmp2_v7.i233.i to i32*
  %tmp2_v11.i237.i = add i32 %148, -8143
  br label %BB_80494C6.i

BB_804950E.i:                                     ; preds = %BB_804950E.i, %BB_804950E.i.lr.ph
  %storemerge528 = phi i32 [ 0, %BB_804950E.i.lr.ph ], [ %tmp0_v2.i277.i, %BB_804950E.i ]
  %156 = load i32, i32* %45, align 4
  %tmp0_v3.i313.i = shl i32 %storemerge528, 2
  %tmp0_v4.i314.i = add i32 %156, %tmp0_v3.i313.i
  %157 = inttoptr i32 %tmp0_v4.i314.i to i32*
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %46, align 8
  %159 = load i32, i32* %41, align 4
  store i32 %159, i32* %.pre-phi37, align 4
  store i32 %tmp2_v11.i323.i, i32* %.pre-phi, align 16
  store i32 134518065, i32* %.pre-phi34, align 4
  %160 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %tmp0_v3.i313.i, i32 noundef %tmp2_v.i123.i.pre-phi, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %161 = load i32, i32* %41, align 4
  %tmp0_v2.i277.i = add i32 %161, 1
  store i32 %tmp0_v2.i277.i, i32* %41, align 4
  %162 = load i32, i32* %42, align 4
  %163 = icmp slt i32 %tmp0_v2.i277.i, %162
  br i1 %163, label %BB_804950E.i, label %.exit

BB_80493A7.i:                                     ; preds = %BB_8049393.i, %BB_804937C.i
  %164 = phi i32 [ %storemerge820, %BB_804937C.i ], [ %.pre, %BB_8049393.i ]
  %r_ecx.3 = phi i32 [ %r_ecx.021, %BB_804937C.i ], [ %48, %BB_8049393.i ]
  %tmp0_v1.i329.i = add i32 %164, 1
  store i32 %tmp0_v1.i329.i, i32* %28, align 8
  %165 = load i32, i32* %21, align 16
  %166 = icmp slt i32 %tmp0_v1.i329.i, %165
  br i1 %166, label %BB_804937C.i, label %BB_80493B3.i

BB_80493FA.i:                                     ; preds = %BB_80493FA.i, %BB_80493FA.i.lr.ph
  %storemerge25 = phi i32 [ 0, %BB_80493FA.i.lr.ph ], [ %tmp0_v2.i188.i, %BB_80493FA.i ]
  %167 = load i32, i32* %26, align 16
  %tmp4_v.i341.i = shl i32 %storemerge25, 2
  %tmp2_v3.i342.i = add i32 %167, %tmp4_v.i341.i
  %168 = inttoptr i32 %tmp2_v3.i342.i to i32*
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %34, align 8
  %170 = load i32, i32* %31, align 4
  store i32 %170, i32* %35, align 4
;-------------------------------
; Replace: %spi.bis.337 = ptrtoint[20 x i8]* @str.bis.337 to i32
  %cipher.ptr.19 = alloca [29 x i8]
  store [29 x i8] c"\62\32\52\6b\58\32\46\79\63\6d\46\35\57\79\56\6b\58\53\41\39\49\43\56\6b\43\67\41\3d\00", [29 x i8]* %cipher.ptr.19
  %cipher.19 = getelementptr inbounds [29 x i8], [29 x i8]* %cipher.ptr.19, i32 0, i32 0
  %plain.ptr.19 = tail call i8* @base64_decode(i8* %cipher.19)
  %spi19 = bitcast i8* %plain.ptr.19 to [20 x i8]*
  %spi.bis.337 = ptrtoint[20 x i8]* %spi19 to i32
;-------------------------------
  store i32 %spi.bis.337, i32* %36, align 16
  store i32 134517782, i32* %37, align 4
  %171 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa, i32 inreg noundef %storemerge25, i32 noundef %tmp2_v11.i352.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %172 = load i32, i32* %31, align 4
  %tmp0_v2.i188.i = add i32 %172, 1
  store i32 %tmp0_v2.i188.i, i32* %31, align 4
  %173 = load i32, i32* %27, align 4
  %174 = icmp slt i32 %tmp0_v2.i188.i, %173
  br i1 %174, label %BB_80493FA.i, label %BB_8049425.i

.exit:                                            ; preds = %BB_804950E.i, %BB_80494F8.i
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
!54 = !{i32 0, i32 3}
!55 = !{i32 0, i32 0, i32 0}
!56 = !{!"printf"}
!57 = !{!"clang version 14.0.0"}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 7, !"PIC Level", i32 2}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{i32 1, !"NumRegisterParameters", i32 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"double", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!68, !68, i64 0}
!68 = !{!"int", !65, i64 0}
!69 = !{i32 0, i32 0, i32 0}
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
!83 = !{i32 0, i32 0, i32 0}
!84 = !{!"printf"}
