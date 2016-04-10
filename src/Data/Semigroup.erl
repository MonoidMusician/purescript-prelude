% module Data.Semigroup
-module(data_semigroup@foreign).
-export([concatString/1, concatArray/1]).

concatString(S1) -> fun (S2) -> S1 ++ S2 end.
concatArray(A1) -> fun (A2) -> A1 ++ A2 end.
