; Mutation 22
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
@.str1 = private unnamed_addr constant [11 x i8] c"\64\65\72\67\62\6a\7a\65\6b\61\00"
@.str3 = private unnamed_addr constant [8 x i8] c"\50\72\65\6d\69\65\72\00"
@.str5 = private unnamed_addr constant [10 x i8] c"\74\72\6f\69\73\69\65\6d\65\00"
@.str7 = private unnamed_addr constant [10 x i8] c"\74\72\6f\69\73\69\65\6d\65\00"
@.str9 = private unnamed_addr constant [11 x i8] c"\64\65\72\67\62\6a\7a\65\6b\61\00"
@.str11 = private unnamed_addr constant [10 x i8] c"\44\65\75\78\69\c3\a8\6d\65\00"
@.str13 = private unnamed_addr constant [9 x i8] c"\7a\65\66\69\c4\b5\68\74\00"
@.str15 = private unnamed_addr constant [10 x i8] c"\74\72\6f\69\73\69\65\6d\65\00"
@.str17 = private unnamed_addr constant [8 x i8] c"\50\72\65\6d\69\65\72\00"
@.str19 = private unnamed_addr constant [10 x i8] c"\74\72\6f\69\73\69\65\6d\65\00"
@.str21 = private unnamed_addr constant [11 x i8] c"\6f\6b\69\6f\6a\76\69\2c\65\72\00"

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

; Function Attrs: norecurse
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr #3
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %tmp2_v.i18.i = add i32 %arg_esp, 4
  %tmp0_v.i19.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i19.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i21.i = add i32 %tmp0_v.i19.i, -8
  %3 = inttoptr i32 %tmp2_v4.i21.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i22.i = add i32 %tmp0_v.i19.i, -12
  %4 = inttoptr i32 %tmp2_v5.i22.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i24.i = add i32 %tmp0_v.i19.i, -16
  %5 = inttoptr i32 %tmp2_v6.i24.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i26.i = add i32 %tmp0_v.i19.i, -20
  %6 = inttoptr i32 %tmp2_v7.i26.i to i32*
  store i32 %tmp2_v.i18.i, i32* %6, align 4
;-------------------------------
;--------Basic Condition--------
  %.not2.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not2.i.i, label %BB_2, label %next2
next2:
;-------------------------------
  %tmp2_v9.i.i = add i32 %tmp0_v.i19.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i7.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i7.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i9.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i9.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i13.i = add i32 %tmp0_v.i19.i, -44
  %12 = inttoptr i32 %tmp2_v6.i13.i to i32*
  store i32 134520900, i32* %12, align 4
  %tmp2_v7.i14.i = add i32 %tmp0_v.i19.i, -48
  %13 = inttoptr i32 %tmp2_v7.i14.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i19.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i36.i = icmp eq i32 %15, 0
  br i1 %.not.i36.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
;-------------------------------
;--------Basic Condition--------
  %.not14.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not14.i.i, label %BB_14, label %next14
next14:
;-------------------------------
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i19.i, -40
  %16 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i21.i, i32* %16, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i5.i.i = add i32 %tmp0_v.i19.i, -68
  %17 = inttoptr i32 %tmp2_v2.i5.i.i to i32*
  store i32 134517678, i32* %17, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i12.i.i = add i32 %tmp0_v.i19.i, -72
  %18 = inttoptr i32 %tmp2_v2.i12.i.i to i32*
  store i32 0, i32* %18, align 8
;-------------------------------
;--------Basic Condition--------
  %.not8.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not8.i.i, label %BB_8, label %next8
next8:
;-------------------------------
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i19.i, -76
  %19 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 1, i32* %19, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i19.i, -80
  %20 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %20, align 16
  %tmp2_v5.i13.i.i = add i32 %tmp0_v.i19.i, -84
  %21 = inttoptr i32 %tmp2_v5.i13.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not16.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not16.i.i, label %BB_16, label %next16
next16:
;-------------------------------
;-------------------------------
;--------Basic Condition--------
  %.not18.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not18.i.i, label %BB_18, label %next18
next18:
;-------------------------------
  store i32 134517705, i32* %21, align 4
  %arg.i.i.i = load i32, i32* %20, align 16
  %arg2.i.i.i = load i32, i32* %19, align 4
  %arg4.i.i.i = load i32, i32* %18, align 8
  %22 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
  store i32 %22, i32* %14, align 4
  store i32 %22, i32* %20, align 16
  store i32 134517722, i32* %21, align 4
;-------------------------------
;--------Basic Condition--------
  %.not10.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not10.i.i, label %BB_10, label %next10
next10:
;-------------------------------
  %arg.i.i3.i = load i32, i32* %20, align 16
  %23 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %24 = load i32, i32* %8, align 4
  %tmp0_v1.i.i = add i32 %24, 4
  %25 = inttoptr i32 %tmp0_v1.i.i to i32*
  %26 = load i32, i32* %25, align 4
  store i32 134520904, i32* %12, align 4
  store i32 %26, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i6 = load i32, i32* %13, align 16
  %arg2.i.i7 = load i32, i32* %12, align 4
  %27 = tail call i32 @strcmp(i32 %arg.i.i6, i32 %arg2.i.i7)
  %.not.i43.i = icmp eq i32 %27, 0
  br i1 %.not.i43.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i19.i, -40
  %28 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i21.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i19.i, -68
  %29 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
  store i32 134517414, i32* %29, align 4
  %tmp2_v1.i.i.i9 = add i32 %tmp0_v.i19.i, -56
  %30 = inttoptr i32 %tmp2_v1.i.i.i9 to i32*
  store i32 134520840, i32* %30, align 8
  store i32 134520854, i32* %14, align 4
  %31 = load i32, i32* %30, align 8
;-------------------------------
;--------Basic Condition--------
  %.not12.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not12.i.i, label %BB_12, label %next12
next12:
;-------------------------------
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i19.i, -76
  %32 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %31, i32* %32, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i19.i, -80
  %33 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134520863, i32* %33, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i19.i, -84
  %34 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %34, align 4
  %35 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i18.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i19.i, -40
  %36 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %tmp2_v4.i21.i, i32* %36, align 8
  store i32 134529024, i32* %12, align 4
;-------------------------------
;--------Basic Condition--------
  %.not22.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not22.i.i, label %BB_22, label %next22
next22:
;-------------------------------
  %tmp2_v2.i20.i.i = add i32 %tmp0_v.i19.i, -84
  %37 = inttoptr i32 %tmp2_v2.i20.i.i to i32*
  store i32 134517482, i32* %37, align 4
  %tmp4_v.i2.i.b.i = load i1, i1* @segs.0, align 1
  %38 = select i1 %tmp4_v.i2.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i19.i, -92
  %40 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134520866, i32* %40, align 4
  %tmp2_v7.i.i.i11 = add i32 %tmp0_v.i19.i, -96
  %41 = inttoptr i32 %tmp2_v7.i.i.i11 to i32*
  store i32 134520869, i32* %41, align 16
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i19.i, -100
  %42 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %42, align 4
  %arg.i.i.i12 = load i32, i32* %41, align 16
  %arg2.i.i.i13 = load i32, i32* %40, align 4
  %43 = tail call i32 @fopen(i32 %arg.i.i.i12, i32 %arg2.i.i.i13)
  %tmp2_v.i12.i.i = add i32 %tmp0_v.i19.i, -76
  %44 = inttoptr i32 %tmp2_v.i12.i.i to i32*
  store i32 %43, i32* %44, align 4
  %tmp2_v.i22.i.i = add i32 %tmp0_v.i19.i, -72
  %45 = inttoptr i32 %tmp2_v.i22.i.i to i32*
  store i32 1818304585, i32* %45, align 8
;-------------------------------
;--------Basic Condition--------
  %.not20.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not20.i.i, label %BB_20, label %next20
next20:
;-------------------------------
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i19.i, -68
;-------------------------------
;--------Basic Condition--------
  %.not4.i.i = icmp eq i32 0 , 0 ;always true
;-------------------------------
;--------Basic Condition--------
  %.not6.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not6.i.i, label %BB_6, label %next6
next6:
;-------------------------------
  br i1 %.not4.i.i, label %BB_4, label %next4
next4:
;-------------------------------
  %46 = inttoptr i32 %tmp2_v1.i23.i.i to i32*
  store i32 1701995892, i32* %46, align 4
  %tmp2_v2.i24.i.i = add i32 %tmp0_v.i19.i, -64
  %47 = inttoptr i32 %tmp2_v2.i24.i.i to i32*
  store i32 1752440932, i32* %47, align 16
  %tmp2_v3.i.i.i14 = add i32 %tmp0_v.i19.i, -60
  %48 = inttoptr i32 %tmp2_v3.i.i.i14 to i32*
  store i32 1768300645, i32* %48, align 4
  %tmp2_v4.i25.i.i = add i32 %tmp0_v.i19.i, -56
  %49 = inttoptr i32 %tmp2_v4.i25.i.i to i32*
  store i32 2188652, i32* %49, align 8
  %50 = load i32, i32* %44, align 4
  store i32 %50, i32* %37, align 4
  %tmp2_v7.i30.i.i = add i32 %tmp0_v.i19.i, -88
  %51 = inttoptr i32 %tmp2_v7.i30.i.i to i32*
  store i32 20, i32* %51, align 8
  store i32 1, i32* %40, align 4
  store i32 %tmp2_v.i22.i.i, i32* %41, align 16
  store i32 134517622, i32* %42, align 4
  %arg.i.i4.i = load i32, i32* %41, align 16
  %arg2.i.i5.i = load i32, i32* %40, align 4
  %arg4.i.i.i15 = load i32, i32* %51, align 8
  %arg6.i.i.i = load i32, i32* %37, align 4
  %52 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i15, i32 %arg6.i.i.i)
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
  store i32 134520902, i32* %12, align 4
  store i32 %57, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i16 = load i32, i32* %13, align 16
  %arg2.i.i17 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i16, i32 %arg2.i.i17)
  %.not.i.i = icmp eq i32 %58, 0
  br i1 %.not.i.i, label %BB_804944C.i, label %BB_8049453.i

.exit:                                            ; preds = %BB_804944C.i, %BB_8049426.i, %BB_8049453.i, %BB_8049472.i
  ret void
BB_2:
  %cast2= getelementptr [11 x i8], [11 x i8]* @.str1, i64 0, i64 0
  call i32 @puts(i8* %cast2)
  br label %next2
BB_4:
  %cast4= getelementptr [8 x i8], [8 x i8]* @.str3, i64 0, i64 0
  call i32 @puts(i8* %cast4)
  br label %next4
BB_6:
  %cast6= getelementptr [10 x i8], [10 x i8]* @.str5, i64 0, i64 0
  call i32 @puts(i8* %cast6)
  br label %next6
BB_8:
  %cast8= getelementptr [10 x i8], [10 x i8]* @.str7, i64 0, i64 0
  call i32 @puts(i8* %cast8)
  br label %next8
BB_10:
  %cast10= getelementptr [11 x i8], [11 x i8]* @.str9, i64 0, i64 0
  call i32 @puts(i8* %cast10)
  br label %next10
BB_12:
  %cast12= getelementptr [10 x i8], [10 x i8]* @.str11, i64 0, i64 0
  call i32 @puts(i8* %cast12)
  br label %next12
BB_14:
  %cast14= getelementptr [9 x i8], [9 x i8]* @.str13, i64 0, i64 0
  call i32 @puts(i8* %cast14)
  br label %next14
BB_16:
  %cast16= getelementptr [10 x i8], [10 x i8]* @.str15, i64 0, i64 0
  call i32 @puts(i8* %cast16)
  br label %next16
BB_18:
  %cast18= getelementptr [8 x i8], [8 x i8]* @.str17, i64 0, i64 0
  call i32 @puts(i8* %cast18)
  br label %next18
BB_20:
  %cast20= getelementptr [10 x i8], [10 x i8]* @.str19, i64 0, i64 0
  call i32 @puts(i8* %cast20)
  br label %next20
BB_22:
  %cast22= getelementptr [11 x i8], [11 x i8]* @.str21, i64 0, i64 0
  call i32 @puts(i8* %cast22)
  br label %next22
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
