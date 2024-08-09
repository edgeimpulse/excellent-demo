; ModuleID = 'sgram/sgram.ll'
source_filename = "/Users/arshajii/Documents/workspace/excellent-demo/sgram/sgram.py"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.6.0"

@.._import_datetime_246_done = private unnamed_addr global i1 false
@.._import_math_195_done = private unnamed_addr global i1 false
@.._import_numpy.fft.__init___1130_done = private unnamed_addr global i1 false
@.._import_numpy.fft.pocketfft_1125_done = private unnamed_addr global i1 false
@.._import_numpy.ndarray_373_done = private unnamed_addr global i1 false
@.._import_numpy.npdatetime_314_done = private unnamed_addr global i1 false
@.._import_numpy.routines_599_done = private unnamed_addr global i1 false
@.._import_numpy.util_332_done = private unnamed_addr global i1 false
@.._import_time_197_done = private unnamed_addr global i1 false
@.str.137 = hidden unnamed_addr constant [2 x i8] c"C\00"
@.str.138 = hidden unnamed_addr constant [2 x i8] c"F\00"

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef nonnull ptr @seq_alloc(i64) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc,uninitialized") allocsize(1)
declare noundef nonnull ptr @seq_realloc(ptr allocptr, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
define hidden fastcc { double, double } @"std.numpy.fft.pocketfft.sincos_2pibyn.calc:0[int,int,float].1796"(i64 %0, i64 %1, double %2) unnamed_addr #4 {
entry:
  %3 = shl i64 %0, 3
  %tmp.i = shl i64 %1, 2
  %tmp.i87.not = icmp sgt i64 %tmp.i, %3
  br i1 %tmp.i87.not, label %if.true, label %if.false

if.true:                                          ; preds = %entry
  %tmp.i88 = shl i64 %1, 1
  %tmp.i89.not = icmp sgt i64 %tmp.i88, %3
  br i1 %tmp.i89.not, label %if.true1, label %if.false2

if.false:                                         ; preds = %entry
  %4 = sub i64 %1, %0
  %tmp.i92 = shl i64 %4, 3
  %tmp.i93 = shl i64 %1, 1
  %tmp.i94.not = icmp sgt i64 %tmp.i93, %tmp.i92
  br i1 %tmp.i94.not, label %if.true13, label %if.false14

if.true1:                                         ; preds = %if.true
  %tmp.i96.not = icmp slt i64 %3, %1
  br i1 %tmp.i96.not, label %if.true4, label %if.false5

if.false2:                                        ; preds = %if.true
  %tmp.i99 = sub i64 %3, %tmp.i88
  %tmp.i100.not = icmp slt i64 %tmp.i99, %1
  br i1 %tmp.i100.not, label %if.true8, label %if.false9

common.ret:                                       ; preds = %if.false22, %if.true21, %if.false17, %if.true16, %if.false9, %if.true8, %if.false5, %if.true4
  %y.i.i124.pn = phi double [ %y.i.i124, %if.true4 ], [ %y.i.i127, %if.false5 ], [ %5, %if.true8 ], [ %6, %if.false9 ], [ %y.i.i136, %if.true16 ], [ %y.i.i139, %if.false17 ], [ %9, %if.true21 ], [ %11, %if.false22 ]
  %y.i.i125.pn = phi double [ %y.i.i125, %if.true4 ], [ %y.i.i128, %if.false5 ], [ %y.i.i131, %if.true8 ], [ %y.i.i134, %if.false9 ], [ %7, %if.true16 ], [ %8, %if.false17 ], [ %10, %if.true21 ], [ %12, %if.false22 ]
  %.pn = insertvalue { double, double } undef, double %y.i.i124.pn, 0
  %common.ret.op = insertvalue { double, double } %.pn, double %y.i.i125.pn, 1
  ret { double, double } %common.ret.op

if.true4:                                         ; preds = %if.true1
  %y.i.i = sitofp i64 %3 to double
  %tmp.i102 = fmul double %y.i.i, %2
  %y.i.i124 = tail call double @llvm.cos.f64(double %tmp.i102)
  %y.i.i125 = tail call double @llvm.sin.f64(double %tmp.i102)
  br label %common.ret

if.false5:                                        ; preds = %if.true1
  %tmp.i104 = sub i64 %tmp.i88, %3
  %y.i.i126 = sitofp i64 %tmp.i104 to double
  %tmp.i105 = fmul double %y.i.i126, %2
  %y.i.i127 = tail call double @llvm.sin.f64(double %tmp.i105)
  %y.i.i128 = tail call double @llvm.cos.f64(double %tmp.i105)
  br label %common.ret

if.true8:                                         ; preds = %if.false2
  %y.i.i129 = sitofp i64 %tmp.i99 to double
  %tmp.i106 = fmul double %y.i.i129, %2
  %y.i.i130 = tail call double @llvm.sin.f64(double %tmp.i106)
  %5 = fneg double %y.i.i130
  %y.i.i131 = tail call double @llvm.cos.f64(double %tmp.i106)
  br label %common.ret

if.false9:                                        ; preds = %if.false2
  %tmp.i108 = sub i64 %tmp.i88, %tmp.i99
  %y.i.i132 = sitofp i64 %tmp.i108 to double
  %tmp.i109 = fmul double %y.i.i132, %2
  %y.i.i133 = tail call double @llvm.cos.f64(double %tmp.i109)
  %6 = fneg double %y.i.i133
  %y.i.i134 = tail call double @llvm.sin.f64(double %tmp.i109)
  br label %common.ret

if.true13:                                        ; preds = %if.false
  %tmp.i110.not = icmp slt i64 %tmp.i92, %1
  br i1 %tmp.i110.not, label %if.true16, label %if.false17

if.false14:                                       ; preds = %if.false
  %tmp.i113 = sub i64 %tmp.i92, %tmp.i93
  %tmp.i114.not = icmp slt i64 %tmp.i113, %1
  br i1 %tmp.i114.not, label %if.true21, label %if.false22

if.true16:                                        ; preds = %if.true13
  %y.i.i135 = sitofp i64 %tmp.i92 to double
  %tmp.i116 = fmul double %y.i.i135, %2
  %y.i.i136 = tail call double @llvm.cos.f64(double %tmp.i116)
  %y.i.i137 = tail call double @llvm.sin.f64(double %tmp.i116)
  %7 = fneg double %y.i.i137
  br label %common.ret

if.false17:                                       ; preds = %if.true13
  %tmp.i118 = sub i64 %tmp.i93, %tmp.i92
  %y.i.i138 = sitofp i64 %tmp.i118 to double
  %tmp.i119 = fmul double %y.i.i138, %2
  %y.i.i139 = tail call double @llvm.sin.f64(double %tmp.i119)
  %y.i.i140 = tail call double @llvm.cos.f64(double %tmp.i119)
  %8 = fneg double %y.i.i140
  br label %common.ret

if.true21:                                        ; preds = %if.false14
  %y.i.i141 = sitofp i64 %tmp.i113 to double
  %tmp.i120 = fmul double %y.i.i141, %2
  %y.i.i142 = tail call double @llvm.sin.f64(double %tmp.i120)
  %9 = fneg double %y.i.i142
  %y.i.i143 = tail call double @llvm.cos.f64(double %tmp.i120)
  %10 = fneg double %y.i.i143
  br label %common.ret

if.false22:                                       ; preds = %if.false14
  %tmp.i122 = sub i64 %tmp.i93, %tmp.i113
  %y.i.i144 = sitofp i64 %tmp.i122 to double
  %tmp.i123 = fmul double %y.i.i144, %2
  %y.i.i145 = tail call double @llvm.cos.f64(double %tmp.i123)
  %11 = fneg double %y.i.i145
  %y.i.i146 = tail call double @llvm.sin.f64(double %tmp.i123)
  %12 = fneg double %y.i.i146
  br label %common.ret
}

; Function Attrs: nounwind memory(write, argmem: none, inaccessiblemem: readwrite)
define hidden fastcc { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } @"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__new__:1[int].1806"(i64 %0) unnamed_addr #5 {
entry:
  %tmp.i82 = add i64 %0, 2
  %1 = ashr i64 %tmp.i82, 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %.0 = phi i64 [ 1, %entry ], [ %tmp.i85, %while.cond ]
  %2 = shl nuw i64 1, %.0
  %tmp.i8395 = shl i64 %2, %.0
  %tmp.i84.not = icmp slt i64 %tmp.i8395, %1
  %tmp.i85 = add i64 %.0, 1
  br i1 %tmp.i84.not, label %while.cond, label %while.exit

while.exit:                                       ; preds = %while.cond
  %tmp.i.i = sitofp i64 %0 to double
  %tmp.i = fdiv double 0x3FE921FB54442D18, %tmp.i.i
  %tmp.i86 = add i64 %2, -1
  %3 = shl i64 16, %.0
  %4 = tail call ptr @seq_alloc_atomic(i64 %3)
  store double 1.000000e+00, ptr %4, align 8
  %.repack1.i.i = getelementptr { double, double }, ptr %4, i64 0, i32 1
  store double 0.000000e+00, ptr %.repack1.i.i, align 8
  %.not8097 = icmp sgt i64 %2, 1
  br i1 %.not8097, label %imp_for.body, label %imp_for.exit

imp_for.body:                                     ; preds = %imp_for.body, %while.exit
  %5 = phi i64 [ %8, %imp_for.body ], [ 1, %while.exit ]
  %6 = tail call fastcc { double, double } @"std.numpy.fft.pocketfft.sincos_2pibyn.calc:0[int,int,float].1796"(i64 %5, i64 %0, double %tmp.i)
  %7 = getelementptr { double, double }, ptr %4, i64 %5
  %what.elt.i.i = extractvalue { double, double } %6, 0
  store double %what.elt.i.i, ptr %7, align 8
  %.repack1.i.i90 = getelementptr { double, double }, ptr %4, i64 %5, i32 1
  %what.elt2.i.i = extractvalue { double, double } %6, 1
  store double %what.elt2.i.i, ptr %.repack1.i.i90, align 8
  %8 = add nuw nsw i64 %5, 1
  %exitcond.not = icmp eq i64 %8, %2
  br i1 %exitcond.not, label %imp_for.exit, label %imp_for.body

imp_for.exit:                                     ; preds = %imp_for.body, %while.exit
  %tmp.i87 = add i64 %tmp.i86, %1
  %tmp.i88 = sdiv i64 %tmp.i87, %2
  %9 = shl i64 %tmp.i88, 4
  %10 = tail call ptr @seq_alloc_atomic(i64 %9)
  store double 1.000000e+00, ptr %10, align 8
  %.repack1.i.i91 = getelementptr { double, double }, ptr %10, i64 0, i32 1
  store double 0.000000e+00, ptr %.repack1.i.i91, align 8
  %.not8198 = icmp sgt i64 %tmp.i88, 1
  br i1 %.not8198, label %imp_for.body2, label %imp_for.exit4

imp_for.body2:                                    ; preds = %imp_for.body2, %imp_for.exit
  %11 = phi i64 [ %14, %imp_for.body2 ], [ 1, %imp_for.exit ]
  %tmp.i8996 = shl i64 %11, %.0
  %12 = tail call fastcc { double, double } @"std.numpy.fft.pocketfft.sincos_2pibyn.calc:0[int,int,float].1796"(i64 %tmp.i8996, i64 %0, double %tmp.i)
  %13 = getelementptr { double, double }, ptr %10, i64 %11
  %what.elt.i.i92 = extractvalue { double, double } %12, 0
  store double %what.elt.i.i92, ptr %13, align 8
  %.repack1.i.i93 = getelementptr { double, double }, ptr %10, i64 %11, i32 1
  %what.elt2.i.i94 = extractvalue { double, double } %12, 1
  store double %what.elt2.i.i94, ptr %.repack1.i.i93, align 8
  %14 = add nuw nsw i64 %11, 1
  %exitcond99.not = icmp eq i64 %14, %tmp.i88
  br i1 %exitcond99.not, label %imp_for.exit4, label %imp_for.body2

imp_for.exit4:                                    ; preds = %imp_for.body2, %imp_for.exit
  %15 = insertvalue { ptr, i64 } undef, ptr %10, 0
  %16 = insertvalue { ptr, i64 } %15, i64 %tmp.i88, 1
  %17 = insertvalue { ptr, i64 } undef, ptr %4, 0
  %18 = insertvalue { ptr, i64 } %17, i64 %2, 1
  %19 = insertvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } undef, i64 %0, 0
  %20 = insertvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %19, i64 %tmp.i86, 1
  %21 = insertvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %20, i64 %.0, 2
  %22 = insertvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %21, { ptr, i64 } %18, 3
  %23 = insertvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %22, { ptr, i64 } %16, 4
  ret { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %23
}

; Function Attrs: mustprogress nounwind willreturn allockind("free")
declare {} @seq_free(ptr allocptr) local_unnamed_addr #6

; Function Attrs: nounwind
define hidden fastcc void @"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.pass_all:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],Ptr[std.internal.types.complex.complex],float,bool].2372"(i64 %.0.val, ptr nocapture readonly %.24.val, ptr %0, i8 %1) unnamed_addr #7 {
entry:
  %.fr2826.i = freeze i8 %1
  %tmp.i.not = icmp eq i64 %.0.val, 1
  br i1 %tmp.i.not, label %if.true, label %if.exit

common.ret:                                       ; preds = %if.exit24, %if.true
  ret void

if.true:                                          ; preds = %entry
  %.unpack.i = load double, ptr %0, align 8
  %.elt1.i = getelementptr { double, double }, ptr %0, i64 0, i32 1
  %.unpack2.i = load double, ptr %.elt1.i, align 8
  %tmp.i48.i.i = fmul double %.unpack2.i, 0.000000e+00
  %tmp.i49.i.i = fsub double %.unpack.i, %tmp.i48.i.i
  %tmp.i50.i.i = fmul double %.unpack.i, 0.000000e+00
  %tmp.i52.i.i = fadd double %tmp.i50.i.i, %.unpack2.i
  store double %tmp.i49.i.i, ptr %0, align 8
  store double %tmp.i52.i.i, ptr %.elt1.i, align 8
  br label %common.ret

if.exit:                                          ; preds = %entry
  %2 = shl i64 %.0.val, 4
  %3 = tail call ptr @seq_alloc_atomic(i64 %2)
  %.unpack193.val = load i64, ptr %.24.val, align 8
  %.not19733 = icmp sgt i64 %.unpack193.val, 0
  br i1 %.not19733, label %imp_for.body.lr.ph, label %if.exit24

imp_for.body.lr.ph:                               ; preds = %if.exit
  %4 = getelementptr i8, ptr %.24.val, i64 16
  %5 = and i8 %.fr2826.i, 1
  %.not.i503 = icmp eq i8 %5, 0
  %.033794057.i = select i1 %.not.i503, double 0x3FEF329C0558E969, double 0xBFEF329C0558E969
  %.040534056.i = select i1 %.not.i503, double 0x3FE904C37505DE4B, double 0xBFE904C37505DE4B
  %.03380.i = select i1 %.not.i503, double 0x3FDBC4C04D71ABC1, double 0xBFDBC4C04D71ABC1
  %spec.select.i405 = select i1 %.not.i503, double 0x3FEE6F0E134454FF, double 0xBFEE6F0E134454FF
  %spec.select2500.i = select i1 %.not.i503, double 0x3FE2CF2304755A5E, double 0xBFE2CF2304755A5E
  %spec.select.i357 = select i1 %.not.i503, double 0x3FEBB67AE8584CAA, double 0xBFEBB67AE8584CAA
  br label %imp_for.body

imp_for.body:                                     ; preds = %if.exit3, %imp_for.body.lr.ph
  %6 = phi i64 [ 0, %imp_for.body.lr.ph ], [ %47, %if.exit3 ]
  %.036 = phi i64 [ 1, %imp_for.body.lr.ph ], [ %tmp.i211, %if.exit3 ]
  %.018435 = phi ptr [ %0, %imp_for.body.lr.ph ], [ %.1186, %if.exit3 ]
  %.018534 = phi ptr [ %3, %imp_for.body.lr.ph ], [ %.1, %if.exit3 ]
  %.val6.pre.i = load i64, ptr %.24.val, align 8
  %tmp.i.not.i.i = icmp sgt i64 %.val6.pre.i, %6
  tail call void @llvm.assume(i1 %tmp.i.not.i.i)
  %.val7.i = load ptr, ptr %4, align 8
  %7 = getelementptr { i64, ptr, ptr }, ptr %.val7.i, i64 %6
  %.unpack.i.i.i = load i64, ptr %7, align 8
  %.elt1.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i, i64 %6, i32 1
  %.unpack2.i.i.i = load ptr, ptr %.elt1.i.i.i, align 8
  %tmp.i211 = mul i64 %.unpack.i.i.i, %.036
  %tmp.i212 = sdiv i64 %.0.val, %tmp.i211
  switch i64 %.unpack.i.i.i, label %if.false20 [
    i64 4, label %if.true1
    i64 8, label %if.true4
    i64 2, label %if.true7
    i64 3, label %if.true10
    i64 5, label %if.true13
    i64 7, label %if.true16
    i64 11, label %if.true19
  ]

imp_for.exit:                                     ; preds = %if.exit3
  %.not = icmp eq ptr %.1186, %0
  br i1 %.not, label %if.exit24, label %if.false26

if.true1:                                         ; preds = %imp_for.body
  %tmp.i.not.i = icmp eq i64 %tmp.i212, 1
  %.not13831647.i = icmp sgt i64 %.036, 0
  br i1 %tmp.i.not.i, label %imp_for.cond.preheader.i, label %imp_for.cond1.preheader.i

imp_for.cond1.preheader.i:                        ; preds = %if.true1
  br i1 %.not13831647.i, label %imp_for.body2.lr.ph.i, label %if.exit3

imp_for.body2.lr.ph.i:                            ; preds = %imp_for.cond1.preheader.i
  %tmp.i.i1445.i = shl nuw i64 %.036, 1
  %tmp.i.i1456.i = mul i64 %.036, 3
  %.not13821645.i = icmp sgt i64 %tmp.i212, 1
  %tmp.i.i1507.i = add nsw i64 %tmp.i212, -1
  %tmp.i8.i.i = shl i64 %tmp.i.i1507.i, 1
  br label %imp_for.body2.i

imp_for.cond.preheader.i:                         ; preds = %if.true1
  br i1 %.not13831647.i, label %imp_for.body.lr.ph.i, label %if.exit3

imp_for.body.lr.ph.i:                             ; preds = %imp_for.cond.preheader.i
  %tmp.i.i1402.i = shl nuw i64 %.036, 1
  %tmp.i.i1412.i = mul i64 %.036, 3
  br label %imp_for.body.i

imp_for.body.i:                                   ; preds = %imp_for.body.i, %imp_for.body.lr.ph.i
  %8 = phi i64 [ 0, %imp_for.body.lr.ph.i ], [ %19, %imp_for.body.i ]
  %tmp.i.i.i253 = shl i64 %8, 2
  %9 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i253
  %.unpack.i.i.i254 = load double, ptr %9, align 8
  %.elt1.i.i.i255 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i253, i32 1
  %.unpack2.i.i.i256 = load double, ptr %.elt1.i.i.i255, align 8
  %tmp.i9.i.i = or i64 %tmp.i.i.i253, 2
  %10 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i
  %.unpack.i.i1387.i = load double, ptr %10, align 8
  %.elt1.i.i1388.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i, i32 1
  %.unpack2.i.i1389.i = load double, ptr %.elt1.i.i1388.i, align 8
  %tmp.i.i.i.i = fadd double %.unpack.i.i.i254, %.unpack.i.i1387.i
  %tmp.i23.i.i.i = fadd double %.unpack2.i.i.i256, %.unpack2.i.i1389.i
  %tmp.i.i27.i.i = fsub double %.unpack.i.i.i254, %.unpack.i.i1387.i
  %tmp.i23.i28.i.i = fsub double %.unpack2.i.i.i256, %.unpack2.i.i1389.i
  %tmp.i9.i1391.i = or i64 %tmp.i.i.i253, 1
  %11 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i1391.i
  %.unpack.i.i1393.i = load double, ptr %11, align 8
  %.elt1.i.i1394.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i1391.i, i32 1
  %.unpack2.i.i1395.i = load double, ptr %.elt1.i.i1394.i, align 8
  %tmp.i9.i1397.i = or i64 %tmp.i.i.i253, 3
  %12 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i1397.i
  %.unpack.i.i1399.i = load double, ptr %12, align 8
  %.elt1.i.i1400.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i1397.i, i32 1
  %.unpack2.i.i1401.i = load double, ptr %.elt1.i.i1400.i, align 8
  %tmp.i.i.i1529.i = fadd double %.unpack.i.i1393.i, %.unpack.i.i1399.i
  %tmp.i23.i.i1530.i = fadd double %.unpack2.i.i1395.i, %.unpack2.i.i1401.i
  %tmp.i.i27.i1531.i = fsub double %.unpack.i.i1393.i, %.unpack.i.i1399.i
  %tmp.i23.i28.i1532.i = fsub double %.unpack2.i.i1395.i, %.unpack2.i.i1401.i
  %13 = fneg double %tmp.i.i27.i1531.i
  %14 = fneg double %tmp.i23.i28.i1532.i
  %.fca.1.extract.pn.i.i = select i1 %.not.i503, double %14, double %tmp.i23.i28.i1532.i
  %.pn22.i.i = select i1 %.not.i503, double %tmp.i.i27.i1531.i, double %13
  %tmp.i.i.i1533.i = fadd double %tmp.i.i.i.i, %tmp.i.i.i1529.i
  %tmp.i23.i.i1534.i = fadd double %tmp.i23.i.i.i, %tmp.i23.i.i1530.i
  %tmp.i.i27.i1535.i = fsub double %tmp.i.i.i.i, %tmp.i.i.i1529.i
  %tmp.i23.i28.i1536.i = fsub double %tmp.i23.i.i.i, %tmp.i23.i.i1530.i
  %15 = getelementptr { double, double }, ptr %.018534, i64 %8
  store double %tmp.i.i.i1533.i, ptr %15, align 8
  %.repack1.i.i = getelementptr { double, double }, ptr %.018534, i64 %8, i32 1
  store double %tmp.i23.i.i1534.i, ptr %.repack1.i.i, align 8
  %tmp.i13.i.i = add i64 %8, %tmp.i.i1402.i
  %16 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i
  store double %tmp.i.i27.i1535.i, ptr %16, align 8
  %.repack1.i1405.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i, i32 1
  store double %tmp.i23.i28.i1536.i, ptr %.repack1.i1405.i, align 8
  %tmp.i.i.i1539.i = fadd double %tmp.i.i27.i.i, %.fca.1.extract.pn.i.i
  %tmp.i23.i.i1540.i = fadd double %tmp.i23.i28.i.i, %.pn22.i.i
  %tmp.i.i27.i1541.i = fsub double %tmp.i.i27.i.i, %.fca.1.extract.pn.i.i
  %tmp.i23.i28.i1542.i = fsub double %tmp.i23.i28.i.i, %.pn22.i.i
  %tmp.i13.i1407.i = add i64 %8, %.036
  %17 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i1407.i
  store double %tmp.i.i.i1539.i, ptr %17, align 8
  %.repack1.i1410.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i1407.i, i32 1
  store double %tmp.i23.i.i1540.i, ptr %.repack1.i1410.i, align 8
  %tmp.i13.i1413.i = add i64 %8, %tmp.i.i1412.i
  %18 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i1413.i
  store double %tmp.i.i27.i1541.i, ptr %18, align 8
  %.repack1.i1416.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i1413.i, i32 1
  store double %tmp.i23.i28.i1542.i, ptr %.repack1.i1416.i, align 8
  %19 = add nuw nsw i64 %8, 1
  %exitcond1650.not.i = icmp eq i64 %19, %.036
  br i1 %exitcond1650.not.i, label %if.exit3, label %imp_for.body.i

imp_for.body2.i:                                  ; preds = %imp_for.exit8.i, %imp_for.body2.lr.ph.i
  %20 = phi i64 [ 0, %imp_for.body2.lr.ph.i ], [ %46, %imp_for.exit8.i ]
  %tmp.i.i1418.i = shl i64 %20, 2
  %tmp.i10.i1419.i = mul i64 %tmp.i.i1418.i, %tmp.i212
  %21 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1419.i
  %.unpack.i.i1420.i = load double, ptr %21, align 8
  %.elt1.i.i1421.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1419.i, i32 1
  %.unpack2.i.i1422.i = load double, ptr %.elt1.i.i1421.i, align 8
  %tmp.i9.i1424.i = or i64 %tmp.i.i1418.i, 2
  %tmp.i10.i1425.i = mul i64 %tmp.i9.i1424.i, %tmp.i212
  %22 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1425.i
  %.unpack.i.i1426.i = load double, ptr %22, align 8
  %.elt1.i.i1427.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1425.i, i32 1
  %.unpack2.i.i1428.i = load double, ptr %.elt1.i.i1427.i, align 8
  %tmp.i.i.i1543.i = fadd double %.unpack.i.i1420.i, %.unpack.i.i1426.i
  %tmp.i23.i.i1544.i = fadd double %.unpack2.i.i1422.i, %.unpack2.i.i1428.i
  %tmp.i.i27.i1545.i = fsub double %.unpack.i.i1420.i, %.unpack.i.i1426.i
  %tmp.i23.i28.i1546.i = fsub double %.unpack2.i.i1422.i, %.unpack2.i.i1428.i
  %tmp.i9.i1430.i = or i64 %tmp.i.i1418.i, 1
  %tmp.i10.i1431.i = mul i64 %tmp.i9.i1430.i, %tmp.i212
  %23 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1431.i
  %.unpack.i.i1432.i = load double, ptr %23, align 8
  %.elt1.i.i1433.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1431.i, i32 1
  %.unpack2.i.i1434.i = load double, ptr %.elt1.i.i1433.i, align 8
  %tmp.i9.i1436.i = or i64 %tmp.i.i1418.i, 3
  %tmp.i10.i1437.i = mul i64 %tmp.i9.i1436.i, %tmp.i212
  %24 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1437.i
  %.unpack.i.i1438.i = load double, ptr %24, align 8
  %.elt1.i.i1439.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1437.i, i32 1
  %.unpack2.i.i1440.i = load double, ptr %.elt1.i.i1439.i, align 8
  %tmp.i.i.i1547.i = fadd double %.unpack.i.i1432.i, %.unpack.i.i1438.i
  %tmp.i23.i.i1548.i = fadd double %.unpack2.i.i1434.i, %.unpack2.i.i1440.i
  %tmp.i.i27.i1549.i = fsub double %.unpack.i.i1432.i, %.unpack.i.i1438.i
  %tmp.i23.i28.i1550.i = fsub double %.unpack2.i.i1434.i, %.unpack2.i.i1440.i
  %25 = fneg double %tmp.i.i27.i1549.i
  %26 = fneg double %tmp.i23.i28.i1550.i
  %.fca.1.extract.pn.i1554.i = select i1 %.not.i503, double %26, double %tmp.i23.i28.i1550.i
  %.pn22.i1555.i = select i1 %.not.i503, double %tmp.i.i27.i1549.i, double %25
  %tmp.i.i.i1562.i = fadd double %tmp.i.i.i1543.i, %tmp.i.i.i1547.i
  %tmp.i23.i.i1563.i = fadd double %tmp.i23.i.i1544.i, %tmp.i23.i.i1548.i
  %tmp.i.i27.i1564.i = fsub double %tmp.i.i.i1543.i, %tmp.i.i.i1547.i
  %tmp.i23.i28.i1565.i = fsub double %tmp.i23.i.i1544.i, %tmp.i23.i.i1548.i
  %tmp.i14.i1441.i = mul i64 %20, %tmp.i212
  %27 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1441.i
  store double %tmp.i.i.i1562.i, ptr %27, align 8
  %.repack1.i1443.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1441.i, i32 1
  store double %tmp.i23.i.i1563.i, ptr %.repack1.i1443.i, align 8
  %tmp.i13.i1446.i = add i64 %20, %tmp.i.i1445.i
  %tmp.i14.i1447.i = mul i64 %tmp.i13.i1446.i, %tmp.i212
  %28 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1447.i
  store double %tmp.i.i27.i1564.i, ptr %28, align 8
  %.repack1.i1449.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1447.i, i32 1
  store double %tmp.i23.i28.i1565.i, ptr %.repack1.i1449.i, align 8
  %tmp.i.i.i1568.i = fadd double %tmp.i.i27.i1545.i, %.fca.1.extract.pn.i1554.i
  %tmp.i23.i.i1569.i = fadd double %tmp.i23.i28.i1546.i, %.pn22.i1555.i
  %tmp.i.i27.i1570.i = fsub double %tmp.i.i27.i1545.i, %.fca.1.extract.pn.i1554.i
  %tmp.i23.i28.i1571.i = fsub double %tmp.i23.i28.i1546.i, %.pn22.i1555.i
  %tmp.i13.i1451.i = add i64 %20, %.036
  %tmp.i14.i1452.i = mul i64 %tmp.i13.i1451.i, %tmp.i212
  %29 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1452.i
  store double %tmp.i.i.i1568.i, ptr %29, align 8
  %.repack1.i1454.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1452.i, i32 1
  store double %tmp.i23.i.i1569.i, ptr %.repack1.i1454.i, align 8
  %tmp.i13.i1457.i = add i64 %20, %tmp.i.i1456.i
  %tmp.i14.i1458.i = mul i64 %tmp.i13.i1457.i, %tmp.i212
  %30 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1458.i
  store double %tmp.i.i27.i1570.i, ptr %30, align 8
  %.repack1.i1460.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1458.i, i32 1
  store double %tmp.i23.i28.i1571.i, ptr %.repack1.i1460.i, align 8
  br i1 %.not13821645.i, label %imp_for.body6.i, label %imp_for.exit8.i

imp_for.body6.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1642.i", %imp_for.body2.i
  %31 = phi i64 [ %45, %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1642.i" ], [ 1, %imp_for.body2.i ]
  %tmp.i11.i.i = add i64 %31, %tmp.i10.i1419.i
  %32 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i
  %.unpack.i.i1464.i = load double, ptr %32, align 8
  %.elt1.i.i1465.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i, i32 1
  %.unpack2.i.i1466.i = load double, ptr %.elt1.i.i1465.i, align 8
  %tmp.i11.i1470.i = add i64 %31, %tmp.i10.i1431.i
  %33 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1470.i
  %.unpack.i.i1471.i = load double, ptr %33, align 8
  %.elt1.i.i1472.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1470.i, i32 1
  %.unpack2.i.i1473.i = load double, ptr %.elt1.i.i1472.i, align 8
  %tmp.i11.i1477.i = add i64 %31, %tmp.i10.i1425.i
  %34 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1477.i
  %.unpack.i.i1478.i = load double, ptr %34, align 8
  %.elt1.i.i1479.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1477.i, i32 1
  %.unpack2.i.i1480.i = load double, ptr %.elt1.i.i1479.i, align 8
  %tmp.i11.i1484.i = add i64 %31, %tmp.i10.i1437.i
  %35 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1484.i
  %.unpack.i.i1485.i = load double, ptr %35, align 8
  %.elt1.i.i1486.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1484.i, i32 1
  %.unpack2.i.i1487.i = load double, ptr %.elt1.i.i1486.i, align 8
  %tmp.i.i.i1572.i = fadd double %.unpack.i.i1464.i, %.unpack.i.i1478.i
  %tmp.i23.i.i1573.i = fadd double %.unpack2.i.i1466.i, %.unpack2.i.i1480.i
  %tmp.i.i27.i1574.i = fsub double %.unpack.i.i1464.i, %.unpack.i.i1478.i
  %tmp.i23.i28.i1575.i = fsub double %.unpack2.i.i1466.i, %.unpack2.i.i1480.i
  %tmp.i.i.i1576.i = fadd double %.unpack.i.i1471.i, %.unpack.i.i1485.i
  %tmp.i23.i.i1577.i = fadd double %.unpack2.i.i1473.i, %.unpack2.i.i1487.i
  %tmp.i.i27.i1578.i = fsub double %.unpack.i.i1471.i, %.unpack.i.i1485.i
  %tmp.i23.i28.i1579.i = fsub double %.unpack2.i.i1473.i, %.unpack2.i.i1487.i
  %36 = fneg double %tmp.i.i27.i1578.i
  %37 = fneg double %tmp.i23.i28.i1579.i
  %.fca.1.extract.pn.i1583.i = select i1 %.not.i503, double %37, double %tmp.i23.i28.i1579.i
  %.pn22.i1584.i = select i1 %.not.i503, double %tmp.i.i27.i1578.i, double %36
  %tmp.i15.i.i = add i64 %31, %tmp.i14.i1441.i
  %38 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i
  %tmp.i.i1589.i = fadd double %tmp.i.i.i1572.i, %tmp.i.i.i1576.i
  %tmp.i23.i.i = fadd double %tmp.i23.i.i1573.i, %tmp.i23.i.i1577.i
  store double %tmp.i.i1589.i, ptr %38, align 8
  %.repack1.i1490.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i, i32 1
  store double %tmp.i23.i.i, ptr %.repack1.i1490.i, align 8
  %tmp.i15.i1494.i = add i64 %31, %tmp.i14.i1452.i
  %39 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1494.i
  %tmp.i.i1592.i = fadd double %tmp.i.i27.i1574.i, %.fca.1.extract.pn.i1583.i
  %tmp.i23.i1593.i = fadd double %tmp.i23.i28.i1575.i, %.pn22.i1584.i
  %tmp.i9.i1496.i = add nsw i64 %31, -1
  %40 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i1496.i
  %.unpack.i.i1497.i = load double, ptr %40, align 8
  %.elt1.i.i1498.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i1496.i, i32 1
  %.unpack2.i.i1499.i = load double, ptr %.elt1.i.i1498.i, align 8
  %tmp.i101.i.i = fmul double %tmp.i.i1592.i, %.unpack.i.i1497.i
  %tmp.i102.i.i = fmul double %tmp.i23.i1593.i, %.unpack2.i.i1499.i
  br i1 %.not.i503, label %if.false.i.i, label %if.true.i.i

if.true.i.i:                                      ; preds = %imp_for.body6.i
  %tmp.i97.i.i = fadd double %tmp.i101.i.i, %tmp.i102.i.i
  %tmp.i98.i.i = fmul double %tmp.i23.i1593.i, %.unpack.i.i1497.i
  %tmp.i99.i.i = fmul double %tmp.i.i1592.i, %.unpack2.i.i1499.i
  %tmp.i100.i.i = fsub double %tmp.i98.i.i, %tmp.i99.i.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i"

if.false.i.i:                                     ; preds = %imp_for.body6.i
  %tmp.i103.i.i = fsub double %tmp.i101.i.i, %tmp.i102.i.i
  %tmp.i104.i.i = fmul double %tmp.i.i1592.i, %.unpack2.i.i1499.i
  %tmp.i105.i.i = fmul double %tmp.i23.i1593.i, %.unpack.i.i1497.i
  %tmp.i106.i.i = fadd double %tmp.i105.i.i, %tmp.i104.i.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i": ; preds = %if.false.i.i, %if.true.i.i
  %tmp.i97.pn.i.i = phi double [ %tmp.i97.i.i, %if.true.i.i ], [ %tmp.i103.i.i, %if.false.i.i ]
  %tmp.i100.pn.i.i = phi double [ %tmp.i100.i.i, %if.true.i.i ], [ %tmp.i106.i.i, %if.false.i.i ]
  store double %tmp.i97.pn.i.i, ptr %39, align 8
  %.repack1.i1501.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1494.i, i32 1
  store double %tmp.i100.pn.i.i, ptr %.repack1.i1501.i, align 8
  %tmp.i15.i1506.i = add i64 %31, %tmp.i14.i1447.i
  %41 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1506.i
  %tmp.i.i1601.i = fsub double %tmp.i.i.i1572.i, %tmp.i.i.i1576.i
  %tmp.i23.i1602.i = fsub double %tmp.i23.i.i1573.i, %tmp.i23.i.i1577.i
  %tmp.i10.i1509.i = add i64 %tmp.i9.i1496.i, %tmp.i.i1507.i
  %42 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i1509.i
  %.unpack.i.i1510.i = load double, ptr %42, align 8
  %.elt1.i.i1511.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i1509.i, i32 1
  %.unpack2.i.i1512.i = load double, ptr %.elt1.i.i1511.i, align 8
  %tmp.i101.i1604.i = fmul double %tmp.i.i1601.i, %.unpack.i.i1510.i
  %tmp.i102.i1605.i = fmul double %tmp.i23.i1602.i, %.unpack2.i.i1512.i
  br i1 %.not.i503, label %if.false.i1615.i, label %if.true.i1606.i

if.true.i1606.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i"
  %tmp.i97.i1607.i = fadd double %tmp.i101.i1604.i, %tmp.i102.i1605.i
  %tmp.i98.i1608.i = fmul double %tmp.i23.i1602.i, %.unpack.i.i1510.i
  %tmp.i99.i1609.i = fmul double %tmp.i.i1601.i, %.unpack2.i.i1512.i
  %tmp.i100.i1610.i = fsub double %tmp.i98.i1608.i, %tmp.i99.i1609.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1620.i"

if.false.i1615.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i"
  %tmp.i103.i1616.i = fsub double %tmp.i101.i1604.i, %tmp.i102.i1605.i
  %tmp.i104.i1617.i = fmul double %tmp.i.i1601.i, %.unpack2.i.i1512.i
  %tmp.i105.i1618.i = fmul double %tmp.i23.i1602.i, %.unpack.i.i1510.i
  %tmp.i106.i1619.i = fadd double %tmp.i105.i1618.i, %tmp.i104.i1617.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1620.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1620.i": ; preds = %if.false.i1615.i, %if.true.i1606.i
  %tmp.i97.pn.i1611.i = phi double [ %tmp.i97.i1607.i, %if.true.i1606.i ], [ %tmp.i103.i1616.i, %if.false.i1615.i ]
  %tmp.i100.pn.i1612.i = phi double [ %tmp.i100.i1610.i, %if.true.i1606.i ], [ %tmp.i106.i1619.i, %if.false.i1615.i ]
  store double %tmp.i97.pn.i1611.i, ptr %41, align 8
  %.repack1.i1514.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1506.i, i32 1
  store double %tmp.i100.pn.i1612.i, ptr %.repack1.i1514.i, align 8
  %tmp.i15.i1519.i = add i64 %31, %tmp.i14.i1458.i
  %43 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1519.i
  %tmp.i.i1623.i = fsub double %tmp.i.i27.i1574.i, %.fca.1.extract.pn.i1583.i
  %tmp.i23.i1624.i = fsub double %tmp.i23.i28.i1575.i, %.pn22.i1584.i
  %tmp.i10.i1522.i = add i64 %tmp.i9.i1496.i, %tmp.i8.i.i
  %44 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i1522.i
  %.unpack.i.i1523.i = load double, ptr %44, align 8
  %.elt1.i.i1524.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i1522.i, i32 1
  %.unpack2.i.i1525.i = load double, ptr %.elt1.i.i1524.i, align 8
  %tmp.i101.i1626.i = fmul double %tmp.i.i1623.i, %.unpack.i.i1523.i
  %tmp.i102.i1627.i = fmul double %tmp.i23.i1624.i, %.unpack2.i.i1525.i
  br i1 %.not.i503, label %if.false.i1637.i, label %if.true.i1628.i

if.true.i1628.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1620.i"
  %tmp.i97.i1629.i = fadd double %tmp.i101.i1626.i, %tmp.i102.i1627.i
  %tmp.i98.i1630.i = fmul double %tmp.i23.i1624.i, %.unpack.i.i1523.i
  %tmp.i99.i1631.i = fmul double %tmp.i.i1623.i, %.unpack2.i.i1525.i
  %tmp.i100.i1632.i = fsub double %tmp.i98.i1630.i, %tmp.i99.i1631.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1642.i"

if.false.i1637.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1620.i"
  %tmp.i103.i1638.i = fsub double %tmp.i101.i1626.i, %tmp.i102.i1627.i
  %tmp.i104.i1639.i = fmul double %tmp.i.i1623.i, %.unpack2.i.i1525.i
  %tmp.i105.i1640.i = fmul double %tmp.i23.i1624.i, %.unpack.i.i1523.i
  %tmp.i106.i1641.i = fadd double %tmp.i105.i1640.i, %tmp.i104.i1639.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1642.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1642.i": ; preds = %if.false.i1637.i, %if.true.i1628.i
  %tmp.i97.pn.i1633.i = phi double [ %tmp.i97.i1629.i, %if.true.i1628.i ], [ %tmp.i103.i1638.i, %if.false.i1637.i ]
  %tmp.i100.pn.i1634.i = phi double [ %tmp.i100.i1632.i, %if.true.i1628.i ], [ %tmp.i106.i1641.i, %if.false.i1637.i ]
  store double %tmp.i97.pn.i1633.i, ptr %43, align 8
  %.repack1.i1527.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1519.i, i32 1
  store double %tmp.i100.pn.i1634.i, ptr %.repack1.i1527.i, align 8
  %45 = add nuw nsw i64 %31, 1
  %exitcond.not.i = icmp eq i64 %45, %tmp.i212
  br i1 %exitcond.not.i, label %imp_for.exit8.i, label %imp_for.body6.i

imp_for.exit8.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1642.i", %imp_for.body2.i
  %46 = add nuw nsw i64 %20, 1
  %exitcond1649.not.i = icmp eq i64 %46, %.036
  br i1 %exitcond1649.not.i, label %if.exit3, label %imp_for.body2.i

if.exit3:                                         ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit", %imp_for.exit23.i, %imp_for.body.i526, %imp_for.cond.preheader.i524, %imp_for.cond16.preheader.i, %imp_for.exit17.i, %imp_for.body.i476, %imp_for.cond.preheader.i474, %imp_for.cond10.preheader.i, %imp_for.exit14.i, %imp_for.body.i429, %imp_for.cond.preheader.i427, %imp_for.cond7.preheader.i, %imp_for.exit11.i, %imp_for.body.i379, %imp_for.cond.preheader.i377, %imp_for.cond4.preheader.i, %imp_for.body2.i331, %imp_for.body.i335, %imp_for.cond.preheader.i334, %imp_for.cond5.imp_for.exit8_crit_edge.split.us741.i, %imp_for.cond5.imp_for.exit8_crit_edge.split.us.us.us.i, %imp_for.cond1.preheader.i329, %imp_for.exit8.i274, %imp_for.body.i299, %imp_for.cond.preheader.i296, %imp_for.cond1.preheader.i270, %imp_for.exit8.i, %imp_for.body.i, %imp_for.cond.preheader.i, %imp_for.cond1.preheader.i
  %.1186 = phi ptr [ %.018435, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit" ], [ %.018534, %imp_for.cond1.preheader.i ], [ %.018534, %imp_for.cond.preheader.i ], [ %.018534, %imp_for.cond1.preheader.i270 ], [ %.018534, %imp_for.cond.preheader.i296 ], [ %.018534, %imp_for.cond1.preheader.i329 ], [ %.018534, %imp_for.cond.preheader.i334 ], [ %.018534, %imp_for.cond4.preheader.i ], [ %.018534, %imp_for.cond.preheader.i377 ], [ %.018534, %imp_for.cond7.preheader.i ], [ %.018534, %imp_for.cond.preheader.i427 ], [ %.018534, %imp_for.cond10.preheader.i ], [ %.018534, %imp_for.cond.preheader.i474 ], [ %.018534, %imp_for.cond16.preheader.i ], [ %.018534, %imp_for.cond.preheader.i524 ], [ %.018534, %imp_for.body.i ], [ %.018534, %imp_for.exit8.i ], [ %.018534, %imp_for.body.i299 ], [ %.018534, %imp_for.exit8.i274 ], [ %.018534, %imp_for.body.i335 ], [ %.018534, %imp_for.cond5.imp_for.exit8_crit_edge.split.us.us.us.i ], [ %.018534, %imp_for.cond5.imp_for.exit8_crit_edge.split.us741.i ], [ %.018534, %imp_for.body2.i331 ], [ %.018534, %imp_for.body.i379 ], [ %.018534, %imp_for.exit11.i ], [ %.018534, %imp_for.body.i429 ], [ %.018534, %imp_for.exit14.i ], [ %.018534, %imp_for.body.i476 ], [ %.018534, %imp_for.exit17.i ], [ %.018534, %imp_for.body.i526 ], [ %.018534, %imp_for.exit23.i ]
  %.1 = phi ptr [ %.018534, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit" ], [ %.018435, %imp_for.cond1.preheader.i ], [ %.018435, %imp_for.cond.preheader.i ], [ %.018435, %imp_for.cond1.preheader.i270 ], [ %.018435, %imp_for.cond.preheader.i296 ], [ %.018435, %imp_for.cond1.preheader.i329 ], [ %.018435, %imp_for.cond.preheader.i334 ], [ %.018435, %imp_for.cond4.preheader.i ], [ %.018435, %imp_for.cond.preheader.i377 ], [ %.018435, %imp_for.cond7.preheader.i ], [ %.018435, %imp_for.cond.preheader.i427 ], [ %.018435, %imp_for.cond10.preheader.i ], [ %.018435, %imp_for.cond.preheader.i474 ], [ %.018435, %imp_for.cond16.preheader.i ], [ %.018435, %imp_for.cond.preheader.i524 ], [ %.018435, %imp_for.body.i ], [ %.018435, %imp_for.exit8.i ], [ %.018435, %imp_for.body.i299 ], [ %.018435, %imp_for.exit8.i274 ], [ %.018435, %imp_for.body.i335 ], [ %.018435, %imp_for.cond5.imp_for.exit8_crit_edge.split.us.us.us.i ], [ %.018435, %imp_for.cond5.imp_for.exit8_crit_edge.split.us741.i ], [ %.018435, %imp_for.body2.i331 ], [ %.018435, %imp_for.body.i379 ], [ %.018435, %imp_for.exit11.i ], [ %.018435, %imp_for.body.i429 ], [ %.018435, %imp_for.exit14.i ], [ %.018435, %imp_for.body.i476 ], [ %.018435, %imp_for.exit17.i ], [ %.018435, %imp_for.body.i526 ], [ %.018435, %imp_for.exit23.i ]
  %47 = add nuw nsw i64 %6, 1
  %exitcond.not = icmp eq i64 %47, %.unpack193.val
  br i1 %exitcond.not, label %imp_for.exit, label %imp_for.body

if.true4:                                         ; preds = %imp_for.body
  %tmp.i.not.i269 = icmp eq i64 %tmp.i212, 1
  %.not31913954.i = icmp sgt i64 %.036, 0
  br i1 %tmp.i.not.i269, label %imp_for.cond.preheader.i296, label %imp_for.cond1.preheader.i270

imp_for.cond1.preheader.i270:                     ; preds = %if.true4
  br i1 %.not31913954.i, label %imp_for.body2.lr.ph.i271, label %if.exit3

imp_for.body2.lr.ph.i271:                         ; preds = %imp_for.cond1.preheader.i270
  %tmp.i.i3325.i = shl i64 %.036, 2
  %tmp.i.i3331.i = shl nuw i64 %.036, 1
  %tmp.i.i3337.i = mul i64 %.036, 6
  %tmp.i.i3348.i = mul i64 %.036, 5
  %tmp.i.i3354.i = mul i64 %.036, 3
  %tmp.i.i3360.i = mul i64 %.036, 7
  %.not31903952.i = icmp sgt i64 %tmp.i212, 1
  %tmp.i.i3428.i = add nsw i64 %tmp.i212, -1
  %tmp.i8.i.i272 = mul i64 %tmp.i.i3428.i, 3
  %tmp.i8.i3455.i = mul i64 %tmp.i.i3428.i, 5
  %tmp.i8.i3480.i = shl i64 %tmp.i.i3428.i, 2
  %tmp.i8.i3494.i = shl i64 %tmp.i.i3428.i, 1
  %tmp.i8.i3508.i = mul i64 %tmp.i.i3428.i, 6
  br label %imp_for.body2.i273

imp_for.cond.preheader.i296:                      ; preds = %if.true4
  br i1 %.not31913954.i, label %imp_for.body.lr.ph.i297, label %if.exit3

imp_for.body.lr.ph.i297:                          ; preds = %imp_for.cond.preheader.i296
  %tmp.i.i3234.i = shl i64 %.036, 2
  %tmp.i.i3239.i = shl nuw i64 %.036, 1
  %tmp.i.i3245.i = mul i64 %.036, 6
  %tmp.i.i3256.i = mul i64 %.036, 5
  %tmp.i.i3262.i = mul i64 %.036, 3
  %tmp.i.i3268.i = mul i64 %.036, 7
  br label %imp_for.body.i299

imp_for.body.i299:                                ; preds = %imp_for.body.i299, %imp_for.body.lr.ph.i297
  %48 = phi i64 [ 0, %imp_for.body.lr.ph.i297 ], [ %74, %imp_for.body.i299 ]
  %tmp.i.i.i300 = shl i64 %48, 3
  %tmp.i9.i.i301 = or i64 %tmp.i.i.i300, 1
  %49 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i301
  %.unpack.i.i.i302 = load double, ptr %49, align 8
  %.elt1.i.i.i303 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i301, i32 1
  %.unpack2.i.i.i304 = load double, ptr %.elt1.i.i.i303, align 8
  %tmp.i9.i3194.i = or i64 %tmp.i.i.i300, 5
  %50 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3194.i
  %.unpack.i.i3196.i = load double, ptr %50, align 8
  %.elt1.i.i3197.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3194.i, i32 1
  %.unpack2.i.i3198.i = load double, ptr %.elt1.i.i3197.i, align 8
  %tmp.i.i.i.i305 = fadd double %.unpack.i.i.i302, %.unpack.i.i3196.i
  %tmp.i23.i.i.i306 = fadd double %.unpack2.i.i.i304, %.unpack2.i.i3198.i
  %tmp.i.i27.i.i307 = fsub double %.unpack.i.i.i302, %.unpack.i.i3196.i
  %tmp.i23.i28.i.i308 = fsub double %.unpack2.i.i.i304, %.unpack2.i.i3198.i
  %tmp.i9.i3200.i = or i64 %tmp.i.i.i300, 3
  %51 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3200.i
  %.unpack.i.i3202.i = load double, ptr %51, align 8
  %.elt1.i.i3203.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3200.i, i32 1
  %.unpack2.i.i3204.i = load double, ptr %.elt1.i.i3203.i, align 8
  %tmp.i9.i3206.i = or i64 %tmp.i.i.i300, 7
  %52 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3206.i
  %.unpack.i.i3208.i = load double, ptr %52, align 8
  %.elt1.i.i3209.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3206.i, i32 1
  %.unpack2.i.i3210.i = load double, ptr %.elt1.i.i3209.i, align 8
  %tmp.i.i.i3517.i = fadd double %.unpack.i.i3202.i, %.unpack.i.i3208.i
  %tmp.i23.i.i3518.i = fadd double %.unpack2.i.i3204.i, %.unpack2.i.i3210.i
  %tmp.i.i27.i3519.i = fsub double %.unpack.i.i3202.i, %.unpack.i.i3208.i
  %tmp.i23.i28.i3520.i = fsub double %.unpack2.i.i3204.i, %.unpack2.i.i3210.i
  %tmp.i.i.i3521.i = fadd double %tmp.i.i.i.i305, %tmp.i.i.i3517.i
  %tmp.i23.i.i3522.i = fadd double %tmp.i23.i.i.i306, %tmp.i23.i.i3518.i
  %tmp.i.i27.i3523.i = fsub double %tmp.i.i.i.i305, %tmp.i.i.i3517.i
  %tmp.i23.i28.i3524.i = fsub double %tmp.i23.i.i.i306, %tmp.i23.i.i3518.i
  %53 = fneg double %tmp.i.i27.i3523.i
  %54 = fneg double %tmp.i23.i28.i3524.i
  %.fca.1.extract.pn.i.i309 = select i1 %.not.i503, double %54, double %tmp.i23.i28.i3524.i
  %.pn22.i.i310 = select i1 %.not.i503, double %tmp.i.i27.i3523.i, double %53
  %55 = fneg double %tmp.i.i27.i3519.i
  %56 = fneg double %tmp.i23.i28.i3520.i
  %.fca.1.extract.pn.i3528.i = select i1 %.not.i503, double %56, double %tmp.i23.i28.i3520.i
  %.pn22.i3529.i = select i1 %.not.i503, double %tmp.i.i27.i3519.i, double %55
  %tmp.i.i.i3534.i = fadd double %tmp.i.i27.i.i307, %.fca.1.extract.pn.i3528.i
  %tmp.i23.i.i3535.i = fadd double %tmp.i23.i28.i.i308, %.pn22.i3529.i
  %tmp.i.i27.i3536.i = fsub double %tmp.i.i27.i.i307, %.fca.1.extract.pn.i3528.i
  %tmp.i23.i28.i3537.i = fsub double %tmp.i23.i28.i.i308, %.pn22.i3529.i
  %57 = fneg double %tmp.i23.i.i3535.i
  %tmp.i49.pn.in.p.i.i = select i1 %.not.i503, double %57, double %tmp.i23.i.i3535.i
  %tmp.i49.pn.in.i.i = fadd double %tmp.i.i.i3534.i, %tmp.i49.pn.in.p.i.i
  %58 = fneg double %tmp.i.i.i3534.i
  %tmp.i51.pn.in.p.i.i = select i1 %.not.i503, double %tmp.i.i.i3534.i, double %58
  %tmp.i51.pn.in.i.i = fadd double %tmp.i23.i.i3535.i, %tmp.i51.pn.in.p.i.i
  %tmp.i51.pn.i.i = fmul double %tmp.i51.pn.in.i.i, 0x3FE6A09E667F3BCD
  %tmp.i49.pn.i.i = fmul double %tmp.i49.pn.in.i.i, 0x3FE6A09E667F3BCD
  %tmp.i.i3546.i = fsub double %tmp.i23.i28.i3537.i, %tmp.i.i27.i3536.i
  %59 = fneg double %tmp.i.i27.i3536.i
  %tmp.i52.i.i311 = fsub double %59, %tmp.i23.i28.i3537.i
  %tmp.i49.pn.in.i3547.i = select i1 %.not.i503, double %tmp.i52.i.i311, double %tmp.i.i3546.i
  %.pn57.i.i = select i1 %.not.i503, double %tmp.i.i27.i3536.i, double %59
  %tmp.i51.pn.in.i3548.i = fsub double %.pn57.i.i, %tmp.i23.i28.i3537.i
  %tmp.i51.pn.i3549.i = fmul double %tmp.i51.pn.in.i3548.i, 0x3FE6A09E667F3BCD
  %tmp.i49.pn.i3550.i = fmul double %tmp.i49.pn.in.i3547.i, 0x3FE6A09E667F3BCD
  %60 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i300
  %.unpack.i.i3213.i = load double, ptr %60, align 8
  %.elt1.i.i3214.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i300, i32 1
  %.unpack2.i.i3215.i = load double, ptr %.elt1.i.i3214.i, align 8
  %tmp.i9.i3217.i = or i64 %tmp.i.i.i300, 4
  %61 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3217.i
  %.unpack.i.i3219.i = load double, ptr %61, align 8
  %.elt1.i.i3220.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3217.i, i32 1
  %.unpack2.i.i3221.i = load double, ptr %.elt1.i.i3220.i, align 8
  %tmp.i.i.i3553.i = fadd double %.unpack.i.i3213.i, %.unpack.i.i3219.i
  %tmp.i23.i.i3554.i = fadd double %.unpack2.i.i3215.i, %.unpack2.i.i3221.i
  %tmp.i.i27.i3555.i = fsub double %.unpack.i.i3213.i, %.unpack.i.i3219.i
  %tmp.i23.i28.i3556.i = fsub double %.unpack2.i.i3215.i, %.unpack2.i.i3221.i
  %tmp.i9.i3223.i = or i64 %tmp.i.i.i300, 2
  %62 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3223.i
  %.unpack.i.i3225.i = load double, ptr %62, align 8
  %.elt1.i.i3226.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3223.i, i32 1
  %.unpack2.i.i3227.i = load double, ptr %.elt1.i.i3226.i, align 8
  %tmp.i9.i3229.i = or i64 %tmp.i.i.i300, 6
  %63 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3229.i
  %.unpack.i.i3231.i = load double, ptr %63, align 8
  %.elt1.i.i3232.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3229.i, i32 1
  %.unpack2.i.i3233.i = load double, ptr %.elt1.i.i3232.i, align 8
  %tmp.i.i.i3557.i = fadd double %.unpack.i.i3225.i, %.unpack.i.i3231.i
  %tmp.i23.i.i3558.i = fadd double %.unpack2.i.i3227.i, %.unpack2.i.i3233.i
  %tmp.i.i27.i3559.i = fsub double %.unpack.i.i3225.i, %.unpack.i.i3231.i
  %tmp.i23.i28.i3560.i = fsub double %.unpack2.i.i3227.i, %.unpack2.i.i3233.i
  %tmp.i.i3563.i = fadd double %tmp.i.i.i3553.i, %tmp.i.i.i3557.i
  %tmp.i23.i.i312 = fadd double %tmp.i23.i.i3554.i, %tmp.i23.i.i3558.i
  %tmp.i.i.i3566.i = fadd double %tmp.i.i.i3521.i, %tmp.i.i3563.i
  %tmp.i23.i.i3567.i = fadd double %tmp.i23.i.i3522.i, %tmp.i23.i.i312
  %tmp.i.i27.i3568.i = fsub double %tmp.i.i3563.i, %tmp.i.i.i3521.i
  %tmp.i23.i28.i3569.i = fsub double %tmp.i23.i.i312, %tmp.i23.i.i3522.i
  %64 = getelementptr { double, double }, ptr %.018534, i64 %48
  store double %tmp.i.i.i3566.i, ptr %64, align 8
  %.repack1.i.i313 = getelementptr { double, double }, ptr %.018534, i64 %48, i32 1
  store double %tmp.i23.i.i3567.i, ptr %.repack1.i.i313, align 8
  %tmp.i13.i.i314 = add i64 %48, %tmp.i.i3234.i
  %65 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i314
  store double %tmp.i.i27.i3568.i, ptr %65, align 8
  %.repack1.i3237.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i314, i32 1
  store double %tmp.i23.i28.i3569.i, ptr %.repack1.i3237.i, align 8
  %tmp.i.i3574.i = fsub double %tmp.i.i.i3553.i, %tmp.i.i.i3557.i
  %tmp.i23.i3575.i = fsub double %tmp.i23.i.i3554.i, %tmp.i23.i.i3558.i
  %tmp.i.i.i3576.i = fadd double %.fca.1.extract.pn.i.i309, %tmp.i.i3574.i
  %tmp.i23.i.i3577.i = fadd double %.pn22.i.i310, %tmp.i23.i3575.i
  %tmp.i.i27.i3578.i = fsub double %tmp.i.i3574.i, %.fca.1.extract.pn.i.i309
  %tmp.i23.i28.i3579.i = fsub double %tmp.i23.i3575.i, %.pn22.i.i310
  %tmp.i13.i3240.i = add i64 %48, %tmp.i.i3239.i
  %66 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3240.i
  store double %tmp.i.i.i3576.i, ptr %66, align 8
  %.repack1.i3243.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3240.i, i32 1
  store double %tmp.i23.i.i3577.i, ptr %.repack1.i3243.i, align 8
  %tmp.i13.i3246.i = add i64 %48, %tmp.i.i3245.i
  %67 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3246.i
  store double %tmp.i.i27.i3578.i, ptr %67, align 8
  %.repack1.i3249.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3246.i, i32 1
  store double %tmp.i23.i28.i3579.i, ptr %.repack1.i3249.i, align 8
  %68 = fneg double %tmp.i.i27.i3559.i
  %69 = fneg double %tmp.i23.i28.i3560.i
  %.fca.1.extract.pn.i3583.i = select i1 %.not.i503, double %69, double %tmp.i23.i28.i3560.i
  %.pn22.i3584.i = select i1 %.not.i503, double %tmp.i.i27.i3559.i, double %68
  %tmp.i.i3589.i = fadd double %tmp.i.i27.i3555.i, %.fca.1.extract.pn.i3583.i
  %tmp.i23.i3590.i = fadd double %tmp.i23.i28.i3556.i, %.pn22.i3584.i
  %tmp.i.i.i3591.i = fadd double %tmp.i49.pn.i.i, %tmp.i.i3589.i
  %tmp.i23.i.i3592.i = fadd double %tmp.i51.pn.i.i, %tmp.i23.i3590.i
  %tmp.i.i27.i3593.i = fsub double %tmp.i.i3589.i, %tmp.i49.pn.i.i
  %tmp.i23.i28.i3594.i = fsub double %tmp.i23.i3590.i, %tmp.i51.pn.i.i
  %tmp.i13.i3251.i = add i64 %48, %.036
  %70 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3251.i
  store double %tmp.i.i.i3591.i, ptr %70, align 8
  %.repack1.i3254.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3251.i, i32 1
  store double %tmp.i23.i.i3592.i, ptr %.repack1.i3254.i, align 8
  %tmp.i13.i3257.i = add i64 %48, %tmp.i.i3256.i
  %71 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3257.i
  store double %tmp.i.i27.i3593.i, ptr %71, align 8
  %.repack1.i3260.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3257.i, i32 1
  store double %tmp.i23.i28.i3594.i, ptr %.repack1.i3260.i, align 8
  %tmp.i.i3597.i = fsub double %tmp.i.i27.i3555.i, %.fca.1.extract.pn.i3583.i
  %tmp.i23.i3598.i = fsub double %tmp.i23.i28.i3556.i, %.pn22.i3584.i
  %tmp.i.i.i3599.i = fadd double %tmp.i49.pn.i3550.i, %tmp.i.i3597.i
  %tmp.i23.i.i3600.i = fadd double %tmp.i51.pn.i3549.i, %tmp.i23.i3598.i
  %tmp.i.i27.i3601.i = fsub double %tmp.i.i3597.i, %tmp.i49.pn.i3550.i
  %tmp.i23.i28.i3602.i = fsub double %tmp.i23.i3598.i, %tmp.i51.pn.i3549.i
  %tmp.i13.i3263.i = add i64 %48, %tmp.i.i3262.i
  %72 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3263.i
  store double %tmp.i.i.i3599.i, ptr %72, align 8
  %.repack1.i3266.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3263.i, i32 1
  store double %tmp.i23.i.i3600.i, ptr %.repack1.i3266.i, align 8
  %tmp.i13.i3269.i = add i64 %48, %tmp.i.i3268.i
  %73 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3269.i
  store double %tmp.i.i27.i3601.i, ptr %73, align 8
  %.repack1.i3272.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3269.i, i32 1
  store double %tmp.i23.i28.i3602.i, ptr %.repack1.i3272.i, align 8
  %74 = add nuw nsw i64 %48, 1
  %exitcond3957.not.i = icmp eq i64 %74, %.036
  br i1 %exitcond3957.not.i, label %if.exit3, label %imp_for.body.i299

imp_for.body2.i273:                               ; preds = %imp_for.exit8.i274, %imp_for.body2.lr.ph.i271
  %75 = phi i64 [ 0, %imp_for.body2.lr.ph.i271 ], [ %135, %imp_for.exit8.i274 ]
  %tmp.i.i3274.i = shl i64 %75, 3
  %tmp.i9.i3275.i = or i64 %tmp.i.i3274.i, 1
  %tmp.i10.i3276.i = mul i64 %tmp.i9.i3275.i, %tmp.i212
  %76 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3276.i
  %.unpack.i.i3277.i = load double, ptr %76, align 8
  %.elt1.i.i3278.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3276.i, i32 1
  %.unpack2.i.i3279.i = load double, ptr %.elt1.i.i3278.i, align 8
  %tmp.i9.i3281.i = or i64 %tmp.i.i3274.i, 5
  %tmp.i10.i3282.i = mul i64 %tmp.i9.i3281.i, %tmp.i212
  %77 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3282.i
  %.unpack.i.i3283.i = load double, ptr %77, align 8
  %.elt1.i.i3284.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3282.i, i32 1
  %.unpack2.i.i3285.i = load double, ptr %.elt1.i.i3284.i, align 8
  %tmp.i.i.i3603.i = fadd double %.unpack.i.i3277.i, %.unpack.i.i3283.i
  %tmp.i23.i.i3604.i = fadd double %.unpack2.i.i3279.i, %.unpack2.i.i3285.i
  %tmp.i.i27.i3605.i = fsub double %.unpack.i.i3277.i, %.unpack.i.i3283.i
  %tmp.i23.i28.i3606.i = fsub double %.unpack2.i.i3279.i, %.unpack2.i.i3285.i
  %tmp.i9.i3287.i = or i64 %tmp.i.i3274.i, 3
  %tmp.i10.i3288.i = mul i64 %tmp.i9.i3287.i, %tmp.i212
  %78 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3288.i
  %.unpack.i.i3289.i = load double, ptr %78, align 8
  %.elt1.i.i3290.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3288.i, i32 1
  %.unpack2.i.i3291.i = load double, ptr %.elt1.i.i3290.i, align 8
  %tmp.i9.i3293.i = or i64 %tmp.i.i3274.i, 7
  %tmp.i10.i3294.i = mul i64 %tmp.i9.i3293.i, %tmp.i212
  %79 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3294.i
  %.unpack.i.i3295.i = load double, ptr %79, align 8
  %.elt1.i.i3296.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3294.i, i32 1
  %.unpack2.i.i3297.i = load double, ptr %.elt1.i.i3296.i, align 8
  %tmp.i.i.i3607.i = fadd double %.unpack.i.i3289.i, %.unpack.i.i3295.i
  %tmp.i23.i.i3608.i = fadd double %.unpack2.i.i3291.i, %.unpack2.i.i3297.i
  %tmp.i.i27.i3609.i = fsub double %.unpack.i.i3289.i, %.unpack.i.i3295.i
  %tmp.i23.i28.i3610.i = fsub double %.unpack2.i.i3291.i, %.unpack2.i.i3297.i
  %tmp.i.i.i3615.i = fadd double %tmp.i.i.i3603.i, %tmp.i.i.i3607.i
  %tmp.i23.i.i3616.i = fadd double %tmp.i23.i.i3604.i, %tmp.i23.i.i3608.i
  %tmp.i.i27.i3617.i = fsub double %tmp.i.i.i3603.i, %tmp.i.i.i3607.i
  %tmp.i23.i28.i3618.i = fsub double %tmp.i23.i.i3604.i, %tmp.i23.i.i3608.i
  %80 = fneg double %tmp.i.i27.i3617.i
  %81 = fneg double %tmp.i23.i28.i3618.i
  %.fca.1.extract.pn.i3622.i = select i1 %.not.i503, double %81, double %tmp.i23.i28.i3618.i
  %.pn22.i3623.i = select i1 %.not.i503, double %tmp.i.i27.i3617.i, double %80
  %82 = fneg double %tmp.i.i27.i3609.i
  %83 = fneg double %tmp.i23.i28.i3610.i
  %.fca.1.extract.pn.i3629.i = select i1 %.not.i503, double %83, double %tmp.i23.i28.i3610.i
  %.pn22.i3630.i = select i1 %.not.i503, double %tmp.i.i27.i3609.i, double %82
  %tmp.i.i.i3635.i = fadd double %tmp.i.i27.i3605.i, %.fca.1.extract.pn.i3629.i
  %tmp.i23.i.i3636.i = fadd double %tmp.i23.i28.i3606.i, %.pn22.i3630.i
  %tmp.i.i27.i3637.i = fsub double %tmp.i.i27.i3605.i, %.fca.1.extract.pn.i3629.i
  %tmp.i23.i28.i3638.i = fsub double %tmp.i23.i28.i3606.i, %.pn22.i3630.i
  %84 = fneg double %tmp.i23.i.i3636.i
  %tmp.i49.pn.in.p.i3642.i = select i1 %.not.i503, double %84, double %tmp.i23.i.i3636.i
  %tmp.i49.pn.in.i3643.i = fadd double %tmp.i.i.i3635.i, %tmp.i49.pn.in.p.i3642.i
  %85 = fneg double %tmp.i.i.i3635.i
  %tmp.i51.pn.in.p.i3644.i = select i1 %.not.i503, double %tmp.i.i.i3635.i, double %85
  %tmp.i51.pn.in.i3645.i = fadd double %tmp.i23.i.i3636.i, %tmp.i51.pn.in.p.i3644.i
  %tmp.i51.pn.i3646.i = fmul double %tmp.i51.pn.in.i3645.i, 0x3FE6A09E667F3BCD
  %tmp.i49.pn.i3647.i = fmul double %tmp.i49.pn.in.i3643.i, 0x3FE6A09E667F3BCD
  %tmp.i.i3653.i = fsub double %tmp.i23.i28.i3638.i, %tmp.i.i27.i3637.i
  %86 = fneg double %tmp.i.i27.i3637.i
  %tmp.i52.i3654.i = fsub double %86, %tmp.i23.i28.i3638.i
  %tmp.i49.pn.in.i3655.i = select i1 %.not.i503, double %tmp.i52.i3654.i, double %tmp.i.i3653.i
  %.pn57.i3656.i = select i1 %.not.i503, double %tmp.i.i27.i3637.i, double %86
  %tmp.i51.pn.in.i3657.i = fsub double %.pn57.i3656.i, %tmp.i23.i28.i3638.i
  %tmp.i51.pn.i3658.i = fmul double %tmp.i51.pn.in.i3657.i, 0x3FE6A09E667F3BCD
  %tmp.i49.pn.i3659.i = fmul double %tmp.i49.pn.in.i3655.i, 0x3FE6A09E667F3BCD
  %tmp.i10.i3299.i = mul i64 %tmp.i.i3274.i, %tmp.i212
  %87 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3299.i
  %.unpack.i.i3300.i = load double, ptr %87, align 8
  %.elt1.i.i3301.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3299.i, i32 1
  %.unpack2.i.i3302.i = load double, ptr %.elt1.i.i3301.i, align 8
  %tmp.i9.i3304.i = or i64 %tmp.i.i3274.i, 4
  %tmp.i10.i3305.i = mul i64 %tmp.i9.i3304.i, %tmp.i212
  %88 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3305.i
  %.unpack.i.i3306.i = load double, ptr %88, align 8
  %.elt1.i.i3307.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3305.i, i32 1
  %.unpack2.i.i3308.i = load double, ptr %.elt1.i.i3307.i, align 8
  %tmp.i.i.i3662.i = fadd double %.unpack.i.i3300.i, %.unpack.i.i3306.i
  %tmp.i23.i.i3663.i = fadd double %.unpack2.i.i3302.i, %.unpack2.i.i3308.i
  %tmp.i.i27.i3664.i = fsub double %.unpack.i.i3300.i, %.unpack.i.i3306.i
  %tmp.i23.i28.i3665.i = fsub double %.unpack2.i.i3302.i, %.unpack2.i.i3308.i
  %tmp.i9.i3310.i = or i64 %tmp.i.i3274.i, 2
  %tmp.i10.i3311.i = mul i64 %tmp.i9.i3310.i, %tmp.i212
  %89 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3311.i
  %.unpack.i.i3312.i = load double, ptr %89, align 8
  %.elt1.i.i3313.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3311.i, i32 1
  %.unpack2.i.i3314.i = load double, ptr %.elt1.i.i3313.i, align 8
  %tmp.i9.i3316.i = or i64 %tmp.i.i3274.i, 6
  %tmp.i10.i3317.i = mul i64 %tmp.i9.i3316.i, %tmp.i212
  %90 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3317.i
  %.unpack.i.i3318.i = load double, ptr %90, align 8
  %.elt1.i.i3319.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3317.i, i32 1
  %.unpack2.i.i3320.i = load double, ptr %.elt1.i.i3319.i, align 8
  %tmp.i.i.i3666.i = fadd double %.unpack.i.i3312.i, %.unpack.i.i3318.i
  %tmp.i23.i.i3667.i = fadd double %.unpack2.i.i3314.i, %.unpack2.i.i3320.i
  %tmp.i.i27.i3668.i = fsub double %.unpack.i.i3312.i, %.unpack.i.i3318.i
  %tmp.i23.i28.i3669.i = fsub double %.unpack2.i.i3314.i, %.unpack2.i.i3320.i
  %tmp.i.i3674.i = fadd double %tmp.i.i.i3662.i, %tmp.i.i.i3666.i
  %tmp.i23.i3675.i = fadd double %tmp.i23.i.i3663.i, %tmp.i23.i.i3667.i
  %tmp.i.i.i3678.i = fadd double %tmp.i.i.i3615.i, %tmp.i.i3674.i
  %tmp.i23.i.i3679.i = fadd double %tmp.i23.i.i3616.i, %tmp.i23.i3675.i
  %tmp.i.i27.i3680.i = fsub double %tmp.i.i3674.i, %tmp.i.i.i3615.i
  %tmp.i23.i28.i3681.i = fsub double %tmp.i23.i3675.i, %tmp.i23.i.i3616.i
  %tmp.i14.i3321.i = mul i64 %75, %tmp.i212
  %91 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3321.i
  store double %tmp.i.i.i3678.i, ptr %91, align 8
  %.repack1.i3323.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3321.i, i32 1
  store double %tmp.i23.i.i3679.i, ptr %.repack1.i3323.i, align 8
  %tmp.i13.i3326.i = add i64 %75, %tmp.i.i3325.i
  %tmp.i14.i3327.i = mul i64 %tmp.i13.i3326.i, %tmp.i212
  %92 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3327.i
  store double %tmp.i.i27.i3680.i, ptr %92, align 8
  %.repack1.i3329.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3327.i, i32 1
  store double %tmp.i23.i28.i3681.i, ptr %.repack1.i3329.i, align 8
  %tmp.i.i3686.i = fsub double %tmp.i.i.i3662.i, %tmp.i.i.i3666.i
  %tmp.i23.i3687.i = fsub double %tmp.i23.i.i3663.i, %tmp.i23.i.i3667.i
  %tmp.i.i.i3688.i = fadd double %.fca.1.extract.pn.i3622.i, %tmp.i.i3686.i
  %tmp.i23.i.i3689.i = fadd double %.pn22.i3623.i, %tmp.i23.i3687.i
  %tmp.i.i27.i3690.i = fsub double %tmp.i.i3686.i, %.fca.1.extract.pn.i3622.i
  %tmp.i23.i28.i3691.i = fsub double %tmp.i23.i3687.i, %.pn22.i3623.i
  %tmp.i13.i3332.i = add i64 %75, %tmp.i.i3331.i
  %tmp.i14.i3333.i = mul i64 %tmp.i13.i3332.i, %tmp.i212
  %93 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3333.i
  store double %tmp.i.i.i3688.i, ptr %93, align 8
  %.repack1.i3335.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3333.i, i32 1
  store double %tmp.i23.i.i3689.i, ptr %.repack1.i3335.i, align 8
  %tmp.i13.i3338.i = add i64 %75, %tmp.i.i3337.i
  %tmp.i14.i3339.i = mul i64 %tmp.i13.i3338.i, %tmp.i212
  %94 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3339.i
  store double %tmp.i.i27.i3690.i, ptr %94, align 8
  %.repack1.i3341.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3339.i, i32 1
  store double %tmp.i23.i28.i3691.i, ptr %.repack1.i3341.i, align 8
  %95 = fneg double %tmp.i.i27.i3668.i
  %96 = fneg double %tmp.i23.i28.i3669.i
  %.fca.1.extract.pn.i3695.i = select i1 %.not.i503, double %96, double %tmp.i23.i28.i3669.i
  %.pn22.i3696.i = select i1 %.not.i503, double %tmp.i.i27.i3668.i, double %95
  %tmp.i.i3701.i = fadd double %tmp.i.i27.i3664.i, %.fca.1.extract.pn.i3695.i
  %tmp.i23.i3702.i = fadd double %tmp.i23.i28.i3665.i, %.pn22.i3696.i
  %tmp.i.i.i3703.i = fadd double %tmp.i49.pn.i3647.i, %tmp.i.i3701.i
  %tmp.i23.i.i3704.i = fadd double %tmp.i51.pn.i3646.i, %tmp.i23.i3702.i
  %tmp.i.i27.i3705.i = fsub double %tmp.i.i3701.i, %tmp.i49.pn.i3647.i
  %tmp.i23.i28.i3706.i = fsub double %tmp.i23.i3702.i, %tmp.i51.pn.i3646.i
  %tmp.i13.i3343.i = add i64 %75, %.036
  %tmp.i14.i3344.i = mul i64 %tmp.i13.i3343.i, %tmp.i212
  %97 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3344.i
  store double %tmp.i.i.i3703.i, ptr %97, align 8
  %.repack1.i3346.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3344.i, i32 1
  store double %tmp.i23.i.i3704.i, ptr %.repack1.i3346.i, align 8
  %tmp.i13.i3349.i = add i64 %75, %tmp.i.i3348.i
  %tmp.i14.i3350.i = mul i64 %tmp.i13.i3349.i, %tmp.i212
  %98 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3350.i
  store double %tmp.i.i27.i3705.i, ptr %98, align 8
  %.repack1.i3352.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3350.i, i32 1
  store double %tmp.i23.i28.i3706.i, ptr %.repack1.i3352.i, align 8
  %tmp.i.i3709.i = fsub double %tmp.i.i27.i3664.i, %.fca.1.extract.pn.i3695.i
  %tmp.i23.i3710.i = fsub double %tmp.i23.i28.i3665.i, %.pn22.i3696.i
  %tmp.i.i.i3711.i = fadd double %tmp.i49.pn.i3659.i, %tmp.i.i3709.i
  %tmp.i23.i.i3712.i = fadd double %tmp.i51.pn.i3658.i, %tmp.i23.i3710.i
  %tmp.i.i27.i3713.i = fsub double %tmp.i.i3709.i, %tmp.i49.pn.i3659.i
  %tmp.i23.i28.i3714.i = fsub double %tmp.i23.i3710.i, %tmp.i51.pn.i3658.i
  %tmp.i13.i3355.i = add i64 %75, %tmp.i.i3354.i
  %tmp.i14.i3356.i = mul i64 %tmp.i13.i3355.i, %tmp.i212
  %99 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3356.i
  store double %tmp.i.i.i3711.i, ptr %99, align 8
  %.repack1.i3358.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3356.i, i32 1
  store double %tmp.i23.i.i3712.i, ptr %.repack1.i3358.i, align 8
  %tmp.i13.i3361.i = add i64 %75, %tmp.i.i3360.i
  %tmp.i14.i3362.i = mul i64 %tmp.i13.i3361.i, %tmp.i212
  %100 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3362.i
  store double %tmp.i.i27.i3713.i, ptr %100, align 8
  %.repack1.i3364.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3362.i, i32 1
  store double %tmp.i23.i28.i3714.i, ptr %.repack1.i3364.i, align 8
  br i1 %.not31903952.i, label %imp_for.body6.i276, label %imp_for.exit8.i274

imp_for.body6.i276:                               ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3949.i", %imp_for.body2.i273
  %101 = phi i64 [ %134, %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3949.i" ], [ 1, %imp_for.body2.i273 ]
  %tmp.i11.i.i277 = add i64 %101, %tmp.i10.i3276.i
  %102 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i277
  %.unpack.i.i3369.i = load double, ptr %102, align 8
  %.elt1.i.i3370.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i277, i32 1
  %.unpack2.i.i3371.i = load double, ptr %.elt1.i.i3370.i, align 8
  %tmp.i11.i3375.i = add i64 %101, %tmp.i10.i3282.i
  %103 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3375.i
  %.unpack.i.i3376.i = load double, ptr %103, align 8
  %.elt1.i.i3377.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3375.i, i32 1
  %.unpack2.i.i3378.i = load double, ptr %.elt1.i.i3377.i, align 8
  %tmp.i.i.i3715.i = fadd double %.unpack.i.i3369.i, %.unpack.i.i3376.i
  %tmp.i23.i.i3716.i = fadd double %.unpack2.i.i3371.i, %.unpack2.i.i3378.i
  %tmp.i.i27.i3717.i = fsub double %.unpack.i.i3369.i, %.unpack.i.i3376.i
  %tmp.i23.i28.i3718.i = fsub double %.unpack2.i.i3371.i, %.unpack2.i.i3378.i
  %tmp.i11.i3382.i = add i64 %101, %tmp.i10.i3288.i
  %104 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3382.i
  %.unpack.i.i3383.i = load double, ptr %104, align 8
  %.elt1.i.i3384.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3382.i, i32 1
  %.unpack2.i.i3385.i = load double, ptr %.elt1.i.i3384.i, align 8
  %tmp.i11.i3389.i = add i64 %101, %tmp.i10.i3294.i
  %105 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3389.i
  %.unpack.i.i3390.i = load double, ptr %105, align 8
  %.elt1.i.i3391.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3389.i, i32 1
  %.unpack2.i.i3392.i = load double, ptr %.elt1.i.i3391.i, align 8
  %tmp.i.i.i3719.i = fadd double %.unpack.i.i3383.i, %.unpack.i.i3390.i
  %tmp.i23.i.i3720.i = fadd double %.unpack2.i.i3385.i, %.unpack2.i.i3392.i
  %tmp.i.i27.i3721.i = fsub double %.unpack.i.i3383.i, %.unpack.i.i3390.i
  %tmp.i23.i28.i3722.i = fsub double %.unpack2.i.i3385.i, %.unpack2.i.i3392.i
  %106 = fneg double %tmp.i.i27.i3721.i
  %107 = fneg double %tmp.i23.i28.i3722.i
  %.fca.1.extract.pn.i3726.i = select i1 %.not.i503, double %107, double %tmp.i23.i28.i3722.i
  %.pn22.i3727.i = select i1 %.not.i503, double %tmp.i.i27.i3721.i, double %106
  %tmp.i.i.i3734.i = fadd double %tmp.i.i.i3715.i, %tmp.i.i.i3719.i
  %tmp.i23.i.i3735.i = fadd double %tmp.i23.i.i3716.i, %tmp.i23.i.i3720.i
  %tmp.i.i27.i3736.i = fsub double %tmp.i.i.i3715.i, %tmp.i.i.i3719.i
  %tmp.i23.i28.i3737.i = fsub double %tmp.i23.i.i3716.i, %tmp.i23.i.i3720.i
  %108 = fneg double %tmp.i.i27.i3736.i
  %109 = fneg double %tmp.i23.i28.i3737.i
  %.fca.1.extract.pn.i3741.i = select i1 %.not.i503, double %109, double %tmp.i23.i28.i3737.i
  %.pn22.i3742.i = select i1 %.not.i503, double %tmp.i.i27.i3736.i, double %108
  %tmp.i.i.i3747.i = fadd double %tmp.i.i27.i3717.i, %.fca.1.extract.pn.i3726.i
  %tmp.i23.i.i3748.i = fadd double %tmp.i23.i28.i3718.i, %.pn22.i3727.i
  %tmp.i.i27.i3749.i = fsub double %tmp.i.i27.i3717.i, %.fca.1.extract.pn.i3726.i
  %tmp.i23.i28.i3750.i = fsub double %tmp.i23.i28.i3718.i, %.pn22.i3727.i
  %110 = fneg double %tmp.i23.i.i3748.i
  %tmp.i49.pn.in.p.i3754.i = select i1 %.not.i503, double %110, double %tmp.i23.i.i3748.i
  %tmp.i49.pn.in.i3755.i = fadd double %tmp.i.i.i3747.i, %tmp.i49.pn.in.p.i3754.i
  %111 = fneg double %tmp.i.i.i3747.i
  %tmp.i51.pn.in.p.i3756.i = select i1 %.not.i503, double %tmp.i.i.i3747.i, double %111
  %tmp.i51.pn.in.i3757.i = fadd double %tmp.i23.i.i3748.i, %tmp.i51.pn.in.p.i3756.i
  %tmp.i51.pn.i3758.i = fmul double %tmp.i51.pn.in.i3757.i, 0x3FE6A09E667F3BCD
  %tmp.i49.pn.i3759.i = fmul double %tmp.i49.pn.in.i3755.i, 0x3FE6A09E667F3BCD
  %tmp.i.i3765.i = fsub double %tmp.i23.i28.i3750.i, %tmp.i.i27.i3749.i
  %112 = fneg double %tmp.i.i27.i3749.i
  %tmp.i52.i3766.i = fsub double %112, %tmp.i23.i28.i3750.i
  %tmp.i49.pn.in.i3767.i = select i1 %.not.i503, double %tmp.i52.i3766.i, double %tmp.i.i3765.i
  %.pn57.i3768.i = select i1 %.not.i503, double %tmp.i.i27.i3749.i, double %112
  %tmp.i51.pn.in.i3769.i = fsub double %.pn57.i3768.i, %tmp.i23.i28.i3750.i
  %tmp.i51.pn.i3770.i = fmul double %tmp.i51.pn.in.i3769.i, 0x3FE6A09E667F3BCD
  %tmp.i49.pn.i3771.i = fmul double %tmp.i49.pn.in.i3767.i, 0x3FE6A09E667F3BCD
  %tmp.i11.i3395.i = add i64 %101, %tmp.i10.i3299.i
  %113 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3395.i
  %.unpack.i.i3396.i = load double, ptr %113, align 8
  %.elt1.i.i3397.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3395.i, i32 1
  %.unpack2.i.i3398.i = load double, ptr %.elt1.i.i3397.i, align 8
  %tmp.i11.i3402.i = add i64 %101, %tmp.i10.i3305.i
  %114 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3402.i
  %.unpack.i.i3403.i = load double, ptr %114, align 8
  %.elt1.i.i3404.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3402.i, i32 1
  %.unpack2.i.i3405.i = load double, ptr %.elt1.i.i3404.i, align 8
  %tmp.i.i.i3774.i = fadd double %.unpack.i.i3396.i, %.unpack.i.i3403.i
  %tmp.i23.i.i3775.i = fadd double %.unpack2.i.i3398.i, %.unpack2.i.i3405.i
  %tmp.i.i27.i3776.i = fsub double %.unpack.i.i3396.i, %.unpack.i.i3403.i
  %tmp.i23.i28.i3777.i = fsub double %.unpack2.i.i3398.i, %.unpack2.i.i3405.i
  %tmp.i11.i3409.i = add i64 %101, %tmp.i10.i3311.i
  %115 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3409.i
  %.unpack.i.i3410.i = load double, ptr %115, align 8
  %.elt1.i.i3411.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3409.i, i32 1
  %.unpack2.i.i3412.i = load double, ptr %.elt1.i.i3411.i, align 8
  %tmp.i11.i3416.i = add i64 %101, %tmp.i10.i3317.i
  %116 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3416.i
  %.unpack.i.i3417.i = load double, ptr %116, align 8
  %.elt1.i.i3418.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3416.i, i32 1
  %.unpack2.i.i3419.i = load double, ptr %.elt1.i.i3418.i, align 8
  %tmp.i.i.i3778.i = fadd double %.unpack.i.i3410.i, %.unpack.i.i3417.i
  %tmp.i23.i.i3779.i = fadd double %.unpack2.i.i3412.i, %.unpack2.i.i3419.i
  %tmp.i.i27.i3780.i = fsub double %.unpack.i.i3410.i, %.unpack.i.i3417.i
  %tmp.i23.i28.i3781.i = fsub double %.unpack2.i.i3412.i, %.unpack2.i.i3419.i
  %tmp.i.i.i3786.i = fadd double %tmp.i.i.i3774.i, %tmp.i.i.i3778.i
  %tmp.i23.i.i3787.i = fadd double %tmp.i23.i.i3775.i, %tmp.i23.i.i3779.i
  %tmp.i.i27.i3788.i = fsub double %tmp.i.i.i3774.i, %tmp.i.i.i3778.i
  %tmp.i23.i28.i3789.i = fsub double %tmp.i23.i.i3775.i, %tmp.i23.i.i3779.i
  %tmp.i15.i.i278 = add i64 %101, %tmp.i14.i3321.i
  %117 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i278
  %tmp.i.i3794.i = fadd double %tmp.i.i.i3734.i, %tmp.i.i.i3786.i
  %tmp.i23.i3795.i = fadd double %tmp.i23.i.i3735.i, %tmp.i23.i.i3787.i
  store double %tmp.i.i3794.i, ptr %117, align 8
  %.repack1.i3422.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i278, i32 1
  store double %tmp.i23.i3795.i, ptr %.repack1.i3422.i, align 8
  %tmp.i15.i3427.i = add i64 %101, %tmp.i14.i3327.i
  %118 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3427.i
  %tmp.i.i3800.i = fsub double %tmp.i.i.i3786.i, %tmp.i.i.i3734.i
  %tmp.i23.i3801.i = fsub double %tmp.i23.i.i3787.i, %tmp.i23.i.i3735.i
  %tmp.i9.i3429.i = add nsw i64 %101, -1
  %tmp.i10.i3430.i = add i64 %tmp.i9.i3429.i, %tmp.i8.i.i272
  %119 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3430.i
  %.unpack.i.i3431.i = load double, ptr %119, align 8
  %.elt1.i.i3432.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3430.i, i32 1
  %.unpack2.i.i3433.i = load double, ptr %.elt1.i.i3432.i, align 8
  %tmp.i101.i.i279 = fmul double %tmp.i.i3800.i, %.unpack.i.i3431.i
  %tmp.i102.i.i280 = fmul double %tmp.i23.i3801.i, %.unpack2.i.i3433.i
  br i1 %.not.i503, label %if.false.i.i291, label %if.true.i.i281

if.true.i.i281:                                   ; preds = %imp_for.body6.i276
  %tmp.i97.i.i282 = fadd double %tmp.i101.i.i279, %tmp.i102.i.i280
  %tmp.i98.i.i283 = fmul double %tmp.i23.i3801.i, %.unpack.i.i3431.i
  %tmp.i99.i.i284 = fmul double %tmp.i.i3800.i, %.unpack2.i.i3433.i
  %tmp.i100.i.i285 = fsub double %tmp.i98.i.i283, %tmp.i99.i.i284
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i286"

if.false.i.i291:                                  ; preds = %imp_for.body6.i276
  %tmp.i103.i.i292 = fsub double %tmp.i101.i.i279, %tmp.i102.i.i280
  %tmp.i104.i.i293 = fmul double %tmp.i.i3800.i, %.unpack2.i.i3433.i
  %tmp.i105.i.i294 = fmul double %tmp.i23.i3801.i, %.unpack.i.i3431.i
  %tmp.i106.i.i295 = fadd double %tmp.i105.i.i294, %tmp.i104.i.i293
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i286"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i286": ; preds = %if.false.i.i291, %if.true.i.i281
  %tmp.i97.pn.i.i287 = phi double [ %tmp.i97.i.i282, %if.true.i.i281 ], [ %tmp.i103.i.i292, %if.false.i.i291 ]
  %tmp.i100.pn.i.i288 = phi double [ %tmp.i100.i.i285, %if.true.i.i281 ], [ %tmp.i106.i.i295, %if.false.i.i291 ]
  store double %tmp.i97.pn.i.i287, ptr %118, align 8
  %.repack1.i3435.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3427.i, i32 1
  store double %tmp.i100.pn.i.i288, ptr %.repack1.i3435.i, align 8
  %tmp.i15.i3440.i = add i64 %101, %tmp.i14.i3333.i
  %120 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3440.i
  %tmp.i.i3807.i = fadd double %.fca.1.extract.pn.i3741.i, %tmp.i.i27.i3788.i
  %tmp.i23.i3808.i = fadd double %.pn22.i3742.i, %tmp.i23.i28.i3789.i
  %tmp.i10.i3443.i = add i64 %tmp.i9.i3429.i, %tmp.i.i3428.i
  %121 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3443.i
  %.unpack.i.i3444.i = load double, ptr %121, align 8
  %.elt1.i.i3445.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3443.i, i32 1
  %.unpack2.i.i3446.i = load double, ptr %.elt1.i.i3445.i, align 8
  %tmp.i101.i3810.i = fmul double %tmp.i.i3807.i, %.unpack.i.i3444.i
  %tmp.i102.i3811.i = fmul double %tmp.i23.i3808.i, %.unpack2.i.i3446.i
  br i1 %.not.i503, label %if.false.i3821.i, label %if.true.i3812.i

if.true.i3812.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i286"
  %tmp.i97.i3813.i = fadd double %tmp.i101.i3810.i, %tmp.i102.i3811.i
  %tmp.i98.i3814.i = fmul double %tmp.i23.i3808.i, %.unpack.i.i3444.i
  %tmp.i99.i3815.i = fmul double %tmp.i.i3807.i, %.unpack2.i.i3446.i
  %tmp.i100.i3816.i = fsub double %tmp.i98.i3814.i, %tmp.i99.i3815.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3826.i"

if.false.i3821.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i286"
  %tmp.i103.i3822.i = fsub double %tmp.i101.i3810.i, %tmp.i102.i3811.i
  %tmp.i104.i3823.i = fmul double %tmp.i.i3807.i, %.unpack2.i.i3446.i
  %tmp.i105.i3824.i = fmul double %tmp.i23.i3808.i, %.unpack.i.i3444.i
  %tmp.i106.i3825.i = fadd double %tmp.i105.i3824.i, %tmp.i104.i3823.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3826.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3826.i": ; preds = %if.false.i3821.i, %if.true.i3812.i
  %tmp.i97.pn.i3817.i = phi double [ %tmp.i97.i3813.i, %if.true.i3812.i ], [ %tmp.i103.i3822.i, %if.false.i3821.i ]
  %tmp.i100.pn.i3818.i = phi double [ %tmp.i100.i3816.i, %if.true.i3812.i ], [ %tmp.i106.i3825.i, %if.false.i3821.i ]
  store double %tmp.i97.pn.i3817.i, ptr %120, align 8
  %.repack1.i3448.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3440.i, i32 1
  store double %tmp.i100.pn.i3818.i, ptr %.repack1.i3448.i, align 8
  %tmp.i15.i3453.i = add i64 %101, %tmp.i14.i3339.i
  %122 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3453.i
  %tmp.i.i3829.i = fsub double %tmp.i.i27.i3788.i, %.fca.1.extract.pn.i3741.i
  %tmp.i23.i3830.i = fsub double %tmp.i23.i28.i3789.i, %.pn22.i3742.i
  %tmp.i10.i3457.i = add i64 %tmp.i9.i3429.i, %tmp.i8.i3455.i
  %123 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3457.i
  %.unpack.i.i3458.i = load double, ptr %123, align 8
  %.elt1.i.i3459.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3457.i, i32 1
  %.unpack2.i.i3460.i = load double, ptr %.elt1.i.i3459.i, align 8
  %tmp.i101.i3832.i = fmul double %tmp.i.i3829.i, %.unpack.i.i3458.i
  %tmp.i102.i3833.i = fmul double %tmp.i23.i3830.i, %.unpack2.i.i3460.i
  br i1 %.not.i503, label %if.false.i3843.i, label %if.true.i3834.i

if.true.i3834.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3826.i"
  %tmp.i97.i3835.i = fadd double %tmp.i101.i3832.i, %tmp.i102.i3833.i
  %tmp.i98.i3836.i = fmul double %tmp.i23.i3830.i, %.unpack.i.i3458.i
  %tmp.i99.i3837.i = fmul double %tmp.i.i3829.i, %.unpack2.i.i3460.i
  %tmp.i100.i3838.i = fsub double %tmp.i98.i3836.i, %tmp.i99.i3837.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3848.i"

if.false.i3843.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3826.i"
  %tmp.i103.i3844.i = fsub double %tmp.i101.i3832.i, %tmp.i102.i3833.i
  %tmp.i104.i3845.i = fmul double %tmp.i.i3829.i, %.unpack2.i.i3460.i
  %tmp.i105.i3846.i = fmul double %tmp.i23.i3830.i, %.unpack.i.i3458.i
  %tmp.i106.i3847.i = fadd double %tmp.i105.i3846.i, %tmp.i104.i3845.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3848.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3848.i": ; preds = %if.false.i3843.i, %if.true.i3834.i
  %tmp.i97.pn.i3839.i = phi double [ %tmp.i97.i3835.i, %if.true.i3834.i ], [ %tmp.i103.i3844.i, %if.false.i3843.i ]
  %tmp.i100.pn.i3840.i = phi double [ %tmp.i100.i3838.i, %if.true.i3834.i ], [ %tmp.i106.i3847.i, %if.false.i3843.i ]
  store double %tmp.i97.pn.i3839.i, ptr %122, align 8
  %.repack1.i3462.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3453.i, i32 1
  store double %tmp.i100.pn.i3840.i, ptr %.repack1.i3462.i, align 8
  %124 = fneg double %tmp.i.i27.i3780.i
  %125 = fneg double %tmp.i23.i28.i3781.i
  %.fca.1.extract.pn.i3852.i = select i1 %.not.i503, double %125, double %tmp.i23.i28.i3781.i
  %.pn22.i3853.i = select i1 %.not.i503, double %tmp.i.i27.i3780.i, double %124
  %tmp.i.i.i3858.i = fadd double %tmp.i.i27.i3776.i, %.fca.1.extract.pn.i3852.i
  %tmp.i23.i.i3859.i = fadd double %tmp.i23.i28.i3777.i, %.pn22.i3853.i
  %tmp.i.i27.i3860.i = fsub double %tmp.i.i27.i3776.i, %.fca.1.extract.pn.i3852.i
  %tmp.i23.i28.i3861.i = fsub double %tmp.i23.i28.i3777.i, %.pn22.i3853.i
  %tmp.i15.i3466.i = add i64 %101, %tmp.i14.i3344.i
  %126 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3466.i
  %tmp.i.i3864.i = fadd double %tmp.i49.pn.i3759.i, %tmp.i.i.i3858.i
  %tmp.i23.i3865.i = fadd double %tmp.i51.pn.i3758.i, %tmp.i23.i.i3859.i
  %127 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i3429.i
  %.unpack.i.i3469.i = load double, ptr %127, align 8
  %.elt1.i.i3470.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i3429.i, i32 1
  %.unpack2.i.i3471.i = load double, ptr %.elt1.i.i3470.i, align 8
  %tmp.i101.i3867.i = fmul double %tmp.i.i3864.i, %.unpack.i.i3469.i
  %tmp.i102.i3868.i = fmul double %tmp.i23.i3865.i, %.unpack2.i.i3471.i
  br i1 %.not.i503, label %if.false.i3878.i, label %if.true.i3869.i

if.true.i3869.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3848.i"
  %tmp.i97.i3870.i = fadd double %tmp.i101.i3867.i, %tmp.i102.i3868.i
  %tmp.i98.i3871.i = fmul double %tmp.i23.i3865.i, %.unpack.i.i3469.i
  %tmp.i99.i3872.i = fmul double %tmp.i.i3864.i, %.unpack2.i.i3471.i
  %tmp.i100.i3873.i = fsub double %tmp.i98.i3871.i, %tmp.i99.i3872.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3883.i"

if.false.i3878.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3848.i"
  %tmp.i103.i3879.i = fsub double %tmp.i101.i3867.i, %tmp.i102.i3868.i
  %tmp.i104.i3880.i = fmul double %tmp.i.i3864.i, %.unpack2.i.i3471.i
  %tmp.i105.i3881.i = fmul double %tmp.i23.i3865.i, %.unpack.i.i3469.i
  %tmp.i106.i3882.i = fadd double %tmp.i105.i3881.i, %tmp.i104.i3880.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3883.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3883.i": ; preds = %if.false.i3878.i, %if.true.i3869.i
  %tmp.i97.pn.i3874.i = phi double [ %tmp.i97.i3870.i, %if.true.i3869.i ], [ %tmp.i103.i3879.i, %if.false.i3878.i ]
  %tmp.i100.pn.i3875.i = phi double [ %tmp.i100.i3873.i, %if.true.i3869.i ], [ %tmp.i106.i3882.i, %if.false.i3878.i ]
  store double %tmp.i97.pn.i3874.i, ptr %126, align 8
  %.repack1.i3473.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3466.i, i32 1
  store double %tmp.i100.pn.i3875.i, ptr %.repack1.i3473.i, align 8
  %tmp.i15.i3478.i = add i64 %101, %tmp.i14.i3350.i
  %128 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3478.i
  %tmp.i.i3886.i = fsub double %tmp.i.i.i3858.i, %tmp.i49.pn.i3759.i
  %tmp.i23.i3887.i = fsub double %tmp.i23.i.i3859.i, %tmp.i51.pn.i3758.i
  %tmp.i10.i3482.i = add i64 %tmp.i9.i3429.i, %tmp.i8.i3480.i
  %129 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3482.i
  %.unpack.i.i3483.i = load double, ptr %129, align 8
  %.elt1.i.i3484.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3482.i, i32 1
  %.unpack2.i.i3485.i = load double, ptr %.elt1.i.i3484.i, align 8
  %tmp.i101.i3889.i = fmul double %tmp.i.i3886.i, %.unpack.i.i3483.i
  %tmp.i102.i3890.i = fmul double %tmp.i23.i3887.i, %.unpack2.i.i3485.i
  br i1 %.not.i503, label %if.false.i3900.i, label %if.true.i3891.i

if.true.i3891.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3883.i"
  %tmp.i97.i3892.i = fadd double %tmp.i101.i3889.i, %tmp.i102.i3890.i
  %tmp.i98.i3893.i = fmul double %tmp.i23.i3887.i, %.unpack.i.i3483.i
  %tmp.i99.i3894.i = fmul double %tmp.i.i3886.i, %.unpack2.i.i3485.i
  %tmp.i100.i3895.i = fsub double %tmp.i98.i3893.i, %tmp.i99.i3894.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3905.i"

if.false.i3900.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3883.i"
  %tmp.i103.i3901.i = fsub double %tmp.i101.i3889.i, %tmp.i102.i3890.i
  %tmp.i104.i3902.i = fmul double %tmp.i.i3886.i, %.unpack2.i.i3485.i
  %tmp.i105.i3903.i = fmul double %tmp.i23.i3887.i, %.unpack.i.i3483.i
  %tmp.i106.i3904.i = fadd double %tmp.i105.i3903.i, %tmp.i104.i3902.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3905.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3905.i": ; preds = %if.false.i3900.i, %if.true.i3891.i
  %tmp.i97.pn.i3896.i = phi double [ %tmp.i97.i3892.i, %if.true.i3891.i ], [ %tmp.i103.i3901.i, %if.false.i3900.i ]
  %tmp.i100.pn.i3897.i = phi double [ %tmp.i100.i3895.i, %if.true.i3891.i ], [ %tmp.i106.i3904.i, %if.false.i3900.i ]
  store double %tmp.i97.pn.i3896.i, ptr %128, align 8
  %.repack1.i3487.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3478.i, i32 1
  store double %tmp.i100.pn.i3897.i, ptr %.repack1.i3487.i, align 8
  %tmp.i15.i3492.i = add i64 %101, %tmp.i14.i3356.i
  %130 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3492.i
  %tmp.i.i3908.i = fadd double %tmp.i49.pn.i3771.i, %tmp.i.i27.i3860.i
  %tmp.i23.i3909.i = fadd double %tmp.i51.pn.i3770.i, %tmp.i23.i28.i3861.i
  %tmp.i10.i3496.i = add i64 %tmp.i9.i3429.i, %tmp.i8.i3494.i
  %131 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3496.i
  %.unpack.i.i3497.i = load double, ptr %131, align 8
  %.elt1.i.i3498.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3496.i, i32 1
  %.unpack2.i.i3499.i = load double, ptr %.elt1.i.i3498.i, align 8
  %tmp.i101.i3911.i = fmul double %tmp.i.i3908.i, %.unpack.i.i3497.i
  %tmp.i102.i3912.i = fmul double %tmp.i23.i3909.i, %.unpack2.i.i3499.i
  br i1 %.not.i503, label %if.false.i3922.i, label %if.true.i3913.i

if.true.i3913.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3905.i"
  %tmp.i97.i3914.i = fadd double %tmp.i101.i3911.i, %tmp.i102.i3912.i
  %tmp.i98.i3915.i = fmul double %tmp.i23.i3909.i, %.unpack.i.i3497.i
  %tmp.i99.i3916.i = fmul double %tmp.i.i3908.i, %.unpack2.i.i3499.i
  %tmp.i100.i3917.i = fsub double %tmp.i98.i3915.i, %tmp.i99.i3916.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3927.i"

if.false.i3922.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3905.i"
  %tmp.i103.i3923.i = fsub double %tmp.i101.i3911.i, %tmp.i102.i3912.i
  %tmp.i104.i3924.i = fmul double %tmp.i.i3908.i, %.unpack2.i.i3499.i
  %tmp.i105.i3925.i = fmul double %tmp.i23.i3909.i, %.unpack.i.i3497.i
  %tmp.i106.i3926.i = fadd double %tmp.i105.i3925.i, %tmp.i104.i3924.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3927.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3927.i": ; preds = %if.false.i3922.i, %if.true.i3913.i
  %tmp.i97.pn.i3918.i = phi double [ %tmp.i97.i3914.i, %if.true.i3913.i ], [ %tmp.i103.i3923.i, %if.false.i3922.i ]
  %tmp.i100.pn.i3919.i = phi double [ %tmp.i100.i3917.i, %if.true.i3913.i ], [ %tmp.i106.i3926.i, %if.false.i3922.i ]
  store double %tmp.i97.pn.i3918.i, ptr %130, align 8
  %.repack1.i3501.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3492.i, i32 1
  store double %tmp.i100.pn.i3919.i, ptr %.repack1.i3501.i, align 8
  %tmp.i15.i3506.i = add i64 %101, %tmp.i14.i3362.i
  %132 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3506.i
  %tmp.i.i3930.i = fsub double %tmp.i.i27.i3860.i, %tmp.i49.pn.i3771.i
  %tmp.i23.i3931.i = fsub double %tmp.i23.i28.i3861.i, %tmp.i51.pn.i3770.i
  %tmp.i10.i3510.i = add i64 %tmp.i9.i3429.i, %tmp.i8.i3508.i
  %133 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3510.i
  %.unpack.i.i3511.i = load double, ptr %133, align 8
  %.elt1.i.i3512.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3510.i, i32 1
  %.unpack2.i.i3513.i = load double, ptr %.elt1.i.i3512.i, align 8
  %tmp.i101.i3933.i = fmul double %tmp.i.i3930.i, %.unpack.i.i3511.i
  %tmp.i102.i3934.i = fmul double %tmp.i23.i3931.i, %.unpack2.i.i3513.i
  br i1 %.not.i503, label %if.false.i3944.i, label %if.true.i3935.i

if.true.i3935.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3927.i"
  %tmp.i97.i3936.i = fadd double %tmp.i101.i3933.i, %tmp.i102.i3934.i
  %tmp.i98.i3937.i = fmul double %tmp.i23.i3931.i, %.unpack.i.i3511.i
  %tmp.i99.i3938.i = fmul double %tmp.i.i3930.i, %.unpack2.i.i3513.i
  %tmp.i100.i3939.i = fsub double %tmp.i98.i3937.i, %tmp.i99.i3938.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3949.i"

if.false.i3944.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3927.i"
  %tmp.i103.i3945.i = fsub double %tmp.i101.i3933.i, %tmp.i102.i3934.i
  %tmp.i104.i3946.i = fmul double %tmp.i.i3930.i, %.unpack2.i.i3513.i
  %tmp.i105.i3947.i = fmul double %tmp.i23.i3931.i, %.unpack.i.i3511.i
  %tmp.i106.i3948.i = fadd double %tmp.i105.i3947.i, %tmp.i104.i3946.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3949.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3949.i": ; preds = %if.false.i3944.i, %if.true.i3935.i
  %tmp.i97.pn.i3940.i = phi double [ %tmp.i97.i3936.i, %if.true.i3935.i ], [ %tmp.i103.i3945.i, %if.false.i3944.i ]
  %tmp.i100.pn.i3941.i = phi double [ %tmp.i100.i3939.i, %if.true.i3935.i ], [ %tmp.i106.i3948.i, %if.false.i3944.i ]
  store double %tmp.i97.pn.i3940.i, ptr %132, align 8
  %.repack1.i3515.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3506.i, i32 1
  store double %tmp.i100.pn.i3941.i, ptr %.repack1.i3515.i, align 8
  %134 = add nuw nsw i64 %101, 1
  %exitcond.not.i289 = icmp eq i64 %134, %tmp.i212
  br i1 %exitcond.not.i289, label %imp_for.exit8.i274, label %imp_for.body6.i276

imp_for.exit8.i274:                               ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3949.i", %imp_for.body2.i273
  %135 = add nuw nsw i64 %75, 1
  %exitcond3956.not.i = icmp eq i64 %135, %.036
  br i1 %exitcond3956.not.i, label %if.exit3, label %imp_for.body2.i273

if.true7:                                         ; preds = %imp_for.body
  %tmp.i.not.i328 = icmp eq i64 %tmp.i212, 1
  %.not607743.i = icmp sgt i64 %.036, 0
  br i1 %tmp.i.not.i328, label %imp_for.cond.preheader.i334, label %imp_for.cond1.preheader.i329

imp_for.cond1.preheader.i329:                     ; preds = %if.true7
  br i1 %.not607743.i, label %imp_for.body2.lr.ph.i330, label %if.exit3

imp_for.body2.lr.ph.i330:                         ; preds = %imp_for.cond1.preheader.i329
  %.not606711.i = icmp sgt i64 %tmp.i212, 1
  br i1 %.not606711.i, label %imp_for.body2.lr.ph.split.us.i, label %imp_for.body2.i331

imp_for.body2.lr.ph.split.us.i:                   ; preds = %imp_for.body2.lr.ph.i330
  br i1 %.not.i503, label %imp_for.body2.us.us.i, label %imp_for.body2.us.i

imp_for.body2.us.us.i:                            ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.split.us.us.us.i, %imp_for.body2.lr.ph.split.us.i
  %136 = phi i64 [ %148, %imp_for.cond5.imp_for.exit8_crit_edge.split.us.us.us.i ], [ 0, %imp_for.body2.lr.ph.split.us.i ]
  %tmp.i14.i629.us.us.i = mul i64 %136, %tmp.i212
  %137 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i629.us.us.i
  %tmp.i.i630.us.us.i = shl nuw i64 %136, 1
  %tmp.i10.i631.us.us.i = mul i64 %tmp.i.i630.us.us.i, %tmp.i212
  %138 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i631.us.us.i
  %.unpack.i.i632.us.us.i = load double, ptr %138, align 8
  %.elt1.i.i633.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i631.us.us.i, i32 1
  %.unpack2.i.i634.us.us.i = load double, ptr %.elt1.i.i633.us.us.i, align 8
  %tmp.i9.i636.us.us.i = or i64 %tmp.i.i630.us.us.i, 1
  %tmp.i10.i637.us.us.i = mul i64 %tmp.i9.i636.us.us.i, %tmp.i212
  %139 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i637.us.us.i
  %.unpack.i.i638.us.us.i = load double, ptr %139, align 8
  %.elt1.i.i639.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i637.us.us.i, i32 1
  %.unpack2.i.i640.us.us.i = load double, ptr %.elt1.i.i639.us.us.i, align 8
  %tmp.i.i701.us.us.i = fadd double %.unpack.i.i632.us.us.i, %.unpack.i.i638.us.us.i
  %tmp.i23.i702.us.us.i = fadd double %.unpack2.i.i634.us.us.i, %.unpack2.i.i640.us.us.i
  store double %tmp.i.i701.us.us.i, ptr %137, align 8
  %.repack1.i642.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i629.us.us.i, i32 1
  store double %tmp.i23.i702.us.us.i, ptr %.repack1.i642.us.us.i, align 8
  %tmp.i13.i644.us.us.i = add i64 %136, %.036
  %tmp.i14.i645.us.us.i = mul i64 %tmp.i13.i644.us.us.i, %tmp.i212
  %140 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i645.us.us.i
  %tmp.i.i703.us.us.i = fsub double %.unpack.i.i632.us.us.i, %.unpack.i.i638.us.us.i
  %tmp.i23.i704.us.us.i = fsub double %.unpack2.i.i634.us.us.i, %.unpack2.i.i640.us.us.i
  store double %tmp.i.i703.us.us.i, ptr %140, align 8
  %.repack1.i658.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i645.us.us.i, i32 1
  store double %tmp.i23.i704.us.us.i, ptr %.repack1.i658.us.us.i, align 8
  br label %imp_for.body6.us.us.us.i

imp_for.body6.us.us.us.i:                         ; preds = %imp_for.body6.us.us.us.i, %imp_for.body2.us.us.i
  %141 = phi i64 [ 1, %imp_for.body2.us.us.i ], [ %147, %imp_for.body6.us.us.us.i ]
  %tmp.i15.i.us.us.us.i = add i64 %141, %tmp.i14.i629.us.us.i
  %142 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.us.us.us.i
  %tmp.i11.i.us.us.us.i = add i64 %141, %tmp.i10.i631.us.us.i
  %143 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.us.us.us.i
  %.unpack.i.i663.us.us.us.i = load double, ptr %143, align 8
  %.elt1.i.i664.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.us.us.us.i, i32 1
  %.unpack2.i.i665.us.us.us.i = load double, ptr %.elt1.i.i664.us.us.us.i, align 8
  %tmp.i11.i669.us.us.us.i = add i64 %141, %tmp.i10.i637.us.us.i
  %144 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i669.us.us.us.i
  %.unpack.i.i670.us.us.us.i = load double, ptr %144, align 8
  %.elt1.i.i671.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i669.us.us.us.i, i32 1
  %.unpack2.i.i672.us.us.us.i = load double, ptr %.elt1.i.i671.us.us.us.i, align 8
  %tmp.i.i705.us.us.us.i = fadd double %.unpack.i.i663.us.us.us.i, %.unpack.i.i670.us.us.us.i
  %tmp.i23.i706.us.us.us.i = fadd double %.unpack2.i.i665.us.us.us.i, %.unpack2.i.i672.us.us.us.i
  store double %tmp.i.i705.us.us.us.i, ptr %142, align 8
  %.repack1.i674.us.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.us.us.us.i, i32 1
  store double %tmp.i23.i706.us.us.us.i, ptr %.repack1.i674.us.us.us.i, align 8
  %tmp.i15.i678.us.us.us.i = add i64 %141, %tmp.i14.i645.us.us.i
  %145 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i678.us.us.us.i
  %tmp.i.i707.us.us.us.i = fsub double %.unpack.i.i663.us.us.us.i, %.unpack.i.i670.us.us.us.i
  %tmp.i23.i708.us.us.us.i = fsub double %.unpack2.i.i665.us.us.us.i, %.unpack2.i.i672.us.us.us.i
  %tmp.i8.i.us.us.us.i = add nsw i64 %141, -1
  %146 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i8.i.us.us.us.i
  %.unpack.i.i692.us.us.us.i = load double, ptr %146, align 8
  %.elt1.i.i693.us.us.us.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i8.i.us.us.us.i, i32 1
  %.unpack2.i.i694.us.us.us.i = load double, ptr %.elt1.i.i693.us.us.us.i, align 8
  %tmp.i101.i.us.us.us.i = fmul double %tmp.i.i707.us.us.us.i, %.unpack.i.i692.us.us.us.i
  %tmp.i102.i.us.us.us.i = fmul double %tmp.i23.i708.us.us.us.i, %.unpack2.i.i694.us.us.us.i
  %tmp.i103.i.us.us.us.i = fsub double %tmp.i101.i.us.us.us.i, %tmp.i102.i.us.us.us.i
  %tmp.i104.i.us.us.us.i = fmul double %tmp.i.i707.us.us.us.i, %.unpack2.i.i694.us.us.us.i
  %tmp.i105.i.us.us.us.i = fmul double %tmp.i23.i708.us.us.us.i, %.unpack.i.i692.us.us.us.i
  %tmp.i106.i.us.us.us.i = fadd double %tmp.i105.i.us.us.us.i, %tmp.i104.i.us.us.us.i
  store double %tmp.i103.i.us.us.us.i, ptr %145, align 8
  %.repack1.i696.us.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i678.us.us.us.i, i32 1
  store double %tmp.i106.i.us.us.us.i, ptr %.repack1.i696.us.us.us.i, align 8
  %147 = add nuw nsw i64 %141, 1
  %exitcond749.not.i = icmp eq i64 %147, %tmp.i212
  br i1 %exitcond749.not.i, label %imp_for.cond5.imp_for.exit8_crit_edge.split.us.us.us.i, label %imp_for.body6.us.us.us.i

imp_for.cond5.imp_for.exit8_crit_edge.split.us.us.us.i: ; preds = %imp_for.body6.us.us.us.i
  %148 = add nuw nsw i64 %136, 1
  %exitcond750.not.i = icmp eq i64 %148, %.036
  br i1 %exitcond750.not.i, label %if.exit3, label %imp_for.body2.us.us.i

imp_for.body2.us.i:                               ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.split.us741.i, %imp_for.body2.lr.ph.split.us.i
  %149 = phi i64 [ %161, %imp_for.cond5.imp_for.exit8_crit_edge.split.us741.i ], [ 0, %imp_for.body2.lr.ph.split.us.i ]
  %tmp.i14.i629.us.i = mul i64 %149, %tmp.i212
  %150 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i629.us.i
  %tmp.i.i630.us.i = shl nuw i64 %149, 1
  %tmp.i10.i631.us.i = mul i64 %tmp.i.i630.us.i, %tmp.i212
  %151 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i631.us.i
  %.unpack.i.i632.us.i = load double, ptr %151, align 8
  %.elt1.i.i633.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i631.us.i, i32 1
  %.unpack2.i.i634.us.i = load double, ptr %.elt1.i.i633.us.i, align 8
  %tmp.i9.i636.us.i = or i64 %tmp.i.i630.us.i, 1
  %tmp.i10.i637.us.i = mul i64 %tmp.i9.i636.us.i, %tmp.i212
  %152 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i637.us.i
  %.unpack.i.i638.us.i = load double, ptr %152, align 8
  %.elt1.i.i639.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i637.us.i, i32 1
  %.unpack2.i.i640.us.i = load double, ptr %.elt1.i.i639.us.i, align 8
  %tmp.i.i701.us.i = fadd double %.unpack.i.i632.us.i, %.unpack.i.i638.us.i
  %tmp.i23.i702.us.i = fadd double %.unpack2.i.i634.us.i, %.unpack2.i.i640.us.i
  store double %tmp.i.i701.us.i, ptr %150, align 8
  %.repack1.i642.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i629.us.i, i32 1
  store double %tmp.i23.i702.us.i, ptr %.repack1.i642.us.i, align 8
  %tmp.i13.i644.us.i = add i64 %149, %.036
  %tmp.i14.i645.us.i = mul i64 %tmp.i13.i644.us.i, %tmp.i212
  %153 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i645.us.i
  %tmp.i.i703.us.i = fsub double %.unpack.i.i632.us.i, %.unpack.i.i638.us.i
  %tmp.i23.i704.us.i = fsub double %.unpack2.i.i634.us.i, %.unpack2.i.i640.us.i
  store double %tmp.i.i703.us.i, ptr %153, align 8
  %.repack1.i658.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i645.us.i, i32 1
  store double %tmp.i23.i704.us.i, ptr %.repack1.i658.us.i, align 8
  br label %imp_for.body6.us713.i

imp_for.body6.us713.i:                            ; preds = %imp_for.body6.us713.i, %imp_for.body2.us.i
  %154 = phi i64 [ 1, %imp_for.body2.us.i ], [ %160, %imp_for.body6.us713.i ]
  %tmp.i15.i.us714.i = add i64 %154, %tmp.i14.i629.us.i
  %155 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.us714.i
  %tmp.i11.i.us715.i = add i64 %154, %tmp.i10.i631.us.i
  %156 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.us715.i
  %.unpack.i.i663.us716.i = load double, ptr %156, align 8
  %.elt1.i.i664.us717.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.us715.i, i32 1
  %.unpack2.i.i665.us718.i = load double, ptr %.elt1.i.i664.us717.i, align 8
  %tmp.i11.i669.us719.i = add i64 %154, %tmp.i10.i637.us.i
  %157 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i669.us719.i
  %.unpack.i.i670.us720.i = load double, ptr %157, align 8
  %.elt1.i.i671.us721.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i669.us719.i, i32 1
  %.unpack2.i.i672.us722.i = load double, ptr %.elt1.i.i671.us721.i, align 8
  %tmp.i.i705.us723.i = fadd double %.unpack.i.i663.us716.i, %.unpack.i.i670.us720.i
  %tmp.i23.i706.us724.i = fadd double %.unpack2.i.i665.us718.i, %.unpack2.i.i672.us722.i
  store double %tmp.i.i705.us723.i, ptr %155, align 8
  %.repack1.i674.us725.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.us714.i, i32 1
  store double %tmp.i23.i706.us724.i, ptr %.repack1.i674.us725.i, align 8
  %tmp.i15.i678.us726.i = add i64 %154, %tmp.i14.i645.us.i
  %158 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i678.us726.i
  %tmp.i.i707.us731.i = fsub double %.unpack.i.i663.us716.i, %.unpack.i.i670.us720.i
  %tmp.i23.i708.us732.i = fsub double %.unpack2.i.i665.us718.i, %.unpack2.i.i672.us722.i
  %tmp.i8.i.us733.i = add nsw i64 %154, -1
  %159 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i8.i.us733.i
  %.unpack.i.i692.us734.i = load double, ptr %159, align 8
  %.elt1.i.i693.us735.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i8.i.us733.i, i32 1
  %.unpack2.i.i694.us736.i = load double, ptr %.elt1.i.i693.us735.i, align 8
  %tmp.i101.i.us737.i = fmul double %tmp.i.i707.us731.i, %.unpack.i.i692.us734.i
  %tmp.i102.i.us738.i = fmul double %tmp.i23.i708.us732.i, %.unpack2.i.i694.us736.i
  %tmp.i97.i.us.i = fadd double %tmp.i101.i.us737.i, %tmp.i102.i.us738.i
  %tmp.i98.i.us.i = fmul double %tmp.i23.i708.us732.i, %.unpack.i.i692.us734.i
  %tmp.i99.i.us.i = fmul double %tmp.i.i707.us731.i, %.unpack2.i.i694.us736.i
  %tmp.i100.i.us.i = fsub double %tmp.i98.i.us.i, %tmp.i99.i.us.i
  store double %tmp.i97.i.us.i, ptr %158, align 8
  %.repack1.i696.us739.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i678.us726.i, i32 1
  store double %tmp.i100.i.us.i, ptr %.repack1.i696.us739.i, align 8
  %160 = add nuw nsw i64 %154, 1
  %exitcond747.not.i = icmp eq i64 %160, %tmp.i212
  br i1 %exitcond747.not.i, label %imp_for.cond5.imp_for.exit8_crit_edge.split.us741.i, label %imp_for.body6.us713.i

imp_for.cond5.imp_for.exit8_crit_edge.split.us741.i: ; preds = %imp_for.body6.us713.i
  %161 = add nuw nsw i64 %149, 1
  %exitcond748.not.i = icmp eq i64 %161, %.036
  br i1 %exitcond748.not.i, label %if.exit3, label %imp_for.body2.us.i

imp_for.cond.preheader.i334:                      ; preds = %if.true7
  br i1 %.not607743.i, label %imp_for.body.i335, label %if.exit3

imp_for.body.i335:                                ; preds = %imp_for.body.i335, %imp_for.cond.preheader.i334
  %162 = phi i64 [ %167, %imp_for.body.i335 ], [ 0, %imp_for.cond.preheader.i334 ]
  %163 = getelementptr { double, double }, ptr %.018534, i64 %162
  %tmp.i.i.i336 = shl nuw i64 %162, 1
  %164 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i336
  %.unpack.i.i.i337 = load double, ptr %164, align 8
  %.elt1.i.i.i338 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i336, i32 1
  %.unpack2.i.i.i339 = load double, ptr %.elt1.i.i.i338, align 8
  %tmp.i9.i.i340 = or i64 %tmp.i.i.i336, 1
  %165 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i340
  %.unpack.i.i611.i = load double, ptr %165, align 8
  %.elt1.i.i612.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i340, i32 1
  %.unpack2.i.i613.i = load double, ptr %.elt1.i.i612.i, align 8
  %tmp.i.i698.i = fadd double %.unpack.i.i.i337, %.unpack.i.i611.i
  %tmp.i23.i.i341 = fadd double %.unpack2.i.i.i339, %.unpack2.i.i613.i
  store double %tmp.i.i698.i, ptr %163, align 8
  %.repack1.i.i342 = getelementptr { double, double }, ptr %.018534, i64 %162, i32 1
  store double %tmp.i23.i.i341, ptr %.repack1.i.i342, align 8
  %tmp.i13.i.i343 = add i64 %162, %.036
  %166 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i343
  %tmp.i.i699.i = fsub double %.unpack.i.i.i337, %.unpack.i.i611.i
  %tmp.i23.i700.i = fsub double %.unpack2.i.i.i339, %.unpack2.i.i613.i
  store double %tmp.i.i699.i, ptr %166, align 8
  %.repack1.i627.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i343, i32 1
  store double %tmp.i23.i700.i, ptr %.repack1.i627.i, align 8
  %167 = add nuw nsw i64 %162, 1
  %exitcond751.not.i = icmp eq i64 %167, %.036
  br i1 %exitcond751.not.i, label %if.exit3, label %imp_for.body.i335

imp_for.body2.i331:                               ; preds = %imp_for.body2.i331, %imp_for.body2.lr.ph.i330
  %168 = phi i64 [ %173, %imp_for.body2.i331 ], [ 0, %imp_for.body2.lr.ph.i330 ]
  %tmp.i14.i629.i = mul i64 %168, %tmp.i212
  %169 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i629.i
  %tmp.i.i630.i = shl nuw i64 %168, 1
  %tmp.i10.i631.i = mul i64 %tmp.i.i630.i, %tmp.i212
  %170 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i631.i
  %.unpack.i.i632.i = load double, ptr %170, align 8
  %.elt1.i.i633.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i631.i, i32 1
  %.unpack2.i.i634.i = load double, ptr %.elt1.i.i633.i, align 8
  %tmp.i9.i636.i = or i64 %tmp.i.i630.i, 1
  %tmp.i10.i637.i = mul i64 %tmp.i9.i636.i, %tmp.i212
  %171 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i637.i
  %.unpack.i.i638.i = load double, ptr %171, align 8
  %.elt1.i.i639.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i637.i, i32 1
  %.unpack2.i.i640.i = load double, ptr %.elt1.i.i639.i, align 8
  %tmp.i.i701.i = fadd double %.unpack.i.i632.i, %.unpack.i.i638.i
  %tmp.i23.i702.i = fadd double %.unpack2.i.i634.i, %.unpack2.i.i640.i
  store double %tmp.i.i701.i, ptr %169, align 8
  %.repack1.i642.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i629.i, i32 1
  store double %tmp.i23.i702.i, ptr %.repack1.i642.i, align 8
  %tmp.i13.i644.i = add i64 %168, %.036
  %tmp.i14.i645.i = mul i64 %tmp.i13.i644.i, %tmp.i212
  %172 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i645.i
  %tmp.i.i703.i = fsub double %.unpack.i.i632.i, %.unpack.i.i638.i
  %tmp.i23.i704.i = fsub double %.unpack2.i.i634.i, %.unpack2.i.i640.i
  store double %tmp.i.i703.i, ptr %172, align 8
  %.repack1.i658.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i645.i, i32 1
  store double %tmp.i23.i704.i, ptr %.repack1.i658.i, align 8
  %173 = add nuw nsw i64 %168, 1
  %exitcond.not.i332 = icmp eq i64 %173, %.036
  br i1 %exitcond.not.i332, label %if.exit3, label %imp_for.body2.i331

if.true10:                                        ; preds = %imp_for.body
  %tmp.i.not.i358 = icmp eq i64 %tmp.i212, 1
  %.not10331215.i = icmp sgt i64 %.036, 0
  br i1 %tmp.i.not.i358, label %imp_for.cond.preheader.i377, label %imp_for.cond4.preheader.i

imp_for.cond4.preheader.i:                        ; preds = %if.true10
  br i1 %.not10331215.i, label %imp_for.body5.lr.ph.i, label %if.exit3

imp_for.body5.lr.ph.i:                            ; preds = %imp_for.cond4.preheader.i
  %tmp.i.i1086.i = shl nuw i64 %.036, 1
  %.not10321213.i = icmp sgt i64 %tmp.i212, 1
  %tmp.i.i1132.i = add nsw i64 %tmp.i212, -1
  br label %imp_for.body5.i

imp_for.cond.preheader.i377:                      ; preds = %if.true10
  br i1 %.not10331215.i, label %imp_for.body.lr.ph.i378, label %if.exit3

imp_for.body.lr.ph.i378:                          ; preds = %imp_for.cond.preheader.i377
  %tmp.i.i1052.i = shl nuw i64 %.036, 1
  br label %imp_for.body.i379

imp_for.body.i379:                                ; preds = %imp_for.body.i379, %imp_for.body.lr.ph.i378
  %174 = phi i64 [ 0, %imp_for.body.lr.ph.i378 ], [ %183, %imp_for.body.i379 ]
  %tmp.i.i.i380 = mul i64 %174, 3
  %175 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i380
  %.unpack.i.i.i381 = load double, ptr %175, align 8
  %.elt1.i.i.i382 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i380, i32 1
  %.unpack2.i.i.i383 = load double, ptr %.elt1.i.i.i382, align 8
  %tmp.i9.i.i384 = add i64 %tmp.i.i.i380, 1
  %176 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i384
  %.unpack.i.i1037.i = load double, ptr %176, align 8
  %.elt1.i.i1038.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i384, i32 1
  %.unpack2.i.i1039.i = load double, ptr %.elt1.i.i1038.i, align 8
  %tmp.i9.i1041.i = add i64 %tmp.i.i.i380, 2
  %177 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i1041.i
  %.unpack.i.i1043.i = load double, ptr %177, align 8
  %.elt1.i.i1044.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i1041.i, i32 1
  %.unpack2.i.i1045.i = load double, ptr %.elt1.i.i1044.i, align 8
  %tmp.i.i.i.i385 = fadd double %.unpack.i.i1037.i, %.unpack.i.i1043.i
  %tmp.i23.i.i.i386 = fadd double %.unpack2.i.i1039.i, %.unpack2.i.i1045.i
  %tmp.i.i27.i.i387 = fsub double %.unpack.i.i1037.i, %.unpack.i.i1043.i
  %tmp.i23.i28.i.i388 = fsub double %.unpack2.i.i1039.i, %.unpack2.i.i1045.i
  %178 = getelementptr { double, double }, ptr %.018534, i64 %174
  %tmp.i.i1141.i = fadd double %.unpack.i.i.i381, %tmp.i.i.i.i385
  %tmp.i23.i.i389 = fadd double %.unpack2.i.i.i383, %tmp.i23.i.i.i386
  store double %tmp.i.i1141.i, ptr %178, align 8
  %.repack1.i.i390 = getelementptr { double, double }, ptr %.018534, i64 %174, i32 1
  store double %tmp.i23.i.i389, ptr %.repack1.i.i390, align 8
  %tmp.i.i.i1142.i = fmul double %tmp.i.i.i.i385, -5.000000e-01
  %tmp.i48.i.i.i = fmul double %tmp.i23.i.i.i386, 0.000000e+00
  %tmp.i49.i.i.i = fsub double %tmp.i.i.i1142.i, %tmp.i48.i.i.i
  %tmp.i50.i.i.i = fmul double %tmp.i.i.i.i385, 0.000000e+00
  %tmp.i51.i.i.i = fmul double %tmp.i23.i.i.i386, 5.000000e-01
  %179 = fsub double %tmp.i50.i.i.i, %tmp.i51.i.i.i
  %tmp.i.i1143.i = fadd double %.unpack.i.i.i381, %tmp.i49.i.i.i
  %tmp.i23.i1144.i = fadd double %.unpack2.i.i.i383, %179
  %180 = fneg double %tmp.i23.i28.i.i388
  %tmp.i1046.i = fmul double %spec.select.i357, %180
  %tmp.i1047.i = fmul double %spec.select.i357, %tmp.i.i27.i.i387
  %tmp.i.i.i1145.i = fadd double %tmp.i1046.i, %tmp.i.i1143.i
  %tmp.i23.i.i1146.i = fadd double %tmp.i1047.i, %tmp.i23.i1144.i
  %tmp.i.i27.i1147.i = fsub double %tmp.i.i1143.i, %tmp.i1046.i
  %tmp.i23.i28.i1148.i = fsub double %tmp.i23.i1144.i, %tmp.i1047.i
  %tmp.i13.i.i391 = add i64 %174, %.036
  %181 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i391
  store double %tmp.i.i.i1145.i, ptr %181, align 8
  %.repack1.i1050.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i391, i32 1
  store double %tmp.i23.i.i1146.i, ptr %.repack1.i1050.i, align 8
  %tmp.i13.i1053.i = add i64 %174, %tmp.i.i1052.i
  %182 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i1053.i
  store double %tmp.i.i27.i1147.i, ptr %182, align 8
  %.repack1.i1056.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i1053.i, i32 1
  store double %tmp.i23.i28.i1148.i, ptr %.repack1.i1056.i, align 8
  %183 = add nuw nsw i64 %174, 1
  %exitcond1218.not.i = icmp eq i64 %183, %.036
  br i1 %exitcond1218.not.i, label %if.exit3, label %imp_for.body.i379

imp_for.body5.i:                                  ; preds = %imp_for.exit11.i, %imp_for.body5.lr.ph.i
  %184 = phi i64 [ 0, %imp_for.body5.lr.ph.i ], [ %205, %imp_for.exit11.i ]
  %tmp.i.i1058.i = mul i64 %184, 3
  %tmp.i10.i1059.i = mul i64 %tmp.i.i1058.i, %tmp.i212
  %185 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1059.i
  %.unpack.i.i1060.i = load double, ptr %185, align 8
  %.elt1.i.i1061.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1059.i, i32 1
  %.unpack2.i.i1062.i = load double, ptr %.elt1.i.i1061.i, align 8
  %tmp.i9.i1064.i = add i64 %tmp.i.i1058.i, 1
  %tmp.i10.i1065.i = mul i64 %tmp.i9.i1064.i, %tmp.i212
  %186 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1065.i
  %.unpack.i.i1066.i = load double, ptr %186, align 8
  %.elt1.i.i1067.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1065.i, i32 1
  %.unpack2.i.i1068.i = load double, ptr %.elt1.i.i1067.i, align 8
  %tmp.i9.i1070.i = add i64 %tmp.i.i1058.i, 2
  %tmp.i10.i1071.i = mul i64 %tmp.i9.i1070.i, %tmp.i212
  %187 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1071.i
  %.unpack.i.i1072.i = load double, ptr %187, align 8
  %.elt1.i.i1073.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i1071.i, i32 1
  %.unpack2.i.i1074.i = load double, ptr %.elt1.i.i1073.i, align 8
  %tmp.i.i.i1149.i = fadd double %.unpack.i.i1066.i, %.unpack.i.i1072.i
  %tmp.i23.i.i1150.i = fadd double %.unpack2.i.i1068.i, %.unpack2.i.i1074.i
  %tmp.i.i27.i1151.i = fsub double %.unpack.i.i1066.i, %.unpack.i.i1072.i
  %tmp.i23.i28.i1152.i = fsub double %.unpack2.i.i1068.i, %.unpack2.i.i1074.i
  %tmp.i14.i1075.i = mul i64 %184, %tmp.i212
  %188 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1075.i
  %tmp.i.i1155.i = fadd double %.unpack.i.i1060.i, %tmp.i.i.i1149.i
  %tmp.i23.i1156.i = fadd double %.unpack2.i.i1062.i, %tmp.i23.i.i1150.i
  store double %tmp.i.i1155.i, ptr %188, align 8
  %.repack1.i1077.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1075.i, i32 1
  store double %tmp.i23.i1156.i, ptr %.repack1.i1077.i, align 8
  %tmp.i.i.i1159.i = fmul double %tmp.i.i.i1149.i, -5.000000e-01
  %tmp.i48.i.i1160.i = fmul double %tmp.i23.i.i1150.i, 0.000000e+00
  %tmp.i49.i.i1161.i = fsub double %tmp.i.i.i1159.i, %tmp.i48.i.i1160.i
  %tmp.i50.i.i1162.i = fmul double %tmp.i.i.i1149.i, 0.000000e+00
  %tmp.i51.i.i1163.i = fmul double %tmp.i23.i.i1150.i, 5.000000e-01
  %189 = fsub double %tmp.i50.i.i1162.i, %tmp.i51.i.i1163.i
  %tmp.i.i1165.i = fadd double %.unpack.i.i1060.i, %tmp.i49.i.i1161.i
  %tmp.i23.i1166.i = fadd double %.unpack2.i.i1062.i, %189
  %190 = fneg double %tmp.i23.i28.i1152.i
  %tmp.i1079.i = fmul double %spec.select.i357, %190
  %tmp.i1080.i = fmul double %spec.select.i357, %tmp.i.i27.i1151.i
  %tmp.i.i.i1167.i = fadd double %tmp.i1079.i, %tmp.i.i1165.i
  %tmp.i23.i.i1168.i = fadd double %tmp.i1080.i, %tmp.i23.i1166.i
  %tmp.i.i27.i1169.i = fsub double %tmp.i.i1165.i, %tmp.i1079.i
  %tmp.i23.i28.i1170.i = fsub double %tmp.i23.i1166.i, %tmp.i1080.i
  %tmp.i13.i1081.i = add i64 %184, %.036
  %tmp.i14.i1082.i = mul i64 %tmp.i13.i1081.i, %tmp.i212
  %191 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1082.i
  store double %tmp.i.i.i1167.i, ptr %191, align 8
  %.repack1.i1084.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1082.i, i32 1
  store double %tmp.i23.i.i1168.i, ptr %.repack1.i1084.i, align 8
  %tmp.i13.i1087.i = add i64 %184, %tmp.i.i1086.i
  %tmp.i14.i1088.i = mul i64 %tmp.i13.i1087.i, %tmp.i212
  %192 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1088.i
  store double %tmp.i.i27.i1169.i, ptr %192, align 8
  %.repack1.i1090.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i1088.i, i32 1
  store double %tmp.i23.i28.i1170.i, ptr %.repack1.i1090.i, align 8
  br i1 %.not10321213.i, label %imp_for.body9.i, label %imp_for.exit11.i

imp_for.body9.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1210.i", %imp_for.body5.i
  %193 = phi i64 [ %204, %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1210.i" ], [ 1, %imp_for.body5.i ]
  %tmp.i11.i.i359 = add i64 %193, %tmp.i10.i1059.i
  %194 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i359
  %.unpack.i.i1094.i = load double, ptr %194, align 8
  %.elt1.i.i1095.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i359, i32 1
  %.unpack2.i.i1096.i = load double, ptr %.elt1.i.i1095.i, align 8
  %tmp.i11.i1100.i = add i64 %193, %tmp.i10.i1065.i
  %195 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1100.i
  %.unpack.i.i1101.i = load double, ptr %195, align 8
  %.elt1.i.i1102.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1100.i, i32 1
  %.unpack2.i.i1103.i = load double, ptr %.elt1.i.i1102.i, align 8
  %tmp.i11.i1107.i = add i64 %193, %tmp.i10.i1071.i
  %196 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1107.i
  %.unpack.i.i1108.i = load double, ptr %196, align 8
  %.elt1.i.i1109.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i1107.i, i32 1
  %.unpack2.i.i1110.i = load double, ptr %.elt1.i.i1109.i, align 8
  %tmp.i.i.i1171.i = fadd double %.unpack.i.i1101.i, %.unpack.i.i1108.i
  %tmp.i23.i.i1172.i = fadd double %.unpack2.i.i1103.i, %.unpack2.i.i1110.i
  %tmp.i.i27.i1173.i = fsub double %.unpack.i.i1101.i, %.unpack.i.i1108.i
  %tmp.i23.i28.i1174.i = fsub double %.unpack2.i.i1103.i, %.unpack2.i.i1110.i
  %tmp.i15.i.i360 = add i64 %193, %tmp.i14.i1075.i
  %197 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i360
  %tmp.i.i1177.i = fadd double %.unpack.i.i1094.i, %tmp.i.i.i1171.i
  %tmp.i23.i1178.i = fadd double %.unpack2.i.i1096.i, %tmp.i23.i.i1172.i
  store double %tmp.i.i1177.i, ptr %197, align 8
  %.repack1.i1113.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i360, i32 1
  store double %tmp.i23.i1178.i, ptr %.repack1.i1113.i, align 8
  %tmp.i.i.i1181.i = fmul double %tmp.i.i.i1171.i, -5.000000e-01
  %tmp.i48.i.i1182.i = fmul double %tmp.i23.i.i1172.i, 0.000000e+00
  %tmp.i49.i.i1183.i = fsub double %tmp.i.i.i1181.i, %tmp.i48.i.i1182.i
  %tmp.i50.i.i1184.i = fmul double %tmp.i.i.i1171.i, 0.000000e+00
  %tmp.i51.i.i1185.i = fmul double %tmp.i23.i.i1172.i, 5.000000e-01
  %198 = fsub double %tmp.i50.i.i1184.i, %tmp.i51.i.i1185.i
  %tmp.i.i1187.i = fadd double %.unpack.i.i1094.i, %tmp.i49.i.i1183.i
  %tmp.i23.i1188.i = fadd double %.unpack2.i.i1096.i, %198
  %199 = fneg double %tmp.i23.i28.i1174.i
  %tmp.i1115.i = fmul double %spec.select.i357, %199
  %tmp.i1116.i = fmul double %spec.select.i357, %tmp.i.i27.i1173.i
  %tmp.i15.i1119.i = add i64 %193, %tmp.i14.i1082.i
  %200 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1119.i
  %tmp.i.i1189.i = fadd double %tmp.i1115.i, %tmp.i.i1187.i
  %tmp.i23.i1190.i = fadd double %tmp.i1116.i, %tmp.i23.i1188.i
  %tmp.i9.i1121.i = add nsw i64 %193, -1
  %201 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i1121.i
  %.unpack.i.i1122.i = load double, ptr %201, align 8
  %.elt1.i.i1123.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i1121.i, i32 1
  %.unpack2.i.i1124.i = load double, ptr %.elt1.i.i1123.i, align 8
  %tmp.i101.i.i361 = fmul double %.unpack.i.i1122.i, %tmp.i.i1189.i
  %tmp.i102.i.i362 = fmul double %.unpack2.i.i1124.i, %tmp.i23.i1190.i
  br i1 %.not.i503, label %if.false.i.i372, label %if.true.i.i363

if.true.i.i363:                                   ; preds = %imp_for.body9.i
  %tmp.i97.i.i364 = fadd double %tmp.i101.i.i361, %tmp.i102.i.i362
  %tmp.i98.i.i365 = fmul double %.unpack.i.i1122.i, %tmp.i23.i1190.i
  %tmp.i99.i.i366 = fmul double %.unpack2.i.i1124.i, %tmp.i.i1189.i
  %tmp.i100.i.i367 = fsub double %tmp.i98.i.i365, %tmp.i99.i.i366
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i368"

if.false.i.i372:                                  ; preds = %imp_for.body9.i
  %tmp.i103.i.i373 = fsub double %tmp.i101.i.i361, %tmp.i102.i.i362
  %tmp.i104.i.i374 = fmul double %.unpack2.i.i1124.i, %tmp.i.i1189.i
  %tmp.i105.i.i375 = fmul double %.unpack.i.i1122.i, %tmp.i23.i1190.i
  %tmp.i106.i.i376 = fadd double %tmp.i104.i.i374, %tmp.i105.i.i375
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i368"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i368": ; preds = %if.false.i.i372, %if.true.i.i363
  %tmp.i97.pn.i.i369 = phi double [ %tmp.i97.i.i364, %if.true.i.i363 ], [ %tmp.i103.i.i373, %if.false.i.i372 ]
  %tmp.i100.pn.i.i370 = phi double [ %tmp.i100.i.i367, %if.true.i.i363 ], [ %tmp.i106.i.i376, %if.false.i.i372 ]
  store double %tmp.i97.pn.i.i369, ptr %200, align 8
  %.repack1.i1126.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1119.i, i32 1
  store double %tmp.i100.pn.i.i370, ptr %.repack1.i1126.i, align 8
  %tmp.i15.i1131.i = add i64 %193, %tmp.i14.i1088.i
  %202 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1131.i
  %tmp.i.i1191.i = fsub double %tmp.i.i1187.i, %tmp.i1115.i
  %tmp.i23.i1192.i = fsub double %tmp.i23.i1188.i, %tmp.i1116.i
  %tmp.i10.i1134.i = add i64 %tmp.i.i1132.i, %tmp.i9.i1121.i
  %203 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i1134.i
  %.unpack.i.i1135.i = load double, ptr %203, align 8
  %.elt1.i.i1136.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i1134.i, i32 1
  %.unpack2.i.i1137.i = load double, ptr %.elt1.i.i1136.i, align 8
  %tmp.i101.i1194.i = fmul double %tmp.i.i1191.i, %.unpack.i.i1135.i
  %tmp.i102.i1195.i = fmul double %tmp.i23.i1192.i, %.unpack2.i.i1137.i
  br i1 %.not.i503, label %if.false.i1205.i, label %if.true.i1196.i

if.true.i1196.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i368"
  %tmp.i97.i1197.i = fadd double %tmp.i101.i1194.i, %tmp.i102.i1195.i
  %tmp.i98.i1198.i = fmul double %tmp.i23.i1192.i, %.unpack.i.i1135.i
  %tmp.i99.i1199.i = fmul double %tmp.i.i1191.i, %.unpack2.i.i1137.i
  %tmp.i100.i1200.i = fsub double %tmp.i98.i1198.i, %tmp.i99.i1199.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1210.i"

if.false.i1205.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i368"
  %tmp.i103.i1206.i = fsub double %tmp.i101.i1194.i, %tmp.i102.i1195.i
  %tmp.i104.i1207.i = fmul double %tmp.i.i1191.i, %.unpack2.i.i1137.i
  %tmp.i105.i1208.i = fmul double %tmp.i23.i1192.i, %.unpack.i.i1135.i
  %tmp.i106.i1209.i = fadd double %tmp.i105.i1208.i, %tmp.i104.i1207.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1210.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1210.i": ; preds = %if.false.i1205.i, %if.true.i1196.i
  %tmp.i97.pn.i1201.i = phi double [ %tmp.i97.i1197.i, %if.true.i1196.i ], [ %tmp.i103.i1206.i, %if.false.i1205.i ]
  %tmp.i100.pn.i1202.i = phi double [ %tmp.i100.i1200.i, %if.true.i1196.i ], [ %tmp.i106.i1209.i, %if.false.i1205.i ]
  store double %tmp.i97.pn.i1201.i, ptr %202, align 8
  %.repack1.i1139.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i1131.i, i32 1
  store double %tmp.i100.pn.i1202.i, ptr %.repack1.i1139.i, align 8
  %204 = add nuw nsw i64 %193, 1
  %exitcond.not.i371 = icmp eq i64 %204, %tmp.i212
  br i1 %exitcond.not.i371, label %imp_for.exit11.i, label %imp_for.body9.i

imp_for.exit11.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit1210.i", %imp_for.body5.i
  %205 = add nuw nsw i64 %184, 1
  %exitcond1217.not.i = icmp eq i64 %205, %.036
  br i1 %exitcond1217.not.i, label %if.exit3, label %imp_for.body5.i

if.true13:                                        ; preds = %imp_for.body
  %tmp.i.not.i406 = icmp eq i64 %tmp.i212, 1
  %.not21142505.i = icmp sgt i64 %.036, 0
  br i1 %tmp.i.not.i406, label %imp_for.cond.preheader.i427, label %imp_for.cond7.preheader.i

imp_for.cond7.preheader.i:                        ; preds = %if.true13
  br i1 %.not21142505.i, label %imp_for.body8.lr.ph.i, label %if.exit3

imp_for.body8.lr.ph.i:                            ; preds = %imp_for.cond7.preheader.i
  %tmp.i.i2249.i = shl i64 %.036, 2
  %tmp.i.i2269.i = shl nuw i64 %.036, 1
  %tmp.i.i2275.i = mul i64 %.036, 3
  %.not21132503.i = icmp sgt i64 %tmp.i212, 1
  %tmp.i.i2351.i = add nsw i64 %tmp.i212, -1
  %tmp.i8.i.i407 = mul i64 %tmp.i.i2351.i, 3
  %tmp.i8.i2392.i = shl i64 %tmp.i.i2351.i, 1
  br label %imp_for.body8.i

imp_for.cond.preheader.i427:                      ; preds = %if.true13
  br i1 %.not21142505.i, label %imp_for.body.lr.ph.i428, label %if.exit3

imp_for.body.lr.ph.i428:                          ; preds = %imp_for.cond.preheader.i427
  %tmp.i.i2161.i = shl i64 %.036, 2
  %tmp.i.i2181.i = shl nuw i64 %.036, 1
  %tmp.i.i2187.i = mul i64 %.036, 3
  br label %imp_for.body.i429

imp_for.body.i429:                                ; preds = %imp_for.body.i429, %imp_for.body.lr.ph.i428
  %206 = phi i64 [ 0, %imp_for.body.lr.ph.i428 ], [ %221, %imp_for.body.i429 ]
  %tmp.i.i.i430 = mul i64 %206, 5
  %207 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i430
  %.unpack.i.i.i431 = load double, ptr %207, align 8
  %.elt1.i.i.i432 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i430, i32 1
  %.unpack2.i.i.i433 = load double, ptr %.elt1.i.i.i432, align 8
  %tmp.i9.i.i434 = add i64 %tmp.i.i.i430, 1
  %208 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i434
  %.unpack.i.i2118.i = load double, ptr %208, align 8
  %.elt1.i.i2119.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i434, i32 1
  %.unpack2.i.i2120.i = load double, ptr %.elt1.i.i2119.i, align 8
  %tmp.i9.i2122.i = add i64 %tmp.i.i.i430, 4
  %209 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i2122.i
  %.unpack.i.i2124.i = load double, ptr %209, align 8
  %.elt1.i.i2125.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i2122.i, i32 1
  %.unpack2.i.i2126.i = load double, ptr %.elt1.i.i2125.i, align 8
  %tmp.i.i.i.i435 = fadd double %.unpack.i.i2118.i, %.unpack.i.i2124.i
  %tmp.i23.i.i.i436 = fadd double %.unpack2.i.i2120.i, %.unpack2.i.i2126.i
  %tmp.i.i27.i.i437 = fsub double %.unpack.i.i2118.i, %.unpack.i.i2124.i
  %tmp.i23.i28.i.i438 = fsub double %.unpack2.i.i2120.i, %.unpack2.i.i2126.i
  %tmp.i9.i2128.i = add i64 %tmp.i.i.i430, 2
  %210 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i2128.i
  %.unpack.i.i2130.i = load double, ptr %210, align 8
  %.elt1.i.i2131.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i2128.i, i32 1
  %.unpack2.i.i2132.i = load double, ptr %.elt1.i.i2131.i, align 8
  %tmp.i9.i2134.i = add i64 %tmp.i.i.i430, 3
  %211 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i2134.i
  %.unpack.i.i2136.i = load double, ptr %211, align 8
  %.elt1.i.i2137.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i2134.i, i32 1
  %.unpack2.i.i2138.i = load double, ptr %.elt1.i.i2137.i, align 8
  %tmp.i.i.i2401.i = fadd double %.unpack.i.i2130.i, %.unpack.i.i2136.i
  %tmp.i23.i.i2402.i = fadd double %.unpack2.i.i2132.i, %.unpack2.i.i2138.i
  %tmp.i.i27.i2403.i = fsub double %.unpack.i.i2130.i, %.unpack.i.i2136.i
  %tmp.i23.i28.i2404.i = fsub double %.unpack2.i.i2132.i, %.unpack2.i.i2138.i
  %212 = getelementptr { double, double }, ptr %.018534, i64 %206
  %tmp.i2139.i = fadd double %.unpack.i.i.i431, %tmp.i.i.i.i435
  %tmp.i2140.i = fadd double %tmp.i2139.i, %tmp.i.i.i2401.i
  %tmp.i2141.i = fadd double %.unpack2.i.i.i433, %tmp.i23.i.i.i436
  %tmp.i2142.i = fadd double %tmp.i2141.i, %tmp.i23.i.i2402.i
  store double %tmp.i2140.i, ptr %212, align 8
  %.repack1.i.i439 = getelementptr { double, double }, ptr %.018534, i64 %206, i32 1
  store double %tmp.i2142.i, ptr %.repack1.i.i439, align 8
  %tmp.i2143.i = fmul double %tmp.i.i.i.i435, 0x3FD3C6EF372FE950
  %tmp.i2144.i = fadd double %.unpack.i.i.i431, %tmp.i2143.i
  %tmp.i2145.i = fmul double %tmp.i.i.i2401.i, 0x3FE9E3779B97F4A8
  %213 = fsub double %tmp.i2144.i, %tmp.i2145.i
  %tmp.i2147.i = fmul double %tmp.i23.i.i.i436, 0x3FD3C6EF372FE950
  %tmp.i2148.i = fadd double %.unpack2.i.i.i433, %tmp.i2147.i
  %tmp.i2149.i = fmul double %tmp.i23.i.i2402.i, 0x3FE9E3779B97F4A8
  %214 = fsub double %tmp.i2148.i, %tmp.i2149.i
  %tmp.i2151.i = fmul double %spec.select.i405, %tmp.i23.i28.i.i438
  %tmp.i2152.i = fmul double %spec.select2500.i, %tmp.i23.i28.i2404.i
  %tmp.i2153.i = fadd double %tmp.i2151.i, %tmp.i2152.i
  %tmp.i2154.i = fmul double %spec.select.i405, %tmp.i.i27.i.i437
  %tmp.i2155.i = fmul double %spec.select2500.i, %tmp.i.i27.i2403.i
  %tmp.i2156.i = fadd double %tmp.i2154.i, %tmp.i2155.i
  %tmp.i.i.i2405.i = fsub double %213, %tmp.i2153.i
  %tmp.i23.i.i2406.i = fadd double %tmp.i2156.i, %214
  %tmp.i.i27.i2407.i = fadd double %213, %tmp.i2153.i
  %tmp.i23.i28.i2408.i = fsub double %214, %tmp.i2156.i
  %tmp.i13.i.i440 = add i64 %206, %.036
  %215 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i440
  store double %tmp.i.i.i2405.i, ptr %215, align 8
  %.repack1.i2159.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i440, i32 1
  store double %tmp.i23.i.i2406.i, ptr %.repack1.i2159.i, align 8
  %tmp.i13.i2162.i = add i64 %206, %tmp.i.i2161.i
  %216 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i2162.i
  store double %tmp.i.i27.i2407.i, ptr %216, align 8
  %.repack1.i2165.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i2162.i, i32 1
  store double %tmp.i23.i28.i2408.i, ptr %.repack1.i2165.i, align 8
  %tmp.i2167.i = fmul double %tmp.i.i.i.i435, 0x3FE9E3779B97F4A8
  %217 = fsub double %.unpack.i.i.i431, %tmp.i2167.i
  %tmp.i2169.i = fmul double %tmp.i.i.i2401.i, 0x3FD3C6EF372FE950
  %tmp.i2170.i = fadd double %217, %tmp.i2169.i
  %tmp.i2171.i = fmul double %tmp.i23.i.i.i436, 0x3FE9E3779B97F4A8
  %218 = fsub double %.unpack2.i.i.i433, %tmp.i2171.i
  %tmp.i2173.i = fmul double %tmp.i23.i.i2402.i, 0x3FD3C6EF372FE950
  %tmp.i2174.i = fadd double %218, %tmp.i2173.i
  %tmp.i2175.i = fmul double %spec.select2500.i, %tmp.i23.i28.i.i438
  %tmp.i2176.i = fmul double %spec.select.i405, %tmp.i23.i28.i2404.i
  %tmp.i2177.i = fsub double %tmp.i2175.i, %tmp.i2176.i
  %tmp.i2178.i = fmul double %spec.select2500.i, %tmp.i.i27.i.i437
  %tmp.i2179.i = fmul double %spec.select.i405, %tmp.i.i27.i2403.i
  %tmp.i2180.i = fsub double %tmp.i2178.i, %tmp.i2179.i
  %tmp.i.i.i2409.i = fsub double %tmp.i2170.i, %tmp.i2177.i
  %tmp.i23.i.i2410.i = fadd double %tmp.i2180.i, %tmp.i2174.i
  %tmp.i.i27.i2411.i = fadd double %tmp.i2170.i, %tmp.i2177.i
  %tmp.i23.i28.i2412.i = fsub double %tmp.i2174.i, %tmp.i2180.i
  %tmp.i13.i2182.i = add i64 %206, %tmp.i.i2181.i
  %219 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i2182.i
  store double %tmp.i.i.i2409.i, ptr %219, align 8
  %.repack1.i2185.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i2182.i, i32 1
  store double %tmp.i23.i.i2410.i, ptr %.repack1.i2185.i, align 8
  %tmp.i13.i2188.i = add i64 %206, %tmp.i.i2187.i
  %220 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i2188.i
  store double %tmp.i.i27.i2411.i, ptr %220, align 8
  %.repack1.i2191.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i2188.i, i32 1
  store double %tmp.i23.i28.i2412.i, ptr %.repack1.i2191.i, align 8
  %221 = add nuw nsw i64 %206, 1
  %exitcond2508.not.i = icmp eq i64 %221, %.036
  br i1 %exitcond2508.not.i, label %if.exit3, label %imp_for.body.i429

imp_for.body8.i:                                  ; preds = %imp_for.exit14.i, %imp_for.body8.lr.ph.i
  %222 = phi i64 [ 0, %imp_for.body8.lr.ph.i ], [ %257, %imp_for.exit14.i ]
  %tmp.i.i2193.i = mul i64 %222, 5
  %tmp.i10.i2194.i = mul i64 %tmp.i.i2193.i, %tmp.i212
  %223 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2194.i
  %.unpack.i.i2195.i = load double, ptr %223, align 8
  %.elt1.i.i2196.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2194.i, i32 1
  %.unpack2.i.i2197.i = load double, ptr %.elt1.i.i2196.i, align 8
  %tmp.i9.i2199.i = add i64 %tmp.i.i2193.i, 1
  %tmp.i10.i2200.i = mul i64 %tmp.i9.i2199.i, %tmp.i212
  %224 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2200.i
  %.unpack.i.i2201.i = load double, ptr %224, align 8
  %.elt1.i.i2202.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2200.i, i32 1
  %.unpack2.i.i2203.i = load double, ptr %.elt1.i.i2202.i, align 8
  %tmp.i9.i2205.i = add i64 %tmp.i.i2193.i, 4
  %tmp.i10.i2206.i = mul i64 %tmp.i9.i2205.i, %tmp.i212
  %225 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2206.i
  %.unpack.i.i2207.i = load double, ptr %225, align 8
  %.elt1.i.i2208.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2206.i, i32 1
  %.unpack2.i.i2209.i = load double, ptr %.elt1.i.i2208.i, align 8
  %tmp.i.i.i2413.i = fadd double %.unpack.i.i2201.i, %.unpack.i.i2207.i
  %tmp.i23.i.i2414.i = fadd double %.unpack2.i.i2203.i, %.unpack2.i.i2209.i
  %tmp.i.i27.i2415.i = fsub double %.unpack.i.i2201.i, %.unpack.i.i2207.i
  %tmp.i23.i28.i2416.i = fsub double %.unpack2.i.i2203.i, %.unpack2.i.i2209.i
  %tmp.i9.i2211.i = add i64 %tmp.i.i2193.i, 2
  %tmp.i10.i2212.i = mul i64 %tmp.i9.i2211.i, %tmp.i212
  %226 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2212.i
  %.unpack.i.i2213.i = load double, ptr %226, align 8
  %.elt1.i.i2214.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2212.i, i32 1
  %.unpack2.i.i2215.i = load double, ptr %.elt1.i.i2214.i, align 8
  %tmp.i9.i2217.i = add i64 %tmp.i.i2193.i, 3
  %tmp.i10.i2218.i = mul i64 %tmp.i9.i2217.i, %tmp.i212
  %227 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2218.i
  %.unpack.i.i2219.i = load double, ptr %227, align 8
  %.elt1.i.i2220.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i2218.i, i32 1
  %.unpack2.i.i2221.i = load double, ptr %.elt1.i.i2220.i, align 8
  %tmp.i.i.i2417.i = fadd double %.unpack.i.i2213.i, %.unpack.i.i2219.i
  %tmp.i23.i.i2418.i = fadd double %.unpack2.i.i2215.i, %.unpack2.i.i2221.i
  %tmp.i.i27.i2419.i = fsub double %.unpack.i.i2213.i, %.unpack.i.i2219.i
  %tmp.i23.i28.i2420.i = fsub double %.unpack2.i.i2215.i, %.unpack2.i.i2221.i
  %tmp.i14.i2222.i = mul i64 %222, %tmp.i212
  %228 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2222.i
  %tmp.i2223.i = fadd double %.unpack.i.i2195.i, %tmp.i.i.i2413.i
  %tmp.i2224.i = fadd double %tmp.i2223.i, %tmp.i.i.i2417.i
  %tmp.i2225.i = fadd double %.unpack2.i.i2197.i, %tmp.i23.i.i2414.i
  %tmp.i2226.i = fadd double %tmp.i2225.i, %tmp.i23.i.i2418.i
  store double %tmp.i2224.i, ptr %228, align 8
  %.repack1.i2228.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2222.i, i32 1
  store double %tmp.i2226.i, ptr %.repack1.i2228.i, align 8
  %tmp.i2230.i = fmul double %tmp.i.i.i2413.i, 0x3FD3C6EF372FE950
  %tmp.i2231.i = fadd double %.unpack.i.i2195.i, %tmp.i2230.i
  %tmp.i2232.i = fmul double %tmp.i.i.i2417.i, 0x3FE9E3779B97F4A8
  %229 = fsub double %tmp.i2231.i, %tmp.i2232.i
  %tmp.i2234.i = fmul double %tmp.i23.i.i2414.i, 0x3FD3C6EF372FE950
  %tmp.i2235.i = fadd double %.unpack2.i.i2197.i, %tmp.i2234.i
  %tmp.i2236.i = fmul double %tmp.i23.i.i2418.i, 0x3FE9E3779B97F4A8
  %230 = fsub double %tmp.i2235.i, %tmp.i2236.i
  %tmp.i2238.i = fmul double %spec.select.i405, %tmp.i23.i28.i2416.i
  %tmp.i2239.i = fmul double %spec.select2500.i, %tmp.i23.i28.i2420.i
  %tmp.i2240.i = fadd double %tmp.i2238.i, %tmp.i2239.i
  %tmp.i2241.i = fmul double %spec.select.i405, %tmp.i.i27.i2415.i
  %tmp.i2242.i = fmul double %spec.select2500.i, %tmp.i.i27.i2419.i
  %tmp.i2243.i = fadd double %tmp.i2241.i, %tmp.i2242.i
  %tmp.i.i.i2421.i = fsub double %229, %tmp.i2240.i
  %tmp.i23.i.i2422.i = fadd double %tmp.i2243.i, %230
  %tmp.i.i27.i2423.i = fadd double %229, %tmp.i2240.i
  %tmp.i23.i28.i2424.i = fsub double %230, %tmp.i2243.i
  %tmp.i13.i2244.i = add i64 %222, %.036
  %tmp.i14.i2245.i = mul i64 %tmp.i13.i2244.i, %tmp.i212
  %231 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2245.i
  store double %tmp.i.i.i2421.i, ptr %231, align 8
  %.repack1.i2247.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2245.i, i32 1
  store double %tmp.i23.i.i2422.i, ptr %.repack1.i2247.i, align 8
  %tmp.i13.i2250.i = add i64 %222, %tmp.i.i2249.i
  %tmp.i14.i2251.i = mul i64 %tmp.i13.i2250.i, %tmp.i212
  %232 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2251.i
  store double %tmp.i.i27.i2423.i, ptr %232, align 8
  %.repack1.i2253.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2251.i, i32 1
  store double %tmp.i23.i28.i2424.i, ptr %.repack1.i2253.i, align 8
  %tmp.i2255.i = fmul double %tmp.i.i.i2413.i, 0x3FE9E3779B97F4A8
  %233 = fsub double %.unpack.i.i2195.i, %tmp.i2255.i
  %tmp.i2257.i = fmul double %tmp.i.i.i2417.i, 0x3FD3C6EF372FE950
  %tmp.i2258.i = fadd double %233, %tmp.i2257.i
  %tmp.i2259.i = fmul double %tmp.i23.i.i2414.i, 0x3FE9E3779B97F4A8
  %234 = fsub double %.unpack2.i.i2197.i, %tmp.i2259.i
  %tmp.i2261.i = fmul double %tmp.i23.i.i2418.i, 0x3FD3C6EF372FE950
  %tmp.i2262.i = fadd double %234, %tmp.i2261.i
  %tmp.i2263.i = fmul double %spec.select2500.i, %tmp.i23.i28.i2416.i
  %tmp.i2264.i = fmul double %spec.select.i405, %tmp.i23.i28.i2420.i
  %tmp.i2265.i = fsub double %tmp.i2263.i, %tmp.i2264.i
  %tmp.i2266.i = fmul double %spec.select2500.i, %tmp.i.i27.i2415.i
  %tmp.i2267.i = fmul double %spec.select.i405, %tmp.i.i27.i2419.i
  %tmp.i2268.i = fsub double %tmp.i2266.i, %tmp.i2267.i
  %tmp.i.i.i2425.i = fsub double %tmp.i2258.i, %tmp.i2265.i
  %tmp.i23.i.i2426.i = fadd double %tmp.i2268.i, %tmp.i2262.i
  %tmp.i.i27.i2427.i = fadd double %tmp.i2258.i, %tmp.i2265.i
  %tmp.i23.i28.i2428.i = fsub double %tmp.i2262.i, %tmp.i2268.i
  %tmp.i13.i2270.i = add i64 %222, %tmp.i.i2269.i
  %tmp.i14.i2271.i = mul i64 %tmp.i13.i2270.i, %tmp.i212
  %235 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2271.i
  store double %tmp.i.i.i2425.i, ptr %235, align 8
  %.repack1.i2273.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2271.i, i32 1
  store double %tmp.i23.i.i2426.i, ptr %.repack1.i2273.i, align 8
  %tmp.i13.i2276.i = add i64 %222, %tmp.i.i2275.i
  %tmp.i14.i2277.i = mul i64 %tmp.i13.i2276.i, %tmp.i212
  %236 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2277.i
  store double %tmp.i.i27.i2427.i, ptr %236, align 8
  %.repack1.i2279.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i2277.i, i32 1
  store double %tmp.i23.i28.i2428.i, ptr %.repack1.i2279.i, align 8
  br i1 %.not21132503.i, label %imp_for.body12.i, label %imp_for.exit14.i

imp_for.body12.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2497.i", %imp_for.body8.i
  %237 = phi i64 [ %256, %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2497.i" ], [ 1, %imp_for.body8.i ]
  %tmp.i11.i.i408 = add i64 %237, %tmp.i10.i2194.i
  %238 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i408
  %.unpack.i.i2283.i = load double, ptr %238, align 8
  %.elt1.i.i2284.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i408, i32 1
  %.unpack2.i.i2285.i = load double, ptr %.elt1.i.i2284.i, align 8
  %tmp.i11.i2289.i = add i64 %237, %tmp.i10.i2200.i
  %239 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2289.i
  %.unpack.i.i2290.i = load double, ptr %239, align 8
  %.elt1.i.i2291.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2289.i, i32 1
  %.unpack2.i.i2292.i = load double, ptr %.elt1.i.i2291.i, align 8
  %tmp.i11.i2296.i = add i64 %237, %tmp.i10.i2206.i
  %240 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2296.i
  %.unpack.i.i2297.i = load double, ptr %240, align 8
  %.elt1.i.i2298.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2296.i, i32 1
  %.unpack2.i.i2299.i = load double, ptr %.elt1.i.i2298.i, align 8
  %tmp.i.i.i2429.i = fadd double %.unpack.i.i2290.i, %.unpack.i.i2297.i
  %tmp.i23.i.i2430.i = fadd double %.unpack2.i.i2292.i, %.unpack2.i.i2299.i
  %tmp.i.i27.i2431.i = fsub double %.unpack.i.i2290.i, %.unpack.i.i2297.i
  %tmp.i23.i28.i2432.i = fsub double %.unpack2.i.i2292.i, %.unpack2.i.i2299.i
  %tmp.i11.i2303.i = add i64 %237, %tmp.i10.i2212.i
  %241 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2303.i
  %.unpack.i.i2304.i = load double, ptr %241, align 8
  %.elt1.i.i2305.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2303.i, i32 1
  %.unpack2.i.i2306.i = load double, ptr %.elt1.i.i2305.i, align 8
  %tmp.i11.i2310.i = add i64 %237, %tmp.i10.i2218.i
  %242 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2310.i
  %.unpack.i.i2311.i = load double, ptr %242, align 8
  %.elt1.i.i2312.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i2310.i, i32 1
  %.unpack2.i.i2313.i = load double, ptr %.elt1.i.i2312.i, align 8
  %tmp.i.i.i2433.i = fadd double %.unpack.i.i2304.i, %.unpack.i.i2311.i
  %tmp.i23.i.i2434.i = fadd double %.unpack2.i.i2306.i, %.unpack2.i.i2313.i
  %tmp.i.i27.i2435.i = fsub double %.unpack.i.i2304.i, %.unpack.i.i2311.i
  %tmp.i23.i28.i2436.i = fsub double %.unpack2.i.i2306.i, %.unpack2.i.i2313.i
  %tmp.i15.i.i409 = add i64 %237, %tmp.i14.i2222.i
  %243 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i409
  %tmp.i2315.i = fadd double %.unpack.i.i2283.i, %tmp.i.i.i2429.i
  %tmp.i2316.i = fadd double %tmp.i2315.i, %tmp.i.i.i2433.i
  %tmp.i2317.i = fadd double %.unpack2.i.i2285.i, %tmp.i23.i.i2430.i
  %tmp.i2318.i = fadd double %tmp.i2317.i, %tmp.i23.i.i2434.i
  store double %tmp.i2316.i, ptr %243, align 8
  %.repack1.i2320.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i409, i32 1
  store double %tmp.i2318.i, ptr %.repack1.i2320.i, align 8
  %tmp.i2322.i = fmul double %tmp.i.i.i2429.i, 0x3FD3C6EF372FE950
  %tmp.i2323.i = fadd double %.unpack.i.i2283.i, %tmp.i2322.i
  %tmp.i2324.i = fmul double %tmp.i.i.i2433.i, 0x3FE9E3779B97F4A8
  %244 = fsub double %tmp.i2323.i, %tmp.i2324.i
  %tmp.i2326.i = fmul double %tmp.i23.i.i2430.i, 0x3FD3C6EF372FE950
  %tmp.i2327.i = fadd double %.unpack2.i.i2285.i, %tmp.i2326.i
  %tmp.i2328.i = fmul double %tmp.i23.i.i2434.i, 0x3FE9E3779B97F4A8
  %245 = fsub double %tmp.i2327.i, %tmp.i2328.i
  %tmp.i2330.i = fmul double %spec.select.i405, %tmp.i23.i28.i2432.i
  %tmp.i2331.i = fmul double %spec.select2500.i, %tmp.i23.i28.i2436.i
  %tmp.i2332.i = fadd double %tmp.i2330.i, %tmp.i2331.i
  %tmp.i2333.i = fmul double %spec.select.i405, %tmp.i.i27.i2431.i
  %tmp.i2334.i = fmul double %spec.select2500.i, %tmp.i.i27.i2435.i
  %tmp.i2335.i = fadd double %tmp.i2333.i, %tmp.i2334.i
  %tmp.i15.i2338.i = add i64 %237, %tmp.i14.i2245.i
  %246 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2338.i
  %tmp.i.i2437.i = fsub double %244, %tmp.i2332.i
  %tmp.i23.i.i410 = fadd double %tmp.i2335.i, %245
  %tmp.i9.i2340.i = add nsw i64 %237, -1
  %247 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i2340.i
  %.unpack.i.i2341.i = load double, ptr %247, align 8
  %.elt1.i.i2342.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i2340.i, i32 1
  %.unpack2.i.i2343.i = load double, ptr %.elt1.i.i2342.i, align 8
  %tmp.i101.i.i411 = fmul double %.unpack.i.i2341.i, %tmp.i.i2437.i
  %tmp.i102.i.i412 = fmul double %tmp.i23.i.i410, %.unpack2.i.i2343.i
  br i1 %.not.i503, label %if.false.i.i422, label %if.true.i.i413

if.true.i.i413:                                   ; preds = %imp_for.body12.i
  %tmp.i97.i.i414 = fadd double %tmp.i101.i.i411, %tmp.i102.i.i412
  %tmp.i98.i.i415 = fmul double %.unpack.i.i2341.i, %tmp.i23.i.i410
  %tmp.i99.i.i416 = fmul double %tmp.i.i2437.i, %.unpack2.i.i2343.i
  %tmp.i100.i.i417 = fsub double %tmp.i98.i.i415, %tmp.i99.i.i416
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i418"

if.false.i.i422:                                  ; preds = %imp_for.body12.i
  %tmp.i103.i.i423 = fsub double %tmp.i101.i.i411, %tmp.i102.i.i412
  %tmp.i104.i.i424 = fmul double %tmp.i.i2437.i, %.unpack2.i.i2343.i
  %tmp.i105.i.i425 = fmul double %.unpack.i.i2341.i, %tmp.i23.i.i410
  %tmp.i106.i.i426 = fadd double %tmp.i104.i.i424, %tmp.i105.i.i425
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i418"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i418": ; preds = %if.false.i.i422, %if.true.i.i413
  %tmp.i97.pn.i.i419 = phi double [ %tmp.i97.i.i414, %if.true.i.i413 ], [ %tmp.i103.i.i423, %if.false.i.i422 ]
  %tmp.i100.pn.i.i420 = phi double [ %tmp.i100.i.i417, %if.true.i.i413 ], [ %tmp.i106.i.i426, %if.false.i.i422 ]
  store double %tmp.i97.pn.i.i419, ptr %246, align 8
  %.repack1.i2345.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2338.i, i32 1
  store double %tmp.i100.pn.i.i420, ptr %.repack1.i2345.i, align 8
  %tmp.i15.i2350.i = add i64 %237, %tmp.i14.i2251.i
  %248 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2350.i
  %tmp.i.i2438.i = fadd double %244, %tmp.i2332.i
  %tmp.i23.i2439.i = fsub double %245, %tmp.i2335.i
  %tmp.i10.i2353.i = add i64 %tmp.i9.i2340.i, %tmp.i8.i.i407
  %249 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i2353.i
  %.unpack.i.i2354.i = load double, ptr %249, align 8
  %.elt1.i.i2355.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i2353.i, i32 1
  %.unpack2.i.i2356.i = load double, ptr %.elt1.i.i2355.i, align 8
  %tmp.i101.i2441.i = fmul double %tmp.i.i2438.i, %.unpack.i.i2354.i
  %tmp.i102.i2442.i = fmul double %tmp.i23.i2439.i, %.unpack2.i.i2356.i
  br i1 %.not.i503, label %if.false.i2452.i, label %if.true.i2443.i

if.true.i2443.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i418"
  %tmp.i97.i2444.i = fadd double %tmp.i101.i2441.i, %tmp.i102.i2442.i
  %tmp.i98.i2445.i = fmul double %tmp.i23.i2439.i, %.unpack.i.i2354.i
  %tmp.i99.i2446.i = fmul double %tmp.i.i2438.i, %.unpack2.i.i2356.i
  %tmp.i100.i2447.i = fsub double %tmp.i98.i2445.i, %tmp.i99.i2446.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2457.i"

if.false.i2452.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i418"
  %tmp.i103.i2453.i = fsub double %tmp.i101.i2441.i, %tmp.i102.i2442.i
  %tmp.i104.i2454.i = fmul double %tmp.i.i2438.i, %.unpack2.i.i2356.i
  %tmp.i105.i2455.i = fmul double %tmp.i23.i2439.i, %.unpack.i.i2354.i
  %tmp.i106.i2456.i = fadd double %tmp.i105.i2455.i, %tmp.i104.i2454.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2457.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2457.i": ; preds = %if.false.i2452.i, %if.true.i2443.i
  %tmp.i97.pn.i2448.i = phi double [ %tmp.i97.i2444.i, %if.true.i2443.i ], [ %tmp.i103.i2453.i, %if.false.i2452.i ]
  %tmp.i100.pn.i2449.i = phi double [ %tmp.i100.i2447.i, %if.true.i2443.i ], [ %tmp.i106.i2456.i, %if.false.i2452.i ]
  store double %tmp.i97.pn.i2448.i, ptr %248, align 8
  %.repack1.i2358.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2350.i, i32 1
  store double %tmp.i100.pn.i2449.i, ptr %.repack1.i2358.i, align 8
  %tmp.i2360.i = fmul double %tmp.i.i.i2429.i, 0x3FE9E3779B97F4A8
  %250 = fsub double %.unpack.i.i2283.i, %tmp.i2360.i
  %tmp.i2362.i = fmul double %tmp.i.i.i2433.i, 0x3FD3C6EF372FE950
  %tmp.i2363.i = fadd double %250, %tmp.i2362.i
  %tmp.i2364.i = fmul double %tmp.i23.i.i2430.i, 0x3FE9E3779B97F4A8
  %251 = fsub double %.unpack2.i.i2285.i, %tmp.i2364.i
  %tmp.i2366.i = fmul double %tmp.i23.i.i2434.i, 0x3FD3C6EF372FE950
  %tmp.i2367.i = fadd double %251, %tmp.i2366.i
  %tmp.i2368.i = fmul double %spec.select2500.i, %tmp.i23.i28.i2432.i
  %tmp.i2369.i = fmul double %spec.select.i405, %tmp.i23.i28.i2436.i
  %tmp.i2370.i = fsub double %tmp.i2368.i, %tmp.i2369.i
  %tmp.i2371.i = fmul double %spec.select2500.i, %tmp.i.i27.i2431.i
  %tmp.i2372.i = fmul double %spec.select.i405, %tmp.i.i27.i2435.i
  %tmp.i2373.i = fsub double %tmp.i2371.i, %tmp.i2372.i
  %tmp.i15.i2377.i = add i64 %237, %tmp.i14.i2271.i
  %252 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2377.i
  %tmp.i.i2458.i = fsub double %tmp.i2363.i, %tmp.i2370.i
  %tmp.i23.i2459.i = fadd double %tmp.i2373.i, %tmp.i2367.i
  %tmp.i10.i2380.i = add i64 %tmp.i9.i2340.i, %tmp.i.i2351.i
  %253 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i2380.i
  %.unpack.i.i2381.i = load double, ptr %253, align 8
  %.elt1.i.i2382.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i2380.i, i32 1
  %.unpack2.i.i2383.i = load double, ptr %.elt1.i.i2382.i, align 8
  %tmp.i101.i2461.i = fmul double %tmp.i.i2458.i, %.unpack.i.i2381.i
  %tmp.i102.i2462.i = fmul double %tmp.i23.i2459.i, %.unpack2.i.i2383.i
  br i1 %.not.i503, label %if.false.i2472.i, label %if.true.i2463.i

if.true.i2463.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2457.i"
  %tmp.i97.i2464.i = fadd double %tmp.i101.i2461.i, %tmp.i102.i2462.i
  %tmp.i98.i2465.i = fmul double %tmp.i23.i2459.i, %.unpack.i.i2381.i
  %tmp.i99.i2466.i = fmul double %tmp.i.i2458.i, %.unpack2.i.i2383.i
  %tmp.i100.i2467.i = fsub double %tmp.i98.i2465.i, %tmp.i99.i2466.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2477.i"

if.false.i2472.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2457.i"
  %tmp.i103.i2473.i = fsub double %tmp.i101.i2461.i, %tmp.i102.i2462.i
  %tmp.i104.i2474.i = fmul double %tmp.i.i2458.i, %.unpack2.i.i2383.i
  %tmp.i105.i2475.i = fmul double %tmp.i23.i2459.i, %.unpack.i.i2381.i
  %tmp.i106.i2476.i = fadd double %tmp.i105.i2475.i, %tmp.i104.i2474.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2477.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2477.i": ; preds = %if.false.i2472.i, %if.true.i2463.i
  %tmp.i97.pn.i2468.i = phi double [ %tmp.i97.i2464.i, %if.true.i2463.i ], [ %tmp.i103.i2473.i, %if.false.i2472.i ]
  %tmp.i100.pn.i2469.i = phi double [ %tmp.i100.i2467.i, %if.true.i2463.i ], [ %tmp.i106.i2476.i, %if.false.i2472.i ]
  store double %tmp.i97.pn.i2468.i, ptr %252, align 8
  %.repack1.i2385.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2377.i, i32 1
  store double %tmp.i100.pn.i2469.i, ptr %.repack1.i2385.i, align 8
  %tmp.i15.i2390.i = add i64 %237, %tmp.i14.i2277.i
  %254 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2390.i
  %tmp.i.i2478.i = fadd double %tmp.i2363.i, %tmp.i2370.i
  %tmp.i23.i2479.i = fsub double %tmp.i2367.i, %tmp.i2373.i
  %tmp.i10.i2394.i = add i64 %tmp.i9.i2340.i, %tmp.i8.i2392.i
  %255 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i2394.i
  %.unpack.i.i2395.i = load double, ptr %255, align 8
  %.elt1.i.i2396.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i2394.i, i32 1
  %.unpack2.i.i2397.i = load double, ptr %.elt1.i.i2396.i, align 8
  %tmp.i101.i2481.i = fmul double %tmp.i.i2478.i, %.unpack.i.i2395.i
  %tmp.i102.i2482.i = fmul double %tmp.i23.i2479.i, %.unpack2.i.i2397.i
  br i1 %.not.i503, label %if.false.i2492.i, label %if.true.i2483.i

if.true.i2483.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2477.i"
  %tmp.i97.i2484.i = fadd double %tmp.i101.i2481.i, %tmp.i102.i2482.i
  %tmp.i98.i2485.i = fmul double %tmp.i23.i2479.i, %.unpack.i.i2395.i
  %tmp.i99.i2486.i = fmul double %tmp.i.i2478.i, %.unpack2.i.i2397.i
  %tmp.i100.i2487.i = fsub double %tmp.i98.i2485.i, %tmp.i99.i2486.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2497.i"

if.false.i2492.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2477.i"
  %tmp.i103.i2493.i = fsub double %tmp.i101.i2481.i, %tmp.i102.i2482.i
  %tmp.i104.i2494.i = fmul double %tmp.i.i2478.i, %.unpack2.i.i2397.i
  %tmp.i105.i2495.i = fmul double %tmp.i23.i2479.i, %.unpack.i.i2395.i
  %tmp.i106.i2496.i = fadd double %tmp.i105.i2495.i, %tmp.i104.i2494.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2497.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2497.i": ; preds = %if.false.i2492.i, %if.true.i2483.i
  %tmp.i97.pn.i2488.i = phi double [ %tmp.i97.i2484.i, %if.true.i2483.i ], [ %tmp.i103.i2493.i, %if.false.i2492.i ]
  %tmp.i100.pn.i2489.i = phi double [ %tmp.i100.i2487.i, %if.true.i2483.i ], [ %tmp.i106.i2496.i, %if.false.i2492.i ]
  store double %tmp.i97.pn.i2488.i, ptr %254, align 8
  %.repack1.i2399.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2390.i, i32 1
  store double %tmp.i100.pn.i2489.i, ptr %.repack1.i2399.i, align 8
  %256 = add nuw nsw i64 %237, 1
  %exitcond.not.i421 = icmp eq i64 %256, %tmp.i212
  br i1 %exitcond.not.i421, label %imp_for.exit14.i, label %imp_for.body12.i

imp_for.exit14.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit2497.i", %imp_for.body8.i
  %257 = add nuw nsw i64 %222, 1
  %exitcond2507.not.i = icmp eq i64 %257, %.036
  br i1 %exitcond2507.not.i, label %if.exit3, label %imp_for.body8.i

if.true16:                                        ; preds = %imp_for.body
  %tmp.i.not.i454 = icmp eq i64 %tmp.i212, 1
  %.not33874062.i = icmp sgt i64 %.036, 0
  br i1 %tmp.i.not.i454, label %imp_for.cond.preheader.i474, label %imp_for.cond10.preheader.i

imp_for.cond10.preheader.i:                       ; preds = %if.true16
  br i1 %.not33874062.i, label %imp_for.body11.lr.ph.i, label %if.exit3

imp_for.body11.lr.ph.i:                           ; preds = %imp_for.cond10.preheader.i
  %tmp.i.i3608.i = mul i64 %.036, 6
  %tmp.i.i3636.i = shl nuw i64 %.036, 1
  %tmp.i.i3642.i = mul i64 %.036, 5
  %tmp.i.i3670.i = mul i64 %.036, 3
  %tmp.i.i3676.i = shl i64 %.036, 2
  %.not33864060.i = icmp sgt i64 %tmp.i212, 1
  %tmp.i.i3776.i = add nsw i64 %tmp.i212, -1
  %tmp.i8.i.i455 = mul i64 %tmp.i.i3776.i, 5
  %tmp.i8.i3825.i = shl i64 %tmp.i.i3776.i, 2
  %tmp.i8.i3861.i = shl i64 %tmp.i.i3776.i, 1
  %tmp.i8.i3875.i = mul i64 %tmp.i.i3776.i, 3
  br label %imp_for.body11.i

imp_for.cond.preheader.i474:                      ; preds = %if.true16
  br i1 %.not33874062.i, label %imp_for.body.lr.ph.i475, label %if.exit3

imp_for.body.lr.ph.i475:                          ; preds = %imp_for.cond.preheader.i474
  %tmp.i.i3456.i = mul i64 %.036, 6
  %tmp.i.i3484.i = shl nuw i64 %.036, 1
  %tmp.i.i3490.i = mul i64 %.036, 5
  %tmp.i.i3518.i = mul i64 %.036, 3
  %tmp.i.i3524.i = shl i64 %.036, 2
  br label %imp_for.body.i476

imp_for.body.i476:                                ; preds = %imp_for.body.i476, %imp_for.body.lr.ph.i475
  %258 = phi i64 [ 0, %imp_for.body.lr.ph.i475 ], [ %285, %imp_for.body.i476 ]
  %tmp.i.i.i477 = mul i64 %258, 7
  %259 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i477
  %.unpack.i.i.i478 = load double, ptr %259, align 8
  %.elt1.i.i.i479 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i477, i32 1
  %.unpack2.i.i.i480 = load double, ptr %.elt1.i.i.i479, align 8
  %tmp.i9.i.i481 = add i64 %tmp.i.i.i477, 1
  %260 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i481
  %.unpack.i.i3391.i = load double, ptr %260, align 8
  %.elt1.i.i3392.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i481, i32 1
  %.unpack2.i.i3393.i = load double, ptr %.elt1.i.i3392.i, align 8
  %tmp.i9.i3395.i = add i64 %tmp.i.i.i477, 6
  %261 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3395.i
  %.unpack.i.i3397.i = load double, ptr %261, align 8
  %.elt1.i.i3398.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3395.i, i32 1
  %.unpack2.i.i3399.i = load double, ptr %.elt1.i.i3398.i, align 8
  %tmp.i.i.i.i482 = fadd double %.unpack.i.i3391.i, %.unpack.i.i3397.i
  %tmp.i23.i.i.i483 = fadd double %.unpack2.i.i3393.i, %.unpack2.i.i3399.i
  %tmp.i.i27.i.i484 = fsub double %.unpack.i.i3391.i, %.unpack.i.i3397.i
  %tmp.i23.i28.i.i485 = fsub double %.unpack2.i.i3393.i, %.unpack2.i.i3399.i
  %tmp.i9.i3401.i = add i64 %tmp.i.i.i477, 2
  %262 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3401.i
  %.unpack.i.i3403.i486 = load double, ptr %262, align 8
  %.elt1.i.i3404.i487 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3401.i, i32 1
  %.unpack2.i.i3405.i488 = load double, ptr %.elt1.i.i3404.i487, align 8
  %tmp.i9.i3407.i = add i64 %tmp.i.i.i477, 5
  %263 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3407.i
  %.unpack.i.i3409.i = load double, ptr %263, align 8
  %.elt1.i.i3410.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3407.i, i32 1
  %.unpack2.i.i3411.i = load double, ptr %.elt1.i.i3410.i, align 8
  %tmp.i.i.i3884.i = fadd double %.unpack.i.i3403.i486, %.unpack.i.i3409.i
  %tmp.i23.i.i3885.i = fadd double %.unpack2.i.i3405.i488, %.unpack2.i.i3411.i
  %tmp.i.i27.i3886.i = fsub double %.unpack.i.i3403.i486, %.unpack.i.i3409.i
  %tmp.i23.i28.i3887.i = fsub double %.unpack2.i.i3405.i488, %.unpack2.i.i3411.i
  %tmp.i9.i3413.i = add i64 %tmp.i.i.i477, 3
  %264 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3413.i
  %.unpack.i.i3415.i = load double, ptr %264, align 8
  %.elt1.i.i3416.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3413.i, i32 1
  %.unpack2.i.i3417.i = load double, ptr %.elt1.i.i3416.i, align 8
  %tmp.i9.i3419.i = add i64 %tmp.i.i.i477, 4
  %265 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3419.i
  %.unpack.i.i3421.i = load double, ptr %265, align 8
  %.elt1.i.i3422.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i3419.i, i32 1
  %.unpack2.i.i3423.i = load double, ptr %.elt1.i.i3422.i, align 8
  %tmp.i.i.i3888.i = fadd double %.unpack.i.i3415.i, %.unpack.i.i3421.i
  %tmp.i23.i.i3889.i = fadd double %.unpack2.i.i3417.i, %.unpack2.i.i3423.i
  %tmp.i.i27.i3890.i = fsub double %.unpack.i.i3415.i, %.unpack.i.i3421.i
  %tmp.i23.i28.i3891.i = fsub double %.unpack2.i.i3417.i, %.unpack2.i.i3423.i
  %266 = getelementptr { double, double }, ptr %.018534, i64 %258
  %tmp.i3424.i = fadd double %.unpack.i.i.i478, %tmp.i.i.i.i482
  %tmp.i3425.i = fadd double %tmp.i3424.i, %tmp.i.i.i3884.i
  %tmp.i3426.i = fadd double %tmp.i3425.i, %tmp.i.i.i3888.i
  %tmp.i3427.i = fadd double %.unpack2.i.i.i480, %tmp.i23.i.i.i483
  %tmp.i3428.i = fadd double %tmp.i3427.i, %tmp.i23.i.i3885.i
  %tmp.i3429.i = fadd double %tmp.i3428.i, %tmp.i23.i.i3889.i
  store double %tmp.i3426.i, ptr %266, align 8
  %.repack1.i.i489 = getelementptr { double, double }, ptr %.018534, i64 %258, i32 1
  store double %tmp.i3429.i, ptr %.repack1.i.i489, align 8
  %tmp.i3430.i = fmul double %tmp.i.i.i.i482, 0x3FE3F3A0E28BEDD1
  %tmp.i3431.i = fadd double %.unpack.i.i.i478, %tmp.i3430.i
  %tmp.i3432.i = fmul double %tmp.i.i.i3884.i, 0x3FCC7B90E3024582
  %267 = fsub double %tmp.i3431.i, %tmp.i3432.i
  %tmp.i3434.i = fmul double %tmp.i.i.i3888.i, 0x3FECD4BCA9CB5C71
  %268 = fsub double %267, %tmp.i3434.i
  %tmp.i3436.i = fmul double %tmp.i23.i.i.i483, 0x3FE3F3A0E28BEDD1
  %tmp.i3437.i = fadd double %.unpack2.i.i.i480, %tmp.i3436.i
  %tmp.i3438.i = fmul double %tmp.i23.i.i3885.i, 0x3FCC7B90E3024582
  %269 = fsub double %tmp.i3437.i, %tmp.i3438.i
  %tmp.i3440.i = fmul double %tmp.i23.i.i3889.i, 0x3FECD4BCA9CB5C71
  %270 = fsub double %269, %tmp.i3440.i
  %tmp.i3442.i = fmul double %.040534056.i, %tmp.i23.i28.i.i485
  %tmp.i3443.i = fmul double %.033794057.i, %tmp.i23.i28.i3887.i
  %tmp.i3444.i = fadd double %tmp.i3442.i, %tmp.i3443.i
  %tmp.i3445.i = fmul double %.03380.i, %tmp.i23.i28.i3891.i
  %tmp.i3446.i = fadd double %tmp.i3444.i, %tmp.i3445.i
  %tmp.i3447.i = fmul double %.040534056.i, %tmp.i.i27.i.i484
  %tmp.i3448.i = fmul double %.033794057.i, %tmp.i.i27.i3886.i
  %tmp.i3449.i = fadd double %tmp.i3447.i, %tmp.i3448.i
  %tmp.i3450.i = fmul double %.03380.i, %tmp.i.i27.i3890.i
  %tmp.i3451.i = fadd double %tmp.i3449.i, %tmp.i3450.i
  %tmp.i.i.i3892.i = fsub double %268, %tmp.i3446.i
  %tmp.i23.i.i3893.i = fadd double %tmp.i3451.i, %270
  %tmp.i.i27.i3894.i = fadd double %268, %tmp.i3446.i
  %tmp.i23.i28.i3895.i = fsub double %270, %tmp.i3451.i
  %tmp.i13.i.i490 = add i64 %258, %.036
  %271 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i490
  store double %tmp.i.i.i3892.i, ptr %271, align 8
  %.repack1.i3454.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i490, i32 1
  store double %tmp.i23.i.i3893.i, ptr %.repack1.i3454.i, align 8
  %tmp.i13.i3457.i = add i64 %258, %tmp.i.i3456.i
  %272 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3457.i
  store double %tmp.i.i27.i3894.i, ptr %272, align 8
  %.repack1.i3460.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3457.i, i32 1
  store double %tmp.i23.i28.i3895.i, ptr %.repack1.i3460.i, align 8
  %tmp.i3462.i = fmul double %tmp.i.i.i.i482, 0x3FCC7B90E3024582
  %273 = fsub double %.unpack.i.i.i478, %tmp.i3462.i
  %tmp.i3464.i = fmul double %tmp.i.i.i3884.i, 0x3FECD4BCA9CB5C71
  %274 = fsub double %273, %tmp.i3464.i
  %tmp.i3466.i = fmul double %tmp.i.i.i3888.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3467.i = fadd double %274, %tmp.i3466.i
  %tmp.i3468.i = fmul double %tmp.i23.i.i.i483, 0x3FCC7B90E3024582
  %275 = fsub double %.unpack2.i.i.i480, %tmp.i3468.i
  %tmp.i3470.i = fmul double %tmp.i23.i.i3885.i, 0x3FECD4BCA9CB5C71
  %276 = fsub double %275, %tmp.i3470.i
  %tmp.i3472.i = fmul double %tmp.i23.i.i3889.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3473.i = fadd double %276, %tmp.i3472.i
  %tmp.i3474.i = fmul double %.033794057.i, %tmp.i23.i28.i.i485
  %tmp.i3475.i = fmul double %.03380.i, %tmp.i23.i28.i3887.i
  %tmp.i3476.i = fsub double %tmp.i3474.i, %tmp.i3475.i
  %tmp.i3477.i = fmul double %.040534056.i, %tmp.i23.i28.i3891.i
  %tmp.i3478.i = fsub double %tmp.i3476.i, %tmp.i3477.i
  %tmp.i3479.i = fmul double %.033794057.i, %tmp.i.i27.i.i484
  %tmp.i3480.i = fmul double %.03380.i, %tmp.i.i27.i3886.i
  %tmp.i3481.i = fsub double %tmp.i3479.i, %tmp.i3480.i
  %tmp.i3482.i = fmul double %.040534056.i, %tmp.i.i27.i3890.i
  %tmp.i3483.i = fsub double %tmp.i3481.i, %tmp.i3482.i
  %tmp.i.i.i3896.i = fsub double %tmp.i3467.i, %tmp.i3478.i
  %tmp.i23.i.i3897.i = fadd double %tmp.i3483.i, %tmp.i3473.i
  %tmp.i.i27.i3898.i = fadd double %tmp.i3467.i, %tmp.i3478.i
  %tmp.i23.i28.i3899.i = fsub double %tmp.i3473.i, %tmp.i3483.i
  %tmp.i13.i3485.i = add i64 %258, %tmp.i.i3484.i
  %277 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3485.i
  store double %tmp.i.i.i3896.i, ptr %277, align 8
  %.repack1.i3488.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3485.i, i32 1
  store double %tmp.i23.i.i3897.i, ptr %.repack1.i3488.i, align 8
  %tmp.i13.i3491.i = add i64 %258, %tmp.i.i3490.i
  %278 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3491.i
  store double %tmp.i.i27.i3898.i, ptr %278, align 8
  %.repack1.i3494.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3491.i, i32 1
  store double %tmp.i23.i28.i3899.i, ptr %.repack1.i3494.i, align 8
  %tmp.i3496.i = fmul double %tmp.i.i.i.i482, 0x3FECD4BCA9CB5C71
  %279 = fsub double %.unpack.i.i.i478, %tmp.i3496.i
  %tmp.i3498.i = fmul double %tmp.i.i.i3884.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3499.i = fadd double %279, %tmp.i3498.i
  %tmp.i3500.i = fmul double %tmp.i.i.i3888.i, 0x3FCC7B90E3024582
  %280 = fsub double %tmp.i3499.i, %tmp.i3500.i
  %tmp.i3502.i = fmul double %tmp.i23.i.i.i483, 0x3FECD4BCA9CB5C71
  %281 = fsub double %.unpack2.i.i.i480, %tmp.i3502.i
  %tmp.i3504.i = fmul double %tmp.i23.i.i3885.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3505.i = fadd double %281, %tmp.i3504.i
  %tmp.i3506.i = fmul double %tmp.i23.i.i3889.i, 0x3FCC7B90E3024582
  %282 = fsub double %tmp.i3505.i, %tmp.i3506.i
  %tmp.i3508.i = fmul double %.03380.i, %tmp.i23.i28.i.i485
  %tmp.i3509.i = fmul double %.040534056.i, %tmp.i23.i28.i3887.i
  %tmp.i3510.i = fsub double %tmp.i3508.i, %tmp.i3509.i
  %tmp.i3511.i = fmul double %.033794057.i, %tmp.i23.i28.i3891.i
  %tmp.i3512.i = fadd double %tmp.i3510.i, %tmp.i3511.i
  %tmp.i3513.i = fmul double %.03380.i, %tmp.i.i27.i.i484
  %tmp.i3514.i = fmul double %.040534056.i, %tmp.i.i27.i3886.i
  %tmp.i3515.i = fsub double %tmp.i3513.i, %tmp.i3514.i
  %tmp.i3516.i = fmul double %.033794057.i, %tmp.i.i27.i3890.i
  %tmp.i3517.i = fadd double %tmp.i3515.i, %tmp.i3516.i
  %tmp.i.i.i3900.i = fsub double %280, %tmp.i3512.i
  %tmp.i23.i.i3901.i = fadd double %tmp.i3517.i, %282
  %tmp.i.i27.i3902.i = fadd double %280, %tmp.i3512.i
  %tmp.i23.i28.i3903.i = fsub double %282, %tmp.i3517.i
  %tmp.i13.i3519.i = add i64 %258, %tmp.i.i3518.i
  %283 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3519.i
  store double %tmp.i.i.i3900.i, ptr %283, align 8
  %.repack1.i3522.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3519.i, i32 1
  store double %tmp.i23.i.i3901.i, ptr %.repack1.i3522.i, align 8
  %tmp.i13.i3525.i = add i64 %258, %tmp.i.i3524.i
  %284 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3525.i
  store double %tmp.i.i27.i3902.i, ptr %284, align 8
  %.repack1.i3528.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i3525.i, i32 1
  store double %tmp.i23.i28.i3903.i, ptr %.repack1.i3528.i, align 8
  %285 = add nuw nsw i64 %258, 1
  %exitcond4065.not.i = icmp eq i64 %285, %.036
  br i1 %exitcond4065.not.i, label %if.exit3, label %imp_for.body.i476

imp_for.body11.i:                                 ; preds = %imp_for.exit17.i, %imp_for.body11.lr.ph.i
  %286 = phi i64 [ 0, %imp_for.body11.lr.ph.i ], [ %347, %imp_for.exit17.i ]
  %tmp.i.i3530.i = mul i64 %286, 7
  %tmp.i10.i3531.i = mul i64 %tmp.i.i3530.i, %tmp.i212
  %287 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3531.i
  %.unpack.i.i3532.i = load double, ptr %287, align 8
  %.elt1.i.i3533.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3531.i, i32 1
  %.unpack2.i.i3534.i = load double, ptr %.elt1.i.i3533.i, align 8
  %tmp.i9.i3536.i = add i64 %tmp.i.i3530.i, 1
  %tmp.i10.i3537.i = mul i64 %tmp.i9.i3536.i, %tmp.i212
  %288 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3537.i
  %.unpack.i.i3538.i = load double, ptr %288, align 8
  %.elt1.i.i3539.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3537.i, i32 1
  %.unpack2.i.i3540.i = load double, ptr %.elt1.i.i3539.i, align 8
  %tmp.i9.i3542.i = add i64 %tmp.i.i3530.i, 6
  %tmp.i10.i3543.i = mul i64 %tmp.i9.i3542.i, %tmp.i212
  %289 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3543.i
  %.unpack.i.i3544.i = load double, ptr %289, align 8
  %.elt1.i.i3545.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3543.i, i32 1
  %.unpack2.i.i3546.i = load double, ptr %.elt1.i.i3545.i, align 8
  %tmp.i.i.i3904.i = fadd double %.unpack.i.i3538.i, %.unpack.i.i3544.i
  %tmp.i23.i.i3905.i = fadd double %.unpack2.i.i3540.i, %.unpack2.i.i3546.i
  %tmp.i.i27.i3906.i = fsub double %.unpack.i.i3538.i, %.unpack.i.i3544.i
  %tmp.i23.i28.i3907.i = fsub double %.unpack2.i.i3540.i, %.unpack2.i.i3546.i
  %tmp.i9.i3548.i = add i64 %tmp.i.i3530.i, 2
  %tmp.i10.i3549.i = mul i64 %tmp.i9.i3548.i, %tmp.i212
  %290 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3549.i
  %.unpack.i.i3550.i = load double, ptr %290, align 8
  %.elt1.i.i3551.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3549.i, i32 1
  %.unpack2.i.i3552.i = load double, ptr %.elt1.i.i3551.i, align 8
  %tmp.i9.i3554.i = add i64 %tmp.i.i3530.i, 5
  %tmp.i10.i3555.i = mul i64 %tmp.i9.i3554.i, %tmp.i212
  %291 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3555.i
  %.unpack.i.i3556.i = load double, ptr %291, align 8
  %.elt1.i.i3557.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3555.i, i32 1
  %.unpack2.i.i3558.i = load double, ptr %.elt1.i.i3557.i, align 8
  %tmp.i.i.i3908.i = fadd double %.unpack.i.i3550.i, %.unpack.i.i3556.i
  %tmp.i23.i.i3909.i = fadd double %.unpack2.i.i3552.i, %.unpack2.i.i3558.i
  %tmp.i.i27.i3910.i = fsub double %.unpack.i.i3550.i, %.unpack.i.i3556.i
  %tmp.i23.i28.i3911.i = fsub double %.unpack2.i.i3552.i, %.unpack2.i.i3558.i
  %tmp.i9.i3560.i = add i64 %tmp.i.i3530.i, 3
  %tmp.i10.i3561.i = mul i64 %tmp.i9.i3560.i, %tmp.i212
  %292 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3561.i
  %.unpack.i.i3562.i = load double, ptr %292, align 8
  %.elt1.i.i3563.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3561.i, i32 1
  %.unpack2.i.i3564.i = load double, ptr %.elt1.i.i3563.i, align 8
  %tmp.i9.i3566.i = add i64 %tmp.i.i3530.i, 4
  %tmp.i10.i3567.i = mul i64 %tmp.i9.i3566.i, %tmp.i212
  %293 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3567.i
  %.unpack.i.i3568.i = load double, ptr %293, align 8
  %.elt1.i.i3569.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i3567.i, i32 1
  %.unpack2.i.i3570.i = load double, ptr %.elt1.i.i3569.i, align 8
  %tmp.i.i.i3912.i = fadd double %.unpack.i.i3562.i, %.unpack.i.i3568.i
  %tmp.i23.i.i3913.i = fadd double %.unpack2.i.i3564.i, %.unpack2.i.i3570.i
  %tmp.i.i27.i3914.i = fsub double %.unpack.i.i3562.i, %.unpack.i.i3568.i
  %tmp.i23.i28.i3915.i = fsub double %.unpack2.i.i3564.i, %.unpack2.i.i3570.i
  %tmp.i14.i3571.i = mul i64 %286, %tmp.i212
  %294 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3571.i
  %tmp.i3572.i = fadd double %.unpack.i.i3532.i, %tmp.i.i.i3904.i
  %tmp.i3573.i = fadd double %tmp.i3572.i, %tmp.i.i.i3908.i
  %tmp.i3574.i = fadd double %tmp.i3573.i, %tmp.i.i.i3912.i
  %tmp.i3575.i = fadd double %.unpack2.i.i3534.i, %tmp.i23.i.i3905.i
  %tmp.i3576.i = fadd double %tmp.i3575.i, %tmp.i23.i.i3909.i
  %tmp.i3577.i = fadd double %tmp.i3576.i, %tmp.i23.i.i3913.i
  store double %tmp.i3574.i, ptr %294, align 8
  %.repack1.i3579.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3571.i, i32 1
  store double %tmp.i3577.i, ptr %.repack1.i3579.i, align 8
  %tmp.i3581.i = fmul double %tmp.i.i.i3904.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3582.i = fadd double %.unpack.i.i3532.i, %tmp.i3581.i
  %tmp.i3583.i = fmul double %tmp.i.i.i3908.i, 0x3FCC7B90E3024582
  %295 = fsub double %tmp.i3582.i, %tmp.i3583.i
  %tmp.i3585.i = fmul double %tmp.i.i.i3912.i, 0x3FECD4BCA9CB5C71
  %296 = fsub double %295, %tmp.i3585.i
  %tmp.i3587.i = fmul double %tmp.i23.i.i3905.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3588.i = fadd double %.unpack2.i.i3534.i, %tmp.i3587.i
  %tmp.i3589.i = fmul double %tmp.i23.i.i3909.i, 0x3FCC7B90E3024582
  %297 = fsub double %tmp.i3588.i, %tmp.i3589.i
  %tmp.i3591.i = fmul double %tmp.i23.i.i3913.i, 0x3FECD4BCA9CB5C71
  %298 = fsub double %297, %tmp.i3591.i
  %tmp.i3593.i = fmul double %.040534056.i, %tmp.i23.i28.i3907.i
  %tmp.i3594.i = fmul double %.033794057.i, %tmp.i23.i28.i3911.i
  %tmp.i3595.i = fadd double %tmp.i3593.i, %tmp.i3594.i
  %tmp.i3596.i = fmul double %.03380.i, %tmp.i23.i28.i3915.i
  %tmp.i3597.i = fadd double %tmp.i3595.i, %tmp.i3596.i
  %tmp.i3598.i = fmul double %.040534056.i, %tmp.i.i27.i3906.i
  %tmp.i3599.i = fmul double %.033794057.i, %tmp.i.i27.i3910.i
  %tmp.i3600.i = fadd double %tmp.i3598.i, %tmp.i3599.i
  %tmp.i3601.i = fmul double %.03380.i, %tmp.i.i27.i3914.i
  %tmp.i3602.i = fadd double %tmp.i3600.i, %tmp.i3601.i
  %tmp.i.i.i3916.i = fsub double %296, %tmp.i3597.i
  %tmp.i23.i.i3917.i = fadd double %tmp.i3602.i, %298
  %tmp.i.i27.i3918.i = fadd double %296, %tmp.i3597.i
  %tmp.i23.i28.i3919.i = fsub double %298, %tmp.i3602.i
  %tmp.i13.i3603.i = add i64 %286, %.036
  %tmp.i14.i3604.i = mul i64 %tmp.i13.i3603.i, %tmp.i212
  %299 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3604.i
  store double %tmp.i.i.i3916.i, ptr %299, align 8
  %.repack1.i3606.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3604.i, i32 1
  store double %tmp.i23.i.i3917.i, ptr %.repack1.i3606.i, align 8
  %tmp.i13.i3609.i = add i64 %286, %tmp.i.i3608.i
  %tmp.i14.i3610.i = mul i64 %tmp.i13.i3609.i, %tmp.i212
  %300 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3610.i
  store double %tmp.i.i27.i3918.i, ptr %300, align 8
  %.repack1.i3612.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3610.i, i32 1
  store double %tmp.i23.i28.i3919.i, ptr %.repack1.i3612.i, align 8
  %tmp.i3614.i = fmul double %tmp.i.i.i3904.i, 0x3FCC7B90E3024582
  %301 = fsub double %.unpack.i.i3532.i, %tmp.i3614.i
  %tmp.i3616.i = fmul double %tmp.i.i.i3908.i, 0x3FECD4BCA9CB5C71
  %302 = fsub double %301, %tmp.i3616.i
  %tmp.i3618.i = fmul double %tmp.i.i.i3912.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3619.i = fadd double %302, %tmp.i3618.i
  %tmp.i3620.i = fmul double %tmp.i23.i.i3905.i, 0x3FCC7B90E3024582
  %303 = fsub double %.unpack2.i.i3534.i, %tmp.i3620.i
  %tmp.i3622.i = fmul double %tmp.i23.i.i3909.i, 0x3FECD4BCA9CB5C71
  %304 = fsub double %303, %tmp.i3622.i
  %tmp.i3624.i = fmul double %tmp.i23.i.i3913.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3625.i = fadd double %304, %tmp.i3624.i
  %tmp.i3626.i = fmul double %.033794057.i, %tmp.i23.i28.i3907.i
  %tmp.i3627.i = fmul double %.03380.i, %tmp.i23.i28.i3911.i
  %tmp.i3628.i = fsub double %tmp.i3626.i, %tmp.i3627.i
  %tmp.i3629.i = fmul double %.040534056.i, %tmp.i23.i28.i3915.i
  %tmp.i3630.i = fsub double %tmp.i3628.i, %tmp.i3629.i
  %tmp.i3631.i = fmul double %.033794057.i, %tmp.i.i27.i3906.i
  %tmp.i3632.i = fmul double %.03380.i, %tmp.i.i27.i3910.i
  %tmp.i3633.i = fsub double %tmp.i3631.i, %tmp.i3632.i
  %tmp.i3634.i = fmul double %.040534056.i, %tmp.i.i27.i3914.i
  %tmp.i3635.i = fsub double %tmp.i3633.i, %tmp.i3634.i
  %tmp.i.i.i3920.i = fsub double %tmp.i3619.i, %tmp.i3630.i
  %tmp.i23.i.i3921.i = fadd double %tmp.i3635.i, %tmp.i3625.i
  %tmp.i.i27.i3922.i = fadd double %tmp.i3619.i, %tmp.i3630.i
  %tmp.i23.i28.i3923.i = fsub double %tmp.i3625.i, %tmp.i3635.i
  %tmp.i13.i3637.i = add i64 %286, %tmp.i.i3636.i
  %tmp.i14.i3638.i = mul i64 %tmp.i13.i3637.i, %tmp.i212
  %305 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3638.i
  store double %tmp.i.i.i3920.i, ptr %305, align 8
  %.repack1.i3640.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3638.i, i32 1
  store double %tmp.i23.i.i3921.i, ptr %.repack1.i3640.i, align 8
  %tmp.i13.i3643.i = add i64 %286, %tmp.i.i3642.i
  %tmp.i14.i3644.i = mul i64 %tmp.i13.i3643.i, %tmp.i212
  %306 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3644.i
  store double %tmp.i.i27.i3922.i, ptr %306, align 8
  %.repack1.i3646.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3644.i, i32 1
  store double %tmp.i23.i28.i3923.i, ptr %.repack1.i3646.i, align 8
  %tmp.i3648.i = fmul double %tmp.i.i.i3904.i, 0x3FECD4BCA9CB5C71
  %307 = fsub double %.unpack.i.i3532.i, %tmp.i3648.i
  %tmp.i3650.i = fmul double %tmp.i.i.i3908.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3651.i = fadd double %307, %tmp.i3650.i
  %tmp.i3652.i = fmul double %tmp.i.i.i3912.i, 0x3FCC7B90E3024582
  %308 = fsub double %tmp.i3651.i, %tmp.i3652.i
  %tmp.i3654.i = fmul double %tmp.i23.i.i3905.i, 0x3FECD4BCA9CB5C71
  %309 = fsub double %.unpack2.i.i3534.i, %tmp.i3654.i
  %tmp.i3656.i = fmul double %tmp.i23.i.i3909.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3657.i = fadd double %309, %tmp.i3656.i
  %tmp.i3658.i = fmul double %tmp.i23.i.i3913.i, 0x3FCC7B90E3024582
  %310 = fsub double %tmp.i3657.i, %tmp.i3658.i
  %tmp.i3660.i = fmul double %.03380.i, %tmp.i23.i28.i3907.i
  %tmp.i3661.i = fmul double %.040534056.i, %tmp.i23.i28.i3911.i
  %tmp.i3662.i = fsub double %tmp.i3660.i, %tmp.i3661.i
  %tmp.i3663.i = fmul double %.033794057.i, %tmp.i23.i28.i3915.i
  %tmp.i3664.i = fadd double %tmp.i3662.i, %tmp.i3663.i
  %tmp.i3665.i = fmul double %.03380.i, %tmp.i.i27.i3906.i
  %tmp.i3666.i = fmul double %.040534056.i, %tmp.i.i27.i3910.i
  %tmp.i3667.i = fsub double %tmp.i3665.i, %tmp.i3666.i
  %tmp.i3668.i = fmul double %.033794057.i, %tmp.i.i27.i3914.i
  %tmp.i3669.i = fadd double %tmp.i3667.i, %tmp.i3668.i
  %tmp.i.i.i3924.i = fsub double %308, %tmp.i3664.i
  %tmp.i23.i.i3925.i = fadd double %tmp.i3669.i, %310
  %tmp.i.i27.i3926.i = fadd double %308, %tmp.i3664.i
  %tmp.i23.i28.i3927.i = fsub double %310, %tmp.i3669.i
  %tmp.i13.i3671.i = add i64 %286, %tmp.i.i3670.i
  %tmp.i14.i3672.i = mul i64 %tmp.i13.i3671.i, %tmp.i212
  %311 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3672.i
  store double %tmp.i.i.i3924.i, ptr %311, align 8
  %.repack1.i3674.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3672.i, i32 1
  store double %tmp.i23.i.i3925.i, ptr %.repack1.i3674.i, align 8
  %tmp.i13.i3677.i = add i64 %286, %tmp.i.i3676.i
  %tmp.i14.i3678.i = mul i64 %tmp.i13.i3677.i, %tmp.i212
  %312 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3678.i
  store double %tmp.i.i27.i3926.i, ptr %312, align 8
  %.repack1.i3680.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i3678.i, i32 1
  store double %tmp.i23.i28.i3927.i, ptr %.repack1.i3680.i, align 8
  br i1 %.not33864060.i, label %imp_for.body15.i, label %imp_for.exit17.i

imp_for.body15.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4051.i", %imp_for.body11.i
  %313 = phi i64 [ %346, %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4051.i" ], [ 1, %imp_for.body11.i ]
  %tmp.i11.i.i456 = add i64 %313, %tmp.i10.i3531.i
  %314 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i456
  %.unpack.i.i3684.i = load double, ptr %314, align 8
  %.elt1.i.i3685.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i456, i32 1
  %.unpack2.i.i3686.i = load double, ptr %.elt1.i.i3685.i, align 8
  %tmp.i11.i3690.i = add i64 %313, %tmp.i10.i3537.i
  %315 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3690.i
  %.unpack.i.i3691.i = load double, ptr %315, align 8
  %.elt1.i.i3692.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3690.i, i32 1
  %.unpack2.i.i3693.i = load double, ptr %.elt1.i.i3692.i, align 8
  %tmp.i11.i3697.i = add i64 %313, %tmp.i10.i3543.i
  %316 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3697.i
  %.unpack.i.i3698.i = load double, ptr %316, align 8
  %.elt1.i.i3699.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3697.i, i32 1
  %.unpack2.i.i3700.i = load double, ptr %.elt1.i.i3699.i, align 8
  %tmp.i.i.i3928.i = fadd double %.unpack.i.i3691.i, %.unpack.i.i3698.i
  %tmp.i23.i.i3929.i = fadd double %.unpack2.i.i3693.i, %.unpack2.i.i3700.i
  %tmp.i.i27.i3930.i = fsub double %.unpack.i.i3691.i, %.unpack.i.i3698.i
  %tmp.i23.i28.i3931.i = fsub double %.unpack2.i.i3693.i, %.unpack2.i.i3700.i
  %tmp.i11.i3704.i = add i64 %313, %tmp.i10.i3549.i
  %317 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3704.i
  %.unpack.i.i3705.i = load double, ptr %317, align 8
  %.elt1.i.i3706.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3704.i, i32 1
  %.unpack2.i.i3707.i = load double, ptr %.elt1.i.i3706.i, align 8
  %tmp.i11.i3711.i = add i64 %313, %tmp.i10.i3555.i
  %318 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3711.i
  %.unpack.i.i3712.i = load double, ptr %318, align 8
  %.elt1.i.i3713.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3711.i, i32 1
  %.unpack2.i.i3714.i = load double, ptr %.elt1.i.i3713.i, align 8
  %tmp.i.i.i3932.i = fadd double %.unpack.i.i3705.i, %.unpack.i.i3712.i
  %tmp.i23.i.i3933.i = fadd double %.unpack2.i.i3707.i, %.unpack2.i.i3714.i
  %tmp.i.i27.i3934.i = fsub double %.unpack.i.i3705.i, %.unpack.i.i3712.i
  %tmp.i23.i28.i3935.i = fsub double %.unpack2.i.i3707.i, %.unpack2.i.i3714.i
  %tmp.i11.i3718.i = add i64 %313, %tmp.i10.i3561.i
  %319 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3718.i
  %.unpack.i.i3719.i = load double, ptr %319, align 8
  %.elt1.i.i3720.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3718.i, i32 1
  %.unpack2.i.i3721.i = load double, ptr %.elt1.i.i3720.i, align 8
  %tmp.i11.i3725.i = add i64 %313, %tmp.i10.i3567.i
  %320 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3725.i
  %.unpack.i.i3726.i = load double, ptr %320, align 8
  %.elt1.i.i3727.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i3725.i, i32 1
  %.unpack2.i.i3728.i = load double, ptr %.elt1.i.i3727.i, align 8
  %tmp.i.i.i3936.i = fadd double %.unpack.i.i3719.i, %.unpack.i.i3726.i
  %tmp.i23.i.i3937.i = fadd double %.unpack2.i.i3721.i, %.unpack2.i.i3728.i
  %tmp.i.i27.i3938.i = fsub double %.unpack.i.i3719.i, %.unpack.i.i3726.i
  %tmp.i23.i28.i3939.i = fsub double %.unpack2.i.i3721.i, %.unpack2.i.i3728.i
  %tmp.i15.i.i457 = add i64 %313, %tmp.i14.i3571.i
  %321 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i457
  %tmp.i3730.i = fadd double %.unpack.i.i3684.i, %tmp.i.i.i3928.i
  %tmp.i3731.i = fadd double %tmp.i3730.i, %tmp.i.i.i3932.i
  %tmp.i3732.i = fadd double %tmp.i3731.i, %tmp.i.i.i3936.i
  %tmp.i3733.i = fadd double %.unpack2.i.i3686.i, %tmp.i23.i.i3929.i
  %tmp.i3734.i = fadd double %tmp.i3733.i, %tmp.i23.i.i3933.i
  %tmp.i3735.i = fadd double %tmp.i3734.i, %tmp.i23.i.i3937.i
  store double %tmp.i3732.i, ptr %321, align 8
  %.repack1.i3737.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i457, i32 1
  store double %tmp.i3735.i, ptr %.repack1.i3737.i, align 8
  %tmp.i3739.i = fmul double %tmp.i.i.i3928.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3740.i = fadd double %.unpack.i.i3684.i, %tmp.i3739.i
  %tmp.i3741.i = fmul double %tmp.i.i.i3932.i, 0x3FCC7B90E3024582
  %322 = fsub double %tmp.i3740.i, %tmp.i3741.i
  %tmp.i3743.i = fmul double %tmp.i.i.i3936.i, 0x3FECD4BCA9CB5C71
  %323 = fsub double %322, %tmp.i3743.i
  %tmp.i3745.i = fmul double %tmp.i23.i.i3929.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3746.i = fadd double %.unpack2.i.i3686.i, %tmp.i3745.i
  %tmp.i3747.i = fmul double %tmp.i23.i.i3933.i, 0x3FCC7B90E3024582
  %324 = fsub double %tmp.i3746.i, %tmp.i3747.i
  %tmp.i3749.i = fmul double %tmp.i23.i.i3937.i, 0x3FECD4BCA9CB5C71
  %325 = fsub double %324, %tmp.i3749.i
  %tmp.i3751.i = fmul double %.040534056.i, %tmp.i23.i28.i3931.i
  %tmp.i3752.i = fmul double %.033794057.i, %tmp.i23.i28.i3935.i
  %tmp.i3753.i = fadd double %tmp.i3751.i, %tmp.i3752.i
  %tmp.i3754.i = fmul double %.03380.i, %tmp.i23.i28.i3939.i
  %tmp.i3755.i = fadd double %tmp.i3753.i, %tmp.i3754.i
  %tmp.i3756.i = fmul double %.040534056.i, %tmp.i.i27.i3930.i
  %tmp.i3757.i = fmul double %.033794057.i, %tmp.i.i27.i3934.i
  %tmp.i3758.i = fadd double %tmp.i3756.i, %tmp.i3757.i
  %tmp.i3759.i = fmul double %.03380.i, %tmp.i.i27.i3938.i
  %tmp.i3760.i = fadd double %tmp.i3758.i, %tmp.i3759.i
  %tmp.i.i.i3940.i = fsub double %323, %tmp.i3755.i
  %tmp.i23.i.i3941.i = fadd double %tmp.i3760.i, %325
  %tmp.i.i27.i3942.i = fadd double %323, %tmp.i3755.i
  %tmp.i23.i28.i3943.i = fsub double %325, %tmp.i3760.i
  %tmp.i15.i3763.i = add i64 %313, %tmp.i14.i3604.i
  %326 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3763.i
  %tmp.i9.i3765.i = add nsw i64 %313, -1
  %327 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i3765.i
  %.unpack.i.i3766.i = load double, ptr %327, align 8
  %.elt1.i.i3767.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i3765.i, i32 1
  %.unpack2.i.i3768.i = load double, ptr %.elt1.i.i3767.i, align 8
  %tmp.i101.i.i458 = fmul double %.unpack.i.i3766.i, %tmp.i.i.i3940.i
  %tmp.i102.i.i459 = fmul double %tmp.i23.i.i3941.i, %.unpack2.i.i3768.i
  br i1 %.not.i503, label %if.false.i.i469, label %if.true.i.i460

if.true.i.i460:                                   ; preds = %imp_for.body15.i
  %tmp.i97.i.i461 = fadd double %tmp.i101.i.i458, %tmp.i102.i.i459
  %tmp.i98.i.i462 = fmul double %.unpack.i.i3766.i, %tmp.i23.i.i3941.i
  %tmp.i99.i.i463 = fmul double %tmp.i.i.i3940.i, %.unpack2.i.i3768.i
  %tmp.i100.i.i464 = fsub double %tmp.i98.i.i462, %tmp.i99.i.i463
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i465"

if.false.i.i469:                                  ; preds = %imp_for.body15.i
  %tmp.i103.i.i470 = fsub double %tmp.i101.i.i458, %tmp.i102.i.i459
  %tmp.i104.i.i471 = fmul double %tmp.i.i.i3940.i, %.unpack2.i.i3768.i
  %tmp.i105.i.i472 = fmul double %.unpack.i.i3766.i, %tmp.i23.i.i3941.i
  %tmp.i106.i.i473 = fadd double %tmp.i104.i.i471, %tmp.i105.i.i472
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i465"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i465": ; preds = %if.false.i.i469, %if.true.i.i460
  %tmp.i97.pn.i.i466 = phi double [ %tmp.i97.i.i461, %if.true.i.i460 ], [ %tmp.i103.i.i470, %if.false.i.i469 ]
  %tmp.i100.pn.i.i467 = phi double [ %tmp.i100.i.i464, %if.true.i.i460 ], [ %tmp.i106.i.i473, %if.false.i.i469 ]
  store double %tmp.i97.pn.i.i466, ptr %326, align 8
  %.repack1.i3770.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3763.i, i32 1
  store double %tmp.i100.pn.i.i467, ptr %.repack1.i3770.i, align 8
  %tmp.i15.i3775.i = add i64 %313, %tmp.i14.i3610.i
  %328 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3775.i
  %tmp.i10.i3778.i = add i64 %tmp.i9.i3765.i, %tmp.i8.i.i455
  %329 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3778.i
  %.unpack.i.i3779.i = load double, ptr %329, align 8
  %.elt1.i.i3780.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3778.i, i32 1
  %.unpack2.i.i3781.i = load double, ptr %.elt1.i.i3780.i, align 8
  %tmp.i101.i3947.i = fmul double %tmp.i.i27.i3942.i, %.unpack.i.i3779.i
  %tmp.i102.i3948.i = fmul double %tmp.i23.i28.i3943.i, %.unpack2.i.i3781.i
  br i1 %.not.i503, label %if.false.i3958.i, label %if.true.i3949.i

if.true.i3949.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i465"
  %tmp.i97.i3950.i = fadd double %tmp.i101.i3947.i, %tmp.i102.i3948.i
  %tmp.i98.i3951.i = fmul double %tmp.i23.i28.i3943.i, %.unpack.i.i3779.i
  %tmp.i99.i3952.i = fmul double %tmp.i.i27.i3942.i, %.unpack2.i.i3781.i
  %tmp.i100.i3953.i = fsub double %tmp.i98.i3951.i, %tmp.i99.i3952.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3963.i"

if.false.i3958.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i465"
  %tmp.i103.i3959.i = fsub double %tmp.i101.i3947.i, %tmp.i102.i3948.i
  %tmp.i104.i3960.i = fmul double %tmp.i.i27.i3942.i, %.unpack2.i.i3781.i
  %tmp.i105.i3961.i = fmul double %tmp.i23.i28.i3943.i, %.unpack.i.i3779.i
  %tmp.i106.i3962.i = fadd double %tmp.i105.i3961.i, %tmp.i104.i3960.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3963.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3963.i": ; preds = %if.false.i3958.i, %if.true.i3949.i
  %tmp.i97.pn.i3954.i = phi double [ %tmp.i97.i3950.i, %if.true.i3949.i ], [ %tmp.i103.i3959.i, %if.false.i3958.i ]
  %tmp.i100.pn.i3955.i = phi double [ %tmp.i100.i3953.i, %if.true.i3949.i ], [ %tmp.i106.i3962.i, %if.false.i3958.i ]
  store double %tmp.i97.pn.i3954.i, ptr %328, align 8
  %.repack1.i3783.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3775.i, i32 1
  store double %tmp.i100.pn.i3955.i, ptr %.repack1.i3783.i, align 8
  %tmp.i3785.i = fmul double %tmp.i.i.i3928.i, 0x3FCC7B90E3024582
  %330 = fsub double %.unpack.i.i3684.i, %tmp.i3785.i
  %tmp.i3787.i = fmul double %tmp.i.i.i3932.i, 0x3FECD4BCA9CB5C71
  %331 = fsub double %330, %tmp.i3787.i
  %tmp.i3789.i = fmul double %tmp.i.i.i3936.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3790.i = fadd double %331, %tmp.i3789.i
  %tmp.i3791.i = fmul double %tmp.i23.i.i3929.i, 0x3FCC7B90E3024582
  %332 = fsub double %.unpack2.i.i3686.i, %tmp.i3791.i
  %tmp.i3793.i = fmul double %tmp.i23.i.i3933.i, 0x3FECD4BCA9CB5C71
  %333 = fsub double %332, %tmp.i3793.i
  %tmp.i3795.i = fmul double %tmp.i23.i.i3937.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3796.i = fadd double %333, %tmp.i3795.i
  %tmp.i3797.i = fmul double %.033794057.i, %tmp.i23.i28.i3931.i
  %tmp.i3798.i = fmul double %.03380.i, %tmp.i23.i28.i3935.i
  %tmp.i3799.i = fsub double %tmp.i3797.i, %tmp.i3798.i
  %tmp.i3800.i = fmul double %.040534056.i, %tmp.i23.i28.i3939.i
  %tmp.i3801.i = fsub double %tmp.i3799.i, %tmp.i3800.i
  %tmp.i3802.i = fmul double %.033794057.i, %tmp.i.i27.i3930.i
  %tmp.i3803.i = fmul double %.03380.i, %tmp.i.i27.i3934.i
  %tmp.i3804.i = fsub double %tmp.i3802.i, %tmp.i3803.i
  %tmp.i3805.i = fmul double %.040534056.i, %tmp.i.i27.i3938.i
  %tmp.i3806.i = fsub double %tmp.i3804.i, %tmp.i3805.i
  %tmp.i.i.i3964.i = fsub double %tmp.i3790.i, %tmp.i3801.i
  %tmp.i23.i.i3965.i = fadd double %tmp.i3806.i, %tmp.i3796.i
  %tmp.i.i27.i3966.i = fadd double %tmp.i3790.i, %tmp.i3801.i
  %tmp.i23.i28.i3967.i = fsub double %tmp.i3796.i, %tmp.i3806.i
  %tmp.i15.i3810.i = add i64 %313, %tmp.i14.i3638.i
  %334 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3810.i
  %tmp.i10.i3813.i = add i64 %tmp.i9.i3765.i, %tmp.i.i3776.i
  %335 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3813.i
  %.unpack.i.i3814.i = load double, ptr %335, align 8
  %.elt1.i.i3815.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3813.i, i32 1
  %.unpack2.i.i3816.i = load double, ptr %.elt1.i.i3815.i, align 8
  %tmp.i101.i3971.i = fmul double %tmp.i.i.i3964.i, %.unpack.i.i3814.i
  %tmp.i102.i3972.i = fmul double %tmp.i23.i.i3965.i, %.unpack2.i.i3816.i
  br i1 %.not.i503, label %if.false.i3982.i, label %if.true.i3973.i

if.true.i3973.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3963.i"
  %tmp.i97.i3974.i = fadd double %tmp.i101.i3971.i, %tmp.i102.i3972.i
  %tmp.i98.i3975.i = fmul double %tmp.i23.i.i3965.i, %.unpack.i.i3814.i
  %tmp.i99.i3976.i = fmul double %tmp.i.i.i3964.i, %.unpack2.i.i3816.i
  %tmp.i100.i3977.i = fsub double %tmp.i98.i3975.i, %tmp.i99.i3976.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3987.i"

if.false.i3982.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3963.i"
  %tmp.i103.i3983.i = fsub double %tmp.i101.i3971.i, %tmp.i102.i3972.i
  %tmp.i104.i3984.i = fmul double %tmp.i.i.i3964.i, %.unpack2.i.i3816.i
  %tmp.i105.i3985.i = fmul double %tmp.i23.i.i3965.i, %.unpack.i.i3814.i
  %tmp.i106.i3986.i = fadd double %tmp.i105.i3985.i, %tmp.i104.i3984.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3987.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3987.i": ; preds = %if.false.i3982.i, %if.true.i3973.i
  %tmp.i97.pn.i3978.i = phi double [ %tmp.i97.i3974.i, %if.true.i3973.i ], [ %tmp.i103.i3983.i, %if.false.i3982.i ]
  %tmp.i100.pn.i3979.i = phi double [ %tmp.i100.i3977.i, %if.true.i3973.i ], [ %tmp.i106.i3986.i, %if.false.i3982.i ]
  store double %tmp.i97.pn.i3978.i, ptr %334, align 8
  %.repack1.i3818.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3810.i, i32 1
  store double %tmp.i100.pn.i3979.i, ptr %.repack1.i3818.i, align 8
  %tmp.i15.i3823.i = add i64 %313, %tmp.i14.i3644.i
  %336 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3823.i
  %tmp.i10.i3827.i = add i64 %tmp.i9.i3765.i, %tmp.i8.i3825.i
  %337 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3827.i
  %.unpack.i.i3828.i = load double, ptr %337, align 8
  %.elt1.i.i3829.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3827.i, i32 1
  %.unpack2.i.i3830.i = load double, ptr %.elt1.i.i3829.i, align 8
  %tmp.i101.i3991.i = fmul double %tmp.i.i27.i3966.i, %.unpack.i.i3828.i
  %tmp.i102.i3992.i = fmul double %tmp.i23.i28.i3967.i, %.unpack2.i.i3830.i
  br i1 %.not.i503, label %if.false.i4002.i, label %if.true.i3993.i

if.true.i3993.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3987.i"
  %tmp.i97.i3994.i = fadd double %tmp.i101.i3991.i, %tmp.i102.i3992.i
  %tmp.i98.i3995.i = fmul double %tmp.i23.i28.i3967.i, %.unpack.i.i3828.i
  %tmp.i99.i3996.i = fmul double %tmp.i.i27.i3966.i, %.unpack2.i.i3830.i
  %tmp.i100.i3997.i = fsub double %tmp.i98.i3995.i, %tmp.i99.i3996.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4007.i"

if.false.i4002.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit3987.i"
  %tmp.i103.i4003.i = fsub double %tmp.i101.i3991.i, %tmp.i102.i3992.i
  %tmp.i104.i4004.i = fmul double %tmp.i.i27.i3966.i, %.unpack2.i.i3830.i
  %tmp.i105.i4005.i = fmul double %tmp.i23.i28.i3967.i, %.unpack.i.i3828.i
  %tmp.i106.i4006.i = fadd double %tmp.i105.i4005.i, %tmp.i104.i4004.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4007.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4007.i": ; preds = %if.false.i4002.i, %if.true.i3993.i
  %tmp.i97.pn.i3998.i = phi double [ %tmp.i97.i3994.i, %if.true.i3993.i ], [ %tmp.i103.i4003.i, %if.false.i4002.i ]
  %tmp.i100.pn.i3999.i = phi double [ %tmp.i100.i3997.i, %if.true.i3993.i ], [ %tmp.i106.i4006.i, %if.false.i4002.i ]
  store double %tmp.i97.pn.i3998.i, ptr %336, align 8
  %.repack1.i3832.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3823.i, i32 1
  store double %tmp.i100.pn.i3999.i, ptr %.repack1.i3832.i, align 8
  %tmp.i3834.i = fmul double %tmp.i.i.i3928.i, 0x3FECD4BCA9CB5C71
  %338 = fsub double %.unpack.i.i3684.i, %tmp.i3834.i
  %tmp.i3836.i = fmul double %tmp.i.i.i3932.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3837.i = fadd double %338, %tmp.i3836.i
  %tmp.i3838.i = fmul double %tmp.i.i.i3936.i, 0x3FCC7B90E3024582
  %339 = fsub double %tmp.i3837.i, %tmp.i3838.i
  %tmp.i3840.i = fmul double %tmp.i23.i.i3929.i, 0x3FECD4BCA9CB5C71
  %340 = fsub double %.unpack2.i.i3686.i, %tmp.i3840.i
  %tmp.i3842.i = fmul double %tmp.i23.i.i3933.i, 0x3FE3F3A0E28BEDD1
  %tmp.i3843.i = fadd double %340, %tmp.i3842.i
  %tmp.i3844.i = fmul double %tmp.i23.i.i3937.i, 0x3FCC7B90E3024582
  %341 = fsub double %tmp.i3843.i, %tmp.i3844.i
  %tmp.i3846.i = fmul double %.03380.i, %tmp.i23.i28.i3931.i
  %tmp.i3847.i = fmul double %.040534056.i, %tmp.i23.i28.i3935.i
  %tmp.i3848.i = fsub double %tmp.i3846.i, %tmp.i3847.i
  %tmp.i3849.i = fmul double %.033794057.i, %tmp.i23.i28.i3939.i
  %tmp.i3850.i = fadd double %tmp.i3848.i, %tmp.i3849.i
  %tmp.i3851.i = fmul double %.03380.i, %tmp.i.i27.i3930.i
  %tmp.i3852.i = fmul double %.040534056.i, %tmp.i.i27.i3934.i
  %tmp.i3853.i = fsub double %tmp.i3851.i, %tmp.i3852.i
  %tmp.i3854.i = fmul double %.033794057.i, %tmp.i.i27.i3938.i
  %tmp.i3855.i = fadd double %tmp.i3853.i, %tmp.i3854.i
  %tmp.i.i.i4008.i = fsub double %339, %tmp.i3850.i
  %tmp.i23.i.i4009.i = fadd double %tmp.i3855.i, %341
  %tmp.i.i27.i4010.i = fadd double %339, %tmp.i3850.i
  %tmp.i23.i28.i4011.i = fsub double %341, %tmp.i3855.i
  %tmp.i15.i3859.i = add i64 %313, %tmp.i14.i3672.i
  %342 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3859.i
  %tmp.i10.i3863.i = add i64 %tmp.i9.i3765.i, %tmp.i8.i3861.i
  %343 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3863.i
  %.unpack.i.i3864.i = load double, ptr %343, align 8
  %.elt1.i.i3865.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3863.i, i32 1
  %.unpack2.i.i3866.i = load double, ptr %.elt1.i.i3865.i, align 8
  %tmp.i101.i4015.i = fmul double %tmp.i.i.i4008.i, %.unpack.i.i3864.i
  %tmp.i102.i4016.i = fmul double %tmp.i23.i.i4009.i, %.unpack2.i.i3866.i
  br i1 %.not.i503, label %if.false.i4026.i, label %if.true.i4017.i

if.true.i4017.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4007.i"
  %tmp.i97.i4018.i = fadd double %tmp.i101.i4015.i, %tmp.i102.i4016.i
  %tmp.i98.i4019.i = fmul double %tmp.i23.i.i4009.i, %.unpack.i.i3864.i
  %tmp.i99.i4020.i = fmul double %tmp.i.i.i4008.i, %.unpack2.i.i3866.i
  %tmp.i100.i4021.i = fsub double %tmp.i98.i4019.i, %tmp.i99.i4020.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4031.i"

if.false.i4026.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4007.i"
  %tmp.i103.i4027.i = fsub double %tmp.i101.i4015.i, %tmp.i102.i4016.i
  %tmp.i104.i4028.i = fmul double %tmp.i.i.i4008.i, %.unpack2.i.i3866.i
  %tmp.i105.i4029.i = fmul double %tmp.i23.i.i4009.i, %.unpack.i.i3864.i
  %tmp.i106.i4030.i = fadd double %tmp.i105.i4029.i, %tmp.i104.i4028.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4031.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4031.i": ; preds = %if.false.i4026.i, %if.true.i4017.i
  %tmp.i97.pn.i4022.i = phi double [ %tmp.i97.i4018.i, %if.true.i4017.i ], [ %tmp.i103.i4027.i, %if.false.i4026.i ]
  %tmp.i100.pn.i4023.i = phi double [ %tmp.i100.i4021.i, %if.true.i4017.i ], [ %tmp.i106.i4030.i, %if.false.i4026.i ]
  store double %tmp.i97.pn.i4022.i, ptr %342, align 8
  %.repack1.i3868.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3859.i, i32 1
  store double %tmp.i100.pn.i4023.i, ptr %.repack1.i3868.i, align 8
  %tmp.i15.i3873.i = add i64 %313, %tmp.i14.i3678.i
  %344 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3873.i
  %tmp.i10.i3877.i = add i64 %tmp.i9.i3765.i, %tmp.i8.i3875.i
  %345 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3877.i
  %.unpack.i.i3878.i = load double, ptr %345, align 8
  %.elt1.i.i3879.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i3877.i, i32 1
  %.unpack2.i.i3880.i = load double, ptr %.elt1.i.i3879.i, align 8
  %tmp.i101.i4035.i = fmul double %tmp.i.i27.i4010.i, %.unpack.i.i3878.i
  %tmp.i102.i4036.i = fmul double %tmp.i23.i28.i4011.i, %.unpack2.i.i3880.i
  br i1 %.not.i503, label %if.false.i4046.i, label %if.true.i4037.i

if.true.i4037.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4031.i"
  %tmp.i97.i4038.i = fadd double %tmp.i101.i4035.i, %tmp.i102.i4036.i
  %tmp.i98.i4039.i = fmul double %tmp.i23.i28.i4011.i, %.unpack.i.i3878.i
  %tmp.i99.i4040.i = fmul double %tmp.i.i27.i4010.i, %.unpack2.i.i3880.i
  %tmp.i100.i4041.i = fsub double %tmp.i98.i4039.i, %tmp.i99.i4040.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4051.i"

if.false.i4046.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4031.i"
  %tmp.i103.i4047.i = fsub double %tmp.i101.i4035.i, %tmp.i102.i4036.i
  %tmp.i104.i4048.i = fmul double %tmp.i.i27.i4010.i, %.unpack2.i.i3880.i
  %tmp.i105.i4049.i = fmul double %tmp.i23.i28.i4011.i, %.unpack.i.i3878.i
  %tmp.i106.i4050.i = fadd double %tmp.i105.i4049.i, %tmp.i104.i4048.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4051.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4051.i": ; preds = %if.false.i4046.i, %if.true.i4037.i
  %tmp.i97.pn.i4042.i = phi double [ %tmp.i97.i4038.i, %if.true.i4037.i ], [ %tmp.i103.i4047.i, %if.false.i4046.i ]
  %tmp.i100.pn.i4043.i = phi double [ %tmp.i100.i4041.i, %if.true.i4037.i ], [ %tmp.i106.i4050.i, %if.false.i4046.i ]
  store double %tmp.i97.pn.i4042.i, ptr %344, align 8
  %.repack1.i3882.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i3873.i, i32 1
  store double %tmp.i100.pn.i4043.i, ptr %.repack1.i3882.i, align 8
  %346 = add nuw nsw i64 %313, 1
  %exitcond.not.i468 = icmp eq i64 %346, %tmp.i212
  br i1 %exitcond.not.i468, label %imp_for.exit17.i, label %imp_for.body15.i

imp_for.exit17.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit4051.i", %imp_for.body11.i
  %347 = add nuw nsw i64 %286, 1
  %exitcond4064.not.i = icmp eq i64 %347, %.036
  br i1 %exitcond4064.not.i, label %if.exit3, label %imp_for.body11.i

if.true19:                                        ; preds = %imp_for.body
  br i1 %.not.i503, label %if.exit9.thread.i, label %if.exit12.i

if.exit9.thread.i:                                ; preds = %if.true19
  br label %if.exit12.i

if.exit12.i:                                      ; preds = %if.exit9.thread.i, %if.true19
  %.056847510.i = phi double [ 0x3FE82F19BB3A28A1, %if.exit9.thread.i ], [ 0xBFE82F19BB3A28A1, %if.true19 ]
  %.05682749675007509.i = phi double [ 0x3FED1BB48EEE2C13, %if.exit9.thread.i ], [ 0xBFED1BB48EEE2C13, %if.true19 ]
  %.07492749575017508.i = phi double [ 0x3FE14CEDF8BB580B, %if.exit9.thread.i ], [ 0xBFE14CEDF8BB580B, %if.true19 ]
  %.0568375027507.i = phi double [ 0x3FEFAC9E043842EF, %if.exit9.thread.i ], [ 0xBFEFAC9E043842EF, %if.true19 ]
  %.05685.i = phi double [ 0x3FD207E7FD768DBF, %if.exit9.thread.i ], [ 0xBFD207E7FD768DBF, %if.true19 ]
  %tmp.i.not.i504 = icmp eq i64 %tmp.i212, 1
  %.not56927515.i = icmp sgt i64 %.036, 0
  br i1 %tmp.i.not.i504, label %imp_for.cond.preheader.i524, label %imp_for.cond16.preheader.i

imp_for.cond16.preheader.i:                       ; preds = %if.exit12.i
  br i1 %.not56927515.i, label %imp_for.body17.lr.ph.i, label %if.exit3

imp_for.body17.lr.ph.i:                           ; preds = %imp_for.cond16.preheader.i
  %tmp.i.i6013.i = mul i64 %.036, 10
  %tmp.i.i6037.i = shl nuw i64 %.036, 1
  %tmp.i.i6043.i = mul i64 %.036, 9
  %tmp.i.i6067.i = mul i64 %.036, 3
  %tmp.i.i6073.i = shl i64 %.036, 3
  %tmp.i.i6097.i = shl i64 %.036, 2
  %tmp.i.i6103.i = mul i64 %.036, 7
  %tmp.i.i6127.i = mul i64 %.036, 5
  %tmp.i.i6133.i = mul i64 %.036, 6
  %.not56917513.i = icmp sgt i64 %tmp.i212, 1
  %tmp.i.i6261.i = add nsw i64 %tmp.i212, -1
  %tmp.i8.i.i505 = mul i64 %tmp.i.i6261.i, 9
  %tmp.i8.i6306.i = shl i64 %tmp.i.i6261.i, 3
  %tmp.i8.i6338.i = shl i64 %tmp.i.i6261.i, 1
  %tmp.i8.i6352.i = mul i64 %tmp.i.i6261.i, 7
  %tmp.i8.i6384.i = mul i64 %tmp.i.i6261.i, 3
  %tmp.i8.i6398.i = mul i64 %tmp.i.i6261.i, 6
  %tmp.i8.i6430.i = shl i64 %tmp.i.i6261.i, 2
  %tmp.i8.i6444.i = mul i64 %tmp.i.i6261.i, 5
  br label %imp_for.body17.i

imp_for.cond.preheader.i524:                      ; preds = %if.exit12.i
  br i1 %.not56927515.i, label %imp_for.body.lr.ph.i525, label %if.exit3

imp_for.body.lr.ph.i525:                          ; preds = %imp_for.cond.preheader.i524
  %tmp.i.i5785.i = mul i64 %.036, 10
  %tmp.i.i5809.i = shl nuw i64 %.036, 1
  %tmp.i.i5815.i = mul i64 %.036, 9
  %tmp.i.i5839.i = mul i64 %.036, 3
  %tmp.i.i5845.i = shl i64 %.036, 3
  %tmp.i.i5869.i = shl i64 %.036, 2
  %tmp.i.i5875.i = mul i64 %.036, 7
  %tmp.i.i5899.i = mul i64 %.036, 5
  %tmp.i.i5905.i = mul i64 %.036, 6
  br label %imp_for.body.i526

imp_for.body.i526:                                ; preds = %imp_for.body.i526, %imp_for.body.lr.ph.i525
  %348 = phi i64 [ 0, %imp_for.body.lr.ph.i525 ], [ %386, %imp_for.body.i526 ]
  %tmp.i.i.i527 = mul i64 %348, 11
  %349 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i527
  %.unpack.i.i.i528 = load double, ptr %349, align 8
  %.elt1.i.i.i529 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i.i.i527, i32 1
  %.unpack2.i.i.i530 = load double, ptr %.elt1.i.i.i529, align 8
  %tmp.i9.i.i531 = add i64 %tmp.i.i.i527, 1
  %350 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i531
  %.unpack.i.i5696.i = load double, ptr %350, align 8
  %.elt1.i.i5697.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i.i531, i32 1
  %.unpack2.i.i5698.i = load double, ptr %.elt1.i.i5697.i, align 8
  %tmp.i9.i5700.i = add i64 %tmp.i.i.i527, 10
  %351 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5700.i
  %.unpack.i.i5702.i = load double, ptr %351, align 8
  %.elt1.i.i5703.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5700.i, i32 1
  %.unpack2.i.i5704.i = load double, ptr %.elt1.i.i5703.i, align 8
  %tmp.i.i.i.i532 = fadd double %.unpack.i.i5696.i, %.unpack.i.i5702.i
  %tmp.i23.i.i.i533 = fadd double %.unpack2.i.i5698.i, %.unpack2.i.i5704.i
  %tmp.i.i27.i.i534 = fsub double %.unpack.i.i5696.i, %.unpack.i.i5702.i
  %tmp.i23.i28.i.i535 = fsub double %.unpack2.i.i5698.i, %.unpack2.i.i5704.i
  %tmp.i9.i5706.i = add i64 %tmp.i.i.i527, 2
  %352 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5706.i
  %.unpack.i.i5708.i = load double, ptr %352, align 8
  %.elt1.i.i5709.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5706.i, i32 1
  %.unpack2.i.i5710.i = load double, ptr %.elt1.i.i5709.i, align 8
  %tmp.i9.i5712.i = add i64 %tmp.i.i.i527, 9
  %353 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5712.i
  %.unpack.i.i5714.i = load double, ptr %353, align 8
  %.elt1.i.i5715.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5712.i, i32 1
  %.unpack2.i.i5716.i = load double, ptr %.elt1.i.i5715.i, align 8
  %tmp.i.i.i6453.i = fadd double %.unpack.i.i5708.i, %.unpack.i.i5714.i
  %tmp.i23.i.i6454.i = fadd double %.unpack2.i.i5710.i, %.unpack2.i.i5716.i
  %tmp.i.i27.i6455.i = fsub double %.unpack.i.i5708.i, %.unpack.i.i5714.i
  %tmp.i23.i28.i6456.i = fsub double %.unpack2.i.i5710.i, %.unpack2.i.i5716.i
  %tmp.i9.i5718.i = add i64 %tmp.i.i.i527, 3
  %354 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5718.i
  %.unpack.i.i5720.i = load double, ptr %354, align 8
  %.elt1.i.i5721.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5718.i, i32 1
  %.unpack2.i.i5722.i = load double, ptr %.elt1.i.i5721.i, align 8
  %tmp.i9.i5724.i = add i64 %tmp.i.i.i527, 8
  %355 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5724.i
  %.unpack.i.i5726.i = load double, ptr %355, align 8
  %.elt1.i.i5727.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5724.i, i32 1
  %.unpack2.i.i5728.i = load double, ptr %.elt1.i.i5727.i, align 8
  %tmp.i.i.i6457.i = fadd double %.unpack.i.i5720.i, %.unpack.i.i5726.i
  %tmp.i23.i.i6458.i = fadd double %.unpack2.i.i5722.i, %.unpack2.i.i5728.i
  %tmp.i.i27.i6459.i = fsub double %.unpack.i.i5720.i, %.unpack.i.i5726.i
  %tmp.i23.i28.i6460.i = fsub double %.unpack2.i.i5722.i, %.unpack2.i.i5728.i
  %tmp.i9.i5730.i = add i64 %tmp.i.i.i527, 4
  %356 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5730.i
  %.unpack.i.i5732.i = load double, ptr %356, align 8
  %.elt1.i.i5733.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5730.i, i32 1
  %.unpack2.i.i5734.i = load double, ptr %.elt1.i.i5733.i, align 8
  %tmp.i9.i5736.i = add i64 %tmp.i.i.i527, 7
  %357 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5736.i
  %.unpack.i.i5738.i = load double, ptr %357, align 8
  %.elt1.i.i5739.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5736.i, i32 1
  %.unpack2.i.i5740.i = load double, ptr %.elt1.i.i5739.i, align 8
  %tmp.i.i.i6461.i = fadd double %.unpack.i.i5732.i, %.unpack.i.i5738.i
  %tmp.i23.i.i6462.i = fadd double %.unpack2.i.i5734.i, %.unpack2.i.i5740.i
  %tmp.i.i27.i6463.i = fsub double %.unpack.i.i5732.i, %.unpack.i.i5738.i
  %tmp.i23.i28.i6464.i = fsub double %.unpack2.i.i5734.i, %.unpack2.i.i5740.i
  %tmp.i9.i5742.i = add i64 %tmp.i.i.i527, 5
  %358 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5742.i
  %.unpack.i.i5744.i = load double, ptr %358, align 8
  %.elt1.i.i5745.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5742.i, i32 1
  %.unpack2.i.i5746.i = load double, ptr %.elt1.i.i5745.i, align 8
  %tmp.i9.i5748.i = add i64 %tmp.i.i.i527, 6
  %359 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5748.i
  %.unpack.i.i5750.i = load double, ptr %359, align 8
  %.elt1.i.i5751.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i9.i5748.i, i32 1
  %.unpack2.i.i5752.i = load double, ptr %.elt1.i.i5751.i, align 8
  %tmp.i.i.i6465.i = fadd double %.unpack.i.i5744.i, %.unpack.i.i5750.i
  %tmp.i23.i.i6466.i = fadd double %.unpack2.i.i5746.i, %.unpack2.i.i5752.i
  %tmp.i.i27.i6467.i = fsub double %.unpack.i.i5744.i, %.unpack.i.i5750.i
  %tmp.i23.i28.i6468.i = fsub double %.unpack2.i.i5746.i, %.unpack2.i.i5752.i
  %360 = getelementptr { double, double }, ptr %.018534, i64 %348
  %tmp.i5753.i = fadd double %.unpack.i.i.i528, %tmp.i.i.i.i532
  %tmp.i5754.i = fadd double %tmp.i5753.i, %tmp.i.i.i6453.i
  %tmp.i5755.i = fadd double %tmp.i5754.i, %tmp.i.i.i6457.i
  %tmp.i5756.i = fadd double %tmp.i5755.i, %tmp.i.i.i6461.i
  %tmp.i5757.i = fadd double %tmp.i5756.i, %tmp.i.i.i6465.i
  %tmp.i5758.i = fadd double %.unpack2.i.i.i530, %tmp.i23.i.i.i533
  %tmp.i5759.i = fadd double %tmp.i5758.i, %tmp.i23.i.i6454.i
  %tmp.i5760.i = fadd double %tmp.i5759.i, %tmp.i23.i.i6458.i
  %tmp.i5761.i = fadd double %tmp.i5760.i, %tmp.i23.i.i6462.i
  %tmp.i5762.i = fadd double %tmp.i5761.i, %tmp.i23.i.i6466.i
  store double %tmp.i5757.i, ptr %360, align 8
  %.repack1.i.i536 = getelementptr { double, double }, ptr %.018534, i64 %348, i32 1
  store double %tmp.i5762.i, ptr %.repack1.i.i536, align 8
  %tmp.i.i.i6469.i = fmul double %tmp.i.i.i.i532, 0x3FEAEB8C8764F0BA
  %tmp.i48.i.i.i537 = fmul double %tmp.i23.i.i.i533, 0.000000e+00
  %tmp.i49.i.i.i538 = fsub double %tmp.i.i.i6469.i, %tmp.i48.i.i.i537
  %tmp.i50.i.i.i539 = fmul double %tmp.i.i.i.i532, 0.000000e+00
  %tmp.i51.i.i.i540 = fmul double %tmp.i23.i.i.i533, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i.i = fadd double %tmp.i50.i.i.i539, %tmp.i51.i.i.i540
  %tmp.i.i6470.i = fadd double %.unpack.i.i.i528, %tmp.i49.i.i.i538
  %tmp.i23.i.i541 = fadd double %.unpack2.i.i.i530, %tmp.i52.i.i.i
  %tmp.i.i.i6473.i = fmul double %tmp.i.i.i6453.i, 0x3FDA9628D9C712B6
  %tmp.i48.i.i6474.i = fmul double %tmp.i23.i.i6454.i, 0.000000e+00
  %tmp.i49.i.i6475.i = fsub double %tmp.i.i.i6473.i, %tmp.i48.i.i6474.i
  %tmp.i50.i.i6476.i = fmul double %tmp.i.i.i6453.i, 0.000000e+00
  %tmp.i51.i.i6477.i = fmul double %tmp.i23.i.i6454.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6478.i = fadd double %tmp.i50.i.i6476.i, %tmp.i51.i.i6477.i
  %tmp.i.i6479.i = fadd double %tmp.i.i6470.i, %tmp.i49.i.i6475.i
  %tmp.i23.i6480.i = fadd double %tmp.i23.i.i541, %tmp.i52.i.i6478.i
  %tmp.i.i.i6483.i = fmul double %tmp.i.i.i6457.i, 0xBFC2375F640F44DB
  %tmp.i48.i.i6484.i = fmul double %tmp.i23.i.i6458.i, 0.000000e+00
  %tmp.i49.i.i6485.i = fsub double %tmp.i.i.i6483.i, %tmp.i48.i.i6484.i
  %tmp.i50.i.i6486.i = fmul double %tmp.i.i.i6457.i, 0.000000e+00
  %tmp.i51.i.i6487.i = fmul double %tmp.i23.i.i6458.i, 0x3FC2375F640F44DB
  %361 = fsub double %tmp.i50.i.i6486.i, %tmp.i51.i.i6487.i
  %tmp.i.i6489.i = fadd double %tmp.i.i6479.i, %tmp.i49.i.i6485.i
  %tmp.i23.i6490.i = fadd double %tmp.i23.i6480.i, %361
  %tmp.i.i.i6493.i = fmul double %tmp.i.i.i6461.i, 0xBFE4F49E7F775887
  %tmp.i48.i.i6494.i = fmul double %tmp.i23.i.i6462.i, 0.000000e+00
  %tmp.i49.i.i6495.i = fsub double %tmp.i.i.i6493.i, %tmp.i48.i.i6494.i
  %tmp.i50.i.i6496.i = fmul double %tmp.i.i.i6461.i, 0.000000e+00
  %tmp.i51.i.i6497.i = fmul double %tmp.i23.i.i6462.i, 0x3FE4F49E7F775887
  %362 = fsub double %tmp.i50.i.i6496.i, %tmp.i51.i.i6497.i
  %tmp.i.i6499.i = fadd double %tmp.i.i6489.i, %tmp.i49.i.i6495.i
  %tmp.i23.i6500.i = fadd double %tmp.i23.i6490.i, %362
  %tmp.i.i.i6503.i = fmul double %tmp.i.i.i6465.i, 0xBFEEB42A9BCD5057
  %tmp.i48.i.i6504.i = fmul double %tmp.i23.i.i6466.i, 0.000000e+00
  %tmp.i49.i.i6505.i = fsub double %tmp.i.i.i6503.i, %tmp.i48.i.i6504.i
  %tmp.i50.i.i6506.i = fmul double %tmp.i.i.i6465.i, 0.000000e+00
  %tmp.i51.i.i6507.i = fmul double %tmp.i23.i.i6466.i, 0x3FEEB42A9BCD5057
  %363 = fsub double %tmp.i50.i.i6506.i, %tmp.i51.i.i6507.i
  %tmp.i.i6509.i = fadd double %tmp.i.i6499.i, %tmp.i49.i.i6505.i
  %tmp.i23.i6510.i = fadd double %tmp.i23.i6500.i, %363
  %tmp.i5763.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i.i535
  %tmp.i5764.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6456.i
  %tmp.i5765.i = fadd double %tmp.i5763.i, %tmp.i5764.i
  %tmp.i5766.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6460.i
  %tmp.i5767.i = fadd double %tmp.i5765.i, %tmp.i5766.i
  %tmp.i5768.i = fmul double %.056847510.i, %tmp.i23.i28.i6464.i
  %tmp.i5769.i = fadd double %tmp.i5767.i, %tmp.i5768.i
  %tmp.i5770.i = fmul double %.05685.i, %tmp.i23.i28.i6468.i
  %tmp.i5771.i = fadd double %tmp.i5769.i, %tmp.i5770.i
  %tmp.i5772.i = fmul double %.07492749575017508.i, %tmp.i.i27.i.i534
  %tmp.i5773.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6455.i
  %tmp.i5774.i = fadd double %tmp.i5772.i, %tmp.i5773.i
  %tmp.i5775.i = fmul double %.0568375027507.i, %tmp.i.i27.i6459.i
  %tmp.i5776.i = fadd double %tmp.i5774.i, %tmp.i5775.i
  %tmp.i5777.i = fmul double %.056847510.i, %tmp.i.i27.i6463.i
  %tmp.i5778.i = fadd double %tmp.i5776.i, %tmp.i5777.i
  %tmp.i5779.i = fmul double %.05685.i, %tmp.i.i27.i6467.i
  %tmp.i5780.i = fadd double %tmp.i5778.i, %tmp.i5779.i
  %tmp.i.i.i6511.i = fsub double %tmp.i.i6509.i, %tmp.i5771.i
  %tmp.i23.i.i6512.i = fadd double %tmp.i5780.i, %tmp.i23.i6510.i
  %tmp.i.i27.i6513.i = fadd double %tmp.i5771.i, %tmp.i.i6509.i
  %tmp.i23.i28.i6514.i = fsub double %tmp.i23.i6510.i, %tmp.i5780.i
  %tmp.i13.i.i542 = add i64 %348, %.036
  %364 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i542
  store double %tmp.i.i.i6511.i, ptr %364, align 8
  %.repack1.i5783.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i.i542, i32 1
  store double %tmp.i23.i.i6512.i, ptr %.repack1.i5783.i, align 8
  %tmp.i13.i5786.i = add i64 %348, %tmp.i.i5785.i
  %365 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5786.i
  store double %tmp.i.i27.i6513.i, ptr %365, align 8
  %.repack1.i5789.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5786.i, i32 1
  store double %tmp.i23.i28.i6514.i, ptr %.repack1.i5789.i, align 8
  %tmp.i.i.i6517.i = fmul double %tmp.i.i.i.i532, 0x3FDA9628D9C712B6
  %tmp.i49.i.i6519.i = fsub double %tmp.i.i.i6517.i, %tmp.i48.i.i.i537
  %tmp.i51.i.i6521.i = fmul double %tmp.i23.i.i.i533, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6522.i = fadd double %tmp.i50.i.i.i539, %tmp.i51.i.i6521.i
  %tmp.i.i6523.i = fadd double %.unpack.i.i.i528, %tmp.i49.i.i6519.i
  %tmp.i23.i6524.i = fadd double %.unpack2.i.i.i530, %tmp.i52.i.i6522.i
  %tmp.i.i.i6527.i = fmul double %tmp.i.i.i6453.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i6529.i = fsub double %tmp.i.i.i6527.i, %tmp.i48.i.i6474.i
  %tmp.i51.i.i6531.i = fmul double %tmp.i23.i.i6454.i, 0x3FE4F49E7F775887
  %366 = fsub double %tmp.i50.i.i6476.i, %tmp.i51.i.i6531.i
  %tmp.i.i6533.i = fadd double %tmp.i.i6523.i, %tmp.i49.i.i6529.i
  %tmp.i23.i6534.i = fadd double %tmp.i23.i6524.i, %366
  %tmp.i.i.i6537.i = fmul double %tmp.i.i.i6457.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6539.i = fsub double %tmp.i.i.i6537.i, %tmp.i48.i.i6484.i
  %tmp.i51.i.i6541.i = fmul double %tmp.i23.i.i6458.i, 0x3FEEB42A9BCD5057
  %367 = fsub double %tmp.i50.i.i6486.i, %tmp.i51.i.i6541.i
  %tmp.i.i6543.i = fadd double %tmp.i.i6533.i, %tmp.i49.i.i6539.i
  %tmp.i23.i6544.i = fadd double %tmp.i23.i6534.i, %367
  %tmp.i.i.i6547.i = fmul double %tmp.i.i.i6461.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i6549.i = fsub double %tmp.i.i.i6547.i, %tmp.i48.i.i6494.i
  %tmp.i51.i.i6551.i = fmul double %tmp.i23.i.i6462.i, 0x3FC2375F640F44DB
  %368 = fsub double %tmp.i50.i.i6496.i, %tmp.i51.i.i6551.i
  %tmp.i.i6553.i = fadd double %tmp.i.i6543.i, %tmp.i49.i.i6549.i
  %tmp.i23.i6554.i = fadd double %tmp.i23.i6544.i, %368
  %tmp.i.i.i6557.i = fmul double %tmp.i.i.i6465.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6559.i = fsub double %tmp.i.i.i6557.i, %tmp.i48.i.i6504.i
  %tmp.i51.i.i6561.i = fmul double %tmp.i23.i.i6466.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6562.i = fadd double %tmp.i50.i.i6506.i, %tmp.i51.i.i6561.i
  %tmp.i.i6563.i = fadd double %tmp.i.i6553.i, %tmp.i49.i.i6559.i
  %tmp.i23.i6564.i = fadd double %tmp.i23.i6554.i, %tmp.i52.i.i6562.i
  %tmp.i5791.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i.i535
  %tmp.i5792.i = fmul double %.056847510.i, %tmp.i23.i28.i6456.i
  %tmp.i5793.i = fadd double %tmp.i5791.i, %tmp.i5792.i
  %tmp.i5794.i = fmul double %.05685.i, %tmp.i23.i28.i6460.i
  %tmp.i5795.i = fsub double %tmp.i5793.i, %tmp.i5794.i
  %tmp.i5796.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6464.i
  %tmp.i5797.i = fsub double %tmp.i5795.i, %tmp.i5796.i
  %tmp.i5798.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6468.i
  %tmp.i5799.i = fsub double %tmp.i5797.i, %tmp.i5798.i
  %tmp.i5800.i = fmul double %.05682749675007509.i, %tmp.i.i27.i.i534
  %tmp.i5801.i = fmul double %.056847510.i, %tmp.i.i27.i6455.i
  %tmp.i5802.i = fadd double %tmp.i5800.i, %tmp.i5801.i
  %tmp.i5803.i = fmul double %.05685.i, %tmp.i.i27.i6459.i
  %tmp.i5804.i = fsub double %tmp.i5802.i, %tmp.i5803.i
  %tmp.i5805.i = fmul double %.0568375027507.i, %tmp.i.i27.i6463.i
  %tmp.i5806.i = fsub double %tmp.i5804.i, %tmp.i5805.i
  %tmp.i5807.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6467.i
  %tmp.i5808.i = fsub double %tmp.i5806.i, %tmp.i5807.i
  %tmp.i.i.i6565.i = fsub double %tmp.i.i6563.i, %tmp.i5799.i
  %tmp.i23.i.i6566.i = fadd double %tmp.i5808.i, %tmp.i23.i6564.i
  %tmp.i.i27.i6567.i = fadd double %tmp.i5799.i, %tmp.i.i6563.i
  %tmp.i23.i28.i6568.i = fsub double %tmp.i23.i6564.i, %tmp.i5808.i
  %tmp.i13.i5810.i = add i64 %348, %tmp.i.i5809.i
  %369 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5810.i
  store double %tmp.i.i.i6565.i, ptr %369, align 8
  %.repack1.i5813.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5810.i, i32 1
  store double %tmp.i23.i.i6566.i, ptr %.repack1.i5813.i, align 8
  %tmp.i13.i5816.i = add i64 %348, %tmp.i.i5815.i
  %370 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5816.i
  store double %tmp.i.i27.i6567.i, ptr %370, align 8
  %.repack1.i5819.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5816.i, i32 1
  store double %tmp.i23.i28.i6568.i, ptr %.repack1.i5819.i, align 8
  %tmp.i.i.i6571.i = fmul double %tmp.i.i.i.i532, 0xBFC2375F640F44DB
  %tmp.i49.i.i6573.i = fsub double %tmp.i.i.i6571.i, %tmp.i48.i.i.i537
  %tmp.i51.i.i6575.i = fmul double %tmp.i23.i.i.i533, 0x3FC2375F640F44DB
  %371 = fsub double %tmp.i50.i.i.i539, %tmp.i51.i.i6575.i
  %tmp.i.i6577.i = fadd double %.unpack.i.i.i528, %tmp.i49.i.i6573.i
  %tmp.i23.i6578.i = fadd double %.unpack2.i.i.i530, %371
  %tmp.i.i.i6581.i = fmul double %tmp.i.i.i6453.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6583.i = fsub double %tmp.i.i.i6581.i, %tmp.i48.i.i6474.i
  %tmp.i51.i.i6585.i = fmul double %tmp.i23.i.i6454.i, 0x3FEEB42A9BCD5057
  %372 = fsub double %tmp.i50.i.i6476.i, %tmp.i51.i.i6585.i
  %tmp.i.i6587.i = fadd double %tmp.i.i6577.i, %tmp.i49.i.i6583.i
  %tmp.i23.i6588.i = fadd double %tmp.i23.i6578.i, %372
  %tmp.i.i.i6591.i = fmul double %tmp.i.i.i6457.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i6593.i = fsub double %tmp.i.i.i6591.i, %tmp.i48.i.i6484.i
  %tmp.i51.i.i6595.i = fmul double %tmp.i23.i.i6458.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6596.i = fadd double %tmp.i50.i.i6486.i, %tmp.i51.i.i6595.i
  %tmp.i.i6597.i = fadd double %tmp.i.i6587.i, %tmp.i49.i.i6593.i
  %tmp.i23.i6598.i = fadd double %tmp.i23.i6588.i, %tmp.i52.i.i6596.i
  %tmp.i.i.i6601.i = fmul double %tmp.i.i.i6461.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6603.i = fsub double %tmp.i.i.i6601.i, %tmp.i48.i.i6494.i
  %tmp.i51.i.i6605.i = fmul double %tmp.i23.i.i6462.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6606.i = fadd double %tmp.i50.i.i6496.i, %tmp.i51.i.i6605.i
  %tmp.i.i6607.i = fadd double %tmp.i.i6597.i, %tmp.i49.i.i6603.i
  %tmp.i23.i6608.i = fadd double %tmp.i23.i6598.i, %tmp.i52.i.i6606.i
  %tmp.i.i.i6611.i = fmul double %tmp.i.i.i6465.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i6613.i = fsub double %tmp.i.i.i6611.i, %tmp.i48.i.i6504.i
  %tmp.i51.i.i6615.i = fmul double %tmp.i23.i.i6466.i, 0x3FE4F49E7F775887
  %373 = fsub double %tmp.i50.i.i6506.i, %tmp.i51.i.i6615.i
  %tmp.i.i6617.i = fadd double %tmp.i.i6607.i, %tmp.i49.i.i6613.i
  %tmp.i23.i6618.i = fadd double %tmp.i23.i6608.i, %373
  %tmp.i5821.i = fmul double %.0568375027507.i, %tmp.i23.i28.i.i535
  %tmp.i5822.i = fmul double %.05685.i, %tmp.i23.i28.i6456.i
  %tmp.i5823.i = fsub double %tmp.i5821.i, %tmp.i5822.i
  %tmp.i5824.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6460.i
  %tmp.i5825.i = fsub double %tmp.i5823.i, %tmp.i5824.i
  %tmp.i5826.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6464.i
  %tmp.i5827.i = fadd double %tmp.i5825.i, %tmp.i5826.i
  %tmp.i5828.i = fmul double %.056847510.i, %tmp.i23.i28.i6468.i
  %tmp.i5829.i = fadd double %tmp.i5827.i, %tmp.i5828.i
  %tmp.i5830.i = fmul double %.0568375027507.i, %tmp.i.i27.i.i534
  %tmp.i5831.i = fmul double %.05685.i, %tmp.i.i27.i6455.i
  %tmp.i5832.i = fsub double %tmp.i5830.i, %tmp.i5831.i
  %tmp.i5833.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6459.i
  %tmp.i5834.i = fsub double %tmp.i5832.i, %tmp.i5833.i
  %tmp.i5835.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6463.i
  %tmp.i5836.i = fadd double %tmp.i5834.i, %tmp.i5835.i
  %tmp.i5837.i = fmul double %.056847510.i, %tmp.i.i27.i6467.i
  %tmp.i5838.i = fadd double %tmp.i5836.i, %tmp.i5837.i
  %tmp.i.i.i6619.i = fsub double %tmp.i.i6617.i, %tmp.i5829.i
  %tmp.i23.i.i6620.i = fadd double %tmp.i5838.i, %tmp.i23.i6618.i
  %tmp.i.i27.i6621.i = fadd double %tmp.i5829.i, %tmp.i.i6617.i
  %tmp.i23.i28.i6622.i = fsub double %tmp.i23.i6618.i, %tmp.i5838.i
  %tmp.i13.i5840.i = add i64 %348, %tmp.i.i5839.i
  %374 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5840.i
  store double %tmp.i.i.i6619.i, ptr %374, align 8
  %.repack1.i5843.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5840.i, i32 1
  store double %tmp.i23.i.i6620.i, ptr %.repack1.i5843.i, align 8
  %tmp.i13.i5846.i = add i64 %348, %tmp.i.i5845.i
  %375 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5846.i
  store double %tmp.i.i27.i6621.i, ptr %375, align 8
  %.repack1.i5849.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5846.i, i32 1
  store double %tmp.i23.i28.i6622.i, ptr %.repack1.i5849.i, align 8
  %tmp.i.i.i6625.i = fmul double %tmp.i.i.i.i532, 0xBFE4F49E7F775887
  %tmp.i49.i.i6627.i = fsub double %tmp.i.i.i6625.i, %tmp.i48.i.i.i537
  %tmp.i51.i.i6629.i = fmul double %tmp.i23.i.i.i533, 0x3FE4F49E7F775887
  %376 = fsub double %tmp.i50.i.i.i539, %tmp.i51.i.i6629.i
  %tmp.i.i6631.i = fadd double %.unpack.i.i.i528, %tmp.i49.i.i6627.i
  %tmp.i23.i6632.i = fadd double %.unpack2.i.i.i530, %376
  %tmp.i.i.i6635.i = fmul double %tmp.i.i.i6453.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i6637.i = fsub double %tmp.i.i.i6635.i, %tmp.i48.i.i6474.i
  %tmp.i51.i.i6639.i = fmul double %tmp.i23.i.i6454.i, 0x3FC2375F640F44DB
  %377 = fsub double %tmp.i50.i.i6476.i, %tmp.i51.i.i6639.i
  %tmp.i.i6641.i = fadd double %tmp.i.i6631.i, %tmp.i49.i.i6637.i
  %tmp.i23.i6642.i = fadd double %tmp.i23.i6632.i, %377
  %tmp.i.i.i6645.i = fmul double %tmp.i.i.i6457.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6647.i = fsub double %tmp.i.i.i6645.i, %tmp.i48.i.i6484.i
  %tmp.i51.i.i6649.i = fmul double %tmp.i23.i.i6458.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6650.i = fadd double %tmp.i50.i.i6486.i, %tmp.i51.i.i6649.i
  %tmp.i.i6651.i = fadd double %tmp.i.i6641.i, %tmp.i49.i.i6647.i
  %tmp.i23.i6652.i = fadd double %tmp.i23.i6642.i, %tmp.i52.i.i6650.i
  %tmp.i.i.i6655.i = fmul double %tmp.i.i.i6461.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6657.i = fsub double %tmp.i.i.i6655.i, %tmp.i48.i.i6494.i
  %tmp.i51.i.i6659.i = fmul double %tmp.i23.i.i6462.i, 0x3FEEB42A9BCD5057
  %378 = fsub double %tmp.i50.i.i6496.i, %tmp.i51.i.i6659.i
  %tmp.i.i6661.i = fadd double %tmp.i.i6651.i, %tmp.i49.i.i6657.i
  %tmp.i23.i6662.i = fadd double %tmp.i23.i6652.i, %378
  %tmp.i.i.i6665.i = fmul double %tmp.i.i.i6465.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i6667.i = fsub double %tmp.i.i.i6665.i, %tmp.i48.i.i6504.i
  %tmp.i51.i.i6669.i = fmul double %tmp.i23.i.i6466.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6670.i = fadd double %tmp.i50.i.i6506.i, %tmp.i51.i.i6669.i
  %tmp.i.i6671.i = fadd double %tmp.i.i6661.i, %tmp.i49.i.i6667.i
  %tmp.i23.i6672.i = fadd double %tmp.i23.i6662.i, %tmp.i52.i.i6670.i
  %tmp.i5851.i = fmul double %.056847510.i, %tmp.i23.i28.i.i535
  %tmp.i5852.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6456.i
  %tmp.i5853.i = fsub double %tmp.i5851.i, %tmp.i5852.i
  %tmp.i5854.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6460.i
  %tmp.i5855.i = fadd double %tmp.i5853.i, %tmp.i5854.i
  %tmp.i5856.i = fmul double %.05685.i, %tmp.i23.i28.i6464.i
  %tmp.i5857.i = fadd double %tmp.i5855.i, %tmp.i5856.i
  %tmp.i5858.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6468.i
  %tmp.i5859.i = fsub double %tmp.i5857.i, %tmp.i5858.i
  %tmp.i5860.i = fmul double %.056847510.i, %tmp.i.i27.i.i534
  %tmp.i5861.i = fmul double %.0568375027507.i, %tmp.i.i27.i6455.i
  %tmp.i5862.i = fsub double %tmp.i5860.i, %tmp.i5861.i
  %tmp.i5863.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6459.i
  %tmp.i5864.i = fadd double %tmp.i5862.i, %tmp.i5863.i
  %tmp.i5865.i = fmul double %.05685.i, %tmp.i.i27.i6463.i
  %tmp.i5866.i = fadd double %tmp.i5864.i, %tmp.i5865.i
  %tmp.i5867.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6467.i
  %tmp.i5868.i = fsub double %tmp.i5866.i, %tmp.i5867.i
  %tmp.i.i.i6673.i = fsub double %tmp.i.i6671.i, %tmp.i5859.i
  %tmp.i23.i.i6674.i = fadd double %tmp.i5868.i, %tmp.i23.i6672.i
  %tmp.i.i27.i6675.i = fadd double %tmp.i5859.i, %tmp.i.i6671.i
  %tmp.i23.i28.i6676.i = fsub double %tmp.i23.i6672.i, %tmp.i5868.i
  %tmp.i13.i5870.i = add i64 %348, %tmp.i.i5869.i
  %379 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5870.i
  store double %tmp.i.i.i6673.i, ptr %379, align 8
  %.repack1.i5873.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5870.i, i32 1
  store double %tmp.i23.i.i6674.i, ptr %.repack1.i5873.i, align 8
  %tmp.i13.i5876.i = add i64 %348, %tmp.i.i5875.i
  %380 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5876.i
  store double %tmp.i.i27.i6675.i, ptr %380, align 8
  %.repack1.i5879.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5876.i, i32 1
  store double %tmp.i23.i28.i6676.i, ptr %.repack1.i5879.i, align 8
  %tmp.i.i.i6679.i = fmul double %tmp.i.i.i.i532, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6681.i = fsub double %tmp.i.i.i6679.i, %tmp.i48.i.i.i537
  %tmp.i51.i.i6683.i = fmul double %tmp.i23.i.i.i533, 0x3FEEB42A9BCD5057
  %381 = fsub double %tmp.i50.i.i.i539, %tmp.i51.i.i6683.i
  %tmp.i.i6685.i = fadd double %.unpack.i.i.i528, %tmp.i49.i.i6681.i
  %tmp.i23.i6686.i = fadd double %.unpack2.i.i.i530, %381
  %tmp.i.i.i6689.i = fmul double %tmp.i.i.i6453.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6691.i = fsub double %tmp.i.i.i6689.i, %tmp.i48.i.i6474.i
  %tmp.i51.i.i6693.i = fmul double %tmp.i23.i.i6454.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6694.i = fadd double %tmp.i50.i.i6476.i, %tmp.i51.i.i6693.i
  %tmp.i.i6695.i = fadd double %tmp.i.i6685.i, %tmp.i49.i.i6691.i
  %tmp.i23.i6696.i = fadd double %tmp.i23.i6686.i, %tmp.i52.i.i6694.i
  %tmp.i.i.i6699.i = fmul double %tmp.i.i.i6457.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i6701.i = fsub double %tmp.i.i.i6699.i, %tmp.i48.i.i6484.i
  %tmp.i51.i.i6703.i = fmul double %tmp.i23.i.i6458.i, 0x3FE4F49E7F775887
  %382 = fsub double %tmp.i50.i.i6486.i, %tmp.i51.i.i6703.i
  %tmp.i.i6705.i = fadd double %tmp.i.i6695.i, %tmp.i49.i.i6701.i
  %tmp.i23.i6706.i = fadd double %tmp.i23.i6696.i, %382
  %tmp.i.i.i6709.i = fmul double %tmp.i.i.i6461.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i6711.i = fsub double %tmp.i.i.i6709.i, %tmp.i48.i.i6494.i
  %tmp.i51.i.i6713.i = fmul double %tmp.i23.i.i6462.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6714.i = fadd double %tmp.i50.i.i6496.i, %tmp.i51.i.i6713.i
  %tmp.i.i6715.i = fadd double %tmp.i.i6705.i, %tmp.i49.i.i6711.i
  %tmp.i23.i6716.i = fadd double %tmp.i23.i6706.i, %tmp.i52.i.i6714.i
  %tmp.i.i.i6719.i = fmul double %tmp.i.i.i6465.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i6721.i = fsub double %tmp.i.i.i6719.i, %tmp.i48.i.i6504.i
  %tmp.i51.i.i6723.i = fmul double %tmp.i23.i.i6466.i, 0x3FC2375F640F44DB
  %383 = fsub double %tmp.i50.i.i6506.i, %tmp.i51.i.i6723.i
  %tmp.i.i6725.i = fadd double %tmp.i.i6715.i, %tmp.i49.i.i6721.i
  %tmp.i23.i6726.i = fadd double %tmp.i23.i6716.i, %383
  %tmp.i5881.i = fmul double %.05685.i, %tmp.i23.i28.i.i535
  %tmp.i5882.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6456.i
  %tmp.i5883.i = fsub double %tmp.i5881.i, %tmp.i5882.i
  %tmp.i5884.i = fmul double %.056847510.i, %tmp.i23.i28.i6460.i
  %tmp.i5885.i = fadd double %tmp.i5883.i, %tmp.i5884.i
  %tmp.i5886.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6464.i
  %tmp.i5887.i = fsub double %tmp.i5885.i, %tmp.i5886.i
  %tmp.i5888.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6468.i
  %tmp.i5889.i = fadd double %tmp.i5887.i, %tmp.i5888.i
  %tmp.i5890.i = fmul double %.05685.i, %tmp.i.i27.i.i534
  %tmp.i5891.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6455.i
  %tmp.i5892.i = fsub double %tmp.i5890.i, %tmp.i5891.i
  %tmp.i5893.i = fmul double %.056847510.i, %tmp.i.i27.i6459.i
  %tmp.i5894.i = fadd double %tmp.i5892.i, %tmp.i5893.i
  %tmp.i5895.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6463.i
  %tmp.i5896.i = fsub double %tmp.i5894.i, %tmp.i5895.i
  %tmp.i5897.i = fmul double %.0568375027507.i, %tmp.i.i27.i6467.i
  %tmp.i5898.i = fadd double %tmp.i5896.i, %tmp.i5897.i
  %tmp.i.i.i6727.i = fsub double %tmp.i.i6725.i, %tmp.i5889.i
  %tmp.i23.i.i6728.i = fadd double %tmp.i5898.i, %tmp.i23.i6726.i
  %tmp.i.i27.i6729.i = fadd double %tmp.i5889.i, %tmp.i.i6725.i
  %tmp.i23.i28.i6730.i = fsub double %tmp.i23.i6726.i, %tmp.i5898.i
  %tmp.i13.i5900.i = add i64 %348, %tmp.i.i5899.i
  %384 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5900.i
  store double %tmp.i.i.i6727.i, ptr %384, align 8
  %.repack1.i5903.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5900.i, i32 1
  store double %tmp.i23.i.i6728.i, ptr %.repack1.i5903.i, align 8
  %tmp.i13.i5906.i = add i64 %348, %tmp.i.i5905.i
  %385 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5906.i
  store double %tmp.i.i27.i6729.i, ptr %385, align 8
  %.repack1.i5909.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i13.i5906.i, i32 1
  store double %tmp.i23.i28.i6730.i, ptr %.repack1.i5909.i, align 8
  %386 = add nuw nsw i64 %348, 1
  %exitcond7518.not.i = icmp eq i64 %386, %.036
  br i1 %exitcond7518.not.i, label %if.exit3, label %imp_for.body.i526

imp_for.body17.i:                                 ; preds = %imp_for.exit23.i, %imp_for.body17.lr.ph.i
  %387 = phi i64 [ 0, %imp_for.body17.lr.ph.i ], [ %474, %imp_for.exit23.i ]
  %tmp.i.i5911.i = mul i64 %387, 11
  %tmp.i10.i5912.i = mul i64 %tmp.i.i5911.i, %tmp.i212
  %388 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5912.i
  %.unpack.i.i5913.i = load double, ptr %388, align 8
  %.elt1.i.i5914.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5912.i, i32 1
  %.unpack2.i.i5915.i = load double, ptr %.elt1.i.i5914.i, align 8
  %tmp.i9.i5917.i = add i64 %tmp.i.i5911.i, 1
  %tmp.i10.i5918.i = mul i64 %tmp.i9.i5917.i, %tmp.i212
  %389 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5918.i
  %.unpack.i.i5919.i = load double, ptr %389, align 8
  %.elt1.i.i5920.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5918.i, i32 1
  %.unpack2.i.i5921.i = load double, ptr %.elt1.i.i5920.i, align 8
  %tmp.i9.i5923.i = add i64 %tmp.i.i5911.i, 10
  %tmp.i10.i5924.i = mul i64 %tmp.i9.i5923.i, %tmp.i212
  %390 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5924.i
  %.unpack.i.i5925.i = load double, ptr %390, align 8
  %.elt1.i.i5926.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5924.i, i32 1
  %.unpack2.i.i5927.i = load double, ptr %.elt1.i.i5926.i, align 8
  %tmp.i.i.i6731.i = fadd double %.unpack.i.i5919.i, %.unpack.i.i5925.i
  %tmp.i23.i.i6732.i = fadd double %.unpack2.i.i5921.i, %.unpack2.i.i5927.i
  %tmp.i.i27.i6733.i = fsub double %.unpack.i.i5919.i, %.unpack.i.i5925.i
  %tmp.i23.i28.i6734.i = fsub double %.unpack2.i.i5921.i, %.unpack2.i.i5927.i
  %tmp.i9.i5929.i = add i64 %tmp.i.i5911.i, 2
  %tmp.i10.i5930.i = mul i64 %tmp.i9.i5929.i, %tmp.i212
  %391 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5930.i
  %.unpack.i.i5931.i = load double, ptr %391, align 8
  %.elt1.i.i5932.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5930.i, i32 1
  %.unpack2.i.i5933.i = load double, ptr %.elt1.i.i5932.i, align 8
  %tmp.i9.i5935.i = add i64 %tmp.i.i5911.i, 9
  %tmp.i10.i5936.i = mul i64 %tmp.i9.i5935.i, %tmp.i212
  %392 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5936.i
  %.unpack.i.i5937.i = load double, ptr %392, align 8
  %.elt1.i.i5938.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5936.i, i32 1
  %.unpack2.i.i5939.i = load double, ptr %.elt1.i.i5938.i, align 8
  %tmp.i.i.i6735.i = fadd double %.unpack.i.i5931.i, %.unpack.i.i5937.i
  %tmp.i23.i.i6736.i = fadd double %.unpack2.i.i5933.i, %.unpack2.i.i5939.i
  %tmp.i.i27.i6737.i = fsub double %.unpack.i.i5931.i, %.unpack.i.i5937.i
  %tmp.i23.i28.i6738.i = fsub double %.unpack2.i.i5933.i, %.unpack2.i.i5939.i
  %tmp.i9.i5941.i = add i64 %tmp.i.i5911.i, 3
  %tmp.i10.i5942.i = mul i64 %tmp.i9.i5941.i, %tmp.i212
  %393 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5942.i
  %.unpack.i.i5943.i = load double, ptr %393, align 8
  %.elt1.i.i5944.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5942.i, i32 1
  %.unpack2.i.i5945.i = load double, ptr %.elt1.i.i5944.i, align 8
  %tmp.i9.i5947.i = add i64 %tmp.i.i5911.i, 8
  %tmp.i10.i5948.i = mul i64 %tmp.i9.i5947.i, %tmp.i212
  %394 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5948.i
  %.unpack.i.i5949.i = load double, ptr %394, align 8
  %.elt1.i.i5950.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5948.i, i32 1
  %.unpack2.i.i5951.i = load double, ptr %.elt1.i.i5950.i, align 8
  %tmp.i.i.i6739.i = fadd double %.unpack.i.i5943.i, %.unpack.i.i5949.i
  %tmp.i23.i.i6740.i = fadd double %.unpack2.i.i5945.i, %.unpack2.i.i5951.i
  %tmp.i.i27.i6741.i = fsub double %.unpack.i.i5943.i, %.unpack.i.i5949.i
  %tmp.i23.i28.i6742.i = fsub double %.unpack2.i.i5945.i, %.unpack2.i.i5951.i
  %tmp.i9.i5953.i = add i64 %tmp.i.i5911.i, 4
  %tmp.i10.i5954.i = mul i64 %tmp.i9.i5953.i, %tmp.i212
  %395 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5954.i
  %.unpack.i.i5955.i = load double, ptr %395, align 8
  %.elt1.i.i5956.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5954.i, i32 1
  %.unpack2.i.i5957.i = load double, ptr %.elt1.i.i5956.i, align 8
  %tmp.i9.i5959.i = add i64 %tmp.i.i5911.i, 7
  %tmp.i10.i5960.i = mul i64 %tmp.i9.i5959.i, %tmp.i212
  %396 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5960.i
  %.unpack.i.i5961.i = load double, ptr %396, align 8
  %.elt1.i.i5962.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5960.i, i32 1
  %.unpack2.i.i5963.i = load double, ptr %.elt1.i.i5962.i, align 8
  %tmp.i.i.i6743.i = fadd double %.unpack.i.i5955.i, %.unpack.i.i5961.i
  %tmp.i23.i.i6744.i = fadd double %.unpack2.i.i5957.i, %.unpack2.i.i5963.i
  %tmp.i.i27.i6745.i = fsub double %.unpack.i.i5955.i, %.unpack.i.i5961.i
  %tmp.i23.i28.i6746.i = fsub double %.unpack2.i.i5957.i, %.unpack2.i.i5963.i
  %tmp.i9.i5965.i = add i64 %tmp.i.i5911.i, 5
  %tmp.i10.i5966.i = mul i64 %tmp.i9.i5965.i, %tmp.i212
  %397 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5966.i
  %.unpack.i.i5967.i = load double, ptr %397, align 8
  %.elt1.i.i5968.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5966.i, i32 1
  %.unpack2.i.i5969.i = load double, ptr %.elt1.i.i5968.i, align 8
  %tmp.i9.i5971.i = add i64 %tmp.i.i5911.i, 6
  %tmp.i10.i5972.i = mul i64 %tmp.i9.i5971.i, %tmp.i212
  %398 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5972.i
  %.unpack.i.i5973.i = load double, ptr %398, align 8
  %.elt1.i.i5974.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i10.i5972.i, i32 1
  %.unpack2.i.i5975.i = load double, ptr %.elt1.i.i5974.i, align 8
  %tmp.i.i.i6747.i = fadd double %.unpack.i.i5967.i, %.unpack.i.i5973.i
  %tmp.i23.i.i6748.i = fadd double %.unpack2.i.i5969.i, %.unpack2.i.i5975.i
  %tmp.i.i27.i6749.i = fsub double %.unpack.i.i5967.i, %.unpack.i.i5973.i
  %tmp.i23.i28.i6750.i = fsub double %.unpack2.i.i5969.i, %.unpack2.i.i5975.i
  %tmp.i14.i5976.i = mul i64 %387, %tmp.i212
  %399 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i5976.i
  %tmp.i5977.i = fadd double %.unpack.i.i5913.i, %tmp.i.i.i6731.i
  %tmp.i5978.i = fadd double %tmp.i5977.i, %tmp.i.i.i6735.i
  %tmp.i5979.i = fadd double %tmp.i5978.i, %tmp.i.i.i6739.i
  %tmp.i5980.i = fadd double %tmp.i5979.i, %tmp.i.i.i6743.i
  %tmp.i5981.i = fadd double %tmp.i5980.i, %tmp.i.i.i6747.i
  %tmp.i5982.i = fadd double %.unpack2.i.i5915.i, %tmp.i23.i.i6732.i
  %tmp.i5983.i = fadd double %tmp.i5982.i, %tmp.i23.i.i6736.i
  %tmp.i5984.i = fadd double %tmp.i5983.i, %tmp.i23.i.i6740.i
  %tmp.i5985.i = fadd double %tmp.i5984.i, %tmp.i23.i.i6744.i
  %tmp.i5986.i = fadd double %tmp.i5985.i, %tmp.i23.i.i6748.i
  store double %tmp.i5981.i, ptr %399, align 8
  %.repack1.i5988.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i5976.i, i32 1
  store double %tmp.i5986.i, ptr %.repack1.i5988.i, align 8
  %tmp.i.i.i6753.i = fmul double %tmp.i.i.i6731.i, 0x3FEAEB8C8764F0BA
  %tmp.i48.i.i6754.i = fmul double %tmp.i23.i.i6732.i, 0.000000e+00
  %tmp.i49.i.i6755.i = fsub double %tmp.i.i.i6753.i, %tmp.i48.i.i6754.i
  %tmp.i50.i.i6756.i = fmul double %tmp.i.i.i6731.i, 0.000000e+00
  %tmp.i51.i.i6757.i = fmul double %tmp.i23.i.i6732.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6758.i = fadd double %tmp.i50.i.i6756.i, %tmp.i51.i.i6757.i
  %tmp.i.i6759.i = fadd double %.unpack.i.i5913.i, %tmp.i49.i.i6755.i
  %tmp.i23.i6760.i = fadd double %.unpack2.i.i5915.i, %tmp.i52.i.i6758.i
  %tmp.i.i.i6763.i = fmul double %tmp.i.i.i6735.i, 0x3FDA9628D9C712B6
  %tmp.i48.i.i6764.i = fmul double %tmp.i23.i.i6736.i, 0.000000e+00
  %tmp.i49.i.i6765.i = fsub double %tmp.i.i.i6763.i, %tmp.i48.i.i6764.i
  %tmp.i50.i.i6766.i = fmul double %tmp.i.i.i6735.i, 0.000000e+00
  %tmp.i51.i.i6767.i = fmul double %tmp.i23.i.i6736.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6768.i = fadd double %tmp.i50.i.i6766.i, %tmp.i51.i.i6767.i
  %tmp.i.i6769.i = fadd double %tmp.i.i6759.i, %tmp.i49.i.i6765.i
  %tmp.i23.i6770.i = fadd double %tmp.i23.i6760.i, %tmp.i52.i.i6768.i
  %tmp.i.i.i6773.i = fmul double %tmp.i.i.i6739.i, 0xBFC2375F640F44DB
  %tmp.i48.i.i6774.i = fmul double %tmp.i23.i.i6740.i, 0.000000e+00
  %tmp.i49.i.i6775.i = fsub double %tmp.i.i.i6773.i, %tmp.i48.i.i6774.i
  %tmp.i50.i.i6776.i = fmul double %tmp.i.i.i6739.i, 0.000000e+00
  %tmp.i51.i.i6777.i = fmul double %tmp.i23.i.i6740.i, 0x3FC2375F640F44DB
  %400 = fsub double %tmp.i50.i.i6776.i, %tmp.i51.i.i6777.i
  %tmp.i.i6779.i = fadd double %tmp.i.i6769.i, %tmp.i49.i.i6775.i
  %tmp.i23.i6780.i = fadd double %tmp.i23.i6770.i, %400
  %tmp.i.i.i6783.i = fmul double %tmp.i.i.i6743.i, 0xBFE4F49E7F775887
  %tmp.i48.i.i6784.i = fmul double %tmp.i23.i.i6744.i, 0.000000e+00
  %tmp.i49.i.i6785.i = fsub double %tmp.i.i.i6783.i, %tmp.i48.i.i6784.i
  %tmp.i50.i.i6786.i = fmul double %tmp.i.i.i6743.i, 0.000000e+00
  %tmp.i51.i.i6787.i = fmul double %tmp.i23.i.i6744.i, 0x3FE4F49E7F775887
  %401 = fsub double %tmp.i50.i.i6786.i, %tmp.i51.i.i6787.i
  %tmp.i.i6789.i = fadd double %tmp.i.i6779.i, %tmp.i49.i.i6785.i
  %tmp.i23.i6790.i = fadd double %tmp.i23.i6780.i, %401
  %tmp.i.i.i6793.i = fmul double %tmp.i.i.i6747.i, 0xBFEEB42A9BCD5057
  %tmp.i48.i.i6794.i = fmul double %tmp.i23.i.i6748.i, 0.000000e+00
  %tmp.i49.i.i6795.i = fsub double %tmp.i.i.i6793.i, %tmp.i48.i.i6794.i
  %tmp.i50.i.i6796.i = fmul double %tmp.i.i.i6747.i, 0.000000e+00
  %tmp.i51.i.i6797.i = fmul double %tmp.i23.i.i6748.i, 0x3FEEB42A9BCD5057
  %402 = fsub double %tmp.i50.i.i6796.i, %tmp.i51.i.i6797.i
  %tmp.i.i6799.i = fadd double %tmp.i.i6789.i, %tmp.i49.i.i6795.i
  %tmp.i23.i6800.i = fadd double %tmp.i23.i6790.i, %402
  %tmp.i5990.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6734.i
  %tmp.i5991.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6738.i
  %tmp.i5992.i = fadd double %tmp.i5990.i, %tmp.i5991.i
  %tmp.i5993.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6742.i
  %tmp.i5994.i = fadd double %tmp.i5992.i, %tmp.i5993.i
  %tmp.i5995.i = fmul double %.056847510.i, %tmp.i23.i28.i6746.i
  %tmp.i5996.i = fadd double %tmp.i5994.i, %tmp.i5995.i
  %tmp.i5997.i = fmul double %.05685.i, %tmp.i23.i28.i6750.i
  %tmp.i5998.i = fadd double %tmp.i5996.i, %tmp.i5997.i
  %tmp.i5999.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6733.i
  %tmp.i6000.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6737.i
  %tmp.i6001.i = fadd double %tmp.i5999.i, %tmp.i6000.i
  %tmp.i6002.i = fmul double %.0568375027507.i, %tmp.i.i27.i6741.i
  %tmp.i6003.i = fadd double %tmp.i6001.i, %tmp.i6002.i
  %tmp.i6004.i = fmul double %.056847510.i, %tmp.i.i27.i6745.i
  %tmp.i6005.i = fadd double %tmp.i6003.i, %tmp.i6004.i
  %tmp.i6006.i = fmul double %.05685.i, %tmp.i.i27.i6749.i
  %tmp.i6007.i = fadd double %tmp.i6005.i, %tmp.i6006.i
  %tmp.i.i.i6801.i = fsub double %tmp.i.i6799.i, %tmp.i5998.i
  %tmp.i23.i.i6802.i = fadd double %tmp.i6007.i, %tmp.i23.i6800.i
  %tmp.i.i27.i6803.i = fadd double %tmp.i5998.i, %tmp.i.i6799.i
  %tmp.i23.i28.i6804.i = fsub double %tmp.i23.i6800.i, %tmp.i6007.i
  %tmp.i13.i6008.i = add i64 %387, %.036
  %tmp.i14.i6009.i = mul i64 %tmp.i13.i6008.i, %tmp.i212
  %403 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6009.i
  store double %tmp.i.i.i6801.i, ptr %403, align 8
  %.repack1.i6011.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6009.i, i32 1
  store double %tmp.i23.i.i6802.i, ptr %.repack1.i6011.i, align 8
  %tmp.i13.i6014.i = add i64 %387, %tmp.i.i6013.i
  %tmp.i14.i6015.i = mul i64 %tmp.i13.i6014.i, %tmp.i212
  %404 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6015.i
  store double %tmp.i.i27.i6803.i, ptr %404, align 8
  %.repack1.i6017.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6015.i, i32 1
  store double %tmp.i23.i28.i6804.i, ptr %.repack1.i6017.i, align 8
  %tmp.i.i.i6807.i = fmul double %tmp.i.i.i6731.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i6809.i = fsub double %tmp.i.i.i6807.i, %tmp.i48.i.i6754.i
  %tmp.i51.i.i6811.i = fmul double %tmp.i23.i.i6732.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6812.i = fadd double %tmp.i50.i.i6756.i, %tmp.i51.i.i6811.i
  %tmp.i.i6813.i = fadd double %.unpack.i.i5913.i, %tmp.i49.i.i6809.i
  %tmp.i23.i6814.i = fadd double %.unpack2.i.i5915.i, %tmp.i52.i.i6812.i
  %tmp.i.i.i6817.i = fmul double %tmp.i.i.i6735.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i6819.i = fsub double %tmp.i.i.i6817.i, %tmp.i48.i.i6764.i
  %tmp.i51.i.i6821.i = fmul double %tmp.i23.i.i6736.i, 0x3FE4F49E7F775887
  %405 = fsub double %tmp.i50.i.i6766.i, %tmp.i51.i.i6821.i
  %tmp.i.i6823.i = fadd double %tmp.i.i6813.i, %tmp.i49.i.i6819.i
  %tmp.i23.i6824.i = fadd double %tmp.i23.i6814.i, %405
  %tmp.i.i.i6827.i = fmul double %tmp.i.i.i6739.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6829.i = fsub double %tmp.i.i.i6827.i, %tmp.i48.i.i6774.i
  %tmp.i51.i.i6831.i = fmul double %tmp.i23.i.i6740.i, 0x3FEEB42A9BCD5057
  %406 = fsub double %tmp.i50.i.i6776.i, %tmp.i51.i.i6831.i
  %tmp.i.i6833.i = fadd double %tmp.i.i6823.i, %tmp.i49.i.i6829.i
  %tmp.i23.i6834.i = fadd double %tmp.i23.i6824.i, %406
  %tmp.i.i.i6837.i = fmul double %tmp.i.i.i6743.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i6839.i = fsub double %tmp.i.i.i6837.i, %tmp.i48.i.i6784.i
  %tmp.i51.i.i6841.i = fmul double %tmp.i23.i.i6744.i, 0x3FC2375F640F44DB
  %407 = fsub double %tmp.i50.i.i6786.i, %tmp.i51.i.i6841.i
  %tmp.i.i6843.i = fadd double %tmp.i.i6833.i, %tmp.i49.i.i6839.i
  %tmp.i23.i6844.i = fadd double %tmp.i23.i6834.i, %407
  %tmp.i.i.i6847.i = fmul double %tmp.i.i.i6747.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6849.i = fsub double %tmp.i.i.i6847.i, %tmp.i48.i.i6794.i
  %tmp.i51.i.i6851.i = fmul double %tmp.i23.i.i6748.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6852.i = fadd double %tmp.i50.i.i6796.i, %tmp.i51.i.i6851.i
  %tmp.i.i6853.i = fadd double %tmp.i.i6843.i, %tmp.i49.i.i6849.i
  %tmp.i23.i6854.i = fadd double %tmp.i23.i6844.i, %tmp.i52.i.i6852.i
  %tmp.i6019.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6734.i
  %tmp.i6020.i = fmul double %.056847510.i, %tmp.i23.i28.i6738.i
  %tmp.i6021.i = fadd double %tmp.i6019.i, %tmp.i6020.i
  %tmp.i6022.i = fmul double %.05685.i, %tmp.i23.i28.i6742.i
  %tmp.i6023.i = fsub double %tmp.i6021.i, %tmp.i6022.i
  %tmp.i6024.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6746.i
  %tmp.i6025.i = fsub double %tmp.i6023.i, %tmp.i6024.i
  %tmp.i6026.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6750.i
  %tmp.i6027.i = fsub double %tmp.i6025.i, %tmp.i6026.i
  %tmp.i6028.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6733.i
  %tmp.i6029.i = fmul double %.056847510.i, %tmp.i.i27.i6737.i
  %tmp.i6030.i = fadd double %tmp.i6028.i, %tmp.i6029.i
  %tmp.i6031.i = fmul double %.05685.i, %tmp.i.i27.i6741.i
  %tmp.i6032.i = fsub double %tmp.i6030.i, %tmp.i6031.i
  %tmp.i6033.i = fmul double %.0568375027507.i, %tmp.i.i27.i6745.i
  %tmp.i6034.i = fsub double %tmp.i6032.i, %tmp.i6033.i
  %tmp.i6035.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6749.i
  %tmp.i6036.i = fsub double %tmp.i6034.i, %tmp.i6035.i
  %tmp.i.i.i6855.i = fsub double %tmp.i.i6853.i, %tmp.i6027.i
  %tmp.i23.i.i6856.i = fadd double %tmp.i6036.i, %tmp.i23.i6854.i
  %tmp.i.i27.i6857.i = fadd double %tmp.i6027.i, %tmp.i.i6853.i
  %tmp.i23.i28.i6858.i = fsub double %tmp.i23.i6854.i, %tmp.i6036.i
  %tmp.i13.i6038.i = add i64 %387, %tmp.i.i6037.i
  %tmp.i14.i6039.i = mul i64 %tmp.i13.i6038.i, %tmp.i212
  %408 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6039.i
  store double %tmp.i.i.i6855.i, ptr %408, align 8
  %.repack1.i6041.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6039.i, i32 1
  store double %tmp.i23.i.i6856.i, ptr %.repack1.i6041.i, align 8
  %tmp.i13.i6044.i = add i64 %387, %tmp.i.i6043.i
  %tmp.i14.i6045.i = mul i64 %tmp.i13.i6044.i, %tmp.i212
  %409 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6045.i
  store double %tmp.i.i27.i6857.i, ptr %409, align 8
  %.repack1.i6047.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6045.i, i32 1
  store double %tmp.i23.i28.i6858.i, ptr %.repack1.i6047.i, align 8
  %tmp.i.i.i6861.i = fmul double %tmp.i.i.i6731.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i6863.i = fsub double %tmp.i.i.i6861.i, %tmp.i48.i.i6754.i
  %tmp.i51.i.i6865.i = fmul double %tmp.i23.i.i6732.i, 0x3FC2375F640F44DB
  %410 = fsub double %tmp.i50.i.i6756.i, %tmp.i51.i.i6865.i
  %tmp.i.i6867.i = fadd double %.unpack.i.i5913.i, %tmp.i49.i.i6863.i
  %tmp.i23.i6868.i = fadd double %.unpack2.i.i5915.i, %410
  %tmp.i.i.i6871.i = fmul double %tmp.i.i.i6735.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6873.i = fsub double %tmp.i.i.i6871.i, %tmp.i48.i.i6764.i
  %tmp.i51.i.i6875.i = fmul double %tmp.i23.i.i6736.i, 0x3FEEB42A9BCD5057
  %411 = fsub double %tmp.i50.i.i6766.i, %tmp.i51.i.i6875.i
  %tmp.i.i6877.i = fadd double %tmp.i.i6867.i, %tmp.i49.i.i6873.i
  %tmp.i23.i6878.i = fadd double %tmp.i23.i6868.i, %411
  %tmp.i.i.i6881.i = fmul double %tmp.i.i.i6739.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i6883.i = fsub double %tmp.i.i.i6881.i, %tmp.i48.i.i6774.i
  %tmp.i51.i.i6885.i = fmul double %tmp.i23.i.i6740.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6886.i = fadd double %tmp.i50.i.i6776.i, %tmp.i51.i.i6885.i
  %tmp.i.i6887.i = fadd double %tmp.i.i6877.i, %tmp.i49.i.i6883.i
  %tmp.i23.i6888.i = fadd double %tmp.i23.i6878.i, %tmp.i52.i.i6886.i
  %tmp.i.i.i6891.i = fmul double %tmp.i.i.i6743.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6893.i = fsub double %tmp.i.i.i6891.i, %tmp.i48.i.i6784.i
  %tmp.i51.i.i6895.i = fmul double %tmp.i23.i.i6744.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6896.i = fadd double %tmp.i50.i.i6786.i, %tmp.i51.i.i6895.i
  %tmp.i.i6897.i = fadd double %tmp.i.i6887.i, %tmp.i49.i.i6893.i
  %tmp.i23.i6898.i = fadd double %tmp.i23.i6888.i, %tmp.i52.i.i6896.i
  %tmp.i.i.i6901.i = fmul double %tmp.i.i.i6747.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i6903.i = fsub double %tmp.i.i.i6901.i, %tmp.i48.i.i6794.i
  %tmp.i51.i.i6905.i = fmul double %tmp.i23.i.i6748.i, 0x3FE4F49E7F775887
  %412 = fsub double %tmp.i50.i.i6796.i, %tmp.i51.i.i6905.i
  %tmp.i.i6907.i = fadd double %tmp.i.i6897.i, %tmp.i49.i.i6903.i
  %tmp.i23.i6908.i = fadd double %tmp.i23.i6898.i, %412
  %tmp.i6049.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6734.i
  %tmp.i6050.i = fmul double %.05685.i, %tmp.i23.i28.i6738.i
  %tmp.i6051.i = fsub double %tmp.i6049.i, %tmp.i6050.i
  %tmp.i6052.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6742.i
  %tmp.i6053.i = fsub double %tmp.i6051.i, %tmp.i6052.i
  %tmp.i6054.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6746.i
  %tmp.i6055.i = fadd double %tmp.i6053.i, %tmp.i6054.i
  %tmp.i6056.i = fmul double %.056847510.i, %tmp.i23.i28.i6750.i
  %tmp.i6057.i = fadd double %tmp.i6055.i, %tmp.i6056.i
  %tmp.i6058.i = fmul double %.0568375027507.i, %tmp.i.i27.i6733.i
  %tmp.i6059.i = fmul double %.05685.i, %tmp.i.i27.i6737.i
  %tmp.i6060.i = fsub double %tmp.i6058.i, %tmp.i6059.i
  %tmp.i6061.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6741.i
  %tmp.i6062.i = fsub double %tmp.i6060.i, %tmp.i6061.i
  %tmp.i6063.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6745.i
  %tmp.i6064.i = fadd double %tmp.i6062.i, %tmp.i6063.i
  %tmp.i6065.i = fmul double %.056847510.i, %tmp.i.i27.i6749.i
  %tmp.i6066.i = fadd double %tmp.i6064.i, %tmp.i6065.i
  %tmp.i.i.i6909.i = fsub double %tmp.i.i6907.i, %tmp.i6057.i
  %tmp.i23.i.i6910.i = fadd double %tmp.i6066.i, %tmp.i23.i6908.i
  %tmp.i.i27.i6911.i = fadd double %tmp.i6057.i, %tmp.i.i6907.i
  %tmp.i23.i28.i6912.i = fsub double %tmp.i23.i6908.i, %tmp.i6066.i
  %tmp.i13.i6068.i = add i64 %387, %tmp.i.i6067.i
  %tmp.i14.i6069.i = mul i64 %tmp.i13.i6068.i, %tmp.i212
  %413 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6069.i
  store double %tmp.i.i.i6909.i, ptr %413, align 8
  %.repack1.i6071.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6069.i, i32 1
  store double %tmp.i23.i.i6910.i, ptr %.repack1.i6071.i, align 8
  %tmp.i13.i6074.i = add i64 %387, %tmp.i.i6073.i
  %tmp.i14.i6075.i = mul i64 %tmp.i13.i6074.i, %tmp.i212
  %414 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6075.i
  store double %tmp.i.i27.i6911.i, ptr %414, align 8
  %.repack1.i6077.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6075.i, i32 1
  store double %tmp.i23.i28.i6912.i, ptr %.repack1.i6077.i, align 8
  %tmp.i.i.i6915.i = fmul double %tmp.i.i.i6731.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i6917.i = fsub double %tmp.i.i.i6915.i, %tmp.i48.i.i6754.i
  %tmp.i51.i.i6919.i = fmul double %tmp.i23.i.i6732.i, 0x3FE4F49E7F775887
  %415 = fsub double %tmp.i50.i.i6756.i, %tmp.i51.i.i6919.i
  %tmp.i.i6921.i = fadd double %.unpack.i.i5913.i, %tmp.i49.i.i6917.i
  %tmp.i23.i6922.i = fadd double %.unpack2.i.i5915.i, %415
  %tmp.i.i.i6925.i = fmul double %tmp.i.i.i6735.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i6927.i = fsub double %tmp.i.i.i6925.i, %tmp.i48.i.i6764.i
  %tmp.i51.i.i6929.i = fmul double %tmp.i23.i.i6736.i, 0x3FC2375F640F44DB
  %416 = fsub double %tmp.i50.i.i6766.i, %tmp.i51.i.i6929.i
  %tmp.i.i6931.i = fadd double %tmp.i.i6921.i, %tmp.i49.i.i6927.i
  %tmp.i23.i6932.i = fadd double %tmp.i23.i6922.i, %416
  %tmp.i.i.i6935.i = fmul double %tmp.i.i.i6739.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6937.i = fsub double %tmp.i.i.i6935.i, %tmp.i48.i.i6774.i
  %tmp.i51.i.i6939.i = fmul double %tmp.i23.i.i6740.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6940.i = fadd double %tmp.i50.i.i6776.i, %tmp.i51.i.i6939.i
  %tmp.i.i6941.i = fadd double %tmp.i.i6931.i, %tmp.i49.i.i6937.i
  %tmp.i23.i6942.i = fadd double %tmp.i23.i6932.i, %tmp.i52.i.i6940.i
  %tmp.i.i.i6945.i = fmul double %tmp.i.i.i6743.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6947.i = fsub double %tmp.i.i.i6945.i, %tmp.i48.i.i6784.i
  %tmp.i51.i.i6949.i = fmul double %tmp.i23.i.i6744.i, 0x3FEEB42A9BCD5057
  %417 = fsub double %tmp.i50.i.i6786.i, %tmp.i51.i.i6949.i
  %tmp.i.i6951.i = fadd double %tmp.i.i6941.i, %tmp.i49.i.i6947.i
  %tmp.i23.i6952.i = fadd double %tmp.i23.i6942.i, %417
  %tmp.i.i.i6955.i = fmul double %tmp.i.i.i6747.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i6957.i = fsub double %tmp.i.i.i6955.i, %tmp.i48.i.i6794.i
  %tmp.i51.i.i6959.i = fmul double %tmp.i23.i.i6748.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i6960.i = fadd double %tmp.i50.i.i6796.i, %tmp.i51.i.i6959.i
  %tmp.i.i6961.i = fadd double %tmp.i.i6951.i, %tmp.i49.i.i6957.i
  %tmp.i23.i6962.i = fadd double %tmp.i23.i6952.i, %tmp.i52.i.i6960.i
  %tmp.i6079.i = fmul double %.056847510.i, %tmp.i23.i28.i6734.i
  %tmp.i6080.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6738.i
  %tmp.i6081.i = fsub double %tmp.i6079.i, %tmp.i6080.i
  %tmp.i6082.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6742.i
  %tmp.i6083.i = fadd double %tmp.i6081.i, %tmp.i6082.i
  %tmp.i6084.i = fmul double %.05685.i, %tmp.i23.i28.i6746.i
  %tmp.i6085.i = fadd double %tmp.i6083.i, %tmp.i6084.i
  %tmp.i6086.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6750.i
  %tmp.i6087.i = fsub double %tmp.i6085.i, %tmp.i6086.i
  %tmp.i6088.i = fmul double %.056847510.i, %tmp.i.i27.i6733.i
  %tmp.i6089.i = fmul double %.0568375027507.i, %tmp.i.i27.i6737.i
  %tmp.i6090.i = fsub double %tmp.i6088.i, %tmp.i6089.i
  %tmp.i6091.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6741.i
  %tmp.i6092.i = fadd double %tmp.i6090.i, %tmp.i6091.i
  %tmp.i6093.i = fmul double %.05685.i, %tmp.i.i27.i6745.i
  %tmp.i6094.i = fadd double %tmp.i6092.i, %tmp.i6093.i
  %tmp.i6095.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6749.i
  %tmp.i6096.i = fsub double %tmp.i6094.i, %tmp.i6095.i
  %tmp.i.i.i6963.i = fsub double %tmp.i.i6961.i, %tmp.i6087.i
  %tmp.i23.i.i6964.i = fadd double %tmp.i6096.i, %tmp.i23.i6962.i
  %tmp.i.i27.i6965.i = fadd double %tmp.i6087.i, %tmp.i.i6961.i
  %tmp.i23.i28.i6966.i = fsub double %tmp.i23.i6962.i, %tmp.i6096.i
  %tmp.i13.i6098.i = add i64 %387, %tmp.i.i6097.i
  %tmp.i14.i6099.i = mul i64 %tmp.i13.i6098.i, %tmp.i212
  %418 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6099.i
  store double %tmp.i.i.i6963.i, ptr %418, align 8
  %.repack1.i6101.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6099.i, i32 1
  store double %tmp.i23.i.i6964.i, ptr %.repack1.i6101.i, align 8
  %tmp.i13.i6104.i = add i64 %387, %tmp.i.i6103.i
  %tmp.i14.i6105.i = mul i64 %tmp.i13.i6104.i, %tmp.i212
  %419 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6105.i
  store double %tmp.i.i27.i6965.i, ptr %419, align 8
  %.repack1.i6107.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6105.i, i32 1
  store double %tmp.i23.i28.i6966.i, ptr %.repack1.i6107.i, align 8
  %tmp.i.i.i6969.i = fmul double %tmp.i.i.i6731.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i6971.i = fsub double %tmp.i.i.i6969.i, %tmp.i48.i.i6754.i
  %tmp.i51.i.i6973.i = fmul double %tmp.i23.i.i6732.i, 0x3FEEB42A9BCD5057
  %420 = fsub double %tmp.i50.i.i6756.i, %tmp.i51.i.i6973.i
  %tmp.i.i6975.i = fadd double %.unpack.i.i5913.i, %tmp.i49.i.i6971.i
  %tmp.i23.i6976.i = fadd double %.unpack2.i.i5915.i, %420
  %tmp.i.i.i6979.i = fmul double %tmp.i.i.i6735.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i6981.i = fsub double %tmp.i.i.i6979.i, %tmp.i48.i.i6764.i
  %tmp.i51.i.i6983.i = fmul double %tmp.i23.i.i6736.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i6984.i = fadd double %tmp.i50.i.i6766.i, %tmp.i51.i.i6983.i
  %tmp.i.i6985.i = fadd double %tmp.i.i6975.i, %tmp.i49.i.i6981.i
  %tmp.i23.i6986.i = fadd double %tmp.i23.i6976.i, %tmp.i52.i.i6984.i
  %tmp.i.i.i6989.i = fmul double %tmp.i.i.i6739.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i6991.i = fsub double %tmp.i.i.i6989.i, %tmp.i48.i.i6774.i
  %tmp.i51.i.i6993.i = fmul double %tmp.i23.i.i6740.i, 0x3FE4F49E7F775887
  %421 = fsub double %tmp.i50.i.i6776.i, %tmp.i51.i.i6993.i
  %tmp.i.i6995.i = fadd double %tmp.i.i6985.i, %tmp.i49.i.i6991.i
  %tmp.i23.i6996.i = fadd double %tmp.i23.i6986.i, %421
  %tmp.i.i.i6999.i = fmul double %tmp.i.i.i6743.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i7001.i = fsub double %tmp.i.i.i6999.i, %tmp.i48.i.i6784.i
  %tmp.i51.i.i7003.i = fmul double %tmp.i23.i.i6744.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i7004.i = fadd double %tmp.i50.i.i6786.i, %tmp.i51.i.i7003.i
  %tmp.i.i7005.i = fadd double %tmp.i.i6995.i, %tmp.i49.i.i7001.i
  %tmp.i23.i7006.i = fadd double %tmp.i23.i6996.i, %tmp.i52.i.i7004.i
  %tmp.i.i.i7009.i = fmul double %tmp.i.i.i6747.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i7011.i = fsub double %tmp.i.i.i7009.i, %tmp.i48.i.i6794.i
  %tmp.i51.i.i7013.i = fmul double %tmp.i23.i.i6748.i, 0x3FC2375F640F44DB
  %422 = fsub double %tmp.i50.i.i6796.i, %tmp.i51.i.i7013.i
  %tmp.i.i7015.i = fadd double %tmp.i.i7005.i, %tmp.i49.i.i7011.i
  %tmp.i23.i7016.i = fadd double %tmp.i23.i7006.i, %422
  %tmp.i6109.i = fmul double %.05685.i, %tmp.i23.i28.i6734.i
  %tmp.i6110.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i6738.i
  %tmp.i6111.i = fsub double %tmp.i6109.i, %tmp.i6110.i
  %tmp.i6112.i = fmul double %.056847510.i, %tmp.i23.i28.i6742.i
  %tmp.i6113.i = fadd double %tmp.i6111.i, %tmp.i6112.i
  %tmp.i6114.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i6746.i
  %tmp.i6115.i = fsub double %tmp.i6113.i, %tmp.i6114.i
  %tmp.i6116.i = fmul double %.0568375027507.i, %tmp.i23.i28.i6750.i
  %tmp.i6117.i = fadd double %tmp.i6115.i, %tmp.i6116.i
  %tmp.i6118.i = fmul double %.05685.i, %tmp.i.i27.i6733.i
  %tmp.i6119.i = fmul double %.07492749575017508.i, %tmp.i.i27.i6737.i
  %tmp.i6120.i = fsub double %tmp.i6118.i, %tmp.i6119.i
  %tmp.i6121.i = fmul double %.056847510.i, %tmp.i.i27.i6741.i
  %tmp.i6122.i = fadd double %tmp.i6120.i, %tmp.i6121.i
  %tmp.i6123.i = fmul double %.05682749675007509.i, %tmp.i.i27.i6745.i
  %tmp.i6124.i = fsub double %tmp.i6122.i, %tmp.i6123.i
  %tmp.i6125.i = fmul double %.0568375027507.i, %tmp.i.i27.i6749.i
  %tmp.i6126.i = fadd double %tmp.i6124.i, %tmp.i6125.i
  %tmp.i.i.i7017.i = fsub double %tmp.i.i7015.i, %tmp.i6117.i
  %tmp.i23.i.i7018.i = fadd double %tmp.i6126.i, %tmp.i23.i7016.i
  %tmp.i.i27.i7019.i = fadd double %tmp.i6117.i, %tmp.i.i7015.i
  %tmp.i23.i28.i7020.i = fsub double %tmp.i23.i7016.i, %tmp.i6126.i
  %tmp.i13.i6128.i = add i64 %387, %tmp.i.i6127.i
  %tmp.i14.i6129.i = mul i64 %tmp.i13.i6128.i, %tmp.i212
  %423 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6129.i
  store double %tmp.i.i.i7017.i, ptr %423, align 8
  %.repack1.i6131.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6129.i, i32 1
  store double %tmp.i23.i.i7018.i, ptr %.repack1.i6131.i, align 8
  %tmp.i13.i6134.i = add i64 %387, %tmp.i.i6133.i
  %tmp.i14.i6135.i = mul i64 %tmp.i13.i6134.i, %tmp.i212
  %424 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6135.i
  store double %tmp.i.i27.i7019.i, ptr %424, align 8
  %.repack1.i6137.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i14.i6135.i, i32 1
  store double %tmp.i23.i28.i7020.i, ptr %.repack1.i6137.i, align 8
  br i1 %.not56917513.i, label %imp_for.body21.i, label %imp_for.exit23.i

imp_for.body21.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7490.i", %imp_for.body17.i
  %425 = phi i64 [ %473, %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7490.i" ], [ 1, %imp_for.body17.i ]
  %tmp.i11.i.i506 = add i64 %425, %tmp.i10.i5912.i
  %426 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i506
  %.unpack.i.i6141.i = load double, ptr %426, align 8
  %.elt1.i.i6142.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i.i506, i32 1
  %.unpack2.i.i6143.i = load double, ptr %.elt1.i.i6142.i, align 8
  %tmp.i11.i6147.i = add i64 %425, %tmp.i10.i5918.i
  %427 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6147.i
  %.unpack.i.i6148.i = load double, ptr %427, align 8
  %.elt1.i.i6149.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6147.i, i32 1
  %.unpack2.i.i6150.i = load double, ptr %.elt1.i.i6149.i, align 8
  %tmp.i11.i6154.i = add i64 %425, %tmp.i10.i5924.i
  %428 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6154.i
  %.unpack.i.i6155.i = load double, ptr %428, align 8
  %.elt1.i.i6156.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6154.i, i32 1
  %.unpack2.i.i6157.i = load double, ptr %.elt1.i.i6156.i, align 8
  %tmp.i.i.i7021.i = fadd double %.unpack.i.i6148.i, %.unpack.i.i6155.i
  %tmp.i23.i.i7022.i = fadd double %.unpack2.i.i6150.i, %.unpack2.i.i6157.i
  %tmp.i.i27.i7023.i = fsub double %.unpack.i.i6148.i, %.unpack.i.i6155.i
  %tmp.i23.i28.i7024.i = fsub double %.unpack2.i.i6150.i, %.unpack2.i.i6157.i
  %tmp.i11.i6161.i = add i64 %425, %tmp.i10.i5930.i
  %429 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6161.i
  %.unpack.i.i6162.i = load double, ptr %429, align 8
  %.elt1.i.i6163.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6161.i, i32 1
  %.unpack2.i.i6164.i = load double, ptr %.elt1.i.i6163.i, align 8
  %tmp.i11.i6168.i = add i64 %425, %tmp.i10.i5936.i
  %430 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6168.i
  %.unpack.i.i6169.i = load double, ptr %430, align 8
  %.elt1.i.i6170.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6168.i, i32 1
  %.unpack2.i.i6171.i = load double, ptr %.elt1.i.i6170.i, align 8
  %tmp.i.i.i7025.i = fadd double %.unpack.i.i6162.i, %.unpack.i.i6169.i
  %tmp.i23.i.i7026.i = fadd double %.unpack2.i.i6164.i, %.unpack2.i.i6171.i
  %tmp.i.i27.i7027.i = fsub double %.unpack.i.i6162.i, %.unpack.i.i6169.i
  %tmp.i23.i28.i7028.i = fsub double %.unpack2.i.i6164.i, %.unpack2.i.i6171.i
  %tmp.i11.i6175.i = add i64 %425, %tmp.i10.i5942.i
  %431 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6175.i
  %.unpack.i.i6176.i = load double, ptr %431, align 8
  %.elt1.i.i6177.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6175.i, i32 1
  %.unpack2.i.i6178.i = load double, ptr %.elt1.i.i6177.i, align 8
  %tmp.i11.i6182.i = add i64 %425, %tmp.i10.i5948.i
  %432 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6182.i
  %.unpack.i.i6183.i = load double, ptr %432, align 8
  %.elt1.i.i6184.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6182.i, i32 1
  %.unpack2.i.i6185.i = load double, ptr %.elt1.i.i6184.i, align 8
  %tmp.i.i.i7029.i = fadd double %.unpack.i.i6176.i, %.unpack.i.i6183.i
  %tmp.i23.i.i7030.i = fadd double %.unpack2.i.i6178.i, %.unpack2.i.i6185.i
  %tmp.i.i27.i7031.i = fsub double %.unpack.i.i6176.i, %.unpack.i.i6183.i
  %tmp.i23.i28.i7032.i = fsub double %.unpack2.i.i6178.i, %.unpack2.i.i6185.i
  %tmp.i11.i6189.i = add i64 %425, %tmp.i10.i5954.i
  %433 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6189.i
  %.unpack.i.i6190.i = load double, ptr %433, align 8
  %.elt1.i.i6191.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6189.i, i32 1
  %.unpack2.i.i6192.i = load double, ptr %.elt1.i.i6191.i, align 8
  %tmp.i11.i6196.i = add i64 %425, %tmp.i10.i5960.i
  %434 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6196.i
  %.unpack.i.i6197.i = load double, ptr %434, align 8
  %.elt1.i.i6198.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6196.i, i32 1
  %.unpack2.i.i6199.i = load double, ptr %.elt1.i.i6198.i, align 8
  %tmp.i.i.i7033.i = fadd double %.unpack.i.i6190.i, %.unpack.i.i6197.i
  %tmp.i23.i.i7034.i = fadd double %.unpack2.i.i6192.i, %.unpack2.i.i6199.i
  %tmp.i.i27.i7035.i = fsub double %.unpack.i.i6190.i, %.unpack.i.i6197.i
  %tmp.i23.i28.i7036.i = fsub double %.unpack2.i.i6192.i, %.unpack2.i.i6199.i
  %tmp.i11.i6203.i = add i64 %425, %tmp.i10.i5966.i
  %435 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6203.i
  %.unpack.i.i6204.i = load double, ptr %435, align 8
  %.elt1.i.i6205.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6203.i, i32 1
  %.unpack2.i.i6206.i = load double, ptr %.elt1.i.i6205.i, align 8
  %tmp.i11.i6210.i = add i64 %425, %tmp.i10.i5972.i
  %436 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6210.i
  %.unpack.i.i6211.i = load double, ptr %436, align 8
  %.elt1.i.i6212.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i11.i6210.i, i32 1
  %.unpack2.i.i6213.i = load double, ptr %.elt1.i.i6212.i, align 8
  %tmp.i.i.i7037.i = fadd double %.unpack.i.i6204.i, %.unpack.i.i6211.i
  %tmp.i23.i.i7038.i = fadd double %.unpack2.i.i6206.i, %.unpack2.i.i6213.i
  %tmp.i.i27.i7039.i = fsub double %.unpack.i.i6204.i, %.unpack.i.i6211.i
  %tmp.i23.i28.i7040.i = fsub double %.unpack2.i.i6206.i, %.unpack2.i.i6213.i
  %tmp.i15.i.i507 = add i64 %425, %tmp.i14.i5976.i
  %437 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i507
  %tmp.i6215.i = fadd double %.unpack.i.i6141.i, %tmp.i.i.i7021.i
  %tmp.i6216.i = fadd double %tmp.i6215.i, %tmp.i.i.i7025.i
  %tmp.i6217.i = fadd double %tmp.i6216.i, %tmp.i.i.i7029.i
  %tmp.i6218.i = fadd double %tmp.i6217.i, %tmp.i.i.i7033.i
  %tmp.i6219.i = fadd double %tmp.i6218.i, %tmp.i.i.i7037.i
  %tmp.i6220.i = fadd double %.unpack2.i.i6143.i, %tmp.i23.i.i7022.i
  %tmp.i6221.i = fadd double %tmp.i6220.i, %tmp.i23.i.i7026.i
  %tmp.i6222.i = fadd double %tmp.i6221.i, %tmp.i23.i.i7030.i
  %tmp.i6223.i = fadd double %tmp.i6222.i, %tmp.i23.i.i7034.i
  %tmp.i6224.i = fadd double %tmp.i6223.i, %tmp.i23.i.i7038.i
  store double %tmp.i6219.i, ptr %437, align 8
  %.repack1.i6226.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.i507, i32 1
  store double %tmp.i6224.i, ptr %.repack1.i6226.i, align 8
  %tmp.i.i.i7043.i = fmul double %tmp.i.i.i7021.i, 0x3FEAEB8C8764F0BA
  %tmp.i48.i.i7044.i = fmul double %tmp.i23.i.i7022.i, 0.000000e+00
  %tmp.i49.i.i7045.i = fsub double %tmp.i.i.i7043.i, %tmp.i48.i.i7044.i
  %tmp.i50.i.i7046.i = fmul double %tmp.i.i.i7021.i, 0.000000e+00
  %tmp.i51.i.i7047.i = fmul double %tmp.i23.i.i7022.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i7048.i = fadd double %tmp.i50.i.i7046.i, %tmp.i51.i.i7047.i
  %tmp.i.i7049.i = fadd double %.unpack.i.i6141.i, %tmp.i49.i.i7045.i
  %tmp.i23.i7050.i = fadd double %.unpack2.i.i6143.i, %tmp.i52.i.i7048.i
  %tmp.i.i.i7053.i = fmul double %tmp.i.i.i7025.i, 0x3FDA9628D9C712B6
  %tmp.i48.i.i7054.i = fmul double %tmp.i23.i.i7026.i, 0.000000e+00
  %tmp.i49.i.i7055.i = fsub double %tmp.i.i.i7053.i, %tmp.i48.i.i7054.i
  %tmp.i50.i.i7056.i = fmul double %tmp.i.i.i7025.i, 0.000000e+00
  %tmp.i51.i.i7057.i = fmul double %tmp.i23.i.i7026.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i7058.i = fadd double %tmp.i50.i.i7056.i, %tmp.i51.i.i7057.i
  %tmp.i.i7059.i = fadd double %tmp.i.i7049.i, %tmp.i49.i.i7055.i
  %tmp.i23.i7060.i = fadd double %tmp.i23.i7050.i, %tmp.i52.i.i7058.i
  %tmp.i.i.i7063.i = fmul double %tmp.i.i.i7029.i, 0xBFC2375F640F44DB
  %tmp.i48.i.i7064.i = fmul double %tmp.i23.i.i7030.i, 0.000000e+00
  %tmp.i49.i.i7065.i = fsub double %tmp.i.i.i7063.i, %tmp.i48.i.i7064.i
  %tmp.i50.i.i7066.i = fmul double %tmp.i.i.i7029.i, 0.000000e+00
  %tmp.i51.i.i7067.i = fmul double %tmp.i23.i.i7030.i, 0x3FC2375F640F44DB
  %438 = fsub double %tmp.i50.i.i7066.i, %tmp.i51.i.i7067.i
  %tmp.i.i7069.i = fadd double %tmp.i.i7059.i, %tmp.i49.i.i7065.i
  %tmp.i23.i7070.i = fadd double %tmp.i23.i7060.i, %438
  %tmp.i.i.i7073.i = fmul double %tmp.i.i.i7033.i, 0xBFE4F49E7F775887
  %tmp.i48.i.i7074.i = fmul double %tmp.i23.i.i7034.i, 0.000000e+00
  %tmp.i49.i.i7075.i = fsub double %tmp.i.i.i7073.i, %tmp.i48.i.i7074.i
  %tmp.i50.i.i7076.i = fmul double %tmp.i.i.i7033.i, 0.000000e+00
  %tmp.i51.i.i7077.i = fmul double %tmp.i23.i.i7034.i, 0x3FE4F49E7F775887
  %439 = fsub double %tmp.i50.i.i7076.i, %tmp.i51.i.i7077.i
  %tmp.i.i7079.i = fadd double %tmp.i.i7069.i, %tmp.i49.i.i7075.i
  %tmp.i23.i7080.i = fadd double %tmp.i23.i7070.i, %439
  %tmp.i.i.i7083.i = fmul double %tmp.i.i.i7037.i, 0xBFEEB42A9BCD5057
  %tmp.i48.i.i7084.i = fmul double %tmp.i23.i.i7038.i, 0.000000e+00
  %tmp.i49.i.i7085.i = fsub double %tmp.i.i.i7083.i, %tmp.i48.i.i7084.i
  %tmp.i50.i.i7086.i = fmul double %tmp.i.i.i7037.i, 0.000000e+00
  %tmp.i51.i.i7087.i = fmul double %tmp.i23.i.i7038.i, 0x3FEEB42A9BCD5057
  %440 = fsub double %tmp.i50.i.i7086.i, %tmp.i51.i.i7087.i
  %tmp.i.i7089.i = fadd double %tmp.i.i7079.i, %tmp.i49.i.i7085.i
  %tmp.i23.i7090.i = fadd double %tmp.i23.i7080.i, %440
  %tmp.i6228.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i7024.i
  %tmp.i6229.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i7028.i
  %tmp.i6230.i = fadd double %tmp.i6228.i, %tmp.i6229.i
  %tmp.i6231.i = fmul double %.0568375027507.i, %tmp.i23.i28.i7032.i
  %tmp.i6232.i = fadd double %tmp.i6230.i, %tmp.i6231.i
  %tmp.i6233.i = fmul double %.056847510.i, %tmp.i23.i28.i7036.i
  %tmp.i6234.i = fadd double %tmp.i6232.i, %tmp.i6233.i
  %tmp.i6235.i = fmul double %.05685.i, %tmp.i23.i28.i7040.i
  %tmp.i6236.i = fadd double %tmp.i6234.i, %tmp.i6235.i
  %tmp.i6237.i = fmul double %.07492749575017508.i, %tmp.i.i27.i7023.i
  %tmp.i6238.i = fmul double %.05682749675007509.i, %tmp.i.i27.i7027.i
  %tmp.i6239.i = fadd double %tmp.i6237.i, %tmp.i6238.i
  %tmp.i6240.i = fmul double %.0568375027507.i, %tmp.i.i27.i7031.i
  %tmp.i6241.i = fadd double %tmp.i6239.i, %tmp.i6240.i
  %tmp.i6242.i = fmul double %.056847510.i, %tmp.i.i27.i7035.i
  %tmp.i6243.i = fadd double %tmp.i6241.i, %tmp.i6242.i
  %tmp.i6244.i = fmul double %.05685.i, %tmp.i.i27.i7039.i
  %tmp.i6245.i = fadd double %tmp.i6243.i, %tmp.i6244.i
  %tmp.i.i.i7091.i = fsub double %tmp.i.i7089.i, %tmp.i6236.i
  %tmp.i23.i.i7092.i = fadd double %tmp.i6245.i, %tmp.i23.i7090.i
  %tmp.i.i27.i7093.i = fadd double %tmp.i6236.i, %tmp.i.i7089.i
  %tmp.i23.i28.i7094.i = fsub double %tmp.i23.i7090.i, %tmp.i6245.i
  %tmp.i15.i6248.i = add i64 %425, %tmp.i14.i6009.i
  %441 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6248.i
  %tmp.i9.i6250.i = add nsw i64 %425, -1
  %442 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i6250.i
  %.unpack.i.i6251.i = load double, ptr %442, align 8
  %.elt1.i.i6252.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i9.i6250.i, i32 1
  %.unpack2.i.i6253.i = load double, ptr %.elt1.i.i6252.i, align 8
  %tmp.i101.i.i508 = fmul double %.unpack.i.i6251.i, %tmp.i.i.i7091.i
  %tmp.i102.i.i509 = fmul double %.unpack2.i.i6253.i, %tmp.i23.i.i7092.i
  br i1 %.not.i503, label %if.false.i.i519, label %if.true.i.i510

if.true.i.i510:                                   ; preds = %imp_for.body21.i
  %tmp.i97.i.i511 = fadd double %tmp.i101.i.i508, %tmp.i102.i.i509
  %tmp.i98.i.i512 = fmul double %.unpack.i.i6251.i, %tmp.i23.i.i7092.i
  %tmp.i99.i.i513 = fmul double %.unpack2.i.i6253.i, %tmp.i.i.i7091.i
  %tmp.i100.i.i514 = fsub double %tmp.i98.i.i512, %tmp.i99.i.i513
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i515"

if.false.i.i519:                                  ; preds = %imp_for.body21.i
  %tmp.i103.i.i520 = fsub double %tmp.i101.i.i508, %tmp.i102.i.i509
  %tmp.i104.i.i521 = fmul double %.unpack2.i.i6253.i, %tmp.i.i.i7091.i
  %tmp.i105.i.i522 = fmul double %.unpack.i.i6251.i, %tmp.i23.i.i7092.i
  %tmp.i106.i.i523 = fadd double %tmp.i104.i.i521, %tmp.i105.i.i522
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i515"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i515": ; preds = %if.false.i.i519, %if.true.i.i510
  %tmp.i97.pn.i.i516 = phi double [ %tmp.i97.i.i511, %if.true.i.i510 ], [ %tmp.i103.i.i520, %if.false.i.i519 ]
  %tmp.i100.pn.i.i517 = phi double [ %tmp.i100.i.i514, %if.true.i.i510 ], [ %tmp.i106.i.i523, %if.false.i.i519 ]
  store double %tmp.i97.pn.i.i516, ptr %441, align 8
  %.repack1.i6255.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6248.i, i32 1
  store double %tmp.i100.pn.i.i517, ptr %.repack1.i6255.i, align 8
  %tmp.i15.i6260.i = add i64 %425, %tmp.i14.i6015.i
  %443 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6260.i
  %tmp.i10.i6263.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i.i505
  %444 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6263.i
  %.unpack.i.i6264.i = load double, ptr %444, align 8
  %.elt1.i.i6265.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6263.i, i32 1
  %.unpack2.i.i6266.i = load double, ptr %.elt1.i.i6265.i, align 8
  %tmp.i101.i7098.i = fmul double %tmp.i.i27.i7093.i, %.unpack.i.i6264.i
  %tmp.i102.i7099.i = fmul double %tmp.i23.i28.i7094.i, %.unpack2.i.i6266.i
  br i1 %.not.i503, label %if.false.i7109.i, label %if.true.i7100.i

if.true.i7100.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i515"
  %tmp.i97.i7101.i = fadd double %tmp.i101.i7098.i, %tmp.i102.i7099.i
  %tmp.i98.i7102.i = fmul double %tmp.i23.i28.i7094.i, %.unpack.i.i6264.i
  %tmp.i99.i7103.i = fmul double %tmp.i.i27.i7093.i, %.unpack2.i.i6266.i
  %tmp.i100.i7104.i = fsub double %tmp.i98.i7102.i, %tmp.i99.i7103.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7114.i"

if.false.i7109.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit.i515"
  %tmp.i103.i7110.i = fsub double %tmp.i101.i7098.i, %tmp.i102.i7099.i
  %tmp.i104.i7111.i = fmul double %tmp.i.i27.i7093.i, %.unpack2.i.i6266.i
  %tmp.i105.i7112.i = fmul double %tmp.i23.i28.i7094.i, %.unpack.i.i6264.i
  %tmp.i106.i7113.i = fadd double %tmp.i105.i7112.i, %tmp.i104.i7111.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7114.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7114.i": ; preds = %if.false.i7109.i, %if.true.i7100.i
  %tmp.i97.pn.i7105.i = phi double [ %tmp.i97.i7101.i, %if.true.i7100.i ], [ %tmp.i103.i7110.i, %if.false.i7109.i ]
  %tmp.i100.pn.i7106.i = phi double [ %tmp.i100.i7104.i, %if.true.i7100.i ], [ %tmp.i106.i7113.i, %if.false.i7109.i ]
  store double %tmp.i97.pn.i7105.i, ptr %443, align 8
  %.repack1.i6268.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6260.i, i32 1
  store double %tmp.i100.pn.i7106.i, ptr %.repack1.i6268.i, align 8
  %tmp.i.i.i7117.i = fmul double %tmp.i.i.i7021.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i7119.i = fsub double %tmp.i.i.i7117.i, %tmp.i48.i.i7044.i
  %tmp.i51.i.i7121.i = fmul double %tmp.i23.i.i7022.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i7122.i = fadd double %tmp.i50.i.i7046.i, %tmp.i51.i.i7121.i
  %tmp.i.i7123.i = fadd double %.unpack.i.i6141.i, %tmp.i49.i.i7119.i
  %tmp.i23.i7124.i = fadd double %.unpack2.i.i6143.i, %tmp.i52.i.i7122.i
  %tmp.i.i.i7127.i = fmul double %tmp.i.i.i7025.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i7129.i = fsub double %tmp.i.i.i7127.i, %tmp.i48.i.i7054.i
  %tmp.i51.i.i7131.i = fmul double %tmp.i23.i.i7026.i, 0x3FE4F49E7F775887
  %445 = fsub double %tmp.i50.i.i7056.i, %tmp.i51.i.i7131.i
  %tmp.i.i7133.i = fadd double %tmp.i.i7123.i, %tmp.i49.i.i7129.i
  %tmp.i23.i7134.i = fadd double %tmp.i23.i7124.i, %445
  %tmp.i.i.i7137.i = fmul double %tmp.i.i.i7029.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i7139.i = fsub double %tmp.i.i.i7137.i, %tmp.i48.i.i7064.i
  %tmp.i51.i.i7141.i = fmul double %tmp.i23.i.i7030.i, 0x3FEEB42A9BCD5057
  %446 = fsub double %tmp.i50.i.i7066.i, %tmp.i51.i.i7141.i
  %tmp.i.i7143.i = fadd double %tmp.i.i7133.i, %tmp.i49.i.i7139.i
  %tmp.i23.i7144.i = fadd double %tmp.i23.i7134.i, %446
  %tmp.i.i.i7147.i = fmul double %tmp.i.i.i7033.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i7149.i = fsub double %tmp.i.i.i7147.i, %tmp.i48.i.i7074.i
  %tmp.i51.i.i7151.i = fmul double %tmp.i23.i.i7034.i, 0x3FC2375F640F44DB
  %447 = fsub double %tmp.i50.i.i7076.i, %tmp.i51.i.i7151.i
  %tmp.i.i7153.i = fadd double %tmp.i.i7143.i, %tmp.i49.i.i7149.i
  %tmp.i23.i7154.i = fadd double %tmp.i23.i7144.i, %447
  %tmp.i.i.i7157.i = fmul double %tmp.i.i.i7037.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i7159.i = fsub double %tmp.i.i.i7157.i, %tmp.i48.i.i7084.i
  %tmp.i51.i.i7161.i = fmul double %tmp.i23.i.i7038.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i7162.i = fadd double %tmp.i50.i.i7086.i, %tmp.i51.i.i7161.i
  %tmp.i.i7163.i = fadd double %tmp.i.i7153.i, %tmp.i49.i.i7159.i
  %tmp.i23.i7164.i = fadd double %tmp.i23.i7154.i, %tmp.i52.i.i7162.i
  %tmp.i6270.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i7024.i
  %tmp.i6271.i = fmul double %.056847510.i, %tmp.i23.i28.i7028.i
  %tmp.i6272.i = fadd double %tmp.i6270.i, %tmp.i6271.i
  %tmp.i6273.i = fmul double %.05685.i, %tmp.i23.i28.i7032.i
  %tmp.i6274.i = fsub double %tmp.i6272.i, %tmp.i6273.i
  %tmp.i6275.i = fmul double %.0568375027507.i, %tmp.i23.i28.i7036.i
  %tmp.i6276.i = fsub double %tmp.i6274.i, %tmp.i6275.i
  %tmp.i6277.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i7040.i
  %tmp.i6278.i = fsub double %tmp.i6276.i, %tmp.i6277.i
  %tmp.i6279.i = fmul double %.05682749675007509.i, %tmp.i.i27.i7023.i
  %tmp.i6280.i = fmul double %.056847510.i, %tmp.i.i27.i7027.i
  %tmp.i6281.i = fadd double %tmp.i6279.i, %tmp.i6280.i
  %tmp.i6282.i = fmul double %.05685.i, %tmp.i.i27.i7031.i
  %tmp.i6283.i = fsub double %tmp.i6281.i, %tmp.i6282.i
  %tmp.i6284.i = fmul double %.0568375027507.i, %tmp.i.i27.i7035.i
  %tmp.i6285.i = fsub double %tmp.i6283.i, %tmp.i6284.i
  %tmp.i6286.i = fmul double %.07492749575017508.i, %tmp.i.i27.i7039.i
  %tmp.i6287.i = fsub double %tmp.i6285.i, %tmp.i6286.i
  %tmp.i.i.i7165.i = fsub double %tmp.i.i7163.i, %tmp.i6278.i
  %tmp.i23.i.i7166.i = fadd double %tmp.i6287.i, %tmp.i23.i7164.i
  %tmp.i.i27.i7167.i = fadd double %tmp.i6278.i, %tmp.i.i7163.i
  %tmp.i23.i28.i7168.i = fsub double %tmp.i23.i7164.i, %tmp.i6287.i
  %tmp.i15.i6291.i = add i64 %425, %tmp.i14.i6039.i
  %448 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6291.i
  %tmp.i10.i6294.i = add i64 %tmp.i9.i6250.i, %tmp.i.i6261.i
  %449 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6294.i
  %.unpack.i.i6295.i = load double, ptr %449, align 8
  %.elt1.i.i6296.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6294.i, i32 1
  %.unpack2.i.i6297.i = load double, ptr %.elt1.i.i6296.i, align 8
  %tmp.i101.i7172.i = fmul double %tmp.i.i.i7165.i, %.unpack.i.i6295.i
  %tmp.i102.i7173.i = fmul double %tmp.i23.i.i7166.i, %.unpack2.i.i6297.i
  br i1 %.not.i503, label %if.false.i7183.i, label %if.true.i7174.i

if.true.i7174.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7114.i"
  %tmp.i97.i7175.i = fadd double %tmp.i101.i7172.i, %tmp.i102.i7173.i
  %tmp.i98.i7176.i = fmul double %tmp.i23.i.i7166.i, %.unpack.i.i6295.i
  %tmp.i99.i7177.i = fmul double %tmp.i.i.i7165.i, %.unpack2.i.i6297.i
  %tmp.i100.i7178.i = fsub double %tmp.i98.i7176.i, %tmp.i99.i7177.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7188.i"

if.false.i7183.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7114.i"
  %tmp.i103.i7184.i = fsub double %tmp.i101.i7172.i, %tmp.i102.i7173.i
  %tmp.i104.i7185.i = fmul double %tmp.i.i.i7165.i, %.unpack2.i.i6297.i
  %tmp.i105.i7186.i = fmul double %tmp.i23.i.i7166.i, %.unpack.i.i6295.i
  %tmp.i106.i7187.i = fadd double %tmp.i105.i7186.i, %tmp.i104.i7185.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7188.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7188.i": ; preds = %if.false.i7183.i, %if.true.i7174.i
  %tmp.i97.pn.i7179.i = phi double [ %tmp.i97.i7175.i, %if.true.i7174.i ], [ %tmp.i103.i7184.i, %if.false.i7183.i ]
  %tmp.i100.pn.i7180.i = phi double [ %tmp.i100.i7178.i, %if.true.i7174.i ], [ %tmp.i106.i7187.i, %if.false.i7183.i ]
  store double %tmp.i97.pn.i7179.i, ptr %448, align 8
  %.repack1.i6299.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6291.i, i32 1
  store double %tmp.i100.pn.i7180.i, ptr %.repack1.i6299.i, align 8
  %tmp.i15.i6304.i = add i64 %425, %tmp.i14.i6045.i
  %450 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6304.i
  %tmp.i10.i6308.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i6306.i
  %451 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6308.i
  %.unpack.i.i6309.i = load double, ptr %451, align 8
  %.elt1.i.i6310.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6308.i, i32 1
  %.unpack2.i.i6311.i = load double, ptr %.elt1.i.i6310.i, align 8
  %tmp.i101.i7192.i = fmul double %tmp.i.i27.i7167.i, %.unpack.i.i6309.i
  %tmp.i102.i7193.i = fmul double %tmp.i23.i28.i7168.i, %.unpack2.i.i6311.i
  br i1 %.not.i503, label %if.false.i7203.i, label %if.true.i7194.i

if.true.i7194.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7188.i"
  %tmp.i97.i7195.i = fadd double %tmp.i101.i7192.i, %tmp.i102.i7193.i
  %tmp.i98.i7196.i = fmul double %tmp.i23.i28.i7168.i, %.unpack.i.i6309.i
  %tmp.i99.i7197.i = fmul double %tmp.i.i27.i7167.i, %.unpack2.i.i6311.i
  %tmp.i100.i7198.i = fsub double %tmp.i98.i7196.i, %tmp.i99.i7197.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7208.i"

if.false.i7203.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7188.i"
  %tmp.i103.i7204.i = fsub double %tmp.i101.i7192.i, %tmp.i102.i7193.i
  %tmp.i104.i7205.i = fmul double %tmp.i.i27.i7167.i, %.unpack2.i.i6311.i
  %tmp.i105.i7206.i = fmul double %tmp.i23.i28.i7168.i, %.unpack.i.i6309.i
  %tmp.i106.i7207.i = fadd double %tmp.i105.i7206.i, %tmp.i104.i7205.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7208.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7208.i": ; preds = %if.false.i7203.i, %if.true.i7194.i
  %tmp.i97.pn.i7199.i = phi double [ %tmp.i97.i7195.i, %if.true.i7194.i ], [ %tmp.i103.i7204.i, %if.false.i7203.i ]
  %tmp.i100.pn.i7200.i = phi double [ %tmp.i100.i7198.i, %if.true.i7194.i ], [ %tmp.i106.i7207.i, %if.false.i7203.i ]
  store double %tmp.i97.pn.i7199.i, ptr %450, align 8
  %.repack1.i6313.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6304.i, i32 1
  store double %tmp.i100.pn.i7200.i, ptr %.repack1.i6313.i, align 8
  %tmp.i.i.i7211.i = fmul double %tmp.i.i.i7021.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i7213.i = fsub double %tmp.i.i.i7211.i, %tmp.i48.i.i7044.i
  %tmp.i51.i.i7215.i = fmul double %tmp.i23.i.i7022.i, 0x3FC2375F640F44DB
  %452 = fsub double %tmp.i50.i.i7046.i, %tmp.i51.i.i7215.i
  %tmp.i.i7217.i = fadd double %.unpack.i.i6141.i, %tmp.i49.i.i7213.i
  %tmp.i23.i7218.i = fadd double %.unpack2.i.i6143.i, %452
  %tmp.i.i.i7221.i = fmul double %tmp.i.i.i7025.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i7223.i = fsub double %tmp.i.i.i7221.i, %tmp.i48.i.i7054.i
  %tmp.i51.i.i7225.i = fmul double %tmp.i23.i.i7026.i, 0x3FEEB42A9BCD5057
  %453 = fsub double %tmp.i50.i.i7056.i, %tmp.i51.i.i7225.i
  %tmp.i.i7227.i = fadd double %tmp.i.i7217.i, %tmp.i49.i.i7223.i
  %tmp.i23.i7228.i = fadd double %tmp.i23.i7218.i, %453
  %tmp.i.i.i7231.i = fmul double %tmp.i.i.i7029.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i7233.i = fsub double %tmp.i.i.i7231.i, %tmp.i48.i.i7064.i
  %tmp.i51.i.i7235.i = fmul double %tmp.i23.i.i7030.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i7236.i = fadd double %tmp.i50.i.i7066.i, %tmp.i51.i.i7235.i
  %tmp.i.i7237.i = fadd double %tmp.i.i7227.i, %tmp.i49.i.i7233.i
  %tmp.i23.i7238.i = fadd double %tmp.i23.i7228.i, %tmp.i52.i.i7236.i
  %tmp.i.i.i7241.i = fmul double %tmp.i.i.i7033.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i7243.i = fsub double %tmp.i.i.i7241.i, %tmp.i48.i.i7074.i
  %tmp.i51.i.i7245.i = fmul double %tmp.i23.i.i7034.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i7246.i = fadd double %tmp.i50.i.i7076.i, %tmp.i51.i.i7245.i
  %tmp.i.i7247.i = fadd double %tmp.i.i7237.i, %tmp.i49.i.i7243.i
  %tmp.i23.i7248.i = fadd double %tmp.i23.i7238.i, %tmp.i52.i.i7246.i
  %tmp.i.i.i7251.i = fmul double %tmp.i.i.i7037.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i7253.i = fsub double %tmp.i.i.i7251.i, %tmp.i48.i.i7084.i
  %tmp.i51.i.i7255.i = fmul double %tmp.i23.i.i7038.i, 0x3FE4F49E7F775887
  %454 = fsub double %tmp.i50.i.i7086.i, %tmp.i51.i.i7255.i
  %tmp.i.i7257.i = fadd double %tmp.i.i7247.i, %tmp.i49.i.i7253.i
  %tmp.i23.i7258.i = fadd double %tmp.i23.i7248.i, %454
  %tmp.i6315.i = fmul double %.0568375027507.i, %tmp.i23.i28.i7024.i
  %tmp.i6316.i = fmul double %.05685.i, %tmp.i23.i28.i7028.i
  %tmp.i6317.i = fsub double %tmp.i6315.i, %tmp.i6316.i
  %tmp.i6318.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i7032.i
  %tmp.i6319.i = fsub double %tmp.i6317.i, %tmp.i6318.i
  %tmp.i6320.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i7036.i
  %tmp.i6321.i = fadd double %tmp.i6319.i, %tmp.i6320.i
  %tmp.i6322.i = fmul double %.056847510.i, %tmp.i23.i28.i7040.i
  %tmp.i6323.i = fadd double %tmp.i6321.i, %tmp.i6322.i
  %tmp.i6324.i = fmul double %.0568375027507.i, %tmp.i.i27.i7023.i
  %tmp.i6325.i = fmul double %.05685.i, %tmp.i.i27.i7027.i
  %tmp.i6326.i = fsub double %tmp.i6324.i, %tmp.i6325.i
  %tmp.i6327.i = fmul double %.05682749675007509.i, %tmp.i.i27.i7031.i
  %tmp.i6328.i = fsub double %tmp.i6326.i, %tmp.i6327.i
  %tmp.i6329.i = fmul double %.07492749575017508.i, %tmp.i.i27.i7035.i
  %tmp.i6330.i = fadd double %tmp.i6328.i, %tmp.i6329.i
  %tmp.i6331.i = fmul double %.056847510.i, %tmp.i.i27.i7039.i
  %tmp.i6332.i = fadd double %tmp.i6330.i, %tmp.i6331.i
  %tmp.i.i.i7259.i = fsub double %tmp.i.i7257.i, %tmp.i6323.i
  %tmp.i23.i.i7260.i = fadd double %tmp.i6332.i, %tmp.i23.i7258.i
  %tmp.i.i27.i7261.i = fadd double %tmp.i6323.i, %tmp.i.i7257.i
  %tmp.i23.i28.i7262.i = fsub double %tmp.i23.i7258.i, %tmp.i6332.i
  %tmp.i15.i6336.i = add i64 %425, %tmp.i14.i6069.i
  %455 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6336.i
  %tmp.i10.i6340.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i6338.i
  %456 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6340.i
  %.unpack.i.i6341.i = load double, ptr %456, align 8
  %.elt1.i.i6342.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6340.i, i32 1
  %.unpack2.i.i6343.i = load double, ptr %.elt1.i.i6342.i, align 8
  %tmp.i101.i7266.i = fmul double %tmp.i.i.i7259.i, %.unpack.i.i6341.i
  %tmp.i102.i7267.i = fmul double %tmp.i23.i.i7260.i, %.unpack2.i.i6343.i
  br i1 %.not.i503, label %if.false.i7277.i, label %if.true.i7268.i

if.true.i7268.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7208.i"
  %tmp.i97.i7269.i = fadd double %tmp.i101.i7266.i, %tmp.i102.i7267.i
  %tmp.i98.i7270.i = fmul double %tmp.i23.i.i7260.i, %.unpack.i.i6341.i
  %tmp.i99.i7271.i = fmul double %tmp.i.i.i7259.i, %.unpack2.i.i6343.i
  %tmp.i100.i7272.i = fsub double %tmp.i98.i7270.i, %tmp.i99.i7271.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7282.i"

if.false.i7277.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7208.i"
  %tmp.i103.i7278.i = fsub double %tmp.i101.i7266.i, %tmp.i102.i7267.i
  %tmp.i104.i7279.i = fmul double %tmp.i.i.i7259.i, %.unpack2.i.i6343.i
  %tmp.i105.i7280.i = fmul double %tmp.i23.i.i7260.i, %.unpack.i.i6341.i
  %tmp.i106.i7281.i = fadd double %tmp.i105.i7280.i, %tmp.i104.i7279.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7282.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7282.i": ; preds = %if.false.i7277.i, %if.true.i7268.i
  %tmp.i97.pn.i7273.i = phi double [ %tmp.i97.i7269.i, %if.true.i7268.i ], [ %tmp.i103.i7278.i, %if.false.i7277.i ]
  %tmp.i100.pn.i7274.i = phi double [ %tmp.i100.i7272.i, %if.true.i7268.i ], [ %tmp.i106.i7281.i, %if.false.i7277.i ]
  store double %tmp.i97.pn.i7273.i, ptr %455, align 8
  %.repack1.i6345.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6336.i, i32 1
  store double %tmp.i100.pn.i7274.i, ptr %.repack1.i6345.i, align 8
  %tmp.i15.i6350.i = add i64 %425, %tmp.i14.i6075.i
  %457 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6350.i
  %tmp.i10.i6354.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i6352.i
  %458 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6354.i
  %.unpack.i.i6355.i = load double, ptr %458, align 8
  %.elt1.i.i6356.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6354.i, i32 1
  %.unpack2.i.i6357.i = load double, ptr %.elt1.i.i6356.i, align 8
  %tmp.i101.i7286.i = fmul double %tmp.i.i27.i7261.i, %.unpack.i.i6355.i
  %tmp.i102.i7287.i = fmul double %tmp.i23.i28.i7262.i, %.unpack2.i.i6357.i
  br i1 %.not.i503, label %if.false.i7297.i, label %if.true.i7288.i

if.true.i7288.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7282.i"
  %tmp.i97.i7289.i = fadd double %tmp.i101.i7286.i, %tmp.i102.i7287.i
  %tmp.i98.i7290.i = fmul double %tmp.i23.i28.i7262.i, %.unpack.i.i6355.i
  %tmp.i99.i7291.i = fmul double %tmp.i.i27.i7261.i, %.unpack2.i.i6357.i
  %tmp.i100.i7292.i = fsub double %tmp.i98.i7290.i, %tmp.i99.i7291.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7302.i"

if.false.i7297.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7282.i"
  %tmp.i103.i7298.i = fsub double %tmp.i101.i7286.i, %tmp.i102.i7287.i
  %tmp.i104.i7299.i = fmul double %tmp.i.i27.i7261.i, %.unpack2.i.i6357.i
  %tmp.i105.i7300.i = fmul double %tmp.i23.i28.i7262.i, %.unpack.i.i6355.i
  %tmp.i106.i7301.i = fadd double %tmp.i105.i7300.i, %tmp.i104.i7299.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7302.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7302.i": ; preds = %if.false.i7297.i, %if.true.i7288.i
  %tmp.i97.pn.i7293.i = phi double [ %tmp.i97.i7289.i, %if.true.i7288.i ], [ %tmp.i103.i7298.i, %if.false.i7297.i ]
  %tmp.i100.pn.i7294.i = phi double [ %tmp.i100.i7292.i, %if.true.i7288.i ], [ %tmp.i106.i7301.i, %if.false.i7297.i ]
  store double %tmp.i97.pn.i7293.i, ptr %457, align 8
  %.repack1.i6359.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6350.i, i32 1
  store double %tmp.i100.pn.i7294.i, ptr %.repack1.i6359.i, align 8
  %tmp.i.i.i7305.i = fmul double %tmp.i.i.i7021.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i7307.i = fsub double %tmp.i.i.i7305.i, %tmp.i48.i.i7044.i
  %tmp.i51.i.i7309.i = fmul double %tmp.i23.i.i7022.i, 0x3FE4F49E7F775887
  %459 = fsub double %tmp.i50.i.i7046.i, %tmp.i51.i.i7309.i
  %tmp.i.i7311.i = fadd double %.unpack.i.i6141.i, %tmp.i49.i.i7307.i
  %tmp.i23.i7312.i = fadd double %.unpack2.i.i6143.i, %459
  %tmp.i.i.i7315.i = fmul double %tmp.i.i.i7025.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i7317.i = fsub double %tmp.i.i.i7315.i, %tmp.i48.i.i7054.i
  %tmp.i51.i.i7319.i = fmul double %tmp.i23.i.i7026.i, 0x3FC2375F640F44DB
  %460 = fsub double %tmp.i50.i.i7056.i, %tmp.i51.i.i7319.i
  %tmp.i.i7321.i = fadd double %tmp.i.i7311.i, %tmp.i49.i.i7317.i
  %tmp.i23.i7322.i = fadd double %tmp.i23.i7312.i, %460
  %tmp.i.i.i7325.i = fmul double %tmp.i.i.i7029.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i7327.i = fsub double %tmp.i.i.i7325.i, %tmp.i48.i.i7064.i
  %tmp.i51.i.i7329.i = fmul double %tmp.i23.i.i7030.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i7330.i = fadd double %tmp.i50.i.i7066.i, %tmp.i51.i.i7329.i
  %tmp.i.i7331.i = fadd double %tmp.i.i7321.i, %tmp.i49.i.i7327.i
  %tmp.i23.i7332.i = fadd double %tmp.i23.i7322.i, %tmp.i52.i.i7330.i
  %tmp.i.i.i7335.i = fmul double %tmp.i.i.i7033.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i7337.i = fsub double %tmp.i.i.i7335.i, %tmp.i48.i.i7074.i
  %tmp.i51.i.i7339.i = fmul double %tmp.i23.i.i7034.i, 0x3FEEB42A9BCD5057
  %461 = fsub double %tmp.i50.i.i7076.i, %tmp.i51.i.i7339.i
  %tmp.i.i7341.i = fadd double %tmp.i.i7331.i, %tmp.i49.i.i7337.i
  %tmp.i23.i7342.i = fadd double %tmp.i23.i7332.i, %461
  %tmp.i.i.i7345.i = fmul double %tmp.i.i.i7037.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i7347.i = fsub double %tmp.i.i.i7345.i, %tmp.i48.i.i7084.i
  %tmp.i51.i.i7349.i = fmul double %tmp.i23.i.i7038.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i7350.i = fadd double %tmp.i50.i.i7086.i, %tmp.i51.i.i7349.i
  %tmp.i.i7351.i = fadd double %tmp.i.i7341.i, %tmp.i49.i.i7347.i
  %tmp.i23.i7352.i = fadd double %tmp.i23.i7342.i, %tmp.i52.i.i7350.i
  %tmp.i6361.i = fmul double %.056847510.i, %tmp.i23.i28.i7024.i
  %tmp.i6362.i = fmul double %.0568375027507.i, %tmp.i23.i28.i7028.i
  %tmp.i6363.i = fsub double %tmp.i6361.i, %tmp.i6362.i
  %tmp.i6364.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i7032.i
  %tmp.i6365.i = fadd double %tmp.i6363.i, %tmp.i6364.i
  %tmp.i6366.i = fmul double %.05685.i, %tmp.i23.i28.i7036.i
  %tmp.i6367.i = fadd double %tmp.i6365.i, %tmp.i6366.i
  %tmp.i6368.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i7040.i
  %tmp.i6369.i = fsub double %tmp.i6367.i, %tmp.i6368.i
  %tmp.i6370.i = fmul double %.056847510.i, %tmp.i.i27.i7023.i
  %tmp.i6371.i = fmul double %.0568375027507.i, %tmp.i.i27.i7027.i
  %tmp.i6372.i = fsub double %tmp.i6370.i, %tmp.i6371.i
  %tmp.i6373.i = fmul double %.07492749575017508.i, %tmp.i.i27.i7031.i
  %tmp.i6374.i = fadd double %tmp.i6372.i, %tmp.i6373.i
  %tmp.i6375.i = fmul double %.05685.i, %tmp.i.i27.i7035.i
  %tmp.i6376.i = fadd double %tmp.i6374.i, %tmp.i6375.i
  %tmp.i6377.i = fmul double %.05682749675007509.i, %tmp.i.i27.i7039.i
  %tmp.i6378.i = fsub double %tmp.i6376.i, %tmp.i6377.i
  %tmp.i.i.i7353.i = fsub double %tmp.i.i7351.i, %tmp.i6369.i
  %tmp.i23.i.i7354.i = fadd double %tmp.i6378.i, %tmp.i23.i7352.i
  %tmp.i.i27.i7355.i = fadd double %tmp.i6369.i, %tmp.i.i7351.i
  %tmp.i23.i28.i7356.i = fsub double %tmp.i23.i7352.i, %tmp.i6378.i
  %tmp.i15.i6382.i = add i64 %425, %tmp.i14.i6099.i
  %462 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6382.i
  %tmp.i10.i6386.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i6384.i
  %463 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6386.i
  %.unpack.i.i6387.i = load double, ptr %463, align 8
  %.elt1.i.i6388.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6386.i, i32 1
  %.unpack2.i.i6389.i = load double, ptr %.elt1.i.i6388.i, align 8
  %tmp.i101.i7360.i = fmul double %tmp.i.i.i7353.i, %.unpack.i.i6387.i
  %tmp.i102.i7361.i = fmul double %tmp.i23.i.i7354.i, %.unpack2.i.i6389.i
  br i1 %.not.i503, label %if.false.i7371.i, label %if.true.i7362.i

if.true.i7362.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7302.i"
  %tmp.i97.i7363.i = fadd double %tmp.i101.i7360.i, %tmp.i102.i7361.i
  %tmp.i98.i7364.i = fmul double %tmp.i23.i.i7354.i, %.unpack.i.i6387.i
  %tmp.i99.i7365.i = fmul double %tmp.i.i.i7353.i, %.unpack2.i.i6389.i
  %tmp.i100.i7366.i = fsub double %tmp.i98.i7364.i, %tmp.i99.i7365.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7376.i"

if.false.i7371.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7302.i"
  %tmp.i103.i7372.i = fsub double %tmp.i101.i7360.i, %tmp.i102.i7361.i
  %tmp.i104.i7373.i = fmul double %tmp.i.i.i7353.i, %.unpack2.i.i6389.i
  %tmp.i105.i7374.i = fmul double %tmp.i23.i.i7354.i, %.unpack.i.i6387.i
  %tmp.i106.i7375.i = fadd double %tmp.i105.i7374.i, %tmp.i104.i7373.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7376.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7376.i": ; preds = %if.false.i7371.i, %if.true.i7362.i
  %tmp.i97.pn.i7367.i = phi double [ %tmp.i97.i7363.i, %if.true.i7362.i ], [ %tmp.i103.i7372.i, %if.false.i7371.i ]
  %tmp.i100.pn.i7368.i = phi double [ %tmp.i100.i7366.i, %if.true.i7362.i ], [ %tmp.i106.i7375.i, %if.false.i7371.i ]
  store double %tmp.i97.pn.i7367.i, ptr %462, align 8
  %.repack1.i6391.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6382.i, i32 1
  store double %tmp.i100.pn.i7368.i, ptr %.repack1.i6391.i, align 8
  %tmp.i15.i6396.i = add i64 %425, %tmp.i14.i6105.i
  %464 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6396.i
  %tmp.i10.i6400.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i6398.i
  %465 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6400.i
  %.unpack.i.i6401.i = load double, ptr %465, align 8
  %.elt1.i.i6402.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6400.i, i32 1
  %.unpack2.i.i6403.i = load double, ptr %.elt1.i.i6402.i, align 8
  %tmp.i101.i7380.i = fmul double %tmp.i.i27.i7355.i, %.unpack.i.i6401.i
  %tmp.i102.i7381.i = fmul double %tmp.i23.i28.i7356.i, %.unpack2.i.i6403.i
  br i1 %.not.i503, label %if.false.i7391.i, label %if.true.i7382.i

if.true.i7382.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7376.i"
  %tmp.i97.i7383.i = fadd double %tmp.i101.i7380.i, %tmp.i102.i7381.i
  %tmp.i98.i7384.i = fmul double %tmp.i23.i28.i7356.i, %.unpack.i.i6401.i
  %tmp.i99.i7385.i = fmul double %tmp.i.i27.i7355.i, %.unpack2.i.i6403.i
  %tmp.i100.i7386.i = fsub double %tmp.i98.i7384.i, %tmp.i99.i7385.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7396.i"

if.false.i7391.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7376.i"
  %tmp.i103.i7392.i = fsub double %tmp.i101.i7380.i, %tmp.i102.i7381.i
  %tmp.i104.i7393.i = fmul double %tmp.i.i27.i7355.i, %.unpack2.i.i6403.i
  %tmp.i105.i7394.i = fmul double %tmp.i23.i28.i7356.i, %.unpack.i.i6401.i
  %tmp.i106.i7395.i = fadd double %tmp.i105.i7394.i, %tmp.i104.i7393.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7396.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7396.i": ; preds = %if.false.i7391.i, %if.true.i7382.i
  %tmp.i97.pn.i7387.i = phi double [ %tmp.i97.i7383.i, %if.true.i7382.i ], [ %tmp.i103.i7392.i, %if.false.i7391.i ]
  %tmp.i100.pn.i7388.i = phi double [ %tmp.i100.i7386.i, %if.true.i7382.i ], [ %tmp.i106.i7395.i, %if.false.i7391.i ]
  store double %tmp.i97.pn.i7387.i, ptr %464, align 8
  %.repack1.i6405.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6396.i, i32 1
  store double %tmp.i100.pn.i7388.i, ptr %.repack1.i6405.i, align 8
  %tmp.i.i.i7399.i = fmul double %tmp.i.i.i7021.i, 0xBFEEB42A9BCD5057
  %tmp.i49.i.i7401.i = fsub double %tmp.i.i.i7399.i, %tmp.i48.i.i7044.i
  %tmp.i51.i.i7403.i = fmul double %tmp.i23.i.i7022.i, 0x3FEEB42A9BCD5057
  %466 = fsub double %tmp.i50.i.i7046.i, %tmp.i51.i.i7403.i
  %tmp.i.i7405.i = fadd double %.unpack.i.i6141.i, %tmp.i49.i.i7401.i
  %tmp.i23.i7406.i = fadd double %.unpack2.i.i6143.i, %466
  %tmp.i.i.i7409.i = fmul double %tmp.i.i.i7025.i, 0x3FEAEB8C8764F0BA
  %tmp.i49.i.i7411.i = fsub double %tmp.i.i.i7409.i, %tmp.i48.i.i7054.i
  %tmp.i51.i.i7413.i = fmul double %tmp.i23.i.i7026.i, 0x3FEAEB8C8764F0BA
  %tmp.i52.i.i7414.i = fadd double %tmp.i50.i.i7056.i, %tmp.i51.i.i7413.i
  %tmp.i.i7415.i = fadd double %tmp.i.i7405.i, %tmp.i49.i.i7411.i
  %tmp.i23.i7416.i = fadd double %tmp.i23.i7406.i, %tmp.i52.i.i7414.i
  %tmp.i.i.i7419.i = fmul double %tmp.i.i.i7029.i, 0xBFE4F49E7F775887
  %tmp.i49.i.i7421.i = fsub double %tmp.i.i.i7419.i, %tmp.i48.i.i7064.i
  %tmp.i51.i.i7423.i = fmul double %tmp.i23.i.i7030.i, 0x3FE4F49E7F775887
  %467 = fsub double %tmp.i50.i.i7066.i, %tmp.i51.i.i7423.i
  %tmp.i.i7425.i = fadd double %tmp.i.i7415.i, %tmp.i49.i.i7421.i
  %tmp.i23.i7426.i = fadd double %tmp.i23.i7416.i, %467
  %tmp.i.i.i7429.i = fmul double %tmp.i.i.i7033.i, 0x3FDA9628D9C712B6
  %tmp.i49.i.i7431.i = fsub double %tmp.i.i.i7429.i, %tmp.i48.i.i7074.i
  %tmp.i51.i.i7433.i = fmul double %tmp.i23.i.i7034.i, 0x3FDA9628D9C712B6
  %tmp.i52.i.i7434.i = fadd double %tmp.i50.i.i7076.i, %tmp.i51.i.i7433.i
  %tmp.i.i7435.i = fadd double %tmp.i.i7425.i, %tmp.i49.i.i7431.i
  %tmp.i23.i7436.i = fadd double %tmp.i23.i7426.i, %tmp.i52.i.i7434.i
  %tmp.i.i.i7439.i = fmul double %tmp.i.i.i7037.i, 0xBFC2375F640F44DB
  %tmp.i49.i.i7441.i = fsub double %tmp.i.i.i7439.i, %tmp.i48.i.i7084.i
  %tmp.i51.i.i7443.i = fmul double %tmp.i23.i.i7038.i, 0x3FC2375F640F44DB
  %468 = fsub double %tmp.i50.i.i7086.i, %tmp.i51.i.i7443.i
  %tmp.i.i7445.i = fadd double %tmp.i.i7435.i, %tmp.i49.i.i7441.i
  %tmp.i23.i7446.i = fadd double %tmp.i23.i7436.i, %468
  %tmp.i6407.i = fmul double %.05685.i, %tmp.i23.i28.i7024.i
  %tmp.i6408.i = fmul double %.07492749575017508.i, %tmp.i23.i28.i7028.i
  %tmp.i6409.i = fsub double %tmp.i6407.i, %tmp.i6408.i
  %tmp.i6410.i = fmul double %.056847510.i, %tmp.i23.i28.i7032.i
  %tmp.i6411.i = fadd double %tmp.i6409.i, %tmp.i6410.i
  %tmp.i6412.i = fmul double %.05682749675007509.i, %tmp.i23.i28.i7036.i
  %tmp.i6413.i = fsub double %tmp.i6411.i, %tmp.i6412.i
  %tmp.i6414.i = fmul double %.0568375027507.i, %tmp.i23.i28.i7040.i
  %tmp.i6415.i = fadd double %tmp.i6413.i, %tmp.i6414.i
  %tmp.i6416.i = fmul double %.05685.i, %tmp.i.i27.i7023.i
  %tmp.i6417.i = fmul double %.07492749575017508.i, %tmp.i.i27.i7027.i
  %tmp.i6418.i = fsub double %tmp.i6416.i, %tmp.i6417.i
  %tmp.i6419.i = fmul double %.056847510.i, %tmp.i.i27.i7031.i
  %tmp.i6420.i = fadd double %tmp.i6418.i, %tmp.i6419.i
  %tmp.i6421.i = fmul double %.05682749675007509.i, %tmp.i.i27.i7035.i
  %tmp.i6422.i = fsub double %tmp.i6420.i, %tmp.i6421.i
  %tmp.i6423.i = fmul double %.0568375027507.i, %tmp.i.i27.i7039.i
  %tmp.i6424.i = fadd double %tmp.i6422.i, %tmp.i6423.i
  %tmp.i.i.i7447.i = fsub double %tmp.i.i7445.i, %tmp.i6415.i
  %tmp.i23.i.i7448.i = fadd double %tmp.i6424.i, %tmp.i23.i7446.i
  %tmp.i.i27.i7449.i = fadd double %tmp.i6415.i, %tmp.i.i7445.i
  %tmp.i23.i28.i7450.i = fsub double %tmp.i23.i7446.i, %tmp.i6424.i
  %tmp.i15.i6428.i = add i64 %425, %tmp.i14.i6129.i
  %469 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6428.i
  %tmp.i10.i6432.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i6430.i
  %470 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6432.i
  %.unpack.i.i6433.i = load double, ptr %470, align 8
  %.elt1.i.i6434.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6432.i, i32 1
  %.unpack2.i.i6435.i = load double, ptr %.elt1.i.i6434.i, align 8
  %tmp.i101.i7454.i = fmul double %tmp.i.i.i7447.i, %.unpack.i.i6433.i
  %tmp.i102.i7455.i = fmul double %tmp.i23.i.i7448.i, %.unpack2.i.i6435.i
  br i1 %.not.i503, label %if.false.i7465.i, label %if.true.i7456.i

if.true.i7456.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7396.i"
  %tmp.i97.i7457.i = fadd double %tmp.i101.i7454.i, %tmp.i102.i7455.i
  %tmp.i98.i7458.i = fmul double %tmp.i23.i.i7448.i, %.unpack.i.i6433.i
  %tmp.i99.i7459.i = fmul double %tmp.i.i.i7447.i, %.unpack2.i.i6435.i
  %tmp.i100.i7460.i = fsub double %tmp.i98.i7458.i, %tmp.i99.i7459.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7470.i"

if.false.i7465.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7396.i"
  %tmp.i103.i7466.i = fsub double %tmp.i101.i7454.i, %tmp.i102.i7455.i
  %tmp.i104.i7467.i = fmul double %tmp.i.i.i7447.i, %.unpack2.i.i6435.i
  %tmp.i105.i7468.i = fmul double %tmp.i23.i.i7448.i, %.unpack.i.i6433.i
  %tmp.i106.i7469.i = fadd double %tmp.i105.i7468.i, %tmp.i104.i7467.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7470.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7470.i": ; preds = %if.false.i7465.i, %if.true.i7456.i
  %tmp.i97.pn.i7461.i = phi double [ %tmp.i97.i7457.i, %if.true.i7456.i ], [ %tmp.i103.i7466.i, %if.false.i7465.i ]
  %tmp.i100.pn.i7462.i = phi double [ %tmp.i100.i7460.i, %if.true.i7456.i ], [ %tmp.i106.i7469.i, %if.false.i7465.i ]
  store double %tmp.i97.pn.i7461.i, ptr %469, align 8
  %.repack1.i6437.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6428.i, i32 1
  store double %tmp.i100.pn.i7462.i, ptr %.repack1.i6437.i, align 8
  %tmp.i15.i6442.i = add i64 %425, %tmp.i14.i6135.i
  %471 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6442.i
  %tmp.i10.i6446.i = add i64 %tmp.i9.i6250.i, %tmp.i8.i6444.i
  %472 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6446.i
  %.unpack.i.i6447.i = load double, ptr %472, align 8
  %.elt1.i.i6448.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i10.i6446.i, i32 1
  %.unpack2.i.i6449.i = load double, ptr %.elt1.i.i6448.i, align 8
  %tmp.i101.i7474.i = fmul double %tmp.i.i27.i7449.i, %.unpack.i.i6447.i
  %tmp.i102.i7475.i = fmul double %tmp.i23.i28.i7450.i, %.unpack2.i.i6449.i
  br i1 %.not.i503, label %if.false.i7485.i, label %if.true.i7476.i

if.true.i7476.i:                                  ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7470.i"
  %tmp.i97.i7477.i = fadd double %tmp.i101.i7474.i, %tmp.i102.i7475.i
  %tmp.i98.i7478.i = fmul double %tmp.i23.i28.i7450.i, %.unpack.i.i6447.i
  %tmp.i99.i7479.i = fmul double %tmp.i.i27.i7449.i, %.unpack2.i.i6449.i
  %tmp.i100.i7480.i = fsub double %tmp.i98.i7478.i, %tmp.i99.i7479.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7490.i"

if.false.i7485.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7470.i"
  %tmp.i103.i7486.i = fsub double %tmp.i101.i7474.i, %tmp.i102.i7475.i
  %tmp.i104.i7487.i = fmul double %tmp.i.i27.i7449.i, %.unpack2.i.i6449.i
  %tmp.i105.i7488.i = fmul double %tmp.i23.i28.i7450.i, %.unpack.i.i6447.i
  %tmp.i106.i7489.i = fadd double %tmp.i105.i7488.i, %tmp.i104.i7487.i
  br label %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7490.i"

"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7490.i": ; preds = %if.false.i7485.i, %if.true.i7476.i
  %tmp.i97.pn.i7481.i = phi double [ %tmp.i97.i7477.i, %if.true.i7476.i ], [ %tmp.i103.i7486.i, %if.false.i7485.i ]
  %tmp.i100.pn.i7482.i = phi double [ %tmp.i100.i7480.i, %if.true.i7476.i ], [ %tmp.i106.i7489.i, %if.false.i7485.i ]
  store double %tmp.i97.pn.i7481.i, ptr %471, align 8
  %.repack1.i6451.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i6442.i, i32 1
  store double %tmp.i100.pn.i7482.i, ptr %.repack1.i6451.i, align 8
  %473 = add nuw nsw i64 %425, 1
  %exitcond.not.i518 = icmp eq i64 %473, %tmp.i212
  br i1 %exitcond.not.i518, label %imp_for.exit23.i, label %imp_for.body21.i

imp_for.exit23.i:                                 ; preds = %"std.numpy.fft.pocketfft._special_mul:0[std.internal.types.complex.complex,std.internal.types.complex.complex,bool].2032.exit7490.i", %imp_for.body17.i
  %474 = add nuw nsw i64 %387, 1
  %exitcond7517.not.i = icmp eq i64 %474, %.036
  br i1 %exitcond7517.not.i, label %if.exit3, label %imp_for.body17.i

if.false20:                                       ; preds = %imp_for.body
  %.elt3.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i, i64 %6, i32 2
  %.unpack4.i.i.i = load ptr, ptr %.elt3.i.i.i, align 8
  %tmp.i.i = add i64 %.unpack.i.i.i, 1
  %tmp.i2265.i48 = sdiv i64 %tmp.i.i, 2
  %tmp.i2266.i49 = mul i64 %tmp.i212, %.036
  %475 = shl i64 %.unpack.i.i.i, 4
  %476 = tail call ptr @seq_alloc_atomic(i64 %475)
  store double 1.000000e+00, ptr %476, align 8
  %.repack1.i.i.i = getelementptr { double, double }, ptr %476, i64 0, i32 1
  store double 0.000000e+00, ptr %.repack1.i.i.i, align 8
  %.not2713.i = icmp sgt i64 %.unpack.i.i.i, 1
  br i1 %.not2713.i, label %imp_for.body.lr.ph.i56, label %imp_for.cond1.preheader.i50

imp_for.body.lr.ph.i56:                           ; preds = %if.false20
  br i1 %.not.i503, label %vector.scevcheck.i, label %imp_for.body.i57

vector.scevcheck.i:                               ; preds = %imp_for.body.lr.ph.i56
  %477 = add nsw i64 %.unpack.i.i.i, -1
  %478 = add nsw i64 %.unpack.i.i.i, -2
  %scevgep.i = getelementptr i8, ptr %476, i64 16
  %mul.result.i = shl i64 %478, 4
  %479 = getelementptr i8, ptr %scevgep.i, i64 %mul.result.i
  %480 = icmp ult ptr %479, %scevgep.i
  %scevgep1.i = getelementptr i8, ptr %476, i64 24
  %mul.overflow4.i = icmp ugt i64 %478, 1152921504606846975
  %481 = getelementptr i8, ptr %scevgep1.i, i64 %mul.result.i
  %482 = icmp ult ptr %481, %scevgep1.i
  %483 = or i1 %mul.overflow4.i, %482
  %484 = or i1 %480, %483
  br i1 %484, label %imp_for.body.us.i.preheader, label %vector.ph.i

vector.ph.i:                                      ; preds = %vector.scevcheck.i
  %n.vec.i = and i64 %477, -2
  br label %vector.body.i

vector.body.i:                                    ; preds = %vector.body.i, %vector.ph.i
  %index.i = phi i64 [ 0, %vector.ph.i ], [ %485, %vector.body.i ]
  %offset.idx.i = or i64 %index.i, 1
  %485 = add nuw nsw i64 %index.i, 2
  %486 = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %offset.idx.i
  %487 = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %485
  %488 = load double, ptr %486, align 8
  %489 = load double, ptr %487, align 8
  %490 = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %offset.idx.i, i32 1
  %491 = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %485, i32 1
  %492 = load double, ptr %490, align 8
  %493 = load double, ptr %491, align 8
  %494 = getelementptr { double, double }, ptr %476, i64 %offset.idx.i
  %495 = getelementptr { double, double }, ptr %476, i64 %485
  store double %488, ptr %494, align 8
  store double %489, ptr %495, align 8
  %496 = getelementptr { double, double }, ptr %476, i64 %offset.idx.i, i32 1
  %497 = getelementptr { double, double }, ptr %476, i64 %485, i32 1
  store double %492, ptr %496, align 8
  store double %493, ptr %497, align 8
  %498 = icmp eq i64 %485, %n.vec.i
  br i1 %498, label %middle.block.i, label %vector.body.i, !llvm.loop !2

middle.block.i:                                   ; preds = %vector.body.i
  %ind.end.i = or i64 %477, 1
  %cmp.n.i = icmp eq i64 %477, %n.vec.i
  br i1 %cmp.n.i, label %imp_for.cond1.preheader.i50, label %imp_for.body.us.i.preheader

imp_for.body.us.i.preheader:                      ; preds = %middle.block.i, %vector.scevcheck.i
  %.ph = phi i64 [ %ind.end.i, %middle.block.i ], [ 1, %vector.scevcheck.i ]
  br label %imp_for.body.us.i

imp_for.body.us.i:                                ; preds = %imp_for.body.us.i, %imp_for.body.us.i.preheader
  %499 = phi i64 [ %502, %imp_for.body.us.i ], [ %.ph, %imp_for.body.us.i.preheader ]
  %500 = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %499
  %.unpack.i.us.i = load double, ptr %500, align 8
  %.elt1.i.us.i = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %499, i32 1
  %.unpack2.i.us.i = load double, ptr %.elt1.i.us.i, align 8
  %501 = getelementptr { double, double }, ptr %476, i64 %499
  store double %.unpack.i.us.i, ptr %501, align 8
  %.repack1.i.i2632.us.i = getelementptr { double, double }, ptr %476, i64 %499, i32 1
  store double %.unpack2.i.us.i, ptr %.repack1.i.i2632.us.i, align 8
  %502 = add nuw nsw i64 %499, 1
  %exitcond2839.not.i = icmp eq i64 %502, %.unpack.i.i.i
  br i1 %exitcond2839.not.i, label %imp_for.cond1.preheader.i50, label %imp_for.body.us.i, !llvm.loop !5

imp_for.cond1.preheader.i50:                      ; preds = %imp_for.body.i57, %imp_for.body.us.i, %middle.block.i, %if.false20
  %.not22402715.i = icmp sgt i64 %.036, 0
  br i1 %.not22402715.i, label %imp_for.cond5.preheader.lr.ph.i, label %imp_for.exit4.thread.i

imp_for.cond5.preheader.lr.ph.i:                  ; preds = %imp_for.cond1.preheader.i50
  %.not22412714.i = icmp sgt i64 %tmp.i212, 0
  %tmp.i.i.i = mul i64 %tmp.i212, %.unpack.i.i.i
  br i1 %.not22412714.i, label %imp_for.cond5.preheader.us.i, label %imp_for.exit4.thread2877.i

imp_for.cond5.preheader.us.i:                     ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.us.i, %imp_for.cond5.preheader.lr.ph.i
  %503 = phi i64 [ %508, %imp_for.cond5.imp_for.exit8_crit_edge.us.i ], [ 0, %imp_for.cond5.preheader.lr.ph.i ]
  %tmp.i14.i.us.i = mul i64 %503, %tmp.i212
  %tmp.i14.i2274.us.i = mul i64 %tmp.i.i.i, %503
  br label %imp_for.body6.us.i

imp_for.body6.us.i:                               ; preds = %imp_for.body6.us.i, %imp_for.cond5.preheader.us.i
  %504 = phi i64 [ 0, %imp_for.cond5.preheader.us.i ], [ %507, %imp_for.body6.us.i ]
  %tmp.i15.i.us.i = add i64 %504, %tmp.i14.i.us.i
  %505 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.us.i
  %tmp.i15.i2275.us.i = add i64 %504, %tmp.i14.i2274.us.i
  %506 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2275.us.i
  %.unpack.i.i.us.i = load double, ptr %506, align 8
  %.elt1.i.i.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2275.us.i, i32 1
  %.unpack2.i.i.us.i = load double, ptr %.elt1.i.i.us.i, align 8
  store double %.unpack.i.i.us.i, ptr %505, align 8
  %.repack1.i.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i.us.i, i32 1
  store double %.unpack2.i.i.us.i, ptr %.repack1.i.us.i, align 8
  %507 = add nuw nsw i64 %504, 1
  %exitcond2840.not.i = icmp eq i64 %507, %tmp.i212
  br i1 %exitcond2840.not.i, label %imp_for.cond5.imp_for.exit8_crit_edge.us.i, label %imp_for.body6.us.i

imp_for.cond5.imp_for.exit8_crit_edge.us.i:       ; preds = %imp_for.body6.us.i
  %508 = add nuw nsw i64 %503, 1
  %exitcond2841.not.i = icmp eq i64 %508, %.036
  br i1 %exitcond2841.not.i, label %imp_for.exit4.i, label %imp_for.cond5.preheader.us.i

imp_for.body.i57:                                 ; preds = %imp_for.body.i57, %imp_for.body.lr.ph.i56
  %509 = phi i64 [ %513, %imp_for.body.i57 ], [ 1, %imp_for.body.lr.ph.i56 ]
  %510 = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %509
  %.unpack.i.i = load double, ptr %510, align 8
  %.elt1.i.i = getelementptr { double, double }, ptr %.unpack4.i.i.i, i64 %509, i32 1
  %.unpack2.i.i = load double, ptr %.elt1.i.i, align 8
  %511 = fneg double %.unpack2.i.i
  %512 = getelementptr { double, double }, ptr %476, i64 %509
  store double %.unpack.i.i, ptr %512, align 8
  %.repack1.i.i2632.i = getelementptr { double, double }, ptr %476, i64 %509, i32 1
  store double %511, ptr %.repack1.i.i2632.i, align 8
  %513 = add nuw nsw i64 %509, 1
  %exitcond.not.i58 = icmp eq i64 %513, %.unpack.i.i.i
  br i1 %exitcond.not.i58, label %imp_for.cond1.preheader.i50, label %imp_for.body.i57

imp_for.exit4.i:                                  ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.us.i
  %tmp.i2273.i = add i64 %.unpack.i.i.i, -1
  %.not22422718.i = icmp sgt i64 %tmp.i.i, 3
  br i1 %.not22422718.i, label %imp_for.cond13.preheader.us.us.preheader.i, label %imp_for.cond25.preheader.us.i

imp_for.exit4.thread2877.i:                       ; preds = %imp_for.cond5.preheader.lr.ph.i
  %tmp.i22732878.i = add i64 %.unpack.i.i.i, -1
  %.not224227182879.i = icmp sgt i64 %tmp.i.i, 3
  br i1 %.not224227182879.i, label %imp_for.cond37.preheader.lr.ph.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit"

imp_for.exit4.thread.i:                           ; preds = %imp_for.cond1.preheader.i50
  %tmp.i22732867.i = add i64 %.unpack.i.i.i, -1
  %.not224227182868.i = icmp sgt i64 %tmp.i.i, 3
  br i1 %.not224227182868.i, label %imp_for.cond37.preheader.lr.ph.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit"

imp_for.cond13.preheader.us.us.preheader.i:       ; preds = %imp_for.exit4.i
  %smax.i = tail call i64 @llvm.smax.i64(i64 %tmp.i2265.i48, i64 2)
  br label %imp_for.cond13.preheader.us.us.i

imp_for.cond13.preheader.us.us.i:                 ; preds = %imp_for.cond13.imp_for.exit16_crit_edge.split.us.us.us.i, %imp_for.cond13.preheader.us.us.preheader.i
  %514 = phi i64 [ %523, %imp_for.cond13.imp_for.exit16_crit_edge.split.us.us.us.i ], [ 1, %imp_for.cond13.preheader.us.us.preheader.i ]
  %.02719.us.us.i = phi i64 [ %tmp.i2276.us.us.i, %imp_for.cond13.imp_for.exit16_crit_edge.split.us.us.us.i ], [ %tmp.i2273.i, %imp_for.cond13.preheader.us.us.preheader.i ]
  %tmp.i.i2290.us.us.i = mul i64 %514, %.036
  %tmp.i.i2295.us.us.i = mul i64 %.02719.us.us.i, %.036
  br label %imp_for.cond17.preheader.us.us.us.i

imp_for.cond17.preheader.us.us.us.i:              ; preds = %imp_for.cond17.imp_for.exit20_crit_edge.us.us.us.i, %imp_for.cond13.preheader.us.us.i
  %515 = phi i64 [ 0, %imp_for.cond13.preheader.us.us.i ], [ %522, %imp_for.cond17.imp_for.exit20_crit_edge.us.us.us.i ]
  %tmp.i.i2277.us.us.us.i = mul i64 %515, %.unpack.i.i.i
  %tmp.i13.i.us.us.us.i = add i64 %tmp.i.i2277.us.us.us.i, %514
  %tmp.i14.i2278.us.us.us.i = mul i64 %tmp.i13.i.us.us.us.i, %tmp.i212
  %tmp.i13.i2284.us.us.us.i = add i64 %tmp.i.i2277.us.us.us.i, %.02719.us.us.i
  %tmp.i14.i2285.us.us.us.i = mul i64 %tmp.i13.i2284.us.us.us.i, %tmp.i212
  %tmp.i13.i2291.us.us.us.i = add i64 %515, %tmp.i.i2290.us.us.i
  %tmp.i14.i2292.us.us.us.i = mul i64 %tmp.i13.i2291.us.us.us.i, %tmp.i212
  %tmp.i13.i2296.us.us.us.i = add i64 %515, %tmp.i.i2295.us.us.i
  %tmp.i14.i2297.us.us.us.i = mul i64 %tmp.i13.i2296.us.us.us.i, %tmp.i212
  br label %imp_for.body18.us.us.us.i

imp_for.body18.us.us.us.i:                        ; preds = %imp_for.body18.us.us.us.i, %imp_for.cond17.preheader.us.us.us.i
  %516 = phi i64 [ 0, %imp_for.cond17.preheader.us.us.us.i ], [ %521, %imp_for.body18.us.us.us.i ]
  %tmp.i15.i2279.us.us.us.i = add i64 %516, %tmp.i14.i2278.us.us.us.i
  %517 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2279.us.us.us.i
  %.unpack.i.i2280.us.us.us.i = load double, ptr %517, align 8
  %.elt1.i.i2281.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2279.us.us.us.i, i32 1
  %.unpack2.i.i2282.us.us.us.i = load double, ptr %.elt1.i.i2281.us.us.us.i, align 8
  %tmp.i15.i2286.us.us.us.i = add i64 %516, %tmp.i14.i2285.us.us.us.i
  %518 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2286.us.us.us.i
  %.unpack.i.i2287.us.us.us.i = load double, ptr %518, align 8
  %.elt1.i.i2288.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2286.us.us.us.i, i32 1
  %.unpack2.i.i2289.us.us.us.i = load double, ptr %.elt1.i.i2288.us.us.us.i, align 8
  %tmp.i.i.i.us.us.us.i = fadd double %.unpack.i.i2280.us.us.us.i, %.unpack.i.i2287.us.us.us.i
  %tmp.i23.i.i.us.us.us.i = fadd double %.unpack2.i.i2282.us.us.us.i, %.unpack2.i.i2289.us.us.us.i
  %tmp.i.i27.i.us.us.us.i = fsub double %.unpack.i.i2280.us.us.us.i, %.unpack.i.i2287.us.us.us.i
  %tmp.i23.i28.i.us.us.us.i = fsub double %.unpack2.i.i2282.us.us.us.i, %.unpack2.i.i2289.us.us.us.i
  %tmp.i15.i2293.us.us.us.i = add i64 %516, %tmp.i14.i2292.us.us.us.i
  %519 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2293.us.us.us.i
  store double %tmp.i.i.i.us.us.us.i, ptr %519, align 8
  %.repack1.i2294.us.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2293.us.us.us.i, i32 1
  store double %tmp.i23.i.i.us.us.us.i, ptr %.repack1.i2294.us.us.us.i, align 8
  %tmp.i15.i2298.us.us.us.i = add i64 %516, %tmp.i14.i2297.us.us.us.i
  %520 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2298.us.us.us.i
  store double %tmp.i.i27.i.us.us.us.i, ptr %520, align 8
  %.repack1.i2300.us.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2298.us.us.us.i, i32 1
  store double %tmp.i23.i28.i.us.us.us.i, ptr %.repack1.i2300.us.us.us.i, align 8
  %521 = add nuw nsw i64 %516, 1
  %exitcond2842.not.i = icmp eq i64 %521, %tmp.i212
  br i1 %exitcond2842.not.i, label %imp_for.cond17.imp_for.exit20_crit_edge.us.us.us.i, label %imp_for.body18.us.us.us.i

imp_for.cond17.imp_for.exit20_crit_edge.us.us.us.i: ; preds = %imp_for.body18.us.us.us.i
  %522 = add nuw nsw i64 %515, 1
  %exitcond2843.not.i = icmp eq i64 %522, %.036
  br i1 %exitcond2843.not.i, label %imp_for.cond13.imp_for.exit16_crit_edge.split.us.us.us.i, label %imp_for.cond17.preheader.us.us.us.i

imp_for.cond13.imp_for.exit16_crit_edge.split.us.us.us.i: ; preds = %imp_for.cond17.imp_for.exit20_crit_edge.us.us.us.i
  %tmp.i2276.us.us.i = add i64 %.02719.us.us.i, -1
  %523 = add nuw nsw i64 %514, 1
  %exitcond2844.not.i = icmp eq i64 %523, %smax.i
  br i1 %exitcond2844.not.i, label %imp_for.cond25.preheader.us.us.i, label %imp_for.cond13.preheader.us.us.i

imp_for.cond25.preheader.us.us.i:                 ; preds = %imp_for.cond25.imp_for.exit28_crit_edge.split.us.us.us.i, %imp_for.cond13.imp_for.exit16_crit_edge.split.us.us.us.i
  %524 = phi i64 [ %532, %imp_for.cond25.imp_for.exit28_crit_edge.split.us.us.us.i ], [ 0, %imp_for.cond13.imp_for.exit16_crit_edge.split.us.us.us.i ]
  %tmp.i14.i2303.us.us.i = mul i64 %524, %tmp.i212
  br label %imp_for.body26.us.us.us.i

imp_for.body26.us.us.us.i:                        ; preds = %imp_for.cond29.imp_for.exit32_crit_edge.us.us.us.i, %imp_for.cond25.preheader.us.us.i
  %525 = phi i64 [ 0, %imp_for.cond25.preheader.us.us.i ], [ %531, %imp_for.cond29.imp_for.exit32_crit_edge.us.us.us.i ]
  %tmp.i15.i2304.us.us.us.i = add i64 %525, %tmp.i14.i2303.us.us.i
  %526 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2304.us.us.us.i
  %.unpack.i2305.us.us.us.i = load double, ptr %526, align 8
  %.elt1.i2306.us.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2304.us.us.us.i, i32 1
  %.unpack2.i2307.us.us.us.i = load double, ptr %.elt1.i2306.us.us.us.i, align 8
  br label %imp_for.body30.us.us.us.i

imp_for.body30.us.us.us.i:                        ; preds = %imp_for.body30.us.us.us.i, %imp_for.body26.us.us.us.i
  %527 = phi i64 [ 1, %imp_for.body26.us.us.us.i ], [ %529, %imp_for.body30.us.us.us.i ]
  %.unpack2.i2307.pn2727.us.us.us.i = phi double [ %.unpack2.i2307.us.us.us.i, %imp_for.body26.us.us.us.i ], [ %tmp.i23.i.us.us.us.i, %imp_for.body30.us.us.us.i ]
  %.unpack.i2305.pn2726.us.us.us.i = phi double [ %.unpack.i2305.us.us.us.i, %imp_for.body26.us.us.us.i ], [ %tmp.i.i2633.us.us.us.i, %imp_for.body30.us.us.us.i ]
  %tmp.i.i2308.us.us.us.i = mul i64 %527, %.036
  %tmp.i13.i2309.us.us.us.i = add i64 %tmp.i.i2308.us.us.us.i, %524
  %tmp.i14.i2310.us.us.us.i = mul i64 %tmp.i13.i2309.us.us.us.i, %tmp.i212
  %tmp.i15.i2311.us.us.us.i = add i64 %tmp.i14.i2310.us.us.us.i, %525
  %528 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2311.us.us.us.i
  %.unpack.i2312.us.us.us.i = load double, ptr %528, align 8
  %.elt1.i2313.us.us.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2311.us.us.us.i, i32 1
  %.unpack2.i2314.us.us.us.i = load double, ptr %.elt1.i2313.us.us.us.i, align 8
  %tmp.i.i2633.us.us.us.i = fadd double %.unpack.i2305.pn2726.us.us.us.i, %.unpack.i2312.us.us.us.i
  %tmp.i23.i.us.us.us.i = fadd double %.unpack2.i2307.pn2727.us.us.us.i, %.unpack2.i2314.us.us.us.i
  %529 = add nuw nsw i64 %527, 1
  %exitcond2848.not.i = icmp eq i64 %529, %smax.i
  br i1 %exitcond2848.not.i, label %imp_for.cond29.imp_for.exit32_crit_edge.us.us.us.i, label %imp_for.body30.us.us.us.i

imp_for.cond29.imp_for.exit32_crit_edge.us.us.us.i: ; preds = %imp_for.body30.us.us.us.i
  %530 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2304.us.us.us.i
  store double %tmp.i.i2633.us.us.us.i, ptr %530, align 8
  %.repack1.i2318.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2304.us.us.us.i, i32 1
  store double %tmp.i23.i.us.us.us.i, ptr %.repack1.i2318.us.us.us.i, align 8
  %531 = add nuw nsw i64 %525, 1
  %exitcond2849.not.i = icmp eq i64 %531, %tmp.i212
  br i1 %exitcond2849.not.i, label %imp_for.cond25.imp_for.exit28_crit_edge.split.us.us.us.i, label %imp_for.body26.us.us.us.i

imp_for.cond25.imp_for.exit28_crit_edge.split.us.us.us.i: ; preds = %imp_for.cond29.imp_for.exit32_crit_edge.us.us.us.i
  %532 = add nuw nsw i64 %524, 1
  %exitcond2850.not.i = icmp eq i64 %532, %.036
  br i1 %exitcond2850.not.i, label %imp_for.cond33.preheader.i, label %imp_for.cond25.preheader.us.us.i

imp_for.cond25.preheader.us.i:                    ; preds = %imp_for.cond25.imp_for.exit28_crit_edge.split.us2738.i, %imp_for.exit4.i
  %533 = phi i64 [ %538, %imp_for.cond25.imp_for.exit28_crit_edge.split.us2738.i ], [ 0, %imp_for.exit4.i ]
  %tmp.i14.i2303.us.i = mul i64 %533, %tmp.i212
  br label %imp_for.body26.us2731.i

imp_for.body26.us2731.i:                          ; preds = %imp_for.body26.us2731.i, %imp_for.cond25.preheader.us.i
  %534 = phi i64 [ 0, %imp_for.cond25.preheader.us.i ], [ %537, %imp_for.body26.us2731.i ]
  %tmp.i15.i2304.us2732.i = add i64 %534, %tmp.i14.i2303.us.i
  %535 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2304.us2732.i
  %.unpack.i2305.us2733.i = load double, ptr %535, align 8
  %.elt1.i2306.us2734.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i15.i2304.us2732.i, i32 1
  %.unpack2.i2307.us2735.i = load double, ptr %.elt1.i2306.us2734.i, align 8
  %536 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2304.us2732.i
  store double %.unpack.i2305.us2733.i, ptr %536, align 8
  %.repack1.i2318.us2736.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2304.us2732.i, i32 1
  store double %.unpack2.i2307.us2735.i, ptr %.repack1.i2318.us2736.i, align 8
  %537 = add nuw nsw i64 %534, 1
  %exitcond2845.not.i = icmp eq i64 %537, %tmp.i212
  br i1 %exitcond2845.not.i, label %imp_for.cond25.imp_for.exit28_crit_edge.split.us2738.i, label %imp_for.body26.us2731.i

imp_for.cond25.imp_for.exit28_crit_edge.split.us2738.i: ; preds = %imp_for.body26.us2731.i
  %538 = add nuw nsw i64 %533, 1
  %exitcond2846.not.i = icmp eq i64 %538, %.036
  br i1 %exitcond2846.not.i, label %imp_for.cond33.preheader.i, label %imp_for.cond25.preheader.us.i

imp_for.cond33.preheader.i:                       ; preds = %imp_for.cond25.imp_for.exit28_crit_edge.split.us2738.i, %imp_for.cond25.imp_for.exit28_crit_edge.split.us.us.us.i
  br i1 %.not22422718.i, label %imp_for.cond37.preheader.lr.ph.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit"

imp_for.cond37.preheader.lr.ph.i:                 ; preds = %imp_for.cond33.preheader.i, %imp_for.exit4.thread.i, %imp_for.exit4.thread2877.i
  %tmp.i2273286928942907.i = phi i64 [ %tmp.i22732867.i, %imp_for.exit4.thread.i ], [ %tmp.i2273.i, %imp_for.cond33.preheader.i ], [ %tmp.i22732878.i, %imp_for.exit4.thread2877.i ]
  %.not22502740.i = icmp sgt i64 %tmp.i2266.i49, 0
  %tmp.i.i2332.i = shl i64 %tmp.i2266.i49, 1
  %tmp.i.i2362.i = mul i64 %tmp.i2273286928942907.i, %tmp.i2266.i49
  %tmp.i2369.i51 = add nsw i64 %.unpack.i.i.i, -2
  %tmp.i.i2370.i = mul i64 %tmp.i2266.i49, %tmp.i2369.i51
  %tmp.i2397.i = add nsw i64 %.unpack.i.i.i, -3
  %tmp.i2398.i = add nsw i64 %tmp.i2265.i48, -1
  %tmp.i2399.not2742.i = icmp ugt i64 %tmp.i.i, 9
  %smax2855.i = tail call i64 @llvm.smax.i64(i64 %tmp.i2265.i48, i64 2)
  br label %imp_for.cond37.preheader.i

imp_for.cond37.preheader.i:                       ; preds = %while.exit50.i, %imp_for.cond37.preheader.lr.ph.i
  %539 = phi i64 [ 1, %imp_for.cond37.preheader.lr.ph.i ], [ %602, %while.exit50.i ]
  %.022082754.i = phi i64 [ %tmp.i2273286928942907.i, %imp_for.cond37.preheader.lr.ph.i ], [ %tmp.i2492.i, %while.exit50.i ]
  br i1 %.not22502740.i, label %imp_for.body38.lr.ph.i, label %imp_for.cond37.preheader.imp_for.exit40_crit_edge.i

imp_for.cond37.preheader.imp_for.exit40_crit_edge.i: ; preds = %imp_for.cond37.preheader.i
  %.pre.i = shl nuw i64 %539, 1
  br label %imp_for.exit40.i

imp_for.body38.lr.ph.i:                           ; preds = %imp_for.cond37.preheader.i
  %tmp.i.i2321.i = mul i64 %539, %tmp.i2266.i49
  %540 = getelementptr { double, double }, ptr %476, i64 %539
  %.unpack.i.i2634.i = load double, ptr %540, align 8
  %.elt1.i.i2635.i = getelementptr { double, double }, ptr %476, i64 %539, i32 1
  %.unpack2.i.i2636.i = load double, ptr %.elt1.i.i2635.i, align 8
  %tmp.i2331.i52 = shl nuw i64 %539, 1
  %541 = getelementptr { double, double }, ptr %476, i64 %tmp.i2331.i52
  %.unpack.i.i2637.i = load double, ptr %541, align 8
  %.elt1.i.i2638.i = getelementptr { double, double }, ptr %476, i64 %tmp.i2331.i52, i32 1
  %.unpack2.i.i2639.i = load double, ptr %.elt1.i.i2638.i, align 8
  %tmp.i.i2359.i = mul i64 %.022082754.i, %tmp.i2266.i49
  %542 = fneg double %.unpack2.i.i2636.i
  br label %imp_for.body38.i

imp_for.exit36.thread.i:                          ; preds = %while.exit50.i
  %tmp.i2320.not32.i = icmp eq i64 %tmp.i212, 1
  br i1 %tmp.i2320.not32.i, label %imp_for.cond61.preheader.i, label %imp_for.cond73.preheader.lr.ph.i

imp_for.cond73.preheader.lr.ph.i:                 ; preds = %imp_for.exit36.thread.i
  %.not22612755.i = icmp sgt i64 %tmp.i212, 1
  %tmp.i2603.i = add nsw i64 %tmp.i212, -1
  br i1 %.not22402715.i, label %imp_for.cond73.preheader.us.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit"

imp_for.cond73.preheader.us.i:                    ; preds = %imp_for.cond73.imp_for.exit76_crit_edge.us.i, %imp_for.cond73.preheader.lr.ph.i
  %543 = phi i64 [ %548, %imp_for.cond73.imp_for.exit76_crit_edge.us.i ], [ 1, %imp_for.cond73.preheader.lr.ph.i ]
  %.022152786.us.i = phi i64 [ %tmp.i2617.us.i, %imp_for.cond73.imp_for.exit76_crit_edge.us.i ], [ %tmp.i2273286928942907.i, %imp_for.cond73.preheader.lr.ph.i ]
  %tmp.i.i2563.us.i = mul i64 %543, %.036
  %tmp.i.i2569.us.i = mul i64 %.022152786.us.i, %.036
  %tmp.i2602.us.i = add nsw i64 %543, -1
  %tmp.i2604.us.i = mul i64 %tmp.i2602.us.i, %tmp.i2603.i
  %tmp.i2605.us.i = add i64 %tmp.i2604.us.i, -1
  %tmp.i2617.us.i = add i64 %.022152786.us.i, -1
  %tmp.i2619.us.i = mul i64 %tmp.i2617.us.i, %tmp.i2603.i
  %tmp.i2620.us.i = add i64 %tmp.i2619.us.i, -1
  br i1 %.not22612755.i, label %imp_for.body74.lr.ph.split.us.us.i, label %imp_for.body74.us2787.i

imp_for.body74.us2787.i:                          ; preds = %imp_for.body74.us2787.i, %imp_for.cond73.preheader.us.i
  %544 = phi i64 [ %547, %imp_for.body74.us2787.i ], [ 0, %imp_for.cond73.preheader.us.i ]
  %tmp.i13.i2564.us2788.i = add i64 %544, %tmp.i.i2563.us.i
  %tmp.i14.i2565.us2789.i = mul i64 %tmp.i13.i2564.us2788.i, %tmp.i212
  %545 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2565.us2789.i
  %.unpack.i2566.us2790.i = load double, ptr %545, align 8
  %.elt1.i2567.us2791.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2565.us2789.i, i32 1
  %.unpack2.i2568.us2792.i = load double, ptr %.elt1.i2567.us2791.i, align 8
  %tmp.i13.i2570.us2793.i = add i64 %544, %tmp.i.i2569.us.i
  %tmp.i14.i2571.us2794.i = mul i64 %tmp.i13.i2570.us2793.i, %tmp.i212
  %546 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2571.us2794.i
  %.unpack.i2572.us2795.i = load double, ptr %546, align 8
  %.elt1.i2573.us2796.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2571.us2794.i, i32 1
  %.unpack2.i2574.us2797.i = load double, ptr %.elt1.i2573.us2796.i, align 8
  %tmp.i.i.i2679.us2798.i = fadd double %.unpack.i2566.us2790.i, %.unpack.i2572.us2795.i
  %tmp.i23.i.i2680.us2799.i = fadd double %.unpack2.i2568.us2792.i, %.unpack2.i2574.us2797.i
  %tmp.i.i27.i2681.us2800.i = fsub double %.unpack.i2566.us2790.i, %.unpack.i2572.us2795.i
  %tmp.i23.i28.i2682.us2801.i = fsub double %.unpack2.i2568.us2792.i, %.unpack2.i2574.us2797.i
  store double %tmp.i.i.i2679.us2798.i, ptr %545, align 8
  store double %tmp.i23.i.i2680.us2799.i, ptr %.elt1.i2567.us2791.i, align 8
  store double %tmp.i.i27.i2681.us2800.i, ptr %546, align 8
  store double %tmp.i23.i28.i2682.us2801.i, ptr %.elt1.i2573.us2796.i, align 8
  %547 = add nuw nsw i64 %544, 1
  %exitcond2857.not.i = icmp eq i64 %547, %.036
  br i1 %exitcond2857.not.i, label %imp_for.cond73.imp_for.exit76_crit_edge.us.i, label %imp_for.body74.us2787.i

imp_for.cond73.imp_for.exit76_crit_edge.us.i:     ; preds = %imp_for.cond77.imp_for.exit80_crit_edge.split.us.us.us.us.i, %imp_for.cond77.imp_for.exit80_crit_edge.split.us2783.us.i, %imp_for.body74.us2787.i
  %548 = add nuw nsw i64 %543, 1
  %exitcond2863.not.i = icmp eq i64 %548, %smax2855.i
  br i1 %exitcond2863.not.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit", label %imp_for.cond73.preheader.us.i

imp_for.body74.lr.ph.split.us.us.i:               ; preds = %imp_for.cond73.preheader.us.i
  br i1 %.not.i503, label %imp_for.body74.us.us.us.i, label %imp_for.body74.us.us2805.i

imp_for.body74.us.us2805.i:                       ; preds = %imp_for.cond77.imp_for.exit80_crit_edge.split.us2783.us.i, %imp_for.body74.lr.ph.split.us.us.i
  %549 = phi i64 [ %558, %imp_for.cond77.imp_for.exit80_crit_edge.split.us2783.us.i ], [ 0, %imp_for.body74.lr.ph.split.us.us.i ]
  %tmp.i13.i2564.us.us2806.i = add i64 %549, %tmp.i.i2563.us.i
  %tmp.i14.i2565.us.us2807.i = mul i64 %tmp.i13.i2564.us.us2806.i, %tmp.i212
  %550 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2565.us.us2807.i
  %.unpack.i2566.us.us2808.i = load double, ptr %550, align 8
  %.elt1.i2567.us.us2809.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2565.us.us2807.i, i32 1
  %.unpack2.i2568.us.us2810.i = load double, ptr %.elt1.i2567.us.us2809.i, align 8
  %tmp.i13.i2570.us.us2811.i = add i64 %549, %tmp.i.i2569.us.i
  %tmp.i14.i2571.us.us2812.i = mul i64 %tmp.i13.i2570.us.us2811.i, %tmp.i212
  %551 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2571.us.us2812.i
  %.unpack.i2572.us.us2813.i = load double, ptr %551, align 8
  %.elt1.i2573.us.us2814.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2571.us.us2812.i, i32 1
  %.unpack2.i2574.us.us2815.i = load double, ptr %.elt1.i2573.us.us2814.i, align 8
  %tmp.i.i.i2679.us.us2816.i = fadd double %.unpack.i2566.us.us2808.i, %.unpack.i2572.us.us2813.i
  %tmp.i23.i.i2680.us.us2817.i = fadd double %.unpack2.i2568.us.us2810.i, %.unpack2.i2574.us.us2815.i
  %tmp.i.i27.i2681.us.us2818.i = fsub double %.unpack.i2566.us.us2808.i, %.unpack.i2572.us.us2813.i
  %tmp.i23.i28.i2682.us.us2819.i = fsub double %.unpack2.i2568.us.us2810.i, %.unpack2.i2574.us.us2815.i
  store double %tmp.i.i.i2679.us.us2816.i, ptr %550, align 8
  store double %tmp.i23.i.i2680.us.us2817.i, ptr %.elt1.i2567.us.us2809.i, align 8
  store double %tmp.i.i27.i2681.us.us2818.i, ptr %551, align 8
  store double %tmp.i23.i28.i2682.us.us2819.i, ptr %.elt1.i2573.us.us2814.i, align 8
  br label %imp_for.body78.us2757.us.i

imp_for.body78.us2757.us.i:                       ; preds = %imp_for.body78.us2757.us.i, %imp_for.body74.us.us2805.i
  %552 = phi i64 [ 1, %imp_for.body74.us.us2805.i ], [ %557, %imp_for.body78.us2757.us.i ]
  %tmp.i15.i2591.us2758.us.i = add i64 %552, %tmp.i14.i2565.us.us2807.i
  %553 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2591.us2758.us.i
  %.unpack.i2592.us2759.us.i = load double, ptr %553, align 8
  %.elt1.i2593.us2760.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2591.us2758.us.i, i32 1
  %.unpack2.i2594.us2761.us.i = load double, ptr %.elt1.i2593.us2760.us.i, align 8
  %tmp.i15.i2598.us2762.us.i = add i64 %552, %tmp.i14.i2571.us.us2812.i
  %554 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2598.us2762.us.i
  %.unpack.i2599.us2763.us.i = load double, ptr %554, align 8
  %.elt1.i2600.us2764.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2598.us2762.us.i, i32 1
  %.unpack2.i2601.us2765.us.i = load double, ptr %.elt1.i2600.us2764.us.i, align 8
  %tmp.i.i.i2683.us2766.us.i = fadd double %.unpack.i2592.us2759.us.i, %.unpack.i2599.us2763.us.i
  %tmp.i23.i.i2684.us2767.us.i = fadd double %.unpack2.i2594.us2761.us.i, %.unpack2.i2601.us2765.us.i
  %tmp.i.i27.i2685.us2768.us.i = fsub double %.unpack.i2592.us2759.us.i, %.unpack.i2599.us2763.us.i
  %tmp.i23.i28.i2686.us2769.us.i = fsub double %.unpack2.i2594.us2761.us.i, %.unpack2.i2601.us2765.us.i
  %tmp.i2606.us2770.us.i = add i64 %552, %tmp.i2605.us.i
  %555 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2606.us2770.us.i
  %.unpack.i2611.us2771.us.i = load double, ptr %555, align 8
  %.elt1.i2612.us2772.us.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2606.us2770.us.i, i32 1
  %.unpack2.i2613.us2773.us.i = load double, ptr %.elt1.i2612.us2772.us.i, align 8
  %tmp.i101.i.us2774.us.i = fmul double %tmp.i.i.i2683.us2766.us.i, %.unpack.i2611.us2771.us.i
  %tmp.i102.i.us2775.us.i = fmul double %tmp.i23.i.i2684.us2767.us.i, %.unpack2.i2613.us2773.us.i
  %tmp.i97.i.us.us.i = fadd double %tmp.i101.i.us2774.us.i, %tmp.i102.i.us2775.us.i
  %tmp.i98.i.us.us.i = fmul double %tmp.i23.i.i2684.us2767.us.i, %.unpack.i2611.us2771.us.i
  %tmp.i99.i.us.us.i = fmul double %tmp.i.i.i2683.us2766.us.i, %.unpack2.i2613.us2773.us.i
  %tmp.i100.i.us.us.i = fsub double %tmp.i98.i.us.us.i, %tmp.i99.i.us.us.i
  store double %tmp.i97.i.us.us.i, ptr %553, align 8
  store double %tmp.i100.i.us.us.i, ptr %.elt1.i2593.us2760.us.i, align 8
  %tmp.i2621.us2776.us.i = add i64 %552, %tmp.i2620.us.i
  %556 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2621.us2776.us.i
  %.unpack.i2626.us2777.us.i = load double, ptr %556, align 8
  %.elt1.i2627.us2778.us.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2621.us2776.us.i, i32 1
  %.unpack2.i2628.us2779.us.i = load double, ptr %.elt1.i2627.us2778.us.i, align 8
  %tmp.i101.i2690.us2780.us.i = fmul double %tmp.i.i27.i2685.us2768.us.i, %.unpack.i2626.us2777.us.i
  %tmp.i102.i2691.us2781.us.i = fmul double %tmp.i23.i28.i2686.us2769.us.i, %.unpack2.i2628.us2779.us.i
  %tmp.i97.i2693.us.us.i = fadd double %tmp.i101.i2690.us2780.us.i, %tmp.i102.i2691.us2781.us.i
  %tmp.i98.i2694.us.us.i = fmul double %tmp.i23.i28.i2686.us2769.us.i, %.unpack.i2626.us2777.us.i
  %tmp.i99.i2695.us.us.i = fmul double %tmp.i.i27.i2685.us2768.us.i, %.unpack2.i2628.us2779.us.i
  %tmp.i100.i2696.us.us.i = fsub double %tmp.i98.i2694.us.us.i, %tmp.i99.i2695.us.us.i
  store double %tmp.i97.i2693.us.us.i, ptr %554, align 8
  store double %tmp.i100.i2696.us.us.i, ptr %.elt1.i2600.us2764.us.i, align 8
  %557 = add nuw nsw i64 %552, 1
  %exitcond2858.not.i = icmp eq i64 %557, %tmp.i212
  br i1 %exitcond2858.not.i, label %imp_for.cond77.imp_for.exit80_crit_edge.split.us2783.us.i, label %imp_for.body78.us2757.us.i

imp_for.cond77.imp_for.exit80_crit_edge.split.us2783.us.i: ; preds = %imp_for.body78.us2757.us.i
  %558 = add nuw nsw i64 %549, 1
  %exitcond2859.not.i = icmp eq i64 %558, %.036
  br i1 %exitcond2859.not.i, label %imp_for.cond73.imp_for.exit76_crit_edge.us.i, label %imp_for.body74.us.us2805.i

imp_for.body74.us.us.us.i:                        ; preds = %imp_for.cond77.imp_for.exit80_crit_edge.split.us.us.us.us.i, %imp_for.body74.lr.ph.split.us.us.i
  %559 = phi i64 [ %568, %imp_for.cond77.imp_for.exit80_crit_edge.split.us.us.us.us.i ], [ 0, %imp_for.body74.lr.ph.split.us.us.i ]
  %tmp.i13.i2564.us.us.us.i = add i64 %559, %tmp.i.i2563.us.i
  %tmp.i14.i2565.us.us.us.i = mul i64 %tmp.i13.i2564.us.us.us.i, %tmp.i212
  %560 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2565.us.us.us.i
  %.unpack.i2566.us.us.us.i = load double, ptr %560, align 8
  %.elt1.i2567.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2565.us.us.us.i, i32 1
  %.unpack2.i2568.us.us.us.i = load double, ptr %.elt1.i2567.us.us.us.i, align 8
  %tmp.i13.i2570.us.us.us.i = add i64 %559, %tmp.i.i2569.us.i
  %tmp.i14.i2571.us.us.us.i = mul i64 %tmp.i13.i2570.us.us.us.i, %tmp.i212
  %561 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2571.us.us.us.i
  %.unpack.i2572.us.us.us.i = load double, ptr %561, align 8
  %.elt1.i2573.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i14.i2571.us.us.us.i, i32 1
  %.unpack2.i2574.us.us.us.i = load double, ptr %.elt1.i2573.us.us.us.i, align 8
  %tmp.i.i.i2679.us.us.us.i = fadd double %.unpack.i2566.us.us.us.i, %.unpack.i2572.us.us.us.i
  %tmp.i23.i.i2680.us.us.us.i = fadd double %.unpack2.i2568.us.us.us.i, %.unpack2.i2574.us.us.us.i
  %tmp.i.i27.i2681.us.us.us.i = fsub double %.unpack.i2566.us.us.us.i, %.unpack.i2572.us.us.us.i
  %tmp.i23.i28.i2682.us.us.us.i = fsub double %.unpack2.i2568.us.us.us.i, %.unpack2.i2574.us.us.us.i
  store double %tmp.i.i.i2679.us.us.us.i, ptr %560, align 8
  store double %tmp.i23.i.i2680.us.us.us.i, ptr %.elt1.i2567.us.us.us.i, align 8
  store double %tmp.i.i27.i2681.us.us.us.i, ptr %561, align 8
  store double %tmp.i23.i28.i2682.us.us.us.i, ptr %.elt1.i2573.us.us.us.i, align 8
  br label %imp_for.body78.us.us.us.us.i

imp_for.body78.us.us.us.us.i:                     ; preds = %imp_for.body78.us.us.us.us.i, %imp_for.body74.us.us.us.i
  %562 = phi i64 [ 1, %imp_for.body74.us.us.us.i ], [ %567, %imp_for.body78.us.us.us.us.i ]
  %tmp.i15.i2591.us.us.us.us.i = add i64 %562, %tmp.i14.i2565.us.us.us.i
  %563 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2591.us.us.us.us.i
  %.unpack.i2592.us.us.us.us.i = load double, ptr %563, align 8
  %.elt1.i2593.us.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2591.us.us.us.us.i, i32 1
  %.unpack2.i2594.us.us.us.us.i = load double, ptr %.elt1.i2593.us.us.us.us.i, align 8
  %tmp.i15.i2598.us.us.us.us.i = add i64 %562, %tmp.i14.i2571.us.us.us.i
  %564 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2598.us.us.us.us.i
  %.unpack.i2599.us.us.us.us.i = load double, ptr %564, align 8
  %.elt1.i2600.us.us.us.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i15.i2598.us.us.us.us.i, i32 1
  %.unpack2.i2601.us.us.us.us.i = load double, ptr %.elt1.i2600.us.us.us.us.i, align 8
  %tmp.i.i.i2683.us.us.us.us.i = fadd double %.unpack.i2592.us.us.us.us.i, %.unpack.i2599.us.us.us.us.i
  %tmp.i23.i.i2684.us.us.us.us.i = fadd double %.unpack2.i2594.us.us.us.us.i, %.unpack2.i2601.us.us.us.us.i
  %tmp.i.i27.i2685.us.us.us.us.i = fsub double %.unpack.i2592.us.us.us.us.i, %.unpack.i2599.us.us.us.us.i
  %tmp.i23.i28.i2686.us.us.us.us.i = fsub double %.unpack2.i2594.us.us.us.us.i, %.unpack2.i2601.us.us.us.us.i
  %tmp.i2606.us.us.us.us.i = add i64 %562, %tmp.i2605.us.i
  %565 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2606.us.us.us.us.i
  %.unpack.i2611.us.us.us.us.i = load double, ptr %565, align 8
  %.elt1.i2612.us.us.us.us.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2606.us.us.us.us.i, i32 1
  %.unpack2.i2613.us.us.us.us.i = load double, ptr %.elt1.i2612.us.us.us.us.i, align 8
  %tmp.i101.i.us.us.us.us.i = fmul double %tmp.i.i.i2683.us.us.us.us.i, %.unpack.i2611.us.us.us.us.i
  %tmp.i102.i.us.us.us.us.i = fmul double %tmp.i23.i.i2684.us.us.us.us.i, %.unpack2.i2613.us.us.us.us.i
  %tmp.i103.i.us.us.us.us.i = fsub double %tmp.i101.i.us.us.us.us.i, %tmp.i102.i.us.us.us.us.i
  %tmp.i104.i.us.us.us.us.i = fmul double %tmp.i.i.i2683.us.us.us.us.i, %.unpack2.i2613.us.us.us.us.i
  %tmp.i105.i.us.us.us.us.i = fmul double %tmp.i23.i.i2684.us.us.us.us.i, %.unpack.i2611.us.us.us.us.i
  %tmp.i106.i.us.us.us.us.i = fadd double %tmp.i105.i.us.us.us.us.i, %tmp.i104.i.us.us.us.us.i
  store double %tmp.i103.i.us.us.us.us.i, ptr %563, align 8
  store double %tmp.i106.i.us.us.us.us.i, ptr %.elt1.i2593.us.us.us.us.i, align 8
  %tmp.i2621.us.us.us.us.i = add i64 %562, %tmp.i2620.us.i
  %566 = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2621.us.us.us.us.i
  %.unpack.i2626.us.us.us.us.i = load double, ptr %566, align 8
  %.elt1.i2627.us.us.us.us.i = getelementptr { double, double }, ptr %.unpack2.i.i.i, i64 %tmp.i2621.us.us.us.us.i, i32 1
  %.unpack2.i2628.us.us.us.us.i = load double, ptr %.elt1.i2627.us.us.us.us.i, align 8
  %tmp.i101.i2690.us.us.us.us.i = fmul double %tmp.i.i27.i2685.us.us.us.us.i, %.unpack.i2626.us.us.us.us.i
  %tmp.i102.i2691.us.us.us.us.i = fmul double %tmp.i23.i28.i2686.us.us.us.us.i, %.unpack2.i2628.us.us.us.us.i
  %tmp.i103.i2702.us.us.us.us.i = fsub double %tmp.i101.i2690.us.us.us.us.i, %tmp.i102.i2691.us.us.us.us.i
  %tmp.i104.i2703.us.us.us.us.i = fmul double %tmp.i.i27.i2685.us.us.us.us.i, %.unpack2.i2628.us.us.us.us.i
  %tmp.i105.i2704.us.us.us.us.i = fmul double %tmp.i23.i28.i2686.us.us.us.us.i, %.unpack.i2626.us.us.us.us.i
  %tmp.i106.i2705.us.us.us.us.i = fadd double %tmp.i105.i2704.us.us.us.us.i, %tmp.i104.i2703.us.us.us.us.i
  store double %tmp.i103.i2702.us.us.us.us.i, ptr %564, align 8
  store double %tmp.i106.i2705.us.us.us.us.i, ptr %.elt1.i2600.us.us.us.us.i, align 8
  %567 = add nuw nsw i64 %562, 1
  %exitcond2860.not.i = icmp eq i64 %567, %tmp.i212
  br i1 %exitcond2860.not.i, label %imp_for.cond77.imp_for.exit80_crit_edge.split.us.us.us.us.i, label %imp_for.body78.us.us.us.us.i

imp_for.cond77.imp_for.exit80_crit_edge.split.us.us.us.us.i: ; preds = %imp_for.body78.us.us.us.us.i
  %568 = add nuw nsw i64 %559, 1
  %exitcond2861.not.i = icmp eq i64 %568, %.036
  br i1 %exitcond2861.not.i, label %imp_for.cond73.imp_for.exit76_crit_edge.us.i, label %imp_for.body74.us.us.us.i

imp_for.cond61.preheader.i:                       ; preds = %imp_for.exit36.thread.i
  br i1 %.not22502740.i, label %imp_for.cond65.preheader.us.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit"

imp_for.cond65.preheader.us.i:                    ; preds = %imp_for.cond65.imp_for.exit68_crit_edge.us.i, %imp_for.cond61.preheader.i
  %569 = phi i64 [ %574, %imp_for.cond65.imp_for.exit68_crit_edge.us.i ], [ 1, %imp_for.cond61.preheader.i ]
  %.022142825.us.i = phi i64 [ %tmp.i2562.us.i, %imp_for.cond65.imp_for.exit68_crit_edge.us.i ], [ %tmp.i2273286928942907.i, %imp_for.cond61.preheader.i ]
  %tmp.i.i2542.us.i = mul i64 %569, %tmp.i2266.i49
  %tmp.i.i2547.us.i = mul i64 %.022142825.us.i, %tmp.i2266.i49
  br label %imp_for.body66.us.i

imp_for.body66.us.i:                              ; preds = %imp_for.body66.us.i, %imp_for.cond65.preheader.us.i
  %570 = phi i64 [ 0, %imp_for.cond65.preheader.us.i ], [ %573, %imp_for.body66.us.i ]
  %tmp.i8.i2543.us.i = add i64 %570, %tmp.i.i2542.us.i
  %571 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2543.us.i
  %.unpack.i2544.us.i = load double, ptr %571, align 8
  %.elt1.i2545.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2543.us.i, i32 1
  %.unpack2.i2546.us.i = load double, ptr %.elt1.i2545.us.i, align 8
  %tmp.i8.i2548.us.i = add i64 %570, %tmp.i.i2547.us.i
  %572 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2548.us.i
  %.unpack.i2549.us.i = load double, ptr %572, align 8
  %.elt1.i2550.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2548.us.i, i32 1
  %.unpack2.i2551.us.i = load double, ptr %.elt1.i2550.us.i, align 8
  %tmp.i.i.i2675.us.i = fadd double %.unpack.i2544.us.i, %.unpack.i2549.us.i
  %tmp.i23.i.i2676.us.i = fadd double %.unpack2.i2546.us.i, %.unpack2.i2551.us.i
  %tmp.i.i27.i2677.us.i = fsub double %.unpack.i2544.us.i, %.unpack.i2549.us.i
  %tmp.i23.i28.i2678.us.i = fsub double %.unpack2.i2546.us.i, %.unpack2.i2551.us.i
  store double %tmp.i.i.i2675.us.i, ptr %571, align 8
  store double %tmp.i23.i.i2676.us.i, ptr %.elt1.i2545.us.i, align 8
  store double %tmp.i.i27.i2677.us.i, ptr %572, align 8
  store double %tmp.i23.i28.i2678.us.i, ptr %.elt1.i2550.us.i, align 8
  %573 = add nuw nsw i64 %570, 1
  %exitcond2864.not.i = icmp eq i64 %573, %tmp.i2266.i49
  br i1 %exitcond2864.not.i, label %imp_for.cond65.imp_for.exit68_crit_edge.us.i, label %imp_for.body66.us.i

imp_for.cond65.imp_for.exit68_crit_edge.us.i:     ; preds = %imp_for.body66.us.i
  %tmp.i2562.us.i = add i64 %.022142825.us.i, -1
  %574 = add nuw nsw i64 %569, 1
  %exitcond2866.not.i = icmp eq i64 %574, %smax2855.i
  br i1 %exitcond2866.not.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit", label %imp_for.cond65.preheader.us.i

imp_for.body38.i:                                 ; preds = %imp_for.body38.i, %imp_for.body38.lr.ph.i
  %575 = phi i64 [ 0, %imp_for.body38.lr.ph.i ], [ %583, %imp_for.body38.i ]
  %tmp.i8.i.i53 = add i64 %575, %tmp.i.i2321.i
  %576 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i.i53
  %577 = getelementptr { double, double }, ptr %.018534, i64 %575
  %.unpack.i.i2322.i = load double, ptr %577, align 8
  %.elt1.i.i2323.i = getelementptr { double, double }, ptr %.018534, i64 %575, i32 1
  %.unpack2.i.i2324.i = load double, ptr %.elt1.i.i2323.i, align 8
  %tmp.i8.i2325.i = add i64 %575, %tmp.i2266.i49
  %578 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2325.i
  %.unpack.i.i2326.i = load double, ptr %578, align 8
  %.elt1.i.i2327.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2325.i, i32 1
  %.unpack2.i.i2328.i = load double, ptr %.elt1.i.i2327.i, align 8
  %tmp.i2329.i = fmul double %.unpack.i.i2634.i, %.unpack.i.i2326.i
  %tmp.i2330.i54 = fadd double %.unpack.i.i2322.i, %tmp.i2329.i
  %tmp.i8.i2333.i = add i64 %575, %tmp.i.i2332.i
  %579 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2333.i
  %.unpack.i.i2334.i = load double, ptr %579, align 8
  %.elt1.i.i2335.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2333.i, i32 1
  %.unpack2.i.i2336.i = load double, ptr %.elt1.i.i2335.i, align 8
  %tmp.i2337.i = fmul double %.unpack.i.i2637.i, %.unpack.i.i2334.i
  %tmp.i2338.i = fadd double %tmp.i2330.i54, %tmp.i2337.i
  %tmp.i2346.i = fmul double %.unpack.i.i2634.i, %.unpack2.i.i2328.i
  %tmp.i2347.i = fadd double %.unpack2.i.i2324.i, %tmp.i2346.i
  %tmp.i2354.i = fmul double %.unpack.i.i2637.i, %.unpack2.i.i2336.i
  %tmp.i2355.i = fadd double %tmp.i2347.i, %tmp.i2354.i
  store double %tmp.i2338.i, ptr %576, align 8
  %.repack1.i2357.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i.i53, i32 1
  store double %tmp.i2355.i, ptr %.repack1.i2357.i, align 8
  %tmp.i8.i2360.i = add i64 %575, %tmp.i.i2359.i
  %580 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2360.i
  %tmp.i8.i2363.i = add i64 %575, %tmp.i.i2362.i
  %581 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2363.i
  %.unpack.i.i2364.i = load double, ptr %581, align 8
  %.elt1.i.i2365.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2363.i, i32 1
  %.unpack2.i.i2366.i = load double, ptr %.elt1.i.i2365.i, align 8
  %tmp.i2367.i55 = fmul double %.unpack2.i.i2366.i, %542
  %tmp.i8.i2371.i = add i64 %575, %tmp.i.i2370.i
  %582 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2371.i
  %.unpack.i.i2372.i = load double, ptr %582, align 8
  %.elt1.i.i2373.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2371.i, i32 1
  %.unpack2.i.i2374.i = load double, ptr %.elt1.i.i2373.i, align 8
  %tmp.i2375.i = fmul double %.unpack2.i.i2639.i, %.unpack2.i.i2374.i
  %tmp.i2376.i = fsub double %tmp.i2367.i55, %tmp.i2375.i
  %tmp.i2383.i = fmul double %.unpack2.i.i2636.i, %.unpack.i.i2364.i
  %tmp.i2391.i = fmul double %.unpack2.i.i2639.i, %.unpack.i.i2372.i
  %tmp.i2392.i = fadd double %tmp.i2383.i, %tmp.i2391.i
  store double %tmp.i2376.i, ptr %580, align 8
  %.repack1.i2394.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2360.i, i32 1
  store double %tmp.i2392.i, ptr %.repack1.i2394.i, align 8
  %583 = add nuw nsw i64 %575, 1
  %exitcond2851.not.i = icmp eq i64 %583, %tmp.i2266.i49
  br i1 %exitcond2851.not.i, label %imp_for.exit40.i, label %imp_for.body38.i

imp_for.exit40.i:                                 ; preds = %imp_for.body38.i, %imp_for.cond37.preheader.imp_for.exit40_crit_edge.i
  %tmp.i2396.pre-phi.i = phi i64 [ %.pre.i, %imp_for.cond37.preheader.imp_for.exit40_crit_edge.i ], [ %tmp.i2331.i52, %imp_for.body38.i ]
  br i1 %tmp.i2399.not2742.i, label %while.body.lr.ph.i, label %while.cond48.preheader.i

while.body.lr.ph.i:                               ; preds = %imp_for.exit40.i
  %tmp.i.i2409.i = mul i64 %539, %tmp.i2266.i49
  %tmp.i.i2447.i = mul i64 %.022082754.i, %tmp.i2266.i49
  br label %while.body.i

while.cond48.preheader.i:                         ; preds = %imp_for.exit47.i, %imp_for.exit40.i
  %.02212.lcssa.i = phi i64 [ %tmp.i2397.i, %imp_for.exit40.i ], [ %tmp.i2486.i, %imp_for.exit47.i ]
  %.02210.lcssa.i = phi i64 [ 3, %imp_for.exit40.i ], [ %tmp.i2485.i, %imp_for.exit47.i ]
  %.02209.lcssa.i = phi i64 [ %tmp.i2396.pre-phi.i, %imp_for.exit40.i ], [ %.2.i, %imp_for.exit47.i ]
  %tmp.i2487.not2749.i = icmp sgt i64 %tmp.i2265.i48, %.02210.lcssa.i
  br i1 %tmp.i2487.not2749.i, label %while.body49.lr.ph.i, label %while.exit50.i

while.body49.lr.ph.i:                             ; preds = %while.cond48.preheader.i
  %tmp.i.i2494.i = mul i64 %539, %tmp.i2266.i49
  %tmp.i.i2516.i = mul i64 %.022082754.i, %tmp.i2266.i49
  br i1 %.not22502740.i, label %while.body49.us.i, label %while.exit50.i

while.body49.us.i:                                ; preds = %imp_for.cond54.imp_for.exit57_crit_edge.us.i, %while.body49.lr.ph.i
  %.32752.us.i = phi i64 [ %spec.select2708.us.i, %imp_for.cond54.imp_for.exit57_crit_edge.us.i ], [ %.02209.lcssa.i, %while.body49.lr.ph.i ]
  %.122112751.us.i = phi i64 [ %tmp.i2538.us.i, %imp_for.cond54.imp_for.exit57_crit_edge.us.i ], [ %.02210.lcssa.i, %while.body49.lr.ph.i ]
  %.122132750.us.i = phi i64 [ %tmp.i2539.us.i, %imp_for.cond54.imp_for.exit57_crit_edge.us.i ], [ %.02212.lcssa.i, %while.body49.lr.ph.i ]
  %tmp.i2489.us.i = add i64 %.32752.us.i, %539
  %tmp.i2490.not.us.i = icmp sgt i64 %tmp.i2489.us.i, %.unpack.i.i.i
  %tmp.i2493.us.i = select i1 %tmp.i2490.not.us.i, i64 %.unpack.i.i.i, i64 0
  %spec.select2708.us.i = sub i64 %tmp.i2489.us.i, %tmp.i2493.us.i
  %584 = getelementptr { double, double }, ptr %476, i64 %spec.select2708.us.i
  %.unpack.i.i2668.us.i = load double, ptr %584, align 8
  %.elt1.i.i2669.us.i = getelementptr { double, double }, ptr %476, i64 %spec.select2708.us.i, i32 1
  %.unpack2.i.i2670.us.i = load double, ptr %.elt1.i.i2669.us.i, align 8
  %tmp.i.i2501.us.i = mul i64 %.122112751.us.i, %tmp.i2266.i49
  %tmp.i.i2523.us.i = mul i64 %.122132750.us.i, %tmp.i2266.i49
  br label %imp_for.body55.us.i

imp_for.body55.us.i:                              ; preds = %imp_for.body55.us.i, %while.body49.us.i
  %585 = phi i64 [ 0, %while.body49.us.i ], [ %591, %imp_for.body55.us.i ]
  %tmp.i8.i2495.us.i = add i64 %585, %tmp.i.i2494.i
  %586 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2495.us.i
  %.unpack.i2498.us.i = load double, ptr %586, align 8
  %.elt1.i2499.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2495.us.i, i32 1
  %.unpack2.i2500.us.i = load double, ptr %.elt1.i2499.us.i, align 8
  %tmp.i8.i2502.us.i = add i64 %585, %tmp.i.i2501.us.i
  %587 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2502.us.i
  %.unpack.i.i2503.us.i = load double, ptr %587, align 8
  %.elt1.i.i2504.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2502.us.i, i32 1
  %.unpack2.i.i2505.us.i = load double, ptr %.elt1.i.i2504.us.i, align 8
  %tmp.i2506.us.i = fmul double %.unpack.i.i2668.us.i, %.unpack.i.i2503.us.i
  %tmp.i2512.us.i = fmul double %.unpack.i.i2668.us.i, %.unpack2.i.i2505.us.i
  %tmp.i.i2671.us.i = fadd double %.unpack.i2498.us.i, %tmp.i2506.us.i
  %tmp.i23.i2672.us.i = fadd double %.unpack2.i2500.us.i, %tmp.i2512.us.i
  store double %tmp.i.i2671.us.i, ptr %586, align 8
  store double %tmp.i23.i2672.us.i, ptr %.elt1.i2499.us.i, align 8
  %tmp.i8.i2517.us.i = add i64 %585, %tmp.i.i2516.i
  %588 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2517.us.i
  %.unpack.i2520.us.i = load double, ptr %588, align 8
  %.elt1.i2521.us.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2517.us.i, i32 1
  %.unpack2.i2522.us.i = load double, ptr %.elt1.i2521.us.i, align 8
  %tmp.i8.i2524.us.i = add i64 %585, %tmp.i.i2523.us.i
  %589 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2524.us.i
  %.unpack.i.i2525.us.i = load double, ptr %589, align 8
  %.elt1.i.i2526.us.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2524.us.i, i32 1
  %.unpack2.i.i2527.us.i = load double, ptr %.elt1.i.i2526.us.i, align 8
  %tmp.i2534.us.i = fmul double %.unpack2.i.i2670.us.i, %.unpack.i.i2525.us.i
  %590 = fmul double %.unpack2.i.i2670.us.i, %.unpack2.i.i2527.us.i
  %tmp.i.i2673.us.i = fsub double %.unpack.i2520.us.i, %590
  %tmp.i23.i2674.us.i = fadd double %.unpack2.i2522.us.i, %tmp.i2534.us.i
  store double %tmp.i.i2673.us.i, ptr %588, align 8
  store double %tmp.i23.i2674.us.i, ptr %.elt1.i2521.us.i, align 8
  %591 = add nuw nsw i64 %585, 1
  %exitcond2853.not.i = icmp eq i64 %591, %tmp.i2266.i49
  br i1 %exitcond2853.not.i, label %imp_for.cond54.imp_for.exit57_crit_edge.us.i, label %imp_for.body55.us.i

imp_for.cond54.imp_for.exit57_crit_edge.us.i:     ; preds = %imp_for.body55.us.i
  %tmp.i2538.us.i = add nuw nsw i64 %.122112751.us.i, 1
  %tmp.i2539.us.i = add i64 %.122132750.us.i, -1
  %exitcond2854.not.i = icmp eq i64 %tmp.i2538.us.i, %tmp.i2265.i48
  br i1 %exitcond2854.not.i, label %while.exit50.i, label %while.body49.us.i

while.body.i:                                     ; preds = %imp_for.exit47.i, %while.body.lr.ph.i
  %.022092745.i = phi i64 [ %tmp.i2396.pre-phi.i, %while.body.lr.ph.i ], [ %.2.i, %imp_for.exit47.i ]
  %.022102744.i = phi i64 [ 3, %while.body.lr.ph.i ], [ %tmp.i2485.i, %imp_for.exit47.i ]
  %.022122743.i = phi i64 [ %tmp.i2397.i, %while.body.lr.ph.i ], [ %tmp.i2486.i, %imp_for.exit47.i ]
  %tmp.i2401.i = add i64 %.022092745.i, %539
  %tmp.i2402.not.i = icmp sgt i64 %tmp.i2401.i, %.unpack.i.i.i
  %tmp.i2404.i = select i1 %tmp.i2402.not.i, i64 %.unpack.i.i.i, i64 0
  %spec.select2707.i = sub i64 %tmp.i2401.i, %tmp.i2404.i
  %592 = getelementptr { double, double }, ptr %476, i64 %spec.select2707.i
  %.unpack.i.i2658.i = load double, ptr %592, align 8
  %.elt1.i.i2659.i = getelementptr { double, double }, ptr %476, i64 %spec.select2707.i, i32 1
  %.unpack2.i.i2660.i = load double, ptr %.elt1.i.i2659.i, align 8
  %tmp.i2405.i = add i64 %spec.select2707.i, %539
  %tmp.i2406.not.i = icmp sgt i64 %tmp.i2405.i, %.unpack.i.i.i
  %tmp.i2408.i = select i1 %tmp.i2406.not.i, i64 %.unpack.i.i.i, i64 0
  %.2.i = sub i64 %tmp.i2405.i, %tmp.i2408.i
  %593 = getelementptr { double, double }, ptr %476, i64 %.2.i
  %.unpack.i.i2661.i = load double, ptr %593, align 8
  %.elt1.i.i2662.i = getelementptr { double, double }, ptr %476, i64 %.2.i, i32 1
  %.unpack2.i.i2663.i = load double, ptr %.elt1.i.i2662.i, align 8
  br i1 %.not22502740.i, label %imp_for.body45.lr.ph.i, label %imp_for.exit47.i

imp_for.body45.lr.ph.i:                           ; preds = %while.body.i
  %tmp.i.i2416.i = mul i64 %.022102744.i, %tmp.i2266.i49
  %tmp.i2422.i = add nuw nsw i64 %.022102744.i, 1
  %tmp.i.i2423.i = mul i64 %tmp.i2422.i, %tmp.i2266.i49
  %tmp.i.i2454.i = mul i64 %.022122743.i, %tmp.i2266.i49
  %tmp.i2460.i = add i64 %.022122743.i, -1
  %tmp.i.i2461.i = mul i64 %tmp.i2460.i, %tmp.i2266.i49
  br label %imp_for.body45.i

imp_for.body45.i:                                 ; preds = %imp_for.body45.i, %imp_for.body45.lr.ph.i
  %594 = phi i64 [ 0, %imp_for.body45.lr.ph.i ], [ %601, %imp_for.body45.i ]
  %tmp.i8.i2410.i = add i64 %594, %tmp.i.i2409.i
  %595 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2410.i
  %.unpack.i2413.i = load double, ptr %595, align 8
  %.elt1.i2414.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2410.i, i32 1
  %.unpack2.i2415.i = load double, ptr %.elt1.i2414.i, align 8
  %tmp.i8.i2417.i = add i64 %594, %tmp.i.i2416.i
  %596 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2417.i
  %.unpack.i.i2418.i = load double, ptr %596, align 8
  %.elt1.i.i2419.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2417.i, i32 1
  %.unpack2.i.i2420.i = load double, ptr %.elt1.i.i2419.i, align 8
  %tmp.i2421.i = fmul double %.unpack.i.i2658.i, %.unpack.i.i2418.i
  %tmp.i8.i2424.i = add i64 %594, %tmp.i.i2423.i
  %597 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2424.i
  %.unpack.i.i2425.i = load double, ptr %597, align 8
  %.elt1.i.i2426.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2424.i, i32 1
  %.unpack2.i.i2427.i = load double, ptr %.elt1.i.i2426.i, align 8
  %tmp.i2428.i = fmul double %.unpack.i.i2661.i, %.unpack.i.i2425.i
  %tmp.i2429.i = fadd double %tmp.i2421.i, %tmp.i2428.i
  %tmp.i2435.i = fmul double %.unpack.i.i2658.i, %.unpack2.i.i2420.i
  %tmp.i2442.i = fmul double %.unpack.i.i2661.i, %.unpack2.i.i2427.i
  %tmp.i2443.i = fadd double %tmp.i2435.i, %tmp.i2442.i
  %tmp.i.i2664.i = fadd double %.unpack.i2413.i, %tmp.i2429.i
  %tmp.i23.i2665.i = fadd double %.unpack2.i2415.i, %tmp.i2443.i
  store double %tmp.i.i2664.i, ptr %595, align 8
  store double %tmp.i23.i2665.i, ptr %.elt1.i2414.i, align 8
  %tmp.i8.i2448.i = add i64 %594, %tmp.i.i2447.i
  %598 = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2448.i
  %.unpack.i2451.i = load double, ptr %598, align 8
  %.elt1.i2452.i = getelementptr { double, double }, ptr %.018435, i64 %tmp.i8.i2448.i, i32 1
  %.unpack2.i2453.i = load double, ptr %.elt1.i2452.i, align 8
  %tmp.i8.i2455.i = add i64 %594, %tmp.i.i2454.i
  %599 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2455.i
  %.unpack.i.i2456.i = load double, ptr %599, align 8
  %.elt1.i.i2457.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2455.i, i32 1
  %.unpack2.i.i2458.i = load double, ptr %.elt1.i.i2457.i, align 8
  %tmp.i2459.i = fmul double %.unpack2.i.i2660.i, %.unpack2.i.i2458.i
  %tmp.i8.i2462.i = add i64 %594, %tmp.i.i2461.i
  %600 = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2462.i
  %.unpack.i.i2463.i = load double, ptr %600, align 8
  %.elt1.i.i2464.i = getelementptr { double, double }, ptr %.018534, i64 %tmp.i8.i2462.i, i32 1
  %.unpack2.i.i2465.i = load double, ptr %.elt1.i.i2464.i, align 8
  %tmp.i2466.i = fmul double %.unpack2.i.i2663.i, %.unpack2.i.i2465.i
  %tmp.i2467.i = fadd double %tmp.i2459.i, %tmp.i2466.i
  %tmp.i2473.i = fmul double %.unpack2.i.i2660.i, %.unpack.i.i2456.i
  %tmp.i2480.i = fmul double %.unpack2.i.i2663.i, %.unpack.i.i2463.i
  %tmp.i2481.i = fadd double %tmp.i2473.i, %tmp.i2480.i
  %tmp.i.i2666.i = fsub double %.unpack.i2451.i, %tmp.i2467.i
  %tmp.i23.i2667.i = fadd double %.unpack2.i2453.i, %tmp.i2481.i
  store double %tmp.i.i2666.i, ptr %598, align 8
  store double %tmp.i23.i2667.i, ptr %.elt1.i2452.i, align 8
  %601 = add nuw nsw i64 %594, 1
  %exitcond2852.not.i = icmp eq i64 %601, %tmp.i2266.i49
  br i1 %exitcond2852.not.i, label %imp_for.exit47.i, label %imp_for.body45.i

imp_for.exit47.i:                                 ; preds = %imp_for.body45.i, %while.body.i
  %tmp.i2485.i = add nuw nsw i64 %.022102744.i, 2
  %tmp.i2486.i = add i64 %.022122743.i, -2
  %tmp.i2399.not.i = icmp sgt i64 %tmp.i2398.i, %tmp.i2485.i
  br i1 %tmp.i2399.not.i, label %while.body.i, label %while.cond48.preheader.i

while.exit50.i:                                   ; preds = %imp_for.cond54.imp_for.exit57_crit_edge.us.i, %while.body49.lr.ph.i, %while.cond48.preheader.i
  %tmp.i2492.i = add i64 %.022082754.i, -1
  %602 = add nuw nsw i64 %539, 1
  %exitcond2856.not.i = icmp eq i64 %602, %smax2855.i
  br i1 %exitcond2856.not.i, label %imp_for.exit36.thread.i, label %imp_for.cond37.preheader.i

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.passg:0[int,int,int,Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],Ptr[std.internal.types.complex.complex],bool].2354.exit": ; preds = %imp_for.cond65.imp_for.exit68_crit_edge.us.i, %imp_for.cond61.preheader.i, %imp_for.cond73.imp_for.exit76_crit_edge.us.i, %imp_for.cond73.preheader.lr.ph.i, %imp_for.cond33.preheader.i, %imp_for.exit4.thread.i, %imp_for.exit4.thread2877.i
  %603 = tail call {} @seq_free(ptr nonnull %476)
  br label %if.exit3

if.exit24:                                        ; preds = %if.false26, %imp_for.exit, %if.exit
  %604 = tail call {} @seq_free(ptr nonnull %3)
  br label %common.ret

if.false26:                                       ; preds = %imp_for.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %.1186, i64 %2, i1 false)
  br label %if.exit24
}

; Function Attrs: mustprogress nounwind willreturn
declare double @hypot(double, double) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nounwind
define hidden fastcc { { i64, i64 }, { i64, i64 }, ptr } @"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3168"({ { i64, i64 }, { i64, i64 }, ptr } %0, i64 %1) unnamed_addr #7 {
entry:
  %x.i.i.i.i304.i.i.i.i = alloca { i64, i64 }, align 8
  %2 = alloca { i64, i64 }, align 8
  %x.i.i.i.i304.i.i.i.i.i = alloca { i64, i64 }, align 8
  %3 = alloca { i64, i64 }, align 8
  %.sroa.18.i.i = alloca i8, align 8
  %tmp.i.i = sitofp i64 %1 to double
  %tmp.i = fdiv double 1.000000e+00, %tmp.i.i
  %.b.i = load i1, ptr @.._import_numpy.fft.__init___1130_done, align 1
  br i1 %.b.i, label %if.exit.i, label %if.true.i

if.true.i:                                        ; preds = %entry
  %.b64.i.i = load i1, ptr @.._import_numpy.fft.pocketfft_1125_done, align 1
  %.b80.pre.pre.i.pre79.pre.i = load i1, ptr @.._import_numpy.util_332_done, align 1
  br i1 %.b64.i.i, label %if.exit12.i.i, label %if.true.i.i

if.true.i.i:                                      ; preds = %if.true.i
  br i1 %.b80.pre.pre.i.pre79.pre.i, label %if.exit12.i.thread.i, label %if.true.i.i.i

if.true.i.i.i:                                    ; preds = %if.true.i.i
  %.b12.i.i.i.i = load i1, ptr @.._import_numpy.npdatetime_314_done, align 1
  br i1 %.b12.i.i.i.i, label %"._import_numpy.util_332:0.542.exit.i.i.i", label %if.true.i.i.i.i

if.true.i.i.i.i:                                  ; preds = %if.true.i.i.i
  %.b.i365 = load i1, ptr @.._import_datetime_246_done, align 1
  br i1 %.b.i365, label %if.exit.i369, label %if.true.i366

if.true.i366:                                     ; preds = %if.true.i.i.i.i
  %.b23.i.i = load i1, ptr @.._import_time_197_done, align 1
  br i1 %.b23.i.i, label %"._import_datetime_246:0.470.exit.i", label %if.true.i.i367

if.true.i.i367:                                   ; preds = %if.true.i366
  store i1 true, ptr @.._import_time_197_done, align 1
  br label %"._import_datetime_246:0.470.exit.i"

"._import_datetime_246:0.470.exit.i":             ; preds = %if.true.i.i367, %if.true.i366
  %.b.i.i.i = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b.i.i.i, label %if.exit3.sink.split.i, label %if.true.i.i.i368

if.true.i.i.i368:                                 ; preds = %"._import_datetime_246:0.470.exit.i"
  store i1 true, ptr @.._import_math_195_done, align 1
  br label %if.exit3.sink.split.i

if.exit.i369:                                     ; preds = %if.true.i.i.i.i
  %.b4.pre.i = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b4.pre.i, label %"._import_numpy.npdatetime_314:0.541.exit", label %if.exit3.sink.split.i

if.exit3.sink.split.i:                            ; preds = %if.exit.i369, %if.true.i.i.i368, %"._import_datetime_246:0.470.exit.i"
  %.._import_datetime_246_done.sink.i = phi ptr [ @.._import_datetime_246_done, %"._import_datetime_246:0.470.exit.i" ], [ @.._import_datetime_246_done, %if.true.i.i.i368 ], [ @.._import_math_195_done, %if.exit.i369 ]
  store i1 true, ptr %.._import_datetime_246_done.sink.i, align 1
  br label %"._import_numpy.npdatetime_314:0.541.exit"

"._import_numpy.npdatetime_314:0.541.exit":       ; preds = %if.exit3.sink.split.i, %if.exit.i369
  store i1 true, ptr @.._import_numpy.npdatetime_314_done, align 1
  br label %"._import_numpy.util_332:0.542.exit.i.i.i"

"._import_numpy.util_332:0.542.exit.i.i.i":       ; preds = %"._import_numpy.npdatetime_314:0.541.exit", %if.true.i.i.i
  store i1 true, ptr @.._import_numpy.util_332_done, align 1
  br label %if.exit12.i.thread.i

if.exit12.i.i:                                    ; preds = %if.true.i
  %.b70.i.i = load i1, ptr @.._import_numpy.routines_599_done, align 1
  br i1 %.b70.i.i, label %if.exit27.i.i, label %if.true13.i.i

if.exit12.i.thread.i:                             ; preds = %"._import_numpy.util_332:0.542.exit.i.i.i", %if.true.i.i
  store i1 true, ptr @.._import_numpy.fft.pocketfft_1125_done, align 1
  %.b70.i95.i = load i1, ptr @.._import_numpy.routines_599_done, align 1
  br i1 %.b70.i95.i, label %if.exit27.i.thread104.i, label %if.true13.i.thread.i

if.true13.i.thread.i:                             ; preds = %if.exit12.i.thread.i
  %.b63.pre.i.i99.i = load i1, ptr @.._import_numpy.npdatetime_314_done, align 1
  br i1 %.b63.pre.i.i99.i, label %if.exit42.i.i.i, label %if.true1.i.i.i

if.true13.i.i:                                    ; preds = %if.exit12.i.i
  %.b63.pre.i.i.i = load i1, ptr @.._import_numpy.npdatetime_314_done, align 1
  br i1 %.b80.pre.pre.i.pre79.pre.i, label %if.exit.i.i.i, label %if.true.i125.i.i

if.true.i125.i.i:                                 ; preds = %if.true13.i.i
  br i1 %.b63.pre.i.i.i, label %if.exit42.sink.split.i.i.i, label %if.true.i.i126.i.i

if.true.i.i126.i.i:                               ; preds = %if.true.i125.i.i
  %.b.i370 = load i1, ptr @.._import_datetime_246_done, align 1
  br i1 %.b.i370, label %if.exit.i379, label %if.true.i371

if.true.i371:                                     ; preds = %if.true.i.i126.i.i
  %.b23.i.i372 = load i1, ptr @.._import_time_197_done, align 1
  br i1 %.b23.i.i372, label %"._import_datetime_246:0.470.exit.i374", label %if.true.i.i373

if.true.i.i373:                                   ; preds = %if.true.i371
  store i1 true, ptr @.._import_time_197_done, align 1
  br label %"._import_datetime_246:0.470.exit.i374"

"._import_datetime_246:0.470.exit.i374":          ; preds = %if.true.i.i373, %if.true.i371
  %.b.i.i.i375 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b.i.i.i375, label %if.exit42.sink.split.i.i.i.sink.split.sink.split, label %if.true.i.i.i376

if.true.i.i.i376:                                 ; preds = %"._import_datetime_246:0.470.exit.i374"
  store i1 true, ptr @.._import_math_195_done, align 1
  br label %if.exit42.sink.split.i.i.i.sink.split.sink.split

if.exit.i379:                                     ; preds = %if.true.i.i126.i.i
  %.b4.pre.i380 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b4.pre.i380, label %if.exit42.sink.split.i.i.i.sink.split, label %if.exit42.sink.split.i.i.i.sink.split.sink.split

if.exit.i.i.i:                                    ; preds = %if.true13.i.i
  br i1 %.b63.pre.i.i.i, label %if.exit42.i.i.i, label %if.true1.i.i.i

if.true1.i.i.i:                                   ; preds = %if.exit.i.i.i, %if.true13.i.thread.i
  %.b.i382 = load i1, ptr @.._import_datetime_246_done, align 1
  br i1 %.b.i382, label %if.exit.i391, label %if.true.i383

if.true.i383:                                     ; preds = %if.true1.i.i.i
  %.b23.i.i384 = load i1, ptr @.._import_time_197_done, align 1
  br i1 %.b23.i.i384, label %"._import_datetime_246:0.470.exit.i386", label %if.true.i.i385

if.true.i.i385:                                   ; preds = %if.true.i383
  store i1 true, ptr @.._import_time_197_done, align 1
  br label %"._import_datetime_246:0.470.exit.i386"

"._import_datetime_246:0.470.exit.i386":          ; preds = %if.true.i.i385, %if.true.i383
  %.b.i.i.i387 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b.i.i.i387, label %if.exit42.sink.split.i.i.i.sink.split, label %if.exit42.sink.split.i.i.i.sink.split.sink.split

if.exit.i391:                                     ; preds = %if.true1.i.i.i
  %.b4.pre.i392 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b4.pre.i392, label %if.exit42.sink.split.i.i.i, label %if.exit42.sink.split.i.i.i.sink.split

if.exit42.sink.split.i.i.i.sink.split.sink.split: ; preds = %"._import_datetime_246:0.470.exit.i386", %if.exit.i379, %if.true.i.i.i376, %"._import_datetime_246:0.470.exit.i374"
  %.._import_math_195_done.sink = phi ptr [ @.._import_datetime_246_done, %"._import_datetime_246:0.470.exit.i374" ], [ @.._import_datetime_246_done, %if.true.i.i.i376 ], [ @.._import_math_195_done, %if.exit.i379 ], [ @.._import_math_195_done, %"._import_datetime_246:0.470.exit.i386" ]
  %.._import_datetime_246_done.sink.i390.sink.ph = phi ptr [ @.._import_numpy.npdatetime_314_done, %"._import_datetime_246:0.470.exit.i374" ], [ @.._import_numpy.npdatetime_314_done, %if.true.i.i.i376 ], [ @.._import_numpy.npdatetime_314_done, %if.exit.i379 ], [ @.._import_datetime_246_done, %"._import_datetime_246:0.470.exit.i386" ]
  %.._import_numpy.util_332_done.sink.i.i.i.ph.ph = phi ptr [ @.._import_numpy.util_332_done, %"._import_datetime_246:0.470.exit.i374" ], [ @.._import_numpy.util_332_done, %if.true.i.i.i376 ], [ @.._import_numpy.util_332_done, %if.exit.i379 ], [ @.._import_numpy.npdatetime_314_done, %"._import_datetime_246:0.470.exit.i386" ]
  store i1 true, ptr %.._import_math_195_done.sink, align 1
  br label %if.exit42.sink.split.i.i.i.sink.split

if.exit42.sink.split.i.i.i.sink.split:            ; preds = %if.exit42.sink.split.i.i.i.sink.split.sink.split, %if.exit.i391, %"._import_datetime_246:0.470.exit.i386", %if.exit.i379
  %.._import_datetime_246_done.sink.i390.sink = phi ptr [ @.._import_numpy.npdatetime_314_done, %if.exit.i379 ], [ @.._import_datetime_246_done, %"._import_datetime_246:0.470.exit.i386" ], [ @.._import_math_195_done, %if.exit.i391 ], [ %.._import_datetime_246_done.sink.i390.sink.ph, %if.exit42.sink.split.i.i.i.sink.split.sink.split ]
  %.._import_numpy.util_332_done.sink.i.i.i.ph = phi ptr [ @.._import_numpy.util_332_done, %if.exit.i379 ], [ @.._import_numpy.npdatetime_314_done, %"._import_datetime_246:0.470.exit.i386" ], [ @.._import_numpy.npdatetime_314_done, %if.exit.i391 ], [ %.._import_numpy.util_332_done.sink.i.i.i.ph.ph, %if.exit42.sink.split.i.i.i.sink.split.sink.split ]
  store i1 true, ptr %.._import_datetime_246_done.sink.i390.sink, align 1
  br label %if.exit42.sink.split.i.i.i

if.exit42.sink.split.i.i.i:                       ; preds = %if.exit42.sink.split.i.i.i.sink.split, %if.exit.i391, %if.true.i125.i.i
  %.._import_numpy.util_332_done.sink.i.i.i = phi ptr [ @.._import_numpy.util_332_done, %if.true.i125.i.i ], [ @.._import_numpy.npdatetime_314_done, %if.exit.i391 ], [ %.._import_numpy.util_332_done.sink.i.i.i.ph, %if.exit42.sink.split.i.i.i.sink.split ]
  store i1 true, ptr %.._import_numpy.util_332_done.sink.i.i.i, align 1
  %.b80.pre.pre.i.pre.pre.pre.i = load i1, ptr @.._import_numpy.util_332_done, align 1
  br label %if.exit42.i.i.i

if.exit42.i.i.i:                                  ; preds = %if.exit42.sink.split.i.i.i, %if.exit.i.i.i, %if.true13.i.thread.i
  %.b80.pre.pre.i.pre.pre.i = phi i1 [ %.b80.pre.pre.i.pre.pre.pre.i, %if.exit42.sink.split.i.i.i ], [ true, %if.exit.i.i.i ], [ true, %if.true13.i.thread.i ]
  %.b49.pre.i.i.i = load i1, ptr @.._import_numpy.ndarray_373_done, align 1
  br i1 %.b49.pre.i.i.i, label %if.exit27.i.thread.i, label %if.true43.i.i.i

if.true43.i.i.i:                                  ; preds = %if.exit42.i.i.i
  br i1 %.b80.pre.pre.i.pre.pre.i, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i", label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split"

if.exit27.i.thread.i:                             ; preds = %if.exit42.i.i.i
  store i1 true, ptr @.._import_numpy.routines_599_done, align 1
  br i1 %.b80.pre.pre.i.pre.pre.i, label %"._import_numpy.fft.__init___1130:0.1446.exit.i", label %if.true31.i.i

if.exit27.i.i:                                    ; preds = %if.exit12.i.i
  %.b65.pre.i.pre.i = load i1, ptr @.._import_numpy.ndarray_373_done, align 1
  br i1 %.b65.pre.i.pre.i, label %if.exit30.i.i, label %if.true28.i.i

if.exit27.i.thread104.i:                          ; preds = %if.exit12.i.thread.i
  %.b65.pre.i.pre106.i = load i1, ptr @.._import_numpy.ndarray_373_done, align 1
  br i1 %.b65.pre.i.pre106.i, label %"._import_numpy.fft.__init___1130:0.1446.exit.i", label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.i"

if.true28.i.i:                                    ; preds = %if.exit27.i.i
  br i1 %.b80.pre.pre.i.pre79.pre.i, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.i", label %if.true.i187.i.i

if.true.i187.i.i:                                 ; preds = %if.true28.i.i
  %.b12.i.i188.i.i = load i1, ptr @.._import_numpy.npdatetime_314_done, align 1
  br i1 %.b12.i.i188.i.i, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i", label %if.true.i.i189.i.i

if.true.i.i189.i.i:                               ; preds = %if.true.i187.i.i
  %.b.i394 = load i1, ptr @.._import_datetime_246_done, align 1
  br i1 %.b.i394, label %if.exit.i403, label %if.true.i395

if.true.i395:                                     ; preds = %if.true.i.i189.i.i
  %.b23.i.i396 = load i1, ptr @.._import_time_197_done, align 1
  br i1 %.b23.i.i396, label %"._import_datetime_246:0.470.exit.i398", label %if.true.i.i397

if.true.i.i397:                                   ; preds = %if.true.i395
  store i1 true, ptr @.._import_time_197_done, align 1
  br label %"._import_datetime_246:0.470.exit.i398"

"._import_datetime_246:0.470.exit.i398":          ; preds = %if.true.i.i397, %if.true.i395
  %.b.i.i.i399 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b.i.i.i399, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split", label %if.true.i.i.i400

if.true.i.i.i400:                                 ; preds = %"._import_datetime_246:0.470.exit.i398"
  store i1 true, ptr @.._import_math_195_done, align 1
  br label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split"

if.exit.i403:                                     ; preds = %if.true.i.i189.i.i
  %.b4.pre.i404 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b4.pre.i404, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split", label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split"

if.exit30.i.i:                                    ; preds = %if.exit27.i.i
  br i1 %.b80.pre.pre.i.pre79.pre.i, label %"._import_numpy.fft.__init___1130:0.1446.exit.i", label %if.true31.i.i

if.true31.i.i:                                    ; preds = %if.exit30.i.i, %if.exit27.i.thread.i
  %.b12.i.i.i = load i1, ptr @.._import_numpy.npdatetime_314_done, align 1
  br i1 %.b12.i.i.i, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.i", label %if.true.i192.i.i

if.true.i192.i.i:                                 ; preds = %if.true31.i.i
  %.b.i406 = load i1, ptr @.._import_datetime_246_done, align 1
  br i1 %.b.i406, label %if.exit.i415, label %if.true.i407

if.true.i407:                                     ; preds = %if.true.i192.i.i
  %.b23.i.i408 = load i1, ptr @.._import_time_197_done, align 1
  br i1 %.b23.i.i408, label %"._import_datetime_246:0.470.exit.i410", label %if.true.i.i409

if.true.i.i409:                                   ; preds = %if.true.i407
  store i1 true, ptr @.._import_time_197_done, align 1
  br label %"._import_datetime_246:0.470.exit.i410"

"._import_datetime_246:0.470.exit.i410":          ; preds = %if.true.i.i409, %if.true.i407
  %.b.i.i.i411 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b.i.i.i411, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split", label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split"

if.exit.i415:                                     ; preds = %if.true.i192.i.i
  %.b4.pre.i416 = load i1, ptr @.._import_math_195_done, align 1
  br i1 %.b4.pre.i416, label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i", label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split"

"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split": ; preds = %"._import_datetime_246:0.470.exit.i410", %if.exit.i403, %if.true.i.i.i400, %"._import_datetime_246:0.470.exit.i398"
  %.._import_math_195_done.sink534 = phi ptr [ @.._import_datetime_246_done, %"._import_datetime_246:0.470.exit.i398" ], [ @.._import_datetime_246_done, %if.true.i.i.i400 ], [ @.._import_math_195_done, %if.exit.i403 ], [ @.._import_math_195_done, %"._import_datetime_246:0.470.exit.i410" ]
  %.._import_datetime_246_done.sink.i414.sink.ph = phi ptr [ @.._import_numpy.npdatetime_314_done, %"._import_datetime_246:0.470.exit.i398" ], [ @.._import_numpy.npdatetime_314_done, %if.true.i.i.i400 ], [ @.._import_numpy.npdatetime_314_done, %if.exit.i403 ], [ @.._import_datetime_246_done, %"._import_datetime_246:0.470.exit.i410" ]
  %.._import_numpy.npdatetime_314_done.sink.i.sink.i.ph.ph = phi ptr [ @.._import_numpy.util_332_done, %"._import_datetime_246:0.470.exit.i398" ], [ @.._import_numpy.util_332_done, %if.true.i.i.i400 ], [ @.._import_numpy.util_332_done, %if.exit.i403 ], [ @.._import_numpy.npdatetime_314_done, %"._import_datetime_246:0.470.exit.i410" ]
  %.._import_numpy.routines_599_done.sink.ph.i.ph.ph = phi ptr [ @.._import_numpy.ndarray_373_done, %"._import_datetime_246:0.470.exit.i398" ], [ @.._import_numpy.ndarray_373_done, %if.true.i.i.i400 ], [ @.._import_numpy.ndarray_373_done, %if.exit.i403 ], [ @.._import_numpy.util_332_done, %"._import_datetime_246:0.470.exit.i410" ]
  store i1 true, ptr %.._import_math_195_done.sink534, align 1
  br label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split"

"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split": ; preds = %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split", %if.exit.i415, %"._import_datetime_246:0.470.exit.i410", %if.exit.i403, %if.true43.i.i.i
  %.._import_datetime_246_done.sink.i414.sink = phi ptr [ @.._import_numpy.util_332_done, %if.true43.i.i.i ], [ @.._import_numpy.npdatetime_314_done, %if.exit.i403 ], [ @.._import_datetime_246_done, %"._import_datetime_246:0.470.exit.i410" ], [ @.._import_math_195_done, %if.exit.i415 ], [ %.._import_datetime_246_done.sink.i414.sink.ph, %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split" ]
  %.._import_numpy.npdatetime_314_done.sink.i.sink.i.ph = phi ptr [ @.._import_numpy.ndarray_373_done, %if.true43.i.i.i ], [ @.._import_numpy.util_332_done, %if.exit.i403 ], [ @.._import_numpy.npdatetime_314_done, %"._import_datetime_246:0.470.exit.i410" ], [ @.._import_numpy.npdatetime_314_done, %if.exit.i415 ], [ %.._import_numpy.npdatetime_314_done.sink.i.sink.i.ph.ph, %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split" ]
  %.._import_numpy.routines_599_done.sink.ph.i.ph = phi ptr [ @.._import_numpy.routines_599_done, %if.true43.i.i.i ], [ @.._import_numpy.ndarray_373_done, %if.exit.i403 ], [ @.._import_numpy.util_332_done, %"._import_datetime_246:0.470.exit.i410" ], [ @.._import_numpy.util_332_done, %if.exit.i415 ], [ %.._import_numpy.routines_599_done.sink.ph.i.ph.ph, %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split.sink.split" ]
  store i1 true, ptr %.._import_datetime_246_done.sink.i414.sink, align 1
  br label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i"

"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i": ; preds = %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split", %if.exit.i415, %if.true.i187.i.i, %if.true43.i.i.i
  %.._import_numpy.npdatetime_314_done.sink.i.sink.i = phi ptr [ @.._import_numpy.ndarray_373_done, %if.true43.i.i.i ], [ @.._import_numpy.util_332_done, %if.true.i187.i.i ], [ @.._import_numpy.npdatetime_314_done, %if.exit.i415 ], [ %.._import_numpy.npdatetime_314_done.sink.i.sink.i.ph, %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split" ]
  %.._import_numpy.routines_599_done.sink.ph.i = phi ptr [ @.._import_numpy.routines_599_done, %if.true43.i.i.i ], [ @.._import_numpy.ndarray_373_done, %if.true.i187.i.i ], [ @.._import_numpy.util_332_done, %if.exit.i415 ], [ %.._import_numpy.routines_599_done.sink.ph.i.ph, %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i.sink.split" ]
  store i1 true, ptr %.._import_numpy.npdatetime_314_done.sink.i.sink.i, align 1
  br label %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.i"

"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.i": ; preds = %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i", %if.true31.i.i, %if.true28.i.i, %if.exit27.i.thread104.i
  %.._import_numpy.routines_599_done.sink.i = phi ptr [ @.._import_numpy.ndarray_373_done, %if.true28.i.i ], [ @.._import_numpy.util_332_done, %if.true31.i.i ], [ @.._import_numpy.ndarray_373_done, %if.exit27.i.thread104.i ], [ %.._import_numpy.routines_599_done.sink.ph.i, %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.sink.split.i" ]
  store i1 true, ptr %.._import_numpy.routines_599_done.sink.i, align 1
  br label %"._import_numpy.fft.__init___1130:0.1446.exit.i"

"._import_numpy.fft.__init___1130:0.1446.exit.i": ; preds = %"._import_numpy.fft.__init___1130:0.1446.exit.sink.split.i", %if.exit30.i.i, %if.exit27.i.thread104.i, %if.exit27.i.thread.i
  store i1 true, ptr @.._import_numpy.fft.__init___1130_done, align 1
  br label %if.exit.i

if.exit.i:                                        ; preds = %"._import_numpy.fft.__init___1130:0.1446.exit.i", %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %.sroa.18.i.i)
  %4 = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %0, 1
  %5 = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %0, 0
  %6 = ashr i64 %1, 1
  %tmp.i.i.i = add nsw i64 %6, 1
  %.elt.i.i.i.i = extractvalue { i64, i64 } %5, 0
  %.not.i.i.i29 = icmp sgt i64 %.elt.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i.i.i29)
  %.not.i.c.i.i = icmp sgt i64 %1, -3
  tail call void @llvm.assume(i1 %.not.i.c.i.i)
  %tmp.i.1.i.i.i.i = shl i64 %tmp.i.i.i, 4
  %7 = mul i64 %tmp.i.1.i.i.i.i, %.elt.i.i.i.i
  %8 = tail call ptr @seq_alloc_atomic(i64 %7)
  %9 = shl i64 %1, 3
  %10 = tail call ptr @seq_alloc_atomic(i64 %9)
  %t.fca.1.extract.i.i.i.i.i.i = extractvalue { i64, i64 } %4, 1
  %.not7.i.not.i.i = icmp eq i64 %.elt.i.i.i.i, 0
  br i1 %.not7.i.not.i.i, label %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i", label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.exit.i
  store i2 1, ptr %.sroa.18.i.i, align 8, !alias.scope !6
  %t.fca.1.extract.i.i.i.i297.i.i = extractvalue { i64, i64 } %5, 1
  %.fca.0.extract.i.i.i.i30 = extractvalue { i64, i64 } %4, 0
  %.fca.2.extract.i.i.i.i = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %0, 2
  %11 = tail call i64 @llvm.smin.i64(i64 %t.fca.1.extract.i.i.i.i297.i.i, i64 %1)
  %.not291351.i.i = icmp sgt i64 %t.fca.1.extract.i.i.i.i297.i.i, 0
  %.not292353.i.i = icmp slt i64 %t.fca.1.extract.i.i.i.i297.i.i, %1
  %tmp.i.i312.i.i = icmp sgt i64 %1, 0
  tail call void @llvm.assume(i1 %tmp.i.i312.i.i)
  %tmp.i76.i.i.i.i = icmp ugt i64 %1, 49
  %tmp.i.peel.i.i.i.i.i = and i64 %1, 1
  %tmp.i27.not.peel.i.i.i.i.i = icmp eq i64 %tmp.i.peel.i.i.i.i.i, 0
  %tmp.i82.i.i.i.i = shl nuw i64 %1, 1
  %tmp.i83.i.i.i.i = add i64 %tmp.i82.i.i.i.i, -1
  %tmp.i.i.i.i.i.i31 = icmp slt i64 %tmp.i83.i.i.i.i, 13
  %tmp.i73.i.i.i.i.i = shl nuw i64 %tmp.i83.i.i.i.i, 1
  %tmp.i74.not104.i.i.i.i.i = icmp slt i64 %tmp.i73.i.i.i.i.i, 2
  %tmp.i328.i.i.i.i.i = add nuw i64 %1, 1
  %.not373.i.i.i.i.i = icmp ugt i64 %1, 1
  %12 = shl i64 %1, 4
  %13 = getelementptr double, ptr %10, i64 1
  %tmp.i151.i.i.i.i.i = add i64 %9, -8
  %tmp.i56.not.i.i.i = icmp eq i64 %1, 1
  %14 = and i64 %1, 3
  %tmp.i52.not173.i.i.i.i = icmp eq i64 %14, 0
  %tmp.i112.i.i.i = add nsw i64 %1, -1
  %tmp.i113.not176.i.i.i = icmp ugt i64 %1, 2
  %smax.i.i = tail call i64 @llvm.smax.i64(i64 %11, i64 1)
  %15 = shl i64 %t.fca.1.extract.i.i.i.i297.i.i, 3
  %scevgep.i.i = getelementptr i8, ptr %10, i64 %15
  %16 = sub i64 %9, %15
  %brmerge.i.i = select i1 %tmp.i.i.i.i.i.i31, i1 true, i1 %tmp.i74.not104.i.i.i.i.i
  %tmp.i83.i.i.mux.i.i = select i1 %tmp.i.i.i.i.i.i31, i64 %tmp.i83.i.i.i.i, i64 %tmp.i73.i.i.i.i.i
  %17 = xor i64 %1, -1
  %18 = or i64 %12, 8
  %min.iters.check196 = icmp ult i64 %1, 2
  %mul.result188 = shl i64 %tmp.i112.i.i.i, 4
  %mul.overflow193 = icmp ugt i64 %tmp.i112.i.i.i, 1152921504606846975
  %n.vec199 = and i64 %1, 9223372036854775806
  %cmp.n201 = icmp eq i64 %n.vec199, %1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %"std.numpy.util.multirange:0[Tuple[int]].1292.resume.exit411.i.i", %for.body.lr.ph.i.i
  %.sroa.6.1.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %722, %"std.numpy.util.multirange:0[Tuple[int]].1292.resume.exit411.i.i" ]
  %alloc_hoist.cache.0.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %alloc_hoist.cache.2.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1292.resume.exit411.i.i" ]
  %alloc_hoist.cache340.0.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %alloc_hoist.cache340.2.i.i, %"std.numpy.util.multirange:0[Tuple[int]].1292.resume.exit411.i.i" ]
  br i1 %.not291351.i.i, label %imp_for.body.preheader.i.i, label %imp_for.cond1.preheader.i.i

imp_for.body.preheader.i.i:                       ; preds = %for.body.i.i
  %tmp.i.i.i.i.i = mul i64 %.sroa.6.1.i.i, %.fca.0.extract.i.i.i.i30
  %19 = getelementptr i8, ptr %.fca.2.extract.i.i.i.i, i64 %tmp.i.i.i.i.i
  br label %imp_for.body.i.i

imp_for.cond1.preheader.i.i:                      ; preds = %imp_for.body.i.i, %for.body.i.i
  br i1 %.not292353.i.i, label %imp_for.body2.preheader.i.i, label %imp_for.exit4.i.i

imp_for.body2.preheader.i.i:                      ; preds = %imp_for.cond1.preheader.i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %16, i1 false)
  br label %imp_for.exit4.i.i

imp_for.body.i.i:                                 ; preds = %imp_for.body.i.i, %imp_for.body.preheader.i.i
  %20 = phi i64 [ %24, %imp_for.body.i.i ], [ 0, %imp_for.body.preheader.i.i ]
  %.0286352.i.i = phi ptr [ %23, %imp_for.body.i.i ], [ %19, %imp_for.body.preheader.i.i ]
  %21 = load double, ptr %.0286352.i.i, align 8
  %22 = getelementptr double, ptr %10, i64 %20
  store double %21, ptr %22, align 8
  %23 = getelementptr i8, ptr %.0286352.i.i, i64 %t.fca.1.extract.i.i.i.i.i.i
  %24 = add nuw nsw i64 %20, 1
  %exitcond.not.i.i = icmp eq i64 %24, %smax.i.i
  br i1 %exitcond.not.i.i, label %imp_for.cond1.preheader.i.i, label %imp_for.body.i.i

imp_for.exit4.i.i:                                ; preds = %imp_for.body2.preheader.i.i, %imp_for.cond1.preheader.i.i
  %tmp.i.i.i311.i.i = mul i64 %.sroa.6.1.i.i, %tmp.i.1.i.i.i.i
  %25 = getelementptr i8, ptr %8, i64 %tmp.i.i.i311.i.i
  br i1 %tmp.i76.i.i.i.i, label %ternary.false.i.i.i.i, label %ternary.exit.i.i.i.i

ternary.false.i.i.i.i:                            ; preds = %imp_for.exit4.i.i
  br i1 %tmp.i27.not.peel.i.i.i.i.i, label %while.cond.i.i.i.i.i, label %while.cond4.preheader.i.i.i.i.i.preheader

while.cond.i.i.i.i.i:                             ; preds = %while.cond.i.i.i.i.i, %ternary.false.i.i.i.i
  %.021.in.i.i.i.i.i = phi i64 [ %.021.i.i.i.i.i, %while.cond.i.i.i.i.i ], [ %1, %ternary.false.i.i.i.i ]
  %.021.i.i.i.i.i = lshr i64 %.021.in.i.i.i.i.i, 1
  %26 = and i64 %.021.in.i.i.i.i.i, 2
  %tmp.i27.not.i.i.i.i.i = icmp eq i64 %26, 0
  br i1 %tmp.i27.not.i.i.i.i.i, label %while.cond.i.i.i.i.i, label %while.cond1.preheader.i.i.i.i.i, !llvm.loop !9

while.cond1.preheader.i.i.i.i.i:                  ; preds = %while.cond.i.i.i.i.i
  %tmp.i29.not42.i.i.i.i.i = icmp ult i64 %.021.in.i.i.i.i.i, 18
  br i1 %tmp.i29.not42.i.i.i.i.i, label %"std.numpy.fft.pocketfft._largest_prime_factor:0[int].1690.exit.i.i.i.i", label %while.cond4.preheader.i.i.i.i.i.preheader

while.cond4.preheader.i.i.i.i.i.preheader:        ; preds = %while.cond1.preheader.i.i.i.i.i, %ternary.false.i.i.i.i
  %.144.i.i.i.i.i.ph = phi i64 [ 1, %ternary.false.i.i.i.i ], [ 2, %while.cond1.preheader.i.i.i.i.i ]
  %.12243.i.i.i.i.i.ph = phi i64 [ %1, %ternary.false.i.i.i.i ], [ %.021.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i ]
  br label %while.cond4.preheader.i.i.i.i.i

while.cond4.preheader.i.i.i.i.i:                  ; preds = %while.exit6.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i.preheader
  %.045.i.i.i.i.i = phi i64 [ %tmp.i37.i.i.i.i.i, %while.exit6.i.i.i.i.i ], [ 3, %while.cond4.preheader.i.i.i.i.i.preheader ]
  %.144.i.i.i.i.i = phi i64 [ %.2.lcssa.i.i.i.i.i, %while.exit6.i.i.i.i.i ], [ %.144.i.i.i.i.i.ph, %while.cond4.preheader.i.i.i.i.i.preheader ]
  %.12243.i.i.i.i.i = phi i64 [ %.223.lcssa.i.i.i.i.i, %while.exit6.i.i.i.i.i ], [ %.12243.i.i.i.i.i.ph, %while.cond4.preheader.i.i.i.i.i.preheader ]
  %tmp.i3338.i.i.i.i.i = srem i64 %.12243.i.i.i.i.i, %.045.i.i.i.i.i
  %tmp.i34.not39.i.i.i.i.i = icmp eq i64 %tmp.i3338.i.i.i.i.i, 0
  br i1 %tmp.i34.not39.i.i.i.i.i, label %while.body5.i.i.i.i.i, label %while.exit6.i.i.i.i.i

while.body5.i.i.i.i.i:                            ; preds = %while.body5.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i
  %.22340.i.i.i.i.i = phi i64 [ %tmp.i36.i.i.i.i.i, %while.body5.i.i.i.i.i ], [ %.12243.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i ]
  %tmp.i36.i.i.i.i.i = sdiv i64 %.22340.i.i.i.i.i, %.045.i.i.i.i.i
  %tmp.i33.i.i.i.i.i = srem i64 %tmp.i36.i.i.i.i.i, %.045.i.i.i.i.i
  %tmp.i34.not.i.i.i.i.i = icmp eq i64 %tmp.i33.i.i.i.i.i, 0
  br i1 %tmp.i34.not.i.i.i.i.i, label %while.body5.i.i.i.i.i, label %while.exit6.i.i.i.i.i

while.exit6.i.i.i.i.i:                            ; preds = %while.body5.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i
  %.223.lcssa.i.i.i.i.i = phi i64 [ %.12243.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i ], [ %tmp.i36.i.i.i.i.i, %while.body5.i.i.i.i.i ]
  %.2.lcssa.i.i.i.i.i = phi i64 [ %.144.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i ], [ %.045.i.i.i.i.i, %while.body5.i.i.i.i.i ]
  %tmp.i37.i.i.i.i.i = add i64 %.045.i.i.i.i.i, 2
  %tmp.i28.i.i.i.i.i = mul i64 %tmp.i37.i.i.i.i.i, %tmp.i37.i.i.i.i.i
  %tmp.i29.not.i.i.i.i.i = icmp sgt i64 %tmp.i28.i.i.i.i.i, %.223.lcssa.i.i.i.i.i
  br i1 %tmp.i29.not.i.i.i.i.i, label %"std.numpy.fft.pocketfft._largest_prime_factor:0[int].1690.exit.i.i.i.i", label %while.cond4.preheader.i.i.i.i.i

"std.numpy.fft.pocketfft._largest_prime_factor:0[int].1690.exit.i.i.i.i": ; preds = %while.exit6.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i
  %.122.lcssa.i.i.i.i.i = phi i64 [ %.021.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i ], [ %.223.lcssa.i.i.i.i.i, %while.exit6.i.i.i.i.i ]
  %.1.lcssa.i.i.i.i.i = phi i64 [ 2, %while.cond1.preheader.i.i.i.i.i ], [ %.2.lcssa.i.i.i.i.i, %while.exit6.i.i.i.i.i ]
  %tmp.i31.i.i.i.i.i36 = icmp slt i64 %.122.lcssa.i.i.i.i.i, 2
  %spec.select.i.i.i.i.i = select i1 %tmp.i31.i.i.i.i.i36, i64 %.1.lcssa.i.i.i.i.i, i64 %.122.lcssa.i.i.i.i.i
  br label %ternary.exit.i.i.i.i

ternary.exit.i.i.i.i:                             ; preds = %"std.numpy.fft.pocketfft._largest_prime_factor:0[int].1690.exit.i.i.i.i", %imp_for.exit4.i.i
  %27 = phi i64 [ %spec.select.i.i.i.i.i, %"std.numpy.fft.pocketfft._largest_prime_factor:0[int].1690.exit.i.i.i.i" ], [ 0, %imp_for.exit4.i.i ]
  %tmp.i78.i.i.i.i = mul i64 %27, %27
  %tmp.i79.not.i.i.i.i = icmp sgt i64 %tmp.i78.i.i.i.i, %1
  br i1 %tmp.i79.not.i.i.i.i, label %if.exit3.i.i.i.i35, label %if.true.i.i.i28.i

if.exit3.i.i.i.i35:                               ; preds = %ternary.exit.i.i.i.i
  br i1 %tmp.i27.not.peel.i.i.i.i.i, label %while.body.i.i.i.i.i, label %while.cond1.preheader.i87.i.i.i.i

while.cond1.preheader.i87.i.i.i.i:                ; preds = %while.body.i.i.i.i.i, %if.exit3.i.i.i.i35
  %.032.lcssa.i.i.i.i.i = phi i64 [ %1, %if.exit3.i.i.i.i35 ], [ %28, %while.body.i.i.i.i.i ]
  %.031.lcssa.i.i.i.i.i = phi double [ 0.000000e+00, %if.exit3.i.i.i.i35 ], [ %tmp.i41.i.i.i.i.i, %while.body.i.i.i.i.i ]
  %tmp.i43.not76.i.i.i.i.i = icmp ult i64 %.032.lcssa.i.i.i.i.i, 9
  br i1 %tmp.i43.not76.i.i.i.i.i, label %while.exit3.i.i.i.i.i, label %while.cond4.preheader.i89.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %while.body.i.i.i.i.i, %if.exit3.i.i.i.i35
  %.03168.i.i.i.i.i = phi double [ %tmp.i41.i.i.i.i.i, %while.body.i.i.i.i.i ], [ 0.000000e+00, %if.exit3.i.i.i.i35 ]
  %.03267.i.i.i.i.i = phi i64 [ %28, %while.body.i.i.i.i.i ], [ %1, %if.exit3.i.i.i.i35 ]
  %tmp.i41.i.i.i.i.i = fadd double %.03168.i.i.i.i.i, 2.000000e+00
  %28 = lshr i64 %.03267.i.i.i.i.i, 1
  %29 = and i64 %.03267.i.i.i.i.i, 2
  %tmp.i40.not.i.i.i.i.i = icmp eq i64 %29, 0
  br i1 %tmp.i40.not.i.i.i.i.i, label %while.body.i.i.i.i.i, label %while.cond1.preheader.i87.i.i.i.i

while.cond4.preheader.i89.i.i.i.i:                ; preds = %while.exit6.i90.i.i.i.i, %while.cond1.preheader.i87.i.i.i.i
  %.079.i.i.i.i.i = phi i64 [ %tmp.i52.i.i.i.i.i, %while.exit6.i90.i.i.i.i ], [ 3, %while.cond1.preheader.i87.i.i.i.i ]
  %.178.i.i.i.i.i = phi double [ %.2.lcssa.i91.i.i.i.i, %while.exit6.i90.i.i.i.i ], [ %.031.lcssa.i.i.i.i.i, %while.cond1.preheader.i87.i.i.i.i ]
  %.13377.i.i.i.i.i = phi i64 [ %.234.lcssa.i.i.i.i.i, %while.exit6.i90.i.i.i.i ], [ %.032.lcssa.i.i.i.i.i, %while.cond1.preheader.i87.i.i.i.i ]
  %tmp.i4770.i.i.i.i.i = srem i64 %.13377.i.i.i.i.i, %.079.i.i.i.i.i
  %tmp.i48.not71.i.i.i.i.i = icmp eq i64 %tmp.i4770.i.i.i.i.i, 0
  br i1 %tmp.i48.not71.i.i.i.i.i, label %while.body5.lr.ph.i.i.i.i.i, label %while.exit6.i90.i.i.i.i

while.body5.lr.ph.i.i.i.i.i:                      ; preds = %while.cond4.preheader.i89.i.i.i.i
  %tmp.i50.i.i.i.i.i = icmp sgt i64 %.079.i.i.i.i.i, 5
  %tmp.i.i.i.i.i.i.i = sitofp i64 %.079.i.i.i.i.i to double
  %tmp.i53.i.i.i.i.i = fmul double %tmp.i.i.i.i.i.i.i, 1.100000e+00
  %30 = select i1 %tmp.i50.i.i.i.i.i, double %tmp.i53.i.i.i.i.i, double %tmp.i.i.i.i.i.i.i
  br label %while.body5.i94.i.i.i.i

while.exit3.i.i.i.i.i:                            ; preds = %while.exit6.i90.i.i.i.i, %while.cond1.preheader.i87.i.i.i.i
  %.133.lcssa.i.i.i.i.i = phi i64 [ %.032.lcssa.i.i.i.i.i, %while.cond1.preheader.i87.i.i.i.i ], [ %.234.lcssa.i.i.i.i.i, %while.exit6.i90.i.i.i.i ]
  %.1.lcssa.i93.i.i.i.i = phi double [ %.031.lcssa.i.i.i.i.i, %while.cond1.preheader.i87.i.i.i.i ], [ %.2.lcssa.i91.i.i.i.i, %while.exit6.i90.i.i.i.i ]
  %tmp.i45.i.i.i.i.i = icmp slt i64 %.133.lcssa.i.i.i.i.i, 2
  br i1 %tmp.i45.i.i.i.i.i, label %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i", label %if.true.i.i.i.i.i

while.body5.i94.i.i.i.i:                          ; preds = %while.body5.i94.i.i.i.i, %while.body5.lr.ph.i.i.i.i.i
  %.273.i.i.i.i.i = phi double [ %.178.i.i.i.i.i, %while.body5.lr.ph.i.i.i.i.i ], [ %tmp.i54.i.i.i.i.i, %while.body5.i94.i.i.i.i ]
  %.23472.i.i.i.i.i = phi i64 [ %.13377.i.i.i.i.i, %while.body5.lr.ph.i.i.i.i.i ], [ %tmp.i55.i.i.i.i.i, %while.body5.i94.i.i.i.i ]
  %tmp.i54.i.i.i.i.i = fadd double %30, %.273.i.i.i.i.i
  %tmp.i55.i.i.i.i.i = sdiv i64 %.23472.i.i.i.i.i, %.079.i.i.i.i.i
  %tmp.i47.i.i.i.i.i = srem i64 %tmp.i55.i.i.i.i.i, %.079.i.i.i.i.i
  %tmp.i48.not.i.i.i.i.i = icmp eq i64 %tmp.i47.i.i.i.i.i, 0
  br i1 %tmp.i48.not.i.i.i.i.i, label %while.body5.i94.i.i.i.i, label %while.exit6.i90.i.i.i.i

while.exit6.i90.i.i.i.i:                          ; preds = %while.body5.i94.i.i.i.i, %while.cond4.preheader.i89.i.i.i.i
  %.234.lcssa.i.i.i.i.i = phi i64 [ %.13377.i.i.i.i.i, %while.cond4.preheader.i89.i.i.i.i ], [ %tmp.i55.i.i.i.i.i, %while.body5.i94.i.i.i.i ]
  %.2.lcssa.i91.i.i.i.i = phi double [ %.178.i.i.i.i.i, %while.cond4.preheader.i89.i.i.i.i ], [ %tmp.i54.i.i.i.i.i, %while.body5.i94.i.i.i.i ]
  %tmp.i52.i.i.i.i.i = add i64 %.079.i.i.i.i.i, 2
  %tmp.i42.i.i.i.i.i = mul i64 %tmp.i52.i.i.i.i.i, %tmp.i52.i.i.i.i.i
  %tmp.i43.not.i.i.i.i.i = icmp sgt i64 %tmp.i42.i.i.i.i.i, %.234.lcssa.i.i.i.i.i
  br i1 %tmp.i43.not.i.i.i.i.i, label %while.exit3.i.i.i.i.i, label %while.cond4.preheader.i89.i.i.i.i

if.true.i.i.i.i.i:                                ; preds = %while.exit3.i.i.i.i.i
  %tmp.i56.i.i.i.i.i = icmp ugt i64 %.133.lcssa.i.i.i.i.i, 5
  %tmp.i.i63.i.i.i.i.i = sitofp i64 %.133.lcssa.i.i.i.i.i to double
  %tmp.i59.i.i.i.i.i = fmul double %tmp.i.i63.i.i.i.i.i, 1.100000e+00
  %31 = select i1 %tmp.i56.i.i.i.i.i, double %tmp.i59.i.i.i.i.i, double %tmp.i.i63.i.i.i.i.i
  %tmp.i60.i.i.i.i.i = fadd double %.1.lcssa.i93.i.i.i.i, %31
  br label %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i"

"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i": ; preds = %if.true.i.i.i.i.i, %while.exit3.i.i.i.i.i
  %.3.i.i.i.i.i = phi double [ %tmp.i60.i.i.i.i.i, %if.true.i.i.i.i.i ], [ %.1.lcssa.i93.i.i.i.i, %while.exit3.i.i.i.i.i ]
  %tmp.i58.i.i.i.i.i = fmul double %.3.i.i.i.i.i, %tmp.i.i
  %tmp.i81.i.i.i.i = fmul double %tmp.i58.i.i.i.i.i, 5.000000e-01
  br i1 %brmerge.i.i, label %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i", label %while.cond1.preheader.i97.i.i.i.i

while.cond1.preheader.i97.i.i.i.i:                ; preds = %while.exit3.i102.i.i.i.i, %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i"
  %.058106.i.i.i.i.i = phi i64 [ %tmp.i78.i.i.i.i.i, %while.exit3.i102.i.i.i.i ], [ 1, %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i" ]
  %.059105.i.i.i.i.i = phi i64 [ %spec.select.i100.i.i.i.i, %while.exit3.i102.i.i.i.i ], [ %tmp.i73.i.i.i.i.i, %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i" ]
  br label %while.cond4.preheader.i98.i.i.i.i

while.cond4.preheader.i98.i.i.i.i:                ; preds = %while.exit6.i101.i.i.i.i, %while.cond1.preheader.i97.i.i.i.i
  %.057103.i.i.i.i.i = phi i64 [ %.058106.i.i.i.i.i, %while.cond1.preheader.i97.i.i.i.i ], [ %tmp.i81.i.i.i.i.i, %while.exit6.i101.i.i.i.i ]
  %.160102.i.i.i.i.i = phi i64 [ %.059105.i.i.i.i.i, %while.cond1.preheader.i97.i.i.i.i ], [ %spec.select.i100.i.i.i.i, %while.exit6.i101.i.i.i.i ]
  br label %while.cond7.preheader.i.i.i.i.i

while.exit3.i102.i.i.i.i:                         ; preds = %while.exit6.i101.i.i.i.i
  %tmp.i78.i.i.i.i.i = mul i64 %.058106.i.i.i.i.i, 11
  %tmp.i74.not.i.i.i.i.i = icmp sgt i64 %spec.select.i100.i.i.i.i, %tmp.i78.i.i.i.i.i
  br i1 %tmp.i74.not.i.i.i.i.i, label %while.cond1.preheader.i97.i.i.i.i, label %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i"

while.cond7.preheader.i.i.i.i.i:                  ; preds = %if.true22.i.i.i.i.i, %while.cond4.preheader.i98.i.i.i.i
  %.056101.i.i.i.i.i = phi i64 [ %.057103.i.i.i.i.i, %while.cond4.preheader.i98.i.i.i.i ], [ %tmp.i93.i.i.i.i.i, %if.true22.i.i.i.i.i ]
  %.261100.i.i.i.i.i = phi i64 [ %.160102.i.i.i.i.i, %while.cond4.preheader.i98.i.i.i.i ], [ %spec.select.i100.i.i.i.i, %if.true22.i.i.i.i.i ]
  br label %while.cond7.i.i.i.i.i

while.exit6.i101.i.i.i.i:                         ; preds = %if.true22.i.i.i.i.i
  %tmp.i81.i.i.i.i.i = mul i64 %.057103.i.i.i.i.i, 7
  %tmp.i76.not.i.i.i.i.i = icmp sgt i64 %spec.select.i100.i.i.i.i, %tmp.i81.i.i.i.i.i
  br i1 %tmp.i76.not.i.i.i.i.i, label %while.cond4.preheader.i98.i.i.i.i, label %while.exit3.i102.i.i.i.i

while.cond7.i.i.i.i.i:                            ; preds = %while.cond7.i.i.i.i.i, %while.cond7.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %tmp.i84.i.i.i.i.i, %while.cond7.i.i.i.i.i ], [ %.056101.i.i.i.i.i, %while.cond7.preheader.i.i.i.i.i ]
  %tmp.i82.not.i.i.i.i.i = icmp slt i64 %.0.i.i.i.i.i, %tmp.i83.i.i.i.i
  %tmp.i84.i.i.i.i.i = shl i64 %.0.i.i.i.i.i, 1
  br i1 %tmp.i82.not.i.i.i.i.i, label %while.cond7.i.i.i.i.i, label %while.cond10.i.i.i.i.i.outer

while.cond10.i.i.i.i.i.outer:                     ; preds = %if.true16.i.i.i.i.i, %while.cond7.i.i.i.i.i
  %.3.i99.i.i.i.i.ph = phi i64 [ %spec.select.i100.i.i.i.i, %if.true16.i.i.i.i.i ], [ %.261100.i.i.i.i.i, %while.cond7.i.i.i.i.i ]
  %.1.i.i.i.i.i.ph = phi i64 [ %33, %if.true16.i.i.i.i.i ], [ %.0.i.i.i.i.i, %while.cond7.i.i.i.i.i ]
  %tmp.i85.not.i.i.i.i.i456 = icmp slt i64 %.1.i.i.i.i.i.ph, %tmp.i83.i.i.i.i
  br i1 %tmp.i85.not.i.i.i.i.i456, label %if.true13.i.i.i.i.i, label %if.false14.i.i.i.i.i

if.true13.i.i.i.i.i:                              ; preds = %if.true13.i.i.i.i.i, %while.cond10.i.i.i.i.i.outer
  %.1.i.i.i.i.i457 = phi i64 [ %tmp.i87.i.i.i.i.i, %if.true13.i.i.i.i.i ], [ %.1.i.i.i.i.i.ph, %while.cond10.i.i.i.i.i.outer ]
  %tmp.i87.i.i.i.i.i = mul i64 %.1.i.i.i.i.i457, 3
  %tmp.i85.not.i.i.i.i.i = icmp slt i64 %tmp.i87.i.i.i.i.i, %tmp.i83.i.i.i.i
  br i1 %tmp.i85.not.i.i.i.i.i, label %if.true13.i.i.i.i.i, label %if.false14.i.i.i.i.i

if.false14.i.i.i.i.i:                             ; preds = %if.true13.i.i.i.i.i, %while.cond10.i.i.i.i.i.outer
  %.1.i.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.i.ph, %while.cond10.i.i.i.i.i.outer ], [ %tmp.i87.i.i.i.i.i, %if.true13.i.i.i.i.i ]
  %tmp.i88.not.i.i.i.i.i = icmp sgt i64 %.1.i.i.i.i.i.lcssa, %tmp.i83.i.i.i.i
  br i1 %tmp.i88.not.i.i.i.i.i, label %if.true16.i.i.i.i.i, label %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i"

if.true16.i.i.i.i.i:                              ; preds = %if.false14.i.i.i.i.i
  %spec.select.i100.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.3.i99.i.i.i.i.ph, i64 %.1.i.i.i.i.i.lcssa)
  %32 = and i64 %.1.i.i.i.i.i.lcssa, 1
  %.not69.i.i.i.i.i = icmp eq i64 %32, 0
  %33 = ashr i64 %.1.i.i.i.i.i.lcssa, 1
  br i1 %.not69.i.i.i.i.i, label %while.cond10.i.i.i.i.i.outer, label %if.true22.i.i.i.i.i

if.true22.i.i.i.i.i:                              ; preds = %if.true16.i.i.i.i.i
  %tmp.i93.i.i.i.i.i = mul i64 %.056101.i.i.i.i.i, 5
  %tmp.i79.not.i.i.i.i.i = icmp slt i64 %tmp.i93.i.i.i.i.i, %spec.select.i100.i.i.i.i
  br i1 %tmp.i79.not.i.i.i.i.i, label %while.cond7.preheader.i.i.i.i.i, label %while.exit6.i101.i.i.i.i

"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i": ; preds = %if.false14.i.i.i.i.i, %while.exit3.i102.i.i.i.i, %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i"
  %common.ret.op.i.i.i.i.i = phi i64 [ %tmp.i83.i.i.mux.i.i, %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit.i.i.i.i" ], [ %tmp.i83.i.i.i.i, %if.false14.i.i.i.i.i ], [ %spec.select.i100.i.i.i.i, %while.exit3.i102.i.i.i.i ]
  %tmp.i65.i103.i.i.i.i = and i64 %common.ret.op.i.i.i.i.i, 1
  %tmp.i40.not66.i104.i.i.i.i = icmp eq i64 %tmp.i65.i103.i.i.i.i, 0
  br i1 %tmp.i40.not66.i104.i.i.i.i, label %while.body.i149.i.i.i.i, label %while.cond1.preheader.i105.i.i.i.i

while.cond1.preheader.i105.i.i.i.i:               ; preds = %while.body.i149.i.i.i.i, %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i"
  %.032.lcssa.i106.i.i.i.i = phi i64 [ %common.ret.op.i.i.i.i.i, %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i" ], [ %34, %while.body.i149.i.i.i.i ]
  %.031.lcssa.i107.i.i.i.i = phi double [ 0.000000e+00, %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i" ], [ %tmp.i41.i152.i.i.i.i, %while.body.i149.i.i.i.i ]
  %tmp.i43.not76.i108.i.i.i.i = icmp slt i64 %.032.lcssa.i106.i.i.i.i, 9
  br i1 %tmp.i43.not76.i108.i.i.i.i, label %while.exit3.i123.i.i.i.i, label %while.cond4.preheader.i110.i.i.i.i

while.body.i149.i.i.i.i:                          ; preds = %while.body.i149.i.i.i.i, %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i"
  %.03168.i150.i.i.i.i = phi double [ %tmp.i41.i152.i.i.i.i, %while.body.i149.i.i.i.i ], [ 0.000000e+00, %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i" ]
  %.03267.i151.i.i.i.i = phi i64 [ %34, %while.body.i149.i.i.i.i ], [ %common.ret.op.i.i.i.i.i, %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i" ]
  %tmp.i41.i152.i.i.i.i = fadd double %.03168.i150.i.i.i.i, 2.000000e+00
  %34 = ashr i64 %.03267.i151.i.i.i.i, 1
  %35 = and i64 %.03267.i151.i.i.i.i, 2
  %tmp.i40.not.i153.i.i.i.i = icmp eq i64 %35, 0
  br i1 %tmp.i40.not.i153.i.i.i.i, label %while.body.i149.i.i.i.i, label %while.cond1.preheader.i105.i.i.i.i

while.cond4.preheader.i110.i.i.i.i:               ; preds = %while.exit6.i116.i.i.i.i, %while.cond1.preheader.i105.i.i.i.i
  %.079.i111.i.i.i.i = phi i64 [ %tmp.i52.i119.i.i.i.i, %while.exit6.i116.i.i.i.i ], [ 3, %while.cond1.preheader.i105.i.i.i.i ]
  %.178.i112.i.i.i.i = phi double [ %.2.lcssa.i118.i.i.i.i, %while.exit6.i116.i.i.i.i ], [ %.031.lcssa.i107.i.i.i.i, %while.cond1.preheader.i105.i.i.i.i ]
  %.13377.i113.i.i.i.i = phi i64 [ %.234.lcssa.i117.i.i.i.i, %while.exit6.i116.i.i.i.i ], [ %.032.lcssa.i106.i.i.i.i, %while.cond1.preheader.i105.i.i.i.i ]
  %tmp.i4770.i114.i.i.i.i = srem i64 %.13377.i113.i.i.i.i, %.079.i111.i.i.i.i
  %tmp.i48.not71.i115.i.i.i.i = icmp eq i64 %tmp.i4770.i114.i.i.i.i, 0
  br i1 %tmp.i48.not71.i115.i.i.i.i, label %while.body5.lr.ph.i136.i.i.i.i, label %while.exit6.i116.i.i.i.i

while.body5.lr.ph.i136.i.i.i.i:                   ; preds = %while.cond4.preheader.i110.i.i.i.i
  %tmp.i50.i137.i.i.i.i = icmp sgt i64 %.079.i111.i.i.i.i, 5
  %tmp.i.i.i138.i.i.i.i = sitofp i64 %.079.i111.i.i.i.i to double
  %tmp.i53.i139.i.i.i.i = fmul double %tmp.i.i.i138.i.i.i.i, 1.100000e+00
  %36 = select i1 %tmp.i50.i137.i.i.i.i, double %tmp.i53.i139.i.i.i.i, double %tmp.i.i.i138.i.i.i.i
  br label %while.body5.i140.i.i.i.i

while.exit3.i123.i.i.i.i:                         ; preds = %while.exit6.i116.i.i.i.i, %while.cond1.preheader.i105.i.i.i.i
  %.133.lcssa.i124.i.i.i.i = phi i64 [ %.032.lcssa.i106.i.i.i.i, %while.cond1.preheader.i105.i.i.i.i ], [ %.234.lcssa.i117.i.i.i.i, %while.exit6.i116.i.i.i.i ]
  %.1.lcssa.i125.i.i.i.i = phi double [ %.031.lcssa.i107.i.i.i.i, %while.cond1.preheader.i105.i.i.i.i ], [ %.2.lcssa.i118.i.i.i.i, %while.exit6.i116.i.i.i.i ]
  %tmp.i45.i126.i.i.i.i = icmp slt i64 %.133.lcssa.i124.i.i.i.i, 2
  br i1 %tmp.i45.i126.i.i.i.i, label %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit155.i.i.i.i", label %if.true.i127.i.i.i.i

while.body5.i140.i.i.i.i:                         ; preds = %while.body5.i140.i.i.i.i, %while.body5.lr.ph.i136.i.i.i.i
  %.273.i141.i.i.i.i = phi double [ %.178.i112.i.i.i.i, %while.body5.lr.ph.i136.i.i.i.i ], [ %tmp.i54.i143.i.i.i.i, %while.body5.i140.i.i.i.i ]
  %.23472.i142.i.i.i.i = phi i64 [ %.13377.i113.i.i.i.i, %while.body5.lr.ph.i136.i.i.i.i ], [ %tmp.i55.i144.i.i.i.i, %while.body5.i140.i.i.i.i ]
  %tmp.i54.i143.i.i.i.i = fadd double %36, %.273.i141.i.i.i.i
  %tmp.i55.i144.i.i.i.i = sdiv i64 %.23472.i142.i.i.i.i, %.079.i111.i.i.i.i
  %tmp.i47.i145.i.i.i.i = srem i64 %tmp.i55.i144.i.i.i.i, %.079.i111.i.i.i.i
  %tmp.i48.not.i146.i.i.i.i = icmp eq i64 %tmp.i47.i145.i.i.i.i, 0
  br i1 %tmp.i48.not.i146.i.i.i.i, label %while.body5.i140.i.i.i.i, label %while.exit6.i116.i.i.i.i

while.exit6.i116.i.i.i.i:                         ; preds = %while.body5.i140.i.i.i.i, %while.cond4.preheader.i110.i.i.i.i
  %.234.lcssa.i117.i.i.i.i = phi i64 [ %.13377.i113.i.i.i.i, %while.cond4.preheader.i110.i.i.i.i ], [ %tmp.i55.i144.i.i.i.i, %while.body5.i140.i.i.i.i ]
  %.2.lcssa.i118.i.i.i.i = phi double [ %.178.i112.i.i.i.i, %while.cond4.preheader.i110.i.i.i.i ], [ %tmp.i54.i143.i.i.i.i, %while.body5.i140.i.i.i.i ]
  %tmp.i52.i119.i.i.i.i = add i64 %.079.i111.i.i.i.i, 2
  %tmp.i42.i120.i.i.i.i = mul i64 %tmp.i52.i119.i.i.i.i, %tmp.i52.i119.i.i.i.i
  %tmp.i43.not.i121.i.i.i.i = icmp sgt i64 %tmp.i42.i120.i.i.i.i, %.234.lcssa.i117.i.i.i.i
  br i1 %tmp.i43.not.i121.i.i.i.i, label %while.exit3.i123.i.i.i.i, label %while.cond4.preheader.i110.i.i.i.i

if.true.i127.i.i.i.i:                             ; preds = %while.exit3.i123.i.i.i.i
  %tmp.i56.i128.i.i.i.i = icmp ugt i64 %.133.lcssa.i124.i.i.i.i, 5
  %tmp.i.i63.i129.i.i.i.i = sitofp i64 %.133.lcssa.i124.i.i.i.i to double
  %tmp.i59.i130.i.i.i.i = fmul double %tmp.i.i63.i129.i.i.i.i, 1.100000e+00
  %37 = select i1 %tmp.i56.i128.i.i.i.i, double %tmp.i59.i130.i.i.i.i, double %tmp.i.i63.i129.i.i.i.i
  %tmp.i60.i131.i.i.i.i = fadd double %.1.lcssa.i125.i.i.i.i, %37
  br label %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit155.i.i.i.i"

"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit155.i.i.i.i": ; preds = %if.true.i127.i.i.i.i, %while.exit3.i123.i.i.i.i
  %.3.i133.i.i.i.i = phi double [ %tmp.i60.i131.i.i.i.i, %if.true.i127.i.i.i.i ], [ %.1.lcssa.i125.i.i.i.i, %while.exit3.i123.i.i.i.i ]
  %tmp.i.i62.i134.i.i.i.i = sitofp i64 %common.ret.op.i.i.i.i.i to double
  %tmp.i58.i135.i.i.i.i = fmul double %.3.i133.i.i.i.i, %tmp.i.i62.i134.i.i.i.i
  %38 = fmul double %tmp.i58.i135.i.i.i.i, 2.000000e+00
  %tmp.i84.i.i.i.i = fmul double %38, 1.500000e+00
  %tmp.i85.i.i.i.i = fcmp uge double %tmp.i84.i.i.i.i, %tmp.i81.i.i.i.i
  br i1 %tmp.i85.i.i.i.i, label %if.true.i.i.i28.i, label %if.true4.i.i.i.i

if.true4.i.i.i.i:                                 ; preds = %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit155.i.i.i.i"
  %39 = icmp eq ptr %alloc_hoist.cache.0.i.i, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %if.true4.i.i.i.i
  %41 = tail call dereferenceable(56) ptr @seq_alloc(i64 56)
  br label %42

42:                                               ; preds = %40, %if.true4.i.i.i.i
  %alloc_hoist.cache.1.i.i = phi ptr [ %41, %40 ], [ %alloc_hoist.cache.0.i.i, %if.true4.i.i.i.i ]
  %.elt163.i.i.i.i.i = getelementptr inbounds { i64, i64, ptr, { ptr, i64 }, ptr, ptr }, ptr %alloc_hoist.cache.1.i.i, i64 0, i32 1
  %.elt165.i.i.i.i.i = getelementptr inbounds { i64, i64, ptr, { ptr, i64 }, ptr, ptr }, ptr %alloc_hoist.cache.1.i.i, i64 0, i32 2
  %.elt167.i.i.i.i.i = getelementptr inbounds { i64, i64, ptr, { ptr, i64 }, ptr, ptr }, ptr %alloc_hoist.cache.1.i.i, i64 0, i32 3
  %.unpack168.elt173.i.i.i.i.i = getelementptr inbounds { i64, i64, ptr, { ptr, i64 }, ptr, ptr }, ptr %alloc_hoist.cache.1.i.i, i64 0, i32 3, i32 1
  %.elt169.i.i.i.i.i = getelementptr inbounds { i64, i64, ptr, { ptr, i64 }, ptr, ptr }, ptr %alloc_hoist.cache.1.i.i, i64 0, i32 4
  %.elt171.i.i.i.i.i = getelementptr inbounds { i64, i64, ptr, { ptr, i64 }, ptr, ptr }, ptr %alloc_hoist.cache.1.i.i, i64 0, i32 5
  br i1 %brmerge.i.i, label %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i.i", label %while.cond1.preheader.i.i.i.i.i.i

while.cond1.preheader.i.i.i.i.i.i:                ; preds = %while.exit3.i.i.i.i.i.i, %42
  %.058106.i.i.i.i.i.i = phi i64 [ %tmp.i78.i.i.i.i.i.i, %while.exit3.i.i.i.i.i.i ], [ 1, %42 ]
  %.059105.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %while.exit3.i.i.i.i.i.i ], [ %tmp.i73.i.i.i.i.i, %42 ]
  br label %while.cond4.preheader.i.i.i.i.i.i

while.cond4.preheader.i.i.i.i.i.i:                ; preds = %while.exit6.i.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i.i
  %.057103.i.i.i.i.i.i = phi i64 [ %.058106.i.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i.i ], [ %tmp.i81.i.i.i.i.i.i, %while.exit6.i.i.i.i.i.i ]
  %.160102.i.i.i.i.i.i = phi i64 [ %.059105.i.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %while.exit6.i.i.i.i.i.i ]
  br label %while.cond7.preheader.i.i.i.i.i.i

while.exit3.i.i.i.i.i.i:                          ; preds = %while.exit6.i.i.i.i.i.i
  %tmp.i78.i.i.i.i.i.i = mul i64 %.058106.i.i.i.i.i.i, 11
  %tmp.i74.not.i.i.i.i.i.i = icmp sgt i64 %spec.select.i.i.i.i.i.i, %tmp.i78.i.i.i.i.i.i
  br i1 %tmp.i74.not.i.i.i.i.i.i, label %while.cond1.preheader.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i.i"

while.cond7.preheader.i.i.i.i.i.i:                ; preds = %if.true22.i.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i.i
  %.056101.i.i.i.i.i.i = phi i64 [ %.057103.i.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i.i ], [ %tmp.i93.i.i.i.i.i.i, %if.true22.i.i.i.i.i.i ]
  %.261100.i.i.i.i.i.i = phi i64 [ %.160102.i.i.i.i.i.i, %while.cond4.preheader.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %if.true22.i.i.i.i.i.i ]
  br label %while.cond7.i.i.i.i.i.i

while.exit6.i.i.i.i.i.i:                          ; preds = %if.true22.i.i.i.i.i.i
  %tmp.i81.i.i.i.i.i.i = mul i64 %.057103.i.i.i.i.i.i, 7
  %tmp.i76.not.i.i.i.i.i.i = icmp sgt i64 %spec.select.i.i.i.i.i.i, %tmp.i81.i.i.i.i.i.i
  br i1 %tmp.i76.not.i.i.i.i.i.i, label %while.cond4.preheader.i.i.i.i.i.i, label %while.exit3.i.i.i.i.i.i

while.cond7.i.i.i.i.i.i:                          ; preds = %while.cond7.i.i.i.i.i.i, %while.cond7.preheader.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i64 [ %tmp.i84.i.i.i.i.i.i, %while.cond7.i.i.i.i.i.i ], [ %.056101.i.i.i.i.i.i, %while.cond7.preheader.i.i.i.i.i.i ]
  %tmp.i82.not.i.i.i.i.i.i = icmp slt i64 %.0.i.i.i.i.i.i, %tmp.i83.i.i.i.i
  %tmp.i84.i.i.i.i.i.i = shl i64 %.0.i.i.i.i.i.i, 1
  br i1 %tmp.i82.not.i.i.i.i.i.i, label %while.cond7.i.i.i.i.i.i, label %while.cond10.i.i.i.i.i.i.outer

while.cond10.i.i.i.i.i.i.outer:                   ; preds = %if.true16.i.i.i.i.i.i, %while.cond7.i.i.i.i.i.i
  %.3.i.i.i.i.i.i.ph = phi i64 [ %spec.select.i.i.i.i.i.i, %if.true16.i.i.i.i.i.i ], [ %.261100.i.i.i.i.i.i, %while.cond7.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i.ph = phi i64 [ %44, %if.true16.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %while.cond7.i.i.i.i.i.i ]
  %tmp.i85.not.i.i.i.i.i.i458 = icmp slt i64 %.1.i.i.i.i.i.i.ph, %tmp.i83.i.i.i.i
  br i1 %tmp.i85.not.i.i.i.i.i.i458, label %if.true13.i.i.i.i.i.i, label %if.false14.i.i.i.i.i.i

if.true13.i.i.i.i.i.i:                            ; preds = %if.true13.i.i.i.i.i.i, %while.cond10.i.i.i.i.i.i.outer
  %.1.i.i.i.i.i.i459 = phi i64 [ %tmp.i87.i.i.i.i.i.i, %if.true13.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.ph, %while.cond10.i.i.i.i.i.i.outer ]
  %tmp.i87.i.i.i.i.i.i = mul i64 %.1.i.i.i.i.i.i459, 3
  %tmp.i85.not.i.i.i.i.i.i = icmp slt i64 %tmp.i87.i.i.i.i.i.i, %tmp.i83.i.i.i.i
  br i1 %tmp.i85.not.i.i.i.i.i.i, label %if.true13.i.i.i.i.i.i, label %if.false14.i.i.i.i.i.i

if.false14.i.i.i.i.i.i:                           ; preds = %if.true13.i.i.i.i.i.i, %while.cond10.i.i.i.i.i.i.outer
  %.1.i.i.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.i.i.ph, %while.cond10.i.i.i.i.i.i.outer ], [ %tmp.i87.i.i.i.i.i.i, %if.true13.i.i.i.i.i.i ]
  %tmp.i88.not.i.i.i.i.i.i = icmp sgt i64 %.1.i.i.i.i.i.i.lcssa, %tmp.i83.i.i.i.i
  br i1 %tmp.i88.not.i.i.i.i.i.i, label %if.true16.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i.i"

if.true16.i.i.i.i.i.i:                            ; preds = %if.false14.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.3.i.i.i.i.i.i.ph, i64 %.1.i.i.i.i.i.i.lcssa)
  %43 = and i64 %.1.i.i.i.i.i.i.lcssa, 1
  %.not69.i.i.i.i.i.i = icmp eq i64 %43, 0
  %44 = ashr i64 %.1.i.i.i.i.i.i.lcssa, 1
  br i1 %.not69.i.i.i.i.i.i, label %while.cond10.i.i.i.i.i.i.outer, label %if.true22.i.i.i.i.i.i

if.true22.i.i.i.i.i.i:                            ; preds = %if.true16.i.i.i.i.i.i
  %tmp.i93.i.i.i.i.i.i = mul i64 %.056101.i.i.i.i.i.i, 5
  %tmp.i79.not.i.i.i.i.i.i = icmp slt i64 %tmp.i93.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i
  br i1 %tmp.i79.not.i.i.i.i.i.i, label %while.cond7.preheader.i.i.i.i.i.i, label %while.exit6.i.i.i.i.i.i

"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i.i": ; preds = %if.false14.i.i.i.i.i.i, %while.exit3.i.i.i.i.i.i, %42
  %.unpack171.i.i.i.i.i.i = phi i64 [ %tmp.i83.i.i.mux.i.i, %42 ], [ %tmp.i83.i.i.i.i, %if.false14.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %while.exit3.i.i.i.i.i.i ]
  store i64 %1, ptr %alloc_hoist.cache.1.i.i, align 8
  store i64 %.unpack171.i.i.i.i.i.i, ptr %.elt163.i.i.i.i.i, align 8
  %45 = tail call dereferenceable(32) ptr @seq_alloc(i64 32)
  %tmp.i.i355.i.i.i.i.i = icmp ne i64 %.unpack171.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %tmp.i.i355.i.i.i.i.i)
  %.elt14.i.i.i.i.i.i = getelementptr inbounds { i64, { ptr, i64 }, ptr }, ptr %45, i64 0, i32 1
  %.unpack15.elt18.i.i.i.i.i.i = getelementptr inbounds { i64, { ptr, i64 }, ptr }, ptr %45, i64 0, i32 1, i32 1
  %.elt16.i.i.i.i.i.i = getelementptr inbounds { i64, { ptr, i64 }, ptr }, ptr %45, i64 0, i32 2
  %46 = tail call dereferenceable(24) ptr @seq_alloc(i64 24)
  %47 = tail call dereferenceable(240) ptr @seq_alloc(i64 240)
  store i64 0, ptr %46, align 8
  %.repack7.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %46, i64 0, i32 1
  store i64 10, ptr %.repack7.i.i.i.i.i.i.i, align 8
  %.repack7.repack9.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %46, i64 0, i32 1, i32 1
  store ptr %47, ptr %.repack7.repack9.i.i.i.i.i.i.i, align 8
  store i64 %.unpack171.i.i.i.i.i.i, ptr %45, align 8
  store ptr %46, ptr %.elt16.i.i.i.i.i.i, align 8
  %tmp.i55.not.i.i.i.i.i.i = icmp eq i64 %.unpack171.i.i.i.i.i.i, 1
  br i1 %tmp.i55.not.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.__init__:1[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1970.exit.i.i.i.i.i", label %if.true1.i.i.i.i.i.i

if.true1.i.i.i.i.i.i:                             ; preds = %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i.i"
  %tmp.i208.i.i.i.i.i.i.i = and i64 %.unpack171.i.i.i.i.i.i, 7
  %tmp.i60.not209.i.i.i.i.i.i.i = icmp eq i64 %tmp.i208.i.i.i.i.i.i.i, 0
  br i1 %tmp.i60.not209.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.i, label %while.cond1.preheader.i.i.i.i.i.i.i

while.cond1.preheader.i.i.i.i.i.i.i:              ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit.i.i.i.i.i.i.i", %if.true1.i.i.i.i.i.i
  %.043.lcssa.i.i.i.i.i.i.i = phi i64 [ %.unpack171.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i ], [ %50, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit.i.i.i.i.i.i.i" ]
  %tmp.i61211.i.i.i.i.i.i.i = and i64 %.043.lcssa.i.i.i.i.i.i.i, 3
  %tmp.i62.not212.i.i.i.i.i.i.i = icmp eq i64 %tmp.i61211.i.i.i.i.i.i.i, 0
  br i1 %tmp.i62.not212.i.i.i.i.i.i.i, label %while.body2.i.i.i.i.i.i.i, label %while.exit3.i.i.i.i.i.i.i

while.body.i.i.i.i.i.i.i:                         ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit.i.i.i.i.i.i.i", %if.true1.i.i.i.i.i.i
  %.043210.i.i.i.i.i.i.i = phi i64 [ %50, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit.i.i.i.i.i.i.i" ], [ %.unpack171.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i ]
  %.val59.i.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  %.unpack.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val59.i.i.i.i.i.i.i, align 8
  %.elt8.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val59.i.i.i.i.i.i.i, i64 0, i32 1
  %.unpack9.unpack.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.elt8.i.i.i.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i.i.i.i.i.i.i.i, %.unpack.i.i.i.i.i.i.i.i.i.i
  br i1 %tmp.i.not.i.i.i.i.i.i.i.i.i.i, label %if.true.i.i.i.i.i.i.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i.i.i.i.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i.i.i.i.i.i.i.i": ; preds = %while.body.i.i.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val59.i.i.i.i.i.i.i, i64 16
  %.val.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit.i.i.i.i.i.i.i"

if.true.i.i.i.i.i.i.i.i.i.i:                      ; preds = %while.body.i.i.i.i.i.i.i
  %tmp.i20.i.i.i.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i.i.i.i.i.i.i.i, 3
  %tmp.i21.i.i.i.i.i.i.i.i.i.i = add i64 %tmp.i20.i.i.i.i.i.i.i.i.i.i, 1
  %tmp.i22.i.i.i.i.i.i.i.i.i.i = sdiv i64 %tmp.i21.i.i.i.i.i.i.i.i.i.i, 2
  %tmp.i23.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %tmp.i23.i.i.i.i.i.i.i.i.i.i, i64 %tmp.i22.i.i.i.i.i.i.i.i.i.i, i64 1
  %.unpack6.elt7.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val59.i.i.i.i.i.i.i, i64 0, i32 1, i32 1
  %.unpack6.unpack8.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.unpack6.elt7.i.i.i.i.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %spec.select.i.i.i.i.i.i.i.i.i.i, 24
  %tmp.i24.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i.i.i.i.i.i.i.i, 24
  %48 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i.i.i.i.i.i.i.i, i64 %tmp.i.i.i.i.i.i.i.i.i.i.i.i, i64 %tmp.i24.i.i.i.i.i.i.i.i.i.i.i)
  store i64 %spec.select.i.i.i.i.i.i.i.i.i.i, ptr %.elt8.i.i.i.i.i.i.i.i.i.i, align 8
  store ptr %48, ptr %.unpack6.elt7.i.i.i.i.i.i.i.i.i.i.i, align 8
  %.unpack.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.val59.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit.i.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.pre.i.i.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i.i.i.i.i.i.i.i" ], [ %48, %if.true.i.i.i.i.i.i.i.i.i.i ]
  %.unpack.i.i.i.i.i.i.i.i.i = phi i64 [ %.unpack.i.i.i.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i.i.i.i.i.i.i.i" ], [ %.unpack.pre.i.i.i.i.i.i.i.i.i, %if.true.i.i.i.i.i.i.i.i.i.i ]
  %49 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.unpack.i.i.i.i.i.i.i.i.i
  store i64 8, ptr %49, align 8
  %.repack1.i.i.i.i.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.unpack.i.i.i.i.i.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i.i.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i.i.i.i.i.i.i.i = load i64, ptr %.val59.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i.i.i.i.i.i.i.i = add i64 %.unpack13.i.i.i.i.i.i.i.i.i, 1
  store i64 %tmp.i.i.i.i.i.i.i.i.i.i, ptr %.val59.i.i.i.i.i.i.i, align 8
  %50 = ashr i64 %.043210.i.i.i.i.i.i.i, 3
  %51 = and i64 %.043210.i.i.i.i.i.i.i, 56
  %tmp.i60.not.i.i.i.i.i.i.i = icmp eq i64 %51, 0
  br i1 %tmp.i60.not.i.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.i, label %while.cond1.preheader.i.i.i.i.i.i.i

while.body2.i.i.i.i.i.i.i:                        ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit100.i.i.i.i.i.i.i", %while.cond1.preheader.i.i.i.i.i.i.i
  %.1213.i.i.i.i.i.i.i = phi i64 [ %54, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit100.i.i.i.i.i.i.i" ], [ %.043.lcssa.i.i.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i.i.i ]
  %.val58.i.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  %.unpack.i.i.i77.i.i.i.i.i.i.i = load i64, ptr %.val58.i.i.i.i.i.i.i, align 8
  %.elt8.i.i.i78.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val58.i.i.i.i.i.i.i, i64 0, i32 1
  %.unpack9.unpack.i.i.i79.i.i.i.i.i.i.i = load i64, ptr %.elt8.i.i.i78.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i.i80.i.i.i.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i79.i.i.i.i.i.i.i, %.unpack.i.i.i77.i.i.i.i.i.i.i
  br i1 %tmp.i.not.i.i.i80.i.i.i.i.i.i.i, label %if.true.i.i.i89.i.i.i.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i81.i.i.i.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i81.i.i.i.i.i.i.i": ; preds = %while.body2.i.i.i.i.i.i.i
  %.phi.trans.insert.i.i82.i.i.i.i.i.i.i = getelementptr i8, ptr %.val58.i.i.i.i.i.i.i, i64 16
  %.val.pre.i.i83.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i82.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit100.i.i.i.i.i.i.i"

if.true.i.i.i89.i.i.i.i.i.i.i:                    ; preds = %while.body2.i.i.i.i.i.i.i
  %tmp.i20.i.i.i90.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i77.i.i.i.i.i.i.i, 3
  %tmp.i21.i.i.i91.i.i.i.i.i.i.i = add i64 %tmp.i20.i.i.i90.i.i.i.i.i.i.i, 1
  %tmp.i22.i.i.i92.i.i.i.i.i.i.i = sdiv i64 %tmp.i21.i.i.i91.i.i.i.i.i.i.i, 2
  %tmp.i23.i.i.i93.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i91.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i94.i.i.i.i.i.i.i = select i1 %tmp.i23.i.i.i93.i.i.i.i.i.i.i, i64 %tmp.i22.i.i.i92.i.i.i.i.i.i.i, i64 1
  %.unpack6.elt7.i.i.i.i95.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val58.i.i.i.i.i.i.i, i64 0, i32 1, i32 1
  %.unpack6.unpack8.i.i.i.i96.i.i.i.i.i.i.i = load ptr, ptr %.unpack6.elt7.i.i.i.i95.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i.i.i97.i.i.i.i.i.i.i = mul i64 %spec.select.i.i.i94.i.i.i.i.i.i.i, 24
  %tmp.i24.i.i.i.i98.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i77.i.i.i.i.i.i.i, 24
  %52 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i96.i.i.i.i.i.i.i, i64 %tmp.i.i.i.i.i97.i.i.i.i.i.i.i, i64 %tmp.i24.i.i.i.i98.i.i.i.i.i.i.i)
  store i64 %spec.select.i.i.i94.i.i.i.i.i.i.i, ptr %.elt8.i.i.i78.i.i.i.i.i.i.i, align 8
  store ptr %52, ptr %.unpack6.elt7.i.i.i.i95.i.i.i.i.i.i.i, align 8
  %.unpack.pre.i.i99.i.i.i.i.i.i.i = load i64, ptr %.val58.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit100.i.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit100.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i89.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i81.i.i.i.i.i.i.i"
  %.val.i.i84.i.i.i.i.i.i.i = phi ptr [ %.val.pre.i.i83.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i81.i.i.i.i.i.i.i" ], [ %52, %if.true.i.i.i89.i.i.i.i.i.i.i ]
  %.unpack.i.i85.i.i.i.i.i.i.i = phi i64 [ %.unpack.i.i.i77.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i81.i.i.i.i.i.i.i" ], [ %.unpack.pre.i.i99.i.i.i.i.i.i.i, %if.true.i.i.i89.i.i.i.i.i.i.i ]
  %53 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i84.i.i.i.i.i.i.i, i64 %.unpack.i.i85.i.i.i.i.i.i.i
  store i64 4, ptr %53, align 8
  %.repack1.i.i.i.i86.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i84.i.i.i.i.i.i.i, i64 %.unpack.i.i85.i.i.i.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i86.i.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i87.i.i.i.i.i.i.i = load i64, ptr %.val58.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i88.i.i.i.i.i.i.i = add i64 %.unpack13.i.i87.i.i.i.i.i.i.i, 1
  store i64 %tmp.i.i.i88.i.i.i.i.i.i.i, ptr %.val58.i.i.i.i.i.i.i, align 8
  %54 = ashr i64 %.1213.i.i.i.i.i.i.i, 2
  %55 = and i64 %.1213.i.i.i.i.i.i.i, 12
  %tmp.i62.not.i.i.i.i.i.i.i = icmp eq i64 %55, 0
  br i1 %tmp.i62.not.i.i.i.i.i.i.i, label %while.body2.i.i.i.i.i.i.i, label %while.exit3.i.i.i.i.i.i.i

while.exit3.i.i.i.i.i.i.i:                        ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit100.i.i.i.i.i.i.i", %while.cond1.preheader.i.i.i.i.i.i.i
  %.1.lcssa.i.i.i.i.i.i.i = phi i64 [ %.043.lcssa.i.i.i.i.i.i.i, %while.cond1.preheader.i.i.i.i.i.i.i ], [ %54, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit100.i.i.i.i.i.i.i" ]
  %tmp.i64.i.i.i.i.i.i.i = and i64 %.1.lcssa.i.i.i.i.i.i.i, 1
  %tmp.i65.not.i.i.i.i.i.i.i = icmp eq i64 %tmp.i64.i.i.i.i.i.i.i, 0
  br i1 %tmp.i65.not.i.i.i.i.i.i.i, label %if.true.i.i.i.i.i.i.i, label %if.exit.i.i.i.i.i.i.i

if.true.i.i.i.i.i.i.i:                            ; preds = %while.exit3.i.i.i.i.i.i.i
  %56 = ashr i64 %.1.lcssa.i.i.i.i.i.i.i, 1
  %.val57.i.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  %.unpack.i.i.i101.i.i.i.i.i.i.i = load i64, ptr %.val57.i.i.i.i.i.i.i, align 8
  %.elt8.i.i.i102.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val57.i.i.i.i.i.i.i, i64 0, i32 1
  %.unpack9.unpack.i.i.i103.i.i.i.i.i.i.i = load i64, ptr %.elt8.i.i.i102.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i.i104.i.i.i.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i103.i.i.i.i.i.i.i, %.unpack.i.i.i101.i.i.i.i.i.i.i
  br i1 %tmp.i.not.i.i.i104.i.i.i.i.i.i.i, label %if.true.i.i.i113.i.i.i.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i105.i.i.i.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i105.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i.i.i.i.i
  %.phi.trans.insert.i.i106.i.i.i.i.i.i.i = getelementptr i8, ptr %.val57.i.i.i.i.i.i.i, i64 16
  %.val.pre.i.i107.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i106.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit124.i.i.i.i.i.i.i"

if.true.i.i.i113.i.i.i.i.i.i.i:                   ; preds = %if.true.i.i.i.i.i.i.i
  %tmp.i20.i.i.i114.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i101.i.i.i.i.i.i.i, 3
  %tmp.i21.i.i.i115.i.i.i.i.i.i.i = add i64 %tmp.i20.i.i.i114.i.i.i.i.i.i.i, 1
  %tmp.i22.i.i.i116.i.i.i.i.i.i.i = sdiv i64 %tmp.i21.i.i.i115.i.i.i.i.i.i.i, 2
  %tmp.i23.i.i.i117.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i115.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i118.i.i.i.i.i.i.i = select i1 %tmp.i23.i.i.i117.i.i.i.i.i.i.i, i64 %tmp.i22.i.i.i116.i.i.i.i.i.i.i, i64 1
  %.unpack6.elt7.i.i.i.i119.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val57.i.i.i.i.i.i.i, i64 0, i32 1, i32 1
  %.unpack6.unpack8.i.i.i.i120.i.i.i.i.i.i.i = load ptr, ptr %.unpack6.elt7.i.i.i.i119.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i.i.i121.i.i.i.i.i.i.i = mul i64 %spec.select.i.i.i118.i.i.i.i.i.i.i, 24
  %tmp.i24.i.i.i.i122.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i101.i.i.i.i.i.i.i, 24
  %57 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i120.i.i.i.i.i.i.i, i64 %tmp.i.i.i.i.i121.i.i.i.i.i.i.i, i64 %tmp.i24.i.i.i.i122.i.i.i.i.i.i.i)
  store i64 %spec.select.i.i.i118.i.i.i.i.i.i.i, ptr %.elt8.i.i.i102.i.i.i.i.i.i.i, align 8
  store ptr %57, ptr %.unpack6.elt7.i.i.i.i119.i.i.i.i.i.i.i, align 8
  %.unpack.pre.i.i123.i.i.i.i.i.i.i = load i64, ptr %.val57.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit124.i.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit124.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i113.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i105.i.i.i.i.i.i.i"
  %.val.i.i108.i.i.i.i.i.i.i = phi ptr [ %.val.pre.i.i107.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i105.i.i.i.i.i.i.i" ], [ %57, %if.true.i.i.i113.i.i.i.i.i.i.i ]
  %.unpack.i.i109.i.i.i.i.i.i.i = phi i64 [ %.unpack.i.i.i101.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i105.i.i.i.i.i.i.i" ], [ %.unpack.pre.i.i123.i.i.i.i.i.i.i, %if.true.i.i.i113.i.i.i.i.i.i.i ]
  %58 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i108.i.i.i.i.i.i.i, i64 %.unpack.i.i109.i.i.i.i.i.i.i
  store i64 2, ptr %58, align 8
  %.repack1.i.i.i.i110.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i108.i.i.i.i.i.i.i, i64 %.unpack.i.i109.i.i.i.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i110.i.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i111.i.i.i.i.i.i.i = load i64, ptr %.val57.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i112.i.i.i.i.i.i.i = add i64 %.unpack13.i.i111.i.i.i.i.i.i.i, 1
  store i64 %tmp.i.i.i112.i.i.i.i.i.i.i, ptr %.val57.i.i.i.i.i.i.i, align 8
  %.val6.pre.i.i.i.i.i.i.i.i = load i64, ptr %46, align 8
  %tmp.i.not.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val6.pre.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %tmp.i.not.i.i.i.i.i.i.i.i.i)
  %.val7.i.i.i.i.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i.i.i.i, align 8
  %.unpack.i.i.i125.i.i.i.i.i.i.i = load i64, ptr %.val7.i.i.i.i.i.i.i.i, align 8
  %spec.select.i.i.i.i.i.i.i.i = add nsw i64 %.val6.pre.i.i.i.i.i.i.i.i, -1
  %59 = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i.i.i.i.i.i.i, i64 %spec.select.i.i.i.i.i.i.i.i
  %.unpack.i.i.i129.i.i.i.i.i.i.i = load i64, ptr %59, align 8
  store i64 %.unpack.i.i.i129.i.i.i.i.i.i.i, ptr %.val7.i.i.i.i.i.i.i.i, align 8
  %.val6.pre.i143.i.i.i.i.i.i.i = load i64, ptr %46, align 8
  %spec.select.i144.i.i.i.i.i.i.i = add nsw i64 %.val6.pre.i143.i.i.i.i.i.i.i, -1
  %extract.t.i.i146.i.i.i.i.i.i.i = icmp sgt i64 %.val6.pre.i143.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %extract.t.i.i146.i.i.i.i.i.i.i)
  %.val7.i147.i.i.i.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i.i.i.i, align 8
  %60 = getelementptr { i64, ptr, ptr }, ptr %.val7.i147.i.i.i.i.i.i.i, i64 %spec.select.i144.i.i.i.i.i.i.i
  store i64 %.unpack.i.i.i125.i.i.i.i.i.i.i, ptr %60, align 8
  br label %if.exit.i.i.i.i.i.i.i

if.exit.i.i.i.i.i.i.i:                            ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit124.i.i.i.i.i.i.i", %while.exit3.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i = phi i64 [ %56, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit124.i.i.i.i.i.i.i" ], [ %.1.lcssa.i.i.i.i.i.i.i, %while.exit3.i.i.i.i.i.i.i ]
  %tmp.i68.not219.i.i.i.i.i.i.i = icmp slt i64 %.2.i.i.i.i.i.i.i, 9
  br i1 %tmp.i68.not219.i.i.i.i.i.i.i, label %while.exit6.i.i.i.i.i.i.i, label %while.cond7.preheader.i.i.i.i.i.i.i

while.cond7.preheader.i.i.i.i.i.i.i:              ; preds = %while.exit9.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i
  %.0221.i.i.i.i.i.i.i = phi i64 [ %tmp.i76.i.i.i.i.i.i.i, %while.exit9.i.i.i.i.i.i.i ], [ 3, %if.exit.i.i.i.i.i.i.i ]
  %.3220.i.i.i.i.i.i.i = phi i64 [ %.4.lcssa.i.i.i.i.i.i.i, %while.exit9.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i ]
  %tmp.i72215.i.i.i.i.i.i.i = srem i64 %.3220.i.i.i.i.i.i.i, %.0221.i.i.i.i.i.i.i
  %tmp.i73.not216.i.i.i.i.i.i.i = icmp eq i64 %tmp.i72215.i.i.i.i.i.i.i, 0
  br i1 %tmp.i73.not216.i.i.i.i.i.i.i, label %while.body8.i.i.i.i.i.i.i, label %while.exit9.i.i.i.i.i.i.i

while.exit6.i.i.i.i.i.i.i:                        ; preds = %while.exit9.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i
  %.3.lcssa.i.i.i.i.i.i.i = phi i64 [ %.2.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i.i ], [ %.4.lcssa.i.i.i.i.i.i.i, %while.exit9.i.i.i.i.i.i.i ]
  %tmp.i70.i.i.i.i.i.i.i = icmp slt i64 %.3.lcssa.i.i.i.i.i.i.i, 2
  %.unpack19.i.pre75.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  br i1 %tmp.i70.i.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.factorize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1939.exit.i.i.i.i.i.i", label %if.true10.i.i.i.i.i.i.i

while.body8.i.i.i.i.i.i.i:                        ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit183.i.i.i.i.i.i.i", %while.cond7.preheader.i.i.i.i.i.i.i
  %.4217.i.i.i.i.i.i.i = phi i64 [ %tmp.i75.i.i.i.i.i.i.i, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit183.i.i.i.i.i.i.i" ], [ %.3220.i.i.i.i.i.i.i, %while.cond7.preheader.i.i.i.i.i.i.i ]
  %.val56.i.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  %.unpack.i.i.i160.i.i.i.i.i.i.i = load i64, ptr %.val56.i.i.i.i.i.i.i, align 8
  %.elt8.i.i.i161.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val56.i.i.i.i.i.i.i, i64 0, i32 1
  %.unpack9.unpack.i.i.i162.i.i.i.i.i.i.i = load i64, ptr %.elt8.i.i.i161.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i.i163.i.i.i.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i162.i.i.i.i.i.i.i, %.unpack.i.i.i160.i.i.i.i.i.i.i
  br i1 %tmp.i.not.i.i.i163.i.i.i.i.i.i.i, label %if.true.i.i.i172.i.i.i.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i164.i.i.i.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i164.i.i.i.i.i.i.i": ; preds = %while.body8.i.i.i.i.i.i.i
  %.phi.trans.insert.i.i165.i.i.i.i.i.i.i = getelementptr i8, ptr %.val56.i.i.i.i.i.i.i, i64 16
  %.val.pre.i.i166.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i165.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit183.i.i.i.i.i.i.i"

if.true.i.i.i172.i.i.i.i.i.i.i:                   ; preds = %while.body8.i.i.i.i.i.i.i
  %tmp.i20.i.i.i173.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i160.i.i.i.i.i.i.i, 3
  %tmp.i21.i.i.i174.i.i.i.i.i.i.i = add i64 %tmp.i20.i.i.i173.i.i.i.i.i.i.i, 1
  %tmp.i22.i.i.i175.i.i.i.i.i.i.i = sdiv i64 %tmp.i21.i.i.i174.i.i.i.i.i.i.i, 2
  %tmp.i23.i.i.i176.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i174.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i177.i.i.i.i.i.i.i = select i1 %tmp.i23.i.i.i176.i.i.i.i.i.i.i, i64 %tmp.i22.i.i.i175.i.i.i.i.i.i.i, i64 1
  %.unpack6.elt7.i.i.i.i178.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.val56.i.i.i.i.i.i.i, i64 0, i32 1, i32 1
  %.unpack6.unpack8.i.i.i.i179.i.i.i.i.i.i.i = load ptr, ptr %.unpack6.elt7.i.i.i.i178.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i.i.i180.i.i.i.i.i.i.i = mul i64 %spec.select.i.i.i177.i.i.i.i.i.i.i, 24
  %tmp.i24.i.i.i.i181.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i160.i.i.i.i.i.i.i, 24
  %61 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i179.i.i.i.i.i.i.i, i64 %tmp.i.i.i.i.i180.i.i.i.i.i.i.i, i64 %tmp.i24.i.i.i.i181.i.i.i.i.i.i.i)
  store i64 %spec.select.i.i.i177.i.i.i.i.i.i.i, ptr %.elt8.i.i.i161.i.i.i.i.i.i.i, align 8
  store ptr %61, ptr %.unpack6.elt7.i.i.i.i178.i.i.i.i.i.i.i, align 8
  %.unpack.pre.i.i182.i.i.i.i.i.i.i = load i64, ptr %.val56.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit183.i.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit183.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i172.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i164.i.i.i.i.i.i.i"
  %.val.i.i167.i.i.i.i.i.i.i = phi ptr [ %.val.pre.i.i166.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i164.i.i.i.i.i.i.i" ], [ %61, %if.true.i.i.i172.i.i.i.i.i.i.i ]
  %.unpack.i.i168.i.i.i.i.i.i.i = phi i64 [ %.unpack.i.i.i160.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i164.i.i.i.i.i.i.i" ], [ %.unpack.pre.i.i182.i.i.i.i.i.i.i, %if.true.i.i.i172.i.i.i.i.i.i.i ]
  %62 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i167.i.i.i.i.i.i.i, i64 %.unpack.i.i168.i.i.i.i.i.i.i
  store i64 %.0221.i.i.i.i.i.i.i, ptr %62, align 8
  %.repack1.i.i.i.i169.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i167.i.i.i.i.i.i.i, i64 %.unpack.i.i168.i.i.i.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i169.i.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i170.i.i.i.i.i.i.i = load i64, ptr %.val56.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i171.i.i.i.i.i.i.i = add i64 %.unpack13.i.i170.i.i.i.i.i.i.i, 1
  store i64 %tmp.i.i.i171.i.i.i.i.i.i.i, ptr %.val56.i.i.i.i.i.i.i, align 8
  %tmp.i75.i.i.i.i.i.i.i = sdiv i64 %.4217.i.i.i.i.i.i.i, %.0221.i.i.i.i.i.i.i
  %tmp.i72.i.i.i.i.i.i.i = srem i64 %tmp.i75.i.i.i.i.i.i.i, %.0221.i.i.i.i.i.i.i
  %tmp.i73.not.i.i.i.i.i.i.i = icmp eq i64 %tmp.i72.i.i.i.i.i.i.i, 0
  br i1 %tmp.i73.not.i.i.i.i.i.i.i, label %while.body8.i.i.i.i.i.i.i, label %while.exit9.i.i.i.i.i.i.i

while.exit9.i.i.i.i.i.i.i:                        ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit183.i.i.i.i.i.i.i", %while.cond7.preheader.i.i.i.i.i.i.i
  %.4.lcssa.i.i.i.i.i.i.i = phi i64 [ %.3220.i.i.i.i.i.i.i, %while.cond7.preheader.i.i.i.i.i.i.i ], [ %tmp.i75.i.i.i.i.i.i.i, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit183.i.i.i.i.i.i.i" ]
  %tmp.i76.i.i.i.i.i.i.i = add i64 %.0221.i.i.i.i.i.i.i, 2
  %tmp.i67.i.i.i.i.i.i.i = mul i64 %tmp.i76.i.i.i.i.i.i.i, %tmp.i76.i.i.i.i.i.i.i
  %tmp.i68.not.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i67.i.i.i.i.i.i.i, %.4.lcssa.i.i.i.i.i.i.i
  br i1 %tmp.i68.not.i.i.i.i.i.i.i, label %while.exit6.i.i.i.i.i.i.i, label %while.cond7.preheader.i.i.i.i.i.i.i

if.true10.i.i.i.i.i.i.i:                          ; preds = %while.exit6.i.i.i.i.i.i.i
  %.unpack.i.i.i184.i.i.i.i.i.i.i = load i64, ptr %.unpack19.i.pre75.i.i.i.i.i.i, align 8
  %.elt8.i.i.i185.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.unpack19.i.pre75.i.i.i.i.i.i, i64 0, i32 1
  %.unpack9.unpack.i.i.i186.i.i.i.i.i.i.i = load i64, ptr %.elt8.i.i.i185.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i.i187.i.i.i.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i186.i.i.i.i.i.i.i, %.unpack.i.i.i184.i.i.i.i.i.i.i
  br i1 %tmp.i.not.i.i.i187.i.i.i.i.i.i.i, label %if.true.i.i.i196.i.i.i.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i188.i.i.i.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i188.i.i.i.i.i.i.i": ; preds = %if.true10.i.i.i.i.i.i.i
  %.phi.trans.insert.i.i189.i.i.i.i.i.i.i = getelementptr i8, ptr %.unpack19.i.pre75.i.i.i.i.i.i, i64 16
  %.val.pre.i.i190.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i189.i.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit207.i.i.i.i.i.i.i"

if.true.i.i.i196.i.i.i.i.i.i.i:                   ; preds = %if.true10.i.i.i.i.i.i.i
  %tmp.i20.i.i.i197.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i184.i.i.i.i.i.i.i, 3
  %tmp.i21.i.i.i198.i.i.i.i.i.i.i = add i64 %tmp.i20.i.i.i197.i.i.i.i.i.i.i, 1
  %tmp.i22.i.i.i199.i.i.i.i.i.i.i = sdiv i64 %tmp.i21.i.i.i198.i.i.i.i.i.i.i, 2
  %tmp.i23.i.i.i200.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i198.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i201.i.i.i.i.i.i.i = select i1 %tmp.i23.i.i.i200.i.i.i.i.i.i.i, i64 %tmp.i22.i.i.i199.i.i.i.i.i.i.i, i64 1
  %.unpack6.elt7.i.i.i.i202.i.i.i.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %.unpack19.i.pre75.i.i.i.i.i.i, i64 0, i32 1, i32 1
  %.unpack6.unpack8.i.i.i.i203.i.i.i.i.i.i.i = load ptr, ptr %.unpack6.elt7.i.i.i.i202.i.i.i.i.i.i.i, align 8
  %tmp.i.i.i.i.i204.i.i.i.i.i.i.i = mul i64 %spec.select.i.i.i201.i.i.i.i.i.i.i, 24
  %tmp.i24.i.i.i.i205.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i184.i.i.i.i.i.i.i, 24
  %63 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i203.i.i.i.i.i.i.i, i64 %tmp.i.i.i.i.i204.i.i.i.i.i.i.i, i64 %tmp.i24.i.i.i.i205.i.i.i.i.i.i.i)
  store i64 %spec.select.i.i.i201.i.i.i.i.i.i.i, ptr %.elt8.i.i.i185.i.i.i.i.i.i.i, align 8
  store ptr %63, ptr %.unpack6.elt7.i.i.i.i202.i.i.i.i.i.i.i, align 8
  %.unpack.pre.i.i206.i.i.i.i.i.i.i = load i64, ptr %.unpack19.i.pre75.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit207.i.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit207.i.i.i.i.i.i.i": ; preds = %if.true.i.i.i196.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i188.i.i.i.i.i.i.i"
  %.val.i.i191.i.i.i.i.i.i.i = phi ptr [ %.val.pre.i.i190.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i188.i.i.i.i.i.i.i" ], [ %63, %if.true.i.i.i196.i.i.i.i.i.i.i ]
  %.unpack.i.i192.i.i.i.i.i.i.i = phi i64 [ %.unpack.i.i.i184.i.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[std.internal.types.complex.complex]]].1901.exit_crit_edge.i.i188.i.i.i.i.i.i.i" ], [ %.unpack.pre.i.i206.i.i.i.i.i.i.i, %if.true.i.i.i196.i.i.i.i.i.i.i ]
  %64 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i191.i.i.i.i.i.i.i, i64 %.unpack.i.i192.i.i.i.i.i.i.i
  store i64 %.3.lcssa.i.i.i.i.i.i.i, ptr %64, align 8
  %.repack1.i.i.i.i193.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i191.i.i.i.i.i.i.i, i64 %.unpack.i.i192.i.i.i.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i193.i.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i194.i.i.i.i.i.i.i = load i64, ptr %.unpack19.i.pre75.i.i.i.i.i.i, align 8
  %tmp.i.i.i195.i.i.i.i.i.i.i = add i64 %.unpack13.i.i194.i.i.i.i.i.i.i, 1
  store i64 %tmp.i.i.i195.i.i.i.i.i.i.i, ptr %.unpack19.i.pre75.i.i.i.i.i.i, align 8
  %.unpack19.i.pre.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.factorize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1939.exit.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.factorize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1939.exit.i.i.i.i.i.i": ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit207.i.i.i.i.i.i.i", %while.exit6.i.i.i.i.i.i.i
  %.unpack19.i.i.i.i.i.i.i = phi ptr [ %.unpack19.i.pre75.i.i.i.i.i.i, %while.exit6.i.i.i.i.i.i.i ], [ %.unpack19.i.pre.i.i.i.i.i.i, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.add_factor:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1914.exit207.i.i.i.i.i.i.i" ]
  %.unpack19.val.i.i.i.i.i.i.i = load i64, ptr %.unpack19.i.i.i.i.i.i.i, align 8
  %.not46.i.i.i.i.i.i.i = icmp sgt i64 %.unpack19.val.i.i.i.i.i.i.i, 0
  %.unpack41.pre.i.i.i.i.i.i = load i64, ptr %45, align 8
  br i1 %.not46.i.i.i.i.i.i.i, label %imp_for.body.lr.ph.i.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.twsize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1943.exit.i.i.i.i.i.i"

imp_for.body.lr.ph.i.i.i.i.i.i.i:                 ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.factorize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1939.exit.i.i.i.i.i.i"
  %65 = getelementptr i8, ptr %.unpack19.i.i.i.i.i.i.i, i64 16
  %.val7.i.i57.i.i.i.i.i.i = load ptr, ptr %65, align 8
  br label %imp_for.body.i.i.i.i.i.i.i

imp_for.body.i.i.i.i.i.i.i:                       ; preds = %imp_for.body.i.i.i.i.i.i.i, %imp_for.body.lr.ph.i.i.i.i.i.i.i
  %66 = phi i64 [ 0, %imp_for.body.lr.ph.i.i.i.i.i.i.i ], [ %68, %imp_for.body.i.i.i.i.i.i.i ]
  %.048.i.i.i.i.i.i.i = phi i64 [ 0, %imp_for.body.lr.ph.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i.i ]
  %.01447.i.i.i.i.i.i.i = phi i64 [ 1, %imp_for.body.lr.ph.i.i.i.i.i.i.i ], [ %tmp.i.i.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i.i ]
  %67 = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i57.i.i.i.i.i.i, i64 %66
  %.unpack.i.i.i.i59.i.i.i.i.i.i = load i64, ptr %67, align 8
  %tmp.i.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i.i59.i.i.i.i.i.i, %.01447.i.i.i.i.i.i.i
  %tmp.i38.i.i.i.i.i.i.i = sdiv i64 %.unpack41.pre.i.i.i.i.i.i, %tmp.i.i.i.i.i.i.i.i
  %tmp.i39.i.i.i.i.i.i.i = add i64 %.unpack.i.i.i.i59.i.i.i.i.i.i, -1
  %tmp.i40.i.i.i.i.i.i.i = add i64 %tmp.i38.i.i.i.i.i.i.i, -1
  %tmp.i41.i.i.i.i.i.i.i = mul i64 %tmp.i40.i.i.i.i.i.i.i, %tmp.i39.i.i.i.i.i.i.i
  %tmp.i43.i.i.i.i.i.i.i = icmp slt i64 %.unpack.i.i.i.i59.i.i.i.i.i.i, 12
  %tmp.i44.i.i.i.i.i.i.i = select i1 %tmp.i43.i.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i59.i.i.i.i.i.i
  %tmp.i42.i.i.i.i.i.i.i = add i64 %tmp.i44.i.i.i.i.i.i.i, %.048.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = add i64 %tmp.i42.i.i.i.i.i.i.i, %tmp.i41.i.i.i.i.i.i.i
  %68 = add nuw nsw i64 %66, 1
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %68, %.unpack19.val.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.twsize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1943.exit.i.i.i.i.i.i", label %imp_for.body.i.i.i.i.i.i.i

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.twsize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1943.exit.i.i.i.i.i.i": ; preds = %imp_for.body.i.i.i.i.i.i.i, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.factorize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1939.exit.i.i.i.i.i.i"
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.factorize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1939.exit.i.i.i.i.i.i" ], [ %spec.select.i.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i.i ]
  %69 = shl i64 %.0.lcssa.i.i.i.i.i.i.i, 4
  %70 = tail call ptr @seq_alloc_atomic(i64 %69)
  store ptr %70, ptr %.elt14.i.i.i.i.i.i, align 8
  store i64 %.0.lcssa.i.i.i.i.i.i.i, ptr %.unpack15.elt18.i.i.i.i.i.i, align 8
  %71 = tail call fastcc { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } @"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__new__:1[int].1806"(i64 %.unpack41.pre.i.i.i.i.i.i)
  %.unpack133.i.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  %.unpack133.val.i.i.i.i.i.i.i = load i64, ptr %.unpack133.i.i.i.i.i.i.i, align 8
  %.not294.i.i.i.i.i.i.i = icmp sgt i64 %.unpack133.val.i.i.i.i.i.i.i, 0
  br i1 %.not294.i.i.i.i.i.i.i, label %imp_for.body.lr.ph.i61.i.i.i.i.i.i, label %entry.imp_for.exit_crit_edge.i.i.i.i.i.i.i

entry.imp_for.exit_crit_edge.i.i.i.i.i.i.i:       ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.twsize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1943.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %71, 3
  %.pre302.i.i.i.i.i.i.i = extractvalue { ptr, i64 } %.pre.i.i.i.i.i.i.i, 0
  %.pre303.i.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %71, 4
  %.pre305.i.i.i.i.i.i.i = extractvalue { ptr, i64 } %.pre303.i.i.i.i.i.i.i, 0
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.comp_twiddle:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1956.exit.i.i.i.i.i.i"

imp_for.body.lr.ph.i61.i.i.i.i.i.i:               ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.twsize:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1943.exit.i.i.i.i.i.i"
  %72 = getelementptr i8, ptr %.unpack133.i.i.i.i.i.i.i, i64 16
  %.fca.0.extract105.i.i.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %71, 0
  %.fca.1.extract106.i.i.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %71, 1
  %.fca.2.extract.i.i.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %71, 2
  %73 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %71, 3
  %.fca.0.extract.i.i212.i.i.i.i.i.i.i = extractvalue { ptr, i64 } %73, 0
  %74 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %71, 4
  %.fca.0.extract.i419.i.i.i.i.i.i.i.i = extractvalue { ptr, i64 } %74, 0
  br label %imp_for.body.i62.i.i.i.i.i.i

imp_for.body.i62.i.i.i.i.i.i:                     ; preds = %if.exit.i68.i.i.i.i.i.i, %imp_for.body.lr.ph.i61.i.i.i.i.i.i
  %75 = phi i64 [ 0, %imp_for.body.lr.ph.i61.i.i.i.i.i.i ], [ %91, %if.exit.i68.i.i.i.i.i.i ]
  %.0296.i.i.i.i.i.i.i = phi i64 [ 1, %imp_for.body.lr.ph.i61.i.i.i.i.i.i ], [ %tmp.i.i67.i.i.i.i.i.i, %if.exit.i68.i.i.i.i.i.i ]
  %.0115295.i.i.i.i.i.i.i = phi i64 [ 0, %imp_for.body.lr.ph.i61.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i, %if.exit.i68.i.i.i.i.i.i ]
  %.val6.pre.i.i63.i.i.i.i.i.i = load i64, ptr %.unpack133.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i.i64.i.i.i.i.i.i = icmp sgt i64 %.val6.pre.i.i63.i.i.i.i.i.i, %75
  tail call void @llvm.assume(i1 %tmp.i.not.i.i.i64.i.i.i.i.i.i)
  %.val7.i.i65.i.i.i.i.i.i = load ptr, ptr %72, align 8
  %76 = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i65.i.i.i.i.i.i, i64 %75
  %.unpack.i.i.i.i66.i.i.i.i.i.i = load i64, ptr %76, align 8
  %.elt1.i.i.i.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i65.i.i.i.i.i.i, i64 %75, i32 1
  %.unpack137.i.i.i.i.i.i.i = load i64, ptr %45, align 8
  %tmp.i.i67.i.i.i.i.i.i = mul i64 %.unpack.i.i.i.i66.i.i.i.i.i.i, %.0296.i.i.i.i.i.i.i
  %tmp.i165.i.i.i.i.i.i.i = sdiv i64 %.unpack137.i.i.i.i.i.i.i, %tmp.i.i67.i.i.i.i.i.i
  %.unpack147.unpack.i.i.i.i.i.i.i = load ptr, ptr %.elt14.i.i.i.i.i.i, align 8
  %77 = getelementptr { double, double }, ptr %.unpack147.unpack.i.i.i.i.i.i.i, i64 %.0115295.i.i.i.i.i.i.i
  store ptr %77, ptr %.elt1.i.i.i.i.i.i.i.i.i.i, align 8
  %tmp.i166.i.i.i.i.i.i.i = add i64 %.unpack.i.i.i.i66.i.i.i.i.i.i, -1
  %tmp.i167.i.i.i.i.i.i.i = add i64 %tmp.i165.i.i.i.i.i.i.i, -1
  %tmp.i168.i.i.i.i.i.i.i = mul i64 %tmp.i167.i.i.i.i.i.i.i, %tmp.i166.i.i.i.i.i.i.i
  %tmp.i169.i.i.i.i.i.i.i = add i64 %tmp.i168.i.i.i.i.i.i.i, %.0115295.i.i.i.i.i.i.i
  %.not153293.i.i.i.i.i.i.i = icmp sgt i64 %.unpack.i.i.i.i66.i.i.i.i.i.i, 1
  br i1 %.not153293.i.i.i.i.i.i.i, label %imp_for.cond5.preheader.lr.ph.i.i.i.i.i.i.i, label %if.exit.i68.i.i.i.i.i.i

imp_for.cond5.preheader.lr.ph.i.i.i.i.i.i.i:      ; preds = %imp_for.body.i62.i.i.i.i.i.i
  %.not154292.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i165.i.i.i.i.i.i.i, 1
  br i1 %.not154292.i.i.i.i.i.i.i, label %imp_for.cond5.preheader.us.i.i.i.i.i.i.i, label %imp_for.exit4.i.i.i.i.i.i.i

imp_for.cond5.preheader.us.i.i.i.i.i.i.i:         ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i.i, %imp_for.cond5.preheader.lr.ph.i.i.i.i.i.i.i
  %78 = phi i64 [ %89, %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i.i ], [ 1, %imp_for.cond5.preheader.lr.ph.i.i.i.i.i.i.i ]
  %tmp.i171.us.i.i.i.i.i.i.i = add nsw i64 %78, -1
  %tmp.i173.us.i.i.i.i.i.i.i = mul i64 %tmp.i171.us.i.i.i.i.i.i.i, %tmp.i167.i.i.i.i.i.i.i
  %tmp.i174.us.i.i.i.i.i.i.i = add i64 %tmp.i173.us.i.i.i.i.i.i.i, -1
  %tmp.i176.us.i.i.i.i.i.i.i = mul i64 %78, %.0296.i.i.i.i.i.i.i
  br label %imp_for.body6.us.i.i.i.i.i.i.i

imp_for.body6.us.i.i.i.i.i.i.i:                   ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.us.i.i.i.i.i.i.i", %imp_for.cond5.preheader.us.i.i.i.i.i.i.i
  %79 = phi i64 [ 1, %imp_for.cond5.preheader.us.i.i.i.i.i.i.i ], [ %88, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.us.i.i.i.i.i.i.i" ]
  %.val6.pre.i200.us.i.i.i.i.i.i.i = load i64, ptr %.unpack133.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i204.us.i.i.i.i.i.i.i = icmp sgt i64 %.val6.pre.i200.us.i.i.i.i.i.i.i, %75
  tail call void @llvm.assume(i1 %tmp.i.not.i.i204.us.i.i.i.i.i.i.i)
  %.val7.i206.us.i.i.i.i.i.i.i = load ptr, ptr %72, align 8
  %.elt1.i.i.i208.us.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i206.us.i.i.i.i.i.i.i, i64 %75, i32 1
  %.unpack2.i.i.i209.us.i.i.i.i.i.i.i = load ptr, ptr %.elt1.i.i.i208.us.i.i.i.i.i.i.i, align 8
  %tmp.i175.us.i.i.i.i.i.i.i = add i64 %tmp.i174.us.i.i.i.i.i.i.i, %79
  %tmp.i177.us.i.i.i.i.i.i.i = mul i64 %tmp.i176.us.i.i.i.i.i.i.i, %79
  %tmp.i.i.us.i.i.i.i.i.i.i = shl i64 %tmp.i177.us.i.i.i.i.i.i.i, 1
  %tmp.i403.not.i.us.i.i.i.i.i.i.i = icmp slt i64 %.fca.0.extract105.i.i.i.i.i.i.i.i, %tmp.i.i.us.i.i.i.i.i.i.i
  br i1 %tmp.i403.not.i.us.i.i.i.i.i.i.i, label %if.false.i.us.i.i.i.i.i.i.i, label %if.true.i.us.i.i.i.i.i.i.i

if.true.i.us.i.i.i.i.i.i.i:                       ; preds = %imp_for.body6.us.i.i.i.i.i.i.i
  %tmp.i404.i.us.i.i.i.i.i.i.i = and i64 %tmp.i177.us.i.i.i.i.i.i.i, %.fca.1.extract106.i.i.i.i.i.i.i.i
  %80 = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i404.i.us.i.i.i.i.i.i.i
  %.unpack.i.i.i213.us.i.i.i.i.i.i.i = load double, ptr %80, align 8
  %.elt1.i.i.i214.us.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i404.i.us.i.i.i.i.i.i.i, i32 1
  %.unpack2.i.i.i215.us.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i.i214.us.i.i.i.i.i.i.i, align 8
  %81 = ashr i64 %tmp.i177.us.i.i.i.i.i.i.i, %.fca.2.extract.i.i.i.i.i.i.i.i
  %82 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %81
  %.unpack.i.i420.i.us.i.i.i.i.i.i.i = load double, ptr %82, align 8
  %.elt1.i.i421.i.us.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %81, i32 1
  %.unpack2.i.i422.i.us.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i421.i.us.i.i.i.i.i.i.i, align 8
  %tmp.i405.i.us.i.i.i.i.i.i.i = fmul double %.unpack.i.i.i213.us.i.i.i.i.i.i.i, %.unpack.i.i420.i.us.i.i.i.i.i.i.i
  %tmp.i406.i.us.i.i.i.i.i.i.i = fmul double %.unpack2.i.i.i215.us.i.i.i.i.i.i.i, %.unpack2.i.i422.i.us.i.i.i.i.i.i.i
  %tmp.i407.i.us.i.i.i.i.i.i.i = fsub double %tmp.i405.i.us.i.i.i.i.i.i.i, %tmp.i406.i.us.i.i.i.i.i.i.i
  %tmp.i408.i.us.i.i.i.i.i.i.i = fmul double %.unpack2.i.i.i215.us.i.i.i.i.i.i.i, %.unpack.i.i420.i.us.i.i.i.i.i.i.i
  %tmp.i409.i.us.i.i.i.i.i.i.i = fmul double %.unpack.i.i.i213.us.i.i.i.i.i.i.i, %.unpack2.i.i422.i.us.i.i.i.i.i.i.i
  %tmp.i410.i.us.i.i.i.i.i.i.i = fadd double %tmp.i408.i.us.i.i.i.i.i.i.i, %tmp.i409.i.us.i.i.i.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.us.i.i.i.i.i.i.i"

if.false.i.us.i.i.i.i.i.i.i:                      ; preds = %imp_for.body6.us.i.i.i.i.i.i.i
  %tmp.i411.i.us.i.i.i.i.i.i.i = sub i64 %.fca.0.extract105.i.i.i.i.i.i.i.i, %tmp.i177.us.i.i.i.i.i.i.i
  %tmp.i412.i.us.i.i.i.i.i.i.i = and i64 %tmp.i411.i.us.i.i.i.i.i.i.i, %.fca.1.extract106.i.i.i.i.i.i.i.i
  %83 = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i412.i.us.i.i.i.i.i.i.i
  %.unpack.i.i424.i.us.i.i.i.i.i.i.i = load double, ptr %83, align 8
  %.elt1.i.i425.i.us.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i412.i.us.i.i.i.i.i.i.i, i32 1
  %.unpack2.i.i426.i.us.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i425.i.us.i.i.i.i.i.i.i, align 8
  %84 = ashr i64 %tmp.i411.i.us.i.i.i.i.i.i.i, %.fca.2.extract.i.i.i.i.i.i.i.i
  %85 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %84
  %.unpack.i.i428.i.us.i.i.i.i.i.i.i = load double, ptr %85, align 8
  %.elt1.i.i429.i.us.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %84, i32 1
  %.unpack2.i.i430.i.us.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i429.i.us.i.i.i.i.i.i.i, align 8
  %tmp.i413.i.us.i.i.i.i.i.i.i = fmul double %.unpack.i.i424.i.us.i.i.i.i.i.i.i, %.unpack.i.i428.i.us.i.i.i.i.i.i.i
  %tmp.i414.i.us.i.i.i.i.i.i.i = fmul double %.unpack2.i.i426.i.us.i.i.i.i.i.i.i, %.unpack2.i.i430.i.us.i.i.i.i.i.i.i
  %tmp.i415.i.us.i.i.i.i.i.i.i = fsub double %tmp.i413.i.us.i.i.i.i.i.i.i, %tmp.i414.i.us.i.i.i.i.i.i.i
  %tmp.i416.i.us.i.i.i.i.i.i.i = fmul double %.unpack.i.i424.i.us.i.i.i.i.i.i.i, %.unpack2.i.i430.i.us.i.i.i.i.i.i.i
  %tmp.i417.i.us.i.i.i.i.i.i.i = fmul double %.unpack2.i.i426.i.us.i.i.i.i.i.i.i, %.unpack.i.i428.i.us.i.i.i.i.i.i.i
  %tmp.i418.i.us.i.i.i.i.i.i.i = fadd double %tmp.i417.i.us.i.i.i.i.i.i.i, %tmp.i416.i.us.i.i.i.i.i.i.i
  %86 = fneg double %tmp.i418.i.us.i.i.i.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.us.i.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.us.i.i.i.i.i.i.i": ; preds = %if.false.i.us.i.i.i.i.i.i.i, %if.true.i.us.i.i.i.i.i.i.i
  %tmp.i407.pn.i.us.i.i.i.i.i.i.i = phi double [ %tmp.i407.i.us.i.i.i.i.i.i.i, %if.true.i.us.i.i.i.i.i.i.i ], [ %tmp.i415.i.us.i.i.i.i.i.i.i, %if.false.i.us.i.i.i.i.i.i.i ]
  %tmp.i410.pn.i.us.i.i.i.i.i.i.i = phi double [ %tmp.i410.i.us.i.i.i.i.i.i.i, %if.true.i.us.i.i.i.i.i.i.i ], [ %86, %if.false.i.us.i.i.i.i.i.i.i ]
  %87 = getelementptr { double, double }, ptr %.unpack2.i.i.i209.us.i.i.i.i.i.i.i, i64 %tmp.i175.us.i.i.i.i.i.i.i
  store double %tmp.i407.pn.i.us.i.i.i.i.i.i.i, ptr %87, align 8
  %.repack1.i.us.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.unpack2.i.i.i209.us.i.i.i.i.i.i.i, i64 %tmp.i175.us.i.i.i.i.i.i.i, i32 1
  store double %tmp.i410.pn.i.us.i.i.i.i.i.i.i, ptr %.repack1.i.us.i.i.i.i.i.i.i, align 8
  %88 = add nuw nsw i64 %79, 1
  %exitcond.not.i71.i.i.i.i.i.i = icmp eq i64 %88, %tmp.i165.i.i.i.i.i.i.i
  br i1 %exitcond.not.i71.i.i.i.i.i.i, label %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i.i, label %imp_for.body6.us.i.i.i.i.i.i.i

imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i.i: ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.us.i.i.i.i.i.i.i"
  %89 = add nuw nsw i64 %78, 1
  %exitcond299.not.i.i.i.i.i.i.i = icmp eq i64 %89, %.unpack.i.i.i.i66.i.i.i.i.i.i
  br i1 %exitcond299.not.i.i.i.i.i.i.i, label %imp_for.exit4.i.i.i.i.i.i.i, label %imp_for.cond5.preheader.us.i.i.i.i.i.i.i

imp_for.exit4.i.i.i.i.i.i.i:                      ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i.i, %imp_for.cond5.preheader.lr.ph.i.i.i.i.i.i.i
  %tmp.i170.i.i.i.i.i.i.i = icmp slt i64 %.unpack.i.i.i.i66.i.i.i.i.i.i, 12
  br i1 %tmp.i170.i.i.i.i.i.i.i, label %if.exit.i68.i.i.i.i.i.i, label %if.true.i70.i.i.i.i.i.i

if.true.i70.i.i.i.i.i.i:                          ; preds = %imp_for.exit4.i.i.i.i.i.i.i
  %.val6.pre.i216.i.i.i.i.i.i.i = load i64, ptr %.unpack133.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i220.i.i.i.i.i.i.i = icmp sgt i64 %.val6.pre.i216.i.i.i.i.i.i.i, %75
  tail call void @llvm.assume(i1 %tmp.i.not.i.i220.i.i.i.i.i.i.i)
  %.val7.i222.i.i.i.i.i.i.i = load ptr, ptr %72, align 8
  %.elt3.i.i.i226.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i222.i.i.i.i.i.i.i, i64 %75, i32 2
  %.unpack158.unpack.i.i.i.i.i.i.i = load ptr, ptr %.elt14.i.i.i.i.i.i, align 8
  %90 = getelementptr { double, double }, ptr %.unpack158.unpack.i.i.i.i.i.i.i, i64 %tmp.i169.i.i.i.i.i.i.i
  store ptr %90, ptr %.elt3.i.i.i226.i.i.i.i.i.i.i, align 8
  %tmp.i180.i.i.i.i.i.i.i = mul i64 %tmp.i165.i.i.i.i.i.i.i, %.0296.i.i.i.i.i.i.i
  br label %imp_for.body10.i.i.i.i.i.i.i

if.exit.loopexit.i.i.i.i.i.i.i:                   ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit291.i.i.i.i.i.i.i"
  %tmp.i178.i.i.i.i.i.i.i = add i64 %tmp.i169.i.i.i.i.i.i.i, %.unpack.i.i.i.i66.i.i.i.i.i.i
  br label %if.exit.i68.i.i.i.i.i.i

if.exit.i68.i.i.i.i.i.i:                          ; preds = %if.exit.loopexit.i.i.i.i.i.i.i, %imp_for.exit4.i.i.i.i.i.i.i, %imp_for.body.i62.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = phi i64 [ %tmp.i169.i.i.i.i.i.i.i, %imp_for.exit4.i.i.i.i.i.i.i ], [ %tmp.i178.i.i.i.i.i.i.i, %if.exit.loopexit.i.i.i.i.i.i.i ], [ %tmp.i169.i.i.i.i.i.i.i, %imp_for.body.i62.i.i.i.i.i.i ]
  %91 = add nuw nsw i64 %75, 1
  %exitcond301.not.i.i.i.i.i.i.i = icmp eq i64 %91, %.unpack133.val.i.i.i.i.i.i.i
  br i1 %exitcond301.not.i.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.comp_twiddle:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1956.exit.i.i.i.i.i.i", label %imp_for.body.i62.i.i.i.i.i.i

imp_for.body10.i.i.i.i.i.i.i:                     ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit291.i.i.i.i.i.i.i", %if.true.i70.i.i.i.i.i.i
  %92 = phi i64 [ 0, %if.true.i70.i.i.i.i.i.i ], [ %101, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit291.i.i.i.i.i.i.i" ]
  %.val6.pre.i237.i.i.i.i.i.i.i = load i64, ptr %.unpack133.i.i.i.i.i.i.i, align 8
  %tmp.i.not.i.i241.i.i.i.i.i.i.i = icmp sgt i64 %.val6.pre.i237.i.i.i.i.i.i.i, %75
  tail call void @llvm.assume(i1 %tmp.i.not.i.i241.i.i.i.i.i.i.i)
  %.val7.i243.i.i.i.i.i.i.i = load ptr, ptr %72, align 8
  %.elt3.i.i.i247.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i243.i.i.i.i.i.i.i, i64 %75, i32 2
  %.unpack4.i.i.i248.i.i.i.i.i.i.i = load ptr, ptr %.elt3.i.i.i247.i.i.i.i.i.i.i, align 8
  %tmp.i181.i.i.i.i.i.i.i = mul i64 %tmp.i180.i.i.i.i.i.i.i, %92
  %tmp.i.i252.i.i.i.i.i.i.i = shl i64 %tmp.i181.i.i.i.i.i.i.i, 1
  %tmp.i403.not.i253.i.i.i.i.i.i.i = icmp slt i64 %.fca.0.extract105.i.i.i.i.i.i.i.i, %tmp.i.i252.i.i.i.i.i.i.i
  br i1 %tmp.i403.not.i253.i.i.i.i.i.i.i, label %if.false.i274.i.i.i.i.i.i.i, label %if.true.i254.i.i.i.i.i.i.i

if.true.i254.i.i.i.i.i.i.i:                       ; preds = %imp_for.body10.i.i.i.i.i.i.i
  %tmp.i404.i255.i.i.i.i.i.i.i = and i64 %tmp.i181.i.i.i.i.i.i.i, %.fca.1.extract106.i.i.i.i.i.i.i.i
  %93 = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i404.i255.i.i.i.i.i.i.i
  %.unpack.i.i.i257.i.i.i.i.i.i.i = load double, ptr %93, align 8
  %.elt1.i.i.i258.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i404.i255.i.i.i.i.i.i.i, i32 1
  %.unpack2.i.i.i259.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i.i258.i.i.i.i.i.i.i, align 8
  %94 = ashr i64 %tmp.i181.i.i.i.i.i.i.i, %.fca.2.extract.i.i.i.i.i.i.i.i
  %95 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %94
  %.unpack.i.i420.i261.i.i.i.i.i.i.i = load double, ptr %95, align 8
  %.elt1.i.i421.i262.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %94, i32 1
  %.unpack2.i.i422.i263.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i421.i262.i.i.i.i.i.i.i, align 8
  %tmp.i405.i264.i.i.i.i.i.i.i = fmul double %.unpack.i.i.i257.i.i.i.i.i.i.i, %.unpack.i.i420.i261.i.i.i.i.i.i.i
  %tmp.i406.i265.i.i.i.i.i.i.i = fmul double %.unpack2.i.i.i259.i.i.i.i.i.i.i, %.unpack2.i.i422.i263.i.i.i.i.i.i.i
  %tmp.i407.i266.i.i.i.i.i.i.i = fsub double %tmp.i405.i264.i.i.i.i.i.i.i, %tmp.i406.i265.i.i.i.i.i.i.i
  %tmp.i408.i267.i.i.i.i.i.i.i = fmul double %.unpack2.i.i.i259.i.i.i.i.i.i.i, %.unpack.i.i420.i261.i.i.i.i.i.i.i
  %tmp.i409.i268.i.i.i.i.i.i.i = fmul double %.unpack.i.i.i257.i.i.i.i.i.i.i, %.unpack2.i.i422.i263.i.i.i.i.i.i.i
  %tmp.i410.i269.i.i.i.i.i.i.i = fadd double %tmp.i408.i267.i.i.i.i.i.i.i, %tmp.i409.i268.i.i.i.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit291.i.i.i.i.i.i.i"

if.false.i274.i.i.i.i.i.i.i:                      ; preds = %imp_for.body10.i.i.i.i.i.i.i
  %tmp.i411.i275.i.i.i.i.i.i.i = sub i64 %.fca.0.extract105.i.i.i.i.i.i.i.i, %tmp.i181.i.i.i.i.i.i.i
  %tmp.i412.i276.i.i.i.i.i.i.i = and i64 %tmp.i411.i275.i.i.i.i.i.i.i, %.fca.1.extract106.i.i.i.i.i.i.i.i
  %96 = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i412.i276.i.i.i.i.i.i.i
  %.unpack.i.i424.i278.i.i.i.i.i.i.i = load double, ptr %96, align 8
  %.elt1.i.i425.i279.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i212.i.i.i.i.i.i.i, i64 %tmp.i412.i276.i.i.i.i.i.i.i, i32 1
  %.unpack2.i.i426.i280.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i425.i279.i.i.i.i.i.i.i, align 8
  %97 = ashr i64 %tmp.i411.i275.i.i.i.i.i.i.i, %.fca.2.extract.i.i.i.i.i.i.i.i
  %98 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %97
  %.unpack.i.i428.i282.i.i.i.i.i.i.i = load double, ptr %98, align 8
  %.elt1.i.i429.i283.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i.i.i, i64 %97, i32 1
  %.unpack2.i.i430.i284.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i429.i283.i.i.i.i.i.i.i, align 8
  %tmp.i413.i285.i.i.i.i.i.i.i = fmul double %.unpack.i.i424.i278.i.i.i.i.i.i.i, %.unpack.i.i428.i282.i.i.i.i.i.i.i
  %tmp.i414.i286.i.i.i.i.i.i.i = fmul double %.unpack2.i.i426.i280.i.i.i.i.i.i.i, %.unpack2.i.i430.i284.i.i.i.i.i.i.i
  %tmp.i415.i287.i.i.i.i.i.i.i = fsub double %tmp.i413.i285.i.i.i.i.i.i.i, %tmp.i414.i286.i.i.i.i.i.i.i
  %tmp.i416.i288.i.i.i.i.i.i.i = fmul double %.unpack.i.i424.i278.i.i.i.i.i.i.i, %.unpack2.i.i430.i284.i.i.i.i.i.i.i
  %tmp.i417.i289.i.i.i.i.i.i.i = fmul double %.unpack2.i.i426.i280.i.i.i.i.i.i.i, %.unpack.i.i428.i282.i.i.i.i.i.i.i
  %tmp.i418.i290.i.i.i.i.i.i.i = fadd double %tmp.i417.i289.i.i.i.i.i.i.i, %tmp.i416.i288.i.i.i.i.i.i.i
  %99 = fneg double %tmp.i418.i290.i.i.i.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit291.i.i.i.i.i.i.i"

"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit291.i.i.i.i.i.i.i": ; preds = %if.false.i274.i.i.i.i.i.i.i, %if.true.i254.i.i.i.i.i.i.i
  %tmp.i407.pn.i270.i.i.i.i.i.i.i = phi double [ %tmp.i407.i266.i.i.i.i.i.i.i, %if.true.i254.i.i.i.i.i.i.i ], [ %tmp.i415.i287.i.i.i.i.i.i.i, %if.false.i274.i.i.i.i.i.i.i ]
  %tmp.i410.pn.i271.i.i.i.i.i.i.i = phi double [ %tmp.i410.i269.i.i.i.i.i.i.i, %if.true.i254.i.i.i.i.i.i.i ], [ %99, %if.false.i274.i.i.i.i.i.i.i ]
  %100 = getelementptr { double, double }, ptr %.unpack4.i.i.i248.i.i.i.i.i.i.i, i64 %92
  store double %tmp.i407.pn.i270.i.i.i.i.i.i.i, ptr %100, align 8
  %.repack1.i183.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.unpack4.i.i.i248.i.i.i.i.i.i.i, i64 %92, i32 1
  store double %tmp.i410.pn.i271.i.i.i.i.i.i.i, ptr %.repack1.i183.i.i.i.i.i.i.i, align 8
  %101 = add nuw nsw i64 %92, 1
  %exitcond300.not.i.i.i.i.i.i.i = icmp eq i64 %101, %.unpack.i.i.i.i66.i.i.i.i.i.i
  br i1 %exitcond300.not.i.i.i.i.i.i.i, label %if.exit.loopexit.i.i.i.i.i.i.i, label %imp_for.body10.i.i.i.i.i.i.i

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.comp_twiddle:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1956.exit.i.i.i.i.i.i": ; preds = %if.exit.i68.i.i.i.i.i.i, %entry.imp_for.exit_crit_edge.i.i.i.i.i.i.i
  %.fca.0.extract.i34.i.pre-phi.i.i.i.i.i.i.i = phi ptr [ %.pre305.i.i.i.i.i.i.i, %entry.imp_for.exit_crit_edge.i.i.i.i.i.i.i ], [ %.fca.0.extract.i419.i.i.i.i.i.i.i.i, %if.exit.i68.i.i.i.i.i.i ]
  %.fca.0.extract.i.i.pre-phi.i.i.i.i.i.i.i = phi ptr [ %.pre302.i.i.i.i.i.i.i, %entry.imp_for.exit_crit_edge.i.i.i.i.i.i.i ], [ %.fca.0.extract.i.i212.i.i.i.i.i.i.i, %if.exit.i68.i.i.i.i.i.i ]
  %102 = tail call {} @seq_free(ptr %.fca.0.extract.i.i.pre-phi.i.i.i.i.i.i.i)
  %103 = tail call {} @seq_free(ptr %.fca.0.extract.i34.i.pre-phi.i.i.i.i.i.i.i)
  br label %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.__init__:1[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1970.exit.i.i.i.i.i"

"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.__init__:1[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1970.exit.i.i.i.i.i": ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.comp_twiddle:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]].1956.exit.i.i.i.i.i.i", %"std.numpy.fft.pocketfft._good_size_cmplx:0[int].1866.exit.i.i.i.i.i"
  %tmp.i327.i.i.i.i.i = sdiv i64 %.unpack171.i.i.i.i.i.i, 2
  %tmp.i329.i.i.i.i.i = add i64 %tmp.i328.i.i.i.i.i, %tmp.i327.i.i.i.i.i
  %104 = shl i64 %tmp.i329.i.i.i.i.i, 4
  %105 = tail call ptr @seq_alloc_atomic(i64 %104)
  %106 = getelementptr { double, double }, ptr %105, i64 %1
  store ptr %45, ptr %.elt165.i.i.i.i.i, align 8
  store ptr %105, ptr %.elt167.i.i.i.i.i, align 8
  store i64 %tmp.i329.i.i.i.i.i, ptr %.unpack168.elt173.i.i.i.i.i, align 8
  store ptr %105, ptr %.elt169.i.i.i.i.i, align 8
  store ptr %106, ptr %.elt171.i.i.i.i.i, align 8
  %107 = tail call fastcc { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } @"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__new__:1[int].1806"(i64 %tmp.i82.i.i.i.i)
  store double 1.000000e+00, ptr %105, align 8
  %.repack1.i.i.i.i.i.i = getelementptr { double, double }, ptr %105, i64 0, i32 1
  store double 0.000000e+00, ptr %.repack1.i.i.i.i.i.i, align 8
  br i1 %.not373.i.i.i.i.i, label %imp_for.body.lr.ph.i.i.i.i.i, label %imp_for.exit.i.i.i.i.i

imp_for.body.lr.ph.i.i.i.i.i:                     ; preds = %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.__init__:1[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1970.exit.i.i.i.i.i"
  %.fca.0.extract105.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %107, 0
  %.fca.1.extract106.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %107, 1
  %.fca.2.extract.i.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %107, 2
  %108 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %107, 3
  %.fca.0.extract.i.i.i.i.i.i.i = extractvalue { ptr, i64 } %108, 0
  %109 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %107, 4
  %.fca.0.extract.i419.i.i.i.i.i.i = extractvalue { ptr, i64 } %109, 0
  br label %imp_for.body.i.i.i.i.i

imp_for.body.i.i.i.i.i:                           ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.i.i.i.i.i", %imp_for.body.lr.ph.i.i.i.i.i
  %110 = phi i64 [ 1, %imp_for.body.lr.ph.i.i.i.i.i ], [ %121, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.i.i.i.i.i" ]
  %.0374.i.i.i.i.i = phi i64 [ 0, %imp_for.body.lr.ph.i.i.i.i.i ], [ %spec.select.i161.i.i.i.i, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.i.i.i.i.i" ]
  %tmp.i331.i.i.i.i.i = shl nuw i64 %110, 1
  %tmp.i332.i.i.i.i.i = add i64 %.0374.i.i.i.i.i, -1
  %tmp.i333.i.i.i.i.i = add i64 %tmp.i332.i.i.i.i.i, %tmp.i331.i.i.i.i.i
  %tmp.i335.not.i.i.i.i.i = icmp sgt i64 %tmp.i82.i.i.i.i, %tmp.i333.i.i.i.i.i
  %tmp.i338.i.i.i.i.i = select i1 %tmp.i335.not.i.i.i.i.i, i64 0, i64 %tmp.i82.i.i.i.i
  %spec.select.i161.i.i.i.i = sub i64 %tmp.i333.i.i.i.i.i, %tmp.i338.i.i.i.i.i
  %tmp.i.i357.i.i.i.i.i = shl i64 %spec.select.i161.i.i.i.i, 1
  %tmp.i403.not.i.i.i.i.i.i = icmp slt i64 %.fca.0.extract105.i.i.i.i.i.i, %tmp.i.i357.i.i.i.i.i
  br i1 %tmp.i403.not.i.i.i.i.i.i, label %if.false.i.i.i.i.i.i, label %if.true.i.i.i.i.i.i

imp_for.exit.loopexit.i.i.i.i.i:                  ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.i.i.i.i.i"
  %.unpack.i.pre.i.i.i.i.i = load double, ptr %105, align 8
  %.unpack2.i.pre.i.i.i.i.i = load double, ptr %.repack1.i.i.i.i.i.i, align 8
  br label %imp_for.exit.i.i.i.i.i

imp_for.exit.i.i.i.i.i:                           ; preds = %imp_for.exit.loopexit.i.i.i.i.i, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.__init__:1[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1970.exit.i.i.i.i.i"
  %.unpack2.i.i.i.i.i.i = phi double [ %.unpack2.i.pre.i.i.i.i.i, %imp_for.exit.loopexit.i.i.i.i.i ], [ 0.000000e+00, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.__init__:1[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1970.exit.i.i.i.i.i" ]
  %.unpack.i.i.i.i.i.i = phi double [ %.unpack.i.pre.i.i.i.i.i, %imp_for.exit.loopexit.i.i.i.i.i ], [ 1.000000e+00, %"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.__init__:1[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],int].1970.exit.i.i.i.i.i" ]
  %111 = shl i64 %.unpack171.i.i.i.i.i.i, 4
  %112 = tail call ptr @seq_alloc_atomic(i64 %111)
  %y.i.i.i.i.i.i.i = sitofp i64 %.unpack171.i.i.i.i.i.i to double
  %tmp.i336.i.i.i.i.i = fdiv double 1.000000e+00, %y.i.i.i.i.i.i.i
  %tmp.i.i.i356.i.i.i.i.i = fmul double %tmp.i336.i.i.i.i.i, %.unpack.i.i.i.i.i.i
  %tmp.i48.i.i.i.i.i.i.i = fmul double %.unpack2.i.i.i.i.i.i, 0.000000e+00
  %tmp.i49.i.i.i.i.i.i.i = fsub double %tmp.i.i.i356.i.i.i.i.i, %tmp.i48.i.i.i.i.i.i.i
  %tmp.i50.i.i.i.i.i.i.i = fmul double %.unpack.i.i.i.i.i.i, 0.000000e+00
  %tmp.i51.i.i.i.i.i.i.i = fmul double %tmp.i336.i.i.i.i.i, %.unpack2.i.i.i.i.i.i
  %tmp.i52.i.i.i.i.i.i.i = fadd double %tmp.i51.i.i.i.i.i.i.i, %tmp.i50.i.i.i.i.i.i.i
  store double %tmp.i49.i.i.i.i.i.i.i, ptr %112, align 8
  %.repack1.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %112, i64 0, i32 1
  store double %tmp.i52.i.i.i.i.i.i.i, ptr %.repack1.i.i.i.i.i.i.i, align 8
  br i1 %.not373.i.i.i.i.i, label %imp_for.body2.i.i.i.i.i, label %while.cond.preheader.i158.i.i.i.i

if.true.i.i.i.i.i.i:                              ; preds = %imp_for.body.i.i.i.i.i
  %tmp.i404.i.i.i.i.i.i = and i64 %spec.select.i161.i.i.i.i, %.fca.1.extract106.i.i.i.i.i.i
  %113 = getelementptr { double, double }, ptr %.fca.0.extract.i.i.i.i.i.i.i, i64 %tmp.i404.i.i.i.i.i.i
  %.unpack.i.i.i.i.i.i.i.i = load double, ptr %113, align 8
  %.elt1.i.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i.i.i.i.i.i, i64 %tmp.i404.i.i.i.i.i.i, i32 1
  %.unpack2.i.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i.i.i.i.i.i.i, align 8
  %114 = ashr i64 %spec.select.i161.i.i.i.i, %.fca.2.extract.i.i.i.i.i.i
  %115 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i, i64 %114
  %.unpack.i.i420.i.i.i.i.i.i = load double, ptr %115, align 8
  %.elt1.i.i421.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i, i64 %114, i32 1
  %.unpack2.i.i422.i.i.i.i.i.i = load double, ptr %.elt1.i.i421.i.i.i.i.i.i, align 8
  %tmp.i405.i.i.i.i.i.i = fmul double %.unpack.i.i.i.i.i.i.i.i, %.unpack.i.i420.i.i.i.i.i.i
  %tmp.i406.i.i.i.i.i.i = fmul double %.unpack2.i.i.i.i.i.i.i.i, %.unpack2.i.i422.i.i.i.i.i.i
  %tmp.i407.i.i.i.i.i.i = fsub double %tmp.i405.i.i.i.i.i.i, %tmp.i406.i.i.i.i.i.i
  %tmp.i408.i.i.i.i.i.i = fmul double %.unpack2.i.i.i.i.i.i.i.i, %.unpack.i.i420.i.i.i.i.i.i
  %tmp.i409.i.i.i.i.i.i = fmul double %.unpack.i.i.i.i.i.i.i.i, %.unpack2.i.i422.i.i.i.i.i.i
  %tmp.i410.i.i.i.i.i.i = fadd double %tmp.i408.i.i.i.i.i.i, %tmp.i409.i.i.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.i.i.i.i.i"

if.false.i.i.i.i.i.i:                             ; preds = %imp_for.body.i.i.i.i.i
  %tmp.i411.i.i.i.i.i.i = sub i64 %.fca.0.extract105.i.i.i.i.i.i, %spec.select.i161.i.i.i.i
  %tmp.i412.i.i.i.i.i.i = and i64 %tmp.i411.i.i.i.i.i.i, %.fca.1.extract106.i.i.i.i.i.i
  %116 = getelementptr { double, double }, ptr %.fca.0.extract.i.i.i.i.i.i.i, i64 %tmp.i412.i.i.i.i.i.i
  %.unpack.i.i424.i.i.i.i.i.i = load double, ptr %116, align 8
  %.elt1.i.i425.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i.i.i.i.i.i, i64 %tmp.i412.i.i.i.i.i.i, i32 1
  %.unpack2.i.i426.i.i.i.i.i.i = load double, ptr %.elt1.i.i425.i.i.i.i.i.i, align 8
  %117 = ashr i64 %tmp.i411.i.i.i.i.i.i, %.fca.2.extract.i.i.i.i.i.i
  %118 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i, i64 %117
  %.unpack.i.i428.i.i.i.i.i.i = load double, ptr %118, align 8
  %.elt1.i.i429.i.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i.i, i64 %117, i32 1
  %.unpack2.i.i430.i.i.i.i.i.i = load double, ptr %.elt1.i.i429.i.i.i.i.i.i, align 8
  %tmp.i413.i.i.i.i.i.i = fmul double %.unpack.i.i424.i.i.i.i.i.i, %.unpack.i.i428.i.i.i.i.i.i
  %tmp.i414.i.i.i.i.i.i = fmul double %.unpack2.i.i426.i.i.i.i.i.i, %.unpack2.i.i430.i.i.i.i.i.i
  %tmp.i415.i.i.i.i.i.i = fsub double %tmp.i413.i.i.i.i.i.i, %tmp.i414.i.i.i.i.i.i
  %tmp.i416.i.i.i.i.i.i = fmul double %.unpack.i.i424.i.i.i.i.i.i, %.unpack2.i.i430.i.i.i.i.i.i
  %tmp.i417.i.i.i.i.i.i = fmul double %.unpack2.i.i426.i.i.i.i.i.i, %.unpack.i.i428.i.i.i.i.i.i
  %tmp.i418.i.i.i.i.i.i = fadd double %tmp.i417.i.i.i.i.i.i, %tmp.i416.i.i.i.i.i.i
  %119 = fneg double %tmp.i418.i.i.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.i.i.i.i.i"

"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit.i.i.i.i.i": ; preds = %if.false.i.i.i.i.i.i, %if.true.i.i.i.i.i.i
  %tmp.i407.pn.i.i.i.i.i.i = phi double [ %tmp.i407.i.i.i.i.i.i, %if.true.i.i.i.i.i.i ], [ %tmp.i415.i.i.i.i.i.i, %if.false.i.i.i.i.i.i ]
  %tmp.i410.pn.i.i.i.i.i.i = phi double [ %tmp.i410.i.i.i.i.i.i, %if.true.i.i.i.i.i.i ], [ %119, %if.false.i.i.i.i.i.i ]
  %120 = getelementptr { double, double }, ptr %105, i64 %110
  store double %tmp.i407.pn.i.i.i.i.i.i, ptr %120, align 8
  %.repack1.i340.i.i.i.i.i = getelementptr { double, double }, ptr %105, i64 %110, i32 1
  store double %tmp.i410.pn.i.i.i.i.i.i, ptr %.repack1.i340.i.i.i.i.i, align 8
  %121 = add nuw nsw i64 %110, 1
  %exitcond.not.i.i.i.i.i = icmp eq i64 %121, %1
  br i1 %exitcond.not.i.i.i.i.i, label %imp_for.exit.loopexit.i.i.i.i.i, label %imp_for.body.i.i.i.i.i

while.cond.preheader.i158.i.i.i.i:                ; preds = %imp_for.body2.i.i.i.i.i, %imp_for.exit.i.i.i.i.i
  %tmp.i346.i.i.i.i.i = sub i64 %.unpack171.i.i.i.i.i.i, %1
  %tmp.i347.not376.i.i.i.i.i = icmp slt i64 %tmp.i346.i.i.i.i.i, %1
  br i1 %tmp.i347.not376.i.i.i.i.i, label %while.exit.i.i.i.i.i, label %while.body.i160.i.i.i.i

imp_for.body2.i.i.i.i.i:                          ; preds = %imp_for.body2.i.i.i.i.i, %imp_for.exit.i.i.i.i.i
  %122 = phi i64 [ %126, %imp_for.body2.i.i.i.i.i ], [ 1, %imp_for.exit.i.i.i.i.i ]
  %123 = getelementptr { double, double }, ptr %105, i64 %122
  %.unpack.i342.i.i.i.i.i = load double, ptr %123, align 8
  %.elt1.i343.i.i.i.i.i = getelementptr { double, double }, ptr %105, i64 %122, i32 1
  %.unpack2.i344.i.i.i.i.i = load double, ptr %.elt1.i343.i.i.i.i.i, align 8
  %tmp.i.i.i359.i.i.i.i.i = fmul double %tmp.i336.i.i.i.i.i, %.unpack.i342.i.i.i.i.i
  %tmp.i48.i.i360.i.i.i.i.i = fmul double %.unpack2.i344.i.i.i.i.i, 0.000000e+00
  %tmp.i49.i.i361.i.i.i.i.i = fsub double %tmp.i.i.i359.i.i.i.i.i, %tmp.i48.i.i360.i.i.i.i.i
  %tmp.i50.i.i362.i.i.i.i.i = fmul double %.unpack.i342.i.i.i.i.i, 0.000000e+00
  %tmp.i51.i.i363.i.i.i.i.i = fmul double %tmp.i336.i.i.i.i.i, %.unpack2.i344.i.i.i.i.i
  %tmp.i52.i.i364.i.i.i.i.i = fadd double %tmp.i50.i.i362.i.i.i.i.i, %tmp.i51.i.i363.i.i.i.i.i
  %124 = getelementptr { double, double }, ptr %112, i64 %122
  store double %tmp.i49.i.i361.i.i.i.i.i, ptr %124, align 8
  %.repack1.i.i365.i.i.i.i.i = getelementptr { double, double }, ptr %112, i64 %122, i32 1
  store double %tmp.i52.i.i364.i.i.i.i.i, ptr %.repack1.i.i365.i.i.i.i.i, align 8
  %tmp.i345.i.i.i.i.i = sub i64 %.unpack171.i.i.i.i.i.i, %122
  %125 = getelementptr { double, double }, ptr %112, i64 %tmp.i345.i.i.i.i.i
  store double %tmp.i49.i.i361.i.i.i.i.i, ptr %125, align 8
  %.repack1.i.i366.i.i.i.i.i = getelementptr { double, double }, ptr %112, i64 %tmp.i345.i.i.i.i.i, i32 1
  store double %tmp.i52.i.i364.i.i.i.i.i, ptr %.repack1.i.i366.i.i.i.i.i, align 8
  %126 = add nuw nsw i64 %122, 1
  %exitcond381.not.i.i.i.i.i = icmp eq i64 %126, %1
  br i1 %exitcond381.not.i.i.i.i.i, label %while.cond.preheader.i158.i.i.i.i, label %imp_for.body2.i.i.i.i.i

while.body.i160.i.i.i.i:                          ; preds = %while.body.i160.i.i.i.i, %while.cond.preheader.i158.i.i.i.i
  %.0158377.i.i.i.i.i = phi i64 [ %tmp.i349.i.i.i.i.i, %while.body.i160.i.i.i.i ], [ %1, %while.cond.preheader.i158.i.i.i.i ]
  %127 = getelementptr { double, double }, ptr %112, i64 %.0158377.i.i.i.i.i
  %tmp.i349.i.i.i.i.i = add i64 %.0158377.i.i.i.i.i, 1
  %tmp.i347.not.i.i.i.i.i = icmp slt i64 %tmp.i346.i.i.i.i.i, %tmp.i349.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  br i1 %tmp.i347.not.i.i.i.i.i, label %while.exit.i.i.i.i.i, label %while.body.i160.i.i.i.i

while.exit.i.i.i.i.i:                             ; preds = %while.body.i160.i.i.i.i, %while.cond.preheader.i158.i.i.i.i
  %.unpack298.val.i.i.i.i.i = load i64, ptr %45, align 8
  %.unpack298.val325.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  tail call fastcc void @"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.pass_all:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],Ptr[std.internal.types.complex.complex],float,bool].2372"(i64 %.unpack298.val.i.i.i.i.i, ptr %.unpack298.val325.i.i.i.i.i, ptr nonnull %112, i8 1)
  %.not324.not378.i.i.i.i.i = icmp slt i64 %.unpack171.i.i.i.i.i.i, -1
  br i1 %.not324.not378.i.i.i.i.i, label %imp_for.body.i48.i.preheader.i.i.i, label %imp_for.body6.i.i.i.i.i.preheader

imp_for.body6.i.i.i.i.i.preheader:                ; preds = %while.exit.i.i.i.i.i
  %128 = add nsw i64 %tmp.i327.i.i.i.i.i, 1
  %min.iters.check215 = icmp ult i64 %128, 2
  br i1 %min.iters.check215, label %imp_for.body6.i.i.i.i.i.preheader585, label %vector.scevcheck205

vector.scevcheck205:                              ; preds = %imp_for.body6.i.i.i.i.i.preheader
  %mul.result207 = shl i64 %tmp.i327.i.i.i.i.i, 4
  %129 = getelementptr i8, ptr %106, i64 %mul.result207
  %130 = icmp ult ptr %129, %106
  %scevgep209 = getelementptr i8, ptr %105, i64 %18
  %mul.overflow212 = icmp ugt i64 %tmp.i327.i.i.i.i.i, 1152921504606846975
  %131 = getelementptr i8, ptr %scevgep209, i64 %mul.result207
  %132 = icmp ult ptr %131, %scevgep209
  %133 = or i1 %mul.overflow212, %132
  %134 = or i1 %130, %133
  br i1 %134, label %imp_for.body6.i.i.i.i.i.preheader585, label %vector.ph216

vector.ph216:                                     ; preds = %vector.scevcheck205
  %n.vec218 = and i64 %128, -2
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph216
  %index222 = phi i64 [ 0, %vector.ph216 ], [ %index.next223, %vector.body221 ]
  %135 = or i64 %index222, 1
  %136 = getelementptr { double, double }, ptr %112, i64 %index222
  %137 = getelementptr { double, double }, ptr %112, i64 %135
  %138 = load double, ptr %136, align 8
  %139 = load double, ptr %137, align 8
  %140 = getelementptr { double, double }, ptr %112, i64 %index222, i32 1
  %141 = getelementptr { double, double }, ptr %112, i64 %135, i32 1
  %142 = load double, ptr %140, align 8
  %143 = load double, ptr %141, align 8
  %144 = getelementptr { double, double }, ptr %106, i64 %index222
  %145 = getelementptr { double, double }, ptr %106, i64 %135
  store double %138, ptr %144, align 8
  store double %139, ptr %145, align 8
  %146 = getelementptr { double, double }, ptr %106, i64 %index222, i32 1
  %147 = getelementptr { double, double }, ptr %106, i64 %135, i32 1
  store double %142, ptr %146, align 8
  store double %143, ptr %147, align 8
  %index.next223 = add nuw nsw i64 %index222, 2
  %148 = icmp eq i64 %index.next223, %n.vec218
  br i1 %148, label %middle.block213, label %vector.body221, !llvm.loop !11

middle.block213:                                  ; preds = %vector.body221
  %cmp.n220 = icmp eq i64 %128, %n.vec218
  br i1 %cmp.n220, label %imp_for.body.i48.i.preheader.i.i.i, label %imp_for.body6.i.i.i.i.i.preheader585

imp_for.body6.i.i.i.i.i.preheader585:             ; preds = %middle.block213, %vector.scevcheck205, %imp_for.body6.i.i.i.i.i.preheader
  %.ph586 = phi i64 [ %n.vec218, %middle.block213 ], [ 0, %imp_for.body6.i.i.i.i.i.preheader ], [ 0, %vector.scevcheck205 ]
  br label %imp_for.body6.i.i.i.i.i

imp_for.body6.i.i.i.i.i:                          ; preds = %imp_for.body6.i.i.i.i.i, %imp_for.body6.i.i.i.i.i.preheader585
  %149 = phi i64 [ %152, %imp_for.body6.i.i.i.i.i ], [ %.ph586, %imp_for.body6.i.i.i.i.i.preheader585 ]
  %150 = getelementptr { double, double }, ptr %112, i64 %149
  %.unpack.i.i.i.i.i.i.i = load double, ptr %150, align 8
  %.elt1.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %112, i64 %149, i32 1
  %.unpack2.i.i.i.i.i.i.i = load double, ptr %.elt1.i.i.i.i.i.i.i, align 8
  %151 = getelementptr { double, double }, ptr %106, i64 %149
  store double %.unpack.i.i.i.i.i.i.i, ptr %151, align 8
  %.repack1.i353.i.i.i.i.i = getelementptr { double, double }, ptr %106, i64 %149, i32 1
  store double %.unpack2.i.i.i.i.i.i.i, ptr %.repack1.i353.i.i.i.i.i, align 8
  %152 = add nuw nsw i64 %149, 1
  %exitcond382.not.i.i.i.i.i = icmp eq i64 %149, %tmp.i327.i.i.i.i.i
  br i1 %exitcond382.not.i.i.i.i.i, label %imp_for.body.i48.i.preheader.i.i.i, label %imp_for.body6.i.i.i.i.i, !llvm.loop !12

if.true.i.i.i28.i:                                ; preds = %"std.numpy.fft.pocketfft._cost_guess:0[int].1864.exit155.i.i.i.i", %ternary.exit.i.i.i.i
  %153 = icmp eq ptr %alloc_hoist.cache340.0.i.i, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %if.true.i.i.i28.i
  %155 = tail call dereferenceable(32) ptr @seq_alloc(i64 32)
  br label %156

156:                                              ; preds = %154, %if.true.i.i.i28.i
  %alloc_hoist.cache340.1.i.i = phi ptr [ %155, %154 ], [ %alloc_hoist.cache340.0.i.i, %if.true.i.i.i28.i ]
  %.elt14.i.i.i = getelementptr inbounds { i64, { ptr, i64 }, ptr }, ptr %alloc_hoist.cache340.1.i.i, i64 0, i32 1
  %.unpack15.elt18.i.i.i = getelementptr inbounds { i64, { ptr, i64 }, ptr }, ptr %alloc_hoist.cache340.1.i.i, i64 0, i32 1, i32 1
  %.elt16.i.i.i = getelementptr inbounds { i64, { ptr, i64 }, ptr }, ptr %alloc_hoist.cache340.1.i.i, i64 0, i32 2
  %157 = tail call dereferenceable(24) ptr @seq_alloc(i64 24)
  %158 = tail call dereferenceable(240) ptr @seq_alloc(i64 240)
  store i64 0, ptr %157, align 8
  %.repack7.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %157, i64 0, i32 1
  store i64 10, ptr %.repack7.i.i.i.i, align 8
  %.repack7.repack9.i.i.i.i = getelementptr inbounds { i64, { i64, ptr } }, ptr %157, i64 0, i32 1, i32 1
  store ptr %158, ptr %.repack7.repack9.i.i.i.i, align 8
  store i64 %1, ptr %alloc_hoist.cache340.1.i.i, align 8
  store ptr %157, ptr %.elt16.i.i.i, align 8
  br i1 %tmp.i56.not.i.i.i, label %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i", label %if.true1.i.i29.i

if.true1.i.i29.i:                                 ; preds = %156
  br i1 %tmp.i52.not173.i.i.i.i, label %while.body.i.i.preheader.i.i, label %while.exit.i.i.i.i

while.body.i.i.preheader.i.i:                     ; preds = %if.true1.i.i29.i
  %.unpack.i.i.i.i.i320.pre.i.i = load i64, ptr %157, align 8
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i", %while.body.i.i.preheader.i.i
  %.unpack.i.i.i.i.i320.i.i = phi i64 [ %tmp.i.i.i.i.i324.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i" ], [ %.unpack.i.i.i.i.i320.pre.i.i, %while.body.i.i.preheader.i.i ]
  %.037174.i.i.i.i = phi i64 [ %161, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i" ], [ %1, %while.body.i.i.preheader.i.i ]
  %.unpack9.unpack.i.i.i.i.i.i.i = load i64, ptr %.repack7.i.i.i.i, align 8
  %tmp.i.not.i.i.i.i.i321.i.i = icmp eq i64 %.unpack9.unpack.i.i.i.i.i.i.i, %.unpack.i.i.i.i.i320.i.i
  br i1 %tmp.i.not.i.i.i.i.i321.i.i, label %if.true.i.i.i.i.i325.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i.i.i.i.i": ; preds = %while.body.i.i.i.i
  %.val.pre.i.i.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i"

if.true.i.i.i.i.i325.i.i:                         ; preds = %while.body.i.i.i.i
  %tmp.i20.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i.i.i320.i.i, 3
  %tmp.i21.i.i.i.i.i.i.i = add i64 %tmp.i20.i.i.i.i.i.i.i, 1
  %tmp.i22.i.i.i.i.i.i.i = sdiv i64 %tmp.i21.i.i.i.i.i.i.i, 2
  %tmp.i23.i.i.i.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i.i.i.i.i, 1
  %spec.select.i.i.i.i.i326.i.i = select i1 %tmp.i23.i.i.i.i.i.i.i, i64 %tmp.i22.i.i.i.i.i.i.i, i64 1
  %.unpack6.unpack8.i.i.i.i.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %tmp.i.i.i.i.i.i.i.i.i = mul i64 %spec.select.i.i.i.i.i326.i.i, 24
  %tmp.i24.i.i.i.i.i.i.i.i = mul i64 %.unpack.i.i.i.i.i320.i.i, 24
  %159 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i.i.i.i.i, i64 %tmp.i.i.i.i.i.i.i.i.i, i64 %tmp.i24.i.i.i.i.i.i.i.i)
  store i64 %spec.select.i.i.i.i.i326.i.i, ptr %.repack7.i.i.i.i, align 8
  store ptr %159, ptr %.repack7.repack9.i.i.i.i, align 8
  %.unpack.pre.i.i.i.i.i.i = load i64, ptr %157, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i"

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i": ; preds = %if.true.i.i.i.i.i325.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i = phi ptr [ %.val.pre.i.i.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i.i.i.i.i" ], [ %159, %if.true.i.i.i.i.i325.i.i ]
  %.unpack.i.i.i.i322.i.i = phi i64 [ %.unpack.i.i.i.i.i320.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i.i.i.i.i" ], [ %.unpack.pre.i.i.i.i.i.i, %if.true.i.i.i.i.i325.i.i ]
  %160 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i.i.i.i.i, i64 %.unpack.i.i.i.i322.i.i
  store i64 4, ptr %160, align 8
  %.repack1.i.i.i.i.i.i323.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i.i.i.i.i, i64 %.unpack.i.i.i.i322.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i.i.i323.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.i.i.i.i324.i.i = add i64 %.unpack13.i.i.i.i.i.i, 1
  store i64 %tmp.i.i.i.i.i324.i.i, ptr %157, align 8
  %161 = lshr i64 %.037174.i.i.i.i, 2
  %162 = and i64 %.037174.i.i.i.i, 12
  %tmp.i52.not.i.i.i.i = icmp eq i64 %162, 0
  br i1 %tmp.i52.not.i.i.i.i, label %while.body.i.i.i.i, label %while.exit.i.i.i.i

while.exit.i.i.i.i:                               ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i", %if.true1.i.i29.i
  %.037.lcssa.i.i.i.i = phi i64 [ %1, %if.true1.i.i29.i ], [ %161, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit.i.i.i.i" ]
  %163 = and i64 %.037.lcssa.i.i.i.i, 1
  %tmp.i54.not.i.i.i.i = icmp eq i64 %163, 0
  br i1 %tmp.i54.not.i.i.i.i, label %if.true.i.i318.i.i, label %if.exit.i.i.i.i

if.true.i.i318.i.i:                               ; preds = %while.exit.i.i.i.i
  %164 = lshr i64 %.037.lcssa.i.i.i.i, 1
  %.unpack.i.i.i66.i.i.i.i = load i64, ptr %157, align 8
  %.unpack9.unpack.i.i.i68.i.i.i.i = load i64, ptr %.repack7.i.i.i.i, align 8
  %tmp.i.not.i.i.i69.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i68.i.i.i.i, %.unpack.i.i.i66.i.i.i.i
  br i1 %tmp.i.not.i.i.i69.i.i.i.i, label %if.true.i.i.i78.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i70.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i70.i.i.i.i": ; preds = %if.true.i.i318.i.i
  %.val.pre.i.i72.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit89.i.i.i.i"

if.true.i.i.i78.i.i.i.i:                          ; preds = %if.true.i.i318.i.i
  %tmp.i20.i.i.i79.i.i.i.i = mul i64 %.unpack.i.i.i66.i.i.i.i, 3
  %tmp.i21.i.i.i80.i.i.i.i = add i64 %tmp.i20.i.i.i79.i.i.i.i, 1
  %tmp.i22.i.i.i81.i.i.i.i = sdiv i64 %tmp.i21.i.i.i80.i.i.i.i, 2
  %tmp.i23.i.i.i82.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i80.i.i.i.i, 1
  %spec.select.i.i.i83.i.i.i.i = select i1 %tmp.i23.i.i.i82.i.i.i.i, i64 %tmp.i22.i.i.i81.i.i.i.i, i64 1
  %.unpack6.unpack8.i.i.i.i85.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %tmp.i.i.i.i.i86.i.i.i.i = mul i64 %spec.select.i.i.i83.i.i.i.i, 24
  %tmp.i24.i.i.i.i87.i.i.i.i = mul i64 %.unpack.i.i.i66.i.i.i.i, 24
  %165 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i85.i.i.i.i, i64 %tmp.i.i.i.i.i86.i.i.i.i, i64 %tmp.i24.i.i.i.i87.i.i.i.i)
  store i64 %spec.select.i.i.i83.i.i.i.i, ptr %.repack7.i.i.i.i, align 8
  store ptr %165, ptr %.repack7.repack9.i.i.i.i, align 8
  %.unpack.pre.i.i88.i.i.i.i = load i64, ptr %157, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit89.i.i.i.i"

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit89.i.i.i.i": ; preds = %if.true.i.i.i78.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i70.i.i.i.i"
  %.val.i.i73.i.i.i.i = phi ptr [ %.val.pre.i.i72.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i70.i.i.i.i" ], [ %165, %if.true.i.i.i78.i.i.i.i ]
  %.unpack.i.i74.i.i.i.i = phi i64 [ %.unpack.i.i.i66.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i70.i.i.i.i" ], [ %.unpack.pre.i.i88.i.i.i.i, %if.true.i.i.i78.i.i.i.i ]
  %166 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i73.i.i.i.i, i64 %.unpack.i.i74.i.i.i.i
  store i64 2, ptr %166, align 8
  %.repack1.i.i.i.i75.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i73.i.i.i.i, i64 %.unpack.i.i74.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i75.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i76.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.i.i77.i.i.i.i = add nuw nsw i64 %.unpack13.i.i76.i.i.i.i, 1
  store i64 %tmp.i.i.i77.i.i.i.i, ptr %157, align 8
  %tmp.i.not.i.i.i.i.i.i = icmp ult i64 %.unpack13.i.i76.i.i.i.i, 9223372036854775807
  tail call void @llvm.assume(i1 %tmp.i.not.i.i.i.i.i.i)
  %.val7.i.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.unpack.i.i.i90.i.i.i.i = load i64, ptr %.val7.i.i.i.i.i, align 8
  %167 = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i.i.i.i, i64 %.unpack13.i.i76.i.i.i.i
  %.unpack.i.i.i94.i.i.i.i = load i64, ptr %167, align 8
  store i64 %.unpack.i.i.i94.i.i.i.i, ptr %.val7.i.i.i.i.i, align 8
  %.val6.pre.i108.i.i.i.i = load i64, ptr %157, align 8
  %spec.select.i109.i.i.i.i = add nsw i64 %.val6.pre.i108.i.i.i.i, -1
  %extract.t.i.i111.i.i.i.i = icmp sgt i64 %.val6.pre.i108.i.i.i.i, 0
  tail call void @llvm.assume(i1 %extract.t.i.i111.i.i.i.i)
  %.val7.i112.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %168 = getelementptr { i64, ptr, ptr }, ptr %.val7.i112.i.i.i.i, i64 %spec.select.i109.i.i.i.i
  store i64 %.unpack.i.i.i90.i.i.i.i, ptr %168, align 8
  br label %if.exit.i.i.i.i

if.exit.i.i.i.i:                                  ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit89.i.i.i.i", %while.exit.i.i.i.i
  %.1.i.i.i.i32 = phi i64 [ %164, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit89.i.i.i.i" ], [ %.037.lcssa.i.i.i.i, %while.exit.i.i.i.i ]
  %tmp.i57.not179.i.i.i.i = icmp slt i64 %.1.i.i.i.i32, 9
  br i1 %tmp.i57.not179.i.i.i.i, label %while.exit3.i.i.i.i, label %while.cond4.preheader.i.i.i.i

while.cond4.preheader.i.i.i.i:                    ; preds = %while.exit6.i.i.i.i, %if.exit.i.i.i.i
  %.0181.i.i.i.i = phi i64 [ %tmp.i65.i.i.i.i, %while.exit6.i.i.i.i ], [ 3, %if.exit.i.i.i.i ]
  %.2180.i.i.i.i = phi i64 [ %.3.lcssa.i.i.i.i, %while.exit6.i.i.i.i ], [ %.1.i.i.i.i32, %if.exit.i.i.i.i ]
  %tmp.i61175.i.i.i.i = srem i64 %.2180.i.i.i.i, %.0181.i.i.i.i
  %tmp.i62.not176.i.i.i.i = icmp eq i64 %tmp.i61175.i.i.i.i, 0
  br i1 %tmp.i62.not176.i.i.i.i, label %while.body5.i.i.preheader.i.i, label %while.exit6.i.i.i.i

while.body5.i.i.preheader.i.i:                    ; preds = %while.cond4.preheader.i.i.i.i
  %.unpack.i.i.i125.i.i.pre.i.i = load i64, ptr %157, align 8
  br label %while.body5.i.i.i.i

while.exit3.i.i.i.i:                              ; preds = %while.exit6.i.i.i.i, %if.exit.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i.i32, %if.exit.i.i.i.i ], [ %.3.lcssa.i.i.i.i, %while.exit6.i.i.i.i ]
  %tmp.i59.i.i.i.i = icmp slt i64 %.2.lcssa.i.i.i.i, 2
  %.unpack21.val.i.i.pr.i.i = load i64, ptr %157, align 8
  br i1 %tmp.i59.i.i.i.i, label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.factorize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1754.exit.i.i.i", label %if.true7.i.i.i.i

while.body5.i.i.i.i:                              ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i", %while.body5.i.i.preheader.i.i
  %.unpack.i.i.i125.i.i.i.i = phi i64 [ %tmp.i.i.i136.i.i.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i" ], [ %.unpack.i.i.i125.i.i.pre.i.i, %while.body5.i.i.preheader.i.i ]
  %.3177.i.i.i.i = phi i64 [ %tmp.i64.i.i.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i" ], [ %.2180.i.i.i.i, %while.body5.i.i.preheader.i.i ]
  %.unpack9.unpack.i.i.i127.i.i.i.i = load i64, ptr %.repack7.i.i.i.i, align 8
  %tmp.i.not.i.i.i128.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i127.i.i.i.i, %.unpack.i.i.i125.i.i.i.i
  br i1 %tmp.i.not.i.i.i128.i.i.i.i, label %if.true.i.i.i137.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i129.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i129.i.i.i.i": ; preds = %while.body5.i.i.i.i
  %.val.pre.i.i131.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i"

if.true.i.i.i137.i.i.i.i:                         ; preds = %while.body5.i.i.i.i
  %tmp.i20.i.i.i138.i.i.i.i = mul i64 %.unpack.i.i.i125.i.i.i.i, 3
  %tmp.i21.i.i.i139.i.i.i.i = add i64 %tmp.i20.i.i.i138.i.i.i.i, 1
  %tmp.i22.i.i.i140.i.i.i.i = sdiv i64 %tmp.i21.i.i.i139.i.i.i.i, 2
  %tmp.i23.i.i.i141.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i139.i.i.i.i, 1
  %spec.select.i.i.i142.i.i.i.i = select i1 %tmp.i23.i.i.i141.i.i.i.i, i64 %tmp.i22.i.i.i140.i.i.i.i, i64 1
  %.unpack6.unpack8.i.i.i.i144.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %tmp.i.i.i.i.i145.i.i.i.i = mul i64 %spec.select.i.i.i142.i.i.i.i, 24
  %tmp.i24.i.i.i.i146.i.i.i.i = mul i64 %.unpack.i.i.i125.i.i.i.i, 24
  %169 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i144.i.i.i.i, i64 %tmp.i.i.i.i.i145.i.i.i.i, i64 %tmp.i24.i.i.i.i146.i.i.i.i)
  store i64 %spec.select.i.i.i142.i.i.i.i, ptr %.repack7.i.i.i.i, align 8
  store ptr %169, ptr %.repack7.repack9.i.i.i.i, align 8
  %.unpack.pre.i.i147.i.i.i.i = load i64, ptr %157, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i"

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i": ; preds = %if.true.i.i.i137.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i129.i.i.i.i"
  %.val.i.i132.i.i.i.i = phi ptr [ %.val.pre.i.i131.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i129.i.i.i.i" ], [ %169, %if.true.i.i.i137.i.i.i.i ]
  %.unpack.i.i133.i.i.i.i = phi i64 [ %.unpack.i.i.i125.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i129.i.i.i.i" ], [ %.unpack.pre.i.i147.i.i.i.i, %if.true.i.i.i137.i.i.i.i ]
  %170 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i132.i.i.i.i, i64 %.unpack.i.i133.i.i.i.i
  store i64 %.0181.i.i.i.i, ptr %170, align 8
  %.repack1.i.i.i.i134.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i132.i.i.i.i, i64 %.unpack.i.i133.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i134.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i135.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.i.i136.i.i.i.i = add i64 %.unpack13.i.i135.i.i.i.i, 1
  store i64 %tmp.i.i.i136.i.i.i.i, ptr %157, align 8
  %tmp.i64.i.i.i.i = sdiv i64 %.3177.i.i.i.i, %.0181.i.i.i.i
  %tmp.i61.i.i.i.i = srem i64 %tmp.i64.i.i.i.i, %.0181.i.i.i.i
  %tmp.i62.not.i.i.i.i = icmp eq i64 %tmp.i61.i.i.i.i, 0
  br i1 %tmp.i62.not.i.i.i.i, label %while.body5.i.i.i.i, label %while.exit6.i.i.i.i

while.exit6.i.i.i.i:                              ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i", %while.cond4.preheader.i.i.i.i
  %.3.lcssa.i.i.i.i = phi i64 [ %.2180.i.i.i.i, %while.cond4.preheader.i.i.i.i ], [ %tmp.i64.i.i.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit148.i.i.i.i" ]
  %tmp.i65.i.i.i.i = add i64 %.0181.i.i.i.i, 2
  %tmp.i56.i.i.i.i = mul i64 %tmp.i65.i.i.i.i, %tmp.i65.i.i.i.i
  %tmp.i57.not.i.i.i.i = icmp sgt i64 %tmp.i56.i.i.i.i, %.3.lcssa.i.i.i.i
  br i1 %tmp.i57.not.i.i.i.i, label %while.exit3.i.i.i.i, label %while.cond4.preheader.i.i.i.i

if.true7.i.i.i.i:                                 ; preds = %while.exit3.i.i.i.i
  %.unpack9.unpack.i.i.i151.i.i.i.i = load i64, ptr %.repack7.i.i.i.i, align 8
  %tmp.i.not.i.i.i152.i.i.i.i = icmp eq i64 %.unpack9.unpack.i.i.i151.i.i.i.i, %.unpack21.val.i.i.pr.i.i
  br i1 %tmp.i.not.i.i.i152.i.i.i.i, label %if.true.i.i.i161.i.i.i.i, label %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i153.i.i.i.i"

"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i153.i.i.i.i": ; preds = %if.true7.i.i.i.i
  %.val.pre.i.i155.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit172.i.i.i.i"

if.true.i.i.i161.i.i.i.i:                         ; preds = %if.true7.i.i.i.i
  %tmp.i20.i.i.i162.i.i.i.i = mul i64 %.unpack21.val.i.i.pr.i.i, 3
  %tmp.i21.i.i.i163.i.i.i.i = add i64 %tmp.i20.i.i.i162.i.i.i.i, 1
  %tmp.i22.i.i.i164.i.i.i.i = sdiv i64 %tmp.i21.i.i.i163.i.i.i.i, 2
  %tmp.i23.i.i.i165.i.i.i.i = icmp sgt i64 %tmp.i21.i.i.i163.i.i.i.i, 1
  %spec.select.i.i.i166.i.i.i.i = select i1 %tmp.i23.i.i.i165.i.i.i.i, i64 %tmp.i22.i.i.i164.i.i.i.i, i64 1
  %.unpack6.unpack8.i.i.i.i168.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %tmp.i.i.i.i.i169.i.i.i.i = mul i64 %spec.select.i.i.i166.i.i.i.i, 24
  %tmp.i24.i.i.i.i170.i.i.i.i = mul i64 %.unpack21.val.i.i.pr.i.i, 24
  %171 = tail call ptr @seq_realloc(ptr %.unpack6.unpack8.i.i.i.i168.i.i.i.i, i64 %tmp.i.i.i.i.i169.i.i.i.i, i64 %tmp.i24.i.i.i.i170.i.i.i.i)
  store i64 %spec.select.i.i.i166.i.i.i.i, ptr %.repack7.i.i.i.i, align 8
  store ptr %171, ptr %.repack7.repack9.i.i.i.i, align 8
  %.unpack.pre.i.i171.i.i.i.i = load i64, ptr %157, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit172.i.i.i.i"

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit172.i.i.i.i": ; preds = %if.true.i.i.i161.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i153.i.i.i.i"
  %.val.i.i156.i.i.i.i = phi ptr [ %.val.pre.i.i155.i.i.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i153.i.i.i.i" ], [ %171, %if.true.i.i.i161.i.i.i.i ]
  %.unpack.i.i157.i.i.i.i = phi i64 [ %.unpack21.val.i.i.pr.i.i, %"entry.std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]:std.internal.types.ptr.List._resize_if_full:0[std.internal.types.ptr.List[std.numpy.fft.pocketfft.fctdata[float]]].1716.exit_crit_edge.i.i153.i.i.i.i" ], [ %.unpack.pre.i.i171.i.i.i.i, %if.true.i.i.i161.i.i.i.i ]
  %172 = getelementptr { i64, ptr, ptr }, ptr %.val.i.i156.i.i.i.i, i64 %.unpack.i.i157.i.i.i.i
  store i64 %.2.lcssa.i.i.i.i, ptr %172, align 8
  %.repack1.i.i.i.i158.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val.i.i156.i.i.i.i, i64 %.unpack.i.i157.i.i.i.i, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.repack1.i.i.i.i158.i.i.i.i, i8 0, i64 16, i1 false)
  %.unpack13.i.i159.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.i.i160.i.i.i.i = add i64 %.unpack13.i.i159.i.i.i.i, 1
  store i64 %tmp.i.i.i160.i.i.i.i, ptr %157, align 8
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.factorize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1754.exit.i.i.i"

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.factorize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1754.exit.i.i.i": ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit172.i.i.i.i", %while.exit3.i.i.i.i
  %.unpack21.val.i.i.i.i = phi i64 [ %tmp.i.i.i160.i.i.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.add_factor:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1729.exit172.i.i.i.i" ], [ %.unpack21.val.i.i.pr.i.i, %while.exit3.i.i.i.i ]
  %.val.i.i.i = load i64, ptr %alloc_hoist.cache340.1.i.i, align 8
  %.not1.i.i.i.i = icmp sgt i64 %.unpack21.val.i.i.i.i, 0
  br i1 %.not1.i.i.i.i, label %imp_for.body.lr.ph.i.i.i.i, label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.twsize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1758.exit.i.i.i"

imp_for.body.lr.ph.i.i.i.i:                       ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.factorize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1754.exit.i.i.i"
  %.val7.i.i58.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  br label %imp_for.body.i.i.i.i

imp_for.body.i.i.i.i:                             ; preds = %imp_for.body.i.i.i.i, %imp_for.body.lr.ph.i.i.i.i
  %173 = phi i64 [ 0, %imp_for.body.lr.ph.i.i.i.i ], [ %175, %imp_for.body.i.i.i.i ]
  %.03.i.i.i.i = phi i64 [ 0, %imp_for.body.lr.ph.i.i.i.i ], [ %.1.i60.i.i.i, %imp_for.body.i.i.i.i ]
  %.0162.i.i.i.i = phi i64 [ 1, %imp_for.body.lr.ph.i.i.i.i ], [ %tmp.i.i.i317.i.i, %imp_for.body.i.i.i.i ]
  %174 = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i58.i.i.i, i64 %173
  %.unpack.i.i.i.i59.i.i.i = load i64, ptr %174, align 8
  %tmp.i.i.i317.i.i = mul i64 %.unpack.i.i.i.i59.i.i.i, %.0162.i.i.i.i
  %tmp.i26.i.i.i.i = sdiv i64 %.val.i.i.i, %tmp.i.i.i317.i.i
  %tmp.i27.i.i.i.i = add i64 %.unpack.i.i.i.i59.i.i.i, -1
  %tmp.i28.i.i.i.i = add i64 %tmp.i26.i.i.i.i, -1
  %tmp.i29.i.i.i.i = mul i64 %tmp.i28.i.i.i.i, %tmp.i27.i.i.i.i
  %tmp.i31.i.i.i.i = icmp slt i64 %.unpack.i.i.i.i59.i.i.i, 6
  %tmp.i32.i.i.i.i = shl i64 %.unpack.i.i.i.i59.i.i.i, 1
  %tmp.i33.i.i.i.i = select i1 %tmp.i31.i.i.i.i, i64 0, i64 %tmp.i32.i.i.i.i
  %tmp.i30.i.i.i.i = add i64 %tmp.i33.i.i.i.i, %.03.i.i.i.i
  %.1.i60.i.i.i = add i64 %tmp.i30.i.i.i.i, %tmp.i29.i.i.i.i
  %175 = add nuw nsw i64 %173, 1
  %exitcond.not.i.i.i.i = icmp eq i64 %175, %.unpack21.val.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.twsize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1758.exit.i.i.i", label %imp_for.body.i.i.i.i

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.twsize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1758.exit.i.i.i": ; preds = %imp_for.body.i.i.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.factorize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1754.exit.i.i.i"
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.factorize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1754.exit.i.i.i" ], [ %.1.i60.i.i.i, %imp_for.body.i.i.i.i ]
  %176 = shl i64 %.0.lcssa.i.i.i.i, 3
  %177 = tail call ptr @seq_alloc_atomic(i64 %176)
  store ptr %177, ptr %.elt14.i.i.i, align 8
  store i64 %.0.lcssa.i.i.i.i, ptr %.unpack15.elt18.i.i.i, align 8
  %178 = tail call fastcc { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } @"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__new__:1[int].1806"(i64 %.val.i.i.i)
  %.unpack264.val281.i.i.i.i = load i64, ptr %157, align 8
  %.not691.i.i.i.i = icmp sgt i64 %.unpack264.val281.i.i.i.i, 0
  br i1 %.not691.i.i.i.i, label %imp_for.body.lr.ph.i62.i.i.i, label %entry.imp_for.exit_crit_edge.i.i.i.i

entry.imp_for.exit_crit_edge.i.i.i.i:             ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.twsize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1758.exit.i.i.i"
  %.pre.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %178, 3
  %.pre697.i.i.i.i = extractvalue { ptr, i64 } %.pre.i.i.i.i, 0
  %.pre698.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %178, 4
  %.pre700.i.i.i.i = extractvalue { ptr, i64 } %.pre698.i.i.i.i, 0
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i"

imp_for.body.lr.ph.i62.i.i.i:                     ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.twsize:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]].1758.exit.i.i.i"
  %.fca.0.extract105.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %178, 0
  %.fca.1.extract106.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %178, 1
  %.fca.2.extract.i.i.i.i.i = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %178, 2
  %179 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %178, 3
  %.fca.0.extract.i.i360.i.i.i.i = extractvalue { ptr, i64 } %179, 0
  %180 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %178, 4
  %.fca.0.extract.i419.i.i.i.i.i = extractvalue { ptr, i64 } %180, 0
  br label %imp_for.body.i63.i.i.i

imp_for.body.i63.i.i.i:                           ; preds = %if.exit7.i.i.i.i, %imp_for.body.lr.ph.i62.i.i.i
  %181 = phi i64 [ 0, %imp_for.body.lr.ph.i62.i.i.i ], [ %200, %if.exit7.i.i.i.i ]
  %.0257693.i.i.i.i = phi i64 [ 1, %imp_for.body.lr.ph.i62.i.i.i ], [ %tmp.i.i68.i.i.i, %if.exit7.i.i.i.i ]
  %.0258692.i.i.i.i = phi ptr [ %177, %imp_for.body.lr.ph.i62.i.i.i ], [ %.2.i.i.i.i, %if.exit7.i.i.i.i ]
  %.val6.pre.i.i64.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i.i65.i.i.i = icmp ugt i64 %.val6.pre.i.i64.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i.i65.i.i.i)
  %.val7.i.i66.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %182 = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i66.i.i.i, i64 %181
  %.unpack.i.i.i.i67.i.i.i = load i64, ptr %182, align 8
  %tmp.i.i68.i.i.i = mul i64 %.unpack.i.i.i.i67.i.i.i, %.0257693.i.i.i.i
  %tmp.i283.i.i.i.i = add nsw i64 %.val6.pre.i.i64.i.i.i, -1
  %tmp.i284.not.i.i.i.i = icmp sgt i64 %tmp.i283.i.i.i.i, %181
  br i1 %tmp.i284.not.i.i.i.i, label %if.true.i72.i.i.i, label %if.exit.i69.i.i.i

if.true.i72.i.i.i:                                ; preds = %imp_for.body.i63.i.i.i
  %tmp.i282.i.i.i.i = sdiv i64 %.val.i.i.i, %tmp.i.i68.i.i.i
  %.elt1.i.i.i.i.i315.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i66.i.i.i, i64 %181, i32 1
  store ptr %.0258692.i.i.i.i, ptr %.elt1.i.i.i.i.i315.i.i, align 8
  %tmp.i285.i.i.i.i = add i64 %.unpack.i.i.i.i67.i.i.i, -1
  %tmp.i286.i.i.i.i = add i64 %tmp.i282.i.i.i.i, -1
  %tmp.i287.i.i.i.i = mul i64 %tmp.i286.i.i.i.i, %tmp.i285.i.i.i.i
  %183 = getelementptr double, ptr %.0258692.i.i.i.i, i64 %tmp.i287.i.i.i.i
  %.not279686.i.i.i.i = icmp sgt i64 %.unpack.i.i.i.i67.i.i.i, 1
  br i1 %.not279686.i.i.i.i, label %while.cond.preheader.lr.ph.i.i.i.i, label %if.exit7.i.i.i.i

while.cond.preheader.lr.ph.i.i.i.i:               ; preds = %if.true.i72.i.i.i
  %tmp.i292.not684.i.i.i.i = icmp slt i64 %tmp.i286.i.i.i.i, 2
  br i1 %tmp.i292.not684.i.i.i.i, label %if.exit.i69.i.i.i, label %while.cond.preheader.preheader.i.i.i.i

while.cond.preheader.preheader.i.i.i.i:           ; preds = %while.cond.preheader.lr.ph.i.i.i.i
  %tmp.i291711727.i.i.i.i = lshr i64 %tmp.i286.i.i.i.i, 1
  br label %while.cond.preheader.i.i.i.i

if.exit.i69.i.i.i:                                ; preds = %while.cond.while.exit_crit_edge.i.i.i.i, %while.cond.preheader.lr.ph.i.i.i.i, %imp_for.body.i63.i.i.i
  %.1.i70.i.i.i = phi ptr [ %.0258692.i.i.i.i, %imp_for.body.i63.i.i.i ], [ %183, %while.cond.preheader.lr.ph.i.i.i.i ], [ %183, %while.cond.while.exit_crit_edge.i.i.i.i ]
  %tmp.i288.i.i.i.i = icmp slt i64 %.unpack.i.i.i.i67.i.i.i, 6
  br i1 %tmp.i288.i.i.i.i, label %if.exit7.i.i.i.i, label %if.true5.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %while.cond.while.exit_crit_edge.i.i.i.i, %while.cond.preheader.preheader.i.i.i.i
  %184 = phi i64 [ %197, %while.cond.while.exit_crit_edge.i.i.i.i ], [ 1, %while.cond.preheader.preheader.i.i.i.i ]
  %tmp.i294.i.i.i.i = add nsw i64 %184, -1
  %tmp.i296.i.i.i.i = mul i64 %tmp.i294.i.i.i.i, %tmp.i286.i.i.i.i
  %tmp.i300.i.i.i.i = mul i64 %184, %.0257693.i.i.i.i
  br label %while.body.i73.i.i.i

while.body.i73.i.i.i:                             ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit418.i.i.i.i", %while.cond.preheader.i.i.i.i
  %.0256685.i.i.i.i = phi i64 [ 1, %while.cond.preheader.i.i.i.i ], [ %tmp.i310.i.i.i.i, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit418.i.i.i.i" ]
  %.val6.pre.i348.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i352.i.i.i.i = icmp sgt i64 %.val6.pre.i348.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i352.i.i.i.i)
  %.val7.i354.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt1.i.i.i356.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i354.i.i.i.i, i64 %181, i32 1
  %.unpack2.i.i.i357.i.i.i.i = load ptr, ptr %.elt1.i.i.i356.i.i.i.i, align 8
  %tmp.i297.i.i.i.i = shl nuw i64 %.0256685.i.i.i.i, 1
  %tmp.i298.i.i.i.i = add i64 %tmp.i297.i.i.i.i, %tmp.i296.i.i.i.i
  %tmp.i299.i.i.i.i = add i64 %tmp.i298.i.i.i.i, -2
  %tmp.i301.i.i.i.i = mul i64 %tmp.i300.i.i.i.i, %.0256685.i.i.i.i
  %tmp.i.i.i.i316.i.i = shl i64 %tmp.i301.i.i.i.i, 1
  %tmp.i403.not.i.i.i.i.i = icmp slt i64 %.fca.0.extract105.i.i.i.i.i, %tmp.i.i.i.i316.i.i
  %tmp.i411.i.i.i.i.i = sub i64 %.fca.0.extract105.i.i.i.i.i, %tmp.i301.i.i.i.i
  %tmp.i301.sink724.i.i.i.i = select i1 %tmp.i403.not.i.i.i.i.i, i64 %tmp.i411.i.i.i.i.i, i64 %tmp.i301.i.i.i.i
  %tmp.i404.i.i.i.i.i = and i64 %tmp.i301.sink724.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %185 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i.i.i.i.i
  %.unpack.i.i.i361.i.i.i.i = load double, ptr %185, align 8
  %.elt1.i.i.i362.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i.i.i.i.i, i32 1
  %.unpack2.i.i.i363.i.i.i.i = load double, ptr %.elt1.i.i.i362.i.i.i.i, align 8
  %186 = ashr i64 %tmp.i301.sink724.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %187 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %186
  %.unpack.i.i420.i.i.i.i.i = load double, ptr %187, align 8
  %.elt1.i.i421.i.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %186, i32 1
  %.unpack2.i.i422.i.i.i.i.i = load double, ptr %.elt1.i.i421.i.i.i.i.i, align 8
  %tmp.i405.i.i.i.i.i = fmul double %.unpack.i.i.i361.i.i.i.i, %.unpack.i.i420.i.i.i.i.i
  %tmp.i406.i.i.i.i.i = fmul double %.unpack2.i.i.i363.i.i.i.i, %.unpack2.i.i422.i.i.i.i.i
  %tmp.i407.i.i.i.i.i = fsub double %tmp.i405.i.i.i.i.i, %tmp.i406.i.i.i.i.i
  %188 = getelementptr double, ptr %.unpack2.i.i.i357.i.i.i.i, i64 %tmp.i299.i.i.i.i
  store double %tmp.i407.i.i.i.i.i, ptr %188, align 8
  %.val6.pre.i364.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i368.i.i.i.i = icmp sgt i64 %.val6.pre.i364.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i368.i.i.i.i)
  %.val7.i370.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt1.i.i.i372.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i370.i.i.i.i, i64 %181, i32 1
  %.unpack2.i.i.i373.i.i.i.i = load ptr, ptr %.elt1.i.i.i372.i.i.i.i, align 8
  %tmp.i307.i.i.i.i = add i64 %tmp.i298.i.i.i.i, -1
  br i1 %tmp.i403.not.i.i.i.i.i, label %if.false.i401.i.i.i.i, label %if.true.i381.i.i.i.i

if.true.i381.i.i.i.i:                             ; preds = %while.body.i73.i.i.i
  %tmp.i404.i382.i.i.i.i = and i64 %tmp.i301.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %189 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i382.i.i.i.i
  %.unpack.i.i.i384.i.i.i.i = load double, ptr %189, align 8
  %.elt1.i.i.i385.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i382.i.i.i.i, i32 1
  %.unpack2.i.i.i386.i.i.i.i = load double, ptr %.elt1.i.i.i385.i.i.i.i, align 8
  %190 = ashr i64 %tmp.i301.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %191 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %190
  %.unpack.i.i420.i388.i.i.i.i = load double, ptr %191, align 8
  %.elt1.i.i421.i389.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %190, i32 1
  %.unpack2.i.i422.i390.i.i.i.i = load double, ptr %.elt1.i.i421.i389.i.i.i.i, align 8
  %tmp.i408.i394.i.i.i.i = fmul double %.unpack2.i.i.i386.i.i.i.i, %.unpack.i.i420.i388.i.i.i.i
  %tmp.i409.i395.i.i.i.i = fmul double %.unpack.i.i.i384.i.i.i.i, %.unpack2.i.i422.i390.i.i.i.i
  %tmp.i410.i396.i.i.i.i = fadd double %tmp.i408.i394.i.i.i.i, %tmp.i409.i395.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit418.i.i.i.i"

if.false.i401.i.i.i.i:                            ; preds = %while.body.i73.i.i.i
  %tmp.i412.i403.i.i.i.i = and i64 %tmp.i411.i.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %192 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i412.i403.i.i.i.i
  %.unpack.i.i424.i405.i.i.i.i = load double, ptr %192, align 8
  %.elt1.i.i425.i406.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i412.i403.i.i.i.i, i32 1
  %.unpack2.i.i426.i407.i.i.i.i = load double, ptr %.elt1.i.i425.i406.i.i.i.i, align 8
  %193 = ashr i64 %tmp.i411.i.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %194 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %193
  %.unpack.i.i428.i409.i.i.i.i = load double, ptr %194, align 8
  %.elt1.i.i429.i410.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %193, i32 1
  %.unpack2.i.i430.i411.i.i.i.i = load double, ptr %.elt1.i.i429.i410.i.i.i.i, align 8
  %tmp.i416.i415.i.i.i.i = fmul double %.unpack.i.i424.i405.i.i.i.i, %.unpack2.i.i430.i411.i.i.i.i
  %tmp.i417.i416.i.i.i.i = fmul double %.unpack2.i.i426.i407.i.i.i.i, %.unpack.i.i428.i409.i.i.i.i
  %tmp.i418.i417.i.i.i.i = fadd double %tmp.i417.i416.i.i.i.i, %tmp.i416.i415.i.i.i.i
  %195 = fneg double %tmp.i418.i417.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit418.i.i.i.i"

"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit418.i.i.i.i": ; preds = %if.false.i401.i.i.i.i, %if.true.i381.i.i.i.i
  %tmp.i410.pn.i398.i.i.i.i = phi double [ %tmp.i410.i396.i.i.i.i, %if.true.i381.i.i.i.i ], [ %195, %if.false.i401.i.i.i.i ]
  %196 = getelementptr double, ptr %.unpack2.i.i.i373.i.i.i.i, i64 %tmp.i307.i.i.i.i
  store double %tmp.i410.pn.i398.i.i.i.i, ptr %196, align 8
  %tmp.i310.i.i.i.i = add nuw nsw i64 %.0256685.i.i.i.i, 1
  %exitcond.i.i.i.i = icmp eq i64 %.0256685.i.i.i.i, %tmp.i291711727.i.i.i.i
  br i1 %exitcond.i.i.i.i, label %while.cond.while.exit_crit_edge.i.i.i.i, label %while.body.i73.i.i.i

while.cond.while.exit_crit_edge.i.i.i.i:          ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit418.i.i.i.i"
  %197 = add nuw nsw i64 %184, 1
  %exitcond695.not.i.i.i.i = icmp eq i64 %197, %.unpack.i.i.i.i67.i.i.i
  br i1 %exitcond695.not.i.i.i.i, label %if.exit.i69.i.i.i, label %while.cond.preheader.i.i.i.i

if.true5.i.i.i.i:                                 ; preds = %if.exit.i69.i.i.i
  %.val6.pre.i419.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i423.i.i.i.i = icmp sgt i64 %.val6.pre.i419.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i423.i.i.i.i)
  %.val7.i425.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt3.i.i.i429.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i425.i.i.i.i, i64 %181, i32 2
  store ptr %.1.i70.i.i.i, ptr %.elt3.i.i.i429.i.i.i.i, align 8
  %tmp.i311.i.i.i.i = shl nuw i64 %.unpack.i.i.i.i67.i.i.i, 1
  %198 = getelementptr double, ptr %.1.i70.i.i.i, i64 %tmp.i311.i.i.i.i
  %.val6.pre.i440.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i444.i.i.i.i = icmp sgt i64 %.val6.pre.i440.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i444.i.i.i.i)
  %.val7.i446.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt3.i.i.i450.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i446.i.i.i.i, i64 %181, i32 2
  %.unpack4.i.i.i451.i.i.i.i = load ptr, ptr %.elt3.i.i.i450.i.i.i.i, align 8
  store double 1.000000e+00, ptr %.unpack4.i.i.i451.i.i.i.i, align 8
  %.val6.pre.i452.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i456.i.i.i.i = icmp sgt i64 %.val6.pre.i452.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i456.i.i.i.i)
  %.val7.i458.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt3.i.i.i462.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i458.i.i.i.i, i64 %181, i32 2
  %.unpack4.i.i.i463.i.i.i.i = load ptr, ptr %.elt3.i.i.i462.i.i.i.i, align 8
  %199 = getelementptr double, ptr %.unpack4.i.i.i463.i.i.i.i, i64 1
  store double 0.000000e+00, ptr %199, align 8
  %.0687.i.i.i.i = add i64 %tmp.i311.i.i.i.i, -2
  %tmp.i315.not688.i.i.i.i = icmp slt i64 %.0687.i.i.i.i, 2
  br i1 %tmp.i315.not688.i.i.i.i, label %if.exit7.i.i.i.i, label %while.body9.lr.ph.i.i.i.i

while.body9.lr.ph.i.i.i.i:                        ; preds = %if.true5.i.i.i.i
  %tmp.i318.i.i.i.i = sdiv i64 %.val.i.i.i, %.unpack.i.i.i.i67.i.i.i
  br label %while.body9.i.i.i.i

if.exit7.i.i.i.i:                                 ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i", %if.true5.i.i.i.i, %if.exit.i69.i.i.i, %if.true.i72.i.i.i
  %.2.i.i.i.i = phi ptr [ %.1.i70.i.i.i, %if.exit.i69.i.i.i ], [ %198, %if.true5.i.i.i.i ], [ %183, %if.true.i72.i.i.i ], [ %198, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i" ]
  %200 = add nuw nsw i64 %181, 1
  %exitcond696.not.i.i.i.i = icmp eq i64 %200, %.unpack264.val281.i.i.i.i
  br i1 %exitcond696.not.i.i.i.i, label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i", label %imp_for.body.i63.i.i.i

while.body9.i.i.i.i:                              ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i", %while.body9.lr.ph.i.i.i.i
  %.0690.i.i.i.i = phi i64 [ %.0687.i.i.i.i, %while.body9.lr.ph.i.i.i.i ], [ %.0.i.i.i.i, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i" ]
  %.0255689.i.i.i.i = phi i64 [ 2, %while.body9.lr.ph.i.i.i.i ], [ %tmp.i331.i.i.i.i, %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i" ]
  %.val6.pre.i464.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i468.i.i.i.i = icmp sgt i64 %.val6.pre.i464.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i468.i.i.i.i)
  %.val7.i470.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt3.i.i.i474.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i470.i.i.i.i, i64 %181, i32 2
  %.unpack4.i.i.i475.i.i.i.i = load ptr, ptr %.elt3.i.i.i474.i.i.i.i, align 8
  %tmp.i317.i.i.i.i = ashr exact i64 %.0255689.i.i.i.i, 1
  %tmp.i319.i.i.i.i = mul i64 %tmp.i317.i.i.i.i, %tmp.i318.i.i.i.i
  %tmp.i.i479.i.i.i.i = shl i64 %tmp.i319.i.i.i.i, 1
  %tmp.i403.not.i480.i.i.i.i = icmp slt i64 %.fca.0.extract105.i.i.i.i.i, %tmp.i.i479.i.i.i.i
  %tmp.i411.i502.i.i.i.i = sub i64 %.fca.0.extract105.i.i.i.i.i, %tmp.i319.i.i.i.i
  %tmp.i319.sink725.i.i.i.i = select i1 %tmp.i403.not.i480.i.i.i.i, i64 %tmp.i411.i502.i.i.i.i, i64 %tmp.i319.i.i.i.i
  %tmp.i404.i482.i.i.i.i = and i64 %tmp.i319.sink725.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %201 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i482.i.i.i.i
  %.unpack.i.i.i484.i.i.i.i = load double, ptr %201, align 8
  %.elt1.i.i.i485.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i482.i.i.i.i, i32 1
  %.unpack2.i.i.i486.i.i.i.i = load double, ptr %.elt1.i.i.i485.i.i.i.i, align 8
  %202 = ashr i64 %tmp.i319.sink725.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %203 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %202
  %.unpack.i.i420.i488.i.i.i.i = load double, ptr %203, align 8
  %.elt1.i.i421.i489.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %202, i32 1
  %.unpack2.i.i422.i490.i.i.i.i = load double, ptr %.elt1.i.i421.i489.i.i.i.i, align 8
  %tmp.i405.i491.i.i.i.i = fmul double %.unpack.i.i.i484.i.i.i.i, %.unpack.i.i420.i488.i.i.i.i
  %tmp.i406.i492.i.i.i.i = fmul double %.unpack2.i.i.i486.i.i.i.i, %.unpack2.i.i422.i490.i.i.i.i
  %tmp.i407.i493.i.i.i.i = fsub double %tmp.i405.i491.i.i.i.i, %tmp.i406.i492.i.i.i.i
  %204 = getelementptr double, ptr %.unpack4.i.i.i475.i.i.i.i, i64 %.0255689.i.i.i.i
  store double %tmp.i407.i493.i.i.i.i, ptr %204, align 8
  %.val6.pre.i519.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i523.i.i.i.i = icmp sgt i64 %.val6.pre.i519.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i523.i.i.i.i)
  %.val7.i525.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt3.i.i.i529.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i525.i.i.i.i, i64 %181, i32 2
  %.unpack4.i.i.i530.i.i.i.i = load ptr, ptr %.elt3.i.i.i529.i.i.i.i, align 8
  %tmp.i320.i.i.i.i = or i64 %.0255689.i.i.i.i, 1
  br i1 %tmp.i403.not.i480.i.i.i.i, label %if.false.i611.i.i.i.i, label %if.true.i591.i.i.i.i

if.true.i591.i.i.i.i:                             ; preds = %while.body9.i.i.i.i
  %tmp.i404.i537.i.i.i.i = and i64 %tmp.i319.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %205 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i537.i.i.i.i
  %.unpack.i.i.i539.i.i.i.i = load double, ptr %205, align 8
  %.elt1.i.i.i540.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i537.i.i.i.i, i32 1
  %.unpack2.i.i.i541.i.i.i.i = load double, ptr %.elt1.i.i.i540.i.i.i.i, align 8
  %206 = ashr i64 %tmp.i319.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %207 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %206
  %.unpack.i.i420.i543.i.i.i.i = load double, ptr %207, align 8
  %.elt1.i.i421.i544.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %206, i32 1
  %.unpack2.i.i422.i545.i.i.i.i = load double, ptr %.elt1.i.i421.i544.i.i.i.i, align 8
  %tmp.i408.i549.i.i.i.i = fmul double %.unpack2.i.i.i541.i.i.i.i, %.unpack.i.i420.i543.i.i.i.i
  %tmp.i409.i550.i.i.i.i = fmul double %.unpack.i.i.i539.i.i.i.i, %.unpack2.i.i422.i545.i.i.i.i
  %tmp.i410.i551.i.i.i.i = fadd double %tmp.i408.i549.i.i.i.i, %tmp.i409.i550.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit628.i.i.i.i"

if.false.i611.i.i.i.i:                            ; preds = %while.body9.i.i.i.i
  %tmp.i412.i558.i.i.i.i = and i64 %tmp.i411.i502.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %208 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i412.i558.i.i.i.i
  %.unpack.i.i424.i560.i.i.i.i = load double, ptr %208, align 8
  %.elt1.i.i425.i561.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i412.i558.i.i.i.i, i32 1
  %.unpack2.i.i426.i562.i.i.i.i = load double, ptr %.elt1.i.i425.i561.i.i.i.i, align 8
  %209 = ashr i64 %tmp.i411.i502.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %210 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %209
  %.unpack.i.i428.i564.i.i.i.i = load double, ptr %210, align 8
  %.elt1.i.i429.i565.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %209, i32 1
  %.unpack2.i.i430.i566.i.i.i.i = load double, ptr %.elt1.i.i429.i565.i.i.i.i, align 8
  %tmp.i416.i570.i.i.i.i = fmul double %.unpack.i.i424.i560.i.i.i.i, %.unpack2.i.i430.i566.i.i.i.i
  %tmp.i417.i571.i.i.i.i = fmul double %.unpack2.i.i426.i562.i.i.i.i, %.unpack.i.i428.i564.i.i.i.i
  %tmp.i418.i572.i.i.i.i = fadd double %tmp.i417.i571.i.i.i.i, %tmp.i416.i570.i.i.i.i
  %211 = fneg double %tmp.i418.i572.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit628.i.i.i.i"

"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit628.i.i.i.i": ; preds = %if.false.i611.i.i.i.i, %if.true.i591.i.i.i.i
  %.sink.i.i.i = phi double [ %211, %if.false.i611.i.i.i.i ], [ %tmp.i410.i551.i.i.i.i, %if.true.i591.i.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %209, %if.false.i611.i.i.i.i ], [ %206, %if.true.i591.i.i.i.i ]
  %tmp.i404.i592.i.pre-phi.i.i.i = phi i64 [ %tmp.i412.i558.i.i.i.i, %if.false.i611.i.i.i.i ], [ %tmp.i404.i537.i.i.i.i, %if.true.i591.i.i.i.i ]
  %212 = getelementptr double, ptr %.unpack4.i.i.i530.i.i.i.i, i64 %tmp.i320.i.i.i.i
  store double %.sink.i.i.i, ptr %212, align 8
  %.val6.pre.i574704.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i578705.i.i.i.i = icmp sgt i64 %.val6.pre.i574704.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i578705.i.i.i.i)
  %.val7.i580.pn.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.unpack4.i.i.i585709.in.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i580.pn.i.i.i.i, i64 %181, i32 2
  %.unpack4.i.i.i585709.i.i.i.i = load ptr, ptr %.unpack4.i.i.i585709.in.i.i.i.i, align 8
  %213 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i592.i.pre-phi.i.i.i
  %.unpack.i.i.i594.i.i.i.i = load double, ptr %213, align 8
  %.elt1.i.i.i595.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i592.i.pre-phi.i.i.i, i32 1
  %.unpack2.i.i.i596.i.i.i.i = load double, ptr %.elt1.i.i.i595.i.i.i.i, align 8
  %214 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %.pre-phi.i.i.i
  %.unpack.i.i420.i598.i.i.i.i = load double, ptr %214, align 8
  %.elt1.i.i421.i599.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %.pre-phi.i.i.i, i32 1
  %.unpack2.i.i422.i600.i.i.i.i = load double, ptr %.elt1.i.i421.i599.i.i.i.i, align 8
  %tmp.i405.i601.i.i.i.i = fmul double %.unpack.i.i.i594.i.i.i.i, %.unpack.i.i420.i598.i.i.i.i
  %tmp.i406.i602.i.i.i.i = fmul double %.unpack2.i.i.i596.i.i.i.i, %.unpack2.i.i422.i600.i.i.i.i
  %tmp.i407.i603.i.i.i.i = fsub double %tmp.i405.i601.i.i.i.i, %tmp.i406.i602.i.i.i.i
  %215 = getelementptr double, ptr %.unpack4.i.i.i585709.i.i.i.i, i64 %.0690.i.i.i.i
  store double %tmp.i407.i603.i.i.i.i, ptr %215, align 8
  %.val6.pre.i629.i.i.i.i = load i64, ptr %157, align 8
  %tmp.i.not.i.i633.i.i.i.i = icmp sgt i64 %.val6.pre.i629.i.i.i.i, %181
  tail call void @llvm.assume(i1 %tmp.i.not.i.i633.i.i.i.i)
  %.val7.i635.i.i.i.i = load ptr, ptr %.repack7.repack9.i.i.i.i, align 8
  %.elt3.i.i.i639.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i635.i.i.i.i, i64 %181, i32 2
  %.unpack4.i.i.i640.i.i.i.i = load ptr, ptr %.elt3.i.i.i639.i.i.i.i, align 8
  %tmp.i327.i.i.i.i = or i64 %.0690.i.i.i.i, 1
  br i1 %tmp.i403.not.i480.i.i.i.i, label %if.false.i666.i.i.i.i, label %if.true.i646.i.i.i.i

if.true.i646.i.i.i.i:                             ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit628.i.i.i.i"
  %tmp.i404.i647.i.i.i.i = and i64 %tmp.i319.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %216 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i647.i.i.i.i
  %.unpack.i.i.i649.i.i.i.i = load double, ptr %216, align 8
  %.elt1.i.i.i650.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i404.i647.i.i.i.i, i32 1
  %.unpack2.i.i.i651.i.i.i.i = load double, ptr %.elt1.i.i.i650.i.i.i.i, align 8
  %217 = ashr i64 %tmp.i319.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %218 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %217
  %.unpack.i.i420.i653.i.i.i.i = load double, ptr %218, align 8
  %.elt1.i.i421.i654.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %217, i32 1
  %.unpack2.i.i422.i655.i.i.i.i = load double, ptr %.elt1.i.i421.i654.i.i.i.i, align 8
  %tmp.i408.i659.i.i.i.i = fmul double %.unpack2.i.i.i651.i.i.i.i, %.unpack.i.i420.i653.i.i.i.i
  %tmp.i409.i660.i.i.i.i = fmul double %.unpack.i.i.i649.i.i.i.i, %.unpack2.i.i422.i655.i.i.i.i
  %tmp.i410.i661.i.i.i.i = fadd double %tmp.i408.i659.i.i.i.i, %tmp.i409.i660.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i"

if.false.i666.i.i.i.i:                            ; preds = %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit628.i.i.i.i"
  %tmp.i412.i668.i.i.i.i = and i64 %tmp.i411.i502.i.i.i.i, %.fca.1.extract106.i.i.i.i.i
  %219 = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i412.i668.i.i.i.i
  %.unpack.i.i424.i670.i.i.i.i = load double, ptr %219, align 8
  %.elt1.i.i425.i671.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i.i360.i.i.i.i, i64 %tmp.i412.i668.i.i.i.i, i32 1
  %.unpack2.i.i426.i672.i.i.i.i = load double, ptr %.elt1.i.i425.i671.i.i.i.i, align 8
  %220 = ashr i64 %tmp.i411.i502.i.i.i.i, %.fca.2.extract.i.i.i.i.i
  %221 = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %220
  %.unpack.i.i428.i674.i.i.i.i = load double, ptr %221, align 8
  %.elt1.i.i429.i675.i.i.i.i = getelementptr { double, double }, ptr %.fca.0.extract.i419.i.i.i.i.i, i64 %220, i32 1
  %.unpack2.i.i430.i676.i.i.i.i = load double, ptr %.elt1.i.i429.i675.i.i.i.i, align 8
  %tmp.i416.i680.i.i.i.i = fmul double %.unpack.i.i424.i670.i.i.i.i, %.unpack2.i.i430.i676.i.i.i.i
  %tmp.i417.i681.i.i.i.i = fmul double %.unpack2.i.i426.i672.i.i.i.i, %.unpack.i.i428.i674.i.i.i.i
  %tmp.i418.i682.i.i.i.i = fadd double %tmp.i417.i681.i.i.i.i, %tmp.i416.i680.i.i.i.i
  %222 = fneg double %tmp.i418.i682.i.i.i.i
  br label %"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i"

"std.numpy.fft.pocketfft.sincos_2pibyn[float]:std.numpy.fft.pocketfft.sincos_2pibyn.__getitem__:1[std.numpy.fft.pocketfft.sincos_2pibyn[float],int].1826.exit683.i.i.i.i": ; preds = %if.false.i666.i.i.i.i, %if.true.i646.i.i.i.i
  %tmp.i410.pn.i663.i.i.i.i = phi double [ %tmp.i410.i661.i.i.i.i, %if.true.i646.i.i.i.i ], [ %222, %if.false.i666.i.i.i.i ]
  %223 = fneg double %tmp.i410.pn.i663.i.i.i.i
  %224 = getelementptr double, ptr %.unpack4.i.i.i640.i.i.i.i, i64 %tmp.i327.i.i.i.i
  store double %223, ptr %224, align 8
  %tmp.i331.i.i.i.i = add i64 %.0255689.i.i.i.i, 2
  %.0.i.i.i.i = add i64 %.0690.i.i.i.i, -2
  %tmp.i315.not.i.i.i.i = icmp slt i64 %.0.i.i.i.i, %tmp.i331.i.i.i.i
  br i1 %tmp.i315.not.i.i.i.i, label %if.exit7.i.i.i.i, label %while.body9.i.i.i.i

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i": ; preds = %if.exit7.i.i.i.i, %entry.imp_for.exit_crit_edge.i.i.i.i
  %.fca.0.extract.i34.i.pre-phi.i.i.i.i = phi ptr [ %.pre700.i.i.i.i, %entry.imp_for.exit_crit_edge.i.i.i.i ], [ %.fca.0.extract.i419.i.i.i.i.i, %if.exit7.i.i.i.i ]
  %.fca.0.extract.i.i.pre-phi.i.i.i.i = phi ptr [ %.pre697.i.i.i.i, %entry.imp_for.exit_crit_edge.i.i.i.i ], [ %.fca.0.extract.i.i360.i.i.i.i, %if.exit7.i.i.i.i ]
  %225 = tail call {} @seq_free(ptr %.fca.0.extract.i.i.pre-phi.i.i.i.i)
  %226 = tail call {} @seq_free(ptr %.fca.0.extract.i34.i.pre-phi.i.i.i.i)
  %.unpack.i.i.i.pr.i.i = load i64, ptr %alloc_hoist.cache340.1.i.i, align 8
  %tmp.i.not.i.i.i.i.i = icmp eq i64 %.unpack.i.i.i.pr.i.i, 1
  br i1 %tmp.i.not.i.i.i.i.i, label %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i", label %if.exit.i.i124.i.i.i

if.exit.i.i124.i.i.i:                             ; preds = %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i"
  %.unpack212.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i, align 8
  %.unpack212.val.i.i.i.i.i = load i64, ptr %.unpack212.i.i.i.i.i, align 8
  %227 = shl i64 %.unpack.i.i.i.pr.i.i, 3
  %228 = tail call ptr @seq_alloc_atomic(i64 %227)
  %.not216407.i.i.i.i.i = icmp sgt i64 %.unpack212.val.i.i.i.i.i, 0
  br i1 %.not216407.i.i.i.i.i, label %imp_for.body.lr.ph.i.i126.i.i.i, label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i"

imp_for.body.lr.ph.i.i126.i.i.i:                  ; preds = %if.exit.i.i124.i.i.i
  %229 = getelementptr i8, ptr %.unpack212.i.i.i.i.i, i64 16
  br label %imp_for.body.i.i127.i.i.i

if.exit3.i.i.i.i.i:                               ; preds = %if.exit6.i.i.i.i.i
  %.not62.i.i.i.i.i.i = icmp eq ptr %.1194.i.i.i.i.i, %10
  br i1 %.not62.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i", label %if.false2.i.i.i.i.i.i

if.false2.i.i.i.i.i.i:                            ; preds = %if.exit3.i.i.i.i.i
  %.unpack39.i.i.i.i.i.i = load i64, ptr %alloc_hoist.cache340.1.i.i, align 8
  %tmp.i59.i.i.i.i.i.i = shl i64 %.unpack39.i.i.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr align 1 %.1194.i.i.i.i.i, i64 %tmp.i59.i.i.i.i.i.i, i1 false)
  br label %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i"

"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i": ; preds = %if.false2.i.i.i.i.i.i, %if.exit3.i.i.i.i.i, %if.exit.i.i124.i.i.i
  %230 = tail call {} @seq_free(ptr nonnull %228)
  br label %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i"

imp_for.body.i.i127.i.i.i:                        ; preds = %if.exit6.i.i.i.i.i, %imp_for.body.lr.ph.i.i126.i.i.i
  %231 = phi i64 [ 0, %imp_for.body.lr.ph.i.i126.i.i.i ], [ %302, %if.exit6.i.i.i.i.i ]
  %.1410.i.i.i.i.i = phi ptr [ %10, %imp_for.body.lr.ph.i.i126.i.i.i ], [ %.1194.i.i.i.i.i, %if.exit6.i.i.i.i.i ]
  %.0193409.i.i.i.i.i = phi ptr [ %228, %imp_for.body.lr.ph.i.i126.i.i.i ], [ %.2.i.i133.i.i.i, %if.exit6.i.i.i.i.i ]
  %.0196408.i.i.i.i.i = phi i64 [ %.unpack.i.i.i.pr.i.i, %imp_for.body.lr.ph.i.i126.i.i.i ], [ %tmp.i225.i.i.i.i.i, %if.exit6.i.i.i.i.i ]
  %232 = xor i64 %231, -1
  %tmp.i223.i.i.i.i.i = add i64 %.unpack212.val.i.i.i.i.i, %232
  %.val6.pre.i.i.i.i.i.i = load i64, ptr %.unpack212.i.i.i.i.i, align 8
  %.not9.i.i.i.i.i.i = icmp slt i64 %tmp.i223.i.i.i.i.i, 0
  %tmp.i8.i.i.i.i.i.i = select i1 %.not9.i.i.i.i.i.i, i64 %.val6.pre.i.i.i.i.i.i, i64 0
  %spec.select.i.i.i128.i.i.i = add i64 %tmp.i8.i.i.i.i.i.i, %tmp.i223.i.i.i.i.i
  %tmp.i.not.i.i.i.i.i.i.i = icmp sgt i64 %.val6.pre.i.i.i.i.i.i, %spec.select.i.i.i128.i.i.i
  %extract.t.i.i.i.i.i.i.i = icmp sgt i64 %spec.select.i.i.i128.i.i.i, -1
  tail call void @llvm.assume(i1 %tmp.i.not.i.i.i.i.i.i.i)
  tail call void @llvm.assume(i1 %extract.t.i.i.i.i.i.i.i)
  %.val7.i.i.i.i.i.i = load ptr, ptr %229, align 8
  %233 = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i.i.i.i.i, i64 %spec.select.i.i.i128.i.i.i
  %.unpack.i.i.i.i.i129.i.i.i = load i64, ptr %233, align 8
  %.elt1.i.i.i.i.i130.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i.i.i.i.i, i64 %spec.select.i.i.i128.i.i.i, i32 1
  %.unpack2.i.i.i.i.i131.i.i.i = load ptr, ptr %.elt1.i.i.i.i.i130.i.i.i, align 8
  %.elt3.i.i.i.i.i.i.i.i = getelementptr { i64, ptr, ptr }, ptr %.val7.i.i.i.i.i.i, i64 %spec.select.i.i.i128.i.i.i, i32 2
  %.unpack4.i.i.i.i.i.i.i.i = load ptr, ptr %.elt3.i.i.i.i.i.i.i.i, align 8
  %tmp.i224.i.i.i.i.i = sdiv i64 %.unpack.i.i.i.pr.i.i, %.0196408.i.i.i.i.i
  %tmp.i225.i.i.i.i.i = sdiv i64 %.0196408.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  switch i64 %.unpack.i.i.i.i.i129.i.i.i, label %if.false14.i.i141.i.i.i [
    i64 4, label %if.true4.i.i.i.i.i
    i64 2, label %if.true7.i.i.i.i.i
    i64 3, label %if.true10.i.i.i.i.i
    i64 5, label %if.true13.i.i132.i.i.i
  ]

if.true4.i.i.i.i.i:                               ; preds = %imp_for.body.i.i127.i.i.i
  %.not1834.i.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  br i1 %.not1834.i.i.i.i.i.i, label %imp_for.body.lr.ph.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.body.lr.ph.i.i.i.i.i.i:                   ; preds = %if.true4.i.i.i.i.i
  %tmp.i.i.i.i.i138.i.i.i = mul i64 %tmp.i225.i.i.i.i.i, 3
  %tmp.i.i1649.i.i.i.i.i.i = shl nuw i64 %tmp.i225.i.i.i.i.i, 1
  %tmp.i.i.i.i139.i.i.i = add i64 %tmp.i224.i.i.i.i.i, -1
  br label %imp_for.body.i246.i.i.i.i.i

imp_for.body.i246.i.i.i.i.i:                      ; preds = %imp_for.body.i246.i.i.i.i.i, %imp_for.body.lr.ph.i.i.i.i.i.i
  %234 = phi i64 [ 0, %imp_for.body.lr.ph.i.i.i.i.i.i ], [ %247, %imp_for.body.i246.i.i.i.i.i ]
  %tmp.i13.i.i.i.i.i.i.i = add i64 %234, %tmp.i.i.i.i.i138.i.i.i
  %tmp.i14.i.i.i.i.i.i.i = mul i64 %tmp.i13.i.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %235 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i.i.i.i.i.i.i
  %236 = load double, ptr %235, align 8
  %tmp.i13.i1645.i.i.i.i.i.i = add i64 %234, %tmp.i225.i.i.i.i.i
  %tmp.i14.i1646.i.i.i.i.i.i = mul i64 %tmp.i13.i1645.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %237 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1646.i.i.i.i.i.i
  %238 = load double, ptr %237, align 8
  %tmp.i.i1792.i.i.i.i.i.i = fadd double %236, %238
  %tmp.i4.i.i.i.i.i.i.i = fsub double %236, %238
  %tmp.i.i1647.i.i.i.i.i.i = shl i64 %234, 2
  %tmp.i9.i.i.i.i.i.i.i = or i64 %tmp.i.i1647.i.i.i.i.i.i, 2
  %tmp.i10.i.i.i.i.i.i.i = mul i64 %tmp.i9.i.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %239 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i.i.i.i.i.i.i
  store double %tmp.i4.i.i.i.i.i.i.i, ptr %239, align 8
  %tmp.i14.i1648.i.i.i.i.i.i = mul i64 %234, %tmp.i224.i.i.i.i.i
  %240 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1648.i.i.i.i.i.i
  %241 = load double, ptr %240, align 8
  %tmp.i13.i1650.i.i.i.i.i.i = add i64 %234, %tmp.i.i1649.i.i.i.i.i.i
  %tmp.i14.i1651.i.i.i.i.i.i = mul i64 %tmp.i13.i1650.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %242 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1651.i.i.i.i.i.i
  %243 = load double, ptr %242, align 8
  %tmp.i.i1793.i.i.i.i.i.i = fadd double %241, %243
  %tmp.i4.i1794.i.i.i.i.i.i = fsub double %241, %243
  %tmp.i9.i1653.i.i.i.i.i.i = or i64 %tmp.i.i1647.i.i.i.i.i.i, 1
  %tmp.i10.i1654.i.i.i.i.i.i = mul i64 %tmp.i9.i1653.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i.i.i.i.i.i.i = add i64 %tmp.i10.i1654.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %244 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i.i.i.i.i.i.i
  store double %tmp.i4.i1794.i.i.i.i.i.i, ptr %244, align 8
  %tmp.i.i1795.i.i.i.i.i.i = fadd double %tmp.i.i1792.i.i.i.i.i.i, %tmp.i.i1793.i.i.i.i.i.i
  %tmp.i4.i1796.i.i.i.i.i.i = fsub double %tmp.i.i1793.i.i.i.i.i.i, %tmp.i.i1792.i.i.i.i.i.i
  %tmp.i10.i1656.i.i.i.i.i.i = mul i64 %tmp.i.i1647.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %245 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i1656.i.i.i.i.i.i
  store double %tmp.i.i1795.i.i.i.i.i.i, ptr %245, align 8
  %tmp.i9.i1659.i.i.i.i.i.i = or i64 %tmp.i.i1647.i.i.i.i.i.i, 3
  %tmp.i10.i1660.i.i.i.i.i.i = mul i64 %tmp.i9.i1659.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i1661.i.i.i.i.i.i = add i64 %tmp.i10.i1660.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %246 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1661.i.i.i.i.i.i
  store double %tmp.i4.i1796.i.i.i.i.i.i, ptr %246, align 8
  %247 = add nuw nsw i64 %234, 1
  %exitcond.not.i247.i.i.i.i.i = icmp eq i64 %247, %tmp.i225.i.i.i.i.i
  br i1 %exitcond.not.i247.i.i.i.i.i, label %imp_for.exit.i.i.i.i.i.i, label %imp_for.body.i246.i.i.i.i.i

imp_for.exit.i.i.i.i.i.i:                         ; preds = %imp_for.body.i246.i.i.i.i.i
  %tmp.i1662.i.i.i.i.i.i = and i64 %tmp.i224.i.i.i.i.i, 1
  %tmp.i1663.not.i.i.i.i.i.i = icmp eq i64 %tmp.i1662.i.i.i.i.i.i, 0
  br i1 %tmp.i1663.not.i.i.i.i.i.i, label %imp_for.body2.i.i.i.i.i.i, label %if.exit.i.i.i140.i.i.i

if.exit.i.i.i140.i.i.i:                           ; preds = %imp_for.body2.i.i.i.i.i.i, %imp_for.exit.i.i.i.i.i.i
  %tmp.i1664.i.i.i.i.i.i = icmp sgt i64 %tmp.i224.i.i.i.i.i, 2
  br i1 %tmp.i1664.i.i.i.i.i.i, label %imp_for.cond12.preheader.lr.ph.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond12.preheader.lr.ph.i.i.i.i.i.i:       ; preds = %if.exit.i.i.i140.i.i.i
  %tmp.i8.i.i.i.i.i.i.i = shl nuw i64 %tmp.i.i.i.i139.i.i.i, 1
  br label %imp_for.cond12.preheader.us.i.i.i.i.i.i

imp_for.cond12.preheader.us.i.i.i.i.i.i:          ; preds = %imp_for.cond12.imp_for.exit15_crit_edge.us.i.i.i.i.i.i, %imp_for.cond12.preheader.lr.ph.i.i.i.i.i.i
  %248 = phi i64 [ %287, %imp_for.cond12.imp_for.exit15_crit_edge.us.i.i.i.i.i.i ], [ 0, %imp_for.cond12.preheader.lr.ph.i.i.i.i.i.i ]
  %tmp.i13.i1716.us.i.i.i.i.i.i = add i64 %248, %tmp.i225.i.i.i.i.i
  %tmp.i14.i1717.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1716.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i1730.us.i.i.i.i.i.i = add i64 %248, %tmp.i.i1649.i.i.i.i.i.i
  %tmp.i14.i1731.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1730.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i1746.us.i.i.i.i.i.i = add i64 %248, %tmp.i.i.i.i.i138.i.i.i
  %tmp.i14.i1747.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1746.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i14.i1754.us.i.i.i.i.i.i = mul i64 %248, %tmp.i224.i.i.i.i.i
  %tmp.i.i1759.us.i.i.i.i.i.i = shl i64 %248, 2
  %tmp.i10.i1760.us.i.i.i.i.i.i = mul i64 %tmp.i.i1759.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i1764.us.i.i.i.i.i.i = or i64 %tmp.i.i1759.us.i.i.i.i.i.i, 3
  %tmp.i10.i1765.us.i.i.i.i.i.i = mul i64 %tmp.i9.i1764.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i1776.us.i.i.i.i.i.i = or i64 %tmp.i.i1759.us.i.i.i.i.i.i, 2
  %tmp.i10.i1777.us.i.i.i.i.i.i = mul i64 %tmp.i9.i1776.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i1781.us.i.i.i.i.i.i = or i64 %tmp.i.i1759.us.i.i.i.i.i.i, 1
  %tmp.i10.i1782.us.i.i.i.i.i.i = mul i64 %tmp.i9.i1781.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  br label %imp_for.body13.us.i.i.i.i.i.i

imp_for.body13.us.i.i.i.i.i.i:                    ; preds = %imp_for.body13.us.i.i.i.i.i.i, %imp_for.cond12.preheader.us.i.i.i.i.i.i
  %249 = phi i64 [ 2, %imp_for.cond12.preheader.us.i.i.i.i.i.i ], [ %286, %imp_for.body13.us.i.i.i.i.i.i ]
  %tmp.i1710.us.i.i.i.i.i.i = sub i64 %tmp.i224.i.i.i.i.i, %249
  %tmp.i1711.us.i.i.i.i.i.i = add i64 %249, -2
  %250 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i1711.us.i.i.i.i.i.i
  %251 = load double, ptr %250, align 8
  %tmp.i1713.us.i.i.i.i.i.i = add i64 %249, -1
  %252 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i1713.us.i.i.i.i.i.i
  %253 = load double, ptr %252, align 8
  %tmp.i15.i1718.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i14.i1717.us.i.i.i.i.i.i
  %254 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1718.us.i.i.i.i.i.i
  %255 = load double, ptr %254, align 8
  %tmp.i15.i1721.us.i.i.i.i.i.i = add i64 %249, %tmp.i14.i1717.us.i.i.i.i.i.i
  %256 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1721.us.i.i.i.i.i.i
  %257 = load double, ptr %256, align 8
  %tmp.i.i1801.us.i.i.i.i.i.i = fmul double %251, %255
  %tmp.i8.i1802.us.i.i.i.i.i.i = fmul double %253, %257
  %tmp.i9.i1803.us.i.i.i.i.i.i = fadd double %tmp.i.i1801.us.i.i.i.i.i.i, %tmp.i8.i1802.us.i.i.i.i.i.i
  %tmp.i10.i1804.us.i.i.i.i.i.i = fmul double %251, %257
  %tmp.i11.i1805.us.i.i.i.i.i.i = fmul double %253, %255
  %tmp.i12.i.us.i.i.i.i.i.i = fsub double %tmp.i10.i1804.us.i.i.i.i.i.i, %tmp.i11.i1805.us.i.i.i.i.i.i
  %tmp.i9.i1724.us.i.i.i.i.i.i = add i64 %tmp.i1711.us.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %258 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1724.us.i.i.i.i.i.i
  %259 = load double, ptr %258, align 8
  %tmp.i9.i1727.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %260 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1727.us.i.i.i.i.i.i
  %261 = load double, ptr %260, align 8
  %tmp.i15.i1732.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i14.i1731.us.i.i.i.i.i.i
  %262 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1732.us.i.i.i.i.i.i
  %263 = load double, ptr %262, align 8
  %tmp.i15.i1736.us.i.i.i.i.i.i = add i64 %249, %tmp.i14.i1731.us.i.i.i.i.i.i
  %264 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1736.us.i.i.i.i.i.i
  %265 = load double, ptr %264, align 8
  %tmp.i.i1806.us.i.i.i.i.i.i = fmul double %259, %263
  %tmp.i8.i1807.us.i.i.i.i.i.i = fmul double %261, %265
  %tmp.i9.i1808.us.i.i.i.i.i.i = fadd double %tmp.i.i1806.us.i.i.i.i.i.i, %tmp.i8.i1807.us.i.i.i.i.i.i
  %tmp.i10.i1809.us.i.i.i.i.i.i = fmul double %259, %265
  %tmp.i11.i1810.us.i.i.i.i.i.i = fmul double %261, %263
  %tmp.i12.i1811.us.i.i.i.i.i.i = fsub double %tmp.i10.i1809.us.i.i.i.i.i.i, %tmp.i11.i1810.us.i.i.i.i.i.i
  %tmp.i9.i1739.us.i.i.i.i.i.i = add i64 %tmp.i1711.us.i.i.i.i.i.i, %tmp.i8.i.i.i.i.i.i.i
  %266 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1739.us.i.i.i.i.i.i
  %267 = load double, ptr %266, align 8
  %tmp.i9.i1743.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i8.i.i.i.i.i.i.i
  %268 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1743.us.i.i.i.i.i.i
  %269 = load double, ptr %268, align 8
  %tmp.i15.i1748.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i14.i1747.us.i.i.i.i.i.i
  %270 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1748.us.i.i.i.i.i.i
  %271 = load double, ptr %270, align 8
  %tmp.i15.i1752.us.i.i.i.i.i.i = add i64 %249, %tmp.i14.i1747.us.i.i.i.i.i.i
  %272 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1752.us.i.i.i.i.i.i
  %273 = load double, ptr %272, align 8
  %tmp.i.i1812.us.i.i.i.i.i.i = fmul double %267, %271
  %tmp.i8.i1813.us.i.i.i.i.i.i = fmul double %269, %273
  %tmp.i9.i1814.us.i.i.i.i.i.i = fadd double %tmp.i.i1812.us.i.i.i.i.i.i, %tmp.i8.i1813.us.i.i.i.i.i.i
  %tmp.i10.i1815.us.i.i.i.i.i.i = fmul double %267, %273
  %tmp.i11.i1816.us.i.i.i.i.i.i = fmul double %269, %271
  %tmp.i12.i1817.us.i.i.i.i.i.i = fsub double %tmp.i10.i1815.us.i.i.i.i.i.i, %tmp.i11.i1816.us.i.i.i.i.i.i
  %tmp.i.i1818.us.i.i.i.i.i.i = fadd double %tmp.i9.i1803.us.i.i.i.i.i.i, %tmp.i9.i1814.us.i.i.i.i.i.i
  %tmp.i4.i1819.us.i.i.i.i.i.i = fsub double %tmp.i9.i1814.us.i.i.i.i.i.i, %tmp.i9.i1803.us.i.i.i.i.i.i
  %tmp.i.i1820.us.i.i.i.i.i.i = fadd double %tmp.i12.i.us.i.i.i.i.i.i, %tmp.i12.i1817.us.i.i.i.i.i.i
  %tmp.i4.i1821.us.i.i.i.i.i.i = fsub double %tmp.i12.i.us.i.i.i.i.i.i, %tmp.i12.i1817.us.i.i.i.i.i.i
  %tmp.i15.i1755.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i14.i1754.us.i.i.i.i.i.i
  %274 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1755.us.i.i.i.i.i.i
  %275 = load double, ptr %274, align 8
  %tmp.i.i1822.us.i.i.i.i.i.i = fadd double %tmp.i9.i1808.us.i.i.i.i.i.i, %275
  %tmp.i4.i1823.us.i.i.i.i.i.i = fsub double %275, %tmp.i9.i1808.us.i.i.i.i.i.i
  %tmp.i15.i1757.us.i.i.i.i.i.i = add i64 %249, %tmp.i14.i1754.us.i.i.i.i.i.i
  %276 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1757.us.i.i.i.i.i.i
  %277 = load double, ptr %276, align 8
  %tmp.i.i1824.us.i.i.i.i.i.i = fadd double %tmp.i12.i1811.us.i.i.i.i.i.i, %277
  %tmp.i4.i1825.us.i.i.i.i.i.i = fsub double %277, %tmp.i12.i1811.us.i.i.i.i.i.i
  %tmp.i.i1826.us.i.i.i.i.i.i = fadd double %tmp.i.i1822.us.i.i.i.i.i.i, %tmp.i.i1818.us.i.i.i.i.i.i
  %tmp.i4.i1827.us.i.i.i.i.i.i = fsub double %tmp.i.i1822.us.i.i.i.i.i.i, %tmp.i.i1818.us.i.i.i.i.i.i
  %tmp.i11.i1761.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i10.i1760.us.i.i.i.i.i.i
  %278 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1761.us.i.i.i.i.i.i
  store double %tmp.i.i1826.us.i.i.i.i.i.i, ptr %278, align 8
  %tmp.i1762.us.i.i.i.i.i.i = add i64 %tmp.i1710.us.i.i.i.i.i.i, -1
  %tmp.i11.i1766.us.i.i.i.i.i.i = add i64 %tmp.i1762.us.i.i.i.i.i.i, %tmp.i10.i1765.us.i.i.i.i.i.i
  %279 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1766.us.i.i.i.i.i.i
  store double %tmp.i4.i1827.us.i.i.i.i.i.i, ptr %279, align 8
  %tmp.i.i1828.us.i.i.i.i.i.i = fadd double %tmp.i.i1820.us.i.i.i.i.i.i, %tmp.i.i1824.us.i.i.i.i.i.i
  %tmp.i4.i1829.us.i.i.i.i.i.i = fsub double %tmp.i.i1820.us.i.i.i.i.i.i, %tmp.i.i1824.us.i.i.i.i.i.i
  %tmp.i11.i1769.us.i.i.i.i.i.i = add i64 %249, %tmp.i10.i1760.us.i.i.i.i.i.i
  %280 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1769.us.i.i.i.i.i.i
  store double %tmp.i.i1828.us.i.i.i.i.i.i, ptr %280, align 8
  %tmp.i11.i1773.us.i.i.i.i.i.i = add i64 %tmp.i1710.us.i.i.i.i.i.i, %tmp.i10.i1765.us.i.i.i.i.i.i
  %281 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1773.us.i.i.i.i.i.i
  store double %tmp.i4.i1829.us.i.i.i.i.i.i, ptr %281, align 8
  %tmp.i.i1830.us.i.i.i.i.i.i = fadd double %tmp.i4.i1823.us.i.i.i.i.i.i, %tmp.i4.i1821.us.i.i.i.i.i.i
  %tmp.i4.i1831.us.i.i.i.i.i.i = fsub double %tmp.i4.i1823.us.i.i.i.i.i.i, %tmp.i4.i1821.us.i.i.i.i.i.i
  %tmp.i11.i1778.us.i.i.i.i.i.i = add i64 %tmp.i1713.us.i.i.i.i.i.i, %tmp.i10.i1777.us.i.i.i.i.i.i
  %282 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1778.us.i.i.i.i.i.i
  store double %tmp.i.i1830.us.i.i.i.i.i.i, ptr %282, align 8
  %tmp.i11.i1783.us.i.i.i.i.i.i = add i64 %tmp.i1762.us.i.i.i.i.i.i, %tmp.i10.i1782.us.i.i.i.i.i.i
  %283 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1783.us.i.i.i.i.i.i
  store double %tmp.i4.i1831.us.i.i.i.i.i.i, ptr %283, align 8
  %tmp.i.i1832.us.i.i.i.i.i.i = fadd double %tmp.i4.i1819.us.i.i.i.i.i.i, %tmp.i4.i1825.us.i.i.i.i.i.i
  %tmp.i4.i1833.us.i.i.i.i.i.i = fsub double %tmp.i4.i1819.us.i.i.i.i.i.i, %tmp.i4.i1825.us.i.i.i.i.i.i
  %tmp.i11.i1787.us.i.i.i.i.i.i = add i64 %249, %tmp.i10.i1777.us.i.i.i.i.i.i
  %284 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1787.us.i.i.i.i.i.i
  store double %tmp.i.i1832.us.i.i.i.i.i.i, ptr %284, align 8
  %tmp.i11.i1791.us.i.i.i.i.i.i = add i64 %tmp.i1710.us.i.i.i.i.i.i, %tmp.i10.i1782.us.i.i.i.i.i.i
  %285 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1791.us.i.i.i.i.i.i
  store double %tmp.i4.i1833.us.i.i.i.i.i.i, ptr %285, align 8
  %286 = add i64 %249, 2
  %.not1643.us.i.i.i.i.i.i = icmp slt i64 %286, %tmp.i224.i.i.i.i.i
  br i1 %.not1643.us.i.i.i.i.i.i, label %imp_for.body13.us.i.i.i.i.i.i, label %imp_for.cond12.imp_for.exit15_crit_edge.us.i.i.i.i.i.i

imp_for.cond12.imp_for.exit15_crit_edge.us.i.i.i.i.i.i: ; preds = %imp_for.body13.us.i.i.i.i.i.i
  %287 = add nuw nsw i64 %248, 1
  %exitcond1840.not.i.i.i.i.i.i = icmp eq i64 %287, %tmp.i225.i.i.i.i.i
  br i1 %exitcond1840.not.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i, label %imp_for.cond12.preheader.us.i.i.i.i.i.i

imp_for.body2.i.i.i.i.i.i:                        ; preds = %imp_for.body2.i.i.i.i.i.i, %imp_for.exit.i.i.i.i.i.i
  %288 = phi i64 [ %301, %imp_for.body2.i.i.i.i.i.i ], [ 0, %imp_for.exit.i.i.i.i.i.i ]
  %tmp.i13.i1667.i.i.i.i.i.i = add i64 %288, %tmp.i225.i.i.i.i.i
  %tmp.i14.i1668.i.i.i.i.i.i = mul i64 %tmp.i13.i1667.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i15.i.i.i.i.i.i.i = add i64 %tmp.i14.i1668.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %289 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i.i.i.i.i.i.i
  %290 = load double, ptr %289, align 8
  %tmp.i13.i1671.i.i.i.i.i.i = add i64 %288, %tmp.i.i.i.i.i138.i.i.i
  %tmp.i14.i1672.i.i.i.i.i.i = mul i64 %tmp.i13.i1671.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i15.i1673.i.i.i.i.i.i = add i64 %tmp.i14.i1672.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %291 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1673.i.i.i.i.i.i
  %292 = load double, ptr %291, align 8
  %tmp.i1674.i.i.i.i.i.i = fadd double %290, %292
  %tmp.i1675.i.i.i.i.i.i = fmul double %tmp.i1674.i.i.i.i.i.i, 0xBFE6A09E667F3BCD
  %tmp.i1685.i.i.i.i.i.i = fsub double %290, %292
  %tmp.i1686.i.i.i.i.i.i = fmul double %tmp.i1685.i.i.i.i.i.i, 0x3FE6A09E667F3BCD
  %tmp.i14.i1688.i.i.i.i.i.i = mul i64 %288, %tmp.i224.i.i.i.i.i
  %tmp.i15.i1689.i.i.i.i.i.i = add i64 %tmp.i14.i1688.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %293 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1689.i.i.i.i.i.i
  %294 = load double, ptr %293, align 8
  %tmp.i.i1797.i.i.i.i.i.i = fadd double %294, %tmp.i1686.i.i.i.i.i.i
  %tmp.i4.i1798.i.i.i.i.i.i = fsub double %294, %tmp.i1686.i.i.i.i.i.i
  %tmp.i.i1691.i.i.i.i.i.i = shl i64 %288, 2
  %tmp.i10.i1692.i.i.i.i.i.i = mul i64 %tmp.i.i1691.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i1693.i.i.i.i.i.i = add i64 %tmp.i10.i1692.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %295 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1693.i.i.i.i.i.i
  store double %tmp.i.i1797.i.i.i.i.i.i, ptr %295, align 8
  %tmp.i9.i1696.i.i.i.i.i.i = or i64 %tmp.i.i1691.i.i.i.i.i.i, 2
  %tmp.i10.i1697.i.i.i.i.i.i = mul i64 %tmp.i9.i1696.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i1698.i.i.i.i.i.i = add i64 %tmp.i10.i1697.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %296 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1698.i.i.i.i.i.i
  store double %tmp.i4.i1798.i.i.i.i.i.i, ptr %296, align 8
  %tmp.i13.i1701.i.i.i.i.i.i = add i64 %288, %tmp.i.i1649.i.i.i.i.i.i
  %tmp.i14.i1702.i.i.i.i.i.i = mul i64 %tmp.i13.i1701.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i15.i1703.i.i.i.i.i.i = add i64 %tmp.i14.i1702.i.i.i.i.i.i, %tmp.i.i.i.i139.i.i.i
  %297 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1703.i.i.i.i.i.i
  %298 = load double, ptr %297, align 8
  %tmp.i.i1799.i.i.i.i.i.i = fadd double %tmp.i1675.i.i.i.i.i.i, %298
  %tmp.i4.i1800.i.i.i.i.i.i = fsub double %tmp.i1675.i.i.i.i.i.i, %298
  %tmp.i9.i1705.i.i.i.i.i.i = or i64 %tmp.i.i1691.i.i.i.i.i.i, 3
  %tmp.i10.i1706.i.i.i.i.i.i = mul i64 %tmp.i9.i1705.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %299 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i1706.i.i.i.i.i.i
  store double %tmp.i.i1799.i.i.i.i.i.i, ptr %299, align 8
  %tmp.i9.i1708.i.i.i.i.i.i = or i64 %tmp.i.i1691.i.i.i.i.i.i, 1
  %tmp.i10.i1709.i.i.i.i.i.i = mul i64 %tmp.i9.i1708.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %300 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i1709.i.i.i.i.i.i
  store double %tmp.i4.i1800.i.i.i.i.i.i, ptr %300, align 8
  %301 = add nuw nsw i64 %288, 1
  %exitcond1839.not.i.i.i.i.i.i = icmp eq i64 %301, %tmp.i225.i.i.i.i.i
  br i1 %exitcond1839.not.i.i.i.i.i.i, label %if.exit.i.i.i140.i.i.i, label %imp_for.body2.i.i.i.i.i.i

if.exit6.i.i.i.i.i:                               ; preds = %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i, %imp_for.exit86.i.i.i.i.i.i, %imp_for.cond83.preheader.thread3215.i.i.i.i.i.i, %imp_for.cond83.preheader.i.i.i.i.i.i, %imp_for.cond75.preheader.thread.i.i.i.i.i.i, %imp_for.cond75.preheader.i.thread.i.i.i.i.i, %imp_for.cond75.preheader.i.i.i.i.i.i, %imp_for.cond5.imp_for.exit8_crit_edge.us.i343.i.i.i.i.i, %imp_for.cond5.preheader.lr.ph.i336.i.i.i.i.i, %imp_for.exit.i334.i.i.i.i.i, %if.true13.i.i132.i.i.i, %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i, %imp_for.exit.i306.i.i.i.i.i, %if.true10.i.i.i.i.i, %imp_for.cond12.imp_for.exit15_crit_edge.us.i278.i.i.i.i.i, %if.exit.i274.i.i.i.i.i, %if.true7.i.i.i.i.i, %imp_for.cond12.imp_for.exit15_crit_edge.us.i.i.i.i.i.i, %if.exit.i.i.i140.i.i.i, %if.true4.i.i.i.i.i
  %.1194.i.i.i.i.i = phi ptr [ %.0193409.i.i.i.i.i, %if.true4.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %if.exit.i.i.i140.i.i.i ], [ %.0193409.i.i.i.i.i, %if.true7.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %if.exit.i274.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %if.true10.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.exit.i306.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %if.true13.i.i132.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.exit.i334.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond5.preheader.lr.ph.i336.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond75.preheader.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond75.preheader.i.thread.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond75.preheader.thread.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond83.preheader.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond83.preheader.thread3215.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.exit86.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond12.imp_for.exit15_crit_edge.us.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond12.imp_for.exit15_crit_edge.us.i278.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond5.imp_for.exit8_crit_edge.us.i343.i.i.i.i.i ]
  %.2.i.i133.i.i.i = phi ptr [ %.1410.i.i.i.i.i, %if.true4.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %if.exit.i.i.i140.i.i.i ], [ %.1410.i.i.i.i.i, %if.true7.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %if.exit.i274.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %if.true10.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.exit.i306.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %if.true13.i.i132.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.exit.i334.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond5.preheader.lr.ph.i336.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond75.preheader.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond75.preheader.i.thread.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond75.preheader.thread.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond83.preheader.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond83.preheader.thread3215.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.exit86.i.i.i.i.i.i ], [ %.0193409.i.i.i.i.i, %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond12.imp_for.exit15_crit_edge.us.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond12.imp_for.exit15_crit_edge.us.i278.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i ], [ %.1410.i.i.i.i.i, %imp_for.cond5.imp_for.exit8_crit_edge.us.i343.i.i.i.i.i ]
  %302 = add nuw nsw i64 %231, 1
  %exitcond.not.i.i134.i.i.i = icmp eq i64 %302, %.unpack212.val.i.i.i.i.i
  br i1 %exitcond.not.i.i134.i.i.i, label %if.exit3.i.i.i.i.i, label %imp_for.body.i.i127.i.i.i

if.true7.i.i.i.i.i:                               ; preds = %imp_for.body.i.i127.i.i.i
  %.not771.i.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  br i1 %.not771.i.i.i.i.i.i, label %imp_for.body.lr.ph.i261.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.body.lr.ph.i261.i.i.i.i.i:                ; preds = %if.true7.i.i.i.i.i
  %tmp.i.i262.i.i.i.i.i = add i64 %tmp.i224.i.i.i.i.i, -1
  br label %imp_for.body.i263.i.i.i.i.i

imp_for.body.i263.i.i.i.i.i:                      ; preds = %imp_for.body.i263.i.i.i.i.i, %imp_for.body.lr.ph.i261.i.i.i.i.i
  %303 = phi i64 [ 0, %imp_for.body.lr.ph.i261.i.i.i.i.i ], [ %310, %imp_for.body.i263.i.i.i.i.i ]
  %tmp.i14.i.i264.i.i.i.i.i = mul i64 %303, %tmp.i224.i.i.i.i.i
  %304 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i.i264.i.i.i.i.i
  %305 = load double, ptr %304, align 8
  %tmp.i13.i.i265.i.i.i.i.i = add i64 %303, %tmp.i225.i.i.i.i.i
  %tmp.i14.i711.i.i.i.i.i.i = mul i64 %tmp.i13.i.i265.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %306 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i711.i.i.i.i.i.i
  %307 = load double, ptr %306, align 8
  %tmp.i.i762.i.i.i.i.i.i = fadd double %305, %307
  %tmp.i4.i.i266.i.i.i.i.i = fsub double %305, %307
  %tmp.i.i.i267.i.i.i.i.i = shl nuw i64 %303, 1
  %tmp.i10.i.i268.i.i.i.i.i = mul i64 %tmp.i.i.i267.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %308 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i.i268.i.i.i.i.i
  store double %tmp.i.i762.i.i.i.i.i.i, ptr %308, align 8
  %tmp.i9.i.i269.i.i.i.i.i = or i64 %tmp.i.i.i267.i.i.i.i.i, 1
  %tmp.i10.i713.i.i.i.i.i.i = mul i64 %tmp.i9.i.i269.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i.i270.i.i.i.i.i = add i64 %tmp.i10.i713.i.i.i.i.i.i, %tmp.i.i262.i.i.i.i.i
  %309 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i.i270.i.i.i.i.i
  store double %tmp.i4.i.i266.i.i.i.i.i, ptr %309, align 8
  %310 = add nuw nsw i64 %303, 1
  %exitcond.not.i271.i.i.i.i.i = icmp eq i64 %310, %tmp.i225.i.i.i.i.i
  br i1 %exitcond.not.i271.i.i.i.i.i, label %imp_for.exit.i272.i.i.i.i.i, label %imp_for.body.i263.i.i.i.i.i

imp_for.exit.i272.i.i.i.i.i:                      ; preds = %imp_for.body.i263.i.i.i.i.i
  %tmp.i714.i.i.i.i.i.i = and i64 %tmp.i224.i.i.i.i.i, 1
  %tmp.i715.not.i.i.i.i.i.i = icmp eq i64 %tmp.i714.i.i.i.i.i.i, 0
  br i1 %tmp.i715.not.i.i.i.i.i.i, label %imp_for.body2.i281.i.i.i.i.i, label %if.exit.i274.i.i.i.i.i

if.exit.i274.i.i.i.i.i:                           ; preds = %imp_for.body2.i281.i.i.i.i.i, %imp_for.exit.i272.i.i.i.i.i
  %tmp.i716.i.i.i.i.i.i = icmp sgt i64 %tmp.i224.i.i.i.i.i, 2
  br i1 %tmp.i716.i.i.i.i.i.i, label %imp_for.cond12.preheader.us.i275.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond12.preheader.us.i275.i.i.i.i.i:       ; preds = %imp_for.cond12.imp_for.exit15_crit_edge.us.i278.i.i.i.i.i, %if.exit.i274.i.i.i.i.i
  %311 = phi i64 [ %330, %imp_for.cond12.imp_for.exit15_crit_edge.us.i278.i.i.i.i.i ], [ 0, %if.exit.i274.i.i.i.i.i ]
  %tmp.i13.i735.us.i.i.i.i.i.i = add i64 %311, %tmp.i225.i.i.i.i.i
  %tmp.i14.i736.us.i.i.i.i.i.i = mul i64 %tmp.i13.i735.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i14.i742.us.i.i.i.i.i.i = mul i64 %311, %tmp.i224.i.i.i.i.i
  %tmp.i.i745.us.i.i.i.i.i.i = shl nuw i64 %311, 1
  %tmp.i10.i746.us.i.i.i.i.i.i = mul i64 %tmp.i.i745.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i750.us.i.i.i.i.i.i = or i64 %tmp.i.i745.us.i.i.i.i.i.i, 1
  %tmp.i10.i751.us.i.i.i.i.i.i = mul i64 %tmp.i9.i750.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  br label %imp_for.body13.us.i276.i.i.i.i.i

imp_for.body13.us.i276.i.i.i.i.i:                 ; preds = %imp_for.body13.us.i276.i.i.i.i.i, %imp_for.cond12.preheader.us.i275.i.i.i.i.i
  %312 = phi i64 [ 2, %imp_for.cond12.preheader.us.i275.i.i.i.i.i ], [ %329, %imp_for.body13.us.i276.i.i.i.i.i ]
  %tmp.i731.us.i.i.i.i.i.i = sub i64 %tmp.i224.i.i.i.i.i, %312
  %tmp.i732.us.i.i.i.i.i.i = add i64 %312, -2
  %313 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i732.us.i.i.i.i.i.i
  %314 = load double, ptr %313, align 8
  %tmp.i733.us.i.i.i.i.i.i = add i64 %312, -1
  %315 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i733.us.i.i.i.i.i.i
  %316 = load double, ptr %315, align 8
  %tmp.i15.i737.us.i.i.i.i.i.i = add i64 %tmp.i733.us.i.i.i.i.i.i, %tmp.i14.i736.us.i.i.i.i.i.i
  %317 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i737.us.i.i.i.i.i.i
  %318 = load double, ptr %317, align 8
  %tmp.i15.i740.us.i.i.i.i.i.i = add i64 %312, %tmp.i14.i736.us.i.i.i.i.i.i
  %319 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i740.us.i.i.i.i.i.i
  %320 = load double, ptr %319, align 8
  %tmp.i.i763.us.i.i.i.i.i.i = fmul double %314, %318
  %tmp.i8.i.us.i.i.i.i.i.i = fmul double %316, %320
  %tmp.i9.i764.us.i.i.i.i.i.i = fadd double %tmp.i.i763.us.i.i.i.i.i.i, %tmp.i8.i.us.i.i.i.i.i.i
  %tmp.i10.i765.us.i.i.i.i.i.i = fmul double %314, %320
  %tmp.i11.i766.us.i.i.i.i.i.i = fmul double %316, %318
  %tmp.i12.i.us.i277.i.i.i.i.i = fsub double %tmp.i10.i765.us.i.i.i.i.i.i, %tmp.i11.i766.us.i.i.i.i.i.i
  %tmp.i15.i743.us.i.i.i.i.i.i = add i64 %tmp.i733.us.i.i.i.i.i.i, %tmp.i14.i742.us.i.i.i.i.i.i
  %321 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i743.us.i.i.i.i.i.i
  %322 = load double, ptr %321, align 8
  %tmp.i.i767.us.i.i.i.i.i.i = fadd double %322, %tmp.i9.i764.us.i.i.i.i.i.i
  %tmp.i4.i768.us.i.i.i.i.i.i = fsub double %322, %tmp.i9.i764.us.i.i.i.i.i.i
  %tmp.i11.i747.us.i.i.i.i.i.i = add i64 %tmp.i733.us.i.i.i.i.i.i, %tmp.i10.i746.us.i.i.i.i.i.i
  %323 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i747.us.i.i.i.i.i.i
  store double %tmp.i.i767.us.i.i.i.i.i.i, ptr %323, align 8
  %tmp.i748.us.i.i.i.i.i.i = add i64 %tmp.i731.us.i.i.i.i.i.i, %tmp.i10.i751.us.i.i.i.i.i.i
  %tmp.i11.i752.us.i.i.i.i.i.i = add i64 %tmp.i748.us.i.i.i.i.i.i, -1
  %324 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i752.us.i.i.i.i.i.i
  store double %tmp.i4.i768.us.i.i.i.i.i.i, ptr %324, align 8
  %tmp.i15.i754.us.i.i.i.i.i.i = add i64 %312, %tmp.i14.i742.us.i.i.i.i.i.i
  %325 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i754.us.i.i.i.i.i.i
  %326 = load double, ptr %325, align 8
  %tmp.i.i769.us.i.i.i.i.i.i = fadd double %tmp.i12.i.us.i277.i.i.i.i.i, %326
  %tmp.i4.i770.us.i.i.i.i.i.i = fsub double %tmp.i12.i.us.i277.i.i.i.i.i, %326
  %tmp.i11.i757.us.i.i.i.i.i.i = add i64 %312, %tmp.i10.i746.us.i.i.i.i.i.i
  %327 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i757.us.i.i.i.i.i.i
  store double %tmp.i.i769.us.i.i.i.i.i.i, ptr %327, align 8
  %328 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i748.us.i.i.i.i.i.i
  store double %tmp.i4.i770.us.i.i.i.i.i.i, ptr %328, align 8
  %329 = add i64 %312, 2
  %.not709.us.i.i.i.i.i.i = icmp slt i64 %329, %tmp.i224.i.i.i.i.i
  br i1 %.not709.us.i.i.i.i.i.i, label %imp_for.body13.us.i276.i.i.i.i.i, label %imp_for.cond12.imp_for.exit15_crit_edge.us.i278.i.i.i.i.i

imp_for.cond12.imp_for.exit15_crit_edge.us.i278.i.i.i.i.i: ; preds = %imp_for.body13.us.i276.i.i.i.i.i
  %330 = add nuw nsw i64 %311, 1
  %exitcond777.not.i.i.i.i.i.i = icmp eq i64 %330, %tmp.i225.i.i.i.i.i
  br i1 %exitcond777.not.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i, label %imp_for.cond12.preheader.us.i275.i.i.i.i.i

imp_for.body2.i281.i.i.i.i.i:                     ; preds = %imp_for.body2.i281.i.i.i.i.i, %imp_for.exit.i272.i.i.i.i.i
  %331 = phi i64 [ %339, %imp_for.body2.i281.i.i.i.i.i ], [ 0, %imp_for.exit.i272.i.i.i.i.i ]
  %tmp.i.i718.i.i.i.i.i.i = shl nuw i64 %331, 1
  %tmp.i9.i719.i.i.i.i.i.i = or i64 %tmp.i.i718.i.i.i.i.i.i, 1
  %tmp.i10.i720.i.i.i.i.i.i = mul i64 %tmp.i9.i719.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %332 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i720.i.i.i.i.i.i
  %tmp.i13.i722.i.i.i.i.i.i = add i64 %331, %tmp.i225.i.i.i.i.i
  %tmp.i14.i723.i.i.i.i.i.i = mul i64 %tmp.i13.i722.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i15.i.i282.i.i.i.i.i = add i64 %tmp.i14.i723.i.i.i.i.i.i, %tmp.i.i262.i.i.i.i.i
  %333 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i.i282.i.i.i.i.i
  %334 = load double, ptr %333, align 8
  %335 = fneg double %334
  store double %335, ptr %332, align 8
  %tmp.i10.i726.i.i.i.i.i.i = mul i64 %tmp.i.i718.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i727.i.i.i.i.i.i = add i64 %tmp.i10.i726.i.i.i.i.i.i, %tmp.i.i262.i.i.i.i.i
  %336 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i727.i.i.i.i.i.i
  %tmp.i14.i729.i.i.i.i.i.i = mul i64 %331, %tmp.i224.i.i.i.i.i
  %tmp.i15.i730.i.i.i.i.i.i = add i64 %tmp.i14.i729.i.i.i.i.i.i, %tmp.i.i262.i.i.i.i.i
  %337 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i730.i.i.i.i.i.i
  %338 = load double, ptr %337, align 8
  store double %338, ptr %336, align 8
  %339 = add nuw nsw i64 %331, 1
  %exitcond776.not.i.i.i.i.i.i = icmp eq i64 %339, %tmp.i225.i.i.i.i.i
  br i1 %exitcond776.not.i.i.i.i.i.i, label %if.exit.i274.i.i.i.i.i, label %imp_for.body2.i281.i.i.i.i.i

if.true10.i.i.i.i.i:                              ; preds = %imp_for.body.i.i127.i.i.i
  %.not1223.i.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  br i1 %.not1223.i.i.i.i.i.i, label %imp_for.body.lr.ph.i296.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.body.lr.ph.i296.i.i.i.i.i:                ; preds = %if.true10.i.i.i.i.i
  %tmp.i.i.i297.i.i.i.i.i = shl nuw i64 %tmp.i225.i.i.i.i.i, 1
  %tmp.i1129.i.i.i.i.i.i = add i64 %tmp.i224.i.i.i.i.i, -1
  br label %imp_for.body.i298.i.i.i.i.i

imp_for.body.i298.i.i.i.i.i:                      ; preds = %imp_for.body.i298.i.i.i.i.i, %imp_for.body.lr.ph.i296.i.i.i.i.i
  %340 = phi i64 [ 0, %imp_for.body.lr.ph.i296.i.i.i.i.i ], [ %351, %imp_for.body.i298.i.i.i.i.i ]
  %tmp.i13.i.i299.i.i.i.i.i = add i64 %340, %tmp.i225.i.i.i.i.i
  %tmp.i14.i.i300.i.i.i.i.i = mul i64 %tmp.i13.i.i299.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %341 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i.i300.i.i.i.i.i
  %342 = load double, ptr %341, align 8
  %tmp.i13.i1115.i.i.i.i.i.i = add i64 %340, %tmp.i.i.i297.i.i.i.i.i
  %tmp.i14.i1116.i.i.i.i.i.i = mul i64 %tmp.i13.i1115.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %343 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1116.i.i.i.i.i.i
  %344 = load double, ptr %343, align 8
  %tmp.i.i301.i.i.i.i.i = fadd double %342, %344
  %tmp.i.i1117.i.i.i.i.i.i = mul i64 %340, 3
  %tmp.i10.i.i302.i.i.i.i.i = mul i64 %tmp.i.i1117.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %345 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i.i302.i.i.i.i.i
  %tmp.i14.i1118.i.i.i.i.i.i = mul i64 %340, %tmp.i224.i.i.i.i.i
  %346 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1118.i.i.i.i.i.i
  %347 = load double, ptr %346, align 8
  %tmp.i1119.i.i.i.i.i.i = fadd double %347, %tmp.i.i301.i.i.i.i.i
  store double %tmp.i1119.i.i.i.i.i.i, ptr %345, align 8
  %tmp.i9.i.i303.i.i.i.i.i = add i64 %tmp.i.i1117.i.i.i.i.i.i, 2
  %tmp.i10.i1121.i.i.i.i.i.i = mul i64 %tmp.i9.i.i303.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %348 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i1121.i.i.i.i.i.i
  %tmp.i1127.i.i.i.i.i.i = fsub double %344, %342
  %tmp.i1128.i.i.i.i.i.i = fmul double %tmp.i1127.i.i.i.i.i.i, 0x3FEBB67AE8584CAA
  store double %tmp.i1128.i.i.i.i.i.i, ptr %348, align 8
  %tmp.i9.i1131.i.i.i.i.i.i = add i64 %tmp.i.i1117.i.i.i.i.i.i, 1
  %tmp.i10.i1132.i.i.i.i.i.i = mul i64 %tmp.i9.i1131.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i.i304.i.i.i.i.i = add i64 %tmp.i10.i1132.i.i.i.i.i.i, %tmp.i1129.i.i.i.i.i.i
  %349 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i.i304.i.i.i.i.i
  %tmp.i1134.i.i.i.i.i.i = fmul double %tmp.i.i301.i.i.i.i.i, 5.000000e-01
  %350 = fsub double %347, %tmp.i1134.i.i.i.i.i.i
  store double %350, ptr %349, align 8
  %351 = add nuw nsw i64 %340, 1
  %exitcond.not.i305.i.i.i.i.i = icmp eq i64 %351, %tmp.i225.i.i.i.i.i
  br i1 %exitcond.not.i305.i.i.i.i.i, label %imp_for.exit.i306.i.i.i.i.i, label %imp_for.body.i298.i.i.i.i.i

imp_for.exit.i306.i.i.i.i.i:                      ; preds = %imp_for.body.i298.i.i.i.i.i
  %.not11141224.i.i.i.i.i.i = icmp sgt i64 %tmp.i224.i.i.i.i.i, 2
  br i1 %.not11141224.i.i.i.i.i.i, label %imp_for.cond5.preheader.us.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond5.preheader.us.i.i.i.i.i.i:           ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i, %imp_for.exit.i306.i.i.i.i.i
  %352 = phi i64 [ %383, %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i ], [ 0, %imp_for.exit.i306.i.i.i.i.i ]
  %tmp.i13.i1143.us.i.i.i.i.i.i = add i64 %352, %tmp.i225.i.i.i.i.i
  %tmp.i14.i1144.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1143.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i1156.us.i.i.i.i.i.i = add i64 %352, %tmp.i.i.i297.i.i.i.i.i
  %tmp.i14.i1157.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1156.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i.i1164.us.i.i.i.i.i.i = mul i64 %352, 3
  %tmp.i10.i1165.us.i.i.i.i.i.i = mul i64 %tmp.i.i1164.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i14.i1168.us.i.i.i.i.i.i = mul i64 %352, %tmp.i224.i.i.i.i.i
  %tmp.i9.i1190.us.i.i.i.i.i.i = add i64 %tmp.i.i1164.us.i.i.i.i.i.i, 2
  %tmp.i10.i1191.us.i.i.i.i.i.i = mul i64 %tmp.i9.i1190.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i1195.us.i.i.i.i.i.i = add i64 %tmp.i.i1164.us.i.i.i.i.i.i, 1
  %tmp.i10.i1196.us.i.i.i.i.i.i = mul i64 %tmp.i9.i1195.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  br label %imp_for.body6.us.i.i.i.i.i.i

imp_for.body6.us.i.i.i.i.i.i:                     ; preds = %imp_for.body6.us.i.i.i.i.i.i, %imp_for.cond5.preheader.us.i.i.i.i.i.i
  %353 = phi i64 [ 2, %imp_for.cond5.preheader.us.i.i.i.i.i.i ], [ %382, %imp_for.body6.us.i.i.i.i.i.i ]
  %tmp.i1137.us.i.i.i.i.i.i = sub i64 %tmp.i224.i.i.i.i.i, %353
  %tmp.i1138.us.i.i.i.i.i.i = add i64 %353, -2
  %354 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i1138.us.i.i.i.i.i.i
  %355 = load double, ptr %354, align 8
  %tmp.i1140.us.i.i.i.i.i.i = add i64 %353, -1
  %356 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i1140.us.i.i.i.i.i.i
  %357 = load double, ptr %356, align 8
  %tmp.i15.i.us.i.i.i.i.i.i = add i64 %tmp.i1140.us.i.i.i.i.i.i, %tmp.i14.i1144.us.i.i.i.i.i.i
  %358 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i.us.i.i.i.i.i.i
  %359 = load double, ptr %358, align 8
  %tmp.i15.i1147.us.i.i.i.i.i.i = add i64 %353, %tmp.i14.i1144.us.i.i.i.i.i.i
  %360 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1147.us.i.i.i.i.i.i
  %361 = load double, ptr %360, align 8
  %tmp.i.i1206.us.i.i.i.i.i.i = fmul double %355, %359
  %tmp.i8.i.us.i308.i.i.i.i.i = fmul double %357, %361
  %tmp.i9.i1207.us.i.i.i.i.i.i = fadd double %tmp.i.i1206.us.i.i.i.i.i.i, %tmp.i8.i.us.i308.i.i.i.i.i
  %tmp.i10.i1208.us.i.i.i.i.i.i = fmul double %355, %361
  %tmp.i11.i1209.us.i.i.i.i.i.i = fmul double %357, %359
  %tmp.i12.i.us.i309.i.i.i.i.i = fsub double %tmp.i10.i1208.us.i.i.i.i.i.i, %tmp.i11.i1209.us.i.i.i.i.i.i
  %tmp.i9.i1150.us.i.i.i.i.i.i = add i64 %tmp.i1138.us.i.i.i.i.i.i, %tmp.i1129.i.i.i.i.i.i
  %362 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1150.us.i.i.i.i.i.i
  %363 = load double, ptr %362, align 8
  %tmp.i9.i1153.us.i.i.i.i.i.i = add i64 %tmp.i1140.us.i.i.i.i.i.i, %tmp.i1129.i.i.i.i.i.i
  %364 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1153.us.i.i.i.i.i.i
  %365 = load double, ptr %364, align 8
  %tmp.i15.i1158.us.i.i.i.i.i.i = add i64 %tmp.i1140.us.i.i.i.i.i.i, %tmp.i14.i1157.us.i.i.i.i.i.i
  %366 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1158.us.i.i.i.i.i.i
  %367 = load double, ptr %366, align 8
  %tmp.i15.i1162.us.i.i.i.i.i.i = add i64 %353, %tmp.i14.i1157.us.i.i.i.i.i.i
  %368 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1162.us.i.i.i.i.i.i
  %369 = load double, ptr %368, align 8
  %tmp.i.i1210.us.i.i.i.i.i.i = fmul double %363, %367
  %tmp.i8.i1211.us.i.i.i.i.i.i = fmul double %365, %369
  %tmp.i9.i1212.us.i.i.i.i.i.i = fadd double %tmp.i.i1210.us.i.i.i.i.i.i, %tmp.i8.i1211.us.i.i.i.i.i.i
  %tmp.i10.i1213.us.i.i.i.i.i.i = fmul double %363, %369
  %tmp.i11.i1214.us.i.i.i.i.i.i = fmul double %365, %367
  %tmp.i12.i1215.us.i.i.i.i.i.i = fsub double %tmp.i10.i1213.us.i.i.i.i.i.i, %tmp.i11.i1214.us.i.i.i.i.i.i
  %tmp.i.i1216.us.i.i.i.i.i.i = fadd double %tmp.i9.i1207.us.i.i.i.i.i.i, %tmp.i9.i1212.us.i.i.i.i.i.i
  %tmp.i12.i1217.us.i.i.i.i.i.i = fsub double %tmp.i9.i1212.us.i.i.i.i.i.i, %tmp.i9.i1207.us.i.i.i.i.i.i
  %tmp.i13.i1218.us.i.i.i.i.i.i = fadd double %tmp.i12.i.us.i309.i.i.i.i.i, %tmp.i12.i1215.us.i.i.i.i.i.i
  %tmp.i14.i1219.us.i.i.i.i.i.i = fsub double %tmp.i12.i.us.i309.i.i.i.i.i, %tmp.i12.i1215.us.i.i.i.i.i.i
  %tmp.i11.i1166.us.i.i.i.i.i.i = add i64 %tmp.i1140.us.i.i.i.i.i.i, %tmp.i10.i1165.us.i.i.i.i.i.i
  %370 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1166.us.i.i.i.i.i.i
  %tmp.i15.i1169.us.i.i.i.i.i.i = add i64 %tmp.i1140.us.i.i.i.i.i.i, %tmp.i14.i1168.us.i.i.i.i.i.i
  %371 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1169.us.i.i.i.i.i.i
  %372 = load double, ptr %371, align 8
  %tmp.i1170.us.i.i.i.i.i.i = fadd double %372, %tmp.i.i1216.us.i.i.i.i.i.i
  store double %tmp.i1170.us.i.i.i.i.i.i, ptr %370, align 8
  %tmp.i11.i1173.us.i.i.i.i.i.i = add i64 %353, %tmp.i10.i1165.us.i.i.i.i.i.i
  %373 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1173.us.i.i.i.i.i.i
  %tmp.i15.i1175.us.i.i.i.i.i.i = add i64 %353, %tmp.i14.i1168.us.i.i.i.i.i.i
  %374 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1175.us.i.i.i.i.i.i
  %375 = load double, ptr %374, align 8
  %tmp.i1176.us.i.i.i.i.i.i = fadd double %375, %tmp.i13.i1218.us.i.i.i.i.i.i
  store double %tmp.i1176.us.i.i.i.i.i.i, ptr %373, align 8
  %tmp.i1180.us.i.i.i.i.i.i = fmul double %tmp.i.i1216.us.i.i.i.i.i.i, 5.000000e-01
  %376 = fsub double %372, %tmp.i1180.us.i.i.i.i.i.i
  %tmp.i1184.us.i.i.i.i.i.i = fmul double %tmp.i13.i1218.us.i.i.i.i.i.i, 5.000000e-01
  %377 = fsub double %375, %tmp.i1184.us.i.i.i.i.i.i
  %tmp.i1186.us.i.i.i.i.i.i = fmul double %tmp.i14.i1219.us.i.i.i.i.i.i, 0x3FEBB67AE8584CAA
  %tmp.i1187.us.i.i.i.i.i.i = fmul double %tmp.i12.i1217.us.i.i.i.i.i.i, 0x3FEBB67AE8584CAA
  %tmp.i.i1220.us.i.i.i.i.i.i = fadd double %tmp.i1186.us.i.i.i.i.i.i, %376
  %tmp.i4.i.us.i.i.i.i.i.i = fsub double %376, %tmp.i1186.us.i.i.i.i.i.i
  %tmp.i11.i1192.us.i.i.i.i.i.i = add i64 %tmp.i1140.us.i.i.i.i.i.i, %tmp.i10.i1191.us.i.i.i.i.i.i
  %378 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1192.us.i.i.i.i.i.i
  store double %tmp.i.i1220.us.i.i.i.i.i.i, ptr %378, align 8
  %tmp.i1193.us.i.i.i.i.i.i = add i64 %tmp.i1137.us.i.i.i.i.i.i, %tmp.i10.i1196.us.i.i.i.i.i.i
  %tmp.i11.i1197.us.i.i.i.i.i.i = add i64 %tmp.i1193.us.i.i.i.i.i.i, -1
  %379 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1197.us.i.i.i.i.i.i
  store double %tmp.i4.i.us.i.i.i.i.i.i, ptr %379, align 8
  %tmp.i.i1221.us.i.i.i.i.i.i = fadd double %tmp.i1187.us.i.i.i.i.i.i, %377
  %tmp.i4.i1222.us.i.i.i.i.i.i = fsub double %tmp.i1187.us.i.i.i.i.i.i, %377
  %tmp.i11.i1201.us.i.i.i.i.i.i = add i64 %353, %tmp.i10.i1191.us.i.i.i.i.i.i
  %380 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1201.us.i.i.i.i.i.i
  store double %tmp.i.i1221.us.i.i.i.i.i.i, ptr %380, align 8
  %381 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i1193.us.i.i.i.i.i.i
  store double %tmp.i4.i1222.us.i.i.i.i.i.i, ptr %381, align 8
  %382 = add i64 %353, 2
  %.not1114.us.i.i.i.i.i.i = icmp slt i64 %382, %tmp.i224.i.i.i.i.i
  br i1 %.not1114.us.i.i.i.i.i.i, label %imp_for.body6.us.i.i.i.i.i.i, label %imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i

imp_for.cond5.imp_for.exit8_crit_edge.us.i.i.i.i.i.i: ; preds = %imp_for.body6.us.i.i.i.i.i.i
  %383 = add nuw nsw i64 %352, 1
  %exitcond1227.not.i.i.i.i.i.i = icmp eq i64 %383, %tmp.i225.i.i.i.i.i
  br i1 %exitcond1227.not.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i, label %imp_for.cond5.preheader.us.i.i.i.i.i.i

if.true13.i.i132.i.i.i:                           ; preds = %imp_for.body.i.i127.i.i.i
  %.not2093.i.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  br i1 %.not2093.i.i.i.i.i.i, label %imp_for.body.lr.ph.i323.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.body.lr.ph.i323.i.i.i.i.i:                ; preds = %if.true13.i.i132.i.i.i
  %tmp.i.i.i324.i.i.i.i.i = shl i64 %tmp.i225.i.i.i.i.i, 2
  %tmp.i.i1861.i.i.i.i.i.i = mul i64 %tmp.i225.i.i.i.i.i, 3
  %tmp.i.i1864.i.i.i.i.i.i = shl nuw i64 %tmp.i225.i.i.i.i.i, 1
  %tmp.i1870.i.i.i.i.i.i = add i64 %tmp.i224.i.i.i.i.i, -1
  br label %imp_for.body.i325.i.i.i.i.i

imp_for.body.i325.i.i.i.i.i:                      ; preds = %imp_for.body.i325.i.i.i.i.i, %imp_for.body.lr.ph.i323.i.i.i.i.i
  %384 = phi i64 [ 0, %imp_for.body.lr.ph.i323.i.i.i.i.i ], [ %402, %imp_for.body.i325.i.i.i.i.i ]
  %tmp.i13.i.i326.i.i.i.i.i = add i64 %384, %tmp.i.i.i324.i.i.i.i.i
  %tmp.i14.i.i327.i.i.i.i.i = mul i64 %tmp.i13.i.i326.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %385 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i.i327.i.i.i.i.i
  %386 = load double, ptr %385, align 8
  %tmp.i13.i1859.i.i.i.i.i.i = add i64 %384, %tmp.i225.i.i.i.i.i
  %tmp.i14.i1860.i.i.i.i.i.i = mul i64 %tmp.i13.i1859.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %387 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1860.i.i.i.i.i.i
  %388 = load double, ptr %387, align 8
  %tmp.i.i2051.i.i.i.i.i.i = fadd double %386, %388
  %tmp.i4.i.i328.i.i.i.i.i = fsub double %386, %388
  %tmp.i13.i1862.i.i.i.i.i.i = add i64 %384, %tmp.i.i1861.i.i.i.i.i.i
  %tmp.i14.i1863.i.i.i.i.i.i = mul i64 %tmp.i13.i1862.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %389 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1863.i.i.i.i.i.i
  %390 = load double, ptr %389, align 8
  %tmp.i13.i1865.i.i.i.i.i.i = add i64 %384, %tmp.i.i1864.i.i.i.i.i.i
  %tmp.i14.i1866.i.i.i.i.i.i = mul i64 %tmp.i13.i1865.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %391 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1866.i.i.i.i.i.i
  %392 = load double, ptr %391, align 8
  %tmp.i.i2052.i.i.i.i.i.i = fadd double %390, %392
  %tmp.i4.i2053.i.i.i.i.i.i = fsub double %390, %392
  %tmp.i.i1867.i.i.i.i.i.i = mul i64 %384, 5
  %tmp.i10.i.i329.i.i.i.i.i = mul i64 %tmp.i.i1867.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %393 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i.i329.i.i.i.i.i
  %tmp.i14.i1868.i.i.i.i.i.i = mul i64 %384, %tmp.i224.i.i.i.i.i
  %394 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i1868.i.i.i.i.i.i
  %395 = load double, ptr %394, align 8
  %tmp.i.i330.i.i.i.i.i = fadd double %tmp.i.i2051.i.i.i.i.i.i, %395
  %tmp.i1869.i.i.i.i.i.i = fadd double %tmp.i.i2052.i.i.i.i.i.i, %tmp.i.i330.i.i.i.i.i
  store double %tmp.i1869.i.i.i.i.i.i, ptr %393, align 8
  %tmp.i9.i.i331.i.i.i.i.i = add i64 %tmp.i.i1867.i.i.i.i.i.i, 1
  %tmp.i10.i1872.i.i.i.i.i.i = mul i64 %tmp.i9.i.i331.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i.i332.i.i.i.i.i = add i64 %tmp.i10.i1872.i.i.i.i.i.i, %tmp.i1870.i.i.i.i.i.i
  %396 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i.i332.i.i.i.i.i
  %tmp.i1874.i.i.i.i.i.i = fmul double %tmp.i.i2051.i.i.i.i.i.i, 0x3FD3C6EF372FE950
  %tmp.i1875.i.i.i.i.i.i = fadd double %tmp.i1874.i.i.i.i.i.i, %395
  %tmp.i1876.i.i.i.i.i.i = fmul double %tmp.i.i2052.i.i.i.i.i.i, 0x3FE9E3779B97F4A8
  %397 = fsub double %tmp.i1875.i.i.i.i.i.i, %tmp.i1876.i.i.i.i.i.i
  store double %397, ptr %396, align 8
  %tmp.i9.i1879.i.i.i.i.i.i = add i64 %tmp.i.i1867.i.i.i.i.i.i, 2
  %tmp.i10.i1880.i.i.i.i.i.i = mul i64 %tmp.i9.i1879.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %398 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i1880.i.i.i.i.i.i
  %tmp.i1881.i.i.i.i.i.i = fmul double %tmp.i4.i.i328.i.i.i.i.i, 0x3FEE6F0E134454FF
  %tmp.i1882.i.i.i.i.i.i = fmul double %tmp.i4.i2053.i.i.i.i.i.i, 0x3FE2CF2304755A5E
  %tmp.i1883.i.i.i.i.i.i = fadd double %tmp.i1881.i.i.i.i.i.i, %tmp.i1882.i.i.i.i.i.i
  store double %tmp.i1883.i.i.i.i.i.i, ptr %398, align 8
  %tmp.i9.i1886.i.i.i.i.i.i = add i64 %tmp.i.i1867.i.i.i.i.i.i, 3
  %tmp.i10.i1887.i.i.i.i.i.i = mul i64 %tmp.i9.i1886.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i11.i1888.i.i.i.i.i.i = add i64 %tmp.i10.i1887.i.i.i.i.i.i, %tmp.i1870.i.i.i.i.i.i
  %399 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1888.i.i.i.i.i.i
  %tmp.i1890.i.i.i.i.i.i = fmul double %tmp.i.i2051.i.i.i.i.i.i, 0x3FE9E3779B97F4A8
  %400 = fsub double %395, %tmp.i1890.i.i.i.i.i.i
  %tmp.i1892.i.i.i.i.i.i = fmul double %tmp.i.i2052.i.i.i.i.i.i, 0x3FD3C6EF372FE950
  %tmp.i1893.i.i.i.i.i.i = fadd double %tmp.i1892.i.i.i.i.i.i, %400
  store double %tmp.i1893.i.i.i.i.i.i, ptr %399, align 8
  %tmp.i9.i1895.i.i.i.i.i.i = add i64 %tmp.i.i1867.i.i.i.i.i.i, 4
  %tmp.i10.i1896.i.i.i.i.i.i = mul i64 %tmp.i9.i1895.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %401 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i10.i1896.i.i.i.i.i.i
  %tmp.i1897.i.i.i.i.i.i = fmul double %tmp.i4.i.i328.i.i.i.i.i, 0x3FE2CF2304755A5E
  %tmp.i1898.i.i.i.i.i.i = fmul double %tmp.i4.i2053.i.i.i.i.i.i, 0x3FEE6F0E134454FF
  %tmp.i1899.i.i.i.i.i.i = fsub double %tmp.i1897.i.i.i.i.i.i, %tmp.i1898.i.i.i.i.i.i
  store double %tmp.i1899.i.i.i.i.i.i, ptr %401, align 8
  %402 = add nuw nsw i64 %384, 1
  %exitcond.not.i333.i.i.i.i.i = icmp eq i64 %402, %tmp.i225.i.i.i.i.i
  br i1 %exitcond.not.i333.i.i.i.i.i, label %imp_for.exit.i334.i.i.i.i.i, label %imp_for.body.i325.i.i.i.i.i

imp_for.exit.i334.i.i.i.i.i:                      ; preds = %imp_for.body.i325.i.i.i.i.i
  %tmp.i1900.not.i.not.i.i.i.i.i = icmp eq i64 %tmp.i224.i.i.i.i.i, 1
  br i1 %tmp.i1900.not.i.not.i.i.i.i.i, label %if.exit6.i.i.i.i.i, label %imp_for.cond5.preheader.lr.ph.i336.i.i.i.i.i

imp_for.cond5.preheader.lr.ph.i336.i.i.i.i.i:     ; preds = %imp_for.exit.i334.i.i.i.i.i
  %.not18582094.i.i.i.i.i.i = icmp sgt i64 %tmp.i224.i.i.i.i.i, 2
  %tmp.i8.i.i337.i.i.i.i.i = shl i64 %tmp.i1870.i.i.i.i.i.i, 1
  %tmp.i8.i1945.i.i.i.i.i.i = mul i64 %tmp.i1870.i.i.i.i.i.i, 3
  br i1 %.not18582094.i.i.i.i.i.i, label %imp_for.cond5.preheader.us.i339.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond5.preheader.us.i339.i.i.i.i.i:        ; preds = %imp_for.cond5.imp_for.exit8_crit_edge.us.i343.i.i.i.i.i, %imp_for.cond5.preheader.lr.ph.i336.i.i.i.i.i
  %403 = phi i64 [ %456, %imp_for.cond5.imp_for.exit8_crit_edge.us.i343.i.i.i.i.i ], [ 0, %imp_for.cond5.preheader.lr.ph.i336.i.i.i.i.i ]
  %tmp.i13.i1907.us.i.i.i.i.i.i = add i64 %403, %tmp.i225.i.i.i.i.i
  %tmp.i14.i1908.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1907.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i1920.us.i.i.i.i.i.i = add i64 %403, %tmp.i.i1864.i.i.i.i.i.i
  %tmp.i14.i1921.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1920.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i1936.us.i.i.i.i.i.i = add i64 %403, %tmp.i.i1861.i.i.i.i.i.i
  %tmp.i14.i1937.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1936.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i1953.us.i.i.i.i.i.i = add i64 %403, %tmp.i.i.i324.i.i.i.i.i
  %tmp.i14.i1954.us.i.i.i.i.i.i = mul i64 %tmp.i13.i1953.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i.i1961.us.i.i.i.i.i.i = mul i64 %403, 5
  %tmp.i10.i1962.us.i.i.i.i.i.i = mul i64 %tmp.i.i1961.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i14.i1965.us.i.i.i.i.i.i = mul i64 %403, %tmp.i224.i.i.i.i.i
  %tmp.i9.i2016.us.i.i.i.i.i.i = add i64 %tmp.i.i1961.us.i.i.i.i.i.i, 2
  %tmp.i10.i2017.us.i.i.i.i.i.i = mul i64 %tmp.i9.i2016.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i2021.us.i.i.i.i.i.i = add i64 %tmp.i.i1961.us.i.i.i.i.i.i, 1
  %tmp.i10.i2022.us.i.i.i.i.i.i = mul i64 %tmp.i9.i2021.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i2034.us.i.i.i.i.i.i = add i64 %tmp.i.i1961.us.i.i.i.i.i.i, 4
  %tmp.i10.i2035.us.i.i.i.i.i.i = mul i64 %tmp.i9.i2034.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i9.i2039.us.i.i.i.i.i.i = add i64 %tmp.i.i1961.us.i.i.i.i.i.i, 3
  %tmp.i10.i2040.us.i.i.i.i.i.i = mul i64 %tmp.i9.i2039.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  br label %imp_for.body6.us.i340.i.i.i.i.i

imp_for.body6.us.i340.i.i.i.i.i:                  ; preds = %imp_for.body6.us.i340.i.i.i.i.i, %imp_for.cond5.preheader.us.i339.i.i.i.i.i
  %404 = phi i64 [ 2, %imp_for.cond5.preheader.us.i339.i.i.i.i.i ], [ %455, %imp_for.body6.us.i340.i.i.i.i.i ]
  %.0.in2095.us.i.i.i.i.i.i = phi i64 [ %tmp.i224.i.i.i.i.i, %imp_for.cond5.preheader.us.i339.i.i.i.i.i ], [ %.0.us.i.i.i.i.i.i, %imp_for.body6.us.i340.i.i.i.i.i ]
  %.0.us.i.i.i.i.i.i = add i64 %.0.in2095.us.i.i.i.i.i.i, -2
  %tmp.i1902.us.i.i.i.i.i.i = add i64 %404, -2
  %405 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i1902.us.i.i.i.i.i.i
  %406 = load double, ptr %405, align 8
  %tmp.i1904.us.i.i.i.i.i.i = add i64 %404, -1
  %407 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i1904.us.i.i.i.i.i.i
  %408 = load double, ptr %407, align 8
  %tmp.i15.i.us.i341.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i14.i1908.us.i.i.i.i.i.i
  %409 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i.us.i341.i.i.i.i.i
  %410 = load double, ptr %409, align 8
  %tmp.i15.i1911.us.i.i.i.i.i.i = add i64 %404, %tmp.i14.i1908.us.i.i.i.i.i.i
  %411 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1911.us.i.i.i.i.i.i
  %412 = load double, ptr %411, align 8
  %tmp.i.i2054.us.i.i.i.i.i.i = fmul double %406, %410
  %tmp.i8.i2055.us.i.i.i.i.i.i = fmul double %408, %412
  %tmp.i9.i2056.us.i.i.i.i.i.i = fadd double %tmp.i.i2054.us.i.i.i.i.i.i, %tmp.i8.i2055.us.i.i.i.i.i.i
  %tmp.i10.i2057.us.i.i.i.i.i.i = fmul double %406, %412
  %tmp.i11.i2058.us.i.i.i.i.i.i = fmul double %408, %410
  %tmp.i12.i.us.i342.i.i.i.i.i = fsub double %tmp.i10.i2057.us.i.i.i.i.i.i, %tmp.i11.i2058.us.i.i.i.i.i.i
  %tmp.i9.i1914.us.i.i.i.i.i.i = add i64 %tmp.i1902.us.i.i.i.i.i.i, %tmp.i1870.i.i.i.i.i.i
  %413 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1914.us.i.i.i.i.i.i
  %414 = load double, ptr %413, align 8
  %tmp.i9.i1917.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i1870.i.i.i.i.i.i
  %415 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1917.us.i.i.i.i.i.i
  %416 = load double, ptr %415, align 8
  %tmp.i15.i1922.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i14.i1921.us.i.i.i.i.i.i
  %417 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1922.us.i.i.i.i.i.i
  %418 = load double, ptr %417, align 8
  %tmp.i15.i1926.us.i.i.i.i.i.i = add i64 %404, %tmp.i14.i1921.us.i.i.i.i.i.i
  %419 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1926.us.i.i.i.i.i.i
  %420 = load double, ptr %419, align 8
  %tmp.i.i2059.us.i.i.i.i.i.i = fmul double %414, %418
  %tmp.i8.i2060.us.i.i.i.i.i.i = fmul double %416, %420
  %tmp.i9.i2061.us.i.i.i.i.i.i = fadd double %tmp.i.i2059.us.i.i.i.i.i.i, %tmp.i8.i2060.us.i.i.i.i.i.i
  %tmp.i10.i2062.us.i.i.i.i.i.i = fmul double %414, %420
  %tmp.i11.i2063.us.i.i.i.i.i.i = fmul double %416, %418
  %tmp.i12.i2064.us.i.i.i.i.i.i = fsub double %tmp.i10.i2062.us.i.i.i.i.i.i, %tmp.i11.i2063.us.i.i.i.i.i.i
  %tmp.i9.i1929.us.i.i.i.i.i.i = add i64 %tmp.i1902.us.i.i.i.i.i.i, %tmp.i8.i.i337.i.i.i.i.i
  %421 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1929.us.i.i.i.i.i.i
  %422 = load double, ptr %421, align 8
  %tmp.i9.i1933.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i8.i.i337.i.i.i.i.i
  %423 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1933.us.i.i.i.i.i.i
  %424 = load double, ptr %423, align 8
  %tmp.i15.i1938.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i14.i1937.us.i.i.i.i.i.i
  %425 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1938.us.i.i.i.i.i.i
  %426 = load double, ptr %425, align 8
  %tmp.i15.i1942.us.i.i.i.i.i.i = add i64 %404, %tmp.i14.i1937.us.i.i.i.i.i.i
  %427 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1942.us.i.i.i.i.i.i
  %428 = load double, ptr %427, align 8
  %tmp.i.i2065.us.i.i.i.i.i.i = fmul double %422, %426
  %tmp.i8.i2066.us.i.i.i.i.i.i = fmul double %424, %428
  %tmp.i9.i2067.us.i.i.i.i.i.i = fadd double %tmp.i.i2065.us.i.i.i.i.i.i, %tmp.i8.i2066.us.i.i.i.i.i.i
  %tmp.i10.i2068.us.i.i.i.i.i.i = fmul double %422, %428
  %tmp.i11.i2069.us.i.i.i.i.i.i = fmul double %424, %426
  %tmp.i12.i2070.us.i.i.i.i.i.i = fsub double %tmp.i10.i2068.us.i.i.i.i.i.i, %tmp.i11.i2069.us.i.i.i.i.i.i
  %tmp.i9.i1946.us.i.i.i.i.i.i = add i64 %tmp.i1902.us.i.i.i.i.i.i, %tmp.i8.i1945.i.i.i.i.i.i
  %429 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1946.us.i.i.i.i.i.i
  %430 = load double, ptr %429, align 8
  %tmp.i9.i1950.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i8.i1945.i.i.i.i.i.i
  %431 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i9.i1950.us.i.i.i.i.i.i
  %432 = load double, ptr %431, align 8
  %tmp.i15.i1955.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i14.i1954.us.i.i.i.i.i.i
  %433 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1955.us.i.i.i.i.i.i
  %434 = load double, ptr %433, align 8
  %tmp.i15.i1959.us.i.i.i.i.i.i = add i64 %404, %tmp.i14.i1954.us.i.i.i.i.i.i
  %435 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1959.us.i.i.i.i.i.i
  %436 = load double, ptr %435, align 8
  %tmp.i.i2071.us.i.i.i.i.i.i = fmul double %430, %434
  %tmp.i8.i2072.us.i.i.i.i.i.i = fmul double %432, %436
  %tmp.i9.i2073.us.i.i.i.i.i.i = fadd double %tmp.i.i2071.us.i.i.i.i.i.i, %tmp.i8.i2072.us.i.i.i.i.i.i
  %tmp.i10.i2074.us.i.i.i.i.i.i = fmul double %430, %436
  %tmp.i11.i2075.us.i.i.i.i.i.i = fmul double %432, %434
  %tmp.i12.i2076.us.i.i.i.i.i.i = fsub double %tmp.i10.i2074.us.i.i.i.i.i.i, %tmp.i11.i2075.us.i.i.i.i.i.i
  %tmp.i.i2077.us.i.i.i.i.i.i = fadd double %tmp.i9.i2056.us.i.i.i.i.i.i, %tmp.i9.i2073.us.i.i.i.i.i.i
  %tmp.i12.i2078.us.i.i.i.i.i.i = fsub double %tmp.i9.i2073.us.i.i.i.i.i.i, %tmp.i9.i2056.us.i.i.i.i.i.i
  %tmp.i13.i2079.us.i.i.i.i.i.i = fadd double %tmp.i12.i.us.i342.i.i.i.i.i, %tmp.i12.i2076.us.i.i.i.i.i.i
  %tmp.i14.i2080.us.i.i.i.i.i.i = fsub double %tmp.i12.i.us.i342.i.i.i.i.i, %tmp.i12.i2076.us.i.i.i.i.i.i
  %tmp.i.i2081.us.i.i.i.i.i.i = fadd double %tmp.i9.i2061.us.i.i.i.i.i.i, %tmp.i9.i2067.us.i.i.i.i.i.i
  %tmp.i12.i2082.us.i.i.i.i.i.i = fsub double %tmp.i9.i2067.us.i.i.i.i.i.i, %tmp.i9.i2061.us.i.i.i.i.i.i
  %tmp.i13.i2083.us.i.i.i.i.i.i = fadd double %tmp.i12.i2064.us.i.i.i.i.i.i, %tmp.i12.i2070.us.i.i.i.i.i.i
  %tmp.i14.i2084.us.i.i.i.i.i.i = fsub double %tmp.i12.i2064.us.i.i.i.i.i.i, %tmp.i12.i2070.us.i.i.i.i.i.i
  %tmp.i11.i1963.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i10.i1962.us.i.i.i.i.i.i
  %437 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1963.us.i.i.i.i.i.i
  %tmp.i15.i1966.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i14.i1965.us.i.i.i.i.i.i
  %438 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1966.us.i.i.i.i.i.i
  %439 = load double, ptr %438, align 8
  %tmp.i1967.us.i.i.i.i.i.i = fadd double %439, %tmp.i.i2077.us.i.i.i.i.i.i
  %tmp.i1968.us.i.i.i.i.i.i = fadd double %tmp.i.i2081.us.i.i.i.i.i.i, %tmp.i1967.us.i.i.i.i.i.i
  store double %tmp.i1968.us.i.i.i.i.i.i, ptr %437, align 8
  %tmp.i11.i1971.us.i.i.i.i.i.i = add i64 %404, %tmp.i10.i1962.us.i.i.i.i.i.i
  %440 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i1971.us.i.i.i.i.i.i
  %tmp.i15.i1973.us.i.i.i.i.i.i = add i64 %404, %tmp.i14.i1965.us.i.i.i.i.i.i
  %441 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i1973.us.i.i.i.i.i.i
  %442 = load double, ptr %441, align 8
  %tmp.i1974.us.i.i.i.i.i.i = fadd double %442, %tmp.i13.i2079.us.i.i.i.i.i.i
  %tmp.i1975.us.i.i.i.i.i.i = fadd double %tmp.i13.i2083.us.i.i.i.i.i.i, %tmp.i1974.us.i.i.i.i.i.i
  store double %tmp.i1975.us.i.i.i.i.i.i, ptr %440, align 8
  %tmp.i1979.us.i.i.i.i.i.i = fmul double %tmp.i.i2077.us.i.i.i.i.i.i, 0x3FD3C6EF372FE950
  %tmp.i1980.us.i.i.i.i.i.i = fadd double %439, %tmp.i1979.us.i.i.i.i.i.i
  %tmp.i1981.us.i.i.i.i.i.i = fmul double %tmp.i.i2081.us.i.i.i.i.i.i, 0x3FE9E3779B97F4A8
  %443 = fsub double %tmp.i1980.us.i.i.i.i.i.i, %tmp.i1981.us.i.i.i.i.i.i
  %tmp.i1985.us.i.i.i.i.i.i = fmul double %tmp.i13.i2079.us.i.i.i.i.i.i, 0x3FD3C6EF372FE950
  %tmp.i1986.us.i.i.i.i.i.i = fadd double %442, %tmp.i1985.us.i.i.i.i.i.i
  %tmp.i1987.us.i.i.i.i.i.i = fmul double %tmp.i13.i2083.us.i.i.i.i.i.i, 0x3FE9E3779B97F4A8
  %444 = fsub double %tmp.i1986.us.i.i.i.i.i.i, %tmp.i1987.us.i.i.i.i.i.i
  %tmp.i1992.us.i.i.i.i.i.i = fmul double %tmp.i.i2077.us.i.i.i.i.i.i, 0x3FE9E3779B97F4A8
  %445 = fsub double %439, %tmp.i1992.us.i.i.i.i.i.i
  %tmp.i1994.us.i.i.i.i.i.i = fmul double %tmp.i.i2081.us.i.i.i.i.i.i, 0x3FD3C6EF372FE950
  %tmp.i1995.us.i.i.i.i.i.i = fadd double %tmp.i1994.us.i.i.i.i.i.i, %445
  %tmp.i1998.us.i.i.i.i.i.i = fmul double %tmp.i13.i2079.us.i.i.i.i.i.i, 0x3FE9E3779B97F4A8
  %446 = fsub double %442, %tmp.i1998.us.i.i.i.i.i.i
  %tmp.i2000.us.i.i.i.i.i.i = fmul double %tmp.i13.i2083.us.i.i.i.i.i.i, 0x3FD3C6EF372FE950
  %tmp.i2001.us.i.i.i.i.i.i = fadd double %tmp.i2000.us.i.i.i.i.i.i, %446
  %tmp.i2002.us.i.i.i.i.i.i = fmul double %tmp.i14.i2080.us.i.i.i.i.i.i, 0x3FEE6F0E134454FF
  %tmp.i2003.us.i.i.i.i.i.i = fmul double %tmp.i14.i2084.us.i.i.i.i.i.i, 0x3FE2CF2304755A5E
  %tmp.i2004.us.i.i.i.i.i.i = fadd double %tmp.i2003.us.i.i.i.i.i.i, %tmp.i2002.us.i.i.i.i.i.i
  %tmp.i2005.us.i.i.i.i.i.i = fmul double %tmp.i12.i2078.us.i.i.i.i.i.i, 0x3FEE6F0E134454FF
  %tmp.i2006.us.i.i.i.i.i.i = fmul double %tmp.i12.i2082.us.i.i.i.i.i.i, 0x3FE2CF2304755A5E
  %tmp.i2007.us.i.i.i.i.i.i = fadd double %tmp.i2006.us.i.i.i.i.i.i, %tmp.i2005.us.i.i.i.i.i.i
  %tmp.i2008.us.i.i.i.i.i.i = fmul double %tmp.i14.i2080.us.i.i.i.i.i.i, 0x3FE2CF2304755A5E
  %tmp.i2009.us.i.i.i.i.i.i = fmul double %tmp.i14.i2084.us.i.i.i.i.i.i, 0x3FEE6F0E134454FF
  %tmp.i2010.us.i.i.i.i.i.i = fsub double %tmp.i2008.us.i.i.i.i.i.i, %tmp.i2009.us.i.i.i.i.i.i
  %tmp.i2011.us.i.i.i.i.i.i = fmul double %tmp.i12.i2078.us.i.i.i.i.i.i, 0x3FE2CF2304755A5E
  %tmp.i2012.us.i.i.i.i.i.i = fmul double %tmp.i12.i2082.us.i.i.i.i.i.i, 0x3FEE6F0E134454FF
  %tmp.i2013.us.i.i.i.i.i.i = fsub double %tmp.i2011.us.i.i.i.i.i.i, %tmp.i2012.us.i.i.i.i.i.i
  %tmp.i.i2085.us.i.i.i.i.i.i = fadd double %tmp.i2004.us.i.i.i.i.i.i, %443
  %tmp.i4.i2086.us.i.i.i.i.i.i = fsub double %443, %tmp.i2004.us.i.i.i.i.i.i
  %tmp.i11.i2018.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i10.i2017.us.i.i.i.i.i.i
  %447 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2018.us.i.i.i.i.i.i
  store double %tmp.i.i2085.us.i.i.i.i.i.i, ptr %447, align 8
  %tmp.i2019.us.i.i.i.i.i.i = add i64 %.0.in2095.us.i.i.i.i.i.i, -3
  %tmp.i11.i2023.us.i.i.i.i.i.i = add i64 %tmp.i2019.us.i.i.i.i.i.i, %tmp.i10.i2022.us.i.i.i.i.i.i
  %448 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2023.us.i.i.i.i.i.i
  store double %tmp.i4.i2086.us.i.i.i.i.i.i, ptr %448, align 8
  %tmp.i.i2087.us.i.i.i.i.i.i = fadd double %tmp.i2007.us.i.i.i.i.i.i, %444
  %tmp.i4.i2088.us.i.i.i.i.i.i = fsub double %tmp.i2007.us.i.i.i.i.i.i, %444
  %tmp.i11.i2027.us.i.i.i.i.i.i = add i64 %404, %tmp.i10.i2017.us.i.i.i.i.i.i
  %449 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2027.us.i.i.i.i.i.i
  store double %tmp.i.i2087.us.i.i.i.i.i.i, ptr %449, align 8
  %tmp.i11.i2031.us.i.i.i.i.i.i = add i64 %.0.us.i.i.i.i.i.i, %tmp.i10.i2022.us.i.i.i.i.i.i
  %450 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2031.us.i.i.i.i.i.i
  store double %tmp.i4.i2088.us.i.i.i.i.i.i, ptr %450, align 8
  %tmp.i.i2089.us.i.i.i.i.i.i = fadd double %tmp.i2010.us.i.i.i.i.i.i, %tmp.i1995.us.i.i.i.i.i.i
  %tmp.i4.i2090.us.i.i.i.i.i.i = fsub double %tmp.i1995.us.i.i.i.i.i.i, %tmp.i2010.us.i.i.i.i.i.i
  %tmp.i11.i2036.us.i.i.i.i.i.i = add i64 %tmp.i1904.us.i.i.i.i.i.i, %tmp.i10.i2035.us.i.i.i.i.i.i
  %451 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2036.us.i.i.i.i.i.i
  store double %tmp.i.i2089.us.i.i.i.i.i.i, ptr %451, align 8
  %tmp.i11.i2041.us.i.i.i.i.i.i = add i64 %tmp.i2019.us.i.i.i.i.i.i, %tmp.i10.i2040.us.i.i.i.i.i.i
  %452 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2041.us.i.i.i.i.i.i
  store double %tmp.i4.i2090.us.i.i.i.i.i.i, ptr %452, align 8
  %tmp.i.i2091.us.i.i.i.i.i.i = fadd double %tmp.i2013.us.i.i.i.i.i.i, %tmp.i2001.us.i.i.i.i.i.i
  %tmp.i4.i2092.us.i.i.i.i.i.i = fsub double %tmp.i2013.us.i.i.i.i.i.i, %tmp.i2001.us.i.i.i.i.i.i
  %tmp.i11.i2045.us.i.i.i.i.i.i = add i64 %404, %tmp.i10.i2035.us.i.i.i.i.i.i
  %453 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2045.us.i.i.i.i.i.i
  store double %tmp.i.i2091.us.i.i.i.i.i.i, ptr %453, align 8
  %tmp.i11.i2049.us.i.i.i.i.i.i = add i64 %.0.us.i.i.i.i.i.i, %tmp.i10.i2040.us.i.i.i.i.i.i
  %454 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i11.i2049.us.i.i.i.i.i.i
  store double %tmp.i4.i2092.us.i.i.i.i.i.i, ptr %454, align 8
  %455 = add i64 %404, 2
  %.not1858.us.i.i.i.i.i.i = icmp slt i64 %455, %tmp.i224.i.i.i.i.i
  br i1 %.not1858.us.i.i.i.i.i.i, label %imp_for.body6.us.i340.i.i.i.i.i, label %imp_for.cond5.imp_for.exit8_crit_edge.us.i343.i.i.i.i.i

imp_for.cond5.imp_for.exit8_crit_edge.us.i343.i.i.i.i.i: ; preds = %imp_for.body6.us.i340.i.i.i.i.i
  %456 = add nuw nsw i64 %403, 1
  %exitcond2098.not.i.i.i.i.i.i = icmp eq i64 %456, %tmp.i225.i.i.i.i.i
  br i1 %exitcond2098.not.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i, label %imp_for.cond5.preheader.us.i339.i.i.i.i.i

if.false14.i.i141.i.i.i:                          ; preds = %imp_for.body.i.i127.i.i.i
  %tmp.i.i369.i.i.i.i.i = add i64 %.unpack.i.i.i.i.i129.i.i.i, 1
  %tmp.i2762.i.i.i.i.i.i = sdiv i64 %tmp.i.i369.i.i.i.i.i, 2
  %tmp.i2763.i.i.i.i.i.i = mul i64 %tmp.i225.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i2764.i.i.i.i.i.i = icmp slt i64 %tmp.i224.i.i.i.i.i, 2
  %.pre.i.i.i.i.i.i = add i64 %.unpack.i.i.i.i.i129.i.i.i, -1
  br i1 %tmp.i2764.i.i.i.i.i.i, label %if.exit.i378.i.i.i.i.i, label %if.true.i370.i.i.i.i.i

if.true.i370.i.i.i.i.i:                           ; preds = %if.false14.i.i141.i.i.i
  %.not27593110.i.i.i.i.i.i = icmp sgt i64 %tmp.i.i369.i.i.i.i.i, 3
  br i1 %.not27593110.i.i.i.i.i.i, label %imp_for.body.lr.ph.i372.i.i.i.i.i, label %imp_for.cond63.preheader.thread.i.i.i.i.i.i

imp_for.body.lr.ph.i372.i.i.i.i.i:                ; preds = %if.true.i370.i.i.i.i.i
  %tmp.i2768.i.i.i.i.i.i = add nsw i64 %tmp.i224.i.i.i.i.i, -1
  %.not27603109.i.i.i.i.i.i = icmp slt i64 %tmp.i225.i.i.i.i.i, 1
  %tmp.i2774.i.i.i.i.i.i = add nsw i64 %tmp.i224.i.i.i.i.i, -2
  %tmp.i2775.not3105.i.i.i.i.i.i = icmp eq i64 %tmp.i2774.i.i.i.i.i.i, 0
  %or.cond.i373.i.i.i.i.i = select i1 %.not27603109.i.i.i.i.i.i, i1 true, i1 %tmp.i2775.not3105.i.i.i.i.i.i
  br i1 %or.cond.i373.i.i.i.i.i, label %imp_for.cond9.preheader.lr.ph.i.i.i.i.i.i, label %imp_for.body.us.preheader.i.i.i.i.i.i

imp_for.body.us.preheader.i.i.i.i.i.i:            ; preds = %imp_for.body.lr.ph.i372.i.i.i.i.i
  %smax.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i2762.i.i.i.i.i.i, i64 2)
  br label %imp_for.body.us.i.i.i.i.i.i

imp_for.body.us.i.i.i.i.i.i:                      ; preds = %imp_for.cond1.imp_for.exit4_crit_edge.split.us3114.i.i.i.i.i.i, %imp_for.body.us.preheader.i.i.i.i.i.i
  %457 = phi i64 [ %476, %imp_for.cond1.imp_for.exit4_crit_edge.split.us3114.i.i.i.i.i.i ], [ 1, %imp_for.body.us.preheader.i.i.i.i.i.i ]
  %.03111.us.i.i.i.i.i.i = phi i64 [ %tmp.i2770.us.i.i.i.i.i.i, %imp_for.cond1.imp_for.exit4_crit_edge.split.us3114.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %imp_for.body.us.preheader.i.i.i.i.i.i ]
  %tmp.i2767.us.i.i.i.i.i.i = add nsw i64 %457, -1
  %tmp.i2769.us.i.i.i.i.i.i = mul i64 %tmp.i2767.us.i.i.i.i.i.i, %tmp.i2768.i.i.i.i.i.i
  %tmp.i2770.us.i.i.i.i.i.i = add i64 %.03111.us.i.i.i.i.i.i, -1
  %tmp.i2772.us.i.i.i.i.i.i = mul i64 %tmp.i2770.us.i.i.i.i.i.i, %tmp.i2768.i.i.i.i.i.i
  %tmp.i.i.us.i.i.i.i.i.i = mul i64 %457, %tmp.i225.i.i.i.i.i
  %tmp.i.i2782.us.i.i.i.i.i.i = mul i64 %.03111.us.i.i.i.i.i.i, %tmp.i225.i.i.i.i.i
  br label %while.cond.preheader.us3112.i.i.i.i.i.i

while.body.us.i.i.i.i.i.i:                        ; preds = %while.cond.preheader.us3112.i.i.i.i.i.i, %while.body.us.i.i.i.i.i.i
  %.026933108.us.i.i.i.i.i.i = phi i64 [ %tmp.i2769.us.i.i.i.i.i.i, %while.cond.preheader.us3112.i.i.i.i.i.i ], [ %tmp.i2825.us.i.i.i.i.i.i, %while.body.us.i.i.i.i.i.i ]
  %.026943107.us.i.i.i.i.i.i = phi i64 [ %tmp.i2772.us.i.i.i.i.i.i, %while.cond.preheader.us3112.i.i.i.i.i.i ], [ %tmp.i2826.us.i.i.i.i.i.i, %while.body.us.i.i.i.i.i.i ]
  %.026953106.us.i.i.i.i.i.i = phi i64 [ 1, %while.cond.preheader.us3112.i.i.i.i.i.i ], [ %tmp.i2827.us.i.i.i.i.i.i, %while.body.us.i.i.i.i.i.i ]
  %tmp.i15.i.us.i374.i.i.i.i.i = add i64 %.026953106.us.i.i.i.i.i.i, %tmp.i14.i.us.i.i.i.i.i.i
  %458 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i.us.i374.i.i.i.i.i
  %459 = load double, ptr %458, align 8
  %tmp.i2777.us.i.i.i.i.i.i = add i64 %.026953106.us.i.i.i.i.i.i, 1
  %tmp.i15.i2781.us.i.i.i.i.i.i = add i64 %tmp.i2777.us.i.i.i.i.i.i, %tmp.i14.i.us.i.i.i.i.i.i
  %460 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i2781.us.i.i.i.i.i.i
  %461 = load double, ptr %460, align 8
  %tmp.i15.i2785.us.i.i.i.i.i.i = add i64 %.026953106.us.i.i.i.i.i.i, %tmp.i14.i2784.us.i.i.i.i.i.i
  %462 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i2785.us.i.i.i.i.i.i
  %463 = load double, ptr %462, align 8
  %tmp.i15.i2790.us.i.i.i.i.i.i = add i64 %tmp.i2777.us.i.i.i.i.i.i, %tmp.i14.i2784.us.i.i.i.i.i.i
  %464 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i15.i2790.us.i.i.i.i.i.i
  %465 = load double, ptr %464, align 8
  %tmp.i2791.us.i.i.i.i.i.i = add i64 %.026933108.us.i.i.i.i.i.i, 1
  %466 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i2791.us.i.i.i.i.i.i
  %467 = load double, ptr %466, align 8
  %tmp.i2792.us.i.i.i.i.i.i = fmul double %461, %467
  %468 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %.026933108.us.i.i.i.i.i.i
  %469 = load double, ptr %468, align 8
  %tmp.i2793.us.i.i.i.i.i.i = fmul double %459, %469
  %tmp.i2794.us.i.i.i.i.i.i = fadd double %tmp.i2792.us.i.i.i.i.i.i, %tmp.i2793.us.i.i.i.i.i.i
  %tmp.i2795.us.i.i.i.i.i.i = fmul double %461, %469
  %tmp.i2797.us.i.i.i.i.i.i = fmul double %459, %467
  %tmp.i2798.us.i.i.i.i.i.i = fsub double %tmp.i2795.us.i.i.i.i.i.i, %tmp.i2797.us.i.i.i.i.i.i
  %tmp.i2799.us.i.i.i.i.i.i = add i64 %.026943107.us.i.i.i.i.i.i, 1
  %470 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %tmp.i2799.us.i.i.i.i.i.i
  %471 = load double, ptr %470, align 8
  %tmp.i2800.us.i.i.i.i.i.i = fmul double %465, %471
  %472 = getelementptr double, ptr %.unpack2.i.i.i.i.i131.i.i.i, i64 %.026943107.us.i.i.i.i.i.i
  %473 = load double, ptr %472, align 8
  %tmp.i2801.us.i.i.i.i.i.i = fmul double %463, %473
  %tmp.i2802.us.i.i.i.i.i.i = fadd double %tmp.i2800.us.i.i.i.i.i.i, %tmp.i2801.us.i.i.i.i.i.i
  %tmp.i2803.us.i.i.i.i.i.i = fmul double %465, %473
  %tmp.i2805.us.i.i.i.i.i.i = fmul double %463, %471
  %tmp.i2806.us.i.i.i.i.i.i = fsub double %tmp.i2803.us.i.i.i.i.i.i, %tmp.i2805.us.i.i.i.i.i.i
  %tmp.i.i3098.us.i.i.i.i.i.i = fadd double %tmp.i2794.us.i.i.i.i.i.i, %tmp.i2802.us.i.i.i.i.i.i
  %tmp.i4.i.us.i375.i.i.i.i.i = fsub double %tmp.i2802.us.i.i.i.i.i.i, %tmp.i2794.us.i.i.i.i.i.i
  store double %tmp.i.i3098.us.i.i.i.i.i.i, ptr %458, align 8
  store double %tmp.i4.i.us.i375.i.i.i.i.i, ptr %464, align 8
  %tmp.i.i3099.us.i.i.i.i.i.i = fadd double %tmp.i2798.us.i.i.i.i.i.i, %tmp.i2806.us.i.i.i.i.i.i
  %tmp.i4.i3100.us.i.i.i.i.i.i = fsub double %tmp.i2798.us.i.i.i.i.i.i, %tmp.i2806.us.i.i.i.i.i.i
  store double %tmp.i.i3099.us.i.i.i.i.i.i, ptr %460, align 8
  store double %tmp.i4.i3100.us.i.i.i.i.i.i, ptr %462, align 8
  %tmp.i2825.us.i.i.i.i.i.i = add i64 %.026933108.us.i.i.i.i.i.i, 2
  %tmp.i2826.us.i.i.i.i.i.i = add i64 %.026943107.us.i.i.i.i.i.i, 2
  %tmp.i2827.us.i.i.i.i.i.i = add i64 %.026953106.us.i.i.i.i.i.i, 2
  %tmp.i2775.not.us.i.i.i.i.i.i = icmp slt i64 %tmp.i2774.i.i.i.i.i.i, %tmp.i2827.us.i.i.i.i.i.i
  br i1 %tmp.i2775.not.us.i.i.i.i.i.i, label %while.cond.while.exit_crit_edge.us.i.i.i.i.i.i, label %while.body.us.i.i.i.i.i.i

while.cond.preheader.us3112.i.i.i.i.i.i:          ; preds = %while.cond.while.exit_crit_edge.us.i.i.i.i.i.i, %imp_for.body.us.i.i.i.i.i.i
  %474 = phi i64 [ 0, %imp_for.body.us.i.i.i.i.i.i ], [ %475, %while.cond.while.exit_crit_edge.us.i.i.i.i.i.i ]
  %tmp.i13.i.us.i.i.i.i.i.i = add i64 %474, %tmp.i.i.us.i.i.i.i.i.i
  %tmp.i14.i.us.i.i.i.i.i.i = mul i64 %tmp.i13.i.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i2783.us.i.i.i.i.i.i = add i64 %474, %tmp.i.i2782.us.i.i.i.i.i.i
  %tmp.i14.i2784.us.i.i.i.i.i.i = mul i64 %tmp.i13.i2783.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  br label %while.body.us.i.i.i.i.i.i

while.cond.while.exit_crit_edge.us.i.i.i.i.i.i:   ; preds = %while.body.us.i.i.i.i.i.i
  %475 = add nuw nsw i64 %474, 1
  %exitcond.not.i376.i.i.i.i.i = icmp eq i64 %475, %tmp.i225.i.i.i.i.i
  br i1 %exitcond.not.i376.i.i.i.i.i, label %imp_for.cond1.imp_for.exit4_crit_edge.split.us3114.i.i.i.i.i.i, label %while.cond.preheader.us3112.i.i.i.i.i.i

imp_for.cond1.imp_for.exit4_crit_edge.split.us3114.i.i.i.i.i.i: ; preds = %while.cond.while.exit_crit_edge.us.i.i.i.i.i.i
  %476 = add nuw nsw i64 %457, 1
  %exitcond3176.not.i.i.i.i.i.i = icmp eq i64 %476, %smax.i.i.i.i.i.i
  br i1 %exitcond3176.not.i.i.i.i.i.i, label %if.exit.i378.i.i.i.i.i, label %imp_for.body.us.i.i.i.i.i.i

if.exit.i378.i.i.i.i.i:                           ; preds = %imp_for.cond1.imp_for.exit4_crit_edge.split.us3114.i.i.i.i.i.i, %if.false14.i.i141.i.i.i
  %.not27313117.i.i.i.i.i.i = icmp sgt i64 %tmp.i.i369.i.i.i.i.i, 3
  br i1 %.not27313117.i.i.i.i.i.i, label %imp_for.cond9.preheader.lr.ph.i.i.i.i.i.i, label %imp_for.cond63.preheader.i.i.thread.i.i.i.i

imp_for.cond9.preheader.lr.ph.i.i.i.i.i.i:        ; preds = %if.exit.i378.i.i.i.i.i, %imp_for.body.lr.ph.i372.i.i.i.i.i
  %.not27323116.i.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  %smax3178.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i2762.i.i.i.i.i.i, i64 2)
  br i1 %.not27323116.i.i.i.i.i.i, label %imp_for.cond9.preheader.us.i.i.i.i.i.i, label %imp_for.cond13.preheader.i.i.i.i.i.i

imp_for.cond9.preheader.us.i.i.i.i.i.i:           ; preds = %imp_for.cond9.imp_for.exit12_crit_edge.us.i.i.i.i.i.i, %imp_for.cond9.preheader.lr.ph.i.i.i.i.i.i
  %477 = phi i64 [ %484, %imp_for.cond9.imp_for.exit12_crit_edge.us.i.i.i.i.i.i ], [ 1, %imp_for.cond9.preheader.lr.ph.i.i.i.i.i.i ]
  %.026963118.us.i.i.i.i.i.i = phi i64 [ %tmp.i2841.us.i.i.i.i.i.i, %imp_for.cond9.imp_for.exit12_crit_edge.us.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %imp_for.cond9.preheader.lr.ph.i.i.i.i.i.i ]
  %tmp.i.i2829.us.i.i.i.i.i.i = mul i64 %.026963118.us.i.i.i.i.i.i, %tmp.i225.i.i.i.i.i
  %tmp.i.i2832.us.i.i.i.i.i.i = mul i64 %477, %tmp.i225.i.i.i.i.i
  br label %imp_for.body10.us.i.i.i.i.i.i

imp_for.body10.us.i.i.i.i.i.i:                    ; preds = %imp_for.body10.us.i.i.i.i.i.i, %imp_for.cond9.preheader.us.i.i.i.i.i.i
  %478 = phi i64 [ 0, %imp_for.cond9.preheader.us.i.i.i.i.i.i ], [ %483, %imp_for.body10.us.i.i.i.i.i.i ]
  %tmp.i13.i2830.us.i.i.i.i.i.i = add i64 %478, %tmp.i.i2829.us.i.i.i.i.i.i
  %tmp.i14.i2831.us.i.i.i.i.i.i = mul i64 %tmp.i13.i2830.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %479 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i2831.us.i.i.i.i.i.i
  %480 = load double, ptr %479, align 8
  %tmp.i13.i2833.us.i.i.i.i.i.i = add i64 %478, %tmp.i.i2832.us.i.i.i.i.i.i
  %tmp.i14.i2834.us.i.i.i.i.i.i = mul i64 %tmp.i13.i2833.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %481 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i2834.us.i.i.i.i.i.i
  %482 = load double, ptr %481, align 8
  %tmp.i.i3101.us.i.i.i.i.i.i = fsub double %480, %482
  %tmp.i4.i3102.us.i.i.i.i.i.i = fadd double %480, %482
  store double %tmp.i.i3101.us.i.i.i.i.i.i, ptr %479, align 8
  store double %tmp.i4.i3102.us.i.i.i.i.i.i, ptr %481, align 8
  %483 = add nuw nsw i64 %478, 1
  %exitcond3177.not.i.i.i.i.i.i = icmp eq i64 %483, %tmp.i225.i.i.i.i.i
  br i1 %exitcond3177.not.i.i.i.i.i.i, label %imp_for.cond9.imp_for.exit12_crit_edge.us.i.i.i.i.i.i, label %imp_for.body10.us.i.i.i.i.i.i

imp_for.cond9.imp_for.exit12_crit_edge.us.i.i.i.i.i.i: ; preds = %imp_for.body10.us.i.i.i.i.i.i
  %tmp.i2841.us.i.i.i.i.i.i = add i64 %.026963118.us.i.i.i.i.i.i, -1
  %484 = add nuw nsw i64 %477, 1
  %exitcond3179.not.i.i.i.i.i.i = icmp eq i64 %484, %smax3178.i.i.i.i.i.i
  br i1 %exitcond3179.not.i.i.i.i.i.i, label %imp_for.cond13.preheader.i.i.i.i.i.i, label %imp_for.cond9.preheader.us.i.i.i.i.i.i

imp_for.cond13.preheader.i.i.i.i.i.i:             ; preds = %imp_for.cond9.imp_for.exit12_crit_edge.us.i.i.i.i.i.i, %imp_for.cond9.preheader.lr.ph.i.i.i.i.i.i
  %.not27343119.i.i.i.i.i.i = icmp sgt i64 %tmp.i2763.i.i.i.i.i.i, 0
  %tmp.i.i2847.i.i.i.i.i.i = shl i64 %tmp.i2763.i.i.i.i.i.i, 1
  %tmp.i.i2855.i.i.i.i.i.i = mul i64 %tmp.i2763.i.i.i.i.i.i, %.pre.i.i.i.i.i.i
  %tmp.i2860.i.i.i.i.i.i = add i64 %.unpack.i.i.i.i.i129.i.i.i, -2
  %tmp.i.i2861.i.i.i.i.i.i = mul i64 %tmp.i2763.i.i.i.i.i.i, %tmp.i2860.i.i.i.i.i.i
  %tmp.i2866.i.i.i.i.i.i = add i64 %.unpack.i.i.i.i.i129.i.i.i, -3
  %tmp.i2867.i.i.i.i.i.i = add nsw i64 %tmp.i2762.i.i.i.i.i.i, -3
  %tmp.i2868.not3121.i.i.i.i.i.i = icmp sgt i64 %tmp.i.i369.i.i.i.i.i, 13
  %tmp.i2942.i.i.i.i.i.i = add nsw i64 %tmp.i2762.i.i.i.i.i.i, -1
  br label %imp_for.cond17.preheader.i.i.i.i.i.i

imp_for.cond17.preheader.i.i.i.i.i.i:             ; preds = %while.exit55.i.i.i.i.i.i, %imp_for.cond13.preheader.i.i.i.i.i.i
  %485 = phi i64 [ 1, %imp_for.cond13.preheader.i.i.i.i.i.i ], [ %575, %while.exit55.i.i.i.i.i.i ]
  %.026973141.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i, %imp_for.cond13.preheader.i.i.i.i.i.i ], [ %tmp.i2988.i.i.i.i.i.i, %while.exit55.i.i.i.i.i.i ]
  br i1 %.not27343119.i.i.i.i.i.i, label %imp_for.body18.lr.ph.i.i.i.i.i.i, label %imp_for.cond17.preheader.imp_for.exit20_crit_edge.i.i.i.i.i.i

imp_for.cond17.preheader.imp_for.exit20_crit_edge.i.i.i.i.i.i: ; preds = %imp_for.cond17.preheader.i.i.i.i.i.i
  %.pre3200.i.i.i.i.i.i = shl nuw i64 %485, 1
  br label %imp_for.exit20.i.i.i.i.i.i

imp_for.body18.lr.ph.i.i.i.i.i.i:                 ; preds = %imp_for.cond17.preheader.i.i.i.i.i.i
  %tmp.i.i2842.i.i.i.i.i.i = mul i64 %485, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2843.i.i.i.i.i.i = shl nuw i64 %485, 1
  %486 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2843.i.i.i.i.i.i
  %tmp.i2846.i.i.i.i.i.i = shl i64 %485, 2
  %487 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2846.i.i.i.i.i.i
  %tmp.i.i2851.i.i.i.i.i.i = mul i64 %.026973141.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2853.i.i.i.i.i.i = or i64 %tmp.i2843.i.i.i.i.i.i, 1
  %488 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2853.i.i.i.i.i.i
  %tmp.i2859.i.i.i.i.i.i = or i64 %tmp.i2846.i.i.i.i.i.i, 1
  %489 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2859.i.i.i.i.i.i
  br label %imp_for.body18.i.i.i.i.i.i

imp_for.cond63.preheader.i.i.i.i.i.i:             ; preds = %while.exit55.i.i.i.i.i.i
  br i1 %.not27343119.i.i.i.i.i.i, label %imp_for.cond71.preheader.us.preheader.i.i.i.i.i.i, label %imp_for.cond75.preheader.i.i.i.i.i.i

imp_for.cond63.preheader.i.i.thread.i.i.i.i:      ; preds = %if.exit.i378.i.i.i.i.i
  %.not27483142.i.i51.i.i.i.i = icmp sgt i64 %tmp.i2763.i.i.i.i.i.i, 0
  br i1 %.not27483142.i.i51.i.i.i.i, label %imp_for.cond75.preheader.i.thread.i.i.i.i.i, label %imp_for.cond75.preheader.i.i.i.i.i.i

imp_for.cond63.preheader.thread.i.i.i.i.i.i:      ; preds = %if.true.i370.i.i.i.i.i
  %.not274831423222.i.i.i.i.i.i = icmp sgt i64 %tmp.i2763.i.i.i.i.i.i, 0
  br i1 %.not274831423222.i.i.i.i.i.i, label %imp_for.cond75.preheader.i.thread.i.i.i.i.i, label %imp_for.cond75.preheader.thread.i.i.i.i.i.i

imp_for.body18.i.i.i.i.i.i:                       ; preds = %imp_for.body18.i.i.i.i.i.i, %imp_for.body18.lr.ph.i.i.i.i.i.i
  %490 = phi i64 [ 0, %imp_for.body18.lr.ph.i.i.i.i.i.i ], [ %508, %imp_for.body18.i.i.i.i.i.i ]
  %491 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %490
  %492 = getelementptr double, ptr %491, i64 %tmp.i.i2842.i.i.i.i.i.i
  %493 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %490
  %494 = load double, ptr %493, align 8
  %495 = load double, ptr %486, align 8
  %tmp.i8.i.i380.i.i.i.i.i = add i64 %490, %tmp.i2763.i.i.i.i.i.i
  %496 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i.i380.i.i.i.i.i
  %497 = load double, ptr %496, align 8
  %tmp.i2844.i.i.i.i.i.i = fmul double %495, %497
  %tmp.i2845.i.i.i.i.i.i = fadd double %494, %tmp.i2844.i.i.i.i.i.i
  %498 = load double, ptr %487, align 8
  %tmp.i8.i2848.i.i.i.i.i.i = add i64 %490, %tmp.i.i2847.i.i.i.i.i.i
  %499 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2848.i.i.i.i.i.i
  %500 = load double, ptr %499, align 8
  %tmp.i2849.i.i.i.i.i.i = fmul double %498, %500
  %tmp.i2850.i.i.i.i.i.i = fadd double %tmp.i2845.i.i.i.i.i.i, %tmp.i2849.i.i.i.i.i.i
  store double %tmp.i2850.i.i.i.i.i.i, ptr %492, align 8
  %501 = getelementptr double, ptr %491, i64 %tmp.i.i2851.i.i.i.i.i.i
  %502 = load double, ptr %488, align 8
  %tmp.i8.i2856.i.i.i.i.i.i = add i64 %490, %tmp.i.i2855.i.i.i.i.i.i
  %503 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2856.i.i.i.i.i.i
  %504 = load double, ptr %503, align 8
  %tmp.i2857.i.i.i.i.i.i = fmul double %502, %504
  %505 = load double, ptr %489, align 8
  %tmp.i8.i2862.i.i.i.i.i.i = add i64 %490, %tmp.i.i2861.i.i.i.i.i.i
  %506 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2862.i.i.i.i.i.i
  %507 = load double, ptr %506, align 8
  %tmp.i2863.i.i.i.i.i.i = fmul double %505, %507
  %tmp.i2864.i.i.i.i.i.i = fadd double %tmp.i2857.i.i.i.i.i.i, %tmp.i2863.i.i.i.i.i.i
  store double %tmp.i2864.i.i.i.i.i.i, ptr %501, align 8
  %508 = add nuw nsw i64 %490, 1
  %exitcond3180.not.i.i.i.i.i.i = icmp eq i64 %508, %tmp.i2763.i.i.i.i.i.i
  br i1 %exitcond3180.not.i.i.i.i.i.i, label %imp_for.exit20.i.i.i.i.i.i, label %imp_for.body18.i.i.i.i.i.i

imp_for.exit20.i.i.i.i.i.i:                       ; preds = %imp_for.body18.i.i.i.i.i.i, %imp_for.cond17.preheader.imp_for.exit20_crit_edge.i.i.i.i.i.i
  %tmp.i2865.pre-phi.i.i.i.i.i.i = phi i64 [ %.pre3200.i.i.i.i.i.i, %imp_for.cond17.preheader.imp_for.exit20_crit_edge.i.i.i.i.i.i ], [ %tmp.i2843.i.i.i.i.i.i, %imp_for.body18.i.i.i.i.i.i ]
  br i1 %tmp.i2868.not3121.i.i.i.i.i.i, label %while.body22.lr.ph.i.i.i.i.i.i, label %while.cond40.preheader.i.i.i.i.i.i

while.body22.lr.ph.i.i.i.i.i.i:                   ; preds = %imp_for.exit20.i.i.i.i.i.i
  %tmp.i.i2898.i.i.i.i.i.i = mul i64 %485, %tmp.i2763.i.i.i.i.i.i
  %tmp.i.i2919.i.i.i.i.i.i = mul i64 %.026973141.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  br label %while.body22.i.i.i.i.i.i

while.cond40.preheader.i.i.i.i.i.i:               ; preds = %imp_for.exit39.i.i.i.i.i.i, %imp_for.exit20.i.i.i.i.i.i
  %.02702.lcssa.i.i.i.i.i.i = phi i64 [ %tmp.i2866.i.i.i.i.i.i, %imp_for.exit20.i.i.i.i.i.i ], [ %tmp.i2941.i.i.i.i.i.i, %imp_for.exit39.i.i.i.i.i.i ]
  %.02699.lcssa.i.i.i.i.i.i = phi i64 [ 3, %imp_for.exit20.i.i.i.i.i.i ], [ %tmp.i2940.i.i.i.i.i.i, %imp_for.exit39.i.i.i.i.i.i ]
  %.02698.lcssa.i.i.i.i.i.i = phi i64 [ %tmp.i2865.pre-phi.i.i.i.i.i.i, %imp_for.exit20.i.i.i.i.i.i ], [ %.4.i.i.i144.i.i.i, %imp_for.exit39.i.i.i.i.i.i ]
  %tmp.i2943.not3128.i.i.i.i.i.i = icmp sgt i64 %tmp.i2942.i.i.i.i.i.i, %.02699.lcssa.i.i.i.i.i.i
  br i1 %tmp.i2943.not3128.i.i.i.i.i.i, label %while.body41.lr.ph.i.i.i.i.i.i, label %while.cond53.preheader.i.i.i.i.i.i

while.body41.lr.ph.i.i.i.i.i.i:                   ; preds = %while.cond40.preheader.i.i.i.i.i.i
  %tmp.i.i2959.i.i.i.i.i.i = mul i64 %485, %tmp.i2763.i.i.i.i.i.i
  %tmp.i.i2970.i.i.i.i.i.i = mul i64 %.026973141.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  br label %while.body41.i.i.i.i.i.i

while.body22.i.i.i.i.i.i:                         ; preds = %imp_for.exit39.i.i.i.i.i.i, %while.body22.lr.ph.i.i.i.i.i.i
  %.026983124.i.i.i.i.i.i = phi i64 [ %tmp.i2865.pre-phi.i.i.i.i.i.i, %while.body22.lr.ph.i.i.i.i.i.i ], [ %.4.i.i.i144.i.i.i, %imp_for.exit39.i.i.i.i.i.i ]
  %.026993123.i.i.i.i.i.i = phi i64 [ 3, %while.body22.lr.ph.i.i.i.i.i.i ], [ %tmp.i2940.i.i.i.i.i.i, %imp_for.exit39.i.i.i.i.i.i ]
  %.027023122.i.i.i.i.i.i = phi i64 [ %tmp.i2866.i.i.i.i.i.i, %while.body22.lr.ph.i.i.i.i.i.i ], [ %tmp.i2941.i.i.i.i.i.i, %imp_for.exit39.i.i.i.i.i.i ]
  %tmp.i2870.i.i.i.i.i.i = add i64 %.026983124.i.i.i.i.i.i, %485
  %tmp.i2871.not.i.i.i.i.i.i = icmp slt i64 %tmp.i2870.i.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i2873.i.i.i.i.i.i = select i1 %tmp.i2871.not.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i.i129.i.i.i
  %spec.select.i379.i.i.i.i.i = sub i64 %tmp.i2870.i.i.i.i.i.i, %tmp.i2873.i.i.i.i.i.i
  %tmp.i2874.i.i.i.i.i.i = shl i64 %spec.select.i379.i.i.i.i.i, 1
  %509 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2874.i.i.i.i.i.i
  %510 = load double, ptr %509, align 8
  %tmp.i2876.i.i.i.i.i.i = or i64 %tmp.i2874.i.i.i.i.i.i, 1
  %511 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2876.i.i.i.i.i.i
  %512 = load double, ptr %511, align 8
  %tmp.i2877.i.i.i.i.i.i = add i64 %spec.select.i379.i.i.i.i.i, %485
  %tmp.i2878.not.i.i.i.i.i.i = icmp slt i64 %tmp.i2877.i.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i2880.i.i.i.i.i.i = select i1 %tmp.i2878.not.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i.i129.i.i.i
  %.2.i.i.i142.i.i.i = sub i64 %tmp.i2877.i.i.i.i.i.i, %tmp.i2880.i.i.i.i.i.i
  %tmp.i2881.i.i.i.i.i.i = shl i64 %.2.i.i.i142.i.i.i, 1
  %513 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2881.i.i.i.i.i.i
  %514 = load double, ptr %513, align 8
  %tmp.i2883.i.i.i.i.i.i = or i64 %tmp.i2881.i.i.i.i.i.i, 1
  %515 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2883.i.i.i.i.i.i
  %516 = load double, ptr %515, align 8
  %tmp.i2884.i.i.i.i.i.i = add i64 %.2.i.i.i142.i.i.i, %485
  %tmp.i2885.not.i.i.i.i.i.i = icmp slt i64 %tmp.i2884.i.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i2887.i.i.i.i.i.i = select i1 %tmp.i2885.not.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i.i129.i.i.i
  %.3.i.i.i143.i.i.i = sub i64 %tmp.i2884.i.i.i.i.i.i, %tmp.i2887.i.i.i.i.i.i
  %tmp.i2888.i.i.i.i.i.i = shl i64 %.3.i.i.i143.i.i.i, 1
  %517 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2888.i.i.i.i.i.i
  %518 = load double, ptr %517, align 8
  %tmp.i2890.i.i.i.i.i.i = or i64 %tmp.i2888.i.i.i.i.i.i, 1
  %519 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2890.i.i.i.i.i.i
  %520 = load double, ptr %519, align 8
  %tmp.i2891.i.i.i.i.i.i = add i64 %.3.i.i.i143.i.i.i, %485
  %tmp.i2892.not.i.i.i.i.i.i = icmp slt i64 %tmp.i2891.i.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i2894.i.i.i.i.i.i = select i1 %tmp.i2892.not.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i.i129.i.i.i
  %.4.i.i.i144.i.i.i = sub i64 %tmp.i2891.i.i.i.i.i.i, %tmp.i2894.i.i.i.i.i.i
  %tmp.i2895.i.i.i.i.i.i = shl i64 %.4.i.i.i144.i.i.i, 1
  %521 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2895.i.i.i.i.i.i
  %522 = load double, ptr %521, align 8
  %tmp.i2897.i.i.i.i.i.i = or i64 %tmp.i2895.i.i.i.i.i.i, 1
  %523 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2897.i.i.i.i.i.i
  %524 = load double, ptr %523, align 8
  br i1 %.not27343119.i.i.i.i.i.i, label %imp_for.body37.lr.ph.i.i.i.i.i.i, label %imp_for.exit39.i.i.i.i.i.i

imp_for.body37.lr.ph.i.i.i.i.i.i:                 ; preds = %while.body22.i.i.i.i.i.i
  %tmp.i.i2900.i.i.i.i.i.i = mul i64 %.026993123.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2903.i.i.i.i.i.i = add nuw nsw i64 %.026993123.i.i.i.i.i.i, 1
  %tmp.i.i2904.i.i.i.i.i.i = mul i64 %tmp.i2903.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2908.i.i.i.i.i.i = add nuw nsw i64 %.026993123.i.i.i.i.i.i, 2
  %tmp.i.i2909.i.i.i.i.i.i = mul i64 %tmp.i2908.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2913.i.i.i.i.i.i = add nuw nsw i64 %.026993123.i.i.i.i.i.i, 3
  %tmp.i.i2914.i.i.i.i.i.i = mul i64 %tmp.i2913.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i.i2921.i.i.i.i.i.i = mul i64 %.027023122.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2924.i.i.i.i.i.i = add i64 %.027023122.i.i.i.i.i.i, -1
  %tmp.i.i2925.i.i.i.i.i.i = mul i64 %tmp.i2924.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2929.i.i.i.i.i.i = add i64 %.027023122.i.i.i.i.i.i, -2
  %tmp.i.i2930.i.i.i.i.i.i = mul i64 %tmp.i2929.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2934.i.i.i.i.i.i = add i64 %.027023122.i.i.i.i.i.i, -3
  %tmp.i.i2935.i.i.i.i.i.i = mul i64 %tmp.i2934.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  br label %imp_for.body37.i.i.i.i.i.i

imp_for.body37.i.i.i.i.i.i:                       ; preds = %imp_for.body37.i.i.i.i.i.i, %imp_for.body37.lr.ph.i.i.i.i.i.i
  %525 = phi i64 [ 0, %imp_for.body37.lr.ph.i.i.i.i.i.i ], [ %547, %imp_for.body37.i.i.i.i.i.i ]
  %526 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %525
  %527 = getelementptr double, ptr %526, i64 %tmp.i.i2898.i.i.i.i.i.i
  %528 = load double, ptr %527, align 8
  %tmp.i8.i2901.i.i.i.i.i.i = add i64 %525, %tmp.i.i2900.i.i.i.i.i.i
  %529 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2901.i.i.i.i.i.i
  %530 = load double, ptr %529, align 8
  %tmp.i2902.i.i.i.i.i.i = fmul double %510, %530
  %tmp.i8.i2905.i.i.i.i.i.i = add i64 %525, %tmp.i.i2904.i.i.i.i.i.i
  %531 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2905.i.i.i.i.i.i
  %532 = load double, ptr %531, align 8
  %tmp.i2906.i.i.i.i.i.i = fmul double %514, %532
  %tmp.i2907.i.i.i.i.i.i = fadd double %tmp.i2902.i.i.i.i.i.i, %tmp.i2906.i.i.i.i.i.i
  %tmp.i8.i2910.i.i.i.i.i.i = add i64 %525, %tmp.i.i2909.i.i.i.i.i.i
  %533 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2910.i.i.i.i.i.i
  %534 = load double, ptr %533, align 8
  %tmp.i2911.i.i.i.i.i.i = fmul double %518, %534
  %tmp.i2912.i.i.i.i.i.i = fadd double %tmp.i2907.i.i.i.i.i.i, %tmp.i2911.i.i.i.i.i.i
  %tmp.i8.i2915.i.i.i.i.i.i = add i64 %525, %tmp.i.i2914.i.i.i.i.i.i
  %535 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2915.i.i.i.i.i.i
  %536 = load double, ptr %535, align 8
  %tmp.i2916.i.i.i.i.i.i = fmul double %522, %536
  %tmp.i2917.i.i.i.i.i.i = fadd double %tmp.i2912.i.i.i.i.i.i, %tmp.i2916.i.i.i.i.i.i
  %tmp.i2918.i.i.i.i.i.i = fadd double %528, %tmp.i2917.i.i.i.i.i.i
  store double %tmp.i2918.i.i.i.i.i.i, ptr %527, align 8
  %537 = getelementptr double, ptr %526, i64 %tmp.i.i2919.i.i.i.i.i.i
  %538 = load double, ptr %537, align 8
  %tmp.i8.i2922.i.i.i.i.i.i = add i64 %525, %tmp.i.i2921.i.i.i.i.i.i
  %539 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2922.i.i.i.i.i.i
  %540 = load double, ptr %539, align 8
  %tmp.i2923.i.i.i.i.i.i = fmul double %512, %540
  %tmp.i8.i2926.i.i.i.i.i.i = add i64 %525, %tmp.i.i2925.i.i.i.i.i.i
  %541 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2926.i.i.i.i.i.i
  %542 = load double, ptr %541, align 8
  %tmp.i2927.i.i.i.i.i.i = fmul double %516, %542
  %tmp.i2928.i.i.i.i.i.i = fadd double %tmp.i2923.i.i.i.i.i.i, %tmp.i2927.i.i.i.i.i.i
  %tmp.i8.i2931.i.i.i.i.i.i = add i64 %525, %tmp.i.i2930.i.i.i.i.i.i
  %543 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2931.i.i.i.i.i.i
  %544 = load double, ptr %543, align 8
  %tmp.i2932.i.i.i.i.i.i = fmul double %520, %544
  %tmp.i2933.i.i.i.i.i.i = fadd double %tmp.i2928.i.i.i.i.i.i, %tmp.i2932.i.i.i.i.i.i
  %tmp.i8.i2936.i.i.i.i.i.i = add i64 %525, %tmp.i.i2935.i.i.i.i.i.i
  %545 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2936.i.i.i.i.i.i
  %546 = load double, ptr %545, align 8
  %tmp.i2937.i.i.i.i.i.i = fmul double %524, %546
  %tmp.i2938.i.i.i.i.i.i = fadd double %tmp.i2933.i.i.i.i.i.i, %tmp.i2937.i.i.i.i.i.i
  %tmp.i2939.i.i.i.i.i.i = fadd double %538, %tmp.i2938.i.i.i.i.i.i
  store double %tmp.i2939.i.i.i.i.i.i, ptr %537, align 8
  %547 = add nuw nsw i64 %525, 1
  %exitcond3181.not.i.i.i.i.i.i = icmp eq i64 %547, %tmp.i2763.i.i.i.i.i.i
  br i1 %exitcond3181.not.i.i.i.i.i.i, label %imp_for.exit39.i.i.i.i.i.i, label %imp_for.body37.i.i.i.i.i.i

imp_for.exit39.i.i.i.i.i.i:                       ; preds = %imp_for.body37.i.i.i.i.i.i, %while.body22.i.i.i.i.i.i
  %tmp.i2940.i.i.i.i.i.i = add nuw nsw i64 %.026993123.i.i.i.i.i.i, 4
  %tmp.i2941.i.i.i.i.i.i = add i64 %.027023122.i.i.i.i.i.i, -4
  %tmp.i2868.not.i.i.i.i.i.i = icmp sgt i64 %tmp.i2867.i.i.i.i.i.i, %tmp.i2940.i.i.i.i.i.i
  br i1 %tmp.i2868.not.i.i.i.i.i.i, label %while.body22.i.i.i.i.i.i, label %while.cond40.preheader.i.i.i.i.i.i

while.cond53.preheader.i.i.i.i.i.i:               ; preds = %imp_for.exit52.i.i.i.i.i.i, %while.cond40.preheader.i.i.i.i.i.i
  %.12703.lcssa.i.i.i.i.i.i = phi i64 [ %.02702.lcssa.i.i.i.i.i.i, %while.cond40.preheader.i.i.i.i.i.i ], [ %tmp.i2982.i.i.i.i.i.i, %imp_for.exit52.i.i.i.i.i.i ]
  %.12700.lcssa.i.i.i.i.i.i = phi i64 [ %.02699.lcssa.i.i.i.i.i.i, %while.cond40.preheader.i.i.i.i.i.i ], [ %tmp.i2981.i.i.i.i.i.i, %imp_for.exit52.i.i.i.i.i.i ]
  %.5.lcssa.i.i.i.i.i.i = phi i64 [ %.02698.lcssa.i.i.i.i.i.i, %while.cond40.preheader.i.i.i.i.i.i ], [ %.7.i.i.i.i.i.i, %imp_for.exit52.i.i.i.i.i.i ]
  %tmp.i2983.not3136.i.i.i.i.i.i = icmp slt i64 %.12700.lcssa.i.i.i.i.i.i, %tmp.i2762.i.i.i.i.i.i
  br i1 %tmp.i2983.not3136.i.i.i.i.i.i, label %while.body54.lr.ph.i.i.i.i.i.i, label %while.exit55.i.i.i.i.i.i

while.body54.lr.ph.i.i.i.i.i.i:                   ; preds = %while.cond53.preheader.i.i.i.i.i.i
  %tmp.i.i2993.i.i.i.i.i.i = mul i64 %485, %tmp.i2763.i.i.i.i.i.i
  %tmp.i.i2999.i.i.i.i.i.i = mul i64 %.026973141.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  br label %while.body54.i.i.i.i.i.i

while.body41.i.i.i.i.i.i:                         ; preds = %imp_for.exit52.i.i.i.i.i.i, %while.body41.lr.ph.i.i.i.i.i.i
  %.53131.i.i.i.i.i.i = phi i64 [ %.02698.lcssa.i.i.i.i.i.i, %while.body41.lr.ph.i.i.i.i.i.i ], [ %.7.i.i.i.i.i.i, %imp_for.exit52.i.i.i.i.i.i ]
  %.127003130.i.i.i.i.i.i = phi i64 [ %.02699.lcssa.i.i.i.i.i.i, %while.body41.lr.ph.i.i.i.i.i.i ], [ %tmp.i2981.i.i.i.i.i.i, %imp_for.exit52.i.i.i.i.i.i ]
  %.127033129.i.i.i.i.i.i = phi i64 [ %.02702.lcssa.i.i.i.i.i.i, %while.body41.lr.ph.i.i.i.i.i.i ], [ %tmp.i2982.i.i.i.i.i.i, %imp_for.exit52.i.i.i.i.i.i ]
  %tmp.i2945.i.i.i.i.i.i = add i64 %.53131.i.i.i.i.i.i, %485
  %tmp.i2946.not.i.i.i.i.i.i = icmp slt i64 %tmp.i2945.i.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i2948.i.i.i.i.i.i = select i1 %tmp.i2946.not.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i.i129.i.i.i
  %spec.select3103.i.i.i.i.i.i = sub i64 %tmp.i2945.i.i.i.i.i.i, %tmp.i2948.i.i.i.i.i.i
  %tmp.i2949.i.i.i.i.i.i = shl i64 %spec.select3103.i.i.i.i.i.i, 1
  %548 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2949.i.i.i.i.i.i
  %549 = load double, ptr %548, align 8
  %tmp.i2951.i.i.i.i.i.i = or i64 %tmp.i2949.i.i.i.i.i.i, 1
  %550 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2951.i.i.i.i.i.i
  %551 = load double, ptr %550, align 8
  %tmp.i2952.i.i.i.i.i.i = add i64 %spec.select3103.i.i.i.i.i.i, %485
  %tmp.i2953.not.i.i.i.i.i.i = icmp slt i64 %tmp.i2952.i.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i2955.i.i.i.i.i.i = select i1 %tmp.i2953.not.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i.i129.i.i.i
  %.7.i.i.i.i.i.i = sub i64 %tmp.i2952.i.i.i.i.i.i, %tmp.i2955.i.i.i.i.i.i
  %tmp.i2956.i.i.i.i.i.i = shl i64 %.7.i.i.i.i.i.i, 1
  %552 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2956.i.i.i.i.i.i
  %553 = load double, ptr %552, align 8
  %tmp.i2958.i.i.i.i.i.i = or i64 %tmp.i2956.i.i.i.i.i.i, 1
  %554 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2958.i.i.i.i.i.i
  %555 = load double, ptr %554, align 8
  br i1 %.not27343119.i.i.i.i.i.i, label %imp_for.body50.lr.ph.i.i.i.i.i.i, label %imp_for.exit52.i.i.i.i.i.i

imp_for.body50.lr.ph.i.i.i.i.i.i:                 ; preds = %while.body41.i.i.i.i.i.i
  %tmp.i.i2961.i.i.i.i.i.i = mul i64 %.127003130.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2964.i.i.i.i.i.i = add nuw nsw i64 %.127003130.i.i.i.i.i.i, 1
  %tmp.i.i2965.i.i.i.i.i.i = mul i64 %tmp.i2964.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i.i2972.i.i.i.i.i.i = mul i64 %.127033129.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i2975.i.i.i.i.i.i = add i64 %.127033129.i.i.i.i.i.i, -1
  %tmp.i.i2976.i.i.i.i.i.i = mul i64 %tmp.i2975.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  br label %imp_for.body50.i.i.i.i.i.i

imp_for.body50.i.i.i.i.i.i:                       ; preds = %imp_for.body50.i.i.i.i.i.i, %imp_for.body50.lr.ph.i.i.i.i.i.i
  %556 = phi i64 [ 0, %imp_for.body50.lr.ph.i.i.i.i.i.i ], [ %570, %imp_for.body50.i.i.i.i.i.i ]
  %557 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %556
  %558 = getelementptr double, ptr %557, i64 %tmp.i.i2959.i.i.i.i.i.i
  %559 = load double, ptr %558, align 8
  %tmp.i8.i2962.i.i.i.i.i.i = add i64 %556, %tmp.i.i2961.i.i.i.i.i.i
  %560 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2962.i.i.i.i.i.i
  %561 = load double, ptr %560, align 8
  %tmp.i2963.i.i.i.i.i.i = fmul double %549, %561
  %tmp.i8.i2966.i.i.i.i.i.i = add i64 %556, %tmp.i.i2965.i.i.i.i.i.i
  %562 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2966.i.i.i.i.i.i
  %563 = load double, ptr %562, align 8
  %tmp.i2967.i.i.i.i.i.i = fmul double %553, %563
  %tmp.i2968.i.i.i.i.i.i = fadd double %tmp.i2963.i.i.i.i.i.i, %tmp.i2967.i.i.i.i.i.i
  %tmp.i2969.i.i.i.i.i.i = fadd double %559, %tmp.i2968.i.i.i.i.i.i
  store double %tmp.i2969.i.i.i.i.i.i, ptr %558, align 8
  %564 = getelementptr double, ptr %557, i64 %tmp.i.i2970.i.i.i.i.i.i
  %565 = load double, ptr %564, align 8
  %tmp.i8.i2973.i.i.i.i.i.i = add i64 %556, %tmp.i.i2972.i.i.i.i.i.i
  %566 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2973.i.i.i.i.i.i
  %567 = load double, ptr %566, align 8
  %tmp.i2974.i.i.i.i.i.i = fmul double %551, %567
  %tmp.i8.i2977.i.i.i.i.i.i = add i64 %556, %tmp.i.i2976.i.i.i.i.i.i
  %568 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2977.i.i.i.i.i.i
  %569 = load double, ptr %568, align 8
  %tmp.i2978.i.i.i.i.i.i = fmul double %555, %569
  %tmp.i2979.i.i.i.i.i.i = fadd double %tmp.i2974.i.i.i.i.i.i, %tmp.i2978.i.i.i.i.i.i
  %tmp.i2980.i.i.i.i.i.i = fadd double %565, %tmp.i2979.i.i.i.i.i.i
  store double %tmp.i2980.i.i.i.i.i.i, ptr %564, align 8
  %570 = add nuw nsw i64 %556, 1
  %exitcond3182.not.i.i.i.i.i.i = icmp eq i64 %570, %tmp.i2763.i.i.i.i.i.i
  br i1 %exitcond3182.not.i.i.i.i.i.i, label %imp_for.exit52.i.i.i.i.i.i, label %imp_for.body50.i.i.i.i.i.i

imp_for.exit52.i.i.i.i.i.i:                       ; preds = %imp_for.body50.i.i.i.i.i.i, %while.body41.i.i.i.i.i.i
  %tmp.i2981.i.i.i.i.i.i = add nuw nsw i64 %.127003130.i.i.i.i.i.i, 2
  %tmp.i2982.i.i.i.i.i.i = add i64 %.127033129.i.i.i.i.i.i, -2
  %tmp.i2943.not.i.i.i.i.i.i = icmp sgt i64 %tmp.i2942.i.i.i.i.i.i, %tmp.i2981.i.i.i.i.i.i
  br i1 %tmp.i2943.not.i.i.i.i.i.i, label %while.body41.i.i.i.i.i.i, label %while.cond53.preheader.i.i.i.i.i.i

while.body54.i.i.i.i.i.i:                         ; preds = %imp_for.exit62.i.i.i.i.i.i, %while.body54.lr.ph.i.i.i.i.i.i
  %.83139.i.i.i.i.i.i = phi i64 [ %.5.lcssa.i.i.i.i.i.i, %while.body54.lr.ph.i.i.i.i.i.i ], [ %spec.select3104.i.i.i.i.i.i, %imp_for.exit62.i.i.i.i.i.i ]
  %.227013138.i.i.i.i.i.i = phi i64 [ %.12700.lcssa.i.i.i.i.i.i, %while.body54.lr.ph.i.i.i.i.i.i ], [ %tmp.i3005.i.i.i.i.i.i, %imp_for.exit62.i.i.i.i.i.i ]
  %.227043137.i.i.i.i.i.i = phi i64 [ %.12703.lcssa.i.i.i.i.i.i, %while.body54.lr.ph.i.i.i.i.i.i ], [ %tmp.i3006.i.i.i.i.i.i, %imp_for.exit62.i.i.i.i.i.i ]
  %tmp.i2985.i.i.i.i.i.i = add i64 %.83139.i.i.i.i.i.i, %485
  %tmp.i2986.not.i.i.i.i.i.i = icmp slt i64 %tmp.i2985.i.i.i.i.i.i, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i2989.i.i.i.i.i.i = select i1 %tmp.i2986.not.i.i.i.i.i.i, i64 0, i64 %.unpack.i.i.i.i.i129.i.i.i
  %spec.select3104.i.i.i.i.i.i = sub i64 %tmp.i2985.i.i.i.i.i.i, %tmp.i2989.i.i.i.i.i.i
  %tmp.i2990.i.i.i.i.i.i = shl i64 %spec.select3104.i.i.i.i.i.i, 1
  %571 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2990.i.i.i.i.i.i
  %572 = load double, ptr %571, align 8
  %tmp.i2992.i.i.i.i.i.i = or i64 %tmp.i2990.i.i.i.i.i.i, 1
  %573 = getelementptr double, ptr %.unpack4.i.i.i.i.i.i.i.i, i64 %tmp.i2992.i.i.i.i.i.i
  %574 = load double, ptr %573, align 8
  br i1 %.not27343119.i.i.i.i.i.i, label %imp_for.body60.lr.ph.i.i.i.i.i.i, label %imp_for.exit62.i.i.i.i.i.i

imp_for.body60.lr.ph.i.i.i.i.i.i:                 ; preds = %while.body54.i.i.i.i.i.i
  %tmp.i.i2995.i.i.i.i.i.i = mul i64 %.227013138.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  %tmp.i.i3001.i.i.i.i.i.i = mul i64 %.227043137.i.i.i.i.i.i, %tmp.i2763.i.i.i.i.i.i
  br label %imp_for.body60.i.i.i.i.i.i

while.exit55.i.i.i.i.i.i:                         ; preds = %imp_for.exit62.i.i.i.i.i.i, %while.cond53.preheader.i.i.i.i.i.i
  %tmp.i2988.i.i.i.i.i.i = add i64 %.026973141.i.i.i.i.i.i, -1
  %575 = add nuw nsw i64 %485, 1
  %exitcond3186.not.i.i.i.i.i.i = icmp eq i64 %575, %smax3178.i.i.i.i.i.i
  br i1 %exitcond3186.not.i.i.i.i.i.i, label %imp_for.cond63.preheader.i.i.i.i.i.i, label %imp_for.cond17.preheader.i.i.i.i.i.i

imp_for.body60.i.i.i.i.i.i:                       ; preds = %imp_for.body60.i.i.i.i.i.i, %imp_for.body60.lr.ph.i.i.i.i.i.i
  %576 = phi i64 [ 0, %imp_for.body60.lr.ph.i.i.i.i.i.i ], [ %586, %imp_for.body60.i.i.i.i.i.i ]
  %577 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %576
  %578 = getelementptr double, ptr %577, i64 %tmp.i.i2993.i.i.i.i.i.i
  %579 = load double, ptr %578, align 8
  %tmp.i8.i2996.i.i.i.i.i.i = add i64 %576, %tmp.i.i2995.i.i.i.i.i.i
  %580 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i2996.i.i.i.i.i.i
  %581 = load double, ptr %580, align 8
  %tmp.i2997.i.i.i.i.i.i = fmul double %572, %581
  %tmp.i2998.i.i.i.i.i.i = fadd double %579, %tmp.i2997.i.i.i.i.i.i
  store double %tmp.i2998.i.i.i.i.i.i, ptr %578, align 8
  %582 = getelementptr double, ptr %577, i64 %tmp.i.i2999.i.i.i.i.i.i
  %583 = load double, ptr %582, align 8
  %tmp.i8.i3002.i.i.i.i.i.i = add i64 %576, %tmp.i.i3001.i.i.i.i.i.i
  %584 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i3002.i.i.i.i.i.i
  %585 = load double, ptr %584, align 8
  %tmp.i3003.i.i.i.i.i.i = fmul double %574, %585
  %tmp.i3004.i.i.i.i.i.i = fadd double %583, %tmp.i3003.i.i.i.i.i.i
  store double %tmp.i3004.i.i.i.i.i.i, ptr %582, align 8
  %586 = add nuw nsw i64 %576, 1
  %exitcond3183.not.i.i.i.i.i.i = icmp eq i64 %586, %tmp.i2763.i.i.i.i.i.i
  br i1 %exitcond3183.not.i.i.i.i.i.i, label %imp_for.exit62.i.i.i.i.i.i, label %imp_for.body60.i.i.i.i.i.i

imp_for.exit62.i.i.i.i.i.i:                       ; preds = %imp_for.body60.i.i.i.i.i.i, %while.body54.i.i.i.i.i.i
  %tmp.i3005.i.i.i.i.i.i = add nuw nsw i64 %.227013138.i.i.i.i.i.i, 1
  %tmp.i3006.i.i.i.i.i.i = add i64 %.227043137.i.i.i.i.i.i, -1
  %exitcond3184.not.i.i.i.i.i.i = icmp eq i64 %tmp.i3005.i.i.i.i.i.i, %tmp.i2762.i.i.i.i.i.i
  br i1 %exitcond3184.not.i.i.i.i.i.i, label %while.exit55.i.i.i.i.i.i, label %while.body54.i.i.i.i.i.i

imp_for.cond71.preheader.us.preheader.i.i.i.i.i.i: ; preds = %imp_for.cond63.preheader.i.i.i.i.i.i
  %587 = shl i64 %tmp.i224.i.i.i.i.i, 3
  %588 = mul i64 %587, %tmp.i225.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0193409.i.i.i.i.i, ptr align 8 %.1410.i.i.i.i.i, i64 %588, i1 false)
  %min.iters.check = icmp eq i64 %tmp.i2763.i.i.i.i.i.i, 1
  %n.vec = and i64 %tmp.i2763.i.i.i.i.i.i, -2
  %cmp.n = icmp eq i64 %tmp.i2763.i.i.i.i.i.i, %n.vec
  br label %imp_for.cond71.preheader.us.i.i.i.i.i.i

imp_for.cond71.preheader.us.i.i.i.i.i.i:          ; preds = %imp_for.cond71.imp_for.exit74_crit_edge.us.i.i.i.i.i.i, %imp_for.cond71.preheader.us.preheader.i.i.i.i.i.i
  %589 = phi i64 [ %610, %imp_for.cond71.imp_for.exit74_crit_edge.us.i.i.i.i.i.i ], [ 1, %imp_for.cond71.preheader.us.preheader.i.i.i.i.i.i ]
  %tmp.i.i3007.us.i.i.i.i.i.i = mul i64 %589, %tmp.i2763.i.i.i.i.i.i
  br i1 %min.iters.check, label %imp_for.body72.us.i.i.i.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.body, %imp_for.cond71.preheader.us.i.i.i.i.i.i
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %imp_for.cond71.preheader.us.i.i.i.i.i.i ]
  %590 = or i64 %index, 1
  %591 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %index
  %592 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %590
  %593 = load double, ptr %591, align 8
  %594 = load double, ptr %592, align 8
  %595 = add i64 %index, %tmp.i.i3007.us.i.i.i.i.i.i
  %596 = add i64 %590, %tmp.i.i3007.us.i.i.i.i.i.i
  %597 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %595
  %598 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %596
  %599 = load double, ptr %597, align 8
  %600 = load double, ptr %598, align 8
  %601 = fadd double %593, %599
  %602 = fadd double %594, %600
  store double %601, ptr %591, align 8
  store double %602, ptr %592, align 8
  %index.next = add nuw i64 %index, 2
  %603 = icmp eq i64 %index.next, %n.vec
  br i1 %603, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %imp_for.cond71.imp_for.exit74_crit_edge.us.i.i.i.i.i.i, label %imp_for.body72.us.i.i.i.i.i.i.preheader

imp_for.body72.us.i.i.i.i.i.i.preheader:          ; preds = %middle.block, %imp_for.cond71.preheader.us.i.i.i.i.i.i
  br label %imp_for.body72.us.i.i.i.i.i.i

imp_for.body72.us.i.i.i.i.i.i:                    ; preds = %imp_for.body72.us.i.i.i.i.i.i, %imp_for.body72.us.i.i.i.i.i.i.preheader
  %604 = phi i64 [ %609, %imp_for.body72.us.i.i.i.i.i.i ], [ %n.vec, %imp_for.body72.us.i.i.i.i.i.i.preheader ]
  %605 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %604
  %606 = load double, ptr %605, align 8
  %tmp.i8.i3008.us.i.i.i.i.i.i = add i64 %604, %tmp.i.i3007.us.i.i.i.i.i.i
  %607 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i8.i3008.us.i.i.i.i.i.i
  %608 = load double, ptr %607, align 8
  %tmp.i3009.us.i.i.i.i.i.i = fadd double %606, %608
  store double %tmp.i3009.us.i.i.i.i.i.i, ptr %605, align 8
  %609 = add nuw nsw i64 %604, 1
  %exitcond3188.not.i.i.i.i.i.i = icmp eq i64 %609, %tmp.i2763.i.i.i.i.i.i
  br i1 %exitcond3188.not.i.i.i.i.i.i, label %imp_for.cond71.imp_for.exit74_crit_edge.us.i.i.i.i.i.i, label %imp_for.body72.us.i.i.i.i.i.i, !llvm.loop !14

imp_for.cond71.imp_for.exit74_crit_edge.us.i.i.i.i.i.i: ; preds = %imp_for.body72.us.i.i.i.i.i.i, %middle.block
  %610 = add nuw nsw i64 %589, 1
  %exitcond3190.not.i.i.i.i.i.i = icmp eq i64 %610, %smax3178.i.i.i.i.i.i
  br i1 %exitcond3190.not.i.i.i.i.i.i, label %imp_for.cond75.preheader.i.i.i.i.i.i, label %imp_for.cond71.preheader.us.i.i.i.i.i.i

imp_for.cond75.preheader.i.i.i.i.i.i:             ; preds = %imp_for.cond71.imp_for.exit74_crit_edge.us.i.i.i.i.i.i, %imp_for.cond63.preheader.i.i.thread.i.i.i.i, %imp_for.cond63.preheader.i.i.i.i.i.i
  %.not27313117320532123227.i.i.i.i.i.i = phi i1 [ true, %imp_for.cond63.preheader.i.i.i.i.i.i ], [ false, %imp_for.cond63.preheader.i.i.thread.i.i.i.i ], [ true, %imp_for.cond71.imp_for.exit74_crit_edge.us.i.i.i.i.i.i ]
  %.not27513146.i.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  br i1 %.not27513146.i.i.i.i.i.i, label %imp_for.cond79.preheader.lr.ph.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond75.preheader.i.thread.i.i.i.i.i:      ; preds = %imp_for.cond63.preheader.thread.i.i.i.i.i.i, %imp_for.cond63.preheader.i.i.thread.i.i.i.i
  %611 = shl i64 %tmp.i224.i.i.i.i.i, 3
  %612 = mul i64 %611, %tmp.i225.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0193409.i.i.i.i.i, ptr align 8 %.1410.i.i.i.i.i, i64 %612, i1 false)
  %.not27513146.i382.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  %.not27523145.i394.i.i.i.i.i = icmp sgt i64 %tmp.i224.i.i.i.i.i, 0
  %or.cond397.i.i.i.i.i = and i1 %.not27523145.i394.i.i.i.i.i, %.not27513146.i382.i.i.i.i.i
  br i1 %or.cond397.i.i.i.i.i, label %imp_for.cond79.preheader.us.preheader.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond75.preheader.thread.i.i.i.i.i.i:      ; preds = %imp_for.cond63.preheader.thread.i.i.i.i.i.i
  %.not275131463235.i.i.i.i.i.i = icmp sgt i64 %tmp.i225.i.i.i.i.i, 0
  br i1 %.not275131463235.i.i.i.i.i.i, label %imp_for.cond79.preheader.us.preheader.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond79.preheader.lr.ph.i.i.i.i.i.i:       ; preds = %imp_for.cond75.preheader.i.i.i.i.i.i
  %.not27523145.i.i.i.i.i.i = icmp sgt i64 %tmp.i224.i.i.i.i.i, 0
  br i1 %.not27523145.i.i.i.i.i.i, label %imp_for.cond79.preheader.us.preheader.i.i.i.i.i.i, label %imp_for.cond83.preheader.thread3215.i.i.i.i.i.i

imp_for.cond79.preheader.us.preheader.i.i.i.i.i.i: ; preds = %imp_for.cond79.preheader.lr.ph.i.i.i.i.i.i, %imp_for.cond75.preheader.thread.i.i.i.i.i.i, %imp_for.cond75.preheader.i.thread.i.i.i.i.i
  %.not2731311732053212322732363256.i.i.i.i.i.i = phi i1 [ %.not27313117320532123227.i.i.i.i.i.i, %imp_for.cond79.preheader.lr.ph.i.i.i.i.i.i ], [ false, %imp_for.cond75.preheader.thread.i.i.i.i.i.i ], [ false, %imp_for.cond75.preheader.i.thread.i.i.i.i.i ]
  %613 = shl i64 %.unpack.i.i.i.i.i129.i.i.i, 3
  %614 = mul i64 %613, %tmp.i224.i.i.i.i.i
  %615 = shl i64 %tmp.i224.i.i.i.i.i, 3
  br label %imp_for.cond79.preheader.us.i.i.i.i.i.i

imp_for.cond79.preheader.us.i.i.i.i.i.i:          ; preds = %imp_for.cond79.preheader.us.i.i.i.i.i.i, %imp_for.cond79.preheader.us.preheader.i.i.i.i.i.i
  %616 = phi i64 [ %619, %imp_for.cond79.preheader.us.i.i.i.i.i.i ], [ 0, %imp_for.cond79.preheader.us.preheader.i.i.i.i.i.i ]
  %617 = mul i64 %614, %616
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.1410.i.i.i.i.i, i64 %617
  %618 = mul i64 %616, %615
  %scevgep416.i.i.i.i.i = getelementptr i8, ptr %.0193409.i.i.i.i.i, i64 %618
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.i.i.i.i.i, ptr align 8 %scevgep416.i.i.i.i.i, i64 %615, i1 false)
  %619 = add nuw nsw i64 %616, 1
  %exitcond3193.not.i.i.i.i.i.i = icmp eq i64 %619, %tmp.i225.i.i.i.i.i
  br i1 %exitcond3193.not.i.i.i.i.i.i, label %imp_for.cond83.preheader.i.i.i.i.i.i, label %imp_for.cond79.preheader.us.i.i.i.i.i.i

imp_for.cond83.preheader.i.i.i.i.i.i:             ; preds = %imp_for.cond79.preheader.us.i.i.i.i.i.i
  br i1 %.not2731311732053212322732363256.i.i.i.i.i.i, label %imp_for.body84.us.preheader.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.cond83.preheader.thread3215.i.i.i.i.i.i:  ; preds = %imp_for.cond79.preheader.lr.ph.i.i.i.i.i.i
  br i1 %.not27313117320532123227.i.i.i.i.i.i, label %imp_for.body84.us.preheader.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i

imp_for.body84.us.preheader.i.i.i.i.i.i:          ; preds = %imp_for.cond83.preheader.thread3215.i.i.i.i.i.i, %imp_for.cond83.preheader.i.i.i.i.i.i
  %tmp.i3019.i.i.i.i.i.i = add i64 %tmp.i224.i.i.i.i.i, -1
  %620 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i3019.i.i.i.i.i.i
  %smax3195.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %tmp.i2762.i.i.i.i.i.i, i64 2)
  br label %imp_for.body84.us.i.i.i.i.i.i

imp_for.body84.us.i.i.i.i.i.i:                    ; preds = %imp_for.cond87.imp_for.exit90_crit_edge.us.i.i.i.i.i.i, %imp_for.body84.us.preheader.i.i.i.i.i.i
  %621 = phi i64 [ %630, %imp_for.cond87.imp_for.exit90_crit_edge.us.i.i.i.i.i.i ], [ 1, %imp_for.body84.us.preheader.i.i.i.i.i.i ]
  %.027053149.us.i.i.i.i.i.i = phi i64 [ %tmp.i3032.us.i.i.i.i.i.i, %imp_for.cond87.imp_for.exit90_crit_edge.us.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %imp_for.body84.us.preheader.i.i.i.i.i.i ]
  %tmp.i3015.us.i.i.i.i.i.i = shl nuw i64 %621, 1
  %tmp.i3016.us.i.i.i.i.i.i = add nsw i64 %tmp.i3015.us.i.i.i.i.i.i, -1
  %tmp.i.i3023.us.i.i.i.i.i.i = mul i64 %621, %tmp.i225.i.i.i.i.i
  %tmp.i.i3029.us.i.i.i.i.i.i = mul i64 %.027053149.us.i.i.i.i.i.i, %tmp.i225.i.i.i.i.i
  br label %imp_for.body88.us.i.i.i.i.i.i

imp_for.body88.us.i.i.i.i.i.i:                    ; preds = %imp_for.body88.us.i.i.i.i.i.i, %imp_for.body84.us.i.i.i.i.i.i
  %622 = phi i64 [ 0, %imp_for.body84.us.i.i.i.i.i.i ], [ %629, %imp_for.body88.us.i.i.i.i.i.i ]
  %tmp.i.i3020.us.i.i.i.i.i.i = mul i64 %622, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i13.i3021.us.i.i.i.i.i.i = add i64 %tmp.i3016.us.i.i.i.i.i.i, %tmp.i.i3020.us.i.i.i.i.i.i
  %tmp.i14.i3022.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3021.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %623 = getelementptr double, ptr %620, i64 %tmp.i14.i3022.us.i.i.i.i.i.i
  %tmp.i13.i3024.us.i.i.i.i.i.i = add i64 %622, %tmp.i.i3023.us.i.i.i.i.i.i
  %tmp.i14.i3025.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3024.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %624 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i14.i3025.us.i.i.i.i.i.i
  %625 = load double, ptr %624, align 8
  store double %625, ptr %623, align 8
  %tmp.i13.i3027.us.i.i.i.i.i.i = add i64 %tmp.i.i3020.us.i.i.i.i.i.i, %tmp.i3015.us.i.i.i.i.i.i
  %tmp.i14.i3028.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3027.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %626 = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i3028.us.i.i.i.i.i.i
  %tmp.i13.i3030.us.i.i.i.i.i.i = add i64 %622, %tmp.i.i3029.us.i.i.i.i.i.i
  %tmp.i14.i3031.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3030.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %627 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i14.i3031.us.i.i.i.i.i.i
  %628 = load double, ptr %627, align 8
  store double %628, ptr %626, align 8
  %629 = add nuw nsw i64 %622, 1
  %exitcond3194.not.i.i.i.i.i.i = icmp eq i64 %629, %tmp.i225.i.i.i.i.i
  br i1 %exitcond3194.not.i.i.i.i.i.i, label %imp_for.cond87.imp_for.exit90_crit_edge.us.i.i.i.i.i.i, label %imp_for.body88.us.i.i.i.i.i.i

imp_for.cond87.imp_for.exit90_crit_edge.us.i.i.i.i.i.i: ; preds = %imp_for.body88.us.i.i.i.i.i.i
  %tmp.i3032.us.i.i.i.i.i.i = add i64 %.027053149.us.i.i.i.i.i.i, -1
  %630 = add nuw nsw i64 %621, 1
  %exitcond3196.not.i.i.i.i.i.i = icmp eq i64 %630, %smax3195.i.i.i.i.i.i
  br i1 %exitcond3196.not.i.i.i.i.i.i, label %imp_for.exit86.i.i.i.i.i.i, label %imp_for.body84.us.i.i.i.i.i.i

imp_for.exit86.i.i.i.i.i.i:                       ; preds = %imp_for.cond87.imp_for.exit90_crit_edge.us.i.i.i.i.i.i
  %tmp.i3017.not.not.i.i.i.i.i.i = icmp eq i64 %tmp.i224.i.i.i.i.i, 1
  br i1 %tmp.i3017.not.not.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i, label %imp_for.body95.us.preheader.i.i.i.i.i.i

imp_for.body95.us.preheader.i.i.i.i.i.i:          ; preds = %imp_for.exit86.i.i.i.i.i.i
  %tmp.i3037.i.i.i.i.i.i = add i64 %tmp.i224.i.i.i.i.i, -3
  %tmp.i3039.i.i.i.i.i.i = add i64 %tmp.i224.i.i.i.i.i, -2
  %tmp.i3040.not3150.i.i.i.i.i.i = icmp slt i64 %tmp.i3039.i.i.i.i.i.i, 1
  br label %imp_for.body95.us.i.i.i.i.i.i

imp_for.body95.us.i.i.i.i.i.i:                    ; preds = %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i, %imp_for.body95.us.preheader.i.i.i.i.i.i
  %631 = phi i64 [ %642, %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i ], [ 1, %imp_for.body95.us.preheader.i.i.i.i.i.i ]
  %.027063161.us.i.i.i.i.i.i = phi i64 [ %tmp.i3038.us.i.i.i.i.i.i, %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i, %imp_for.body95.us.preheader.i.i.i.i.i.i ]
  %tmp.i3034.us.i.i.i.i.i.i = shl nuw i64 %631, 1
  %tmp.i3035.us.i.i.i.i.i.i = add nsw i64 %tmp.i3034.us.i.i.i.i.i.i, -1
  %tmp.i.i3045.us.i.i.i.i.i.i = mul i64 %631, %tmp.i225.i.i.i.i.i
  %tmp.i.i3049.us.i.i.i.i.i.i = mul i64 %.027063161.us.i.i.i.i.i.i, %tmp.i225.i.i.i.i.i
  br i1 %tmp.i3040.not3150.i.i.i.i.i.i, label %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i, label %imp_for.body99.us3162.i.i.i.i.i.i

imp_for.body99.us3162.i.i.i.i.i.i:                ; preds = %while.cond102.while.exit104_crit_edge.us.i.i.i.i.i.i, %imp_for.body95.us.i.i.i.i.i.i
  %632 = phi i64 [ %641, %while.cond102.while.exit104_crit_edge.us.i.i.i.i.i.i ], [ 0, %imp_for.body95.us.i.i.i.i.i.i ]
  %tmp.i.i3042.us.i.i.i.i.i.i = mul i64 %632, %.unpack.i.i.i.i.i129.i.i.i
  %tmp.i13.i3043.us.i.i.i.i.i.i = add i64 %tmp.i.i3042.us.i.i.i.i.i.i, %tmp.i3034.us.i.i.i.i.i.i
  %tmp.i14.i3044.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3043.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %invariant.gep.us3163.i.i.i.i.i.i = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i3044.us.i.i.i.i.i.i
  %tmp.i13.i3046.us.i.i.i.i.i.i = add i64 %632, %tmp.i.i3045.us.i.i.i.i.i.i
  %tmp.i14.i3047.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3046.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i3050.us.i.i.i.i.i.i = add i64 %632, %tmp.i.i3049.us.i.i.i.i.i.i
  %tmp.i14.i3051.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3050.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %tmp.i13.i3055.us.i.i.i.i.i.i = add i64 %tmp.i3035.us.i.i.i.i.i.i, %tmp.i.i3042.us.i.i.i.i.i.i
  %tmp.i14.i3056.us.i.i.i.i.i.i = mul i64 %tmp.i13.i3055.us.i.i.i.i.i.i, %tmp.i224.i.i.i.i.i
  %invariant.gep3153.us.i.i.i.i.i.i = getelementptr double, ptr %.1410.i.i.i.i.i, i64 %tmp.i14.i3056.us.i.i.i.i.i.i
  br label %while.body103.us.i.i.i.i.i.i

while.body103.us.i.i.i.i.i.i:                     ; preds = %while.body103.us.i.i.i.i.i.i, %imp_for.body99.us3162.i.i.i.i.i.i
  %.027073152.us.i.i.i.i.i.i = phi i64 [ 1, %imp_for.body99.us3162.i.i.i.i.i.i ], [ %tmp.i3096.us.i.i.i.i.i.i, %while.body103.us.i.i.i.i.i.i ]
  %.027083151.us.i.i.i.i.i.i = phi i64 [ %tmp.i3037.i.i.i.i.i.i, %imp_for.body99.us3162.i.i.i.i.i.i ], [ %tmp.i3097.us.i.i.i.i.i.i, %while.body103.us.i.i.i.i.i.i ]
  %gep.us3164.i.i.i.i.i.i = getelementptr double, ptr %invariant.gep.us3163.i.i.i.i.i.i, i64 %.027073152.us.i.i.i.i.i.i
  %tmp.i15.i3048.us.i.i.i.i.i.i = add i64 %.027073152.us.i.i.i.i.i.i, %tmp.i14.i3047.us.i.i.i.i.i.i
  %633 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i15.i3048.us.i.i.i.i.i.i
  %634 = load double, ptr %633, align 8
  %tmp.i15.i3052.us.i.i.i.i.i.i = add i64 %.027073152.us.i.i.i.i.i.i, %tmp.i14.i3051.us.i.i.i.i.i.i
  %635 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i15.i3052.us.i.i.i.i.i.i
  %636 = load double, ptr %635, align 8
  %tmp.i3053.us.i.i.i.i.i.i = fadd double %634, %636
  store double %tmp.i3053.us.i.i.i.i.i.i, ptr %gep.us3164.i.i.i.i.i.i, align 8
  %gep3154.us.i.i.i.i.i.i = getelementptr double, ptr %invariant.gep3153.us.i.i.i.i.i.i, i64 %.027083151.us.i.i.i.i.i.i
  %tmp.i3065.us.i.i.i.i.i.i = fsub double %634, %636
  store double %tmp.i3065.us.i.i.i.i.i.i, ptr %gep3154.us.i.i.i.i.i.i, align 8
  %tmp.i3066.us.i.i.i.i.i.i = add i64 %.027073152.us.i.i.i.i.i.i, 1
  %gep3156.us.i.i.i.i.i.i = getelementptr double, ptr %invariant.gep.us3163.i.i.i.i.i.i, i64 %tmp.i3066.us.i.i.i.i.i.i
  %tmp.i15.i3074.us.i.i.i.i.i.i = add i64 %tmp.i3066.us.i.i.i.i.i.i, %tmp.i14.i3047.us.i.i.i.i.i.i
  %637 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i15.i3074.us.i.i.i.i.i.i
  %638 = load double, ptr %637, align 8
  %tmp.i15.i3079.us.i.i.i.i.i.i = add i64 %tmp.i3066.us.i.i.i.i.i.i, %tmp.i14.i3051.us.i.i.i.i.i.i
  %639 = getelementptr double, ptr %.0193409.i.i.i.i.i, i64 %tmp.i15.i3079.us.i.i.i.i.i.i
  %640 = load double, ptr %639, align 8
  %tmp.i3080.us.i.i.i.i.i.i = fadd double %638, %640
  store double %tmp.i3080.us.i.i.i.i.i.i, ptr %gep3156.us.i.i.i.i.i.i, align 8
  %tmp.i3081.us.i.i.i.i.i.i = add i64 %.027083151.us.i.i.i.i.i.i, 1
  %gep3158.us.i.i.i.i.i.i = getelementptr double, ptr %invariant.gep3153.us.i.i.i.i.i.i, i64 %tmp.i3081.us.i.i.i.i.i.i
  %tmp.i3095.us.i.i.i.i.i.i = fsub double %640, %638
  store double %tmp.i3095.us.i.i.i.i.i.i, ptr %gep3158.us.i.i.i.i.i.i, align 8
  %tmp.i3096.us.i.i.i.i.i.i = add i64 %.027073152.us.i.i.i.i.i.i, 2
  %tmp.i3097.us.i.i.i.i.i.i = add i64 %.027083151.us.i.i.i.i.i.i, -2
  %tmp.i3040.not.us.i.i.i.i.i.i = icmp slt i64 %tmp.i3039.i.i.i.i.i.i, %tmp.i3096.us.i.i.i.i.i.i
  br i1 %tmp.i3040.not.us.i.i.i.i.i.i, label %while.cond102.while.exit104_crit_edge.us.i.i.i.i.i.i, label %while.body103.us.i.i.i.i.i.i

while.cond102.while.exit104_crit_edge.us.i.i.i.i.i.i: ; preds = %while.body103.us.i.i.i.i.i.i
  %641 = add nuw nsw i64 %632, 1
  %exitcond3197.not.i.i.i.i.i.i = icmp eq i64 %641, %tmp.i225.i.i.i.i.i
  br i1 %exitcond3197.not.i.i.i.i.i.i, label %imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i, label %imp_for.body99.us3162.i.i.i.i.i.i

imp_for.cond98.imp_for.exit101_crit_edge.us.i.i.i.i.i.i: ; preds = %while.cond102.while.exit104_crit_edge.us.i.i.i.i.i.i, %imp_for.body95.us.i.i.i.i.i.i
  %tmp.i3038.us.i.i.i.i.i.i = add i64 %.027063161.us.i.i.i.i.i.i, -1
  %642 = add nuw nsw i64 %631, 1
  %exitcond3199.not.i.i.i.i.i.i = icmp eq i64 %642, %smax3195.i.i.i.i.i.i
  br i1 %exitcond3199.not.i.i.i.i.i.i, label %if.exit6.i.i.i.i.i, label %imp_for.body95.us.i.i.i.i.i.i

imp_for.body.i48.i.preheader.i.i.i:               ; preds = %imp_for.body6.i.i.i.i.i, %middle.block213, %while.exit.i.i.i.i.i
  %643 = tail call {} @seq_free(ptr nonnull %112)
  %644 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %107, 3
  %.fca.0.extract.i.i368.i.i.i.i.i = extractvalue { ptr, i64 } %644, 0
  %645 = tail call {} @seq_free(ptr %.fca.0.extract.i.i368.i.i.i.i.i)
  %646 = extractvalue { i64, i64, i64, { ptr, i64 }, { ptr, i64 } } %107, 4
  %.fca.0.extract.i34.i.i.i.i.i.i = extractvalue { ptr, i64 } %646, 0
  %647 = tail call {} @seq_free(ptr %.fca.0.extract.i34.i.i.i.i.i.i)
  %648 = tail call ptr @seq_alloc_atomic(i64 %12)
  %649 = load double, ptr %10, align 8
  %tmp.i.i.i146.i.i.i = fmul double %649, 0.000000e+00
  br i1 %min.iters.check196, label %imp_for.body.i48.i.i.i.i.preheader, label %vector.scevcheck186

vector.scevcheck186:                              ; preds = %imp_for.body.i48.i.preheader.i.i.i
  %650 = getelementptr i8, ptr %648, i64 %mul.result188
  %651 = icmp ult ptr %650, %648
  %scevgep190 = getelementptr i8, ptr %648, i64 8
  %652 = getelementptr i8, ptr %scevgep190, i64 %mul.result188
  %653 = icmp ult ptr %652, %scevgep190
  %654 = or i1 %mul.overflow193, %653
  %655 = or i1 %651, %654
  br i1 %655, label %imp_for.body.i48.i.i.i.i.preheader, label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.scevcheck186
  %index203 = phi i64 [ %index.next204, %vector.body202 ], [ 0, %vector.scevcheck186 ]
  %656 = or i64 %index203, 1
  %657 = getelementptr double, ptr %10, i64 %index203
  %658 = getelementptr double, ptr %10, i64 %656
  %659 = load double, ptr %657, align 8
  %660 = load double, ptr %658, align 8
  %661 = getelementptr { double, double }, ptr %648, i64 %index203
  %662 = getelementptr { double, double }, ptr %648, i64 %656
  store double %659, ptr %661, align 8
  store double %660, ptr %662, align 8
  %663 = getelementptr { double, double }, ptr %648, i64 %index203, i32 1
  %664 = getelementptr { double, double }, ptr %648, i64 %656, i32 1
  store double %tmp.i.i.i146.i.i.i, ptr %663, align 8
  store double %tmp.i.i.i146.i.i.i, ptr %664, align 8
  %index.next204 = add nuw nsw i64 %index203, 2
  %665 = icmp eq i64 %index.next204, %n.vec199
  br i1 %665, label %middle.block194, label %vector.body202, !llvm.loop !15

middle.block194:                                  ; preds = %vector.body202
  br i1 %cmp.n201, label %imp_for.body.i.i46.i.preheader.i.i.i, label %imp_for.body.i48.i.i.i.i.preheader

imp_for.body.i48.i.i.i.i.preheader:               ; preds = %middle.block194, %vector.scevcheck186, %imp_for.body.i48.i.preheader.i.i.i
  %.ph584 = phi i64 [ %n.vec199, %middle.block194 ], [ 0, %imp_for.body.i48.i.preheader.i.i.i ], [ 0, %vector.scevcheck186 ]
  br label %imp_for.body.i48.i.i.i.i

imp_for.body.i48.i.i.i.i:                         ; preds = %imp_for.body.i48.i.i.i.i, %imp_for.body.i48.i.i.i.i.preheader
  %666 = phi i64 [ %670, %imp_for.body.i48.i.i.i.i ], [ %.ph584, %imp_for.body.i48.i.i.i.i.preheader ]
  %667 = getelementptr double, ptr %10, i64 %666
  %668 = load double, ptr %667, align 8
  %669 = getelementptr { double, double }, ptr %648, i64 %666
  store double %668, ptr %669, align 8
  %.repack1.i.i.i.i151.i.i.i = getelementptr { double, double }, ptr %648, i64 %666, i32 1
  store double %tmp.i.i.i146.i.i.i, ptr %.repack1.i.i.i.i151.i.i.i, align 8
  %670 = add nuw nsw i64 %666, 1
  %exitcond.not.i49.i.i.i.i = icmp eq i64 %670, %1
  br i1 %exitcond.not.i49.i.i.i.i, label %imp_for.body.i.i46.i.preheader.i.i.i, label %imp_for.body.i48.i.i.i.i, !llvm.loop !16

imp_for.body.i.i46.i.preheader.i.i.i:             ; preds = %imp_for.body.i48.i.i.i.i, %middle.block194
  %671 = tail call ptr @seq_alloc_atomic(i64 %111)
  br label %imp_for.body.i.i46.i.i.i.i

imp_for.body.i.i46.i.i.i.i:                       ; preds = %imp_for.body.i.i46.i.i.i.i, %imp_for.body.i.i46.i.preheader.i.i.i
  %672 = phi i64 [ %676, %imp_for.body.i.i46.i.i.i.i ], [ 0, %imp_for.body.i.i46.i.preheader.i.i.i ]
  %673 = getelementptr { double, double }, ptr %648, i64 %672
  %.unpack.i.i.i.i148.i.i.i = load double, ptr %673, align 8
  %.elt1.i.i.i.i149.i.i.i = getelementptr { double, double }, ptr %648, i64 %672, i32 1
  %.unpack2.i.i.i.i150.i.i.i = load double, ptr %.elt1.i.i.i.i149.i.i.i, align 8
  %674 = getelementptr { double, double }, ptr %105, i64 %672
  %.unpack.i190.i.i.i.i.i.i = load double, ptr %674, align 8
  %.elt1.i191.i.i.i.i.i.i = getelementptr { double, double }, ptr %105, i64 %672, i32 1
  %.unpack2.i192.i.i.i.i.i.i = load double, ptr %.elt1.i191.i.i.i.i.i.i, align 8
  %tmp.i101.i.i.i.i.i.i.i = fmul double %.unpack.i.i.i.i148.i.i.i, %.unpack.i190.i.i.i.i.i.i
  %tmp.i102.i.i.i.i.i.i.i = fmul double %.unpack2.i.i.i.i150.i.i.i, %.unpack2.i192.i.i.i.i.i.i
  %tmp.i97.i.i.i.i.i.i.i = fadd double %tmp.i101.i.i.i.i.i.i.i, %tmp.i102.i.i.i.i.i.i.i
  %tmp.i98.i.i.i.i.i.i.i = fmul double %.unpack2.i.i.i.i150.i.i.i, %.unpack.i190.i.i.i.i.i.i
  %tmp.i99.i.i.i.i.i.i.i = fmul double %.unpack.i.i.i.i148.i.i.i, %.unpack2.i192.i.i.i.i.i.i
  %tmp.i100.i.i.i.i.i.i.i = fsub double %tmp.i98.i.i.i.i.i.i.i, %tmp.i99.i.i.i.i.i.i.i
  %675 = getelementptr { double, double }, ptr %671, i64 %672
  store double %tmp.i97.i.i.i.i.i.i.i, ptr %675, align 8
  %.repack1.i.i.i.i.i.i.i.i = getelementptr { double, double }, ptr %671, i64 %672, i32 1
  store double %tmp.i100.i.i.i.i.i.i.i, ptr %.repack1.i.i.i.i.i.i.i.i, align 8
  %676 = add nuw nsw i64 %672, 1
  %exitcond.not.i.i47.i.i.i.i = icmp eq i64 %676, %1
  br i1 %exitcond.not.i.i47.i.i.i.i, label %imp_for.exit.i.i36.i.i.i.i, label %imp_for.body.i.i46.i.i.i.i

imp_for.exit.i.i36.i.i.i.i:                       ; preds = %imp_for.body.i.i46.i.i.i.i
  %.elt1.i.i.phi.trans.insert.i.i.i.i.i.i = getelementptr { double, double }, ptr %671, i64 0, i32 1
  %.unpack2.i.i.pre.i.i.i.i.i.i = load double, ptr %.elt1.i.i.phi.trans.insert.i.i.i.i.i.i, align 8
  %677 = fmul double %.unpack2.i.i.pre.i.i.i.i.i.i, 0.000000e+00
  %.unpack.i.i.pre.i.i.i.i.i.i = load double, ptr %671, align 8
  %678 = fmul double %.unpack.i.i.pre.i.i.i.i.i.i, 0.000000e+00
  %tmp.i49.i.i.i.i.i.i.i.i = fsub double %678, %677
  %tmp.i52.i.i.i.i.i.i.i.i = fadd double %677, %678
  %.not183279.i.i.i.i.i.i = icmp sgt i64 %.unpack171.i.i.i.i.i.i, %1
  br i1 %.not183279.i.i.i.i.i.i, label %imp_for.body2.i.i44.i.i.i.i.preheader, label %imp_for.exit4.i.i.i.i.i.i

imp_for.body2.i.i44.i.i.i.i.preheader:            ; preds = %imp_for.exit.i.i36.i.i.i.i
  %min.iters.check177 = icmp ult i64 %tmp.i346.i.i.i.i.i, 2
  br i1 %min.iters.check177, label %imp_for.body2.i.i44.i.i.i.i.preheader582, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %imp_for.body2.i.i44.i.i.i.i.preheader
  %679 = add nsw i64 %.unpack171.i.i.i.i.i.i, %17
  %scevgep = getelementptr i8, ptr %671, i64 %12
  %mul.result = shl i64 %679, 4
  %680 = getelementptr i8, ptr %scevgep, i64 %mul.result
  %681 = icmp ult ptr %680, %scevgep
  %scevgep171 = getelementptr i8, ptr %671, i64 %18
  %mul.overflow174 = icmp ugt i64 %679, 1152921504606846975
  %682 = getelementptr i8, ptr %scevgep171, i64 %mul.result
  %683 = icmp ult ptr %682, %scevgep171
  %684 = or i1 %mul.overflow174, %683
  %685 = or i1 %681, %684
  br i1 %685, label %imp_for.body2.i.i44.i.i.i.i.preheader582, label %vector.ph178

vector.ph178:                                     ; preds = %vector.scevcheck
  %n.vec180 = and i64 %tmp.i346.i.i.i.i.i, -2
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph178
  %index184 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body183 ]
  %offset.idx = add i64 %index184, %1
  %686 = add i64 %offset.idx, 1
  %687 = getelementptr { double, double }, ptr %671, i64 %offset.idx
  %688 = getelementptr { double, double }, ptr %671, i64 %686
  store double %tmp.i49.i.i.i.i.i.i.i.i, ptr %687, align 8
  store double %tmp.i49.i.i.i.i.i.i.i.i, ptr %688, align 8
  %689 = getelementptr { double, double }, ptr %671, i64 %offset.idx, i32 1
  %690 = getelementptr { double, double }, ptr %671, i64 %686, i32 1
  store double %tmp.i52.i.i.i.i.i.i.i.i, ptr %689, align 8
  store double %tmp.i52.i.i.i.i.i.i.i.i, ptr %690, align 8
  %index.next185 = add nuw i64 %index184, 2
  %691 = icmp eq i64 %index.next185, %n.vec180
  br i1 %691, label %middle.block175, label %vector.body183, !llvm.loop !17

middle.block175:                                  ; preds = %vector.body183
  %ind.end = add i64 %n.vec180, %1
  %cmp.n182 = icmp eq i64 %tmp.i346.i.i.i.i.i, %n.vec180
  br i1 %cmp.n182, label %imp_for.exit4.i.i.i.i.i.i, label %imp_for.body2.i.i44.i.i.i.i.preheader582

imp_for.body2.i.i44.i.i.i.i.preheader582:         ; preds = %middle.block175, %vector.scevcheck, %imp_for.body2.i.i44.i.i.i.i.preheader
  %.ph583 = phi i64 [ %ind.end, %middle.block175 ], [ %1, %imp_for.body2.i.i44.i.i.i.i.preheader ], [ %1, %vector.scevcheck ]
  br label %imp_for.body2.i.i44.i.i.i.i

imp_for.body2.i.i44.i.i.i.i:                      ; preds = %imp_for.body2.i.i44.i.i.i.i, %imp_for.body2.i.i44.i.i.i.i.preheader582
  %692 = phi i64 [ %694, %imp_for.body2.i.i44.i.i.i.i ], [ %.ph583, %imp_for.body2.i.i44.i.i.i.i.preheader582 ]
  %693 = getelementptr { double, double }, ptr %671, i64 %692
  store double %tmp.i49.i.i.i.i.i.i.i.i, ptr %693, align 8
  %.repack1.i.i216.i.i.i.i.i.i = getelementptr { double, double }, ptr %671, i64 %692, i32 1
  store double %tmp.i52.i.i.i.i.i.i.i.i, ptr %.repack1.i.i216.i.i.i.i.i.i, align 8
  %694 = add nuw nsw i64 %692, 1
  %exitcond282.not.i.i.i.i.i.i = icmp eq i64 %694, %.unpack171.i.i.i.i.i.i
  br i1 %exitcond282.not.i.i.i.i.i.i, label %imp_for.exit4.i.i.i.i.i.i, label %imp_for.body2.i.i44.i.i.i.i, !llvm.loop !18

imp_for.exit4.i.i.i.i.i.i:                        ; preds = %imp_for.body2.i.i44.i.i.i.i, %middle.block175, %imp_for.exit.i.i36.i.i.i.i
  %.unpack173.val188.i.i.i.i.i.i = load i64, ptr %45, align 8
  %.unpack173.val189.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  tail call fastcc void @"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.pass_all:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],Ptr[std.internal.types.complex.complex],float,bool].2372"(i64 %.unpack173.val188.i.i.i.i.i.i, ptr %.unpack173.val189.i.i.i.i.i.i, ptr nonnull %671, i8 1)
  %.unpack.i.i217.i.i.i.i.i.i = load double, ptr %671, align 8
  %.unpack2.i.i219.i.i.i.i.i.i = load double, ptr %.elt1.i.i.phi.trans.insert.i.i.i.i.i.i, align 8
  %.unpack.i193.i.i.i.i.i.i = load double, ptr %106, align 8
  %.elt1.i194.i.i.i.i.i.i = getelementptr { double, double }, ptr %105, i64 %1, i32 1
  %.unpack2.i195.i.i.i.i.i.i = load double, ptr %.elt1.i194.i.i.i.i.i.i, align 8
  %tmp.i101.i220.i.i.i.i.i.i = fmul double %.unpack.i.i217.i.i.i.i.i.i, %.unpack.i193.i.i.i.i.i.i
  %tmp.i102.i221.i.i.i.i.i.i = fmul double %.unpack2.i.i219.i.i.i.i.i.i, %.unpack2.i195.i.i.i.i.i.i
  %tmp.i103.i.i.i.i.i.i.i = fsub double %tmp.i101.i220.i.i.i.i.i.i, %tmp.i102.i221.i.i.i.i.i.i
  %tmp.i104.i.i.i.i.i.i.i = fmul double %.unpack.i.i217.i.i.i.i.i.i, %.unpack2.i195.i.i.i.i.i.i
  %tmp.i105.i.i.i.i.i.i.i = fmul double %.unpack2.i.i219.i.i.i.i.i.i, %.unpack.i193.i.i.i.i.i.i
  %tmp.i106.i.i.i.i.i.i.i = fadd double %tmp.i105.i.i.i.i.i.i.i, %tmp.i104.i.i.i.i.i.i.i
  store double %tmp.i103.i.i.i.i.i.i.i, ptr %671, align 8
  store double %tmp.i106.i.i.i.i.i.i.i, ptr %.elt1.i.i.phi.trans.insert.i.i.i.i.i.i, align 8
  %tmp.i.i.i40.i.i.i.i = add i64 %.unpack171.i.i.i.i.i.i, 1
  %.not184280.i.i.i.i.i.i = icmp sgt i64 %tmp.i.i.i40.i.i.i.i, 3
  br i1 %.not184280.i.i.i.i.i.i, label %imp_for.body6.preheader.i.i.i.i.i.i, label %imp_for.exit8.i.i.i.i.i.i

imp_for.body6.preheader.i.i.i.i.i.i:              ; preds = %imp_for.exit4.i.i.i.i.i.i
  %tmp.i196287288.i.i.i.i.i.i = lshr i64 %tmp.i.i.i40.i.i.i.i, 1
  br label %imp_for.body6.i.i.i.i.i.i

imp_for.body6.i.i.i.i.i.i:                        ; preds = %imp_for.body6.i.i.i.i.i.i, %imp_for.body6.preheader.i.i.i.i.i.i
  %695 = phi i64 [ %699, %imp_for.body6.i.i.i.i.i.i ], [ 1, %imp_for.body6.preheader.i.i.i.i.i.i ]
  %696 = getelementptr { double, double }, ptr %671, i64 %695
  %.unpack.i.i225.i.i.i.i.i.i = load double, ptr %696, align 8
  %.elt1.i.i226.i.i.i.i.i.i = getelementptr { double, double }, ptr %671, i64 %695, i32 1
  %.unpack2.i.i227.i.i.i.i.i.i = load double, ptr %.elt1.i.i226.i.i.i.i.i.i, align 8
  %697 = getelementptr { double, double }, ptr %106, i64 %695
  %.unpack.i197.i.i.i.i.i.i = load double, ptr %697, align 8
  %.elt1.i198.i.i.i.i.i.i = getelementptr { double, double }, ptr %106, i64 %695, i32 1
  %.unpack2.i199.i.i.i.i.i.i = load double, ptr %.elt1.i198.i.i.i.i.i.i, align 8
  %tmp.i101.i228.i.i.i.i.i.i = fmul double %.unpack.i.i225.i.i.i.i.i.i, %.unpack.i197.i.i.i.i.i.i
  %tmp.i102.i229.i.i.i.i.i.i = fmul double %.unpack2.i.i227.i.i.i.i.i.i, %.unpack2.i199.i.i.i.i.i.i
  %tmp.i103.i230.i.i.i.i.i.i = fsub double %tmp.i101.i228.i.i.i.i.i.i, %tmp.i102.i229.i.i.i.i.i.i
  %tmp.i104.i231.i.i.i.i.i.i = fmul double %.unpack.i.i225.i.i.i.i.i.i, %.unpack2.i199.i.i.i.i.i.i
  %tmp.i105.i232.i.i.i.i.i.i = fmul double %.unpack2.i.i227.i.i.i.i.i.i, %.unpack.i197.i.i.i.i.i.i
  %tmp.i106.i233.i.i.i.i.i.i = fadd double %tmp.i105.i232.i.i.i.i.i.i, %tmp.i104.i231.i.i.i.i.i.i
  store double %tmp.i103.i230.i.i.i.i.i.i, ptr %696, align 8
  store double %tmp.i106.i233.i.i.i.i.i.i, ptr %.elt1.i.i226.i.i.i.i.i.i, align 8
  %tmp.i200.i.i.i.i.i.i = sub i64 %.unpack171.i.i.i.i.i.i, %695
  %698 = getelementptr { double, double }, ptr %671, i64 %tmp.i200.i.i.i.i.i.i
  %.unpack.i.i237.i.i.i.i.i.i = load double, ptr %698, align 8
  %.elt1.i.i238.i.i.i.i.i.i = getelementptr { double, double }, ptr %671, i64 %tmp.i200.i.i.i.i.i.i, i32 1
  %.unpack2.i.i239.i.i.i.i.i.i = load double, ptr %.elt1.i.i238.i.i.i.i.i.i, align 8
  %tmp.i101.i240.i.i.i.i.i.i = fmul double %.unpack.i197.i.i.i.i.i.i, %.unpack.i.i237.i.i.i.i.i.i
  %tmp.i102.i241.i.i.i.i.i.i = fmul double %.unpack2.i199.i.i.i.i.i.i, %.unpack2.i.i239.i.i.i.i.i.i
  %tmp.i103.i242.i.i.i.i.i.i = fsub double %tmp.i101.i240.i.i.i.i.i.i, %tmp.i102.i241.i.i.i.i.i.i
  %tmp.i104.i243.i.i.i.i.i.i = fmul double %.unpack2.i199.i.i.i.i.i.i, %.unpack.i.i237.i.i.i.i.i.i
  %tmp.i105.i244.i.i.i.i.i.i = fmul double %.unpack.i197.i.i.i.i.i.i, %.unpack2.i.i239.i.i.i.i.i.i
  %tmp.i106.i245.i.i.i.i.i.i = fadd double %tmp.i104.i243.i.i.i.i.i.i, %tmp.i105.i244.i.i.i.i.i.i
  store double %tmp.i103.i242.i.i.i.i.i.i, ptr %698, align 8
  store double %tmp.i106.i245.i.i.i.i.i.i, ptr %.elt1.i.i238.i.i.i.i.i.i, align 8
  %699 = add nuw nsw i64 %695, 1
  %exitcond283.not.i.i.i.i.i.i = icmp eq i64 %699, %tmp.i196287288.i.i.i.i.i.i
  br i1 %exitcond283.not.i.i.i.i.i.i, label %imp_for.exit8.i.i.i.i.i.i, label %imp_for.body6.i.i.i.i.i.i

imp_for.exit8.i.i.i.i.i.i:                        ; preds = %imp_for.body6.i.i.i.i.i.i, %imp_for.exit4.i.i.i.i.i.i
  %tmp.i205.i.i.i.i.i.i = and i64 %.unpack171.i.i.i.i.i.i, 1
  %tmp.i206.not.i.i.i.i.i.i = icmp eq i64 %tmp.i205.i.i.i.i.i.i, 0
  br i1 %tmp.i206.not.i.i.i.i.i.i, label %if.true.i.i42.i.i.i.i, label %imp_for.body10.i.i.i.preheader.i.i.i

if.true.i.i42.i.i.i.i:                            ; preds = %imp_for.exit8.i.i.i.i.i.i
  %700 = getelementptr { double, double }, ptr %671, i64 %tmp.i327.i.i.i.i.i
  %.unpack.i.i249.i.i.i.i.i.i = load double, ptr %700, align 8
  %.elt1.i.i250.i.i.i.i.i.i = getelementptr { double, double }, ptr %671, i64 %tmp.i327.i.i.i.i.i, i32 1
  %.unpack2.i.i251.i.i.i.i.i.i = load double, ptr %.elt1.i.i250.i.i.i.i.i.i, align 8
  %701 = getelementptr { double, double }, ptr %106, i64 %tmp.i327.i.i.i.i.i
  %.unpack.i210.i.i.i.i.i.i = load double, ptr %701, align 8
  %.elt1.i211.i.i.i.i.i.i = getelementptr { double, double }, ptr %106, i64 %tmp.i327.i.i.i.i.i, i32 1
  %.unpack2.i212.i.i.i.i.i.i = load double, ptr %.elt1.i211.i.i.i.i.i.i, align 8
  %tmp.i101.i252.i.i.i.i.i.i = fmul double %.unpack.i.i249.i.i.i.i.i.i, %.unpack.i210.i.i.i.i.i.i
  %tmp.i102.i253.i.i.i.i.i.i = fmul double %.unpack2.i.i251.i.i.i.i.i.i, %.unpack2.i212.i.i.i.i.i.i
  %tmp.i103.i254.i.i.i.i.i.i = fsub double %tmp.i101.i252.i.i.i.i.i.i, %tmp.i102.i253.i.i.i.i.i.i
  %tmp.i104.i255.i.i.i.i.i.i = fmul double %.unpack.i.i249.i.i.i.i.i.i, %.unpack2.i212.i.i.i.i.i.i
  %tmp.i105.i256.i.i.i.i.i.i = fmul double %.unpack2.i.i251.i.i.i.i.i.i, %.unpack.i210.i.i.i.i.i.i
  %tmp.i106.i257.i.i.i.i.i.i = fadd double %tmp.i105.i256.i.i.i.i.i.i, %tmp.i104.i255.i.i.i.i.i.i
  store double %tmp.i103.i254.i.i.i.i.i.i, ptr %700, align 8
  store double %tmp.i106.i257.i.i.i.i.i.i, ptr %.elt1.i.i250.i.i.i.i.i.i, align 8
  br label %imp_for.body10.i.i.i.preheader.i.i.i

imp_for.body10.i.i.i.preheader.i.i.i:             ; preds = %if.true.i.i42.i.i.i.i, %imp_for.exit8.i.i.i.i.i.i
  %.unpack173.val.i.i.i.i.i.i = load i64, ptr %45, align 8
  %.unpack173.val187.i.i.i.i.i.i = load ptr, ptr %.elt16.i.i.i.i.i.i, align 8
  tail call fastcc void @"std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.cfftp.pass_all:0[std.numpy.fft.pocketfft.cfftp[std.internal.types.complex.complex,float],Ptr[std.internal.types.complex.complex],float,bool].2372"(i64 %.unpack173.val.i.i.i.i.i.i, ptr %.unpack173.val187.i.i.i.i.i.i, ptr nonnull %671, i8 0)
  br label %imp_for.body10.i.i.i.i.i.i

imp_for.body10.i.i.i.i.i.i:                       ; preds = %imp_for.body10.i.i.i.i.i.i, %imp_for.body10.i.i.i.preheader.i.i.i
  %702 = phi i64 [ %706, %imp_for.body10.i.i.i.i.i.i ], [ 0, %imp_for.body10.i.i.i.preheader.i.i.i ]
  %703 = getelementptr { double, double }, ptr %671, i64 %702
  %.unpack.i.i261.i.i.i.i.i.i = load double, ptr %703, align 8
  %.elt1.i.i262.i.i.i.i.i.i = getelementptr { double, double }, ptr %671, i64 %702, i32 1
  %.unpack2.i.i263.i.i.i.i.i.i = load double, ptr %.elt1.i.i262.i.i.i.i.i.i, align 8
  %704 = getelementptr { double, double }, ptr %105, i64 %702
  %.unpack.i213.i.i.i.i.i.i = load double, ptr %704, align 8
  %.elt1.i214.i.i.i.i.i.i = getelementptr { double, double }, ptr %105, i64 %702, i32 1
  %.unpack2.i215.i.i.i.i.i.i = load double, ptr %.elt1.i214.i.i.i.i.i.i, align 8
  %tmp.i101.i264.i.i.i.i.i.i = fmul double %.unpack.i.i261.i.i.i.i.i.i, %.unpack.i213.i.i.i.i.i.i
  %tmp.i102.i265.i.i.i.i.i.i = fmul double %.unpack2.i.i263.i.i.i.i.i.i, %.unpack2.i215.i.i.i.i.i.i
  %tmp.i97.i266.i.i.i.i.i.i = fadd double %tmp.i101.i264.i.i.i.i.i.i, %tmp.i102.i265.i.i.i.i.i.i
  %tmp.i98.i267.i.i.i.i.i.i = fmul double %.unpack2.i.i263.i.i.i.i.i.i, %.unpack.i213.i.i.i.i.i.i
  %tmp.i99.i268.i.i.i.i.i.i = fmul double %.unpack.i.i261.i.i.i.i.i.i, %.unpack2.i215.i.i.i.i.i.i
  %tmp.i100.i269.i.i.i.i.i.i = fsub double %tmp.i98.i267.i.i.i.i.i.i, %tmp.i99.i268.i.i.i.i.i.i
  %tmp.i48.i.i273.i.i.i.i.i.i = fmul double %tmp.i100.i269.i.i.i.i.i.i, 0.000000e+00
  %tmp.i49.i.i274.i.i.i.i.i.i = fsub double %tmp.i97.i266.i.i.i.i.i.i, %tmp.i48.i.i273.i.i.i.i.i.i
  %tmp.i50.i.i275.i.i.i.i.i.i = fmul double %tmp.i97.i266.i.i.i.i.i.i, 0.000000e+00
  %tmp.i52.i.i277.i.i.i.i.i.i = fadd double %tmp.i100.i269.i.i.i.i.i.i, %tmp.i50.i.i275.i.i.i.i.i.i
  %705 = getelementptr { double, double }, ptr %648, i64 %702
  store double %tmp.i49.i.i274.i.i.i.i.i.i, ptr %705, align 8
  %.repack1.i.i152.i.i.i.i.i = getelementptr { double, double }, ptr %648, i64 %702, i32 1
  store double %tmp.i52.i.i277.i.i.i.i.i.i, ptr %.repack1.i.i152.i.i.i.i.i, align 8
  %706 = add nuw nsw i64 %702, 1
  %exitcond284.not.i.i.i.i.i.i = icmp eq i64 %706, %1
  br i1 %exitcond284.not.i.i.i.i.i.i, label %"std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.fftblue.exec_r:0[std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float],Ptr[float],float,bool].2918.exit.i.i.i.i", label %imp_for.body10.i.i.i.i.i.i

"std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.fftblue.exec_r:0[std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float],Ptr[float],float,bool].2918.exit.i.i.i.i": ; preds = %imp_for.body10.i.i.i.i.i.i
  %707 = tail call {} @seq_free(ptr nonnull %671)
  %.unpack.i.i153.i.i.i.i.i = load double, ptr %648, align 8
  store double %.unpack.i.i153.i.i.i.i.i, ptr %10, align 8
  %708 = getelementptr { double, double }, ptr %648, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %708, i64 %tmp.i151.i.i.i.i.i, i1 false)
  %709 = tail call {} @seq_free(ptr nonnull %648)
  %.unpack5.val.i.i.i.i.i = load ptr, ptr %.elt14.i.i.i.i.i.i, align 8
  %710 = tail call {} @seq_free(ptr %.unpack5.val.i.i.i.i.i)
  br label %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i"

"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i": ; preds = %"std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.fftblue.exec_r:0[std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float],Ptr[float],float,bool].2918.exit.i.i.i.i", %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i", %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i", %156
  %alloc_hoist.cache.2.i.i = phi ptr [ %alloc_hoist.cache.1.i.i, %"std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.fftblue.exec_r:0[std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float],Ptr[float],float,bool].2918.exit.i.i.i.i" ], [ %alloc_hoist.cache.0.i.i, %156 ], [ %alloc_hoist.cache.0.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i" ], [ %alloc_hoist.cache.0.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i" ]
  %alloc_hoist.cache340.2.i.i = phi ptr [ %alloc_hoist.cache340.0.i.i, %"std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.fftblue.exec_r:0[std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float],Ptr[float],float,bool].2918.exit.i.i.i.i" ], [ %alloc_hoist.cache340.1.i.i, %156 ], [ %alloc_hoist.cache340.1.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i" ], [ %alloc_hoist.cache340.1.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i" ]
  %.elt19.i.sink.i.i.i.i = phi ptr [ %.elt167.i.i.i.i.i, %"std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.fftblue.exec_r:0[std.numpy.fft.pocketfft.fftblue[std.internal.types.complex.complex,float],Ptr[float],float,bool].2918.exit.i.i.i.i" ], [ %.elt14.i.i.i, %156 ], [ %.elt14.i.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.copy_and_norm:0[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],Ptr[float],Ptr[float],float].2887.exit.i.i.i.i.i" ], [ %.elt14.i.i.i, %"std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.rfftp.__init__:1[std.numpy.fft.pocketfft.rfftp[std.internal.types.complex.complex,float],int].1856.exit.i.i" ]
  %.unpack20.unpack.i.i.i.i.i = load ptr, ptr %.elt19.i.sink.i.i.i.i, align 8
  %711 = tail call {} @seq_free(ptr %.unpack20.unpack.i.i.i.i.i)
  %712 = load double, ptr %10, align 8
  store double %712, ptr %25, align 8
  %.repack1.i.i.i.i = getelementptr { double, double }, ptr %25, i64 0, i32 1
  store double 0.000000e+00, ptr %.repack1.i.i.i.i, align 8
  br i1 %tmp.i113.not176.i.i.i, label %while.body.i313.i.i, label %if.exit12.i.i.i

if.exit12.i.i.i:                                  ; preds = %while.body.i313.i.i, %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i"
  %.1100.lcssa.i.i.i = phi i64 [ 1, %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i" ], [ %tmp.i119.i.i.i, %while.body.i313.i.i ]
  %.1.lcssa.i.i.i = phi i64 [ 1, %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i" ], [ %tmp.i120.i.i.i, %while.body.i313.i.i ]
  %tmp.i110.not.i.i.i = icmp slt i64 %.1100.lcssa.i.i.i, %1
  br i1 %tmp.i110.not.i.i.i, label %if.true16.i.i.i, label %if.exit10.i.i

while.body.i313.i.i:                              ; preds = %while.body.i313.i.i, %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i"
  %.1178.i.i.i = phi i64 [ %tmp.i120.i.i.i, %while.body.i313.i.i ], [ 1, %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i" ]
  %.1100177.i.i.i = phi i64 [ %tmp.i119.i.i.i, %while.body.i313.i.i ], [ 1, %"std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float]:std.numpy.fft.pocketfft.pocketfft_r.exec:0[std.numpy.fft.pocketfft.pocketfft_r[std.internal.types.complex.complex,float],Ptr[float],float,bool].2927.exit.i.i.i" ]
  %713 = getelementptr double, ptr %10, i64 %.1100177.i.i.i
  %714 = load double, ptr %713, align 8
  %tmp.i115.i.i.i = add nsw i64 %.1100177.i.i.i, 1
  %715 = getelementptr double, ptr %10, i64 %tmp.i115.i.i.i
  %716 = load double, ptr %715, align 8
  %717 = getelementptr { double, double }, ptr %25, i64 %.1178.i.i.i
  store double %714, ptr %717, align 8
  %.repack1.i117.i.i.i = getelementptr { double, double }, ptr %25, i64 %.1178.i.i.i, i32 1
  store double %716, ptr %.repack1.i117.i.i.i, align 8
  %tmp.i119.i.i.i = add i64 %.1100177.i.i.i, 2
  %tmp.i120.i.i.i = add i64 %.1178.i.i.i, 1
  %tmp.i113.not.i.i.i = icmp sgt i64 %tmp.i112.i.i.i, %tmp.i119.i.i.i
  br i1 %tmp.i113.not.i.i.i, label %while.body.i313.i.i, label %if.exit12.i.i.i

if.true16.i.i.i:                                  ; preds = %if.exit12.i.i.i
  %718 = getelementptr double, ptr %10, i64 %.1100.lcssa.i.i.i
  %719 = load double, ptr %718, align 8
  %720 = getelementptr { double, double }, ptr %25, i64 %.1.lcssa.i.i.i
  store double %719, ptr %720, align 8
  %.repack1.i122.i.i.i = getelementptr { double, double }, ptr %25, i64 %.1.lcssa.i.i.i, i32 1
  store double 0.000000e+00, ptr %.repack1.i122.i.i.i, align 8
  br label %if.exit10.i.i

if.exit10.i.i:                                    ; preds = %if.true16.i.i.i, %if.exit12.i.i.i
  %.sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i396.i.i = load i2, ptr %.sroa.18.i.i, align 8, !alias.scope !19
  %switch.i397.i.i = icmp eq i2 %.sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.i.0..sroa.18.i.0..sroa.18.i.0..sroa.18.0..sroa.18.0..sroa.18.40.index.i396.i.i, 0
  br i1 %switch.i397.i.i, label %"std.numpy.util.multirange:0[Tuple[int]].1292.resume.exit411.i.i", label %yield.new2.i398.i.i

yield.new2.i398.i.i:                              ; preds = %if.exit10.i.i
  %721 = add nuw nsw i64 %.sroa.6.1.i.i, 1
  %exitcond.not.i403.i.i = icmp eq i64 %721, %.elt.i.i.i.i
  br i1 %exitcond.not.i403.i.i, label %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i", label %"std.numpy.util.multirange:0[Tuple[int]].1292.resume.exit411.i.i"

"std.numpy.util.multirange:0[Tuple[int]].1292.resume.exit411.i.i": ; preds = %yield.new2.i398.i.i, %if.exit10.i.i
  %722 = phi i64 [ %721, %yield.new2.i398.i.i ], [ 0, %if.exit10.i.i ]
  store i2 1, ptr %.sroa.18.i.i, align 8, !alias.scope !19
  br label %for.body.i.i

"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i": ; preds = %yield.new2.i398.i.i, %if.exit.i
  %.fca.1.insert.i.i.i = insertvalue { i64, i64 } %5, i64 %tmp.i.i.i, 1
  %723 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } undef, { i64, i64 } %.fca.1.insert.i.i.i, 0
  %.fca.0.insert.i.i.i.i.i33 = insertvalue { i64, i64 } poison, i64 %tmp.i.1.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i34 = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.i.i33, i64 16, 1
  %724 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %723, { i64, i64 } %.fca.1.insert.i.i.i.i.i34, 1
  %.fr.i = freeze { { i64, i64 }, { i64, i64 }, ptr } %724
  %725 = tail call {} @seq_free(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %.sroa.18.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %726 = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %.fr.i, 0
  %.fca.0.extract38.i.i242.i.i.i.i.i = extractvalue { i64, i64 } %726, 0
  %.fca.1.extract40.i.i243.i.i.i.i.i = extractvalue { i64, i64 } %726, 1
  %727 = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %.fr.i, 1
  %.fca.0.extract.i.i244.i.i.i.i.i = extractvalue { i64, i64 } %727, 0
  %.fca.1.extract.i.i245.i.i.i.i.i = extractvalue { i64, i64 } %727, 1
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i, label %if.true1.i.i267.i.i.i.i.i [
    i64 0, label %while.body.i.preheader.i.i.i.i.i.i
    i64 1, label %if.exit3.i.i246.i.i.i.i.i
  ]

while.body.i.preheader.i.i.i.i.i.i:               ; preds = %if.exit13.i32.i279.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.thread.i.i.i.i", %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.i.i.i.i", %if.exit3.i.i246.i.i.i.i.i, %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i"
  %.sroa.7208.0.i.i.i.i.i = phi ptr [ @.str.137, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.i.i.i.i" ], [ @.str.137, %if.exit3.i.i246.i.i.i.i.i ], [ @.str.137, %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i" ], [ @.str.138, %if.exit13.i32.i279.i.i.i.i.i ], [ @.str.137, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.thread.i.i.i.i" ]
  %.not.i241.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.i.i.i.i.i)
  %.not.i241.c.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.c.i.i.i.i.i)
  %728 = load i8, ptr %.sroa.7208.0.i.i.i.i.i, align 1
  switch i8 %728, label %"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i.i" [
    i8 70, label %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i.i"
    i8 67, label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i.i"
  ]

"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i.i": ; preds = %while.body.i.preheader.i.i.i.i.i.i
  br label %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i.i"

"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i.i
  %common.ret.op.i4564.i.i.i.i.i.i = phi i8 [ 1, %while.body.i.preheader.i.i.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i.i" ]
  br label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i.i"

"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i.i
  %common.ret.op.i4563.i.i.i.i.i.i = phi i8 [ %common.ret.op.i4564.i.i.i.i.i.i, %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i.i" ], [ 0, %while.body.i.preheader.i.i.i.i.i.i ]
  %729 = phi i8 [ %common.ret.op.i4564.i.i.i.i.i.i, %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i.i" ], [ 1, %while.body.i.preheader.i.i.i.i.i.i ]
  %.not41.i.i.i.i.i.i = icmp eq i8 %729, 1
  tail call void @llvm.assume(i1 %.not41.i.i.i.i.i.i)
  %tmp.i.1.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  %730 = mul i64 %tmp.i.1.i.i.i.i.i.i.i, %.fca.1.extract40.i.i243.i.i.i.i.i
  %731 = tail call ptr @seq_alloc_atomic(i64 %730)
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i4563.i.i.i.i.i.i, 0
  %tmp.i31.us.i.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  %.sroa.4.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 8, i64 %tmp.i.1.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 %tmp.i31.us.i.i.i.i.i.i.i.i, i64 8
  br label %if.exit.i.i.i.i.i.i30.i

if.true1.i.i267.i.i.i.i.i:                        ; preds = %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i"
  %tmp.i106.not.i.i268.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i, 16
  %spec.select.i.i269.i.i.i.i.i = zext i1 %tmp.i106.not.i.i268.i.i.i.i.i to i8
  %tmp.i108.i.i270.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 4
  br label %if.exit3.i.i246.i.i.i.i.i

if.exit3.i.i246.i.i.i.i.i:                        ; preds = %if.true1.i.i267.i.i.i.i.i, %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i"
  %.194.i.i247.i.i.i.i.i = phi i64 [ %tmp.i108.i.i270.i.i.i.i.i, %if.true1.i.i267.i.i.i.i.i ], [ 16, %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i" ]
  %.1.i.i248.i.i.i.i.i = phi i8 [ %spec.select.i.i269.i.i.i.i.i, %if.true1.i.i267.i.i.i.i.i ], [ 1, %"std.numpy.fft.__init__.rfft:0[std.numpy.ndarray.ndarray[float,2],Optional[int],int,Optional[str],Optional[NoneType]].2938.exit.i" ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.i.i.i.i" [
    i64 0, label %while.body.i.preheader.i.i.i.i.i.i
    i64 1, label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.thread.i.i.i.i"
  ]

"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.i.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i.i
  %tmp.i106.not.1.i.i262.i.i.i.i.i = icmp ne i64 %.fca.0.extract.i.i244.i.i.i.i.i, %.194.i.i247.i.i.i.i.i
  %.not.i.i258.not.i28.i.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i.i, 0
  %.not.i.i258.not.i.i.i.i.i = or i1 %tmp.i106.not.1.i.i262.i.i.i.i.i, %.not.i.i258.not.i28.i.i.i.i
  br i1 %.not.i.i258.not.i.i.i.i.i, label %if.true11.i.i291.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.thread.i.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i.i
  %.not.i.i258.not.i26.i.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i.i, 0
  br i1 %.not.i.i258.not.i26.i.i.i.i, label %if.exit13.i32.i279.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i

if.true11.i.i291.i.i.i.i.i:                       ; preds = %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.i.i.i.i"
  %tmp.i111.not.i45.i294.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i, 16
  br i1 %tmp.i111.not.i45.i294.i.i.i.i.i, label %if.exit16.i46.i295.i.i.i.i.i, label %if.false11.i.i.i.i.i

if.exit13.i32.i279.i.i.i.i.i:                     ; preds = %if.exit16.i46.i295.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.thread.i.i.i.i"
  %.196.i34.i281.i.i.i.i.i = phi i64 [ %tmp.i113.i47.i296.i.i.i.i.i, %if.exit16.i46.i295.i.i.i.i.i ], [ 16, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2985.exit271.i.thread.i.i.i.i" ]
  %tmp.i109.not.1.i35.i282.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %tmp.i111.not.1.i36.i283.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i, %.196.i34.i281.i.i.i.i.i
  %or.cond.i37.i284.i.i.i.i.i = or i1 %tmp.i109.not.1.i35.i282.i.i.i.i.i, %tmp.i111.not.1.i36.i283.i.i.i.i.i
  br i1 %or.cond.i37.i284.i.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i.i, label %if.false11.i.i.i.i.i

if.exit16.i46.i295.i.i.i.i.i:                     ; preds = %if.true11.i.i291.i.i.i.i.i
  %tmp.i113.i47.i296.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 4
  br label %if.exit13.i32.i279.i.i.i.i.i

if.false11.i.i.i.i.i:                             ; preds = %if.exit13.i32.i279.i.i.i.i.i, %if.true11.i.i291.i.i.i.i.i
  %.fca.1.gep.i.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %732 = tail call i64 @llvm.abs.i64(i64 %.fca.0.extract.i.i244.i.i.i.i.i, i1 false)
  %733 = tail call i64 @llvm.abs.i64(i64 %.fca.1.extract.i.i245.i.i.i.i.i, i1 false)
  %tmp.i72.not.i.not.i.i.i.i.i = icmp sge i64 %732, %733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %spec.select.i.i.i.i38.i = zext i1 %tmp.i72.not.i.not.i.i.i.i.i to i64
  %not.tmp.i72.not.i.not.i.i.i.i.i = xor i1 %tmp.i72.not.i.not.i.i.i.i.i, true
  %spec.select352.i.i.i.i.i = zext i1 %not.tmp.i72.not.i.not.i.i.i.i.i to i64
  %t.fca.1.gep.i.i.i.i310.i.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %x.i.i.i.i304.i.i.i.i.i, i64 0, i32 1
  %734 = getelementptr i64, ptr %3, i64 %spec.select.i.i.i.i38.i
  store i64 8, ptr %734, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i.i)
  store i64 %.fca.0.extract38.i.i242.i.i.i.i.i, ptr %x.i.i.i.i304.i.i.i.i.i, align 8
  store i64 %.fca.1.extract40.i.i243.i.i.i.i.i, ptr %t.fca.1.gep.i.i.i.i310.i.i.i.i.i, align 8
  %p.i.i.i.i311.i.i.i.i.i = getelementptr i64, ptr %x.i.i.i.i304.i.i.i.i.i, i64 %spec.select.i.i.i.i38.i
  %v.i.i.i.i312.i.i.i.i.i = load i64, ptr %p.i.i.i.i311.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i.i)
  %tmp.i.i.i.i.i39.i = shl i64 %v.i.i.i.i312.i.i.i.i.i, 3
  %735 = getelementptr i64, ptr %3, i64 %spec.select352.i.i.i.i.i
  store i64 %tmp.i.i.i.i.i39.i, ptr %735, align 8
  %tmp.i.1.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  %736 = mul i64 %tmp.i.1.i.i.i.i.i.i, %.fca.1.extract40.i.i243.i.i.i.i.i
  %737 = tail call ptr @seq_alloc_atomic(i64 %736)
  %.fca.0.load.i.i.i.i.i = load i64, ptr %3, align 8
  %.fca.1.load.i.i.i.i.i = load i64, ptr %.fca.1.gep.i.i.i.i.i, align 8
  br label %if.exit.i.i.i.i.i.i30.i

if.exit.i.i.i.i.i.i30.i:                          ; preds = %if.false11.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i.i"
  %.sroa.0.0.i.i.i.pn.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i.i" ], [ %.fca.0.load.i.i.i.i.i, %if.false11.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.pn.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i.i" ], [ %.fca.1.load.i.i.i.i.i, %if.false11.i.i.i.i.i ]
  %.pn333.i.i.i.i.i = phi ptr [ %731, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i.i" ], [ %737, %if.false11.i.i.i.i.i ]
  %.fca.0.insert.i.i.i.pn.i.i.i.i.i = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i.i.pn.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.pn.i.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.pn.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.pn.i.i.i.i.i, 1
  %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i = freeze { i64, i64 } %.fca.1.insert.i.i.i.pn.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  %tmp.i.1.i.i.i.i.i.i.i.i = mul i64 %.fca.1.extract40.i.i243.i.i.i.i.i, %.fca.0.extract38.i.i242.i.i.i.i.i
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i, label %if.true1.i.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i.i"
    i64 1, label %if.exit3.i.i.i.i.i.i.i.i
  ]

if.true1.i.i.i.i.i.i.i.i:                         ; preds = %if.exit.i.i.i.i.i.i30.i
  %tmp.i106.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i, 16
  %spec.select.i.i.i.i.i.i.i37.i = zext i1 %tmp.i106.not.i.i.i.i.i.i.i.i to i8
  %tmp.i108.i.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 4
  br label %if.exit3.i.i.i.i.i.i.i.i

if.exit3.i.i.i.i.i.i.i.i:                         ; preds = %if.true1.i.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i30.i
  %.194.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i108.i.i.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i.i.i ], [ 16, %if.exit.i.i.i.i.i.i30.i ]
  %.1.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i37.i, %if.true1.i.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i30.i ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i, label %if.true11.i.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i.i"
    i64 1, label %if.exit13.i.i.i.i.i.i.i.i
  ]

if.true11.i.i.i.i.i.i.i.i:                        ; preds = %if.exit3.i.i.i.i.i.i.i.i
  %tmp.i106.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i, %.194.i.i.i.i.i.i.i.i
  %spec.select.1.i.i.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i.i.i.i.i.i.i.i, i8 %.1.i.i.i.i.i.i.i.i, i8 0
  %tmp.i111.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i.i, 16
  br i1 %tmp.i111.not.i.i.i.i.i.i.i.i, label %if.exit16.i.i.i.i.i.i.i.i, label %if.true14.i.i.i.i.i.i.i.i

if.exit13.i.i.i.i.i.i.i.i:                        ; preds = %if.exit16.i.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i
  %.1.1127.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i ]
  %.196.i.i.i.i.i.i.i.i = phi i64 [ %tmp.i113.i.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i.i ], [ 16, %if.exit3.i.i.i.i.i.i.i.i ]
  %tmp.i109.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %tmp.i111.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i.i, %.196.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %tmp.i109.not.1.i.i.i.i.i.i.i.i, %tmp.i111.not.1.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2955.exit.i.i.i.i.i.i.i", label %if.true14.i.i.i.i.i.i.i.i

if.true14.i.i.i.i.i.i.i.i:                        ; preds = %if.exit13.i.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i.i
  %.1.1126.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i ]
  br label %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2955.exit.i.i.i.i.i.i.i"

if.exit16.i.i.i.i.i.i.i.i:                        ; preds = %if.true11.i.i.i.i.i.i.i.i
  %tmp.i113.i.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 4
  br label %if.exit13.i.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2955.exit.i.i.i.i.i.i.i": ; preds = %if.true14.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i
  %.1.1127.i.i.pn.i.i.i.i.i.i = phi i8 [ %.1.1126.i.i.i.i.i.i.i.i, %if.true14.i.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i.i ]
  %.pn205.i.i.i.i.i.i = phi i8 [ 0, %if.true14.i.i.i.i.i.i.i.i ], [ 1, %if.exit13.i.i.i.i.i.i.i.i ]
  %.fca.1.extract.i107.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  %cond.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %tmp.i106.not.i128.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i.i, 8
  %narrow.i.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i.i, %tmp.i106.not.i128.i.i.i.i.i.i.i
  %.1.i110.i.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i.i.i to i8
  %cond.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 1
  br i1 %cond.i.i.i.i.i.i, label %if.exit13.i111.i.i.i.i.i.i.i, label %if.true11.i121.i.i.i.i.i.i.i

if.true11.i121.i.i.i.i.i.i.i:                     ; preds = %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2955.exit.i.i.i.i.i.i.i"
  %tmp.i108.i130.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  %.fca.0.extract.i106.i.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %tmp.i106.not.1.i122.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i.i, %tmp.i108.i130.i.i.i.i.i.i.i
  %spec.select.1.i123.i.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i122.i.i.i.i.i.i.i, i8 %.1.i110.i.i.i.i.i.i.i, i8 0
  %tmp.i111.not.i124.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i.i, 8
  br i1 %tmp.i111.not.i124.i.i.i.i.i.i.i, label %if.exit16.i125.i.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i.i

if.exit13.i111.i.i.i.i.i.i.i:                     ; preds = %if.exit16.i125.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2955.exit.i.i.i.i.i.i.i"
  %.1.1127.i112.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i.i ], [ %.1.i110.i.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2955.exit.i.i.i.i.i.i.i" ]
  %.196.i113.i.i.i.i.i.i.i = phi i64 [ %tmp.i113.i126.i.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i.i ], [ 8, %"std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[std.internal.types.complex.complex,2]].2955.exit.i.i.i.i.i.i.i" ]
  %tmp.i111.not.1.i115.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i.i, %.196.i113.i.i.i.i.i.i.i
  %or.cond.i116.i.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i.i, %tmp.i111.not.1.i115.i.i.i.i.i.i.i
  br i1 %or.cond.i116.i.i.i.i.i.i.i, label %if.exit13.1.i120.i.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i.i

if.exit13.1.i120.i.i.i.i.i.i.i:                   ; preds = %if.exit13.i111.i.i.i.i.i.i.i
  %738 = insertvalue { i8, i8 } undef, i8 %.1.1127.i112.i.i.i.i.i.i.i, 0
  %739 = insertvalue { i8, i8 } %738, i8 1, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i.i"

if.true14.i117.i.i.i.i.i.i.i:                     ; preds = %if.exit13.i111.i.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i.i
  %.1.1126.i118.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i.i ], [ %.1.1127.i112.i.i.i.i.i.i.i, %if.exit13.i111.i.i.i.i.i.i.i ]
  %740 = insertvalue { i8, i8 } undef, i8 %.1.1126.i118.i.i.i.i.i.i.i, 0
  %741 = insertvalue { i8, i8 } %740, i8 0, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i.i"

if.exit16.i125.i.i.i.i.i.i.i:                     ; preds = %if.true11.i121.i.i.i.i.i.i.i
  %tmp.i113.i126.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  br label %if.exit13.i111.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i.i": ; preds = %if.true14.i117.i.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i30.i
  %.fca.0.extract21136.i.i.i.i.i.i.i = phi i8 [ %.1.1127.i.i.pn.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i ], [ %.1.1127.i.i.pn.i.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i30.i ], [ 1, %if.exit3.i.i.i.i.i.i.i.i ]
  %common.ret.op.i135.i.i.i.i.i.i.i = phi i8 [ %.pn205.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i.i ], [ %.pn205.i.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i30.i ], [ 1, %if.exit3.i.i.i.i.i.i.i.i ]
  %common.ret.op.i119.i.i.i.i.i.i.i = phi { i8, i8 } [ %739, %if.exit13.1.i120.i.i.i.i.i.i.i ], [ %741, %if.true14.i117.i.i.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit.i.i.i.i.i.i30.i ], [ { i8 1, i8 1 }, %if.exit3.i.i.i.i.i.i.i.i ]
  %.fca.0.extract.i.i.i.i.i.i31.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i.i, 0
  %.not102.i.i.i.i.i.i.i = icmp eq i8 %.fca.0.extract21136.i.i.i.i.i.i.i, 0
  %742 = and i8 %.fca.0.extract.i.i.i.i.i.i31.i, 1
  %743 = icmp eq i8 %742, 0
  %.not210.i.i.i.i.i.i = select i1 %.not102.i.i.i.i.i.i.i, i1 true, i1 %743
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i.i, 1
  %.not103.i.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i135.i.i.i.i.i.i.i, 0
  %744 = and i8 %.fca.1.extract.i.i.i.i.i.i.i, 1
  %.not207208.i.i.i.i.i.i = icmp eq i8 %744, 0
  %.not207.i.i.i.i.i.i = select i1 %.not103.i.i.i.i.i.i.i, i1 true, i1 %.not207208.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = select i1 %.not210.i.i.i.i.i.i, i1 %.not207.i.i.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i.i.i, label %if.false2.i.i.i.i.i36.i, label %imp_for.cond.preheader.i.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i.i:               ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i.i"
  %.not177211.i.i.i.i.i.i = icmp sgt i64 %tmp.i.1.i.i.i.i.i.i.i.i, 0
  br i1 %.not177211.i.i.i.i.i.i, label %imp_for.body.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit"

if.false2.i.i.i.i.i36.i:                          ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i.i"
  %.not27.i.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 0
  %.not2526.i.i.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i = and i1 %.not27.i.i.i.i.i.i.i, %.not2526.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit"

for.body.lr.ph.i.i.i.i.i.i:                       ; preds = %if.false2.i.i.i.i.i36.i
  %tmp.i.not.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 1
  %tmp.i.not.1.i.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %.fca.1.extract.i.i186.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  %.fca.0.extract.i.i188.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %.unpack.i178.us.i.i.peel.i.i.i.i = load double, ptr %8, align 8
  %.elt1.i179.us.i.i.peel.i.i.i.i = getelementptr { double, double }, ptr %8, i64 0, i32 1
  %.unpack2.i180.us.i.i.peel.i.i.i.i = load double, ptr %.elt1.i179.us.i.i.peel.i.i.i.i, align 8
  %745 = tail call double @hypot(double %.unpack.i178.us.i.i.peel.i.i.i.i, double %.unpack2.i180.us.i.i.peel.i.i.i.i)
  store double %745, ptr %.pn333.i.i.i.i.i, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i.i, label %yield.new6.us.i272.i.i.peel.i.i.i.i, label %for.body.lr.ph.split.i.i.i.i.i.i

yield.new6.us.i272.i.i.peel.i.i.i.i:              ; preds = %for.body.lr.ph.i.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i.thread", label %yield.new6.us.i272.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i.thread": ; preds = %yield.new6.us.i272.i.i.peel.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %.fca.0.extract.i.i244.i.i.i.i484 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %.fca.1.extract.i.i245.i.i.i.i485 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  br label %while.body.i.preheader.i.i.i.i.i

yield.new6.us.i272.i.i.i.i.i.i:                   ; preds = %yield.new6.us.i272.i.i.i.i.i.i, %yield.new6.us.i272.i.i.peel.i.i.i.i
  %.sink20.i.i.i = phi i64 [ %749, %yield.new6.us.i272.i.i.i.i.i.i ], [ 1, %yield.new6.us.i272.i.i.peel.i.i.i.i ]
  %tmp.i63.1.i.i.us.i.i.i.i.i.i = mul i64 %.sink20.i.i.i, %.fca.1.extract.i.i245.i.i.i.i.i
  %746 = getelementptr i8, ptr %8, i64 %tmp.i63.1.i.i.us.i.i.i.i.i.i
  %tmp.i63.1.i.i192.us.i.i.i.i.i.i = mul i64 %.sink20.i.i.i, %.fca.1.extract.i.i186.i.i.i.i.i.i
  %747 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %tmp.i63.1.i.i192.us.i.i.i.i.i.i
  %.unpack.i178.us.i.i.i.i.i.i = load double, ptr %746, align 8
  %.elt1.i179.us.i.i.i.i.i.i = getelementptr { double, double }, ptr %746, i64 0, i32 1
  %.unpack2.i180.us.i.i.i.i.i.i = load double, ptr %.elt1.i179.us.i.i.i.i.i.i, align 8
  %748 = tail call double @hypot(double %.unpack.i178.us.i.i.i.i.i.i, double %.unpack2.i180.us.i.i.i.i.i.i)
  store double %748, ptr %747, align 8
  %749 = add nuw nsw i64 %.sink20.i.i.i, 1
  %exitcond.not.i277.i.i.i.i.i.i = icmp eq i64 %749, %.fca.1.extract40.i.i243.i.i.i.i.i
  br i1 %exitcond.not.i277.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit", label %yield.new6.us.i272.i.i.i.i.i.i

for.body.lr.ph.split.i.i.i.i.i.i:                 ; preds = %for.body.lr.ph.i.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i, label %yield.new6.us.i400.i.i.i.i.i.i.outer

imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i: ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i, %for.body.lr.ph.split.i.i.i.i.i.i
  %.sink22.i.i.i = phi i64 [ %753, %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i ], [ 1, %for.body.lr.ph.split.i.i.i.i.i.i ]
  %tmp.i63.i.i.us215.i.i.i.i.i.i = mul i64 %.sink22.i.i.i, %.fca.0.extract.i.i244.i.i.i.i.i
  %750 = getelementptr i8, ptr %8, i64 %tmp.i63.i.i.us215.i.i.i.i.i.i
  %tmp.i63.i.i189.us219.i.i.i.i.i.i = mul i64 %.sink22.i.i.i, %.fca.0.extract.i.i188.i.i.i.i.i.i
  %751 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %tmp.i63.i.i189.us219.i.i.i.i.i.i
  %.unpack.i178.us224.i.i.i.i.i.i = load double, ptr %750, align 8
  %.elt1.i179.us225.i.i.i.i.i.i = getelementptr { double, double }, ptr %750, i64 0, i32 1
  %.unpack2.i180.us226.i.i.i.i.i.i = load double, ptr %.elt1.i179.us225.i.i.i.i.i.i, align 8
  %752 = tail call double @hypot(double %.unpack.i178.us224.i.i.i.i.i.i, double %.unpack2.i180.us226.i.i.i.i.i.i)
  store double %752, ptr %751, align 8
  %753 = add nuw nsw i64 %.sink22.i.i.i, 1
  %exitcond29.not.i319.i.i.i.i.i.i = icmp eq i64 %753, %.fca.0.extract38.i.i242.i.i.i.i.i
  br i1 %exitcond29.not.i319.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit", label %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i

imp_for.body.i.i.i.i.i.i:                         ; preds = %imp_for.body.i.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i
  %754 = phi i64 [ %758, %imp_for.body.i.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %755 = getelementptr { double, double }, ptr %8, i64 %754
  %.unpack.i.i.i.i.i.i33.i = load double, ptr %755, align 8
  %.elt1.i.i.i.i.i.i34.i = getelementptr { double, double }, ptr %8, i64 %754, i32 1
  %.unpack2.i.i.i.i.i.i35.i = load double, ptr %.elt1.i.i.i.i.i.i34.i, align 8
  %756 = tail call double @hypot(double %.unpack.i.i.i.i.i.i33.i, double %.unpack2.i.i.i.i.i.i35.i)
  %757 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %754
  store double %756, ptr %757, align 8
  %758 = add nuw nsw i64 %754, 1
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %758, %tmp.i.1.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit", label %imp_for.body.i.i.i.i.i.i

yield.new6.us.i400.i.i.i.i.i.i:                   ; preds = %yield.new6.us.i400.i.i.i.i.i.i.outer, %yield.new6.us.i400.i.i.i.i.i.i
  %.sink25.i.i.i = phi i64 [ %762, %yield.new6.us.i400.i.i.i.i.i.i ], [ %.sink25.i.i.i.ph, %yield.new6.us.i400.i.i.i.i.i.i.outer ]
  %tmp.i63.1.i.i.i.i.i.i.i.i = mul i64 %.sink25.i.i.i, %.fca.1.extract.i.i245.i.i.i.i.i
  %.1.1.i.i.i.i.i.i.i.i = add i64 %tmp.i63.1.i.i.i.i.i.i.i.i, %tmp.i63.i.i.i.i.i.i.i.i
  %759 = getelementptr i8, ptr %8, i64 %.1.1.i.i.i.i.i.i.i.i
  %tmp.i63.1.i.i192.i.i.i.i.i.i = mul i64 %.sink25.i.i.i, %.fca.1.extract.i.i186.i.i.i.i.i.i
  %.1.1.i.i194.i.i.i.i.i.i = add i64 %tmp.i63.1.i.i192.i.i.i.i.i.i, %tmp.i63.i.i189.i.i.i.i.i.i
  %760 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %.1.1.i.i194.i.i.i.i.i.i
  %.unpack.i178.i.i.i.i.i.i = load double, ptr %759, align 8
  %.elt1.i179.i.i.i.i.i.i = getelementptr { double, double }, ptr %759, i64 0, i32 1
  %.unpack2.i180.i.i.i.i.i.i = load double, ptr %.elt1.i179.i.i.i.i.i.i, align 8
  %761 = tail call double @hypot(double %.unpack.i178.i.i.i.i.i.i, double %.unpack2.i180.i.i.i.i.i.i)
  store double %761, ptr %760, align 8
  %762 = add nuw nsw i64 %.sink25.i.i.i, 1
  %exitcond.not.i405.i.i.i.i.i.i = icmp eq i64 %762, %.fca.1.extract40.i.i243.i.i.i.i.i
  br i1 %exitcond.not.i405.i.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i, label %yield.new6.us.i400.i.i.i.i.i.i

imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i: ; preds = %yield.new6.us.i400.i.i.i.i.i.i
  %763 = add nuw nsw i64 %.sink24.i.i.i.ph, 1
  %exitcond29.not.i415.i.i.i.i.i.i = icmp eq i64 %763, %.fca.0.extract38.i.i242.i.i.i.i.i
  br i1 %exitcond29.not.i415.i.i.i.i.i.i, label %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit", label %yield.new6.us.i400.i.i.i.i.i.i.outer

yield.new6.us.i400.i.i.i.i.i.i.outer:             ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i, %for.body.lr.ph.split.i.i.i.i.i.i
  %.sink25.i.i.i.ph = phi i64 [ 0, %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i ], [ 1, %for.body.lr.ph.split.i.i.i.i.i.i ]
  %.sink24.i.i.i.ph = phi i64 [ %763, %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i ], [ 0, %for.body.lr.ph.split.i.i.i.i.i.i ]
  %tmp.i63.i.i.i.i.i.i.i.i = mul i64 %.sink24.i.i.i.ph, %.fca.0.extract.i.i244.i.i.i.i.i
  %tmp.i63.i.i189.i.i.i.i.i.i = mul i64 %.sink24.i.i.i.ph, %.fca.0.extract.i.i188.i.i.i.i.i.i
  br label %yield.new6.us.i400.i.i.i.i.i.i

"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i412.i.i.i.i.i.i, %imp_for.body.i.i.i.i.i.i, %imp_for.cond2.imp_for.exit5_crit_edge.us.i316.i.i.i.i.i.i, %yield.new6.us.i272.i.i.i.i.i.i, %if.false2.i.i.i.i.i36.i, %imp_for.cond.preheader.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %.fca.0.extract.i.i244.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 0
  %.fca.1.extract.i.i245.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i.i, 1
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i, label %if.true1.i.i267.i.i.i.i [
    i64 0, label %while.body.i.preheader.i.i.i.i.i
    i64 1, label %if.exit3.i.i246.i.i.i.i
  ]

while.body.i.preheader.i.i.i.i.i:                 ; preds = %if.exit13.i32.i279.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i", %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.i.i.i", %if.exit3.i.i246.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit", %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i.thread"
  %.fca.1.extract.i.i245.i.i.i.i494 = phi i64 [ %.fca.1.extract.i.i245.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.i.i.i" ], [ %.fca.1.extract.i.i245.i.i.i.i, %if.exit3.i.i246.i.i.i.i ], [ %.fca.1.extract.i.i245.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit" ], [ %.fca.1.extract.i.i245.i.i.i.i, %if.exit13.i32.i279.i.i.i.i ], [ %.fca.1.extract.i.i245.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i" ], [ %.fca.1.extract.i.i245.i.i.i.i485, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i.thread" ]
  %.fca.0.extract.i.i244.i.i.i.i488 = phi i64 [ %.fca.0.extract.i.i244.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.i.i.i" ], [ %.fca.0.extract.i.i244.i.i.i.i, %if.exit3.i.i246.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit" ], [ %.fca.0.extract.i.i244.i.i.i.i486504, %if.exit13.i32.i279.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i" ], [ %.fca.0.extract.i.i244.i.i.i.i484, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i.thread" ]
  %.sroa.7208.0.i.i.i.i = phi ptr [ @.str.137, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.i.i.i" ], [ @.str.137, %if.exit3.i.i246.i.i.i.i ], [ @.str.137, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit" ], [ @.str.138, %if.exit13.i32.i279.i.i.i.i ], [ @.str.137, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i" ], [ @.str.137, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i.thread" ]
  %.not.i241.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.i.i.i.i)
  %.not.i241.c.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %.not.i241.c.i.i.i.i)
  %764 = load i8, ptr %.sroa.7208.0.i.i.i.i, align 1
  switch i8 %764, label %"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i" [
    i8 70, label %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i"
    i8 67, label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i"
  ]

"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i": ; preds = %while.body.i.preheader.i.i.i.i.i
  br label %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i"

"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i
  %common.ret.op.i4564.i.i.i.i.i = phi i8 [ 1, %while.body.i.preheader.i.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1152.exit57.thread.fold.split.i.i.i.i.i" ]
  br label %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i"

"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i": ; preds = %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i", %while.body.i.preheader.i.i.i.i.i
  %common.ret.op.i4563.i.i.i.i.i = phi i8 [ %common.ret.op.i4564.i.i.i.i.i, %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i" ], [ 0, %while.body.i.preheader.i.i.i.i.i ]
  %765 = phi i8 [ %common.ret.op.i4564.i.i.i.i.i, %"str:str.__eq__:0[str,str].1152.exit57.thread.i.i.i.i.i" ], [ 1, %while.body.i.preheader.i.i.i.i.i ]
  %.not41.i.i.i.i.i = icmp eq i8 %765, 1
  tail call void @llvm.assume(i1 %.not41.i.i.i.i.i)
  %tmp.i.1.i.i.i.i.i.i37 = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  %766 = mul i64 %tmp.i.1.i.i.i.i.i.i37, %.fca.1.extract40.i.i243.i.i.i.i.i
  %767 = tail call ptr @seq_alloc_atomic(i64 %766)
  %.not.i.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i4563.i.i.i.i.i, 0
  %tmp.i31.us.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  %.sroa.4.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 %tmp.i.1.i.i.i.i.i.i37
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %tmp.i31.us.i.i.i.i.i.i.i, i64 8
  br label %if.exit.i.i.i.i.i.i

if.true1.i.i267.i.i.i.i:                          ; preds = %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit"
  %tmp.i106.not.i.i268.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i, 8
  %spec.select.i.i269.i.i.i.i = zext i1 %tmp.i106.not.i.i268.i.i.i.i to i8
  %tmp.i108.i.i270.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  br label %if.exit3.i.i246.i.i.i.i

if.exit3.i.i246.i.i.i.i:                          ; preds = %if.true1.i.i267.i.i.i.i, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit"
  %.194.i.i247.i.i.i.i = phi i64 [ %tmp.i108.i.i270.i.i.i.i, %if.true1.i.i267.i.i.i.i ], [ 8, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit" ]
  %.1.i.i248.i.i.i.i = phi i8 [ %spec.select.i.i269.i.i.i.i, %if.true1.i.i267.i.i.i.i ], [ 1, %"fft_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3069.exit" ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.i.i.i" [
    i64 0, label %while.body.i.preheader.i.i.i.i.i
    i64 1, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i"
  ]

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i
  %tmp.i106.not.1.i.i262.i.i.i.i = icmp ne i64 %.fca.0.extract.i.i244.i.i.i.i, %.194.i.i247.i.i.i.i
  %.not.i.i258.not.i29.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i, 0
  %.not.i.i258.not.i.i.i.i = or i1 %tmp.i106.not.1.i.i262.i.i.i.i, %.not.i.i258.not.i29.i.i.i
  br i1 %.not.i.i258.not.i.i.i.i, label %if.true11.i.i291.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i": ; preds = %if.exit3.i.i246.i.i.i.i
  %.not.i.i258.not.i26.i.i.i = icmp eq i8 %.1.i.i248.i.i.i.i, 0
  br i1 %.not.i.i258.not.i26.i.i.i, label %if.exit13.i32.i279.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i

if.true11.i.i291.i.i.i.i:                         ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.i.i.i"
  %tmp.i111.not.i45.i294.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i, 8
  br i1 %tmp.i111.not.i45.i294.i.i.i.i, label %if.exit16.i46.i295.i.i.i.i, label %if.false11.i.i.i.i

if.exit13.i32.i279.i.i.i.i:                       ; preds = %if.exit16.i46.i295.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i"
  %.fca.0.extract.i.i244.i.i.i.i486504 = phi i64 [ 8, %if.exit16.i46.i295.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i" ]
  %.196.i34.i281.i.i.i.i = phi i64 [ %tmp.i113.i47.i296.i.i.i.i, %if.exit16.i46.i295.i.i.i.i ], [ 8, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.flags:0[std.numpy.ndarray.ndarray[float,2]].3076.exit271.i.thread.i.i.i" ]
  %tmp.i109.not.1.i35.i282.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %tmp.i111.not.1.i36.i283.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i, %.196.i34.i281.i.i.i.i
  %or.cond.i37.i284.i.i.i.i = or i1 %tmp.i109.not.1.i35.i282.i.i.i.i, %tmp.i111.not.1.i36.i283.i.i.i.i
  br i1 %or.cond.i37.i284.i.i.i.i, label %while.body.i.preheader.i.i.i.i.i, label %if.false11.i.i.i.i

if.exit16.i46.i295.i.i.i.i:                       ; preds = %if.true11.i.i291.i.i.i.i
  %tmp.i113.i47.i296.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  br label %if.exit13.i32.i279.i.i.i.i

if.false11.i.i.i.i:                               ; preds = %if.exit13.i32.i279.i.i.i.i, %if.true11.i.i291.i.i.i.i
  %.fca.0.extract.i.i244.i.i.i.i486503 = phi i64 [ %.fca.0.extract.i.i244.i.i.i.i486504, %if.exit13.i32.i279.i.i.i.i ], [ %.fca.0.extract.i.i244.i.i.i.i, %if.true11.i.i291.i.i.i.i ]
  %.fca.1.gep.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %768 = tail call i64 @llvm.abs.i64(i64 %.fca.0.extract.i.i244.i.i.i.i486503, i1 false)
  %769 = tail call i64 @llvm.abs.i64(i64 %.fca.1.extract.i.i245.i.i.i.i, i1 false)
  %tmp.i72.not.i.not.i.i.i.i = icmp sge i64 %768, %769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %spec.select.i.i.i.i53 = zext i1 %tmp.i72.not.i.not.i.i.i.i to i64
  %not.tmp.i72.not.i.not.i.i.i.i = xor i1 %tmp.i72.not.i.not.i.i.i.i, true
  %spec.select352.i.i.i.i = zext i1 %not.tmp.i72.not.i.not.i.i.i.i to i64
  %t.fca.1.gep.i.i.i.i310.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %x.i.i.i.i304.i.i.i.i, i64 0, i32 1
  %770 = getelementptr i64, ptr %2, i64 %spec.select.i.i.i.i53
  store i64 8, ptr %770, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i)
  store i64 %.fca.0.extract38.i.i242.i.i.i.i.i, ptr %x.i.i.i.i304.i.i.i.i, align 8
  store i64 %.fca.1.extract40.i.i243.i.i.i.i.i, ptr %t.fca.1.gep.i.i.i.i310.i.i.i.i, align 8
  %p.i.i.i.i311.i.i.i.i = getelementptr i64, ptr %x.i.i.i.i304.i.i.i.i, i64 %spec.select.i.i.i.i53
  %v.i.i.i.i312.i.i.i.i = load i64, ptr %p.i.i.i.i311.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %x.i.i.i.i304.i.i.i.i)
  %tmp.i.i.i.i.i54 = shl i64 %v.i.i.i.i312.i.i.i.i, 3
  %771 = getelementptr i64, ptr %2, i64 %spec.select352.i.i.i.i
  store i64 %tmp.i.i.i.i.i54, ptr %771, align 8
  %tmp.i.1.i.i.i.i.i55 = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  %772 = mul i64 %tmp.i.1.i.i.i.i.i55, %.fca.1.extract40.i.i243.i.i.i.i.i
  %773 = tail call ptr @seq_alloc_atomic(i64 %772)
  %.fca.0.load.i.i.i.i = load i64, ptr %2, align 8
  %.fca.1.load.i.i.i.i = load i64, ptr %.fca.1.gep.i.i.i.i, align 8
  br label %if.exit.i.i.i.i.i.i

if.exit.i.i.i.i.i.i:                              ; preds = %if.false11.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i"
  %.fca.1.extract.i.i245.i.i.i.i493 = phi i64 [ %.fca.1.extract.i.i245.i.i.i.i494, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i" ], [ %.fca.1.extract.i.i245.i.i.i.i, %if.false11.i.i.i.i ]
  %.fca.0.extract.i.i244.i.i.i.i487 = phi i64 [ %.fca.0.extract.i.i244.i.i.i.i488, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i" ], [ %.fca.0.extract.i.i244.i.i.i.i486503, %if.false11.i.i.i.i ]
  %.sroa.0.0.i.i.i.pn.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i" ], [ %.fca.0.load.i.i.i.i, %if.false11.i.i.i.i ]
  %.sroa.4.0.i.i.i.pn.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i.i.i.i, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i" ], [ %.fca.1.load.i.i.i.i, %if.false11.i.i.i.i ]
  %.pn333.i.i.i.i = phi ptr [ %767, %"std.numpy.routines.empty:0[Tuple[int,int],str,float].3011.exit.i.i.i.i" ], [ %773, %if.false11.i.i.i.i ]
  %.fca.0.insert.i.i.i.pn.i.i.i.i = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i.i.pn.i.i.i.i, 0
  %.fca.1.insert.i.i.i.pn.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.pn.i.i.i.i, i64 %.sroa.4.0.i.i.i.pn.i.i.i.i, 1
  %.fca.1.insert.i.i.i.pn.i.fr.i.i.i = freeze { i64, i64 } %.fca.1.insert.i.i.i.pn.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i, label %if.true1.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit131.i.i.i.i.i.i"
    i64 1, label %if.exit3.i.i.i.i.i.i.i
  ]

if.true1.i.i.i.i.i.i.i:                           ; preds = %if.exit.i.i.i.i.i.i
  %tmp.i106.not.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i493, 8
  %spec.select.i.i.i.i.i.i.i52 = zext i1 %tmp.i106.not.i.i.i.i.i.i.i to i8
  %tmp.i108.i.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  br label %if.exit3.i.i.i.i.i.i.i

if.exit3.i.i.i.i.i.i.i:                           ; preds = %if.true1.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i
  %.194.i.i.i.i.i.i.i = phi i64 [ %tmp.i108.i.i.i.i.i.i.i, %if.true1.i.i.i.i.i.i.i ], [ 8, %if.exit.i.i.i.i.i.i ]
  %.1.i.i.i.i.i.i.i45 = phi i8 [ %spec.select.i.i.i.i.i.i.i52, %if.true1.i.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i, label %if.true11.i.i.i.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit131.i.i.i.i.i.i"
    i64 1, label %if.exit13.i.i.i.i.i.i.i
  ]

if.true11.i.i.i.i.i.i.i:                          ; preds = %if.exit3.i.i.i.i.i.i.i
  %tmp.i106.not.1.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i487, %.194.i.i.i.i.i.i.i
  %spec.select.1.i.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i.i.i.i.i.i.i, i8 %.1.i.i.i.i.i.i.i45, i8 0
  %tmp.i111.not.i.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i244.i.i.i.i487, 8
  br i1 %tmp.i111.not.i.i.i.i.i.i.i, label %if.exit16.i.i.i.i.i.i.i, label %if.true14.i.i.i.i.i.i.i

if.exit13.i.i.i.i.i.i.i:                          ; preds = %if.exit16.i.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i
  %.1.1127.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i45, %if.exit3.i.i.i.i.i.i.i ]
  %.196.i.i.i.i.i.i.i = phi i64 [ %tmp.i113.i.i.i.i.i.i.i, %if.exit16.i.i.i.i.i.i.i ], [ 8, %if.exit3.i.i.i.i.i.i.i ]
  %tmp.i109.not.1.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %tmp.i111.not.1.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i493, %.196.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i46 = or i1 %tmp.i109.not.1.i.i.i.i.i.i.i, %tmp.i111.not.1.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i46, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i", label %if.true14.i.i.i.i.i.i.i

if.true14.i.i.i.i.i.i.i:                          ; preds = %if.exit13.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i
  %.1.1126.i.i.i.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i.i.i.i, %if.true11.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i ]
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i"

if.exit16.i.i.i.i.i.i.i:                          ; preds = %if.true11.i.i.i.i.i.i.i
  %tmp.i113.i.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  br label %if.exit13.i.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i": ; preds = %if.true14.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i
  %.1.1127.i.i.pn.i.i.i.i.i = phi i8 [ %.1.1126.i.i.i.i.i.i.i, %if.true14.i.i.i.i.i.i.i ], [ %.1.1127.i.i.i.i.i.i.i, %if.exit13.i.i.i.i.i.i.i ]
  %.pn203.i.i.i.i.i = phi i8 [ 0, %if.true14.i.i.i.i.i.i.i ], [ 1, %if.exit13.i.i.i.i.i.i.i ]
  %.fca.1.extract.i107.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 1
  %cond.i.i.i.i.i.i47 = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %tmp.i106.not.i128.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i, 8
  %narrow.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i47, %tmp.i106.not.i128.i.i.i.i.i.i
  %.1.i110.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i.i to i8
  %cond.i.i.i.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 1
  br i1 %cond.i.i.i.i.i, label %if.exit13.i111.i.i.i.i.i.i, label %if.true11.i121.i.i.i.i.i.i

if.true11.i121.i.i.i.i.i.i:                       ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i"
  %tmp.i108.i130.i.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  %.fca.0.extract.i106.i.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 0
  %tmp.i106.not.1.i122.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i, %tmp.i108.i130.i.i.i.i.i.i
  %spec.select.1.i123.i.i.i.i.i.i = select i1 %tmp.i106.not.1.i122.i.i.i.i.i.i, i8 %.1.i110.i.i.i.i.i.i, i8 0
  %tmp.i111.not.i124.i.i.i.i.i.i = icmp eq i64 %.fca.0.extract.i106.i.i.i.i.i.i, 8
  br i1 %tmp.i111.not.i124.i.i.i.i.i.i, label %if.exit16.i125.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i

if.exit13.i111.i.i.i.i.i.i:                       ; preds = %if.exit16.i125.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i"
  %.1.1127.i112.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i ], [ %.1.i110.i.i.i.i.i.i, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i" ]
  %.196.i113.i.i.i.i.i.i = phi i64 [ %tmp.i113.i126.i.i.i.i.i.i, %if.exit16.i125.i.i.i.i.i.i ], [ 8, %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i.i.i.i" ]
  %tmp.i111.not.1.i115.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract.i107.i.i.i.i.i.i, %.196.i113.i.i.i.i.i.i
  %or.cond.i116.i.i.i.i.i.i = or i1 %cond.i.i.i.i.i.i47, %tmp.i111.not.1.i115.i.i.i.i.i.i
  br i1 %or.cond.i116.i.i.i.i.i.i, label %if.exit13.1.i120.i.i.i.i.i.i, label %if.true14.i117.i.i.i.i.i.i

if.exit13.1.i120.i.i.i.i.i.i:                     ; preds = %if.exit13.i111.i.i.i.i.i.i
  %774 = insertvalue { i8, i8 } undef, i8 %.1.1127.i112.i.i.i.i.i.i, 0
  %775 = insertvalue { i8, i8 } %774, i8 1, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit131.i.i.i.i.i.i"

if.true14.i117.i.i.i.i.i.i:                       ; preds = %if.exit13.i111.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i
  %.1.1126.i118.i.i.i.i.i.i = phi i8 [ %spec.select.1.i123.i.i.i.i.i.i, %if.true11.i121.i.i.i.i.i.i ], [ %.1.1127.i112.i.i.i.i.i.i, %if.exit13.i111.i.i.i.i.i.i ]
  %776 = insertvalue { i8, i8 } undef, i8 %.1.1126.i118.i.i.i.i.i.i, 0
  %777 = insertvalue { i8, i8 } %776, i8 0, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit131.i.i.i.i.i.i"

if.exit16.i125.i.i.i.i.i.i:                       ; preds = %if.true11.i121.i.i.i.i.i.i
  %tmp.i113.i126.i.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  br label %if.exit13.i111.i.i.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit131.i.i.i.i.i.i": ; preds = %if.true14.i117.i.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i, %if.exit3.i.i.i.i.i.i.i, %if.exit.i.i.i.i.i.i
  %.fca.0.extract21137.i.i.i.i.i.i = phi i8 [ %.1.1127.i.i.pn.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i ], [ %.1.1127.i.i.pn.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i ], [ 1, %if.exit3.i.i.i.i.i.i.i ]
  %common.ret.op.i136.i.i.i.i.i.i = phi i8 [ %.pn203.i.i.i.i.i, %if.exit13.1.i120.i.i.i.i.i.i ], [ %.pn203.i.i.i.i.i, %if.true14.i117.i.i.i.i.i.i ], [ 1, %if.exit.i.i.i.i.i.i ], [ 1, %if.exit3.i.i.i.i.i.i.i ]
  %common.ret.op.i119.i.i.i.i.i.i = phi { i8, i8 } [ %775, %if.exit13.1.i120.i.i.i.i.i.i ], [ %777, %if.true14.i117.i.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit.i.i.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit3.i.i.i.i.i.i.i ]
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i, 0
  %.not102.i.i.i.i.i.i = icmp eq i8 %.fca.0.extract21137.i.i.i.i.i.i, 0
  %778 = and i8 %.fca.0.extract.i.i.i.i.i.i, 1
  %779 = icmp eq i8 %778, 0
  %.not208.i.i.i.i.i = select i1 %.not102.i.i.i.i.i.i, i1 true, i1 %779
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { i8, i8 } %common.ret.op.i119.i.i.i.i.i.i, 1
  %.not103.i.i.i.i.i.i = icmp eq i8 %common.ret.op.i136.i.i.i.i.i.i, 0
  %780 = and i8 %.fca.1.extract.i.i.i.i.i.i, 1
  %.not205206.i.i.i.i.i = icmp eq i8 %780, 0
  %.not205.i.i.i.i.i = select i1 %.not103.i.i.i.i.i.i, i1 true, i1 %.not205206.i.i.i.i.i
  %.not.i.i.i.i.i48 = select i1 %.not208.i.i.i.i.i, i1 %.not205.i.i.i.i.i, i1 false
  br i1 %.not.i.i.i.i.i48, label %if.false2.i.i.i.i.i, label %imp_for.cond.preheader.i.i.i.i.i

imp_for.cond.preheader.i.i.i.i.i:                 ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit131.i.i.i.i.i.i"
  %.not177209.i.i.i.i.i = icmp sgt i64 %tmp.i.1.i.i.i.i.i.i.i.i, 0
  br i1 %.not177209.i.i.i.i.i, label %imp_for.body.i.i.i.i.i49.preheader, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit"

imp_for.body.i.i.i.i.i49.preheader:               ; preds = %imp_for.cond.preheader.i.i.i.i.i
  %min.iters.check226 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check226, label %imp_for.body.i.i.i.i.i49.preheader572, label %vector.ph227

vector.ph227:                                     ; preds = %imp_for.body.i.i.i.i.i49.preheader
  %n.vec229 = and i64 %tmp.i.1.i.i.i.i.i.i.i.i, -2
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph227
  %index233 = phi i64 [ 0, %vector.ph227 ], [ %index.next234, %vector.body232 ]
  %781 = or i64 %index233, 1
  %782 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %index233
  %783 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %781
  %784 = load double, ptr %782, align 8
  %785 = load double, ptr %783, align 8
  %786 = fmul double %784, %784
  %787 = fmul double %785, %785
  %788 = getelementptr double, ptr %.pn333.i.i.i.i, i64 %index233
  %789 = getelementptr double, ptr %.pn333.i.i.i.i, i64 %781
  store double %786, ptr %788, align 8
  store double %787, ptr %789, align 8
  %index.next234 = add nuw i64 %index233, 2
  %790 = icmp eq i64 %index.next234, %n.vec229
  br i1 %790, label %middle.block224, label %vector.body232, !llvm.loop !22

middle.block224:                                  ; preds = %vector.body232
  %cmp.n231 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i, %n.vec229
  br i1 %cmp.n231, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", label %imp_for.body.i.i.i.i.i49.preheader572

imp_for.body.i.i.i.i.i49.preheader572:            ; preds = %middle.block224, %imp_for.body.i.i.i.i.i49.preheader
  %.ph573 = phi i64 [ %n.vec229, %middle.block224 ], [ 0, %imp_for.body.i.i.i.i.i49.preheader ]
  br label %imp_for.body.i.i.i.i.i49

if.false2.i.i.i.i.i:                              ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit131.i.i.i.i.i.i"
  %.not27.i.i.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 0
  %.not2526.i.i.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i = and i1 %.not27.i.i.i.i.i.i, %.not2526.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit"

for.body.lr.ph.i.i.i.i.i:                         ; preds = %if.false2.i.i.i.i.i
  %tmp.i.not.i.i.i.i.i.i.i42 = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 1
  %tmp.i.not.1.i.i.i.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %.fca.1.extract.i.i183.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 1
  %.fca.0.extract.i.i185.i.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 0
  %791 = load double, ptr %.pn333.i.i.i.i.i, align 8
  %tmp.i.i193.us.i.i.peel.i.i.i = fmul double %791, %791
  store double %tmp.i.i193.us.i.i.peel.i.i.i, ptr %.pn333.i.i.i.i, align 8
  br i1 %tmp.i.not.i.i.i.i.i.i.i42, label %yield.new6.us.i274.i.i.peel.i.i.i, label %for.body.lr.ph.split.i.i.i.i.i

yield.new6.us.i274.i.i.peel.i.i.i:                ; preds = %for.body.lr.ph.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread", label %yield.new6.us.i274.i.i.i.i.i.preheader

yield.new6.us.i274.i.i.i.i.i.preheader:           ; preds = %yield.new6.us.i274.i.i.peel.i.i.i
  %792 = add nsw i64 %.fca.1.extract40.i.i243.i.i.i.i.i, -1
  %min.iters.check254 = icmp ugt i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 2
  %ident.check251.not = icmp eq i64 %.fca.1.extract.i.i245.i.i.i.i493, 1
  %or.cond = and i1 %min.iters.check254, %ident.check251.not
  br i1 %or.cond, label %vector.ph255, label %yield.new6.us.i274.i.i.i.i.i.preheader566

vector.ph255:                                     ; preds = %yield.new6.us.i274.i.i.i.i.i.preheader
  %n.vec257 = and i64 %792, -2
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph255
  %index262 = phi i64 [ 0, %vector.ph255 ], [ %793, %vector.body261 ]
  %offset.idx263 = or i64 %index262, 1
  %793 = add nuw nsw i64 %index262, 2
  %794 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %offset.idx263
  %795 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %793
  %796 = mul i64 %offset.idx263, %.fca.1.extract.i.i183.i.i.i.i.i
  %797 = mul i64 %793, %.fca.1.extract.i.i183.i.i.i.i.i
  %798 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %796
  %799 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %797
  %800 = load double, ptr %794, align 8
  %801 = load double, ptr %795, align 8
  %802 = fmul double %800, %800
  %803 = fmul double %801, %801
  store double %802, ptr %798, align 8
  store double %803, ptr %799, align 8
  %804 = icmp eq i64 %793, %n.vec257
  br i1 %804, label %middle.block252, label %vector.body261, !llvm.loop !23

middle.block252:                                  ; preds = %vector.body261
  %ind.end258 = or i64 %792, 1
  %cmp.n260 = icmp eq i64 %792, %n.vec257
  br i1 %cmp.n260, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", label %yield.new6.us.i274.i.i.i.i.i.preheader566

yield.new6.us.i274.i.i.i.i.i.preheader566:        ; preds = %middle.block252, %yield.new6.us.i274.i.i.i.i.i.preheader
  %.sink104.i.i.i.ph = phi i64 [ %ind.end258, %middle.block252 ], [ 1, %yield.new6.us.i274.i.i.i.i.i.preheader ]
  br label %yield.new6.us.i274.i.i.i.i.i

yield.new6.us.i274.i.i.i.i.i:                     ; preds = %yield.new6.us.i274.i.i.i.i.i, %yield.new6.us.i274.i.i.i.i.i.preheader566
  %.sink104.i.i.i = phi i64 [ %808, %yield.new6.us.i274.i.i.i.i.i ], [ %.sink104.i.i.i.ph, %yield.new6.us.i274.i.i.i.i.i.preheader566 ]
  %tmp.i63.1.i.i.us.i.i.i.i.i = mul i64 %.sink104.i.i.i, %.fca.1.extract.i.i245.i.i.i.i493
  %805 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %tmp.i63.1.i.i.us.i.i.i.i.i
  %tmp.i63.1.i.i189.us.i.i.i.i.i = mul i64 %.sink104.i.i.i, %.fca.1.extract.i.i183.i.i.i.i.i
  %806 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %tmp.i63.1.i.i189.us.i.i.i.i.i
  %807 = load double, ptr %805, align 8
  %tmp.i.i193.us.i.i.i.i.i = fmul double %807, %807
  store double %tmp.i.i193.us.i.i.i.i.i, ptr %806, align 8
  %808 = add nuw nsw i64 %.sink104.i.i.i, 1
  %exitcond.not.i279.i.i.i.i.i = icmp eq i64 %808, %.fca.1.extract40.i.i243.i.i.i.i.i
  br i1 %exitcond.not.i279.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", label %yield.new6.us.i274.i.i.i.i.i, !llvm.loop !24

for.body.lr.ph.split.i.i.i.i.i:                   ; preds = %for.body.lr.ph.i.i.i.i.i
  br i1 %tmp.i.not.1.i.i.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i, label %yield.new6.us.i466.i.i.i.i.i.outer.preheader

yield.new6.us.i466.i.i.i.i.i.outer.preheader:     ; preds = %for.body.lr.ph.split.i.i.i.i.i
  %ident.check553 = icmp ne i64 %.fca.1.extract.i.i245.i.i.i.i493, 1
  %ident.check554 = icmp ne i64 %.fca.1.extract.i.i183.i.i.i.i.i, 1
  %809 = or i1 %ident.check553, %ident.check554
  br label %yield.new6.us.i466.i.i.i.i.i.outer

imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i: ; preds = %for.body.lr.ph.split.i.i.i.i.i
  %810 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %.fca.0.extract.i.i244.i.i.i.i487
  %811 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %.fca.0.extract.i.i185.i.i.i.i.i
  %812 = load double, ptr %810, align 8
  %tmp.i.i193.us222.i.i.i21.i.i = fmul double %812, %812
  store double %tmp.i.i193.us222.i.i.i21.i.i, ptr %811, align 8
  %exitcond29.not.i353.i.i.i22.i.i = icmp eq i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 2
  br i1 %exitcond29.not.i353.i.i.i22.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread", label %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader"

"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i
  %813 = add nsw i64 %.fca.0.extract38.i.i242.i.i.i.i.i, -2
  %min.iters.check239 = icmp ult i64 %813, 2
  br i1 %min.iters.check239, label %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader567", label %vector.scevcheck235

vector.scevcheck235:                              ; preds = %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader"
  %ident.check = icmp ne i64 %.fca.0.extract.i.i244.i.i.i.i487, 1
  %ident.check236 = icmp ne i64 %.fca.0.extract.i.i185.i.i.i.i.i, 1
  %814 = or i1 %ident.check, %ident.check236
  br i1 %814, label %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader567", label %vector.ph240

vector.ph240:                                     ; preds = %vector.scevcheck235
  %n.vec242 = and i64 %813, -2
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph240
  %index247 = phi i64 [ 0, %vector.ph240 ], [ %offset.idx248, %vector.body246 ]
  %offset.idx248 = add i64 %index247, 2
  %815 = add i64 %index247, 3
  %816 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %offset.idx248
  %817 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %815
  %818 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %offset.idx248
  %819 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %815
  %820 = load double, ptr %816, align 8
  %821 = load double, ptr %817, align 8
  %822 = fmul double %820, %820
  %823 = fmul double %821, %821
  store double %822, ptr %818, align 8
  store double %823, ptr %819, align 8
  %824 = icmp eq i64 %offset.idx248, %n.vec242
  br i1 %824, label %middle.block237, label %vector.body246, !llvm.loop !25

middle.block237:                                  ; preds = %vector.body246
  %ind.end243 = add nuw nsw i64 %n.vec242, 2
  %cmp.n245 = icmp eq i64 %813, %n.vec242
  br i1 %cmp.n245, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", label %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader567"

"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader567": ; preds = %middle.block237, %vector.scevcheck235, %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader"
  %.ph568 = phi i64 [ %ind.end243, %middle.block237 ], [ 2, %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader" ], [ 2, %vector.scevcheck235 ]
  br label %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i"

"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i": ; preds = %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i", %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader567"
  %825 = phi i64 [ %829, %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i" ], [ %.ph568, %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i.preheader567" ]
  %tmp.i63.i.i.us213.i.i.i.i.i = mul i64 %825, %.fca.0.extract.i.i244.i.i.i.i487
  %826 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %tmp.i63.i.i.us213.i.i.i.i.i
  %tmp.i63.i.i186.us217.i.i.i.i.i = mul i64 %825, %.fca.0.extract.i.i185.i.i.i.i.i
  %827 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %tmp.i63.i.i186.us217.i.i.i.i.i
  %828 = load double, ptr %826, align 8
  %tmp.i.i193.us222.i.i.i.i.i = fmul double %828, %828
  store double %tmp.i.i193.us222.i.i.i.i.i, ptr %827, align 8
  %829 = add nuw nsw i64 %825, 1
  %exitcond29.not.i353.i.i.i.i.i = icmp eq i64 %829, %.fca.0.extract38.i.i242.i.i.i.i.i
  br i1 %exitcond29.not.i353.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", label %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i", !llvm.loop !26

imp_for.body.i.i.i.i.i49:                         ; preds = %imp_for.body.i.i.i.i.i49, %imp_for.body.i.i.i.i.i49.preheader572
  %830 = phi i64 [ %834, %imp_for.body.i.i.i.i.i49 ], [ %.ph573, %imp_for.body.i.i.i.i.i49.preheader572 ]
  %831 = getelementptr double, ptr %.pn333.i.i.i.i.i, i64 %830
  %832 = load double, ptr %831, align 8
  %tmp.i.i.i.i.i.i.i50 = fmul double %832, %832
  %833 = getelementptr double, ptr %.pn333.i.i.i.i, i64 %830
  store double %tmp.i.i.i.i.i.i.i50, ptr %833, align 8
  %834 = add nuw nsw i64 %830, 1
  %exitcond.not.i.i.i.i.i51 = icmp eq i64 %834, %tmp.i.1.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i51, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", label %imp_for.body.i.i.i.i.i49, !llvm.loop !27

yield.new6.us.i466.i.i.i.i.i:                     ; preds = %yield.new6.us.i466.i.i.i.i.i.preheader, %yield.new6.us.i466.i.i.i.i.i
  %.reload48.i468.i.i.i.i.i = phi i64 [ %838, %yield.new6.us.i466.i.i.i.i.i ], [ %.reload48.i468.i.i.i.i.i.ph570, %yield.new6.us.i466.i.i.i.i.i.preheader ]
  %tmp.i63.1.i.i.i.i.i.i.i = mul i64 %.reload48.i468.i.i.i.i.i, %.fca.1.extract.i.i245.i.i.i.i493
  %.1.1.i.i.i.i.i.i.i = add i64 %tmp.i63.1.i.i.i.i.i.i.i, %tmp.i63.i.i.i.i.i.i.i
  %835 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %.1.1.i.i.i.i.i.i.i
  %tmp.i63.1.i.i189.i.i.i.i.i = mul i64 %.reload48.i468.i.i.i.i.i, %.fca.1.extract.i.i183.i.i.i.i.i
  %.1.1.i.i191.i.i.i.i.i = add i64 %tmp.i63.1.i.i189.i.i.i.i.i, %tmp.i63.i.i186.i.i.i.i.i
  %836 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %.1.1.i.i191.i.i.i.i.i
  %837 = load double, ptr %835, align 8
  %tmp.i.i193.i.i.i.i.i = fmul double %837, %837
  store double %tmp.i.i193.i.i.i.i.i, ptr %836, align 8
  %838 = add nuw nsw i64 %.reload48.i468.i.i.i.i.i, 1
  %exitcond.not.i471.i.i.i.i.i = icmp eq i64 %838, %.fca.1.extract40.i.i243.i.i.i.i.i
  br i1 %exitcond.not.i471.i.i.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i, label %yield.new6.us.i466.i.i.i.i.i, !llvm.loop !28

imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i: ; preds = %middle.block555, %yield.new6.us.i466.i.i.i.i.i
  %839 = add nuw nsw i64 %.reload45.i473.i.i.i.i.i.ph, 1
  %exitcond29.not.i481.i.i.i.i.i = icmp eq i64 %839, %.fca.0.extract38.i.i242.i.i.i.i.i
  br i1 %exitcond29.not.i481.i.i.i.i.i, label %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", label %yield.new6.us.i466.i.i.i.i.i.outer

yield.new6.us.i466.i.i.i.i.i.outer:               ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i, %yield.new6.us.i466.i.i.i.i.i.outer.preheader
  %.reload45.i473.i.i.i.i.i.ph = phi i64 [ %839, %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i ], [ 0, %yield.new6.us.i466.i.i.i.i.i.outer.preheader ]
  %.reload48.i468.i.i.i.i.i.ph = phi i64 [ 0, %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i ], [ 1, %yield.new6.us.i466.i.i.i.i.i.outer.preheader ]
  %tmp.i63.i.i.i.i.i.i.i = mul i64 %.reload45.i473.i.i.i.i.i.ph, %.fca.0.extract.i.i244.i.i.i.i487
  %tmp.i63.i.i186.i.i.i.i.i = mul i64 %.reload45.i473.i.i.i.i.i.ph, %.fca.0.extract.i.i185.i.i.i.i.i
  %840 = sub i64 %.fca.1.extract40.i.i243.i.i.i.i.i, %.reload48.i468.i.i.i.i.i.ph
  %min.iters.check556 = icmp ult i64 %840, 2
  %brmerge = or i1 %min.iters.check556, %809
  br i1 %brmerge, label %yield.new6.us.i466.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %yield.new6.us.i466.i.i.i.i.i.outer
  %n.vec557 = and i64 %840, -2
  %ind.end558 = or i64 %.reload48.i468.i.i.i.i.i.ph, %n.vec557
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph
  %index561 = phi i64 [ 0, %vector.ph ], [ %index.next563, %vector.body560 ]
  %offset.idx562 = or i64 %.reload48.i468.i.i.i.i.i.ph, %index561
  %841 = add i64 %offset.idx562, 1
  %842 = add i64 %offset.idx562, %tmp.i63.i.i.i.i.i.i.i
  %843 = add i64 %841, %tmp.i63.i.i.i.i.i.i.i
  %844 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %842
  %845 = getelementptr i8, ptr %.pn333.i.i.i.i.i, i64 %843
  %846 = add i64 %offset.idx562, %tmp.i63.i.i186.i.i.i.i.i
  %847 = add i64 %841, %tmp.i63.i.i186.i.i.i.i.i
  %848 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %846
  %849 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %847
  %850 = load double, ptr %844, align 8
  %851 = load double, ptr %845, align 8
  %852 = fmul double %850, %850
  %853 = fmul double %851, %851
  store double %852, ptr %848, align 8
  store double %853, ptr %849, align 8
  %index.next563 = add nuw i64 %index561, 2
  %854 = icmp eq i64 %index.next563, %n.vec557
  br i1 %854, label %middle.block555, label %vector.body560, !llvm.loop !29

middle.block555:                                  ; preds = %vector.body560
  %cmp.n559 = icmp eq i64 %840, %n.vec557
  br i1 %cmp.n559, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i, label %yield.new6.us.i466.i.i.i.i.i.preheader

yield.new6.us.i466.i.i.i.i.i.preheader:           ; preds = %middle.block555, %yield.new6.us.i466.i.i.i.i.i.outer
  %.reload48.i468.i.i.i.i.i.ph570 = phi i64 [ %.reload48.i468.i.i.i.i.i.ph, %yield.new6.us.i466.i.i.i.i.i.outer ], [ %ind.end558, %middle.block555 ]
  br label %yield.new6.us.i466.i.i.i.i.i

"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i350.i.i.i.preheader.i.i, %yield.new6.us.i274.i.i.peel.i.i.i
  %855 = shl i64 %tmp.i.1.i.i.i.i.i.i.i.i, 3
  %856 = tail call ptr @seq_alloc_atomic(i64 %855)
  %.fca.0.extract.i.i.i.i511 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 0
  %.fca.1.extract.i.i.i.i512 = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 1
  br label %if.exit3.i.i.i.i

"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i478.i.i.i.i.i, %imp_for.body.i.i.i.i.i49, %"std.numpy.util.multirange:0[Tuple[int,int]].1465.resume.exit365.i.i.i.i.i", %middle.block237, %yield.new6.us.i274.i.i.i.i.i, %middle.block252, %if.false2.i.i.i.i.i, %middle.block224, %imp_for.cond.preheader.i.i.i.i.i
  %857 = shl i64 %tmp.i.1.i.i.i.i.i.i.i.i, 3
  %858 = tail call ptr @seq_alloc_atomic(i64 %857)
  %.fca.0.extract.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 0
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i64 } %.fca.1.insert.i.i.i.pn.i.fr.i.i.i, 1
  switch i64 %.fca.1.extract40.i.i243.i.i.i.i.i, label %if.true1.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i"
    i64 1, label %if.exit3.i.i.i.i
  ]

if.true1.i.i.i.i:                                 ; preds = %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit"
  %tmp.i106.not.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i.i.i, 8
  %spec.select.i.i.i.i = zext i1 %tmp.i106.not.i.i.i.i to i8
  %tmp.i108.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  br label %if.exit3.i.i.i.i

if.exit3.i.i.i.i:                                 ; preds = %if.true1.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit", %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread"
  %.fca.1.extract.i.i.i.i515 = phi i64 [ %.fca.1.extract.i.i.i.i, %if.true1.i.i.i.i ], [ %.fca.1.extract.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ], [ %.fca.1.extract.i.i.i.i512, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread" ]
  %.fca.0.extract.i.i.i.i513 = phi i64 [ %.fca.0.extract.i.i.i.i, %if.true1.i.i.i.i ], [ %.fca.0.extract.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ], [ %.fca.0.extract.i.i.i.i511, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread" ]
  %859 = phi ptr [ %858, %if.true1.i.i.i.i ], [ %858, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ], [ %856, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread" ]
  %.194.i.i.i.i = phi i64 [ %tmp.i108.i.i.i.i, %if.true1.i.i.i.i ], [ 8, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ], [ 8, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread" ]
  %.1.i.i.i.i = phi i8 [ %spec.select.i.i.i.i, %if.true1.i.i.i.i ], [ 1, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ], [ 1, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit.thread" ]
  switch i64 %.fca.0.extract38.i.i242.i.i.i.i.i, label %if.true11.i.i.i.i [
    i64 0, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i"
    i64 1, label %if.exit13.i.i.i.i
  ]

if.true11.i.i.i.i:                                ; preds = %if.exit3.i.i.i.i
  %tmp.i106.not.1.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i513, %.194.i.i.i.i
  %spec.select.1.i.i.i.i = select i1 %tmp.i106.not.1.i.i.i.i, i8 %.1.i.i.i.i, i8 0
  %tmp.i111.not.i.i.i.i = icmp eq i64 %.fca.0.extract.i.i.i.i513, 8
  br i1 %tmp.i111.not.i.i.i.i, label %if.exit16.i.i.i.i, label %if.true14.i.i.i.i

if.exit13.i.i.i.i:                                ; preds = %if.exit16.i.i.i.i, %if.exit3.i.i.i.i
  %.1.1127.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i, %if.exit16.i.i.i.i ], [ %.1.i.i.i.i, %if.exit3.i.i.i.i ]
  %.196.i.i.i.i = phi i64 [ %tmp.i113.i.i.i.i, %if.exit16.i.i.i.i ], [ 8, %if.exit3.i.i.i.i ]
  %tmp.i109.not.1.i.i.i.i = icmp eq i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 1
  %tmp.i111.not.1.i.i.i.i = icmp eq i64 %.fca.1.extract.i.i.i.i515, %.196.i.i.i.i
  %or.cond.i.i.i.i = or i1 %tmp.i109.not.1.i.i.i.i, %tmp.i111.not.1.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.exit13.1.i.i.i.i, label %if.true14.i.i.i.i

if.exit13.1.i.i.i.i:                              ; preds = %if.exit13.i.i.i.i
  %860 = insertvalue { i8, i8 } undef, i8 %.1.1127.i.i.i.i, 0
  %861 = insertvalue { i8, i8 } %860, i8 1, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i"

if.true14.i.i.i.i:                                ; preds = %if.exit13.i.i.i.i, %if.true11.i.i.i.i
  %.1.1126.i.i.i.i = phi i8 [ %spec.select.1.i.i.i.i, %if.true11.i.i.i.i ], [ %.1.1127.i.i.i.i, %if.exit13.i.i.i.i ]
  %862 = insertvalue { i8, i8 } undef, i8 %.1.1126.i.i.i.i, 0
  %863 = insertvalue { i8, i8 } %862, i8 0, 1
  br label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i"

if.exit16.i.i.i.i:                                ; preds = %if.true11.i.i.i.i
  %tmp.i113.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  br label %if.exit13.i.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i": ; preds = %if.true14.i.i.i.i, %if.exit13.1.i.i.i.i, %if.exit3.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit"
  %.fca.1.extract.i.i.i.i516 = phi i64 [ %.fca.1.extract.i.i.i.i515, %if.exit13.1.i.i.i.i ], [ %.fca.1.extract.i.i.i.i515, %if.true14.i.i.i.i ], [ %.fca.1.extract.i.i.i.i515, %if.exit3.i.i.i.i ], [ %.fca.1.extract.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ]
  %.fca.0.extract.i.i.i.i514 = phi i64 [ %.fca.0.extract.i.i.i.i513, %if.exit13.1.i.i.i.i ], [ %.fca.0.extract.i.i.i.i513, %if.true14.i.i.i.i ], [ %.fca.0.extract.i.i.i.i513, %if.exit3.i.i.i.i ], [ %.fca.0.extract.i.i.i.i, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ]
  %864 = phi ptr [ %859, %if.exit13.1.i.i.i.i ], [ %859, %if.true14.i.i.i.i ], [ %859, %if.exit3.i.i.i.i ], [ %858, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ]
  %common.ret.op.i.i.i.i = phi { i8, i8 } [ %861, %if.exit13.1.i.i.i.i ], [ %863, %if.true14.i.i.i.i ], [ { i8 1, i8 1 }, %if.exit3.i.i.i.i ], [ { i8 1, i8 1 }, %"std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]]:std.numpy.ufunc.UnaryUFunc.__call__:0[std.numpy.ufunc.UnaryUFunc[Partial.N0.std.numpy.ndmath._square:0[T1][std.numpy.ndmath._square:0,Tuple,KwTuple.N0]],std.numpy.ndarray.ndarray[float,2],Optional[NoneType],bool,NoneType,NoneType].3104.exit" ]
  %.fca.0.extract48.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i, 0
  %.fca.1.extract49.i.i.i = extractvalue { i8, i8 } %common.ret.op.i.i.i.i, 1
  %865 = and i8 %.fca.1.extract49.i.i.i, 1
  %.not.i.i.i = icmp eq i8 %865, 0
  %866 = and i8 %.fca.0.extract48.i.i.i, 1
  %867 = xor i8 %866, 1
  %868 = select i1 %.not.i.i.i, i8 0, i8 %867
  %.fr33.i.i.i.i.i = freeze i8 %868
  %869 = and i8 %.fr33.i.i.i.i.i, 1
  %.not.i.i.i.i.i = icmp eq i8 %869, 0
  %tmp.i31.us.i.i.i.i.i = shl i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 3
  %tmp.i31.i.i.i.i.i = shl i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 3
  %.sroa.4.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 8, i64 %tmp.i31.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %tmp.i31.us.i.i.i.i.i, i64 8
  %.not181.i.i.i = icmp ne i8 %866, 0
  %870 = icmp ne i8 %865, 0
  %871 = select i1 %.not181.i.i.i, i1 true, i1 %870
  br i1 %871, label %imp_for.cond.preheader.i.i.i, label %imp_for.cond.preheader.i.i.i.i

imp_for.cond.preheader.i.i.i:                     ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i"
  %.not184193.i.i.i = icmp sgt i64 %tmp.i.1.i.i.i.i.i.i.i.i, 0
  br i1 %.not184193.i.i.i, label %imp_for.body.i.i.i.preheader, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.__rmul__:0[std.numpy.ndarray.ndarray[float,2],float].3165.exit"

imp_for.body.i.i.i.preheader:                     ; preds = %imp_for.cond.preheader.i.i.i
  %min.iters.check267 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check267, label %imp_for.body.i.i.i.preheader564, label %vector.ph268

vector.ph268:                                     ; preds = %imp_for.body.i.i.i.preheader
  %n.vec270 = and i64 %tmp.i.1.i.i.i.i.i.i.i.i, -2
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph268
  %index274 = phi i64 [ 0, %vector.ph268 ], [ %index.next275, %vector.body273 ]
  %872 = or i64 %index274, 1
  %873 = getelementptr double, ptr %.pn333.i.i.i.i, i64 %index274
  %874 = getelementptr double, ptr %.pn333.i.i.i.i, i64 %872
  %875 = load double, ptr %873, align 8
  %876 = load double, ptr %874, align 8
  %877 = fmul double %tmp.i, %875
  %878 = fmul double %tmp.i, %876
  %879 = getelementptr double, ptr %864, i64 %index274
  %880 = getelementptr double, ptr %864, i64 %872
  store double %877, ptr %879, align 8
  store double %878, ptr %880, align 8
  %index.next275 = add nuw i64 %index274, 2
  %881 = icmp eq i64 %index.next275, %n.vec270
  br i1 %881, label %middle.block265, label %vector.body273, !llvm.loop !30

middle.block265:                                  ; preds = %vector.body273
  %cmp.n272 = icmp eq i64 %tmp.i.1.i.i.i.i.i.i.i.i, %n.vec270
  br i1 %cmp.n272, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.__rmul__:0[std.numpy.ndarray.ndarray[float,2],float].3165.exit", label %imp_for.body.i.i.i.preheader564

imp_for.body.i.i.i.preheader564:                  ; preds = %middle.block265, %imp_for.body.i.i.i.preheader
  %.ph = phi i64 [ %n.vec270, %middle.block265 ], [ 0, %imp_for.body.i.i.i.preheader ]
  br label %imp_for.body.i.i.i

imp_for.cond.preheader.i.i.i.i:                   ; preds = %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray._contig:0[std.numpy.ndarray.ndarray[float,2]].1459.exit.i.i.i"
  %.not27.i.i.i.i = icmp sgt i64 %.fca.0.extract38.i.i242.i.i.i.i.i, 0
  %.not2526.i.i.i.i = icmp sgt i64 %.fca.1.extract40.i.i243.i.i.i.i.i, 0
  %or.cond.i194.i.i.i = and i1 %.not27.i.i.i.i, %.not2526.i.i.i.i
  br i1 %or.cond.i194.i.i.i, label %for.body.i.i.i.outer, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.__rmul__:0[std.numpy.ndarray.ndarray[float,2],float].3165.exit"

imp_for.body.i.i.i:                               ; preds = %imp_for.body.i.i.i, %imp_for.body.i.i.i.preheader564
  %882 = phi i64 [ %886, %imp_for.body.i.i.i ], [ %.ph, %imp_for.body.i.i.i.preheader564 ]
  %883 = getelementptr double, ptr %.pn333.i.i.i.i, i64 %882
  %884 = load double, ptr %883, align 8
  %tmp.i.i.i.i.i.i = fmul double %tmp.i, %884
  %885 = getelementptr double, ptr %864, i64 %882
  store double %tmp.i.i.i.i.i.i, ptr %885, align 8
  %886 = add nuw nsw i64 %882, 1
  %exitcond.not.i.i.i = icmp eq i64 %886, %tmp.i.1.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.__rmul__:0[std.numpy.ndarray.ndarray[float,2],float].3165.exit", label %imp_for.body.i.i.i, !llvm.loop !31

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.outer, %for.body.i.i.i
  %.sroa.9.1.i.i.i = phi i64 [ %890, %for.body.i.i.i ], [ 0, %for.body.i.i.i.outer ]
  %tmp.i.1.i.i188.i.i.i = mul i64 %.sroa.9.1.i.i.i, %.fca.1.extract.i.i.i.i516
  %tmp.i37.1.i.i.i.i.i = add i64 %tmp.i.1.i.i188.i.i.i, %tmp.i.i.i187.i.i.i
  %887 = getelementptr i8, ptr %.pn333.i.i.i.i, i64 %tmp.i37.1.i.i.i.i.i
  %tmp.i.1.i.i190.i.i.i = mul i64 %.sroa.9.1.i.i.i, %.sroa.4.0.i.i.i.i.i
  %tmp.i37.1.i.i191.i.i.i = add i64 %tmp.i.1.i.i190.i.i.i, %tmp.i.i.i189.i.i.i
  %888 = getelementptr i8, ptr %864, i64 %tmp.i37.1.i.i191.i.i.i
  %889 = load double, ptr %887, align 8
  %tmp.i.i.i192.i.i.i = fmul double %tmp.i, %889
  store double %tmp.i.i.i192.i.i.i, ptr %888, align 8
  %890 = add nuw nsw i64 %.sroa.9.1.i.i.i, 1
  %exitcond.not.i204.i.i.i = icmp eq i64 %890, %.fca.1.extract40.i.i243.i.i.i.i.i
  br i1 %exitcond.not.i204.i.i.i, label %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i, label %for.body.i.i.i

imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i: ; preds = %for.body.i.i.i
  %891 = add nuw nsw i64 %.sroa.22.2.i.i.i.ph, 1
  %exitcond29.not.i214.i.i.i = icmp eq i64 %891, %.fca.0.extract38.i.i242.i.i.i.i.i
  br i1 %exitcond29.not.i214.i.i.i, label %"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.__rmul__:0[std.numpy.ndarray.ndarray[float,2],float].3165.exit", label %for.body.i.i.i.outer

for.body.i.i.i.outer:                             ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i, %imp_for.cond.preheader.i.i.i.i
  %.sroa.22.2.i.i.i.ph = phi i64 [ %891, %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i ]
  %tmp.i.i.i187.i.i.i = mul i64 %.sroa.22.2.i.i.i.ph, %.fca.0.extract.i.i.i.i514
  %tmp.i.i.i189.i.i.i = mul i64 %.sroa.22.2.i.i.i.ph, %.sroa.0.0.i.i.i.i.i
  br label %for.body.i.i.i

"std.numpy.ndarray.ndarray[float,2]:std.numpy.ndarray.ndarray.__rmul__:0[std.numpy.ndarray.ndarray[float,2],float].3165.exit": ; preds = %imp_for.cond2.imp_for.exit5_crit_edge.us.i211.i.i.i, %imp_for.body.i.i.i, %imp_for.cond.preheader.i.i.i.i, %middle.block265, %imp_for.cond.preheader.i.i.i
  %.fca.0.insert.i.i.i.i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i.i.i, i64 %.sroa.4.0.i.i.i.i.i, 1
  %892 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %.fr.i, { i64, i64 } %.fca.1.insert.i.i.i.i.i, 1
  %893 = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %892, ptr %864, 2
  ret { { i64, i64 }, { i64, i64 }, ptr } %893
}

; Function Attrs: nounwind
define {} @generate_features(ptr nocapture readonly %0, i64 %1, i64 %2, ptr nocapture writeonly %3) local_unnamed_addr #7 {
entry:
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca { i64, i64 }, align 8
  %.frozen = freeze i64 %1
  %.unpack.unpack.i = load i64, ptr %0, align 8
  %.unpack.unpack.i.frozen = freeze i64 %.unpack.unpack.i
  %.elt1.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 1
  %.unpack2.unpack.i = load i64, ptr %.elt1.i, align 8
  %.elt3.i = getelementptr inbounds { { i64 }, { i64 }, ptr }, ptr %0, i64 0, i32 2
  %.unpack4.i = load ptr, ptr %.elt3.i, align 8
  %switch.i.i.i = icmp ult i64 %.unpack.unpack.i.frozen, 2
  %tmp.i82.not.i.i.i.i = icmp eq i64 %.unpack2.unpack.i, 8
  %or.cond.not.i.i.i = select i1 %switch.i.i.i, i1 true, i1 %tmp.i82.not.i.i.i.i
  %.not.1.i.i.i.i = icmp sgt i64 %.frozen, -1
  tail call void @llvm.assume(i1 %.not.1.i.i.i.i)
  %tmp.i85.i.i.i.i = icmp ne i64 %.frozen, 0
  tail call void @llvm.assume(i1 %tmp.i85.i.i.i.i)
  %tmp.i89.i.i.i.i = sdiv i64 %.unpack.unpack.i.frozen, %.frozen
  %6 = mul i64 %tmp.i89.i.i.i.i, %.frozen
  %tmp.i91.not.i.i.i.i = icmp eq i64 %.unpack.unpack.i.frozen, %6
  tail call void @llvm.assume(i1 %tmp.i91.not.i.i.i.i)
  br i1 %or.cond.not.i.i.i, label %"str:str.__eq__:0[str,str].1152.exit287.i.i.i", label %"str:str.__eq__:0[str,str].1152.exit265.i.i.i"

"str:str.__eq__:0[str,str].1152.exit265.i.i.i":   ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store i64 %tmp.i89.i.i.i.i, ptr %4, align 8
  %.fca.1.gep155.i.i.i.i = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  store i64 %.frozen, ptr %.fca.1.gep155.i.i.i.i, align 8
  %.fca.1.gep.i266.i.i.i = getelementptr inbounds { i64, i64 }, ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %tmp.i249.i.i.i.i = mul i64 %.unpack2.unpack.i, %.unpack.unpack.i.frozen
  %tmp.i251.not.i.i.i.i = icmp eq i64 %tmp.i249.i.i.i.i, %.unpack2.unpack.i
  %tmp.i251.not.i.fr.i.i.i = freeze i1 %tmp.i251.not.i.i.i.i
  br i1 %tmp.i251.not.i.fr.i.i.i, label %while.body.us.i.us.i.i.i, label %while.body.us.i.i.i.i

while.body.us.i.us.i.i.i:                         ; preds = %if.exit22.loopexit.us.i.us.i.i.i, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i"
  %.0209306.us.i.us.i.i.i = phi i64 [ %tmp.i263.us.i.us.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i" ]
  %.0211305.us.i.us.i.i.i = phi i64 [ %.1210.lcssa.us.i.us.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i" ]
  %.0212304.us.i.us.i.i.i = phi i64 [ %tmp.i264.us.i.us.i.i.i, %if.exit22.loopexit.us.i.us.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i" ]
  %7 = getelementptr i64, ptr %4, i64 %.0211305.us.i.us.i.i.i
  %8 = load i64, ptr %7, align 8
  %tmp.i238.not288.us.i.us.i.i.i = icmp eq i64 %8, %.unpack.unpack.i.frozen
  br i1 %tmp.i238.not288.us.i.us.i.i.i, label %while.cond7.preheader.us.i.us.i.i.i, label %while.body2.us.i.us.i.i.i

while.body2.us.i.us.i.i.i:                        ; preds = %if.exit6.us.i.us.i.i.i, %while.body.us.i.us.i.i.i
  %.0204292.us.i.us.i.i.i = phi i64 [ %.1205.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %.unpack.unpack.i.frozen, %while.body.us.i.us.i.i.i ]
  %.0206291.us.i.us.i.i.i = phi i64 [ %.1207.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %8, %while.body.us.i.us.i.i.i ]
  %.1210290.us.i.us.i.i.i = phi i64 [ %.2.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %.0209306.us.i.us.i.i.i, %while.body.us.i.us.i.i.i ]
  %.1213289.us.i.us.i.i.i = phi i64 [ %.2214.us.i.us.i.i.i, %if.exit6.us.i.us.i.i.i ], [ %.0212304.us.i.us.i.i.i, %while.body.us.i.us.i.i.i ]
  %tmp.i240.not.us.i.us.i.i.i = icmp sgt i64 %.0204292.us.i.us.i.i.i, %.0206291.us.i.us.i.i.i
  br i1 %tmp.i240.not.us.i.us.i.i.i, label %if.true4.us.i.us.i.i.i, label %if.false5.us.i.us.i.i.i

if.false5.us.i.us.i.i.i:                          ; preds = %while.body2.us.i.us.i.i.i
  %tmp.i244.us.i.us.i.i.i = mul i64 %.0204292.us.i.us.i.i.i, %.unpack.unpack.i.frozen
  %tmp.i245.us.i.us.i.i.i = add i64 %.1213289.us.i.us.i.i.i, 1
  br label %if.exit6.us.i.us.i.i.i

if.true4.us.i.us.i.i.i:                           ; preds = %while.body2.us.i.us.i.i.i
  %9 = getelementptr i64, ptr %4, i64 %.1210290.us.i.us.i.i.i
  %10 = load i64, ptr %9, align 8
  %tmp.i242.us.i.us.i.i.i = mul i64 %10, %.0206291.us.i.us.i.i.i
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
  %11 = getelementptr i64, ptr %5, i64 %tmp.i260.us.i.us.i.i.i
  store i64 %.unpack2.unpack.i, ptr %11, align 8
  %tmp.i271.not300.us.i.us.i.i.i = icmp sgt i64 %tmp.i260.us.i.us.i.i.i, %.0211305.us.i.us.i.i.i
  br i1 %tmp.i271.not300.us.i.us.i.i.i, label %while.body27.us.i.us.i.i.i, label %if.exit22.loopexit.us.i.us.i.i.i

while.body27.us.i.us.i.i.i:                       ; preds = %while.body27.us.i.us.i.i.i, %while.cond7.preheader.us.i.us.i.i.i
  %12 = phi i64 [ %tmp.i274.us.i.us.i.i.i, %while.body27.us.i.us.i.i.i ], [ %.unpack2.unpack.i, %while.cond7.preheader.us.i.us.i.i.i ]
  %.0201301.us.i.us.i.i.i = phi i64 [ %tmp.i273.us.i.us.i.i.i, %while.body27.us.i.us.i.i.i ], [ %tmp.i260.us.i.us.i.i.i, %while.cond7.preheader.us.i.us.i.i.i ]
  %tmp.i273.us.i.us.i.i.i = add nsw i64 %.0201301.us.i.us.i.i.i, -1
  %13 = getelementptr i64, ptr %4, i64 %.0201301.us.i.us.i.i.i
  %14 = load i64, ptr %13, align 8
  %tmp.i274.us.i.us.i.i.i = mul i64 %14, %12
  %15 = getelementptr i64, ptr %5, i64 %tmp.i273.us.i.us.i.i.i
  store i64 %tmp.i274.us.i.us.i.i.i, ptr %15, align 8
  %tmp.i271.not.us.i.us.i.i.i = icmp sgt i64 %tmp.i273.us.i.us.i.i.i, %.0211305.us.i.us.i.i.i
  br i1 %tmp.i271.not.us.i.us.i.i.i, label %while.body27.us.i.us.i.i.i, label %if.exit22.loopexit.us.i.us.i.i.i

if.exit22.loopexit.us.i.us.i.i.i:                 ; preds = %while.body27.us.i.us.i.i.i, %while.cond7.preheader.us.i.us.i.i.i
  %tmp.i263.us.i.us.i.i.i = add i64 %.1210.lcssa.us.i.us.i.i.i, 1
  %tmp.i264.us.i.us.i.i.i = add i64 %.1213.lcssa.us.i.us.i.i.i, 1
  %tmp.i232.us.i.us.i.i.i = icmp slt i64 %.1210.lcssa.us.i.us.i.i.i, 2
  %tmp.i236.us.i.us.i.i.i = icmp slt i64 %.1213.lcssa.us.i.us.i.i.i, 1
  %or.cond.us.i.us.i.i.i = and i1 %tmp.i236.us.i.us.i.i.i, %tmp.i232.us.i.us.i.i.i
  br i1 %or.cond.us.i.us.i.i.i, label %while.body.us.i.us.i.i.i, label %while.exit.i.i.i.i

while.body.us.i.i.i.i:                            ; preds = %if.exit22.loopexit.us.i.i.i.i, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i"
  %.0209306.us.i.i.i.i = phi i64 [ %tmp.i263.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i" ]
  %.0211305.us.i.i.i.i = phi i64 [ %.1210.lcssa.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i" ]
  %.0212304.us.i.i.i.i = phi i64 [ %tmp.i264.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 1, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i" ]
  %.0215303.us.i.i.i.i = phi i64 [ %.1213.lcssa.us.i.i.i.i, %if.exit22.loopexit.us.i.i.i.i ], [ 0, %"str:str.__eq__:0[str,str].1152.exit265.i.i.i" ]
  %16 = getelementptr i64, ptr %4, i64 %.0211305.us.i.i.i.i
  %17 = load i64, ptr %16, align 8
  %tmp.i238.not288.us.i.i.i.i = icmp eq i64 %17, %.unpack.unpack.i.frozen
  br i1 %tmp.i238.not288.us.i.i.i.i, label %while.cond7.preheader.us.i.i.i.i, label %while.body2.us.i.i.i.i

while.body2.us.i.i.i.i:                           ; preds = %if.exit6.us.i.i.i.i, %while.body.us.i.i.i.i
  %.0204292.us.i.i.i.i = phi i64 [ %.1205.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %.unpack.unpack.i.frozen, %while.body.us.i.i.i.i ]
  %.0206291.us.i.i.i.i = phi i64 [ %.1207.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %17, %while.body.us.i.i.i.i ]
  %.1210290.us.i.i.i.i = phi i64 [ %.2.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %.0209306.us.i.i.i.i, %while.body.us.i.i.i.i ]
  %.1213289.us.i.i.i.i = phi i64 [ %.2214.us.i.i.i.i, %if.exit6.us.i.i.i.i ], [ %.0212304.us.i.i.i.i, %while.body.us.i.i.i.i ]
  %tmp.i240.not.us.i.i.i.i = icmp sgt i64 %.0204292.us.i.i.i.i, %.0206291.us.i.i.i.i
  br i1 %tmp.i240.not.us.i.i.i.i, label %if.true4.us.i.i.i.i, label %if.false5.us.i.i.i.i

if.false5.us.i.i.i.i:                             ; preds = %while.body2.us.i.i.i.i
  %tmp.i244.us.i.i.i.i = mul i64 %.0204292.us.i.i.i.i, %.unpack.unpack.i.frozen
  %tmp.i245.us.i.i.i.i = add i64 %.1213289.us.i.i.i.i, 1
  br label %if.exit6.us.i.i.i.i

if.true4.us.i.i.i.i:                              ; preds = %while.body2.us.i.i.i.i
  %18 = getelementptr i64, ptr %4, i64 %.1210290.us.i.i.i.i
  %19 = load i64, ptr %18, align 8
  %tmp.i242.us.i.i.i.i = mul i64 %19, %.0206291.us.i.i.i.i
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
  %20 = getelementptr i64, ptr %5, i64 %tmp.i260.us.i.i.i.i
  store i64 %.unpack2.unpack.i, ptr %20, align 8
  %tmp.i271.not300.us.i.i.i.i = icmp sgt i64 %tmp.i260.us.i.i.i.i, %.0211305.us.i.i.i.i
  br i1 %tmp.i271.not300.us.i.i.i.i, label %while.body27.us.i.i.i.i, label %if.exit22.loopexit.us.i.i.i.i

while.body27.us.i.i.i.i:                          ; preds = %while.body27.us.i.i.i.i, %while.exit9.us.i.i.i.i
  %21 = phi i64 [ %tmp.i274.us.i.i.i.i, %while.body27.us.i.i.i.i ], [ %.unpack2.unpack.i, %while.exit9.us.i.i.i.i ]
  %.0201301.us.i.i.i.i = phi i64 [ %tmp.i273.us.i.i.i.i, %while.body27.us.i.i.i.i ], [ %tmp.i260.us.i.i.i.i, %while.exit9.us.i.i.i.i ]
  %tmp.i273.us.i.i.i.i = add nsw i64 %.0201301.us.i.i.i.i, -1
  %22 = getelementptr i64, ptr %4, i64 %.0201301.us.i.i.i.i
  %23 = load i64, ptr %22, align 8
  %tmp.i274.us.i.i.i.i = mul i64 %23, %21
  %24 = getelementptr i64, ptr %5, i64 %tmp.i273.us.i.i.i.i
  store i64 %tmp.i274.us.i.i.i.i, ptr %24, align 8
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
  %25 = getelementptr i64, ptr %5, i64 %tmp.i276.i.i.i.i
  %26 = load i64, ptr %25, align 8
  %tmp.i279364.i.not.i.i.i = icmp eq i64 %.0211.lcssa.i.i.i.i, 1
  br i1 %tmp.i279364.i.not.i.i.i, label %while.body36.i.preheader.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i"

while.body36.i.preheader.i.i.i:                   ; preds = %if.exit34.i.i.i.i, %while.exit.i.i.i.i
  %.0200.i338.i.i.i = phi i64 [ %26, %if.exit34.i.i.i.i ], [ 8, %while.exit.i.i.i.i ]
  %27 = sub i64 2, %.0211.lcssa.i.i.i.i
  %min.iters.check = icmp ult i64 %27, 2
  br i1 %min.iters.check, label %while.body36.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %while.body36.i.preheader.i.i.i
  %n.vec = and i64 %27, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %.0211.lcssa.i.i.i.i
  %28 = add i64 %offset.idx, 1
  %29 = getelementptr i64, ptr %5, i64 %offset.idx
  %30 = getelementptr i64, ptr %5, i64 %28
  store i64 %.0200.i338.i.i.i, ptr %29, align 8
  store i64 %.0200.i338.i.i.i, ptr %30, align 8
  %index.next = add nuw i64 %index, 2
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %ind.end = add i64 %n.vec, %.0211.lcssa.i.i.i.i
  %cmp.n = icmp eq i64 %27, %n.vec
  br i1 %cmp.n, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i", label %while.body36.i.i.i.i.preheader

while.body36.i.i.i.i.preheader:                   ; preds = %middle.block, %while.body36.i.preheader.i.i.i
  %.0365.i.i.i.i.ph = phi i64 [ %ind.end, %middle.block ], [ %.0211.lcssa.i.i.i.i, %while.body36.i.preheader.i.i.i ]
  br label %while.body36.i.i.i.i

while.body36.i.i.i.i:                             ; preds = %while.body36.i.i.i.i, %while.body36.i.i.i.i.preheader
  %.0365.i.i.i.i = phi i64 [ %tmp.i281.i.i.i.i, %while.body36.i.i.i.i ], [ %.0365.i.i.i.i.ph, %while.body36.i.i.i.i.preheader ]
  %32 = getelementptr i64, ptr %5, i64 %.0365.i.i.i.i
  store i64 %.0200.i338.i.i.i, ptr %32, align 8
  %tmp.i281.i.i.i.i = add nsw i64 %.0365.i.i.i.i, 1
  %exitcond376.i.i.i.i = icmp eq i64 %tmp.i281.i.i.i.i, 2
  br i1 %exitcond376.i.i.i.i, label %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i", label %while.body36.i.i.i.i, !llvm.loop !33

"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i": ; preds = %while.body36.i.i.i.i, %middle.block, %if.exit34.i.i.i.i
  %.fca.0.load.i.i.i.i = load i64, ptr %5, align 8
  %.fca.1.load.i.i.i.i = load i64, ptr %.fca.1.gep.i266.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1438.exit"

"str:str.__eq__:0[str,str].1152.exit287.i.i.i":   ; preds = %for.body.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i, %entry
  %.sroa.16.0.i.i.i = phi ptr [ %33, %imp_for.cond.preheader.i.i.i.i.i.i ], [ %.unpack4.i, %entry ], [ %33, %for.body.i.i.i.i.i ]
  %tmp.i31.us.i.i.i.i.i = shl i64 %.frozen, 3
  br label %"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1438.exit"

imp_for.cond.preheader.i.i.i.i.i.i:               ; preds = %while.cond7.preheader.us.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %.sink.i.i.i.i.i = shl i64 %.unpack.unpack.i.frozen, 3
  %33 = tail call ptr @seq_alloc_atomic(i64 %.sink.i.i.i.i.i)
  %.not7.i.i.i.i.i.i = icmp sgt i64 %.unpack.unpack.i.frozen, 0
  br i1 %.not7.i.i.i.i.i.i, label %for.body.i.i.i.i.i, label %"str:str.__eq__:0[str,str].1152.exit287.i.i.i"

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i, %imp_for.cond.preheader.i.i.i.i.i.i
  %.sroa.6.1.i.i.i.i.i = phi i64 [ %37, %for.body.i.i.i.i.i ], [ 0, %imp_for.cond.preheader.i.i.i.i.i.i ]
  %tmp.i.i.i.i.i.i.i.i = mul i64 %.sroa.6.1.i.i.i.i.i, %.unpack2.unpack.i
  %34 = getelementptr i8, ptr %.unpack4.i, i64 %tmp.i.i.i.i.i.i.i.i
  %tmp.i.i.i362.i.i.i.i.i = shl i64 %.sroa.6.1.i.i.i.i.i, 3
  %35 = getelementptr i8, ptr %33, i64 %tmp.i.i.i362.i.i.i.i.i
  %36 = load double, ptr %34, align 8
  store double %36, ptr %35, align 8
  %37 = add nuw nsw i64 %.sroa.6.1.i.i.i.i.i, 1
  %exitcond.not.i412.i.i.i.i.i = icmp eq i64 %37, %.unpack.unpack.i.frozen
  br i1 %exitcond.not.i412.i.i.i.i.i, label %"str:str.__eq__:0[str,str].1152.exit287.i.i.i", label %for.body.i.i.i.i.i

"std.numpy.routines.reshape:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],str].1438.exit": ; preds = %"str:str.__eq__:0[str,str].1152.exit287.i.i.i", %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i"
  %tmp.i31.us.i.i.pn.i.i.i = phi i64 [ %tmp.i31.us.i.i.i.i.i, %"str:str.__eq__:0[str,str].1152.exit287.i.i.i" ], [ %.fca.0.load.i.i.i.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i" ]
  %.pn343.i.i.i = phi i64 [ 8, %"str:str.__eq__:0[str,str].1152.exit287.i.i.i" ], [ %.fca.1.load.i.i.i.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i" ]
  %.sroa.16.0310.pn.i.i.i = phi ptr [ %.sroa.16.0.i.i.i, %"str:str.__eq__:0[str,str].1152.exit287.i.i.i" ], [ %.unpack4.i, %"std.numpy.ndarray.ndarray[float,1]:std.numpy.ndarray.ndarray._attempt_reshape_nocopy:0[std.numpy.ndarray.ndarray[float,1],Tuple[int,int],bool].1396.exit.i.i.i" ]
  %.fca.0.insert.i.i.pn.i.i.i = insertvalue { i64, i64 } undef, i64 %tmp.i31.us.i.i.pn.i.i.i, 0
  %.fca.1.insert.i.i.pn.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.pn.i.i.i, i64 %.pn343.i.i.i, 1
  %.fca.0.insert45.i.i.i.i = insertvalue { i64, i64 } poison, i64 %tmp.i89.i.i.i.i, 0
  %.fca.1.insert48.i.i.i.i = insertvalue { i64, i64 } %.fca.0.insert45.i.i.i.i, i64 %.frozen, 1
  %.pn311.i.i.i = insertvalue { { i64, i64 }, { i64, i64 }, ptr } undef, { i64, i64 } %.fca.1.insert48.i.i.i.i, 0
  %.pn.i.i.i = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %.pn311.i.i.i, { i64, i64 } %.fca.1.insert.i.i.pn.i.i.i, 1
  %common.ret.op.i.i.i = insertvalue { { i64, i64 }, { i64, i64 }, ptr } %.pn.i.i.i, ptr %.sroa.16.0310.pn.i.i.i, 2
  %38 = tail call fastcc { { i64, i64 }, { i64, i64 }, ptr } @"power_spectrum:0[std.numpy.ndarray.ndarray[float,2],int].3168"({ { i64, i64 }, { i64, i64 }, ptr } %common.ret.op.i.i.i, i64 %2)
  %what.elt.i = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %38, 0
  %what.elt.elt.i = extractvalue { i64, i64 } %what.elt.i, 0
  store i64 %what.elt.elt.i, ptr %3, align 8
  %self.repack5.i = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %what.elt.elt6.i = extractvalue { i64, i64 } %what.elt.i, 1
  store i64 %what.elt.elt6.i, ptr %self.repack5.i, align 8
  %self.repack1.i = getelementptr inbounds { { i64, i64 }, { i64, i64 }, ptr }, ptr %3, i64 0, i32 1
  %what.elt2.i = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %38, 1
  %what.elt2.elt.i = extractvalue { i64, i64 } %what.elt2.i, 0
  store i64 %what.elt2.elt.i, ptr %self.repack1.i, align 8
  %self.repack1.repack7.i = getelementptr inbounds { { i64, i64 }, { i64, i64 }, ptr }, ptr %3, i64 0, i32 1, i32 1
  %what.elt2.elt8.i = extractvalue { i64, i64 } %what.elt2.i, 1
  store i64 %what.elt2.elt8.i, ptr %self.repack1.repack7.i, align 8
  %self.repack3.i = getelementptr inbounds { { i64, i64 }, { i64, i64 }, ptr }, ptr %3, i64 0, i32 2
  %what.elt4.i = extractvalue { { i64, i64 }, { i64, i64 }, ptr } %38, 2
  store ptr %what.elt4.i, ptr %self.repack3.i, align 8
  ret {} zeroinitializer
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { mustprogress nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="seq_alloc" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("realloc,uninitialized") allocsize(1) "alloc-family"="seq_alloc" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind memory(write, argmem: none, inaccessiblemem: readwrite) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") "alloc-family"="seq_alloc" }
attributes #7 = { nounwind }
attributes #8 = { mustprogress nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 2}
!2 = distinct !{!2, !3, !4}
!3 = !{!"llvm.loop.isvectorized", i32 1}
!4 = !{!"llvm.loop.unroll.runtime.disable"}
!5 = distinct !{!5, !3}
!6 = !{!7}
!7 = distinct !{!7, !8, !"std.numpy.util.multirange:0[Tuple[int]].1292.resume: %coro.handle"}
!8 = distinct !{!8, !"std.numpy.util.multirange:0[Tuple[int]].1292.resume"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = distinct !{!11, !3, !4}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3, !4}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3, !4}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !3, !4}
!18 = distinct !{!18, !3}
!19 = !{!20}
!20 = distinct !{!20, !21, !"std.numpy.util.multirange:0[Tuple[int]].1292.resume: %coro.handle"}
!21 = distinct !{!21, !"std.numpy.util.multirange:0[Tuple[int]].1292.resume"}
!22 = distinct !{!22, !3, !4}
!23 = distinct !{!23, !3, !4}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3, !4}
!26 = distinct !{!26, !3}
!27 = distinct !{!27, !3}
!28 = distinct !{!28, !3}
!29 = distinct !{!29, !3, !4}
!30 = distinct !{!30, !3, !4}
!31 = distinct !{!31, !3}
!32 = distinct !{!32, !3, !4}
!33 = distinct !{!33, !3}
