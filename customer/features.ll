; ModuleID = 'customer/features.ll'
source_filename = "/Users/arshajii/Documents/workspace/excellent-demo/customer/features.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.6.0"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc(i64) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("realloc,uninitialized") allocsize(1)
declare noundef nonnull ptr @seq_realloc(ptr allocptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free")
declare {} @seq_free(ptr allocptr) local_unnamed_addr #3

; Function Attrs: nounwind
define noalias nonnull ptr @generate_features(ptr nocapture readonly %0) local_unnamed_addr #4 {
entry:
  %.unpack.unpack.i = load i64, ptr %0, align 8
  %.elt1.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 1
  %.unpack2.unpack.i = load i64, ptr %.elt1.i, align 8
  %.elt3.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 2
  %.unpack4.i = load ptr, ptr %.elt3.i, align 8
  %1 = tail call dereferenceable(24) ptr @seq_alloc(i64 24)
  %2 = tail call dereferenceable(80) ptr @seq_alloc_atomic(i64 80)
  %.repack7.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %1, i64 0, i32 1
  store i64 10, ptr %.repack7.i, align 8
  %.repack7.repack9.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %1, i64 0, i32 1, i32 1
  store ptr %2, ptr %.repack7.repack9.i, align 8
  %switch.i.i.i = icmp ult i64 %.unpack.unpack.i, 2
  %tmp.i82.not.i.i.i.i = icmp eq i64 %.unpack2.unpack.i, 8
  %or.cond.i.i.i = select i1 %switch.i.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i
  %common.ret.op.i.i.i.i = select i1 %or.cond.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i, 0
  %.fca.1.extract.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i, 1
  %3 = and i8 %.fca.0.extract.i.i.i, 1
  %.not.i.i.i = icmp eq i8 %3, 0
  %4 = and i8 %.fca.1.extract.i.i.i, 1
  %.not.not.not108.i.i = icmp eq i8 %4, 0
  %.not.not.not.i.i = select i1 %.not.i.i.i, i1 %.not.not.not108.i.i, i1 false
  br i1 %.not.not.not.i.i, label %imp_for.cond.preheader.i.i.i, label %if.true.i.i

if.true.i.i:                                      ; preds = %entry
  %.not39.i.i.i.i = icmp sgt i64 %.unpack.unpack.i, 0
  br i1 %.not39.i.i.i.i, label %imp_for.body.i.i.i.i.preheader, label %imp_for.exit.thread.i.i.i.i

imp_for.body.i.i.i.i.preheader:                   ; preds = %if.true.i.i
  %min.iters.check = icmp eq i64 %.unpack.unpack.i, 1
  br i1 %min.iters.check, label %imp_for.body.i.i.i.i.preheader166, label %vector.ph

vector.ph:                                        ; preds = %imp_for.body.i.i.i.i.preheader
  %n.vec = and i64 %.unpack.unpack.i, -2
  %5 = shl i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi double [ 0.000000e+00, %vector.ph ], [ %11, %vector.body ]
  %6 = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.unpack4.i, i64 %6
  %7 = or i64 %6, 8
  %next.gep60 = getelementptr i8, ptr %.unpack4.i, i64 %7
  %8 = load double, ptr %next.gep, align 8
  %9 = load double, ptr %next.gep60, align 8
  %10 = fadd double %vec.phi, %8
  %11 = fadd double %10, %9
  %index.next = add nuw i64 %index, 2
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !2

middle.block:                                     ; preds = %vector.body
  %ind.end = getelementptr i8, ptr %.unpack4.i, i64 %5
  %cmp.n = icmp eq i64 %.unpack.unpack.i, %n.vec
  br i1 %cmp.n, label %imp_for.body2.preheader.i.i.i.i, label %imp_for.body.i.i.i.i.preheader166

imp_for.body.i.i.i.i.preheader166:                ; preds = %middle.block, %imp_for.body.i.i.i.i.preheader
  %.ph167 = phi i64 [ %n.vec, %middle.block ], [ 0, %imp_for.body.i.i.i.i.preheader ]
  %.02641.i.i.i.i.ph = phi double [ %11, %middle.block ], [ 0.000000e+00, %imp_for.body.i.i.i.i.preheader ]
  %.02840.i.i.i.i.ph = phi ptr [ %ind.end, %middle.block ], [ %.unpack4.i, %imp_for.body.i.i.i.i.preheader ]
  br label %imp_for.body.i.i.i.i

imp_for.exit.thread.i.i.i.i:                      ; preds = %if.true.i.i
  %y.i.i48.i.i.i.i = sitofp i64 %.unpack.unpack.i to double
  br label %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit.i.i"

imp_for.body.i.i.i.i:                             ; preds = %imp_for.body.i.i.i.i, %imp_for.body.i.i.i.i.preheader166
  %13 = phi i64 [ %15, %imp_for.body.i.i.i.i ], [ %.ph167, %imp_for.body.i.i.i.i.preheader166 ]
  %.02641.i.i.i.i = phi double [ %tmp.i.i.i.i.i, %imp_for.body.i.i.i.i ], [ %.02641.i.i.i.i.ph, %imp_for.body.i.i.i.i.preheader166 ]
  %.02840.i.i.i.i = phi ptr [ %14, %imp_for.body.i.i.i.i ], [ %.02840.i.i.i.i.ph, %imp_for.body.i.i.i.i.preheader166 ]
  %.028.val.i.i.i.i = load double, ptr %.02840.i.i.i.i, align 8
  %tmp.i.i.i.i.i = fadd double %.02641.i.i.i.i, %.028.val.i.i.i.i
  %14 = getelementptr i8, ptr %.02840.i.i.i.i, i64 8
  %15 = add nuw nsw i64 %13, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %15, %.unpack.unpack.i
  br i1 %exitcond.not.i.i.i.i, label %imp_for.body2.preheader.i.i.i.i, label %imp_for.body.i.i.i.i, !llvm.loop !5

imp_for.body2.preheader.i.i.i.i:                  ; preds = %imp_for.body.i.i.i.i, %middle.block
  %tmp.i.i.i.i.i.lcssa = phi double [ %11, %middle.block ], [ %tmp.i.i.i.i.i, %imp_for.body.i.i.i.i ]
  %y.i.i.i.i.i.i = sitofp i64 %.unpack.unpack.i to double
  %tmp.i33.i.i.i.i = fdiv double %tmp.i.i.i.i.i.lcssa, %y.i.i.i.i.i.i
  br i1 %switch.i.i.i, label %imp_for.body2.i.i.i.i.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %imp_for.body2.preheader.i.i.i.i
  %n.vec66 = and i64 %.unpack.unpack.i, -2
  %16 = shl i64 %n.vec66, 3
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph64
  %index72 = phi i64 [ 0, %vector.ph64 ], [ %index.next76, %vector.body71 ]
  %vec.phi73 = phi double [ 0.000000e+00, %vector.ph64 ], [ %26, %vector.body71 ]
  %17 = shl i64 %index72, 3
  %next.gep74 = getelementptr i8, ptr %.unpack4.i, i64 %17
  %18 = or i64 %17, 8
  %next.gep75 = getelementptr i8, ptr %.unpack4.i, i64 %18
  %19 = load double, ptr %next.gep74, align 8
  %20 = load double, ptr %next.gep75, align 8
  %21 = fsub double %19, %tmp.i33.i.i.i.i
  %22 = fsub double %20, %tmp.i33.i.i.i.i
  %23 = fmul double %21, %21
  %24 = fmul double %22, %22
  %25 = fadd double %vec.phi73, %23
  %26 = fadd double %25, %24
  %index.next76 = add nuw i64 %index72, 2
  %27 = icmp eq i64 %index.next76, %n.vec66
  br i1 %27, label %middle.block61, label %vector.body71, !llvm.loop !6

middle.block61:                                   ; preds = %vector.body71
  %ind.end68 = getelementptr i8, ptr %.unpack4.i, i64 %16
  %cmp.n70 = icmp eq i64 %.unpack.unpack.i, %n.vec66
  br i1 %cmp.n70, label %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit.i.i", label %imp_for.body2.i.i.i.i.preheader

imp_for.body2.i.i.i.i.preheader:                  ; preds = %middle.block61, %imp_for.body2.preheader.i.i.i.i
  %.ph164 = phi i64 [ %n.vec66, %middle.block61 ], [ 0, %imp_for.body2.preheader.i.i.i.i ]
  %.044.i.i.i.i.ph = phi double [ %26, %middle.block61 ], [ 0.000000e+00, %imp_for.body2.preheader.i.i.i.i ]
  %.02743.i.i.i.i.ph = phi ptr [ %ind.end68, %middle.block61 ], [ %.unpack4.i, %imp_for.body2.preheader.i.i.i.i ]
  br label %imp_for.body2.i.i.i.i

imp_for.body2.i.i.i.i:                            ; preds = %imp_for.body2.i.i.i.i, %imp_for.body2.i.i.i.i.preheader
  %28 = phi i64 [ %30, %imp_for.body2.i.i.i.i ], [ %.ph164, %imp_for.body2.i.i.i.i.preheader ]
  %.044.i.i.i.i = phi double [ %tmp.i36.i.i.i.i, %imp_for.body2.i.i.i.i ], [ %.044.i.i.i.i.ph, %imp_for.body2.i.i.i.i.preheader ]
  %.02743.i.i.i.i = phi ptr [ %29, %imp_for.body2.i.i.i.i ], [ %.02743.i.i.i.i.ph, %imp_for.body2.i.i.i.i.preheader ]
  %.027.val.i.i.i.i = load double, ptr %.02743.i.i.i.i, align 8
  %tmp.i34.i.i.i.i = fsub double %.027.val.i.i.i.i, %tmp.i33.i.i.i.i
  %tmp.i35.i.i.i.i = fmul double %tmp.i34.i.i.i.i, %tmp.i34.i.i.i.i
  %tmp.i36.i.i.i.i = fadd double %.044.i.i.i.i, %tmp.i35.i.i.i.i
  %29 = getelementptr i8, ptr %.02743.i.i.i.i, i64 8
  %30 = add nuw nsw i64 %28, 1
  %exitcond46.not.i.i.i.i = icmp eq i64 %30, %.unpack.unpack.i
  br i1 %exitcond46.not.i.i.i.i, label %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit.i.i", label %imp_for.body2.i.i.i.i, !llvm.loop !7

"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit.i.i": ; preds = %imp_for.body2.i.i.i.i, %middle.block61, %imp_for.exit.thread.i.i.i.i
  %y.i.i50.i.i.i.i = phi double [ %y.i.i48.i.i.i.i, %imp_for.exit.thread.i.i.i.i ], [ %y.i.i.i.i.i.i, %middle.block61 ], [ %y.i.i.i.i.i.i, %imp_for.body2.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi double [ 0.000000e+00, %imp_for.exit.thread.i.i.i.i ], [ %26, %middle.block61 ], [ %tmp.i36.i.i.i.i, %imp_for.body2.i.i.i.i ]
  %tmp.i37.i.i.i.i = fdiv double %.0.lcssa.i.i.i.i, %y.i.i50.i.i.i.i
  %y.i.i.i.i.i = tail call double @llvm.sqrt.f64(double %tmp.i37.i.i.i.i)
  br label %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit"

imp_for.cond.preheader.i.i.i:                     ; preds = %entry
  %31 = shl i64 %.unpack.unpack.i, 3
  %32 = tail call ptr @seq_alloc_atomic(i64 %31)
  %.not7.i.i.i = icmp sgt i64 %.unpack.unpack.i, 0
  br i1 %.not7.i.i.i, label %yield.new2.i115.i.i, label %imp_for.exit.thread.i.i82.i.i

yield.new2.i115.i.i:                              ; preds = %yield.new2.i115.i.i, %imp_for.cond.preheader.i.i.i
  %.078109.i.i = phi i64 [ %tmp.i.i.i, %yield.new2.i115.i.i ], [ 0, %imp_for.cond.preheader.i.i.i ]
  %tmp.i.i.i80.i.i = mul i64 %.078109.i.i, %.unpack2.unpack.i
  %33 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i.i.i80.i.i
  %.val.i.i = load double, ptr %33, align 8
  %34 = getelementptr double, ptr %32, i64 %.078109.i.i
  store double %.val.i.i, ptr %34, align 8
  %tmp.i.i.i = add nuw nsw i64 %.078109.i.i, 1
  %exitcond.not.i120.i.i = icmp eq i64 %tmp.i.i.i, %.unpack.unpack.i
  br i1 %exitcond.not.i120.i.i, label %imp_for.body.i.i89.i.i.preheader, label %yield.new2.i115.i.i

imp_for.body.i.i89.i.i.preheader:                 ; preds = %yield.new2.i115.i.i
  br i1 %switch.i.i.i, label %imp_for.body.i.i89.i.i.preheader160, label %vector.ph81

vector.ph81:                                      ; preds = %imp_for.body.i.i89.i.i.preheader
  %n.vec83 = and i64 %.unpack.unpack.i, -2
  %35 = shl i64 %n.vec83, 3
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph81
  %index89 = phi i64 [ 0, %vector.ph81 ], [ %index.next93, %vector.body88 ]
  %vec.phi90 = phi double [ 0.000000e+00, %vector.ph81 ], [ %41, %vector.body88 ]
  %36 = shl i64 %index89, 3
  %next.gep91 = getelementptr i8, ptr %32, i64 %36
  %37 = or i64 %36, 8
  %next.gep92 = getelementptr i8, ptr %32, i64 %37
  %38 = load double, ptr %next.gep91, align 8
  %39 = load double, ptr %next.gep92, align 8
  %40 = fadd double %vec.phi90, %38
  %41 = fadd double %40, %39
  %index.next93 = add nuw nsw i64 %index89, 2
  %42 = icmp eq i64 %index.next93, %n.vec83
  br i1 %42, label %middle.block78, label %vector.body88, !llvm.loop !8

middle.block78:                                   ; preds = %vector.body88
  %ind.end85 = getelementptr i8, ptr %32, i64 %35
  %cmp.n87 = icmp eq i64 %.unpack.unpack.i, %n.vec83
  br i1 %cmp.n87, label %imp_for.body2.preheader.i.i95.i.i, label %imp_for.body.i.i89.i.i.preheader160

imp_for.body.i.i89.i.i.preheader160:              ; preds = %middle.block78, %imp_for.body.i.i89.i.i.preheader
  %.ph161 = phi i64 [ %n.vec83, %middle.block78 ], [ 0, %imp_for.body.i.i89.i.i.preheader ]
  %.02641.i.i90.i.i.ph = phi double [ %41, %middle.block78 ], [ 0.000000e+00, %imp_for.body.i.i89.i.i.preheader ]
  %.02840.i.i91.i.i.ph = phi ptr [ %ind.end85, %middle.block78 ], [ %32, %imp_for.body.i.i89.i.i.preheader ]
  br label %imp_for.body.i.i89.i.i

imp_for.exit.thread.i.i82.i.i:                    ; preds = %imp_for.cond.preheader.i.i.i
  %y.i.i48.i.i83.i.i = sitofp i64 %.unpack.unpack.i to double
  br label %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit107.i.i"

imp_for.body.i.i89.i.i:                           ; preds = %imp_for.body.i.i89.i.i, %imp_for.body.i.i89.i.i.preheader160
  %43 = phi i64 [ %45, %imp_for.body.i.i89.i.i ], [ %.ph161, %imp_for.body.i.i89.i.i.preheader160 ]
  %.02641.i.i90.i.i = phi double [ %tmp.i.i.i93.i.i, %imp_for.body.i.i89.i.i ], [ %.02641.i.i90.i.i.ph, %imp_for.body.i.i89.i.i.preheader160 ]
  %.02840.i.i91.i.i = phi ptr [ %44, %imp_for.body.i.i89.i.i ], [ %.02840.i.i91.i.i.ph, %imp_for.body.i.i89.i.i.preheader160 ]
  %.028.val.i.i92.i.i = load double, ptr %.02840.i.i91.i.i, align 8
  %tmp.i.i.i93.i.i = fadd double %.02641.i.i90.i.i, %.028.val.i.i92.i.i
  %44 = getelementptr i8, ptr %.02840.i.i91.i.i, i64 8
  %45 = add nuw nsw i64 %43, 1
  %exitcond.not.i.i94.i.i = icmp eq i64 %45, %.unpack.unpack.i
  br i1 %exitcond.not.i.i94.i.i, label %imp_for.body2.preheader.i.i95.i.i, label %imp_for.body.i.i89.i.i, !llvm.loop !9

imp_for.body2.preheader.i.i95.i.i:                ; preds = %imp_for.body.i.i89.i.i, %middle.block78
  %tmp.i.i.i93.i.i.lcssa = phi double [ %41, %middle.block78 ], [ %tmp.i.i.i93.i.i, %imp_for.body.i.i89.i.i ]
  %y.i.i.i.i96.i.i = sitofp i64 %.unpack.unpack.i to double
  %tmp.i33.i.i97.i.i = fdiv double %tmp.i.i.i93.i.i.lcssa, %y.i.i.i.i96.i.i
  br i1 %switch.i.i.i, label %imp_for.body2.i.i98.i.i.preheader, label %vector.ph98

vector.ph98:                                      ; preds = %imp_for.body2.preheader.i.i95.i.i
  %n.vec100 = and i64 %.unpack.unpack.i, -2
  %46 = shl i64 %n.vec100, 3
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph98
  %index106 = phi i64 [ 0, %vector.ph98 ], [ %index.next110, %vector.body105 ]
  %vec.phi107 = phi double [ 0.000000e+00, %vector.ph98 ], [ %56, %vector.body105 ]
  %47 = shl i64 %index106, 3
  %next.gep108 = getelementptr i8, ptr %32, i64 %47
  %48 = or i64 %47, 8
  %next.gep109 = getelementptr i8, ptr %32, i64 %48
  %49 = load double, ptr %next.gep108, align 8
  %50 = load double, ptr %next.gep109, align 8
  %51 = fsub double %49, %tmp.i33.i.i97.i.i
  %52 = fsub double %50, %tmp.i33.i.i97.i.i
  %53 = fmul double %51, %51
  %54 = fmul double %52, %52
  %55 = fadd double %vec.phi107, %53
  %56 = fadd double %55, %54
  %index.next110 = add nuw i64 %index106, 2
  %57 = icmp eq i64 %index.next110, %n.vec100
  br i1 %57, label %middle.block95, label %vector.body105, !llvm.loop !10

middle.block95:                                   ; preds = %vector.body105
  %ind.end102 = getelementptr i8, ptr %32, i64 %46
  %cmp.n104 = icmp eq i64 %.unpack.unpack.i, %n.vec100
  br i1 %cmp.n104, label %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit107.i.i", label %imp_for.body2.i.i98.i.i.preheader

imp_for.body2.i.i98.i.i.preheader:                ; preds = %middle.block95, %imp_for.body2.preheader.i.i95.i.i
  %.ph = phi i64 [ %n.vec100, %middle.block95 ], [ 0, %imp_for.body2.preheader.i.i95.i.i ]
  %.044.i.i99.i.i.ph = phi double [ %56, %middle.block95 ], [ 0.000000e+00, %imp_for.body2.preheader.i.i95.i.i ]
  %.02743.i.i100.i.i.ph = phi ptr [ %ind.end102, %middle.block95 ], [ %32, %imp_for.body2.preheader.i.i95.i.i ]
  br label %imp_for.body2.i.i98.i.i

imp_for.body2.i.i98.i.i:                          ; preds = %imp_for.body2.i.i98.i.i, %imp_for.body2.i.i98.i.i.preheader
  %58 = phi i64 [ %60, %imp_for.body2.i.i98.i.i ], [ %.ph, %imp_for.body2.i.i98.i.i.preheader ]
  %.044.i.i99.i.i = phi double [ %tmp.i36.i.i104.i.i, %imp_for.body2.i.i98.i.i ], [ %.044.i.i99.i.i.ph, %imp_for.body2.i.i98.i.i.preheader ]
  %.02743.i.i100.i.i = phi ptr [ %59, %imp_for.body2.i.i98.i.i ], [ %.02743.i.i100.i.i.ph, %imp_for.body2.i.i98.i.i.preheader ]
  %.027.val.i.i101.i.i = load double, ptr %.02743.i.i100.i.i, align 8
  %tmp.i34.i.i102.i.i = fsub double %.027.val.i.i101.i.i, %tmp.i33.i.i97.i.i
  %tmp.i35.i.i103.i.i = fmul double %tmp.i34.i.i102.i.i, %tmp.i34.i.i102.i.i
  %tmp.i36.i.i104.i.i = fadd double %.044.i.i99.i.i, %tmp.i35.i.i103.i.i
  %59 = getelementptr i8, ptr %.02743.i.i100.i.i, i64 8
  %60 = add nuw nsw i64 %58, 1
  %exitcond46.not.i.i105.i.i = icmp eq i64 %60, %.unpack.unpack.i
  br i1 %exitcond46.not.i.i105.i.i, label %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit107.i.i", label %imp_for.body2.i.i98.i.i, !llvm.loop !11

"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit107.i.i": ; preds = %imp_for.body2.i.i98.i.i, %middle.block95, %imp_for.exit.thread.i.i82.i.i
  %y.i.i50.i.i84.i.i = phi double [ %y.i.i48.i.i83.i.i, %imp_for.exit.thread.i.i82.i.i ], [ %y.i.i.i.i96.i.i, %middle.block95 ], [ %y.i.i.i.i96.i.i, %imp_for.body2.i.i98.i.i ]
  %.0.lcssa.i.i85.i.i = phi double [ 0.000000e+00, %imp_for.exit.thread.i.i82.i.i ], [ %56, %middle.block95 ], [ %tmp.i36.i.i104.i.i, %imp_for.body2.i.i98.i.i ]
  %tmp.i37.i.i86.i.i = fdiv double %.0.lcssa.i.i85.i.i, %y.i.i50.i.i84.i.i
  %y.i.i.i87.i.i = tail call double @llvm.sqrt.f64(double %tmp.i37.i.i86.i.i)
  %61 = tail call {} @seq_free(ptr nonnull %32)
  br label %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit"

"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit": ; preds = %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit107.i.i", %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit.i.i"
  %.0.i.i = phi double [ %y.i.i.i.i.i, %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit.i.i" ], [ %y.i.i.i87.i.i, %"std.numpy.reductions._std_reducer:0[Ptr[float],int,int,KwTuple.N1_0[int],NoneType,float].1390.exit107.i.i" ]
  store double %.0.i.i, ptr %2, align 8
  store i64 1, ptr %1, align 8
  %62 = tail call dereferenceable(80) ptr @seq_alloc_atomic(i64 80)
  %tmp.i.i22 = add i64 %.unpack.unpack.i, -1
  %.not72.i = icmp sgt i64 %tmp.i.i22, 1
  br i1 %.not72.i, label %imp_for.body.i, label %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit48"

imp_for.body.i:                                   ; preds = %if.exit.i, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit"
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %if.exit.i ], [ 0, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %.unpack6.unpack8.i.i.i.i = phi ptr [ %.val.pre.i79.i, %if.exit.i ], [ %62, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %.unpack9.unpack.i.i.i = phi i64 [ %.unpack9.unpack.i.i76.i, %if.exit.i ], [ 10, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %.unpack.i.i.i = phi i64 [ %.unpack.i.i74.i, %if.exit.i ], [ 0, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %63 = phi i64 [ %.pre.i, %if.exit.i ], [ 1, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %tmp.i47.i = add nsw i64 %63, -1
  %tmp.i.i92.i.i.i.i = mul i64 %tmp.i47.i, %.unpack2.unpack.i
  %64 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i.i92.i.i.i.i
  %.val.i.i.i.i = load double, ptr %64, align 8
  %tmp.i15.not.i.i.i.i.i58.i = icmp slt i64 %63, %.unpack.unpack.i
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.i58.i)
  %tmp.i.i92.i.i.i60.i = mul i64 %63, %.unpack2.unpack.i
  %65 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i.i92.i.i.i60.i
  %.val.i.i.i61.i = load double, ptr %65, align 8
  %tmp.i48.i = fcmp uge double %.val.i.i.i.i, %.val.i.i.i61.i
  %.pre.i = add nuw nsw i64 %63, 1
  br i1 %tmp.i48.i, label %if.exit.i, label %ternary.true.i

if.true.i:                                        ; preds = %ternary.true.i
  %tmp.i.not.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i, %.unpack.i.i.i
  br i1 %tmp.i.not.i.i.i, label %if.true.i.i.i, label %"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i"

if.true.i.i.i:                                    ; preds = %if.true.i
  %tmp.i20.i.i.i = mul i64 %.unpack9.unpack.i.i.i, 3
  %tmp.i21.i.i.i = add i64 %tmp.i20.i.i.i, 1
  %tmp.i22.i.i.i = sdiv i64 %tmp.i21.i.i.i, 2
  %tmp.i23.i.i.i = icmp sgt i64 %tmp.i21.i.i.i, 1
  %spec.select.i.i.i = select i1 %tmp.i23.i.i.i, i64 %tmp.i22.i.i.i, i64 1
  %tmp.i.i.i.i.i24 = shl i64 %spec.select.i.i.i, 3
  %tmp.i24.i.i.i.i = shl i64 %.unpack9.unpack.i.i.i, 3
  %66 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i, i64 %tmp.i.i.i.i.i24, i64 %tmp.i24.i.i.i.i)
  br label %"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i"

"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i": ; preds = %if.true.i.i.i, %if.true.i
  %.val.pre.i80.i = phi ptr [ %66, %if.true.i.i.i ], [ %.unpack6.unpack8.i.i.i.i, %if.true.i ]
  %.unpack9.unpack.i.i77.i = phi i64 [ %spec.select.i.i.i, %if.true.i.i.i ], [ %.unpack9.unpack.i.i.i, %if.true.i ]
  %67 = getelementptr i64, ptr %.val.pre.i80.i, i64 %.unpack.i.i.i
  store i64 %63, ptr %67, align 4
  %tmp.i.i.i23 = add i64 %.unpack.i.i.i, 1
  br label %if.exit.i

if.exit.i:                                        ; preds = %ternary.true.i, %"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i", %imp_for.body.i
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %imp_for.body.i ], [ %tmp.i.i.i23, %"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i" ], [ %.sroa.0.0, %ternary.true.i ]
  %.val.pre.i79.i = phi ptr [ %.unpack6.unpack8.i.i.i.i, %imp_for.body.i ], [ %.val.pre.i80.i, %"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i" ], [ %.unpack6.unpack8.i.i.i.i, %ternary.true.i ]
  %.unpack9.unpack.i.i76.i = phi i64 [ %.unpack9.unpack.i.i.i, %imp_for.body.i ], [ %.unpack9.unpack.i.i77.i, %"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i" ], [ %.unpack9.unpack.i.i.i, %ternary.true.i ]
  %.unpack.i.i74.i = phi i64 [ %.unpack.i.i.i, %imp_for.body.i ], [ %tmp.i.i.i23, %"std.internal.types.ptr.List[int]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[int],int].1569.exit.i" ], [ %.unpack.i.i.i, %ternary.true.i ]
  %exitcond.not.i = icmp eq i64 %.pre.i, %tmp.i.i22
  br i1 %exitcond.not.i, label %"find_peaks:0[std.numpy.ndarray.ndarray[float,1]].1584.exit", label %imp_for.body.i

ternary.true.i:                                   ; preds = %imp_for.body.i
  %tmp.i15.not.i.i.i.i.i68.i = icmp slt i64 %.pre.i, %.unpack.unpack.i
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.i68.i)
  %tmp.i.i92.i.i.i70.i = mul i64 %.pre.i, %.unpack2.unpack.i
  %68 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i.i92.i.i.i70.i
  %.val.i.i.i71.i = load double, ptr %68, align 8
  %tmp.i50.i = fcmp ogt double %.val.i.i.i61.i, %.val.i.i.i71.i
  br i1 %tmp.i50.i, label %if.true.i, label %if.exit.i

"find_peaks:0[std.numpy.ndarray.ndarray[float,1]].1584.exit": ; preds = %if.exit.i
  %.unpack.i.i26.pre = load i64, ptr %1, align 8
  %.unpack9.unpack.i.i28.pre = load i64, ptr %.repack7.i, align 8
  %tmp.i.not.i.i29 = icmp eq i64 %.unpack9.unpack.i.i28.pre, %.unpack.i.i26.pre
  %.val.pre.i32.pre = load ptr, ptr %.repack7.repack9.i, align 8
  br i1 %tmp.i.not.i.i29, label %if.true.i.i37, label %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit48"

if.true.i.i37:                                    ; preds = %"find_peaks:0[std.numpy.ndarray.ndarray[float,1]].1584.exit"
  %tmp.i20.i.i38 = mul i64 %.unpack.i.i26.pre, 3
  %tmp.i21.i.i39 = add i64 %tmp.i20.i.i38, 1
  %tmp.i22.i.i40 = sdiv i64 %tmp.i21.i.i39, 2
  %tmp.i23.i.i41 = icmp sgt i64 %tmp.i21.i.i39, 1
  %spec.select.i.i42 = select i1 %tmp.i23.i.i41, i64 %tmp.i22.i.i40, i64 1
  %tmp.i.i.i.i45 = shl i64 %spec.select.i.i42, 3
  %tmp.i24.i.i.i46 = shl i64 %.unpack.i.i26.pre, 3
  %69 = tail call ptr @seq_realloc(ptr %.val.pre.i32.pre, i64 %tmp.i.i.i.i45, i64 %tmp.i24.i.i.i46)
  store i64 %spec.select.i.i42, ptr %.repack7.i, align 8
  store ptr %69, ptr %.repack7.repack9.i, align 8
  br label %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit48"

"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit48": ; preds = %if.true.i.i37, %"find_peaks:0[std.numpy.ndarray.ndarray[float,1]].1584.exit", %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit"
  %.sroa.0.257 = phi i64 [ %.sroa.0.1, %if.true.i.i37 ], [ %.sroa.0.1, %"find_peaks:0[std.numpy.ndarray.ndarray[float,1]].1584.exit" ], [ 0, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %.unpack.i.i2655 = phi i64 [ %.unpack.i.i26.pre, %if.true.i.i37 ], [ %.unpack.i.i26.pre, %"find_peaks:0[std.numpy.ndarray.ndarray[float,1]].1584.exit" ], [ 1, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %.val.i33 = phi ptr [ %69, %if.true.i.i37 ], [ %.val.pre.i32.pre, %"find_peaks:0[std.numpy.ndarray.ndarray[float,1]].1584.exit" ], [ %2, %"std.internal.types.ptr.List[float]:std.internal.types.ptr.List.append:0[std.internal.types.ptr.List[float],float].1431.exit" ]
  %tmp.i.i25 = sitofp i64 %.sroa.0.257 to double
  %70 = getelementptr double, ptr %.val.i33, i64 %.unpack.i.i2655
  store double %tmp.i.i25, ptr %70, align 8
  %tmp.i.i36 = add i64 %.unpack.i.i2655, 1
  store i64 %tmp.i.i36, ptr %1, align 8
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="seq_alloc" }
attributes #1 = { mustprogress nounwind willreturn allockind("realloc,uninitialized") allocsize(1) "alloc-family"="seq_alloc" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") "alloc-family"="seq_alloc" }
attributes #4 = { nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 2}
!2 = distinct !{!2, !3, !4}
!3 = !{!"llvm.loop.isvectorized", i32 1}
!4 = !{!"llvm.loop.unroll.runtime.disable"}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3, !4}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3, !4}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3, !4}
!11 = distinct !{!11, !3}
