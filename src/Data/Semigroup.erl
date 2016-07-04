-module(data_semigroup@foreign).
-export([concatString/2, concatArray/2]).

concatString(S1, S2) -> S1 ++ S2.
concatArray(A1, A2) -> array:from_list(array:to_list(A1) ++ array:to_list(A2)).
