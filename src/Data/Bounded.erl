% module Data.Bounded
-module(data_bounded@foreign).
-export([topChar/0, bottomChar/0]).

topChar() -> 16#10FFFF.
bottomChar() -> 0.
refEq(A) -> fun (B) -> A =:= B end.
refIneq(A) -> fun (B) -> A =/= B end.
