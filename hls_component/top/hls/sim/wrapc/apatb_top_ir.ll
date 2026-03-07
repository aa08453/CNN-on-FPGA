; ModuleID = '/home/abdullah/Desktop/CNN-on-FPGA/hls_component/top/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<8, 5>" = type { %"struct.ap_fixed_base<8, 5>" }
%"struct.ap_fixed_base<8, 5>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }

; Function Attrs: noinline
define void @apatb_top_ir(%"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly "maxi" %input, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull "maxi" %outputConv, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly "maxi" %weight, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly "maxi" %bias, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull "maxi" %outputPool, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly "maxi" %weight2, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly "maxi" %bias2, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull "maxi" %outputConv2, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull "maxi" %outputPool2, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull "maxi" %outputDense, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly "maxi" %fcWeight, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly "maxi" %fcBias) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_fixed<8, 5>"* %input to [848 x %"struct.ap_fixed<8, 5>"]*
  %input_copy = alloca [848 x i8], align 512
  %1 = bitcast %"struct.ap_fixed<8, 5>"* %outputConv to [6336 x %"struct.ap_fixed<8, 5>"]*
  %2 = call i8* @malloc(i64 6336)
  %outputConv_copy = bitcast i8* %2 to [6336 x i8]*
  %3 = bitcast %"struct.ap_fixed<8, 5>"* %weight to [136 x %"struct.ap_fixed<8, 5>"]*
  %weight_copy = alloca [136 x i8], align 512
  %4 = bitcast %"struct.ap_fixed<8, 5>"* %bias to [64 x %"struct.ap_fixed<8, 5>"]*
  %bias_copy = alloca [64 x i8], align 512
  %5 = bitcast %"struct.ap_fixed<8, 5>"* %outputPool to [1632 x %"struct.ap_fixed<8, 5>"]*
  %outputPool_copy = alloca [1632 x i8], align 512
  %6 = bitcast %"struct.ap_fixed<8, 5>"* %weight2 to [1216 x %"struct.ap_fixed<8, 5>"]*
  %weight2_copy = alloca [1216 x i8], align 512
  %7 = bitcast %"struct.ap_fixed<8, 5>"* %bias2 to [64 x %"struct.ap_fixed<8, 5>"]*
  %bias2_copy = alloca [64 x i8], align 512
  %8 = bitcast %"struct.ap_fixed<8, 5>"* %outputConv2 to [3200 x %"struct.ap_fixed<8, 5>"]*
  %outputConv2_copy = alloca [3200 x i8], align 512
  %9 = bitcast %"struct.ap_fixed<8, 5>"* %outputPool2 to [848 x %"struct.ap_fixed<8, 5>"]*
  %outputPool2_copy = alloca [848 x i8], align 512
  %10 = bitcast %"struct.ap_fixed<8, 5>"* %outputDense to [64 x %"struct.ap_fixed<8, 5>"]*
  %outputDense_copy = alloca [64 x i8], align 512
  %11 = bitcast %"struct.ap_fixed<8, 5>"* %fcWeight to [7904 x %"struct.ap_fixed<8, 5>"]*
  %12 = call i8* @malloc(i64 7904)
  %fcWeight_copy = bitcast i8* %12 to [7904 x i8]*
  %13 = bitcast %"struct.ap_fixed<8, 5>"* %fcBias to [64 x %"struct.ap_fixed<8, 5>"]*
  %fcBias_copy = alloca [64 x i8], align 512
  call fastcc void @copy_in([848 x %"struct.ap_fixed<8, 5>"]* nonnull %0, [848 x i8]* nonnull align 512 %input_copy, [6336 x %"struct.ap_fixed<8, 5>"]* nonnull %1, [6336 x i8]* %outputConv_copy, [136 x %"struct.ap_fixed<8, 5>"]* nonnull %3, [136 x i8]* nonnull align 512 %weight_copy, [64 x %"struct.ap_fixed<8, 5>"]* nonnull %4, [64 x i8]* nonnull align 512 %bias_copy, [1632 x %"struct.ap_fixed<8, 5>"]* nonnull %5, [1632 x i8]* nonnull align 512 %outputPool_copy, [1216 x %"struct.ap_fixed<8, 5>"]* nonnull %6, [1216 x i8]* nonnull align 512 %weight2_copy, [64 x %"struct.ap_fixed<8, 5>"]* nonnull %7, [64 x i8]* nonnull align 512 %bias2_copy, [3200 x %"struct.ap_fixed<8, 5>"]* nonnull %8, [3200 x i8]* nonnull align 512 %outputConv2_copy, [848 x %"struct.ap_fixed<8, 5>"]* nonnull %9, [848 x i8]* nonnull align 512 %outputPool2_copy, [64 x %"struct.ap_fixed<8, 5>"]* nonnull %10, [64 x i8]* nonnull align 512 %outputDense_copy, [7904 x %"struct.ap_fixed<8, 5>"]* nonnull %11, [7904 x i8]* %fcWeight_copy, [64 x %"struct.ap_fixed<8, 5>"]* nonnull %13, [64 x i8]* nonnull align 512 %fcBias_copy)
  call void @apatb_top_hw([848 x i8]* %input_copy, [6336 x i8]* %outputConv_copy, [136 x i8]* %weight_copy, [64 x i8]* %bias_copy, [1632 x i8]* %outputPool_copy, [1216 x i8]* %weight2_copy, [64 x i8]* %bias2_copy, [3200 x i8]* %outputConv2_copy, [848 x i8]* %outputPool2_copy, [64 x i8]* %outputDense_copy, [7904 x i8]* %fcWeight_copy, [64 x i8]* %fcBias_copy)
  call void @copy_back([848 x %"struct.ap_fixed<8, 5>"]* %0, [848 x i8]* %input_copy, [6336 x %"struct.ap_fixed<8, 5>"]* %1, [6336 x i8]* %outputConv_copy, [136 x %"struct.ap_fixed<8, 5>"]* %3, [136 x i8]* %weight_copy, [64 x %"struct.ap_fixed<8, 5>"]* %4, [64 x i8]* %bias_copy, [1632 x %"struct.ap_fixed<8, 5>"]* %5, [1632 x i8]* %outputPool_copy, [1216 x %"struct.ap_fixed<8, 5>"]* %6, [1216 x i8]* %weight2_copy, [64 x %"struct.ap_fixed<8, 5>"]* %7, [64 x i8]* %bias2_copy, [3200 x %"struct.ap_fixed<8, 5>"]* %8, [3200 x i8]* %outputConv2_copy, [848 x %"struct.ap_fixed<8, 5>"]* %9, [848 x i8]* %outputPool2_copy, [64 x %"struct.ap_fixed<8, 5>"]* %10, [64 x i8]* %outputDense_copy, [7904 x %"struct.ap_fixed<8, 5>"]* %11, [7904 x i8]* %fcWeight_copy, [64 x %"struct.ap_fixed<8, 5>"]* %13, [64 x i8]* %fcBias_copy)
  call void @free(i8* %2)
  call void @free(i8* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([848 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="0", [848 x i8]* noalias nocapture align 512 "unpacked"="1.0", [6336 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="2", [6336 x i8]* nocapture "unpacked"="3.0", [136 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="4", [136 x i8]* noalias nocapture align 512 "unpacked"="5.0", [64 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="6", [64 x i8]* noalias nocapture align 512 "unpacked"="7.0", [1632 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="8", [1632 x i8]* noalias nocapture align 512 "unpacked"="9.0", [1216 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="10", [1216 x i8]* noalias nocapture align 512 "unpacked"="11.0", [64 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="12", [64 x i8]* noalias nocapture align 512 "unpacked"="13.0", [3200 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="14", [3200 x i8]* noalias nocapture align 512 "unpacked"="15.0", [848 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="16", [848 x i8]* noalias nocapture align 512 "unpacked"="17.0", [64 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="18", [64 x i8]* noalias nocapture align 512 "unpacked"="19.0", [7904 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="20", [7904 x i8]* nocapture "unpacked"="21.0", [64 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="22", [64 x i8]* noalias nocapture align 512 "unpacked"="23.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a848struct.ap_fixed<8, 5>.52"([848 x i8]* align 512 %1, [848 x %"struct.ap_fixed<8, 5>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a6336struct.ap_fixed<8, 5>"([6336 x i8]* %3, [6336 x %"struct.ap_fixed<8, 5>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a136struct.ap_fixed<8, 5>.120"([136 x i8]* align 512 %5, [136 x %"struct.ap_fixed<8, 5>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>"([64 x i8]* align 512 %7, [64 x %"struct.ap_fixed<8, 5>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a1632struct.ap_fixed<8, 5>.102"([1632 x i8]* align 512 %9, [1632 x %"struct.ap_fixed<8, 5>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a1216struct.ap_fixed<8, 5>"([1216 x i8]* align 512 %11, [1216 x %"struct.ap_fixed<8, 5>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>"([64 x i8]* align 512 %13, [64 x %"struct.ap_fixed<8, 5>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a3200struct.ap_fixed<8, 5>"([3200 x i8]* align 512 %15, [3200 x %"struct.ap_fixed<8, 5>"]* %14)
  call fastcc void @"onebyonecpy_hls.p0a848struct.ap_fixed<8, 5>.52"([848 x i8]* align 512 %17, [848 x %"struct.ap_fixed<8, 5>"]* %16)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>"([64 x i8]* align 512 %19, [64 x %"struct.ap_fixed<8, 5>"]* %18)
  call fastcc void @"onebyonecpy_hls.p0a7904struct.ap_fixed<8, 5>.36"([7904 x i8]* %21, [7904 x %"struct.ap_fixed<8, 5>"]* %20)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>"([64 x i8]* align 512 %23, [64 x %"struct.ap_fixed<8, 5>"]* %22)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a848struct.ap_fixed<8, 5>"([848 x %"struct.ap_fixed<8, 5>"]* %dst, [848 x %"struct.ap_fixed<8, 5>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [848 x %"struct.ap_fixed<8, 5>"]* %src, null
  %1 = icmp eq [848 x %"struct.ap_fixed<8, 5>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [848 x %"struct.ap_fixed<8, 5>"], [848 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [848 x %"struct.ap_fixed<8, 5>"], [848 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a6336struct.ap_fixed<8, 5>"([6336 x i8]* nocapture "unpacked"="0.0" %dst, [6336 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [6336 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a6336struct.ap_fixed<8, 5>"([6336 x i8]* %dst, [6336 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 6336)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a6336struct.ap_fixed<8, 5>"([6336 x i8]* nocapture "unpacked"="0.0" %dst, [6336 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [6336 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [6336 x %"struct.ap_fixed<8, 5>"], [6336 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [6336 x i8], [6336 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a136struct.ap_fixed<8, 5>"([136 x %"struct.ap_fixed<8, 5>"]* noalias "unpacked"="0" %dst, [136 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [136 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a136struct.ap_fixed<8, 5>"([136 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [136 x i8]* %src, i64 136)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a136struct.ap_fixed<8, 5>"([136 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [136 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [136 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [136 x i8], [136 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [136 x %"struct.ap_fixed<8, 5>"], [136 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<8, 5>"([64 x %"struct.ap_fixed<8, 5>"]* %dst, [64 x %"struct.ap_fixed<8, 5>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<8, 5>"]* %src, null
  %1 = icmp eq [64 x %"struct.ap_fixed<8, 5>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_fixed<8, 5>"], [64 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_fixed<8, 5>"], [64 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1632struct.ap_fixed<8, 5>"([1632 x %"struct.ap_fixed<8, 5>"]* noalias "unpacked"="0" %dst, [1632 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1632struct.ap_fixed<8, 5>"([1632 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [1632 x i8]* %src, i64 1632)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1632struct.ap_fixed<8, 5>"([1632 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [1632 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1632 x i8], [1632 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1632 x %"struct.ap_fixed<8, 5>"], [1632 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1216struct.ap_fixed<8, 5>"([1216 x i8]* noalias nocapture align 512 "unpacked"="0.0" %dst, [1216 x %"struct.ap_fixed<8, 5>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [1216 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1216struct.ap_fixed<8, 5>"([1216 x i8]* %dst, [1216 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 1216)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1216struct.ap_fixed<8, 5>"([1216 x i8]* nocapture "unpacked"="0.0" %dst, [1216 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1216 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1216 x %"struct.ap_fixed<8, 5>"], [1216 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1216 x i8], [1216 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3200struct.ap_fixed<8, 5>"([3200 x i8]* noalias nocapture align 512 "unpacked"="0.0" %dst, [3200 x %"struct.ap_fixed<8, 5>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [3200 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3200struct.ap_fixed<8, 5>"([3200 x i8]* %dst, [3200 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 3200)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3200struct.ap_fixed<8, 5>"([3200 x i8]* nocapture "unpacked"="0.0" %dst, [3200 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3200 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3200 x %"struct.ap_fixed<8, 5>"], [3200 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [3200 x i8], [3200 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a7904struct.ap_fixed<8, 5>"([7904 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [7904 x i8]* nocapture readonly "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [7904 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a7904struct.ap_fixed<8, 5>"([7904 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [7904 x i8]* %src, i64 7904)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a7904struct.ap_fixed<8, 5>"([7904 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [7904 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [7904 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [7904 x i8], [7904 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [7904 x %"struct.ap_fixed<8, 5>"], [7904 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([848 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0", [848 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0", [6336 x %"struct.ap_fixed<8, 5>"]* "unpacked"="2", [6336 x i8]* nocapture readonly "unpacked"="3.0", [136 x %"struct.ap_fixed<8, 5>"]* "unpacked"="4", [136 x i8]* noalias nocapture readonly align 512 "unpacked"="5.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="6", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="7.0", [1632 x %"struct.ap_fixed<8, 5>"]* "unpacked"="8", [1632 x i8]* noalias nocapture readonly align 512 "unpacked"="9.0", [1216 x %"struct.ap_fixed<8, 5>"]* "unpacked"="10", [1216 x i8]* noalias nocapture readonly align 512 "unpacked"="11.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="12", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="13.0", [3200 x %"struct.ap_fixed<8, 5>"]* "unpacked"="14", [3200 x i8]* noalias nocapture readonly align 512 "unpacked"="15.0", [848 x %"struct.ap_fixed<8, 5>"]* "unpacked"="16", [848 x i8]* noalias nocapture readonly align 512 "unpacked"="17.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="18", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="19.0", [7904 x %"struct.ap_fixed<8, 5>"]* "unpacked"="20", [7904 x i8]* nocapture readonly "unpacked"="21.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="22", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="23.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a848struct.ap_fixed<8, 5>"([848 x %"struct.ap_fixed<8, 5>"]* %0, [848 x i8]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a6336struct.ap_fixed<8, 5>.132"([6336 x %"struct.ap_fixed<8, 5>"]* %2, [6336 x i8]* %3)
  call fastcc void @"onebyonecpy_hls.p0a136struct.ap_fixed<8, 5>"([136 x %"struct.ap_fixed<8, 5>"]* %4, [136 x i8]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>.22"([64 x %"struct.ap_fixed<8, 5>"]* %6, [64 x i8]* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0a1632struct.ap_fixed<8, 5>"([1632 x %"struct.ap_fixed<8, 5>"]* %8, [1632 x i8]* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a1216struct.ap_fixed<8, 5>.90"([1216 x %"struct.ap_fixed<8, 5>"]* %10, [1216 x i8]* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>.22"([64 x %"struct.ap_fixed<8, 5>"]* %12, [64 x i8]* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0a3200struct.ap_fixed<8, 5>.71"([3200 x %"struct.ap_fixed<8, 5>"]* %14, [3200 x i8]* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0a848struct.ap_fixed<8, 5>"([848 x %"struct.ap_fixed<8, 5>"]* %16, [848 x i8]* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>.22"([64 x %"struct.ap_fixed<8, 5>"]* %18, [64 x i8]* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0a7904struct.ap_fixed<8, 5>"([7904 x %"struct.ap_fixed<8, 5>"]* %20, [7904 x i8]* %21)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>.22"([64 x %"struct.ap_fixed<8, 5>"]* %22, [64 x i8]* align 512 %23)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>.22"([64 x %"struct.ap_fixed<8, 5>"]* noalias "unpacked"="0" %dst, [64 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a64struct.ap_fixed<8, 5>.25"([64 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [64 x i8]* %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<8, 5>.25"([64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [64 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x i8], [64 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_fixed<8, 5>"], [64 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>"([64 x i8]* noalias nocapture align 512 "unpacked"="0.0" %dst, [64 x %"struct.ap_fixed<8, 5>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a64struct.ap_fixed<8, 5>.32"([64 x i8]* %dst, [64 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<8, 5>.32"([64 x i8]* nocapture "unpacked"="0.0" %dst, [64 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_fixed<8, 5>"], [64 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [64 x i8], [64 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a7904struct.ap_fixed<8, 5>.36"([7904 x i8]* nocapture "unpacked"="0.0" %dst, [7904 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [7904 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a7904struct.ap_fixed<8, 5>.39"([7904 x i8]* %dst, [7904 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 7904)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a7904struct.ap_fixed<8, 5>.39"([7904 x i8]* nocapture "unpacked"="0.0" %dst, [7904 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [7904 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [7904 x %"struct.ap_fixed<8, 5>"], [7904 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [7904 x i8], [7904 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a848struct.ap_fixed<8, 5>.52"([848 x i8]* noalias nocapture align 512 "unpacked"="0.0" %dst, [848 x %"struct.ap_fixed<8, 5>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [848 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a848struct.ap_fixed<8, 5>.55"([848 x i8]* %dst, [848 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 848)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a848struct.ap_fixed<8, 5>.55"([848 x i8]* nocapture "unpacked"="0.0" %dst, [848 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [848 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [848 x %"struct.ap_fixed<8, 5>"], [848 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [848 x i8], [848 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a848struct.ap_fixed<8, 5>"([848 x %"struct.ap_fixed<8, 5>"]* noalias "unpacked"="0" %dst, [848 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [848 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a848struct.ap_fixed<8, 5>.62"([848 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [848 x i8]* %src, i64 848)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a848struct.ap_fixed<8, 5>.62"([848 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [848 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [848 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [848 x i8], [848 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [848 x %"struct.ap_fixed<8, 5>"], [848 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a3200struct.ap_fixed<8, 5>.71"([3200 x %"struct.ap_fixed<8, 5>"]* noalias "unpacked"="0" %dst, [3200 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [3200 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a3200struct.ap_fixed<8, 5>.74"([3200 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [3200 x i8]* %src, i64 3200)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a3200struct.ap_fixed<8, 5>.74"([3200 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [3200 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3200 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [3200 x i8], [3200 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [3200 x %"struct.ap_fixed<8, 5>"], [3200 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1216struct.ap_fixed<8, 5>.90"([1216 x %"struct.ap_fixed<8, 5>"]* noalias "unpacked"="0" %dst, [1216 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [1216 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1216struct.ap_fixed<8, 5>.93"([1216 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [1216 x i8]* %src, i64 1216)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1216struct.ap_fixed<8, 5>.93"([1216 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [1216 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1216 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1216 x i8], [1216 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1216 x %"struct.ap_fixed<8, 5>"], [1216 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1632struct.ap_fixed<8, 5>.102"([1632 x i8]* noalias nocapture align 512 "unpacked"="0.0" %dst, [1632 x %"struct.ap_fixed<8, 5>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1632struct.ap_fixed<8, 5>.105"([1632 x i8]* %dst, [1632 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 1632)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1632struct.ap_fixed<8, 5>.105"([1632 x i8]* nocapture "unpacked"="0.0" %dst, [1632 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1632 x %"struct.ap_fixed<8, 5>"], [1632 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1632 x i8], [1632 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a136struct.ap_fixed<8, 5>.120"([136 x i8]* noalias nocapture align 512 "unpacked"="0.0" %dst, [136 x %"struct.ap_fixed<8, 5>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [136 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a136struct.ap_fixed<8, 5>.123"([136 x i8]* %dst, [136 x %"struct.ap_fixed<8, 5>"]* nonnull %src, i64 136)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a136struct.ap_fixed<8, 5>.123"([136 x i8]* nocapture "unpacked"="0.0" %dst, [136 x %"struct.ap_fixed<8, 5>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [136 x %"struct.ap_fixed<8, 5>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [136 x %"struct.ap_fixed<8, 5>"], [136 x %"struct.ap_fixed<8, 5>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [136 x i8], [136 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a6336struct.ap_fixed<8, 5>.132"([6336 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [6336 x i8]* nocapture readonly "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [6336 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a6336struct.ap_fixed<8, 5>.135"([6336 x %"struct.ap_fixed<8, 5>"]* nonnull %dst, [6336 x i8]* %src, i64 6336)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a6336struct.ap_fixed<8, 5>.135"([6336 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0" %dst, [6336 x i8]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [6336 x %"struct.ap_fixed<8, 5>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [6336 x i8], [6336 x i8]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [6336 x %"struct.ap_fixed<8, 5>"], [6336 x %"struct.ap_fixed<8, 5>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %1, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_top_hw([848 x i8]*, [6336 x i8]*, [136 x i8]*, [64 x i8]*, [1632 x i8]*, [1216 x i8]*, [64 x i8]*, [3200 x i8]*, [848 x i8]*, [64 x i8]*, [7904 x i8]*, [64 x i8]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([848 x %"struct.ap_fixed<8, 5>"]* "unpacked"="0", [848 x i8]* noalias nocapture readonly align 512 "unpacked"="1.0", [6336 x %"struct.ap_fixed<8, 5>"]* "unpacked"="2", [6336 x i8]* nocapture readonly "unpacked"="3.0", [136 x %"struct.ap_fixed<8, 5>"]* "unpacked"="4", [136 x i8]* noalias nocapture readonly align 512 "unpacked"="5.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="6", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="7.0", [1632 x %"struct.ap_fixed<8, 5>"]* "unpacked"="8", [1632 x i8]* noalias nocapture readonly align 512 "unpacked"="9.0", [1216 x %"struct.ap_fixed<8, 5>"]* "unpacked"="10", [1216 x i8]* noalias nocapture readonly align 512 "unpacked"="11.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="12", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="13.0", [3200 x %"struct.ap_fixed<8, 5>"]* "unpacked"="14", [3200 x i8]* noalias nocapture readonly align 512 "unpacked"="15.0", [848 x %"struct.ap_fixed<8, 5>"]* "unpacked"="16", [848 x i8]* noalias nocapture readonly align 512 "unpacked"="17.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="18", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="19.0", [7904 x %"struct.ap_fixed<8, 5>"]* "unpacked"="20", [7904 x i8]* nocapture readonly "unpacked"="21.0", [64 x %"struct.ap_fixed<8, 5>"]* "unpacked"="22", [64 x i8]* noalias nocapture readonly align 512 "unpacked"="23.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a6336struct.ap_fixed<8, 5>.132"([6336 x %"struct.ap_fixed<8, 5>"]* %2, [6336 x i8]* %3)
  call fastcc void @"onebyonecpy_hls.p0a1632struct.ap_fixed<8, 5>"([1632 x %"struct.ap_fixed<8, 5>"]* %8, [1632 x i8]* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a3200struct.ap_fixed<8, 5>.71"([3200 x %"struct.ap_fixed<8, 5>"]* %14, [3200 x i8]* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0a848struct.ap_fixed<8, 5>"([848 x %"struct.ap_fixed<8, 5>"]* %16, [848 x i8]* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_fixed<8, 5>.22"([64 x %"struct.ap_fixed<8, 5>"]* %18, [64 x i8]* align 512 %19)
  ret void
}

declare void @top_hw_stub(%"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<8, 5>"* noalias nocapture nonnull readonly)

define void @top_hw_stub_wrapper([848 x i8]*, [6336 x i8]*, [136 x i8]*, [64 x i8]*, [1632 x i8]*, [1216 x i8]*, [64 x i8]*, [3200 x i8]*, [848 x i8]*, [64 x i8]*, [7904 x i8]*, [64 x i8]*) #5 {
entry:
  %12 = call i8* @malloc(i64 848)
  %13 = bitcast i8* %12 to [848 x %"struct.ap_fixed<8, 5>"]*
  %14 = call i8* @malloc(i64 6336)
  %15 = bitcast i8* %14 to [6336 x %"struct.ap_fixed<8, 5>"]*
  %16 = call i8* @malloc(i64 136)
  %17 = bitcast i8* %16 to [136 x %"struct.ap_fixed<8, 5>"]*
  %18 = call i8* @malloc(i64 64)
  %19 = bitcast i8* %18 to [64 x %"struct.ap_fixed<8, 5>"]*
  %20 = call i8* @malloc(i64 1632)
  %21 = bitcast i8* %20 to [1632 x %"struct.ap_fixed<8, 5>"]*
  %22 = call i8* @malloc(i64 1216)
  %23 = bitcast i8* %22 to [1216 x %"struct.ap_fixed<8, 5>"]*
  %24 = call i8* @malloc(i64 64)
  %25 = bitcast i8* %24 to [64 x %"struct.ap_fixed<8, 5>"]*
  %26 = call i8* @malloc(i64 3200)
  %27 = bitcast i8* %26 to [3200 x %"struct.ap_fixed<8, 5>"]*
  %28 = call i8* @malloc(i64 848)
  %29 = bitcast i8* %28 to [848 x %"struct.ap_fixed<8, 5>"]*
  %30 = call i8* @malloc(i64 64)
  %31 = bitcast i8* %30 to [64 x %"struct.ap_fixed<8, 5>"]*
  %32 = call i8* @malloc(i64 7904)
  %33 = bitcast i8* %32 to [7904 x %"struct.ap_fixed<8, 5>"]*
  %34 = call i8* @malloc(i64 64)
  %35 = bitcast i8* %34 to [64 x %"struct.ap_fixed<8, 5>"]*
  call void @copy_out([848 x %"struct.ap_fixed<8, 5>"]* %13, [848 x i8]* %0, [6336 x %"struct.ap_fixed<8, 5>"]* %15, [6336 x i8]* %1, [136 x %"struct.ap_fixed<8, 5>"]* %17, [136 x i8]* %2, [64 x %"struct.ap_fixed<8, 5>"]* %19, [64 x i8]* %3, [1632 x %"struct.ap_fixed<8, 5>"]* %21, [1632 x i8]* %4, [1216 x %"struct.ap_fixed<8, 5>"]* %23, [1216 x i8]* %5, [64 x %"struct.ap_fixed<8, 5>"]* %25, [64 x i8]* %6, [3200 x %"struct.ap_fixed<8, 5>"]* %27, [3200 x i8]* %7, [848 x %"struct.ap_fixed<8, 5>"]* %29, [848 x i8]* %8, [64 x %"struct.ap_fixed<8, 5>"]* %31, [64 x i8]* %9, [7904 x %"struct.ap_fixed<8, 5>"]* %33, [7904 x i8]* %10, [64 x %"struct.ap_fixed<8, 5>"]* %35, [64 x i8]* %11)
  %36 = bitcast [848 x %"struct.ap_fixed<8, 5>"]* %13 to %"struct.ap_fixed<8, 5>"*
  %37 = bitcast [6336 x %"struct.ap_fixed<8, 5>"]* %15 to %"struct.ap_fixed<8, 5>"*
  %38 = bitcast [136 x %"struct.ap_fixed<8, 5>"]* %17 to %"struct.ap_fixed<8, 5>"*
  %39 = bitcast [64 x %"struct.ap_fixed<8, 5>"]* %19 to %"struct.ap_fixed<8, 5>"*
  %40 = bitcast [1632 x %"struct.ap_fixed<8, 5>"]* %21 to %"struct.ap_fixed<8, 5>"*
  %41 = bitcast [1216 x %"struct.ap_fixed<8, 5>"]* %23 to %"struct.ap_fixed<8, 5>"*
  %42 = bitcast [64 x %"struct.ap_fixed<8, 5>"]* %25 to %"struct.ap_fixed<8, 5>"*
  %43 = bitcast [3200 x %"struct.ap_fixed<8, 5>"]* %27 to %"struct.ap_fixed<8, 5>"*
  %44 = bitcast [848 x %"struct.ap_fixed<8, 5>"]* %29 to %"struct.ap_fixed<8, 5>"*
  %45 = bitcast [64 x %"struct.ap_fixed<8, 5>"]* %31 to %"struct.ap_fixed<8, 5>"*
  %46 = bitcast [7904 x %"struct.ap_fixed<8, 5>"]* %33 to %"struct.ap_fixed<8, 5>"*
  %47 = bitcast [64 x %"struct.ap_fixed<8, 5>"]* %35 to %"struct.ap_fixed<8, 5>"*
  call void @top_hw_stub(%"struct.ap_fixed<8, 5>"* %36, %"struct.ap_fixed<8, 5>"* %37, %"struct.ap_fixed<8, 5>"* %38, %"struct.ap_fixed<8, 5>"* %39, %"struct.ap_fixed<8, 5>"* %40, %"struct.ap_fixed<8, 5>"* %41, %"struct.ap_fixed<8, 5>"* %42, %"struct.ap_fixed<8, 5>"* %43, %"struct.ap_fixed<8, 5>"* %44, %"struct.ap_fixed<8, 5>"* %45, %"struct.ap_fixed<8, 5>"* %46, %"struct.ap_fixed<8, 5>"* %47)
  call void @copy_in([848 x %"struct.ap_fixed<8, 5>"]* %13, [848 x i8]* %0, [6336 x %"struct.ap_fixed<8, 5>"]* %15, [6336 x i8]* %1, [136 x %"struct.ap_fixed<8, 5>"]* %17, [136 x i8]* %2, [64 x %"struct.ap_fixed<8, 5>"]* %19, [64 x i8]* %3, [1632 x %"struct.ap_fixed<8, 5>"]* %21, [1632 x i8]* %4, [1216 x %"struct.ap_fixed<8, 5>"]* %23, [1216 x i8]* %5, [64 x %"struct.ap_fixed<8, 5>"]* %25, [64 x i8]* %6, [3200 x %"struct.ap_fixed<8, 5>"]* %27, [3200 x i8]* %7, [848 x %"struct.ap_fixed<8, 5>"]* %29, [848 x i8]* %8, [64 x %"struct.ap_fixed<8, 5>"]* %31, [64 x i8]* %9, [7904 x %"struct.ap_fixed<8, 5>"]* %33, [7904 x i8]* %10, [64 x %"struct.ap_fixed<8, 5>"]* %35, [64 x i8]* %11)
  call void @free(i8* %12)
  call void @free(i8* %14)
  call void @free(i8* %16)
  call void @free(i8* %18)
  call void @free(i8* %20)
  call void @free(i8* %22)
  call void @free(i8* %24)
  call void @free(i8* %26)
  call void @free(i8* %28)
  call void @free(i8* %30)
  call void @free(i8* %32)
  call void @free(i8* %34)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
