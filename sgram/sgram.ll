; ModuleID = 'sgram/sgram.ll'
source_filename = "/Users/arshajii/Documents/workspace/excellent-demo/sgram/sgram.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin22.6.0"

@.str.130 = hidden unnamed_addr constant [2 x i8] c"C\00"
@.str.131 = hidden unnamed_addr constant [2 x i8] c"F\00"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free")
declare {} @seq_free(ptr allocptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn
declare double @hypot(double, double) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nounwind
define { { i64, i64 }, { i64, i64 }, ptr } @generate_features({ { i64 }, { i64 }, ptr } %0, i64 %1, i64 %2) local_unnamed_addr #4 {
entry:
  %x.i.i.i.i304.i.i.i.i.i = alloca { i64, i64 }, align 8
  %3 = alloca { i64, i64 }, align 8
  %x.i.i.i.i304.i.i.i.i.i.i = alloca { i64, i64 }, align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca { i64, i64 }, align 8
  %.frozen = freeze i64 %1
  %.fr174 = freeze { { i64 }, { i64 }, ptr } %0
  %.fca.2.extract.i.i.i = extractvalue { { i64 }, { i64 }, ptr } %.fr174, 2
  %7 = extractvalue { { i64 }, { i64 }, ptr } %.fr174, 0
  %.fca.0.extract38.i.i.i.i = extractvalue { i64 } %7, 0
  %switch.i.i.i = icmp ult i64 %.fca.0.extract38.i.i.i.i, 2
  %8 = extractvalue { { i64 }, { i64 }, ptr } %.fr174, 1
  %.fca.0.extract.i.i.i.i = extractvalue { i64 } %8, 0
  %tmp.i82.not.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i, 8
  %or.cond.not.i.i.i = or i1 %switch.i.i.i, %tmp.i82.not.i.i.i.i
  %.not.1.i.i.i.i = icmp sgt i64 %.frozen, -1
  tail call void @llvm.assume(i1 %.not.1.i.i.i.i)
  %tmp.i85.i.i.i.i = icmp ne i64 %.frozen, 0
  tail call void @llvm.assume(i1 %tmp.i85.i.i.i.i)
  %tmp.i89.i.i.i.i = sdiv i64 %.fca.0.extract38.i.i.i.i, %.frozen
  %9 = mul i64 %tmp.i89.i.i.i.i, %.frozen
  %tmp.i91.not.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i.i.i, %9
  tail call void @llvm.assume(i1 %tmp.i91.not.i.i.i.i)
  br i1 %or.cond.not.i.i.i, label %"str:str.__eq__:0[str,str].1175.exit287.i.i.i", label %"str:str.__eq__:0[str,str].1175.exit265.i.i.i"

"str:str.__eq__:0[str,str].1175.exit265.i.i.i":   ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  store i64 %tmp.i89.i.i.i.i, ptr %5, align 8
  %.fca.1.gep155.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  store i64 %.frozen, ptr %.fca.1.gep155.i.i.i.i, align 8
  %.fca.1.gep.i266.i.i.i = getelementptr inbounds { i64, i64 }, ptr %6, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %tmp.i249.i.i.i.i = mul i64 %.fca.0.extract.i.i.i.i, %.fca.0.extract38.i.i.i.i
  %tmp.i251.not.i.i.i.i = icmp eq i64 %tmp.i249.i.i.i.i, %.fca.0.extract.i.i.i.i
  br i1 %tmp.i251.not.i.i.i.i, label %while.body.us.i.us.i.i.i, label %while.body.us.i.i.i.i

while.body.us.i.us.i.i.i:                         ; preds = %if.exit22.loopexit.us.i.us.i.i.i, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i"
  %.0209306.us.i.us.i.i.i = phi i64 [ %tmp.i263.us.i.us.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i" ]
  %.0211305.us.i.us.i.i.i = phi i64 [ %.1210.lcssa.us.i.us.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i" ]
  %.0212304.us.i.us.i.i.i = phi i64 [ %tmp.i264.us.i.us.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i" ]
  %10 = getelementptr i64, ptr %5, i64 %.0211305.us.i.us.i.i.i
  %11 = load i64, ptr %10, align 8
  %tmp.i238.not288.us.i.us.i.i.i = icmp eq i64 %11, %.fca.0.extract38.i.i.i.i
  br i1 %tmp.i238.not288.us.i.us.i.i.i, label %while.cond7.preheader.us.i.us.i.i.i, label %while.body2.us.i.us.i.i.i

while.body2.us.i.us.i.i.i:                        ; preds = %if.exit6.us.i.us.i.i.i, %while.body.us.i.us.i.i.i
  %.0204292.us.i.us.i.i.i = phi i64 [ %.1205.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %.fca.0.extract38.i.i.i.i, %while.body.us.i.us.i.i.i ]
  %.0206291.us.i.us.i.i.i = phi i64 [ %.1207.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %11, %while.body.us.i.us.i.i.i ]
  %.1210290.us.i.us.i.i.i = phi i64 [ %.2.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %.0209306.us.i.us.i.i.i, %while.body.us.i.us.i.i.i ]
  %.1213289.us.i.us.i.i.i = phi i64 [ %.2214.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %.0212304.us.i.us.i.i.i, %while.body.us.i.us.i.i.i ]
  %tmp.i240.not.us.i.us.i.i.i = icmp sgt i64 %.0204292.us.i.us.i.i.i, %.0206291.us.i.us.i.i.i
  br i1 %tmp.i240.not.us.i.us.i.i.i, label %if.true4.us.i.us.i.i.i, label %if.false5.us.i.us.i.i.i

if.false5.us.i.us.i.i.i:                          ; preds = %while.body2.us.i.us.i.i.i
  %tmp.i244.us.i.us.i.i.i = mul i64 %.0204292.us.i.us.i.i.i, %.fca.0.extract38.i.i.i.i
  %tmp.i245.us.i.us.i.i.i = add i64 %.1213289.us.i.us.i.i.i, 1
  br label %if.exit6.us.i.us.i.i.i

if.true4.us.i.us.i.i.i:                           ; preds = %while.body2.us.i.us.i.i.i
  %12 = getelementptr i64, ptr %5, i64 %.1210290.us.i.us.i.i.i
  %13 = load i64, ptr %12, align 8
  %tmp.i242.us.i.us.i.i.i = mul i64 %13, %.0206291.us.i.us.i.i.i
  %tmp.i243.us.i.us.i.i.i = add i64 %.1210290.us.i.us.i.i.i, 1
  br label %if.exit6.us.i.us.i.i.i

if.exit6.us.i.us.i.i.i:                           ; preds = %if.true4.us.i.us.i.i.i, %if.false5.us.i.us.i.i.i
  %.2214.us.i.us.i.i.i = phi i64 [ %.1213289.us.i.us.i.i.i, %if.true4.us.i.us.i.i.i ], [ %tmp.i245.us.i.us.i.i.i, %if.false5.us.i.us.i.i.i ]
  %.2.us.i.us.i.i.i = phi i64 [ %tmp.i243.us.i.us.i.i.i, %if.true4.us.i.us.i.i.i ], [ %.1210290.us.i.us.i.i.i, %if.false5.us.i.us.i.i.i ]
  %.1207.us.i.us.i.i.i = phi i64 [ %tmp.i242.us.i.us.i.i.i, %if.true4.us.i.us.i.i.i ], [ %.0206291.us.i.us.i.i.i, %if.false5.us.i.us.i.i.i ]
  %.1205.us.i.us.i.i.i = phi i64 [ %.0204292.us.i.us.i.i.i, %if.true4.us.i.us.i.i.i ], [ %tmp.i244.us.i.us.i.i.i, %if.false5.us.i.us.i.i.i ]
  %tmp.i238.not.us.i.us.i.i.i = icmp eq i64 %.1207.us.i.us.i.i.i, %.1205.us.i.us.i.i.i
  br i1 %tmp.i238.not.us.i.us.i.i.i, label %while.cond7.preheader.us.i.us.i.i.i, label %while.body2.us.i.us.i.i.i

while.cond7.preheader.us.i.us.i.i.i:              ; preds = %if.exit6.us.i.us.i.i.i, %while.body.us.i.us.i.i.i
  %.1213.lcssa.us.i.us.i.i.i = phi i64 [ %.0212304.us.i.us.i.i.i, %while.body.us.i.us.i.i.i ], [ %.2214.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ]
  %.1210.lcssa.us.i.us.i.i.i = phi i64 [ %.0209306.us.i.us.i.i.i, %while.body.us.i.us.i.i.i ], [ %.2.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ]
  %tmp.i260.us.i.us.i.i.i = add i64 %.1210.lcssa.us.i.us.i.i.i, -1
  %14 = getelementptr i64, ptr %6, i64 %tmp.i260.us.i.us.i.i.i
  store i64 %.fca.0.extract.i.i.i.i, ptr %14, align 8
  %tmp.i271.not300.us.i.us.i.i.i = icmp sgt i64 %tmp.i260.us.i.us.i.i.i, %.0211305.us.i.us.i.i.i
  br i1 %tmp.i271.not300.us.i.us.i.i.i, label %while.body27.us.i.us.i.i.i, label %if.exit22.loopexit.us.i.us.i.i.i

while.body27.us.i.us.i.i.i:                       ; preds = %while.body27.us.i.us.i.i.i, %while.cond7.preheader.us.i.us.i.i.i
  %15 = phi i64 [ %tmp.i274.us.i.us.i.i.i, %while.body27.us.i.us.i.i.i ], [ %.fca.0.extract.i.i.i.i, %while.cond7.preheader.us.i.us.i.i.i ]
  %.0201301.us.i.us.i.i.i = phi i64 [ %tmp.i273.us.i.us.i.i.i, %while.body27.us.i.us.i.i.i ], [ %tmp.i260.us.i.us.i.i.i, %while.cond7.preheader.us.i.us.i.i.i ]
  %tmp.i273.us.i.us.i.i.i = add nsw i64 %.0201301.us.i.us.i.i.i, -1
  %16 = getelementptr i64, ptr %5, i64 %.0201301.us.i.us.i.i.i
  %17 = load i64, ptr %16, align 8
  %tmp.i274.us.i.us.i.i.i = mul i64 %17, %15
  %18 = getelementptr i64, ptr %6, i64 %tmp.i273.us.i.us.i.i.i
  store i64 %tmp.i274.us.i.us.i.i.i, ptr %18, align 8
  %tmp.i271.not.us.i.us.i.i.i = icmp sgt i64 %tmp.i273.us.i.us.i.i.i, %.0211305.us.i.us.i.i.i
  br i1 %tmp.i271.not.us.i.us.i.i.i, label %while.body27.us.i.us.i.i.i, label %if.exit22.loopexit.us.i.us.i.i.i

if.exit22.loopexit.us.i.us.i.i.i:                 ; preds = %while.body27.us.i.us.i.i.i, %while.cond7.preheader.us.i.us.i.i.i
  %tmp.i263.us.i.us.i.i.i = add i64 %.1210.lcssa.us.i.us.i.i.i, 1
  %tmp.i264.us.i.us.i.i.i = add i64 %.1213.lcssa.us.i.us.i.i.i, 1
  %tmp.i232.us.i.us.i.i.i = icmp slt i64 %.1210.lcssa.us.i.us.i.i.i, 2
  %tmp.i236.us.i.us.i.i.i = icmp slt i64 %.1213.lcssa.us.i.us.i.i.i, 1
  %or.cond.us.i.us.i.i.i = and i1 %tmp.i236.us.i.us.i.i.i, %tmp.i232.us.i.us.i.i.i
  br i1 %or.cond.us.i.us.i.i.i, label %while.body.us.i.us.i.i.i, label %while.exit.i.i.i.i

while.body.us.i.i.i.i:                            ; preds = %if.exit22.loopexit.us.i.i.i.i, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i"
  %.0209306.us.i.i.i.i = phi i64 [ %tmp.i263.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i" ]
  %.0211305.us.i.i.i.i = phi i64 [ %.1210.lcssa.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i" ]
  %.0212304.us.i.i.i.i = phi i64 [ %tmp.i264.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i" ]
  %.0215303.us.i.i.i.i = phi i64 [ %.1213.lcssa.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1175.exit265.i.i.i" ]
  %19 = getelementptr i64, ptr %5, i64 %.0211305.us.i.i.i.i
  %20 = load i64, ptr %19, align 8
  %tmp.i238.not288.us.i.i.i.i = icmp eq i64 %20, %.fca.0.extract38.i.i.i.i
  br i1 %tmp.i238.not288.us.i.i.i.i, label %while.cond7.preheader.us.i.i.i.i, label %while.body2.us.i.i.i.i

while.body2.us.i.i.i.i:                           ; preds = %if.exit6.us.i.i.i.i, %while.body.us.i.i.i.i
  %.0204292.us.i.i.i.i = phi i64 [ %.1205.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %.fca.0.extract38.i.i.i.i, %while.body.us.i.i.i.i ]
  %.0206291.us.i.i.i.i = phi i64 [ %.1207.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %20, %while.body.us.i.i.i.i ]
  %.1210290.us.i.i.i.i = phi i64 [ %.2.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %.0209306.us.i.i.i.i, %while.body.us.i.i.i.i ]
  %.1213289.us.i.i.i.i = phi i64 [ %.2214.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %.0212304.us.i.i.i.i, %while.body.us.i.i.i.i ]
  %tmp.i240.not.us.i.i.i.i = icmp sgt i64 %.0204292.us.i.i.i.i, %.0206291.us.i.i.i.i
  br i1 %tmp.i240.not.us.i.i.i.i, label %if.true4.us.i.i.i.i, label %if.false5.us.i.i.i.i

if.false5.us.i.i.i.i:                             ; preds = %while.body2.us.i.i.i.i
  %tmp.i244.us.i.i.i.i = mul i64 %.0204292.us.i.i.i.i, %.fca.0.extract38.i.i.i.i
  %tmp.i245.us.i.i.i.i = add i64 %.1213289.us.i.i.i.i, 1
  br label %if.exit6.us.i.i.i.i

if.true4.us.i.i.i.i:                              ; preds = %while.body2.us.i.i.i.i
  %21 = getelementptr i64, ptr %5, i64 %.1210290.us.i.i.i.i
  %22 = load i64, ptr %21, align 8
  %tmp.i242.us.i.i.i.i = mul i64 %22, %.0206291.us.i.i.i.i
  %tmp.i243.us.i.i.i.i = add i64 %.1210290.us.i.i.i.i, 1
  br label %if.exit6.us.i.i.i.i

if.exit6.us.i.i.i.i:                              ; preds = %if.true4.us.i.i.i.i, %if.false5.us.i.i.i.i
  %.2214.us.i.i.i.i = phi i64 [ %.1213289.us.i.i.i.i, %if.true4.us.i.i.i.i ], [ %tmp.i245.us.i.i.i.i, %if.false5.us.i.i.i.i ]
  %.2.us.i.i.i.i = phi i64 [ %tmp.i243.us.i.i.i.i, %if.true4.us.i.i.i.i ], [ %.1210290.us.i.i.i.i, %if.false5.us.i.i.i.i ]
  %.1207.us.i.i.i.i = phi i64 [ %tmp.i242.us.i.i.i.i, %if.true4.us.i.i.i.i ], [ %.0206291.us.i.i.i.i, %if.false5.us.i.i.i.i ]
  %.1205.us.i.i.i.i = phi i64 [ %.0204292.us.i.i.i.i, %if.true4.us.i.i.i.i ], [ %tmp.i244.us.i.i.i.i, %if.false5.us.i.i.i.i ]
  %tmp.i238.not.us.i.i.i.i = icmp eq i64 %.1207.us.i.i.i.i, %.1205.us.i.i.i.i
  br i1 %tmp.i238.not.us.i.i.i.i, label %while.cond7.preheader.us.i.i.i.i, label %while.body2.us.i.i.i.i

while.cond7.preheader.us.i.i.i.i:                 ; preds = %if.exit6.us.i.i.i.i, %while.body.us.i.i.i.i
  %.1213.lcssa.us.i.i.i.i = phi i64 [ %.0212304.us.i.i.i.i, %while.body.us.i.i.i.i ], [ %.2214.us.i.i.i.i, %if.exit6.us.i.i.i.i ]
  %.1210.lcssa.us.i.i.i.i = phi i64 [ %.0209306.us.i.i.i.i, %while.body.us.i.i.i.i ], [ %.2.us.i.i.i.i, %if.exit6.us.i.i.i.i ]
  %tmp.i246.us.i.i.i.i = add i64 %.1213.lcssa.us.i.i.i.i, -1
  %tmp.i247.not294.us.i.not.i.i.i = icmp sgt i64 %tmp.i246.us.i.i.i.i, %.0215303.us.i.i.i.i
  br i1 %tmp.i247.not294.us.i.not.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i.i, label %while.exit9.us.i.i.i.i

while.exit9.us.i.i.i.i:                           ; preds = %while.cond7.preheader.us.i.i.i.i
  %tmp.i260.us.i.i.i.i = add i64 %.1210.lcssa.us.i.i.i.i, -1
  %23 = getelementptr i64, ptr %6, i64 %tmp.i260.us.i.i.i.i
  store i64 %.fca.0.extract.i.i.i.i, ptr %23, align 8
  %tmp.i271.not300.us.i.i.i.i = icmp sgt i64 %tmp.i260.us.i.i.i.i, %.0211305.us.i.i.i.i
  br i1 %tmp.i271.not300.us.i.i.i.i, label %while.body27.us.i.i.i.i, label %if.exit22.loopexit.us.i.i.i.i

while.body27.us.i.i.i.i:                          ; preds = %while.body27.us.i.i.i.i, %while.exit9.us.i.i.i.i
  %24 = phi i64 [ %tmp.i274.us.i.i.i.i, %while.body27.us.i.i.i.i ], [ %.fca.0.extract.i.i.i.i, %while.exit9.us.i.i.i.i ]
  %.0201301.us.i.i.i.i = phi i64 [ %tmp.i273.us.i.i.i.i, %while.body27.us.i.i.i.i ], [ %tmp.i260.us.i.i.i.i, %while.exit9.us.i.i.i.i ]
  %tmp.i273.us.i.i.i.i = add nsw i64 %.0201301.us.i.i.i.i, -1
  %25 = getelementptr i64, ptr %5, i64 %.0201301.us.i.i.i.i
  %26 = load i64, ptr %25, align 8
  %tmp.i274.us.i.i.i.i = mul i64 %26, %24
  %27 = getelementptr i64, ptr %6, i64 %tmp.i273.us.i.i.i.i
  store i64 %tmp.i274.us.i.i.i.i, ptr %27, align 8
  %tmp.i271.not.us.i.i.i.i = icmp sgt i64 %tmp.i273.us.i.i.i.i, %.0211305.us.i.i.i.i
  br i1 %tmp.i271.not.us.i.i.i.i, label %while.body27.us.i.i.i.i, label %if.exit22.loopexit.us.i.i.i.i

if.exit22.loopexit.us.i.i.i.i:                    ; preds = %while.body27.us.i.i.i.i, %while.exit9.us.i.i.i.i
  %tmp.i263.us.i.i.i.i = add i64 %.1210.lcssa.us.i.i.i.i, 1
  %tmp.i264.us.i.i.i.i = add i64 %.1213.lcssa.us.i.i.i.i, 1
  %tmp.i232.us.i.i.i.i = icmp slt i64 %.1210.lcssa.us.i.i.i.i, 2
  %tmp.i236.us.i.i.i.i = icmp slt i64 %.1213.lcssa.us.i.i.i.i, 1
  %or.cond.us.i.i.i.i = and i1 %tmp.i236.us.i.i.i.i, %tmp.i232.us.i.i.i.i
  br i1 %or.cond.us.i.i.i.i, label %while.body.us.i.i.i.i, label %while.exit.i.i.i.i

while.exit.i.i.i.i:                               ; preds = %if.exit22.loopexit.us.i.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i
  %.0211.lcssa.i.i.i.i = phi i64 [ %.1210.lcssa.us.i.us.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i ], [ %.1210.lcssa.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ]
  %tmp.i234.i.i.i.i = icmp slt i64 %.0211.lcssa.i.i.i.i, 1
  br i1 %tmp.i234.i.i.i.i, label %while.body36.i.preheader.i.i.i, label %if.exit34.i.i.i.i

if.exit34.i.i.i.i:                                ; preds = %while.exit.i.i.i.i
  %tmp.i276.i.i.i.i = add nsw i64 %.0211.lcssa.i.i.i.i, -1
  %28 = getelementptr i64, ptr %6, i64 %tmp.i276.i.i.i.i
  %29 = load i64, ptr %28, align 8
  %tmp.i279364.i.not.i.i.i = icmp eq i64 %.0211.lcssa.i.i.i.i, 1
  br i1 %tmp.i279364.i.not.i.i.i, label %while.body36.i.preheader.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i"

while.body36.i.preheader.i.i.i:                   ; preds = %if.exit34.i.i.i.i, %while.exit.i.i.i.i
  %.0200.i338.i.i.i = phi i64 [ %29, %if.exit34.i.i.i.i ], [ 8, %while.exit.i.i.i.i ]
  %30 = sub i64 2, %.0211.lcssa.i.i.i.i
  %min.iters.check = icmp ult i64 %30, 2
  br i1 %min.iters.check, label %while.body36.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %while.body36.i.preheader.i.i.i
  %n.vec = and i64 %30, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %.0211.lcssa.i.i.i.i
  %31 = add i64 %offset.idx, 1
  %32 = getelementptr i64, ptr %6, i64 %offset.idx
  %33 = getelementptr i64, ptr %6, i64 %31
  store i64 %.0200.i338.i.i.i, ptr %32, align 8
  store i64 %.0200.i338.i.i.i, ptr %33, align 8
  %index.next = add nuw i64 %index, 2
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !2

middle.block:                                     ; preds = %vector.body
  %ind.end = add i64 %n.vec, %.0211.lcssa.i.i.i.i
  %cmp.n = icmp eq i64 %30, %n.vec
  br i1 %cmp.n, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i", label %while.body36.i.i.i.i.preheader

while.body36.i.i.i.i.preheader:                   ; preds = %middle.block, %while.body36.i.preheader.i.i.i
  %.0365.i.i.i.i.ph = phi i64 [ %ind.end, %middle.block ], [ %.0211.lcssa.i.i.i.i, %while.body36.i.preheader.i.i.i ]
  br label %while.body36.i.i.i.i

while.body36.i.i.i.i:                             ; preds = %while.body36.i.i.i.i, %while.body36.i.i.i.i.preheader
  %.0365.i.i.i.i = phi i64 [ %tmp.i281.i.i.i.i, %while.body36.i.i.i.i ], [ %.0365.i.i.i.i.ph, %while.body36.i.i.i.i.preheader ]
  %35 = getelementptr i64, ptr %6, i64 %.0365.i.i.i.i
  store i64 %.0200.i338.i.i.i, ptr %35, align 8
  %tmp.i281.i.i.i.i = add nsw i64 %.0365.i.i.i.i, 1
  %exitcond376.i.i.i.i = icmp eq i64 %tmp.i281.i.i.i.i, 2
  br i1 %exitcond376.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i", label %while.body36.i.i.i.i, !llvm.loop !5

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i": ; preds = %while.body36.i.i.i.i, %middle.block, %if.exit34.i.i.i.i
  %.fca.0.load.i.i.i.i = load i64, ptr %6, align 8
  %.fca.1.load.i.i.i.i = load i64, ptr %.fca.1.gep.i266.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  br label %"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1461.exit"

"str:str.__eq__:0[str,str].1175.exit287.i.i.i":   ; preds = %for.body.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i, %entry
  %.sroa.16.0.i.i.i = phi ptr [ %36, %imp_for.cond.preheader.i.i.i.i.i.i ], [ %.fca.2.extract.i.i.i, %entry ], [ %36, %for.body.i.i.i.i.i ]
  %tmp.i31.us.i.i.i.i.i = shl i64 %.frozen, 3
  br label %"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1461.exit"

imp_for.cond.preheader.i.i.i.i.i.i:               ; preds = %while.cond7.preheader.us.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %.sink.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i.i.i, 3
  %36 = tail call ptr @seq_alloc_atomic(i64 %.sink.i.i.i.i.i)
  %.not7.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i.i.i, 0
  br i1 %.not7.i.i.i.i.i.i, label %for.body.i.i.i.i.i, label %"str:str.__eq__:0[str,str].1175.exit287.i.i.i"

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i
  %.sroa.6.1.i.i.i.i.i = phi i64 [ %40, %for.body.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %tmp.i.i.i.i.i.i.i.i = mul i64 %.sroa.6.1.i.i.i.i.i, %.fca.0.extract.i.i.i.i
  %37 = getelementptr i8, ptr %.fca.2.extract.i.i.i, i64 %tmp.i.i.i.i.i.i.i.i
  %tmp.i.i.i362.i.i.i.i.i = shl i64 %.sroa.6.1.i.i.i.i.i, 3
  %38 = getelementptr i8, ptr %36, i64 %tmp.i.i.i362.i.i.i.i.i
  %39 = load double, ptr %37, align 8
  store double %39, ptr %38, align 8
  %40 = add nuw nsw i64 %.sroa.6.1.i.i.i.i.i, 1
  %exitcond.not.i412.i.i.i.i.i = icmp eq i64 %40, %.fca.0.extract38.i.i.i.i
  br i1 %exitcond.not.i412.i.i.i.i.i, label %"str:str.__eq__:0[str,str].1175.exit287.i.i.i", label %for.body.i.i.i.i.i

"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1461.exit": ; preds = %"str:str.__eq__:0[str,str].1175.exit287.i.i.i", %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i"
  %tmp.i31.us.i.i.pn.i.i.i = phi i64 [ %tmp.i31.us.i.i.i.i.i, %"str:str.__eq__:0[str,str].1175.exit287.i.i.i" ], [ %.fca.0.load.i.i.i.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i" ]
  %.pn343.i.i.i = phi i64 [ 8, %"str:str.__eq__:0[str,str].1175.exit287.i.i.i" ], [ %.fca.1.load.i.i.i.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i" ]
  %.sroa.16.0310.pn.i.i.i = phi ptr [ %.sroa.16.0.i.i.i, %"str:str.__eq__:0[str,str].1175.exit287.i.i.i" ], [ %.fca.2.extract.i.i.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1419.exit.i.i.i" ]
  %.fca.0.insert45.i.i.i.i = insertvalue { i64, i64 } poison, i64 %tmp.i89.i.i.i.i, 0
  %tmp.i.i.i = sitofp i64 %2 to double
  %tmp.i.i = fdiv double 1.000000e+00, %tmp.i.i.i
  %41 = ashr i64 %2, 1
  %tmp.i.i.i.i = add nsw i64 %41, 1
  %.not.i.i.i.i.i = icmp sgt i64 %tmp.i89.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %.not.i.c.i.i.i.i = icmp sgt i64 %2, -3
  tail call void @llvm.assume(i1 %.not.i.c.i.i.i.i)
  %tmp.i.1.i.i.i.i.i29.i = shl i64 %tmp.i.i.i.i, 4
  %42 = mul i64 %tmp.i89.i.i.i.i, %tmp.i.1.i.i.i.i.i29.i
  %43 = tail call ptr @seq_alloc_atomic(i64 %42)
  %44 = tail call ptr @seq_alloc_atomic(i64 %tmp.i.1.i.i.i.i.i29.i)
  %.not7.i.not.i.i.i.i = icmp eq i64 %tmp.i89.i.i.i.i, 0
  br i1 %.not7.i.not.i.i.i.i, label %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i", label %for.body.lr.ph.i.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1461.exit"
  %tmp.i.not.i.i.i.i.i = icmp eq i64 %2, -1
  %spec.select.i.i.i.i30.i = select i1 %tmp.i.not.i.i.i.i.i, i64 %.frozen, i64 %2
  %45 = ashr i64 %spec.select.i.i.i.i30.i, 1
  %.not31.not52.i.i.i.i.i = icmp slt i64 %spec.select.i.i.i.i30.i, 0
  %tmp.i.i47.i.i.i.i.i = sitofp i64 %spec.select.i.i.i.i30.i to double
  %46 = tail call i64 @llvm.smax.i64(i64 %45, i64 0)
  %smax55.i.i.i.i.i = shl nuw nsw i64 %45, 4
  %47 = add nuw nsw i64 %smax55.i.i.i.i.i, 16
  %.not174.not.i.i.i.i = icmp eq i64 %tmp.i.i.i.i, 0
  br i1 %.not31.not52.i.i.i.i.i, label %for.body.lr.ph.split.us.i.i.i.i, label %for.body.lr.ph.split.i.i.i.i

for.body.lr.ph.split.us.i.i.i.i:                  ; preds = %for.body.lr.ph.i.i.i.i
  br i1 %.not174.not.i.i.i.i, label %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i", label %for.body.us.us.i.i.i.i

for.body.us.us.i.i.i.i:                           ; preds = %yield.new2.i210.i.i.i.i, %for.body.lr.ph.split.us.i.i.i.i
  %.sroa.14.1.i.i.i.i = phi i64 [ %52, %yield.new2.i210.i.i.i.i ], [ 0, %for.body.lr.ph.split.us.i.i.i.i ]
  %tmp.i.i.i172.us.us.i.i.i.i = mul i64 %.sroa.14.1.i.i.i.i, %tmp.i.1.i.i.i.i.i29.i
  br label %imp_for.body.us.us.i.i.i.i

imp_for.body.us.us.i.i.i.i:                       ; preds = %imp_for.body.us.us.i.i.i.i, %for.body.us.us.i.i.i.i
  %48 = phi i64 [ 0, %for.body.us.us.i.i.i.i ], [ %51, %imp_for.body.us.us.i.i.i.i ]
  %tmp.i.1.i.i173.us.us.i.i.i.i = shl i64 %48, 4
  %tmp.i37.1.i.i.us.us.i.i.i.i = add i64 %tmp.i.1.i.i173.us.us.i.i.i.i, %tmp.i.i.i172.us.us.i.i.i.i
  %49 = getelementptr i8, ptr %43, i64 %tmp.i37.1.i.i.us.us.i.i.i.i
  %50 = getelementptr { double, double }, ptr %44, i64 %48
  %.unpack.i.us.us.i.i.i.i = load double, ptr %50, align 8
  %.elt1.i.us.us.i.i.i.i = getelementptr { double, double }, ptr %44, i64 %48, i32 1
  %.unpack2.i.us.us.i.i.i.i = load double, ptr %.elt1.i.us.us.i.i.i.i, align 8
  store double %.unpack.i.us.us.i.i.i.i, ptr %49, align 8
  %.repack1.i.us.us.i.i.i.i = getelementptr { double, double }, ptr %49, i64 0, i32 1
  store double %.unpack2.i.us.us.i.i.i.i, ptr %.repack1.i.us.us.i.i.i.i, align 8
  %51 = add nuw nsw i64 %48, 1
  %exitcond196.not.i.i.i.i = icmp eq i64 %48, %41
  br i1 %exitcond196.not.i.i.i.i, label %yield.new2.i210.i.i.i.i, label %imp_for.body.us.us.i.i.i.i

yield.new2.i210.i.i.i.i:                          ; preds = %imp_for.body.us.us.i.i.i.i
  %52 = add nuw nsw i64 %.sroa.14.1.i.i.i.i, 1
  %exitcond.not.i215.i.i.i.i = icmp eq i64 %52, %tmp.i89.i.i.i.i
  br i1 %exitcond.not.i215.i.i.i.i, label %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i", label %for.body.us.us.i.i.i.i

for.body.lr.ph.split.i.i.i.i:                     ; preds = %for.body.lr.ph.i.i.i.i
  %.not3248.not.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i30.i, 0
  br i1 %.not3248.not.i.i.i.i.i, label %for.body.lr.ph.split.split.us.i.i.i.i, label %for.body.i.i.i32.i

for.body.lr.ph.split.split.us.i.i.i.i:            ; preds = %for.body.lr.ph.split.i.i.i.i
  br i1 %.not174.not.i.i.i.i, label %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i", label %for.body.us175.us.i.i.i.i

for.body.us175.us.i.i.i.i:                        ; preds = %yield.new2.i246.i.i.i.i, %for.body.lr.ph.split.split.us.i.i.i.i
  %.sroa.14.3.i.i.i.i = phi i64 [ %57, %yield.new2.i246.i.i.i.i ], [ 0, %for.body.lr.ph.split.split.us.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %44, i8 0, i64 %47, i1 false)
  %tmp.i.i.i172.us189.us.i.i.i.i = mul i64 %.sroa.14.3.i.i.i.i, %tmp.i.1.i.i.i.i.i29.i
  br label %imp_for.body.us179.us.i.i.i.i

imp_for.body.us179.us.i.i.i.i:                    ; preds = %imp_for.body.us179.us.i.i.i.i, %for.body.us175.us.i.i.i.i
  %53 = phi i64 [ 0, %for.body.us175.us.i.i.i.i ], [ %56, %imp_for.body.us179.us.i.i.i.i ]
  %tmp.i.1.i.i173.us180.us.i.i.i.i = shl i64 %53, 4
  %tmp.i37.1.i.i.us181.us.i.i.i.i = add i64 %tmp.i.1.i.i173.us180.us.i.i.i.i, %tmp.i.i.i172.us189.us.i.i.i.i
  %54 = getelementptr i8, ptr %43, i64 %tmp.i37.1.i.i.us181.us.i.i.i.i
  %55 = getelementptr { double, double }, ptr %44, i64 %53
  %.unpack.i.us182.us.i.i.i.i = load double, ptr %55, align 8
  %.elt1.i.us183.us.i.i.i.i = getelementptr { double, double }, ptr %44, i64 %53, i32 1
  %.unpack2.i.us184.us.i.i.i.i = load double, ptr %.elt1.i.us183.us.i.i.i.i, align 8
  store double %.unpack.i.us182.us.i.i.i.i, ptr %54, align 8
  %.repack1.i.us185.us.i.i.i.i = getelementptr { double, double }, ptr %54, i64 0, i32 1
  store double %.unpack2.i.us184.us.i.i.i.i, ptr %.repack1.i.us185.us.i.i.i.i, align 8
  %56 = add nuw nsw i64 %53, 1
  %exitcond195.not.i.i.i.i = icmp eq i64 %53, %41
  br i1 %exitcond195.not.i.i.i.i, label %yield.new2.i246.i.i.i.i, label %imp_for.body.us179.us.i.i.i.i

yield.new2.i246.i.i.i.i:                          ; preds = %imp_for.body.us179.us.i.i.i.i
  %57 = add nuw nsw i64 %.sroa.14.3.i.i.i.i, 1
  %exitcond.not.i251.i.i.i.i = icmp eq i64 %57, %tmp.i89.i.i.i.i
  br i1 %exitcond.not.i251.i.i.i.i, label %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i", label %for.body.us175.us.i.i.i.i

yield.new2.i282.i.i.i.i:                          ; preds = %imp_for.body.i.i.i34.i, %"std.numpy.reductions._rfft_reducer_multi:0[Ptr[float],int,int,Ptr[std.internal.types.complex.complex],KwTuple.N2_0[int,Optional[NoneType]],std.internal.types.complex.complex,float].1654.exit.loopexit.i.i.i.i"
  %58 = add nuw nsw i64 %.sroa.14.6.i.i.i.i, 1
  %exitcond.not.i287.i.i.i.i = icmp eq i64 %58, %tmp.i89.i.i.i.i
  br i1 %exitcond.not.i287.i.i.i.i, label %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i", label %for.body.i.i.i32.i

for.body.i.i.i32.i:                               ; preds = %yield.new2.i282.i.i.i.i, %for.body.lr.ph.split.i.i.i.i
  %.sroa.14.6.i.i.i.i = phi i64 [ %58, %yield.new2.i282.i.i.i.i ], [ 0, %for.body.lr.ph.split.i.i.i.i ]
  %tmp.i.i.i.i.i.i33.i = mul i64 %.sroa.14.6.i.i.i.i, %tmp.i31.us.i.i.pn.i.i.i
  %59 = getelementptr i8, ptr %.sroa.16.0310.pn.i.i.i, i64 %tmp.i.i.i.i.i.i33.i
  br label %imp_for.cond1.preheader.us.i.i.i.i.i

imp_for.cond1.preheader.us.i.i.i.i.i:             ; preds = %imp_for.cond1.imp_for.exit4_crit_edge.us.i.i.i.i.i, %for.body.i.i.i32.i
  %60 = phi i64 [ %67, %imp_for.cond1.imp_for.exit4_crit_edge.us.i.i.i.i.i ], [ 0, %for.body.i.i.i32.i ]
  %tmp.i.i.us.i.i.i.i.i = sitofp i64 %60 to double
  %tmp.i35.us.i.i.i.i.i = fmul double %tmp.i.i.us.i.i.i.i.i, 0x401921FB54442D18
  br label %imp_for.body2.us.i.i.i.i.i

imp_for.body2.us.i.i.i.i.i:                       ; preds = %ternary.exit.us.i.i.i.i.i, %imp_for.cond1.preheader.us.i.i.i.i.i
  %61 = phi i64 [ 0, %imp_for.cond1.preheader.us.i.i.i.i.i ], [ %65, %ternary.exit.us.i.i.i.i.i ]
  %.02750.us.i.i.i.i.i = phi double [ 0.000000e+00, %imp_for.cond1.preheader.us.i.i.i.i.i ], [ %tmp.i42.us.i.i.i.i.i, %ternary.exit.us.i.i.i.i.i ]
  %.02849.us.i.i.i.i.i = phi double [ 0.000000e+00, %imp_for.cond1.preheader.us.i.i.i.i.i ], [ %tmp.i45.us.i.i.i.i.i, %ternary.exit.us.i.i.i.i.i ]
  %tmp.i.i46.us.i.i.i.i.i = sitofp i64 %61 to double
  %tmp.i36.us.i.i.i.i.i = fmul double %tmp.i35.us.i.i.i.i.i, %tmp.i.i46.us.i.i.i.i.i
  %tmp.i37.us.i.i.i.i.i = fdiv double %tmp.i36.us.i.i.i.i.i, %tmp.i.i47.i.i.i.i.i
  %tmp.i38.not.us.i.i.i.i.i = icmp ult i64 %61, %.frozen
  br i1 %tmp.i38.not.us.i.i.i.i.i, label %ternary.true.us.i.i.i.i.i, label %ternary.exit.us.i.i.i.i.i

ternary.true.us.i.i.i.i.i:                        ; preds = %imp_for.body2.us.i.i.i.i.i
  %tmp.i40.us.i.i.i.i.i = mul i64 %61, %.pn343.i.i.i
  %62 = getelementptr i8, ptr %59, i64 %tmp.i40.us.i.i.i.i.i
  %63 = load double, ptr %62, align 8
  br label %ternary.exit.us.i.i.i.i.i

ternary.exit.us.i.i.i.i.i:                        ; preds = %ternary.true.us.i.i.i.i.i, %imp_for.body2.us.i.i.i.i.i
  %64 = phi double [ %63, %ternary.true.us.i.i.i.i.i ], [ 0.000000e+00, %imp_for.body2.us.i.i.i.i.i ]
  %y.i.us.i.i.i.i.i = tail call double @llvm.cos.f64(double %tmp.i37.us.i.i.i.i.i)
  %tmp.i41.us.i.i.i.i.i = fmul double %y.i.us.i.i.i.i.i, %64
  %tmp.i42.us.i.i.i.i.i = fadd double %.02750.us.i.i.i.i.i, %tmp.i41.us.i.i.i.i.i
  %y.i43.us.i.i.i.i.i = tail call double @llvm.sin.f64(double %tmp.i37.us.i.i.i.i.i)
  %tmp.i44.us.i.i.i.i.i = fmul double %y.i43.us.i.i.i.i.i, %64
  %tmp.i45.us.i.i.i.i.i = fsub double %.02849.us.i.i.i.i.i, %tmp.i44.us.i.i.i.i.i
  %65 = add nuw nsw i64 %61, 1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %65, %spec.select.i.i.i.i30.i
  br i1 %exitcond.not.i.i.i.i.i, label %imp_for.cond1.imp_for.exit4_crit_edge.us.i.i.i.i.i, label %imp_for.body2.us.i.i.i.i.i

imp_for.cond1.imp_for.exit4_crit_edge.us.i.i.i.i.i: ; preds = %ternary.exit.us.i.i.i.i.i
  %66 = getelementptr { double, double }, ptr %44, i64 %60
  store double %tmp.i42.us.i.i.i.i.i, ptr %66, align 8
  %.repack1.i.us.i.i.i.i.i = getelementptr { double, double }, ptr %44, i64 %60, i32 1
  store double %tmp.i45.us.i.i.i.i.i, ptr %.repack1.i.us.i.i.i.i.i, align 8
  %67 = add nuw nsw i64 %60, 1
  %exitcond54.i.i.i.i.i = icmp eq i64 %60, %46
  br i1 %exitcond54.i.i.i.i.i, label %"std.numpy.reductions._rfft_reducer_multi:0[Ptr[float],int,int,Ptr[std.internal.types.complex.complex],KwTuple.N2_0[int,Optional[NoneType]],std.internal.types.complex.complex,float].1654.exit.loopexit.i.i.i.i", label %imp_for.cond1.preheader.us.i.i.i.i.i

"std.numpy.reductions._rfft_reducer_multi:0[Ptr[float],int,int,Ptr[std.internal.types.complex.complex],KwTuple.N2_0[int,Optional[NoneType]],std.internal.types.complex.complex,float].1654.exit.loopexit.i.i.i.i": ; preds = %imp_for.cond1.imp_for.exit4_crit_edge.us.i.i.i.i.i
  br i1 %.not174.not.i.i.i.i, label %yield.new2.i282.i.i.i.i, label %imp_for.body.lr.ph.i.i.i.i

imp_for.body.lr.ph.i.i.i.i:                       ; preds = %"std.numpy.reductions._rfft_reducer_multi:0[Ptr[float],int,int,Ptr[std.internal.types.complex.complex],KwTuple.N2_0[int,Optional[NoneType]],std.internal.types.complex.complex,float].1654.exit.loopexit.i.i.i.i"
  %tmp.i.i.i172.i.i.i.i = mul i64 %.sroa.14.6.i.i.i.i, %tmp.i.1.i.i.i.i.i29.i
  br label %imp_for.body.i.i.i34.i

imp_for.body.i.i.i34.i:                           ; preds = %imp_for.body.i.i.i34.i, %imp_for.body.lr.ph.i.i.i.i
  %68 = phi i64 [ 0, %imp_for.body.lr.ph.i.i.i.i ], [ %71, %imp_for.body.i.i.i34.i ]
  %tmp.i.1.i.i173.i.i.i.i = shl i64 %68, 4
  %tmp.i37.1.i.i.i.i.i35.i = add i64 %tmp.i.1.i.i173.i.i.i.i, %tmp.i.i.i172.i.i.i.i
  %69 = getelementptr i8, ptr %43, i64 %tmp.i37.1.i.i.i.i.i35.i
  %70 = getelementptr { double, double }, ptr %44, i64 %68
  %.unpack.i.i.i.i.i = load double, ptr %70, align 8
  %.elt1.i.i.i.i.i = getelementptr { double, double }, ptr %44, i64 %68, i32 1
  %.unpack2.i.i.i.i.i = load double, ptr %.elt1.i.i.i.i.i, align 8
  store double %.unpack.i.i.i.i.i, ptr %69, align 8
  %.repack1.i.i.i.i.i = getelementptr { double, double }, ptr %69, i64 0, i32 1
  store double %.unpack2.i.i.i.i.i, ptr %.repack1.i.i.i.i.i, align 8
  %71 = add nuw nsw i64 %68, 1
  %exitcond.not.i.i.i36.i = icmp eq i64 %68, %41
  br i1 %exitcond.not.i.i.i36.i, label %yield.new2.i282.i.i.i.i, label %imp_for.body.i.i.i34.i

"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i": ; preds = %yield.new2.i282.i.i.i.i, %yield.new2.i246.i.i.i.i, %for.body.lr.ph.split.split.us.i.i.i.i, %yield.new2.i210.i.i.i.i, %for.body.lr.ph.split.us.i.i.i.i, %"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1461.exit"
  %.fca.1.insert.i.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert45.i.i.i.i, i64 %tmp.i.i.i.i, 1
  %72 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } undef, { i64, i64 } %.fca.1.insert.i.i.i.i.i, 0
  %.fca.0.insert.i.i.i.i.i.i.i = insertvalue { i64, i64 } poison, i64 %tmp.i.1.i.i.i.i.i29.i, 0
  %.fca.1.insert.i.i.i.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.i.i.i.i, i64 16, 1
  %73 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %72, { i64, i64 } %.fca.1.insert.i.i.i.i.i.i.i, 1
  %.fr.i.i = freeze { { i64, i64 }, { i64, i64 }, ptr } %73
  %74 = tail call {} @seq_free(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %75 = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %.fr.i.i, 0
  %.fca.0.extract38.i.i242.i.i.i.i.i.i = extractvalue { i64, i64 } %75, 0
  %.fca.1.extract40.i.i243.i.i.i.i.i.i = extractvalue { i64, i64 } %75, 1
  %76 = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %.fr.i.i, 1
  %.fca.0.extract.i.i244.i.i.i.i.i.i = extractvalue { i64, i64 } %76, 0
  %.fca.1.extract.i.i245.i.i.i.i.i.i = extractvalue { i64, i64 } %76, 1
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, label %if.true1.i.i267.i.i.i.i.i.i [
    i64 0, label %while.body.i.preheader.i.i.i.i.i.i.i
    i64 1, label %if.exit3.i.i246.i.i.i.i.i.i
  ]

while.body.i.preheader.i.i.i.i.i.i.i:             ; preds = %if.exit13.i32.i279.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.thread.i.i.i.i.i", %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.i.i.i.i.i", %if.exit3.i.i246.i.i.i.i.i.i, %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i"
  %.sroa.7208.0.i.i.i.i.i.i = phi ptr [ @.str.130, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.i.i.i.i.i" ], [ @.str.130, %if.exit3.i.i246.i.i.i.i.i.i ], [ @.str.130, %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i" ], [ @.str.131, %if.exit13.i32.i279.i.i.i.i.i.i ], [ @.str.130, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.thread.i.i.i.i.i" ]
  %.not.i241.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.i.i.i.i.i.i)
  %.not.i241.c.i.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.c.i.i.i.i.i.i)
  %77 = load i8, ptr %.sroa.7208.0.i.i.i.i.i.i, align 1
  switch i8 %77, label %"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i.i" [
    i8 70, label %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i.i"
    i8 67, label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i.i"
  ]

"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i.i": ; preds = %while.body.i.preheader.i.i.i.i.i.i.i
  br label %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i.i"

"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i.i.i
  %common.ret.op.i4564.i.i.i.i.i.i.i = phi i8 [ 1, %while.body.i.preheader.i.i.i.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i.i" ]
  br label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i.i"

"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i.i.i
  %common.ret.op.i4563.i.i.i.i.i.i.i = phi i8 [ %common.ret.op.i4564.i.i.i.i.i.i.i, %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i.i" ], [ 0, %while.body.i.preheader.i.i.i.i.i.i.i ]
  %78 = phi i8 [ %common.ret.op.i4564.i.i.i.i.i.i.i, %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i.i" ], [ 1, %while.body.i.preheader.i.i.i.i.i.i.i ]
  %.not41.i.i.i.i.i.i.i = icmp eq i8 %78, 1
  tail call void @llvm.assume(i1 %.not41.i.i.i.i.i.i.i)
  %tmp.i.1.i.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  %79 = mul i64 %tmp.i.1.i.i.i.i.i.i.i.i, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  %80 = tail call ptr @seq_alloc_atomic(i64 %79)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i4563.i.i.i.i.i.i.i, 0
  %tmp.i31.us.i.i.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 8, i64 %tmp.i.1.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 %tmp.i31.us.i.i.i.i.i.i.i.i.i, i64 8
  br label %if.exit.i.i.i.i.i.i.i.i

if.true1.i.i267.i.i.i.i.i.i:                      ; preds = %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i"
  %tmp.i106.not.i.i268.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i.i, 16
  %spec.select.i.i269.i.i.i.i.i.i = zext i1 %tmp.i106.not.i.i268.i.i.i.i.i.i to i8
  %tmp.i108.i.i270.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 4
  br label %if.exit3.i.i246.i.i.i.i.i.i

if.exit3.i.i246.i.i.i.i.i.i:                      ; preds = %if.true1.i.i267.i.i.i.i.i.i, %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i"
  %.194.i.i247.i.i.i.i.i.i = phi i64 [ %tmp.i108.i.i270.i.i.i.i.i.i, %if.true1.i.i267.i.i.i.i.i.i ], [ 16, %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i" ]
  %.1.i.i248.i.i.i.i.i.i = phi i8 [ %spec.select.i.i269.i.i.i.i.i.i, %if.true1.i.i267.i.i.i.i.i.i ], [ 1, %"std.numpy.reductions.rfft:0[std.numpy.ndarray.ndarray[float,2],int,int,Optional[NoneType],Optional[NoneType]].1690.exit.i.i" ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.i.i.i.i.i" [
    i64 0, label %while.body.i.preheader.i.i.i.i.i.i.i
    i64 1, label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.thread.i.i.i.i.i"
  ]

"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.i.i.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i.i.i
  %tmp.i106.not.1.i.i262.i.i.i.i.i.i = icmp ne i64 %.fca.0.extract.i.i244.i.i.i.i.i.i, %.194.i.i247.i.i.i.i.i.i
  %.not.i.i258.not.i28.i.i.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i.i.i, 0
  %.not.i.i258.not.i.i.i.i.i.i = or i1 %tmp.i106.not.1.i.i262.i.i.i.i.i.i, %.not.i.i258.not.i28.i.i.i.i.i
  br i1 %.not.i.i258.not.i.i.i.i.i.i, label %if.true11.i.i291.i.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.thread.i.i.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i.i.i
  %.not.i.i258.not.i26.i.i.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i.i.i, 0
  br i1 %.not.i.i258.not.i26.i.i.i.i.i, label %if.exit13.i32.i279.i.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i.i

if.true11.i.i291.i.i.i.i.i.i:                     ; preds = %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.i.i.i.i.i"
  %tmp.i111.not.i45.i294.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i.i, 16
  br i1 %tmp.i111.not.i45.i294.i.i.i.i.i.i, label %if.exit16.i46.i295.i.i.i.i.i.i, label %if.false11.i.i.i.i.i.i

if.exit13.i32.i279.i.i.i.i.i.i:                   ; preds = %if.exit16.i46.i295.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.thread.i.i.i.i.i"
  %.196.i34.i281.i.i.i.i.i.i = phi i64 [ %tmp.i113.i47.i296.i.i.i.i.i.i, %if.exit16.i46.i295.i.i.i.i.i.i ], [ 16, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1737.exit271.i.thread.i.i.i.i.i" ]
  %tmp.i109.not.1.i35.i282.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %tmp.i111.not.1.i36.i283.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i.i, %.196.i34.i281.i.i.i.i.i.i
  %or.cond.i37.i284.i.i.i.i.i.i = or i1 %tmp.i109.not.1.i35.i282.i.i.i.i.i.i, %tmp.i111.not.1.i36.i283.i.i.i.i.i.i
  br i1 %or.cond.i37.i284.i.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i.i, label %if.false11.i.i.i.i.i.i

if.exit16.i46.i295.i.i.i.i.i.i:                   ; preds = %if.true11.i.i291.i.i.i.i.i.i
  %tmp.i113.i47.i296.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 4
  br label %if.exit13.i32.i279.i.i.i.i.i.i

if.false11.i.i.i.i.i.i:                           ; preds = %if.exit13.i32.i279.i.i.i.i.i.i, %if.true11.i.i291.i.i.i.i.i.i
  %.fca.1.gep.i.i.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %81 = tail call i64 @llvm.abs.i64(i64 %.fca.0.extract.i.i244.i.i.i.i.i.i, i1 false)
  %82 = tail call i64 @llvm.abs.i64(i64 %.fca.1.extract.i.i245.i.i.i.i.i.i, i1 false)
  %tmp.i72.not.i.not.i.i.i.i.i.i = icmp sge i64 %81, %82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %spec.select.i.i.i.i.i.i = zext i1 %tmp.i72.not.i.not.i.i.i.i.i.i to i64
  %not.tmp.i72.not.i.not.i.i.i.i.i.i = xor i1 %tmp.i72.not.i.not.i.i.i.i.i.i, true
  %spec.select352.i.i.i.i.i.i = zext i1 %not.tmp.i72.not.i.not.i.i.i.i.i.i to i64
  %t.fca.1.gep.i.i.i.i310.i.i.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %x.i.i.i.i304.i.i.i.i.i.i, i64 0, i32 1
  %83 = getelementptr i64, ptr %4, i64 %spec.select.i.i.i.i.i.i
  store i64 8, ptr %83, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i.i.i)
  store i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, ptr %x.i.i.i.i304.i.i.i.i.i.i, align 8
  store i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, ptr %t.fca.1.gep.i.i.i.i310.i.i.i.i.i.i, align 8
  %p.i.i.i.i311.i.i.i.i.i.i = getelementptr i64, ptr %x.i.i.i.i304.i.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i
  %v.i.i.i.i312.i.i.i.i.i.i = load i64, ptr %p.i.i.i.i311.i.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i.i.i)
  %tmp.i.i.i.i.i28.i.i = shl i64 %v.i.i.i.i312.i.i.i.i.i.i, 3
  %84 = getelementptr i64, ptr %4, i64 %spec.select352.i.i.i.i.i.i
  store i64 %tmp.i.i.i.i.i28.i.i, ptr %84, align 8
  %tmp.i.1.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  %85 = mul i64 %tmp.i.1.i.i.i.i.i.i.i, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  %86 = tail call ptr @seq_alloc_atomic(i64 %85)
  %.fca.0.load.i.i.i.i.i.i = load i64, ptr %4, align 8
  %.fca.1.load.i.i.i.i.i.i = load i64, ptr %.fca.1.gep.i.i.i.i.i.i, align 8
  br label %if.exit.i.i.i.i.i.i.i.i

if.exit.i.i.i.i.i.i.i.i:                          ; preds = %if.false11.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.pn.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i.i" ], [ %.fca.0.load.i.i.i.i.i.i, %if.false11.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.pn.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i.i" ], [ %.fca.1.load.i.i.i.i.i.i, %if.false11.i.i.i.i.i.i ]
  %.pn333.i.i.i.i.i.i = phi ptr [ %80, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i.i" ], [ %86, %if.false11.i.i.i.i.i.i ]
  %.fca.0.insert.i.i.i.pn.i.i.i.i.i.i = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i.i.pn.i.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.pn.i.i.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.pn.i.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.pn.i.i.i.i.i.i, 1
  %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i = freeze { i64, i64 } %.fca.1.insert.i.i.i.pn.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  %tmp.i.1.i.i.i.i.i.i.i.i.i = mul i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, %.fca.0.extract38.i.i242.i.i.i.i.i.i
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, label %if.true1.i.i.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i.i"
    i64 1, label %if.exit3.i.i.i.i.i.i.i.i.i
  ]

if.true1.i.i.i.i.i.i.i.i.i:                       ; preds = %if.exit.i.i.i.i.i.i.i.i
  %tmp.i106.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i.i, 16
  %spec.select.i.i.i.i.i.i.i.i.i = zext i1 %tmp.i106.not.i.i.i.i.i.i.i.i.i to i8
  %tmp.i108.i.i.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 4
  br label %if.exit3.i.i.i.i.i.i.i.i.i

if.exit3.i.i.i.i.i.i.i.i.i:                       ; preds = %if.true1.i.i.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i.i
  %.194.i.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i108.i.i.i.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i.i.i.i ], [ 16, %if.exit.i.i.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i.i.i ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, label %if.true11.i.i.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i.i"
    i64 1, label %if.exit13.i.i.i.i.i.i.i.i.i
  ]

if.true11.i.i.i.i.i.i.i.i.i:                      ; preds = %if.exit3.i.i.i.i.i.i.i.i.i
  %tmp.i106.not.1.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i.i, %.194.i.i.i.i.i.i.i.i.i
  %spec.select.1.i.i.i.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i.i.i.i.i.i.i.i.i, i8 %.1.i.i.i.i.i.i.i.i.i, i8 0
  %tmp.i111.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i.i, 16
  br i1 %tmp.i111.not.i.i.i.i.i.i.i.i.i, label %if.exit16.i.i.i.i.i.i.i.i.i, label %if.true14.i.i.i.i.i.i.i.i.i

if.exit13.i.i.i.i.i.i.i.i.i:                      ; preds = %if.exit16.i.i.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i.i
  %.1.1127.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i.i ]
  %.196.i.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i113.i.i.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i.i.i ], [ 16, %if.exit3.i.i.i.i.i.i.i.i.i ]
  %tmp.i109.not.1.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %tmp.i111.not.1.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i.i, %.196.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %tmp.i109.not.1.i.i.i.i.i.i.i.i.i, %tmp.i111.not.1.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1707.exit.i.i.i.i.i.i.i.i", label %if.true14.i.i.i.i.i.i.i.i.i

if.true14.i.i.i.i.i.i.i.i.i:                      ; preds = %if.exit13.i.i.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i.i.i
  %.1.1126.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i.i ]
  br label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1707.exit.i.i.i.i.i.i.i.i"

if.exit16.i.i.i.i.i.i.i.i.i:                      ; preds = %if.true11.i.i.i.i.i.i.i.i.i
  %tmp.i113.i.i.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 4
  br label %if.exit13.i.i.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1707.exit.i.i.i.i.i.i.i.i": ; preds = %if.true14.i.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i.i
  %.1.1127.i.i.pn.i.i.i.i.i.i.i = phi i8 [ %.1.1126.i.i.i.i.i.i.i.i.i, %if.true14.i.i.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i.i ]
  %.pn205.i.i.i.i.i.i.i = phi i8 [ 0, %if.true14.i.i.i.i.i.i.i.i.i ], [ 1, %if.exit13.i.i.i.i.i.i.i.i.i ]
  %.fca.1.extract.i107.i.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 1
  %cond.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %tmp.i106.not.i128.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i.i.i, 8
  %narrow.i.i.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i.i.i, %tmp.i106.not.i128.i.i.i.i.i.i.i.i
  %.1.i110.i.i.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i.i.i.i to i8
  %cond.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 1
  br i1 %cond.i.i.i.i.i.i.i, label %if.exit13.i111.i.i.i.i.i.i.i.i, label %if.true11.i121.i.i.i.i.i.i.i.i

if.true11.i121.i.i.i.i.i.i.i.i:                   ; preds = %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1707.exit.i.i.i.i.i.i.i.i"
  %tmp.i108.i130.i.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  %.fca.0.extract.i106.i.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 0
  %tmp.i106.not.1.i122.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i.i.i, %tmp.i108.i130.i.i.i.i.i.i.i.i
  %spec.select.1.i123.i.i.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i122.i.i.i.i.i.i.i.i, i8 %.1.i110.i.i.i.i.i.i.i.i, i8 0
  %tmp.i111.not.i124.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i.i.i, 8
  br i1 %tmp.i111.not.i124.i.i.i.i.i.i.i.i, label %if.exit16.i125.i.i.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i.i.i

if.exit13.i111.i.i.i.i.i.i.i.i:                   ; preds = %if.exit16.i125.i.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1707.exit.i.i.i.i.i.i.i.i"
  %.1.1127.i112.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i.i.i ], [ %.1.i110.i.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1707.exit.i.i.i.i.i.i.i.i" ]
  %.196.i113.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i113.i126.i.i.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i.i.i ], [ 8, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].1707.exit.i.i.i.i.i.i.i.i" ]
  %tmp.i111.not.1.i115.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i.i.i, %.196.i113.i.i.i.i.i.i.i.i
  %or.cond.i116.i.i.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i.i.i, %tmp.i111.not.1.i115.i.i.i.i.i.i.i.i
  br i1 %or.cond.i116.i.i.i.i.i.i.i.i, label %if.exit13.1.i120.i.i.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i.i.i

if.exit13.1.i120.i.i.i.i.i.i.i.i:                 ; preds = %if.exit13.i111.i.i.i.i.i.i.i.i
  %87 = insertvalue { i8, i8 } undef, i8 %.1.1127.i112.i.i.i.i.i.i.i.i, 0
  %88 = insertvalue { i8, i8 } %87, i8 1, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i.i"

if.true14.i117.i.i.i.i.i.i.i.i:                   ; preds = %if.exit13.i111.i.i.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i.i.i
  %.1.1126.i118.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i.i.i ], [ %.1.1127.i112.i.i.i.i.i.i.i.i, %if.exit13.i111.i.i.i.i.i.i.i.i ]
  %89 = insertvalue { i8, i8 } undef, i8 %.1.1126.i118.i.i.i.i.i.i.i.i, 0
  %90 = insertvalue { i8, i8 } %89, i8 0, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i.i"

if.exit16.i125.i.i.i.i.i.i.i.i:                   ; preds = %if.true11.i121.i.i.i.i.i.i.i.i
  %tmp.i113.i126.i.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  br label %if.exit13.i111.i.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i.i": ; preds = %if.true14.i117.i.i.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i.i
  %.fca.0.extract21136.i.i.i.i.i.i.i.i = phi i8 [ %.1.1127.i.i.pn.i.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i.i ], [ %.1.1127.i.i.pn.i.i.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i.i.i ], [ 1, %if.exit3.i.i.i.i.i.i.i.i.i ]
  %common.ret.op.i135.i.i.i.i.i.i.i.i = phi i8 [ %.pn205.i.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i.i ], [ %.pn205.i.i.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i.i.i ], [ 1, %if.exit3.i.i.i.i.i.i.i.i.i ]
  %common.ret.op.i119.i.i.i.i.i.i.i.i = phi { i8, i8 } [ %88, %if.exit13.1.i120.i.i.i.i.i.i.i.i ], [ %90, %if.true14.i117.i.i.i.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit.i.i.i.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit3.i.i.i.i.i.i.i.i.i ]
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i.i.i, 0
  %.not102.i.i.i.i.i.i.i.i = icmp eq i8 %.fca.0.extract21136.i.i.i.i.i.i.i.i, 0
  %91 = and i8 %.fca.0.extract.i.i.i.i.i.i.i.i, 1
  %92 = icmp eq i8 %91, 0
  %.not210.i.i.i.i.i.i.i = select i1 %.not102.i.i.i.i.i.i.i.i, i1 true, i1 %92
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i.i.i, 1
  %.not103.i.i.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i135.i.i.i.i.i.i.i.i, 0
  %93 = and i8 %.fca.1.extract.i.i.i.i.i.i.i.i, 1
  %.not207208.i.i.i.i.i.i.i = icmp eq i8 %93, 0
  %.not207.i.i.i.i.i.i.i = select i1 %.not103.i.i.i.i.i.i.i.i, i1 true, i1 %.not207208.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = select i1 %.not210.i.i.i.i.i.i.i, i1 %.not207.i.i.i.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i.i.i.i, label %if.false2.i.i.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i.i:             ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i.i"
  %.not177211.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not177211.i.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i"

if.false2.i.i.i.i.i.i.i:                          ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i.i"
  %.not27.i.i.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 0
  %.not2526.i.i.i.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i = and i1 %.not27.i.i.i.i.i.i.i.i, %.not2526.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i"

for.body.lr.ph.i.i.i.i.i.i.i:                     ; preds = %if.false2.i.i.i.i.i.i.i
  %tmp.i.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 1
  %tmp.i.not.1.i.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %.fca.1.extract.i.i186.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 1
  %.fca.0.extract.i.i188.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 0
  %.unpack.i178.us.i.i.peel.i.i.i.i.i = load double, ptr %43, align 8
  %.elt1.i179.us.i.i.peel.i.i.i.i.i = getelementptr { double, double }, ptr %43, i64 0, i32 1
  %.unpack2.i180.us.i.i.peel.i.i.i.i.i = load double, ptr %.elt1.i179.us.i.i.peel.i.i.i.i.i, align 8
  %94 = tail call double @hypot(double %.unpack.i178.us.i.i.peel.i.i.i.i.i, double %.unpack2.i180.us.i.i.peel.i.i.i.i.i)
  store double %94, ptr %.pn333.i.i.i.i.i.i, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i.i.i, label %yield.new6.us.i272.i.i.peel.i.i.i.i.i, label %for.body.lr.ph.split.i.i.i.i.i.i.i

yield.new6.us.i272.i.i.peel.i.i.i.i.i:            ; preds = %for.body.lr.ph.i.i.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i.thread", label %yield.new6.us.i272.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i.thread": ; preds = %yield.new6.us.i272.i.i.peel.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %.fca.0.extract.i.i244.i.i.i.i.i228 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 0
  %.fca.1.extract.i.i245.i.i.i.i.i229 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 1
  br label %while.body.i.preheader.i.i.i.i.i.i

yield.new6.us.i272.i.i.i.i.i.i.i:                 ; preds = %yield.new6.us.i272.i.i.i.i.i.i.i, %yield.new6.us.i272.i.i.peel.i.i.i.i.i
  %.sink20.i.i.i.i = phi i64 [ %98, %yield.new6.us.i272.i.i.i.i.i.i.i ], [ 1, %yield.new6.us.i272.i.i.peel.i.i.i.i.i ]
  %tmp.i63.1.i.i.us.i.i.i.i.i.i.i = mul i64 %.sink20.i.i.i.i, %.fca.1.extract.i.i245.i.i.i.i.i.i
  %95 = getelementptr i8, ptr %43, i64 %tmp.i63.1.i.i.us.i.i.i.i.i.i.i
  %tmp.i63.1.i.i192.us.i.i.i.i.i.i.i = mul i64 %.sink20.i.i.i.i, %.fca.1.extract.i.i186.i.i.i.i.i.i.i
  %96 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %tmp.i63.1.i.i192.us.i.i.i.i.i.i.i
  %.unpack.i178.us.i.i.i.i.i.i.i = load double, ptr %95, align 8
  %.elt1.i179.us.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %95, i64 0, i32 1
  %.unpack2.i180.us.i.i.i.i.i.i.i = load double, ptr %.elt1.i179.us.i.i.i.i.i.i.i, align 8
  %97 = tail call double @hypot(double %.unpack.i178.us.i.i.i.i.i.i.i, double %.unpack2.i180.us.i.i.i.i.i.i.i)
  store double %97, ptr %96, align 8
  %98 = add nuw nsw i64 %.sink20.i.i.i.i, 1
  %exitcond.not.i277.i.i.i.i.i.i.i = icmp eq i64 %98, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  br i1 %exitcond.not.i277.i.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i", label %yield.new6.us.i272.i.i.i.i.i.i.i

for.body.lr.ph.split.i.i.i.i.i.i.i:               ; preds = %for.body.lr.ph.i.i.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i.i, label %yield.new6.us.i400.i.i.i.i.i.i.i.outer

imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i.i: ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i.i, %for.body.lr.ph.split.i.i.i.i.i.i.i
  %.sink22.i.i.i.i = phi i64 [ %102, %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i.i ], [ 1, %for.body.lr.ph.split.i.i.i.i.i.i.i ]
  %tmp.i63.i.i.us215.i.i.i.i.i.i.i = mul i64 %.sink22.i.i.i.i, %.fca.0.extract.i.i244.i.i.i.i.i.i
  %99 = getelementptr i8, ptr %43, i64 %tmp.i63.i.i.us215.i.i.i.i.i.i.i
  %tmp.i63.i.i189.us219.i.i.i.i.i.i.i = mul i64 %.sink22.i.i.i.i, %.fca.0.extract.i.i188.i.i.i.i.i.i.i
  %100 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %tmp.i63.i.i189.us219.i.i.i.i.i.i.i
  %.unpack.i178.us224.i.i.i.i.i.i.i = load double, ptr %99, align 8
  %.elt1.i179.us225.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %99, i64 0, i32 1
  %.unpack2.i180.us226.i.i.i.i.i.i.i = load double, ptr %.elt1.i179.us225.i.i.i.i.i.i.i, align 8
  %101 = tail call double @hypot(double %.unpack.i178.us224.i.i.i.i.i.i.i, double %.unpack2.i180.us226.i.i.i.i.i.i.i)
  store double %101, ptr %100, align 8
  %102 = add nuw nsw i64 %.sink22.i.i.i.i, 1
  %exitcond29.not.i319.i.i.i.i.i.i.i = icmp eq i64 %102, %.fca.0.extract38.i.i242.i.i.i.i.i.i
  br i1 %exitcond29.not.i319.i.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i", label %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i.i

imp_for.body.i.i.i.i.i.i.i:                       ; preds = %imp_for.body.i.i.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i.i
  %103 = phi i64 [ %107, %imp_for.body.i.i.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i.i.i.i ]
  %104 = getelementptr { double, double }, ptr %43, i64 %103
  %.unpack.i.i.i.i.i.i.i.i = load double, ptr %104, align 8
  %.elt1.i.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %43, i64 %103, i32 1
  %.unpack2.i.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i.i.i.i.i.i.i, align 8
  %105 = tail call double @hypot(double %.unpack.i.i.i.i.i.i.i.i, double %.unpack2.i.i.i.i.i.i.i.i)
  %106 = getelementptr double, ptr %.pn333.i.i.i.i.i.i, i64 %103
  store double %105, ptr %106, align 8
  %107 = add nuw nsw i64 %103, 1
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %107, %tmp.i.1.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i", label %imp_for.body.i.i.i.i.i.i.i

yield.new6.us.i400.i.i.i.i.i.i.i:                 ; preds = %yield.new6.us.i400.i.i.i.i.i.i.i.outer, %yield.new6.us.i400.i.i.i.i.i.i.i
  %.sink25.i.i.i.i = phi i64 [ %111, %yield.new6.us.i400.i.i.i.i.i.i.i ], [ %.sink25.i.i.i.i.ph, %yield.new6.us.i400.i.i.i.i.i.i.i.outer ]
  %tmp.i63.1.i.i.i.i.i.i.i.i.i = mul i64 %.sink25.i.i.i.i, %.fca.1.extract.i.i245.i.i.i.i.i.i
  %.1.1.i.i.i.i.i.i.i.i.i = add i64 %tmp.i63.1.i.i.i.i.i.i.i.i.i, %tmp.i63.i.i.i.i.i.i.i.i.i
  %108 = getelementptr i8, ptr %43, i64 %.1.1.i.i.i.i.i.i.i.i.i
  %tmp.i63.1.i.i192.i.i.i.i.i.i.i = mul i64 %.sink25.i.i.i.i, %.fca.1.extract.i.i186.i.i.i.i.i.i.i
  %.1.1.i.i194.i.i.i.i.i.i.i = add i64 %tmp.i63.1.i.i192.i.i.i.i.i.i.i, %tmp.i63.i.i189.i.i.i.i.i.i.i
  %109 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %.1.1.i.i194.i.i.i.i.i.i.i
  %.unpack.i178.i.i.i.i.i.i.i = load double, ptr %108, align 8
  %.elt1.i179.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %108, i64 0, i32 1
  %.unpack2.i180.i.i.i.i.i.i.i = load double, ptr %.elt1.i179.i.i.i.i.i.i.i, align 8
  %110 = tail call double @hypot(double %.unpack.i178.i.i.i.i.i.i.i, double %.unpack2.i180.i.i.i.i.i.i.i)
  store double %110, ptr %109, align 8
  %111 = add nuw nsw i64 %.sink25.i.i.i.i, 1
  %exitcond.not.i405.i.i.i.i.i.i.i = icmp eq i64 %111, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  br i1 %exitcond.not.i405.i.i.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i.i, label %yield.new6.us.i400.i.i.i.i.i.i.i

imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i.i: ; preds = %yield.new6.us.i400.i.i.i.i.i.i.i
  %112 = add nuw nsw i64 %.sink24.i.i.i.i.ph, 1
  %exitcond29.not.i415.i.i.i.i.i.i.i = icmp eq i64 %112, %.fca.0.extract38.i.i242.i.i.i.i.i.i
  br i1 %exitcond29.not.i415.i.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i", label %yield.new6.us.i400.i.i.i.i.i.i.i.outer

yield.new6.us.i400.i.i.i.i.i.i.i.outer:           ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i.i, %for.body.lr.ph.split.i.i.i.i.i.i.i
  %.sink25.i.i.i.i.ph = phi i64 [ 0, %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i.i ], [ 1, %for.body.lr.ph.split.i.i.i.i.i.i.i ]
  %.sink24.i.i.i.i.ph = phi i64 [ %112, %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i.i ], [ 0, %for.body.lr.ph.split.i.i.i.i.i.i.i ]
  %tmp.i63.i.i.i.i.i.i.i.i.i = mul i64 %.sink24.i.i.i.i.ph, %.fca.0.extract.i.i244.i.i.i.i.i.i
  %tmp.i63.i.i189.i.i.i.i.i.i.i = mul i64 %.sink24.i.i.i.i.ph, %.fca.0.extract.i.i188.i.i.i.i.i.i.i
  br label %yield.new6.us.i400.i.i.i.i.i.i.i

"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i.i, %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i.i, %yield.new6.us.i272.i.i.i.i.i.i.i, %if.false2.i.i.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %.fca.0.extract.i.i244.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 0
  %.fca.1.extract.i.i245.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i.i, 1
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, label %if.true1.i.i267.i.i.i.i.i [
    i64 0, label %while.body.i.preheader.i.i.i.i.i.i
    i64 1, label %if.exit3.i.i246.i.i.i.i.i
  ]

while.body.i.preheader.i.i.i.i.i.i:               ; preds = %if.exit13.i32.i279.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i", %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.i.i.i.i", %if.exit3.i.i246.i.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i", %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i.thread"
  %.fca.1.extract.i.i245.i.i.i.i.i238 = phi i64 [ %.fca.1.extract.i.i245.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.i.i.i.i" ], [ %.fca.1.extract.i.i245.i.i.i.i.i, %if.exit3.i.i246.i.i.i.i.i ], [ %.fca.1.extract.i.i245.i.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i" ], [ %.fca.1.extract.i.i245.i.i.i.i.i, %if.exit13.i32.i279.i.i.i.i.i ], [ %.fca.1.extract.i.i245.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i" ], [ %.fca.1.extract.i.i245.i.i.i.i.i229, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i.thread" ]
  %.fca.0.extract.i.i244.i.i.i.i.i232 = phi i64 [ %.fca.0.extract.i.i244.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.i.i.i.i" ], [ %.fca.0.extract.i.i244.i.i.i.i.i, %if.exit3.i.i246.i.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i" ], [ %.fca.0.extract.i.i244.i.i.i.i.i230248, %if.exit13.i32.i279.i.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i" ], [ %.fca.0.extract.i.i244.i.i.i.i.i228, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i.thread" ]
  %.sroa.7208.0.i.i.i.i.i = phi ptr [ @.str.130, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.i.i.i.i" ], [ @.str.130, %if.exit3.i.i246.i.i.i.i.i ], [ @.str.130, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i" ], [ @.str.131, %if.exit13.i32.i279.i.i.i.i.i ], [ @.str.130, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i" ], [ @.str.130, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i.thread" ]
  %.not.i241.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.i.i.i.i.i)
  %.not.i241.c.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.c.i.i.i.i.i)
  %113 = load i8, ptr %.sroa.7208.0.i.i.i.i.i, align 1
  switch i8 %113, label %"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i" [
    i8 70, label %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i"
    i8 67, label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i"
  ]

"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i": ; preds = %while.body.i.preheader.i.i.i.i.i.i
  br label %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i"

"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i.i
  %common.ret.op.i4564.i.i.i.i.i.i = phi i8 [ 1, %while.body.i.preheader.i.i.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1175.exit57.thread.fold.split.i.i.i.i.i.i" ]
  br label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i"

"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i.i
  %common.ret.op.i4563.i.i.i.i.i.i = phi i8 [ %common.ret.op.i4564.i.i.i.i.i.i, %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i" ], [ 0, %while.body.i.preheader.i.i.i.i.i.i ]
  %114 = phi i8 [ %common.ret.op.i4564.i.i.i.i.i.i, %"str:str.__eq__:0[str,str].1175.exit57.thread.i.i.i.i.i.i" ], [ 1, %while.body.i.preheader.i.i.i.i.i.i ]
  %.not41.i.i.i.i.i.i = icmp eq i8 %114, 1
  tail call void @llvm.assume(i1 %.not41.i.i.i.i.i.i)
  %tmp.i.1.i.i.i.i.i.i37.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  %115 = mul i64 %tmp.i.1.i.i.i.i.i.i37.i, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  %116 = tail call ptr @seq_alloc_atomic(i64 %115)
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i4563.i.i.i.i.i.i, 0
  %tmp.i31.us.i.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  %.sroa.4.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 8, i64 %tmp.i.1.i.i.i.i.i.i37.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 %tmp.i31.us.i.i.i.i.i.i.i.i, i64 8
  br label %if.exit.i.i.i.i.i.i.i

if.true1.i.i267.i.i.i.i.i:                        ; preds = %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i"
  %tmp.i106.not.i.i268.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i, 8
  %spec.select.i.i269.i.i.i.i.i = zext i1 %tmp.i106.not.i.i268.i.i.i.i.i to i8
  %tmp.i108.i.i270.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  br label %if.exit3.i.i246.i.i.i.i.i

if.exit3.i.i246.i.i.i.i.i:                        ; preds = %if.true1.i.i267.i.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i"
  %.194.i.i247.i.i.i.i.i = phi i64 [ %tmp.i108.i.i270.i.i.i.i.i, %if.true1.i.i267.i.i.i.i.i ], [ 8, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i" ]
  %.1.i.i248.i.i.i.i.i = phi i8 [ %spec.select.i.i269.i.i.i.i.i, %if.true1.i.i267.i.i.i.i.i ], [ 1, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1824.exit.i" ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.i.i.i.i" [
    i64 0, label %while.body.i.preheader.i.i.i.i.i.i
    i64 1, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i"
  ]

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.i.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i.i
  %tmp.i106.not.1.i.i262.i.i.i.i.i = icmp ne i64 %.fca.0.extract.i.i244.i.i.i.i.i, %.194.i.i247.i.i.i.i.i
  %.not.i.i258.not.i29.i.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i.i, 0
  %.not.i.i258.not.i.i.i.i.i = or i1 %tmp.i106.not.1.i.i262.i.i.i.i.i, %.not.i.i258.not.i29.i.i.i.i
  br i1 %.not.i.i258.not.i.i.i.i.i, label %if.true11.i.i291.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i.i
  %.not.i.i258.not.i26.i.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i.i, 0
  br i1 %.not.i.i258.not.i26.i.i.i.i, label %if.exit13.i32.i279.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i

if.true11.i.i291.i.i.i.i.i:                       ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.i.i.i.i"
  %tmp.i111.not.i45.i294.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i, 8
  br i1 %tmp.i111.not.i45.i294.i.i.i.i.i, label %if.exit16.i46.i295.i.i.i.i.i, label %if.false11.i.i.i.i.i

if.exit13.i32.i279.i.i.i.i.i:                     ; preds = %if.exit16.i46.i295.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i"
  %.fca.0.extract.i.i244.i.i.i.i.i230248 = phi i64 [ 8, %if.exit16.i46.i295.i.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i" ]
  %.196.i34.i281.i.i.i.i.i = phi i64 [ %tmp.i113.i47.i296.i.i.i.i.i, %if.exit16.i46.i295.i.i.i.i.i ], [ 8, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].1831.exit271.i.thread.i.i.i.i" ]
  %tmp.i109.not.1.i35.i282.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %tmp.i111.not.1.i36.i283.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i, %.196.i34.i281.i.i.i.i.i
  %or.cond.i37.i284.i.i.i.i.i = or i1 %tmp.i109.not.1.i35.i282.i.i.i.i.i, %tmp.i111.not.1.i36.i283.i.i.i.i.i
  br i1 %or.cond.i37.i284.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i, label %if.false11.i.i.i.i.i

if.exit16.i46.i295.i.i.i.i.i:                     ; preds = %if.true11.i.i291.i.i.i.i.i
  %tmp.i113.i47.i296.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  br label %if.exit13.i32.i279.i.i.i.i.i

if.false11.i.i.i.i.i:                             ; preds = %if.exit13.i32.i279.i.i.i.i.i, %if.true11.i.i291.i.i.i.i.i
  %.fca.0.extract.i.i244.i.i.i.i.i230247 = phi i64 [ %.fca.0.extract.i.i244.i.i.i.i.i230248, %if.exit13.i32.i279.i.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i.i, %if.true11.i.i291.i.i.i.i.i ]
  %.fca.1.gep.i.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %117 = tail call i64 @llvm.abs.i64(i64 %.fca.0.extract.i.i244.i.i.i.i.i230247, i1 false)
  %118 = tail call i64 @llvm.abs.i64(i64 %.fca.1.extract.i.i245.i.i.i.i.i, i1 false)
  %tmp.i72.not.i.not.i.i.i.i.i = icmp sge i64 %117, %118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %spec.select.i.i.i.i46.i = zext i1 %tmp.i72.not.i.not.i.i.i.i.i to i64
  %not.tmp.i72.not.i.not.i.i.i.i.i = xor i1 %tmp.i72.not.i.not.i.i.i.i.i, true
  %spec.select352.i.i.i.i.i = zext i1 %not.tmp.i72.not.i.not.i.i.i.i.i to i64
  %t.fca.1.gep.i.i.i.i310.i.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %x.i.i.i.i304.i.i.i.i.i, i64 0, i32 1
  %119 = getelementptr i64, ptr %3, i64 %spec.select.i.i.i.i46.i
  store i64 8, ptr %119, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i.i)
  store i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, ptr %x.i.i.i.i304.i.i.i.i.i, align 8
  store i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, ptr %t.fca.1.gep.i.i.i.i310.i.i.i.i.i, align 8
  %p.i.i.i.i311.i.i.i.i.i = getelementptr i64, ptr %x.i.i.i.i304.i.i.i.i.i, i64 %spec.select.i.i.i.i46.i
  %v.i.i.i.i312.i.i.i.i.i = load i64, ptr %p.i.i.i.i311.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i.i)
  %tmp.i.i.i.i.i.i = shl i64 %v.i.i.i.i312.i.i.i.i.i, 3
  %120 = getelementptr i64, ptr %3, i64 %spec.select352.i.i.i.i.i
  store i64 %tmp.i.i.i.i.i.i, ptr %120, align 8
  %tmp.i.1.i.i.i.i.i47.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  %121 = mul i64 %tmp.i.1.i.i.i.i.i47.i, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  %122 = tail call ptr @seq_alloc_atomic(i64 %121)
  %.fca.0.load.i.i.i.i.i = load i64, ptr %3, align 8
  %.fca.1.load.i.i.i.i.i = load i64, ptr %.fca.1.gep.i.i.i.i.i, align 8
  br label %if.exit.i.i.i.i.i.i.i

if.exit.i.i.i.i.i.i.i:                            ; preds = %if.false11.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i"
  %.fca.1.extract.i.i245.i.i.i.i.i237 = phi i64 [ %.fca.1.extract.i.i245.i.i.i.i.i238, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i" ], [ %.fca.1.extract.i.i245.i.i.i.i.i, %if.false11.i.i.i.i.i ]
  %.fca.0.extract.i.i244.i.i.i.i.i231 = phi i64 [ %.fca.0.extract.i.i244.i.i.i.i.i232, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i" ], [ %.fca.0.extract.i.i244.i.i.i.i.i230247, %if.false11.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.pn.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i" ], [ %.fca.0.load.i.i.i.i.i, %if.false11.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.pn.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i" ], [ %.fca.1.load.i.i.i.i.i, %if.false11.i.i.i.i.i ]
  %.pn333.i.i.i.i.i = phi ptr [ %116, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].1766.exit.i.i.i.i.i" ], [ %122, %if.false11.i.i.i.i.i ]
  %.fca.0.insert.i.i.i.pn.i.i.i.i.i = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i.i.pn.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.pn.i.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.pn.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.pn.i.i.i.i.i, 1
  %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i = freeze { i64, i64 } %.fca.1.insert.i.i.i.pn.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, label %if.true1.i.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit131.i.i.i.i.i.i.i"
    i64 1, label %if.exit3.i.i.i.i.i.i.i.i
  ]

if.true1.i.i.i.i.i.i.i.i:                         ; preds = %if.exit.i.i.i.i.i.i.i
  %tmp.i106.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i237, 8
  %spec.select.i.i.i.i.i.i.i.i = zext i1 %tmp.i106.not.i.i.i.i.i.i.i.i to i8
  %tmp.i108.i.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  br label %if.exit3.i.i.i.i.i.i.i.i

if.exit3.i.i.i.i.i.i.i.i:                         ; preds = %if.true1.i.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i
  %.194.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i108.i.i.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i.i.i ], [ 8, %if.exit.i.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i.i ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, label %if.true11.i.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit131.i.i.i.i.i.i.i"
    i64 1, label %if.exit13.i.i.i.i.i.i.i.i
  ]

if.true11.i.i.i.i.i.i.i.i:                        ; preds = %if.exit3.i.i.i.i.i.i.i.i
  %tmp.i106.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i231, %.194.i.i.i.i.i.i.i.i
  %spec.select.1.i.i.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i.i.i.i.i.i.i.i, i8 %.1.i.i.i.i.i.i.i.i, i8 0
  %tmp.i111.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i231, 8
  br i1 %tmp.i111.not.i.i.i.i.i.i.i.i, label %if.exit16.i.i.i.i.i.i.i.i, label %if.true14.i.i.i.i.i.i.i.i

if.exit13.i.i.i.i.i.i.i.i:                        ; preds = %if.exit16.i.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i
  %.1.1127.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i ]
  %.196.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i113.i.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i.i ], [ 8, %if.exit3.i.i.i.i.i.i.i.i ]
  %tmp.i109.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %tmp.i111.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i237, %.196.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i43.i = or i1 %tmp.i109.not.1.i.i.i.i.i.i.i.i, %tmp.i111.not.1.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i43.i, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i", label %if.true14.i.i.i.i.i.i.i.i

if.true14.i.i.i.i.i.i.i.i:                        ; preds = %if.exit13.i.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i.i
  %.1.1126.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i ]
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i"

if.exit16.i.i.i.i.i.i.i.i:                        ; preds = %if.true11.i.i.i.i.i.i.i.i
  %tmp.i113.i.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  br label %if.exit13.i.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i": ; preds = %if.true14.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i
  %.1.1127.i.i.pn.i.i.i.i.i.i = phi i8 [ %.1.1126.i.i.i.i.i.i.i.i, %if.true14.i.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i ]
  %.pn203.i.i.i.i.i.i = phi i8 [ 0, %if.true14.i.i.i.i.i.i.i.i ], [ 1, %if.exit13.i.i.i.i.i.i.i.i ]
  %.fca.1.extract.i107.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  %cond.i.i.i.i.i.i44.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %tmp.i106.not.i128.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i.i, 8
  %narrow.i.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i44.i, %tmp.i106.not.i128.i.i.i.i.i.i.i
  %.1.i110.i.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i.i.i to i8
  %cond.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 1
  br i1 %cond.i.i.i.i.i.i, label %if.exit13.i111.i.i.i.i.i.i.i, label %if.true11.i121.i.i.i.i.i.i.i

if.true11.i121.i.i.i.i.i.i.i:                     ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i"
  %tmp.i108.i130.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  %.fca.0.extract.i106.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %tmp.i106.not.1.i122.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i.i, %tmp.i108.i130.i.i.i.i.i.i.i
  %spec.select.1.i123.i.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i122.i.i.i.i.i.i.i, i8 %.1.i110.i.i.i.i.i.i.i, i8 0
  %tmp.i111.not.i124.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i.i, 8
  br i1 %tmp.i111.not.i124.i.i.i.i.i.i.i, label %if.exit16.i125.i.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i.i

if.exit13.i111.i.i.i.i.i.i.i:                     ; preds = %if.exit16.i125.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i"
  %.1.1127.i112.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i.i ], [ %.1.i110.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i" ]
  %.196.i113.i.i.i.i.i.i.i = phi i64 [ %tmp.i113.i126.i.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i.i ], [ 8, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i.i.i.i" ]
  %tmp.i111.not.1.i115.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i.i, %.196.i113.i.i.i.i.i.i.i
  %or.cond.i116.i.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i44.i, %tmp.i111.not.1.i115.i.i.i.i.i.i.i
  br i1 %or.cond.i116.i.i.i.i.i.i.i, label %if.exit13.1.i120.i.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i.i

if.exit13.1.i120.i.i.i.i.i.i.i:                   ; preds = %if.exit13.i111.i.i.i.i.i.i.i
  %123 = insertvalue { i8, i8 } undef, i8 %.1.1127.i112.i.i.i.i.i.i.i, 0
  %124 = insertvalue { i8, i8 } %123, i8 1, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit131.i.i.i.i.i.i.i"

if.true14.i117.i.i.i.i.i.i.i:                     ; preds = %if.exit13.i111.i.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i.i
  %.1.1126.i118.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i.i ], [ %.1.1127.i112.i.i.i.i.i.i.i, %if.exit13.i111.i.i.i.i.i.i.i ]
  %125 = insertvalue { i8, i8 } undef, i8 %.1.1126.i118.i.i.i.i.i.i.i, 0
  %126 = insertvalue { i8, i8 } %125, i8 0, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit131.i.i.i.i.i.i.i"

if.exit16.i125.i.i.i.i.i.i.i:                     ; preds = %if.true11.i121.i.i.i.i.i.i.i
  %tmp.i113.i126.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  br label %if.exit13.i111.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit131.i.i.i.i.i.i.i": ; preds = %if.true14.i117.i.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i
  %.fca.0.extract21137.i.i.i.i.i.i.i = phi i8 [ %.1.1127.i.i.pn.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i ], [ %.1.1127.i.i.pn.i.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i.i ], [ 1, %if.exit3.i.i.i.i.i.i.i.i ]
  %common.ret.op.i136.i.i.i.i.i.i.i = phi i8 [ %.pn203.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i ], [ %.pn203.i.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i.i ], [ 1, %if.exit3.i.i.i.i.i.i.i.i ]
  %common.ret.op.i119.i.i.i.i.i.i.i = phi { i8, i8 } [ %124, %if.exit13.1.i120.i.i.i.i.i.i.i ], [ %126, %if.true14.i117.i.i.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit.i.i.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit3.i.i.i.i.i.i.i.i ]
  %.fca.0.extract.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i.i, 0
  %.not102.i.i.i.i.i.i.i = icmp eq i8 %.fca.0.extract21137.i.i.i.i.i.i.i, 0
  %127 = and i8 %.fca.0.extract.i.i.i.i.i.i.i, 1
  %128 = icmp eq i8 %127, 0
  %.not208.i.i.i.i.i.i = select i1 %.not102.i.i.i.i.i.i.i, i1 true, i1 %128
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i.i, 1
  %.not103.i.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i136.i.i.i.i.i.i.i, 0
  %129 = and i8 %.fca.1.extract.i.i.i.i.i.i.i, 1
  %.not205206.i.i.i.i.i.i = icmp eq i8 %129, 0
  %.not205.i.i.i.i.i.i = select i1 %.not103.i.i.i.i.i.i.i, i1 true, i1 %.not205206.i.i.i.i.i.i
  %.not.i.i.i.i.i45.i = select i1 %.not208.i.i.i.i.i.i, i1 %.not205.i.i.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i.i45.i, label %if.false2.i.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i.i19

imp_for.cond.preheader.i.i.i.i.i.i19:             ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit131.i.i.i.i.i.i.i"
  %.not177209.i.i.i.i.i.i = icmp sgt i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not177209.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i.i.preheader, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i"

imp_for.body.i.i.i.i.i.i.preheader:               ; preds = %imp_for.cond.preheader.i.i.i.i.i.i19
  %min.iters.check89 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check89, label %imp_for.body.i.i.i.i.i.i.preheader304, label %vector.ph90

vector.ph90:                                      ; preds = %imp_for.body.i.i.i.i.i.i.preheader
  %n.vec92 = and i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, -2
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph90
  %index96 = phi i64 [ 0, %vector.ph90 ], [ %index.next97, %vector.body95 ]
  %130 = or i64 %index96, 1
  %131 = getelementptr double, ptr %.pn333.i.i.i.i.i.i, i64 %index96
  %132 = getelementptr double, ptr %.pn333.i.i.i.i.i.i, i64 %130
  %133 = load double, ptr %131, align 8
  %134 = load double, ptr %132, align 8
  %135 = fmul double %133, %133
  %136 = fmul double %134, %134
  %137 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %index96
  %138 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %130
  store double %135, ptr %137, align 8
  store double %136, ptr %138, align 8
  %index.next97 = add nuw i64 %index96, 2
  %139 = icmp eq i64 %index.next97, %n.vec92
  br i1 %139, label %middle.block87, label %vector.body95, !llvm.loop !6

middle.block87:                                   ; preds = %vector.body95
  %cmp.n94 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, %n.vec92
  br i1 %cmp.n94, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", label %imp_for.body.i.i.i.i.i.i.preheader304

imp_for.body.i.i.i.i.i.i.preheader304:            ; preds = %middle.block87, %imp_for.body.i.i.i.i.i.i.preheader
  %.ph305 = phi i64 [ %n.vec92, %middle.block87 ], [ 0, %imp_for.body.i.i.i.i.i.i.preheader ]
  br label %imp_for.body.i.i.i.i.i.i

if.false2.i.i.i.i.i.i:                            ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit131.i.i.i.i.i.i.i"
  %.not27.i.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 0
  %.not2526.i.i.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %.not27.i.i.i.i.i.i.i, %.not2526.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i"

for.body.lr.ph.i.i.i.i.i.i:                       ; preds = %if.false2.i.i.i.i.i.i
  %tmp.i.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 1
  %tmp.i.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %.fca.1.extract.i.i183.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  %.fca.0.extract.i.i185.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %140 = load double, ptr %.pn333.i.i.i.i.i.i, align 8
  %tmp.i.i193.us.i.i.peel.i.i.i.i = fmul double %140, %140
  store double %tmp.i.i193.us.i.i.peel.i.i.i.i, ptr %.pn333.i.i.i.i.i, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i.i, label %yield.new6.us.i274.i.i.peel.i.i.i.i, label %for.body.lr.ph.split.i.i.i.i.i.i

yield.new6.us.i274.i.i.peel.i.i.i.i:              ; preds = %for.body.lr.ph.i.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread", label %yield.new6.us.i274.i.i.i.i.i.i.preheader

yield.new6.us.i274.i.i.i.i.i.i.preheader:         ; preds = %yield.new6.us.i274.i.i.peel.i.i.i.i
  %141 = add nsw i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, -1
  %min.iters.check116 = icmp ugt i64 %141, 1
  %ident.check113.not = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i237, 1
  %or.cond = and i1 %min.iters.check116, %ident.check113.not
  br i1 %or.cond, label %vector.ph117, label %yield.new6.us.i274.i.i.i.i.i.i.preheader298

vector.ph117:                                     ; preds = %yield.new6.us.i274.i.i.i.i.i.i.preheader
  %n.vec119 = and i64 %141, -2
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph117
  %index124 = phi i64 [ 0, %vector.ph117 ], [ %142, %vector.body123 ]
  %offset.idx125 = or i64 %index124, 1
  %142 = add i64 %index124, 2
  %143 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %offset.idx125
  %144 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %142
  %145 = mul i64 %offset.idx125, %.fca.1.extract.i.i183.i.i.i.i.i.i
  %146 = mul i64 %142, %.fca.1.extract.i.i183.i.i.i.i.i.i
  %147 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %145
  %148 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %146
  %149 = load double, ptr %143, align 8
  %150 = load double, ptr %144, align 8
  %151 = fmul double %149, %149
  %152 = fmul double %150, %150
  store double %151, ptr %147, align 8
  store double %152, ptr %148, align 8
  %153 = icmp eq i64 %142, %n.vec119
  br i1 %153, label %middle.block114, label %vector.body123, !llvm.loop !7

middle.block114:                                  ; preds = %vector.body123
  %ind.end120 = or i64 %141, 1
  %cmp.n122 = icmp eq i64 %141, %n.vec119
  br i1 %cmp.n122, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", label %yield.new6.us.i274.i.i.i.i.i.i.preheader298

yield.new6.us.i274.i.i.i.i.i.i.preheader298:      ; preds = %middle.block114, %yield.new6.us.i274.i.i.i.i.i.i.preheader
  %.sink104.i.i.i.i.ph = phi i64 [ %ind.end120, %middle.block114 ], [ 1, %yield.new6.us.i274.i.i.i.i.i.i.preheader ]
  br label %yield.new6.us.i274.i.i.i.i.i.i

yield.new6.us.i274.i.i.i.i.i.i:                   ; preds = %yield.new6.us.i274.i.i.i.i.i.i, %yield.new6.us.i274.i.i.i.i.i.i.preheader298
  %.sink104.i.i.i.i = phi i64 [ %157, %yield.new6.us.i274.i.i.i.i.i.i ], [ %.sink104.i.i.i.i.ph, %yield.new6.us.i274.i.i.i.i.i.i.preheader298 ]
  %tmp.i63.1.i.i.us.i.i.i.i.i.i = mul i64 %.sink104.i.i.i.i, %.fca.1.extract.i.i245.i.i.i.i.i237
  %154 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %tmp.i63.1.i.i.us.i.i.i.i.i.i
  %tmp.i63.1.i.i189.us.i.i.i.i.i.i = mul i64 %.sink104.i.i.i.i, %.fca.1.extract.i.i183.i.i.i.i.i.i
  %155 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %tmp.i63.1.i.i189.us.i.i.i.i.i.i
  %156 = load double, ptr %154, align 8
  %tmp.i.i193.us.i.i.i.i.i.i = fmul double %156, %156
  store double %tmp.i.i193.us.i.i.i.i.i.i, ptr %155, align 8
  %157 = add nuw nsw i64 %.sink104.i.i.i.i, 1
  %exitcond.not.i279.i.i.i.i.i.i = icmp eq i64 %157, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  br i1 %exitcond.not.i279.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", label %yield.new6.us.i274.i.i.i.i.i.i, !llvm.loop !8

for.body.lr.ph.split.i.i.i.i.i.i:                 ; preds = %for.body.lr.ph.i.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i.i, label %yield.new6.us.i466.i.i.i.i.i.i.outer.preheader

yield.new6.us.i466.i.i.i.i.i.i.outer.preheader:   ; preds = %for.body.lr.ph.split.i.i.i.i.i.i
  %ident.check284 = icmp ne i64 %.fca.1.extract.i.i245.i.i.i.i.i237, 1
  %ident.check285 = icmp ne i64 %.fca.1.extract.i.i183.i.i.i.i.i.i, 1
  %158 = or i1 %ident.check284, %ident.check285
  br label %yield.new6.us.i466.i.i.i.i.i.i.outer

imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i.i: ; preds = %for.body.lr.ph.split.i.i.i.i.i.i
  %159 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %.fca.0.extract.i.i244.i.i.i.i.i231
  %160 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %.fca.0.extract.i.i185.i.i.i.i.i.i
  %161 = load double, ptr %159, align 8
  %tmp.i.i193.us222.i.i.i21.i.i.i = fmul double %161, %161
  store double %tmp.i.i193.us222.i.i.i21.i.i.i, ptr %160, align 8
  %exitcond29.not.i353.i.i.i22.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 2
  br i1 %exitcond29.not.i353.i.i.i22.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread", label %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader"

"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i.i
  %162 = add nsw i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, -2
  %min.iters.check101 = icmp ult i64 %162, 2
  br i1 %min.iters.check101, label %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader299", label %vector.scevcheck

vector.scevcheck:                                 ; preds = %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader"
  %ident.check = icmp ne i64 %.fca.0.extract.i.i244.i.i.i.i.i231, 1
  %ident.check98 = icmp ne i64 %.fca.0.extract.i.i185.i.i.i.i.i.i, 1
  %163 = or i1 %ident.check, %ident.check98
  br i1 %163, label %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader299", label %vector.ph102

vector.ph102:                                     ; preds = %vector.scevcheck
  %n.vec104 = and i64 %162, -2
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph102
  %index109 = phi i64 [ 0, %vector.ph102 ], [ %offset.idx110, %vector.body108 ]
  %offset.idx110 = add i64 %index109, 2
  %164 = add i64 %index109, 3
  %165 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %offset.idx110
  %166 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %164
  %167 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %offset.idx110
  %168 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %164
  %169 = load double, ptr %165, align 8
  %170 = load double, ptr %166, align 8
  %171 = fmul double %169, %169
  %172 = fmul double %170, %170
  store double %171, ptr %167, align 8
  store double %172, ptr %168, align 8
  %173 = icmp eq i64 %offset.idx110, %n.vec104
  br i1 %173, label %middle.block99, label %vector.body108, !llvm.loop !9

middle.block99:                                   ; preds = %vector.body108
  %ind.end105 = add nuw nsw i64 %n.vec104, 2
  %cmp.n107 = icmp eq i64 %162, %n.vec104
  br i1 %cmp.n107, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", label %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader299"

"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader299": ; preds = %middle.block99, %vector.scevcheck, %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader"
  %.ph300 = phi i64 [ %ind.end105, %middle.block99 ], [ 2, %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader" ], [ 2, %vector.scevcheck ]
  br label %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i"

"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i": ; preds = %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i", %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader299"
  %174 = phi i64 [ %178, %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i" ], [ %.ph300, %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i.preheader299" ]
  %tmp.i63.i.i.us213.i.i.i.i.i.i = mul i64 %174, %.fca.0.extract.i.i244.i.i.i.i.i231
  %175 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %tmp.i63.i.i.us213.i.i.i.i.i.i
  %tmp.i63.i.i186.us217.i.i.i.i.i.i = mul i64 %174, %.fca.0.extract.i.i185.i.i.i.i.i.i
  %176 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %tmp.i63.i.i186.us217.i.i.i.i.i.i
  %177 = load double, ptr %175, align 8
  %tmp.i.i193.us222.i.i.i.i.i.i = fmul double %177, %177
  store double %tmp.i.i193.us222.i.i.i.i.i.i, ptr %176, align 8
  %178 = add nuw nsw i64 %174, 1
  %exitcond29.not.i353.i.i.i.i.i.i = icmp eq i64 %178, %.fca.0.extract38.i.i242.i.i.i.i.i.i
  br i1 %exitcond29.not.i353.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", label %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i", !llvm.loop !10

imp_for.body.i.i.i.i.i.i:                         ; preds = %imp_for.body.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i.preheader304
  %179 = phi i64 [ %183, %imp_for.body.i.i.i.i.i.i ], [ %.ph305, %imp_for.body.i.i.i.i.i.i.preheader304 ]
  %180 = getelementptr double, ptr %.pn333.i.i.i.i.i.i, i64 %179
  %181 = load double, ptr %180, align 8
  %tmp.i.i.i.i.i.i.i.i20 = fmul double %181, %181
  %182 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %179
  store double %tmp.i.i.i.i.i.i.i.i20, ptr %182, align 8
  %183 = add nuw nsw i64 %179, 1
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %183, %tmp.i.1.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", label %imp_for.body.i.i.i.i.i.i, !llvm.loop !11

yield.new6.us.i466.i.i.i.i.i.i:                   ; preds = %yield.new6.us.i466.i.i.i.i.i.i.preheader, %yield.new6.us.i466.i.i.i.i.i.i
  %.reload48.i468.i.i.i.i.i.i = phi i64 [ %187, %yield.new6.us.i466.i.i.i.i.i.i ], [ %.reload48.i468.i.i.i.i.i.i.ph302, %yield.new6.us.i466.i.i.i.i.i.i.preheader ]
  %tmp.i63.1.i.i.i.i.i.i.i.i = mul i64 %.reload48.i468.i.i.i.i.i.i, %.fca.1.extract.i.i245.i.i.i.i.i237
  %.1.1.i.i.i.i.i.i.i.i = add i64 %tmp.i63.1.i.i.i.i.i.i.i.i, %tmp.i63.i.i.i.i.i.i.i.i
  %184 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %.1.1.i.i.i.i.i.i.i.i
  %tmp.i63.1.i.i189.i.i.i.i.i.i = mul i64 %.reload48.i468.i.i.i.i.i.i, %.fca.1.extract.i.i183.i.i.i.i.i.i
  %.1.1.i.i191.i.i.i.i.i.i = add i64 %tmp.i63.1.i.i189.i.i.i.i.i.i, %tmp.i63.i.i186.i.i.i.i.i.i
  %185 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %.1.1.i.i191.i.i.i.i.i.i
  %186 = load double, ptr %184, align 8
  %tmp.i.i193.i.i.i.i.i.i = fmul double %186, %186
  store double %tmp.i.i193.i.i.i.i.i.i, ptr %185, align 8
  %187 = add nuw nsw i64 %.reload48.i468.i.i.i.i.i.i, 1
  %exitcond.not.i471.i.i.i.i.i.i = icmp eq i64 %187, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  br i1 %exitcond.not.i471.i.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i.i, label %yield.new6.us.i466.i.i.i.i.i.i, !llvm.loop !12

imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i.i: ; preds = %middle.block286, %yield.new6.us.i466.i.i.i.i.i.i
  %188 = add nuw nsw i64 %.reload45.i473.i.i.i.i.i.i.ph, 1
  %exitcond29.not.i481.i.i.i.i.i.i = icmp eq i64 %188, %.fca.0.extract38.i.i242.i.i.i.i.i.i
  br i1 %exitcond29.not.i481.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", label %yield.new6.us.i466.i.i.i.i.i.i.outer

yield.new6.us.i466.i.i.i.i.i.i.outer:             ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i.i, %yield.new6.us.i466.i.i.i.i.i.i.outer.preheader
  %.reload45.i473.i.i.i.i.i.i.ph = phi i64 [ %188, %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i.i ], [ 0, %yield.new6.us.i466.i.i.i.i.i.i.outer.preheader ]
  %.reload48.i468.i.i.i.i.i.i.ph = phi i64 [ 0, %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i.i ], [ 1, %yield.new6.us.i466.i.i.i.i.i.i.outer.preheader ]
  %tmp.i63.i.i.i.i.i.i.i.i = mul i64 %.reload45.i473.i.i.i.i.i.i.ph, %.fca.0.extract.i.i244.i.i.i.i.i231
  %tmp.i63.i.i186.i.i.i.i.i.i = mul i64 %.reload45.i473.i.i.i.i.i.i.ph, %.fca.0.extract.i.i185.i.i.i.i.i.i
  %189 = sub i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, %.reload48.i468.i.i.i.i.i.i.ph
  %min.iters.check287 = icmp ult i64 %189, 2
  %brmerge = or i1 %min.iters.check287, %158
  br i1 %brmerge, label %yield.new6.us.i466.i.i.i.i.i.i.preheader, label %vector.ph288

vector.ph288:                                     ; preds = %yield.new6.us.i466.i.i.i.i.i.i.outer
  %n.vec289 = and i64 %189, -2
  %ind.end290 = or i64 %.reload48.i468.i.i.i.i.i.i.ph, %n.vec289
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph288
  %index293 = phi i64 [ 0, %vector.ph288 ], [ %index.next295, %vector.body292 ]
  %offset.idx294 = or i64 %.reload48.i468.i.i.i.i.i.i.ph, %index293
  %190 = add i64 %offset.idx294, 1
  %191 = add i64 %offset.idx294, %tmp.i63.i.i.i.i.i.i.i.i
  %192 = add i64 %190, %tmp.i63.i.i.i.i.i.i.i.i
  %193 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %191
  %194 = getelementptr i8, ptr %.pn333.i.i.i.i.i.i, i64 %192
  %195 = add i64 %offset.idx294, %tmp.i63.i.i186.i.i.i.i.i.i
  %196 = add i64 %190, %tmp.i63.i.i186.i.i.i.i.i.i
  %197 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %195
  %198 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %196
  %199 = load double, ptr %193, align 8
  %200 = load double, ptr %194, align 8
  %201 = fmul double %199, %199
  %202 = fmul double %200, %200
  store double %201, ptr %197, align 8
  store double %202, ptr %198, align 8
  %index.next295 = add nuw i64 %index293, 2
  %203 = icmp eq i64 %index.next295, %n.vec289
  br i1 %203, label %middle.block286, label %vector.body292, !llvm.loop !13

middle.block286:                                  ; preds = %vector.body292
  %cmp.n291 = icmp eq i64 %189, %n.vec289
  br i1 %cmp.n291, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i.i, label %yield.new6.us.i466.i.i.i.i.i.i.preheader

yield.new6.us.i466.i.i.i.i.i.i.preheader:         ; preds = %middle.block286, %yield.new6.us.i466.i.i.i.i.i.i.outer
  %.reload48.i468.i.i.i.i.i.i.ph302 = phi i64 [ %.reload48.i468.i.i.i.i.i.i.ph, %yield.new6.us.i466.i.i.i.i.i.i.outer ], [ %ind.end290, %middle.block286 ]
  br label %yield.new6.us.i466.i.i.i.i.i.i

"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i.i, %yield.new6.us.i274.i.i.peel.i.i.i.i
  %204 = shl i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, 3
  %205 = tail call ptr @seq_alloc_atomic(i64 %204)
  %.fca.0.extract.i.i.i.i.i255 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i.i256 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  br label %if.exit3.i.i.i.i.i

"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i, %"std.numpy.util.multirange:0[Tuple[int,int]].1480.resume.exit365.i.i.i.i.i.i", %middle.block99, %yield.new6.us.i274.i.i.i.i.i.i, %middle.block114, %if.false2.i.i.i.i.i.i, %middle.block87, %imp_for.cond.preheader.i.i.i.i.i.i19
  %206 = shl i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, 3
  %207 = tail call ptr @seq_alloc_atomic(i64 %206)
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %.fca.1.extract.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, label %if.true1.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i"
    i64 1, label %if.exit3.i.i.i.i.i
  ]

if.true1.i.i.i.i.i:                               ; preds = %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i"
  %tmp.i106.not.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i.i.i.i, 8
  %spec.select.i.i.i.i.i = zext i1 %tmp.i106.not.i.i.i.i.i to i8
  %tmp.i108.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  br label %if.exit3.i.i.i.i.i

if.exit3.i.i.i.i.i:                               ; preds = %if.true1.i.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i", %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread"
  %.fca.1.extract.i.i.i.i.i259 = phi i64 [ %.fca.1.extract.i.i.i.i.i, %if.true1.i.i.i.i.i ], [ %.fca.1.extract.i.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ], [ %.fca.1.extract.i.i.i.i.i256, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread" ]
  %.fca.0.extract.i.i.i.i.i257 = phi i64 [ %.fca.0.extract.i.i.i.i.i, %if.true1.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ], [ %.fca.0.extract.i.i.i.i.i255, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread" ]
  %208 = phi ptr [ %207, %if.true1.i.i.i.i.i ], [ %207, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ], [ %205, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread" ]
  %.194.i.i.i.i.i = phi i64 [ %tmp.i108.i.i.i.i.i, %if.true1.i.i.i.i.i ], [ 8, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ], [ 8, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread" ]
  %.1.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i, %if.true1.i.i.i.i.i ], [ 1, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ], [ 1, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i.thread" ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, label %if.true11.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i"
    i64 1, label %if.exit13.i.i.i.i.i
  ]

if.true11.i.i.i.i.i:                              ; preds = %if.exit3.i.i.i.i.i
  %tmp.i106.not.1.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i257, %.194.i.i.i.i.i
  %spec.select.1.i.i.i.i.i = select i1 %tmp.i106.not.1.i.i.i.i.i, i8 %.1.i.i.i.i.i, i8 0
  %tmp.i111.not.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i.i257, 8
  br i1 %tmp.i111.not.i.i.i.i.i, label %if.exit16.i.i.i.i.i, label %if.true14.i.i.i.i.i

if.exit13.i.i.i.i.i:                              ; preds = %if.exit16.i.i.i.i.i, %if.exit3.i.i.i.i.i
  %.1.1127.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i, %if.exit16.i.i.i.i.i ], [ %.1.i.i.i.i.i, %if.exit3.i.i.i.i.i ]
  %.196.i.i.i.i.i = phi i64 [ %tmp.i113.i.i.i.i.i, %if.exit16.i.i.i.i.i ], [ 8, %if.exit3.i.i.i.i.i ]
  %tmp.i109.not.1.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 1
  %tmp.i111.not.1.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i.i.i.i259, %.196.i.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %tmp.i109.not.1.i.i.i.i.i, %tmp.i111.not.1.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %if.exit13.1.i.i.i.i.i, label %if.true14.i.i.i.i.i

if.exit13.1.i.i.i.i.i:                            ; preds = %if.exit13.i.i.i.i.i
  %209 = insertvalue { i8, i8 } undef, i8 %.1.1127.i.i.i.i.i, 0
  %210 = insertvalue { i8, i8 } %209, i8 1, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i"

if.true14.i.i.i.i.i:                              ; preds = %if.exit13.i.i.i.i.i, %if.true11.i.i.i.i.i
  %.1.1126.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i, %if.true11.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i, %if.exit13.i.i.i.i.i ]
  %211 = insertvalue { i8, i8 } undef, i8 %.1.1126.i.i.i.i.i, 0
  %212 = insertvalue { i8, i8 } %211, i8 0, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i"

if.exit16.i.i.i.i.i:                              ; preds = %if.true11.i.i.i.i.i
  %tmp.i113.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  br label %if.exit13.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i": ; preds = %if.true14.i.i.i.i.i, %if.exit13.1.i.i.i.i.i, %if.exit3.i.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i"
  %.fca.1.extract.i.i.i.i.i260 = phi i64 [ %.fca.1.extract.i.i.i.i.i259, %if.exit13.1.i.i.i.i.i ], [ %.fca.1.extract.i.i.i.i.i259, %if.true14.i.i.i.i.i ], [ %.fca.1.extract.i.i.i.i.i259, %if.exit3.i.i.i.i.i ], [ %.fca.1.extract.i.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ]
  %.fca.0.extract.i.i.i.i.i258 = phi i64 [ %.fca.0.extract.i.i.i.i.i257, %if.exit13.1.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i257, %if.true14.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i257, %if.exit3.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ]
  %213 = phi ptr [ %208, %if.exit13.1.i.i.i.i.i ], [ %208, %if.true14.i.i.i.i.i ], [ %208, %if.exit3.i.i.i.i.i ], [ %207, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ]
  %common.ret.op.i.i.i.i.i = phi { i8, i8 } [ %210, %if.exit13.1.i.i.i.i.i ], [ %212, %if.true14.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit3.i.i.i.i.i ], [ { i8 1, i8 1 }, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].1859.exit.i" ]
  %.fca.0.extract48.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i, 0
  %.fca.1.extract49.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i.i, 1
  %214 = and i8 %.fca.1.extract49.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i8 %214, 0
  %215 = and i8 %.fca.0.extract48.i.i.i.i, 1
  %216 = xor i8 %215, 1
  %217 = select i1 %.not.i.i.i.i, i8 0, i8 %216
  %.fr33.i.i.i.i.i.i = freeze i8 %217
  %218 = and i8 %.fr33.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %218, 0
  %tmp.i31.us.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 3
  %tmp.i31.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 3
  %.sroa.4.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 8, i64 %tmp.i31.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %tmp.i31.us.i.i.i.i.i.i, i64 8
  %.not181.i.i.i.i = icmp ne i8 %215, 0
  %219 = icmp ne i8 %214, 0
  %220 = select i1 %.not181.i.i.i.i, i1 true, i1 %219
  br i1 %220, label %imp_for.cond.preheader.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i:                   ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i"
  %.not184193.i.i.i.i = icmp sgt i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not184193.i.i.i.i, label %imp_for.body.i.i.i.i.preheader, label %"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1923.exit"

imp_for.body.i.i.i.i.preheader:                   ; preds = %imp_for.cond.preheader.i.i.i.i
  %min.iters.check129 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check129, label %imp_for.body.i.i.i.i.preheader296, label %vector.ph130

vector.ph130:                                     ; preds = %imp_for.body.i.i.i.i.preheader
  %n.vec132 = and i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, -2
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph130
  %index136 = phi i64 [ 0, %vector.ph130 ], [ %index.next137, %vector.body135 ]
  %221 = or i64 %index136, 1
  %222 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %index136
  %223 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %221
  %224 = load double, ptr %222, align 8
  %225 = load double, ptr %223, align 8
  %226 = fmul double %tmp.i.i, %224
  %227 = fmul double %tmp.i.i, %225
  %228 = getelementptr double, ptr %213, i64 %index136
  %229 = getelementptr double, ptr %213, i64 %221
  store double %226, ptr %228, align 8
  store double %227, ptr %229, align 8
  %index.next137 = add nuw i64 %index136, 2
  %230 = icmp eq i64 %index.next137, %n.vec132
  br i1 %230, label %middle.block127, label %vector.body135, !llvm.loop !14

middle.block127:                                  ; preds = %vector.body135
  %cmp.n134 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i.i, %n.vec132
  br i1 %cmp.n134, label %"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1923.exit", label %imp_for.body.i.i.i.i.preheader296

imp_for.body.i.i.i.i.preheader296:                ; preds = %middle.block127, %imp_for.body.i.i.i.i.preheader
  %.ph = phi i64 [ %n.vec132, %middle.block127 ], [ 0, %imp_for.body.i.i.i.i.preheader ]
  br label %imp_for.body.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i:                 ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1474.exit.i.i.i.i"
  %.not27.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i.i, 0
  %.not2526.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i.i, 0
  %or.cond.i194.i.i.i.i = and i1 %.not27.i.i.i.i.i, %.not2526.i.i.i.i.i
  br i1 %or.cond.i194.i.i.i.i, label %for.body.i.i.i.i.outer, label %"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1923.exit"

imp_for.body.i.i.i.i:                             ; preds = %imp_for.body.i.i.i.i, %imp_for.body.i.i.i.i.preheader296
  %231 = phi i64 [ %235, %imp_for.body.i.i.i.i ], [ %.ph, %imp_for.body.i.i.i.i.preheader296 ]
  %232 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %231
  %233 = load double, ptr %232, align 8
  %tmp.i.i.i.i.i.i.i = fmul double %tmp.i.i, %233
  %234 = getelementptr double, ptr %213, i64 %231
  store double %tmp.i.i.i.i.i.i.i, ptr %234, align 8
  %235 = add nuw nsw i64 %231, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %235, %tmp.i.1.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1923.exit", label %imp_for.body.i.i.i.i, !llvm.loop !15

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.outer, %for.body.i.i.i.i
  %.sroa.9.1.i.i.i.i = phi i64 [ %239, %for.body.i.i.i.i ], [ 0, %for.body.i.i.i.i.outer ]
  %tmp.i.1.i.i188.i.i.i.i = mul i64 %.sroa.9.1.i.i.i.i, %.fca.1.extract.i.i.i.i.i260
  %tmp.i37.1.i.i.i.i.i.i = add i64 %tmp.i.1.i.i188.i.i.i.i, %tmp.i.i.i187.i.i.i.i
  %236 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %tmp.i37.1.i.i.i.i.i.i
  %tmp.i.1.i.i190.i.i.i.i = mul i64 %.sroa.9.1.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  %tmp.i37.1.i.i191.i.i.i.i = add i64 %tmp.i.1.i.i190.i.i.i.i, %tmp.i.i.i189.i.i.i.i
  %237 = getelementptr i8, ptr %213, i64 %tmp.i37.1.i.i191.i.i.i.i
  %238 = load double, ptr %236, align 8
  %tmp.i.i.i192.i.i.i.i = fmul double %tmp.i.i, %238
  store double %tmp.i.i.i192.i.i.i.i, ptr %237, align 8
  %239 = add nuw nsw i64 %.sroa.9.1.i.i.i.i, 1
  %exitcond.not.i204.i.i.i.i = icmp eq i64 %239, %.fca.1.extract40.i.i243.i.i.i.i.i.i
  br i1 %exitcond.not.i204.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i.i, label %for.body.i.i.i.i

imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i.i: ; preds = %for.body.i.i.i.i
  %240 = add nuw nsw i64 %.sroa.22.2.i.i.i.i.ph, 1
  %exitcond29.not.i214.i.i.i.i = icmp eq i64 %240, %.fca.0.extract38.i.i242.i.i.i.i.i.i
  br i1 %exitcond29.not.i214.i.i.i.i, label %"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1923.exit", label %for.body.i.i.i.i.outer

for.body.i.i.i.i.outer:                           ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i
  %.sroa.22.2.i.i.i.i.ph = phi i64 [ %240, %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i.i ]
  %tmp.i.i.i187.i.i.i.i = mul i64 %.sroa.22.2.i.i.i.i.ph, %.fca.0.extract.i.i.i.i.i258
  %tmp.i.i.i189.i.i.i.i = mul i64 %.sroa.22.2.i.i.i.i.ph, %.sroa.0.0.i.i.i.i.i.i
  br label %for.body.i.i.i.i

"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].1923.exit": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i.i, %imp_for.body.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i, %middle.block127, %imp_for.cond.preheader.i.i.i.i
  %.fca.0.insert.i.i.i.i.i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.i.i.i, 1
  %241 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %.fr.i.i, { i64, i64 } %.fca.1.insert.i.i.i.i.i.i, 1
  %242 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %241, ptr %213, 2
  ret { { i64, i64 }, { i64, i64 }, ptr } %242
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="seq_alloc" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") "alloc-family"="seq_alloc" }
attributes #3 = { mustprogress nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 2}
!2 = distinct !{!2, !3, !4}
!3 = !{!"llvm.loop.isvectorized", i32 1}
!4 = !{!"llvm.loop.unroll.runtime.disable"}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3, !4}
!7 = distinct !{!7, !3, !4}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3, !4}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3, !4}
!14 = distinct !{!14, !3, !4}
!15 = distinct !{!15, !3}
