; Mutation 933
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack315 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem31 = internal global [1024 x i8] zeroinitializer, align 1
@stack394 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem29 = internal global [1024 x i8] zeroinitializer, align 1
@stack700 = internal global [8092 x i32] zeroinitializer, align 16
@df = internal unnamed_addr global i32 0
@_ZL6segmem27 = internal global [1024 x i8] zeroinitializer, align 1
@stack78 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem25 = internal global [1024 x i8] zeroinitializer, align 1
@stack911 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem23 = internal global [1024 x i8] zeroinitializer, align 1
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg)  argmemonly nofree nounwind willreturn writeonly 
@stack925 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem21 = internal global [1024 x i8] zeroinitializer, align 1
@stack87 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem19 = internal global [1024 x i8] zeroinitializer, align 1
@stack568 = internal global [8092 x i32] zeroinitializer, align 16
@stack259 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem16 = internal global [1024 x i8] zeroinitializer, align 1
@stack48 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem14 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @strstr(i32, i32) local_unnamed_addr  noinline 
@stack881 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem12 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @strlen(i32) local_unnamed_addr  noinline 
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 
@stack692 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem10 = internal global [1024 x i8] zeroinitializer, align 1
@stack230 = internal global [8092 x i32] zeroinitializer, align 16
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 
@stack140 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem7 = internal global [1024 x i8] zeroinitializer, align 1
@stack463 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem5 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @malloc(i32) local_unnamed_addr  noinline 
declare void @free(i32) local_unnamed_addr  noinline 
@stack44 = internal global [8092 x i32] zeroinitializer, align 16
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
@stack396 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem2 = internal global [1024 x i8] zeroinitializer, align 1
declare void @srand(i32) local_unnamed_addr  noinline 
declare i32 @rand() local_unnamed_addr  noinline 
declare i32 @time(i32) local_unnamed_addr  noinline 
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: %cast95= getelementptr [11 x i8], [11 x i8]* @.str94, i64 0, i64 0
;-------------------------------
; Replace: %cast97= getelementptr [10 x i8], [10 x i8]* @.str96, i64 0, i64 0
;-------------------------------
; Replace: %cast99= getelementptr [10 x i8], [10 x i8]* @.str98, i64 0, i64 0
;-------------------------------
; Replace: %cast101= getelementptr [8 x i8], [8 x i8]* @.str100, i64 0, i64 0
@str.7.115 = constant [1 x i8] c"\00"
;-------------------------------
; Replace: %cast103= getelementptr [11 x i8], [11 x i8]* @.str102, i64 0, i64 0
;-------------------------------
; Replace: %cast105= getelementptr [11 x i8], [11 x i8]* @.str104, i64 0, i64 0
;-------------------------------
; Replace: %cast107= getelementptr [10 x i8], [10 x i8]* @.str106, i64 0, i64 0
;-------------------------------
; Replace: %cast109= getelementptr [11 x i8], [11 x i8]* @.str108, i64 0, i64 0
;-------------------------------
; Replace: %cast111= getelementptr [10 x i8], [10 x i8]* @.str110, i64 0, i64 0
;-------------------------------
; Replace: store [2 x i8] c"\07\4A", [2 x i8]* %sp0.70
;-------------------------------
; Replace: store [2 x i8] c"\36\4a", [2 x i8]* %sp1.70
;-------------------------------
; Replace: store [2 x i8] c"\47\6B", [2 x i8]* %sp0.71
;-------------------------------
; Replace: store [2 x i8] c"\74\6b", [2 x i8]* %sp1.71
;-------------------------------
; Replace: store [4 x i8] c"\66\33\1F\43", [4 x i8]* %sp0.72
;-------------------------------
; Replace: store [4 x i8] c"\63\69\32\43", [4 x i8]* %sp1.72
;-------------------------------
; Replace: store [14 x i8] c"\2D\4F\55\17\69\2D\24\2E\2A\6D\60\76\4B\58", [14 x i8]* %sp0.73
;-------------------------------
; Replace: store [14 x i8] c"\64\6f\34\7a\49\48\52\47\46\4c\41\57\41\58", [14 x i8]* %sp1.73
;-------------------------------
; Replace: store [9 x i8] c"\27\3C\12\69\1A\4C\5D\44\37", [9 x i8]* %sp0.74
;-------------------------------
; Replace: store [9 x i8] c"\65\45\77\49\58\35\38\4e\37", [9 x i8]* %sp1.74
;-------------------------------
; Replace: store [3 x i8] c"\4C\02\47", [3 x i8]* %sp0.75
;-------------------------------
; Replace: store [3 x i8] c"\69\71\47", [3 x i8]* %sp1.75
;-------------------------------
; Replace: store [2 x i8] c"\5F\51", [2 x i8]* %sp0.76
;-------------------------------
; Replace: store [2 x i8] c"\6d\51", [2 x i8]* %sp1.76
;-------------------------------
; Replace: store [3 x i8] c"\01\40\6B", [3 x i8]* %sp0.77
;-------------------------------
; Replace: store [3 x i8] c"\76\6b\6b", [3 x i8]* %sp1.77
;-------------------------------
; Replace: store [15 x i8] c"\02\0D\33\31\05\50\00\5E\54\46\57\12\0C\05\49", [15 x i8]* %sp0.78
;-------------------------------
; Replace: store [15 x i8] c"\76\68\4b\45\5a\36\69\32\31\75\79\66\74\71\49", [15 x i8]* %sp1.78
;-------------------------------
; Replace: store [18 x i8] c"\0A\22\1E\4C\3D\31\0D\3C\3F\10\5C\2E\55\33\68\58\57\41", [18 x i8]* %sp0.34
;-------------------------------
; Replace: store [18 x i8] c"\44\4d\6a\6c\59\54\6f\49\58\30\31\41\31\56\48\6a\76\41", [18 x i8]* %sp1.34
;-------------------------------
; Replace: store [16 x i8] c"\34\05\18\6D\35\52\34\47\54\15\14\2E\56\02\42\43", [16 x i8]* %sp0.33
;-------------------------------
; Replace: store [16 x i8] c"\7a\6a\6c\4d\51\37\56\32\33\35\79\41\32\67\63\43", [16 x i8]* %sp1.33
;-------------------------------
; Replace: store [21 x i8] c"\03\38\1B\2C\37\09\1E\21\2D\3F\2F\15\15\5E\58\61\57\20\26\7B\7A", [21 x i8]* %sp0.32
;-------------------------------
; Replace: store [21 x i8] c"\70\51\61\49\58\6f\36\43\58\59\49\70\67\77\62\41\72\4c\53\71\7a", [21 x i8]* %sp1.32
;-------------------------------
; Replace: store [7 x i8] c"\15\33\5F\4C\34\5A\41", [7 x i8]* %sp0.35
;-------------------------------
; Replace: store [7 x i8] c"\30\50\65\69\50\50\41", [7 x i8]* %sp1.35
;-------------------------------
; Replace: store [16 x i8] c"\0F\56\3E\61\1F\2D\19\27\47\3D\5A\17\2E\06\3F\46", [16 x i8]* %sp0.36
;-------------------------------
; Replace: store [16 x i8] c"\6e\32\5a\41\76\43\6a\53\35\48\39\63\47\69\51\46", [16 x i8]* %sp1.36
;-------------------------------
; Replace: store [21 x i8] c"\46\31\26\17\08\56\22\27\79\3D\0A\02\26\3F\05\10\35\31\0E\22\51", [21 x i8]* %sp0.37
;-------------------------------
; Replace: store [21 x i8] c"\35\44\44\63\7a\37\41\53\59\54\64\71\52\4d\70\73\41\58\61\4c\51", [21 x i8]* %sp1.37
;-------------------------------
; Replace: store [20 x i8] c"\51\0A\14\19\3C\03\11\06\0B\46\54\24\51\1C\05\55\2F\0B\24\43", [20 x i8]* %sp0.45
;-------------------------------
; Replace: store [20 x i8] c"\30\78\66\78\45\32\31\6f\78\66\35\57\32\79\6b\31\46\65\43\43", [20 x i8]* %sp1.45
;-------------------------------
; Replace: store [21 x i8] c"\03\39\08\2C\2C\4A\42\00\01\19\67\57\4A\20\26\39\57\23\05\35\4B", [21 x i8]* %sp0.44
;-------------------------------
; Replace: store [21 x i8] c"\62\4b\7a\4d\55\78\62\6e\6e\6d\47\36\39\43\43\57\33\4a\6b\52\4b", [21 x i8]* %sp1.44
;-------------------------------
; Replace: store [4 x i8] c"\73\11\66\61", [4 x i8]* %sp0.43
;-------------------------------
; Replace: store [4 x i8] c"\76\43\4d\61", [4 x i8]* %sp1.43
;-------------------------------
; Replace: store [22 x i8] c"\27\02\1D\04\2E\57\65\2F\57\23\70\5D\01\16\51\1F\19\52\05\0B\0C\6E", [22 x i8]* %sp0.42
;-------------------------------
; Replace: store [22 x i8] c"\46\70\6f\65\57\66\45\41\38\57\50\39\64\65\32\7a\77\36\6c\65\6b\6e", [22 x i8]* %sp1.42
;-------------------------------
; Replace: store [4 x i8] c"\4D\1B\4A\4F", [4 x i8]* %sp0.41
;-------------------------------
; Replace: store [4 x i8] c"\48\49\61\4f", [4 x i8]* %sp1.41
;-------------------------------
; Replace: store [21 x i8] c"\35\4B\06\2C\1D\7C\41\38\1E\16\01\50\23\10\02\1E\3C\38\37\04\30", [21 x i8]* %sp0.40
;-------------------------------
; Replace: store [21 x i8] c"\54\39\74\4d\64\4e\61\51\6d\36\65\35\50\73\67\70\58\51\59\63\30", [21 x i8]* %sp1.40
;-------------------------------
; Replace: store [17 x i8] c"\09\3D\01\51\23\46\12\21\0B\19\4B\57\1E\06\1D\0C\66", [17 x i8]* %sp0.39
;-------------------------------
; Replace: store [17 x i8] c"\68\4f\73\30\5a\77\32\48\78\39\38\38\6c\72\78\68\66", [17 x i8]* %sp1.39
;-------------------------------
; Replace: store [17 x i8] c"\54\30\35\59\0B\02\63\23\00\57\14\57\0B\17\36\0E\35", [17 x i8]* %sp0.38
;-------------------------------
; Replace: store [17 x i8] c"\35\42\47\38\72\30\43\4a\73\77\67\38\79\63\53\6a\35", [17 x i8]* %sp1.38
;-------------------------------
; Replace: store [7 x i8] c"\05\56\59\11\54\52\32", [7 x i8]* %sp0.48
;-------------------------------
; Replace: store [7 x i8] c"\64\6c\79\34\37\58\32", [7 x i8]* %sp1.48
;-------------------------------
; Replace: store [23 x i8] c"\41\28\0D\5F\28\38\3C\16\37\11\17\32\33\5F\5C\20\3E\0E\6F\71\50\6C\44", [23 x i8]* %sp0.47
;-------------------------------
; Replace: store [23 x i8] c"\6b\58\62\36\46\4c\59\64\68\65\78\6d\50\30\32\53\4a\34\4f\54\33\66\44", [23 x i8]* %sp1.47
;-------------------------------
; Replace: store [23 x i8] c"\5A\22\3F\06\3B\3D\1C\4A\0C\15\00\16\09\5D\09\1A\0C\4B\55\6F\12\6C\64", [23 x i8]* %sp0.46
;-------------------------------
; Replace: store [23 x i8] c"\70\52\50\6f\55\49\79\38\53\61\6f\49\6a\32\67\69\78\71\75\4a\71\66\64", [23 x i8]* %sp1.46
;-------------------------------
; Replace: store [11 x i8] c"\5B\63\7C\61\78\03\29\1D\55\0A\72", [11 x i8]* %sp0.51
;-------------------------------
; Replace: store [11 x i8] c"\6a\51\4f\57\4b\62\4a\79\30\6c\72", [11 x i8]* %sp1.51
;-------------------------------
; Replace: store [11 x i8] c"\62\67\76\57\71\67\05\55\0D\4A\30", [11 x i8]* %sp0.50
;-------------------------------
; Replace: store [11 x i8] c"\52\56\44\64\45\52\33\62\35\73\30", [11 x i8]* %sp1.50
;-------------------------------
; Replace: store [11 x i8] c"\55\48\73\6B\44\42\79\07\7B\0C\34", [11 x i8]* %sp0.49
;-------------------------------
; Replace: store [11 x i8] c"\65\79\41\58\70\77\4f\30\43\35\34", [11 x i8]* %sp1.49
;-------------------------------
; Replace: store [4 x i8] c"\6F\4B\5C\4B", [4 x i8]* %sp0.53
;-------------------------------
; Replace: store [4 x i8] c"\6a\32\71\4b", [4 x i8]* %sp1.53
;-------------------------------
; Replace: store [11 x i8] c"\2B\3E\3D\1E\05\02\49\42\32\42\6F", [11 x i8]* %sp0.52
;-------------------------------
; Replace: store [11 x i8] c"\48\51\48\70\71\38\69\67\56\48\6f", [11 x i8]* %sp1.52
;-------------------------------
; Replace: store [12 x i8] c"\0C\36\01\28\3F\13\73\43\63\47\33\54", [12 x i8]* %sp0.55
;-------------------------------
; Replace: store [12 x i8] c"\4e\53\67\47\4d\76\49\63\46\34\39\54", [12 x i8]* %sp1.55
;-------------------------------
; Replace: store [5 x i8] c"\01\02\56\62\35", [5 x i8]* %sp0.54
;-------------------------------
; Replace: store [5 x i8] c"\75\6a\33\42\35", [5 x i8]* %sp1.54
;-------------------------------
; Replace: store [6 x i8] c"\4A\79\76\5C\69\64", [6 x i8]* %sp0.56
;-------------------------------
; Replace: store [6 x i8] c"\6f\49\44\38\49\64", [6 x i8]* %sp1.56
;-------------------------------
; Replace: store [4 x i8] c"\4B\05\49\69", [4 x i8]* %sp0.58
;-------------------------------
; Replace: store [4 x i8] c"\6e\61\43\69", [4 x i8]* %sp1.58
;-------------------------------
; Replace: store [22 x i8] c"\38\2C\22\2F\5F\33\11\68\10\40\43\39\3D\79\2A\37\5E\25\15\51\4A\6E", [22 x i8]* %sp0.57
;-------------------------------
; Replace: store [22 x i8] c"\71\42\54\4e\33\5a\75\48\71\32\31\58\44\59\46\52\30\42\61\39\6b\6e", [22 x i8]* %sp1.57
;-------------------------------
; Replace: store [12 x i8] c"\25\15\18\29\3B\26\59\46\6C\07\60\76", [12 x i8]* %sp0.67
;-------------------------------
; Replace: store [12 x i8] c"\49\70\76\4e\4f\4e\63\66\49\63\6a\76", [12 x i8]* %sp1.67
;-------------------------------
; Replace: store [19 x i8] c"\21\5E\2F\3C\5D\53\52\50\46\06\25\34\6C\49\73\17\06\53\6B", [19 x i8]* %sp0.66
;-------------------------------
; Replace: store [19 x i8] c"\52\37\55\59\32\35\7a\31\34\74\44\4d\45\73\53\32\62\59\6b", [19 x i8]* %sp1.66
;-------------------------------
; Replace: store [17 x i8] c"\3B\22\43\11\1A\00\6D\5F\22\3C\4C\03\64\76\2C\7B\69", [17 x i8]* %sp0.65
;-------------------------------
; Replace: store [17 x i8] c"\48\4b\39\74\75\66\45\36\4c\48\65\39\44\53\48\71\69", [17 x i8]* %sp1.65
;-------------------------------
; Replace: store [20 x i8] c"\40\05\03\0B\0E\50\64\30\1F\44\11\25\0C\4A\08\50\72\25\5D\47", [20 x i8]* %sp0.64
;-------------------------------
; Replace: store [20 x i8] c"\33\6c\79\6e\61\36\4c\54\70\31\73\49\69\63\32\70\57\41\57\47", [20 x i8]* %sp1.64
;-------------------------------
; Replace: store [22 x i8] c"\22\38\02\13\06\29\5C\08\10\04\18\2C\3D\00\1C\6E\6C\68\4A\55\44\43", [22 x i8]* %sp0.63
;-------------------------------
; Replace: store [22 x i8] c"\51\51\78\76\69\4f\74\69\62\76\79\55\66\30\41\47\56\48\6f\31\4e\43", [22 x i8]* %sp1.63
;-------------------------------
; Replace: store [27 x i8] c"\05\51\39\06\3A\56\52\37\09\16\26\18\22\2C\08\25\18\21\2E\1B\7A\59\5A\44\25\7C\33", [27 x i8]* %sp0.62
;-------------------------------
; Replace: store [27 x i8] c"\76\38\43\63\55\30\7a\53\70\78\47\75\4b\4f\57\44\6a\53\4f\62\53\63\7a\61\41\76\33", [27 x i8]* %sp1.62
;-------------------------------
; Replace: store [20 x i8] c"\34\3B\5B\31\02\5E\5A\07\0D\56\37\5E\47\5B\7B\6E\74\23\59\30", [20 x i8]* %sp0.61
;-------------------------------
; Replace: store [20 x i8] c"\50\42\35\50\6f\37\39\58\61\33\59\39\33\33\41\4e\51\47\53\30", [20 x i8]* %sp1.61
;-------------------------------
; Replace: store [12 x i8] c"\1D\04\2D\15\30\38\0D\51\74\12\32\52", [12 x i8]* %sp0.60
;-------------------------------
; Replace: store [12 x i8] c"\51\41\63\52\64\70\37\71\51\76\38\52", [12 x i8]* %sp1.60
;-------------------------------
; Replace: store [16 x i8] c"\56\1D\38\15\2C\6C\62\13\18\11\08\15\77\0A\33\74", [16 x i8]* %sp0.59
;-------------------------------
; Replace: store [16 x i8] c"\37\6f\4a\74\55\37\47\77\45\31\35\35\52\6e\39\74", [16 x i8]* %sp1.59
;-------------------------------
; Replace: store [4 x i8] c"\5F\30\1A\45", [4 x i8]* %sp0.69
;-------------------------------
; Replace: store [4 x i8] c"\5a\62\34\45", [4 x i8]* %sp1.69
;-------------------------------
; Replace: store [12 x i8] c"\0B\15\24\01\03\52\21\21\4A\0F\12\39", [12 x i8]* %sp0.68
;-------------------------------
; Replace: store [12 x i8] c"\43\70\48\6d\6c\72\76\4e\38\63\76\39", [12 x i8]* %sp1.68
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
declare i32 @close(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @socket(i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, 4
  %tmp0_v.i.i = and i32 %arg_esp, -16
;-------------------------------
;----Call to Added Cleanware----
;-------------------------------
;--------Basic Condition--------
  %.not105.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not105.i.i, label %BB_105, label %next105
next105:
;-------------------------------
  tail call fastcc void @matrix_subtraction926 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack925, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
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
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @hello45 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack44, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
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
  %tmp2_v.i21.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i21.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i23.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i23.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i.i, -44
  %12 = inttoptr i32 %tmp2_v6.i27.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %sp0.70 = alloca [2 x i8]
;-------------------------------
; Replace: store [2 x i8] c"\07\4A", [2 x i8]* %sp0.70
  %sp121 = alloca [2 x i8]
  
;-------------------------------
; Replace: %s0.121 = load [1 x i8], [1 x i8]* @str.0.121
  %cipher.ptr.300 = alloca [5 x i8]
  store [5 x i8] c"\42\77\3d\3d\00", [5 x i8]* %cipher.ptr.300
  %cipher.300 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.300, i32 0, i32 0
  %plain.ptr.300 = tail call i8* @base64_decode(i8* %cipher.300)
  %spi300 = bitcast i8* %plain.ptr.300 to [1 x i8]*
  %s0.121 = load [1 x i8], [1 x i8]* %spi300
;-------------------------------
  %sp0.121 = bitcast [2 x i8]* %sp121 to [1 x i8]*
  store [1 x i8] %s0.121, [1 x i8]* %sp0.121
  %next0.121 = getelementptr [2 x i8], [2 x i8]* %sp121, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.121 = load [1 x i8], [1 x i8]* @str.1.121
  %cipher.ptr.301 = alloca [5 x i8]
  store [5 x i8] c"\53\67\3d\3d\00", [5 x i8]* %cipher.ptr.301
  %cipher.301 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.301, i32 0, i32 0
  %plain.ptr.301 = tail call i8* @base64_decode(i8* %cipher.301)
  %spi301 = bitcast i8* %plain.ptr.301 to [1 x i8]*
  %s1.121 = load [1 x i8], [1 x i8]* %spi301
;-------------------------------
  %sp1.121 = bitcast i8* %next0.121 to [1 x i8]*
  store [1 x i8] %s1.121, [1 x i8]* %sp1.121

  %spi121 = load [2 x i8], [2 x i8]* %sp121
  store [2 x i8] %spi121, [2 x i8]* %sp0.70
;-------------------------------
  %sp0.1.70 = bitcast [2 x i8]* %sp0.70 to i16*
  %i0.70 = load i16, i16* %sp0.1.70

  %sp1.70 = alloca [2 x i8]
;-------------------------------
; Replace: store [2 x i8] c"\36\4a", [2 x i8]* %sp1.70
  %sp122 = alloca [2 x i8]
  
;-------------------------------
; Replace: %s0.122 = load [1 x i8], [1 x i8]* @str.0.122
  %cipher.ptr.303 = alloca [5 x i8]
  store [5 x i8] c"\4e\67\3d\3d\00", [5 x i8]* %cipher.ptr.303
  %cipher.303 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.303, i32 0, i32 0
  %plain.ptr.303 = tail call i8* @base64_decode(i8* %cipher.303)
  %spi303 = bitcast i8* %plain.ptr.303 to [1 x i8]*
  %s0.122 = load [1 x i8], [1 x i8]* %spi303
;-------------------------------
  %sp0.122 = bitcast [2 x i8]* %sp122 to [1 x i8]*
  store [1 x i8] %s0.122, [1 x i8]* %sp0.122
  %next0.122 = getelementptr [2 x i8], [2 x i8]* %sp122, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.122 = load [1 x i8], [1 x i8]* @str.1.122
  %cipher.ptr.302 = alloca [5 x i8]
  store [5 x i8] c"\53\67\3d\3d\00", [5 x i8]* %cipher.ptr.302
  %cipher.302 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.302, i32 0, i32 0
  %plain.ptr.302 = tail call i8* @base64_decode(i8* %cipher.302)
  %spi302 = bitcast i8* %plain.ptr.302 to [1 x i8]*
  %s1.122 = load [1 x i8], [1 x i8]* %spi302
;-------------------------------
  %sp1.122 = bitcast i8* %next0.122 to [1 x i8]*
  store [1 x i8] %s1.122, [1 x i8]* %sp1.122

  %spi122 = load [2 x i8], [2 x i8]* %sp122
  store [2 x i8] %spi122, [2 x i8]* %sp1.70
;-------------------------------
  %sp1.1.70 = bitcast [2 x i8]* %sp1.70 to i16*
  %i1.70 = load i16, i16* %sp1.1.70

  %xp70 = xor i16 %i0.70, %i1.70

  %fi.70 = alloca i16
  store i16 %xp70, i16* %fi.70

  %spi70 = ptrtoint i16* %fi.70 to i32
  store i32 %spi70, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i28.i = add i32 %tmp0_v.i.i, -48
  %13 = inttoptr i32 %tmp2_v7.i28.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
;-------------------------------
;--------Basic Condition--------
  %.not97.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not97.i.i, label %BB_97, label %next97
next97:
;-------------------------------
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i32.i = icmp eq i32 %15, 0
  br i1 %.not.i32.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %16 = load i32, i32* %8, align 4
  %tmp0_v1.i8.i = add i32 %16, 4
  %17 = inttoptr i32 %tmp0_v1.i8.i to i32*
  %18 = load i32, i32* %17, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %sp0.71 = alloca [2 x i8]
;-------------------------------
; Replace: store [2 x i8] c"\47\6B", [2 x i8]* %sp0.71
  %sp123 = alloca [2 x i8]
  
;-------------------------------
; Replace: %s0.123 = load [1 x i8], [1 x i8]* @str.0.123
  %cipher.ptr.304 = alloca [5 x i8]
  store [5 x i8] c"\52\77\3d\3d\00", [5 x i8]* %cipher.ptr.304
  %cipher.304 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.304, i32 0, i32 0
  %plain.ptr.304 = tail call i8* @base64_decode(i8* %cipher.304)
  %spi304 = bitcast i8* %plain.ptr.304 to [1 x i8]*
  %s0.123 = load [1 x i8], [1 x i8]* %spi304
;-------------------------------
  %sp0.123 = bitcast [2 x i8]* %sp123 to [1 x i8]*
  store [1 x i8] %s0.123, [1 x i8]* %sp0.123
  %next0.123 = getelementptr [2 x i8], [2 x i8]* %sp123, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.123 = load [1 x i8], [1 x i8]* @str.1.123
  %cipher.ptr.305 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.305
  %cipher.305 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.305, i32 0, i32 0
  %plain.ptr.305 = tail call i8* @base64_decode(i8* %cipher.305)
  %spi305 = bitcast i8* %plain.ptr.305 to [1 x i8]*
  %s1.123 = load [1 x i8], [1 x i8]* %spi305
;-------------------------------
  %sp1.123 = bitcast i8* %next0.123 to [1 x i8]*
  store [1 x i8] %s1.123, [1 x i8]* %sp1.123

  %spi123 = load [2 x i8], [2 x i8]* %sp123
  store [2 x i8] %spi123, [2 x i8]* %sp0.71
;-------------------------------
  %sp0.1.71 = bitcast [2 x i8]* %sp0.71 to i16*
  %i0.71 = load i16, i16* %sp0.1.71

  %sp1.71 = alloca [2 x i8]
;-------------------------------
; Replace: store [2 x i8] c"\74\6b", [2 x i8]* %sp1.71
  %sp124 = alloca [2 x i8]
  
;-------------------------------
; Replace: %s0.124 = load [1 x i8], [1 x i8]* @str.0.124
  %cipher.ptr.306 = alloca [5 x i8]
  store [5 x i8] c"\64\41\3d\3d\00", [5 x i8]* %cipher.ptr.306
  %cipher.306 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.306, i32 0, i32 0
  %plain.ptr.306 = tail call i8* @base64_decode(i8* %cipher.306)
  %spi306 = bitcast i8* %plain.ptr.306 to [1 x i8]*
  %s0.124 = load [1 x i8], [1 x i8]* %spi306
;-------------------------------
  %sp0.124 = bitcast [2 x i8]* %sp124 to [1 x i8]*
  store [1 x i8] %s0.124, [1 x i8]* %sp0.124
  %next0.124 = getelementptr [2 x i8], [2 x i8]* %sp124, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.124 = load [1 x i8], [1 x i8]* @str.1.124
  %cipher.ptr.307 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.307
  %cipher.307 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.307, i32 0, i32 0
  %plain.ptr.307 = tail call i8* @base64_decode(i8* %cipher.307)
  %spi307 = bitcast i8* %plain.ptr.307 to [1 x i8]*
  %s1.124 = load [1 x i8], [1 x i8]* %spi307
;-------------------------------
  %sp1.124 = bitcast i8* %next0.124 to [1 x i8]*
  store [1 x i8] %s1.124, [1 x i8]* %sp1.124

  %spi124 = load [2 x i8], [2 x i8]* %sp124
  store [2 x i8] %spi124, [2 x i8]* %sp1.71
;-------------------------------
  %sp1.1.71 = bitcast [2 x i8]* %sp1.71 to i16*
  %i1.71 = load i16, i16* %sp1.1.71

  %xp71 = xor i16 %i0.71, %i1.71

  %fi.71 = alloca i16
  store i16 %xp71, i16* %fi.71

  %spi71 = ptrtoint i16* %fi.71 to i32
  store i32 %spi71, i32* %12, align 4
;-------------------------------
  store i32 %18, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i6 = load i32, i32* %13, align 16
  %arg2.i.i7 = load i32, i32* %12, align 4
  %19 = tail call i32 @strcmp(i32 %arg.i.i6, i32 %arg2.i.i7)
  %.not.i.i = icmp eq i32 %19, 0
  br i1 %.not.i.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i6.i.i = add i32 %tmp0_v.i.i, -40
  %20 = inttoptr i32 %tmp2_v.i6.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %20, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i.i, -68
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @smallest_word_print882 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack881, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %21 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
;-------------------------------
; Replace: store i32 134517414, i32* %21, align 4
  %sp0.72 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\66\33\1F\43", [4 x i8]* %sp0.72
  %sp125 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.125 = load [1 x i8], [1 x i8]* @str.0.125
  %cipher.ptr.310 = alloca [5 x i8]
  store [5 x i8] c"\5a\67\3d\3d\00", [5 x i8]* %cipher.ptr.310
  %cipher.310 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.310, i32 0, i32 0
  %plain.ptr.310 = tail call i8* @base64_decode(i8* %cipher.310)
  %spi310 = bitcast i8* %plain.ptr.310 to [1 x i8]*
  %s0.125 = load [1 x i8], [1 x i8]* %spi310
;-------------------------------
  %sp0.125 = bitcast [4 x i8]* %sp125 to [1 x i8]*
  store [1 x i8] %s0.125, [1 x i8]* %sp0.125
  %next0.125 = getelementptr [4 x i8], [4 x i8]* %sp125, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.125 = load [1 x i8], [1 x i8]* @str.1.125
  %cipher.ptr.308 = alloca [5 x i8]
  store [5 x i8] c"\4d\77\3d\3d\00", [5 x i8]* %cipher.ptr.308
  %cipher.308 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.308, i32 0, i32 0
  %plain.ptr.308 = tail call i8* @base64_decode(i8* %cipher.308)
  %spi308 = bitcast i8* %plain.ptr.308 to [1 x i8]*
  %s1.125 = load [1 x i8], [1 x i8]* %spi308
;-------------------------------
  %sp1.125 = bitcast i8* %next0.125 to [1 x i8]*
  store [1 x i8] %s1.125, [1 x i8]* %sp1.125
  %next1.125 = getelementptr [4 x i8], [4 x i8]* %sp125, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.125 = load [1 x i8], [1 x i8]* @str.2.125
  %cipher.ptr.311 = alloca [5 x i8]
  store [5 x i8] c"\48\77\3d\3d\00", [5 x i8]* %cipher.ptr.311
  %cipher.311 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.311, i32 0, i32 0
  %plain.ptr.311 = tail call i8* @base64_decode(i8* %cipher.311)
  %spi311 = bitcast i8* %plain.ptr.311 to [1 x i8]*
  %s2.125 = load [1 x i8], [1 x i8]* %spi311
;-------------------------------
  %sp2.125 = bitcast i8* %next1.125 to [1 x i8]*
  store [1 x i8] %s2.125, [1 x i8]* %sp2.125
  %next2.125 = getelementptr [4 x i8], [4 x i8]* %sp125, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.125 = load [1 x i8], [1 x i8]* @str.3.125
  %cipher.ptr.309 = alloca [5 x i8]
  store [5 x i8] c"\51\77\3d\3d\00", [5 x i8]* %cipher.ptr.309
  %cipher.309 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.309, i32 0, i32 0
  %plain.ptr.309 = tail call i8* @base64_decode(i8* %cipher.309)
  %spi309 = bitcast i8* %plain.ptr.309 to [1 x i8]*
  %s3.125 = load [1 x i8], [1 x i8]* %spi309
;-------------------------------
  %sp3.125 = bitcast i8* %next2.125 to [1 x i8]*
  store [1 x i8] %s3.125, [1 x i8]* %sp3.125

  %spi125 = load [4 x i8], [4 x i8]* %sp125
  store [4 x i8] %spi125, [4 x i8]* %sp0.72
;-------------------------------
  %sp0.1.72 = bitcast [4 x i8]* %sp0.72 to i32*
  %i0.72 = load i32, i32* %sp0.1.72

  %sp1.72 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\63\69\32\43", [4 x i8]* %sp1.72
  %sp126 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.126 = load [1 x i8], [1 x i8]* @str.0.126
  %cipher.ptr.312 = alloca [5 x i8]
  store [5 x i8] c"\59\77\3d\3d\00", [5 x i8]* %cipher.ptr.312
  %cipher.312 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.312, i32 0, i32 0
  %plain.ptr.312 = tail call i8* @base64_decode(i8* %cipher.312)
  %spi312 = bitcast i8* %plain.ptr.312 to [1 x i8]*
  %s0.126 = load [1 x i8], [1 x i8]* %spi312
;-------------------------------
  %sp0.126 = bitcast [4 x i8]* %sp126 to [1 x i8]*
  store [1 x i8] %s0.126, [1 x i8]* %sp0.126
  %next0.126 = getelementptr [4 x i8], [4 x i8]* %sp126, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.126 = load [1 x i8], [1 x i8]* @str.1.126
  %cipher.ptr.315 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.315
  %cipher.315 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.315, i32 0, i32 0
  %plain.ptr.315 = tail call i8* @base64_decode(i8* %cipher.315)
  %spi315 = bitcast i8* %plain.ptr.315 to [1 x i8]*
  %s1.126 = load [1 x i8], [1 x i8]* %spi315
;-------------------------------
  %sp1.126 = bitcast i8* %next0.126 to [1 x i8]*
  store [1 x i8] %s1.126, [1 x i8]* %sp1.126
  %next1.126 = getelementptr [4 x i8], [4 x i8]* %sp126, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.126 = load [1 x i8], [1 x i8]* @str.2.126
  %cipher.ptr.314 = alloca [5 x i8]
  store [5 x i8] c"\4d\67\3d\3d\00", [5 x i8]* %cipher.ptr.314
  %cipher.314 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.314, i32 0, i32 0
  %plain.ptr.314 = tail call i8* @base64_decode(i8* %cipher.314)
  %spi314 = bitcast i8* %plain.ptr.314 to [1 x i8]*
  %s2.126 = load [1 x i8], [1 x i8]* %spi314
;-------------------------------
  %sp2.126 = bitcast i8* %next1.126 to [1 x i8]*
  store [1 x i8] %s2.126, [1 x i8]* %sp2.126
  %next2.126 = getelementptr [4 x i8], [4 x i8]* %sp126, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.126 = load [1 x i8], [1 x i8]* @str.3.126
  %cipher.ptr.313 = alloca [5 x i8]
  store [5 x i8] c"\51\77\3d\3d\00", [5 x i8]* %cipher.ptr.313
  %cipher.313 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.313, i32 0, i32 0
  %plain.ptr.313 = tail call i8* @base64_decode(i8* %cipher.313)
  %spi313 = bitcast i8* %plain.ptr.313 to [1 x i8]*
  %s3.126 = load [1 x i8], [1 x i8]* %spi313
;-------------------------------
  %sp3.126 = bitcast i8* %next2.126 to [1 x i8]*
  store [1 x i8] %s3.126, [1 x i8]* %sp3.126

  %spi126 = load [4 x i8], [4 x i8]* %sp126
  store [4 x i8] %spi126, [4 x i8]* %sp1.72
;-------------------------------
  %sp1.1.72 = bitcast [4 x i8]* %sp1.72 to i32*
  %i1.72 = load i32, i32* %sp1.1.72

  %xp72 = xor i32 %i0.72, %i1.72

  %fi.72 = alloca i32
  store i32 %xp72, i32* %fi.72

  %spi72 = ptrtoint i32* %fi.72 to i32
  store i32 %spi72, i32* %21, align 4
;-------------------------------
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -56
  %22 = inttoptr i32 %tmp2_v1.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %22, align 8
  %sp0.73 = alloca [14 x i8]
;-------------------------------
; Replace: store [14 x i8] c"\2D\4F\55\17\69\2D\24\2E\2A\6D\60\76\4B\58", [14 x i8]* %sp0.73
  %sp127 = alloca [14 x i8]
  
;-------------------------------
; Replace: %s0.127 = load [1 x i8], [1 x i8]* @str.0.127
  %cipher.ptr.317 = alloca [5 x i8]
  store [5 x i8] c"\4c\51\3d\3d\00", [5 x i8]* %cipher.ptr.317
  %cipher.317 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.317, i32 0, i32 0
  %plain.ptr.317 = tail call i8* @base64_decode(i8* %cipher.317)
  %spi317 = bitcast i8* %plain.ptr.317 to [1 x i8]*
  %s0.127 = load [1 x i8], [1 x i8]* %spi317
;-------------------------------
  %sp0.127 = bitcast [14 x i8]* %sp127 to [1 x i8]*
  store [1 x i8] %s0.127, [1 x i8]* %sp0.127
  %next0.127 = getelementptr [14 x i8], [14 x i8]* %sp127, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.127 = load [2 x i8], [2 x i8]* @str.1.127
  %cipher.ptr.316 = alloca [5 x i8]
  store [5 x i8] c"\54\31\55\3d\00", [5 x i8]* %cipher.ptr.316
  %cipher.316 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.316, i32 0, i32 0
  %plain.ptr.316 = tail call i8* @base64_decode(i8* %cipher.316)
  %spi316 = bitcast i8* %plain.ptr.316 to [2 x i8]*
  %s1.127 = load [2 x i8], [2 x i8]* %spi316
;-------------------------------
  %sp1.127 = bitcast i8* %next0.127 to [2 x i8]*
  store [2 x i8] %s1.127, [2 x i8]* %sp1.127
  %next1.127 = getelementptr [14 x i8], [14 x i8]* %sp127, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.127 = load [2 x i8], [2 x i8]* @str.2.127
  %cipher.ptr.321 = alloca [5 x i8]
  store [5 x i8] c"\46\32\6b\3d\00", [5 x i8]* %cipher.ptr.321
  %cipher.321 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.321, i32 0, i32 0
  %plain.ptr.321 = tail call i8* @base64_decode(i8* %cipher.321)
  %spi321 = bitcast i8* %plain.ptr.321 to [2 x i8]*
  %s2.127 = load [2 x i8], [2 x i8]* %spi321
;-------------------------------
  %sp2.127 = bitcast i8* %next1.127 to [2 x i8]*
  store [2 x i8] %s2.127, [2 x i8]* %sp2.127
  %next2.127 = getelementptr [14 x i8], [14 x i8]* %sp127, i32 0, i32 5
  
;-------------------------------
; Replace: %s3.127 = load [2 x i8], [2 x i8]* @str.3.127
  %cipher.ptr.322 = alloca [5 x i8]
  store [5 x i8] c"\4c\53\51\3d\00", [5 x i8]* %cipher.ptr.322
  %cipher.322 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.322, i32 0, i32 0
  %plain.ptr.322 = tail call i8* @base64_decode(i8* %cipher.322)
  %spi322 = bitcast i8* %plain.ptr.322 to [2 x i8]*
  %s3.127 = load [2 x i8], [2 x i8]* %spi322
;-------------------------------
  %sp3.127 = bitcast i8* %next2.127 to [2 x i8]*
  store [2 x i8] %s3.127, [2 x i8]* %sp3.127
  %next3.127 = getelementptr [14 x i8], [14 x i8]* %sp127, i32 0, i32 7
  
;-------------------------------
; Replace: %s4.127 = load [1 x i8], [1 x i8]* @str.4.127
  %cipher.ptr.323 = alloca [5 x i8]
  store [5 x i8] c"\4c\67\3d\3d\00", [5 x i8]* %cipher.ptr.323
  %cipher.323 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.323, i32 0, i32 0
  %plain.ptr.323 = tail call i8* @base64_decode(i8* %cipher.323)
  %spi323 = bitcast i8* %plain.ptr.323 to [1 x i8]*
  %s4.127 = load [1 x i8], [1 x i8]* %spi323
;-------------------------------
  %sp4.127 = bitcast i8* %next3.127 to [1 x i8]*
  store [1 x i8] %s4.127, [1 x i8]* %sp4.127
  %next4.127 = getelementptr [14 x i8], [14 x i8]* %sp127, i32 0, i32 8
  
;-------------------------------
; Replace: %s5.127 = load [2 x i8], [2 x i8]* @str.5.127
  %cipher.ptr.320 = alloca [5 x i8]
  store [5 x i8] c"\4b\6d\30\3d\00", [5 x i8]* %cipher.ptr.320
  %cipher.320 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.320, i32 0, i32 0
  %plain.ptr.320 = tail call i8* @base64_decode(i8* %cipher.320)
  %spi320 = bitcast i8* %plain.ptr.320 to [2 x i8]*
  %s5.127 = load [2 x i8], [2 x i8]* %spi320
;-------------------------------
  %sp5.127 = bitcast i8* %next4.127 to [2 x i8]*
  store [2 x i8] %s5.127, [2 x i8]* %sp5.127
  %next5.127 = getelementptr [14 x i8], [14 x i8]* %sp127, i32 0, i32 10
  
;-------------------------------
; Replace: %s6.127 = load [2 x i8], [2 x i8]* @str.6.127
  %cipher.ptr.319 = alloca [5 x i8]
  store [5 x i8] c"\59\48\59\3d\00", [5 x i8]* %cipher.ptr.319
  %cipher.319 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.319, i32 0, i32 0
  %plain.ptr.319 = tail call i8* @base64_decode(i8* %cipher.319)
  %spi319 = bitcast i8* %plain.ptr.319 to [2 x i8]*
  %s6.127 = load [2 x i8], [2 x i8]* %spi319
;-------------------------------
  %sp6.127 = bitcast i8* %next5.127 to [2 x i8]*
  store [2 x i8] %s6.127, [2 x i8]* %sp6.127
  %next6.127 = getelementptr [14 x i8], [14 x i8]* %sp127, i32 0, i32 12
  
;-------------------------------
; Replace: %s7.127 = load [2 x i8], [2 x i8]* @str.7.127
  %cipher.ptr.318 = alloca [5 x i8]
  store [5 x i8] c"\53\31\67\3d\00", [5 x i8]* %cipher.ptr.318
  %cipher.318 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.318, i32 0, i32 0
  %plain.ptr.318 = tail call i8* @base64_decode(i8* %cipher.318)
  %spi318 = bitcast i8* %plain.ptr.318 to [2 x i8]*
  %s7.127 = load [2 x i8], [2 x i8]* %spi318
;-------------------------------
  %sp7.127 = bitcast i8* %next6.127 to [2 x i8]*
  store [2 x i8] %s7.127, [2 x i8]* %sp7.127

  %spi127 = load [14 x i8], [14 x i8]* %sp127
  store [14 x i8] %spi127, [14 x i8]* %sp0.73
;-------------------------------
  %sp0.1.73 = bitcast [14 x i8]* %sp0.73 to i112*
  %i0.73 = load i112, i112* %sp0.1.73

  %sp1.73 = alloca [14 x i8]
;-------------------------------
; Replace: store [14 x i8] c"\64\6f\34\7a\49\48\52\47\46\4c\41\57\41\58", [14 x i8]* %sp1.73
  %sp128 = alloca [14 x i8]
  
;-------------------------------
; Replace: %s0.128 = load [1 x i8], [1 x i8]* @str.0.128
  %cipher.ptr.328 = alloca [5 x i8]
  store [5 x i8] c"\5a\41\3d\3d\00", [5 x i8]* %cipher.ptr.328
  %cipher.328 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.328, i32 0, i32 0
  %plain.ptr.328 = tail call i8* @base64_decode(i8* %cipher.328)
  %spi328 = bitcast i8* %plain.ptr.328 to [1 x i8]*
  %s0.128 = load [1 x i8], [1 x i8]* %spi328
;-------------------------------
  %sp0.128 = bitcast [14 x i8]* %sp128 to [1 x i8]*
  store [1 x i8] %s0.128, [1 x i8]* %sp0.128
  %next0.128 = getelementptr [14 x i8], [14 x i8]* %sp128, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.128 = load [2 x i8], [2 x i8]* @str.1.128
  %cipher.ptr.325 = alloca [5 x i8]
  store [5 x i8] c"\62\7a\51\3d\00", [5 x i8]* %cipher.ptr.325
  %cipher.325 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.325, i32 0, i32 0
  %plain.ptr.325 = tail call i8* @base64_decode(i8* %cipher.325)
  %spi325 = bitcast i8* %plain.ptr.325 to [2 x i8]*
  %s1.128 = load [2 x i8], [2 x i8]* %spi325
;-------------------------------
  %sp1.128 = bitcast i8* %next0.128 to [2 x i8]*
  store [2 x i8] %s1.128, [2 x i8]* %sp1.128
  %next1.128 = getelementptr [14 x i8], [14 x i8]* %sp128, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.128 = load [2 x i8], [2 x i8]* @str.2.128
  %cipher.ptr.330 = alloca [5 x i8]
  store [5 x i8] c"\65\6b\6b\3d\00", [5 x i8]* %cipher.ptr.330
  %cipher.330 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.330, i32 0, i32 0
  %plain.ptr.330 = tail call i8* @base64_decode(i8* %cipher.330)
  %spi330 = bitcast i8* %plain.ptr.330 to [2 x i8]*
  %s2.128 = load [2 x i8], [2 x i8]* %spi330
;-------------------------------
  %sp2.128 = bitcast i8* %next1.128 to [2 x i8]*
  store [2 x i8] %s2.128, [2 x i8]* %sp2.128
  %next2.128 = getelementptr [14 x i8], [14 x i8]* %sp128, i32 0, i32 5
  
;-------------------------------
; Replace: %s3.128 = load [2 x i8], [2 x i8]* @str.3.128
  %cipher.ptr.329 = alloca [5 x i8]
  store [5 x i8] c"\53\46\49\3d\00", [5 x i8]* %cipher.ptr.329
  %cipher.329 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.329, i32 0, i32 0
  %plain.ptr.329 = tail call i8* @base64_decode(i8* %cipher.329)
  %spi329 = bitcast i8* %plain.ptr.329 to [2 x i8]*
  %s3.128 = load [2 x i8], [2 x i8]* %spi329
;-------------------------------
  %sp3.128 = bitcast i8* %next2.128 to [2 x i8]*
  store [2 x i8] %s3.128, [2 x i8]* %sp3.128
  %next3.128 = getelementptr [14 x i8], [14 x i8]* %sp128, i32 0, i32 7
  
;-------------------------------
; Replace: %s4.128 = load [1 x i8], [1 x i8]* @str.4.128
  %cipher.ptr.331 = alloca [5 x i8]
  store [5 x i8] c"\52\77\3d\3d\00", [5 x i8]* %cipher.ptr.331
  %cipher.331 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.331, i32 0, i32 0
  %plain.ptr.331 = tail call i8* @base64_decode(i8* %cipher.331)
  %spi331 = bitcast i8* %plain.ptr.331 to [1 x i8]*
  %s4.128 = load [1 x i8], [1 x i8]* %spi331
;-------------------------------
  %sp4.128 = bitcast i8* %next3.128 to [1 x i8]*
  store [1 x i8] %s4.128, [1 x i8]* %sp4.128
  %next4.128 = getelementptr [14 x i8], [14 x i8]* %sp128, i32 0, i32 8
  
;-------------------------------
; Replace: %s5.128 = load [2 x i8], [2 x i8]* @str.5.128
  %cipher.ptr.327 = alloca [5 x i8]
  store [5 x i8] c"\52\6b\77\3d\00", [5 x i8]* %cipher.ptr.327
  %cipher.327 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.327, i32 0, i32 0
  %plain.ptr.327 = tail call i8* @base64_decode(i8* %cipher.327)
  %spi327 = bitcast i8* %plain.ptr.327 to [2 x i8]*
  %s5.128 = load [2 x i8], [2 x i8]* %spi327
;-------------------------------
  %sp5.128 = bitcast i8* %next4.128 to [2 x i8]*
  store [2 x i8] %s5.128, [2 x i8]* %sp5.128
  %next5.128 = getelementptr [14 x i8], [14 x i8]* %sp128, i32 0, i32 10
  
;-------------------------------
; Replace: %s6.128 = load [2 x i8], [2 x i8]* @str.6.128
  %cipher.ptr.324 = alloca [5 x i8]
  store [5 x i8] c"\51\56\63\3d\00", [5 x i8]* %cipher.ptr.324
  %cipher.324 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.324, i32 0, i32 0
  %plain.ptr.324 = tail call i8* @base64_decode(i8* %cipher.324)
  %spi324 = bitcast i8* %plain.ptr.324 to [2 x i8]*
  %s6.128 = load [2 x i8], [2 x i8]* %spi324
;-------------------------------
  %sp6.128 = bitcast i8* %next5.128 to [2 x i8]*
  store [2 x i8] %s6.128, [2 x i8]* %sp6.128
  %next6.128 = getelementptr [14 x i8], [14 x i8]* %sp128, i32 0, i32 12
  
;-------------------------------
; Replace: %s7.128 = load [2 x i8], [2 x i8]* @str.7.128
  %cipher.ptr.326 = alloca [5 x i8]
  store [5 x i8] c"\51\56\67\3d\00", [5 x i8]* %cipher.ptr.326
  %cipher.326 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.326, i32 0, i32 0
  %plain.ptr.326 = tail call i8* @base64_decode(i8* %cipher.326)
  %spi326 = bitcast i8* %plain.ptr.326 to [2 x i8]*
  %s7.128 = load [2 x i8], [2 x i8]* %spi326
;-------------------------------
  %sp7.128 = bitcast i8* %next6.128 to [2 x i8]*
  store [2 x i8] %s7.128, [2 x i8]* %sp7.128

  %spi128 = load [14 x i8], [14 x i8]* %sp128
  store [14 x i8] %spi128, [14 x i8]* %sp1.73
;-------------------------------
  %sp1.1.73 = bitcast [14 x i8]* %sp1.73 to i112*
  %i1.73 = load i112, i112* %sp1.1.73

  %xp73 = xor i112 %i0.73, %i1.73

  %fi.73 = alloca i112
  store i112 %xp73, i112* %fi.73

  %spi73 = ptrtoint i112* %fi.73 to i32
  store i32 %spi73, i32* %22, align 8
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @print_0_99_grid231 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack230, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %sp0.74 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\27\3C\12\69\1A\4C\5D\44\37", [9 x i8]* %sp0.74
  %sp129 = alloca [9 x i8]
  
;-------------------------------
; Replace: %s0.129 = load [1 x i8], [1 x i8]* @str.0.129
  %cipher.ptr.337 = alloca [5 x i8]
  store [5 x i8] c"\4a\77\3d\3d\00", [5 x i8]* %cipher.ptr.337
  %cipher.337 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.337, i32 0, i32 0
  %plain.ptr.337 = tail call i8* @base64_decode(i8* %cipher.337)
  %spi337 = bitcast i8* %plain.ptr.337 to [1 x i8]*
  %s0.129 = load [1 x i8], [1 x i8]* %spi337
;-------------------------------
  %sp0.129 = bitcast [9 x i8]* %sp129 to [1 x i8]*
  store [1 x i8] %s0.129, [1 x i8]* %sp0.129
  %next0.129 = getelementptr [9 x i8], [9 x i8]* %sp129, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.129 = load [1 x i8], [1 x i8]* @str.1.129
  %cipher.ptr.339 = alloca [5 x i8]
  store [5 x i8] c"\50\41\3d\3d\00", [5 x i8]* %cipher.ptr.339
  %cipher.339 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.339, i32 0, i32 0
  %plain.ptr.339 = tail call i8* @base64_decode(i8* %cipher.339)
  %spi339 = bitcast i8* %plain.ptr.339 to [1 x i8]*
  %s1.129 = load [1 x i8], [1 x i8]* %spi339
;-------------------------------
  %sp1.129 = bitcast i8* %next0.129 to [1 x i8]*
  store [1 x i8] %s1.129, [1 x i8]* %sp1.129
  %next1.129 = getelementptr [9 x i8], [9 x i8]* %sp129, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.129 = load [1 x i8], [1 x i8]* @str.2.129
  %cipher.ptr.334 = alloca [5 x i8]
  store [5 x i8] c"\45\67\3d\3d\00", [5 x i8]* %cipher.ptr.334
  %cipher.334 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.334, i32 0, i32 0
  %plain.ptr.334 = tail call i8* @base64_decode(i8* %cipher.334)
  %spi334 = bitcast i8* %plain.ptr.334 to [1 x i8]*
  %s2.129 = load [1 x i8], [1 x i8]* %spi334
;-------------------------------
  %sp2.129 = bitcast i8* %next1.129 to [1 x i8]*
  store [1 x i8] %s2.129, [1 x i8]* %sp2.129
  %next2.129 = getelementptr [9 x i8], [9 x i8]* %sp129, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.129 = load [1 x i8], [1 x i8]* @str.3.129
  %cipher.ptr.336 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.336
  %cipher.336 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.336, i32 0, i32 0
  %plain.ptr.336 = tail call i8* @base64_decode(i8* %cipher.336)
  %spi336 = bitcast i8* %plain.ptr.336 to [1 x i8]*
  %s3.129 = load [1 x i8], [1 x i8]* %spi336
;-------------------------------
  %sp3.129 = bitcast i8* %next2.129 to [1 x i8]*
  store [1 x i8] %s3.129, [1 x i8]* %sp3.129
  %next3.129 = getelementptr [9 x i8], [9 x i8]* %sp129, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.129 = load [1 x i8], [1 x i8]* @str.4.129
  %cipher.ptr.335 = alloca [5 x i8]
  store [5 x i8] c"\47\67\3d\3d\00", [5 x i8]* %cipher.ptr.335
  %cipher.335 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.335, i32 0, i32 0
  %plain.ptr.335 = tail call i8* @base64_decode(i8* %cipher.335)
  %spi335 = bitcast i8* %plain.ptr.335 to [1 x i8]*
  %s4.129 = load [1 x i8], [1 x i8]* %spi335
;-------------------------------
  %sp4.129 = bitcast i8* %next3.129 to [1 x i8]*
  store [1 x i8] %s4.129, [1 x i8]* %sp4.129
  %next4.129 = getelementptr [9 x i8], [9 x i8]* %sp129, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.129 = load [1 x i8], [1 x i8]* @str.5.129
  %cipher.ptr.333 = alloca [5 x i8]
  store [5 x i8] c"\54\41\3d\3d\00", [5 x i8]* %cipher.ptr.333
  %cipher.333 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.333, i32 0, i32 0
  %plain.ptr.333 = tail call i8* @base64_decode(i8* %cipher.333)
  %spi333 = bitcast i8* %plain.ptr.333 to [1 x i8]*
  %s5.129 = load [1 x i8], [1 x i8]* %spi333
;-------------------------------
  %sp5.129 = bitcast i8* %next4.129 to [1 x i8]*
  store [1 x i8] %s5.129, [1 x i8]* %sp5.129
  %next5.129 = getelementptr [9 x i8], [9 x i8]* %sp129, i32 0, i32 6
  
;-------------------------------
; Replace: %s6.129 = load [1 x i8], [1 x i8]* @str.6.129
  %cipher.ptr.332 = alloca [5 x i8]
  store [5 x i8] c"\58\51\3d\3d\00", [5 x i8]* %cipher.ptr.332
  %cipher.332 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.332, i32 0, i32 0
  %plain.ptr.332 = tail call i8* @base64_decode(i8* %cipher.332)
  %spi332 = bitcast i8* %plain.ptr.332 to [1 x i8]*
  %s6.129 = load [1 x i8], [1 x i8]* %spi332
;-------------------------------
  %sp6.129 = bitcast i8* %next5.129 to [1 x i8]*
  store [1 x i8] %s6.129, [1 x i8]* %sp6.129
  %next6.129 = getelementptr [9 x i8], [9 x i8]* %sp129, i32 0, i32 7
  
;-------------------------------
; Replace: %s7.129 = load [2 x i8], [2 x i8]* @str.7.129
  %cipher.ptr.338 = alloca [5 x i8]
  store [5 x i8] c"\52\44\63\3d\00", [5 x i8]* %cipher.ptr.338
  %cipher.338 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.338, i32 0, i32 0
  %plain.ptr.338 = tail call i8* @base64_decode(i8* %cipher.338)
  %spi338 = bitcast i8* %plain.ptr.338 to [2 x i8]*
  %s7.129 = load [2 x i8], [2 x i8]* %spi338
;-------------------------------
  %sp7.129 = bitcast i8* %next6.129 to [2 x i8]*
  store [2 x i8] %s7.129, [2 x i8]* %sp7.129

  %spi129 = load [9 x i8], [9 x i8]* %sp129
  store [9 x i8] %spi129, [9 x i8]* %sp0.74
;-------------------------------
  %sp0.1.74 = bitcast [9 x i8]* %sp0.74 to i72*
  %i0.74 = load i72, i72* %sp0.1.74

  %sp1.74 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\65\45\77\49\58\35\38\4e\37", [9 x i8]* %sp1.74
  %sp130 = alloca [9 x i8]
  
;-------------------------------
; Replace: %s0.130 = load [1 x i8], [1 x i8]* @str.0.130
  %cipher.ptr.340 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.340
  %cipher.340 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.340, i32 0, i32 0
  %plain.ptr.340 = tail call i8* @base64_decode(i8* %cipher.340)
  %spi340 = bitcast i8* %plain.ptr.340 to [1 x i8]*
  %s0.130 = load [1 x i8], [1 x i8]* %spi340
;-------------------------------
  %sp0.130 = bitcast [9 x i8]* %sp130 to [1 x i8]*
  store [1 x i8] %s0.130, [1 x i8]* %sp0.130
  %next0.130 = getelementptr [9 x i8], [9 x i8]* %sp130, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.130 = load [1 x i8], [1 x i8]* @str.1.130
  %cipher.ptr.343 = alloca [5 x i8]
  store [5 x i8] c"\52\51\3d\3d\00", [5 x i8]* %cipher.ptr.343
  %cipher.343 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.343, i32 0, i32 0
  %plain.ptr.343 = tail call i8* @base64_decode(i8* %cipher.343)
  %spi343 = bitcast i8* %plain.ptr.343 to [1 x i8]*
  %s1.130 = load [1 x i8], [1 x i8]* %spi343
;-------------------------------
  %sp1.130 = bitcast i8* %next0.130 to [1 x i8]*
  store [1 x i8] %s1.130, [1 x i8]* %sp1.130
  %next1.130 = getelementptr [9 x i8], [9 x i8]* %sp130, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.130 = load [1 x i8], [1 x i8]* @str.2.130
  %cipher.ptr.344 = alloca [5 x i8]
  store [5 x i8] c"\64\77\3d\3d\00", [5 x i8]* %cipher.ptr.344
  %cipher.344 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.344, i32 0, i32 0
  %plain.ptr.344 = tail call i8* @base64_decode(i8* %cipher.344)
  %spi344 = bitcast i8* %plain.ptr.344 to [1 x i8]*
  %s2.130 = load [1 x i8], [1 x i8]* %spi344
;-------------------------------
  %sp2.130 = bitcast i8* %next1.130 to [1 x i8]*
  store [1 x i8] %s2.130, [1 x i8]* %sp2.130
  %next2.130 = getelementptr [9 x i8], [9 x i8]* %sp130, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.130 = load [1 x i8], [1 x i8]* @str.3.130
  %cipher.ptr.346 = alloca [5 x i8]
  store [5 x i8] c"\53\51\3d\3d\00", [5 x i8]* %cipher.ptr.346
  %cipher.346 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.346, i32 0, i32 0
  %plain.ptr.346 = tail call i8* @base64_decode(i8* %cipher.346)
  %spi346 = bitcast i8* %plain.ptr.346 to [1 x i8]*
  %s3.130 = load [1 x i8], [1 x i8]* %spi346
;-------------------------------
  %sp3.130 = bitcast i8* %next2.130 to [1 x i8]*
  store [1 x i8] %s3.130, [1 x i8]* %sp3.130
  %next3.130 = getelementptr [9 x i8], [9 x i8]* %sp130, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.130 = load [1 x i8], [1 x i8]* @str.4.130
  %cipher.ptr.341 = alloca [5 x i8]
  store [5 x i8] c"\57\41\3d\3d\00", [5 x i8]* %cipher.ptr.341
  %cipher.341 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.341, i32 0, i32 0
  %plain.ptr.341 = tail call i8* @base64_decode(i8* %cipher.341)
  %spi341 = bitcast i8* %plain.ptr.341 to [1 x i8]*
  %s4.130 = load [1 x i8], [1 x i8]* %spi341
;-------------------------------
  %sp4.130 = bitcast i8* %next3.130 to [1 x i8]*
  store [1 x i8] %s4.130, [1 x i8]* %sp4.130
  %next4.130 = getelementptr [9 x i8], [9 x i8]* %sp130, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.130 = load [1 x i8], [1 x i8]* @str.5.130
  %cipher.ptr.342 = alloca [5 x i8]
  store [5 x i8] c"\4e\51\3d\3d\00", [5 x i8]* %cipher.ptr.342
  %cipher.342 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.342, i32 0, i32 0
  %plain.ptr.342 = tail call i8* @base64_decode(i8* %cipher.342)
  %spi342 = bitcast i8* %plain.ptr.342 to [1 x i8]*
  %s5.130 = load [1 x i8], [1 x i8]* %spi342
;-------------------------------
  %sp5.130 = bitcast i8* %next4.130 to [1 x i8]*
  store [1 x i8] %s5.130, [1 x i8]* %sp5.130
  %next5.130 = getelementptr [9 x i8], [9 x i8]* %sp130, i32 0, i32 6
  
;-------------------------------
; Replace: %s6.130 = load [1 x i8], [1 x i8]* @str.6.130
  %cipher.ptr.345 = alloca [5 x i8]
  store [5 x i8] c"\4f\41\3d\3d\00", [5 x i8]* %cipher.ptr.345
  %cipher.345 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.345, i32 0, i32 0
  %plain.ptr.345 = tail call i8* @base64_decode(i8* %cipher.345)
  %spi345 = bitcast i8* %plain.ptr.345 to [1 x i8]*
  %s6.130 = load [1 x i8], [1 x i8]* %spi345
;-------------------------------
  %sp6.130 = bitcast i8* %next5.130 to [1 x i8]*
  store [1 x i8] %s6.130, [1 x i8]* %sp6.130
  %next6.130 = getelementptr [9 x i8], [9 x i8]* %sp130, i32 0, i32 7
  
;-------------------------------
; Replace: %s7.130 = load [2 x i8], [2 x i8]* @str.7.130
  %cipher.ptr.347 = alloca [5 x i8]
  store [5 x i8] c"\54\6a\63\3d\00", [5 x i8]* %cipher.ptr.347
  %cipher.347 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.347, i32 0, i32 0
  %plain.ptr.347 = tail call i8* @base64_decode(i8* %cipher.347)
  %spi347 = bitcast i8* %plain.ptr.347 to [2 x i8]*
  %s7.130 = load [2 x i8], [2 x i8]* %spi347
;-------------------------------
  %sp7.130 = bitcast i8* %next6.130 to [2 x i8]*
  store [2 x i8] %s7.130, [2 x i8]* %sp7.130

  %spi130 = load [9 x i8], [9 x i8]* %sp130
  store [9 x i8] %spi130, [9 x i8]* %sp1.74
;-------------------------------
  %sp1.1.74 = bitcast [9 x i8]* %sp1.74 to i72*
  %i1.74 = load i72, i72* %sp1.1.74

  %xp74 = xor i72 %i0.74, %i1.74

  %fi.74 = alloca i72
  store i72 %xp74, i72* %fi.74

;-------------------------------
;--------Basic Condition--------
  %.not111.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not111.i.i, label %BB_111, label %next111
next111:
;-------------------------------
  %spi74 = ptrtoint i72* %fi.74 to i32
  store i32 %spi74, i32* %14, align 4
;-------------------------------
  %23 = load i32, i32* %22, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i.i, -76
  %24 = inttoptr i32 %tmp2_v7.i.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not99.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not99.i.i, label %BB_99, label %next99
next99:
;-------------------------------
  store i32 %23, i32* %24, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -80
  %25 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
; Replace: store i32 134520863, i32* %25, align 16
;-------------------------------
;--------Basic Condition--------
  %.not101.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not101.i.i, label %BB_101, label %next101
next101:
;-------------------------------
  %sp0.75 = alloca [3 x i8]
;-------------------------------
; Replace: store [3 x i8] c"\4C\02\47", [3 x i8]* %sp0.75
  %sp131 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.131 = load [1 x i8], [1 x i8]* @str.0.131
  %cipher.ptr.349 = alloca [5 x i8]
  store [5 x i8] c"\54\41\3d\3d\00", [5 x i8]* %cipher.ptr.349
  %cipher.349 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.349, i32 0, i32 0
  %plain.ptr.349 = tail call i8* @base64_decode(i8* %cipher.349)
  %spi349 = bitcast i8* %plain.ptr.349 to [1 x i8]*
  %s0.131 = load [1 x i8], [1 x i8]* %spi349
;-------------------------------
  %sp0.131 = bitcast [3 x i8]* %sp131 to [1 x i8]*
  store [1 x i8] %s0.131, [1 x i8]* %sp0.131
  %next0.131 = getelementptr [3 x i8], [3 x i8]* %sp131, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.131 = load [1 x i8], [1 x i8]* @str.1.131
  %cipher.ptr.350 = alloca [5 x i8]
  store [5 x i8] c"\41\67\3d\3d\00", [5 x i8]* %cipher.ptr.350
  %cipher.350 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.350, i32 0, i32 0
  %plain.ptr.350 = tail call i8* @base64_decode(i8* %cipher.350)
  %spi350 = bitcast i8* %plain.ptr.350 to [1 x i8]*
  %s1.131 = load [1 x i8], [1 x i8]* %spi350
;-------------------------------
  %sp1.131 = bitcast i8* %next0.131 to [1 x i8]*
  store [1 x i8] %s1.131, [1 x i8]* %sp1.131
  %next1.131 = getelementptr [3 x i8], [3 x i8]* %sp131, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.131 = load [1 x i8], [1 x i8]* @str.2.131
  %cipher.ptr.348 = alloca [5 x i8]
  store [5 x i8] c"\52\77\3d\3d\00", [5 x i8]* %cipher.ptr.348
  %cipher.348 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.348, i32 0, i32 0
  %plain.ptr.348 = tail call i8* @base64_decode(i8* %cipher.348)
  %spi348 = bitcast i8* %plain.ptr.348 to [1 x i8]*
  %s2.131 = load [1 x i8], [1 x i8]* %spi348
;-------------------------------
  %sp2.131 = bitcast i8* %next1.131 to [1 x i8]*
  store [1 x i8] %s2.131, [1 x i8]* %sp2.131

  %spi131 = load [3 x i8], [3 x i8]* %sp131
  store [3 x i8] %spi131, [3 x i8]* %sp0.75
;-------------------------------
  %sp0.1.75 = bitcast [3 x i8]* %sp0.75 to i24*
  %i0.75 = load i24, i24* %sp0.1.75

  %sp1.75 = alloca [3 x i8]
;-------------------------------
; Replace: store [3 x i8] c"\69\71\47", [3 x i8]* %sp1.75
  %sp132 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.132 = load [1 x i8], [1 x i8]* @str.0.132
  %cipher.ptr.353 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.353
  %cipher.353 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.353, i32 0, i32 0
  %plain.ptr.353 = tail call i8* @base64_decode(i8* %cipher.353)
  %spi353 = bitcast i8* %plain.ptr.353 to [1 x i8]*
  %s0.132 = load [1 x i8], [1 x i8]* %spi353
;-------------------------------
  %sp0.132 = bitcast [3 x i8]* %sp132 to [1 x i8]*
  store [1 x i8] %s0.132, [1 x i8]* %sp0.132
  %next0.132 = getelementptr [3 x i8], [3 x i8]* %sp132, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.132 = load [1 x i8], [1 x i8]* @str.1.132
  %cipher.ptr.352 = alloca [5 x i8]
  store [5 x i8] c"\63\51\3d\3d\00", [5 x i8]* %cipher.ptr.352
  %cipher.352 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.352, i32 0, i32 0
  %plain.ptr.352 = tail call i8* @base64_decode(i8* %cipher.352)
  %spi352 = bitcast i8* %plain.ptr.352 to [1 x i8]*
  %s1.132 = load [1 x i8], [1 x i8]* %spi352
;-------------------------------
  %sp1.132 = bitcast i8* %next0.132 to [1 x i8]*
  store [1 x i8] %s1.132, [1 x i8]* %sp1.132
  %next1.132 = getelementptr [3 x i8], [3 x i8]* %sp132, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.132 = load [1 x i8], [1 x i8]* @str.2.132
  %cipher.ptr.351 = alloca [5 x i8]
  store [5 x i8] c"\52\77\3d\3d\00", [5 x i8]* %cipher.ptr.351
  %cipher.351 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.351, i32 0, i32 0
  %plain.ptr.351 = tail call i8* @base64_decode(i8* %cipher.351)
  %spi351 = bitcast i8* %plain.ptr.351 to [1 x i8]*
  %s2.132 = load [1 x i8], [1 x i8]* %spi351
;-------------------------------
  %sp2.132 = bitcast i8* %next1.132 to [1 x i8]*
  store [1 x i8] %s2.132, [1 x i8]* %sp2.132

  %spi132 = load [3 x i8], [3 x i8]* %sp132
  store [3 x i8] %spi132, [3 x i8]* %sp1.75
;-------------------------------
  %sp1.1.75 = bitcast [3 x i8]* %sp1.75 to i24*
  %i1.75 = load i24, i24* %sp1.1.75

  %xp75 = xor i24 %i0.75, %i1.75

  %fi.75 = alloca i24
  store i24 %xp75, i24* %fi.75

  %spi75 = ptrtoint i24* %fi.75 to i32
  store i32 %spi75, i32* %25, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -84
  %26 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %26, align 4
  %27 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @token_pasting_operator701 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack700, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %28 = load i32, i32* %8, align 4
  %tmp0_v1.i39.i = add i32 %28, 4
  %29 = inttoptr i32 %tmp0_v1.i39.i to i32*
  %30 = load i32, i32* %29, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %sp0.76 = alloca [2 x i8]
;-------------------------------
; Replace: store [2 x i8] c"\5F\51", [2 x i8]* %sp0.76
  %sp133 = alloca [2 x i8]
  
;-------------------------------
; Replace: %s0.133 = load [1 x i8], [1 x i8]* @str.0.133
  %cipher.ptr.354 = alloca [5 x i8]
  store [5 x i8] c"\58\77\3d\3d\00", [5 x i8]* %cipher.ptr.354
  %cipher.354 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.354, i32 0, i32 0
  %plain.ptr.354 = tail call i8* @base64_decode(i8* %cipher.354)
  %spi354 = bitcast i8* %plain.ptr.354 to [1 x i8]*
  %s0.133 = load [1 x i8], [1 x i8]* %spi354
;-------------------------------
  %sp0.133 = bitcast [2 x i8]* %sp133 to [1 x i8]*
  store [1 x i8] %s0.133, [1 x i8]* %sp0.133
  %next0.133 = getelementptr [2 x i8], [2 x i8]* %sp133, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.133 = load [1 x i8], [1 x i8]* @str.1.133
  %cipher.ptr.355 = alloca [5 x i8]
  store [5 x i8] c"\55\51\3d\3d\00", [5 x i8]* %cipher.ptr.355
  %cipher.355 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.355, i32 0, i32 0
  %plain.ptr.355 = tail call i8* @base64_decode(i8* %cipher.355)
  %spi355 = bitcast i8* %plain.ptr.355 to [1 x i8]*
  %s1.133 = load [1 x i8], [1 x i8]* %spi355
;-------------------------------
  %sp1.133 = bitcast i8* %next0.133 to [1 x i8]*
  store [1 x i8] %s1.133, [1 x i8]* %sp1.133

  %spi133 = load [2 x i8], [2 x i8]* %sp133
  store [2 x i8] %spi133, [2 x i8]* %sp0.76
;-------------------------------
  %sp0.1.76 = bitcast [2 x i8]* %sp0.76 to i16*
  %i0.76 = load i16, i16* %sp0.1.76

  %sp1.76 = alloca [2 x i8]
;-------------------------------
; Replace: store [2 x i8] c"\6d\51", [2 x i8]* %sp1.76
  %sp134 = alloca [2 x i8]
  
;-------------------------------
; Replace: %s0.134 = load [1 x i8], [1 x i8]* @str.0.134
  %cipher.ptr.356 = alloca [5 x i8]
  store [5 x i8] c"\62\51\3d\3d\00", [5 x i8]* %cipher.ptr.356
  %cipher.356 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.356, i32 0, i32 0
  %plain.ptr.356 = tail call i8* @base64_decode(i8* %cipher.356)
  %spi356 = bitcast i8* %plain.ptr.356 to [1 x i8]*
  %s0.134 = load [1 x i8], [1 x i8]* %spi356
;-------------------------------
  %sp0.134 = bitcast [2 x i8]* %sp134 to [1 x i8]*
  store [1 x i8] %s0.134, [1 x i8]* %sp0.134
  %next0.134 = getelementptr [2 x i8], [2 x i8]* %sp134, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.134 = load [1 x i8], [1 x i8]* @str.1.134
  %cipher.ptr.357 = alloca [5 x i8]
  store [5 x i8] c"\55\51\3d\3d\00", [5 x i8]* %cipher.ptr.357
  %cipher.357 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.357, i32 0, i32 0
  %plain.ptr.357 = tail call i8* @base64_decode(i8* %cipher.357)
  %spi357 = bitcast i8* %plain.ptr.357 to [1 x i8]*
  %s1.134 = load [1 x i8], [1 x i8]* %spi357
;-------------------------------
  %sp1.134 = bitcast i8* %next0.134 to [1 x i8]*
  store [1 x i8] %s1.134, [1 x i8]* %sp1.134

  %spi134 = load [2 x i8], [2 x i8]* %sp134
  store [2 x i8] %spi134, [2 x i8]* %sp1.76
;-------------------------------
  %sp1.1.76 = bitcast [2 x i8]* %sp1.76 to i16*
  %i1.76 = load i16, i16* %sp1.1.76

  %xp76 = xor i16 %i0.76, %i1.76

  %fi.76 = alloca i16
  store i16 %xp76, i16* %fi.76

  %spi76 = ptrtoint i16* %fi.76 to i32
  store i32 %spi76, i32* %12, align 4
;-------------------------------
  store i32 %30, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i9 = load i32, i32* %13, align 16
  %arg2.i.i10 = load i32, i32* %12, align 4
  %31 = tail call i32 @strcmp(i32 %arg.i.i9, i32 %arg2.i.i10)
  %.not.i51.i = icmp eq i32 %31, 0
  br i1 %.not.i51.i, label %BB_804944C.i, label %BB_8049453.i

BB_8049472.i:                                     ; preds = %BB_8049453.i
  store i32 134517879, i32* %7, align 4
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i.i, -40
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @count_nonrepeating260 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack259, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %32 = inttoptr i32 %tmp2_v.i8.i.i to i32*
;-------------------------------
;--------Basic Condition--------
  %.not103.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not103.i.i, label %BB_103, label %next103
next103:
;-------------------------------
  store i32 %tmp2_v4.i.i, i32* %32, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i11.i.i = add i32 %tmp0_v.i.i, -68
  %33 = inttoptr i32 %tmp2_v2.i11.i.i to i32*
  store i32 134517678, i32* %33, align 4
  store i32 0, i32* %14, align 4
  %tmp2_v2.i18.i.i = add i32 %tmp0_v.i.i, -72
  %34 = inttoptr i32 %tmp2_v2.i18.i.i to i32*
  store i32 0, i32* %34, align 8
  %tmp2_v3.i.i.i13 = add i32 %tmp0_v.i.i, -76
  %35 = inttoptr i32 %tmp2_v3.i.i.i13 to i32*
  store i32 1, i32* %35, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -80
  %36 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2, i32* %36, align 16
  %tmp2_v5.i19.i.i = add i32 %tmp0_v.i.i, -84
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @own_strspn569 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack568, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %37 = inttoptr i32 %tmp2_v5.i19.i.i to i32*
  store i32 134517705, i32* %37, align 4
  %arg.i.i.i = load i32, i32* %36, align 16
  %arg2.i.i.i = load i32, i32* %35, align 4
  %arg4.i.i.i = load i32, i32* %34, align 8
  %38 = tail call i32 @socket(i32 %arg.i.i.i, i32 %arg2.i.i.i, i32 %arg4.i.i.i)
  store i32 %38, i32* %14, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @void_function_return141 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack140, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %38, i32* %36, align 16
  store i32 134517722, i32* %37, align 4
  %arg.i.i3.i = load i32, i32* %36, align 16
  %39 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
;-------------------------------
;--------Basic Condition--------
  %.not107.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not107.i.i, label %BB_107, label %next107
next107:
;-------------------------------
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i39.i.i = add i32 %tmp0_v.i.i, -40
  %40 = inttoptr i32 %tmp2_v.i39.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %40, align 8
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @delete_substring49 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack48, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @const_pointer_vs_pointer_to_const88 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack87, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i44.i.i = add i32 %tmp0_v.i.i, -84
  %41 = inttoptr i32 %tmp2_v2.i44.i.i to i32*
  store i32 134517482, i32* %41, align 4
  %tmp4_v.i18.i.b.i = load i1, i1* @segs.0, align 1
  %42 = select i1 %tmp4_v.i18.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @shuffle_array397 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack396, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %tmp2_v5.i25.i.i = add i32 %tmp0_v.i.i, -92
  %44 = inttoptr i32 %tmp2_v5.i25.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %44, align 4
  %sp0.77 = alloca [3 x i8]
;-------------------------------
; Replace: store [3 x i8] c"\01\40\6B", [3 x i8]* %sp0.77
  %sp135 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.135 = load [1 x i8], [1 x i8]* @str.0.135
  %cipher.ptr.360 = alloca [5 x i8]
  store [5 x i8] c"\41\51\3d\3d\00", [5 x i8]* %cipher.ptr.360
  %cipher.360 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.360, i32 0, i32 0
  %plain.ptr.360 = tail call i8* @base64_decode(i8* %cipher.360)
  %spi360 = bitcast i8* %plain.ptr.360 to [1 x i8]*
  %s0.135 = load [1 x i8], [1 x i8]* %spi360
;-------------------------------
  %sp0.135 = bitcast [3 x i8]* %sp135 to [1 x i8]*
  store [1 x i8] %s0.135, [1 x i8]* %sp0.135
  %next0.135 = getelementptr [3 x i8], [3 x i8]* %sp135, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.135 = load [1 x i8], [1 x i8]* @str.1.135
  %cipher.ptr.358 = alloca [5 x i8]
  store [5 x i8] c"\51\41\3d\3d\00", [5 x i8]* %cipher.ptr.358
  %cipher.358 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.358, i32 0, i32 0
  %plain.ptr.358 = tail call i8* @base64_decode(i8* %cipher.358)
  %spi358 = bitcast i8* %plain.ptr.358 to [1 x i8]*
  %s1.135 = load [1 x i8], [1 x i8]* %spi358
;-------------------------------
  %sp1.135 = bitcast i8* %next0.135 to [1 x i8]*
  store [1 x i8] %s1.135, [1 x i8]* %sp1.135
  %next1.135 = getelementptr [3 x i8], [3 x i8]* %sp135, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.135 = load [1 x i8], [1 x i8]* @str.2.135
  %cipher.ptr.359 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.359
  %cipher.359 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.359, i32 0, i32 0
  %plain.ptr.359 = tail call i8* @base64_decode(i8* %cipher.359)
  %spi359 = bitcast i8* %plain.ptr.359 to [1 x i8]*
  %s2.135 = load [1 x i8], [1 x i8]* %spi359
;-------------------------------
  %sp2.135 = bitcast i8* %next1.135 to [1 x i8]*
  store [1 x i8] %s2.135, [1 x i8]* %sp2.135

  %spi135 = load [3 x i8], [3 x i8]* %sp135
  store [3 x i8] %spi135, [3 x i8]* %sp0.77
;-------------------------------
  %sp0.1.77 = bitcast [3 x i8]* %sp0.77 to i24*
  %i0.77 = load i24, i24* %sp0.1.77

  %sp1.77 = alloca [3 x i8]
;-------------------------------
; Replace: store [3 x i8] c"\76\6b\6b", [3 x i8]* %sp1.77
  %sp136 = alloca [3 x i8]
  
;-------------------------------
; Replace: %s0.136 = load [1 x i8], [1 x i8]* @str.0.136
  %cipher.ptr.361 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.361
  %cipher.361 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.361, i32 0, i32 0
  %plain.ptr.361 = tail call i8* @base64_decode(i8* %cipher.361)
  %spi361 = bitcast i8* %plain.ptr.361 to [1 x i8]*
  %s0.136 = load [1 x i8], [1 x i8]* %spi361
;-------------------------------
  %sp0.136 = bitcast [3 x i8]* %sp136 to [1 x i8]*
  store [1 x i8] %s0.136, [1 x i8]* %sp0.136
  %next0.136 = getelementptr [3 x i8], [3 x i8]* %sp136, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.136 = load [1 x i8], [1 x i8]* @str.1.136
  %cipher.ptr.363 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.363
  %cipher.363 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.363, i32 0, i32 0
  %plain.ptr.363 = tail call i8* @base64_decode(i8* %cipher.363)
  %spi363 = bitcast i8* %plain.ptr.363 to [1 x i8]*
  %s1.136 = load [1 x i8], [1 x i8]* %spi363
;-------------------------------
  %sp1.136 = bitcast i8* %next0.136 to [1 x i8]*
  store [1 x i8] %s1.136, [1 x i8]* %sp1.136
  %next1.136 = getelementptr [3 x i8], [3 x i8]* %sp136, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.136 = load [1 x i8], [1 x i8]* @str.2.136
  %cipher.ptr.362 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.362
  %cipher.362 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.362, i32 0, i32 0
  %plain.ptr.362 = tail call i8* @base64_decode(i8* %cipher.362)
  %spi362 = bitcast i8* %plain.ptr.362 to [1 x i8]*
  %s2.136 = load [1 x i8], [1 x i8]* %spi362
;-------------------------------
  %sp2.136 = bitcast i8* %next1.136 to [1 x i8]*
  store [1 x i8] %s2.136, [1 x i8]* %sp2.136

  %spi136 = load [3 x i8], [3 x i8]* %sp136
  store [3 x i8] %spi136, [3 x i8]* %sp1.77
;-------------------------------
  %sp1.1.77 = bitcast [3 x i8]* %sp1.77 to i24*
  %i1.77 = load i24, i24* %sp1.1.77

  %xp77 = xor i24 %i0.77, %i1.77

  %fi.77 = alloca i24
  store i24 %xp77, i24* %fi.77

  %spi77 = ptrtoint i24* %fi.77 to i32
  store i32 %spi77, i32* %44, align 4
;-------------------------------
  %tmp2_v7.i27.i.i = add i32 %tmp0_v.i.i, -96
  %45 = inttoptr i32 %tmp2_v7.i27.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %45, align 16
  %sp0.78 = alloca [15 x i8]
;-------------------------------
; Replace: store [15 x i8] c"\02\0D\33\31\05\50\00\5E\54\46\57\12\0C\05\49", [15 x i8]* %sp0.78
  %sp137 = alloca [15 x i8]
  
;-------------------------------
; Replace: %s0.137 = load [1 x i8], [1 x i8]* @str.0.137
  %cipher.ptr.369 = alloca [5 x i8]
  store [5 x i8] c"\41\67\3d\3d\00", [5 x i8]* %cipher.ptr.369
  %cipher.369 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.369, i32 0, i32 0
  %plain.ptr.369 = tail call i8* @base64_decode(i8* %cipher.369)
  %spi369 = bitcast i8* %plain.ptr.369 to [1 x i8]*
  %s0.137 = load [1 x i8], [1 x i8]* %spi369
;-------------------------------
  %sp0.137 = bitcast [15 x i8]* %sp137 to [1 x i8]*
  store [1 x i8] %s0.137, [1 x i8]* %sp0.137
  %next0.137 = getelementptr [15 x i8], [15 x i8]* %sp137, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.137 = load [2 x i8], [2 x i8]* @str.1.137
  %cipher.ptr.365 = alloca [5 x i8]
  store [5 x i8] c"\44\54\4d\3d\00", [5 x i8]* %cipher.ptr.365
  %cipher.365 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.365, i32 0, i32 0
  %plain.ptr.365 = tail call i8* @base64_decode(i8* %cipher.365)
  %spi365 = bitcast i8* %plain.ptr.365 to [2 x i8]*
  %s1.137 = load [2 x i8], [2 x i8]* %spi365
;-------------------------------
  %sp1.137 = bitcast i8* %next0.137 to [2 x i8]*
  store [2 x i8] %s1.137, [2 x i8]* %sp1.137
  %next1.137 = getelementptr [15 x i8], [15 x i8]* %sp137, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.137 = load [2 x i8], [2 x i8]* @str.2.137
  %cipher.ptr.364 = alloca [5 x i8]
  store [5 x i8] c"\4d\51\55\3d\00", [5 x i8]* %cipher.ptr.364
  %cipher.364 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.364, i32 0, i32 0
  %plain.ptr.364 = tail call i8* @base64_decode(i8* %cipher.364)
  %spi364 = bitcast i8* %plain.ptr.364 to [2 x i8]*
  %s2.137 = load [2 x i8], [2 x i8]* %spi364
;-------------------------------
  %sp2.137 = bitcast i8* %next1.137 to [2 x i8]*
  store [2 x i8] %s2.137, [2 x i8]* %sp2.137
  %next2.137 = getelementptr [15 x i8], [15 x i8]* %sp137, i32 0, i32 5
  
;-------------------------------
; Replace: %s3.137 = load [2 x i8], [2 x i8]* @str.3.137
  %cipher.ptr.367 = alloca [5 x i8]
  store [5 x i8] c"\55\41\41\3d\00", [5 x i8]* %cipher.ptr.367
  %cipher.367 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.367, i32 0, i32 0
  %plain.ptr.367 = tail call i8* @base64_decode(i8* %cipher.367)
  %spi367 = bitcast i8* %plain.ptr.367 to [2 x i8]*
  %s3.137 = load [2 x i8], [2 x i8]* %spi367
;-------------------------------
  %sp3.137 = bitcast i8* %next2.137 to [2 x i8]*
  store [2 x i8] %s3.137, [2 x i8]* %sp3.137
  %next3.137 = getelementptr [15 x i8], [15 x i8]* %sp137, i32 0, i32 7
  
;-------------------------------
; Replace: %s4.137 = load [2 x i8], [2 x i8]* @str.4.137
  %cipher.ptr.366 = alloca [5 x i8]
  store [5 x i8] c"\58\6c\51\3d\00", [5 x i8]* %cipher.ptr.366
  %cipher.366 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.366, i32 0, i32 0
  %plain.ptr.366 = tail call i8* @base64_decode(i8* %cipher.366)
  %spi366 = bitcast i8* %plain.ptr.366 to [2 x i8]*
  %s4.137 = load [2 x i8], [2 x i8]* %spi366
;-------------------------------
  %sp4.137 = bitcast i8* %next3.137 to [2 x i8]*
  store [2 x i8] %s4.137, [2 x i8]* %sp4.137
  %next4.137 = getelementptr [15 x i8], [15 x i8]* %sp137, i32 0, i32 9
  
;-------------------------------
; Replace: %s5.137 = load [2 x i8], [2 x i8]* @str.5.137
  %cipher.ptr.370 = alloca [5 x i8]
  store [5 x i8] c"\52\6c\63\3d\00", [5 x i8]* %cipher.ptr.370
  %cipher.370 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.370, i32 0, i32 0
  %plain.ptr.370 = tail call i8* @base64_decode(i8* %cipher.370)
  %spi370 = bitcast i8* %plain.ptr.370 to [2 x i8]*
  %s5.137 = load [2 x i8], [2 x i8]* %spi370
;-------------------------------
  %sp5.137 = bitcast i8* %next4.137 to [2 x i8]*
  store [2 x i8] %s5.137, [2 x i8]* %sp5.137
  %next5.137 = getelementptr [15 x i8], [15 x i8]* %sp137, i32 0, i32 11
  
;-------------------------------
; Replace: %s6.137 = load [2 x i8], [2 x i8]* @str.6.137
  %cipher.ptr.368 = alloca [5 x i8]
  store [5 x i8] c"\45\67\77\3d\00", [5 x i8]* %cipher.ptr.368
  %cipher.368 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.368, i32 0, i32 0
  %plain.ptr.368 = tail call i8* @base64_decode(i8* %cipher.368)
  %spi368 = bitcast i8* %plain.ptr.368 to [2 x i8]*
  %s6.137 = load [2 x i8], [2 x i8]* %spi368
;-------------------------------
  %sp6.137 = bitcast i8* %next5.137 to [2 x i8]*
  store [2 x i8] %s6.137, [2 x i8]* %sp6.137
  %next6.137 = getelementptr [15 x i8], [15 x i8]* %sp137, i32 0, i32 13
  
;-------------------------------
; Replace: %s7.137 = load [2 x i8], [2 x i8]* @str.7.137
  %cipher.ptr.371 = alloca [5 x i8]
  store [5 x i8] c"\42\55\6b\3d\00", [5 x i8]* %cipher.ptr.371
  %cipher.371 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.371, i32 0, i32 0
  %plain.ptr.371 = tail call i8* @base64_decode(i8* %cipher.371)
  %spi371 = bitcast i8* %plain.ptr.371 to [2 x i8]*
  %s7.137 = load [2 x i8], [2 x i8]* %spi371
;-------------------------------
  %sp7.137 = bitcast i8* %next6.137 to [2 x i8]*
  store [2 x i8] %s7.137, [2 x i8]* %sp7.137

  %spi137 = load [15 x i8], [15 x i8]* %sp137
  store [15 x i8] %spi137, [15 x i8]* %sp0.78
;-------------------------------
  %sp0.1.78 = bitcast [15 x i8]* %sp0.78 to i120*
  %i0.78 = load i120, i120* %sp0.1.78

  %sp1.78 = alloca [15 x i8]
;-------------------------------
; Replace: store [15 x i8] c"\76\68\4b\45\5a\36\69\32\31\75\79\66\74\71\49", [15 x i8]* %sp1.78
  %sp138 = alloca [15 x i8]
  
;-------------------------------
; Replace: %s0.138 = load [1 x i8], [1 x i8]* @str.0.138
  %cipher.ptr.372 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.372
  %cipher.372 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.372, i32 0, i32 0
  %plain.ptr.372 = tail call i8* @base64_decode(i8* %cipher.372)
  %spi372 = bitcast i8* %plain.ptr.372 to [1 x i8]*
  %s0.138 = load [1 x i8], [1 x i8]* %spi372
;-------------------------------
  %sp0.138 = bitcast [15 x i8]* %sp138 to [1 x i8]*
  store [1 x i8] %s0.138, [1 x i8]* %sp0.138
  %next0.138 = getelementptr [15 x i8], [15 x i8]* %sp138, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.138 = load [2 x i8], [2 x i8]* @str.1.138
  %cipher.ptr.373 = alloca [5 x i8]
  store [5 x i8] c"\61\45\73\3d\00", [5 x i8]* %cipher.ptr.373
  %cipher.373 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.373, i32 0, i32 0
  %plain.ptr.373 = tail call i8* @base64_decode(i8* %cipher.373)
  %spi373 = bitcast i8* %plain.ptr.373 to [2 x i8]*
  %s1.138 = load [2 x i8], [2 x i8]* %spi373
;-------------------------------
  %sp1.138 = bitcast i8* %next0.138 to [2 x i8]*
  store [2 x i8] %s1.138, [2 x i8]* %sp1.138
  %next1.138 = getelementptr [15 x i8], [15 x i8]* %sp138, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.138 = load [2 x i8], [2 x i8]* @str.2.138
  %cipher.ptr.375 = alloca [5 x i8]
  store [5 x i8] c"\52\56\6f\3d\00", [5 x i8]* %cipher.ptr.375
  %cipher.375 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.375, i32 0, i32 0
  %plain.ptr.375 = tail call i8* @base64_decode(i8* %cipher.375)
  %spi375 = bitcast i8* %plain.ptr.375 to [2 x i8]*
  %s2.138 = load [2 x i8], [2 x i8]* %spi375
;-------------------------------
  %sp2.138 = bitcast i8* %next1.138 to [2 x i8]*
  store [2 x i8] %s2.138, [2 x i8]* %sp2.138
  %next2.138 = getelementptr [15 x i8], [15 x i8]* %sp138, i32 0, i32 5
  
;-------------------------------
; Replace: %s3.138 = load [2 x i8], [2 x i8]* @str.3.138
  %cipher.ptr.376 = alloca [5 x i8]
  store [5 x i8] c"\4e\6d\6b\3d\00", [5 x i8]* %cipher.ptr.376
  %cipher.376 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.376, i32 0, i32 0
  %plain.ptr.376 = tail call i8* @base64_decode(i8* %cipher.376)
  %spi376 = bitcast i8* %plain.ptr.376 to [2 x i8]*
  %s3.138 = load [2 x i8], [2 x i8]* %spi376
;-------------------------------
  %sp3.138 = bitcast i8* %next2.138 to [2 x i8]*
  store [2 x i8] %s3.138, [2 x i8]* %sp3.138
  %next3.138 = getelementptr [15 x i8], [15 x i8]* %sp138, i32 0, i32 7
  
;-------------------------------
; Replace: %s4.138 = load [2 x i8], [2 x i8]* @str.4.138
  %cipher.ptr.379 = alloca [5 x i8]
  store [5 x i8] c"\4d\6a\45\3d\00", [5 x i8]* %cipher.ptr.379
  %cipher.379 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.379, i32 0, i32 0
  %plain.ptr.379 = tail call i8* @base64_decode(i8* %cipher.379)
  %spi379 = bitcast i8* %plain.ptr.379 to [2 x i8]*
  %s4.138 = load [2 x i8], [2 x i8]* %spi379
;-------------------------------
  %sp4.138 = bitcast i8* %next3.138 to [2 x i8]*
  store [2 x i8] %s4.138, [2 x i8]* %sp4.138
  %next4.138 = getelementptr [15 x i8], [15 x i8]* %sp138, i32 0, i32 9
  
;-------------------------------
; Replace: %s5.138 = load [2 x i8], [2 x i8]* @str.5.138
  %cipher.ptr.377 = alloca [5 x i8]
  store [5 x i8] c"\64\58\6b\3d\00", [5 x i8]* %cipher.ptr.377
  %cipher.377 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.377, i32 0, i32 0
  %plain.ptr.377 = tail call i8* @base64_decode(i8* %cipher.377)
  %spi377 = bitcast i8* %plain.ptr.377 to [2 x i8]*
  %s5.138 = load [2 x i8], [2 x i8]* %spi377
;-------------------------------
  %sp5.138 = bitcast i8* %next4.138 to [2 x i8]*
  store [2 x i8] %s5.138, [2 x i8]* %sp5.138
  %next5.138 = getelementptr [15 x i8], [15 x i8]* %sp138, i32 0, i32 11
  
;-------------------------------
; Replace: %s6.138 = load [2 x i8], [2 x i8]* @str.6.138
  %cipher.ptr.378 = alloca [5 x i8]
  store [5 x i8] c"\5a\6e\51\3d\00", [5 x i8]* %cipher.ptr.378
  %cipher.378 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.378, i32 0, i32 0
  %plain.ptr.378 = tail call i8* @base64_decode(i8* %cipher.378)
  %spi378 = bitcast i8* %plain.ptr.378 to [2 x i8]*
  %s6.138 = load [2 x i8], [2 x i8]* %spi378
;-------------------------------
  %sp6.138 = bitcast i8* %next5.138 to [2 x i8]*
  store [2 x i8] %s6.138, [2 x i8]* %sp6.138
  %next6.138 = getelementptr [15 x i8], [15 x i8]* %sp138, i32 0, i32 13
  
;-------------------------------
; Replace: %s7.138 = load [2 x i8], [2 x i8]* @str.7.138
  %cipher.ptr.374 = alloca [5 x i8]
  store [5 x i8] c"\63\55\6b\3d\00", [5 x i8]* %cipher.ptr.374
  %cipher.374 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.374, i32 0, i32 0
  %plain.ptr.374 = tail call i8* @base64_decode(i8* %cipher.374)
  %spi374 = bitcast i8* %plain.ptr.374 to [2 x i8]*
  %s7.138 = load [2 x i8], [2 x i8]* %spi374
;-------------------------------
  %sp7.138 = bitcast i8* %next6.138 to [2 x i8]*
  store [2 x i8] %s7.138, [2 x i8]* %sp7.138

  %spi138 = load [15 x i8], [15 x i8]* %sp138
  store [15 x i8] %spi138, [15 x i8]* %sp1.78
;-------------------------------
  %sp1.1.78 = bitcast [15 x i8]* %sp1.78 to i120*
  %i1.78 = load i120, i120* %sp1.1.78

  %xp78 = xor i120 %i0.78, %i1.78

  %fi.78 = alloca i120
  store i120 %xp78, i120* %fi.78

  %spi78 = ptrtoint i120* %fi.78 to i32
  store i32 %spi78, i32* %45, align 16
;-------------------------------
  %tmp2_v8.i28.i.i = add i32 %tmp0_v.i.i, -100
  %46 = inttoptr i32 %tmp2_v8.i28.i.i to i32*
  store i32 134517521, i32* %46, align 4
  %arg.i.i.i14 = load i32, i32* %45, align 16
  %arg2.i.i.i15 = load i32, i32* %44, align 4
  %47 = tail call i32 @fopen(i32 %arg.i.i.i14, i32 %arg2.i.i.i15)
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @swap_cols693 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack692, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -76
  %48 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %47, i32* %48, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i.i, -72
  %49 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 1818304585, i32* %49, align 8
  %tmp2_v1.i3.i.i = add i32 %tmp0_v.i.i, -68
  %50 = inttoptr i32 %tmp2_v1.i3.i.i to i32*
  store i32 1701995892, i32* %50, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -64
  %51 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 1752440932, i32* %51, align 16
  %tmp2_v3.i.i.i16 = add i32 %tmp0_v.i.i, -60
  %52 = inttoptr i32 %tmp2_v3.i.i.i16 to i32*
  store i32 1768300645, i32* %52, align 4
  %tmp2_v4.i.i.i17 = add i32 %tmp0_v.i.i, -56
  %53 = inttoptr i32 %tmp2_v4.i.i.i17 to i32*
  store i32 2188652, i32* %53, align 8
  %54 = load i32, i32* %48, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @find_array_length464 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack463, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %54, i32* %41, align 4
  %tmp2_v7.i.i.i18 = add i32 %tmp0_v.i.i, -88
  %55 = inttoptr i32 %tmp2_v7.i.i.i18 to i32*
  store i32 20, i32* %55, align 8
  store i32 1, i32* %44, align 4
;-------------------------------
;--------Basic Condition--------
  %.not95.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not95.i.i, label %BB_95, label %next95
next95:
;-------------------------------
  store i32 %tmp2_v.i2.i.i, i32* %45, align 16
  store i32 134517622, i32* %46, align 4
  %arg.i.i4.i = load i32, i32* %45, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @min_occur_char395 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack394, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg2.i.i5.i = load i32, i32* %44, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @check_if_array_sorted79 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack78, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg4.i.i.i19 = load i32, i32* %55, align 8
;-------------------------------
;--------Basic Condition--------
  %.not109.i.i = icmp eq i32 0 , 0 ;always true
  br i1 %.not109.i.i, label %BB_109, label %next109
next109:
;-------------------------------
  %arg6.i.i.i = load i32, i32* %41, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @ifdef_ifndef316 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack315, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %56 = tail call i32 @fwrite(i32 %arg.i.i4.i, i32 %arg2.i.i5.i, i32 %arg4.i.i.i19, i32 %arg6.i.i.i)
  %57 = load i32, i32* %48, align 4
  store i32 %57, i32* %45, align 16
  store i32 134517636, i32* %46, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @memset912 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack911, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg.i.i6.i = load i32, i32* %45, align 16
  %58 = tail call i32 @fclose(i32 %arg.i.i6.i)
  br label %.exit

.exit:                                            ; preds = %BB_804944C.i, %BB_8049472.i, %BB_8049426.i, %BB_8049453.i
  ret void
BB_95:
;-------------------------------
; Replace: %cast95= getelementptr [11 x i8], [11 x i8]* @.str94, i64 0, i64 0
  %spi112 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.112 = load [1 x i8], [1 x i8]* @str.0.112
  %cipher.ptr.234 = alloca [5 x i8]
  store [5 x i8] c"\5a\41\3d\3d\00", [5 x i8]* %cipher.ptr.234
  %cipher.234 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.234, i32 0, i32 0
  %plain.ptr.234 = tail call i8* @base64_decode(i8* %cipher.234)
  %spi234 = bitcast i8* %plain.ptr.234 to [1 x i8]*
  %s0.112 = load [1 x i8], [1 x i8]* %spi234
;-------------------------------
  %sp0.112 = bitcast [11 x i8]* %spi112 to [1 x i8]*
  store [1 x i8] %s0.112, [1 x i8]* %sp0.112
  %next0.112 = getelementptr [11 x i8], [11 x i8]* %spi112, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.112 = load [1 x i8], [1 x i8]* @str.1.112
  %cipher.ptr.229 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.229
  %cipher.229 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.229, i32 0, i32 0
  %plain.ptr.229 = tail call i8* @base64_decode(i8* %cipher.229)
  %spi229 = bitcast i8* %plain.ptr.229 to [1 x i8]*
  %s1.112 = load [1 x i8], [1 x i8]* %spi229
;-------------------------------
  %sp1.112 = bitcast i8* %next0.112 to [1 x i8]*
  store [1 x i8] %s1.112, [1 x i8]* %sp1.112
  %next1.112 = getelementptr [11 x i8], [11 x i8]* %spi112, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.112 = load [2 x i8], [2 x i8]* @str.2.112
  %cipher.ptr.235 = alloca [5 x i8]
  store [5 x i8] c"\63\6d\63\3d\00", [5 x i8]* %cipher.ptr.235
  %cipher.235 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.235, i32 0, i32 0
  %plain.ptr.235 = tail call i8* @base64_decode(i8* %cipher.235)
  %spi235 = bitcast i8* %plain.ptr.235 to [2 x i8]*
  %s2.112 = load [2 x i8], [2 x i8]* %spi235
;-------------------------------
  %sp2.112 = bitcast i8* %next1.112 to [2 x i8]*
  store [2 x i8] %s2.112, [2 x i8]* %sp2.112
  %next2.112 = getelementptr [11 x i8], [11 x i8]* %spi112, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.112 = load [1 x i8], [1 x i8]* @str.3.112
  %cipher.ptr.233 = alloca [5 x i8]
  store [5 x i8] c"\59\67\3d\3d\00", [5 x i8]* %cipher.ptr.233
  %cipher.233 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.233, i32 0, i32 0
  %plain.ptr.233 = tail call i8* @base64_decode(i8* %cipher.233)
  %spi233 = bitcast i8* %plain.ptr.233 to [1 x i8]*
  %s3.112 = load [1 x i8], [1 x i8]* %spi233
;-------------------------------
  %sp3.112 = bitcast i8* %next2.112 to [1 x i8]*
  store [1 x i8] %s3.112, [1 x i8]* %sp3.112
  %next3.112 = getelementptr [11 x i8], [11 x i8]* %spi112, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.112 = load [1 x i8], [1 x i8]* @str.4.112
  %cipher.ptr.232 = alloca [5 x i8]
  store [5 x i8] c"\61\67\3d\3d\00", [5 x i8]* %cipher.ptr.232
  %cipher.232 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.232, i32 0, i32 0
  %plain.ptr.232 = tail call i8* @base64_decode(i8* %cipher.232)
  %spi232 = bitcast i8* %plain.ptr.232 to [1 x i8]*
  %s4.112 = load [1 x i8], [1 x i8]* %spi232
;-------------------------------
  %sp4.112 = bitcast i8* %next3.112 to [1 x i8]*
  store [1 x i8] %s4.112, [1 x i8]* %sp4.112
  %next4.112 = getelementptr [11 x i8], [11 x i8]* %spi112, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.112 = load [2 x i8], [2 x i8]* @str.5.112
  %cipher.ptr.231 = alloca [5 x i8]
  store [5 x i8] c"\65\6d\55\3d\00", [5 x i8]* %cipher.ptr.231
  %cipher.231 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.231, i32 0, i32 0
  %plain.ptr.231 = tail call i8* @base64_decode(i8* %cipher.231)
  %spi231 = bitcast i8* %plain.ptr.231 to [2 x i8]*
  %s5.112 = load [2 x i8], [2 x i8]* %spi231
;-------------------------------
  %sp5.112 = bitcast i8* %next4.112 to [2 x i8]*
  store [2 x i8] %s5.112, [2 x i8]* %sp5.112
  %next5.112 = getelementptr [11 x i8], [11 x i8]* %spi112, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.112 = load [1 x i8], [1 x i8]* @str.6.112
  %cipher.ptr.236 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.236
  %cipher.236 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.236, i32 0, i32 0
  %plain.ptr.236 = tail call i8* @base64_decode(i8* %cipher.236)
  %spi236 = bitcast i8* %plain.ptr.236 to [1 x i8]*
  %s6.112 = load [1 x i8], [1 x i8]* %spi236
;-------------------------------
  %sp6.112 = bitcast i8* %next5.112 to [1 x i8]*
  store [1 x i8] %s6.112, [1 x i8]* %sp6.112
  %next6.112 = getelementptr [11 x i8], [11 x i8]* %spi112, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.112 = load [2 x i8], [2 x i8]* @str.7.112
  %cipher.ptr.230 = alloca [5 x i8]
  store [5 x i8] c"\59\51\41\3d\00", [5 x i8]* %cipher.ptr.230
  %cipher.230 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.230, i32 0, i32 0
  %plain.ptr.230 = tail call i8* @base64_decode(i8* %cipher.230)
  %spi230 = bitcast i8* %plain.ptr.230 to [2 x i8]*
  %s7.112 = load [2 x i8], [2 x i8]* %spi230
;-------------------------------
  %sp7.112 = bitcast i8* %next6.112 to [2 x i8]*
  store [2 x i8] %s7.112, [2 x i8]* %sp7.112
  %cast95= getelementptr [11 x i8], [11 x i8]* %spi112, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast95)
  br label %next95
BB_97:
;-------------------------------
; Replace: %cast97= getelementptr [10 x i8], [10 x i8]* @.str96, i64 0, i64 0
  %spi113 = alloca [10 x i8]
  
;-------------------------------
; Replace: %s0.113 = load [1 x i8], [1 x i8]* @str.0.113
  %cipher.ptr.238 = alloca [5 x i8]
  store [5 x i8] c"\52\41\3d\3d\00", [5 x i8]* %cipher.ptr.238
  %cipher.238 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.238, i32 0, i32 0
  %plain.ptr.238 = tail call i8* @base64_decode(i8* %cipher.238)
  %spi238 = bitcast i8* %plain.ptr.238 to [1 x i8]*
  %s0.113 = load [1 x i8], [1 x i8]* %spi238
;-------------------------------
  %sp0.113 = bitcast [10 x i8]* %spi113 to [1 x i8]*
  store [1 x i8] %s0.113, [1 x i8]* %sp0.113
  %next0.113 = getelementptr [10 x i8], [10 x i8]* %spi113, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.113 = load [1 x i8], [1 x i8]* @str.1.113
  %cipher.ptr.244 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.244
  %cipher.244 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.244, i32 0, i32 0
  %plain.ptr.244 = tail call i8* @base64_decode(i8* %cipher.244)
  %spi244 = bitcast i8* %plain.ptr.244 to [1 x i8]*
  %s1.113 = load [1 x i8], [1 x i8]* %spi244
;-------------------------------
  %sp1.113 = bitcast i8* %next0.113 to [1 x i8]*
  store [1 x i8] %s1.113, [1 x i8]* %sp1.113
  %next1.113 = getelementptr [10 x i8], [10 x i8]* %spi113, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.113 = load [1 x i8], [1 x i8]* @str.2.113
  %cipher.ptr.240 = alloca [5 x i8]
  store [5 x i8] c"\64\51\3d\3d\00", [5 x i8]* %cipher.ptr.240
  %cipher.240 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.240, i32 0, i32 0
  %plain.ptr.240 = tail call i8* @base64_decode(i8* %cipher.240)
  %spi240 = bitcast i8* %plain.ptr.240 to [1 x i8]*
  %s2.113 = load [1 x i8], [1 x i8]* %spi240
;-------------------------------
  %sp2.113 = bitcast i8* %next1.113 to [1 x i8]*
  store [1 x i8] %s2.113, [1 x i8]* %sp2.113
  %next2.113 = getelementptr [10 x i8], [10 x i8]* %spi113, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.113 = load [2 x i8], [2 x i8]* @str.3.113
  %cipher.ptr.239 = alloca [5 x i8]
  store [5 x i8] c"\65\47\6b\3d\00", [5 x i8]* %cipher.ptr.239
  %cipher.239 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.239, i32 0, i32 0
  %plain.ptr.239 = tail call i8* @base64_decode(i8* %cipher.239)
  %spi239 = bitcast i8* %plain.ptr.239 to [2 x i8]*
  %s3.113 = load [2 x i8], [2 x i8]* %spi239
;-------------------------------
  %sp3.113 = bitcast i8* %next2.113 to [2 x i8]*
  store [2 x i8] %s3.113, [2 x i8]* %sp3.113
  %next3.113 = getelementptr [10 x i8], [10 x i8]* %spi113, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.113 = load [1 x i8], [1 x i8]* @str.4.113
  %cipher.ptr.237 = alloca [5 x i8]
  store [5 x i8] c"\77\77\3d\3d\00", [5 x i8]* %cipher.ptr.237
  %cipher.237 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.237, i32 0, i32 0
  %plain.ptr.237 = tail call i8* @base64_decode(i8* %cipher.237)
  %spi237 = bitcast i8* %plain.ptr.237 to [1 x i8]*
  %s4.113 = load [1 x i8], [1 x i8]* %spi237
;-------------------------------
  %sp4.113 = bitcast i8* %next3.113 to [1 x i8]*
  store [1 x i8] %s4.113, [1 x i8]* %sp4.113
  %next4.113 = getelementptr [10 x i8], [10 x i8]* %spi113, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.113 = load [1 x i8], [1 x i8]* @str.5.113
  %cipher.ptr.243 = alloca [5 x i8]
  store [5 x i8] c"\71\41\3d\3d\00", [5 x i8]* %cipher.ptr.243
  %cipher.243 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.243, i32 0, i32 0
  %plain.ptr.243 = tail call i8* @base64_decode(i8* %cipher.243)
  %spi243 = bitcast i8* %plain.ptr.243 to [1 x i8]*
  %s5.113 = load [1 x i8], [1 x i8]* %spi243
;-------------------------------
  %sp5.113 = bitcast i8* %next4.113 to [1 x i8]*
  store [1 x i8] %s5.113, [1 x i8]* %sp5.113
  %next5.113 = getelementptr [10 x i8], [10 x i8]* %spi113, i32 0, i32 7
  
;-------------------------------
; Replace: %s6.113 = load [1 x i8], [1 x i8]* @str.6.113
  %cipher.ptr.242 = alloca [5 x i8]
  store [5 x i8] c"\62\51\3d\3d\00", [5 x i8]* %cipher.ptr.242
  %cipher.242 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.242, i32 0, i32 0
  %plain.ptr.242 = tail call i8* @base64_decode(i8* %cipher.242)
  %spi242 = bitcast i8* %plain.ptr.242 to [1 x i8]*
  %s6.113 = load [1 x i8], [1 x i8]* %spi242
;-------------------------------
  %sp6.113 = bitcast i8* %next5.113 to [1 x i8]*
  store [1 x i8] %s6.113, [1 x i8]* %sp6.113
  %next6.113 = getelementptr [10 x i8], [10 x i8]* %spi113, i32 0, i32 8
  
;-------------------------------
; Replace: %s7.113 = load [2 x i8], [2 x i8]* @str.7.113
  %cipher.ptr.241 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\41\3d\00", [5 x i8]* %cipher.ptr.241
  %cipher.241 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.241, i32 0, i32 0
  %plain.ptr.241 = tail call i8* @base64_decode(i8* %cipher.241)
  %spi241 = bitcast i8* %plain.ptr.241 to [2 x i8]*
  %s7.113 = load [2 x i8], [2 x i8]* %spi241
;-------------------------------
  %sp7.113 = bitcast i8* %next6.113 to [2 x i8]*
  store [2 x i8] %s7.113, [2 x i8]* %sp7.113
  %cast97= getelementptr [10 x i8], [10 x i8]* %spi113, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast97)
  br label %next97
BB_99:
;-------------------------------
; Replace: %cast99= getelementptr [10 x i8], [10 x i8]* @.str98, i64 0, i64 0
  %spi114 = alloca [10 x i8]
  
;-------------------------------
; Replace: %s0.114 = load [1 x i8], [1 x i8]* @str.0.114
  %cipher.ptr.247 = alloca [5 x i8]
  store [5 x i8] c"\64\41\3d\3d\00", [5 x i8]* %cipher.ptr.247
  %cipher.247 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.247, i32 0, i32 0
  %plain.ptr.247 = tail call i8* @base64_decode(i8* %cipher.247)
  %spi247 = bitcast i8* %plain.ptr.247 to [1 x i8]*
  %s0.114 = load [1 x i8], [1 x i8]* %spi247
;-------------------------------
  %sp0.114 = bitcast [10 x i8]* %spi114 to [1 x i8]*
  store [1 x i8] %s0.114, [1 x i8]* %sp0.114
  %next0.114 = getelementptr [10 x i8], [10 x i8]* %spi114, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.114 = load [1 x i8], [1 x i8]* @str.1.114
  %cipher.ptr.245 = alloca [5 x i8]
  store [5 x i8] c"\63\67\3d\3d\00", [5 x i8]* %cipher.ptr.245
  %cipher.245 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.245, i32 0, i32 0
  %plain.ptr.245 = tail call i8* @base64_decode(i8* %cipher.245)
  %spi245 = bitcast i8* %plain.ptr.245 to [1 x i8]*
  %s1.114 = load [1 x i8], [1 x i8]* %spi245
;-------------------------------
  %sp1.114 = bitcast i8* %next0.114 to [1 x i8]*
  store [1 x i8] %s1.114, [1 x i8]* %sp1.114
  %next1.114 = getelementptr [10 x i8], [10 x i8]* %spi114, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.114 = load [1 x i8], [1 x i8]* @str.2.114
  %cipher.ptr.249 = alloca [5 x i8]
  store [5 x i8] c"\62\77\3d\3d\00", [5 x i8]* %cipher.ptr.249
  %cipher.249 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.249, i32 0, i32 0
  %plain.ptr.249 = tail call i8* @base64_decode(i8* %cipher.249)
  %spi249 = bitcast i8* %plain.ptr.249 to [1 x i8]*
  %s2.114 = load [1 x i8], [1 x i8]* %spi249
;-------------------------------
  %sp2.114 = bitcast i8* %next1.114 to [1 x i8]*
  store [1 x i8] %s2.114, [1 x i8]* %sp2.114
  %next2.114 = getelementptr [10 x i8], [10 x i8]* %spi114, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.114 = load [2 x i8], [2 x i8]* @str.3.114
  %cipher.ptr.251 = alloca [5 x i8]
  store [5 x i8] c"\61\58\4d\3d\00", [5 x i8]* %cipher.ptr.251
  %cipher.251 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.251, i32 0, i32 0
  %plain.ptr.251 = tail call i8* @base64_decode(i8* %cipher.251)
  %spi251 = bitcast i8* %plain.ptr.251 to [2 x i8]*
  %s3.114 = load [2 x i8], [2 x i8]* %spi251
;-------------------------------
  %sp3.114 = bitcast i8* %next2.114 to [2 x i8]*
  store [2 x i8] %s3.114, [2 x i8]* %sp3.114
  %next3.114 = getelementptr [10 x i8], [10 x i8]* %spi114, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.114 = load [1 x i8], [1 x i8]* @str.4.114
  %cipher.ptr.246 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.246
  %cipher.246 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.246, i32 0, i32 0
  %plain.ptr.246 = tail call i8* @base64_decode(i8* %cipher.246)
  %spi246 = bitcast i8* %plain.ptr.246 to [1 x i8]*
  %s4.114 = load [1 x i8], [1 x i8]* %spi246
;-------------------------------
  %sp4.114 = bitcast i8* %next3.114 to [1 x i8]*
  store [1 x i8] %s4.114, [1 x i8]* %sp4.114
  %next4.114 = getelementptr [10 x i8], [10 x i8]* %spi114, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.114 = load [1 x i8], [1 x i8]* @str.5.114
  %cipher.ptr.250 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.250
  %cipher.250 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.250, i32 0, i32 0
  %plain.ptr.250 = tail call i8* @base64_decode(i8* %cipher.250)
  %spi250 = bitcast i8* %plain.ptr.250 to [1 x i8]*
  %s5.114 = load [1 x i8], [1 x i8]* %spi250
;-------------------------------
  %sp5.114 = bitcast i8* %next4.114 to [1 x i8]*
  store [1 x i8] %s5.114, [1 x i8]* %sp5.114
  %next5.114 = getelementptr [10 x i8], [10 x i8]* %spi114, i32 0, i32 7
  
;-------------------------------
; Replace: %s6.114 = load [1 x i8], [1 x i8]* @str.6.114
  %cipher.ptr.248 = alloca [5 x i8]
  store [5 x i8] c"\62\51\3d\3d\00", [5 x i8]* %cipher.ptr.248
  %cipher.248 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.248, i32 0, i32 0
  %plain.ptr.248 = tail call i8* @base64_decode(i8* %cipher.248)
  %spi248 = bitcast i8* %plain.ptr.248 to [1 x i8]*
  %s6.114 = load [1 x i8], [1 x i8]* %spi248
;-------------------------------
  %sp6.114 = bitcast i8* %next5.114 to [1 x i8]*
  store [1 x i8] %s6.114, [1 x i8]* %sp6.114
  %next6.114 = getelementptr [10 x i8], [10 x i8]* %spi114, i32 0, i32 8
  
;-------------------------------
; Replace: %s7.114 = load [2 x i8], [2 x i8]* @str.7.114
  %cipher.ptr.252 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\41\3d\00", [5 x i8]* %cipher.ptr.252
  %cipher.252 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.252, i32 0, i32 0
  %plain.ptr.252 = tail call i8* @base64_decode(i8* %cipher.252)
  %spi252 = bitcast i8* %plain.ptr.252 to [2 x i8]*
  %s7.114 = load [2 x i8], [2 x i8]* %spi252
;-------------------------------
  %sp7.114 = bitcast i8* %next6.114 to [2 x i8]*
  store [2 x i8] %s7.114, [2 x i8]* %sp7.114
  %cast99= getelementptr [10 x i8], [10 x i8]* %spi114, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast99)
  br label %next99
BB_101:
;-------------------------------
; Replace: %cast101= getelementptr [8 x i8], [8 x i8]* @.str100, i64 0, i64 0
  %spi115 = alloca [8 x i8]
  
;-------------------------------
; Replace: %s0.115 = load [1 x i8], [1 x i8]* @str.0.115
  %cipher.ptr.256 = alloca [5 x i8]
  store [5 x i8] c"\55\41\3d\3d\00", [5 x i8]* %cipher.ptr.256
  %cipher.256 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.256, i32 0, i32 0
  %plain.ptr.256 = tail call i8* @base64_decode(i8* %cipher.256)
  %spi256 = bitcast i8* %plain.ptr.256 to [1 x i8]*
  %s0.115 = load [1 x i8], [1 x i8]* %spi256
;-------------------------------
  %sp0.115 = bitcast [8 x i8]* %spi115 to [1 x i8]*
  store [1 x i8] %s0.115, [1 x i8]* %sp0.115
  %next0.115 = getelementptr [8 x i8], [8 x i8]* %spi115, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.115 = load [1 x i8], [1 x i8]* @str.1.115
  %cipher.ptr.253 = alloca [5 x i8]
  store [5 x i8] c"\63\67\3d\3d\00", [5 x i8]* %cipher.ptr.253
  %cipher.253 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.253, i32 0, i32 0
  %plain.ptr.253 = tail call i8* @base64_decode(i8* %cipher.253)
  %spi253 = bitcast i8* %plain.ptr.253 to [1 x i8]*
  %s1.115 = load [1 x i8], [1 x i8]* %spi253
;-------------------------------
  %sp1.115 = bitcast i8* %next0.115 to [1 x i8]*
  store [1 x i8] %s1.115, [1 x i8]* %sp1.115
  %next1.115 = getelementptr [8 x i8], [8 x i8]* %spi115, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.115 = load [1 x i8], [1 x i8]* @str.2.115
  %cipher.ptr.255 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.255
  %cipher.255 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.255, i32 0, i32 0
  %plain.ptr.255 = tail call i8* @base64_decode(i8* %cipher.255)
  %spi255 = bitcast i8* %plain.ptr.255 to [1 x i8]*
  %s2.115 = load [1 x i8], [1 x i8]* %spi255
;-------------------------------
  %sp2.115 = bitcast i8* %next1.115 to [1 x i8]*
  store [1 x i8] %s2.115, [1 x i8]* %sp2.115
  %next2.115 = getelementptr [8 x i8], [8 x i8]* %spi115, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.115 = load [1 x i8], [1 x i8]* @str.3.115
  %cipher.ptr.258 = alloca [5 x i8]
  store [5 x i8] c"\62\51\3d\3d\00", [5 x i8]* %cipher.ptr.258
  %cipher.258 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.258, i32 0, i32 0
  %plain.ptr.258 = tail call i8* @base64_decode(i8* %cipher.258)
  %spi258 = bitcast i8* %plain.ptr.258 to [1 x i8]*
  %s3.115 = load [1 x i8], [1 x i8]* %spi258
;-------------------------------
  %sp3.115 = bitcast i8* %next2.115 to [1 x i8]*
  store [1 x i8] %s3.115, [1 x i8]* %sp3.115
  %next3.115 = getelementptr [8 x i8], [8 x i8]* %spi115, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.115 = load [1 x i8], [1 x i8]* @str.4.115
  %cipher.ptr.254 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.254
  %cipher.254 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.254, i32 0, i32 0
  %plain.ptr.254 = tail call i8* @base64_decode(i8* %cipher.254)
  %spi254 = bitcast i8* %plain.ptr.254 to [1 x i8]*
  %s4.115 = load [1 x i8], [1 x i8]* %spi254
;-------------------------------
  %sp4.115 = bitcast i8* %next3.115 to [1 x i8]*
  store [1 x i8] %s4.115, [1 x i8]* %sp4.115
  %next4.115 = getelementptr [8 x i8], [8 x i8]* %spi115, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.115 = load [1 x i8], [1 x i8]* @str.5.115
  %cipher.ptr.257 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.257
  %cipher.257 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.257, i32 0, i32 0
  %plain.ptr.257 = tail call i8* @base64_decode(i8* %cipher.257)
  %spi257 = bitcast i8* %plain.ptr.257 to [1 x i8]*
  %s5.115 = load [1 x i8], [1 x i8]* %spi257
;-------------------------------
  %sp5.115 = bitcast i8* %next4.115 to [1 x i8]*
  store [1 x i8] %s5.115, [1 x i8]* %sp5.115
  %next5.115 = getelementptr [8 x i8], [8 x i8]* %spi115, i32 0, i32 6
  
;-------------------------------
; Replace: %s6.115 = load [1 x i8], [1 x i8]* @str.6.115
  %cipher.ptr.259 = alloca [5 x i8]
  store [5 x i8] c"\63\67\3d\3d\00", [5 x i8]* %cipher.ptr.259
  %cipher.259 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.259, i32 0, i32 0
  %plain.ptr.259 = tail call i8* @base64_decode(i8* %cipher.259)
  %spi259 = bitcast i8* %plain.ptr.259 to [1 x i8]*
  %s6.115 = load [1 x i8], [1 x i8]* %spi259
;-------------------------------
  %sp6.115 = bitcast i8* %next5.115 to [1 x i8]*
  store [1 x i8] %s6.115, [1 x i8]* %sp6.115
  %next6.115 = getelementptr [8 x i8], [8 x i8]* %spi115, i32 0, i32 7
  
  %s7.115 = load [1 x i8], [1 x i8]* @str.7.115
  %sp7.115 = bitcast i8* %next6.115 to [1 x i8]*
  store [1 x i8] %s7.115, [1 x i8]* %sp7.115
  %cast101= getelementptr [8 x i8], [8 x i8]* %spi115, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast101)
  br label %next101
BB_103:
;-------------------------------
; Replace: %cast103= getelementptr [11 x i8], [11 x i8]* @.str102, i64 0, i64 0
  %spi116 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.116 = load [1 x i8], [1 x i8]* @str.0.116
  %cipher.ptr.263 = alloca [5 x i8]
  store [5 x i8] c"\62\77\3d\3d\00", [5 x i8]* %cipher.ptr.263
  %cipher.263 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.263, i32 0, i32 0
  %plain.ptr.263 = tail call i8* @base64_decode(i8* %cipher.263)
  %spi263 = bitcast i8* %plain.ptr.263 to [1 x i8]*
  %s0.116 = load [1 x i8], [1 x i8]* %spi263
;-------------------------------
  %sp0.116 = bitcast [11 x i8]* %spi116 to [1 x i8]*
  store [1 x i8] %s0.116, [1 x i8]* %sp0.116
  %next0.116 = getelementptr [11 x i8], [11 x i8]* %spi116, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.116 = load [1 x i8], [1 x i8]* @str.1.116
  %cipher.ptr.260 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.260
  %cipher.260 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.260, i32 0, i32 0
  %plain.ptr.260 = tail call i8* @base64_decode(i8* %cipher.260)
  %spi260 = bitcast i8* %plain.ptr.260 to [1 x i8]*
  %s1.116 = load [1 x i8], [1 x i8]* %spi260
;-------------------------------
  %sp1.116 = bitcast i8* %next0.116 to [1 x i8]*
  store [1 x i8] %s1.116, [1 x i8]* %sp1.116
  %next1.116 = getelementptr [11 x i8], [11 x i8]* %spi116, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.116 = load [2 x i8], [2 x i8]* @str.2.116
  %cipher.ptr.264 = alloca [5 x i8]
  store [5 x i8] c"\61\57\38\3d\00", [5 x i8]* %cipher.ptr.264
  %cipher.264 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.264, i32 0, i32 0
  %plain.ptr.264 = tail call i8* @base64_decode(i8* %cipher.264)
  %spi264 = bitcast i8* %plain.ptr.264 to [2 x i8]*
  %s2.116 = load [2 x i8], [2 x i8]* %spi264
;-------------------------------
  %sp2.116 = bitcast i8* %next1.116 to [2 x i8]*
  store [2 x i8] %s2.116, [2 x i8]* %sp2.116
  %next2.116 = getelementptr [11 x i8], [11 x i8]* %spi116, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.116 = load [1 x i8], [1 x i8]* @str.3.116
  %cipher.ptr.265 = alloca [5 x i8]
  store [5 x i8] c"\61\67\3d\3d\00", [5 x i8]* %cipher.ptr.265
  %cipher.265 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.265, i32 0, i32 0
  %plain.ptr.265 = tail call i8* @base64_decode(i8* %cipher.265)
  %spi265 = bitcast i8* %plain.ptr.265 to [1 x i8]*
  %s3.116 = load [1 x i8], [1 x i8]* %spi265
;-------------------------------
  %sp3.116 = bitcast i8* %next2.116 to [1 x i8]*
  store [1 x i8] %s3.116, [1 x i8]* %sp3.116
  %next3.116 = getelementptr [11 x i8], [11 x i8]* %spi116, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.116 = load [1 x i8], [1 x i8]* @str.4.116
  %cipher.ptr.262 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.262
  %cipher.262 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.262, i32 0, i32 0
  %plain.ptr.262 = tail call i8* @base64_decode(i8* %cipher.262)
  %spi262 = bitcast i8* %plain.ptr.262 to [1 x i8]*
  %s4.116 = load [1 x i8], [1 x i8]* %spi262
;-------------------------------
  %sp4.116 = bitcast i8* %next3.116 to [1 x i8]*
  store [1 x i8] %s4.116, [1 x i8]* %sp4.116
  %next4.116 = getelementptr [11 x i8], [11 x i8]* %spi116, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.116 = load [2 x i8], [2 x i8]* @str.5.116
  %cipher.ptr.266 = alloca [5 x i8]
  store [5 x i8] c"\61\53\77\3d\00", [5 x i8]* %cipher.ptr.266
  %cipher.266 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.266, i32 0, i32 0
  %plain.ptr.266 = tail call i8* @base64_decode(i8* %cipher.266)
  %spi266 = bitcast i8* %plain.ptr.266 to [2 x i8]*
  %s5.116 = load [2 x i8], [2 x i8]* %spi266
;-------------------------------
  %sp5.116 = bitcast i8* %next4.116 to [2 x i8]*
  store [2 x i8] %s5.116, [2 x i8]* %sp5.116
  %next5.116 = getelementptr [11 x i8], [11 x i8]* %spi116, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.116 = load [1 x i8], [1 x i8]* @str.6.116
  %cipher.ptr.261 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.261
  %cipher.261 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.261, i32 0, i32 0
  %plain.ptr.261 = tail call i8* @base64_decode(i8* %cipher.261)
  %spi261 = bitcast i8* %plain.ptr.261 to [1 x i8]*
  %s6.116 = load [1 x i8], [1 x i8]* %spi261
;-------------------------------
  %sp6.116 = bitcast i8* %next5.116 to [1 x i8]*
  store [1 x i8] %s6.116, [1 x i8]* %sp6.116
  %next6.116 = getelementptr [11 x i8], [11 x i8]* %spi116, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.116 = load [2 x i8], [2 x i8]* @str.7.116
  %cipher.ptr.267 = alloca [5 x i8]
  store [5 x i8] c"\63\67\41\3d\00", [5 x i8]* %cipher.ptr.267
  %cipher.267 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.267, i32 0, i32 0
  %plain.ptr.267 = tail call i8* @base64_decode(i8* %cipher.267)
  %spi267 = bitcast i8* %plain.ptr.267 to [2 x i8]*
  %s7.116 = load [2 x i8], [2 x i8]* %spi267
;-------------------------------
  %sp7.116 = bitcast i8* %next6.116 to [2 x i8]*
  store [2 x i8] %s7.116, [2 x i8]* %sp7.116
  %cast103= getelementptr [11 x i8], [11 x i8]* %spi116, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast103)
  br label %next103
BB_105:
;-------------------------------
; Replace: %cast105= getelementptr [11 x i8], [11 x i8]* @.str104, i64 0, i64 0
  %spi117 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.117 = load [1 x i8], [1 x i8]* @str.0.117
  %cipher.ptr.271 = alloca [5 x i8]
  store [5 x i8] c"\62\77\3d\3d\00", [5 x i8]* %cipher.ptr.271
  %cipher.271 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.271, i32 0, i32 0
  %plain.ptr.271 = tail call i8* @base64_decode(i8* %cipher.271)
  %spi271 = bitcast i8* %plain.ptr.271 to [1 x i8]*
  %s0.117 = load [1 x i8], [1 x i8]* %spi271
;-------------------------------
  %sp0.117 = bitcast [11 x i8]* %spi117 to [1 x i8]*
  store [1 x i8] %s0.117, [1 x i8]* %sp0.117
  %next0.117 = getelementptr [11 x i8], [11 x i8]* %spi117, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.117 = load [1 x i8], [1 x i8]* @str.1.117
  %cipher.ptr.274 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.274
  %cipher.274 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.274, i32 0, i32 0
  %plain.ptr.274 = tail call i8* @base64_decode(i8* %cipher.274)
  %spi274 = bitcast i8* %plain.ptr.274 to [1 x i8]*
  %s1.117 = load [1 x i8], [1 x i8]* %spi274
;-------------------------------
  %sp1.117 = bitcast i8* %next0.117 to [1 x i8]*
  store [1 x i8] %s1.117, [1 x i8]* %sp1.117
  %next1.117 = getelementptr [11 x i8], [11 x i8]* %spi117, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.117 = load [2 x i8], [2 x i8]* @str.2.117
  %cipher.ptr.269 = alloca [5 x i8]
  store [5 x i8] c"\61\57\38\3d\00", [5 x i8]* %cipher.ptr.269
  %cipher.269 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.269, i32 0, i32 0
  %plain.ptr.269 = tail call i8* @base64_decode(i8* %cipher.269)
  %spi269 = bitcast i8* %plain.ptr.269 to [2 x i8]*
  %s2.117 = load [2 x i8], [2 x i8]* %spi269
;-------------------------------
  %sp2.117 = bitcast i8* %next1.117 to [2 x i8]*
  store [2 x i8] %s2.117, [2 x i8]* %sp2.117
  %next2.117 = getelementptr [11 x i8], [11 x i8]* %spi117, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.117 = load [1 x i8], [1 x i8]* @str.3.117
  %cipher.ptr.272 = alloca [5 x i8]
  store [5 x i8] c"\61\67\3d\3d\00", [5 x i8]* %cipher.ptr.272
  %cipher.272 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.272, i32 0, i32 0
  %plain.ptr.272 = tail call i8* @base64_decode(i8* %cipher.272)
  %spi272 = bitcast i8* %plain.ptr.272 to [1 x i8]*
  %s3.117 = load [1 x i8], [1 x i8]* %spi272
;-------------------------------
  %sp3.117 = bitcast i8* %next2.117 to [1 x i8]*
  store [1 x i8] %s3.117, [1 x i8]* %sp3.117
  %next3.117 = getelementptr [11 x i8], [11 x i8]* %spi117, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.117 = load [1 x i8], [1 x i8]* @str.4.117
  %cipher.ptr.273 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.273
  %cipher.273 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.273, i32 0, i32 0
  %plain.ptr.273 = tail call i8* @base64_decode(i8* %cipher.273)
  %spi273 = bitcast i8* %plain.ptr.273 to [1 x i8]*
  %s4.117 = load [1 x i8], [1 x i8]* %spi273
;-------------------------------
  %sp4.117 = bitcast i8* %next3.117 to [1 x i8]*
  store [1 x i8] %s4.117, [1 x i8]* %sp4.117
  %next4.117 = getelementptr [11 x i8], [11 x i8]* %spi117, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.117 = load [2 x i8], [2 x i8]* @str.5.117
  %cipher.ptr.268 = alloca [5 x i8]
  store [5 x i8] c"\61\53\77\3d\00", [5 x i8]* %cipher.ptr.268
  %cipher.268 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.268, i32 0, i32 0
  %plain.ptr.268 = tail call i8* @base64_decode(i8* %cipher.268)
  %spi268 = bitcast i8* %plain.ptr.268 to [2 x i8]*
  %s5.117 = load [2 x i8], [2 x i8]* %spi268
;-------------------------------
  %sp5.117 = bitcast i8* %next4.117 to [2 x i8]*
  store [2 x i8] %s5.117, [2 x i8]* %sp5.117
  %next5.117 = getelementptr [11 x i8], [11 x i8]* %spi117, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.117 = load [1 x i8], [1 x i8]* @str.6.117
  %cipher.ptr.270 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.270
  %cipher.270 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.270, i32 0, i32 0
  %plain.ptr.270 = tail call i8* @base64_decode(i8* %cipher.270)
  %spi270 = bitcast i8* %plain.ptr.270 to [1 x i8]*
  %s6.117 = load [1 x i8], [1 x i8]* %spi270
;-------------------------------
  %sp6.117 = bitcast i8* %next5.117 to [1 x i8]*
  store [1 x i8] %s6.117, [1 x i8]* %sp6.117
  %next6.117 = getelementptr [11 x i8], [11 x i8]* %spi117, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.117 = load [2 x i8], [2 x i8]* @str.7.117
  %cipher.ptr.275 = alloca [5 x i8]
  store [5 x i8] c"\63\67\41\3d\00", [5 x i8]* %cipher.ptr.275
  %cipher.275 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.275, i32 0, i32 0
  %plain.ptr.275 = tail call i8* @base64_decode(i8* %cipher.275)
  %spi275 = bitcast i8* %plain.ptr.275 to [2 x i8]*
  %s7.117 = load [2 x i8], [2 x i8]* %spi275
;-------------------------------
  %sp7.117 = bitcast i8* %next6.117 to [2 x i8]*
  store [2 x i8] %s7.117, [2 x i8]* %sp7.117
  %cast105= getelementptr [11 x i8], [11 x i8]* %spi117, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast105)
  br label %next105
BB_107:
;-------------------------------
; Replace: %cast107= getelementptr [10 x i8], [10 x i8]* @.str106, i64 0, i64 0
  %spi118 = alloca [10 x i8]
  
;-------------------------------
; Replace: %s0.118 = load [1 x i8], [1 x i8]* @str.0.118
  %cipher.ptr.278 = alloca [5 x i8]
  store [5 x i8] c"\52\41\3d\3d\00", [5 x i8]* %cipher.ptr.278
  %cipher.278 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.278, i32 0, i32 0
  %plain.ptr.278 = tail call i8* @base64_decode(i8* %cipher.278)
  %spi278 = bitcast i8* %plain.ptr.278 to [1 x i8]*
  %s0.118 = load [1 x i8], [1 x i8]* %spi278
;-------------------------------
  %sp0.118 = bitcast [10 x i8]* %spi118 to [1 x i8]*
  store [1 x i8] %s0.118, [1 x i8]* %sp0.118
  %next0.118 = getelementptr [10 x i8], [10 x i8]* %spi118, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.118 = load [1 x i8], [1 x i8]* @str.1.118
  %cipher.ptr.282 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.282
  %cipher.282 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.282, i32 0, i32 0
  %plain.ptr.282 = tail call i8* @base64_decode(i8* %cipher.282)
  %spi282 = bitcast i8* %plain.ptr.282 to [1 x i8]*
  %s1.118 = load [1 x i8], [1 x i8]* %spi282
;-------------------------------
  %sp1.118 = bitcast i8* %next0.118 to [1 x i8]*
  store [1 x i8] %s1.118, [1 x i8]* %sp1.118
  %next1.118 = getelementptr [10 x i8], [10 x i8]* %spi118, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.118 = load [1 x i8], [1 x i8]* @str.2.118
  %cipher.ptr.283 = alloca [5 x i8]
  store [5 x i8] c"\64\51\3d\3d\00", [5 x i8]* %cipher.ptr.283
  %cipher.283 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.283, i32 0, i32 0
  %plain.ptr.283 = tail call i8* @base64_decode(i8* %cipher.283)
  %spi283 = bitcast i8* %plain.ptr.283 to [1 x i8]*
  %s2.118 = load [1 x i8], [1 x i8]* %spi283
;-------------------------------
  %sp2.118 = bitcast i8* %next1.118 to [1 x i8]*
  store [1 x i8] %s2.118, [1 x i8]* %sp2.118
  %next2.118 = getelementptr [10 x i8], [10 x i8]* %spi118, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.118 = load [2 x i8], [2 x i8]* @str.3.118
  %cipher.ptr.277 = alloca [5 x i8]
  store [5 x i8] c"\65\47\6b\3d\00", [5 x i8]* %cipher.ptr.277
  %cipher.277 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.277, i32 0, i32 0
  %plain.ptr.277 = tail call i8* @base64_decode(i8* %cipher.277)
  %spi277 = bitcast i8* %plain.ptr.277 to [2 x i8]*
  %s3.118 = load [2 x i8], [2 x i8]* %spi277
;-------------------------------
  %sp3.118 = bitcast i8* %next2.118 to [2 x i8]*
  store [2 x i8] %s3.118, [2 x i8]* %sp3.118
  %next3.118 = getelementptr [10 x i8], [10 x i8]* %spi118, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.118 = load [1 x i8], [1 x i8]* @str.4.118
  %cipher.ptr.281 = alloca [5 x i8]
  store [5 x i8] c"\77\77\3d\3d\00", [5 x i8]* %cipher.ptr.281
  %cipher.281 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.281, i32 0, i32 0
  %plain.ptr.281 = tail call i8* @base64_decode(i8* %cipher.281)
  %spi281 = bitcast i8* %plain.ptr.281 to [1 x i8]*
  %s4.118 = load [1 x i8], [1 x i8]* %spi281
;-------------------------------
  %sp4.118 = bitcast i8* %next3.118 to [1 x i8]*
  store [1 x i8] %s4.118, [1 x i8]* %sp4.118
  %next4.118 = getelementptr [10 x i8], [10 x i8]* %spi118, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.118 = load [1 x i8], [1 x i8]* @str.5.118
  %cipher.ptr.276 = alloca [5 x i8]
  store [5 x i8] c"\71\41\3d\3d\00", [5 x i8]* %cipher.ptr.276
  %cipher.276 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.276, i32 0, i32 0
  %plain.ptr.276 = tail call i8* @base64_decode(i8* %cipher.276)
  %spi276 = bitcast i8* %plain.ptr.276 to [1 x i8]*
  %s5.118 = load [1 x i8], [1 x i8]* %spi276
;-------------------------------
  %sp5.118 = bitcast i8* %next4.118 to [1 x i8]*
  store [1 x i8] %s5.118, [1 x i8]* %sp5.118
  %next5.118 = getelementptr [10 x i8], [10 x i8]* %spi118, i32 0, i32 7
  
;-------------------------------
; Replace: %s6.118 = load [1 x i8], [1 x i8]* @str.6.118
  %cipher.ptr.279 = alloca [5 x i8]
  store [5 x i8] c"\62\51\3d\3d\00", [5 x i8]* %cipher.ptr.279
  %cipher.279 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.279, i32 0, i32 0
  %plain.ptr.279 = tail call i8* @base64_decode(i8* %cipher.279)
  %spi279 = bitcast i8* %plain.ptr.279 to [1 x i8]*
  %s6.118 = load [1 x i8], [1 x i8]* %spi279
;-------------------------------
  %sp6.118 = bitcast i8* %next5.118 to [1 x i8]*
  store [1 x i8] %s6.118, [1 x i8]* %sp6.118
  %next6.118 = getelementptr [10 x i8], [10 x i8]* %spi118, i32 0, i32 8
  
;-------------------------------
; Replace: %s7.118 = load [2 x i8], [2 x i8]* @str.7.118
  %cipher.ptr.280 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\41\3d\00", [5 x i8]* %cipher.ptr.280
  %cipher.280 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.280, i32 0, i32 0
  %plain.ptr.280 = tail call i8* @base64_decode(i8* %cipher.280)
  %spi280 = bitcast i8* %plain.ptr.280 to [2 x i8]*
  %s7.118 = load [2 x i8], [2 x i8]* %spi280
;-------------------------------
  %sp7.118 = bitcast i8* %next6.118 to [2 x i8]*
  store [2 x i8] %s7.118, [2 x i8]* %sp7.118
  %cast107= getelementptr [10 x i8], [10 x i8]* %spi118, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast107)
  br label %next107
BB_109:
;-------------------------------
; Replace: %cast109= getelementptr [11 x i8], [11 x i8]* @.str108, i64 0, i64 0
  %spi119 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.119 = load [1 x i8], [1 x i8]* @str.0.119
  %cipher.ptr.288 = alloca [5 x i8]
  store [5 x i8] c"\62\77\3d\3d\00", [5 x i8]* %cipher.ptr.288
  %cipher.288 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.288, i32 0, i32 0
  %plain.ptr.288 = tail call i8* @base64_decode(i8* %cipher.288)
  %spi288 = bitcast i8* %plain.ptr.288 to [1 x i8]*
  %s0.119 = load [1 x i8], [1 x i8]* %spi288
;-------------------------------
  %sp0.119 = bitcast [11 x i8]* %spi119 to [1 x i8]*
  store [1 x i8] %s0.119, [1 x i8]* %sp0.119
  %next0.119 = getelementptr [11 x i8], [11 x i8]* %spi119, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.119 = load [1 x i8], [1 x i8]* @str.1.119
  %cipher.ptr.285 = alloca [5 x i8]
  store [5 x i8] c"\61\77\3d\3d\00", [5 x i8]* %cipher.ptr.285
  %cipher.285 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.285, i32 0, i32 0
  %plain.ptr.285 = tail call i8* @base64_decode(i8* %cipher.285)
  %spi285 = bitcast i8* %plain.ptr.285 to [1 x i8]*
  %s1.119 = load [1 x i8], [1 x i8]* %spi285
;-------------------------------
  %sp1.119 = bitcast i8* %next0.119 to [1 x i8]*
  store [1 x i8] %s1.119, [1 x i8]* %sp1.119
  %next1.119 = getelementptr [11 x i8], [11 x i8]* %spi119, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.119 = load [2 x i8], [2 x i8]* @str.2.119
  %cipher.ptr.284 = alloca [5 x i8]
  store [5 x i8] c"\61\57\38\3d\00", [5 x i8]* %cipher.ptr.284
  %cipher.284 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.284, i32 0, i32 0
  %plain.ptr.284 = tail call i8* @base64_decode(i8* %cipher.284)
  %spi284 = bitcast i8* %plain.ptr.284 to [2 x i8]*
  %s2.119 = load [2 x i8], [2 x i8]* %spi284
;-------------------------------
  %sp2.119 = bitcast i8* %next1.119 to [2 x i8]*
  store [2 x i8] %s2.119, [2 x i8]* %sp2.119
  %next2.119 = getelementptr [11 x i8], [11 x i8]* %spi119, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.119 = load [1 x i8], [1 x i8]* @str.3.119
  %cipher.ptr.286 = alloca [5 x i8]
  store [5 x i8] c"\61\67\3d\3d\00", [5 x i8]* %cipher.ptr.286
  %cipher.286 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.286, i32 0, i32 0
  %plain.ptr.286 = tail call i8* @base64_decode(i8* %cipher.286)
  %spi286 = bitcast i8* %plain.ptr.286 to [1 x i8]*
  %s3.119 = load [1 x i8], [1 x i8]* %spi286
;-------------------------------
  %sp3.119 = bitcast i8* %next2.119 to [1 x i8]*
  store [1 x i8] %s3.119, [1 x i8]* %sp3.119
  %next3.119 = getelementptr [11 x i8], [11 x i8]* %spi119, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.119 = load [1 x i8], [1 x i8]* @str.4.119
  %cipher.ptr.289 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.289
  %cipher.289 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.289, i32 0, i32 0
  %plain.ptr.289 = tail call i8* @base64_decode(i8* %cipher.289)
  %spi289 = bitcast i8* %plain.ptr.289 to [1 x i8]*
  %s4.119 = load [1 x i8], [1 x i8]* %spi289
;-------------------------------
  %sp4.119 = bitcast i8* %next3.119 to [1 x i8]*
  store [1 x i8] %s4.119, [1 x i8]* %sp4.119
  %next4.119 = getelementptr [11 x i8], [11 x i8]* %spi119, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.119 = load [2 x i8], [2 x i8]* @str.5.119
  %cipher.ptr.290 = alloca [5 x i8]
  store [5 x i8] c"\61\53\77\3d\00", [5 x i8]* %cipher.ptr.290
  %cipher.290 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.290, i32 0, i32 0
  %plain.ptr.290 = tail call i8* @base64_decode(i8* %cipher.290)
  %spi290 = bitcast i8* %plain.ptr.290 to [2 x i8]*
  %s5.119 = load [2 x i8], [2 x i8]* %spi290
;-------------------------------
  %sp5.119 = bitcast i8* %next4.119 to [2 x i8]*
  store [2 x i8] %s5.119, [2 x i8]* %sp5.119
  %next5.119 = getelementptr [11 x i8], [11 x i8]* %spi119, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.119 = load [1 x i8], [1 x i8]* @str.6.119
  %cipher.ptr.291 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.291
  %cipher.291 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.291, i32 0, i32 0
  %plain.ptr.291 = tail call i8* @base64_decode(i8* %cipher.291)
  %spi291 = bitcast i8* %plain.ptr.291 to [1 x i8]*
  %s6.119 = load [1 x i8], [1 x i8]* %spi291
;-------------------------------
  %sp6.119 = bitcast i8* %next5.119 to [1 x i8]*
  store [1 x i8] %s6.119, [1 x i8]* %sp6.119
  %next6.119 = getelementptr [11 x i8], [11 x i8]* %spi119, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.119 = load [2 x i8], [2 x i8]* @str.7.119
  %cipher.ptr.287 = alloca [5 x i8]
  store [5 x i8] c"\63\67\41\3d\00", [5 x i8]* %cipher.ptr.287
  %cipher.287 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.287, i32 0, i32 0
  %plain.ptr.287 = tail call i8* @base64_decode(i8* %cipher.287)
  %spi287 = bitcast i8* %plain.ptr.287 to [2 x i8]*
  %s7.119 = load [2 x i8], [2 x i8]* %spi287
;-------------------------------
  %sp7.119 = bitcast i8* %next6.119 to [2 x i8]*
  store [2 x i8] %s7.119, [2 x i8]* %sp7.119
  %cast109= getelementptr [11 x i8], [11 x i8]* %spi119, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast109)
  br label %next109
BB_111:
;-------------------------------
; Replace: %cast111= getelementptr [10 x i8], [10 x i8]* @.str110, i64 0, i64 0
  %spi120 = alloca [10 x i8]
  
;-------------------------------
; Replace: %s0.120 = load [1 x i8], [1 x i8]* @str.0.120
  %cipher.ptr.293 = alloca [5 x i8]
  store [5 x i8] c"\64\41\3d\3d\00", [5 x i8]* %cipher.ptr.293
  %cipher.293 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.293, i32 0, i32 0
  %plain.ptr.293 = tail call i8* @base64_decode(i8* %cipher.293)
  %spi293 = bitcast i8* %plain.ptr.293 to [1 x i8]*
  %s0.120 = load [1 x i8], [1 x i8]* %spi293
;-------------------------------
  %sp0.120 = bitcast [10 x i8]* %spi120 to [1 x i8]*
  store [1 x i8] %s0.120, [1 x i8]* %sp0.120
  %next0.120 = getelementptr [10 x i8], [10 x i8]* %spi120, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.120 = load [1 x i8], [1 x i8]* @str.1.120
  %cipher.ptr.294 = alloca [5 x i8]
  store [5 x i8] c"\63\67\3d\3d\00", [5 x i8]* %cipher.ptr.294
  %cipher.294 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.294, i32 0, i32 0
  %plain.ptr.294 = tail call i8* @base64_decode(i8* %cipher.294)
  %spi294 = bitcast i8* %plain.ptr.294 to [1 x i8]*
  %s1.120 = load [1 x i8], [1 x i8]* %spi294
;-------------------------------
  %sp1.120 = bitcast i8* %next0.120 to [1 x i8]*
  store [1 x i8] %s1.120, [1 x i8]* %sp1.120
  %next1.120 = getelementptr [10 x i8], [10 x i8]* %spi120, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.120 = load [1 x i8], [1 x i8]* @str.2.120
  %cipher.ptr.297 = alloca [5 x i8]
  store [5 x i8] c"\62\77\3d\3d\00", [5 x i8]* %cipher.ptr.297
  %cipher.297 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.297, i32 0, i32 0
  %plain.ptr.297 = tail call i8* @base64_decode(i8* %cipher.297)
  %spi297 = bitcast i8* %plain.ptr.297 to [1 x i8]*
  %s2.120 = load [1 x i8], [1 x i8]* %spi297
;-------------------------------
  %sp2.120 = bitcast i8* %next1.120 to [1 x i8]*
  store [1 x i8] %s2.120, [1 x i8]* %sp2.120
  %next2.120 = getelementptr [10 x i8], [10 x i8]* %spi120, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.120 = load [2 x i8], [2 x i8]* @str.3.120
  %cipher.ptr.298 = alloca [5 x i8]
  store [5 x i8] c"\61\58\4d\3d\00", [5 x i8]* %cipher.ptr.298
  %cipher.298 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.298, i32 0, i32 0
  %plain.ptr.298 = tail call i8* @base64_decode(i8* %cipher.298)
  %spi298 = bitcast i8* %plain.ptr.298 to [2 x i8]*
  %s3.120 = load [2 x i8], [2 x i8]* %spi298
;-------------------------------
  %sp3.120 = bitcast i8* %next2.120 to [2 x i8]*
  store [2 x i8] %s3.120, [2 x i8]* %sp3.120
  %next3.120 = getelementptr [10 x i8], [10 x i8]* %spi120, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.120 = load [1 x i8], [1 x i8]* @str.4.120
  %cipher.ptr.295 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.295
  %cipher.295 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.295, i32 0, i32 0
  %plain.ptr.295 = tail call i8* @base64_decode(i8* %cipher.295)
  %spi295 = bitcast i8* %plain.ptr.295 to [1 x i8]*
  %s4.120 = load [1 x i8], [1 x i8]* %spi295
;-------------------------------
  %sp4.120 = bitcast i8* %next3.120 to [1 x i8]*
  store [1 x i8] %s4.120, [1 x i8]* %sp4.120
  %next4.120 = getelementptr [10 x i8], [10 x i8]* %spi120, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.120 = load [1 x i8], [1 x i8]* @str.5.120
  %cipher.ptr.299 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.299
  %cipher.299 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.299, i32 0, i32 0
  %plain.ptr.299 = tail call i8* @base64_decode(i8* %cipher.299)
  %spi299 = bitcast i8* %plain.ptr.299 to [1 x i8]*
  %s5.120 = load [1 x i8], [1 x i8]* %spi299
;-------------------------------
  %sp5.120 = bitcast i8* %next4.120 to [1 x i8]*
  store [1 x i8] %s5.120, [1 x i8]* %sp5.120
  %next5.120 = getelementptr [10 x i8], [10 x i8]* %spi120, i32 0, i32 7
  
;-------------------------------
; Replace: %s6.120 = load [1 x i8], [1 x i8]* @str.6.120
  %cipher.ptr.296 = alloca [5 x i8]
  store [5 x i8] c"\62\51\3d\3d\00", [5 x i8]* %cipher.ptr.296
  %cipher.296 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.296, i32 0, i32 0
  %plain.ptr.296 = tail call i8* @base64_decode(i8* %cipher.296)
  %spi296 = bitcast i8* %plain.ptr.296 to [1 x i8]*
  %s6.120 = load [1 x i8], [1 x i8]* %spi296
;-------------------------------
  %sp6.120 = bitcast i8* %next5.120 to [1 x i8]*
  store [1 x i8] %s6.120, [1 x i8]* %sp6.120
  %next6.120 = getelementptr [10 x i8], [10 x i8]* %spi120, i32 0, i32 8
  
;-------------------------------
; Replace: %s7.120 = load [2 x i8], [2 x i8]* @str.7.120
  %cipher.ptr.292 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\41\3d\00", [5 x i8]* %cipher.ptr.292
  %cipher.292 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.292, i32 0, i32 0
  %plain.ptr.292 = tail call i8* @base64_decode(i8* %cipher.292)
  %spi292 = bitcast i8* %plain.ptr.292 to [2 x i8]*
  %s7.120 = load [2 x i8], [2 x i8]* %spi292
;-------------------------------
  %sp7.120 = bitcast i8* %next6.120 to [2 x i8]*
  store [2 x i8] %s7.120, [2 x i8]* %sp7.120
  %cast111= getelementptr [10 x i8], [10 x i8]* %spi120, i64 0, i64 0
;-------------------------------
  call i32 @puts(i8* %cast111)
  br label %next111
}

define internal fastcc void @ifdef_ifndef316(i32 %arg_esp) unnamed_addr  norecurse  !retregs !239 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -324
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517236, i32* %6, align 4
  %tmp4_v.i21.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i25.i = add i32 %tmp0_v.i2.i, -20
  %9 = inttoptr i32 %tmp2_v2.i25.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v5.i29.i = add i32 %tmp0_v.i2.i, -336
  %10 = inttoptr i32 %tmp2_v5.i29.i to i32*
;-------------------------------
; Replace: %spi.bis.314 = ptrtoint[18 x i8]* @str.bis.314 to i32
  %sp0.34 = alloca [18 x i8]
;-------------------------------
; Replace: store [18 x i8] c"\0A\22\1E\4C\3D\31\0D\3C\3F\10\5C\2E\55\33\68\58\57\41", [18 x i8]* %sp0.34
  %sp139 = alloca [18 x i8]
  
;-------------------------------
; Replace: %s0.139 = load [2 x i8], [2 x i8]* @str.0.139
  %cipher.ptr.380 = alloca [5 x i8]
  store [5 x i8] c"\43\69\49\3d\00", [5 x i8]* %cipher.ptr.380
  %cipher.380 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.380, i32 0, i32 0
  %plain.ptr.380 = tail call i8* @base64_decode(i8* %cipher.380)
  %spi380 = bitcast i8* %plain.ptr.380 to [2 x i8]*
  %s0.139 = load [2 x i8], [2 x i8]* %spi380
;-------------------------------
  %sp0.139 = bitcast [18 x i8]* %sp139 to [2 x i8]*
  store [2 x i8] %s0.139, [2 x i8]* %sp0.139
  %next0.139 = getelementptr [18 x i8], [18 x i8]* %sp139, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.139 = load [2 x i8], [2 x i8]* @str.1.139
  %cipher.ptr.383 = alloca [5 x i8]
  store [5 x i8] c"\48\6b\77\3d\00", [5 x i8]* %cipher.ptr.383
  %cipher.383 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.383, i32 0, i32 0
  %plain.ptr.383 = tail call i8* @base64_decode(i8* %cipher.383)
  %spi383 = bitcast i8* %plain.ptr.383 to [2 x i8]*
  %s1.139 = load [2 x i8], [2 x i8]* %spi383
;-------------------------------
  %sp1.139 = bitcast i8* %next0.139 to [2 x i8]*
  store [2 x i8] %s1.139, [2 x i8]* %sp1.139
  %next1.139 = getelementptr [18 x i8], [18 x i8]* %sp139, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.139 = load [2 x i8], [2 x i8]* @str.2.139
  %cipher.ptr.384 = alloca [5 x i8]
  store [5 x i8] c"\50\54\45\3d\00", [5 x i8]* %cipher.ptr.384
  %cipher.384 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.384, i32 0, i32 0
  %plain.ptr.384 = tail call i8* @base64_decode(i8* %cipher.384)
  %spi384 = bitcast i8* %plain.ptr.384 to [2 x i8]*
  %s2.139 = load [2 x i8], [2 x i8]* %spi384
;-------------------------------
  %sp2.139 = bitcast i8* %next1.139 to [2 x i8]*
  store [2 x i8] %s2.139, [2 x i8]* %sp2.139
  %next2.139 = getelementptr [18 x i8], [18 x i8]* %sp139, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.139 = load [3 x i8], [3 x i8]* @str.3.139
  %cipher.ptr.385 = alloca [5 x i8]
  store [5 x i8] c"\44\54\77\2f\00", [5 x i8]* %cipher.ptr.385
  %cipher.385 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.385, i32 0, i32 0
  %plain.ptr.385 = tail call i8* @base64_decode(i8* %cipher.385)
  %spi385 = bitcast i8* %plain.ptr.385 to [3 x i8]*
  %s3.139 = load [3 x i8], [3 x i8]* %spi385
;-------------------------------
  %sp3.139 = bitcast i8* %next2.139 to [3 x i8]*
  store [3 x i8] %s3.139, [3 x i8]* %sp3.139
  %next3.139 = getelementptr [18 x i8], [18 x i8]* %sp139, i32 0, i32 9
  
;-------------------------------
; Replace: %s4.139 = load [2 x i8], [2 x i8]* @str.4.139
  %cipher.ptr.386 = alloca [5 x i8]
  store [5 x i8] c"\45\46\77\3d\00", [5 x i8]* %cipher.ptr.386
  %cipher.386 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.386, i32 0, i32 0
  %plain.ptr.386 = tail call i8* @base64_decode(i8* %cipher.386)
  %spi386 = bitcast i8* %plain.ptr.386 to [2 x i8]*
  %s4.139 = load [2 x i8], [2 x i8]* %spi386
;-------------------------------
  %sp4.139 = bitcast i8* %next3.139 to [2 x i8]*
  store [2 x i8] %s4.139, [2 x i8]* %sp4.139
  %next4.139 = getelementptr [18 x i8], [18 x i8]* %sp139, i32 0, i32 11
  
;-------------------------------
; Replace: %s5.139 = load [2 x i8], [2 x i8]* @str.5.139
  %cipher.ptr.382 = alloca [5 x i8]
  store [5 x i8] c"\4c\6c\55\3d\00", [5 x i8]* %cipher.ptr.382
  %cipher.382 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.382, i32 0, i32 0
  %plain.ptr.382 = tail call i8* @base64_decode(i8* %cipher.382)
  %spi382 = bitcast i8* %plain.ptr.382 to [2 x i8]*
  %s5.139 = load [2 x i8], [2 x i8]* %spi382
;-------------------------------
  %sp5.139 = bitcast i8* %next4.139 to [2 x i8]*
  store [2 x i8] %s5.139, [2 x i8]* %sp5.139
  %next5.139 = getelementptr [18 x i8], [18 x i8]* %sp139, i32 0, i32 13
  
;-------------------------------
; Replace: %s6.139 = load [2 x i8], [2 x i8]* @str.6.139
  %cipher.ptr.381 = alloca [5 x i8]
  store [5 x i8] c"\4d\32\67\3d\00", [5 x i8]* %cipher.ptr.381
  %cipher.381 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.381, i32 0, i32 0
  %plain.ptr.381 = tail call i8* @base64_decode(i8* %cipher.381)
  %spi381 = bitcast i8* %plain.ptr.381 to [2 x i8]*
  %s6.139 = load [2 x i8], [2 x i8]* %spi381
;-------------------------------
  %sp6.139 = bitcast i8* %next5.139 to [2 x i8]*
  store [2 x i8] %s6.139, [2 x i8]* %sp6.139
  %next6.139 = getelementptr [18 x i8], [18 x i8]* %sp139, i32 0, i32 15
  
;-------------------------------
; Replace: %s7.139 = load [3 x i8], [3 x i8]* @str.7.139
  %cipher.ptr.387 = alloca [5 x i8]
  store [5 x i8] c"\57\46\64\42\00", [5 x i8]* %cipher.ptr.387
  %cipher.387 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.387, i32 0, i32 0
  %plain.ptr.387 = tail call i8* @base64_decode(i8* %cipher.387)
  %spi387 = bitcast i8* %plain.ptr.387 to [3 x i8]*
  %s7.139 = load [3 x i8], [3 x i8]* %spi387
;-------------------------------
  %sp7.139 = bitcast i8* %next6.139 to [3 x i8]*
  store [3 x i8] %s7.139, [3 x i8]* %sp7.139

  %spi139 = load [18 x i8], [18 x i8]* %sp139
  store [18 x i8] %spi139, [18 x i8]* %sp0.34
;-------------------------------
  %sp0.1.34 = bitcast [18 x i8]* %sp0.34 to i144*
  %i0.34 = load i144, i144* %sp0.1.34

  %sp1.34 = alloca [18 x i8]
;-------------------------------
; Replace: store [18 x i8] c"\44\4d\6a\6c\59\54\6f\49\58\30\31\41\31\56\48\6a\76\41", [18 x i8]* %sp1.34
  %sp140 = alloca [18 x i8]
  
;-------------------------------
; Replace: %s0.140 = load [2 x i8], [2 x i8]* @str.0.140
  %cipher.ptr.392 = alloca [5 x i8]
  store [5 x i8] c"\52\45\30\3d\00", [5 x i8]* %cipher.ptr.392
  %cipher.392 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.392, i32 0, i32 0
  %plain.ptr.392 = tail call i8* @base64_decode(i8* %cipher.392)
  %spi392 = bitcast i8* %plain.ptr.392 to [2 x i8]*
  %s0.140 = load [2 x i8], [2 x i8]* %spi392
;-------------------------------
  %sp0.140 = bitcast [18 x i8]* %sp140 to [2 x i8]*
  store [2 x i8] %s0.140, [2 x i8]* %sp0.140
  %next0.140 = getelementptr [18 x i8], [18 x i8]* %sp140, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.140 = load [2 x i8], [2 x i8]* @str.1.140
  %cipher.ptr.388 = alloca [5 x i8]
  store [5 x i8] c"\61\6d\77\3d\00", [5 x i8]* %cipher.ptr.388
  %cipher.388 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.388, i32 0, i32 0
  %plain.ptr.388 = tail call i8* @base64_decode(i8* %cipher.388)
  %spi388 = bitcast i8* %plain.ptr.388 to [2 x i8]*
  %s1.140 = load [2 x i8], [2 x i8]* %spi388
;-------------------------------
  %sp1.140 = bitcast i8* %next0.140 to [2 x i8]*
  store [2 x i8] %s1.140, [2 x i8]* %sp1.140
  %next1.140 = getelementptr [18 x i8], [18 x i8]* %sp140, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.140 = load [2 x i8], [2 x i8]* @str.2.140
  %cipher.ptr.393 = alloca [5 x i8]
  store [5 x i8] c"\57\56\51\3d\00", [5 x i8]* %cipher.ptr.393
  %cipher.393 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.393, i32 0, i32 0
  %plain.ptr.393 = tail call i8* @base64_decode(i8* %cipher.393)
  %spi393 = bitcast i8* %plain.ptr.393 to [2 x i8]*
  %s2.140 = load [2 x i8], [2 x i8]* %spi393
;-------------------------------
  %sp2.140 = bitcast i8* %next1.140 to [2 x i8]*
  store [2 x i8] %s2.140, [2 x i8]* %sp2.140
  %next2.140 = getelementptr [18 x i8], [18 x i8]* %sp140, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.140 = load [3 x i8], [3 x i8]* @str.3.140
  %cipher.ptr.390 = alloca [5 x i8]
  store [5 x i8] c"\62\30\6c\59\00", [5 x i8]* %cipher.ptr.390
  %cipher.390 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.390, i32 0, i32 0
  %plain.ptr.390 = tail call i8* @base64_decode(i8* %cipher.390)
  %spi390 = bitcast i8* %plain.ptr.390 to [3 x i8]*
  %s3.140 = load [3 x i8], [3 x i8]* %spi390
;-------------------------------
  %sp3.140 = bitcast i8* %next2.140 to [3 x i8]*
  store [3 x i8] %s3.140, [3 x i8]* %sp3.140
  %next3.140 = getelementptr [18 x i8], [18 x i8]* %sp140, i32 0, i32 9
  
;-------------------------------
; Replace: %s4.140 = load [2 x i8], [2 x i8]* @str.4.140
  %cipher.ptr.391 = alloca [5 x i8]
  store [5 x i8] c"\4d\44\45\3d\00", [5 x i8]* %cipher.ptr.391
  %cipher.391 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.391, i32 0, i32 0
  %plain.ptr.391 = tail call i8* @base64_decode(i8* %cipher.391)
  %spi391 = bitcast i8* %plain.ptr.391 to [2 x i8]*
  %s4.140 = load [2 x i8], [2 x i8]* %spi391
;-------------------------------
  %sp4.140 = bitcast i8* %next3.140 to [2 x i8]*
  store [2 x i8] %s4.140, [2 x i8]* %sp4.140
  %next4.140 = getelementptr [18 x i8], [18 x i8]* %sp140, i32 0, i32 11
  
;-------------------------------
; Replace: %s5.140 = load [2 x i8], [2 x i8]* @str.5.140
  %cipher.ptr.389 = alloca [5 x i8]
  store [5 x i8] c"\51\54\45\3d\00", [5 x i8]* %cipher.ptr.389
  %cipher.389 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.389, i32 0, i32 0
  %plain.ptr.389 = tail call i8* @base64_decode(i8* %cipher.389)
  %spi389 = bitcast i8* %plain.ptr.389 to [2 x i8]*
  %s5.140 = load [2 x i8], [2 x i8]* %spi389
;-------------------------------
  %sp5.140 = bitcast i8* %next4.140 to [2 x i8]*
  store [2 x i8] %s5.140, [2 x i8]* %sp5.140
  %next5.140 = getelementptr [18 x i8], [18 x i8]* %sp140, i32 0, i32 13
  
;-------------------------------
; Replace: %s6.140 = load [2 x i8], [2 x i8]* @str.6.140
  %cipher.ptr.394 = alloca [5 x i8]
  store [5 x i8] c"\56\6b\67\3d\00", [5 x i8]* %cipher.ptr.394
  %cipher.394 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.394, i32 0, i32 0
  %plain.ptr.394 = tail call i8* @base64_decode(i8* %cipher.394)
  %spi394 = bitcast i8* %plain.ptr.394 to [2 x i8]*
  %s6.140 = load [2 x i8], [2 x i8]* %spi394
;-------------------------------
  %sp6.140 = bitcast i8* %next5.140 to [2 x i8]*
  store [2 x i8] %s6.140, [2 x i8]* %sp6.140
  %next6.140 = getelementptr [18 x i8], [18 x i8]* %sp140, i32 0, i32 15
  
;-------------------------------
; Replace: %s7.140 = load [3 x i8], [3 x i8]* @str.7.140
  %cipher.ptr.395 = alloca [5 x i8]
  store [5 x i8] c"\61\6e\5a\42\00", [5 x i8]* %cipher.ptr.395
  %cipher.395 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.395, i32 0, i32 0
  %plain.ptr.395 = tail call i8* @base64_decode(i8* %cipher.395)
  %spi395 = bitcast i8* %plain.ptr.395 to [3 x i8]*
  %s7.140 = load [3 x i8], [3 x i8]* %spi395
;-------------------------------
  %sp7.140 = bitcast i8* %next6.140 to [3 x i8]*
  store [3 x i8] %s7.140, [3 x i8]* %sp7.140

  %spi140 = load [18 x i8], [18 x i8]* %sp140
  store [18 x i8] %spi140, [18 x i8]* %sp1.34
;-------------------------------
  %sp1.1.34 = bitcast [18 x i8]* %sp1.34 to i144*
  %i1.34 = load i144, i144* %sp1.1.34

  %xp34 = xor i144 %i0.34, %i1.34

  %fi.34 = alloca i144
  store i144 %xp34, i144* %fi.34

  %spi34 = bitcast i144* %fi.34 to [18 x i8]*
  %spi.bis.314 = ptrtoint[18 x i8]* %spi34 to i32
;-------------------------------
  store i32 %spi.bis.314, i32* %10, align 16
  %tmp2_v6.i30.i = add i32 %tmp0_v.i2.i, -340
  %11 = inttoptr i32 %tmp2_v6.i30.i to i32*
  store i32 134517268, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %12 = inttoptr i32 %arg.i.i to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp80 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %12)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast80= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.215 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.215
  %cipher.215 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.215, i32 0, i32 0
  %plain.ptr.215 = tail call i8* @base64_decode(i8* %cipher.215)
  %spi215 = bitcast i8* %plain.ptr.215 to [1 x i8]*
  %cast80= getelementptr [1 x i8], [1 x i8]* %spi215, i64 0, i64 0
;-------------------------------
  %13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast80)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
;-------------------------------
; Replace: %spi.bis.313 = ptrtoint[16 x i8]* @str.bis.313 to i32
  %sp0.33 = alloca [16 x i8]
;-------------------------------
; Replace: store [16 x i8] c"\34\05\18\6D\35\52\34\47\54\15\14\2E\56\02\42\43", [16 x i8]* %sp0.33
  %sp141 = alloca [16 x i8]
  
;-------------------------------
; Replace: %s0.141 = load [2 x i8], [2 x i8]* @str.0.141
  %cipher.ptr.397 = alloca [5 x i8]
  store [5 x i8] c"\4e\41\55\3d\00", [5 x i8]* %cipher.ptr.397
  %cipher.397 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.397, i32 0, i32 0
  %plain.ptr.397 = tail call i8* @base64_decode(i8* %cipher.397)
  %spi397 = bitcast i8* %plain.ptr.397 to [2 x i8]*
  %s0.141 = load [2 x i8], [2 x i8]* %spi397
;-------------------------------
  %sp0.141 = bitcast [16 x i8]* %sp141 to [2 x i8]*
  store [2 x i8] %s0.141, [2 x i8]* %sp0.141
  %next0.141 = getelementptr [16 x i8], [16 x i8]* %sp141, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.141 = load [2 x i8], [2 x i8]* @str.1.141
  %cipher.ptr.399 = alloca [5 x i8]
  store [5 x i8] c"\47\47\30\3d\00", [5 x i8]* %cipher.ptr.399
  %cipher.399 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.399, i32 0, i32 0
  %plain.ptr.399 = tail call i8* @base64_decode(i8* %cipher.399)
  %spi399 = bitcast i8* %plain.ptr.399 to [2 x i8]*
  %s1.141 = load [2 x i8], [2 x i8]* %spi399
;-------------------------------
  %sp1.141 = bitcast i8* %next0.141 to [2 x i8]*
  store [2 x i8] %s1.141, [2 x i8]* %sp1.141
  %next1.141 = getelementptr [16 x i8], [16 x i8]* %sp141, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.141 = load [2 x i8], [2 x i8]* @str.2.141
  %cipher.ptr.398 = alloca [5 x i8]
  store [5 x i8] c"\4e\56\49\3d\00", [5 x i8]* %cipher.ptr.398
  %cipher.398 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.398, i32 0, i32 0
  %plain.ptr.398 = tail call i8* @base64_decode(i8* %cipher.398)
  %spi398 = bitcast i8* %plain.ptr.398 to [2 x i8]*
  %s2.141 = load [2 x i8], [2 x i8]* %spi398
;-------------------------------
  %sp2.141 = bitcast i8* %next1.141 to [2 x i8]*
  store [2 x i8] %s2.141, [2 x i8]* %sp2.141
  %next2.141 = getelementptr [16 x i8], [16 x i8]* %sp141, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.141 = load [2 x i8], [2 x i8]* @str.3.141
  %cipher.ptr.403 = alloca [5 x i8]
  store [5 x i8] c"\4e\45\63\3d\00", [5 x i8]* %cipher.ptr.403
  %cipher.403 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.403, i32 0, i32 0
  %plain.ptr.403 = tail call i8* @base64_decode(i8* %cipher.403)
  %spi403 = bitcast i8* %plain.ptr.403 to [2 x i8]*
  %s3.141 = load [2 x i8], [2 x i8]* %spi403
;-------------------------------
  %sp3.141 = bitcast i8* %next2.141 to [2 x i8]*
  store [2 x i8] %s3.141, [2 x i8]* %sp3.141
  %next3.141 = getelementptr [16 x i8], [16 x i8]* %sp141, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.141 = load [2 x i8], [2 x i8]* @str.4.141
  %cipher.ptr.401 = alloca [5 x i8]
  store [5 x i8] c"\56\42\55\3d\00", [5 x i8]* %cipher.ptr.401
  %cipher.401 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.401, i32 0, i32 0
  %plain.ptr.401 = tail call i8* @base64_decode(i8* %cipher.401)
  %spi401 = bitcast i8* %plain.ptr.401 to [2 x i8]*
  %s4.141 = load [2 x i8], [2 x i8]* %spi401
;-------------------------------
  %sp4.141 = bitcast i8* %next3.141 to [2 x i8]*
  store [2 x i8] %s4.141, [2 x i8]* %sp4.141
  %next4.141 = getelementptr [16 x i8], [16 x i8]* %sp141, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.141 = load [2 x i8], [2 x i8]* @str.5.141
  %cipher.ptr.396 = alloca [5 x i8]
  store [5 x i8] c"\46\43\34\3d\00", [5 x i8]* %cipher.ptr.396
  %cipher.396 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.396, i32 0, i32 0
  %plain.ptr.396 = tail call i8* @base64_decode(i8* %cipher.396)
  %spi396 = bitcast i8* %plain.ptr.396 to [2 x i8]*
  %s5.141 = load [2 x i8], [2 x i8]* %spi396
;-------------------------------
  %sp5.141 = bitcast i8* %next4.141 to [2 x i8]*
  store [2 x i8] %s5.141, [2 x i8]* %sp5.141
  %next5.141 = getelementptr [16 x i8], [16 x i8]* %sp141, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.141 = load [2 x i8], [2 x i8]* @str.6.141
  %cipher.ptr.402 = alloca [5 x i8]
  store [5 x i8] c"\56\67\49\3d\00", [5 x i8]* %cipher.ptr.402
  %cipher.402 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.402, i32 0, i32 0
  %plain.ptr.402 = tail call i8* @base64_decode(i8* %cipher.402)
  %spi402 = bitcast i8* %plain.ptr.402 to [2 x i8]*
  %s6.141 = load [2 x i8], [2 x i8]* %spi402
;-------------------------------
  %sp6.141 = bitcast i8* %next5.141 to [2 x i8]*
  store [2 x i8] %s6.141, [2 x i8]* %sp6.141
  %next6.141 = getelementptr [16 x i8], [16 x i8]* %sp141, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.141 = load [2 x i8], [2 x i8]* @str.7.141
  %cipher.ptr.400 = alloca [5 x i8]
  store [5 x i8] c"\51\6b\4d\3d\00", [5 x i8]* %cipher.ptr.400
  %cipher.400 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.400, i32 0, i32 0
  %plain.ptr.400 = tail call i8* @base64_decode(i8* %cipher.400)
  %spi400 = bitcast i8* %plain.ptr.400 to [2 x i8]*
  %s7.141 = load [2 x i8], [2 x i8]* %spi400
;-------------------------------
  %sp7.141 = bitcast i8* %next6.141 to [2 x i8]*
  store [2 x i8] %s7.141, [2 x i8]* %sp7.141

  %spi141 = load [16 x i8], [16 x i8]* %sp141
  store [16 x i8] %spi141, [16 x i8]* %sp0.33
;-------------------------------
  %sp0.1.33 = bitcast [16 x i8]* %sp0.33 to i128*
  %i0.33 = load i128, i128* %sp0.1.33

  %sp1.33 = alloca [16 x i8]
;-------------------------------
; Replace: store [16 x i8] c"\7a\6a\6c\4d\51\37\56\32\33\35\79\41\32\67\63\43", [16 x i8]* %sp1.33
  %sp142 = alloca [16 x i8]
  
;-------------------------------
; Replace: %s0.142 = load [2 x i8], [2 x i8]* @str.0.142
  %cipher.ptr.411 = alloca [5 x i8]
  store [5 x i8] c"\65\6d\6f\3d\00", [5 x i8]* %cipher.ptr.411
  %cipher.411 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.411, i32 0, i32 0
  %plain.ptr.411 = tail call i8* @base64_decode(i8* %cipher.411)
  %spi411 = bitcast i8* %plain.ptr.411 to [2 x i8]*
  %s0.142 = load [2 x i8], [2 x i8]* %spi411
;-------------------------------
  %sp0.142 = bitcast [16 x i8]* %sp142 to [2 x i8]*
  store [2 x i8] %s0.142, [2 x i8]* %sp0.142
  %next0.142 = getelementptr [16 x i8], [16 x i8]* %sp142, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.142 = load [2 x i8], [2 x i8]* @str.1.142
  %cipher.ptr.405 = alloca [5 x i8]
  store [5 x i8] c"\62\45\30\3d\00", [5 x i8]* %cipher.ptr.405
  %cipher.405 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.405, i32 0, i32 0
  %plain.ptr.405 = tail call i8* @base64_decode(i8* %cipher.405)
  %spi405 = bitcast i8* %plain.ptr.405 to [2 x i8]*
  %s1.142 = load [2 x i8], [2 x i8]* %spi405
;-------------------------------
  %sp1.142 = bitcast i8* %next0.142 to [2 x i8]*
  store [2 x i8] %s1.142, [2 x i8]* %sp1.142
  %next1.142 = getelementptr [16 x i8], [16 x i8]* %sp142, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.142 = load [2 x i8], [2 x i8]* @str.2.142
  %cipher.ptr.407 = alloca [5 x i8]
  store [5 x i8] c"\55\54\63\3d\00", [5 x i8]* %cipher.ptr.407
  %cipher.407 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.407, i32 0, i32 0
  %plain.ptr.407 = tail call i8* @base64_decode(i8* %cipher.407)
  %spi407 = bitcast i8* %plain.ptr.407 to [2 x i8]*
  %s2.142 = load [2 x i8], [2 x i8]* %spi407
;-------------------------------
  %sp2.142 = bitcast i8* %next1.142 to [2 x i8]*
  store [2 x i8] %s2.142, [2 x i8]* %sp2.142
  %next2.142 = getelementptr [16 x i8], [16 x i8]* %sp142, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.142 = load [2 x i8], [2 x i8]* @str.3.142
  %cipher.ptr.409 = alloca [5 x i8]
  store [5 x i8] c"\56\6a\49\3d\00", [5 x i8]* %cipher.ptr.409
  %cipher.409 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.409, i32 0, i32 0
  %plain.ptr.409 = tail call i8* @base64_decode(i8* %cipher.409)
  %spi409 = bitcast i8* %plain.ptr.409 to [2 x i8]*
  %s3.142 = load [2 x i8], [2 x i8]* %spi409
;-------------------------------
  %sp3.142 = bitcast i8* %next2.142 to [2 x i8]*
  store [2 x i8] %s3.142, [2 x i8]* %sp3.142
  %next3.142 = getelementptr [16 x i8], [16 x i8]* %sp142, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.142 = load [2 x i8], [2 x i8]* @str.4.142
  %cipher.ptr.408 = alloca [5 x i8]
  store [5 x i8] c"\4d\7a\55\3d\00", [5 x i8]* %cipher.ptr.408
  %cipher.408 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.408, i32 0, i32 0
  %plain.ptr.408 = tail call i8* @base64_decode(i8* %cipher.408)
  %spi408 = bitcast i8* %plain.ptr.408 to [2 x i8]*
  %s4.142 = load [2 x i8], [2 x i8]* %spi408
;-------------------------------
  %sp4.142 = bitcast i8* %next3.142 to [2 x i8]*
  store [2 x i8] %s4.142, [2 x i8]* %sp4.142
  %next4.142 = getelementptr [16 x i8], [16 x i8]* %sp142, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.142 = load [2 x i8], [2 x i8]* @str.5.142
  %cipher.ptr.404 = alloca [5 x i8]
  store [5 x i8] c"\65\55\45\3d\00", [5 x i8]* %cipher.ptr.404
  %cipher.404 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.404, i32 0, i32 0
  %plain.ptr.404 = tail call i8* @base64_decode(i8* %cipher.404)
  %spi404 = bitcast i8* %plain.ptr.404 to [2 x i8]*
  %s5.142 = load [2 x i8], [2 x i8]* %spi404
;-------------------------------
  %sp5.142 = bitcast i8* %next4.142 to [2 x i8]*
  store [2 x i8] %s5.142, [2 x i8]* %sp5.142
  %next5.142 = getelementptr [16 x i8], [16 x i8]* %sp142, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.142 = load [2 x i8], [2 x i8]* @str.6.142
  %cipher.ptr.410 = alloca [5 x i8]
  store [5 x i8] c"\4d\6d\63\3d\00", [5 x i8]* %cipher.ptr.410
  %cipher.410 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.410, i32 0, i32 0
  %plain.ptr.410 = tail call i8* @base64_decode(i8* %cipher.410)
  %spi410 = bitcast i8* %plain.ptr.410 to [2 x i8]*
  %s6.142 = load [2 x i8], [2 x i8]* %spi410
;-------------------------------
  %sp6.142 = bitcast i8* %next5.142 to [2 x i8]*
  store [2 x i8] %s6.142, [2 x i8]* %sp6.142
  %next6.142 = getelementptr [16 x i8], [16 x i8]* %sp142, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.142 = load [2 x i8], [2 x i8]* @str.7.142
  %cipher.ptr.406 = alloca [5 x i8]
  store [5 x i8] c"\59\30\4d\3d\00", [5 x i8]* %cipher.ptr.406
  %cipher.406 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.406, i32 0, i32 0
  %plain.ptr.406 = tail call i8* @base64_decode(i8* %cipher.406)
  %spi406 = bitcast i8* %plain.ptr.406 to [2 x i8]*
  %s7.142 = load [2 x i8], [2 x i8]* %spi406
;-------------------------------
  %sp7.142 = bitcast i8* %next6.142 to [2 x i8]*
  store [2 x i8] %s7.142, [2 x i8]* %sp7.142

  %spi142 = load [16 x i8], [16 x i8]* %sp142
  store [16 x i8] %spi142, [16 x i8]* %sp1.33
;-------------------------------
  %sp1.1.33 = bitcast [16 x i8]* %sp1.33 to i128*
  %i1.33 = load i128, i128* %sp1.1.33

  %xp33 = xor i128 %i0.33, %i1.33

  %fi.33 = alloca i128
  store i128 %xp33, i128* %fi.33

  %spi33 = bitcast i128* %fi.33 to [16 x i8]*
  %spi.bis.313 = ptrtoint[16 x i8]* %spi33 to i32
;-------------------------------
  store i32 %spi.bis.313, i32* %10, align 16
  store i32 134517286, i32* %11, align 4
  %arg.i.i1 = load i32, i32* %10, align 16
  %14 = inttoptr i32 %arg.i.i1 to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp81 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %14)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast81= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.216 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.216
  %cipher.216 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.216, i32 0, i32 0
  %plain.ptr.216 = tail call i8* @base64_decode(i8* %cipher.216)
  %spi216 = bitcast i8* %plain.ptr.216 to [1 x i8]*
  %cast81= getelementptr [1 x i8], [1 x i8]* %spi216, i64 0, i64 0
;-------------------------------
  %15 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast81)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  %tmp2_v.i8.i = add i32 %tmp0_v.i2.i, -332
  %16 = inttoptr i32 %tmp2_v.i8.i to i32*
  store i32 300, i32* %16, align 4
;-------------------------------
; Replace: %spi.bis.312 = ptrtoint[21 x i8]* @str.bis.312 to i32
  %sp0.32 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\03\38\1B\2C\37\09\1E\21\2D\3F\2F\15\15\5E\58\61\57\20\26\7B\7A", [21 x i8]* %sp0.32
  %sp143 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.143 = load [2 x i8], [2 x i8]* @str.0.143
  %cipher.ptr.415 = alloca [5 x i8]
  store [5 x i8] c"\41\7a\67\3d\00", [5 x i8]* %cipher.ptr.415
  %cipher.415 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.415, i32 0, i32 0
  %plain.ptr.415 = tail call i8* @base64_decode(i8* %cipher.415)
  %spi415 = bitcast i8* %plain.ptr.415 to [2 x i8]*
  %s0.143 = load [2 x i8], [2 x i8]* %spi415
;-------------------------------
  %sp0.143 = bitcast [21 x i8]* %sp143 to [2 x i8]*
  store [2 x i8] %s0.143, [2 x i8]* %sp0.143
  %next0.143 = getelementptr [21 x i8], [21 x i8]* %sp143, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.143 = load [3 x i8], [3 x i8]* @str.1.143
  %cipher.ptr.417 = alloca [5 x i8]
  store [5 x i8] c"\47\79\77\33\00", [5 x i8]* %cipher.ptr.417
  %cipher.417 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.417, i32 0, i32 0
  %plain.ptr.417 = tail call i8* @base64_decode(i8* %cipher.417)
  %spi417 = bitcast i8* %plain.ptr.417 to [3 x i8]*
  %s1.143 = load [3 x i8], [3 x i8]* %spi417
;-------------------------------
  %sp1.143 = bitcast i8* %next0.143 to [3 x i8]*
  store [3 x i8] %s1.143, [3 x i8]* %sp1.143
  %next1.143 = getelementptr [21 x i8], [21 x i8]* %sp143, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.143 = load [2 x i8], [2 x i8]* @str.2.143
  %cipher.ptr.412 = alloca [5 x i8]
  store [5 x i8] c"\43\52\34\3d\00", [5 x i8]* %cipher.ptr.412
  %cipher.412 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.412, i32 0, i32 0
  %plain.ptr.412 = tail call i8* @base64_decode(i8* %cipher.412)
  %spi412 = bitcast i8* %plain.ptr.412 to [2 x i8]*
  %s2.143 = load [2 x i8], [2 x i8]* %spi412
;-------------------------------
  %sp2.143 = bitcast i8* %next1.143 to [2 x i8]*
  store [2 x i8] %s2.143, [2 x i8]* %sp2.143
  %next2.143 = getelementptr [21 x i8], [21 x i8]* %sp143, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.143 = load [3 x i8], [3 x i8]* @str.3.143
  %cipher.ptr.419 = alloca [5 x i8]
  store [5 x i8] c"\49\53\30\2f\00", [5 x i8]* %cipher.ptr.419
  %cipher.419 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.419, i32 0, i32 0
  %plain.ptr.419 = tail call i8* @base64_decode(i8* %cipher.419)
  %spi419 = bitcast i8* %plain.ptr.419 to [3 x i8]*
  %s3.143 = load [3 x i8], [3 x i8]* %spi419
;-------------------------------
  %sp3.143 = bitcast i8* %next2.143 to [3 x i8]*
  store [3 x i8] %s3.143, [3 x i8]* %sp3.143
  %next3.143 = getelementptr [21 x i8], [21 x i8]* %sp143, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.143 = load [3 x i8], [3 x i8]* @str.4.143
  %cipher.ptr.414 = alloca [5 x i8]
  store [5 x i8] c"\4c\78\55\56\00", [5 x i8]* %cipher.ptr.414
  %cipher.414 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.414, i32 0, i32 0
  %plain.ptr.414 = tail call i8* @base64_decode(i8* %cipher.414)
  %spi414 = bitcast i8* %plain.ptr.414 to [3 x i8]*
  %s4.143 = load [3 x i8], [3 x i8]* %spi414
;-------------------------------
  %sp4.143 = bitcast i8* %next3.143 to [3 x i8]*
  store [3 x i8] %s4.143, [3 x i8]* %sp4.143
  %next4.143 = getelementptr [21 x i8], [21 x i8]* %sp143, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.143 = load [2 x i8], [2 x i8]* @str.5.143
  %cipher.ptr.413 = alloca [5 x i8]
  store [5 x i8] c"\58\6c\67\3d\00", [5 x i8]* %cipher.ptr.413
  %cipher.413 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.413, i32 0, i32 0
  %plain.ptr.413 = tail call i8* @base64_decode(i8* %cipher.413)
  %spi413 = bitcast i8* %plain.ptr.413 to [2 x i8]*
  %s5.143 = load [2 x i8], [2 x i8]* %spi413
;-------------------------------
  %sp5.143 = bitcast i8* %next4.143 to [2 x i8]*
  store [2 x i8] %s5.143, [2 x i8]* %sp5.143
  %next5.143 = getelementptr [21 x i8], [21 x i8]* %sp143, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.143 = load [3 x i8], [3 x i8]* @str.6.143
  %cipher.ptr.416 = alloca [5 x i8]
  store [5 x i8] c"\59\56\63\67\00", [5 x i8]* %cipher.ptr.416
  %cipher.416 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.416, i32 0, i32 0
  %plain.ptr.416 = tail call i8* @base64_decode(i8* %cipher.416)
  %spi416 = bitcast i8* %plain.ptr.416 to [3 x i8]*
  %s6.143 = load [3 x i8], [3 x i8]* %spi416
;-------------------------------
  %sp6.143 = bitcast i8* %next5.143 to [3 x i8]*
  store [3 x i8] %s6.143, [3 x i8]* %sp6.143
  %next6.143 = getelementptr [21 x i8], [21 x i8]* %sp143, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.143 = load [3 x i8], [3 x i8]* @str.7.143
  %cipher.ptr.418 = alloca [5 x i8]
  store [5 x i8] c"\4a\6e\74\36\00", [5 x i8]* %cipher.ptr.418
  %cipher.418 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.418, i32 0, i32 0
  %plain.ptr.418 = tail call i8* @base64_decode(i8* %cipher.418)
  %spi418 = bitcast i8* %plain.ptr.418 to [3 x i8]*
  %s7.143 = load [3 x i8], [3 x i8]* %spi418
;-------------------------------
  %sp7.143 = bitcast i8* %next6.143 to [3 x i8]*
  store [3 x i8] %s7.143, [3 x i8]* %sp7.143

  %spi143 = load [21 x i8], [21 x i8]* %sp143
  store [21 x i8] %spi143, [21 x i8]* %sp0.32
;-------------------------------
  %sp0.1.32 = bitcast [21 x i8]* %sp0.32 to i168*
  %i0.32 = load i168, i168* %sp0.1.32

  %sp1.32 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\70\51\61\49\58\6f\36\43\58\59\49\70\67\77\62\41\72\4c\53\71\7a", [21 x i8]* %sp1.32
  %sp144 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.144 = load [2 x i8], [2 x i8]* @str.0.144
  %cipher.ptr.426 = alloca [5 x i8]
  store [5 x i8] c"\63\46\45\3d\00", [5 x i8]* %cipher.ptr.426
  %cipher.426 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.426, i32 0, i32 0
  %plain.ptr.426 = tail call i8* @base64_decode(i8* %cipher.426)
  %spi426 = bitcast i8* %plain.ptr.426 to [2 x i8]*
  %s0.144 = load [2 x i8], [2 x i8]* %spi426
;-------------------------------
  %sp0.144 = bitcast [21 x i8]* %sp144 to [2 x i8]*
  store [2 x i8] %s0.144, [2 x i8]* %sp0.144
  %next0.144 = getelementptr [21 x i8], [21 x i8]* %sp144, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.144 = load [3 x i8], [3 x i8]* @str.1.144
  %cipher.ptr.427 = alloca [5 x i8]
  store [5 x i8] c"\59\55\6c\59\00", [5 x i8]* %cipher.ptr.427
  %cipher.427 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.427, i32 0, i32 0
  %plain.ptr.427 = tail call i8* @base64_decode(i8* %cipher.427)
  %spi427 = bitcast i8* %plain.ptr.427 to [3 x i8]*
  %s1.144 = load [3 x i8], [3 x i8]* %spi427
;-------------------------------
  %sp1.144 = bitcast i8* %next0.144 to [3 x i8]*
  store [3 x i8] %s1.144, [3 x i8]* %sp1.144
  %next1.144 = getelementptr [21 x i8], [21 x i8]* %sp144, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.144 = load [2 x i8], [2 x i8]* @str.2.144
  %cipher.ptr.422 = alloca [5 x i8]
  store [5 x i8] c"\62\7a\59\3d\00", [5 x i8]* %cipher.ptr.422
  %cipher.422 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.422, i32 0, i32 0
  %plain.ptr.422 = tail call i8* @base64_decode(i8* %cipher.422)
  %spi422 = bitcast i8* %plain.ptr.422 to [2 x i8]*
  %s2.144 = load [2 x i8], [2 x i8]* %spi422
;-------------------------------
  %sp2.144 = bitcast i8* %next1.144 to [2 x i8]*
  store [2 x i8] %s2.144, [2 x i8]* %sp2.144
  %next2.144 = getelementptr [21 x i8], [21 x i8]* %sp144, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.144 = load [3 x i8], [3 x i8]* @str.3.144
  %cipher.ptr.421 = alloca [5 x i8]
  store [5 x i8] c"\51\31\68\5a\00", [5 x i8]* %cipher.ptr.421
  %cipher.421 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.421, i32 0, i32 0
  %plain.ptr.421 = tail call i8* @base64_decode(i8* %cipher.421)
  %spi421 = bitcast i8* %plain.ptr.421 to [3 x i8]*
  %s3.144 = load [3 x i8], [3 x i8]* %spi421
;-------------------------------
  %sp3.144 = bitcast i8* %next2.144 to [3 x i8]*
  store [3 x i8] %s3.144, [3 x i8]* %sp3.144
  %next3.144 = getelementptr [21 x i8], [21 x i8]* %sp144, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.144 = load [3 x i8], [3 x i8]* @str.4.144
  %cipher.ptr.425 = alloca [5 x i8]
  store [5 x i8] c"\53\58\42\6e\00", [5 x i8]* %cipher.ptr.425
  %cipher.425 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.425, i32 0, i32 0
  %plain.ptr.425 = tail call i8* @base64_decode(i8* %cipher.425)
  %spi425 = bitcast i8* %plain.ptr.425 to [3 x i8]*
  %s4.144 = load [3 x i8], [3 x i8]* %spi425
;-------------------------------
  %sp4.144 = bitcast i8* %next3.144 to [3 x i8]*
  store [3 x i8] %s4.144, [3 x i8]* %sp4.144
  %next4.144 = getelementptr [21 x i8], [21 x i8]* %sp144, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.144 = load [2 x i8], [2 x i8]* @str.5.144
  %cipher.ptr.423 = alloca [5 x i8]
  store [5 x i8] c"\64\32\49\3d\00", [5 x i8]* %cipher.ptr.423
  %cipher.423 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.423, i32 0, i32 0
  %plain.ptr.423 = tail call i8* @base64_decode(i8* %cipher.423)
  %spi423 = bitcast i8* %plain.ptr.423 to [2 x i8]*
  %s5.144 = load [2 x i8], [2 x i8]* %spi423
;-------------------------------
  %sp5.144 = bitcast i8* %next4.144 to [2 x i8]*
  store [2 x i8] %s5.144, [2 x i8]* %sp5.144
  %next5.144 = getelementptr [21 x i8], [21 x i8]* %sp144, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.144 = load [3 x i8], [3 x i8]* @str.6.144
  %cipher.ptr.424 = alloca [5 x i8]
  store [5 x i8] c"\51\58\4a\4d\00", [5 x i8]* %cipher.ptr.424
  %cipher.424 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.424, i32 0, i32 0
  %plain.ptr.424 = tail call i8* @base64_decode(i8* %cipher.424)
  %spi424 = bitcast i8* %plain.ptr.424 to [3 x i8]*
  %s6.144 = load [3 x i8], [3 x i8]* %spi424
;-------------------------------
  %sp6.144 = bitcast i8* %next5.144 to [3 x i8]*
  store [3 x i8] %s6.144, [3 x i8]* %sp6.144
  %next6.144 = getelementptr [21 x i8], [21 x i8]* %sp144, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.144 = load [3 x i8], [3 x i8]* @str.7.144
  %cipher.ptr.420 = alloca [5 x i8]
  store [5 x i8] c"\55\33\46\36\00", [5 x i8]* %cipher.ptr.420
  %cipher.420 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.420, i32 0, i32 0
  %plain.ptr.420 = tail call i8* @base64_decode(i8* %cipher.420)
  %spi420 = bitcast i8* %plain.ptr.420 to [3 x i8]*
  %s7.144 = load [3 x i8], [3 x i8]* %spi420
;-------------------------------
  %sp7.144 = bitcast i8* %next6.144 to [3 x i8]*
  store [3 x i8] %s7.144, [3 x i8]* %sp7.144

  %spi144 = load [21 x i8], [21 x i8]* %sp144
  store [21 x i8] %spi144, [21 x i8]* %sp1.32
;-------------------------------
  %sp1.1.32 = bitcast [21 x i8]* %sp1.32 to i168*
  %i1.32 = load i168, i168* %sp1.1.32

  %xp32 = xor i168 %i0.32, %i1.32

  %fi.32 = alloca i168
  store i168 %xp32, i168* %fi.32

  %spi32 = bitcast i168* %fi.32 to [21 x i8]*
  %spi.bis.312 = ptrtoint[21 x i8]* %spi32 to i32
;-------------------------------
  store i32 %spi.bis.312, i32* %10, align 16
  store i32 134517309, i32* %11, align 4
  %17 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i1.i, i32 inreg noundef 0, i32 noundef %tmp2_v5.i29.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !240
  ret void
}
define internal fastcc void @min_occur_char395(i32 %arg_esp) unnamed_addr  norecurse  !retregs !225 {
.exit:
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i2.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %4, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i2.i, -52
  %5 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517264, i32* %5, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i8.i = add i32 %tmp0_v.i2.i, -20
  %8 = inttoptr i32 %tmp2_v2.i8.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i9.i = add i32 %tmp0_v.i2.i, -44
  %9 = inttoptr i32 %tmp2_v3.i9.i to i32*
  store i32 1684234849, i32* %9, align 4
  %tmp2_v4.i10.i = add i32 %tmp0_v.i2.i, -40
  %10 = inttoptr i32 %tmp2_v4.i10.i to i32*
  store i32 1751606885, i32* %10, align 8
  %tmp2_v5.i11.i = add i32 %tmp0_v.i2.i, -36
  %11 = inttoptr i32 %tmp2_v5.i11.i to i32*
  store i32 1684234849, i32* %11, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -32
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 1751606885, i32* %12, align 16
  %tmp2_v7.i12.i = add i32 %tmp0_v.i2.i, -28
  %13 = inttoptr i32 %tmp2_v7.i12.i to i32*
  store i32 1684234849, i32* %13, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -24
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6776421, i32* %14, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i2.i, -64
  %15 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v3.i9.i, i32* %15, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i2.i, -68
  %16 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517334, i32* %16, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i2.i, -72
  %17 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %17, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i2.i, -76
  %18 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %18, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i2.i, -80
  %19 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %19, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i2.i, -148
  %20 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 134517384, i32* %20, align 4
  %tmp4_v.i.i.i.i = add i32 %tmp0_v.i2.i, -144
  %21 = load i32, i32* %15, align 16
  %tmp2_v2.i10.i.i = add i32 %tmp0_v.i2.i, -132
  %22 = inttoptr i32 %tmp2_v2.i10.i.i to i32*
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i2.i, -84
  %24 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %22, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i2.i, -160
  %26 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i2.i, -164
  %27 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517422, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i171.i.i = add i32 %tmp0_v.i2.i, -96
  %29 = inttoptr i32 %tmp2_v.i171.i.i to i32*
  store i32 %28, i32* %29, align 16
  %tmp2_v3.i174.i.i = add i32 %28, -1
  %tmp2_v4.i175.i.i = add i32 %tmp0_v.i2.i, -92
  %30 = inttoptr i32 %tmp2_v4.i175.i.i to i32*
  store i32 %tmp2_v3.i174.i.i, i32* %30, align 4
  %tmp0_v5.i176.i.i = add i32 %28, 15
  %tmp0_v9.i177.i.i = and i32 %tmp0_v5.i176.i.i, -4096
  %tmp0_v11.i178.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v9.i177.i.i
  %tmp0_v.i218.i.i = and i32 %tmp0_v5.i176.i.i, 4080
  %tmp0_v1.i220.i.i = sub i32 %tmp4_v.i.i.i.i, %tmp0_v.i218.i.i
  %tmp2_v.i191.i.i = add i32 %tmp0_v.i2.i, -88
  %31 = inttoptr i32 %tmp2_v.i191.i.i to i32*
  store i32 %tmp0_v1.i220.i.i, i32* %31, align 8
  %tmp2_v4.i192.i.i = add i32 %tmp0_v.i2.i, -116
  %32 = inttoptr i32 %tmp2_v4.i192.i.i to i32*
  store i32 0, i32* %32, align 4
  %tmp2_v5.i193.i.i = add i32 %tmp0_v.i2.i, -112
  %33 = inttoptr i32 %tmp2_v5.i193.i.i to i32*
  store i32 0, i32* %33, align 16
  %34 = load i32, i32* %29, align 16
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_8049338.i.lr.ph.i, label %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i

helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i: ; preds = %.exit
  %.pre20.i = add i32 %tmp0_v.i2.i, -122
  %.pre21.i = inttoptr i32 %.pre20.i to i8*
  %.pre22.i = add i32 %tmp0_v.i2.i, -120
  %.pre23.i = inttoptr i32 %.pre22.i to i32*
  br label %Func_print_min_char.exit

BB_8049338.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i195.i.i = add i32 %tmp0_v.i2.i, -121
  %36 = inttoptr i32 %tmp2_v.i195.i.i to i8*
  %tmp2_v1.i196.i.i = add i32 %tmp0_v.i2.i, -108
  %37 = inttoptr i32 %tmp2_v1.i196.i.i to i32*
  %tmp2_v.i46.i.i = add i32 %tmp0_v.i2.i, -104
  %38 = inttoptr i32 %tmp2_v.i46.i.i to i32*
  %tmp2_v1.i47.i.i = add i32 %tmp0_v.i2.i, -100
  %39 = inttoptr i32 %tmp2_v1.i47.i.i to i32*
  %tmp2_v1.i163.i.i = add i32 %tmp0_v.i2.i, -120
  %40 = inttoptr i32 %tmp2_v1.i163.i.i to i32*
  %tmp2_v8.i233.i.i = add i32 %tmp0_v.i2.i, -122
  %41 = inttoptr i32 %tmp2_v8.i233.i.i to i8*
  br label %BB_8049338.i.i

BB_8049345.i.i:                                   ; preds = %BB_8049338.i.i, %BB_8049363.i.i
  %storemerge112.i = phi i32 [ %tmp0_v1.i124.i.i, %BB_8049363.i.i ], [ 0, %BB_8049338.i.i ]
  %42 = load i32, i32* %33, align 16
  %43 = load i32, i32* %22, align 4
  %tmp0_v3.i.i.i = add i32 %43, %42
  %44 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %45 = load i8, i8* %44, align 1
  %tmp0_v4.i19.i.i = zext i8 %45 to i32
  %46 = load i32, i32* %31, align 8
  %tmp0_v9.i.i.i = add i32 %46, %storemerge112.i
  %47 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  %48 = load i8, i8* %47, align 1
  %tmp0_v10.i.i.i = zext i8 %48 to i32
  %cc_dst_v.i.i.i = sub nsw i32 %tmp0_v4.i19.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i24.i.i = and i32 %cc_dst_v.i.i.i, 255
  %.not.i.i.i = icmp eq i32 %tmp4_v.i24.i.i, 0
  br i1 %.not.i.i.i, label %BB_804935F.i.i, label %BB_8049363.i.i

BB_8049407.i.sink.split.i:                        ; preds = %BB_80493E8.i.i, %BB_80493B3.i.i
  store i32 %68, i32* %40, align 8
  %.sink26.i = load i32, i32* %33, align 16
  %49 = load i32, i32* %22, align 4
  %tmp0_v6.i231.i.i = add i32 %49, %.sink26.i
  %50 = inttoptr i32 %tmp0_v6.i231.i.i to i8*
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %41, align 2
  br label %BB_8049407.i.i

BB_8049407.i.i:                                   ; preds = %BB_80493E8.i.i, %BB_804936F.i.i, %BB_8049407.i.sink.split.i
  %r_ecx.0.i = phi i32 [ %64, %BB_80493E8.i.i ], [ %r_ecx.1.lcssa.i, %BB_804936F.i.i ], [ %64, %BB_8049407.i.sink.split.i ]
  %r_edx.0.i = phi i32 [ %tmp0_v9.i87.i.i, %BB_80493E8.i.i ], [ %r_edx.1.lcssa.i, %BB_804936F.i.i ], [ %.sink26.i, %BB_8049407.i.sink.split.i ]
  %52 = load i32, i32* %33, align 16
  %tmp0_v1.i29.i.i = add i32 %52, 1
  store i32 %tmp0_v1.i29.i.i, i32* %33, align 16
  %53 = load i32, i32* %29, align 16
  %54 = icmp slt i32 %tmp0_v1.i29.i.i, %53
  br i1 %54, label %BB_8049338.i.i, label %Func_print_min_char.exit

BB_80493A7.i.i:                                   ; preds = %BB_80493A3.i.i, %BB_8049389.i.i
  %55 = phi i32 [ %storemerge214.i, %BB_8049389.i.i ], [ %.pre19.i, %BB_80493A3.i.i ]
  %tmp0_v1.i38.i.i = add i32 %55, 1
  store i32 %tmp0_v1.i38.i.i, i32* %39, align 4
  %56 = load i32, i32* %29, align 16
  %57 = icmp slt i32 %tmp0_v1.i38.i.i, %56
  br i1 %57, label %BB_8049389.i.i, label %BB_80493B3.i.i

BB_8049379.i.i:                                   ; preds = %BB_804936F.i.i
  store i32 0, i32* %38, align 8
  store i32 0, i32* %39, align 4
  %58 = load i32, i32* %29, align 16
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %BB_8049389.i.i, label %BB_80493B3.i.i

BB_804935F.i.i:                                   ; preds = %BB_8049345.i.i
  store i8 1, i8* %36, align 1
  %.pre.i = load i32, i32* %37, align 4
  br label %BB_8049363.i.i

BB_80493B3.i.i:                                   ; preds = %BB_8049379.i.i, %BB_80493A7.i.i
  %60 = load i32, i32* %33, align 16
  %61 = load i32, i32* %22, align 4
  %tmp0_v3.i81.i.i = add i32 %61, %60
  %62 = inttoptr i32 %tmp0_v3.i81.i.i to i8*
  %63 = load i8, i8* %62, align 1
  %64 = load i32, i32* %31, align 8
  %65 = load i32, i32* %32, align 4
  %tmp0_v9.i87.i.i = add i32 %65, %64
  %66 = inttoptr i32 %tmp0_v9.i87.i.i to i8*
  store i8 %63, i8* %66, align 1
  %67 = load i32, i32* %32, align 4
  %tmp0_v12.i.i.i = add i32 %67, 1
  store i32 %tmp0_v12.i.i.i, i32* %32, align 4
  %.not.i90.i.i = icmp eq i32 %67, 0
  %68 = load i32, i32* %38, align 8
  br i1 %.not.i90.i.i, label %BB_8049407.i.sink.split.i, label %BB_80493E8.i.i

BB_8049363.i.i:                                   ; preds = %BB_804935F.i.i, %BB_8049345.i.i
  %69 = phi i32 [ %storemerge112.i, %BB_8049345.i.i ], [ %.pre.i, %BB_804935F.i.i ]
  %tmp0_v1.i124.i.i = add i32 %69, 1
  store i32 %tmp0_v1.i124.i.i, i32* %37, align 4
  %70 = load i32, i32* %32, align 4
  %71 = icmp slt i32 %tmp0_v1.i124.i.i, %70
  br i1 %71, label %BB_8049345.i.i, label %BB_804936F.i.i

BB_804936F.i.i:                                   ; preds = %BB_8049338.i.i, %BB_8049363.i.i
  %r_ecx.1.lcssa.i = phi i32 [ %r_ecx.215.i, %BB_8049338.i.i ], [ %46, %BB_8049363.i.i ]
  %r_edx.1.lcssa.i = phi i32 [ %r_edx.216.i, %BB_8049338.i.i ], [ %tmp0_v4.i19.i.i, %BB_8049363.i.i ]
  %72 = load i8, i8* %36, align 1
  %.not.i134.i.i = icmp eq i8 %72, 0
  br i1 %.not.i134.i.i, label %BB_8049379.i.i, label %BB_8049407.i.i

BB_8049389.i.i:                                   ; preds = %BB_8049379.i.i, %BB_80493A7.i.i
  %storemerge214.i = phi i32 [ %tmp0_v1.i38.i.i, %BB_80493A7.i.i ], [ 0, %BB_8049379.i.i ]
  %73 = load i32, i32* %33, align 16
  %74 = load i32, i32* %22, align 4
  %tmp0_v3.i141.i.i = add i32 %74, %73
  %75 = inttoptr i32 %tmp0_v3.i141.i.i to i8*
  %76 = load i8, i8* %75, align 1
  %tmp0_v4.i142.i.i = zext i8 %76 to i32
  %tmp0_v9.i147.i.i = add i32 %74, %storemerge214.i
  %77 = inttoptr i32 %tmp0_v9.i147.i.i to i8*
  %78 = load i8, i8* %77, align 1
  %tmp0_v10.i148.i.i = zext i8 %78 to i32
  %cc_dst_v.i149.i.i = sub nsw i32 %tmp0_v4.i142.i.i, %tmp0_v10.i148.i.i
  %tmp4_v.i150.i.i = and i32 %cc_dst_v.i149.i.i, 255
  %.not.i151.i.i = icmp eq i32 %tmp4_v.i150.i.i, 0
  br i1 %.not.i151.i.i, label %BB_80493A3.i.i, label %BB_80493A7.i.i

BB_80493E8.i.i:                                   ; preds = %BB_80493B3.i.i
  %79 = load i32, i32* %40, align 8
  %.not.i166.i.i = icmp slt i32 %68, %79
  br i1 %.not.i166.i.i, label %BB_8049407.i.sink.split.i, label %BB_8049407.i.i

BB_8049338.i.i:                                   ; preds = %BB_8049407.i.i, %BB_8049338.i.lr.ph.i
  %r_edx.216.i = phi i32 [ %tmp0_v.i218.i.i, %BB_8049338.i.lr.ph.i ], [ %r_edx.0.i, %BB_8049407.i.i ]
  %r_ecx.215.i = phi i32 [ %tmp0_v11.i178.i.i, %BB_8049338.i.lr.ph.i ], [ %r_ecx.0.i, %BB_8049407.i.i ]
  store i8 0, i8* %36, align 1
  store i32 0, i32* %37, align 4
  %80 = load i32, i32* %32, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %BB_8049345.i.i, label %BB_804936F.i.i

BB_80493A3.i.i:                                   ; preds = %BB_8049389.i.i
  %82 = load i32, i32* %38, align 8
  %tmp0_v1.i207.i.i = add i32 %82, 1
  store i32 %tmp0_v1.i207.i.i, i32* %38, align 8
  %.pre19.i = load i32, i32* %39, align 4
  br label %BB_80493A7.i.i

Func_print_min_char.exit:                         ; preds = %BB_8049407.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i
  %.pre-phi24.i = phi i32* [ %.pre23.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %40, %BB_8049407.i.i ]
  %.pre-phi.i = phi i8* [ %.pre21.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %41, %BB_8049407.i.i ]
  %r_ecx.2.lcssa.i = phi i32 [ %tmp0_v11.i178.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %r_ecx.0.i, %BB_8049407.i.i ]
  %r_edx.2.lcssa.i = phi i32 [ %tmp0_v.i218.i.i, %helper_divl_EAX.exit.i.Func_8049417.exit.i_crit_edge.i ], [ %r_edx.0.i, %BB_8049407.i.i ]
  %83 = load i8, i8* %.pre-phi.i, align 1
  %tmp0_v.i104.i.i = sext i8 %83 to i32
  %84 = load i32, i32* %.pre-phi24.i, align 4
  %tmp2_v4.i109.i.i = add i32 %tmp0_v1.i220.i.i, -8
  %85 = inttoptr i32 %tmp2_v4.i109.i.i to i32*
  store i32 %84, i32* %85, align 8
  %tmp2_v5.i110.i.i = add i32 %tmp0_v1.i220.i.i, -12
  %86 = inttoptr i32 %tmp2_v5.i110.i.i to i32*
  store i32 %tmp0_v.i104.i.i, i32* %86, align 4
  %tmp2_v7.i112.i.i = add i32 %tmp0_v1.i220.i.i, -16
  %87 = inttoptr i32 %tmp2_v7.i112.i.i to i32*
;-------------------------------
; Replace: %spi.bis.393 = ptrtoint[7 x i8]* @str.bis.393 to i32
  %sp0.35 = alloca [7 x i8]
;-------------------------------
; Replace: store [7 x i8] c"\15\33\5F\4C\34\5A\41", [7 x i8]* %sp0.35
  %sp145 = alloca [7 x i8]
  
;-------------------------------
; Replace: %s0.145 = load [1 x i8], [1 x i8]* @str.0.145
  %cipher.ptr.434 = alloca [5 x i8]
  store [5 x i8] c"\46\51\3d\3d\00", [5 x i8]* %cipher.ptr.434
  %cipher.434 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.434, i32 0, i32 0
  %plain.ptr.434 = tail call i8* @base64_decode(i8* %cipher.434)
  %spi434 = bitcast i8* %plain.ptr.434 to [1 x i8]*
  %s0.145 = load [1 x i8], [1 x i8]* %spi434
;-------------------------------
  %sp0.145 = bitcast [7 x i8]* %sp145 to [1 x i8]*
  store [1 x i8] %s0.145, [1 x i8]* %sp0.145
  %next0.145 = getelementptr [7 x i8], [7 x i8]* %sp145, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.145 = load [1 x i8], [1 x i8]* @str.1.145
  %cipher.ptr.431 = alloca [5 x i8]
  store [5 x i8] c"\4d\77\3d\3d\00", [5 x i8]* %cipher.ptr.431
  %cipher.431 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.431, i32 0, i32 0
  %plain.ptr.431 = tail call i8* @base64_decode(i8* %cipher.431)
  %spi431 = bitcast i8* %plain.ptr.431 to [1 x i8]*
  %s1.145 = load [1 x i8], [1 x i8]* %spi431
;-------------------------------
  %sp1.145 = bitcast i8* %next0.145 to [1 x i8]*
  store [1 x i8] %s1.145, [1 x i8]* %sp1.145
  %next1.145 = getelementptr [7 x i8], [7 x i8]* %sp145, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.145 = load [1 x i8], [1 x i8]* @str.2.145
  %cipher.ptr.433 = alloca [5 x i8]
  store [5 x i8] c"\58\77\3d\3d\00", [5 x i8]* %cipher.ptr.433
  %cipher.433 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.433, i32 0, i32 0
  %plain.ptr.433 = tail call i8* @base64_decode(i8* %cipher.433)
  %spi433 = bitcast i8* %plain.ptr.433 to [1 x i8]*
  %s2.145 = load [1 x i8], [1 x i8]* %spi433
;-------------------------------
  %sp2.145 = bitcast i8* %next1.145 to [1 x i8]*
  store [1 x i8] %s2.145, [1 x i8]* %sp2.145
  %next2.145 = getelementptr [7 x i8], [7 x i8]* %sp145, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.145 = load [1 x i8], [1 x i8]* @str.3.145
  %cipher.ptr.430 = alloca [5 x i8]
  store [5 x i8] c"\54\41\3d\3d\00", [5 x i8]* %cipher.ptr.430
  %cipher.430 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.430, i32 0, i32 0
  %plain.ptr.430 = tail call i8* @base64_decode(i8* %cipher.430)
  %spi430 = bitcast i8* %plain.ptr.430 to [1 x i8]*
  %s3.145 = load [1 x i8], [1 x i8]* %spi430
;-------------------------------
  %sp3.145 = bitcast i8* %next2.145 to [1 x i8]*
  store [1 x i8] %s3.145, [1 x i8]* %sp3.145
  %next3.145 = getelementptr [7 x i8], [7 x i8]* %sp145, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.145 = load [1 x i8], [1 x i8]* @str.4.145
  %cipher.ptr.428 = alloca [5 x i8]
  store [5 x i8] c"\4e\41\3d\3d\00", [5 x i8]* %cipher.ptr.428
  %cipher.428 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.428, i32 0, i32 0
  %plain.ptr.428 = tail call i8* @base64_decode(i8* %cipher.428)
  %spi428 = bitcast i8* %plain.ptr.428 to [1 x i8]*
  %s4.145 = load [1 x i8], [1 x i8]* %spi428
;-------------------------------
  %sp4.145 = bitcast i8* %next3.145 to [1 x i8]*
  store [1 x i8] %s4.145, [1 x i8]* %sp4.145
  %next4.145 = getelementptr [7 x i8], [7 x i8]* %sp145, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.145 = load [1 x i8], [1 x i8]* @str.5.145
  %cipher.ptr.429 = alloca [5 x i8]
  store [5 x i8] c"\57\67\3d\3d\00", [5 x i8]* %cipher.ptr.429
  %cipher.429 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.429, i32 0, i32 0
  %plain.ptr.429 = tail call i8* @base64_decode(i8* %cipher.429)
  %spi429 = bitcast i8* %plain.ptr.429 to [1 x i8]*
  %s5.145 = load [1 x i8], [1 x i8]* %spi429
;-------------------------------
  %sp5.145 = bitcast i8* %next4.145 to [1 x i8]*
  store [1 x i8] %s5.145, [1 x i8]* %sp5.145
  %next5.145 = getelementptr [7 x i8], [7 x i8]* %sp145, i32 0, i32 6
  
;-------------------------------
; Replace: %s6.145 = load [1 x i8], [1 x i8]* @str.6.145
  %cipher.ptr.432 = alloca [5 x i8]
  store [5 x i8] c"\51\51\3d\3d\00", [5 x i8]* %cipher.ptr.432
  %cipher.432 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.432, i32 0, i32 0
  %plain.ptr.432 = tail call i8* @base64_decode(i8* %cipher.432)
  %spi432 = bitcast i8* %plain.ptr.432 to [1 x i8]*
  %s6.145 = load [1 x i8], [1 x i8]* %spi432
;-------------------------------
  %sp6.145 = bitcast i8* %next5.145 to [1 x i8]*
  store [1 x i8] %s6.145, [1 x i8]* %sp6.145

  %spi145 = load [7 x i8], [7 x i8]* %sp145
  store [7 x i8] %spi145, [7 x i8]* %sp0.35
;-------------------------------
  %sp0.1.35 = bitcast [7 x i8]* %sp0.35 to i56*
  %i0.35 = load i56, i56* %sp0.1.35

  %sp1.35 = alloca [7 x i8]
;-------------------------------
; Replace: store [7 x i8] c"\30\50\65\69\50\50\41", [7 x i8]* %sp1.35
  %sp146 = alloca [7 x i8]
  
;-------------------------------
; Replace: %s0.146 = load [1 x i8], [1 x i8]* @str.0.146
  %cipher.ptr.441 = alloca [5 x i8]
  store [5 x i8] c"\4d\41\3d\3d\00", [5 x i8]* %cipher.ptr.441
  %cipher.441 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.441, i32 0, i32 0
  %plain.ptr.441 = tail call i8* @base64_decode(i8* %cipher.441)
  %spi441 = bitcast i8* %plain.ptr.441 to [1 x i8]*
  %s0.146 = load [1 x i8], [1 x i8]* %spi441
;-------------------------------
  %sp0.146 = bitcast [7 x i8]* %sp146 to [1 x i8]*
  store [1 x i8] %s0.146, [1 x i8]* %sp0.146
  %next0.146 = getelementptr [7 x i8], [7 x i8]* %sp146, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.146 = load [1 x i8], [1 x i8]* @str.1.146
  %cipher.ptr.440 = alloca [5 x i8]
  store [5 x i8] c"\55\41\3d\3d\00", [5 x i8]* %cipher.ptr.440
  %cipher.440 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.440, i32 0, i32 0
  %plain.ptr.440 = tail call i8* @base64_decode(i8* %cipher.440)
  %spi440 = bitcast i8* %plain.ptr.440 to [1 x i8]*
  %s1.146 = load [1 x i8], [1 x i8]* %spi440
;-------------------------------
  %sp1.146 = bitcast i8* %next0.146 to [1 x i8]*
  store [1 x i8] %s1.146, [1 x i8]* %sp1.146
  %next1.146 = getelementptr [7 x i8], [7 x i8]* %sp146, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.146 = load [1 x i8], [1 x i8]* @str.2.146
  %cipher.ptr.438 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.438
  %cipher.438 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.438, i32 0, i32 0
  %plain.ptr.438 = tail call i8* @base64_decode(i8* %cipher.438)
  %spi438 = bitcast i8* %plain.ptr.438 to [1 x i8]*
  %s2.146 = load [1 x i8], [1 x i8]* %spi438
;-------------------------------
  %sp2.146 = bitcast i8* %next1.146 to [1 x i8]*
  store [1 x i8] %s2.146, [1 x i8]* %sp2.146
  %next2.146 = getelementptr [7 x i8], [7 x i8]* %sp146, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.146 = load [1 x i8], [1 x i8]* @str.3.146
  %cipher.ptr.439 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.439
  %cipher.439 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.439, i32 0, i32 0
  %plain.ptr.439 = tail call i8* @base64_decode(i8* %cipher.439)
  %spi439 = bitcast i8* %plain.ptr.439 to [1 x i8]*
  %s3.146 = load [1 x i8], [1 x i8]* %spi439
;-------------------------------
  %sp3.146 = bitcast i8* %next2.146 to [1 x i8]*
  store [1 x i8] %s3.146, [1 x i8]* %sp3.146
  %next3.146 = getelementptr [7 x i8], [7 x i8]* %sp146, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.146 = load [1 x i8], [1 x i8]* @str.4.146
  %cipher.ptr.435 = alloca [5 x i8]
  store [5 x i8] c"\55\41\3d\3d\00", [5 x i8]* %cipher.ptr.435
  %cipher.435 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.435, i32 0, i32 0
  %plain.ptr.435 = tail call i8* @base64_decode(i8* %cipher.435)
  %spi435 = bitcast i8* %plain.ptr.435 to [1 x i8]*
  %s4.146 = load [1 x i8], [1 x i8]* %spi435
;-------------------------------
  %sp4.146 = bitcast i8* %next3.146 to [1 x i8]*
  store [1 x i8] %s4.146, [1 x i8]* %sp4.146
  %next4.146 = getelementptr [7 x i8], [7 x i8]* %sp146, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.146 = load [1 x i8], [1 x i8]* @str.5.146
  %cipher.ptr.436 = alloca [5 x i8]
  store [5 x i8] c"\55\41\3d\3d\00", [5 x i8]* %cipher.ptr.436
  %cipher.436 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.436, i32 0, i32 0
  %plain.ptr.436 = tail call i8* @base64_decode(i8* %cipher.436)
  %spi436 = bitcast i8* %plain.ptr.436 to [1 x i8]*
  %s5.146 = load [1 x i8], [1 x i8]* %spi436
;-------------------------------
  %sp5.146 = bitcast i8* %next4.146 to [1 x i8]*
  store [1 x i8] %s5.146, [1 x i8]* %sp5.146
  %next5.146 = getelementptr [7 x i8], [7 x i8]* %sp146, i32 0, i32 6
  
;-------------------------------
; Replace: %s6.146 = load [1 x i8], [1 x i8]* @str.6.146
  %cipher.ptr.437 = alloca [5 x i8]
  store [5 x i8] c"\51\51\3d\3d\00", [5 x i8]* %cipher.ptr.437
  %cipher.437 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.437, i32 0, i32 0
  %plain.ptr.437 = tail call i8* @base64_decode(i8* %cipher.437)
  %spi437 = bitcast i8* %plain.ptr.437 to [1 x i8]*
  %s6.146 = load [1 x i8], [1 x i8]* %spi437
;-------------------------------
  %sp6.146 = bitcast i8* %next5.146 to [1 x i8]*
  store [1 x i8] %s6.146, [1 x i8]* %sp6.146

  %spi146 = load [7 x i8], [7 x i8]* %sp146
  store [7 x i8] %spi146, [7 x i8]* %sp1.35
;-------------------------------
  %sp1.1.35 = bitcast [7 x i8]* %sp1.35 to i56*
  %i1.35 = load i56, i56* %sp1.1.35

  %xp35 = xor i56 %i0.35, %i1.35

  %fi.35 = alloca i56
  store i56 %xp35, i56* %fi.35

  %spi35 = bitcast i56* %fi.35 to [7 x i8]*
  %spi.bis.393 = ptrtoint[7 x i8]* %spi35 to i32
;-------------------------------
  store i32 %spi.bis.393, i32* %87, align 16
  %tmp2_v8.i113.i.i = add i32 %tmp0_v1.i220.i.i, -20
  %88 = inttoptr i32 %tmp2_v8.i113.i.i to i32*
  store i32 134517812, i32* %88, align 4
  %89 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa.i, i32 inreg noundef %r_edx.2.lcssa.i, i32 noundef %tmp2_v7.i112.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !226
  ret void
}
define internal fastcc void @token_pasting_operator701(i32 %arg_esp) unnamed_addr  norecurse  !retregs !211 {
  %tmp2_v.i42.i = add i32 %arg_esp, 4
  %tmp0_v.i43.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i45.i = add i32 %tmp0_v.i43.i, -4
  %3 = inttoptr i32 %tmp2_v3.i45.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i46.i = add i32 %tmp0_v.i43.i, -8
  %4 = inttoptr i32 %tmp2_v4.i46.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i48.i = add i32 %tmp0_v.i43.i, -12
  %5 = inttoptr i32 %tmp2_v5.i48.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i50.i = add i32 %tmp0_v.i43.i, -16
  %6 = inttoptr i32 %tmp2_v6.i50.i to i32*
  store i32 0, i32* %6, align 16
  %tmp2_v7.i52.i = add i32 %tmp0_v.i43.i, -20
  %7 = inttoptr i32 %tmp2_v7.i52.i to i32*
  store i32 0, i32* %7, align 4
  %tmp2_v8.i54.i = add i32 %tmp0_v.i43.i, -24
  %8 = inttoptr i32 %tmp2_v8.i54.i to i32*
  store i32 %tmp2_v.i42.i, i32* %8, align 8
  %tmp2_v10.i56.i = add i32 %tmp0_v.i43.i, -276
  %9 = inttoptr i32 %tmp2_v10.i56.i to i32*
  store i32 134517364, i32* %9, align 4
  %tmp4_v.i25.i.b = load i1, i1* @segs.0, align 1
  %10 = inttoptr i32 %arg_esp to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v2.i29.i = add i32 %tmp0_v.i43.i, -36
  %12 = inttoptr i32 %tmp2_v2.i29.i to i32*
  store i32 %11, i32* %12, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i43.i, -46
  %13 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 543648066, i32* %13, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i43.i, -42
  %14 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 1819308097, i32* %14, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i43.i, -38
  %15 = inttoptr i32 %tmp2_v5.i.i to i16*
  store i16 101, i16* %15, align 2
  %tmp2_v6.i.i = add i32 %tmp0_v.i43.i, -55
  %16 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 543648066, i32* %16, align 4
  %tmp2_v7.i30.i = add i32 %tmp0_v.i43.i, -51
  %17 = inttoptr i32 %tmp2_v7.i30.i to i32*
  store i32 1918985552, i32* %17, align 4
  %tmp2_v8.i31.i = add i32 %tmp0_v.i43.i, -47
  %18 = inttoptr i32 %tmp2_v8.i31.i to i8*
  store i8 0, i8* %18, align 1
  %tmp2_v11.i.i = add i32 %tmp0_v.i43.i, -288
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i43.i, -292
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 134517431, i32* %20, align 4
  %arg.i.i = load i32, i32* %19, align 16
  %21 = inttoptr i32 %arg.i.i to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp82 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %21)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast82= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.217 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.217
  %cipher.217 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.217, i32 0, i32 0
  %plain.ptr.217 = tail call i8* @base64_decode(i8* %cipher.217)
  %spi217 = bitcast i8* %plain.ptr.217 to [1 x i8]*
  %cast82= getelementptr [1 x i8], [1 x i8]* %spi217, i64 0, i64 0
;-------------------------------
  %22 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast82)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  store i32 %tmp2_v6.i.i, i32* %19, align 16
  store i32 134517446, i32* %20, align 4
  %arg.i.i7 = load i32, i32* %19, align 16
  %23 = inttoptr i32 %arg.i.i7 to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp83 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %23)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast83= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.218 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.218
  %cipher.218 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.218, i32 0, i32 0
  %plain.ptr.218 = tail call i8* @base64_decode(i8* %cipher.218)
  %spi218 = bitcast i8* %plain.ptr.218 to [1 x i8]*
  %cast83= getelementptr [1 x i8], [1 x i8]* %spi218, i64 0, i64 0
;-------------------------------
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast83)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  %tmp2_v.i60.i = add i32 %tmp0_v.i43.i, -264
  br label %Func_80492DE.exit.i

Func_80492DE.exit.i:                              ; preds = %Func_80492DE.exit.i, %0
  %r_edi.031 = phi i32 [ %tmp2_v.i60.i, %0 ], [ %tmp4_v3.i.i, %Func_80492DE.exit.i ]
  %r_esi.030 = phi i32 [ 134529088, %0 ], [ %tmp4_v.i9.i, %Func_80492DE.exit.i ]
  %r_ecx.029 = phi i32 [ 52, %0 ], [ %tmp4_v5.i.i, %Func_80492DE.exit.i ]
  %25 = inttoptr i32 %r_esi.030 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = inttoptr i32 %r_edi.031 to i32*
  store i32 %26, i32* %27, align 4
  %tmp0_v1.i7.i = load i32, i32* @df, align 4
  %tmp0_v2.i8.i = shl i32 %tmp0_v1.i7.i, 2
  %tmp4_v.i9.i = add i32 %tmp0_v2.i8.i, %r_esi.030
  %tmp4_v3.i.i = add i32 %tmp0_v2.i8.i, %r_edi.031
  %tmp4_v5.i.i = add nsw i32 %r_ecx.029, -1
  %.not.i.i = icmp eq i32 %tmp4_v5.i.i, 0
  br i1 %.not.i.i, label %BB_80492EC.i.lr.ph, label %Func_80492DE.exit.i

BB_80492EC.i:                                     ; preds = %BB_80492EC.i.lr.ph, %BB_80492EC.i
  %28 = phi i32* [ %39, %BB_80492EC.i.lr.ph ], [ %36, %BB_80492EC.i ]
  %r_ecx.235 = phi i32 [ 0, %BB_80492EC.i.lr.ph ], [ %tmp2_v4.i72.i, %BB_80492EC.i ]
  %r_ebp.134 = phi i32 [ %tmp2_v4.i46.i, %BB_80492EC.i.lr.ph ], [ %.pn27, %BB_80492EC.i ]
  %r_ebx.133 = phi i32 [ 134529024, %BB_80492EC.i.lr.ph ], [ %.pn26, %BB_80492EC.i ]
  store i32 10, i32* %19, align 16
  store i32 134517494, i32* %20, align 4
  %arg.i.i18 = load i32, i32* %19, align 16
  %29 = tail call i32 @putchar(i32 %arg.i.i18)  nounwind 
  %tmp2_v.i3.i = add i32 %r_ebp.134, -256
  %30 = load i32, i32* %28, align 4
  %tmp15_v3.i.i = mul i32 %30, 104
  %tmp0_v5.i4.i = add i32 %tmp15_v3.i.i, %tmp2_v.i3.i
  store i32 %tmp0_v5.i4.i, i32* %40, align 4
  %tmp2_v8.i5.i = add i32 %r_ebx.133, -8147
  store i32 %tmp2_v8.i5.i, i32* %19, align 16
  store i32 134517530, i32* %20, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.235, i32 inreg noundef %tmp2_v.i3.i, i32 noundef %tmp2_v11.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !212
  %32 = load i32, i32* %28, align 4
  %tmp15_v2.i.i = mul i32 %32, 104
  %tmp2_v4.i72.i = add i32 %r_ebp.134, -24
  %tmp0_v5.i73.i = add i32 %r_ebp.134, -156
  %tmp0_v6.i74.i = add i32 %tmp0_v5.i73.i, %tmp15_v2.i.i
  %33 = inttoptr i32 %tmp0_v6.i74.i to i32*
  %34 = load i32, i32* %33, align 4
  store i32 134517556, i32* %9, align 4
  %switch6 = icmp eq i32 %34, 134517238
  %. = select i1 %switch6, i32 134517254, i32 134517301
;-------------------------------
; Replace: %spi.bis.698 = ptrtoint[16 x i8]* @str.bis.698 to i32
  %sp0.36 = alloca [16 x i8]
;-------------------------------
; Replace: store [16 x i8] c"\0F\56\3E\61\1F\2D\19\27\47\3D\5A\17\2E\06\3F\46", [16 x i8]* %sp0.36
  %sp147 = alloca [16 x i8]
  
;-------------------------------
; Replace: %s0.147 = load [2 x i8], [2 x i8]* @str.0.147
  %cipher.ptr.444 = alloca [5 x i8]
  store [5 x i8] c"\44\31\59\3d\00", [5 x i8]* %cipher.ptr.444
  %cipher.444 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.444, i32 0, i32 0
  %plain.ptr.444 = tail call i8* @base64_decode(i8* %cipher.444)
  %spi444 = bitcast i8* %plain.ptr.444 to [2 x i8]*
  %s0.147 = load [2 x i8], [2 x i8]* %spi444
;-------------------------------
  %sp0.147 = bitcast [16 x i8]* %sp147 to [2 x i8]*
  store [2 x i8] %s0.147, [2 x i8]* %sp0.147
  %next0.147 = getelementptr [16 x i8], [16 x i8]* %sp147, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.147 = load [2 x i8], [2 x i8]* @str.1.147
  %cipher.ptr.443 = alloca [5 x i8]
  store [5 x i8] c"\50\6d\45\3d\00", [5 x i8]* %cipher.ptr.443
  %cipher.443 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.443, i32 0, i32 0
  %plain.ptr.443 = tail call i8* @base64_decode(i8* %cipher.443)
  %spi443 = bitcast i8* %plain.ptr.443 to [2 x i8]*
  %s1.147 = load [2 x i8], [2 x i8]* %spi443
;-------------------------------
  %sp1.147 = bitcast i8* %next0.147 to [2 x i8]*
  store [2 x i8] %s1.147, [2 x i8]* %sp1.147
  %next1.147 = getelementptr [16 x i8], [16 x i8]* %sp147, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.147 = load [2 x i8], [2 x i8]* @str.2.147
  %cipher.ptr.445 = alloca [5 x i8]
  store [5 x i8] c"\48\79\30\3d\00", [5 x i8]* %cipher.ptr.445
  %cipher.445 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.445, i32 0, i32 0
  %plain.ptr.445 = tail call i8* @base64_decode(i8* %cipher.445)
  %spi445 = bitcast i8* %plain.ptr.445 to [2 x i8]*
  %s2.147 = load [2 x i8], [2 x i8]* %spi445
;-------------------------------
  %sp2.147 = bitcast i8* %next1.147 to [2 x i8]*
  store [2 x i8] %s2.147, [2 x i8]* %sp2.147
  %next2.147 = getelementptr [16 x i8], [16 x i8]* %sp147, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.147 = load [2 x i8], [2 x i8]* @str.3.147
  %cipher.ptr.449 = alloca [5 x i8]
  store [5 x i8] c"\47\53\63\3d\00", [5 x i8]* %cipher.ptr.449
  %cipher.449 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.449, i32 0, i32 0
  %plain.ptr.449 = tail call i8* @base64_decode(i8* %cipher.449)
  %spi449 = bitcast i8* %plain.ptr.449 to [2 x i8]*
  %s3.147 = load [2 x i8], [2 x i8]* %spi449
;-------------------------------
  %sp3.147 = bitcast i8* %next2.147 to [2 x i8]*
  store [2 x i8] %s3.147, [2 x i8]* %sp3.147
  %next3.147 = getelementptr [16 x i8], [16 x i8]* %sp147, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.147 = load [2 x i8], [2 x i8]* @str.4.147
  %cipher.ptr.447 = alloca [5 x i8]
  store [5 x i8] c"\52\7a\30\3d\00", [5 x i8]* %cipher.ptr.447
  %cipher.447 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.447, i32 0, i32 0
  %plain.ptr.447 = tail call i8* @base64_decode(i8* %cipher.447)
  %spi447 = bitcast i8* %plain.ptr.447 to [2 x i8]*
  %s4.147 = load [2 x i8], [2 x i8]* %spi447
;-------------------------------
  %sp4.147 = bitcast i8* %next3.147 to [2 x i8]*
  store [2 x i8] %s4.147, [2 x i8]* %sp4.147
  %next4.147 = getelementptr [16 x i8], [16 x i8]* %sp147, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.147 = load [2 x i8], [2 x i8]* @str.5.147
  %cipher.ptr.442 = alloca [5 x i8]
  store [5 x i8] c"\57\68\63\3d\00", [5 x i8]* %cipher.ptr.442
  %cipher.442 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.442, i32 0, i32 0
  %plain.ptr.442 = tail call i8* @base64_decode(i8* %cipher.442)
  %spi442 = bitcast i8* %plain.ptr.442 to [2 x i8]*
  %s5.147 = load [2 x i8], [2 x i8]* %spi442
;-------------------------------
  %sp5.147 = bitcast i8* %next4.147 to [2 x i8]*
  store [2 x i8] %s5.147, [2 x i8]* %sp5.147
  %next5.147 = getelementptr [16 x i8], [16 x i8]* %sp147, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.147 = load [2 x i8], [2 x i8]* @str.6.147
  %cipher.ptr.446 = alloca [5 x i8]
  store [5 x i8] c"\4c\67\59\3d\00", [5 x i8]* %cipher.ptr.446
  %cipher.446 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.446, i32 0, i32 0
  %plain.ptr.446 = tail call i8* @base64_decode(i8* %cipher.446)
  %spi446 = bitcast i8* %plain.ptr.446 to [2 x i8]*
  %s6.147 = load [2 x i8], [2 x i8]* %spi446
;-------------------------------
  %sp6.147 = bitcast i8* %next5.147 to [2 x i8]*
  store [2 x i8] %s6.147, [2 x i8]* %sp6.147
  %next6.147 = getelementptr [16 x i8], [16 x i8]* %sp147, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.147 = load [2 x i8], [2 x i8]* @str.7.147
  %cipher.ptr.448 = alloca [5 x i8]
  store [5 x i8] c"\50\30\59\3d\00", [5 x i8]* %cipher.ptr.448
  %cipher.448 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.448, i32 0, i32 0
  %plain.ptr.448 = tail call i8* @base64_decode(i8* %cipher.448)
  %spi448 = bitcast i8* %plain.ptr.448 to [2 x i8]*
  %s7.147 = load [2 x i8], [2 x i8]* %spi448
;-------------------------------
  %sp7.147 = bitcast i8* %next6.147 to [2 x i8]*
  store [2 x i8] %s7.147, [2 x i8]* %sp7.147

  %spi147 = load [16 x i8], [16 x i8]* %sp147
  store [16 x i8] %spi147, [16 x i8]* %sp0.36
;-------------------------------
  %sp0.1.36 = bitcast [16 x i8]* %sp0.36 to i128*
  %i0.36 = load i128, i128* %sp0.1.36

  %sp1.36 = alloca [16 x i8]
;-------------------------------
; Replace: store [16 x i8] c"\6e\32\5a\41\76\43\6a\53\35\48\39\63\47\69\51\46", [16 x i8]* %sp1.36
  %sp148 = alloca [16 x i8]
  
;-------------------------------
; Replace: %s0.148 = load [2 x i8], [2 x i8]* @str.0.148
  %cipher.ptr.451 = alloca [5 x i8]
  store [5 x i8] c"\62\6a\49\3d\00", [5 x i8]* %cipher.ptr.451
  %cipher.451 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.451, i32 0, i32 0
  %plain.ptr.451 = tail call i8* @base64_decode(i8* %cipher.451)
  %spi451 = bitcast i8* %plain.ptr.451 to [2 x i8]*
  %s0.148 = load [2 x i8], [2 x i8]* %spi451
;-------------------------------
  %sp0.148 = bitcast [16 x i8]* %sp148 to [2 x i8]*
  store [2 x i8] %s0.148, [2 x i8]* %sp0.148
  %next0.148 = getelementptr [16 x i8], [16 x i8]* %sp148, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.148 = load [2 x i8], [2 x i8]* @str.1.148
  %cipher.ptr.452 = alloca [5 x i8]
  store [5 x i8] c"\57\6b\45\3d\00", [5 x i8]* %cipher.ptr.452
  %cipher.452 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.452, i32 0, i32 0
  %plain.ptr.452 = tail call i8* @base64_decode(i8* %cipher.452)
  %spi452 = bitcast i8* %plain.ptr.452 to [2 x i8]*
  %s1.148 = load [2 x i8], [2 x i8]* %spi452
;-------------------------------
  %sp1.148 = bitcast i8* %next0.148 to [2 x i8]*
  store [2 x i8] %s1.148, [2 x i8]* %sp1.148
  %next1.148 = getelementptr [16 x i8], [16 x i8]* %sp148, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.148 = load [2 x i8], [2 x i8]* @str.2.148
  %cipher.ptr.450 = alloca [5 x i8]
  store [5 x i8] c"\64\6b\4d\3d\00", [5 x i8]* %cipher.ptr.450
  %cipher.450 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.450, i32 0, i32 0
  %plain.ptr.450 = tail call i8* @base64_decode(i8* %cipher.450)
  %spi450 = bitcast i8* %plain.ptr.450 to [2 x i8]*
  %s2.148 = load [2 x i8], [2 x i8]* %spi450
;-------------------------------
  %sp2.148 = bitcast i8* %next1.148 to [2 x i8]*
  store [2 x i8] %s2.148, [2 x i8]* %sp2.148
  %next2.148 = getelementptr [16 x i8], [16 x i8]* %sp148, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.148 = load [2 x i8], [2 x i8]* @str.3.148
  %cipher.ptr.454 = alloca [5 x i8]
  store [5 x i8] c"\61\6c\4d\3d\00", [5 x i8]* %cipher.ptr.454
  %cipher.454 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.454, i32 0, i32 0
  %plain.ptr.454 = tail call i8* @base64_decode(i8* %cipher.454)
  %spi454 = bitcast i8* %plain.ptr.454 to [2 x i8]*
  %s3.148 = load [2 x i8], [2 x i8]* %spi454
;-------------------------------
  %sp3.148 = bitcast i8* %next2.148 to [2 x i8]*
  store [2 x i8] %s3.148, [2 x i8]* %sp3.148
  %next3.148 = getelementptr [16 x i8], [16 x i8]* %sp148, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.148 = load [2 x i8], [2 x i8]* @str.4.148
  %cipher.ptr.456 = alloca [5 x i8]
  store [5 x i8] c"\4e\55\67\3d\00", [5 x i8]* %cipher.ptr.456
  %cipher.456 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.456, i32 0, i32 0
  %plain.ptr.456 = tail call i8* @base64_decode(i8* %cipher.456)
  %spi456 = bitcast i8* %plain.ptr.456 to [2 x i8]*
  %s4.148 = load [2 x i8], [2 x i8]* %spi456
;-------------------------------
  %sp4.148 = bitcast i8* %next3.148 to [2 x i8]*
  store [2 x i8] %s4.148, [2 x i8]* %sp4.148
  %next4.148 = getelementptr [16 x i8], [16 x i8]* %sp148, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.148 = load [2 x i8], [2 x i8]* @str.5.148
  %cipher.ptr.457 = alloca [5 x i8]
  store [5 x i8] c"\4f\57\4d\3d\00", [5 x i8]* %cipher.ptr.457
  %cipher.457 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.457, i32 0, i32 0
  %plain.ptr.457 = tail call i8* @base64_decode(i8* %cipher.457)
  %spi457 = bitcast i8* %plain.ptr.457 to [2 x i8]*
  %s5.148 = load [2 x i8], [2 x i8]* %spi457
;-------------------------------
  %sp5.148 = bitcast i8* %next4.148 to [2 x i8]*
  store [2 x i8] %s5.148, [2 x i8]* %sp5.148
  %next5.148 = getelementptr [16 x i8], [16 x i8]* %sp148, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.148 = load [2 x i8], [2 x i8]* @str.6.148
  %cipher.ptr.453 = alloca [5 x i8]
  store [5 x i8] c"\52\32\6b\3d\00", [5 x i8]* %cipher.ptr.453
  %cipher.453 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.453, i32 0, i32 0
  %plain.ptr.453 = tail call i8* @base64_decode(i8* %cipher.453)
  %spi453 = bitcast i8* %plain.ptr.453 to [2 x i8]*
  %s6.148 = load [2 x i8], [2 x i8]* %spi453
;-------------------------------
  %sp6.148 = bitcast i8* %next5.148 to [2 x i8]*
  store [2 x i8] %s6.148, [2 x i8]* %sp6.148
  %next6.148 = getelementptr [16 x i8], [16 x i8]* %sp148, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.148 = load [2 x i8], [2 x i8]* @str.7.148
  %cipher.ptr.455 = alloca [5 x i8]
  store [5 x i8] c"\55\55\59\3d\00", [5 x i8]* %cipher.ptr.455
  %cipher.455 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.455, i32 0, i32 0
  %plain.ptr.455 = tail call i8* @base64_decode(i8* %cipher.455)
  %spi455 = bitcast i8* %plain.ptr.455 to [2 x i8]*
  %s7.148 = load [2 x i8], [2 x i8]* %spi455
;-------------------------------
  %sp7.148 = bitcast i8* %next6.148 to [2 x i8]*
  store [2 x i8] %s7.148, [2 x i8]* %sp7.148

  %spi148 = load [16 x i8], [16 x i8]* %sp148
  store [16 x i8] %spi148, [16 x i8]* %sp1.36
;-------------------------------
  %sp1.1.36 = bitcast [16 x i8]* %sp1.36 to i128*
  %i1.36 = load i128, i128* %sp1.1.36

  %xp36 = xor i128 %i0.36, %i1.36

  %fi.36 = alloca i128
  store i128 %xp36, i128* %fi.36

  %spi36 = bitcast i128* %fi.36 to [16 x i8]*
  %spi.bis.698 = ptrtoint[16 x i8]* %spi36 to i32
;-------------------------------
;-------------------------------
; Replace: %spi.bis.699 = ptrtoint[21 x i8]* @str.bis.699 to i32
  %sp0.37 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\46\31\26\17\08\56\22\27\79\3D\0A\02\26\3F\05\10\35\31\0E\22\51", [21 x i8]* %sp0.37
  %sp149 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.149 = load [2 x i8], [2 x i8]* @str.0.149
  %cipher.ptr.462 = alloca [5 x i8]
  store [5 x i8] c"\52\6a\45\3d\00", [5 x i8]* %cipher.ptr.462
  %cipher.462 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.462, i32 0, i32 0
  %plain.ptr.462 = tail call i8* @base64_decode(i8* %cipher.462)
  %spi462 = bitcast i8* %plain.ptr.462 to [2 x i8]*
  %s0.149 = load [2 x i8], [2 x i8]* %spi462
;-------------------------------
  %sp0.149 = bitcast [21 x i8]* %sp149 to [2 x i8]*
  store [2 x i8] %s0.149, [2 x i8]* %sp0.149
  %next0.149 = getelementptr [21 x i8], [21 x i8]* %sp149, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.149 = load [3 x i8], [3 x i8]* @str.1.149
  %cipher.ptr.464 = alloca [5 x i8]
  store [5 x i8] c"\4a\68\63\49\00", [5 x i8]* %cipher.ptr.464
  %cipher.464 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.464, i32 0, i32 0
  %plain.ptr.464 = tail call i8* @base64_decode(i8* %cipher.464)
  %spi464 = bitcast i8* %plain.ptr.464 to [3 x i8]*
  %s1.149 = load [3 x i8], [3 x i8]* %spi464
;-------------------------------
  %sp1.149 = bitcast i8* %next0.149 to [3 x i8]*
  store [3 x i8] %s1.149, [3 x i8]* %sp1.149
  %next1.149 = getelementptr [21 x i8], [21 x i8]* %sp149, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.149 = load [2 x i8], [2 x i8]* @str.2.149
  %cipher.ptr.465 = alloca [5 x i8]
  store [5 x i8] c"\56\69\49\3d\00", [5 x i8]* %cipher.ptr.465
  %cipher.465 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.465, i32 0, i32 0
  %plain.ptr.465 = tail call i8* @base64_decode(i8* %cipher.465)
  %spi465 = bitcast i8* %plain.ptr.465 to [2 x i8]*
  %s2.149 = load [2 x i8], [2 x i8]* %spi465
;-------------------------------
  %sp2.149 = bitcast i8* %next1.149 to [2 x i8]*
  store [2 x i8] %s2.149, [2 x i8]* %sp2.149
  %next2.149 = getelementptr [21 x i8], [21 x i8]* %sp149, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.149 = load [3 x i8], [3 x i8]* @str.3.149
  %cipher.ptr.461 = alloca [5 x i8]
  store [5 x i8] c"\4a\33\6b\39\00", [5 x i8]* %cipher.ptr.461
  %cipher.461 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.461, i32 0, i32 0
  %plain.ptr.461 = tail call i8* @base64_decode(i8* %cipher.461)
  %spi461 = bitcast i8* %plain.ptr.461 to [3 x i8]*
  %s3.149 = load [3 x i8], [3 x i8]* %spi461
;-------------------------------
  %sp3.149 = bitcast i8* %next2.149 to [3 x i8]*
  store [3 x i8] %s3.149, [3 x i8]* %sp3.149
  %next3.149 = getelementptr [21 x i8], [21 x i8]* %sp149, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.149 = load [3 x i8], [3 x i8]* @str.4.149
  %cipher.ptr.459 = alloca [5 x i8]
  store [5 x i8] c"\43\67\49\6d\00", [5 x i8]* %cipher.ptr.459
  %cipher.459 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.459, i32 0, i32 0
  %plain.ptr.459 = tail call i8* @base64_decode(i8* %cipher.459)
  %spi459 = bitcast i8* %plain.ptr.459 to [3 x i8]*
  %s4.149 = load [3 x i8], [3 x i8]* %spi459
;-------------------------------
  %sp4.149 = bitcast i8* %next3.149 to [3 x i8]*
  store [3 x i8] %s4.149, [3 x i8]* %sp4.149
  %next4.149 = getelementptr [21 x i8], [21 x i8]* %sp149, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.149 = load [2 x i8], [2 x i8]* @str.5.149
  %cipher.ptr.458 = alloca [5 x i8]
  store [5 x i8] c"\50\77\55\3d\00", [5 x i8]* %cipher.ptr.458
  %cipher.458 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.458, i32 0, i32 0
  %plain.ptr.458 = tail call i8* @base64_decode(i8* %cipher.458)
  %spi458 = bitcast i8* %plain.ptr.458 to [2 x i8]*
  %s5.149 = load [2 x i8], [2 x i8]* %spi458
;-------------------------------
  %sp5.149 = bitcast i8* %next4.149 to [2 x i8]*
  store [2 x i8] %s5.149, [2 x i8]* %sp5.149
  %next5.149 = getelementptr [21 x i8], [21 x i8]* %sp149, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.149 = load [3 x i8], [3 x i8]* @str.6.149
  %cipher.ptr.460 = alloca [5 x i8]
  store [5 x i8] c"\45\44\55\78\00", [5 x i8]* %cipher.ptr.460
  %cipher.460 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.460, i32 0, i32 0
  %plain.ptr.460 = tail call i8* @base64_decode(i8* %cipher.460)
  %spi460 = bitcast i8* %plain.ptr.460 to [3 x i8]*
  %s6.149 = load [3 x i8], [3 x i8]* %spi460
;-------------------------------
  %sp6.149 = bitcast i8* %next5.149 to [3 x i8]*
  store [3 x i8] %s6.149, [3 x i8]* %sp6.149
  %next6.149 = getelementptr [21 x i8], [21 x i8]* %sp149, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.149 = load [3 x i8], [3 x i8]* @str.7.149
  %cipher.ptr.463 = alloca [5 x i8]
  store [5 x i8] c"\44\69\4a\52\00", [5 x i8]* %cipher.ptr.463
  %cipher.463 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.463, i32 0, i32 0
  %plain.ptr.463 = tail call i8* @base64_decode(i8* %cipher.463)
  %spi463 = bitcast i8* %plain.ptr.463 to [3 x i8]*
  %s7.149 = load [3 x i8], [3 x i8]* %spi463
;-------------------------------
  %sp7.149 = bitcast i8* %next6.149 to [3 x i8]*
  store [3 x i8] %s7.149, [3 x i8]* %sp7.149

  %spi149 = load [21 x i8], [21 x i8]* %sp149
  store [21 x i8] %spi149, [21 x i8]* %sp0.37
;-------------------------------
  %sp0.1.37 = bitcast [21 x i8]* %sp0.37 to i168*
  %i0.37 = load i168, i168* %sp0.1.37

  %sp1.37 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\35\44\44\63\7a\37\41\53\59\54\64\71\52\4d\70\73\41\58\61\4c\51", [21 x i8]* %sp1.37
  %sp150 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.150 = load [2 x i8], [2 x i8]* @str.0.150
  %cipher.ptr.470 = alloca [5 x i8]
  store [5 x i8] c"\4e\55\51\3d\00", [5 x i8]* %cipher.ptr.470
  %cipher.470 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.470, i32 0, i32 0
  %plain.ptr.470 = tail call i8* @base64_decode(i8* %cipher.470)
  %spi470 = bitcast i8* %plain.ptr.470 to [2 x i8]*
  %s0.150 = load [2 x i8], [2 x i8]* %spi470
;-------------------------------
  %sp0.150 = bitcast [21 x i8]* %sp150 to [2 x i8]*
  store [2 x i8] %s0.150, [2 x i8]* %sp0.150
  %next0.150 = getelementptr [21 x i8], [21 x i8]* %sp150, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.150 = load [3 x i8], [3 x i8]* @str.1.150
  %cipher.ptr.467 = alloca [5 x i8]
  store [5 x i8] c"\52\47\4e\36\00", [5 x i8]* %cipher.ptr.467
  %cipher.467 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.467, i32 0, i32 0
  %plain.ptr.467 = tail call i8* @base64_decode(i8* %cipher.467)
  %spi467 = bitcast i8* %plain.ptr.467 to [3 x i8]*
  %s1.150 = load [3 x i8], [3 x i8]* %spi467
;-------------------------------
  %sp1.150 = bitcast i8* %next0.150 to [3 x i8]*
  store [3 x i8] %s1.150, [3 x i8]* %sp1.150
  %next1.150 = getelementptr [21 x i8], [21 x i8]* %sp150, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.150 = load [2 x i8], [2 x i8]* @str.2.150
  %cipher.ptr.466 = alloca [5 x i8]
  store [5 x i8] c"\4e\30\45\3d\00", [5 x i8]* %cipher.ptr.466
  %cipher.466 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.466, i32 0, i32 0
  %plain.ptr.466 = tail call i8* @base64_decode(i8* %cipher.466)
  %spi466 = bitcast i8* %plain.ptr.466 to [2 x i8]*
  %s2.150 = load [2 x i8], [2 x i8]* %spi466
;-------------------------------
  %sp2.150 = bitcast i8* %next1.150 to [2 x i8]*
  store [2 x i8] %s2.150, [2 x i8]* %sp2.150
  %next2.150 = getelementptr [21 x i8], [21 x i8]* %sp150, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.150 = load [3 x i8], [3 x i8]* @str.3.150
  %cipher.ptr.472 = alloca [5 x i8]
  store [5 x i8] c"\55\31\6c\55\00", [5 x i8]* %cipher.ptr.472
  %cipher.472 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.472, i32 0, i32 0
  %plain.ptr.472 = tail call i8* @base64_decode(i8* %cipher.472)
  %spi472 = bitcast i8* %plain.ptr.472 to [3 x i8]*
  %s3.150 = load [3 x i8], [3 x i8]* %spi472
;-------------------------------
  %sp3.150 = bitcast i8* %next2.150 to [3 x i8]*
  store [3 x i8] %s3.150, [3 x i8]* %sp3.150
  %next3.150 = getelementptr [21 x i8], [21 x i8]* %sp150, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.150 = load [3 x i8], [3 x i8]* @str.4.150
  %cipher.ptr.471 = alloca [5 x i8]
  store [5 x i8] c"\5a\48\46\53\00", [5 x i8]* %cipher.ptr.471
  %cipher.471 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.471, i32 0, i32 0
  %plain.ptr.471 = tail call i8* @base64_decode(i8* %cipher.471)
  %spi471 = bitcast i8* %plain.ptr.471 to [3 x i8]*
  %s4.150 = load [3 x i8], [3 x i8]* %spi471
;-------------------------------
  %sp4.150 = bitcast i8* %next3.150 to [3 x i8]*
  store [3 x i8] %s4.150, [3 x i8]* %sp4.150
  %next4.150 = getelementptr [21 x i8], [21 x i8]* %sp150, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.150 = load [2 x i8], [2 x i8]* @str.5.150
  %cipher.ptr.473 = alloca [5 x i8]
  store [5 x i8] c"\54\58\41\3d\00", [5 x i8]* %cipher.ptr.473
  %cipher.473 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.473, i32 0, i32 0
  %plain.ptr.473 = tail call i8* @base64_decode(i8* %cipher.473)
  %spi473 = bitcast i8* %plain.ptr.473 to [2 x i8]*
  %s5.150 = load [2 x i8], [2 x i8]* %spi473
;-------------------------------
  %sp5.150 = bitcast i8* %next4.150 to [2 x i8]*
  store [2 x i8] %s5.150, [2 x i8]* %sp5.150
  %next5.150 = getelementptr [21 x i8], [21 x i8]* %sp150, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.150 = load [3 x i8], [3 x i8]* @str.6.150
  %cipher.ptr.468 = alloca [5 x i8]
  store [5 x i8] c"\63\30\46\59\00", [5 x i8]* %cipher.ptr.468
  %cipher.468 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.468, i32 0, i32 0
  %plain.ptr.468 = tail call i8* @base64_decode(i8* %cipher.468)
  %spi468 = bitcast i8* %plain.ptr.468 to [3 x i8]*
  %s6.150 = load [3 x i8], [3 x i8]* %spi468
;-------------------------------
  %sp6.150 = bitcast i8* %next5.150 to [3 x i8]*
  store [3 x i8] %s6.150, [3 x i8]* %sp6.150
  %next6.150 = getelementptr [21 x i8], [21 x i8]* %sp150, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.150 = load [3 x i8], [3 x i8]* @str.7.150
  %cipher.ptr.469 = alloca [5 x i8]
  store [5 x i8] c"\59\55\78\52\00", [5 x i8]* %cipher.ptr.469
  %cipher.469 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.469, i32 0, i32 0
  %plain.ptr.469 = tail call i8* @base64_decode(i8* %cipher.469)
  %spi469 = bitcast i8* %plain.ptr.469 to [3 x i8]*
  %s7.150 = load [3 x i8], [3 x i8]* %spi469
;-------------------------------
  %sp7.150 = bitcast i8* %next6.150 to [3 x i8]*
  store [3 x i8] %s7.150, [3 x i8]* %sp7.150

  %spi150 = load [21 x i8], [21 x i8]* %sp150
  store [21 x i8] %spi150, [21 x i8]* %sp1.37
;-------------------------------
  %sp1.1.37 = bitcast [21 x i8]* %sp1.37 to i168*
  %i1.37 = load i168, i168* %sp1.1.37

  %xp37 = xor i168 %i0.37, %i1.37

  %fi.37 = alloca i168
  store i168 %xp37, i168* %fi.37

  %spi37 = bitcast i168* %fi.37 to [21 x i8]*
  %spi.bis.699 = ptrtoint[21 x i8]* %spi37 to i32
;-------------------------------
  %.39 = select i1 %switch6, i32 %spi.bis.698, i32 %spi.bis.699
  %.40 = select i1 %switch6, i32 134517276, i32 134517323
  store i32 %r_ebp.134, i32* %41, align 8
  store i32 %r_ebx.133, i32* %40, align 4
  store i32 %., i32* %20, align 4
  store i32 %.39, i32* %42, align 16
  store i32 %.40, i32* %43, align 4
  %35 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v4.i72.i, i32 inreg noundef %.39, i32 noundef %tmp2_v2.i9.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" 
  %.pn26 = load i32, i32* %40, align 4
  %.pn27 = load i32, i32* %41, align 8
  %tmp2_v.i18.i = add i32 %.pn27, -260
  %36 = inttoptr i32 %tmp2_v.i18.i to i32*
  %37 = load i32, i32* %36, align 4
  %tmp0_v1.i20.i = add i32 %37, 1
  store i32 %tmp0_v1.i20.i, i32* %36, align 4
  %38 = icmp slt i32 %tmp0_v1.i20.i, 2
  br i1 %38, label %BB_80492EC.i, label %.exit

BB_80492EC.i.lr.ph:                               ; preds = %Func_80492DE.exit.i
  %tmp2_v.i87.i = add i32 %tmp0_v.i43.i, -268
  %39 = inttoptr i32 %tmp2_v.i87.i to i32*
  store i32 0, i32* %39, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i43.i, -284
  %40 = inttoptr i32 %tmp2_v7.i.i to i32*
  %tmp2_v.i.i.i = add i32 %tmp0_v.i43.i, -280
  %41 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %tmp2_v2.i9.i.i = add i32 %tmp0_v.i43.i, -304
  %42 = inttoptr i32 %tmp2_v2.i9.i.i to i32*
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i43.i, -308
  %43 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  br label %BB_80492EC.i

.exit:                                            ; preds = %BB_80492EC.i
  ret void
}
define internal fastcc void @check_if_array_sorted79(i32 %arg_esp) unnamed_addr  norecurse  !retregs !197 {
Func_804929C.exit.i:
  %tmp2_v.i115.i = add i32 %arg_esp, 4
  %tmp0_v.i116.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i117.i = add i32 %tmp0_v.i116.i, -4
  %2 = inttoptr i32 %tmp2_v3.i117.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i118.i = add i32 %tmp0_v.i116.i, -8
  %3 = inttoptr i32 %tmp2_v4.i118.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i120.i = add i32 %tmp0_v.i116.i, -12
  %4 = inttoptr i32 %tmp2_v5.i120.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i122.i = add i32 %tmp0_v.i116.i, -16
  %5 = inttoptr i32 %tmp2_v6.i122.i to i32*
  store i32 %tmp2_v.i115.i, i32* %5, align 16
  %tmp2_v8.i123.i = add i32 %tmp0_v.i116.i, -116
  %6 = inttoptr i32 %tmp2_v8.i123.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i75.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i79.i = add i32 %tmp0_v.i116.i, -20
  %9 = inttoptr i32 %tmp2_v2.i79.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i80.i = add i32 %tmp0_v.i116.i, -100
  %10 = inttoptr i32 %tmp2_v3.i80.i to i32*
  store i32 1, i32* %10, align 4
  %tmp2_v4.i81.i = add i32 %tmp0_v.i116.i, -96
  %11 = inttoptr i32 %tmp2_v4.i81.i to i32*
  store i32 2, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i116.i, -92
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 3, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i116.i, -88
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 4, i32* %13, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i116.i, -84
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i116.i, -80
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 6, i32* %15, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i116.i, -76
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 7, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i116.i, -72
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 8, i32* %17, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i116.i, -68
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 9, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i116.i, -64
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 10, i32* %19, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i116.i, -60
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 10, i32* %20, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i116.i, -56
  %21 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 9, i32* %21, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i116.i, -52
  %22 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 8, i32* %22, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i116.i, -48
  %23 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 7, i32* %23, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i116.i, -44
  %24 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 6, i32* %24, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i116.i, -40
  %25 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 5, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i116.i, -36
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 4, i32* %26, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i116.i, -32
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 3, i32* %27, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i116.i, -28
  %28 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 2, i32* %28, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i116.i, -24
  %29 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 1, i32* %29, align 8
  %tmp2_v24.i.i = add i32 %tmp0_v.i116.i, -124
  %30 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 10, i32* %30, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i116.i, -128
  %31 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 %tmp2_v3.i80.i, i32* %31, align 16
  %tmp2_v27.i.i = add i32 %tmp0_v.i116.i, -132
  %32 = inttoptr i32 %tmp2_v27.i.i to i32*
  store i32 134517404, i32* %32, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i116.i, -136
  %33 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i118.i, i32* %33, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i116.i, -156
  %34 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517817, i32* %34, align 4
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i116.i, -140
  %35 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* %30, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %BB_804945A.i.i, label %Func_sorted_ascending.exit

BB_804945A.i.i:                                   ; preds = %BB_8049490.i.i, %Func_804929C.exit.i
  %storemerge14.i = phi i32 [ %tmp0_v1.i7.i.i, %BB_8049490.i.i ], [ 1, %Func_804929C.exit.i ]
  %tmp0_v1.i.i.i = shl i32 %storemerge14.i, 2
  %38 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i8 = add i32 %38, %tmp0_v1.i.i.i
  %tmp0_v4.i.i.i = add i32 %tmp4_v.i.i.i8, -4
  %39 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %40 = load i32, i32* %39, align 4
  %41 = inttoptr i32 %tmp4_v.i.i.i8 to i32*
  %42 = load i32, i32* %41, align 4
  %.not.i.i.i = icmp sgt i32 %40, %42
  %tmp0_v1.i7.i.i = add nuw nsw i32 %storemerge14.i, 1
  br i1 %.not.i.i.i, label %Func_sorted_ascending.exit, label %BB_8049490.i.i

BB_8049490.i.i:                                   ; preds = %BB_804945A.i.i
  store i32 %tmp0_v1.i7.i.i, i32* %35, align 4
  %43 = load i32, i32* %30, align 4
  %44 = icmp slt i32 %tmp0_v1.i7.i.i, %43
  br i1 %44, label %BB_804945A.i.i, label %Func_sorted_ascending.exit

Func_sorted_ascending.exit:                       ; preds = %BB_8049490.i.i, %BB_804945A.i.i, %Func_804929C.exit.i
  %45 = load i32, i32* %33, align 8
;-------------------------------
; Replace: %spi.bis.77 = ptrtoint[20 x i8]* @str.bis.77 to i32
  %sp0.45 = alloca [20 x i8]
;-------------------------------
; Replace: store [20 x i8] c"\51\0A\14\19\3C\03\11\06\0B\46\54\24\51\1C\05\55\2F\0B\24\43", [20 x i8]* %sp0.45
  %sp151 = alloca [20 x i8]
  
;-------------------------------
; Replace: %s0.151 = load [2 x i8], [2 x i8]* @str.0.151
  %cipher.ptr.474 = alloca [5 x i8]
  store [5 x i8] c"\55\51\6f\3d\00", [5 x i8]* %cipher.ptr.474
  %cipher.474 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.474, i32 0, i32 0
  %plain.ptr.474 = tail call i8* @base64_decode(i8* %cipher.474)
  %spi474 = bitcast i8* %plain.ptr.474 to [2 x i8]*
  %s0.151 = load [2 x i8], [2 x i8]* %spi474
;-------------------------------
  %sp0.151 = bitcast [20 x i8]* %sp151 to [2 x i8]*
  store [2 x i8] %s0.151, [2 x i8]* %sp0.151
  %next0.151 = getelementptr [20 x i8], [20 x i8]* %sp151, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.151 = load [3 x i8], [3 x i8]* @str.1.151
  %cipher.ptr.480 = alloca [5 x i8]
  store [5 x i8] c"\46\42\6b\38\00", [5 x i8]* %cipher.ptr.480
  %cipher.480 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.480, i32 0, i32 0
  %plain.ptr.480 = tail call i8* @base64_decode(i8* %cipher.480)
  %spi480 = bitcast i8* %plain.ptr.480 to [3 x i8]*
  %s1.151 = load [3 x i8], [3 x i8]* %spi480
;-------------------------------
  %sp1.151 = bitcast i8* %next0.151 to [3 x i8]*
  store [3 x i8] %s1.151, [3 x i8]* %sp1.151
  %next1.151 = getelementptr [20 x i8], [20 x i8]* %sp151, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.151 = load [2 x i8], [2 x i8]* @str.2.151
  %cipher.ptr.475 = alloca [5 x i8]
  store [5 x i8] c"\41\78\45\3d\00", [5 x i8]* %cipher.ptr.475
  %cipher.475 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.475, i32 0, i32 0
  %plain.ptr.475 = tail call i8* @base64_decode(i8* %cipher.475)
  %spi475 = bitcast i8* %plain.ptr.475 to [2 x i8]*
  %s2.151 = load [2 x i8], [2 x i8]* %spi475
;-------------------------------
  %sp2.151 = bitcast i8* %next1.151 to [2 x i8]*
  store [2 x i8] %s2.151, [2 x i8]* %sp2.151
  %next2.151 = getelementptr [20 x i8], [20 x i8]* %sp151, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.151 = load [3 x i8], [3 x i8]* @str.3.151
  %cipher.ptr.481 = alloca [5 x i8]
  store [5 x i8] c"\42\67\74\47\00", [5 x i8]* %cipher.ptr.481
  %cipher.481 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.481, i32 0, i32 0
  %plain.ptr.481 = tail call i8* @base64_decode(i8* %cipher.481)
  %spi481 = bitcast i8* %plain.ptr.481 to [3 x i8]*
  %s3.151 = load [3 x i8], [3 x i8]* %spi481
;-------------------------------
  %sp3.151 = bitcast i8* %next2.151 to [3 x i8]*
  store [3 x i8] %s3.151, [3 x i8]* %sp3.151
  %next3.151 = getelementptr [20 x i8], [20 x i8]* %sp151, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.151 = load [2 x i8], [2 x i8]* @str.4.151
  %cipher.ptr.476 = alloca [5 x i8]
  store [5 x i8] c"\56\43\51\3d\00", [5 x i8]* %cipher.ptr.476
  %cipher.476 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.476, i32 0, i32 0
  %plain.ptr.476 = tail call i8* @base64_decode(i8* %cipher.476)
  %spi476 = bitcast i8* %plain.ptr.476 to [2 x i8]*
  %s4.151 = load [2 x i8], [2 x i8]* %spi476
;-------------------------------
  %sp4.151 = bitcast i8* %next3.151 to [2 x i8]*
  store [2 x i8] %s4.151, [2 x i8]* %sp4.151
  %next4.151 = getelementptr [20 x i8], [20 x i8]* %sp151, i32 0, i32 12
  
;-------------------------------
; Replace: %s5.151 = load [3 x i8], [3 x i8]* @str.5.151
  %cipher.ptr.477 = alloca [5 x i8]
  store [5 x i8] c"\55\52\77\46\00", [5 x i8]* %cipher.ptr.477
  %cipher.477 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.477, i32 0, i32 0
  %plain.ptr.477 = tail call i8* @base64_decode(i8* %cipher.477)
  %spi477 = bitcast i8* %plain.ptr.477 to [3 x i8]*
  %s5.151 = load [3 x i8], [3 x i8]* %spi477
;-------------------------------
  %sp5.151 = bitcast i8* %next4.151 to [3 x i8]*
  store [3 x i8] %s5.151, [3 x i8]* %sp5.151
  %next5.151 = getelementptr [20 x i8], [20 x i8]* %sp151, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.151 = load [2 x i8], [2 x i8]* @str.6.151
  %cipher.ptr.479 = alloca [5 x i8]
  store [5 x i8] c"\56\53\38\3d\00", [5 x i8]* %cipher.ptr.479
  %cipher.479 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.479, i32 0, i32 0
  %plain.ptr.479 = tail call i8* @base64_decode(i8* %cipher.479)
  %spi479 = bitcast i8* %plain.ptr.479 to [2 x i8]*
  %s6.151 = load [2 x i8], [2 x i8]* %spi479
;-------------------------------
  %sp6.151 = bitcast i8* %next5.151 to [2 x i8]*
  store [2 x i8] %s6.151, [2 x i8]* %sp6.151
  %next6.151 = getelementptr [20 x i8], [20 x i8]* %sp151, i32 0, i32 17
  
;-------------------------------
; Replace: %s7.151 = load [3 x i8], [3 x i8]* @str.7.151
  %cipher.ptr.478 = alloca [5 x i8]
  store [5 x i8] c"\43\79\52\44\00", [5 x i8]* %cipher.ptr.478
  %cipher.478 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.478, i32 0, i32 0
  %plain.ptr.478 = tail call i8* @base64_decode(i8* %cipher.478)
  %spi478 = bitcast i8* %plain.ptr.478 to [3 x i8]*
  %s7.151 = load [3 x i8], [3 x i8]* %spi478
;-------------------------------
  %sp7.151 = bitcast i8* %next6.151 to [3 x i8]*
  store [3 x i8] %s7.151, [3 x i8]* %sp7.151

  %spi151 = load [20 x i8], [20 x i8]* %sp151
  store [20 x i8] %spi151, [20 x i8]* %sp0.45
;-------------------------------
  %sp0.1.45 = bitcast [20 x i8]* %sp0.45 to i160*
  %i0.45 = load i160, i160* %sp0.1.45

  %sp1.45 = alloca [20 x i8]
;-------------------------------
; Replace: store [20 x i8] c"\30\78\66\78\45\32\31\6f\78\66\35\57\32\79\6b\31\46\65\43\43", [20 x i8]* %sp1.45
  %sp152 = alloca [20 x i8]
  
;-------------------------------
; Replace: %s0.152 = load [2 x i8], [2 x i8]* @str.0.152
  %cipher.ptr.489 = alloca [5 x i8]
  store [5 x i8] c"\4d\48\67\3d\00", [5 x i8]* %cipher.ptr.489
  %cipher.489 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.489, i32 0, i32 0
  %plain.ptr.489 = tail call i8* @base64_decode(i8* %cipher.489)
  %spi489 = bitcast i8* %plain.ptr.489 to [2 x i8]*
  %s0.152 = load [2 x i8], [2 x i8]* %spi489
;-------------------------------
  %sp0.152 = bitcast [20 x i8]* %sp152 to [2 x i8]*
  store [2 x i8] %s0.152, [2 x i8]* %sp0.152
  %next0.152 = getelementptr [20 x i8], [20 x i8]* %sp152, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.152 = load [3 x i8], [3 x i8]* @str.1.152
  %cipher.ptr.482 = alloca [5 x i8]
  store [5 x i8] c"\5a\6e\68\46\00", [5 x i8]* %cipher.ptr.482
  %cipher.482 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.482, i32 0, i32 0
  %plain.ptr.482 = tail call i8* @base64_decode(i8* %cipher.482)
  %spi482 = bitcast i8* %plain.ptr.482 to [3 x i8]*
  %s1.152 = load [3 x i8], [3 x i8]* %spi482
;-------------------------------
  %sp1.152 = bitcast i8* %next0.152 to [3 x i8]*
  store [3 x i8] %s1.152, [3 x i8]* %sp1.152
  %next1.152 = getelementptr [20 x i8], [20 x i8]* %sp152, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.152 = load [2 x i8], [2 x i8]* @str.2.152
  %cipher.ptr.483 = alloca [5 x i8]
  store [5 x i8] c"\4d\6a\45\3d\00", [5 x i8]* %cipher.ptr.483
  %cipher.483 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.483, i32 0, i32 0
  %plain.ptr.483 = tail call i8* @base64_decode(i8* %cipher.483)
  %spi483 = bitcast i8* %plain.ptr.483 to [2 x i8]*
  %s2.152 = load [2 x i8], [2 x i8]* %spi483
;-------------------------------
  %sp2.152 = bitcast i8* %next1.152 to [2 x i8]*
  store [2 x i8] %s2.152, [2 x i8]* %sp2.152
  %next2.152 = getelementptr [20 x i8], [20 x i8]* %sp152, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.152 = load [3 x i8], [3 x i8]* @str.3.152
  %cipher.ptr.484 = alloca [5 x i8]
  store [5 x i8] c"\62\33\68\6d\00", [5 x i8]* %cipher.ptr.484
  %cipher.484 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.484, i32 0, i32 0
  %plain.ptr.484 = tail call i8* @base64_decode(i8* %cipher.484)
  %spi484 = bitcast i8* %plain.ptr.484 to [3 x i8]*
  %s3.152 = load [3 x i8], [3 x i8]* %spi484
;-------------------------------
  %sp3.152 = bitcast i8* %next2.152 to [3 x i8]*
  store [3 x i8] %s3.152, [3 x i8]* %sp3.152
  %next3.152 = getelementptr [20 x i8], [20 x i8]* %sp152, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.152 = load [2 x i8], [2 x i8]* @str.4.152
  %cipher.ptr.485 = alloca [5 x i8]
  store [5 x i8] c"\4e\56\63\3d\00", [5 x i8]* %cipher.ptr.485
  %cipher.485 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.485, i32 0, i32 0
  %plain.ptr.485 = tail call i8* @base64_decode(i8* %cipher.485)
  %spi485 = bitcast i8* %plain.ptr.485 to [2 x i8]*
  %s4.152 = load [2 x i8], [2 x i8]* %spi485
;-------------------------------
  %sp4.152 = bitcast i8* %next3.152 to [2 x i8]*
  store [2 x i8] %s4.152, [2 x i8]* %sp4.152
  %next4.152 = getelementptr [20 x i8], [20 x i8]* %sp152, i32 0, i32 12
  
;-------------------------------
; Replace: %s5.152 = load [3 x i8], [3 x i8]* @str.5.152
  %cipher.ptr.488 = alloca [5 x i8]
  store [5 x i8] c"\4d\6e\6c\72\00", [5 x i8]* %cipher.ptr.488
  %cipher.488 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.488, i32 0, i32 0
  %plain.ptr.488 = tail call i8* @base64_decode(i8* %cipher.488)
  %spi488 = bitcast i8* %plain.ptr.488 to [3 x i8]*
  %s5.152 = load [3 x i8], [3 x i8]* %spi488
;-------------------------------
  %sp5.152 = bitcast i8* %next4.152 to [3 x i8]*
  store [3 x i8] %s5.152, [3 x i8]* %sp5.152
  %next5.152 = getelementptr [20 x i8], [20 x i8]* %sp152, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.152 = load [2 x i8], [2 x i8]* @str.6.152
  %cipher.ptr.487 = alloca [5 x i8]
  store [5 x i8] c"\4d\55\59\3d\00", [5 x i8]* %cipher.ptr.487
  %cipher.487 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.487, i32 0, i32 0
  %plain.ptr.487 = tail call i8* @base64_decode(i8* %cipher.487)
  %spi487 = bitcast i8* %plain.ptr.487 to [2 x i8]*
  %s6.152 = load [2 x i8], [2 x i8]* %spi487
;-------------------------------
  %sp6.152 = bitcast i8* %next5.152 to [2 x i8]*
  store [2 x i8] %s6.152, [2 x i8]* %sp6.152
  %next6.152 = getelementptr [20 x i8], [20 x i8]* %sp152, i32 0, i32 17
  
;-------------------------------
; Replace: %s7.152 = load [3 x i8], [3 x i8]* @str.7.152
  %cipher.ptr.486 = alloca [5 x i8]
  store [5 x i8] c"\5a\55\4e\44\00", [5 x i8]* %cipher.ptr.486
  %cipher.486 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.486, i32 0, i32 0
  %plain.ptr.486 = tail call i8* @base64_decode(i8* %cipher.486)
  %spi486 = bitcast i8* %plain.ptr.486 to [3 x i8]*
  %s7.152 = load [3 x i8], [3 x i8]* %spi486
;-------------------------------
  %sp7.152 = bitcast i8* %next6.152 to [3 x i8]*
  store [3 x i8] %s7.152, [3 x i8]* %sp7.152

  %spi152 = load [20 x i8], [20 x i8]* %sp152
  store [20 x i8] %spi152, [20 x i8]* %sp1.45
;-------------------------------
  %sp1.1.45 = bitcast [20 x i8]* %sp1.45 to i160*
  %i1.45 = load i160, i160* %sp1.1.45

  %xp45 = xor i160 %i0.45, %i1.45

  %fi.45 = alloca i160
  store i160 %xp45, i160* %fi.45

  %spi45 = bitcast i160* %fi.45 to [20 x i8]*
  %spi.bis.77 = ptrtoint[20 x i8]* %spi45 to i32
;-------------------------------
  store i32 %spi.bis.77, i32* %31, align 16
  store i32 134517426, i32* %32, align 4
  %arg.i.i = load i32, i32* %31, align 16
  %46 = inttoptr i32 %arg.i.i to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp84 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %46)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast84= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.219 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.219
  %cipher.219 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.219, i32 0, i32 0
  %plain.ptr.219 = tail call i8* @base64_decode(i8* %cipher.219)
  %spi219 = bitcast i8* %plain.ptr.219 to [1 x i8]*
  %cast84= getelementptr [1 x i8], [1 x i8]* %spi219, i64 0, i64 0
;-------------------------------
  %47 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast84)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  store i32 10, i32* %30, align 4
  %tmp2_v1.i4.i = add i32 %45, -52
  store i32 %tmp2_v1.i4.i, i32* %31, align 16
  store i32 134517463, i32* %32, align 4
  store i32 %45, i32* %33, align 8
  store i32 134517817, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %48 = load i32, i32* %30, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %BB_804945A.i.i22, label %Func_sorted_ascending.exit27

BB_804945A.i.i22:                                 ; preds = %BB_8049490.i.i23, %Func_sorted_ascending.exit
  %storemerge14.i16 = phi i32 [ %tmp0_v1.i7.i.i21, %BB_8049490.i.i23 ], [ 1, %Func_sorted_ascending.exit ]
  %tmp0_v1.i.i.i17 = shl i32 %storemerge14.i16, 2
  %50 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i18 = add i32 %50, %tmp0_v1.i.i.i17
  %tmp0_v4.i.i.i19 = add i32 %tmp4_v.i.i.i18, -4
  %51 = inttoptr i32 %tmp0_v4.i.i.i19 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = inttoptr i32 %tmp4_v.i.i.i18 to i32*
  %54 = load i32, i32* %53, align 4
  %.not.i.i.i20 = icmp sgt i32 %52, %54
  %tmp0_v1.i7.i.i21 = add nuw nsw i32 %storemerge14.i16, 1
  br i1 %.not.i.i.i20, label %Func_sorted_ascending.exit27, label %BB_8049490.i.i23

BB_8049490.i.i23:                                 ; preds = %BB_804945A.i.i22
  store i32 %tmp0_v1.i7.i.i21, i32* %35, align 4
  %55 = load i32, i32* %30, align 4
  %56 = icmp slt i32 %tmp0_v1.i7.i.i21, %55
  br i1 %56, label %BB_804945A.i.i22, label %Func_sorted_ascending.exit27

Func_sorted_ascending.exit27:                     ; preds = %BB_8049490.i.i23, %BB_804945A.i.i22, %Func_sorted_ascending.exit
  %57 = load i32, i32* %33, align 8
;-------------------------------
; Replace: %spi.bis.76 = ptrtoint[21 x i8]* @str.bis.76 to i32
  %sp0.44 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\03\39\08\2C\2C\4A\42\00\01\19\67\57\4A\20\26\39\57\23\05\35\4B", [21 x i8]* %sp0.44
  %sp153 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.153 = load [2 x i8], [2 x i8]* @str.0.153
  %cipher.ptr.492 = alloca [5 x i8]
  store [5 x i8] c"\41\7a\6b\3d\00", [5 x i8]* %cipher.ptr.492
  %cipher.492 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.492, i32 0, i32 0
  %plain.ptr.492 = tail call i8* @base64_decode(i8* %cipher.492)
  %spi492 = bitcast i8* %plain.ptr.492 to [2 x i8]*
  %s0.153 = load [2 x i8], [2 x i8]* %spi492
;-------------------------------
  %sp0.153 = bitcast [21 x i8]* %sp153 to [2 x i8]*
  store [2 x i8] %s0.153, [2 x i8]* %sp0.153
  %next0.153 = getelementptr [21 x i8], [21 x i8]* %sp153, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.153 = load [3 x i8], [3 x i8]* @str.1.153
  %cipher.ptr.493 = alloca [5 x i8]
  store [5 x i8] c"\43\43\77\73\00", [5 x i8]* %cipher.ptr.493
  %cipher.493 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.493, i32 0, i32 0
  %plain.ptr.493 = tail call i8* @base64_decode(i8* %cipher.493)
  %spi493 = bitcast i8* %plain.ptr.493 to [3 x i8]*
  %s1.153 = load [3 x i8], [3 x i8]* %spi493
;-------------------------------
  %sp1.153 = bitcast i8* %next0.153 to [3 x i8]*
  store [3 x i8] %s1.153, [3 x i8]* %sp1.153
  %next1.153 = getelementptr [21 x i8], [21 x i8]* %sp153, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.153 = load [2 x i8], [2 x i8]* @str.2.153
  %cipher.ptr.497 = alloca [5 x i8]
  store [5 x i8] c"\53\6b\49\3d\00", [5 x i8]* %cipher.ptr.497
  %cipher.497 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.497, i32 0, i32 0
  %plain.ptr.497 = tail call i8* @base64_decode(i8* %cipher.497)
  %spi497 = bitcast i8* %plain.ptr.497 to [2 x i8]*
  %s2.153 = load [2 x i8], [2 x i8]* %spi497
;-------------------------------
  %sp2.153 = bitcast i8* %next1.153 to [2 x i8]*
  store [2 x i8] %s2.153, [2 x i8]* %sp2.153
  %next2.153 = getelementptr [21 x i8], [21 x i8]* %sp153, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.153 = load [3 x i8], [3 x i8]* @str.3.153
  %cipher.ptr.494 = alloca [5 x i8]
  store [5 x i8] c"\41\41\45\5a\00", [5 x i8]* %cipher.ptr.494
  %cipher.494 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.494, i32 0, i32 0
  %plain.ptr.494 = tail call i8* @base64_decode(i8* %cipher.494)
  %spi494 = bitcast i8* %plain.ptr.494 to [3 x i8]*
  %s3.153 = load [3 x i8], [3 x i8]* %spi494
;-------------------------------
  %sp3.153 = bitcast i8* %next2.153 to [3 x i8]*
  store [3 x i8] %s3.153, [3 x i8]* %sp3.153
  %next3.153 = getelementptr [21 x i8], [21 x i8]* %sp153, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.153 = load [3 x i8], [3 x i8]* @str.4.153
  %cipher.ptr.491 = alloca [5 x i8]
  store [5 x i8] c"\5a\31\64\4b\00", [5 x i8]* %cipher.ptr.491
  %cipher.491 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.491, i32 0, i32 0
  %plain.ptr.491 = tail call i8* @base64_decode(i8* %cipher.491)
  %spi491 = bitcast i8* %plain.ptr.491 to [3 x i8]*
  %s4.153 = load [3 x i8], [3 x i8]* %spi491
;-------------------------------
  %sp4.153 = bitcast i8* %next3.153 to [3 x i8]*
  store [3 x i8] %s4.153, [3 x i8]* %sp4.153
  %next4.153 = getelementptr [21 x i8], [21 x i8]* %sp153, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.153 = load [2 x i8], [2 x i8]* @str.5.153
  %cipher.ptr.490 = alloca [5 x i8]
  store [5 x i8] c"\49\43\59\3d\00", [5 x i8]* %cipher.ptr.490
  %cipher.490 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.490, i32 0, i32 0
  %plain.ptr.490 = tail call i8* @base64_decode(i8* %cipher.490)
  %spi490 = bitcast i8* %plain.ptr.490 to [2 x i8]*
  %s5.153 = load [2 x i8], [2 x i8]* %spi490
;-------------------------------
  %sp5.153 = bitcast i8* %next4.153 to [2 x i8]*
  store [2 x i8] %s5.153, [2 x i8]* %sp5.153
  %next5.153 = getelementptr [21 x i8], [21 x i8]* %sp153, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.153 = load [3 x i8], [3 x i8]* @str.6.153
  %cipher.ptr.496 = alloca [5 x i8]
  store [5 x i8] c"\4f\56\63\6a\00", [5 x i8]* %cipher.ptr.496
  %cipher.496 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.496, i32 0, i32 0
  %plain.ptr.496 = tail call i8* @base64_decode(i8* %cipher.496)
  %spi496 = bitcast i8* %plain.ptr.496 to [3 x i8]*
  %s6.153 = load [3 x i8], [3 x i8]* %spi496
;-------------------------------
  %sp6.153 = bitcast i8* %next5.153 to [3 x i8]*
  store [3 x i8] %s6.153, [3 x i8]* %sp6.153
  %next6.153 = getelementptr [21 x i8], [21 x i8]* %sp153, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.153 = load [3 x i8], [3 x i8]* @str.7.153
  %cipher.ptr.495 = alloca [5 x i8]
  store [5 x i8] c"\42\54\56\4c\00", [5 x i8]* %cipher.ptr.495
  %cipher.495 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.495, i32 0, i32 0
  %plain.ptr.495 = tail call i8* @base64_decode(i8* %cipher.495)
  %spi495 = bitcast i8* %plain.ptr.495 to [3 x i8]*
  %s7.153 = load [3 x i8], [3 x i8]* %spi495
;-------------------------------
  %sp7.153 = bitcast i8* %next6.153 to [3 x i8]*
  store [3 x i8] %s7.153, [3 x i8]* %sp7.153

  %spi153 = load [21 x i8], [21 x i8]* %sp153
  store [21 x i8] %spi153, [21 x i8]* %sp0.44
;-------------------------------
  %sp0.1.44 = bitcast [21 x i8]* %sp0.44 to i168*
  %i0.44 = load i168, i168* %sp0.1.44

  %sp1.44 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\62\4b\7a\4d\55\78\62\6e\6e\6d\47\36\39\43\43\57\33\4a\6b\52\4b", [21 x i8]* %sp1.44
  %sp154 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.154 = load [2 x i8], [2 x i8]* @str.0.154
  %cipher.ptr.500 = alloca [5 x i8]
  store [5 x i8] c"\59\6b\73\3d\00", [5 x i8]* %cipher.ptr.500
  %cipher.500 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.500, i32 0, i32 0
  %plain.ptr.500 = tail call i8* @base64_decode(i8* %cipher.500)
  %spi500 = bitcast i8* %plain.ptr.500 to [2 x i8]*
  %s0.154 = load [2 x i8], [2 x i8]* %spi500
;-------------------------------
  %sp0.154 = bitcast [21 x i8]* %sp154 to [2 x i8]*
  store [2 x i8] %s0.154, [2 x i8]* %sp0.154
  %next0.154 = getelementptr [21 x i8], [21 x i8]* %sp154, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.154 = load [3 x i8], [3 x i8]* @str.1.154
  %cipher.ptr.498 = alloca [5 x i8]
  store [5 x i8] c"\65\6b\31\56\00", [5 x i8]* %cipher.ptr.498
  %cipher.498 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.498, i32 0, i32 0
  %plain.ptr.498 = tail call i8* @base64_decode(i8* %cipher.498)
  %spi498 = bitcast i8* %plain.ptr.498 to [3 x i8]*
  %s1.154 = load [3 x i8], [3 x i8]* %spi498
;-------------------------------
  %sp1.154 = bitcast i8* %next0.154 to [3 x i8]*
  store [3 x i8] %s1.154, [3 x i8]* %sp1.154
  %next1.154 = getelementptr [21 x i8], [21 x i8]* %sp154, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.154 = load [2 x i8], [2 x i8]* @str.2.154
  %cipher.ptr.503 = alloca [5 x i8]
  store [5 x i8] c"\65\47\49\3d\00", [5 x i8]* %cipher.ptr.503
  %cipher.503 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.503, i32 0, i32 0
  %plain.ptr.503 = tail call i8* @base64_decode(i8* %cipher.503)
  %spi503 = bitcast i8* %plain.ptr.503 to [2 x i8]*
  %s2.154 = load [2 x i8], [2 x i8]* %spi503
;-------------------------------
  %sp2.154 = bitcast i8* %next1.154 to [2 x i8]*
  store [2 x i8] %s2.154, [2 x i8]* %sp2.154
  %next2.154 = getelementptr [21 x i8], [21 x i8]* %sp154, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.154 = load [3 x i8], [3 x i8]* @str.3.154
  %cipher.ptr.499 = alloca [5 x i8]
  store [5 x i8] c"\62\6d\35\74\00", [5 x i8]* %cipher.ptr.499
  %cipher.499 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.499, i32 0, i32 0
  %plain.ptr.499 = tail call i8* @base64_decode(i8* %cipher.499)
  %spi499 = bitcast i8* %plain.ptr.499 to [3 x i8]*
  %s3.154 = load [3 x i8], [3 x i8]* %spi499
;-------------------------------
  %sp3.154 = bitcast i8* %next2.154 to [3 x i8]*
  store [3 x i8] %s3.154, [3 x i8]* %sp3.154
  %next3.154 = getelementptr [21 x i8], [21 x i8]* %sp154, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.154 = load [3 x i8], [3 x i8]* @str.4.154
  %cipher.ptr.505 = alloca [5 x i8]
  store [5 x i8] c"\52\7a\59\35\00", [5 x i8]* %cipher.ptr.505
  %cipher.505 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.505, i32 0, i32 0
  %plain.ptr.505 = tail call i8* @base64_decode(i8* %cipher.505)
  %spi505 = bitcast i8* %plain.ptr.505 to [3 x i8]*
  %s4.154 = load [3 x i8], [3 x i8]* %spi505
;-------------------------------
  %sp4.154 = bitcast i8* %next3.154 to [3 x i8]*
  store [3 x i8] %s4.154, [3 x i8]* %sp4.154
  %next4.154 = getelementptr [21 x i8], [21 x i8]* %sp154, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.154 = load [2 x i8], [2 x i8]* @str.5.154
  %cipher.ptr.502 = alloca [5 x i8]
  store [5 x i8] c"\51\30\4d\3d\00", [5 x i8]* %cipher.ptr.502
  %cipher.502 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.502, i32 0, i32 0
  %plain.ptr.502 = tail call i8* @base64_decode(i8* %cipher.502)
  %spi502 = bitcast i8* %plain.ptr.502 to [2 x i8]*
  %s5.154 = load [2 x i8], [2 x i8]* %spi502
;-------------------------------
  %sp5.154 = bitcast i8* %next4.154 to [2 x i8]*
  store [2 x i8] %s5.154, [2 x i8]* %sp5.154
  %next5.154 = getelementptr [21 x i8], [21 x i8]* %sp154, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.154 = load [3 x i8], [3 x i8]* @str.6.154
  %cipher.ptr.501 = alloca [5 x i8]
  store [5 x i8] c"\56\7a\4e\4b\00", [5 x i8]* %cipher.ptr.501
  %cipher.501 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.501, i32 0, i32 0
  %plain.ptr.501 = tail call i8* @base64_decode(i8* %cipher.501)
  %spi501 = bitcast i8* %plain.ptr.501 to [3 x i8]*
  %s6.154 = load [3 x i8], [3 x i8]* %spi501
;-------------------------------
  %sp6.154 = bitcast i8* %next5.154 to [3 x i8]*
  store [3 x i8] %s6.154, [3 x i8]* %sp6.154
  %next6.154 = getelementptr [21 x i8], [21 x i8]* %sp154, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.154 = load [3 x i8], [3 x i8]* @str.7.154
  %cipher.ptr.504 = alloca [5 x i8]
  store [5 x i8] c"\61\31\4a\4c\00", [5 x i8]* %cipher.ptr.504
  %cipher.504 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.504, i32 0, i32 0
  %plain.ptr.504 = tail call i8* @base64_decode(i8* %cipher.504)
  %spi504 = bitcast i8* %plain.ptr.504 to [3 x i8]*
  %s7.154 = load [3 x i8], [3 x i8]* %spi504
;-------------------------------
  %sp7.154 = bitcast i8* %next6.154 to [3 x i8]*
  store [3 x i8] %s7.154, [3 x i8]* %sp7.154

  %spi154 = load [21 x i8], [21 x i8]* %sp154
  store [21 x i8] %spi154, [21 x i8]* %sp1.44
;-------------------------------
  %sp1.1.44 = bitcast [21 x i8]* %sp1.44 to i168*
  %i1.44 = load i168, i168* %sp1.1.44

  %xp44 = xor i168 %i0.44, %i1.44

  %fi.44 = alloca i168
  store i168 %xp44, i168* %fi.44

  %spi44 = bitcast i168* %fi.44 to [21 x i8]*
  %spi.bis.76 = ptrtoint[21 x i8]* %spi44 to i32
;-------------------------------
  store i32 %spi.bis.76, i32* %31, align 16
  store i32 134517505, i32* %32, align 4
  %arg.i.i28 = load i32, i32* %31, align 16
  %58 = inttoptr i32 %arg.i.i28 to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp85 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %58)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast85= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.220 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.220
  %cipher.220 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.220, i32 0, i32 0
  %plain.ptr.220 = tail call i8* @base64_decode(i8* %cipher.220)
  %spi220 = bitcast i8* %plain.ptr.220 to [1 x i8]*
  %cast85= getelementptr [1 x i8], [1 x i8]* %spi220, i64 0, i64 0
;-------------------------------
  %59 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast85)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  store i32 10, i32* %31, align 16
  store i32 134517518, i32* %32, align 4
  %arg.i.i29 = load i32, i32* %31, align 16
  %60 = tail call i32 @putchar(i32 %arg.i.i29)  nounwind 
  store i32 10, i32* %30, align 4
  %tmp2_v2.i129.i = add i32 %57, -92
  store i32 %tmp2_v2.i129.i, i32* %31, align 16
  store i32 134517535, i32* %32, align 4
  store i32 %57, i32* %33, align 8
;-------------------------------
; Replace: %spi.bis.75 = ptrtoint[4 x i8]* @str.bis.75 to i32
  %sp0.43 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\73\11\66\61", [4 x i8]* %sp0.43
  %sp155 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.155 = load [1 x i8], [1 x i8]* @str.0.155
  %cipher.ptr.509 = alloca [5 x i8]
  store [5 x i8] c"\63\77\3d\3d\00", [5 x i8]* %cipher.ptr.509
  %cipher.509 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.509, i32 0, i32 0
  %plain.ptr.509 = tail call i8* @base64_decode(i8* %cipher.509)
  %spi509 = bitcast i8* %plain.ptr.509 to [1 x i8]*
  %s0.155 = load [1 x i8], [1 x i8]* %spi509
;-------------------------------
  %sp0.155 = bitcast [4 x i8]* %sp155 to [1 x i8]*
  store [1 x i8] %s0.155, [1 x i8]* %sp0.155
  %next0.155 = getelementptr [4 x i8], [4 x i8]* %sp155, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.155 = load [1 x i8], [1 x i8]* @str.1.155
  %cipher.ptr.506 = alloca [5 x i8]
  store [5 x i8] c"\45\51\3d\3d\00", [5 x i8]* %cipher.ptr.506
  %cipher.506 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.506, i32 0, i32 0
  %plain.ptr.506 = tail call i8* @base64_decode(i8* %cipher.506)
  %spi506 = bitcast i8* %plain.ptr.506 to [1 x i8]*
  %s1.155 = load [1 x i8], [1 x i8]* %spi506
;-------------------------------
  %sp1.155 = bitcast i8* %next0.155 to [1 x i8]*
  store [1 x i8] %s1.155, [1 x i8]* %sp1.155
  %next1.155 = getelementptr [4 x i8], [4 x i8]* %sp155, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.155 = load [1 x i8], [1 x i8]* @str.2.155
  %cipher.ptr.508 = alloca [5 x i8]
  store [5 x i8] c"\5a\67\3d\3d\00", [5 x i8]* %cipher.ptr.508
  %cipher.508 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.508, i32 0, i32 0
  %plain.ptr.508 = tail call i8* @base64_decode(i8* %cipher.508)
  %spi508 = bitcast i8* %plain.ptr.508 to [1 x i8]*
  %s2.155 = load [1 x i8], [1 x i8]* %spi508
;-------------------------------
  %sp2.155 = bitcast i8* %next1.155 to [1 x i8]*
  store [1 x i8] %s2.155, [1 x i8]* %sp2.155
  %next2.155 = getelementptr [4 x i8], [4 x i8]* %sp155, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.155 = load [1 x i8], [1 x i8]* @str.3.155
  %cipher.ptr.507 = alloca [5 x i8]
  store [5 x i8] c"\59\51\3d\3d\00", [5 x i8]* %cipher.ptr.507
  %cipher.507 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.507, i32 0, i32 0
  %plain.ptr.507 = tail call i8* @base64_decode(i8* %cipher.507)
  %spi507 = bitcast i8* %plain.ptr.507 to [1 x i8]*
  %s3.155 = load [1 x i8], [1 x i8]* %spi507
;-------------------------------
  %sp3.155 = bitcast i8* %next2.155 to [1 x i8]*
  store [1 x i8] %s3.155, [1 x i8]* %sp3.155

  %spi155 = load [4 x i8], [4 x i8]* %sp155
  store [4 x i8] %spi155, [4 x i8]* %sp0.43
;-------------------------------
  %sp0.1.43 = bitcast [4 x i8]* %sp0.43 to i32*
  %i0.43 = load i32, i32* %sp0.1.43

  %sp1.43 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\76\43\4d\61", [4 x i8]* %sp1.43
  %sp156 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.156 = load [1 x i8], [1 x i8]* @str.0.156
  %cipher.ptr.510 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.510
  %cipher.510 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.510, i32 0, i32 0
  %plain.ptr.510 = tail call i8* @base64_decode(i8* %cipher.510)
  %spi510 = bitcast i8* %plain.ptr.510 to [1 x i8]*
  %s0.156 = load [1 x i8], [1 x i8]* %spi510
;-------------------------------
  %sp0.156 = bitcast [4 x i8]* %sp156 to [1 x i8]*
  store [1 x i8] %s0.156, [1 x i8]* %sp0.156
  %next0.156 = getelementptr [4 x i8], [4 x i8]* %sp156, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.156 = load [1 x i8], [1 x i8]* @str.1.156
  %cipher.ptr.513 = alloca [5 x i8]
  store [5 x i8] c"\51\77\3d\3d\00", [5 x i8]* %cipher.ptr.513
  %cipher.513 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.513, i32 0, i32 0
  %plain.ptr.513 = tail call i8* @base64_decode(i8* %cipher.513)
  %spi513 = bitcast i8* %plain.ptr.513 to [1 x i8]*
  %s1.156 = load [1 x i8], [1 x i8]* %spi513
;-------------------------------
  %sp1.156 = bitcast i8* %next0.156 to [1 x i8]*
  store [1 x i8] %s1.156, [1 x i8]* %sp1.156
  %next1.156 = getelementptr [4 x i8], [4 x i8]* %sp156, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.156 = load [1 x i8], [1 x i8]* @str.2.156
  %cipher.ptr.511 = alloca [5 x i8]
  store [5 x i8] c"\54\51\3d\3d\00", [5 x i8]* %cipher.ptr.511
  %cipher.511 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.511, i32 0, i32 0
  %plain.ptr.511 = tail call i8* @base64_decode(i8* %cipher.511)
  %spi511 = bitcast i8* %plain.ptr.511 to [1 x i8]*
  %s2.156 = load [1 x i8], [1 x i8]* %spi511
;-------------------------------
  %sp2.156 = bitcast i8* %next1.156 to [1 x i8]*
  store [1 x i8] %s2.156, [1 x i8]* %sp2.156
  %next2.156 = getelementptr [4 x i8], [4 x i8]* %sp156, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.156 = load [1 x i8], [1 x i8]* @str.3.156
  %cipher.ptr.512 = alloca [5 x i8]
  store [5 x i8] c"\59\51\3d\3d\00", [5 x i8]* %cipher.ptr.512
  %cipher.512 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.512, i32 0, i32 0
  %plain.ptr.512 = tail call i8* @base64_decode(i8* %cipher.512)
  %spi512 = bitcast i8* %plain.ptr.512 to [1 x i8]*
  %s3.156 = load [1 x i8], [1 x i8]* %spi512
;-------------------------------
  %sp3.156 = bitcast i8* %next2.156 to [1 x i8]*
  store [1 x i8] %s3.156, [1 x i8]* %sp3.156

  %spi156 = load [4 x i8], [4 x i8]* %sp156
  store [4 x i8] %spi156, [4 x i8]* %sp1.43
;-------------------------------
  %sp1.1.43 = bitcast [4 x i8]* %sp1.43 to i32*
  %i1.43 = load i32, i32* %sp1.1.43

  %xp43 = xor i32 %i0.43, %i1.43

  %fi.43 = alloca i32
  store i32 %xp43, i32* %fi.43

  %spi43 = bitcast i32* %fi.43 to [4 x i8]*
  %spi.bis.75 = ptrtoint[4 x i8]* %spi43 to i32
;-------------------------------
  store i32 %spi.bis.75, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %61 = load i32, i32* %30, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %BB_80494CF.i.i, label %Func_sorted_descending.exit

BB_8049505.i.i:                                   ; preds = %BB_80494CF.i.i
  store i32 %tmp0_v1.i24.i.i, i32* %35, align 4
  %63 = load i32, i32* %30, align 4
  %64 = icmp slt i32 %tmp0_v1.i24.i.i, %63
  br i1 %64, label %BB_80494CF.i.i, label %Func_sorted_descending.exit

BB_80494CF.i.i:                                   ; preds = %BB_8049505.i.i, %Func_sorted_ascending.exit27
  %storemerge14.i30 = phi i32 [ %tmp0_v1.i24.i.i, %BB_8049505.i.i ], [ 1, %Func_sorted_ascending.exit27 ]
  %tmp0_v1.i.i.i31 = shl i32 %storemerge14.i30, 2
  %65 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i32 = add i32 %65, %tmp0_v1.i.i.i31
  %tmp0_v4.i.i.i33 = add i32 %tmp4_v.i.i.i32, -4
  %66 = inttoptr i32 %tmp0_v4.i.i.i33 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = inttoptr i32 %tmp4_v.i.i.i32 to i32*
  %69 = load i32, i32* %68, align 4
  %.not.i.i.i34 = icmp slt i32 %67, %69
  %tmp0_v1.i24.i.i = add nuw nsw i32 %storemerge14.i30, 1
  br i1 %.not.i.i.i34, label %Func_sorted_descending.exit, label %BB_8049505.i.i

Func_sorted_descending.exit:                      ; preds = %BB_80494CF.i.i, %BB_8049505.i.i, %Func_sorted_ascending.exit27
  %70 = load i32, i32* %33, align 8
;-------------------------------
; Replace: %spi.bis.74 = ptrtoint[22 x i8]* @str.bis.74 to i32
  %sp0.42 = alloca [22 x i8]
;-------------------------------
; Replace: store [22 x i8] c"\27\02\1D\04\2E\57\65\2F\57\23\70\5D\01\16\51\1F\19\52\05\0B\0C\6E", [22 x i8]* %sp0.42
  %sp157 = alloca [22 x i8]
  
;-------------------------------
; Replace: %s0.157 = load [2 x i8], [2 x i8]* @str.0.157
  %cipher.ptr.520 = alloca [5 x i8]
  store [5 x i8] c"\4a\77\49\3d\00", [5 x i8]* %cipher.ptr.520
  %cipher.520 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.520, i32 0, i32 0
  %plain.ptr.520 = tail call i8* @base64_decode(i8* %cipher.520)
  %spi520 = bitcast i8* %plain.ptr.520 to [2 x i8]*
  %s0.157 = load [2 x i8], [2 x i8]* %spi520
;-------------------------------
  %sp0.157 = bitcast [22 x i8]* %sp157 to [2 x i8]*
  store [2 x i8] %s0.157, [2 x i8]* %sp0.157
  %next0.157 = getelementptr [22 x i8], [22 x i8]* %sp157, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.157 = load [3 x i8], [3 x i8]* @str.1.157
  %cipher.ptr.521 = alloca [5 x i8]
  store [5 x i8] c"\48\51\51\75\00", [5 x i8]* %cipher.ptr.521
  %cipher.521 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.521, i32 0, i32 0
  %plain.ptr.521 = tail call i8* @base64_decode(i8* %cipher.521)
  %spi521 = bitcast i8* %plain.ptr.521 to [3 x i8]*
  %s1.157 = load [3 x i8], [3 x i8]* %spi521
;-------------------------------
  %sp1.157 = bitcast i8* %next0.157 to [3 x i8]*
  store [3 x i8] %s1.157, [3 x i8]* %sp1.157
  %next1.157 = getelementptr [22 x i8], [22 x i8]* %sp157, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.157 = load [3 x i8], [3 x i8]* @str.2.157
  %cipher.ptr.518 = alloca [5 x i8]
  store [5 x i8] c"\56\32\55\76\00", [5 x i8]* %cipher.ptr.518
  %cipher.518 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.518, i32 0, i32 0
  %plain.ptr.518 = tail call i8* @base64_decode(i8* %cipher.518)
  %spi518 = bitcast i8* %plain.ptr.518 to [3 x i8]*
  %s2.157 = load [3 x i8], [3 x i8]* %spi518
;-------------------------------
  %sp2.157 = bitcast i8* %next1.157 to [3 x i8]*
  store [3 x i8] %s2.157, [3 x i8]* %sp2.157
  %next2.157 = getelementptr [22 x i8], [22 x i8]* %sp157, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.157 = load [3 x i8], [3 x i8]* @str.3.157
  %cipher.ptr.517 = alloca [5 x i8]
  store [5 x i8] c"\56\79\4e\77\00", [5 x i8]* %cipher.ptr.517
  %cipher.517 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.517, i32 0, i32 0
  %plain.ptr.517 = tail call i8* @base64_decode(i8* %cipher.517)
  %spi517 = bitcast i8* %plain.ptr.517 to [3 x i8]*
  %s3.157 = load [3 x i8], [3 x i8]* %spi517
;-------------------------------
  %sp3.157 = bitcast i8* %next2.157 to [3 x i8]*
  store [3 x i8] %s3.157, [3 x i8]* %sp3.157
  %next3.157 = getelementptr [22 x i8], [22 x i8]* %sp157, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.157 = load [2 x i8], [2 x i8]* @str.4.157
  %cipher.ptr.515 = alloca [5 x i8]
  store [5 x i8] c"\58\51\45\3d\00", [5 x i8]* %cipher.ptr.515
  %cipher.515 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.515, i32 0, i32 0
  %plain.ptr.515 = tail call i8* @base64_decode(i8* %cipher.515)
  %spi515 = bitcast i8* %plain.ptr.515 to [2 x i8]*
  %s4.157 = load [2 x i8], [2 x i8]* %spi515
;-------------------------------
  %sp4.157 = bitcast i8* %next3.157 to [2 x i8]*
  store [2 x i8] %s4.157, [2 x i8]* %sp4.157
  %next4.157 = getelementptr [22 x i8], [22 x i8]* %sp157, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.157 = load [3 x i8], [3 x i8]* @str.5.157
  %cipher.ptr.519 = alloca [5 x i8]
  store [5 x i8] c"\46\6c\45\66\00", [5 x i8]* %cipher.ptr.519
  %cipher.519 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.519, i32 0, i32 0
  %plain.ptr.519 = tail call i8* @base64_decode(i8* %cipher.519)
  %spi519 = bitcast i8* %plain.ptr.519 to [3 x i8]*
  %s5.157 = load [3 x i8], [3 x i8]* %spi519
;-------------------------------
  %sp5.157 = bitcast i8* %next4.157 to [3 x i8]*
  store [3 x i8] %s5.157, [3 x i8]* %sp5.157
  %next5.157 = getelementptr [22 x i8], [22 x i8]* %sp157, i32 0, i32 16
  
;-------------------------------
; Replace: %s6.157 = load [3 x i8], [3 x i8]* @str.6.157
  %cipher.ptr.514 = alloca [5 x i8]
  store [5 x i8] c"\47\56\49\46\00", [5 x i8]* %cipher.ptr.514
  %cipher.514 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.514, i32 0, i32 0
  %plain.ptr.514 = tail call i8* @base64_decode(i8* %cipher.514)
  %spi514 = bitcast i8* %plain.ptr.514 to [3 x i8]*
  %s6.157 = load [3 x i8], [3 x i8]* %spi514
;-------------------------------
  %sp6.157 = bitcast i8* %next5.157 to [3 x i8]*
  store [3 x i8] %s6.157, [3 x i8]* %sp6.157
  %next6.157 = getelementptr [22 x i8], [22 x i8]* %sp157, i32 0, i32 19
  
;-------------------------------
; Replace: %s7.157 = load [3 x i8], [3 x i8]* @str.7.157
  %cipher.ptr.516 = alloca [5 x i8]
  store [5 x i8] c"\43\77\78\75\00", [5 x i8]* %cipher.ptr.516
  %cipher.516 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.516, i32 0, i32 0
  %plain.ptr.516 = tail call i8* @base64_decode(i8* %cipher.516)
  %spi516 = bitcast i8* %plain.ptr.516 to [3 x i8]*
  %s7.157 = load [3 x i8], [3 x i8]* %spi516
;-------------------------------
  %sp7.157 = bitcast i8* %next6.157 to [3 x i8]*
  store [3 x i8] %s7.157, [3 x i8]* %sp7.157

  %spi157 = load [22 x i8], [22 x i8]* %sp157
  store [22 x i8] %spi157, [22 x i8]* %sp0.42
;-------------------------------
  %sp0.1.42 = bitcast [22 x i8]* %sp0.42 to i176*
  %i0.42 = load i176, i176* %sp0.1.42

  %sp1.42 = alloca [22 x i8]
;-------------------------------
; Replace: store [22 x i8] c"\46\70\6f\65\57\66\45\41\38\57\50\39\64\65\32\7a\77\36\6c\65\6b\6e", [22 x i8]* %sp1.42
  %sp158 = alloca [22 x i8]
  
;-------------------------------
; Replace: %s0.158 = load [2 x i8], [2 x i8]* @str.0.158
  %cipher.ptr.526 = alloca [5 x i8]
  store [5 x i8] c"\52\6e\41\3d\00", [5 x i8]* %cipher.ptr.526
  %cipher.526 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.526, i32 0, i32 0
  %plain.ptr.526 = tail call i8* @base64_decode(i8* %cipher.526)
  %spi526 = bitcast i8* %plain.ptr.526 to [2 x i8]*
  %s0.158 = load [2 x i8], [2 x i8]* %spi526
;-------------------------------
  %sp0.158 = bitcast [22 x i8]* %sp158 to [2 x i8]*
  store [2 x i8] %s0.158, [2 x i8]* %sp0.158
  %next0.158 = getelementptr [22 x i8], [22 x i8]* %sp158, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.158 = load [3 x i8], [3 x i8]* @str.1.158
  %cipher.ptr.524 = alloca [5 x i8]
  store [5 x i8] c"\62\32\56\58\00", [5 x i8]* %cipher.ptr.524
  %cipher.524 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.524, i32 0, i32 0
  %plain.ptr.524 = tail call i8* @base64_decode(i8* %cipher.524)
  %spi524 = bitcast i8* %plain.ptr.524 to [3 x i8]*
  %s1.158 = load [3 x i8], [3 x i8]* %spi524
;-------------------------------
  %sp1.158 = bitcast i8* %next0.158 to [3 x i8]*
  store [3 x i8] %s1.158, [3 x i8]* %sp1.158
  %next1.158 = getelementptr [22 x i8], [22 x i8]* %sp158, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.158 = load [3 x i8], [3 x i8]* @str.2.158
  %cipher.ptr.522 = alloca [5 x i8]
  store [5 x i8] c"\5a\6b\56\42\00", [5 x i8]* %cipher.ptr.522
  %cipher.522 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.522, i32 0, i32 0
  %plain.ptr.522 = tail call i8* @base64_decode(i8* %cipher.522)
  %spi522 = bitcast i8* %plain.ptr.522 to [3 x i8]*
  %s2.158 = load [3 x i8], [3 x i8]* %spi522
;-------------------------------
  %sp2.158 = bitcast i8* %next1.158 to [3 x i8]*
  store [3 x i8] %s2.158, [3 x i8]* %sp2.158
  %next2.158 = getelementptr [22 x i8], [22 x i8]* %sp158, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.158 = load [3 x i8], [3 x i8]* @str.3.158
  %cipher.ptr.523 = alloca [5 x i8]
  store [5 x i8] c"\4f\46\64\51\00", [5 x i8]* %cipher.ptr.523
  %cipher.523 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.523, i32 0, i32 0
  %plain.ptr.523 = tail call i8* @base64_decode(i8* %cipher.523)
  %spi523 = bitcast i8* %plain.ptr.523 to [3 x i8]*
  %s3.158 = load [3 x i8], [3 x i8]* %spi523
;-------------------------------
  %sp3.158 = bitcast i8* %next2.158 to [3 x i8]*
  store [3 x i8] %s3.158, [3 x i8]* %sp3.158
  %next3.158 = getelementptr [22 x i8], [22 x i8]* %sp158, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.158 = load [2 x i8], [2 x i8]* @str.4.158
  %cipher.ptr.525 = alloca [5 x i8]
  store [5 x i8] c"\4f\57\51\3d\00", [5 x i8]* %cipher.ptr.525
  %cipher.525 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.525, i32 0, i32 0
  %plain.ptr.525 = tail call i8* @base64_decode(i8* %cipher.525)
  %spi525 = bitcast i8* %plain.ptr.525 to [2 x i8]*
  %s4.158 = load [2 x i8], [2 x i8]* %spi525
;-------------------------------
  %sp4.158 = bitcast i8* %next3.158 to [2 x i8]*
  store [2 x i8] %s4.158, [2 x i8]* %sp4.158
  %next4.158 = getelementptr [22 x i8], [22 x i8]* %sp158, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.158 = load [3 x i8], [3 x i8]* @str.5.158
  %cipher.ptr.529 = alloca [5 x i8]
  store [5 x i8] c"\5a\54\4a\36\00", [5 x i8]* %cipher.ptr.529
  %cipher.529 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.529, i32 0, i32 0
  %plain.ptr.529 = tail call i8* @base64_decode(i8* %cipher.529)
  %spi529 = bitcast i8* %plain.ptr.529 to [3 x i8]*
  %s5.158 = load [3 x i8], [3 x i8]* %spi529
;-------------------------------
  %sp5.158 = bitcast i8* %next4.158 to [3 x i8]*
  store [3 x i8] %s5.158, [3 x i8]* %sp5.158
  %next5.158 = getelementptr [22 x i8], [22 x i8]* %sp158, i32 0, i32 16
  
;-------------------------------
; Replace: %s6.158 = load [3 x i8], [3 x i8]* @str.6.158
  %cipher.ptr.528 = alloca [5 x i8]
  store [5 x i8] c"\64\7a\5a\73\00", [5 x i8]* %cipher.ptr.528
  %cipher.528 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.528, i32 0, i32 0
  %plain.ptr.528 = tail call i8* @base64_decode(i8* %cipher.528)
  %spi528 = bitcast i8* %plain.ptr.528 to [3 x i8]*
  %s6.158 = load [3 x i8], [3 x i8]* %spi528
;-------------------------------
  %sp6.158 = bitcast i8* %next5.158 to [3 x i8]*
  store [3 x i8] %s6.158, [3 x i8]* %sp6.158
  %next6.158 = getelementptr [22 x i8], [22 x i8]* %sp158, i32 0, i32 19
  
;-------------------------------
; Replace: %s7.158 = load [3 x i8], [3 x i8]* @str.7.158
  %cipher.ptr.527 = alloca [5 x i8]
  store [5 x i8] c"\5a\57\74\75\00", [5 x i8]* %cipher.ptr.527
  %cipher.527 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.527, i32 0, i32 0
  %plain.ptr.527 = tail call i8* @base64_decode(i8* %cipher.527)
  %spi527 = bitcast i8* %plain.ptr.527 to [3 x i8]*
  %s7.158 = load [3 x i8], [3 x i8]* %spi527
;-------------------------------
  %sp7.158 = bitcast i8* %next6.158 to [3 x i8]*
  store [3 x i8] %s7.158, [3 x i8]* %sp7.158

  %spi158 = load [22 x i8], [22 x i8]* %sp158
  store [22 x i8] %spi158, [22 x i8]* %sp1.42
;-------------------------------
  %sp1.1.42 = bitcast [22 x i8]* %sp1.42 to i176*
  %i1.42 = load i176, i176* %sp1.1.42

  %xp42 = xor i176 %i0.42, %i1.42

  %fi.42 = alloca i176
  store i176 %xp42, i176* %fi.42

  %spi42 = bitcast i176* %fi.42 to [22 x i8]*
  %spi.bis.74 = ptrtoint[22 x i8]* %spi42 to i32
;-------------------------------
  store i32 %spi.bis.74, i32* %31, align 16
  store i32 134517577, i32* %32, align 4
  %arg.i.i38 = load i32, i32* %31, align 16
  %71 = inttoptr i32 %arg.i.i38 to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp86 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %71)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast86= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.221 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.221
  %cipher.221 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.221, i32 0, i32 0
  %plain.ptr.221 = tail call i8* @base64_decode(i8* %cipher.221)
  %spi221 = bitcast i8* %plain.ptr.221 to [1 x i8]*
  %cast86= getelementptr [1 x i8], [1 x i8]* %spi221, i64 0, i64 0
;-------------------------------
  %72 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast86)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  store i32 10, i32* %30, align 4
  %tmp2_v2.i49.i = add i32 %70, -52
  store i32 %tmp2_v2.i49.i, i32* %31, align 16
  store i32 134517594, i32* %32, align 4
  store i32 %70, i32* %33, align 8
;-------------------------------
; Replace: %spi.bis.73 = ptrtoint[4 x i8]* @str.bis.73 to i32
  %sp0.41 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\4D\1B\4A\4F", [4 x i8]* %sp0.41
  %sp159 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.159 = load [1 x i8], [1 x i8]* @str.0.159
  %cipher.ptr.533 = alloca [5 x i8]
  store [5 x i8] c"\54\51\3d\3d\00", [5 x i8]* %cipher.ptr.533
  %cipher.533 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.533, i32 0, i32 0
  %plain.ptr.533 = tail call i8* @base64_decode(i8* %cipher.533)
  %spi533 = bitcast i8* %plain.ptr.533 to [1 x i8]*
  %s0.159 = load [1 x i8], [1 x i8]* %spi533
;-------------------------------
  %sp0.159 = bitcast [4 x i8]* %sp159 to [1 x i8]*
  store [1 x i8] %s0.159, [1 x i8]* %sp0.159
  %next0.159 = getelementptr [4 x i8], [4 x i8]* %sp159, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.159 = load [1 x i8], [1 x i8]* @str.1.159
  %cipher.ptr.530 = alloca [5 x i8]
  store [5 x i8] c"\47\77\3d\3d\00", [5 x i8]* %cipher.ptr.530
  %cipher.530 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.530, i32 0, i32 0
  %plain.ptr.530 = tail call i8* @base64_decode(i8* %cipher.530)
  %spi530 = bitcast i8* %plain.ptr.530 to [1 x i8]*
  %s1.159 = load [1 x i8], [1 x i8]* %spi530
;-------------------------------
  %sp1.159 = bitcast i8* %next0.159 to [1 x i8]*
  store [1 x i8] %s1.159, [1 x i8]* %sp1.159
  %next1.159 = getelementptr [4 x i8], [4 x i8]* %sp159, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.159 = load [1 x i8], [1 x i8]* @str.2.159
  %cipher.ptr.532 = alloca [5 x i8]
  store [5 x i8] c"\53\67\3d\3d\00", [5 x i8]* %cipher.ptr.532
  %cipher.532 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.532, i32 0, i32 0
  %plain.ptr.532 = tail call i8* @base64_decode(i8* %cipher.532)
  %spi532 = bitcast i8* %plain.ptr.532 to [1 x i8]*
  %s2.159 = load [1 x i8], [1 x i8]* %spi532
;-------------------------------
  %sp2.159 = bitcast i8* %next1.159 to [1 x i8]*
  store [1 x i8] %s2.159, [1 x i8]* %sp2.159
  %next2.159 = getelementptr [4 x i8], [4 x i8]* %sp159, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.159 = load [1 x i8], [1 x i8]* @str.3.159
  %cipher.ptr.531 = alloca [5 x i8]
  store [5 x i8] c"\54\77\3d\3d\00", [5 x i8]* %cipher.ptr.531
  %cipher.531 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.531, i32 0, i32 0
  %plain.ptr.531 = tail call i8* @base64_decode(i8* %cipher.531)
  %spi531 = bitcast i8* %plain.ptr.531 to [1 x i8]*
  %s3.159 = load [1 x i8], [1 x i8]* %spi531
;-------------------------------
  %sp3.159 = bitcast i8* %next2.159 to [1 x i8]*
  store [1 x i8] %s3.159, [1 x i8]* %sp3.159

  %spi159 = load [4 x i8], [4 x i8]* %sp159
  store [4 x i8] %spi159, [4 x i8]* %sp0.41
;-------------------------------
  %sp0.1.41 = bitcast [4 x i8]* %sp0.41 to i32*
  %i0.41 = load i32, i32* %sp0.1.41

  %sp1.41 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\48\49\61\4f", [4 x i8]* %sp1.41
  %sp160 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.160 = load [1 x i8], [1 x i8]* @str.0.160
  %cipher.ptr.536 = alloca [5 x i8]
  store [5 x i8] c"\53\41\3d\3d\00", [5 x i8]* %cipher.ptr.536
  %cipher.536 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.536, i32 0, i32 0
  %plain.ptr.536 = tail call i8* @base64_decode(i8* %cipher.536)
  %spi536 = bitcast i8* %plain.ptr.536 to [1 x i8]*
  %s0.160 = load [1 x i8], [1 x i8]* %spi536
;-------------------------------
  %sp0.160 = bitcast [4 x i8]* %sp160 to [1 x i8]*
  store [1 x i8] %s0.160, [1 x i8]* %sp0.160
  %next0.160 = getelementptr [4 x i8], [4 x i8]* %sp160, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.160 = load [1 x i8], [1 x i8]* @str.1.160
  %cipher.ptr.535 = alloca [5 x i8]
  store [5 x i8] c"\53\51\3d\3d\00", [5 x i8]* %cipher.ptr.535
  %cipher.535 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.535, i32 0, i32 0
  %plain.ptr.535 = tail call i8* @base64_decode(i8* %cipher.535)
  %spi535 = bitcast i8* %plain.ptr.535 to [1 x i8]*
  %s1.160 = load [1 x i8], [1 x i8]* %spi535
;-------------------------------
  %sp1.160 = bitcast i8* %next0.160 to [1 x i8]*
  store [1 x i8] %s1.160, [1 x i8]* %sp1.160
  %next1.160 = getelementptr [4 x i8], [4 x i8]* %sp160, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.160 = load [1 x i8], [1 x i8]* @str.2.160
  %cipher.ptr.534 = alloca [5 x i8]
  store [5 x i8] c"\59\51\3d\3d\00", [5 x i8]* %cipher.ptr.534
  %cipher.534 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.534, i32 0, i32 0
  %plain.ptr.534 = tail call i8* @base64_decode(i8* %cipher.534)
  %spi534 = bitcast i8* %plain.ptr.534 to [1 x i8]*
  %s2.160 = load [1 x i8], [1 x i8]* %spi534
;-------------------------------
  %sp2.160 = bitcast i8* %next1.160 to [1 x i8]*
  store [1 x i8] %s2.160, [1 x i8]* %sp2.160
  %next2.160 = getelementptr [4 x i8], [4 x i8]* %sp160, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.160 = load [1 x i8], [1 x i8]* @str.3.160
  %cipher.ptr.537 = alloca [5 x i8]
  store [5 x i8] c"\54\77\3d\3d\00", [5 x i8]* %cipher.ptr.537
  %cipher.537 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.537, i32 0, i32 0
  %plain.ptr.537 = tail call i8* @base64_decode(i8* %cipher.537)
  %spi537 = bitcast i8* %plain.ptr.537 to [1 x i8]*
  %s3.160 = load [1 x i8], [1 x i8]* %spi537
;-------------------------------
  %sp3.160 = bitcast i8* %next2.160 to [1 x i8]*
  store [1 x i8] %s3.160, [1 x i8]* %sp3.160

  %spi160 = load [4 x i8], [4 x i8]* %sp160
  store [4 x i8] %spi160, [4 x i8]* %sp1.41
;-------------------------------
  %sp1.1.41 = bitcast [4 x i8]* %sp1.41 to i32*
  %i1.41 = load i32, i32* %sp1.1.41

  %xp41 = xor i32 %i0.41, %i1.41

  %fi.41 = alloca i32
  store i32 %xp41, i32* %fi.41

  %spi41 = bitcast i32* %fi.41 to [4 x i8]*
  %spi.bis.73 = ptrtoint[4 x i8]* %spi41 to i32
;-------------------------------
  store i32 %spi.bis.73, i32* %34, align 4
  store i32 1, i32* %35, align 4
  %73 = load i32, i32* %30, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %BB_80494CF.i.i51, label %Func_sorted_descending.exit55

BB_8049505.i.i44:                                 ; preds = %BB_80494CF.i.i51
  store i32 %tmp0_v1.i24.i.i50, i32* %35, align 4
  %75 = load i32, i32* %30, align 4
  %76 = icmp slt i32 %tmp0_v1.i24.i.i50, %75
  br i1 %76, label %BB_80494CF.i.i51, label %Func_sorted_descending.exit55

BB_80494CF.i.i51:                                 ; preds = %BB_8049505.i.i44, %Func_sorted_descending.exit
  %storemerge14.i45 = phi i32 [ %tmp0_v1.i24.i.i50, %BB_8049505.i.i44 ], [ 1, %Func_sorted_descending.exit ]
  %tmp0_v1.i.i.i46 = shl i32 %storemerge14.i45, 2
  %77 = load i32, i32* %31, align 16
  %tmp4_v.i.i.i47 = add i32 %77, %tmp0_v1.i.i.i46
  %tmp0_v4.i.i.i48 = add i32 %tmp4_v.i.i.i47, -4
  %78 = inttoptr i32 %tmp0_v4.i.i.i48 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = inttoptr i32 %tmp4_v.i.i.i47 to i32*
  %81 = load i32, i32* %80, align 4
  %.not.i.i.i49 = icmp slt i32 %79, %81
  %tmp0_v1.i24.i.i50 = add nuw nsw i32 %storemerge14.i45, 1
  br i1 %.not.i.i.i49, label %Func_sorted_descending.exit55, label %BB_8049505.i.i44

Func_sorted_descending.exit55:                    ; preds = %BB_80494CF.i.i51, %BB_8049505.i.i44, %Func_sorted_descending.exit
  %82 = load i32, i32* %33, align 8
;-------------------------------
; Replace: %spi.bis.72 = ptrtoint[21 x i8]* @str.bis.72 to i32
  %sp0.40 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\35\4B\06\2C\1D\7C\41\38\1E\16\01\50\23\10\02\1E\3C\38\37\04\30", [21 x i8]* %sp0.40
  %sp161 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.161 = load [2 x i8], [2 x i8]* @str.0.161
  %cipher.ptr.539 = alloca [5 x i8]
  store [5 x i8] c"\4e\55\73\3d\00", [5 x i8]* %cipher.ptr.539
  %cipher.539 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.539, i32 0, i32 0
  %plain.ptr.539 = tail call i8* @base64_decode(i8* %cipher.539)
  %spi539 = bitcast i8* %plain.ptr.539 to [2 x i8]*
  %s0.161 = load [2 x i8], [2 x i8]* %spi539
;-------------------------------
  %sp0.161 = bitcast [21 x i8]* %sp161 to [2 x i8]*
  store [2 x i8] %s0.161, [2 x i8]* %sp0.161
  %next0.161 = getelementptr [21 x i8], [21 x i8]* %sp161, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.161 = load [3 x i8], [3 x i8]* @str.1.161
  %cipher.ptr.542 = alloca [5 x i8]
  store [5 x i8] c"\42\69\77\64\00", [5 x i8]* %cipher.ptr.542
  %cipher.542 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.542, i32 0, i32 0
  %plain.ptr.542 = tail call i8* @base64_decode(i8* %cipher.542)
  %spi542 = bitcast i8* %plain.ptr.542 to [3 x i8]*
  %s1.161 = load [3 x i8], [3 x i8]* %spi542
;-------------------------------
  %sp1.161 = bitcast i8* %next0.161 to [3 x i8]*
  store [3 x i8] %s1.161, [3 x i8]* %sp1.161
  %next1.161 = getelementptr [21 x i8], [21 x i8]* %sp161, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.161 = load [2 x i8], [2 x i8]* @str.2.161
  %cipher.ptr.538 = alloca [5 x i8]
  store [5 x i8] c"\66\45\45\3d\00", [5 x i8]* %cipher.ptr.538
  %cipher.538 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.538, i32 0, i32 0
  %plain.ptr.538 = tail call i8* @base64_decode(i8* %cipher.538)
  %spi538 = bitcast i8* %plain.ptr.538 to [2 x i8]*
  %s2.161 = load [2 x i8], [2 x i8]* %spi538
;-------------------------------
  %sp2.161 = bitcast i8* %next1.161 to [2 x i8]*
  store [2 x i8] %s2.161, [2 x i8]* %sp2.161
  %next2.161 = getelementptr [21 x i8], [21 x i8]* %sp161, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.161 = load [3 x i8], [3 x i8]* @str.3.161
  %cipher.ptr.544 = alloca [5 x i8]
  store [5 x i8] c"\4f\42\34\57\00", [5 x i8]* %cipher.ptr.544
  %cipher.544 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.544, i32 0, i32 0
  %plain.ptr.544 = tail call i8* @base64_decode(i8* %cipher.544)
  %spi544 = bitcast i8* %plain.ptr.544 to [3 x i8]*
  %s3.161 = load [3 x i8], [3 x i8]* %spi544
;-------------------------------
  %sp3.161 = bitcast i8* %next2.161 to [3 x i8]*
  store [3 x i8] %s3.161, [3 x i8]* %sp3.161
  %next3.161 = getelementptr [21 x i8], [21 x i8]* %sp161, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.161 = load [3 x i8], [3 x i8]* @str.4.161
  %cipher.ptr.541 = alloca [5 x i8]
  store [5 x i8] c"\41\56\41\6a\00", [5 x i8]* %cipher.ptr.541
  %cipher.541 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.541, i32 0, i32 0
  %plain.ptr.541 = tail call i8* @base64_decode(i8* %cipher.541)
  %spi541 = bitcast i8* %plain.ptr.541 to [3 x i8]*
  %s4.161 = load [3 x i8], [3 x i8]* %spi541
;-------------------------------
  %sp4.161 = bitcast i8* %next3.161 to [3 x i8]*
  store [3 x i8] %s4.161, [3 x i8]* %sp4.161
  %next4.161 = getelementptr [21 x i8], [21 x i8]* %sp161, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.161 = load [2 x i8], [2 x i8]* @str.5.161
  %cipher.ptr.545 = alloca [5 x i8]
  store [5 x i8] c"\45\41\49\3d\00", [5 x i8]* %cipher.ptr.545
  %cipher.545 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.545, i32 0, i32 0
  %plain.ptr.545 = tail call i8* @base64_decode(i8* %cipher.545)
  %spi545 = bitcast i8* %plain.ptr.545 to [2 x i8]*
  %s5.161 = load [2 x i8], [2 x i8]* %spi545
;-------------------------------
  %sp5.161 = bitcast i8* %next4.161 to [2 x i8]*
  store [2 x i8] %s5.161, [2 x i8]* %sp5.161
  %next5.161 = getelementptr [21 x i8], [21 x i8]* %sp161, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.161 = load [3 x i8], [3 x i8]* @str.6.161
  %cipher.ptr.543 = alloca [5 x i8]
  store [5 x i8] c"\48\6a\77\34\00", [5 x i8]* %cipher.ptr.543
  %cipher.543 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.543, i32 0, i32 0
  %plain.ptr.543 = tail call i8* @base64_decode(i8* %cipher.543)
  %spi543 = bitcast i8* %plain.ptr.543 to [3 x i8]*
  %s6.161 = load [3 x i8], [3 x i8]* %spi543
;-------------------------------
  %sp6.161 = bitcast i8* %next5.161 to [3 x i8]*
  store [3 x i8] %s6.161, [3 x i8]* %sp6.161
  %next6.161 = getelementptr [21 x i8], [21 x i8]* %sp161, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.161 = load [3 x i8], [3 x i8]* @str.7.161
  %cipher.ptr.540 = alloca [5 x i8]
  store [5 x i8] c"\4e\77\51\77\00", [5 x i8]* %cipher.ptr.540
  %cipher.540 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.540, i32 0, i32 0
  %plain.ptr.540 = tail call i8* @base64_decode(i8* %cipher.540)
  %spi540 = bitcast i8* %plain.ptr.540 to [3 x i8]*
  %s7.161 = load [3 x i8], [3 x i8]* %spi540
;-------------------------------
  %sp7.161 = bitcast i8* %next6.161 to [3 x i8]*
  store [3 x i8] %s7.161, [3 x i8]* %sp7.161

  %spi161 = load [21 x i8], [21 x i8]* %sp161
  store [21 x i8] %spi161, [21 x i8]* %sp0.40
;-------------------------------
  %sp0.1.40 = bitcast [21 x i8]* %sp0.40 to i168*
  %i0.40 = load i168, i168* %sp0.1.40

  %sp1.40 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\54\39\74\4d\64\4e\61\51\6d\36\65\35\50\73\67\70\58\51\59\63\30", [21 x i8]* %sp1.40
  %sp162 = alloca [21 x i8]
  
;-------------------------------
; Replace: %s0.162 = load [2 x i8], [2 x i8]* @str.0.162
  %cipher.ptr.553 = alloca [5 x i8]
  store [5 x i8] c"\56\44\6b\3d\00", [5 x i8]* %cipher.ptr.553
  %cipher.553 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.553, i32 0, i32 0
  %plain.ptr.553 = tail call i8* @base64_decode(i8* %cipher.553)
  %spi553 = bitcast i8* %plain.ptr.553 to [2 x i8]*
  %s0.162 = load [2 x i8], [2 x i8]* %spi553
;-------------------------------
  %sp0.162 = bitcast [21 x i8]* %sp162 to [2 x i8]*
  store [2 x i8] %s0.162, [2 x i8]* %sp0.162
  %next0.162 = getelementptr [21 x i8], [21 x i8]* %sp162, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.162 = load [3 x i8], [3 x i8]* @str.1.162
  %cipher.ptr.550 = alloca [5 x i8]
  store [5 x i8] c"\64\45\31\6b\00", [5 x i8]* %cipher.ptr.550
  %cipher.550 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.550, i32 0, i32 0
  %plain.ptr.550 = tail call i8* @base64_decode(i8* %cipher.550)
  %spi550 = bitcast i8* %plain.ptr.550 to [3 x i8]*
  %s1.162 = load [3 x i8], [3 x i8]* %spi550
;-------------------------------
  %sp1.162 = bitcast i8* %next0.162 to [3 x i8]*
  store [3 x i8] %s1.162, [3 x i8]* %sp1.162
  %next1.162 = getelementptr [21 x i8], [21 x i8]* %sp162, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.162 = load [2 x i8], [2 x i8]* @str.2.162
  %cipher.ptr.547 = alloca [5 x i8]
  store [5 x i8] c"\54\6d\45\3d\00", [5 x i8]* %cipher.ptr.547
  %cipher.547 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.547, i32 0, i32 0
  %plain.ptr.547 = tail call i8* @base64_decode(i8* %cipher.547)
  %spi547 = bitcast i8* %plain.ptr.547 to [2 x i8]*
  %s2.162 = load [2 x i8], [2 x i8]* %spi547
;-------------------------------
  %sp2.162 = bitcast i8* %next1.162 to [2 x i8]*
  store [2 x i8] %s2.162, [2 x i8]* %sp2.162
  %next2.162 = getelementptr [21 x i8], [21 x i8]* %sp162, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.162 = load [3 x i8], [3 x i8]* @str.3.162
  %cipher.ptr.548 = alloca [5 x i8]
  store [5 x i8] c"\55\57\30\32\00", [5 x i8]* %cipher.ptr.548
  %cipher.548 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.548, i32 0, i32 0
  %plain.ptr.548 = tail call i8* @base64_decode(i8* %cipher.548)
  %spi548 = bitcast i8* %plain.ptr.548 to [3 x i8]*
  %s3.162 = load [3 x i8], [3 x i8]* %spi548
;-------------------------------
  %sp3.162 = bitcast i8* %next2.162 to [3 x i8]*
  store [3 x i8] %s3.162, [3 x i8]* %sp3.162
  %next3.162 = getelementptr [21 x i8], [21 x i8]* %sp162, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.162 = load [3 x i8], [3 x i8]* @str.4.162
  %cipher.ptr.552 = alloca [5 x i8]
  store [5 x i8] c"\5a\54\56\51\00", [5 x i8]* %cipher.ptr.552
  %cipher.552 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.552, i32 0, i32 0
  %plain.ptr.552 = tail call i8* @base64_decode(i8* %cipher.552)
  %spi552 = bitcast i8* %plain.ptr.552 to [3 x i8]*
  %s4.162 = load [3 x i8], [3 x i8]* %spi552
;-------------------------------
  %sp4.162 = bitcast i8* %next3.162 to [3 x i8]*
  store [3 x i8] %s4.162, [3 x i8]* %sp4.162
  %next4.162 = getelementptr [21 x i8], [21 x i8]* %sp162, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.162 = load [2 x i8], [2 x i8]* @str.5.162
  %cipher.ptr.549 = alloca [5 x i8]
  store [5 x i8] c"\63\32\63\3d\00", [5 x i8]* %cipher.ptr.549
  %cipher.549 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.549, i32 0, i32 0
  %plain.ptr.549 = tail call i8* @base64_decode(i8* %cipher.549)
  %spi549 = bitcast i8* %plain.ptr.549 to [2 x i8]*
  %s5.162 = load [2 x i8], [2 x i8]* %spi549
;-------------------------------
  %sp5.162 = bitcast i8* %next4.162 to [2 x i8]*
  store [2 x i8] %s5.162, [2 x i8]* %sp5.162
  %next5.162 = getelementptr [21 x i8], [21 x i8]* %sp162, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.162 = load [3 x i8], [3 x i8]* @str.6.162
  %cipher.ptr.546 = alloca [5 x i8]
  store [5 x i8] c"\63\46\68\52\00", [5 x i8]* %cipher.ptr.546
  %cipher.546 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.546, i32 0, i32 0
  %plain.ptr.546 = tail call i8* @base64_decode(i8* %cipher.546)
  %spi546 = bitcast i8* %plain.ptr.546 to [3 x i8]*
  %s6.162 = load [3 x i8], [3 x i8]* %spi546
;-------------------------------
  %sp6.162 = bitcast i8* %next5.162 to [3 x i8]*
  store [3 x i8] %s6.162, [3 x i8]* %sp6.162
  %next6.162 = getelementptr [21 x i8], [21 x i8]* %sp162, i32 0, i32 18
  
;-------------------------------
; Replace: %s7.162 = load [3 x i8], [3 x i8]* @str.7.162
  %cipher.ptr.551 = alloca [5 x i8]
  store [5 x i8] c"\57\57\4d\77\00", [5 x i8]* %cipher.ptr.551
  %cipher.551 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.551, i32 0, i32 0
  %plain.ptr.551 = tail call i8* @base64_decode(i8* %cipher.551)
  %spi551 = bitcast i8* %plain.ptr.551 to [3 x i8]*
  %s7.162 = load [3 x i8], [3 x i8]* %spi551
;-------------------------------
  %sp7.162 = bitcast i8* %next6.162 to [3 x i8]*
  store [3 x i8] %s7.162, [3 x i8]* %sp7.162

  %spi162 = load [21 x i8], [21 x i8]* %sp162
  store [21 x i8] %spi162, [21 x i8]* %sp1.40
;-------------------------------
  %sp1.1.40 = bitcast [21 x i8]* %sp1.40 to i168*
  %i1.40 = load i168, i168* %sp1.1.40

  %xp40 = xor i168 %i0.40, %i1.40

  %fi.40 = alloca i168
  store i168 %xp40, i168* %fi.40

  %spi40 = bitcast i168* %fi.40 to [21 x i8]*
  %spi.bis.72 = ptrtoint[21 x i8]* %spi40 to i32
;-------------------------------
  store i32 %spi.bis.72, i32* %31, align 16
  store i32 134517616, i32* %32, align 4
  %arg.i.i56 = load i32, i32* %31, align 16
  %83 = inttoptr i32 %arg.i.i56 to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp87 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %83)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast87= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.222 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.222
  %cipher.222 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.222, i32 0, i32 0
  %plain.ptr.222 = tail call i8* @base64_decode(i8* %cipher.222)
  %spi222 = bitcast i8* %plain.ptr.222 to [1 x i8]*
  %cast87= getelementptr [1 x i8], [1 x i8]* %spi222, i64 0, i64 0
;-------------------------------
  %84 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast87)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  store i32 10, i32* %31, align 16
  store i32 134517649, i32* %32, align 4
  %arg.i.i57 = load i32, i32* %31, align 16
  %85 = tail call i32 @putchar(i32 %arg.i.i57)  nounwind 
  store i32 10, i32* %30, align 4
  %tmp2_v2.i112.i = add i32 %82, -92
  store i32 %tmp2_v2.i112.i, i32* %31, align 16
  store i32 134517666, i32* %32, align 4
  %86 = tail call fastcc { i32, i32 } @Func_sorted(i32 %tmp2_v27.i.i, i32 %82)
  %newret = extractvalue { i32, i32 } %86, 0
  %newret2 = extractvalue { i32, i32 } %86, 1
  %87 = inttoptr i32 %newret to i32*
;-------------------------------
; Replace: %spi.bis.71 = ptrtoint[17 x i8]* @str.bis.71 to i32
  %sp0.39 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\09\3D\01\51\23\46\12\21\0B\19\4B\57\1E\06\1D\0C\66", [17 x i8]* %sp0.39
  %sp163 = alloca [17 x i8]
  
;-------------------------------
; Replace: %s0.163 = load [2 x i8], [2 x i8]* @str.0.163
  %cipher.ptr.561 = alloca [5 x i8]
  store [5 x i8] c"\43\54\30\3d\00", [5 x i8]* %cipher.ptr.561
  %cipher.561 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.561, i32 0, i32 0
  %plain.ptr.561 = tail call i8* @base64_decode(i8* %cipher.561)
  %spi561 = bitcast i8* %plain.ptr.561 to [2 x i8]*
  %s0.163 = load [2 x i8], [2 x i8]* %spi561
;-------------------------------
  %sp0.163 = bitcast [17 x i8]* %sp163 to [2 x i8]*
  store [2 x i8] %s0.163, [2 x i8]* %sp0.163
  %next0.163 = getelementptr [17 x i8], [17 x i8]* %sp163, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.163 = load [2 x i8], [2 x i8]* @str.1.163
  %cipher.ptr.556 = alloca [5 x i8]
  store [5 x i8] c"\41\56\45\3d\00", [5 x i8]* %cipher.ptr.556
  %cipher.556 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.556, i32 0, i32 0
  %plain.ptr.556 = tail call i8* @base64_decode(i8* %cipher.556)
  %spi556 = bitcast i8* %plain.ptr.556 to [2 x i8]*
  %s1.163 = load [2 x i8], [2 x i8]* %spi556
;-------------------------------
  %sp1.163 = bitcast i8* %next0.163 to [2 x i8]*
  store [2 x i8] %s1.163, [2 x i8]* %sp1.163
  %next1.163 = getelementptr [17 x i8], [17 x i8]* %sp163, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.163 = load [2 x i8], [2 x i8]* @str.2.163
  %cipher.ptr.560 = alloca [5 x i8]
  store [5 x i8] c"\49\30\59\3d\00", [5 x i8]* %cipher.ptr.560
  %cipher.560 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.560, i32 0, i32 0
  %plain.ptr.560 = tail call i8* @base64_decode(i8* %cipher.560)
  %spi560 = bitcast i8* %plain.ptr.560 to [2 x i8]*
  %s2.163 = load [2 x i8], [2 x i8]* %spi560
;-------------------------------
  %sp2.163 = bitcast i8* %next1.163 to [2 x i8]*
  store [2 x i8] %s2.163, [2 x i8]* %sp2.163
  %next2.163 = getelementptr [17 x i8], [17 x i8]* %sp163, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.163 = load [2 x i8], [2 x i8]* @str.3.163
  %cipher.ptr.554 = alloca [5 x i8]
  store [5 x i8] c"\45\69\45\3d\00", [5 x i8]* %cipher.ptr.554
  %cipher.554 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.554, i32 0, i32 0
  %plain.ptr.554 = tail call i8* @base64_decode(i8* %cipher.554)
  %spi554 = bitcast i8* %plain.ptr.554 to [2 x i8]*
  %s3.163 = load [2 x i8], [2 x i8]* %spi554
;-------------------------------
  %sp3.163 = bitcast i8* %next2.163 to [2 x i8]*
  store [2 x i8] %s3.163, [2 x i8]* %sp3.163
  %next3.163 = getelementptr [17 x i8], [17 x i8]* %sp163, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.163 = load [2 x i8], [2 x i8]* @str.4.163
  %cipher.ptr.555 = alloca [5 x i8]
  store [5 x i8] c"\43\78\6b\3d\00", [5 x i8]* %cipher.ptr.555
  %cipher.555 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.555, i32 0, i32 0
  %plain.ptr.555 = tail call i8* @base64_decode(i8* %cipher.555)
  %spi555 = bitcast i8* %plain.ptr.555 to [2 x i8]*
  %s4.163 = load [2 x i8], [2 x i8]* %spi555
;-------------------------------
  %sp4.163 = bitcast i8* %next3.163 to [2 x i8]*
  store [2 x i8] %s4.163, [2 x i8]* %sp4.163
  %next4.163 = getelementptr [17 x i8], [17 x i8]* %sp163, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.163 = load [2 x i8], [2 x i8]* @str.5.163
  %cipher.ptr.557 = alloca [5 x i8]
  store [5 x i8] c"\53\31\63\3d\00", [5 x i8]* %cipher.ptr.557
  %cipher.557 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.557, i32 0, i32 0
  %plain.ptr.557 = tail call i8* @base64_decode(i8* %cipher.557)
  %spi557 = bitcast i8* %plain.ptr.557 to [2 x i8]*
  %s5.163 = load [2 x i8], [2 x i8]* %spi557
;-------------------------------
  %sp5.163 = bitcast i8* %next4.163 to [2 x i8]*
  store [2 x i8] %s5.163, [2 x i8]* %sp5.163
  %next5.163 = getelementptr [17 x i8], [17 x i8]* %sp163, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.163 = load [2 x i8], [2 x i8]* @str.6.163
  %cipher.ptr.558 = alloca [5 x i8]
  store [5 x i8] c"\48\67\59\3d\00", [5 x i8]* %cipher.ptr.558
  %cipher.558 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.558, i32 0, i32 0
  %plain.ptr.558 = tail call i8* @base64_decode(i8* %cipher.558)
  %spi558 = bitcast i8* %plain.ptr.558 to [2 x i8]*
  %s6.163 = load [2 x i8], [2 x i8]* %spi558
;-------------------------------
  %sp6.163 = bitcast i8* %next5.163 to [2 x i8]*
  store [2 x i8] %s6.163, [2 x i8]* %sp6.163
  %next6.163 = getelementptr [17 x i8], [17 x i8]* %sp163, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.163 = load [3 x i8], [3 x i8]* @str.7.163
  %cipher.ptr.559 = alloca [5 x i8]
  store [5 x i8] c"\48\51\78\6d\00", [5 x i8]* %cipher.ptr.559
  %cipher.559 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.559, i32 0, i32 0
  %plain.ptr.559 = tail call i8* @base64_decode(i8* %cipher.559)
  %spi559 = bitcast i8* %plain.ptr.559 to [3 x i8]*
  %s7.163 = load [3 x i8], [3 x i8]* %spi559
;-------------------------------
  %sp7.163 = bitcast i8* %next6.163 to [3 x i8]*
  store [3 x i8] %s7.163, [3 x i8]* %sp7.163

  %spi163 = load [17 x i8], [17 x i8]* %sp163
  store [17 x i8] %spi163, [17 x i8]* %sp0.39
;-------------------------------
  %sp0.1.39 = bitcast [17 x i8]* %sp0.39 to i136*
  %i0.39 = load i136, i136* %sp0.1.39

  %sp1.39 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\68\4f\73\30\5a\77\32\48\78\39\38\38\6c\72\78\68\66", [17 x i8]* %sp1.39
  %sp164 = alloca [17 x i8]
  
;-------------------------------
; Replace: %s0.164 = load [2 x i8], [2 x i8]* @str.0.164
  %cipher.ptr.562 = alloca [5 x i8]
  store [5 x i8] c"\61\45\38\3d\00", [5 x i8]* %cipher.ptr.562
  %cipher.562 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.562, i32 0, i32 0
  %plain.ptr.562 = tail call i8* @base64_decode(i8* %cipher.562)
  %spi562 = bitcast i8* %plain.ptr.562 to [2 x i8]*
  %s0.164 = load [2 x i8], [2 x i8]* %spi562
;-------------------------------
  %sp0.164 = bitcast [17 x i8]* %sp164 to [2 x i8]*
  store [2 x i8] %s0.164, [2 x i8]* %sp0.164
  %next0.164 = getelementptr [17 x i8], [17 x i8]* %sp164, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.164 = load [2 x i8], [2 x i8]* @str.1.164
  %cipher.ptr.569 = alloca [5 x i8]
  store [5 x i8] c"\63\7a\41\3d\00", [5 x i8]* %cipher.ptr.569
  %cipher.569 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.569, i32 0, i32 0
  %plain.ptr.569 = tail call i8* @base64_decode(i8* %cipher.569)
  %spi569 = bitcast i8* %plain.ptr.569 to [2 x i8]*
  %s1.164 = load [2 x i8], [2 x i8]* %spi569
;-------------------------------
  %sp1.164 = bitcast i8* %next0.164 to [2 x i8]*
  store [2 x i8] %s1.164, [2 x i8]* %sp1.164
  %next1.164 = getelementptr [17 x i8], [17 x i8]* %sp164, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.164 = load [2 x i8], [2 x i8]* @str.2.164
  %cipher.ptr.567 = alloca [5 x i8]
  store [5 x i8] c"\57\6e\63\3d\00", [5 x i8]* %cipher.ptr.567
  %cipher.567 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.567, i32 0, i32 0
  %plain.ptr.567 = tail call i8* @base64_decode(i8* %cipher.567)
  %spi567 = bitcast i8* %plain.ptr.567 to [2 x i8]*
  %s2.164 = load [2 x i8], [2 x i8]* %spi567
;-------------------------------
  %sp2.164 = bitcast i8* %next1.164 to [2 x i8]*
  store [2 x i8] %s2.164, [2 x i8]* %sp2.164
  %next2.164 = getelementptr [17 x i8], [17 x i8]* %sp164, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.164 = load [2 x i8], [2 x i8]* @str.3.164
  %cipher.ptr.568 = alloca [5 x i8]
  store [5 x i8] c"\4d\6b\67\3d\00", [5 x i8]* %cipher.ptr.568
  %cipher.568 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.568, i32 0, i32 0
  %plain.ptr.568 = tail call i8* @base64_decode(i8* %cipher.568)
  %spi568 = bitcast i8* %plain.ptr.568 to [2 x i8]*
  %s3.164 = load [2 x i8], [2 x i8]* %spi568
;-------------------------------
  %sp3.164 = bitcast i8* %next2.164 to [2 x i8]*
  store [2 x i8] %s3.164, [2 x i8]* %sp3.164
  %next3.164 = getelementptr [17 x i8], [17 x i8]* %sp164, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.164 = load [2 x i8], [2 x i8]* @str.4.164
  %cipher.ptr.564 = alloca [5 x i8]
  store [5 x i8] c"\65\44\6b\3d\00", [5 x i8]* %cipher.ptr.564
  %cipher.564 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.564, i32 0, i32 0
  %plain.ptr.564 = tail call i8* @base64_decode(i8* %cipher.564)
  %spi564 = bitcast i8* %plain.ptr.564 to [2 x i8]*
  %s4.164 = load [2 x i8], [2 x i8]* %spi564
;-------------------------------
  %sp4.164 = bitcast i8* %next3.164 to [2 x i8]*
  store [2 x i8] %s4.164, [2 x i8]* %sp4.164
  %next4.164 = getelementptr [17 x i8], [17 x i8]* %sp164, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.164 = load [2 x i8], [2 x i8]* @str.5.164
  %cipher.ptr.565 = alloca [5 x i8]
  store [5 x i8] c"\4f\44\67\3d\00", [5 x i8]* %cipher.ptr.565
  %cipher.565 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.565, i32 0, i32 0
  %plain.ptr.565 = tail call i8* @base64_decode(i8* %cipher.565)
  %spi565 = bitcast i8* %plain.ptr.565 to [2 x i8]*
  %s5.164 = load [2 x i8], [2 x i8]* %spi565
;-------------------------------
  %sp5.164 = bitcast i8* %next4.164 to [2 x i8]*
  store [2 x i8] %s5.164, [2 x i8]* %sp5.164
  %next5.164 = getelementptr [17 x i8], [17 x i8]* %sp164, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.164 = load [2 x i8], [2 x i8]* @str.6.164
  %cipher.ptr.563 = alloca [5 x i8]
  store [5 x i8] c"\62\48\49\3d\00", [5 x i8]* %cipher.ptr.563
  %cipher.563 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.563, i32 0, i32 0
  %plain.ptr.563 = tail call i8* @base64_decode(i8* %cipher.563)
  %spi563 = bitcast i8* %plain.ptr.563 to [2 x i8]*
  %s6.164 = load [2 x i8], [2 x i8]* %spi563
;-------------------------------
  %sp6.164 = bitcast i8* %next5.164 to [2 x i8]*
  store [2 x i8] %s6.164, [2 x i8]* %sp6.164
  %next6.164 = getelementptr [17 x i8], [17 x i8]* %sp164, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.164 = load [3 x i8], [3 x i8]* @str.7.164
  %cipher.ptr.566 = alloca [5 x i8]
  store [5 x i8] c"\65\47\68\6d\00", [5 x i8]* %cipher.ptr.566
  %cipher.566 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.566, i32 0, i32 0
  %plain.ptr.566 = tail call i8* @base64_decode(i8* %cipher.566)
  %spi566 = bitcast i8* %plain.ptr.566 to [3 x i8]*
  %s7.164 = load [3 x i8], [3 x i8]* %spi566
;-------------------------------
  %sp7.164 = bitcast i8* %next6.164 to [3 x i8]*
  store [3 x i8] %s7.164, [3 x i8]* %sp7.164

  %spi164 = load [17 x i8], [17 x i8]* %sp164
  store [17 x i8] %spi164, [17 x i8]* %sp1.39
;-------------------------------
  %sp1.1.39 = bitcast [17 x i8]* %sp1.39 to i136*
  %i1.39 = load i136, i136* %sp1.1.39

  %xp39 = xor i136 %i0.39, %i1.39

  %fi.39 = alloca i136
  store i136 %xp39, i136* %fi.39

  %spi39 = bitcast i136* %fi.39 to [17 x i8]*
  %spi.bis.71 = ptrtoint[17 x i8]* %spi39 to i32
;-------------------------------
  store i32 %spi.bis.71, i32* %87, align 4
  %tmp2_v2.i.i = add i32 %newret, -4
  %88 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517688, i32* %88, align 4
  %arg.i.i58 = load i32, i32* %87, align 4
  %89 = inttoptr i32 %arg.i.i58 to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp88 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %89)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast88= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.223 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.223
  %cipher.223 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.223, i32 0, i32 0
  %plain.ptr.223 = tail call i8* @base64_decode(i8* %cipher.223)
  %spi223 = bitcast i8* %plain.ptr.223 to [1 x i8]*
  %cast88= getelementptr [1 x i8], [1 x i8]* %spi223, i64 0, i64 0
;-------------------------------
  %90 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast88)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  %tmp2_v.i62.i = add i32 %newret, 4
  %91 = inttoptr i32 %tmp2_v.i62.i to i32*
  store i32 10, i32* %91, align 4
  %tmp2_v1.i64.i = add i32 %newret2, -52
  store i32 %tmp2_v1.i64.i, i32* %87, align 4
  store i32 134517725, i32* %88, align 4
  %92 = tail call fastcc { i32, i32 } @Func_sorted(i32 %tmp2_v2.i.i, i32 %newret2)
  %newret4 = extractvalue { i32, i32 } %92, 0
  %93 = inttoptr i32 %newret4 to i32*
;-------------------------------
; Replace: %spi.bis.70 = ptrtoint[17 x i8]* @str.bis.70 to i32
  %sp0.38 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\54\30\35\59\0B\02\63\23\00\57\14\57\0B\17\36\0E\35", [17 x i8]* %sp0.38
  %sp165 = alloca [17 x i8]
  
;-------------------------------
; Replace: %s0.165 = load [2 x i8], [2 x i8]* @str.0.165
  %cipher.ptr.577 = alloca [5 x i8]
  store [5 x i8] c"\56\44\41\3d\00", [5 x i8]* %cipher.ptr.577
  %cipher.577 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.577, i32 0, i32 0
  %plain.ptr.577 = tail call i8* @base64_decode(i8* %cipher.577)
  %spi577 = bitcast i8* %plain.ptr.577 to [2 x i8]*
  %s0.165 = load [2 x i8], [2 x i8]* %spi577
;-------------------------------
  %sp0.165 = bitcast [17 x i8]* %sp165 to [2 x i8]*
  store [2 x i8] %s0.165, [2 x i8]* %sp0.165
  %next0.165 = getelementptr [17 x i8], [17 x i8]* %sp165, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.165 = load [2 x i8], [2 x i8]* @str.1.165
  %cipher.ptr.570 = alloca [5 x i8]
  store [5 x i8] c"\4e\56\6b\3d\00", [5 x i8]* %cipher.ptr.570
  %cipher.570 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.570, i32 0, i32 0
  %plain.ptr.570 = tail call i8* @base64_decode(i8* %cipher.570)
  %spi570 = bitcast i8* %plain.ptr.570 to [2 x i8]*
  %s1.165 = load [2 x i8], [2 x i8]* %spi570
;-------------------------------
  %sp1.165 = bitcast i8* %next0.165 to [2 x i8]*
  store [2 x i8] %s1.165, [2 x i8]* %sp1.165
  %next1.165 = getelementptr [17 x i8], [17 x i8]* %sp165, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.165 = load [2 x i8], [2 x i8]* @str.2.165
  %cipher.ptr.574 = alloca [5 x i8]
  store [5 x i8] c"\43\77\49\3d\00", [5 x i8]* %cipher.ptr.574
  %cipher.574 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.574, i32 0, i32 0
  %plain.ptr.574 = tail call i8* @base64_decode(i8* %cipher.574)
  %spi574 = bitcast i8* %plain.ptr.574 to [2 x i8]*
  %s2.165 = load [2 x i8], [2 x i8]* %spi574
;-------------------------------
  %sp2.165 = bitcast i8* %next1.165 to [2 x i8]*
  store [2 x i8] %s2.165, [2 x i8]* %sp2.165
  %next2.165 = getelementptr [17 x i8], [17 x i8]* %sp165, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.165 = load [2 x i8], [2 x i8]* @str.3.165
  %cipher.ptr.576 = alloca [5 x i8]
  store [5 x i8] c"\59\79\4d\3d\00", [5 x i8]* %cipher.ptr.576
  %cipher.576 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.576, i32 0, i32 0
  %plain.ptr.576 = tail call i8* @base64_decode(i8* %cipher.576)
  %spi576 = bitcast i8* %plain.ptr.576 to [2 x i8]*
  %s3.165 = load [2 x i8], [2 x i8]* %spi576
;-------------------------------
  %sp3.165 = bitcast i8* %next2.165 to [2 x i8]*
  store [2 x i8] %s3.165, [2 x i8]* %sp3.165
  %next3.165 = getelementptr [17 x i8], [17 x i8]* %sp165, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.165 = load [2 x i8], [2 x i8]* @str.4.165
  %cipher.ptr.572 = alloca [5 x i8]
  store [5 x i8] c"\41\46\63\3d\00", [5 x i8]* %cipher.ptr.572
  %cipher.572 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.572, i32 0, i32 0
  %plain.ptr.572 = tail call i8* @base64_decode(i8* %cipher.572)
  %spi572 = bitcast i8* %plain.ptr.572 to [2 x i8]*
  %s4.165 = load [2 x i8], [2 x i8]* %spi572
;-------------------------------
  %sp4.165 = bitcast i8* %next3.165 to [2 x i8]*
  store [2 x i8] %s4.165, [2 x i8]* %sp4.165
  %next4.165 = getelementptr [17 x i8], [17 x i8]* %sp165, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.165 = load [2 x i8], [2 x i8]* @str.5.165
  %cipher.ptr.571 = alloca [5 x i8]
  store [5 x i8] c"\46\46\63\3d\00", [5 x i8]* %cipher.ptr.571
  %cipher.571 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.571, i32 0, i32 0
  %plain.ptr.571 = tail call i8* @base64_decode(i8* %cipher.571)
  %spi571 = bitcast i8* %plain.ptr.571 to [2 x i8]*
  %s5.165 = load [2 x i8], [2 x i8]* %spi571
;-------------------------------
  %sp5.165 = bitcast i8* %next4.165 to [2 x i8]*
  store [2 x i8] %s5.165, [2 x i8]* %sp5.165
  %next5.165 = getelementptr [17 x i8], [17 x i8]* %sp165, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.165 = load [2 x i8], [2 x i8]* @str.6.165
  %cipher.ptr.573 = alloca [5 x i8]
  store [5 x i8] c"\43\78\63\3d\00", [5 x i8]* %cipher.ptr.573
  %cipher.573 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.573, i32 0, i32 0
  %plain.ptr.573 = tail call i8* @base64_decode(i8* %cipher.573)
  %spi573 = bitcast i8* %plain.ptr.573 to [2 x i8]*
  %s6.165 = load [2 x i8], [2 x i8]* %spi573
;-------------------------------
  %sp6.165 = bitcast i8* %next5.165 to [2 x i8]*
  store [2 x i8] %s6.165, [2 x i8]* %sp6.165
  %next6.165 = getelementptr [17 x i8], [17 x i8]* %sp165, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.165 = load [3 x i8], [3 x i8]* @str.7.165
  %cipher.ptr.575 = alloca [5 x i8]
  store [5 x i8] c"\4e\67\34\31\00", [5 x i8]* %cipher.ptr.575
  %cipher.575 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.575, i32 0, i32 0
  %plain.ptr.575 = tail call i8* @base64_decode(i8* %cipher.575)
  %spi575 = bitcast i8* %plain.ptr.575 to [3 x i8]*
  %s7.165 = load [3 x i8], [3 x i8]* %spi575
;-------------------------------
  %sp7.165 = bitcast i8* %next6.165 to [3 x i8]*
  store [3 x i8] %s7.165, [3 x i8]* %sp7.165

  %spi165 = load [17 x i8], [17 x i8]* %sp165
  store [17 x i8] %spi165, [17 x i8]* %sp0.38
;-------------------------------
  %sp0.1.38 = bitcast [17 x i8]* %sp0.38 to i136*
  %i0.38 = load i136, i136* %sp0.1.38

  %sp1.38 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\35\42\47\38\72\30\43\4a\73\77\67\38\79\63\53\6a\35", [17 x i8]* %sp1.38
  %sp166 = alloca [17 x i8]
  
;-------------------------------
; Replace: %s0.166 = load [2 x i8], [2 x i8]* @str.0.166
  %cipher.ptr.585 = alloca [5 x i8]
  store [5 x i8] c"\4e\55\49\3d\00", [5 x i8]* %cipher.ptr.585
  %cipher.585 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.585, i32 0, i32 0
  %plain.ptr.585 = tail call i8* @base64_decode(i8* %cipher.585)
  %spi585 = bitcast i8* %plain.ptr.585 to [2 x i8]*
  %s0.166 = load [2 x i8], [2 x i8]* %spi585
;-------------------------------
  %sp0.166 = bitcast [17 x i8]* %sp166 to [2 x i8]*
  store [2 x i8] %s0.166, [2 x i8]* %sp0.166
  %next0.166 = getelementptr [17 x i8], [17 x i8]* %sp166, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.166 = load [2 x i8], [2 x i8]* @str.1.166
  %cipher.ptr.579 = alloca [5 x i8]
  store [5 x i8] c"\52\7a\67\3d\00", [5 x i8]* %cipher.ptr.579
  %cipher.579 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.579, i32 0, i32 0
  %plain.ptr.579 = tail call i8* @base64_decode(i8* %cipher.579)
  %spi579 = bitcast i8* %plain.ptr.579 to [2 x i8]*
  %s1.166 = load [2 x i8], [2 x i8]* %spi579
;-------------------------------
  %sp1.166 = bitcast i8* %next0.166 to [2 x i8]*
  store [2 x i8] %s1.166, [2 x i8]* %sp1.166
  %next1.166 = getelementptr [17 x i8], [17 x i8]* %sp166, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.166 = load [2 x i8], [2 x i8]* @str.2.166
  %cipher.ptr.584 = alloca [5 x i8]
  store [5 x i8] c"\63\6a\41\3d\00", [5 x i8]* %cipher.ptr.584
  %cipher.584 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.584, i32 0, i32 0
  %plain.ptr.584 = tail call i8* @base64_decode(i8* %cipher.584)
  %spi584 = bitcast i8* %plain.ptr.584 to [2 x i8]*
  %s2.166 = load [2 x i8], [2 x i8]* %spi584
;-------------------------------
  %sp2.166 = bitcast i8* %next1.166 to [2 x i8]*
  store [2 x i8] %s2.166, [2 x i8]* %sp2.166
  %next2.166 = getelementptr [17 x i8], [17 x i8]* %sp166, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.166 = load [2 x i8], [2 x i8]* @str.3.166
  %cipher.ptr.581 = alloca [5 x i8]
  store [5 x i8] c"\51\30\6f\3d\00", [5 x i8]* %cipher.ptr.581
  %cipher.581 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.581, i32 0, i32 0
  %plain.ptr.581 = tail call i8* @base64_decode(i8* %cipher.581)
  %spi581 = bitcast i8* %plain.ptr.581 to [2 x i8]*
  %s3.166 = load [2 x i8], [2 x i8]* %spi581
;-------------------------------
  %sp3.166 = bitcast i8* %next2.166 to [2 x i8]*
  store [2 x i8] %s3.166, [2 x i8]* %sp3.166
  %next3.166 = getelementptr [17 x i8], [17 x i8]* %sp166, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.166 = load [2 x i8], [2 x i8]* @str.4.166
  %cipher.ptr.582 = alloca [5 x i8]
  store [5 x i8] c"\63\33\63\3d\00", [5 x i8]* %cipher.ptr.582
  %cipher.582 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.582, i32 0, i32 0
  %plain.ptr.582 = tail call i8* @base64_decode(i8* %cipher.582)
  %spi582 = bitcast i8* %plain.ptr.582 to [2 x i8]*
  %s4.166 = load [2 x i8], [2 x i8]* %spi582
;-------------------------------
  %sp4.166 = bitcast i8* %next3.166 to [2 x i8]*
  store [2 x i8] %s4.166, [2 x i8]* %sp4.166
  %next4.166 = getelementptr [17 x i8], [17 x i8]* %sp166, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.166 = load [2 x i8], [2 x i8]* @str.5.166
  %cipher.ptr.580 = alloca [5 x i8]
  store [5 x i8] c"\5a\7a\67\3d\00", [5 x i8]* %cipher.ptr.580
  %cipher.580 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.580, i32 0, i32 0
  %plain.ptr.580 = tail call i8* @base64_decode(i8* %cipher.580)
  %spi580 = bitcast i8* %plain.ptr.580 to [2 x i8]*
  %s5.166 = load [2 x i8], [2 x i8]* %spi580
;-------------------------------
  %sp5.166 = bitcast i8* %next4.166 to [2 x i8]*
  store [2 x i8] %s5.166, [2 x i8]* %sp5.166
  %next5.166 = getelementptr [17 x i8], [17 x i8]* %sp166, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.166 = load [2 x i8], [2 x i8]* @str.6.166
  %cipher.ptr.578 = alloca [5 x i8]
  store [5 x i8] c"\65\57\4d\3d\00", [5 x i8]* %cipher.ptr.578
  %cipher.578 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.578, i32 0, i32 0
  %plain.ptr.578 = tail call i8* @base64_decode(i8* %cipher.578)
  %spi578 = bitcast i8* %plain.ptr.578 to [2 x i8]*
  %s6.166 = load [2 x i8], [2 x i8]* %spi578
;-------------------------------
  %sp6.166 = bitcast i8* %next5.166 to [2 x i8]*
  store [2 x i8] %s6.166, [2 x i8]* %sp6.166
  %next6.166 = getelementptr [17 x i8], [17 x i8]* %sp166, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.166 = load [3 x i8], [3 x i8]* @str.7.166
  %cipher.ptr.583 = alloca [5 x i8]
  store [5 x i8] c"\55\32\6f\31\00", [5 x i8]* %cipher.ptr.583
  %cipher.583 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.583, i32 0, i32 0
  %plain.ptr.583 = tail call i8* @base64_decode(i8* %cipher.583)
  %spi583 = bitcast i8* %plain.ptr.583 to [3 x i8]*
  %s7.166 = load [3 x i8], [3 x i8]* %spi583
;-------------------------------
  %sp7.166 = bitcast i8* %next6.166 to [3 x i8]*
  store [3 x i8] %s7.166, [3 x i8]* %sp7.166

  %spi166 = load [17 x i8], [17 x i8]* %sp166
  store [17 x i8] %spi166, [17 x i8]* %sp1.38
;-------------------------------
  %sp1.1.38 = bitcast [17 x i8]* %sp1.38 to i136*
  %i1.38 = load i136, i136* %sp1.1.38

  %xp38 = xor i136 %i0.38, %i1.38

  %fi.38 = alloca i136
  store i136 %xp38, i136* %fi.38

  %spi38 = bitcast i136* %fi.38 to [17 x i8]*
  %spi.bis.70 = ptrtoint[17 x i8]* %spi38 to i32
;-------------------------------
  store i32 %spi.bis.70, i32* %93, align 4
  %tmp2_v2.i55.i = add i32 %newret4, -4
  %94 = inttoptr i32 %tmp2_v2.i55.i to i32*
  store i32 134517747, i32* %94, align 4
  %arg.i.i59 = load i32, i32* %93, align 4
  %95 = inttoptr i32 %arg.i.i59 to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp89 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %95)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast89= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.224 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.224
  %cipher.224 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.224, i32 0, i32 0
  %plain.ptr.224 = tail call i8* @base64_decode(i8* %cipher.224)
  %spi224 = bitcast i8* %plain.ptr.224 to [1 x i8]*
  %cast89= getelementptr [1 x i8], [1 x i8]* %spi224, i64 0, i64 0
;-------------------------------
  %96 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast89)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  ret void
}
define internal fastcc { i32, i32 } @Func_sorted(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree norecurse nosync nounwind  !retregs !198 {
Func_8049530.exit.i:
  %tmp2_v.i21.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i21.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i23.i = add i32 %arg_esp, -8
  %1 = inttoptr i32 %tmp2_v1.i23.i to i32*
  store i32 134518048, i32* %1, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %2 = inttoptr i32 %tmp2_v.i.i to i32*
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %arg_esp, 4
  %4 = inttoptr i32 %tmp2_v3.i.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v5.i.i = add i32 %arg_esp, -12
  %6 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %5, i32* %6, align 4
  %tmp2_v6.i.i = add i32 %arg_esp, -16
  %7 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 134518064, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %arg_esp, -20
  %8 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v.i21.i, i32* %8, align 4
  %tmp2_v1.i.i.i = add i32 %arg_esp, -40
  %9 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517817, i32* %9, align 4
  %tmp2_v.i17.i.i = add i32 %arg_esp, -24
  %10 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %BB_804945A.i.i, label %.exit

BB_804945A.i.i:                                   ; preds = %BB_8049490.i.i, %Func_8049530.exit.i
  %storemerge14.i = phi i32 [ %tmp0_v1.i7.i.i, %BB_8049490.i.i ], [ 1, %Func_8049530.exit.i ]
  %tmp0_v1.i.i.i = shl i32 %storemerge14.i, 2
  %13 = load i32, i32* %6, align 4
  %tmp4_v.i.i.i4 = add i32 %13, %tmp0_v1.i.i.i
  %tmp0_v4.i.i.i = add i32 %tmp4_v.i.i.i4, -4
  %14 = inttoptr i32 %tmp0_v4.i.i.i to i32*
  %15 = load i32, i32* %14, align 4
  %16 = inttoptr i32 %tmp4_v.i.i.i4 to i32*
  %17 = load i32, i32* %16, align 4
  %.not.i.i.i = icmp sgt i32 %15, %17
  %tmp0_v1.i7.i.i = add nuw nsw i32 %storemerge14.i, 1
  br i1 %.not.i.i.i, label %BB_8049537.i, label %BB_8049490.i.i

BB_8049490.i.i:                                   ; preds = %BB_804945A.i.i
  store i32 %tmp0_v1.i7.i.i, i32* %10, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %tmp0_v1.i7.i.i, %18
  br i1 %19, label %BB_804945A.i.i, label %.exit

BB_8049537.i:                                     ; preds = %BB_804945A.i.i
  %20 = load i32, i32* %8, align 4
  %tmp2_v.i10.i = add i32 %20, 12
  %21 = inttoptr i32 %tmp2_v.i10.i to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %1, align 4
  %tmp2_v2.i13.i = add i32 %20, 8
  %23 = inttoptr i32 %tmp2_v2.i13.i to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  store i32 134518082, i32* %7, align 4
  store i32 %20, i32* %8, align 4
  store i32 134517934, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %BB_80494CF.i.i, label %.exit

BB_8049505.i.i:                                   ; preds = %BB_80494CF.i.i
  store i32 %tmp0_v1.i24.i.i, i32* %10, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %tmp0_v1.i24.i.i, %27
  br i1 %28, label %BB_80494CF.i.i, label %.exit

BB_80494CF.i.i:                                   ; preds = %BB_8049505.i.i, %BB_8049537.i
  %storemerge14.i5 = phi i32 [ %tmp0_v1.i24.i.i, %BB_8049505.i.i ], [ 1, %BB_8049537.i ]
  %tmp0_v1.i.i.i6 = shl i32 %storemerge14.i5, 2
  %29 = load i32, i32* %6, align 4
  %tmp4_v.i.i.i7 = add i32 %29, %tmp0_v1.i.i.i6
  %tmp0_v4.i.i.i8 = add i32 %tmp4_v.i.i.i7, -4
  %30 = inttoptr i32 %tmp0_v4.i.i.i8 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = inttoptr i32 %tmp4_v.i.i.i7 to i32*
  %33 = load i32, i32* %32, align 4
  %.not.i.i.i9 = icmp slt i32 %31, %33
  %tmp0_v1.i24.i.i = add nuw nsw i32 %storemerge14.i5, 1
  br i1 %.not.i.i.i9, label %.exit, label %BB_8049505.i.i

.exit:                                            ; preds = %BB_80494CF.i.i, %BB_8049505.i.i, %BB_8049537.i, %BB_8049490.i.i, %Func_8049530.exit.i
  %r_ebp.0 = load i32, i32* %8, align 4
  %34 = inttoptr i32 %r_ebp.0 to i32*
  %35 = load i32, i32* %34, align 4
  %tmp4_v3.i.i = add i32 %r_ebp.0, 8
  %newret = insertvalue { i32, i32 } undef, i32 %tmp4_v3.i.i, 0
  %newret3 = insertvalue { i32, i32 } %newret, i32 %35, 1
  ret { i32, i32 } %newret3
}
define internal fastcc void @memset912(i32 %arg_esp) unnamed_addr  nofree norecurse nounwind  !retregs !186 {
  %tmp2_v.i6.i = add i32 %arg_esp, 4
  %tmp0_v.i7.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i7.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i7.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i7.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i7.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i6.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i7.i, -52
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i15.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i19.i = add i32 %tmp0_v.i7.i, -20
  %10 = inttoptr i32 %tmp2_v2.i19.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i7.i, -56
  %11 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 5, i32* %11, align 8
  %tmp2_v5.i23.i = add i32 %tmp0_v.i7.i, -60
  %12 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 99, i32* %12, align 4
  %tmp2_v6.i24.i = add i32 %tmp0_v.i7.i, -30
  %tmp2_v7.i.i = add i32 %tmp0_v.i7.i, -64
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %tmp2_v6.i24.i, i32* %13, align 16
  %tmp2_v8.i25.i = add i32 %tmp0_v.i7.i, -68
  %14 = inttoptr i32 %tmp2_v8.i25.i to i32*
  store i32 134517266, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %arg2.i.i = load i32, i32* %12, align 4
  %arg4.i.i = load i32, i32* %11, align 8
  %15 = inttoptr i32 %arg.i.i to i8*
  %16 = trunc i32 %arg2.i.i to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %15, i8 %16, i32 %arg4.i.i, i1 false)  nounwind 
  %tmp0_v1.i30.i = add i32 %tmp0_v.i7.i, -25
  store i32 5, i32* %11, align 8
  store i32 100, i32* %12, align 4
  store i32 %tmp0_v1.i30.i, i32* %13, align 16
  store i32 134517288, i32* %14, align 4
  %arg.i.i1 = load i32, i32* %13, align 16
  %arg2.i.i2 = load i32, i32* %12, align 4
  %arg4.i.i3 = load i32, i32* %11, align 8
  %17 = inttoptr i32 %arg.i.i1 to i8*
  %18 = trunc i32 %arg2.i.i2 to i8
  tail call void @llvm.memset.p0i8.i32(i8* align 1 %17, i8 %18, i32 %arg4.i.i3, i1 false)  nounwind 
  %tmp2_v.i12.i = add i32 %tmp0_v.i7.i, -36
  %19 = inttoptr i32 %tmp2_v.i12.i to i32*
  store i32 0, i32* %19, align 4
  br label %BB_8049234.i

BB_8049234.i:                                     ; preds = %BB_8049234.i, %0
  %storemerge6 = phi i32 [ 0, %0 ], [ %tmp0_v2.i40.i, %BB_8049234.i ]
  %tmp0_v2.i54.i = add i32 %storemerge6, %tmp2_v6.i24.i
  %20 = inttoptr i32 %tmp0_v2.i54.i to i8*
  %21 = load i8, i8* %20, align 1
  %tmp0_v4.i56.i = sext i8 %21 to i32
  store i32 %tmp0_v4.i56.i, i32* %13, align 16
  store i32 134517323, i32* %14, align 4
  %arg.i.i4 = load i32, i32* %13, align 16
  %22 = tail call i32 @putchar(i32 %arg.i.i4)  nounwind 
  %23 = load i32, i32* %19, align 4
  %tmp0_v2.i40.i = add i32 %23, 1
  store i32 %tmp0_v2.i40.i, i32* %19, align 4
  %24 = icmp slt i32 %tmp0_v2.i40.i, 10
  br i1 %24, label %BB_8049234.i, label %BB_8049258.i

BB_8049258.i:                                     ; preds = %BB_8049234.i
  store i32 10, i32* %13, align 16
  store i32 134517346, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %25 = tail call i32 @putchar(i32 %arg.i.i5)  nounwind 
  ret void
}
define internal fastcc void @matrix_subtraction926(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !174 {
  %tmp2_v.i51.i = add i32 %arg_esp, 4
  %tmp0_v.i52.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i54.i = add i32 %tmp0_v.i52.i, -4
  %3 = inttoptr i32 %tmp2_v3.i54.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i55.i = add i32 %tmp0_v.i52.i, -8
  %4 = inttoptr i32 %tmp2_v4.i55.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i57.i = add i32 %tmp0_v.i52.i, -12
  %5 = inttoptr i32 %tmp2_v5.i57.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i59.i = add i32 %tmp0_v.i52.i, -16
  %6 = inttoptr i32 %tmp2_v6.i59.i to i32*
  store i32 %tmp2_v.i51.i, i32* %6, align 16
  %tmp2_v8.i61.i = add i32 %tmp0_v.i52.i, -180
  %7 = inttoptr i32 %tmp2_v8.i61.i to i32*
  store i32 134517236, i32* %7, align 4
  %tmp4_v.i14.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i52.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i52.i, -164
  %11 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 2, i32* %11, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i52.i, -160
  %12 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 2, i32* %12, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i52.i, -156
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 2, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i52.i, -152
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 2, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i52.i, -148
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 2, i32* %15, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i52.i, -144
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 2, i32* %16, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i52.i, -140
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 2, i32* %17, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i52.i, -136
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %18, align 8
  %tmp2_v11.i.i = add i32 %tmp0_v.i52.i, -132
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 2, i32* %19, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i52.i, -128
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 2, i32* %20, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i52.i, -124
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 2, i32* %21, align 4
  %tmp2_v14.i.i = add i32 %tmp0_v.i52.i, -120
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 2, i32* %22, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i52.i, -116
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 1, i32* %23, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i52.i, -112
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 1, i32* %24, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i52.i, -108
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 1, i32* %25, align 4
  %tmp2_v18.i.i = add i32 %tmp0_v.i52.i, -104
  %26 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 1, i32* %26, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i52.i, -100
  %27 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v20.i.i = add i32 %tmp0_v.i52.i, -96
  %28 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 1, i32* %28, align 16
  %tmp2_v21.i.i = add i32 %tmp0_v.i52.i, -92
  %29 = inttoptr i32 %tmp2_v21.i.i to i32*
  store i32 1, i32* %29, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i52.i, -88
  %30 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 1, i32* %30, align 8
  %tmp2_v23.i.i = add i32 %tmp0_v.i52.i, -84
  %31 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 1, i32* %31, align 4
  %tmp2_v24.i.i = add i32 %tmp0_v.i52.i, -80
  %32 = inttoptr i32 %tmp2_v24.i.i to i32*
  store i32 1, i32* %32, align 16
  %tmp2_v25.i.i = add i32 %tmp0_v.i52.i, -76
  %33 = inttoptr i32 %tmp2_v25.i.i to i32*
  store i32 1, i32* %33, align 4
  %tmp2_v26.i.i = add i32 %tmp0_v.i52.i, -72
  %34 = inttoptr i32 %tmp2_v26.i.i to i32*
  store i32 1, i32* %34, align 8
  %tmp2_v28.i.i = add i32 %tmp0_v.i52.i, -68
  %tmp2_v29.i.i = add i32 %tmp0_v.i52.i, -184
  %35 = inttoptr i32 %tmp2_v29.i.i to i32*
  store i32 %tmp2_v28.i.i, i32* %35, align 8
  %tmp2_v31.i.i = add i32 %tmp0_v.i52.i, -188
  %36 = inttoptr i32 %tmp2_v31.i.i to i32*
  store i32 %tmp2_v15.i.i, i32* %36, align 4
  %tmp2_v33.i.i = add i32 %tmp0_v.i52.i, -192
  %37 = inttoptr i32 %tmp2_v33.i.i to i32*
  store i32 %tmp2_v3.i18.i, i32* %37, align 16
  %tmp2_v34.i.i = add i32 %tmp0_v.i52.i, -196
  %38 = inttoptr i32 %tmp2_v34.i.i to i32*
  store i32 134517465, i32* %38, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i52.i, -200
  %39 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i55.i, i32* %39, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i52.i, -204
  %40 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %40, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i52.i, -224
  %41 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517629, i32* %41, align 16
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i52.i, -212
  %42 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i52.i, -208
  %43 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 0, i32* %42, align 4
  br label %BB_804938B.i.i

BB_80493D9.i.i:                                   ; preds = %BB_8049394.i.i
  %44 = load i32, i32* %42, align 4
  %tmp0_v1.i12.i.i = add i32 %44, 1
  store i32 %tmp0_v1.i12.i.i, i32* %42, align 4
  %45 = icmp slt i32 %tmp0_v1.i12.i.i, 3
  br i1 %45, label %BB_804938B.i.i, label %Func_matrix_subtraction.exit

BB_804938B.i.i:                                   ; preds = %BB_80493D9.i.i, %0
  store i32 0, i32* %43, align 16
  br label %BB_8049394.i.i

BB_8049394.i.i:                                   ; preds = %BB_8049394.i.i, %BB_804938B.i.i
  %storemerge1315.i = phi i32 [ 0, %BB_804938B.i.i ], [ %tmp0_v35.i.i.i, %BB_8049394.i.i ]
  %46 = load i32, i32* %42, align 4
  %tmp0_v1.i21.i.i = shl i32 %46, 4
  %47 = load i32, i32* %37, align 16
  %tmp4_v.i25.i.i = shl i32 %storemerge1315.i, 2
  %tmp0_v4.i24.i.i = add i32 %tmp0_v1.i21.i.i, %tmp4_v.i25.i.i
  %tmp2_v7.i.i.i = add i32 %tmp0_v4.i24.i.i, %47
  %48 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %36, align 4
  %tmp2_v19.i.i.i = add i32 %50, %tmp0_v4.i24.i.i
  %51 = inttoptr i32 %tmp2_v19.i.i.i to i32*
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %35, align 8
  %tmp0_v28.i.i.i = sub i32 %49, %52
  %tmp2_v32.i.i.i = add i32 %53, %tmp0_v4.i24.i.i
  %54 = inttoptr i32 %tmp2_v32.i.i.i to i32*
  store i32 %tmp0_v28.i.i.i, i32* %54, align 4
  %55 = load i32, i32* %43, align 16
  %tmp0_v35.i.i.i = add i32 %55, 1
  store i32 %tmp0_v35.i.i.i, i32* %43, align 16
  %56 = icmp slt i32 %tmp0_v35.i.i.i, 4
  br i1 %56, label %BB_8049394.i.i, label %BB_80493D9.i.i

Func_matrix_subtraction.exit:                     ; preds = %BB_80493D9.i.i
  %57 = load i32, i32* %40, align 4
  %58 = load i32, i32* %39, align 8
  %tmp2_v.i65.i = add i32 %58, -164
  %59 = inttoptr i32 %tmp2_v.i65.i to i32*
  %tmp2_v.i2.i = add i32 %58, -160
  %60 = inttoptr i32 %tmp2_v.i2.i to i32*
  %tmp2_v4.i42.i = add i32 %58, -60
  %tmp2_v10.i47.i = add i32 %57, -8184
  store i32 0, i32* %59, align 4
  br label %BB_80492E8.i

BB_80492E8.i:                                     ; preds = %BB_8049330.i, %Func_matrix_subtraction.exit
  store i32 0, i32* %60, align 4
  br label %BB_80492F4.i

BB_8049330.i:                                     ; preds = %BB_80492F4.i
  store i32 10, i32* %37, align 16
  store i32 134517562, i32* %38, align 4
  %arg.i.i = load i32, i32* %37, align 16
  %61 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %62 = load i32, i32* %59, align 4
  %tmp0_v2.i.i = add i32 %62, 1
  store i32 %tmp0_v2.i.i, i32* %59, align 4
  %63 = icmp slt i32 %tmp0_v2.i.i, 3
  br i1 %63, label %BB_80492E8.i, label %.exit

BB_80492F4.i:                                     ; preds = %BB_80492F4.i, %BB_80492E8.i
  %storemerge26 = phi i32 [ 0, %BB_80492E8.i ], [ %tmp0_v2.i71.i, %BB_80492F4.i ]
  %64 = load i32, i32* %59, align 4
  %tmp4_v.i38.i = shl i32 %64, 2
  %tmp0_v3.i41.i = add i32 %tmp4_v.i38.i, %storemerge26
  %tmp4_v5.i.i = shl i32 %tmp0_v3.i41.i, 2
  %tmp2_v6.i43.i = add i32 %tmp2_v4.i42.i, %tmp4_v5.i.i
  %65 = inttoptr i32 %tmp2_v6.i43.i to i32*
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %36, align 4
  store i32 %tmp2_v10.i47.i, i32* %37, align 16
  store i32 134517533, i32* %38, align 4
  %67 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v28.i.i.i, i32 inreg noundef %tmp4_v.i38.i, i32 noundef %tmp2_v33.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !175
  %68 = load i32, i32* %60, align 4
  %tmp0_v2.i71.i = add i32 %68, 1
  store i32 %tmp0_v2.i71.i, i32* %60, align 4
  %69 = icmp slt i32 %tmp0_v2.i71.i, 4
  br i1 %69, label %BB_80492F4.i, label %BB_8049330.i

.exit:                                            ; preds = %BB_8049330.i
  ret void
}
define internal fastcc void @const_pointer_vs_pointer_to_const88(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !160 {
.exit:
  %tmp2_v.i41.i = add i32 %arg_esp, 4
  %tmp0_v.i42.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i43.i = add i32 %tmp0_v.i42.i, -4
  %2 = inttoptr i32 %tmp2_v3.i43.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i44.i = add i32 %tmp0_v.i42.i, -8
  %3 = inttoptr i32 %tmp2_v4.i44.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i46.i = add i32 %tmp0_v.i42.i, -12
  %4 = inttoptr i32 %tmp2_v5.i46.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i48.i = add i32 %tmp0_v.i42.i, -16
  %5 = inttoptr i32 %tmp2_v6.i48.i to i32*
  store i32 %tmp2_v.i41.i, i32* %5, align 16
  %tmp2_v8.i49.i = add i32 %tmp0_v.i42.i, -52
  %6 = inttoptr i32 %tmp2_v8.i49.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i8.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i12.i = add i32 %tmp0_v.i42.i, -20
  %9 = inttoptr i32 %tmp2_v2.i12.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i42.i, -34
  %10 = inttoptr i32 %tmp2_v3.i.i to i8*
  %tmp2_v4.i13.i = add i32 %tmp0_v.i42.i, -33
  %11 = inttoptr i32 %tmp2_v4.i13.i to i8*
  store i8 98, i8* %11, align 1
  %tmp2_v6.i.i = add i32 %tmp0_v.i42.i, -32
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %12, align 16
  store i8 120, i8* %10, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i42.i, -60
  %13 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 120, i32* %13, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i42.i, -64
  %14 = inttoptr i32 %tmp2_v15.i.i to i32*
;-------------------------------
; Replace: %spi.bis.86 = ptrtoint[7 x i8]* @str.bis.86 to i32
  %sp0.48 = alloca [7 x i8]
;-------------------------------
; Replace: store [7 x i8] c"\05\56\59\11\54\52\32", [7 x i8]* %sp0.48
  %sp167 = alloca [7 x i8]
  
;-------------------------------
; Replace: %s0.167 = load [1 x i8], [1 x i8]* @str.0.167
  %cipher.ptr.589 = alloca [5 x i8]
  store [5 x i8] c"\42\51\3d\3d\00", [5 x i8]* %cipher.ptr.589
  %cipher.589 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.589, i32 0, i32 0
  %plain.ptr.589 = tail call i8* @base64_decode(i8* %cipher.589)
  %spi589 = bitcast i8* %plain.ptr.589 to [1 x i8]*
  %s0.167 = load [1 x i8], [1 x i8]* %spi589
;-------------------------------
  %sp0.167 = bitcast [7 x i8]* %sp167 to [1 x i8]*
  store [1 x i8] %s0.167, [1 x i8]* %sp0.167
  %next0.167 = getelementptr [7 x i8], [7 x i8]* %sp167, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.167 = load [1 x i8], [1 x i8]* @str.1.167
  %cipher.ptr.588 = alloca [5 x i8]
  store [5 x i8] c"\56\67\3d\3d\00", [5 x i8]* %cipher.ptr.588
  %cipher.588 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.588, i32 0, i32 0
  %plain.ptr.588 = tail call i8* @base64_decode(i8* %cipher.588)
  %spi588 = bitcast i8* %plain.ptr.588 to [1 x i8]*
  %s1.167 = load [1 x i8], [1 x i8]* %spi588
;-------------------------------
  %sp1.167 = bitcast i8* %next0.167 to [1 x i8]*
  store [1 x i8] %s1.167, [1 x i8]* %sp1.167
  %next1.167 = getelementptr [7 x i8], [7 x i8]* %sp167, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.167 = load [1 x i8], [1 x i8]* @str.2.167
  %cipher.ptr.591 = alloca [5 x i8]
  store [5 x i8] c"\57\51\3d\3d\00", [5 x i8]* %cipher.ptr.591
  %cipher.591 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.591, i32 0, i32 0
  %plain.ptr.591 = tail call i8* @base64_decode(i8* %cipher.591)
  %spi591 = bitcast i8* %plain.ptr.591 to [1 x i8]*
  %s2.167 = load [1 x i8], [1 x i8]* %spi591
;-------------------------------
  %sp2.167 = bitcast i8* %next1.167 to [1 x i8]*
  store [1 x i8] %s2.167, [1 x i8]* %sp2.167
  %next2.167 = getelementptr [7 x i8], [7 x i8]* %sp167, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.167 = load [1 x i8], [1 x i8]* @str.3.167
  %cipher.ptr.587 = alloca [5 x i8]
  store [5 x i8] c"\45\51\3d\3d\00", [5 x i8]* %cipher.ptr.587
  %cipher.587 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.587, i32 0, i32 0
  %plain.ptr.587 = tail call i8* @base64_decode(i8* %cipher.587)
  %spi587 = bitcast i8* %plain.ptr.587 to [1 x i8]*
  %s3.167 = load [1 x i8], [1 x i8]* %spi587
;-------------------------------
  %sp3.167 = bitcast i8* %next2.167 to [1 x i8]*
  store [1 x i8] %s3.167, [1 x i8]* %sp3.167
  %next3.167 = getelementptr [7 x i8], [7 x i8]* %sp167, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.167 = load [1 x i8], [1 x i8]* @str.4.167
  %cipher.ptr.590 = alloca [5 x i8]
  store [5 x i8] c"\56\41\3d\3d\00", [5 x i8]* %cipher.ptr.590
  %cipher.590 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.590, i32 0, i32 0
  %plain.ptr.590 = tail call i8* @base64_decode(i8* %cipher.590)
  %spi590 = bitcast i8* %plain.ptr.590 to [1 x i8]*
  %s4.167 = load [1 x i8], [1 x i8]* %spi590
;-------------------------------
  %sp4.167 = bitcast i8* %next3.167 to [1 x i8]*
  store [1 x i8] %s4.167, [1 x i8]* %sp4.167
  %next4.167 = getelementptr [7 x i8], [7 x i8]* %sp167, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.167 = load [1 x i8], [1 x i8]* @str.5.167
  %cipher.ptr.592 = alloca [5 x i8]
  store [5 x i8] c"\55\67\3d\3d\00", [5 x i8]* %cipher.ptr.592
  %cipher.592 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.592, i32 0, i32 0
  %plain.ptr.592 = tail call i8* @base64_decode(i8* %cipher.592)
  %spi592 = bitcast i8* %plain.ptr.592 to [1 x i8]*
  %s5.167 = load [1 x i8], [1 x i8]* %spi592
;-------------------------------
  %sp5.167 = bitcast i8* %next4.167 to [1 x i8]*
  store [1 x i8] %s5.167, [1 x i8]* %sp5.167
  %next5.167 = getelementptr [7 x i8], [7 x i8]* %sp167, i32 0, i32 6
  
;-------------------------------
; Replace: %s6.167 = load [1 x i8], [1 x i8]* @str.6.167
  %cipher.ptr.586 = alloca [5 x i8]
  store [5 x i8] c"\4d\67\3d\3d\00", [5 x i8]* %cipher.ptr.586
  %cipher.586 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.586, i32 0, i32 0
  %plain.ptr.586 = tail call i8* @base64_decode(i8* %cipher.586)
  %spi586 = bitcast i8* %plain.ptr.586 to [1 x i8]*
  %s6.167 = load [1 x i8], [1 x i8]* %spi586
;-------------------------------
  %sp6.167 = bitcast i8* %next5.167 to [1 x i8]*
  store [1 x i8] %s6.167, [1 x i8]* %sp6.167

  %spi167 = load [7 x i8], [7 x i8]* %sp167
  store [7 x i8] %spi167, [7 x i8]* %sp0.48
;-------------------------------
  %sp0.1.48 = bitcast [7 x i8]* %sp0.48 to i56*
  %i0.48 = load i56, i56* %sp0.1.48

  %sp1.48 = alloca [7 x i8]
;-------------------------------
; Replace: store [7 x i8] c"\64\6c\79\34\37\58\32", [7 x i8]* %sp1.48
  %sp168 = alloca [7 x i8]
  
;-------------------------------
; Replace: %s0.168 = load [1 x i8], [1 x i8]* @str.0.168
  %cipher.ptr.599 = alloca [5 x i8]
  store [5 x i8] c"\5a\41\3d\3d\00", [5 x i8]* %cipher.ptr.599
  %cipher.599 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.599, i32 0, i32 0
  %plain.ptr.599 = tail call i8* @base64_decode(i8* %cipher.599)
  %spi599 = bitcast i8* %plain.ptr.599 to [1 x i8]*
  %s0.168 = load [1 x i8], [1 x i8]* %spi599
;-------------------------------
  %sp0.168 = bitcast [7 x i8]* %sp168 to [1 x i8]*
  store [1 x i8] %s0.168, [1 x i8]* %sp0.168
  %next0.168 = getelementptr [7 x i8], [7 x i8]* %sp168, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.168 = load [1 x i8], [1 x i8]* @str.1.168
  %cipher.ptr.595 = alloca [5 x i8]
  store [5 x i8] c"\62\41\3d\3d\00", [5 x i8]* %cipher.ptr.595
  %cipher.595 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.595, i32 0, i32 0
  %plain.ptr.595 = tail call i8* @base64_decode(i8* %cipher.595)
  %spi595 = bitcast i8* %plain.ptr.595 to [1 x i8]*
  %s1.168 = load [1 x i8], [1 x i8]* %spi595
;-------------------------------
  %sp1.168 = bitcast i8* %next0.168 to [1 x i8]*
  store [1 x i8] %s1.168, [1 x i8]* %sp1.168
  %next1.168 = getelementptr [7 x i8], [7 x i8]* %sp168, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.168 = load [1 x i8], [1 x i8]* @str.2.168
  %cipher.ptr.598 = alloca [5 x i8]
  store [5 x i8] c"\65\51\3d\3d\00", [5 x i8]* %cipher.ptr.598
  %cipher.598 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.598, i32 0, i32 0
  %plain.ptr.598 = tail call i8* @base64_decode(i8* %cipher.598)
  %spi598 = bitcast i8* %plain.ptr.598 to [1 x i8]*
  %s2.168 = load [1 x i8], [1 x i8]* %spi598
;-------------------------------
  %sp2.168 = bitcast i8* %next1.168 to [1 x i8]*
  store [1 x i8] %s2.168, [1 x i8]* %sp2.168
  %next2.168 = getelementptr [7 x i8], [7 x i8]* %sp168, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.168 = load [1 x i8], [1 x i8]* @str.3.168
  %cipher.ptr.597 = alloca [5 x i8]
  store [5 x i8] c"\4e\41\3d\3d\00", [5 x i8]* %cipher.ptr.597
  %cipher.597 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.597, i32 0, i32 0
  %plain.ptr.597 = tail call i8* @base64_decode(i8* %cipher.597)
  %spi597 = bitcast i8* %plain.ptr.597 to [1 x i8]*
  %s3.168 = load [1 x i8], [1 x i8]* %spi597
;-------------------------------
  %sp3.168 = bitcast i8* %next2.168 to [1 x i8]*
  store [1 x i8] %s3.168, [1 x i8]* %sp3.168
  %next3.168 = getelementptr [7 x i8], [7 x i8]* %sp168, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.168 = load [1 x i8], [1 x i8]* @str.4.168
  %cipher.ptr.593 = alloca [5 x i8]
  store [5 x i8] c"\4e\77\3d\3d\00", [5 x i8]* %cipher.ptr.593
  %cipher.593 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.593, i32 0, i32 0
  %plain.ptr.593 = tail call i8* @base64_decode(i8* %cipher.593)
  %spi593 = bitcast i8* %plain.ptr.593 to [1 x i8]*
  %s4.168 = load [1 x i8], [1 x i8]* %spi593
;-------------------------------
  %sp4.168 = bitcast i8* %next3.168 to [1 x i8]*
  store [1 x i8] %s4.168, [1 x i8]* %sp4.168
  %next4.168 = getelementptr [7 x i8], [7 x i8]* %sp168, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.168 = load [1 x i8], [1 x i8]* @str.5.168
  %cipher.ptr.596 = alloca [5 x i8]
  store [5 x i8] c"\57\41\3d\3d\00", [5 x i8]* %cipher.ptr.596
  %cipher.596 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.596, i32 0, i32 0
  %plain.ptr.596 = tail call i8* @base64_decode(i8* %cipher.596)
  %spi596 = bitcast i8* %plain.ptr.596 to [1 x i8]*
  %s5.168 = load [1 x i8], [1 x i8]* %spi596
;-------------------------------
  %sp5.168 = bitcast i8* %next4.168 to [1 x i8]*
  store [1 x i8] %s5.168, [1 x i8]* %sp5.168
  %next5.168 = getelementptr [7 x i8], [7 x i8]* %sp168, i32 0, i32 6
  
;-------------------------------
; Replace: %s6.168 = load [1 x i8], [1 x i8]* @str.6.168
  %cipher.ptr.594 = alloca [5 x i8]
  store [5 x i8] c"\4d\67\3d\3d\00", [5 x i8]* %cipher.ptr.594
  %cipher.594 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.594, i32 0, i32 0
  %plain.ptr.594 = tail call i8* @base64_decode(i8* %cipher.594)
  %spi594 = bitcast i8* %plain.ptr.594 to [1 x i8]*
  %s6.168 = load [1 x i8], [1 x i8]* %spi594
;-------------------------------
  %sp6.168 = bitcast i8* %next5.168 to [1 x i8]*
  store [1 x i8] %s6.168, [1 x i8]* %sp6.168

  %spi168 = load [7 x i8], [7 x i8]* %sp168
  store [7 x i8] %spi168, [7 x i8]* %sp1.48
;-------------------------------
  %sp1.1.48 = bitcast [7 x i8]* %sp1.48 to i56*
  %i1.48 = load i56, i56* %sp1.1.48

  %xp48 = xor i56 %i0.48, %i1.48

  %fi.48 = alloca i56
  store i56 %xp48, i56* %fi.48

  %spi48 = bitcast i56* %fi.48 to [7 x i8]*
  %spi.bis.86 = ptrtoint[7 x i8]* %spi48 to i32
;-------------------------------
  store i32 %spi.bis.86, i32* %14, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i42.i, -68
  %15 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517261, i32* %15, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !161
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %tmp2_v1.i20.i = add i32 %tmp0_v.i42.i, -28
  %19 = inttoptr i32 %tmp2_v1.i20.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 4
  %20 = load i8, i8* %10, align 2
  %tmp0_v5.i24.i = sext i8 %20 to i32
  store i32 %tmp0_v5.i24.i, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.85 = ptrtoint[23 x i8]* @str.bis.85 to i32
  %sp0.47 = alloca [23 x i8]
;-------------------------------
; Replace: store [23 x i8] c"\41\28\0D\5F\28\38\3C\16\37\11\17\32\33\5F\5C\20\3E\0E\6F\71\50\6C\44", [23 x i8]* %sp0.47
  %sp169 = alloca [23 x i8]
  
;-------------------------------
; Replace: %s0.169 = load [2 x i8], [2 x i8]* @str.0.169
  %cipher.ptr.607 = alloca [5 x i8]
  store [5 x i8] c"\51\53\67\3d\00", [5 x i8]* %cipher.ptr.607
  %cipher.607 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.607, i32 0, i32 0
  %plain.ptr.607 = tail call i8* @base64_decode(i8* %cipher.607)
  %spi607 = bitcast i8* %plain.ptr.607 to [2 x i8]*
  %s0.169 = load [2 x i8], [2 x i8]* %spi607
;-------------------------------
  %sp0.169 = bitcast [23 x i8]* %sp169 to [2 x i8]*
  store [2 x i8] %s0.169, [2 x i8]* %sp0.169
  %next0.169 = getelementptr [23 x i8], [23 x i8]* %sp169, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.169 = load [3 x i8], [3 x i8]* @str.1.169
  %cipher.ptr.601 = alloca [5 x i8]
  store [5 x i8] c"\44\56\38\6f\00", [5 x i8]* %cipher.ptr.601
  %cipher.601 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.601, i32 0, i32 0
  %plain.ptr.601 = tail call i8* @base64_decode(i8* %cipher.601)
  %spi601 = bitcast i8* %plain.ptr.601 to [3 x i8]*
  %s1.169 = load [3 x i8], [3 x i8]* %spi601
;-------------------------------
  %sp1.169 = bitcast i8* %next0.169 to [3 x i8]*
  store [3 x i8] %s1.169, [3 x i8]* %sp1.169
  %next1.169 = getelementptr [23 x i8], [23 x i8]* %sp169, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.169 = load [3 x i8], [3 x i8]* @str.2.169
  %cipher.ptr.605 = alloca [5 x i8]
  store [5 x i8] c"\4f\44\77\57\00", [5 x i8]* %cipher.ptr.605
  %cipher.605 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.605, i32 0, i32 0
  %plain.ptr.605 = tail call i8* @base64_decode(i8* %cipher.605)
  %spi605 = bitcast i8* %plain.ptr.605 to [3 x i8]*
  %s2.169 = load [3 x i8], [3 x i8]* %spi605
;-------------------------------
  %sp2.169 = bitcast i8* %next1.169 to [3 x i8]*
  store [3 x i8] %s2.169, [3 x i8]* %sp2.169
  %next2.169 = getelementptr [23 x i8], [23 x i8]* %sp169, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.169 = load [3 x i8], [3 x i8]* @str.3.169
  %cipher.ptr.603 = alloca [5 x i8]
  store [5 x i8] c"\4e\78\45\58\00", [5 x i8]* %cipher.ptr.603
  %cipher.603 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.603, i32 0, i32 0
  %plain.ptr.603 = tail call i8* @base64_decode(i8* %cipher.603)
  %spi603 = bitcast i8* %plain.ptr.603 to [3 x i8]*
  %s3.169 = load [3 x i8], [3 x i8]* %spi603
;-------------------------------
  %sp3.169 = bitcast i8* %next2.169 to [3 x i8]*
  store [3 x i8] %s3.169, [3 x i8]* %sp3.169
  %next3.169 = getelementptr [23 x i8], [23 x i8]* %sp169, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.169 = load [3 x i8], [3 x i8]* @str.4.169
  %cipher.ptr.606 = alloca [5 x i8]
  store [5 x i8] c"\4d\6a\4e\66\00", [5 x i8]* %cipher.ptr.606
  %cipher.606 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.606, i32 0, i32 0
  %plain.ptr.606 = tail call i8* @base64_decode(i8* %cipher.606)
  %spi606 = bitcast i8* %plain.ptr.606 to [3 x i8]*
  %s4.169 = load [3 x i8], [3 x i8]* %spi606
;-------------------------------
  %sp4.169 = bitcast i8* %next3.169 to [3 x i8]*
  store [3 x i8] %s4.169, [3 x i8]* %sp4.169
  %next4.169 = getelementptr [23 x i8], [23 x i8]* %sp169, i32 0, i32 14
  
;-------------------------------
; Replace: %s5.169 = load [3 x i8], [3 x i8]* @str.5.169
  %cipher.ptr.602 = alloca [5 x i8]
  store [5 x i8] c"\58\43\41\2b\00", [5 x i8]* %cipher.ptr.602
  %cipher.602 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.602, i32 0, i32 0
  %plain.ptr.602 = tail call i8* @base64_decode(i8* %cipher.602)
  %spi602 = bitcast i8* %plain.ptr.602 to [3 x i8]*
  %s5.169 = load [3 x i8], [3 x i8]* %spi602
;-------------------------------
  %sp5.169 = bitcast i8* %next4.169 to [3 x i8]*
  store [3 x i8] %s5.169, [3 x i8]* %sp5.169
  %next5.169 = getelementptr [23 x i8], [23 x i8]* %sp169, i32 0, i32 17
  
;-------------------------------
; Replace: %s6.169 = load [3 x i8], [3 x i8]* @str.6.169
  %cipher.ptr.600 = alloca [5 x i8]
  store [5 x i8] c"\44\6d\39\78\00", [5 x i8]* %cipher.ptr.600
  %cipher.600 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.600, i32 0, i32 0
  %plain.ptr.600 = tail call i8* @base64_decode(i8* %cipher.600)
  %spi600 = bitcast i8* %plain.ptr.600 to [3 x i8]*
  %s6.169 = load [3 x i8], [3 x i8]* %spi600
;-------------------------------
  %sp6.169 = bitcast i8* %next5.169 to [3 x i8]*
  store [3 x i8] %s6.169, [3 x i8]* %sp6.169
  %next6.169 = getelementptr [23 x i8], [23 x i8]* %sp169, i32 0, i32 20
  
;-------------------------------
; Replace: %s7.169 = load [3 x i8], [3 x i8]* @str.7.169
  %cipher.ptr.604 = alloca [5 x i8]
  store [5 x i8] c"\55\47\78\45\00", [5 x i8]* %cipher.ptr.604
  %cipher.604 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.604, i32 0, i32 0
  %plain.ptr.604 = tail call i8* @base64_decode(i8* %cipher.604)
  %spi604 = bitcast i8* %plain.ptr.604 to [3 x i8]*
  %s7.169 = load [3 x i8], [3 x i8]* %spi604
;-------------------------------
  %sp7.169 = bitcast i8* %next6.169 to [3 x i8]*
  store [3 x i8] %s7.169, [3 x i8]* %sp7.169

  %spi169 = load [23 x i8], [23 x i8]* %sp169
  store [23 x i8] %spi169, [23 x i8]* %sp0.47
;-------------------------------
  %sp0.1.47 = bitcast [23 x i8]* %sp0.47 to i184*
  %i0.47 = load i184, i184* %sp0.1.47

  %sp1.47 = alloca [23 x i8]
;-------------------------------
; Replace: store [23 x i8] c"\6b\58\62\36\46\4c\59\64\68\65\78\6d\50\30\32\53\4a\34\4f\54\33\66\44", [23 x i8]* %sp1.47
  %sp170 = alloca [23 x i8]
  
;-------------------------------
; Replace: %s0.170 = load [2 x i8], [2 x i8]* @str.0.170
  %cipher.ptr.608 = alloca [5 x i8]
  store [5 x i8] c"\61\31\67\3d\00", [5 x i8]* %cipher.ptr.608
  %cipher.608 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.608, i32 0, i32 0
  %plain.ptr.608 = tail call i8* @base64_decode(i8* %cipher.608)
  %spi608 = bitcast i8* %plain.ptr.608 to [2 x i8]*
  %s0.170 = load [2 x i8], [2 x i8]* %spi608
;-------------------------------
  %sp0.170 = bitcast [23 x i8]* %sp170 to [2 x i8]*
  store [2 x i8] %s0.170, [2 x i8]* %sp0.170
  %next0.170 = getelementptr [23 x i8], [23 x i8]* %sp170, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.170 = load [3 x i8], [3 x i8]* @str.1.170
  %cipher.ptr.609 = alloca [5 x i8]
  store [5 x i8] c"\59\6a\5a\47\00", [5 x i8]* %cipher.ptr.609
  %cipher.609 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.609, i32 0, i32 0
  %plain.ptr.609 = tail call i8* @base64_decode(i8* %cipher.609)
  %spi609 = bitcast i8* %plain.ptr.609 to [3 x i8]*
  %s1.170 = load [3 x i8], [3 x i8]* %spi609
;-------------------------------
  %sp1.170 = bitcast i8* %next0.170 to [3 x i8]*
  store [3 x i8] %s1.170, [3 x i8]* %sp1.170
  %next1.170 = getelementptr [23 x i8], [23 x i8]* %sp170, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.170 = load [3 x i8], [3 x i8]* @str.2.170
  %cipher.ptr.611 = alloca [5 x i8]
  store [5 x i8] c"\54\46\6c\6b\00", [5 x i8]* %cipher.ptr.611
  %cipher.611 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.611, i32 0, i32 0
  %plain.ptr.611 = tail call i8* @base64_decode(i8* %cipher.611)
  %spi611 = bitcast i8* %plain.ptr.611 to [3 x i8]*
  %s2.170 = load [3 x i8], [3 x i8]* %spi611
;-------------------------------
  %sp2.170 = bitcast i8* %next1.170 to [3 x i8]*
  store [3 x i8] %s2.170, [3 x i8]* %sp2.170
  %next2.170 = getelementptr [23 x i8], [23 x i8]* %sp170, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.170 = load [3 x i8], [3 x i8]* @str.3.170
  %cipher.ptr.612 = alloca [5 x i8]
  store [5 x i8] c"\61\47\56\34\00", [5 x i8]* %cipher.ptr.612
  %cipher.612 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.612, i32 0, i32 0
  %plain.ptr.612 = tail call i8* @base64_decode(i8* %cipher.612)
  %spi612 = bitcast i8* %plain.ptr.612 to [3 x i8]*
  %s3.170 = load [3 x i8], [3 x i8]* %spi612
;-------------------------------
  %sp3.170 = bitcast i8* %next2.170 to [3 x i8]*
  store [3 x i8] %s3.170, [3 x i8]* %sp3.170
  %next3.170 = getelementptr [23 x i8], [23 x i8]* %sp170, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.170 = load [3 x i8], [3 x i8]* @str.4.170
  %cipher.ptr.615 = alloca [5 x i8]
  store [5 x i8] c"\62\56\41\77\00", [5 x i8]* %cipher.ptr.615
  %cipher.615 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.615, i32 0, i32 0
  %plain.ptr.615 = tail call i8* @base64_decode(i8* %cipher.615)
  %spi615 = bitcast i8* %plain.ptr.615 to [3 x i8]*
  %s4.170 = load [3 x i8], [3 x i8]* %spi615
;-------------------------------
  %sp4.170 = bitcast i8* %next3.170 to [3 x i8]*
  store [3 x i8] %s4.170, [3 x i8]* %sp4.170
  %next4.170 = getelementptr [23 x i8], [23 x i8]* %sp170, i32 0, i32 14
  
;-------------------------------
; Replace: %s5.170 = load [3 x i8], [3 x i8]* @str.5.170
  %cipher.ptr.610 = alloca [5 x i8]
  store [5 x i8] c"\4d\6c\4e\4b\00", [5 x i8]* %cipher.ptr.610
  %cipher.610 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.610, i32 0, i32 0
  %plain.ptr.610 = tail call i8* @base64_decode(i8* %cipher.610)
  %spi610 = bitcast i8* %plain.ptr.610 to [3 x i8]*
  %s5.170 = load [3 x i8], [3 x i8]* %spi610
;-------------------------------
  %sp5.170 = bitcast i8* %next4.170 to [3 x i8]*
  store [3 x i8] %s5.170, [3 x i8]* %sp5.170
  %next5.170 = getelementptr [23 x i8], [23 x i8]* %sp170, i32 0, i32 17
  
;-------------------------------
; Replace: %s6.170 = load [3 x i8], [3 x i8]* @str.6.170
  %cipher.ptr.614 = alloca [5 x i8]
  store [5 x i8] c"\4e\45\39\55\00", [5 x i8]* %cipher.ptr.614
  %cipher.614 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.614, i32 0, i32 0
  %plain.ptr.614 = tail call i8* @base64_decode(i8* %cipher.614)
  %spi614 = bitcast i8* %plain.ptr.614 to [3 x i8]*
  %s6.170 = load [3 x i8], [3 x i8]* %spi614
;-------------------------------
  %sp6.170 = bitcast i8* %next5.170 to [3 x i8]*
  store [3 x i8] %s6.170, [3 x i8]* %sp6.170
  %next6.170 = getelementptr [23 x i8], [23 x i8]* %sp170, i32 0, i32 20
  
;-------------------------------
; Replace: %s7.170 = load [3 x i8], [3 x i8]* @str.7.170
  %cipher.ptr.613 = alloca [5 x i8]
  store [5 x i8] c"\4d\32\5a\45\00", [5 x i8]* %cipher.ptr.613
  %cipher.613 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.613, i32 0, i32 0
  %plain.ptr.613 = tail call i8* @base64_decode(i8* %cipher.613)
  %spi613 = bitcast i8* %plain.ptr.613 to [3 x i8]*
  %s7.170 = load [3 x i8], [3 x i8]* %spi613
;-------------------------------
  %sp7.170 = bitcast i8* %next6.170 to [3 x i8]*
  store [3 x i8] %s7.170, [3 x i8]* %sp7.170

  %spi170 = load [23 x i8], [23 x i8]* %sp170
  store [23 x i8] %spi170, [23 x i8]* %sp1.47
;-------------------------------
  %sp1.1.47 = bitcast [23 x i8]* %sp1.47 to i184*
  %i1.47 = load i184, i184* %sp1.1.47

  %xp47 = xor i184 %i0.47, %i1.47

  %fi.47 = alloca i184
  store i184 %xp47, i184* %fi.47

  %spi47 = bitcast i184* %fi.47 to [23 x i8]*
  %spi.bis.85 = ptrtoint[23 x i8]* %spi47 to i32
;-------------------------------
  store i32 %spi.bis.85, i32* %14, align 16
  store i32 134517295, i32* %15, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %18, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !161
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  store i32 %tmp2_v4.i13.i, i32* %19, align 4
  %24 = load i8, i8* %11, align 1
  %tmp0_v5.i.i = sext i8 %24 to i32
  store i32 %tmp0_v5.i.i, i32* %13, align 4
;-------------------------------
; Replace: %spi.bis.84 = ptrtoint[23 x i8]* @str.bis.84 to i32
  %sp0.46 = alloca [23 x i8]
;-------------------------------
; Replace: store [23 x i8] c"\5A\22\3F\06\3B\3D\1C\4A\0C\15\00\16\09\5D\09\1A\0C\4B\55\6F\12\6C\64", [23 x i8]* %sp0.46
  %sp171 = alloca [23 x i8]
  
;-------------------------------
; Replace: %s0.171 = load [2 x i8], [2 x i8]* @str.0.171
  %cipher.ptr.623 = alloca [5 x i8]
  store [5 x i8] c"\57\69\49\3d\00", [5 x i8]* %cipher.ptr.623
  %cipher.623 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.623, i32 0, i32 0
  %plain.ptr.623 = tail call i8* @base64_decode(i8* %cipher.623)
  %spi623 = bitcast i8* %plain.ptr.623 to [2 x i8]*
  %s0.171 = load [2 x i8], [2 x i8]* %spi623
;-------------------------------
  %sp0.171 = bitcast [23 x i8]* %sp171 to [2 x i8]*
  store [2 x i8] %s0.171, [2 x i8]* %sp0.171
  %next0.171 = getelementptr [23 x i8], [23 x i8]* %sp171, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.171 = load [3 x i8], [3 x i8]* @str.1.171
  %cipher.ptr.616 = alloca [5 x i8]
  store [5 x i8] c"\50\77\59\37\00", [5 x i8]* %cipher.ptr.616
  %cipher.616 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.616, i32 0, i32 0
  %plain.ptr.616 = tail call i8* @base64_decode(i8* %cipher.616)
  %spi616 = bitcast i8* %plain.ptr.616 to [3 x i8]*
  %s1.171 = load [3 x i8], [3 x i8]* %spi616
;-------------------------------
  %sp1.171 = bitcast i8* %next0.171 to [3 x i8]*
  store [3 x i8] %s1.171, [3 x i8]* %sp1.171
  %next1.171 = getelementptr [23 x i8], [23 x i8]* %sp171, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.171 = load [3 x i8], [3 x i8]* @str.2.171
  %cipher.ptr.617 = alloca [5 x i8]
  store [5 x i8] c"\50\52\78\4b\00", [5 x i8]* %cipher.ptr.617
  %cipher.617 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.617, i32 0, i32 0
  %plain.ptr.617 = tail call i8* @base64_decode(i8* %cipher.617)
  %spi617 = bitcast i8* %plain.ptr.617 to [3 x i8]*
  %s2.171 = load [3 x i8], [3 x i8]* %spi617
;-------------------------------
  %sp2.171 = bitcast i8* %next1.171 to [3 x i8]*
  store [3 x i8] %s2.171, [3 x i8]* %sp2.171
  %next2.171 = getelementptr [23 x i8], [23 x i8]* %sp171, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.171 = load [3 x i8], [3 x i8]* @str.3.171
  %cipher.ptr.620 = alloca [5 x i8]
  store [5 x i8] c"\44\42\55\41\00", [5 x i8]* %cipher.ptr.620
  %cipher.620 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.620, i32 0, i32 0
  %plain.ptr.620 = tail call i8* @base64_decode(i8* %cipher.620)
  %spi620 = bitcast i8* %plain.ptr.620 to [3 x i8]*
  %s3.171 = load [3 x i8], [3 x i8]* %spi620
;-------------------------------
  %sp3.171 = bitcast i8* %next2.171 to [3 x i8]*
  store [3 x i8] %s3.171, [3 x i8]* %sp3.171
  %next3.171 = getelementptr [23 x i8], [23 x i8]* %sp171, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.171 = load [3 x i8], [3 x i8]* @str.4.171
  %cipher.ptr.619 = alloca [5 x i8]
  store [5 x i8] c"\46\67\6c\64\00", [5 x i8]* %cipher.ptr.619
  %cipher.619 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.619, i32 0, i32 0
  %plain.ptr.619 = tail call i8* @base64_decode(i8* %cipher.619)
  %spi619 = bitcast i8* %plain.ptr.619 to [3 x i8]*
  %s4.171 = load [3 x i8], [3 x i8]* %spi619
;-------------------------------
  %sp4.171 = bitcast i8* %next3.171 to [3 x i8]*
  store [3 x i8] %s4.171, [3 x i8]* %sp4.171
  %next4.171 = getelementptr [23 x i8], [23 x i8]* %sp171, i32 0, i32 14
  
;-------------------------------
; Replace: %s5.171 = load [3 x i8], [3 x i8]* @str.5.171
  %cipher.ptr.618 = alloca [5 x i8]
  store [5 x i8] c"\43\52\6f\4d\00", [5 x i8]* %cipher.ptr.618
  %cipher.618 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.618, i32 0, i32 0
  %plain.ptr.618 = tail call i8* @base64_decode(i8* %cipher.618)
  %spi618 = bitcast i8* %plain.ptr.618 to [3 x i8]*
  %s5.171 = load [3 x i8], [3 x i8]* %spi618
;-------------------------------
  %sp5.171 = bitcast i8* %next4.171 to [3 x i8]*
  store [3 x i8] %s5.171, [3 x i8]* %sp5.171
  %next5.171 = getelementptr [23 x i8], [23 x i8]* %sp171, i32 0, i32 17
  
;-------------------------------
; Replace: %s6.171 = load [3 x i8], [3 x i8]* @str.6.171
  %cipher.ptr.621 = alloca [5 x i8]
  store [5 x i8] c"\53\31\56\76\00", [5 x i8]* %cipher.ptr.621
  %cipher.621 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.621, i32 0, i32 0
  %plain.ptr.621 = tail call i8* @base64_decode(i8* %cipher.621)
  %spi621 = bitcast i8* %plain.ptr.621 to [3 x i8]*
  %s6.171 = load [3 x i8], [3 x i8]* %spi621
;-------------------------------
  %sp6.171 = bitcast i8* %next5.171 to [3 x i8]*
  store [3 x i8] %s6.171, [3 x i8]* %sp6.171
  %next6.171 = getelementptr [23 x i8], [23 x i8]* %sp171, i32 0, i32 20
  
;-------------------------------
; Replace: %s7.171 = load [3 x i8], [3 x i8]* @str.7.171
  %cipher.ptr.622 = alloca [5 x i8]
  store [5 x i8] c"\45\6d\78\6b\00", [5 x i8]* %cipher.ptr.622
  %cipher.622 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.622, i32 0, i32 0
  %plain.ptr.622 = tail call i8* @base64_decode(i8* %cipher.622)
  %spi622 = bitcast i8* %plain.ptr.622 to [3 x i8]*
  %s7.171 = load [3 x i8], [3 x i8]* %spi622
;-------------------------------
  %sp7.171 = bitcast i8* %next6.171 to [3 x i8]*
  store [3 x i8] %s7.171, [3 x i8]* %sp7.171

  %spi171 = load [23 x i8], [23 x i8]* %sp171
  store [23 x i8] %spi171, [23 x i8]* %sp0.46
;-------------------------------
  %sp0.1.46 = bitcast [23 x i8]* %sp0.46 to i184*
  %i0.46 = load i184, i184* %sp0.1.46

  %sp1.46 = alloca [23 x i8]
;-------------------------------
; Replace: store [23 x i8] c"\70\52\50\6f\55\49\79\38\53\61\6f\49\6a\32\67\69\78\71\75\4a\71\66\64", [23 x i8]* %sp1.46
  %sp172 = alloca [23 x i8]
  
;-------------------------------
; Replace: %s0.172 = load [2 x i8], [2 x i8]* @str.0.172
  %cipher.ptr.627 = alloca [5 x i8]
  store [5 x i8] c"\63\46\49\3d\00", [5 x i8]* %cipher.ptr.627
  %cipher.627 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.627, i32 0, i32 0
  %plain.ptr.627 = tail call i8* @base64_decode(i8* %cipher.627)
  %spi627 = bitcast i8* %plain.ptr.627 to [2 x i8]*
  %s0.172 = load [2 x i8], [2 x i8]* %spi627
;-------------------------------
  %sp0.172 = bitcast [23 x i8]* %sp172 to [2 x i8]*
  store [2 x i8] %s0.172, [2 x i8]* %sp0.172
  %next0.172 = getelementptr [23 x i8], [23 x i8]* %sp172, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.172 = load [3 x i8], [3 x i8]* @str.1.172
  %cipher.ptr.628 = alloca [5 x i8]
  store [5 x i8] c"\55\47\39\56\00", [5 x i8]* %cipher.ptr.628
  %cipher.628 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.628, i32 0, i32 0
  %plain.ptr.628 = tail call i8* @base64_decode(i8* %cipher.628)
  %spi628 = bitcast i8* %plain.ptr.628 to [3 x i8]*
  %s1.172 = load [3 x i8], [3 x i8]* %spi628
;-------------------------------
  %sp1.172 = bitcast i8* %next0.172 to [3 x i8]*
  store [3 x i8] %s1.172, [3 x i8]* %sp1.172
  %next1.172 = getelementptr [23 x i8], [23 x i8]* %sp172, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.172 = load [3 x i8], [3 x i8]* @str.2.172
  %cipher.ptr.625 = alloca [5 x i8]
  store [5 x i8] c"\53\58\6b\34\00", [5 x i8]* %cipher.ptr.625
  %cipher.625 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.625, i32 0, i32 0
  %plain.ptr.625 = tail call i8* @base64_decode(i8* %cipher.625)
  %spi625 = bitcast i8* %plain.ptr.625 to [3 x i8]*
  %s2.172 = load [3 x i8], [3 x i8]* %spi625
;-------------------------------
  %sp2.172 = bitcast i8* %next1.172 to [3 x i8]*
  store [3 x i8] %s2.172, [3 x i8]* %sp2.172
  %next2.172 = getelementptr [23 x i8], [23 x i8]* %sp172, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.172 = load [3 x i8], [3 x i8]* @str.3.172
  %cipher.ptr.629 = alloca [5 x i8]
  store [5 x i8] c"\55\32\46\76\00", [5 x i8]* %cipher.ptr.629
  %cipher.629 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.629, i32 0, i32 0
  %plain.ptr.629 = tail call i8* @base64_decode(i8* %cipher.629)
  %spi629 = bitcast i8* %plain.ptr.629 to [3 x i8]*
  %s3.172 = load [3 x i8], [3 x i8]* %spi629
;-------------------------------
  %sp3.172 = bitcast i8* %next2.172 to [3 x i8]*
  store [3 x i8] %s3.172, [3 x i8]* %sp3.172
  %next3.172 = getelementptr [23 x i8], [23 x i8]* %sp172, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.172 = load [3 x i8], [3 x i8]* @str.4.172
  %cipher.ptr.626 = alloca [5 x i8]
  store [5 x i8] c"\53\57\6f\79\00", [5 x i8]* %cipher.ptr.626
  %cipher.626 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.626, i32 0, i32 0
  %plain.ptr.626 = tail call i8* @base64_decode(i8* %cipher.626)
  %spi626 = bitcast i8* %plain.ptr.626 to [3 x i8]*
  %s4.172 = load [3 x i8], [3 x i8]* %spi626
;-------------------------------
  %sp4.172 = bitcast i8* %next3.172 to [3 x i8]*
  store [3 x i8] %s4.172, [3 x i8]* %sp4.172
  %next4.172 = getelementptr [23 x i8], [23 x i8]* %sp172, i32 0, i32 14
  
;-------------------------------
; Replace: %s5.172 = load [3 x i8], [3 x i8]* @str.5.172
  %cipher.ptr.631 = alloca [5 x i8]
  store [5 x i8] c"\5a\32\6c\34\00", [5 x i8]* %cipher.ptr.631
  %cipher.631 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.631, i32 0, i32 0
  %plain.ptr.631 = tail call i8* @base64_decode(i8* %cipher.631)
  %spi631 = bitcast i8* %plain.ptr.631 to [3 x i8]*
  %s5.172 = load [3 x i8], [3 x i8]* %spi631
;-------------------------------
  %sp5.172 = bitcast i8* %next4.172 to [3 x i8]*
  store [3 x i8] %s5.172, [3 x i8]* %sp5.172
  %next5.172 = getelementptr [23 x i8], [23 x i8]* %sp172, i32 0, i32 17
  
;-------------------------------
; Replace: %s6.172 = load [3 x i8], [3 x i8]* @str.6.172
  %cipher.ptr.624 = alloca [5 x i8]
  store [5 x i8] c"\63\58\56\4b\00", [5 x i8]* %cipher.ptr.624
  %cipher.624 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.624, i32 0, i32 0
  %plain.ptr.624 = tail call i8* @base64_decode(i8* %cipher.624)
  %spi624 = bitcast i8* %plain.ptr.624 to [3 x i8]*
  %s6.172 = load [3 x i8], [3 x i8]* %spi624
;-------------------------------
  %sp6.172 = bitcast i8* %next5.172 to [3 x i8]*
  store [3 x i8] %s6.172, [3 x i8]* %sp6.172
  %next6.172 = getelementptr [23 x i8], [23 x i8]* %sp172, i32 0, i32 20
  
;-------------------------------
; Replace: %s7.172 = load [3 x i8], [3 x i8]* @str.7.172
  %cipher.ptr.630 = alloca [5 x i8]
  store [5 x i8] c"\63\57\5a\6b\00", [5 x i8]* %cipher.ptr.630
  %cipher.630 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.630, i32 0, i32 0
  %plain.ptr.630 = tail call i8* @base64_decode(i8* %cipher.630)
  %spi630 = bitcast i8* %plain.ptr.630 to [3 x i8]*
  %s7.172 = load [3 x i8], [3 x i8]* %spi630
;-------------------------------
  %sp7.172 = bitcast i8* %next6.172 to [3 x i8]*
  store [3 x i8] %s7.172, [3 x i8]* %sp7.172

  %spi172 = load [23 x i8], [23 x i8]* %sp172
  store [23 x i8] %spi172, [23 x i8]* %sp1.46
;-------------------------------
  %sp1.1.46 = bitcast [23 x i8]* %sp1.46 to i184*
  %i1.46 = load i184, i184* %sp1.1.46

  %xp46 = xor i184 %i0.46, %i1.46

  %fi.46 = alloca i184
  store i184 %xp46, i184* %fi.46

  %spi46 = bitcast i184* %fi.46 to [23 x i8]*
  %spi.bis.84 = ptrtoint[23 x i8]* %spi46 to i32
;-------------------------------
  store i32 %spi.bis.84, i32* %14, align 16
  store i32 134517329, i32* %15, align 4
  %25 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i41.i, i32 inreg noundef %23, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !161
  %tmp2_v1.i34.i = add i32 %tmp0_v.i42.i, -24
  %26 = inttoptr i32 %tmp2_v1.i34.i to i32*
  store i32 %tmp2_v3.i.i, i32* %26, align 8
  ret void
}
define internal fastcc void @own_strspn569(i32 %arg_esp) unnamed_addr  norecurse  !retregs !146 {
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
  store i32 134517201, i32* %7, align 4
  %tmp2_v1.i.i = add i32 %tmp0_v.i.i, -28
  %8 = inttoptr i32 %tmp2_v1.i.i to i32*
;-------------------------------
; Replace: %spi.bis.567 = ptrtoint[11 x i8]* @str.bis.567 to i32
  %sp0.51 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\5B\63\7C\61\78\03\29\1D\55\0A\72", [11 x i8]* %sp0.51
  %sp173 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.173 = load [1 x i8], [1 x i8]* @str.0.173
  %cipher.ptr.639 = alloca [5 x i8]
  store [5 x i8] c"\57\77\3d\3d\00", [5 x i8]* %cipher.ptr.639
  %cipher.639 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.639, i32 0, i32 0
  %plain.ptr.639 = tail call i8* @base64_decode(i8* %cipher.639)
  %spi639 = bitcast i8* %plain.ptr.639 to [1 x i8]*
  %s0.173 = load [1 x i8], [1 x i8]* %spi639
;-------------------------------
  %sp0.173 = bitcast [11 x i8]* %sp173 to [1 x i8]*
  store [1 x i8] %s0.173, [1 x i8]* %sp0.173
  %next0.173 = getelementptr [11 x i8], [11 x i8]* %sp173, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.173 = load [1 x i8], [1 x i8]* @str.1.173
  %cipher.ptr.634 = alloca [5 x i8]
  store [5 x i8] c"\59\77\3d\3d\00", [5 x i8]* %cipher.ptr.634
  %cipher.634 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.634, i32 0, i32 0
  %plain.ptr.634 = tail call i8* @base64_decode(i8* %cipher.634)
  %spi634 = bitcast i8* %plain.ptr.634 to [1 x i8]*
  %s1.173 = load [1 x i8], [1 x i8]* %spi634
;-------------------------------
  %sp1.173 = bitcast i8* %next0.173 to [1 x i8]*
  store [1 x i8] %s1.173, [1 x i8]* %sp1.173
  %next1.173 = getelementptr [11 x i8], [11 x i8]* %sp173, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.173 = load [2 x i8], [2 x i8]* @str.2.173
  %cipher.ptr.638 = alloca [5 x i8]
  store [5 x i8] c"\66\47\45\3d\00", [5 x i8]* %cipher.ptr.638
  %cipher.638 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.638, i32 0, i32 0
  %plain.ptr.638 = tail call i8* @base64_decode(i8* %cipher.638)
  %spi638 = bitcast i8* %plain.ptr.638 to [2 x i8]*
  %s2.173 = load [2 x i8], [2 x i8]* %spi638
;-------------------------------
  %sp2.173 = bitcast i8* %next1.173 to [2 x i8]*
  store [2 x i8] %s2.173, [2 x i8]* %sp2.173
  %next2.173 = getelementptr [11 x i8], [11 x i8]* %sp173, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.173 = load [1 x i8], [1 x i8]* @str.3.173
  %cipher.ptr.636 = alloca [5 x i8]
  store [5 x i8] c"\65\41\3d\3d\00", [5 x i8]* %cipher.ptr.636
  %cipher.636 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.636, i32 0, i32 0
  %plain.ptr.636 = tail call i8* @base64_decode(i8* %cipher.636)
  %spi636 = bitcast i8* %plain.ptr.636 to [1 x i8]*
  %s3.173 = load [1 x i8], [1 x i8]* %spi636
;-------------------------------
  %sp3.173 = bitcast i8* %next2.173 to [1 x i8]*
  store [1 x i8] %s3.173, [1 x i8]* %sp3.173
  %next3.173 = getelementptr [11 x i8], [11 x i8]* %sp173, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.173 = load [1 x i8], [1 x i8]* @str.4.173
  %cipher.ptr.633 = alloca [5 x i8]
  store [5 x i8] c"\41\77\3d\3d\00", [5 x i8]* %cipher.ptr.633
  %cipher.633 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.633, i32 0, i32 0
  %plain.ptr.633 = tail call i8* @base64_decode(i8* %cipher.633)
  %spi633 = bitcast i8* %plain.ptr.633 to [1 x i8]*
  %s4.173 = load [1 x i8], [1 x i8]* %spi633
;-------------------------------
  %sp4.173 = bitcast i8* %next3.173 to [1 x i8]*
  store [1 x i8] %s4.173, [1 x i8]* %sp4.173
  %next4.173 = getelementptr [11 x i8], [11 x i8]* %sp173, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.173 = load [2 x i8], [2 x i8]* @str.5.173
  %cipher.ptr.632 = alloca [5 x i8]
  store [5 x i8] c"\4b\52\30\3d\00", [5 x i8]* %cipher.ptr.632
  %cipher.632 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.632, i32 0, i32 0
  %plain.ptr.632 = tail call i8* @base64_decode(i8* %cipher.632)
  %spi632 = bitcast i8* %plain.ptr.632 to [2 x i8]*
  %s5.173 = load [2 x i8], [2 x i8]* %spi632
;-------------------------------
  %sp5.173 = bitcast i8* %next4.173 to [2 x i8]*
  store [2 x i8] %s5.173, [2 x i8]* %sp5.173
  %next5.173 = getelementptr [11 x i8], [11 x i8]* %sp173, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.173 = load [1 x i8], [1 x i8]* @str.6.173
  %cipher.ptr.637 = alloca [5 x i8]
  store [5 x i8] c"\56\51\3d\3d\00", [5 x i8]* %cipher.ptr.637
  %cipher.637 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.637, i32 0, i32 0
  %plain.ptr.637 = tail call i8* @base64_decode(i8* %cipher.637)
  %spi637 = bitcast i8* %plain.ptr.637 to [1 x i8]*
  %s6.173 = load [1 x i8], [1 x i8]* %spi637
;-------------------------------
  %sp6.173 = bitcast i8* %next5.173 to [1 x i8]*
  store [1 x i8] %s6.173, [1 x i8]* %sp6.173
  %next6.173 = getelementptr [11 x i8], [11 x i8]* %sp173, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.173 = load [2 x i8], [2 x i8]* @str.7.173
  %cipher.ptr.635 = alloca [5 x i8]
  store [5 x i8] c"\43\6e\49\3d\00", [5 x i8]* %cipher.ptr.635
  %cipher.635 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.635, i32 0, i32 0
  %plain.ptr.635 = tail call i8* @base64_decode(i8* %cipher.635)
  %spi635 = bitcast i8* %plain.ptr.635 to [2 x i8]*
  %s7.173 = load [2 x i8], [2 x i8]* %spi635
;-------------------------------
  %sp7.173 = bitcast i8* %next6.173 to [2 x i8]*
  store [2 x i8] %s7.173, [2 x i8]* %sp7.173

  %spi173 = load [11 x i8], [11 x i8]* %sp173
  store [11 x i8] %spi173, [11 x i8]* %sp0.51
;-------------------------------
  %sp0.1.51 = bitcast [11 x i8]* %sp0.51 to i88*
  %i0.51 = load i88, i88* %sp0.1.51

  %sp1.51 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\6a\51\4f\57\4b\62\4a\79\30\6c\72", [11 x i8]* %sp1.51
  %sp174 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.174 = load [1 x i8], [1 x i8]* @str.0.174
  %cipher.ptr.641 = alloca [5 x i8]
  store [5 x i8] c"\61\67\3d\3d\00", [5 x i8]* %cipher.ptr.641
  %cipher.641 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.641, i32 0, i32 0
  %plain.ptr.641 = tail call i8* @base64_decode(i8* %cipher.641)
  %spi641 = bitcast i8* %plain.ptr.641 to [1 x i8]*
  %s0.174 = load [1 x i8], [1 x i8]* %spi641
;-------------------------------
  %sp0.174 = bitcast [11 x i8]* %sp174 to [1 x i8]*
  store [1 x i8] %s0.174, [1 x i8]* %sp0.174
  %next0.174 = getelementptr [11 x i8], [11 x i8]* %sp174, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.174 = load [1 x i8], [1 x i8]* @str.1.174
  %cipher.ptr.646 = alloca [5 x i8]
  store [5 x i8] c"\55\51\3d\3d\00", [5 x i8]* %cipher.ptr.646
  %cipher.646 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.646, i32 0, i32 0
  %plain.ptr.646 = tail call i8* @base64_decode(i8* %cipher.646)
  %spi646 = bitcast i8* %plain.ptr.646 to [1 x i8]*
  %s1.174 = load [1 x i8], [1 x i8]* %spi646
;-------------------------------
  %sp1.174 = bitcast i8* %next0.174 to [1 x i8]*
  store [1 x i8] %s1.174, [1 x i8]* %sp1.174
  %next1.174 = getelementptr [11 x i8], [11 x i8]* %sp174, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.174 = load [2 x i8], [2 x i8]* @str.2.174
  %cipher.ptr.643 = alloca [5 x i8]
  store [5 x i8] c"\54\31\63\3d\00", [5 x i8]* %cipher.ptr.643
  %cipher.643 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.643, i32 0, i32 0
  %plain.ptr.643 = tail call i8* @base64_decode(i8* %cipher.643)
  %spi643 = bitcast i8* %plain.ptr.643 to [2 x i8]*
  %s2.174 = load [2 x i8], [2 x i8]* %spi643
;-------------------------------
  %sp2.174 = bitcast i8* %next1.174 to [2 x i8]*
  store [2 x i8] %s2.174, [2 x i8]* %sp2.174
  %next2.174 = getelementptr [11 x i8], [11 x i8]* %sp174, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.174 = load [1 x i8], [1 x i8]* @str.3.174
  %cipher.ptr.647 = alloca [5 x i8]
  store [5 x i8] c"\53\77\3d\3d\00", [5 x i8]* %cipher.ptr.647
  %cipher.647 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.647, i32 0, i32 0
  %plain.ptr.647 = tail call i8* @base64_decode(i8* %cipher.647)
  %spi647 = bitcast i8* %plain.ptr.647 to [1 x i8]*
  %s3.174 = load [1 x i8], [1 x i8]* %spi647
;-------------------------------
  %sp3.174 = bitcast i8* %next2.174 to [1 x i8]*
  store [1 x i8] %s3.174, [1 x i8]* %sp3.174
  %next3.174 = getelementptr [11 x i8], [11 x i8]* %sp174, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.174 = load [1 x i8], [1 x i8]* @str.4.174
  %cipher.ptr.642 = alloca [5 x i8]
  store [5 x i8] c"\59\67\3d\3d\00", [5 x i8]* %cipher.ptr.642
  %cipher.642 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.642, i32 0, i32 0
  %plain.ptr.642 = tail call i8* @base64_decode(i8* %cipher.642)
  %spi642 = bitcast i8* %plain.ptr.642 to [1 x i8]*
  %s4.174 = load [1 x i8], [1 x i8]* %spi642
;-------------------------------
  %sp4.174 = bitcast i8* %next3.174 to [1 x i8]*
  store [1 x i8] %s4.174, [1 x i8]* %sp4.174
  %next4.174 = getelementptr [11 x i8], [11 x i8]* %sp174, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.174 = load [2 x i8], [2 x i8]* @str.5.174
  %cipher.ptr.645 = alloca [5 x i8]
  store [5 x i8] c"\53\6e\6b\3d\00", [5 x i8]* %cipher.ptr.645
  %cipher.645 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.645, i32 0, i32 0
  %plain.ptr.645 = tail call i8* @base64_decode(i8* %cipher.645)
  %spi645 = bitcast i8* %plain.ptr.645 to [2 x i8]*
  %s5.174 = load [2 x i8], [2 x i8]* %spi645
;-------------------------------
  %sp5.174 = bitcast i8* %next4.174 to [2 x i8]*
  store [2 x i8] %s5.174, [2 x i8]* %sp5.174
  %next5.174 = getelementptr [11 x i8], [11 x i8]* %sp174, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.174 = load [1 x i8], [1 x i8]* @str.6.174
  %cipher.ptr.640 = alloca [5 x i8]
  store [5 x i8] c"\4d\41\3d\3d\00", [5 x i8]* %cipher.ptr.640
  %cipher.640 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.640, i32 0, i32 0
  %plain.ptr.640 = tail call i8* @base64_decode(i8* %cipher.640)
  %spi640 = bitcast i8* %plain.ptr.640 to [1 x i8]*
  %s6.174 = load [1 x i8], [1 x i8]* %spi640
;-------------------------------
  %sp6.174 = bitcast i8* %next5.174 to [1 x i8]*
  store [1 x i8] %s6.174, [1 x i8]* %sp6.174
  %next6.174 = getelementptr [11 x i8], [11 x i8]* %sp174, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.174 = load [2 x i8], [2 x i8]* @str.7.174
  %cipher.ptr.644 = alloca [5 x i8]
  store [5 x i8] c"\62\48\49\3d\00", [5 x i8]* %cipher.ptr.644
  %cipher.644 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.644, i32 0, i32 0
  %plain.ptr.644 = tail call i8* @base64_decode(i8* %cipher.644)
  %spi644 = bitcast i8* %plain.ptr.644 to [2 x i8]*
  %s7.174 = load [2 x i8], [2 x i8]* %spi644
;-------------------------------
  %sp7.174 = bitcast i8* %next6.174 to [2 x i8]*
  store [2 x i8] %s7.174, [2 x i8]* %sp7.174

  %spi174 = load [11 x i8], [11 x i8]* %sp174
  store [11 x i8] %spi174, [11 x i8]* %sp1.51
;-------------------------------
  %sp1.1.51 = bitcast [11 x i8]* %sp1.51 to i88*
  %i1.51 = load i88, i88* %sp1.1.51

  %xp51 = xor i88 %i0.51, %i1.51

  %fi.51 = alloca i88
  store i88 %xp51, i88* %fi.51

  %spi51 = bitcast i88* %fi.51 to [11 x i8]*
  %spi.bis.567 = ptrtoint[11 x i8]* %spi51 to i32
;-------------------------------
  store i32 %spi.bis.567, i32* %8, align 4
  %tmp2_v3.i11.i = add i32 %tmp0_v.i.i, -24
  %9 = inttoptr i32 %tmp2_v3.i11.i to i32*
;-------------------------------
; Replace: %spi.bis.566 = ptrtoint[11 x i8]* @str.bis.566 to i32
  %sp0.50 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\62\67\76\57\71\67\05\55\0D\4A\30", [11 x i8]* %sp0.50
  %sp175 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.175 = load [1 x i8], [1 x i8]* @str.0.175
  %cipher.ptr.651 = alloca [5 x i8]
  store [5 x i8] c"\59\67\3d\3d\00", [5 x i8]* %cipher.ptr.651
  %cipher.651 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.651, i32 0, i32 0
  %plain.ptr.651 = tail call i8* @base64_decode(i8* %cipher.651)
  %spi651 = bitcast i8* %plain.ptr.651 to [1 x i8]*
  %s0.175 = load [1 x i8], [1 x i8]* %spi651
;-------------------------------
  %sp0.175 = bitcast [11 x i8]* %sp175 to [1 x i8]*
  store [1 x i8] %s0.175, [1 x i8]* %sp0.175
  %next0.175 = getelementptr [11 x i8], [11 x i8]* %sp175, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.175 = load [1 x i8], [1 x i8]* @str.1.175
  %cipher.ptr.655 = alloca [5 x i8]
  store [5 x i8] c"\5a\77\3d\3d\00", [5 x i8]* %cipher.ptr.655
  %cipher.655 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.655, i32 0, i32 0
  %plain.ptr.655 = tail call i8* @base64_decode(i8* %cipher.655)
  %spi655 = bitcast i8* %plain.ptr.655 to [1 x i8]*
  %s1.175 = load [1 x i8], [1 x i8]* %spi655
;-------------------------------
  %sp1.175 = bitcast i8* %next0.175 to [1 x i8]*
  store [1 x i8] %s1.175, [1 x i8]* %sp1.175
  %next1.175 = getelementptr [11 x i8], [11 x i8]* %sp175, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.175 = load [2 x i8], [2 x i8]* @str.2.175
  %cipher.ptr.653 = alloca [5 x i8]
  store [5 x i8] c"\64\6c\63\3d\00", [5 x i8]* %cipher.ptr.653
  %cipher.653 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.653, i32 0, i32 0
  %plain.ptr.653 = tail call i8* @base64_decode(i8* %cipher.653)
  %spi653 = bitcast i8* %plain.ptr.653 to [2 x i8]*
  %s2.175 = load [2 x i8], [2 x i8]* %spi653
;-------------------------------
  %sp2.175 = bitcast i8* %next1.175 to [2 x i8]*
  store [2 x i8] %s2.175, [2 x i8]* %sp2.175
  %next2.175 = getelementptr [11 x i8], [11 x i8]* %sp175, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.175 = load [1 x i8], [1 x i8]* @str.3.175
  %cipher.ptr.652 = alloca [5 x i8]
  store [5 x i8] c"\63\51\3d\3d\00", [5 x i8]* %cipher.ptr.652
  %cipher.652 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.652, i32 0, i32 0
  %plain.ptr.652 = tail call i8* @base64_decode(i8* %cipher.652)
  %spi652 = bitcast i8* %plain.ptr.652 to [1 x i8]*
  %s3.175 = load [1 x i8], [1 x i8]* %spi652
;-------------------------------
  %sp3.175 = bitcast i8* %next2.175 to [1 x i8]*
  store [1 x i8] %s3.175, [1 x i8]* %sp3.175
  %next3.175 = getelementptr [11 x i8], [11 x i8]* %sp175, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.175 = load [1 x i8], [1 x i8]* @str.4.175
  %cipher.ptr.648 = alloca [5 x i8]
  store [5 x i8] c"\5a\77\3d\3d\00", [5 x i8]* %cipher.ptr.648
  %cipher.648 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.648, i32 0, i32 0
  %plain.ptr.648 = tail call i8* @base64_decode(i8* %cipher.648)
  %spi648 = bitcast i8* %plain.ptr.648 to [1 x i8]*
  %s4.175 = load [1 x i8], [1 x i8]* %spi648
;-------------------------------
  %sp4.175 = bitcast i8* %next3.175 to [1 x i8]*
  store [1 x i8] %s4.175, [1 x i8]* %sp4.175
  %next4.175 = getelementptr [11 x i8], [11 x i8]* %sp175, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.175 = load [2 x i8], [2 x i8]* @str.5.175
  %cipher.ptr.654 = alloca [5 x i8]
  store [5 x i8] c"\42\56\55\3d\00", [5 x i8]* %cipher.ptr.654
  %cipher.654 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.654, i32 0, i32 0
  %plain.ptr.654 = tail call i8* @base64_decode(i8* %cipher.654)
  %spi654 = bitcast i8* %plain.ptr.654 to [2 x i8]*
  %s5.175 = load [2 x i8], [2 x i8]* %spi654
;-------------------------------
  %sp5.175 = bitcast i8* %next4.175 to [2 x i8]*
  store [2 x i8] %s5.175, [2 x i8]* %sp5.175
  %next5.175 = getelementptr [11 x i8], [11 x i8]* %sp175, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.175 = load [1 x i8], [1 x i8]* @str.6.175
  %cipher.ptr.650 = alloca [5 x i8]
  store [5 x i8] c"\44\51\3d\3d\00", [5 x i8]* %cipher.ptr.650
  %cipher.650 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.650, i32 0, i32 0
  %plain.ptr.650 = tail call i8* @base64_decode(i8* %cipher.650)
  %spi650 = bitcast i8* %plain.ptr.650 to [1 x i8]*
  %s6.175 = load [1 x i8], [1 x i8]* %spi650
;-------------------------------
  %sp6.175 = bitcast i8* %next5.175 to [1 x i8]*
  store [1 x i8] %s6.175, [1 x i8]* %sp6.175
  %next6.175 = getelementptr [11 x i8], [11 x i8]* %sp175, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.175 = load [2 x i8], [2 x i8]* @str.7.175
  %cipher.ptr.649 = alloca [5 x i8]
  store [5 x i8] c"\53\6a\41\3d\00", [5 x i8]* %cipher.ptr.649
  %cipher.649 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.649, i32 0, i32 0
  %plain.ptr.649 = tail call i8* @base64_decode(i8* %cipher.649)
  %spi649 = bitcast i8* %plain.ptr.649 to [2 x i8]*
  %s7.175 = load [2 x i8], [2 x i8]* %spi649
;-------------------------------
  %sp7.175 = bitcast i8* %next6.175 to [2 x i8]*
  store [2 x i8] %s7.175, [2 x i8]* %sp7.175

  %spi175 = load [11 x i8], [11 x i8]* %sp175
  store [11 x i8] %spi175, [11 x i8]* %sp0.50
;-------------------------------
  %sp0.1.50 = bitcast [11 x i8]* %sp0.50 to i88*
  %i0.50 = load i88, i88* %sp0.1.50

  %sp1.50 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\52\56\44\64\45\52\33\62\35\73\30", [11 x i8]* %sp1.50
  %sp176 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.176 = load [1 x i8], [1 x i8]* @str.0.176
  %cipher.ptr.659 = alloca [5 x i8]
  store [5 x i8] c"\55\67\3d\3d\00", [5 x i8]* %cipher.ptr.659
  %cipher.659 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.659, i32 0, i32 0
  %plain.ptr.659 = tail call i8* @base64_decode(i8* %cipher.659)
  %spi659 = bitcast i8* %plain.ptr.659 to [1 x i8]*
  %s0.176 = load [1 x i8], [1 x i8]* %spi659
;-------------------------------
  %sp0.176 = bitcast [11 x i8]* %sp176 to [1 x i8]*
  store [1 x i8] %s0.176, [1 x i8]* %sp0.176
  %next0.176 = getelementptr [11 x i8], [11 x i8]* %sp176, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.176 = load [1 x i8], [1 x i8]* @str.1.176
  %cipher.ptr.662 = alloca [5 x i8]
  store [5 x i8] c"\56\67\3d\3d\00", [5 x i8]* %cipher.ptr.662
  %cipher.662 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.662, i32 0, i32 0
  %plain.ptr.662 = tail call i8* @base64_decode(i8* %cipher.662)
  %spi662 = bitcast i8* %plain.ptr.662 to [1 x i8]*
  %s1.176 = load [1 x i8], [1 x i8]* %spi662
;-------------------------------
  %sp1.176 = bitcast i8* %next0.176 to [1 x i8]*
  store [1 x i8] %s1.176, [1 x i8]* %sp1.176
  %next1.176 = getelementptr [11 x i8], [11 x i8]* %sp176, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.176 = load [2 x i8], [2 x i8]* @str.2.176
  %cipher.ptr.657 = alloca [5 x i8]
  store [5 x i8] c"\52\47\51\3d\00", [5 x i8]* %cipher.ptr.657
  %cipher.657 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.657, i32 0, i32 0
  %plain.ptr.657 = tail call i8* @base64_decode(i8* %cipher.657)
  %spi657 = bitcast i8* %plain.ptr.657 to [2 x i8]*
  %s2.176 = load [2 x i8], [2 x i8]* %spi657
;-------------------------------
  %sp2.176 = bitcast i8* %next1.176 to [2 x i8]*
  store [2 x i8] %s2.176, [2 x i8]* %sp2.176
  %next2.176 = getelementptr [11 x i8], [11 x i8]* %sp176, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.176 = load [1 x i8], [1 x i8]* @str.3.176
  %cipher.ptr.661 = alloca [5 x i8]
  store [5 x i8] c"\52\51\3d\3d\00", [5 x i8]* %cipher.ptr.661
  %cipher.661 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.661, i32 0, i32 0
  %plain.ptr.661 = tail call i8* @base64_decode(i8* %cipher.661)
  %spi661 = bitcast i8* %plain.ptr.661 to [1 x i8]*
  %s3.176 = load [1 x i8], [1 x i8]* %spi661
;-------------------------------
  %sp3.176 = bitcast i8* %next2.176 to [1 x i8]*
  store [1 x i8] %s3.176, [1 x i8]* %sp3.176
  %next3.176 = getelementptr [11 x i8], [11 x i8]* %sp176, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.176 = load [1 x i8], [1 x i8]* @str.4.176
  %cipher.ptr.663 = alloca [5 x i8]
  store [5 x i8] c"\55\67\3d\3d\00", [5 x i8]* %cipher.ptr.663
  %cipher.663 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.663, i32 0, i32 0
  %plain.ptr.663 = tail call i8* @base64_decode(i8* %cipher.663)
  %spi663 = bitcast i8* %plain.ptr.663 to [1 x i8]*
  %s4.176 = load [1 x i8], [1 x i8]* %spi663
;-------------------------------
  %sp4.176 = bitcast i8* %next3.176 to [1 x i8]*
  store [1 x i8] %s4.176, [1 x i8]* %sp4.176
  %next4.176 = getelementptr [11 x i8], [11 x i8]* %sp176, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.176 = load [2 x i8], [2 x i8]* @str.5.176
  %cipher.ptr.660 = alloca [5 x i8]
  store [5 x i8] c"\4d\32\49\3d\00", [5 x i8]* %cipher.ptr.660
  %cipher.660 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.660, i32 0, i32 0
  %plain.ptr.660 = tail call i8* @base64_decode(i8* %cipher.660)
  %spi660 = bitcast i8* %plain.ptr.660 to [2 x i8]*
  %s5.176 = load [2 x i8], [2 x i8]* %spi660
;-------------------------------
  %sp5.176 = bitcast i8* %next4.176 to [2 x i8]*
  store [2 x i8] %s5.176, [2 x i8]* %sp5.176
  %next5.176 = getelementptr [11 x i8], [11 x i8]* %sp176, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.176 = load [1 x i8], [1 x i8]* @str.6.176
  %cipher.ptr.656 = alloca [5 x i8]
  store [5 x i8] c"\4e\51\3d\3d\00", [5 x i8]* %cipher.ptr.656
  %cipher.656 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.656, i32 0, i32 0
  %plain.ptr.656 = tail call i8* @base64_decode(i8* %cipher.656)
  %spi656 = bitcast i8* %plain.ptr.656 to [1 x i8]*
  %s6.176 = load [1 x i8], [1 x i8]* %spi656
;-------------------------------
  %sp6.176 = bitcast i8* %next5.176 to [1 x i8]*
  store [1 x i8] %s6.176, [1 x i8]* %sp6.176
  %next6.176 = getelementptr [11 x i8], [11 x i8]* %sp176, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.176 = load [2 x i8], [2 x i8]* @str.7.176
  %cipher.ptr.658 = alloca [5 x i8]
  store [5 x i8] c"\63\7a\41\3d\00", [5 x i8]* %cipher.ptr.658
  %cipher.658 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.658, i32 0, i32 0
  %plain.ptr.658 = tail call i8* @base64_decode(i8* %cipher.658)
  %spi658 = bitcast i8* %plain.ptr.658 to [2 x i8]*
  %s7.176 = load [2 x i8], [2 x i8]* %spi658
;-------------------------------
  %sp7.176 = bitcast i8* %next6.176 to [2 x i8]*
  store [2 x i8] %s7.176, [2 x i8]* %sp7.176

  %spi176 = load [11 x i8], [11 x i8]* %sp176
  store [11 x i8] %spi176, [11 x i8]* %sp1.50
;-------------------------------
  %sp1.1.50 = bitcast [11 x i8]* %sp1.50 to i88*
  %i1.50 = load i88, i88* %sp1.1.50

  %xp50 = xor i88 %i0.50, %i1.50

  %fi.50 = alloca i88
  store i88 %xp50, i88* %fi.50

  %spi50 = bitcast i88* %fi.50 to [11 x i8]*
  %spi.bis.566 = ptrtoint[11 x i8]* %spi50 to i32
;-------------------------------
  store i32 %spi.bis.566, i32* %9, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -44
  %10 = inttoptr i32 %tmp2_v7.i.i to i32*
;-------------------------------
; Replace: %spi.bis.565 = ptrtoint[11 x i8]* @str.bis.565 to i32
  %sp0.49 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\55\48\73\6B\44\42\79\07\7B\0C\34", [11 x i8]* %sp0.49
  %sp177 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.177 = load [1 x i8], [1 x i8]* @str.0.177
  %cipher.ptr.668 = alloca [5 x i8]
  store [5 x i8] c"\56\51\3d\3d\00", [5 x i8]* %cipher.ptr.668
  %cipher.668 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.668, i32 0, i32 0
  %plain.ptr.668 = tail call i8* @base64_decode(i8* %cipher.668)
  %spi668 = bitcast i8* %plain.ptr.668 to [1 x i8]*
  %s0.177 = load [1 x i8], [1 x i8]* %spi668
;-------------------------------
  %sp0.177 = bitcast [11 x i8]* %sp177 to [1 x i8]*
  store [1 x i8] %s0.177, [1 x i8]* %sp0.177
  %next0.177 = getelementptr [11 x i8], [11 x i8]* %sp177, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.177 = load [1 x i8], [1 x i8]* @str.1.177
  %cipher.ptr.667 = alloca [5 x i8]
  store [5 x i8] c"\53\41\3d\3d\00", [5 x i8]* %cipher.ptr.667
  %cipher.667 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.667, i32 0, i32 0
  %plain.ptr.667 = tail call i8* @base64_decode(i8* %cipher.667)
  %spi667 = bitcast i8* %plain.ptr.667 to [1 x i8]*
  %s1.177 = load [1 x i8], [1 x i8]* %spi667
;-------------------------------
  %sp1.177 = bitcast i8* %next0.177 to [1 x i8]*
  store [1 x i8] %s1.177, [1 x i8]* %sp1.177
  %next1.177 = getelementptr [11 x i8], [11 x i8]* %sp177, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.177 = load [2 x i8], [2 x i8]* @str.2.177
  %cipher.ptr.665 = alloca [5 x i8]
  store [5 x i8] c"\63\32\73\3d\00", [5 x i8]* %cipher.ptr.665
  %cipher.665 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.665, i32 0, i32 0
  %plain.ptr.665 = tail call i8* @base64_decode(i8* %cipher.665)
  %spi665 = bitcast i8* %plain.ptr.665 to [2 x i8]*
  %s2.177 = load [2 x i8], [2 x i8]* %spi665
;-------------------------------
  %sp2.177 = bitcast i8* %next1.177 to [2 x i8]*
  store [2 x i8] %s2.177, [2 x i8]* %sp2.177
  %next2.177 = getelementptr [11 x i8], [11 x i8]* %sp177, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.177 = load [1 x i8], [1 x i8]* @str.3.177
  %cipher.ptr.669 = alloca [5 x i8]
  store [5 x i8] c"\52\41\3d\3d\00", [5 x i8]* %cipher.ptr.669
  %cipher.669 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.669, i32 0, i32 0
  %plain.ptr.669 = tail call i8* @base64_decode(i8* %cipher.669)
  %spi669 = bitcast i8* %plain.ptr.669 to [1 x i8]*
  %s3.177 = load [1 x i8], [1 x i8]* %spi669
;-------------------------------
  %sp3.177 = bitcast i8* %next2.177 to [1 x i8]*
  store [1 x i8] %s3.177, [1 x i8]* %sp3.177
  %next3.177 = getelementptr [11 x i8], [11 x i8]* %sp177, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.177 = load [1 x i8], [1 x i8]* @str.4.177
  %cipher.ptr.671 = alloca [5 x i8]
  store [5 x i8] c"\51\67\3d\3d\00", [5 x i8]* %cipher.ptr.671
  %cipher.671 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.671, i32 0, i32 0
  %plain.ptr.671 = tail call i8* @base64_decode(i8* %cipher.671)
  %spi671 = bitcast i8* %plain.ptr.671 to [1 x i8]*
  %s4.177 = load [1 x i8], [1 x i8]* %spi671
;-------------------------------
  %sp4.177 = bitcast i8* %next3.177 to [1 x i8]*
  store [1 x i8] %s4.177, [1 x i8]* %sp4.177
  %next4.177 = getelementptr [11 x i8], [11 x i8]* %sp177, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.177 = load [2 x i8], [2 x i8]* @str.5.177
  %cipher.ptr.664 = alloca [5 x i8]
  store [5 x i8] c"\65\51\63\3d\00", [5 x i8]* %cipher.ptr.664
  %cipher.664 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.664, i32 0, i32 0
  %plain.ptr.664 = tail call i8* @base64_decode(i8* %cipher.664)
  %spi664 = bitcast i8* %plain.ptr.664 to [2 x i8]*
  %s5.177 = load [2 x i8], [2 x i8]* %spi664
;-------------------------------
  %sp5.177 = bitcast i8* %next4.177 to [2 x i8]*
  store [2 x i8] %s5.177, [2 x i8]* %sp5.177
  %next5.177 = getelementptr [11 x i8], [11 x i8]* %sp177, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.177 = load [1 x i8], [1 x i8]* @str.6.177
  %cipher.ptr.666 = alloca [5 x i8]
  store [5 x i8] c"\65\77\3d\3d\00", [5 x i8]* %cipher.ptr.666
  %cipher.666 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.666, i32 0, i32 0
  %plain.ptr.666 = tail call i8* @base64_decode(i8* %cipher.666)
  %spi666 = bitcast i8* %plain.ptr.666 to [1 x i8]*
  %s6.177 = load [1 x i8], [1 x i8]* %spi666
;-------------------------------
  %sp6.177 = bitcast i8* %next5.177 to [1 x i8]*
  store [1 x i8] %s6.177, [1 x i8]* %sp6.177
  %next6.177 = getelementptr [11 x i8], [11 x i8]* %sp177, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.177 = load [2 x i8], [2 x i8]* @str.7.177
  %cipher.ptr.670 = alloca [5 x i8]
  store [5 x i8] c"\44\44\51\3d\00", [5 x i8]* %cipher.ptr.670
  %cipher.670 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.670, i32 0, i32 0
  %plain.ptr.670 = tail call i8* @base64_decode(i8* %cipher.670)
  %spi670 = bitcast i8* %plain.ptr.670 to [2 x i8]*
  %s7.177 = load [2 x i8], [2 x i8]* %spi670
;-------------------------------
  %sp7.177 = bitcast i8* %next6.177 to [2 x i8]*
  store [2 x i8] %s7.177, [2 x i8]* %sp7.177

  %spi177 = load [11 x i8], [11 x i8]* %sp177
  store [11 x i8] %spi177, [11 x i8]* %sp0.49
;-------------------------------
  %sp0.1.49 = bitcast [11 x i8]* %sp0.49 to i88*
  %i0.49 = load i88, i88* %sp0.1.49

  %sp1.49 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\65\79\41\58\70\77\4f\30\43\35\34", [11 x i8]* %sp1.49
  %sp178 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.178 = load [1 x i8], [1 x i8]* @str.0.178
  %cipher.ptr.677 = alloca [5 x i8]
  store [5 x i8] c"\5a\51\3d\3d\00", [5 x i8]* %cipher.ptr.677
  %cipher.677 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.677, i32 0, i32 0
  %plain.ptr.677 = tail call i8* @base64_decode(i8* %cipher.677)
  %spi677 = bitcast i8* %plain.ptr.677 to [1 x i8]*
  %s0.178 = load [1 x i8], [1 x i8]* %spi677
;-------------------------------
  %sp0.178 = bitcast [11 x i8]* %sp178 to [1 x i8]*
  store [1 x i8] %s0.178, [1 x i8]* %sp0.178
  %next0.178 = getelementptr [11 x i8], [11 x i8]* %sp178, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.178 = load [1 x i8], [1 x i8]* @str.1.178
  %cipher.ptr.673 = alloca [5 x i8]
  store [5 x i8] c"\65\51\3d\3d\00", [5 x i8]* %cipher.ptr.673
  %cipher.673 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.673, i32 0, i32 0
  %plain.ptr.673 = tail call i8* @base64_decode(i8* %cipher.673)
  %spi673 = bitcast i8* %plain.ptr.673 to [1 x i8]*
  %s1.178 = load [1 x i8], [1 x i8]* %spi673
;-------------------------------
  %sp1.178 = bitcast i8* %next0.178 to [1 x i8]*
  store [1 x i8] %s1.178, [1 x i8]* %sp1.178
  %next1.178 = getelementptr [11 x i8], [11 x i8]* %sp178, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.178 = load [2 x i8], [2 x i8]* @str.2.178
  %cipher.ptr.678 = alloca [5 x i8]
  store [5 x i8] c"\51\56\67\3d\00", [5 x i8]* %cipher.ptr.678
  %cipher.678 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.678, i32 0, i32 0
  %plain.ptr.678 = tail call i8* @base64_decode(i8* %cipher.678)
  %spi678 = bitcast i8* %plain.ptr.678 to [2 x i8]*
  %s2.178 = load [2 x i8], [2 x i8]* %spi678
;-------------------------------
  %sp2.178 = bitcast i8* %next1.178 to [2 x i8]*
  store [2 x i8] %s2.178, [2 x i8]* %sp2.178
  %next2.178 = getelementptr [11 x i8], [11 x i8]* %sp178, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.178 = load [1 x i8], [1 x i8]* @str.3.178
  %cipher.ptr.676 = alloca [5 x i8]
  store [5 x i8] c"\63\41\3d\3d\00", [5 x i8]* %cipher.ptr.676
  %cipher.676 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.676, i32 0, i32 0
  %plain.ptr.676 = tail call i8* @base64_decode(i8* %cipher.676)
  %spi676 = bitcast i8* %plain.ptr.676 to [1 x i8]*
  %s3.178 = load [1 x i8], [1 x i8]* %spi676
;-------------------------------
  %sp3.178 = bitcast i8* %next2.178 to [1 x i8]*
  store [1 x i8] %s3.178, [1 x i8]* %sp3.178
  %next3.178 = getelementptr [11 x i8], [11 x i8]* %sp178, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.178 = load [1 x i8], [1 x i8]* @str.4.178
  %cipher.ptr.675 = alloca [5 x i8]
  store [5 x i8] c"\64\77\3d\3d\00", [5 x i8]* %cipher.ptr.675
  %cipher.675 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.675, i32 0, i32 0
  %plain.ptr.675 = tail call i8* @base64_decode(i8* %cipher.675)
  %spi675 = bitcast i8* %plain.ptr.675 to [1 x i8]*
  %s4.178 = load [1 x i8], [1 x i8]* %spi675
;-------------------------------
  %sp4.178 = bitcast i8* %next3.178 to [1 x i8]*
  store [1 x i8] %s4.178, [1 x i8]* %sp4.178
  %next4.178 = getelementptr [11 x i8], [11 x i8]* %sp178, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.178 = load [2 x i8], [2 x i8]* @str.5.178
  %cipher.ptr.674 = alloca [5 x i8]
  store [5 x i8] c"\54\7a\41\3d\00", [5 x i8]* %cipher.ptr.674
  %cipher.674 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.674, i32 0, i32 0
  %plain.ptr.674 = tail call i8* @base64_decode(i8* %cipher.674)
  %spi674 = bitcast i8* %plain.ptr.674 to [2 x i8]*
  %s5.178 = load [2 x i8], [2 x i8]* %spi674
;-------------------------------
  %sp5.178 = bitcast i8* %next4.178 to [2 x i8]*
  store [2 x i8] %s5.178, [2 x i8]* %sp5.178
  %next5.178 = getelementptr [11 x i8], [11 x i8]* %sp178, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.178 = load [1 x i8], [1 x i8]* @str.6.178
  %cipher.ptr.672 = alloca [5 x i8]
  store [5 x i8] c"\51\77\3d\3d\00", [5 x i8]* %cipher.ptr.672
  %cipher.672 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.672, i32 0, i32 0
  %plain.ptr.672 = tail call i8* @base64_decode(i8* %cipher.672)
  %spi672 = bitcast i8* %plain.ptr.672 to [1 x i8]*
  %s6.178 = load [1 x i8], [1 x i8]* %spi672
;-------------------------------
  %sp6.178 = bitcast i8* %next5.178 to [1 x i8]*
  store [1 x i8] %s6.178, [1 x i8]* %sp6.178
  %next6.178 = getelementptr [11 x i8], [11 x i8]* %sp178, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.178 = load [2 x i8], [2 x i8]* @str.7.178
  %cipher.ptr.679 = alloca [5 x i8]
  store [5 x i8] c"\4e\54\51\3d\00", [5 x i8]* %cipher.ptr.679
  %cipher.679 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.679, i32 0, i32 0
  %plain.ptr.679 = tail call i8* @base64_decode(i8* %cipher.679)
  %spi679 = bitcast i8* %plain.ptr.679 to [2 x i8]*
  %s7.178 = load [2 x i8], [2 x i8]* %spi679
;-------------------------------
  %sp7.178 = bitcast i8* %next6.178 to [2 x i8]*
  store [2 x i8] %s7.178, [2 x i8]* %sp7.178

  %spi178 = load [11 x i8], [11 x i8]* %sp178
  store [11 x i8] %spi178, [11 x i8]* %sp1.49
;-------------------------------
  %sp1.1.49 = bitcast [11 x i8]* %sp1.49 to i88*
  %i1.49 = load i88, i88* %sp1.1.49

  %xp49 = xor i88 %i0.49, %i1.49

  %fi.49 = alloca i88
  store i88 %xp49, i88* %fi.49

  %spi49 = bitcast i88* %fi.49 to [11 x i8]*
  %spi.bis.565 = ptrtoint[11 x i8]* %spi49 to i32
;-------------------------------
  store i32 %spi.bis.565, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -48
  %12 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 %11, i32* %12, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -52
  %13 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 134517239, i32* %13, align 4
  %tmp2_v.i27.i.i = add i32 %tmp0_v.i.i, -56
  %14 = inttoptr i32 %tmp2_v.i27.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %14, align 8
  %tmp2_v1.i29.i.i = add i32 %tmp0_v.i.i, -60
  %15 = inttoptr i32 %tmp2_v1.i29.i.i to i32*
  store i32 134529024, i32* %15, align 4
  %tmp2_v2.i31.i.i = add i32 %tmp0_v.i.i, -100
  %16 = inttoptr i32 %tmp2_v2.i31.i.i to i32*
  store i32 134517297, i32* %16, align 4
  %tmp2_v.i75.i.i = add i32 %tmp0_v.i.i, -84
  %17 = inttoptr i32 %tmp2_v.i75.i.i to i32*
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %12, align 16
  %tmp2_v4.i80.i.i = add i32 %tmp0_v.i.i, -112
  %19 = inttoptr i32 %tmp2_v4.i80.i.i to i32*
  store i32 %18, i32* %19, align 16
  %tmp2_v5.i81.i.i = add i32 %tmp0_v.i.i, -116
  %20 = inttoptr i32 %tmp2_v5.i81.i.i to i32*
  store i32 134517321, i32* %20, align 4
  %arg.i.i.i = load i32, i32* %19, align 16
  %21 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i52.i.i = add i32 %tmp0_v.i.i, -72
  %22 = inttoptr i32 %tmp2_v.i52.i.i to i32*
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %19, align 16
  store i32 134517338, i32* %20, align 4
  %arg.i.i6.i = load i32, i32* %19, align 16
  %24 = tail call i32 @strlen(i32 %arg.i.i6.i)
  %tmp2_v.i18.i.i = add i32 %tmp0_v.i.i, -68
  %25 = inttoptr i32 %tmp2_v.i18.i.i to i32*
  store i32 %24, i32* %25, align 4
  %tmp2_v1.i19.i.i = add i32 %tmp0_v.i.i, -80
  %26 = inttoptr i32 %tmp2_v1.i19.i.i to i32*
  %tmp2_v.i40.i.i = add i32 %tmp0_v.i.i, -85
  %27 = inttoptr i32 %tmp2_v.i40.i.i to i8*
  %tmp2_v1.i41.i.i = add i32 %tmp0_v.i.i, -76
  %28 = inttoptr i32 %tmp2_v1.i41.i.i to i32*
  br label %BB_80492B5.i.i

BB_80492AD.i.i:                                   ; preds = %BB_80492A2.i.thread.i, %BB_80492A2.i.i
  %r_edx.112.i = phi i32 [ %tmp0_v4.i64.i.i, %BB_80492A2.i.thread.i ], [ %r_edx.2.lcssa.i, %BB_80492A2.i.i ]
  %r_ecx.111.i = phi i32 [ %37, %BB_80492A2.i.thread.i ], [ %r_ecx.2.lcssa.i, %BB_80492A2.i.i ]
  %29 = load i32, i32* %17, align 4
  %tmp0_v1.i.i.i = add i32 %29, 1
  store i32 %tmp0_v1.i.i.i, i32* %17, align 4
  %30 = load i32, i32* %26, align 16
  %tmp0_v4.i.i.i = add i32 %30, 1
  br label %BB_80492B5.i.i

BB_80492B5.i.i:                                   ; preds = %BB_80492AD.i.i, %0
  %storemerge.i = phi i32 [ 0, %0 ], [ %tmp0_v4.i.i.i, %BB_80492AD.i.i ]
  %r_ecx.0.i = phi i32 [ %tmp2_v.i.i, %0 ], [ %r_ecx.111.i, %BB_80492AD.i.i ]
  %r_edx.0.i = phi i32 [ 0, %0 ], [ %r_edx.112.i, %BB_80492AD.i.i ]
  store i32 %storemerge.i, i32* %26, align 16
  store i8 0, i8* %27, align 1
  store i32 0, i32* %28, align 4
  %31 = load i32, i32* %25, align 4
  %.not.i = icmp eq i32 %31, 0
  br i1 %.not.i, label %BB_80492A2.i.i, label %BB_8049276.i.i

BB_80492A2.i.i:                                   ; preds = %BB_804929A.i.i, %BB_80492B5.i.i
  %r_ecx.2.lcssa.i = phi i32 [ %r_ecx.0.i, %BB_80492B5.i.i ], [ %37, %BB_804929A.i.i ]
  %r_edx.2.lcssa.i = phi i32 [ %r_edx.0.i, %BB_80492B5.i.i ], [ %tmp0_v4.i64.i.i, %BB_804929A.i.i ]
  %.pr.i = load i8, i8* %27, align 1
  %.not.i.i.i = icmp eq i8 %.pr.i, 1
  br i1 %.not.i.i.i, label %BB_80492AD.i.i, label %Func__strspn.exit

BB_80492A2.i.thread.i:                            ; preds = %BB_8049276.i.i
  store i8 1, i8* %27, align 1
  br label %BB_80492AD.i.i

BB_804929A.i.i:                                   ; preds = %BB_8049276.i.i
  store i32 %tmp0_v1.i10.i.i, i32* %28, align 4
  %32 = load i32, i32* %25, align 4
  %33 = icmp ult i32 %tmp0_v1.i10.i.i, %32
  br i1 %33, label %BB_8049276.i.i, label %BB_80492A2.i.i

BB_8049276.i.i:                                   ; preds = %BB_804929A.i.i, %BB_80492B5.i.i
  %storemerge115.i = phi i32 [ %tmp0_v1.i10.i.i, %BB_804929A.i.i ], [ 0, %BB_80492B5.i.i ]
  %34 = load i32, i32* %10, align 4
  %tmp0_v3.i63.i.i = add i32 %34, %storemerge115.i
  %35 = inttoptr i32 %tmp0_v3.i63.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %tmp0_v4.i64.i.i = zext i8 %36 to i32
  %37 = load i32, i32* %12, align 16
  %38 = load i32, i32* %26, align 16
  %tmp0_v9.i.i.i = add i32 %38, %37
  %39 = inttoptr i32 %tmp0_v9.i.i.i to i8*
  %40 = load i8, i8* %39, align 1
  %tmp0_v10.i.i.i = zext i8 %40 to i32
  %cc_dst_v.i68.i.i = sub nsw i32 %tmp0_v4.i64.i.i, %tmp0_v10.i.i.i
  %tmp4_v.i69.i.i = and i32 %cc_dst_v.i68.i.i, 255
  %.not.i70.i.i = icmp eq i32 %tmp4_v.i69.i.i, 0
  %tmp0_v1.i10.i.i = add nuw i32 %storemerge115.i, 1
  br i1 %.not.i70.i.i, label %BB_80492A2.i.thread.i, label %BB_804929A.i.i

Func__strspn.exit:                                ; preds = %BB_80492A2.i.i
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %14, align 8
  %tmp2_v.i20.i = add i32 %43, -12
  %44 = inttoptr i32 %tmp2_v.i20.i to i32*
  store i32 %41, i32* %44, align 4
  store i32 %41, i32* %10, align 4
  %tmp2_v5.i25.i = add i32 %42, -8160
  store i32 %tmp2_v5.i25.i, i32* %12, align 16
  store i32 134517263, i32* %13, align 4
  %45 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa.i, i32 inreg noundef %r_edx.2.lcssa.i, i32 noundef %tmp2_v10.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !147
  ret void
}
define internal fastcc void @count_nonrepeating260(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !132 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -84
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i17.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i21.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i21.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i22.i = add i32 %tmp0_v.i.i, -64
  %10 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 1, i32* %10, align 16
  %tmp2_v4.i23.i = add i32 %tmp0_v.i.i, -60
  %11 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 3, i32* %11, align 4
  %tmp2_v5.i24.i = add i32 %tmp0_v.i.i, -56
  %12 = inttoptr i32 %tmp2_v5.i24.i to i32*
  store i32 5, i32* %12, align 8
  %tmp2_v6.i25.i = add i32 %tmp0_v.i.i, -52
  %13 = inttoptr i32 %tmp2_v6.i25.i to i32*
  store i32 7, i32* %13, align 4
  %tmp2_v7.i26.i = add i32 %tmp0_v.i.i, -48
  %14 = inttoptr i32 %tmp2_v7.i26.i to i32*
  store i32 3, i32* %14, align 16
  %tmp2_v8.i27.i = add i32 %tmp0_v.i.i, -44
  %15 = inttoptr i32 %tmp2_v8.i27.i to i32*
  store i32 7, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -40
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 6, i32* %16, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -36
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 6, i32* %17, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i.i, -32
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 4, i32* %18, align 16
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -28
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 2, i32* %19, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -24
  %20 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 9, i32* %20, align 8
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -92
  %21 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 11, i32* %21, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i.i, -96
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 %tmp2_v3.i22.i, i32* %22, align 16
  %tmp2_v18.i.i = add i32 %tmp0_v.i.i, -100
  %23 = inttoptr i32 %tmp2_v18.i.i to i32*
  store i32 134517309, i32* %23, align 4
  %tmp2_v.i22.i.i = add i32 %tmp0_v.i.i, -104
  %24 = inttoptr i32 %tmp2_v.i22.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %24, align 8
  %tmp2_v1.i25.i.i = add i32 %tmp0_v.i.i, -124
  %25 = inttoptr i32 %tmp2_v1.i25.i.i to i32*
;-------------------------------
; Replace: %spi.bis.258 = ptrtoint[4 x i8]* @str.bis.258 to i32
  %sp0.53 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\6F\4B\5C\4B", [4 x i8]* %sp0.53
  %sp179 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.179 = load [1 x i8], [1 x i8]* @str.0.179
  %cipher.ptr.681 = alloca [5 x i8]
  store [5 x i8] c"\62\77\3d\3d\00", [5 x i8]* %cipher.ptr.681
  %cipher.681 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.681, i32 0, i32 0
  %plain.ptr.681 = tail call i8* @base64_decode(i8* %cipher.681)
  %spi681 = bitcast i8* %plain.ptr.681 to [1 x i8]*
  %s0.179 = load [1 x i8], [1 x i8]* %spi681
;-------------------------------
  %sp0.179 = bitcast [4 x i8]* %sp179 to [1 x i8]*
  store [1 x i8] %s0.179, [1 x i8]* %sp0.179
  %next0.179 = getelementptr [4 x i8], [4 x i8]* %sp179, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.179 = load [1 x i8], [1 x i8]* @str.1.179
  %cipher.ptr.682 = alloca [5 x i8]
  store [5 x i8] c"\53\77\3d\3d\00", [5 x i8]* %cipher.ptr.682
  %cipher.682 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.682, i32 0, i32 0
  %plain.ptr.682 = tail call i8* @base64_decode(i8* %cipher.682)
  %spi682 = bitcast i8* %plain.ptr.682 to [1 x i8]*
  %s1.179 = load [1 x i8], [1 x i8]* %spi682
;-------------------------------
  %sp1.179 = bitcast i8* %next0.179 to [1 x i8]*
  store [1 x i8] %s1.179, [1 x i8]* %sp1.179
  %next1.179 = getelementptr [4 x i8], [4 x i8]* %sp179, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.179 = load [1 x i8], [1 x i8]* @str.2.179
  %cipher.ptr.683 = alloca [5 x i8]
  store [5 x i8] c"\58\41\3d\3d\00", [5 x i8]* %cipher.ptr.683
  %cipher.683 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.683, i32 0, i32 0
  %plain.ptr.683 = tail call i8* @base64_decode(i8* %cipher.683)
  %spi683 = bitcast i8* %plain.ptr.683 to [1 x i8]*
  %s2.179 = load [1 x i8], [1 x i8]* %spi683
;-------------------------------
  %sp2.179 = bitcast i8* %next1.179 to [1 x i8]*
  store [1 x i8] %s2.179, [1 x i8]* %sp2.179
  %next2.179 = getelementptr [4 x i8], [4 x i8]* %sp179, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.179 = load [1 x i8], [1 x i8]* @str.3.179
  %cipher.ptr.680 = alloca [5 x i8]
  store [5 x i8] c"\53\77\3d\3d\00", [5 x i8]* %cipher.ptr.680
  %cipher.680 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.680, i32 0, i32 0
  %plain.ptr.680 = tail call i8* @base64_decode(i8* %cipher.680)
  %spi680 = bitcast i8* %plain.ptr.680 to [1 x i8]*
  %s3.179 = load [1 x i8], [1 x i8]* %spi680
;-------------------------------
  %sp3.179 = bitcast i8* %next2.179 to [1 x i8]*
  store [1 x i8] %s3.179, [1 x i8]* %sp3.179

  %spi179 = load [4 x i8], [4 x i8]* %sp179
  store [4 x i8] %spi179, [4 x i8]* %sp0.53
;-------------------------------
  %sp0.1.53 = bitcast [4 x i8]* %sp0.53 to i32*
  %i0.53 = load i32, i32* %sp0.1.53

  %sp1.53 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\6a\32\71\4b", [4 x i8]* %sp1.53
  %sp180 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.180 = load [1 x i8], [1 x i8]* @str.0.180
  %cipher.ptr.686 = alloca [5 x i8]
  store [5 x i8] c"\61\67\3d\3d\00", [5 x i8]* %cipher.ptr.686
  %cipher.686 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.686, i32 0, i32 0
  %plain.ptr.686 = tail call i8* @base64_decode(i8* %cipher.686)
  %spi686 = bitcast i8* %plain.ptr.686 to [1 x i8]*
  %s0.180 = load [1 x i8], [1 x i8]* %spi686
;-------------------------------
  %sp0.180 = bitcast [4 x i8]* %sp180 to [1 x i8]*
  store [1 x i8] %s0.180, [1 x i8]* %sp0.180
  %next0.180 = getelementptr [4 x i8], [4 x i8]* %sp180, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.180 = load [1 x i8], [1 x i8]* @str.1.180
  %cipher.ptr.685 = alloca [5 x i8]
  store [5 x i8] c"\4d\67\3d\3d\00", [5 x i8]* %cipher.ptr.685
  %cipher.685 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.685, i32 0, i32 0
  %plain.ptr.685 = tail call i8* @base64_decode(i8* %cipher.685)
  %spi685 = bitcast i8* %plain.ptr.685 to [1 x i8]*
  %s1.180 = load [1 x i8], [1 x i8]* %spi685
;-------------------------------
  %sp1.180 = bitcast i8* %next0.180 to [1 x i8]*
  store [1 x i8] %s1.180, [1 x i8]* %sp1.180
  %next1.180 = getelementptr [4 x i8], [4 x i8]* %sp180, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.180 = load [1 x i8], [1 x i8]* @str.2.180
  %cipher.ptr.687 = alloca [5 x i8]
  store [5 x i8] c"\63\51\3d\3d\00", [5 x i8]* %cipher.ptr.687
  %cipher.687 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.687, i32 0, i32 0
  %plain.ptr.687 = tail call i8* @base64_decode(i8* %cipher.687)
  %spi687 = bitcast i8* %plain.ptr.687 to [1 x i8]*
  %s2.180 = load [1 x i8], [1 x i8]* %spi687
;-------------------------------
  %sp2.180 = bitcast i8* %next1.180 to [1 x i8]*
  store [1 x i8] %s2.180, [1 x i8]* %sp2.180
  %next2.180 = getelementptr [4 x i8], [4 x i8]* %sp180, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.180 = load [1 x i8], [1 x i8]* @str.3.180
  %cipher.ptr.684 = alloca [5 x i8]
  store [5 x i8] c"\53\77\3d\3d\00", [5 x i8]* %cipher.ptr.684
  %cipher.684 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.684, i32 0, i32 0
  %plain.ptr.684 = tail call i8* @base64_decode(i8* %cipher.684)
  %spi684 = bitcast i8* %plain.ptr.684 to [1 x i8]*
  %s3.180 = load [1 x i8], [1 x i8]* %spi684
;-------------------------------
  %sp3.180 = bitcast i8* %next2.180 to [1 x i8]*
  store [1 x i8] %s3.180, [1 x i8]* %sp3.180

  %spi180 = load [4 x i8], [4 x i8]* %sp180
  store [4 x i8] %spi180, [4 x i8]* %sp1.53
;-------------------------------
  %sp1.1.53 = bitcast [4 x i8]* %sp1.53 to i32*
  %i1.53 = load i32, i32* %sp1.1.53

  %xp53 = xor i32 %i0.53, %i1.53

  %fi.53 = alloca i32
  store i32 %xp53, i32* %fi.53

  %spi53 = bitcast i32* %fi.53 to [4 x i8]*
  %spi.bis.258 = ptrtoint[4 x i8]* %spi53 to i32
;-------------------------------
  store i32 %spi.bis.258, i32* %25, align 4
  %tmp2_v.i20.i.i = add i32 %tmp0_v.i.i, -116
  %26 = inttoptr i32 %tmp2_v.i20.i.i to i32*
  %tmp2_v1.i21.i.i = add i32 %tmp0_v.i.i, -112
  %27 = inttoptr i32 %tmp2_v1.i21.i.i to i32*
  store i32 0, i32* %27, align 16
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -108
  %28 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 0, i32* %28, align 4
  store i32 0, i32* %26, align 4
  %29 = load i32, i32* %21, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_80492E5.i.preheader.i, label %Func_non_repeating.exit

BB_80492E5.i.preheader.i:                         ; preds = %BB_80492FC.i.i, %.exit
  %r_ecx.015.i = phi i32 [ %r_ecx.1.i, %BB_80492FC.i.i ], [ %tmp2_v.i.i, %.exit ]
  %r_edx.014.i = phi i32 [ %r_edx.1.i, %BB_80492FC.i.i ], [ 0, %.exit ]
  store i32 0, i32* %27, align 16
  %31 = load i32, i32* %21, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %BB_80492B3.i.i.preheader, label %BB_80492F0.i.i

BB_80492B3.i.i.preheader:                         ; preds = %BB_80492E5.i.preheader.i
  %33 = load i32, i32* %26, align 4
  %tmp4_v.i74.i.i3 = shl i32 %33, 2
  %34 = load i32, i32* %22, align 16
  %tmp0_v3.i77.i.i4 = add i32 %34, %tmp4_v.i74.i.i3
  %35 = inttoptr i32 %tmp0_v3.i77.i.i4 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = inttoptr i32 %34 to i32*
  %38 = load i32, i32* %37, align 4
  %.not.i82.i.i6 = icmp ne i32 %36, %38
  %.not.i.i.i7 = icmp eq i32 %33, 0
  %or.cond.i8 = select i1 %.not.i82.i.i6, i1 true, i1 %.not.i.i.i7
  br i1 %or.cond.i8, label %BB_80492E1.i.i.preheader, label %BB_80492F0.i.i

BB_80492E1.i.i.preheader:                         ; preds = %BB_80492B3.i.i.preheader
  store i32 1, i32* %27, align 16
  %39 = load i32, i32* %21, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %BB_80492B3.i.i, label %BB_80492F0.i.i

BB_80492FC.i.i:                                   ; preds = %BB_80492F8.i.i, %BB_80492F0.i.i
  %41 = load i32, i32* %26, align 4
  %tmp0_v1.i.i.i = add i32 %41, 1
  store i32 %tmp0_v1.i.i.i, i32* %26, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp slt i32 %tmp0_v1.i.i.i, %42
  br i1 %43, label %BB_80492E5.i.preheader.i, label %Func_non_repeating.exit

BB_80492E1.i.i:                                   ; preds = %BB_80492B3.i.i
  %tmp0_v1.i36.i.i = add nuw nsw i32 %tmp0_v1.i36.i.i18, 1
  store i32 %tmp0_v1.i36.i.i, i32* %27, align 16
  %44 = load i32, i32* %21, align 4
  %45 = icmp slt i32 %tmp0_v1.i36.i.i, %44
  br i1 %45, label %BB_80492B3.i.i, label %BB_80492F0.i.i

BB_80492F0.i.i:                                   ; preds = %BB_80492B3.i.i, %BB_80492E1.i.i, %BB_80492E1.i.i.preheader, %BB_80492B3.i.i.preheader, %BB_80492E5.i.preheader.i
  %storemerge1.lcssa.i = phi i32 [ 0, %BB_80492E5.i.preheader.i ], [ 0, %BB_80492B3.i.i.preheader ], [ 1, %BB_80492E1.i.i.preheader ], [ %tmp0_v1.i36.i.i, %BB_80492E1.i.i ], [ %tmp0_v1.i36.i.i18, %BB_80492B3.i.i ]
  %.lcssa.i = phi i32 [ %31, %BB_80492E5.i.preheader.i ], [ %31, %BB_80492B3.i.i.preheader ], [ %39, %BB_80492E1.i.i.preheader ], [ %44, %BB_80492E1.i.i ], [ %47, %BB_80492B3.i.i ]
  %r_edx.1.i = phi i32 [ %r_edx.014.i, %BB_80492E5.i.preheader.i ], [ %36, %BB_80492B3.i.i.preheader ], [ %36, %BB_80492E1.i.i.preheader ], [ %51, %BB_80492E1.i.i ], [ %51, %BB_80492B3.i.i ]
  %r_ecx.1.i = phi i32 [ %r_ecx.015.i, %BB_80492E5.i.preheader.i ], [ 0, %BB_80492B3.i.i.preheader ], [ 0, %BB_80492E1.i.i.preheader ], [ %tmp4_v7.i.i.i, %BB_80492E1.i.i ], [ %tmp4_v7.i.i.i, %BB_80492B3.i.i ]
  %.not.i49.i.i = icmp eq i32 %storemerge1.lcssa.i, %.lcssa.i
  br i1 %.not.i49.i.i, label %BB_80492F8.i.i, label %BB_80492FC.i.i

BB_80492F8.i.i:                                   ; preds = %BB_80492F0.i.i
  %46 = load i32, i32* %28, align 4
  %tmp0_v1.i58.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i58.i.i, i32* %28, align 4
  br label %BB_80492FC.i.i

BB_80492B3.i.i:                                   ; preds = %BB_80492E1.i.i, %BB_80492E1.i.i.preheader
  %47 = phi i32 [ %44, %BB_80492E1.i.i ], [ %39, %BB_80492E1.i.i.preheader ]
  %tmp0_v1.i36.i.i18 = phi i32 [ %tmp0_v1.i36.i.i, %BB_80492E1.i.i ], [ 1, %BB_80492E1.i.i.preheader ]
  %48 = load i32, i32* %26, align 4
  %tmp4_v.i74.i.i = shl i32 %48, 2
  %49 = load i32, i32* %22, align 16
  %tmp0_v3.i77.i.i = add i32 %49, %tmp4_v.i74.i.i
  %50 = inttoptr i32 %tmp0_v3.i77.i.i to i32*
  %51 = load i32, i32* %50, align 4
  %tmp4_v7.i.i.i = shl i32 %tmp0_v1.i36.i.i18, 2
  %tmp0_v10.i.i.i = add i32 %49, %tmp4_v7.i.i.i
  %52 = inttoptr i32 %tmp0_v10.i.i.i to i32*
  %53 = load i32, i32* %52, align 4
  %.not.i82.i.i = icmp ne i32 %51, %53
  %.not.i.i.i = icmp eq i32 %48, %tmp0_v1.i36.i.i18
  %or.cond.i = select i1 %.not.i82.i.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %BB_80492E1.i.i, label %BB_80492F0.i.i

Func_non_repeating.exit:                          ; preds = %BB_80492FC.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.1.i, %BB_80492FC.i.i ]
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i.i, %.exit ], [ %r_ecx.1.i, %BB_80492FC.i.i ]
  %54 = load i32, i32* %28, align 4
  %55 = load i32, i32* %24, align 8
  %tmp2_v.i8.i = add i32 %55, -60
  %56 = inttoptr i32 %tmp2_v.i8.i to i32*
  store i32 %54, i32* %56, align 4
  store i32 %54, i32* %21, align 4
;-------------------------------
; Replace: %spi.bis.257 = ptrtoint[11 x i8]* @str.bis.257 to i32
  %sp0.52 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\2B\3E\3D\1E\05\02\49\42\32\42\6F", [11 x i8]* %sp0.52
  %sp181 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.181 = load [1 x i8], [1 x i8]* @str.0.181
  %cipher.ptr.695 = alloca [5 x i8]
  store [5 x i8] c"\4b\77\3d\3d\00", [5 x i8]* %cipher.ptr.695
  %cipher.695 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.695, i32 0, i32 0
  %plain.ptr.695 = tail call i8* @base64_decode(i8* %cipher.695)
  %spi695 = bitcast i8* %plain.ptr.695 to [1 x i8]*
  %s0.181 = load [1 x i8], [1 x i8]* %spi695
;-------------------------------
  %sp0.181 = bitcast [11 x i8]* %sp181 to [1 x i8]*
  store [1 x i8] %s0.181, [1 x i8]* %sp0.181
  %next0.181 = getelementptr [11 x i8], [11 x i8]* %sp181, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.181 = load [1 x i8], [1 x i8]* @str.1.181
  %cipher.ptr.691 = alloca [5 x i8]
  store [5 x i8] c"\50\67\3d\3d\00", [5 x i8]* %cipher.ptr.691
  %cipher.691 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.691, i32 0, i32 0
  %plain.ptr.691 = tail call i8* @base64_decode(i8* %cipher.691)
  %spi691 = bitcast i8* %plain.ptr.691 to [1 x i8]*
  %s1.181 = load [1 x i8], [1 x i8]* %spi691
;-------------------------------
  %sp1.181 = bitcast i8* %next0.181 to [1 x i8]*
  store [1 x i8] %s1.181, [1 x i8]* %sp1.181
  %next1.181 = getelementptr [11 x i8], [11 x i8]* %sp181, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.181 = load [2 x i8], [2 x i8]* @str.2.181
  %cipher.ptr.693 = alloca [5 x i8]
  store [5 x i8] c"\50\52\34\3d\00", [5 x i8]* %cipher.ptr.693
  %cipher.693 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.693, i32 0, i32 0
  %plain.ptr.693 = tail call i8* @base64_decode(i8* %cipher.693)
  %spi693 = bitcast i8* %plain.ptr.693 to [2 x i8]*
  %s2.181 = load [2 x i8], [2 x i8]* %spi693
;-------------------------------
  %sp2.181 = bitcast i8* %next1.181 to [2 x i8]*
  store [2 x i8] %s2.181, [2 x i8]* %sp2.181
  %next2.181 = getelementptr [11 x i8], [11 x i8]* %sp181, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.181 = load [1 x i8], [1 x i8]* @str.3.181
  %cipher.ptr.694 = alloca [5 x i8]
  store [5 x i8] c"\42\51\3d\3d\00", [5 x i8]* %cipher.ptr.694
  %cipher.694 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.694, i32 0, i32 0
  %plain.ptr.694 = tail call i8* @base64_decode(i8* %cipher.694)
  %spi694 = bitcast i8* %plain.ptr.694 to [1 x i8]*
  %s3.181 = load [1 x i8], [1 x i8]* %spi694
;-------------------------------
  %sp3.181 = bitcast i8* %next2.181 to [1 x i8]*
  store [1 x i8] %s3.181, [1 x i8]* %sp3.181
  %next3.181 = getelementptr [11 x i8], [11 x i8]* %sp181, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.181 = load [1 x i8], [1 x i8]* @str.4.181
  %cipher.ptr.689 = alloca [5 x i8]
  store [5 x i8] c"\41\67\3d\3d\00", [5 x i8]* %cipher.ptr.689
  %cipher.689 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.689, i32 0, i32 0
  %plain.ptr.689 = tail call i8* @base64_decode(i8* %cipher.689)
  %spi689 = bitcast i8* %plain.ptr.689 to [1 x i8]*
  %s4.181 = load [1 x i8], [1 x i8]* %spi689
;-------------------------------
  %sp4.181 = bitcast i8* %next3.181 to [1 x i8]*
  store [1 x i8] %s4.181, [1 x i8]* %sp4.181
  %next4.181 = getelementptr [11 x i8], [11 x i8]* %sp181, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.181 = load [2 x i8], [2 x i8]* @str.5.181
  %cipher.ptr.688 = alloca [5 x i8]
  store [5 x i8] c"\53\55\49\3d\00", [5 x i8]* %cipher.ptr.688
  %cipher.688 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.688, i32 0, i32 0
  %plain.ptr.688 = tail call i8* @base64_decode(i8* %cipher.688)
  %spi688 = bitcast i8* %plain.ptr.688 to [2 x i8]*
  %s5.181 = load [2 x i8], [2 x i8]* %spi688
;-------------------------------
  %sp5.181 = bitcast i8* %next4.181 to [2 x i8]*
  store [2 x i8] %s5.181, [2 x i8]* %sp5.181
  %next5.181 = getelementptr [11 x i8], [11 x i8]* %sp181, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.181 = load [1 x i8], [1 x i8]* @str.6.181
  %cipher.ptr.692 = alloca [5 x i8]
  store [5 x i8] c"\4d\67\3d\3d\00", [5 x i8]* %cipher.ptr.692
  %cipher.692 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.692, i32 0, i32 0
  %plain.ptr.692 = tail call i8* @base64_decode(i8* %cipher.692)
  %spi692 = bitcast i8* %plain.ptr.692 to [1 x i8]*
  %s6.181 = load [1 x i8], [1 x i8]* %spi692
;-------------------------------
  %sp6.181 = bitcast i8* %next5.181 to [1 x i8]*
  store [1 x i8] %s6.181, [1 x i8]* %sp6.181
  %next6.181 = getelementptr [11 x i8], [11 x i8]* %sp181, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.181 = load [2 x i8], [2 x i8]* @str.7.181
  %cipher.ptr.690 = alloca [5 x i8]
  store [5 x i8] c"\51\6d\38\3d\00", [5 x i8]* %cipher.ptr.690
  %cipher.690 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.690, i32 0, i32 0
  %plain.ptr.690 = tail call i8* @base64_decode(i8* %cipher.690)
  %spi690 = bitcast i8* %plain.ptr.690 to [2 x i8]*
  %s7.181 = load [2 x i8], [2 x i8]* %spi690
;-------------------------------
  %sp7.181 = bitcast i8* %next6.181 to [2 x i8]*
  store [2 x i8] %s7.181, [2 x i8]* %sp7.181

  %spi181 = load [11 x i8], [11 x i8]* %sp181
  store [11 x i8] %spi181, [11 x i8]* %sp0.52
;-------------------------------
  %sp0.1.52 = bitcast [11 x i8]* %sp0.52 to i88*
  %i0.52 = load i88, i88* %sp0.1.52

  %sp1.52 = alloca [11 x i8]
;-------------------------------
; Replace: store [11 x i8] c"\48\51\48\70\71\38\69\67\56\48\6f", [11 x i8]* %sp1.52
  %sp182 = alloca [11 x i8]
  
;-------------------------------
; Replace: %s0.182 = load [1 x i8], [1 x i8]* @str.0.182
  %cipher.ptr.698 = alloca [5 x i8]
  store [5 x i8] c"\53\41\3d\3d\00", [5 x i8]* %cipher.ptr.698
  %cipher.698 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.698, i32 0, i32 0
  %plain.ptr.698 = tail call i8* @base64_decode(i8* %cipher.698)
  %spi698 = bitcast i8* %plain.ptr.698 to [1 x i8]*
  %s0.182 = load [1 x i8], [1 x i8]* %spi698
;-------------------------------
  %sp0.182 = bitcast [11 x i8]* %sp182 to [1 x i8]*
  store [1 x i8] %s0.182, [1 x i8]* %sp0.182
  %next0.182 = getelementptr [11 x i8], [11 x i8]* %sp182, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.182 = load [1 x i8], [1 x i8]* @str.1.182
  %cipher.ptr.702 = alloca [5 x i8]
  store [5 x i8] c"\55\51\3d\3d\00", [5 x i8]* %cipher.ptr.702
  %cipher.702 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.702, i32 0, i32 0
  %plain.ptr.702 = tail call i8* @base64_decode(i8* %cipher.702)
  %spi702 = bitcast i8* %plain.ptr.702 to [1 x i8]*
  %s1.182 = load [1 x i8], [1 x i8]* %spi702
;-------------------------------
  %sp1.182 = bitcast i8* %next0.182 to [1 x i8]*
  store [1 x i8] %s1.182, [1 x i8]* %sp1.182
  %next1.182 = getelementptr [11 x i8], [11 x i8]* %sp182, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.182 = load [2 x i8], [2 x i8]* @str.2.182
  %cipher.ptr.700 = alloca [5 x i8]
  store [5 x i8] c"\53\48\41\3d\00", [5 x i8]* %cipher.ptr.700
  %cipher.700 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.700, i32 0, i32 0
  %plain.ptr.700 = tail call i8* @base64_decode(i8* %cipher.700)
  %spi700 = bitcast i8* %plain.ptr.700 to [2 x i8]*
  %s2.182 = load [2 x i8], [2 x i8]* %spi700
;-------------------------------
  %sp2.182 = bitcast i8* %next1.182 to [2 x i8]*
  store [2 x i8] %s2.182, [2 x i8]* %sp2.182
  %next2.182 = getelementptr [11 x i8], [11 x i8]* %sp182, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.182 = load [1 x i8], [1 x i8]* @str.3.182
  %cipher.ptr.701 = alloca [5 x i8]
  store [5 x i8] c"\63\51\3d\3d\00", [5 x i8]* %cipher.ptr.701
  %cipher.701 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.701, i32 0, i32 0
  %plain.ptr.701 = tail call i8* @base64_decode(i8* %cipher.701)
  %spi701 = bitcast i8* %plain.ptr.701 to [1 x i8]*
  %s3.182 = load [1 x i8], [1 x i8]* %spi701
;-------------------------------
  %sp3.182 = bitcast i8* %next2.182 to [1 x i8]*
  store [1 x i8] %s3.182, [1 x i8]* %sp3.182
  %next3.182 = getelementptr [11 x i8], [11 x i8]* %sp182, i32 0, i32 5
  
;-------------------------------
; Replace: %s4.182 = load [1 x i8], [1 x i8]* @str.4.182
  %cipher.ptr.699 = alloca [5 x i8]
  store [5 x i8] c"\4f\41\3d\3d\00", [5 x i8]* %cipher.ptr.699
  %cipher.699 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.699, i32 0, i32 0
  %plain.ptr.699 = tail call i8* @base64_decode(i8* %cipher.699)
  %spi699 = bitcast i8* %plain.ptr.699 to [1 x i8]*
  %s4.182 = load [1 x i8], [1 x i8]* %spi699
;-------------------------------
  %sp4.182 = bitcast i8* %next3.182 to [1 x i8]*
  store [1 x i8] %s4.182, [1 x i8]* %sp4.182
  %next4.182 = getelementptr [11 x i8], [11 x i8]* %sp182, i32 0, i32 6
  
;-------------------------------
; Replace: %s5.182 = load [2 x i8], [2 x i8]* @str.5.182
  %cipher.ptr.703 = alloca [5 x i8]
  store [5 x i8] c"\61\57\63\3d\00", [5 x i8]* %cipher.ptr.703
  %cipher.703 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.703, i32 0, i32 0
  %plain.ptr.703 = tail call i8* @base64_decode(i8* %cipher.703)
  %spi703 = bitcast i8* %plain.ptr.703 to [2 x i8]*
  %s5.182 = load [2 x i8], [2 x i8]* %spi703
;-------------------------------
  %sp5.182 = bitcast i8* %next4.182 to [2 x i8]*
  store [2 x i8] %s5.182, [2 x i8]* %sp5.182
  %next5.182 = getelementptr [11 x i8], [11 x i8]* %sp182, i32 0, i32 8
  
;-------------------------------
; Replace: %s6.182 = load [1 x i8], [1 x i8]* @str.6.182
  %cipher.ptr.697 = alloca [5 x i8]
  store [5 x i8] c"\56\67\3d\3d\00", [5 x i8]* %cipher.ptr.697
  %cipher.697 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.697, i32 0, i32 0
  %plain.ptr.697 = tail call i8* @base64_decode(i8* %cipher.697)
  %spi697 = bitcast i8* %plain.ptr.697 to [1 x i8]*
  %s6.182 = load [1 x i8], [1 x i8]* %spi697
;-------------------------------
  %sp6.182 = bitcast i8* %next5.182 to [1 x i8]*
  store [1 x i8] %s6.182, [1 x i8]* %sp6.182
  %next6.182 = getelementptr [11 x i8], [11 x i8]* %sp182, i32 0, i32 9
  
;-------------------------------
; Replace: %s7.182 = load [2 x i8], [2 x i8]* @str.7.182
  %cipher.ptr.696 = alloca [5 x i8]
  store [5 x i8] c"\53\47\38\3d\00", [5 x i8]* %cipher.ptr.696
  %cipher.696 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.696, i32 0, i32 0
  %plain.ptr.696 = tail call i8* @base64_decode(i8* %cipher.696)
  %spi696 = bitcast i8* %plain.ptr.696 to [2 x i8]*
  %s7.182 = load [2 x i8], [2 x i8]* %spi696
;-------------------------------
  %sp7.182 = bitcast i8* %next6.182 to [2 x i8]*
  store [2 x i8] %s7.182, [2 x i8]* %sp7.182

  %spi182 = load [11 x i8], [11 x i8]* %sp182
  store [11 x i8] %spi182, [11 x i8]* %sp1.52
;-------------------------------
  %sp1.1.52 = bitcast [11 x i8]* %sp1.52 to i88*
  %i1.52 = load i88, i88* %sp1.1.52

  %xp52 = xor i88 %i0.52, %i1.52

  %fi.52 = alloca i88
  store i88 %xp52, i88* %fi.52

  %spi52 = bitcast i88* %fi.52 to [11 x i8]*
  %spi.bis.257 = ptrtoint[11 x i8]* %spi52 to i32
;-------------------------------
  store i32 %spi.bis.257, i32* %22, align 16
  store i32 134517333, i32* %23, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v17.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !133
  ret void
}
define internal fastcc void @delete_substring49(i32 %arg_esp) unnamed_addr  norecurse  !retregs !118 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i32.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i36.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i36.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i37.i = add i32 %tmp0_v.i3.i, -50
  %10 = inttoptr i32 %tmp2_v3.i37.i to i32*
  store i32 1702125896, i32* %10, align 4
  %tmp2_v4.i38.i = add i32 %tmp0_v.i3.i, -46
  %11 = inttoptr i32 %tmp2_v4.i38.i to i32*
  store i32 1701344288, i32* %11, align 4
  %tmp2_v5.i39.i = add i32 %tmp0_v.i3.i, -42
  %12 = inttoptr i32 %tmp2_v5.i39.i to i32*
  store i32 1852404512, i32* %12, align 4
  %tmp2_v6.i40.i = add i32 %tmp0_v.i3.i, -38
  %13 = inttoptr i32 %tmp2_v6.i40.i to i32*
  store i32 1869357100, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -34
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1948280182, i32* %14, align 4
  %tmp2_v8.i41.i = add i32 %tmp0_v.i3.i, -30
  %15 = inttoptr i32 %tmp2_v8.i41.i to i32*
  store i32 1931502952, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -26
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1701736041, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i3.i, -22
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 114, i16* %17, align 2
  %tmp2_v13.i.i = add i32 %tmp0_v.i3.i, -76
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i37.i, i32* %18, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i3.i, -80
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
;-------------------------------
; Replace: %spi.bis.47 = ptrtoint[12 x i8]* @str.bis.47 to i32
  %sp0.55 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\0C\36\01\28\3F\13\73\43\63\47\33\54", [12 x i8]* %sp0.55
  %sp183 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.183 = load [1 x i8], [1 x i8]* @str.0.183
  %cipher.ptr.709 = alloca [5 x i8]
  store [5 x i8] c"\44\41\3d\3d\00", [5 x i8]* %cipher.ptr.709
  %cipher.709 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.709, i32 0, i32 0
  %plain.ptr.709 = tail call i8* @base64_decode(i8* %cipher.709)
  %spi709 = bitcast i8* %plain.ptr.709 to [1 x i8]*
  %s0.183 = load [1 x i8], [1 x i8]* %spi709
;-------------------------------
  %sp0.183 = bitcast [12 x i8]* %sp183 to [1 x i8]*
  store [1 x i8] %s0.183, [1 x i8]* %sp0.183
  %next0.183 = getelementptr [12 x i8], [12 x i8]* %sp183, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.183 = load [2 x i8], [2 x i8]* @str.1.183
  %cipher.ptr.710 = alloca [5 x i8]
  store [5 x i8] c"\4e\67\45\3d\00", [5 x i8]* %cipher.ptr.710
  %cipher.710 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.710, i32 0, i32 0
  %plain.ptr.710 = tail call i8* @base64_decode(i8* %cipher.710)
  %spi710 = bitcast i8* %plain.ptr.710 to [2 x i8]*
  %s1.183 = load [2 x i8], [2 x i8]* %spi710
;-------------------------------
  %sp1.183 = bitcast i8* %next0.183 to [2 x i8]*
  store [2 x i8] %s1.183, [2 x i8]* %sp1.183
  %next1.183 = getelementptr [12 x i8], [12 x i8]* %sp183, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.183 = load [1 x i8], [1 x i8]* @str.2.183
  %cipher.ptr.704 = alloca [5 x i8]
  store [5 x i8] c"\4b\41\3d\3d\00", [5 x i8]* %cipher.ptr.704
  %cipher.704 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.704, i32 0, i32 0
  %plain.ptr.704 = tail call i8* @base64_decode(i8* %cipher.704)
  %spi704 = bitcast i8* %plain.ptr.704 to [1 x i8]*
  %s2.183 = load [1 x i8], [1 x i8]* %spi704
;-------------------------------
  %sp2.183 = bitcast i8* %next1.183 to [1 x i8]*
  store [1 x i8] %s2.183, [1 x i8]* %sp2.183
  %next2.183 = getelementptr [12 x i8], [12 x i8]* %sp183, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.183 = load [2 x i8], [2 x i8]* @str.3.183
  %cipher.ptr.705 = alloca [5 x i8]
  store [5 x i8] c"\50\78\4d\3d\00", [5 x i8]* %cipher.ptr.705
  %cipher.705 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.705, i32 0, i32 0
  %plain.ptr.705 = tail call i8* @base64_decode(i8* %cipher.705)
  %spi705 = bitcast i8* %plain.ptr.705 to [2 x i8]*
  %s3.183 = load [2 x i8], [2 x i8]* %spi705
;-------------------------------
  %sp3.183 = bitcast i8* %next2.183 to [2 x i8]*
  store [2 x i8] %s3.183, [2 x i8]* %sp3.183
  %next3.183 = getelementptr [12 x i8], [12 x i8]* %sp183, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.183 = load [1 x i8], [1 x i8]* @str.4.183
  %cipher.ptr.706 = alloca [5 x i8]
  store [5 x i8] c"\63\77\3d\3d\00", [5 x i8]* %cipher.ptr.706
  %cipher.706 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.706, i32 0, i32 0
  %plain.ptr.706 = tail call i8* @base64_decode(i8* %cipher.706)
  %spi706 = bitcast i8* %plain.ptr.706 to [1 x i8]*
  %s4.183 = load [1 x i8], [1 x i8]* %spi706
;-------------------------------
  %sp4.183 = bitcast i8* %next3.183 to [1 x i8]*
  store [1 x i8] %s4.183, [1 x i8]* %sp4.183
  %next4.183 = getelementptr [12 x i8], [12 x i8]* %sp183, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.183 = load [2 x i8], [2 x i8]* @str.5.183
  %cipher.ptr.711 = alloca [5 x i8]
  store [5 x i8] c"\51\32\4d\3d\00", [5 x i8]* %cipher.ptr.711
  %cipher.711 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.711, i32 0, i32 0
  %plain.ptr.711 = tail call i8* @base64_decode(i8* %cipher.711)
  %spi711 = bitcast i8* %plain.ptr.711 to [2 x i8]*
  %s5.183 = load [2 x i8], [2 x i8]* %spi711
;-------------------------------
  %sp5.183 = bitcast i8* %next4.183 to [2 x i8]*
  store [2 x i8] %s5.183, [2 x i8]* %sp5.183
  %next5.183 = getelementptr [12 x i8], [12 x i8]* %sp183, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.183 = load [1 x i8], [1 x i8]* @str.6.183
  %cipher.ptr.708 = alloca [5 x i8]
  store [5 x i8] c"\52\77\3d\3d\00", [5 x i8]* %cipher.ptr.708
  %cipher.708 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.708, i32 0, i32 0
  %plain.ptr.708 = tail call i8* @base64_decode(i8* %cipher.708)
  %spi708 = bitcast i8* %plain.ptr.708 to [1 x i8]*
  %s6.183 = load [1 x i8], [1 x i8]* %spi708
;-------------------------------
  %sp6.183 = bitcast i8* %next5.183 to [1 x i8]*
  store [1 x i8] %s6.183, [1 x i8]* %sp6.183
  %next6.183 = getelementptr [12 x i8], [12 x i8]* %sp183, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.183 = load [2 x i8], [2 x i8]* @str.7.183
  %cipher.ptr.707 = alloca [5 x i8]
  store [5 x i8] c"\4d\31\51\3d\00", [5 x i8]* %cipher.ptr.707
  %cipher.707 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.707, i32 0, i32 0
  %plain.ptr.707 = tail call i8* @base64_decode(i8* %cipher.707)
  %spi707 = bitcast i8* %plain.ptr.707 to [2 x i8]*
  %s7.183 = load [2 x i8], [2 x i8]* %spi707
;-------------------------------
  %sp7.183 = bitcast i8* %next6.183 to [2 x i8]*
  store [2 x i8] %s7.183, [2 x i8]* %sp7.183

  %spi183 = load [12 x i8], [12 x i8]* %sp183
  store [12 x i8] %spi183, [12 x i8]* %sp0.55
;-------------------------------
  %sp0.1.55 = bitcast [12 x i8]* %sp0.55 to i96*
  %i0.55 = load i96, i96* %sp0.1.55

  %sp1.55 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\4e\53\67\47\4d\76\49\63\46\34\39\54", [12 x i8]* %sp1.55
  %sp184 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.184 = load [1 x i8], [1 x i8]* @str.0.184
  %cipher.ptr.714 = alloca [5 x i8]
  store [5 x i8] c"\54\67\3d\3d\00", [5 x i8]* %cipher.ptr.714
  %cipher.714 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.714, i32 0, i32 0
  %plain.ptr.714 = tail call i8* @base64_decode(i8* %cipher.714)
  %spi714 = bitcast i8* %plain.ptr.714 to [1 x i8]*
  %s0.184 = load [1 x i8], [1 x i8]* %spi714
;-------------------------------
  %sp0.184 = bitcast [12 x i8]* %sp184 to [1 x i8]*
  store [1 x i8] %s0.184, [1 x i8]* %sp0.184
  %next0.184 = getelementptr [12 x i8], [12 x i8]* %sp184, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.184 = load [2 x i8], [2 x i8]* @str.1.184
  %cipher.ptr.712 = alloca [5 x i8]
  store [5 x i8] c"\55\32\63\3d\00", [5 x i8]* %cipher.ptr.712
  %cipher.712 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.712, i32 0, i32 0
  %plain.ptr.712 = tail call i8* @base64_decode(i8* %cipher.712)
  %spi712 = bitcast i8* %plain.ptr.712 to [2 x i8]*
  %s1.184 = load [2 x i8], [2 x i8]* %spi712
;-------------------------------
  %sp1.184 = bitcast i8* %next0.184 to [2 x i8]*
  store [2 x i8] %s1.184, [2 x i8]* %sp1.184
  %next1.184 = getelementptr [12 x i8], [12 x i8]* %sp184, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.184 = load [1 x i8], [1 x i8]* @str.2.184
  %cipher.ptr.715 = alloca [5 x i8]
  store [5 x i8] c"\52\77\3d\3d\00", [5 x i8]* %cipher.ptr.715
  %cipher.715 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.715, i32 0, i32 0
  %plain.ptr.715 = tail call i8* @base64_decode(i8* %cipher.715)
  %spi715 = bitcast i8* %plain.ptr.715 to [1 x i8]*
  %s2.184 = load [1 x i8], [1 x i8]* %spi715
;-------------------------------
  %sp2.184 = bitcast i8* %next1.184 to [1 x i8]*
  store [1 x i8] %s2.184, [1 x i8]* %sp2.184
  %next2.184 = getelementptr [12 x i8], [12 x i8]* %sp184, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.184 = load [2 x i8], [2 x i8]* @str.3.184
  %cipher.ptr.717 = alloca [5 x i8]
  store [5 x i8] c"\54\58\59\3d\00", [5 x i8]* %cipher.ptr.717
  %cipher.717 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.717, i32 0, i32 0
  %plain.ptr.717 = tail call i8* @base64_decode(i8* %cipher.717)
  %spi717 = bitcast i8* %plain.ptr.717 to [2 x i8]*
  %s3.184 = load [2 x i8], [2 x i8]* %spi717
;-------------------------------
  %sp3.184 = bitcast i8* %next2.184 to [2 x i8]*
  store [2 x i8] %s3.184, [2 x i8]* %sp3.184
  %next3.184 = getelementptr [12 x i8], [12 x i8]* %sp184, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.184 = load [1 x i8], [1 x i8]* @str.4.184
  %cipher.ptr.716 = alloca [5 x i8]
  store [5 x i8] c"\53\51\3d\3d\00", [5 x i8]* %cipher.ptr.716
  %cipher.716 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.716, i32 0, i32 0
  %plain.ptr.716 = tail call i8* @base64_decode(i8* %cipher.716)
  %spi716 = bitcast i8* %plain.ptr.716 to [1 x i8]*
  %s4.184 = load [1 x i8], [1 x i8]* %spi716
;-------------------------------
  %sp4.184 = bitcast i8* %next3.184 to [1 x i8]*
  store [1 x i8] %s4.184, [1 x i8]* %sp4.184
  %next4.184 = getelementptr [12 x i8], [12 x i8]* %sp184, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.184 = load [2 x i8], [2 x i8]* @str.5.184
  %cipher.ptr.719 = alloca [5 x i8]
  store [5 x i8] c"\59\30\59\3d\00", [5 x i8]* %cipher.ptr.719
  %cipher.719 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.719, i32 0, i32 0
  %plain.ptr.719 = tail call i8* @base64_decode(i8* %cipher.719)
  %spi719 = bitcast i8* %plain.ptr.719 to [2 x i8]*
  %s5.184 = load [2 x i8], [2 x i8]* %spi719
;-------------------------------
  %sp5.184 = bitcast i8* %next4.184 to [2 x i8]*
  store [2 x i8] %s5.184, [2 x i8]* %sp5.184
  %next5.184 = getelementptr [12 x i8], [12 x i8]* %sp184, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.184 = load [1 x i8], [1 x i8]* @str.6.184
  %cipher.ptr.718 = alloca [5 x i8]
  store [5 x i8] c"\4e\41\3d\3d\00", [5 x i8]* %cipher.ptr.718
  %cipher.718 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.718, i32 0, i32 0
  %plain.ptr.718 = tail call i8* @base64_decode(i8* %cipher.718)
  %spi718 = bitcast i8* %plain.ptr.718 to [1 x i8]*
  %s6.184 = load [1 x i8], [1 x i8]* %spi718
;-------------------------------
  %sp6.184 = bitcast i8* %next5.184 to [1 x i8]*
  store [1 x i8] %s6.184, [1 x i8]* %sp6.184
  %next6.184 = getelementptr [12 x i8], [12 x i8]* %sp184, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.184 = load [2 x i8], [2 x i8]* @str.7.184
  %cipher.ptr.713 = alloca [5 x i8]
  store [5 x i8] c"\4f\56\51\3d\00", [5 x i8]* %cipher.ptr.713
  %cipher.713 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.713, i32 0, i32 0
  %plain.ptr.713 = tail call i8* @base64_decode(i8* %cipher.713)
  %spi713 = bitcast i8* %plain.ptr.713 to [2 x i8]*
  %s7.184 = load [2 x i8], [2 x i8]* %spi713
;-------------------------------
  %sp7.184 = bitcast i8* %next6.184 to [2 x i8]*
  store [2 x i8] %s7.184, [2 x i8]* %sp7.184

  %spi184 = load [12 x i8], [12 x i8]* %sp184
  store [12 x i8] %spi184, [12 x i8]* %sp1.55
;-------------------------------
  %sp1.1.55 = bitcast [12 x i8]* %sp1.55 to i96*
  %i1.55 = load i96, i96* %sp1.1.55

  %xp55 = xor i96 %i0.55, %i1.55

  %fi.55 = alloca i96
  store i96 %xp55, i96* %fi.55

  %spi55 = bitcast i96* %fi.55 to [12 x i8]*
  %spi.bis.47 = ptrtoint[12 x i8]* %spi55 to i32
;-------------------------------
  store i32 %spi.bis.47, i32* %19, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i3.i, -84
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517356, i32* %20, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !119
;-------------------------------
; Replace: %spi.bis.46 = ptrtoint[5 x i8]* @str.bis.46 to i32
  %sp0.54 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\01\02\56\62\35", [5 x i8]* %sp0.54
  %sp185 = alloca [5 x i8]
  
;-------------------------------
; Replace: %s0.185 = load [1 x i8], [1 x i8]* @str.0.185
  %cipher.ptr.721 = alloca [5 x i8]
  store [5 x i8] c"\41\51\3d\3d\00", [5 x i8]* %cipher.ptr.721
  %cipher.721 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.721, i32 0, i32 0
  %plain.ptr.721 = tail call i8* @base64_decode(i8* %cipher.721)
  %spi721 = bitcast i8* %plain.ptr.721 to [1 x i8]*
  %s0.185 = load [1 x i8], [1 x i8]* %spi721
;-------------------------------
  %sp0.185 = bitcast [5 x i8]* %sp185 to [1 x i8]*
  store [1 x i8] %s0.185, [1 x i8]* %sp0.185
  %next0.185 = getelementptr [5 x i8], [5 x i8]* %sp185, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.185 = load [1 x i8], [1 x i8]* @str.1.185
  %cipher.ptr.724 = alloca [5 x i8]
  store [5 x i8] c"\41\67\3d\3d\00", [5 x i8]* %cipher.ptr.724
  %cipher.724 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.724, i32 0, i32 0
  %plain.ptr.724 = tail call i8* @base64_decode(i8* %cipher.724)
  %spi724 = bitcast i8* %plain.ptr.724 to [1 x i8]*
  %s1.185 = load [1 x i8], [1 x i8]* %spi724
;-------------------------------
  %sp1.185 = bitcast i8* %next0.185 to [1 x i8]*
  store [1 x i8] %s1.185, [1 x i8]* %sp1.185
  %next1.185 = getelementptr [5 x i8], [5 x i8]* %sp185, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.185 = load [1 x i8], [1 x i8]* @str.2.185
  %cipher.ptr.723 = alloca [5 x i8]
  store [5 x i8] c"\56\67\3d\3d\00", [5 x i8]* %cipher.ptr.723
  %cipher.723 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.723, i32 0, i32 0
  %plain.ptr.723 = tail call i8* @base64_decode(i8* %cipher.723)
  %spi723 = bitcast i8* %plain.ptr.723 to [1 x i8]*
  %s2.185 = load [1 x i8], [1 x i8]* %spi723
;-------------------------------
  %sp2.185 = bitcast i8* %next1.185 to [1 x i8]*
  store [1 x i8] %s2.185, [1 x i8]* %sp2.185
  %next2.185 = getelementptr [5 x i8], [5 x i8]* %sp185, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.185 = load [1 x i8], [1 x i8]* @str.3.185
  %cipher.ptr.720 = alloca [5 x i8]
  store [5 x i8] c"\59\67\3d\3d\00", [5 x i8]* %cipher.ptr.720
  %cipher.720 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.720, i32 0, i32 0
  %plain.ptr.720 = tail call i8* @base64_decode(i8* %cipher.720)
  %spi720 = bitcast i8* %plain.ptr.720 to [1 x i8]*
  %s3.185 = load [1 x i8], [1 x i8]* %spi720
;-------------------------------
  %sp3.185 = bitcast i8* %next2.185 to [1 x i8]*
  store [1 x i8] %s3.185, [1 x i8]* %sp3.185
  %next3.185 = getelementptr [5 x i8], [5 x i8]* %sp185, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.185 = load [1 x i8], [1 x i8]* @str.4.185
  %cipher.ptr.722 = alloca [5 x i8]
  store [5 x i8] c"\4e\51\3d\3d\00", [5 x i8]* %cipher.ptr.722
  %cipher.722 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.722, i32 0, i32 0
  %plain.ptr.722 = tail call i8* @base64_decode(i8* %cipher.722)
  %spi722 = bitcast i8* %plain.ptr.722 to [1 x i8]*
  %s4.185 = load [1 x i8], [1 x i8]* %spi722
;-------------------------------
  %sp4.185 = bitcast i8* %next3.185 to [1 x i8]*
  store [1 x i8] %s4.185, [1 x i8]* %sp4.185

  %spi185 = load [5 x i8], [5 x i8]* %sp185
  store [5 x i8] %spi185, [5 x i8]* %sp0.54
;-------------------------------
  %sp0.1.54 = bitcast [5 x i8]* %sp0.54 to i40*
  %i0.54 = load i40, i40* %sp0.1.54

  %sp1.54 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\75\6a\33\42\35", [5 x i8]* %sp1.54
  %sp186 = alloca [5 x i8]
  
;-------------------------------
; Replace: %s0.186 = load [1 x i8], [1 x i8]* @str.0.186
  %cipher.ptr.729 = alloca [5 x i8]
  store [5 x i8] c"\64\51\3d\3d\00", [5 x i8]* %cipher.ptr.729
  %cipher.729 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.729, i32 0, i32 0
  %plain.ptr.729 = tail call i8* @base64_decode(i8* %cipher.729)
  %spi729 = bitcast i8* %plain.ptr.729 to [1 x i8]*
  %s0.186 = load [1 x i8], [1 x i8]* %spi729
;-------------------------------
  %sp0.186 = bitcast [5 x i8]* %sp186 to [1 x i8]*
  store [1 x i8] %s0.186, [1 x i8]* %sp0.186
  %next0.186 = getelementptr [5 x i8], [5 x i8]* %sp186, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.186 = load [1 x i8], [1 x i8]* @str.1.186
  %cipher.ptr.726 = alloca [5 x i8]
  store [5 x i8] c"\61\67\3d\3d\00", [5 x i8]* %cipher.ptr.726
  %cipher.726 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.726, i32 0, i32 0
  %plain.ptr.726 = tail call i8* @base64_decode(i8* %cipher.726)
  %spi726 = bitcast i8* %plain.ptr.726 to [1 x i8]*
  %s1.186 = load [1 x i8], [1 x i8]* %spi726
;-------------------------------
  %sp1.186 = bitcast i8* %next0.186 to [1 x i8]*
  store [1 x i8] %s1.186, [1 x i8]* %sp1.186
  %next1.186 = getelementptr [5 x i8], [5 x i8]* %sp186, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.186 = load [1 x i8], [1 x i8]* @str.2.186
  %cipher.ptr.725 = alloca [5 x i8]
  store [5 x i8] c"\4d\77\3d\3d\00", [5 x i8]* %cipher.ptr.725
  %cipher.725 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.725, i32 0, i32 0
  %plain.ptr.725 = tail call i8* @base64_decode(i8* %cipher.725)
  %spi725 = bitcast i8* %plain.ptr.725 to [1 x i8]*
  %s2.186 = load [1 x i8], [1 x i8]* %spi725
;-------------------------------
  %sp2.186 = bitcast i8* %next1.186 to [1 x i8]*
  store [1 x i8] %s2.186, [1 x i8]* %sp2.186
  %next2.186 = getelementptr [5 x i8], [5 x i8]* %sp186, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.186 = load [1 x i8], [1 x i8]* @str.3.186
  %cipher.ptr.727 = alloca [5 x i8]
  store [5 x i8] c"\51\67\3d\3d\00", [5 x i8]* %cipher.ptr.727
  %cipher.727 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.727, i32 0, i32 0
  %plain.ptr.727 = tail call i8* @base64_decode(i8* %cipher.727)
  %spi727 = bitcast i8* %plain.ptr.727 to [1 x i8]*
  %s3.186 = load [1 x i8], [1 x i8]* %spi727
;-------------------------------
  %sp3.186 = bitcast i8* %next2.186 to [1 x i8]*
  store [1 x i8] %s3.186, [1 x i8]* %sp3.186
  %next3.186 = getelementptr [5 x i8], [5 x i8]* %sp186, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.186 = load [1 x i8], [1 x i8]* @str.4.186
  %cipher.ptr.728 = alloca [5 x i8]
  store [5 x i8] c"\4e\51\3d\3d\00", [5 x i8]* %cipher.ptr.728
  %cipher.728 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.728, i32 0, i32 0
  %plain.ptr.728 = tail call i8* @base64_decode(i8* %cipher.728)
  %spi728 = bitcast i8* %plain.ptr.728 to [1 x i8]*
  %s4.186 = load [1 x i8], [1 x i8]* %spi728
;-------------------------------
  %sp4.186 = bitcast i8* %next3.186 to [1 x i8]*
  store [1 x i8] %s4.186, [1 x i8]* %sp4.186

  %spi186 = load [5 x i8], [5 x i8]* %sp186
  store [5 x i8] %spi186, [5 x i8]* %sp1.54
;-------------------------------
  %sp1.1.54 = bitcast [5 x i8]* %sp1.54 to i40*
  %i1.54 = load i40, i40* %sp1.1.54

  %xp54 = xor i40 %i0.54, %i1.54

  %fi.54 = alloca i40
  store i40 %xp54, i40* %fi.54

  %spi54 = bitcast i40* %fi.54 to [5 x i8]*
  %spi.bis.46 = ptrtoint[5 x i8]* %spi54 to i32
;-------------------------------
  store i32 %spi.bis.46, i32* %18, align 4
  store i32 %tmp2_v3.i37.i, i32* %19, align 16
  store i32 134517378, i32* %20, align 4
  %tmp2_v.i83.i.i = add i32 %tmp0_v.i3.i, -88
  %22 = inttoptr i32 %tmp2_v.i83.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %22, align 8
  %tmp2_v1.i85.i.i = add i32 %tmp0_v.i3.i, -92
  %23 = inttoptr i32 %tmp2_v1.i85.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i88.i.i = add i32 %tmp0_v.i3.i, -116
  %24 = inttoptr i32 %tmp2_v2.i88.i.i to i32*
  store i32 134517451, i32* %24, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i3.i, -112
  %25 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %25, align 16
  %26 = load i32, i32* %19, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i3.i, -128
  %27 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i3.i, -132
  %28 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517475, i32* %28, align 4
  %arg.i.i.i = load i32, i32* %27, align 16
  %29 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i4.i.i = add i32 %tmp0_v.i3.i, -108
  %30 = inttoptr i32 %tmp2_v.i4.i.i to i32*
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %27, align 16
  store i32 134517492, i32* %28, align 4
  %arg.i.i32.i = load i32, i32* %27, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i32.i)
  %tmp2_v.i80.i.i = add i32 %tmp0_v.i3.i, -100
  %33 = inttoptr i32 %tmp2_v.i80.i.i to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %25, align 16
  %35 = load i32, i32* %30, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %BB_80492FC.i.lr.ph.i, label %Func_delete.exit

BB_80492FC.i.lr.ph.i:                             ; preds = %.exit
  %mrv.i30.i = insertvalue { i32, i32 } undef, i32 %tmp2_v4.i.i.i, 0
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i3.i, -104
  %37 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  br label %BB_80492FC.i.i

BB_804931F.i.i:                                   ; preds = %BB_80492FC.i.i
  %38 = load i32, i32* %33, align 4
  %39 = load i32, i32* %30, align 4
  %tmp0_v3.i12.i.i = sub i32 %39, %38
  store i32 %tmp0_v3.i12.i.i, i32* %30, align 4
  %40 = load i32, i32* %25, align 16
  store i32 %40, i32* %37, align 8
  %41 = load i32, i32* %30, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %BB_804932D.i.i, label %BB_804935B.i.backedge.i

BB_804932D.i.i:                                   ; preds = %BB_804932D.i.i, %BB_804931F.i.i
  %storemerge37.i = phi i32 [ %tmp0_v15.i.i.i, %BB_804932D.i.i ], [ %40, %BB_804931F.i.i ]
  %43 = load i32, i32* %33, align 4
  %44 = load i32, i32* %19, align 16
  %tmp0_v3.i38.i.i = add i32 %44, %storemerge37.i
  %tmp0_v6.i41.i.i = add i32 %tmp0_v3.i38.i.i, %43
  %45 = inttoptr i32 %tmp0_v6.i41.i.i to i8*
  %46 = load i8, i8* %45, align 1
  %47 = inttoptr i32 %tmp0_v3.i38.i.i to i8*
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %37, align 8
  %tmp0_v15.i.i.i = add i32 %48, 1
  store i32 %tmp0_v15.i.i.i, i32* %37, align 8
  %49 = load i32, i32* %30, align 4
  %50 = icmp slt i32 %tmp0_v15.i.i.i, %49
  br i1 %50, label %BB_804932D.i.i, label %BB_804935B.i.backedge.i

BB_80492FC.i.i:                                   ; preds = %BB_804935B.i.backedge.i, %BB_80492FC.i.lr.ph.i
  %51 = phi i32 [ %34, %BB_80492FC.i.lr.ph.i ], [ %61, %BB_804935B.i.backedge.i ]
  %r_esp.0.in40.i = phi i32 [ %tmp2_v4.i.i.i, %BB_80492FC.i.lr.ph.i ], [ %r_esp.0.in.i, %BB_804935B.i.backedge.i ]
  %mrv.i30.pn.i = phi { i32, i32 } [ %mrv.i30.i, %BB_80492FC.i.lr.ph.i ], [ %.pn39.i, %BB_804935B.i.backedge.i ]
  %.pn43.i = phi i32 [ %32, %BB_80492FC.i.lr.ph.i ], [ %57, %BB_804935B.i.backedge.i ]
  %.pn39.i = insertvalue { i32, i32 } %mrv.i30.pn.i, i32 %.pn43.i, 1
  %52 = load i32, i32* %19, align 16
  %tmp0_v3.i60.i.i = add i32 %52, %51
  %53 = load i32, i32* %18, align 4
  %tmp2_v7.i65.i.i = add i32 %r_esp.0.in40.i, 4
  %54 = inttoptr i32 %tmp2_v7.i65.i.i to i32*
  store i32 %53, i32* %54, align 4
  %55 = inttoptr i32 %r_esp.0.in40.i to i32*
  store i32 %tmp0_v3.i60.i.i, i32* %55, align 4
  %tmp2_v9.i66.i.i = add i32 %r_esp.0.in40.i, -4
  %56 = inttoptr i32 %tmp2_v9.i66.i.i to i32*
  store i32 134517520, i32* %56, align 4
  %arg.i.i34.i = load i32, i32* %55, align 4
  %arg2.i.i.i = load i32, i32* %54, align 4
  %57 = tail call i32 @strstr(i32 %arg.i.i34.i, i32 %arg2.i.i.i)
  %58 = load i32, i32* %25, align 16
  %59 = load i32, i32* %19, align 16
  %tmp0_v4.i.i.i = add i32 %59, %58
  %.not.i.i.i = icmp eq i32 %57, %tmp0_v4.i.i.i
  br i1 %.not.i.i.i, label %BB_804931F.i.i, label %BB_8049357.i.i

BB_8049357.i.i:                                   ; preds = %BB_80492FC.i.i
  %tmp0_v1.i70.i.i = add i32 %58, 1
  store i32 %tmp0_v1.i70.i.i, i32* %25, align 16
  %.pre.i = load i32, i32* %30, align 4
  br label %BB_804935B.i.backedge.i

BB_804935B.i.backedge.i:                          ; preds = %BB_8049357.i.i, %BB_804932D.i.i, %BB_804931F.i.i
  %60 = phi i32 [ %.pre.i, %BB_8049357.i.i ], [ %41, %BB_804931F.i.i ], [ %49, %BB_804932D.i.i ]
  %r_ecx.1.be.i = phi i32 [ %58, %BB_8049357.i.i ], [ %58, %BB_804931F.i.i ], [ %storemerge37.i, %BB_804932D.i.i ]
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i30.pn.i, 0
  %61 = load i32, i32* %25, align 16
  %62 = icmp slt i32 %61, %60
  br i1 %62, label %BB_80492FC.i.i, label %Func_delete.exit

Func_delete.exit:                                 ; preds = %BB_804935B.i.backedge.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i2.i, %.exit ], [ %r_ecx.1.be.i, %BB_804935B.i.backedge.i ]
  %.lcssa.i = phi i32 [ %34, %.exit ], [ %61, %BB_804935B.i.backedge.i ]
  %63 = load i32, i32* %19, align 16
  %tmp0_v3.i19.i.i = add i32 %63, %.lcssa.i
  %64 = inttoptr i32 %tmp0_v3.i19.i.i to i8*
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %22, align 8
  %tmp2_v.i18.i = add i32 %66, -42
  store i32 %tmp2_v.i18.i, i32* %18, align 4
  %tmp2_v3.i21.i = add i32 %65, -8167
  store i32 %tmp2_v3.i21.i, i32* %19, align 16
  store i32 134517400, i32* %20, align 4
  %67 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %.lcssa.i, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !119
  ret void
}
define internal fastcc void @smallest_word_print882(i32 %arg_esp) unnamed_addr  norecurse  !retregs !105 {
.exit:
  %tmp2_v.i22.i = add i32 %arg_esp, 4
  %tmp0_v.i23.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i25.i = add i32 %tmp0_v.i23.i, -4
  %2 = inttoptr i32 %tmp2_v3.i25.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i26.i = add i32 %tmp0_v.i23.i, -8
  %3 = inttoptr i32 %tmp2_v4.i26.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i28.i = add i32 %tmp0_v.i23.i, -12
  %4 = inttoptr i32 %tmp2_v5.i28.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i30.i = add i32 %tmp0_v.i23.i, -16
  %5 = inttoptr i32 %tmp2_v6.i30.i to i32*
  store i32 %tmp2_v.i22.i, i32* %5, align 16
  %tmp2_v8.i31.i = add i32 %tmp0_v.i23.i, -68
  %6 = inttoptr i32 %tmp2_v8.i31.i to i32*
  store i32 134517361, i32* %6, align 4
  %tmp4_v.i2.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i23.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i23.i, -51
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1702043713, i32* %10, align 4
  %tmp2_v4.i6.i = add i32 %tmp0_v.i23.i, -47
  %11 = inttoptr i32 %tmp2_v4.i6.i to i32*
  store i32 1852142702, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i23.i, -43
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1998611811, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i23.i, -39
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 543716457, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i23.i, -35
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1702258035, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i23.i, -31
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 543973746, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i23.i, -27
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1685221239, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i23.i, -23
  %17 = inttoptr i32 %tmp2_v10.i.i to i16*
  store i16 11891, i16* %17, align 2
  %tmp2_v11.i.i = add i32 %tmp0_v.i23.i, -21
  %18 = inttoptr i32 %tmp2_v11.i.i to i8*
  store i8 0, i8* %18, align 1
  %tmp2_v14.i.i = add i32 %tmp0_v.i23.i, -80
  %19 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %19, align 16
  %tmp2_v15.i.i = add i32 %tmp0_v.i23.i, -84
  %20 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 134517449, i32* %20, align 4
  %tmp2_v.i158.i.i = add i32 %tmp0_v.i23.i, -88
  %21 = inttoptr i32 %tmp2_v.i158.i.i to i32*
  store i32 %tmp2_v4.i26.i, i32* %21, align 8
  %tmp2_v1.i160.i.i = add i32 %tmp0_v.i23.i, -92
  %22 = inttoptr i32 %tmp2_v1.i160.i.i to i32*
  store i32 134529024, i32* %22, align 4
  %tmp2_v2.i163.i.i = add i32 %tmp0_v.i23.i, -660
  %23 = inttoptr i32 %tmp2_v2.i163.i.i to i32*
  store i32 134517534, i32* %23, align 4
  %24 = load i32, i32* %19, align 16
  %tmp2_v2.i101.i.i = add i32 %tmp0_v.i23.i, -644
  %25 = inttoptr i32 %tmp2_v2.i101.i.i to i32*
  store i32 %24, i32* %25, align 4
  %tmp4_v.i102.i.b.i = load i1, i1* @segs.0, align 1
  %26 = inttoptr i32 %arg_esp to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v5.i105.i.i = add i32 %tmp0_v.i23.i, -100
  %28 = inttoptr i32 %tmp2_v5.i105.i.i to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %25, align 4
  %tmp2_v9.i110.i.i = add i32 %tmp0_v.i23.i, -672
  %30 = inttoptr i32 %tmp2_v9.i110.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v10.i111.i.i = add i32 %tmp0_v.i23.i, -676
  %31 = inttoptr i32 %tmp2_v10.i111.i.i to i32*
  store i32 134517574, i32* %31, align 4
  %arg.i.i.i = load i32, i32* %30, align 16
  %32 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i38.i.i = add i32 %tmp0_v.i23.i, -628
  %33 = inttoptr i32 %tmp2_v.i38.i.i to i32*
  store i32 %32, i32* %33, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i23.i, -640
  %34 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 0, i32* %34, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i23.i, -636
  %35 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 -1, i32* %35, align 4
  %tmp2_v2.i3.i.i = add i32 %tmp0_v.i23.i, -619
  %36 = inttoptr i32 %tmp2_v2.i3.i.i to i32*
  store i32 992751136, i32* %36, align 4
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i23.i, -615
  %37 = inttoptr i32 %tmp2_v3.i.i.i to i16*
  store i16 2314, i16* %37, align 2
  %tmp2_v4.i4.i.i = add i32 %tmp0_v.i23.i, -613
  %38 = inttoptr i32 %tmp2_v4.i4.i.i to i8*
  store i8 0, i8* %38, align 1
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i23.i, -632
  %39 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %33, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %BB_8049405.i.preheader.lr.ph.i, label %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i

Func_8049346.exit.i.BB_80494B9.i_crit_edge.i:     ; preds = %.exit
  %.pre79.i = add i32 %tmp0_v.i23.i, -356
  %.pre80.i = add i32 %tmp0_v.i23.i, -668
  %.pre81.i = inttoptr i32 %.pre80.i to i32*
  br label %Func_smallest_word.exit

BB_8049405.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i95.i.i = add i32 %tmp0_v.i23.i, -668
  %42 = inttoptr i32 %tmp2_v7.i95.i.i to i32*
  %tmp2_v5.i73.i.i = add i32 %tmp0_v.i23.i, -612
  %tmp2_v5.i60.i.i = add i32 %tmp0_v.i23.i, -356
  br label %BB_8049405.i.preheader.i

BB_8049492.i.i:                                   ; preds = %BB_8049465.i.i
  %tmp0_v1.i8.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i8.i.i, i32* %39, align 8
  %43 = load i32, i32* %33, align 4
  %44 = icmp slt i32 %tmp0_v1.i8.i.i, %43
  br i1 %44, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

BB_804943E.i.i:                                   ; preds = %BB_8049415.i.i
  %45 = load i32, i32* %34, align 16
  store i32 %45, i32* %35, align 4
  store i32 %tmp2_v5.i73.i.i, i32* %42, align 4
  store i32 %tmp2_v5.i60.i.i, i32* %30, align 16
  store i32 134517856, i32* %31, align 4
  %arg.i.i55.i = load i32, i32* %30, align 16
  %arg2.i.i56.i = load i32, i32* %42, align 4
  %46 = tail call i32 @strcpy(i32 %arg.i.i55.i, i32 %arg2.i.i56.i)
  br label %BB_8049499.i.preheader.i

BB_80493D6.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %47 = load i32, i32* %39, align 8
  %48 = load i32, i32* %25, align 4
  %tmp0_v3.i72.i.i = add i32 %48, %47
  %49 = inttoptr i32 %tmp0_v3.i72.i.i to i8*
  %50 = load i8, i8* %49, align 1
  %51 = load i32, i32* %34, align 16
  %tmp0_v8.i.i.i = add i32 %51, %tmp2_v5.i73.i.i
  %52 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %39, align 8
  %tmp0_v11.i.i.i = add i32 %53, 1
  store i32 %tmp0_v11.i.i.i, i32* %39, align 8
  %54 = load i32, i32* %34, align 16
  %tmp0_v14.i.i.i = add i32 %54, 1
  store i32 %tmp0_v14.i.i.i, i32* %34, align 16
  %55 = load i32, i32* %39, align 8
  %56 = load i32, i32* %25, align 4
  %tmp0_v3.i91.i.i = add i32 %56, %55
  %57 = inttoptr i32 %tmp0_v3.i91.i.i to i8*
  %58 = load i8, i8* %57, align 1
  %tmp0_v5.i93.i.i = sext i8 %58 to i32
  store i32 %tmp0_v5.i93.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i52.i = load i32, i32* %30, align 16
  %arg2.i.i.i = load i32, i32* %42, align 4
  %59 = tail call i32 @strchr(i32 %arg.i.i52.i, i32 %arg2.i.i.i)
  %.not.i31.i.i = icmp eq i32 %59, 0
  br i1 %.not.i31.i.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049465.i.i:                                   ; preds = %BB_8049499.i.preheader.i, %BB_8049492.i.i
  %60 = phi i32 [ %tmp0_v1.i8.i.i, %BB_8049492.i.i ], [ %76, %BB_8049499.i.preheader.i ]
  %61 = load i32, i32* %25, align 4
  %tmp0_v3.i117.i.i = add i32 %61, %60
  %62 = inttoptr i32 %tmp0_v3.i117.i.i to i8*
  %63 = load i8, i8* %62, align 1
  %tmp0_v5.i119.i.i = sext i8 %63 to i32
  store i32 %tmp0_v5.i119.i.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517897, i32* %31, align 4
  %arg.i.i62.i = load i32, i32* %30, align 16
  %arg2.i.i63.i = load i32, i32* %42, align 4
  %64 = tail call i32 @strchr(i32 %arg.i.i62.i, i32 %arg2.i.i63.i)
  %.not.i65.i.i = icmp eq i32 %64, 0
  %.pre.pre.i = load i32, i32* %39, align 8
  br i1 %.not.i65.i.i, label %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, label %BB_8049492.i.i

BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_8049465.i.i
  %.pre76.pre.i = load i32, i32* %33, align 4
  br label %BB_80494A7.i.loopexit.i

BB_80494A7.i.loopexit.i:                          ; preds = %BB_8049499.i.preheader.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i, %BB_8049492.i.i
  %65 = phi i32 [ %77, %BB_8049499.i.preheader.i ], [ %.pre76.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %43, %BB_8049492.i.i ]
  %66 = phi i32 [ %76, %BB_8049499.i.preheader.i ], [ %.pre.pre.i, %BB_8049465.i.BB_80494A7.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i8.i.i, %BB_8049492.i.i ]
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %BB_8049405.i.preheader.i, label %Func_smallest_word.exit

BB_8049405.i.preheader.i:                         ; preds = %BB_80494A7.i.loopexit.i, %BB_8049405.i.preheader.lr.ph.i
  store i32 0, i32* %34, align 16
  %68 = load i32, i32* %39, align 8
  %69 = load i32, i32* %25, align 4
  %tmp0_v3.i91.i69.i = add i32 %69, %68
  %70 = inttoptr i32 %tmp0_v3.i91.i69.i to i8*
  %71 = load i8, i8* %70, align 1
  %tmp0_v5.i93.i70.i = sext i8 %71 to i32
  store i32 %tmp0_v5.i93.i70.i, i32* %42, align 4
  store i32 %tmp2_v2.i3.i.i, i32* %30, align 16
  store i32 134517711, i32* %31, align 4
  %arg.i.i5271.i = load i32, i32* %30, align 16
  %arg2.i.i72.i = load i32, i32* %42, align 4
  %72 = tail call i32 @strchr(i32 %arg.i.i5271.i, i32 %arg2.i.i72.i)
  %.not.i31.i73.i = icmp eq i32 %72, 0
  br i1 %.not.i31.i73.i, label %BB_80493D6.i.i, label %BB_8049415.i.i

BB_8049415.i.i:                                   ; preds = %BB_8049405.i.preheader.i, %BB_80493D6.i.i
  %73 = load i32, i32* %34, align 16
  %tmp0_v2.i137.i.i = add i32 %73, %tmp2_v5.i73.i.i
  %74 = inttoptr i32 %tmp0_v2.i137.i.i to i8*
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %35, align 4
  %.not.i.i.i = icmp eq i32 %75, -1
  br i1 %.not.i.i.i, label %BB_804943E.i.i, label %BB_8049499.i.preheader.i

BB_8049499.i.preheader.i:                         ; preds = %BB_8049415.i.i, %BB_804943E.i.i
  %76 = load i32, i32* %39, align 8
  %77 = load i32, i32* %33, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %BB_8049465.i.i, label %BB_80494A7.i.loopexit.i

Func_smallest_word.exit:                          ; preds = %BB_80494A7.i.loopexit.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i
  %.pre-phi.i = phi i32* [ %.pre81.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %42, %BB_80494A7.i.loopexit.i ]
  %tmp2_v2.i19.i.pre-phi.i = phi i32 [ %.pre79.i, %Func_8049346.exit.i.BB_80494B9.i_crit_edge.i ], [ %tmp2_v5.i60.i.i, %BB_80494A7.i.loopexit.i ]
  %79 = load i32, i32* %35, align 4
  %tmp0_v1.i81.i.i = add i32 %79, 1
  store i32 %tmp0_v1.i81.i.i, i32* %30, align 16
  store i32 134517963, i32* %31, align 4
  %arg.i.i57.i = load i32, i32* %30, align 16
  %80 = tail call i32 @malloc(i32 %arg.i.i57.i)
  %tmp2_v.i17.i.i = add i32 %tmp0_v.i23.i, -624
  %81 = inttoptr i32 %tmp2_v.i17.i.i to i32*
  store i32 %80, i32* %81, align 16
  store i32 %tmp2_v2.i19.i.pre-phi.i, i32* %.pre-phi.i, align 4
  %82 = load i32, i32* %81, align 16
  store i32 %82, i32* %30, align 16
  store i32 134517993, i32* %31, align 4
  %arg.i.i60.i = load i32, i32* %30, align 16
  %arg2.i.i61.i = load i32, i32* %.pre-phi.i, align 4
  %83 = tail call i32 @strcpy(i32 %arg.i.i60.i, i32 %arg2.i.i61.i)
  %84 = load i32, i32* %81, align 16
  %85 = load i32, i32* %21, align 8
  %tmp2_v.i35.i = add i32 %85, -48
  %86 = inttoptr i32 %tmp2_v.i35.i to i32*
  store i32 %84, i32* %86, align 4
  store i32 %84, i32* %19, align 16
  store i32 134517466, i32* %20, align 4
  %arg.i.i = load i32, i32* %19, align 16
  %87 = inttoptr i32 %arg.i.i to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp90 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %87)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast90= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.225 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.225
  %cipher.225 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.225, i32 0, i32 0
  %plain.ptr.225 = tail call i8* @base64_decode(i8* %cipher.225)
  %spi225 = bitcast i8* %plain.ptr.225 to [1 x i8]*
  %cast90= getelementptr [1 x i8], [1 x i8]* %spi225, i64 0, i64 0
;-------------------------------
  %88 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast90)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  %89 = load i32, i32* %86, align 4
  store i32 %89, i32* %19, align 16
  store i32 134517480, i32* %20, align 4
  %arg.i.i3 = load i32, i32* %19, align 16
  tail call void @free(i32 %arg.i.i3)
  ret void
}
define internal fastcc void @swap_cols693(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !93 {
  %tmp2_v.i1.i = add i32 %arg_esp, 4
  %tmp0_v.i2.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i2.i, -4
  %3 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i2.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i2.i, -12
  %5 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -100
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %7, align 4
  %tmp4_v.i62.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i2.i, -20
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i66.i = add i32 %tmp0_v.i2.i, -80
  %11 = inttoptr i32 %tmp2_v3.i66.i to i32*
  store i32 1, i32* %11, align 16
  %tmp2_v4.i67.i = add i32 %tmp0_v.i2.i, -76
  %12 = inttoptr i32 %tmp2_v4.i67.i to i32*
  store i32 2, i32* %12, align 4
  %tmp2_v5.i68.i = add i32 %tmp0_v.i2.i, -72
  %13 = inttoptr i32 %tmp2_v5.i68.i to i32*
  store i32 3, i32* %13, align 8
  %tmp2_v6.i69.i = add i32 %tmp0_v.i2.i, -68
  %14 = inttoptr i32 %tmp2_v6.i69.i to i32*
  store i32 4, i32* %14, align 4
  %tmp2_v7.i70.i = add i32 %tmp0_v.i2.i, -64
  %15 = inttoptr i32 %tmp2_v7.i70.i to i32*
  store i32 5, i32* %15, align 16
  %tmp2_v8.i71.i = add i32 %tmp0_v.i2.i, -60
  %16 = inttoptr i32 %tmp2_v8.i71.i to i32*
  store i32 1, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -56
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 2, i32* %17, align 8
  %tmp2_v10.i72.i = add i32 %tmp0_v.i2.i, -52
  %18 = inttoptr i32 %tmp2_v10.i72.i to i32*
  store i32 3, i32* %18, align 4
  %tmp2_v11.i73.i = add i32 %tmp0_v.i2.i, -48
  %19 = inttoptr i32 %tmp2_v11.i73.i to i32*
  store i32 4, i32* %19, align 16
  %tmp2_v12.i74.i = add i32 %tmp0_v.i2.i, -44
  %20 = inttoptr i32 %tmp2_v12.i74.i to i32*
  store i32 5, i32* %20, align 4
  %tmp2_v13.i75.i = add i32 %tmp0_v.i2.i, -40
  %21 = inttoptr i32 %tmp2_v13.i75.i to i32*
  store i32 1, i32* %21, align 8
  %tmp2_v14.i.i = add i32 %tmp0_v.i2.i, -36
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 2, i32* %22, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i2.i, -32
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 3, i32* %23, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i2.i, -28
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 4, i32* %24, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i2.i, -24
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 5, i32* %25, align 8
  %tmp2_v19.i.i = add i32 %tmp0_v.i2.i, -104
  %26 = inttoptr i32 %tmp2_v19.i.i to i32*
  store i32 3, i32* %26, align 8
  %tmp2_v20.i.i = add i32 %tmp0_v.i2.i, -108
  %27 = inttoptr i32 %tmp2_v20.i.i to i32*
  store i32 1, i32* %27, align 4
  %tmp2_v22.i.i = add i32 %tmp0_v.i2.i, -112
  %28 = inttoptr i32 %tmp2_v22.i.i to i32*
  store i32 %tmp2_v3.i66.i, i32* %28, align 16
  %tmp2_v23.i.i = add i32 %tmp0_v.i2.i, -116
  %29 = inttoptr i32 %tmp2_v23.i.i to i32*
  store i32 134517371, i32* %29, align 4
  %tmp2_v.i9.i.i = add i32 %tmp0_v.i2.i, -120
  %30 = inttoptr i32 %tmp2_v.i9.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %30, align 8
  %tmp2_v1.i11.i.i = add i32 %tmp0_v.i2.i, -124
  %31 = inttoptr i32 %tmp2_v1.i11.i.i to i32*
  store i32 134529024, i32* %31, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i2.i, -144
  %32 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517511, i32* %32, align 16
  %tmp2_v.i.i.i = add i32 %tmp0_v.i2.i, -128
  %33 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 0, i32* %33, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i2.i, -132
  %34 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %34, align 4
  br label %BB_804931C.i.i

BB_804931C.i.i:                                   ; preds = %BB_804931C.i.i, %0
  %storemerge9.i = phi i32 [ 0, %0 ], [ %tmp0_v56.i.i.i, %BB_804931C.i.i ]
  %tmp0_v3.i.i.i = mul i32 %storemerge9.i, 20
  %35 = load i32, i32* %28, align 16
  %tmp0_v6.i.i.i = add i32 %35, %tmp0_v3.i.i.i
  %36 = load i32, i32* %27, align 4
  %tmp4_v.i7.i.i = shl i32 %36, 2
  %tmp2_v9.i.i.i = add i32 %tmp0_v6.i.i.i, %tmp4_v.i7.i.i
  %37 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %33, align 16
  %39 = load i32, i32* %34, align 4
  %tmp0_v17.i.i.i = mul i32 %39, 20
  %40 = load i32, i32* %28, align 16
  %tmp2_v20.i.i.i = add i32 %tmp0_v17.i.i.i, %40
  %41 = load i32, i32* %26, align 8
  %tmp4_v32.i.i.i = shl i32 %41, 2
  %tmp2_v33.i.i.i = add i32 %tmp4_v32.i.i.i, %tmp2_v20.i.i.i
  %42 = inttoptr i32 %tmp2_v33.i.i.i to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %27, align 4
  %tmp4_v37.i.i.i = shl i32 %44, 2
  %tmp2_v38.i.i.i = add i32 %tmp4_v37.i.i.i, %tmp2_v20.i.i.i
  %45 = inttoptr i32 %tmp2_v38.i.i.i to i32*
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %34, align 4
  %tmp0_v44.i.i.i = mul i32 %46, 20
  %47 = load i32, i32* %28, align 16
  %tmp2_v47.i.i.i = add i32 %tmp0_v44.i.i.i, %47
  %48 = load i32, i32* %26, align 8
  %49 = load i32, i32* %33, align 16
  %tmp4_v52.i.i.i = shl i32 %48, 2
  %tmp2_v53.i.i.i = add i32 %tmp4_v52.i.i.i, %tmp2_v47.i.i.i
  %50 = inttoptr i32 %tmp2_v53.i.i.i to i32*
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %34, align 4
  %tmp0_v56.i.i.i = add i32 %51, 1
  store i32 %tmp0_v56.i.i.i, i32* %34, align 4
  %52 = icmp slt i32 %tmp0_v56.i.i.i, 3
  br i1 %52, label %BB_804931C.i.i, label %Func_col_swap.exit

Func_col_swap.exit:                               ; preds = %BB_804931C.i.i
  %53 = load i32, i32* %31, align 4
  %54 = load i32, i32* %30, align 8
  %tmp2_v.i7.i = add i32 %54, -80
  %55 = inttoptr i32 %tmp2_v.i7.i to i32*
  %tmp2_v.i48.i = add i32 %54, -76
  %56 = inttoptr i32 %tmp2_v.i48.i to i32*
  %tmp2_v6.i13.i = add i32 %54, -72
  %tmp2_v11.i.i = add i32 %53, -8184
  store i32 0, i32* %55, align 4
  br label %BB_8049287.i

BB_8049290.i:                                     ; preds = %BB_8049287.i, %BB_8049290.i
  %storemerge15 = phi i32 [ 0, %BB_8049287.i ], [ %tmp0_v2.i42.i, %BB_8049290.i ]
  %57 = load i32, i32* %55, align 4
  %tmp0_v2.i11.i = mul i32 %57, 5
  %tmp0_v5.i.i = add i32 %tmp0_v2.i11.i, %storemerge15
  %tmp4_v.i.i = shl i32 %tmp0_v5.i.i, 2
  %tmp2_v7.i.i = add i32 %tmp2_v6.i13.i, %tmp4_v.i.i
  %58 = inttoptr i32 %tmp2_v7.i.i to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %27, align 4
  store i32 %tmp2_v11.i.i, i32* %28, align 16
  store i32 134517427, i32* %29, align 4
  %60 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v47.i.i.i, i32 inreg noundef %storemerge15, i32 noundef %tmp2_v22.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !94
  %61 = load i32, i32* %56, align 4
  %tmp0_v2.i42.i = add i32 %61, 1
  store i32 %tmp0_v2.i42.i, i32* %56, align 4
  %62 = icmp slt i32 %tmp0_v2.i42.i, 5
  br i1 %62, label %BB_8049290.i, label %BB_80492C0.i

BB_8049287.i:                                     ; preds = %BB_80492C0.i, %Func_col_swap.exit
  store i32 0, i32* %56, align 4
  br label %BB_8049290.i

BB_80492C0.i:                                     ; preds = %BB_8049290.i
  store i32 10, i32* %28, align 16
  store i32 134517450, i32* %29, align 4
  %arg.i.i = load i32, i32* %28, align 16
  %63 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %64 = load i32, i32* %55, align 4
  %tmp0_v2.i32.i = add i32 %64, 1
  store i32 %tmp0_v2.i32.i, i32* %55, align 4
  %65 = icmp slt i32 %tmp0_v2.i32.i, 3
  br i1 %65, label %BB_8049287.i, label %.exit

.exit:                                            ; preds = %BB_80492C0.i
  ret void
}
define internal fastcc void @print_0_99_grid231(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !79 {
  %tmp2_v.i26.i = add i32 %arg_esp, 4
  %tmp0_v.i27.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i27.i, -4
  %3 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i27.i, -8
  %4 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i32.i = add i32 %tmp0_v.i27.i, -12
  %5 = inttoptr i32 %tmp2_v5.i32.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i27.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i26.i, i32* %6, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i27.i, -36
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %7, align 4
  %tmp2_v.i3.i = add i32 %tmp0_v.i27.i, -20
  %8 = inttoptr i32 %tmp2_v.i3.i to i32*
  store i32 0, i32* %8, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i27.i, -44
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  %tmp2_v4.i18.i = add i32 %tmp0_v.i27.i, -48
  %10 = inttoptr i32 %tmp2_v4.i18.i to i32*
  %tmp2_v5.i.i = add i32 %tmp0_v.i27.i, -52
  %11 = inttoptr i32 %tmp2_v5.i.i to i32*
  br label %BB_80491E0.i

BB_8049220.i:                                     ; preds = %BB_80491E0.i
  store i32 10, i32* %10, align 16
  store i32 134517290, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 16
  %12 = tail call i32 @putchar(i32 %arg.i.i)  nounwind 
  %.pr.pre = load i32, i32* %8, align 4
  br label %BB_804922D.ithread-pre-split

BB_80491E0.i:                                     ; preds = %BB_804922D.ithread-pre-split, %0
  %r_edx.02 = phi i32 [ 0, %0 ], [ %tmp0_v13.i.i, %BB_804922D.ithread-pre-split ]
  %r_ecx.01 = phi i32 [ %tmp2_v.i26.i, %0 ], [ %tmp0_v13.i.i, %BB_804922D.ithread-pre-split ]
  %13 = phi i32 [ 0, %0 ], [ %.pr, %BB_804922D.ithread-pre-split ]
  store i32 %13, i32* %9, align 4
;-------------------------------
; Replace: %spi.bis.229 = ptrtoint[6 x i8]* @str.bis.229 to i32
  %sp0.56 = alloca [6 x i8]
;-------------------------------
; Replace: store [6 x i8] c"\4A\79\76\5C\69\64", [6 x i8]* %sp0.56
  %sp187 = alloca [6 x i8]
  
;-------------------------------
; Replace: %s0.187 = load [1 x i8], [1 x i8]* @str.0.187
  %cipher.ptr.735 = alloca [5 x i8]
  store [5 x i8] c"\53\67\3d\3d\00", [5 x i8]* %cipher.ptr.735
  %cipher.735 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.735, i32 0, i32 0
  %plain.ptr.735 = tail call i8* @base64_decode(i8* %cipher.735)
  %spi735 = bitcast i8* %plain.ptr.735 to [1 x i8]*
  %s0.187 = load [1 x i8], [1 x i8]* %spi735
;-------------------------------
  %sp0.187 = bitcast [6 x i8]* %sp187 to [1 x i8]*
  store [1 x i8] %s0.187, [1 x i8]* %sp0.187
  %next0.187 = getelementptr [6 x i8], [6 x i8]* %sp187, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.187 = load [1 x i8], [1 x i8]* @str.1.187
  %cipher.ptr.734 = alloca [5 x i8]
  store [5 x i8] c"\65\51\3d\3d\00", [5 x i8]* %cipher.ptr.734
  %cipher.734 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.734, i32 0, i32 0
  %plain.ptr.734 = tail call i8* @base64_decode(i8* %cipher.734)
  %spi734 = bitcast i8* %plain.ptr.734 to [1 x i8]*
  %s1.187 = load [1 x i8], [1 x i8]* %spi734
;-------------------------------
  %sp1.187 = bitcast i8* %next0.187 to [1 x i8]*
  store [1 x i8] %s1.187, [1 x i8]* %sp1.187
  %next1.187 = getelementptr [6 x i8], [6 x i8]* %sp187, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.187 = load [1 x i8], [1 x i8]* @str.2.187
  %cipher.ptr.733 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.733
  %cipher.733 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.733, i32 0, i32 0
  %plain.ptr.733 = tail call i8* @base64_decode(i8* %cipher.733)
  %spi733 = bitcast i8* %plain.ptr.733 to [1 x i8]*
  %s2.187 = load [1 x i8], [1 x i8]* %spi733
;-------------------------------
  %sp2.187 = bitcast i8* %next1.187 to [1 x i8]*
  store [1 x i8] %s2.187, [1 x i8]* %sp2.187
  %next2.187 = getelementptr [6 x i8], [6 x i8]* %sp187, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.187 = load [1 x i8], [1 x i8]* @str.3.187
  %cipher.ptr.732 = alloca [5 x i8]
  store [5 x i8] c"\58\41\3d\3d\00", [5 x i8]* %cipher.ptr.732
  %cipher.732 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.732, i32 0, i32 0
  %plain.ptr.732 = tail call i8* @base64_decode(i8* %cipher.732)
  %spi732 = bitcast i8* %plain.ptr.732 to [1 x i8]*
  %s3.187 = load [1 x i8], [1 x i8]* %spi732
;-------------------------------
  %sp3.187 = bitcast i8* %next2.187 to [1 x i8]*
  store [1 x i8] %s3.187, [1 x i8]* %sp3.187
  %next3.187 = getelementptr [6 x i8], [6 x i8]* %sp187, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.187 = load [1 x i8], [1 x i8]* @str.4.187
  %cipher.ptr.731 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.731
  %cipher.731 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.731, i32 0, i32 0
  %plain.ptr.731 = tail call i8* @base64_decode(i8* %cipher.731)
  %spi731 = bitcast i8* %plain.ptr.731 to [1 x i8]*
  %s4.187 = load [1 x i8], [1 x i8]* %spi731
;-------------------------------
  %sp4.187 = bitcast i8* %next3.187 to [1 x i8]*
  store [1 x i8] %s4.187, [1 x i8]* %sp4.187
  %next4.187 = getelementptr [6 x i8], [6 x i8]* %sp187, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.187 = load [1 x i8], [1 x i8]* @str.5.187
  %cipher.ptr.730 = alloca [5 x i8]
  store [5 x i8] c"\5a\41\3d\3d\00", [5 x i8]* %cipher.ptr.730
  %cipher.730 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.730, i32 0, i32 0
  %plain.ptr.730 = tail call i8* @base64_decode(i8* %cipher.730)
  %spi730 = bitcast i8* %plain.ptr.730 to [1 x i8]*
  %s5.187 = load [1 x i8], [1 x i8]* %spi730
;-------------------------------
  %sp5.187 = bitcast i8* %next4.187 to [1 x i8]*
  store [1 x i8] %s5.187, [1 x i8]* %sp5.187

  %spi187 = load [6 x i8], [6 x i8]* %sp187
  store [6 x i8] %spi187, [6 x i8]* %sp0.56
;-------------------------------
  %sp0.1.56 = bitcast [6 x i8]* %sp0.56 to i48*
  %i0.56 = load i48, i48* %sp0.1.56

  %sp1.56 = alloca [6 x i8]
;-------------------------------
; Replace: store [6 x i8] c"\6f\49\44\38\49\64", [6 x i8]* %sp1.56
  %sp188 = alloca [6 x i8]
  
;-------------------------------
; Replace: %s0.188 = load [1 x i8], [1 x i8]* @str.0.188
  %cipher.ptr.737 = alloca [5 x i8]
  store [5 x i8] c"\62\77\3d\3d\00", [5 x i8]* %cipher.ptr.737
  %cipher.737 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.737, i32 0, i32 0
  %plain.ptr.737 = tail call i8* @base64_decode(i8* %cipher.737)
  %spi737 = bitcast i8* %plain.ptr.737 to [1 x i8]*
  %s0.188 = load [1 x i8], [1 x i8]* %spi737
;-------------------------------
  %sp0.188 = bitcast [6 x i8]* %sp188 to [1 x i8]*
  store [1 x i8] %s0.188, [1 x i8]* %sp0.188
  %next0.188 = getelementptr [6 x i8], [6 x i8]* %sp188, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.188 = load [1 x i8], [1 x i8]* @str.1.188
  %cipher.ptr.739 = alloca [5 x i8]
  store [5 x i8] c"\53\51\3d\3d\00", [5 x i8]* %cipher.ptr.739
  %cipher.739 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.739, i32 0, i32 0
  %plain.ptr.739 = tail call i8* @base64_decode(i8* %cipher.739)
  %spi739 = bitcast i8* %plain.ptr.739 to [1 x i8]*
  %s1.188 = load [1 x i8], [1 x i8]* %spi739
;-------------------------------
  %sp1.188 = bitcast i8* %next0.188 to [1 x i8]*
  store [1 x i8] %s1.188, [1 x i8]* %sp1.188
  %next1.188 = getelementptr [6 x i8], [6 x i8]* %sp188, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.188 = load [1 x i8], [1 x i8]* @str.2.188
  %cipher.ptr.738 = alloca [5 x i8]
  store [5 x i8] c"\52\41\3d\3d\00", [5 x i8]* %cipher.ptr.738
  %cipher.738 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.738, i32 0, i32 0
  %plain.ptr.738 = tail call i8* @base64_decode(i8* %cipher.738)
  %spi738 = bitcast i8* %plain.ptr.738 to [1 x i8]*
  %s2.188 = load [1 x i8], [1 x i8]* %spi738
;-------------------------------
  %sp2.188 = bitcast i8* %next1.188 to [1 x i8]*
  store [1 x i8] %s2.188, [1 x i8]* %sp2.188
  %next2.188 = getelementptr [6 x i8], [6 x i8]* %sp188, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.188 = load [1 x i8], [1 x i8]* @str.3.188
  %cipher.ptr.740 = alloca [5 x i8]
  store [5 x i8] c"\4f\41\3d\3d\00", [5 x i8]* %cipher.ptr.740
  %cipher.740 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.740, i32 0, i32 0
  %plain.ptr.740 = tail call i8* @base64_decode(i8* %cipher.740)
  %spi740 = bitcast i8* %plain.ptr.740 to [1 x i8]*
  %s3.188 = load [1 x i8], [1 x i8]* %spi740
;-------------------------------
  %sp3.188 = bitcast i8* %next2.188 to [1 x i8]*
  store [1 x i8] %s3.188, [1 x i8]* %sp3.188
  %next3.188 = getelementptr [6 x i8], [6 x i8]* %sp188, i32 0, i32 4
  
;-------------------------------
; Replace: %s4.188 = load [1 x i8], [1 x i8]* @str.4.188
  %cipher.ptr.736 = alloca [5 x i8]
  store [5 x i8] c"\53\51\3d\3d\00", [5 x i8]* %cipher.ptr.736
  %cipher.736 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.736, i32 0, i32 0
  %plain.ptr.736 = tail call i8* @base64_decode(i8* %cipher.736)
  %spi736 = bitcast i8* %plain.ptr.736 to [1 x i8]*
  %s4.188 = load [1 x i8], [1 x i8]* %spi736
;-------------------------------
  %sp4.188 = bitcast i8* %next3.188 to [1 x i8]*
  store [1 x i8] %s4.188, [1 x i8]* %sp4.188
  %next4.188 = getelementptr [6 x i8], [6 x i8]* %sp188, i32 0, i32 5
  
;-------------------------------
; Replace: %s5.188 = load [1 x i8], [1 x i8]* @str.5.188
  %cipher.ptr.741 = alloca [5 x i8]
  store [5 x i8] c"\5a\41\3d\3d\00", [5 x i8]* %cipher.ptr.741
  %cipher.741 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.741, i32 0, i32 0
  %plain.ptr.741 = tail call i8* @base64_decode(i8* %cipher.741)
  %spi741 = bitcast i8* %plain.ptr.741 to [1 x i8]*
  %s5.188 = load [1 x i8], [1 x i8]* %spi741
;-------------------------------
  %sp5.188 = bitcast i8* %next4.188 to [1 x i8]*
  store [1 x i8] %s5.188, [1 x i8]* %sp5.188

  %spi188 = load [6 x i8], [6 x i8]* %sp188
  store [6 x i8] %spi188, [6 x i8]* %sp1.56
;-------------------------------
  %sp1.1.56 = bitcast [6 x i8]* %sp1.56 to i48*
  %i1.56 = load i48, i48* %sp1.1.56

  %xp56 = xor i48 %i0.56, %i1.56

  %fi.56 = alloca i48
  store i48 %xp56, i48* %fi.56

  %spi56 = bitcast i48* %fi.56 to [6 x i8]*
  %spi.bis.229 = ptrtoint[6 x i8]* %spi56 to i32
;-------------------------------
  store i32 %spi.bis.229, i32* %10, align 16
  store i32 134517234, i32* %11, align 4
  %14 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.01, i32 inreg noundef %r_edx.02, i32 noundef %tmp2_v4.i18.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !80
  %15 = load i32, i32* %8, align 4
  %tmp0_v2.i.i = add i32 %15, 1
  store i32 %tmp0_v2.i.i, i32* %8, align 4
  %tmp16_v.i.i = sext i32 %tmp0_v2.i.i to i64
  %tmp15_v.i.i = mul nsw i64 %tmp16_v.i.i, 1717986919
  %tmp15_v5.i.i = lshr i64 %tmp15_v.i.i, 32
  %16 = trunc i64 %tmp15_v5.i.i to i32
  %tmp0_v7.i.i = ashr i32 %16, 2
  %tmp0_v8.i.i.neg = lshr i32 %tmp0_v2.i.i, 31
  %tmp0_v9.i.i = add nsw i32 %tmp0_v7.i.i, %tmp0_v8.i.i.neg
  %tmp0_v12.i.i.neg = mul i32 %tmp0_v9.i.i, -10
  %tmp0_v13.i.i = add i32 %tmp0_v12.i.i.neg, %tmp0_v2.i.i
  %.not.i.i = icmp eq i32 %tmp0_v13.i.i, 0
  br i1 %.not.i.i, label %BB_8049220.i, label %BB_804922D.ithread-pre-split

BB_804922D.ithread-pre-split:                     ; preds = %BB_80491E0.i, %BB_8049220.i
  %.pr = phi i32 [ %.pr.pre, %BB_8049220.i ], [ %tmp0_v2.i.i, %BB_80491E0.i ]
  %17 = icmp slt i32 %.pr, 100
  br i1 %17, label %BB_80491E0.i, label %.exit

.exit:                                            ; preds = %BB_804922D.ithread-pre-split
  ret void
}
define internal fastcc void @void_function_return141(i32 %arg_esp) unnamed_addr  norecurse  !retregs !65 {
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
  %sp0.58 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\4B\05\49\69", [4 x i8]* %sp0.58
  %sp189 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.189 = load [1 x i8], [1 x i8]* @str.0.189
  %cipher.ptr.744 = alloca [5 x i8]
  store [5 x i8] c"\53\77\3d\3d\00", [5 x i8]* %cipher.ptr.744
  %cipher.744 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.744, i32 0, i32 0
  %plain.ptr.744 = tail call i8* @base64_decode(i8* %cipher.744)
  %spi744 = bitcast i8* %plain.ptr.744 to [1 x i8]*
  %s0.189 = load [1 x i8], [1 x i8]* %spi744
;-------------------------------
  %sp0.189 = bitcast [4 x i8]* %sp189 to [1 x i8]*
  store [1 x i8] %s0.189, [1 x i8]* %sp0.189
  %next0.189 = getelementptr [4 x i8], [4 x i8]* %sp189, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.189 = load [1 x i8], [1 x i8]* @str.1.189
  %cipher.ptr.742 = alloca [5 x i8]
  store [5 x i8] c"\42\51\3d\3d\00", [5 x i8]* %cipher.ptr.742
  %cipher.742 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.742, i32 0, i32 0
  %plain.ptr.742 = tail call i8* @base64_decode(i8* %cipher.742)
  %spi742 = bitcast i8* %plain.ptr.742 to [1 x i8]*
  %s1.189 = load [1 x i8], [1 x i8]* %spi742
;-------------------------------
  %sp1.189 = bitcast i8* %next0.189 to [1 x i8]*
  store [1 x i8] %s1.189, [1 x i8]* %sp1.189
  %next1.189 = getelementptr [4 x i8], [4 x i8]* %sp189, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.189 = load [1 x i8], [1 x i8]* @str.2.189
  %cipher.ptr.743 = alloca [5 x i8]
  store [5 x i8] c"\53\51\3d\3d\00", [5 x i8]* %cipher.ptr.743
  %cipher.743 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.743, i32 0, i32 0
  %plain.ptr.743 = tail call i8* @base64_decode(i8* %cipher.743)
  %spi743 = bitcast i8* %plain.ptr.743 to [1 x i8]*
  %s2.189 = load [1 x i8], [1 x i8]* %spi743
;-------------------------------
  %sp2.189 = bitcast i8* %next1.189 to [1 x i8]*
  store [1 x i8] %s2.189, [1 x i8]* %sp2.189
  %next2.189 = getelementptr [4 x i8], [4 x i8]* %sp189, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.189 = load [1 x i8], [1 x i8]* @str.3.189
  %cipher.ptr.745 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.745
  %cipher.745 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.745, i32 0, i32 0
  %plain.ptr.745 = tail call i8* @base64_decode(i8* %cipher.745)
  %spi745 = bitcast i8* %plain.ptr.745 to [1 x i8]*
  %s3.189 = load [1 x i8], [1 x i8]* %spi745
;-------------------------------
  %sp3.189 = bitcast i8* %next2.189 to [1 x i8]*
  store [1 x i8] %s3.189, [1 x i8]* %sp3.189

  %spi189 = load [4 x i8], [4 x i8]* %sp189
  store [4 x i8] %spi189, [4 x i8]* %sp0.58
;-------------------------------
  %sp0.1.58 = bitcast [4 x i8]* %sp0.58 to i32*
  %i0.58 = load i32, i32* %sp0.1.58

  %sp1.58 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\6e\61\43\69", [4 x i8]* %sp1.58
  %sp190 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.190 = load [1 x i8], [1 x i8]* @str.0.190
  %cipher.ptr.746 = alloca [5 x i8]
  store [5 x i8] c"\62\67\3d\3d\00", [5 x i8]* %cipher.ptr.746
  %cipher.746 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.746, i32 0, i32 0
  %plain.ptr.746 = tail call i8* @base64_decode(i8* %cipher.746)
  %spi746 = bitcast i8* %plain.ptr.746 to [1 x i8]*
  %s0.190 = load [1 x i8], [1 x i8]* %spi746
;-------------------------------
  %sp0.190 = bitcast [4 x i8]* %sp190 to [1 x i8]*
  store [1 x i8] %s0.190, [1 x i8]* %sp0.190
  %next0.190 = getelementptr [4 x i8], [4 x i8]* %sp190, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.190 = load [1 x i8], [1 x i8]* @str.1.190
  %cipher.ptr.749 = alloca [5 x i8]
  store [5 x i8] c"\59\51\3d\3d\00", [5 x i8]* %cipher.ptr.749
  %cipher.749 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.749, i32 0, i32 0
  %plain.ptr.749 = tail call i8* @base64_decode(i8* %cipher.749)
  %spi749 = bitcast i8* %plain.ptr.749 to [1 x i8]*
  %s1.190 = load [1 x i8], [1 x i8]* %spi749
;-------------------------------
  %sp1.190 = bitcast i8* %next0.190 to [1 x i8]*
  store [1 x i8] %s1.190, [1 x i8]* %sp1.190
  %next1.190 = getelementptr [4 x i8], [4 x i8]* %sp190, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.190 = load [1 x i8], [1 x i8]* @str.2.190
  %cipher.ptr.748 = alloca [5 x i8]
  store [5 x i8] c"\51\77\3d\3d\00", [5 x i8]* %cipher.ptr.748
  %cipher.748 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.748, i32 0, i32 0
  %plain.ptr.748 = tail call i8* @base64_decode(i8* %cipher.748)
  %spi748 = bitcast i8* %plain.ptr.748 to [1 x i8]*
  %s2.190 = load [1 x i8], [1 x i8]* %spi748
;-------------------------------
  %sp2.190 = bitcast i8* %next1.190 to [1 x i8]*
  store [1 x i8] %s2.190, [1 x i8]* %sp2.190
  %next2.190 = getelementptr [4 x i8], [4 x i8]* %sp190, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.190 = load [1 x i8], [1 x i8]* @str.3.190
  %cipher.ptr.747 = alloca [5 x i8]
  store [5 x i8] c"\61\51\3d\3d\00", [5 x i8]* %cipher.ptr.747
  %cipher.747 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.747, i32 0, i32 0
  %plain.ptr.747 = tail call i8* @base64_decode(i8* %cipher.747)
  %spi747 = bitcast i8* %plain.ptr.747 to [1 x i8]*
  %s3.190 = load [1 x i8], [1 x i8]* %spi747
;-------------------------------
  %sp3.190 = bitcast i8* %next2.190 to [1 x i8]*
  store [1 x i8] %s3.190, [1 x i8]* %sp3.190

  %spi190 = load [4 x i8], [4 x i8]* %sp190
  store [4 x i8] %spi190, [4 x i8]* %sp1.58
;-------------------------------
  %sp1.1.58 = bitcast [4 x i8]* %sp1.58 to i32*
  %i1.58 = load i32, i32* %sp1.1.58

  %xp58 = xor i32 %i0.58, %i1.58

  %fi.58 = alloca i32
  store i32 %xp58, i32* %fi.58

  %spi58 = bitcast i32* %fi.58 to [4 x i8]*
  %spi.bis.139 = ptrtoint[4 x i8]* %spi58 to i32
;-------------------------------
  store i32 %spi.bis.139, i32* %12, align 16
  %tmp2_v4.i22.i = add i32 %tmp0_v.i39.i, -68
  %15 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 134517490, i32* %15, align 4
  %16 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i38.i, i32 inreg noundef 0, i32 noundef %tmp2_v1.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !66
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
  %sp0.57 = alloca [22 x i8]
;-------------------------------
; Replace: store [22 x i8] c"\38\2C\22\2F\5F\33\11\68\10\40\43\39\3D\79\2A\37\5E\25\15\51\4A\6E", [22 x i8]* %sp0.57
  %sp191 = alloca [22 x i8]
  
;-------------------------------
; Replace: %s0.191 = load [2 x i8], [2 x i8]* @str.0.191
  %cipher.ptr.752 = alloca [5 x i8]
  store [5 x i8] c"\4f\43\77\3d\00", [5 x i8]* %cipher.ptr.752
  %cipher.752 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.752, i32 0, i32 0
  %plain.ptr.752 = tail call i8* @base64_decode(i8* %cipher.752)
  %spi752 = bitcast i8* %plain.ptr.752 to [2 x i8]*
  %s0.191 = load [2 x i8], [2 x i8]* %spi752
;-------------------------------
  %sp0.191 = bitcast [22 x i8]* %sp191 to [2 x i8]*
  store [2 x i8] %s0.191, [2 x i8]* %sp0.191
  %next0.191 = getelementptr [22 x i8], [22 x i8]* %sp191, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.191 = load [3 x i8], [3 x i8]* @str.1.191
  %cipher.ptr.750 = alloca [5 x i8]
  store [5 x i8] c"\49\69\39\66\00", [5 x i8]* %cipher.ptr.750
  %cipher.750 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.750, i32 0, i32 0
  %plain.ptr.750 = tail call i8* @base64_decode(i8* %cipher.750)
  %spi750 = bitcast i8* %plain.ptr.750 to [3 x i8]*
  %s1.191 = load [3 x i8], [3 x i8]* %spi750
;-------------------------------
  %sp1.191 = bitcast i8* %next0.191 to [3 x i8]*
  store [3 x i8] %s1.191, [3 x i8]* %sp1.191
  %next1.191 = getelementptr [22 x i8], [22 x i8]* %sp191, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.191 = load [3 x i8], [3 x i8]* @str.2.191
  %cipher.ptr.751 = alloca [5 x i8]
  store [5 x i8] c"\4d\78\46\6f\00", [5 x i8]* %cipher.ptr.751
  %cipher.751 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.751, i32 0, i32 0
  %plain.ptr.751 = tail call i8* @base64_decode(i8* %cipher.751)
  %spi751 = bitcast i8* %plain.ptr.751 to [3 x i8]*
  %s2.191 = load [3 x i8], [3 x i8]* %spi751
;-------------------------------
  %sp2.191 = bitcast i8* %next1.191 to [3 x i8]*
  store [3 x i8] %s2.191, [3 x i8]* %sp2.191
  %next2.191 = getelementptr [22 x i8], [22 x i8]* %sp191, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.191 = load [3 x i8], [3 x i8]* @str.3.191
  %cipher.ptr.754 = alloca [5 x i8]
  store [5 x i8] c"\45\45\42\44\00", [5 x i8]* %cipher.ptr.754
  %cipher.754 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.754, i32 0, i32 0
  %plain.ptr.754 = tail call i8* @base64_decode(i8* %cipher.754)
  %spi754 = bitcast i8* %plain.ptr.754 to [3 x i8]*
  %s3.191 = load [3 x i8], [3 x i8]* %spi754
;-------------------------------
  %sp3.191 = bitcast i8* %next2.191 to [3 x i8]*
  store [3 x i8] %s3.191, [3 x i8]* %sp3.191
  %next3.191 = getelementptr [22 x i8], [22 x i8]* %sp191, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.191 = load [2 x i8], [2 x i8]* @str.4.191
  %cipher.ptr.757 = alloca [5 x i8]
  store [5 x i8] c"\4f\54\30\3d\00", [5 x i8]* %cipher.ptr.757
  %cipher.757 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.757, i32 0, i32 0
  %plain.ptr.757 = tail call i8* @base64_decode(i8* %cipher.757)
  %spi757 = bitcast i8* %plain.ptr.757 to [2 x i8]*
  %s4.191 = load [2 x i8], [2 x i8]* %spi757
;-------------------------------
  %sp4.191 = bitcast i8* %next3.191 to [2 x i8]*
  store [2 x i8] %s4.191, [2 x i8]* %sp4.191
  %next4.191 = getelementptr [22 x i8], [22 x i8]* %sp191, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.191 = load [3 x i8], [3 x i8]* @str.5.191
  %cipher.ptr.755 = alloca [5 x i8]
  store [5 x i8] c"\65\53\6f\33\00", [5 x i8]* %cipher.ptr.755
  %cipher.755 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.755, i32 0, i32 0
  %plain.ptr.755 = tail call i8* @base64_decode(i8* %cipher.755)
  %spi755 = bitcast i8* %plain.ptr.755 to [3 x i8]*
  %s5.191 = load [3 x i8], [3 x i8]* %spi755
;-------------------------------
  %sp5.191 = bitcast i8* %next4.191 to [3 x i8]*
  store [3 x i8] %s5.191, [3 x i8]* %sp5.191
  %next5.191 = getelementptr [22 x i8], [22 x i8]* %sp191, i32 0, i32 16
  
;-------------------------------
; Replace: %s6.191 = load [3 x i8], [3 x i8]* @str.6.191
  %cipher.ptr.753 = alloca [5 x i8]
  store [5 x i8] c"\58\69\55\56\00", [5 x i8]* %cipher.ptr.753
  %cipher.753 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.753, i32 0, i32 0
  %plain.ptr.753 = tail call i8* @base64_decode(i8* %cipher.753)
  %spi753 = bitcast i8* %plain.ptr.753 to [3 x i8]*
  %s6.191 = load [3 x i8], [3 x i8]* %spi753
;-------------------------------
  %sp6.191 = bitcast i8* %next5.191 to [3 x i8]*
  store [3 x i8] %s6.191, [3 x i8]* %sp6.191
  %next6.191 = getelementptr [22 x i8], [22 x i8]* %sp191, i32 0, i32 19
  
;-------------------------------
; Replace: %s7.191 = load [3 x i8], [3 x i8]* @str.7.191
  %cipher.ptr.756 = alloca [5 x i8]
  store [5 x i8] c"\55\55\70\75\00", [5 x i8]* %cipher.ptr.756
  %cipher.756 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.756, i32 0, i32 0
  %plain.ptr.756 = tail call i8* @base64_decode(i8* %cipher.756)
  %spi756 = bitcast i8* %plain.ptr.756 to [3 x i8]*
  %s7.191 = load [3 x i8], [3 x i8]* %spi756
;-------------------------------
  %sp7.191 = bitcast i8* %next6.191 to [3 x i8]*
  store [3 x i8] %s7.191, [3 x i8]* %sp7.191

  %spi191 = load [22 x i8], [22 x i8]* %sp191
  store [22 x i8] %spi191, [22 x i8]* %sp0.57
;-------------------------------
  %sp0.1.57 = bitcast [22 x i8]* %sp0.57 to i176*
  %i0.57 = load i176, i176* %sp0.1.57

  %sp1.57 = alloca [22 x i8]
;-------------------------------
; Replace: store [22 x i8] c"\71\42\54\4e\33\5a\75\48\71\32\31\58\44\59\46\52\30\42\61\39\6b\6e", [22 x i8]* %sp1.57
  %sp192 = alloca [22 x i8]
  
;-------------------------------
; Replace: %s0.192 = load [2 x i8], [2 x i8]* @str.0.192
  %cipher.ptr.761 = alloca [5 x i8]
  store [5 x i8] c"\63\55\49\3d\00", [5 x i8]* %cipher.ptr.761
  %cipher.761 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.761, i32 0, i32 0
  %plain.ptr.761 = tail call i8* @base64_decode(i8* %cipher.761)
  %spi761 = bitcast i8* %plain.ptr.761 to [2 x i8]*
  %s0.192 = load [2 x i8], [2 x i8]* %spi761
;-------------------------------
  %sp0.192 = bitcast [22 x i8]* %sp192 to [2 x i8]*
  store [2 x i8] %s0.192, [2 x i8]* %sp0.192
  %next0.192 = getelementptr [22 x i8], [22 x i8]* %sp192, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.192 = load [3 x i8], [3 x i8]* @str.1.192
  %cipher.ptr.760 = alloca [5 x i8]
  store [5 x i8] c"\56\45\34\7a\00", [5 x i8]* %cipher.ptr.760
  %cipher.760 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.760, i32 0, i32 0
  %plain.ptr.760 = tail call i8* @base64_decode(i8* %cipher.760)
  %spi760 = bitcast i8* %plain.ptr.760 to [3 x i8]*
  %s1.192 = load [3 x i8], [3 x i8]* %spi760
;-------------------------------
  %sp1.192 = bitcast i8* %next0.192 to [3 x i8]*
  store [3 x i8] %s1.192, [3 x i8]* %sp1.192
  %next1.192 = getelementptr [22 x i8], [22 x i8]* %sp192, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.192 = load [3 x i8], [3 x i8]* @str.2.192
  %cipher.ptr.763 = alloca [5 x i8]
  store [5 x i8] c"\57\6e\56\49\00", [5 x i8]* %cipher.ptr.763
  %cipher.763 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.763, i32 0, i32 0
  %plain.ptr.763 = tail call i8* @base64_decode(i8* %cipher.763)
  %spi763 = bitcast i8* %plain.ptr.763 to [3 x i8]*
  %s2.192 = load [3 x i8], [3 x i8]* %spi763
;-------------------------------
  %sp2.192 = bitcast i8* %next1.192 to [3 x i8]*
  store [3 x i8] %s2.192, [3 x i8]* %sp2.192
  %next2.192 = getelementptr [22 x i8], [22 x i8]* %sp192, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.192 = load [3 x i8], [3 x i8]* @str.3.192
  %cipher.ptr.765 = alloca [5 x i8]
  store [5 x i8] c"\63\54\49\78\00", [5 x i8]* %cipher.ptr.765
  %cipher.765 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.765, i32 0, i32 0
  %plain.ptr.765 = tail call i8* @base64_decode(i8* %cipher.765)
  %spi765 = bitcast i8* %plain.ptr.765 to [3 x i8]*
  %s3.192 = load [3 x i8], [3 x i8]* %spi765
;-------------------------------
  %sp3.192 = bitcast i8* %next2.192 to [3 x i8]*
  store [3 x i8] %s3.192, [3 x i8]* %sp3.192
  %next3.192 = getelementptr [22 x i8], [22 x i8]* %sp192, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.192 = load [2 x i8], [2 x i8]* @str.4.192
  %cipher.ptr.764 = alloca [5 x i8]
  store [5 x i8] c"\57\45\51\3d\00", [5 x i8]* %cipher.ptr.764
  %cipher.764 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.764, i32 0, i32 0
  %plain.ptr.764 = tail call i8* @base64_decode(i8* %cipher.764)
  %spi764 = bitcast i8* %plain.ptr.764 to [2 x i8]*
  %s4.192 = load [2 x i8], [2 x i8]* %spi764
;-------------------------------
  %sp4.192 = bitcast i8* %next3.192 to [2 x i8]*
  store [2 x i8] %s4.192, [2 x i8]* %sp4.192
  %next4.192 = getelementptr [22 x i8], [22 x i8]* %sp192, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.192 = load [3 x i8], [3 x i8]* @str.5.192
  %cipher.ptr.758 = alloca [5 x i8]
  store [5 x i8] c"\57\55\5a\53\00", [5 x i8]* %cipher.ptr.758
  %cipher.758 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.758, i32 0, i32 0
  %plain.ptr.758 = tail call i8* @base64_decode(i8* %cipher.758)
  %spi758 = bitcast i8* %plain.ptr.758 to [3 x i8]*
  %s5.192 = load [3 x i8], [3 x i8]* %spi758
;-------------------------------
  %sp5.192 = bitcast i8* %next4.192 to [3 x i8]*
  store [3 x i8] %s5.192, [3 x i8]* %sp5.192
  %next5.192 = getelementptr [22 x i8], [22 x i8]* %sp192, i32 0, i32 16
  
;-------------------------------
; Replace: %s6.192 = load [3 x i8], [3 x i8]* @str.6.192
  %cipher.ptr.759 = alloca [5 x i8]
  store [5 x i8] c"\4d\45\4a\68\00", [5 x i8]* %cipher.ptr.759
  %cipher.759 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.759, i32 0, i32 0
  %plain.ptr.759 = tail call i8* @base64_decode(i8* %cipher.759)
  %spi759 = bitcast i8* %plain.ptr.759 to [3 x i8]*
  %s6.192 = load [3 x i8], [3 x i8]* %spi759
;-------------------------------
  %sp6.192 = bitcast i8* %next5.192 to [3 x i8]*
  store [3 x i8] %s6.192, [3 x i8]* %sp6.192
  %next6.192 = getelementptr [22 x i8], [22 x i8]* %sp192, i32 0, i32 19
  
;-------------------------------
; Replace: %s7.192 = load [3 x i8], [3 x i8]* @str.7.192
  %cipher.ptr.762 = alloca [5 x i8]
  store [5 x i8] c"\4f\57\74\75\00", [5 x i8]* %cipher.ptr.762
  %cipher.762 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.762, i32 0, i32 0
  %plain.ptr.762 = tail call i8* @base64_decode(i8* %cipher.762)
  %spi762 = bitcast i8* %plain.ptr.762 to [3 x i8]*
  %s7.192 = load [3 x i8], [3 x i8]* %spi762
;-------------------------------
  %sp7.192 = bitcast i8* %next6.192 to [3 x i8]*
  store [3 x i8] %s7.192, [3 x i8]* %sp7.192

  %spi192 = load [22 x i8], [22 x i8]* %sp192
  store [22 x i8] %spi192, [22 x i8]* %sp1.57
;-------------------------------
  %sp1.1.57 = bitcast [22 x i8]* %sp1.57 to i176*
  %i1.57 = load i176, i176* %sp1.1.57

  %xp57 = xor i176 %i0.57, %i1.57

  %fi.57 = alloca i176
  store i176 %xp57, i176* %fi.57

  %spi57 = bitcast i176* %fi.57 to [22 x i8]*
  %spi.bis.138 = ptrtoint[22 x i8]* %spi57 to i32
;-------------------------------
  store i32 %spi.bis.138, i32* %28, align 16
  %tmp2_v3.i.i.i.i = add i32 %tmp0_v.i39.i, -132
  %29 = inttoptr i32 %tmp2_v3.i.i.i.i to i32*
  store i32 134517301, i32* %29, align 4
  %arg.i.i.i.i = load i32, i32* %28, align 16
  %30 = inttoptr i32 %arg.i.i.i.i to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp91 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %30)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast91= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.226 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.226
  %cipher.226 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.226, i32 0, i32 0
  %plain.ptr.226 = tail call i8* @base64_decode(i8* %cipher.226)
  %spi226 = bitcast i8* %plain.ptr.226 to [1 x i8]*
  %cast91= getelementptr [1 x i8], [1 x i8]* %spi226, i64 0, i64 0
;-------------------------------
  %31 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast91)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
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
;-------------------------------
;---Replaced puts with printf---
  %fp92 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %37)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast92= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.227 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.227
  %cipher.227 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.227, i32 0, i32 0
  %plain.ptr.227 = tail call i8* @base64_decode(i8* %cipher.227)
  %spi227 = bitcast i8* %plain.ptr.227 to [1 x i8]*
  %cast92= getelementptr [1 x i8], [1 x i8]* %spi227, i64 0, i64 0
;-------------------------------
  %38 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast92)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  ret void
}
define internal fastcc void @find_array_length464(i32 %arg_esp) unnamed_addr  norecurse  !retregs !51 {
  %tmp2_v.i29.i = add i32 %arg_esp, 4
  %tmp0_v.i30.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i32.i = add i32 %tmp0_v.i30.i, -4
  %3 = inttoptr i32 %tmp2_v3.i32.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i33.i = add i32 %tmp0_v.i30.i, -8
  %4 = inttoptr i32 %tmp2_v4.i33.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i35.i = add i32 %tmp0_v.i30.i, -12
  %5 = inttoptr i32 %tmp2_v5.i35.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i37.i = add i32 %tmp0_v.i30.i, -16
  %6 = inttoptr i32 %tmp2_v6.i37.i to i32*
  store i32 %tmp2_v.i29.i, i32* %6, align 16
  %tmp2_v8.i38.i = add i32 %tmp0_v.i30.i, -100
  %7 = inttoptr i32 %tmp2_v8.i38.i to i32*
  store i32 134517331, i32* %7, align 4
  %tmp2_v.i14.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i14.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i17.i = add i32 %tmp0_v.i30.i, -84
  %10 = inttoptr i32 %tmp2_v2.i17.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp4_v.i18.i.b = load i1, i1* @segs.0, align 1
  %11 = inttoptr i32 %arg_esp to i32*
  %12 = load i32, i32* %11, align 4
  %tmp2_v5.i.i = add i32 %tmp0_v.i30.i, -20
  %13 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 %12, i32* %13, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i30.i, -72
  %14 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 9, i32* %14, align 8
  %tmp2_v7.i.i = add i32 %tmp0_v.i30.i, -56
  %15 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1, i32* %15, align 8
  %tmp2_v8.i.i = add i32 %tmp0_v.i30.i, -52
  %16 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 2, i32* %16, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i30.i, -48
  %17 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3, i32* %17, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i30.i, -44
  %18 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 4, i32* %18, align 4
  %tmp2_v11.i.i = add i32 %tmp0_v.i30.i, -40
  %19 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 5, i32* %19, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i30.i, -36
  %20 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 6, i32* %20, align 4
  %tmp2_v13.i.i = add i32 %tmp0_v.i30.i, -32
  %21 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 7, i32* %21, align 16
  %tmp2_v14.i.i = add i32 %tmp0_v.i30.i, -28
  %22 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 8, i32* %22, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i30.i, -24
  %23 = inttoptr i32 %tmp2_v15.i.i to i32*
  store i32 9, i32* %23, align 8
  %tmp2_v16.i.i = add i32 %tmp0_v.i30.i, -68
  %24 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 9, i32* %24, align 4
  %tmp2_v17.i.i = add i32 %tmp0_v.i30.i, -76
  %25 = inttoptr i32 %tmp2_v17.i.i to i32*
  %tmp2_v5.i75.i = add i32 %tmp0_v.i30.i, -104
  %26 = inttoptr i32 %tmp2_v5.i75.i to i32*
  %tmp2_v8.i78.i = add i32 %tmp0_v.i30.i, -108
  %27 = inttoptr i32 %tmp2_v8.i78.i to i32*
  %tmp2_v10.i81.i = add i32 %tmp0_v.i30.i, -112
  %28 = inttoptr i32 %tmp2_v10.i81.i to i32*
  %tmp2_v11.i82.i = add i32 %tmp0_v.i30.i, -116
  %29 = inttoptr i32 %tmp2_v11.i82.i to i32*
  store i32 0, i32* %25, align 4
  br label %BB_80492C2.i

BB_80492EB.i:                                     ; preds = %BB_80492C2.i
  %30 = trunc i64 %70 to i32
  %31 = load i32, i32* %24, align 4
  store i32 %31, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.462 = ptrtoint[12 x i8]* @str.bis.462 to i32
  %sp0.67 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\25\15\18\29\3B\26\59\46\6C\07\60\76", [12 x i8]* %sp0.67
  %sp193 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.193 = load [1 x i8], [1 x i8]* @str.0.193
  %cipher.ptr.768 = alloca [5 x i8]
  store [5 x i8] c"\4a\51\3d\3d\00", [5 x i8]* %cipher.ptr.768
  %cipher.768 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.768, i32 0, i32 0
  %plain.ptr.768 = tail call i8* @base64_decode(i8* %cipher.768)
  %spi768 = bitcast i8* %plain.ptr.768 to [1 x i8]*
  %s0.193 = load [1 x i8], [1 x i8]* %spi768
;-------------------------------
  %sp0.193 = bitcast [12 x i8]* %sp193 to [1 x i8]*
  store [1 x i8] %s0.193, [1 x i8]* %sp0.193
  %next0.193 = getelementptr [12 x i8], [12 x i8]* %sp193, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.193 = load [2 x i8], [2 x i8]* @str.1.193
  %cipher.ptr.769 = alloca [5 x i8]
  store [5 x i8] c"\46\52\67\3d\00", [5 x i8]* %cipher.ptr.769
  %cipher.769 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.769, i32 0, i32 0
  %plain.ptr.769 = tail call i8* @base64_decode(i8* %cipher.769)
  %spi769 = bitcast i8* %plain.ptr.769 to [2 x i8]*
  %s1.193 = load [2 x i8], [2 x i8]* %spi769
;-------------------------------
  %sp1.193 = bitcast i8* %next0.193 to [2 x i8]*
  store [2 x i8] %s1.193, [2 x i8]* %sp1.193
  %next1.193 = getelementptr [12 x i8], [12 x i8]* %sp193, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.193 = load [1 x i8], [1 x i8]* @str.2.193
  %cipher.ptr.766 = alloca [5 x i8]
  store [5 x i8] c"\4b\51\3d\3d\00", [5 x i8]* %cipher.ptr.766
  %cipher.766 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.766, i32 0, i32 0
  %plain.ptr.766 = tail call i8* @base64_decode(i8* %cipher.766)
  %spi766 = bitcast i8* %plain.ptr.766 to [1 x i8]*
  %s2.193 = load [1 x i8], [1 x i8]* %spi766
;-------------------------------
  %sp2.193 = bitcast i8* %next1.193 to [1 x i8]*
  store [1 x i8] %s2.193, [1 x i8]* %sp2.193
  %next2.193 = getelementptr [12 x i8], [12 x i8]* %sp193, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.193 = load [2 x i8], [2 x i8]* @str.3.193
  %cipher.ptr.770 = alloca [5 x i8]
  store [5 x i8] c"\4f\79\59\3d\00", [5 x i8]* %cipher.ptr.770
  %cipher.770 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.770, i32 0, i32 0
  %plain.ptr.770 = tail call i8* @base64_decode(i8* %cipher.770)
  %spi770 = bitcast i8* %plain.ptr.770 to [2 x i8]*
  %s3.193 = load [2 x i8], [2 x i8]* %spi770
;-------------------------------
  %sp3.193 = bitcast i8* %next2.193 to [2 x i8]*
  store [2 x i8] %s3.193, [2 x i8]* %sp3.193
  %next3.193 = getelementptr [12 x i8], [12 x i8]* %sp193, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.193 = load [1 x i8], [1 x i8]* @str.4.193
  %cipher.ptr.773 = alloca [5 x i8]
  store [5 x i8] c"\57\51\3d\3d\00", [5 x i8]* %cipher.ptr.773
  %cipher.773 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.773, i32 0, i32 0
  %plain.ptr.773 = tail call i8* @base64_decode(i8* %cipher.773)
  %spi773 = bitcast i8* %plain.ptr.773 to [1 x i8]*
  %s4.193 = load [1 x i8], [1 x i8]* %spi773
;-------------------------------
  %sp4.193 = bitcast i8* %next3.193 to [1 x i8]*
  store [1 x i8] %s4.193, [1 x i8]* %sp4.193
  %next4.193 = getelementptr [12 x i8], [12 x i8]* %sp193, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.193 = load [2 x i8], [2 x i8]* @str.5.193
  %cipher.ptr.771 = alloca [5 x i8]
  store [5 x i8] c"\52\6d\77\3d\00", [5 x i8]* %cipher.ptr.771
  %cipher.771 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.771, i32 0, i32 0
  %plain.ptr.771 = tail call i8* @base64_decode(i8* %cipher.771)
  %spi771 = bitcast i8* %plain.ptr.771 to [2 x i8]*
  %s5.193 = load [2 x i8], [2 x i8]* %spi771
;-------------------------------
  %sp5.193 = bitcast i8* %next4.193 to [2 x i8]*
  store [2 x i8] %s5.193, [2 x i8]* %sp5.193
  %next5.193 = getelementptr [12 x i8], [12 x i8]* %sp193, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.193 = load [1 x i8], [1 x i8]* @str.6.193
  %cipher.ptr.767 = alloca [5 x i8]
  store [5 x i8] c"\42\77\3d\3d\00", [5 x i8]* %cipher.ptr.767
  %cipher.767 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.767, i32 0, i32 0
  %plain.ptr.767 = tail call i8* @base64_decode(i8* %cipher.767)
  %spi767 = bitcast i8* %plain.ptr.767 to [1 x i8]*
  %s6.193 = load [1 x i8], [1 x i8]* %spi767
;-------------------------------
  %sp6.193 = bitcast i8* %next5.193 to [1 x i8]*
  store [1 x i8] %s6.193, [1 x i8]* %sp6.193
  %next6.193 = getelementptr [12 x i8], [12 x i8]* %sp193, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.193 = load [2 x i8], [2 x i8]* @str.7.193
  %cipher.ptr.772 = alloca [5 x i8]
  store [5 x i8] c"\59\48\59\3d\00", [5 x i8]* %cipher.ptr.772
  %cipher.772 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.772, i32 0, i32 0
  %plain.ptr.772 = tail call i8* @base64_decode(i8* %cipher.772)
  %spi772 = bitcast i8* %plain.ptr.772 to [2 x i8]*
  %s7.193 = load [2 x i8], [2 x i8]* %spi772
;-------------------------------
  %sp7.193 = bitcast i8* %next6.193 to [2 x i8]*
  store [2 x i8] %s7.193, [2 x i8]* %sp7.193

  %spi193 = load [12 x i8], [12 x i8]* %sp193
  store [12 x i8] %spi193, [12 x i8]* %sp0.67
;-------------------------------
  %sp0.1.67 = bitcast [12 x i8]* %sp0.67 to i96*
  %i0.67 = load i96, i96* %sp0.1.67

  %sp1.67 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\49\70\76\4e\4f\4e\63\66\49\63\6a\76", [12 x i8]* %sp1.67
  %sp194 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.194 = load [1 x i8], [1 x i8]* @str.0.194
  %cipher.ptr.780 = alloca [5 x i8]
  store [5 x i8] c"\53\51\3d\3d\00", [5 x i8]* %cipher.ptr.780
  %cipher.780 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.780, i32 0, i32 0
  %plain.ptr.780 = tail call i8* @base64_decode(i8* %cipher.780)
  %spi780 = bitcast i8* %plain.ptr.780 to [1 x i8]*
  %s0.194 = load [1 x i8], [1 x i8]* %spi780
;-------------------------------
  %sp0.194 = bitcast [12 x i8]* %sp194 to [1 x i8]*
  store [1 x i8] %s0.194, [1 x i8]* %sp0.194
  %next0.194 = getelementptr [12 x i8], [12 x i8]* %sp194, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.194 = load [2 x i8], [2 x i8]* @str.1.194
  %cipher.ptr.778 = alloca [5 x i8]
  store [5 x i8] c"\63\48\59\3d\00", [5 x i8]* %cipher.ptr.778
  %cipher.778 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.778, i32 0, i32 0
  %plain.ptr.778 = tail call i8* @base64_decode(i8* %cipher.778)
  %spi778 = bitcast i8* %plain.ptr.778 to [2 x i8]*
  %s1.194 = load [2 x i8], [2 x i8]* %spi778
;-------------------------------
  %sp1.194 = bitcast i8* %next0.194 to [2 x i8]*
  store [2 x i8] %s1.194, [2 x i8]* %sp1.194
  %next1.194 = getelementptr [12 x i8], [12 x i8]* %sp194, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.194 = load [1 x i8], [1 x i8]* @str.2.194
  %cipher.ptr.781 = alloca [5 x i8]
  store [5 x i8] c"\54\67\3d\3d\00", [5 x i8]* %cipher.ptr.781
  %cipher.781 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.781, i32 0, i32 0
  %plain.ptr.781 = tail call i8* @base64_decode(i8* %cipher.781)
  %spi781 = bitcast i8* %plain.ptr.781 to [1 x i8]*
  %s2.194 = load [1 x i8], [1 x i8]* %spi781
;-------------------------------
  %sp2.194 = bitcast i8* %next1.194 to [1 x i8]*
  store [1 x i8] %s2.194, [1 x i8]* %sp2.194
  %next2.194 = getelementptr [12 x i8], [12 x i8]* %sp194, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.194 = load [2 x i8], [2 x i8]* @str.3.194
  %cipher.ptr.779 = alloca [5 x i8]
  store [5 x i8] c"\54\30\34\3d\00", [5 x i8]* %cipher.ptr.779
  %cipher.779 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.779, i32 0, i32 0
  %plain.ptr.779 = tail call i8* @base64_decode(i8* %cipher.779)
  %spi779 = bitcast i8* %plain.ptr.779 to [2 x i8]*
  %s3.194 = load [2 x i8], [2 x i8]* %spi779
;-------------------------------
  %sp3.194 = bitcast i8* %next2.194 to [2 x i8]*
  store [2 x i8] %s3.194, [2 x i8]* %sp3.194
  %next3.194 = getelementptr [12 x i8], [12 x i8]* %sp194, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.194 = load [1 x i8], [1 x i8]* @str.4.194
  %cipher.ptr.774 = alloca [5 x i8]
  store [5 x i8] c"\59\77\3d\3d\00", [5 x i8]* %cipher.ptr.774
  %cipher.774 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.774, i32 0, i32 0
  %plain.ptr.774 = tail call i8* @base64_decode(i8* %cipher.774)
  %spi774 = bitcast i8* %plain.ptr.774 to [1 x i8]*
  %s4.194 = load [1 x i8], [1 x i8]* %spi774
;-------------------------------
  %sp4.194 = bitcast i8* %next3.194 to [1 x i8]*
  store [1 x i8] %s4.194, [1 x i8]* %sp4.194
  %next4.194 = getelementptr [12 x i8], [12 x i8]* %sp194, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.194 = load [2 x i8], [2 x i8]* @str.5.194
  %cipher.ptr.776 = alloca [5 x i8]
  store [5 x i8] c"\5a\6b\6b\3d\00", [5 x i8]* %cipher.ptr.776
  %cipher.776 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.776, i32 0, i32 0
  %plain.ptr.776 = tail call i8* @base64_decode(i8* %cipher.776)
  %spi776 = bitcast i8* %plain.ptr.776 to [2 x i8]*
  %s5.194 = load [2 x i8], [2 x i8]* %spi776
;-------------------------------
  %sp5.194 = bitcast i8* %next4.194 to [2 x i8]*
  store [2 x i8] %s5.194, [2 x i8]* %sp5.194
  %next5.194 = getelementptr [12 x i8], [12 x i8]* %sp194, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.194 = load [1 x i8], [1 x i8]* @str.6.194
  %cipher.ptr.775 = alloca [5 x i8]
  store [5 x i8] c"\59\77\3d\3d\00", [5 x i8]* %cipher.ptr.775
  %cipher.775 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.775, i32 0, i32 0
  %plain.ptr.775 = tail call i8* @base64_decode(i8* %cipher.775)
  %spi775 = bitcast i8* %plain.ptr.775 to [1 x i8]*
  %s6.194 = load [1 x i8], [1 x i8]* %spi775
;-------------------------------
  %sp6.194 = bitcast i8* %next5.194 to [1 x i8]*
  store [1 x i8] %s6.194, [1 x i8]* %sp6.194
  %next6.194 = getelementptr [12 x i8], [12 x i8]* %sp194, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.194 = load [2 x i8], [2 x i8]* @str.7.194
  %cipher.ptr.777 = alloca [5 x i8]
  store [5 x i8] c"\61\6e\59\3d\00", [5 x i8]* %cipher.ptr.777
  %cipher.777 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.777, i32 0, i32 0
  %plain.ptr.777 = tail call i8* @base64_decode(i8* %cipher.777)
  %spi777 = bitcast i8* %plain.ptr.777 to [2 x i8]*
  %s7.194 = load [2 x i8], [2 x i8]* %spi777
;-------------------------------
  %sp7.194 = bitcast i8* %next6.194 to [2 x i8]*
  store [2 x i8] %s7.194, [2 x i8]* %sp7.194

  %spi194 = load [12 x i8], [12 x i8]* %sp194
  store [12 x i8] %spi194, [12 x i8]* %sp1.67
;-------------------------------
  %sp1.1.67 = bitcast [12 x i8]* %sp1.67 to i96*
  %i1.67 = load i96, i96* %sp1.1.67

  %xp67 = xor i96 %i0.67, %i1.67

  %fi.67 = alloca i96
  store i96 %xp67, i96* %fi.67

  %spi67 = bitcast i96* %fi.67 to [12 x i8]*
  %spi.bis.462 = ptrtoint[12 x i8]* %spi67 to i32
;-------------------------------
  store i32 %spi.bis.462, i32* %28, align 16
  store i32 134517501, i32* %29, align 4
  %32 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %30, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  store i32 36, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.461 = ptrtoint[19 x i8]* @str.bis.461 to i32
  %sp0.66 = alloca [19 x i8]
;-------------------------------
; Replace: store [19 x i8] c"\21\5E\2F\3C\5D\53\52\50\46\06\25\34\6C\49\73\17\06\53\6B", [19 x i8]* %sp0.66
  %sp195 = alloca [19 x i8]
  
;-------------------------------
; Replace: %s0.195 = load [2 x i8], [2 x i8]* @str.0.195
  %cipher.ptr.784 = alloca [5 x i8]
  store [5 x i8] c"\49\56\34\3d\00", [5 x i8]* %cipher.ptr.784
  %cipher.784 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.784, i32 0, i32 0
  %plain.ptr.784 = tail call i8* @base64_decode(i8* %cipher.784)
  %spi784 = bitcast i8* %plain.ptr.784 to [2 x i8]*
  %s0.195 = load [2 x i8], [2 x i8]* %spi784
;-------------------------------
  %sp0.195 = bitcast [19 x i8]* %sp195 to [2 x i8]*
  store [2 x i8] %s0.195, [2 x i8]* %sp0.195
  %next0.195 = getelementptr [19 x i8], [19 x i8]* %sp195, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.195 = load [2 x i8], [2 x i8]* @str.1.195
  %cipher.ptr.789 = alloca [5 x i8]
  store [5 x i8] c"\4c\7a\77\3d\00", [5 x i8]* %cipher.ptr.789
  %cipher.789 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.789, i32 0, i32 0
  %plain.ptr.789 = tail call i8* @base64_decode(i8* %cipher.789)
  %spi789 = bitcast i8* %plain.ptr.789 to [2 x i8]*
  %s1.195 = load [2 x i8], [2 x i8]* %spi789
;-------------------------------
  %sp1.195 = bitcast i8* %next0.195 to [2 x i8]*
  store [2 x i8] %s1.195, [2 x i8]* %sp1.195
  %next1.195 = getelementptr [19 x i8], [19 x i8]* %sp195, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.195 = load [3 x i8], [3 x i8]* @str.2.195
  %cipher.ptr.786 = alloca [5 x i8]
  store [5 x i8] c"\58\56\4e\53\00", [5 x i8]* %cipher.ptr.786
  %cipher.786 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.786, i32 0, i32 0
  %plain.ptr.786 = tail call i8* @base64_decode(i8* %cipher.786)
  %spi786 = bitcast i8* %plain.ptr.786 to [3 x i8]*
  %s2.195 = load [3 x i8], [3 x i8]* %spi786
;-------------------------------
  %sp2.195 = bitcast i8* %next1.195 to [3 x i8]*
  store [3 x i8] %s2.195, [3 x i8]* %sp2.195
  %next2.195 = getelementptr [19 x i8], [19 x i8]* %sp195, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.195 = load [2 x i8], [2 x i8]* @str.3.195
  %cipher.ptr.785 = alloca [5 x i8]
  store [5 x i8] c"\55\45\59\3d\00", [5 x i8]* %cipher.ptr.785
  %cipher.785 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.785, i32 0, i32 0
  %plain.ptr.785 = tail call i8* @base64_decode(i8* %cipher.785)
  %spi785 = bitcast i8* %plain.ptr.785 to [2 x i8]*
  %s3.195 = load [2 x i8], [2 x i8]* %spi785
;-------------------------------
  %sp3.195 = bitcast i8* %next2.195 to [2 x i8]*
  store [2 x i8] %s3.195, [2 x i8]* %sp3.195
  %next3.195 = getelementptr [19 x i8], [19 x i8]* %sp195, i32 0, i32 9
  
;-------------------------------
; Replace: %s4.195 = load [2 x i8], [2 x i8]* @str.4.195
  %cipher.ptr.783 = alloca [5 x i8]
  store [5 x i8] c"\42\69\55\3d\00", [5 x i8]* %cipher.ptr.783
  %cipher.783 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.783, i32 0, i32 0
  %plain.ptr.783 = tail call i8* @base64_decode(i8* %cipher.783)
  %spi783 = bitcast i8* %plain.ptr.783 to [2 x i8]*
  %s4.195 = load [2 x i8], [2 x i8]* %spi783
;-------------------------------
  %sp4.195 = bitcast i8* %next3.195 to [2 x i8]*
  store [2 x i8] %s4.195, [2 x i8]* %sp4.195
  %next4.195 = getelementptr [19 x i8], [19 x i8]* %sp195, i32 0, i32 11
  
;-------------------------------
; Replace: %s5.195 = load [3 x i8], [3 x i8]* @str.5.195
  %cipher.ptr.788 = alloca [5 x i8]
  store [5 x i8] c"\4e\47\78\4a\00", [5 x i8]* %cipher.ptr.788
  %cipher.788 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.788, i32 0, i32 0
  %plain.ptr.788 = tail call i8* @base64_decode(i8* %cipher.788)
  %spi788 = bitcast i8* %plain.ptr.788 to [3 x i8]*
  %s5.195 = load [3 x i8], [3 x i8]* %spi788
;-------------------------------
  %sp5.195 = bitcast i8* %next4.195 to [3 x i8]*
  store [3 x i8] %s5.195, [3 x i8]* %sp5.195
  %next5.195 = getelementptr [19 x i8], [19 x i8]* %sp195, i32 0, i32 14
  
;-------------------------------
; Replace: %s6.195 = load [2 x i8], [2 x i8]* @str.6.195
  %cipher.ptr.782 = alloca [5 x i8]
  store [5 x i8] c"\63\78\63\3d\00", [5 x i8]* %cipher.ptr.782
  %cipher.782 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.782, i32 0, i32 0
  %plain.ptr.782 = tail call i8* @base64_decode(i8* %cipher.782)
  %spi782 = bitcast i8* %plain.ptr.782 to [2 x i8]*
  %s6.195 = load [2 x i8], [2 x i8]* %spi782
;-------------------------------
  %sp6.195 = bitcast i8* %next5.195 to [2 x i8]*
  store [2 x i8] %s6.195, [2 x i8]* %sp6.195
  %next6.195 = getelementptr [19 x i8], [19 x i8]* %sp195, i32 0, i32 16
  
;-------------------------------
; Replace: %s7.195 = load [3 x i8], [3 x i8]* @str.7.195
  %cipher.ptr.787 = alloca [5 x i8]
  store [5 x i8] c"\42\6c\4e\72\00", [5 x i8]* %cipher.ptr.787
  %cipher.787 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.787, i32 0, i32 0
  %plain.ptr.787 = tail call i8* @base64_decode(i8* %cipher.787)
  %spi787 = bitcast i8* %plain.ptr.787 to [3 x i8]*
  %s7.195 = load [3 x i8], [3 x i8]* %spi787
;-------------------------------
  %sp7.195 = bitcast i8* %next6.195 to [3 x i8]*
  store [3 x i8] %s7.195, [3 x i8]* %sp7.195

  %spi195 = load [19 x i8], [19 x i8]* %sp195
  store [19 x i8] %spi195, [19 x i8]* %sp0.66
;-------------------------------
  %sp0.1.66 = bitcast [19 x i8]* %sp0.66 to i152*
  %i0.66 = load i152, i152* %sp0.1.66

  %sp1.66 = alloca [19 x i8]
;-------------------------------
; Replace: store [19 x i8] c"\52\37\55\59\32\35\7a\31\34\74\44\4d\45\73\53\32\62\59\6b", [19 x i8]* %sp1.66
  %sp196 = alloca [19 x i8]
  
;-------------------------------
; Replace: %s0.196 = load [2 x i8], [2 x i8]* @str.0.196
  %cipher.ptr.791 = alloca [5 x i8]
  store [5 x i8] c"\55\6a\63\3d\00", [5 x i8]* %cipher.ptr.791
  %cipher.791 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.791, i32 0, i32 0
  %plain.ptr.791 = tail call i8* @base64_decode(i8* %cipher.791)
  %spi791 = bitcast i8* %plain.ptr.791 to [2 x i8]*
  %s0.196 = load [2 x i8], [2 x i8]* %spi791
;-------------------------------
  %sp0.196 = bitcast [19 x i8]* %sp196 to [2 x i8]*
  store [2 x i8] %s0.196, [2 x i8]* %sp0.196
  %next0.196 = getelementptr [19 x i8], [19 x i8]* %sp196, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.196 = load [2 x i8], [2 x i8]* @str.1.196
  %cipher.ptr.790 = alloca [5 x i8]
  store [5 x i8] c"\56\56\6b\3d\00", [5 x i8]* %cipher.ptr.790
  %cipher.790 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.790, i32 0, i32 0
  %plain.ptr.790 = tail call i8* @base64_decode(i8* %cipher.790)
  %spi790 = bitcast i8* %plain.ptr.790 to [2 x i8]*
  %s1.196 = load [2 x i8], [2 x i8]* %spi790
;-------------------------------
  %sp1.196 = bitcast i8* %next0.196 to [2 x i8]*
  store [2 x i8] %s1.196, [2 x i8]* %sp1.196
  %next1.196 = getelementptr [19 x i8], [19 x i8]* %sp196, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.196 = load [3 x i8], [3 x i8]* @str.2.196
  %cipher.ptr.796 = alloca [5 x i8]
  store [5 x i8] c"\4d\6a\56\36\00", [5 x i8]* %cipher.ptr.796
  %cipher.796 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.796, i32 0, i32 0
  %plain.ptr.796 = tail call i8* @base64_decode(i8* %cipher.796)
  %spi796 = bitcast i8* %plain.ptr.796 to [3 x i8]*
  %s2.196 = load [3 x i8], [3 x i8]* %spi796
;-------------------------------
  %sp2.196 = bitcast i8* %next1.196 to [3 x i8]*
  store [3 x i8] %s2.196, [3 x i8]* %sp2.196
  %next2.196 = getelementptr [19 x i8], [19 x i8]* %sp196, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.196 = load [2 x i8], [2 x i8]* @str.3.196
  %cipher.ptr.795 = alloca [5 x i8]
  store [5 x i8] c"\4d\54\51\3d\00", [5 x i8]* %cipher.ptr.795
  %cipher.795 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.795, i32 0, i32 0
  %plain.ptr.795 = tail call i8* @base64_decode(i8* %cipher.795)
  %spi795 = bitcast i8* %plain.ptr.795 to [2 x i8]*
  %s3.196 = load [2 x i8], [2 x i8]* %spi795
;-------------------------------
  %sp3.196 = bitcast i8* %next2.196 to [2 x i8]*
  store [2 x i8] %s3.196, [2 x i8]* %sp3.196
  %next3.196 = getelementptr [19 x i8], [19 x i8]* %sp196, i32 0, i32 9
  
;-------------------------------
; Replace: %s4.196 = load [2 x i8], [2 x i8]* @str.4.196
  %cipher.ptr.794 = alloca [5 x i8]
  store [5 x i8] c"\64\45\51\3d\00", [5 x i8]* %cipher.ptr.794
  %cipher.794 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.794, i32 0, i32 0
  %plain.ptr.794 = tail call i8* @base64_decode(i8* %cipher.794)
  %spi794 = bitcast i8* %plain.ptr.794 to [2 x i8]*
  %s4.196 = load [2 x i8], [2 x i8]* %spi794
;-------------------------------
  %sp4.196 = bitcast i8* %next3.196 to [2 x i8]*
  store [2 x i8] %s4.196, [2 x i8]* %sp4.196
  %next4.196 = getelementptr [19 x i8], [19 x i8]* %sp196, i32 0, i32 11
  
;-------------------------------
; Replace: %s5.196 = load [3 x i8], [3 x i8]* @str.5.196
  %cipher.ptr.797 = alloca [5 x i8]
  store [5 x i8] c"\54\55\56\7a\00", [5 x i8]* %cipher.ptr.797
  %cipher.797 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.797, i32 0, i32 0
  %plain.ptr.797 = tail call i8* @base64_decode(i8* %cipher.797)
  %spi797 = bitcast i8* %plain.ptr.797 to [3 x i8]*
  %s5.196 = load [3 x i8], [3 x i8]* %spi797
;-------------------------------
  %sp5.196 = bitcast i8* %next4.196 to [3 x i8]*
  store [3 x i8] %s5.196, [3 x i8]* %sp5.196
  %next5.196 = getelementptr [19 x i8], [19 x i8]* %sp196, i32 0, i32 14
  
;-------------------------------
; Replace: %s6.196 = load [2 x i8], [2 x i8]* @str.6.196
  %cipher.ptr.792 = alloca [5 x i8]
  store [5 x i8] c"\55\7a\49\3d\00", [5 x i8]* %cipher.ptr.792
  %cipher.792 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.792, i32 0, i32 0
  %plain.ptr.792 = tail call i8* @base64_decode(i8* %cipher.792)
  %spi792 = bitcast i8* %plain.ptr.792 to [2 x i8]*
  %s6.196 = load [2 x i8], [2 x i8]* %spi792
;-------------------------------
  %sp6.196 = bitcast i8* %next5.196 to [2 x i8]*
  store [2 x i8] %s6.196, [2 x i8]* %sp6.196
  %next6.196 = getelementptr [19 x i8], [19 x i8]* %sp196, i32 0, i32 16
  
;-------------------------------
; Replace: %s7.196 = load [3 x i8], [3 x i8]* @str.7.196
  %cipher.ptr.793 = alloca [5 x i8]
  store [5 x i8] c"\59\6c\6c\72\00", [5 x i8]* %cipher.ptr.793
  %cipher.793 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.793, i32 0, i32 0
  %plain.ptr.793 = tail call i8* @base64_decode(i8* %cipher.793)
  %spi793 = bitcast i8* %plain.ptr.793 to [3 x i8]*
  %s7.196 = load [3 x i8], [3 x i8]* %spi793
;-------------------------------
  %sp7.196 = bitcast i8* %next6.196 to [3 x i8]*
  store [3 x i8] %s7.196, [3 x i8]* %sp7.196

  %spi196 = load [19 x i8], [19 x i8]* %sp196
  store [19 x i8] %spi196, [19 x i8]* %sp1.66
;-------------------------------
  %sp1.1.66 = bitcast [19 x i8]* %sp1.66 to i152*
  %i1.66 = load i152, i152* %sp1.1.66

  %xp66 = xor i152 %i0.66, %i1.66

  %fi.66 = alloca i152
  store i152 %xp66, i152* %fi.66

  %spi66 = bitcast i152* %fi.66 to [19 x i8]*
  %spi.bis.461 = ptrtoint[19 x i8]* %spi66 to i32
;-------------------------------
  store i32 %spi.bis.461, i32* %28, align 16
  store i32 134517521, i32* %29, align 4
  %35 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %34, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i32
  store i32 4, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.460 = ptrtoint[17 x i8]* @str.bis.460 to i32
  %sp0.65 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\3B\22\43\11\1A\00\6D\5F\22\3C\4C\03\64\76\2C\7B\69", [17 x i8]* %sp0.65
  %sp197 = alloca [17 x i8]
  
;-------------------------------
; Replace: %s0.197 = load [2 x i8], [2 x i8]* @str.0.197
  %cipher.ptr.799 = alloca [5 x i8]
  store [5 x i8] c"\4f\79\49\3d\00", [5 x i8]* %cipher.ptr.799
  %cipher.799 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.799, i32 0, i32 0
  %plain.ptr.799 = tail call i8* @base64_decode(i8* %cipher.799)
  %spi799 = bitcast i8* %plain.ptr.799 to [2 x i8]*
  %s0.197 = load [2 x i8], [2 x i8]* %spi799
;-------------------------------
  %sp0.197 = bitcast [17 x i8]* %sp197 to [2 x i8]*
  store [2 x i8] %s0.197, [2 x i8]* %sp0.197
  %next0.197 = getelementptr [17 x i8], [17 x i8]* %sp197, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.197 = load [2 x i8], [2 x i8]* @str.1.197
  %cipher.ptr.800 = alloca [5 x i8]
  store [5 x i8] c"\51\78\45\3d\00", [5 x i8]* %cipher.ptr.800
  %cipher.800 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.800, i32 0, i32 0
  %plain.ptr.800 = tail call i8* @base64_decode(i8* %cipher.800)
  %spi800 = bitcast i8* %plain.ptr.800 to [2 x i8]*
  %s1.197 = load [2 x i8], [2 x i8]* %spi800
;-------------------------------
  %sp1.197 = bitcast i8* %next0.197 to [2 x i8]*
  store [2 x i8] %s1.197, [2 x i8]* %sp1.197
  %next1.197 = getelementptr [17 x i8], [17 x i8]* %sp197, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.197 = load [2 x i8], [2 x i8]* @str.2.197
  %cipher.ptr.802 = alloca [5 x i8]
  store [5 x i8] c"\47\67\41\3d\00", [5 x i8]* %cipher.ptr.802
  %cipher.802 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.802, i32 0, i32 0
  %plain.ptr.802 = tail call i8* @base64_decode(i8* %cipher.802)
  %spi802 = bitcast i8* %plain.ptr.802 to [2 x i8]*
  %s2.197 = load [2 x i8], [2 x i8]* %spi802
;-------------------------------
  %sp2.197 = bitcast i8* %next1.197 to [2 x i8]*
  store [2 x i8] %s2.197, [2 x i8]* %sp2.197
  %next2.197 = getelementptr [17 x i8], [17 x i8]* %sp197, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.197 = load [2 x i8], [2 x i8]* @str.3.197
  %cipher.ptr.801 = alloca [5 x i8]
  store [5 x i8] c"\62\56\38\3d\00", [5 x i8]* %cipher.ptr.801
  %cipher.801 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.801, i32 0, i32 0
  %plain.ptr.801 = tail call i8* @base64_decode(i8* %cipher.801)
  %spi801 = bitcast i8* %plain.ptr.801 to [2 x i8]*
  %s3.197 = load [2 x i8], [2 x i8]* %spi801
;-------------------------------
  %sp3.197 = bitcast i8* %next2.197 to [2 x i8]*
  store [2 x i8] %s3.197, [2 x i8]* %sp3.197
  %next3.197 = getelementptr [17 x i8], [17 x i8]* %sp197, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.197 = load [2 x i8], [2 x i8]* @str.4.197
  %cipher.ptr.803 = alloca [5 x i8]
  store [5 x i8] c"\49\6a\77\3d\00", [5 x i8]* %cipher.ptr.803
  %cipher.803 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.803, i32 0, i32 0
  %plain.ptr.803 = tail call i8* @base64_decode(i8* %cipher.803)
  %spi803 = bitcast i8* %plain.ptr.803 to [2 x i8]*
  %s4.197 = load [2 x i8], [2 x i8]* %spi803
;-------------------------------
  %sp4.197 = bitcast i8* %next3.197 to [2 x i8]*
  store [2 x i8] %s4.197, [2 x i8]* %sp4.197
  %next4.197 = getelementptr [17 x i8], [17 x i8]* %sp197, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.197 = load [2 x i8], [2 x i8]* @str.5.197
  %cipher.ptr.805 = alloca [5 x i8]
  store [5 x i8] c"\54\41\4d\3d\00", [5 x i8]* %cipher.ptr.805
  %cipher.805 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.805, i32 0, i32 0
  %plain.ptr.805 = tail call i8* @base64_decode(i8* %cipher.805)
  %spi805 = bitcast i8* %plain.ptr.805 to [2 x i8]*
  %s5.197 = load [2 x i8], [2 x i8]* %spi805
;-------------------------------
  %sp5.197 = bitcast i8* %next4.197 to [2 x i8]*
  store [2 x i8] %s5.197, [2 x i8]* %sp5.197
  %next5.197 = getelementptr [17 x i8], [17 x i8]* %sp197, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.197 = load [2 x i8], [2 x i8]* @str.6.197
  %cipher.ptr.798 = alloca [5 x i8]
  store [5 x i8] c"\5a\48\59\3d\00", [5 x i8]* %cipher.ptr.798
  %cipher.798 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.798, i32 0, i32 0
  %plain.ptr.798 = tail call i8* @base64_decode(i8* %cipher.798)
  %spi798 = bitcast i8* %plain.ptr.798 to [2 x i8]*
  %s6.197 = load [2 x i8], [2 x i8]* %spi798
;-------------------------------
  %sp6.197 = bitcast i8* %next5.197 to [2 x i8]*
  store [2 x i8] %s6.197, [2 x i8]* %sp6.197
  %next6.197 = getelementptr [17 x i8], [17 x i8]* %sp197, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.197 = load [3 x i8], [3 x i8]* @str.7.197
  %cipher.ptr.804 = alloca [5 x i8]
  store [5 x i8] c"\4c\48\74\70\00", [5 x i8]* %cipher.ptr.804
  %cipher.804 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.804, i32 0, i32 0
  %plain.ptr.804 = tail call i8* @base64_decode(i8* %cipher.804)
  %spi804 = bitcast i8* %plain.ptr.804 to [3 x i8]*
  %s7.197 = load [3 x i8], [3 x i8]* %spi804
;-------------------------------
  %sp7.197 = bitcast i8* %next6.197 to [3 x i8]*
  store [3 x i8] %s7.197, [3 x i8]* %sp7.197

  %spi197 = load [17 x i8], [17 x i8]* %sp197
  store [17 x i8] %spi197, [17 x i8]* %sp0.65
;-------------------------------
  %sp0.1.65 = bitcast [17 x i8]* %sp0.65 to i136*
  %i0.65 = load i136, i136* %sp0.1.65

  %sp1.65 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\48\4b\39\74\75\66\45\36\4c\48\65\39\44\53\48\71\69", [17 x i8]* %sp1.65
  %sp198 = alloca [17 x i8]
  
;-------------------------------
; Replace: %s0.198 = load [2 x i8], [2 x i8]* @str.0.198
  %cipher.ptr.808 = alloca [5 x i8]
  store [5 x i8] c"\53\45\73\3d\00", [5 x i8]* %cipher.ptr.808
  %cipher.808 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.808, i32 0, i32 0
  %plain.ptr.808 = tail call i8* @base64_decode(i8* %cipher.808)
  %spi808 = bitcast i8* %plain.ptr.808 to [2 x i8]*
  %s0.198 = load [2 x i8], [2 x i8]* %spi808
;-------------------------------
  %sp0.198 = bitcast [17 x i8]* %sp198 to [2 x i8]*
  store [2 x i8] %s0.198, [2 x i8]* %sp0.198
  %next0.198 = getelementptr [17 x i8], [17 x i8]* %sp198, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.198 = load [2 x i8], [2 x i8]* @str.1.198
  %cipher.ptr.810 = alloca [5 x i8]
  store [5 x i8] c"\4f\58\51\3d\00", [5 x i8]* %cipher.ptr.810
  %cipher.810 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.810, i32 0, i32 0
  %plain.ptr.810 = tail call i8* @base64_decode(i8* %cipher.810)
  %spi810 = bitcast i8* %plain.ptr.810 to [2 x i8]*
  %s1.198 = load [2 x i8], [2 x i8]* %spi810
;-------------------------------
  %sp1.198 = bitcast i8* %next0.198 to [2 x i8]*
  store [2 x i8] %s1.198, [2 x i8]* %sp1.198
  %next1.198 = getelementptr [17 x i8], [17 x i8]* %sp198, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.198 = load [2 x i8], [2 x i8]* @str.2.198
  %cipher.ptr.807 = alloca [5 x i8]
  store [5 x i8] c"\64\57\59\3d\00", [5 x i8]* %cipher.ptr.807
  %cipher.807 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.807, i32 0, i32 0
  %plain.ptr.807 = tail call i8* @base64_decode(i8* %cipher.807)
  %spi807 = bitcast i8* %plain.ptr.807 to [2 x i8]*
  %s2.198 = load [2 x i8], [2 x i8]* %spi807
;-------------------------------
  %sp2.198 = bitcast i8* %next1.198 to [2 x i8]*
  store [2 x i8] %s2.198, [2 x i8]* %sp2.198
  %next2.198 = getelementptr [17 x i8], [17 x i8]* %sp198, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.198 = load [2 x i8], [2 x i8]* @str.3.198
  %cipher.ptr.811 = alloca [5 x i8]
  store [5 x i8] c"\52\54\59\3d\00", [5 x i8]* %cipher.ptr.811
  %cipher.811 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.811, i32 0, i32 0
  %plain.ptr.811 = tail call i8* @base64_decode(i8* %cipher.811)
  %spi811 = bitcast i8* %plain.ptr.811 to [2 x i8]*
  %s3.198 = load [2 x i8], [2 x i8]* %spi811
;-------------------------------
  %sp3.198 = bitcast i8* %next2.198 to [2 x i8]*
  store [2 x i8] %s3.198, [2 x i8]* %sp3.198
  %next3.198 = getelementptr [17 x i8], [17 x i8]* %sp198, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.198 = load [2 x i8], [2 x i8]* @str.4.198
  %cipher.ptr.809 = alloca [5 x i8]
  store [5 x i8] c"\54\45\67\3d\00", [5 x i8]* %cipher.ptr.809
  %cipher.809 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.809, i32 0, i32 0
  %plain.ptr.809 = tail call i8* @base64_decode(i8* %cipher.809)
  %spi809 = bitcast i8* %plain.ptr.809 to [2 x i8]*
  %s4.198 = load [2 x i8], [2 x i8]* %spi809
;-------------------------------
  %sp4.198 = bitcast i8* %next3.198 to [2 x i8]*
  store [2 x i8] %s4.198, [2 x i8]* %sp4.198
  %next4.198 = getelementptr [17 x i8], [17 x i8]* %sp198, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.198 = load [2 x i8], [2 x i8]* @str.5.198
  %cipher.ptr.806 = alloca [5 x i8]
  store [5 x i8] c"\5a\54\6b\3d\00", [5 x i8]* %cipher.ptr.806
  %cipher.806 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.806, i32 0, i32 0
  %plain.ptr.806 = tail call i8* @base64_decode(i8* %cipher.806)
  %spi806 = bitcast i8* %plain.ptr.806 to [2 x i8]*
  %s5.198 = load [2 x i8], [2 x i8]* %spi806
;-------------------------------
  %sp5.198 = bitcast i8* %next4.198 to [2 x i8]*
  store [2 x i8] %s5.198, [2 x i8]* %sp5.198
  %next5.198 = getelementptr [17 x i8], [17 x i8]* %sp198, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.198 = load [2 x i8], [2 x i8]* @str.6.198
  %cipher.ptr.812 = alloca [5 x i8]
  store [5 x i8] c"\52\46\4d\3d\00", [5 x i8]* %cipher.ptr.812
  %cipher.812 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.812, i32 0, i32 0
  %plain.ptr.812 = tail call i8* @base64_decode(i8* %cipher.812)
  %spi812 = bitcast i8* %plain.ptr.812 to [2 x i8]*
  %s6.198 = load [2 x i8], [2 x i8]* %spi812
;-------------------------------
  %sp6.198 = bitcast i8* %next5.198 to [2 x i8]*
  store [2 x i8] %s6.198, [2 x i8]* %sp6.198
  %next6.198 = getelementptr [17 x i8], [17 x i8]* %sp198, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.198 = load [3 x i8], [3 x i8]* @str.7.198
  %cipher.ptr.813 = alloca [5 x i8]
  store [5 x i8] c"\53\48\46\70\00", [5 x i8]* %cipher.ptr.813
  %cipher.813 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.813, i32 0, i32 0
  %plain.ptr.813 = tail call i8* @base64_decode(i8* %cipher.813)
  %spi813 = bitcast i8* %plain.ptr.813 to [3 x i8]*
  %s7.198 = load [3 x i8], [3 x i8]* %spi813
;-------------------------------
  %sp7.198 = bitcast i8* %next6.198 to [3 x i8]*
  store [3 x i8] %s7.198, [3 x i8]* %sp7.198

  %spi198 = load [17 x i8], [17 x i8]* %sp198
  store [17 x i8] %spi198, [17 x i8]* %sp1.65
;-------------------------------
  %sp1.1.65 = bitcast [17 x i8]* %sp1.65 to i136*
  %i1.65 = load i136, i136* %sp1.1.65

  %xp65 = xor i136 %i0.65, %i1.65

  %fi.65 = alloca i136
  store i136 %xp65, i136* %fi.65

  %spi65 = bitcast i136* %fi.65 to [17 x i8]*
  %spi.bis.460 = ptrtoint[17 x i8]* %spi65 to i32
;-------------------------------
  store i32 %spi.bis.460, i32* %28, align 16
  store i32 134517541, i32* %29, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %37, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  store i32 8, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.459 = ptrtoint[20 x i8]* @str.bis.459 to i32
  %sp0.64 = alloca [20 x i8]
;-------------------------------
; Replace: store [20 x i8] c"\40\05\03\0B\0E\50\64\30\1F\44\11\25\0C\4A\08\50\72\25\5D\47", [20 x i8]* %sp0.64
  %sp199 = alloca [20 x i8]
  
;-------------------------------
; Replace: %s0.199 = load [2 x i8], [2 x i8]* @str.0.199
  %cipher.ptr.818 = alloca [5 x i8]
  store [5 x i8] c"\51\41\55\3d\00", [5 x i8]* %cipher.ptr.818
  %cipher.818 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.818, i32 0, i32 0
  %plain.ptr.818 = tail call i8* @base64_decode(i8* %cipher.818)
  %spi818 = bitcast i8* %plain.ptr.818 to [2 x i8]*
  %s0.199 = load [2 x i8], [2 x i8]* %spi818
;-------------------------------
  %sp0.199 = bitcast [20 x i8]* %sp199 to [2 x i8]*
  store [2 x i8] %s0.199, [2 x i8]* %sp0.199
  %next0.199 = getelementptr [20 x i8], [20 x i8]* %sp199, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.199 = load [3 x i8], [3 x i8]* @str.1.199
  %cipher.ptr.814 = alloca [5 x i8]
  store [5 x i8] c"\41\77\73\4f\00", [5 x i8]* %cipher.ptr.814
  %cipher.814 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.814, i32 0, i32 0
  %plain.ptr.814 = tail call i8* @base64_decode(i8* %cipher.814)
  %spi814 = bitcast i8* %plain.ptr.814 to [3 x i8]*
  %s1.199 = load [3 x i8], [3 x i8]* %spi814
;-------------------------------
  %sp1.199 = bitcast i8* %next0.199 to [3 x i8]*
  store [3 x i8] %s1.199, [3 x i8]* %sp1.199
  %next1.199 = getelementptr [20 x i8], [20 x i8]* %sp199, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.199 = load [2 x i8], [2 x i8]* @str.2.199
  %cipher.ptr.821 = alloca [5 x i8]
  store [5 x i8] c"\55\47\51\3d\00", [5 x i8]* %cipher.ptr.821
  %cipher.821 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.821, i32 0, i32 0
  %plain.ptr.821 = tail call i8* @base64_decode(i8* %cipher.821)
  %spi821 = bitcast i8* %plain.ptr.821 to [2 x i8]*
  %s2.199 = load [2 x i8], [2 x i8]* %spi821
;-------------------------------
  %sp2.199 = bitcast i8* %next1.199 to [2 x i8]*
  store [2 x i8] %s2.199, [2 x i8]* %sp2.199
  %next2.199 = getelementptr [20 x i8], [20 x i8]* %sp199, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.199 = load [3 x i8], [3 x i8]* @str.3.199
  %cipher.ptr.816 = alloca [5 x i8]
  store [5 x i8] c"\4d\42\39\45\00", [5 x i8]* %cipher.ptr.816
  %cipher.816 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.816, i32 0, i32 0
  %plain.ptr.816 = tail call i8* @base64_decode(i8* %cipher.816)
  %spi816 = bitcast i8* %plain.ptr.816 to [3 x i8]*
  %s3.199 = load [3 x i8], [3 x i8]* %spi816
;-------------------------------
  %sp3.199 = bitcast i8* %next2.199 to [3 x i8]*
  store [3 x i8] %s3.199, [3 x i8]* %sp3.199
  %next3.199 = getelementptr [20 x i8], [20 x i8]* %sp199, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.199 = load [2 x i8], [2 x i8]* @str.4.199
  %cipher.ptr.819 = alloca [5 x i8]
  store [5 x i8] c"\45\53\55\3d\00", [5 x i8]* %cipher.ptr.819
  %cipher.819 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.819, i32 0, i32 0
  %plain.ptr.819 = tail call i8* @base64_decode(i8* %cipher.819)
  %spi819 = bitcast i8* %plain.ptr.819 to [2 x i8]*
  %s4.199 = load [2 x i8], [2 x i8]* %spi819
;-------------------------------
  %sp4.199 = bitcast i8* %next3.199 to [2 x i8]*
  store [2 x i8] %s4.199, [2 x i8]* %sp4.199
  %next4.199 = getelementptr [20 x i8], [20 x i8]* %sp199, i32 0, i32 12
  
;-------------------------------
; Replace: %s5.199 = load [3 x i8], [3 x i8]* @str.5.199
  %cipher.ptr.820 = alloca [5 x i8]
  store [5 x i8] c"\44\45\6f\49\00", [5 x i8]* %cipher.ptr.820
  %cipher.820 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.820, i32 0, i32 0
  %plain.ptr.820 = tail call i8* @base64_decode(i8* %cipher.820)
  %spi820 = bitcast i8* %plain.ptr.820 to [3 x i8]*
  %s5.199 = load [3 x i8], [3 x i8]* %spi820
;-------------------------------
  %sp5.199 = bitcast i8* %next4.199 to [3 x i8]*
  store [3 x i8] %s5.199, [3 x i8]* %sp5.199
  %next5.199 = getelementptr [20 x i8], [20 x i8]* %sp199, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.199 = load [2 x i8], [2 x i8]* @str.6.199
  %cipher.ptr.815 = alloca [5 x i8]
  store [5 x i8] c"\55\48\49\3d\00", [5 x i8]* %cipher.ptr.815
  %cipher.815 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.815, i32 0, i32 0
  %plain.ptr.815 = tail call i8* @base64_decode(i8* %cipher.815)
  %spi815 = bitcast i8* %plain.ptr.815 to [2 x i8]*
  %s6.199 = load [2 x i8], [2 x i8]* %spi815
;-------------------------------
  %sp6.199 = bitcast i8* %next5.199 to [2 x i8]*
  store [2 x i8] %s6.199, [2 x i8]* %sp6.199
  %next6.199 = getelementptr [20 x i8], [20 x i8]* %sp199, i32 0, i32 17
  
;-------------------------------
; Replace: %s7.199 = load [3 x i8], [3 x i8]* @str.7.199
  %cipher.ptr.817 = alloca [5 x i8]
  store [5 x i8] c"\4a\56\31\48\00", [5 x i8]* %cipher.ptr.817
  %cipher.817 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.817, i32 0, i32 0
  %plain.ptr.817 = tail call i8* @base64_decode(i8* %cipher.817)
  %spi817 = bitcast i8* %plain.ptr.817 to [3 x i8]*
  %s7.199 = load [3 x i8], [3 x i8]* %spi817
;-------------------------------
  %sp7.199 = bitcast i8* %next6.199 to [3 x i8]*
  store [3 x i8] %s7.199, [3 x i8]* %sp7.199

  %spi199 = load [20 x i8], [20 x i8]* %sp199
  store [20 x i8] %spi199, [20 x i8]* %sp0.64
;-------------------------------
  %sp0.1.64 = bitcast [20 x i8]* %sp0.64 to i160*
  %i0.64 = load i160, i160* %sp0.1.64

  %sp1.64 = alloca [20 x i8]
;-------------------------------
; Replace: store [20 x i8] c"\33\6c\79\6e\61\36\4c\54\70\31\73\49\69\63\32\70\57\41\57\47", [20 x i8]* %sp1.64
  %sp200 = alloca [20 x i8]
  
;-------------------------------
; Replace: %s0.200 = load [2 x i8], [2 x i8]* @str.0.200
  %cipher.ptr.825 = alloca [5 x i8]
  store [5 x i8] c"\4d\32\77\3d\00", [5 x i8]* %cipher.ptr.825
  %cipher.825 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.825, i32 0, i32 0
  %plain.ptr.825 = tail call i8* @base64_decode(i8* %cipher.825)
  %spi825 = bitcast i8* %plain.ptr.825 to [2 x i8]*
  %s0.200 = load [2 x i8], [2 x i8]* %spi825
;-------------------------------
  %sp0.200 = bitcast [20 x i8]* %sp200 to [2 x i8]*
  store [2 x i8] %s0.200, [2 x i8]* %sp0.200
  %next0.200 = getelementptr [20 x i8], [20 x i8]* %sp200, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.200 = load [3 x i8], [3 x i8]* @str.1.200
  %cipher.ptr.823 = alloca [5 x i8]
  store [5 x i8] c"\65\57\35\68\00", [5 x i8]* %cipher.ptr.823
  %cipher.823 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.823, i32 0, i32 0
  %plain.ptr.823 = tail call i8* @base64_decode(i8* %cipher.823)
  %spi823 = bitcast i8* %plain.ptr.823 to [3 x i8]*
  %s1.200 = load [3 x i8], [3 x i8]* %spi823
;-------------------------------
  %sp1.200 = bitcast i8* %next0.200 to [3 x i8]*
  store [3 x i8] %s1.200, [3 x i8]* %sp1.200
  %next1.200 = getelementptr [20 x i8], [20 x i8]* %sp200, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.200 = load [2 x i8], [2 x i8]* @str.2.200
  %cipher.ptr.826 = alloca [5 x i8]
  store [5 x i8] c"\4e\6b\77\3d\00", [5 x i8]* %cipher.ptr.826
  %cipher.826 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.826, i32 0, i32 0
  %plain.ptr.826 = tail call i8* @base64_decode(i8* %cipher.826)
  %spi826 = bitcast i8* %plain.ptr.826 to [2 x i8]*
  %s2.200 = load [2 x i8], [2 x i8]* %spi826
;-------------------------------
  %sp2.200 = bitcast i8* %next1.200 to [2 x i8]*
  store [2 x i8] %s2.200, [2 x i8]* %sp2.200
  %next2.200 = getelementptr [20 x i8], [20 x i8]* %sp200, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.200 = load [3 x i8], [3 x i8]* @str.3.200
  %cipher.ptr.827 = alloca [5 x i8]
  store [5 x i8] c"\56\48\41\78\00", [5 x i8]* %cipher.ptr.827
  %cipher.827 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.827, i32 0, i32 0
  %plain.ptr.827 = tail call i8* @base64_decode(i8* %cipher.827)
  %spi827 = bitcast i8* %plain.ptr.827 to [3 x i8]*
  %s3.200 = load [3 x i8], [3 x i8]* %spi827
;-------------------------------
  %sp3.200 = bitcast i8* %next2.200 to [3 x i8]*
  store [3 x i8] %s3.200, [3 x i8]* %sp3.200
  %next3.200 = getelementptr [20 x i8], [20 x i8]* %sp200, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.200 = load [2 x i8], [2 x i8]* @str.4.200
  %cipher.ptr.828 = alloca [5 x i8]
  store [5 x i8] c"\63\30\6b\3d\00", [5 x i8]* %cipher.ptr.828
  %cipher.828 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.828, i32 0, i32 0
  %plain.ptr.828 = tail call i8* @base64_decode(i8* %cipher.828)
  %spi828 = bitcast i8* %plain.ptr.828 to [2 x i8]*
  %s4.200 = load [2 x i8], [2 x i8]* %spi828
;-------------------------------
  %sp4.200 = bitcast i8* %next3.200 to [2 x i8]*
  store [2 x i8] %s4.200, [2 x i8]* %sp4.200
  %next4.200 = getelementptr [20 x i8], [20 x i8]* %sp200, i32 0, i32 12
  
;-------------------------------
; Replace: %s5.200 = load [3 x i8], [3 x i8]* @str.5.200
  %cipher.ptr.822 = alloca [5 x i8]
  store [5 x i8] c"\61\57\4d\79\00", [5 x i8]* %cipher.ptr.822
  %cipher.822 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.822, i32 0, i32 0
  %plain.ptr.822 = tail call i8* @base64_decode(i8* %cipher.822)
  %spi822 = bitcast i8* %plain.ptr.822 to [3 x i8]*
  %s5.200 = load [3 x i8], [3 x i8]* %spi822
;-------------------------------
  %sp5.200 = bitcast i8* %next4.200 to [3 x i8]*
  store [3 x i8] %s5.200, [3 x i8]* %sp5.200
  %next5.200 = getelementptr [20 x i8], [20 x i8]* %sp200, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.200 = load [2 x i8], [2 x i8]* @str.6.200
  %cipher.ptr.824 = alloca [5 x i8]
  store [5 x i8] c"\63\46\63\3d\00", [5 x i8]* %cipher.ptr.824
  %cipher.824 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.824, i32 0, i32 0
  %plain.ptr.824 = tail call i8* @base64_decode(i8* %cipher.824)
  %spi824 = bitcast i8* %plain.ptr.824 to [2 x i8]*
  %s6.200 = load [2 x i8], [2 x i8]* %spi824
;-------------------------------
  %sp6.200 = bitcast i8* %next5.200 to [2 x i8]*
  store [2 x i8] %s6.200, [2 x i8]* %sp6.200
  %next6.200 = getelementptr [20 x i8], [20 x i8]* %sp200, i32 0, i32 17
  
;-------------------------------
; Replace: %s7.200 = load [3 x i8], [3 x i8]* @str.7.200
  %cipher.ptr.829 = alloca [5 x i8]
  store [5 x i8] c"\51\56\64\48\00", [5 x i8]* %cipher.ptr.829
  %cipher.829 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.829, i32 0, i32 0
  %plain.ptr.829 = tail call i8* @base64_decode(i8* %cipher.829)
  %spi829 = bitcast i8* %plain.ptr.829 to [3 x i8]*
  %s7.200 = load [3 x i8], [3 x i8]* %spi829
;-------------------------------
  %sp7.200 = bitcast i8* %next6.200 to [3 x i8]*
  store [3 x i8] %s7.200, [3 x i8]* %sp7.200

  %spi200 = load [20 x i8], [20 x i8]* %sp200
  store [20 x i8] %spi200, [20 x i8]* %sp1.64
;-------------------------------
  %sp1.1.64 = bitcast [20 x i8]* %sp1.64 to i160*
  %i1.64 = load i160, i160* %sp1.1.64

  %xp64 = xor i160 %i0.64, %i1.64

  %fi.64 = alloca i160
  store i160 %xp64, i160* %fi.64

  %spi64 = bitcast i160* %fi.64 to [20 x i8]*
  %spi.bis.459 = ptrtoint[20 x i8]* %spi64 to i32
;-------------------------------
  store i32 %spi.bis.459, i32* %28, align 16
  store i32 134517561, i32* %29, align 4
  %41 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %40, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  store i32 4, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.458 = ptrtoint[22 x i8]* @str.bis.458 to i32
  %sp0.63 = alloca [22 x i8]
;-------------------------------
; Replace: store [22 x i8] c"\22\38\02\13\06\29\5C\08\10\04\18\2C\3D\00\1C\6E\6C\68\4A\55\44\43", [22 x i8]* %sp0.63
  %sp201 = alloca [22 x i8]
  
;-------------------------------
; Replace: %s0.201 = load [2 x i8], [2 x i8]* @str.0.201
  %cipher.ptr.836 = alloca [5 x i8]
  store [5 x i8] c"\49\6a\67\3d\00", [5 x i8]* %cipher.ptr.836
  %cipher.836 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.836, i32 0, i32 0
  %plain.ptr.836 = tail call i8* @base64_decode(i8* %cipher.836)
  %spi836 = bitcast i8* %plain.ptr.836 to [2 x i8]*
  %s0.201 = load [2 x i8], [2 x i8]* %spi836
;-------------------------------
  %sp0.201 = bitcast [22 x i8]* %sp201 to [2 x i8]*
  store [2 x i8] %s0.201, [2 x i8]* %sp0.201
  %next0.201 = getelementptr [22 x i8], [22 x i8]* %sp201, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.201 = load [3 x i8], [3 x i8]* @str.1.201
  %cipher.ptr.835 = alloca [5 x i8]
  store [5 x i8] c"\41\68\4d\47\00", [5 x i8]* %cipher.ptr.835
  %cipher.835 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.835, i32 0, i32 0
  %plain.ptr.835 = tail call i8* @base64_decode(i8* %cipher.835)
  %spi835 = bitcast i8* %plain.ptr.835 to [3 x i8]*
  %s1.201 = load [3 x i8], [3 x i8]* %spi835
;-------------------------------
  %sp1.201 = bitcast i8* %next0.201 to [3 x i8]*
  store [3 x i8] %s1.201, [3 x i8]* %sp1.201
  %next1.201 = getelementptr [22 x i8], [22 x i8]* %sp201, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.201 = load [3 x i8], [3 x i8]* @str.2.201
  %cipher.ptr.830 = alloca [5 x i8]
  store [5 x i8] c"\4b\56\77\49\00", [5 x i8]* %cipher.ptr.830
  %cipher.830 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.830, i32 0, i32 0
  %plain.ptr.830 = tail call i8* @base64_decode(i8* %cipher.830)
  %spi830 = bitcast i8* %plain.ptr.830 to [3 x i8]*
  %s2.201 = load [3 x i8], [3 x i8]* %spi830
;-------------------------------
  %sp2.201 = bitcast i8* %next1.201 to [3 x i8]*
  store [3 x i8] %s2.201, [3 x i8]* %sp2.201
  %next2.201 = getelementptr [22 x i8], [22 x i8]* %sp201, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.201 = load [3 x i8], [3 x i8]* @str.3.201
  %cipher.ptr.832 = alloca [5 x i8]
  store [5 x i8] c"\45\41\51\59\00", [5 x i8]* %cipher.ptr.832
  %cipher.832 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.832, i32 0, i32 0
  %plain.ptr.832 = tail call i8* @base64_decode(i8* %cipher.832)
  %spi832 = bitcast i8* %plain.ptr.832 to [3 x i8]*
  %s3.201 = load [3 x i8], [3 x i8]* %spi832
;-------------------------------
  %sp3.201 = bitcast i8* %next2.201 to [3 x i8]*
  store [3 x i8] %s3.201, [3 x i8]* %sp3.201
  %next3.201 = getelementptr [22 x i8], [22 x i8]* %sp201, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.201 = load [2 x i8], [2 x i8]* @str.4.201
  %cipher.ptr.834 = alloca [5 x i8]
  store [5 x i8] c"\4c\44\30\3d\00", [5 x i8]* %cipher.ptr.834
  %cipher.834 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.834, i32 0, i32 0
  %plain.ptr.834 = tail call i8* @base64_decode(i8* %cipher.834)
  %spi834 = bitcast i8* %plain.ptr.834 to [2 x i8]*
  %s4.201 = load [2 x i8], [2 x i8]* %spi834
;-------------------------------
  %sp4.201 = bitcast i8* %next3.201 to [2 x i8]*
  store [2 x i8] %s4.201, [2 x i8]* %sp4.201
  %next4.201 = getelementptr [22 x i8], [22 x i8]* %sp201, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.201 = load [3 x i8], [3 x i8]* @str.5.201
  %cipher.ptr.837 = alloca [5 x i8]
  store [5 x i8] c"\41\42\78\75\00", [5 x i8]* %cipher.ptr.837
  %cipher.837 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.837, i32 0, i32 0
  %plain.ptr.837 = tail call i8* @base64_decode(i8* %cipher.837)
  %spi837 = bitcast i8* %plain.ptr.837 to [3 x i8]*
  %s5.201 = load [3 x i8], [3 x i8]* %spi837
;-------------------------------
  %sp5.201 = bitcast i8* %next4.201 to [3 x i8]*
  store [3 x i8] %s5.201, [3 x i8]* %sp5.201
  %next5.201 = getelementptr [22 x i8], [22 x i8]* %sp201, i32 0, i32 16
  
;-------------------------------
; Replace: %s6.201 = load [3 x i8], [3 x i8]* @str.6.201
  %cipher.ptr.833 = alloca [5 x i8]
  store [5 x i8] c"\62\47\68\4b\00", [5 x i8]* %cipher.ptr.833
  %cipher.833 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.833, i32 0, i32 0
  %plain.ptr.833 = tail call i8* @base64_decode(i8* %cipher.833)
  %spi833 = bitcast i8* %plain.ptr.833 to [3 x i8]*
  %s6.201 = load [3 x i8], [3 x i8]* %spi833
;-------------------------------
  %sp6.201 = bitcast i8* %next5.201 to [3 x i8]*
  store [3 x i8] %s6.201, [3 x i8]* %sp6.201
  %next6.201 = getelementptr [22 x i8], [22 x i8]* %sp201, i32 0, i32 19
  
;-------------------------------
; Replace: %s7.201 = load [3 x i8], [3 x i8]* @str.7.201
  %cipher.ptr.831 = alloca [5 x i8]
  store [5 x i8] c"\56\55\52\44\00", [5 x i8]* %cipher.ptr.831
  %cipher.831 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.831, i32 0, i32 0
  %plain.ptr.831 = tail call i8* @base64_decode(i8* %cipher.831)
  %spi831 = bitcast i8* %plain.ptr.831 to [3 x i8]*
  %s7.201 = load [3 x i8], [3 x i8]* %spi831
;-------------------------------
  %sp7.201 = bitcast i8* %next6.201 to [3 x i8]*
  store [3 x i8] %s7.201, [3 x i8]* %sp7.201

  %spi201 = load [22 x i8], [22 x i8]* %sp201
  store [22 x i8] %spi201, [22 x i8]* %sp0.63
;-------------------------------
  %sp0.1.63 = bitcast [22 x i8]* %sp0.63 to i176*
  %i0.63 = load i176, i176* %sp0.1.63

  %sp1.63 = alloca [22 x i8]
;-------------------------------
; Replace: store [22 x i8] c"\51\51\78\76\69\4f\74\69\62\76\79\55\66\30\41\47\56\48\6f\31\4e\43", [22 x i8]* %sp1.63
  %sp202 = alloca [22 x i8]
  
;-------------------------------
; Replace: %s0.202 = load [2 x i8], [2 x i8]* @str.0.202
  %cipher.ptr.839 = alloca [5 x i8]
  store [5 x i8] c"\55\56\45\3d\00", [5 x i8]* %cipher.ptr.839
  %cipher.839 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.839, i32 0, i32 0
  %plain.ptr.839 = tail call i8* @base64_decode(i8* %cipher.839)
  %spi839 = bitcast i8* %plain.ptr.839 to [2 x i8]*
  %s0.202 = load [2 x i8], [2 x i8]* %spi839
;-------------------------------
  %sp0.202 = bitcast [22 x i8]* %sp202 to [2 x i8]*
  store [2 x i8] %s0.202, [2 x i8]* %sp0.202
  %next0.202 = getelementptr [22 x i8], [22 x i8]* %sp202, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.202 = load [3 x i8], [3 x i8]* @str.1.202
  %cipher.ptr.843 = alloca [5 x i8]
  store [5 x i8] c"\65\48\5a\70\00", [5 x i8]* %cipher.ptr.843
  %cipher.843 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.843, i32 0, i32 0
  %plain.ptr.843 = tail call i8* @base64_decode(i8* %cipher.843)
  %spi843 = bitcast i8* %plain.ptr.843 to [3 x i8]*
  %s1.202 = load [3 x i8], [3 x i8]* %spi843
;-------------------------------
  %sp1.202 = bitcast i8* %next0.202 to [3 x i8]*
  store [3 x i8] %s1.202, [3 x i8]* %sp1.202
  %next1.202 = getelementptr [22 x i8], [22 x i8]* %sp202, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.202 = load [3 x i8], [3 x i8]* @str.2.202
  %cipher.ptr.838 = alloca [5 x i8]
  store [5 x i8] c"\54\33\52\70\00", [5 x i8]* %cipher.ptr.838
  %cipher.838 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.838, i32 0, i32 0
  %plain.ptr.838 = tail call i8* @base64_decode(i8* %cipher.838)
  %spi838 = bitcast i8* %plain.ptr.838 to [3 x i8]*
  %s2.202 = load [3 x i8], [3 x i8]* %spi838
;-------------------------------
  %sp2.202 = bitcast i8* %next1.202 to [3 x i8]*
  store [3 x i8] %s2.202, [3 x i8]* %sp2.202
  %next2.202 = getelementptr [22 x i8], [22 x i8]* %sp202, i32 0, i32 8
  
;-------------------------------
; Replace: %s3.202 = load [3 x i8], [3 x i8]* @str.3.202
  %cipher.ptr.842 = alloca [5 x i8]
  store [5 x i8] c"\59\6e\5a\35\00", [5 x i8]* %cipher.ptr.842
  %cipher.842 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.842, i32 0, i32 0
  %plain.ptr.842 = tail call i8* @base64_decode(i8* %cipher.842)
  %spi842 = bitcast i8* %plain.ptr.842 to [3 x i8]*
  %s3.202 = load [3 x i8], [3 x i8]* %spi842
;-------------------------------
  %sp3.202 = bitcast i8* %next2.202 to [3 x i8]*
  store [3 x i8] %s3.202, [3 x i8]* %sp3.202
  %next3.202 = getelementptr [22 x i8], [22 x i8]* %sp202, i32 0, i32 11
  
;-------------------------------
; Replace: %s4.202 = load [2 x i8], [2 x i8]* @str.4.202
  %cipher.ptr.841 = alloca [5 x i8]
  store [5 x i8] c"\56\57\59\3d\00", [5 x i8]* %cipher.ptr.841
  %cipher.841 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.841, i32 0, i32 0
  %plain.ptr.841 = tail call i8* @base64_decode(i8* %cipher.841)
  %spi841 = bitcast i8* %plain.ptr.841 to [2 x i8]*
  %s4.202 = load [2 x i8], [2 x i8]* %spi841
;-------------------------------
  %sp4.202 = bitcast i8* %next3.202 to [2 x i8]*
  store [2 x i8] %s4.202, [2 x i8]* %sp4.202
  %next4.202 = getelementptr [22 x i8], [22 x i8]* %sp202, i32 0, i32 13
  
;-------------------------------
; Replace: %s5.202 = load [3 x i8], [3 x i8]* @str.5.202
  %cipher.ptr.844 = alloca [5 x i8]
  store [5 x i8] c"\4d\45\46\48\00", [5 x i8]* %cipher.ptr.844
  %cipher.844 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.844, i32 0, i32 0
  %plain.ptr.844 = tail call i8* @base64_decode(i8* %cipher.844)
  %spi844 = bitcast i8* %plain.ptr.844 to [3 x i8]*
  %s5.202 = load [3 x i8], [3 x i8]* %spi844
;-------------------------------
  %sp5.202 = bitcast i8* %next4.202 to [3 x i8]*
  store [3 x i8] %s5.202, [3 x i8]* %sp5.202
  %next5.202 = getelementptr [22 x i8], [22 x i8]* %sp202, i32 0, i32 16
  
;-------------------------------
; Replace: %s6.202 = load [3 x i8], [3 x i8]* @str.6.202
  %cipher.ptr.840 = alloca [5 x i8]
  store [5 x i8] c"\56\6b\68\76\00", [5 x i8]* %cipher.ptr.840
  %cipher.840 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.840, i32 0, i32 0
  %plain.ptr.840 = tail call i8* @base64_decode(i8* %cipher.840)
  %spi840 = bitcast i8* %plain.ptr.840 to [3 x i8]*
  %s6.202 = load [3 x i8], [3 x i8]* %spi840
;-------------------------------
  %sp6.202 = bitcast i8* %next5.202 to [3 x i8]*
  store [3 x i8] %s6.202, [3 x i8]* %sp6.202
  %next6.202 = getelementptr [22 x i8], [22 x i8]* %sp202, i32 0, i32 19
  
;-------------------------------
; Replace: %s7.202 = load [3 x i8], [3 x i8]* @str.7.202
  %cipher.ptr.845 = alloca [5 x i8]
  store [5 x i8] c"\4d\55\35\44\00", [5 x i8]* %cipher.ptr.845
  %cipher.845 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.845, i32 0, i32 0
  %plain.ptr.845 = tail call i8* @base64_decode(i8* %cipher.845)
  %spi845 = bitcast i8* %plain.ptr.845 to [3 x i8]*
  %s7.202 = load [3 x i8], [3 x i8]* %spi845
;-------------------------------
  %sp7.202 = bitcast i8* %next6.202 to [3 x i8]*
  store [3 x i8] %s7.202, [3 x i8]* %sp7.202

  %spi202 = load [22 x i8], [22 x i8]* %sp202
  store [22 x i8] %spi202, [22 x i8]* %sp1.63
;-------------------------------
  %sp1.1.63 = bitcast [22 x i8]* %sp1.63 to i176*
  %i1.63 = load i176, i176* %sp1.1.63

  %xp63 = xor i176 %i0.63, %i1.63

  %fi.63 = alloca i176
  store i176 %xp63, i176* %fi.63

  %spi63 = bitcast i176* %fi.63 to [22 x i8]*
  %spi.bis.458 = ptrtoint[22 x i8]* %spi63 to i32
;-------------------------------
  store i32 %spi.bis.458, i32* %28, align 16
  store i32 134517581, i32* %29, align 4
  %44 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %43, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %45 to i32
  store i32 400, i32* %28, align 16
  store i32 134517597, i32* %29, align 4
  %arg.i.i = load i32, i32* %28, align 16
  %47 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i86.i = add i32 %tmp0_v.i30.i, -64
  %48 = inttoptr i32 %tmp2_v.i86.i to i32*
  store i32 %47, i32* %48, align 16
  store i32 4, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.457 = ptrtoint[27 x i8]* @str.bis.457 to i32
  %sp0.62 = alloca [27 x i8]
;-------------------------------
; Replace: store [27 x i8] c"\05\51\39\06\3A\56\52\37\09\16\26\18\22\2C\08\25\18\21\2E\1B\7A\59\5A\44\25\7C\33", [27 x i8]* %sp0.62
  %sp203 = alloca [27 x i8]
  
;-------------------------------
; Replace: %s0.203 = load [3 x i8], [3 x i8]* @str.0.203
  %cipher.ptr.850 = alloca [5 x i8]
  store [5 x i8] c"\42\56\45\35\00", [5 x i8]* %cipher.ptr.850
  %cipher.850 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.850, i32 0, i32 0
  %plain.ptr.850 = tail call i8* @base64_decode(i8* %cipher.850)
  %spi850 = bitcast i8* %plain.ptr.850 to [3 x i8]*
  %s0.203 = load [3 x i8], [3 x i8]* %spi850
;-------------------------------
  %sp0.203 = bitcast [27 x i8]* %sp203 to [3 x i8]*
  store [3 x i8] %s0.203, [3 x i8]* %sp0.203
  %next0.203 = getelementptr [27 x i8], [27 x i8]* %sp203, i32 0, i32 3
  
;-------------------------------
; Replace: %s1.203 = load [3 x i8], [3 x i8]* @str.1.203
  %cipher.ptr.846 = alloca [5 x i8]
  store [5 x i8] c"\42\6a\70\57\00", [5 x i8]* %cipher.ptr.846
  %cipher.846 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.846, i32 0, i32 0
  %plain.ptr.846 = tail call i8* @base64_decode(i8* %cipher.846)
  %spi846 = bitcast i8* %plain.ptr.846 to [3 x i8]*
  %s1.203 = load [3 x i8], [3 x i8]* %spi846
;-------------------------------
  %sp1.203 = bitcast i8* %next0.203 to [3 x i8]*
  store [3 x i8] %s1.203, [3 x i8]* %sp1.203
  %next1.203 = getelementptr [27 x i8], [27 x i8]* %sp203, i32 0, i32 6
  
;-------------------------------
; Replace: %s2.203 = load [4 x i8], [4 x i8]* @str.2.203
  %cipher.ptr.852 = alloca [9 x i8]
  store [9 x i8] c"\55\6a\63\4a\46\67\3d\3d\00", [9 x i8]* %cipher.ptr.852
  %cipher.852 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.852, i32 0, i32 0
  %plain.ptr.852 = tail call i8* @base64_decode(i8* %cipher.852)
  %spi852 = bitcast i8* %plain.ptr.852 to [4 x i8]*
  %s2.203 = load [4 x i8], [4 x i8]* %spi852
;-------------------------------
  %sp2.203 = bitcast i8* %next1.203 to [4 x i8]*
  store [4 x i8] %s2.203, [4 x i8]* %sp2.203
  %next2.203 = getelementptr [27 x i8], [27 x i8]* %sp203, i32 0, i32 10
  
;-------------------------------
; Replace: %s3.203 = load [3 x i8], [3 x i8]* @str.3.203
  %cipher.ptr.849 = alloca [5 x i8]
  store [5 x i8] c"\4a\68\67\69\00", [5 x i8]* %cipher.ptr.849
  %cipher.849 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.849, i32 0, i32 0
  %plain.ptr.849 = tail call i8* @base64_decode(i8* %cipher.849)
  %spi849 = bitcast i8* %plain.ptr.849 to [3 x i8]*
  %s3.203 = load [3 x i8], [3 x i8]* %spi849
;-------------------------------
  %sp3.203 = bitcast i8* %next2.203 to [3 x i8]*
  store [3 x i8] %s3.203, [3 x i8]* %sp3.203
  %next3.203 = getelementptr [27 x i8], [27 x i8]* %sp203, i32 0, i32 13
  
;-------------------------------
; Replace: %s4.203 = load [3 x i8], [3 x i8]* @str.4.203
  %cipher.ptr.847 = alloca [5 x i8]
  store [5 x i8] c"\4c\41\67\6c\00", [5 x i8]* %cipher.ptr.847
  %cipher.847 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.847, i32 0, i32 0
  %plain.ptr.847 = tail call i8* @base64_decode(i8* %cipher.847)
  %spi847 = bitcast i8* %plain.ptr.847 to [3 x i8]*
  %s4.203 = load [3 x i8], [3 x i8]* %spi847
;-------------------------------
  %sp4.203 = bitcast i8* %next3.203 to [3 x i8]*
  store [3 x i8] %s4.203, [3 x i8]* %sp4.203
  %next4.203 = getelementptr [27 x i8], [27 x i8]* %sp203, i32 0, i32 16
  
;-------------------------------
; Replace: %s5.203 = load [4 x i8], [4 x i8]* @str.5.203
  %cipher.ptr.848 = alloca [9 x i8]
  store [9 x i8] c"\47\43\45\75\47\77\3d\3d\00", [9 x i8]* %cipher.ptr.848
  %cipher.848 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.848, i32 0, i32 0
  %plain.ptr.848 = tail call i8* @base64_decode(i8* %cipher.848)
  %spi848 = bitcast i8* %plain.ptr.848 to [4 x i8]*
  %s5.203 = load [4 x i8], [4 x i8]* %spi848
;-------------------------------
  %sp5.203 = bitcast i8* %next4.203 to [4 x i8]*
  store [4 x i8] %s5.203, [4 x i8]* %sp5.203
  %next5.203 = getelementptr [27 x i8], [27 x i8]* %sp203, i32 0, i32 20
  
;-------------------------------
; Replace: %s6.203 = load [3 x i8], [3 x i8]* @str.6.203
  %cipher.ptr.851 = alloca [5 x i8]
  store [5 x i8] c"\65\6c\6c\61\00", [5 x i8]* %cipher.ptr.851
  %cipher.851 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.851, i32 0, i32 0
  %plain.ptr.851 = tail call i8* @base64_decode(i8* %cipher.851)
  %spi851 = bitcast i8* %plain.ptr.851 to [3 x i8]*
  %s6.203 = load [3 x i8], [3 x i8]* %spi851
;-------------------------------
  %sp6.203 = bitcast i8* %next5.203 to [3 x i8]*
  store [3 x i8] %s6.203, [3 x i8]* %sp6.203
  %next6.203 = getelementptr [27 x i8], [27 x i8]* %sp203, i32 0, i32 23
  
;-------------------------------
; Replace: %s7.203 = load [4 x i8], [4 x i8]* @str.7.203
  %cipher.ptr.853 = alloca [9 x i8]
  store [9 x i8] c"\52\43\56\38\4d\77\3d\3d\00", [9 x i8]* %cipher.ptr.853
  %cipher.853 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.853, i32 0, i32 0
  %plain.ptr.853 = tail call i8* @base64_decode(i8* %cipher.853)
  %spi853 = bitcast i8* %plain.ptr.853 to [4 x i8]*
  %s7.203 = load [4 x i8], [4 x i8]* %spi853
;-------------------------------
  %sp7.203 = bitcast i8* %next6.203 to [4 x i8]*
  store [4 x i8] %s7.203, [4 x i8]* %sp7.203

  %spi203 = load [27 x i8], [27 x i8]* %sp203
  store [27 x i8] %spi203, [27 x i8]* %sp0.62
;-------------------------------
  %sp0.1.62 = bitcast [27 x i8]* %sp0.62 to i216*
  %i0.62 = load i216, i216* %sp0.1.62

  %sp1.62 = alloca [27 x i8]
;-------------------------------
; Replace: store [27 x i8] c"\76\38\43\63\55\30\7a\53\70\78\47\75\4b\4f\57\44\6a\53\4f\62\53\63\7a\61\41\76\33", [27 x i8]* %sp1.62
  %sp204 = alloca [27 x i8]
  
;-------------------------------
; Replace: %s0.204 = load [3 x i8], [3 x i8]* @str.0.204
  %cipher.ptr.854 = alloca [5 x i8]
  store [5 x i8] c"\64\6a\68\44\00", [5 x i8]* %cipher.ptr.854
  %cipher.854 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.854, i32 0, i32 0
  %plain.ptr.854 = tail call i8* @base64_decode(i8* %cipher.854)
  %spi854 = bitcast i8* %plain.ptr.854 to [3 x i8]*
  %s0.204 = load [3 x i8], [3 x i8]* %spi854
;-------------------------------
  %sp0.204 = bitcast [27 x i8]* %sp204 to [3 x i8]*
  store [3 x i8] %s0.204, [3 x i8]* %sp0.204
  %next0.204 = getelementptr [27 x i8], [27 x i8]* %sp204, i32 0, i32 3
  
;-------------------------------
; Replace: %s1.204 = load [3 x i8], [3 x i8]* @str.1.204
  %cipher.ptr.859 = alloca [5 x i8]
  store [5 x i8] c"\59\31\55\77\00", [5 x i8]* %cipher.ptr.859
  %cipher.859 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.859, i32 0, i32 0
  %plain.ptr.859 = tail call i8* @base64_decode(i8* %cipher.859)
  %spi859 = bitcast i8* %plain.ptr.859 to [3 x i8]*
  %s1.204 = load [3 x i8], [3 x i8]* %spi859
;-------------------------------
  %sp1.204 = bitcast i8* %next0.204 to [3 x i8]*
  store [3 x i8] %s1.204, [3 x i8]* %sp1.204
  %next1.204 = getelementptr [27 x i8], [27 x i8]* %sp204, i32 0, i32 6
  
;-------------------------------
; Replace: %s2.204 = load [4 x i8], [4 x i8]* @str.2.204
  %cipher.ptr.856 = alloca [9 x i8]
  store [9 x i8] c"\65\6c\4e\77\65\41\3d\3d\00", [9 x i8]* %cipher.ptr.856
  %cipher.856 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.856, i32 0, i32 0
  %plain.ptr.856 = tail call i8* @base64_decode(i8* %cipher.856)
  %spi856 = bitcast i8* %plain.ptr.856 to [4 x i8]*
  %s2.204 = load [4 x i8], [4 x i8]* %spi856
;-------------------------------
  %sp2.204 = bitcast i8* %next1.204 to [4 x i8]*
  store [4 x i8] %s2.204, [4 x i8]* %sp2.204
  %next2.204 = getelementptr [27 x i8], [27 x i8]* %sp204, i32 0, i32 10
  
;-------------------------------
; Replace: %s3.204 = load [3 x i8], [3 x i8]* @str.3.204
  %cipher.ptr.855 = alloca [5 x i8]
  store [5 x i8] c"\52\33\56\4c\00", [5 x i8]* %cipher.ptr.855
  %cipher.855 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.855, i32 0, i32 0
  %plain.ptr.855 = tail call i8* @base64_decode(i8* %cipher.855)
  %spi855 = bitcast i8* %plain.ptr.855 to [3 x i8]*
  %s3.204 = load [3 x i8], [3 x i8]* %spi855
;-------------------------------
  %sp3.204 = bitcast i8* %next2.204 to [3 x i8]*
  store [3 x i8] %s3.204, [3 x i8]* %sp3.204
  %next3.204 = getelementptr [27 x i8], [27 x i8]* %sp204, i32 0, i32 13
  
;-------------------------------
; Replace: %s4.204 = load [3 x i8], [3 x i8]* @str.4.204
  %cipher.ptr.858 = alloca [5 x i8]
  store [5 x i8] c"\54\31\64\45\00", [5 x i8]* %cipher.ptr.858
  %cipher.858 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.858, i32 0, i32 0
  %plain.ptr.858 = tail call i8* @base64_decode(i8* %cipher.858)
  %spi858 = bitcast i8* %plain.ptr.858 to [3 x i8]*
  %s4.204 = load [3 x i8], [3 x i8]* %spi858
;-------------------------------
  %sp4.204 = bitcast i8* %next3.204 to [3 x i8]*
  store [3 x i8] %s4.204, [3 x i8]* %sp4.204
  %next4.204 = getelementptr [27 x i8], [27 x i8]* %sp204, i32 0, i32 16
  
;-------------------------------
; Replace: %s5.204 = load [4 x i8], [4 x i8]* @str.5.204
  %cipher.ptr.860 = alloca [9 x i8]
  store [9 x i8] c"\61\6c\4e\50\59\67\3d\3d\00", [9 x i8]* %cipher.ptr.860
  %cipher.860 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.860, i32 0, i32 0
  %plain.ptr.860 = tail call i8* @base64_decode(i8* %cipher.860)
  %spi860 = bitcast i8* %plain.ptr.860 to [4 x i8]*
  %s5.204 = load [4 x i8], [4 x i8]* %spi860
;-------------------------------
  %sp5.204 = bitcast i8* %next4.204 to [4 x i8]*
  store [4 x i8] %s5.204, [4 x i8]* %sp5.204
  %next5.204 = getelementptr [27 x i8], [27 x i8]* %sp204, i32 0, i32 20
  
;-------------------------------
; Replace: %s6.204 = load [3 x i8], [3 x i8]* @str.6.204
  %cipher.ptr.861 = alloca [5 x i8]
  store [5 x i8] c"\55\32\4e\36\00", [5 x i8]* %cipher.ptr.861
  %cipher.861 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.861, i32 0, i32 0
  %plain.ptr.861 = tail call i8* @base64_decode(i8* %cipher.861)
  %spi861 = bitcast i8* %plain.ptr.861 to [3 x i8]*
  %s6.204 = load [3 x i8], [3 x i8]* %spi861
;-------------------------------
  %sp6.204 = bitcast i8* %next5.204 to [3 x i8]*
  store [3 x i8] %s6.204, [3 x i8]* %sp6.204
  %next6.204 = getelementptr [27 x i8], [27 x i8]* %sp204, i32 0, i32 23
  
;-------------------------------
; Replace: %s7.204 = load [4 x i8], [4 x i8]* @str.7.204
  %cipher.ptr.857 = alloca [9 x i8]
  store [9 x i8] c"\59\55\46\32\4d\77\3d\3d\00", [9 x i8]* %cipher.ptr.857
  %cipher.857 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.857, i32 0, i32 0
  %plain.ptr.857 = tail call i8* @base64_decode(i8* %cipher.857)
  %spi857 = bitcast i8* %plain.ptr.857 to [4 x i8]*
  %s7.204 = load [4 x i8], [4 x i8]* %spi857
;-------------------------------
  %sp7.204 = bitcast i8* %next6.204 to [4 x i8]*
  store [4 x i8] %s7.204, [4 x i8]* %sp7.204

  %spi204 = load [27 x i8], [27 x i8]* %sp204
  store [27 x i8] %spi204, [27 x i8]* %sp1.62
;-------------------------------
  %sp1.1.62 = bitcast [27 x i8]* %sp1.62 to i216*
  %i1.62 = load i216, i216* %sp1.1.62

  %xp62 = xor i216 %i0.62, %i1.62

  %fi.62 = alloca i216
  store i216 %xp62, i216* %fi.62

  %spi62 = bitcast i216* %fi.62 to [27 x i8]*
  %spi.bis.457 = ptrtoint[27 x i8]* %spi62 to i32
;-------------------------------
  store i32 %spi.bis.457, i32* %28, align 16
  store i32 134517620, i32* %29, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %46, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  %tmp2_v.i108.i = add i32 %tmp0_v.i30.i, -60
  %52 = inttoptr i32 %tmp2_v.i108.i to i32*
  store i32 1, i32* %52, align 4
  store i32 1, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.456 = ptrtoint[20 x i8]* @str.bis.456 to i32
  %sp0.61 = alloca [20 x i8]
;-------------------------------
; Replace: store [20 x i8] c"\34\3B\5B\31\02\5E\5A\07\0D\56\37\5E\47\5B\7B\6E\74\23\59\30", [20 x i8]* %sp0.61
  %sp205 = alloca [20 x i8]
  
;-------------------------------
; Replace: %s0.205 = load [2 x i8], [2 x i8]* @str.0.205
  %cipher.ptr.867 = alloca [5 x i8]
  store [5 x i8] c"\4e\44\73\3d\00", [5 x i8]* %cipher.ptr.867
  %cipher.867 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.867, i32 0, i32 0
  %plain.ptr.867 = tail call i8* @base64_decode(i8* %cipher.867)
  %spi867 = bitcast i8* %plain.ptr.867 to [2 x i8]*
  %s0.205 = load [2 x i8], [2 x i8]* %spi867
;-------------------------------
  %sp0.205 = bitcast [20 x i8]* %sp205 to [2 x i8]*
  store [2 x i8] %s0.205, [2 x i8]* %sp0.205
  %next0.205 = getelementptr [20 x i8], [20 x i8]* %sp205, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.205 = load [3 x i8], [3 x i8]* @str.1.205
  %cipher.ptr.863 = alloca [5 x i8]
  store [5 x i8] c"\57\7a\45\43\00", [5 x i8]* %cipher.ptr.863
  %cipher.863 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.863, i32 0, i32 0
  %plain.ptr.863 = tail call i8* @base64_decode(i8* %cipher.863)
  %spi863 = bitcast i8* %plain.ptr.863 to [3 x i8]*
  %s1.205 = load [3 x i8], [3 x i8]* %spi863
;-------------------------------
  %sp1.205 = bitcast i8* %next0.205 to [3 x i8]*
  store [3 x i8] %s1.205, [3 x i8]* %sp1.205
  %next1.205 = getelementptr [20 x i8], [20 x i8]* %sp205, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.205 = load [2 x i8], [2 x i8]* @str.2.205
  %cipher.ptr.865 = alloca [5 x i8]
  store [5 x i8] c"\58\6c\6f\3d\00", [5 x i8]* %cipher.ptr.865
  %cipher.865 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.865, i32 0, i32 0
  %plain.ptr.865 = tail call i8* @base64_decode(i8* %cipher.865)
  %spi865 = bitcast i8* %plain.ptr.865 to [2 x i8]*
  %s2.205 = load [2 x i8], [2 x i8]* %spi865
;-------------------------------
  %sp2.205 = bitcast i8* %next1.205 to [2 x i8]*
  store [2 x i8] %s2.205, [2 x i8]* %sp2.205
  %next2.205 = getelementptr [20 x i8], [20 x i8]* %sp205, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.205 = load [3 x i8], [3 x i8]* @str.3.205
  %cipher.ptr.864 = alloca [5 x i8]
  store [5 x i8] c"\42\77\31\57\00", [5 x i8]* %cipher.ptr.864
  %cipher.864 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.864, i32 0, i32 0
  %plain.ptr.864 = tail call i8* @base64_decode(i8* %cipher.864)
  %spi864 = bitcast i8* %plain.ptr.864 to [3 x i8]*
  %s3.205 = load [3 x i8], [3 x i8]* %spi864
;-------------------------------
  %sp3.205 = bitcast i8* %next2.205 to [3 x i8]*
  store [3 x i8] %s3.205, [3 x i8]* %sp3.205
  %next3.205 = getelementptr [20 x i8], [20 x i8]* %sp205, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.205 = load [2 x i8], [2 x i8]* @str.4.205
  %cipher.ptr.868 = alloca [5 x i8]
  store [5 x i8] c"\4e\31\34\3d\00", [5 x i8]* %cipher.ptr.868
  %cipher.868 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.868, i32 0, i32 0
  %plain.ptr.868 = tail call i8* @base64_decode(i8* %cipher.868)
  %spi868 = bitcast i8* %plain.ptr.868 to [2 x i8]*
  %s4.205 = load [2 x i8], [2 x i8]* %spi868
;-------------------------------
  %sp4.205 = bitcast i8* %next3.205 to [2 x i8]*
  store [2 x i8] %s4.205, [2 x i8]* %sp4.205
  %next4.205 = getelementptr [20 x i8], [20 x i8]* %sp205, i32 0, i32 12
  
;-------------------------------
; Replace: %s5.205 = load [3 x i8], [3 x i8]* @str.5.205
  %cipher.ptr.869 = alloca [5 x i8]
  store [5 x i8] c"\52\31\74\37\00", [5 x i8]* %cipher.ptr.869
  %cipher.869 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.869, i32 0, i32 0
  %plain.ptr.869 = tail call i8* @base64_decode(i8* %cipher.869)
  %spi869 = bitcast i8* %plain.ptr.869 to [3 x i8]*
  %s5.205 = load [3 x i8], [3 x i8]* %spi869
;-------------------------------
  %sp5.205 = bitcast i8* %next4.205 to [3 x i8]*
  store [3 x i8] %s5.205, [3 x i8]* %sp5.205
  %next5.205 = getelementptr [20 x i8], [20 x i8]* %sp205, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.205 = load [2 x i8], [2 x i8]* @str.6.205
  %cipher.ptr.862 = alloca [5 x i8]
  store [5 x i8] c"\62\6e\51\3d\00", [5 x i8]* %cipher.ptr.862
  %cipher.862 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.862, i32 0, i32 0
  %plain.ptr.862 = tail call i8* @base64_decode(i8* %cipher.862)
  %spi862 = bitcast i8* %plain.ptr.862 to [2 x i8]*
  %s6.205 = load [2 x i8], [2 x i8]* %spi862
;-------------------------------
  %sp6.205 = bitcast i8* %next5.205 to [2 x i8]*
  store [2 x i8] %s6.205, [2 x i8]* %sp6.205
  %next6.205 = getelementptr [20 x i8], [20 x i8]* %sp205, i32 0, i32 17
  
;-------------------------------
; Replace: %s7.205 = load [3 x i8], [3 x i8]* @str.7.205
  %cipher.ptr.866 = alloca [5 x i8]
  store [5 x i8] c"\49\31\6b\77\00", [5 x i8]* %cipher.ptr.866
  %cipher.866 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.866, i32 0, i32 0
  %plain.ptr.866 = tail call i8* @base64_decode(i8* %cipher.866)
  %spi866 = bitcast i8* %plain.ptr.866 to [3 x i8]*
  %s7.205 = load [3 x i8], [3 x i8]* %spi866
;-------------------------------
  %sp7.205 = bitcast i8* %next6.205 to [3 x i8]*
  store [3 x i8] %s7.205, [3 x i8]* %sp7.205

  %spi205 = load [20 x i8], [20 x i8]* %sp205
  store [20 x i8] %spi205, [20 x i8]* %sp0.61
;-------------------------------
  %sp0.1.61 = bitcast [20 x i8]* %sp0.61 to i160*
  %i0.61 = load i160, i160* %sp0.1.61

  %sp1.61 = alloca [20 x i8]
;-------------------------------
; Replace: store [20 x i8] c"\50\42\35\50\6f\37\39\58\61\33\59\39\33\33\41\4e\51\47\53\30", [20 x i8]* %sp1.61
  %sp206 = alloca [20 x i8]
  
;-------------------------------
; Replace: %s0.206 = load [2 x i8], [2 x i8]* @str.0.206
  %cipher.ptr.875 = alloca [5 x i8]
  store [5 x i8] c"\55\45\49\3d\00", [5 x i8]* %cipher.ptr.875
  %cipher.875 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.875, i32 0, i32 0
  %plain.ptr.875 = tail call i8* @base64_decode(i8* %cipher.875)
  %spi875 = bitcast i8* %plain.ptr.875 to [2 x i8]*
  %s0.206 = load [2 x i8], [2 x i8]* %spi875
;-------------------------------
  %sp0.206 = bitcast [20 x i8]* %sp206 to [2 x i8]*
  store [2 x i8] %s0.206, [2 x i8]* %sp0.206
  %next0.206 = getelementptr [20 x i8], [20 x i8]* %sp206, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.206 = load [3 x i8], [3 x i8]* @str.1.206
  %cipher.ptr.877 = alloca [5 x i8]
  store [5 x i8] c"\4e\56\42\76\00", [5 x i8]* %cipher.ptr.877
  %cipher.877 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.877, i32 0, i32 0
  %plain.ptr.877 = tail call i8* @base64_decode(i8* %cipher.877)
  %spi877 = bitcast i8* %plain.ptr.877 to [3 x i8]*
  %s1.206 = load [3 x i8], [3 x i8]* %spi877
;-------------------------------
  %sp1.206 = bitcast i8* %next0.206 to [3 x i8]*
  store [3 x i8] %s1.206, [3 x i8]* %sp1.206
  %next1.206 = getelementptr [20 x i8], [20 x i8]* %sp206, i32 0, i32 5
  
;-------------------------------
; Replace: %s2.206 = load [2 x i8], [2 x i8]* @str.2.206
  %cipher.ptr.874 = alloca [5 x i8]
  store [5 x i8] c"\4e\7a\6b\3d\00", [5 x i8]* %cipher.ptr.874
  %cipher.874 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.874, i32 0, i32 0
  %plain.ptr.874 = tail call i8* @base64_decode(i8* %cipher.874)
  %spi874 = bitcast i8* %plain.ptr.874 to [2 x i8]*
  %s2.206 = load [2 x i8], [2 x i8]* %spi874
;-------------------------------
  %sp2.206 = bitcast i8* %next1.206 to [2 x i8]*
  store [2 x i8] %s2.206, [2 x i8]* %sp2.206
  %next2.206 = getelementptr [20 x i8], [20 x i8]* %sp206, i32 0, i32 7
  
;-------------------------------
; Replace: %s3.206 = load [3 x i8], [3 x i8]* @str.3.206
  %cipher.ptr.872 = alloca [5 x i8]
  store [5 x i8] c"\57\47\45\7a\00", [5 x i8]* %cipher.ptr.872
  %cipher.872 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.872, i32 0, i32 0
  %plain.ptr.872 = tail call i8* @base64_decode(i8* %cipher.872)
  %spi872 = bitcast i8* %plain.ptr.872 to [3 x i8]*
  %s3.206 = load [3 x i8], [3 x i8]* %spi872
;-------------------------------
  %sp3.206 = bitcast i8* %next2.206 to [3 x i8]*
  store [3 x i8] %s3.206, [3 x i8]* %sp3.206
  %next3.206 = getelementptr [20 x i8], [20 x i8]* %sp206, i32 0, i32 10
  
;-------------------------------
; Replace: %s4.206 = load [2 x i8], [2 x i8]* @str.4.206
  %cipher.ptr.873 = alloca [5 x i8]
  store [5 x i8] c"\57\54\6b\3d\00", [5 x i8]* %cipher.ptr.873
  %cipher.873 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.873, i32 0, i32 0
  %plain.ptr.873 = tail call i8* @base64_decode(i8* %cipher.873)
  %spi873 = bitcast i8* %plain.ptr.873 to [2 x i8]*
  %s4.206 = load [2 x i8], [2 x i8]* %spi873
;-------------------------------
  %sp4.206 = bitcast i8* %next3.206 to [2 x i8]*
  store [2 x i8] %s4.206, [2 x i8]* %sp4.206
  %next4.206 = getelementptr [20 x i8], [20 x i8]* %sp206, i32 0, i32 12
  
;-------------------------------
; Replace: %s5.206 = load [3 x i8], [3 x i8]* @str.5.206
  %cipher.ptr.871 = alloca [5 x i8]
  store [5 x i8] c"\4d\7a\4e\42\00", [5 x i8]* %cipher.ptr.871
  %cipher.871 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.871, i32 0, i32 0
  %plain.ptr.871 = tail call i8* @base64_decode(i8* %cipher.871)
  %spi871 = bitcast i8* %plain.ptr.871 to [3 x i8]*
  %s5.206 = load [3 x i8], [3 x i8]* %spi871
;-------------------------------
  %sp5.206 = bitcast i8* %next4.206 to [3 x i8]*
  store [3 x i8] %s5.206, [3 x i8]* %sp5.206
  %next5.206 = getelementptr [20 x i8], [20 x i8]* %sp206, i32 0, i32 15
  
;-------------------------------
; Replace: %s6.206 = load [2 x i8], [2 x i8]* @str.6.206
  %cipher.ptr.870 = alloca [5 x i8]
  store [5 x i8] c"\54\6c\45\3d\00", [5 x i8]* %cipher.ptr.870
  %cipher.870 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.870, i32 0, i32 0
  %plain.ptr.870 = tail call i8* @base64_decode(i8* %cipher.870)
  %spi870 = bitcast i8* %plain.ptr.870 to [2 x i8]*
  %s6.206 = load [2 x i8], [2 x i8]* %spi870
;-------------------------------
  %sp6.206 = bitcast i8* %next5.206 to [2 x i8]*
  store [2 x i8] %s6.206, [2 x i8]* %sp6.206
  %next6.206 = getelementptr [20 x i8], [20 x i8]* %sp206, i32 0, i32 17
  
;-------------------------------
; Replace: %s7.206 = load [3 x i8], [3 x i8]* @str.7.206
  %cipher.ptr.876 = alloca [5 x i8]
  store [5 x i8] c"\52\31\4d\77\00", [5 x i8]* %cipher.ptr.876
  %cipher.876 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.876, i32 0, i32 0
  %plain.ptr.876 = tail call i8* @base64_decode(i8* %cipher.876)
  %spi876 = bitcast i8* %plain.ptr.876 to [3 x i8]*
  %s7.206 = load [3 x i8], [3 x i8]* %spi876
;-------------------------------
  %sp7.206 = bitcast i8* %next6.206 to [3 x i8]*
  store [3 x i8] %s7.206, [3 x i8]* %sp7.206

  %spi206 = load [20 x i8], [20 x i8]* %sp206
  store [20 x i8] %spi206, [20 x i8]* %sp1.61
;-------------------------------
  %sp1.1.61 = bitcast [20 x i8]* %sp1.61 to i160*
  %i1.61 = load i160, i160* %sp1.1.61

  %xp61 = xor i160 %i0.61, %i1.61

  %fi.61 = alloca i160
  store i160 %xp61, i160* %fi.61

  %spi61 = bitcast i160* %fi.61 to [20 x i8]*
  %spi.bis.456 = ptrtoint[20 x i8]* %spi61 to i32
;-------------------------------
  store i32 %spi.bis.456, i32* %28, align 16
  store i32 134517648, i32* %29, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %51, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %54 = load i32, i32* %48, align 16
  store i32 %54, i32* %28, align 16
  store i32 134517662, i32* %29, align 4
  %arg.i.i10 = load i32, i32* %28, align 16
  tail call void @free(i32 %arg.i.i10)
  store i32 %tmp2_v7.i.i, i32* %28, align 16
  store i32 134517677, i32* %29, align 4
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i30.i, -120
  %55 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  store i32 %tmp2_v4.i33.i, i32* %55, align 8
  %tmp2_v1.i10.i.i = add i32 %tmp0_v.i30.i, -124
  %56 = inttoptr i32 %tmp2_v1.i10.i.i to i32*
  store i32 134529024, i32* %56, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i30.i, -148
  %57 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517254, i32* %57, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i30.i, -132
  %58 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %28, align 16
  %60 = inttoptr i32 %59 to i32*
  store i32 5, i32* %60, align 4
  %61 = load i32, i32* %58, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i30.i, -156
  %62 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %61, i32* %62, align 4
  %tmp2_v8.i.i.i = add i32 %tmp0_v.i30.i, -160
  %63 = inttoptr i32 %tmp2_v8.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.455 = ptrtoint[12 x i8]* @str.bis.455 to i32
  %sp0.60 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\1D\04\2D\15\30\38\0D\51\74\12\32\52", [12 x i8]* %sp0.60
  %sp207 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.207 = load [1 x i8], [1 x i8]* @str.0.207
  %cipher.ptr.884 = alloca [5 x i8]
  store [5 x i8] c"\48\51\3d\3d\00", [5 x i8]* %cipher.ptr.884
  %cipher.884 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.884, i32 0, i32 0
  %plain.ptr.884 = tail call i8* @base64_decode(i8* %cipher.884)
  %spi884 = bitcast i8* %plain.ptr.884 to [1 x i8]*
  %s0.207 = load [1 x i8], [1 x i8]* %spi884
;-------------------------------
  %sp0.207 = bitcast [12 x i8]* %sp207 to [1 x i8]*
  store [1 x i8] %s0.207, [1 x i8]* %sp0.207
  %next0.207 = getelementptr [12 x i8], [12 x i8]* %sp207, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.207 = load [2 x i8], [2 x i8]* @str.1.207
  %cipher.ptr.885 = alloca [5 x i8]
  store [5 x i8] c"\42\43\30\3d\00", [5 x i8]* %cipher.ptr.885
  %cipher.885 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.885, i32 0, i32 0
  %plain.ptr.885 = tail call i8* @base64_decode(i8* %cipher.885)
  %spi885 = bitcast i8* %plain.ptr.885 to [2 x i8]*
  %s1.207 = load [2 x i8], [2 x i8]* %spi885
;-------------------------------
  %sp1.207 = bitcast i8* %next0.207 to [2 x i8]*
  store [2 x i8] %s1.207, [2 x i8]* %sp1.207
  %next1.207 = getelementptr [12 x i8], [12 x i8]* %sp207, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.207 = load [1 x i8], [1 x i8]* @str.2.207
  %cipher.ptr.881 = alloca [5 x i8]
  store [5 x i8] c"\46\51\3d\3d\00", [5 x i8]* %cipher.ptr.881
  %cipher.881 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.881, i32 0, i32 0
  %plain.ptr.881 = tail call i8* @base64_decode(i8* %cipher.881)
  %spi881 = bitcast i8* %plain.ptr.881 to [1 x i8]*
  %s2.207 = load [1 x i8], [1 x i8]* %spi881
;-------------------------------
  %sp2.207 = bitcast i8* %next1.207 to [1 x i8]*
  store [1 x i8] %s2.207, [1 x i8]* %sp2.207
  %next2.207 = getelementptr [12 x i8], [12 x i8]* %sp207, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.207 = load [2 x i8], [2 x i8]* @str.3.207
  %cipher.ptr.882 = alloca [5 x i8]
  store [5 x i8] c"\4d\44\67\3d\00", [5 x i8]* %cipher.ptr.882
  %cipher.882 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.882, i32 0, i32 0
  %plain.ptr.882 = tail call i8* @base64_decode(i8* %cipher.882)
  %spi882 = bitcast i8* %plain.ptr.882 to [2 x i8]*
  %s3.207 = load [2 x i8], [2 x i8]* %spi882
;-------------------------------
  %sp3.207 = bitcast i8* %next2.207 to [2 x i8]*
  store [2 x i8] %s3.207, [2 x i8]* %sp3.207
  %next3.207 = getelementptr [12 x i8], [12 x i8]* %sp207, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.207 = load [1 x i8], [1 x i8]* @str.4.207
  %cipher.ptr.883 = alloca [5 x i8]
  store [5 x i8] c"\44\51\3d\3d\00", [5 x i8]* %cipher.ptr.883
  %cipher.883 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.883, i32 0, i32 0
  %plain.ptr.883 = tail call i8* @base64_decode(i8* %cipher.883)
  %spi883 = bitcast i8* %plain.ptr.883 to [1 x i8]*
  %s4.207 = load [1 x i8], [1 x i8]* %spi883
;-------------------------------
  %sp4.207 = bitcast i8* %next3.207 to [1 x i8]*
  store [1 x i8] %s4.207, [1 x i8]* %sp4.207
  %next4.207 = getelementptr [12 x i8], [12 x i8]* %sp207, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.207 = load [2 x i8], [2 x i8]* @str.5.207
  %cipher.ptr.879 = alloca [5 x i8]
  store [5 x i8] c"\55\58\51\3d\00", [5 x i8]* %cipher.ptr.879
  %cipher.879 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.879, i32 0, i32 0
  %plain.ptr.879 = tail call i8* @base64_decode(i8* %cipher.879)
  %spi879 = bitcast i8* %plain.ptr.879 to [2 x i8]*
  %s5.207 = load [2 x i8], [2 x i8]* %spi879
;-------------------------------
  %sp5.207 = bitcast i8* %next4.207 to [2 x i8]*
  store [2 x i8] %s5.207, [2 x i8]* %sp5.207
  %next5.207 = getelementptr [12 x i8], [12 x i8]* %sp207, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.207 = load [1 x i8], [1 x i8]* @str.6.207
  %cipher.ptr.880 = alloca [5 x i8]
  store [5 x i8] c"\45\67\3d\3d\00", [5 x i8]* %cipher.ptr.880
  %cipher.880 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.880, i32 0, i32 0
  %plain.ptr.880 = tail call i8* @base64_decode(i8* %cipher.880)
  %spi880 = bitcast i8* %plain.ptr.880 to [1 x i8]*
  %s6.207 = load [1 x i8], [1 x i8]* %spi880
;-------------------------------
  %sp6.207 = bitcast i8* %next5.207 to [1 x i8]*
  store [1 x i8] %s6.207, [1 x i8]* %sp6.207
  %next6.207 = getelementptr [12 x i8], [12 x i8]* %sp207, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.207 = load [2 x i8], [2 x i8]* @str.7.207
  %cipher.ptr.878 = alloca [5 x i8]
  store [5 x i8] c"\4d\6c\49\3d\00", [5 x i8]* %cipher.ptr.878
  %cipher.878 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.878, i32 0, i32 0
  %plain.ptr.878 = tail call i8* @base64_decode(i8* %cipher.878)
  %spi878 = bitcast i8* %plain.ptr.878 to [2 x i8]*
  %s7.207 = load [2 x i8], [2 x i8]* %spi878
;-------------------------------
  %sp7.207 = bitcast i8* %next6.207 to [2 x i8]*
  store [2 x i8] %s7.207, [2 x i8]* %sp7.207

  %spi207 = load [12 x i8], [12 x i8]* %sp207
  store [12 x i8] %spi207, [12 x i8]* %sp0.60
;-------------------------------
  %sp0.1.60 = bitcast [12 x i8]* %sp0.60 to i96*
  %i0.60 = load i96, i96* %sp0.1.60

  %sp1.60 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\51\41\63\52\64\70\37\71\51\76\38\52", [12 x i8]* %sp1.60
  %sp208 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.208 = load [1 x i8], [1 x i8]* @str.0.208
  %cipher.ptr.892 = alloca [5 x i8]
  store [5 x i8] c"\55\51\3d\3d\00", [5 x i8]* %cipher.ptr.892
  %cipher.892 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.892, i32 0, i32 0
  %plain.ptr.892 = tail call i8* @base64_decode(i8* %cipher.892)
  %spi892 = bitcast i8* %plain.ptr.892 to [1 x i8]*
  %s0.208 = load [1 x i8], [1 x i8]* %spi892
;-------------------------------
  %sp0.208 = bitcast [12 x i8]* %sp208 to [1 x i8]*
  store [1 x i8] %s0.208, [1 x i8]* %sp0.208
  %next0.208 = getelementptr [12 x i8], [12 x i8]* %sp208, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.208 = load [2 x i8], [2 x i8]* @str.1.208
  %cipher.ptr.887 = alloca [5 x i8]
  store [5 x i8] c"\51\57\4d\3d\00", [5 x i8]* %cipher.ptr.887
  %cipher.887 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.887, i32 0, i32 0
  %plain.ptr.887 = tail call i8* @base64_decode(i8* %cipher.887)
  %spi887 = bitcast i8* %plain.ptr.887 to [2 x i8]*
  %s1.208 = load [2 x i8], [2 x i8]* %spi887
;-------------------------------
  %sp1.208 = bitcast i8* %next0.208 to [2 x i8]*
  store [2 x i8] %s1.208, [2 x i8]* %sp1.208
  %next1.208 = getelementptr [12 x i8], [12 x i8]* %sp208, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.208 = load [1 x i8], [1 x i8]* @str.2.208
  %cipher.ptr.888 = alloca [5 x i8]
  store [5 x i8] c"\55\67\3d\3d\00", [5 x i8]* %cipher.ptr.888
  %cipher.888 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.888, i32 0, i32 0
  %plain.ptr.888 = tail call i8* @base64_decode(i8* %cipher.888)
  %spi888 = bitcast i8* %plain.ptr.888 to [1 x i8]*
  %s2.208 = load [1 x i8], [1 x i8]* %spi888
;-------------------------------
  %sp2.208 = bitcast i8* %next1.208 to [1 x i8]*
  store [1 x i8] %s2.208, [1 x i8]* %sp2.208
  %next2.208 = getelementptr [12 x i8], [12 x i8]* %sp208, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.208 = load [2 x i8], [2 x i8]* @str.3.208
  %cipher.ptr.890 = alloca [5 x i8]
  store [5 x i8] c"\5a\48\41\3d\00", [5 x i8]* %cipher.ptr.890
  %cipher.890 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.890, i32 0, i32 0
  %plain.ptr.890 = tail call i8* @base64_decode(i8* %cipher.890)
  %spi890 = bitcast i8* %plain.ptr.890 to [2 x i8]*
  %s3.208 = load [2 x i8], [2 x i8]* %spi890
;-------------------------------
  %sp3.208 = bitcast i8* %next2.208 to [2 x i8]*
  store [2 x i8] %s3.208, [2 x i8]* %sp3.208
  %next3.208 = getelementptr [12 x i8], [12 x i8]* %sp208, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.208 = load [1 x i8], [1 x i8]* @str.4.208
  %cipher.ptr.891 = alloca [5 x i8]
  store [5 x i8] c"\4e\77\3d\3d\00", [5 x i8]* %cipher.ptr.891
  %cipher.891 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.891, i32 0, i32 0
  %plain.ptr.891 = tail call i8* @base64_decode(i8* %cipher.891)
  %spi891 = bitcast i8* %plain.ptr.891 to [1 x i8]*
  %s4.208 = load [1 x i8], [1 x i8]* %spi891
;-------------------------------
  %sp4.208 = bitcast i8* %next3.208 to [1 x i8]*
  store [1 x i8] %s4.208, [1 x i8]* %sp4.208
  %next4.208 = getelementptr [12 x i8], [12 x i8]* %sp208, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.208 = load [2 x i8], [2 x i8]* @str.5.208
  %cipher.ptr.893 = alloca [5 x i8]
  store [5 x i8] c"\63\56\45\3d\00", [5 x i8]* %cipher.ptr.893
  %cipher.893 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.893, i32 0, i32 0
  %plain.ptr.893 = tail call i8* @base64_decode(i8* %cipher.893)
  %spi893 = bitcast i8* %plain.ptr.893 to [2 x i8]*
  %s5.208 = load [2 x i8], [2 x i8]* %spi893
;-------------------------------
  %sp5.208 = bitcast i8* %next4.208 to [2 x i8]*
  store [2 x i8] %s5.208, [2 x i8]* %sp5.208
  %next5.208 = getelementptr [12 x i8], [12 x i8]* %sp208, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.208 = load [1 x i8], [1 x i8]* @str.6.208
  %cipher.ptr.886 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.886
  %cipher.886 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.886, i32 0, i32 0
  %plain.ptr.886 = tail call i8* @base64_decode(i8* %cipher.886)
  %spi886 = bitcast i8* %plain.ptr.886 to [1 x i8]*
  %s6.208 = load [1 x i8], [1 x i8]* %spi886
;-------------------------------
  %sp6.208 = bitcast i8* %next5.208 to [1 x i8]*
  store [1 x i8] %s6.208, [1 x i8]* %sp6.208
  %next6.208 = getelementptr [12 x i8], [12 x i8]* %sp208, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.208 = load [2 x i8], [2 x i8]* @str.7.208
  %cipher.ptr.889 = alloca [5 x i8]
  store [5 x i8] c"\4f\46\49\3d\00", [5 x i8]* %cipher.ptr.889
  %cipher.889 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.889, i32 0, i32 0
  %plain.ptr.889 = tail call i8* @base64_decode(i8* %cipher.889)
  %spi889 = bitcast i8* %plain.ptr.889 to [2 x i8]*
  %s7.208 = load [2 x i8], [2 x i8]* %spi889
;-------------------------------
  %sp7.208 = bitcast i8* %next6.208 to [2 x i8]*
  store [2 x i8] %s7.208, [2 x i8]* %sp7.208

  %spi208 = load [12 x i8], [12 x i8]* %sp208
  store [12 x i8] %spi208, [12 x i8]* %sp1.60
;-------------------------------
  %sp1.1.60 = bitcast [12 x i8]* %sp1.60 to i96*
  %i1.60 = load i96, i96* %sp1.1.60

  %xp60 = xor i96 %i0.60, %i1.60

  %fi.60 = alloca i96
  store i96 %xp60, i96* %fi.60

  %spi60 = bitcast i96* %fi.60 to [12 x i8]*
  %spi.bis.455 = ptrtoint[12 x i8]* %spi60 to i32
;-------------------------------
  store i32 %spi.bis.455, i32* %63, align 16
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i30.i, -164
  %64 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134517295, i32* %64, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef 134520840, i32 noundef %tmp2_v8.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  ret void

BB_80492C2.i:                                     ; preds = %BB_80492C2.i, %0
  %r_edx.014 = phi i32 [ 0, %0 ], [ %71, %BB_80492C2.i ]
  %storemerge13 = phi i32 [ 0, %0 ], [ %tmp0_v2.i24.i, %BB_80492C2.i ]
  %tmp4_v.i70.i = shl nuw nsw i32 %storemerge13, 2
  %tmp2_v2.i71.i = add i32 %tmp4_v.i70.i, %tmp2_v7.i.i
  %66 = inttoptr i32 %tmp2_v2.i71.i to i32*
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %26, align 8
  %68 = load i32, i32* %25, align 4
  store i32 %68, i32* %27, align 4
;-------------------------------
; Replace: %spi.bis.454 = ptrtoint[16 x i8]* @str.bis.454 to i32
  %sp0.59 = alloca [16 x i8]
;-------------------------------
; Replace: store [16 x i8] c"\56\1D\38\15\2C\6C\62\13\18\11\08\15\77\0A\33\74", [16 x i8]* %sp0.59
  %sp209 = alloca [16 x i8]
  
;-------------------------------
; Replace: %s0.209 = load [2 x i8], [2 x i8]* @str.0.209
  %cipher.ptr.898 = alloca [5 x i8]
  store [5 x i8] c"\56\68\30\3d\00", [5 x i8]* %cipher.ptr.898
  %cipher.898 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.898, i32 0, i32 0
  %plain.ptr.898 = tail call i8* @base64_decode(i8* %cipher.898)
  %spi898 = bitcast i8* %plain.ptr.898 to [2 x i8]*
  %s0.209 = load [2 x i8], [2 x i8]* %spi898
;-------------------------------
  %sp0.209 = bitcast [16 x i8]* %sp209 to [2 x i8]*
  store [2 x i8] %s0.209, [2 x i8]* %sp0.209
  %next0.209 = getelementptr [16 x i8], [16 x i8]* %sp209, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.209 = load [2 x i8], [2 x i8]* @str.1.209
  %cipher.ptr.899 = alloca [5 x i8]
  store [5 x i8] c"\4f\42\55\3d\00", [5 x i8]* %cipher.ptr.899
  %cipher.899 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.899, i32 0, i32 0
  %plain.ptr.899 = tail call i8* @base64_decode(i8* %cipher.899)
  %spi899 = bitcast i8* %plain.ptr.899 to [2 x i8]*
  %s1.209 = load [2 x i8], [2 x i8]* %spi899
;-------------------------------
  %sp1.209 = bitcast i8* %next0.209 to [2 x i8]*
  store [2 x i8] %s1.209, [2 x i8]* %sp1.209
  %next1.209 = getelementptr [16 x i8], [16 x i8]* %sp209, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.209 = load [2 x i8], [2 x i8]* @str.2.209
  %cipher.ptr.894 = alloca [5 x i8]
  store [5 x i8] c"\4c\47\77\3d\00", [5 x i8]* %cipher.ptr.894
  %cipher.894 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.894, i32 0, i32 0
  %plain.ptr.894 = tail call i8* @base64_decode(i8* %cipher.894)
  %spi894 = bitcast i8* %plain.ptr.894 to [2 x i8]*
  %s2.209 = load [2 x i8], [2 x i8]* %spi894
;-------------------------------
  %sp2.209 = bitcast i8* %next1.209 to [2 x i8]*
  store [2 x i8] %s2.209, [2 x i8]* %sp2.209
  %next2.209 = getelementptr [16 x i8], [16 x i8]* %sp209, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.209 = load [2 x i8], [2 x i8]* @str.3.209
  %cipher.ptr.895 = alloca [5 x i8]
  store [5 x i8] c"\59\68\4d\3d\00", [5 x i8]* %cipher.ptr.895
  %cipher.895 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.895, i32 0, i32 0
  %plain.ptr.895 = tail call i8* @base64_decode(i8* %cipher.895)
  %spi895 = bitcast i8* %plain.ptr.895 to [2 x i8]*
  %s3.209 = load [2 x i8], [2 x i8]* %spi895
;-------------------------------
  %sp3.209 = bitcast i8* %next2.209 to [2 x i8]*
  store [2 x i8] %s3.209, [2 x i8]* %sp3.209
  %next3.209 = getelementptr [16 x i8], [16 x i8]* %sp209, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.209 = load [2 x i8], [2 x i8]* @str.4.209
  %cipher.ptr.897 = alloca [5 x i8]
  store [5 x i8] c"\47\42\45\3d\00", [5 x i8]* %cipher.ptr.897
  %cipher.897 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.897, i32 0, i32 0
  %plain.ptr.897 = tail call i8* @base64_decode(i8* %cipher.897)
  %spi897 = bitcast i8* %plain.ptr.897 to [2 x i8]*
  %s4.209 = load [2 x i8], [2 x i8]* %spi897
;-------------------------------
  %sp4.209 = bitcast i8* %next3.209 to [2 x i8]*
  store [2 x i8] %s4.209, [2 x i8]* %sp4.209
  %next4.209 = getelementptr [16 x i8], [16 x i8]* %sp209, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.209 = load [2 x i8], [2 x i8]* @str.5.209
  %cipher.ptr.900 = alloca [5 x i8]
  store [5 x i8] c"\43\42\55\3d\00", [5 x i8]* %cipher.ptr.900
  %cipher.900 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.900, i32 0, i32 0
  %plain.ptr.900 = tail call i8* @base64_decode(i8* %cipher.900)
  %spi900 = bitcast i8* %plain.ptr.900 to [2 x i8]*
  %s5.209 = load [2 x i8], [2 x i8]* %spi900
;-------------------------------
  %sp5.209 = bitcast i8* %next4.209 to [2 x i8]*
  store [2 x i8] %s5.209, [2 x i8]* %sp5.209
  %next5.209 = getelementptr [16 x i8], [16 x i8]* %sp209, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.209 = load [2 x i8], [2 x i8]* @str.6.209
  %cipher.ptr.901 = alloca [5 x i8]
  store [5 x i8] c"\64\77\6f\3d\00", [5 x i8]* %cipher.ptr.901
  %cipher.901 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.901, i32 0, i32 0
  %plain.ptr.901 = tail call i8* @base64_decode(i8* %cipher.901)
  %spi901 = bitcast i8* %plain.ptr.901 to [2 x i8]*
  %s6.209 = load [2 x i8], [2 x i8]* %spi901
;-------------------------------
  %sp6.209 = bitcast i8* %next5.209 to [2 x i8]*
  store [2 x i8] %s6.209, [2 x i8]* %sp6.209
  %next6.209 = getelementptr [16 x i8], [16 x i8]* %sp209, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.209 = load [2 x i8], [2 x i8]* @str.7.209
  %cipher.ptr.896 = alloca [5 x i8]
  store [5 x i8] c"\4d\33\51\3d\00", [5 x i8]* %cipher.ptr.896
  %cipher.896 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.896, i32 0, i32 0
  %plain.ptr.896 = tail call i8* @base64_decode(i8* %cipher.896)
  %spi896 = bitcast i8* %plain.ptr.896 to [2 x i8]*
  %s7.209 = load [2 x i8], [2 x i8]* %spi896
;-------------------------------
  %sp7.209 = bitcast i8* %next6.209 to [2 x i8]*
  store [2 x i8] %s7.209, [2 x i8]* %sp7.209

  %spi209 = load [16 x i8], [16 x i8]* %sp209
  store [16 x i8] %spi209, [16 x i8]* %sp0.59
;-------------------------------
  %sp0.1.59 = bitcast [16 x i8]* %sp0.59 to i128*
  %i0.59 = load i128, i128* %sp0.1.59

  %sp1.59 = alloca [16 x i8]
;-------------------------------
; Replace: store [16 x i8] c"\37\6f\4a\74\55\37\47\77\45\31\35\35\52\6e\39\74", [16 x i8]* %sp1.59
  %sp210 = alloca [16 x i8]
  
;-------------------------------
; Replace: %s0.210 = load [2 x i8], [2 x i8]* @str.0.210
  %cipher.ptr.906 = alloca [5 x i8]
  store [5 x i8] c"\4e\32\38\3d\00", [5 x i8]* %cipher.ptr.906
  %cipher.906 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.906, i32 0, i32 0
  %plain.ptr.906 = tail call i8* @base64_decode(i8* %cipher.906)
  %spi906 = bitcast i8* %plain.ptr.906 to [2 x i8]*
  %s0.210 = load [2 x i8], [2 x i8]* %spi906
;-------------------------------
  %sp0.210 = bitcast [16 x i8]* %sp210 to [2 x i8]*
  store [2 x i8] %s0.210, [2 x i8]* %sp0.210
  %next0.210 = getelementptr [16 x i8], [16 x i8]* %sp210, i32 0, i32 2
  
;-------------------------------
; Replace: %s1.210 = load [2 x i8], [2 x i8]* @str.1.210
  %cipher.ptr.903 = alloca [5 x i8]
  store [5 x i8] c"\53\6e\51\3d\00", [5 x i8]* %cipher.ptr.903
  %cipher.903 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.903, i32 0, i32 0
  %plain.ptr.903 = tail call i8* @base64_decode(i8* %cipher.903)
  %spi903 = bitcast i8* %plain.ptr.903 to [2 x i8]*
  %s1.210 = load [2 x i8], [2 x i8]* %spi903
;-------------------------------
  %sp1.210 = bitcast i8* %next0.210 to [2 x i8]*
  store [2 x i8] %s1.210, [2 x i8]* %sp1.210
  %next1.210 = getelementptr [16 x i8], [16 x i8]* %sp210, i32 0, i32 4
  
;-------------------------------
; Replace: %s2.210 = load [2 x i8], [2 x i8]* @str.2.210
  %cipher.ptr.909 = alloca [5 x i8]
  store [5 x i8] c"\56\54\63\3d\00", [5 x i8]* %cipher.ptr.909
  %cipher.909 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.909, i32 0, i32 0
  %plain.ptr.909 = tail call i8* @base64_decode(i8* %cipher.909)
  %spi909 = bitcast i8* %plain.ptr.909 to [2 x i8]*
  %s2.210 = load [2 x i8], [2 x i8]* %spi909
;-------------------------------
  %sp2.210 = bitcast i8* %next1.210 to [2 x i8]*
  store [2 x i8] %s2.210, [2 x i8]* %sp2.210
  %next2.210 = getelementptr [16 x i8], [16 x i8]* %sp210, i32 0, i32 6
  
;-------------------------------
; Replace: %s3.210 = load [2 x i8], [2 x i8]* @str.3.210
  %cipher.ptr.902 = alloca [5 x i8]
  store [5 x i8] c"\52\33\63\3d\00", [5 x i8]* %cipher.ptr.902
  %cipher.902 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.902, i32 0, i32 0
  %plain.ptr.902 = tail call i8* @base64_decode(i8* %cipher.902)
  %spi902 = bitcast i8* %plain.ptr.902 to [2 x i8]*
  %s3.210 = load [2 x i8], [2 x i8]* %spi902
;-------------------------------
  %sp3.210 = bitcast i8* %next2.210 to [2 x i8]*
  store [2 x i8] %s3.210, [2 x i8]* %sp3.210
  %next3.210 = getelementptr [16 x i8], [16 x i8]* %sp210, i32 0, i32 8
  
;-------------------------------
; Replace: %s4.210 = load [2 x i8], [2 x i8]* @str.4.210
  %cipher.ptr.908 = alloca [5 x i8]
  store [5 x i8] c"\52\54\45\3d\00", [5 x i8]* %cipher.ptr.908
  %cipher.908 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.908, i32 0, i32 0
  %plain.ptr.908 = tail call i8* @base64_decode(i8* %cipher.908)
  %spi908 = bitcast i8* %plain.ptr.908 to [2 x i8]*
  %s4.210 = load [2 x i8], [2 x i8]* %spi908
;-------------------------------
  %sp4.210 = bitcast i8* %next3.210 to [2 x i8]*
  store [2 x i8] %s4.210, [2 x i8]* %sp4.210
  %next4.210 = getelementptr [16 x i8], [16 x i8]* %sp210, i32 0, i32 10
  
;-------------------------------
; Replace: %s5.210 = load [2 x i8], [2 x i8]* @str.5.210
  %cipher.ptr.905 = alloca [5 x i8]
  store [5 x i8] c"\4e\54\55\3d\00", [5 x i8]* %cipher.ptr.905
  %cipher.905 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.905, i32 0, i32 0
  %plain.ptr.905 = tail call i8* @base64_decode(i8* %cipher.905)
  %spi905 = bitcast i8* %plain.ptr.905 to [2 x i8]*
  %s5.210 = load [2 x i8], [2 x i8]* %spi905
;-------------------------------
  %sp5.210 = bitcast i8* %next4.210 to [2 x i8]*
  store [2 x i8] %s5.210, [2 x i8]* %sp5.210
  %next5.210 = getelementptr [16 x i8], [16 x i8]* %sp210, i32 0, i32 12
  
;-------------------------------
; Replace: %s6.210 = load [2 x i8], [2 x i8]* @str.6.210
  %cipher.ptr.907 = alloca [5 x i8]
  store [5 x i8] c"\55\6d\34\3d\00", [5 x i8]* %cipher.ptr.907
  %cipher.907 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.907, i32 0, i32 0
  %plain.ptr.907 = tail call i8* @base64_decode(i8* %cipher.907)
  %spi907 = bitcast i8* %plain.ptr.907 to [2 x i8]*
  %s6.210 = load [2 x i8], [2 x i8]* %spi907
;-------------------------------
  %sp6.210 = bitcast i8* %next5.210 to [2 x i8]*
  store [2 x i8] %s6.210, [2 x i8]* %sp6.210
  %next6.210 = getelementptr [16 x i8], [16 x i8]* %sp210, i32 0, i32 14
  
;-------------------------------
; Replace: %s7.210 = load [2 x i8], [2 x i8]* @str.7.210
  %cipher.ptr.904 = alloca [5 x i8]
  store [5 x i8] c"\4f\58\51\3d\00", [5 x i8]* %cipher.ptr.904
  %cipher.904 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.904, i32 0, i32 0
  %plain.ptr.904 = tail call i8* @base64_decode(i8* %cipher.904)
  %spi904 = bitcast i8* %plain.ptr.904 to [2 x i8]*
  %s7.210 = load [2 x i8], [2 x i8]* %spi904
;-------------------------------
  %sp7.210 = bitcast i8* %next6.210 to [2 x i8]*
  store [2 x i8] %s7.210, [2 x i8]* %sp7.210

  %spi210 = load [16 x i8], [16 x i8]* %sp210
  store [16 x i8] %spi210, [16 x i8]* %sp1.59
;-------------------------------
  %sp1.1.59 = bitcast [16 x i8]* %sp1.59 to i128*
  %i1.59 = load i128, i128* %sp1.1.59

  %xp59 = xor i128 %i0.59, %i1.59

  %fi.59 = alloca i128
  store i128 %xp59, i128* %fi.59

  %spi59 = bitcast i128* %fi.59 to [16 x i8]*
  %spi.bis.454 = ptrtoint[16 x i8]* %spi59 to i32
;-------------------------------
  store i32 %spi.bis.454, i32* %28, align 16
  store i32 134517468, i32* %29, align 4
  %69 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i29.i, i32 inreg noundef %r_edx.014, i32 noundef %tmp2_v10.i81.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !52
  %70 = lshr i64 %69, 32
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %25, align 4
  %tmp0_v2.i24.i = add i32 %72, 1
  store i32 %tmp0_v2.i24.i, i32* %25, align 4
  %73 = icmp ult i32 %tmp0_v2.i24.i, 9
  br i1 %73, label %BB_80492C2.i, label %BB_80492EB.i
}
define internal fastcc void @hello45(i32 %arg_esp) unnamed_addr  norecurse  !retregs !38 {
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
; Replace: %spi.bis.43 = ptrtoint[4 x i8]* @str.bis.43 to i32
  %sp0.69 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\5F\30\1A\45", [4 x i8]* %sp0.69
  %sp211 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.211 = load [1 x i8], [1 x i8]* @str.0.211
  %cipher.ptr.913 = alloca [5 x i8]
  store [5 x i8] c"\58\77\3d\3d\00", [5 x i8]* %cipher.ptr.913
  %cipher.913 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.913, i32 0, i32 0
  %plain.ptr.913 = tail call i8* @base64_decode(i8* %cipher.913)
  %spi913 = bitcast i8* %plain.ptr.913 to [1 x i8]*
  %s0.211 = load [1 x i8], [1 x i8]* %spi913
;-------------------------------
  %sp0.211 = bitcast [4 x i8]* %sp211 to [1 x i8]*
  store [1 x i8] %s0.211, [1 x i8]* %sp0.211
  %next0.211 = getelementptr [4 x i8], [4 x i8]* %sp211, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.211 = load [1 x i8], [1 x i8]* @str.1.211
  %cipher.ptr.912 = alloca [5 x i8]
  store [5 x i8] c"\4d\41\3d\3d\00", [5 x i8]* %cipher.ptr.912
  %cipher.912 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.912, i32 0, i32 0
  %plain.ptr.912 = tail call i8* @base64_decode(i8* %cipher.912)
  %spi912 = bitcast i8* %plain.ptr.912 to [1 x i8]*
  %s1.211 = load [1 x i8], [1 x i8]* %spi912
;-------------------------------
  %sp1.211 = bitcast i8* %next0.211 to [1 x i8]*
  store [1 x i8] %s1.211, [1 x i8]* %sp1.211
  %next1.211 = getelementptr [4 x i8], [4 x i8]* %sp211, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.211 = load [1 x i8], [1 x i8]* @str.2.211
  %cipher.ptr.910 = alloca [5 x i8]
  store [5 x i8] c"\47\67\3d\3d\00", [5 x i8]* %cipher.ptr.910
  %cipher.910 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.910, i32 0, i32 0
  %plain.ptr.910 = tail call i8* @base64_decode(i8* %cipher.910)
  %spi910 = bitcast i8* %plain.ptr.910 to [1 x i8]*
  %s2.211 = load [1 x i8], [1 x i8]* %spi910
;-------------------------------
  %sp2.211 = bitcast i8* %next1.211 to [1 x i8]*
  store [1 x i8] %s2.211, [1 x i8]* %sp2.211
  %next2.211 = getelementptr [4 x i8], [4 x i8]* %sp211, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.211 = load [1 x i8], [1 x i8]* @str.3.211
  %cipher.ptr.911 = alloca [5 x i8]
  store [5 x i8] c"\52\51\3d\3d\00", [5 x i8]* %cipher.ptr.911
  %cipher.911 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.911, i32 0, i32 0
  %plain.ptr.911 = tail call i8* @base64_decode(i8* %cipher.911)
  %spi911 = bitcast i8* %plain.ptr.911 to [1 x i8]*
  %s3.211 = load [1 x i8], [1 x i8]* %spi911
;-------------------------------
  %sp3.211 = bitcast i8* %next2.211 to [1 x i8]*
  store [1 x i8] %s3.211, [1 x i8]* %sp3.211

  %spi211 = load [4 x i8], [4 x i8]* %sp211
  store [4 x i8] %spi211, [4 x i8]* %sp0.69
;-------------------------------
  %sp0.1.69 = bitcast [4 x i8]* %sp0.69 to i32*
  %i0.69 = load i32, i32* %sp0.1.69

  %sp1.69 = alloca [4 x i8]
;-------------------------------
; Replace: store [4 x i8] c"\5a\62\34\45", [4 x i8]* %sp1.69
  %sp212 = alloca [4 x i8]
  
;-------------------------------
; Replace: %s0.212 = load [1 x i8], [1 x i8]* @str.0.212
  %cipher.ptr.917 = alloca [5 x i8]
  store [5 x i8] c"\57\67\3d\3d\00", [5 x i8]* %cipher.ptr.917
  %cipher.917 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.917, i32 0, i32 0
  %plain.ptr.917 = tail call i8* @base64_decode(i8* %cipher.917)
  %spi917 = bitcast i8* %plain.ptr.917 to [1 x i8]*
  %s0.212 = load [1 x i8], [1 x i8]* %spi917
;-------------------------------
  %sp0.212 = bitcast [4 x i8]* %sp212 to [1 x i8]*
  store [1 x i8] %s0.212, [1 x i8]* %sp0.212
  %next0.212 = getelementptr [4 x i8], [4 x i8]* %sp212, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.212 = load [1 x i8], [1 x i8]* @str.1.212
  %cipher.ptr.914 = alloca [5 x i8]
  store [5 x i8] c"\59\67\3d\3d\00", [5 x i8]* %cipher.ptr.914
  %cipher.914 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.914, i32 0, i32 0
  %plain.ptr.914 = tail call i8* @base64_decode(i8* %cipher.914)
  %spi914 = bitcast i8* %plain.ptr.914 to [1 x i8]*
  %s1.212 = load [1 x i8], [1 x i8]* %spi914
;-------------------------------
  %sp1.212 = bitcast i8* %next0.212 to [1 x i8]*
  store [1 x i8] %s1.212, [1 x i8]* %sp1.212
  %next1.212 = getelementptr [4 x i8], [4 x i8]* %sp212, i32 0, i32 2
  
;-------------------------------
; Replace: %s2.212 = load [1 x i8], [1 x i8]* @str.2.212
  %cipher.ptr.916 = alloca [5 x i8]
  store [5 x i8] c"\4e\41\3d\3d\00", [5 x i8]* %cipher.ptr.916
  %cipher.916 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.916, i32 0, i32 0
  %plain.ptr.916 = tail call i8* @base64_decode(i8* %cipher.916)
  %spi916 = bitcast i8* %plain.ptr.916 to [1 x i8]*
  %s2.212 = load [1 x i8], [1 x i8]* %spi916
;-------------------------------
  %sp2.212 = bitcast i8* %next1.212 to [1 x i8]*
  store [1 x i8] %s2.212, [1 x i8]* %sp2.212
  %next2.212 = getelementptr [4 x i8], [4 x i8]* %sp212, i32 0, i32 3
  
;-------------------------------
; Replace: %s3.212 = load [1 x i8], [1 x i8]* @str.3.212
  %cipher.ptr.915 = alloca [5 x i8]
  store [5 x i8] c"\52\51\3d\3d\00", [5 x i8]* %cipher.ptr.915
  %cipher.915 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.915, i32 0, i32 0
  %plain.ptr.915 = tail call i8* @base64_decode(i8* %cipher.915)
  %spi915 = bitcast i8* %plain.ptr.915 to [1 x i8]*
  %s3.212 = load [1 x i8], [1 x i8]* %spi915
;-------------------------------
  %sp3.212 = bitcast i8* %next2.212 to [1 x i8]*
  store [1 x i8] %s3.212, [1 x i8]* %sp3.212

  %spi212 = load [4 x i8], [4 x i8]* %sp212
  store [4 x i8] %spi212, [4 x i8]* %sp1.69
;-------------------------------
  %sp1.1.69 = bitcast [4 x i8]* %sp1.69 to i32*
  %i1.69 = load i32, i32* %sp1.1.69

  %xp69 = xor i32 %i0.69, %i1.69

  %fi.69 = alloca i32
  store i32 %xp69, i32* %fi.69

  %spi69 = bitcast i32* %fi.69 to [4 x i8]*
  %spi.bis.43 = ptrtoint[4 x i8]* %spi69 to i32
;-------------------------------
  store i32 %spi.bis.43, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i.i, -32
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
;-------------------------------
; Replace: %spi.bis.42 = ptrtoint[12 x i8]* @str.bis.42 to i32
  %sp0.68 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\0B\15\24\01\03\52\21\21\4A\0F\12\39", [12 x i8]* %sp0.68
  %sp213 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.213 = load [1 x i8], [1 x i8]* @str.0.213
  %cipher.ptr.920 = alloca [5 x i8]
  store [5 x i8] c"\43\77\3d\3d\00", [5 x i8]* %cipher.ptr.920
  %cipher.920 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.920, i32 0, i32 0
  %plain.ptr.920 = tail call i8* @base64_decode(i8* %cipher.920)
  %spi920 = bitcast i8* %plain.ptr.920 to [1 x i8]*
  %s0.213 = load [1 x i8], [1 x i8]* %spi920
;-------------------------------
  %sp0.213 = bitcast [12 x i8]* %sp213 to [1 x i8]*
  store [1 x i8] %s0.213, [1 x i8]* %sp0.213
  %next0.213 = getelementptr [12 x i8], [12 x i8]* %sp213, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.213 = load [2 x i8], [2 x i8]* @str.1.213
  %cipher.ptr.921 = alloca [5 x i8]
  store [5 x i8] c"\46\53\51\3d\00", [5 x i8]* %cipher.ptr.921
  %cipher.921 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.921, i32 0, i32 0
  %plain.ptr.921 = tail call i8* @base64_decode(i8* %cipher.921)
  %spi921 = bitcast i8* %plain.ptr.921 to [2 x i8]*
  %s1.213 = load [2 x i8], [2 x i8]* %spi921
;-------------------------------
  %sp1.213 = bitcast i8* %next0.213 to [2 x i8]*
  store [2 x i8] %s1.213, [2 x i8]* %sp1.213
  %next1.213 = getelementptr [12 x i8], [12 x i8]* %sp213, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.213 = load [1 x i8], [1 x i8]* @str.2.213
  %cipher.ptr.925 = alloca [5 x i8]
  store [5 x i8] c"\41\51\3d\3d\00", [5 x i8]* %cipher.ptr.925
  %cipher.925 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.925, i32 0, i32 0
  %plain.ptr.925 = tail call i8* @base64_decode(i8* %cipher.925)
  %spi925 = bitcast i8* %plain.ptr.925 to [1 x i8]*
  %s2.213 = load [1 x i8], [1 x i8]* %spi925
;-------------------------------
  %sp2.213 = bitcast i8* %next1.213 to [1 x i8]*
  store [1 x i8] %s2.213, [1 x i8]* %sp2.213
  %next2.213 = getelementptr [12 x i8], [12 x i8]* %sp213, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.213 = load [2 x i8], [2 x i8]* @str.3.213
  %cipher.ptr.918 = alloca [5 x i8]
  store [5 x i8] c"\41\31\49\3d\00", [5 x i8]* %cipher.ptr.918
  %cipher.918 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.918, i32 0, i32 0
  %plain.ptr.918 = tail call i8* @base64_decode(i8* %cipher.918)
  %spi918 = bitcast i8* %plain.ptr.918 to [2 x i8]*
  %s3.213 = load [2 x i8], [2 x i8]* %spi918
;-------------------------------
  %sp3.213 = bitcast i8* %next2.213 to [2 x i8]*
  store [2 x i8] %s3.213, [2 x i8]* %sp3.213
  %next3.213 = getelementptr [12 x i8], [12 x i8]* %sp213, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.213 = load [1 x i8], [1 x i8]* @str.4.213
  %cipher.ptr.919 = alloca [5 x i8]
  store [5 x i8] c"\49\51\3d\3d\00", [5 x i8]* %cipher.ptr.919
  %cipher.919 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.919, i32 0, i32 0
  %plain.ptr.919 = tail call i8* @base64_decode(i8* %cipher.919)
  %spi919 = bitcast i8* %plain.ptr.919 to [1 x i8]*
  %s4.213 = load [1 x i8], [1 x i8]* %spi919
;-------------------------------
  %sp4.213 = bitcast i8* %next3.213 to [1 x i8]*
  store [1 x i8] %s4.213, [1 x i8]* %sp4.213
  %next4.213 = getelementptr [12 x i8], [12 x i8]* %sp213, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.213 = load [2 x i8], [2 x i8]* @str.5.213
  %cipher.ptr.922 = alloca [5 x i8]
  store [5 x i8] c"\49\55\6f\3d\00", [5 x i8]* %cipher.ptr.922
  %cipher.922 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.922, i32 0, i32 0
  %plain.ptr.922 = tail call i8* @base64_decode(i8* %cipher.922)
  %spi922 = bitcast i8* %plain.ptr.922 to [2 x i8]*
  %s5.213 = load [2 x i8], [2 x i8]* %spi922
;-------------------------------
  %sp5.213 = bitcast i8* %next4.213 to [2 x i8]*
  store [2 x i8] %s5.213, [2 x i8]* %sp5.213
  %next5.213 = getelementptr [12 x i8], [12 x i8]* %sp213, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.213 = load [1 x i8], [1 x i8]* @str.6.213
  %cipher.ptr.924 = alloca [5 x i8]
  store [5 x i8] c"\44\77\3d\3d\00", [5 x i8]* %cipher.ptr.924
  %cipher.924 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.924, i32 0, i32 0
  %plain.ptr.924 = tail call i8* @base64_decode(i8* %cipher.924)
  %spi924 = bitcast i8* %plain.ptr.924 to [1 x i8]*
  %s6.213 = load [1 x i8], [1 x i8]* %spi924
;-------------------------------
  %sp6.213 = bitcast i8* %next5.213 to [1 x i8]*
  store [1 x i8] %s6.213, [1 x i8]* %sp6.213
  %next6.213 = getelementptr [12 x i8], [12 x i8]* %sp213, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.213 = load [2 x i8], [2 x i8]* @str.7.213
  %cipher.ptr.923 = alloca [5 x i8]
  store [5 x i8] c"\45\6a\6b\3d\00", [5 x i8]* %cipher.ptr.923
  %cipher.923 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.923, i32 0, i32 0
  %plain.ptr.923 = tail call i8* @base64_decode(i8* %cipher.923)
  %spi923 = bitcast i8* %plain.ptr.923 to [2 x i8]*
  %s7.213 = load [2 x i8], [2 x i8]* %spi923
;-------------------------------
  %sp7.213 = bitcast i8* %next6.213 to [2 x i8]*
  store [2 x i8] %s7.213, [2 x i8]* %sp7.213

  %spi213 = load [12 x i8], [12 x i8]* %sp213
  store [12 x i8] %spi213, [12 x i8]* %sp0.68
;-------------------------------
  %sp0.1.68 = bitcast [12 x i8]* %sp0.68 to i96*
  %i0.68 = load i96, i96* %sp0.1.68

  %sp1.68 = alloca [12 x i8]
;-------------------------------
; Replace: store [12 x i8] c"\43\70\48\6d\6c\72\76\4e\38\63\76\39", [12 x i8]* %sp1.68
  %sp214 = alloca [12 x i8]
  
;-------------------------------
; Replace: %s0.214 = load [1 x i8], [1 x i8]* @str.0.214
  %cipher.ptr.932 = alloca [5 x i8]
  store [5 x i8] c"\51\77\3d\3d\00", [5 x i8]* %cipher.ptr.932
  %cipher.932 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.932, i32 0, i32 0
  %plain.ptr.932 = tail call i8* @base64_decode(i8* %cipher.932)
  %spi932 = bitcast i8* %plain.ptr.932 to [1 x i8]*
  %s0.214 = load [1 x i8], [1 x i8]* %spi932
;-------------------------------
  %sp0.214 = bitcast [12 x i8]* %sp214 to [1 x i8]*
  store [1 x i8] %s0.214, [1 x i8]* %sp0.214
  %next0.214 = getelementptr [12 x i8], [12 x i8]* %sp214, i32 0, i32 1
  
;-------------------------------
; Replace: %s1.214 = load [2 x i8], [2 x i8]* @str.1.214
  %cipher.ptr.928 = alloca [5 x i8]
  store [5 x i8] c"\63\45\67\3d\00", [5 x i8]* %cipher.ptr.928
  %cipher.928 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.928, i32 0, i32 0
  %plain.ptr.928 = tail call i8* @base64_decode(i8* %cipher.928)
  %spi928 = bitcast i8* %plain.ptr.928 to [2 x i8]*
  %s1.214 = load [2 x i8], [2 x i8]* %spi928
;-------------------------------
  %sp1.214 = bitcast i8* %next0.214 to [2 x i8]*
  store [2 x i8] %s1.214, [2 x i8]* %sp1.214
  %next1.214 = getelementptr [12 x i8], [12 x i8]* %sp214, i32 0, i32 3
  
;-------------------------------
; Replace: %s2.214 = load [1 x i8], [1 x i8]* @str.2.214
  %cipher.ptr.933 = alloca [5 x i8]
  store [5 x i8] c"\62\51\3d\3d\00", [5 x i8]* %cipher.ptr.933
  %cipher.933 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.933, i32 0, i32 0
  %plain.ptr.933 = tail call i8* @base64_decode(i8* %cipher.933)
  %spi933 = bitcast i8* %plain.ptr.933 to [1 x i8]*
  %s2.214 = load [1 x i8], [1 x i8]* %spi933
;-------------------------------
  %sp2.214 = bitcast i8* %next1.214 to [1 x i8]*
  store [1 x i8] %s2.214, [1 x i8]* %sp2.214
  %next2.214 = getelementptr [12 x i8], [12 x i8]* %sp214, i32 0, i32 4
  
;-------------------------------
; Replace: %s3.214 = load [2 x i8], [2 x i8]* @str.3.214
  %cipher.ptr.927 = alloca [5 x i8]
  store [5 x i8] c"\62\48\49\3d\00", [5 x i8]* %cipher.ptr.927
  %cipher.927 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.927, i32 0, i32 0
  %plain.ptr.927 = tail call i8* @base64_decode(i8* %cipher.927)
  %spi927 = bitcast i8* %plain.ptr.927 to [2 x i8]*
  %s3.214 = load [2 x i8], [2 x i8]* %spi927
;-------------------------------
  %sp3.214 = bitcast i8* %next2.214 to [2 x i8]*
  store [2 x i8] %s3.214, [2 x i8]* %sp3.214
  %next3.214 = getelementptr [12 x i8], [12 x i8]* %sp214, i32 0, i32 6
  
;-------------------------------
; Replace: %s4.214 = load [1 x i8], [1 x i8]* @str.4.214
  %cipher.ptr.931 = alloca [5 x i8]
  store [5 x i8] c"\64\67\3d\3d\00", [5 x i8]* %cipher.ptr.931
  %cipher.931 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.931, i32 0, i32 0
  %plain.ptr.931 = tail call i8* @base64_decode(i8* %cipher.931)
  %spi931 = bitcast i8* %plain.ptr.931 to [1 x i8]*
  %s4.214 = load [1 x i8], [1 x i8]* %spi931
;-------------------------------
  %sp4.214 = bitcast i8* %next3.214 to [1 x i8]*
  store [1 x i8] %s4.214, [1 x i8]* %sp4.214
  %next4.214 = getelementptr [12 x i8], [12 x i8]* %sp214, i32 0, i32 7
  
;-------------------------------
; Replace: %s5.214 = load [2 x i8], [2 x i8]* @str.5.214
  %cipher.ptr.929 = alloca [5 x i8]
  store [5 x i8] c"\54\6a\67\3d\00", [5 x i8]* %cipher.ptr.929
  %cipher.929 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.929, i32 0, i32 0
  %plain.ptr.929 = tail call i8* @base64_decode(i8* %cipher.929)
  %spi929 = bitcast i8* %plain.ptr.929 to [2 x i8]*
  %s5.214 = load [2 x i8], [2 x i8]* %spi929
;-------------------------------
  %sp5.214 = bitcast i8* %next4.214 to [2 x i8]*
  store [2 x i8] %s5.214, [2 x i8]* %sp5.214
  %next5.214 = getelementptr [12 x i8], [12 x i8]* %sp214, i32 0, i32 9
  
;-------------------------------
; Replace: %s6.214 = load [1 x i8], [1 x i8]* @str.6.214
  %cipher.ptr.926 = alloca [5 x i8]
  store [5 x i8] c"\59\77\3d\3d\00", [5 x i8]* %cipher.ptr.926
  %cipher.926 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.926, i32 0, i32 0
  %plain.ptr.926 = tail call i8* @base64_decode(i8* %cipher.926)
  %spi926 = bitcast i8* %plain.ptr.926 to [1 x i8]*
  %s6.214 = load [1 x i8], [1 x i8]* %spi926
;-------------------------------
  %sp6.214 = bitcast i8* %next5.214 to [1 x i8]*
  store [1 x i8] %s6.214, [1 x i8]* %sp6.214
  %next6.214 = getelementptr [12 x i8], [12 x i8]* %sp214, i32 0, i32 10
  
;-------------------------------
; Replace: %s7.214 = load [2 x i8], [2 x i8]* @str.7.214
  %cipher.ptr.930 = alloca [5 x i8]
  store [5 x i8] c"\64\6a\6b\3d\00", [5 x i8]* %cipher.ptr.930
  %cipher.930 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.930, i32 0, i32 0
  %plain.ptr.930 = tail call i8* @base64_decode(i8* %cipher.930)
  %spi930 = bitcast i8* %plain.ptr.930 to [2 x i8]*
  %s7.214 = load [2 x i8], [2 x i8]* %spi930
;-------------------------------
  %sp7.214 = bitcast i8* %next6.214 to [2 x i8]*
  store [2 x i8] %s7.214, [2 x i8]* %sp7.214

  %spi214 = load [12 x i8], [12 x i8]* %sp214
  store [12 x i8] %spi214, [12 x i8]* %sp1.68
;-------------------------------
  %sp1.1.68 = bitcast [12 x i8]* %sp1.68 to i96*
  %i1.68 = load i96, i96* %sp1.1.68

  %xp68 = xor i96 %i0.68, %i1.68

  %fi.68 = alloca i96
  store i96 %xp68, i96* %fi.68

  %spi68 = bitcast i96* %fi.68 to [12 x i8]*
  %spi.bis.42 = ptrtoint[12 x i8]* %spi68 to i32
;-------------------------------
  store i32 %spi.bis.42, i32* %8, align 16
  %tmp2_v3.i4.i = add i32 %tmp0_v.i.i, -36
  %9 = inttoptr i32 %tmp2_v3.i4.i to i32*
  store i32 134517188, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
;-------------------------------
;---Replaced puts with printf---
  %fp93 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %10)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
; Replace: %cast93= getelementptr [1 x i8], [1 x i8]* @.str79, i64 0, i64 0
  %cipher.ptr.228 = alloca [5 x i8]
  store [5 x i8] c"\43\67\3d\3d\00", [5 x i8]* %cipher.ptr.228
  %cipher.228 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.228, i32 0, i32 0
  %plain.ptr.228 = tail call i8* @base64_decode(i8* %cipher.228)
  %spi228 = bitcast i8* %plain.ptr.228 to [1 x i8]*
  %cast93= getelementptr [1 x i8], [1 x i8]* %spi228, i64 0, i64 0
;-------------------------------
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %cast93)  nobuiltin nounwind "no-builtins" , !funcname !240
;-------------------------------
  ret void
}
define internal fastcc void @shuffle_array397(i32 %arg_esp) unnamed_addr  norecurse  !retregs !26 {
  %tmp2_v.i32.i = add i32 %arg_esp, 4
  %tmp0_v.i33.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i35.i = add i32 %tmp0_v.i33.i, -4
  %3 = inttoptr i32 %tmp2_v3.i35.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i36.i = add i32 %tmp0_v.i33.i, -8
  %4 = inttoptr i32 %tmp2_v4.i36.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i38.i = add i32 %tmp0_v.i33.i, -12
  %5 = inttoptr i32 %tmp2_v5.i38.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i40.i = add i32 %tmp0_v.i33.i, -16
  %6 = inttoptr i32 %tmp2_v6.i40.i to i32*
  store i32 %tmp2_v.i32.i, i32* %6, align 16
  %tmp2_v8.i42.i = add i32 %tmp0_v.i33.i, -244
  %7 = inttoptr i32 %tmp2_v8.i42.i to i32*
  store i32 134517300, i32* %7, align 4
  %tmp4_v.i68.i.b = load i1, i1* @segs.0, align 1
  %8 = inttoptr i32 %arg_esp to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v2.i72.i = add i32 %tmp0_v.i33.i, -20
  %10 = inttoptr i32 %tmp2_v2.i72.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v3.i73.i = add i32 %tmp0_v.i33.i, -236
  %11 = inttoptr i32 %tmp2_v3.i73.i to i32*
  %tmp2_v4.i58.i = add i32 %tmp0_v.i33.i, -228
  store i32 0, i32* %11, align 4
  br label %BB_8049251.i

BB_8049277.i:                                     ; preds = %BB_8049251.i
  %tmp2_v.i.i = add i32 %tmp0_v.i33.i, -252
  %12 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 52, i32* %12, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i33.i, -256
  %13 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %tmp2_v4.i58.i, i32* %13, align 16
  %tmp2_v3.i.i = add i32 %tmp0_v.i33.i, -260
  %14 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 134517384, i32* %14, align 4
  %tmp2_v.i3.i.i = add i32 %tmp0_v.i33.i, -264
  %15 = inttoptr i32 %tmp2_v.i3.i.i to i32*
  store i32 %tmp2_v4.i36.i, i32* %15, align 8
  %tmp2_v1.i5.i.i = add i32 %tmp0_v.i33.i, -268
  %16 = inttoptr i32 %tmp2_v1.i5.i.i to i32*
  store i32 134529024, i32* %16, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i33.i, -292
  %17 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517501, i32* %17, align 4
  %tmp2_v.i21.i.i = add i32 %tmp0_v.i33.i, -304
  %18 = inttoptr i32 %tmp2_v.i21.i.i to i32*
  store i32 0, i32* %18, align 16
  %tmp2_v2.i22.i.i = add i32 %tmp0_v.i33.i, -308
  %19 = inttoptr i32 %tmp2_v2.i22.i.i to i32*
  store i32 134517517, i32* %19, align 4
  %arg.i.i.i = load i32, i32* %18, align 16
  %20 = tail call i32 @time(i32 %arg.i.i.i)
  store i32 %20, i32* %18, align 16
  store i32 134517529, i32* %19, align 4
  %arg.i.i24.i = load i32, i32* %18, align 16
  tail call void @srand(i32 %arg.i.i24.i)
  %tmp2_v.i10.i.i = add i32 %tmp0_v.i33.i, -284
  %21 = inttoptr i32 %tmp2_v.i10.i.i to i32*
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %BB_8049325.i.lr.ph.i, label %Func_shuffle.exit

BB_8049325.i.lr.ph.i:                             ; preds = %BB_8049277.i
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i33.i, -280
  %24 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i33.i, -276
  %25 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  br label %BB_8049325.i.i

BB_8049325.i.i:                                   ; preds = %BB_8049325.i.i, %BB_8049325.i.lr.ph.i
  store i32 134517546, i32* %17, align 4
  %26 = tail call i32 @rand()
  %tmp0_v.i11.i.i = ashr i32 %26, 31
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %26 to i64
  %29 = zext i32 %tmp0_v.i11.i.i to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = icmp ne i32 %27, 0
  tail call void @llvm.assume(i1 %32)
  %33 = sext i32 %27 to i64
  %.frozen = freeze i64 %31
  %.frozen11 = freeze i64 %33
  %34 = sdiv i64 %.frozen, %.frozen11
  %35 = add i64 %34, 2147483648
  %36 = icmp ult i64 %35, 4294967296
  tail call void @llvm.assume(i1 %36)
  %37 = mul i64 %34, %.frozen11
  %.decomposed = sub i64 %.frozen, %37
  %38 = trunc i64 %.decomposed to i32
  store i32 %38, i32* %24, align 8
  %39 = load i32, i32* %21, align 4
  %tmp4_v.i.i.i3 = shl i32 %39, 2
  %40 = load i32, i32* %13, align 16
  %tmp0_v8.i.i.i = add i32 %40, %tmp4_v.i.i.i3
  %41 = inttoptr i32 %tmp0_v8.i.i.i to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %25, align 4
  %43 = load i32, i32* %24, align 8
  %tmp4_v13.i.i.i = shl i32 %43, 2
  %44 = load i32, i32* %13, align 16
  %tmp0_v16.i.i.i = add i32 %44, %tmp4_v13.i.i.i
  %45 = load i32, i32* %21, align 4
  %tmp4_v19.i.i.i = shl i32 %45, 2
  %tmp0_v22.i.i.i = add i32 %tmp4_v19.i.i.i, %44
  %46 = inttoptr i32 %tmp0_v16.i.i.i to i32*
  %47 = load i32, i32* %46, align 4
  %48 = inttoptr i32 %tmp0_v22.i.i.i to i32*
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %24, align 8
  %tmp4_v26.i.i.i = shl i32 %49, 2
  %50 = load i32, i32* %13, align 16
  %tmp0_v29.i.i.i = add i32 %tmp4_v26.i.i.i, %50
  %51 = load i32, i32* %25, align 4
  %52 = inttoptr i32 %tmp0_v29.i.i.i to i32*
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %21, align 4
  %tmp0_v34.i.i.i = add i32 %53, 1
  store i32 %tmp0_v34.i.i.i, i32* %21, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %tmp0_v34.i.i.i, %54
  br i1 %55, label %BB_8049325.i.i, label %Func_shuffle.exit

Func_shuffle.exit:                                ; preds = %BB_8049325.i.i, %BB_8049277.i
  %r_ecx.0.lcssa.i = phi i32 [ %tmp2_v.i32.i, %BB_8049277.i ], [ %tmp4_v19.i.i.i, %BB_8049325.i.i ]
  %r_edx.0.lcssa.i = phi i32 [ %tmp2_v1.i55.i, %BB_8049277.i ], [ %tmp0_v29.i.i.i, %BB_8049325.i.i ]
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 8
  %tmp2_v.i51.i = add i32 %57, -224
  %58 = inttoptr i32 %tmp2_v.i51.i to i32*
  %tmp2_v1.i4.i = add i32 %57, -220
  %tmp2_v5.i.i = add i32 %tmp0_v.i33.i, -248
  %59 = inttoptr i32 %tmp2_v5.i.i to i32*
  %tmp2_v8.i.i = add i32 %tmp0_v.i33.i, -252
  %60 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v9.i.i = add i32 %56, -8184
  %tmp2_v11.i.i = add i32 %tmp0_v.i33.i, -260
  %61 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 0, i32* %58, align 4
  br label %BB_8049297.i

BB_8049297.i:                                     ; preds = %BB_8049297.i, %Func_shuffle.exit
  %r_edx.010 = phi i32 [ %r_edx.0.lcssa.i, %Func_shuffle.exit ], [ %67, %BB_8049297.i ]
  %storemerge19 = phi i32 [ 0, %Func_shuffle.exit ], [ %tmp0_v2.i22.i, %BB_8049297.i ]
  %tmp4_v.i.i = shl i32 %storemerge19, 2
  %tmp2_v2.i5.i = add i32 %tmp2_v1.i4.i, %tmp4_v.i.i
  %62 = inttoptr i32 %tmp2_v2.i5.i to i32*
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %59, align 8
  %64 = load i32, i32* %58, align 4
  store i32 %64, i32* %60, align 4
  store i32 %tmp2_v9.i.i, i32* %13, align 16
  store i32 134517434, i32* %61, align 4
  %65 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.lcssa.i, i32 inreg noundef %r_edx.010, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %66 = lshr i64 %65, 32
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %58, align 4
  %tmp0_v2.i22.i = add i32 %68, 1
  store i32 %tmp0_v2.i22.i, i32* %58, align 4
  %69 = icmp slt i32 %tmp0_v2.i22.i, 52
  br i1 %69, label %BB_8049297.i, label %.exit

BB_8049251.i:                                     ; preds = %BB_8049251.i, %0
  %storemerge8 = phi i32 [ 0, %0 ], [ %tmp0_v8.i.i, %BB_8049251.i ]
  %tmp2_v1.i55.i = add nsw i32 %storemerge8, 1
  %tmp4_v.i59.i = shl i32 %storemerge8, 2
  %tmp2_v5.i60.i = add i32 %tmp2_v4.i58.i, %tmp4_v.i59.i
  %70 = inttoptr i32 %tmp2_v5.i60.i to i32*
  store i32 %tmp2_v1.i55.i, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %tmp0_v8.i.i = add i32 %71, 1
  store i32 %tmp0_v8.i.i, i32* %11, align 4
  %72 = icmp slt i32 %tmp0_v8.i.i, 52
  br i1 %72, label %BB_8049251.i, label %BB_8049277.i

.exit:                                            ; preds = %BB_8049297.i
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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{i32 0, i32 0, i32 0}
!39 = !{!"clang version 14.0.0"}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{i32 1, !"NumRegisterParameters", i32 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"double", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !47, i64 0}
!51 = !{i32 0, i32 0, i32 0, i32 0}
!52 = !{!"printf"}
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
!65 = !{i32 0, i32 0, i32 0, i32 0}
!66 = !{!"printf"}
!67 = !{!"clang version 14.0.0"}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"PIC Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{i32 1, !"NumRegisterParameters", i32 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"double", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!78, !78, i64 0}
!78 = !{!"int", !75, i64 0}
!79 = !{i32 0, i32 0, i32 0, i32 0}
!80 = !{!"printf"}
!81 = !{!"clang version 14.0.0"}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 7, !"PIC Level", i32 2}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{i32 1, !"NumRegisterParameters", i32 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"double", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C++ TBAA"}
!91 = !{!92, !92, i64 0}
!92 = !{!"int", !89, i64 0}
!93 = !{i32 0, i32 0, i32 0}
!94 = !{!"printf"}
!95 = !{!"clang version 14.0.0"}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 7, !"PIC Level", i32 2}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{i32 1, !"NumRegisterParameters", i32 0}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C++ TBAA"}
!105 = !{i32 0, i32 0, i32 0}
!106 = !{!"clang version 14.0.0"}
!107 = !{i32 1, !"wchar_size", i32 4}
!108 = !{i32 7, !"PIC Level", i32 2}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{i32 1, !"NumRegisterParameters", i32 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"double", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C++ TBAA"}
!116 = !{!117, !117, i64 0}
!117 = !{!"int", !114, i64 0}
!118 = !{i32 0, i32 0, i32 0, i32 0}
!119 = !{!"printf"}
!120 = !{!"clang version 14.0.0"}
!121 = !{i32 1, !"wchar_size", i32 4}
!122 = !{i32 7, !"PIC Level", i32 2}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{i32 1, !"NumRegisterParameters", i32 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"double", !128, i64 0}
!128 = !{!"omnipotent char", !129, i64 0}
!129 = !{!"Simple C++ TBAA"}
!130 = !{!131, !131, i64 0}
!131 = !{!"int", !128, i64 0}
!132 = !{i32 0, i32 0, i32 0, i32 0}
!133 = !{!"printf"}
!134 = !{!"clang version 14.0.0"}
!135 = !{i32 1, !"wchar_size", i32 4}
!136 = !{i32 7, !"PIC Level", i32 2}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{i32 1, !"NumRegisterParameters", i32 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"double", !142, i64 0}
!142 = !{!"omnipotent char", !143, i64 0}
!143 = !{!"Simple C++ TBAA"}
!144 = !{!145, !145, i64 0}
!145 = !{!"int", !142, i64 0}
!146 = !{i32 0, i32 0, i32 0, i32 0}
!147 = !{!"printf"}
!148 = !{!"clang version 14.0.0"}
!149 = !{i32 1, !"wchar_size", i32 4}
!150 = !{i32 7, !"PIC Level", i32 2}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{i32 1, !"NumRegisterParameters", i32 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"double", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C++ TBAA"}
!158 = !{!159, !159, i64 0}
!159 = !{!"int", !156, i64 0}
!160 = !{i32 0, i32 0, i32 0, i32 0}
!161 = !{!"printf"}
!162 = !{!"clang version 14.0.0"}
!163 = !{i32 1, !"wchar_size", i32 4}
!164 = !{i32 7, !"PIC Level", i32 2}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{i32 1, !"NumRegisterParameters", i32 0}
!168 = !{!169, !169, i64 0}
!169 = !{!"double", !170, i64 0}
!170 = !{!"omnipotent char", !171, i64 0}
!171 = !{!"Simple C++ TBAA"}
!172 = !{!173, !173, i64 0}
!173 = !{!"int", !170, i64 0}
!174 = !{i32 0, i32 0, i32 0}
!175 = !{!"printf"}
!176 = !{!"clang version 14.0.0"}
!177 = !{i32 1, !"wchar_size", i32 4}
!178 = !{i32 7, !"PIC Level", i32 2}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{i32 1, !"NumRegisterParameters", i32 0}
!182 = !{!183, !183, i64 0}
!183 = !{!"int", !184, i64 0}
!184 = !{!"omnipotent char", !185, i64 0}
!185 = !{!"Simple C++ TBAA"}
!186 = !{i32 0, i32 0, i32 0}
!187 = !{!"clang version 14.0.0"}
!188 = !{i32 1, !"wchar_size", i32 4}
!189 = !{i32 7, !"PIC Level", i32 2}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{i32 1, !"NumRegisterParameters", i32 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"int", !195, i64 0}
!195 = !{!"omnipotent char", !196, i64 0}
!196 = !{!"Simple C++ TBAA"}
!197 = !{i32 0, i32 0, i32 0}
!198 = !{i32 0, i32 2}
!199 = !{!"clang version 14.0.0"}
!200 = !{i32 1, !"wchar_size", i32 4}
!201 = !{i32 7, !"PIC Level", i32 2}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{i32 1, !"NumRegisterParameters", i32 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"double", !207, i64 0}
!207 = !{!"omnipotent char", !208, i64 0}
!208 = !{!"Simple C++ TBAA"}
!209 = !{!210, !210, i64 0}
!210 = !{!"int", !207, i64 0}
!211 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
!212 = !{!"printf"}
!213 = !{!"clang version 14.0.0"}
!214 = !{i32 1, !"wchar_size", i32 4}
!215 = !{i32 7, !"PIC Level", i32 2}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{i32 1, !"NumRegisterParameters", i32 0}
!219 = !{!220, !220, i64 0}
!220 = !{!"double", !221, i64 0}
!221 = !{!"omnipotent char", !222, i64 0}
!222 = !{!"Simple C++ TBAA"}
!223 = !{!224, !224, i64 0}
!224 = !{!"int", !221, i64 0}
!225 = !{i32 0, i32 0, i32 0, i32 0}
!226 = !{!"printf"}
!227 = !{!"clang version 14.0.0"}
!228 = !{i32 1, !"wchar_size", i32 4}
!229 = !{i32 7, !"PIC Level", i32 2}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{i32 1, !"NumRegisterParameters", i32 0}
!233 = !{!234, !234, i64 0}
!234 = !{!"double", !235, i64 0}
!235 = !{!"omnipotent char", !236, i64 0}
!236 = !{!"Simple C++ TBAA"}
!237 = !{!238, !238, i64 0}
!238 = !{!"int", !235, i64 0}
!239 = !{i32 0, i32 0, i32 0, i32 0}
!240 = !{!"printf"}
