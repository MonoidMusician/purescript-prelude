% module Data.EuclideanRing
-module(data_euclideanRing@foreign).
-export([intDegree/1, intDiv/1, intMod/1, numDiv/1]).

intDegree(X) -> abs(X).
intDiv(X) -> fun (Y) -> X div Y end.
intMod(X) -> fun (Y) -> X rem Y end.
numDiv(X) -> fun (Y) -> X / Y end.
