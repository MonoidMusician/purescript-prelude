% module Data.Semiring
-module(data_semiring@foreign).
-export([intAdd/1, intMul/1, numAdd/1, numMul/1]).

intAdd(X) -> fun(Y) -> X + Y end.
intMul(X) -> fun(Y) -> X * Y end.

numAdd(X) -> fun(Y) -> X + Y end.
numMul(X) -> fun(Y) -> X * Y end.
