% module Data.HeytingAlgebra
-module(data_heytingAlgebra@foreign).
-export([boolConj/1, boolDisj/1, boolNot/1]).

boolConj(A) -> fun (B) -> A and B end.
boolDisj(A) -> fun (B) -> A or B end.
boolNot(A) -> not A.
