; Mutation 408
; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@df = internal unnamed_addr global i32 0
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false
@str.406 = constant [3 x i8] c"In\00"

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 1, i32 -1
  store i32 %7, i32* @df, align 4, !tbaa !6
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %8 = ptrtoint i8** %2 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !6
  %9 = ptrtoint i8** %1 to i32
  store i32 %9, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !6
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !6
  %10 = tail call i8* @llvm.returnaddress(i32 0)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !6
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @malloc(i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcat(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strcpy(i32, i32) local_unnamed_addr  noinline 

; Function Attrs: noinline
declare void @free(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @join408(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
BB_8049298.i:
  %tmp2_v.i21.i = add i32 %arg_esp, 4
  %tmp0_v.i22.i = and i32 %arg_esp, -16
  %0 = inttoptr i32 %arg_esp to i32*
  %1 = load i32, i32* %0, align 4
  %tmp2_v3.i.i = add i32 %tmp0_v.i22.i, -4
  %2 = inttoptr i32 %tmp2_v3.i.i to i32*
  store i32 %1, i32* %2, align 4
  %tmp2_v4.i24.i = add i32 %tmp0_v.i22.i, -8
  %3 = inttoptr i32 %tmp2_v4.i24.i to i32*
  store i32 0, i32* %3, align 8
  %tmp2_v5.i26.i = add i32 %tmp0_v.i22.i, -12
  %4 = inttoptr i32 %tmp2_v5.i26.i to i32*
  store i32 0, i32* %4, align 4
  %tmp2_v6.i28.i = add i32 %tmp0_v.i22.i, -16
  %5 = inttoptr i32 %tmp2_v6.i28.i to i32*
  store i32 0, i32* %5, align 16
  %tmp2_v7.i30.i = add i32 %tmp0_v.i22.i, -20
  %6 = inttoptr i32 %tmp2_v7.i30.i to i32*
  store i32 0, i32* %6, align 4
  %tmp2_v8.i.i = add i32 %tmp0_v.i22.i, -24
  %7 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 %tmp2_v.i21.i, i32* %7, align 8
  %tmp2_v10.i.i = add i32 %tmp0_v.i22.i, -244
  %8 = inttoptr i32 %tmp2_v10.i.i to i32*
  store i32 134517366, i32* %8, align 4
  %tmp4_v.i80.i.b = load i1, i1* @segs.0, align 1
  %9 = inttoptr i32 %arg_esp to i32*
  %10 = load i32, i32* %9, align 4
  %tmp2_v2.i84.i = add i32 %tmp0_v.i22.i, -36
  %11 = inttoptr i32 %tmp2_v2.i84.i to i32*
  store i32 %10, i32* %11, align 4
  %tmp2_v3.i85.i = add i32 %tmp0_v.i22.i, -222
  %12 = load i32, i32* inttoptr (i32 134520864 to i32*), align 32
  %13 = inttoptr i32 %tmp2_v3.i85.i to i32*
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* inttoptr (i32 134521040 to i32*), align 16
  %tmp2_v4.i44.i = add i32 %tmp0_v.i22.i, -46
  %15 = inttoptr i32 %tmp2_v4.i44.i to i32*
  store i32 %14, i32* %15, align 4
  %tmp2_v5.i45.i = add i32 %tmp0_v.i22.i, -218
  %tmp0_v6.i.i = and i32 %tmp2_v5.i45.i, -12
  %tmp0_v7.i.i = sub i32 %tmp2_v3.i85.i, %tmp0_v6.i.i
  %tmp0_v9.i47.i = add i32 %tmp0_v7.i.i, 180
  %.not.i.i43 = icmp ult i32 %tmp0_v9.i47.i, 4
  br i1 %.not.i.i43, label %BB_80492BE.i, label %Func_80492BC.exit.i.preheader

Func_80492BC.exit.i.preheader:                    ; preds = %BB_8049298.i
  %tmp0_v11.i.i = lshr i32 %tmp0_v9.i47.i, 2
  %spi406 = ptrtoint[3 x i8]* @str.406 to i32
  %tmp0_v8.i46.i = sub i32 %spi406, %tmp0_v7.i.i
  br label %Func_80492BC.exit.i

Func_80492BC.exit.i:                              ; preds = %Func_80492BC.exit.i, %Func_80492BC.exit.i.preheader
  %r_ecx.046 = phi i32 [ %tmp4_v5.i.i, %Func_80492BC.exit.i ], [ %tmp0_v11.i.i, %Func_80492BC.exit.i.preheader ]
  %r_edi.045 = phi i32 [ %tmp4_v3.i.i, %Func_80492BC.exit.i ], [ %tmp0_v6.i.i, %Func_80492BC.exit.i.preheader ]
  %r_esi.044 = phi i32 [ %tmp4_v.i9.i, %Func_80492BC.exit.i ], [ %tmp0_v8.i46.i, %Func_80492BC.exit.i.preheader ]
  %16 = inttoptr i32 %r_esi.044 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = inttoptr i32 %r_edi.045 to i32*
  store i32 %17, i32* %18, align 4
  %tmp0_v1.i7.i = load i32, i32* @df, align 4
  %tmp0_v2.i8.i = shl i32 %tmp0_v1.i7.i, 2
  %tmp4_v.i9.i = add i32 %tmp0_v2.i8.i, %r_esi.044
  %tmp4_v3.i.i = add i32 %tmp0_v2.i8.i, %r_edi.045
  %tmp4_v5.i.i = add i32 %r_ecx.046, -1
  %.not.i.i = icmp eq i32 %tmp4_v5.i.i, 0
  br i1 %.not.i.i, label %BB_80492BE.i, label %Func_80492BC.exit.i

BB_80492BE.i:                                     ; preds = %Func_80492BC.exit.i, %BB_8049298.i
  %tmp2_v.i128.i = add i32 %tmp0_v.i22.i, -42
  %19 = inttoptr i32 %tmp2_v.i128.i to i16*
  store i16 32, i16* %19, align 2
  %tmp2_v2.i132.i = add i32 %tmp0_v.i22.i, -248
  %20 = inttoptr i32 %tmp2_v2.i132.i to i32*
  store i32 %tmp2_v.i128.i, i32* %20, align 8
  %tmp2_v3.i133.i = add i32 %tmp0_v.i22.i, -252
  %21 = inttoptr i32 %tmp2_v3.i133.i to i32*
  store i32 9, i32* %21, align 4
  %tmp2_v5.i135.i = add i32 %tmp0_v.i22.i, -256
  %22 = inttoptr i32 %tmp2_v5.i135.i to i32*
  store i32 %tmp2_v3.i85.i, i32* %22, align 16
  %tmp2_v6.i136.i = add i32 %tmp0_v.i22.i, -260
  %23 = inttoptr i32 %tmp2_v6.i136.i to i32*
  store i32 134517465, i32* %23, align 4
  %tmp2_v.i2.i.i = add i32 %tmp0_v.i22.i, -264
  %24 = inttoptr i32 %tmp2_v.i2.i.i to i32*
  store i32 %tmp2_v4.i24.i, i32* %24, align 8
  %tmp2_v1.i.i.i = add i32 %tmp0_v.i22.i, -268
  %25 = inttoptr i32 %tmp2_v1.i.i.i to i32*
  store i32 134529024, i32* %25, align 4
  %tmp2_v2.i.i.i = add i32 %tmp0_v.i22.i, -292
  %26 = inttoptr i32 %tmp2_v2.i.i.i to i32*
  store i32 134517870, i32* %26, align 4
  %27 = load i32, i32* %20, align 8
  %tmp2_v2.i111.i.i = add i32 %tmp0_v.i22.i, -304
  %28 = inttoptr i32 %tmp2_v2.i111.i.i to i32*
  store i32 %27, i32* %28, align 16
  %tmp2_v3.i112.i.i = add i32 %tmp0_v.i22.i, -308
  %29 = inttoptr i32 %tmp2_v3.i112.i.i to i32*
  store i32 134517903, i32* %29, align 4
  %arg.i.i.i = load i32, i32* %28, align 16
  %30 = tail call i32 @strlen(i32 %arg.i.i.i)
  %mrv.i44.i = insertvalue { i32, i32 } undef, i32 %tmp2_v2.i111.i.i, 0
  %31 = load i32, i32* %21, align 4
  %tmp0_v2.i28.i.i = add i32 %31, -1
  %tmp15_v3.i.i.i = mul i32 %tmp0_v2.i28.i.i, %30
  %tmp2_v6.i30.i.i = add i32 %tmp0_v.i22.i, -288
  %32 = inttoptr i32 %tmp2_v6.i30.i.i to i32*
  store i32 %tmp15_v3.i.i.i, i32* %32, align 16
  %tmp2_v7.i31.i.i = add i32 %tmp0_v.i22.i, -284
  %33 = inttoptr i32 %tmp2_v7.i31.i.i to i32*
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %21, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %BB_80494A7.i.i, label %BB_80494DB.i.i

BB_80494DB.i.i:                                   ; preds = %BB_80494A7.i.i, %BB_80492BE.i
  %mrv.i44.pn.lcssa56.i = phi { i32, i32 } [ %mrv.i44.i, %BB_80492BE.i ], [ %.pn.i, %BB_80494A7.i.i ]
  %r_esp.0.in.le.i = extractvalue { i32, i32 } %mrv.i44.pn.lcssa56.i, 0
  %36 = load i32, i32* %32, align 16
  %tmp0_v1.i17.i.i = add i32 %36, 1
  store i32 %tmp0_v1.i17.i.i, i32* %32, align 16
  %37 = inttoptr i32 %r_esp.0.in.le.i to i32*
  store i32 %tmp0_v1.i17.i.i, i32* %37, align 4
  %tmp2_v6.i.i.i = add i32 %r_esp.0.in.le.i, -4
  %38 = inttoptr i32 %tmp2_v6.i.i.i to i32*
  store i32 134517995, i32* %38, align 4
  %arg.i.i46.i = load i32, i32* %37, align 4
  %39 = tail call i32 @malloc(i32 %arg.i.i46.i)
  %tmp2_v.i65.i.i = add i32 %tmp0_v.i22.i, -276
  %40 = inttoptr i32 %tmp2_v.i65.i.i to i32*
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %22, align 16
  %tmp2_v4.i70.i.i = add i32 %r_esp.0.in.le.i, 4
  %42 = inttoptr i32 %tmp2_v4.i70.i.i to i32*
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %40, align 4
  store i32 %43, i32* %37, align 4
  store i32 134518015, i32* %38, align 4
  %arg.i.i48.i = load i32, i32* %37, align 4
  %arg2.i.i.i = load i32, i32* %42, align 4
  %44 = tail call i32 @strcpy(i32 %arg.i.i48.i, i32 %arg2.i.i.i)
  %tmp2_v.i116.i.i = add i32 %tmp0_v.i22.i, -280
  %45 = inttoptr i32 %tmp2_v.i116.i.i to i32*
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %21, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %BB_804950B.i.i, label %Func_join.exit

BB_804950B.i.i:                                   ; preds = %BB_804950B.i.i, %BB_80494DB.i.i
  %48 = load i32, i32* %20, align 8
  store i32 %48, i32* %42, align 4
  %49 = load i32, i32* %40, align 4
  store i32 %49, i32* %37, align 4
  store i32 134518041, i32* %38, align 4
  %arg.i.i49.i = load i32, i32* %37, align 4
  %arg2.i.i50.i = load i32, i32* %42, align 4
  %50 = tail call i32 @strcat(i32 %arg.i.i49.i, i32 %arg2.i.i50.i)
  %51 = load i32, i32* %45, align 8
  %tmp0_v4.i.i.i = mul i32 %51, 20
  %52 = load i32, i32* %22, align 16
  %tmp0_v7.i.i.i = add i32 %52, %tmp0_v4.i.i.i
  store i32 %tmp0_v7.i.i.i, i32* %42, align 4
  %53 = load i32, i32* %40, align 4
  store i32 %53, i32* %37, align 4
  store i32 134518076, i32* %38, align 4
  %arg.i.i51.i = load i32, i32* %37, align 4
  %arg2.i.i52.i = load i32, i32* %42, align 4
  %54 = tail call i32 @strcat(i32 %arg.i.i51.i, i32 %arg2.i.i52.i)
  %55 = load i32, i32* %45, align 8
  %tmp0_v2.i99.i.i = add i32 %55, 1
  store i32 %tmp0_v2.i99.i.i, i32* %45, align 8
  %56 = load i32, i32* %21, align 4
  %57 = icmp slt i32 %tmp0_v2.i99.i.i, %56
  br i1 %57, label %BB_804950B.i.i, label %Func_join.exit

BB_80494A7.i.i:                                   ; preds = %BB_80494A7.i.i, %BB_80492BE.i
  %r_esp.0.in60.i = phi i32 [ %r_esp.0.in.i, %BB_80494A7.i.i ], [ %tmp2_v2.i111.i.i, %BB_80492BE.i ]
  %.pn5559.i = phi i32 [ %61, %BB_80494A7.i.i ], [ %30, %BB_80492BE.i ]
  %mrv.i44.pn58.i = phi { i32, i32 } [ %.pn.i, %BB_80494A7.i.i ], [ %mrv.i44.i, %BB_80492BE.i ]
  %storemerge57.i = phi i32 [ %tmp0_v6.i.i.i, %BB_80494A7.i.i ], [ 0, %BB_80492BE.i ]
  %.pn.i = insertvalue { i32, i32 } %mrv.i44.pn58.i, i32 %.pn5559.i, 1
  %tmp0_v3.i86.i.i = mul i32 %storemerge57.i, 20
  %58 = load i32, i32* %22, align 16
  %tmp0_v6.i89.i.i = add i32 %58, %tmp0_v3.i86.i.i
  %59 = inttoptr i32 %r_esp.0.in60.i to i32*
  store i32 %tmp0_v6.i89.i.i, i32* %59, align 4
  %tmp2_v9.i93.i.i = add i32 %r_esp.0.in60.i, -4
  %60 = inttoptr i32 %tmp2_v9.i93.i.i to i32*
  store i32 134517956, i32* %60, align 4
  %arg.i.i53.i = load i32, i32* %59, align 4
  %61 = tail call i32 @strlen(i32 %arg.i.i53.i)
  %62 = load i32, i32* %32, align 16
  %tmp0_v2.i.i.i = add i32 %62, %61
  store i32 %tmp0_v2.i.i.i, i32* %32, align 16
  %63 = load i32, i32* %33, align 4
  %tmp0_v6.i.i.i = add i32 %63, 1
  %r_esp.0.in.i = extractvalue { i32, i32 } %mrv.i44.pn58.i, 0
  store i32 %tmp0_v6.i.i.i, i32* %33, align 4
  %64 = load i32, i32* %21, align 4
  %65 = icmp slt i32 %tmp0_v6.i.i.i, %64
  br i1 %65, label %BB_80494A7.i.i, label %BB_80494DB.i.i

Func_join.exit:                                   ; preds = %BB_804950B.i.i, %BB_80494DB.i.i
  %66 = load i32, i32* %40, align 4
  %67 = load i32, i32* %25, align 4
  %68 = load i32, i32* %24, align 8
  %tmp2_v.i140.i = add i32 %68, -228
  %69 = inttoptr i32 %tmp2_v.i140.i to i32*
  store i32 %66, i32* %69, align 4
  store i32 %66, i32* %22, align 16
  store i32 134517488, i32* %23, align 4
  %arg.i.i = load i32, i32* %22, align 16
  %70 = inttoptr i32 %arg.i.i to i8*
  %71 = tail call i32 @puts(i8* nonnull dereferenceable(1) %70)
  store i32 12, i32* %22, align 16
  store i32 134517501, i32* %23, align 4
  %arg.i.i10 = load i32, i32* %22, align 16
  %72 = tail call i32 @malloc(i32 %arg.i.i10)
  %tmp2_v.i114.i = add i32 %68, -224
  %73 = inttoptr i32 %tmp2_v.i114.i to i32*
  store i32 %72, i32* %73, align 4
  store i32 4, i32* %22, align 16
  store i32 134517520, i32* %23, align 4
  %arg.i.i13 = load i32, i32* %22, align 16
  %74 = tail call i32 @malloc(i32 %arg.i.i13)
  %75 = load i32, i32* %73, align 4
  %76 = inttoptr i32 %75 to i32*
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %73, align 4
  %78 = inttoptr i32 %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = inttoptr i32 %79 to i32*
  store i32 6513249, i32* %80, align 4
  %81 = load i32, i32* %73, align 4
  %tmp2_v7.i176.i = add i32 %81, 4
  store i32 11, i32* %22, align 16
  store i32 134517566, i32* %23, align 4
  %arg.i.i15 = load i32, i32* %22, align 16
  %82 = tail call i32 @malloc(i32 %arg.i.i15)
  %83 = inttoptr i32 %tmp2_v7.i176.i to i32*
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %73, align 4
  %tmp0_v2.i17.i = add i32 %84, 4
  %85 = inttoptr i32 %tmp0_v2.i17.i to i32*
  %86 = load i32, i32* %85, align 4
  %87 = inttoptr i32 %86 to i32*
  store i32 858927408, i32* %87, align 4
  %tmp2_v4.i19.i = add i32 %86, 4
  %88 = inttoptr i32 %tmp2_v4.i19.i to i32*
  store i32 926299444, i32* %88, align 4
  %tmp2_v5.i.i = add i32 %86, 8
  %89 = inttoptr i32 %tmp2_v5.i.i to i16*
  store i16 14648, i16* %89, align 2
  %tmp2_v6.i.i = add i32 %86, 10
  %90 = inttoptr i32 %tmp2_v6.i.i to i8*
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %73, align 4
  %tmp2_v9.i.i = add i32 %91, 8
  store i32 5, i32* %22, align 16
  store i32 134517624, i32* %23, align 4
  %arg.i.i17 = load i32, i32* %22, align 16
  %92 = tail call i32 @malloc(i32 %arg.i.i17)
  %93 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %73, align 4
  %tmp0_v2.i68.i = add i32 %94, 8
  %95 = inttoptr i32 %tmp0_v2.i68.i to i32*
  %96 = load i32, i32* %95, align 4
  %97 = inttoptr i32 %96 to i32*
  store i32 2054781047, i32* %97, align 4
  %tmp2_v4.i70.i = add i32 %96, 4
  %98 = inttoptr i32 %tmp2_v4.i70.i to i8*
  store i8 0, i8* %98, align 1
  %tmp2_v5.i71.i = add i32 %68, -32
  %99 = inttoptr i32 %tmp2_v5.i71.i to i32*
  store i32 4210752, i32* %99, align 4
  store i32 %tmp2_v5.i71.i, i32* %20, align 8
  store i32 3, i32* %21, align 4
  %100 = load i32, i32* %73, align 4
  store i32 %100, i32* %22, align 16
  store i32 134517677, i32* %23, align 4
  store i32 %68, i32* %24, align 8
  store i32 %67, i32* %25, align 4
  store i32 134518115, i32* %26, align 4
  %101 = load i32, i32* %20, align 8
  store i32 %101, i32* %28, align 16
  store i32 134518148, i32* %29, align 4
  %arg.i.i.i19 = load i32, i32* %28, align 16
  %102 = tail call i32 @strlen(i32 %arg.i.i.i19)
  %103 = load i32, i32* %21, align 4
  %tmp0_v2.i83.i.i = add i32 %103, -1
  %tmp15_v3.i.i.i20 = mul i32 %tmp0_v2.i83.i.i, %102
  store i32 %tmp15_v3.i.i.i20, i32* %32, align 16
  store i32 0, i32* %33, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %BB_804959C.i.i, label %BB_80495CD.i.i

BB_804959C.i.i:                                   ; preds = %BB_804959C.i.i, %Func_join.exit
  %r_esp.0.in59.i = phi i32 [ %r_esp.0.in.i23, %BB_804959C.i.i ], [ %tmp2_v2.i111.i.i, %Func_join.exit ]
  %.pn5458.i = phi i32 [ %111, %BB_804959C.i.i ], [ %102, %Func_join.exit ]
  %mrv.i43.pn57.i = phi { i32, i32 } [ %.pn.i21, %BB_804959C.i.i ], [ %mrv.i44.i, %Func_join.exit ]
  %storemerge56.i = phi i32 [ %tmp0_v6.i96.i.i, %BB_804959C.i.i ], [ 0, %Func_join.exit ]
  %.pn.i21 = insertvalue { i32, i32 } %mrv.i43.pn57.i, i32 %.pn5458.i, 1
  %tmp4_v.i.i.i22 = shl i32 %storemerge56.i, 2
  %106 = load i32, i32* %22, align 16
  %tmp0_v3.i.i.i = add i32 %106, %tmp4_v.i.i.i22
  %107 = inttoptr i32 %tmp0_v3.i.i.i to i32*
  %108 = load i32, i32* %107, align 4
  %109 = inttoptr i32 %r_esp.0.in59.i to i32*
  store i32 %108, i32* %109, align 4
  %tmp2_v7.i.i.i = add i32 %r_esp.0.in59.i, -4
  %110 = inttoptr i32 %tmp2_v7.i.i.i to i32*
  store i32 134518198, i32* %110, align 4
  %arg.i.i45.i = load i32, i32* %109, align 4
  %111 = tail call i32 @strlen(i32 %arg.i.i45.i)
  %112 = load i32, i32* %32, align 16
  %tmp0_v2.i93.i.i = add i32 %112, %111
  store i32 %tmp0_v2.i93.i.i, i32* %32, align 16
  %113 = load i32, i32* %33, align 4
  %tmp0_v6.i96.i.i = add i32 %113, 1
  %r_esp.0.in.i23 = extractvalue { i32, i32 } %mrv.i43.pn57.i, 0
  store i32 %tmp0_v6.i96.i.i, i32* %33, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp slt i32 %tmp0_v6.i96.i.i, %114
  br i1 %115, label %BB_804959C.i.i, label %BB_80495CD.i.i

BB_80495CD.i.i:                                   ; preds = %BB_804959C.i.i, %Func_join.exit
  %mrv.i43.pn.lcssa55.i = phi { i32, i32 } [ %mrv.i44.i, %Func_join.exit ], [ %.pn.i21, %BB_804959C.i.i ]
  %r_esp.0.in.le.i24 = extractvalue { i32, i32 } %mrv.i43.pn.lcssa55.i, 0
  %116 = load i32, i32* %32, align 16
  %tmp0_v1.i.i.i = add i32 %116, 1
  store i32 %tmp0_v1.i.i.i, i32* %32, align 16
  %117 = inttoptr i32 %r_esp.0.in.le.i24 to i32*
  store i32 %tmp0_v1.i.i.i, i32* %117, align 4
  %tmp2_v6.i7.i.i = add i32 %r_esp.0.in.le.i24, -4
  %118 = inttoptr i32 %tmp2_v6.i7.i.i to i32*
  store i32 134518237, i32* %118, align 4
  %arg.i.i47.i = load i32, i32* %117, align 4
  %119 = tail call i32 @malloc(i32 %arg.i.i47.i)
  store i32 %119, i32* %40, align 4
  %120 = load i32, i32* %22, align 16
  %121 = inttoptr i32 %120 to i32*
  %122 = load i32, i32* %121, align 4
  %tmp2_v5.i45.i.i = add i32 %r_esp.0.in.le.i24, 4
  %123 = inttoptr i32 %tmp2_v5.i45.i.i to i32*
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %40, align 4
  store i32 %124, i32* %117, align 4
  store i32 134518260, i32* %118, align 4
  %arg.i.i49.i25 = load i32, i32* %117, align 4
  %arg2.i.i.i26 = load i32, i32* %123, align 4
  %125 = tail call i32 @strcpy(i32 %arg.i.i49.i25, i32 %arg2.i.i.i26)
  store i32 1, i32* %45, align 8
  %126 = load i32, i32* %21, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %BB_8049600.i.i, label %Func_join2.exit

BB_8049600.i.i:                                   ; preds = %BB_8049600.i.i, %BB_80495CD.i.i
  %128 = load i32, i32* %20, align 8
  store i32 %128, i32* %123, align 4
  %129 = load i32, i32* %40, align 4
  store i32 %129, i32* %117, align 4
  store i32 134518286, i32* %118, align 4
  %arg.i.i50.i = load i32, i32* %117, align 4
  %arg2.i.i51.i = load i32, i32* %123, align 4
  %130 = tail call i32 @strcat(i32 %arg.i.i50.i, i32 %arg2.i.i51.i)
  %131 = load i32, i32* %45, align 8
  %tmp4_v.i13.i.i = shl i32 %131, 2
  %132 = load i32, i32* %22, align 16
  %tmp0_v4.i16.i.i = add i32 %132, %tmp4_v.i13.i.i
  %133 = inttoptr i32 %tmp0_v4.i16.i.i to i32*
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %123, align 4
  %135 = load i32, i32* %40, align 4
  store i32 %135, i32* %117, align 4
  store i32 134518318, i32* %118, align 4
  %arg.i.i52.i = load i32, i32* %117, align 4
  %arg2.i.i53.i = load i32, i32* %123, align 4
  %136 = tail call i32 @strcat(i32 %arg.i.i52.i, i32 %arg2.i.i53.i)
  %137 = load i32, i32* %45, align 8
  %tmp0_v2.i52.i.i = add i32 %137, 1
  store i32 %tmp0_v2.i52.i.i, i32* %45, align 8
  %138 = load i32, i32* %21, align 4
  %139 = icmp slt i32 %tmp0_v2.i52.i.i, %138
  br i1 %139, label %BB_8049600.i.i, label %Func_join2.exit

Func_join2.exit:                                  ; preds = %BB_8049600.i.i, %BB_80495CD.i.i
  %140 = load i32, i32* %40, align 4
  %141 = load i32, i32* %24, align 8
  %tmp2_v.i159.i = add i32 %141, -220
  %142 = inttoptr i32 %tmp2_v.i159.i to i32*
  store i32 %140, i32* %142, align 4
  store i32 %140, i32* %22, align 16
  store i32 134517700, i32* %23, align 4
  %arg.i.i30 = load i32, i32* %22, align 16
  %143 = inttoptr i32 %arg.i.i30 to i8*
  %144 = tail call i32 @puts(i8* nonnull dereferenceable(1) %143)
  %tmp2_v.i5.i = add i32 %141, -228
  %145 = inttoptr i32 %tmp2_v.i5.i to i32*
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %22, align 16
  store i32 134517717, i32* %23, align 4
  %arg.i.i31 = load i32, i32* %22, align 16
  tail call void @free(i32 %arg.i.i31)
  %147 = load i32, i32* %142, align 4
  store i32 %147, i32* %22, align 16
  store i32 134517734, i32* %23, align 4
  %arg.i.i32 = load i32, i32* %22, align 16
  tail call void @free(i32 %arg.i.i32)
  %tmp2_v.i182.i = add i32 %141, -224
  %148 = inttoptr i32 %tmp2_v.i182.i to i32*
  %149 = load i32, i32* %148, align 4
  %150 = inttoptr i32 %149 to i32*
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %22, align 16
  store i32 134517754, i32* %23, align 4
  %arg.i.i33 = load i32, i32* %22, align 16
  tail call void @free(i32 %arg.i.i33)
  %152 = load i32, i32* %148, align 4
  %tmp0_v2.i123.i = add i32 %152, 4
  %153 = inttoptr i32 %tmp0_v2.i123.i to i32*
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %22, align 16
  store i32 134517777, i32* %23, align 4
  %arg.i.i34 = load i32, i32* %22, align 16
  tail call void @free(i32 %arg.i.i34)
  %155 = load i32, i32* %148, align 4
  %tmp0_v2.i108.i = add i32 %155, 8
  %156 = inttoptr i32 %tmp0_v2.i108.i to i32*
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %22, align 16
  store i32 134517800, i32* %23, align 4
  %arg.i.i35 = load i32, i32* %22, align 16
  tail call void @free(i32 %arg.i.i35)
  %158 = load i32, i32* %148, align 4
  store i32 %158, i32* %22, align 16
  store i32 134517817, i32* %23, align 4
  %arg.i.i36 = load i32, i32* %22, align 16
  tail call void @free(i32 %arg.i.i36)
  ret void
}


!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"clang version 14.0.0"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 1, !"NumRegisterParameters", i32 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i32 0, i32 0, i32 0, i32 0, i32 0}

  tail call fastcc void @join408(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
