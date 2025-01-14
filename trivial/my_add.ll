; ModuleID = 'my_add.ll'
source_filename = "/Users/alex/work/repos/excellent-demo/trivial/my_add.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.6.0"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: nounwind
define {} @my_add(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture writeonly %2) local_unnamed_addr #1 {
entry:
  %.unpack.unpack.i = load i64, ptr %0, align 8
  %.elt1.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 1
  %.unpack2.unpack.i = load i64, ptr %.elt1.i, align 8
  %.elt3.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 2
  %.unpack4.i = load ptr, ptr %.elt3.i, align 8
  %.unpack.unpack.i3 = load i64, ptr %1, align 8
  %.elt1.i5 = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %1, i64 0, i32 1
  %.unpack2.unpack.i6 = load i64, ptr %.elt1.i5, align 8
  %.elt3.i8 = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %1, i64 0, i32 2
  %.unpack4.i9 = load ptr, ptr %.elt3.i8, align 8
  %switch.i.i.i.i.i.i = icmp ult i64 %.unpack.unpack.i, 2
  %tmp.i82.not.i.i.i.i.i.i.i = icmp eq i64 %.unpack2.unpack.i, 4
  %or.cond.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i.i.i
  %common.ret.op.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %switch137.i.i.i.i.i.i = icmp ult i64 %.unpack.unpack.i3, 2
  %tmp.i82.not.i132.i.i.i.i.i.i = icmp eq i64 %.unpack2.unpack.i6, 4
  %or.cond138.i.i.i.i.i.i = select i1 %switch137.i.i.i.i.i.i, i1 true, i1 %tmp.i82.not.i132.i.i.i.i.i.i
  %common.ret.op.i129.i.i.i.i.i.i = select i1 %or.cond138.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %tmp.i.i.i.not.i.i.i.i.i.i = icmp ne i64 %.unpack.unpack.i3, %.unpack.unpack.i
  %.fca.1.extract40.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i, 1
  %.fca.0.extract39.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i, 0
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i129.i.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i129.i.i.i.i.i.i, 1
  %3 = and i8 %.fca.0.extract39.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %3, 0
  %4 = and i8 %.fca.0.extract.i.i.i.i.i.i, 1
  %5 = and i8 %.fca.1.extract40.i.i.i.i.i.i, 1
  %.not123.i.i.i.i.i.i = icmp eq i8 %5, 0
  %6 = and i8 %.fca.1.extract.i.i.i.i.i.i, 1
  %.not125.i667.i.i.i.i.i = icmp eq i8 %4, 0
  %.not125.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %.not125.i667.i.i.i.i.i
  %.not668669670.i.i.i.i.i = icmp eq i8 %6, 0
  %.not668669.i.i.i.i.i = select i1 %.not123.i.i.i.i.i.i, i1 true, i1 %.not668669670.i.i.i.i.i
  %.not668.i.i.i.i.i = select i1 %.not125.i.i.i.i.i.i, i1 %.not668669.i.i.i.i.i, i1 false
  %.not.i.i.i.i.i = select i1 %tmp.i.i.i.not.i.i.i.i.i.i, i1 true, i1 %.not668.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %ternary.true1.i.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i:                 ; preds = %entry
  %7 = shl i64 %.unpack.unpack.i, 2
  %8 = tail call ptr @seq_alloc_atomic(i64 %7)
  %.not662689.i.i.i.i.i = icmp sgt i64 %.unpack.unpack.i, 0
  br i1 %.not662689.i.i.i.i.i, label %imp_for.body.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit"

ternary.true.i.i.i.i.i.i:                         ; preds = %ternary.true1.i.i.i.i.i.i
  switch i64 %.sroa.0.0.i169.i.i.i.i.i.i.i, label %imp_for.cond30.preheader.i.i.i.i.i.i [
    i64 4, label %imp_for.cond.preheader.i.i.i.i.i.i
    i64 0, label %imp_for.cond26.preheader.i.i.i.i.i.i
  ]

imp_for.cond26.preheader.i.i.i.i.i.i:             ; preds = %ternary.true.i.i.i.i.i.i
  %.not240289.i.i.i.i.i.i = icmp sgt i64 %spec.select.i.1.i.i.i.i.i.i.i, 0
  br i1 %.not240289.i.i.i.i.i.i, label %imp_for.body27.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit"

imp_for.cond.preheader.i.i.i.i.i.i:               ; preds = %ternary.true.i.i.i.i.i.i
  %.not242290.i.i.i.i.i.i = icmp sgt i64 %spec.select.i.1.i.i.i.i.i.i.i, 0
  br i1 %.not242290.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit"

ternary.true1.i.i.i.i.i.i:                        ; preds = %entry
  %tmp.i.not.i.1.i.i.i.i.i.i.i = icmp eq i64 %.unpack.unpack.i, 1
  %spec.select.i.1.i.i.i.i.i.i.i = select i1 %tmp.i.not.i.1.i.i.i.i.i.i.i, i64 %.unpack.unpack.i3, i64 %.unpack.unpack.i
  %tmp.i.not.i167.i.i.i.i.i.i.i = icmp eq i64 %.unpack.unpack.i, %spec.select.i.1.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %tmp.i.not.i167.i.i.i.i.i.i.i, i64 %.unpack2.unpack.i, i64 0
  %tmp.i.not.i168.i.i.i.i.i.i.i = icmp eq i64 %.unpack.unpack.i3, %spec.select.i.1.i.i.i.i.i.i.i
  %.sroa.0.0.i169.i.i.i.i.i.i.i = select i1 %tmp.i.not.i168.i.i.i.i.i.i.i, i64 %.unpack2.unpack.i6, i64 0
  %9 = shl i64 %spec.select.i.1.i.i.i.i.i.i.i, 2
  %10 = tail call ptr @seq_alloc_atomic(i64 %9)
  %tmp.i250.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i, 4
  br i1 %tmp.i250.i.i.i.i.i.i, label %ternary.true.i.i.i.i.i.i, label %ternary.true10.i.i.i.i.i.i

imp_for.body.i.i.i.i.i.i:                         ; preds = %imp_for.body.i.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i
  %11 = phi i64 [ %15, %imp_for.body.i.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %12 = getelementptr float, ptr %10, i64 %11
  %13 = getelementptr float, ptr %.unpack4.i, i64 %11
  %14 = getelementptr float, ptr %.unpack4.i9, i64 %11
  %.fca.1.extract.val.i.i.i.i.i.i.i = load float, ptr %13, align 4
  %.fca.2.extract.val.i.i.i.i.i.i.i = load float, ptr %14, align 4
  %tmp.i.i.i.i.i.i.i.i.i.i.i = fadd float %.fca.1.extract.val.i.i.i.i.i.i.i, %.fca.2.extract.val.i.i.i.i.i.i.i
  store float %tmp.i.i.i.i.i.i.i.i.i.i.i, ptr %12, align 4
  %15 = add nuw nsw i64 %11, 1
  %exitcond296.not.i.i.i.i.i.i = icmp eq i64 %15, %spec.select.i.1.i.i.i.i.i.i.i
  br i1 %exitcond296.not.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit", label %imp_for.body.i.i.i.i.i.i

ternary.true10.i.i.i.i.i.i:                       ; preds = %ternary.true1.i.i.i.i.i.i
  %tmp.i256.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i.i, 0
  %tmp.i254.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.i169.i.i.i.i.i.i.i, 4
  %or.cond.i664.i.i.i.i.i = select i1 %tmp.i256.i.i.i.i.i.i, i1 %tmp.i254.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i664.i.i.i.i.i, label %imp_for.cond13.preheader.i.i.i.i.i.i, label %imp_for.cond30.preheader.i.i.i.i.i.i

imp_for.cond13.preheader.i.i.i.i.i.i:             ; preds = %ternary.true10.i.i.i.i.i.i
  %.not241288.i.i.i.i.i.i = icmp sgt i64 %spec.select.i.1.i.i.i.i.i.i.i, 0
  br i1 %.not241288.i.i.i.i.i.i, label %imp_for.body14.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit"

imp_for.body14.i.i.i.i.i.i:                       ; preds = %imp_for.body14.i.i.i.i.i.i, %imp_for.cond13.preheader.i.i.i.i.i.i
  %16 = phi i64 [ %19, %imp_for.body14.i.i.i.i.i.i ], [ 0, %imp_for.cond13.preheader.i.i.i.i.i.i ]
  %tmp.i258.i.i.i.i.i.i = shl i64 %16, 2
  %17 = getelementptr i8, ptr %10, i64 %tmp.i258.i.i.i.i.i.i
  %18 = getelementptr i8, ptr %.unpack4.i9, i64 %tmp.i258.i.i.i.i.i.i
  %.fca.1.extract.val.i269.i.i.i.i.i.i = load float, ptr %.unpack4.i, align 4
  %.fca.2.extract.val.i270.i.i.i.i.i.i = load float, ptr %18, align 4
  %tmp.i.i.i.i.i271.i.i.i.i.i.i = fadd float %.fca.1.extract.val.i269.i.i.i.i.i.i, %.fca.2.extract.val.i270.i.i.i.i.i.i
  store float %tmp.i.i.i.i.i271.i.i.i.i.i.i, ptr %17, align 4
  %19 = add nuw nsw i64 %16, 1
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %19, %spec.select.i.1.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit", label %imp_for.body14.i.i.i.i.i.i

imp_for.body27.i.i.i.i.i.i:                       ; preds = %imp_for.body27.i.i.i.i.i.i, %imp_for.cond26.preheader.i.i.i.i.i.i
  %20 = phi i64 [ %23, %imp_for.body27.i.i.i.i.i.i ], [ 0, %imp_for.cond26.preheader.i.i.i.i.i.i ]
  %tmp.i264.i.i.i.i.i.i = shl i64 %20, 2
  %21 = getelementptr i8, ptr %10, i64 %tmp.i264.i.i.i.i.i.i
  %22 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i264.i.i.i.i.i.i
  %.fca.1.extract.val.i272.i.i.i.i.i.i = load float, ptr %22, align 4
  %.fca.2.extract.val.i273.i.i.i.i.i.i = load float, ptr %.unpack4.i9, align 4
  %tmp.i.i.i.i.i274.i.i.i.i.i.i = fadd float %.fca.1.extract.val.i272.i.i.i.i.i.i, %.fca.2.extract.val.i273.i.i.i.i.i.i
  store float %tmp.i.i.i.i.i274.i.i.i.i.i.i, ptr %21, align 4
  %23 = add nuw nsw i64 %20, 1
  %exitcond295.not.i.i.i.i.i.i = icmp eq i64 %23, %spec.select.i.1.i.i.i.i.i.i.i
  br i1 %exitcond295.not.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit", label %imp_for.body27.i.i.i.i.i.i

imp_for.cond30.preheader.i.i.i.i.i.i:             ; preds = %ternary.true10.i.i.i.i.i.i, %ternary.true.i.i.i.i.i.i
  %.not239291.i.i.i.i.i.i = icmp sgt i64 %spec.select.i.1.i.i.i.i.i.i.i, 0
  br i1 %.not239291.i.i.i.i.i.i, label %imp_for.body31.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit"

imp_for.body31.i.i.i.i.i.i:                       ; preds = %imp_for.body31.i.i.i.i.i.i, %imp_for.cond30.preheader.i.i.i.i.i.i
  %24 = phi i64 [ %28, %imp_for.body31.i.i.i.i.i.i ], [ 0, %imp_for.cond30.preheader.i.i.i.i.i.i ]
  %tmp.i266.i.i.i.i.i.i = shl i64 %24, 2
  %25 = getelementptr i8, ptr %10, i64 %tmp.i266.i.i.i.i.i.i
  %tmp.i267.i.i.i.i.i.i = mul i64 %24, %.sroa.0.0.i.i.i.i.i.i.i.i
  %26 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i267.i.i.i.i.i.i
  %tmp.i268.i.i.i.i.i.i = mul i64 %24, %.sroa.0.0.i169.i.i.i.i.i.i.i
  %27 = getelementptr i8, ptr %.unpack4.i9, i64 %tmp.i268.i.i.i.i.i.i
  %.fca.1.extract.val.i275.i.i.i.i.i.i = load float, ptr %26, align 4
  %.fca.2.extract.val.i276.i.i.i.i.i.i = load float, ptr %27, align 4
  %tmp.i.i.i.i.i277.i.i.i.i.i.i = fadd float %.fca.1.extract.val.i275.i.i.i.i.i.i, %.fca.2.extract.val.i276.i.i.i.i.i.i
  store float %tmp.i.i.i.i.i277.i.i.i.i.i.i, ptr %25, align 4
  %28 = add nuw nsw i64 %24, 1
  %exitcond297.not.i.i.i.i.i.i = icmp eq i64 %28, %spec.select.i.1.i.i.i.i.i.i.i
  br i1 %exitcond297.not.i.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit", label %imp_for.body31.i.i.i.i.i.i

imp_for.body.i.i.i.i.i:                           ; preds = %imp_for.body.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i
  %29 = phi i64 [ %33, %imp_for.body.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i.i ]
  %30 = getelementptr float, ptr %8, i64 %29
  %31 = getelementptr float, ptr %.unpack4.i, i64 %29
  %32 = getelementptr float, ptr %.unpack4.i9, i64 %29
  %.fca.1.extract.val.i.i.i.i.i.i = load float, ptr %31, align 4
  %.fca.2.extract.val.i.i.i.i.i.i = load float, ptr %32, align 4
  %tmp.i.i.i.i.i.i.i.i.i.i = fadd float %.fca.1.extract.val.i.i.i.i.i.i, %.fca.2.extract.val.i.i.i.i.i.i
  store float %tmp.i.i.i.i.i.i.i.i.i.i, ptr %30, align 4
  %33 = add nuw nsw i64 %29, 1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %33, %.unpack.unpack.i
  br i1 %exitcond.not.i.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit", label %imp_for.body.i.i.i.i.i

"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].2206.exit": ; preds = %imp_for.body.i.i.i.i.i, %imp_for.body31.i.i.i.i.i.i, %imp_for.cond30.preheader.i.i.i.i.i.i, %imp_for.body27.i.i.i.i.i.i, %imp_for.body14.i.i.i.i.i.i, %imp_for.cond13.preheader.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i, %imp_for.cond26.preheader.i.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i
  %34 = phi ptr [ %8, %imp_for.cond.preheader.i.i.i.i.i ], [ %10, %imp_for.cond30.preheader.i.i.i.i.i.i ], [ %10, %imp_for.cond13.preheader.i.i.i.i.i.i ], [ %10, %imp_for.cond.preheader.i.i.i.i.i.i ], [ %10, %imp_for.cond26.preheader.i.i.i.i.i.i ], [ %10, %imp_for.body31.i.i.i.i.i.i ], [ %10, %imp_for.body.i.i.i.i.i.i ], [ %10, %imp_for.body27.i.i.i.i.i.i ], [ %10, %imp_for.body14.i.i.i.i.i.i ], [ %8, %imp_for.body.i.i.i.i.i ]
  %.unpack.unpack.i.pn = phi i64 [ %.unpack.unpack.i, %imp_for.cond.preheader.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.cond30.preheader.i.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.cond13.preheader.i.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.cond26.preheader.i.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.body31.i.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.body27.i.i.i.i.i.i ], [ %spec.select.i.1.i.i.i.i.i.i.i, %imp_for.body14.i.i.i.i.i.i ], [ %.unpack.unpack.i, %imp_for.body.i.i.i.i.i ]
  store i64 %.unpack.unpack.i.pn, ptr %2, align 8
  %self.repack1.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %2, i64 0, i32 1
  store i64 4, ptr %self.repack1.i, align 8
  %self.repack3.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %2, i64 0, i32 2
  store ptr %34, ptr %self.repack3.i, align 8
  ret {} zeroinitializer
}

attributes #0 = { mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="seq_alloc" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 2}
