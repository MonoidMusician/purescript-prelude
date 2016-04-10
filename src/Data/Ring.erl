% module Data.Ring
-module(data_ring@foreign).
-export([intSub/1, numSub/1]).

intSub(N) -> fun (M) -> N - M end.
numSub(N) -> fun (M) -> N - M end.
