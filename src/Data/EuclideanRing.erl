-module(data_euclideanRing@foreign).
-export([intDegree/1, intDiv/2, intMod/2, numDiv/2]).

intDegree(X) -> abs(X).
intDiv(X, Y) -> X div Y.
intMod(X, Y) -> X rem Y.
numDiv(X, Y) -> X / Y.
