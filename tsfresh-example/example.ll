; ModuleID = 'tsfresh-example/example.ll'
source_filename = "/Users/arshajii/Documents/workspace/excellent-demo/tsfresh-example/example.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.6.0"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind memory(readwrite, argmem: read)
define hidden fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2243"({ { i64 }, { i64 }, ptr } %0, { { i64 }, { i64 }, ptr } %1) unnamed_addr #3 {
entry:
  %2 = extractvalue { { i64 }, { i64 }, ptr } %0, 0
  %t.fca.0.extract.i.i.i.i.i.i = extractvalue { i64 } %2, 0
  %3 = extractvalue { { i64 }, { i64 }, ptr } %1, 0
  %t.fca.0.extract.i.i.i.i216.i.i = extractvalue { i64 } %3, 0
  %tmp.i.not.i.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, %t.fca.0.extract.i.i.i.i216.i.i
  tail call void @llvm.assume(i1 %tmp.i.not.i.i)
  %switch.i.i.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i, 2
  %4 = extractvalue { { i64 }, { i64 }, ptr } %1, 1
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64 } %4, 0
  %tmp.i82.not.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i, 1
  %or.cond.i.i.i.i = select i1 %switch.i.i.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i
  %common.ret.op.i.i.i.i.i = select i1 %or.cond.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i, 1
  %5 = and i8 %.fca.0.extract.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i8 %5, 0
  %6 = and i8 %.fca.1.extract.i.i.i.i, 1
  %.not56.i.i.i = icmp eq i8 %6, 0
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not56.i.i.i, i1 false
  %.not7.i.i.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %imp_for.cond.preheader.i.i.i.i, label %imp_for.cond.preheader.i.i.i

imp_for.cond.preheader.i.i.i:                     ; preds = %entry
  br i1 %.not7.i.i.i.i, label %imp_for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"

imp_for.body.lr.ph.i.i.i:                         ; preds = %imp_for.cond.preheader.i.i.i
  %.fca.2.extract.i.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %min.iters.check = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %imp_for.body.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %imp_for.body.lr.ph.i.i.i
  %n.vec = and i64 %t.fca.0.extract.i.i.i.i.i.i, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i64 [ 0, %vector.ph ], [ %16, %vector.body ]
  %vec.phi26 = phi i64 [ 0, %vector.ph ], [ %17, %vector.body ]
  %7 = or i64 %index, 1
  %8 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i, i64 %index
  %9 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i, i64 %7
  %10 = load i8, ptr %8, align 1
  %11 = load i8, ptr %9, align 1
  %12 = and i8 %10, 1
  %13 = and i8 %11, 1
  %14 = zext i8 %12 to i64
  %15 = zext i8 %13 to i64
  %16 = add i64 %vec.phi, %14
  %17 = add i64 %vec.phi26, %15
  %index.next = add nuw i64 %index, 2
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !2

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i64 %17, %16
  %cmp.n = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %imp_for.body.i.i.i.preheader

imp_for.body.i.i.i.preheader:                     ; preds = %middle.block, %imp_for.body.lr.ph.i.i.i
  %.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  %.158.i.i.i.ph = phi i64 [ %bin.rdx, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  br label %imp_for.body.i.i.i

imp_for.cond.preheader.i.i.i.i:                   ; preds = %entry
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"

for.body.lr.ph.i.i.i:                             ; preds = %imp_for.cond.preheader.i.i.i.i
  %.fca.2.extract.i.i.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %min.iters.check29 = icmp ne i64 %t.fca.0.extract.i.i.i.i.i.i, 1
  %or.cond = select i1 %min.iters.check29, i1 %tmp.i82.not.i.i.i.i.i, i1 false
  br i1 %or.cond, label %vector.ph30, label %yield.new2.i66.i.i.i.preheader

vector.ph30:                                      ; preds = %for.body.lr.ph.i.i.i
  %n.vec32 = and i64 %t.fca.0.extract.i.i.i.i.i.i, -2
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph30
  %index36 = phi i64 [ 0, %vector.ph30 ], [ %index.next39, %vector.body35 ]
  %vec.phi37 = phi i64 [ 0, %vector.ph30 ], [ %28, %vector.body35 ]
  %vec.phi38 = phi i64 [ 0, %vector.ph30 ], [ %29, %vector.body35 ]
  %19 = or i64 %index36, 1
  %20 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i.i, i64 %index36
  %21 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i.i, i64 %19
  %22 = load i8, ptr %20, align 1
  %23 = load i8, ptr %21, align 1
  %24 = and i8 %22, 1
  %25 = and i8 %23, 1
  %26 = zext i8 %24 to i64
  %27 = zext i8 %25 to i64
  %28 = add i64 %vec.phi37, %26
  %29 = add i64 %vec.phi38, %27
  %index.next39 = add nuw i64 %index36, 2
  %30 = icmp eq i64 %index.next39, %n.vec32
  br i1 %30, label %middle.block27, label %vector.body35, !llvm.loop !5

middle.block27:                                   ; preds = %vector.body35
  %bin.rdx40 = add i64 %29, %28
  %cmp.n34 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, %n.vec32
  br i1 %cmp.n34, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %yield.new2.i66.i.i.i.preheader

yield.new2.i66.i.i.i.preheader:                   ; preds = %middle.block27, %for.body.lr.ph.i.i.i
  %.sroa.6.1.i.i.i.ph = phi i64 [ %n.vec32, %middle.block27 ], [ 0, %for.body.lr.ph.i.i.i ]
  %.359.i.i.i.ph = phi i64 [ %bin.rdx40, %middle.block27 ], [ 0, %for.body.lr.ph.i.i.i ]
  br label %yield.new2.i66.i.i.i

imp_for.body.i.i.i:                               ; preds = %imp_for.body.i.i.i, %imp_for.body.i.i.i.preheader
  %31 = phi i64 [ %35, %imp_for.body.i.i.i ], [ %.ph, %imp_for.body.i.i.i.preheader ]
  %.158.i.i.i = phi i64 [ %spec.select.i.i.i, %imp_for.body.i.i.i ], [ %.158.i.i.i.ph, %imp_for.body.i.i.i.preheader ]
  %32 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 1
  %tmp.i.i.i.i = zext i8 %34 to i64
  %spec.select.i.i.i = add i64 %.158.i.i.i, %tmp.i.i.i.i
  %35 = add nuw nsw i64 %31, 1
  %exitcond.not.i.i.i = icmp eq i64 %35, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %imp_for.body.i.i.i, !llvm.loop !6

yield.new2.i66.i.i.i:                             ; preds = %yield.new2.i66.i.i.i, %yield.new2.i66.i.i.i.preheader
  %.sroa.6.1.i.i.i = phi i64 [ %39, %yield.new2.i66.i.i.i ], [ %.sroa.6.1.i.i.i.ph, %yield.new2.i66.i.i.i.preheader ]
  %.359.i.i.i = phi i64 [ %spec.select55.i.i.i, %yield.new2.i66.i.i.i ], [ %.359.i.i.i.ph, %yield.new2.i66.i.i.i.preheader ]
  %tmp.i.i.i.i.i.i = mul i64 %.sroa.6.1.i.i.i, %.fca.0.extract.i.i.i.i.i
  %36 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i.i, i64 %tmp.i.i.i.i.i.i
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 1
  %tmp.i53.i.i.i = zext i8 %38 to i64
  %spec.select55.i.i.i = add i64 %.359.i.i.i, %tmp.i53.i.i.i
  %39 = add nuw nsw i64 %.sroa.6.1.i.i.i, 1
  %exitcond.not.i71.i.i.i = icmp eq i64 %39, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i71.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %yield.new2.i66.i.i.i, !llvm.loop !7

"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i": ; preds = %yield.new2.i66.i.i.i, %imp_for.body.i.i.i, %middle.block27, %imp_for.cond.preheader.i.i.i.i, %middle.block, %imp_for.cond.preheader.i.i.i
  %.0.i.i.i = phi i64 [ 0, %imp_for.cond.preheader.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i ], [ %bin.rdx40, %middle.block27 ], [ %bin.rdx, %middle.block ], [ %spec.select55.i.i.i, %yield.new2.i66.i.i.i ], [ %spec.select.i.i.i, %imp_for.body.i.i.i ]
  %.not.i.i217.i.i = icmp sgt i64 %.0.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i.i217.i.i)
  %40 = shl i64 %.0.i.i.i, 3
  %41 = tail call ptr @seq_alloc_atomic(i64 %40)
  %42 = extractvalue { { i64 }, { i64 }, ptr } %0, 1
  %.fca.0.extract.i.i.i = extractvalue { i64 } %42, 0
  %tmp.i82.not.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i, 8
  %43 = select i1 %tmp.i82.not.i.i.i, i1 %tmp.i82.not.i.i.i.i.i, i1 false
  %44 = select i1 %switch.i.i.i.i, i1 true, i1 %43
  br i1 %44, label %imp_for.cond4.preheader.i.i, label %imp_for.cond.preheader.i248.i.i

imp_for.cond4.preheader.i.i:                      ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"
  br i1 %.not7.i.i.i.i, label %imp_for.body5.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2239.exit"

imp_for.body5.lr.ph.i.i:                          ; preds = %imp_for.cond4.preheader.i.i
  %.fca.2.extract.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %.fca.2.extract.i229.i.i = extractvalue { { i64 }, { i64 }, ptr } %0, 2
  br label %imp_for.body5.i.i

imp_for.cond.preheader.i248.i.i:                  ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2239.exit"

for.body.lr.ph.i.i:                               ; preds = %imp_for.cond.preheader.i248.i.i
  %.fca.2.extract.i.i231.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %.fca.2.extract.i.i234.i.i = extractvalue { { i64 }, { i64 }, ptr } %0, 2
  br label %for.body.i.i

imp_for.body5.i.i:                                ; preds = %if.exit10.i.i, %imp_for.body5.lr.ph.i.i
  %45 = phi i64 [ 0, %imp_for.body5.lr.ph.i.i ], [ %52, %if.exit10.i.i ]
  %.0206243.i.i = phi i64 [ 0, %imp_for.body5.lr.ph.i.i ], [ %.1.i.i, %if.exit10.i.i ]
  %46 = getelementptr i8, ptr %.fca.2.extract.i.i.i, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 1
  %.not212.i.i = icmp eq i8 %48, 0
  br i1 %.not212.i.i, label %if.exit10.i.i, label %if.true8.i.i

if.true8.i.i:                                     ; preds = %imp_for.body5.i.i
  %49 = getelementptr i64, ptr %.fca.2.extract.i229.i.i, i64 %45
  %50 = load i64, ptr %49, align 4
  %51 = getelementptr i64, ptr %41, i64 %.0206243.i.i
  store i64 %50, ptr %51, align 4
  %tmp.i214.i.i = add i64 %.0206243.i.i, 1
  br label %if.exit10.i.i

if.exit10.i.i:                                    ; preds = %if.true8.i.i, %imp_for.body5.i.i
  %.1.i.i = phi i64 [ %tmp.i214.i.i, %if.true8.i.i ], [ %.0206243.i.i, %imp_for.body5.i.i ]
  %52 = add nuw nsw i64 %45, 1
  %exitcond.not.i.i = icmp eq i64 %52, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2239.exit", label %imp_for.body5.i.i

for.body.i.i:                                     ; preds = %yield.new2.i253.i.i, %for.body.lr.ph.i.i
  %.sroa.6.1.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %59, %yield.new2.i253.i.i ]
  %.2241.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %.3.i.i, %yield.new2.i253.i.i ]
  %tmp.i.i.i.i.i = mul i64 %.sroa.6.1.i.i, %.fca.0.extract.i.i.i.i.i
  %53 = getelementptr i8, ptr %.fca.2.extract.i.i231.i.i, i64 %tmp.i.i.i.i.i
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, 1
  %.not210.i.i = icmp eq i8 %55, 0
  br i1 %.not210.i.i, label %yield.new2.i253.i.i, label %if.true11.i.i

if.true11.i.i:                                    ; preds = %for.body.i.i
  %tmp.i.i.i233.i.i = mul i64 %.sroa.6.1.i.i, %.fca.0.extract.i.i.i
  %56 = getelementptr i8, ptr %.fca.2.extract.i.i234.i.i, i64 %tmp.i.i.i233.i.i
  %57 = load i64, ptr %56, align 4
  %58 = getelementptr i64, ptr %41, i64 %.2241.i.i
  store i64 %57, ptr %58, align 4
  %tmp.i215.i.i = add i64 %.2241.i.i, 1
  br label %yield.new2.i253.i.i

yield.new2.i253.i.i:                              ; preds = %if.true11.i.i, %for.body.i.i
  %.3.i.i = phi i64 [ %tmp.i215.i.i, %if.true11.i.i ], [ %.2241.i.i, %for.body.i.i ]
  %59 = add nuw nsw i64 %.sroa.6.1.i.i, 1
  %exitcond.not.i258.i.i = icmp eq i64 %59, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i258.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2239.exit", label %for.body.i.i

"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2239.exit": ; preds = %yield.new2.i253.i.i, %if.exit10.i.i, %imp_for.cond.preheader.i248.i.i, %imp_for.cond4.preheader.i.i
  %60 = insertvalue { i64 } undef, i64 %.0.i.i.i, 0
  %61 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %60, 0
  %62 = insertvalue { { i64 }, { i64 }, ptr } %61, { i64 } { i64 8 }, 1
  %63 = insertvalue { { i64 }, { i64 }, ptr } %62, ptr %41, 2
  ret { { i64 }, { i64 }, ptr } %63
}

; Function Attrs: nofree nosync nounwind
define hidden fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2401"({ { i64 }, { i64 }, ptr } %0, { { i64 }, { i64 }, ptr } %1, { { i64 }, { i64 }, ptr } %2) unnamed_addr #4 {
entry:
  %.sroa.26.i.i = alloca i8, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.26.i.i)
  %3 = extractvalue { { i64 }, { i64 }, ptr } %0, 0
  %t.fca.0.extract.i.i.i.i.i.i = extractvalue { i64 } %3, 0
  %4 = extractvalue { { i64 }, { i64 }, ptr } %1, 0
  %t.fca.0.extract.i.i.i.i307.i.i = extractvalue { i64 } %4, 0
  %tmp.i.not.i.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, %t.fca.0.extract.i.i.i.i307.i.i
  tail call void @llvm.assume(i1 %tmp.i.not.i.i)
  %.fr342.i.i = freeze { { i64 }, { i64 }, ptr } %2
  %switch.i.i.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i, 2
  %5 = extractvalue { { i64 }, { i64 }, ptr } %1, 1
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64 } %5, 0
  %tmp.i82.not.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i, 1
  %or.cond.i.i.i.i = select i1 %switch.i.i.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i
  %common.ret.op.i.i.i.i.i = select i1 %or.cond.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i, 1
  %6 = and i8 %.fca.0.extract.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i8 %6, 0
  %7 = and i8 %.fca.1.extract.i.i.i.i, 1
  %.not56.i.i.i = icmp eq i8 %7, 0
  %.not.i.i.i = select i1 %.not.i.i.i.i, i1 %.not56.i.i.i, i1 false
  %.not7.i.i.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %imp_for.cond.preheader.i.i.i.i, label %imp_for.cond.preheader.i.i.i

imp_for.cond.preheader.i.i.i:                     ; preds = %entry
  br i1 %.not7.i.i.i.i, label %imp_for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"

imp_for.body.lr.ph.i.i.i:                         ; preds = %imp_for.cond.preheader.i.i.i
  %.fca.2.extract.i.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %min.iters.check = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %imp_for.body.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %imp_for.body.lr.ph.i.i.i
  %n.vec = and i64 %t.fca.0.extract.i.i.i.i.i.i, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i64 [ 0, %vector.ph ], [ %17, %vector.body ]
  %vec.phi1 = phi i64 [ 0, %vector.ph ], [ %18, %vector.body ]
  %8 = or i64 %index, 1
  %9 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i, i64 %index
  %10 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i, i64 %8
  %11 = load i8, ptr %9, align 1
  %12 = load i8, ptr %10, align 1
  %13 = and i8 %11, 1
  %14 = and i8 %12, 1
  %15 = zext i8 %13 to i64
  %16 = zext i8 %14 to i64
  %17 = add i64 %vec.phi, %15
  %18 = add i64 %vec.phi1, %16
  %index.next = add nuw i64 %index, 2
  %19 = icmp eq i64 %index.next, %n.vec
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i64 %18, %17
  %cmp.n = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %imp_for.body.i.i.i.preheader

imp_for.body.i.i.i.preheader:                     ; preds = %middle.block, %imp_for.body.lr.ph.i.i.i
  %.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  %.158.i.i.i.ph = phi i64 [ %bin.rdx, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  br label %imp_for.body.i.i.i

imp_for.cond.preheader.i.i.i.i:                   ; preds = %entry
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"

for.body.lr.ph.i.i.i:                             ; preds = %imp_for.cond.preheader.i.i.i.i
  %.fca.2.extract.i.i.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %min.iters.check4 = icmp ne i64 %t.fca.0.extract.i.i.i.i.i.i, 1
  %or.cond = select i1 %min.iters.check4, i1 %tmp.i82.not.i.i.i.i.i, i1 false
  br i1 %or.cond, label %vector.ph5, label %yield.new2.i66.i.i.i.preheader

vector.ph5:                                       ; preds = %for.body.lr.ph.i.i.i
  %n.vec7 = and i64 %t.fca.0.extract.i.i.i.i.i.i, -2
  br label %vector.body10

vector.body10:                                    ; preds = %vector.body10, %vector.ph5
  %index11 = phi i64 [ 0, %vector.ph5 ], [ %index.next14, %vector.body10 ]
  %vec.phi12 = phi i64 [ 0, %vector.ph5 ], [ %29, %vector.body10 ]
  %vec.phi13 = phi i64 [ 0, %vector.ph5 ], [ %30, %vector.body10 ]
  %20 = or i64 %index11, 1
  %21 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i.i, i64 %index11
  %22 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i.i, i64 %20
  %23 = load i8, ptr %21, align 1
  %24 = load i8, ptr %22, align 1
  %25 = and i8 %23, 1
  %26 = and i8 %24, 1
  %27 = zext i8 %25 to i64
  %28 = zext i8 %26 to i64
  %29 = add i64 %vec.phi12, %27
  %30 = add i64 %vec.phi13, %28
  %index.next14 = add nuw i64 %index11, 2
  %31 = icmp eq i64 %index.next14, %n.vec7
  br i1 %31, label %middle.block2, label %vector.body10, !llvm.loop !9

middle.block2:                                    ; preds = %vector.body10
  %bin.rdx15 = add i64 %30, %29
  %cmp.n9 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i, %n.vec7
  br i1 %cmp.n9, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %yield.new2.i66.i.i.i.preheader

yield.new2.i66.i.i.i.preheader:                   ; preds = %middle.block2, %for.body.lr.ph.i.i.i
  %.sroa.6.1.i.i.i.ph = phi i64 [ %n.vec7, %middle.block2 ], [ 0, %for.body.lr.ph.i.i.i ]
  %.359.i.i.i.ph = phi i64 [ %bin.rdx15, %middle.block2 ], [ 0, %for.body.lr.ph.i.i.i ]
  br label %yield.new2.i66.i.i.i

imp_for.body.i.i.i:                               ; preds = %imp_for.body.i.i.i, %imp_for.body.i.i.i.preheader
  %32 = phi i64 [ %36, %imp_for.body.i.i.i ], [ %.ph, %imp_for.body.i.i.i.preheader ]
  %.158.i.i.i = phi i64 [ %spec.select.i.i.i, %imp_for.body.i.i.i ], [ %.158.i.i.i.ph, %imp_for.body.i.i.i.preheader ]
  %33 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 1
  %tmp.i.i.i.i = zext i8 %35 to i64
  %spec.select.i.i.i = add i64 %.158.i.i.i, %tmp.i.i.i.i
  %36 = add nuw nsw i64 %32, 1
  %exitcond.not.i.i.i = icmp eq i64 %36, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %imp_for.body.i.i.i, !llvm.loop !10

yield.new2.i66.i.i.i:                             ; preds = %yield.new2.i66.i.i.i, %yield.new2.i66.i.i.i.preheader
  %.sroa.6.1.i.i.i = phi i64 [ %40, %yield.new2.i66.i.i.i ], [ %.sroa.6.1.i.i.i.ph, %yield.new2.i66.i.i.i.preheader ]
  %.359.i.i.i = phi i64 [ %spec.select55.i.i.i, %yield.new2.i66.i.i.i ], [ %.359.i.i.i.ph, %yield.new2.i66.i.i.i.preheader ]
  %tmp.i.i.i.i.i.i = mul i64 %.sroa.6.1.i.i.i, %.fca.0.extract.i.i.i.i.i
  %37 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i.i, i64 %tmp.i.i.i.i.i.i
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 1
  %tmp.i53.i.i.i = zext i8 %39 to i64
  %spec.select55.i.i.i = add i64 %.359.i.i.i, %tmp.i53.i.i.i
  %40 = add nuw nsw i64 %.sroa.6.1.i.i.i, 1
  %exitcond.not.i71.i.i.i = icmp eq i64 %40, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i71.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i", label %yield.new2.i66.i.i.i, !llvm.loop !11

"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i": ; preds = %yield.new2.i66.i.i.i, %imp_for.body.i.i.i, %middle.block2, %imp_for.cond.preheader.i.i.i.i, %middle.block, %imp_for.cond.preheader.i.i.i
  %.0.i.i.i = phi i64 [ 0, %imp_for.cond.preheader.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i ], [ %bin.rdx15, %middle.block2 ], [ %bin.rdx, %middle.block ], [ %spec.select55.i.i.i, %yield.new2.i66.i.i.i ], [ %spec.select.i.i.i, %imp_for.body.i.i.i ]
  %41 = extractvalue { { i64 }, { i64 }, ptr } %.fr342.i.i, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { i64 } %41, 0
  %tmp.i297.not.i.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i, 1
  %tmp.i299.not.i.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i, %.0.i.i.i
  %.off0.i.i = select i1 %tmp.i297.not.i.i, i1 true, i1 %tmp.i299.not.i.i
  tail call void @llvm.assume(i1 %.off0.i.i)
  %42 = extractvalue { { i64 }, { i64 }, ptr } %0, 1
  %.fca.0.extract.i.i.i = extractvalue { i64 } %42, 0
  %tmp.i82.not.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i, 8
  %43 = select i1 %tmp.i82.not.i.i.i, i1 %tmp.i82.not.i.i.i.i.i, i1 false
  %44 = select i1 %switch.i.i.i.i, i1 true, i1 %43
  br i1 %44, label %imp_for.cond11.preheader.i.i, label %imp_for.cond.preheader.i354.i.i

imp_for.cond11.preheader.i.i:                     ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"
  br i1 %.not7.i.i.i.i, label %imp_for.body12.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2397.exit"

imp_for.body12.lr.ph.i.i:                         ; preds = %imp_for.cond11.preheader.i.i
  %.fca.2.extract.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %.fca.2.extract.i321.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr342.i.i, 2
  %.fca.2.extract.i323.i.i = extractvalue { { i64 }, { i64 }, ptr } %0, 2
  br i1 %tmp.i297.not.i.i, label %imp_for.body12.us.i.i, label %imp_for.body12.i.i

imp_for.body12.us.i.i:                            ; preds = %if.exit17.us.i.i, %imp_for.body12.lr.ph.i.i
  %45 = phi i64 [ %51, %if.exit17.us.i.i ], [ 0, %imp_for.body12.lr.ph.i.i ]
  %46 = getelementptr i8, ptr %.fca.2.extract.i.i.i, i64 %45
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 1
  %.not294.us.i.i = icmp eq i8 %48, 0
  br i1 %.not294.us.i.i, label %if.exit17.us.i.i, label %if.true15.us.i.i

if.true15.us.i.i:                                 ; preds = %imp_for.body12.us.i.i
  %49 = load i64, ptr %.fca.2.extract.i321.i.i, align 4
  %50 = getelementptr i64, ptr %.fca.2.extract.i323.i.i, i64 %45
  store i64 %49, ptr %50, align 4
  br label %if.exit17.us.i.i

if.exit17.us.i.i:                                 ; preds = %if.true15.us.i.i, %imp_for.body12.us.i.i
  %51 = add nuw nsw i64 %45, 1
  %exitcond346.not.i.i = icmp eq i64 %51, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond346.not.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2397.exit", label %imp_for.body12.us.i.i

imp_for.cond.preheader.i354.i.i:                  ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2232.exit.i.i"
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2397.exit"

for.body.lr.ph.i.i:                               ; preds = %imp_for.cond.preheader.i354.i.i
  store i2 1, ptr %.sroa.26.i.i, align 8, !alias.scope !12
  %.fca.2.extract.i.i325.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %.fca.2.extract.i327.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr342.i.i, 2
  %.fca.2.extract.i.i331.i.i = extractvalue { { i64 }, { i64 }, ptr } %0, 2
  br i1 %tmp.i297.not.i.i, label %for.body.us.i.i, label %for.body.i.i

for.body.us.i.i:                                  ; preds = %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit372.i.i", %for.body.lr.ph.i.i
  %.sroa.8.1.i.i = phi i64 [ %58, %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit372.i.i" ], [ 0, %for.body.lr.ph.i.i ]
  %tmp.i.i.i.us.i.i = mul i64 %.sroa.8.1.i.i, %.fca.0.extract.i.i.i.i.i
  %52 = getelementptr i8, ptr %.fca.2.extract.i.i325.i.i, i64 %tmp.i.i.i.us.i.i
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 1
  %.not291.us.i.i = icmp eq i8 %54, 0
  br i1 %.not291.us.i.i, label %yield.new2.i359.i.i, label %if.exit23.us.i.i

if.exit23.us.i.i:                                 ; preds = %for.body.us.i.i
  %55 = load i64, ptr %.fca.2.extract.i327.i.i, align 4
  %tmp.i.i.i330.us.i.i = mul i64 %.sroa.8.1.i.i, %.fca.0.extract.i.i.i
  %56 = getelementptr i8, ptr %.fca.2.extract.i.i331.i.i, i64 %tmp.i.i.i330.us.i.i
  store i64 %55, ptr %56, align 4
  %.sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.0..sroa.26.i.0..sroa.26.0..sroa.26.0..sroa.26.40.index.i357.pre.i.i = load i2, ptr %.sroa.26.i.i, align 8, !alias.scope !15
  %switch.i358.i.i = icmp eq i2 %.sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.0..sroa.26.i.0..sroa.26.0..sroa.26.0..sroa.26.40.index.i357.pre.i.i, 0
  br i1 %switch.i358.i.i, label %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit372.i.i", label %yield.new2.i359.i.i

yield.new2.i359.i.i:                              ; preds = %if.exit23.us.i.i, %for.body.us.i.i
  %57 = add nuw nsw i64 %.sroa.8.1.i.i, 1
  %exitcond.not.i364.i.i = icmp eq i64 %57, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i364.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2397.exit", label %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit372.i.i"

"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit372.i.i": ; preds = %yield.new2.i359.i.i, %if.exit23.us.i.i
  %58 = phi i64 [ %57, %yield.new2.i359.i.i ], [ 0, %if.exit23.us.i.i ]
  store i2 1, ptr %.sroa.26.i.i, align 8, !alias.scope !15
  br label %for.body.us.i.i

imp_for.body12.i.i:                               ; preds = %if.exit17.i.i, %imp_for.body12.lr.ph.i.i
  %59 = phi i64 [ %66, %if.exit17.i.i ], [ 0, %imp_for.body12.lr.ph.i.i ]
  %.0286341.i.i = phi i64 [ %.1.i.i, %if.exit17.i.i ], [ 0, %imp_for.body12.lr.ph.i.i ]
  %60 = getelementptr i8, ptr %.fca.2.extract.i.i.i, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 1
  %.not294.i.i = icmp eq i8 %62, 0
  br i1 %.not294.i.i, label %if.exit17.i.i, label %if.true15.i.i

if.true15.i.i:                                    ; preds = %imp_for.body12.i.i
  %63 = getelementptr i64, ptr %.fca.2.extract.i321.i.i, i64 %.0286341.i.i
  %64 = load i64, ptr %63, align 4
  %65 = getelementptr i64, ptr %.fca.2.extract.i323.i.i, i64 %59
  store i64 %64, ptr %65, align 4
  %tmp.i303.i.i = add i64 %.0286341.i.i, 1
  br label %if.exit17.i.i

if.exit17.i.i:                                    ; preds = %if.true15.i.i, %imp_for.body12.i.i
  %.1.i.i = phi i64 [ %tmp.i303.i.i, %if.true15.i.i ], [ %.0286341.i.i, %imp_for.body12.i.i ]
  %66 = add nuw nsw i64 %59, 1
  %exitcond.not.i.i = icmp eq i64 %66, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2397.exit", label %imp_for.body12.i.i

for.body.i.i:                                     ; preds = %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit390.i.i", %for.body.lr.ph.i.i
  %.sroa.8.3.i.i = phi i64 [ %74, %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit390.i.i" ], [ 0, %for.body.lr.ph.i.i ]
  %.2339.i.i = phi i64 [ %.3430.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit390.i.i" ], [ 0, %for.body.lr.ph.i.i ]
  %tmp.i.i.i.i.i = mul i64 %.sroa.8.3.i.i, %.fca.0.extract.i.i.i.i.i
  %67 = getelementptr i8, ptr %.fca.2.extract.i.i325.i.i, i64 %tmp.i.i.i.i.i
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 1
  %.not291.i.i = icmp eq i8 %69, 0
  br i1 %.not291.i.i, label %yield.new2.i377.i.i, label %if.exit23.i.i

if.exit23.i.i:                                    ; preds = %for.body.i.i
  %70 = getelementptr i64, ptr %.fca.2.extract.i327.i.i, i64 %.2339.i.i
  %71 = load i64, ptr %70, align 4
  %tmp.i.i.i330.i.i = mul i64 %.sroa.8.3.i.i, %.fca.0.extract.i.i.i
  %72 = getelementptr i8, ptr %.fca.2.extract.i.i331.i.i, i64 %tmp.i.i.i330.i.i
  store i64 %71, ptr %72, align 4
  %tmp.i306.i.i = add i64 %.2339.i.i, 1
  %.sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.0..sroa.26.i.0..sroa.26.0..sroa.26.0..sroa.26.40.index.i375.pre.i.i = load i2, ptr %.sroa.26.i.i, align 8, !alias.scope !18
  %switch.i376.i.i = icmp eq i2 %.sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.i.0..sroa.26.i.0..sroa.26.i.0..sroa.26.0..sroa.26.0..sroa.26.40.index.i375.pre.i.i, 0
  br i1 %switch.i376.i.i, label %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit390.i.i", label %yield.new2.i377.i.i

yield.new2.i377.i.i:                              ; preds = %if.exit23.i.i, %for.body.i.i
  %.3429.i.i = phi i64 [ %tmp.i306.i.i, %if.exit23.i.i ], [ %.2339.i.i, %for.body.i.i ]
  %73 = add nuw nsw i64 %.sroa.8.3.i.i, 1
  %exitcond.not.i382.i.i = icmp eq i64 %73, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i382.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2397.exit", label %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit390.i.i"

"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit390.i.i": ; preds = %yield.new2.i377.i.i, %if.exit23.i.i
  %.3430.i.i = phi i64 [ %.3429.i.i, %yield.new2.i377.i.i ], [ %tmp.i306.i.i, %if.exit23.i.i ]
  %74 = phi i64 [ %73, %yield.new2.i377.i.i ], [ 0, %if.exit23.i.i ]
  store i2 1, ptr %.sroa.26.i.i, align 8, !alias.scope !18
  br label %for.body.i.i

"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2397.exit": ; preds = %yield.new2.i377.i.i, %if.exit17.i.i, %yield.new2.i359.i.i, %imp_for.cond.preheader.i354.i.i, %if.exit17.us.i.i, %imp_for.cond11.preheader.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.26.i.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

; Function Attrs: nounwind
define double @generate_features(ptr nocapture readonly %0) local_unnamed_addr #6 {
entry:
  %1 = alloca [24 x i8], align 8
  %2 = alloca [24 x i8], align 8
  %3 = alloca [32 x i8], align 8
  %.sroa.18.i.i.i914.i.i = alloca i8, align 8
  %.sroa.18.i.i.i704.i.i = alloca i8, align 8
  %.sroa.18.i.i.i.i.i = alloca i8, align 8
  %.sroa.36.i.i = alloca i8, align 8
  %.unpack.unpack.i = load i64, ptr %0, align 8
  %.elt1.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 1
  %.unpack2.unpack.i = load i64, ptr %.elt1.i, align 8
  %.elt3.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 2
  %.unpack4.i = load ptr, ptr %.elt3.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.36.i.i)
  %switch.i.i.i75.i = icmp ult i64 %.unpack.unpack.i, 2
  %tmp.i82.not.i.i.i.i77.i = icmp eq i64 %.unpack2.unpack.i, 8
  %or.cond.i.i.i78.i = select i1 %switch.i.i.i75.i, i1 true, i1 %tmp.i82.not.i.i.i.i77.i
  br i1 %or.cond.i.i.i78.i, label %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1366.exit.i.i", label %imp_for.cond.preheader.i.i.i.i991.i.i

imp_for.cond.preheader.i.i.i.i991.i.i:            ; preds = %entry
  %4 = shl i64 %.unpack.unpack.i, 3
  %5 = tail call ptr @seq_alloc_atomic(i64 %4)
  %.not7.i.i.i.i992.i.i = icmp sgt i64 %.unpack.unpack.i, 0
  tail call void @llvm.assume(i1 %.not7.i.i.i.i992.i.i)
  br label %yield.new2.i66.i.i.i.i.i

yield.new2.i66.i.i.i.i.i:                         ; preds = %yield.new2.i66.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i991.i.i
  %.061.i.i.i.i.i = phi i64 [ %tmp.i.i.i.i.i.i, %yield.new2.i66.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i991.i.i ]
  %tmp.i.i.i.i.i.i993.i.i = mul i64 %.061.i.i.i.i.i, %.unpack2.unpack.i
  %6 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i.i.i.i.i.i993.i.i
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr i64, ptr %5, i64 %.061.i.i.i.i.i
  store i64 %7, ptr %8, align 4
  %tmp.i.i.i.i.i.i = add nuw nsw i64 %.061.i.i.i.i.i, 1
  %exitcond.not.i71.i.i.i.i.i = icmp eq i64 %tmp.i.i.i.i.i.i, %.unpack.unpack.i
  br i1 %exitcond.not.i71.i.i.i.i.i, label %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1366.exit.i.i", label %yield.new2.i66.i.i.i.i.i

"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1366.exit.i.i": ; preds = %yield.new2.i66.i.i.i.i.i, %entry
  %.fca.2.extract87.pn.i.i.i.i = phi ptr [ %.unpack4.i, %entry ], [ %5, %yield.new2.i66.i.i.i.i.i ]
  %tmp.i.not.i.i.i.i = icmp eq i64 %.unpack.unpack.i, 0
  br i1 %tmp.i.not.i.i.i.i, label %if.false2.i.i.i, label %while.cond.preheader.i.i.i.i.i.i.i.i

while.cond.preheader.i.i.i.i.i.i.i.i:             ; preds = %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1366.exit.i.i"
  %.not7.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.unpack.unpack.i, 0
  tail call void @llvm.assume(i1 %.not7.i.i.i.i.i.i.i.i.i)
  br label %while.body.i.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i.i:                       ; preds = %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i", %while.cond.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i" ], [ false, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.6101.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6101.2.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %.unpack.i93.i.i.i.i.i.i.i.i = phi { i1, i64 } [ %.unpack.i92.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i" ], [ zeroinitializer, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %.191.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i81.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %9 = getelementptr i64, ptr %.fca.2.extract87.pn.i.i.i.i, i64 %.191.i.i.i.i.i.i.i.i
  %10 = load i64, ptr %9, align 4
  %11 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i.i.i.i.i, 0
  %12 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i.i.i.i.i, 1
  %tmp.i.i.i.i.i.i.i.i.i.i = icmp sle i64 %12, %10
  %or.cond.not.i.i.i.i.i.i.i.i.i = select i1 %11, i1 %tmp.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i, label %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i", label %if.true.i.i.i.i.i.i.i.i.i

if.true.i.i.i.i.i.i.i.i.i:                        ; preds = %while.body.i.i.i.i.i.i.i.i
  %13 = insertvalue { i1, i64 } { i1 true, i64 undef }, i64 %10, 1
  br label %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i"

"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i ], [ true, %if.true.i.i.i.i.i.i.i.i.i ]
  %.sroa.6101.2.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6101.1.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i ], [ %10, %if.true.i.i.i.i.i.i.i.i.i ]
  %.unpack.i92.i.i.i.i.i.i.i.i = phi { i1, i64 } [ %.unpack.i93.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i ], [ %13, %if.true.i.i.i.i.i.i.i.i.i ]
  %tmp.i81.i.i.i.i.i.i.i.i = add nuw nsw i64 %.191.i.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %tmp.i81.i.i.i.i.i.i.i.i, %.unpack.unpack.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %while.cond.preheader.i.i.i.i89.i.i.i.i, label %while.body.i.i.i.i.i.i.i.i

while.cond.preheader.i.i.i.i89.i.i.i.i:           ; preds = %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1469.exit.i.i.i.i.i.i.i.i"
  tail call void @llvm.assume(i1 %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i.i.i.i.i)
  br label %while.body.i.i.i.i93.i.i.i.i

while.body.i.i.i.i93.i.i.i.i:                     ; preds = %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i", %while.cond.preheader.i.i.i.i89.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i94.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i101.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i" ], [ false, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %.sroa.6101.1.i.i.i.i95.i.i.i.i = phi i64 [ %.sroa.6101.2.i.i.i.i102.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %.unpack.i93.i.i.i.i96.i.i.i.i = phi { i1, i64 } [ %.unpack.i92.i.i.i.i103.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i" ], [ zeroinitializer, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %.191.i.i.i.i97.i.i.i.i = phi i64 [ %tmp.i81.i.i.i.i104.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %14 = getelementptr i64, ptr %.fca.2.extract87.pn.i.i.i.i, i64 %.191.i.i.i.i97.i.i.i.i
  %15 = load i64, ptr %14, align 4
  %16 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i96.i.i.i.i, 0
  %17 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i96.i.i.i.i, 1
  %tmp.i.i.i.i.i.i98.i.i.i.i = icmp sge i64 %17, %15
  %or.cond.not.i.i.i.i.i99.i.i.i.i = select i1 %16, i1 %tmp.i.i.i.i.i.i98.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i99.i.i.i.i, label %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i", label %if.true.i.i.i.i.i100.i.i.i.i

if.true.i.i.i.i.i100.i.i.i.i:                     ; preds = %while.body.i.i.i.i93.i.i.i.i
  %18 = insertvalue { i1, i64 } { i1 true, i64 undef }, i64 %15, 1
  br label %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i"

"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i.i.i100.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i101.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i94.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i ], [ true, %if.true.i.i.i.i.i100.i.i.i.i ]
  %.sroa.6101.2.i.i.i.i102.i.i.i.i = phi i64 [ %.sroa.6101.1.i.i.i.i95.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i ], [ %15, %if.true.i.i.i.i.i100.i.i.i.i ]
  %.unpack.i92.i.i.i.i103.i.i.i.i = phi { i1, i64 } [ %.unpack.i93.i.i.i.i96.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i ], [ %18, %if.true.i.i.i.i.i100.i.i.i.i ]
  %tmp.i81.i.i.i.i104.i.i.i.i = add nuw nsw i64 %.191.i.i.i.i97.i.i.i.i, 1
  %exitcond.not.i.i.i.i105.i.i.i.i = icmp eq i64 %tmp.i81.i.i.i.i104.i.i.i.i, %.unpack.unpack.i
  br i1 %exitcond.not.i.i.i.i105.i.i.i.i, label %if.exit.i.i.i.i, label %while.body.i.i.i.i93.i.i.i.i

if.exit.i.i.i.i:                                  ; preds = %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1526.exit.i.i.i.i.i.i.i.i"
  %tmp.i.i.i.i995.i.i = sitofp i64 %.sroa.6101.2.i.i.i.i.i.i.i.i to double
  tail call void @llvm.assume(i1 %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i101.i.i.i.i)
  %tmp.i.i122.i.i.i.i = sitofp i64 %.sroa.6101.2.i.i.i.i102.i.i.i.i to double
  %tmp.i71.i.i.i.i = fcmp une double %tmp.i.i.i.i995.i.i, %tmp.i.i122.i.i.i.i
  %tmp.i73.i.i.i.i = fadd double %tmp.i.i.i.i995.i.i, -5.000000e-01
  %tmp.i74.i.i.i.i = fadd double %tmp.i.i122.i.i.i.i, 5.000000e-01
  %.166.i.i.i.i = select i1 %tmp.i71.i.i.i.i, double %tmp.i.i122.i.i.i.i, double %tmp.i74.i.i.i.i
  %.1.i.i.i.i = select i1 %tmp.i71.i.i.i.i, double %tmp.i.i.i.i995.i.i, double %tmp.i73.i.i.i.i
  %tmp.i.i.i113.i.i.i = fcmp oeq double %.1.i.i.i.i, 0.000000e+00
  %tmp.i.i.i116.i.i.i = fcmp oeq double %.166.i.i.i.i, 1.000000e+00
  %or.cond.i.i.i = and i1 %tmp.i.i.i113.i.i.i, %tmp.i.i.i116.i.i.i
  br i1 %or.cond.i.i.i, label %if.false2.i.i.i, label %while.cond.preheader.i.i.i

if.false2.i.i.i:                                  ; preds = %if.exit.i.i.i.i, %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1366.exit.i.i"
  br label %while.cond.preheader.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.false2.i.i.i, %if.exit.i.i.i.i
  %.0109.i.i.i = phi double [ 1.000000e+00, %if.false2.i.i.i ], [ %.166.i.i.i.i, %if.exit.i.i.i.i ]
  %.0.i.i.i = phi double [ 0.000000e+00, %if.false2.i.i.i ], [ %.1.i.i.i.i, %if.exit.i.i.i.i ]
  %tmp.i89.i.i.i.i.i.i = fsub double %.0109.i.i.i, %.0.i.i.i
  %tmp.i91.i.i.i.i.i.i = fdiv double %tmp.i89.i.i.i.i.i.i, 3.000000e+00
  %tmp.i94.i.i.i.i.i.i = fcmp une double %tmp.i91.i.i.i.i.i.i, 0.000000e+00
  %19 = fmul double %tmp.i91.i.i.i.i.i.i, 2.000000e+00
  %tmp.i96.i.i.i.1.i.i.i = fmul double %tmp.i89.i.i.i.i.i.i, 0x3FD5555555555555
  %tmp.i96.i.i.i.2.i.i.i = fmul double %tmp.i89.i.i.i.i.i.i, 0x3FE5555555555555
  %.pn1194.in.i.i = select i1 %tmp.i94.i.i.i.i.i.i, double %tmp.i91.i.i.i.i.i.i, double %tmp.i89.i.i.i.i.i.i
  %tmp.i91.i.i.i.i.pn.i.i = select i1 %tmp.i94.i.i.i.i.i.i, double %tmp.i91.i.i.i.i.i.i, double %tmp.i96.i.i.i.1.i.i.i
  %tmp.i96.i.i.i.2.sink.i.i.i = select i1 %tmp.i94.i.i.i.i.i.i, double %19, double %tmp.i96.i.i.i.2.i.i.i
  %tmp.i97.i.i.i.1.i.sink.i.i = fadd double %.0.i.i.i, %tmp.i91.i.i.i.i.pn.i.i
  %.pn1194.i.i = fmul double %.pn1194.in.i.i, 0.000000e+00
  %tmp.i97.i.i.i.i.sink.i.i = fadd double %.0.i.i.i, %.pn1194.i.i
  store double %tmp.i97.i.i.i.i.sink.i.i, ptr %3, align 8
  %20 = getelementptr inbounds double, ptr %3, i64 1
  store double %tmp.i97.i.i.i.1.i.sink.i.i, ptr %20, align 8
  %tmp.i97.i.i.i.2.i.i.i = fadd double %.0.i.i.i, %tmp.i96.i.i.i.2.sink.i.i.i
  %21 = getelementptr inbounds double, ptr %3, i64 2
  store double %tmp.i97.i.i.i.2.i.i.i, ptr %21, align 8
  %22 = getelementptr inbounds double, ptr %3, i64 3
  store double %.0109.i.i.i, ptr %22, align 8
  %.fr1103.i.i = freeze { { i64 }, { i64 }, ptr } { { i64 } { i64 3 }, { i64 } { i64 8 }, ptr undef }
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %tmp.i86.not98.i.i.i = icmp sgt i64 %.unpack.unpack.i, 0
  br i1 %tmp.i86.not98.i.i.i, label %for.body.lr.ph.i.i, label %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  %.pre1014 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 0
  %.pre1016 = extractvalue { i64 } %.pre1014, 0
  br label %if.exit.i.i.i.i.i.i.i

for.body.lr.ph.i.i:                               ; preds = %while.cond.preheader.i.i.i
  store i2 -2, ptr %.sroa.36.i.i, align 8, !alias.scope !21
  %.fr1097.i.i = freeze { i64 } { i64 8 }
  %.fca.0.extract.i83.i.i.i.i687.i.i = extractvalue { i64 } %.fr1097.i.i, 0
  %tmp.i82.not.i84.i.i.i.i688.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i687.i.i, 8
  %23 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i = extractvalue { i64 } %23, 0
  %switch.i.i.i.i970.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 2
  %24 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.fca.0.extract.i.i.i.i.i971.i.i = extractvalue { i64 } %24, 0
  %tmp.i82.not.i.i.i.i.i972.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i971.i.i, 8
  %spec.select.i.i.i.i973.i.i = select i1 %tmp.i82.not.i.i.i.i.i972.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i974.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i973.i.i, 0
  %25 = and i8 %.fca.0.extract2191.i.i.i.i974.i.i, 1
  %.not7697.i.i.i.i979.i.i = icmp ne i8 %25, 0
  %.not76.i.i.i.i980.i.i = select i1 %switch.i.i.i.i970.i.i, i1 true, i1 %.not7697.i.i.i.i979.i.i
  %common.ret.op.i93.i.i.i.i981.i.i = select i1 %switch.i.i.i.i970.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i973.i.i
  %.fca.1.extract22.i.i.i.i983.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i981.i.i, 1
  %26 = and i8 %.fca.1.extract22.i.i.i.i983.i.i, 1
  %.not77.i.i.i.i984.i.i = icmp eq i8 %26, 0
  %tmp.i.not.i.i.i.i951.i.i = icmp ne i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 1
  %.not7.i.i.i.i953.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 0
  %ident.check353 = icmp ne i64 %.fca.0.extract.i83.i.i.i.i687.i.i, 1
  %min.iters.check = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 1
  %n.vec = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, -2
  %cmp.n = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, %n.vec
  %.fr1021 = freeze { i64 } { i64 1 }
  %.fca.0.extract.i.i.i.i.i894.i.i = extractvalue { i64 } %.fr1021, 0
  %tmp.i82.not.i.i.i.i.i895.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i894.i.i, 1
  %spec.select.i.i.i.i896.i.i = select i1 %tmp.i82.not.i.i.i.i.i895.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i897.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i896.i.i, 0
  %27 = and i8 %.fca.0.extract2191.i.i.i.i897.i.i, 1
  %.not7697.i.i.i.i902.i.i = icmp ne i8 %27, 0
  %.fca.0.extract.i.i184.i.i.i880.i.i = extractvalue { i64 } %.fr1021, 0
  %ident.check213 = icmp ne i64 %.fca.0.extract.i.i184.i.i.i880.i.i, 1
  %ident.check200.not = icmp eq i64 %.fca.0.extract.i.i184.i.i.i880.i.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i", %for.body.lr.ph.i.i
  %.sroa.28.1.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %.sroa.28.2.i.i, %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i" ]
  %.sroa.6.1.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %.sroa.6.2.i.i, %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i" ]
  %.sroa.32.1.i.i = phi i64 [ undef, %for.body.lr.ph.i.i ], [ %.sroa.32.2.i.i, %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i" ]
  %tmp.i.i.i = add i64 %.sroa.6.1.i.i, 65536
  %.not.i.i.i.i.i.i.i.i = icmp sgt i64 %.sroa.6.1.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.false.i.i.i.i.i.i.i.i, label %if.true.i.i.i.i.i.i.i.i

if.true.i.i.i.i.i.i.i.i:                          ; preds = %for.body.i.i
  %tmp.i90.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.6.1.i.i, %.unpack.unpack.i
  %spec.select137.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i90.i.i.i.i.i.i.i.i, i64 0)
  br label %if.exit.i.i.i.i.i.i.i.i

if.false.i.i.i.i.i.i.i.i:                         ; preds = %for.body.i.i
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.6.1.i.i, i64 %.unpack.unpack.i)
  br label %if.exit.i.i.i.i.i.i.i.i

if.exit.i.i.i.i.i.i.i.i:                          ; preds = %if.false.i.i.i.i.i.i.i.i, %if.true.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %spec.select137.i.i.i.i.i.i.i.i, %if.true.i.i.i.i.i.i.i.i ], [ %spec.select.i.i, %if.false.i.i.i.i.i.i.i.i ]
  %.not78.i.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i.i.i, -1
  br i1 %.not78.i.i.i.i.i.i.i.i, label %if.false11.i.i.i.i.i.i.i.i, label %if.true10.i.i.i.i.i.i.i.i

if.true10.i.i.i.i.i.i.i.i:                        ; preds = %if.exit.i.i.i.i.i.i.i.i
  %tmp.i102.i.i.i.i.i.i.i.i = add nsw i64 %tmp.i.i.i, %.unpack.unpack.i
  %spec.select138.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i102.i.i.i.i.i.i.i.i, i64 0)
  br label %if.exit12.i.i.i.i.i.i.i.i

if.false11.i.i.i.i.i.i.i.i:                       ; preds = %if.exit.i.i.i.i.i.i.i.i
  %spec.select1090.i.i = tail call i64 @llvm.smin.i64(i64 %tmp.i.i.i, i64 %.unpack.unpack.i)
  br label %if.exit12.i.i.i.i.i.i.i.i

if.exit12.i.i.i.i.i.i.i.i:                        ; preds = %if.false11.i.i.i.i.i.i.i.i, %if.true10.i.i.i.i.i.i.i.i
  %.076.i.i.i.i.i.i.i.i = phi i64 [ %spec.select138.i.i.i.i.i.i.i.i, %if.true10.i.i.i.i.i.i.i.i ], [ %spec.select1090.i.i, %if.false11.i.i.i.i.i.i.i.i ]
  %tmp.i116.not.i.i.i.i.i.i.i.i = icmp sgt i64 %.076.i.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i.i
  %tmp.i125.i.i.i.i.i.i.i.i = sub i64 %.076.i.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i.i
  %.pn128.i.i.i.i.i.i.i.i = select i1 %tmp.i116.not.i.i.i.i.i.i.i.i, i64 %tmp.i125.i.i.i.i.i.i.i.i, i64 0
  %tmp.i.i.i.i.i.i82.i = shl i64 %.0.i.i.i.i.i.i.i.i, 3
  %28 = getelementptr i8, ptr %.fca.2.extract87.pn.i.i.i.i, i64 %tmp.i.i.i.i.i.i82.i
  %29 = insertvalue { i64 } undef, i64 %.pn128.i.i.i.i.i.i.i.i, 0
  %30 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %29, 0
  %31 = insertvalue { { i64 }, { i64 }, ptr } %30, { i64 } { i64 8 }, 1
  %32 = insertvalue { { i64 }, { i64 }, ptr } %31, ptr %28, 2
  %33 = tail call ptr @seq_alloc_atomic(i64 %.pn128.i.i.i.i.i.i.i.i)
  %.not7.i.i.i.i.i.i = icmp sgt i64 %.pn128.i.i.i.i.i.i.i.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i576.thread.i.i

imp_for.cond.preheader.i.i.i576.thread.i.i:       ; preds = %if.exit12.i.i.i.i.i.i.i.i
  %34 = tail call ptr @seq_alloc_atomic(i64 %.pn128.i.i.i.i.i.i.i.i)
  br label %if.exit.i.i.i.i.i.i

imp_for.body.i.i.i.i.i:                           ; preds = %imp_for.body.i.i.i.i.i, %if.exit12.i.i.i.i.i.i.i.i
  %35 = phi i64 [ %39, %imp_for.body.i.i.i.i.i ], [ 0, %if.exit12.i.i.i.i.i.i.i.i ]
  %36 = getelementptr i64, ptr %28, i64 %35
  %37 = load i64, ptr %36, align 4
  %y.i.i.i.i.i.i.i = sitofp i64 %37 to double
  %tmp.i.i.i.i.i.i.i.i = fcmp ole double %.0.i.i.i, %y.i.i.i.i.i.i.i
  %res.i.i.i.i.i.i.i.i = zext i1 %tmp.i.i.i.i.i.i.i.i to i8
  %38 = getelementptr i8, ptr %33, i64 %35
  store i8 %res.i.i.i.i.i.i.i.i, ptr %38, align 1
  %39 = add nuw nsw i64 %35, 1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %39, %.pn128.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i576.i.i, label %imp_for.body.i.i.i.i.i

imp_for.cond.preheader.i.i.i576.i.i:              ; preds = %imp_for.body.i.i.i.i.i
  %40 = tail call ptr @seq_alloc_atomic(i64 %.pn128.i.i.i.i.i.i.i.i)
  %min.iters.check1134 = icmp ult i64 %.pn128.i.i.i.i.i.i.i.i, 2
  br i1 %min.iters.check1134, label %imp_for.body.i.i.i578.i.i.preheader, label %vector.ph1135

vector.ph1135:                                    ; preds = %imp_for.cond.preheader.i.i.i576.i.i
  %n.vec1137 = and i64 %.pn128.i.i.i.i.i.i.i.i, -2
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %vector.ph1135
  %index1141 = phi i64 [ 0, %vector.ph1135 ], [ %index.next1142, %vector.body1140 ]
  %41 = or i64 %index1141, 1
  %42 = getelementptr i64, ptr %28, i64 %index1141
  %43 = getelementptr i64, ptr %28, i64 %41
  %44 = load i64, ptr %42, align 4
  %45 = load i64, ptr %43, align 4
  %46 = sitofp i64 %44 to double
  %47 = sitofp i64 %45 to double
  %48 = fcmp oge double %.0109.i.i.i, %46
  %49 = fcmp oge double %.0109.i.i.i, %47
  %50 = zext i1 %48 to i8
  %51 = zext i1 %49 to i8
  %52 = getelementptr i8, ptr %40, i64 %index1141
  %53 = getelementptr i8, ptr %40, i64 %41
  store i8 %50, ptr %52, align 1
  store i8 %51, ptr %53, align 1
  %index.next1142 = add nuw i64 %index1141, 2
  %54 = icmp eq i64 %index.next1142, %n.vec1137
  br i1 %54, label %middle.block1132, label %vector.body1140, !llvm.loop !24

middle.block1132:                                 ; preds = %vector.body1140
  %cmp.n1139 = icmp eq i64 %.pn128.i.i.i.i.i.i.i.i, %n.vec1137
  br i1 %cmp.n1139, label %if.exit.i.i.i.i.i.i, label %imp_for.body.i.i.i578.i.i.preheader

imp_for.body.i.i.i578.i.i.preheader:              ; preds = %middle.block1132, %imp_for.cond.preheader.i.i.i576.i.i
  %.ph1213 = phi i64 [ 0, %imp_for.cond.preheader.i.i.i576.i.i ], [ %n.vec1137, %middle.block1132 ]
  br label %imp_for.body.i.i.i578.i.i

imp_for.body.i.i.i578.i.i:                        ; preds = %imp_for.body.i.i.i578.i.i, %imp_for.body.i.i.i578.i.i.preheader
  %55 = phi i64 [ %59, %imp_for.body.i.i.i578.i.i ], [ %.ph1213, %imp_for.body.i.i.i578.i.i.preheader ]
  %56 = getelementptr i64, ptr %28, i64 %55
  %57 = load i64, ptr %56, align 4
  %y.i.i.i.i.i579.i.i = sitofp i64 %57 to double
  %tmp.i.i.i.i.i.i580.i.i = fcmp oge double %.0109.i.i.i, %y.i.i.i.i.i579.i.i
  %res.i.i.i.i.i.i581.i.i = zext i1 %tmp.i.i.i.i.i.i580.i.i to i8
  %58 = getelementptr i8, ptr %40, i64 %55
  store i8 %res.i.i.i.i.i.i581.i.i, ptr %58, align 1
  %59 = add nuw nsw i64 %55, 1
  %exitcond.not.i.i.i582.i.i = icmp eq i64 %59, %.pn128.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i582.i.i, label %if.exit.i.i.i.i.i.i, label %imp_for.body.i.i.i578.i.i, !llvm.loop !25

if.exit.i.i.i.i.i.i:                              ; preds = %imp_for.body.i.i.i578.i.i, %middle.block1132, %imp_for.cond.preheader.i.i.i576.thread.i.i
  %60 = phi ptr [ %34, %imp_for.cond.preheader.i.i.i576.thread.i.i ], [ %40, %middle.block1132 ], [ %40, %imp_for.body.i.i.i578.i.i ]
  %61 = insertvalue { { i64 }, { i64 }, ptr } %30, { i64 } { i64 1 }, 1
  %.fr.i.i = freeze { { i64 }, { i64 }, ptr } %61
  %62 = insertvalue { { i64 }, { i64 }, ptr } %.fr.i.i, ptr %33, 2
  %63 = extractvalue { { i64 }, { i64 }, ptr } %.fr.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i = extractvalue { i64 } %63, 0
  %switch.i.i.i.i.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 2
  %64 = extractvalue { { i64 }, { i64 }, ptr } %.fr.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i.i = extractvalue { i64 } %64, 0
  %tmp.i82.not.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i.i = select i1 %tmp.i82.not.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i.i.i, 0
  %65 = and i8 %.fca.0.extract2191.i.i.i.i.i.i, 1
  %66 = or i1 %switch.i.i.i.i.i.i, %tmp.i82.not.i.i.i.i.i.i.i
  %common.ret.op.i81.i.i.i.i.i.i = select i1 %66, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i594.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i, 0
  %.not7697.i.i.i.i.i.i = icmp ne i8 %65, 0
  %.not76.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, i1 true, i1 %.not7697.i.i.i.i.i.i
  %67 = and i8 %.fca.0.extract.i.i.i.i594.i.i, 1
  %68 = icmp ne i8 %67, 0
  %69 = select i1 %.not76.i.i.i.i.i.i, i1 %68, i1 false
  br i1 %69, label %if.true.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i.i.i"

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i.i.i": ; preds = %if.exit.i.i.i.i.i.i
  %common.ret.op.i93.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.i
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i.i.i, 1
  %70 = and i8 %.fca.1.extract22.i.i.i.i.i.i, 1
  %.not77.i.i.i.i.i.i = icmp eq i8 %70, 0
  %71 = and i8 %.fca.1.extract.i.i.i.i.i.i, 1
  %.not163.i.i.i.i.i = icmp eq i8 %71, 0
  %.not.i.i.i.i.i = select i1 %.not77.i.i.i.i.i.i, i1 true, i1 %.not163.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i592.i.i, label %if.true.i.i.i.i.i

if.true.i.i.i.i.i:                                ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i.i.i", %if.exit.i.i.i.i.i.i
  %.not146169.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not146169.i.i.i.i.i, label %imp_for.body.i.i.i596.i.i.preheader, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i"

imp_for.body.i.i.i596.i.i.preheader:              ; preds = %if.true.i.i.i.i.i
  %min.iters.check435 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check435, label %imp_for.body.i.i.i596.i.i.preheader1209, label %vector.ph436

vector.ph436:                                     ; preds = %imp_for.body.i.i.i596.i.i.preheader
  %n.vec438 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, -2
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph436
  %index442 = phi i64 [ 0, %vector.ph436 ], [ %index.next443, %vector.body441 ]
  %72 = or i64 %index442, 1
  %73 = getelementptr i8, ptr %33, i64 %index442
  %74 = getelementptr i8, ptr %33, i64 %72
  %75 = load i8, ptr %73, align 1
  %76 = load i8, ptr %74, align 1
  %77 = getelementptr i8, ptr %60, i64 %index442
  %78 = getelementptr i8, ptr %60, i64 %72
  %79 = load i8, ptr %77, align 1
  %80 = load i8, ptr %78, align 1
  %81 = and i8 %79, %75
  %82 = and i8 %80, %76
  store i8 %81, ptr %73, align 1
  store i8 %82, ptr %74, align 1
  %index.next443 = add nuw i64 %index442, 2
  %83 = icmp eq i64 %index.next443, %n.vec438
  br i1 %83, label %middle.block433, label %vector.body441, !llvm.loop !26

middle.block433:                                  ; preds = %vector.body441
  %cmp.n440 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, %n.vec438
  br i1 %cmp.n440, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i", label %imp_for.body.i.i.i596.i.i.preheader1209

imp_for.body.i.i.i596.i.i.preheader1209:          ; preds = %middle.block433, %imp_for.body.i.i.i596.i.i.preheader
  %.ph1210 = phi i64 [ %n.vec438, %middle.block433 ], [ 0, %imp_for.body.i.i.i596.i.i.preheader ]
  br label %imp_for.body.i.i.i596.i.i

imp_for.cond.preheader.i.i.i.i592.i.i:            ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i.i.i"
  %.not7.i.i.i.i593.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not7.i.i.i.i593.i.i, label %for.body.lr.ph.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i"

for.body.lr.ph.i.i.i.i.i:                         ; preds = %imp_for.cond.preheader.i.i.i.i592.i.i
  %tmp.i.not.i.i.i.i.not.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 1
  %84 = load i8, ptr %33, align 1
  %85 = load i8, ptr %60, align 1
  %86 = and i8 %85, %84
  store i8 %86, ptr %33, align 1
  br i1 %tmp.i.not.i.i.i.i.not.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i", label %yield.new2.i204.i.i.i.i.i.preheader

yield.new2.i204.i.i.i.i.i.preheader:              ; preds = %for.body.lr.ph.i.i.i.i.i
  %87 = add nsw i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, -1
  %min.iters.check448 = icmp ugt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 2
  %or.cond = and i1 %min.iters.check448, %tmp.i82.not.i.i.i.i.i.i.i
  br i1 %or.cond, label %vector.ph449, label %yield.new2.i204.i.i.i.i.i.preheader1211

vector.ph449:                                     ; preds = %yield.new2.i204.i.i.i.i.i.preheader
  %n.vec451 = and i64 %87, -2
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph449
  %index456 = phi i64 [ 0, %vector.ph449 ], [ %88, %vector.body455 ]
  %offset.idx457 = or i64 %index456, 1
  %88 = add nuw nsw i64 %index456, 2
  %89 = getelementptr i8, ptr %33, i64 %offset.idx457
  %90 = getelementptr i8, ptr %33, i64 %88
  %91 = getelementptr i8, ptr %60, i64 %offset.idx457
  %92 = getelementptr i8, ptr %60, i64 %88
  %93 = load i8, ptr %89, align 1
  %94 = load i8, ptr %90, align 1
  %95 = load i8, ptr %91, align 1
  %96 = load i8, ptr %92, align 1
  %97 = and i8 %95, %93
  %98 = and i8 %96, %94
  store i8 %97, ptr %89, align 1
  store i8 %98, ptr %90, align 1
  %99 = icmp eq i64 %88, %n.vec451
  br i1 %99, label %middle.block446, label %vector.body455, !llvm.loop !27

middle.block446:                                  ; preds = %vector.body455
  %ind.end452 = or i64 %87, 1
  %cmp.n454 = icmp eq i64 %87, %n.vec451
  br i1 %cmp.n454, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i", label %yield.new2.i204.i.i.i.i.i.preheader1211

yield.new2.i204.i.i.i.i.i.preheader1211:          ; preds = %middle.block446, %yield.new2.i204.i.i.i.i.i.preheader
  %.sroa.12.3.i.i.i.i.i.ph = phi i64 [ %ind.end452, %middle.block446 ], [ 1, %yield.new2.i204.i.i.i.i.i.preheader ]
  br label %yield.new2.i204.i.i.i.i.i

yield.new2.i204.i.i.i.i.i:                        ; preds = %yield.new2.i204.i.i.i.i.i, %yield.new2.i204.i.i.i.i.i.preheader1211
  %.sroa.12.3.i.i.i.i.i = phi i64 [ %105, %yield.new2.i204.i.i.i.i.i ], [ %.sroa.12.3.i.i.i.i.i.ph, %yield.new2.i204.i.i.i.i.i.preheader1211 ]
  %tmp.i40.i.i.us.i.i.i.i.i = mul i64 %.sroa.12.3.i.i.i.i.i, %.fca.0.extract.i.i.i.i.i.i.i
  %100 = getelementptr i8, ptr %33, i64 %tmp.i40.i.i.us.i.i.i.i.i
  %101 = getelementptr i8, ptr %60, i64 %tmp.i40.i.i.us.i.i.i.i.i
  %102 = load i8, ptr %100, align 1
  %103 = load i8, ptr %101, align 1
  %104 = and i8 %103, %102
  store i8 %104, ptr %100, align 1
  %105 = add nuw nsw i64 %.sroa.12.3.i.i.i.i.i, 1
  %exitcond.not.i209.i.i.i.i.i = icmp eq i64 %105, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i209.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i", label %yield.new2.i204.i.i.i.i.i, !llvm.loop !29

imp_for.body.i.i.i596.i.i:                        ; preds = %imp_for.body.i.i.i596.i.i, %imp_for.body.i.i.i596.i.i.preheader1209
  %106 = phi i64 [ %112, %imp_for.body.i.i.i596.i.i ], [ %.ph1210, %imp_for.body.i.i.i596.i.i.preheader1209 ]
  %107 = getelementptr i8, ptr %33, i64 %106
  %108 = load i8, ptr %107, align 1
  %109 = getelementptr i8, ptr %60, i64 %106
  %110 = load i8, ptr %109, align 1
  %111 = and i8 %110, %108
  store i8 %111, ptr %107, align 1
  %112 = add nuw nsw i64 %106, 1
  %exitcond.not.i.i.i597.i.i = icmp eq i64 %112, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i597.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i", label %imp_for.body.i.i.i596.i.i, !llvm.loop !30

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i": ; preds = %imp_for.body.i.i.i596.i.i, %yield.new2.i204.i.i.i.i.i, %middle.block446, %for.body.lr.ph.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i592.i.i, %middle.block433, %if.true.i.i.i.i.i
  tail call void @llvm.assume(i1 %.not7.i.i.i.i.i.i)
  %113 = load i8, ptr %33, align 1
  %exitcond.peel.not.i.i.i.i.i.i.i = icmp eq i64 %.pn128.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.peel.not.i.i.i.i.i.i.i, label %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2198.exit.i.i", label %if.exit6.i.i.i.i.i.i.i

if.exit6.i.i.i.i.i.i.i:                           ; preds = %if.exit6.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i"
  %.sroa.10.1142.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i, %if.exit6.i.i.i.i.i.i.i ], [ %113, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i" ]
  %.0140.i.i.i.i.i.i.i = phi i64 [ %tmp.i129.i.i.i.i.i.i.i, %if.exit6.i.i.i.i.i.i.i ], [ 1, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i" ]
  %114 = getelementptr i8, ptr %33, i64 %.0140.i.i.i.i.i.i.i
  %115 = load i8, ptr %114, align 1
  %116 = and i8 %.sroa.10.1142.i.i.i.i.i.i.i, 1
  %.not.i130.i.i.i.i.i.i.i = icmp eq i8 %116, 0
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not.i130.i.i.i.i.i.i.i, i8 0, i8 %115
  %tmp.i129.i.i.i.i.i.i.i = add nuw nsw i64 %.0140.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %tmp.i129.i.i.i.i.i.i.i, %.pn128.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2198.exit.i.i", label %if.exit6.i.i.i.i.i.i.i, !llvm.loop !31

"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2198.exit.i.i": ; preds = %if.exit6.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i"
  %.sroa.10.0.i.i.i.i.i.i.i = phi i8 [ %113, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2091.exit.i.i" ], [ %spec.select.i.i.i.i.i.i.i.i, %if.exit6.i.i.i.i.i.i.i ]
  %117 = and i8 %.sroa.10.0.i.i.i.i.i.i.i, 1
  %.not.not.i.i = icmp eq i8 %117, 0
  br i1 %.not.not.i.i, label %if.true.i.i, label %if.exit.i.i

imp_for.body.lr.ph.i.i.i.i.loopexit:              ; preds = %yield.new6.i1271.i.i, %yield.new2.i1258.i.i
  %.pre1008 = load double, ptr %20, align 8
  %.pre1009 = load double, ptr %3, align 8
  %.pre1010 = load double, ptr %21, align 8
  %.pre1011 = load double, ptr %22, align 8
  br label %if.exit.i.i.i.i.i.i.i

if.exit.i.i.i.i.i.i.i:                            ; preds = %imp_for.body.lr.ph.i.i.i.i.loopexit, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge
  %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi i64 [ %.pre1016, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %118 = phi double [ %.0109.i.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1011, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %119 = phi double [ %tmp.i97.i.i.i.2.i.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1010, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %120 = phi double [ %tmp.i97.i.i.i.i.sink.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1009, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %121 = phi double [ %tmp.i97.i.i.i.1.i.sink.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1008, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %tmp.i74.i.i1003.i.i = fsub double %121, %120
  %tmp.i74.i.i1003.i.i.1 = fsub double %119, %121
  %tmp.i74.i.i1003.i.i.2 = fsub double %118, %119
  store double %tmp.i74.i.i1003.i.i, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 8
  store double %tmp.i74.i.i1003.i.i.1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 16
  store double %tmp.i74.i.i1003.i.i.2, ptr %.sroa.3.0..sroa_idx, align 8
  %switch.i.i.i.i.i.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 2
  %122 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { i64 } %122, 0
  %tmp.i82.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i, 8
  %spec.select.i.i.i.i.i.i.i = select i1 %tmp.i82.not.i.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2190.i.i.i.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i.i.i.i, 0
  %123 = and i8 %.fca.0.extract2190.i.i.i.i.i.i.i, 1
  %124 = or i1 %switch.i.i.i.i.i.i.i, %tmp.i82.not.i.i.i.i.i.i.i.i
  %common.ret.op.i81.i.i.i.i.i.i.i = select i1 %124, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i.i1011.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i.i, 0
  %.not7696.i.i.i.i.i.i.i = icmp ne i8 %123, 0
  %.not76.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i.i, i1 true, i1 %.not7696.i.i.i.i.i.i.i
  %125 = and i8 %.fca.0.extract.i.i.i.i.i1011.i.i, 1
  %126 = icmp ne i8 %125, 0
  %127 = select i1 %.not76.i.i.i.i.i.i.i, i1 %126, i1 false
  br i1 %127, label %if.true.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2693.exit.i.i.i.i.i.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2693.exit.i.i.i.i.i.i": ; preds = %if.exit.i.i.i.i.i.i.i
  %common.ret.op.i92.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.i.i
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i92.i.i.i.i.i.i.i, 1
  %128 = and i8 %.fca.1.extract22.i.i.i.i.i.i.i, 1
  %.not77.i.i.i.i.i.i.i = icmp eq i8 %128, 0
  %129 = and i8 %.fca.1.extract.i.i.i.i.i.i.i, 1
  %.not203.i.i.i.i.i.i = icmp eq i8 %129, 0
  %.not.i.i.i.i1012.i.i = select i1 %.not77.i.i.i.i.i.i.i, i1 true, i1 %.not203.i.i.i.i.i.i
  br i1 %.not.i.i.i.i1012.i.i, label %imp_for.cond.preheader.i.i.i.i.i.i.i, label %if.true.i.i.i.i.i.i

if.true.i.i.i.i.i.i:                              ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2693.exit.i.i.i.i.i.i", %if.exit.i.i.i.i.i.i.i
  %130 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %131 = tail call ptr @seq_alloc_atomic(i64 %130)
  %.not179213.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 0
  br i1 %.not179213.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i"

imp_for.body.i.i.i.i.i.i.preheader:               ; preds = %if.true.i.i.i.i.i.i
  %min.iters.check514 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check514, label %imp_for.body.i.i.i.i.i.i.preheader1170, label %vector.ph515

vector.ph515:                                     ; preds = %imp_for.body.i.i.i.i.i.i.preheader
  %n.vec517 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph515
  %index521 = phi i64 [ 0, %vector.ph515 ], [ %index.next522, %vector.body520 ]
  %132 = or i64 %index521, 1
  %133 = getelementptr i64, ptr %2, i64 %index521
  %134 = getelementptr i64, ptr %2, i64 %132
  %135 = load i64, ptr %133, align 8
  %136 = load i64, ptr %134, align 8
  %137 = sitofp i64 %135 to double
  %138 = sitofp i64 %136 to double
  %139 = getelementptr double, ptr %1, i64 %index521
  %140 = getelementptr double, ptr %1, i64 %132
  %141 = load double, ptr %139, align 8
  %142 = load double, ptr %140, align 8
  %143 = fdiv double %137, %141
  %144 = fdiv double %138, %142
  %145 = getelementptr double, ptr %131, i64 %index521
  %146 = getelementptr double, ptr %131, i64 %132
  store double %143, ptr %145, align 8
  store double %144, ptr %146, align 8
  %index.next522 = add nuw i64 %index521, 2
  %147 = icmp eq i64 %index.next522, %n.vec517
  br i1 %147, label %middle.block512, label %vector.body520, !llvm.loop !32

middle.block512:                                  ; preds = %vector.body520
  %cmp.n519 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec517
  br i1 %cmp.n519, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i", label %imp_for.body.i.i.i.i.i.i.preheader1170

imp_for.body.i.i.i.i.i.i.preheader1170:           ; preds = %middle.block512, %imp_for.body.i.i.i.i.i.i.preheader
  %.ph1171 = phi i64 [ %n.vec517, %middle.block512 ], [ 0, %imp_for.body.i.i.i.i.i.i.preheader ]
  br label %imp_for.body.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i.i:             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2693.exit.i.i.i.i.i.i"
  %148 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %149 = tail call ptr @seq_alloc_atomic(i64 %148)
  %.not7.i.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i.i, label %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i_crit_edge"

"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i_crit_edge": ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i
  %.pre1017 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.pre1019 = extractvalue { i64 } %.pre1017, 0
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i"

for.body.lr.ph.i.i.i.i.i.i:                       ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i
  %tmp.i.not.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  %150 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.fca.0.extract.i.i184.i.i.i.i.i.i = extractvalue { i64 } %150, 0
  %151 = load i64, ptr %2, align 8
  %y.i.i192.us.us.i.i.i.i.i.i = sitofp i64 %151 to double
  %tmp.i.i.i193.us.us.i.i.i.i.i.i = fdiv double %y.i.i192.us.us.i.i.i.i.i.i, %tmp.i74.i.i1003.i.i
  store double %tmp.i.i.i193.us.us.i.i.i.i.i.i, ptr %149, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i", label %yield.new2.i284.peel.i.i.i.i.i.i

yield.new2.i284.peel.i.i.i.i.i.i:                 ; preds = %for.body.lr.ph.i.i.i.i.i.i
  %152 = add nsw i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -1
  %min.iters.check464 = icmp ugt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 2
  %ident.check460.not = icmp eq i64 %.fca.0.extract.i.i184.i.i.i.i.i.i, 1
  %or.cond1067 = and i1 %min.iters.check464, %ident.check460.not
  br i1 %or.cond1067, label %vector.ph465, label %yield.new2.i284.i.i.i.i.i.i.preheader

vector.ph465:                                     ; preds = %yield.new2.i284.peel.i.i.i.i.i.i
  %n.vec467 = and i64 %152, -2
  br label %vector.body471

vector.body471:                                   ; preds = %vector.body471, %vector.ph465
  %index472 = phi i64 [ 0, %vector.ph465 ], [ %153, %vector.body471 ]
  %offset.idx473 = or i64 %index472, 1
  %153 = add nuw i64 %index472, 2
  %154 = getelementptr i8, ptr %2, i64 %offset.idx473
  %155 = getelementptr i8, ptr %2, i64 %153
  %156 = getelementptr i8, ptr %1, i64 %offset.idx473
  %157 = getelementptr i8, ptr %1, i64 %153
  %158 = shl i64 %offset.idx473, 3
  %159 = shl i64 %153, 3
  %160 = getelementptr i8, ptr %149, i64 %158
  %161 = getelementptr i8, ptr %149, i64 %159
  %162 = load i64, ptr %154, align 4
  %163 = load i64, ptr %155, align 4
  %164 = sitofp i64 %162 to double
  %165 = sitofp i64 %163 to double
  %166 = load double, ptr %156, align 8
  %167 = load double, ptr %157, align 8
  %168 = fdiv double %164, %166
  %169 = fdiv double %165, %167
  store double %168, ptr %160, align 8
  store double %169, ptr %161, align 8
  %170 = icmp eq i64 %153, %n.vec467
  br i1 %170, label %middle.block462, label %vector.body471, !llvm.loop !33

middle.block462:                                  ; preds = %vector.body471
  %ind.end468 = or i64 %152, 1
  %cmp.n470 = icmp eq i64 %152, %n.vec467
  br i1 %cmp.n470, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i", label %yield.new2.i284.i.i.i.i.i.i.preheader

yield.new2.i284.i.i.i.i.i.i.preheader:            ; preds = %middle.block462, %yield.new2.i284.peel.i.i.i.i.i.i
  %.sroa.12.7.i.i.i.i.i.i.ph = phi i64 [ %ind.end468, %middle.block462 ], [ 1, %yield.new2.i284.peel.i.i.i.i.i.i ]
  br label %yield.new2.i284.i.i.i.i.i.i

imp_for.body.i.i.i.i.i.i:                         ; preds = %imp_for.body.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i.preheader1170
  %171 = phi i64 [ %177, %imp_for.body.i.i.i.i.i.i ], [ %.ph1171, %imp_for.body.i.i.i.i.i.i.preheader1170 ]
  %172 = getelementptr i64, ptr %2, i64 %171
  %173 = load i64, ptr %172, align 8
  %y.i.i.i.i.i.i.i.i = sitofp i64 %173 to double
  %174 = getelementptr double, ptr %1, i64 %171
  %175 = load double, ptr %174, align 8
  %tmp.i.i.i.i.i.i.i1014.i.i = fdiv double %y.i.i.i.i.i.i.i.i, %175
  %176 = getelementptr double, ptr %131, i64 %171
  store double %tmp.i.i.i.i.i.i.i1014.i.i, ptr %176, align 8
  %177 = add nuw nsw i64 %171, 1
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %177, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i", label %imp_for.body.i.i.i.i.i.i, !llvm.loop !34

yield.new2.i284.i.i.i.i.i.i:                      ; preds = %yield.new2.i284.i.i.i.i.i.i, %yield.new2.i284.i.i.i.i.i.i.preheader
  %.sroa.12.7.i.i.i.i.i.i = phi i64 [ %183, %yield.new2.i284.i.i.i.i.i.i ], [ %.sroa.12.7.i.i.i.i.i.i.ph, %yield.new2.i284.i.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i.i.i, %.fca.0.extract.i.i184.i.i.i.i.i.i
  %178 = getelementptr i8, ptr %2, i64 %tmp.i40.i.i.i.i.i.i.i.i
  %179 = getelementptr i8, ptr %1, i64 %tmp.i40.i.i.i.i.i.i.i.i
  %tmp.i.i.i191.i.i.i.i.i.i = shl i64 %.sroa.12.7.i.i.i.i.i.i, 3
  %180 = getelementptr i8, ptr %149, i64 %tmp.i.i.i191.i.i.i.i.i.i
  %181 = load i64, ptr %178, align 4
  %y.i.i192.i.i.i.i.i.i = sitofp i64 %181 to double
  %182 = load double, ptr %179, align 8
  %tmp.i.i.i193.i.i.i.i.i.i = fdiv double %y.i.i192.i.i.i.i.i.i, %182
  store double %tmp.i.i.i193.i.i.i.i.i.i, ptr %180, align 8
  %183 = add nuw nsw i64 %.sroa.12.7.i.i.i.i.i.i, 1
  %exitcond.not.i289.i.i.i.i.i.i = icmp eq i64 %183, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i289.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i", label %yield.new2.i284.i.i.i.i.i.i, !llvm.loop !35

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i": ; preds = %yield.new2.i284.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i, %middle.block462, %for.body.lr.ph.i.i.i.i.i.i, %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i_crit_edge", %middle.block512, %if.true.i.i.i.i.i.i
  %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi = phi i64 [ %.pre1019, %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i_crit_edge" ], [ 1, %middle.block462 ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %middle.block512 ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %if.true.i.i.i.i.i.i ], [ %.fca.0.extract.i.i184.i.i.i.i.i.i, %for.body.lr.ph.i.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i ], [ %.fca.0.extract.i.i184.i.i.i.i.i.i, %yield.new2.i284.i.i.i.i.i.i ]
  %.pn199.i.i.i.i.i.i = phi ptr [ %149, %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i_crit_edge" ], [ %149, %middle.block462 ], [ %131, %middle.block512 ], [ %131, %if.true.i.i.i.i.i.i ], [ %149, %for.body.lr.ph.i.i.i.i.i.i ], [ %131, %imp_for.body.i.i.i.i.i.i ], [ %149, %yield.new2.i284.i.i.i.i.i.i ]
  %switch.i.i.i.i.i.i1004.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 2
  %tmp.i82.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi, 8
  %or.cond.i.i.i.i.i.i.i.i = or i1 %switch.i.i.i.i.i.i1004.i.i, %tmp.i82.not.i.i.i.i.i.i.i.i.i
  %common.ret.op.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i.i57.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i.i.i, 1
  %184 = and i8 %.fca.0.extract.i.i.i.i.i57.i.i.i, 1
  %.not.i.i.i.i.i.i1006.i.i = icmp eq i8 %184, 0
  %185 = and i8 %.fca.1.extract.i.i.i.i.i.i.i.i, 1
  %.not8190.i.i.i.i.i.i.i = icmp eq i8 %185, 0
  %.not81.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i1006.i.i, i1 %.not8190.i.i.i.i.i.i.i, i1 false
  %.not7.i.i.i.i.i.i1007.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 0
  br i1 %.not81.i.i.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i.i.i.i, label %while.cond.preheader.i.i.i.i.i.i.i

while.cond.preheader.i.i.i.i.i.i.i:               ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i"
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %while.body.i.i.i.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i.thread"

while.body.i.i.i.i.i.i.i.preheader:               ; preds = %while.cond.preheader.i.i.i.i.i.i.i
  %min.iters.check525 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check525, label %while.body.i.i.i.i.i.i.i.preheader1166, label %vector.ph526

vector.ph526:                                     ; preds = %while.body.i.i.i.i.i.i.i.preheader
  %n.vec528 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph526
  %index532 = phi i64 [ 0, %vector.ph526 ], [ %index.next535, %vector.body531 ]
  %vec.phi533 = phi i64 [ 0, %vector.ph526 ], [ %191, %vector.body531 ]
  %vec.phi534 = phi i64 [ 0, %vector.ph526 ], [ %192, %vector.body531 ]
  %186 = or i64 %index532, 1
  %187 = getelementptr i64, ptr %2, i64 %index532
  %188 = getelementptr i64, ptr %2, i64 %186
  %189 = load i64, ptr %187, align 8
  %190 = load i64, ptr %188, align 8
  %191 = add i64 %189, %vec.phi533
  %192 = add i64 %190, %vec.phi534
  %index.next535 = add nuw i64 %index532, 2
  %193 = icmp eq i64 %index.next535, %n.vec528
  br i1 %193, label %middle.block523, label %vector.body531, !llvm.loop !36

middle.block523:                                  ; preds = %vector.body531
  %bin.rdx = add i64 %192, %191
  %cmp.n530 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec528
  br i1 %cmp.n530, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i", label %while.body.i.i.i.i.i.i.i.preheader1166

while.body.i.i.i.i.i.i.i.preheader1166:           ; preds = %middle.block523, %while.body.i.i.i.i.i.i.i.preheader
  %.unpack.i93.i.i.i.i.i.i.i.ph = phi i64 [ %bin.rdx, %middle.block523 ], [ 0, %while.body.i.i.i.i.i.i.i.preheader ]
  %.192.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec528, %middle.block523 ], [ 0, %while.body.i.i.i.i.i.i.i.preheader ]
  br label %while.body.i.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i.i.i:           ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2704.exit.i.i.i"
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %for.body.i.i.i.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i.thread"

for.body.i.i.i.i.i.i.i.preheader:                 ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i.i
  %min.iters.check541 = icmp ne i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  %ident.check538.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi, 1
  %or.cond736 = and i1 %min.iters.check541, %ident.check538.not
  br i1 %or.cond736, label %vector.ph542, label %for.body.i.i.i.i.i.i.i.preheader1163

vector.ph542:                                     ; preds = %for.body.i.i.i.i.i.i.i.preheader
  %n.vec544 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body547

vector.body547:                                   ; preds = %vector.body547, %vector.ph542
  %index548 = phi i64 [ 0, %vector.ph542 ], [ %index.next551, %vector.body547 ]
  %vec.phi549 = phi i64 [ 0, %vector.ph542 ], [ %199, %vector.body547 ]
  %vec.phi550 = phi i64 [ 0, %vector.ph542 ], [ %200, %vector.body547 ]
  %194 = or i64 %index548, 1
  %195 = getelementptr i8, ptr %2, i64 %index548
  %196 = getelementptr i8, ptr %2, i64 %194
  %197 = load i64, ptr %195, align 4
  %198 = load i64, ptr %196, align 4
  %199 = add i64 %197, %vec.phi549
  %200 = add i64 %198, %vec.phi550
  %index.next551 = add nuw i64 %index548, 2
  %201 = icmp eq i64 %index.next551, %n.vec544
  br i1 %201, label %middle.block539, label %vector.body547, !llvm.loop !37

middle.block539:                                  ; preds = %vector.body547
  %bin.rdx552 = add i64 %200, %199
  %cmp.n546 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec544
  br i1 %cmp.n546, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i", label %for.body.i.i.i.i.i.i.i.preheader1163

for.body.i.i.i.i.i.i.i.preheader1163:             ; preds = %middle.block539, %for.body.i.i.i.i.i.i.i.preheader
  %.sroa.6.1.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec544, %middle.block539 ], [ 0, %for.body.i.i.i.i.i.i.i.preheader ]
  %.unpack.i8895.i.i.i.i.i.i.i.ph = phi i64 [ %bin.rdx552, %middle.block539 ], [ 0, %for.body.i.i.i.i.i.i.i.preheader ]
  br label %for.body.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i:                         ; preds = %while.body.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.preheader1166
  %.unpack.i93.i.i.i.i.i.i.i = phi i64 [ %tmp.i.i.i.i.i.i58.i.i.i, %while.body.i.i.i.i.i.i.i ], [ %.unpack.i93.i.i.i.i.i.i.i.ph, %while.body.i.i.i.i.i.i.i.preheader1166 ]
  %.192.i.i.i.i.i.i.i = phi i64 [ %tmp.i85.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i ], [ %.192.i.i.i.i.i.i.i.ph, %while.body.i.i.i.i.i.i.i.preheader1166 ]
  %202 = getelementptr i64, ptr %2, i64 %.192.i.i.i.i.i.i.i
  %203 = load i64, ptr %202, align 8
  %tmp.i.i.i.i.i.i58.i.i.i = add i64 %203, %.unpack.i93.i.i.i.i.i.i.i
  %tmp.i85.i.i.i.i.i.i.i = add nuw nsw i64 %.192.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i1009.i.i = icmp eq i64 %tmp.i85.i.i.i.i.i.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i.i.i1009.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i", label %while.body.i.i.i.i.i.i.i, !llvm.loop !38

for.body.i.i.i.i.i.i.i:                           ; preds = %for.body.i.i.i.i.i.i.i, %for.body.i.i.i.i.i.i.i.preheader1163
  %.sroa.6.1.i.i.i.i.i.i.i = phi i64 [ %206, %for.body.i.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i.i.ph, %for.body.i.i.i.i.i.i.i.preheader1163 ]
  %.unpack.i8895.i.i.i.i.i.i.i = phi i64 [ %tmp.i.i89.i.i.i.i.i.i.i, %for.body.i.i.i.i.i.i.i ], [ %.unpack.i8895.i.i.i.i.i.i.i.ph, %for.body.i.i.i.i.i.i.i.preheader1163 ]
  %tmp.i.i.i.i.i.i.i.i1010.i.i = mul i64 %.sroa.6.1.i.i.i.i.i.i.i, %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi
  %204 = getelementptr i8, ptr %2, i64 %tmp.i.i.i.i.i.i.i.i1010.i.i
  %205 = load i64, ptr %204, align 4
  %tmp.i.i89.i.i.i.i.i.i.i = add i64 %205, %.unpack.i8895.i.i.i.i.i.i.i
  %206 = add nuw nsw i64 %.sroa.6.1.i.i.i.i.i.i.i, 1
  %exitcond.not.i108.i.i.i.i.i.i.i = icmp eq i64 %206, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i108.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i", label %for.body.i.i.i.i.i.i.i, !llvm.loop !39

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i.thread": ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i.i, %while.cond.preheader.i.i.i.i.i.i.i
  %207 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %208 = tail call ptr @seq_alloc_atomic(i64 %207)
  br label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2809.exit.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i": ; preds = %for.body.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i, %middle.block539, %middle.block523
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %bin.rdx552, %middle.block539 ], [ %bin.rdx, %middle.block523 ], [ %tmp.i.i89.i.i.i.i.i.i.i, %for.body.i.i.i.i.i.i.i ], [ %tmp.i.i.i.i.i.i58.i.i.i, %while.body.i.i.i.i.i.i.i ]
  %y.i.i.i.i.i48.i.i.i = sitofp i64 %.sroa.0.0.i.i.i.i.i.i.i to double
  %209 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %210 = tail call ptr @seq_alloc_atomic(i64 %209)
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %imp_for.body.i.i.i51.i.i.i.preheader, label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2809.exit.i"

imp_for.body.i.i.i51.i.i.i.preheader:             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i"
  %min.iters.check556 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check556, label %imp_for.body.i.i.i51.i.i.i.preheader1161, label %vector.ph557

vector.ph557:                                     ; preds = %imp_for.body.i.i.i51.i.i.i.preheader
  %n.vec559 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph557
  %index563 = phi i64 [ 0, %vector.ph557 ], [ %index.next564, %vector.body562 ]
  %211 = or i64 %index563, 1
  %212 = getelementptr double, ptr %.pn199.i.i.i.i.i.i, i64 %index563
  %213 = getelementptr double, ptr %.pn199.i.i.i.i.i.i, i64 %211
  %214 = load double, ptr %212, align 8
  %215 = load double, ptr %213, align 8
  %216 = fdiv double %214, %y.i.i.i.i.i48.i.i.i
  %217 = fdiv double %215, %y.i.i.i.i.i48.i.i.i
  %218 = getelementptr double, ptr %210, i64 %index563
  %219 = getelementptr double, ptr %210, i64 %211
  store double %216, ptr %218, align 8
  store double %217, ptr %219, align 8
  %index.next564 = add nuw i64 %index563, 2
  %220 = icmp eq i64 %index.next564, %n.vec559
  br i1 %220, label %middle.block554, label %vector.body562, !llvm.loop !40

middle.block554:                                  ; preds = %vector.body562
  %cmp.n561 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec559
  br i1 %cmp.n561, label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2809.exit.i", label %imp_for.body.i.i.i51.i.i.i.preheader1161

imp_for.body.i.i.i51.i.i.i.preheader1161:         ; preds = %middle.block554, %imp_for.body.i.i.i51.i.i.i.preheader
  %.ph1162 = phi i64 [ %n.vec559, %middle.block554 ], [ 0, %imp_for.body.i.i.i51.i.i.i.preheader ]
  br label %imp_for.body.i.i.i51.i.i.i

imp_for.body.i.i.i51.i.i.i:                       ; preds = %imp_for.body.i.i.i51.i.i.i, %imp_for.body.i.i.i51.i.i.i.preheader1161
  %221 = phi i64 [ %225, %imp_for.body.i.i.i51.i.i.i ], [ %.ph1162, %imp_for.body.i.i.i51.i.i.i.preheader1161 ]
  %222 = getelementptr double, ptr %.pn199.i.i.i.i.i.i, i64 %221
  %223 = load double, ptr %222, align 8
  %tmp.i.i.i.i.i.i52.i.i.i = fdiv double %223, %y.i.i.i.i.i48.i.i.i
  %224 = getelementptr double, ptr %210, i64 %221
  store double %tmp.i.i.i.i.i.i52.i.i.i, ptr %224, align 8
  %225 = add nuw nsw i64 %221, 1
  %exitcond.not.i.i.i53.i.i.i = icmp eq i64 %225, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i53.i.i.i, label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2809.exit.i", label %imp_for.body.i.i.i51.i.i.i, !llvm.loop !41

if.true.i.i:                                      ; preds = %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2198.exit.i.i"
  %226 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2243"({ { i64 }, { i64 }, ptr } %32, { { i64 }, { i64 }, ptr } %62)
  br label %if.exit.i.i

if.exit.i.i:                                      ; preds = %if.true.i.i, %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2198.exit.i.i"
  %.pn.i.i = phi { { i64 }, { i64 }, ptr } [ %226, %if.true.i.i ], [ %32, %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2198.exit.i.i" ]
  %227 = extractvalue { { i64 }, { i64 }, ptr } %.pn.i.i, 0
  %.fca.0.extract38.i.i.i.i = extractvalue { i64 } %227, 0
  %228 = shl i64 %.fca.0.extract38.i.i.i.i, 3
  %229 = tail call ptr @seq_alloc_atomic(i64 %228)
  %.not7.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i.i.i, 0
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.thread.i.i"

for.body.lr.ph.i.i.i:                             ; preds = %if.exit.i.i
  %230 = extractvalue { { i64 }, { i64 }, ptr } %.pn.i.i, 1
  %.fca.0.extract.i.i.i1015.i.i = extractvalue { i64 } %230, 0
  %.fca.2.extract.i.i.i1016.i.i = extractvalue { { i64 }, { i64 }, ptr } %.pn.i.i, 2
  br label %yield.new2.i155.i.i.i

yield.new2.i155.i.i.i:                            ; preds = %yield.new2.i155.i.i.i, %for.body.lr.ph.i.i.i
  %.sroa.6.1.i.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %234, %yield.new2.i155.i.i.i ]
  %tmp.i.i.i.i1017.i.i = mul i64 %.sroa.6.1.i.i.i, %.fca.0.extract.i.i.i1015.i.i
  %231 = getelementptr i8, ptr %.fca.2.extract.i.i.i1016.i.i, i64 %tmp.i.i.i.i1017.i.i
  %tmp.i.i.i136.i.i.i = shl i64 %.sroa.6.1.i.i.i, 3
  %232 = getelementptr i8, ptr %229, i64 %tmp.i.i.i136.i.i.i
  %233 = load i64, ptr %231, align 4
  %y.i.i.i.i.i = sitofp i64 %233 to double
  store double %y.i.i.i.i.i, ptr %232, align 8
  %234 = add nuw nsw i64 %.sroa.6.1.i.i.i, 1
  %exitcond.not.i160.i.i.i = icmp eq i64 %234, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i160.i.i.i, label %for.body.i.i.preheader.i84.i, label %yield.new2.i155.i.i.i

for.body.i.i.preheader.i84.i:                     ; preds = %yield.new2.i155.i.i.i
  %235 = tail call ptr @seq_alloc_atomic(i64 %228)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %235, ptr nonnull align 8 %229, i64 %228, i1 false)
  %236 = tail call ptr @seq_alloc_atomic(i64 %228)
  %min.iters.check424 = icmp ult i64 %.fca.0.extract38.i.i.i.i, 2
  br i1 %min.iters.check424, label %imp_for.body.i.i.i.i1021.i.i.preheader, label %vector.ph425

vector.ph425:                                     ; preds = %for.body.i.i.preheader.i84.i
  %n.vec427 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph425
  %index431 = phi i64 [ 0, %vector.ph425 ], [ %index.next432, %vector.body430 ]
  %237 = or i64 %index431, 1
  %238 = getelementptr double, ptr %235, i64 %index431
  %239 = getelementptr double, ptr %235, i64 %237
  %240 = load double, ptr %238, align 8
  %241 = load double, ptr %239, align 8
  %242 = fsub double %240, %.0.i.i.i
  %243 = fsub double %241, %.0.i.i.i
  %244 = getelementptr double, ptr %236, i64 %index431
  %245 = getelementptr double, ptr %236, i64 %237
  store double %242, ptr %244, align 8
  store double %243, ptr %245, align 8
  %index.next432 = add nuw nsw i64 %index431, 2
  %246 = icmp eq i64 %index.next432, %n.vec427
  br i1 %246, label %middle.block422, label %vector.body430, !llvm.loop !42

middle.block422:                                  ; preds = %vector.body430
  %cmp.n429 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec427
  br i1 %cmp.n429, label %imp_for.cond.preheader.i.i.i608.i.i, label %imp_for.body.i.i.i.i1021.i.i.preheader

imp_for.body.i.i.i.i1021.i.i.preheader:           ; preds = %middle.block422, %for.body.i.i.preheader.i84.i
  %.ph1208 = phi i64 [ %n.vec427, %middle.block422 ], [ 0, %for.body.i.i.preheader.i84.i ]
  br label %imp_for.body.i.i.i.i1021.i.i

imp_for.body.i.i.i.i1021.i.i:                     ; preds = %imp_for.body.i.i.i.i1021.i.i, %imp_for.body.i.i.i.i1021.i.i.preheader
  %247 = phi i64 [ %251, %imp_for.body.i.i.i.i1021.i.i ], [ %.ph1208, %imp_for.body.i.i.i.i1021.i.i.preheader ]
  %248 = getelementptr double, ptr %235, i64 %247
  %249 = load double, ptr %248, align 8
  %tmp.i.i.i.i.i.i.i1022.i.i = fsub double %249, %.0.i.i.i
  %250 = getelementptr double, ptr %236, i64 %247
  store double %tmp.i.i.i.i.i.i.i1022.i.i, ptr %250, align 8
  %251 = add nuw nsw i64 %247, 1
  %exitcond.not.i.i.i.i1023.i.i = icmp eq i64 %251, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i.i1023.i.i, label %imp_for.cond.preheader.i.i.i608.i.i, label %imp_for.body.i.i.i.i1021.i.i, !llvm.loop !43

imp_for.cond.preheader.i.i.i608.i.i:              ; preds = %imp_for.body.i.i.i.i1021.i.i, %middle.block422
  %252 = tail call ptr @seq_alloc_atomic(i64 %228)
  br i1 %min.iters.check424, label %imp_for.body.i.i.i610.i.i.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %imp_for.cond.preheader.i.i.i608.i.i
  %n.vec416 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph414
  %index420 = phi i64 [ 0, %vector.ph414 ], [ %index.next421, %vector.body419 ]
  %253 = or i64 %index420, 1
  %254 = getelementptr double, ptr %236, i64 %index420
  %255 = getelementptr double, ptr %236, i64 %253
  %256 = load double, ptr %254, align 8
  %257 = load double, ptr %255, align 8
  %258 = fdiv double %256, %tmp.i89.i.i.i.i.i.i
  %259 = fdiv double %257, %tmp.i89.i.i.i.i.i.i
  %260 = getelementptr double, ptr %252, i64 %index420
  %261 = getelementptr double, ptr %252, i64 %253
  store double %258, ptr %260, align 8
  store double %259, ptr %261, align 8
  %index.next421 = add nuw i64 %index420, 2
  %262 = icmp eq i64 %index.next421, %n.vec416
  br i1 %262, label %middle.block411, label %vector.body419, !llvm.loop !44

middle.block411:                                  ; preds = %vector.body419
  %cmp.n418 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec416
  br i1 %cmp.n418, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i.i", label %imp_for.body.i.i.i610.i.i.preheader

imp_for.body.i.i.i610.i.i.preheader:              ; preds = %middle.block411, %imp_for.cond.preheader.i.i.i608.i.i
  %.ph1207 = phi i64 [ %n.vec416, %middle.block411 ], [ 0, %imp_for.cond.preheader.i.i.i608.i.i ]
  br label %imp_for.body.i.i.i610.i.i

imp_for.body.i.i.i610.i.i:                        ; preds = %imp_for.body.i.i.i610.i.i, %imp_for.body.i.i.i610.i.i.preheader
  %263 = phi i64 [ %267, %imp_for.body.i.i.i610.i.i ], [ %.ph1207, %imp_for.body.i.i.i610.i.i.preheader ]
  %264 = getelementptr double, ptr %236, i64 %263
  %265 = load double, ptr %264, align 8
  %tmp.i.i.i.i.i.i611.i.i = fdiv double %265, %tmp.i89.i.i.i.i.i.i
  %266 = getelementptr double, ptr %252, i64 %263
  store double %tmp.i.i.i.i.i.i611.i.i, ptr %266, align 8
  %267 = add nuw nsw i64 %263, 1
  %exitcond.not.i.i.i612.i.i = icmp eq i64 %267, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i612.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i.i", label %imp_for.body.i.i.i610.i.i, !llvm.loop !45

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i.i": ; preds = %imp_for.body.i.i.i610.i.i, %middle.block411
  %268 = tail call ptr @seq_alloc_atomic(i64 %228)
  br i1 %min.iters.check424, label %imp_for.body.i.i.i625.i.i.preheader, label %vector.ph403

vector.ph403:                                     ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i.i"
  %n.vec405 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph403
  %index409 = phi i64 [ 0, %vector.ph403 ], [ %index.next410, %vector.body408 ]
  %269 = or i64 %index409, 1
  %270 = getelementptr double, ptr %252, i64 %index409
  %271 = getelementptr double, ptr %252, i64 %269
  %272 = load double, ptr %270, align 8
  %273 = load double, ptr %271, align 8
  %274 = fmul double %272, 3.000000e+00
  %275 = fmul double %273, 3.000000e+00
  %276 = getelementptr double, ptr %268, i64 %index409
  %277 = getelementptr double, ptr %268, i64 %269
  store double %274, ptr %276, align 8
  store double %275, ptr %277, align 8
  %index.next410 = add nuw i64 %index409, 2
  %278 = icmp eq i64 %index.next410, %n.vec405
  br i1 %278, label %middle.block400, label %vector.body408, !llvm.loop !46

middle.block400:                                  ; preds = %vector.body408
  %cmp.n407 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec405
  br i1 %cmp.n407, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.i.i", label %imp_for.body.i.i.i625.i.i.preheader

imp_for.body.i.i.i625.i.i.preheader:              ; preds = %middle.block400, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i.i"
  %.ph1206 = phi i64 [ %n.vec405, %middle.block400 ], [ 0, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i.i" ]
  br label %imp_for.body.i.i.i625.i.i

imp_for.body.i.i.i625.i.i:                        ; preds = %imp_for.body.i.i.i625.i.i, %imp_for.body.i.i.i625.i.i.preheader
  %279 = phi i64 [ %283, %imp_for.body.i.i.i625.i.i ], [ %.ph1206, %imp_for.body.i.i.i625.i.i.preheader ]
  %280 = getelementptr double, ptr %252, i64 %279
  %281 = load double, ptr %280, align 8
  %tmp.i.i.i.i.i.i626.i.i = fmul double %281, 3.000000e+00
  %282 = getelementptr double, ptr %268, i64 %279
  store double %tmp.i.i.i.i.i.i626.i.i, ptr %282, align 8
  %283 = add nuw nsw i64 %279, 1
  %exitcond.not.i.i.i627.i.i = icmp eq i64 %283, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i627.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.i.i", label %imp_for.body.i.i.i625.i.i, !llvm.loop !47

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.thread.i.i": ; preds = %if.exit.i.i
  %284 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %227, 0
  %285 = insertvalue { { i64 }, { i64 }, ptr } %284, { i64 } { i64 8 }, 1
  %.fr10981204.i.i = freeze { { i64 }, { i64 }, ptr } %285
  %286 = tail call ptr @seq_alloc_atomic(i64 %228)
  %287 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract38.i.i.i.i)
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.i.i": ; preds = %imp_for.body.i.i.i625.i.i, %middle.block400
  %288 = tail call ptr @seq_alloc_atomic(i64 %228)
  br i1 %min.iters.check424, label %yield.new2.i155.i1027.i.i.preheader, label %vector.ph392

vector.ph392:                                     ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.i.i"
  %n.vec394 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph392
  %index398 = phi i64 [ 0, %vector.ph392 ], [ %index.next399, %vector.body397 ]
  %289 = shl i64 %index398, 3
  %290 = or i64 %289, 8
  %291 = getelementptr i8, ptr %268, i64 %289
  %292 = getelementptr i8, ptr %268, i64 %290
  %293 = getelementptr i8, ptr %288, i64 %289
  %294 = getelementptr i8, ptr %288, i64 %290
  %295 = load double, ptr %291, align 8
  %296 = load double, ptr %292, align 8
  %297 = fptosi double %295 to i64
  %298 = fptosi double %296 to i64
  store i64 %297, ptr %293, align 4
  store i64 %298, ptr %294, align 4
  %index.next399 = add nuw i64 %index398, 2
  %299 = icmp eq i64 %index.next399, %n.vec394
  br i1 %299, label %middle.block389, label %vector.body397, !llvm.loop !48

middle.block389:                                  ; preds = %vector.body397
  %cmp.n396 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec394
  br i1 %cmp.n396, label %imp_for.cond.preheader.i.i.i639.i.i, label %yield.new2.i155.i1027.i.i.preheader

yield.new2.i155.i1027.i.i.preheader:              ; preds = %middle.block389, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.i.i"
  %.sroa.6.1.i1028.i.i.ph = phi i64 [ %n.vec394, %middle.block389 ], [ 0, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.i.i" ]
  br label %yield.new2.i155.i1027.i.i

yield.new2.i155.i1027.i.i:                        ; preds = %yield.new2.i155.i1027.i.i, %yield.new2.i155.i1027.i.i.preheader
  %.sroa.6.1.i1028.i.i = phi i64 [ %304, %yield.new2.i155.i1027.i.i ], [ %.sroa.6.1.i1028.i.i.ph, %yield.new2.i155.i1027.i.i.preheader ]
  %tmp.i.i.i.i1029.i.i = shl i64 %.sroa.6.1.i1028.i.i, 3
  %300 = getelementptr i8, ptr %268, i64 %tmp.i.i.i.i1029.i.i
  %301 = getelementptr i8, ptr %288, i64 %tmp.i.i.i.i1029.i.i
  %302 = load double, ptr %300, align 8
  %303 = fptosi double %302 to i64
  store i64 %303, ptr %301, align 4
  %304 = add nuw nsw i64 %.sroa.6.1.i1028.i.i, 1
  %exitcond.not.i160.i1031.i.i = icmp eq i64 %304, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i160.i1031.i.i, label %imp_for.cond.preheader.i.i.i639.i.i, label %yield.new2.i155.i1027.i.i, !llvm.loop !49

imp_for.cond.preheader.i.i.i639.i.i:              ; preds = %yield.new2.i155.i1027.i.i, %middle.block389
  %305 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract38.i.i.i.i)
  br i1 %min.iters.check424, label %imp_for.body.i.i.i641.i.i.preheader, label %vector.ph381

vector.ph381:                                     ; preds = %imp_for.cond.preheader.i.i.i639.i.i
  %n.vec383 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %vector.ph381
  %index387 = phi i64 [ 0, %vector.ph381 ], [ %index.next388, %vector.body386 ]
  %306 = or i64 %index387, 1
  %307 = getelementptr i64, ptr %288, i64 %index387
  %308 = getelementptr i64, ptr %288, i64 %306
  %309 = load i64, ptr %307, align 4
  %310 = load i64, ptr %308, align 4
  %311 = icmp eq i64 %309, 3
  %312 = icmp eq i64 %310, 3
  %313 = zext i1 %311 to i8
  %314 = zext i1 %312 to i8
  %315 = getelementptr i8, ptr %305, i64 %index387
  %316 = getelementptr i8, ptr %305, i64 %306
  store i8 %313, ptr %315, align 1
  store i8 %314, ptr %316, align 1
  %index.next388 = add nuw i64 %index387, 2
  %317 = icmp eq i64 %index.next388, %n.vec383
  br i1 %317, label %middle.block378, label %vector.body386, !llvm.loop !50

middle.block378:                                  ; preds = %vector.body386
  %cmp.n385 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec383
  br i1 %cmp.n385, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i", label %imp_for.body.i.i.i641.i.i.preheader

imp_for.body.i.i.i641.i.i.preheader:              ; preds = %middle.block378, %imp_for.cond.preheader.i.i.i639.i.i
  %.ph1205 = phi i64 [ %n.vec383, %middle.block378 ], [ 0, %imp_for.cond.preheader.i.i.i639.i.i ]
  br label %imp_for.body.i.i.i641.i.i

imp_for.body.i.i.i641.i.i:                        ; preds = %imp_for.body.i.i.i641.i.i, %imp_for.body.i.i.i641.i.i.preheader
  %318 = phi i64 [ %322, %imp_for.body.i.i.i641.i.i ], [ %.ph1205, %imp_for.body.i.i.i641.i.i.preheader ]
  %319 = getelementptr i64, ptr %288, i64 %318
  %320 = load i64, ptr %319, align 4
  %tmp.i.i.i.i.i.i642.i.i = icmp eq i64 %320, 3
  %res.i.i.i.i.i.i643.i.i = zext i1 %tmp.i.i.i.i.i.i642.i.i to i8
  %321 = getelementptr i8, ptr %305, i64 %318
  store i8 %res.i.i.i.i.i.i643.i.i, ptr %321, align 1
  %322 = add nuw nsw i64 %318, 1
  %exitcond.not.i.i.i644.i.i = icmp eq i64 %322, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i644.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i", label %imp_for.body.i.i.i641.i.i, !llvm.loop !51

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i": ; preds = %imp_for.body.i.i.i641.i.i, %middle.block378
  %323 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %227, 0
  %324 = insertvalue { { i64 }, { i64 }, ptr } %323, { i64 } { i64 8 }, 1
  %.fr1098.i.i = freeze { { i64 }, { i64 }, ptr } %324
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.i.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.i.i": ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i", %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.thread.i.i"
  %.fr10981205.i.i = phi { { i64 }, { i64 }, ptr } [ %.fr10981204.i.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.thread.i.i" ], [ %.fr1098.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i" ]
  %325 = phi { { i64 }, { i64 }, ptr } [ %284, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.thread.i.i" ], [ %323, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i" ]
  %326 = phi ptr [ %287, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.thread.i.i" ], [ %305, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i" ]
  %327 = phi ptr [ %286, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2341.exit.thread.i.i" ], [ %288, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.loopexit.i.i" ]
  %328 = insertvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, ptr %327, 2
  %329 = insertvalue { { i64 }, { i64 }, ptr } %325, { i64 } { i64 1 }, 1
  %.fr1101.i.i = freeze { { i64 }, { i64 }, ptr } %329
  %330 = insertvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, ptr %326, 2
  %331 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2243"({ { i64 }, { i64 }, ptr } %328, { { i64 }, { i64 }, ptr } %330)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.18.i.i.i.i.i)
  %.fca.2.extract.i.i.i652.i.i = extractvalue { { i64 }, { i64 }, ptr } %331, 2
  %332 = extractvalue { { i64 }, { i64 }, ptr } %331, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i = extractvalue { i64 } %332, 0
  %switch.i.i.i.i654.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, 2
  %333 = extractvalue { { i64 }, { i64 }, ptr } %331, 1
  %.fca.0.extract.i.i.i.i.i655.i.i = extractvalue { i64 } %333, 0
  %tmp.i82.not.i.i.i.i.i656.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i655.i.i, 8
  %or.cond.i.i.i.i.i.i = select i1 %switch.i.i.i.i654.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i656.i.i
  %common.ret.op.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i657.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i658.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i, 1
  %334 = and i8 %.fca.0.extract.i.i.i.i657.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %334, 0
  %335 = and i8 %.fca.1.extract.i.i.i.i658.i.i, 1
  %.not73.i.i.i.i.i = icmp eq i8 %335, 0
  %.not.i.i.i659.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not73.i.i.i.i.i, i1 false
  %.not7.i.i.i.i660.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, 0
  br i1 %.not.i.i.i659.i.i, label %imp_for.cond.preheader.i.i.i.i666.i.i, label %imp_for.cond.preheader.i.i.i661.i.i

imp_for.cond.preheader.i.i.i661.i.i:              ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.i.i"
  br i1 %.not7.i.i.i.i660.i.i, label %imp_for.body.i.i.i663.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i"

imp_for.body.i.i.i663.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i661.i.i
  %min.iters.check369 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, 1
  br i1 %min.iters.check369, label %imp_for.body.i.i.i663.i.i.preheader1202, label %vector.ph370

vector.ph370:                                     ; preds = %imp_for.body.i.i.i663.i.i.preheader
  %n.vec372 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, -2
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph370
  %index376 = phi i64 [ 0, %vector.ph370 ], [ %index.next377, %vector.body375 ]
  %336 = or i64 %index376, 1
  %337 = getelementptr i64, ptr %.fca.2.extract.i.i.i652.i.i, i64 %index376
  %338 = getelementptr i64, ptr %.fca.2.extract.i.i.i652.i.i, i64 %336
  %339 = load i64, ptr %337, align 4
  %340 = load i64, ptr %338, align 4
  %341 = add i64 %339, -1
  %342 = add i64 %340, -1
  store i64 %341, ptr %337, align 4
  store i64 %342, ptr %338, align 4
  %index.next377 = add nuw i64 %index376, 2
  %343 = icmp eq i64 %index.next377, %n.vec372
  br i1 %343, label %middle.block367, label %vector.body375, !llvm.loop !52

middle.block367:                                  ; preds = %vector.body375
  %cmp.n374 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, %n.vec372
  br i1 %cmp.n374, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i", label %imp_for.body.i.i.i663.i.i.preheader1202

imp_for.body.i.i.i663.i.i.preheader1202:          ; preds = %middle.block367, %imp_for.body.i.i.i663.i.i.preheader
  %.ph1203 = phi i64 [ %n.vec372, %middle.block367 ], [ 0, %imp_for.body.i.i.i663.i.i.preheader ]
  br label %imp_for.body.i.i.i663.i.i

imp_for.cond.preheader.i.i.i.i666.i.i:            ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2372.exit.i.i"
  br i1 %.not7.i.i.i.i660.i.i, label %for.body.i.i.i668.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i"

imp_for.body.i.i.i663.i.i:                        ; preds = %imp_for.body.i.i.i663.i.i, %imp_for.body.i.i.i663.i.i.preheader1202
  %344 = phi i64 [ %347, %imp_for.body.i.i.i663.i.i ], [ %.ph1203, %imp_for.body.i.i.i663.i.i.preheader1202 ]
  %345 = getelementptr i64, ptr %.fca.2.extract.i.i.i652.i.i, i64 %344
  %346 = load i64, ptr %345, align 4
  %tmp.i.i.i.i.i.i664.i.i = add i64 %346, -1
  store i64 %tmp.i.i.i.i.i.i664.i.i, ptr %345, align 4
  %347 = add nuw nsw i64 %344, 1
  %exitcond.not.i.i.i665.i.i = icmp eq i64 %347, %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i
  br i1 %exitcond.not.i.i.i665.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i", label %imp_for.body.i.i.i663.i.i, !llvm.loop !53

for.body.i.i.i668.i.i:                            ; preds = %for.body.i.i.i668.i.i.backedge, %imp_for.cond.preheader.i.i.i.i666.i.i
  %.sroa.6.1.i.i.i669.i.i = phi i64 [ %.sroa.6.1.i.i.i669.i.i.be, %for.body.i.i.i668.i.i.backedge ], [ 0, %imp_for.cond.preheader.i.i.i.i666.i.i ]
  store i2 1, ptr %.sroa.18.i.i.i.i.i, align 8
  %tmp.i.i.i71.i.i.i.i.i = mul i64 %.sroa.6.1.i.i.i669.i.i, %.fca.0.extract.i.i.i.i.i655.i.i
  %348 = getelementptr i8, ptr %.fca.2.extract.i.i.i652.i.i, i64 %tmp.i.i.i71.i.i.i.i.i
  %349 = load i64, ptr %348, align 4
  %tmp.i.i.i72.i.i.i.i.i = add i64 %349, -1
  store i64 %tmp.i.i.i72.i.i.i.i.i, ptr %348, align 4
  %.sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i.i.i = load i2, ptr %.sroa.18.i.i.i.i.i, align 8, !alias.scope !54
  %switch.i79.i.i.i.i.i = icmp eq i2 %.sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i.i.i, 0
  br i1 %switch.i79.i.i.i.i.i, label %for.body.i.i.i668.i.i.backedge, label %yield.new2.i80.i.i.i.i.i

yield.new2.i80.i.i.i.i.i:                         ; preds = %for.body.i.i.i668.i.i
  %350 = add nuw nsw i64 %.sroa.6.1.i.i.i669.i.i, 1
  %exitcond.not.i85.i.i.i.i.i = icmp eq i64 %350, %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i
  br i1 %exitcond.not.i85.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i", label %for.body.i.i.i668.i.i.backedge

for.body.i.i.i668.i.i.backedge:                   ; preds = %yield.new2.i80.i.i.i.i.i, %for.body.i.i.i668.i.i
  %.sroa.6.1.i.i.i669.i.i.be = phi i64 [ %350, %yield.new2.i80.i.i.i.i.i ], [ 0, %for.body.i.i.i668.i.i ]
  br label %for.body.i.i.i668.i.i

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i": ; preds = %yield.new2.i80.i.i.i.i.i, %imp_for.body.i.i.i663.i.i, %imp_for.cond.preheader.i.i.i.i666.i.i, %middle.block367, %imp_for.cond.preheader.i.i.i661.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.18.i.i.i.i.i)
  tail call fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2401"({ { i64 }, { i64 }, ptr } %328, { { i64 }, { i64 }, ptr } %330, { { i64 }, { i64 }, ptr } %331)
  %351 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 0
  %352 = extractvalue { i64 } %351, 0
  %.not.i.i.i.i.i.i.i = icmp sgt i64 %352, -1
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %353 = shl i64 %352, 3
  %354 = tail call ptr @seq_alloc_atomic(i64 %353)
  %.not7.i.not.i.i.i.i.i.i = icmp eq i64 %352, 0
  br i1 %.not7.i.not.i.i.i.i.i.i, label %if.exit.i.i.i.i681.i.i, label %for.body.lr.ph.split.split.i.i.i.i.i.i

for.body.lr.ph.split.split.i.i.i.i.i.i:           ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i"
  %355 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i1033.i.i = extractvalue { i64 } %355, 0
  %tmp.i.not.i.i.i.i.i.i.i.i = icmp eq i64 %352, 1
  %356 = load i64, ptr %327, align 4
  %357 = lshr i64 %356, 61
  %tmp.i12.i.i.i.i.us413.peel.i.i.i.i.i.i = and i64 %357, 4
  %spec.select.i.i.i.i.us414.peel.i.i.i.i.i.i = add i64 %tmp.i12.i.i.i.i.us413.peel.i.i.i.i.i.i, %356
  %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i.i.i = icmp ult i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i.i.i)
  %tmp.i.i92.i.i.us417.peel.i.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i.i.i, 3
  %358 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.us417.peel.i.i.i.i.i.i
  %359 = load double, ptr %358, align 8
  store double %359, ptr %354, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i.i, label %if.exit.i.i.i.i681.i.i, label %yield.new2.i372.i.i.i.i.i.i.preheader

yield.new2.i372.i.i.i.i.i.i.preheader:            ; preds = %for.body.lr.ph.split.split.i.i.i.i.i.i
  %360 = add nsw i64 %352, -1
  %min.iters.check1121 = icmp ugt i64 %360, 1
  %ident.check1118.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i1033.i.i, 1
  %or.cond1144 = and i1 %min.iters.check1121, %ident.check1118.not
  br i1 %or.cond1144, label %vector.ph1122, label %yield.new2.i372.i.i.i.i.i.i.preheader1201

vector.ph1122:                                    ; preds = %yield.new2.i372.i.i.i.i.i.i.preheader
  %n.vec1124 = and i64 %360, -2
  %ind.end1125 = or i64 %360, 1
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %vector.ph1122
  %index1129 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1131, %vector.body1128 ]
  %offset.idx1130 = or i64 %index1129, 1
  %361 = add i64 %index1129, 2
  %362 = getelementptr i8, ptr %327, i64 %offset.idx1130
  %363 = getelementptr i8, ptr %327, i64 %361
  %364 = load i64, ptr %362, align 4
  %365 = load i64, ptr %363, align 4
  %366 = lshr i64 %364, 61
  %367 = lshr i64 %365, 61
  %368 = and i64 %366, 4
  %369 = and i64 %367, 4
  %370 = add i64 %368, %364
  %371 = add i64 %369, %365
  %372 = icmp ult i64 %370, 4
  %373 = icmp ult i64 %371, 4
  tail call void @llvm.assume(i1 %372)
  tail call void @llvm.assume(i1 %373)
  %374 = shl nuw nsw i64 %370, 3
  %375 = shl nuw nsw i64 %371, 3
  %376 = getelementptr i8, ptr %3, i64 %374
  %377 = getelementptr i8, ptr %3, i64 %375
  %378 = shl i64 %offset.idx1130, 3
  %379 = shl i64 %361, 3
  %380 = getelementptr i8, ptr %354, i64 %378
  %381 = getelementptr i8, ptr %354, i64 %379
  %382 = load double, ptr %376, align 8
  %383 = load double, ptr %377, align 8
  store double %382, ptr %380, align 8
  store double %383, ptr %381, align 8
  %index.next1131 = add nuw i64 %index1129, 2
  %384 = icmp eq i64 %index.next1131, %n.vec1124
  br i1 %384, label %middle.block1119, label %vector.body1128, !llvm.loop !57

middle.block1119:                                 ; preds = %vector.body1128
  %cmp.n1127 = icmp eq i64 %360, %n.vec1124
  br i1 %cmp.n1127, label %if.exit.i.i.i.i681.i.i, label %yield.new2.i372.i.i.i.i.i.i.preheader1201

yield.new2.i372.i.i.i.i.i.i.preheader1201:        ; preds = %middle.block1119, %yield.new2.i372.i.i.i.i.i.i.preheader
  %.sroa.6390.1.i.i.i.i.i.i.ph = phi i64 [ 1, %yield.new2.i372.i.i.i.i.i.i.preheader ], [ %ind.end1125, %middle.block1119 ]
  br label %yield.new2.i372.i.i.i.i.i.i

yield.new2.i372.i.i.i.i.i.i:                      ; preds = %yield.new2.i372.i.i.i.i.i.i, %yield.new2.i372.i.i.i.i.i.i.preheader1201
  %.sroa.6390.1.i.i.i.i.i.i = phi i64 [ %391, %yield.new2.i372.i.i.i.i.i.i ], [ %.sroa.6390.1.i.i.i.i.i.i.ph, %yield.new2.i372.i.i.i.i.i.i.preheader1201 ]
  %tmp.i40.i.i.i.i.i.i1036.i.i = mul i64 %.sroa.6390.1.i.i.i.i.i.i, %.fca.0.extract.i.i.i.i.i.i1033.i.i
  %385 = getelementptr i8, ptr %327, i64 %tmp.i40.i.i.i.i.i.i1036.i.i
  %386 = load i64, ptr %385, align 4
  %387 = lshr i64 %386, 61
  %tmp.i12.i.i.i.i.i.i.i.i.i.i = and i64 %387, 4
  %spec.select.i.i.i.i.i.i.i.i.i.i = add i64 %tmp.i12.i.i.i.i.i.i.i.i.i.i, %386
  %tmp.i15.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.i.i.i.i.i.i)
  %tmp.i.i92.i.i.i.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  %388 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.i.i.i.i.i.i
  %tmp.i.i139.i.i.i.i.i.i.i.i = shl i64 %.sroa.6390.1.i.i.i.i.i.i, 3
  %389 = getelementptr i8, ptr %354, i64 %tmp.i.i139.i.i.i.i.i.i.i.i
  %390 = load double, ptr %388, align 8
  store double %390, ptr %389, align 8
  %391 = add nuw nsw i64 %.sroa.6390.1.i.i.i.i.i.i, 1
  %exitcond.not.i377.i.i.i.i.i.i = icmp eq i64 %391, %352
  br i1 %exitcond.not.i377.i.i.i.i.i.i, label %if.exit.i.i.i.i681.i.i, label %yield.new2.i372.i.i.i.i.i.i, !llvm.loop !58

if.exit.i.i.i.i681.i.i:                           ; preds = %yield.new2.i372.i.i.i.i.i.i, %middle.block1119, %for.body.lr.ph.split.split.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2390.exit.i.i"
  %switch.i.i.i.i682.i.i = icmp ult i64 %352, 2
  %392 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i683.i.i = extractvalue { i64 } %392, 0
  %tmp.i82.not.i.i.i.i.i684.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i683.i.i, 8
  %spec.select.i.i.i.i685.i.i = select i1 %tmp.i82.not.i.i.i.i.i684.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i686.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i685.i.i, 0
  %393 = and i8 %.fca.0.extract2191.i.i.i.i686.i.i, 1
  %394 = or i1 %tmp.i82.not.i84.i.i.i.i688.i.i, %switch.i.i.i.i682.i.i
  %common.ret.op.i81.i.i.i.i689.i.i = select i1 %394, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i690.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i689.i.i, 0
  %.not7697.i.i.i.i691.i.i = icmp ne i8 %393, 0
  %.not76.i.i.i.i692.i.i = select i1 %switch.i.i.i.i682.i.i, i1 true, i1 %.not7697.i.i.i.i691.i.i
  %395 = and i8 %.fca.0.extract.i.i.i.i690.i.i, 1
  %396 = icmp ne i8 %395, 0
  %397 = select i1 %.not76.i.i.i.i692.i.i, i1 %396, i1 false
  br i1 %397, label %if.true.i.i.i698.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i.i": ; preds = %if.exit.i.i.i.i681.i.i
  %common.ret.op.i93.i.i.i.i693.i.i = select i1 %switch.i.i.i.i682.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i685.i.i
  %.fca.1.extract.i.i.i.i694.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i689.i.i, 1
  %.fca.1.extract22.i.i.i.i695.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i693.i.i, 1
  %398 = and i8 %.fca.1.extract22.i.i.i.i695.i.i, 1
  %.not77.i.i.i.i696.i.i = icmp eq i8 %398, 0
  %399 = and i8 %.fca.1.extract.i.i.i.i694.i.i, 1
  %.not202.i.i.i.i.i = icmp eq i8 %399, 0
  %.not.i.i.i697.i.i = select i1 %.not77.i.i.i.i696.i.i, i1 true, i1 %.not202.i.i.i.i.i
  br i1 %.not.i.i.i697.i.i, label %imp_for.cond.preheader.i.i.i.i673.i.i, label %if.true.i.i.i698.i.i

if.true.i.i.i698.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i.i", %if.exit.i.i.i.i681.i.i
  %400 = tail call ptr @seq_alloc_atomic(i64 %352)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i", label %imp_for.body.i.i.i700.i.i.preheader

imp_for.body.i.i.i700.i.i.preheader:              ; preds = %if.true.i.i.i698.i.i
  %min.iters.check316 = icmp eq i64 %352, 1
  br i1 %min.iters.check316, label %imp_for.body.i.i.i700.i.i.preheader1198, label %vector.ph317

vector.ph317:                                     ; preds = %imp_for.body.i.i.i700.i.i.preheader
  %n.vec319 = and i64 %352, 9223372036854775806
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph317
  %index323 = phi i64 [ 0, %vector.ph317 ], [ %index.next324, %vector.body322 ]
  %401 = or i64 %index323, 1
  %402 = getelementptr double, ptr %229, i64 %index323
  %403 = getelementptr double, ptr %229, i64 %401
  %404 = load double, ptr %402, align 8
  %405 = load double, ptr %403, align 8
  %406 = getelementptr double, ptr %354, i64 %index323
  %407 = getelementptr double, ptr %354, i64 %401
  %408 = load double, ptr %406, align 8
  %409 = load double, ptr %407, align 8
  %410 = fcmp olt double %404, %408
  %411 = fcmp olt double %405, %409
  %412 = zext i1 %410 to i8
  %413 = zext i1 %411 to i8
  %414 = getelementptr i8, ptr %400, i64 %index323
  %415 = getelementptr i8, ptr %400, i64 %401
  store i8 %412, ptr %414, align 1
  store i8 %413, ptr %415, align 1
  %index.next324 = add nuw i64 %index323, 2
  %416 = icmp eq i64 %index.next324, %n.vec319
  br i1 %416, label %middle.block314, label %vector.body322, !llvm.loop !59

middle.block314:                                  ; preds = %vector.body322
  %cmp.n321 = icmp eq i64 %352, %n.vec319
  br i1 %cmp.n321, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i", label %imp_for.body.i.i.i700.i.i.preheader1198

imp_for.body.i.i.i700.i.i.preheader1198:          ; preds = %middle.block314, %imp_for.body.i.i.i700.i.i.preheader
  %.ph1199 = phi i64 [ %n.vec319, %middle.block314 ], [ 0, %imp_for.body.i.i.i700.i.i.preheader ]
  br label %imp_for.body.i.i.i700.i.i

imp_for.cond.preheader.i.i.i.i673.i.i:            ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i.i"
  %417 = tail call ptr @seq_alloc_atomic(i64 %352)
  %.not7.i.i.i.i675.i.i.not = icmp eq i64 %352, 0
  br i1 %.not7.i.i.i.i675.i.i.not, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i", label %for.body.lr.ph.i.i.i676.i.i

for.body.lr.ph.i.i.i676.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i673.i.i
  %tmp.i.not.i.i.i.i674.i.i = icmp eq i64 %352, 1
  %418 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i184.i.i.i.i.i = extractvalue { i64 } %418, 0
  %419 = load double, ptr %229, align 8
  %420 = load double, ptr %354, align 8
  %tmp.i.i.i191.us.us.i.i.i.i.i = fcmp olt double %419, %420
  %res.i.i.i192.us.us.i.i.i.i.i = zext i1 %tmp.i.i.i191.us.us.i.i.i.i.i to i8
  br i1 %tmp.i.not.i.i.i.i674.i.i, label %yield.new2.i228.i.i.i.preheader.i.i, label %yield.new2.i282.peel.i.i.i.i.i

yield.new2.i228.i.i.i.preheader.i.i:              ; preds = %for.body.lr.ph.i.i.i676.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %417, i8 %res.i.i.i192.us.us.i.i.i.i.i, i64 1, i1 false)
  br label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i"

yield.new2.i282.peel.i.i.i.i.i:                   ; preds = %for.body.lr.ph.i.i.i676.i.i
  store i8 %res.i.i.i192.us.us.i.i.i.i.i, ptr %417, align 1
  %421 = add nsw i64 %352, -1
  %min.iters.check356 = icmp ult i64 %352, 3
  %ident.check352 = icmp ne i64 %.fca.0.extract.i.i184.i.i.i.i.i, 1
  %422 = or i1 %ident.check352, %min.iters.check356
  %or.cond846 = or i1 %ident.check353, %422
  br i1 %or.cond846, label %yield.new2.i282.i.i.i.i.i.preheader, label %vector.ph357

vector.ph357:                                     ; preds = %yield.new2.i282.peel.i.i.i.i.i
  %n.vec359 = and i64 %421, -2
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph357
  %index364 = phi i64 [ 0, %vector.ph357 ], [ %423, %vector.body363 ]
  %offset.idx365 = or i64 %index364, 1
  %423 = add nuw i64 %index364, 2
  %424 = getelementptr i8, ptr %229, i64 %offset.idx365
  %425 = getelementptr i8, ptr %229, i64 %423
  %426 = getelementptr i8, ptr %354, i64 %offset.idx365
  %427 = getelementptr i8, ptr %354, i64 %423
  %428 = getelementptr i8, ptr %417, i64 %offset.idx365
  %429 = getelementptr i8, ptr %417, i64 %423
  %430 = load double, ptr %424, align 8
  %431 = load double, ptr %425, align 8
  %432 = load double, ptr %426, align 8
  %433 = load double, ptr %427, align 8
  %434 = fcmp olt double %430, %432
  %435 = fcmp olt double %431, %433
  %436 = zext i1 %434 to i8
  %437 = zext i1 %435 to i8
  store i8 %436, ptr %428, align 1
  store i8 %437, ptr %429, align 1
  %438 = icmp eq i64 %423, %n.vec359
  br i1 %438, label %middle.block354, label %vector.body363, !llvm.loop !60

middle.block354:                                  ; preds = %vector.body363
  %ind.end360 = or i64 %421, 1
  %cmp.n362 = icmp eq i64 %421, %n.vec359
  br i1 %cmp.n362, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i", label %yield.new2.i282.i.i.i.i.i.preheader

yield.new2.i282.i.i.i.i.i.preheader:              ; preds = %middle.block354, %yield.new2.i282.peel.i.i.i.i.i
  %.sroa.12.7.i.i.i.i.i.ph = phi i64 [ %ind.end360, %middle.block354 ], [ 1, %yield.new2.i282.peel.i.i.i.i.i ]
  br label %yield.new2.i282.i.i.i.i.i

imp_for.body.i.i.i700.i.i:                        ; preds = %imp_for.body.i.i.i700.i.i, %imp_for.body.i.i.i700.i.i.preheader1198
  %439 = phi i64 [ %445, %imp_for.body.i.i.i700.i.i ], [ %.ph1199, %imp_for.body.i.i.i700.i.i.preheader1198 ]
  %440 = getelementptr double, ptr %229, i64 %439
  %441 = load double, ptr %440, align 8
  %442 = getelementptr double, ptr %354, i64 %439
  %443 = load double, ptr %442, align 8
  %tmp.i.i.i.i.i.i701.i.i = fcmp olt double %441, %443
  %res.i.i.i.i.i.i702.i.i = zext i1 %tmp.i.i.i.i.i.i701.i.i to i8
  %444 = getelementptr i8, ptr %400, i64 %439
  store i8 %res.i.i.i.i.i.i702.i.i, ptr %444, align 1
  %445 = add nuw nsw i64 %439, 1
  %exitcond.not.i.i.i703.i.i = icmp eq i64 %445, %352
  br i1 %exitcond.not.i.i.i703.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i", label %imp_for.body.i.i.i700.i.i, !llvm.loop !61

yield.new2.i282.i.i.i.i.i:                        ; preds = %yield.new2.i282.i.i.i.i.i, %yield.new2.i282.i.i.i.i.i.preheader
  %.sroa.12.7.i.i.i.i.i = phi i64 [ %451, %yield.new2.i282.i.i.i.i.i ], [ %.sroa.12.7.i.i.i.i.i.ph, %yield.new2.i282.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i.i, %.fca.0.extract.i.i184.i.i.i.i.i
  %446 = getelementptr i8, ptr %229, i64 %tmp.i40.i.i.i.i.i.i.i
  %tmp.i40.i.i188.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i.i, %.fca.0.extract.i83.i.i.i.i687.i.i
  %447 = getelementptr i8, ptr %354, i64 %tmp.i40.i.i188.i.i.i.i.i
  %448 = getelementptr i8, ptr %417, i64 %.sroa.12.7.i.i.i.i.i
  %449 = load double, ptr %446, align 8
  %450 = load double, ptr %447, align 8
  %tmp.i.i.i191.i.i.i.i.i = fcmp olt double %449, %450
  %res.i.i.i192.i.i.i.i.i = zext i1 %tmp.i.i.i191.i.i.i.i.i to i8
  store i8 %res.i.i.i192.i.i.i.i.i, ptr %448, align 1
  %451 = add nuw nsw i64 %.sroa.12.7.i.i.i.i.i, 1
  %exitcond.not.i287.i.i.i.i.i = icmp eq i64 %451, %352
  br i1 %exitcond.not.i287.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i", label %yield.new2.i282.i.i.i.i.i, !llvm.loop !62

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i": ; preds = %yield.new2.i282.i.i.i.i.i, %imp_for.body.i.i.i700.i.i, %middle.block354, %yield.new2.i228.i.i.i.preheader.i.i, %imp_for.cond.preheader.i.i.i.i673.i.i, %middle.block314, %if.true.i.i.i698.i.i
  %.pn198.i.i.i.i.i = phi ptr [ %400, %if.true.i.i.i698.i.i ], [ %417, %imp_for.cond.preheader.i.i.i.i673.i.i ], [ %417, %yield.new2.i228.i.i.i.preheader.i.i ], [ %400, %middle.block314 ], [ %417, %middle.block354 ], [ %400, %imp_for.body.i.i.i700.i.i ], [ %417, %yield.new2.i282.i.i.i.i.i ]
  %.pn.i.i.i.i.i = insertvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, { i64 } %.fr1021, 1
  %common.ret.op.i.i.i.i83.i = insertvalue { { i64 }, { i64 }, ptr } %.pn.i.i.i.i.i, ptr %.pn198.i.i.i.i.i, 2
  %452 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2243"({ { i64 }, { i64 }, ptr } %328, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i.i83.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.18.i.i.i704.i.i)
  %.fca.2.extract.i.i.i705.i.i = extractvalue { { i64 }, { i64 }, ptr } %452, 2
  %453 = extractvalue { { i64 }, { i64 }, ptr } %452, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i = extractvalue { i64 } %453, 0
  %switch.i.i.i.i707.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, 2
  %454 = extractvalue { { i64 }, { i64 }, ptr } %452, 1
  %.fca.0.extract.i.i.i.i.i708.i.i = extractvalue { i64 } %454, 0
  %tmp.i82.not.i.i.i.i.i709.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i708.i.i, 8
  %or.cond.i.i.i.i710.i.i = select i1 %switch.i.i.i.i707.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i709.i.i
  %common.ret.op.i.i.i.i.i711.i.i = select i1 %or.cond.i.i.i.i710.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i712.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i711.i.i, 0
  %.fca.1.extract.i.i.i.i713.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i711.i.i, 1
  %455 = and i8 %.fca.0.extract.i.i.i.i712.i.i, 1
  %.not.i.i.i.i714.i.i = icmp eq i8 %455, 0
  %456 = and i8 %.fca.1.extract.i.i.i.i713.i.i, 1
  %.not73.i.i.i715.i.i = icmp eq i8 %456, 0
  %.not.i.i.i716.i.i = select i1 %.not.i.i.i.i714.i.i, i1 %.not73.i.i.i715.i.i, i1 false
  %.not7.i.i.i.i717.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, 0
  br i1 %.not.i.i.i716.i.i, label %imp_for.cond.preheader.i.i.i.i724.i.i, label %imp_for.cond.preheader.i.i.i718.i.i

imp_for.cond.preheader.i.i.i718.i.i:              ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i"
  br i1 %.not7.i.i.i.i717.i.i, label %imp_for.body.i.i.i720.i.i.preheader, label %imp_for.cond.preheader.i.i.i748.i.i

imp_for.body.i.i.i720.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i718.i.i
  %min.iters.check305 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, 1
  br i1 %min.iters.check305, label %imp_for.body.i.i.i720.i.i.preheader1195, label %vector.ph306

vector.ph306:                                     ; preds = %imp_for.body.i.i.i720.i.i.preheader
  %n.vec308 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, -2
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph306
  %index312 = phi i64 [ 0, %vector.ph306 ], [ %index.next313, %vector.body311 ]
  %457 = or i64 %index312, 1
  %458 = getelementptr i64, ptr %.fca.2.extract.i.i.i705.i.i, i64 %index312
  %459 = getelementptr i64, ptr %.fca.2.extract.i.i.i705.i.i, i64 %457
  %460 = load i64, ptr %458, align 4
  %461 = load i64, ptr %459, align 4
  %462 = add i64 %460, -1
  %463 = add i64 %461, -1
  store i64 %462, ptr %458, align 4
  store i64 %463, ptr %459, align 4
  %index.next313 = add nuw i64 %index312, 2
  %464 = icmp eq i64 %index.next313, %n.vec308
  br i1 %464, label %middle.block303, label %vector.body311, !llvm.loop !63

middle.block303:                                  ; preds = %vector.body311
  %cmp.n310 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, %n.vec308
  br i1 %cmp.n310, label %imp_for.cond.preheader.i.i.i748.i.i, label %imp_for.body.i.i.i720.i.i.preheader1195

imp_for.body.i.i.i720.i.i.preheader1195:          ; preds = %middle.block303, %imp_for.body.i.i.i720.i.i.preheader
  %.ph1196 = phi i64 [ %n.vec308, %middle.block303 ], [ 0, %imp_for.body.i.i.i720.i.i.preheader ]
  br label %imp_for.body.i.i.i720.i.i

imp_for.cond.preheader.i.i.i.i724.i.i:            ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2596.exit.i.i"
  br i1 %.not7.i.i.i.i717.i.i, label %for.body.i.i.i726.i.i, label %imp_for.cond.preheader.i.i.i748.i.i

imp_for.body.i.i.i720.i.i:                        ; preds = %imp_for.body.i.i.i720.i.i, %imp_for.body.i.i.i720.i.i.preheader1195
  %465 = phi i64 [ %468, %imp_for.body.i.i.i720.i.i ], [ %.ph1196, %imp_for.body.i.i.i720.i.i.preheader1195 ]
  %466 = getelementptr i64, ptr %.fca.2.extract.i.i.i705.i.i, i64 %465
  %467 = load i64, ptr %466, align 4
  %tmp.i.i.i.i.i.i721.i.i = add i64 %467, -1
  store i64 %tmp.i.i.i.i.i.i721.i.i, ptr %466, align 4
  %468 = add nuw nsw i64 %465, 1
  %exitcond.not.i.i.i722.i.i = icmp eq i64 %468, %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i
  br i1 %exitcond.not.i.i.i722.i.i, label %imp_for.cond.preheader.i.i.i748.i.i, label %imp_for.body.i.i.i720.i.i, !llvm.loop !64

for.body.i.i.i726.i.i:                            ; preds = %for.body.i.i.i726.i.i.backedge, %imp_for.cond.preheader.i.i.i.i724.i.i
  %.sroa.6.1.i.i.i727.i.i = phi i64 [ %.sroa.6.1.i.i.i727.i.i.be, %for.body.i.i.i726.i.i.backedge ], [ 0, %imp_for.cond.preheader.i.i.i.i724.i.i ]
  store i2 1, ptr %.sroa.18.i.i.i704.i.i, align 8
  %tmp.i.i.i71.i.i.i728.i.i = mul i64 %.sroa.6.1.i.i.i727.i.i, %.fca.0.extract.i.i.i.i.i708.i.i
  %469 = getelementptr i8, ptr %.fca.2.extract.i.i.i705.i.i, i64 %tmp.i.i.i71.i.i.i728.i.i
  %470 = load i64, ptr %469, align 4
  %tmp.i.i.i72.i.i.i729.i.i = add i64 %470, -1
  store i64 %tmp.i.i.i72.i.i.i729.i.i, ptr %469, align 4
  %.sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i730.i.i = load i2, ptr %.sroa.18.i.i.i704.i.i, align 8, !alias.scope !65
  %switch.i79.i.i.i731.i.i = icmp eq i2 %.sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i730.i.i, 0
  br i1 %switch.i79.i.i.i731.i.i, label %for.body.i.i.i726.i.i.backedge, label %yield.new2.i80.i.i.i732.i.i

yield.new2.i80.i.i.i732.i.i:                      ; preds = %for.body.i.i.i726.i.i
  %471 = add nuw nsw i64 %.sroa.6.1.i.i.i727.i.i, 1
  %exitcond.not.i85.i.i.i733.i.i = icmp eq i64 %471, %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i
  br i1 %exitcond.not.i85.i.i.i733.i.i, label %imp_for.cond.preheader.i.i.i748.i.i, label %for.body.i.i.i726.i.i.backedge

for.body.i.i.i726.i.i.backedge:                   ; preds = %yield.new2.i80.i.i.i732.i.i, %for.body.i.i.i726.i.i
  %.sroa.6.1.i.i.i727.i.i.be = phi i64 [ %471, %yield.new2.i80.i.i.i732.i.i ], [ 0, %for.body.i.i.i726.i.i ]
  br label %for.body.i.i.i726.i.i

imp_for.cond.preheader.i.i.i748.i.i:              ; preds = %yield.new2.i80.i.i.i732.i.i, %imp_for.body.i.i.i720.i.i, %imp_for.cond.preheader.i.i.i.i724.i.i, %middle.block303, %imp_for.cond.preheader.i.i.i718.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.18.i.i.i704.i.i)
  tail call fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2401"({ { i64 }, { i64 }, ptr } %328, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i.i83.i, { { i64 }, { i64 }, ptr } %452)
  %472 = tail call ptr @seq_alloc_atomic(i64 %228)
  br i1 %.not7.i.i.i.i, label %imp_for.body.i.i.i750.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2616.exit.i.i"

imp_for.body.i.i.i750.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i748.i.i
  %min.iters.check294 = icmp eq i64 %.fca.0.extract38.i.i.i.i, 1
  br i1 %min.iters.check294, label %imp_for.body.i.i.i750.i.i.preheader1193, label %vector.ph295

vector.ph295:                                     ; preds = %imp_for.body.i.i.i750.i.i.preheader
  %n.vec297 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph295
  %index301 = phi i64 [ 0, %vector.ph295 ], [ %index.next302, %vector.body300 ]
  %473 = or i64 %index301, 1
  %474 = getelementptr i64, ptr %327, i64 %index301
  %475 = getelementptr i64, ptr %327, i64 %473
  %476 = load i64, ptr %474, align 4
  %477 = load i64, ptr %475, align 4
  %478 = add i64 %476, 1
  %479 = add i64 %477, 1
  %480 = getelementptr i64, ptr %472, i64 %index301
  %481 = getelementptr i64, ptr %472, i64 %473
  store i64 %478, ptr %480, align 4
  store i64 %479, ptr %481, align 4
  %index.next302 = add nuw i64 %index301, 2
  %482 = icmp eq i64 %index.next302, %n.vec297
  br i1 %482, label %middle.block292, label %vector.body300, !llvm.loop !68

middle.block292:                                  ; preds = %vector.body300
  %cmp.n299 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec297
  br i1 %cmp.n299, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2616.exit.i.i", label %imp_for.body.i.i.i750.i.i.preheader1193

imp_for.body.i.i.i750.i.i.preheader1193:          ; preds = %middle.block292, %imp_for.body.i.i.i750.i.i.preheader
  %.ph1194 = phi i64 [ %n.vec297, %middle.block292 ], [ 0, %imp_for.body.i.i.i750.i.i.preheader ]
  br label %imp_for.body.i.i.i750.i.i

imp_for.body.i.i.i750.i.i:                        ; preds = %imp_for.body.i.i.i750.i.i, %imp_for.body.i.i.i750.i.i.preheader1193
  %483 = phi i64 [ %487, %imp_for.body.i.i.i750.i.i ], [ %.ph1194, %imp_for.body.i.i.i750.i.i.preheader1193 ]
  %484 = getelementptr i64, ptr %327, i64 %483
  %485 = load i64, ptr %484, align 4
  %tmp.i.i.i.i.i.i751.i.i = add i64 %485, 1
  %486 = getelementptr i64, ptr %472, i64 %483
  store i64 %tmp.i.i.i.i.i.i751.i.i, ptr %486, align 4
  %487 = add nuw nsw i64 %483, 1
  %exitcond.not.i.i.i752.i.i = icmp eq i64 %487, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i752.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2616.exit.i.i", label %imp_for.body.i.i.i750.i.i, !llvm.loop !69

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2616.exit.i.i": ; preds = %imp_for.body.i.i.i750.i.i, %middle.block292, %imp_for.cond.preheader.i.i.i748.i.i
  %488 = tail call ptr @seq_alloc_atomic(i64 %353)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %if.exit.i.i.i.i814.i.i, label %for.body.lr.ph.split.split.i.i.i.i1040.i.i

for.body.lr.ph.split.split.i.i.i.i1040.i.i:       ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2616.exit.i.i"
  %489 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i1041.i.i = extractvalue { i64 } %489, 0
  %tmp.i.not.i.i.i.i.i.i1046.i.i = icmp eq i64 %352, 1
  %490 = load i64, ptr %472, align 4
  %491 = lshr i64 %490, 61
  %tmp.i12.i.i.i.i.us413.peel.i.i.i.i1048.i.i = and i64 %491, 4
  %spec.select.i.i.i.i.us414.peel.i.i.i.i1049.i.i = add i64 %tmp.i12.i.i.i.i.us413.peel.i.i.i.i1048.i.i, %490
  %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i1051.i.i = icmp ult i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i1049.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i1051.i.i)
  %tmp.i.i92.i.i.us417.peel.i.i.i.i1052.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i1049.i.i, 3
  %492 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.us417.peel.i.i.i.i1052.i.i
  %493 = load double, ptr %492, align 8
  store double %493, ptr %488, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i1046.i.i, label %if.exit.i.i.i.i814.i.i, label %yield.new2.i372.i.i.i.i1054.i.i.preheader

yield.new2.i372.i.i.i.i1054.i.i.preheader:        ; preds = %for.body.lr.ph.split.split.i.i.i.i1040.i.i
  %494 = add nsw i64 %352, -1
  %min.iters.check1106 = icmp ugt i64 %494, 1
  %ident.check1103.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i1041.i.i, 1
  %or.cond1145 = and i1 %min.iters.check1106, %ident.check1103.not
  br i1 %or.cond1145, label %vector.ph1107, label %yield.new2.i372.i.i.i.i1054.i.i.preheader1192

vector.ph1107:                                    ; preds = %yield.new2.i372.i.i.i.i1054.i.i.preheader
  %n.vec1109 = and i64 %494, -2
  %ind.end1110 = or i64 %494, 1
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %vector.ph1107
  %index1114 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1116, %vector.body1113 ]
  %offset.idx1115 = or i64 %index1114, 1
  %495 = add i64 %index1114, 2
  %496 = getelementptr i8, ptr %472, i64 %offset.idx1115
  %497 = getelementptr i8, ptr %472, i64 %495
  %498 = load i64, ptr %496, align 4
  %499 = load i64, ptr %497, align 4
  %500 = lshr i64 %498, 61
  %501 = lshr i64 %499, 61
  %502 = and i64 %500, 4
  %503 = and i64 %501, 4
  %504 = add i64 %502, %498
  %505 = add i64 %503, %499
  %506 = icmp ult i64 %504, 4
  %507 = icmp ult i64 %505, 4
  tail call void @llvm.assume(i1 %506)
  tail call void @llvm.assume(i1 %507)
  %508 = shl nuw nsw i64 %504, 3
  %509 = shl nuw nsw i64 %505, 3
  %510 = getelementptr i8, ptr %3, i64 %508
  %511 = getelementptr i8, ptr %3, i64 %509
  %512 = shl i64 %offset.idx1115, 3
  %513 = shl i64 %495, 3
  %514 = getelementptr i8, ptr %488, i64 %512
  %515 = getelementptr i8, ptr %488, i64 %513
  %516 = load double, ptr %510, align 8
  %517 = load double, ptr %511, align 8
  store double %516, ptr %514, align 8
  store double %517, ptr %515, align 8
  %index.next1116 = add nuw i64 %index1114, 2
  %518 = icmp eq i64 %index.next1116, %n.vec1109
  br i1 %518, label %middle.block1104, label %vector.body1113, !llvm.loop !70

middle.block1104:                                 ; preds = %vector.body1113
  %cmp.n1112 = icmp eq i64 %494, %n.vec1109
  br i1 %cmp.n1112, label %if.exit.i.i.i.i814.i.i, label %yield.new2.i372.i.i.i.i1054.i.i.preheader1192

yield.new2.i372.i.i.i.i1054.i.i.preheader1192:    ; preds = %middle.block1104, %yield.new2.i372.i.i.i.i1054.i.i.preheader
  %.sroa.6390.1.i.i.i.i1055.i.i.ph = phi i64 [ 1, %yield.new2.i372.i.i.i.i1054.i.i.preheader ], [ %ind.end1110, %middle.block1104 ]
  br label %yield.new2.i372.i.i.i.i1054.i.i

yield.new2.i372.i.i.i.i1054.i.i:                  ; preds = %yield.new2.i372.i.i.i.i1054.i.i, %yield.new2.i372.i.i.i.i1054.i.i.preheader1192
  %.sroa.6390.1.i.i.i.i1055.i.i = phi i64 [ %525, %yield.new2.i372.i.i.i.i1054.i.i ], [ %.sroa.6390.1.i.i.i.i1055.i.i.ph, %yield.new2.i372.i.i.i.i1054.i.i.preheader1192 ]
  %tmp.i40.i.i.i.i.i.i1056.i.i = mul i64 %.sroa.6390.1.i.i.i.i1055.i.i, %.fca.0.extract.i.i.i.i.i.i1041.i.i
  %519 = getelementptr i8, ptr %472, i64 %tmp.i40.i.i.i.i.i.i1056.i.i
  %520 = load i64, ptr %519, align 4
  %521 = lshr i64 %520, 61
  %tmp.i12.i.i.i.i.i.i.i.i1058.i.i = and i64 %521, 4
  %spec.select.i.i.i.i.i.i.i.i1059.i.i = add i64 %tmp.i12.i.i.i.i.i.i.i.i1058.i.i, %520
  %tmp.i15.not.i.i.i.i.i.i.i.i1061.i.i = icmp ult i64 %spec.select.i.i.i.i.i.i.i.i1059.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.i.i.i.i1061.i.i)
  %tmp.i.i92.i.i.i.i.i.i1062.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.i.i.i.i1059.i.i, 3
  %522 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.i.i.i.i1062.i.i
  %tmp.i.i139.i.i.i.i.i.i1063.i.i = shl i64 %.sroa.6390.1.i.i.i.i1055.i.i, 3
  %523 = getelementptr i8, ptr %488, i64 %tmp.i.i139.i.i.i.i.i.i1063.i.i
  %524 = load double, ptr %522, align 8
  store double %524, ptr %523, align 8
  %525 = add nuw nsw i64 %.sroa.6390.1.i.i.i.i1055.i.i, 1
  %exitcond.not.i377.i.i.i.i1064.i.i = icmp eq i64 %525, %352
  br i1 %exitcond.not.i377.i.i.i.i1064.i.i, label %if.exit.i.i.i.i814.i.i, label %yield.new2.i372.i.i.i.i1054.i.i, !llvm.loop !71

if.exit.i.i.i.i814.i.i:                           ; preds = %yield.new2.i372.i.i.i.i1054.i.i, %middle.block1104, %for.body.lr.ph.split.split.i.i.i.i1040.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2616.exit.i.i"
  %switch.i.i.i.i815.i.i = icmp ult i64 %352, 2
  %526 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i816.i.i = extractvalue { i64 } %526, 0
  %tmp.i82.not.i.i.i.i.i817.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i816.i.i, 8
  %spec.select.i.i.i.i818.i.i = select i1 %tmp.i82.not.i.i.i.i.i817.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i819.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i818.i.i, 0
  %527 = and i8 %.fca.0.extract2191.i.i.i.i819.i.i, 1
  %528 = or i1 %tmp.i82.not.i84.i.i.i.i688.i.i, %switch.i.i.i.i815.i.i
  %common.ret.op.i81.i.i.i.i822.i.i = select i1 %528, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i823.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i822.i.i, 0
  %.not7697.i.i.i.i824.i.i = icmp ne i8 %527, 0
  %.not76.i.i.i.i825.i.i = select i1 %switch.i.i.i.i815.i.i, i1 true, i1 %.not7697.i.i.i.i824.i.i
  %529 = and i8 %.fca.0.extract.i.i.i.i823.i.i, 1
  %530 = icmp ne i8 %529, 0
  %531 = select i1 %.not76.i.i.i.i825.i.i, i1 %530, i1 false
  br i1 %531, label %if.true.i.i.i833.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i826.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i826.i.i": ; preds = %if.exit.i.i.i.i814.i.i
  %common.ret.op.i93.i.i.i.i827.i.i = select i1 %switch.i.i.i.i815.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i818.i.i
  %.fca.1.extract.i.i.i.i828.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i822.i.i, 1
  %.fca.1.extract22.i.i.i.i829.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i827.i.i, 1
  %532 = and i8 %.fca.1.extract22.i.i.i.i829.i.i, 1
  %.not77.i.i.i.i830.i.i = icmp eq i8 %532, 0
  %533 = and i8 %.fca.1.extract.i.i.i.i828.i.i, 1
  %.not202.i.i.i831.i.i = icmp eq i8 %533, 0
  %.not.i.i.i832.i.i = select i1 %.not77.i.i.i.i830.i.i, i1 true, i1 %.not202.i.i.i831.i.i
  br i1 %.not.i.i.i832.i.i, label %imp_for.cond.preheader.i.i.i.i768.i.i, label %if.true.i.i.i833.i.i

if.true.i.i.i833.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i826.i.i", %if.exit.i.i.i.i814.i.i
  %534 = tail call ptr @seq_alloc_atomic(i64 %352)
  switch i64 %352, label %vector.ph242 [
    i64 0, label %imp_for.cond.preheader.i.i.i852.i.i
    i64 1, label %imp_for.body.i.i.i836.i.i.preheader
  ]

vector.ph242:                                     ; preds = %if.true.i.i.i833.i.i
  %n.vec244 = and i64 %352, 9223372036854775806
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph242
  %index248 = phi i64 [ 0, %vector.ph242 ], [ %index.next249, %vector.body247 ]
  %535 = or i64 %index248, 1
  %536 = getelementptr double, ptr %229, i64 %index248
  %537 = getelementptr double, ptr %229, i64 %535
  %538 = load double, ptr %536, align 8
  %539 = load double, ptr %537, align 8
  %540 = getelementptr double, ptr %488, i64 %index248
  %541 = getelementptr double, ptr %488, i64 %535
  %542 = load double, ptr %540, align 8
  %543 = load double, ptr %541, align 8
  %544 = fcmp oge double %538, %542
  %545 = fcmp oge double %539, %543
  %546 = zext i1 %544 to i8
  %547 = zext i1 %545 to i8
  %548 = getelementptr i8, ptr %534, i64 %index248
  %549 = getelementptr i8, ptr %534, i64 %535
  store i8 %546, ptr %548, align 1
  store i8 %547, ptr %549, align 1
  %index.next249 = add nuw i64 %index248, 2
  %550 = icmp eq i64 %index.next249, %n.vec244
  br i1 %550, label %middle.block239, label %vector.body247, !llvm.loop !72

middle.block239:                                  ; preds = %vector.body247
  %cmp.n246 = icmp eq i64 %352, %n.vec244
  br i1 %cmp.n246, label %imp_for.cond.preheader.i.i.i852.i.i, label %imp_for.body.i.i.i836.i.i.preheader

imp_for.body.i.i.i836.i.i.preheader:              ; preds = %middle.block239, %if.true.i.i.i833.i.i
  %.ph1190 = phi i64 [ 0, %if.true.i.i.i833.i.i ], [ %n.vec244, %middle.block239 ]
  br label %imp_for.body.i.i.i836.i.i

imp_for.cond.preheader.i.i.i.i768.i.i:            ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i826.i.i"
  %551 = tail call ptr @seq_alloc_atomic(i64 %352)
  %.not7.i.i.i.i772.i.i.not = icmp eq i64 %352, 0
  br i1 %.not7.i.i.i.i772.i.i.not, label %imp_for.cond.preheader.i.i.i852.i.i, label %for.body.lr.ph.i.i.i778.i.i

for.body.lr.ph.i.i.i778.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i768.i.i
  %tmp.i.not.i.i.i.i769.i.i = icmp eq i64 %352, 1
  %552 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i184.i.i.i779.i.i = extractvalue { i64 } %552, 0
  %553 = load double, ptr %229, align 8
  %554 = load double, ptr %488, align 8
  %tmp.i.i.i191.us.us.i.i.i811.i.i = fcmp oge double %553, %554
  %res.i.i.i192.us.us.i.i.i812.i.i = zext i1 %tmp.i.i.i191.us.us.i.i.i811.i.i to i8
  br i1 %tmp.i.not.i.i.i.i769.i.i, label %yield.new2.i228.i.i.i809.preheader.i.i, label %yield.new2.i282.peel.i.i.i783.i.i

yield.new2.i228.i.i.i809.preheader.i.i:           ; preds = %for.body.lr.ph.i.i.i778.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %551, i8 %res.i.i.i192.us.us.i.i.i812.i.i, i64 1, i1 false)
  br label %imp_for.cond.preheader.i.i.i852.i.i

yield.new2.i282.peel.i.i.i783.i.i:                ; preds = %for.body.lr.ph.i.i.i778.i.i
  store i8 %res.i.i.i192.us.us.i.i.i812.i.i, ptr %551, align 1
  %555 = add nsw i64 %352, -1
  %min.iters.check281 = icmp ult i64 %352, 3
  %ident.check277 = icmp ne i64 %.fca.0.extract.i.i184.i.i.i779.i.i, 1
  %556 = or i1 %ident.check277, %min.iters.check281
  %or.cond847 = or i1 %ident.check353, %556
  br i1 %or.cond847, label %yield.new2.i282.i.i.i786.i.i.preheader, label %vector.ph282

vector.ph282:                                     ; preds = %yield.new2.i282.peel.i.i.i783.i.i
  %n.vec284 = and i64 %555, -2
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph282
  %index289 = phi i64 [ 0, %vector.ph282 ], [ %557, %vector.body288 ]
  %offset.idx290 = or i64 %index289, 1
  %557 = add nuw i64 %index289, 2
  %558 = getelementptr i8, ptr %229, i64 %offset.idx290
  %559 = getelementptr i8, ptr %229, i64 %557
  %560 = getelementptr i8, ptr %488, i64 %offset.idx290
  %561 = getelementptr i8, ptr %488, i64 %557
  %562 = getelementptr i8, ptr %551, i64 %offset.idx290
  %563 = getelementptr i8, ptr %551, i64 %557
  %564 = load double, ptr %558, align 8
  %565 = load double, ptr %559, align 8
  %566 = load double, ptr %560, align 8
  %567 = load double, ptr %561, align 8
  %568 = fcmp oge double %564, %566
  %569 = fcmp oge double %565, %567
  %570 = zext i1 %568 to i8
  %571 = zext i1 %569 to i8
  store i8 %570, ptr %562, align 1
  store i8 %571, ptr %563, align 1
  %572 = icmp eq i64 %557, %n.vec284
  br i1 %572, label %middle.block279, label %vector.body288, !llvm.loop !73

middle.block279:                                  ; preds = %vector.body288
  %ind.end285 = or i64 %555, 1
  %cmp.n287 = icmp eq i64 %555, %n.vec284
  br i1 %cmp.n287, label %imp_for.cond.preheader.i.i.i852.i.i, label %yield.new2.i282.i.i.i786.i.i.preheader

yield.new2.i282.i.i.i786.i.i.preheader:           ; preds = %middle.block279, %yield.new2.i282.peel.i.i.i783.i.i
  %.sroa.12.7.i.i.i787.i.i.ph = phi i64 [ %ind.end285, %middle.block279 ], [ 1, %yield.new2.i282.peel.i.i.i783.i.i ]
  br label %yield.new2.i282.i.i.i786.i.i

imp_for.body.i.i.i836.i.i:                        ; preds = %imp_for.body.i.i.i836.i.i, %imp_for.body.i.i.i836.i.i.preheader
  %573 = phi i64 [ %579, %imp_for.body.i.i.i836.i.i ], [ %.ph1190, %imp_for.body.i.i.i836.i.i.preheader ]
  %574 = getelementptr double, ptr %229, i64 %573
  %575 = load double, ptr %574, align 8
  %576 = getelementptr double, ptr %488, i64 %573
  %577 = load double, ptr %576, align 8
  %tmp.i.i.i.i.i.i837.i.i = fcmp oge double %575, %577
  %res.i.i.i.i.i.i838.i.i = zext i1 %tmp.i.i.i.i.i.i837.i.i to i8
  %578 = getelementptr i8, ptr %534, i64 %573
  store i8 %res.i.i.i.i.i.i838.i.i, ptr %578, align 1
  %579 = add nuw nsw i64 %573, 1
  %exitcond.not.i.i.i839.i.i = icmp eq i64 %579, %352
  br i1 %exitcond.not.i.i.i839.i.i, label %imp_for.cond.preheader.i.i.i852.i.i, label %imp_for.body.i.i.i836.i.i, !llvm.loop !74

yield.new2.i282.i.i.i786.i.i:                     ; preds = %yield.new2.i282.i.i.i786.i.i, %yield.new2.i282.i.i.i786.i.i.preheader
  %.sroa.12.7.i.i.i787.i.i = phi i64 [ %585, %yield.new2.i282.i.i.i786.i.i ], [ %.sroa.12.7.i.i.i787.i.i.ph, %yield.new2.i282.i.i.i786.i.i.preheader ]
  %tmp.i40.i.i.i.i.i788.i.i = mul i64 %.sroa.12.7.i.i.i787.i.i, %.fca.0.extract.i.i184.i.i.i779.i.i
  %580 = getelementptr i8, ptr %229, i64 %tmp.i40.i.i.i.i.i788.i.i
  %tmp.i40.i.i188.i.i.i789.i.i = mul i64 %.sroa.12.7.i.i.i787.i.i, %.fca.0.extract.i83.i.i.i.i687.i.i
  %581 = getelementptr i8, ptr %488, i64 %tmp.i40.i.i188.i.i.i789.i.i
  %582 = getelementptr i8, ptr %551, i64 %.sroa.12.7.i.i.i787.i.i
  %583 = load double, ptr %580, align 8
  %584 = load double, ptr %581, align 8
  %tmp.i.i.i191.i.i.i790.i.i = fcmp oge double %583, %584
  %res.i.i.i192.i.i.i791.i.i = zext i1 %tmp.i.i.i191.i.i.i790.i.i to i8
  store i8 %res.i.i.i192.i.i.i791.i.i, ptr %582, align 1
  %585 = add nuw nsw i64 %.sroa.12.7.i.i.i787.i.i, 1
  %exitcond.not.i287.i.i.i792.i.i = icmp eq i64 %585, %352
  br i1 %exitcond.not.i287.i.i.i792.i.i, label %imp_for.cond.preheader.i.i.i852.i.i, label %yield.new2.i282.i.i.i786.i.i, !llvm.loop !75

imp_for.cond.preheader.i.i.i852.i.i:              ; preds = %yield.new2.i282.i.i.i786.i.i, %imp_for.body.i.i.i836.i.i, %middle.block279, %yield.new2.i228.i.i.i809.preheader.i.i, %imp_for.cond.preheader.i.i.i.i768.i.i, %middle.block239, %if.true.i.i.i833.i.i
  %.pn198.i.i.i774.i.i = phi ptr [ %534, %if.true.i.i.i833.i.i ], [ %551, %imp_for.cond.preheader.i.i.i.i768.i.i ], [ %551, %yield.new2.i228.i.i.i809.preheader.i.i ], [ %534, %middle.block239 ], [ %551, %middle.block279 ], [ %534, %imp_for.body.i.i.i836.i.i ], [ %551, %yield.new2.i282.i.i.i786.i.i ]
  %586 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract38.i.i.i.i)
  br i1 %.not7.i.i.i.i, label %imp_for.body.i.i.i854.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2647.exit.i.i"

imp_for.body.i.i.i854.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i852.i.i
  %min.iters.check230 = icmp eq i64 %.fca.0.extract38.i.i.i.i, 1
  br i1 %min.iters.check230, label %imp_for.body.i.i.i854.i.i.preheader1188, label %vector.ph231

vector.ph231:                                     ; preds = %imp_for.body.i.i.i854.i.i.preheader
  %n.vec233 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph231
  %index237 = phi i64 [ 0, %vector.ph231 ], [ %index.next238, %vector.body236 ]
  %587 = or i64 %index237, 1
  %588 = getelementptr i64, ptr %327, i64 %index237
  %589 = getelementptr i64, ptr %327, i64 %587
  %590 = load i64, ptr %588, align 4
  %591 = load i64, ptr %589, align 4
  %592 = icmp ne i64 %590, 2
  %593 = icmp ne i64 %591, 2
  %594 = zext i1 %592 to i8
  %595 = zext i1 %593 to i8
  %596 = getelementptr i8, ptr %586, i64 %index237
  %597 = getelementptr i8, ptr %586, i64 %587
  store i8 %594, ptr %596, align 1
  store i8 %595, ptr %597, align 1
  %index.next238 = add nuw i64 %index237, 2
  %598 = icmp eq i64 %index.next238, %n.vec233
  br i1 %598, label %middle.block228, label %vector.body236, !llvm.loop !76

middle.block228:                                  ; preds = %vector.body236
  %cmp.n235 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec233
  br i1 %cmp.n235, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2647.exit.i.i", label %imp_for.body.i.i.i854.i.i.preheader1188

imp_for.body.i.i.i854.i.i.preheader1188:          ; preds = %middle.block228, %imp_for.body.i.i.i854.i.i.preheader
  %.ph1189 = phi i64 [ %n.vec233, %middle.block228 ], [ 0, %imp_for.body.i.i.i854.i.i.preheader ]
  br label %imp_for.body.i.i.i854.i.i

imp_for.body.i.i.i854.i.i:                        ; preds = %imp_for.body.i.i.i854.i.i, %imp_for.body.i.i.i854.i.i.preheader1188
  %599 = phi i64 [ %603, %imp_for.body.i.i.i854.i.i ], [ %.ph1189, %imp_for.body.i.i.i854.i.i.preheader1188 ]
  %600 = getelementptr i64, ptr %327, i64 %599
  %601 = load i64, ptr %600, align 4
  %tmp.i.i.i.i.i.i855.i.i = icmp ne i64 %601, 2
  %res.i.i.i.i.i.i856.i.i = zext i1 %tmp.i.i.i.i.i.i855.i.i to i8
  %602 = getelementptr i8, ptr %586, i64 %599
  store i8 %res.i.i.i.i.i.i856.i.i, ptr %602, align 1
  %603 = add nuw nsw i64 %599, 1
  %exitcond.not.i.i.i857.i.i = icmp eq i64 %603, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i857.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2647.exit.i.i", label %imp_for.body.i.i.i854.i.i, !llvm.loop !77

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2647.exit.i.i": ; preds = %imp_for.body.i.i.i854.i.i, %middle.block228, %imp_for.cond.preheader.i.i.i852.i.i
  %604 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 0
  %605 = extractvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i = extractvalue { i64 } %604, 0
  %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i = extractvalue { i64 } %605, 0
  %tmp.i.i.i.i.i.not.i.i.i.i870.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i
  br i1 %tmp.i.i.i.i.i.not.i.i.i.i870.i.i, label %if.exit.i.i.i.i892.i.i, label %imp_for.cond.preheader.i.i.i.i871.i.i

if.exit.i.i.i.i892.i.i:                           ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2647.exit.i.i"
  %switch.i.i.i.i893.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 2
  %606 = extractvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, 1
  %.fca.0.extract.i83.i.i.i.i898.i.i = extractvalue { i64 } %606, 0
  %tmp.i82.not.i84.i.i.i.i899.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i898.i.i, 1
  %607 = or i1 %tmp.i82.not.i84.i.i.i.i899.i.i, %switch.i.i.i.i893.i.i
  %common.ret.op.i81.i.i.i.i900.i.i = select i1 %607, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i901.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i900.i.i, 0
  %.not76.i.i.i.i903.i.i = select i1 %switch.i.i.i.i893.i.i, i1 true, i1 %.not7697.i.i.i.i902.i.i
  %608 = and i8 %.fca.0.extract.i.i.i.i901.i.i, 1
  %609 = icmp ne i8 %608, 0
  %610 = select i1 %.not76.i.i.i.i903.i.i, i1 %609, i1 false
  br i1 %610, label %if.true.i.i.i910.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i904.i.i"

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i904.i.i": ; preds = %if.exit.i.i.i.i892.i.i
  %common.ret.op.i93.i.i.i.i905.i.i = select i1 %switch.i.i.i.i893.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i896.i.i
  %.fca.1.extract.i.i.i.i906.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i900.i.i, 1
  %.fca.1.extract22.i.i.i.i907.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i905.i.i, 1
  %611 = and i8 %.fca.1.extract22.i.i.i.i907.i.i, 1
  %.not77.i.i.i.i908.i.i = icmp eq i8 %611, 0
  %612 = and i8 %.fca.1.extract.i.i.i.i906.i.i, 1
  %.not200.i.i.i.i.i = icmp eq i8 %612, 0
  %.not.i.i.i909.i.i = select i1 %.not77.i.i.i.i908.i.i, i1 true, i1 %.not200.i.i.i.i.i
  br i1 %.not.i.i.i909.i.i, label %imp_for.cond.preheader.i.i.i.i871.i.i, label %if.true.i.i.i910.i.i

if.true.i.i.i910.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i904.i.i", %if.exit.i.i.i.i892.i.i
  %613 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i)
  %.not179207.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 0
  br i1 %.not179207.i.i.i.i.i, label %imp_for.body.i.i.i912.i.i.preheader, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i"

imp_for.body.i.i.i912.i.i.preheader:              ; preds = %if.true.i.i.i910.i.i
  %min.iters.check179 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 1
  br i1 %min.iters.check179, label %imp_for.body.i.i.i912.i.i.preheader1182, label %vector.ph180

vector.ph180:                                     ; preds = %imp_for.body.i.i.i912.i.i.preheader
  %n.vec182 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, -2
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph180
  %index186 = phi i64 [ 0, %vector.ph180 ], [ %index.next187, %vector.body185 ]
  %614 = or i64 %index186, 1
  %615 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %index186
  %616 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %614
  %617 = load i8, ptr %615, align 1
  %618 = load i8, ptr %616, align 1
  %619 = getelementptr i8, ptr %586, i64 %index186
  %620 = getelementptr i8, ptr %586, i64 %614
  %621 = load i8, ptr %619, align 1
  %622 = load i8, ptr %620, align 1
  %623 = and i8 %621, %617
  %624 = and i8 %622, %618
  %625 = getelementptr i8, ptr %613, i64 %index186
  %626 = getelementptr i8, ptr %613, i64 %614
  store i8 %623, ptr %625, align 1
  store i8 %624, ptr %626, align 1
  %index.next187 = add nuw i64 %index186, 2
  %627 = icmp eq i64 %index.next187, %n.vec182
  br i1 %627, label %middle.block177, label %vector.body185, !llvm.loop !78

middle.block177:                                  ; preds = %vector.body185
  %cmp.n184 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, %n.vec182
  br i1 %cmp.n184, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %imp_for.body.i.i.i912.i.i.preheader1182

imp_for.body.i.i.i912.i.i.preheader1182:          ; preds = %middle.block177, %imp_for.body.i.i.i912.i.i.preheader
  %.ph1183 = phi i64 [ %n.vec182, %middle.block177 ], [ 0, %imp_for.body.i.i.i912.i.i.preheader ]
  br label %imp_for.body.i.i.i912.i.i

imp_for.cond.preheader.i.i.i.i871.i.i:            ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2006.exit.i.i.i904.i.i", %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2647.exit.i.i"
  %tmp.i.not.i.i.i.i872.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 1
  %spec.select.i183.i.i.i873.i.i = select i1 %tmp.i.not.i.i.i.i872.i.i, i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i
  %.fca.0.insert.i.i.i.i874.i.i = insertvalue { i64 } poison, i64 %spec.select.i183.i.i.i873.i.i, 0
  %628 = tail call ptr @seq_alloc_atomic(i64 %spec.select.i183.i.i.i873.i.i)
  %.not7.i.i.i.i875.i.i = icmp sgt i64 %spec.select.i183.i.i.i873.i.i, 0
  br i1 %.not7.i.i.i.i875.i.i, label %for.body.lr.ph.i.i.i879.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i"

for.body.lr.ph.i.i.i879.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i871.i.i
  %629 = extractvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, 1
  %.fca.0.extract.i.i186.i.i.i881.i.i = extractvalue { i64 } %629, 0
  %tmp.i.not.i.i187.i.i.i882.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, 1
  br i1 %tmp.i.not.i.i.i.i872.i.i, label %for.body.lr.ph.split.us.i.i.i888.i.i, label %for.body.lr.ph.split.i.i.i883.i.i

for.body.lr.ph.split.us.i.i.i888.i.i:             ; preds = %for.body.lr.ph.i.i.i879.i.i
  %630 = load i8, ptr %.pn198.i.i.i774.i.i, align 1
  br i1 %tmp.i.not.i.i187.i.i.i882.i.i, label %yield.new2.i224.i.i.i.preheader.i.i, label %yield.new2.i242.i.i.i.i.i.preheader

yield.new2.i242.i.i.i.i.i.preheader:              ; preds = %for.body.lr.ph.split.us.i.i.i888.i.i
  %min.iters.check190 = icmp ne i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, 0
  %ident.check.not = icmp eq i64 %.fca.0.extract.i.i186.i.i.i881.i.i, 1
  %or.cond741 = and i1 %min.iters.check190, %ident.check.not
  br i1 %or.cond741, label %vector.ph191, label %yield.new2.i242.i.i.i.i.i.preheader1184

vector.ph191:                                     ; preds = %yield.new2.i242.i.i.i.i.i.preheader
  %n.vec193 = and i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, -2
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph191
  %index197 = phi i64 [ 0, %vector.ph191 ], [ %index.next198, %vector.body196 ]
  %631 = or i64 %index197, 1
  %632 = getelementptr i8, ptr %586, i64 %index197
  %633 = getelementptr i8, ptr %586, i64 %631
  %634 = getelementptr i8, ptr %628, i64 %index197
  %635 = getelementptr i8, ptr %628, i64 %631
  %636 = load i8, ptr %632, align 1
  %637 = load i8, ptr %633, align 1
  %638 = and i8 %636, %630
  %639 = and i8 %637, %630
  store i8 %638, ptr %634, align 1
  store i8 %639, ptr %635, align 1
  %index.next198 = add nuw i64 %index197, 2
  %640 = icmp eq i64 %index.next198, %n.vec193
  br i1 %640, label %middle.block188, label %vector.body196, !llvm.loop !79

middle.block188:                                  ; preds = %vector.body196
  %cmp.n195 = icmp eq i64 %spec.select.i183.i.i.i873.i.i, %n.vec193
  br i1 %cmp.n195, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %yield.new2.i242.i.i.i.i.i.preheader1184

yield.new2.i242.i.i.i.i.i.preheader1184:          ; preds = %middle.block188, %yield.new2.i242.i.i.i.i.i.preheader
  %.sroa.12.3.i.i.i889.i.i.ph = phi i64 [ %n.vec193, %middle.block188 ], [ 0, %yield.new2.i242.i.i.i.i.i.preheader ]
  br label %yield.new2.i242.i.i.i.i.i

yield.new2.i224.i.i.i.preheader.i.i:              ; preds = %for.body.lr.ph.split.us.i.i.i888.i.i
  %641 = load i8, ptr %586, align 1
  %642 = and i8 %641, %630
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %628, i8 %642, i64 1, i1 false)
  br label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i"

yield.new2.i242.i.i.i.i.i:                        ; preds = %yield.new2.i242.i.i.i.i.i, %yield.new2.i242.i.i.i.i.i.preheader1184
  %.sroa.12.3.i.i.i889.i.i = phi i64 [ %647, %yield.new2.i242.i.i.i.i.i ], [ %.sroa.12.3.i.i.i889.i.i.ph, %yield.new2.i242.i.i.i.i.i.preheader1184 ]
  %tmp.i40.i.i188.us.i.i.i890.i.i = mul i64 %.sroa.12.3.i.i.i889.i.i, %.fca.0.extract.i.i186.i.i.i881.i.i
  %643 = getelementptr i8, ptr %586, i64 %tmp.i40.i.i188.us.i.i.i890.i.i
  %644 = getelementptr i8, ptr %628, i64 %.sroa.12.3.i.i.i889.i.i
  %645 = load i8, ptr %643, align 1
  %646 = and i8 %645, %630
  store i8 %646, ptr %644, align 1
  %647 = add nuw nsw i64 %.sroa.12.3.i.i.i889.i.i, 1
  %exitcond.not.i247.i.i.i.i.i = icmp eq i64 %647, %spec.select.i183.i.i.i873.i.i
  br i1 %exitcond.not.i247.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %yield.new2.i242.i.i.i.i.i, !llvm.loop !80

for.body.lr.ph.split.i.i.i883.i.i:                ; preds = %for.body.lr.ph.i.i.i879.i.i
  br i1 %tmp.i.not.i.i187.i.i.i882.i.i, label %yield.new2.i260.i.i.i.preheader.i.i, label %yield.new2.i278.peel.i.i.i.i.i

yield.new2.i260.i.i.i.preheader.i.i:              ; preds = %for.body.lr.ph.split.i.i.i883.i.i
  %648 = load i8, ptr %586, align 1
  %min.iters.check203 = icmp ugt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 1
  %or.cond742 = and i1 %min.iters.check203, %ident.check200.not
  br i1 %or.cond742, label %vector.ph204, label %yield.new2.i260.i.i.i.i.i.preheader

vector.ph204:                                     ; preds = %yield.new2.i260.i.i.i.preheader.i.i
  %n.vec206 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, -2
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph204
  %index210 = phi i64 [ 0, %vector.ph204 ], [ %index.next211, %vector.body209 ]
  %649 = or i64 %index210, 1
  %650 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %index210
  %651 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %649
  %652 = getelementptr i8, ptr %628, i64 %index210
  %653 = getelementptr i8, ptr %628, i64 %649
  %654 = load i8, ptr %650, align 1
  %655 = load i8, ptr %651, align 1
  %656 = and i8 %654, %648
  %657 = and i8 %655, %648
  store i8 %656, ptr %652, align 1
  store i8 %657, ptr %653, align 1
  %index.next211 = add nuw i64 %index210, 2
  %658 = icmp eq i64 %index.next211, %n.vec206
  br i1 %658, label %middle.block201, label %vector.body209, !llvm.loop !81

middle.block201:                                  ; preds = %vector.body209
  %cmp.n208 = icmp eq i64 %spec.select.i183.i.i.i873.i.i, %n.vec206
  br i1 %cmp.n208, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %yield.new2.i260.i.i.i.i.i.preheader

yield.new2.i260.i.i.i.i.i.preheader:              ; preds = %middle.block201, %yield.new2.i260.i.i.i.preheader.i.i
  %.sroa.12.5.i.i.i887.i.i.ph = phi i64 [ %n.vec206, %middle.block201 ], [ 0, %yield.new2.i260.i.i.i.preheader.i.i ]
  br label %yield.new2.i260.i.i.i.i.i

yield.new2.i278.peel.i.i.i.i.i:                   ; preds = %for.body.lr.ph.split.i.i.i883.i.i
  %659 = load i8, ptr %.pn198.i.i.i774.i.i, align 1
  %660 = load i8, ptr %586, align 1
  %661 = and i8 %660, %659
  store i8 %661, ptr %628, align 1
  %662 = add nsw i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, -1
  %min.iters.check217 = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 3
  %ident.check214 = icmp ne i64 %.fca.0.extract.i.i186.i.i.i881.i.i, 1
  %663 = or i1 %ident.check214, %ident.check213
  %or.cond1068 = or i1 %min.iters.check217, %663
  br i1 %or.cond1068, label %yield.new2.i278.i.i.i.i.i.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %yield.new2.i278.peel.i.i.i.i.i
  %n.vec220 = and i64 %662, -2
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph218
  %index225 = phi i64 [ 0, %vector.ph218 ], [ %664, %vector.body224 ]
  %offset.idx226 = or i64 %index225, 1
  %664 = add nuw i64 %index225, 2
  %665 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %offset.idx226
  %666 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %664
  %667 = getelementptr i8, ptr %586, i64 %offset.idx226
  %668 = getelementptr i8, ptr %586, i64 %664
  %669 = getelementptr i8, ptr %628, i64 %offset.idx226
  %670 = getelementptr i8, ptr %628, i64 %664
  %671 = load i8, ptr %665, align 1
  %672 = load i8, ptr %666, align 1
  %673 = load i8, ptr %667, align 1
  %674 = load i8, ptr %668, align 1
  %675 = and i8 %673, %671
  %676 = and i8 %674, %672
  store i8 %675, ptr %669, align 1
  store i8 %676, ptr %670, align 1
  %677 = icmp eq i64 %664, %n.vec220
  br i1 %677, label %middle.block215, label %vector.body224, !llvm.loop !82

middle.block215:                                  ; preds = %vector.body224
  %ind.end221 = or i64 %662, 1
  %cmp.n223 = icmp eq i64 %662, %n.vec220
  br i1 %cmp.n223, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %yield.new2.i278.i.i.i.i.i.preheader

yield.new2.i278.i.i.i.i.i.preheader:              ; preds = %middle.block215, %yield.new2.i278.peel.i.i.i.i.i
  %.sroa.12.7.i.i.i884.i.i.ph = phi i64 [ %ind.end221, %middle.block215 ], [ 1, %yield.new2.i278.peel.i.i.i.i.i ]
  br label %yield.new2.i278.i.i.i.i.i

yield.new2.i260.i.i.i.i.i:                        ; preds = %yield.new2.i260.i.i.i.i.i, %yield.new2.i260.i.i.i.i.i.preheader
  %.sroa.12.5.i.i.i887.i.i = phi i64 [ %682, %yield.new2.i260.i.i.i.i.i ], [ %.sroa.12.5.i.i.i887.i.i.ph, %yield.new2.i260.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.us203.i.i.i.i.i = mul i64 %.sroa.12.5.i.i.i887.i.i, %.fca.0.extract.i.i184.i.i.i880.i.i
  %678 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %tmp.i40.i.i.us203.i.i.i.i.i
  %679 = getelementptr i8, ptr %628, i64 %.sroa.12.5.i.i.i887.i.i
  %680 = load i8, ptr %678, align 1
  %681 = and i8 %680, %648
  store i8 %681, ptr %679, align 1
  %682 = add nuw nsw i64 %.sroa.12.5.i.i.i887.i.i, 1
  %exitcond.not.i265.i.i.i.i.i = icmp eq i64 %682, %spec.select.i183.i.i.i873.i.i
  br i1 %exitcond.not.i265.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %yield.new2.i260.i.i.i.i.i, !llvm.loop !83

imp_for.body.i.i.i912.i.i:                        ; preds = %imp_for.body.i.i.i912.i.i, %imp_for.body.i.i.i912.i.i.preheader1182
  %683 = phi i64 [ %690, %imp_for.body.i.i.i912.i.i ], [ %.ph1183, %imp_for.body.i.i.i912.i.i.preheader1182 ]
  %684 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %683
  %685 = load i8, ptr %684, align 1
  %686 = getelementptr i8, ptr %586, i64 %683
  %687 = load i8, ptr %686, align 1
  %688 = and i8 %687, %685
  %689 = getelementptr i8, ptr %613, i64 %683
  store i8 %688, ptr %689, align 1
  %690 = add nuw nsw i64 %683, 1
  %exitcond.not.i.i.i913.i.i = icmp eq i64 %690, %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i
  br i1 %exitcond.not.i.i.i913.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %imp_for.body.i.i.i912.i.i, !llvm.loop !84

yield.new2.i278.i.i.i.i.i:                        ; preds = %yield.new2.i278.i.i.i.i.i, %yield.new2.i278.i.i.i.i.i.preheader
  %.sroa.12.7.i.i.i884.i.i = phi i64 [ %697, %yield.new2.i278.i.i.i.i.i ], [ %.sroa.12.7.i.i.i884.i.i.ph, %yield.new2.i278.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i885.i.i = mul i64 %.sroa.12.7.i.i.i884.i.i, %.fca.0.extract.i.i184.i.i.i880.i.i
  %691 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %tmp.i40.i.i.i.i.i885.i.i
  %tmp.i40.i.i188.i.i.i886.i.i = mul i64 %.sroa.12.7.i.i.i884.i.i, %.fca.0.extract.i.i186.i.i.i881.i.i
  %692 = getelementptr i8, ptr %586, i64 %tmp.i40.i.i188.i.i.i886.i.i
  %693 = getelementptr i8, ptr %628, i64 %.sroa.12.7.i.i.i884.i.i
  %694 = load i8, ptr %691, align 1
  %695 = load i8, ptr %692, align 1
  %696 = and i8 %695, %694
  store i8 %696, ptr %693, align 1
  %697 = add nuw nsw i64 %.sroa.12.7.i.i.i884.i.i, 1
  %exitcond.not.i283.i.i.i.i.i = icmp eq i64 %697, %spec.select.i183.i.i.i873.i.i
  br i1 %exitcond.not.i283.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i", label %yield.new2.i278.i.i.i.i.i, !llvm.loop !85

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i": ; preds = %yield.new2.i278.i.i.i.i.i, %imp_for.body.i.i.i912.i.i, %yield.new2.i260.i.i.i.i.i, %middle.block215, %middle.block201, %yield.new2.i242.i.i.i.i.i, %yield.new2.i224.i.i.i.preheader.i.i, %middle.block188, %imp_for.cond.preheader.i.i.i.i871.i.i, %middle.block177, %if.true.i.i.i910.i.i
  %.fca.0.insert.i.pn.i.i.i876.i.i = phi { i64 } [ %604, %if.true.i.i.i910.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %imp_for.cond.preheader.i.i.i.i871.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i224.i.i.i.preheader.i.i ], [ %604, %middle.block177 ], [ %.fca.0.insert.i.i.i.i874.i.i, %middle.block188 ], [ %.fca.0.insert.i.i.i.i874.i.i, %middle.block201 ], [ %.fca.0.insert.i.i.i.i874.i.i, %middle.block215 ], [ %604, %imp_for.body.i.i.i912.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i242.i.i.i.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i260.i.i.i.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i278.i.i.i.i.i ]
  %.pn196.i.i.i.i.i = phi ptr [ %613, %if.true.i.i.i910.i.i ], [ %628, %imp_for.cond.preheader.i.i.i.i871.i.i ], [ %628, %yield.new2.i224.i.i.i.preheader.i.i ], [ %613, %middle.block177 ], [ %628, %middle.block188 ], [ %628, %middle.block201 ], [ %628, %middle.block215 ], [ %613, %imp_for.body.i.i.i912.i.i ], [ %628, %yield.new2.i242.i.i.i.i.i ], [ %628, %yield.new2.i260.i.i.i.i.i ], [ %628, %yield.new2.i278.i.i.i.i.i ]
  %.pn197.i.i.i.i.i = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %.fca.0.insert.i.pn.i.i.i876.i.i, 0
  %.pn.i.i.i877.i.i = insertvalue { { i64 }, { i64 }, ptr } %.pn197.i.i.i.i.i, { i64 } { i64 1 }, 1
  %common.ret.op.i.i.i878.i.i = insertvalue { { i64 }, { i64 }, ptr } %.pn.i.i.i877.i.i, ptr %.pn196.i.i.i.i.i, 2
  %698 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2243"({ { i64 }, { i64 }, ptr } %328, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i878.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.18.i.i.i914.i.i)
  %.fca.2.extract.i.i.i915.i.i = extractvalue { { i64 }, { i64 }, ptr } %698, 2
  %699 = extractvalue { { i64 }, { i64 }, ptr } %698, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i = extractvalue { i64 } %699, 0
  %switch.i.i.i.i917.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, 2
  %700 = extractvalue { { i64 }, { i64 }, ptr } %698, 1
  %.fca.0.extract.i.i.i.i.i918.i.i = extractvalue { i64 } %700, 0
  %tmp.i82.not.i.i.i.i.i919.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i918.i.i, 8
  %or.cond.i.i.i.i920.i.i = select i1 %switch.i.i.i.i917.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i919.i.i
  %common.ret.op.i.i.i.i.i921.i.i = select i1 %or.cond.i.i.i.i920.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i922.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i921.i.i, 0
  %.fca.1.extract.i.i.i.i923.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i921.i.i, 1
  %701 = and i8 %.fca.0.extract.i.i.i.i922.i.i, 1
  %.not.i.i.i.i924.i.i = icmp eq i8 %701, 0
  %702 = and i8 %.fca.1.extract.i.i.i.i923.i.i, 1
  %.not73.i.i.i925.i.i = icmp eq i8 %702, 0
  %.not.i.i.i926.i.i = select i1 %.not.i.i.i.i924.i.i, i1 %.not73.i.i.i925.i.i, i1 false
  %.not7.i.i.i.i927.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, 0
  br i1 %.not.i.i.i926.i.i, label %imp_for.cond.preheader.i.i.i.i933.i.i, label %imp_for.cond.preheader.i.i.i928.i.i

imp_for.cond.preheader.i.i.i928.i.i:              ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i"
  br i1 %.not7.i.i.i.i927.i.i, label %imp_for.body.i.i.i930.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i"

imp_for.body.i.i.i930.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i928.i.i
  %min.iters.check168 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, 1
  br i1 %min.iters.check168, label %imp_for.body.i.i.i930.i.i.preheader1179, label %vector.ph169

vector.ph169:                                     ; preds = %imp_for.body.i.i.i930.i.i.preheader
  %n.vec171 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, -2
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph169
  %index175 = phi i64 [ 0, %vector.ph169 ], [ %index.next176, %vector.body174 ]
  %703 = or i64 %index175, 1
  %704 = getelementptr i64, ptr %.fca.2.extract.i.i.i915.i.i, i64 %index175
  %705 = getelementptr i64, ptr %.fca.2.extract.i.i.i915.i.i, i64 %703
  %706 = load i64, ptr %704, align 4
  %707 = load i64, ptr %705, align 4
  %708 = add i64 %706, 1
  %709 = add i64 %707, 1
  store i64 %708, ptr %704, align 4
  store i64 %709, ptr %705, align 4
  %index.next176 = add nuw i64 %index175, 2
  %710 = icmp eq i64 %index.next176, %n.vec171
  br i1 %710, label %middle.block166, label %vector.body174, !llvm.loop !86

middle.block166:                                  ; preds = %vector.body174
  %cmp.n173 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, %n.vec171
  br i1 %cmp.n173, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i", label %imp_for.body.i.i.i930.i.i.preheader1179

imp_for.body.i.i.i930.i.i.preheader1179:          ; preds = %middle.block166, %imp_for.body.i.i.i930.i.i.preheader
  %.ph1180 = phi i64 [ %n.vec171, %middle.block166 ], [ 0, %imp_for.body.i.i.i930.i.i.preheader ]
  br label %imp_for.body.i.i.i930.i.i

imp_for.cond.preheader.i.i.i.i933.i.i:            ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2658.exit.i.i"
  br i1 %.not7.i.i.i.i927.i.i, label %for.body.i.i.i935.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i"

imp_for.body.i.i.i930.i.i:                        ; preds = %imp_for.body.i.i.i930.i.i, %imp_for.body.i.i.i930.i.i.preheader1179
  %711 = phi i64 [ %714, %imp_for.body.i.i.i930.i.i ], [ %.ph1180, %imp_for.body.i.i.i930.i.i.preheader1179 ]
  %712 = getelementptr i64, ptr %.fca.2.extract.i.i.i915.i.i, i64 %711
  %713 = load i64, ptr %712, align 4
  %tmp.i.i.i.i.i.i931.i.i = add i64 %713, 1
  store i64 %tmp.i.i.i.i.i.i931.i.i, ptr %712, align 4
  %714 = add nuw nsw i64 %711, 1
  %exitcond.not.i.i.i932.i.i = icmp eq i64 %714, %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i
  br i1 %exitcond.not.i.i.i932.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i", label %imp_for.body.i.i.i930.i.i, !llvm.loop !87

for.body.i.i.i935.i.i:                            ; preds = %for.body.i.i.i935.i.i.backedge, %imp_for.cond.preheader.i.i.i.i933.i.i
  %.sroa.6.1.i.i.i936.i.i = phi i64 [ %.sroa.6.1.i.i.i936.i.i.be, %for.body.i.i.i935.i.i.backedge ], [ 0, %imp_for.cond.preheader.i.i.i.i933.i.i ]
  store i2 1, ptr %.sroa.18.i.i.i914.i.i, align 8
  %tmp.i.i.i71.i.i.i937.i.i = mul i64 %.sroa.6.1.i.i.i936.i.i, %.fca.0.extract.i.i.i.i.i918.i.i
  %715 = getelementptr i8, ptr %.fca.2.extract.i.i.i915.i.i, i64 %tmp.i.i.i71.i.i.i937.i.i
  %716 = load i64, ptr %715, align 4
  %tmp.i.i.i72.i.i.i938.i.i = add i64 %716, 1
  store i64 %tmp.i.i.i72.i.i.i938.i.i, ptr %715, align 4
  %.sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i939.i.i = load i2, ptr %.sroa.18.i.i.i914.i.i, align 8, !alias.scope !88
  %switch.i79.i.i.i940.i.i = icmp eq i2 %.sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i939.i.i, 0
  br i1 %switch.i79.i.i.i940.i.i, label %for.body.i.i.i935.i.i.backedge, label %yield.new2.i80.i.i.i941.i.i

yield.new2.i80.i.i.i941.i.i:                      ; preds = %for.body.i.i.i935.i.i
  %717 = add nuw nsw i64 %.sroa.6.1.i.i.i936.i.i, 1
  %exitcond.not.i85.i.i.i942.i.i = icmp eq i64 %717, %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i
  br i1 %exitcond.not.i85.i.i.i942.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i", label %for.body.i.i.i935.i.i.backedge

for.body.i.i.i935.i.i.backedge:                   ; preds = %yield.new2.i80.i.i.i941.i.i, %for.body.i.i.i935.i.i
  %.sroa.6.1.i.i.i936.i.i.be = phi i64 [ %717, %yield.new2.i80.i.i.i941.i.i ], [ 0, %for.body.i.i.i935.i.i ]
  br label %for.body.i.i.i935.i.i

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i": ; preds = %yield.new2.i80.i.i.i941.i.i, %imp_for.body.i.i.i930.i.i, %imp_for.cond.preheader.i.i.i.i933.i.i, %middle.block166, %imp_for.cond.preheader.i.i.i928.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.18.i.i.i914.i.i)
  tail call fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2401"({ { i64 }, { i64 }, ptr } %328, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i878.i.i, { { i64 }, { i64 }, ptr } %698)
  %718 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i1068.i.i = extractvalue { i64 } %718, 0
  %719 = tail call ptr @seq_alloc_atomic(i64 %353)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2789.exit.i.i.i", label %for.body.i.i1078.i.i.preheader

for.body.i.i1078.i.i.preheader:                   ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i"
  %min.iters.check1096 = icmp ne i64 %352, 1
  %ident.check.not1143 = icmp eq i64 %.fca.0.extract.i.i.i1068.i.i, 1
  %or.cond1146 = and i1 %min.iters.check1096, %ident.check.not1143
  br i1 %or.cond1146, label %vector.ph, label %for.body.i.i1078.i.i.preheader1178

vector.ph:                                        ; preds = %for.body.i.i1078.i.i.preheader
  %n.vec1097 = and i64 %352, 9223372036854775806
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %vector.ph
  %index1100 = phi i64 [ 0, %vector.ph ], [ %index.next1101, %vector.body1099 ]
  %720 = or i64 %index1100, 1
  %721 = getelementptr i8, ptr %327, i64 %index1100
  %722 = getelementptr i8, ptr %327, i64 %720
  %723 = shl i64 %index1100, 3
  %724 = shl i64 %720, 3
  %725 = getelementptr i8, ptr %719, i64 %723
  %726 = getelementptr i8, ptr %719, i64 %724
  %727 = load i64, ptr %721, align 4
  %728 = load i64, ptr %722, align 4
  store i64 %727, ptr %725, align 4
  store i64 %728, ptr %726, align 4
  %index.next1101 = add nuw i64 %index1100, 2
  %729 = icmp eq i64 %index.next1101, %n.vec1097
  br i1 %729, label %middle.block1095, label %vector.body1099, !llvm.loop !91

middle.block1095:                                 ; preds = %vector.body1099
  %cmp.n1098 = icmp eq i64 %352, %n.vec1097
  br i1 %cmp.n1098, label %if.exit.i.i1072.i.i, label %for.body.i.i1078.i.i.preheader1178

for.body.i.i1078.i.i.preheader1178:               ; preds = %middle.block1095, %for.body.i.i1078.i.i.preheader
  %.sroa.6.1.i.i1079.i.i.ph = phi i64 [ 0, %for.body.i.i1078.i.i.preheader ], [ %n.vec1097, %middle.block1095 ]
  br label %for.body.i.i1078.i.i

for.body.i.i1078.i.i:                             ; preds = %for.body.i.i1078.i.i, %for.body.i.i1078.i.i.preheader1178
  %.sroa.6.1.i.i1079.i.i = phi i64 [ %733, %for.body.i.i1078.i.i ], [ %.sroa.6.1.i.i1079.i.i.ph, %for.body.i.i1078.i.i.preheader1178 ]
  %tmp.i.i.i.i.i1080.i.i = mul i64 %.sroa.6.1.i.i1079.i.i, %.fca.0.extract.i.i.i1068.i.i
  %730 = getelementptr i8, ptr %327, i64 %tmp.i.i.i.i.i1080.i.i
  %tmp.i.i.i362.i.i1081.i.i = shl i64 %.sroa.6.1.i.i1079.i.i, 3
  %731 = getelementptr i8, ptr %719, i64 %tmp.i.i.i362.i.i1081.i.i
  %732 = load i64, ptr %730, align 4
  store i64 %732, ptr %731, align 4
  %733 = add nuw nsw i64 %.sroa.6.1.i.i1079.i.i, 1
  %exitcond.not.i412.i.i1082.i.i = icmp eq i64 %733, %352
  br i1 %exitcond.not.i412.i.i1082.i.i, label %if.exit.i.i1072.i.i, label %for.body.i.i1078.i.i, !llvm.loop !92

if.exit.i.i1072.i.i:                              ; preds = %for.body.i.i1078.i.i, %middle.block1095
  %734 = load i64, ptr %719, align 4
  %.not93107.i.i.i.i.not = icmp eq i64 %352, 1
  br i1 %.not93107.i.i.i.i.not, label %if.exit3.i.i.i.i, label %imp_for.body.i.i1075.i.i.preheader

imp_for.body.i.i1075.i.i.preheader:               ; preds = %if.exit.i.i1072.i.i
  %735 = add nsw i64 %352, -1
  %min.iters.check152 = icmp eq i64 %352, 2
  br i1 %min.iters.check152, label %imp_for.body.i.i1075.i.i.preheader1176, label %vector.ph153

vector.ph153:                                     ; preds = %imp_for.body.i.i1075.i.i.preheader
  %n.vec155 = and i64 %735, -2
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph153
  %index159 = phi i64 [ 0, %vector.ph153 ], [ %736, %vector.body158 ]
  %vec.phi = phi i64 [ %734, %vector.ph153 ], [ %741, %vector.body158 ]
  %vec.phi160 = phi i64 [ %734, %vector.ph153 ], [ %742, %vector.body158 ]
  %vec.phi161 = phi i64 [ %734, %vector.ph153 ], [ %743, %vector.body158 ]
  %vec.phi162 = phi i64 [ %734, %vector.ph153 ], [ %744, %vector.body158 ]
  %offset.idx = or i64 %index159, 1
  %736 = add i64 %index159, 2
  %737 = getelementptr i64, ptr %719, i64 %offset.idx
  %738 = getelementptr i64, ptr %719, i64 %736
  %739 = load i64, ptr %737, align 4
  %740 = load i64, ptr %738, align 4
  %741 = tail call i64 @llvm.smax.i64(i64 %vec.phi, i64 %739)
  %742 = tail call i64 @llvm.smax.i64(i64 %vec.phi160, i64 %740)
  %743 = tail call i64 @llvm.smin.i64(i64 %739, i64 %vec.phi161)
  %744 = tail call i64 @llvm.smin.i64(i64 %740, i64 %vec.phi162)
  %745 = icmp eq i64 %736, %n.vec155
  br i1 %745, label %middle.block150, label %vector.body158, !llvm.loop !93

middle.block150:                                  ; preds = %vector.body158
  %ind.end = or i64 %735, 1
  %rdx.minmax164 = tail call i64 @llvm.smin.i64(i64 %743, i64 %744)
  %rdx.minmax = tail call i64 @llvm.smax.i64(i64 %741, i64 %742)
  %cmp.n157 = icmp eq i64 %735, %n.vec155
  br i1 %cmp.n157, label %if.exit3.i.i.i.i, label %imp_for.body.i.i1075.i.i.preheader1176

imp_for.body.i.i1075.i.i.preheader1176:           ; preds = %middle.block150, %imp_for.body.i.i1075.i.i.preheader
  %.ph1177 = phi i64 [ %ind.end, %middle.block150 ], [ 1, %imp_for.body.i.i1075.i.i.preheader ]
  %.1109.i.i.i.i.ph = phi i64 [ %rdx.minmax, %middle.block150 ], [ %734, %imp_for.body.i.i1075.i.i.preheader ]
  %.185108.i.i.i.i.ph = phi i64 [ %rdx.minmax164, %middle.block150 ], [ %734, %imp_for.body.i.i1075.i.i.preheader ]
  br label %imp_for.body.i.i1075.i.i

if.exit3.i.i.i.i:                                 ; preds = %imp_for.body.i.i1075.i.i, %middle.block150, %if.exit.i.i1072.i.i
  %.084.i.i.i.i = phi i64 [ %734, %if.exit.i.i1072.i.i ], [ %rdx.minmax164, %middle.block150 ], [ %.286.i.i.i.i, %imp_for.body.i.i1075.i.i ]
  %.0.i.i.i.i = phi i64 [ %734, %if.exit.i.i1072.i.i ], [ %rdx.minmax, %middle.block150 ], [ %spec.select.i.i.i.i, %imp_for.body.i.i1075.i.i ]
  %746 = insertvalue { i64, i64 } undef, i64 %.084.i.i.i.i, 0
  %747 = insertvalue { i64, i64 } %746, i64 %.0.i.i.i.i, 1
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2789.exit.i.i.i"

imp_for.body.i.i1075.i.i:                         ; preds = %imp_for.body.i.i1075.i.i, %imp_for.body.i.i1075.i.i.preheader1176
  %748 = phi i64 [ %751, %imp_for.body.i.i1075.i.i ], [ %.ph1177, %imp_for.body.i.i1075.i.i.preheader1176 ]
  %.1109.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %imp_for.body.i.i1075.i.i ], [ %.1109.i.i.i.i.ph, %imp_for.body.i.i1075.i.i.preheader1176 ]
  %.185108.i.i.i.i = phi i64 [ %.286.i.i.i.i, %imp_for.body.i.i1075.i.i ], [ %.185108.i.i.i.i.ph, %imp_for.body.i.i1075.i.i.preheader1176 ]
  %749 = getelementptr i64, ptr %719, i64 %748
  %750 = load i64, ptr %749, align 4
  %spec.select.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %.1109.i.i.i.i, i64 %750)
  %.286.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %750, i64 %.185108.i.i.i.i)
  %751 = add nuw nsw i64 %748, 1
  %exitcond.not.i.i1076.i.i = icmp eq i64 %751, %352
  br i1 %exitcond.not.i.i1076.i.i, label %if.exit3.i.i.i.i, label %imp_for.body.i.i1075.i.i, !llvm.loop !94

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2789.exit.i.i.i": ; preds = %if.exit3.i.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i"
  %common.ret.op.i.i1073.i.i = phi { i64, i64 } [ %747, %if.exit3.i.i.i.i ], [ zeroinitializer, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2669.exit.i.i" ]
  %.fca.0.extract.i.i.i = extractvalue { i64, i64 } %common.ret.op.i.i1073.i.i, 0
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %common.ret.op.i.i1073.i.i, 1
  %.not108.i.i.i = icmp sgt i64 %.fca.0.extract.i.i.i, -1
  tail call void @llvm.assume(i1 %.not108.i.i.i)
  %tmp.i113.i.i.i = add i64 %.fca.1.extract.i.i.i, 1
  %spec.select.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i113.i.i.i, i64 3)
  %752 = shl i64 %spec.select.i.i.i, 3
  %753 = tail call ptr @seq_alloc_atomic(i64 %752)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %753, i8 0, i64 %752, i1 false)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %for.body.preheader.i.i.i, label %imp_for.body.i.i.i

imp_for.body.i.i.i:                               ; preds = %imp_for.body.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2789.exit.i.i.i"
  %754 = phi i64 [ %759, %imp_for.body.i.i.i ], [ 0, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2789.exit.i.i.i" ]
  %tmp.i.i.i.i1074.i.i = shl i64 %754, 3
  %755 = getelementptr i8, ptr %719, i64 %tmp.i.i.i.i1074.i.i
  %756 = load i64, ptr %755, align 4
  %tmp.i.i.i117.i.i.i = shl i64 %756, 3
  %757 = getelementptr i8, ptr %753, i64 %tmp.i.i.i117.i.i.i
  %758 = load i64, ptr %757, align 4
  %tmp.i116.i.i.i = add i64 %758, 1
  store i64 %tmp.i116.i.i.i, ptr %757, align 4
  %759 = add nuw nsw i64 %754, 1
  %exitcond.not.i.i.i = icmp eq i64 %759, %352
  br i1 %exitcond.not.i.i.i, label %for.body.preheader.i.i.i, label %imp_for.body.i.i.i

for.body.preheader.i.i.i:                         ; preds = %imp_for.body.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2789.exit.i.i.i"
  %760 = insertvalue { i64 } undef, i64 %spec.select.i.i.i, 0
  %761 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %760, 0
  %762 = tail call ptr @seq_alloc_atomic(i64 %752)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %762, ptr nonnull align 4 %753, i64 %752, i1 false)
  %763 = insertvalue { { i64 }, { i64 }, ptr } %761, { i64 } { i64 8 }, 1
  %.fr1102.i.i = freeze { { i64 }, { i64 }, ptr } %763
  %764 = extractvalue { { i64 }, { i64 }, ptr } %.fr1102.i.i, 0
  %.fca.0.extract.i.i.i.i.i.i.i.i948.i.i = extractvalue { i64 } %764, 0
  %tmp.i.i.i.i.i.not.i.i.i.i949.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i948.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %tmp.i.i.i.i.i.not.i.i.i.i949.i.i, label %if.exit.i.i.i.i969.i.i, label %imp_for.cond.preheader.i.i.i.i950.i.i

if.exit.i.i.i.i969.i.i:                           ; preds = %for.body.preheader.i.i.i
  %765 = extractvalue { { i64 }, { i64 }, ptr } %.fr1102.i.i, 1
  %.fca.0.extract.i83.i.i.i.i975.i.i = extractvalue { i64 } %765, 0
  %tmp.i82.not.i84.i.i.i.i976.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i975.i.i, 8
  %766 = or i1 %switch.i.i.i.i970.i.i, %tmp.i82.not.i84.i.i.i.i976.i.i
  %common.ret.op.i81.i.i.i.i977.i.i = select i1 %766, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i978.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i977.i.i, 0
  %767 = and i8 %.fca.0.extract.i.i.i.i978.i.i, 1
  %768 = icmp ne i8 %767, 0
  %769 = select i1 %.not76.i.i.i.i980.i.i, i1 %768, i1 false
  br i1 %769, label %if.true.i.i.i986.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2795.exit.i.i.i.i.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2795.exit.i.i.i.i.i": ; preds = %if.exit.i.i.i.i969.i.i
  %.fca.1.extract.i.i.i.i982.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i977.i.i, 1
  %770 = and i8 %.fca.1.extract.i.i.i.i982.i.i, 1
  %.not164.i.i.i.i.i = icmp eq i8 %770, 0
  %.not.i.i.i985.i.i = select i1 %.not77.i.i.i.i984.i.i, i1 true, i1 %.not164.i.i.i.i.i
  br i1 %.not.i.i.i985.i.i, label %imp_for.cond.preheader.i.i.i.i950.i.i, label %if.true.i.i.i986.i.i

if.true.i.i.i986.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2795.exit.i.i.i.i.i", %if.exit.i.i.i.i969.i.i
  br i1 %.not7.i.i.i.i953.i.i, label %imp_for.body.i.i.i988.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i"

imp_for.body.i.i.i988.i.i.preheader:              ; preds = %if.true.i.i.i986.i.i
  br i1 %min.iters.check, label %imp_for.body.i.i.i988.i.i.preheader1173, label %vector.body

vector.body:                                      ; preds = %vector.body, %imp_for.body.i.i.i988.i.i.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %imp_for.body.i.i.i988.i.i.preheader ]
  %771 = or i64 %index, 1
  %772 = getelementptr i64, ptr %2, i64 %index
  %773 = getelementptr i64, ptr %2, i64 %771
  %774 = load i64, ptr %772, align 8
  %775 = load i64, ptr %773, align 8
  %776 = getelementptr i64, ptr %762, i64 %index
  %777 = getelementptr i64, ptr %762, i64 %771
  %778 = load i64, ptr %776, align 4
  %779 = load i64, ptr %777, align 4
  %780 = add i64 %778, %774
  %781 = add i64 %779, %775
  store i64 %780, ptr %772, align 8
  store i64 %781, ptr %773, align 8
  %index.next = add nuw i64 %index, 2
  %782 = icmp eq i64 %index.next, %n.vec
  br i1 %782, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i", label %imp_for.body.i.i.i988.i.i.preheader1173

imp_for.body.i.i.i988.i.i.preheader1173:          ; preds = %middle.block, %imp_for.body.i.i.i988.i.i.preheader
  br label %imp_for.body.i.i.i988.i.i

imp_for.cond.preheader.i.i.i.i950.i.i:            ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2795.exit.i.i.i.i.i", %for.body.preheader.i.i.i
  %783 = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i948.i.i, 1
  %tmp.i.i.i.i.not.not.i.i.i952.i.i = or i1 %tmp.i.not.i.i.i.i951.i.i, %783
  tail call void @llvm.assume(i1 %tmp.i.i.i.i.not.not.i.i.i952.i.i)
  br i1 %.not7.i.i.i.i953.i.i, label %for.body.lr.ph.i.i.i954.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i"

for.body.lr.ph.i.i.i954.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i950.i.i
  %784 = extractvalue { { i64 }, { i64 }, ptr } %.fr1102.i.i, 1
  %.fca.0.extract.i.i150.i.i.i956.i.i = extractvalue { i64 } %784, 0
  br i1 %tmp.i.not.i.i.i.i951.i.i, label %for.body.lr.ph.split.us.i.i.i959.i.i, label %for.body.lr.ph.split.i.i.i957.i.i

for.body.lr.ph.split.us.i.i.i959.i.i:             ; preds = %for.body.lr.ph.i.i.i954.i.i
  br i1 %783, label %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit201.i.i.i.peel.i.i", label %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit219.i.i.i.peel.i.i"

"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit219.i.i.i.peel.i.i": ; preds = %for.body.lr.ph.split.us.i.i.i959.i.i
  %785 = load i64, ptr %2, align 8
  %786 = load i64, ptr %762, align 4
  %tmp.i.i.i155.us.i.i.i.peel.i.i = add i64 %786, %785
  store i64 %tmp.i.i.i155.us.i.i.i.peel.i.i, ptr %2, align 8
  br label %yield.new2.i206.i.i.i.i.i

"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit201.i.i.i.peel.i.i": ; preds = %for.body.lr.ph.split.us.i.i.i959.i.i
  %787 = load i64, ptr %762, align 4
  %788 = load i64, ptr %2, align 8
  %tmp.i.i.i155.us.us.i.i.i.peel.i.i = add i64 %788, %787
  store i64 %tmp.i.i.i155.us.us.i.i.i.peel.i.i, ptr %2, align 8
  br label %yield.new2.i188.i.i.i.i.i

yield.new2.i188.i.i.i.i.i:                        ; preds = %yield.new2.i188.i.i.i.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit201.i.i.i.peel.i.i"
  %.sroa.12.1.i.i.i967.i.i = phi i64 [ 1, %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit201.i.i.i.peel.i.i" ], [ %791, %yield.new2.i188.i.i.i.i.i ]
  %tmp.i40.i.i.us.us.i.i.i968.i.i = mul i64 %.sroa.12.1.i.i.i967.i.i, %.fca.0.extract.i.i.i.i.i971.i.i
  %789 = getelementptr i8, ptr %2, i64 %tmp.i40.i.i.us.us.i.i.i968.i.i
  %790 = load i64, ptr %789, align 4
  %tmp.i.i.i155.us.us.i.i.i.i.i = add i64 %790, %787
  store i64 %tmp.i.i.i155.us.us.i.i.i.i.i, ptr %789, align 4
  %791 = add nuw nsw i64 %.sroa.12.1.i.i.i967.i.i, 1
  %exitcond.not.i193.i.i.i.i.i = icmp eq i64 %791, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %exitcond.not.i193.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i", label %yield.new2.i188.i.i.i.i.i, !llvm.loop !96

yield.new2.i206.i.i.i.i.i:                        ; preds = %yield.new2.i206.i.i.i.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit219.i.i.i.peel.i.i"
  %.sroa.12.3.i.i.i962.i.i = phi i64 [ 1, %"std.numpy.util.multirange:0[Tuple[int]].1289.resume.exit219.i.i.i.peel.i.i" ], [ %796, %yield.new2.i206.i.i.i.i.i ]
  %tmp.i40.i.i.us.i.i.i963.i.i = mul i64 %.sroa.12.3.i.i.i962.i.i, %.fca.0.extract.i.i.i.i.i971.i.i
  %792 = getelementptr i8, ptr %2, i64 %tmp.i40.i.i.us.i.i.i963.i.i
  %tmp.i40.i.i152.us.i.i.i964.i.i = mul i64 %.sroa.12.3.i.i.i962.i.i, %.fca.0.extract.i.i150.i.i.i956.i.i
  %793 = getelementptr i8, ptr %762, i64 %tmp.i40.i.i152.us.i.i.i964.i.i
  %794 = load i64, ptr %792, align 4
  %795 = load i64, ptr %793, align 4
  %tmp.i.i.i155.us.i.i.i.i.i = add i64 %795, %794
  store i64 %tmp.i.i.i155.us.i.i.i.i.i, ptr %792, align 4
  %796 = add nuw nsw i64 %.sroa.12.3.i.i.i962.i.i, 1
  %exitcond.not.i211.i.i.i.i.i = icmp eq i64 %796, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %exitcond.not.i211.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i", label %yield.new2.i206.i.i.i.i.i, !llvm.loop !97

for.body.lr.ph.split.i.i.i957.i.i:                ; preds = %for.body.lr.ph.i.i.i954.i.i
  %797 = load i64, ptr %2, align 8
  %798 = load i64, ptr %762, align 4
  %tmp.i.i.i155.us169.i27.i.i.i.i = add i64 %798, %797
  store i64 %tmp.i.i.i155.us169.i27.i.i.i.i, ptr %2, align 8
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i"

imp_for.body.i.i.i988.i.i:                        ; preds = %imp_for.body.i.i.i988.i.i, %imp_for.body.i.i.i988.i.i.preheader1173
  %799 = phi i64 [ %804, %imp_for.body.i.i.i988.i.i ], [ %n.vec, %imp_for.body.i.i.i988.i.i.preheader1173 ]
  %800 = getelementptr i64, ptr %2, i64 %799
  %801 = load i64, ptr %800, align 8
  %802 = getelementptr i64, ptr %762, i64 %799
  %803 = load i64, ptr %802, align 4
  %tmp.i.i.i.i.i.i989.i.i = add i64 %803, %801
  store i64 %tmp.i.i.i.i.i.i989.i.i, ptr %800, align 8
  %804 = add nuw nsw i64 %799, 1
  %exitcond.not.i.i.i990.i.i = icmp eq i64 %804, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %exitcond.not.i.i.i990.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i", label %imp_for.body.i.i.i988.i.i, !llvm.loop !98

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i": ; preds = %imp_for.body.i.i.i988.i.i, %for.body.lr.ph.split.i.i.i957.i.i, %yield.new2.i206.i.i.i.i.i, %yield.new2.i188.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i950.i.i, %middle.block, %if.true.i.i.i986.i.i
  %.sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.0..sroa.36.i.0..sroa.36.0..sroa.36.0..sroa.36.64.index.i1257.i.i = load i2, ptr %.sroa.36.i.i, align 8, !alias.scope !99
  switch i2 %.sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.0..sroa.36.i.0..sroa.36.0..sroa.36.0..sroa.36.64.index.i1257.i.i, label %unreachable.i1295.i.i [
    i2 0, label %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i"
    i2 1, label %yield.new6.i1271.i.i
    i2 -2, label %yield.new2.i1258.i.i
  ]

yield.new2.i1258.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i"
  %tmp.i88.i1265.i.i = add i64 %.sroa.28.1.i.i, 65536
  %tmp.i86.not.i1266.i.i = icmp slt i64 %tmp.i88.i1265.i.i, %.unpack.unpack.i
  br i1 %tmp.i86.not.i1266.i.i, label %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i", label %imp_for.body.lr.ph.i.i.i.i.loopexit

yield.new6.i1271.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i"
  %tmp.i91.i1278.i.i = add i64 %.sroa.32.1.i.i, 65536
  %tmp.i89.not.i1279.i.i = icmp sgt i64 %tmp.i91.i1278.i.i, %.unpack.unpack.i
  br i1 %tmp.i89.not.i1279.i.i, label %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i", label %imp_for.body.lr.ph.i.i.i.i.loopexit

unreachable.i1295.i.i:                            ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i"
  unreachable

"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume.exit1296.i.i": ; preds = %yield.new6.i1271.i.i, %yield.new2.i1258.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i"
  %storemerge.i.i = phi i2 [ -2, %yield.new2.i1258.i.i ], [ 1, %yield.new6.i1271.i.i ], [ -2, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i" ]
  %.sroa.28.2.i.i = phi i64 [ %tmp.i88.i1265.i.i, %yield.new2.i1258.i.i ], [ %.sroa.28.1.i.i, %yield.new6.i1271.i.i ], [ 0, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i" ]
  %.sroa.6.2.i.i = phi i64 [ %tmp.i88.i1265.i.i, %yield.new2.i1258.i.i ], [ %tmp.i91.i1278.i.i, %yield.new6.i1271.i.i ], [ 0, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i" ]
  %.sroa.32.2.i.i = phi i64 [ %.sroa.32.1.i.i, %yield.new2.i1258.i.i ], [ %tmp.i91.i1278.i.i, %yield.new6.i1271.i.i ], [ %.sroa.32.1.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2806.exit.i.i" ]
  store i2 %storemerge.i.i, ptr %.sroa.36.i.i, align 8, !alias.scope !99
  br label %for.body.i.i

"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2809.exit.i": ; preds = %imp_for.body.i.i.i51.i.i.i, %middle.block554, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i", %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i.thread"
  %805 = phi ptr [ %208, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i.thread" ], [ %210, %middle.block554 ], [ %210, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i" ], [ %210, %imp_for.body.i.i.i51.i.i.i ]
  %806 = phi i64 [ %207, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i.thread" ], [ %209, %middle.block554 ], [ %209, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2769.exit.i.i.i" ], [ %209, %imp_for.body.i.i.i51.i.i.i ]
  %.fr1020 = freeze { i64 } { i64 8 }
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.36.i.i)
  %807 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i = extractvalue { i64 } %807, 0
  %switch.i.i.i.i86.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 2
  %.fca.0.extract.i.i.i.i.i87.i = extractvalue { i64 } %.fr1020, 0
  %tmp.i82.not.i.i.i.i.i88.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i87.i, 8
  %or.cond.i.i.i.i.i = or i1 %switch.i.i.i.i86.i, %tmp.i82.not.i.i.i.i.i88.i
  %common.ret.op.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i89.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i90.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i, 1
  %808 = and i8 %.fca.0.extract.i.i.i.i89.i, 1
  %.not.i.i.i.i91.i = icmp eq i8 %808, 0
  %809 = and i8 %.fca.1.extract.i.i.i.i90.i, 1
  %.not8190.i.i.i.i = icmp eq i8 %809, 0
  %.not81.i.i.i.i = select i1 %.not.i.i.i.i91.i, i1 %.not8190.i.i.i.i, i1 false
  %.not7.i.i.i.i92.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 0
  br i1 %.not81.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i95.i, label %while.cond.preheader.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2809.exit.i"
  br i1 %.not7.i.i.i.i92.i, label %while.body.i.i.i.i.preheader, label %imp_for.cond.preheader.i.i.i.i

while.body.i.i.i.i.preheader:                     ; preds = %while.cond.preheader.i.i.i.i
  %min.iters.check567 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check567, label %while.body.i.i.i.i.preheader1158, label %vector.ph568

vector.ph568:                                     ; preds = %while.body.i.i.i.i.preheader
  %n.vec570 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -2
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph568
  %index574 = phi i64 [ 0, %vector.ph568 ], [ %index.next576, %vector.body573 ]
  %vec.phi575 = phi double [ 0.000000e+00, %vector.ph568 ], [ %816, %vector.body573 ]
  %810 = or i64 %index574, 1
  %811 = getelementptr double, ptr %805, i64 %index574
  %812 = getelementptr double, ptr %805, i64 %810
  %813 = load double, ptr %811, align 8
  %814 = load double, ptr %812, align 8
  %815 = fadd double %vec.phi575, %813
  %816 = fadd double %815, %814
  %index.next576 = add nuw i64 %index574, 2
  %817 = icmp eq i64 %index.next576, %n.vec570
  br i1 %817, label %middle.block565, label %vector.body573, !llvm.loop !102

middle.block565:                                  ; preds = %vector.body573
  %cmp.n572 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec570
  br i1 %cmp.n572, label %imp_for.cond.preheader.i.i.i.i, label %while.body.i.i.i.i.preheader1158

while.body.i.i.i.i.preheader1158:                 ; preds = %middle.block565, %while.body.i.i.i.i.preheader
  %.unpack.i93.i.i.i.i.ph = phi double [ %816, %middle.block565 ], [ 0.000000e+00, %while.body.i.i.i.i.preheader ]
  %.192.i.i.i.i.ph = phi i64 [ %n.vec570, %middle.block565 ], [ 0, %while.body.i.i.i.i.preheader ]
  br label %while.body.i.i.i.i

imp_for.cond.preheader.i.i.i.i95.i:               ; preds = %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2809.exit.i"
  br i1 %.not7.i.i.i.i92.i, label %for.body.i.i.i97.i.preheader, label %imp_for.cond.preheader.i.i.i.i

for.body.i.i.i97.i.preheader:                     ; preds = %imp_for.cond.preheader.i.i.i.i95.i
  %min.iters.check582 = icmp ne i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  %ident.check579.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i87.i, 1
  %or.cond743 = and i1 %min.iters.check582, %ident.check579.not
  br i1 %or.cond743, label %vector.ph583, label %for.body.i.i.i97.i.preheader1156

vector.ph583:                                     ; preds = %for.body.i.i.i97.i.preheader
  %n.vec585 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -2
  br label %vector.body588

vector.body588:                                   ; preds = %vector.body588, %vector.ph583
  %index589 = phi i64 [ 0, %vector.ph583 ], [ %index.next591, %vector.body588 ]
  %vec.phi590 = phi double [ 0.000000e+00, %vector.ph583 ], [ %824, %vector.body588 ]
  %818 = or i64 %index589, 1
  %819 = getelementptr i8, ptr %805, i64 %index589
  %820 = getelementptr i8, ptr %805, i64 %818
  %821 = load double, ptr %819, align 8
  %822 = load double, ptr %820, align 8
  %823 = fadd double %vec.phi590, %821
  %824 = fadd double %823, %822
  %index.next591 = add nuw i64 %index589, 2
  %825 = icmp eq i64 %index.next591, %n.vec585
  br i1 %825, label %middle.block580, label %vector.body588, !llvm.loop !103

middle.block580:                                  ; preds = %vector.body588
  %cmp.n587 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec585
  br i1 %cmp.n587, label %imp_for.cond.preheader.i.i.i.i, label %for.body.i.i.i97.i.preheader1156

for.body.i.i.i97.i.preheader1156:                 ; preds = %middle.block580, %for.body.i.i.i97.i.preheader
  %.sroa.6.1.i.i.i98.i.ph = phi i64 [ %n.vec585, %middle.block580 ], [ 0, %for.body.i.i.i97.i.preheader ]
  %.unpack.i8895.i.i.i.i.ph = phi double [ %824, %middle.block580 ], [ 0.000000e+00, %for.body.i.i.i97.i.preheader ]
  br label %for.body.i.i.i97.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i, %while.body.i.i.i.i.preheader1158
  %.unpack.i93.i.i.i.i = phi double [ %tmp.i.i.i.i.i93.i, %while.body.i.i.i.i ], [ %.unpack.i93.i.i.i.i.ph, %while.body.i.i.i.i.preheader1158 ]
  %.192.i.i.i.i = phi i64 [ %tmp.i85.i.i.i.i, %while.body.i.i.i.i ], [ %.192.i.i.i.i.ph, %while.body.i.i.i.i.preheader1158 ]
  %826 = getelementptr double, ptr %805, i64 %.192.i.i.i.i
  %827 = load double, ptr %826, align 8
  %tmp.i.i.i.i.i93.i = fadd double %.unpack.i93.i.i.i.i, %827
  %tmp.i85.i.i.i.i = add nuw nsw i64 %.192.i.i.i.i, 1
  %exitcond.not.i.i.i94.i = icmp eq i64 %tmp.i85.i.i.i.i, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i94.i, label %imp_for.cond.preheader.i.i.i.i, label %while.body.i.i.i.i, !llvm.loop !104

for.body.i.i.i97.i:                               ; preds = %for.body.i.i.i97.i, %for.body.i.i.i97.i.preheader1156
  %.sroa.6.1.i.i.i98.i = phi i64 [ %830, %for.body.i.i.i97.i ], [ %.sroa.6.1.i.i.i98.i.ph, %for.body.i.i.i97.i.preheader1156 ]
  %.unpack.i8895.i.i.i.i = phi double [ %tmp.i.i89.i.i.i.i, %for.body.i.i.i97.i ], [ %.unpack.i8895.i.i.i.i.ph, %for.body.i.i.i97.i.preheader1156 ]
  %tmp.i.i.i.i.i.i99.i = mul i64 %.sroa.6.1.i.i.i98.i, %.fca.0.extract.i.i.i.i.i87.i
  %828 = getelementptr i8, ptr %805, i64 %tmp.i.i.i.i.i.i99.i
  %829 = load double, ptr %828, align 8
  %tmp.i.i89.i.i.i.i = fadd double %.unpack.i8895.i.i.i.i, %829
  %830 = add nuw nsw i64 %.sroa.6.1.i.i.i98.i, 1
  %exitcond.not.i106.i.i.i.i = icmp eq i64 %830, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i106.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i, label %for.body.i.i.i97.i, !llvm.loop !105

imp_for.cond.preheader.i.i.i.i:                   ; preds = %for.body.i.i.i97.i, %while.body.i.i.i.i, %middle.block580, %imp_for.cond.preheader.i.i.i.i95.i, %middle.block565, %while.cond.preheader.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi double [ 0.000000e+00, %while.cond.preheader.i.i.i.i ], [ 0.000000e+00, %imp_for.cond.preheader.i.i.i.i95.i ], [ %824, %middle.block580 ], [ %816, %middle.block565 ], [ %tmp.i.i89.i.i.i.i, %for.body.i.i.i97.i ], [ %tmp.i.i.i.i.i93.i, %while.body.i.i.i.i ]
  %831 = tail call ptr @seq_alloc_atomic(i64 %806)
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %imp_for.body.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.thread.i"

imp_for.body.i.i.i.i.preheader:                   ; preds = %imp_for.cond.preheader.i.i.i.i
  %min.iters.check595 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check595, label %imp_for.body.i.i.i.i.preheader1154, label %vector.ph596

vector.ph596:                                     ; preds = %imp_for.body.i.i.i.i.preheader
  %n.vec598 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body601

vector.body601:                                   ; preds = %vector.body601, %vector.ph596
  %index602 = phi i64 [ 0, %vector.ph596 ], [ %index.next603, %vector.body601 ]
  %832 = or i64 %index602, 1
  %833 = getelementptr double, ptr %805, i64 %index602
  %834 = getelementptr double, ptr %805, i64 %832
  %835 = load double, ptr %833, align 8
  %836 = load double, ptr %834, align 8
  %837 = fdiv double %835, %.sroa.0.0.i.i.i.i
  %838 = fdiv double %836, %.sroa.0.0.i.i.i.i
  %839 = getelementptr double, ptr %831, i64 %index602
  %840 = getelementptr double, ptr %831, i64 %832
  store double %837, ptr %839, align 8
  store double %838, ptr %840, align 8
  %index.next603 = add nuw i64 %index602, 2
  %841 = icmp eq i64 %index.next603, %n.vec598
  br i1 %841, label %middle.block593, label %vector.body601, !llvm.loop !106

middle.block593:                                  ; preds = %vector.body601
  %cmp.n600 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec598
  br i1 %cmp.n600, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i", label %imp_for.body.i.i.i.i.preheader1154

imp_for.body.i.i.i.i.preheader1154:               ; preds = %middle.block593, %imp_for.body.i.i.i.i.preheader
  %.ph1155 = phi i64 [ %n.vec598, %middle.block593 ], [ 0, %imp_for.body.i.i.i.i.preheader ]
  br label %imp_for.body.i.i.i.i

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.thread.i": ; preds = %imp_for.cond.preheader.i.i.i.i
  %842 = tail call ptr @seq_alloc_atomic(i64 %806)
  br label %if.exit.i.i.i.i.i.i110.i

imp_for.body.i.i.i.i:                             ; preds = %imp_for.body.i.i.i.i, %imp_for.body.i.i.i.i.preheader1154
  %843 = phi i64 [ %847, %imp_for.body.i.i.i.i ], [ %.ph1155, %imp_for.body.i.i.i.i.preheader1154 ]
  %844 = getelementptr double, ptr %805, i64 %843
  %845 = load double, ptr %844, align 8
  %tmp.i.i.i.i.i.i.i = fdiv double %845, %.sroa.0.0.i.i.i.i
  %846 = getelementptr double, ptr %831, i64 %843
  store double %tmp.i.i.i.i.i.i.i, ptr %846, align 8
  %847 = add nuw nsw i64 %843, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %847, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i", label %imp_for.body.i.i.i.i, !llvm.loop !107

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i": ; preds = %imp_for.body.i.i.i.i, %middle.block593
  %848 = tail call ptr @seq_alloc_atomic(i64 %806)
  br i1 %switch.i.i.i.i.i.i1004.i.i, label %imp_for.body.i.i.i65.i.preheader, label %vector.ph607

vector.ph607:                                     ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i"
  %n.vec609 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph607
  %index613 = phi i64 [ 0, %vector.ph607 ], [ %index.next614, %vector.body612 ]
  %849 = or i64 %index613, 1
  %850 = getelementptr double, ptr %831, i64 %index613
  %851 = getelementptr double, ptr %831, i64 %849
  %852 = load double, ptr %850, align 8
  %853 = load double, ptr %851, align 8
  %854 = fadd double %852, 0x3CB0000000000000
  %855 = fadd double %853, 0x3CB0000000000000
  %856 = getelementptr double, ptr %848, i64 %index613
  %857 = getelementptr double, ptr %848, i64 %849
  store double %854, ptr %856, align 8
  store double %855, ptr %857, align 8
  %index.next614 = add nuw i64 %index613, 2
  %858 = icmp eq i64 %index.next614, %n.vec609
  br i1 %858, label %middle.block604, label %vector.body612, !llvm.loop !108

middle.block604:                                  ; preds = %vector.body612
  %cmp.n611 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec609
  br i1 %cmp.n611, label %if.exit.i.i.i.i.i.i110.i, label %imp_for.body.i.i.i65.i.preheader

imp_for.body.i.i.i65.i.preheader:                 ; preds = %middle.block604, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i"
  %.ph1153 = phi i64 [ %n.vec609, %middle.block604 ], [ 0, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.i" ]
  br label %imp_for.body.i.i.i65.i

imp_for.body.i.i.i65.i:                           ; preds = %imp_for.body.i.i.i65.i, %imp_for.body.i.i.i65.i.preheader
  %859 = phi i64 [ %863, %imp_for.body.i.i.i65.i ], [ %.ph1153, %imp_for.body.i.i.i65.i.preheader ]
  %860 = getelementptr double, ptr %831, i64 %859
  %861 = load double, ptr %860, align 8
  %tmp.i.i.i.i.i.i66.i = fadd double %861, 0x3CB0000000000000
  %862 = getelementptr double, ptr %848, i64 %859
  store double %tmp.i.i.i.i.i.i66.i, ptr %862, align 8
  %863 = add nuw nsw i64 %859, 1
  %exitcond.not.i.i.i67.i = icmp eq i64 %863, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i67.i, label %if.exit.i.i.i.i.i.i110.i, label %imp_for.body.i.i.i65.i, !llvm.loop !109

if.exit.i.i.i.i.i.i110.i:                         ; preds = %imp_for.body.i.i.i65.i, %middle.block604, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.thread.i"
  %864 = phi ptr [ %842, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2319.exit.thread.i" ], [ %848, %middle.block604 ], [ %848, %imp_for.body.i.i.i65.i ]
  %.not.i155196.i.i.i.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -1
  tail call void @llvm.assume(i1 %.not.i155196.i.i.i.i.i)
  %865 = shl i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 3
  %866 = tail call ptr @seq_alloc_atomic(i64 %865)
  %.fr = freeze { i64 } { i64 8 }
  %spec.select.i.i.i.i.i.i114.i = select i1 %tmp.i82.not.i.i.i.i.i88.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i.i.i114.i, 0
  %.fca.0.extract.i83.i.i.i.i.i.i115.i = extractvalue { i64 } %.fr, 0
  %tmp.i82.not.i84.i.i.i.i.i.i116.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i.i.i115.i, 8
  %867 = and i8 %.fca.0.extract2191.i.i.i.i.i.i.i, 1
  %868 = or i1 %tmp.i82.not.i84.i.i.i.i.i.i116.i, %switch.i.i.i.i86.i
  %common.ret.op.i81.i.i.i.i.i.i117.i = select i1 %868, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i.i.i118.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i117.i, 0
  %.not7697.i.i.i.i.i.i.i = icmp eq i8 %867, 0
  %not.switch.i.i.i.i.i.i.i = xor i1 %switch.i.i.i.i86.i, true
  %.not76.i.i.i.i.i.i119.i = select i1 %not.switch.i.i.i.i.i.i.i, i1 %.not7697.i.i.i.i.i.i.i, i1 false
  %869 = and i8 %.fca.0.extract.i.i.i.i.i.i118.i, 1
  %870 = icmp eq i8 %869, 0
  %871 = select i1 %.not76.i.i.i.i.i.i119.i, i1 true, i1 %870
  %common.ret.op.i93.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i86.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.i114.i
  %.fca.1.extract.i.i.i.i.i.i120.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i117.i, 1
  %.fca.1.extract22.i.i.i.i.i.i121.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i.i.i.i, 1
  %872 = and i8 %.fca.1.extract22.i.i.i.i.i.i121.i, 1
  %.not77.i.i.i.i.i.i122.i = icmp eq i8 %872, 0
  %873 = and i8 %.fca.1.extract.i.i.i.i.i.i120.i, 1
  %.not117118.i.i.i.i.i.i = icmp eq i8 %873, 0
  %.not117.i.i.i.i.i.i = select i1 %.not77.i.i.i.i.i.i122.i, i1 true, i1 %.not117118.i.i.i.i.i.i
  %.not.i.i.i.i.i123.i = select i1 %871, i1 %.not117.i.i.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i.i123.i, label %imp_for.cond.preheader.i.i.i.i.i.i102.i, label %imp_for.cond.preheader.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i:               ; preds = %if.exit.i.i.i.i.i.i110.i
  br i1 %.not7.i.i.i.i92.i, label %imp_for.body.i.i.i.i.i125.i.preheader, label %if.exit.i.i.i.i.i

imp_for.body.i.i.i.i.i125.i.preheader:            ; preds = %imp_for.cond.preheader.i.i.i.i.i.i
  %min.iters.check617 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check617, label %imp_for.body.i.i.i.i.i125.i.preheader1150, label %vector.ph618

vector.ph618:                                     ; preds = %imp_for.body.i.i.i.i.i125.i.preheader
  %n.vec620 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 9223372036854775806
  br label %vector.body623

vector.body623:                                   ; preds = %vector.body623, %vector.ph618
  %index624 = phi i64 [ 0, %vector.ph618 ], [ %index.next625, %vector.body623 ]
  %874 = or i64 %index624, 1
  %875 = getelementptr double, ptr %864, i64 %index624
  %876 = getelementptr double, ptr %864, i64 %874
  %877 = load double, ptr %875, align 8
  %878 = load double, ptr %876, align 8
  %879 = tail call double @llvm.log.f64(double %877)
  %880 = tail call double @llvm.log.f64(double %878)
  %881 = getelementptr double, ptr %866, i64 %index624
  %882 = getelementptr double, ptr %866, i64 %874
  store double %879, ptr %881, align 8
  store double %880, ptr %882, align 8
  %index.next625 = add nuw i64 %index624, 2
  %883 = icmp eq i64 %index.next625, %n.vec620
  br i1 %883, label %middle.block615, label %vector.body623, !llvm.loop !110

middle.block615:                                  ; preds = %vector.body623
  %cmp.n622 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec620
  br i1 %cmp.n622, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge", label %imp_for.body.i.i.i.i.i125.i.preheader1150

imp_for.body.i.i.i.i.i125.i.preheader1150:        ; preds = %middle.block615, %imp_for.body.i.i.i.i.i125.i.preheader
  %.ph1151 = phi i64 [ %n.vec620, %middle.block615 ], [ 0, %imp_for.body.i.i.i.i.i125.i.preheader ]
  br label %imp_for.body.i.i.i.i.i125.i

imp_for.cond.preheader.i.i.i.i.i.i102.i:          ; preds = %if.exit.i.i.i.i.i.i110.i
  br i1 %.not7.i.i.i.i92.i, label %for.body.lr.ph.i.i.i.i.i104.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge"

for.body.lr.ph.i.i.i.i.i104.i:                    ; preds = %imp_for.cond.preheader.i.i.i.i.i.i102.i
  %tmp.i.not.i.i.i.i.i.i.i105.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  %.fca.0.extract.i.i109.i.i.i.i.i.i = extractvalue { i64 } %.fr, 0
  %884 = load double, ptr %864, align 8
  %y.i.i.i.i114.us.us.i27.i.i.i.i.i = tail call double @llvm.log.f64(double %884)
  store double %y.i.i.i.i114.us.us.i27.i.i.i.i.i, ptr %866, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i105.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge", label %yield.new2.i197.i.i.i.i.i.i.preheader

yield.new2.i197.i.i.i.i.i.i.preheader:            ; preds = %for.body.lr.ph.i.i.i.i.i104.i
  %885 = add nsw i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -1
  %min.iters.check631 = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 3
  br i1 %min.iters.check631, label %yield.new2.i197.i.i.i.i.i.i.preheader1149, label %vector.scevcheck626

vector.scevcheck626:                              ; preds = %yield.new2.i197.i.i.i.i.i.i.preheader
  %ident.check627 = icmp ne i64 %.fca.0.extract.i.i.i.i.i87.i, 1
  %ident.check628 = icmp ne i64 %.fca.0.extract.i.i109.i.i.i.i.i.i, 1
  %886 = or i1 %ident.check628, %ident.check627
  br i1 %886, label %yield.new2.i197.i.i.i.i.i.i.preheader1149, label %vector.ph632

vector.ph632:                                     ; preds = %vector.scevcheck626
  %n.vec634 = and i64 %885, -2
  br label %vector.body638

vector.body638:                                   ; preds = %vector.body638, %vector.ph632
  %index639 = phi i64 [ 0, %vector.ph632 ], [ %887, %vector.body638 ]
  %offset.idx640 = or i64 %index639, 1
  %887 = add nuw nsw i64 %index639, 2
  %888 = getelementptr i8, ptr %864, i64 %offset.idx640
  %889 = getelementptr i8, ptr %864, i64 %887
  %890 = getelementptr i8, ptr %866, i64 %offset.idx640
  %891 = getelementptr i8, ptr %866, i64 %887
  %892 = load double, ptr %888, align 8
  %893 = load double, ptr %889, align 8
  %894 = tail call double @llvm.log.f64(double %892)
  %895 = tail call double @llvm.log.f64(double %893)
  store double %894, ptr %890, align 8
  store double %895, ptr %891, align 8
  %896 = icmp eq i64 %887, %n.vec634
  br i1 %896, label %middle.block629, label %vector.body638, !llvm.loop !111

middle.block629:                                  ; preds = %vector.body638
  %ind.end635 = or i64 %885, 1
  %cmp.n637 = icmp eq i64 %885, %n.vec634
  br i1 %cmp.n637, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge", label %yield.new2.i197.i.i.i.i.i.i.preheader1149

yield.new2.i197.i.i.i.i.i.i.preheader1149:        ; preds = %middle.block629, %vector.scevcheck626, %yield.new2.i197.i.i.i.i.i.i.preheader
  %.sroa.12.5.i.i.i.i.i107.i.ph = phi i64 [ %ind.end635, %middle.block629 ], [ 1, %yield.new2.i197.i.i.i.i.i.i.preheader ], [ 1, %vector.scevcheck626 ]
  br label %yield.new2.i197.i.i.i.i.i.i

imp_for.body.i.i.i.i.i125.i:                      ; preds = %imp_for.body.i.i.i.i.i125.i, %imp_for.body.i.i.i.i.i125.i.preheader1150
  %897 = phi i64 [ %901, %imp_for.body.i.i.i.i.i125.i ], [ %.ph1151, %imp_for.body.i.i.i.i.i125.i.preheader1150 ]
  %898 = getelementptr double, ptr %864, i64 %897
  %899 = load double, ptr %898, align 8
  %y.i.i.i.i.i.i.i.i.i.i = tail call double @llvm.log.f64(double %899)
  %900 = getelementptr double, ptr %866, i64 %897
  store double %y.i.i.i.i.i.i.i.i.i.i, ptr %900, align 8
  %901 = add nuw nsw i64 %897, 1
  %exitcond.not.i.i.i.i.i126.i = icmp eq i64 %901, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i.i.i126.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge", label %imp_for.body.i.i.i.i.i125.i, !llvm.loop !112

yield.new2.i197.i.i.i.i.i.i:                      ; preds = %yield.new2.i197.i.i.i.i.i.i, %yield.new2.i197.i.i.i.i.i.i.preheader1149
  %.sroa.12.5.i.i.i.i.i107.i = phi i64 [ %905, %yield.new2.i197.i.i.i.i.i.i ], [ %.sroa.12.5.i.i.i.i.i107.i.ph, %yield.new2.i197.i.i.i.i.i.i.preheader1149 ]
  %tmp.i40.i.i.i.i.i.i.i108.i = mul i64 %.sroa.12.5.i.i.i.i.i107.i, %.fca.0.extract.i.i.i.i.i87.i
  %902 = getelementptr i8, ptr %864, i64 %tmp.i40.i.i.i.i.i.i.i108.i
  %tmp.i40.i.i111.i.i.i.i.i.i = mul i64 %.sroa.12.5.i.i.i.i.i107.i, %.fca.0.extract.i.i109.i.i.i.i.i.i
  %903 = getelementptr i8, ptr %866, i64 %tmp.i40.i.i111.i.i.i.i.i.i
  %904 = load double, ptr %902, align 8
  %y.i.i.i.i114.i.i.i.i.i.i = tail call double @llvm.log.f64(double %904)
  store double %y.i.i.i.i114.i.i.i.i.i.i, ptr %903, align 8
  %905 = add nuw nsw i64 %.sroa.12.5.i.i.i.i.i107.i, 1
  %exitcond.not.i202.i.i.i.i.i.i = icmp eq i64 %905, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i202.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge", label %yield.new2.i197.i.i.i.i.i.i, !llvm.loop !113

"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge": ; preds = %yield.new2.i197.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i125.i, %middle.block629, %for.body.lr.ph.i.i.i.i.i104.i, %imp_for.cond.preheader.i.i.i.i.i.i102.i, %middle.block615
  %.pre91 = extractvalue { i64 } %.fr, 0
  %.pre = select i1 %tmp.i82.not.i.i.i.i.i88.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.pre1012 = extractvalue { i8, i8 } %.pre, 0
  %.pre1013 = and i8 %.pre1012, 1
  br label %if.exit.i.i.i.i.i

if.exit.i.i.i.i.i:                                ; preds = %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge", %imp_for.cond.preheader.i.i.i.i.i.i
  %.pre-phi = phi i8 [ %.pre1013, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge" ], [ %867, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %spec.select.i.i.i.i.i.pre-phi = phi { i8, i8 } [ %.pre, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge" ], [ %spec.select.i.i.i.i.i.i114.i, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %.fca.0.extract.i83.i.i.i.i.i.pre-phi = phi i64 [ %.pre91, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2944.exit.i.if.exit.i.i.i.i.i_crit_edge" ], [ %.fca.0.extract.i83.i.i.i.i.i.i115.i, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %tmp.i82.not.i84.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i.i.pre-phi, 8
  %906 = or i1 %switch.i.i.i.i86.i, %tmp.i82.not.i84.i.i.i.i.i
  %common.ret.op.i81.i.i.i.i.i = select i1 %906, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i70.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i, 0
  %.not7697.i.i.i.i.i = icmp ne i8 %.pre-phi, 0
  %.not76.i.i.i.i.i = select i1 %switch.i.i.i.i86.i, i1 true, i1 %.not7697.i.i.i.i.i
  %907 = and i8 %.fca.0.extract.i.i.i.i70.i, 1
  %908 = icmp ne i8 %907, 0
  %909 = select i1 %.not76.i.i.i.i.i, i1 %908, i1 false
  br i1 %909, label %if.true.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i": ; preds = %if.exit.i.i.i.i.i
  %common.ret.op.i93.i.i.i.i.i = select i1 %switch.i.i.i.i86.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.pre-phi
  %.fca.1.extract.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i.i, 1
  %910 = and i8 %.fca.1.extract22.i.i.i.i.i, 1
  %.not77.i.i.i.i.i = icmp eq i8 %910, 0
  %911 = and i8 %.fca.1.extract.i.i.i.i.i, 1
  %.not202.i.i.i.i = icmp eq i8 %911, 0
  %.not.i.i.i.i = select i1 %.not77.i.i.i.i.i, i1 true, i1 %.not202.i.i.i.i
  br i1 %.not.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i68.i, label %if.true.i.i.i.i

if.true.i.i.i.i:                                  ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i", %if.exit.i.i.i.i.i
  %912 = tail call ptr @seq_alloc_atomic(i64 %865)
  br i1 %.not7.i.i.i.i92.i, label %imp_for.body.i.i.i72.i.preheader, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2962.exit"

imp_for.body.i.i.i72.i.preheader:                 ; preds = %if.true.i.i.i.i
  %min.iters.check697 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check697, label %imp_for.body.i.i.i72.i.preheader1147, label %vector.ph698

vector.ph698:                                     ; preds = %imp_for.body.i.i.i72.i.preheader
  %n.vec700 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 9223372036854775806
  br label %vector.body703

vector.body703:                                   ; preds = %vector.body703, %vector.ph698
  %index704 = phi i64 [ 0, %vector.ph698 ], [ %index.next705, %vector.body703 ]
  %913 = or i64 %index704, 1
  %914 = getelementptr double, ptr %831, i64 %index704
  %915 = getelementptr double, ptr %831, i64 %913
  %916 = load double, ptr %914, align 8
  %917 = load double, ptr %915, align 8
  %918 = getelementptr double, ptr %866, i64 %index704
  %919 = getelementptr double, ptr %866, i64 %913
  %920 = load double, ptr %918, align 8
  %921 = load double, ptr %919, align 8
  %922 = fmul double %916, %920
  %923 = fmul double %917, %921
  %924 = getelementptr double, ptr %912, i64 %index704
  %925 = getelementptr double, ptr %912, i64 %913
  store double %922, ptr %924, align 8
  store double %923, ptr %925, align 8
  %index.next705 = add nuw i64 %index704, 2
  %926 = icmp eq i64 %index.next705, %n.vec700
  br i1 %926, label %middle.block695, label %vector.body703, !llvm.loop !114

middle.block695:                                  ; preds = %vector.body703
  %cmp.n702 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec700
  br i1 %cmp.n702, label %while.cond.preheader.i.i.i140.i, label %imp_for.body.i.i.i72.i.preheader1147

imp_for.body.i.i.i72.i.preheader1147:             ; preds = %middle.block695, %imp_for.body.i.i.i72.i.preheader
  %.ph = phi i64 [ %n.vec700, %middle.block695 ], [ 0, %imp_for.body.i.i.i72.i.preheader ]
  br label %imp_for.body.i.i.i72.i

imp_for.cond.preheader.i.i.i.i68.i:               ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2579.exit.i.i.i.i"
  %927 = tail call ptr @seq_alloc_atomic(i64 %865)
  br i1 %.not7.i.i.i.i92.i, label %for.body.lr.ph.i.i.i.i, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2962.exit"

for.body.lr.ph.i.i.i.i:                           ; preds = %imp_for.cond.preheader.i.i.i.i68.i
  %tmp.i.not.i.i.i.i.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  %.fca.0.extract.i.i186.i.i.i.i = extractvalue { i64 } %.fr, 0
  %928 = load double, ptr %831, align 8
  %929 = load double, ptr %866, align 8
  %tmp.i.i.i192.us.us.i.i.i.i = fmul double %928, %929
  store double %tmp.i.i.i192.us.us.i.i.i.i, ptr %927, align 8
  br i1 %tmp.i.not.i.i.i.i.i, label %while.body.i.i.i143.i.preheader748, label %yield.new2.i282.peel.i.i.i.i

yield.new2.i282.peel.i.i.i.i:                     ; preds = %for.body.lr.ph.i.i.i.i
  %930 = add nsw i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -1
  %min.iters.check647 = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 3
  br i1 %min.iters.check647, label %yield.new2.i282.i.i.i.i.preheader, label %vector.scevcheck642

vector.scevcheck642:                              ; preds = %yield.new2.i282.peel.i.i.i.i
  %ident.check643 = icmp ne i64 %.fca.0.extract.i.i.i.i.i87.i, 1
  %ident.check644 = icmp ne i64 %.fca.0.extract.i.i186.i.i.i.i, 1
  %931 = or i1 %ident.check644, %ident.check643
  br i1 %931, label %yield.new2.i282.i.i.i.i.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %vector.scevcheck642
  %n.vec650 = and i64 %930, -2
  br label %vector.body654

vector.body654:                                   ; preds = %vector.body654, %vector.ph648
  %index655 = phi i64 [ 0, %vector.ph648 ], [ %932, %vector.body654 ]
  %offset.idx656 = or i64 %index655, 1
  %932 = add nuw i64 %index655, 2
  %933 = getelementptr i8, ptr %831, i64 %offset.idx656
  %934 = getelementptr i8, ptr %831, i64 %932
  %935 = getelementptr i8, ptr %866, i64 %offset.idx656
  %936 = getelementptr i8, ptr %866, i64 %932
  %937 = shl i64 %offset.idx656, 3
  %938 = shl i64 %932, 3
  %939 = getelementptr i8, ptr %927, i64 %937
  %940 = getelementptr i8, ptr %927, i64 %938
  %941 = load double, ptr %933, align 8
  %942 = load double, ptr %934, align 8
  %943 = load double, ptr %935, align 8
  %944 = load double, ptr %936, align 8
  %945 = fmul double %941, %943
  %946 = fmul double %942, %944
  store double %945, ptr %939, align 8
  store double %946, ptr %940, align 8
  %947 = icmp eq i64 %932, %n.vec650
  br i1 %947, label %middle.block645, label %vector.body654, !llvm.loop !115

middle.block645:                                  ; preds = %vector.body654
  %ind.end651 = or i64 %930, 1
  %cmp.n653 = icmp eq i64 %930, %n.vec650
  br i1 %cmp.n653, label %while.cond.preheader.i.i.i140.i, label %yield.new2.i282.i.i.i.i.preheader

yield.new2.i282.i.i.i.i.preheader:                ; preds = %middle.block645, %vector.scevcheck642, %yield.new2.i282.peel.i.i.i.i
  %.sroa.12.7.i.i.i.i.ph = phi i64 [ %ind.end651, %middle.block645 ], [ 1, %yield.new2.i282.peel.i.i.i.i ], [ 1, %vector.scevcheck642 ]
  br label %yield.new2.i282.i.i.i.i

imp_for.body.i.i.i72.i:                           ; preds = %imp_for.body.i.i.i72.i, %imp_for.body.i.i.i72.i.preheader1147
  %948 = phi i64 [ %954, %imp_for.body.i.i.i72.i ], [ %.ph, %imp_for.body.i.i.i72.i.preheader1147 ]
  %949 = getelementptr double, ptr %831, i64 %948
  %950 = load double, ptr %949, align 8
  %951 = getelementptr double, ptr %866, i64 %948
  %952 = load double, ptr %951, align 8
  %tmp.i.i.i.i.i.i73.i = fmul double %950, %952
  %953 = getelementptr double, ptr %912, i64 %948
  store double %tmp.i.i.i.i.i.i73.i, ptr %953, align 8
  %954 = add nuw nsw i64 %948, 1
  %exitcond.not.i.i.i74.i = icmp eq i64 %954, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i74.i, label %while.cond.preheader.i.i.i140.i, label %imp_for.body.i.i.i72.i, !llvm.loop !116

yield.new2.i282.i.i.i.i:                          ; preds = %yield.new2.i282.i.i.i.i, %yield.new2.i282.i.i.i.i.preheader
  %.sroa.12.7.i.i.i.i = phi i64 [ %960, %yield.new2.i282.i.i.i.i ], [ %.sroa.12.7.i.i.i.i.ph, %yield.new2.i282.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i, %.fca.0.extract.i.i.i.i.i87.i
  %955 = getelementptr i8, ptr %831, i64 %tmp.i40.i.i.i.i.i.i
  %tmp.i40.i.i188.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i, %.fca.0.extract.i.i186.i.i.i.i
  %956 = getelementptr i8, ptr %866, i64 %tmp.i40.i.i188.i.i.i.i
  %tmp.i.i.i191.i.i.i.i = shl i64 %.sroa.12.7.i.i.i.i, 3
  %957 = getelementptr i8, ptr %927, i64 %tmp.i.i.i191.i.i.i.i
  %958 = load double, ptr %955, align 8
  %959 = load double, ptr %956, align 8
  %tmp.i.i.i192.i.i.i.i = fmul double %958, %959
  store double %tmp.i.i.i192.i.i.i.i, ptr %957, align 8
  %960 = add nuw nsw i64 %.sroa.12.7.i.i.i.i, 1
  %exitcond.not.i287.i.i.i.i = icmp eq i64 %960, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i287.i.i.i.i, label %while.cond.preheader.i.i.i140.i, label %yield.new2.i282.i.i.i.i, !llvm.loop !117

while.cond.preheader.i.i.i140.i:                  ; preds = %yield.new2.i282.i.i.i.i, %imp_for.body.i.i.i72.i, %middle.block645, %middle.block695
  %.pn198.i.i.i.i = phi ptr [ %912, %middle.block695 ], [ %927, %middle.block645 ], [ %912, %imp_for.body.i.i.i72.i ], [ %927, %yield.new2.i282.i.i.i.i ]
  br i1 %.not7.i.i.i.i92.i, label %while.body.i.i.i143.i.preheader, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2962.exit"

while.body.i.i.i143.i.preheader:                  ; preds = %while.cond.preheader.i.i.i140.i
  %min.iters.check708 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check708, label %while.body.i.i.i143.i.preheader748, label %vector.ph709

vector.ph709:                                     ; preds = %while.body.i.i.i143.i.preheader
  %n.vec711 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 9223372036854775806
  br label %vector.body714

vector.body714:                                   ; preds = %vector.body714, %vector.ph709
  %index715 = phi i64 [ 0, %vector.ph709 ], [ %index.next717, %vector.body714 ]
  %vec.phi716 = phi double [ 0.000000e+00, %vector.ph709 ], [ %967, %vector.body714 ]
  %961 = or i64 %index715, 1
  %962 = getelementptr double, ptr %.pn198.i.i.i.i, i64 %index715
  %963 = getelementptr double, ptr %.pn198.i.i.i.i, i64 %961
  %964 = load double, ptr %962, align 8
  %965 = load double, ptr %963, align 8
  %966 = fadd double %vec.phi716, %964
  %967 = fadd double %966, %965
  %index.next717 = add nuw i64 %index715, 2
  %968 = icmp eq i64 %index.next717, %n.vec711
  br i1 %968, label %middle.block706, label %vector.body714, !llvm.loop !118

middle.block706:                                  ; preds = %vector.body714
  %cmp.n713 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec711
  br i1 %cmp.n713, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2962.exit", label %while.body.i.i.i143.i.preheader748

while.body.i.i.i143.i.preheader748:               ; preds = %middle.block706, %while.body.i.i.i143.i.preheader, %for.body.lr.ph.i.i.i.i
  %.pn198.i.i.i.i10371040 = phi ptr [ %.pn198.i.i.i.i, %while.body.i.i.i143.i.preheader ], [ %.pn198.i.i.i.i, %middle.block706 ], [ %927, %for.body.lr.ph.i.i.i.i ]
  %.unpack.i93.i.i.i144.i.ph = phi double [ 0.000000e+00, %while.body.i.i.i143.i.preheader ], [ %967, %middle.block706 ], [ 0.000000e+00, %for.body.lr.ph.i.i.i.i ]
  %.192.i.i.i145.i.ph = phi i64 [ 0, %while.body.i.i.i143.i.preheader ], [ %n.vec711, %middle.block706 ], [ 0, %for.body.lr.ph.i.i.i.i ]
  br label %while.body.i.i.i143.i

while.body.i.i.i143.i:                            ; preds = %while.body.i.i.i143.i, %while.body.i.i.i143.i.preheader748
  %.unpack.i93.i.i.i144.i = phi double [ %tmp.i.i.i.i.i146.i, %while.body.i.i.i143.i ], [ %.unpack.i93.i.i.i144.i.ph, %while.body.i.i.i143.i.preheader748 ]
  %.192.i.i.i145.i = phi i64 [ %tmp.i85.i.i.i147.i, %while.body.i.i.i143.i ], [ %.192.i.i.i145.i.ph, %while.body.i.i.i143.i.preheader748 ]
  %969 = getelementptr double, ptr %.pn198.i.i.i.i10371040, i64 %.192.i.i.i145.i
  %970 = load double, ptr %969, align 8
  %tmp.i.i.i.i.i146.i = fadd double %.unpack.i93.i.i.i144.i, %970
  %tmp.i85.i.i.i147.i = add nuw nsw i64 %.192.i.i.i145.i, 1
  %exitcond.not.i.i.i148.i = icmp eq i64 %tmp.i85.i.i.i147.i, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i148.i, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2962.exit", label %while.body.i.i.i143.i, !llvm.loop !119

"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2962.exit": ; preds = %while.body.i.i.i143.i, %middle.block706, %while.cond.preheader.i.i.i140.i, %imp_for.cond.preheader.i.i.i.i68.i, %if.true.i.i.i.i
  %.sroa.0.0.i.i.i141.i = phi double [ 0.000000e+00, %while.cond.preheader.i.i.i140.i ], [ %967, %middle.block706 ], [ 0.000000e+00, %if.true.i.i.i.i ], [ 0.000000e+00, %imp_for.cond.preheader.i.i.i.i68.i ], [ %tmp.i.i.i.i.i146.i, %while.body.i.i.i143.i ]
  %971 = fneg double %.sroa.0.0.i.i.i141.i
  ret double %971
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="seq_alloc" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind memory(readwrite, argmem: read) }
attributes #4 = { nofree nosync nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 2}
!2 = distinct !{!2, !3, !4}
!3 = !{!"llvm.loop.isvectorized", i32 1}
!4 = !{!"llvm.loop.unroll.runtime.disable"}
!5 = distinct !{!5, !3, !4}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3, !4}
!9 = distinct !{!9, !3, !4}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = !{!13}
!13 = distinct !{!13, !14, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume: %coro.handle"}
!14 = distinct !{!14, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume: %coro.handle"}
!17 = distinct !{!17, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume: %coro.handle"}
!20 = distinct !{!20, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume: %coro.handle"}
!23 = distinct !{!23, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume"}
!24 = distinct !{!24, !3, !4}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, !3, !4}
!27 = distinct !{!27, !28, !3, !4}
!28 = !{!"llvm.loop.peeled.count", i32 1}
!29 = distinct !{!29, !28, !3}
!30 = distinct !{!30, !3}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !3, !4}
!33 = distinct !{!33, !28, !3, !4}
!34 = distinct !{!34, !3}
!35 = distinct !{!35, !28, !3}
!36 = distinct !{!36, !3, !4}
!37 = distinct !{!37, !3, !4}
!38 = distinct !{!38, !3}
!39 = distinct !{!39, !3}
!40 = distinct !{!40, !3, !4}
!41 = distinct !{!41, !3}
!42 = distinct !{!42, !3, !4}
!43 = distinct !{!43, !3}
!44 = distinct !{!44, !3, !4}
!45 = distinct !{!45, !3}
!46 = distinct !{!46, !3, !4}
!47 = distinct !{!47, !3}
!48 = distinct !{!48, !3, !4}
!49 = distinct !{!49, !3}
!50 = distinct !{!50, !3, !4}
!51 = distinct !{!51, !3}
!52 = distinct !{!52, !3, !4}
!53 = distinct !{!53, !3}
!54 = !{!55}
!55 = distinct !{!55, !56, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume: %coro.handle"}
!56 = distinct !{!56, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume"}
!57 = distinct !{!57, !28, !3, !4}
!58 = distinct !{!58, !28, !3}
!59 = distinct !{!59, !3, !4}
!60 = distinct !{!60, !28, !3, !4}
!61 = distinct !{!61, !3}
!62 = distinct !{!62, !28, !3}
!63 = distinct !{!63, !3, !4}
!64 = distinct !{!64, !3}
!65 = !{!66}
!66 = distinct !{!66, !67, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume: %coro.handle"}
!67 = distinct !{!67, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume"}
!68 = distinct !{!68, !3, !4}
!69 = distinct !{!69, !3}
!70 = distinct !{!70, !28, !3, !4}
!71 = distinct !{!71, !28, !3}
!72 = distinct !{!72, !3, !4}
!73 = distinct !{!73, !28, !3, !4}
!74 = distinct !{!74, !3}
!75 = distinct !{!75, !28, !3}
!76 = distinct !{!76, !3, !4}
!77 = distinct !{!77, !3}
!78 = distinct !{!78, !3, !4}
!79 = distinct !{!79, !3, !4}
!80 = distinct !{!80, !3}
!81 = distinct !{!81, !3, !4}
!82 = distinct !{!82, !28, !3, !4}
!83 = distinct !{!83, !3}
!84 = distinct !{!84, !3}
!85 = distinct !{!85, !28, !3}
!86 = distinct !{!86, !3, !4}
!87 = distinct !{!87, !3}
!88 = !{!89}
!89 = distinct !{!89, !90, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume: %coro.handle"}
!90 = distinct !{!90, !"std.numpy.util.multirange:0[Tuple[int]].1289.resume"}
!91 = distinct !{!91, !3, !4}
!92 = distinct !{!92, !3}
!93 = distinct !{!93, !3, !4}
!94 = distinct !{!94, !3}
!95 = distinct !{!95, !3, !4}
!96 = distinct !{!96, !28}
!97 = distinct !{!97, !28}
!98 = distinct !{!98, !3}
!99 = !{!100}
!100 = distinct !{!100, !101, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume: %coro.handle"}
!101 = distinct !{!101, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1234.resume"}
!102 = distinct !{!102, !3, !4}
!103 = distinct !{!103, !3, !4}
!104 = distinct !{!104, !3}
!105 = distinct !{!105, !3}
!106 = distinct !{!106, !3, !4}
!107 = distinct !{!107, !3}
!108 = distinct !{!108, !3, !4}
!109 = distinct !{!109, !3}
!110 = distinct !{!110, !3, !4}
!111 = distinct !{!111, !28, !3, !4}
!112 = distinct !{!112, !3}
!113 = distinct !{!113, !28, !3}
!114 = distinct !{!114, !3, !4}
!115 = distinct !{!115, !28, !3, !4}
!116 = distinct !{!116, !3}
!117 = distinct !{!117, !28, !3}
!118 = distinct !{!118, !3, !4}
!119 = distinct !{!119, !3}
