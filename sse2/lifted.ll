; ModuleID = 'lifted_code'
source_filename = "lifted_code"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-windows-msvc-coff"

@GadgetFunctions = dllexport constant [1 x i64 (i8*, i8*)*] [i64 (i8*, i8*)* @F_140001000_args], align 1
@GadgetVAs = dllexport constant [1 x i64] [i64 5368713216], align 1
@GadgetCount = dllexport constant i32 1
@ImageBase = dllexport constant i64 5368709120

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local dllexport i64 @F_140001000_args(i8* %RCX, i8* %RDX) local_unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %RCX to i64
  %1 = ptrtoint i8* %RDX to i64
  %2 = and i64 %0, 4294967295
  %3 = and i64 %1, 4294967295
  %4 = add i64 %1, %0
  %5 = mul nuw i64 %3, %2
  %6 = and i64 %5, 4294967295
  %7 = and i64 %4, 4294967295
  %8 = mul nuw i64 %6, %7
  %9 = and i64 %8, 4294967295
  ret i64 %9
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }