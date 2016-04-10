% module Data.Eq
-module(data_eq@foreign).
-export([refEq/1, refIneq/1]).

refEq(A) -> fun (B) -> A =:= B end.
refIneq(A) -> fun (B) -> A =/= B end.
