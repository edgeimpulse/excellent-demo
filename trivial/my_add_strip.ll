; ModuleID = 'trivial/my_add.ll'
source_filename = "/Users/arshajii/Documents/workspace/excellent-demo/trivial/my_add.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin22.6.0"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: nounwind memory(readwrite, argmem: read)
define { { i64 }, { i64 }, ptr } @my_add({ { i64 }, { i64 }, ptr } %0, { { i64 }, { i64 }, ptr } %1) local_unnamed_addr #1 {
entry:
  %.fr213.i.i.i = freeze { { i64 }, { i64 }, ptr } %1
  %.fr212.i.i.i = freeze { { i64 }, { i64 }, ptr } %0
  %.fca.2.extract105.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i, 2
  %.fca.2.extract62.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i, 2
  %2 = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i, 0
  %3 = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i, 0
  %.fca.0.extract3.i.i.i.i.i.i.i.i = extractvalue { i64 } %2, 0
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { i64 } %3, 0
  %tmp.i.i.i.i.i.not.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i, %.fca.0.extract3.i.i.i.i.i.i.i.i
  br i1 %tmp.i.i.i.i.i.not.i.i.i.i, label %if.exit.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i

if.exit.i.i.i.i:                                  ; preds = %entry
  %switch.i.i.i.i = icmp ult i64 %.fca.0.extract3.i.i.i.i.i.i.i.i, 2
  %4 = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i, 1
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64 } %4, 0
  %tmp.i82.not.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i, 4
  %spec.select.i.i.i.i = select i1 %tmp.i82.not.i.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract2191.i.i.i.i = extractvalue { i8, i8 } %spec.select.i.i.i.i, 0
  %5 = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i, 1
  %.fca.0.extract.i83.i.i.i.i = extractvalue { i64 } %5, 0
  %tmp.i82.not.i84.i.i.i.i = icmp eq i64 %.fca.0.extract.i83.i.i.i.i, 4
  %6 = and i8 %.fca.0.extract2191.i.i.i.i, 1
  %7 = or i1 %switch.i.i.i.i, %tmp.i82.not.i84.i.i.i.i
  %common.ret.op.i81.i.i.i.i = select i1 %7, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } zeroinitializer
  %.fca.0.extract.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i, 0
  %.not7697.i.i.i.i = icmp ne i8 %6, 0
  %.not76.i.i.i.i = select i1 %switch.i.i.i.i, i1 true, i1 %.not7697.i.i.i.i
  %8 = and i8 %.fca.0.extract.i.i.i.i, 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %.not76.i.i.i.i, i1 %9, i1 false
  br i1 %10, label %if.true.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1242.exit.i.i.i"

"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1242.exit.i.i.i": ; preds = %if.exit.i.i.i.i
  %common.ret.op.i93.i.i.i.i = select i1 %switch.i.i.i.i, { i8, i8 } { i8 1, i8 1 }, { i8, i8 } %spec.select.i.i.i.i
  %.fca.1.extract.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i81.i.i.i.i, 1
  %.fca.1.extract22.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i93.i.i.i.i, 1
  %11 = and i8 %.fca.1.extract22.i.i.i.i, 1
  %.not77.i.i.i.i = icmp eq i8 %11, 0
  %12 = and i8 %.fca.1.extract.i.i.i.i, 1
  %.not202.i.i.i = icmp eq i8 %12, 0
  %.not.i.i.i = select i1 %.not77.i.i.i.i, i1 true, i1 %.not202.i.i.i
  br i1 %.not.i.i.i, label %imp_for.cond.preheader.i.i.i.i, label %if.true.i.i.i

if.true.i.i.i:                                    ; preds = %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1242.exit.i.i.i", %if.exit.i.i.i.i
  %13 = shl i64 %.fca.0.extract3.i.i.i.i.i.i.i.i, 2
  %14 = tail call ptr @seq_alloc_atomic(i64 %13)
  %.not179211.i.i.i = icmp sgt i64 %.fca.0.extract3.i.i.i.i.i.i.i.i, 0
  br i1 %.not179211.i.i.i, label %imp_for.body.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit"

imp_for.cond.preheader.i.i.i.i:                   ; preds = %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray._contig_match:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1242.exit.i.i.i", %entry
  %tmp.i.not.i.i.i.i = icmp eq i64 %.fca.0.extract3.i.i.i.i.i.i.i.i, 1
  %spec.select.i183.i.i.i = select i1 %tmp.i.not.i.i.i.i, i64 %.fca.0.extract.i.i.i.i.i.i.i.i, i64 %.fca.0.extract3.i.i.i.i.i.i.i.i
  %.fca.0.insert.i.i.i.i = insertvalue { i64 } poison, i64 %spec.select.i183.i.i.i, 0
  %15 = shl i64 %spec.select.i183.i.i.i, 2
  %16 = tail call ptr @seq_alloc_atomic(i64 %15)
  %.not7.i.i.i.i = icmp sgt i64 %spec.select.i183.i.i.i, 0
  br i1 %.not7.i.i.i.i, label %for.body.lr.ph.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit"

for.body.lr.ph.i.i.i:                             ; preds = %imp_for.cond.preheader.i.i.i.i
  %17 = extractvalue { { i64 }, { i64 }, ptr } %.fr212.i.i.i, 1
  %.fca.0.extract.i.i184.i.i.i = extractvalue { i64 } %17, 0
  %18 = extractvalue { { i64 }, { i64 }, ptr } %.fr213.i.i.i, 1
  %.fca.0.extract.i.i186.i.i.i = extractvalue { i64 } %18, 0
  %tmp.i.not.i.i187.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i.i.i.i, 1
  br i1 %tmp.i.not.i.i.i.i, label %for.body.lr.ph.split.us.i.i.i, label %for.body.lr.ph.split.i.i.i

for.body.lr.ph.split.us.i.i.i:                    ; preds = %for.body.lr.ph.i.i.i
  br i1 %tmp.i.not.i.i187.i.i.i, label %yield.new2.i228.i.i.i, label %yield.new2.i246.i.i.i

yield.new2.i228.i.i.i:                            ; preds = %yield.new2.i228.i.i.i, %for.body.lr.ph.split.us.i.i.i
  %.sroa.12.1.i.i.i = phi i64 [ %22, %yield.new2.i228.i.i.i ], [ 0, %for.body.lr.ph.split.us.i.i.i ]
  %tmp.i.i.i191.us.us.i.i.i = shl i64 %.sroa.12.1.i.i.i, 2
  %19 = getelementptr i8, ptr %16, i64 %tmp.i.i.i191.us.us.i.i.i
  %20 = load float, ptr %.fca.2.extract105.i.i.i, align 4
  %21 = load float, ptr %.fca.2.extract62.i.i.i, align 4
  %tmp.i.i.i192.us.us.i.i.i = fadd float %20, %21
  store float %tmp.i.i.i192.us.us.i.i.i, ptr %19, align 4
  %22 = add nuw nsw i64 %.sroa.12.1.i.i.i, 1
  %exitcond.not.i233.i.i.i = icmp eq i64 %22, %spec.select.i183.i.i.i
  br i1 %exitcond.not.i233.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit", label %yield.new2.i228.i.i.i

yield.new2.i246.i.i.i:                            ; preds = %yield.new2.i246.i.i.i, %for.body.lr.ph.split.us.i.i.i
  %.sroa.12.3.i.i.i = phi i64 [ %27, %yield.new2.i246.i.i.i ], [ 0, %for.body.lr.ph.split.us.i.i.i ]
  %tmp.i40.i.i188.us.i.i.i = mul i64 %.sroa.12.3.i.i.i, %.fca.0.extract.i.i186.i.i.i
  %23 = getelementptr i8, ptr %.fca.2.extract62.i.i.i, i64 %tmp.i40.i.i188.us.i.i.i
  %tmp.i.i.i191.us.i.i.i = shl i64 %.sroa.12.3.i.i.i, 2
  %24 = getelementptr i8, ptr %16, i64 %tmp.i.i.i191.us.i.i.i
  %25 = load float, ptr %.fca.2.extract105.i.i.i, align 4
  %26 = load float, ptr %23, align 4
  %tmp.i.i.i192.us.i.i.i = fadd float %25, %26
  store float %tmp.i.i.i192.us.i.i.i, ptr %24, align 4
  %27 = add nuw nsw i64 %.sroa.12.3.i.i.i, 1
  %exitcond.not.i251.i.i.i = icmp eq i64 %27, %spec.select.i183.i.i.i
  br i1 %exitcond.not.i251.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit", label %yield.new2.i246.i.i.i

for.body.lr.ph.split.i.i.i:                       ; preds = %for.body.lr.ph.i.i.i
  br i1 %tmp.i.not.i.i187.i.i.i, label %yield.new2.i264.i.i.i, label %yield.new2.i282.peel.i.i.i

yield.new2.i282.peel.i.i.i:                       ; preds = %for.body.lr.ph.split.i.i.i
  %28 = load float, ptr %.fca.2.extract105.i.i.i, align 4
  %29 = load float, ptr %.fca.2.extract62.i.i.i, align 4
  %tmp.i.i.i192.peel.i.i.i = fadd float %28, %29
  store float %tmp.i.i.i192.peel.i.i.i, ptr %16, align 4
  br label %yield.new2.i282.i.i.i

yield.new2.i264.i.i.i:                            ; preds = %yield.new2.i264.i.i.i, %for.body.lr.ph.split.i.i.i
  %.sroa.12.5.i.i.i = phi i64 [ %34, %yield.new2.i264.i.i.i ], [ 0, %for.body.lr.ph.split.i.i.i ]
  %tmp.i40.i.i.us205.i.i.i = mul i64 %.sroa.12.5.i.i.i, %.fca.0.extract.i.i184.i.i.i
  %30 = getelementptr i8, ptr %.fca.2.extract105.i.i.i, i64 %tmp.i40.i.i.us205.i.i.i
  %tmp.i.i.i191.us208.i.i.i = shl i64 %.sroa.12.5.i.i.i, 2
  %31 = getelementptr i8, ptr %16, i64 %tmp.i.i.i191.us208.i.i.i
  %32 = load float, ptr %30, align 4
  %33 = load float, ptr %.fca.2.extract62.i.i.i, align 4
  %tmp.i.i.i192.us209.i.i.i = fadd float %32, %33
  store float %tmp.i.i.i192.us209.i.i.i, ptr %31, align 4
  %34 = add nuw nsw i64 %.sroa.12.5.i.i.i, 1
  %exitcond.not.i269.i.i.i = icmp eq i64 %34, %spec.select.i183.i.i.i
  br i1 %exitcond.not.i269.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit", label %yield.new2.i264.i.i.i

imp_for.body.i.i.i:                               ; preds = %imp_for.body.i.i.i, %if.true.i.i.i
  %35 = phi i64 [ %41, %imp_for.body.i.i.i ], [ 0, %if.true.i.i.i ]
  %36 = getelementptr float, ptr %.fca.2.extract105.i.i.i, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = getelementptr float, ptr %.fca.2.extract62.i.i.i, i64 %35
  %39 = load float, ptr %38, align 4
  %tmp.i.i.i.i.i.i = fadd float %37, %39
  %40 = getelementptr float, ptr %14, i64 %35
  store float %tmp.i.i.i.i.i.i, ptr %40, align 4
  %41 = add nuw nsw i64 %35, 1
  %exitcond.not.i.i.i = icmp eq i64 %41, %.fca.0.extract3.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit", label %imp_for.body.i.i.i

yield.new2.i282.i.i.i:                            ; preds = %yield.new2.i282.i.i.i, %yield.new2.i282.peel.i.i.i
  %.sroa.12.7.i.i.i = phi i64 [ 1, %yield.new2.i282.peel.i.i.i ], [ %47, %yield.new2.i282.i.i.i ]
  %tmp.i40.i.i.i.i.i = mul i64 %.sroa.12.7.i.i.i, %.fca.0.extract.i.i184.i.i.i
  %42 = getelementptr i8, ptr %.fca.2.extract105.i.i.i, i64 %tmp.i40.i.i.i.i.i
  %tmp.i40.i.i188.i.i.i = mul i64 %.sroa.12.7.i.i.i, %.fca.0.extract.i.i186.i.i.i
  %43 = getelementptr i8, ptr %.fca.2.extract62.i.i.i, i64 %tmp.i40.i.i188.i.i.i
  %tmp.i.i.i191.i.i.i = shl i64 %.sroa.12.7.i.i.i, 2
  %44 = getelementptr i8, ptr %16, i64 %tmp.i.i.i191.i.i.i
  %45 = load float, ptr %42, align 4
  %46 = load float, ptr %43, align 4
  %tmp.i.i.i192.i.i.i = fadd float %45, %46
  store float %tmp.i.i.i192.i.i.i, ptr %44, align 4
  %47 = add nuw nsw i64 %.sroa.12.7.i.i.i, 1
  %exitcond.not.i287.i.i.i = icmp eq i64 %47, %spec.select.i183.i.i.i
  br i1 %exitcond.not.i287.i.i.i, label %"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit", label %yield.new2.i282.i.i.i, !llvm.loop !2

"std.numpy.ndarray.ndarray[float32,1]:std.numpy.ndarray.ndarray.__add__:0[std.numpy.ndarray.ndarray[float32,1],std.numpy.ndarray.ndarray[float32,1]].1388.exit": ; preds = %yield.new2.i282.i.i.i, %imp_for.body.i.i.i, %yield.new2.i264.i.i.i, %yield.new2.i246.i.i.i, %yield.new2.i228.i.i.i, %imp_for.cond.preheader.i.i.i.i, %if.true.i.i.i
  %.fca.0.insert.i.pn.i.i.i = phi { i64 } [ %2, %if.true.i.i.i ], [ %.fca.0.insert.i.i.i.i, %imp_for.cond.preheader.i.i.i.i ], [ %2, %imp_for.body.i.i.i ], [ %.fca.0.insert.i.i.i.i, %yield.new2.i228.i.i.i ], [ %.fca.0.insert.i.i.i.i, %yield.new2.i246.i.i.i ], [ %.fca.0.insert.i.i.i.i, %yield.new2.i264.i.i.i ], [ %.fca.0.insert.i.i.i.i, %yield.new2.i282.i.i.i ]
  %.pn198.i.i.i = phi ptr [ %14, %if.true.i.i.i ], [ %16, %imp_for.cond.preheader.i.i.i.i ], [ %14, %imp_for.body.i.i.i ], [ %16, %yield.new2.i228.i.i.i ], [ %16, %yield.new2.i246.i.i.i ], [ %16, %yield.new2.i264.i.i.i ], [ %16, %yield.new2.i282.i.i.i ]
  %.pn199.i.i.i = insertvalue { { i64 }, { i64 }, ptr } undef, { i64 } %.fca.0.insert.i.pn.i.i.i, 0
  %.pn.i.i.i = insertvalue { { i64 }, { i64 }, ptr } %.pn199.i.i.i, { i64 } { i64 4 }, 1
  %common.ret.op.i.i.i = insertvalue { { i64 }, { i64 }, ptr } %.pn.i.i.i, ptr %.pn198.i.i.i, 2
  ret { { i64 }, { i64 }, ptr } %common.ret.op.i.i.i
}

attributes #0 = { mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="seq_alloc" }
attributes #1 = { nounwind memory(readwrite, argmem: read) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 2}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.peeled.count", i32 1}
