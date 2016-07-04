-module(data_bounded@foreign).
-export([topChar/0, bottomChar/0, refEq/2, refIneq/2]).

topChar() -> 16#10FFFF.
bottomChar() -> 0.
refEq(A, B) -> A =:= B.
refIneq(A, B) -> A =/= B.
