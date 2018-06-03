-module(data_euclideanRing@foreign).
-export([intDegree/1, intDiv/2, intMod/2, numDiv/2]).

intDegree(X) -> abs(X).

intDiv(_, 0) -> 0;
intDiv(X, Y) -> X div Y.

intMod(_, 0) -> 0;
intMod(X, Y) -> (X rem Y + Y) rem Y.

numDiv(X, Y) -> X / Y.
