; ModuleID = 'trivial/my_add.ll'
source_filename = "/Users/arshajii/Documents/misc/excellent-demo/trivial/my_add.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.6.0"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: nounwind
define {} @my_add(ptr nocapture readonly %0, ptr nocapture readonly %1, ptr nocapture writeonly %2) local_unnamed_addr #1 {
entry:
  %.unpack.unpack.i = load i64, ptr %0, align 8
  %.unpack5.i = insertvalue { i64 } poison, i64 %.unpack.unpack.i, 0
  %3 = insertvalue { { i64 }, { i64 }, ptr } poison, { i64 } %.unpack5.i, 0
  %.elt1.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 1
  %.unpack2.unpack.i = load i64, ptr %.elt1.i, align 8
  %.unpack26.i = insertvalue { i64 } poison, i64 %.unpack2.unpack.i, 0
  %4 = insertvalue { { i64 }, { i64 }, ptr } %3, { i64 } %.unpack26.i, 1
  %.elt3.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 2
  %.unpack4.i = load ptr, ptr %.elt3.i, align 8
  %5 = insertvalue { { i64 }, { i64 }, ptr } %4, ptr %.unpack4.i, 2
  %.unpack.unpack.i3 = load i64, ptr %1, align 8
  %.unpack5.i4 = insertvalue { i64 } poison, i64 %.unpack.unpack.i3, 0
  %6 = insertvalue { { i64 }, { i64 }, ptr } poison, { i64 } %.unpack5.i4, 0
  %.elt1.i5 = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %1, i64 0, i32 1
  %.unpack2.unpack.i6 = load i64, ptr %.elt1.i5, align 8
  %.unpack26.i7 = insertvalue { i64 } poison, i64 %.unpack2.unpack.i6, 0
  %7 = insertvalue { { i64 }, { i64 }, ptr } %6, { i64 } %.unpack26.i7, 1
  %.elt3.i8 = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %1, i64 0, i32 2
  %.unpack4.i9 = load ptr, ptr %.elt3.i8, align 8
  %8 = insertvalue { { i64 }, { i64 }, ptr } %7, ptr %.unpack4.i9, 2
  %.fr213.i.i.i.i = freeze { { i64 }, { i64 }, ptr } %8
  %.fr212.i.i.i.i = freeze { { i64 }, { i64 }, ptr } %5
  %.fca.2.extract105.i.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i.i, 2
  %.fca.2.extract62.i.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i.i, 2
  %9 = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i.i, 0
  %10 = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i.i = extractvalue { i64 } %9, 0
  %.fca.0.extract.i.i.i.i.i.i.i.i.i = extractvalue { i64 } %10, 0
  %tmp.i.i.i.i.i.not.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i.i
  br i1 %tmp.i.i.i.i.i.not.i.i.i.i.i, label %if.exit.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i

if.exit.i.i.i.i.i:                                ; preds = %entry
  %switch.i.i.i.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i, 2
  %11 = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i.i, 1
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { i64 } %11, 0
  %tmp.i82.not.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i, 4
  %spec.select.i.i.i.i.i = select i1 %tmp.i82.not.i.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i.i, 0
  %12 = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i.i, 1
  %.fca.0.extract.i83.i.i.i.i.i = extractvalue { i64 } %12, 0
  %tmp.i82.not.i84.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i.i, 4
  %13 = and i8 %.fca.0.extract2191.i.i.i.i.i, 1
  %14 = or i1 %switch.i.i.i.i.i, %tmp.i82.not.i84.i.i.i.i.i
  %common.ret.op.i81.i.i.i.i.i = select i1 %14, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i, 0
  %.not7697.i.i.i.i.i = icmp ne i8 %13, 0
  %.not76.i.i.i.i.i = select i1 %switch.i.i.i.i.i, i1 true, i1 %.not7697.i.i.i.i.i
  %15 = and i8 %.fca.0.extract.i.i.i.i.i, 1
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %.not76.i.i.i.i.i, i1 %16, i1 false
  br i1 %17, label %if.true.i.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1219.exit.i.i.i.i"

"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1219.exit.i.i.i.i": ; preds = %if.exit.i.i.i.i.i
  %common.ret.op.i93.i.i.i.i.i = select i1 %switch.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i.i
  %.fca.1.extract.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i.i, 1
  %18 = and i8 %.fca.1.extract22.i.i.i.i.i, 1
  %.not77.i.i.i.i.i = icmp eq i8 %18, 0
  %19 = and i8 %.fca.1.extract.i.i.i.i.i, 1
  %.not202.i.i.i.i = icmp eq i8 %19, 0
  %.not.i.i.i.i = select i1 %.not77.i.i.i.i.i, i1 true, i1 %.not202.i.i.i.i
  br i1 %.not.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i, label %if.true.i.i.i.i

if.true.i.i.i.i:                                  ; preds = %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1219.exit.i.i.i.i", %if.exit.i.i.i.i.i
  %20 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i, 2
  %21 = tail call ptr @seq_alloc_atomic(i64 %20)
  %.not179211.i.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not179211.i.i.i.i, label %imp_for.body.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit"

imp_for.cond.preheader.i.i.i.i.i:                 ; preds = %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1219.exit.i.i.i.i", %entry
  %tmp.i.not.i.i.i.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i, 1
  %spec.select.i183.i.i.i.i = select i1 %tmp.i.not.i.i.i.i.i, i64 %.fca.0.extract.i.i.i.i.i.i.i.i.i, i64 %.fca.0.extract3.i.i.i.i.i.i.i.i.i
  %.fca.0.insert.i.i.i.i.i = insertvalue { i64 } poison, i64 %spec.select.i183.i.i.i.i, 0
  %22 = shl i64 %spec.select.i183.i.i.i.i, 2
  %23 = tail call ptr @seq_alloc_atomic(i64 %22)
  %.not7.i.i.i.i.i = icmp sgt i64 %spec.select.i183.i.i.i.i, 0
  br i1 %.not7.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit"

for.body.lr.ph.i.i.i.i:                           ; preds = %imp_for.cond.preheader.i.i.i.i.i
  %24 = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i.i, 1
  %.fca.0.extract.i.i184.i.i.i.i = extractvalue { i64 } %24, 0
  %25 = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i.i, 1
  %.fca.0.extract.i.i186.i.i.i.i = extractvalue { i64 } %25, 0
  %tmp.i.not.i.i187.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i.i, 1
  br i1 %tmp.i.not.i.i.i.i.i, label %for.body.lr.ph.split.us.i.i.i.i, label %for.body.lr.ph.split.i.i.i.i

for.body.lr.ph.split.us.i.i.i.i:                  ; preds = %for.body.lr.ph.i.i.i.i
  br i1 %tmp.i.not.i.i187.i.i.i.i, label %yield.new2.i228.i.i.i.i, label %yield.new2.i246.i.i.i.i

yield.new2.i228.i.i.i.i:                          ; preds = %yield.new2.i228.i.i.i.i, %for.body.lr.ph.split.us.i.i.i.i
  %.sroa.12.1.i.i.i.i = phi i64 [ %29, %yield.new2.i228.i.i.i.i ], [ 0, %for.body.lr.ph.split.us.i.i.i.i ]
  %tmp.i.i.i191.us.us.i.i.i.i = shl i64 %.sroa.12.1.i.i.i.i, 2
  %26 = getelementptr i8, ptr %23, i64 %tmp.i.i.i191.us.us.i.i.i.i
  %27 = load float, ptr %.fca.2.extract105.i.i.i.i, align 4
  %28 = load float, ptr %.fca.2.extract62.i.i.i.i, align 4
  %tmp.i.i.i192.us.us.i.i.i.i = fadd float %27, %28
  store float %tmp.i.i.i192.us.us.i.i.i.i, ptr %26, align 4
  %29 = add nuw nsw i64 %.sroa.12.1.i.i.i.i, 1
  %exitcond.not.i233.i.i.i.i = icmp eq i64 %29, %spec.select.i183.i.i.i.i
  br i1 %exitcond.not.i233.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit", label %yield.new2.i228.i.i.i.i

yield.new2.i246.i.i.i.i:                          ; preds = %yield.new2.i246.i.i.i.i, %for.body.lr.ph.split.us.i.i.i.i
  %.sroa.12.3.i.i.i.i = phi i64 [ %34, %yield.new2.i246.i.i.i.i ], [ 0, %for.body.lr.ph.split.us.i.i.i.i ]
  %tmp.i40.i.i188.us.i.i.i.i = mul i64 %.sroa.12.3.i.i.i.i, %.fca.0.extract.i.i186.i.i.i.i
  %30 = getelementptr i8, ptr %.fca.2.extract62.i.i.i.i, i64 %tmp.i40.i.i188.us.i.i.i.i
  %tmp.i.i.i191.us.i.i.i.i = shl i64 %.sroa.12.3.i.i.i.i, 2
  %31 = getelementptr i8, ptr %23, i64 %tmp.i.i.i191.us.i.i.i.i
  %32 = load float, ptr %.fca.2.extract105.i.i.i.i, align 4
  %33 = load float, ptr %30, align 4
  %tmp.i.i.i192.us.i.i.i.i = fadd float %32, %33
  store float %tmp.i.i.i192.us.i.i.i.i, ptr %31, align 4
  %34 = add nuw nsw i64 %.sroa.12.3.i.i.i.i, 1
  %exitcond.not.i251.i.i.i.i = icmp eq i64 %34, %spec.select.i183.i.i.i.i
  br i1 %exitcond.not.i251.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit", label %yield.new2.i246.i.i.i.i

for.body.lr.ph.split.i.i.i.i:                     ; preds = %for.body.lr.ph.i.i.i.i
  br i1 %tmp.i.not.i.i187.i.i.i.i, label %yield.new2.i264.i.i.i.i, label %yield.new2.i282.peel.i.i.i.i

yield.new2.i282.peel.i.i.i.i:                     ; preds = %for.body.lr.ph.split.i.i.i.i
  %35 = load float, ptr %.fca.2.extract105.i.i.i.i, align 4
  %36 = load float, ptr %.fca.2.extract62.i.i.i.i, align 4
  %tmp.i.i.i192.peel.i.i.i.i = fadd float %35, %36
  store float %tmp.i.i.i192.peel.i.i.i.i, ptr %23, align 4
  br label %yield.new2.i282.i.i.i.i

yield.new2.i264.i.i.i.i:                          ; preds = %yield.new2.i264.i.i.i.i, %for.body.lr.ph.split.i.i.i.i
  %.sroa.12.5.i.i.i.i = phi i64 [ %41, %yield.new2.i264.i.i.i.i ], [ 0, %for.body.lr.ph.split.i.i.i.i ]
  %tmp.i40.i.i.us205.i.i.i.i = mul i64 %.sroa.12.5.i.i.i.i, %.fca.0.extract.i.i184.i.i.i.i
  %37 = getelementptr i8, ptr %.fca.2.extract105.i.i.i.i, i64 %tmp.i40.i.i.us205.i.i.i.i
  %tmp.i.i.i191.us208.i.i.i.i = shl i64 %.sroa.12.5.i.i.i.i, 2
  %38 = getelementptr i8, ptr %23, i64 %tmp.i.i.i191.us208.i.i.i.i
  %39 = load float, ptr %37, align 4
  %40 = load float, ptr %.fca.2.extract62.i.i.i.i, align 4
  %tmp.i.i.i192.us209.i.i.i.i = fadd float %39, %40
  store float %tmp.i.i.i192.us209.i.i.i.i, ptr %38, align 4
  %41 = add nuw nsw i64 %.sroa.12.5.i.i.i.i, 1
  %exitcond.not.i269.i.i.i.i = icmp eq i64 %41, %spec.select.i183.i.i.i.i
  br i1 %exitcond.not.i269.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit", label %yield.new2.i264.i.i.i.i

imp_for.body.i.i.i.i:                             ; preds = %imp_for.body.i.i.i.i, %if.true.i.i.i.i
  %42 = phi i64 [ %48, %imp_for.body.i.i.i.i ], [ 0, %if.true.i.i.i.i ]
  %43 = getelementptr float, ptr %.fca.2.extract105.i.i.i.i, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = getelementptr float, ptr %.fca.2.extract62.i.i.i.i, i64 %42
  %46 = load float, ptr %45, align 4
  %tmp.i.i.i.i.i.i.i = fadd float %44, %46
  %47 = getelementptr float, ptr %21, i64 %42
  store float %tmp.i.i.i.i.i.i.i, ptr %47, align 4
  %48 = add nuw nsw i64 %42, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %48, %.fca.0.extract3.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit", label %imp_for.body.i.i.i.i

yield.new2.i282.i.i.i.i:                          ; preds = %yield.new2.i282.i.i.i.i, %yield.new2.i282.peel.i.i.i.i
  %.sroa.12.7.i.i.i.i = phi i64 [ 1, %yield.new2.i282.peel.i.i.i.i ], [ %54, %yield.new2.i282.i.i.i.i ]
  %tmp.i40.i.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i, %.fca.0.extract.i.i184.i.i.i.i
  %49 = getelementptr i8, ptr %.fca.2.extract105.i.i.i.i, i64 %tmp.i40.i.i.i.i.i.i
  %tmp.i40.i.i188.i.i.i.i = mul i64 %.sroa.12.7.i.i.i.i, %.fca.0.extract.i.i186.i.i.i.i
  %50 = getelementptr i8, ptr %.fca.2.extract62.i.i.i.i, i64 %tmp.i40.i.i188.i.i.i.i
  %tmp.i.i.i191.i.i.i.i = shl i64 %.sroa.12.7.i.i.i.i, 2
  %51 = getelementptr i8, ptr %23, i64 %tmp.i.i.i191.i.i.i.i
  %52 = load float, ptr %49, align 4
  %53 = load float, ptr %50, align 4
  %tmp.i.i.i192.i.i.i.i = fadd float %52, %53
  store float %tmp.i.i.i192.i.i.i.i, ptr %51, align 4
  %54 = add nuw nsw i64 %.sroa.12.7.i.i.i.i, 1
  %exitcond.not.i287.i.i.i.i = icmp eq i64 %54, %spec.select.i183.i.i.i.i
  br i1 %exitcond.not.i287.i.i.i.i, label %"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit", label %yield.new2.i282.i.i.i.i, !llvm.loop !2

"my_add_impl:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1368.exit": ; preds = %yield.new2.i282.i.i.i.i, %imp_for.body.i.i.i.i, %yield.new2.i264.i.i.i.i, %yield.new2.i246.i.i.i.i, %yield.new2.i228.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i, %if.true.i.i.i.i
  %.fca.0.insert.i.pn.i.i.i.i = phi { i64 } [ %9, %if.true.i.i.i.i ], [ %.fca.0.insert.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i ], [ %9, %imp_for.body.i.i.i.i ], [ %.fca.0.insert.i.i.i.i.i, %yield.new2.i228.i.i.i.i ], [ %.fca.0.insert.i.i.i.i.i, %yield.new2.i246.i.i.i.i ], [ %.fca.0.insert.i.i.i.i.i, %yield.new2.i264.i.i.i.i ], [ %.fca.0.insert.i.i.i.i.i, %yield.new2.i282.i.i.i.i ]
  %.pn198.i.i.i.i = phi ptr [ %21, %if.true.i.i.i.i ], [ %23, %imp_for.cond.preheader.i.i.i.i.i ], [ %21, %imp_for.body.i.i.i.i ], [ %23, %yield.new2.i228.i.i.i.i ], [ %23, %yield.new2.i246.i.i.i.i ], [ %23, %yield.new2.i264.i.i.i.i ], [ %23, %yield.new2.i282.i.i.i.i ]
  %55 = extractvalue { i64 } %.fca.0.insert.i.pn.i.i.i.i, 0
  store i64 %55, ptr %2, align 8
  %self.repack1.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %2, i64 0, i32 1
  store i64 4, ptr %self.repack1.i, align 8
  %self.repack3.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %2, i64 0, i32 2
  store ptr %.pn198.i.i.i.i, ptr %self.repack3.i, align 8
  ret {} zeroinitializer
}

attributes #0 = { mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="seq_alloc" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 2}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.peeled.count", i32 1}
