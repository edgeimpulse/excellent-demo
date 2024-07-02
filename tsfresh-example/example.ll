; ModuleID = 'tsfresh-example/example.ll'
source_filename = "/Users/arshajii/Documents/workspace/excellent-demo/tsfresh-example/example.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin22.6.0"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind memory(readwrite, argmem: read)
define hidden fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2266"({ { i64 }, { i64 }, ptr } %0, { { i64 }, { i64 }, ptr } %1) unnamed_addr #3 {
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
  br i1 %.not7.i.i.i.i, label %imp_for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"

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
  br i1 %cmp.n, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %imp_for.body.i.i.i.preheader

imp_for.body.i.i.i.preheader:                     ; preds = %middle.block, %imp_for.body.lr.ph.i.i.i
  %.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  %.158.i.i.i.ph = phi i64 [ %bin.rdx, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  br label %imp_for.body.i.i.i

imp_for.cond.preheader.i.i.i.i:                   ; preds = %entry
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"

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
  br i1 %cmp.n34, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %yield.new2.i66.i.i.i.preheader

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
  br i1 %exitcond.not.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %imp_for.body.i.i.i, !llvm.loop !6

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
  br i1 %exitcond.not.i71.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %yield.new2.i66.i.i.i, !llvm.loop !7

"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i": ; preds = %yield.new2.i66.i.i.i, %imp_for.body.i.i.i, %middle.block27, %imp_for.cond.preheader.i.i.i.i, %middle.block, %imp_for.cond.preheader.i.i.i
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

imp_for.cond4.preheader.i.i:                      ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"
  br i1 %.not7.i.i.i.i, label %imp_for.body5.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2262.exit"

imp_for.body5.lr.ph.i.i:                          ; preds = %imp_for.cond4.preheader.i.i
  %.fca.2.extract.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %.fca.2.extract.i229.i.i = extractvalue { { i64 }, { i64 }, ptr } %0, 2
  br label %imp_for.body5.i.i

imp_for.cond.preheader.i248.i.i:                  ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2262.exit"

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
  br i1 %exitcond.not.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2262.exit", label %imp_for.body5.i.i

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
  br i1 %exitcond.not.i258.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2262.exit", label %for.body.i.i

"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],Optional[NoneType],int].2262.exit": ; preds = %yield.new2.i253.i.i, %if.exit10.i.i, %imp_for.cond.preheader.i248.i.i, %imp_for.cond4.preheader.i.i
  %60 = insertvalue { i64 } undef, i64 %.0.i.i.i, 0
  %61 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %60, 0
  %62 = insertvalue { { i64 }, { i64 }, ptr } %61, { i64 } { i64 8 }, 1
  %63 = insertvalue { { i64 }, { i64 }, ptr } %62, ptr %41, 2
  ret { { i64 }, { i64 }, ptr } %63
}

; Function Attrs: nofree nosync nounwind
define hidden fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2424"({ { i64 }, { i64 }, ptr } %0, { { i64 }, { i64 }, ptr } %1, { { i64 }, { i64 }, ptr } %2) unnamed_addr #4 {
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
  br i1 %.not7.i.i.i.i, label %imp_for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"

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
  br i1 %cmp.n, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %imp_for.body.i.i.i.preheader

imp_for.body.i.i.i.preheader:                     ; preds = %middle.block, %imp_for.body.lr.ph.i.i.i
  %.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  %.158.i.i.i.ph = phi i64 [ %bin.rdx, %middle.block ], [ 0, %imp_for.body.lr.ph.i.i.i ]
  br label %imp_for.body.i.i.i

imp_for.cond.preheader.i.i.i.i:                   ; preds = %entry
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"

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
  br i1 %cmp.n9, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %yield.new2.i66.i.i.i.preheader

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
  br i1 %exitcond.not.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %imp_for.body.i.i.i, !llvm.loop !10

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
  br i1 %exitcond.not.i71.i.i.i, label %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i", label %yield.new2.i66.i.i.i, !llvm.loop !11

"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i": ; preds = %yield.new2.i66.i.i.i, %imp_for.body.i.i.i, %middle.block2, %imp_for.cond.preheader.i.i.i.i, %middle.block, %imp_for.cond.preheader.i.i.i
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

imp_for.cond11.preheader.i.i:                     ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"
  br i1 %.not7.i.i.i.i, label %imp_for.body12.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2420.exit"

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
  br i1 %exitcond346.not.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2420.exit", label %imp_for.body12.us.i.i

imp_for.cond.preheader.i354.i.i:                  ; preds = %"std.numpy.indexing._bool_idx_num_true:0[std.numpy.ndarray.ndarray[bool,1],int].2255.exit.i.i"
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2420.exit"

for.body.lr.ph.i.i:                               ; preds = %imp_for.cond.preheader.i354.i.i
  store i2 1, ptr %.sroa.26.i.i, align 8, !alias.scope !12
  %.fca.2.extract.i.i325.i.i = extractvalue { { i64 }, { i64 }, ptr } %1, 2
  %.fca.2.extract.i327.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr342.i.i, 2
  %.fca.2.extract.i.i331.i.i = extractvalue { { i64 }, { i64 }, ptr } %0, 2
  br i1 %tmp.i297.not.i.i, label %for.body.us.i.i, label %for.body.i.i

for.body.us.i.i:                                  ; preds = %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit372.i.i", %for.body.lr.ph.i.i
  %.sroa.8.1.i.i = phi i64 [ %58, %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit372.i.i" ], [ 0, %for.body.lr.ph.i.i ]
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
  br i1 %switch.i358.i.i, label %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit372.i.i", label %yield.new2.i359.i.i

yield.new2.i359.i.i:                              ; preds = %if.exit23.us.i.i, %for.body.us.i.i
  %57 = add nuw nsw i64 %.sroa.8.1.i.i, 1
  %exitcond.not.i364.i.i = icmp eq i64 %57, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i364.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2420.exit", label %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit372.i.i"

"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit372.i.i": ; preds = %yield.new2.i359.i.i, %if.exit23.us.i.i
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
  br i1 %exitcond.not.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2420.exit", label %imp_for.body12.i.i

for.body.i.i:                                     ; preds = %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit390.i.i", %for.body.lr.ph.i.i
  %.sroa.8.3.i.i = phi i64 [ %74, %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit390.i.i" ], [ 0, %for.body.lr.ph.i.i ]
  %.2339.i.i = phi i64 [ %.3430.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit390.i.i" ], [ 0, %for.body.lr.ph.i.i ]
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
  br i1 %switch.i376.i.i, label %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit390.i.i", label %yield.new2.i377.i.i

yield.new2.i377.i.i:                              ; preds = %if.exit23.i.i, %for.body.i.i
  %.3429.i.i = phi i64 [ %tmp.i306.i.i, %if.exit23.i.i ], [ %.2339.i.i, %for.body.i.i ]
  %73 = add nuw nsw i64 %.sroa.8.3.i.i, 1
  %exitcond.not.i382.i.i = icmp eq i64 %73, %t.fca.0.extract.i.i.i.i.i.i
  br i1 %exitcond.not.i382.i.i, label %"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2420.exit", label %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit390.i.i"

"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit390.i.i": ; preds = %yield.new2.i377.i.i, %if.exit23.i.i
  %.3430.i.i = phi i64 [ %.3429.i.i, %yield.new2.i377.i.i ], [ %tmp.i306.i.i, %if.exit23.i.i ]
  %74 = phi i64 [ %73, %yield.new2.i377.i.i ], [ 0, %if.exit23.i.i ]
  store i2 1, ptr %.sroa.26.i.i, align 8, !alias.scope !18
  br label %for.body.i.i

"std.numpy.indexing._getset:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1],int].2420.exit": ; preds = %yield.new2.i377.i.i, %if.exit17.i.i, %yield.new2.i359.i.i, %imp_for.cond.preheader.i354.i.i, %if.exit17.us.i.i, %imp_for.cond11.preheader.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.26.i.i)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #5

; Function Attrs: nounwind
define double @generate_features({ { i64 }, { i64 }, ptr } %0) local_unnamed_addr #6 {
entry:
  %1 = alloca [24 x i8], align 8
  %2 = alloca [24 x i8], align 8
  %3 = alloca [32 x i8], align 8
  %.sroa.18.i.i.i914.i.i = alloca i8, align 8
  %.sroa.18.i.i.i704.i.i = alloca i8, align 8
  %.sroa.18.i.i.i.i.i = alloca i8, align 8
  %.sroa.36.i.i = alloca i8, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.36.i.i)
  %.fca.2.extract87.i.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %0, 2
  %4 = extractvalue { { i64 }, { i64 }, ptr } %0, 0
  %.fca.0.extract38.i.i.i.i.i = extractvalue { i64 } %4, 0
  %switch.i.i.i75.i = icmp ult i64 %.fca.0.extract38.i.i.i.i.i, 2
  %5 = extractvalue { { i64 }, { i64 }, ptr } %0, 1
  %.fca.0.extract.i.i.i.i76.i = extractvalue { i64 } %5, 0
  %tmp.i82.not.i.i.i.i77.i = icmp eq i64 %.fca.0.extract.i.i.i.i76.i, 8
  %or.cond.i.i.i78.i = select i1 %switch.i.i.i75.i, i1 true, i1 %tmp.i82.not.i.i.i.i77.i
  br i1 %or.cond.i.i.i78.i, label %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1389.exit.i.i", label %imp_for.cond.preheader.i.i.i.i991.i.i

imp_for.cond.preheader.i.i.i.i991.i.i:            ; preds = %entry
  %6 = shl i64 %.fca.0.extract38.i.i.i.i.i, 3
  %7 = tail call ptr @seq_alloc_atomic(i64 %6)
  %.not7.i.i.i.i992.i.i = icmp sgt i64 %.fca.0.extract38.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not7.i.i.i.i992.i.i)
  br label %yield.new2.i66.i.i.i.i.i

yield.new2.i66.i.i.i.i.i:                         ; preds = %yield.new2.i66.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i991.i.i
  %.061.i.i.i.i.i = phi i64 [ %tmp.i.i.i.i.i.i, %yield.new2.i66.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i991.i.i ]
  %tmp.i.i.i.i.i.i993.i.i = mul i64 %.061.i.i.i.i.i, %.fca.0.extract.i.i.i.i76.i
  %8 = getelementptr i8, ptr %.fca.2.extract87.i.i.i.i, i64 %tmp.i.i.i.i.i.i993.i.i
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr i64, ptr %7, i64 %.061.i.i.i.i.i
  store i64 %9, ptr %10, align 4
  %tmp.i.i.i.i.i.i = add nuw nsw i64 %.061.i.i.i.i.i, 1
  %exitcond.not.i71.i.i.i.i.i = icmp eq i64 %tmp.i.i.i.i.i.i, %.fca.0.extract38.i.i.i.i.i
  br i1 %exitcond.not.i71.i.i.i.i.i, label %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1389.exit.i.i", label %yield.new2.i66.i.i.i.i.i

"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1389.exit.i.i": ; preds = %yield.new2.i66.i.i.i.i.i, %entry
  %.fca.2.extract87.pn.i.i.i.i = phi ptr [ %.fca.2.extract87.i.i.i.i, %entry ], [ %7, %yield.new2.i66.i.i.i.i.i ]
  %tmp.i.not.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i.i.i.i, 0
  br i1 %tmp.i.not.i.i.i.i, label %if.false2.i.i.i, label %while.cond.preheader.i.i.i.i.i.i.i.i

while.cond.preheader.i.i.i.i.i.i.i.i:             ; preds = %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1389.exit.i.i"
  %.not7.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not7.i.i.i.i.i.i.i.i.i)
  br label %while.body.i.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i.i:                       ; preds = %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i", %while.cond.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i" ], [ false, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.6101.1.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6101.2.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %.unpack.i93.i.i.i.i.i.i.i.i = phi { i1, i64 } [ %.unpack.i92.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i" ], [ zeroinitializer, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %.191.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i81.i.i.i.i.i.i.i.i, %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i.i.i.i.i ]
  %11 = getelementptr i64, ptr %.fca.2.extract87.pn.i.i.i.i, i64 %.191.i.i.i.i.i.i.i.i
  %12 = load i64, ptr %11, align 4
  %13 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i.i.i.i.i, 0
  %14 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i.i.i.i.i, 1
  %tmp.i.i.i.i.i.i.i.i.i.i = icmp sle i64 %14, %12
  %or.cond.not.i.i.i.i.i.i.i.i.i = select i1 %13, i1 %tmp.i.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i, label %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i", label %if.true.i.i.i.i.i.i.i.i.i

if.true.i.i.i.i.i.i.i.i.i:                        ; preds = %while.body.i.i.i.i.i.i.i.i
  %15 = insertvalue { i1, i64 } { i1 true, i64 undef }, i64 %12, 1
  br label %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i"

"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i ], [ true, %if.true.i.i.i.i.i.i.i.i.i ]
  %.sroa.6101.2.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.6101.1.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i ], [ %12, %if.true.i.i.i.i.i.i.i.i.i ]
  %.unpack.i92.i.i.i.i.i.i.i.i = phi { i1, i64 } [ %.unpack.i93.i.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.i ], [ %15, %if.true.i.i.i.i.i.i.i.i.i ]
  %tmp.i81.i.i.i.i.i.i.i.i = add nuw nsw i64 %.191.i.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %tmp.i81.i.i.i.i.i.i.i.i, %.fca.0.extract38.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %while.cond.preheader.i.i.i.i89.i.i.i.i, label %while.body.i.i.i.i.i.i.i.i

while.cond.preheader.i.i.i.i89.i.i.i.i:           ; preds = %"std.numpy.reductions.MinRedux[int]:std.numpy.reductions.MinRedux.accept:0[std.numpy.reductions.MinRedux[int],int,int].1492.exit.i.i.i.i.i.i.i.i"
  tail call void @llvm.assume(i1 %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i.i.i.i.i)
  br label %while.body.i.i.i.i93.i.i.i.i

while.body.i.i.i.i93.i.i.i.i:                     ; preds = %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i", %while.cond.preheader.i.i.i.i89.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i94.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i101.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i" ], [ false, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %.sroa.6101.1.i.i.i.i95.i.i.i.i = phi i64 [ %.sroa.6101.2.i.i.i.i102.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %.unpack.i93.i.i.i.i96.i.i.i.i = phi { i1, i64 } [ %.unpack.i92.i.i.i.i103.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i" ], [ zeroinitializer, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %.191.i.i.i.i97.i.i.i.i = phi i64 [ %tmp.i81.i.i.i.i104.i.i.i.i, %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i" ], [ 0, %while.cond.preheader.i.i.i.i89.i.i.i.i ]
  %16 = getelementptr i64, ptr %.fca.2.extract87.pn.i.i.i.i, i64 %.191.i.i.i.i97.i.i.i.i
  %17 = load i64, ptr %16, align 4
  %18 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i96.i.i.i.i, 0
  %19 = extractvalue { i1, i64 } %.unpack.i93.i.i.i.i96.i.i.i.i, 1
  %tmp.i.i.i.i.i.i98.i.i.i.i = icmp sge i64 %19, %17
  %or.cond.not.i.i.i.i.i99.i.i.i.i = select i1 %18, i1 %tmp.i.i.i.i.i.i98.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i99.i.i.i.i, label %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i", label %if.true.i.i.i.i.i100.i.i.i.i

if.true.i.i.i.i.i100.i.i.i.i:                     ; preds = %while.body.i.i.i.i93.i.i.i.i
  %20 = insertvalue { i1, i64 } { i1 true, i64 undef }, i64 %17, 1
  br label %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i"

"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i.i.i100.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i
  %.sroa.0.0..sroa.0.0..val.fca.0.load107.i.i.i.i101.i.i.i.i = phi i1 [ %.sroa.0.0..sroa.0.0..val.fca.0.load106.i.i.i.i94.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i ], [ true, %if.true.i.i.i.i.i100.i.i.i.i ]
  %.sroa.6101.2.i.i.i.i102.i.i.i.i = phi i64 [ %.sroa.6101.1.i.i.i.i95.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i ], [ %17, %if.true.i.i.i.i.i100.i.i.i.i ]
  %.unpack.i92.i.i.i.i103.i.i.i.i = phi { i1, i64 } [ %.unpack.i93.i.i.i.i96.i.i.i.i, %while.body.i.i.i.i93.i.i.i.i ], [ %20, %if.true.i.i.i.i.i100.i.i.i.i ]
  %tmp.i81.i.i.i.i104.i.i.i.i = add nuw nsw i64 %.191.i.i.i.i97.i.i.i.i, 1
  %exitcond.not.i.i.i.i105.i.i.i.i = icmp eq i64 %tmp.i81.i.i.i.i104.i.i.i.i, %.fca.0.extract38.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i105.i.i.i.i, label %if.exit.i.i.i.i, label %while.body.i.i.i.i93.i.i.i.i

if.exit.i.i.i.i:                                  ; preds = %"std.numpy.reductions.MaxRedux[int]:std.numpy.reductions.MaxRedux.accept:0[std.numpy.reductions.MaxRedux[int],int,int].1549.exit.i.i.i.i.i.i.i.i"
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

if.false2.i.i.i:                                  ; preds = %if.exit.i.i.i.i, %"std.numpy.statistics._ravel_and_check_weights:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType]].1389.exit.i.i"
  br label %while.cond.preheader.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.false2.i.i.i, %if.exit.i.i.i.i
  %.0109.i.i.i = phi double [ 1.000000e+00, %if.false2.i.i.i ], [ %.166.i.i.i.i, %if.exit.i.i.i.i ]
  %.0.i.i.i = phi double [ 0.000000e+00, %if.false2.i.i.i ], [ %.1.i.i.i.i, %if.exit.i.i.i.i ]
  %tmp.i89.i.i.i.i.i.i = fsub double %.0109.i.i.i, %.0.i.i.i
  %tmp.i91.i.i.i.i.i.i = fdiv double %tmp.i89.i.i.i.i.i.i, 3.000000e+00
  %tmp.i94.i.i.i.i.i.i = fcmp une double %tmp.i91.i.i.i.i.i.i, 0.000000e+00
  %21 = fmul double %tmp.i91.i.i.i.i.i.i, 2.000000e+00
  %tmp.i96.i.i.i.1.i.i.i = fmul double %tmp.i89.i.i.i.i.i.i, 0x3FD5555555555555
  %tmp.i96.i.i.i.2.i.i.i = fmul double %tmp.i89.i.i.i.i.i.i, 0x3FE5555555555555
  %.pn1194.in.i.i = select i1 %tmp.i94.i.i.i.i.i.i, double %tmp.i91.i.i.i.i.i.i, double %tmp.i89.i.i.i.i.i.i
  %tmp.i91.i.i.i.i.pn.i.i = select i1 %tmp.i94.i.i.i.i.i.i, double %tmp.i91.i.i.i.i.i.i, double %tmp.i96.i.i.i.1.i.i.i
  %tmp.i96.i.i.i.2.sink.i.i.i = select i1 %tmp.i94.i.i.i.i.i.i, double %21, double %tmp.i96.i.i.i.2.i.i.i
  %tmp.i97.i.i.i.1.i.sink.i.i = fadd double %.0.i.i.i, %tmp.i91.i.i.i.i.pn.i.i
  %.pn1194.i.i = fmul double %.pn1194.in.i.i, 0.000000e+00
  %tmp.i97.i.i.i.i.sink.i.i = fadd double %.0.i.i.i, %.pn1194.i.i
  store double %tmp.i97.i.i.i.i.sink.i.i, ptr %3, align 8
  %22 = getelementptr inbounds double, ptr %3, i64 1
  store double %tmp.i97.i.i.i.1.i.sink.i.i, ptr %22, align 8
  %tmp.i97.i.i.i.2.i.i.i = fadd double %.0.i.i.i, %tmp.i96.i.i.i.2.sink.i.i.i
  %23 = getelementptr inbounds double, ptr %3, i64 2
  store double %tmp.i97.i.i.i.2.i.i.i, ptr %23, align 8
  %24 = getelementptr inbounds double, ptr %3, i64 3
  store double %.0109.i.i.i, ptr %24, align 8
  %.fr1103.i.i = freeze { { i64 }, { i64 }, ptr } { { i64 } { i64 3 }, { i64 } { i64 8 }, ptr undef }
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %tmp.i86.not98.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i.i.i.i, 0
  br i1 %tmp.i86.not98.i.i.i, label %for.body.lr.ph.i.i, label %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  %.pre1017 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 0
  %.pre1019 = extractvalue { i64 } %.pre1017, 0
  br label %if.exit.i.i.i.i.i.i.i

for.body.lr.ph.i.i:                               ; preds = %while.cond.preheader.i.i.i
  store i2 -2, ptr %.sroa.36.i.i, align 8, !alias.scope !21
  %.fr1097.i.i = freeze { i64 } { i64 8 }
  %.fca.0.extract.i83.i.i.i.i687.i.i = extractvalue { i64 } %.fr1097.i.i, 0
  %tmp.i82.not.i84.i.i.i.i688.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i687.i.i, 8
  %25 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i = extractvalue { i64 } %25, 0
  %switch.i.i.i.i970.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 2
  %26 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.fca.0.extract.i.i.i.i.i971.i.i = extractvalue { i64 } %26, 0
  %tmp.i82.not.i.i.i.i.i972.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i971.i.i, 8
  %spec.select.i.i.i.i973.i.i = select i1 %tmp.i82.not.i.i.i.i.i972.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i974.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i973.i.i, 0
  %27 = and i8 %.fca.0.extract2191.i.i.i.i974.i.i, 1
  %.not7697.i.i.i.i979.i.i = icmp ne i8 %27, 0
  %.not76.i.i.i.i980.i.i = select i1 %switch.i.i.i.i970.i.i, i1 true, i1 %.not7697.i.i.i.i979.i.i
  %common.ret.op.i93.i.i.i.i981.i.i = select i1 %switch.i.i.i.i970.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i973.i.i
  %.fca.1.extract22.i.i.i.i983.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i981.i.i, 1
  %28 = and i8 %.fca.1.extract22.i.i.i.i983.i.i, 1
  %.not77.i.i.i.i984.i.i = icmp eq i8 %28, 0
  %tmp.i.not.i.i.i.i951.i.i = icmp ne i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 1
  %.not7.i.i.i.i953.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 0
  %ident.check356 = icmp ne i64 %.fca.0.extract.i83.i.i.i.i687.i.i, 1
  %min.iters.check = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, 1
  %n.vec = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, -2
  %cmp.n = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, %n.vec
  %.fr1024 = freeze { i64 } { i64 1 }
  %.fca.0.extract.i.i.i.i.i894.i.i = extractvalue { i64 } %.fr1024, 0
  %tmp.i82.not.i.i.i.i.i895.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i894.i.i, 1
  %spec.select.i.i.i.i896.i.i = select i1 %tmp.i82.not.i.i.i.i.i895.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i897.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i896.i.i, 0
  %29 = and i8 %.fca.0.extract2191.i.i.i.i897.i.i, 1
  %.not7697.i.i.i.i902.i.i = icmp ne i8 %29, 0
  %.fca.0.extract.i.i184.i.i.i880.i.i = extractvalue { i64 } %.fr1024, 0
  %ident.check216 = icmp ne i64 %.fca.0.extract.i.i184.i.i.i880.i.i, 1
  %ident.check203.not = icmp eq i64 %.fca.0.extract.i.i184.i.i.i880.i.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i", %for.body.lr.ph.i.i
  %.sroa.28.1.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %.sroa.28.2.i.i, %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i" ]
  %.sroa.6.1.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %.sroa.6.2.i.i, %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i" ]
  %.sroa.32.1.i.i = phi i64 [ undef, %for.body.lr.ph.i.i ], [ %.sroa.32.2.i.i, %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i" ]
  %tmp.i.i.i = add i64 %.sroa.6.1.i.i, 65536
  %.not.i.i.i.i.i.i.i.i = icmp sgt i64 %.sroa.6.1.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.false.i.i.i.i.i.i.i.i, label %if.true.i.i.i.i.i.i.i.i

if.true.i.i.i.i.i.i.i.i:                          ; preds = %for.body.i.i
  %tmp.i90.i.i.i.i.i.i.i.i = add nsw i64 %.sroa.6.1.i.i, %.fca.0.extract38.i.i.i.i.i
  %spec.select137.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i90.i.i.i.i.i.i.i.i, i64 0)
  br label %if.exit.i.i.i.i.i.i.i.i

if.false.i.i.i.i.i.i.i.i:                         ; preds = %for.body.i.i
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.6.1.i.i, i64 %.fca.0.extract38.i.i.i.i.i)
  br label %if.exit.i.i.i.i.i.i.i.i

if.exit.i.i.i.i.i.i.i.i:                          ; preds = %if.false.i.i.i.i.i.i.i.i, %if.true.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %spec.select137.i.i.i.i.i.i.i.i, %if.true.i.i.i.i.i.i.i.i ], [ %spec.select.i.i, %if.false.i.i.i.i.i.i.i.i ]
  %.not78.i.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i.i.i, -1
  br i1 %.not78.i.i.i.i.i.i.i.i, label %if.false11.i.i.i.i.i.i.i.i, label %if.true10.i.i.i.i.i.i.i.i

if.true10.i.i.i.i.i.i.i.i:                        ; preds = %if.exit.i.i.i.i.i.i.i.i
  %tmp.i102.i.i.i.i.i.i.i.i = add nsw i64 %tmp.i.i.i, %.fca.0.extract38.i.i.i.i.i
  %spec.select138.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i102.i.i.i.i.i.i.i.i, i64 0)
  br label %if.exit12.i.i.i.i.i.i.i.i

if.false11.i.i.i.i.i.i.i.i:                       ; preds = %if.exit.i.i.i.i.i.i.i.i
  %spec.select1090.i.i = tail call i64 @llvm.smin.i64(i64 %tmp.i.i.i, i64 %.fca.0.extract38.i.i.i.i.i)
  br label %if.exit12.i.i.i.i.i.i.i.i

if.exit12.i.i.i.i.i.i.i.i:                        ; preds = %if.false11.i.i.i.i.i.i.i.i, %if.true10.i.i.i.i.i.i.i.i
  %.076.i.i.i.i.i.i.i.i = phi i64 [ %spec.select138.i.i.i.i.i.i.i.i, %if.true10.i.i.i.i.i.i.i.i ], [ %spec.select1090.i.i, %if.false11.i.i.i.i.i.i.i.i ]
  %tmp.i116.not.i.i.i.i.i.i.i.i = icmp sgt i64 %.076.i.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i.i
  %tmp.i125.i.i.i.i.i.i.i.i = sub i64 %.076.i.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i.i
  %.pn128.i.i.i.i.i.i.i.i = select i1 %tmp.i116.not.i.i.i.i.i.i.i.i, i64 %tmp.i125.i.i.i.i.i.i.i.i, i64 0
  %tmp.i.i.i.i.i.i82.i = shl i64 %.0.i.i.i.i.i.i.i.i, 3
  %30 = getelementptr i8, ptr %.fca.2.extract87.pn.i.i.i.i, i64 %tmp.i.i.i.i.i.i82.i
  %31 = insertvalue { i64 } undef, i64 %.pn128.i.i.i.i.i.i.i.i, 0
  %32 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %31, 0
  %33 = insertvalue { { i64 }, { i64 }, ptr } %32, { i64 } { i64 8 }, 1
  %34 = insertvalue { { i64 }, { i64 }, ptr } %33, ptr %30, 2
  %35 = tail call ptr @seq_alloc_atomic(i64 %.pn128.i.i.i.i.i.i.i.i)
  %.not7.i.i.i.i.i.i = icmp sgt i64 %.pn128.i.i.i.i.i.i.i.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i576.thread.i.i

imp_for.cond.preheader.i.i.i576.thread.i.i:       ; preds = %if.exit12.i.i.i.i.i.i.i.i
  %36 = tail call ptr @seq_alloc_atomic(i64 %.pn128.i.i.i.i.i.i.i.i)
  br label %if.exit.i.i.i.i.i.i

imp_for.body.i.i.i.i.i:                           ; preds = %imp_for.body.i.i.i.i.i, %if.exit12.i.i.i.i.i.i.i.i
  %37 = phi i64 [ %41, %imp_for.body.i.i.i.i.i ], [ 0, %if.exit12.i.i.i.i.i.i.i.i ]
  %38 = getelementptr i64, ptr %30, i64 %37
  %39 = load i64, ptr %38, align 4
  %y.i.i.i.i.i.i.i = sitofp i64 %39 to double
  %tmp.i.i.i.i.i.i.i.i = fcmp ole double %.0.i.i.i, %y.i.i.i.i.i.i.i
  %res.i.i.i.i.i.i.i.i = zext i1 %tmp.i.i.i.i.i.i.i.i to i8
  %40 = getelementptr i8, ptr %35, i64 %37
  store i8 %res.i.i.i.i.i.i.i.i, ptr %40, align 1
  %41 = add nuw nsw i64 %37, 1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %41, %.pn128.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i576.i.i, label %imp_for.body.i.i.i.i.i

imp_for.cond.preheader.i.i.i576.i.i:              ; preds = %imp_for.body.i.i.i.i.i
  %42 = tail call ptr @seq_alloc_atomic(i64 %.pn128.i.i.i.i.i.i.i.i)
  br label %imp_for.body.i.i.i578.i.i

imp_for.body.i.i.i578.i.i:                        ; preds = %imp_for.body.i.i.i578.i.i, %imp_for.cond.preheader.i.i.i576.i.i
  %43 = phi i64 [ %47, %imp_for.body.i.i.i578.i.i ], [ 0, %imp_for.cond.preheader.i.i.i576.i.i ]
  %44 = getelementptr i64, ptr %30, i64 %43
  %45 = load i64, ptr %44, align 4
  %y.i.i.i.i.i579.i.i = sitofp i64 %45 to double
  %tmp.i.i.i.i.i.i580.i.i = fcmp oge double %.0109.i.i.i, %y.i.i.i.i.i579.i.i
  %res.i.i.i.i.i.i581.i.i = zext i1 %tmp.i.i.i.i.i.i580.i.i to i8
  %46 = getelementptr i8, ptr %42, i64 %43
  store i8 %res.i.i.i.i.i.i581.i.i, ptr %46, align 1
  %47 = add nuw nsw i64 %43, 1
  %exitcond.not.i.i.i582.i.i = icmp eq i64 %47, %.pn128.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i582.i.i, label %if.exit.i.i.i.i.i.i, label %imp_for.body.i.i.i578.i.i

if.exit.i.i.i.i.i.i:                              ; preds = %imp_for.body.i.i.i578.i.i, %imp_for.cond.preheader.i.i.i576.thread.i.i
  %48 = phi ptr [ %36, %imp_for.cond.preheader.i.i.i576.thread.i.i ], [ %42, %imp_for.body.i.i.i578.i.i ]
  %49 = insertvalue { { i64 }, { i64 }, ptr } %32, { i64 } { i64 1 }, 1
  %.fr.i.i = freeze { { i64 }, { i64 }, ptr } %49
  %50 = insertvalue { { i64 }, { i64 }, ptr } %.fr.i.i, ptr %35, 2
  %51 = extractvalue { { i64 }, { i64 }, ptr } %.fr.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i = extractvalue { i64 } %51, 0
  %switch.i.i.i.i.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 2
  %52 = extractvalue { { i64 }, { i64 }, ptr } %.fr.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i.i = extractvalue { i64 } %52, 0
  %tmp.i82.not.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i.i = select i1 %tmp.i82.not.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i.i.i, 0
  %53 = and i8 %.fca.0.extract2191.i.i.i.i.i.i, 1
  %54 = or i1 %switch.i.i.i.i.i.i, %tmp.i82.not.i.i.i.i.i.i.i
  %common.ret.op.i81.i.i.i.i.i.i = select i1 %54, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i594.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i, 0
  %.not7697.i.i.i.i.i.i = icmp ne i8 %53, 0
  %.not76.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, i1 true, i1 %.not7697.i.i.i.i.i.i
  %55 = and i8 %.fca.0.extract.i.i.i.i594.i.i, 1
  %56 = icmp ne i8 %55, 0
  %57 = select i1 %.not76.i.i.i.i.i.i, i1 %56, i1 false
  br i1 %57, label %if.true.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i.i.i"

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i.i.i": ; preds = %if.exit.i.i.i.i.i.i
  %common.ret.op.i93.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.i
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i.i.i, 1
  %58 = and i8 %.fca.1.extract22.i.i.i.i.i.i, 1
  %.not77.i.i.i.i.i.i = icmp eq i8 %58, 0
  %59 = and i8 %.fca.1.extract.i.i.i.i.i.i, 1
  %.not163.i.i.i.i.i = icmp eq i8 %59, 0
  %.not.i.i.i.i.i = select i1 %.not77.i.i.i.i.i.i, i1 true, i1 %.not163.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i592.i.i, label %if.true.i.i.i.i.i

if.true.i.i.i.i.i:                                ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i.i.i", %if.exit.i.i.i.i.i.i
  %.not146169.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not146169.i.i.i.i.i, label %imp_for.body.i.i.i596.i.i.preheader, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i"

imp_for.body.i.i.i596.i.i.preheader:              ; preds = %if.true.i.i.i.i.i
  %min.iters.check438 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check438, label %imp_for.body.i.i.i596.i.i.preheader1201, label %vector.ph439

vector.ph439:                                     ; preds = %imp_for.body.i.i.i596.i.i.preheader
  %n.vec441 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, -2
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph439
  %index445 = phi i64 [ 0, %vector.ph439 ], [ %index.next446, %vector.body444 ]
  %60 = or i64 %index445, 1
  %61 = getelementptr i8, ptr %35, i64 %index445
  %62 = getelementptr i8, ptr %35, i64 %60
  %63 = load i8, ptr %61, align 1
  %64 = load i8, ptr %62, align 1
  %65 = getelementptr i8, ptr %48, i64 %index445
  %66 = getelementptr i8, ptr %48, i64 %60
  %67 = load i8, ptr %65, align 1
  %68 = load i8, ptr %66, align 1
  %69 = and i8 %67, %63
  %70 = and i8 %68, %64
  store i8 %69, ptr %61, align 1
  store i8 %70, ptr %62, align 1
  %index.next446 = add nuw i64 %index445, 2
  %71 = icmp eq i64 %index.next446, %n.vec441
  br i1 %71, label %middle.block436, label %vector.body444, !llvm.loop !24

middle.block436:                                  ; preds = %vector.body444
  %cmp.n443 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, %n.vec441
  br i1 %cmp.n443, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i", label %imp_for.body.i.i.i596.i.i.preheader1201

imp_for.body.i.i.i596.i.i.preheader1201:          ; preds = %middle.block436, %imp_for.body.i.i.i596.i.i.preheader
  %.ph1202 = phi i64 [ %n.vec441, %middle.block436 ], [ 0, %imp_for.body.i.i.i596.i.i.preheader ]
  br label %imp_for.body.i.i.i596.i.i

imp_for.cond.preheader.i.i.i.i592.i.i:            ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i.i.i"
  %.not7.i.i.i.i593.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not7.i.i.i.i593.i.i, label %for.body.lr.ph.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i"

for.body.lr.ph.i.i.i.i.i:                         ; preds = %imp_for.cond.preheader.i.i.i.i592.i.i
  %tmp.i.not.i.i.i.i.not.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 1
  %72 = load i8, ptr %35, align 1
  %73 = load i8, ptr %48, align 1
  %74 = and i8 %73, %72
  store i8 %74, ptr %35, align 1
  br i1 %tmp.i.not.i.i.i.i.not.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i", label %yield.new2.i204.i.i.i.i.i.preheader

yield.new2.i204.i.i.i.i.i.preheader:              ; preds = %for.body.lr.ph.i.i.i.i.i
  %75 = add nsw i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, -1
  %min.iters.check451 = icmp ugt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i, 2
  %or.cond = and i1 %min.iters.check451, %tmp.i82.not.i.i.i.i.i.i.i
  br i1 %or.cond, label %vector.ph452, label %yield.new2.i204.i.i.i.i.i.preheader1203

vector.ph452:                                     ; preds = %yield.new2.i204.i.i.i.i.i.preheader
  %n.vec454 = and i64 %75, -2
  br label %vector.body458

vector.body458:                                   ; preds = %vector.body458, %vector.ph452
  %index459 = phi i64 [ 0, %vector.ph452 ], [ %76, %vector.body458 ]
  %offset.idx460 = or i64 %index459, 1
  %76 = add nuw nsw i64 %index459, 2
  %77 = getelementptr i8, ptr %35, i64 %offset.idx460
  %78 = getelementptr i8, ptr %35, i64 %76
  %79 = getelementptr i8, ptr %48, i64 %offset.idx460
  %80 = getelementptr i8, ptr %48, i64 %76
  %81 = load i8, ptr %77, align 1
  %82 = load i8, ptr %78, align 1
  %83 = load i8, ptr %79, align 1
  %84 = load i8, ptr %80, align 1
  %85 = and i8 %83, %81
  %86 = and i8 %84, %82
  store i8 %85, ptr %77, align 1
  store i8 %86, ptr %78, align 1
  %87 = icmp eq i64 %76, %n.vec454
  br i1 %87, label %middle.block449, label %vector.body458, !llvm.loop !25

middle.block449:                                  ; preds = %vector.body458
  %ind.end455 = or i64 %75, 1
  %cmp.n457 = icmp eq i64 %75, %n.vec454
  br i1 %cmp.n457, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i", label %yield.new2.i204.i.i.i.i.i.preheader1203

yield.new2.i204.i.i.i.i.i.preheader1203:          ; preds = %middle.block449, %yield.new2.i204.i.i.i.i.i.preheader
  %.sroa.12.3.i.i.i.i.i.ph = phi i64 [ %ind.end455, %middle.block449 ], [ 1, %yield.new2.i204.i.i.i.i.i.preheader ]
  br label %yield.new2.i204.i.i.i.i.i

yield.new2.i204.i.i.i.i.i:                        ; preds = %yield.new2.i204.i.i.i.i.i, %yield.new2.i204.i.i.i.i.i.preheader1203
  %.sroa.12.3.i.i.i.i.i = phi i64 [ %93, %yield.new2.i204.i.i.i.i.i ], [ %.sroa.12.3.i.i.i.i.i.ph, %yield.new2.i204.i.i.i.i.i.preheader1203 ]
  %tmp.i40.i.i.us.i.i.i.i.i = mul i64 %.sroa.12.3.i.i.i.i.i, %.fca.0.extract.i.i.i.i.i.i.i
  %88 = getelementptr i8, ptr %35, i64 %tmp.i40.i.i.us.i.i.i.i.i
  %89 = getelementptr i8, ptr %48, i64 %tmp.i40.i.i.us.i.i.i.i.i
  %90 = load i8, ptr %88, align 1
  %91 = load i8, ptr %89, align 1
  %92 = and i8 %91, %90
  store i8 %92, ptr %88, align 1
  %93 = add nuw nsw i64 %.sroa.12.3.i.i.i.i.i, 1
  %exitcond.not.i209.i.i.i.i.i = icmp eq i64 %93, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i209.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i", label %yield.new2.i204.i.i.i.i.i, !llvm.loop !27

imp_for.body.i.i.i596.i.i:                        ; preds = %imp_for.body.i.i.i596.i.i, %imp_for.body.i.i.i596.i.i.preheader1201
  %94 = phi i64 [ %100, %imp_for.body.i.i.i596.i.i ], [ %.ph1202, %imp_for.body.i.i.i596.i.i.preheader1201 ]
  %95 = getelementptr i8, ptr %35, i64 %94
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr i8, ptr %48, i64 %94
  %98 = load i8, ptr %97, align 1
  %99 = and i8 %98, %96
  store i8 %99, ptr %95, align 1
  %100 = add nuw nsw i64 %94, 1
  %exitcond.not.i.i.i597.i.i = icmp eq i64 %100, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i597.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i", label %imp_for.body.i.i.i596.i.i, !llvm.loop !28

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i": ; preds = %imp_for.body.i.i.i596.i.i, %yield.new2.i204.i.i.i.i.i, %middle.block449, %for.body.lr.ph.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i592.i.i, %middle.block436, %if.true.i.i.i.i.i
  tail call void @llvm.assume(i1 %.not7.i.i.i.i.i.i)
  %101 = load i8, ptr %35, align 1
  %exitcond.peel.not.i.i.i.i.i.i.i = icmp eq i64 %.pn128.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.peel.not.i.i.i.i.i.i.i, label %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2221.exit.i.i", label %if.exit6.i.i.i.i.i.i.i

if.exit6.i.i.i.i.i.i.i:                           ; preds = %if.exit6.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i"
  %.sroa.10.1142.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i, %if.exit6.i.i.i.i.i.i.i ], [ %101, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i" ]
  %.0140.i.i.i.i.i.i.i = phi i64 [ %tmp.i129.i.i.i.i.i.i.i, %if.exit6.i.i.i.i.i.i.i ], [ 1, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i" ]
  %102 = getelementptr i8, ptr %35, i64 %.0140.i.i.i.i.i.i.i
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %.sroa.10.1142.i.i.i.i.i.i.i, 1
  %.not.i130.i.i.i.i.i.i.i = icmp eq i8 %104, 0
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not.i130.i.i.i.i.i.i.i, i8 0, i8 %103
  %tmp.i129.i.i.i.i.i.i.i = add nuw nsw i64 %.0140.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %tmp.i129.i.i.i.i.i.i.i, %.pn128.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2221.exit.i.i", label %if.exit6.i.i.i.i.i.i.i, !llvm.loop !29

"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2221.exit.i.i": ; preds = %if.exit6.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i"
  %.sroa.10.0.i.i.i.i.i.i.i = phi i8 [ %101, %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__iand__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2114.exit.i.i" ], [ %spec.select.i.i.i.i.i.i.i.i, %if.exit6.i.i.i.i.i.i.i ]
  %105 = and i8 %.sroa.10.0.i.i.i.i.i.i.i, 1
  %.not.not.i.i = icmp eq i8 %105, 0
  br i1 %.not.not.i.i, label %if.true.i.i, label %if.exit.i.i

imp_for.body.lr.ph.i.i.i.i.loopexit:              ; preds = %yield.new6.i1271.i.i, %yield.new2.i1258.i.i
  %.pre1011 = load double, ptr %22, align 8
  %.pre1012 = load double, ptr %3, align 8
  %.pre1013 = load double, ptr %23, align 8
  %.pre1014 = load double, ptr %24, align 8
  br label %if.exit.i.i.i.i.i.i.i

if.exit.i.i.i.i.i.i.i:                            ; preds = %imp_for.body.lr.ph.i.i.i.i.loopexit, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge
  %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi = phi i64 [ %.pre1019, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %106 = phi double [ %.0109.i.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1014, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %107 = phi double [ %tmp.i97.i.i.i.2.i.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1013, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %108 = phi double [ %tmp.i97.i.i.i.i.sink.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1012, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %109 = phi double [ %tmp.i97.i.i.i.1.i.sink.i.i, %while.cond.preheader.i.i.i.imp_for.body.lr.ph.i.i.i.i_crit_edge ], [ %.pre1011, %imp_for.body.lr.ph.i.i.i.i.loopexit ]
  %tmp.i74.i.i1003.i.i = fsub double %109, %108
  %tmp.i74.i.i1003.i.i.1 = fsub double %107, %109
  %tmp.i74.i.i1003.i.i.2 = fsub double %106, %107
  store double %tmp.i74.i.i1003.i.i, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 8
  store double %tmp.i74.i.i1003.i.i.1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %1, i64 16
  store double %tmp.i74.i.i1003.i.i.2, ptr %.sroa.3.0..sroa_idx, align 8
  %switch.i.i.i.i.i.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 2
  %110 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { i64 } %110, 0
  %tmp.i82.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i, 8
  %spec.select.i.i.i.i.i.i.i = select i1 %tmp.i82.not.i.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2190.i.i.i.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i.i.i.i, 0
  %111 = and i8 %.fca.0.extract2190.i.i.i.i.i.i.i, 1
  %112 = or i1 %switch.i.i.i.i.i.i.i, %tmp.i82.not.i.i.i.i.i.i.i.i
  %common.ret.op.i81.i.i.i.i.i.i.i = select i1 %112, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i.i1011.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i.i, 0
  %.not7696.i.i.i.i.i.i.i = icmp ne i8 %111, 0
  %.not76.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i.i, i1 true, i1 %.not7696.i.i.i.i.i.i.i
  %113 = and i8 %.fca.0.extract.i.i.i.i.i1011.i.i, 1
  %114 = icmp ne i8 %113, 0
  %115 = select i1 %.not76.i.i.i.i.i.i.i, i1 %114, i1 false
  br i1 %115, label %if.true.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2716.exit.i.i.i.i.i.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2716.exit.i.i.i.i.i.i": ; preds = %if.exit.i.i.i.i.i.i.i
  %common.ret.op.i92.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.i.i
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i92.i.i.i.i.i.i.i, 1
  %116 = and i8 %.fca.1.extract22.i.i.i.i.i.i.i, 1
  %.not77.i.i.i.i.i.i.i = icmp eq i8 %116, 0
  %117 = and i8 %.fca.1.extract.i.i.i.i.i.i.i, 1
  %.not203.i.i.i.i.i.i = icmp eq i8 %117, 0
  %.not.i.i.i.i1012.i.i = select i1 %.not77.i.i.i.i.i.i.i, i1 true, i1 %.not203.i.i.i.i.i.i
  br i1 %.not.i.i.i.i1012.i.i, label %imp_for.cond.preheader.i.i.i.i.i.i.i, label %if.true.i.i.i.i.i.i

if.true.i.i.i.i.i.i:                              ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2716.exit.i.i.i.i.i.i", %if.exit.i.i.i.i.i.i.i
  %118 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %119 = tail call ptr @seq_alloc_atomic(i64 %118)
  %.not179213.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 0
  br i1 %.not179213.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i"

imp_for.body.i.i.i.i.i.i.preheader:               ; preds = %if.true.i.i.i.i.i.i
  %min.iters.check517 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check517, label %imp_for.body.i.i.i.i.i.i.preheader1162, label %vector.ph518

vector.ph518:                                     ; preds = %imp_for.body.i.i.i.i.i.i.preheader
  %n.vec520 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph518
  %index524 = phi i64 [ 0, %vector.ph518 ], [ %index.next525, %vector.body523 ]
  %120 = or i64 %index524, 1
  %121 = getelementptr i64, ptr %2, i64 %index524
  %122 = getelementptr i64, ptr %2, i64 %120
  %123 = load i64, ptr %121, align 8
  %124 = load i64, ptr %122, align 8
  %125 = sitofp i64 %123 to double
  %126 = sitofp i64 %124 to double
  %127 = getelementptr double, ptr %1, i64 %index524
  %128 = getelementptr double, ptr %1, i64 %120
  %129 = load double, ptr %127, align 8
  %130 = load double, ptr %128, align 8
  %131 = fdiv double %125, %129
  %132 = fdiv double %126, %130
  %133 = getelementptr double, ptr %119, i64 %index524
  %134 = getelementptr double, ptr %119, i64 %120
  store double %131, ptr %133, align 8
  store double %132, ptr %134, align 8
  %index.next525 = add nuw i64 %index524, 2
  %135 = icmp eq i64 %index.next525, %n.vec520
  br i1 %135, label %middle.block515, label %vector.body523, !llvm.loop !30

middle.block515:                                  ; preds = %vector.body523
  %cmp.n522 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec520
  br i1 %cmp.n522, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i", label %imp_for.body.i.i.i.i.i.i.preheader1162

imp_for.body.i.i.i.i.i.i.preheader1162:           ; preds = %middle.block515, %imp_for.body.i.i.i.i.i.i.preheader
  %.ph1163 = phi i64 [ %n.vec520, %middle.block515 ], [ 0, %imp_for.body.i.i.i.i.i.i.preheader ]
  br label %imp_for.body.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i.i:             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2716.exit.i.i.i.i.i.i"
  %136 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %137 = tail call ptr @seq_alloc_atomic(i64 %136)
  %.not7.i.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i.i, label %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i_crit_edge"

"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i_crit_edge": ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i
  %.pre1020 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.pre1022 = extractvalue { i64 } %.pre1020, 0
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i"

for.body.lr.ph.i.i.i.i.i.i:                       ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i
  %tmp.i.not.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  %138 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 1
  %.fca.0.extract.i.i184.i.i.i.i.i.i = extractvalue { i64 } %138, 0
  %139 = load i64, ptr %2, align 8
  %y.i.i192.us.us.i.i.i.i.i.i = sitofp i64 %139 to double
  %tmp.i.i.i193.us.us.i.i.i.i.i.i = fdiv double %y.i.i192.us.us.i.i.i.i.i.i, %tmp.i74.i.i1003.i.i
  store double %tmp.i.i.i193.us.us.i.i.i.i.i.i, ptr %137, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i", label %yield.new2.i284.peel.i.i.i.i.i.i

yield.new2.i284.peel.i.i.i.i.i.i:                 ; preds = %for.body.lr.ph.i.i.i.i.i.i
  %140 = add nsw i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -1
  %min.iters.check467 = icmp ugt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 2
  %ident.check463.not = icmp eq i64 %.fca.0.extract.i.i184.i.i.i.i.i.i, 1
  %or.cond1070 = and i1 %min.iters.check467, %ident.check463.not
  br i1 %or.cond1070, label %vector.ph468, label %yield.new2.i284.i.i.i.i.i.i.preheader

vector.ph468:                                     ; preds = %yield.new2.i284.peel.i.i.i.i.i.i
  %n.vec470 = and i64 %140, -2
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph468
  %index475 = phi i64 [ 0, %vector.ph468 ], [ %141, %vector.body474 ]
  %offset.idx476 = or i64 %index475, 1
  %141 = add nuw i64 %index475, 2
  %142 = getelementptr i8, ptr %2, i64 %offset.idx476
  %143 = getelementptr i8, ptr %2, i64 %141
  %144 = getelementptr i8, ptr %1, i64 %offset.idx476
  %145 = getelementptr i8, ptr %1, i64 %141
  %146 = shl i64 %offset.idx476, 3
  %147 = shl i64 %141, 3
  %148 = getelementptr i8, ptr %137, i64 %146
  %149 = getelementptr i8, ptr %137, i64 %147
  %150 = load i64, ptr %142, align 4
  %151 = load i64, ptr %143, align 4
  %152 = sitofp i64 %150 to double
  %153 = sitofp i64 %151 to double
  %154 = load double, ptr %144, align 8
  %155 = load double, ptr %145, align 8
  %156 = fdiv double %152, %154
  %157 = fdiv double %153, %155
  store double %156, ptr %148, align 8
  store double %157, ptr %149, align 8
  %158 = icmp eq i64 %141, %n.vec470
  br i1 %158, label %middle.block465, label %vector.body474, !llvm.loop !31

middle.block465:                                  ; preds = %vector.body474
  %ind.end471 = or i64 %140, 1
  %cmp.n473 = icmp eq i64 %140, %n.vec470
  br i1 %cmp.n473, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i", label %yield.new2.i284.i.i.i.i.i.i.preheader

yield.new2.i284.i.i.i.i.i.i.preheader:            ; preds = %middle.block465, %yield.new2.i284.peel.i.i.i.i.i.i
  %.sroa.12.7.i.i.i.i.i.i.ph = phi i64 [ %ind.end471, %middle.block465 ], [ 1, %yield.new2.i284.peel.i.i.i.i.i.i ]
  br label %yield.new2.i284.i.i.i.i.i.i

imp_for.body.i.i.i.i.i.i:                         ; preds = %imp_for.body.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i.preheader1162
  %159 = phi i64 [ %165, %imp_for.body.i.i.i.i.i.i ], [ %.ph1163, %imp_for.body.i.i.i.i.i.i.preheader1162 ]
  %160 = getelementptr i64, ptr %2, i64 %159
  %161 = load i64, ptr %160, align 8
  %y.i.i.i.i.i.i.i.i = sitofp i64 %161 to double
  %162 = getelementptr double, ptr %1, i64 %159
  %163 = load double, ptr %162, align 8
  %tmp.i.i.i.i.i.i.i1014.i.i = fdiv double %y.i.i.i.i.i.i.i.i, %163
  %164 = getelementptr double, ptr %119, i64 %159
  store double %tmp.i.i.i.i.i.i.i1014.i.i, ptr %164, align 8
  %165 = add nuw nsw i64 %159, 1
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %165, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i", label %imp_for.body.i.i.i.i.i.i, !llvm.loop !32

yield.new2.i284.i.i.i.i.i.i:                      ; preds = %yield.new2.i284.i.i.i.i.i.i, %yield.new2.i284.i.i.i.i.i.i.preheader
  %.sroa.12.7.i.i.i.i.i.i = phi i64 [ %171, %yield.new2.i284.i.i.i.i.i.i ], [ %.sroa.12.7.i.i.i.i.i.i.ph, %yield.new2.i284.i.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i.i.i, %.fca.0.extract.i.i184.i.i.i.i.i.i
  %166 = getelementptr i8, ptr %2, i64 %tmp.i40.i.i.i.i.i.i.i.i
  %167 = getelementptr i8, ptr %1, i64 %tmp.i40.i.i.i.i.i.i.i.i
  %tmp.i.i.i191.i.i.i.i.i.i = shl i64 %.sroa.12.7.i.i.i.i.i.i, 3
  %168 = getelementptr i8, ptr %137, i64 %tmp.i.i.i191.i.i.i.i.i.i
  %169 = load i64, ptr %166, align 4
  %y.i.i192.i.i.i.i.i.i = sitofp i64 %169 to double
  %170 = load double, ptr %167, align 8
  %tmp.i.i.i193.i.i.i.i.i.i = fdiv double %y.i.i192.i.i.i.i.i.i, %170
  store double %tmp.i.i.i193.i.i.i.i.i.i, ptr %168, align 8
  %171 = add nuw nsw i64 %.sroa.12.7.i.i.i.i.i.i, 1
  %exitcond.not.i289.i.i.i.i.i.i = icmp eq i64 %171, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i289.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i", label %yield.new2.i284.i.i.i.i.i.i, !llvm.loop !33

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i": ; preds = %yield.new2.i284.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i, %middle.block465, %for.body.lr.ph.i.i.i.i.i.i, %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i_crit_edge", %middle.block515, %if.true.i.i.i.i.i.i
  %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi = phi i64 [ %.pre1022, %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i_crit_edge" ], [ 1, %middle.block465 ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %middle.block515 ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %if.true.i.i.i.i.i.i ], [ %.fca.0.extract.i.i184.i.i.i.i.i.i, %for.body.lr.ph.i.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i ], [ %.fca.0.extract.i.i184.i.i.i.i.i.i, %yield.new2.i284.i.i.i.i.i.i ]
  %.pn199.i.i.i.i.i.i = phi ptr [ %137, %"imp_for.cond.preheader.i.i.i.i.i.i.i.std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i_crit_edge" ], [ %137, %middle.block465 ], [ %119, %middle.block515 ], [ %119, %if.true.i.i.i.i.i.i ], [ %137, %for.body.lr.ph.i.i.i.i.i.i ], [ %119, %imp_for.body.i.i.i.i.i.i ], [ %137, %yield.new2.i284.i.i.i.i.i.i ]
  %switch.i.i.i.i.i.i1004.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 2
  %tmp.i82.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi, 8
  %or.cond.i.i.i.i.i.i.i.i = or i1 %switch.i.i.i.i.i.i1004.i.i, %tmp.i82.not.i.i.i.i.i.i.i.i.i
  %common.ret.op.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i.i57.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i.i.i, 1
  %172 = and i8 %.fca.0.extract.i.i.i.i.i57.i.i.i, 1
  %.not.i.i.i.i.i.i1006.i.i = icmp eq i8 %172, 0
  %173 = and i8 %.fca.1.extract.i.i.i.i.i.i.i.i, 1
  %.not8190.i.i.i.i.i.i.i = icmp eq i8 %173, 0
  %.not81.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i1006.i.i, i1 %.not8190.i.i.i.i.i.i.i, i1 false
  %.not7.i.i.i.i.i.i1007.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 0
  br i1 %.not81.i.i.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i.i.i.i, label %while.cond.preheader.i.i.i.i.i.i.i

while.cond.preheader.i.i.i.i.i.i.i:               ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i"
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %while.body.i.i.i.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i.thread"

while.body.i.i.i.i.i.i.i.preheader:               ; preds = %while.cond.preheader.i.i.i.i.i.i.i
  %min.iters.check528 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check528, label %while.body.i.i.i.i.i.i.i.preheader1158, label %vector.ph529

vector.ph529:                                     ; preds = %while.body.i.i.i.i.i.i.i.preheader
  %n.vec531 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph529
  %index535 = phi i64 [ 0, %vector.ph529 ], [ %index.next538, %vector.body534 ]
  %vec.phi536 = phi i64 [ 0, %vector.ph529 ], [ %179, %vector.body534 ]
  %vec.phi537 = phi i64 [ 0, %vector.ph529 ], [ %180, %vector.body534 ]
  %174 = or i64 %index535, 1
  %175 = getelementptr i64, ptr %2, i64 %index535
  %176 = getelementptr i64, ptr %2, i64 %174
  %177 = load i64, ptr %175, align 8
  %178 = load i64, ptr %176, align 8
  %179 = add i64 %177, %vec.phi536
  %180 = add i64 %178, %vec.phi537
  %index.next538 = add nuw i64 %index535, 2
  %181 = icmp eq i64 %index.next538, %n.vec531
  br i1 %181, label %middle.block526, label %vector.body534, !llvm.loop !34

middle.block526:                                  ; preds = %vector.body534
  %bin.rdx = add i64 %180, %179
  %cmp.n533 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec531
  br i1 %cmp.n533, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i", label %while.body.i.i.i.i.i.i.i.preheader1158

while.body.i.i.i.i.i.i.i.preheader1158:           ; preds = %middle.block526, %while.body.i.i.i.i.i.i.i.preheader
  %.unpack.i93.i.i.i.i.i.i.i.ph = phi i64 [ %bin.rdx, %middle.block526 ], [ 0, %while.body.i.i.i.i.i.i.i.preheader ]
  %.192.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec531, %middle.block526 ], [ 0, %while.body.i.i.i.i.i.i.i.preheader ]
  br label %while.body.i.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i.i.i:           ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[float,1]].2727.exit.i.i.i"
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %for.body.i.i.i.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i.thread"

for.body.i.i.i.i.i.i.i.preheader:                 ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i.i
  %min.iters.check544 = icmp ne i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  %ident.check541.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi, 1
  %or.cond739 = and i1 %min.iters.check544, %ident.check541.not
  br i1 %or.cond739, label %vector.ph545, label %for.body.i.i.i.i.i.i.i.preheader1155

vector.ph545:                                     ; preds = %for.body.i.i.i.i.i.i.i.preheader
  %n.vec547 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph545
  %index551 = phi i64 [ 0, %vector.ph545 ], [ %index.next554, %vector.body550 ]
  %vec.phi552 = phi i64 [ 0, %vector.ph545 ], [ %187, %vector.body550 ]
  %vec.phi553 = phi i64 [ 0, %vector.ph545 ], [ %188, %vector.body550 ]
  %182 = or i64 %index551, 1
  %183 = getelementptr i8, ptr %2, i64 %index551
  %184 = getelementptr i8, ptr %2, i64 %182
  %185 = load i64, ptr %183, align 4
  %186 = load i64, ptr %184, align 4
  %187 = add i64 %185, %vec.phi552
  %188 = add i64 %186, %vec.phi553
  %index.next554 = add nuw i64 %index551, 2
  %189 = icmp eq i64 %index.next554, %n.vec547
  br i1 %189, label %middle.block542, label %vector.body550, !llvm.loop !35

middle.block542:                                  ; preds = %vector.body550
  %bin.rdx555 = add i64 %188, %187
  %cmp.n549 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec547
  br i1 %cmp.n549, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i", label %for.body.i.i.i.i.i.i.i.preheader1155

for.body.i.i.i.i.i.i.i.preheader1155:             ; preds = %middle.block542, %for.body.i.i.i.i.i.i.i.preheader
  %.sroa.6.1.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec547, %middle.block542 ], [ 0, %for.body.i.i.i.i.i.i.i.preheader ]
  %.unpack.i8895.i.i.i.i.i.i.i.ph = phi i64 [ %bin.rdx555, %middle.block542 ], [ 0, %for.body.i.i.i.i.i.i.i.preheader ]
  br label %for.body.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i:                         ; preds = %while.body.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i.preheader1158
  %.unpack.i93.i.i.i.i.i.i.i = phi i64 [ %tmp.i.i.i.i.i.i58.i.i.i, %while.body.i.i.i.i.i.i.i ], [ %.unpack.i93.i.i.i.i.i.i.i.ph, %while.body.i.i.i.i.i.i.i.preheader1158 ]
  %.192.i.i.i.i.i.i.i = phi i64 [ %tmp.i85.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i ], [ %.192.i.i.i.i.i.i.i.ph, %while.body.i.i.i.i.i.i.i.preheader1158 ]
  %190 = getelementptr i64, ptr %2, i64 %.192.i.i.i.i.i.i.i
  %191 = load i64, ptr %190, align 8
  %tmp.i.i.i.i.i.i58.i.i.i = add i64 %191, %.unpack.i93.i.i.i.i.i.i.i
  %tmp.i85.i.i.i.i.i.i.i = add nuw nsw i64 %.192.i.i.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i1009.i.i = icmp eq i64 %tmp.i85.i.i.i.i.i.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i.i.i1009.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i", label %while.body.i.i.i.i.i.i.i, !llvm.loop !36

for.body.i.i.i.i.i.i.i:                           ; preds = %for.body.i.i.i.i.i.i.i, %for.body.i.i.i.i.i.i.i.preheader1155
  %.sroa.6.1.i.i.i.i.i.i.i = phi i64 [ %194, %for.body.i.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i.i.ph, %for.body.i.i.i.i.i.i.i.preheader1155 ]
  %.unpack.i8895.i.i.i.i.i.i.i = phi i64 [ %tmp.i.i89.i.i.i.i.i.i.i, %for.body.i.i.i.i.i.i.i ], [ %.unpack.i8895.i.i.i.i.i.i.i.ph, %for.body.i.i.i.i.i.i.i.preheader1155 ]
  %tmp.i.i.i.i.i.i.i.i1010.i.i = mul i64 %.sroa.6.1.i.i.i.i.i.i.i, %.fca.0.extract.i.i.i.i.i.i.i1005.i.i.pre-phi
  %192 = getelementptr i8, ptr %2, i64 %tmp.i.i.i.i.i.i.i.i1010.i.i
  %193 = load i64, ptr %192, align 4
  %tmp.i.i89.i.i.i.i.i.i.i = add i64 %193, %.unpack.i8895.i.i.i.i.i.i.i
  %194 = add nuw nsw i64 %.sroa.6.1.i.i.i.i.i.i.i, 1
  %exitcond.not.i108.i.i.i.i.i.i.i = icmp eq i64 %194, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i108.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i", label %for.body.i.i.i.i.i.i.i, !llvm.loop !37

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i.thread": ; preds = %imp_for.cond.preheader.i.i.i.i.i.i.i.i, %while.cond.preheader.i.i.i.i.i.i.i
  %195 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %196 = tail call ptr @seq_alloc_atomic(i64 %195)
  br label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2832.exit.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i": ; preds = %for.body.i.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.i, %middle.block542, %middle.block526
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %bin.rdx555, %middle.block542 ], [ %bin.rdx, %middle.block526 ], [ %tmp.i.i89.i.i.i.i.i.i.i, %for.body.i.i.i.i.i.i.i ], [ %tmp.i.i.i.i.i.i58.i.i.i, %while.body.i.i.i.i.i.i.i ]
  %y.i.i.i.i.i48.i.i.i = sitofp i64 %.sroa.0.0.i.i.i.i.i.i.i to double
  %197 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 3
  %198 = tail call ptr @seq_alloc_atomic(i64 %197)
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %imp_for.body.i.i.i51.i.i.i.preheader, label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2832.exit.i"

imp_for.body.i.i.i51.i.i.i.preheader:             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i"
  %min.iters.check559 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check559, label %imp_for.body.i.i.i51.i.i.i.preheader1153, label %vector.ph560

vector.ph560:                                     ; preds = %imp_for.body.i.i.i51.i.i.i.preheader
  %n.vec562 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body565

vector.body565:                                   ; preds = %vector.body565, %vector.ph560
  %index566 = phi i64 [ 0, %vector.ph560 ], [ %index.next567, %vector.body565 ]
  %199 = or i64 %index566, 1
  %200 = getelementptr double, ptr %.pn199.i.i.i.i.i.i, i64 %index566
  %201 = getelementptr double, ptr %.pn199.i.i.i.i.i.i, i64 %199
  %202 = load double, ptr %200, align 8
  %203 = load double, ptr %201, align 8
  %204 = fdiv double %202, %y.i.i.i.i.i48.i.i.i
  %205 = fdiv double %203, %y.i.i.i.i.i48.i.i.i
  %206 = getelementptr double, ptr %198, i64 %index566
  %207 = getelementptr double, ptr %198, i64 %199
  store double %204, ptr %206, align 8
  store double %205, ptr %207, align 8
  %index.next567 = add nuw i64 %index566, 2
  %208 = icmp eq i64 %index.next567, %n.vec562
  br i1 %208, label %middle.block557, label %vector.body565, !llvm.loop !38

middle.block557:                                  ; preds = %vector.body565
  %cmp.n564 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec562
  br i1 %cmp.n564, label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2832.exit.i", label %imp_for.body.i.i.i51.i.i.i.preheader1153

imp_for.body.i.i.i51.i.i.i.preheader1153:         ; preds = %middle.block557, %imp_for.body.i.i.i51.i.i.i.preheader
  %.ph1154 = phi i64 [ %n.vec562, %middle.block557 ], [ 0, %imp_for.body.i.i.i51.i.i.i.preheader ]
  br label %imp_for.body.i.i.i51.i.i.i

imp_for.body.i.i.i51.i.i.i:                       ; preds = %imp_for.body.i.i.i51.i.i.i, %imp_for.body.i.i.i51.i.i.i.preheader1153
  %209 = phi i64 [ %213, %imp_for.body.i.i.i51.i.i.i ], [ %.ph1154, %imp_for.body.i.i.i51.i.i.i.preheader1153 ]
  %210 = getelementptr double, ptr %.pn199.i.i.i.i.i.i, i64 %209
  %211 = load double, ptr %210, align 8
  %tmp.i.i.i.i.i.i52.i.i.i = fdiv double %211, %y.i.i.i.i.i48.i.i.i
  %212 = getelementptr double, ptr %198, i64 %209
  store double %tmp.i.i.i.i.i.i52.i.i.i, ptr %212, align 8
  %213 = add nuw nsw i64 %209, 1
  %exitcond.not.i.i.i53.i.i.i = icmp eq i64 %213, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i53.i.i.i, label %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2832.exit.i", label %imp_for.body.i.i.i51.i.i.i, !llvm.loop !39

if.true.i.i:                                      ; preds = %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2221.exit.i.i"
  %214 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2266"({ { i64 }, { i64 }, ptr } %34, { { i64 }, { i64 }, ptr } %50)
  br label %if.exit.i.i

if.exit.i.i:                                      ; preds = %if.true.i.i, %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2221.exit.i.i"
  %.pn.i.i = phi { { i64 }, { i64 }, ptr } [ %214, %if.true.i.i ], [ %34, %"std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]]:std.numpy.ufunc.BinaryUFunc.reduce:0[std.numpy.ufunc.BinaryUFunc[Partial.N00.std.numpy.ndmath._logical_and:0[T1,T2][std.numpy.ndmath._logical_and:0,Tuple,KwTuple.N0],Optional[NoneType]],std.numpy.ndarray.ndarray[bool,1],int,Optional[NoneType],std.numpy.util._NoValue,bool,NoneType,0].2221.exit.i.i" ]
  %215 = extractvalue { { i64 }, { i64 }, ptr } %.pn.i.i, 0
  %.fca.0.extract38.i.i.i.i = extractvalue { i64 } %215, 0
  %216 = shl i64 %.fca.0.extract38.i.i.i.i, 3
  %217 = tail call ptr @seq_alloc_atomic(i64 %216)
  %.not7.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i.i.i, 0
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.thread.i.i"

for.body.lr.ph.i.i.i:                             ; preds = %if.exit.i.i
  %218 = extractvalue { { i64 }, { i64 }, ptr } %.pn.i.i, 1
  %.fca.0.extract.i.i.i1015.i.i = extractvalue { i64 } %218, 0
  %.fca.2.extract.i.i.i1016.i.i = extractvalue { { i64 }, { i64 }, ptr } %.pn.i.i, 2
  br label %yield.new2.i155.i.i.i

yield.new2.i155.i.i.i:                            ; preds = %yield.new2.i155.i.i.i, %for.body.lr.ph.i.i.i
  %.sroa.6.1.i.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %222, %yield.new2.i155.i.i.i ]
  %tmp.i.i.i.i1017.i.i = mul i64 %.sroa.6.1.i.i.i, %.fca.0.extract.i.i.i1015.i.i
  %219 = getelementptr i8, ptr %.fca.2.extract.i.i.i1016.i.i, i64 %tmp.i.i.i.i1017.i.i
  %tmp.i.i.i136.i.i.i = shl i64 %.sroa.6.1.i.i.i, 3
  %220 = getelementptr i8, ptr %217, i64 %tmp.i.i.i136.i.i.i
  %221 = load i64, ptr %219, align 4
  %y.i.i.i.i.i = sitofp i64 %221 to double
  store double %y.i.i.i.i.i, ptr %220, align 8
  %222 = add nuw nsw i64 %.sroa.6.1.i.i.i, 1
  %exitcond.not.i160.i.i.i = icmp eq i64 %222, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i160.i.i.i, label %for.body.i.i.preheader.i84.i, label %yield.new2.i155.i.i.i

for.body.i.i.preheader.i84.i:                     ; preds = %yield.new2.i155.i.i.i
  %223 = tail call ptr @seq_alloc_atomic(i64 %216)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %223, ptr nonnull align 8 %217, i64 %216, i1 false)
  %224 = tail call ptr @seq_alloc_atomic(i64 %216)
  %min.iters.check427 = icmp ult i64 %.fca.0.extract38.i.i.i.i, 2
  br i1 %min.iters.check427, label %imp_for.body.i.i.i.i1021.i.i.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %for.body.i.i.preheader.i84.i
  %n.vec430 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph428
  %index434 = phi i64 [ 0, %vector.ph428 ], [ %index.next435, %vector.body433 ]
  %225 = or i64 %index434, 1
  %226 = getelementptr double, ptr %223, i64 %index434
  %227 = getelementptr double, ptr %223, i64 %225
  %228 = load double, ptr %226, align 8
  %229 = load double, ptr %227, align 8
  %230 = fsub double %228, %.0.i.i.i
  %231 = fsub double %229, %.0.i.i.i
  %232 = getelementptr double, ptr %224, i64 %index434
  %233 = getelementptr double, ptr %224, i64 %225
  store double %230, ptr %232, align 8
  store double %231, ptr %233, align 8
  %index.next435 = add nuw nsw i64 %index434, 2
  %234 = icmp eq i64 %index.next435, %n.vec430
  br i1 %234, label %middle.block425, label %vector.body433, !llvm.loop !40

middle.block425:                                  ; preds = %vector.body433
  %cmp.n432 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec430
  br i1 %cmp.n432, label %imp_for.cond.preheader.i.i.i608.i.i, label %imp_for.body.i.i.i.i1021.i.i.preheader

imp_for.body.i.i.i.i1021.i.i.preheader:           ; preds = %middle.block425, %for.body.i.i.preheader.i84.i
  %.ph1200 = phi i64 [ %n.vec430, %middle.block425 ], [ 0, %for.body.i.i.preheader.i84.i ]
  br label %imp_for.body.i.i.i.i1021.i.i

imp_for.body.i.i.i.i1021.i.i:                     ; preds = %imp_for.body.i.i.i.i1021.i.i, %imp_for.body.i.i.i.i1021.i.i.preheader
  %235 = phi i64 [ %239, %imp_for.body.i.i.i.i1021.i.i ], [ %.ph1200, %imp_for.body.i.i.i.i1021.i.i.preheader ]
  %236 = getelementptr double, ptr %223, i64 %235
  %237 = load double, ptr %236, align 8
  %tmp.i.i.i.i.i.i.i1022.i.i = fsub double %237, %.0.i.i.i
  %238 = getelementptr double, ptr %224, i64 %235
  store double %tmp.i.i.i.i.i.i.i1022.i.i, ptr %238, align 8
  %239 = add nuw nsw i64 %235, 1
  %exitcond.not.i.i.i.i1023.i.i = icmp eq i64 %239, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i.i1023.i.i, label %imp_for.cond.preheader.i.i.i608.i.i, label %imp_for.body.i.i.i.i1021.i.i, !llvm.loop !41

imp_for.cond.preheader.i.i.i608.i.i:              ; preds = %imp_for.body.i.i.i.i1021.i.i, %middle.block425
  %240 = tail call ptr @seq_alloc_atomic(i64 %216)
  br i1 %min.iters.check427, label %imp_for.body.i.i.i610.i.i.preheader, label %vector.ph417

vector.ph417:                                     ; preds = %imp_for.cond.preheader.i.i.i608.i.i
  %n.vec419 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph417
  %index423 = phi i64 [ 0, %vector.ph417 ], [ %index.next424, %vector.body422 ]
  %241 = or i64 %index423, 1
  %242 = getelementptr double, ptr %224, i64 %index423
  %243 = getelementptr double, ptr %224, i64 %241
  %244 = load double, ptr %242, align 8
  %245 = load double, ptr %243, align 8
  %246 = fdiv double %244, %tmp.i89.i.i.i.i.i.i
  %247 = fdiv double %245, %tmp.i89.i.i.i.i.i.i
  %248 = getelementptr double, ptr %240, i64 %index423
  %249 = getelementptr double, ptr %240, i64 %241
  store double %246, ptr %248, align 8
  store double %247, ptr %249, align 8
  %index.next424 = add nuw i64 %index423, 2
  %250 = icmp eq i64 %index.next424, %n.vec419
  br i1 %250, label %middle.block414, label %vector.body422, !llvm.loop !42

middle.block414:                                  ; preds = %vector.body422
  %cmp.n421 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec419
  br i1 %cmp.n421, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i.i", label %imp_for.body.i.i.i610.i.i.preheader

imp_for.body.i.i.i610.i.i.preheader:              ; preds = %middle.block414, %imp_for.cond.preheader.i.i.i608.i.i
  %.ph1199 = phi i64 [ %n.vec419, %middle.block414 ], [ 0, %imp_for.cond.preheader.i.i.i608.i.i ]
  br label %imp_for.body.i.i.i610.i.i

imp_for.body.i.i.i610.i.i:                        ; preds = %imp_for.body.i.i.i610.i.i, %imp_for.body.i.i.i610.i.i.preheader
  %251 = phi i64 [ %255, %imp_for.body.i.i.i610.i.i ], [ %.ph1199, %imp_for.body.i.i.i610.i.i.preheader ]
  %252 = getelementptr double, ptr %224, i64 %251
  %253 = load double, ptr %252, align 8
  %tmp.i.i.i.i.i.i611.i.i = fdiv double %253, %tmp.i89.i.i.i.i.i.i
  %254 = getelementptr double, ptr %240, i64 %251
  store double %tmp.i.i.i.i.i.i611.i.i, ptr %254, align 8
  %255 = add nuw nsw i64 %251, 1
  %exitcond.not.i.i.i612.i.i = icmp eq i64 %255, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i612.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i.i", label %imp_for.body.i.i.i610.i.i, !llvm.loop !43

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i.i": ; preds = %imp_for.body.i.i.i610.i.i, %middle.block414
  %256 = tail call ptr @seq_alloc_atomic(i64 %216)
  br i1 %min.iters.check427, label %imp_for.body.i.i.i625.i.i.preheader, label %vector.ph406

vector.ph406:                                     ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i.i"
  %n.vec408 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body411

vector.body411:                                   ; preds = %vector.body411, %vector.ph406
  %index412 = phi i64 [ 0, %vector.ph406 ], [ %index.next413, %vector.body411 ]
  %257 = or i64 %index412, 1
  %258 = getelementptr double, ptr %240, i64 %index412
  %259 = getelementptr double, ptr %240, i64 %257
  %260 = load double, ptr %258, align 8
  %261 = load double, ptr %259, align 8
  %262 = fmul double %260, 3.000000e+00
  %263 = fmul double %261, 3.000000e+00
  %264 = getelementptr double, ptr %256, i64 %index412
  %265 = getelementptr double, ptr %256, i64 %257
  store double %262, ptr %264, align 8
  store double %263, ptr %265, align 8
  %index.next413 = add nuw i64 %index412, 2
  %266 = icmp eq i64 %index.next413, %n.vec408
  br i1 %266, label %middle.block403, label %vector.body411, !llvm.loop !44

middle.block403:                                  ; preds = %vector.body411
  %cmp.n410 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec408
  br i1 %cmp.n410, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.i.i", label %imp_for.body.i.i.i625.i.i.preheader

imp_for.body.i.i.i625.i.i.preheader:              ; preds = %middle.block403, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i.i"
  %.ph1198 = phi i64 [ %n.vec408, %middle.block403 ], [ 0, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i.i" ]
  br label %imp_for.body.i.i.i625.i.i

imp_for.body.i.i.i625.i.i:                        ; preds = %imp_for.body.i.i.i625.i.i, %imp_for.body.i.i.i625.i.i.preheader
  %267 = phi i64 [ %271, %imp_for.body.i.i.i625.i.i ], [ %.ph1198, %imp_for.body.i.i.i625.i.i.preheader ]
  %268 = getelementptr double, ptr %240, i64 %267
  %269 = load double, ptr %268, align 8
  %tmp.i.i.i.i.i.i626.i.i = fmul double %269, 3.000000e+00
  %270 = getelementptr double, ptr %256, i64 %267
  store double %tmp.i.i.i.i.i.i626.i.i, ptr %270, align 8
  %271 = add nuw nsw i64 %267, 1
  %exitcond.not.i.i.i627.i.i = icmp eq i64 %271, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i627.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.i.i", label %imp_for.body.i.i.i625.i.i, !llvm.loop !45

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.thread.i.i": ; preds = %if.exit.i.i
  %272 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %215, 0
  %273 = insertvalue { { i64 }, { i64 }, ptr } %272, { i64 } { i64 8 }, 1
  %.fr10981204.i.i = freeze { { i64 }, { i64 }, ptr } %273
  %274 = tail call ptr @seq_alloc_atomic(i64 %216)
  %275 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract38.i.i.i.i)
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.i.i": ; preds = %imp_for.body.i.i.i625.i.i, %middle.block403
  %276 = tail call ptr @seq_alloc_atomic(i64 %216)
  br i1 %min.iters.check427, label %yield.new2.i155.i1027.i.i.preheader, label %vector.ph395

vector.ph395:                                     ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.i.i"
  %n.vec397 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph395
  %index401 = phi i64 [ 0, %vector.ph395 ], [ %index.next402, %vector.body400 ]
  %277 = shl i64 %index401, 3
  %278 = or i64 %277, 8
  %279 = getelementptr i8, ptr %256, i64 %277
  %280 = getelementptr i8, ptr %256, i64 %278
  %281 = getelementptr i8, ptr %276, i64 %277
  %282 = getelementptr i8, ptr %276, i64 %278
  %283 = load double, ptr %279, align 8
  %284 = load double, ptr %280, align 8
  %285 = fptosi double %283 to i64
  %286 = fptosi double %284 to i64
  store i64 %285, ptr %281, align 4
  store i64 %286, ptr %282, align 4
  %index.next402 = add nuw i64 %index401, 2
  %287 = icmp eq i64 %index.next402, %n.vec397
  br i1 %287, label %middle.block392, label %vector.body400, !llvm.loop !46

middle.block392:                                  ; preds = %vector.body400
  %cmp.n399 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec397
  br i1 %cmp.n399, label %imp_for.cond.preheader.i.i.i639.i.i, label %yield.new2.i155.i1027.i.i.preheader

yield.new2.i155.i1027.i.i.preheader:              ; preds = %middle.block392, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.i.i"
  %.sroa.6.1.i1028.i.i.ph = phi i64 [ %n.vec397, %middle.block392 ], [ 0, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.i.i" ]
  br label %yield.new2.i155.i1027.i.i

yield.new2.i155.i1027.i.i:                        ; preds = %yield.new2.i155.i1027.i.i, %yield.new2.i155.i1027.i.i.preheader
  %.sroa.6.1.i1028.i.i = phi i64 [ %292, %yield.new2.i155.i1027.i.i ], [ %.sroa.6.1.i1028.i.i.ph, %yield.new2.i155.i1027.i.i.preheader ]
  %tmp.i.i.i.i1029.i.i = shl i64 %.sroa.6.1.i1028.i.i, 3
  %288 = getelementptr i8, ptr %256, i64 %tmp.i.i.i.i1029.i.i
  %289 = getelementptr i8, ptr %276, i64 %tmp.i.i.i.i1029.i.i
  %290 = load double, ptr %288, align 8
  %291 = fptosi double %290 to i64
  store i64 %291, ptr %289, align 4
  %292 = add nuw nsw i64 %.sroa.6.1.i1028.i.i, 1
  %exitcond.not.i160.i1031.i.i = icmp eq i64 %292, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i160.i1031.i.i, label %imp_for.cond.preheader.i.i.i639.i.i, label %yield.new2.i155.i1027.i.i, !llvm.loop !47

imp_for.cond.preheader.i.i.i639.i.i:              ; preds = %yield.new2.i155.i1027.i.i, %middle.block392
  %293 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract38.i.i.i.i)
  br i1 %min.iters.check427, label %imp_for.body.i.i.i641.i.i.preheader, label %vector.ph384

vector.ph384:                                     ; preds = %imp_for.cond.preheader.i.i.i639.i.i
  %n.vec386 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body389

vector.body389:                                   ; preds = %vector.body389, %vector.ph384
  %index390 = phi i64 [ 0, %vector.ph384 ], [ %index.next391, %vector.body389 ]
  %294 = or i64 %index390, 1
  %295 = getelementptr i64, ptr %276, i64 %index390
  %296 = getelementptr i64, ptr %276, i64 %294
  %297 = load i64, ptr %295, align 4
  %298 = load i64, ptr %296, align 4
  %299 = icmp eq i64 %297, 3
  %300 = icmp eq i64 %298, 3
  %301 = zext i1 %299 to i8
  %302 = zext i1 %300 to i8
  %303 = getelementptr i8, ptr %293, i64 %index390
  %304 = getelementptr i8, ptr %293, i64 %294
  store i8 %301, ptr %303, align 1
  store i8 %302, ptr %304, align 1
  %index.next391 = add nuw i64 %index390, 2
  %305 = icmp eq i64 %index.next391, %n.vec386
  br i1 %305, label %middle.block381, label %vector.body389, !llvm.loop !48

middle.block381:                                  ; preds = %vector.body389
  %cmp.n388 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec386
  br i1 %cmp.n388, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i", label %imp_for.body.i.i.i641.i.i.preheader

imp_for.body.i.i.i641.i.i.preheader:              ; preds = %middle.block381, %imp_for.cond.preheader.i.i.i639.i.i
  %.ph1197 = phi i64 [ %n.vec386, %middle.block381 ], [ 0, %imp_for.cond.preheader.i.i.i639.i.i ]
  br label %imp_for.body.i.i.i641.i.i

imp_for.body.i.i.i641.i.i:                        ; preds = %imp_for.body.i.i.i641.i.i, %imp_for.body.i.i.i641.i.i.preheader
  %306 = phi i64 [ %310, %imp_for.body.i.i.i641.i.i ], [ %.ph1197, %imp_for.body.i.i.i641.i.i.preheader ]
  %307 = getelementptr i64, ptr %276, i64 %306
  %308 = load i64, ptr %307, align 4
  %tmp.i.i.i.i.i.i642.i.i = icmp eq i64 %308, 3
  %res.i.i.i.i.i.i643.i.i = zext i1 %tmp.i.i.i.i.i.i642.i.i to i8
  %309 = getelementptr i8, ptr %293, i64 %306
  store i8 %res.i.i.i.i.i.i643.i.i, ptr %309, align 1
  %310 = add nuw nsw i64 %306, 1
  %exitcond.not.i.i.i644.i.i = icmp eq i64 %310, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i644.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i", label %imp_for.body.i.i.i641.i.i, !llvm.loop !49

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i": ; preds = %imp_for.body.i.i.i641.i.i, %middle.block381
  %311 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %215, 0
  %312 = insertvalue { { i64 }, { i64 }, ptr } %311, { i64 } { i64 8 }, 1
  %.fr1098.i.i = freeze { { i64 }, { i64 }, ptr } %312
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.i.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.i.i": ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i", %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.thread.i.i"
  %.fr10981205.i.i = phi { { i64 }, { i64 }, ptr } [ %.fr10981204.i.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.thread.i.i" ], [ %.fr1098.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i" ]
  %313 = phi { { i64 }, { i64 }, ptr } [ %272, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.thread.i.i" ], [ %311, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i" ]
  %314 = phi ptr [ %275, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.thread.i.i" ], [ %293, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i" ]
  %315 = phi ptr [ %274, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__mul__:0[std.numpy.ndarray.ndarray[float,1],int].2364.exit.thread.i.i" ], [ %276, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.loopexit.i.i" ]
  %316 = insertvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, ptr %315, 2
  %317 = insertvalue { { i64 }, { i64 }, ptr } %313, { i64 } { i64 1 }, 1
  %.fr1101.i.i = freeze { { i64 }, { i64 }, ptr } %317
  %318 = insertvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, ptr %314, 2
  %319 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2266"({ { i64 }, { i64 }, ptr } %316, { { i64 }, { i64 }, ptr } %318)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.18.i.i.i.i.i)
  %.fca.2.extract.i.i.i652.i.i = extractvalue { { i64 }, { i64 }, ptr } %319, 2
  %320 = extractvalue { { i64 }, { i64 }, ptr } %319, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i = extractvalue { i64 } %320, 0
  %switch.i.i.i.i654.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, 2
  %321 = extractvalue { { i64 }, { i64 }, ptr } %319, 1
  %.fca.0.extract.i.i.i.i.i655.i.i = extractvalue { i64 } %321, 0
  %tmp.i82.not.i.i.i.i.i656.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i655.i.i, 8
  %or.cond.i.i.i.i.i.i = select i1 %switch.i.i.i.i654.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i656.i.i
  %common.ret.op.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i657.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i658.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i.i, 1
  %322 = and i8 %.fca.0.extract.i.i.i.i657.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %322, 0
  %323 = and i8 %.fca.1.extract.i.i.i.i658.i.i, 1
  %.not73.i.i.i.i.i = icmp eq i8 %323, 0
  %.not.i.i.i659.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not73.i.i.i.i.i, i1 false
  %.not7.i.i.i.i660.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, 0
  br i1 %.not.i.i.i659.i.i, label %imp_for.cond.preheader.i.i.i.i666.i.i, label %imp_for.cond.preheader.i.i.i661.i.i

imp_for.cond.preheader.i.i.i661.i.i:              ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.i.i"
  br i1 %.not7.i.i.i.i660.i.i, label %imp_for.body.i.i.i663.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i"

imp_for.body.i.i.i663.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i661.i.i
  %min.iters.check372 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, 1
  br i1 %min.iters.check372, label %imp_for.body.i.i.i663.i.i.preheader1194, label %vector.ph373

vector.ph373:                                     ; preds = %imp_for.body.i.i.i663.i.i.preheader
  %n.vec375 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, -2
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph373
  %index379 = phi i64 [ 0, %vector.ph373 ], [ %index.next380, %vector.body378 ]
  %324 = or i64 %index379, 1
  %325 = getelementptr i64, ptr %.fca.2.extract.i.i.i652.i.i, i64 %index379
  %326 = getelementptr i64, ptr %.fca.2.extract.i.i.i652.i.i, i64 %324
  %327 = load i64, ptr %325, align 4
  %328 = load i64, ptr %326, align 4
  %329 = add i64 %327, -1
  %330 = add i64 %328, -1
  store i64 %329, ptr %325, align 4
  store i64 %330, ptr %326, align 4
  %index.next380 = add nuw i64 %index379, 2
  %331 = icmp eq i64 %index.next380, %n.vec375
  br i1 %331, label %middle.block370, label %vector.body378, !llvm.loop !50

middle.block370:                                  ; preds = %vector.body378
  %cmp.n377 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i, %n.vec375
  br i1 %cmp.n377, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i", label %imp_for.body.i.i.i663.i.i.preheader1194

imp_for.body.i.i.i663.i.i.preheader1194:          ; preds = %middle.block370, %imp_for.body.i.i.i663.i.i.preheader
  %.ph1195 = phi i64 [ %n.vec375, %middle.block370 ], [ 0, %imp_for.body.i.i.i663.i.i.preheader ]
  br label %imp_for.body.i.i.i663.i.i

imp_for.cond.preheader.i.i.i.i666.i.i:            ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__eq__:1[std.numpy.ndarray.ndarray[int,1],int].2395.exit.i.i"
  br i1 %.not7.i.i.i.i660.i.i, label %for.body.i.i.i668.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i"

imp_for.body.i.i.i663.i.i:                        ; preds = %imp_for.body.i.i.i663.i.i, %imp_for.body.i.i.i663.i.i.preheader1194
  %332 = phi i64 [ %335, %imp_for.body.i.i.i663.i.i ], [ %.ph1195, %imp_for.body.i.i.i663.i.i.preheader1194 ]
  %333 = getelementptr i64, ptr %.fca.2.extract.i.i.i652.i.i, i64 %332
  %334 = load i64, ptr %333, align 4
  %tmp.i.i.i.i.i.i664.i.i = add i64 %334, -1
  store i64 %tmp.i.i.i.i.i.i664.i.i, ptr %333, align 4
  %335 = add nuw nsw i64 %332, 1
  %exitcond.not.i.i.i665.i.i = icmp eq i64 %335, %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i
  br i1 %exitcond.not.i.i.i665.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i", label %imp_for.body.i.i.i663.i.i, !llvm.loop !51

for.body.i.i.i668.i.i:                            ; preds = %for.body.i.i.i668.i.i.backedge, %imp_for.cond.preheader.i.i.i.i666.i.i
  %.sroa.6.1.i.i.i669.i.i = phi i64 [ %.sroa.6.1.i.i.i669.i.i.be, %for.body.i.i.i668.i.i.backedge ], [ 0, %imp_for.cond.preheader.i.i.i.i666.i.i ]
  store i2 1, ptr %.sroa.18.i.i.i.i.i, align 8
  %tmp.i.i.i71.i.i.i.i.i = mul i64 %.sroa.6.1.i.i.i669.i.i, %.fca.0.extract.i.i.i.i.i655.i.i
  %336 = getelementptr i8, ptr %.fca.2.extract.i.i.i652.i.i, i64 %tmp.i.i.i71.i.i.i.i.i
  %337 = load i64, ptr %336, align 4
  %tmp.i.i.i72.i.i.i.i.i = add i64 %337, -1
  store i64 %tmp.i.i.i72.i.i.i.i.i, ptr %336, align 4
  %.sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i.i.i = load i2, ptr %.sroa.18.i.i.i.i.i, align 8, !alias.scope !52
  %switch.i79.i.i.i.i.i = icmp eq i2 %.sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i.i.i, 0
  br i1 %switch.i79.i.i.i.i.i, label %for.body.i.i.i668.i.i.backedge, label %yield.new2.i80.i.i.i.i.i

yield.new2.i80.i.i.i.i.i:                         ; preds = %for.body.i.i.i668.i.i
  %338 = add nuw nsw i64 %.sroa.6.1.i.i.i669.i.i, 1
  %exitcond.not.i85.i.i.i.i.i = icmp eq i64 %338, %t.fca.0.extract.i.i.i.i.i.i.i.i.i653.i.i
  br i1 %exitcond.not.i85.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i", label %for.body.i.i.i668.i.i.backedge

for.body.i.i.i668.i.i.backedge:                   ; preds = %yield.new2.i80.i.i.i.i.i, %for.body.i.i.i668.i.i
  %.sroa.6.1.i.i.i669.i.i.be = phi i64 [ %338, %yield.new2.i80.i.i.i.i.i ], [ 0, %for.body.i.i.i668.i.i ]
  br label %for.body.i.i.i668.i.i

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i": ; preds = %yield.new2.i80.i.i.i.i.i, %imp_for.body.i.i.i663.i.i, %imp_for.cond.preheader.i.i.i.i666.i.i, %middle.block370, %imp_for.cond.preheader.i.i.i661.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.18.i.i.i.i.i)
  tail call fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2424"({ { i64 }, { i64 }, ptr } %316, { { i64 }, { i64 }, ptr } %318, { { i64 }, { i64 }, ptr } %319)
  %339 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 0
  %340 = extractvalue { i64 } %339, 0
  %.not.i.i.i.i.i.i.i = icmp sgt i64 %340, -1
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %341 = shl i64 %340, 3
  %342 = tail call ptr @seq_alloc_atomic(i64 %341)
  %.not7.i.not.i.i.i.i.i.i = icmp eq i64 %340, 0
  br i1 %.not7.i.not.i.i.i.i.i.i, label %if.exit.i.i.i.i681.i.i, label %for.body.lr.ph.split.split.i.i.i.i.i.i

for.body.lr.ph.split.split.i.i.i.i.i.i:           ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i"
  %343 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i1033.i.i = extractvalue { i64 } %343, 0
  %tmp.i.not.i.i.i.i.i.i.i.i = icmp eq i64 %340, 1
  %344 = load i64, ptr %315, align 4
  %345 = lshr i64 %344, 61
  %tmp.i12.i.i.i.i.us413.peel.i.i.i.i.i.i = and i64 %345, 4
  %spec.select.i.i.i.i.us414.peel.i.i.i.i.i.i = add i64 %tmp.i12.i.i.i.i.us413.peel.i.i.i.i.i.i, %344
  %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i.i.i = icmp ult i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i.i.i)
  %tmp.i.i92.i.i.us417.peel.i.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i.i.i, 3
  %346 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.us417.peel.i.i.i.i.i.i
  %347 = load double, ptr %346, align 8
  store double %347, ptr %342, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i.i, label %if.exit.i.i.i.i681.i.i, label %yield.new2.i372.i.i.i.i.i.i.preheader

yield.new2.i372.i.i.i.i.i.i.preheader:            ; preds = %for.body.lr.ph.split.split.i.i.i.i.i.i
  %348 = add nsw i64 %340, -1
  %min.iters.check1124 = icmp ugt i64 %348, 1
  %ident.check1121.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i1033.i.i, 1
  %or.cond1136 = and i1 %min.iters.check1124, %ident.check1121.not
  br i1 %or.cond1136, label %vector.ph1125, label %yield.new2.i372.i.i.i.i.i.i.preheader1193

vector.ph1125:                                    ; preds = %yield.new2.i372.i.i.i.i.i.i.preheader
  %n.vec1127 = and i64 %348, -2
  %ind.end1128 = or i64 %348, 1
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %vector.ph1125
  %index1132 = phi i64 [ 0, %vector.ph1125 ], [ %index.next1134, %vector.body1131 ]
  %offset.idx1133 = or i64 %index1132, 1
  %349 = add i64 %index1132, 2
  %350 = getelementptr i8, ptr %315, i64 %offset.idx1133
  %351 = getelementptr i8, ptr %315, i64 %349
  %352 = load i64, ptr %350, align 4
  %353 = load i64, ptr %351, align 4
  %354 = lshr i64 %352, 61
  %355 = lshr i64 %353, 61
  %356 = and i64 %354, 4
  %357 = and i64 %355, 4
  %358 = add i64 %356, %352
  %359 = add i64 %357, %353
  %360 = icmp ult i64 %358, 4
  %361 = icmp ult i64 %359, 4
  tail call void @llvm.assume(i1 %360)
  tail call void @llvm.assume(i1 %361)
  %362 = shl nuw nsw i64 %358, 3
  %363 = shl nuw nsw i64 %359, 3
  %364 = getelementptr i8, ptr %3, i64 %362
  %365 = getelementptr i8, ptr %3, i64 %363
  %366 = shl i64 %offset.idx1133, 3
  %367 = shl i64 %349, 3
  %368 = getelementptr i8, ptr %342, i64 %366
  %369 = getelementptr i8, ptr %342, i64 %367
  %370 = load double, ptr %364, align 8
  %371 = load double, ptr %365, align 8
  store double %370, ptr %368, align 8
  store double %371, ptr %369, align 8
  %index.next1134 = add nuw i64 %index1132, 2
  %372 = icmp eq i64 %index.next1134, %n.vec1127
  br i1 %372, label %middle.block1122, label %vector.body1131, !llvm.loop !55

middle.block1122:                                 ; preds = %vector.body1131
  %cmp.n1130 = icmp eq i64 %348, %n.vec1127
  br i1 %cmp.n1130, label %if.exit.i.i.i.i681.i.i, label %yield.new2.i372.i.i.i.i.i.i.preheader1193

yield.new2.i372.i.i.i.i.i.i.preheader1193:        ; preds = %middle.block1122, %yield.new2.i372.i.i.i.i.i.i.preheader
  %.sroa.6390.1.i.i.i.i.i.i.ph = phi i64 [ 1, %yield.new2.i372.i.i.i.i.i.i.preheader ], [ %ind.end1128, %middle.block1122 ]
  br label %yield.new2.i372.i.i.i.i.i.i

yield.new2.i372.i.i.i.i.i.i:                      ; preds = %yield.new2.i372.i.i.i.i.i.i, %yield.new2.i372.i.i.i.i.i.i.preheader1193
  %.sroa.6390.1.i.i.i.i.i.i = phi i64 [ %379, %yield.new2.i372.i.i.i.i.i.i ], [ %.sroa.6390.1.i.i.i.i.i.i.ph, %yield.new2.i372.i.i.i.i.i.i.preheader1193 ]
  %tmp.i40.i.i.i.i.i.i1036.i.i = mul i64 %.sroa.6390.1.i.i.i.i.i.i, %.fca.0.extract.i.i.i.i.i.i1033.i.i
  %373 = getelementptr i8, ptr %315, i64 %tmp.i40.i.i.i.i.i.i1036.i.i
  %374 = load i64, ptr %373, align 4
  %375 = lshr i64 %374, 61
  %tmp.i12.i.i.i.i.i.i.i.i.i.i = and i64 %375, 4
  %spec.select.i.i.i.i.i.i.i.i.i.i = add i64 %tmp.i12.i.i.i.i.i.i.i.i.i.i, %374
  %tmp.i15.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.i.i.i.i.i.i)
  %tmp.i.i92.i.i.i.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 3
  %376 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.i.i.i.i.i.i
  %tmp.i.i139.i.i.i.i.i.i.i.i = shl i64 %.sroa.6390.1.i.i.i.i.i.i, 3
  %377 = getelementptr i8, ptr %342, i64 %tmp.i.i139.i.i.i.i.i.i.i.i
  %378 = load double, ptr %376, align 8
  store double %378, ptr %377, align 8
  %379 = add nuw nsw i64 %.sroa.6390.1.i.i.i.i.i.i, 1
  %exitcond.not.i377.i.i.i.i.i.i = icmp eq i64 %379, %340
  br i1 %exitcond.not.i377.i.i.i.i.i.i, label %if.exit.i.i.i.i681.i.i, label %yield.new2.i372.i.i.i.i.i.i, !llvm.loop !56

if.exit.i.i.i.i681.i.i:                           ; preds = %yield.new2.i372.i.i.i.i.i.i, %middle.block1122, %for.body.lr.ph.split.split.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__isub__:0[std.numpy.ndarray.ndarray[int,1],int].2413.exit.i.i"
  %switch.i.i.i.i682.i.i = icmp ult i64 %340, 2
  %380 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i683.i.i = extractvalue { i64 } %380, 0
  %tmp.i82.not.i.i.i.i.i684.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i683.i.i, 8
  %spec.select.i.i.i.i685.i.i = select i1 %tmp.i82.not.i.i.i.i.i684.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i686.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i685.i.i, 0
  %381 = and i8 %.fca.0.extract2191.i.i.i.i686.i.i, 1
  %382 = or i1 %tmp.i82.not.i84.i.i.i.i688.i.i, %switch.i.i.i.i682.i.i
  %common.ret.op.i81.i.i.i.i689.i.i = select i1 %382, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i690.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i689.i.i, 0
  %.not7697.i.i.i.i691.i.i = icmp ne i8 %381, 0
  %.not76.i.i.i.i692.i.i = select i1 %switch.i.i.i.i682.i.i, i1 true, i1 %.not7697.i.i.i.i691.i.i
  %383 = and i8 %.fca.0.extract.i.i.i.i690.i.i, 1
  %384 = icmp ne i8 %383, 0
  %385 = select i1 %.not76.i.i.i.i692.i.i, i1 %384, i1 false
  br i1 %385, label %if.true.i.i.i698.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i.i": ; preds = %if.exit.i.i.i.i681.i.i
  %common.ret.op.i93.i.i.i.i693.i.i = select i1 %switch.i.i.i.i682.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i685.i.i
  %.fca.1.extract.i.i.i.i694.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i689.i.i, 1
  %.fca.1.extract22.i.i.i.i695.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i693.i.i, 1
  %386 = and i8 %.fca.1.extract22.i.i.i.i695.i.i, 1
  %.not77.i.i.i.i696.i.i = icmp eq i8 %386, 0
  %387 = and i8 %.fca.1.extract.i.i.i.i694.i.i, 1
  %.not202.i.i.i.i.i = icmp eq i8 %387, 0
  %.not.i.i.i697.i.i = select i1 %.not77.i.i.i.i696.i.i, i1 true, i1 %.not202.i.i.i.i.i
  br i1 %.not.i.i.i697.i.i, label %imp_for.cond.preheader.i.i.i.i673.i.i, label %if.true.i.i.i698.i.i

if.true.i.i.i698.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i.i", %if.exit.i.i.i.i681.i.i
  %388 = tail call ptr @seq_alloc_atomic(i64 %340)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i", label %imp_for.body.i.i.i700.i.i.preheader

imp_for.body.i.i.i700.i.i.preheader:              ; preds = %if.true.i.i.i698.i.i
  %min.iters.check319 = icmp eq i64 %340, 1
  br i1 %min.iters.check319, label %imp_for.body.i.i.i700.i.i.preheader1190, label %vector.ph320

vector.ph320:                                     ; preds = %imp_for.body.i.i.i700.i.i.preheader
  %n.vec322 = and i64 %340, 9223372036854775806
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph320
  %index326 = phi i64 [ 0, %vector.ph320 ], [ %index.next327, %vector.body325 ]
  %389 = or i64 %index326, 1
  %390 = getelementptr double, ptr %217, i64 %index326
  %391 = getelementptr double, ptr %217, i64 %389
  %392 = load double, ptr %390, align 8
  %393 = load double, ptr %391, align 8
  %394 = getelementptr double, ptr %342, i64 %index326
  %395 = getelementptr double, ptr %342, i64 %389
  %396 = load double, ptr %394, align 8
  %397 = load double, ptr %395, align 8
  %398 = fcmp olt double %392, %396
  %399 = fcmp olt double %393, %397
  %400 = zext i1 %398 to i8
  %401 = zext i1 %399 to i8
  %402 = getelementptr i8, ptr %388, i64 %index326
  %403 = getelementptr i8, ptr %388, i64 %389
  store i8 %400, ptr %402, align 1
  store i8 %401, ptr %403, align 1
  %index.next327 = add nuw i64 %index326, 2
  %404 = icmp eq i64 %index.next327, %n.vec322
  br i1 %404, label %middle.block317, label %vector.body325, !llvm.loop !57

middle.block317:                                  ; preds = %vector.body325
  %cmp.n324 = icmp eq i64 %340, %n.vec322
  br i1 %cmp.n324, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i", label %imp_for.body.i.i.i700.i.i.preheader1190

imp_for.body.i.i.i700.i.i.preheader1190:          ; preds = %middle.block317, %imp_for.body.i.i.i700.i.i.preheader
  %.ph1191 = phi i64 [ %n.vec322, %middle.block317 ], [ 0, %imp_for.body.i.i.i700.i.i.preheader ]
  br label %imp_for.body.i.i.i700.i.i

imp_for.cond.preheader.i.i.i.i673.i.i:            ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i.i"
  %405 = tail call ptr @seq_alloc_atomic(i64 %340)
  %.not7.i.i.i.i675.i.i.not = icmp eq i64 %340, 0
  br i1 %.not7.i.i.i.i675.i.i.not, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i", label %for.body.lr.ph.i.i.i676.i.i

for.body.lr.ph.i.i.i676.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i673.i.i
  %tmp.i.not.i.i.i.i674.i.i = icmp eq i64 %340, 1
  %406 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i184.i.i.i.i.i = extractvalue { i64 } %406, 0
  %407 = load double, ptr %217, align 8
  %408 = load double, ptr %342, align 8
  %tmp.i.i.i191.us.us.i.i.i.i.i = fcmp olt double %407, %408
  %res.i.i.i192.us.us.i.i.i.i.i = zext i1 %tmp.i.i.i191.us.us.i.i.i.i.i to i8
  br i1 %tmp.i.not.i.i.i.i674.i.i, label %yield.new2.i228.i.i.i.preheader.i.i, label %yield.new2.i282.peel.i.i.i.i.i

yield.new2.i228.i.i.i.preheader.i.i:              ; preds = %for.body.lr.ph.i.i.i676.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %405, i8 %res.i.i.i192.us.us.i.i.i.i.i, i64 1, i1 false)
  br label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i"

yield.new2.i282.peel.i.i.i.i.i:                   ; preds = %for.body.lr.ph.i.i.i676.i.i
  store i8 %res.i.i.i192.us.us.i.i.i.i.i, ptr %405, align 1
  %409 = add nsw i64 %340, -1
  %min.iters.check359 = icmp ult i64 %340, 3
  %ident.check355 = icmp ne i64 %.fca.0.extract.i.i184.i.i.i.i.i, 1
  %410 = or i1 %ident.check355, %min.iters.check359
  %or.cond849 = or i1 %ident.check356, %410
  br i1 %or.cond849, label %yield.new2.i282.i.i.i.i.i.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %yield.new2.i282.peel.i.i.i.i.i
  %n.vec362 = and i64 %409, -2
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph360
  %index367 = phi i64 [ 0, %vector.ph360 ], [ %411, %vector.body366 ]
  %offset.idx368 = or i64 %index367, 1
  %411 = add nuw i64 %index367, 2
  %412 = getelementptr i8, ptr %217, i64 %offset.idx368
  %413 = getelementptr i8, ptr %217, i64 %411
  %414 = getelementptr i8, ptr %342, i64 %offset.idx368
  %415 = getelementptr i8, ptr %342, i64 %411
  %416 = getelementptr i8, ptr %405, i64 %offset.idx368
  %417 = getelementptr i8, ptr %405, i64 %411
  %418 = load double, ptr %412, align 8
  %419 = load double, ptr %413, align 8
  %420 = load double, ptr %414, align 8
  %421 = load double, ptr %415, align 8
  %422 = fcmp olt double %418, %420
  %423 = fcmp olt double %419, %421
  %424 = zext i1 %422 to i8
  %425 = zext i1 %423 to i8
  store i8 %424, ptr %416, align 1
  store i8 %425, ptr %417, align 1
  %426 = icmp eq i64 %411, %n.vec362
  br i1 %426, label %middle.block357, label %vector.body366, !llvm.loop !58

middle.block357:                                  ; preds = %vector.body366
  %ind.end363 = or i64 %409, 1
  %cmp.n365 = icmp eq i64 %409, %n.vec362
  br i1 %cmp.n365, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i", label %yield.new2.i282.i.i.i.i.i.preheader

yield.new2.i282.i.i.i.i.i.preheader:              ; preds = %middle.block357, %yield.new2.i282.peel.i.i.i.i.i
  %.sroa.12.7.i.i.i.i.i.ph = phi i64 [ %ind.end363, %middle.block357 ], [ 1, %yield.new2.i282.peel.i.i.i.i.i ]
  br label %yield.new2.i282.i.i.i.i.i

imp_for.body.i.i.i700.i.i:                        ; preds = %imp_for.body.i.i.i700.i.i, %imp_for.body.i.i.i700.i.i.preheader1190
  %427 = phi i64 [ %433, %imp_for.body.i.i.i700.i.i ], [ %.ph1191, %imp_for.body.i.i.i700.i.i.preheader1190 ]
  %428 = getelementptr double, ptr %217, i64 %427
  %429 = load double, ptr %428, align 8
  %430 = getelementptr double, ptr %342, i64 %427
  %431 = load double, ptr %430, align 8
  %tmp.i.i.i.i.i.i701.i.i = fcmp olt double %429, %431
  %res.i.i.i.i.i.i702.i.i = zext i1 %tmp.i.i.i.i.i.i701.i.i to i8
  %432 = getelementptr i8, ptr %388, i64 %427
  store i8 %res.i.i.i.i.i.i702.i.i, ptr %432, align 1
  %433 = add nuw nsw i64 %427, 1
  %exitcond.not.i.i.i703.i.i = icmp eq i64 %433, %340
  br i1 %exitcond.not.i.i.i703.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i", label %imp_for.body.i.i.i700.i.i, !llvm.loop !59

yield.new2.i282.i.i.i.i.i:                        ; preds = %yield.new2.i282.i.i.i.i.i, %yield.new2.i282.i.i.i.i.i.preheader
  %.sroa.12.7.i.i.i.i.i = phi i64 [ %439, %yield.new2.i282.i.i.i.i.i ], [ %.sroa.12.7.i.i.i.i.i.ph, %yield.new2.i282.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i.i, %.fca.0.extract.i.i184.i.i.i.i.i
  %434 = getelementptr i8, ptr %217, i64 %tmp.i40.i.i.i.i.i.i.i
  %tmp.i40.i.i188.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i.i, %.fca.0.extract.i83.i.i.i.i687.i.i
  %435 = getelementptr i8, ptr %342, i64 %tmp.i40.i.i188.i.i.i.i.i
  %436 = getelementptr i8, ptr %405, i64 %.sroa.12.7.i.i.i.i.i
  %437 = load double, ptr %434, align 8
  %438 = load double, ptr %435, align 8
  %tmp.i.i.i191.i.i.i.i.i = fcmp olt double %437, %438
  %res.i.i.i192.i.i.i.i.i = zext i1 %tmp.i.i.i191.i.i.i.i.i to i8
  store i8 %res.i.i.i192.i.i.i.i.i, ptr %436, align 1
  %439 = add nuw nsw i64 %.sroa.12.7.i.i.i.i.i, 1
  %exitcond.not.i287.i.i.i.i.i = icmp eq i64 %439, %340
  br i1 %exitcond.not.i287.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i", label %yield.new2.i282.i.i.i.i.i, !llvm.loop !60

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i": ; preds = %yield.new2.i282.i.i.i.i.i, %imp_for.body.i.i.i700.i.i, %middle.block357, %yield.new2.i228.i.i.i.preheader.i.i, %imp_for.cond.preheader.i.i.i.i673.i.i, %middle.block317, %if.true.i.i.i698.i.i
  %.pn198.i.i.i.i.i = phi ptr [ %388, %if.true.i.i.i698.i.i ], [ %405, %imp_for.cond.preheader.i.i.i.i673.i.i ], [ %405, %yield.new2.i228.i.i.i.preheader.i.i ], [ %388, %middle.block317 ], [ %405, %middle.block357 ], [ %388, %imp_for.body.i.i.i700.i.i ], [ %405, %yield.new2.i282.i.i.i.i.i ]
  %.pn.i.i.i.i.i = insertvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, { i64 } %.fr1024, 1
  %common.ret.op.i.i.i.i83.i = insertvalue { { i64 }, { i64 }, ptr } %.pn.i.i.i.i.i, ptr %.pn198.i.i.i.i.i, 2
  %440 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2266"({ { i64 }, { i64 }, ptr } %316, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i.i83.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.18.i.i.i704.i.i)
  %.fca.2.extract.i.i.i705.i.i = extractvalue { { i64 }, { i64 }, ptr } %440, 2
  %441 = extractvalue { { i64 }, { i64 }, ptr } %440, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i = extractvalue { i64 } %441, 0
  %switch.i.i.i.i707.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, 2
  %442 = extractvalue { { i64 }, { i64 }, ptr } %440, 1
  %.fca.0.extract.i.i.i.i.i708.i.i = extractvalue { i64 } %442, 0
  %tmp.i82.not.i.i.i.i.i709.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i708.i.i, 8
  %or.cond.i.i.i.i710.i.i = select i1 %switch.i.i.i.i707.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i709.i.i
  %common.ret.op.i.i.i.i.i711.i.i = select i1 %or.cond.i.i.i.i710.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i712.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i711.i.i, 0
  %.fca.1.extract.i.i.i.i713.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i711.i.i, 1
  %443 = and i8 %.fca.0.extract.i.i.i.i712.i.i, 1
  %.not.i.i.i.i714.i.i = icmp eq i8 %443, 0
  %444 = and i8 %.fca.1.extract.i.i.i.i713.i.i, 1
  %.not73.i.i.i715.i.i = icmp eq i8 %444, 0
  %.not.i.i.i716.i.i = select i1 %.not.i.i.i.i714.i.i, i1 %.not73.i.i.i715.i.i, i1 false
  %.not7.i.i.i.i717.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, 0
  br i1 %.not.i.i.i716.i.i, label %imp_for.cond.preheader.i.i.i.i724.i.i, label %imp_for.cond.preheader.i.i.i718.i.i

imp_for.cond.preheader.i.i.i718.i.i:              ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i"
  br i1 %.not7.i.i.i.i717.i.i, label %imp_for.body.i.i.i720.i.i.preheader, label %imp_for.cond.preheader.i.i.i748.i.i

imp_for.body.i.i.i720.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i718.i.i
  %min.iters.check308 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, 1
  br i1 %min.iters.check308, label %imp_for.body.i.i.i720.i.i.preheader1187, label %vector.ph309

vector.ph309:                                     ; preds = %imp_for.body.i.i.i720.i.i.preheader
  %n.vec311 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, -2
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph309
  %index315 = phi i64 [ 0, %vector.ph309 ], [ %index.next316, %vector.body314 ]
  %445 = or i64 %index315, 1
  %446 = getelementptr i64, ptr %.fca.2.extract.i.i.i705.i.i, i64 %index315
  %447 = getelementptr i64, ptr %.fca.2.extract.i.i.i705.i.i, i64 %445
  %448 = load i64, ptr %446, align 4
  %449 = load i64, ptr %447, align 4
  %450 = add i64 %448, -1
  %451 = add i64 %449, -1
  store i64 %450, ptr %446, align 4
  store i64 %451, ptr %447, align 4
  %index.next316 = add nuw i64 %index315, 2
  %452 = icmp eq i64 %index.next316, %n.vec311
  br i1 %452, label %middle.block306, label %vector.body314, !llvm.loop !61

middle.block306:                                  ; preds = %vector.body314
  %cmp.n313 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i, %n.vec311
  br i1 %cmp.n313, label %imp_for.cond.preheader.i.i.i748.i.i, label %imp_for.body.i.i.i720.i.i.preheader1187

imp_for.body.i.i.i720.i.i.preheader1187:          ; preds = %middle.block306, %imp_for.body.i.i.i720.i.i.preheader
  %.ph1188 = phi i64 [ %n.vec311, %middle.block306 ], [ 0, %imp_for.body.i.i.i720.i.i.preheader ]
  br label %imp_for.body.i.i.i720.i.i

imp_for.cond.preheader.i.i.i.i724.i.i:            ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__lt__:1[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2619.exit.i.i"
  br i1 %.not7.i.i.i.i717.i.i, label %for.body.i.i.i726.i.i, label %imp_for.cond.preheader.i.i.i748.i.i

imp_for.body.i.i.i720.i.i:                        ; preds = %imp_for.body.i.i.i720.i.i, %imp_for.body.i.i.i720.i.i.preheader1187
  %453 = phi i64 [ %456, %imp_for.body.i.i.i720.i.i ], [ %.ph1188, %imp_for.body.i.i.i720.i.i.preheader1187 ]
  %454 = getelementptr i64, ptr %.fca.2.extract.i.i.i705.i.i, i64 %453
  %455 = load i64, ptr %454, align 4
  %tmp.i.i.i.i.i.i721.i.i = add i64 %455, -1
  store i64 %tmp.i.i.i.i.i.i721.i.i, ptr %454, align 4
  %456 = add nuw nsw i64 %453, 1
  %exitcond.not.i.i.i722.i.i = icmp eq i64 %456, %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i
  br i1 %exitcond.not.i.i.i722.i.i, label %imp_for.cond.preheader.i.i.i748.i.i, label %imp_for.body.i.i.i720.i.i, !llvm.loop !62

for.body.i.i.i726.i.i:                            ; preds = %for.body.i.i.i726.i.i.backedge, %imp_for.cond.preheader.i.i.i.i724.i.i
  %.sroa.6.1.i.i.i727.i.i = phi i64 [ %.sroa.6.1.i.i.i727.i.i.be, %for.body.i.i.i726.i.i.backedge ], [ 0, %imp_for.cond.preheader.i.i.i.i724.i.i ]
  store i2 1, ptr %.sroa.18.i.i.i704.i.i, align 8
  %tmp.i.i.i71.i.i.i728.i.i = mul i64 %.sroa.6.1.i.i.i727.i.i, %.fca.0.extract.i.i.i.i.i708.i.i
  %457 = getelementptr i8, ptr %.fca.2.extract.i.i.i705.i.i, i64 %tmp.i.i.i71.i.i.i728.i.i
  %458 = load i64, ptr %457, align 4
  %tmp.i.i.i72.i.i.i729.i.i = add i64 %458, -1
  store i64 %tmp.i.i.i72.i.i.i729.i.i, ptr %457, align 4
  %.sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i730.i.i = load i2, ptr %.sroa.18.i.i.i704.i.i, align 8, !alias.scope !63
  %switch.i79.i.i.i731.i.i = icmp eq i2 %.sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.i.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.i704.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i730.i.i, 0
  br i1 %switch.i79.i.i.i731.i.i, label %for.body.i.i.i726.i.i.backedge, label %yield.new2.i80.i.i.i732.i.i

yield.new2.i80.i.i.i732.i.i:                      ; preds = %for.body.i.i.i726.i.i
  %459 = add nuw nsw i64 %.sroa.6.1.i.i.i727.i.i, 1
  %exitcond.not.i85.i.i.i733.i.i = icmp eq i64 %459, %t.fca.0.extract.i.i.i.i.i.i.i.i.i706.i.i
  br i1 %exitcond.not.i85.i.i.i733.i.i, label %imp_for.cond.preheader.i.i.i748.i.i, label %for.body.i.i.i726.i.i.backedge

for.body.i.i.i726.i.i.backedge:                   ; preds = %yield.new2.i80.i.i.i732.i.i, %for.body.i.i.i726.i.i
  %.sroa.6.1.i.i.i727.i.i.be = phi i64 [ %459, %yield.new2.i80.i.i.i732.i.i ], [ 0, %for.body.i.i.i726.i.i ]
  br label %for.body.i.i.i726.i.i

imp_for.cond.preheader.i.i.i748.i.i:              ; preds = %yield.new2.i80.i.i.i732.i.i, %imp_for.body.i.i.i720.i.i, %imp_for.cond.preheader.i.i.i.i724.i.i, %middle.block306, %imp_for.cond.preheader.i.i.i718.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.18.i.i.i704.i.i)
  tail call fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2424"({ { i64 }, { i64 }, ptr } %316, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i.i83.i, { { i64 }, { i64 }, ptr } %440)
  %460 = tail call ptr @seq_alloc_atomic(i64 %216)
  br i1 %.not7.i.i.i.i, label %imp_for.body.i.i.i750.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2639.exit.i.i"

imp_for.body.i.i.i750.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i748.i.i
  %min.iters.check297 = icmp eq i64 %.fca.0.extract38.i.i.i.i, 1
  br i1 %min.iters.check297, label %imp_for.body.i.i.i750.i.i.preheader1185, label %vector.ph298

vector.ph298:                                     ; preds = %imp_for.body.i.i.i750.i.i.preheader
  %n.vec300 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph298
  %index304 = phi i64 [ 0, %vector.ph298 ], [ %index.next305, %vector.body303 ]
  %461 = or i64 %index304, 1
  %462 = getelementptr i64, ptr %315, i64 %index304
  %463 = getelementptr i64, ptr %315, i64 %461
  %464 = load i64, ptr %462, align 4
  %465 = load i64, ptr %463, align 4
  %466 = add i64 %464, 1
  %467 = add i64 %465, 1
  %468 = getelementptr i64, ptr %460, i64 %index304
  %469 = getelementptr i64, ptr %460, i64 %461
  store i64 %466, ptr %468, align 4
  store i64 %467, ptr %469, align 4
  %index.next305 = add nuw i64 %index304, 2
  %470 = icmp eq i64 %index.next305, %n.vec300
  br i1 %470, label %middle.block295, label %vector.body303, !llvm.loop !66

middle.block295:                                  ; preds = %vector.body303
  %cmp.n302 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec300
  br i1 %cmp.n302, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2639.exit.i.i", label %imp_for.body.i.i.i750.i.i.preheader1185

imp_for.body.i.i.i750.i.i.preheader1185:          ; preds = %middle.block295, %imp_for.body.i.i.i750.i.i.preheader
  %.ph1186 = phi i64 [ %n.vec300, %middle.block295 ], [ 0, %imp_for.body.i.i.i750.i.i.preheader ]
  br label %imp_for.body.i.i.i750.i.i

imp_for.body.i.i.i750.i.i:                        ; preds = %imp_for.body.i.i.i750.i.i, %imp_for.body.i.i.i750.i.i.preheader1185
  %471 = phi i64 [ %475, %imp_for.body.i.i.i750.i.i ], [ %.ph1186, %imp_for.body.i.i.i750.i.i.preheader1185 ]
  %472 = getelementptr i64, ptr %315, i64 %471
  %473 = load i64, ptr %472, align 4
  %tmp.i.i.i.i.i.i751.i.i = add i64 %473, 1
  %474 = getelementptr i64, ptr %460, i64 %471
  store i64 %tmp.i.i.i.i.i.i751.i.i, ptr %474, align 4
  %475 = add nuw nsw i64 %471, 1
  %exitcond.not.i.i.i752.i.i = icmp eq i64 %475, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i752.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2639.exit.i.i", label %imp_for.body.i.i.i750.i.i, !llvm.loop !67

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2639.exit.i.i": ; preds = %imp_for.body.i.i.i750.i.i, %middle.block295, %imp_for.cond.preheader.i.i.i748.i.i
  %476 = tail call ptr @seq_alloc_atomic(i64 %341)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %if.exit.i.i.i.i814.i.i, label %for.body.lr.ph.split.split.i.i.i.i1040.i.i

for.body.lr.ph.split.split.i.i.i.i1040.i.i:       ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2639.exit.i.i"
  %477 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i1041.i.i = extractvalue { i64 } %477, 0
  %tmp.i.not.i.i.i.i.i.i1046.i.i = icmp eq i64 %340, 1
  %478 = load i64, ptr %460, align 4
  %479 = lshr i64 %478, 61
  %tmp.i12.i.i.i.i.us413.peel.i.i.i.i1048.i.i = and i64 %479, 4
  %spec.select.i.i.i.i.us414.peel.i.i.i.i1049.i.i = add i64 %tmp.i12.i.i.i.i.us413.peel.i.i.i.i1048.i.i, %478
  %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i1051.i.i = icmp ult i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i1049.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.us416.peel.i.i.i.i1051.i.i)
  %tmp.i.i92.i.i.us417.peel.i.i.i.i1052.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.us414.peel.i.i.i.i1049.i.i, 3
  %480 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.us417.peel.i.i.i.i1052.i.i
  %481 = load double, ptr %480, align 8
  store double %481, ptr %476, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i1046.i.i, label %if.exit.i.i.i.i814.i.i, label %yield.new2.i372.i.i.i.i1054.i.i.preheader

yield.new2.i372.i.i.i.i1054.i.i.preheader:        ; preds = %for.body.lr.ph.split.split.i.i.i.i1040.i.i
  %482 = add nsw i64 %340, -1
  %min.iters.check1109 = icmp ugt i64 %482, 1
  %ident.check1106.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i1041.i.i, 1
  %or.cond1137 = and i1 %min.iters.check1109, %ident.check1106.not
  br i1 %or.cond1137, label %vector.ph1110, label %yield.new2.i372.i.i.i.i1054.i.i.preheader1184

vector.ph1110:                                    ; preds = %yield.new2.i372.i.i.i.i1054.i.i.preheader
  %n.vec1112 = and i64 %482, -2
  %ind.end1113 = or i64 %482, 1
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1110
  %index1117 = phi i64 [ 0, %vector.ph1110 ], [ %index.next1119, %vector.body1116 ]
  %offset.idx1118 = or i64 %index1117, 1
  %483 = add i64 %index1117, 2
  %484 = getelementptr i8, ptr %460, i64 %offset.idx1118
  %485 = getelementptr i8, ptr %460, i64 %483
  %486 = load i64, ptr %484, align 4
  %487 = load i64, ptr %485, align 4
  %488 = lshr i64 %486, 61
  %489 = lshr i64 %487, 61
  %490 = and i64 %488, 4
  %491 = and i64 %489, 4
  %492 = add i64 %490, %486
  %493 = add i64 %491, %487
  %494 = icmp ult i64 %492, 4
  %495 = icmp ult i64 %493, 4
  tail call void @llvm.assume(i1 %494)
  tail call void @llvm.assume(i1 %495)
  %496 = shl nuw nsw i64 %492, 3
  %497 = shl nuw nsw i64 %493, 3
  %498 = getelementptr i8, ptr %3, i64 %496
  %499 = getelementptr i8, ptr %3, i64 %497
  %500 = shl i64 %offset.idx1118, 3
  %501 = shl i64 %483, 3
  %502 = getelementptr i8, ptr %476, i64 %500
  %503 = getelementptr i8, ptr %476, i64 %501
  %504 = load double, ptr %498, align 8
  %505 = load double, ptr %499, align 8
  store double %504, ptr %502, align 8
  store double %505, ptr %503, align 8
  %index.next1119 = add nuw i64 %index1117, 2
  %506 = icmp eq i64 %index.next1119, %n.vec1112
  br i1 %506, label %middle.block1107, label %vector.body1116, !llvm.loop !68

middle.block1107:                                 ; preds = %vector.body1116
  %cmp.n1115 = icmp eq i64 %482, %n.vec1112
  br i1 %cmp.n1115, label %if.exit.i.i.i.i814.i.i, label %yield.new2.i372.i.i.i.i1054.i.i.preheader1184

yield.new2.i372.i.i.i.i1054.i.i.preheader1184:    ; preds = %middle.block1107, %yield.new2.i372.i.i.i.i1054.i.i.preheader
  %.sroa.6390.1.i.i.i.i1055.i.i.ph = phi i64 [ 1, %yield.new2.i372.i.i.i.i1054.i.i.preheader ], [ %ind.end1113, %middle.block1107 ]
  br label %yield.new2.i372.i.i.i.i1054.i.i

yield.new2.i372.i.i.i.i1054.i.i:                  ; preds = %yield.new2.i372.i.i.i.i1054.i.i, %yield.new2.i372.i.i.i.i1054.i.i.preheader1184
  %.sroa.6390.1.i.i.i.i1055.i.i = phi i64 [ %513, %yield.new2.i372.i.i.i.i1054.i.i ], [ %.sroa.6390.1.i.i.i.i1055.i.i.ph, %yield.new2.i372.i.i.i.i1054.i.i.preheader1184 ]
  %tmp.i40.i.i.i.i.i.i1056.i.i = mul i64 %.sroa.6390.1.i.i.i.i1055.i.i, %.fca.0.extract.i.i.i.i.i.i1041.i.i
  %507 = getelementptr i8, ptr %460, i64 %tmp.i40.i.i.i.i.i.i1056.i.i
  %508 = load i64, ptr %507, align 4
  %509 = lshr i64 %508, 61
  %tmp.i12.i.i.i.i.i.i.i.i1058.i.i = and i64 %509, 4
  %spec.select.i.i.i.i.i.i.i.i1059.i.i = add i64 %tmp.i12.i.i.i.i.i.i.i.i1058.i.i, %508
  %tmp.i15.not.i.i.i.i.i.i.i.i1061.i.i = icmp ult i64 %spec.select.i.i.i.i.i.i.i.i1059.i.i, 4
  tail call void @llvm.assume(i1 %tmp.i15.not.i.i.i.i.i.i.i.i1061.i.i)
  %tmp.i.i92.i.i.i.i.i.i1062.i.i = shl nuw nsw i64 %spec.select.i.i.i.i.i.i.i.i1059.i.i, 3
  %510 = getelementptr i8, ptr %3, i64 %tmp.i.i92.i.i.i.i.i.i1062.i.i
  %tmp.i.i139.i.i.i.i.i.i1063.i.i = shl i64 %.sroa.6390.1.i.i.i.i1055.i.i, 3
  %511 = getelementptr i8, ptr %476, i64 %tmp.i.i139.i.i.i.i.i.i1063.i.i
  %512 = load double, ptr %510, align 8
  store double %512, ptr %511, align 8
  %513 = add nuw nsw i64 %.sroa.6390.1.i.i.i.i1055.i.i, 1
  %exitcond.not.i377.i.i.i.i1064.i.i = icmp eq i64 %513, %340
  br i1 %exitcond.not.i377.i.i.i.i1064.i.i, label %if.exit.i.i.i.i814.i.i, label %yield.new2.i372.i.i.i.i1054.i.i, !llvm.loop !69

if.exit.i.i.i.i814.i.i:                           ; preds = %yield.new2.i372.i.i.i.i1054.i.i, %middle.block1107, %for.body.lr.ph.split.split.i.i.i.i1040.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[int,1],int].2639.exit.i.i"
  %switch.i.i.i.i815.i.i = icmp ult i64 %340, 2
  %514 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i.i.i816.i.i = extractvalue { i64 } %514, 0
  %tmp.i82.not.i.i.i.i.i817.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i816.i.i, 8
  %spec.select.i.i.i.i818.i.i = select i1 %tmp.i82.not.i.i.i.i.i817.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i819.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i818.i.i, 0
  %515 = and i8 %.fca.0.extract2191.i.i.i.i819.i.i, 1
  %516 = or i1 %tmp.i82.not.i84.i.i.i.i688.i.i, %switch.i.i.i.i815.i.i
  %common.ret.op.i81.i.i.i.i822.i.i = select i1 %516, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i823.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i822.i.i, 0
  %.not7697.i.i.i.i824.i.i = icmp ne i8 %515, 0
  %.not76.i.i.i.i825.i.i = select i1 %switch.i.i.i.i815.i.i, i1 true, i1 %.not7697.i.i.i.i824.i.i
  %517 = and i8 %.fca.0.extract.i.i.i.i823.i.i, 1
  %518 = icmp ne i8 %517, 0
  %519 = select i1 %.not76.i.i.i.i825.i.i, i1 %518, i1 false
  br i1 %519, label %if.true.i.i.i833.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i826.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i826.i.i": ; preds = %if.exit.i.i.i.i814.i.i
  %common.ret.op.i93.i.i.i.i827.i.i = select i1 %switch.i.i.i.i815.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i818.i.i
  %.fca.1.extract.i.i.i.i828.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i822.i.i, 1
  %.fca.1.extract22.i.i.i.i829.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i827.i.i, 1
  %520 = and i8 %.fca.1.extract22.i.i.i.i829.i.i, 1
  %.not77.i.i.i.i830.i.i = icmp eq i8 %520, 0
  %521 = and i8 %.fca.1.extract.i.i.i.i828.i.i, 1
  %.not202.i.i.i831.i.i = icmp eq i8 %521, 0
  %.not.i.i.i832.i.i = select i1 %.not77.i.i.i.i830.i.i, i1 true, i1 %.not202.i.i.i831.i.i
  br i1 %.not.i.i.i832.i.i, label %imp_for.cond.preheader.i.i.i.i768.i.i, label %if.true.i.i.i833.i.i

if.true.i.i.i833.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i826.i.i", %if.exit.i.i.i.i814.i.i
  %522 = tail call ptr @seq_alloc_atomic(i64 %340)
  switch i64 %340, label %vector.ph245 [
    i64 0, label %imp_for.cond.preheader.i.i.i852.i.i
    i64 1, label %imp_for.body.i.i.i836.i.i.preheader
  ]

vector.ph245:                                     ; preds = %if.true.i.i.i833.i.i
  %n.vec247 = and i64 %340, 9223372036854775806
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph245
  %index251 = phi i64 [ 0, %vector.ph245 ], [ %index.next252, %vector.body250 ]
  %523 = or i64 %index251, 1
  %524 = getelementptr double, ptr %217, i64 %index251
  %525 = getelementptr double, ptr %217, i64 %523
  %526 = load double, ptr %524, align 8
  %527 = load double, ptr %525, align 8
  %528 = getelementptr double, ptr %476, i64 %index251
  %529 = getelementptr double, ptr %476, i64 %523
  %530 = load double, ptr %528, align 8
  %531 = load double, ptr %529, align 8
  %532 = fcmp oge double %526, %530
  %533 = fcmp oge double %527, %531
  %534 = zext i1 %532 to i8
  %535 = zext i1 %533 to i8
  %536 = getelementptr i8, ptr %522, i64 %index251
  %537 = getelementptr i8, ptr %522, i64 %523
  store i8 %534, ptr %536, align 1
  store i8 %535, ptr %537, align 1
  %index.next252 = add nuw i64 %index251, 2
  %538 = icmp eq i64 %index.next252, %n.vec247
  br i1 %538, label %middle.block242, label %vector.body250, !llvm.loop !70

middle.block242:                                  ; preds = %vector.body250
  %cmp.n249 = icmp eq i64 %340, %n.vec247
  br i1 %cmp.n249, label %imp_for.cond.preheader.i.i.i852.i.i, label %imp_for.body.i.i.i836.i.i.preheader

imp_for.body.i.i.i836.i.i.preheader:              ; preds = %middle.block242, %if.true.i.i.i833.i.i
  %.ph1182 = phi i64 [ 0, %if.true.i.i.i833.i.i ], [ %n.vec247, %middle.block242 ]
  br label %imp_for.body.i.i.i836.i.i

imp_for.cond.preheader.i.i.i.i768.i.i:            ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i826.i.i"
  %539 = tail call ptr @seq_alloc_atomic(i64 %340)
  %.not7.i.i.i.i772.i.i.not = icmp eq i64 %340, 0
  br i1 %.not7.i.i.i.i772.i.i.not, label %imp_for.cond.preheader.i.i.i852.i.i, label %for.body.lr.ph.i.i.i778.i.i

for.body.lr.ph.i.i.i778.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i768.i.i
  %tmp.i.not.i.i.i.i769.i.i = icmp eq i64 %340, 1
  %540 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i184.i.i.i779.i.i = extractvalue { i64 } %540, 0
  %541 = load double, ptr %217, align 8
  %542 = load double, ptr %476, align 8
  %tmp.i.i.i191.us.us.i.i.i811.i.i = fcmp oge double %541, %542
  %res.i.i.i192.us.us.i.i.i812.i.i = zext i1 %tmp.i.i.i191.us.us.i.i.i811.i.i to i8
  br i1 %tmp.i.not.i.i.i.i769.i.i, label %yield.new2.i228.i.i.i809.preheader.i.i, label %yield.new2.i282.peel.i.i.i783.i.i

yield.new2.i228.i.i.i809.preheader.i.i:           ; preds = %for.body.lr.ph.i.i.i778.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %539, i8 %res.i.i.i192.us.us.i.i.i812.i.i, i64 1, i1 false)
  br label %imp_for.cond.preheader.i.i.i852.i.i

yield.new2.i282.peel.i.i.i783.i.i:                ; preds = %for.body.lr.ph.i.i.i778.i.i
  store i8 %res.i.i.i192.us.us.i.i.i812.i.i, ptr %539, align 1
  %543 = add nsw i64 %340, -1
  %min.iters.check284 = icmp ult i64 %340, 3
  %ident.check280 = icmp ne i64 %.fca.0.extract.i.i184.i.i.i779.i.i, 1
  %544 = or i1 %ident.check280, %min.iters.check284
  %or.cond850 = or i1 %ident.check356, %544
  br i1 %or.cond850, label %yield.new2.i282.i.i.i786.i.i.preheader, label %vector.ph285

vector.ph285:                                     ; preds = %yield.new2.i282.peel.i.i.i783.i.i
  %n.vec287 = and i64 %543, -2
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph285
  %index292 = phi i64 [ 0, %vector.ph285 ], [ %545, %vector.body291 ]
  %offset.idx293 = or i64 %index292, 1
  %545 = add nuw i64 %index292, 2
  %546 = getelementptr i8, ptr %217, i64 %offset.idx293
  %547 = getelementptr i8, ptr %217, i64 %545
  %548 = getelementptr i8, ptr %476, i64 %offset.idx293
  %549 = getelementptr i8, ptr %476, i64 %545
  %550 = getelementptr i8, ptr %539, i64 %offset.idx293
  %551 = getelementptr i8, ptr %539, i64 %545
  %552 = load double, ptr %546, align 8
  %553 = load double, ptr %547, align 8
  %554 = load double, ptr %548, align 8
  %555 = load double, ptr %549, align 8
  %556 = fcmp oge double %552, %554
  %557 = fcmp oge double %553, %555
  %558 = zext i1 %556 to i8
  %559 = zext i1 %557 to i8
  store i8 %558, ptr %550, align 1
  store i8 %559, ptr %551, align 1
  %560 = icmp eq i64 %545, %n.vec287
  br i1 %560, label %middle.block282, label %vector.body291, !llvm.loop !71

middle.block282:                                  ; preds = %vector.body291
  %ind.end288 = or i64 %543, 1
  %cmp.n290 = icmp eq i64 %543, %n.vec287
  br i1 %cmp.n290, label %imp_for.cond.preheader.i.i.i852.i.i, label %yield.new2.i282.i.i.i786.i.i.preheader

yield.new2.i282.i.i.i786.i.i.preheader:           ; preds = %middle.block282, %yield.new2.i282.peel.i.i.i783.i.i
  %.sroa.12.7.i.i.i787.i.i.ph = phi i64 [ %ind.end288, %middle.block282 ], [ 1, %yield.new2.i282.peel.i.i.i783.i.i ]
  br label %yield.new2.i282.i.i.i786.i.i

imp_for.body.i.i.i836.i.i:                        ; preds = %imp_for.body.i.i.i836.i.i, %imp_for.body.i.i.i836.i.i.preheader
  %561 = phi i64 [ %567, %imp_for.body.i.i.i836.i.i ], [ %.ph1182, %imp_for.body.i.i.i836.i.i.preheader ]
  %562 = getelementptr double, ptr %217, i64 %561
  %563 = load double, ptr %562, align 8
  %564 = getelementptr double, ptr %476, i64 %561
  %565 = load double, ptr %564, align 8
  %tmp.i.i.i.i.i.i837.i.i = fcmp oge double %563, %565
  %res.i.i.i.i.i.i838.i.i = zext i1 %tmp.i.i.i.i.i.i837.i.i to i8
  %566 = getelementptr i8, ptr %522, i64 %561
  store i8 %res.i.i.i.i.i.i838.i.i, ptr %566, align 1
  %567 = add nuw nsw i64 %561, 1
  %exitcond.not.i.i.i839.i.i = icmp eq i64 %567, %340
  br i1 %exitcond.not.i.i.i839.i.i, label %imp_for.cond.preheader.i.i.i852.i.i, label %imp_for.body.i.i.i836.i.i, !llvm.loop !72

yield.new2.i282.i.i.i786.i.i:                     ; preds = %yield.new2.i282.i.i.i786.i.i, %yield.new2.i282.i.i.i786.i.i.preheader
  %.sroa.12.7.i.i.i787.i.i = phi i64 [ %573, %yield.new2.i282.i.i.i786.i.i ], [ %.sroa.12.7.i.i.i787.i.i.ph, %yield.new2.i282.i.i.i786.i.i.preheader ]
  %tmp.i40.i.i.i.i.i788.i.i = mul i64 %.sroa.12.7.i.i.i787.i.i, %.fca.0.extract.i.i184.i.i.i779.i.i
  %568 = getelementptr i8, ptr %217, i64 %tmp.i40.i.i.i.i.i788.i.i
  %tmp.i40.i.i188.i.i.i789.i.i = mul i64 %.sroa.12.7.i.i.i787.i.i, %.fca.0.extract.i83.i.i.i.i687.i.i
  %569 = getelementptr i8, ptr %476, i64 %tmp.i40.i.i188.i.i.i789.i.i
  %570 = getelementptr i8, ptr %539, i64 %.sroa.12.7.i.i.i787.i.i
  %571 = load double, ptr %568, align 8
  %572 = load double, ptr %569, align 8
  %tmp.i.i.i191.i.i.i790.i.i = fcmp oge double %571, %572
  %res.i.i.i192.i.i.i791.i.i = zext i1 %tmp.i.i.i191.i.i.i790.i.i to i8
  store i8 %res.i.i.i192.i.i.i791.i.i, ptr %570, align 1
  %573 = add nuw nsw i64 %.sroa.12.7.i.i.i787.i.i, 1
  %exitcond.not.i287.i.i.i792.i.i = icmp eq i64 %573, %340
  br i1 %exitcond.not.i287.i.i.i792.i.i, label %imp_for.cond.preheader.i.i.i852.i.i, label %yield.new2.i282.i.i.i786.i.i, !llvm.loop !73

imp_for.cond.preheader.i.i.i852.i.i:              ; preds = %yield.new2.i282.i.i.i786.i.i, %imp_for.body.i.i.i836.i.i, %middle.block282, %yield.new2.i228.i.i.i809.preheader.i.i, %imp_for.cond.preheader.i.i.i.i768.i.i, %middle.block242, %if.true.i.i.i833.i.i
  %.pn198.i.i.i774.i.i = phi ptr [ %522, %if.true.i.i.i833.i.i ], [ %539, %imp_for.cond.preheader.i.i.i.i768.i.i ], [ %539, %yield.new2.i228.i.i.i809.preheader.i.i ], [ %522, %middle.block242 ], [ %539, %middle.block282 ], [ %522, %imp_for.body.i.i.i836.i.i ], [ %539, %yield.new2.i282.i.i.i786.i.i ]
  %574 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract38.i.i.i.i)
  br i1 %.not7.i.i.i.i, label %imp_for.body.i.i.i854.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2670.exit.i.i"

imp_for.body.i.i.i854.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i852.i.i
  %min.iters.check233 = icmp eq i64 %.fca.0.extract38.i.i.i.i, 1
  br i1 %min.iters.check233, label %imp_for.body.i.i.i854.i.i.preheader1180, label %vector.ph234

vector.ph234:                                     ; preds = %imp_for.body.i.i.i854.i.i.preheader
  %n.vec236 = and i64 %.fca.0.extract38.i.i.i.i, -2
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph234
  %index240 = phi i64 [ 0, %vector.ph234 ], [ %index.next241, %vector.body239 ]
  %575 = or i64 %index240, 1
  %576 = getelementptr i64, ptr %315, i64 %index240
  %577 = getelementptr i64, ptr %315, i64 %575
  %578 = load i64, ptr %576, align 4
  %579 = load i64, ptr %577, align 4
  %580 = icmp ne i64 %578, 2
  %581 = icmp ne i64 %579, 2
  %582 = zext i1 %580 to i8
  %583 = zext i1 %581 to i8
  %584 = getelementptr i8, ptr %574, i64 %index240
  %585 = getelementptr i8, ptr %574, i64 %575
  store i8 %582, ptr %584, align 1
  store i8 %583, ptr %585, align 1
  %index.next241 = add nuw i64 %index240, 2
  %586 = icmp eq i64 %index.next241, %n.vec236
  br i1 %586, label %middle.block231, label %vector.body239, !llvm.loop !74

middle.block231:                                  ; preds = %vector.body239
  %cmp.n238 = icmp eq i64 %.fca.0.extract38.i.i.i.i, %n.vec236
  br i1 %cmp.n238, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2670.exit.i.i", label %imp_for.body.i.i.i854.i.i.preheader1180

imp_for.body.i.i.i854.i.i.preheader1180:          ; preds = %middle.block231, %imp_for.body.i.i.i854.i.i.preheader
  %.ph1181 = phi i64 [ %n.vec236, %middle.block231 ], [ 0, %imp_for.body.i.i.i854.i.i.preheader ]
  br label %imp_for.body.i.i.i854.i.i

imp_for.body.i.i.i854.i.i:                        ; preds = %imp_for.body.i.i.i854.i.i, %imp_for.body.i.i.i854.i.i.preheader1180
  %587 = phi i64 [ %591, %imp_for.body.i.i.i854.i.i ], [ %.ph1181, %imp_for.body.i.i.i854.i.i.preheader1180 ]
  %588 = getelementptr i64, ptr %315, i64 %587
  %589 = load i64, ptr %588, align 4
  %tmp.i.i.i.i.i.i855.i.i = icmp ne i64 %589, 2
  %res.i.i.i.i.i.i856.i.i = zext i1 %tmp.i.i.i.i.i.i855.i.i to i8
  %590 = getelementptr i8, ptr %574, i64 %587
  store i8 %res.i.i.i.i.i.i856.i.i, ptr %590, align 1
  %591 = add nuw nsw i64 %587, 1
  %exitcond.not.i.i.i857.i.i = icmp eq i64 %591, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i.i.i857.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2670.exit.i.i", label %imp_for.body.i.i.i854.i.i, !llvm.loop !75

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2670.exit.i.i": ; preds = %imp_for.body.i.i.i854.i.i, %middle.block231, %imp_for.cond.preheader.i.i.i852.i.i
  %592 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 0
  %593 = extractvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i = extractvalue { i64 } %592, 0
  %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i = extractvalue { i64 } %593, 0
  %tmp.i.i.i.i.i.not.i.i.i.i870.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i
  br i1 %tmp.i.i.i.i.i.not.i.i.i.i870.i.i, label %if.exit.i.i.i.i892.i.i, label %imp_for.cond.preheader.i.i.i.i871.i.i

if.exit.i.i.i.i892.i.i:                           ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2670.exit.i.i"
  %switch.i.i.i.i893.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 2
  %594 = extractvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, 1
  %.fca.0.extract.i83.i.i.i.i898.i.i = extractvalue { i64 } %594, 0
  %tmp.i82.not.i84.i.i.i.i899.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i898.i.i, 1
  %595 = or i1 %tmp.i82.not.i84.i.i.i.i899.i.i, %switch.i.i.i.i893.i.i
  %common.ret.op.i81.i.i.i.i900.i.i = select i1 %595, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i901.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i900.i.i, 0
  %.not76.i.i.i.i903.i.i = select i1 %switch.i.i.i.i893.i.i, i1 true, i1 %.not7697.i.i.i.i902.i.i
  %596 = and i8 %.fca.0.extract.i.i.i.i901.i.i, 1
  %597 = icmp ne i8 %596, 0
  %598 = select i1 %.not76.i.i.i.i903.i.i, i1 %597, i1 false
  br i1 %598, label %if.true.i.i.i910.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i904.i.i"

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i904.i.i": ; preds = %if.exit.i.i.i.i892.i.i
  %common.ret.op.i93.i.i.i.i905.i.i = select i1 %switch.i.i.i.i893.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i896.i.i
  %.fca.1.extract.i.i.i.i906.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i900.i.i, 1
  %.fca.1.extract22.i.i.i.i907.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i905.i.i, 1
  %599 = and i8 %.fca.1.extract22.i.i.i.i907.i.i, 1
  %.not77.i.i.i.i908.i.i = icmp eq i8 %599, 0
  %600 = and i8 %.fca.1.extract.i.i.i.i906.i.i, 1
  %.not200.i.i.i.i.i = icmp eq i8 %600, 0
  %.not.i.i.i909.i.i = select i1 %.not77.i.i.i.i908.i.i, i1 true, i1 %.not200.i.i.i.i.i
  br i1 %.not.i.i.i909.i.i, label %imp_for.cond.preheader.i.i.i.i871.i.i, label %if.true.i.i.i910.i.i

if.true.i.i.i910.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i904.i.i", %if.exit.i.i.i.i892.i.i
  %601 = tail call ptr @seq_alloc_atomic(i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i)
  %.not179207.i.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 0
  br i1 %.not179207.i.i.i.i.i, label %imp_for.body.i.i.i912.i.i.preheader, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i"

imp_for.body.i.i.i912.i.i.preheader:              ; preds = %if.true.i.i.i910.i.i
  %min.iters.check182 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 1
  br i1 %min.iters.check182, label %imp_for.body.i.i.i912.i.i.preheader1174, label %vector.ph183

vector.ph183:                                     ; preds = %imp_for.body.i.i.i912.i.i.preheader
  %n.vec185 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, -2
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next190, %vector.body188 ]
  %602 = or i64 %index189, 1
  %603 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %index189
  %604 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %602
  %605 = load i8, ptr %603, align 1
  %606 = load i8, ptr %604, align 1
  %607 = getelementptr i8, ptr %574, i64 %index189
  %608 = getelementptr i8, ptr %574, i64 %602
  %609 = load i8, ptr %607, align 1
  %610 = load i8, ptr %608, align 1
  %611 = and i8 %609, %605
  %612 = and i8 %610, %606
  %613 = getelementptr i8, ptr %601, i64 %index189
  %614 = getelementptr i8, ptr %601, i64 %602
  store i8 %611, ptr %613, align 1
  store i8 %612, ptr %614, align 1
  %index.next190 = add nuw i64 %index189, 2
  %615 = icmp eq i64 %index.next190, %n.vec185
  br i1 %615, label %middle.block180, label %vector.body188, !llvm.loop !76

middle.block180:                                  ; preds = %vector.body188
  %cmp.n187 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, %n.vec185
  br i1 %cmp.n187, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %imp_for.body.i.i.i912.i.i.preheader1174

imp_for.body.i.i.i912.i.i.preheader1174:          ; preds = %middle.block180, %imp_for.body.i.i.i912.i.i.preheader
  %.ph1175 = phi i64 [ %n.vec185, %middle.block180 ], [ 0, %imp_for.body.i.i.i912.i.i.preheader ]
  br label %imp_for.body.i.i.i912.i.i

imp_for.cond.preheader.i.i.i.i871.i.i:            ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2029.exit.i.i.i904.i.i", %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__ne__:1[std.numpy.ndarray.ndarray[int,1],int].2670.exit.i.i"
  %tmp.i.not.i.i.i.i872.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 1
  %spec.select.i183.i.i.i873.i.i = select i1 %tmp.i.not.i.i.i.i872.i.i, i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i
  %.fca.0.insert.i.i.i.i874.i.i = insertvalue { i64 } poison, i64 %spec.select.i183.i.i.i873.i.i, 0
  %616 = tail call ptr @seq_alloc_atomic(i64 %spec.select.i183.i.i.i873.i.i)
  %.not7.i.i.i.i875.i.i = icmp sgt i64 %spec.select.i183.i.i.i873.i.i, 0
  br i1 %.not7.i.i.i.i875.i.i, label %for.body.lr.ph.i.i.i879.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i"

for.body.lr.ph.i.i.i879.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i871.i.i
  %617 = extractvalue { { i64 }, { i64 }, ptr } %.fr1101.i.i, 1
  %.fca.0.extract.i.i186.i.i.i881.i.i = extractvalue { i64 } %617, 0
  %tmp.i.not.i.i187.i.i.i882.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, 1
  br i1 %tmp.i.not.i.i.i.i872.i.i, label %for.body.lr.ph.split.us.i.i.i888.i.i, label %for.body.lr.ph.split.i.i.i883.i.i

for.body.lr.ph.split.us.i.i.i888.i.i:             ; preds = %for.body.lr.ph.i.i.i879.i.i
  %618 = load i8, ptr %.pn198.i.i.i774.i.i, align 1
  br i1 %tmp.i.not.i.i187.i.i.i882.i.i, label %yield.new2.i224.i.i.i.preheader.i.i, label %yield.new2.i242.i.i.i.i.i.preheader

yield.new2.i242.i.i.i.i.i.preheader:              ; preds = %for.body.lr.ph.split.us.i.i.i888.i.i
  %min.iters.check193 = icmp ne i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, 0
  %ident.check.not = icmp eq i64 %.fca.0.extract.i.i186.i.i.i881.i.i, 1
  %or.cond744 = and i1 %min.iters.check193, %ident.check.not
  br i1 %or.cond744, label %vector.ph194, label %yield.new2.i242.i.i.i.i.i.preheader1176

vector.ph194:                                     ; preds = %yield.new2.i242.i.i.i.i.i.preheader
  %n.vec196 = and i64 %.fca.0.extract.i.i.i.i.i.i.i.i869.i.i, -2
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph194
  %index200 = phi i64 [ 0, %vector.ph194 ], [ %index.next201, %vector.body199 ]
  %619 = or i64 %index200, 1
  %620 = getelementptr i8, ptr %574, i64 %index200
  %621 = getelementptr i8, ptr %574, i64 %619
  %622 = getelementptr i8, ptr %616, i64 %index200
  %623 = getelementptr i8, ptr %616, i64 %619
  %624 = load i8, ptr %620, align 1
  %625 = load i8, ptr %621, align 1
  %626 = and i8 %624, %618
  %627 = and i8 %625, %618
  store i8 %626, ptr %622, align 1
  store i8 %627, ptr %623, align 1
  %index.next201 = add nuw i64 %index200, 2
  %628 = icmp eq i64 %index.next201, %n.vec196
  br i1 %628, label %middle.block191, label %vector.body199, !llvm.loop !77

middle.block191:                                  ; preds = %vector.body199
  %cmp.n198 = icmp eq i64 %spec.select.i183.i.i.i873.i.i, %n.vec196
  br i1 %cmp.n198, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %yield.new2.i242.i.i.i.i.i.preheader1176

yield.new2.i242.i.i.i.i.i.preheader1176:          ; preds = %middle.block191, %yield.new2.i242.i.i.i.i.i.preheader
  %.sroa.12.3.i.i.i889.i.i.ph = phi i64 [ %n.vec196, %middle.block191 ], [ 0, %yield.new2.i242.i.i.i.i.i.preheader ]
  br label %yield.new2.i242.i.i.i.i.i

yield.new2.i224.i.i.i.preheader.i.i:              ; preds = %for.body.lr.ph.split.us.i.i.i888.i.i
  %629 = load i8, ptr %574, align 1
  %630 = and i8 %629, %618
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %616, i8 %630, i64 1, i1 false)
  br label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i"

yield.new2.i242.i.i.i.i.i:                        ; preds = %yield.new2.i242.i.i.i.i.i, %yield.new2.i242.i.i.i.i.i.preheader1176
  %.sroa.12.3.i.i.i889.i.i = phi i64 [ %635, %yield.new2.i242.i.i.i.i.i ], [ %.sroa.12.3.i.i.i889.i.i.ph, %yield.new2.i242.i.i.i.i.i.preheader1176 ]
  %tmp.i40.i.i188.us.i.i.i890.i.i = mul i64 %.sroa.12.3.i.i.i889.i.i, %.fca.0.extract.i.i186.i.i.i881.i.i
  %631 = getelementptr i8, ptr %574, i64 %tmp.i40.i.i188.us.i.i.i890.i.i
  %632 = getelementptr i8, ptr %616, i64 %.sroa.12.3.i.i.i889.i.i
  %633 = load i8, ptr %631, align 1
  %634 = and i8 %633, %618
  store i8 %634, ptr %632, align 1
  %635 = add nuw nsw i64 %.sroa.12.3.i.i.i889.i.i, 1
  %exitcond.not.i247.i.i.i.i.i = icmp eq i64 %635, %spec.select.i183.i.i.i873.i.i
  br i1 %exitcond.not.i247.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %yield.new2.i242.i.i.i.i.i, !llvm.loop !78

for.body.lr.ph.split.i.i.i883.i.i:                ; preds = %for.body.lr.ph.i.i.i879.i.i
  br i1 %tmp.i.not.i.i187.i.i.i882.i.i, label %yield.new2.i260.i.i.i.preheader.i.i, label %yield.new2.i278.peel.i.i.i.i.i

yield.new2.i260.i.i.i.preheader.i.i:              ; preds = %for.body.lr.ph.split.i.i.i883.i.i
  %636 = load i8, ptr %574, align 1
  %min.iters.check206 = icmp ugt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 1
  %or.cond745 = and i1 %min.iters.check206, %ident.check203.not
  br i1 %or.cond745, label %vector.ph207, label %yield.new2.i260.i.i.i.i.i.preheader

vector.ph207:                                     ; preds = %yield.new2.i260.i.i.i.preheader.i.i
  %n.vec209 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, -2
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph207
  %index213 = phi i64 [ 0, %vector.ph207 ], [ %index.next214, %vector.body212 ]
  %637 = or i64 %index213, 1
  %638 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %index213
  %639 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %637
  %640 = getelementptr i8, ptr %616, i64 %index213
  %641 = getelementptr i8, ptr %616, i64 %637
  %642 = load i8, ptr %638, align 1
  %643 = load i8, ptr %639, align 1
  %644 = and i8 %642, %636
  %645 = and i8 %643, %636
  store i8 %644, ptr %640, align 1
  store i8 %645, ptr %641, align 1
  %index.next214 = add nuw i64 %index213, 2
  %646 = icmp eq i64 %index.next214, %n.vec209
  br i1 %646, label %middle.block204, label %vector.body212, !llvm.loop !79

middle.block204:                                  ; preds = %vector.body212
  %cmp.n211 = icmp eq i64 %spec.select.i183.i.i.i873.i.i, %n.vec209
  br i1 %cmp.n211, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %yield.new2.i260.i.i.i.i.i.preheader

yield.new2.i260.i.i.i.i.i.preheader:              ; preds = %middle.block204, %yield.new2.i260.i.i.i.preheader.i.i
  %.sroa.12.5.i.i.i887.i.i.ph = phi i64 [ %n.vec209, %middle.block204 ], [ 0, %yield.new2.i260.i.i.i.preheader.i.i ]
  br label %yield.new2.i260.i.i.i.i.i

yield.new2.i278.peel.i.i.i.i.i:                   ; preds = %for.body.lr.ph.split.i.i.i883.i.i
  %647 = load i8, ptr %.pn198.i.i.i774.i.i, align 1
  %648 = load i8, ptr %574, align 1
  %649 = and i8 %648, %647
  store i8 %649, ptr %616, align 1
  %650 = add nsw i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, -1
  %min.iters.check220 = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i, 3
  %ident.check217 = icmp ne i64 %.fca.0.extract.i.i186.i.i.i881.i.i, 1
  %651 = or i1 %ident.check217, %ident.check216
  %or.cond1071 = or i1 %min.iters.check220, %651
  br i1 %or.cond1071, label %yield.new2.i278.i.i.i.i.i.preheader, label %vector.ph221

vector.ph221:                                     ; preds = %yield.new2.i278.peel.i.i.i.i.i
  %n.vec223 = and i64 %650, -2
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph221
  %index228 = phi i64 [ 0, %vector.ph221 ], [ %652, %vector.body227 ]
  %offset.idx229 = or i64 %index228, 1
  %652 = add nuw i64 %index228, 2
  %653 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %offset.idx229
  %654 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %652
  %655 = getelementptr i8, ptr %574, i64 %offset.idx229
  %656 = getelementptr i8, ptr %574, i64 %652
  %657 = getelementptr i8, ptr %616, i64 %offset.idx229
  %658 = getelementptr i8, ptr %616, i64 %652
  %659 = load i8, ptr %653, align 1
  %660 = load i8, ptr %654, align 1
  %661 = load i8, ptr %655, align 1
  %662 = load i8, ptr %656, align 1
  %663 = and i8 %661, %659
  %664 = and i8 %662, %660
  store i8 %663, ptr %657, align 1
  store i8 %664, ptr %658, align 1
  %665 = icmp eq i64 %652, %n.vec223
  br i1 %665, label %middle.block218, label %vector.body227, !llvm.loop !80

middle.block218:                                  ; preds = %vector.body227
  %ind.end224 = or i64 %650, 1
  %cmp.n226 = icmp eq i64 %650, %n.vec223
  br i1 %cmp.n226, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %yield.new2.i278.i.i.i.i.i.preheader

yield.new2.i278.i.i.i.i.i.preheader:              ; preds = %middle.block218, %yield.new2.i278.peel.i.i.i.i.i
  %.sroa.12.7.i.i.i884.i.i.ph = phi i64 [ %ind.end224, %middle.block218 ], [ 1, %yield.new2.i278.peel.i.i.i.i.i ]
  br label %yield.new2.i278.i.i.i.i.i

yield.new2.i260.i.i.i.i.i:                        ; preds = %yield.new2.i260.i.i.i.i.i, %yield.new2.i260.i.i.i.i.i.preheader
  %.sroa.12.5.i.i.i887.i.i = phi i64 [ %670, %yield.new2.i260.i.i.i.i.i ], [ %.sroa.12.5.i.i.i887.i.i.ph, %yield.new2.i260.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.us203.i.i.i.i.i = mul i64 %.sroa.12.5.i.i.i887.i.i, %.fca.0.extract.i.i184.i.i.i880.i.i
  %666 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %tmp.i40.i.i.us203.i.i.i.i.i
  %667 = getelementptr i8, ptr %616, i64 %.sroa.12.5.i.i.i887.i.i
  %668 = load i8, ptr %666, align 1
  %669 = and i8 %668, %636
  store i8 %669, ptr %667, align 1
  %670 = add nuw nsw i64 %.sroa.12.5.i.i.i887.i.i, 1
  %exitcond.not.i265.i.i.i.i.i = icmp eq i64 %670, %spec.select.i183.i.i.i873.i.i
  br i1 %exitcond.not.i265.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %yield.new2.i260.i.i.i.i.i, !llvm.loop !81

imp_for.body.i.i.i912.i.i:                        ; preds = %imp_for.body.i.i.i912.i.i, %imp_for.body.i.i.i912.i.i.preheader1174
  %671 = phi i64 [ %678, %imp_for.body.i.i.i912.i.i ], [ %.ph1175, %imp_for.body.i.i.i912.i.i.preheader1174 ]
  %672 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %671
  %673 = load i8, ptr %672, align 1
  %674 = getelementptr i8, ptr %574, i64 %671
  %675 = load i8, ptr %674, align 1
  %676 = and i8 %675, %673
  %677 = getelementptr i8, ptr %601, i64 %671
  store i8 %676, ptr %677, align 1
  %678 = add nuw nsw i64 %671, 1
  %exitcond.not.i.i.i913.i.i = icmp eq i64 %678, %.fca.0.extract3.i.i.i.i.i.i.i.i868.i.i
  br i1 %exitcond.not.i.i.i913.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %imp_for.body.i.i.i912.i.i, !llvm.loop !82

yield.new2.i278.i.i.i.i.i:                        ; preds = %yield.new2.i278.i.i.i.i.i, %yield.new2.i278.i.i.i.i.i.preheader
  %.sroa.12.7.i.i.i884.i.i = phi i64 [ %685, %yield.new2.i278.i.i.i.i.i ], [ %.sroa.12.7.i.i.i884.i.i.ph, %yield.new2.i278.i.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i885.i.i = mul i64 %.sroa.12.7.i.i.i884.i.i, %.fca.0.extract.i.i184.i.i.i880.i.i
  %679 = getelementptr i8, ptr %.pn198.i.i.i774.i.i, i64 %tmp.i40.i.i.i.i.i885.i.i
  %tmp.i40.i.i188.i.i.i886.i.i = mul i64 %.sroa.12.7.i.i.i884.i.i, %.fca.0.extract.i.i186.i.i.i881.i.i
  %680 = getelementptr i8, ptr %574, i64 %tmp.i40.i.i188.i.i.i886.i.i
  %681 = getelementptr i8, ptr %616, i64 %.sroa.12.7.i.i.i884.i.i
  %682 = load i8, ptr %679, align 1
  %683 = load i8, ptr %680, align 1
  %684 = and i8 %683, %682
  store i8 %684, ptr %681, align 1
  %685 = add nuw nsw i64 %.sroa.12.7.i.i.i884.i.i, 1
  %exitcond.not.i283.i.i.i.i.i = icmp eq i64 %685, %spec.select.i183.i.i.i873.i.i
  br i1 %exitcond.not.i283.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i", label %yield.new2.i278.i.i.i.i.i, !llvm.loop !83

"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i": ; preds = %yield.new2.i278.i.i.i.i.i, %imp_for.body.i.i.i912.i.i, %yield.new2.i260.i.i.i.i.i, %middle.block218, %middle.block204, %yield.new2.i242.i.i.i.i.i, %yield.new2.i224.i.i.i.preheader.i.i, %middle.block191, %imp_for.cond.preheader.i.i.i.i871.i.i, %middle.block180, %if.true.i.i.i910.i.i
  %.fca.0.insert.i.pn.i.i.i876.i.i = phi { i64 } [ %592, %if.true.i.i.i910.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %imp_for.cond.preheader.i.i.i.i871.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i224.i.i.i.preheader.i.i ], [ %592, %middle.block180 ], [ %.fca.0.insert.i.i.i.i874.i.i, %middle.block191 ], [ %.fca.0.insert.i.i.i.i874.i.i, %middle.block204 ], [ %.fca.0.insert.i.i.i.i874.i.i, %middle.block218 ], [ %592, %imp_for.body.i.i.i912.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i242.i.i.i.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i260.i.i.i.i.i ], [ %.fca.0.insert.i.i.i.i874.i.i, %yield.new2.i278.i.i.i.i.i ]
  %.pn196.i.i.i.i.i = phi ptr [ %601, %if.true.i.i.i910.i.i ], [ %616, %imp_for.cond.preheader.i.i.i.i871.i.i ], [ %616, %yield.new2.i224.i.i.i.preheader.i.i ], [ %601, %middle.block180 ], [ %616, %middle.block191 ], [ %616, %middle.block204 ], [ %616, %middle.block218 ], [ %601, %imp_for.body.i.i.i912.i.i ], [ %616, %yield.new2.i242.i.i.i.i.i ], [ %616, %yield.new2.i260.i.i.i.i.i ], [ %616, %yield.new2.i278.i.i.i.i.i ]
  %.pn197.i.i.i.i.i = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %.fca.0.insert.i.pn.i.i.i876.i.i, 0
  %.pn.i.i.i877.i.i = insertvalue { { i64 }, { i64 }, ptr } %.pn197.i.i.i.i.i, { i64 } { i64 1 }, 1
  %common.ret.op.i.i.i878.i.i = insertvalue { { i64 }, { i64 }, ptr } %.pn.i.i.i877.i.i, ptr %.pn196.i.i.i.i.i, 2
  %686 = tail call fastcc { { i64 }, { i64 }, ptr } @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__getitem__:1[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1]].2266"({ { i64 }, { i64 }, ptr } %316, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i878.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.18.i.i.i914.i.i)
  %.fca.2.extract.i.i.i915.i.i = extractvalue { { i64 }, { i64 }, ptr } %686, 2
  %687 = extractvalue { { i64 }, { i64 }, ptr } %686, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i = extractvalue { i64 } %687, 0
  %switch.i.i.i.i917.i.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, 2
  %688 = extractvalue { { i64 }, { i64 }, ptr } %686, 1
  %.fca.0.extract.i.i.i.i.i918.i.i = extractvalue { i64 } %688, 0
  %tmp.i82.not.i.i.i.i.i919.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i918.i.i, 8
  %or.cond.i.i.i.i920.i.i = select i1 %switch.i.i.i.i917.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i.i919.i.i
  %common.ret.op.i.i.i.i.i921.i.i = select i1 %or.cond.i.i.i.i920.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i922.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i921.i.i, 0
  %.fca.1.extract.i.i.i.i923.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i921.i.i, 1
  %689 = and i8 %.fca.0.extract.i.i.i.i922.i.i, 1
  %.not.i.i.i.i924.i.i = icmp eq i8 %689, 0
  %690 = and i8 %.fca.1.extract.i.i.i.i923.i.i, 1
  %.not73.i.i.i925.i.i = icmp eq i8 %690, 0
  %.not.i.i.i926.i.i = select i1 %.not.i.i.i.i924.i.i, i1 %.not73.i.i.i925.i.i, i1 false
  %.not7.i.i.i.i927.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, 0
  br i1 %.not.i.i.i926.i.i, label %imp_for.cond.preheader.i.i.i.i933.i.i, label %imp_for.cond.preheader.i.i.i928.i.i

imp_for.cond.preheader.i.i.i928.i.i:              ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i"
  br i1 %.not7.i.i.i.i927.i.i, label %imp_for.body.i.i.i930.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i"

imp_for.body.i.i.i930.i.i.preheader:              ; preds = %imp_for.cond.preheader.i.i.i928.i.i
  %min.iters.check171 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, 1
  br i1 %min.iters.check171, label %imp_for.body.i.i.i930.i.i.preheader1171, label %vector.ph172

vector.ph172:                                     ; preds = %imp_for.body.i.i.i930.i.i.preheader
  %n.vec174 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, -2
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph172
  %index178 = phi i64 [ 0, %vector.ph172 ], [ %index.next179, %vector.body177 ]
  %691 = or i64 %index178, 1
  %692 = getelementptr i64, ptr %.fca.2.extract.i.i.i915.i.i, i64 %index178
  %693 = getelementptr i64, ptr %.fca.2.extract.i.i.i915.i.i, i64 %691
  %694 = load i64, ptr %692, align 4
  %695 = load i64, ptr %693, align 4
  %696 = add i64 %694, 1
  %697 = add i64 %695, 1
  store i64 %696, ptr %692, align 4
  store i64 %697, ptr %693, align 4
  %index.next179 = add nuw i64 %index178, 2
  %698 = icmp eq i64 %index.next179, %n.vec174
  br i1 %698, label %middle.block169, label %vector.body177, !llvm.loop !84

middle.block169:                                  ; preds = %vector.body177
  %cmp.n176 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i, %n.vec174
  br i1 %cmp.n176, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i", label %imp_for.body.i.i.i930.i.i.preheader1171

imp_for.body.i.i.i930.i.i.preheader1171:          ; preds = %middle.block169, %imp_for.body.i.i.i930.i.i.preheader
  %.ph1172 = phi i64 [ %n.vec174, %middle.block169 ], [ 0, %imp_for.body.i.i.i930.i.i.preheader ]
  br label %imp_for.body.i.i.i930.i.i

imp_for.cond.preheader.i.i.i.i933.i.i:            ; preds = %"std.numpy.ndarray.ndarray[bool,1]:std.numpy.ndarray.ndarray.__and__:0[std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[bool,1]].2681.exit.i.i"
  br i1 %.not7.i.i.i.i927.i.i, label %for.body.i.i.i935.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i"

imp_for.body.i.i.i930.i.i:                        ; preds = %imp_for.body.i.i.i930.i.i, %imp_for.body.i.i.i930.i.i.preheader1171
  %699 = phi i64 [ %702, %imp_for.body.i.i.i930.i.i ], [ %.ph1172, %imp_for.body.i.i.i930.i.i.preheader1171 ]
  %700 = getelementptr i64, ptr %.fca.2.extract.i.i.i915.i.i, i64 %699
  %701 = load i64, ptr %700, align 4
  %tmp.i.i.i.i.i.i931.i.i = add i64 %701, 1
  store i64 %tmp.i.i.i.i.i.i931.i.i, ptr %700, align 4
  %702 = add nuw nsw i64 %699, 1
  %exitcond.not.i.i.i932.i.i = icmp eq i64 %702, %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i
  br i1 %exitcond.not.i.i.i932.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i", label %imp_for.body.i.i.i930.i.i, !llvm.loop !85

for.body.i.i.i935.i.i:                            ; preds = %for.body.i.i.i935.i.i.backedge, %imp_for.cond.preheader.i.i.i.i933.i.i
  %.sroa.6.1.i.i.i936.i.i = phi i64 [ %.sroa.6.1.i.i.i936.i.i.be, %for.body.i.i.i935.i.i.backedge ], [ 0, %imp_for.cond.preheader.i.i.i.i933.i.i ]
  store i2 1, ptr %.sroa.18.i.i.i914.i.i, align 8
  %tmp.i.i.i71.i.i.i937.i.i = mul i64 %.sroa.6.1.i.i.i936.i.i, %.fca.0.extract.i.i.i.i.i918.i.i
  %703 = getelementptr i8, ptr %.fca.2.extract.i.i.i915.i.i, i64 %tmp.i.i.i71.i.i.i937.i.i
  %704 = load i64, ptr %703, align 4
  %tmp.i.i.i72.i.i.i938.i.i = add i64 %704, 1
  store i64 %tmp.i.i.i72.i.i.i938.i.i, ptr %703, align 4
  %.sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i939.i.i = load i2, ptr %.sroa.18.i.i.i914.i.i, align 8, !alias.scope !86
  %switch.i79.i.i.i940.i.i = icmp eq i2 %.sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.i.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.i914.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i78.i.i.i939.i.i, 0
  br i1 %switch.i79.i.i.i940.i.i, label %for.body.i.i.i935.i.i.backedge, label %yield.new2.i80.i.i.i941.i.i

yield.new2.i80.i.i.i941.i.i:                      ; preds = %for.body.i.i.i935.i.i
  %705 = add nuw nsw i64 %.sroa.6.1.i.i.i936.i.i, 1
  %exitcond.not.i85.i.i.i942.i.i = icmp eq i64 %705, %t.fca.0.extract.i.i.i.i.i.i.i.i.i916.i.i
  br i1 %exitcond.not.i85.i.i.i942.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i", label %for.body.i.i.i935.i.i.backedge

for.body.i.i.i935.i.i.backedge:                   ; preds = %yield.new2.i80.i.i.i941.i.i, %for.body.i.i.i935.i.i
  %.sroa.6.1.i.i.i936.i.i.be = phi i64 [ %705, %yield.new2.i80.i.i.i941.i.i ], [ 0, %for.body.i.i.i935.i.i ]
  br label %for.body.i.i.i935.i.i

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i": ; preds = %yield.new2.i80.i.i.i941.i.i, %imp_for.body.i.i.i930.i.i, %imp_for.cond.preheader.i.i.i.i933.i.i, %middle.block169, %imp_for.cond.preheader.i.i.i928.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.18.i.i.i914.i.i)
  tail call fastcc void @"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__setitem__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[bool,1],std.numpy.ndarray.ndarray[int,1]].2424"({ { i64 }, { i64 }, ptr } %316, { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i878.i.i, { { i64 }, { i64 }, ptr } %686)
  %706 = extractvalue { { i64 }, { i64 }, ptr } %.fr10981205.i.i, 1
  %.fca.0.extract.i.i.i1068.i.i = extractvalue { i64 } %706, 0
  %707 = tail call ptr @seq_alloc_atomic(i64 %341)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2812.exit.i.i.i", label %for.body.i.i1078.i.i.preheader

for.body.i.i1078.i.i.preheader:                   ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i"
  %min.iters.check1099 = icmp ne i64 %340, 1
  %ident.check.not1135 = icmp eq i64 %.fca.0.extract.i.i.i1068.i.i, 1
  %or.cond1138 = and i1 %min.iters.check1099, %ident.check.not1135
  br i1 %or.cond1138, label %vector.ph, label %for.body.i.i1078.i.i.preheader1170

vector.ph:                                        ; preds = %for.body.i.i1078.i.i.preheader
  %n.vec1100 = and i64 %340, 9223372036854775806
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %vector.ph
  %index1103 = phi i64 [ 0, %vector.ph ], [ %index.next1104, %vector.body1102 ]
  %708 = or i64 %index1103, 1
  %709 = getelementptr i8, ptr %315, i64 %index1103
  %710 = getelementptr i8, ptr %315, i64 %708
  %711 = shl i64 %index1103, 3
  %712 = shl i64 %708, 3
  %713 = getelementptr i8, ptr %707, i64 %711
  %714 = getelementptr i8, ptr %707, i64 %712
  %715 = load i64, ptr %709, align 4
  %716 = load i64, ptr %710, align 4
  store i64 %715, ptr %713, align 4
  store i64 %716, ptr %714, align 4
  %index.next1104 = add nuw i64 %index1103, 2
  %717 = icmp eq i64 %index.next1104, %n.vec1100
  br i1 %717, label %middle.block1098, label %vector.body1102, !llvm.loop !89

middle.block1098:                                 ; preds = %vector.body1102
  %cmp.n1101 = icmp eq i64 %340, %n.vec1100
  br i1 %cmp.n1101, label %if.exit.i.i1072.i.i, label %for.body.i.i1078.i.i.preheader1170

for.body.i.i1078.i.i.preheader1170:               ; preds = %middle.block1098, %for.body.i.i1078.i.i.preheader
  %.sroa.6.1.i.i1079.i.i.ph = phi i64 [ 0, %for.body.i.i1078.i.i.preheader ], [ %n.vec1100, %middle.block1098 ]
  br label %for.body.i.i1078.i.i

for.body.i.i1078.i.i:                             ; preds = %for.body.i.i1078.i.i, %for.body.i.i1078.i.i.preheader1170
  %.sroa.6.1.i.i1079.i.i = phi i64 [ %721, %for.body.i.i1078.i.i ], [ %.sroa.6.1.i.i1079.i.i.ph, %for.body.i.i1078.i.i.preheader1170 ]
  %tmp.i.i.i.i.i1080.i.i = mul i64 %.sroa.6.1.i.i1079.i.i, %.fca.0.extract.i.i.i1068.i.i
  %718 = getelementptr i8, ptr %315, i64 %tmp.i.i.i.i.i1080.i.i
  %tmp.i.i.i362.i.i1081.i.i = shl i64 %.sroa.6.1.i.i1079.i.i, 3
  %719 = getelementptr i8, ptr %707, i64 %tmp.i.i.i362.i.i1081.i.i
  %720 = load i64, ptr %718, align 4
  store i64 %720, ptr %719, align 4
  %721 = add nuw nsw i64 %.sroa.6.1.i.i1079.i.i, 1
  %exitcond.not.i412.i.i1082.i.i = icmp eq i64 %721, %340
  br i1 %exitcond.not.i412.i.i1082.i.i, label %if.exit.i.i1072.i.i, label %for.body.i.i1078.i.i, !llvm.loop !90

if.exit.i.i1072.i.i:                              ; preds = %for.body.i.i1078.i.i, %middle.block1098
  %722 = load i64, ptr %707, align 4
  %.not93107.i.i.i.i.not = icmp eq i64 %340, 1
  br i1 %.not93107.i.i.i.i.not, label %if.exit3.i.i.i.i, label %imp_for.body.i.i1075.i.i.preheader

imp_for.body.i.i1075.i.i.preheader:               ; preds = %if.exit.i.i1072.i.i
  %723 = add nsw i64 %340, -1
  %min.iters.check155 = icmp eq i64 %340, 2
  br i1 %min.iters.check155, label %imp_for.body.i.i1075.i.i.preheader1168, label %vector.ph156

vector.ph156:                                     ; preds = %imp_for.body.i.i1075.i.i.preheader
  %n.vec158 = and i64 %723, -2
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph156
  %index162 = phi i64 [ 0, %vector.ph156 ], [ %724, %vector.body161 ]
  %vec.phi = phi i64 [ %722, %vector.ph156 ], [ %729, %vector.body161 ]
  %vec.phi163 = phi i64 [ %722, %vector.ph156 ], [ %730, %vector.body161 ]
  %vec.phi164 = phi i64 [ %722, %vector.ph156 ], [ %731, %vector.body161 ]
  %vec.phi165 = phi i64 [ %722, %vector.ph156 ], [ %732, %vector.body161 ]
  %offset.idx = or i64 %index162, 1
  %724 = add i64 %index162, 2
  %725 = getelementptr i64, ptr %707, i64 %offset.idx
  %726 = getelementptr i64, ptr %707, i64 %724
  %727 = load i64, ptr %725, align 4
  %728 = load i64, ptr %726, align 4
  %729 = tail call i64 @llvm.smax.i64(i64 %vec.phi, i64 %727)
  %730 = tail call i64 @llvm.smax.i64(i64 %vec.phi163, i64 %728)
  %731 = tail call i64 @llvm.smin.i64(i64 %727, i64 %vec.phi164)
  %732 = tail call i64 @llvm.smin.i64(i64 %728, i64 %vec.phi165)
  %733 = icmp eq i64 %724, %n.vec158
  br i1 %733, label %middle.block153, label %vector.body161, !llvm.loop !91

middle.block153:                                  ; preds = %vector.body161
  %ind.end = or i64 %723, 1
  %rdx.minmax167 = tail call i64 @llvm.smin.i64(i64 %731, i64 %732)
  %rdx.minmax = tail call i64 @llvm.smax.i64(i64 %729, i64 %730)
  %cmp.n160 = icmp eq i64 %723, %n.vec158
  br i1 %cmp.n160, label %if.exit3.i.i.i.i, label %imp_for.body.i.i1075.i.i.preheader1168

imp_for.body.i.i1075.i.i.preheader1168:           ; preds = %middle.block153, %imp_for.body.i.i1075.i.i.preheader
  %.ph1169 = phi i64 [ %ind.end, %middle.block153 ], [ 1, %imp_for.body.i.i1075.i.i.preheader ]
  %.1109.i.i.i.i.ph = phi i64 [ %rdx.minmax, %middle.block153 ], [ %722, %imp_for.body.i.i1075.i.i.preheader ]
  %.185108.i.i.i.i.ph = phi i64 [ %rdx.minmax167, %middle.block153 ], [ %722, %imp_for.body.i.i1075.i.i.preheader ]
  br label %imp_for.body.i.i1075.i.i

if.exit3.i.i.i.i:                                 ; preds = %imp_for.body.i.i1075.i.i, %middle.block153, %if.exit.i.i1072.i.i
  %.084.i.i.i.i = phi i64 [ %722, %if.exit.i.i1072.i.i ], [ %rdx.minmax167, %middle.block153 ], [ %.286.i.i.i.i, %imp_for.body.i.i1075.i.i ]
  %.0.i.i.i.i = phi i64 [ %722, %if.exit.i.i1072.i.i ], [ %rdx.minmax, %middle.block153 ], [ %spec.select.i.i.i.i, %imp_for.body.i.i1075.i.i ]
  %734 = insertvalue { i64, i64 } undef, i64 %.084.i.i.i.i, 0
  %735 = insertvalue { i64, i64 } %734, i64 %.0.i.i.i.i, 1
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2812.exit.i.i.i"

imp_for.body.i.i1075.i.i:                         ; preds = %imp_for.body.i.i1075.i.i, %imp_for.body.i.i1075.i.i.preheader1168
  %736 = phi i64 [ %739, %imp_for.body.i.i1075.i.i ], [ %.ph1169, %imp_for.body.i.i1075.i.i.preheader1168 ]
  %.1109.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %imp_for.body.i.i1075.i.i ], [ %.1109.i.i.i.i.ph, %imp_for.body.i.i1075.i.i.preheader1168 ]
  %.185108.i.i.i.i = phi i64 [ %.286.i.i.i.i, %imp_for.body.i.i1075.i.i ], [ %.185108.i.i.i.i.ph, %imp_for.body.i.i1075.i.i.preheader1168 ]
  %737 = getelementptr i64, ptr %707, i64 %736
  %738 = load i64, ptr %737, align 4
  %spec.select.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %.1109.i.i.i.i, i64 %738)
  %.286.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %738, i64 %.185108.i.i.i.i)
  %739 = add nuw nsw i64 %736, 1
  %exitcond.not.i.i1076.i.i = icmp eq i64 %739, %340
  br i1 %exitcond.not.i.i1076.i.i, label %if.exit3.i.i.i.i, label %imp_for.body.i.i1075.i.i, !llvm.loop !92

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2812.exit.i.i.i": ; preds = %if.exit3.i.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i"
  %common.ret.op.i.i1073.i.i = phi { i64, i64 } [ %735, %if.exit3.i.i.i.i ], [ zeroinitializer, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],int].2692.exit.i.i" ]
  %.fca.0.extract.i.i.i = extractvalue { i64, i64 } %common.ret.op.i.i1073.i.i, 0
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %common.ret.op.i.i1073.i.i, 1
  %.not108.i.i.i = icmp sgt i64 %.fca.0.extract.i.i.i, -1
  tail call void @llvm.assume(i1 %.not108.i.i.i)
  %tmp.i113.i.i.i = add i64 %.fca.1.extract.i.i.i, 1
  %spec.select.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i113.i.i.i, i64 3)
  %740 = shl i64 %spec.select.i.i.i, 3
  %741 = tail call ptr @seq_alloc_atomic(i64 %740)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %741, i8 0, i64 %740, i1 false)
  br i1 %.not7.i.not.i.i.i.i.i.i, label %for.body.preheader.i.i.i, label %imp_for.body.i.i.i

imp_for.body.i.i.i:                               ; preds = %imp_for.body.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2812.exit.i.i.i"
  %742 = phi i64 [ %747, %imp_for.body.i.i.i ], [ 0, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2812.exit.i.i.i" ]
  %tmp.i.i.i.i1074.i.i = shl i64 %742, 3
  %743 = getelementptr i8, ptr %707, i64 %tmp.i.i.i.i1074.i.i
  %744 = load i64, ptr %743, align 4
  %tmp.i.i.i117.i.i.i = shl i64 %744, 3
  %745 = getelementptr i8, ptr %741, i64 %tmp.i.i.i117.i.i.i
  %746 = load i64, ptr %745, align 4
  %tmp.i116.i.i.i = add i64 %746, 1
  store i64 %tmp.i116.i.i.i, ptr %745, align 4
  %747 = add nuw nsw i64 %742, 1
  %exitcond.not.i.i.i = icmp eq i64 %747, %340
  br i1 %exitcond.not.i.i.i, label %for.body.preheader.i.i.i, label %imp_for.body.i.i.i

for.body.preheader.i.i.i:                         ; preds = %imp_for.body.i.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._minmax:0[std.numpy.ndarray.ndarray[int,1]].2812.exit.i.i.i"
  %748 = insertvalue { i64 } undef, i64 %spec.select.i.i.i, 0
  %749 = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %748, 0
  %750 = tail call ptr @seq_alloc_atomic(i64 %740)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %750, ptr nonnull align 4 %741, i64 %740, i1 false)
  %751 = insertvalue { { i64 }, { i64 }, ptr } %749, { i64 } { i64 8 }, 1
  %.fr1102.i.i = freeze { { i64 }, { i64 }, ptr } %751
  %752 = extractvalue { { i64 }, { i64 }, ptr } %.fr1102.i.i, 0
  %.fca.0.extract.i.i.i.i.i.i.i.i948.i.i = extractvalue { i64 } %752, 0
  %tmp.i.i.i.i.i.not.i.i.i.i949.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i948.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %tmp.i.i.i.i.i.not.i.i.i.i949.i.i, label %if.exit.i.i.i.i969.i.i, label %imp_for.cond.preheader.i.i.i.i950.i.i

if.exit.i.i.i.i969.i.i:                           ; preds = %for.body.preheader.i.i.i
  %753 = extractvalue { { i64 }, { i64 }, ptr } %.fr1102.i.i, 1
  %.fca.0.extract.i83.i.i.i.i975.i.i = extractvalue { i64 } %753, 0
  %tmp.i82.not.i84.i.i.i.i976.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i975.i.i, 8
  %754 = or i1 %switch.i.i.i.i970.i.i, %tmp.i82.not.i84.i.i.i.i976.i.i
  %common.ret.op.i81.i.i.i.i977.i.i = select i1 %754, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i978.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i977.i.i, 0
  %755 = and i8 %.fca.0.extract.i.i.i.i978.i.i, 1
  %756 = icmp ne i8 %755, 0
  %757 = select i1 %.not76.i.i.i.i980.i.i, i1 %756, i1 false
  br i1 %757, label %if.true.i.i.i986.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2818.exit.i.i.i.i.i"

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2818.exit.i.i.i.i.i": ; preds = %if.exit.i.i.i.i969.i.i
  %.fca.1.extract.i.i.i.i982.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i977.i.i, 1
  %758 = and i8 %.fca.1.extract.i.i.i.i982.i.i, 1
  %.not164.i.i.i.i.i = icmp eq i8 %758, 0
  %.not.i.i.i985.i.i = select i1 %.not77.i.i.i.i984.i.i, i1 true, i1 %.not164.i.i.i.i.i
  br i1 %.not.i.i.i985.i.i, label %imp_for.cond.preheader.i.i.i.i950.i.i, label %if.true.i.i.i986.i.i

if.true.i.i.i986.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2818.exit.i.i.i.i.i", %if.exit.i.i.i.i969.i.i
  br i1 %.not7.i.i.i.i953.i.i, label %imp_for.body.i.i.i988.i.i.preheader, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i"

imp_for.body.i.i.i988.i.i.preheader:              ; preds = %if.true.i.i.i986.i.i
  br i1 %min.iters.check, label %imp_for.body.i.i.i988.i.i.preheader1165, label %vector.body

vector.body:                                      ; preds = %vector.body, %imp_for.body.i.i.i988.i.i.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %imp_for.body.i.i.i988.i.i.preheader ]
  %759 = or i64 %index, 1
  %760 = getelementptr i64, ptr %2, i64 %index
  %761 = getelementptr i64, ptr %2, i64 %759
  %762 = load i64, ptr %760, align 8
  %763 = load i64, ptr %761, align 8
  %764 = getelementptr i64, ptr %750, i64 %index
  %765 = getelementptr i64, ptr %750, i64 %759
  %766 = load i64, ptr %764, align 4
  %767 = load i64, ptr %765, align 4
  %768 = add i64 %766, %762
  %769 = add i64 %767, %763
  store i64 %768, ptr %760, align 8
  store i64 %769, ptr %761, align 8
  %index.next = add nuw i64 %index, 2
  %770 = icmp eq i64 %index.next, %n.vec
  br i1 %770, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i", label %imp_for.body.i.i.i988.i.i.preheader1165

imp_for.body.i.i.i988.i.i.preheader1165:          ; preds = %middle.block, %imp_for.body.i.i.i988.i.i.preheader
  br label %imp_for.body.i.i.i988.i.i

imp_for.cond.preheader.i.i.i.i950.i.i:            ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2818.exit.i.i.i.i.i", %for.body.preheader.i.i.i
  %771 = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i948.i.i, 1
  %tmp.i.i.i.i.not.not.i.i.i952.i.i = or i1 %tmp.i.not.i.i.i.i951.i.i, %771
  tail call void @llvm.assume(i1 %tmp.i.i.i.i.not.not.i.i.i952.i.i)
  br i1 %.not7.i.i.i.i953.i.i, label %for.body.lr.ph.i.i.i954.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i"

for.body.lr.ph.i.i.i954.i.i:                      ; preds = %imp_for.cond.preheader.i.i.i.i950.i.i
  %772 = extractvalue { { i64 }, { i64 }, ptr } %.fr1102.i.i, 1
  %.fca.0.extract.i.i150.i.i.i956.i.i = extractvalue { i64 } %772, 0
  br i1 %tmp.i.not.i.i.i.i951.i.i, label %for.body.lr.ph.split.us.i.i.i959.i.i, label %for.body.lr.ph.split.i.i.i957.i.i

for.body.lr.ph.split.us.i.i.i959.i.i:             ; preds = %for.body.lr.ph.i.i.i954.i.i
  br i1 %771, label %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit201.i.i.i.peel.i.i", label %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit219.i.i.i.peel.i.i"

"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit219.i.i.i.peel.i.i": ; preds = %for.body.lr.ph.split.us.i.i.i959.i.i
  %773 = load i64, ptr %2, align 8
  %774 = load i64, ptr %750, align 4
  %tmp.i.i.i155.us.i.i.i.peel.i.i = add i64 %774, %773
  store i64 %tmp.i.i.i155.us.i.i.i.peel.i.i, ptr %2, align 8
  br label %yield.new2.i206.i.i.i.i.i

"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit201.i.i.i.peel.i.i": ; preds = %for.body.lr.ph.split.us.i.i.i959.i.i
  %775 = load i64, ptr %750, align 4
  %776 = load i64, ptr %2, align 8
  %tmp.i.i.i155.us.us.i.i.i.peel.i.i = add i64 %776, %775
  store i64 %tmp.i.i.i155.us.us.i.i.i.peel.i.i, ptr %2, align 8
  br label %yield.new2.i188.i.i.i.i.i

yield.new2.i188.i.i.i.i.i:                        ; preds = %yield.new2.i188.i.i.i.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit201.i.i.i.peel.i.i"
  %.sroa.12.1.i.i.i967.i.i = phi i64 [ 1, %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit201.i.i.i.peel.i.i" ], [ %779, %yield.new2.i188.i.i.i.i.i ]
  %tmp.i40.i.i.us.us.i.i.i968.i.i = mul i64 %.sroa.12.1.i.i.i967.i.i, %.fca.0.extract.i.i.i.i.i971.i.i
  %777 = getelementptr i8, ptr %2, i64 %tmp.i40.i.i.us.us.i.i.i968.i.i
  %778 = load i64, ptr %777, align 4
  %tmp.i.i.i155.us.us.i.i.i.i.i = add i64 %778, %775
  store i64 %tmp.i.i.i155.us.us.i.i.i.i.i, ptr %777, align 4
  %779 = add nuw nsw i64 %.sroa.12.1.i.i.i967.i.i, 1
  %exitcond.not.i193.i.i.i.i.i = icmp eq i64 %779, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %exitcond.not.i193.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i", label %yield.new2.i188.i.i.i.i.i, !llvm.loop !94

yield.new2.i206.i.i.i.i.i:                        ; preds = %yield.new2.i206.i.i.i.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit219.i.i.i.peel.i.i"
  %.sroa.12.3.i.i.i962.i.i = phi i64 [ 1, %"std.numpy.util.multirange:0[Tuple[int]].1312.resume.exit219.i.i.i.peel.i.i" ], [ %784, %yield.new2.i206.i.i.i.i.i ]
  %tmp.i40.i.i.us.i.i.i963.i.i = mul i64 %.sroa.12.3.i.i.i962.i.i, %.fca.0.extract.i.i.i.i.i971.i.i
  %780 = getelementptr i8, ptr %2, i64 %tmp.i40.i.i.us.i.i.i963.i.i
  %tmp.i40.i.i152.us.i.i.i964.i.i = mul i64 %.sroa.12.3.i.i.i962.i.i, %.fca.0.extract.i.i150.i.i.i956.i.i
  %781 = getelementptr i8, ptr %750, i64 %tmp.i40.i.i152.us.i.i.i964.i.i
  %782 = load i64, ptr %780, align 4
  %783 = load i64, ptr %781, align 4
  %tmp.i.i.i155.us.i.i.i.i.i = add i64 %783, %782
  store i64 %tmp.i.i.i155.us.i.i.i.i.i, ptr %780, align 4
  %784 = add nuw nsw i64 %.sroa.12.3.i.i.i962.i.i, 1
  %exitcond.not.i211.i.i.i.i.i = icmp eq i64 %784, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %exitcond.not.i211.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i", label %yield.new2.i206.i.i.i.i.i, !llvm.loop !95

for.body.lr.ph.split.i.i.i957.i.i:                ; preds = %for.body.lr.ph.i.i.i954.i.i
  %785 = load i64, ptr %2, align 8
  %786 = load i64, ptr %750, align 4
  %tmp.i.i.i155.us169.i27.i.i.i.i = add i64 %786, %785
  store i64 %tmp.i.i.i155.us169.i27.i.i.i.i, ptr %2, align 8
  br label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i"

imp_for.body.i.i.i988.i.i:                        ; preds = %imp_for.body.i.i.i988.i.i, %imp_for.body.i.i.i988.i.i.preheader1165
  %787 = phi i64 [ %792, %imp_for.body.i.i.i988.i.i ], [ %n.vec, %imp_for.body.i.i.i988.i.i.preheader1165 ]
  %788 = getelementptr i64, ptr %2, i64 %787
  %789 = load i64, ptr %788, align 8
  %790 = getelementptr i64, ptr %750, i64 %787
  %791 = load i64, ptr %790, align 4
  %tmp.i.i.i.i.i.i989.i.i = add i64 %791, %789
  store i64 %tmp.i.i.i.i.i.i989.i.i, ptr %788, align 8
  %792 = add nuw nsw i64 %787, 1
  %exitcond.not.i.i.i990.i.i = icmp eq i64 %792, %.fca.0.extract3.i.i.i.i.i.i.i.i947.i.i
  br i1 %exitcond.not.i.i.i990.i.i, label %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i", label %imp_for.body.i.i.i988.i.i, !llvm.loop !96

"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i": ; preds = %imp_for.body.i.i.i988.i.i, %for.body.lr.ph.split.i.i.i957.i.i, %yield.new2.i206.i.i.i.i.i, %yield.new2.i188.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i950.i.i, %middle.block, %if.true.i.i.i986.i.i
  %.sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.0..sroa.36.i.0..sroa.36.0..sroa.36.0..sroa.36.64.index.i1257.i.i = load i2, ptr %.sroa.36.i.i, align 8, !alias.scope !97
  switch i2 %.sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.i.0..sroa.36.i.0..sroa.36.i.0..sroa.36.0..sroa.36.0..sroa.36.64.index.i1257.i.i, label %unreachable.i1295.i.i [
    i2 0, label %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i"
    i2 1, label %yield.new6.i1271.i.i
    i2 -2, label %yield.new2.i1258.i.i
  ]

yield.new2.i1258.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i"
  %tmp.i88.i1265.i.i = add i64 %.sroa.28.1.i.i, 65536
  %tmp.i86.not.i1266.i.i = icmp slt i64 %tmp.i88.i1265.i.i, %.fca.0.extract38.i.i.i.i.i
  br i1 %tmp.i86.not.i1266.i.i, label %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i", label %imp_for.body.lr.ph.i.i.i.i.loopexit

yield.new6.i1271.i.i:                             ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i"
  %tmp.i91.i1278.i.i = add i64 %.sroa.32.1.i.i, 65536
  %tmp.i89.not.i1279.i.i = icmp sgt i64 %tmp.i91.i1278.i.i, %.fca.0.extract38.i.i.i.i.i
  br i1 %tmp.i89.not.i1279.i.i, label %"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i", label %imp_for.body.lr.ph.i.i.i.i.loopexit

unreachable.i1295.i.i:                            ; preds = %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i"
  unreachable

"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume.exit1296.i.i": ; preds = %yield.new6.i1271.i.i, %yield.new2.i1258.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i"
  %storemerge.i.i = phi i2 [ -2, %yield.new2.i1258.i.i ], [ 1, %yield.new6.i1271.i.i ], [ -2, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i" ]
  %.sroa.28.2.i.i = phi i64 [ %tmp.i88.i1265.i.i, %yield.new2.i1258.i.i ], [ %.sroa.28.1.i.i, %yield.new6.i1271.i.i ], [ 0, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i" ]
  %.sroa.6.2.i.i = phi i64 [ %tmp.i88.i1265.i.i, %yield.new2.i1258.i.i ], [ %tmp.i91.i1278.i.i, %yield.new6.i1271.i.i ], [ 0, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i" ]
  %.sroa.32.2.i.i = phi i64 [ %.sroa.32.1.i.i, %yield.new2.i1258.i.i ], [ %tmp.i91.i1278.i.i, %yield.new6.i1271.i.i ], [ %.sroa.32.1.i.i, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.__iadd__:0[std.numpy.ndarray.ndarray[int,1],std.numpy.ndarray.ndarray[int,1]].2829.exit.i.i" ]
  store i2 %storemerge.i.i, ptr %.sroa.36.i.i, align 8, !alias.scope !97
  br label %for.body.i.i

"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2832.exit.i": ; preds = %imp_for.body.i.i.i51.i.i.i, %middle.block557, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i", %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i.thread"
  %793 = phi ptr [ %196, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i.thread" ], [ %198, %middle.block557 ], [ %198, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i" ], [ %198, %imp_for.body.i.i.i51.i.i.i ]
  %794 = phi i64 [ %195, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i.thread" ], [ %197, %middle.block557 ], [ %197, %"std.numpy.ndarray.ndarray[int,1]:std.numpy.ndarray.ndarray.sum:0[std.numpy.ndarray.ndarray[int,1],Optional[NoneType],Optional[NoneType],int,std.numpy.util._NoValue,NoneType,0].2792.exit.i.i.i" ], [ %197, %imp_for.body.i.i.i51.i.i.i ]
  %.fr1023 = freeze { i64 } { i64 8 }
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.36.i.i)
  %795 = extractvalue { { i64 }, { i64 }, ptr } %.fr1103.i.i, 0
  %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i = extractvalue { i64 } %795, 0
  %switch.i.i.i.i86.i = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 2
  %.fca.0.extract.i.i.i.i.i87.i = extractvalue { i64 } %.fr1023, 0
  %tmp.i82.not.i.i.i.i.i88.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i87.i, 8
  %or.cond.i.i.i.i.i = or i1 %switch.i.i.i.i86.i, %tmp.i82.not.i.i.i.i.i88.i
  %common.ret.op.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i89.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i90.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i.i, 1
  %796 = and i8 %.fca.0.extract.i.i.i.i89.i, 1
  %.not.i.i.i.i91.i = icmp eq i8 %796, 0
  %797 = and i8 %.fca.1.extract.i.i.i.i90.i, 1
  %.not8190.i.i.i.i = icmp eq i8 %797, 0
  %.not81.i.i.i.i = select i1 %.not.i.i.i.i91.i, i1 %.not8190.i.i.i.i, i1 false
  %.not7.i.i.i.i92.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 0
  br i1 %.not81.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i95.i, label %while.cond.preheader.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2832.exit.i"
  br i1 %.not7.i.i.i.i92.i, label %while.body.i.i.i.i.preheader, label %imp_for.cond.preheader.i.i.i.i

while.body.i.i.i.i.preheader:                     ; preds = %while.cond.preheader.i.i.i.i
  %min.iters.check570 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check570, label %while.body.i.i.i.i.preheader1150, label %vector.ph571

vector.ph571:                                     ; preds = %while.body.i.i.i.i.preheader
  %n.vec573 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -2
  br label %vector.body576

vector.body576:                                   ; preds = %vector.body576, %vector.ph571
  %index577 = phi i64 [ 0, %vector.ph571 ], [ %index.next579, %vector.body576 ]
  %vec.phi578 = phi double [ 0.000000e+00, %vector.ph571 ], [ %804, %vector.body576 ]
  %798 = or i64 %index577, 1
  %799 = getelementptr double, ptr %793, i64 %index577
  %800 = getelementptr double, ptr %793, i64 %798
  %801 = load double, ptr %799, align 8
  %802 = load double, ptr %800, align 8
  %803 = fadd double %vec.phi578, %801
  %804 = fadd double %803, %802
  %index.next579 = add nuw i64 %index577, 2
  %805 = icmp eq i64 %index.next579, %n.vec573
  br i1 %805, label %middle.block568, label %vector.body576, !llvm.loop !100

middle.block568:                                  ; preds = %vector.body576
  %cmp.n575 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec573
  br i1 %cmp.n575, label %imp_for.cond.preheader.i.i.i.i, label %while.body.i.i.i.i.preheader1150

while.body.i.i.i.i.preheader1150:                 ; preds = %middle.block568, %while.body.i.i.i.i.preheader
  %.unpack.i93.i.i.i.i.ph = phi double [ %804, %middle.block568 ], [ 0.000000e+00, %while.body.i.i.i.i.preheader ]
  %.192.i.i.i.i.ph = phi i64 [ %n.vec573, %middle.block568 ], [ 0, %while.body.i.i.i.i.preheader ]
  br label %while.body.i.i.i.i

imp_for.cond.preheader.i.i.i.i95.i:               ; preds = %"std.numpy.statistics.histogram:0[std.numpy.ndarray.ndarray[int,1],int,Optional[NoneType],Optional[NoneType],1].2832.exit.i"
  br i1 %.not7.i.i.i.i92.i, label %for.body.i.i.i97.i.preheader, label %imp_for.cond.preheader.i.i.i.i

for.body.i.i.i97.i.preheader:                     ; preds = %imp_for.cond.preheader.i.i.i.i95.i
  %min.iters.check585 = icmp ne i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  %ident.check582.not = icmp eq i64 %.fca.0.extract.i.i.i.i.i87.i, 1
  %or.cond746 = and i1 %min.iters.check585, %ident.check582.not
  br i1 %or.cond746, label %vector.ph586, label %for.body.i.i.i97.i.preheader1148

vector.ph586:                                     ; preds = %for.body.i.i.i97.i.preheader
  %n.vec588 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -2
  br label %vector.body591

vector.body591:                                   ; preds = %vector.body591, %vector.ph586
  %index592 = phi i64 [ 0, %vector.ph586 ], [ %index.next594, %vector.body591 ]
  %vec.phi593 = phi double [ 0.000000e+00, %vector.ph586 ], [ %812, %vector.body591 ]
  %806 = or i64 %index592, 1
  %807 = getelementptr i8, ptr %793, i64 %index592
  %808 = getelementptr i8, ptr %793, i64 %806
  %809 = load double, ptr %807, align 8
  %810 = load double, ptr %808, align 8
  %811 = fadd double %vec.phi593, %809
  %812 = fadd double %811, %810
  %index.next594 = add nuw i64 %index592, 2
  %813 = icmp eq i64 %index.next594, %n.vec588
  br i1 %813, label %middle.block583, label %vector.body591, !llvm.loop !101

middle.block583:                                  ; preds = %vector.body591
  %cmp.n590 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec588
  br i1 %cmp.n590, label %imp_for.cond.preheader.i.i.i.i, label %for.body.i.i.i97.i.preheader1148

for.body.i.i.i97.i.preheader1148:                 ; preds = %middle.block583, %for.body.i.i.i97.i.preheader
  %.sroa.6.1.i.i.i98.i.ph = phi i64 [ %n.vec588, %middle.block583 ], [ 0, %for.body.i.i.i97.i.preheader ]
  %.unpack.i8895.i.i.i.i.ph = phi double [ %812, %middle.block583 ], [ 0.000000e+00, %for.body.i.i.i97.i.preheader ]
  br label %for.body.i.i.i97.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i, %while.body.i.i.i.i.preheader1150
  %.unpack.i93.i.i.i.i = phi double [ %tmp.i.i.i.i.i93.i, %while.body.i.i.i.i ], [ %.unpack.i93.i.i.i.i.ph, %while.body.i.i.i.i.preheader1150 ]
  %.192.i.i.i.i = phi i64 [ %tmp.i85.i.i.i.i, %while.body.i.i.i.i ], [ %.192.i.i.i.i.ph, %while.body.i.i.i.i.preheader1150 ]
  %814 = getelementptr double, ptr %793, i64 %.192.i.i.i.i
  %815 = load double, ptr %814, align 8
  %tmp.i.i.i.i.i93.i = fadd double %.unpack.i93.i.i.i.i, %815
  %tmp.i85.i.i.i.i = add nuw nsw i64 %.192.i.i.i.i, 1
  %exitcond.not.i.i.i94.i = icmp eq i64 %tmp.i85.i.i.i.i, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i94.i, label %imp_for.cond.preheader.i.i.i.i, label %while.body.i.i.i.i, !llvm.loop !102

for.body.i.i.i97.i:                               ; preds = %for.body.i.i.i97.i, %for.body.i.i.i97.i.preheader1148
  %.sroa.6.1.i.i.i98.i = phi i64 [ %818, %for.body.i.i.i97.i ], [ %.sroa.6.1.i.i.i98.i.ph, %for.body.i.i.i97.i.preheader1148 ]
  %.unpack.i8895.i.i.i.i = phi double [ %tmp.i.i89.i.i.i.i, %for.body.i.i.i97.i ], [ %.unpack.i8895.i.i.i.i.ph, %for.body.i.i.i97.i.preheader1148 ]
  %tmp.i.i.i.i.i.i99.i = mul i64 %.sroa.6.1.i.i.i98.i, %.fca.0.extract.i.i.i.i.i87.i
  %816 = getelementptr i8, ptr %793, i64 %tmp.i.i.i.i.i.i99.i
  %817 = load double, ptr %816, align 8
  %tmp.i.i89.i.i.i.i = fadd double %.unpack.i8895.i.i.i.i, %817
  %818 = add nuw nsw i64 %.sroa.6.1.i.i.i98.i, 1
  %exitcond.not.i106.i.i.i.i = icmp eq i64 %818, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i106.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i, label %for.body.i.i.i97.i, !llvm.loop !103

imp_for.cond.preheader.i.i.i.i:                   ; preds = %for.body.i.i.i97.i, %while.body.i.i.i.i, %middle.block583, %imp_for.cond.preheader.i.i.i.i95.i, %middle.block568, %while.cond.preheader.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi double [ 0.000000e+00, %while.cond.preheader.i.i.i.i ], [ 0.000000e+00, %imp_for.cond.preheader.i.i.i.i95.i ], [ %812, %middle.block583 ], [ %804, %middle.block568 ], [ %tmp.i.i89.i.i.i.i, %for.body.i.i.i97.i ], [ %tmp.i.i.i.i.i93.i, %while.body.i.i.i.i ]
  %819 = tail call ptr @seq_alloc_atomic(i64 %794)
  br i1 %.not7.i.i.i.i.i.i1007.i.i, label %imp_for.body.i.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.thread.i"

imp_for.body.i.i.i.i.preheader:                   ; preds = %imp_for.cond.preheader.i.i.i.i
  %min.iters.check598 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, 1
  br i1 %min.iters.check598, label %imp_for.body.i.i.i.i.preheader1146, label %vector.ph599

vector.ph599:                                     ; preds = %imp_for.body.i.i.i.i.preheader
  %n.vec601 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph599
  %index605 = phi i64 [ 0, %vector.ph599 ], [ %index.next606, %vector.body604 ]
  %820 = or i64 %index605, 1
  %821 = getelementptr double, ptr %793, i64 %index605
  %822 = getelementptr double, ptr %793, i64 %820
  %823 = load double, ptr %821, align 8
  %824 = load double, ptr %822, align 8
  %825 = fdiv double %823, %.sroa.0.0.i.i.i.i
  %826 = fdiv double %824, %.sroa.0.0.i.i.i.i
  %827 = getelementptr double, ptr %819, i64 %index605
  %828 = getelementptr double, ptr %819, i64 %820
  store double %825, ptr %827, align 8
  store double %826, ptr %828, align 8
  %index.next606 = add nuw i64 %index605, 2
  %829 = icmp eq i64 %index.next606, %n.vec601
  br i1 %829, label %middle.block596, label %vector.body604, !llvm.loop !104

middle.block596:                                  ; preds = %vector.body604
  %cmp.n603 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec601
  br i1 %cmp.n603, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i", label %imp_for.body.i.i.i.i.preheader1146

imp_for.body.i.i.i.i.preheader1146:               ; preds = %middle.block596, %imp_for.body.i.i.i.i.preheader
  %.ph1147 = phi i64 [ %n.vec601, %middle.block596 ], [ 0, %imp_for.body.i.i.i.i.preheader ]
  br label %imp_for.body.i.i.i.i

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.thread.i": ; preds = %imp_for.cond.preheader.i.i.i.i
  %830 = tail call ptr @seq_alloc_atomic(i64 %794)
  br label %if.exit.i.i.i.i.i.i110.i

imp_for.body.i.i.i.i:                             ; preds = %imp_for.body.i.i.i.i, %imp_for.body.i.i.i.i.preheader1146
  %831 = phi i64 [ %835, %imp_for.body.i.i.i.i ], [ %.ph1147, %imp_for.body.i.i.i.i.preheader1146 ]
  %832 = getelementptr double, ptr %793, i64 %831
  %833 = load double, ptr %832, align 8
  %tmp.i.i.i.i.i.i.i = fdiv double %833, %.sroa.0.0.i.i.i.i
  %834 = getelementptr double, ptr %819, i64 %831
  store double %tmp.i.i.i.i.i.i.i, ptr %834, align 8
  %835 = add nuw nsw i64 %831, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %835, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i", label %imp_for.body.i.i.i.i, !llvm.loop !105

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i": ; preds = %imp_for.body.i.i.i.i, %middle.block596
  %836 = tail call ptr @seq_alloc_atomic(i64 %794)
  br i1 %switch.i.i.i.i.i.i1004.i.i, label %imp_for.body.i.i.i65.i.preheader, label %vector.ph610

vector.ph610:                                     ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i"
  %n.vec612 = and i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, -2
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph610
  %index616 = phi i64 [ 0, %vector.ph610 ], [ %index.next617, %vector.body615 ]
  %837 = or i64 %index616, 1
  %838 = getelementptr double, ptr %819, i64 %index616
  %839 = getelementptr double, ptr %819, i64 %837
  %840 = load double, ptr %838, align 8
  %841 = load double, ptr %839, align 8
  %842 = fadd double %840, 0x3CB0000000000000
  %843 = fadd double %841, 0x3CB0000000000000
  %844 = getelementptr double, ptr %836, i64 %index616
  %845 = getelementptr double, ptr %836, i64 %837
  store double %842, ptr %844, align 8
  store double %843, ptr %845, align 8
  %index.next617 = add nuw i64 %index616, 2
  %846 = icmp eq i64 %index.next617, %n.vec612
  br i1 %846, label %middle.block607, label %vector.body615, !llvm.loop !106

middle.block607:                                  ; preds = %vector.body615
  %cmp.n614 = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi, %n.vec612
  br i1 %cmp.n614, label %if.exit.i.i.i.i.i.i110.i, label %imp_for.body.i.i.i65.i.preheader

imp_for.body.i.i.i65.i.preheader:                 ; preds = %middle.block607, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i"
  %.ph1145 = phi i64 [ %n.vec612, %middle.block607 ], [ 0, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.i" ]
  br label %imp_for.body.i.i.i65.i

imp_for.body.i.i.i65.i:                           ; preds = %imp_for.body.i.i.i65.i, %imp_for.body.i.i.i65.i.preheader
  %847 = phi i64 [ %851, %imp_for.body.i.i.i65.i ], [ %.ph1145, %imp_for.body.i.i.i65.i.preheader ]
  %848 = getelementptr double, ptr %819, i64 %847
  %849 = load double, ptr %848, align 8
  %tmp.i.i.i.i.i.i66.i = fadd double %849, 0x3CB0000000000000
  %850 = getelementptr double, ptr %836, i64 %847
  store double %tmp.i.i.i.i.i.i66.i, ptr %850, align 8
  %851 = add nuw nsw i64 %847, 1
  %exitcond.not.i.i.i67.i = icmp eq i64 %851, %.fca.0.extract3.i.i.i.i.i.i.i.i.i.i.i.pre-phi
  br i1 %exitcond.not.i.i.i67.i, label %if.exit.i.i.i.i.i.i110.i, label %imp_for.body.i.i.i65.i, !llvm.loop !107

if.exit.i.i.i.i.i.i110.i:                         ; preds = %imp_for.body.i.i.i65.i, %middle.block607, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.thread.i"
  %852 = phi ptr [ %830, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray.__truediv__:0[std.numpy.ndarray.ndarray[float,1],float].2342.exit.thread.i" ], [ %836, %middle.block607 ], [ %836, %imp_for.body.i.i.i65.i ]
  %.not.i155196.i.i.i.i.i = icmp sgt i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -1
  tail call void @llvm.assume(i1 %.not.i155196.i.i.i.i.i)
  %853 = shl i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 3
  %854 = tail call ptr @seq_alloc_atomic(i64 %853)
  %.fr = freeze { i64 } { i64 8 }
  %spec.select.i.i.i.i.i.i114.i = select i1 %tmp.i82.not.i.i.i.i.i88.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i.i.i114.i, 0
  %.fca.0.extract.i83.i.i.i.i.i.i115.i = extractvalue { i64 } %.fr, 0
  %tmp.i82.not.i84.i.i.i.i.i.i116.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i.i.i115.i, 8
  %855 = and i8 %.fca.0.extract2191.i.i.i.i.i.i.i, 1
  %856 = or i1 %tmp.i82.not.i84.i.i.i.i.i.i116.i, %switch.i.i.i.i86.i
  %common.ret.op.i81.i.i.i.i.i.i117.i = select i1 %856, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i.i.i118.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i117.i, 0
  %.not7697.i.i.i.i.i.i.i = icmp eq i8 %855, 0
  %not.switch.i.i.i.i.i.i.i = xor i1 %switch.i.i.i.i86.i, true
  %.not76.i.i.i.i.i.i119.i = select i1 %not.switch.i.i.i.i.i.i.i, i1 %.not7697.i.i.i.i.i.i.i, i1 false
  %857 = and i8 %.fca.0.extract.i.i.i.i.i.i118.i, 1
  %858 = icmp eq i8 %857, 0
  %859 = select i1 %.not76.i.i.i.i.i.i119.i, i1 true, i1 %858
  %common.ret.op.i93.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i86.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.i114.i
  %.fca.1.extract.i.i.i.i.i.i120.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i.i117.i, 1
  %.fca.1.extract22.i.i.i.i.i.i121.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i.i.i.i, 1
  %860 = and i8 %.fca.1.extract22.i.i.i.i.i.i121.i, 1
  %.not77.i.i.i.i.i.i122.i = icmp eq i8 %860, 0
  %861 = and i8 %.fca.1.extract.i.i.i.i.i.i120.i, 1
  %.not117118.i.i.i.i.i.i = icmp eq i8 %861, 0
  %.not117.i.i.i.i.i.i = select i1 %.not77.i.i.i.i.i.i122.i, i1 true, i1 %.not117118.i.i.i.i.i.i
  %.not.i.i.i.i.i123.i = select i1 %859, i1 %.not117.i.i.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i.i123.i, label %imp_for.cond.preheader.i.i.i.i.i.i102.i, label %imp_for.cond.preheader.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i:               ; preds = %if.exit.i.i.i.i.i.i110.i
  br i1 %.not7.i.i.i.i92.i, label %imp_for.body.i.i.i.i.i125.i.preheader, label %if.exit.i.i.i.i.i

imp_for.body.i.i.i.i.i125.i.preheader:            ; preds = %imp_for.cond.preheader.i.i.i.i.i.i
  %min.iters.check620 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check620, label %imp_for.body.i.i.i.i.i125.i.preheader1142, label %vector.ph621

vector.ph621:                                     ; preds = %imp_for.body.i.i.i.i.i125.i.preheader
  %n.vec623 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 9223372036854775806
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph621
  %index627 = phi i64 [ 0, %vector.ph621 ], [ %index.next628, %vector.body626 ]
  %862 = or i64 %index627, 1
  %863 = getelementptr double, ptr %852, i64 %index627
  %864 = getelementptr double, ptr %852, i64 %862
  %865 = load double, ptr %863, align 8
  %866 = load double, ptr %864, align 8
  %867 = tail call double @llvm.log.f64(double %865)
  %868 = tail call double @llvm.log.f64(double %866)
  %869 = getelementptr double, ptr %854, i64 %index627
  %870 = getelementptr double, ptr %854, i64 %862
  store double %867, ptr %869, align 8
  store double %868, ptr %870, align 8
  %index.next628 = add nuw i64 %index627, 2
  %871 = icmp eq i64 %index.next628, %n.vec623
  br i1 %871, label %middle.block618, label %vector.body626, !llvm.loop !108

middle.block618:                                  ; preds = %vector.body626
  %cmp.n625 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec623
  br i1 %cmp.n625, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge", label %imp_for.body.i.i.i.i.i125.i.preheader1142

imp_for.body.i.i.i.i.i125.i.preheader1142:        ; preds = %middle.block618, %imp_for.body.i.i.i.i.i125.i.preheader
  %.ph1143 = phi i64 [ %n.vec623, %middle.block618 ], [ 0, %imp_for.body.i.i.i.i.i125.i.preheader ]
  br label %imp_for.body.i.i.i.i.i125.i

imp_for.cond.preheader.i.i.i.i.i.i102.i:          ; preds = %if.exit.i.i.i.i.i.i110.i
  br i1 %.not7.i.i.i.i92.i, label %for.body.lr.ph.i.i.i.i.i104.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge"

for.body.lr.ph.i.i.i.i.i104.i:                    ; preds = %imp_for.cond.preheader.i.i.i.i.i.i102.i
  %tmp.i.not.i.i.i.i.i.i.i105.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  %.fca.0.extract.i.i109.i.i.i.i.i.i = extractvalue { i64 } %.fr, 0
  %872 = load double, ptr %852, align 8
  %y.i.i.i.i114.us.us.i27.i.i.i.i.i = tail call double @llvm.log.f64(double %872)
  store double %y.i.i.i.i114.us.us.i27.i.i.i.i.i, ptr %854, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i105.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge", label %yield.new2.i197.i.i.i.i.i.i.preheader

yield.new2.i197.i.i.i.i.i.i.preheader:            ; preds = %for.body.lr.ph.i.i.i.i.i104.i
  %873 = add nsw i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -1
  %min.iters.check634 = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 3
  br i1 %min.iters.check634, label %yield.new2.i197.i.i.i.i.i.i.preheader1141, label %vector.scevcheck629

vector.scevcheck629:                              ; preds = %yield.new2.i197.i.i.i.i.i.i.preheader
  %ident.check630 = icmp ne i64 %.fca.0.extract.i.i.i.i.i87.i, 1
  %ident.check631 = icmp ne i64 %.fca.0.extract.i.i109.i.i.i.i.i.i, 1
  %874 = or i1 %ident.check631, %ident.check630
  br i1 %874, label %yield.new2.i197.i.i.i.i.i.i.preheader1141, label %vector.ph635

vector.ph635:                                     ; preds = %vector.scevcheck629
  %n.vec637 = and i64 %873, -2
  br label %vector.body641

vector.body641:                                   ; preds = %vector.body641, %vector.ph635
  %index642 = phi i64 [ 0, %vector.ph635 ], [ %875, %vector.body641 ]
  %offset.idx643 = or i64 %index642, 1
  %875 = add nuw nsw i64 %index642, 2
  %876 = getelementptr i8, ptr %852, i64 %offset.idx643
  %877 = getelementptr i8, ptr %852, i64 %875
  %878 = getelementptr i8, ptr %854, i64 %offset.idx643
  %879 = getelementptr i8, ptr %854, i64 %875
  %880 = load double, ptr %876, align 8
  %881 = load double, ptr %877, align 8
  %882 = tail call double @llvm.log.f64(double %880)
  %883 = tail call double @llvm.log.f64(double %881)
  store double %882, ptr %878, align 8
  store double %883, ptr %879, align 8
  %884 = icmp eq i64 %875, %n.vec637
  br i1 %884, label %middle.block632, label %vector.body641, !llvm.loop !109

middle.block632:                                  ; preds = %vector.body641
  %ind.end638 = or i64 %873, 1
  %cmp.n640 = icmp eq i64 %873, %n.vec637
  br i1 %cmp.n640, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge", label %yield.new2.i197.i.i.i.i.i.i.preheader1141

yield.new2.i197.i.i.i.i.i.i.preheader1141:        ; preds = %middle.block632, %vector.scevcheck629, %yield.new2.i197.i.i.i.i.i.i.preheader
  %.sroa.12.5.i.i.i.i.i107.i.ph = phi i64 [ %ind.end638, %middle.block632 ], [ 1, %yield.new2.i197.i.i.i.i.i.i.preheader ], [ 1, %vector.scevcheck629 ]
  br label %yield.new2.i197.i.i.i.i.i.i

imp_for.body.i.i.i.i.i125.i:                      ; preds = %imp_for.body.i.i.i.i.i125.i, %imp_for.body.i.i.i.i.i125.i.preheader1142
  %885 = phi i64 [ %889, %imp_for.body.i.i.i.i.i125.i ], [ %.ph1143, %imp_for.body.i.i.i.i.i125.i.preheader1142 ]
  %886 = getelementptr double, ptr %852, i64 %885
  %887 = load double, ptr %886, align 8
  %y.i.i.i.i.i.i.i.i.i.i = tail call double @llvm.log.f64(double %887)
  %888 = getelementptr double, ptr %854, i64 %885
  store double %y.i.i.i.i.i.i.i.i.i.i, ptr %888, align 8
  %889 = add nuw nsw i64 %885, 1
  %exitcond.not.i.i.i.i.i126.i = icmp eq i64 %889, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i.i.i126.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge", label %imp_for.body.i.i.i.i.i125.i, !llvm.loop !110

yield.new2.i197.i.i.i.i.i.i:                      ; preds = %yield.new2.i197.i.i.i.i.i.i, %yield.new2.i197.i.i.i.i.i.i.preheader1141
  %.sroa.12.5.i.i.i.i.i107.i = phi i64 [ %893, %yield.new2.i197.i.i.i.i.i.i ], [ %.sroa.12.5.i.i.i.i.i107.i.ph, %yield.new2.i197.i.i.i.i.i.i.preheader1141 ]
  %tmp.i40.i.i.i.i.i.i.i108.i = mul i64 %.sroa.12.5.i.i.i.i.i107.i, %.fca.0.extract.i.i.i.i.i87.i
  %890 = getelementptr i8, ptr %852, i64 %tmp.i40.i.i.i.i.i.i.i108.i
  %tmp.i40.i.i111.i.i.i.i.i.i = mul i64 %.sroa.12.5.i.i.i.i.i107.i, %.fca.0.extract.i.i109.i.i.i.i.i.i
  %891 = getelementptr i8, ptr %854, i64 %tmp.i40.i.i111.i.i.i.i.i.i
  %892 = load double, ptr %890, align 8
  %y.i.i.i.i114.i.i.i.i.i.i = tail call double @llvm.log.f64(double %892)
  store double %y.i.i.i.i114.i.i.i.i.i.i, ptr %891, align 8
  %893 = add nuw nsw i64 %.sroa.12.5.i.i.i.i.i107.i, 1
  %exitcond.not.i202.i.i.i.i.i.i = icmp eq i64 %893, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i202.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge", label %yield.new2.i197.i.i.i.i.i.i, !llvm.loop !111

"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge": ; preds = %yield.new2.i197.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i125.i, %middle.block632, %for.body.lr.ph.i.i.i.i.i104.i, %imp_for.cond.preheader.i.i.i.i.i.i102.i, %middle.block618
  %.pre94 = extractvalue { i64 } %.fr, 0
  %.pre = select i1 %tmp.i82.not.i.i.i.i.i88.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.pre1015 = extractvalue { i8, i8 } %.pre, 0
  %.pre1016 = and i8 %.pre1015, 1
  br label %if.exit.i.i.i.i.i

if.exit.i.i.i.i.i:                                ; preds = %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge", %imp_for.cond.preheader.i.i.i.i.i.i
  %.pre-phi = phi i8 [ %.pre1016, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge" ], [ %855, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %spec.select.i.i.i.i.i.pre-phi = phi { i8, i8 } [ %.pre, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge" ], [ %spec.select.i.i.i.i.i.i114.i, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %.fca.0.extract.i83.i.i.i.i.i.pre-phi = phi i64 [ %.pre94, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._log:0[T1][std.numpy.ndmath._log:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,1],Optional[NoneType],bool,NoneType,NoneType].2967.exit.i.if.exit.i.i.i.i.i_crit_edge" ], [ %.fca.0.extract.i83.i.i.i.i.i.i115.i, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %tmp.i82.not.i84.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i.i.pre-phi, 8
  %894 = or i1 %switch.i.i.i.i86.i, %tmp.i82.not.i84.i.i.i.i.i
  %common.ret.op.i81.i.i.i.i.i = select i1 %894, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i70.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i, 0
  %.not7697.i.i.i.i.i = icmp ne i8 %.pre-phi, 0
  %.not76.i.i.i.i.i = select i1 %switch.i.i.i.i86.i, i1 true, i1 %.not7697.i.i.i.i.i
  %895 = and i8 %.fca.0.extract.i.i.i.i70.i, 1
  %896 = icmp ne i8 %895, 0
  %897 = select i1 %.not76.i.i.i.i.i, i1 %896, i1 false
  br i1 %897, label %if.true.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i"

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i": ; preds = %if.exit.i.i.i.i.i
  %common.ret.op.i93.i.i.i.i.i = select i1 %switch.i.i.i.i86.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i.pre-phi
  %.fca.1.extract.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i.i, 1
  %898 = and i8 %.fca.1.extract22.i.i.i.i.i, 1
  %.not77.i.i.i.i.i = icmp eq i8 %898, 0
  %899 = and i8 %.fca.1.extract.i.i.i.i.i, 1
  %.not202.i.i.i.i = icmp eq i8 %899, 0
  %.not.i.i.i.i = select i1 %.not77.i.i.i.i.i, i1 true, i1 %.not202.i.i.i.i
  br i1 %.not.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i68.i, label %if.true.i.i.i.i

if.true.i.i.i.i:                                  ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i", %if.exit.i.i.i.i.i
  %900 = tail call ptr @seq_alloc_atomic(i64 %853)
  br i1 %.not7.i.i.i.i92.i, label %imp_for.body.i.i.i72.i.preheader, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2985.exit"

imp_for.body.i.i.i72.i.preheader:                 ; preds = %if.true.i.i.i.i
  %min.iters.check700 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check700, label %imp_for.body.i.i.i72.i.preheader1139, label %vector.ph701

vector.ph701:                                     ; preds = %imp_for.body.i.i.i72.i.preheader
  %n.vec703 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 9223372036854775806
  br label %vector.body706

vector.body706:                                   ; preds = %vector.body706, %vector.ph701
  %index707 = phi i64 [ 0, %vector.ph701 ], [ %index.next708, %vector.body706 ]
  %901 = or i64 %index707, 1
  %902 = getelementptr double, ptr %819, i64 %index707
  %903 = getelementptr double, ptr %819, i64 %901
  %904 = load double, ptr %902, align 8
  %905 = load double, ptr %903, align 8
  %906 = getelementptr double, ptr %854, i64 %index707
  %907 = getelementptr double, ptr %854, i64 %901
  %908 = load double, ptr %906, align 8
  %909 = load double, ptr %907, align 8
  %910 = fmul double %904, %908
  %911 = fmul double %905, %909
  %912 = getelementptr double, ptr %900, i64 %index707
  %913 = getelementptr double, ptr %900, i64 %901
  store double %910, ptr %912, align 8
  store double %911, ptr %913, align 8
  %index.next708 = add nuw i64 %index707, 2
  %914 = icmp eq i64 %index.next708, %n.vec703
  br i1 %914, label %middle.block698, label %vector.body706, !llvm.loop !112

middle.block698:                                  ; preds = %vector.body706
  %cmp.n705 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec703
  br i1 %cmp.n705, label %while.cond.preheader.i.i.i140.i, label %imp_for.body.i.i.i72.i.preheader1139

imp_for.body.i.i.i72.i.preheader1139:             ; preds = %middle.block698, %imp_for.body.i.i.i72.i.preheader
  %.ph = phi i64 [ %n.vec703, %middle.block698 ], [ 0, %imp_for.body.i.i.i72.i.preheader ]
  br label %imp_for.body.i.i.i72.i

imp_for.cond.preheader.i.i.i.i68.i:               ; preds = %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float,1],std.numpy.ndarray.ndarray[float,1]].2602.exit.i.i.i.i"
  %915 = tail call ptr @seq_alloc_atomic(i64 %853)
  br i1 %.not7.i.i.i.i92.i, label %for.body.lr.ph.i.i.i.i, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2985.exit"

for.body.lr.ph.i.i.i.i:                           ; preds = %imp_for.cond.preheader.i.i.i.i68.i
  %tmp.i.not.i.i.i.i.i = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  %.fca.0.extract.i.i186.i.i.i.i = extractvalue { i64 } %.fr, 0
  %916 = load double, ptr %819, align 8
  %917 = load double, ptr %854, align 8
  %tmp.i.i.i192.us.us.i.i.i.i = fmul double %916, %917
  store double %tmp.i.i.i192.us.us.i.i.i.i, ptr %915, align 8
  br i1 %tmp.i.not.i.i.i.i.i, label %while.body.i.i.i143.i.preheader751, label %yield.new2.i282.peel.i.i.i.i

yield.new2.i282.peel.i.i.i.i:                     ; preds = %for.body.lr.ph.i.i.i.i
  %918 = add nsw i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, -1
  %min.iters.check650 = icmp ult i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 3
  br i1 %min.iters.check650, label %yield.new2.i282.i.i.i.i.preheader, label %vector.scevcheck645

vector.scevcheck645:                              ; preds = %yield.new2.i282.peel.i.i.i.i
  %ident.check646 = icmp ne i64 %.fca.0.extract.i.i.i.i.i87.i, 1
  %ident.check647 = icmp ne i64 %.fca.0.extract.i.i186.i.i.i.i, 1
  %919 = or i1 %ident.check647, %ident.check646
  br i1 %919, label %yield.new2.i282.i.i.i.i.preheader, label %vector.ph651

vector.ph651:                                     ; preds = %vector.scevcheck645
  %n.vec653 = and i64 %918, -2
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph651
  %index658 = phi i64 [ 0, %vector.ph651 ], [ %920, %vector.body657 ]
  %offset.idx659 = or i64 %index658, 1
  %920 = add nuw i64 %index658, 2
  %921 = getelementptr i8, ptr %819, i64 %offset.idx659
  %922 = getelementptr i8, ptr %819, i64 %920
  %923 = getelementptr i8, ptr %854, i64 %offset.idx659
  %924 = getelementptr i8, ptr %854, i64 %920
  %925 = shl i64 %offset.idx659, 3
  %926 = shl i64 %920, 3
  %927 = getelementptr i8, ptr %915, i64 %925
  %928 = getelementptr i8, ptr %915, i64 %926
  %929 = load double, ptr %921, align 8
  %930 = load double, ptr %922, align 8
  %931 = load double, ptr %923, align 8
  %932 = load double, ptr %924, align 8
  %933 = fmul double %929, %931
  %934 = fmul double %930, %932
  store double %933, ptr %927, align 8
  store double %934, ptr %928, align 8
  %935 = icmp eq i64 %920, %n.vec653
  br i1 %935, label %middle.block648, label %vector.body657, !llvm.loop !113

middle.block648:                                  ; preds = %vector.body657
  %ind.end654 = or i64 %918, 1
  %cmp.n656 = icmp eq i64 %918, %n.vec653
  br i1 %cmp.n656, label %while.cond.preheader.i.i.i140.i, label %yield.new2.i282.i.i.i.i.preheader

yield.new2.i282.i.i.i.i.preheader:                ; preds = %middle.block648, %vector.scevcheck645, %yield.new2.i282.peel.i.i.i.i
  %.sroa.12.7.i.i.i.i.ph = phi i64 [ %ind.end654, %middle.block648 ], [ 1, %yield.new2.i282.peel.i.i.i.i ], [ 1, %vector.scevcheck645 ]
  br label %yield.new2.i282.i.i.i.i

imp_for.body.i.i.i72.i:                           ; preds = %imp_for.body.i.i.i72.i, %imp_for.body.i.i.i72.i.preheader1139
  %936 = phi i64 [ %942, %imp_for.body.i.i.i72.i ], [ %.ph, %imp_for.body.i.i.i72.i.preheader1139 ]
  %937 = getelementptr double, ptr %819, i64 %936
  %938 = load double, ptr %937, align 8
  %939 = getelementptr double, ptr %854, i64 %936
  %940 = load double, ptr %939, align 8
  %tmp.i.i.i.i.i.i73.i = fmul double %938, %940
  %941 = getelementptr double, ptr %900, i64 %936
  store double %tmp.i.i.i.i.i.i73.i, ptr %941, align 8
  %942 = add nuw nsw i64 %936, 1
  %exitcond.not.i.i.i74.i = icmp eq i64 %942, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i74.i, label %while.cond.preheader.i.i.i140.i, label %imp_for.body.i.i.i72.i, !llvm.loop !114

yield.new2.i282.i.i.i.i:                          ; preds = %yield.new2.i282.i.i.i.i, %yield.new2.i282.i.i.i.i.preheader
  %.sroa.12.7.i.i.i.i = phi i64 [ %948, %yield.new2.i282.i.i.i.i ], [ %.sroa.12.7.i.i.i.i.ph, %yield.new2.i282.i.i.i.i.preheader ]
  %tmp.i40.i.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i, %.fca.0.extract.i.i.i.i.i87.i
  %943 = getelementptr i8, ptr %819, i64 %tmp.i40.i.i.i.i.i.i
  %tmp.i40.i.i188.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i, %.fca.0.extract.i.i186.i.i.i.i
  %944 = getelementptr i8, ptr %854, i64 %tmp.i40.i.i188.i.i.i.i
  %tmp.i.i.i191.i.i.i.i = shl i64 %.sroa.12.7.i.i.i.i, 3
  %945 = getelementptr i8, ptr %915, i64 %tmp.i.i.i191.i.i.i.i
  %946 = load double, ptr %943, align 8
  %947 = load double, ptr %944, align 8
  %tmp.i.i.i192.i.i.i.i = fmul double %946, %947
  store double %tmp.i.i.i192.i.i.i.i, ptr %945, align 8
  %948 = add nuw nsw i64 %.sroa.12.7.i.i.i.i, 1
  %exitcond.not.i287.i.i.i.i = icmp eq i64 %948, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i287.i.i.i.i, label %while.cond.preheader.i.i.i140.i, label %yield.new2.i282.i.i.i.i, !llvm.loop !115

while.cond.preheader.i.i.i140.i:                  ; preds = %yield.new2.i282.i.i.i.i, %imp_for.body.i.i.i72.i, %middle.block648, %middle.block698
  %.pn198.i.i.i.i = phi ptr [ %900, %middle.block698 ], [ %915, %middle.block648 ], [ %900, %imp_for.body.i.i.i72.i ], [ %915, %yield.new2.i282.i.i.i.i ]
  br i1 %.not7.i.i.i.i92.i, label %while.body.i.i.i143.i.preheader, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2985.exit"

while.body.i.i.i143.i.preheader:                  ; preds = %while.cond.preheader.i.i.i140.i
  %min.iters.check711 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 1
  br i1 %min.iters.check711, label %while.body.i.i.i143.i.preheader751, label %vector.ph712

vector.ph712:                                     ; preds = %while.body.i.i.i143.i.preheader
  %n.vec714 = and i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, 9223372036854775806
  br label %vector.body717

vector.body717:                                   ; preds = %vector.body717, %vector.ph712
  %index718 = phi i64 [ 0, %vector.ph712 ], [ %index.next720, %vector.body717 ]
  %vec.phi719 = phi double [ 0.000000e+00, %vector.ph712 ], [ %955, %vector.body717 ]
  %949 = or i64 %index718, 1
  %950 = getelementptr double, ptr %.pn198.i.i.i.i, i64 %index718
  %951 = getelementptr double, ptr %.pn198.i.i.i.i, i64 %949
  %952 = load double, ptr %950, align 8
  %953 = load double, ptr %951, align 8
  %954 = fadd double %vec.phi719, %952
  %955 = fadd double %954, %953
  %index.next720 = add nuw i64 %index718, 2
  %956 = icmp eq i64 %index.next720, %n.vec714
  br i1 %956, label %middle.block709, label %vector.body717, !llvm.loop !116

middle.block709:                                  ; preds = %vector.body717
  %cmp.n716 = icmp eq i64 %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i, %n.vec714
  br i1 %cmp.n716, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2985.exit", label %while.body.i.i.i143.i.preheader751

while.body.i.i.i143.i.preheader751:               ; preds = %middle.block709, %while.body.i.i.i143.i.preheader, %for.body.lr.ph.i.i.i.i
  %.pn198.i.i.i.i10401043 = phi ptr [ %.pn198.i.i.i.i, %while.body.i.i.i143.i.preheader ], [ %.pn198.i.i.i.i, %middle.block709 ], [ %915, %for.body.lr.ph.i.i.i.i ]
  %.unpack.i93.i.i.i144.i.ph = phi double [ 0.000000e+00, %while.body.i.i.i143.i.preheader ], [ %955, %middle.block709 ], [ 0.000000e+00, %for.body.lr.ph.i.i.i.i ]
  %.192.i.i.i145.i.ph = phi i64 [ 0, %while.body.i.i.i143.i.preheader ], [ %n.vec714, %middle.block709 ], [ 0, %for.body.lr.ph.i.i.i.i ]
  br label %while.body.i.i.i143.i

while.body.i.i.i143.i:                            ; preds = %while.body.i.i.i143.i, %while.body.i.i.i143.i.preheader751
  %.unpack.i93.i.i.i144.i = phi double [ %tmp.i.i.i.i.i146.i, %while.body.i.i.i143.i ], [ %.unpack.i93.i.i.i144.i.ph, %while.body.i.i.i143.i.preheader751 ]
  %.192.i.i.i145.i = phi i64 [ %tmp.i85.i.i.i147.i, %while.body.i.i.i143.i ], [ %.192.i.i.i145.i.ph, %while.body.i.i.i143.i.preheader751 ]
  %957 = getelementptr double, ptr %.pn198.i.i.i.i10401043, i64 %.192.i.i.i145.i
  %958 = load double, ptr %957, align 8
  %tmp.i.i.i.i.i146.i = fadd double %.unpack.i93.i.i.i144.i, %958
  %tmp.i85.i.i.i147.i = add nuw nsw i64 %.192.i.i.i145.i, 1
  %exitcond.not.i.i.i148.i = icmp eq i64 %tmp.i85.i.i.i147.i, %t.fca.0.extract.i.i.i.i.i.i.i.i.i85.i
  br i1 %exitcond.not.i.i.i148.i, label %"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2985.exit", label %while.body.i.i.i143.i, !llvm.loop !117

"binned_entropy:0[std.numpy.ndarray.ndarray[int,1],int].2985.exit": ; preds = %while.body.i.i.i143.i, %middle.block709, %while.cond.preheader.i.i.i140.i, %imp_for.cond.preheader.i.i.i.i68.i, %if.true.i.i.i.i
  %.sroa.0.0.i.i.i141.i = phi double [ 0.000000e+00, %while.cond.preheader.i.i.i140.i ], [ %955, %middle.block709 ], [ 0.000000e+00, %if.true.i.i.i.i ], [ 0.000000e+00, %imp_for.cond.preheader.i.i.i.i68.i ], [ %tmp.i.i.i.i.i146.i, %while.body.i.i.i143.i ]
  %959 = fneg double %.sroa.0.0.i.i.i141.i
  ret double %959
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
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
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!13 = distinct !{!13, !14, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume: %coro.handle"}
!14 = distinct !{!14, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume: %coro.handle"}
!17 = distinct !{!17, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume: %coro.handle"}
!20 = distinct !{!20, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume: %coro.handle"}
!23 = distinct !{!23, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume"}
!24 = distinct !{!24, !3, !4}
!25 = distinct !{!25, !26, !3, !4}
!26 = !{!"llvm.loop.peeled.count", i32 1}
!27 = distinct !{!27, !26, !3}
!28 = distinct !{!28, !3}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !3, !4}
!31 = distinct !{!31, !26, !3, !4}
!32 = distinct !{!32, !3}
!33 = distinct !{!33, !26, !3}
!34 = distinct !{!34, !3, !4}
!35 = distinct !{!35, !3, !4}
!36 = distinct !{!36, !3}
!37 = distinct !{!37, !3}
!38 = distinct !{!38, !3, !4}
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
!52 = !{!53}
!53 = distinct !{!53, !54, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume: %coro.handle"}
!54 = distinct !{!54, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume"}
!55 = distinct !{!55, !26, !3, !4}
!56 = distinct !{!56, !26, !3}
!57 = distinct !{!57, !3, !4}
!58 = distinct !{!58, !26, !3, !4}
!59 = distinct !{!59, !3}
!60 = distinct !{!60, !26, !3}
!61 = distinct !{!61, !3, !4}
!62 = distinct !{!62, !3}
!63 = !{!64}
!64 = distinct !{!64, !65, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume: %coro.handle"}
!65 = distinct !{!65, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume"}
!66 = distinct !{!66, !3, !4}
!67 = distinct !{!67, !3}
!68 = distinct !{!68, !26, !3, !4}
!69 = distinct !{!69, !26, !3}
!70 = distinct !{!70, !3, !4}
!71 = distinct !{!71, !26, !3, !4}
!72 = distinct !{!72, !3}
!73 = distinct !{!73, !26, !3}
!74 = distinct !{!74, !3, !4}
!75 = distinct !{!75, !3}
!76 = distinct !{!76, !3, !4}
!77 = distinct !{!77, !3, !4}
!78 = distinct !{!78, !3}
!79 = distinct !{!79, !3, !4}
!80 = distinct !{!80, !26, !3, !4}
!81 = distinct !{!81, !3}
!82 = distinct !{!82, !3}
!83 = distinct !{!83, !26, !3}
!84 = distinct !{!84, !3, !4}
!85 = distinct !{!85, !3}
!86 = !{!87}
!87 = distinct !{!87, !88, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume: %coro.handle"}
!88 = distinct !{!88, !"std.numpy.util.multirange:0[Tuple[int]].1312.resume"}
!89 = distinct !{!89, !3, !4}
!90 = distinct !{!90, !3}
!91 = distinct !{!91, !3, !4}
!92 = distinct !{!92, !3}
!93 = distinct !{!93, !3, !4}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = distinct !{!96, !3}
!97 = !{!98}
!98 = distinct !{!98, !99, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume: %coro.handle"}
!99 = distinct !{!99, !"std.internal.types.range.range:std.internal.types.range.range.__iter__:1[std.internal.types.range.range].1257.resume"}
!100 = distinct !{!100, !3, !4}
!101 = distinct !{!101, !3, !4}
!102 = distinct !{!102, !3}
!103 = distinct !{!103, !3}
!104 = distinct !{!104, !3, !4}
!105 = distinct !{!105, !3}
!106 = distinct !{!106, !3, !4}
!107 = distinct !{!107, !3}
!108 = distinct !{!108, !3, !4}
!109 = distinct !{!109, !26, !3, !4}
!110 = distinct !{!110, !3}
!111 = distinct !{!111, !26, !3}
!112 = distinct !{!112, !3, !4}
!113 = distinct !{!113, !26, !3, !4}
!114 = distinct !{!114, !3}
!115 = distinct !{!115, !26, !3}
!116 = distinct !{!116, !3, !4}
!117 = distinct !{!117, !3}
