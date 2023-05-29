; Mutation 162
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@stack343 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem30 = internal global [1024 x i8] zeroinitializer, align 1
@stack179 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem28 = internal global [1024 x i8] zeroinitializer, align 1
@stack836 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem26 = internal global [1024 x i8] zeroinitializer, align 1
@stack441 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem24 = internal global [1024 x i8] zeroinitializer, align 1
@stack111 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem22 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @strchr(i32, i32) local_unnamed_addr  noinline 
@stack592 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem20 = internal global [1024 x i8] zeroinitializer, align 1
@stack535 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem18 = internal global [1024 x i8] zeroinitializer, align 1
@stack426 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem16 = internal global [1024 x i8] zeroinitializer, align 1
@stack938 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem14 = internal global [1024 x i8] zeroinitializer, align 1
@stack873 = internal global [8092 x i32] zeroinitializer, align 16
@stack1 = internal global [8092 x i32] zeroinitializer, align 16
declare void @llvm.assume(i1 noundef)  inaccessiblememonly nofree nosync nounwind willreturn 
@stack271 = internal global [8092 x i32] zeroinitializer, align 16
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 
@stack346 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem9 = internal global [1024 x i8] zeroinitializer, align 1
@stack394 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem7 = internal global [1024 x i8] zeroinitializer, align 1
@stack864 = internal global [8092 x i32] zeroinitializer, align 16
declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 
declare i32 @usleep(i32) local_unnamed_addr  noinline 
@stack833 = internal global [8092 x i32] zeroinitializer, align 16
@_ZL6segmem4 = internal global [1024 x i8] zeroinitializer, align 1
declare i32 @strlen(i32) local_unnamed_addr  noinline 
@stack747 = internal global [8092 x i32] zeroinitializer, align 16
@df = internal unnamed_addr global i32 0
@_ZL6segmem2 = internal global [1024 x i8] zeroinitializer, align 1
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr  nofree noinline nounwind 
declare i32 @malloc(i32) local_unnamed_addr  noinline 

@fpstt = internal unnamed_addr global i32 0
@fp_status.0 = internal unnamed_addr global i8 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
;-------------------------------
; Replace: store [5 x i8] c"\4d\51\41\3d\00", [5 x i8]* %cipher.ptr.55
;-------------------------------
; Replace: store [5 x i8] c"\4d\77\41\3d\00", [5 x i8]* %cipher.ptr.56
;-------------------------------
; Replace: store [9 x i8] c"\42\56\6f\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.57
;-------------------------------
; Replace: store [21 x i8] c"\53\53\42\68\62\53\42\6c\64\6d\6c\73\49\53\45\68\43\67\41\3d\00", [21 x i8]* %cipher.ptr.58
;-------------------------------
; Replace: store [13 x i8] c"\51\6e\6c\6c\49\45\4a\35\5a\51\6f\41\00", [13 x i8]* %cipher.ptr.59
;-------------------------------
; Replace: store [5 x i8] c"\4a\58\4d\41\00", [5 x i8]* %cipher.ptr.60
;-------------------------------
; Replace: store [5 x i8] c"\64\79\73\41\00", [5 x i8]* %cipher.ptr.61
;-------------------------------
; Replace: store [21 x i8] c"\64\47\56\34\64\46\39\6d\61\57\78\6c\4d\79\35\30\65\48\51\41\00", [21 x i8]* %cipher.ptr.62
;-------------------------------
; Replace: store [5 x i8] c"\4d\67\41\3d\00", [5 x i8]* %cipher.ptr.63
;-------------------------------
; Replace: store [9 x i8] c"\42\56\34\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.32
;-------------------------------
; Replace: store [17 x i8] c"\59\56\73\6c\5a\46\30\67\50\53\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.31
;-------------------------------
; Replace: store [9 x i8] c"\42\58\38\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.33
;-------------------------------
; Replace: store [41 x i8] c"\54\6d\38\67\63\6d\56\77\5a\57\46\30\61\57\35\6e\49\47\4e\6f\59\58\4a\68\59\33\52\6c\63\69\42\6d\62\33\56\75\5a\41\41\3d\00", [41 x i8]* %cipher.ptr.34
;-------------------------------
; Replace: store [17 x i8] c"\62\47\56\75\5a\33\52\6f\4f\69\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.35
;-------------------------------
; Replace: store [25 x i8] c"\51\6d\56\6d\62\33\4a\6c\4f\67\6f\4b\4a\79\56\7a\4a\77\6f\4b\41\41\3d\3d\00", [25 x i8]* %cipher.ptr.37
;-------------------------------
; Replace: store [9 x i8] c"\42\56\38\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.36
;-------------------------------
; Replace: store [9 x i8] c"\42\54\51\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.39
;-------------------------------
; Replace: store [9 x i8] c"\4a\57\51\67\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.38
;-------------------------------
; Replace: store [21 x i8] c"\62\6e\56\74\59\6d\56\79\49\47\6c\7a\49\47\39\6b\5a\41\41\3d\00", [21 x i8]* %cipher.ptr.40
;-------------------------------
; Replace: store [29 x i8] c"\4a\57\4d\67\61\58\4d\67\59\57\78\77\61\47\46\75\64\57\31\6c\63\6d\6c\6a\43\67\41\3d\00", [29 x i8]* %cipher.ptr.41
;-------------------------------
; Replace: store [29 x i8] c"\63\32\56\6a\62\32\35\6b\49\47\78\76\64\32\56\7a\64\44\6f\67\4a\57\51\4b\41\41\3d\3d\00", [29 x i8]* %cipher.ptr.42
;-------------------------------
; Replace: store [13 x i8] c"\4a\57\4d\36\4a\57\51\4b\41\41\3d\3d\00", [13 x i8]* %cipher.ptr.43
;-------------------------------
; Replace: store [13 x i8] c"\59\6d\56\6d\62\33\4a\6c\41\41\3d\3d\00", [13 x i8]* %cipher.ptr.45
;-------------------------------
; Replace: store [9 x i8] c"\59\57\5a\30\5a\58\49\41\00", [9 x i8]* %cipher.ptr.44
;-------------------------------
; Replace: store [9 x i8] c"\42\53\30\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.48
;-------------------------------
; Replace: store [9 x i8] c"\42\53\30\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.47
;-------------------------------
; Replace: store [9 x i8] c"\42\53\30\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.46
;-------------------------------
; Replace: store [17 x i8] c"\54\6d\46\74\5a\54\6f\67\4a\58\4d\4b\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.54
;-------------------------------
; Replace: store [13 x i8] c"\53\55\51\36\49\43\56\7a\43\67\41\3d\00", [13 x i8]* %cipher.ptr.53
;-------------------------------
; Replace: store [13 x i8] c"\51\57\64\6c\4f\69\41\6c\5a\41\6f\41\00", [13 x i8]* %cipher.ptr.52
;-------------------------------
; Replace: store [13 x i8] c"\52\33\4a\68\5a\47\56\7a\4f\69\41\41\00", [13 x i8]* %cipher.ptr.51
;-------------------------------
; Replace: store [9 x i8] c"\4a\57\51\67\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.50
;-------------------------------
; Replace: store [21 x i8] c"\63\43\56\6b\49\44\30\67\4b\43\56\6b\4c\43\56\6b\4b\51\6f\41\00", [21 x i8]* %cipher.ptr.49
;-------------------------------
; Replace: %sp0.1.64 = bitcast [5 x i8]* @str.64 to i40*
@str.2.97 = constant [1 x i8] c"\33"
@str.4.97 = constant [1 x i8] c"\4a"
@str.1.97 = constant [1 x i8] c"\3b"
@str.3.97 = constant [1 x i8] c"\5e"
@str.0.97 = constant [1 x i8] c"\7a"
;-------------------------------
; Replace: %sp1.1.64 = bitcast [5 x i8]* @key.64 to i40*
@str.3.98 = constant [1 x i8] c"\63"
@str.4.98 = constant [1 x i8] c"\4a"
@str.2.98 = constant [1 x i8] c"\72"
@str.0.98 = constant [1 x i8] c"\37"
@str.1.98 = constant [1 x i8] c"\6a"
;-------------------------------
; Replace: %sp0.1.65 = bitcast [5 x i8]* @str.65 to i40*
@str.4.99 = constant [1 x i8] c"\39"
@str.0.99 = constant [1 x i8] c"\20"
@str.2.99 = constant [1 x i8] c"\14"
@str.3.99 = constant [1 x i8] c"\5e"
@str.1.99 = constant [1 x i8] c"\41"
;-------------------------------
; Replace: %sp1.1.65 = bitcast [5 x i8]* @key.65 to i40*
@str.3.100 = constant [1 x i8] c"\63"
@str.1.100 = constant [1 x i8] c"\36"
@str.2.100 = constant [1 x i8] c"\55"
@str.0.100 = constant [1 x i8] c"\6d"
@str.4.100 = constant [1 x i8] c"\39"
;-------------------------------
; Replace: %sp0.1.66 = bitcast [9 x i8]* @str.66 to i72*
@str.1.101 = constant [1 x i8] c"\31"
@str.4.101 = constant [1 x i8] c"\0d"
@str.2.101 = constant [1 x i8] c"\1d"
@str.7.101 = constant [2 x i8] c"\64\6b"
@str.5.101 = constant [1 x i8] c"\71"
@str.0.101 = constant [1 x i8] c"\36"
@str.3.101 = constant [1 x i8] c"\4d"
@str.6.101 = constant [1 x i8] c"\5a"
;-------------------------------
; Replace: %sp1.1.66 = bitcast [9 x i8]* @key.66 to i72*
@str.4.102 = constant [1 x i8] c"\4c"
@str.0.102 = constant [1 x i8] c"\74"
@str.3.102 = constant [1 x i8] c"\39"
@str.7.102 = constant [2 x i8] c"\59\6b"
@str.1.102 = constant [1 x i8] c"\67"
@str.5.102 = constant [1 x i8] c"\30"
@str.6.102 = constant [1 x i8] c"\67"
@str.2.102 = constant [1 x i8] c"\72"
;-------------------------------
; Replace: %sp0.1.67 = bitcast [21 x i8]* @str.67 to i168*
@str.4.103 = constant [3 x i8] c"\27\1e\24"
@str.5.103 = constant [2 x i8] c"\30\2d"
@str.3.103 = constant [3 x i8] c"\01\29\0b"
@str.2.103 = constant [2 x i8] c"\19\0e"
@str.7.103 = constant [3 x i8] c"\06\50\52"
@str.0.103 = constant [2 x i8] c"\25\34"
@str.1.103 = constant [3 x i8] c"\10\07\23"
@str.6.103 = constant [3 x i8] c"\19\76\5e"
;-------------------------------
; Replace: %sp1.1.67 = bitcast [21 x i8]* @key.67 to i168*
@str.1.104 = constant [3 x i8] c"\52\6f\41"
@str.2.104 = constant [2 x i8] c"\4a\4c"
@str.4.104 = constant [3 x i8] c"\4b\6d\6d"
@str.7.104 = constant [3 x i8] c"\47\6d\52"
@str.0.104 = constant [2 x i8] c"\76\67"
@str.5.104 = constant [2 x i8] c"\63\68"
@str.6.104 = constant [3 x i8] c"\71\35\39"
@str.3.104 = constant [3 x i8] c"\6d\4d\66"
;-------------------------------
; Replace: %sp0.1.68 = bitcast [13 x i8]* @str.68 to i104*
@str.4.105 = constant [2 x i8] c"\03\0c"
@str.5.105 = constant [1 x i8] c"\0a"
@str.1.105 = constant [2 x i8] c"\02\1e"
@str.7.105 = constant [2 x i8] c"\38\45"
@str.6.105 = constant [2 x i8] c"\0b\5a"
@str.2.105 = constant [1 x i8] c"\2d"
@str.3.105 = constant [2 x i8] c"\3f\09"
@str.0.105 = constant [1 x i8] c"\09"
;-------------------------------
; Replace: %sp1.1.68 = bitcast [13 x i8]* @key.68 to i104*
@str.6.106 = constant [2 x i8] c"\5a\35"
@str.1.106 = constant [2 x i8] c"\6c\72"
@str.5.106 = constant [1 x i8] c"\50"
@str.0.106 = constant [1 x i8] c"\58"
@str.2.106 = constant [1 x i8] c"\41"
@str.3.106 = constant [2 x i8] c"\76\4c"
@str.7.106 = constant [2 x i8] c"\79\45"
@str.4.106 = constant [2 x i8] c"\49\39"
;-------------------------------
; Replace: %sp0.1.69 = bitcast [5 x i8]* @str.69 to i40*
@str.3.107 = constant [1 x i8] c"\17"
@str.2.107 = constant [1 x i8] c"\74"
@str.1.107 = constant [1 x i8] c"\1e"
@str.4.107 = constant [1 x i8] c"\4b"
@str.0.107 = constant [1 x i8] c"\03"
;-------------------------------
; Replace: %sp1.1.69 = bitcast [5 x i8]* @key.69 to i40*
@str.2.108 = constant [1 x i8] c"\39"
@str.1.108 = constant [1 x i8] c"\46"
@str.3.108 = constant [1 x i8] c"\56"
@str.0.108 = constant [1 x i8] c"\49"
@str.4.108 = constant [1 x i8] c"\4b"
;-------------------------------
; Replace: %sp0.1.70 = bitcast [5 x i8]* @str.70 to i40*
@str.1.109 = constant [1 x i8] c"\1d"
@str.0.109 = constant [1 x i8] c"\29"
@str.4.109 = constant [1 x i8] c"\70"
@str.2.109 = constant [1 x i8] c"\11"
@str.3.109 = constant [1 x i8] c"\25"
;-------------------------------
; Replace: %sp1.1.70 = bitcast [5 x i8]* @key.70 to i40*
@str.2.110 = constant [1 x i8] c"\62"
@str.4.110 = constant [1 x i8] c"\70"
@str.0.110 = constant [1 x i8] c"\4d"
@str.3.110 = constant [1 x i8] c"\64"
@str.1.110 = constant [1 x i8] c"\64"
;-------------------------------
; Replace: %sp0.1.71 = bitcast [21 x i8]* @str.71 to i168*
@str.2.111 = constant [2 x i8] c"\33\7b"
@str.6.111 = constant [3 x i8] c"\60\15\39"
@str.4.111 = constant [3 x i8] c"\1b\59\02"
@str.1.111 = constant [3 x i8] c"\3b\7d\26"
@str.0.111 = constant [2 x i8] c"\5d\2e"
@str.5.111 = constant [2 x i8] c"\03\6f"
@str.7.111 = constant [3 x i8] c"\17\08\69"
@str.3.111 = constant [3 x i8] c"\3a\02\35"
;-------------------------------
; Replace: %sp1.1.71 = bitcast [21 x i8]* @key.71 to i168*
@str.5.112 = constant [2 x i8] c"\7a\5a"
@str.1.112 = constant [3 x i8] c"\6d\49\42"
@str.4.112 = constant [3 x i8] c"\63\35\4f"
@str.3.112 = constant [3 x i8] c"\57\63\62"
@str.0.112 = constant [2 x i8] c"\39\69"
@str.7.112 = constant [3 x i8] c"\46\49\69"
@str.6.112 = constant [3 x i8] c"\50\70\71"
@str.2.112 = constant [2 x i8] c"\75\42"
;-------------------------------
; Replace: %sp0.1.72 = bitcast [5 x i8]* @str.72 to i40*
@str.4.113 = constant [1 x i8] c"\6e"
@str.2.113 = constant [1 x i8] c"\18"
@str.0.113 = constant [1 x i8] c"\1c"
@str.1.113 = constant [1 x i8] c"\28"
@str.3.113 = constant [1 x i8] c"\4c"
;-------------------------------
; Replace: %sp1.1.72 = bitcast [5 x i8]* @key.72 to i40*
@str.4.114 = constant [1 x i8] c"\6e"
@str.2.114 = constant [1 x i8] c"\59"
@str.1.114 = constant [1 x i8] c"\4f"
@str.3.114 = constant [1 x i8] c"\71"
@str.0.114 = constant [1 x i8] c"\51"
;-------------------------------
; Replace: %sp0.1.73 = bitcast [9 x i8]* @str.73 to i72*
@str.4.115 = constant [1 x i8] c"\78"
@str.7.115 = constant [2 x i8] c"\5b\4d"
@str.3.115 = constant [1 x i8] c"\1f"
@str.6.115 = constant [1 x i8] c"\0f"
@str.2.115 = constant [1 x i8] c"\57"
@str.5.115 = constant [1 x i8] c"\2c"
@str.0.115 = constant [1 x i8] c"\30"
@str.1.115 = constant [1 x i8] c"\06"
;-------------------------------
; Replace: %sp1.1.73 = bitcast [9 x i8]* @key.73 to i72*
@str.3.116 = constant [1 x i8] c"\6b"
@str.6.116 = constant [1 x i8] c"\32"
@str.4.116 = constant [1 x i8] c"\39"
@str.0.116 = constant [1 x i8] c"\72"
@str.7.116 = constant [2 x i8] c"\66\4d"
@str.2.116 = constant [1 x i8] c"\63"
@str.5.116 = constant [1 x i8] c"\6d"
@str.1.116 = constant [1 x i8] c"\50"
;-------------------------------
; Replace: %sp0.1.74 = bitcast [17 x i8]* @str.74 to i136*
@str.7.117 = constant [3 x i8] c"\15\33\6f"
@str.2.117 = constant [2 x i8] c"\6c\0f"
@str.0.117 = constant [2 x i8] c"\2d\32"
@str.5.117 = constant [2 x i8] c"\08\58"
@str.4.117 = constant [2 x i8] c"\04\27"
@str.3.117 = constant [2 x i8] c"\56\3f"
@str.6.117 = constant [2 x i8] c"\2f\11"
@str.1.117 = constant [2 x i8] c"\2a\0a"
;-------------------------------
; Replace: %sp1.1.74 = bitcast [17 x i8]* @key.74 to i136*
@str.0.118 = constant [2 x i8] c"\74\64"
@str.6.118 = constant [2 x i8] c"\75\50"
@str.3.118 = constant [2 x i8] c"\66\58"
@str.4.118 = constant [2 x i8] c"\54\74"
@str.7.118 = constant [3 x i8] c"\7a\72\6f"
@str.2.118 = constant [2 x i8] c"\36\49"
@str.5.118 = constant [2 x i8] c"\49\34"
@str.1.118 = constant [2 x i8] c"\59\66"
;-------------------------------
; Replace: %sp0.1.75 = bitcast [9 x i8]* @str.75 to i72*
@str.6.119 = constant [1 x i8] c"\4b"
@str.7.119 = constant [2 x i8] c"\4e\49"
@str.1.119 = constant [1 x i8] c"\34"
@str.0.119 = constant [1 x i8] c"\3a"
@str.2.119 = constant [1 x i8] c"\42"
@str.5.119 = constant [1 x i8] c"\0f"
@str.3.119 = constant [1 x i8] c"\19"
@str.4.119 = constant [1 x i8] c"\04"
;-------------------------------
; Replace: %sp1.1.75 = bitcast [9 x i8]* @key.75 to i72*
@str.5.120 = constant [1 x i8] c"\4e"
@str.2.120 = constant [1 x i8] c"\7a"
@str.1.120 = constant [1 x i8] c"\6c"
@str.7.120 = constant [2 x i8] c"\73\49"
@str.6.120 = constant [1 x i8] c"\76"
@str.0.120 = constant [1 x i8] c"\78"
@str.4.120 = constant [1 x i8] c"\45"
@str.3.120 = constant [1 x i8] c"\6d"
;-------------------------------
; Replace: %sp0.1.76 = bitcast [41 x i8]* @str.76 to i328*
@str.5.121 = constant [5 x i8] c"\07\62\05\20\3d"
@str.7.121 = constant [6 x i8] c"\03\18\18\10\45\5a"
@str.3.121 = constant [5 x i8] c"\03\1d\3f\2d\36"
@str.6.121 = constant [5 x i8] c"\24\0e\11\06\17"
@str.4.121 = constant [5 x i8] c"\01\6e\2d\5a\6c"
@str.0.121 = constant [5 x i8] c"\13\29\4a\16\36"
@str.1.121 = constant [5 x i8] c"\27\11\39\0b\3a"
@str.2.121 = constant [5 x i8] c"\2c\51\03\10\59"
;-------------------------------
; Replace: %sp1.1.76 = bitcast [41 x i8]* @key.76 to i328*
@str.4.122 = constant [5 x i8] c"\58\36\67\32\35"
@str.2.122 = constant [5 x i8] c"\6a\61\62\47\6c"
@str.0.122 = constant [5 x i8] c"\47\44\72\71\55"
@str.1.122 = constant [5 x i8] c"\4a\47\4e\51\6d"
@str.3.122 = constant [5 x i8] c"\6d\54\78\63\59"
@str.5.122 = constant [5 x i8] c"\34\30\69\43\54"
@str.7.122 = constant [6 x i8] c"\76\42\59\51\78\5a"
@str.6.122 = constant [5 x i8] c"\66\63\73\35\41"
;-------------------------------
; Replace: %sp0.1.77 = bitcast [17 x i8]* @str.77 to i136*
@str.1.123 = constant [2 x i8] c"\10\2d"
@str.7.123 = constant [3 x i8] c"\15\25\45"
@str.5.123 = constant [2 x i8] c"\0e\36"
@str.2.123 = constant [2 x i8] c"\09\62"
@str.4.123 = constant [2 x i8] c"\3b\08"
@str.3.123 = constant [2 x i8] c"\24\3d"
@str.6.123 = constant [2 x i8] c"\11\14"
@str.0.123 = constant [2 x i8] c"\10\2c"
;-------------------------------
; Replace: %sp1.1.77 = bitcast [17 x i8]* @key.77 to i136*
@str.6.124 = constant [2 x i8] c"\4b\55"
@str.2.124 = constant [2 x i8] c"\53\51"
@str.1.124 = constant [2 x i8] c"\46\58"
@str.7.124 = constant [3 x i8] c"\7a\64\45"
@str.4.124 = constant [2 x i8] c"\74\61"
@str.5.124 = constant [2 x i8] c"\4f\5a"
@str.3.124 = constant [2 x i8] c"\76\52"
@str.0.124 = constant [2 x i8] c"\72\6b"
;-------------------------------
; Replace: %sp0.1.78 = bitcast [25 x i8]* @str.78 to i200*
@str.2.125 = constant [3 x i8] c"\27\20\22"
@str.6.125 = constant [3 x i8] c"\5b\2d\24"
@str.7.125 = constant [4 x i8] c"\33\7c\52\56"
@str.4.125 = constant [3 x i8] c"\1a\1a\2e"
@str.3.125 = constant [3 x i8] c"\2a\09\19"
@str.0.125 = constant [3 x i8] c"\61\17\62"
@str.1.125 = constant [3 x i8] c"\1d\06\4a"
@str.5.125 = constant [3 x i8] c"\2a\25\47"
;-------------------------------
; Replace: %sp1.1.78 = bitcast [25 x i8]* @key.78 to i200*
@str.6.126 = constant [3 x i8] c"\34\66\65"
@str.7.126 = constant [4 x i8] c"\72\41\6f\56"
@str.2.126 = constant [3 x i8] c"\6d\4c\6d"
@str.5.126 = constant [3 x i8] c"\50\6f\30"
@str.0.126 = constant [3 x i8] c"\30\7a\34"
@str.3.126 = constant [3 x i8] c"\4d\66\52"
@str.1.126 = constant [3 x i8] c"\70\64\79"
@str.4.126 = constant [3 x i8] c"\50\63\78"
;-------------------------------
; Replace: %sp0.1.79 = bitcast [9 x i8]* @str.79 to i72*
@str.0.127 = constant [1 x i8] c"\35"
@str.6.127 = constant [1 x i8] c"\51"
@str.1.127 = constant [1 x i8] c"\25"
@str.7.127 = constant [2 x i8] c"\6b\45"
@str.2.127 = constant [1 x i8] c"\71"
@str.4.127 = constant [1 x i8] c"\73"
@str.5.127 = constant [1 x i8] c"\74"
@str.3.127 = constant [1 x i8] c"\43"
;-------------------------------
; Replace: %sp1.1.79 = bitcast [9 x i8]* @key.79 to i72*
@str.2.128 = constant [1 x i8] c"\49"
@str.1.128 = constant [1 x i8] c"\73"
@str.4.128 = constant [1 x i8] c"\32"
@str.0.128 = constant [1 x i8] c"\77"
@str.5.128 = constant [1 x i8] c"\35"
@str.6.128 = constant [1 x i8] c"\6c"
@str.3.128 = constant [1 x i8] c"\37"
@str.7.128 = constant [2 x i8] c"\56\45"
;-------------------------------
; Replace: %sp0.1.80 = bitcast [9 x i8]* @str.80 to i72*
@str.2.129 = constant [1 x i8] c"\07"
@str.5.129 = constant [1 x i8] c"\0f"
@str.1.129 = constant [1 x i8] c"\00"
@str.6.129 = constant [1 x i8] c"\56"
@str.3.129 = constant [1 x i8] c"\1d"
@str.0.129 = constant [1 x i8] c"\14"
@str.4.129 = constant [1 x i8] c"\19"
@str.7.129 = constant [2 x i8] c"\51\48"
;-------------------------------
; Replace: %sp1.1.80 = bitcast [9 x i8]* @key.80 to i72*
@str.4.130 = constant [1 x i8] c"\58"
@str.2.130 = constant [1 x i8] c"\56"
@str.1.130 = constant [1 x i8] c"\54"
@str.0.130 = constant [1 x i8] c"\56"
@str.7.130 = constant [2 x i8] c"\6c\48"
@str.6.130 = constant [1 x i8] c"\6b"
@str.3.130 = constant [1 x i8] c"\69"
@str.5.130 = constant [1 x i8] c"\4e"
;-------------------------------
; Replace: %sp0.1.81 = bitcast [9 x i8]* @str.81 to i72*
@str.1.131 = constant [1 x i8] c"\3b"
@str.2.131 = constant [1 x i8] c"\01"
@str.3.131 = constant [1 x i8] c"\10"
@str.5.131 = constant [1 x i8] c"\29"
@str.7.131 = constant [2 x i8] c"\68\67"
@str.4.131 = constant [1 x i8] c"\37"
@str.0.131 = constant [1 x i8] c"\1c"
@str.6.131 = constant [1 x i8] c"\68"
;-------------------------------
; Replace: %sp1.1.81 = bitcast [9 x i8]* @key.81 to i72*
@str.0.132 = constant [1 x i8] c"\56"
@str.5.132 = constant [1 x i8] c"\68"
@str.7.132 = constant [2 x i8] c"\55\67"
@str.2.132 = constant [1 x i8] c"\50"
@str.1.132 = constant [1 x i8] c"\6c"
@str.3.132 = constant [1 x i8] c"\77"
@str.4.132 = constant [1 x i8] c"\76"
@str.6.132 = constant [1 x i8] c"\55"
;-------------------------------
; Replace: %sp0.1.82 = bitcast [21 x i8]* @str.82 to i168*
@str.4.133 = constant [3 x i8] c"\22\2e\24"
@str.0.133 = constant [2 x i8] c"\2e\2b"
@str.2.133 = constant [2 x i8] c"\3e\12"
@str.1.133 = constant [3 x i8] c"\39\11\14"
@str.3.133 = constant [3 x i8] c"\4c\27\23"
@str.5.133 = constant [2 x i8] c"\1e\0c"
@str.7.133 = constant [3 x i8] c"\20\0d\30"
@str.6.133 = constant [3 x i8] c"\25\08\70"
;-------------------------------
; Replace: %sp1.1.82 = bitcast [21 x i8]* @key.82 to i168*
@str.5.134 = constant [2 x i8] c"\59\35"
@str.0.134 = constant [2 x i8] c"\4c\45"
@str.7.134 = constant [3 x i8] c"\61\30\30"
@str.3.134 = constant [3 x i8] c"\35\6e\64"
@str.1.134 = constant [3 x i8] c"\6f\65\4d"
@str.6.134 = constant [3 x i8] c"\4e\52\31"
@str.4.134 = constant [3 x i8] c"\4e\54\6d"
@str.2.134 = constant [2 x i8] c"\53\44"
;-------------------------------
; Replace: %sp0.1.83 = bitcast [29 x i8]* @str.83 to i232*
@str.2.135 = constant [3 x i8] c"\5e\20\3b"
@str.3.135 = constant [4 x i8] c"\48\3a\2a\03"
@str.5.135 = constant [3 x i8] c"\70\18\31"
@str.6.135 = constant [4 x i8] c"\27\2f\0f\2c"
@str.7.135 = constant [4 x i8] c"\2b\1b\0c\5a"
@str.0.135 = constant [3 x i8] c"\20\00\2e"
@str.4.135 = constant [4 x i8] c"\12\10\13\61"
@str.1.135 = constant [4 x i8] c"\1d\53\0e\79"
;-------------------------------
; Replace: %sp1.1.83 = bitcast [29 x i8]* @key.83 to i232*
@str.1.136 = constant [4 x i8] c"\7a\32\56\34"
@str.2.136 = constant [3 x i8] c"\39\79\6c"
@str.3.136 = constant [4 x i8] c"\30\4d\4b\44"
@str.0.136 = constant [3 x i8] c"\6a\57\63"
@str.7.136 = constant [4 x i8] c"\4c\5a\31\5a"
@str.6.136 = constant [4 x i8] c"\4a\43\65\6f"
@str.5.136 = constant [3 x i8] c"\41\74\52"
@str.4.136 = constant [4 x i8] c"\54\65\77\36"
;-------------------------------
; Replace: %sp0.1.84 = bitcast [29 x i8]* @str.84 to i232*
@str.0.137 = constant [3 x i8] c"\24\44\0f"
@str.1.137 = constant [4 x i8] c"\3b\09\74\7a"
@str.5.137 = constant [3 x i8] c"\37\2c\7d"
@str.7.137 = constant [4 x i8] c"\07\08\44\78"
@str.4.137 = constant [4 x i8] c"\62\0b\1c\0f"
@str.3.137 = constant [4 x i8] c"\4c\41\0f\6b"
@str.6.137 = constant [4 x i8] c"\1c\30\33\24"
@str.2.137 = constant [3 x i8] c"\1a\2c\10"
;-------------------------------
; Replace: %sp1.1.84 = bitcast [29 x i8]* @key.84 to i232*
@str.5.138 = constant [3 x i8] c"\58\4b\37"
@str.4.138 = constant [4 x i8] c"\34\71\78\4b"
@str.0.138 = constant [3 x i8] c"\47\76\59"
@str.6.138 = constant [4 x i8] c"\4b\61\78\65"
@str.2.138 = constant [3 x i8] c"\71\65\57"
@str.3.138 = constant [4 x i8] c"\34\37\6b\59"
@str.1.138 = constant [4 x i8] c"\51\6b\46\4f"
@str.7.138 = constant [4 x i8] c"\46\35\79\78"
;-------------------------------
; Replace: %sp0.1.85 = bitcast [13 x i8]* @str.85 to i104*
@str.6.139 = constant [2 x i8] c"\72\7a"
@str.3.139 = constant [2 x i8] c"\3d\6e"
@str.5.139 = constant [1 x i8] c"\71"
@str.2.139 = constant [1 x i8] c"\47"
@str.1.139 = constant [2 x i8] c"\61\0a"
@str.4.139 = constant [2 x i8] c"\16\12"
@str.7.139 = constant [2 x i8] c"\6b\31"
@str.0.139 = constant [1 x i8] c"\08"
;-------------------------------
; Replace: %sp1.1.85 = bitcast [13 x i8]* @key.85 to i104*
@str.1.140 = constant [2 x i8] c"\36\47"
@str.6.140 = constant [2 x i8] c"\33\47"
@str.7.140 = constant [2 x i8] c"\56\31"
@str.3.140 = constant [2 x i8] c"\77\39"
@str.5.140 = constant [1 x i8] c"\30"
@str.2.140 = constant [1 x i8] c"\71"
@str.0.140 = constant [1 x i8] c"\42"
@str.4.140 = constant [2 x i8] c"\47\59"
;-------------------------------
; Replace: %sp0.1.86 = bitcast [13 x i8]* @str.86 to i104*
@str.5.141 = constant [1 x i8] c"\33"
@str.6.141 = constant [2 x i8] c"\2f\6e"
@str.4.141 = constant [2 x i8] c"\21\59"
@str.2.141 = constant [1 x i8] c"\1e"
@str.7.141 = constant [2 x i8] c"\5b\54"
@str.0.141 = constant [1 x i8] c"\2e"
@str.3.141 = constant [2 x i8] c"\08\07"
@str.1.141 = constant [2 x i8] c"\2c\15"
;-------------------------------
; Replace: %sp1.1.86 = bitcast [13 x i8]* @key.86 to i104*
@str.1.142 = constant [2 x i8] c"\41\43"
@str.4.142 = constant [2 x i8] c"\6b\35"
@str.2.142 = constant [1 x i8] c"\73"
@str.3.142 = constant [2 x i8] c"\6a\34"
@str.6.142 = constant [2 x i8] c"\6e\53"
@str.7.142 = constant [2 x i8] c"\66\54"
@str.0.142 = constant [1 x i8] c"\77"
@str.5.142 = constant [1 x i8] c"\72"
;-------------------------------
; Replace: %sp0.1.87 = bitcast [9 x i8]* @str.87 to i72*
@str.7.143 = constant [2 x i8] c"\2a\6e"
@str.2.143 = constant [1 x i8] c"\68"
@str.4.143 = constant [1 x i8] c"\17"
@str.1.143 = constant [1 x i8] c"\1f"
@str.6.143 = constant [1 x i8] c"\11"
@str.0.143 = constant [1 x i8] c"\33"
@str.5.143 = constant [1 x i8] c"\6d"
@str.3.143 = constant [1 x i8] c"\06"
;-------------------------------
; Replace: %sp1.1.87 = bitcast [9 x i8]* @key.87 to i72*
@str.3.144 = constant [1 x i8] c"\36"
@str.4.144 = constant [1 x i8] c"\4d"
@str.1.144 = constant [1 x i8] c"\48"
@str.5.144 = constant [1 x i8] c"\35"
@str.2.144 = constant [1 x i8] c"\32"
@str.6.144 = constant [1 x i8] c"\58"
@str.0.144 = constant [1 x i8] c"\6a"
@str.7.144 = constant [2 x i8] c"\6b\6e"
;-------------------------------
; Replace: %sp0.1.88 = bitcast [9 x i8]* @str.88 to i72*
@str.5.145 = constant [1 x i8] c"\0c"
@str.4.145 = constant [1 x i8] c"\16"
@str.1.145 = constant [1 x i8] c"\1f"
@str.7.145 = constant [2 x i8] c"\5a\61"
@str.0.145 = constant [1 x i8] c"\7b"
@str.6.145 = constant [1 x i8] c"\45"
@str.2.145 = constant [1 x i8] c"\56"
@str.3.145 = constant [1 x i8] c"\2c"
;-------------------------------
; Replace: %sp1.1.88 = bitcast [9 x i8]* @key.88 to i72*
@str.6.146 = constant [1 x i8] c"\78"
@str.5.146 = constant [1 x i8] c"\4d"
@str.7.146 = constant [2 x i8] c"\67\61"
@str.4.146 = constant [1 x i8] c"\57"
@str.3.146 = constant [1 x i8] c"\58"
@str.1.146 = constant [1 x i8] c"\4c"
@str.2.146 = constant [1 x i8] c"\66"
@str.0.146 = constant [1 x i8] c"\39"
;-------------------------------
; Replace: %sp0.1.89 = bitcast [9 x i8]* @str.89 to i72*
@str.4.147 = constant [1 x i8] c"\0f"
@str.6.147 = constant [1 x i8] c"\76"
@str.0.147 = constant [1 x i8] c"\06"
@str.1.147 = constant [1 x i8] c"\26"
@str.5.147 = constant [1 x i8] c"\06"
@str.2.147 = constant [1 x i8] c"\01"
@str.7.147 = constant [2 x i8] c"\73\73"
@str.3.147 = constant [1 x i8] c"\19"
;-------------------------------
; Replace: %sp1.1.89 = bitcast [9 x i8]* @key.89 to i72*
@str.4.148 = constant [1 x i8] c"\4e"
@str.5.148 = constant [1 x i8] c"\47"
@str.6.148 = constant [1 x i8] c"\4b"
@str.7.148 = constant [2 x i8] c"\4e\73"
@str.0.148 = constant [1 x i8] c"\44"
@str.2.148 = constant [1 x i8] c"\31"
@str.1.148 = constant [1 x i8] c"\75"
@str.3.148 = constant [1 x i8] c"\6d"
;-------------------------------
; Replace: %sp0.1.90 = bitcast [9 x i8]* @str.90 to i72*
@str.0.149 = constant [1 x i8] c"\71"
@str.2.149 = constant [1 x i8] c"\42"
@str.1.149 = constant [1 x i8] c"\02"
@str.3.149 = constant [1 x i8] c"\19"
@str.6.149 = constant [1 x i8] c"\48"
@str.4.149 = constant [1 x i8] c"\38"
@str.7.149 = constant [2 x i8] c"\08\61"
@str.5.149 = constant [1 x i8] c"\23"
;-------------------------------
; Replace: %sp1.1.90 = bitcast [9 x i8]* @key.90 to i72*
@str.0.150 = constant [1 x i8] c"\33"
@str.4.150 = constant [1 x i8] c"\79"
@str.7.150 = constant [2 x i8] c"\35\61"
@str.1.150 = constant [1 x i8] c"\51"
@str.6.150 = constant [1 x i8] c"\75"
@str.3.150 = constant [1 x i8] c"\6d"
@str.5.150 = constant [1 x i8] c"\62"
@str.2.150 = constant [1 x i8] c"\72"
;-------------------------------
; Replace: %sp0.1.91 = bitcast [17 x i8]* @str.91 to i136*
@str.5.151 = constant [2 x i8] c"\3b\2c"
@str.1.151 = constant [2 x i8] c"\22\41"
@str.7.151 = constant [3 x i8] c"\7c\71\67"
@str.4.151 = constant [2 x i8] c"\0b\2a"
@str.3.151 = constant [2 x i8] c"\22\0f"
@str.2.151 = constant [2 x i8] c"\13\24"
@str.6.151 = constant [2 x i8] c"\36\09"
@str.0.151 = constant [2 x i8] c"\16\1e"
;-------------------------------
; Replace: %sp1.1.91 = bitcast [17 x i8]* @key.91 to i136*
@str.0.152 = constant [2 x i8] c"\42\73"
@str.4.152 = constant [2 x i8] c"\41\72"
@str.5.152 = constant [2 x i8] c"\76\67"
@str.7.152 = constant [3 x i8] c"\41\4c\67"
@str.1.152 = constant [2 x i8] c"\64\35"
@str.3.152 = constant [2 x i8] c"\4d\68"
@str.6.152 = constant [2 x i8] c"\77\48"
@str.2.152 = constant [2 x i8] c"\49\70"
;-------------------------------
; Replace: %sp0.1.92 = bitcast [13 x i8]* @str.92 to i104*
@str.0.153 = constant [1 x i8] c"\34"
@str.3.153 = constant [2 x i8] c"\1b\70"
@str.5.153 = constant [1 x i8] c"\26"
@str.1.153 = constant [2 x i8] c"\60\1d"
@str.6.153 = constant [2 x i8] c"\09\78"
@str.7.153 = constant [2 x i8] c"\5a\59"
@str.2.153 = constant [1 x i8] c"\07"
@str.4.153 = constant [2 x i8] c"\2e\0b"
;-------------------------------
; Replace: %sp1.1.92 = bitcast [13 x i8]* @key.92 to i104*
@str.1.154 = constant [2 x i8] c"\35\4c"
@str.3.154 = constant [2 x i8] c"\52\33"
@str.2.154 = constant [1 x i8] c"\31"
@str.6.154 = constant [2 x i8] c"\6e\39"
@str.5.154 = constant [1 x i8] c"\65"
@str.0.154 = constant [1 x i8] c"\67"
@str.4.154 = constant [2 x i8] c"\78\71"
@str.7.154 = constant [2 x i8] c"\67\59"
;-------------------------------
; Replace: %sp0.1.93 = bitcast [13 x i8]* @str.93 to i104*
@str.3.155 = constant [2 x i8] c"\39\00"
@str.7.155 = constant [2 x i8] c"\35\32"
@str.4.155 = constant [2 x i8] c"\19\24"
@str.1.155 = constant [2 x i8] c"\61\57"
@str.0.155 = constant [1 x i8] c"\15"
@str.5.155 = constant [1 x i8] c"\1c"
@str.2.155 = constant [1 x i8] c"\1b"
@str.6.155 = constant [2 x i8] c"\79\0b"
;-------------------------------
; Replace: %sp1.1.93 = bitcast [13 x i8]* @key.93 to i104*
@str.6.156 = constant [2 x i8] c"\38\64"
@str.2.156 = constant [1 x i8] c"\77"
@str.1.156 = constant [2 x i8] c"\36\33"
@str.0.156 = constant [1 x i8] c"\44"
@str.3.156 = constant [2 x i8] c"\76\69"
@str.7.156 = constant [2 x i8] c"\74\32"
@str.4.156 = constant [2 x i8] c"\58\48"
@str.5.156 = constant [1 x i8] c"\46"
;-------------------------------
; Replace: %sp0.1.94 = bitcast [13 x i8]* @str.94 to i104*
@str.2.157 = constant [1 x i8] c"\29"
@str.0.157 = constant [1 x i8] c"\07"
@str.1.157 = constant [2 x i8] c"\51\3a"
@str.6.157 = constant [2 x i8] c"\1f\72"
@str.5.157 = constant [1 x i8] c"\2e"
@str.4.157 = constant [2 x i8] c"\22\08"
@str.7.157 = constant [2 x i8] c"\00\64"
@str.3.157 = constant [2 x i8] c"\2f\05"
;-------------------------------
; Replace: %sp1.1.94 = bitcast [13 x i8]* @key.94 to i104*
@str.2.158 = constant [1 x i8] c"\41"
@str.7.158 = constant [2 x i8] c"\41\64"
@str.5.158 = constant [1 x i8] c"\61"
@str.6.158 = constant [2 x i8] c"\76\33"
@str.3.158 = constant [2 x i8] c"\75\42"
@str.4.158 = constant [2 x i8] c"\74\72"
@str.0.158 = constant [1 x i8] c"\55"
@str.1.158 = constant [2 x i8] c"\62\70"
;-------------------------------
; Replace: %sp0.1.95 = bitcast [9 x i8]* @str.95 to i72*
@str.6.159 = constant [1 x i8] c"\49"
@str.1.159 = constant [1 x i8] c"\2f"
@str.5.159 = constant [1 x i8] c"\0a"
@str.3.159 = constant [1 x i8] c"\36"
@str.7.159 = constant [2 x i8] c"\76\66"
@str.0.159 = constant [1 x i8] c"\7c"
@str.4.159 = constant [1 x i8] c"\08"
@str.2.159 = constant [1 x i8] c"\22"
;-------------------------------
; Replace: %sp1.1.95 = bitcast [9 x i8]* @key.95 to i72*
@str.6.160 = constant [1 x i8] c"\74"
@str.1.160 = constant [1 x i8] c"\78"
@str.3.160 = constant [1 x i8] c"\51"
@str.0.160 = constant [1 x i8] c"\36"
@str.5.160 = constant [1 x i8] c"\4b"
@str.4.160 = constant [1 x i8] c"\49"
@str.2.160 = constant [1 x i8] c"\73"
@str.7.160 = constant [2 x i8] c"\4b\66"
;-------------------------------
; Replace: %sp0.1.96 = bitcast [21 x i8]* @str.96 to i168*
@str.2.161 = constant [2 x i8] c"\17\51"
@str.3.161 = constant [3 x i8] c"\2b\11\0a"
@str.5.161 = constant [2 x i8] c"\20\3f"
@str.4.161 = constant [3 x i8] c"\17\5d\0d"
@str.0.161 = constant [2 x i8] c"\5a\04"
@str.7.161 = constant [3 x i8] c"\59\31\73"
@str.6.161 = constant [3 x i8] c"\52\21\26"
@str.1.161 = constant [3 x i8] c"\0c\33\3f"
;-------------------------------
; Replace: %sp1.1.96 = bitcast [21 x i8]* @key.96 to i168*
@str.0.162 = constant [2 x i8] c"\39\47"
@str.3.162 = constant [3 x i8] c"\4c\5a\49"
@str.1.162 = constant [3 x i8] c"\5a\58\76"
@str.4.162 = constant [3 x i8] c"\41\36\41"
@str.5.162 = constant [2 x i8] c"\63\69"
@str.2.162 = constant [2 x i8] c"\53\61"
@str.7.162 = constant [3 x i8] c"\36\70\73"
@str.6.162 = constant [3 x i8] c"\39\6a\77"
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
declare i32 @fwrite(i32, i32, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fclose(i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @strcmp(i32, i32) local_unnamed_addr #7

; Function Attrs: noinline
declare i32 @fopen(i32, i32) local_unnamed_addr #7

; Function Attrs: norecurse
define internal fastcc void @Func_main(i32 %arg_esp) unnamed_addr #8 !retregs !12 {
Func_804941F.exit.i:
  %tmp2_v.i26.i = add i32 %arg_esp, 4
  %tmp0_v.i27.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i27.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i29.i = add i32 %tmp0_v.i27.i, -8
  %3 = inttoptr i32 %tmp2_v4.i29.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i30.i = add i32 %tmp0_v.i27.i, -12
  %4 = inttoptr i32 %tmp2_v5.i30.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i32.i = add i32 %tmp0_v.i27.i, -16
  %5 = inttoptr i32 %tmp2_v6.i32.i to i32*
  store i32 0, i32* %5, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @sleep865 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack864, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v7.i34.i = add i32 %tmp0_v.i27.i, -20
  %6 = inttoptr i32 %tmp2_v7.i34.i to i32*
  store i32 %tmp2_v.i26.i, i32* %6, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i27.i, -36
  %7 = inttoptr i32 %tmp2_v9.i.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @struct748 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack747, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517759, i32* %7, align 4
  %tmp2_v.i.i = add i32 %arg_esp, 8
  %8 = inttoptr i32 %tmp2_v.i.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp0_v2.i.i = add i32 %9, 4
  %10 = inttoptr i32 %tmp0_v2.i.i to i32*
  %11 = load i32, i32* %10, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i27.i, -44
  %12 = inttoptr i32 %tmp2_v6.i.i to i32*
;-------------------------------
; Replace: store i32 134520900, i32* %12, align 4
  %cipher.ptr.55 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4d\51\41\3d\00", [5 x i8]* %cipher.ptr.55
;-------------------------------
; Replace: %sp0.1.64 = bitcast [5 x i8]* @str.64 to i40*
  %spi97 = alloca [5 x i8]
  
  %s0.97 = load [1 x i8], [1 x i8]* @str.0.97
  %sp0.97 = bitcast [5 x i8]* %spi97 to [1 x i8]*
  store [1 x i8] %s0.97, [1 x i8]* %sp0.97
  %next0.97 = getelementptr [5 x i8], [5 x i8]* %spi97, i32 0, i32 1
  
  %s1.97 = load [1 x i8], [1 x i8]* @str.1.97
  %sp1.97 = bitcast i8* %next0.97 to [1 x i8]*
  store [1 x i8] %s1.97, [1 x i8]* %sp1.97
  %next1.97 = getelementptr [5 x i8], [5 x i8]* %spi97, i32 0, i32 2
  
  %s2.97 = load [1 x i8], [1 x i8]* @str.2.97
  %sp2.97 = bitcast i8* %next1.97 to [1 x i8]*
  store [1 x i8] %s2.97, [1 x i8]* %sp2.97
  %next2.97 = getelementptr [5 x i8], [5 x i8]* %spi97, i32 0, i32 3
  
  %s3.97 = load [1 x i8], [1 x i8]* @str.3.97
  %sp3.97 = bitcast i8* %next2.97 to [1 x i8]*
  store [1 x i8] %s3.97, [1 x i8]* %sp3.97
  %next3.97 = getelementptr [5 x i8], [5 x i8]* %spi97, i32 0, i32 4
  
  %s4.97 = load [1 x i8], [1 x i8]* @str.4.97
  %sp4.97 = bitcast i8* %next3.97 to [1 x i8]*
  store [1 x i8] %s4.97, [1 x i8]* %sp4.97
  %sp0.1.64 = bitcast [5 x i8]* %spi97 to i40*
;-------------------------------
  %i0.64 = load i40, i40* %sp0.1.64

;-------------------------------
; Replace: %sp1.1.64 = bitcast [5 x i8]* @key.64 to i40*
  %spi98 = alloca [5 x i8]
  
  %s0.98 = load [1 x i8], [1 x i8]* @str.0.98
  %sp0.98 = bitcast [5 x i8]* %spi98 to [1 x i8]*
  store [1 x i8] %s0.98, [1 x i8]* %sp0.98
  %next0.98 = getelementptr [5 x i8], [5 x i8]* %spi98, i32 0, i32 1
  
  %s1.98 = load [1 x i8], [1 x i8]* @str.1.98
  %sp1.98 = bitcast i8* %next0.98 to [1 x i8]*
  store [1 x i8] %s1.98, [1 x i8]* %sp1.98
  %next1.98 = getelementptr [5 x i8], [5 x i8]* %spi98, i32 0, i32 2
  
  %s2.98 = load [1 x i8], [1 x i8]* @str.2.98
  %sp2.98 = bitcast i8* %next1.98 to [1 x i8]*
  store [1 x i8] %s2.98, [1 x i8]* %sp2.98
  %next2.98 = getelementptr [5 x i8], [5 x i8]* %spi98, i32 0, i32 3
  
  %s3.98 = load [1 x i8], [1 x i8]* @str.3.98
  %sp3.98 = bitcast i8* %next2.98 to [1 x i8]*
  store [1 x i8] %s3.98, [1 x i8]* %sp3.98
  %next3.98 = getelementptr [5 x i8], [5 x i8]* %spi98, i32 0, i32 4
  
  %s4.98 = load [1 x i8], [1 x i8]* @str.4.98
  %sp4.98 = bitcast i8* %next3.98 to [1 x i8]*
  store [1 x i8] %s4.98, [1 x i8]* %sp4.98
  %sp1.1.64 = bitcast [5 x i8]* %spi98 to i40*
;-------------------------------
  %i1.64 = load i40, i40* %sp1.1.64

  %xp64 = xor i40 %i0.64, %i1.64

  %fi.64 = alloca i40
  store i40 %xp64, i40* %fi.64

  %final.ptr.64 = bitcast i40* %fi.64 to [5 x i8]*
  %spi64 = load [5 x i8], [5 x i8]* %final.ptr.64
  store [5 x i8] %spi64, [5 x i8]* %cipher.ptr.55
;-------------------------------
  %cipher.55 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.55, i32 0, i32 0
  %plain.ptr.55 = tail call i8* @base64_decode(i8* %cipher.55)
  %spi55 = ptrtoint i8* %plain.ptr.55 to i32
  store i32 %spi55, i32* %12, align 4
;-------------------------------
  %tmp2_v7.i.i = add i32 %tmp0_v.i27.i, -48
  %13 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 %11, i32* %13, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i27.i, -52
  %14 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517791, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @remove_space_chars427 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack426, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg2.i.i = load i32, i32* %12, align 4
  %15 = tail call i32 @strcmp(i32 %arg.i.i, i32 %arg2.i.i)
  %.not.i.i = icmp eq i32 %15, 0
  br i1 %.not.i.i, label %BB_8049426.i, label %BB_804942D.i

BB_8049453.i:                                     ; preds = %BB_804942D.i
  %16 = load i32, i32* %8, align 4
  %tmp0_v1.i10.i = add i32 %16, 4
  %17 = inttoptr i32 %tmp0_v1.i10.i to i32*
  %18 = load i32, i32* %17, align 4
;-------------------------------
; Replace: store i32 134520904, i32* %12, align 4
  %cipher.ptr.56 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4d\77\41\3d\00", [5 x i8]* %cipher.ptr.56
;-------------------------------
; Replace: %sp0.1.65 = bitcast [5 x i8]* @str.65 to i40*
  %spi99 = alloca [5 x i8]
  
  %s0.99 = load [1 x i8], [1 x i8]* @str.0.99
  %sp0.99 = bitcast [5 x i8]* %spi99 to [1 x i8]*
  store [1 x i8] %s0.99, [1 x i8]* %sp0.99
  %next0.99 = getelementptr [5 x i8], [5 x i8]* %spi99, i32 0, i32 1
  
  %s1.99 = load [1 x i8], [1 x i8]* @str.1.99
  %sp1.99 = bitcast i8* %next0.99 to [1 x i8]*
  store [1 x i8] %s1.99, [1 x i8]* %sp1.99
  %next1.99 = getelementptr [5 x i8], [5 x i8]* %spi99, i32 0, i32 2
  
  %s2.99 = load [1 x i8], [1 x i8]* @str.2.99
  %sp2.99 = bitcast i8* %next1.99 to [1 x i8]*
  store [1 x i8] %s2.99, [1 x i8]* %sp2.99
  %next2.99 = getelementptr [5 x i8], [5 x i8]* %spi99, i32 0, i32 3
  
  %s3.99 = load [1 x i8], [1 x i8]* @str.3.99
  %sp3.99 = bitcast i8* %next2.99 to [1 x i8]*
  store [1 x i8] %s3.99, [1 x i8]* %sp3.99
  %next3.99 = getelementptr [5 x i8], [5 x i8]* %spi99, i32 0, i32 4
  
  %s4.99 = load [1 x i8], [1 x i8]* @str.4.99
  %sp4.99 = bitcast i8* %next3.99 to [1 x i8]*
  store [1 x i8] %s4.99, [1 x i8]* %sp4.99
  %sp0.1.65 = bitcast [5 x i8]* %spi99 to i40*
;-------------------------------
  %i0.65 = load i40, i40* %sp0.1.65

;-------------------------------
; Replace: %sp1.1.65 = bitcast [5 x i8]* @key.65 to i40*
  %spi100 = alloca [5 x i8]
  
  %s0.100 = load [1 x i8], [1 x i8]* @str.0.100
  %sp0.100 = bitcast [5 x i8]* %spi100 to [1 x i8]*
  store [1 x i8] %s0.100, [1 x i8]* %sp0.100
  %next0.100 = getelementptr [5 x i8], [5 x i8]* %spi100, i32 0, i32 1
  
  %s1.100 = load [1 x i8], [1 x i8]* @str.1.100
  %sp1.100 = bitcast i8* %next0.100 to [1 x i8]*
  store [1 x i8] %s1.100, [1 x i8]* %sp1.100
  %next1.100 = getelementptr [5 x i8], [5 x i8]* %spi100, i32 0, i32 2
  
  %s2.100 = load [1 x i8], [1 x i8]* @str.2.100
  %sp2.100 = bitcast i8* %next1.100 to [1 x i8]*
  store [1 x i8] %s2.100, [1 x i8]* %sp2.100
  %next2.100 = getelementptr [5 x i8], [5 x i8]* %spi100, i32 0, i32 3
  
  %s3.100 = load [1 x i8], [1 x i8]* @str.3.100
  %sp3.100 = bitcast i8* %next2.100 to [1 x i8]*
  store [1 x i8] %s3.100, [1 x i8]* %sp3.100
  %next3.100 = getelementptr [5 x i8], [5 x i8]* %spi100, i32 0, i32 4
  
  %s4.100 = load [1 x i8], [1 x i8]* @str.4.100
  %sp4.100 = bitcast i8* %next3.100 to [1 x i8]*
  store [1 x i8] %s4.100, [1 x i8]* %sp4.100
  %sp1.1.65 = bitcast [5 x i8]* %spi100 to i40*
;-------------------------------
  %i1.65 = load i40, i40* %sp1.1.65

  %xp65 = xor i40 %i0.65, %i1.65

  %fi.65 = alloca i40
  store i40 %xp65, i40* %fi.65

  %final.ptr.65 = bitcast i40* %fi.65 to [5 x i8]*
  %spi65 = load [5 x i8], [5 x i8]* %final.ptr.65
  store [5 x i8] %spi65, [5 x i8]* %cipher.ptr.56
;-------------------------------
  %cipher.56 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.56, i32 0, i32 0
  %plain.ptr.56 = tail call i8* @base64_decode(i8* %cipher.56)
  %spi56 = ptrtoint i8* %plain.ptr.56 to i32
  store i32 %spi56, i32* %12, align 4
;-------------------------------
  store i32 %18, i32* %13, align 16
  store i32 134517867, i32* %14, align 4
  %arg.i.i5 = load i32, i32* %13, align 16
  %arg2.i.i6 = load i32, i32* %12, align 4
  %19 = tail call i32 @strcmp(i32 %arg.i.i5, i32 %arg2.i.i6)
  %.not.i4.i = icmp eq i32 %19, 0
  br i1 %.not.i4.i, label %BB_8049472.i, label %.exit

BB_8049426.i:                                     ; preds = %Func_804941F.exit.i
  store i32 134517803, i32* %7, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i27.i, -40
  %20 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i29.i, i32* %20, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i27.i, -68
  %21 = inttoptr i32 %tmp2_v2.i.i.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @print_first_repeat837 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack836, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
; Replace: store i32 134517414, i32* %21, align 4
  %cipher.ptr.57 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\56\6f\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.57
;-------------------------------
; Replace: %sp0.1.66 = bitcast [9 x i8]* @str.66 to i72*
  %spi101 = alloca [9 x i8]
  
  %s0.101 = load [1 x i8], [1 x i8]* @str.0.101
  %sp0.101 = bitcast [9 x i8]* %spi101 to [1 x i8]*
  store [1 x i8] %s0.101, [1 x i8]* %sp0.101
  %next0.101 = getelementptr [9 x i8], [9 x i8]* %spi101, i32 0, i32 1
  
  %s1.101 = load [1 x i8], [1 x i8]* @str.1.101
  %sp1.101 = bitcast i8* %next0.101 to [1 x i8]*
  store [1 x i8] %s1.101, [1 x i8]* %sp1.101
  %next1.101 = getelementptr [9 x i8], [9 x i8]* %spi101, i32 0, i32 2
  
  %s2.101 = load [1 x i8], [1 x i8]* @str.2.101
  %sp2.101 = bitcast i8* %next1.101 to [1 x i8]*
  store [1 x i8] %s2.101, [1 x i8]* %sp2.101
  %next2.101 = getelementptr [9 x i8], [9 x i8]* %spi101, i32 0, i32 3
  
  %s3.101 = load [1 x i8], [1 x i8]* @str.3.101
  %sp3.101 = bitcast i8* %next2.101 to [1 x i8]*
  store [1 x i8] %s3.101, [1 x i8]* %sp3.101
  %next3.101 = getelementptr [9 x i8], [9 x i8]* %spi101, i32 0, i32 4
  
  %s4.101 = load [1 x i8], [1 x i8]* @str.4.101
  %sp4.101 = bitcast i8* %next3.101 to [1 x i8]*
  store [1 x i8] %s4.101, [1 x i8]* %sp4.101
  %next4.101 = getelementptr [9 x i8], [9 x i8]* %spi101, i32 0, i32 5
  
  %s5.101 = load [1 x i8], [1 x i8]* @str.5.101
  %sp5.101 = bitcast i8* %next4.101 to [1 x i8]*
  store [1 x i8] %s5.101, [1 x i8]* %sp5.101
  %next5.101 = getelementptr [9 x i8], [9 x i8]* %spi101, i32 0, i32 6
  
  %s6.101 = load [1 x i8], [1 x i8]* @str.6.101
  %sp6.101 = bitcast i8* %next5.101 to [1 x i8]*
  store [1 x i8] %s6.101, [1 x i8]* %sp6.101
  %next6.101 = getelementptr [9 x i8], [9 x i8]* %spi101, i32 0, i32 7
  
  %s7.101 = load [2 x i8], [2 x i8]* @str.7.101
  %sp7.101 = bitcast i8* %next6.101 to [2 x i8]*
  store [2 x i8] %s7.101, [2 x i8]* %sp7.101
  %sp0.1.66 = bitcast [9 x i8]* %spi101 to i72*
;-------------------------------
  %i0.66 = load i72, i72* %sp0.1.66

;-------------------------------
; Replace: %sp1.1.66 = bitcast [9 x i8]* @key.66 to i72*
  %spi102 = alloca [9 x i8]
  
  %s0.102 = load [1 x i8], [1 x i8]* @str.0.102
  %sp0.102 = bitcast [9 x i8]* %spi102 to [1 x i8]*
  store [1 x i8] %s0.102, [1 x i8]* %sp0.102
  %next0.102 = getelementptr [9 x i8], [9 x i8]* %spi102, i32 0, i32 1
  
  %s1.102 = load [1 x i8], [1 x i8]* @str.1.102
  %sp1.102 = bitcast i8* %next0.102 to [1 x i8]*
  store [1 x i8] %s1.102, [1 x i8]* %sp1.102
  %next1.102 = getelementptr [9 x i8], [9 x i8]* %spi102, i32 0, i32 2
  
  %s2.102 = load [1 x i8], [1 x i8]* @str.2.102
  %sp2.102 = bitcast i8* %next1.102 to [1 x i8]*
  store [1 x i8] %s2.102, [1 x i8]* %sp2.102
  %next2.102 = getelementptr [9 x i8], [9 x i8]* %spi102, i32 0, i32 3
  
  %s3.102 = load [1 x i8], [1 x i8]* @str.3.102
  %sp3.102 = bitcast i8* %next2.102 to [1 x i8]*
  store [1 x i8] %s3.102, [1 x i8]* %sp3.102
  %next3.102 = getelementptr [9 x i8], [9 x i8]* %spi102, i32 0, i32 4
  
  %s4.102 = load [1 x i8], [1 x i8]* @str.4.102
  %sp4.102 = bitcast i8* %next3.102 to [1 x i8]*
  store [1 x i8] %s4.102, [1 x i8]* %sp4.102
  %next4.102 = getelementptr [9 x i8], [9 x i8]* %spi102, i32 0, i32 5
  
  %s5.102 = load [1 x i8], [1 x i8]* @str.5.102
  %sp5.102 = bitcast i8* %next4.102 to [1 x i8]*
  store [1 x i8] %s5.102, [1 x i8]* %sp5.102
  %next5.102 = getelementptr [9 x i8], [9 x i8]* %spi102, i32 0, i32 6
  
  %s6.102 = load [1 x i8], [1 x i8]* @str.6.102
  %sp6.102 = bitcast i8* %next5.102 to [1 x i8]*
  store [1 x i8] %s6.102, [1 x i8]* %sp6.102
  %next6.102 = getelementptr [9 x i8], [9 x i8]* %spi102, i32 0, i32 7
  
  %s7.102 = load [2 x i8], [2 x i8]* @str.7.102
  %sp7.102 = bitcast i8* %next6.102 to [2 x i8]*
  store [2 x i8] %s7.102, [2 x i8]* %sp7.102
  %sp1.1.66 = bitcast [9 x i8]* %spi102 to i72*
;-------------------------------
  %i1.66 = load i72, i72* %sp1.1.66

  %xp66 = xor i72 %i0.66, %i1.66

  %fi.66 = alloca i72
  store i72 %xp66, i72* %fi.66

  %final.ptr.66 = bitcast i72* %fi.66 to [9 x i8]*
  %spi66 = load [9 x i8], [9 x i8]* %final.ptr.66
  store [9 x i8] %spi66, [9 x i8]* %cipher.ptr.57
;-------------------------------
  %cipher.57 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.57, i32 0, i32 0
  %plain.ptr.57 = tail call i8* @base64_decode(i8* %cipher.57)
  %spi57 = ptrtoint i8* %plain.ptr.57 to i32
  store i32 %spi57, i32* %21, align 4
;-------------------------------
  %tmp2_v1.i8.i.i = add i32 %tmp0_v.i27.i, -56
  %22 = inttoptr i32 %tmp2_v1.i8.i.i to i32*
;-------------------------------
; Replace: store i32 134520840, i32* %22, align 8
  %cipher.ptr.58 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\53\53\42\68\62\53\42\6c\64\6d\6c\73\49\53\45\68\43\67\41\3d\00", [21 x i8]* %cipher.ptr.58
;-------------------------------
; Replace: %sp0.1.67 = bitcast [21 x i8]* @str.67 to i168*
  %spi103 = alloca [21 x i8]
  
  %s0.103 = load [2 x i8], [2 x i8]* @str.0.103
  %sp0.103 = bitcast [21 x i8]* %spi103 to [2 x i8]*
  store [2 x i8] %s0.103, [2 x i8]* %sp0.103
  %next0.103 = getelementptr [21 x i8], [21 x i8]* %spi103, i32 0, i32 2
  
  %s1.103 = load [3 x i8], [3 x i8]* @str.1.103
  %sp1.103 = bitcast i8* %next0.103 to [3 x i8]*
  store [3 x i8] %s1.103, [3 x i8]* %sp1.103
  %next1.103 = getelementptr [21 x i8], [21 x i8]* %spi103, i32 0, i32 5
  
  %s2.103 = load [2 x i8], [2 x i8]* @str.2.103
  %sp2.103 = bitcast i8* %next1.103 to [2 x i8]*
  store [2 x i8] %s2.103, [2 x i8]* %sp2.103
  %next2.103 = getelementptr [21 x i8], [21 x i8]* %spi103, i32 0, i32 7
  
  %s3.103 = load [3 x i8], [3 x i8]* @str.3.103
  %sp3.103 = bitcast i8* %next2.103 to [3 x i8]*
  store [3 x i8] %s3.103, [3 x i8]* %sp3.103
  %next3.103 = getelementptr [21 x i8], [21 x i8]* %spi103, i32 0, i32 10
  
  %s4.103 = load [3 x i8], [3 x i8]* @str.4.103
  %sp4.103 = bitcast i8* %next3.103 to [3 x i8]*
  store [3 x i8] %s4.103, [3 x i8]* %sp4.103
  %next4.103 = getelementptr [21 x i8], [21 x i8]* %spi103, i32 0, i32 13
  
  %s5.103 = load [2 x i8], [2 x i8]* @str.5.103
  %sp5.103 = bitcast i8* %next4.103 to [2 x i8]*
  store [2 x i8] %s5.103, [2 x i8]* %sp5.103
  %next5.103 = getelementptr [21 x i8], [21 x i8]* %spi103, i32 0, i32 15
  
  %s6.103 = load [3 x i8], [3 x i8]* @str.6.103
  %sp6.103 = bitcast i8* %next5.103 to [3 x i8]*
  store [3 x i8] %s6.103, [3 x i8]* %sp6.103
  %next6.103 = getelementptr [21 x i8], [21 x i8]* %spi103, i32 0, i32 18
  
  %s7.103 = load [3 x i8], [3 x i8]* @str.7.103
  %sp7.103 = bitcast i8* %next6.103 to [3 x i8]*
  store [3 x i8] %s7.103, [3 x i8]* %sp7.103
  %sp0.1.67 = bitcast [21 x i8]* %spi103 to i168*
;-------------------------------
  %i0.67 = load i168, i168* %sp0.1.67

;-------------------------------
; Replace: %sp1.1.67 = bitcast [21 x i8]* @key.67 to i168*
  %spi104 = alloca [21 x i8]
  
  %s0.104 = load [2 x i8], [2 x i8]* @str.0.104
  %sp0.104 = bitcast [21 x i8]* %spi104 to [2 x i8]*
  store [2 x i8] %s0.104, [2 x i8]* %sp0.104
  %next0.104 = getelementptr [21 x i8], [21 x i8]* %spi104, i32 0, i32 2
  
  %s1.104 = load [3 x i8], [3 x i8]* @str.1.104
  %sp1.104 = bitcast i8* %next0.104 to [3 x i8]*
  store [3 x i8] %s1.104, [3 x i8]* %sp1.104
  %next1.104 = getelementptr [21 x i8], [21 x i8]* %spi104, i32 0, i32 5
  
  %s2.104 = load [2 x i8], [2 x i8]* @str.2.104
  %sp2.104 = bitcast i8* %next1.104 to [2 x i8]*
  store [2 x i8] %s2.104, [2 x i8]* %sp2.104
  %next2.104 = getelementptr [21 x i8], [21 x i8]* %spi104, i32 0, i32 7
  
  %s3.104 = load [3 x i8], [3 x i8]* @str.3.104
  %sp3.104 = bitcast i8* %next2.104 to [3 x i8]*
  store [3 x i8] %s3.104, [3 x i8]* %sp3.104
  %next3.104 = getelementptr [21 x i8], [21 x i8]* %spi104, i32 0, i32 10
  
  %s4.104 = load [3 x i8], [3 x i8]* @str.4.104
  %sp4.104 = bitcast i8* %next3.104 to [3 x i8]*
  store [3 x i8] %s4.104, [3 x i8]* %sp4.104
  %next4.104 = getelementptr [21 x i8], [21 x i8]* %spi104, i32 0, i32 13
  
  %s5.104 = load [2 x i8], [2 x i8]* @str.5.104
  %sp5.104 = bitcast i8* %next4.104 to [2 x i8]*
  store [2 x i8] %s5.104, [2 x i8]* %sp5.104
  %next5.104 = getelementptr [21 x i8], [21 x i8]* %spi104, i32 0, i32 15
  
  %s6.104 = load [3 x i8], [3 x i8]* @str.6.104
  %sp6.104 = bitcast i8* %next5.104 to [3 x i8]*
  store [3 x i8] %s6.104, [3 x i8]* %sp6.104
  %next6.104 = getelementptr [21 x i8], [21 x i8]* %spi104, i32 0, i32 18
  
  %s7.104 = load [3 x i8], [3 x i8]* @str.7.104
  %sp7.104 = bitcast i8* %next6.104 to [3 x i8]*
  store [3 x i8] %s7.104, [3 x i8]* %sp7.104
  %sp1.1.67 = bitcast [21 x i8]* %spi104 to i168*
;-------------------------------
  %i1.67 = load i168, i168* %sp1.1.67

  %xp67 = xor i168 %i0.67, %i1.67

  %fi.67 = alloca i168
  store i168 %xp67, i168* %fi.67

  %final.ptr.67 = bitcast i168* %fi.67 to [21 x i8]*
  %spi67 = load [21 x i8], [21 x i8]* %final.ptr.67
  store [21 x i8] %spi67, [21 x i8]* %cipher.ptr.58
;-------------------------------
  %cipher.58 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.58, i32 0, i32 0
  %plain.ptr.58 = tail call i8* @base64_decode(i8* %cipher.58)
  %spi58 = ptrtoint i8* %plain.ptr.58 to i32
  store i32 %spi58, i32* %22, align 8
;-------------------------------
;-------------------------------
; Replace: store i32 134520854, i32* %14, align 4
  %cipher.ptr.59 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\51\6e\6c\6c\49\45\4a\35\5a\51\6f\41\00", [13 x i8]* %cipher.ptr.59
;-------------------------------
; Replace: %sp0.1.68 = bitcast [13 x i8]* @str.68 to i104*
  %spi105 = alloca [13 x i8]
  
  %s0.105 = load [1 x i8], [1 x i8]* @str.0.105
  %sp0.105 = bitcast [13 x i8]* %spi105 to [1 x i8]*
  store [1 x i8] %s0.105, [1 x i8]* %sp0.105
  %next0.105 = getelementptr [13 x i8], [13 x i8]* %spi105, i32 0, i32 1
  
  %s1.105 = load [2 x i8], [2 x i8]* @str.1.105
  %sp1.105 = bitcast i8* %next0.105 to [2 x i8]*
  store [2 x i8] %s1.105, [2 x i8]* %sp1.105
  %next1.105 = getelementptr [13 x i8], [13 x i8]* %spi105, i32 0, i32 3
  
  %s2.105 = load [1 x i8], [1 x i8]* @str.2.105
  %sp2.105 = bitcast i8* %next1.105 to [1 x i8]*
  store [1 x i8] %s2.105, [1 x i8]* %sp2.105
  %next2.105 = getelementptr [13 x i8], [13 x i8]* %spi105, i32 0, i32 4
  
  %s3.105 = load [2 x i8], [2 x i8]* @str.3.105
  %sp3.105 = bitcast i8* %next2.105 to [2 x i8]*
  store [2 x i8] %s3.105, [2 x i8]* %sp3.105
  %next3.105 = getelementptr [13 x i8], [13 x i8]* %spi105, i32 0, i32 6
  
  %s4.105 = load [2 x i8], [2 x i8]* @str.4.105
  %sp4.105 = bitcast i8* %next3.105 to [2 x i8]*
  store [2 x i8] %s4.105, [2 x i8]* %sp4.105
  %next4.105 = getelementptr [13 x i8], [13 x i8]* %spi105, i32 0, i32 8
  
  %s5.105 = load [1 x i8], [1 x i8]* @str.5.105
  %sp5.105 = bitcast i8* %next4.105 to [1 x i8]*
  store [1 x i8] %s5.105, [1 x i8]* %sp5.105
  %next5.105 = getelementptr [13 x i8], [13 x i8]* %spi105, i32 0, i32 9
  
  %s6.105 = load [2 x i8], [2 x i8]* @str.6.105
  %sp6.105 = bitcast i8* %next5.105 to [2 x i8]*
  store [2 x i8] %s6.105, [2 x i8]* %sp6.105
  %next6.105 = getelementptr [13 x i8], [13 x i8]* %spi105, i32 0, i32 11
  
  %s7.105 = load [2 x i8], [2 x i8]* @str.7.105
  %sp7.105 = bitcast i8* %next6.105 to [2 x i8]*
  store [2 x i8] %s7.105, [2 x i8]* %sp7.105
  %sp0.1.68 = bitcast [13 x i8]* %spi105 to i104*
;-------------------------------
  %i0.68 = load i104, i104* %sp0.1.68

;-------------------------------
; Replace: %sp1.1.68 = bitcast [13 x i8]* @key.68 to i104*
  %spi106 = alloca [13 x i8]
  
  %s0.106 = load [1 x i8], [1 x i8]* @str.0.106
  %sp0.106 = bitcast [13 x i8]* %spi106 to [1 x i8]*
  store [1 x i8] %s0.106, [1 x i8]* %sp0.106
  %next0.106 = getelementptr [13 x i8], [13 x i8]* %spi106, i32 0, i32 1
  
  %s1.106 = load [2 x i8], [2 x i8]* @str.1.106
  %sp1.106 = bitcast i8* %next0.106 to [2 x i8]*
  store [2 x i8] %s1.106, [2 x i8]* %sp1.106
  %next1.106 = getelementptr [13 x i8], [13 x i8]* %spi106, i32 0, i32 3
  
  %s2.106 = load [1 x i8], [1 x i8]* @str.2.106
  %sp2.106 = bitcast i8* %next1.106 to [1 x i8]*
  store [1 x i8] %s2.106, [1 x i8]* %sp2.106
  %next2.106 = getelementptr [13 x i8], [13 x i8]* %spi106, i32 0, i32 4
  
  %s3.106 = load [2 x i8], [2 x i8]* @str.3.106
  %sp3.106 = bitcast i8* %next2.106 to [2 x i8]*
  store [2 x i8] %s3.106, [2 x i8]* %sp3.106
  %next3.106 = getelementptr [13 x i8], [13 x i8]* %spi106, i32 0, i32 6
  
  %s4.106 = load [2 x i8], [2 x i8]* @str.4.106
  %sp4.106 = bitcast i8* %next3.106 to [2 x i8]*
  store [2 x i8] %s4.106, [2 x i8]* %sp4.106
  %next4.106 = getelementptr [13 x i8], [13 x i8]* %spi106, i32 0, i32 8
  
  %s5.106 = load [1 x i8], [1 x i8]* @str.5.106
  %sp5.106 = bitcast i8* %next4.106 to [1 x i8]*
  store [1 x i8] %s5.106, [1 x i8]* %sp5.106
  %next5.106 = getelementptr [13 x i8], [13 x i8]* %spi106, i32 0, i32 9
  
  %s6.106 = load [2 x i8], [2 x i8]* @str.6.106
  %sp6.106 = bitcast i8* %next5.106 to [2 x i8]*
  store [2 x i8] %s6.106, [2 x i8]* %sp6.106
  %next6.106 = getelementptr [13 x i8], [13 x i8]* %spi106, i32 0, i32 11
  
  %s7.106 = load [2 x i8], [2 x i8]* @str.7.106
  %sp7.106 = bitcast i8* %next6.106 to [2 x i8]*
  store [2 x i8] %s7.106, [2 x i8]* %sp7.106
  %sp1.1.68 = bitcast [13 x i8]* %spi106 to i104*
;-------------------------------
  %i1.68 = load i104, i104* %sp1.1.68

  %xp68 = xor i104 %i0.68, %i1.68

  %fi.68 = alloca i104
  store i104 %xp68, i104* %fi.68

  %final.ptr.68 = bitcast i104* %fi.68 to [13 x i8]*
  %spi68 = load [13 x i8], [13 x i8]* %final.ptr.68
  store [13 x i8] %spi68, [13 x i8]* %cipher.ptr.59
;-------------------------------
  %cipher.59 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.59, i32 0, i32 0
  %plain.ptr.59 = tail call i8* @base64_decode(i8* %cipher.59)
  %spi59 = ptrtoint i8* %plain.ptr.59 to i32
  store i32 %spi59, i32* %14, align 4
;-------------------------------
  %23 = load i32, i32* %22, align 8
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i27.i, -76
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @bubble_sort344 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack343, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %24 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %23, i32* %24, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @isalnum272 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack271, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i27.i, -80
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @binary_to_decimal834 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack833, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %25 = inttoptr i32 %tmp2_v9.i.i.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @check_parity874 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack873, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
;-------------------------------
; Replace: store i32 134520863, i32* %25, align 16
  %cipher.ptr.60 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4a\58\4d\41\00", [5 x i8]* %cipher.ptr.60
;-------------------------------
; Replace: %sp0.1.69 = bitcast [5 x i8]* @str.69 to i40*
  %spi107 = alloca [5 x i8]
  
  %s0.107 = load [1 x i8], [1 x i8]* @str.0.107
  %sp0.107 = bitcast [5 x i8]* %spi107 to [1 x i8]*
  store [1 x i8] %s0.107, [1 x i8]* %sp0.107
  %next0.107 = getelementptr [5 x i8], [5 x i8]* %spi107, i32 0, i32 1
  
  %s1.107 = load [1 x i8], [1 x i8]* @str.1.107
  %sp1.107 = bitcast i8* %next0.107 to [1 x i8]*
  store [1 x i8] %s1.107, [1 x i8]* %sp1.107
  %next1.107 = getelementptr [5 x i8], [5 x i8]* %spi107, i32 0, i32 2
  
  %s2.107 = load [1 x i8], [1 x i8]* @str.2.107
  %sp2.107 = bitcast i8* %next1.107 to [1 x i8]*
  store [1 x i8] %s2.107, [1 x i8]* %sp2.107
  %next2.107 = getelementptr [5 x i8], [5 x i8]* %spi107, i32 0, i32 3
  
  %s3.107 = load [1 x i8], [1 x i8]* @str.3.107
  %sp3.107 = bitcast i8* %next2.107 to [1 x i8]*
  store [1 x i8] %s3.107, [1 x i8]* %sp3.107
  %next3.107 = getelementptr [5 x i8], [5 x i8]* %spi107, i32 0, i32 4
  
  %s4.107 = load [1 x i8], [1 x i8]* @str.4.107
  %sp4.107 = bitcast i8* %next3.107 to [1 x i8]*
  store [1 x i8] %s4.107, [1 x i8]* %sp4.107
  %sp0.1.69 = bitcast [5 x i8]* %spi107 to i40*
;-------------------------------
  %i0.69 = load i40, i40* %sp0.1.69

;-------------------------------
; Replace: %sp1.1.69 = bitcast [5 x i8]* @key.69 to i40*
  %spi108 = alloca [5 x i8]
  
  %s0.108 = load [1 x i8], [1 x i8]* @str.0.108
  %sp0.108 = bitcast [5 x i8]* %spi108 to [1 x i8]*
  store [1 x i8] %s0.108, [1 x i8]* %sp0.108
  %next0.108 = getelementptr [5 x i8], [5 x i8]* %spi108, i32 0, i32 1
  
  %s1.108 = load [1 x i8], [1 x i8]* @str.1.108
  %sp1.108 = bitcast i8* %next0.108 to [1 x i8]*
  store [1 x i8] %s1.108, [1 x i8]* %sp1.108
  %next1.108 = getelementptr [5 x i8], [5 x i8]* %spi108, i32 0, i32 2
  
  %s2.108 = load [1 x i8], [1 x i8]* @str.2.108
  %sp2.108 = bitcast i8* %next1.108 to [1 x i8]*
  store [1 x i8] %s2.108, [1 x i8]* %sp2.108
  %next2.108 = getelementptr [5 x i8], [5 x i8]* %spi108, i32 0, i32 3
  
  %s3.108 = load [1 x i8], [1 x i8]* @str.3.108
  %sp3.108 = bitcast i8* %next2.108 to [1 x i8]*
  store [1 x i8] %s3.108, [1 x i8]* %sp3.108
  %next3.108 = getelementptr [5 x i8], [5 x i8]* %spi108, i32 0, i32 4
  
  %s4.108 = load [1 x i8], [1 x i8]* @str.4.108
  %sp4.108 = bitcast i8* %next3.108 to [1 x i8]*
  store [1 x i8] %s4.108, [1 x i8]* %sp4.108
  %sp1.1.69 = bitcast [5 x i8]* %spi108 to i40*
;-------------------------------
  %i1.69 = load i40, i40* %sp1.1.69

  %xp69 = xor i40 %i0.69, %i1.69

  %fi.69 = alloca i40
  store i40 %xp69, i40* %fi.69

  %final.ptr.69 = bitcast i40* %fi.69 to [5 x i8]*
  %spi69 = load [5 x i8], [5 x i8]* %final.ptr.69
  store [5 x i8] %spi69, [5 x i8]* %cipher.ptr.60
;-------------------------------
  %cipher.60 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.60, i32 0, i32 0
  %plain.ptr.60 = tail call i8* @base64_decode(i8* %cipher.60)
  %spi60 = ptrtoint i8* %plain.ptr.60 to i32
  store i32 %spi60, i32* %25, align 16
;-------------------------------
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i27.i, -84
  %26 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517457, i32* %26, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @string_length_recursive442 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack441, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %27 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i26.i, i32 inreg noundef 134520863, i32 noundef %tmp2_v9.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32)) #11, !funcname !13
  br label %.exit

BB_804944C.i:                                     ; preds = %BB_804942D.i
  store i32 134517841, i32* %7, align 4
  %tmp2_v.i.i.i8 = add i32 %tmp0_v.i27.i, -40
  %28 = inttoptr i32 %tmp2_v.i.i.i8 to i32*
  store i32 %tmp2_v4.i29.i, i32* %28, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i.i.i10 = add i32 %tmp0_v.i27.i, -84
  %29 = inttoptr i32 %tmp2_v2.i.i.i10 to i32*
  store i32 134517482, i32* %29, align 4
  %tmp4_v.i18.i.b.i = load i1, i1* @segs.0, align 1
  %30 = select i1 %tmp4_v.i18.i.b.i, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %tmp2_v5.i25.i.i = add i32 %tmp0_v.i27.i, -92
  %32 = inttoptr i32 %tmp2_v5.i25.i.i to i32*
;-------------------------------
; Replace: store i32 134520866, i32* %32, align 4
  %cipher.ptr.61 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\64\79\73\41\00", [5 x i8]* %cipher.ptr.61
;-------------------------------
; Replace: %sp0.1.70 = bitcast [5 x i8]* @str.70 to i40*
  %spi109 = alloca [5 x i8]
  
  %s0.109 = load [1 x i8], [1 x i8]* @str.0.109
  %sp0.109 = bitcast [5 x i8]* %spi109 to [1 x i8]*
  store [1 x i8] %s0.109, [1 x i8]* %sp0.109
  %next0.109 = getelementptr [5 x i8], [5 x i8]* %spi109, i32 0, i32 1
  
  %s1.109 = load [1 x i8], [1 x i8]* @str.1.109
  %sp1.109 = bitcast i8* %next0.109 to [1 x i8]*
  store [1 x i8] %s1.109, [1 x i8]* %sp1.109
  %next1.109 = getelementptr [5 x i8], [5 x i8]* %spi109, i32 0, i32 2
  
  %s2.109 = load [1 x i8], [1 x i8]* @str.2.109
  %sp2.109 = bitcast i8* %next1.109 to [1 x i8]*
  store [1 x i8] %s2.109, [1 x i8]* %sp2.109
  %next2.109 = getelementptr [5 x i8], [5 x i8]* %spi109, i32 0, i32 3
  
  %s3.109 = load [1 x i8], [1 x i8]* @str.3.109
  %sp3.109 = bitcast i8* %next2.109 to [1 x i8]*
  store [1 x i8] %s3.109, [1 x i8]* %sp3.109
  %next3.109 = getelementptr [5 x i8], [5 x i8]* %spi109, i32 0, i32 4
  
  %s4.109 = load [1 x i8], [1 x i8]* @str.4.109
  %sp4.109 = bitcast i8* %next3.109 to [1 x i8]*
  store [1 x i8] %s4.109, [1 x i8]* %sp4.109
  %sp0.1.70 = bitcast [5 x i8]* %spi109 to i40*
;-------------------------------
  %i0.70 = load i40, i40* %sp0.1.70

;-------------------------------
; Replace: %sp1.1.70 = bitcast [5 x i8]* @key.70 to i40*
  %spi110 = alloca [5 x i8]
  
  %s0.110 = load [1 x i8], [1 x i8]* @str.0.110
  %sp0.110 = bitcast [5 x i8]* %spi110 to [1 x i8]*
  store [1 x i8] %s0.110, [1 x i8]* %sp0.110
  %next0.110 = getelementptr [5 x i8], [5 x i8]* %spi110, i32 0, i32 1
  
  %s1.110 = load [1 x i8], [1 x i8]* @str.1.110
  %sp1.110 = bitcast i8* %next0.110 to [1 x i8]*
  store [1 x i8] %s1.110, [1 x i8]* %sp1.110
  %next1.110 = getelementptr [5 x i8], [5 x i8]* %spi110, i32 0, i32 2
  
  %s2.110 = load [1 x i8], [1 x i8]* @str.2.110
  %sp2.110 = bitcast i8* %next1.110 to [1 x i8]*
  store [1 x i8] %s2.110, [1 x i8]* %sp2.110
  %next2.110 = getelementptr [5 x i8], [5 x i8]* %spi110, i32 0, i32 3
  
  %s3.110 = load [1 x i8], [1 x i8]* @str.3.110
  %sp3.110 = bitcast i8* %next2.110 to [1 x i8]*
  store [1 x i8] %s3.110, [1 x i8]* %sp3.110
  %next3.110 = getelementptr [5 x i8], [5 x i8]* %spi110, i32 0, i32 4
  
  %s4.110 = load [1 x i8], [1 x i8]* @str.4.110
  %sp4.110 = bitcast i8* %next3.110 to [1 x i8]*
  store [1 x i8] %s4.110, [1 x i8]* %sp4.110
  %sp1.1.70 = bitcast [5 x i8]* %spi110 to i40*
;-------------------------------
  %i1.70 = load i40, i40* %sp1.1.70

  %xp70 = xor i40 %i0.70, %i1.70

  %fi.70 = alloca i40
  store i40 %xp70, i40* %fi.70

  %final.ptr.70 = bitcast i40* %fi.70 to [5 x i8]*
  %spi70 = load [5 x i8], [5 x i8]* %final.ptr.70
  store [5 x i8] %spi70, [5 x i8]* %cipher.ptr.61
;-------------------------------
  %cipher.61 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.61, i32 0, i32 0
  %plain.ptr.61 = tail call i8* @base64_decode(i8* %cipher.61)
  %spi61 = ptrtoint i8* %plain.ptr.61 to i32
  store i32 %spi61, i32* %32, align 4
;-------------------------------
  %tmp2_v7.i27.i.i = add i32 %tmp0_v.i27.i, -96
  %33 = inttoptr i32 %tmp2_v7.i27.i.i to i32*
;-------------------------------
; Replace: store i32 134520869, i32* %33, align 16
  %cipher.ptr.62 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\64\47\56\34\64\46\39\6d\61\57\78\6c\4d\79\35\30\65\48\51\41\00", [21 x i8]* %cipher.ptr.62
;-------------------------------
; Replace: %sp0.1.71 = bitcast [21 x i8]* @str.71 to i168*
  %spi111 = alloca [21 x i8]
  
  %s0.111 = load [2 x i8], [2 x i8]* @str.0.111
  %sp0.111 = bitcast [21 x i8]* %spi111 to [2 x i8]*
  store [2 x i8] %s0.111, [2 x i8]* %sp0.111
  %next0.111 = getelementptr [21 x i8], [21 x i8]* %spi111, i32 0, i32 2
  
  %s1.111 = load [3 x i8], [3 x i8]* @str.1.111
  %sp1.111 = bitcast i8* %next0.111 to [3 x i8]*
  store [3 x i8] %s1.111, [3 x i8]* %sp1.111
  %next1.111 = getelementptr [21 x i8], [21 x i8]* %spi111, i32 0, i32 5
  
  %s2.111 = load [2 x i8], [2 x i8]* @str.2.111
  %sp2.111 = bitcast i8* %next1.111 to [2 x i8]*
  store [2 x i8] %s2.111, [2 x i8]* %sp2.111
  %next2.111 = getelementptr [21 x i8], [21 x i8]* %spi111, i32 0, i32 7
  
  %s3.111 = load [3 x i8], [3 x i8]* @str.3.111
  %sp3.111 = bitcast i8* %next2.111 to [3 x i8]*
  store [3 x i8] %s3.111, [3 x i8]* %sp3.111
  %next3.111 = getelementptr [21 x i8], [21 x i8]* %spi111, i32 0, i32 10
  
  %s4.111 = load [3 x i8], [3 x i8]* @str.4.111
  %sp4.111 = bitcast i8* %next3.111 to [3 x i8]*
  store [3 x i8] %s4.111, [3 x i8]* %sp4.111
  %next4.111 = getelementptr [21 x i8], [21 x i8]* %spi111, i32 0, i32 13
  
  %s5.111 = load [2 x i8], [2 x i8]* @str.5.111
  %sp5.111 = bitcast i8* %next4.111 to [2 x i8]*
  store [2 x i8] %s5.111, [2 x i8]* %sp5.111
  %next5.111 = getelementptr [21 x i8], [21 x i8]* %spi111, i32 0, i32 15
  
  %s6.111 = load [3 x i8], [3 x i8]* @str.6.111
  %sp6.111 = bitcast i8* %next5.111 to [3 x i8]*
  store [3 x i8] %s6.111, [3 x i8]* %sp6.111
  %next6.111 = getelementptr [21 x i8], [21 x i8]* %spi111, i32 0, i32 18
  
  %s7.111 = load [3 x i8], [3 x i8]* @str.7.111
  %sp7.111 = bitcast i8* %next6.111 to [3 x i8]*
  store [3 x i8] %s7.111, [3 x i8]* %sp7.111
  %sp0.1.71 = bitcast [21 x i8]* %spi111 to i168*
;-------------------------------
  %i0.71 = load i168, i168* %sp0.1.71

;-------------------------------
; Replace: %sp1.1.71 = bitcast [21 x i8]* @key.71 to i168*
  %spi112 = alloca [21 x i8]
  
  %s0.112 = load [2 x i8], [2 x i8]* @str.0.112
  %sp0.112 = bitcast [21 x i8]* %spi112 to [2 x i8]*
  store [2 x i8] %s0.112, [2 x i8]* %sp0.112
  %next0.112 = getelementptr [21 x i8], [21 x i8]* %spi112, i32 0, i32 2
  
  %s1.112 = load [3 x i8], [3 x i8]* @str.1.112
  %sp1.112 = bitcast i8* %next0.112 to [3 x i8]*
  store [3 x i8] %s1.112, [3 x i8]* %sp1.112
  %next1.112 = getelementptr [21 x i8], [21 x i8]* %spi112, i32 0, i32 5
  
  %s2.112 = load [2 x i8], [2 x i8]* @str.2.112
  %sp2.112 = bitcast i8* %next1.112 to [2 x i8]*
  store [2 x i8] %s2.112, [2 x i8]* %sp2.112
  %next2.112 = getelementptr [21 x i8], [21 x i8]* %spi112, i32 0, i32 7
  
  %s3.112 = load [3 x i8], [3 x i8]* @str.3.112
  %sp3.112 = bitcast i8* %next2.112 to [3 x i8]*
  store [3 x i8] %s3.112, [3 x i8]* %sp3.112
  %next3.112 = getelementptr [21 x i8], [21 x i8]* %spi112, i32 0, i32 10
  
  %s4.112 = load [3 x i8], [3 x i8]* @str.4.112
  %sp4.112 = bitcast i8* %next3.112 to [3 x i8]*
  store [3 x i8] %s4.112, [3 x i8]* %sp4.112
  %next4.112 = getelementptr [21 x i8], [21 x i8]* %spi112, i32 0, i32 13
  
  %s5.112 = load [2 x i8], [2 x i8]* @str.5.112
  %sp5.112 = bitcast i8* %next4.112 to [2 x i8]*
  store [2 x i8] %s5.112, [2 x i8]* %sp5.112
  %next5.112 = getelementptr [21 x i8], [21 x i8]* %spi112, i32 0, i32 15
  
  %s6.112 = load [3 x i8], [3 x i8]* @str.6.112
  %sp6.112 = bitcast i8* %next5.112 to [3 x i8]*
  store [3 x i8] %s6.112, [3 x i8]* %sp6.112
  %next6.112 = getelementptr [21 x i8], [21 x i8]* %spi112, i32 0, i32 18
  
  %s7.112 = load [3 x i8], [3 x i8]* @str.7.112
  %sp7.112 = bitcast i8* %next6.112 to [3 x i8]*
  store [3 x i8] %s7.112, [3 x i8]* %sp7.112
  %sp1.1.71 = bitcast [21 x i8]* %spi112 to i168*
;-------------------------------
  %i1.71 = load i168, i168* %sp1.1.71

  %xp71 = xor i168 %i0.71, %i1.71

  %fi.71 = alloca i168
  store i168 %xp71, i168* %fi.71

  %final.ptr.71 = bitcast i168* %fi.71 to [21 x i8]*
  %spi71 = load [21 x i8], [21 x i8]* %final.ptr.71
  store [21 x i8] %spi71, [21 x i8]* %cipher.ptr.62
;-------------------------------
  %cipher.62 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.62, i32 0, i32 0
  %plain.ptr.62 = tail call i8* @base64_decode(i8* %cipher.62)
  %spi62 = ptrtoint i8* %plain.ptr.62 to i32
  store i32 %spi62, i32* %33, align 16
;-------------------------------
  %tmp2_v8.i28.i.i = add i32 %tmp0_v.i27.i, -100
  %34 = inttoptr i32 %tmp2_v8.i28.i.i to i32*
  store i32 134517521, i32* %34, align 4
  %arg.i.i.i = load i32, i32* %33, align 16
  %arg2.i.i.i = load i32, i32* %32, align 4
  %35 = tail call i32 @fopen(i32 %arg.i.i.i, i32 %arg2.i.i.i)
  %tmp2_v.i7.i.i = add i32 %tmp0_v.i27.i, -76
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @reverse_a_string180 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack179, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %36 = inttoptr i32 %tmp2_v.i7.i.i to i32*
  store i32 %35, i32* %36, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @count_char593 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack592, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v.i11.i.i = add i32 %tmp0_v.i27.i, -72
  %37 = inttoptr i32 %tmp2_v.i11.i.i to i32*
  store i32 1818304585, i32* %37, align 8
  %tmp2_v1.i12.i.i = add i32 %tmp0_v.i27.i, -68
  %38 = inttoptr i32 %tmp2_v1.i12.i.i to i32*
  store i32 1701995892, i32* %38, align 4
  %tmp2_v2.i13.i.i = add i32 %tmp0_v.i27.i, -64
  %39 = inttoptr i32 %tmp2_v2.i13.i.i to i32*
  store i32 1752440932, i32* %39, align 16
  %tmp2_v3.i.i.i11 = add i32 %tmp0_v.i27.i, -60
  %40 = inttoptr i32 %tmp2_v3.i.i.i11 to i32*
  store i32 1768300645, i32* %40, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i27.i, -56
  %41 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 2188652, i32* %41, align 8
  %42 = load i32, i32* %36, align 4
  store i32 %42, i32* %29, align 4
  %tmp2_v7.i.i.i12 = add i32 %tmp0_v.i27.i, -88
  %43 = inttoptr i32 %tmp2_v7.i.i.i12 to i32*
  store i32 20, i32* %43, align 8
  store i32 1, i32* %32, align 4
  store i32 %tmp2_v.i11.i.i, i32* %33, align 16
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
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i27.i, -40
  %47 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i29.i, i32* %47, align 8
  store i32 134529024, i32* %12, align 4
  %tmp2_v2.i6.i.i = add i32 %tmp0_v.i27.i, -68
  %48 = inttoptr i32 %tmp2_v2.i6.i.i to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @move_zeros939 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack938, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 134517678, i32* %48, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @second_lowest347 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack346, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 0, i32* %14, align 4
  %tmp2_v2.i.i.i15 = add i32 %tmp0_v.i27.i, -72
  %49 = inttoptr i32 %tmp2_v2.i.i.i15 to i32*
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @is_prime2 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack1, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 0, i32* %49, align 8
  %tmp2_v3.i.i.i16 = add i32 %tmp0_v.i27.i, -76
  %50 = inttoptr i32 %tmp2_v3.i.i.i16 to i32*
  store i32 1, i32* %50, align 4
  %tmp2_v4.i.i.i17 = add i32 %tmp0_v.i27.i, -80
  %51 = inttoptr i32 %tmp2_v4.i.i.i17 to i32*
  store i32 2, i32* %51, align 16
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @min_occur_char395 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack394, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i27.i, -84
  %52 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134517705, i32* %52, align 4
  %arg.i.i.i18 = load i32, i32* %51, align 16
  %arg2.i.i.i19 = load i32, i32* %50, align 4
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @smallest_word112 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack111, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  %arg4.i.i.i20 = load i32, i32* %49, align 8
  %53 = tail call i32 @socket(i32 %arg.i.i.i18, i32 %arg2.i.i.i19, i32 %arg4.i.i.i20)
  store i32 %53, i32* %14, align 4
  store i32 %53, i32* %51, align 16
  store i32 134517722, i32* %52, align 4
  %arg.i.i3.i = load i32, i32* %51, align 16
  %54 = tail call i32 @close(i32 %arg.i.i3.i)
  br label %.exit

BB_804942D.i:                                     ; preds = %Func_804941F.exit.i
  %55 = load i32, i32* %8, align 4
  %tmp0_v1.i42.i = add i32 %55, 4
  %56 = inttoptr i32 %tmp0_v1.i42.i to i32*
  %57 = load i32, i32* %56, align 4
;-------------------------------
; Replace: store i32 134520902, i32* %12, align 4
  %cipher.ptr.63 = alloca [5 x i8]
;-------------------------------
; Replace: store [5 x i8] c"\4d\67\41\3d\00", [5 x i8]* %cipher.ptr.63
;-------------------------------
; Replace: %sp0.1.72 = bitcast [5 x i8]* @str.72 to i40*
  %spi113 = alloca [5 x i8]
  
  %s0.113 = load [1 x i8], [1 x i8]* @str.0.113
  %sp0.113 = bitcast [5 x i8]* %spi113 to [1 x i8]*
  store [1 x i8] %s0.113, [1 x i8]* %sp0.113
  %next0.113 = getelementptr [5 x i8], [5 x i8]* %spi113, i32 0, i32 1
  
  %s1.113 = load [1 x i8], [1 x i8]* @str.1.113
  %sp1.113 = bitcast i8* %next0.113 to [1 x i8]*
  store [1 x i8] %s1.113, [1 x i8]* %sp1.113
  %next1.113 = getelementptr [5 x i8], [5 x i8]* %spi113, i32 0, i32 2
  
  %s2.113 = load [1 x i8], [1 x i8]* @str.2.113
  %sp2.113 = bitcast i8* %next1.113 to [1 x i8]*
  store [1 x i8] %s2.113, [1 x i8]* %sp2.113
  %next2.113 = getelementptr [5 x i8], [5 x i8]* %spi113, i32 0, i32 3
  
  %s3.113 = load [1 x i8], [1 x i8]* @str.3.113
  %sp3.113 = bitcast i8* %next2.113 to [1 x i8]*
  store [1 x i8] %s3.113, [1 x i8]* %sp3.113
  %next3.113 = getelementptr [5 x i8], [5 x i8]* %spi113, i32 0, i32 4
  
  %s4.113 = load [1 x i8], [1 x i8]* @str.4.113
  %sp4.113 = bitcast i8* %next3.113 to [1 x i8]*
  store [1 x i8] %s4.113, [1 x i8]* %sp4.113
  %sp0.1.72 = bitcast [5 x i8]* %spi113 to i40*
;-------------------------------
  %i0.72 = load i40, i40* %sp0.1.72

;-------------------------------
; Replace: %sp1.1.72 = bitcast [5 x i8]* @key.72 to i40*
  %spi114 = alloca [5 x i8]
  
  %s0.114 = load [1 x i8], [1 x i8]* @str.0.114
  %sp0.114 = bitcast [5 x i8]* %spi114 to [1 x i8]*
  store [1 x i8] %s0.114, [1 x i8]* %sp0.114
  %next0.114 = getelementptr [5 x i8], [5 x i8]* %spi114, i32 0, i32 1
  
  %s1.114 = load [1 x i8], [1 x i8]* @str.1.114
  %sp1.114 = bitcast i8* %next0.114 to [1 x i8]*
  store [1 x i8] %s1.114, [1 x i8]* %sp1.114
  %next1.114 = getelementptr [5 x i8], [5 x i8]* %spi114, i32 0, i32 2
  
  %s2.114 = load [1 x i8], [1 x i8]* @str.2.114
  %sp2.114 = bitcast i8* %next1.114 to [1 x i8]*
  store [1 x i8] %s2.114, [1 x i8]* %sp2.114
  %next2.114 = getelementptr [5 x i8], [5 x i8]* %spi114, i32 0, i32 3
  
  %s3.114 = load [1 x i8], [1 x i8]* @str.3.114
  %sp3.114 = bitcast i8* %next2.114 to [1 x i8]*
  store [1 x i8] %s3.114, [1 x i8]* %sp3.114
  %next3.114 = getelementptr [5 x i8], [5 x i8]* %spi114, i32 0, i32 4
  
  %s4.114 = load [1 x i8], [1 x i8]* @str.4.114
  %sp4.114 = bitcast i8* %next3.114 to [1 x i8]*
  store [1 x i8] %s4.114, [1 x i8]* %sp4.114
  %sp1.1.72 = bitcast [5 x i8]* %spi114 to i40*
;-------------------------------
  %i1.72 = load i40, i40* %sp1.1.72

  %xp72 = xor i40 %i0.72, %i1.72

  %fi.72 = alloca i40
  store i40 %xp72, i40* %fi.72

  %final.ptr.72 = bitcast i40* %fi.72 to [5 x i8]*
  %spi72 = load [5 x i8], [5 x i8]* %final.ptr.72
  store [5 x i8] %spi72, [5 x i8]* %cipher.ptr.63
;-------------------------------
  %cipher.63 = getelementptr inbounds [5 x i8], [5 x i8]* %cipher.ptr.63, i32 0, i32 0
  %plain.ptr.63 = tail call i8* @base64_decode(i8* %cipher.63)
  %spi63 = ptrtoint i8* %plain.ptr.63 to i32
  store i32 %spi63, i32* %12, align 4
;-------------------------------
;-------------------------------
;----Call to Added Cleanware----
  tail call fastcc void @substring536 (i32 ptrtoint (i32* getelementptr inbounds ([8092 x i32], [8092 x i32]* @stack535, i32 0, i32 8092) to i32)) nounwind
;-------------------------------
  store i32 %57, i32* %13, align 16
  store i32 134517829, i32* %14, align 4
  %arg.i.i21 = load i32, i32* %13, align 16
  %arg2.i.i22 = load i32, i32* %12, align 4
  %58 = tail call i32 @strcmp(i32 %arg.i.i21, i32 %arg2.i.i22)
  %.not.i23.i = icmp eq i32 %58, 0
  br i1 %.not.i23.i, label %BB_804944C.i, label %BB_8049453.i

.exit:                                            ; preds = %BB_8049472.i, %BB_804944C.i, %BB_8049426.i, %BB_8049453.i
  ret void
}

define internal fastcc void @bubble_sort344(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !239 {
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
  %cipher.ptr.32 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\56\34\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.32
;-------------------------------
; Replace: %sp0.1.73 = bitcast [9 x i8]* @str.73 to i72*
  %spi115 = alloca [9 x i8]
  
  %s0.115 = load [1 x i8], [1 x i8]* @str.0.115
  %sp0.115 = bitcast [9 x i8]* %spi115 to [1 x i8]*
  store [1 x i8] %s0.115, [1 x i8]* %sp0.115
  %next0.115 = getelementptr [9 x i8], [9 x i8]* %spi115, i32 0, i32 1
  
  %s1.115 = load [1 x i8], [1 x i8]* @str.1.115
  %sp1.115 = bitcast i8* %next0.115 to [1 x i8]*
  store [1 x i8] %s1.115, [1 x i8]* %sp1.115
  %next1.115 = getelementptr [9 x i8], [9 x i8]* %spi115, i32 0, i32 2
  
  %s2.115 = load [1 x i8], [1 x i8]* @str.2.115
  %sp2.115 = bitcast i8* %next1.115 to [1 x i8]*
  store [1 x i8] %s2.115, [1 x i8]* %sp2.115
  %next2.115 = getelementptr [9 x i8], [9 x i8]* %spi115, i32 0, i32 3
  
  %s3.115 = load [1 x i8], [1 x i8]* @str.3.115
  %sp3.115 = bitcast i8* %next2.115 to [1 x i8]*
  store [1 x i8] %s3.115, [1 x i8]* %sp3.115
  %next3.115 = getelementptr [9 x i8], [9 x i8]* %spi115, i32 0, i32 4
  
  %s4.115 = load [1 x i8], [1 x i8]* @str.4.115
  %sp4.115 = bitcast i8* %next3.115 to [1 x i8]*
  store [1 x i8] %s4.115, [1 x i8]* %sp4.115
  %next4.115 = getelementptr [9 x i8], [9 x i8]* %spi115, i32 0, i32 5
  
  %s5.115 = load [1 x i8], [1 x i8]* @str.5.115
  %sp5.115 = bitcast i8* %next4.115 to [1 x i8]*
  store [1 x i8] %s5.115, [1 x i8]* %sp5.115
  %next5.115 = getelementptr [9 x i8], [9 x i8]* %spi115, i32 0, i32 6
  
  %s6.115 = load [1 x i8], [1 x i8]* @str.6.115
  %sp6.115 = bitcast i8* %next5.115 to [1 x i8]*
  store [1 x i8] %s6.115, [1 x i8]* %sp6.115
  %next6.115 = getelementptr [9 x i8], [9 x i8]* %spi115, i32 0, i32 7
  
  %s7.115 = load [2 x i8], [2 x i8]* @str.7.115
  %sp7.115 = bitcast i8* %next6.115 to [2 x i8]*
  store [2 x i8] %s7.115, [2 x i8]* %sp7.115
  %sp0.1.73 = bitcast [9 x i8]* %spi115 to i72*
;-------------------------------
  %i0.73 = load i72, i72* %sp0.1.73

;-------------------------------
; Replace: %sp1.1.73 = bitcast [9 x i8]* @key.73 to i72*
  %spi116 = alloca [9 x i8]
  
  %s0.116 = load [1 x i8], [1 x i8]* @str.0.116
  %sp0.116 = bitcast [9 x i8]* %spi116 to [1 x i8]*
  store [1 x i8] %s0.116, [1 x i8]* %sp0.116
  %next0.116 = getelementptr [9 x i8], [9 x i8]* %spi116, i32 0, i32 1
  
  %s1.116 = load [1 x i8], [1 x i8]* @str.1.116
  %sp1.116 = bitcast i8* %next0.116 to [1 x i8]*
  store [1 x i8] %s1.116, [1 x i8]* %sp1.116
  %next1.116 = getelementptr [9 x i8], [9 x i8]* %spi116, i32 0, i32 2
  
  %s2.116 = load [1 x i8], [1 x i8]* @str.2.116
  %sp2.116 = bitcast i8* %next1.116 to [1 x i8]*
  store [1 x i8] %s2.116, [1 x i8]* %sp2.116
  %next2.116 = getelementptr [9 x i8], [9 x i8]* %spi116, i32 0, i32 3
  
  %s3.116 = load [1 x i8], [1 x i8]* @str.3.116
  %sp3.116 = bitcast i8* %next2.116 to [1 x i8]*
  store [1 x i8] %s3.116, [1 x i8]* %sp3.116
  %next3.116 = getelementptr [9 x i8], [9 x i8]* %spi116, i32 0, i32 4
  
  %s4.116 = load [1 x i8], [1 x i8]* @str.4.116
  %sp4.116 = bitcast i8* %next3.116 to [1 x i8]*
  store [1 x i8] %s4.116, [1 x i8]* %sp4.116
  %next4.116 = getelementptr [9 x i8], [9 x i8]* %spi116, i32 0, i32 5
  
  %s5.116 = load [1 x i8], [1 x i8]* @str.5.116
  %sp5.116 = bitcast i8* %next4.116 to [1 x i8]*
  store [1 x i8] %s5.116, [1 x i8]* %sp5.116
  %next5.116 = getelementptr [9 x i8], [9 x i8]* %spi116, i32 0, i32 6
  
  %s6.116 = load [1 x i8], [1 x i8]* @str.6.116
  %sp6.116 = bitcast i8* %next5.116 to [1 x i8]*
  store [1 x i8] %s6.116, [1 x i8]* %sp6.116
  %next6.116 = getelementptr [9 x i8], [9 x i8]* %spi116, i32 0, i32 7
  
  %s7.116 = load [2 x i8], [2 x i8]* @str.7.116
  %sp7.116 = bitcast i8* %next6.116 to [2 x i8]*
  store [2 x i8] %s7.116, [2 x i8]* %sp7.116
  %sp1.1.73 = bitcast [9 x i8]* %spi116 to i72*
;-------------------------------
  %i1.73 = load i72, i72* %sp1.1.73

  %xp73 = xor i72 %i0.73, %i1.73

  %fi.73 = alloca i72
  store i72 %xp73, i72* %fi.73

  %final.ptr.73 = bitcast i72* %fi.73 to [9 x i8]*
  %spi73 = load [9 x i8], [9 x i8]* %final.ptr.73
  store [9 x i8] %spi73, [9 x i8]* %cipher.ptr.32
;-------------------------------
  %cipher.32 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.32, i32 0, i32 0
  %plain.ptr.32 = tail call i8* @base64_decode(i8* %cipher.32)
  %spi32 = bitcast i8* %plain.ptr.32 to [4 x i8]*
  %spi.bis.342 = ptrtoint[4 x i8]* %spi32 to i32
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
  %cipher.ptr.31 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\59\56\73\6c\5a\46\30\67\50\53\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.31
;-------------------------------
; Replace: %sp0.1.74 = bitcast [17 x i8]* @str.74 to i136*
  %spi117 = alloca [17 x i8]
  
  %s0.117 = load [2 x i8], [2 x i8]* @str.0.117
  %sp0.117 = bitcast [17 x i8]* %spi117 to [2 x i8]*
  store [2 x i8] %s0.117, [2 x i8]* %sp0.117
  %next0.117 = getelementptr [17 x i8], [17 x i8]* %spi117, i32 0, i32 2
  
  %s1.117 = load [2 x i8], [2 x i8]* @str.1.117
  %sp1.117 = bitcast i8* %next0.117 to [2 x i8]*
  store [2 x i8] %s1.117, [2 x i8]* %sp1.117
  %next1.117 = getelementptr [17 x i8], [17 x i8]* %spi117, i32 0, i32 4
  
  %s2.117 = load [2 x i8], [2 x i8]* @str.2.117
  %sp2.117 = bitcast i8* %next1.117 to [2 x i8]*
  store [2 x i8] %s2.117, [2 x i8]* %sp2.117
  %next2.117 = getelementptr [17 x i8], [17 x i8]* %spi117, i32 0, i32 6
  
  %s3.117 = load [2 x i8], [2 x i8]* @str.3.117
  %sp3.117 = bitcast i8* %next2.117 to [2 x i8]*
  store [2 x i8] %s3.117, [2 x i8]* %sp3.117
  %next3.117 = getelementptr [17 x i8], [17 x i8]* %spi117, i32 0, i32 8
  
  %s4.117 = load [2 x i8], [2 x i8]* @str.4.117
  %sp4.117 = bitcast i8* %next3.117 to [2 x i8]*
  store [2 x i8] %s4.117, [2 x i8]* %sp4.117
  %next4.117 = getelementptr [17 x i8], [17 x i8]* %spi117, i32 0, i32 10
  
  %s5.117 = load [2 x i8], [2 x i8]* @str.5.117
  %sp5.117 = bitcast i8* %next4.117 to [2 x i8]*
  store [2 x i8] %s5.117, [2 x i8]* %sp5.117
  %next5.117 = getelementptr [17 x i8], [17 x i8]* %spi117, i32 0, i32 12
  
  %s6.117 = load [2 x i8], [2 x i8]* @str.6.117
  %sp6.117 = bitcast i8* %next5.117 to [2 x i8]*
  store [2 x i8] %s6.117, [2 x i8]* %sp6.117
  %next6.117 = getelementptr [17 x i8], [17 x i8]* %spi117, i32 0, i32 14
  
  %s7.117 = load [3 x i8], [3 x i8]* @str.7.117
  %sp7.117 = bitcast i8* %next6.117 to [3 x i8]*
  store [3 x i8] %s7.117, [3 x i8]* %sp7.117
  %sp0.1.74 = bitcast [17 x i8]* %spi117 to i136*
;-------------------------------
  %i0.74 = load i136, i136* %sp0.1.74

;-------------------------------
; Replace: %sp1.1.74 = bitcast [17 x i8]* @key.74 to i136*
  %spi118 = alloca [17 x i8]
  
  %s0.118 = load [2 x i8], [2 x i8]* @str.0.118
  %sp0.118 = bitcast [17 x i8]* %spi118 to [2 x i8]*
  store [2 x i8] %s0.118, [2 x i8]* %sp0.118
  %next0.118 = getelementptr [17 x i8], [17 x i8]* %spi118, i32 0, i32 2
  
  %s1.118 = load [2 x i8], [2 x i8]* @str.1.118
  %sp1.118 = bitcast i8* %next0.118 to [2 x i8]*
  store [2 x i8] %s1.118, [2 x i8]* %sp1.118
  %next1.118 = getelementptr [17 x i8], [17 x i8]* %spi118, i32 0, i32 4
  
  %s2.118 = load [2 x i8], [2 x i8]* @str.2.118
  %sp2.118 = bitcast i8* %next1.118 to [2 x i8]*
  store [2 x i8] %s2.118, [2 x i8]* %sp2.118
  %next2.118 = getelementptr [17 x i8], [17 x i8]* %spi118, i32 0, i32 6
  
  %s3.118 = load [2 x i8], [2 x i8]* @str.3.118
  %sp3.118 = bitcast i8* %next2.118 to [2 x i8]*
  store [2 x i8] %s3.118, [2 x i8]* %sp3.118
  %next3.118 = getelementptr [17 x i8], [17 x i8]* %spi118, i32 0, i32 8
  
  %s4.118 = load [2 x i8], [2 x i8]* @str.4.118
  %sp4.118 = bitcast i8* %next3.118 to [2 x i8]*
  store [2 x i8] %s4.118, [2 x i8]* %sp4.118
  %next4.118 = getelementptr [17 x i8], [17 x i8]* %spi118, i32 0, i32 10
  
  %s5.118 = load [2 x i8], [2 x i8]* @str.5.118
  %sp5.118 = bitcast i8* %next4.118 to [2 x i8]*
  store [2 x i8] %s5.118, [2 x i8]* %sp5.118
  %next5.118 = getelementptr [17 x i8], [17 x i8]* %spi118, i32 0, i32 12
  
  %s6.118 = load [2 x i8], [2 x i8]* @str.6.118
  %sp6.118 = bitcast i8* %next5.118 to [2 x i8]*
  store [2 x i8] %s6.118, [2 x i8]* %sp6.118
  %next6.118 = getelementptr [17 x i8], [17 x i8]* %spi118, i32 0, i32 14
  
  %s7.118 = load [3 x i8], [3 x i8]* @str.7.118
  %sp7.118 = bitcast i8* %next6.118 to [3 x i8]*
  store [3 x i8] %s7.118, [3 x i8]* %sp7.118
  %sp1.1.74 = bitcast [17 x i8]* %spi118 to i136*
;-------------------------------
  %i1.74 = load i136, i136* %sp1.1.74

  %xp74 = xor i136 %i0.74, %i1.74

  %fi.74 = alloca i136
  store i136 %xp74, i136* %fi.74

  %final.ptr.74 = bitcast i136* %fi.74 to [17 x i8]*
  %spi74 = load [17 x i8], [17 x i8]* %final.ptr.74
  store [17 x i8] %spi74, [17 x i8]* %cipher.ptr.31
;-------------------------------
  %cipher.31 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.31, i32 0, i32 0
  %plain.ptr.31 = tail call i8* @base64_decode(i8* %cipher.31)
  %spi31 = bitcast i8* %plain.ptr.31 to [12 x i8]*
  %spi.bis.341 = ptrtoint[12 x i8]* %spi31 to i32
;-------------------------------
  store i32 %spi.bis.341, i32* %23, align 16
  store i32 134517348, i32* %24, align 4
  %66 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.0.ph.i, i32 inreg noundef %r_edx.07, i32 noundef %tmp2_v19.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !240
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
define internal fastcc void @reverse_a_string180(i32 %arg_esp) unnamed_addr  norecurse  !retregs !226 {
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
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i13.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i17.i = add i32 %tmp0_v.i3.i, -20
  %9 = inttoptr i32 %tmp2_v2.i17.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i3.i, -48
  %10 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 543518287, i32* %10, align 16
  %tmp2_v4.i19.i = add i32 %tmp0_v.i3.i, -44
  %11 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 1818324339, i32* %11, align 4
  %tmp2_v5.i20.i = add i32 %tmp0_v.i3.i, -40
  %12 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 1953701996, i32* %12, align 8
  %tmp2_v6.i21.i = add i32 %tmp0_v.i3.i, -36
  %13 = inttoptr i32 %tmp2_v6.i21.i to i32*
  store i32 1713401957, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i3.i, -32
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 673215087, i32* %14, align 16
  %tmp2_v8.i22.i = add i32 %tmp0_v.i3.i, -28
  %15 = inttoptr i32 %tmp2_v8.i22.i to i32*
  store i32 1830824289, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i3.i, -24
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 3042913, i32* %16, align 8
  %tmp2_v12.i.i = add i32 %tmp0_v.i3.i, -64
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i18.i, i32* %17, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i3.i, -68
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517311, i32* %18, align 4
  %tmp2_v.i.i.i = add i32 %tmp0_v.i3.i, -72
  %19 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %19, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i3.i, -76
  %20 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %20, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i3.i, -100
  %21 = inttoptr i32 %tmp2_v2.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.178 = ptrtoint[4 x i8]* @str.bis.178 to i32
  %cipher.ptr.33 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\58\38\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.33
;-------------------------------
; Replace: %sp0.1.75 = bitcast [9 x i8]* @str.75 to i72*
  %spi119 = alloca [9 x i8]
  
  %s0.119 = load [1 x i8], [1 x i8]* @str.0.119
  %sp0.119 = bitcast [9 x i8]* %spi119 to [1 x i8]*
  store [1 x i8] %s0.119, [1 x i8]* %sp0.119
  %next0.119 = getelementptr [9 x i8], [9 x i8]* %spi119, i32 0, i32 1
  
  %s1.119 = load [1 x i8], [1 x i8]* @str.1.119
  %sp1.119 = bitcast i8* %next0.119 to [1 x i8]*
  store [1 x i8] %s1.119, [1 x i8]* %sp1.119
  %next1.119 = getelementptr [9 x i8], [9 x i8]* %spi119, i32 0, i32 2
  
  %s2.119 = load [1 x i8], [1 x i8]* @str.2.119
  %sp2.119 = bitcast i8* %next1.119 to [1 x i8]*
  store [1 x i8] %s2.119, [1 x i8]* %sp2.119
  %next2.119 = getelementptr [9 x i8], [9 x i8]* %spi119, i32 0, i32 3
  
  %s3.119 = load [1 x i8], [1 x i8]* @str.3.119
  %sp3.119 = bitcast i8* %next2.119 to [1 x i8]*
  store [1 x i8] %s3.119, [1 x i8]* %sp3.119
  %next3.119 = getelementptr [9 x i8], [9 x i8]* %spi119, i32 0, i32 4
  
  %s4.119 = load [1 x i8], [1 x i8]* @str.4.119
  %sp4.119 = bitcast i8* %next3.119 to [1 x i8]*
  store [1 x i8] %s4.119, [1 x i8]* %sp4.119
  %next4.119 = getelementptr [9 x i8], [9 x i8]* %spi119, i32 0, i32 5
  
  %s5.119 = load [1 x i8], [1 x i8]* @str.5.119
  %sp5.119 = bitcast i8* %next4.119 to [1 x i8]*
  store [1 x i8] %s5.119, [1 x i8]* %sp5.119
  %next5.119 = getelementptr [9 x i8], [9 x i8]* %spi119, i32 0, i32 6
  
  %s6.119 = load [1 x i8], [1 x i8]* @str.6.119
  %sp6.119 = bitcast i8* %next5.119 to [1 x i8]*
  store [1 x i8] %s6.119, [1 x i8]* %sp6.119
  %next6.119 = getelementptr [9 x i8], [9 x i8]* %spi119, i32 0, i32 7
  
  %s7.119 = load [2 x i8], [2 x i8]* @str.7.119
  %sp7.119 = bitcast i8* %next6.119 to [2 x i8]*
  store [2 x i8] %s7.119, [2 x i8]* %sp7.119
  %sp0.1.75 = bitcast [9 x i8]* %spi119 to i72*
;-------------------------------
  %i0.75 = load i72, i72* %sp0.1.75

;-------------------------------
; Replace: %sp1.1.75 = bitcast [9 x i8]* @key.75 to i72*
  %spi120 = alloca [9 x i8]
  
  %s0.120 = load [1 x i8], [1 x i8]* @str.0.120
  %sp0.120 = bitcast [9 x i8]* %spi120 to [1 x i8]*
  store [1 x i8] %s0.120, [1 x i8]* %sp0.120
  %next0.120 = getelementptr [9 x i8], [9 x i8]* %spi120, i32 0, i32 1
  
  %s1.120 = load [1 x i8], [1 x i8]* @str.1.120
  %sp1.120 = bitcast i8* %next0.120 to [1 x i8]*
  store [1 x i8] %s1.120, [1 x i8]* %sp1.120
  %next1.120 = getelementptr [9 x i8], [9 x i8]* %spi120, i32 0, i32 2
  
  %s2.120 = load [1 x i8], [1 x i8]* @str.2.120
  %sp2.120 = bitcast i8* %next1.120 to [1 x i8]*
  store [1 x i8] %s2.120, [1 x i8]* %sp2.120
  %next2.120 = getelementptr [9 x i8], [9 x i8]* %spi120, i32 0, i32 3
  
  %s3.120 = load [1 x i8], [1 x i8]* @str.3.120
  %sp3.120 = bitcast i8* %next2.120 to [1 x i8]*
  store [1 x i8] %s3.120, [1 x i8]* %sp3.120
  %next3.120 = getelementptr [9 x i8], [9 x i8]* %spi120, i32 0, i32 4
  
  %s4.120 = load [1 x i8], [1 x i8]* @str.4.120
  %sp4.120 = bitcast i8* %next3.120 to [1 x i8]*
  store [1 x i8] %s4.120, [1 x i8]* %sp4.120
  %next4.120 = getelementptr [9 x i8], [9 x i8]* %spi120, i32 0, i32 5
  
  %s5.120 = load [1 x i8], [1 x i8]* @str.5.120
  %sp5.120 = bitcast i8* %next4.120 to [1 x i8]*
  store [1 x i8] %s5.120, [1 x i8]* %sp5.120
  %next5.120 = getelementptr [9 x i8], [9 x i8]* %spi120, i32 0, i32 6
  
  %s6.120 = load [1 x i8], [1 x i8]* @str.6.120
  %sp6.120 = bitcast i8* %next5.120 to [1 x i8]*
  store [1 x i8] %s6.120, [1 x i8]* %sp6.120
  %next6.120 = getelementptr [9 x i8], [9 x i8]* %spi120, i32 0, i32 7
  
  %s7.120 = load [2 x i8], [2 x i8]* @str.7.120
  %sp7.120 = bitcast i8* %next6.120 to [2 x i8]*
  store [2 x i8] %s7.120, [2 x i8]* %sp7.120
  %sp1.1.75 = bitcast [9 x i8]* %spi120 to i72*
;-------------------------------
  %i1.75 = load i72, i72* %sp1.1.75

  %xp75 = xor i72 %i0.75, %i1.75

  %fi.75 = alloca i72
  store i72 %xp75, i72* %fi.75

  %final.ptr.75 = bitcast i72* %fi.75 to [9 x i8]*
  %spi75 = load [9 x i8], [9 x i8]* %final.ptr.75
  store [9 x i8] %spi75, [9 x i8]* %cipher.ptr.33
;-------------------------------
  %cipher.33 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.33, i32 0, i32 0
  %plain.ptr.33 = tail call i8* @base64_decode(i8* %cipher.33)
  %spi33 = bitcast i8* %plain.ptr.33 to [4 x i8]*
  %spi.bis.178 = ptrtoint[4 x i8]* %spi33 to i32
;-------------------------------
  store i32 %spi.bis.178, i32* %21, align 4
  %22 = load i32, i32* %17, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i3.i, -112
  %23 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %22, i32* %23, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i3.i, -116
  %24 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517395, i32* %24, align 4
  %arg.i.i.i = load i32, i32* %23, align 16
  %25 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i8.i.i = add i32 %tmp0_v.i3.i, -88
  %26 = inttoptr i32 %tmp2_v.i8.i.i to i32*
  store i32 %25, i32* %26, align 8
  %tmp0_v3.i11.i.i = lshr i32 %25, 31
  %tmp0_v4.i12.i.i = add i32 %tmp0_v3.i11.i.i, %25
  %tmp0_v5.i.i.i = ashr i32 %tmp0_v4.i12.i.i, 1
  %tmp2_v6.i13.i.i = add i32 %tmp0_v.i3.i, -84
  %27 = inttoptr i32 %tmp2_v6.i13.i.i to i32*
  store i32 %tmp0_v5.i.i.i, i32* %27, align 4
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i3.i, -92
  %28 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %27, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %BB_80492B1.i.lr.ph.i, label %Func_reverse.exit

BB_80492B1.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i3.i, -93
  %31 = inttoptr i32 %tmp2_v5.i.i.i to i8*
  br label %BB_80492B1.i.i

BB_80492B1.i.i:                                   ; preds = %BB_80492B1.i.i, %BB_80492B1.i.lr.ph.i
  %storemerge14.i = phi i32 [ 0, %BB_80492B1.i.lr.ph.i ], [ %tmp0_v33.i.i.i, %BB_80492B1.i.i ]
  %32 = load i32, i32* %17, align 16
  %tmp0_v3.i.i.i = add i32 %32, %storemerge14.i
  %33 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %31, align 1
  %35 = load i32, i32* %26, align 8
  %36 = load i32, i32* %28, align 4
  %37 = xor i32 %36, -1
  %tmp2_v10.i.i.i = add i32 %35, %37
  %38 = load i32, i32* %17, align 16
  %tmp0_v13.i.i.i = add i32 %tmp2_v10.i.i.i, %38
  %tmp0_v18.i.i.i = add i32 %38, %36
  %39 = inttoptr i32 %tmp0_v13.i.i.i to i8*
  %40 = load i8, i8* %39, align 1
  %41 = inttoptr i32 %tmp0_v18.i.i.i to i8*
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %26, align 8
  %43 = load i32, i32* %28, align 4
  %44 = xor i32 %43, -1
  %tmp2_v25.i.i.i = add i32 %42, %44
  %45 = load i32, i32* %17, align 16
  %tmp0_v28.i.i.i = add i32 %tmp2_v25.i.i.i, %45
  %46 = load i8, i8* %31, align 1
  %47 = inttoptr i32 %tmp0_v28.i.i.i to i8*
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* %28, align 4
  %tmp0_v33.i.i.i = add i32 %48, 1
  store i32 %tmp0_v33.i.i.i, i32* %28, align 4
  %49 = load i32, i32* %27, align 4
  %50 = icmp slt i32 %tmp0_v33.i.i.i, %49
  br i1 %50, label %BB_80492B1.i.i, label %Func_reverse.exit

Func_reverse.exit:                                ; preds = %BB_80492B1.i.i, %.exit
  %51 = load i32, i32* %19, align 8
  %tmp2_v.i.i = add i32 %51, -40
  store i32 %tmp2_v.i.i, i32* %17, align 16
  store i32 134517326, i32* %18, align 4
  %arg.i.i = load i32, i32* %17, align 16
  %52 = inttoptr i32 %arg.i.i to i8*
  %53 = tail call i32 @puts(i8* nonnull dereferenceable(1) %52)
  ret void
}
define internal fastcc void @print_first_repeat837(i32 %arg_esp) unnamed_addr  norecurse  !retregs !215 {
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
  %tmp2_v7.i.i = add i32 %tmp0_v.i2.i, -36
  %5 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517264, i32* %5, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %6 = inttoptr i32 %arg_esp to i32*
  %7 = load i32, i32* %6, align 4
  %tmp2_v2.i8.i = add i32 %tmp0_v.i2.i, -20
  %8 = inttoptr i32 %tmp2_v2.i8.i to i32*
  store i32 %7, i32* %8, align 4
  %tmp2_v3.i9.i = add i32 %tmp0_v.i2.i, -31
  %9 = inttoptr i32 %tmp2_v3.i9.i to i32*
  store i32 1684234849, i32* %9, align 4
  %tmp2_v4.i10.i = add i32 %tmp0_v.i2.i, -27
  %10 = inttoptr i32 %tmp2_v4.i10.i to i32*
  store i32 1751606885, i32* %10, align 4
  %tmp2_v5.i11.i = add i32 %tmp0_v.i2.i, -23
  %11 = inttoptr i32 %tmp2_v5.i11.i to i16*
  store i16 27241, i16* %11, align 2
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -21
  %12 = inttoptr i32 %tmp2_v6.i.i to i8*
  store i8 0, i8* %12, align 1
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -48
  %13 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %tmp2_v3.i9.i, i32* %13, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i2.i, -52
  %14 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517316, i32* %14, align 4
  %tmp2_v.i31.i.i = add i32 %tmp0_v.i2.i, -56
  %15 = inttoptr i32 %tmp2_v.i31.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %15, align 8
  %tmp2_v1.i33.i.i = add i32 %tmp0_v.i2.i, -60
  %16 = inttoptr i32 %tmp2_v1.i33.i.i to i32*
  store i32 0, i32* %16, align 4
  %tmp2_v2.i36.i.i = add i32 %tmp0_v.i2.i, -84
  %17 = inttoptr i32 %tmp2_v2.i36.i.i to i32*
  store i32 134517365, i32* %17, align 4
  %18 = load i32, i32* %13, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i2.i, -96
  %19 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %18, i32* %19, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i2.i, -100
  %20 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517382, i32* %20, align 4
  %arg.i.i.i = load i32, i32* %19, align 16
  %21 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i22.i.i = add i32 %tmp0_v.i2.i, -68
  %22 = inttoptr i32 %tmp2_v.i22.i.i to i32*
  store i32 %21, i32* %22, align 4
  %tmp2_v1.i23.i.i = add i32 %tmp0_v.i2.i, -77
  %23 = inttoptr i32 %tmp2_v1.i23.i.i to i8*
  store i8 0, i8* %23, align 1
  %tmp2_v2.i24.i.i = add i32 %tmp0_v.i2.i, -76
  %24 = inttoptr i32 %tmp2_v2.i24.i.i to i32*
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %22, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %BB_8049299.i.lr.ph.i, label %Func_print_first_repeat.exit

BB_8049299.i.lr.ph.i:                             ; preds = %.exit
  %tmp2_v.i42.i.i = add i32 %tmp0_v.i2.i, -72
  %27 = inttoptr i32 %tmp2_v.i42.i.i to i32*
  br label %BB_80492CC.i.i

Func_80492D4.exit.i.i:                            ; preds = %BB_80492CC.i.i
  %28 = load i32, i32* %24, align 4
  %tmp0_v1.i13.i.i = add i32 %28, 1
  store i32 %tmp0_v1.i13.i.i, i32* %24, align 4
  %29 = load i32, i32* %22, align 4
  %30 = icmp slt i32 %tmp0_v1.i13.i.i, %29
  br i1 %30, label %BB_80492CC.i.i.backedge, label %Func_print_first_repeat.exit

BB_80492CC.i.i:                                   ; preds = %BB_80492CC.i.i.backedge, %BB_8049299.i.lr.ph.i
  %storemerge1.i = phi i32 [ 0, %BB_8049299.i.lr.ph.i ], [ %storemerge1.i.be, %BB_80492CC.i.i.backedge ]
  store i32 %storemerge1.i, i32* %27, align 8
  %31 = load i32, i32* %22, align 4
  %32 = icmp slt i32 %storemerge1.i, %31
  %tmp0_v1.i53.i.i = add nuw nsw i32 %storemerge1.i, 1
  br i1 %32, label %BB_80492CC.i.i.backedge, label %Func_80492D4.exit.i.i

BB_80492CC.i.i.backedge:                          ; preds = %BB_80492CC.i.i, %Func_80492D4.exit.i.i
  %storemerge1.i.be = phi i32 [ %tmp0_v1.i53.i.i, %BB_80492CC.i.i ], [ 0, %Func_80492D4.exit.i.i ]
  br label %BB_80492CC.i.i

Func_print_first_repeat.exit:                     ; preds = %Func_80492D4.exit.i.i, %.exit
;-------------------------------
; Replace: %spi.bis.835 = ptrtoint[29 x i8]* @str.bis.835 to i32
  %cipher.ptr.34 = alloca [41 x i8]
;-------------------------------
; Replace: store [41 x i8] c"\54\6d\38\67\63\6d\56\77\5a\57\46\30\61\57\35\6e\49\47\4e\6f\59\58\4a\68\59\33\52\6c\63\69\42\6d\62\33\56\75\5a\41\41\3d\00", [41 x i8]* %cipher.ptr.34
;-------------------------------
; Replace: %sp0.1.76 = bitcast [41 x i8]* @str.76 to i328*
  %spi121 = alloca [41 x i8]
  
  %s0.121 = load [5 x i8], [5 x i8]* @str.0.121
  %sp0.121 = bitcast [41 x i8]* %spi121 to [5 x i8]*
  store [5 x i8] %s0.121, [5 x i8]* %sp0.121
  %next0.121 = getelementptr [41 x i8], [41 x i8]* %spi121, i32 0, i32 5
  
  %s1.121 = load [5 x i8], [5 x i8]* @str.1.121
  %sp1.121 = bitcast i8* %next0.121 to [5 x i8]*
  store [5 x i8] %s1.121, [5 x i8]* %sp1.121
  %next1.121 = getelementptr [41 x i8], [41 x i8]* %spi121, i32 0, i32 10
  
  %s2.121 = load [5 x i8], [5 x i8]* @str.2.121
  %sp2.121 = bitcast i8* %next1.121 to [5 x i8]*
  store [5 x i8] %s2.121, [5 x i8]* %sp2.121
  %next2.121 = getelementptr [41 x i8], [41 x i8]* %spi121, i32 0, i32 15
  
  %s3.121 = load [5 x i8], [5 x i8]* @str.3.121
  %sp3.121 = bitcast i8* %next2.121 to [5 x i8]*
  store [5 x i8] %s3.121, [5 x i8]* %sp3.121
  %next3.121 = getelementptr [41 x i8], [41 x i8]* %spi121, i32 0, i32 20
  
  %s4.121 = load [5 x i8], [5 x i8]* @str.4.121
  %sp4.121 = bitcast i8* %next3.121 to [5 x i8]*
  store [5 x i8] %s4.121, [5 x i8]* %sp4.121
  %next4.121 = getelementptr [41 x i8], [41 x i8]* %spi121, i32 0, i32 25
  
  %s5.121 = load [5 x i8], [5 x i8]* @str.5.121
  %sp5.121 = bitcast i8* %next4.121 to [5 x i8]*
  store [5 x i8] %s5.121, [5 x i8]* %sp5.121
  %next5.121 = getelementptr [41 x i8], [41 x i8]* %spi121, i32 0, i32 30
  
  %s6.121 = load [5 x i8], [5 x i8]* @str.6.121
  %sp6.121 = bitcast i8* %next5.121 to [5 x i8]*
  store [5 x i8] %s6.121, [5 x i8]* %sp6.121
  %next6.121 = getelementptr [41 x i8], [41 x i8]* %spi121, i32 0, i32 35
  
  %s7.121 = load [6 x i8], [6 x i8]* @str.7.121
  %sp7.121 = bitcast i8* %next6.121 to [6 x i8]*
  store [6 x i8] %s7.121, [6 x i8]* %sp7.121
  %sp0.1.76 = bitcast [41 x i8]* %spi121 to i328*
;-------------------------------
  %i0.76 = load i328, i328* %sp0.1.76

;-------------------------------
; Replace: %sp1.1.76 = bitcast [41 x i8]* @key.76 to i328*
  %spi122 = alloca [41 x i8]
  
  %s0.122 = load [5 x i8], [5 x i8]* @str.0.122
  %sp0.122 = bitcast [41 x i8]* %spi122 to [5 x i8]*
  store [5 x i8] %s0.122, [5 x i8]* %sp0.122
  %next0.122 = getelementptr [41 x i8], [41 x i8]* %spi122, i32 0, i32 5
  
  %s1.122 = load [5 x i8], [5 x i8]* @str.1.122
  %sp1.122 = bitcast i8* %next0.122 to [5 x i8]*
  store [5 x i8] %s1.122, [5 x i8]* %sp1.122
  %next1.122 = getelementptr [41 x i8], [41 x i8]* %spi122, i32 0, i32 10
  
  %s2.122 = load [5 x i8], [5 x i8]* @str.2.122
  %sp2.122 = bitcast i8* %next1.122 to [5 x i8]*
  store [5 x i8] %s2.122, [5 x i8]* %sp2.122
  %next2.122 = getelementptr [41 x i8], [41 x i8]* %spi122, i32 0, i32 15
  
  %s3.122 = load [5 x i8], [5 x i8]* @str.3.122
  %sp3.122 = bitcast i8* %next2.122 to [5 x i8]*
  store [5 x i8] %s3.122, [5 x i8]* %sp3.122
  %next3.122 = getelementptr [41 x i8], [41 x i8]* %spi122, i32 0, i32 20
  
  %s4.122 = load [5 x i8], [5 x i8]* @str.4.122
  %sp4.122 = bitcast i8* %next3.122 to [5 x i8]*
  store [5 x i8] %s4.122, [5 x i8]* %sp4.122
  %next4.122 = getelementptr [41 x i8], [41 x i8]* %spi122, i32 0, i32 25
  
  %s5.122 = load [5 x i8], [5 x i8]* @str.5.122
  %sp5.122 = bitcast i8* %next4.122 to [5 x i8]*
  store [5 x i8] %s5.122, [5 x i8]* %sp5.122
  %next5.122 = getelementptr [41 x i8], [41 x i8]* %spi122, i32 0, i32 30
  
  %s6.122 = load [5 x i8], [5 x i8]* @str.6.122
  %sp6.122 = bitcast i8* %next5.122 to [5 x i8]*
  store [5 x i8] %s6.122, [5 x i8]* %sp6.122
  %next6.122 = getelementptr [41 x i8], [41 x i8]* %spi122, i32 0, i32 35
  
  %s7.122 = load [6 x i8], [6 x i8]* @str.7.122
  %sp7.122 = bitcast i8* %next6.122 to [6 x i8]*
  store [6 x i8] %s7.122, [6 x i8]* %sp7.122
  %sp1.1.76 = bitcast [41 x i8]* %spi122 to i328*
;-------------------------------
  %i1.76 = load i328, i328* %sp1.1.76

  %xp76 = xor i328 %i0.76, %i1.76

  %fi.76 = alloca i328
  store i328 %xp76, i328* %fi.76

  %final.ptr.76 = bitcast i328* %fi.76 to [41 x i8]*
  %spi76 = load [41 x i8], [41 x i8]* %final.ptr.76
  store [41 x i8] %spi76, [41 x i8]* %cipher.ptr.34
;-------------------------------
  %cipher.34 = getelementptr inbounds [41 x i8], [41 x i8]* %cipher.ptr.34, i32 0, i32 0
  %plain.ptr.34 = tail call i8* @base64_decode(i8* %cipher.34)
  %spi34 = bitcast i8* %plain.ptr.34 to [29 x i8]*
  %spi.bis.835 = ptrtoint[29 x i8]* %spi34 to i32
;-------------------------------
  store i32 %spi.bis.835, i32* %19, align 16
  store i32 134517539, i32* %20, align 4
  %arg.i.i6.i = load i32, i32* %19, align 16
  %33 = inttoptr i32 %arg.i.i6.i to i8*
  %34 = tail call i32 @puts(i8* nonnull dereferenceable(1) %33)
  ret void
}
define internal fastcc void @string_length_recursive442(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !202 {
.exit:
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i17.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i18.i = add i32 %tmp0_v.i17.i, -8
  %3 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i20.i = add i32 %tmp0_v.i17.i, -12
  %4 = inttoptr i32 %tmp2_v5.i20.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i17.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i16.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i17.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i24.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i28.i = add i32 %tmp0_v.i17.i, -20
  %9 = inttoptr i32 %tmp2_v2.i28.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i29.i = add i32 %tmp0_v.i17.i, -26
  %10 = inttoptr i32 %tmp2_v3.i29.i to i32*
  store i32 1684234849, i32* %10, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i17.i, -22
  %11 = inttoptr i32 %tmp2_v4.i30.i to i16*
  store i16 101, i16* %11, align 2
  %tmp2_v7.i34.i = add i32 %tmp0_v.i17.i, -48
  %12 = inttoptr i32 %tmp2_v7.i34.i to i32*
  store i32 %tmp2_v3.i29.i, i32* %12, align 16
  %tmp2_v8.i35.i = add i32 %tmp0_v.i17.i, -52
  %13 = inttoptr i32 %tmp2_v8.i35.i to i32*
  store i32 134517243, i32* %13, align 4
  %14 = tail call fastcc { i32, i32, i32 } @Func_string_length(i32 %tmp2_v8.i35.i, i32 %tmp2_v4.i18.i)
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = extractvalue { i32, i32, i32 } %14, 1
  %17 = extractvalue { i32, i32, i32 } %14, 2
  %tmp2_v.i4.i = add i32 %17, -24
  %18 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %16, i32* %18, align 4
  %tmp2_v4.i.i = add i32 %15, 4
  %19 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %16, i32* %19, align 4
  %20 = inttoptr i32 %15 to i32*
;-------------------------------
; Replace: %spi.bis.440 = ptrtoint[12 x i8]* @str.bis.440 to i32
  %cipher.ptr.35 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\62\47\56\75\5a\33\52\6f\4f\69\41\6c\5a\41\6f\41\00", [17 x i8]* %cipher.ptr.35
;-------------------------------
; Replace: %sp0.1.77 = bitcast [17 x i8]* @str.77 to i136*
  %spi123 = alloca [17 x i8]
  
  %s0.123 = load [2 x i8], [2 x i8]* @str.0.123
  %sp0.123 = bitcast [17 x i8]* %spi123 to [2 x i8]*
  store [2 x i8] %s0.123, [2 x i8]* %sp0.123
  %next0.123 = getelementptr [17 x i8], [17 x i8]* %spi123, i32 0, i32 2
  
  %s1.123 = load [2 x i8], [2 x i8]* @str.1.123
  %sp1.123 = bitcast i8* %next0.123 to [2 x i8]*
  store [2 x i8] %s1.123, [2 x i8]* %sp1.123
  %next1.123 = getelementptr [17 x i8], [17 x i8]* %spi123, i32 0, i32 4
  
  %s2.123 = load [2 x i8], [2 x i8]* @str.2.123
  %sp2.123 = bitcast i8* %next1.123 to [2 x i8]*
  store [2 x i8] %s2.123, [2 x i8]* %sp2.123
  %next2.123 = getelementptr [17 x i8], [17 x i8]* %spi123, i32 0, i32 6
  
  %s3.123 = load [2 x i8], [2 x i8]* @str.3.123
  %sp3.123 = bitcast i8* %next2.123 to [2 x i8]*
  store [2 x i8] %s3.123, [2 x i8]* %sp3.123
  %next3.123 = getelementptr [17 x i8], [17 x i8]* %spi123, i32 0, i32 8
  
  %s4.123 = load [2 x i8], [2 x i8]* @str.4.123
  %sp4.123 = bitcast i8* %next3.123 to [2 x i8]*
  store [2 x i8] %s4.123, [2 x i8]* %sp4.123
  %next4.123 = getelementptr [17 x i8], [17 x i8]* %spi123, i32 0, i32 10
  
  %s5.123 = load [2 x i8], [2 x i8]* @str.5.123
  %sp5.123 = bitcast i8* %next4.123 to [2 x i8]*
  store [2 x i8] %s5.123, [2 x i8]* %sp5.123
  %next5.123 = getelementptr [17 x i8], [17 x i8]* %spi123, i32 0, i32 12
  
  %s6.123 = load [2 x i8], [2 x i8]* @str.6.123
  %sp6.123 = bitcast i8* %next5.123 to [2 x i8]*
  store [2 x i8] %s6.123, [2 x i8]* %sp6.123
  %next6.123 = getelementptr [17 x i8], [17 x i8]* %spi123, i32 0, i32 14
  
  %s7.123 = load [3 x i8], [3 x i8]* @str.7.123
  %sp7.123 = bitcast i8* %next6.123 to [3 x i8]*
  store [3 x i8] %s7.123, [3 x i8]* %sp7.123
  %sp0.1.77 = bitcast [17 x i8]* %spi123 to i136*
;-------------------------------
  %i0.77 = load i136, i136* %sp0.1.77

;-------------------------------
; Replace: %sp1.1.77 = bitcast [17 x i8]* @key.77 to i136*
  %spi124 = alloca [17 x i8]
  
  %s0.124 = load [2 x i8], [2 x i8]* @str.0.124
  %sp0.124 = bitcast [17 x i8]* %spi124 to [2 x i8]*
  store [2 x i8] %s0.124, [2 x i8]* %sp0.124
  %next0.124 = getelementptr [17 x i8], [17 x i8]* %spi124, i32 0, i32 2
  
  %s1.124 = load [2 x i8], [2 x i8]* @str.1.124
  %sp1.124 = bitcast i8* %next0.124 to [2 x i8]*
  store [2 x i8] %s1.124, [2 x i8]* %sp1.124
  %next1.124 = getelementptr [17 x i8], [17 x i8]* %spi124, i32 0, i32 4
  
  %s2.124 = load [2 x i8], [2 x i8]* @str.2.124
  %sp2.124 = bitcast i8* %next1.124 to [2 x i8]*
  store [2 x i8] %s2.124, [2 x i8]* %sp2.124
  %next2.124 = getelementptr [17 x i8], [17 x i8]* %spi124, i32 0, i32 6
  
  %s3.124 = load [2 x i8], [2 x i8]* @str.3.124
  %sp3.124 = bitcast i8* %next2.124 to [2 x i8]*
  store [2 x i8] %s3.124, [2 x i8]* %sp3.124
  %next3.124 = getelementptr [17 x i8], [17 x i8]* %spi124, i32 0, i32 8
  
  %s4.124 = load [2 x i8], [2 x i8]* @str.4.124
  %sp4.124 = bitcast i8* %next3.124 to [2 x i8]*
  store [2 x i8] %s4.124, [2 x i8]* %sp4.124
  %next4.124 = getelementptr [17 x i8], [17 x i8]* %spi124, i32 0, i32 10
  
  %s5.124 = load [2 x i8], [2 x i8]* @str.5.124
  %sp5.124 = bitcast i8* %next4.124 to [2 x i8]*
  store [2 x i8] %s5.124, [2 x i8]* %sp5.124
  %next5.124 = getelementptr [17 x i8], [17 x i8]* %spi124, i32 0, i32 12
  
  %s6.124 = load [2 x i8], [2 x i8]* @str.6.124
  %sp6.124 = bitcast i8* %next5.124 to [2 x i8]*
  store [2 x i8] %s6.124, [2 x i8]* %sp6.124
  %next6.124 = getelementptr [17 x i8], [17 x i8]* %spi124, i32 0, i32 14
  
  %s7.124 = load [3 x i8], [3 x i8]* @str.7.124
  %sp7.124 = bitcast i8* %next6.124 to [3 x i8]*
  store [3 x i8] %s7.124, [3 x i8]* %sp7.124
  %sp1.1.77 = bitcast [17 x i8]* %spi124 to i136*
;-------------------------------
  %i1.77 = load i136, i136* %sp1.1.77

  %xp77 = xor i136 %i0.77, %i1.77

  %fi.77 = alloca i136
  store i136 %xp77, i136* %fi.77

  %final.ptr.77 = bitcast i136* %fi.77 to [17 x i8]*
  %spi77 = load [17 x i8], [17 x i8]* %final.ptr.77
  store [17 x i8] %spi77, [17 x i8]* %cipher.ptr.35
;-------------------------------
  %cipher.35 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.35, i32 0, i32 0
  %plain.ptr.35 = tail call i8* @base64_decode(i8* %cipher.35)
  %spi35 = bitcast i8* %plain.ptr.35 to [12 x i8]*
  %spi.bis.440 = ptrtoint[12 x i8]* %spi35 to i32
;-------------------------------
  store i32 %spi.bis.440, i32* %20, align 4
  %tmp2_v7.i.i = add i32 %15, -4
  %21 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517267, i32* %21, align 4
  %22 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i16.i, i32 inreg noundef 0, i32 noundef %15, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !203
  ret void
}
define internal fastcc { i32, i32, i32 } @Func_string_length(i32 %arg_esp, i32 %arg_ebp) unnamed_addr  nofree nosync nounwind  !retregs !204 {
Func_8049245.exit.i:
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %0 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %0, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -16
  %1 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 134517317, i32* %1, align 4
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %2 = inttoptr i32 %tmp2_v.i16.i to i32*
  %3 = load i32, i32* %2, align 4
  %4 = inttoptr i32 %3 to i8*
  %5 = load i8, i8* %4, align 1
  %.not.i.i = icmp eq i8 %5, 0
  br i1 %.not.i.i, label %.exit, label %BB_804925B.i

BB_804925B.i:                                     ; preds = %Func_8049245.exit.i
  %tmp0_v1.i6.i = add i32 %3, 1
  %tmp2_v3.i.i = add i32 %arg_esp, -28
  %6 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %tmp0_v1.i6.i, i32* %6, align 4
  %tmp2_v4.i.i = add i32 %arg_esp, -32
  %7 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 134517354, i32* %7, align 4
  %8 = tail call fastcc { i32, i32, i32 } @Func_string_length(i32 %tmp2_v4.i.i, i32 %tmp2_v.i.i)
  %9 = extractvalue { i32, i32, i32 } %8, 1
  %10 = extractvalue { i32, i32, i32 } %8, 2
  %tmp0_v.i1.i = add i32 %9, 1
  %.pre = inttoptr i32 %10 to i32*
  br label %.exit

.exit:                                            ; preds = %BB_804925B.i, %Func_8049245.exit.i
  %.pre-phi = phi i32* [ %0, %Func_8049245.exit.i ], [ %.pre, %BB_804925B.i ]
  %r_ebp.0 = phi i32 [ %tmp2_v.i.i, %Func_8049245.exit.i ], [ %10, %BB_804925B.i ]
  %r_eax.0 = phi i32 [ 0, %Func_8049245.exit.i ], [ %tmp0_v.i1.i, %BB_804925B.i ]
  %11 = load i32, i32* %.pre-phi, align 4
  %tmp4_v2.i.i = add i32 %r_ebp.0, 8
  %mrv = insertvalue { i32, i32, i32 } undef, i32 %tmp4_v2.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32 } %mrv, i32 %r_eax.0, 1
  %mrv2 = insertvalue { i32, i32, i32 } %mrv1, i32 %11, 2
  ret { i32, i32, i32 } %mrv2
}
define internal fastcc void @smallest_word112(i32 %arg_esp) unnamed_addr  norecurse  !retregs !188 {
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
  %tmp4_v.i16.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i20.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i20.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i21.i = add i32 %tmp0_v.i.i, -46
  %10 = inttoptr i32 %tmp2_v3.i21.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i22.i = add i32 %tmp0_v.i.i, -42
  %11 = inttoptr i32 %tmp2_v4.i22.i to i32*
  store i32 539779360, i32* %11, align 4
  %tmp2_v5.i23.i = add i32 %tmp0_v.i.i, -38
  %12 = inttoptr i32 %tmp2_v5.i23.i to i32*
  store i32 543516788, i32* %12, align 4
  %tmp2_v6.i24.i = add i32 %tmp0_v.i.i, -34
  %13 = inttoptr i32 %tmp2_v6.i24.i to i32*
  store i32 779706743, i32* %13, align 4
  %tmp2_v7.i25.i = add i32 %tmp0_v.i.i, -30
  %14 = inttoptr i32 %tmp2_v7.i25.i to i32*
  store i32 1634156832, i32* %14, align 4
  %tmp2_v8.i26.i = add i32 %tmp0_v.i.i, -26
  %15 = inttoptr i32 %tmp2_v8.i26.i to i32*
  store i32 774794857, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -22
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 46, i16* %16, align 2
  %tmp2_v12.i.i = add i32 %tmp0_v.i.i, -80
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i21.i, i32* %17, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -84
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517342, i32* %18, align 4
  %tmp2_v.i18.i.i = add i32 %tmp0_v.i.i, -88
  %19 = inttoptr i32 %tmp2_v.i18.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %19, align 8
  %tmp2_v1.i20.i.i = add i32 %tmp0_v.i.i, -92
  %20 = inttoptr i32 %tmp2_v1.i20.i.i to i32*
  store i32 134529024, i32* %20, align 4
  %tmp2_v2.i22.i.i = add i32 %tmp0_v.i.i, -148
  %21 = inttoptr i32 %tmp2_v2.i22.i.i to i32*
  store i32 134517417, i32* %21, align 4
  %22 = load i32, i32* %17, align 16
  %tmp2_v2.i80.i.i = add i32 %tmp0_v.i.i, -132
  %23 = inttoptr i32 %tmp2_v2.i80.i.i to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %tmp2_v5.i84.i.i = add i32 %tmp0_v.i.i, -100
  %25 = inttoptr i32 %tmp2_v5.i84.i.i to i32*
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %23, align 4
  %tmp2_v9.i.i.i = add i32 %tmp0_v.i.i, -160
  %27 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 %26, i32* %27, align 16
  %tmp2_v10.i.i.i = add i32 %tmp0_v.i.i, -164
  %28 = inttoptr i32 %tmp2_v10.i.i.i to i32*
  store i32 134517451, i32* %28, align 4
  %arg.i.i.i = load i32, i32* %27, align 16
  %29 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i.i.i = add i32 %tmp0_v.i.i, -112
  %30 = inttoptr i32 %tmp2_v.i.i.i to i32*
  store i32 %29, i32* %30, align 16
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i.i, -124
  %31 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 0, i32* %31, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i.i, -120
  %32 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 100000, i32* %32, align 8
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i.i, -107
  %33 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 992751136, i32* %33, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i.i, -103
  %34 = inttoptr i32 %tmp2_v4.i.i.i to i16*
  store i16 2569, i16* %34, align 2
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i.i, -101
  %35 = inttoptr i32 %tmp2_v5.i.i.i to i8*
  store i8 0, i8* %35, align 1
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i.i, -116
  %36 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %30, align 16
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %BB_804932C.i.preheader.lr.ph.i, label %Func_smallest_word.exit

BB_804932C.i.preheader.lr.ph.i:                   ; preds = %.exit
  %tmp2_v7.i115.i.i = add i32 %tmp0_v.i.i, -156
  %39 = inttoptr i32 %tmp2_v7.i115.i.i to i32*
  br label %BB_804932C.i.preheader.i

BB_804933F.i.i:                                   ; preds = %BB_8049336.i.i
  store i32 %49, i32* %32, align 8
  br label %BB_804936F.i.preheader.i

BB_8049324.i.i:                                   ; preds = %BB_804932C.i.preheader.i, %BB_8049324.i.i
  %40 = load i32, i32* %36, align 4
  %tmp0_v1.i26.i.i = add i32 %40, 1
  store i32 %tmp0_v1.i26.i.i, i32* %36, align 4
  %41 = load i32, i32* %31, align 4
  %tmp0_v4.i28.i.i = add i32 %41, 1
  store i32 %tmp0_v4.i28.i.i, i32* %31, align 4
  %42 = load i32, i32* %36, align 4
  %43 = load i32, i32* %23, align 4
  %tmp0_v3.i110.i.i = add i32 %43, %42
  %44 = inttoptr i32 %tmp0_v3.i110.i.i to i8*
  %45 = load i8, i8* %44, align 1
  %tmp0_v5.i112.i.i = sext i8 %45 to i32
  store i32 %tmp0_v5.i112.i.i, i32* %39, align 4
  store i32 %tmp2_v3.i.i.i, i32* %27, align 16
  store i32 134517533, i32* %28, align 4
  %arg.i.i5.i = load i32, i32* %27, align 16
  %arg2.i.i.i = load i32, i32* %39, align 4
  %46 = tail call i32 @strchr(i32 %arg.i.i5.i, i32 %arg2.i.i.i)
  %.not.i91.i.i = icmp eq i32 %46, 0
  br i1 %.not.i91.i.i, label %BB_8049324.i.i, label %BB_8049336.i.i

BB_804936B.i.i:                                   ; preds = %BB_8049347.i.i
  %tmp0_v1.i35.i.i = add i32 %.pre.pre.i, 1
  store i32 %tmp0_v1.i35.i.i, i32* %36, align 4
  %47 = load i32, i32* %30, align 16
  %48 = icmp slt i32 %tmp0_v1.i35.i.i, %47
  br i1 %48, label %BB_8049347.i.i, label %BB_8049377.i.loopexit.i

BB_8049336.i.i:                                   ; preds = %BB_804932C.i.preheader.i, %BB_8049324.i.i
  %.lcssa.i = phi i32 [ %57, %BB_804932C.i.preheader.i ], [ %42, %BB_8049324.i.i ]
  %49 = load i32, i32* %31, align 4
  %50 = load i32, i32* %32, align 8
  %.not.i.i.i = icmp slt i32 %49, %50
  br i1 %.not.i.i.i, label %BB_804933F.i.i, label %BB_804936F.i.preheader.i

BB_804936F.i.preheader.i:                         ; preds = %BB_8049336.i.i, %BB_804933F.i.i
  %51 = load i32, i32* %36, align 4
  %52 = load i32, i32* %30, align 16
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %BB_8049347.i.i, label %BB_8049377.i.loopexit.i

BB_8049377.i.loopexit.i:                          ; preds = %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i, %BB_804936F.i.preheader.i, %BB_804936B.i.i
  %54 = phi i32 [ %52, %BB_804936F.i.preheader.i ], [ %.pre22.pre.i, %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i ], [ %47, %BB_804936B.i.i ]
  %55 = phi i32 [ %51, %BB_804936F.i.preheader.i ], [ %.pre.pre.i, %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i ], [ %tmp0_v1.i35.i.i, %BB_804936B.i.i ]
  %r_edx.0.ph.i = phi i32 [ %.lcssa.i, %BB_804936F.i.preheader.i ], [ %62, %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i ], [ %62, %BB_804936B.i.i ]
  %56 = icmp slt i32 %55, %54
  br i1 %56, label %BB_804932C.i.preheader.i, label %Func_smallest_word.exit

BB_804932C.i.preheader.i:                         ; preds = %BB_8049377.i.loopexit.i, %BB_804932C.i.preheader.lr.ph.i
  store i32 0, i32* %31, align 4
  %57 = load i32, i32* %36, align 4
  %58 = load i32, i32* %23, align 4
  %tmp0_v3.i110.i12.i = add i32 %58, %57
  %59 = inttoptr i32 %tmp0_v3.i110.i12.i to i8*
  %60 = load i8, i8* %59, align 1
  %tmp0_v5.i112.i13.i = sext i8 %60 to i32
  store i32 %tmp0_v5.i112.i13.i, i32* %39, align 4
  store i32 %tmp2_v3.i.i.i, i32* %27, align 16
  store i32 134517533, i32* %28, align 4
  %arg.i.i514.i = load i32, i32* %27, align 16
  %arg2.i.i15.i = load i32, i32* %39, align 4
  %61 = tail call i32 @strchr(i32 %arg.i.i514.i, i32 %arg2.i.i15.i)
  %.not.i91.i16.i = icmp eq i32 %61, 0
  br i1 %.not.i91.i16.i, label %BB_8049324.i.i, label %BB_8049336.i.i

BB_8049347.i.i:                                   ; preds = %BB_804936F.i.preheader.i, %BB_804936B.i.i
  %62 = phi i32 [ %tmp0_v1.i35.i.i, %BB_804936B.i.i ], [ %51, %BB_804936F.i.preheader.i ]
  %63 = load i32, i32* %23, align 4
  %tmp0_v3.i98.i.i = add i32 %63, %62
  %64 = inttoptr i32 %tmp0_v3.i98.i.i to i8*
  %65 = load i8, i8* %64, align 1
  %tmp0_v5.i.i.i = sext i8 %65 to i32
  store i32 %tmp0_v5.i.i.i, i32* %39, align 4
  store i32 %tmp2_v3.i.i.i, i32* %27, align 16
  store i32 134517602, i32* %28, align 4
  %arg.i.i8.i = load i32, i32* %27, align 16
  %arg2.i.i9.i = load i32, i32* %39, align 4
  %66 = tail call i32 @strchr(i32 %arg.i.i8.i, i32 %arg2.i.i9.i)
  %.not.i66.i.i = icmp eq i32 %66, 0
  %.pre.pre.i = load i32, i32* %36, align 4
  br i1 %.not.i66.i.i, label %BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i, label %BB_804936B.i.i

BB_8049347.i.BB_8049377.i.loopexit.loopexit_crit_edge.i: ; preds = %BB_8049347.i.i
  %.pre22.pre.i = load i32, i32* %30, align 16
  br label %BB_8049377.i.loopexit.i

Func_smallest_word.exit:                          ; preds = %BB_8049377.i.loopexit.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %r_edx.0.ph.i, %BB_8049377.i.loopexit.i ]
  %67 = load i32, i32* %32, align 8
  %68 = load i32, i32* %25, align 4
  %tmp4_v.i13.i.b.i = load i1, i1* @segs.0, align 1
  %69 = inttoptr i32 %arg_esp to i32*
  %70 = load i32, i32* %69, align 4
  %tmp0_v4.i.i.i = xor i32 %70, %68
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %19, align 8
  %tmp2_v.i4.i = add i32 %72, -44
  %73 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %67, i32* %73, align 4
  %tmp2_v4.i5.i = add i32 %tmp0_v.i.i, -76
  %74 = inttoptr i32 %tmp2_v4.i5.i to i32*
  store i32 %67, i32* %74, align 4
  %tmp2_v5.i7.i = add i32 %71, -8184
  store i32 %tmp2_v5.i7.i, i32* %17, align 16
  store i32 134517366, i32* %18, align 4
  %75 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp0_v4.i.i.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v12.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !189
  ret void
}
define internal fastcc void @count_char593(i32 %arg_esp) unnamed_addr  norecurse  !retregs !173 {
.exit:
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i18.i = add i32 %tmp0_v.i17.i, -4
  %2 = inttoptr i32 %tmp2_v3.i18.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i19.i = add i32 %tmp0_v.i17.i, -8
  %3 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i21.i = add i32 %tmp0_v.i17.i, -12
  %4 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i23.i = add i32 %tmp0_v.i17.i, -16
  %5 = inttoptr i32 %tmp2_v6.i23.i to i32*
  store i32 %tmp2_v.i16.i, i32* %5, align 16
  %tmp2_v8.i24.i = add i32 %tmp0_v.i17.i, -68
  %6 = inttoptr i32 %tmp2_v8.i24.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i17.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i17.i, -44
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 1936287828, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i17.i, -40
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 544434464, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i17.i, -36
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 1948285293, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i17.i, -32
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 544502629, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i17.i, -28
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1769108595, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i17.i, -24
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 3041134, i32* %15, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i17.i, -76
  %16 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 115, i32* %16, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i17.i, -80
  %17 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %17, align 16
  %tmp2_v13.i.i = add i32 %tmp0_v.i17.i, -84
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517306, i32* %18, align 4
  %19 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_count_char(i32 %tmp2_v13.i.i, i32 %tmp2_v4.i19.i, i32 134529024)
  %20 = extractvalue { i32, i32, i32, i32, i32 } %19, 0
  %21 = extractvalue { i32, i32, i32, i32, i32 } %19, 1
  %22 = extractvalue { i32, i32, i32, i32, i32 } %19, 2
  %23 = extractvalue { i32, i32, i32, i32, i32 } %19, 3
  %24 = extractvalue { i32, i32, i32, i32, i32 } %19, 4
  %tmp2_v.i46.i = add i32 %23, -44
  %25 = inttoptr i32 %tmp2_v.i46.i to i32*
  store i32 %21, i32* %25, align 4
  %tmp2_v4.i51.i = add i32 %20, 4
  %26 = inttoptr i32 %tmp2_v4.i51.i to i32*
  store i32 %21, i32* %26, align 4
  %tmp2_v5.i53.i = add i32 %24, -8184
  %27 = inttoptr i32 %20 to i32*
  store i32 %tmp2_v5.i53.i, i32* %27, align 4
  %tmp2_v7.i54.i = add i32 %20, -4
  %28 = inttoptr i32 %tmp2_v7.i54.i to i32*
  store i32 134517330, i32* %28, align 4
  %29 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i16.i, i32 inreg noundef %22, i32 noundef %20, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !174
  store i32 46, i32* %26, align 4
  %tmp2_v2.i30.i = add i32 %23, -36
  store i32 %tmp2_v2.i30.i, i32* %27, align 4
  store i32 134517347, i32* %28, align 4
  %30 = tail call fastcc { i32, i32, i32, i32, i32 } @Func_count_char(i32 %tmp2_v7.i54.i, i32 %23, i32 %24)
  %31 = extractvalue { i32, i32, i32, i32, i32 } %30, 0
  %32 = extractvalue { i32, i32, i32, i32, i32 } %30, 1
  %33 = extractvalue { i32, i32, i32, i32, i32 } %30, 2
  %34 = extractvalue { i32, i32, i32, i32, i32 } %30, 3
  %35 = extractvalue { i32, i32, i32, i32, i32 } %30, 4
  %tmp2_v.i35.i = add i32 %34, -40
  %36 = inttoptr i32 %tmp2_v.i35.i to i32*
  store i32 %32, i32* %36, align 4
  %tmp2_v4.i39.i = add i32 %31, 4
  %37 = inttoptr i32 %tmp2_v4.i39.i to i32*
  store i32 %32, i32* %37, align 4
  %tmp2_v5.i41.i = add i32 %35, -8171
  %38 = inttoptr i32 %31 to i32*
  store i32 %tmp2_v5.i41.i, i32* %38, align 4
  %tmp2_v7.i42.i = add i32 %31, -4
  %39 = inttoptr i32 %tmp2_v7.i42.i to i32*
  store i32 134517371, i32* %39, align 4
  %40 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i16.i, i32 inreg noundef %33, i32 noundef %31, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !174
  ret void
}
define internal fastcc { i32, i32, i32, i32, i32 } @Func_count_char(i32 %arg_esp, i32 %arg_ebp, i32 %arg_ebx) unnamed_addr  norecurse  !retregs !175 {
  %tmp2_v.i.i = add i32 %arg_esp, -4
  %1 = inttoptr i32 %tmp2_v.i.i to i32*
  store i32 %arg_ebp, i32* %1, align 4
  %tmp2_v1.i.i = add i32 %arg_esp, -8
  %2 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 %arg_ebx, i32* %2, align 4
  %tmp2_v2.i.i = add i32 %arg_esp, -48
  %3 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 134517422, i32* %3, align 4
  %tmp2_v.i32.i = add i32 %arg_esp, 8
  %4 = inttoptr i32 %tmp2_v.i32.i to i32*
  %5 = load i32, i32* %4, align 4
  %tmp2_v2.i34.i = add i32 %arg_esp, -32
  %6 = trunc i32 %5 to i8
  %7 = inttoptr i32 %tmp2_v2.i34.i to i8*
  store i8 %6, i8* %7, align 1
  %tmp2_v4.i.i = add i32 %arg_esp, 4
  %8 = inttoptr i32 %tmp2_v4.i.i to i32*
  %9 = load i32, i32* %8, align 4
  %tmp2_v6.i.i = add i32 %arg_esp, -60
  %10 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %9, i32* %10, align 4
  %tmp2_v7.i37.i = add i32 %arg_esp, -64
  %11 = inttoptr i32 %tmp2_v7.i37.i to i32*
  store i32 134517446, i32* %11, align 4
  %arg.i.i = load i32, i32* %10, align 4
  %12 = tail call i32 @strlen(i32 %arg.i.i)
  %tmp2_v.i4.i = add i32 %arg_esp, -16
  %13 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %12, i32* %13, align 4
  %tmp2_v1.i5.i = add i32 %arg_esp, -24
  %14 = inttoptr i32 %tmp2_v1.i5.i to i32*
  store i32 0, i32* %14, align 4
  %tmp2_v2.i6.i = add i32 %arg_esp, -20
  %15 = inttoptr i32 %tmp2_v2.i6.i to i32*
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %BB_80492DC.i, label %.exit

BB_80492EC.i:                                     ; preds = %BB_80492DC.i
  %18 = load i32, i32* %14, align 4
  %tmp0_v1.i.i = add i32 %18, 1
  store i32 %tmp0_v1.i.i, i32* %14, align 4
  %.pre = load i32, i32* %15, align 4
  br label %BB_80492F0.i

BB_80492DC.i:                                     ; preds = %BB_80492F0.i, %0
  %storemerge20 = phi i32 [ %tmp0_v1.i41.i, %BB_80492F0.i ], [ 0, %0 ]
  %19 = load i32, i32* %8, align 4
  %tmp0_v3.i22.i = add i32 %19, %storemerge20
  %20 = inttoptr i32 %tmp0_v3.i22.i to i8*
  %21 = load i8, i8* %20, align 1
  %tmp0_v4.i23.i = zext i8 %21 to i32
  %22 = load i8, i8* %7, align 1
  %tmp0_v6.i25.i = zext i8 %22 to i32
  %cc_dst_v.i26.i = sub nsw i32 %tmp0_v6.i25.i, %tmp0_v4.i23.i
  %tmp4_v.i27.i = and i32 %cc_dst_v.i26.i, 255
  %.not.i.i = icmp eq i32 %tmp4_v.i27.i, 0
  br i1 %.not.i.i, label %BB_80492EC.i, label %BB_80492F0.i

BB_80492F0.i:                                     ; preds = %BB_80492DC.i, %BB_80492EC.i
  %23 = phi i32 [ %storemerge20, %BB_80492DC.i ], [ %.pre, %BB_80492EC.i ]
  %tmp0_v1.i41.i = add i32 %23, 1
  store i32 %tmp0_v1.i41.i, i32* %15, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %tmp0_v1.i41.i, %24
  br i1 %25, label %BB_80492DC.i, label %.exit

.exit:                                            ; preds = %BB_80492F0.i, %0
  %r_edx.0.lcssa = phi i32 [ %5, %0 ], [ %storemerge20, %BB_80492F0.i ]
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %1, align 4
  %mrv = insertvalue { i32, i32, i32, i32, i32 } undef, i32 %tmp2_v4.i.i, 0
  %mrv1 = insertvalue { i32, i32, i32, i32, i32 } %mrv, i32 %26, 1
  %mrv2 = insertvalue { i32, i32, i32, i32, i32 } %mrv1, i32 %r_edx.0.lcssa, 2
  %mrv3 = insertvalue { i32, i32, i32, i32, i32 } %mrv2, i32 %28, 3
  %mrv4 = insertvalue { i32, i32, i32, i32, i32 } %mrv3, i32 %27, 4
  ret { i32, i32, i32, i32, i32 } %mrv4
}
define internal fastcc void @substring536(i32 %arg_esp) unnamed_addr  norecurse  !retregs !159 {
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
  %97 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %r_edx.0.i69, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !160
  %98 = lshr i64 %97, 32
  %99 = trunc i64 %98 to i32
  %tmp2_v.i53.i = add i32 %96, -142
  store i32 %tmp2_v.i53.i, i32* %17, align 4
  %tmp2_v3.i56.i = add i32 %95, -8174
  store i32 %tmp2_v3.i56.i, i32* %18, align 16
  store i32 134517423, i32* %19, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %99, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !160
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
  %tmp2_v.i62.i = add i32 %96, -138
  store i32 %tmp2_v.i62.i, i32* %17, align 4
  %tmp2_v3.i65.i = add i32 %95, -8164
  store i32 %tmp2_v3.i65.i, i32* %18, align 16
  store i32 134517448, i32* %19, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i68, i32 inreg noundef %102, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !160
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
  %128 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i108, i32 inreg noundef %r_edx.0.i109, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !160
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
  %153 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.i147, i32 inreg noundef %r_edx.0.i148, i32 noundef %tmp2_v14.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !160
  ret void
}
define internal fastcc void @remove_space_chars427(i32 %arg_esp) unnamed_addr  norecurse  !retregs !145 {
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
  %tmp2_v8.i.i = add i32 %tmp0_v.i.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i7.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i11.i = add i32 %tmp0_v.i.i, -20
  %9 = inttoptr i32 %tmp2_v2.i11.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i12.i = add i32 %tmp0_v.i.i, -47
  %10 = inttoptr i32 %tmp2_v3.i12.i to i32*
  store i32 1953701953, i32* %10, align 4
  %tmp2_v4.i13.i = add i32 %tmp0_v.i.i, -43
  %11 = inttoptr i32 %tmp2_v4.i13.i to i32*
  store i32 1735289202, i32* %11, align 4
  %tmp2_v5.i14.i = add i32 %tmp0_v.i.i, -39
  %12 = inttoptr i32 %tmp2_v5.i14.i to i32*
  store i32 1953068832, i32* %12, align 4
  %tmp2_v6.i15.i = add i32 %tmp0_v.i.i, -35
  %13 = inttoptr i32 %tmp2_v6.i15.i to i32*
  store i32 1886593128, i32* %13, align 4
  %tmp2_v7.i.i = add i32 %tmp0_v.i.i, -31
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 1936024417, i32* %14, align 4
  %tmp2_v8.i16.i = add i32 %tmp0_v.i.i, -27
  %15 = inttoptr i32 %tmp2_v8.i16.i to i32*
  store i32 544106784, i32* %15, align 4
  %tmp2_v9.i.i = add i32 %tmp0_v.i.i, -23
  %16 = inttoptr i32 %tmp2_v9.i.i to i16*
  store i16 29801, i16* %16, align 2
  %tmp2_v10.i.i = add i32 %tmp0_v.i.i, -21
  %17 = inttoptr i32 %tmp2_v10.i.i to i8*
  store i8 0, i8* %17, align 1
  %tmp2_v13.i.i = add i32 %tmp0_v.i.i, -60
  %18 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 %tmp2_v3.i12.i, i32* %18, align 4
  %tmp2_v15.i.i = add i32 %tmp0_v.i.i, -64
  %19 = inttoptr i32 %tmp2_v15.i.i to i32*
;-------------------------------
; Replace: %spi.bis.425 = ptrtoint[16 x i8]* @str.bis.425 to i32
  %cipher.ptr.37 = alloca [25 x i8]
;-------------------------------
; Replace: store [25 x i8] c"\51\6d\56\6d\62\33\4a\6c\4f\67\6f\4b\4a\79\56\7a\4a\77\6f\4b\41\41\3d\3d\00", [25 x i8]* %cipher.ptr.37
;-------------------------------
; Replace: %sp0.1.78 = bitcast [25 x i8]* @str.78 to i200*
  %spi125 = alloca [25 x i8]
  
  %s0.125 = load [3 x i8], [3 x i8]* @str.0.125
  %sp0.125 = bitcast [25 x i8]* %spi125 to [3 x i8]*
  store [3 x i8] %s0.125, [3 x i8]* %sp0.125
  %next0.125 = getelementptr [25 x i8], [25 x i8]* %spi125, i32 0, i32 3
  
  %s1.125 = load [3 x i8], [3 x i8]* @str.1.125
  %sp1.125 = bitcast i8* %next0.125 to [3 x i8]*
  store [3 x i8] %s1.125, [3 x i8]* %sp1.125
  %next1.125 = getelementptr [25 x i8], [25 x i8]* %spi125, i32 0, i32 6
  
  %s2.125 = load [3 x i8], [3 x i8]* @str.2.125
  %sp2.125 = bitcast i8* %next1.125 to [3 x i8]*
  store [3 x i8] %s2.125, [3 x i8]* %sp2.125
  %next2.125 = getelementptr [25 x i8], [25 x i8]* %spi125, i32 0, i32 9
  
  %s3.125 = load [3 x i8], [3 x i8]* @str.3.125
  %sp3.125 = bitcast i8* %next2.125 to [3 x i8]*
  store [3 x i8] %s3.125, [3 x i8]* %sp3.125
  %next3.125 = getelementptr [25 x i8], [25 x i8]* %spi125, i32 0, i32 12
  
  %s4.125 = load [3 x i8], [3 x i8]* @str.4.125
  %sp4.125 = bitcast i8* %next3.125 to [3 x i8]*
  store [3 x i8] %s4.125, [3 x i8]* %sp4.125
  %next4.125 = getelementptr [25 x i8], [25 x i8]* %spi125, i32 0, i32 15
  
  %s5.125 = load [3 x i8], [3 x i8]* @str.5.125
  %sp5.125 = bitcast i8* %next4.125 to [3 x i8]*
  store [3 x i8] %s5.125, [3 x i8]* %sp5.125
  %next5.125 = getelementptr [25 x i8], [25 x i8]* %spi125, i32 0, i32 18
  
  %s6.125 = load [3 x i8], [3 x i8]* @str.6.125
  %sp6.125 = bitcast i8* %next5.125 to [3 x i8]*
  store [3 x i8] %s6.125, [3 x i8]* %sp6.125
  %next6.125 = getelementptr [25 x i8], [25 x i8]* %spi125, i32 0, i32 21
  
  %s7.125 = load [4 x i8], [4 x i8]* @str.7.125
  %sp7.125 = bitcast i8* %next6.125 to [4 x i8]*
  store [4 x i8] %s7.125, [4 x i8]* %sp7.125
  %sp0.1.78 = bitcast [25 x i8]* %spi125 to i200*
;-------------------------------
  %i0.78 = load i200, i200* %sp0.1.78

;-------------------------------
; Replace: %sp1.1.78 = bitcast [25 x i8]* @key.78 to i200*
  %spi126 = alloca [25 x i8]
  
  %s0.126 = load [3 x i8], [3 x i8]* @str.0.126
  %sp0.126 = bitcast [25 x i8]* %spi126 to [3 x i8]*
  store [3 x i8] %s0.126, [3 x i8]* %sp0.126
  %next0.126 = getelementptr [25 x i8], [25 x i8]* %spi126, i32 0, i32 3
  
  %s1.126 = load [3 x i8], [3 x i8]* @str.1.126
  %sp1.126 = bitcast i8* %next0.126 to [3 x i8]*
  store [3 x i8] %s1.126, [3 x i8]* %sp1.126
  %next1.126 = getelementptr [25 x i8], [25 x i8]* %spi126, i32 0, i32 6
  
  %s2.126 = load [3 x i8], [3 x i8]* @str.2.126
  %sp2.126 = bitcast i8* %next1.126 to [3 x i8]*
  store [3 x i8] %s2.126, [3 x i8]* %sp2.126
  %next2.126 = getelementptr [25 x i8], [25 x i8]* %spi126, i32 0, i32 9
  
  %s3.126 = load [3 x i8], [3 x i8]* @str.3.126
  %sp3.126 = bitcast i8* %next2.126 to [3 x i8]*
  store [3 x i8] %s3.126, [3 x i8]* %sp3.126
  %next3.126 = getelementptr [25 x i8], [25 x i8]* %spi126, i32 0, i32 12
  
  %s4.126 = load [3 x i8], [3 x i8]* @str.4.126
  %sp4.126 = bitcast i8* %next3.126 to [3 x i8]*
  store [3 x i8] %s4.126, [3 x i8]* %sp4.126
  %next4.126 = getelementptr [25 x i8], [25 x i8]* %spi126, i32 0, i32 15
  
  %s5.126 = load [3 x i8], [3 x i8]* @str.5.126
  %sp5.126 = bitcast i8* %next4.126 to [3 x i8]*
  store [3 x i8] %s5.126, [3 x i8]* %sp5.126
  %next5.126 = getelementptr [25 x i8], [25 x i8]* %spi126, i32 0, i32 18
  
  %s6.126 = load [3 x i8], [3 x i8]* @str.6.126
  %sp6.126 = bitcast i8* %next5.126 to [3 x i8]*
  store [3 x i8] %s6.126, [3 x i8]* %sp6.126
  %next6.126 = getelementptr [25 x i8], [25 x i8]* %spi126, i32 0, i32 21
  
  %s7.126 = load [4 x i8], [4 x i8]* @str.7.126
  %sp7.126 = bitcast i8* %next6.126 to [4 x i8]*
  store [4 x i8] %s7.126, [4 x i8]* %sp7.126
  %sp1.1.78 = bitcast [25 x i8]* %spi126 to i200*
;-------------------------------
  %i1.78 = load i200, i200* %sp1.1.78

  %xp78 = xor i200 %i0.78, %i1.78

  %fi.78 = alloca i200
  store i200 %xp78, i200* %fi.78

  %final.ptr.78 = bitcast i200* %fi.78 to [25 x i8]*
  %spi78 = load [25 x i8], [25 x i8]* %final.ptr.78
  store [25 x i8] %spi78, [25 x i8]* %cipher.ptr.37
;-------------------------------
  %cipher.37 = getelementptr inbounds [25 x i8], [25 x i8]* %cipher.ptr.37, i32 0, i32 0
  %plain.ptr.37 = tail call i8* @base64_decode(i8* %cipher.37)
  %spi37 = bitcast i8* %plain.ptr.37 to [16 x i8]*
  %spi.bis.425 = ptrtoint[16 x i8]* %spi37 to i32
;-------------------------------
  store i32 %spi.bis.425, i32* %19, align 16
  %tmp2_v16.i.i = add i32 %tmp0_v.i.i, -68
  %20 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 134517321, i32* %20, align 4
  %21 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i.i, i32 inreg noundef 0, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !146
  store i32 %tmp2_v3.i12.i, i32* %19, align 16
  store i32 134517336, i32* %20, align 4
  %tmp2_v.i41.i.i = add i32 %tmp0_v.i.i, -72
  %22 = inttoptr i32 %tmp2_v.i41.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %22, align 8
  %tmp2_v1.i43.i.i = add i32 %tmp0_v.i.i, -76
  %23 = inttoptr i32 %tmp2_v1.i43.i.i to i32*
  store i32 134529024, i32* %23, align 4
  %tmp2_v2.i45.i.i = add i32 %tmp0_v.i.i, -100
  %24 = inttoptr i32 %tmp2_v2.i45.i.i to i32*
;-------------------------------
; Replace: %spi.bis.424 = ptrtoint[4 x i8]* @str.bis.424 to i32
  %cipher.ptr.36 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\56\38\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.36
;-------------------------------
; Replace: %sp0.1.79 = bitcast [9 x i8]* @str.79 to i72*
  %spi127 = alloca [9 x i8]
  
  %s0.127 = load [1 x i8], [1 x i8]* @str.0.127
  %sp0.127 = bitcast [9 x i8]* %spi127 to [1 x i8]*
  store [1 x i8] %s0.127, [1 x i8]* %sp0.127
  %next0.127 = getelementptr [9 x i8], [9 x i8]* %spi127, i32 0, i32 1
  
  %s1.127 = load [1 x i8], [1 x i8]* @str.1.127
  %sp1.127 = bitcast i8* %next0.127 to [1 x i8]*
  store [1 x i8] %s1.127, [1 x i8]* %sp1.127
  %next1.127 = getelementptr [9 x i8], [9 x i8]* %spi127, i32 0, i32 2
  
  %s2.127 = load [1 x i8], [1 x i8]* @str.2.127
  %sp2.127 = bitcast i8* %next1.127 to [1 x i8]*
  store [1 x i8] %s2.127, [1 x i8]* %sp2.127
  %next2.127 = getelementptr [9 x i8], [9 x i8]* %spi127, i32 0, i32 3
  
  %s3.127 = load [1 x i8], [1 x i8]* @str.3.127
  %sp3.127 = bitcast i8* %next2.127 to [1 x i8]*
  store [1 x i8] %s3.127, [1 x i8]* %sp3.127
  %next3.127 = getelementptr [9 x i8], [9 x i8]* %spi127, i32 0, i32 4
  
  %s4.127 = load [1 x i8], [1 x i8]* @str.4.127
  %sp4.127 = bitcast i8* %next3.127 to [1 x i8]*
  store [1 x i8] %s4.127, [1 x i8]* %sp4.127
  %next4.127 = getelementptr [9 x i8], [9 x i8]* %spi127, i32 0, i32 5
  
  %s5.127 = load [1 x i8], [1 x i8]* @str.5.127
  %sp5.127 = bitcast i8* %next4.127 to [1 x i8]*
  store [1 x i8] %s5.127, [1 x i8]* %sp5.127
  %next5.127 = getelementptr [9 x i8], [9 x i8]* %spi127, i32 0, i32 6
  
  %s6.127 = load [1 x i8], [1 x i8]* @str.6.127
  %sp6.127 = bitcast i8* %next5.127 to [1 x i8]*
  store [1 x i8] %s6.127, [1 x i8]* %sp6.127
  %next6.127 = getelementptr [9 x i8], [9 x i8]* %spi127, i32 0, i32 7
  
  %s7.127 = load [2 x i8], [2 x i8]* @str.7.127
  %sp7.127 = bitcast i8* %next6.127 to [2 x i8]*
  store [2 x i8] %s7.127, [2 x i8]* %sp7.127
  %sp0.1.79 = bitcast [9 x i8]* %spi127 to i72*
;-------------------------------
  %i0.79 = load i72, i72* %sp0.1.79

;-------------------------------
; Replace: %sp1.1.79 = bitcast [9 x i8]* @key.79 to i72*
  %spi128 = alloca [9 x i8]
  
  %s0.128 = load [1 x i8], [1 x i8]* @str.0.128
  %sp0.128 = bitcast [9 x i8]* %spi128 to [1 x i8]*
  store [1 x i8] %s0.128, [1 x i8]* %sp0.128
  %next0.128 = getelementptr [9 x i8], [9 x i8]* %spi128, i32 0, i32 1
  
  %s1.128 = load [1 x i8], [1 x i8]* @str.1.128
  %sp1.128 = bitcast i8* %next0.128 to [1 x i8]*
  store [1 x i8] %s1.128, [1 x i8]* %sp1.128
  %next1.128 = getelementptr [9 x i8], [9 x i8]* %spi128, i32 0, i32 2
  
  %s2.128 = load [1 x i8], [1 x i8]* @str.2.128
  %sp2.128 = bitcast i8* %next1.128 to [1 x i8]*
  store [1 x i8] %s2.128, [1 x i8]* %sp2.128
  %next2.128 = getelementptr [9 x i8], [9 x i8]* %spi128, i32 0, i32 3
  
  %s3.128 = load [1 x i8], [1 x i8]* @str.3.128
  %sp3.128 = bitcast i8* %next2.128 to [1 x i8]*
  store [1 x i8] %s3.128, [1 x i8]* %sp3.128
  %next3.128 = getelementptr [9 x i8], [9 x i8]* %spi128, i32 0, i32 4
  
  %s4.128 = load [1 x i8], [1 x i8]* @str.4.128
  %sp4.128 = bitcast i8* %next3.128 to [1 x i8]*
  store [1 x i8] %s4.128, [1 x i8]* %sp4.128
  %next4.128 = getelementptr [9 x i8], [9 x i8]* %spi128, i32 0, i32 5
  
  %s5.128 = load [1 x i8], [1 x i8]* @str.5.128
  %sp5.128 = bitcast i8* %next4.128 to [1 x i8]*
  store [1 x i8] %s5.128, [1 x i8]* %sp5.128
  %next5.128 = getelementptr [9 x i8], [9 x i8]* %spi128, i32 0, i32 6
  
  %s6.128 = load [1 x i8], [1 x i8]* @str.6.128
  %sp6.128 = bitcast i8* %next5.128 to [1 x i8]*
  store [1 x i8] %s6.128, [1 x i8]* %sp6.128
  %next6.128 = getelementptr [9 x i8], [9 x i8]* %spi128, i32 0, i32 7
  
  %s7.128 = load [2 x i8], [2 x i8]* @str.7.128
  %sp7.128 = bitcast i8* %next6.128 to [2 x i8]*
  store [2 x i8] %s7.128, [2 x i8]* %sp7.128
  %sp1.1.79 = bitcast [9 x i8]* %spi128 to i72*
;-------------------------------
  %i1.79 = load i72, i72* %sp1.1.79

  %xp79 = xor i72 %i0.79, %i1.79

  %fi.79 = alloca i72
  store i72 %xp79, i72* %fi.79

  %final.ptr.79 = bitcast i72* %fi.79 to [9 x i8]*
  %spi79 = load [9 x i8], [9 x i8]* %final.ptr.79
  store [9 x i8] %spi79, [9 x i8]* %cipher.ptr.36
;-------------------------------
  %cipher.36 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.36, i32 0, i32 0
  %plain.ptr.36 = tail call i8* @base64_decode(i8* %cipher.36)
  %spi36 = bitcast i8* %plain.ptr.36 to [4 x i8]*
  %spi.bis.424 = ptrtoint[4 x i8]* %spi36 to i32
;-------------------------------
  store i32 %spi.bis.424, i32* %24, align 4
  %25 = load i32, i32* %19, align 16
  %tmp2_v3.i.i.i = add i32 %tmp0_v.i.i, -112
  %26 = inttoptr i32 %tmp2_v3.i.i.i to i32*
  store i32 %25, i32* %26, align 16
  %tmp2_v4.i12.i.i = add i32 %tmp0_v.i.i, -116
  %27 = inttoptr i32 %tmp2_v4.i12.i.i to i32*
  store i32 134517427, i32* %27, align 4
  %arg.i.i.i = load i32, i32* %26, align 16
  %28 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i16.i.i = add i32 %tmp0_v.i.i, -84
  %29 = inttoptr i32 %tmp2_v.i16.i.i to i32*
  store i32 %28, i32* %29, align 4
  %tmp2_v1.i18.i.i = add i32 %tmp0_v.i.i, -92
  %30 = inttoptr i32 %tmp2_v1.i18.i.i to i32*
  store i32 0, i32* %30, align 4
  %tmp2_v2.i19.i.i = add i32 %tmp0_v.i.i, -88
  %31 = inttoptr i32 %tmp2_v2.i19.i.i to i32*
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %29, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %BB_80492C9.i.i, label %Func_remove_spaces.exit

BB_80492C9.i.i:                                   ; preds = %BB_80492F1.i.i, %.exit
  %r_ecx.120.i = phi i32 [ %r_ecx.0.i, %BB_80492F1.i.i ], [ %tmp2_v.i.i, %.exit ]
  %storemerge19.i = phi i32 [ %tmp0_v1.i.i.i, %BB_80492F1.i.i ], [ 0, %.exit ]
  %34 = load i32, i32* %19, align 16
  %tmp0_v3.i.i.i = add i32 %34, %storemerge19.i
  %35 = inttoptr i32 %tmp0_v3.i.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %37 = icmp eq i8 %36, 32
  br i1 %37, label %BB_80492F1.i.i, label %BB_80492D8.i.i

BB_80492F1.i.i:                                   ; preds = %BB_80492D8.i.i, %BB_80492C9.i.i
  %38 = phi i32 [ %storemerge19.i, %BB_80492C9.i.i ], [ %.pre.i, %BB_80492D8.i.i ]
  %r_ecx.0.i = phi i32 [ %r_ecx.120.i, %BB_80492C9.i.i ], [ %41, %BB_80492D8.i.i ]
  %tmp0_v1.i.i.i = add i32 %38, 1
  store i32 %tmp0_v1.i.i.i, i32* %31, align 8
  %39 = load i32, i32* %29, align 4
  %40 = icmp slt i32 %tmp0_v1.i.i.i, %39
  br i1 %40, label %BB_80492C9.i.i, label %Func_remove_spaces.exit

BB_80492D8.i.i:                                   ; preds = %BB_80492C9.i.i
  %41 = load i32, i32* %30, align 4
  %tmp0_v8.i.i.i = add i32 %41, %34
  %42 = inttoptr i32 %tmp0_v8.i.i.i to i8*
  store i8 %36, i8* %42, align 1
  %43 = load i32, i32* %30, align 4
  %tmp0_v12.i.i.i = add i32 %43, 1
  store i32 %tmp0_v12.i.i.i, i32* %30, align 4
  %.pre.i = load i32, i32* %31, align 8
  br label %BB_80492F1.i.i

Func_remove_spaces.exit:                          ; preds = %BB_80492F1.i.i, %.exit
  %r_ecx.1.lcssa.i = phi i32 [ %tmp2_v.i.i, %.exit ], [ %r_ecx.0.i, %BB_80492F1.i.i ]
  %44 = load i32, i32* %30, align 4
  %45 = load i32, i32* %19, align 16
  %tmp0_v3.i25.i.i = add i32 %45, %44
  %46 = inttoptr i32 %tmp0_v3.i25.i.i to i8*
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %23, align 4
  %48 = load i32, i32* %22, align 8
  %tmp2_v.i35.i = add i32 %48, -39
  store i32 %tmp2_v.i35.i, i32* %18, align 4
  %tmp2_v3.i38.i = add i32 %47, -8168
  store i32 %tmp2_v3.i38.i, i32* %19, align 16
  store i32 134517358, i32* %20, align 4
  %49 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %44, i32 noundef %tmp2_v15.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !146
  ret void
}
define internal fastcc void @move_zeros939(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !131 {
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
  %cipher.ptr.39 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\54\51\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.39
;-------------------------------
; Replace: %sp0.1.80 = bitcast [9 x i8]* @str.80 to i72*
  %spi129 = alloca [9 x i8]
  
  %s0.129 = load [1 x i8], [1 x i8]* @str.0.129
  %sp0.129 = bitcast [9 x i8]* %spi129 to [1 x i8]*
  store [1 x i8] %s0.129, [1 x i8]* %sp0.129
  %next0.129 = getelementptr [9 x i8], [9 x i8]* %spi129, i32 0, i32 1
  
  %s1.129 = load [1 x i8], [1 x i8]* @str.1.129
  %sp1.129 = bitcast i8* %next0.129 to [1 x i8]*
  store [1 x i8] %s1.129, [1 x i8]* %sp1.129
  %next1.129 = getelementptr [9 x i8], [9 x i8]* %spi129, i32 0, i32 2
  
  %s2.129 = load [1 x i8], [1 x i8]* @str.2.129
  %sp2.129 = bitcast i8* %next1.129 to [1 x i8]*
  store [1 x i8] %s2.129, [1 x i8]* %sp2.129
  %next2.129 = getelementptr [9 x i8], [9 x i8]* %spi129, i32 0, i32 3
  
  %s3.129 = load [1 x i8], [1 x i8]* @str.3.129
  %sp3.129 = bitcast i8* %next2.129 to [1 x i8]*
  store [1 x i8] %s3.129, [1 x i8]* %sp3.129
  %next3.129 = getelementptr [9 x i8], [9 x i8]* %spi129, i32 0, i32 4
  
  %s4.129 = load [1 x i8], [1 x i8]* @str.4.129
  %sp4.129 = bitcast i8* %next3.129 to [1 x i8]*
  store [1 x i8] %s4.129, [1 x i8]* %sp4.129
  %next4.129 = getelementptr [9 x i8], [9 x i8]* %spi129, i32 0, i32 5
  
  %s5.129 = load [1 x i8], [1 x i8]* @str.5.129
  %sp5.129 = bitcast i8* %next4.129 to [1 x i8]*
  store [1 x i8] %s5.129, [1 x i8]* %sp5.129
  %next5.129 = getelementptr [9 x i8], [9 x i8]* %spi129, i32 0, i32 6
  
  %s6.129 = load [1 x i8], [1 x i8]* @str.6.129
  %sp6.129 = bitcast i8* %next5.129 to [1 x i8]*
  store [1 x i8] %s6.129, [1 x i8]* %sp6.129
  %next6.129 = getelementptr [9 x i8], [9 x i8]* %spi129, i32 0, i32 7
  
  %s7.129 = load [2 x i8], [2 x i8]* @str.7.129
  %sp7.129 = bitcast i8* %next6.129 to [2 x i8]*
  store [2 x i8] %s7.129, [2 x i8]* %sp7.129
  %sp0.1.80 = bitcast [9 x i8]* %spi129 to i72*
;-------------------------------
  %i0.80 = load i72, i72* %sp0.1.80

;-------------------------------
; Replace: %sp1.1.80 = bitcast [9 x i8]* @key.80 to i72*
  %spi130 = alloca [9 x i8]
  
  %s0.130 = load [1 x i8], [1 x i8]* @str.0.130
  %sp0.130 = bitcast [9 x i8]* %spi130 to [1 x i8]*
  store [1 x i8] %s0.130, [1 x i8]* %sp0.130
  %next0.130 = getelementptr [9 x i8], [9 x i8]* %spi130, i32 0, i32 1
  
  %s1.130 = load [1 x i8], [1 x i8]* @str.1.130
  %sp1.130 = bitcast i8* %next0.130 to [1 x i8]*
  store [1 x i8] %s1.130, [1 x i8]* %sp1.130
  %next1.130 = getelementptr [9 x i8], [9 x i8]* %spi130, i32 0, i32 2
  
  %s2.130 = load [1 x i8], [1 x i8]* @str.2.130
  %sp2.130 = bitcast i8* %next1.130 to [1 x i8]*
  store [1 x i8] %s2.130, [1 x i8]* %sp2.130
  %next2.130 = getelementptr [9 x i8], [9 x i8]* %spi130, i32 0, i32 3
  
  %s3.130 = load [1 x i8], [1 x i8]* @str.3.130
  %sp3.130 = bitcast i8* %next2.130 to [1 x i8]*
  store [1 x i8] %s3.130, [1 x i8]* %sp3.130
  %next3.130 = getelementptr [9 x i8], [9 x i8]* %spi130, i32 0, i32 4
  
  %s4.130 = load [1 x i8], [1 x i8]* @str.4.130
  %sp4.130 = bitcast i8* %next3.130 to [1 x i8]*
  store [1 x i8] %s4.130, [1 x i8]* %sp4.130
  %next4.130 = getelementptr [9 x i8], [9 x i8]* %spi130, i32 0, i32 5
  
  %s5.130 = load [1 x i8], [1 x i8]* @str.5.130
  %sp5.130 = bitcast i8* %next4.130 to [1 x i8]*
  store [1 x i8] %s5.130, [1 x i8]* %sp5.130
  %next5.130 = getelementptr [9 x i8], [9 x i8]* %spi130, i32 0, i32 6
  
  %s6.130 = load [1 x i8], [1 x i8]* @str.6.130
  %sp6.130 = bitcast i8* %next5.130 to [1 x i8]*
  store [1 x i8] %s6.130, [1 x i8]* %sp6.130
  %next6.130 = getelementptr [9 x i8], [9 x i8]* %spi130, i32 0, i32 7
  
  %s7.130 = load [2 x i8], [2 x i8]* @str.7.130
  %sp7.130 = bitcast i8* %next6.130 to [2 x i8]*
  store [2 x i8] %s7.130, [2 x i8]* %sp7.130
  %sp1.1.80 = bitcast [9 x i8]* %spi130 to i72*
;-------------------------------
  %i1.80 = load i72, i72* %sp1.1.80

  %xp80 = xor i72 %i0.80, %i1.80

  %fi.80 = alloca i72
  store i72 %xp80, i72* %fi.80

  %final.ptr.80 = bitcast i72* %fi.80 to [9 x i8]*
  %spi80 = load [9 x i8], [9 x i8]* %final.ptr.80
  store [9 x i8] %spi80, [9 x i8]* %cipher.ptr.39
;-------------------------------
  %cipher.39 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.39, i32 0, i32 0
  %plain.ptr.39 = tail call i8* @base64_decode(i8* %cipher.39)
  %spi39 = bitcast i8* %plain.ptr.39 to [4 x i8]*
  %spi.bis.937 = ptrtoint[4 x i8]* %spi39 to i32
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
  %cipher.ptr.38 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\4a\57\51\67\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.38
;-------------------------------
; Replace: %sp0.1.81 = bitcast [9 x i8]* @str.81 to i72*
  %spi131 = alloca [9 x i8]
  
  %s0.131 = load [1 x i8], [1 x i8]* @str.0.131
  %sp0.131 = bitcast [9 x i8]* %spi131 to [1 x i8]*
  store [1 x i8] %s0.131, [1 x i8]* %sp0.131
  %next0.131 = getelementptr [9 x i8], [9 x i8]* %spi131, i32 0, i32 1
  
  %s1.131 = load [1 x i8], [1 x i8]* @str.1.131
  %sp1.131 = bitcast i8* %next0.131 to [1 x i8]*
  store [1 x i8] %s1.131, [1 x i8]* %sp1.131
  %next1.131 = getelementptr [9 x i8], [9 x i8]* %spi131, i32 0, i32 2
  
  %s2.131 = load [1 x i8], [1 x i8]* @str.2.131
  %sp2.131 = bitcast i8* %next1.131 to [1 x i8]*
  store [1 x i8] %s2.131, [1 x i8]* %sp2.131
  %next2.131 = getelementptr [9 x i8], [9 x i8]* %spi131, i32 0, i32 3
  
  %s3.131 = load [1 x i8], [1 x i8]* @str.3.131
  %sp3.131 = bitcast i8* %next2.131 to [1 x i8]*
  store [1 x i8] %s3.131, [1 x i8]* %sp3.131
  %next3.131 = getelementptr [9 x i8], [9 x i8]* %spi131, i32 0, i32 4
  
  %s4.131 = load [1 x i8], [1 x i8]* @str.4.131
  %sp4.131 = bitcast i8* %next3.131 to [1 x i8]*
  store [1 x i8] %s4.131, [1 x i8]* %sp4.131
  %next4.131 = getelementptr [9 x i8], [9 x i8]* %spi131, i32 0, i32 5
  
  %s5.131 = load [1 x i8], [1 x i8]* @str.5.131
  %sp5.131 = bitcast i8* %next4.131 to [1 x i8]*
  store [1 x i8] %s5.131, [1 x i8]* %sp5.131
  %next5.131 = getelementptr [9 x i8], [9 x i8]* %spi131, i32 0, i32 6
  
  %s6.131 = load [1 x i8], [1 x i8]* @str.6.131
  %sp6.131 = bitcast i8* %next5.131 to [1 x i8]*
  store [1 x i8] %s6.131, [1 x i8]* %sp6.131
  %next6.131 = getelementptr [9 x i8], [9 x i8]* %spi131, i32 0, i32 7
  
  %s7.131 = load [2 x i8], [2 x i8]* @str.7.131
  %sp7.131 = bitcast i8* %next6.131 to [2 x i8]*
  store [2 x i8] %s7.131, [2 x i8]* %sp7.131
  %sp0.1.81 = bitcast [9 x i8]* %spi131 to i72*
;-------------------------------
  %i0.81 = load i72, i72* %sp0.1.81

;-------------------------------
; Replace: %sp1.1.81 = bitcast [9 x i8]* @key.81 to i72*
  %spi132 = alloca [9 x i8]
  
  %s0.132 = load [1 x i8], [1 x i8]* @str.0.132
  %sp0.132 = bitcast [9 x i8]* %spi132 to [1 x i8]*
  store [1 x i8] %s0.132, [1 x i8]* %sp0.132
  %next0.132 = getelementptr [9 x i8], [9 x i8]* %spi132, i32 0, i32 1
  
  %s1.132 = load [1 x i8], [1 x i8]* @str.1.132
  %sp1.132 = bitcast i8* %next0.132 to [1 x i8]*
  store [1 x i8] %s1.132, [1 x i8]* %sp1.132
  %next1.132 = getelementptr [9 x i8], [9 x i8]* %spi132, i32 0, i32 2
  
  %s2.132 = load [1 x i8], [1 x i8]* @str.2.132
  %sp2.132 = bitcast i8* %next1.132 to [1 x i8]*
  store [1 x i8] %s2.132, [1 x i8]* %sp2.132
  %next2.132 = getelementptr [9 x i8], [9 x i8]* %spi132, i32 0, i32 3
  
  %s3.132 = load [1 x i8], [1 x i8]* @str.3.132
  %sp3.132 = bitcast i8* %next2.132 to [1 x i8]*
  store [1 x i8] %s3.132, [1 x i8]* %sp3.132
  %next3.132 = getelementptr [9 x i8], [9 x i8]* %spi132, i32 0, i32 4
  
  %s4.132 = load [1 x i8], [1 x i8]* @str.4.132
  %sp4.132 = bitcast i8* %next3.132 to [1 x i8]*
  store [1 x i8] %s4.132, [1 x i8]* %sp4.132
  %next4.132 = getelementptr [9 x i8], [9 x i8]* %spi132, i32 0, i32 5
  
  %s5.132 = load [1 x i8], [1 x i8]* @str.5.132
  %sp5.132 = bitcast i8* %next4.132 to [1 x i8]*
  store [1 x i8] %s5.132, [1 x i8]* %sp5.132
  %next5.132 = getelementptr [9 x i8], [9 x i8]* %spi132, i32 0, i32 6
  
  %s6.132 = load [1 x i8], [1 x i8]* @str.6.132
  %sp6.132 = bitcast i8* %next5.132 to [1 x i8]*
  store [1 x i8] %s6.132, [1 x i8]* %sp6.132
  %next6.132 = getelementptr [9 x i8], [9 x i8]* %spi132, i32 0, i32 7
  
  %s7.132 = load [2 x i8], [2 x i8]* @str.7.132
  %sp7.132 = bitcast i8* %next6.132 to [2 x i8]*
  store [2 x i8] %s7.132, [2 x i8]* %sp7.132
  %sp1.1.81 = bitcast [9 x i8]* %spi132 to i72*
;-------------------------------
  %i1.81 = load i72, i72* %sp1.1.81

  %xp81 = xor i72 %i0.81, %i1.81

  %fi.81 = alloca i72
  store i72 %xp81, i72* %fi.81

  %final.ptr.81 = bitcast i72* %fi.81 to [9 x i8]*
  %spi81 = load [9 x i8], [9 x i8]* %final.ptr.81
  store [9 x i8] %spi81, [9 x i8]* %cipher.ptr.38
;-------------------------------
  %cipher.38 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.38, i32 0, i32 0
  %plain.ptr.38 = tail call i8* @base64_decode(i8* %cipher.38)
  %spi38 = bitcast i8* %plain.ptr.38 to [4 x i8]*
  %spi.bis.936 = ptrtoint[4 x i8]* %spi38 to i32
;-------------------------------
  store i32 %spi.bis.936, i32* %23, align 16
  store i32 134517377, i32* %24, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.1.lcssa.i, i32 inreg noundef %r_edx.07, i32 noundef %tmp2_v19.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !132
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
define internal fastcc void @check_parity874(i32 %arg_esp) unnamed_addr  norecurse  !retregs !118 {
label_1.i.i:
  %tmp2_v.i27.i = add i32 %arg_esp, 4
  %tmp0_v.i28.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i30.i = add i32 %tmp0_v.i28.i, -4
  %2 = inttoptr i32 %tmp2_v3.i30.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i31.i = add i32 %tmp0_v.i28.i, -8
  %3 = inttoptr i32 %tmp2_v4.i31.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i33.i = add i32 %tmp0_v.i28.i, -12
  %4 = inttoptr i32 %tmp2_v5.i33.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i28.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i27.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i28.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i15.i = add i32 %tmp0_v.i28.i, -20
  %7 = inttoptr i32 %tmp2_v.i15.i to i32*
  store i32 15, i32* %7, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i28.i, -48
  %8 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 15, i32* %8, align 16
  %tmp2_v5.i19.i = add i32 %tmp0_v.i28.i, -52
  %9 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 134517193, i32* %9, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i28.i, -56
  %10 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i31.i, i32* %10, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i28.i, -60
  %11 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517324, i32* %11, align 4
;-------------------------------
; Replace: %spi.bis.872 = ptrtoint[14 x i8]* @str.bis.872 to i32
  %cipher.ptr.40 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\62\6e\56\74\59\6d\56\79\49\47\6c\7a\49\47\39\6b\5a\41\41\3d\00", [21 x i8]* %cipher.ptr.40
;-------------------------------
; Replace: %sp0.1.82 = bitcast [21 x i8]* @str.82 to i168*
  %spi133 = alloca [21 x i8]
  
  %s0.133 = load [2 x i8], [2 x i8]* @str.0.133
  %sp0.133 = bitcast [21 x i8]* %spi133 to [2 x i8]*
  store [2 x i8] %s0.133, [2 x i8]* %sp0.133
  %next0.133 = getelementptr [21 x i8], [21 x i8]* %spi133, i32 0, i32 2
  
  %s1.133 = load [3 x i8], [3 x i8]* @str.1.133
  %sp1.133 = bitcast i8* %next0.133 to [3 x i8]*
  store [3 x i8] %s1.133, [3 x i8]* %sp1.133
  %next1.133 = getelementptr [21 x i8], [21 x i8]* %spi133, i32 0, i32 5
  
  %s2.133 = load [2 x i8], [2 x i8]* @str.2.133
  %sp2.133 = bitcast i8* %next1.133 to [2 x i8]*
  store [2 x i8] %s2.133, [2 x i8]* %sp2.133
  %next2.133 = getelementptr [21 x i8], [21 x i8]* %spi133, i32 0, i32 7
  
  %s3.133 = load [3 x i8], [3 x i8]* @str.3.133
  %sp3.133 = bitcast i8* %next2.133 to [3 x i8]*
  store [3 x i8] %s3.133, [3 x i8]* %sp3.133
  %next3.133 = getelementptr [21 x i8], [21 x i8]* %spi133, i32 0, i32 10
  
  %s4.133 = load [3 x i8], [3 x i8]* @str.4.133
  %sp4.133 = bitcast i8* %next3.133 to [3 x i8]*
  store [3 x i8] %s4.133, [3 x i8]* %sp4.133
  %next4.133 = getelementptr [21 x i8], [21 x i8]* %spi133, i32 0, i32 13
  
  %s5.133 = load [2 x i8], [2 x i8]* @str.5.133
  %sp5.133 = bitcast i8* %next4.133 to [2 x i8]*
  store [2 x i8] %s5.133, [2 x i8]* %sp5.133
  %next5.133 = getelementptr [21 x i8], [21 x i8]* %spi133, i32 0, i32 15
  
  %s6.133 = load [3 x i8], [3 x i8]* @str.6.133
  %sp6.133 = bitcast i8* %next5.133 to [3 x i8]*
  store [3 x i8] %s6.133, [3 x i8]* %sp6.133
  %next6.133 = getelementptr [21 x i8], [21 x i8]* %spi133, i32 0, i32 18
  
  %s7.133 = load [3 x i8], [3 x i8]* @str.7.133
  %sp7.133 = bitcast i8* %next6.133 to [3 x i8]*
  store [3 x i8] %s7.133, [3 x i8]* %sp7.133
  %sp0.1.82 = bitcast [21 x i8]* %spi133 to i168*
;-------------------------------
  %i0.82 = load i168, i168* %sp0.1.82

;-------------------------------
; Replace: %sp1.1.82 = bitcast [21 x i8]* @key.82 to i168*
  %spi134 = alloca [21 x i8]
  
  %s0.134 = load [2 x i8], [2 x i8]* @str.0.134
  %sp0.134 = bitcast [21 x i8]* %spi134 to [2 x i8]*
  store [2 x i8] %s0.134, [2 x i8]* %sp0.134
  %next0.134 = getelementptr [21 x i8], [21 x i8]* %spi134, i32 0, i32 2
  
  %s1.134 = load [3 x i8], [3 x i8]* @str.1.134
  %sp1.134 = bitcast i8* %next0.134 to [3 x i8]*
  store [3 x i8] %s1.134, [3 x i8]* %sp1.134
  %next1.134 = getelementptr [21 x i8], [21 x i8]* %spi134, i32 0, i32 5
  
  %s2.134 = load [2 x i8], [2 x i8]* @str.2.134
  %sp2.134 = bitcast i8* %next1.134 to [2 x i8]*
  store [2 x i8] %s2.134, [2 x i8]* %sp2.134
  %next2.134 = getelementptr [21 x i8], [21 x i8]* %spi134, i32 0, i32 7
  
  %s3.134 = load [3 x i8], [3 x i8]* @str.3.134
  %sp3.134 = bitcast i8* %next2.134 to [3 x i8]*
  store [3 x i8] %s3.134, [3 x i8]* %sp3.134
  %next3.134 = getelementptr [21 x i8], [21 x i8]* %spi134, i32 0, i32 10
  
  %s4.134 = load [3 x i8], [3 x i8]* @str.4.134
  %sp4.134 = bitcast i8* %next3.134 to [3 x i8]*
  store [3 x i8] %s4.134, [3 x i8]* %sp4.134
  %next4.134 = getelementptr [21 x i8], [21 x i8]* %spi134, i32 0, i32 13
  
  %s5.134 = load [2 x i8], [2 x i8]* @str.5.134
  %sp5.134 = bitcast i8* %next4.134 to [2 x i8]*
  store [2 x i8] %s5.134, [2 x i8]* %sp5.134
  %next5.134 = getelementptr [21 x i8], [21 x i8]* %spi134, i32 0, i32 15
  
  %s6.134 = load [3 x i8], [3 x i8]* @str.6.134
  %sp6.134 = bitcast i8* %next5.134 to [3 x i8]*
  store [3 x i8] %s6.134, [3 x i8]* %sp6.134
  %next6.134 = getelementptr [21 x i8], [21 x i8]* %spi134, i32 0, i32 18
  
  %s7.134 = load [3 x i8], [3 x i8]* @str.7.134
  %sp7.134 = bitcast i8* %next6.134 to [3 x i8]*
  store [3 x i8] %s7.134, [3 x i8]* %sp7.134
  %sp1.1.82 = bitcast [21 x i8]* %spi134 to i168*
;-------------------------------
  %i1.82 = load i168, i168* %sp1.1.82

  %xp82 = xor i168 %i0.82, %i1.82

  %fi.82 = alloca i168
  store i168 %xp82, i168* %fi.82

  %final.ptr.82 = bitcast i168* %fi.82 to [21 x i8]*
  %spi82 = load [21 x i8], [21 x i8]* %final.ptr.82
  store [21 x i8] %spi82, [21 x i8]* %cipher.ptr.40
;-------------------------------
  %cipher.40 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.40, i32 0, i32 0
  %plain.ptr.40 = tail call i8* @base64_decode(i8* %cipher.40)
  %spi40 = bitcast i8* %plain.ptr.40 to [14 x i8]*
  %spi.bis.872 = ptrtoint[14 x i8]* %spi40 to i32
;-------------------------------
  store i32 %spi.bis.872, i32* %8, align 16
  store i32 134517253, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %12 = inttoptr i32 %arg.i.i to i8*
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) %12)
  ret void
}
define internal fastcc void @is_prime2(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !107 {
BB_80491C0.i.lr.ph:
  %tmp2_v.i2.i = add i32 %arg_esp, 4
  %tmp0_v.i3.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i5.i = add i32 %tmp0_v.i3.i, -4
  %2 = inttoptr i32 %tmp2_v3.i5.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i3.i, -8
  %3 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i3.i, -12
  %4 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i3.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i2.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i3.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517169, i32* %6, align 4
  %tmp2_v.i60.i = add i32 %tmp0_v.i3.i, -20
  %7 = inttoptr i32 %tmp2_v.i60.i to i32*
  store i32 2, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i3.i, -48
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
  %tmp2_v3.i12.i = add i32 %tmp0_v.i3.i, -52
  %9 = inttoptr i32 %tmp2_v3.i12.i to i32*
  %tmp2_v.i21.i.i = add i32 %tmp0_v.i3.i, -56
  %10 = inttoptr i32 %tmp2_v.i21.i.i to i32*
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i3.i, -76
  %11 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  %tmp2_v.i36.i.i = add i32 %tmp0_v.i3.i, -60
  %12 = inttoptr i32 %tmp2_v.i36.i.i to i32*
  %tmp2_v2.i39.i = add i32 %tmp0_v.i3.i, -44
  %13 = inttoptr i32 %tmp2_v2.i39.i to i32*
  br label %BB_80491C0.i

BB_80491C0.i:                                     ; preds = %BB_80491FE.i, %BB_80491C0.i.lr.ph
  %14 = phi i32 [ 2, %BB_80491C0.i.lr.ph ], [ %tmp0_v1.i52.i, %BB_80491FE.i ]
  %r_ebp.06 = phi i32 [ %tmp2_v4.i.i, %BB_80491C0.i.lr.ph ], [ %28, %BB_80491FE.i ]
  store i32 %14, i32* %8, align 16
  store i32 134517195, i32* %9, align 4
  store i32 %r_ebp.06, i32* %10, align 8
  store i32 134517289, i32* %11, align 4
  store i32 2, i32* %12, align 4
  %15 = load i32, i32* %8, align 16
  %tmp0_v1.i.i16.i = lshr i32 %15, 31
  %tmp0_v2.i.i17.i = add i32 %tmp0_v1.i.i16.i, %15
  %.not.i.i19.i = icmp slt i32 %tmp0_v2.i.i17.i, 4
  br i1 %.not.i.i19.i, label %BB_80491FE.i, label %BB_8049244.i.i

BB_804925C.i.i:                                   ; preds = %BB_8049244.i.i
  store i32 %tmp0_v1.i14.i.i, i32* %12, align 4
  %16 = load i32, i32* %8, align 16
  %tmp0_v1.i.i.i = lshr i32 %16, 31
  %tmp0_v2.i.i.i = add i32 %tmp0_v1.i.i.i, %16
  %tmp0_v3.i.i.i = ashr i32 %tmp0_v2.i.i.i, 1
  %.not.i.i.not.i = icmp slt i32 %storemerge20.i, %tmp0_v3.i.i.i
  br i1 %.not.i.i.not.i, label %BB_8049244.i.i, label %BB_80491FE.i

BB_8049244.i.i:                                   ; preds = %BB_804925C.i.i, %BB_80491C0.i
  %17 = phi i32 [ %16, %BB_804925C.i.i ], [ %15, %BB_80491C0.i ]
  %storemerge20.i = phi i32 [ %tmp0_v1.i14.i.i, %BB_804925C.i.i ], [ 2, %BB_80491C0.i ]
  %tmp0_v1.i4.i.i = ashr i32 %17, 31
  %18 = zext i32 %17 to i64
  %19 = zext i32 %tmp0_v1.i4.i.i to i64
  %20 = shl nuw i64 %19, 32
  %21 = or i64 %20, %18
  %22 = zext i32 %storemerge20.i to i64
  %.frozen = freeze i64 %21
  %.frozen13 = freeze i64 %22
  %23 = sdiv i64 %.frozen, %.frozen13
  %24 = add i64 %23, 2147483648
  %25 = icmp ult i64 %24, 4294967296
  tail call void @llvm.assume(i1 %25)  nounwind 
  %26 = mul i64 %23, %.frozen13
  %.decomposed = sub i64 %.frozen, %26
  %27 = trunc i64 %.decomposed to i32
  %.not.i6.i.i = icmp eq i32 %27, 0
  %tmp0_v1.i14.i.i = add nuw nsw i32 %storemerge20.i, 1
  br i1 %.not.i6.i.i, label %BB_80491FE.i, label %BB_804925C.i.i

BB_80491FE.i:                                     ; preds = %BB_8049244.i.i, %BB_804925C.i.i, %BB_80491C0.i
  %.sink9 = phi i32 [ 134520840, %BB_80491C0.i ], [ 134520853, %BB_8049244.i.i ], [ 134520840, %BB_804925C.i.i ]
  %.sink = phi i32 [ 134517220, %BB_80491C0.i ], [ 134517243, %BB_8049244.i.i ], [ 134517220, %BB_804925C.i.i ]
  %r_edx.0.i.ph.sink = phi i32 [ %tmp0_v1.i.i16.i, %BB_80491C0.i ], [ 0, %BB_8049244.i.i ], [ %tmp0_v1.i.i.i, %BB_804925C.i.i ]
  %28 = load i32, i32* %10, align 8
  %tmp2_v.i37.i = add i32 %28, -12
  %29 = inttoptr i32 %tmp2_v.i37.i to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  store i32 %.sink9, i32* %8, align 16
  store i32 %.sink, i32* %9, align 4
  %31 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i2.i, i32 inreg noundef %r_edx.0.i.ph.sink, i32 noundef %tmp2_v2.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" 
  %32 = load i32, i32* %29, align 4
  %tmp0_v1.i52.i = add i32 %32, 1
  store i32 %tmp0_v1.i52.i, i32* %29, align 4
  %33 = icmp slt i32 %tmp0_v1.i52.i, 1001
  br i1 %33, label %BB_80491C0.i, label %.exit

.exit:                                            ; preds = %BB_80491FE.i
  ret void
}
define internal fastcc void @isalnum272(i32 %arg_esp) unnamed_addr  norecurse  !retregs !93 {
.exit:
  %tmp2_v.i20.i = add i32 %arg_esp, 4
  %tmp0_v.i21.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i23.i = add i32 %tmp0_v.i21.i, -4
  %2 = inttoptr i32 %tmp2_v3.i23.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i24.i = add i32 %tmp0_v.i21.i, -8
  %3 = inttoptr i32 %tmp2_v4.i24.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i26.i = add i32 %tmp0_v.i21.i, -12
  %4 = inttoptr i32 %tmp2_v5.i26.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i21.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i20.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i21.i, -36
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  %tmp2_v.i3.i = add i32 %tmp0_v.i21.i, -17
  %7 = inttoptr i32 %tmp2_v.i3.i to i8*
  store i8 100, i8* %7, align 1
  store i32 134517216, i32* %6, align 4
  %8 = tail call i32 @__ctype_b_loc()
  %9 = load i8, i8* %7, align 1
  %tmp0_v1.i7.i = sext i8 %9 to i32
  %tmp0_v2.i.i = shl nsw i32 %tmp0_v1.i7.i, 1
  %tmp2_v2.i.i = add i32 %tmp0_v.i21.i, -44
  %10 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %tmp0_v1.i7.i, i32* %10, align 4
  %tmp2_v4.i16.i = add i32 %tmp0_v.i21.i, -48
  %11 = inttoptr i32 %tmp2_v4.i16.i to i32*
;-------------------------------
; Replace: %spi.bis.270 = ptrtoint[20 x i8]* @str.bis.270 to i32
  %cipher.ptr.41 = alloca [29 x i8]
;-------------------------------
; Replace: store [29 x i8] c"\4a\57\4d\67\61\58\4d\67\59\57\78\77\61\47\46\75\64\57\31\6c\63\6d\6c\6a\43\67\41\3d\00", [29 x i8]* %cipher.ptr.41
;-------------------------------
; Replace: %sp0.1.83 = bitcast [29 x i8]* @str.83 to i232*
  %spi135 = alloca [29 x i8]
  
  %s0.135 = load [3 x i8], [3 x i8]* @str.0.135
  %sp0.135 = bitcast [29 x i8]* %spi135 to [3 x i8]*
  store [3 x i8] %s0.135, [3 x i8]* %sp0.135
  %next0.135 = getelementptr [29 x i8], [29 x i8]* %spi135, i32 0, i32 3
  
  %s1.135 = load [4 x i8], [4 x i8]* @str.1.135
  %sp1.135 = bitcast i8* %next0.135 to [4 x i8]*
  store [4 x i8] %s1.135, [4 x i8]* %sp1.135
  %next1.135 = getelementptr [29 x i8], [29 x i8]* %spi135, i32 0, i32 7
  
  %s2.135 = load [3 x i8], [3 x i8]* @str.2.135
  %sp2.135 = bitcast i8* %next1.135 to [3 x i8]*
  store [3 x i8] %s2.135, [3 x i8]* %sp2.135
  %next2.135 = getelementptr [29 x i8], [29 x i8]* %spi135, i32 0, i32 10
  
  %s3.135 = load [4 x i8], [4 x i8]* @str.3.135
  %sp3.135 = bitcast i8* %next2.135 to [4 x i8]*
  store [4 x i8] %s3.135, [4 x i8]* %sp3.135
  %next3.135 = getelementptr [29 x i8], [29 x i8]* %spi135, i32 0, i32 14
  
  %s4.135 = load [4 x i8], [4 x i8]* @str.4.135
  %sp4.135 = bitcast i8* %next3.135 to [4 x i8]*
  store [4 x i8] %s4.135, [4 x i8]* %sp4.135
  %next4.135 = getelementptr [29 x i8], [29 x i8]* %spi135, i32 0, i32 18
  
  %s5.135 = load [3 x i8], [3 x i8]* @str.5.135
  %sp5.135 = bitcast i8* %next4.135 to [3 x i8]*
  store [3 x i8] %s5.135, [3 x i8]* %sp5.135
  %next5.135 = getelementptr [29 x i8], [29 x i8]* %spi135, i32 0, i32 21
  
  %s6.135 = load [4 x i8], [4 x i8]* @str.6.135
  %sp6.135 = bitcast i8* %next5.135 to [4 x i8]*
  store [4 x i8] %s6.135, [4 x i8]* %sp6.135
  %next6.135 = getelementptr [29 x i8], [29 x i8]* %spi135, i32 0, i32 25
  
  %s7.135 = load [4 x i8], [4 x i8]* @str.7.135
  %sp7.135 = bitcast i8* %next6.135 to [4 x i8]*
  store [4 x i8] %s7.135, [4 x i8]* %sp7.135
  %sp0.1.83 = bitcast [29 x i8]* %spi135 to i232*
;-------------------------------
  %i0.83 = load i232, i232* %sp0.1.83

;-------------------------------
; Replace: %sp1.1.83 = bitcast [29 x i8]* @key.83 to i232*
  %spi136 = alloca [29 x i8]
  
  %s0.136 = load [3 x i8], [3 x i8]* @str.0.136
  %sp0.136 = bitcast [29 x i8]* %spi136 to [3 x i8]*
  store [3 x i8] %s0.136, [3 x i8]* %sp0.136
  %next0.136 = getelementptr [29 x i8], [29 x i8]* %spi136, i32 0, i32 3
  
  %s1.136 = load [4 x i8], [4 x i8]* @str.1.136
  %sp1.136 = bitcast i8* %next0.136 to [4 x i8]*
  store [4 x i8] %s1.136, [4 x i8]* %sp1.136
  %next1.136 = getelementptr [29 x i8], [29 x i8]* %spi136, i32 0, i32 7
  
  %s2.136 = load [3 x i8], [3 x i8]* @str.2.136
  %sp2.136 = bitcast i8* %next1.136 to [3 x i8]*
  store [3 x i8] %s2.136, [3 x i8]* %sp2.136
  %next2.136 = getelementptr [29 x i8], [29 x i8]* %spi136, i32 0, i32 10
  
  %s3.136 = load [4 x i8], [4 x i8]* @str.3.136
  %sp3.136 = bitcast i8* %next2.136 to [4 x i8]*
  store [4 x i8] %s3.136, [4 x i8]* %sp3.136
  %next3.136 = getelementptr [29 x i8], [29 x i8]* %spi136, i32 0, i32 14
  
  %s4.136 = load [4 x i8], [4 x i8]* @str.4.136
  %sp4.136 = bitcast i8* %next3.136 to [4 x i8]*
  store [4 x i8] %s4.136, [4 x i8]* %sp4.136
  %next4.136 = getelementptr [29 x i8], [29 x i8]* %spi136, i32 0, i32 18
  
  %s5.136 = load [3 x i8], [3 x i8]* @str.5.136
  %sp5.136 = bitcast i8* %next4.136 to [3 x i8]*
  store [3 x i8] %s5.136, [3 x i8]* %sp5.136
  %next5.136 = getelementptr [29 x i8], [29 x i8]* %spi136, i32 0, i32 21
  
  %s6.136 = load [4 x i8], [4 x i8]* @str.6.136
  %sp6.136 = bitcast i8* %next5.136 to [4 x i8]*
  store [4 x i8] %s6.136, [4 x i8]* %sp6.136
  %next6.136 = getelementptr [29 x i8], [29 x i8]* %spi136, i32 0, i32 25
  
  %s7.136 = load [4 x i8], [4 x i8]* @str.7.136
  %sp7.136 = bitcast i8* %next6.136 to [4 x i8]*
  store [4 x i8] %s7.136, [4 x i8]* %sp7.136
  %sp1.1.83 = bitcast [29 x i8]* %spi136 to i232*
;-------------------------------
  %i1.83 = load i232, i232* %sp1.1.83

  %xp83 = xor i232 %i0.83, %i1.83

  %fi.83 = alloca i232
  store i232 %xp83, i232* %fi.83

  %final.ptr.83 = bitcast i232* %fi.83 to [29 x i8]*
  %spi83 = load [29 x i8], [29 x i8]* %final.ptr.83
  store [29 x i8] %spi83, [29 x i8]* %cipher.ptr.41
;-------------------------------
  %cipher.41 = getelementptr inbounds [29 x i8], [29 x i8]* %cipher.ptr.41, i32 0, i32 0
  %plain.ptr.41 = tail call i8* @base64_decode(i8* %cipher.41)
  %spi41 = bitcast i8* %plain.ptr.41 to [20 x i8]*
  %spi.bis.270 = ptrtoint[20 x i8]* %spi41 to i32
;-------------------------------
  store i32 %spi.bis.270, i32* %11, align 16
  %tmp2_v5.i.i = add i32 %tmp0_v.i21.i, -52
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 134517259, i32* %12, align 4
  %13 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i20.i, i32 inreg noundef %tmp0_v2.i.i, i32 noundef %tmp2_v4.i16.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !94
  ret void
}
define internal fastcc void @second_lowest347(i32 %arg_esp) unnamed_addr  norecurse nounwind  !retregs !79 {
.exit:
  %tmp2_v.i20.i = add i32 %arg_esp, 4
  %tmp0_v.i21.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i22.i = add i32 %tmp0_v.i21.i, -4
  %2 = inttoptr i32 %tmp2_v3.i22.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i23.i = add i32 %tmp0_v.i21.i, -8
  %3 = inttoptr i32 %tmp2_v4.i23.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i25.i = add i32 %tmp0_v.i21.i, -12
  %4 = inttoptr i32 %tmp2_v5.i25.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i27.i = add i32 %tmp0_v.i21.i, -16
  %5 = inttoptr i32 %tmp2_v6.i27.i to i32*
  store i32 %tmp2_v.i20.i, i32* %5, align 16
  %tmp2_v8.i28.i = add i32 %tmp0_v.i21.i, -68
  %6 = inttoptr i32 %tmp2_v8.i28.i to i32*
  store i32 134517201, i32* %6, align 4
  %tmp4_v.i.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i21.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i21.i, -60
  %10 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 9, i32* %10, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i21.i, -56
  %11 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 8, i32* %11, align 8
  %tmp2_v5.i.i = add i32 %tmp0_v.i21.i, -52
  %12 = inttoptr i32 %tmp2_v5.i.i to i32*
  store i32 7, i32* %12, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i21.i, -48
  %13 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 6, i32* %13, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i21.i, -44
  %14 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 5, i32* %14, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i21.i, -40
  %15 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 0, i32* %15, align 8
  %tmp2_v9.i.i = add i32 %tmp0_v.i21.i, -36
  %16 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 1, i32* %16, align 4
  %tmp2_v10.i.i = add i32 %tmp0_v.i21.i, -32
  %17 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 2, i32* %17, align 16
  %tmp2_v11.i.i = add i32 %tmp0_v.i21.i, -28
  %18 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 3, i32* %18, align 4
  %tmp2_v12.i.i = add i32 %tmp0_v.i21.i, -24
  %19 = inttoptr i32 %tmp2_v12.i.i to i32*
  store i32 4, i32* %19, align 8
  %tmp2_v14.i.i = add i32 %tmp0_v.i21.i, -76
  %20 = inttoptr i32 %tmp2_v14.i.i to i32*
  store i32 10, i32* %20, align 4
  %tmp2_v16.i.i = add i32 %tmp0_v.i21.i, -80
  %21 = inttoptr i32 %tmp2_v16.i.i to i32*
  store i32 %tmp2_v3.i.i, i32* %21, align 16
  %tmp2_v17.i.i = add i32 %tmp0_v.i21.i, -84
  %22 = inttoptr i32 %tmp2_v17.i.i to i32*
  store i32 134517302, i32* %22, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i21.i, -88
  %23 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i23.i, i32* %23, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i21.i, -108
  %24 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134517376, i32* %24, align 4
  %25 = load i32, i32* %21, align 16
  %26 = inttoptr i32 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %tmp2_v1.i86.i.i = add i32 %25, 4
  %28 = inttoptr i32 %tmp2_v1.i86.i.i to i32*
  %29 = load i32, i32* %28, align 4
  %tmp2_v3.i88.i.i = add i32 %tmp0_v.i21.i, -100
  %30 = inttoptr i32 %tmp2_v3.i88.i.i to i32*
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %21, align 16
  %32 = inttoptr i32 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %tmp2_v7.i.i.i = add i32 %tmp0_v.i21.i, -96
  %34 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 %33, i32* %34, align 16
  %tmp2_v8.i92.i.i = add i32 %tmp0_v.i21.i, -92
  %35 = inttoptr i32 %tmp2_v8.i92.i.i to i32*
  store i32 2, i32* %35, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %BB_80492C3.i.i, label %Func_second_lowest.exit

BB_80492D9.i.i:                                   ; preds = %BB_80492C3.i.i
  store i32 %45, i32* %34, align 16
  %38 = load i32, i32* %35, align 4
  %tmp4_v.i8.i.i = shl i32 %38, 2
  %39 = load i32, i32* %21, align 16
  %tmp0_v6.i.i.i = add i32 %39, %tmp4_v.i8.i.i
  %40 = inttoptr i32 %tmp0_v6.i.i.i to i32*
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %30, align 4
  br label %BB_8049335.i.i

BB_80492C3.i.i:                                   ; preds = %BB_8049335.i.i, %.exit
  %storemerge19.i = phi i32 [ %tmp0_v1.i32.i.i, %BB_8049335.i.i ], [ 2, %.exit ]
  %tmp4_v.i20.i.i = shl i32 %storemerge19.i, 2
  %42 = load i32, i32* %21, align 16
  %tmp0_v3.i23.i.i = add i32 %42, %tmp4_v.i20.i.i
  %43 = inttoptr i32 %tmp0_v3.i23.i.i to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %30, align 4
  %.not.i.i.i = icmp sgt i32 %45, %44
  br i1 %.not.i.i.i, label %BB_80492D9.i.i, label %BB_80492F5.i.i

BB_8049335.i.i:                                   ; preds = %BB_80492F5.i.i, %Func_804930B.exit.i.i, %BB_80492D9.i.i
  %r_edx.0.i = phi i32 [ %tmp4_v.i20.i.i, %BB_80492F5.i.i ], [ %tmp4_v.i20.i.i, %Func_804930B.exit.i.i ], [ %tmp4_v.i8.i.i, %BB_80492D9.i.i ]
  %46 = load i32, i32* %35, align 4
  %tmp0_v1.i32.i.i = add i32 %46, 1
  store i32 %tmp0_v1.i32.i.i, i32* %35, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp slt i32 %tmp0_v1.i32.i.i, %47
  br i1 %48, label %BB_80492C3.i.i, label %Func_second_lowest.exit

Func_804930B.exit.i.i:                            ; preds = %BB_80492F5.i.i
  store i32 %44, i32* %34, align 16
  br label %BB_8049335.i.i

BB_80492F5.i.i:                                   ; preds = %BB_80492C3.i.i
  %49 = load i32, i32* %34, align 16
  %.not.i81.i.i = icmp sgt i32 %49, %44
  br i1 %.not.i81.i.i, label %Func_804930B.exit.i.i, label %BB_8049335.i.i

Func_second_lowest.exit:                          ; preds = %BB_8049335.i.i, %.exit
  %r_edx.1.lcssa.i = phi i32 [ %27, %.exit ], [ %r_edx.0.i, %BB_8049335.i.i ]
  %50 = load i32, i32* %34, align 16
  %51 = load i32, i32* %23, align 8
  %tmp2_v.i11.i = add i32 %51, -56
  %52 = inttoptr i32 %tmp2_v.i11.i to i32*
  store i32 %50, i32* %52, align 4
  store i32 %50, i32* %20, align 4
;-------------------------------
; Replace: %spi.bis.345 = ptrtoint[19 x i8]* @str.bis.345 to i32
  %cipher.ptr.42 = alloca [29 x i8]
;-------------------------------
; Replace: store [29 x i8] c"\63\32\56\6a\62\32\35\6b\49\47\78\76\64\32\56\7a\64\44\6f\67\4a\57\51\4b\41\41\3d\3d\00", [29 x i8]* %cipher.ptr.42
;-------------------------------
; Replace: %sp0.1.84 = bitcast [29 x i8]* @str.84 to i232*
  %spi137 = alloca [29 x i8]
  
  %s0.137 = load [3 x i8], [3 x i8]* @str.0.137
  %sp0.137 = bitcast [29 x i8]* %spi137 to [3 x i8]*
  store [3 x i8] %s0.137, [3 x i8]* %sp0.137
  %next0.137 = getelementptr [29 x i8], [29 x i8]* %spi137, i32 0, i32 3
  
  %s1.137 = load [4 x i8], [4 x i8]* @str.1.137
  %sp1.137 = bitcast i8* %next0.137 to [4 x i8]*
  store [4 x i8] %s1.137, [4 x i8]* %sp1.137
  %next1.137 = getelementptr [29 x i8], [29 x i8]* %spi137, i32 0, i32 7
  
  %s2.137 = load [3 x i8], [3 x i8]* @str.2.137
  %sp2.137 = bitcast i8* %next1.137 to [3 x i8]*
  store [3 x i8] %s2.137, [3 x i8]* %sp2.137
  %next2.137 = getelementptr [29 x i8], [29 x i8]* %spi137, i32 0, i32 10
  
  %s3.137 = load [4 x i8], [4 x i8]* @str.3.137
  %sp3.137 = bitcast i8* %next2.137 to [4 x i8]*
  store [4 x i8] %s3.137, [4 x i8]* %sp3.137
  %next3.137 = getelementptr [29 x i8], [29 x i8]* %spi137, i32 0, i32 14
  
  %s4.137 = load [4 x i8], [4 x i8]* @str.4.137
  %sp4.137 = bitcast i8* %next3.137 to [4 x i8]*
  store [4 x i8] %s4.137, [4 x i8]* %sp4.137
  %next4.137 = getelementptr [29 x i8], [29 x i8]* %spi137, i32 0, i32 18
  
  %s5.137 = load [3 x i8], [3 x i8]* @str.5.137
  %sp5.137 = bitcast i8* %next4.137 to [3 x i8]*
  store [3 x i8] %s5.137, [3 x i8]* %sp5.137
  %next5.137 = getelementptr [29 x i8], [29 x i8]* %spi137, i32 0, i32 21
  
  %s6.137 = load [4 x i8], [4 x i8]* @str.6.137
  %sp6.137 = bitcast i8* %next5.137 to [4 x i8]*
  store [4 x i8] %s6.137, [4 x i8]* %sp6.137
  %next6.137 = getelementptr [29 x i8], [29 x i8]* %spi137, i32 0, i32 25
  
  %s7.137 = load [4 x i8], [4 x i8]* @str.7.137
  %sp7.137 = bitcast i8* %next6.137 to [4 x i8]*
  store [4 x i8] %s7.137, [4 x i8]* %sp7.137
  %sp0.1.84 = bitcast [29 x i8]* %spi137 to i232*
;-------------------------------
  %i0.84 = load i232, i232* %sp0.1.84

;-------------------------------
; Replace: %sp1.1.84 = bitcast [29 x i8]* @key.84 to i232*
  %spi138 = alloca [29 x i8]
  
  %s0.138 = load [3 x i8], [3 x i8]* @str.0.138
  %sp0.138 = bitcast [29 x i8]* %spi138 to [3 x i8]*
  store [3 x i8] %s0.138, [3 x i8]* %sp0.138
  %next0.138 = getelementptr [29 x i8], [29 x i8]* %spi138, i32 0, i32 3
  
  %s1.138 = load [4 x i8], [4 x i8]* @str.1.138
  %sp1.138 = bitcast i8* %next0.138 to [4 x i8]*
  store [4 x i8] %s1.138, [4 x i8]* %sp1.138
  %next1.138 = getelementptr [29 x i8], [29 x i8]* %spi138, i32 0, i32 7
  
  %s2.138 = load [3 x i8], [3 x i8]* @str.2.138
  %sp2.138 = bitcast i8* %next1.138 to [3 x i8]*
  store [3 x i8] %s2.138, [3 x i8]* %sp2.138
  %next2.138 = getelementptr [29 x i8], [29 x i8]* %spi138, i32 0, i32 10
  
  %s3.138 = load [4 x i8], [4 x i8]* @str.3.138
  %sp3.138 = bitcast i8* %next2.138 to [4 x i8]*
  store [4 x i8] %s3.138, [4 x i8]* %sp3.138
  %next3.138 = getelementptr [29 x i8], [29 x i8]* %spi138, i32 0, i32 14
  
  %s4.138 = load [4 x i8], [4 x i8]* @str.4.138
  %sp4.138 = bitcast i8* %next3.138 to [4 x i8]*
  store [4 x i8] %s4.138, [4 x i8]* %sp4.138
  %next4.138 = getelementptr [29 x i8], [29 x i8]* %spi138, i32 0, i32 18
  
  %s5.138 = load [3 x i8], [3 x i8]* @str.5.138
  %sp5.138 = bitcast i8* %next4.138 to [3 x i8]*
  store [3 x i8] %s5.138, [3 x i8]* %sp5.138
  %next5.138 = getelementptr [29 x i8], [29 x i8]* %spi138, i32 0, i32 21
  
  %s6.138 = load [4 x i8], [4 x i8]* @str.6.138
  %sp6.138 = bitcast i8* %next5.138 to [4 x i8]*
  store [4 x i8] %s6.138, [4 x i8]* %sp6.138
  %next6.138 = getelementptr [29 x i8], [29 x i8]* %spi138, i32 0, i32 25
  
  %s7.138 = load [4 x i8], [4 x i8]* @str.7.138
  %sp7.138 = bitcast i8* %next6.138 to [4 x i8]*
  store [4 x i8] %s7.138, [4 x i8]* %sp7.138
  %sp1.1.84 = bitcast [29 x i8]* %spi138 to i232*
;-------------------------------
  %i1.84 = load i232, i232* %sp1.1.84

  %xp84 = xor i232 %i0.84, %i1.84

  %fi.84 = alloca i232
  store i232 %xp84, i232* %fi.84

  %final.ptr.84 = bitcast i232* %fi.84 to [29 x i8]*
  %spi84 = load [29 x i8], [29 x i8]* %final.ptr.84
  store [29 x i8] %spi84, [29 x i8]* %cipher.ptr.42
;-------------------------------
  %cipher.42 = getelementptr inbounds [29 x i8], [29 x i8]* %cipher.ptr.42, i32 0, i32 0
  %plain.ptr.42 = tail call i8* @base64_decode(i8* %cipher.42)
  %spi42 = bitcast i8* %plain.ptr.42 to [19 x i8]*
  %spi.bis.345 = ptrtoint[19 x i8]* %spi42 to i32
;-------------------------------
  store i32 %spi.bis.345, i32* %21, align 16
  store i32 134517326, i32* %22, align 4
  %53 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i20.i, i32 inreg noundef %r_edx.1.lcssa.i, i32 noundef %tmp2_v16.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !80
  ret void
}
define internal fastcc void @min_occur_char395(i32 %arg_esp) unnamed_addr  norecurse  !retregs !65 {
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
  %cipher.ptr.43 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\4a\57\4d\36\4a\57\51\4b\41\41\3d\3d\00", [13 x i8]* %cipher.ptr.43
;-------------------------------
; Replace: %sp0.1.85 = bitcast [13 x i8]* @str.85 to i104*
  %spi139 = alloca [13 x i8]
  
  %s0.139 = load [1 x i8], [1 x i8]* @str.0.139
  %sp0.139 = bitcast [13 x i8]* %spi139 to [1 x i8]*
  store [1 x i8] %s0.139, [1 x i8]* %sp0.139
  %next0.139 = getelementptr [13 x i8], [13 x i8]* %spi139, i32 0, i32 1
  
  %s1.139 = load [2 x i8], [2 x i8]* @str.1.139
  %sp1.139 = bitcast i8* %next0.139 to [2 x i8]*
  store [2 x i8] %s1.139, [2 x i8]* %sp1.139
  %next1.139 = getelementptr [13 x i8], [13 x i8]* %spi139, i32 0, i32 3
  
  %s2.139 = load [1 x i8], [1 x i8]* @str.2.139
  %sp2.139 = bitcast i8* %next1.139 to [1 x i8]*
  store [1 x i8] %s2.139, [1 x i8]* %sp2.139
  %next2.139 = getelementptr [13 x i8], [13 x i8]* %spi139, i32 0, i32 4
  
  %s3.139 = load [2 x i8], [2 x i8]* @str.3.139
  %sp3.139 = bitcast i8* %next2.139 to [2 x i8]*
  store [2 x i8] %s3.139, [2 x i8]* %sp3.139
  %next3.139 = getelementptr [13 x i8], [13 x i8]* %spi139, i32 0, i32 6
  
  %s4.139 = load [2 x i8], [2 x i8]* @str.4.139
  %sp4.139 = bitcast i8* %next3.139 to [2 x i8]*
  store [2 x i8] %s4.139, [2 x i8]* %sp4.139
  %next4.139 = getelementptr [13 x i8], [13 x i8]* %spi139, i32 0, i32 8
  
  %s5.139 = load [1 x i8], [1 x i8]* @str.5.139
  %sp5.139 = bitcast i8* %next4.139 to [1 x i8]*
  store [1 x i8] %s5.139, [1 x i8]* %sp5.139
  %next5.139 = getelementptr [13 x i8], [13 x i8]* %spi139, i32 0, i32 9
  
  %s6.139 = load [2 x i8], [2 x i8]* @str.6.139
  %sp6.139 = bitcast i8* %next5.139 to [2 x i8]*
  store [2 x i8] %s6.139, [2 x i8]* %sp6.139
  %next6.139 = getelementptr [13 x i8], [13 x i8]* %spi139, i32 0, i32 11
  
  %s7.139 = load [2 x i8], [2 x i8]* @str.7.139
  %sp7.139 = bitcast i8* %next6.139 to [2 x i8]*
  store [2 x i8] %s7.139, [2 x i8]* %sp7.139
  %sp0.1.85 = bitcast [13 x i8]* %spi139 to i104*
;-------------------------------
  %i0.85 = load i104, i104* %sp0.1.85

;-------------------------------
; Replace: %sp1.1.85 = bitcast [13 x i8]* @key.85 to i104*
  %spi140 = alloca [13 x i8]
  
  %s0.140 = load [1 x i8], [1 x i8]* @str.0.140
  %sp0.140 = bitcast [13 x i8]* %spi140 to [1 x i8]*
  store [1 x i8] %s0.140, [1 x i8]* %sp0.140
  %next0.140 = getelementptr [13 x i8], [13 x i8]* %spi140, i32 0, i32 1
  
  %s1.140 = load [2 x i8], [2 x i8]* @str.1.140
  %sp1.140 = bitcast i8* %next0.140 to [2 x i8]*
  store [2 x i8] %s1.140, [2 x i8]* %sp1.140
  %next1.140 = getelementptr [13 x i8], [13 x i8]* %spi140, i32 0, i32 3
  
  %s2.140 = load [1 x i8], [1 x i8]* @str.2.140
  %sp2.140 = bitcast i8* %next1.140 to [1 x i8]*
  store [1 x i8] %s2.140, [1 x i8]* %sp2.140
  %next2.140 = getelementptr [13 x i8], [13 x i8]* %spi140, i32 0, i32 4
  
  %s3.140 = load [2 x i8], [2 x i8]* @str.3.140
  %sp3.140 = bitcast i8* %next2.140 to [2 x i8]*
  store [2 x i8] %s3.140, [2 x i8]* %sp3.140
  %next3.140 = getelementptr [13 x i8], [13 x i8]* %spi140, i32 0, i32 6
  
  %s4.140 = load [2 x i8], [2 x i8]* @str.4.140
  %sp4.140 = bitcast i8* %next3.140 to [2 x i8]*
  store [2 x i8] %s4.140, [2 x i8]* %sp4.140
  %next4.140 = getelementptr [13 x i8], [13 x i8]* %spi140, i32 0, i32 8
  
  %s5.140 = load [1 x i8], [1 x i8]* @str.5.140
  %sp5.140 = bitcast i8* %next4.140 to [1 x i8]*
  store [1 x i8] %s5.140, [1 x i8]* %sp5.140
  %next5.140 = getelementptr [13 x i8], [13 x i8]* %spi140, i32 0, i32 9
  
  %s6.140 = load [2 x i8], [2 x i8]* @str.6.140
  %sp6.140 = bitcast i8* %next5.140 to [2 x i8]*
  store [2 x i8] %s6.140, [2 x i8]* %sp6.140
  %next6.140 = getelementptr [13 x i8], [13 x i8]* %spi140, i32 0, i32 11
  
  %s7.140 = load [2 x i8], [2 x i8]* @str.7.140
  %sp7.140 = bitcast i8* %next6.140 to [2 x i8]*
  store [2 x i8] %s7.140, [2 x i8]* %sp7.140
  %sp1.1.85 = bitcast [13 x i8]* %spi140 to i104*
;-------------------------------
  %i1.85 = load i104, i104* %sp1.1.85

  %xp85 = xor i104 %i0.85, %i1.85

  %fi.85 = alloca i104
  store i104 %xp85, i104* %fi.85

  %final.ptr.85 = bitcast i104* %fi.85 to [13 x i8]*
  %spi85 = load [13 x i8], [13 x i8]* %final.ptr.85
  store [13 x i8] %spi85, [13 x i8]* %cipher.ptr.43
;-------------------------------
  %cipher.43 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.43, i32 0, i32 0
  %plain.ptr.43 = tail call i8* @base64_decode(i8* %cipher.43)
  %spi43 = bitcast i8* %plain.ptr.43 to [7 x i8]*
  %spi.bis.393 = ptrtoint[7 x i8]* %spi43 to i32
;-------------------------------
  store i32 %spi.bis.393, i32* %87, align 16
  %tmp2_v8.i113.i.i = add i32 %tmp0_v1.i220.i.i, -20
  %88 = inttoptr i32 %tmp2_v8.i113.i.i to i32*
  store i32 134517812, i32* %88, align 4
  %89 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %r_ecx.2.lcssa.i, i32 inreg noundef %r_edx.2.lcssa.i, i32 noundef %tmp2_v7.i112.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !66
  ret void
}
define internal fastcc void @sleep865(i32 %arg_esp) unnamed_addr  norecurse  !retregs !52 {
  %tmp2_v.i16.i = add i32 %arg_esp, 4
  %tmp0_v.i17.i = and i32 %arg_esp, -16
  %1 = inttoptr i32 %arg_esp to i32*
  %2 = load i32, i32* %1, align 4
  %tmp2_v3.i19.i = add i32 %tmp0_v.i17.i, -4
  %3 = inttoptr i32 %tmp2_v3.i19.i to i32*
  store i32 %2, i32* %3, align 4
  %tmp2_v4.i.i = add i32 %tmp0_v.i17.i, -8
  %4 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 0, i32* %4, align 8
  %tmp2_v5.i21.i = add i32 %tmp0_v.i17.i, -12
  %5 = inttoptr i32 %tmp2_v5.i21.i to i32*
  store i32 0, i32* %5, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i17.i, -16
  %6 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i16.i, i32* %6, align 16
  %tmp2_v7.i.i = add i32 %tmp0_v.i17.i, -20
  %7 = inttoptr i32 %tmp2_v7.i.i to i32*
  store i32 134517198, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i17.i, -32
  %8 = inttoptr i32 %tmp2_v2.i.i to i32*
;-------------------------------
; Replace: %spi.bis.863 = ptrtoint[7 x i8]* @str.bis.863 to i32
  %cipher.ptr.45 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\59\6d\56\6d\62\33\4a\6c\41\41\3d\3d\00", [13 x i8]* %cipher.ptr.45
;-------------------------------
; Replace: %sp0.1.86 = bitcast [13 x i8]* @str.86 to i104*
  %spi141 = alloca [13 x i8]
  
  %s0.141 = load [1 x i8], [1 x i8]* @str.0.141
  %sp0.141 = bitcast [13 x i8]* %spi141 to [1 x i8]*
  store [1 x i8] %s0.141, [1 x i8]* %sp0.141
  %next0.141 = getelementptr [13 x i8], [13 x i8]* %spi141, i32 0, i32 1
  
  %s1.141 = load [2 x i8], [2 x i8]* @str.1.141
  %sp1.141 = bitcast i8* %next0.141 to [2 x i8]*
  store [2 x i8] %s1.141, [2 x i8]* %sp1.141
  %next1.141 = getelementptr [13 x i8], [13 x i8]* %spi141, i32 0, i32 3
  
  %s2.141 = load [1 x i8], [1 x i8]* @str.2.141
  %sp2.141 = bitcast i8* %next1.141 to [1 x i8]*
  store [1 x i8] %s2.141, [1 x i8]* %sp2.141
  %next2.141 = getelementptr [13 x i8], [13 x i8]* %spi141, i32 0, i32 4
  
  %s3.141 = load [2 x i8], [2 x i8]* @str.3.141
  %sp3.141 = bitcast i8* %next2.141 to [2 x i8]*
  store [2 x i8] %s3.141, [2 x i8]* %sp3.141
  %next3.141 = getelementptr [13 x i8], [13 x i8]* %spi141, i32 0, i32 6
  
  %s4.141 = load [2 x i8], [2 x i8]* @str.4.141
  %sp4.141 = bitcast i8* %next3.141 to [2 x i8]*
  store [2 x i8] %s4.141, [2 x i8]* %sp4.141
  %next4.141 = getelementptr [13 x i8], [13 x i8]* %spi141, i32 0, i32 8
  
  %s5.141 = load [1 x i8], [1 x i8]* @str.5.141
  %sp5.141 = bitcast i8* %next4.141 to [1 x i8]*
  store [1 x i8] %s5.141, [1 x i8]* %sp5.141
  %next5.141 = getelementptr [13 x i8], [13 x i8]* %spi141, i32 0, i32 9
  
  %s6.141 = load [2 x i8], [2 x i8]* @str.6.141
  %sp6.141 = bitcast i8* %next5.141 to [2 x i8]*
  store [2 x i8] %s6.141, [2 x i8]* %sp6.141
  %next6.141 = getelementptr [13 x i8], [13 x i8]* %spi141, i32 0, i32 11
  
  %s7.141 = load [2 x i8], [2 x i8]* @str.7.141
  %sp7.141 = bitcast i8* %next6.141 to [2 x i8]*
  store [2 x i8] %s7.141, [2 x i8]* %sp7.141
  %sp0.1.86 = bitcast [13 x i8]* %spi141 to i104*
;-------------------------------
  %i0.86 = load i104, i104* %sp0.1.86

;-------------------------------
; Replace: %sp1.1.86 = bitcast [13 x i8]* @key.86 to i104*
  %spi142 = alloca [13 x i8]
  
  %s0.142 = load [1 x i8], [1 x i8]* @str.0.142
  %sp0.142 = bitcast [13 x i8]* %spi142 to [1 x i8]*
  store [1 x i8] %s0.142, [1 x i8]* %sp0.142
  %next0.142 = getelementptr [13 x i8], [13 x i8]* %spi142, i32 0, i32 1
  
  %s1.142 = load [2 x i8], [2 x i8]* @str.1.142
  %sp1.142 = bitcast i8* %next0.142 to [2 x i8]*
  store [2 x i8] %s1.142, [2 x i8]* %sp1.142
  %next1.142 = getelementptr [13 x i8], [13 x i8]* %spi142, i32 0, i32 3
  
  %s2.142 = load [1 x i8], [1 x i8]* @str.2.142
  %sp2.142 = bitcast i8* %next1.142 to [1 x i8]*
  store [1 x i8] %s2.142, [1 x i8]* %sp2.142
  %next2.142 = getelementptr [13 x i8], [13 x i8]* %spi142, i32 0, i32 4
  
  %s3.142 = load [2 x i8], [2 x i8]* @str.3.142
  %sp3.142 = bitcast i8* %next2.142 to [2 x i8]*
  store [2 x i8] %s3.142, [2 x i8]* %sp3.142
  %next3.142 = getelementptr [13 x i8], [13 x i8]* %spi142, i32 0, i32 6
  
  %s4.142 = load [2 x i8], [2 x i8]* @str.4.142
  %sp4.142 = bitcast i8* %next3.142 to [2 x i8]*
  store [2 x i8] %s4.142, [2 x i8]* %sp4.142
  %next4.142 = getelementptr [13 x i8], [13 x i8]* %spi142, i32 0, i32 8
  
  %s5.142 = load [1 x i8], [1 x i8]* @str.5.142
  %sp5.142 = bitcast i8* %next4.142 to [1 x i8]*
  store [1 x i8] %s5.142, [1 x i8]* %sp5.142
  %next5.142 = getelementptr [13 x i8], [13 x i8]* %spi142, i32 0, i32 9
  
  %s6.142 = load [2 x i8], [2 x i8]* @str.6.142
  %sp6.142 = bitcast i8* %next5.142 to [2 x i8]*
  store [2 x i8] %s6.142, [2 x i8]* %sp6.142
  %next6.142 = getelementptr [13 x i8], [13 x i8]* %spi142, i32 0, i32 11
  
  %s7.142 = load [2 x i8], [2 x i8]* @str.7.142
  %sp7.142 = bitcast i8* %next6.142 to [2 x i8]*
  store [2 x i8] %s7.142, [2 x i8]* %sp7.142
  %sp1.1.86 = bitcast [13 x i8]* %spi142 to i104*
;-------------------------------
  %i1.86 = load i104, i104* %sp1.1.86

  %xp86 = xor i104 %i0.86, %i1.86

  %fi.86 = alloca i104
  store i104 %xp86, i104* %fi.86

  %final.ptr.86 = bitcast i104* %fi.86 to [13 x i8]*
  %spi86 = load [13 x i8], [13 x i8]* %final.ptr.86
  store [13 x i8] %spi86, [13 x i8]* %cipher.ptr.45
;-------------------------------
  %cipher.45 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.45, i32 0, i32 0
  %plain.ptr.45 = tail call i8* @base64_decode(i8* %cipher.45)
  %spi45 = bitcast i8* %plain.ptr.45 to [7 x i8]*
  %spi.bis.863 = ptrtoint[7 x i8]* %spi45 to i32
;-------------------------------
  store i32 %spi.bis.863, i32* %8, align 16
  %tmp2_v3.i6.i = add i32 %tmp0_v.i17.i, -36
  %9 = inttoptr i32 %tmp2_v3.i6.i to i32*
  store i32 134517219, i32* %9, align 4
  %arg.i.i = load i32, i32* %8, align 16
  %10 = inttoptr i32 %arg.i.i to i8*
  %11 = tail call i32 @puts(i8* nonnull dereferenceable(1) %10)
  store i32 750000, i32* %8, align 16
  store i32 134517235, i32* %9, align 4
  %arg.i.i1 = load i32, i32* %8, align 16
  %12 = tail call i32 @usleep(i32 %arg.i.i1)
;-------------------------------
; Replace: %spi.bis.862 = ptrtoint[6 x i8]* @str.bis.862 to i32
  %cipher.ptr.44 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\59\57\5a\30\5a\58\49\41\00", [9 x i8]* %cipher.ptr.44
;-------------------------------
; Replace: %sp0.1.87 = bitcast [9 x i8]* @str.87 to i72*
  %spi143 = alloca [9 x i8]
  
  %s0.143 = load [1 x i8], [1 x i8]* @str.0.143
  %sp0.143 = bitcast [9 x i8]* %spi143 to [1 x i8]*
  store [1 x i8] %s0.143, [1 x i8]* %sp0.143
  %next0.143 = getelementptr [9 x i8], [9 x i8]* %spi143, i32 0, i32 1
  
  %s1.143 = load [1 x i8], [1 x i8]* @str.1.143
  %sp1.143 = bitcast i8* %next0.143 to [1 x i8]*
  store [1 x i8] %s1.143, [1 x i8]* %sp1.143
  %next1.143 = getelementptr [9 x i8], [9 x i8]* %spi143, i32 0, i32 2
  
  %s2.143 = load [1 x i8], [1 x i8]* @str.2.143
  %sp2.143 = bitcast i8* %next1.143 to [1 x i8]*
  store [1 x i8] %s2.143, [1 x i8]* %sp2.143
  %next2.143 = getelementptr [9 x i8], [9 x i8]* %spi143, i32 0, i32 3
  
  %s3.143 = load [1 x i8], [1 x i8]* @str.3.143
  %sp3.143 = bitcast i8* %next2.143 to [1 x i8]*
  store [1 x i8] %s3.143, [1 x i8]* %sp3.143
  %next3.143 = getelementptr [9 x i8], [9 x i8]* %spi143, i32 0, i32 4
  
  %s4.143 = load [1 x i8], [1 x i8]* @str.4.143
  %sp4.143 = bitcast i8* %next3.143 to [1 x i8]*
  store [1 x i8] %s4.143, [1 x i8]* %sp4.143
  %next4.143 = getelementptr [9 x i8], [9 x i8]* %spi143, i32 0, i32 5
  
  %s5.143 = load [1 x i8], [1 x i8]* @str.5.143
  %sp5.143 = bitcast i8* %next4.143 to [1 x i8]*
  store [1 x i8] %s5.143, [1 x i8]* %sp5.143
  %next5.143 = getelementptr [9 x i8], [9 x i8]* %spi143, i32 0, i32 6
  
  %s6.143 = load [1 x i8], [1 x i8]* @str.6.143
  %sp6.143 = bitcast i8* %next5.143 to [1 x i8]*
  store [1 x i8] %s6.143, [1 x i8]* %sp6.143
  %next6.143 = getelementptr [9 x i8], [9 x i8]* %spi143, i32 0, i32 7
  
  %s7.143 = load [2 x i8], [2 x i8]* @str.7.143
  %sp7.143 = bitcast i8* %next6.143 to [2 x i8]*
  store [2 x i8] %s7.143, [2 x i8]* %sp7.143
  %sp0.1.87 = bitcast [9 x i8]* %spi143 to i72*
;-------------------------------
  %i0.87 = load i72, i72* %sp0.1.87

;-------------------------------
; Replace: %sp1.1.87 = bitcast [9 x i8]* @key.87 to i72*
  %spi144 = alloca [9 x i8]
  
  %s0.144 = load [1 x i8], [1 x i8]* @str.0.144
  %sp0.144 = bitcast [9 x i8]* %spi144 to [1 x i8]*
  store [1 x i8] %s0.144, [1 x i8]* %sp0.144
  %next0.144 = getelementptr [9 x i8], [9 x i8]* %spi144, i32 0, i32 1
  
  %s1.144 = load [1 x i8], [1 x i8]* @str.1.144
  %sp1.144 = bitcast i8* %next0.144 to [1 x i8]*
  store [1 x i8] %s1.144, [1 x i8]* %sp1.144
  %next1.144 = getelementptr [9 x i8], [9 x i8]* %spi144, i32 0, i32 2
  
  %s2.144 = load [1 x i8], [1 x i8]* @str.2.144
  %sp2.144 = bitcast i8* %next1.144 to [1 x i8]*
  store [1 x i8] %s2.144, [1 x i8]* %sp2.144
  %next2.144 = getelementptr [9 x i8], [9 x i8]* %spi144, i32 0, i32 3
  
  %s3.144 = load [1 x i8], [1 x i8]* @str.3.144
  %sp3.144 = bitcast i8* %next2.144 to [1 x i8]*
  store [1 x i8] %s3.144, [1 x i8]* %sp3.144
  %next3.144 = getelementptr [9 x i8], [9 x i8]* %spi144, i32 0, i32 4
  
  %s4.144 = load [1 x i8], [1 x i8]* @str.4.144
  %sp4.144 = bitcast i8* %next3.144 to [1 x i8]*
  store [1 x i8] %s4.144, [1 x i8]* %sp4.144
  %next4.144 = getelementptr [9 x i8], [9 x i8]* %spi144, i32 0, i32 5
  
  %s5.144 = load [1 x i8], [1 x i8]* @str.5.144
  %sp5.144 = bitcast i8* %next4.144 to [1 x i8]*
  store [1 x i8] %s5.144, [1 x i8]* %sp5.144
  %next5.144 = getelementptr [9 x i8], [9 x i8]* %spi144, i32 0, i32 6
  
  %s6.144 = load [1 x i8], [1 x i8]* @str.6.144
  %sp6.144 = bitcast i8* %next5.144 to [1 x i8]*
  store [1 x i8] %s6.144, [1 x i8]* %sp6.144
  %next6.144 = getelementptr [9 x i8], [9 x i8]* %spi144, i32 0, i32 7
  
  %s7.144 = load [2 x i8], [2 x i8]* @str.7.144
  %sp7.144 = bitcast i8* %next6.144 to [2 x i8]*
  store [2 x i8] %s7.144, [2 x i8]* %sp7.144
  %sp1.1.87 = bitcast [9 x i8]* %spi144 to i72*
;-------------------------------
  %i1.87 = load i72, i72* %sp1.1.87

  %xp87 = xor i72 %i0.87, %i1.87

  %fi.87 = alloca i72
  store i72 %xp87, i72* %fi.87

  %final.ptr.87 = bitcast i72* %fi.87 to [9 x i8]*
  %spi87 = load [9 x i8], [9 x i8]* %final.ptr.87
  store [9 x i8] %spi87, [9 x i8]* %cipher.ptr.44
;-------------------------------
  %cipher.44 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.44, i32 0, i32 0
  %plain.ptr.44 = tail call i8* @base64_decode(i8* %cipher.44)
  %spi44 = bitcast i8* %plain.ptr.44 to [6 x i8]*
  %spi.bis.862 = ptrtoint[6 x i8]* %spi44 to i32
;-------------------------------
  store i32 %spi.bis.862, i32* %8, align 16
  store i32 134517253, i32* %9, align 4
  %arg.i.i2 = load i32, i32* %8, align 16
  %13 = inttoptr i32 %arg.i.i2 to i8*
  %14 = tail call i32 @puts(i8* nonnull dereferenceable(1) %13)
  ret void
}
define internal fastcc void @binary_to_decimal834(i32 %arg_esp) unnamed_addr  norecurse  !retregs !40 {
.exit:
  %tmp2_v.i28.i = add i32 %arg_esp, 4
  %tmp0_v.i29.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i29.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i30.i = add i32 %tmp0_v.i29.i, -8
  %3 = inttoptr i32 %tmp2_v4.i30.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i32.i = add i32 %tmp0_v.i29.i, -12
  %4 = inttoptr i32 %tmp2_v5.i32.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i34.i = add i32 %tmp0_v.i29.i, -16
  %5 = inttoptr i32 %tmp2_v6.i34.i to i32*
  store i32 %tmp2_v.i28.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i29.i, -68
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517233, i32* %6, align 4
  %tmp4_v.i37.i.b = load i1, i1* @segs.0, align 1
  %7 = inttoptr i32 %arg_esp to i32*
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i41.i = add i32 %tmp0_v.i29.i, -20
  %9 = inttoptr i32 %tmp2_v2.i41.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i42.i = add i32 %tmp0_v.i29.i, -41
  %10 = inttoptr i32 %tmp2_v3.i42.i to i32*
  store i32 808529969, i32* %10, align 4
  %tmp2_v4.i43.i = add i32 %tmp0_v.i29.i, -37
  %11 = inttoptr i32 %tmp2_v4.i43.i to i16*
  store i16 49, i16* %11, align 2
  %tmp2_v7.i46.i = add i32 %tmp0_v.i29.i, -80
  %12 = inttoptr i32 %tmp2_v7.i46.i to i32*
  store i32 %tmp2_v3.i42.i, i32* %12, align 16
  %tmp2_v8.i47.i = add i32 %tmp0_v.i29.i, -84
  %13 = inttoptr i32 %tmp2_v8.i47.i to i32*
  store i32 134517275, i32* %13, align 4
  %tmp2_v.i1.i.i = add i32 %tmp0_v.i29.i, -88
  %14 = inttoptr i32 %tmp2_v.i1.i.i to i32*
  store i32 %tmp2_v4.i30.i, i32* %14, align 8
  %tmp2_v1.i3.i.i = add i32 %tmp0_v.i29.i, -92
  %15 = inttoptr i32 %tmp2_v1.i3.i.i to i32*
  store i32 134529024, i32* %15, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i29.i, -116
  %16 = inttoptr i32 %tmp2_v2.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.832 = ptrtoint[4 x i8]* @str.bis.832 to i32
  %cipher.ptr.48 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\53\30\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.48
;-------------------------------
; Replace: %sp0.1.88 = bitcast [9 x i8]* @str.88 to i72*
  %spi145 = alloca [9 x i8]
  
  %s0.145 = load [1 x i8], [1 x i8]* @str.0.145
  %sp0.145 = bitcast [9 x i8]* %spi145 to [1 x i8]*
  store [1 x i8] %s0.145, [1 x i8]* %sp0.145
  %next0.145 = getelementptr [9 x i8], [9 x i8]* %spi145, i32 0, i32 1
  
  %s1.145 = load [1 x i8], [1 x i8]* @str.1.145
  %sp1.145 = bitcast i8* %next0.145 to [1 x i8]*
  store [1 x i8] %s1.145, [1 x i8]* %sp1.145
  %next1.145 = getelementptr [9 x i8], [9 x i8]* %spi145, i32 0, i32 2
  
  %s2.145 = load [1 x i8], [1 x i8]* @str.2.145
  %sp2.145 = bitcast i8* %next1.145 to [1 x i8]*
  store [1 x i8] %s2.145, [1 x i8]* %sp2.145
  %next2.145 = getelementptr [9 x i8], [9 x i8]* %spi145, i32 0, i32 3
  
  %s3.145 = load [1 x i8], [1 x i8]* @str.3.145
  %sp3.145 = bitcast i8* %next2.145 to [1 x i8]*
  store [1 x i8] %s3.145, [1 x i8]* %sp3.145
  %next3.145 = getelementptr [9 x i8], [9 x i8]* %spi145, i32 0, i32 4
  
  %s4.145 = load [1 x i8], [1 x i8]* @str.4.145
  %sp4.145 = bitcast i8* %next3.145 to [1 x i8]*
  store [1 x i8] %s4.145, [1 x i8]* %sp4.145
  %next4.145 = getelementptr [9 x i8], [9 x i8]* %spi145, i32 0, i32 5
  
  %s5.145 = load [1 x i8], [1 x i8]* @str.5.145
  %sp5.145 = bitcast i8* %next4.145 to [1 x i8]*
  store [1 x i8] %s5.145, [1 x i8]* %sp5.145
  %next5.145 = getelementptr [9 x i8], [9 x i8]* %spi145, i32 0, i32 6
  
  %s6.145 = load [1 x i8], [1 x i8]* @str.6.145
  %sp6.145 = bitcast i8* %next5.145 to [1 x i8]*
  store [1 x i8] %s6.145, [1 x i8]* %sp6.145
  %next6.145 = getelementptr [9 x i8], [9 x i8]* %spi145, i32 0, i32 7
  
  %s7.145 = load [2 x i8], [2 x i8]* @str.7.145
  %sp7.145 = bitcast i8* %next6.145 to [2 x i8]*
  store [2 x i8] %s7.145, [2 x i8]* %sp7.145
  %sp0.1.88 = bitcast [9 x i8]* %spi145 to i72*
;-------------------------------
  %i0.88 = load i72, i72* %sp0.1.88

;-------------------------------
; Replace: %sp1.1.88 = bitcast [9 x i8]* @key.88 to i72*
  %spi146 = alloca [9 x i8]
  
  %s0.146 = load [1 x i8], [1 x i8]* @str.0.146
  %sp0.146 = bitcast [9 x i8]* %spi146 to [1 x i8]*
  store [1 x i8] %s0.146, [1 x i8]* %sp0.146
  %next0.146 = getelementptr [9 x i8], [9 x i8]* %spi146, i32 0, i32 1
  
  %s1.146 = load [1 x i8], [1 x i8]* @str.1.146
  %sp1.146 = bitcast i8* %next0.146 to [1 x i8]*
  store [1 x i8] %s1.146, [1 x i8]* %sp1.146
  %next1.146 = getelementptr [9 x i8], [9 x i8]* %spi146, i32 0, i32 2
  
  %s2.146 = load [1 x i8], [1 x i8]* @str.2.146
  %sp2.146 = bitcast i8* %next1.146 to [1 x i8]*
  store [1 x i8] %s2.146, [1 x i8]* %sp2.146
  %next2.146 = getelementptr [9 x i8], [9 x i8]* %spi146, i32 0, i32 3
  
  %s3.146 = load [1 x i8], [1 x i8]* @str.3.146
  %sp3.146 = bitcast i8* %next2.146 to [1 x i8]*
  store [1 x i8] %s3.146, [1 x i8]* %sp3.146
  %next3.146 = getelementptr [9 x i8], [9 x i8]* %spi146, i32 0, i32 4
  
  %s4.146 = load [1 x i8], [1 x i8]* @str.4.146
  %sp4.146 = bitcast i8* %next3.146 to [1 x i8]*
  store [1 x i8] %s4.146, [1 x i8]* %sp4.146
  %next4.146 = getelementptr [9 x i8], [9 x i8]* %spi146, i32 0, i32 5
  
  %s5.146 = load [1 x i8], [1 x i8]* @str.5.146
  %sp5.146 = bitcast i8* %next4.146 to [1 x i8]*
  store [1 x i8] %s5.146, [1 x i8]* %sp5.146
  %next5.146 = getelementptr [9 x i8], [9 x i8]* %spi146, i32 0, i32 6
  
  %s6.146 = load [1 x i8], [1 x i8]* @str.6.146
  %sp6.146 = bitcast i8* %next5.146 to [1 x i8]*
  store [1 x i8] %s6.146, [1 x i8]* %sp6.146
  %next6.146 = getelementptr [9 x i8], [9 x i8]* %spi146, i32 0, i32 7
  
  %s7.146 = load [2 x i8], [2 x i8]* @str.7.146
  %sp7.146 = bitcast i8* %next6.146 to [2 x i8]*
  store [2 x i8] %s7.146, [2 x i8]* %sp7.146
  %sp1.1.88 = bitcast [9 x i8]* %spi146 to i72*
;-------------------------------
  %i1.88 = load i72, i72* %sp1.1.88

  %xp88 = xor i72 %i0.88, %i1.88

  %fi.88 = alloca i72
  store i72 %xp88, i72* %fi.88

  %final.ptr.88 = bitcast i72* %fi.88 to [9 x i8]*
  %spi88 = load [9 x i8], [9 x i8]* %final.ptr.88
  store [9 x i8] %spi88, [9 x i8]* %cipher.ptr.48
;-------------------------------
  %cipher.48 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.48, i32 0, i32 0
  %plain.ptr.48 = tail call i8* @base64_decode(i8* %cipher.48)
  %spi48 = bitcast i8* %plain.ptr.48 to [4 x i8]*
  %spi.bis.832 = ptrtoint[4 x i8]* %spi48 to i32
;-------------------------------
  store i32 %spi.bis.832, i32* %16, align 4
  %17 = load i32, i32* %12, align 16
  %tmp2_v3.i38.i.i = add i32 %tmp0_v.i29.i, -128
  %18 = inttoptr i32 %tmp2_v3.i38.i.i to i32*
  store i32 %17, i32* %18, align 16
  %tmp2_v4.i39.i.i = add i32 %tmp0_v.i29.i, -132
  %19 = inttoptr i32 %tmp2_v4.i39.i.i to i32*
  store i32 134517477, i32* %19, align 4
  %arg.i.i.i = load i32, i32* %18, align 16
  %20 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i27.i.i = add i32 %tmp0_v.i29.i, -100
  %21 = inttoptr i32 %tmp2_v.i27.i.i to i32*
  store i32 %20, i32* %21, align 4
  %tmp2_v1.i28.i.i = add i32 %tmp0_v.i29.i, -112
  %22 = inttoptr i32 %tmp2_v1.i28.i.i to i32*
  store i32 0, i32* %22, align 16
  %tmp2_v2.i29.i.i = add i32 %tmp0_v.i29.i, -108
  %23 = inttoptr i32 %tmp2_v2.i29.i.i to i32*
  store i32 1, i32* %23, align 4
  %tmp2_v6.i.i.i = add i32 %tmp0_v.i29.i, -104
  %24 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  %storemerge.in20.i = load i32, i32* %21, align 4
  %storemerge21.i = add i32 %storemerge.in20.i, -1
  store i32 %storemerge21.i, i32* %24, align 8
  %25 = icmp sgt i32 %storemerge21.i, -1
  br i1 %25, label %BB_8049304.i.i, label %Func_convert.exit

BB_8049313.i.i:                                   ; preds = %BB_8049304.i.i
  %26 = load i32, i32* %23, align 4
  %27 = load i32, i32* %22, align 16
  %tmp0_v3.i.i.i = add i32 %27, %26
  store i32 %tmp0_v3.i.i.i, i32* %22, align 16
  br label %BB_8049319.i.i

BB_8049304.i.i:                                   ; preds = %BB_8049319.i.i, %.exit
  %storemerge22.i = phi i32 [ %storemerge.i, %BB_8049319.i.i ], [ %storemerge21.i, %.exit ]
  %28 = load i32, i32* %12, align 16
  %tmp0_v3.i20.i.i = add i32 %28, %storemerge22.i
  %29 = inttoptr i32 %tmp0_v3.i20.i.i to i8*
  %30 = load i8, i8* %29, align 1
  %.not.i.i.i = icmp eq i8 %30, 49
  br i1 %.not.i.i.i, label %BB_8049313.i.i, label %BB_8049319.i.i

BB_8049319.i.i:                                   ; preds = %BB_8049304.i.i, %BB_8049313.i.i
  %31 = load i32, i32* %23, align 4
  %tmp0_v1.i43.i.i = shl i32 %31, 1
  store i32 %tmp0_v1.i43.i.i, i32* %23, align 4
  %storemerge.in.i = load i32, i32* %24, align 8
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, i32* %24, align 8
  %32 = icmp sgt i32 %storemerge.i, -1
  br i1 %32, label %BB_8049304.i.i, label %Func_convert.exit

Func_convert.exit:                                ; preds = %BB_8049319.i.i, %.exit
  %r_edx.0.lcssa.i = phi i32 [ 0, %.exit ], [ %storemerge22.i, %BB_8049319.i.i ]
  %33 = load i32, i32* %22, align 16
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 8
  %tmp2_v.i11.i = add i32 %35, -48
  %36 = inttoptr i32 %tmp2_v.i11.i to i32*
  store i32 %33, i32* %36, align 4
  %tmp2_v4.i16.i = add i32 %tmp0_v.i29.i, -76
  %37 = inttoptr i32 %tmp2_v4.i16.i to i32*
  store i32 %33, i32* %37, align 4
  %tmp2_v5.i18.i = add i32 %34, -8184
  store i32 %tmp2_v5.i18.i, i32* %12, align 16
  store i32 134517299, i32* %13, align 4
  %38 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i28.i, i32 inreg noundef %r_edx.0.lcssa.i, i32 noundef %tmp2_v7.i46.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  %tmp2_v.i71.i = add i32 %35, -27
  %41 = inttoptr i32 %tmp2_v.i71.i to i32*
  store i32 825307441, i32* %41, align 4
  %tmp2_v1.i72.i = add i32 %35, -23
  %42 = inttoptr i32 %tmp2_v1.i72.i to i16*
  store i16 49, i16* %42, align 2
  store i32 %tmp2_v.i71.i, i32* %12, align 16
  store i32 134517327, i32* %13, align 4
  store i32 %35, i32* %14, align 8
  store i32 %34, i32* %15, align 4
;-------------------------------
; Replace: %spi.bis.831 = ptrtoint[4 x i8]* @str.bis.831 to i32
  %cipher.ptr.47 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\53\30\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.47
;-------------------------------
; Replace: %sp0.1.89 = bitcast [9 x i8]* @str.89 to i72*
  %spi147 = alloca [9 x i8]
  
  %s0.147 = load [1 x i8], [1 x i8]* @str.0.147
  %sp0.147 = bitcast [9 x i8]* %spi147 to [1 x i8]*
  store [1 x i8] %s0.147, [1 x i8]* %sp0.147
  %next0.147 = getelementptr [9 x i8], [9 x i8]* %spi147, i32 0, i32 1
  
  %s1.147 = load [1 x i8], [1 x i8]* @str.1.147
  %sp1.147 = bitcast i8* %next0.147 to [1 x i8]*
  store [1 x i8] %s1.147, [1 x i8]* %sp1.147
  %next1.147 = getelementptr [9 x i8], [9 x i8]* %spi147, i32 0, i32 2
  
  %s2.147 = load [1 x i8], [1 x i8]* @str.2.147
  %sp2.147 = bitcast i8* %next1.147 to [1 x i8]*
  store [1 x i8] %s2.147, [1 x i8]* %sp2.147
  %next2.147 = getelementptr [9 x i8], [9 x i8]* %spi147, i32 0, i32 3
  
  %s3.147 = load [1 x i8], [1 x i8]* @str.3.147
  %sp3.147 = bitcast i8* %next2.147 to [1 x i8]*
  store [1 x i8] %s3.147, [1 x i8]* %sp3.147
  %next3.147 = getelementptr [9 x i8], [9 x i8]* %spi147, i32 0, i32 4
  
  %s4.147 = load [1 x i8], [1 x i8]* @str.4.147
  %sp4.147 = bitcast i8* %next3.147 to [1 x i8]*
  store [1 x i8] %s4.147, [1 x i8]* %sp4.147
  %next4.147 = getelementptr [9 x i8], [9 x i8]* %spi147, i32 0, i32 5
  
  %s5.147 = load [1 x i8], [1 x i8]* @str.5.147
  %sp5.147 = bitcast i8* %next4.147 to [1 x i8]*
  store [1 x i8] %s5.147, [1 x i8]* %sp5.147
  %next5.147 = getelementptr [9 x i8], [9 x i8]* %spi147, i32 0, i32 6
  
  %s6.147 = load [1 x i8], [1 x i8]* @str.6.147
  %sp6.147 = bitcast i8* %next5.147 to [1 x i8]*
  store [1 x i8] %s6.147, [1 x i8]* %sp6.147
  %next6.147 = getelementptr [9 x i8], [9 x i8]* %spi147, i32 0, i32 7
  
  %s7.147 = load [2 x i8], [2 x i8]* @str.7.147
  %sp7.147 = bitcast i8* %next6.147 to [2 x i8]*
  store [2 x i8] %s7.147, [2 x i8]* %sp7.147
  %sp0.1.89 = bitcast [9 x i8]* %spi147 to i72*
;-------------------------------
  %i0.89 = load i72, i72* %sp0.1.89

;-------------------------------
; Replace: %sp1.1.89 = bitcast [9 x i8]* @key.89 to i72*
  %spi148 = alloca [9 x i8]
  
  %s0.148 = load [1 x i8], [1 x i8]* @str.0.148
  %sp0.148 = bitcast [9 x i8]* %spi148 to [1 x i8]*
  store [1 x i8] %s0.148, [1 x i8]* %sp0.148
  %next0.148 = getelementptr [9 x i8], [9 x i8]* %spi148, i32 0, i32 1
  
  %s1.148 = load [1 x i8], [1 x i8]* @str.1.148
  %sp1.148 = bitcast i8* %next0.148 to [1 x i8]*
  store [1 x i8] %s1.148, [1 x i8]* %sp1.148
  %next1.148 = getelementptr [9 x i8], [9 x i8]* %spi148, i32 0, i32 2
  
  %s2.148 = load [1 x i8], [1 x i8]* @str.2.148
  %sp2.148 = bitcast i8* %next1.148 to [1 x i8]*
  store [1 x i8] %s2.148, [1 x i8]* %sp2.148
  %next2.148 = getelementptr [9 x i8], [9 x i8]* %spi148, i32 0, i32 3
  
  %s3.148 = load [1 x i8], [1 x i8]* @str.3.148
  %sp3.148 = bitcast i8* %next2.148 to [1 x i8]*
  store [1 x i8] %s3.148, [1 x i8]* %sp3.148
  %next3.148 = getelementptr [9 x i8], [9 x i8]* %spi148, i32 0, i32 4
  
  %s4.148 = load [1 x i8], [1 x i8]* @str.4.148
  %sp4.148 = bitcast i8* %next3.148 to [1 x i8]*
  store [1 x i8] %s4.148, [1 x i8]* %sp4.148
  %next4.148 = getelementptr [9 x i8], [9 x i8]* %spi148, i32 0, i32 5
  
  %s5.148 = load [1 x i8], [1 x i8]* @str.5.148
  %sp5.148 = bitcast i8* %next4.148 to [1 x i8]*
  store [1 x i8] %s5.148, [1 x i8]* %sp5.148
  %next5.148 = getelementptr [9 x i8], [9 x i8]* %spi148, i32 0, i32 6
  
  %s6.148 = load [1 x i8], [1 x i8]* @str.6.148
  %sp6.148 = bitcast i8* %next5.148 to [1 x i8]*
  store [1 x i8] %s6.148, [1 x i8]* %sp6.148
  %next6.148 = getelementptr [9 x i8], [9 x i8]* %spi148, i32 0, i32 7
  
  %s7.148 = load [2 x i8], [2 x i8]* @str.7.148
  %sp7.148 = bitcast i8* %next6.148 to [2 x i8]*
  store [2 x i8] %s7.148, [2 x i8]* %sp7.148
  %sp1.1.89 = bitcast [9 x i8]* %spi148 to i72*
;-------------------------------
  %i1.89 = load i72, i72* %sp1.1.89

  %xp89 = xor i72 %i0.89, %i1.89

  %fi.89 = alloca i72
  store i72 %xp89, i72* %fi.89

  %final.ptr.89 = bitcast i72* %fi.89 to [9 x i8]*
  %spi89 = load [9 x i8], [9 x i8]* %final.ptr.89
  store [9 x i8] %spi89, [9 x i8]* %cipher.ptr.47
;-------------------------------
  %cipher.47 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.47, i32 0, i32 0
  %plain.ptr.47 = tail call i8* @base64_decode(i8* %cipher.47)
  %spi47 = bitcast i8* %plain.ptr.47 to [4 x i8]*
  %spi.bis.831 = ptrtoint[4 x i8]* %spi47 to i32
;-------------------------------
  store i32 %spi.bis.831, i32* %16, align 4
  %43 = load i32, i32* %12, align 16
  store i32 %43, i32* %18, align 16
  store i32 134517477, i32* %19, align 4
  %arg.i.i.i10 = load i32, i32* %18, align 16
  %44 = tail call i32 @strlen(i32 %arg.i.i.i10)
  store i32 %44, i32* %21, align 4
  store i32 0, i32* %22, align 16
  store i32 1, i32* %23, align 4
  %storemerge.in20.i15 = load i32, i32* %21, align 4
  %storemerge21.i16 = add i32 %storemerge.in20.i15, -1
  store i32 %storemerge21.i16, i32* %24, align 8
  %45 = icmp sgt i32 %storemerge21.i16, -1
  br i1 %45, label %BB_8049304.i.i22, label %Func_convert.exit33

BB_8049313.i.i18:                                 ; preds = %BB_8049304.i.i22
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %22, align 16
  %tmp0_v3.i.i.i17 = add i32 %47, %46
  store i32 %tmp0_v3.i.i.i17, i32* %22, align 16
  br label %BB_8049319.i.i26

BB_8049304.i.i22:                                 ; preds = %BB_8049319.i.i26, %Func_convert.exit
  %storemerge22.i19 = phi i32 [ %storemerge.i25, %BB_8049319.i.i26 ], [ %storemerge21.i16, %Func_convert.exit ]
  %48 = load i32, i32* %12, align 16
  %tmp0_v3.i20.i.i20 = add i32 %48, %storemerge22.i19
  %49 = inttoptr i32 %tmp0_v3.i20.i.i20 to i8*
  %50 = load i8, i8* %49, align 1
  %.not.i.i.i21 = icmp eq i8 %50, 49
  br i1 %.not.i.i.i21, label %BB_8049313.i.i18, label %BB_8049319.i.i26

BB_8049319.i.i26:                                 ; preds = %BB_8049304.i.i22, %BB_8049313.i.i18
  %51 = load i32, i32* %23, align 4
  %tmp0_v1.i43.i.i23 = shl i32 %51, 1
  store i32 %tmp0_v1.i43.i.i23, i32* %23, align 4
  %storemerge.in.i24 = load i32, i32* %24, align 8
  %storemerge.i25 = add i32 %storemerge.in.i24, -1
  store i32 %storemerge.i25, i32* %24, align 8
  %52 = icmp sgt i32 %storemerge.i25, -1
  br i1 %52, label %BB_8049304.i.i22, label %Func_convert.exit33

Func_convert.exit33:                              ; preds = %BB_8049319.i.i26, %Func_convert.exit
  %r_edx.0.lcssa.i27 = phi i32 [ %40, %Func_convert.exit ], [ %storemerge22.i19, %BB_8049319.i.i26 ]
  %53 = load i32, i32* %22, align 16
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 8
  %tmp2_v.i51.i = add i32 %55, -44
  %56 = inttoptr i32 %tmp2_v.i51.i to i32*
  store i32 %53, i32* %56, align 4
  store i32 %53, i32* %37, align 4
  %tmp2_v5.i58.i = add i32 %54, -8169
  store i32 %tmp2_v5.i58.i, i32* %12, align 16
  store i32 134517351, i32* %13, align 4
  %57 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i28.i, i32 inreg noundef %r_edx.0.lcssa.i27, i32 noundef %tmp2_v7.i46.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  %58 = lshr i64 %57, 32
  %59 = trunc i64 %58 to i32
  %tmp2_v.i23.i = add i32 %55, -21
  %60 = inttoptr i32 %tmp2_v.i23.i to i32*
  store i32 808464433, i32* %60, align 4
  %tmp2_v1.i.i = add i32 %55, -17
  %61 = inttoptr i32 %tmp2_v1.i.i to i32*
  store i32 825241648, i32* %61, align 4
  %tmp2_v2.i24.i = add i32 %55, -13
  %62 = inttoptr i32 %tmp2_v2.i24.i to i8*
  store i8 0, i8* %62, align 1
  store i32 %tmp2_v.i23.i, i32* %12, align 16
  store i32 134517384, i32* %13, align 4
  store i32 %55, i32* %14, align 8
  store i32 %54, i32* %15, align 4
;-------------------------------
; Replace: %spi.bis.830 = ptrtoint[4 x i8]* @str.bis.830 to i32
  %cipher.ptr.46 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\42\53\30\74\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.46
;-------------------------------
; Replace: %sp0.1.90 = bitcast [9 x i8]* @str.90 to i72*
  %spi149 = alloca [9 x i8]
  
  %s0.149 = load [1 x i8], [1 x i8]* @str.0.149
  %sp0.149 = bitcast [9 x i8]* %spi149 to [1 x i8]*
  store [1 x i8] %s0.149, [1 x i8]* %sp0.149
  %next0.149 = getelementptr [9 x i8], [9 x i8]* %spi149, i32 0, i32 1
  
  %s1.149 = load [1 x i8], [1 x i8]* @str.1.149
  %sp1.149 = bitcast i8* %next0.149 to [1 x i8]*
  store [1 x i8] %s1.149, [1 x i8]* %sp1.149
  %next1.149 = getelementptr [9 x i8], [9 x i8]* %spi149, i32 0, i32 2
  
  %s2.149 = load [1 x i8], [1 x i8]* @str.2.149
  %sp2.149 = bitcast i8* %next1.149 to [1 x i8]*
  store [1 x i8] %s2.149, [1 x i8]* %sp2.149
  %next2.149 = getelementptr [9 x i8], [9 x i8]* %spi149, i32 0, i32 3
  
  %s3.149 = load [1 x i8], [1 x i8]* @str.3.149
  %sp3.149 = bitcast i8* %next2.149 to [1 x i8]*
  store [1 x i8] %s3.149, [1 x i8]* %sp3.149
  %next3.149 = getelementptr [9 x i8], [9 x i8]* %spi149, i32 0, i32 4
  
  %s4.149 = load [1 x i8], [1 x i8]* @str.4.149
  %sp4.149 = bitcast i8* %next3.149 to [1 x i8]*
  store [1 x i8] %s4.149, [1 x i8]* %sp4.149
  %next4.149 = getelementptr [9 x i8], [9 x i8]* %spi149, i32 0, i32 5
  
  %s5.149 = load [1 x i8], [1 x i8]* @str.5.149
  %sp5.149 = bitcast i8* %next4.149 to [1 x i8]*
  store [1 x i8] %s5.149, [1 x i8]* %sp5.149
  %next5.149 = getelementptr [9 x i8], [9 x i8]* %spi149, i32 0, i32 6
  
  %s6.149 = load [1 x i8], [1 x i8]* @str.6.149
  %sp6.149 = bitcast i8* %next5.149 to [1 x i8]*
  store [1 x i8] %s6.149, [1 x i8]* %sp6.149
  %next6.149 = getelementptr [9 x i8], [9 x i8]* %spi149, i32 0, i32 7
  
  %s7.149 = load [2 x i8], [2 x i8]* @str.7.149
  %sp7.149 = bitcast i8* %next6.149 to [2 x i8]*
  store [2 x i8] %s7.149, [2 x i8]* %sp7.149
  %sp0.1.90 = bitcast [9 x i8]* %spi149 to i72*
;-------------------------------
  %i0.90 = load i72, i72* %sp0.1.90

;-------------------------------
; Replace: %sp1.1.90 = bitcast [9 x i8]* @key.90 to i72*
  %spi150 = alloca [9 x i8]
  
  %s0.150 = load [1 x i8], [1 x i8]* @str.0.150
  %sp0.150 = bitcast [9 x i8]* %spi150 to [1 x i8]*
  store [1 x i8] %s0.150, [1 x i8]* %sp0.150
  %next0.150 = getelementptr [9 x i8], [9 x i8]* %spi150, i32 0, i32 1
  
  %s1.150 = load [1 x i8], [1 x i8]* @str.1.150
  %sp1.150 = bitcast i8* %next0.150 to [1 x i8]*
  store [1 x i8] %s1.150, [1 x i8]* %sp1.150
  %next1.150 = getelementptr [9 x i8], [9 x i8]* %spi150, i32 0, i32 2
  
  %s2.150 = load [1 x i8], [1 x i8]* @str.2.150
  %sp2.150 = bitcast i8* %next1.150 to [1 x i8]*
  store [1 x i8] %s2.150, [1 x i8]* %sp2.150
  %next2.150 = getelementptr [9 x i8], [9 x i8]* %spi150, i32 0, i32 3
  
  %s3.150 = load [1 x i8], [1 x i8]* @str.3.150
  %sp3.150 = bitcast i8* %next2.150 to [1 x i8]*
  store [1 x i8] %s3.150, [1 x i8]* %sp3.150
  %next3.150 = getelementptr [9 x i8], [9 x i8]* %spi150, i32 0, i32 4
  
  %s4.150 = load [1 x i8], [1 x i8]* @str.4.150
  %sp4.150 = bitcast i8* %next3.150 to [1 x i8]*
  store [1 x i8] %s4.150, [1 x i8]* %sp4.150
  %next4.150 = getelementptr [9 x i8], [9 x i8]* %spi150, i32 0, i32 5
  
  %s5.150 = load [1 x i8], [1 x i8]* @str.5.150
  %sp5.150 = bitcast i8* %next4.150 to [1 x i8]*
  store [1 x i8] %s5.150, [1 x i8]* %sp5.150
  %next5.150 = getelementptr [9 x i8], [9 x i8]* %spi150, i32 0, i32 6
  
  %s6.150 = load [1 x i8], [1 x i8]* @str.6.150
  %sp6.150 = bitcast i8* %next5.150 to [1 x i8]*
  store [1 x i8] %s6.150, [1 x i8]* %sp6.150
  %next6.150 = getelementptr [9 x i8], [9 x i8]* %spi150, i32 0, i32 7
  
  %s7.150 = load [2 x i8], [2 x i8]* @str.7.150
  %sp7.150 = bitcast i8* %next6.150 to [2 x i8]*
  store [2 x i8] %s7.150, [2 x i8]* %sp7.150
  %sp1.1.90 = bitcast [9 x i8]* %spi150 to i72*
;-------------------------------
  %i1.90 = load i72, i72* %sp1.1.90

  %xp90 = xor i72 %i0.90, %i1.90

  %fi.90 = alloca i72
  store i72 %xp90, i72* %fi.90

  %final.ptr.90 = bitcast i72* %fi.90 to [9 x i8]*
  %spi90 = load [9 x i8], [9 x i8]* %final.ptr.90
  store [9 x i8] %spi90, [9 x i8]* %cipher.ptr.46
;-------------------------------
  %cipher.46 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.46, i32 0, i32 0
  %plain.ptr.46 = tail call i8* @base64_decode(i8* %cipher.46)
  %spi46 = bitcast i8* %plain.ptr.46 to [4 x i8]*
  %spi.bis.830 = ptrtoint[4 x i8]* %spi46 to i32
;-------------------------------
  store i32 %spi.bis.830, i32* %16, align 4
  %63 = load i32, i32* %12, align 16
  store i32 %63, i32* %18, align 16
  store i32 134517477, i32* %19, align 4
  %arg.i.i.i41 = load i32, i32* %18, align 16
  %64 = tail call i32 @strlen(i32 %arg.i.i.i41)
  store i32 %64, i32* %21, align 4
  store i32 0, i32* %22, align 16
  store i32 1, i32* %23, align 4
  %storemerge.in20.i46 = load i32, i32* %21, align 4
  %storemerge21.i47 = add i32 %storemerge.in20.i46, -1
  store i32 %storemerge21.i47, i32* %24, align 8
  %65 = icmp sgt i32 %storemerge21.i47, -1
  br i1 %65, label %BB_8049304.i.i53, label %Func_convert.exit64

BB_8049313.i.i49:                                 ; preds = %BB_8049304.i.i53
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* %22, align 16
  %tmp0_v3.i.i.i48 = add i32 %67, %66
  store i32 %tmp0_v3.i.i.i48, i32* %22, align 16
  br label %BB_8049319.i.i57

BB_8049304.i.i53:                                 ; preds = %BB_8049319.i.i57, %Func_convert.exit33
  %storemerge22.i50 = phi i32 [ %storemerge.i56, %BB_8049319.i.i57 ], [ %storemerge21.i47, %Func_convert.exit33 ]
  %68 = load i32, i32* %12, align 16
  %tmp0_v3.i20.i.i51 = add i32 %68, %storemerge22.i50
  %69 = inttoptr i32 %tmp0_v3.i20.i.i51 to i8*
  %70 = load i8, i8* %69, align 1
  %.not.i.i.i52 = icmp eq i8 %70, 49
  br i1 %.not.i.i.i52, label %BB_8049313.i.i49, label %BB_8049319.i.i57

BB_8049319.i.i57:                                 ; preds = %BB_8049304.i.i53, %BB_8049313.i.i49
  %71 = load i32, i32* %23, align 4
  %tmp0_v1.i43.i.i54 = shl i32 %71, 1
  store i32 %tmp0_v1.i43.i.i54, i32* %23, align 4
  %storemerge.in.i55 = load i32, i32* %24, align 8
  %storemerge.i56 = add i32 %storemerge.in.i55, -1
  store i32 %storemerge.i56, i32* %24, align 8
  %72 = icmp sgt i32 %storemerge.i56, -1
  br i1 %72, label %BB_8049304.i.i53, label %Func_convert.exit64

Func_convert.exit64:                              ; preds = %BB_8049319.i.i57, %Func_convert.exit33
  %r_edx.0.lcssa.i58 = phi i32 [ %59, %Func_convert.exit33 ], [ %storemerge22.i50, %BB_8049319.i.i57 ]
  %73 = load i32, i32* %22, align 16
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 8
  %tmp2_v.i4.i = add i32 %75, -40
  %76 = inttoptr i32 %tmp2_v.i4.i to i32*
  store i32 %73, i32* %76, align 4
  store i32 %73, i32* %37, align 4
  %tmp2_v5.i.i = add i32 %74, -8154
  store i32 %tmp2_v5.i.i, i32* %12, align 16
  store i32 134517408, i32* %13, align 4
  %77 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp2_v.i28.i, i32 inreg noundef %r_edx.0.lcssa.i58, i32 noundef %tmp2_v7.i46.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !41
  ret void
}
define internal fastcc void @struct748(i32 %arg_esp) unnamed_addr  norecurse  !retregs !26 {
Func_804928A.exit.i:
  %tmp2_v.i67.i = add i32 %arg_esp, 4
  %tmp0_v.i68.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i70.i = add i32 %tmp0_v.i68.i, -4
  %2 = inttoptr i32 %tmp2_v3.i70.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i71.i = add i32 %tmp0_v.i68.i, -8
  %3 = inttoptr i32 %tmp2_v4.i71.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i73.i = add i32 %tmp0_v.i68.i, -12
  %4 = inttoptr i32 %tmp2_v5.i73.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i74.i = add i32 %tmp0_v.i68.i, -16
  %5 = inttoptr i32 %tmp2_v6.i74.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i75.i = add i32 %tmp0_v.i68.i, -20
  %6 = inttoptr i32 %tmp2_v7.i75.i to i32*
  store i32 0, i32* %6, align 4
  %tmp2_v8.i77.i = add i32 %tmp0_v.i68.i, -24
  %7 = inttoptr i32 %tmp2_v8.i77.i to i32*
  store i32 %tmp2_v.i67.i, i32* %7, align 8
  %tmp2_v10.i79.i = add i32 %tmp0_v.i68.i, -244
  %8 = inttoptr i32 %tmp2_v10.i79.i to i32*
  store i32 134517270, i32* %8, align 4
  %tmp4_v.i126.i.b = load i1, i1* @segs.0, align 1
  %9 = inttoptr i32 %arg_esp to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v2.i130.i = add i32 %tmp0_v.i68.i, -36
  %11 = inttoptr i32 %tmp2_v2.i130.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v3.i131.i = add i32 %tmp0_v.i68.i, -120
  %12 = inttoptr i32 %tmp2_v3.i131.i to i32*
  store i32 1769366859, i32* %12, align 8
  %tmp2_v4.i132.i = add i32 %tmp0_v.i68.i, -116
  %13 = inttoptr i32 %tmp2_v4.i132.i to i16*
  store i16 110, i16* %13, align 4
  %tmp2_v5.i133.i = add i32 %tmp0_v.i68.i, -70
  %14 = inttoptr i32 %tmp2_v5.i133.i to i32*
  store i32 825241648, i32* %14, align 4
  %tmp2_v6.i134.i = add i32 %tmp0_v.i68.i, -66
  %15 = inttoptr i32 %tmp2_v6.i134.i to i32*
  store i32 842085170, i32* %15, align 4
  %tmp2_v7.i135.i = add i32 %tmp0_v.i68.i, -62
  %16 = inttoptr i32 %tmp2_v7.i135.i to i16*
  store i16 51, i16* %16, align 2
  %tmp2_v8.i136.i = add i32 %tmp0_v.i68.i, -60
  %17 = inttoptr i32 %tmp2_v8.i136.i to i32*
  store i32 40, i32* %17, align 4
  %tmp2_v9.i137.i = add i32 %tmp0_v.i68.i, -56
  %18 = inttoptr i32 %tmp2_v9.i137.i to i32*
  store i32 1, i32* %18, align 8
  %tmp2_v10.i138.i = add i32 %tmp0_v.i68.i, -52
  %19 = inttoptr i32 %tmp2_v10.i138.i to i32*
  store i32 2, i32* %19, align 4
  %tmp2_v11.i139.i = add i32 %tmp0_v.i68.i, -48
  %20 = inttoptr i32 %tmp2_v11.i139.i to i32*
  store i32 3, i32* %20, align 16
  %tmp2_v12.i140.i = add i32 %tmp0_v.i68.i, -44
  %21 = inttoptr i32 %tmp2_v12.i140.i to i32*
  store i32 4, i32* %21, align 4
  %tmp2_v13.i141.i = add i32 %tmp0_v.i68.i, -40
  %22 = inttoptr i32 %tmp2_v13.i141.i to i32*
  store i32 5, i32* %22, align 8
  %tmp0_v15.i.i = add i32 %tmp0_v.i68.i, -336
  %23 = load i32, i32* %12, align 8
  %24 = inttoptr i32 %tmp0_v15.i.i to i32*
  store i32 %23, i32* %24, align 16
  %tmp0_v1.i183.i = load i32, i32* @df, align 4
  %tmp0_v2.i184.i = shl i32 %tmp0_v1.i183.i, 2
  %tmp4_v.i185.i = add i32 %tmp0_v2.i184.i, %tmp2_v3.i131.i
  %tmp4_v3.i.i = add i32 %tmp0_v2.i184.i, %tmp0_v15.i.i
  %25 = inttoptr i32 %tmp4_v.i185.i to i32*
  %26 = load i32, i32* %25, align 4
  %27 = inttoptr i32 %tmp4_v3.i.i to i32*
  store i32 %26, i32* %27, align 4
  %tmp0_v1.i183.i.1 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.1 = shl i32 %tmp0_v1.i183.i.1, 2
  %tmp4_v.i185.i.1 = add i32 %tmp0_v2.i184.i.1, %tmp4_v.i185.i
  %tmp4_v3.i.i.1 = add i32 %tmp0_v2.i184.i.1, %tmp4_v3.i.i
  %28 = inttoptr i32 %tmp4_v.i185.i.1 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = inttoptr i32 %tmp4_v3.i.i.1 to i32*
  store i32 %29, i32* %30, align 4
  %tmp0_v1.i183.i.2 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.2 = shl i32 %tmp0_v1.i183.i.2, 2
  %tmp4_v.i185.i.2 = add i32 %tmp0_v2.i184.i.2, %tmp4_v.i185.i.1
  %tmp4_v3.i.i.2 = add i32 %tmp0_v2.i184.i.2, %tmp4_v3.i.i.1
  %31 = inttoptr i32 %tmp4_v.i185.i.2 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = inttoptr i32 %tmp4_v3.i.i.2 to i32*
  store i32 %32, i32* %33, align 4
  %tmp0_v1.i183.i.3 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.3 = shl i32 %tmp0_v1.i183.i.3, 2
  %tmp4_v.i185.i.3 = add i32 %tmp0_v2.i184.i.3, %tmp4_v.i185.i.2
  %tmp4_v3.i.i.3 = add i32 %tmp0_v2.i184.i.3, %tmp4_v3.i.i.2
  %34 = inttoptr i32 %tmp4_v.i185.i.3 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = inttoptr i32 %tmp4_v3.i.i.3 to i32*
  store i32 %35, i32* %36, align 4
  %tmp0_v1.i183.i.4 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.4 = shl i32 %tmp0_v1.i183.i.4, 2
  %tmp4_v.i185.i.4 = add i32 %tmp0_v2.i184.i.4, %tmp4_v.i185.i.3
  %tmp4_v3.i.i.4 = add i32 %tmp0_v2.i184.i.4, %tmp4_v3.i.i.3
  %37 = inttoptr i32 %tmp4_v.i185.i.4 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = inttoptr i32 %tmp4_v3.i.i.4 to i32*
  store i32 %38, i32* %39, align 4
  %tmp0_v1.i183.i.5 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.5 = shl i32 %tmp0_v1.i183.i.5, 2
  %tmp4_v.i185.i.5 = add i32 %tmp0_v2.i184.i.5, %tmp4_v.i185.i.4
  %tmp4_v3.i.i.5 = add i32 %tmp0_v2.i184.i.5, %tmp4_v3.i.i.4
  %40 = inttoptr i32 %tmp4_v.i185.i.5 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = inttoptr i32 %tmp4_v3.i.i.5 to i32*
  store i32 %41, i32* %42, align 4
  %tmp0_v1.i183.i.6 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.6 = shl i32 %tmp0_v1.i183.i.6, 2
  %tmp4_v.i185.i.6 = add i32 %tmp0_v2.i184.i.6, %tmp4_v.i185.i.5
  %tmp4_v3.i.i.6 = add i32 %tmp0_v2.i184.i.6, %tmp4_v3.i.i.5
  %43 = inttoptr i32 %tmp4_v.i185.i.6 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = inttoptr i32 %tmp4_v3.i.i.6 to i32*
  store i32 %44, i32* %45, align 4
  %tmp0_v1.i183.i.7 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.7 = shl i32 %tmp0_v1.i183.i.7, 2
  %tmp4_v.i185.i.7 = add i32 %tmp0_v2.i184.i.7, %tmp4_v.i185.i.6
  %tmp4_v3.i.i.7 = add i32 %tmp0_v2.i184.i.7, %tmp4_v3.i.i.6
  %46 = inttoptr i32 %tmp4_v.i185.i.7 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = inttoptr i32 %tmp4_v3.i.i.7 to i32*
  store i32 %47, i32* %48, align 4
  %tmp0_v1.i183.i.8 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.8 = shl i32 %tmp0_v1.i183.i.8, 2
  %tmp4_v.i185.i.8 = add i32 %tmp0_v2.i184.i.8, %tmp4_v.i185.i.7
  %tmp4_v3.i.i.8 = add i32 %tmp0_v2.i184.i.8, %tmp4_v3.i.i.7
  %49 = inttoptr i32 %tmp4_v.i185.i.8 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = inttoptr i32 %tmp4_v3.i.i.8 to i32*
  store i32 %50, i32* %51, align 4
  %tmp0_v1.i183.i.9 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.9 = shl i32 %tmp0_v1.i183.i.9, 2
  %tmp4_v.i185.i.9 = add i32 %tmp0_v2.i184.i.9, %tmp4_v.i185.i.8
  %tmp4_v3.i.i.9 = add i32 %tmp0_v2.i184.i.9, %tmp4_v3.i.i.8
  %52 = inttoptr i32 %tmp4_v.i185.i.9 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = inttoptr i32 %tmp4_v3.i.i.9 to i32*
  store i32 %53, i32* %54, align 4
  %tmp0_v1.i183.i.10 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.10 = shl i32 %tmp0_v1.i183.i.10, 2
  %tmp4_v.i185.i.10 = add i32 %tmp0_v2.i184.i.10, %tmp4_v.i185.i.9
  %tmp4_v3.i.i.10 = add i32 %tmp0_v2.i184.i.10, %tmp4_v3.i.i.9
  %55 = inttoptr i32 %tmp4_v.i185.i.10 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = inttoptr i32 %tmp4_v3.i.i.10 to i32*
  store i32 %56, i32* %57, align 4
  %tmp0_v1.i183.i.11 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.11 = shl i32 %tmp0_v1.i183.i.11, 2
  %tmp4_v.i185.i.11 = add i32 %tmp0_v2.i184.i.11, %tmp4_v.i185.i.10
  %tmp4_v3.i.i.11 = add i32 %tmp0_v2.i184.i.11, %tmp4_v3.i.i.10
  %58 = inttoptr i32 %tmp4_v.i185.i.11 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = inttoptr i32 %tmp4_v3.i.i.11 to i32*
  store i32 %59, i32* %60, align 4
  %tmp0_v1.i183.i.12 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.12 = shl i32 %tmp0_v1.i183.i.12, 2
  %tmp4_v.i185.i.12 = add i32 %tmp0_v2.i184.i.12, %tmp4_v.i185.i.11
  %tmp4_v3.i.i.12 = add i32 %tmp0_v2.i184.i.12, %tmp4_v3.i.i.11
  %61 = inttoptr i32 %tmp4_v.i185.i.12 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = inttoptr i32 %tmp4_v3.i.i.12 to i32*
  store i32 %62, i32* %63, align 4
  %tmp0_v1.i183.i.13 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.13 = shl i32 %tmp0_v1.i183.i.13, 2
  %tmp4_v.i185.i.13 = add i32 %tmp0_v2.i184.i.13, %tmp4_v.i185.i.12
  %tmp4_v3.i.i.13 = add i32 %tmp0_v2.i184.i.13, %tmp4_v3.i.i.12
  %64 = inttoptr i32 %tmp4_v.i185.i.13 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = inttoptr i32 %tmp4_v3.i.i.13 to i32*
  store i32 %65, i32* %66, align 4
  %tmp0_v1.i183.i.14 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.14 = shl i32 %tmp0_v1.i183.i.14, 2
  %tmp4_v.i185.i.14 = add i32 %tmp0_v2.i184.i.14, %tmp4_v.i185.i.13
  %tmp4_v3.i.i.14 = add i32 %tmp0_v2.i184.i.14, %tmp4_v3.i.i.13
  %67 = inttoptr i32 %tmp4_v.i185.i.14 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = inttoptr i32 %tmp4_v3.i.i.14 to i32*
  store i32 %68, i32* %69, align 4
  %tmp0_v1.i183.i.15 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.15 = shl i32 %tmp0_v1.i183.i.15, 2
  %tmp4_v.i185.i.15 = add i32 %tmp0_v2.i184.i.15, %tmp4_v.i185.i.14
  %tmp4_v3.i.i.15 = add i32 %tmp0_v2.i184.i.15, %tmp4_v3.i.i.14
  %70 = inttoptr i32 %tmp4_v.i185.i.15 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = inttoptr i32 %tmp4_v3.i.i.15 to i32*
  store i32 %71, i32* %72, align 4
  %tmp0_v1.i183.i.16 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.16 = shl i32 %tmp0_v1.i183.i.16, 2
  %tmp4_v.i185.i.16 = add i32 %tmp0_v2.i184.i.16, %tmp4_v.i185.i.15
  %tmp4_v3.i.i.16 = add i32 %tmp0_v2.i184.i.16, %tmp4_v3.i.i.15
  %73 = inttoptr i32 %tmp4_v.i185.i.16 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = inttoptr i32 %tmp4_v3.i.i.16 to i32*
  store i32 %74, i32* %75, align 4
  %tmp0_v1.i183.i.17 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.17 = shl i32 %tmp0_v1.i183.i.17, 2
  %tmp4_v.i185.i.17 = add i32 %tmp0_v2.i184.i.17, %tmp4_v.i185.i.16
  %tmp4_v3.i.i.17 = add i32 %tmp0_v2.i184.i.17, %tmp4_v3.i.i.16
  %76 = inttoptr i32 %tmp4_v.i185.i.17 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = inttoptr i32 %tmp4_v3.i.i.17 to i32*
  store i32 %77, i32* %78, align 4
  %tmp0_v1.i183.i.18 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.18 = shl i32 %tmp0_v1.i183.i.18, 2
  %tmp4_v.i185.i.18 = add i32 %tmp0_v2.i184.i.18, %tmp4_v.i185.i.17
  %tmp4_v3.i.i.18 = add i32 %tmp0_v2.i184.i.18, %tmp4_v3.i.i.17
  %79 = inttoptr i32 %tmp4_v.i185.i.18 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = inttoptr i32 %tmp4_v3.i.i.18 to i32*
  store i32 %80, i32* %81, align 4
  %tmp0_v1.i183.i.19 = load i32, i32* @df, align 4
  %tmp0_v2.i184.i.19 = shl i32 %tmp0_v1.i183.i.19, 2
  %tmp4_v.i185.i.19 = add i32 %tmp0_v2.i184.i.19, %tmp4_v.i185.i.18
  %tmp4_v3.i.i.19 = add i32 %tmp0_v2.i184.i.19, %tmp4_v3.i.i.18
  %82 = inttoptr i32 %tmp4_v.i185.i.19 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = inttoptr i32 %tmp4_v3.i.i.19 to i32*
  store i32 %83, i32* %84, align 4
  %tmp2_v.i123.i = add i32 %tmp0_v.i68.i, -340
  %85 = inttoptr i32 %tmp2_v.i123.i to i32*
  store i32 134517393, i32* %85, align 4
  %tmp2_v.i26.i.i = add i32 %tmp0_v.i68.i, -344
  %86 = inttoptr i32 %tmp2_v.i26.i.i to i32*
  store i32 %tmp2_v4.i71.i, i32* %86, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i68.i, -348
  %87 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %87, align 4
  %tmp2_v2.i30.i.i = add i32 %tmp0_v.i68.i, -372
  %88 = inttoptr i32 %tmp2_v2.i30.i.i to i32*
  store i32 134518204, i32* %88, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i68.i, -380
  %89 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 %tmp0_v15.i.i, i32* %89, align 4
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i68.i, -384
  %90 = inttoptr i32 %tmp2_v4.i.i.i to i32*
;-------------------------------
; Replace: %spi.bis.746 = ptrtoint[10 x i8]* @str.bis.746 to i32
  %cipher.ptr.54 = alloca [17 x i8]
;-------------------------------
; Replace: store [17 x i8] c"\54\6d\46\74\5a\54\6f\67\4a\58\4d\4b\41\41\3d\3d\00", [17 x i8]* %cipher.ptr.54
;-------------------------------
; Replace: %sp0.1.91 = bitcast [17 x i8]* @str.91 to i136*
  %spi151 = alloca [17 x i8]
  
  %s0.151 = load [2 x i8], [2 x i8]* @str.0.151
  %sp0.151 = bitcast [17 x i8]* %spi151 to [2 x i8]*
  store [2 x i8] %s0.151, [2 x i8]* %sp0.151
  %next0.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 2
  
  %s1.151 = load [2 x i8], [2 x i8]* @str.1.151
  %sp1.151 = bitcast i8* %next0.151 to [2 x i8]*
  store [2 x i8] %s1.151, [2 x i8]* %sp1.151
  %next1.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 4
  
  %s2.151 = load [2 x i8], [2 x i8]* @str.2.151
  %sp2.151 = bitcast i8* %next1.151 to [2 x i8]*
  store [2 x i8] %s2.151, [2 x i8]* %sp2.151
  %next2.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 6
  
  %s3.151 = load [2 x i8], [2 x i8]* @str.3.151
  %sp3.151 = bitcast i8* %next2.151 to [2 x i8]*
  store [2 x i8] %s3.151, [2 x i8]* %sp3.151
  %next3.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 8
  
  %s4.151 = load [2 x i8], [2 x i8]* @str.4.151
  %sp4.151 = bitcast i8* %next3.151 to [2 x i8]*
  store [2 x i8] %s4.151, [2 x i8]* %sp4.151
  %next4.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 10
  
  %s5.151 = load [2 x i8], [2 x i8]* @str.5.151
  %sp5.151 = bitcast i8* %next4.151 to [2 x i8]*
  store [2 x i8] %s5.151, [2 x i8]* %sp5.151
  %next5.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 12
  
  %s6.151 = load [2 x i8], [2 x i8]* @str.6.151
  %sp6.151 = bitcast i8* %next5.151 to [2 x i8]*
  store [2 x i8] %s6.151, [2 x i8]* %sp6.151
  %next6.151 = getelementptr [17 x i8], [17 x i8]* %spi151, i32 0, i32 14
  
  %s7.151 = load [3 x i8], [3 x i8]* @str.7.151
  %sp7.151 = bitcast i8* %next6.151 to [3 x i8]*
  store [3 x i8] %s7.151, [3 x i8]* %sp7.151
  %sp0.1.91 = bitcast [17 x i8]* %spi151 to i136*
;-------------------------------
  %i0.91 = load i136, i136* %sp0.1.91

;-------------------------------
; Replace: %sp1.1.91 = bitcast [17 x i8]* @key.91 to i136*
  %spi152 = alloca [17 x i8]
  
  %s0.152 = load [2 x i8], [2 x i8]* @str.0.152
  %sp0.152 = bitcast [17 x i8]* %spi152 to [2 x i8]*
  store [2 x i8] %s0.152, [2 x i8]* %sp0.152
  %next0.152 = getelementptr [17 x i8], [17 x i8]* %spi152, i32 0, i32 2
  
  %s1.152 = load [2 x i8], [2 x i8]* @str.1.152
  %sp1.152 = bitcast i8* %next0.152 to [2 x i8]*
  store [2 x i8] %s1.152, [2 x i8]* %sp1.152
  %next1.152 = getelementptr [17 x i8], [17 x i8]* %spi152, i32 0, i32 4
  
  %s2.152 = load [2 x i8], [2 x i8]* @str.2.152
  %sp2.152 = bitcast i8* %next1.152 to [2 x i8]*
  store [2 x i8] %s2.152, [2 x i8]* %sp2.152
  %next2.152 = getelementptr [17 x i8], [17 x i8]* %spi152, i32 0, i32 6
  
  %s3.152 = load [2 x i8], [2 x i8]* @str.3.152
  %sp3.152 = bitcast i8* %next2.152 to [2 x i8]*
  store [2 x i8] %s3.152, [2 x i8]* %sp3.152
  %next3.152 = getelementptr [17 x i8], [17 x i8]* %spi152, i32 0, i32 8
  
  %s4.152 = load [2 x i8], [2 x i8]* @str.4.152
  %sp4.152 = bitcast i8* %next3.152 to [2 x i8]*
  store [2 x i8] %s4.152, [2 x i8]* %sp4.152
  %next4.152 = getelementptr [17 x i8], [17 x i8]* %spi152, i32 0, i32 10
  
  %s5.152 = load [2 x i8], [2 x i8]* @str.5.152
  %sp5.152 = bitcast i8* %next4.152 to [2 x i8]*
  store [2 x i8] %s5.152, [2 x i8]* %sp5.152
  %next5.152 = getelementptr [17 x i8], [17 x i8]* %spi152, i32 0, i32 12
  
  %s6.152 = load [2 x i8], [2 x i8]* @str.6.152
  %sp6.152 = bitcast i8* %next5.152 to [2 x i8]*
  store [2 x i8] %s6.152, [2 x i8]* %sp6.152
  %next6.152 = getelementptr [17 x i8], [17 x i8]* %spi152, i32 0, i32 14
  
  %s7.152 = load [3 x i8], [3 x i8]* @str.7.152
  %sp7.152 = bitcast i8* %next6.152 to [3 x i8]*
  store [3 x i8] %s7.152, [3 x i8]* %sp7.152
  %sp1.1.91 = bitcast [17 x i8]* %spi152 to i136*
;-------------------------------
  %i1.91 = load i136, i136* %sp1.1.91

  %xp91 = xor i136 %i0.91, %i1.91

  %fi.91 = alloca i136
  store i136 %xp91, i136* %fi.91

  %final.ptr.91 = bitcast i136* %fi.91 to [17 x i8]*
  %spi91 = load [17 x i8], [17 x i8]* %final.ptr.91
  store [17 x i8] %spi91, [17 x i8]* %cipher.ptr.54
;-------------------------------
  %cipher.54 = getelementptr inbounds [17 x i8], [17 x i8]* %cipher.ptr.54, i32 0, i32 0
  %plain.ptr.54 = tail call i8* @base64_decode(i8* %cipher.54)
  %spi54 = bitcast i8* %plain.ptr.54 to [10 x i8]*
  %spi.bis.746 = ptrtoint[10 x i8]* %spi54 to i32
;-------------------------------
  store i32 %spi.bis.746, i32* %90, align 16
  %tmp2_v5.i.i.i = add i32 %tmp0_v.i68.i, -388
  %91 = inttoptr i32 %tmp2_v5.i.i.i to i32*
  store i32 134518229, i32* %91, align 4
  %92 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef 21, i32 noundef %tmp2_v4.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %93 = lshr i64 %92, 32
  %94 = trunc i64 %93 to i32
  %mrv.i2.i = insertvalue { i32, i32 } undef, i32 %tmp2_v4.i.i.i, 0
  %tmp2_v.i35.i.i = add i32 %tmp0_v.i68.i, -286
  store i32 %tmp2_v.i35.i.i, i32* %89, align 4
;-------------------------------
; Replace: %spi.bis.745 = ptrtoint[8 x i8]* @str.bis.745 to i32
  %cipher.ptr.53 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\53\55\51\36\49\43\56\7a\43\67\41\3d\00", [13 x i8]* %cipher.ptr.53
;-------------------------------
; Replace: %sp0.1.92 = bitcast [13 x i8]* @str.92 to i104*
  %spi153 = alloca [13 x i8]
  
  %s0.153 = load [1 x i8], [1 x i8]* @str.0.153
  %sp0.153 = bitcast [13 x i8]* %spi153 to [1 x i8]*
  store [1 x i8] %s0.153, [1 x i8]* %sp0.153
  %next0.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 1
  
  %s1.153 = load [2 x i8], [2 x i8]* @str.1.153
  %sp1.153 = bitcast i8* %next0.153 to [2 x i8]*
  store [2 x i8] %s1.153, [2 x i8]* %sp1.153
  %next1.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 3
  
  %s2.153 = load [1 x i8], [1 x i8]* @str.2.153
  %sp2.153 = bitcast i8* %next1.153 to [1 x i8]*
  store [1 x i8] %s2.153, [1 x i8]* %sp2.153
  %next2.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 4
  
  %s3.153 = load [2 x i8], [2 x i8]* @str.3.153
  %sp3.153 = bitcast i8* %next2.153 to [2 x i8]*
  store [2 x i8] %s3.153, [2 x i8]* %sp3.153
  %next3.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 6
  
  %s4.153 = load [2 x i8], [2 x i8]* @str.4.153
  %sp4.153 = bitcast i8* %next3.153 to [2 x i8]*
  store [2 x i8] %s4.153, [2 x i8]* %sp4.153
  %next4.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 8
  
  %s5.153 = load [1 x i8], [1 x i8]* @str.5.153
  %sp5.153 = bitcast i8* %next4.153 to [1 x i8]*
  store [1 x i8] %s5.153, [1 x i8]* %sp5.153
  %next5.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 9
  
  %s6.153 = load [2 x i8], [2 x i8]* @str.6.153
  %sp6.153 = bitcast i8* %next5.153 to [2 x i8]*
  store [2 x i8] %s6.153, [2 x i8]* %sp6.153
  %next6.153 = getelementptr [13 x i8], [13 x i8]* %spi153, i32 0, i32 11
  
  %s7.153 = load [2 x i8], [2 x i8]* @str.7.153
  %sp7.153 = bitcast i8* %next6.153 to [2 x i8]*
  store [2 x i8] %s7.153, [2 x i8]* %sp7.153
  %sp0.1.92 = bitcast [13 x i8]* %spi153 to i104*
;-------------------------------
  %i0.92 = load i104, i104* %sp0.1.92

;-------------------------------
; Replace: %sp1.1.92 = bitcast [13 x i8]* @key.92 to i104*
  %spi154 = alloca [13 x i8]
  
  %s0.154 = load [1 x i8], [1 x i8]* @str.0.154
  %sp0.154 = bitcast [13 x i8]* %spi154 to [1 x i8]*
  store [1 x i8] %s0.154, [1 x i8]* %sp0.154
  %next0.154 = getelementptr [13 x i8], [13 x i8]* %spi154, i32 0, i32 1
  
  %s1.154 = load [2 x i8], [2 x i8]* @str.1.154
  %sp1.154 = bitcast i8* %next0.154 to [2 x i8]*
  store [2 x i8] %s1.154, [2 x i8]* %sp1.154
  %next1.154 = getelementptr [13 x i8], [13 x i8]* %spi154, i32 0, i32 3
  
  %s2.154 = load [1 x i8], [1 x i8]* @str.2.154
  %sp2.154 = bitcast i8* %next1.154 to [1 x i8]*
  store [1 x i8] %s2.154, [1 x i8]* %sp2.154
  %next2.154 = getelementptr [13 x i8], [13 x i8]* %spi154, i32 0, i32 4
  
  %s3.154 = load [2 x i8], [2 x i8]* @str.3.154
  %sp3.154 = bitcast i8* %next2.154 to [2 x i8]*
  store [2 x i8] %s3.154, [2 x i8]* %sp3.154
  %next3.154 = getelementptr [13 x i8], [13 x i8]* %spi154, i32 0, i32 6
  
  %s4.154 = load [2 x i8], [2 x i8]* @str.4.154
  %sp4.154 = bitcast i8* %next3.154 to [2 x i8]*
  store [2 x i8] %s4.154, [2 x i8]* %sp4.154
  %next4.154 = getelementptr [13 x i8], [13 x i8]* %spi154, i32 0, i32 8
  
  %s5.154 = load [1 x i8], [1 x i8]* @str.5.154
  %sp5.154 = bitcast i8* %next4.154 to [1 x i8]*
  store [1 x i8] %s5.154, [1 x i8]* %sp5.154
  %next5.154 = getelementptr [13 x i8], [13 x i8]* %spi154, i32 0, i32 9
  
  %s6.154 = load [2 x i8], [2 x i8]* @str.6.154
  %sp6.154 = bitcast i8* %next5.154 to [2 x i8]*
  store [2 x i8] %s6.154, [2 x i8]* %sp6.154
  %next6.154 = getelementptr [13 x i8], [13 x i8]* %spi154, i32 0, i32 11
  
  %s7.154 = load [2 x i8], [2 x i8]* @str.7.154
  %sp7.154 = bitcast i8* %next6.154 to [2 x i8]*
  store [2 x i8] %s7.154, [2 x i8]* %sp7.154
  %sp1.1.92 = bitcast [13 x i8]* %spi154 to i104*
;-------------------------------
  %i1.92 = load i104, i104* %sp1.1.92

  %xp92 = xor i104 %i0.92, %i1.92

  %fi.92 = alloca i104
  store i104 %xp92, i104* %fi.92

  %final.ptr.92 = bitcast i104* %fi.92 to [13 x i8]*
  %spi92 = load [13 x i8], [13 x i8]* %final.ptr.92
  store [13 x i8] %spi92, [13 x i8]* %cipher.ptr.53
;-------------------------------
  %cipher.53 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.53, i32 0, i32 0
  %plain.ptr.53 = tail call i8* @base64_decode(i8* %cipher.53)
  %spi53 = bitcast i8* %plain.ptr.53 to [8 x i8]*
  %spi.bis.745 = ptrtoint[8 x i8]* %spi53 to i32
;-------------------------------
  store i32 %spi.bis.745, i32* %90, align 16
  store i32 134518251, i32* %91, align 4
  %95 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %94, i32 noundef %tmp2_v4.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %96 = lshr i64 %95, 32
  %97 = trunc i64 %96 to i32
  %tmp2_v.i50.i.i = add i32 %tmp0_v.i68.i, -276
  %98 = inttoptr i32 %tmp2_v.i50.i.i to i32*
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %89, align 4
;-------------------------------
; Replace: %spi.bis.744 = ptrtoint[9 x i8]* @str.bis.744 to i32
  %cipher.ptr.52 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\51\57\64\6c\4f\69\41\6c\5a\41\6f\41\00", [13 x i8]* %cipher.ptr.52
;-------------------------------
; Replace: %sp0.1.93 = bitcast [13 x i8]* @str.93 to i104*
  %spi155 = alloca [13 x i8]
  
  %s0.155 = load [1 x i8], [1 x i8]* @str.0.155
  %sp0.155 = bitcast [13 x i8]* %spi155 to [1 x i8]*
  store [1 x i8] %s0.155, [1 x i8]* %sp0.155
  %next0.155 = getelementptr [13 x i8], [13 x i8]* %spi155, i32 0, i32 1
  
  %s1.155 = load [2 x i8], [2 x i8]* @str.1.155
  %sp1.155 = bitcast i8* %next0.155 to [2 x i8]*
  store [2 x i8] %s1.155, [2 x i8]* %sp1.155
  %next1.155 = getelementptr [13 x i8], [13 x i8]* %spi155, i32 0, i32 3
  
  %s2.155 = load [1 x i8], [1 x i8]* @str.2.155
  %sp2.155 = bitcast i8* %next1.155 to [1 x i8]*
  store [1 x i8] %s2.155, [1 x i8]* %sp2.155
  %next2.155 = getelementptr [13 x i8], [13 x i8]* %spi155, i32 0, i32 4
  
  %s3.155 = load [2 x i8], [2 x i8]* @str.3.155
  %sp3.155 = bitcast i8* %next2.155 to [2 x i8]*
  store [2 x i8] %s3.155, [2 x i8]* %sp3.155
  %next3.155 = getelementptr [13 x i8], [13 x i8]* %spi155, i32 0, i32 6
  
  %s4.155 = load [2 x i8], [2 x i8]* @str.4.155
  %sp4.155 = bitcast i8* %next3.155 to [2 x i8]*
  store [2 x i8] %s4.155, [2 x i8]* %sp4.155
  %next4.155 = getelementptr [13 x i8], [13 x i8]* %spi155, i32 0, i32 8
  
  %s5.155 = load [1 x i8], [1 x i8]* @str.5.155
  %sp5.155 = bitcast i8* %next4.155 to [1 x i8]*
  store [1 x i8] %s5.155, [1 x i8]* %sp5.155
  %next5.155 = getelementptr [13 x i8], [13 x i8]* %spi155, i32 0, i32 9
  
  %s6.155 = load [2 x i8], [2 x i8]* @str.6.155
  %sp6.155 = bitcast i8* %next5.155 to [2 x i8]*
  store [2 x i8] %s6.155, [2 x i8]* %sp6.155
  %next6.155 = getelementptr [13 x i8], [13 x i8]* %spi155, i32 0, i32 11
  
  %s7.155 = load [2 x i8], [2 x i8]* @str.7.155
  %sp7.155 = bitcast i8* %next6.155 to [2 x i8]*
  store [2 x i8] %s7.155, [2 x i8]* %sp7.155
  %sp0.1.93 = bitcast [13 x i8]* %spi155 to i104*
;-------------------------------
  %i0.93 = load i104, i104* %sp0.1.93

;-------------------------------
; Replace: %sp1.1.93 = bitcast [13 x i8]* @key.93 to i104*
  %spi156 = alloca [13 x i8]
  
  %s0.156 = load [1 x i8], [1 x i8]* @str.0.156
  %sp0.156 = bitcast [13 x i8]* %spi156 to [1 x i8]*
  store [1 x i8] %s0.156, [1 x i8]* %sp0.156
  %next0.156 = getelementptr [13 x i8], [13 x i8]* %spi156, i32 0, i32 1
  
  %s1.156 = load [2 x i8], [2 x i8]* @str.1.156
  %sp1.156 = bitcast i8* %next0.156 to [2 x i8]*
  store [2 x i8] %s1.156, [2 x i8]* %sp1.156
  %next1.156 = getelementptr [13 x i8], [13 x i8]* %spi156, i32 0, i32 3
  
  %s2.156 = load [1 x i8], [1 x i8]* @str.2.156
  %sp2.156 = bitcast i8* %next1.156 to [1 x i8]*
  store [1 x i8] %s2.156, [1 x i8]* %sp2.156
  %next2.156 = getelementptr [13 x i8], [13 x i8]* %spi156, i32 0, i32 4
  
  %s3.156 = load [2 x i8], [2 x i8]* @str.3.156
  %sp3.156 = bitcast i8* %next2.156 to [2 x i8]*
  store [2 x i8] %s3.156, [2 x i8]* %sp3.156
  %next3.156 = getelementptr [13 x i8], [13 x i8]* %spi156, i32 0, i32 6
  
  %s4.156 = load [2 x i8], [2 x i8]* @str.4.156
  %sp4.156 = bitcast i8* %next3.156 to [2 x i8]*
  store [2 x i8] %s4.156, [2 x i8]* %sp4.156
  %next4.156 = getelementptr [13 x i8], [13 x i8]* %spi156, i32 0, i32 8
  
  %s5.156 = load [1 x i8], [1 x i8]* @str.5.156
  %sp5.156 = bitcast i8* %next4.156 to [1 x i8]*
  store [1 x i8] %s5.156, [1 x i8]* %sp5.156
  %next5.156 = getelementptr [13 x i8], [13 x i8]* %spi156, i32 0, i32 9
  
  %s6.156 = load [2 x i8], [2 x i8]* @str.6.156
  %sp6.156 = bitcast i8* %next5.156 to [2 x i8]*
  store [2 x i8] %s6.156, [2 x i8]* %sp6.156
  %next6.156 = getelementptr [13 x i8], [13 x i8]* %spi156, i32 0, i32 11
  
  %s7.156 = load [2 x i8], [2 x i8]* @str.7.156
  %sp7.156 = bitcast i8* %next6.156 to [2 x i8]*
  store [2 x i8] %s7.156, [2 x i8]* %sp7.156
  %sp1.1.93 = bitcast [13 x i8]* %spi156 to i104*
;-------------------------------
  %i1.93 = load i104, i104* %sp1.1.93

  %xp93 = xor i104 %i0.93, %i1.93

  %fi.93 = alloca i104
  store i104 %xp93, i104* %fi.93

  %final.ptr.93 = bitcast i104* %fi.93 to [13 x i8]*
  %spi93 = load [13 x i8], [13 x i8]* %final.ptr.93
  store [13 x i8] %spi93, [13 x i8]* %cipher.ptr.52
;-------------------------------
  %cipher.52 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.52, i32 0, i32 0
  %plain.ptr.52 = tail call i8* @base64_decode(i8* %cipher.52)
  %spi52 = bitcast i8* %plain.ptr.52 to [9 x i8]*
  %spi.bis.744 = ptrtoint[9 x i8]* %spi52 to i32
;-------------------------------
  store i32 %spi.bis.744, i32* %90, align 16
  store i32 134518273, i32* %91, align 4
  %100 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %97, i32 noundef %tmp2_v4.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %101 = lshr i64 %100, 32
  %102 = trunc i64 %101 to i32
;-------------------------------
; Replace: %spi.bis.743 = ptrtoint[9 x i8]* @str.bis.743 to i32
  %cipher.ptr.51 = alloca [13 x i8]
;-------------------------------
; Replace: store [13 x i8] c"\52\33\4a\68\5a\47\56\7a\4f\69\41\41\00", [13 x i8]* %cipher.ptr.51
;-------------------------------
; Replace: %sp0.1.94 = bitcast [13 x i8]* @str.94 to i104*
  %spi157 = alloca [13 x i8]
  
  %s0.157 = load [1 x i8], [1 x i8]* @str.0.157
  %sp0.157 = bitcast [13 x i8]* %spi157 to [1 x i8]*
  store [1 x i8] %s0.157, [1 x i8]* %sp0.157
  %next0.157 = getelementptr [13 x i8], [13 x i8]* %spi157, i32 0, i32 1
  
  %s1.157 = load [2 x i8], [2 x i8]* @str.1.157
  %sp1.157 = bitcast i8* %next0.157 to [2 x i8]*
  store [2 x i8] %s1.157, [2 x i8]* %sp1.157
  %next1.157 = getelementptr [13 x i8], [13 x i8]* %spi157, i32 0, i32 3
  
  %s2.157 = load [1 x i8], [1 x i8]* @str.2.157
  %sp2.157 = bitcast i8* %next1.157 to [1 x i8]*
  store [1 x i8] %s2.157, [1 x i8]* %sp2.157
  %next2.157 = getelementptr [13 x i8], [13 x i8]* %spi157, i32 0, i32 4
  
  %s3.157 = load [2 x i8], [2 x i8]* @str.3.157
  %sp3.157 = bitcast i8* %next2.157 to [2 x i8]*
  store [2 x i8] %s3.157, [2 x i8]* %sp3.157
  %next3.157 = getelementptr [13 x i8], [13 x i8]* %spi157, i32 0, i32 6
  
  %s4.157 = load [2 x i8], [2 x i8]* @str.4.157
  %sp4.157 = bitcast i8* %next3.157 to [2 x i8]*
  store [2 x i8] %s4.157, [2 x i8]* %sp4.157
  %next4.157 = getelementptr [13 x i8], [13 x i8]* %spi157, i32 0, i32 8
  
  %s5.157 = load [1 x i8], [1 x i8]* @str.5.157
  %sp5.157 = bitcast i8* %next4.157 to [1 x i8]*
  store [1 x i8] %s5.157, [1 x i8]* %sp5.157
  %next5.157 = getelementptr [13 x i8], [13 x i8]* %spi157, i32 0, i32 9
  
  %s6.157 = load [2 x i8], [2 x i8]* @str.6.157
  %sp6.157 = bitcast i8* %next5.157 to [2 x i8]*
  store [2 x i8] %s6.157, [2 x i8]* %sp6.157
  %next6.157 = getelementptr [13 x i8], [13 x i8]* %spi157, i32 0, i32 11
  
  %s7.157 = load [2 x i8], [2 x i8]* @str.7.157
  %sp7.157 = bitcast i8* %next6.157 to [2 x i8]*
  store [2 x i8] %s7.157, [2 x i8]* %sp7.157
  %sp0.1.94 = bitcast [13 x i8]* %spi157 to i104*
;-------------------------------
  %i0.94 = load i104, i104* %sp0.1.94

;-------------------------------
; Replace: %sp1.1.94 = bitcast [13 x i8]* @key.94 to i104*
  %spi158 = alloca [13 x i8]
  
  %s0.158 = load [1 x i8], [1 x i8]* @str.0.158
  %sp0.158 = bitcast [13 x i8]* %spi158 to [1 x i8]*
  store [1 x i8] %s0.158, [1 x i8]* %sp0.158
  %next0.158 = getelementptr [13 x i8], [13 x i8]* %spi158, i32 0, i32 1
  
  %s1.158 = load [2 x i8], [2 x i8]* @str.1.158
  %sp1.158 = bitcast i8* %next0.158 to [2 x i8]*
  store [2 x i8] %s1.158, [2 x i8]* %sp1.158
  %next1.158 = getelementptr [13 x i8], [13 x i8]* %spi158, i32 0, i32 3
  
  %s2.158 = load [1 x i8], [1 x i8]* @str.2.158
  %sp2.158 = bitcast i8* %next1.158 to [1 x i8]*
  store [1 x i8] %s2.158, [1 x i8]* %sp2.158
  %next2.158 = getelementptr [13 x i8], [13 x i8]* %spi158, i32 0, i32 4
  
  %s3.158 = load [2 x i8], [2 x i8]* @str.3.158
  %sp3.158 = bitcast i8* %next2.158 to [2 x i8]*
  store [2 x i8] %s3.158, [2 x i8]* %sp3.158
  %next3.158 = getelementptr [13 x i8], [13 x i8]* %spi158, i32 0, i32 6
  
  %s4.158 = load [2 x i8], [2 x i8]* @str.4.158
  %sp4.158 = bitcast i8* %next3.158 to [2 x i8]*
  store [2 x i8] %s4.158, [2 x i8]* %sp4.158
  %next4.158 = getelementptr [13 x i8], [13 x i8]* %spi158, i32 0, i32 8
  
  %s5.158 = load [1 x i8], [1 x i8]* @str.5.158
  %sp5.158 = bitcast i8* %next4.158 to [1 x i8]*
  store [1 x i8] %s5.158, [1 x i8]* %sp5.158
  %next5.158 = getelementptr [13 x i8], [13 x i8]* %spi158, i32 0, i32 9
  
  %s6.158 = load [2 x i8], [2 x i8]* @str.6.158
  %sp6.158 = bitcast i8* %next5.158 to [2 x i8]*
  store [2 x i8] %s6.158, [2 x i8]* %sp6.158
  %next6.158 = getelementptr [13 x i8], [13 x i8]* %spi158, i32 0, i32 11
  
  %s7.158 = load [2 x i8], [2 x i8]* @str.7.158
  %sp7.158 = bitcast i8* %next6.158 to [2 x i8]*
  store [2 x i8] %s7.158, [2 x i8]* %sp7.158
  %sp1.1.94 = bitcast [13 x i8]* %spi158 to i104*
;-------------------------------
  %i1.94 = load i104, i104* %sp1.1.94

  %xp94 = xor i104 %i0.94, %i1.94

  %fi.94 = alloca i104
  store i104 %xp94, i104* %fi.94

  %final.ptr.94 = bitcast i104* %fi.94 to [13 x i8]*
  %spi94 = load [13 x i8], [13 x i8]* %final.ptr.94
  store [13 x i8] %spi94, [13 x i8]* %cipher.ptr.51
;-------------------------------
  %cipher.51 = getelementptr inbounds [13 x i8], [13 x i8]* %cipher.ptr.51, i32 0, i32 0
  %plain.ptr.51 = tail call i8* @base64_decode(i8* %cipher.51)
  %spi51 = bitcast i8* %plain.ptr.51 to [9 x i8]*
  %spi.bis.743 = ptrtoint[9 x i8]* %spi51 to i32
;-------------------------------
  store i32 %spi.bis.743, i32* %90, align 16
  store i32 134518291, i32* %91, align 4
  %103 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %102, i32 noundef %tmp2_v4.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %104 = lshr i64 %103, 32
  %105 = trunc i64 %104 to i32
  %tmp2_v.i.i.i = add i32 %tmp0_v.i68.i, -356
  %106 = inttoptr i32 %tmp2_v.i.i.i to i32*
  %tmp4_v.i.i.i6 = add i32 %tmp0_v.i68.i, -272
  store i32 0, i32* %106, align 4
  br label %BB_804961F.i.i

BB_8049376.i:                                     ; preds = %Func_print_student.exit, %BB_8049376.i
  %storemerge42 = phi i32 [ 0, %Func_print_student.exit ], [ %tmp0_v14.i.i, %BB_8049376.i ]
  %tmp4_v.i4.i = shl i32 %storemerge42, 3
  %tmp2_v4.i.i = add i32 %tmp2_v3.i.i, %tmp4_v.i4.i
  %107 = inttoptr i32 %tmp2_v4.i.i to i32*
  store i32 %storemerge42, i32* %107, align 4
  %108 = load i32, i32* %177, align 4
  %tmp0_v6.i.i = sub i32 10, %108
  %tmp4_v10.i.i = shl i32 %108, 3
  %tmp2_v11.i.i = add i32 %tmp2_v9.i.i, %tmp4_v10.i.i
  %109 = inttoptr i32 %tmp2_v11.i.i to i32*
  store i32 %tmp0_v6.i.i, i32* %109, align 4
  %110 = load i32, i32* %177, align 4
  %tmp0_v14.i.i = add i32 %110, 1
  store i32 %tmp0_v14.i.i, i32* %177, align 4
  %111 = icmp slt i32 %tmp0_v14.i.i, 10
  br i1 %111, label %BB_8049376.i, label %BB_80493B3.i

BB_80494CF.i:                                     ; preds = %BB_8049493.i
  %r_esp.0.in.le = extractvalue { i32, i32 } %mrv.i9.pn44, 0
  %112 = load i32, i32* %204, align 4
  %113 = inttoptr i32 %112 to i32*
  store i32 10, i32* %113, align 4
  %tmp2_v1.i25.i = add i32 %202, -212
  %114 = inttoptr i32 %tmp2_v1.i25.i to i32*
  %tmp2_v7.i197.i = add i32 %r_esp.0.in.le, 8
  %115 = inttoptr i32 %tmp2_v7.i197.i to i32*
  %tmp2_v10.i200.i = add i32 %r_esp.0.in.le, 4
  %116 = inttoptr i32 %tmp2_v10.i200.i to i32*
  %tmp2_v11.i202.i = add i32 %201, -8126
  %117 = inttoptr i32 %r_esp.0.in.le to i32*
  %tmp2_v13.i204.i = add i32 %r_esp.0.in.le, -4
  %118 = inttoptr i32 %tmp2_v13.i204.i to i32*
  store i32 0, i32* %114, align 4
  br label %BB_80494E7.i

BB_8049493.i:                                     ; preds = %Func_print_points.exit, %BB_8049493.i
  %r_esp.0.in46 = phi i32 [ %tmp2_v9.i21.i, %Func_print_points.exit ], [ %r_esp.0.in, %BB_8049493.i ]
  %.pn3745 = phi i32 [ %205, %Func_print_points.exit ], [ %129, %BB_8049493.i ]
  %mrv.i9.pn44 = phi { i32, i32 } [ %mrv.i9, %Func_print_points.exit ], [ %.pn, %BB_8049493.i ]
  %storemerge143 = phi i32 [ 0, %Func_print_points.exit ], [ %tmp0_v2.i216.i, %BB_8049493.i ]
  %.pn = insertvalue { i32, i32 } %mrv.i9.pn44, i32 %.pn3745, 1
  %119 = load i32, i32* %204, align 4
  %tmp0_v3.i110.i = shl i32 %storemerge143, 2
  %tmp0_v4.i111.i = add i32 %119, %tmp0_v3.i110.i
  %120 = inttoptr i32 %tmp0_v4.i111.i to i32*
  %121 = load i32, i32* %120, align 4
  %tmp2_v7.i115.i = add i32 %r_esp.0.in46, 8
  %122 = inttoptr i32 %tmp2_v7.i115.i to i32*
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %228, align 4
  %tmp2_v10.i118.i = add i32 %r_esp.0.in46, 4
  %124 = inttoptr i32 %tmp2_v10.i118.i to i32*
  store i32 %123, i32* %124, align 4
  %125 = inttoptr i32 %r_esp.0.in46 to i32*
  store i32 %tmp2_v11.i120.i, i32* %125, align 4
  %tmp2_v13.i.i = add i32 %r_esp.0.in46, -4
  %126 = inttoptr i32 %tmp2_v13.i.i to i32*
  store i32 134517948, i32* %126, align 4
  %127 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i22.i.i, i32 inreg noundef %tmp0_v3.i110.i, i32 noundef %r_esp.0.in46, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %128 = lshr i64 %127, 32
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %228, align 4
  %tmp0_v2.i216.i = add i32 %130, 1
  %r_esp.0.in = extractvalue { i32, i32 } %mrv.i9.pn44, 0
  store i32 %tmp0_v2.i216.i, i32* %228, align 4
  %131 = icmp slt i32 %tmp0_v2.i216.i, 5
  br i1 %131, label %BB_8049493.i, label %BB_80494CF.i

BB_804961F.i.i:                                   ; preds = %BB_804961F.i.i, %Func_804928A.exit.i
  %r_esp.0.in12.i = phi i32 [ %tmp2_v4.i.i.i, %Func_804928A.exit.i ], [ %r_esp.0.in.i, %BB_804961F.i.i ]
  %.pn811.i = phi i32 [ %105, %Func_804928A.exit.i ], [ %139, %BB_804961F.i.i ]
  %mrv.i2.pn10.i = phi { i32, i32 } [ %mrv.i2.i, %Func_804928A.exit.i ], [ %.pn.i, %BB_804961F.i.i ]
  %storemerge9.i = phi i32 [ 0, %Func_804928A.exit.i ], [ %tmp0_v2.i.i.i, %BB_804961F.i.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i2.pn10.i, i32 %.pn811.i, 1
  %tmp0_v1.i14.i.i = shl i32 %storemerge9.i, 2
  %tmp2_v3.i16.i.i = add i32 %tmp4_v.i.i.i6, %tmp0_v1.i14.i.i
  %132 = inttoptr i32 %tmp2_v3.i16.i.i to i32*
  %133 = load i32, i32* %132, align 4
  %tmp2_v6.i.i.i = add i32 %r_esp.0.in12.i, 4
  %134 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 %133, i32* %134, align 4
  %135 = inttoptr i32 %r_esp.0.in12.i to i32*
;-------------------------------
; Replace: %spi.bis.742 = ptrtoint[4 x i8]* @str.bis.742 to i32
  %cipher.ptr.50 = alloca [9 x i8]
;-------------------------------
; Replace: store [9 x i8] c"\4a\57\51\67\41\41\3d\3d\00", [9 x i8]* %cipher.ptr.50
;-------------------------------
; Replace: %sp0.1.95 = bitcast [9 x i8]* @str.95 to i72*
  %spi159 = alloca [9 x i8]
  
  %s0.159 = load [1 x i8], [1 x i8]* @str.0.159
  %sp0.159 = bitcast [9 x i8]* %spi159 to [1 x i8]*
  store [1 x i8] %s0.159, [1 x i8]* %sp0.159
  %next0.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 1
  
  %s1.159 = load [1 x i8], [1 x i8]* @str.1.159
  %sp1.159 = bitcast i8* %next0.159 to [1 x i8]*
  store [1 x i8] %s1.159, [1 x i8]* %sp1.159
  %next1.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 2
  
  %s2.159 = load [1 x i8], [1 x i8]* @str.2.159
  %sp2.159 = bitcast i8* %next1.159 to [1 x i8]*
  store [1 x i8] %s2.159, [1 x i8]* %sp2.159
  %next2.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 3
  
  %s3.159 = load [1 x i8], [1 x i8]* @str.3.159
  %sp3.159 = bitcast i8* %next2.159 to [1 x i8]*
  store [1 x i8] %s3.159, [1 x i8]* %sp3.159
  %next3.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 4
  
  %s4.159 = load [1 x i8], [1 x i8]* @str.4.159
  %sp4.159 = bitcast i8* %next3.159 to [1 x i8]*
  store [1 x i8] %s4.159, [1 x i8]* %sp4.159
  %next4.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 5
  
  %s5.159 = load [1 x i8], [1 x i8]* @str.5.159
  %sp5.159 = bitcast i8* %next4.159 to [1 x i8]*
  store [1 x i8] %s5.159, [1 x i8]* %sp5.159
  %next5.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 6
  
  %s6.159 = load [1 x i8], [1 x i8]* @str.6.159
  %sp6.159 = bitcast i8* %next5.159 to [1 x i8]*
  store [1 x i8] %s6.159, [1 x i8]* %sp6.159
  %next6.159 = getelementptr [9 x i8], [9 x i8]* %spi159, i32 0, i32 7
  
  %s7.159 = load [2 x i8], [2 x i8]* @str.7.159
  %sp7.159 = bitcast i8* %next6.159 to [2 x i8]*
  store [2 x i8] %s7.159, [2 x i8]* %sp7.159
  %sp0.1.95 = bitcast [9 x i8]* %spi159 to i72*
;-------------------------------
  %i0.95 = load i72, i72* %sp0.1.95

;-------------------------------
; Replace: %sp1.1.95 = bitcast [9 x i8]* @key.95 to i72*
  %spi160 = alloca [9 x i8]
  
  %s0.160 = load [1 x i8], [1 x i8]* @str.0.160
  %sp0.160 = bitcast [9 x i8]* %spi160 to [1 x i8]*
  store [1 x i8] %s0.160, [1 x i8]* %sp0.160
  %next0.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 1
  
  %s1.160 = load [1 x i8], [1 x i8]* @str.1.160
  %sp1.160 = bitcast i8* %next0.160 to [1 x i8]*
  store [1 x i8] %s1.160, [1 x i8]* %sp1.160
  %next1.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 2
  
  %s2.160 = load [1 x i8], [1 x i8]* @str.2.160
  %sp2.160 = bitcast i8* %next1.160 to [1 x i8]*
  store [1 x i8] %s2.160, [1 x i8]* %sp2.160
  %next2.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 3
  
  %s3.160 = load [1 x i8], [1 x i8]* @str.3.160
  %sp3.160 = bitcast i8* %next2.160 to [1 x i8]*
  store [1 x i8] %s3.160, [1 x i8]* %sp3.160
  %next3.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 4
  
  %s4.160 = load [1 x i8], [1 x i8]* @str.4.160
  %sp4.160 = bitcast i8* %next3.160 to [1 x i8]*
  store [1 x i8] %s4.160, [1 x i8]* %sp4.160
  %next4.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 5
  
  %s5.160 = load [1 x i8], [1 x i8]* @str.5.160
  %sp5.160 = bitcast i8* %next4.160 to [1 x i8]*
  store [1 x i8] %s5.160, [1 x i8]* %sp5.160
  %next5.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 6
  
  %s6.160 = load [1 x i8], [1 x i8]* @str.6.160
  %sp6.160 = bitcast i8* %next5.160 to [1 x i8]*
  store [1 x i8] %s6.160, [1 x i8]* %sp6.160
  %next6.160 = getelementptr [9 x i8], [9 x i8]* %spi160, i32 0, i32 7
  
  %s7.160 = load [2 x i8], [2 x i8]* @str.7.160
  %sp7.160 = bitcast i8* %next6.160 to [2 x i8]*
  store [2 x i8] %s7.160, [2 x i8]* %sp7.160
  %sp1.1.95 = bitcast [9 x i8]* %spi160 to i72*
;-------------------------------
  %i1.95 = load i72, i72* %sp1.1.95

  %xp95 = xor i72 %i0.95, %i1.95

  %fi.95 = alloca i72
  store i72 %xp95, i72* %fi.95

  %final.ptr.95 = bitcast i72* %fi.95 to [9 x i8]*
  %spi95 = load [9 x i8], [9 x i8]* %final.ptr.95
  store [9 x i8] %spi95, [9 x i8]* %cipher.ptr.50
;-------------------------------
  %cipher.50 = getelementptr inbounds [9 x i8], [9 x i8]* %cipher.ptr.50, i32 0, i32 0
  %plain.ptr.50 = tail call i8* @base64_decode(i8* %cipher.50)
  %spi50 = bitcast i8* %plain.ptr.50 to [4 x i8]*
  %spi.bis.742 = ptrtoint[4 x i8]* %spi50 to i32
;-------------------------------
  store i32 %spi.bis.742, i32* %135, align 4
  %tmp2_v9.i.i.i = add i32 %r_esp.0.in12.i, -4
  %136 = inttoptr i32 %tmp2_v9.i.i.i to i32*
  store i32 134518329, i32* %136, align 4
  %137 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %.pn811.i, i32 noundef %r_esp.0.in12.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %138 = lshr i64 %137, 32
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* %106, align 4
  %tmp0_v2.i.i.i = add i32 %140, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i2.pn10.i, 0
  store i32 %tmp0_v2.i.i.i, i32* %106, align 4
  %141 = icmp slt i32 %tmp0_v2.i.i.i, 5
  br i1 %141, label %BB_804961F.i.i, label %Func_print_student.exit

Func_print_student.exit:                          ; preds = %BB_804961F.i.i
  %142 = trunc i64 %138 to i32
  %r_esp.0.in.i.le = extractvalue { i32, i32 } %mrv.i2.pn10.i, 0
  %143 = inttoptr i32 %r_esp.0.in.i.le to i32*
  store i32 10, i32* %143, align 4
  %tmp2_v1.i66.i.i = add i32 %r_esp.0.in.i.le, -4
  %144 = inttoptr i32 %tmp2_v1.i66.i.i to i32*
  store i32 134518352, i32* %144, align 4
  %arg.i.i.i = load i32, i32* %143, align 4
  %145 = tail call i32 @putchar(i32 %arg.i.i.i)  nounwind 
  %146 = load i32, i32* %87, align 4
  %147 = load i32, i32* %86, align 8
  %tmp2_v.i13.i = add i32 %147, -208
  %148 = inttoptr i32 %tmp2_v.i13.i to i32*
  store i32 5, i32* %148, align 4
  %tmp2_v1.i14.i = add i32 %147, -204
  %149 = inttoptr i32 %tmp2_v1.i14.i to i32*
  store i32 10, i32* %149, align 4
  %tmp2_v2.i.i = add i32 %147, -200
  %150 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 2, i32* %150, align 4
  %tmp2_v3.i15.i = add i32 %147, -196
  %151 = inttoptr i32 %tmp2_v3.i15.i to i32*
  store i32 8, i32* %151, align 4
  %152 = load i32, i32* %148, align 4
  %tmp2_v7.i19.i = add i32 %tmp0_v.i68.i, -252
  %153 = inttoptr i32 %tmp2_v7.i19.i to i32*
  store i32 %152, i32* %153, align 4
  %tmp2_v8.i20.i = add i32 %146, -8184
  %tmp2_v9.i21.i = add i32 %tmp0_v.i68.i, -256
  %154 = inttoptr i32 %tmp2_v9.i21.i to i32*
  store i32 %tmp2_v8.i20.i, i32* %154, align 16
  %tmp2_v10.i.i = add i32 %tmp0_v.i68.i, -260
  %155 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517458, i32* %155, align 4
  %156 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %142, i32 noundef %tmp2_v9.i21.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %157 = lshr i64 %156, 32
  %158 = trunc i64 %157 to i32
  %159 = load i32, i32* %149, align 4
  store i32 %159, i32* %153, align 4
  %tmp2_v4.i88.i = add i32 %146, -8174
  store i32 %tmp2_v4.i88.i, i32* %154, align 16
  store i32 134517483, i32* %155, align 4
  %160 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %158, i32 noundef %tmp2_v9.i21.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %161 = lshr i64 %160, 32
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* %150, align 4
  store i32 %163, i32* %153, align 4
  %tmp2_v4.i51.i = add i32 %146, -8164
  store i32 %tmp2_v4.i51.i, i32* %154, align 16
  store i32 134517508, i32* %155, align 4
  %164 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %162, i32 noundef %tmp2_v9.i21.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %165 = lshr i64 %164, 32
  %166 = trunc i64 %165 to i32
  %167 = load i32, i32* %151, align 4
  store i32 %167, i32* %153, align 4
  %tmp2_v4.i229.i = add i32 %146, -8154
  store i32 %tmp2_v4.i229.i, i32* %154, align 16
  store i32 134517533, i32* %155, align 4
  %168 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %166, i32 noundef %tmp2_v9.i21.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %169 = load i32, i32* %150, align 4
  %170 = load i32, i32* %151, align 4
  store i32 %169, i32* %148, align 4
  store i32 %170, i32* %149, align 4
  %171 = load i32, i32* %148, align 4
  store i32 %171, i32* %153, align 4
  store i32 %tmp2_v8.i20.i, i32* %154, align 16
  store i32 134517582, i32* %155, align 4
  %172 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %170, i32 noundef %tmp2_v9.i21.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %173 = lshr i64 %172, 32
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %149, align 4
  store i32 %175, i32* %153, align 4
  store i32 %tmp2_v4.i88.i, i32* %154, align 16
  store i32 134517607, i32* %155, align 4
  %176 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef 0, i32 inreg noundef %174, i32 noundef %tmp2_v9.i21.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %tmp2_v.i159.i = add i32 %147, -220
  %177 = inttoptr i32 %tmp2_v.i159.i to i32*
  %tmp2_v3.i.i = add i32 %147, -192
  %tmp2_v9.i.i = add i32 %147, -188
  store i32 0, i32* %177, align 4
  br label %BB_8049376.i

BB_80494E7.i:                                     ; preds = %BB_80494E7.i, %BB_80494CF.i
  %storemerge247 = phi i32 [ 0, %BB_80494CF.i ], [ %tmp0_v2.i100.i, %BB_80494E7.i ]
  %178 = load i32, i32* %206, align 4
  %tmp0_v3.i192.i = shl i32 %storemerge247, 2
  %tmp0_v4.i193.i = add i32 %178, %tmp0_v3.i192.i
  %179 = inttoptr i32 %tmp0_v4.i193.i to i32*
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %115, align 4
  %181 = load i32, i32* %114, align 4
  store i32 %181, i32* %116, align 4
  store i32 %tmp2_v11.i202.i, i32* %117, align 4
  store i32 134518032, i32* %118, align 4
  %182 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i22.i.i, i32 inreg noundef %tmp0_v3.i192.i, i32 noundef %r_esp.0.in.le, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %183 = load i32, i32* %114, align 4
  %tmp0_v2.i100.i = add i32 %183, 1
  store i32 %tmp0_v2.i100.i, i32* %114, align 4
  %184 = icmp slt i32 %tmp0_v2.i100.i, 5
  br i1 %184, label %BB_80494E7.i, label %.exit

BB_80493B3.i:                                     ; preds = %BB_8049376.i
  store i32 %tmp2_v3.i.i, i32* %154, align 16
  store i32 134517698, i32* %155, align 4
  %tmp2_v.i15.i.i = add i32 %tmp0_v.i68.i, -264
  %185 = inttoptr i32 %tmp2_v.i15.i.i to i32*
  store i32 %147, i32* %185, align 8
  %tmp2_v1.i.i.i18 = add i32 %tmp0_v.i68.i, -268
  %186 = inttoptr i32 %tmp2_v1.i.i.i18 to i32*
  store i32 %146, i32* %186, align 4
  %tmp2_v2.i.i.i19 = add i32 %tmp0_v.i68.i, -292
  %187 = inttoptr i32 %tmp2_v2.i.i.i19 to i32*
  store i32 134518101, i32* %187, align 4
  %tmp2_v14.i.i.i = add i32 %tmp0_v.i68.i, -296
  %188 = inttoptr i32 %tmp2_v14.i.i.i to i32*
  %tmp2_v17.i.i.i = add i32 %tmp0_v.i68.i, -300
  %189 = inttoptr i32 %tmp2_v17.i.i.i to i32*
  %tmp2_v19.i.i.i = add i32 %tmp0_v.i68.i, -304
  %190 = inttoptr i32 %tmp2_v19.i.i.i to i32*
  %tmp2_v20.i.i.i = add i32 %tmp0_v.i68.i, -308
  %191 = inttoptr i32 %tmp2_v20.i.i.i to i32*
  store i32 0, i32* %98, align 4
  br label %BB_8049564.i.i

BB_8049564.i.i:                                   ; preds = %BB_8049564.i.i, %BB_80493B3.i
  %storemerge18.i = phi i32 [ 0, %BB_80493B3.i ], [ %tmp0_v2.i.i.i21, %BB_8049564.i.i ]
  %tmp4_v.i22.i.i = shl i32 %storemerge18.i, 3
  %192 = load i32, i32* %154, align 16
  %tmp0_v3.i.i.i = add i32 %192, %tmp4_v.i22.i.i
  %tmp2_v4.i.i.i20 = add i32 %tmp0_v3.i.i.i, 4
  %193 = inttoptr i32 %tmp2_v4.i.i.i20 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %196 = load i32, i32* %195, align 4
  store i32 %194, i32* %187, align 4
  store i32 %196, i32* %188, align 8
  %197 = load i32, i32* %98, align 4
  store i32 %197, i32* %189, align 4
;-------------------------------
; Replace: %spi.bis.741 = ptrtoint[15 x i8]* @str.bis.741 to i32
  %cipher.ptr.49 = alloca [21 x i8]
;-------------------------------
; Replace: store [21 x i8] c"\63\43\56\6b\49\44\30\67\4b\43\56\6b\4c\43\56\6b\4b\51\6f\41\00", [21 x i8]* %cipher.ptr.49
;-------------------------------
; Replace: %sp0.1.96 = bitcast [21 x i8]* @str.96 to i168*
  %spi161 = alloca [21 x i8]
  
  %s0.161 = load [2 x i8], [2 x i8]* @str.0.161
  %sp0.161 = bitcast [21 x i8]* %spi161 to [2 x i8]*
  store [2 x i8] %s0.161, [2 x i8]* %sp0.161
  %next0.161 = getelementptr [21 x i8], [21 x i8]* %spi161, i32 0, i32 2
  
  %s1.161 = load [3 x i8], [3 x i8]* @str.1.161
  %sp1.161 = bitcast i8* %next0.161 to [3 x i8]*
  store [3 x i8] %s1.161, [3 x i8]* %sp1.161
  %next1.161 = getelementptr [21 x i8], [21 x i8]* %spi161, i32 0, i32 5
  
  %s2.161 = load [2 x i8], [2 x i8]* @str.2.161
  %sp2.161 = bitcast i8* %next1.161 to [2 x i8]*
  store [2 x i8] %s2.161, [2 x i8]* %sp2.161
  %next2.161 = getelementptr [21 x i8], [21 x i8]* %spi161, i32 0, i32 7
  
  %s3.161 = load [3 x i8], [3 x i8]* @str.3.161
  %sp3.161 = bitcast i8* %next2.161 to [3 x i8]*
  store [3 x i8] %s3.161, [3 x i8]* %sp3.161
  %next3.161 = getelementptr [21 x i8], [21 x i8]* %spi161, i32 0, i32 10
  
  %s4.161 = load [3 x i8], [3 x i8]* @str.4.161
  %sp4.161 = bitcast i8* %next3.161 to [3 x i8]*
  store [3 x i8] %s4.161, [3 x i8]* %sp4.161
  %next4.161 = getelementptr [21 x i8], [21 x i8]* %spi161, i32 0, i32 13
  
  %s5.161 = load [2 x i8], [2 x i8]* @str.5.161
  %sp5.161 = bitcast i8* %next4.161 to [2 x i8]*
  store [2 x i8] %s5.161, [2 x i8]* %sp5.161
  %next5.161 = getelementptr [21 x i8], [21 x i8]* %spi161, i32 0, i32 15
  
  %s6.161 = load [3 x i8], [3 x i8]* @str.6.161
  %sp6.161 = bitcast i8* %next5.161 to [3 x i8]*
  store [3 x i8] %s6.161, [3 x i8]* %sp6.161
  %next6.161 = getelementptr [21 x i8], [21 x i8]* %spi161, i32 0, i32 18
  
  %s7.161 = load [3 x i8], [3 x i8]* @str.7.161
  %sp7.161 = bitcast i8* %next6.161 to [3 x i8]*
  store [3 x i8] %s7.161, [3 x i8]* %sp7.161
  %sp0.1.96 = bitcast [21 x i8]* %spi161 to i168*
;-------------------------------
  %i0.96 = load i168, i168* %sp0.1.96

;-------------------------------
; Replace: %sp1.1.96 = bitcast [21 x i8]* @key.96 to i168*
  %spi162 = alloca [21 x i8]
  
  %s0.162 = load [2 x i8], [2 x i8]* @str.0.162
  %sp0.162 = bitcast [21 x i8]* %spi162 to [2 x i8]*
  store [2 x i8] %s0.162, [2 x i8]* %sp0.162
  %next0.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 2
  
  %s1.162 = load [3 x i8], [3 x i8]* @str.1.162
  %sp1.162 = bitcast i8* %next0.162 to [3 x i8]*
  store [3 x i8] %s1.162, [3 x i8]* %sp1.162
  %next1.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 5
  
  %s2.162 = load [2 x i8], [2 x i8]* @str.2.162
  %sp2.162 = bitcast i8* %next1.162 to [2 x i8]*
  store [2 x i8] %s2.162, [2 x i8]* %sp2.162
  %next2.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 7
  
  %s3.162 = load [3 x i8], [3 x i8]* @str.3.162
  %sp3.162 = bitcast i8* %next2.162 to [3 x i8]*
  store [3 x i8] %s3.162, [3 x i8]* %sp3.162
  %next3.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 10
  
  %s4.162 = load [3 x i8], [3 x i8]* @str.4.162
  %sp4.162 = bitcast i8* %next3.162 to [3 x i8]*
  store [3 x i8] %s4.162, [3 x i8]* %sp4.162
  %next4.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 13
  
  %s5.162 = load [2 x i8], [2 x i8]* @str.5.162
  %sp5.162 = bitcast i8* %next4.162 to [2 x i8]*
  store [2 x i8] %s5.162, [2 x i8]* %sp5.162
  %next5.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 15
  
  %s6.162 = load [3 x i8], [3 x i8]* @str.6.162
  %sp6.162 = bitcast i8* %next5.162 to [3 x i8]*
  store [3 x i8] %s6.162, [3 x i8]* %sp6.162
  %next6.162 = getelementptr [21 x i8], [21 x i8]* %spi162, i32 0, i32 18
  
  %s7.162 = load [3 x i8], [3 x i8]* @str.7.162
  %sp7.162 = bitcast i8* %next6.162 to [3 x i8]*
  store [3 x i8] %s7.162, [3 x i8]* %sp7.162
  %sp1.1.96 = bitcast [21 x i8]* %spi162 to i168*
;-------------------------------
  %i1.96 = load i168, i168* %sp1.1.96

  %xp96 = xor i168 %i0.96, %i1.96

  %fi.96 = alloca i168
  store i168 %xp96, i168* %fi.96

  %final.ptr.96 = bitcast i168* %fi.96 to [21 x i8]*
  %spi96 = load [21 x i8], [21 x i8]* %final.ptr.96
  store [21 x i8] %spi96, [21 x i8]* %cipher.ptr.49
;-------------------------------
  %cipher.49 = getelementptr inbounds [21 x i8], [21 x i8]* %cipher.ptr.49, i32 0, i32 0
  %plain.ptr.49 = tail call i8* @base64_decode(i8* %cipher.49)
  %spi49 = bitcast i8* %plain.ptr.49 to [15 x i8]*
  %spi.bis.741 = ptrtoint[15 x i8]* %spi49 to i32
;-------------------------------
  store i32 %spi.bis.741, i32* %190, align 16
  store i32 134518168, i32* %191, align 4
  %198 = tail call x86_fastcallcc i64 @helper_stub_trampoline(i32 inreg noundef %tmp4_v.i22.i.i, i32 inreg noundef %194, i32 noundef %tmp2_v19.i.i.i, i32 noundef ptrtoint (i32 (i8*, ...)* @printf to i32))  nobuiltin nounwind "no-builtins" , !funcname !27
  %199 = load i32, i32* %98, align 4
  %tmp0_v2.i.i.i21 = add i32 %199, 1
  store i32 %tmp0_v2.i.i.i21, i32* %98, align 4
  %200 = icmp slt i32 %tmp0_v2.i.i.i21, 10
  br i1 %200, label %BB_8049564.i.i, label %Func_print_points.exit

Func_print_points.exit:                           ; preds = %BB_8049564.i.i
  %mrv.i9 = insertvalue { i32, i32 } undef, i32 %tmp2_v9.i21.i, 0
  %201 = load i32, i32* %186, align 4
  %202 = load i32, i32* %185, align 8
  store i32 20, i32* %154, align 16
  store i32 134517711, i32* %155, align 4
  %arg.i.i = load i32, i32* %154, align 16
  %203 = tail call i32 @malloc(i32 %arg.i.i)
  %tmp2_v.i7.i = add i32 %202, -228
  %204 = inttoptr i32 %tmp2_v.i7.i to i32*
  store i32 %203, i32* %204, align 4
  store i32 20, i32* %154, align 16
  store i32 134517730, i32* %155, align 4
  %arg.i.i28 = load i32, i32* %154, align 16
  %205 = tail call i32 @malloc(i32 %arg.i.i28)
  %tmp2_v.i29.i = add i32 %202, -224
  %206 = inttoptr i32 %tmp2_v.i29.i to i32*
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %204, align 4
  %208 = inttoptr i32 %207 to i32*
  store i32 1, i32* %208, align 4
  %209 = load i32, i32* %204, align 4
  %tmp0_v5.i34.i = add i32 %209, 4
  %210 = inttoptr i32 %tmp0_v5.i34.i to i32*
  store i32 2, i32* %210, align 4
  %211 = load i32, i32* %204, align 4
  %tmp0_v8.i36.i = add i32 %211, 8
  %212 = inttoptr i32 %tmp0_v8.i36.i to i32*
  store i32 3, i32* %212, align 4
  %213 = load i32, i32* %204, align 4
  %tmp0_v11.i.i = add i32 %213, 12
  %214 = inttoptr i32 %tmp0_v11.i.i to i32*
  store i32 4, i32* %214, align 4
  %215 = load i32, i32* %204, align 4
  %tmp0_v14.i40.i = add i32 %215, 16
  %216 = inttoptr i32 %tmp0_v14.i40.i to i32*
  store i32 5, i32* %216, align 4
  %217 = load i32, i32* %206, align 4
  %218 = inttoptr i32 %217 to i32*
  store i32 9, i32* %218, align 4
  %219 = load i32, i32* %206, align 4
  %tmp0_v19.i.i = add i32 %219, 4
  %220 = inttoptr i32 %tmp0_v19.i.i to i32*
  store i32 9, i32* %220, align 4
  %221 = load i32, i32* %206, align 4
  %tmp0_v22.i.i = add i32 %221, 8
  %222 = inttoptr i32 %tmp0_v22.i.i to i32*
  store i32 9, i32* %222, align 4
  %223 = load i32, i32* %206, align 4
  %tmp0_v25.i.i = add i32 %223, 12
  %224 = inttoptr i32 %tmp0_v25.i.i to i32*
  store i32 9, i32* %224, align 4
  %225 = load i32, i32* %206, align 4
  %tmp0_v28.i.i = add i32 %225, 16
  %226 = inttoptr i32 %tmp0_v28.i.i to i32*
  store i32 9, i32* %226, align 4
  %227 = load i32, i32* %206, align 4
  store i32 %227, i32* %204, align 4
  %tmp2_v32.i.i = add i32 %202, -216
  %228 = inttoptr i32 %tmp2_v32.i.i to i32*
  %tmp2_v11.i120.i = add i32 %201, -8144
  store i32 0, i32* %228, align 4
  br label %BB_8049493.i

.exit:                                            ; preds = %BB_80494E7.i
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
!26 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
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
!102 = !{!"double", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C++ TBAA"}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !103, i64 0}
!107 = !{i32 0, i32 0, i32 0, i32 0, i32 0}
!108 = !{!"clang version 14.0.0"}
!109 = !{i32 1, !"wchar_size", i32 4}
!110 = !{i32 7, !"PIC Level", i32 2}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{i32 1, !"NumRegisterParameters", i32 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C++ TBAA"}
!118 = !{i32 0, i32 0, i32 0}
!119 = !{!"clang version 14.0.0"}
!120 = !{i32 1, !"wchar_size", i32 4}
!121 = !{i32 7, !"PIC Level", i32 2}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{i32 1, !"NumRegisterParameters", i32 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"double", !127, i64 0}
!127 = !{!"omnipotent char", !128, i64 0}
!128 = !{!"Simple C++ TBAA"}
!129 = !{!130, !130, i64 0}
!130 = !{!"int", !127, i64 0}
!131 = !{i32 0, i32 0, i32 0, i32 0}
!132 = !{!"printf"}
!133 = !{!"clang version 14.0.0"}
!134 = !{i32 1, !"wchar_size", i32 4}
!135 = !{i32 7, !"PIC Level", i32 2}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{i32 1, !"NumRegisterParameters", i32 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"double", !141, i64 0}
!141 = !{!"omnipotent char", !142, i64 0}
!142 = !{!"Simple C++ TBAA"}
!143 = !{!144, !144, i64 0}
!144 = !{!"int", !141, i64 0}
!145 = !{i32 0, i32 0, i32 0, i32 0}
!146 = !{!"printf"}
!147 = !{!"clang version 14.0.0"}
!148 = !{i32 1, !"wchar_size", i32 4}
!149 = !{i32 7, !"PIC Level", i32 2}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{i32 1, !"NumRegisterParameters", i32 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"double", !155, i64 0}
!155 = !{!"omnipotent char", !156, i64 0}
!156 = !{!"Simple C++ TBAA"}
!157 = !{!158, !158, i64 0}
!158 = !{!"int", !155, i64 0}
!159 = !{i32 0, i32 0, i32 0, i32 0}
!160 = !{!"printf"}
!161 = !{!"clang version 14.0.0"}
!162 = !{i32 1, !"wchar_size", i32 4}
!163 = !{i32 7, !"PIC Level", i32 2}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{i32 1, !"NumRegisterParameters", i32 0}
!167 = !{!168, !168, i64 0}
!168 = !{!"double", !169, i64 0}
!169 = !{!"omnipotent char", !170, i64 0}
!170 = !{!"Simple C++ TBAA"}
!171 = !{!172, !172, i64 0}
!172 = !{!"int", !169, i64 0}
!173 = !{i32 0, i32 0, i32 0, i32 0}
!174 = !{!"printf"}
!175 = !{i32 0, i32 3, i32 4}
!176 = !{!"clang version 14.0.0"}
!177 = !{i32 1, !"wchar_size", i32 4}
!178 = !{i32 7, !"PIC Level", i32 2}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{i32 1, !"NumRegisterParameters", i32 0}
!182 = !{!183, !183, i64 0}
!183 = !{!"double", !184, i64 0}
!184 = !{!"omnipotent char", !185, i64 0}
!185 = !{!"Simple C++ TBAA"}
!186 = !{!187, !187, i64 0}
!187 = !{!"int", !184, i64 0}
!188 = !{i32 0, i32 0, i32 0, i32 0}
!189 = !{!"printf"}
!190 = !{!"clang version 14.0.0"}
!191 = !{i32 1, !"wchar_size", i32 4}
!192 = !{i32 7, !"PIC Level", i32 2}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{i32 1, !"NumRegisterParameters", i32 0}
!196 = !{!197, !197, i64 0}
!197 = !{!"double", !198, i64 0}
!198 = !{!"omnipotent char", !199, i64 0}
!199 = !{!"Simple C++ TBAA"}
!200 = !{!201, !201, i64 0}
!201 = !{!"int", !198, i64 0}
!202 = !{i32 0, i32 0, i32 0, i32 0}
!203 = !{!"printf"}
!204 = !{i32 0, i32 2}
!205 = !{!"clang version 14.0.0"}
!206 = !{i32 1, !"wchar_size", i32 4}
!207 = !{i32 7, !"PIC Level", i32 2}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{i32 1, !"NumRegisterParameters", i32 0}
!211 = !{!212, !212, i64 0}
!212 = !{!"int", !213, i64 0}
!213 = !{!"omnipotent char", !214, i64 0}
!214 = !{!"Simple C++ TBAA"}
!215 = !{i32 0, i32 0, i32 0}
!216 = !{!"clang version 14.0.0"}
!217 = !{i32 1, !"wchar_size", i32 4}
!218 = !{i32 7, !"PIC Level", i32 2}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{i32 1, !"NumRegisterParameters", i32 0}
!222 = !{!223, !223, i64 0}
!223 = !{!"int", !224, i64 0}
!224 = !{!"omnipotent char", !225, i64 0}
!225 = !{!"Simple C++ TBAA"}
!226 = !{i32 0, i32 0, i32 0}
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
