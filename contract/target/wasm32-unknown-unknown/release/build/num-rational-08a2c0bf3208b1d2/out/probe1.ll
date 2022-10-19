; ModuleID = 'probe1.5ebf9da7-cgu.0'
source_filename = "probe1.5ebf9da7-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"core::panic::location::Location" = type { { [0 x i8]*, i32 }, i32, i32 }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::fmt::Formatter" = type { i32, i32, { i32, i32 }, { i32, i32 }, { {}*, [3 x i32]* }, i8, [3 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i32 }]*, i32 }, { i32*, i32 }, { [0 x { i8*, i32* }]*, i32 } }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i32 }, i32 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i32] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i32], i32 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i32, i32 } } }
%"alloc::alloc::Global" = type {}
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }

@alloc9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [4 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [4 x i8] c"\0C\00\00\00" }>, align 4
@alloc3 = private unnamed_addr constant <{}> zeroinitializer, align 4
@alloc45 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/76761db5919b6d2e178b26947ad9b4fcb0ff0e7c/library/core/src/fmt/mod.rs" }>, align 1
@alloc46 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc45, i32 0, i32 0, i32 0), [12 x i8] c"K\00\00\00\86\01\00\00\0D\00\00\00" }>, align 4
@alloc47 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/76761db5919b6d2e178b26947ad9b4fcb0ff0e7c/library/core/src/alloc/layout.rs" }>, align 1
@alloc48 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc47, i32 0, i32 0, i32 0), [12 x i8] c"P\00\00\00\97\01\00\00\1A\00\00\00" }>, align 4
@alloc49 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/76761db5919b6d2e178b26947ad9b4fcb0ff0e7c/library/alloc/src/raw_vec.rs" }>, align 1
@alloc50 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc49, i32 0, i32 0, i32 0), [12 x i8] c"L\00\00\00\F7\00\00\00;\00\00\00" }>, align 4
@alloc4 = private unnamed_addr constant <{ i8*, [4 x i8] }> <{ i8* bitcast (<{}>* @alloc3 to i8*), [4 x i8] zeroinitializer }>, align 4
@alloc6 = private unnamed_addr constant <{ [4 x i8] }> zeroinitializer, align 4

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h704e76bacb34ef05E"(i8* %unique) unnamed_addr #0 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd246c1f3d9446fb1E"(i8* %unique) #8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1474959fc5efdb6bE"(i8* %_2) #8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; <core::ptr::unique::Unique<T> as core::convert::From<core::ptr::non_null::NonNull<T>>>::from
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h3479f95d603c89baE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  store i8* %pointer, i8** %0, align 4
  %1 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
  ret i8* %1
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha94ef27e11cc58d1E"(%"core::panic::location::Location"* align 4 %0) unnamed_addr #0 {
start:
  %1 = alloca { i32, i32 }, align 4
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd378e576e401c8e6E"() #8
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i32, i32 }* %1 to %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"*
  %3 = bitcast %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"* %2 to %"core::alloc::layout::LayoutError"*
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4, !range !1, !noundef !0
  %9 = insertvalue { i32, i32 } undef, i32 %6, 0
  %10 = insertvalue { i32, i32 } %9, i32 %8, 1
  ret { i32, i32 } %10
}

; core::fmt::ArgumentV1::new_lower_exp
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32* } @_ZN4core3fmt10ArgumentV113new_lower_exp17h60ac9592e4cc12ccE(i32* align 4 %x) unnamed_addr #0 {
start:
; call core::fmt::ArgumentV1::new
  %0 = call { i8*, i32* } @_ZN4core3fmt10ArgumentV13new17hc747d7495e7220a3E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h8947ea9f8f169369E") #8
  %1 = extractvalue { i8*, i32* } %0, 0
  %2 = extractvalue { i8*, i32* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i32* } undef, i8* %1, 0
  %4 = insertvalue { i8*, i32* } %3, i32* %2, 1
  ret { i8*, i32* } %4
}

; core::fmt::ArgumentV1::new
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32* } @_ZN4core3fmt10ArgumentV13new17hc747d7495e7220a3E(i32* align 4 %x, i1 (i32*, %"core::fmt::Formatter"*)* %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 4
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 4
  %2 = alloca { i8*, i32* }, align 4
  %3 = bitcast i1 (i32*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 4
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 4, !nonnull !0, !noundef !0
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 4
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 4, !nonnull !0, !align !2, !noundef !0
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i32* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 4
  %6 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 1
  %7 = bitcast i32** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 4
  %8 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 4, !nonnull !0, !align !2, !noundef !0
  %10 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 1
  %11 = load i32*, i32** %10, align 4, !nonnull !0, !noundef !0
  %12 = insertvalue { i8*, i32* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32* } %12, i32* %11, 1
  ret { i8*, i32* } %13
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3fmt9Arguments6new_v117h35de5cc96822e341E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i32 }]* align 4 %pieces.0, i32 %pieces.1, [0 x { i8*, i32* }]* align 4 %args.0, i32 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i32*, i32 }, align 4
  %_16 = alloca %"core::fmt::Arguments", align 4
  %_3 = alloca i8, align 1
  %_4 = icmp ult i32 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i32 %args.1, 1
  %_9 = icmp ugt i32 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_3, align 1, !range !3, !noundef !0
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i32*, i32 }* %_24 to {}**
  store {}* null, {}** %4, align 4
  %5 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i32 }]* %pieces.0, [0 x { [0 x i8]*, i32 }]** %6, align 4
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %5, i32 0, i32 1
  store i32 %pieces.1, i32* %7, align 4
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_24, i32 0, i32 0
  %10 = load i32*, i32** %9, align 4, !align !4
  %11 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_24, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %8, i32 0, i32 0
  store i32* %10, i32** %13, align 4
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %8, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %15, i32 0, i32 0
  store [0 x { i8*, i32* }]* %args.0, [0 x { i8*, i32* }]** %16, align 4
  %17 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %15, i32 0, i32 1
  store i32 %args.1, i32* %17, align 4
  ret void

bb4:                                              ; preds = %bb3
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h35de5cc96822e341E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i32 }]* align 4 bitcast (<{ i8*, [4 x i8] }>* @alloc10 to [0 x { [0 x i8]*, i32 }]*), i32 1, [0 x { i8*, i32* }]* align 4 bitcast (<{}>* @alloc3 to [0 x { i8*, i32* }]*), i32 0) #8
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h37cdd0e0ff495020E(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc46 to %"core::panic::location::Location"*)) #9
  unreachable
}

; core::mem::valid_align::ValidAlign::as_nonzero
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd9f0d97c892bbf03E(i32 %self) unnamed_addr #0 {
start:
  %0 = icmp uge i32 %self, 1
  call void @llvm.assume(i1 %0)
  %1 = icmp ule i32 %self, -2147483648
  call void @llvm.assume(i1 %1)
; call core::num::nonzero::NonZeroUsize::new_unchecked
  %2 = call i32 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h76a7ee2a57b66a85E(i32 %self) #8, !range !5
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; core::mem::valid_align::ValidAlign::new_unchecked
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hf1fea5a84851c9c9E(i32 %align) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %align, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !6, !noundef !0
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::num::<impl usize>::checked_mul
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd31e305479872685E"(i32 %self, i32 %rhs) unnamed_addr #0 {
start:
  %0 = alloca { i32, i8 }, align 4
  %1 = alloca { i32, i8 }, align 4
  %2 = alloca i8, align 1
  %3 = alloca { i32, i32 }, align 4
  %4 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %self, i32 %rhs) #8
  %5 = extractvalue { i32, i1 } %4, 0
  %6 = extractvalue { i32, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i32, i8 }* %0 to i32*
  store i32 %5, i32* %8, align 4
  %9 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 4
  %10 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i32, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 4, !range !3, !noundef !0
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i32, i8 }* %1 to i32*
  store i32 %_5.0.i, i32* %13, align 4
  %14 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 4
  %16 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 4, !range !3, !noundef !0
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i32, i8 } undef, i32 %17, 0
  %23 = insertvalue { i32, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i32, i8 } %23, 0
  %24 = extractvalue { i32, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !3, !noundef !0
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  store i32 %_5.0, i32* %28, align 4
  %29 = bitcast { i32, i32 }* %3 to i32*
  store i32 1, i32* %29, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  %30 = bitcast { i32, i32 }* %3 to i32*
  store i32 0, i32* %30, align 4
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %31 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4, !range !7, !noundef !0
  %33 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = insertvalue { i32, i32 } undef, i32 %32, 0
  %36 = insertvalue { i32, i32 } %35, i32 %34, 1
  ret { i32, i32 } %36
}

; core::num::nonzero::NonZeroUsize::new_unchecked
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h76a7ee2a57b66a85E(i32 %n) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 %n, i32* %0, align 4
  %1 = load i32, i32* %0, align 4, !range !5, !noundef !0
  ret i32 %1
}

; core::num::nonzero::NonZeroUsize::get
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core3num7nonzero12NonZeroUsize3get17h65cfe9e6ffdb15b2E(i32 %self) unnamed_addr #0 {
start:
  ret i32 %self
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @_ZN4core3ptr24slice_from_raw_parts_mut17ha2cdfab453061d56E(i8* %data, i32 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x i8]*, i32 } @_ZN4core3ptr8metadata18from_raw_parts_mut17ha8be5b4d77bde1ccE({}* %0, i32 %len) #8
  %2 = extractvalue { [0 x i8]*, i32 } %1, 0
  %3 = extractvalue { [0 x i8]*, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i32 } %4, i32 %3, 1
  ret { [0 x i8]*, i32 } %5
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hca8e6a0104c4fcb3E"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc0dc4de6e55f0244E"(%"alloc::vec::Vec<u8>"* %0) #8
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hc0dc4de6e55f0244E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3057660958eab02dE"(%"alloc::vec::Vec<u8>"* align 4 %_1) #8
  br label %bb2

bb2:                                              ; preds = %start
  %0 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i32 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc5651fa102ba934eE"({ i8*, i32 }* %0) #8
  br label %bb1

bb1:                                              ; preds = %bb2
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hc5651fa102ba934eE"({ i8*, i32 }* %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h514f183d5bd5623dE"({ i8*, i32 }* align 4 %_1) #8
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h77dbb799ef8791ceE"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::cast
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h30306b3fa1d8e644E"(i8* %self) #8
  br label %bb1

bb1:                                              ; preds = %start
; call <core::ptr::unique::Unique<T> as core::convert::From<core::ptr::non_null::NonNull<T>>>::from
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h3479f95d603c89baE"(i8* %_2) #8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd246c1f3d9446fb1E"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb23ddffd46066f3bE"(i8* %self) #8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
; Function Attrs: inlinehint nounwind
define hidden zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hd387a21ea54b6a61E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !0
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind
define hidden zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h44ea46937d921f44E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  %1 = bitcast i8** %0 to i32*
  store i32 0, i32* %1, align 4
  %2 = load i8*, i8** %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hd387a21ea54b6a61E"(i8* %self, i8* %2) #8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %3
}

; core::ptr::metadata::from_raw_parts_mut
; Function Attrs: inlinehint nounwind
define hidden { [0 x i8]*, i32 } @_ZN4core3ptr8metadata18from_raw_parts_mut17ha8be5b4d77bde1ccE({}* %data_address, i32 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i32 }, align 4
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
  %0 = bitcast { i8*, i32 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 4
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 1
  store i32 %metadata, i32* %1, align 4
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i32 }*
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 4
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 4
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i32 }*
  %10 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 4
  %12 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %9, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = insertvalue { [0 x i8]*, i32 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i32 } %14, i32 %13, 1
  ret { [0 x i8]*, i32 } %15
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1474959fc5efdb6bE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  store i8* %ptr, i8** %0, align 4
  %1 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h30306b3fa1d8e644E"(i8* %self) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb23ddffd46066f3bE"(i8* %self) #8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h1474959fc5efdb6bE"(i8* %_3) #8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb23ddffd46066f3bE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; core::hint::unreachable_unchecked
; Function Attrs: inlinehint noreturn nounwind
define internal void @_ZN4core4hint21unreachable_unchecked17h00480a899ff08c5bE() unnamed_addr #2 {
start:
  unreachable
}

; core::alloc::layout::Layout::from_size_align_unchecked
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h351b1e8f441b2ad6E(i32 %size, i32 %align) unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
; call core::mem::valid_align::ValidAlign::new_unchecked
  %_4 = call i32 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17hf1fea5a84851c9c9E(i32 %align) #8, !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i32, i32 }* %0 to i32*
  store i32 %size, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_4, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !6, !noundef !0
  %7 = insertvalue { i32, i32 } undef, i32 %4, 0
  %8 = insertvalue { i32, i32 } %7, i32 %6, 1
  ret { i32, i32 } %8
}

; core::alloc::layout::Layout::size
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core5alloc6layout6Layout4size17heb4faad3f1b749d7E({ i32, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i32, i32 }* %self to i32*
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

; core::alloc::layout::Layout::align
; Function Attrs: inlinehint nounwind
define internal i32 @_ZN4core5alloc6layout6Layout5align17h5eac9b6256c88598E({ i32, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %_3 = load i32, i32* %0, align 4, !range !6, !noundef !0
; call core::mem::valid_align::ValidAlign::as_nonzero
  %_2 = call i32 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17hd9f0d97c892bbf03E(i32 %_3) #8, !range !5
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::nonzero::NonZeroUsize::get
  %1 = call i32 @_ZN4core3num7nonzero12NonZeroUsize3get17h65cfe9e6ffdb15b2E(i32 %_2) #8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; core::alloc::layout::Layout::array
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @_ZN4core5alloc6layout6Layout5array17h6fdd7de8ebb740caE(i32 %n) unnamed_addr #0 {
start:
  %_3 = alloca { i32, i32 }, align 4
  %0 = alloca { i32, i32 }, align 4
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::checked_mul
  %1 = call { i32, i32 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hd31e305479872685E"(i32 1, i32 %n) #8
  %_5.0 = extractvalue { i32, i32 } %1, 0
  %_5.1 = extractvalue { i32, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::option::Option<T>::ok_or
  %2 = call { i32, i32 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17he82801977c90f9deE"(i32 %_5.0, i32 %_5.1) #8
  %_4.0 = extractvalue { i32, i32 } %2, 0
  %_4.1 = extractvalue { i32, i32 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %3 = call { i32, i32 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7fcc74cca937b689E"(i32 %_4.0, i32 %_4.1) #8
  store { i32, i32 } %3, { i32, i32 }* %_3, align 4
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i32, i32 }* %_3 to i32*
  %_9 = load i32, i32* %4, align 4, !range !7, !noundef !0
  switch i32 %_9, label %bb6 [
    i32 0, label %bb5
    i32 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_3, i32 0, i32 1
  %val = load i32, i32* %5, align 4
  br label %bb9

bb7:                                              ; preds = %bb4
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %6 = call { i32, i32 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17ha94ef27e11cc58d1E"(%"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc48 to %"core::panic::location::Location"*)) #8
  store { i32, i32 } %6, { i32, i32 }* %0, align 4
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !range !1, !noundef !0
  %11 = insertvalue { i32, i32 } undef, i32 %8, 0
  %12 = insertvalue { i32, i32 } %11, i32 %10, 1
  ret { i32, i32 } %12

bb9:                                              ; preds = %bb5
; call core::alloc::layout::Layout::from_size_align_unchecked
  %13 = call { i32, i32 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h351b1e8f441b2ad6E(i32 %val, i32 1) #8
  %_13.0 = extractvalue { i32, i32 } %13, 0
  %_13.1 = extractvalue { i32, i32 } %13, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  store i32 %_13.0, i32* %14, align 4
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %_13.1, i32* %15, align 4
  br label %bb11
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17he82801977c90f9deE"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca { i32, i32 }, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i32, i32 }* %self to i32*
  %_3 = load i32, i32* %5, align 4, !range !7, !noundef !0
  switch i32 %_3, label %bb2 [
    i32 0, label %bb1
    i32 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %7 = bitcast i32* %6 to %"core::alloc::layout::LayoutError"*
  %8 = bitcast { i32, i32 }* %2 to i32*
  store i32 1, i32* %8, align 4
  br label %bb6

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %v = load i32, i32* %9, align 4
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %v, i32* %10, align 4
  %11 = bitcast { i32, i32 }* %2 to i32*
  store i32 0, i32* %11, align 4
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %12 = load i8, i8* %_7, align 1, !range !3, !noundef !0
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 4, !range !7, !noundef !0
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = insertvalue { i32, i32 } undef, i32 %15, 0
  %19 = insertvalue { i32, i32 } %18, i32 %17, 1
  ret { i32, i32 } %19

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::result::Result<T,E>::unwrap_unchecked
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17ha36fa140fa105c60E"(i32 %0, i32 %1, %"core::panic::location::Location"* align 4 %2) unnamed_addr #0 {
start:
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !1, !noundef !0
  %7 = icmp eq i32 %6, 0
  %_2 = select i1 %7, i32 1, i32 0
  switch i32 %_2, label %bb2 [
    i32 0, label %bb3
    i32 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %t.0 = load i32, i32* %8, align 4
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %t.1 = load i32, i32* %9, align 4, !range !6, !noundef !0
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %11 = load i32, i32* %10, align 4, !range !1, !noundef !0
  %12 = icmp eq i32 %11, 0
  %_5 = select i1 %12, i32 1, i32 0
  %13 = icmp eq i32 %_5, 0
  br i1 %13, label %bb4, label %bb5

bb1:                                              ; preds = %start
; call core::hint::unreachable_unchecked
  call void @_ZN4core4hint21unreachable_unchecked17h00480a899ff08c5bE() #9
  unreachable

bb4:                                              ; preds = %bb5, %bb3
  %14 = insertvalue { i32, i32 } undef, i32 %t.0, 0
  %15 = insertvalue { i32, i32 } %14, i32 %t.1, 1
  ret { i32, i32 } %15

bb5:                                              ; preds = %bb3
  br label %bb4
}

; <T as core::convert::From<T>>::from
; Function Attrs: nounwind
define hidden void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hd378e576e401c8e6E"() unnamed_addr #1 {
start:
  ret void
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nounwind
define hidden i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hc7f5a47ef8088c90E"(i8* %self) unnamed_addr #1 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h704e76bacb34ef05E"(i8* %self) #8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h3fc99f8aef465c2dE"(%"alloc::vec::Vec<u8>"* align 4 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i32 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h30b1f81f4c64bab7E"({ i8*, i32 }* align 4 %_2) #8
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h44ea46937d921f44E"(i8* %ptr) #8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; alloc::alloc::dealloc
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc5alloc7dealloc17hc25506119e2021a9E(i8* %ptr, i32 %0, i32 %1) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::layout::Layout::size
  %_4 = call i32 @_ZN4core5alloc6layout6Layout4size17heb4faad3f1b749d7E({ i32, i32 }* align 4 %layout) #8
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_6 = call i32 @_ZN4core5alloc6layout6Layout5align17h5eac9b6256c88598E({ i32, i32 }* align 4 %layout) #8
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i32 %_4, i32 %_6) #8
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nounwind
define hidden void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h8466ee4e12109154E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i32 }* align 4 %self) unnamed_addr #1 {
start:
  %_9 = alloca { i8*, { i32, i32 } }, align 4
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i32 1, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_5 = load i32, i32* %2, align 4
  %_4 = icmp eq i32 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_2, align 1, !range !3, !noundef !0
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_8 = load i32, i32* %6, align 4
; call core::alloc::layout::Layout::array
  %7 = call { i32, i32 } @_ZN4core5alloc6layout6Layout5array17h6fdd7de8ebb740caE(i32 %_8) #8
  %_7.0 = extractvalue { i32, i32 } %7, 0
  %_7.1 = extractvalue { i32, i32 } %7, 1
  br label %bb7

bb5:                                              ; preds = %bb3
  %8 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i32 0, i32* %8, align 4
  br label %bb11

bb11:                                             ; preds = %bb10, %bb5
  ret void

bb7:                                              ; preds = %bb6
; call core::result::Result<T,E>::unwrap_unchecked
  %9 = call { i32, i32 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17ha36fa140fa105c60E"(i32 %_7.0, i32 %_7.1, %"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc50 to %"core::panic::location::Location"*)) #8
  %layout.0 = extractvalue { i32, i32 } %9, 0
  %layout.1 = extractvalue { i32, i32 } %9, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %10 = bitcast { i8*, i32 }* %self to i8**
  %_12 = load i8*, i8** %10, align 4, !nonnull !0, !noundef !0
; call core::ptr::unique::Unique<T>::cast
  %_11 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h77dbb799ef8791ceE"(i8* %_12) #8
  br label %bb9

bb9:                                              ; preds = %bb8
; call <T as core::convert::Into<U>>::into
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hc7f5a47ef8088c90E"(i8* %_11) #8
  br label %bb10

bb10:                                             ; preds = %bb9
  %11 = bitcast { i8*, { i32, i32 } }* %_9 to i8**
  store i8* %_10, i8** %11, align 4
  %12 = getelementptr inbounds { i8*, { i32, i32 } }, { i8*, { i32, i32 } }* %_9, i32 0, i32 1
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %12, i32 0, i32 0
  store i32 %layout.0, i32* %13, align 4
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %12, i32 0, i32 1
  store i32 %layout.1, i32* %14, align 4
  %15 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %16 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %15 to { i8*, { i32, i32 } }*
  %17 = bitcast { i8*, { i32, i32 } }* %16 to i8*
  %18 = bitcast { i8*, { i32, i32 } }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %17, i8* align 4 %18, i32 12, i1 false)
  br label %bb11
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h30b1f81f4c64bab7E"({ i8*, i32 }* align 4 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i32 }* %self to i8**
  %_2 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd246c1f3d9446fb1E"(i8* %_2) #8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nounwind
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfb9976cb1102fcb1E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i32 %0, i32 %1) unnamed_addr #0 {
start:
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
; call core::alloc::layout::Layout::size
  %_4 = call i32 @_ZN4core5alloc6layout6Layout4size17heb4faad3f1b749d7E({ i32, i32 }* align 4 %layout) #8
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i32 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hb23ddffd46066f3bE"(i8* %ptr) #8
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_8.0 = load i32, i32* %5, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_8.1 = load i32, i32* %6, align 4, !range !6, !noundef !0
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hc25506119e2021a9E(i8* %_6, i32 %_8.0, i32 %_8.1) #8
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3057660958eab02dE"(%"alloc::vec::Vec<u8>"* align 4 %self) unnamed_addr #1 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h3fc99f8aef465c2dE"(%"alloc::vec::Vec<u8>"* align 4 %self) #8
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i32, i32* %0, align 4
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x i8]*, i32 } @_ZN4core3ptr24slice_from_raw_parts_mut17ha2cdfab453061d56E(i8* %_3, i32 %_5) #8
  %_2.0 = extractvalue { [0 x i8]*, i32 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i32 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h514f183d5bd5623dE"({ i8*, i32 }* align 4 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 4
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h8466ee4e12109154E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i32 }* align 4 %self) #8
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i32, i32* %0, align 4, !range !1, !noundef !0
  %2 = icmp eq i32 %1, 0
  %_4 = select i1 %2, i32 0, i32 1
  %3 = icmp eq i32 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i32, i32 } }*
  %6 = bitcast { i8*, { i32, i32 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 4, !nonnull !0, !noundef !0
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i32, i32 } }*
  %9 = getelementptr inbounds { i8*, { i32, i32 } }, { i8*, { i32, i32 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 0
  %layout.0 = load i32, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 1
  %layout.1 = load i32, i32* %11, align 4, !range !6, !noundef !0
  %_7 = bitcast { i8*, i32 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hfb9976cb1102fcb1E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i32 %layout.0, i32 %layout.1) #8
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h7fcc74cca937b689E"(i32 %0, i32 %1) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i32, i32 }, align 4
  %self = alloca { i32, i32 }, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %1, i32* %4, align 4
  %5 = bitcast { i32, i32 }* %self to i32*
  %_2 = load i32, i32* %5, align 4, !range !7, !noundef !0
  switch i32 %_2, label %bb2 [
    i32 0, label %bb3
    i32 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %v = load i32, i32* %6, align 4
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %v, i32* %7, align 4
  %8 = bitcast { i32, i32 }* %2 to i32*
  store i32 0, i32* %8, align 4
  br label %bb4

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"* %_6 to %"core::alloc::layout::LayoutError"*
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %11 = bitcast i32* %10 to %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"*
  %12 = bitcast { i32, i32 }* %2 to i32*
  store i32 1, i32* %12, align 4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4, !range !7, !noundef !0
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = insertvalue { i32, i32 } undef, i32 %14, 0
  %18 = insertvalue { i32, i32 } %17, i32 %16, 1
  ret { i32, i32 } %18
}

; probe1::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe15probe17hb99752d61a4f9cc8E() unnamed_addr #1 {
start:
  %_10 = alloca [1 x { i8*, i32* }], align 4
  %_3 = alloca %"core::fmt::Arguments", align 4
  %res = alloca %"alloc::string::String", align 4
  %_1 = alloca %"alloc::string::String", align 4
; call core::fmt::ArgumentV1::new_lower_exp
  %0 = call { i8*, i32* } @_ZN4core3fmt10ArgumentV113new_lower_exp17h60ac9592e4cc12ccE(i32* align 4 bitcast (<{ [4 x i8] }>* @alloc6 to i32*)) #8
  %_11.0 = extractvalue { i8*, i32* } %0, 0
  %_11.1 = extractvalue { i8*, i32* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [1 x { i8*, i32* }]* %_10 to { i8*, i32* }*
  %2 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %1, i32 0, i32 0
  store i8* %_11.0, i8** %2, align 4
  %3 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %1, i32 0, i32 1
  store i32* %_11.1, i32** %3, align 4
  %_7.0 = bitcast [1 x { i8*, i32* }]* %_10 to [0 x { i8*, i32* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h35de5cc96822e341E(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i32 }]* align 4 bitcast (<{ i8*, [4 x i8] }>* @alloc4 to [0 x { [0 x i8]*, i32 }]*), i32 1, [0 x { i8*, i32* }]* align 4 %_7.0, i32 1) #8
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17he4bee87e273eb0f1E(%"alloc::string::String"* sret(%"alloc::string::String") %res, %"core::fmt::Arguments"* %_3) #8
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast %"alloc::string::String"* %_1 to i8*
  %5 = bitcast %"alloc::string::String"* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %4, i8* align 4 %5, i32 12, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hca8e6a0104c4fcb3E"(%"alloc::string::String"* %_1) #8
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nounwind
declare dso_local zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h8947ea9f8f169369E"(i32* align 4, %"core::fmt::Formatter"* align 4) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking9panic_fmt17h37cdd0e0ff495020E(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 4) unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind
declare dso_local void @__rust_dealloc(i8*, i32, i32) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #7

; alloc::fmt::format
; Function Attrs: nounwind
declare dso_local void @_ZN5alloc3fmt6format17he4bee87e273eb0f1E(%"alloc::string::String"* sret(%"alloc::string::String"), %"core::fmt::Arguments"*) unnamed_addr #1

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { inlinehint noreturn nounwind "target-cpu"="generic" }
attributes #3 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!0 = !{}
!1 = !{i32 0, i32 -2147483647}
!2 = !{i64 1}
!3 = !{i8 0, i8 2}
!4 = !{i64 4}
!5 = !{i32 1, i32 0}
!6 = !{i32 1, i32 -2147483647}
!7 = !{i32 0, i32 2}
