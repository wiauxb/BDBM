; ModuleID = 'optimized.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@fpstt = internal unnamed_addr global i32 0
@stack = internal global [4194304 x i32] zeroinitializer, align 16
@segs.0 = internal unnamed_addr global i1 false
@_ZL6segmem = internal global [1024 x i8] zeroinitializer, align 1
@onUnfallback = common local_unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @helper_fninit() unnamed_addr  mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87"  {
  store i32 0, i32* @fpstt, align 16
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1, i8** noundef %2) local_unnamed_addr  norecurse nounwind uwtable "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic"  {
  %4 = tail call i32 asm "pushf\0A\09popl $0", "=r,~{dirflag},~{fpsr},~{flags}"()  nounwind readnone 
  store i1 true, i1* @segs.0, align 1
  tail call fastcc void @helper_fninit()  nobuiltin nounwind "no-builtins" 
  %5 = ptrtoint i8** %2 to i32
  store i32 %5, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194303), align 4, !tbaa !6
  %6 = ptrtoint i8** %1 to i32
  store i32 %6, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194302), align 8, !tbaa !6
  store i32 %0, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194301), align 4, !tbaa !6
  %7 = tail call i8* @llvm.returnaddress(i32 0)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300), align 16, !tbaa !6
  tail call fastcc void @Func_main(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32))  nounwind 
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg)  nofree nosync nounwind readnone willreturn 

declare dso_local i32 @puts(i8* noundef) local_unnamed_addr  "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" 

; Function Attrs: noinline
declare i32 @__ctype_b_loc() local_unnamed_addr  noinline 

; Function Attrs: noinline
declare i32 @strlen(i32) local_unnamed_addr  noinline 

; Function Attrs: norecurse
define internal fastcc void @verify_passwordm15161635(i32 %arg_esp) unnamed_addr  norecurse  !retregs !10 {
Func_8049243.exit.i:
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
  store i32 0, i32* %4, align 4
  %tmp2_v6.i.i = add i32 %tmp0_v.i2.i, -16
  %5 = inttoptr i32 %tmp2_v6.i.i to i32*
  store i32 %tmp2_v.i1.i, i32* %5, align 16
  %tmp2_v8.i.i = add i32 %tmp0_v.i2.i, -52
  %6 = inttoptr i32 %tmp2_v8.i.i to i32*
  store i32 134517265, i32* %6, align 4
  %tmp4_v.i14.i.b = load i1, i1* @segs.0, align 1
  %7 = select i1 %tmp4_v.i14.i.b, i32* inttoptr (i32 add (i32 ptrtoint ([1024 x i8]* @_ZL6segmem to i32), i32 20) to i32*), i32* inttoptr (i32 20 to i32*)
  %8 = load i32, i32* %7, align 4
  %tmp2_v2.i.i = add i32 %tmp0_v.i2.i, -20
  %9 = inttoptr i32 %tmp2_v2.i.i to i32*
  store i32 %8, i32* %9, align 4
  %tmp2_v3.i17.i = add i32 %tmp0_v.i2.i, -32
  %10 = inttoptr i32 %tmp2_v3.i17.i to i32*
  store i32 1077246017, i32* %10, align 16
  %tmp2_v4.i18.i = add i32 %tmp0_v.i2.i, -28
  %11 = inttoptr i32 %tmp2_v4.i18.i to i32*
  store i32 1684234849, i32* %11, align 4
  %tmp2_v5.i19.i = add i32 %tmp0_v.i2.i, -24
  %12 = inttoptr i32 %tmp2_v5.i19.i to i32*
  store i32 6776421, i32* %12, align 8
  %tmp2_v8.i21.i = add i32 %tmp0_v.i2.i, -64
  %13 = inttoptr i32 %tmp2_v8.i21.i to i32*
  store i32 %tmp2_v3.i17.i, i32* %13, align 16
  %tmp2_v9.i.i = add i32 %tmp0_v.i2.i, -68
  %14 = inttoptr i32 %tmp2_v9.i.i to i32*
  store i32 134517315, i32* %14, align 4
  %tmp2_v.i12.i.i = add i32 %tmp0_v.i2.i, -72
  %15 = inttoptr i32 %tmp2_v.i12.i.i to i32*
  store i32 %tmp2_v4.i.i, i32* %15, align 8
  %tmp2_v1.i14.i.i = add i32 %tmp0_v.i2.i, -76
  %16 = inttoptr i32 %tmp2_v1.i14.i.i to i32*
  store i32 134529024, i32* %16, align 4
  %tmp2_v2.i16.i.i = add i32 %tmp0_v.i2.i, -100
  %17 = inttoptr i32 %tmp2_v2.i16.i.i to i32*
  store i32 134517413, i32* %17, align 4
  %18 = load i32, i32* %13, align 16
  %tmp2_v3.i53.i.i = add i32 %tmp0_v.i2.i, -112
  %19 = inttoptr i32 %tmp2_v3.i53.i.i to i32*
  store i32 %18, i32* %19, align 16
  %tmp2_v4.i.i.i = add i32 %tmp0_v.i2.i, -116
  %20 = inttoptr i32 %tmp2_v4.i.i.i to i32*
  store i32 134517430, i32* %20, align 4
  %arg.i.i.i = load i32, i32* %19, align 16
  %21 = tail call i32 @strlen(i32 %arg.i.i.i)
  %tmp2_v.i104.i.i = add i32 %tmp0_v.i2.i, -84
  %22 = inttoptr i32 %tmp2_v.i104.i.i to i32*
  store i32 %21, i32* %22, align 4
  %tmp2_v.i70.i.i = add i32 %tmp0_v.i2.i, -92
  %23 = inttoptr i32 %tmp2_v.i70.i.i to i8*
  store i8 0, i8* %23, align 4
  %tmp2_v1.i71.i.i = add i32 %tmp0_v.i2.i, -91
  %24 = inttoptr i32 %tmp2_v1.i71.i.i to i8*
  store i8 0, i8* %24, align 1
  %tmp2_v2.i72.i.i = add i32 %tmp0_v.i2.i, -90
  %25 = inttoptr i32 %tmp2_v2.i72.i.i to i8*
  store i8 0, i8* %25, align 2
  %tmp2_v3.i73.i.i = add i32 %tmp0_v.i2.i, -89
  %26 = inttoptr i32 %tmp2_v3.i73.i.i to i8*
  store i8 0, i8* %26, align 1
  %tmp2_v4.i74.i.i = add i32 %tmp0_v.i2.i, -88
  %27 = inttoptr i32 %tmp2_v4.i74.i.i to i32*
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* %22, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %BB_80492E8.i.i, label %Func_verify_password.exit

BB_804936C.i.i:                                   ; preds = %BB_8049340.i.i, %BB_8049368.i.i
  store i32 134517617, i32* %17, align 4
  %30 = tail call i32 @__ctype_b_loc()
  %31 = inttoptr i32 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %27, align 8
  %34 = load i32, i32* %13, align 16
  %tmp0_v4.i38.i.i = add i32 %34, %33
  %35 = inttoptr i32 %tmp0_v4.i38.i.i to i8*
  %36 = load i8, i8* %35, align 1
  %tmp0_v6.i40.i.i = sext i8 %36 to i32
  %tmp0_v7.i41.i.i = shl nsw i32 %tmp0_v6.i40.i.i, 1
  %tmp0_v8.i42.i.i = add i32 %tmp0_v7.i41.i.i, %32
  %37 = inttoptr i32 %tmp0_v8.i42.i.i to i16*
  %38 = load i16, i16* %37, align 2
  %39 = and i16 %38, 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %BB_8049396.i.i, label %BB_8049392.i.i

BB_8049310.i.i:                                   ; preds = %BB_80492E8.i.i
  store i8 1, i8* %23, align 4
  br label %BB_8049314.i.i

BB_8049392.i.i:                                   ; preds = %BB_804936C.i.i
  store i8 1, i8* %26, align 1
  %.pre.i = load i32, i32* %27, align 8
  br label %BB_8049396.i.i

BB_80492E8.i.i:                                   ; preds = %BB_8049396.i.i, %Func_8049243.exit.i
  store i32 134517485, i32* %17, align 4
  %41 = tail call i32 @__ctype_b_loc()
  %42 = inttoptr i32 %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %27, align 8
  %45 = load i32, i32* %13, align 16
  %tmp0_v4.i.i.i = add i32 %45, %44
  %46 = inttoptr i32 %tmp0_v4.i.i.i to i8*
  %47 = load i8, i8* %46, align 1
  %tmp0_v6.i.i.i = sext i8 %47 to i32
  %tmp0_v7.i.i.i = shl nsw i32 %tmp0_v6.i.i.i, 1
  %tmp0_v8.i.i.i = add i32 %tmp0_v7.i.i.i, %43
  %48 = inttoptr i32 %tmp0_v8.i.i.i to i16*
  %49 = load i16, i16* %48, align 2
  %50 = and i16 %49, 256
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %BB_8049314.i.i, label %BB_8049310.i.i

BB_8049368.i.i:                                   ; preds = %BB_8049340.i.i
  store i8 1, i8* %25, align 2
  br label %BB_804936C.i.i

BB_8049340.i.i:                                   ; preds = %BB_8049314.i.i, %BB_804933C.i.i
  store i32 134517573, i32* %17, align 4
  %52 = tail call i32 @__ctype_b_loc()
  %53 = inttoptr i32 %52 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %27, align 8
  %56 = load i32, i32* %13, align 16
  %tmp0_v4.i131.i.i = add i32 %56, %55
  %57 = inttoptr i32 %tmp0_v4.i131.i.i to i8*
  %58 = load i8, i8* %57, align 1
  %tmp0_v6.i133.i.i = sext i8 %58 to i32
  %tmp0_v7.i134.i.i = shl nsw i32 %tmp0_v6.i133.i.i, 1
  %tmp0_v8.i135.i.i = add i32 %tmp0_v7.i134.i.i, %54
  %59 = inttoptr i32 %tmp0_v8.i135.i.i to i16*
  %60 = load i16, i16* %59, align 2
  %61 = and i16 %60, 2048
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %BB_804936C.i.i, label %BB_8049368.i.i

BB_8049396.i.i:                                   ; preds = %BB_8049392.i.i, %BB_804936C.i.i
  %63 = phi i32 [ %33, %BB_804936C.i.i ], [ %.pre.i, %BB_8049392.i.i ]
  %tmp0_v1.i94.i.i = add i32 %63, 1
  store i32 %tmp0_v1.i94.i.i, i32* %27, align 8
  %64 = load i32, i32* %22, align 4
  %65 = icmp slt i32 %tmp0_v1.i94.i.i, %64
  br i1 %65, label %BB_80492E8.i.i, label %Func_verify_password.exit

BB_804933C.i.i:                                   ; preds = %BB_8049314.i.i
  store i8 1, i8* %24, align 1
  br label %BB_8049340.i.i

BB_8049314.i.i:                                   ; preds = %BB_80492E8.i.i, %BB_8049310.i.i
  store i32 134517529, i32* %17, align 4
  %66 = tail call i32 @__ctype_b_loc()
  %67 = inttoptr i32 %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %27, align 8
  %70 = load i32, i32* %13, align 16
  %tmp0_v4.i61.i.i = add i32 %70, %69
  %71 = inttoptr i32 %tmp0_v4.i61.i.i to i8*
  %72 = load i8, i8* %71, align 1
  %tmp0_v6.i63.i.i = sext i8 %72 to i32
  %tmp0_v7.i64.i.i = shl nsw i32 %tmp0_v6.i63.i.i, 1
  %tmp0_v8.i65.i.i = add i32 %tmp0_v7.i64.i.i, %68
  %73 = inttoptr i32 %tmp0_v8.i65.i.i to i16*
  %74 = load i16, i16* %73, align 2
  %75 = and i16 %74, 512
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %BB_8049340.i.i, label %BB_804933C.i.i

Func_verify_password.exit:                        ; preds = %BB_8049396.i.i, %Func_8049243.exit.i
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %15, align 8
  %tmp2_v.i8.i = add i32 %78, -25
  %79 = inttoptr i32 %tmp2_v.i8.i to i8*
  store i8 1, i8* %79, align 1
  %tmp2_v.i25.i = add i32 %77, -8184
  store i32 %tmp2_v.i25.i, i32* %13, align 16
  store i32 134517342, i32* %14, align 4
  %arg.i.i = load i32, i32* %13, align 16
  %80 = inttoptr i32 %arg.i.i to i8*
  %81 = tail call i32 @puts(i8* nonnull dereferenceable(1) %80)
  ret void
}

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
!10 = !{i32 0, i32 0, i32 0}

  tail call fastcc void @verify_passwordm15161635(i32 ptrtoint (i32* getelementptr inbounds ([4194304 x i32], [4194304 x i32]* @stack, i32 0, i32 4194300) to i32)) nounwind
