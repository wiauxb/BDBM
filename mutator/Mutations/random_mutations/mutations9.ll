; Mutation 110
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack905 = internal global [8092 x i32] zeroinitializer, align 16
@stack799 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @rand() local_unnamed_addr  noinline 
declare void @srand(i32) local_unnamed_addr  noinline 
declare i32 @time(i32) local_unnamed_addr  noinline 
@stack343 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem14 = internal global [1024 x i8] zeroinitializer, align 1
@stack356 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem12 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @toupper(i32) local_unnamed_addr  noinline 
@stack938 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem10 = internal global [1024 x i8] zeroinitializer, align 1
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 
%union.FPReg = type { %struct.floatx80 }
%struct.floatx80 = type { i64, i16 }
@fpregs = internal unnamed_addr global [8 x %union.FPReg] zeroinitializer
@fp_status.2 = internal unnamed_addr global i8 0
@stack107 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem8 = internal global [1024 x i8] zeroinitializer, align 1
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg)  argmemonly nofree nounwind willreturn writeonly 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: %spi.bis.798 = ptrtoint[13 x i8]* @str.bis.798 to i32
@str.67 = private unnamed_addr constant [13 x i8] c"\2A\0F\53\30\17\70\16\4A\71\1D\08\3B\4E", align 1
@key.67 = private unnamed_addr constant [13 x i8] c"\6e\66\30\55\37\55\72\70\51\38\6c\31\4e", align 1
;-------------------------------
; Replace: %spi.bis.341 = ptrtoint[12 x i8]* @str.bis.341 to i32
@str.68 = private unnamed_addr constant [12 x i8] c"\55\11\57\21\2D\51\56\56\62\35\50\79", align 1
@key.68 = private unnamed_addr constant [12 x i8] c"\34\4a\72\45\70\71\6b\76\47\51\5a\79", align 1
;-------------------------------
; Replace: %spi.bis.342 = ptrtoint[4 x i8]* @str.bis.342 to i32
@str.69 = private unnamed_addr constant [4 x i8] c"\32\12\49\62", align 1
@key.69 = private unnamed_addr constant [4 x i8] c"\37\4c\64\62", align 1
;-------------------------------
; Replace: %spi.bis.936 = ptrtoint[4 x i8]* @str.bis.936 to i32
@str.70 = private unnamed_addr constant [4 x i8] c"\43\5D\4F\4B", align 1
@key.70 = private unnamed_addr constant [4 x i8] c"\66\39\6f\4b", align 1
;-------------------------------
; Replace: %spi.bis.937 = ptrtoint[4 x i8]* @str.bis.937 to i32
@str.71 = private unnamed_addr constant [4 x i8] c"\53\6D\42\64", align 1
@key.71 = private unnamed_addr constant [4 x i8] c"\56\59\6f\64", align 1
;-------------------------------
; Replace: %spi.bis.96 = ptrtoint[24 x i8]* @str.bis.96 to i32
@str.72 = private unnamed_addr constant [24 x i8] c"\05\17\35\18\4A\34\1D\34\36\12\46\6F\20\28\51\2C\04\14\76\62\5F\54\69\61", align 1
@key.72 = private unnamed_addr constant [24 x i8] c"\6c\79\53\77\64\56\68\52\50\77\34\41\58\73\74\48\59\34\4b\42\7a\37\63\61", align 1
;-------------------------------
; Replace: %spi.bis.97 = ptrtoint[13 x i8]* @str.bis.97 to i32
@str.73 = private unnamed_addr constant [13 x i8] c"\31\23\2A\7C\09\3E\5A\55\77\5F\17\45\42", align 1
@key.73 = private unnamed_addr constant [13 x i8] c"\41\57\58\51\37\44\7a\68\57\7a\64\4f\42", align 1
;-------------------------------
; Replace: %spi.bis.98 = ptrtoint[18 x i8]* @str.bis.98 to i32
@str.74 = private unnamed_addr constant [18 x i8] c"\06\1F\56\36\25\05\40\45\25\3B\02\2B\7D\42\43\32\5B\52", align 1
@key.74 = private unnamed_addr constant [18 x i8] c"\6b\66\32\57\51\64\72\65\56\52\78\4e\47\62\66\56\51\52", align 1
;-------------------------------
; Replace: %spi.bis.99 = ptrtoint[15 x i8]* @str.bis.99 to i32
@str.75 = private unnamed_addr constant [15 x i8] c"\30\5B\05\39\43\39\30\14\2E\72\11\12\1C\64\39", align 1
@key.75 = private unnamed_addr constant [15 x i8] c"\53\33\64\4b\63\4a\59\6e\4b\48\31\37\78\6e\39", align 1
;-------------------------------
; Replace: %spi.bis.100 = ptrtoint[17 x i8]* @str.bis.100 to i32
@str.76 = private unnamed_addr constant [17 x i8] c"\15\0A\05\0A\42\39\53\36\0E\19\20\70\19\16\16\65\37", align 1
@key.76 = private unnamed_addr constant [17 x i8] c"\78\73\61\6b\36\58\73\45\67\63\45\4a\39\33\72\6f\37", align 1
;-------------------------------
; Replace: %spi.bis.101 = ptrtoint[15 x i8]* @str.bis.101 to i32
@str.77 = private unnamed_addr constant [15 x i8] c"\07\01\13\0C\47\13\69\16\79\4D\63\4D\44\47\42", align 1
@key.77 = private unnamed_addr constant [15 x i8] c"\6a\78\77\6d\33\72\47\6c\59\70\43\68\37\4d\42", align 1
;-------------------------------
; Replace: %spi.bis.102 = ptrtoint[15 x i8]* @str.bis.102 to i32
@str.78 = private unnamed_addr constant [15 x i8] c"\05\17\25\08\17\11\5E\2E\14\65\66\6C\04\59\66", align 1
@key.78 = private unnamed_addr constant [15 x i8] c"\68\6e\41\69\63\70\70\57\34\58\46\49\62\53\66", align 1
;-------------------------------
; Replace: %spi.bis.103 = ptrtoint[15 x i8]* @str.bis.103 to i32
@str.79 = private unnamed_addr constant [15 x i8] c"\03\34\1E\51\32\03\47\34\63\54\58\69\20\4D\76", align 1
@key.79 = private unnamed_addr constant [15 x i8] c"\6e\4d\7a\30\46\62\69\4c\43\69\78\4c\44\47\76", align 1
;-------------------------------
; Replace: %spi.bis.104 = ptrtoint[15 x i8]* @str.bis.104 to i32
@str.80 = private unnamed_addr constant [15 x i8] c"\54\4C\51\56\20\37\44\2E\56\71\4A\6D\2B\4C\30", align 1
@key.80 = private unnamed_addr constant [15 x i8] c"\39\35\35\37\54\56\6a\54\76\4c\6a\48\58\46\30", align 1
;-------------------------------
; Replace: %spi.bis.105 = ptrtoint[15 x i8]* @str.bis.105 to i32
@str.81 = private unnamed_addr constant [15 x i8] c"\3A\2E\03\18\38\3B\58\12\6F\53\16\70\13\6B\50", align 1
@key.81 = private unnamed_addr constant [15 x i8] c"\57\57\67\79\4c\5a\76\6b\4f\6e\36\55\75\61\50", align 1
;-------------------------------
; Replace: %spi.bis.106 = ptrtoint[15 x i8]* @str.bis.106 to i32
@str.82 = private unnamed_addr constant [15 x i8] c"\00\2A\21\2D\4D\24\77\08\6D\7B\67\55\00\72\36", align 1
@key.82 = private unnamed_addr constant [15 x i8] c"\6d\53\45\4c\39\45\59\70\4d\46\47\70\64\78\36", align 1
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
@str.83 = private unnamed_addr constant [2 x i8] c"\54\47", align 1
@key.83 = private unnamed_addr constant [2 x i8] c"\65\47", align 1
;-------------------------------
; Replace: store [1 x i8] c"\05", [1 x i8]* %sp0.1
@str.84 = private unnamed_addr constant [1 x i8] c"\42", align 1
@key.84 = private unnamed_addr constant [1 x i8] c"\47", align 1
;-------------------------------
; Replace: store [1 x i8] c"\5a", [1 x i8]* %sp1.1
@str.85 = private unnamed_addr constant [1 x i8] c"\1C", align 1
@key.85 = private unnamed_addr constant [1 x i8] c"\46", align 1
;-------------------------------
; Replace: store [1 x i8] c"\2d", [1 x i8]* %sp2.1
@str.86 = private unnamed_addr constant [1 x i8] c"\7E", align 1
@key.86 = private unnamed_addr constant [1 x i8] c"\53", align 1
;-------------------------------
; Replace: store [2 x i8] c"\49\20", [2 x i8]* %sp0.2
@str.87 = private unnamed_addr constant [2 x i8] c"\0B\67", align 1
@key.87 = private unnamed_addr constant [2 x i8] c"\42\47", align 1
;-------------------------------
; Replace: store [2 x i8] c"\61\6d", [2 x i8]* %sp1.2
@str.88 = private unnamed_addr constant [2 x i8] c"\0E\0C", align 1
@key.88 = private unnamed_addr constant [2 x i8] c"\6f\61", align 1
;-------------------------------
; Replace: store [3 x i8] c"\20\65\76", [3 x i8]* %sp2.2
@str.89 = private unnamed_addr constant [3 x i8] c"\54\2C\42", align 1
@key.89 = private unnamed_addr constant [3 x i8] c"\74\49\34", align 1
;-------------------------------
; Replace: store [2 x i8] c"\69\6c", [2 x i8]* %sp3.2
@str.90 = private unnamed_addr constant [2 x i8] c"\1C\3E", align 1
@key.90 = private unnamed_addr constant [2 x i8] c"\75\52", align 1
;-------------------------------
; Replace: store [2 x i8] c"\21\21", [2 x i8]* %sp4.2
@str.91 = private unnamed_addr constant [2 x i8] c"\4C\73", align 1
@key.91 = private unnamed_addr constant [2 x i8] c"\6d\52", align 1
;-------------------------------
; Replace: store [3 x i8] c"\21\0a\00", [3 x i8]* %sp5.2
@str.92 = private unnamed_addr constant [3 x i8] c"\67\5E\43", align 1
@key.92 = private unnamed_addr constant [3 x i8] c"\46\54\43", align 1
;-------------------------------
; Replace: store [1 x i8] c"\42", [1 x i8]* %sp0.3
@str.93 = private unnamed_addr constant [1 x i8] c"\2A", align 1
@key.93 = private unnamed_addr constant [1 x i8] c"\68", align 1
;-------------------------------
; Replace: store [2 x i8] c"\79\65", [2 x i8]* %sp1.3
@str.94 = private unnamed_addr constant [2 x i8] c"\49\17", align 1
@key.94 = private unnamed_addr constant [2 x i8] c"\30\72", align 1
;-------------------------------
; Replace: store [1 x i8] c"\20", [1 x i8]* %sp2.3
@str.95 = private unnamed_addr constant [1 x i8] c"\6D", align 1
@key.95 = private unnamed_addr constant [1 x i8] c"\4d", align 1
;-------------------------------
; Replace: store [2 x i8] c"\42\79", [2 x i8]* %sp3.3
@str.96 = private unnamed_addr constant [2 x i8] c"\38\4A", align 1
@key.96 = private unnamed_addr constant [2 x i8] c"\7a\33", align 1
;-------------------------------
; Replace: store [1 x i8] c"\65", [1 x i8]* %sp4.3
@str.97 = private unnamed_addr constant [1 x i8] c"\23", align 1
@key.97 = private unnamed_addr constant [1 x i8] c"\46", align 1
;-------------------------------
; Replace: store [2 x i8] c"\0a\00", [2 x i8]* %sp5.3
@str.98 = private unnamed_addr constant [2 x i8] c"\4E\53", align 1
@key.98 = private unnamed_addr constant [2 x i8] c"\44\53", align 1
;-------------------------------
; Replace: store [1 x i8] c"\25", [1 x i8]* %sp0.4
@str.99 = private unnamed_addr constant [1 x i8] c"\5D", align 1
@key.99 = private unnamed_addr constant [1 x i8] c"\78", align 1
;-------------------------------
; Replace: store [1 x i8] c"\73", [1 x i8]* %sp1.4
@str.100 = private unnamed_addr constant [1 x i8] c"\34", align 1
@key.100 = private unnamed_addr constant [1 x i8] c"\47", align 1
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
@str.101 = private unnamed_addr constant [2 x i8] c"\68\6F", align 1
@key.101 = private unnamed_addr constant [2 x i8] c"\5a\6f", align 1
;-------------------------------
; Replace: store [1 x i8] c"\77", [1 x i8]* %sp0.5
@str.102 = private unnamed_addr constant [1 x i8] c"\1B", align 1
@key.102 = private unnamed_addr constant [1 x i8] c"\6c", align 1
;-------------------------------
; Replace: store [1 x i8] c"\2b", [1 x i8]* %sp1.5
@str.103 = private unnamed_addr constant [1 x i8] c"\5D", align 1
@key.103 = private unnamed_addr constant [1 x i8] c"\76", align 1
;-------------------------------
; Replace: store [2 x i8] c"\74\65", [2 x i8]* %sp0.6
@str.104 = private unnamed_addr constant [2 x i8] c"\06\0D", align 1
@key.104 = private unnamed_addr constant [2 x i8] c"\72\68", align 1
;-------------------------------
; Replace: store [3 x i8] c"\78\74\5f", [3 x i8]* %sp1.6
@str.105 = private unnamed_addr constant [3 x i8] c"\12\3F\39", align 1
@key.105 = private unnamed_addr constant [3 x i8] c"\6a\4b\66", align 1
;-------------------------------
; Replace: store [2 x i8] c"\66\69", [2 x i8]* %sp2.6
@str.106 = private unnamed_addr constant [2 x i8] c"\37\00", align 1
@key.106 = private unnamed_addr constant [2 x i8] c"\51\69", align 1
;-------------------------------
; Replace: store [3 x i8] c"\6c\65\33", [3 x i8]* %sp3.6
@str.107 = private unnamed_addr constant [3 x i8] c"\5D\0A\43", align 1
@key.107 = private unnamed_addr constant [3 x i8] c"\31\6f\70", align 1
;-------------------------------
; Replace: store [2 x i8] c"\2e\74", [2 x i8]* %sp4.6
@str.108 = private unnamed_addr constant [2 x i8] c"\7F\1C", align 1
@key.108 = private unnamed_addr constant [2 x i8] c"\51\68", align 1
;-------------------------------
; Replace: store [3 x i8] c"\78\74\00", [3 x i8]* %sp5.6
@str.109 = private unnamed_addr constant [3 x i8] c"\1C\0C\45", align 1
@key.109 = private unnamed_addr constant [3 x i8] c"\64\78\45", align 1
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
@str.110 = private unnamed_addr constant [2 x i8] c"\06\76", align 1
@key.110 = private unnamed_addr constant [2 x i8] c"\35\76", align 1

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
declare i32 @ptrace( i32, i32, i32, i32) naked noinline

; Function Attrs: norecurse
declare i32 @htonl(i32) local_unnamed_addr nofree noinline nosync nounwind readnone
declare i32 @alarm(i32) local_unnamed_addr noinline
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %rand_init47 = tail call i32 @rand()
  %rand_fin48 = srem i32 %rand_init47, 8
  %rand_init43 = tail call i32 @rand()
  %rand_fin44 = srem i32 %rand_init43, 8
  %rand_init39 = tail call i32 @rand()
  %rand_fin40 = srem i32 %rand_init39, 8
  %rand_init35 = tail call i32 @rand()
  %rand_fin36 = srem i32 %rand_init35, 8
  %rand_init31 = tail call i32 @rand()
  %rand_fin32 = srem i32 %rand_init31, 8
  %rand_init27 = tail call i32 @rand()
  %rand_fin28 = srem i32 %rand_init27, 8
  %rand_init23 = tail call i32 @rand()
  %rand_fin24 = srem i32 %rand_init23, 8
  %rand_init19 = tail call i32 @rand()
;-------------------------------
;----------Random Cond----------
  %.not45.i.i = icmp eq i32 1 , %rand_fin44 
  br i1 %.not45.i.i, label %next45, label %BB_21
next45:
;-------------------------------
  %rand_fin20 = srem i32 %rand_init19, 8
;----------------------------
  ; Detect tracing running
  %result.17 = tail call i32 @ptrace(i32 0, i32 0, i32 0, i32 0)
  %must.escape.17 = icmp eq i32 %result.17, -1
  br i1 %must.escape.17, label %.escape.17, label %.proceed.17
.proceed.17:
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
;-------------------------------
;----------Random Cond----------
  %.not21.i.i = icmp eq i32 3 , %rand_fin20 
  br i1 %.not21.i.i, label %next21, label %BB_21
next21:
;-------------------------------
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
  %tmp2_v6.i11.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v6.i11.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %sp0.1.83 = bitcast [2 x i8]* @str.83 to i16*
  %i0.83 = load i16, i16* %sp0.1.83

  %sp1.1.83 = bitcast [2 x i8]* @key.83 to i16*
  %i1.83 = load i16, i16* %sp1.1.83

  %xp83 = xor i16 %i0.83, %i1.83

  %fi.83 = alloca i16
  store i16 %xp83, i16* %fi.83

  %spi83 = ptrtoint i16* %fi.83 to i32
  store i32 %spi83, i32* %12, align 4
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
  %sp1 = alloca [4 x i8]

  
  %sp0.1 = bitcast [4 x i8]* %sp1 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\05", [1 x i8]* %sp0.1
  %sp0.1.84 = bitcast [1 x i8]* @str.84 to i8*
  %i0.84 = load i8, i8* %sp0.1.84

  %sp1.1.84 = bitcast [1 x i8]* @key.84 to i8*
  %i1.84 = load i8, i8* %sp1.1.84

  %xp84 = xor i8 %i0.84, %i1.84

  %fi.84 = alloca i8
  store i8 %xp84, i8* %fi.84

  %final.ptr.84 = bitcast i8* %fi.84 to [1 x i8]*
  %spi84 = load [1 x i8], [1 x i8]* %final.ptr.84
  store [1 x i8] %spi84, [1 x i8]* %sp0.1
;-------------------------------
  %next0.1 = getelementptr [4 x i8], [4 x i8]* %sp1, i32 0, i32 1
  
  %sp1.1 = bitcast i8* %next0.1 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\5a", [1 x i8]* %sp1.1
  %sp0.1.85 = bitcast [1 x i8]* @str.85 to i8*
  %i0.85 = load i8, i8* %sp0.1.85

  %sp1.1.85 = bitcast [1 x i8]* @key.85 to i8*
  %i1.85 = load i8, i8* %sp1.1.85

  %xp85 = xor i8 %i0.85, %i1.85

  %fi.85 = alloca i8
  store i8 %xp85, i8* %fi.85

  %final.ptr.85 = bitcast i8* %fi.85 to [1 x i8]*
  %spi85 = load [1 x i8], [1 x i8]* %final.ptr.85
  store [1 x i8] %spi85, [1 x i8]* %sp1.1
;-------------------------------
  %next1.1 = getelementptr [4 x i8], [4 x i8]* %sp1, i32 0, i32 2
  
  %sp2.1 = bitcast i8* %next1.1 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\2d", [1 x i8]* %sp2.1
  %sp0.1.86 = bitcast [1 x i8]* @str.86 to i8*
  %i0.86 = load i8, i8* %sp0.1.86

  %sp1.1.86 = bitcast [1 x i8]* @key.86 to i8*
  %i1.86 = load i8, i8* %sp1.1.86

  %xp86 = xor i8 %i0.86, %i1.86

  %fi.86 = alloca i8
  store i8 %xp86, i8* %fi.86

  %final.ptr.86 = bitcast i8* %fi.86 to [1 x i8]*
  %spi86 = load [1 x i8], [1 x i8]* %final.ptr.86
  store [1 x i8] %spi86, [1 x i8]* %sp2.1
;-------------------------------
  %next2.1 = getelementptr [4 x i8], [4 x i8]* %sp1, i32 0, i32 3
  
  %sp3.1 = bitcast i8* %next2.1 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp3.1

  %spi1 = ptrtoint [4 x i8]* %sp1 to i32
  store i32 %spi1, i32* %17, align 4
;-------------------------------
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i.i, -56
  %18 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %18, align 8
  %sp2 = alloca [14 x i8]

  
  %sp0.2 = bitcast [14 x i8]* %sp2 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\49\20", [2 x i8]* %sp0.2
  %sp0.1.87 = bitcast [2 x i8]* @str.87 to i16*
  %i0.87 = load i16, i16* %sp0.1.87

  %sp1.1.87 = bitcast [2 x i8]* @key.87 to i16*
  %i1.87 = load i16, i16* %sp1.1.87

  %xp87 = xor i16 %i0.87, %i1.87

  %fi.87 = alloca i16
  store i16 %xp87, i16* %fi.87

  %final.ptr.87 = bitcast i16* %fi.87 to [2 x i8]*
  %spi87 = load [2 x i8], [2 x i8]* %final.ptr.87
  store [2 x i8] %spi87, [2 x i8]* %sp0.2
;-------------------------------
;-------------------------------
;----------Random Cond----------
  %.not25.i.i = icmp eq i32 6 , %rand_fin24 
  br i1 %.not25.i.i, label %next25, label %BB_21
next25:
;-------------------------------
  %next0.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 2
  
  %sp1.2 = bitcast i8* %next0.2 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\61\6d", [2 x i8]* %sp1.2
  %sp0.1.88 = bitcast [2 x i8]* @str.88 to i16*
  %i0.88 = load i16, i16* %sp0.1.88

  %sp1.1.88 = bitcast [2 x i8]* @key.88 to i16*
  %i1.88 = load i16, i16* %sp1.1.88

  %xp88 = xor i16 %i0.88, %i1.88

  %fi.88 = alloca i16
  store i16 %xp88, i16* %fi.88

  %final.ptr.88 = bitcast i16* %fi.88 to [2 x i8]*
  %spi88 = load [2 x i8], [2 x i8]* %final.ptr.88
  store [2 x i8] %spi88, [2 x i8]* %sp1.2
;-------------------------------
  %next1.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 4
  
  %sp2.2 = bitcast i8* %next1.2 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\20\65\76", [3 x i8]* %sp2.2
  %sp0.1.89 = bitcast [3 x i8]* @str.89 to i24*
  %i0.89 = load i24, i24* %sp0.1.89

  %sp1.1.89 = bitcast [3 x i8]* @key.89 to i24*
  %i1.89 = load i24, i24* %sp1.1.89

  %xp89 = xor i24 %i0.89, %i1.89

  %fi.89 = alloca i24
  store i24 %xp89, i24* %fi.89

  %final.ptr.89 = bitcast i24* %fi.89 to [3 x i8]*
  %spi89 = load [3 x i8], [3 x i8]* %final.ptr.89
  store [3 x i8] %spi89, [3 x i8]* %sp2.2
;-------------------------------
  %next2.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 7
  %es57 = load i32, i32* %17, align 16
;-------------------------------
;--------Added Syst Call--------
  %a56 = tail call i32 @fopen( i32 %es57, i32 %tmp2_v6.i.i)
;-------------------------------
  
  %sp3.2 = bitcast i8* %next2.2 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\69\6c", [2 x i8]* %sp3.2
  %sp0.1.90 = bitcast [2 x i8]* @str.90 to i16*
  %i0.90 = load i16, i16* %sp0.1.90

  %sp1.1.90 = bitcast [2 x i8]* @key.90 to i16*
  %i1.90 = load i16, i16* %sp1.1.90

  %xp90 = xor i16 %i0.90, %i1.90

  %fi.90 = alloca i16
  store i16 %xp90, i16* %fi.90

  %final.ptr.90 = bitcast i16* %fi.90 to [2 x i8]*
  %spi90 = load [2 x i8], [2 x i8]* %final.ptr.90
  store [2 x i8] %spi90, [2 x i8]* %sp3.2
;-------------------------------
  %next3.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 9
  
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @unions108 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack107, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %sp4.2 = bitcast i8* %next3.2 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\21\21", [2 x i8]* %sp4.2
  %sp0.1.91 = bitcast [2 x i8]* @str.91 to i16*
  %i0.91 = load i16, i16* %sp0.1.91

  %sp1.1.91 = bitcast [2 x i8]* @key.91 to i16*
  %i1.91 = load i16, i16* %sp1.1.91

  %xp91 = xor i16 %i0.91, %i1.91

  %fi.91 = alloca i16
  store i16 %xp91, i16* %fi.91

  %final.ptr.91 = bitcast i16* %fi.91 to [2 x i8]*
  %spi91 = load [2 x i8], [2 x i8]* %final.ptr.91
  store [2 x i8] %spi91, [2 x i8]* %sp4.2
;-------------------------------
  %next4.2 = getelementptr [14 x i8], [14 x i8]* %sp2, i32 0, i32 11
  
  %sp5.2 = bitcast i8* %next4.2 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\21\0a\00", [3 x i8]* %sp5.2
  %sp0.1.92 = bitcast [3 x i8]* @str.92 to i24*
  %i0.92 = load i24, i24* %sp0.1.92

  %sp1.1.92 = bitcast [3 x i8]* @key.92 to i24*
  %i1.92 = load i24, i24* %sp1.1.92

  %xp92 = xor i24 %i0.92, %i1.92

  %fi.92 = alloca i24
  store i24 %xp92, i24* %fi.92

  %final.ptr.92 = bitcast i24* %fi.92 to [3 x i8]*
  %spi92 = load [3 x i8], [3 x i8]* %final.ptr.92
  store [3 x i8] %spi92, [3 x i8]* %sp5.2
;-------------------------------

  %spi2 = ptrtoint [14 x i8]* %sp2 to i32
  store i32 %spi2, i32* %18, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp3 = alloca [9 x i8]

;-------------------------------
;----------Random Cond----------
  %.not37.i.i = icmp eq i32 7 , %rand_fin36 
  br i1 %.not37.i.i, label %next37, label %BB_21
next37:
;-------------------------------
  
  %sp0.3 = bitcast [9 x i8]* %sp3 to [1 x i8]*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @triangle_of_stars906 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack905, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
;----------Random Cond----------
  %.not33.i.i = icmp eq i32 0 , %rand_fin32 
  br i1 %.not33.i.i, label %next33, label %BB_21
next33:
;-------------------------------
;-------------------------------
; Replace: store [1 x i8] c"\42", [1 x i8]* %sp0.3
  %sp0.1.93 = bitcast [1 x i8]* @str.93 to i8*
  %i0.93 = load i8, i8* %sp0.1.93

  %sp1.1.93 = bitcast [1 x i8]* @key.93 to i8*
  %i1.93 = load i8, i8* %sp1.1.93

  %xp93 = xor i8 %i0.93, %i1.93

  %fi.93 = alloca i8
  store i8 %xp93, i8* %fi.93

  %final.ptr.93 = bitcast i8* %fi.93 to [1 x i8]*
  %spi93 = load [1 x i8], [1 x i8]* %final.ptr.93
  store [1 x i8] %spi93, [1 x i8]* %sp0.3
;-------------------------------
  %next0.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 1
  
  %sp1.3 = bitcast i8* %next0.3 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\79\65", [2 x i8]* %sp1.3
  %sp0.1.94 = bitcast [2 x i8]* @str.94 to i16*
  %i0.94 = load i16, i16* %sp0.1.94

  %sp1.1.94 = bitcast [2 x i8]* @key.94 to i16*
  %i1.94 = load i16, i16* %sp1.1.94

  %xp94 = xor i16 %i0.94, %i1.94

  %fi.94 = alloca i16
  store i16 %xp94, i16* %fi.94

  %final.ptr.94 = bitcast i16* %fi.94 to [2 x i8]*
  %spi94 = load [2 x i8], [2 x i8]* %final.ptr.94
  store [2 x i8] %spi94, [2 x i8]* %sp1.3
;-------------------------------
  %next1.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 3
  
  %sp2.3 = bitcast i8* %next1.3 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\20", [1 x i8]* %sp2.3
  %sp0.1.95 = bitcast [1 x i8]* @str.95 to i8*
  %i0.95 = load i8, i8* %sp0.1.95

  %sp1.1.95 = bitcast [1 x i8]* @key.95 to i8*
  %i1.95 = load i8, i8* %sp1.1.95

  %xp95 = xor i8 %i0.95, %i1.95

  %fi.95 = alloca i8
  store i8 %xp95, i8* %fi.95

  %final.ptr.95 = bitcast i8* %fi.95 to [1 x i8]*
  %spi95 = load [1 x i8], [1 x i8]* %final.ptr.95
  store [1 x i8] %spi95, [1 x i8]* %sp2.3
;-------------------------------
  %next2.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 4
  
  %sp3.3 = bitcast i8* %next2.3 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\42\79", [2 x i8]* %sp3.3
  %sp0.1.96 = bitcast [2 x i8]* @str.96 to i16*
  %i0.96 = load i16, i16* %sp0.1.96

  %sp1.1.96 = bitcast [2 x i8]* @key.96 to i16*
  %i1.96 = load i16, i16* %sp1.1.96

  %xp96 = xor i16 %i0.96, %i1.96

  %fi.96 = alloca i16
  store i16 %xp96, i16* %fi.96

  %final.ptr.96 = bitcast i16* %fi.96 to [2 x i8]*
  %spi96 = load [2 x i8], [2 x i8]* %final.ptr.96
  store [2 x i8] %spi96, [2 x i8]* %sp3.3
;-------------------------------
  %next3.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 6
  
  %sp4.3 = bitcast i8* %next3.3 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\65", [1 x i8]* %sp4.3
  %sp0.1.97 = bitcast [1 x i8]* @str.97 to i8*
  %i0.97 = load i8, i8* %sp0.1.97

  %sp1.1.97 = bitcast [1 x i8]* @key.97 to i8*
  %i1.97 = load i8, i8* %sp1.1.97

  %xp97 = xor i8 %i0.97, %i1.97

  %fi.97 = alloca i8
  store i8 %xp97, i8* %fi.97

  %final.ptr.97 = bitcast i8* %fi.97 to [1 x i8]*
  %spi97 = load [1 x i8], [1 x i8]* %final.ptr.97
  store [1 x i8] %spi97, [1 x i8]* %sp4.3
;-------------------------------
  %next4.3 = getelementptr [9 x i8], [9 x i8]* %sp3, i32 0, i32 7
  
  %sp5.3 = bitcast i8* %next4.3 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\0a\00", [2 x i8]* %sp5.3
  %sp0.1.98 = bitcast [2 x i8]* @str.98 to i16*
  %i0.98 = load i16, i16* %sp0.1.98

  %sp1.1.98 = bitcast [2 x i8]* @key.98 to i16*
  %i1.98 = load i16, i16* %sp1.1.98

  %xp98 = xor i16 %i0.98, %i1.98

  %fi.98 = alloca i16
  store i16 %xp98, i16* %fi.98

  %final.ptr.98 = bitcast i16* %fi.98 to [2 x i8]*
  %spi98 = load [2 x i8], [2 x i8]* %final.ptr.98
  store [2 x i8] %spi98, [2 x i8]* %sp5.3
;-------------------------------

  %spi3 = ptrtoint [9 x i8]* %sp3 to i32
  store i32 %spi3, i32* %14, align 4
;-------------------------------
  %19 = load i32, i32* %18, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -76
  %20 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %19, i32* %20, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -80
  %21 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %21, align 16
  %sp4 = alloca [3 x i8]

  
  %sp0.4 = bitcast [3 x i8]* %sp4 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\25", [1 x i8]* %sp0.4
  %sp0.1.99 = bitcast [1 x i8]* @str.99 to i8*
  %i0.99 = load i8, i8* %sp0.1.99

  %sp1.1.99 = bitcast [1 x i8]* @key.99 to i8*
  %i1.99 = load i8, i8* %sp1.1.99

  %xp99 = xor i8 %i0.99, %i1.99

  %fi.99 = alloca i8
  store i8 %xp99, i8* %fi.99

  %final.ptr.99 = bitcast i8* %fi.99 to [1 x i8]*
  %spi99 = load [1 x i8], [1 x i8]* %final.ptr.99
  store [1 x i8] %spi99, [1 x i8]* %sp0.4
;-------------------------------
  %next0.4 = getelementptr [3 x i8], [3 x i8]* %sp4, i32 0, i32 1
  
  %sp1.4 = bitcast i8* %next0.4 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\73", [1 x i8]* %sp1.4
  %sp0.1.100 = bitcast [1 x i8]* @str.100 to i8*
  %i0.100 = load i8, i8* %sp0.1.100

  %sp1.1.100 = bitcast [1 x i8]* @key.100 to i8*
  %i1.100 = load i8, i8* %sp1.1.100

  %xp100 = xor i8 %i0.100, %i1.100

  %fi.100 = alloca i8
  store i8 %xp100, i8* %fi.100

  %final.ptr.100 = bitcast i8* %fi.100 to [1 x i8]*
  %spi100 = load [1 x i8], [1 x i8]* %final.ptr.100
  store [1 x i8] %spi100, [1 x i8]* %sp1.4
;-------------------------------
  %next1.4 = getelementptr [3 x i8], [3 x i8]* %sp4, i32 0, i32 2
  
  %sp2.4 = bitcast i8* %next1.4 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp2.4

  %spi4 = ptrtoint [3 x i8]* %sp4 to i32
;-------------------------------
;----------Random Cond----------
  %.not41.i.i = icmp eq i32 0 , %rand_fin40 
  br i1 %.not41.i.i, label %next41, label %BB_21
next41:
;-------------------------------
  store i32 %spi4, i32* %21, align 16
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
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @move_zeros939 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack938, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
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
  %sp0.1.101 = bitcast [2 x i8]* @str.101 to i16*
  %i0.101 = load i16, i16* %sp0.1.101

  %sp1.1.101 = bitcast [2 x i8]* @key.101 to i16*
  %i1.101 = load i16, i16* %sp1.1.101

  %xp101 = xor i16 %i0.101, %i1.101

  %fi.101 = alloca i16
  store i16 %xp101, i16* %fi.101

  %spi101 = ptrtoint i16* %fi.101 to i32
  store i32 %spi101, i32* %12, align 4
;-------------------------------
  store i32 %34, i32* %13, align 16
;-------------------------------
;--------Added Syst Call--------
  %a55 = tail call i32 @alarm (i32 %tmp2_v.i.i)
;-------------------------------
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
;-------------------------------
;----------Random Cond----------
  %.not49.i.i = icmp eq i32 7 , %rand_fin48 
  br i1 %.not49.i.i, label %next49, label %BB_21
next49:
;-------------------------------
  %tmp4_v.i.i.b.i = load i1, i1* @segs.0, align 1
  %38 = select i1 %tmp4_v.i.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %tmp2_v5.i.i.i13 = add i32 %tmp0_v.i.i, -92
  %40 = inttoptr i32 %tmp2_v5.i.i.i13 to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %40, align 4
  %sp5 = alloca [3 x i8]

  
  %sp0.5 = bitcast [3 x i8]* %sp5 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\77", [1 x i8]* %sp0.5
  %sp0.1.102 = bitcast [1 x i8]* @str.102 to i8*
  %i0.102 = load i8, i8* %sp0.1.102

  %sp1.1.102 = bitcast [1 x i8]* @key.102 to i8*
  %i1.102 = load i8, i8* %sp1.1.102

  %xp102 = xor i8 %i0.102, %i1.102

  %fi.102 = alloca i8
  store i8 %xp102, i8* %fi.102

  %final.ptr.102 = bitcast i8* %fi.102 to [1 x i8]*
  %spi102 = load [1 x i8], [1 x i8]* %final.ptr.102
  store [1 x i8] %spi102, [1 x i8]* %sp0.5
;-------------------------------
  %next0.5 = getelementptr [3 x i8], [3 x i8]* %sp5, i32 0, i32 1
  
;-------------------------------
;----------Random Cond----------
  %.not29.i.i = icmp eq i32 5 , %rand_fin28 
  br i1 %.not29.i.i, label %next29, label %BB_21
next29:
;-------------------------------
  %sp1.5 = bitcast i8* %next0.5 to [1 x i8]*
;-------------------------------
; Replace: store [1 x i8] c"\2b", [1 x i8]* %sp1.5
  %sp0.1.103 = bitcast [1 x i8]* @str.103 to i8*
  %i0.103 = load i8, i8* %sp0.1.103

  %sp1.1.103 = bitcast [1 x i8]* @key.103 to i8*
  %i1.103 = load i8, i8* %sp1.1.103

  %xp103 = xor i8 %i0.103, %i1.103

  %fi.103 = alloca i8
  store i8 %xp103, i8* %fi.103

  %final.ptr.103 = bitcast i8* %fi.103 to [1 x i8]*
  %spi103 = load [1 x i8], [1 x i8]* %final.ptr.103
  store [1 x i8] %spi103, [1 x i8]* %sp1.5
;-------------------------------
  %next1.5 = getelementptr [3 x i8], [3 x i8]* %sp5, i32 0, i32 2
  
  %sp2.5 = bitcast i8* %next1.5 to [1 x i8]*
  store [1 x i8] c"\00", [1 x i8]* %sp2.5

  %spi5 = ptrtoint [3 x i8]* %sp5 to i32
  store i32 %spi5, i32* %40, align 4
;-------------------------------
  %tmp2_v7.i.i.i14 = add i32 %tmp0_v.i.i, -96
  %41 = inttoptr i32 %tmp2_v7.i.i.i14 to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %41, align 16
  %sp6 = alloca [15 x i8]

  
  %sp0.6 = bitcast [15 x i8]* %sp6 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\74\65", [2 x i8]* %sp0.6
  %sp0.1.104 = bitcast [2 x i8]* @str.104 to i16*
  %i0.104 = load i16, i16* %sp0.1.104

  %sp1.1.104 = bitcast [2 x i8]* @key.104 to i16*
  %i1.104 = load i16, i16* %sp1.1.104

  %xp104 = xor i16 %i0.104, %i1.104

  %fi.104 = alloca i16
  store i16 %xp104, i16* %fi.104

  %final.ptr.104 = bitcast i16* %fi.104 to [2 x i8]*
  %spi104 = load [2 x i8], [2 x i8]* %final.ptr.104
  store [2 x i8] %spi104, [2 x i8]* %sp0.6
;-------------------------------
  %next0.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 2
  
  %sp1.6 = bitcast i8* %next0.6 to [3 x i8]*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @dice_roll800 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack799, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
; Replace: store [3 x i8] c"\78\74\5f", [3 x i8]* %sp1.6
  %sp0.1.105 = bitcast [3 x i8]* @str.105 to i24*
  %i0.105 = load i24, i24* %sp0.1.105

  %sp1.1.105 = bitcast [3 x i8]* @key.105 to i24*
  %i1.105 = load i24, i24* %sp1.1.105

  %xp105 = xor i24 %i0.105, %i1.105

  %fi.105 = alloca i24
  store i24 %xp105, i24* %fi.105

  %final.ptr.105 = bitcast i24* %fi.105 to [3 x i8]*
  %spi105 = load [3 x i8], [3 x i8]* %final.ptr.105
  store [3 x i8] %spi105, [3 x i8]* %sp1.6
;-------------------------------
  %next1.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 5
  
  %sp2.6 = bitcast i8* %next1.6 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\66\69", [2 x i8]* %sp2.6
  %sp0.1.106 = bitcast [2 x i8]* @str.106 to i16*
  %i0.106 = load i16, i16* %sp0.1.106

  %sp1.1.106 = bitcast [2 x i8]* @key.106 to i16*
  %i1.106 = load i16, i16* %sp1.1.106

  %xp106 = xor i16 %i0.106, %i1.106

  %fi.106 = alloca i16
  store i16 %xp106, i16* %fi.106

  %final.ptr.106 = bitcast i16* %fi.106 to [2 x i8]*
  %spi106 = load [2 x i8], [2 x i8]* %final.ptr.106
  store [2 x i8] %spi106, [2 x i8]* %sp2.6
;-------------------------------
  %next2.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 7
;-------------------------------
;--------Added Syst Call--------
  %a58 = tail call i32 @htonl(i32 %tmp0_v.i.i)
;-------------------------------
  
  %sp3.6 = bitcast i8* %next2.6 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\6c\65\33", [3 x i8]* %sp3.6
  %sp0.1.107 = bitcast [3 x i8]* @str.107 to i24*
  %i0.107 = load i24, i24* %sp0.1.107

  %sp1.1.107 = bitcast [3 x i8]* @key.107 to i24*
  %i1.107 = load i24, i24* %sp1.1.107

  %xp107 = xor i24 %i0.107, %i1.107

  %fi.107 = alloca i24
  store i24 %xp107, i24* %fi.107

  %final.ptr.107 = bitcast i24* %fi.107 to [3 x i8]*
  %spi107 = load [3 x i8], [3 x i8]* %final.ptr.107
  store [3 x i8] %spi107, [3 x i8]* %sp3.6
;-------------------------------
  %next3.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 10
  
  %sp4.6 = bitcast i8* %next3.6 to [2 x i8]*
;-------------------------------
; Replace: store [2 x i8] c"\2e\74", [2 x i8]* %sp4.6
  %sp0.1.108 = bitcast [2 x i8]* @str.108 to i16*
  %i0.108 = load i16, i16* %sp0.1.108

  %sp1.1.108 = bitcast [2 x i8]* @key.108 to i16*
  %i1.108 = load i16, i16* %sp1.1.108

  %xp108 = xor i16 %i0.108, %i1.108

  %fi.108 = alloca i16
  store i16 %xp108, i16* %fi.108

  %final.ptr.108 = bitcast i16* %fi.108 to [2 x i8]*
  %spi108 = load [2 x i8], [2 x i8]* %final.ptr.108
  store [2 x i8] %spi108, [2 x i8]* %sp4.6
;-------------------------------
  %next4.6 = getelementptr [15 x i8], [15 x i8]* %sp6, i32 0, i32 12
  
  %sp5.6 = bitcast i8* %next4.6 to [3 x i8]*
;-------------------------------
; Replace: store [3 x i8] c"\78\74\00", [3 x i8]* %sp5.6
  %sp0.1.109 = bitcast [3 x i8]* @str.109 to i24*
  %i0.109 = load i24, i24* %sp0.1.109

  %sp1.1.109 = bitcast [3 x i8]* @key.109 to i24*
  %i1.109 = load i24, i24* %sp1.1.109

  %xp109 = xor i24 %i0.109, %i1.109

  %fi.109 = alloca i24
  store i24 %xp109, i24* %fi.109

  %final.ptr.109 = bitcast i24* %fi.109 to [3 x i8]*
  %spi109 = load [3 x i8], [3 x i8]* %final.ptr.109
  store [3 x i8] %spi109, [3 x i8]* %sp5.6
;-------------------------------

  %es60 = load i32, i32* %41, align 16
  %es61 = load i32, i32* %14, align 16
;-------------------------------
;--------Added Syst Call--------
  %a59 = tail call i32 @strcmp( i32 %es60, i32 %es61)
;-------------------------------
  %spi6 = ptrtoint [15 x i8]* %sp6 to i32
  store i32 %spi6, i32* %41, align 16
;-------------------------------
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i.i, -100
  %42 = inttoptr i32 %tmp2_v8.i.i.i to i32*
  store i32 134517521, i32* %42, align 4
  %arg.i.i.i15 = load i32, i32* %41, align 16
  %arg2.i.i.i16 = load i32, i32* %40, align 4
  %43 = tail call i32 @fopen(i32 %arg.i.i.i15, i32 %arg2.i.i.i16)
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i.i, -76
  %44 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %43, i32* %44, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i.i, -72
  %45 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 1818304585, i32* %45, align 8
  %es65 = load i32, i32* %12, align 16
;-------------------------------
;--------Added Syst Call--------
  %a64 = tail call i32 @strlen(i32 %es65)
;-------------------------------
  %tmp2_v1.i16.i.i = add i32 %tmp0_v.i.i, -68
  %46 = inttoptr i32 %tmp2_v1.i16.i.i to i32*
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
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @convert_vowels_uppercase357 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack356, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg.i.i4.i = load i32, i32* %41, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @bubble_sort344 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack343, i32 0, i32 8092) to i32)) nounwind
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
  br label %.exit

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i43.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i43.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %sp0.1.110 = bitcast [2 x i8]* @str.110 to i16*
  %i0.110 = load i16, i16* %sp0.1.110

  %sp1.1.110 = bitcast [2 x i8]* @key.110 to i16*
  %i1.110 = load i16, i16* %sp1.1.110

  %xp110 = xor i16 %i0.110, %i1.110

  %fi.110 = alloca i16
  store i16 %xp110, i16* %fi.110

  %spi110 = ptrtoint i16* %fi.110 to i32
  store i32 %spi110, i32* %12, align 4
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i19 = load i32, i32* %13, align 16
  %arg2.i.i20 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i19, i32 %arg2.i.i20)
  %.not.i.i = icmp eq i32 %58, 0
  br i1 %.not.i.i, label %BB_8049472.i, label %.exit

.exit:                                            ; preds = %BB_8049453.i, %BB_804944C.i, %BB_8049472.i, %BB_8049426.i
  ret void
.escape.17:
  ret void
BB_21:
  ret void
}

define internal fastcc void @triangle_of_stars906(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !100 {
  %tmp2_v.i28.i = add i32 %arg_esp, 4
  %tmp0_v.i29.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i31.i = add i32 %tmp0_v.i29.i, -4
  %3 = inttoptr i32 %tmp2_v3.i31.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i32.i = add i32 %tmp0_v.i29.i, -8
  %4 = inttoptr i32 %tmp2_v4.i32.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i34.i = add i32 %tmp0_v.i29.i, -12
  %5 = inttoptr i32 %tmp2_v5.i34.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i29.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i28.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i29.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %7, align 4
  %tmp2_v.i48.i = add i32 %tmp0_v.i29.i, -24
  %8 = inttoptr i32 %tmp2_v.i48.i to i32*
  %tmp2_v.i44.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v.i44.i to i32*
  store i32 1, i32* %8, align 8
  %tmp2_v.i41.i = add i32 %tmp0_v.i29.i, -48
  %10 = inttoptr i32 %tmp2_v.i41.i to i32*
  %tmp2_v1.i42.i = add i32 %tmp0_v.i29.i, -52
  %11 = inttoptr i32 %tmp2_v1.i42.i to i32*
  br label %BB_80491C0.i

BB_80491E2.i:                                     ; preds = %BB_80491C0.i, %BB_80491C9.i
  store i32 10, i32* %10, align 16
  store i32 134517228, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %12 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %13 = load i32, i32* %8, align 8
  %tmp0_v2.i.i = add i32 %13, 1
  store i32 %tmp0_v2.i.i, i32* %8, align 8
  %14 = icmp slt i32 %tmp0_v2.i.i, 11
  br i1 %14, label %BB_80491C0.i, label %.exit

BB_80491C9.i:                                     ; preds = %BB_80491C0.i, %BB_80491C9.i
  store i32 42, i32* %10, align 16
  store i32 134517203, i32* %11, align 4
  %arg.i.i5 = load i32, i32* %10, align 16
  %15 = tail call i32 @putchar(i32 %arg.i.i5)  nounwind 
  %16 = load i32, i32* %9, align 4
  %tmp0_v2.i20.i = add i32 %16, 1
  store i32 %tmp0_v2.i20.i, i32* %9, align 4
  %17 = load i32, i32* %8, align 8
  %.not.i.i = icmp sgt i32 %tmp0_v2.i20.i, %17
  br i1 %.not.i.i, label %BB_80491E2.i, label %BB_80491C9.i

BB_80491C0.i:                                     ; preds = %BB_80491E2.i, %0
  store i32 1, i32* %9, align 4
  %18 = load i32, i32* %8, align 8
  %.not.i.i6 = icmp slt i32 %18, 1
  br i1 %.not.i.i6, label %BB_80491E2.i, label %BB_80491C9.i

.exit:                                            ; preds = %BB_80491E2.i
  ret void
}
define internal fastcc void @dice_roll800(i32 %arg_esp) unnamed_addr  norecurse  !retregs !88 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %7, align 4
  %tmp2_v.i14.i = add i32 %tmp0_v.i.i, -48
  %8 = inttoptr i32 %tmp2_v.i14.i to i32*
  store i32 0, i32* %8, align 16
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -52
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517281, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = tail call i32 @time(i32 %arg.i.i)
  store i32 %10, i32* %8, align 16
  store i32 134517293, i32* %9, align 4
  %arg.i.i4 = load i32, i32* %8, align 16
  tail call void @srand(i32 %arg.i.i4)
  %tmp2_v.i38.i = add i32 %tmp0_v.i.i, -24
  %11 = inttoptr i32 %tmp2_v.i38.i to i32*
  store i32 10, i32* %11, align 8
  %tmp2_v1.i.i = add i32 %tmp0_v.i.i, -20
  %12 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %12, align 4
  %tmp2_v2.i39.i = add i32 %tmp0_v.i.i, -28
  %13 = inttoptr i32 %tmp2_v2.i39.i to i32*
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %11, align 8
  %.not.i46.i7 = icmp slt i32 %14, 1
  br i1 %.not.i46.i7, label %.exit, label %BB_8049247.i.lr.ph

BB_8049247.i.lr.ph:                               ; preds = %0
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -40
  %15 = inttoptr i32 %tmp2_v12.i.i to i32*
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -44
  %16 = inttoptr i32 %tmp2_v15.i.i to i32*
  br label %BB_8049247.i

BB_8049247.i:                                     ; preds = %BB_8049247.i, %BB_8049247.i.lr.ph
  store i32 134517324, i32* %7, align 4
  %17 = tail call i32 @rand()
  %tmp16_v.i.i = sext i32 %17 to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 715827883
  %tmp15_v1.i.i = lshr i64 %tmp15_v.i.i, 32
  %18 = trunc i64 %tmp15_v1.i.i to i32
  %tmp0_v2.i20.i.neg = lshr i32 %17, 31
  %tmp0_v3.i.i = add i32 %tmp0_v2.i20.i.neg, %18
  %tmp0_v6.i.i.neg = mul i32 %tmp0_v3.i.i, -6
  %tmp0_v7.i22.i = add i32 %tmp0_v6.i.i.neg, %17
  %tmp2_v.i23.i = add i32 %tmp0_v7.i22.i, 1
  store i32 %tmp2_v.i23.i, i32* %12, align 4
  store i32 %tmp2_v.i23.i, i32* %15, align 8
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.798 = ptrtoint[13 x i8]* @str.bis.798 to i32
  %sp0.1.67 = bitcast [13 x i8]* @str.67 to i104*
  %i0.67 = load i104, i104* %sp0.1.67

  %sp1.1.67 = bitcast [13 x i8]* @key.67 to i104*
  %i1.67 = load i104, i104* %sp1.1.67

  %xp67 = xor i104 %i0.67, %i1.67

  %fi.67 = alloca i104
  store i104 %xp67, i104* %fi.67

  %spi67 = bitcast i104* %fi.67 to [13 x i8]*
  %spi.bis.798 = ptrtoint[13 x i8]* %spi67 to i32
;-------------------------------
  store i32 %spi.bis.798, i32* %8, align 16
  store i32 134517381, i32* %9, align 4
  %20 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v7.i22.i, i32 inreg noundef %tmp0_v7.i22.i, i32 noundef %tmp2_v.i14.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !89
  %21 = load i32, i32* %13, align 4
  %tmp0_v2.i7.i = add i32 %21, 1
  store i32 %tmp0_v2.i7.i, i32* %13, align 4
  %22 = load i32, i32* %11, align 8
  %.not.i46.i = icmp sgt i32 %tmp0_v2.i7.i, %22
  br i1 %.not.i46.i, label %.exit, label %BB_8049247.i

.exit:                                            ; preds = %BB_8049247.i, %0
  ret void
}
define internal fastcc void @bubble_sort344(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !74 {
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i23.i, -4
  %3 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i26.i = add i32 %tmp0_v.i23.i, -8
  %4 = inttoptr i32 %tmp2_v4.i26.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i28.i = add i32 %tmp0_v.i23.i, -12
  %5 = inttoptr i32 %tmp2_v5.i28.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i30.i = add i32 %tmp0_v.i23.i, -16
  %6 = inttoptr i32 %tmp2_v6.i30.i to i32*
  store i32 %tmp2_v.i22.i, i32* %6, align 16
  %tmp2_v8.i32.i = add i32 %tmp0_v.i23.i, -84
  %7 = inttoptr i32 %tmp2_v8.i32.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp4_v.i42.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i46.i = add i32 %tmp0_v.i23.i, -20
  %10 = inttoptr i32 %tmp2_v2.i46.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i47.i = add i32 %tmp0_v.i23.i, -60
  %11 = inttoptr i32 %tmp2_v3.i47.i to i32*
  store i32 1, i32* %11, align 4
  %tmp2_v4.i48.i = add i32 %tmp0_v.i23.i, -56
  %12 = inttoptr i32 %tmp2_v4.i48.i to i32*
  store i32 3, i32* %12, align 8
  %tmp2_v5.i49.i = add i32 %tmp0_v.i23.i, -52
  %13 = inttoptr i32 %tmp2_v5.i49.i to i32*
  store i32 7, i32* %13, align 4
  %tmp2_v6.i50.i = add i32 %tmp0_v.i23.i, -48
  %14 = inttoptr i32 %tmp2_v6.i50.i to i32*
  store i32 0, i32* %14, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i23.i, -44
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 2, i32* %15, align 4
  %tmp2_v8.i51.i = add i32 %tmp0_v.i23.i, -40
  %16 = inttoptr i32 %tmp2_v8.i51.i to i32*
  store i32 4, i32* %16, align 8
  %tmp2_v9.i52.i = add i32 %tmp0_v.i23.i, -36
  %17 = inttoptr i32 %tmp2_v9.i52.i to i32*
  store i32 9, i32* %17, align 4
  %tmp2_v10.i53.i = add i32 %tmp0_v.i23.i, -32
  %18 = inttoptr i32 %tmp2_v10.i53.i to i32*
  store i32 5, i32* %18, align 16
  %tmp2_v11.i54.i = add i32 %tmp0_v.i23.i, -28
  %19 = inttoptr i32 %tmp2_v11.i54.i to i32*
  store i32 8, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i23.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i23.i, -64
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i23.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 10, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i23.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i47.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i23.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517310, i32* %24, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i23.i, -104
  %25 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i26.i, i32* %25, align 8
  %tmp2_v1.i4.i.i = add i32 %tmp0_v.i23.i, -124
  %26 = inttoptr i32 %tmp2_v1.i4.i.i to i32*
;-------------------------------
; Replace: %spi.bis.342 = ptrtoint[4 x i8]* @str.bis.342 to i32
  %sp0.1.69 = bitcast [4 x i8]* @str.69 to i32*
  %i0.69 = load i32, i32* %sp0.1.69

  %sp1.1.69 = bitcast [4 x i8]* @key.69 to i32*
  %i1.69 = load i32, i32* %sp1.1.69

  %xp69 = xor i32 %i0.69, %i1.69

  %fi.69 = alloca i32
  store i32 %xp69, i32* %fi.69

  %spi69 = bitcast i32* %fi.69 to [4 x i8]*
  %spi.bis.342 = ptrtoint[4 x i8]* %spi69 to i32
;-------------------------------
  store i32 %spi.bis.342, i32* %26, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i23.i, -117
  %27 = inttoptr i32 %tmp2_v.i.i.i to i8*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i23.i, -116
  %28 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %28, align 4
  store i8 0, i8* %27, align 1
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i23.i, -112
  %29 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 0, i32* %29, align 16
  %tmp2_v5.i17.i.i = add i32 %tmp0_v.i23.i, -108
  %30 = inttoptr i32 %tmp2_v5.i17.i.i to i32*
  br label %BB_8049343.i.outer.i

BB_8049343.i.outer.i:                             ; preds = %BB_804933F.i.i, %0
  %31 = phi i32 [ %tmp0_v1.i37.i.i, %BB_804933F.i.i ], [ 0, %0 ]
  %r_ecx.0.ph.i = phi i32 [ %r_ecx.1.i, %BB_804933F.i.i ], [ %tmp2_v.i22.i, %0 ]
  %r_edx.0.ph.i = phi i32 [ %r_edx.1.i, %BB_804933F.i.i ], [ 0, %0 ]
  %32 = load i32, i32* %22, align 4
  %33 = load i32, i32* %28, align 4
  %34 = xor i32 %33, -1
  %tmp0_v3.i31.i4.i = add i32 %32, %34
  %35 = icmp slt i32 %31, %tmp0_v3.i31.i4.i
  br i1 %35, label %BB_80492C2.i.i, label %BB_8049355.i.i

BB_80492C2.i.i:                                   ; preds = %BB_80492B2.i.i, %BB_8049343.i.outer.i
  %.lcssa.i = phi i32 [ %31, %BB_8049343.i.outer.i ], [ 0, %BB_80492B2.i.i ]
  %tmp4_v.i.i.i1 = shl i32 %.lcssa.i, 2
  %36 = load i32, i32* %23, align 16
  %tmp0_v3.i.i.i = add i32 %36, %tmp4_v.i.i.i1
  %37 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %38 = load i32, i32* %37, align 4
  %tmp4_v8.i.i.i = add i32 %tmp4_v.i.i.i1, 4
  %tmp0_v11.i.i.i = add i32 %tmp4_v8.i.i.i, %36
  %39 = inttoptr i32 %tmp0_v11.i.i.i to i32*
  %40 = load i32, i32* %39, align 4
  %.not.i.i.i = icmp slt i32 %38, %40
  br i1 %.not.i.i.i, label %BB_80492EB.i.i, label %BB_804933F.i.i

BB_80492EB.i.i:                                   ; preds = %BB_80492C2.i.i
  store i32 %38, i32* %30, align 4
  %41 = load i32, i32* %29, align 16
  %tmp0_v8.i.i.i = shl i32 %41, 2
  %42 = load i32, i32* %23, align 16
  %tmp4_v9.i.i.i = add i32 %42, %tmp0_v8.i.i.i
  %tmp0_v12.i20.i.i = add i32 %tmp4_v9.i.i.i, 4
  %43 = inttoptr i32 %tmp0_v12.i20.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %45 = inttoptr i32 %tmp4_v9.i.i.i to i32*
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %29, align 16
  %tmp0_v22.i.i.i = shl i32 %46, 2
  %tmp4_v23.i.i.i = add i32 %tmp0_v22.i.i.i, 4
  %47 = load i32, i32* %23, align 16
  %tmp0_v26.i.i.i = add i32 %tmp4_v23.i.i.i, %47
  %48 = load i32, i32* %30, align 4
  %49 = inttoptr i32 %tmp0_v26.i.i.i to i32*
  store i32 %48, i32* %49, align 4
  store i8 1, i8* %27, align 1
  %.pre.i = load i32, i32* %29, align 16
  br label %BB_804933F.i.i

BB_80492B2.i.i:                                   ; preds = %BB_8049355.i.i
  store i8 0, i8* %27, align 1
  store i32 0, i32* %29, align 16
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %28, align 4
  %52 = xor i32 %51, -1
  %tmp0_v3.i31.i.i = add i32 %50, %52
  %53 = icmp sgt i32 %tmp0_v3.i31.i.i, 0
  br i1 %53, label %BB_80492C2.i.i, label %BB_8049355.i.i

BB_804933F.i.i:                                   ; preds = %BB_80492EB.i.i, %BB_80492C2.i.i
  %54 = phi i32 [ %.lcssa.i, %BB_80492C2.i.i ], [ %.pre.i, %BB_80492EB.i.i ]
  %r_ecx.1.i = phi i32 [ %tmp4_v8.i.i.i, %BB_80492C2.i.i ], [ %tmp0_v8.i.i.i, %BB_80492EB.i.i ]
  %r_edx.1.i = phi i32 [ %38, %BB_80492C2.i.i ], [ %tmp0_v26.i.i.i, %BB_80492EB.i.i ]
  %tmp0_v1.i37.i.i = add i32 %54, 1
  store i32 %tmp0_v1.i37.i.i, i32* %29, align 16
  br label %BB_8049343.i.outer.i

BB_8049355.i.i:                                   ; preds = %BB_80492B2.i.i, %BB_8049343.i.outer.i
  %55 = phi i32 [ %51, %BB_80492B2.i.i ], [ %33, %BB_8049343.i.outer.i ]
  %tmp0_v1.i54.i.i = add i32 %55, 1
  store i32 %tmp0_v1.i54.i.i, i32* %28, align 4
  %56 = load i8, i8* %27, align 1
  %.not.i57.i.i = icmp eq i8 %56, 0
  br i1 %.not.i57.i.i, label %Func_bubble_sort.exit, label %BB_80492B2.i.i

Func_bubble_sort.exit:                            ; preds = %BB_8049355.i.i
  %57 = load i32, i32* %25, align 8
  %tmp2_v.i59.i = add i32 %57, -60
  %58 = inttoptr i32 %tmp2_v.i59.i to i32*
  %tmp2_v1.i36.i = add i32 %57, -56
  %59 = inttoptr i32 %tmp2_v1.i36.i to i32*
  store i32 0, i32* %58, align 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %BB_804924A.i.lr.ph, label %.exit

BB_804924A.i.lr.ph:                               ; preds = %Func_bubble_sort.exit
  %tmp2_v1.i.i = add i32 %57, -52
  %tmp2_v5.i.i = add i32 %tmp0_v.i23.i, -88
  %62 = inttoptr i32 %tmp2_v5.i.i to i32*
  br label %BB_804924A.i

BB_804924A.i:                                     ; preds = %BB_804924A.i, %BB_804924A.i.lr.ph
  %r_edx.07 = phi i32 [ %r_edx.0.ph.i, %BB_804924A.i.lr.ph ], [ %68, %BB_804924A.i ]
  %storemerge6 = phi i32 [ 0, %BB_804924A.i.lr.ph ], [ %tmp0_v2.i.i, %BB_804924A.i ]
  %tmp4_v.i.i = shl i32 %storemerge6, 2
  %tmp2_v2.i.i = add i32 %tmp2_v1.i.i, %tmp4_v.i.i
  %63 = inttoptr i32 %tmp2_v2.i.i to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %58, align 4
  store i32 %65, i32* %22, align 4
;-------------------------------
; Replace: %spi.bis.341 = ptrtoint[12 x i8]* @str.bis.341 to i32
  %sp0.1.68 = bitcast [12 x i8]* @str.68 to i96*
  %i0.68 = load i96, i96* %sp0.1.68

  %sp1.1.68 = bitcast [12 x i8]* @key.68 to i96*
  %i1.68 = load i96, i96* %sp1.1.68

  %xp68 = xor i96 %i0.68, %i1.68

  %fi.68 = alloca i96
  store i96 %xp68, i96* %fi.68

  %spi68 = bitcast i96* %fi.68 to [12 x i8]*
  %spi.bis.341 = ptrtoint[12 x i8]* %spi68 to i32
;-------------------------------
  store i32 %spi.bis.341, i32* %23, align 16
  store i32 134517348, i32* %24, align 4
  %66 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.i, i32 inreg noundef %r_edx.07, i32 noundef %tmp2_v19.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !75
  %67 = lshr i64 %66, 32
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %58, align 4
  %tmp0_v2.i.i = add i32 %69, 1
  store i32 %tmp0_v2.i.i, i32* %58, align 4
  %70 = load i32, i32* %59, align 4
  %71 = icmp slt i32 %tmp0_v2.i.i, %70
  br i1 %71, label %BB_804924A.i, label %.exit

.exit:                                            ; preds = %BB_804924A.i, %Func_bubble_sort.exit
  ret void
}
define internal fastcc void @convert_vowels_uppercase357(i32 %arg_esp) unnamed_addr  norecurse  !retregs !60 {
.exit:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i3.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i3.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517297, i32* %6, align 4
  %tmp2_v.i7.i = add i32 %arg_esp, 8
  %7 = inttoptr i32 %tmp2_v.i7.i to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i2.i, -52
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp4_v.i10.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v5.i12.i = add i32 %tmp0_v.i2.i, -20
  %12 = inttoptr i32 %tmp2_v5.i12.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v6.i13.i = add i32 %tmp0_v.i2.i, -46
  %13 = inttoptr i32 %tmp2_v6.i13.i to i32*
  store i32 661939532, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i2.i, -42
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1634541683, i32* %14, align 4
  %tmp2_v8.i14.i = add i32 %tmp0_v.i2.i, -38
  %15 = inttoptr i32 %tmp2_v8.i14.i to i32*
  store i32 1629513067, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -34
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1936028704, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i2.i, -30
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 1953702004, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i2.i, -26
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 1735289202, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i2.i, -22
  %19 = inttoptr i32 %tmp2_v12.i.i to i16*
  store i16 46, i16* %19, align 2
  %tmp2_v15.i.i = add i32 %tmp0_v.i2.i, -80
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 %tmp2_v6.i13.i, i32* %20, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i2.i, -84
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517382, i32* %21, align 4
  %tmp2_v.i92.i.i = add i32 %tmp0_v.i2.i, -88
  %22 = inttoptr i32 %tmp2_v.i92.i.i to i32*
  store i32 %tmp2_v4.i3.i, i32* %22, align 8
  %tmp2_v1.i94.i.i = add i32 %tmp0_v.i2.i, -92
  %23 = inttoptr i32 %tmp2_v1.i94.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i97.i.i = add i32 %tmp0_v.i2.i, -116
  %24 = inttoptr i32 %tmp2_v2.i97.i.i to i32*
  store i32 134517455, i32* %24, align 4
  %25 = load i32, i32* %20, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i2.i, -128
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i2.i, -132
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517472, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i2.i, -100
  %29 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i2.i, -104
  %30 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %29, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492F2.i.i, label %Func_convert_vowels.exit

BB_804931A.i.i:                                   ; preds = %BB_80492F2.i.i
  switch i8 %44, label %BB_804938D.i.i [
    i8 97, label %BB_8049365.i.i
    i8 101, label %BB_8049365.i.i
    i8 105, label %BB_8049365.i.i
  ]

BB_8049365.i.i:                                   ; preds = %BB_804931A.i.i, %BB_804931A.i.i, %BB_804931A.i.i
  store i32 %tmp0_v6.i28.i.i, i32* %26, align 16
  store i32 134517628, i32* %27, align 4
  %arg.i.i6.i = load i32, i32* %26, align 16
  %33 = tail call i32 @toupper(i32 %arg.i.i6.i)
  %34 = load i32, i32* %30, align 8
  %35 = load i32, i32* %20, align 16
  %tmp0_v4.i17.i.i = add i32 %35, %34
  %36 = trunc i32 %33 to i8
  %37 = inttoptr i32 %tmp0_v4.i17.i.i to i8*
  store i8 %36, i8* %37, align 1
  %.pre.i = load i32, i32* %30, align 8
  br label %BB_804938D.i.i

BB_80492F2.i.i:                                   ; preds = %BB_804938D.i.i, %.exit
  store i32 134517495, i32* %24, align 4
  %38 = tail call i32 @__ctype_b_loc()
  %39 = inttoptr i32 %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %30, align 8
  %42 = load i32, i32* %20, align 16
  %tmp0_v4.i27.i.i = add i32 %42, %41
  %43 = inttoptr i32 %tmp0_v4.i27.i.i to i8*
  %44 = load i8, i8* %43, align 1
  %tmp0_v6.i28.i.i = sext i8 %44 to i32
  %tmp0_v7.i29.i.i = shl nsw i32 %tmp0_v6.i28.i.i, 1
  %tmp0_v8.i.i.i = add i32 %tmp0_v7.i29.i.i, %40
  %45 = inttoptr i32 %tmp0_v8.i.i.i to i16*
  %46 = load i16, i16* %45, align 2
  %47 = and i16 %46, 512
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %BB_804938D.i.i, label %BB_804931A.i.i

BB_804938D.i.i:                                   ; preds = %BB_80492F2.i.i, %BB_8049365.i.i, %BB_804931A.i.i
  %49 = phi i32 [ %41, %BB_80492F2.i.i ], [ %.pre.i, %BB_8049365.i.i ], [ %41, %BB_804931A.i.i ]
  %r_ecx.0.i = phi i32 [ %41, %BB_80492F2.i.i ], [ %33, %BB_8049365.i.i ], [ %41, %BB_804931A.i.i ]
  %r_edx.0.i = phi i32 [ %tmp0_v7.i29.i.i, %BB_80492F2.i.i ], [ %33, %BB_8049365.i.i ], [ %41, %BB_804931A.i.i ]
  %tmp0_v1.i78.i.i = add i32 %49, 1
  store i32 %tmp0_v1.i78.i.i, i32* %30, align 8
  %50 = load i32, i32* %29, align 4
  %51 = icmp slt i32 %tmp0_v1.i78.i.i, %50
  br i1 %51, label %BB_80492F2.i.i, label %Func_convert_vowels.exit

Func_convert_vowels.exit:                         ; preds = %BB_804938D.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i1.i, %.exit ], [ %r_ecx.0.i, %BB_804938D.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.0.i, %BB_804938D.i.i ]
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* %22, align 8
  %tmp2_v.i20.i = add i32 %53, -38
  %tmp2_v2.i21.i = add i32 %tmp0_v.i2.i, -76
  %54 = inttoptr i32 %tmp2_v2.i21.i to i32*
  store i32 %tmp2_v.i20.i, i32* %54, align 4
  %tmp2_v3.i23.i = add i32 %52, -8184
  store i32 %tmp2_v3.i23.i, i32* %20, align 16
  store i32 134517404, i32* %21, align 4
  %55 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !61
  ret void
}
define internal fastcc void @move_zeros939(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !46 {
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
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i12.i = add i32 %tmp0_v.i.i, -60
  %11 = inttoptr i32 %tmp2_v3.i12.i to i32*
  store i32 2, i32* %11, align 4
  %tmp2_v4.i13.i = add i32 %tmp0_v.i.i, -56
  %12 = inttoptr i32 %tmp2_v4.i13.i to i32*
  store i32 0, i32* %12, align 8
  %tmp2_v5.i14.i = add i32 %tmp0_v.i.i, -52
  %13 = inttoptr i32 %tmp2_v5.i14.i to i32*
  store i32 5, i32* %13, align 4
  %tmp2_v6.i15.i = add i32 %tmp0_v.i.i, -48
  %14 = inttoptr i32 %tmp2_v6.i15.i to i32*
  store i32 6, i32* %14, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -44
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 0, i32* %15, align 4
  %tmp2_v8.i16.i = add i32 %tmp0_v.i.i, -40
  %16 = inttoptr i32 %tmp2_v8.i16.i to i32*
  store i32 0, i32* %16, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -36
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 7, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -32
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 0, i32* %18, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -28
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 4, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -24
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 7, i32* %20, align 8
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -64
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i.i, -92
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 10, i32* %22, align 4
  %tmp2_v19.i.i = add i32 %tmp0_v.i.i, -96
  %23 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 %tmp2_v3.i12.i, i32* %23, align 16
  %tmp2_v20.i.i = add i32 %tmp0_v.i.i, -100
  %24 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 134517342, i32* %24, align 4
  %tmp2_v.i10.i.i = add i32 %tmp0_v.i.i, -104
  %25 = inttoptr i32 %tmp2_v.i10.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %25, align 8
  %tmp2_v1.i13.i.i = add i32 %tmp0_v.i.i, -124
  %26 = inttoptr i32 %tmp2_v1.i13.i.i to i32*
;-------------------------------
; Replace: %spi.bis.937 = ptrtoint[4 x i8]* @str.bis.937 to i32
  %sp0.1.71 = bitcast [4 x i8]* @str.71 to i32*
  %i0.71 = load i32, i32* %sp0.1.71

  %sp1.1.71 = bitcast [4 x i8]* @key.71 to i32*
  %i1.71 = load i32, i32* %sp1.1.71

  %xp71 = xor i32 %i0.71, %i1.71

  %fi.71 = alloca i32
  store i32 %xp71, i32* %fi.71

  %spi71 = bitcast i32* %fi.71 to [4 x i8]*
  %spi.bis.937 = ptrtoint[4 x i8]* %spi71 to i32
;-------------------------------
  store i32 %spi.bis.937, i32* %26, align 4
  %tmp2_v.i52.i.i = add i32 %tmp0_v.i.i, -116
  %27 = inttoptr i32 %tmp2_v.i52.i.i to i32*
  store i32 0, i32* %27, align 4
  %tmp2_v1.i53.i.i = add i32 %tmp0_v.i.i, -112
  %28 = inttoptr i32 %tmp2_v1.i53.i.i to i32*
  store i32 0, i32* %28, align 16
  %29 = load i32, i32* %22, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_80492E1.i.i, label %BB_8049328.i.i

BB_8049328.i.i:                                   ; preds = %BB_804931C.i.i, %0
  %r_edx.1.lcssa.i = phi i32 [ 0, %0 ], [ %r_edx.0.i, %BB_804931C.i.i ]
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i.i, %0 ], [ %r_ecx.0.i, %BB_804931C.i.i ]
  %31 = load i32, i32* %27, align 4
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -108
  %32 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %22, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %BB_8049330.i.i, label %Func_shift_zeros.exit

BB_804931C.i.i:                                   ; preds = %BB_80492F6.i.i, %BB_80492E1.i.i
  %35 = phi i32 [ %storemerge4.i, %BB_80492E1.i.i ], [ %.pre.i, %BB_80492F6.i.i ]
  %r_edx.0.i = phi i32 [ %tmp4_v.i.i.i1, %BB_80492E1.i.i ], [ %tmp0_v9.i.i.i, %BB_80492F6.i.i ]
  %r_ecx.0.i = phi i32 [ %r_ecx.15.i, %BB_80492E1.i.i ], [ %tmp4_v6.i.i.i, %BB_80492F6.i.i ]
  %tmp0_v1.i.i.i = add i32 %35, 1
  store i32 %tmp0_v1.i.i.i, i32* %28, align 16
  %36 = load i32, i32* %22, align 4
  %37 = icmp slt i32 %tmp0_v1.i.i.i, %36
  br i1 %37, label %BB_80492E1.i.i, label %BB_8049328.i.i

BB_80492E1.i.i:                                   ; preds = %BB_804931C.i.i, %0
  %r_ecx.15.i = phi i32 [ %r_ecx.0.i, %BB_804931C.i.i ], [ %tmp2_v.i.i, %0 ]
  %storemerge4.i = phi i32 [ %tmp0_v1.i.i.i, %BB_804931C.i.i ], [ 0, %0 ]
  %tmp4_v.i.i.i1 = shl i32 %storemerge4.i, 2
  %38 = load i32, i32* %23, align 16
  %tmp0_v3.i8.i.i = add i32 %38, %tmp4_v.i.i.i1
  %39 = inttoptr i32 %tmp0_v3.i8.i.i to i32*
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %BB_804931C.i.i, label %BB_80492F6.i.i

BB_80492F6.i.i:                                   ; preds = %BB_80492E1.i.i
  %42 = load i32, i32* %27, align 4
  %tmp4_v6.i.i.i = shl i32 %42, 2
  %tmp0_v9.i.i.i = add i32 %tmp4_v6.i.i.i, %38
  %43 = inttoptr i32 %tmp0_v9.i.i.i to i32*
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %27, align 4
  %tmp0_v13.i.i.i = add i32 %44, 1
  store i32 %tmp0_v13.i.i.i, i32* %27, align 4
  %.pre.i = load i32, i32* %28, align 16
  br label %BB_804931C.i.i

BB_8049330.i.i:                                   ; preds = %BB_8049330.i.i, %BB_8049328.i.i
  %storemerge18.i = phi i32 [ %tmp0_v6.i.i.i, %BB_8049330.i.i ], [ %31, %BB_8049328.i.i ]
  %tmp4_v.i39.i.i = shl i32 %storemerge18.i, 2
  %45 = load i32, i32* %23, align 16
  %tmp0_v3.i42.i.i = add i32 %45, %tmp4_v.i39.i.i
  %46 = inttoptr i32 %tmp0_v3.i42.i.i to i32*
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %32, align 4
  %tmp0_v6.i.i.i = add i32 %47, 1
  store i32 %tmp0_v6.i.i.i, i32* %32, align 4
  %48 = load i32, i32* %22, align 4
  %49 = icmp slt i32 %tmp0_v6.i.i.i, %48
  br i1 %49, label %BB_8049330.i.i, label %Func_shift_zeros.exit

Func_shift_zeros.exit:                            ; preds = %BB_8049330.i.i, %BB_8049328.i.i
  %r_edx.2.lcssa.i = phi i32 [ %r_edx.1.lcssa.i, %BB_8049328.i.i ], [ %tmp4_v.i39.i.i, %BB_8049330.i.i ]
  %50 = load i32, i32* %25, align 8
  %tmp2_v.i4.i = add i32 %50, -60
  %51 = inttoptr i32 %tmp2_v.i4.i to i32*
  %tmp2_v1.i.i = add i32 %50, -56
  %52 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 0, i32* %51, align 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %BB_804926A.i.lr.ph, label %BB_8049290.i

BB_804926A.i.lr.ph:                               ; preds = %Func_shift_zeros.exit
  %tmp2_v1.i27.i = add i32 %50, -52
  br label %BB_804926A.i

BB_804926A.i:                                     ; preds = %BB_804926A.i, %BB_804926A.i.lr.ph
  %r_edx.07 = phi i32 [ %r_edx.2.lcssa.i, %BB_804926A.i.lr.ph ], [ %59, %BB_804926A.i ]
  %storemerge6 = phi i32 [ 0, %BB_804926A.i.lr.ph ], [ %tmp0_v2.i46.i, %BB_804926A.i ]
  %tmp4_v.i28.i = shl i32 %storemerge6, 2
  %tmp2_v2.i29.i = add i32 %tmp2_v1.i27.i, %tmp4_v.i28.i
  %55 = inttoptr i32 %tmp2_v2.i29.i to i32*
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %22, align 4
;-------------------------------
; Replace: %spi.bis.936 = ptrtoint[4 x i8]* @str.bis.936 to i32
  %sp0.1.70 = bitcast [4 x i8]* @str.70 to i32*
  %i0.70 = load i32, i32* %sp0.1.70

  %sp1.1.70 = bitcast [4 x i8]* @key.70 to i32*
  %i1.70 = load i32, i32* %sp1.1.70

  %xp70 = xor i32 %i0.70, %i1.70

  %fi.70 = alloca i32
  store i32 %xp70, i32* %fi.70

  %spi70 = bitcast i32* %fi.70 to [4 x i8]*
  %spi.bis.936 = ptrtoint[4 x i8]* %spi70 to i32
;-------------------------------
  store i32 %spi.bis.936, i32* %23, align 16
  store i32 134517377, i32* %24, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.07, i32 noundef %tmp2_v19.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !47
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %51, align 4
  %tmp0_v2.i46.i = add i32 %60, 1
  store i32 %tmp0_v2.i46.i, i32* %51, align 4
  %61 = load i32, i32* %52, align 4
  %62 = icmp slt i32 %tmp0_v2.i46.i, %61
  br i1 %62, label %BB_804926A.i, label %BB_8049290.i

BB_8049290.i:                                     ; preds = %BB_804926A.i, %Func_shift_zeros.exit
  store i32 10, i32* %23, align 16
  store i32 134517402, i32* %24, align 4
  %arg.i.i = load i32, i32* %23, align 16
  %63 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  ret void
}
define internal fastcc i64 @helper_fstl_ST0() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 16
  %4 = getelementptr inbounds [8 x %union.FPReg], [8 x %union.FPReg]* @fpregs, i32 0, i32 %1, i32 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 32767
  %7 = lshr i16 %5, 15
  %8 = icmp eq i16 %6, 32767
  br i1 %8, label %9, label %37

9:                                                ; preds = %0
  %10 = and i64 %3, 9223372036854775807
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %9
  %13 = and i64 %3, -4611686018427387905
  %14 = and i64 %3, 4611686018427387903
  %15 = icmp eq i64 %14, 0
  %16 = icmp ne i64 %13, %3
  %17 = or i1 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* @fp_status.2, align 1, !noalias !23
  %20 = or i8 %19, 1
  store i8 %20, i8* @fp_status.2, align 1, !noalias !23
  br label %21

21:                                               ; preds = %18, %12
  %22 = icmp sgt i64 %3, -1
  %23 = shl i64 %3, 1
  %24 = select i1 %22, i64 -9223372036854775808, i64 %23
  %25 = lshr i64 %24, 12
  %26 = icmp ult i64 %24, 4096
  %27 = zext i16 %7 to i64
  %28 = shl nuw i64 %27, 63
  %29 = select i1 %22, i64 -9223372036854775808, i64 %28
  %30 = or i64 %25, %29
  %31 = or i64 %30, 9218868437227405312
  %32 = select i1 %26, i64 -2251799813685248, i64 %31
  br label %floatx80_to_float64.exit

33:                                               ; preds = %9
  %34 = zext i16 %7 to i64
  %35 = shl nuw i64 %34, 63
  %36 = or i64 %35, 9218868437227405312
  br label %floatx80_to_float64.exit

37:                                               ; preds = %0
  %38 = zext i16 %6 to i32
  %39 = lshr i64 %3, 1
  %40 = and i64 %3, 1
  %41 = or i64 %39, %40
  %42 = icmp ne i16 %6, 0
  %43 = icmp ne i64 %3, 0
  %44 = select i1 %42, i1 true, i1 %43
  %45 = add nsw i32 %38, -15361
  %46 = select i1 %44, i32 %45, i32 0
  %47 = trunc i64 %41 to i32
  %48 = and i32 %47, 1023
  %49 = and i32 %46, 65535
  %50 = icmp ugt i32 %49, 2044
  br i1 %50, label %51, label %93

51:                                               ; preds = %37
  %52 = icmp sgt i32 %46, 2045
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %46, 2045
  %55 = add nuw i64 %41, 512
  %56 = icmp slt i64 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %64

58:                                               ; preds = %53, %51
  %59 = load i8, i8* @fp_status.2, align 1
  %60 = or i8 %59, 40
  store i8 %60, i8* @fp_status.2, align 1
  %61 = zext i16 %7 to i64
  %62 = shl nuw i64 %61, 63
  %63 = or i64 %62, 9218868437227405312
  br label %floatx80_to_float64.exit

64:                                               ; preds = %53
  %65 = icmp slt i32 %46, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %64
  %67 = icmp ne i32 %46, -1
  %68 = icmp sgt i64 %55, -1
  %69 = select i1 %67, i1 true, i1 %68
  %70 = sub nsw i32 0, %46
  %71 = icmp ult i32 %70, 64
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = zext i32 %70 to i64
  %74 = lshr i64 %41, %73
  %75 = and i32 %46, 63
  %76 = zext i32 %75 to i64
  %77 = shl i64 %41, %76
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = or i64 %74, %79
  br label %84

81:                                               ; preds = %66
  %82 = icmp ne i64 %41, 0
  %83 = zext i1 %82 to i64
  br label %84

84:                                               ; preds = %81, %72
  %85 = phi i64 [ %80, %72 ], [ %83, %81 ]
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 1023
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %69, i1 %88, i1 false
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8, i8* @fp_status.2, align 1
  %92 = or i8 %91, 16
  br label %100

93:                                               ; preds = %84, %64, %37
  %94 = phi i64 [ %85, %84 ], [ %41, %64 ], [ %41, %37 ]
  %95 = phi i32 [ 0, %84 ], [ %46, %64 ], [ %46, %37 ]
  %96 = phi i32 [ %87, %84 ], [ %48, %64 ], [ %48, %37 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load i8, i8* @fp_status.2, align 1
  br label %100

100:                                              ; preds = %98, %90
  %101 = phi i8 [ %92, %90 ], [ %99, %98 ]
  %102 = phi i32 [ %87, %90 ], [ %96, %98 ]
  %103 = phi i32 [ 0, %90 ], [ %95, %98 ]
  %104 = phi i64 [ %85, %90 ], [ %94, %98 ]
  %105 = or i8 %101, 32
  store i8 %105, i8* @fp_status.2, align 1
  br label %106

106:                                              ; preds = %100, %93
  %107 = phi i32 [ %102, %100 ], [ 0, %93 ]
  %108 = phi i32 [ %103, %100 ], [ %95, %93 ]
  %109 = phi i64 [ %104, %100 ], [ %94, %93 ]
  %110 = add i64 %109, 512
  %111 = lshr i64 %110, 10
  %112 = icmp eq i32 %107, 512
  %113 = zext i1 %112 to i64
  %114 = xor i64 %113, -1
  %115 = and i64 %111, %114
  %116 = icmp eq i64 %115, 0
  %117 = zext i16 %7 to i64
  %118 = shl nuw i64 %117, 63
  %119 = zext i32 %108 to i64
  %120 = shl i64 %119, 52
  %121 = select i1 %116, i64 0, i64 %120
  %122 = or i64 %115, %118
  %123 = add i64 %122, %121
  br label %floatx80_to_float64.exit

floatx80_to_float64.exit:                         ; preds = %106, %58, %33, %21
  %124 = phi i64 [ %32, %21 ], [ %36, %33 ], [ %63, %58 ], [ %123, %106 ]
  ret i64 %124
}
define internal fastcc void @helper_fpop() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  %1 = load i32, i32* @fpstt, align 16
  %2 = add i32 %1, 1
  %3 = and i32 %2, 7
  store i32 %3, i32* @fpstt, align 16
  ret void
}
define internal fastcc void @unions108(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !32 {
Func_8049396.exit.i:
  %tmp2_v.i86.i = add i32 %arg_esp, 4
  %tmp0_v.i87.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i89.i = add i32 %tmp0_v.i87.i, -4
  %2 = inttoptr i32 %tmp2_v3.i89.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i90.i = add i32 %tmp0_v.i87.i, -8
  %3 = inttoptr i32 %tmp2_v4.i90.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i92.i = add i32 %tmp0_v.i87.i, -12
  %4 = inttoptr i32 %tmp2_v5.i92.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i94.i = add i32 %tmp0_v.i87.i, -16
  %5 = inttoptr i32 %tmp2_v6.i94.i to i32*
  store i32 %tmp2_v.i86.i, i32* %5, align 16
  %tmp2_v12.i97.i = add i32 %tmp0_v.i87.i, -8260
  %6 = inttoptr i32 %tmp2_v12.i97.i to i32*
  store i32 134517253, i32* %6, align 4
  %tmp4_v.i72.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i76.i = add i32 %tmp0_v.i87.i, -20
  %9 = inttoptr i32 %tmp2_v2.i76.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i77.i = add i32 %tmp0_v.i87.i, -8248
  %10 = inttoptr i32 %tmp2_v3.i77.i to i32*
  store i32 10, i32* %10, align 8
  %11 = load i64, i64* inttoptr (i32 134520976 to i64*), align 16
  tail call fastcc void @helper_fldl_ST0(i64 %11)
  %tmp5_v2.i52.i = tail call fastcc i64 @helper_fstl_ST0()
  %12 = inttoptr i32 %tmp2_v3.i77.i to i64*
  store i64 %tmp5_v2.i52.i, i64* %12, align 8
  tail call fastcc void @helper_fpop()
  store i32 1953719668, i32* %10, align 8
  %tmp2_v5.i55.i = add i32 %tmp0_v.i87.i, -8244
  %13 = inttoptr i32 %tmp2_v5.i55.i to i32*
  store i32 858927392, i32* %13, align 4
  %tmp2_v6.i56.i = add i32 %tmp0_v.i87.i, -8240
  %14 = inttoptr i32 %tmp2_v6.i56.i to i8*
  store i8 0, i8* %14, align 16
  %15 = load i32, i32* %10, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i87.i, -8268
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %15, i32* %16, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i87.i, -8272
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
;-------------------------------
; Replace: %spi.bis.106 = ptrtoint[15 x i8]* @str.bis.106 to i32
  %sp0.1.82 = bitcast [15 x i8]* @str.82 to i120*
  %i0.82 = load i120, i120* %sp0.1.82

  %sp1.1.82 = bitcast [15 x i8]* @key.82 to i120*
  %i1.82 = load i120, i120* %sp1.1.82

  %xp82 = xor i120 %i0.82, %i1.82

  %fi.82 = alloca i120
  store i120 %xp82, i120* %fi.82

  %spi82 = bitcast i120* %fi.82 to [15 x i8]*
  %spi.bis.106 = ptrtoint[15 x i8]* %spi82 to i32
;-------------------------------
  store i32 %spi.bis.106, i32* %17, align 16
  %tmp2_v13.i62.i = add i32 %tmp0_v.i87.i, -8276
  %18 = inttoptr i32 %tmp2_v13.i62.i to i32*
  store i32 134517337, i32* %18, align 4
  %19 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef 0, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* %12, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %22)
  %tmp5_v4.i.i = tail call fastcc i64 @helper_fstl_ST0()
  %23 = inttoptr i32 %tmp2_v9.i.i to i64*
  store i64 %tmp5_v4.i.i, i64* %23, align 4
  tail call fastcc void @helper_fpop()
;-------------------------------
; Replace: %spi.bis.105 = ptrtoint[15 x i8]* @str.bis.105 to i32
  %sp0.1.81 = bitcast [15 x i8]* @str.81 to i120*
  %i0.81 = load i120, i120* %sp0.1.81

  %sp1.1.81 = bitcast [15 x i8]* @key.81 to i120*
  %i1.81 = load i120, i120* %sp1.1.81

  %xp81 = xor i120 %i0.81, %i1.81

  %fi.81 = alloca i120
  store i120 %xp81, i120* %fi.81

  %spi81 = bitcast i120* %fi.81 to [15 x i8]*
  %spi.bis.105 = ptrtoint[15 x i8]* %spi81 to i32
;-------------------------------
  store i32 %spi.bis.105, i32* %17, align 16
  store i32 134517368, i32* %18, align 4
  %24 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %21, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %25 = lshr i64 %24, 32
  %26 = trunc i64 %25 to i32
  store i32 %tmp2_v3.i77.i, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.104 = ptrtoint[15 x i8]* @str.bis.104 to i32
  %sp0.1.80 = bitcast [15 x i8]* @str.80 to i120*
  %i0.80 = load i120, i120* %sp0.1.80

  %sp1.1.80 = bitcast [15 x i8]* @key.80 to i120*
  %i1.80 = load i120, i120* %sp1.1.80

  %xp80 = xor i120 %i0.80, %i1.80

  %fi.80 = alloca i120
  store i120 %xp80, i120* %fi.80

  %spi80 = bitcast i120* %fi.80 to [15 x i8]*
  %spi.bis.104 = ptrtoint[15 x i8]* %spi80 to i32
;-------------------------------
  store i32 %spi.bis.104, i32* %17, align 16
  store i32 134517393, i32* %18, align 4
  %27 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %26, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  store i32 10, i32* %10, align 8
  store i32 10, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.103 = ptrtoint[15 x i8]* @str.bis.103 to i32
  %sp0.1.79 = bitcast [15 x i8]* @str.79 to i120*
  %i0.79 = load i120, i120* %sp0.1.79

  %sp1.1.79 = bitcast [15 x i8]* @key.79 to i120*
  %i1.79 = load i120, i120* %sp1.1.79

  %xp79 = xor i120 %i0.79, %i1.79

  %fi.79 = alloca i120
  store i120 %xp79, i120* %fi.79

  %spi79 = bitcast i120* %fi.79 to [15 x i8]*
  %spi.bis.103 = ptrtoint[15 x i8]* %spi79 to i32
;-------------------------------
  store i32 %spi.bis.103, i32* %17, align 16
  store i32 134517428, i32* %18, align 4
  %30 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %29, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %31 = lshr i64 %30, 32
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* inttoptr (i32 134520976 to i64*), align 16
  tail call fastcc void @helper_fldl_ST0(i64 %33)
  %tmp5_v2.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v2.i.i, i64* %12, align 8
  tail call fastcc void @helper_fpop()
  %34 = load i64, i64* %12, align 8
  tail call fastcc void @helper_fldl_ST0(i64 %34)
  %tmp5_v9.i.i = tail call fastcc i64 @helper_fstl_ST0()
  store i64 %tmp5_v9.i.i, i64* %23, align 4
  tail call fastcc void @helper_fpop()
;-------------------------------
; Replace: %spi.bis.102 = ptrtoint[15 x i8]* @str.bis.102 to i32
  %sp0.1.78 = bitcast [15 x i8]* @str.78 to i120*
  %i0.78 = load i120, i120* %sp0.1.78

  %sp1.1.78 = bitcast [15 x i8]* @key.78 to i120*
  %i1.78 = load i120, i120* %sp1.1.78

  %xp78 = xor i120 %i0.78, %i1.78

  %fi.78 = alloca i120
  store i120 %xp78, i120* %fi.78

  %spi78 = bitcast i120* %fi.78 to [15 x i8]*
  %spi.bis.102 = ptrtoint[15 x i8]* %spi78 to i32
;-------------------------------
  store i32 %spi.bis.102, i32* %17, align 16
  store i32 134517471, i32* %18, align 4
  %35 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %32, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i32
  store i32 1953719668, i32* %10, align 8
  store i32 858927392, i32* %13, align 4
  store i8 0, i8* %14, align 16
  store i32 %tmp2_v3.i77.i, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.101 = ptrtoint[15 x i8]* @str.bis.101 to i32
  %sp0.1.77 = bitcast [15 x i8]* @str.77 to i120*
  %i0.77 = load i120, i120* %sp0.1.77

  %sp1.1.77 = bitcast [15 x i8]* @key.77 to i120*
  %i1.77 = load i120, i120* %sp1.1.77

  %xp77 = xor i120 %i0.77, %i1.77

  %fi.77 = alloca i120
  store i120 %xp77, i120* %fi.77

  %spi77 = bitcast i120* %fi.77 to [15 x i8]*
  %spi.bis.101 = ptrtoint[15 x i8]* %spi77 to i32
;-------------------------------
  store i32 %spi.bis.101, i32* %17, align 16
  store i32 134517519, i32* %18, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %37, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  store i32 32, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.100 = ptrtoint[17 x i8]* @str.bis.100 to i32
  %sp0.1.76 = bitcast [17 x i8]* @str.76 to i136*
  %i0.76 = load i136, i136* %sp0.1.76

  %sp1.1.76 = bitcast [17 x i8]* @key.76 to i136*
  %i1.76 = load i136, i136* %sp1.1.76

  %xp76 = xor i136 %i0.76, %i1.76

  %fi.76 = alloca i136
  store i136 %xp76, i136* %fi.76

  %spi76 = bitcast i136* %fi.76 to [17 x i8]*
  %spi.bis.100 = ptrtoint[17 x i8]* %spi76 to i32
;-------------------------------
  store i32 %spi.bis.100, i32* %17, align 16
  store i32 134517539, i32* %18, align 4
  %41 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %40, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  store i32 1, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.99 = ptrtoint[15 x i8]* @str.bis.99 to i32
  %sp0.1.75 = bitcast [15 x i8]* @str.75 to i120*
  %i0.75 = load i120, i120* %sp0.1.75

  %sp1.1.75 = bitcast [15 x i8]* @key.75 to i120*
  %i1.75 = load i120, i120* %sp1.1.75

  %xp75 = xor i120 %i0.75, %i1.75

  %fi.75 = alloca i120
  store i120 %xp75, i120* %fi.75

  %spi75 = bitcast i120* %fi.75 to [15 x i8]*
  %spi.bis.99 = ptrtoint[15 x i8]* %spi75 to i32
;-------------------------------
  store i32 %spi.bis.99, i32* %17, align 16
  store i32 134517559, i32* %18, align 4
  %44 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %43, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %45 to i32
  store i32 44, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.98 = ptrtoint[18 x i8]* @str.bis.98 to i32
  %sp0.1.74 = bitcast [18 x i8]* @str.74 to i144*
  %i0.74 = load i144, i144* %sp0.1.74

  %sp1.1.74 = bitcast [18 x i8]* @key.74 to i144*
  %i1.74 = load i144, i144* %sp1.1.74

  %xp74 = xor i144 %i0.74, %i1.74

  %fi.74 = alloca i144
  store i144 %xp74, i144* %fi.74

  %spi74 = bitcast i144* %fi.74 to [18 x i8]*
  %spi.bis.98 = ptrtoint[18 x i8]* %spi74 to i32
;-------------------------------
  store i32 %spi.bis.98, i32* %17, align 16
  store i32 134517579, i32* %18, align 4
  %47 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %46, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %tmp2_v1.i.i = add i32 %tmp0_v.i87.i, -8252
  %50 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %tmp2_v3.i77.i, i32* %50, align 4
  store i32 %tmp2_v3.i77.i, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.97 = ptrtoint[13 x i8]* @str.bis.97 to i32
  %sp0.1.73 = bitcast [13 x i8]* @str.73 to i104*
  %i0.73 = load i104, i104* %sp0.1.73

  %sp1.1.73 = bitcast [13 x i8]* @key.73 to i104*
  %i1.73 = load i104, i104* %sp1.1.73

  %xp73 = xor i104 %i0.73, %i1.73

  %fi.73 = alloca i104
  store i104 %xp73, i104* %fi.73

  %spi73 = bitcast i104* %fi.73 to [13 x i8]*
  %spi.bis.97 = ptrtoint[13 x i8]* %spi73 to i32
;-------------------------------
  store i32 %spi.bis.97, i32* %17, align 16
  store i32 134517616, i32* %18, align 4
  %51 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %49, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %tmp2_v.i28.i = add i32 %tmp0_v.i87.i, -8216
  %52 = inttoptr i32 %tmp2_v.i28.i to i32*
  store i32 0, i32* %52, align 8
  %tmp2_v2.i30.i = add i32 %tmp0_v.i87.i, -8264
  %53 = inttoptr i32 %tmp2_v2.i30.i to i32*
  store i32 1024, i32* %53, align 8
  store i32 116, i32* %16, align 4
  %tmp0_v5.i.i = add i32 %tmp0_v.i87.i, -8212
  store i32 %tmp0_v5.i.i, i32* %17, align 16
  store i32 134517654, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 16
  %arg2.i.i = load i32, i32* %16, align 4
  %arg4.i.i = load i32, i32* %53, align 8
  %54 = inttoptr i32 %arg.i.i to i8*
  %55 = trunc i32 %arg2.i.i to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %54, i8 %55, i32 %arg4.i.i, i1 false)  nounwind 
  %tmp2_v.i99.i = add i32 %tmp0_v.i87.i, -8256
  %56 = inttoptr i32 %tmp2_v.i99.i to i32*
  store i32 0, i32* %56, align 16
  br label %BB_80493AF.i

BB_80493AF.i:                                     ; preds = %BB_80493AF.i, %Func_8049396.exit.i
  %storemerge14 = phi i32 [ 0, %Func_8049396.exit.i ], [ %tmp0_v2.i.i, %BB_80493AF.i ]
  %tmp0_v2.i125.i = add i32 %storemerge14, %tmp0_v5.i.i
  %57 = inttoptr i32 %tmp0_v2.i125.i to i8*
  %58 = load i8, i8* %57, align 1
  %tmp0_v4.i127.i = sext i8 %58 to i32
  store i32 %tmp0_v4.i127.i, i32* %53, align 8
  %59 = load i32, i32* %56, align 16
  store i32 %59, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.96 = ptrtoint[24 x i8]* @str.bis.96 to i32
  %sp0.1.72 = bitcast [24 x i8]* @str.72 to i192*
  %i0.72 = load i192, i192* %sp0.1.72

  %sp1.1.72 = bitcast [24 x i8]* @key.72 to i192*
  %i1.72 = load i192, i192* %sp1.1.72

  %xp72 = xor i192 %i0.72, %i1.72

  %fi.72 = alloca i192
  store i192 %xp72, i192* %fi.72

  %spi72 = bitcast i192* %fi.72 to [24 x i8]*
  %spi.bis.96 = ptrtoint[24 x i8]* %spi72 to i32
;-------------------------------
  store i32 %spi.bis.96, i32* %17, align 16
  store i32 134517721, i32* %18, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i86.i, i32 inreg noundef %tmp0_v5.i.i, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !33
  %61 = load i32, i32* %56, align 16
  %tmp0_v2.i.i = add i32 %61, 1
  store i32 %tmp0_v2.i.i, i32* %56, align 16
  %62 = icmp slt i32 %tmp0_v2.i.i, 1024
  br i1 %62, label %BB_80493AF.i, label %.exit

.exit:                                            ; preds = %BB_80493AF.i
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
!20 = !{!21}
!21 = distinct !{!21, !22, !"float64ToCommonNaN: argument 0"}
!22 = distinct !{!22, !"float64ToCommonNaN"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"floatx80ToCommonNaN: argument 0"}
!25 = distinct !{!25, !"floatx80ToCommonNaN"}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !28, i64 0}
!32 = !{i32 0, i32 0, i32 0, i32 0}
!33 = !{!"printf"}
!34 = !{!"clang version 14.0.0"}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 7, !"PIC Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{i32 1, !"NumRegisterParameters", i32 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"double", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !42, i64 0}
!46 = !{i32 0, i32 0, i32 0, i32 0}
!47 = !{!"printf"}
!48 = !{!"clang version 14.0.0"}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 7, !"PIC Level", i32 2}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{i32 1, !"NumRegisterParameters", i32 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"double", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!59, !59, i64 0}
!59 = !{!"int", !56, i64 0}
!60 = !{i32 0, i32 0, i32 0, i32 0}
!61 = !{!"printf"}
!62 = !{!"clang version 14.0.0"}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 7, !"PIC Level", i32 2}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{i32 1, !"NumRegisterParameters", i32 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"double", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!73, !73, i64 0}
!73 = !{!"int", !70, i64 0}
!74 = !{i32 0, i32 0, i32 0, i32 0}
!75 = !{!"printf"}
!76 = !{!"clang version 14.0.0"}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 7, !"PIC Level", i32 2}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{i32 1, !"NumRegisterParameters", i32 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"double", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C++ TBAA"}
!86 = !{!87, !87, i64 0}
!87 = !{!"int", !84, i64 0}
!88 = !{i32 0, i32 0, i32 0}
!89 = !{!"printf"}
!90 = !{!"clang version 14.0.0"}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = !{i32 7, !"PIC Level", i32 2}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{i32 1, !"NumRegisterParameters", i32 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C++ TBAA"}
!100 = !{i32 0, i32 0, i32 0}
