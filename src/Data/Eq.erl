-module(data_eq@foreign).
-export([refEq/2,eqArrayImpl/3]).

refEq(A, B) -> A =:= B.

eqArrayImpl@1(F, [X|Xs], [Y|Ys]) ->
  case (F(X))(Y) of
    true -> eqArrayImpl@1(F,Xs,Ys);
    false -> false
  end;
eqArrayImpl@1(_, [], []) -> true;
eqArrayImpl@1(_, _, _) -> false.

eqArrayImpl(F, Xs, Ys) -> eqArrayImpl@1(F, array:to_list(Xs), array:to_list(Ys)).
