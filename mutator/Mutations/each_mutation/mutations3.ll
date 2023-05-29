; Mutation 9
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
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %tmp2_v.i8.i = add i32 %arg_esp, 4
  %tmp0_v.i9.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i9.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i9.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i9.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i9.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i9.i, -20
  %6 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v.i8.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i9.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i38.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i38.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i40.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i40.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i44.i = add i32 %tmp0_v.i9.i, -44
  %12 = inttoptr i32 %tmp2_v6.i44.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %sp0.1 = alloca [2 x i8]
  store [2 x i8] c"\54\34", [2 x i8]* %sp0.1
  %sp0.1.1 = bitcast [2 x i8]* %sp0.1 to i16*
  %i0.1 = load i16, i16* %sp0.1.1

  %sp1.1 = alloca [2 x i8]
  store [2 x i8] c"\65\34", [2 x i8]* %sp1.1
  %sp1.1.1 = bitcast [2 x i8]* %sp1.1 to i16*
  %i1.1 = load i16, i16* %sp1.1.1

  %xp1 = xor i16 %i0.1, %i1.1

  %fi.1 = alloca i16
  store i16 %xp1, i16* %fi.1

  %spi1 = ptrtoint i16* %fi.1 to i32
  store i32 %spi1, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i45.i = add i32 %tmp0_v.i9.i, -48
  %13 = inttoptr i32 %tmp2_v7.i45.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i9.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i.i = icmp eq i32 %15, 0
  br i1 %.not.i.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i9.i, -40
  %16 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i9.i, -68
  %17 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %17, align 4
  %sp0.2 = alloca [4 x i8]
  store [4 x i8] c"\43\13\78\57", [4 x i8]* %sp0.2
  %sp0.1.2 = bitcast [4 x i8]* %sp0.2 to i32*
  %i0.2 = load i32, i32* %sp0.1.2

  %sp1.2 = alloca [4 x i8]
  store [4 x i8] c"\46\49\55\57", [4 x i8]* %sp1.2
  %sp1.1.2 = bitcast [4 x i8]* %sp1.2 to i32*
  %i1.2 = load i32, i32* %sp1.1.2

  %xp2 = xor i32 %i0.2, %i1.2

  %fi.2 = alloca i32
  store i32 %xp2, i32* %fi.2

  %spi2 = ptrtoint i32* %fi.2 to i32
  store i32 %spi2, i32* %17, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i9.i, -56
  %18 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
  %sp0.3 = alloca [14 x i8]
  store [14 x i8] c"\70\61\06\5F\45\04\4E\39\09\58\76\4A\7E\74", [14 x i8]* %sp0.3
  %sp0.1.3 = bitcast [14 x i8]* %sp0.3 to i112*
  %i0.3 = load i112, i112* %sp0.1.3

  %sp1.3 = alloca [14 x i8]
  store [14 x i8] c"\39\41\67\32\65\61\38\50\65\79\57\6b\74\74", [14 x i8]* %sp1.3
  %sp1.1.3 = bitcast [14 x i8]* %sp1.3 to i112*
  %i1.3 = load i112, i112* %sp1.1.3

  %xp3 = xor i112 %i0.3, %i1.3

  %fi.3 = alloca i112
  store i112 %xp3, i112* %fi.3

  %spi3 = ptrtoint i112* %fi.3 to i32
  store i32 %spi3, i32* %18, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp0.4 = alloca [9 x i8]
  store [9 x i8] c"\24\10\0B\59\29\4E\27\59\4E", [9 x i8]* %sp0.4
  %sp0.1.4 = bitcast [9 x i8]* %sp0.4 to i72*
  %i0.4 = load i72, i72* %sp0.1.4

  %sp1.4 = alloca [9 x i8]
  store [9 x i8] c"\66\69\6e\79\6b\37\42\53\4e", [9 x i8]* %sp1.4
  %sp1.1.4 = bitcast [9 x i8]* %sp1.4 to i72*
  %i1.4 = load i72, i72* %sp1.1.4

  %xp4 = xor i72 %i0.4, %i1.4

  %fi.4 = alloca i72
  store i72 %xp4, i72* %fi.4

  %spi4 = ptrtoint i72* %fi.4 to i32
  store i32 %spi4, i32* %14, align 4
;-------------------------------
  %19 = load i32, i32* %18, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i9.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i9.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
  %sp0.5 = alloca [3 x i8]
  store [3 x i8] c"\74\21\56", [3 x i8]* %sp0.5
  %sp0.1.5 = bitcast [3 x i8]* %sp0.5 to i24*
  %i0.5 = load i24, i24* %sp0.1.5

  %sp1.5 = alloca [3 x i8]
  store [3 x i8] c"\51\52\56", [3 x i8]* %sp1.5
  %sp1.1.5 = bitcast [3 x i8]* %sp1.5 to i24*
  %i1.5 = load i24, i24* %sp1.1.5

  %xp5 = xor i24 %i0.5, %i1.5

  %fi.5 = alloca i24
  store i24 %xp5, i24* %fi.5

  %spi5 = ptrtoint i24* %fi.5 to i32
  store i32 %spi5, i32* %21, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i9.i, -84
  %22 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %22, align 4
  %23 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i8.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i9.i, -40
  %24 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %24, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i9.i, -68
  %25 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  store i32 134517678, i32* %25, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i9.i, -72
  %26 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %26, align 8
  %tmp2_v3.i.i.i7 = add i32 %tmp0_v.i9.i, -76
  %27 = inttoptr i32 %tmp2_v3.i.i.i7 to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i9.i, -80
  %28 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %28, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i9.i, -84
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

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %32 = load i32, i32* %8, align 4
  %tmp0_v1.i.i = add i32 %32, 4
  %33 = inttoptr i32 %tmp0_v1.i.i to i32*
  %34 = load i32, i32* %33, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %sp0.6 = alloca [2 x i8]
  store [2 x i8] c"\70\74", [2 x i8]* %sp0.6
  %sp0.1.6 = bitcast [2 x i8]* %sp0.6 to i16*
  %i0.6 = load i16, i16* %sp0.1.6

  %sp1.6 = alloca [2 x i8]
  store [2 x i8] c"\43\74", [2 x i8]* %sp1.6
  %sp1.1.6 = bitcast [2 x i8]* %sp1.6 to i16*
  %i1.6 = load i16, i16* %sp1.1.6

  %xp6 = xor i16 %i0.6, %i1.6

  %fi.6 = alloca i16
  store i16 %xp6, i16* %fi.6

  %spi6 = ptrtoint i16* %fi.6 to i32
  store i32 %spi6, i32* %12, align 4
;-------------------------------
  store i32 %34, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i8 = load i32, i32* %13, align 16
  %arg2.i.i9 = load i32, i32* %12, align 4
  %35 = tail call i32 @strcmp(i32 %arg.i.i8, i32 %arg2.i.i9)
  %.not.i5.i = icmp eq i32 %35, 0
  br i1 %.not.i5.i, label %BB_8049472.i, label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %36 = load i32, i32* %8, align 4
  %tmp0_v1.i25.i = add i32 %36, 4
  %37 = inttoptr i32 %tmp0_v1.i25.i to i32*
  %38 = load i32, i32* %37, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %sp0.7 = alloca [2 x i8]
  store [2 x i8] c"\62\45", [2 x i8]* %sp0.7
  %sp0.1.7 = bitcast [2 x i8]* %sp0.7 to i16*
  %i0.7 = load i16, i16* %sp0.1.7

  %sp1.7 = alloca [2 x i8]
  store [2 x i8] c"\50\45", [2 x i8]* %sp1.7
  %sp1.1.7 = bitcast [2 x i8]* %sp1.7 to i16*
  %i1.7 = load i16, i16* %sp1.1.7

  %xp7 = xor i16 %i0.7, %i1.7

  %fi.7 = alloca i16
  store i16 %xp7, i16* %fi.7

  %spi7 = ptrtoint i16* %fi.7 to i32
  store i32 %spi7, i32* %12, align 4
;-------------------------------
  store i32 %38, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i11 = load i32, i32* %13, align 16
  %arg2.i.i12 = load i32, i32* %12, align 4
  %39 = tail call i32 @strcmp(i32 %arg.i.i11, i32 %arg2.i.i12)
  %.not.i49.i = icmp eq i32 %39, 0
  br i1 %.not.i49.i, label %BB_804944C.i, label %BB_8049453.i

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i30.i.i = add i32 %tmp0_v.i9.i, -40
  %40 = inttoptr i32 %tmp2_v.i30.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %40, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i35.i.i = add i32 %tmp0_v.i9.i, -84
  %41 = inttoptr i32 %tmp2_v2.i35.i.i to i32*
  store i32 134517482, i32* %41, align 4
  %tmp4_v.i18.i.b.i = load i1, i1* @segs.0, align 1
  %42 = select i1 %tmp4_v.i18.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %tmp2_v5.i25.i.i = add i32 %tmp0_v.i9.i, -92
  %44 = inttoptr i32 %tmp2_v5.i25.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %44, align 4
  %sp0.8 = alloca [3 x i8]
  store [3 x i8] c"\11\7B\6B", [3 x i8]* %sp0.8
  %sp0.1.8 = bitcast [3 x i8]* %sp0.8 to i24*
  %i0.8 = load i24, i24* %sp0.1.8

  %sp1.8 = alloca [3 x i8]
  store [3 x i8] c"\66\50\6b", [3 x i8]* %sp1.8
  %sp1.1.8 = bitcast [3 x i8]* %sp1.8 to i24*
  %i1.8 = load i24, i24* %sp1.1.8

  %xp8 = xor i24 %i0.8, %i1.8

  %fi.8 = alloca i24
  store i24 %xp8, i24* %fi.8

  %spi8 = ptrtoint i24* %fi.8 to i32
  store i32 %spi8, i32* %44, align 4
;-------------------------------
  %tmp2_v7.i27.i.i = add i32 %tmp0_v.i9.i, -96
  %45 = inttoptr i32 %tmp2_v7.i27.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %45, align 16
  %sp0.9 = alloca [15 x i8]
  store [15 x i8] c"\04\52\0A\16\1B\54\2C\34\34\7A\76\42\2E\3E\42", [15 x i8]* %sp0.9
  %sp0.1.9 = bitcast [15 x i8]* %sp0.9 to i120*
  %i0.9 = load i120, i120* %sp0.1.9

  %sp1.9 = alloca [15 x i8]
  store [15 x i8] c"\70\37\72\62\44\32\45\58\51\49\58\36\56\4a\42", [15 x i8]* %sp1.9
  %sp1.1.9 = bitcast [15 x i8]* %sp1.9 to i120*
  %i1.9 = load i120, i120* %sp1.1.9

  %xp9 = xor i120 %i0.9, %i1.9

  %fi.9 = alloca i120
  store i120 %xp9, i120* %fi.9

  %spi9 = ptrtoint i120* %fi.9 to i32
  store i32 %spi9, i32* %45, align 16
;-------------------------------
  %tmp2_v8.i28.i.i = add i32 %tmp0_v.i9.i, -100
  %46 = inttoptr i32 %tmp2_v8.i28.i.i to i32*
  store i32 134517521, i32* %46, align 4
  %arg.i.i.i14 = load i32, i32* %45, align 16
  %arg2.i.i.i15 = load i32, i32* %44, align 4
  %47 = tail call i32 @fopen(i32 %arg.i.i.i14, i32 %arg2.i.i.i15)
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i9.i, -76
  %48 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %47, i32* %48, align 4
  %tmp2_v.i.i.i16 = add i32 %tmp0_v.i9.i, -72
  %49 = inttoptr i32 %tmp2_v.i.i.i16 to i32*
  store i32 1818304585, i32* %49, align 8
  %tmp2_v1.i.i.i17 = add i32 %tmp0_v.i9.i, -68
  %50 = inttoptr i32 %tmp2_v1.i.i.i17 to i32*
  store i32 1701995892, i32* %50, align 4
  %tmp2_v2.i.i.i18 = add i32 %tmp0_v.i9.i, -64
  %51 = inttoptr i32 %tmp2_v2.i.i.i18 to i32*
  store i32 1752440932, i32* %51, align 16
  %tmp2_v3.i.i.i19 = add i32 %tmp0_v.i9.i, -60
  %52 = inttoptr i32 %tmp2_v3.i.i.i19 to i32*
  store i32 1768300645, i32* %52, align 4
  %tmp2_v4.i.i.i20 = add i32 %tmp0_v.i9.i, -56
  %53 = inttoptr i32 %tmp2_v4.i.i.i20 to i32*
  store i32 2188652, i32* %53, align 8
  %54 = load i32, i32* %48, align 4
  store i32 %54, i32* %41, align 4
  %tmp2_v7.i.i.i21 = add i32 %tmp0_v.i9.i, -88
  %55 = inttoptr i32 %tmp2_v7.i.i.i21 to i32*
  store i32 20, i32* %55, align 8
  store i32 1, i32* %44, align 4
  store i32 %tmp2_v.i.i.i16, i32* %45, align 16
  store i32 134517622, i32* %46, align 4
  %arg.i.i4.i = load i32, i32* %45, align 16
  %arg2.i.i5.i = load i32, i32* %44, align 4
  %arg4.i.i.i22 = load i32, i32* %55, align 8
  %arg6.i.i.i = load i32, i32* %41, align 4
  %56 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i22, i32 %arg6.i.i.i)
  %57 = load i32, i32* %48, align 4
  store i32 %57, i32* %45, align 16
  store i32 134517636, i32* %46, align 4
  %arg.i.i6.i = load i32, i32* %45, align 16
  %58 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

.exit:                                            ; preds = %BB_804944C.i, %BB_8049453.i, %BB_8049472.i, %BB_8049426.i
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
