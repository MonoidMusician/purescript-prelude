-module(data_ord_unsafe@foreign).
-export([unsafeCompareImpl/5]).

unsafeCompareImpl(LT, EQ, GT, X, Y) ->
  if
    X < Y -> LT;
    X > Y -> GT;
    true  -> EQ
  end.
