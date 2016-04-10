% module Data.Eq
-module(data_eq@foreign).
-export([refEq/1, refIneq/1, eqArrayImpl/1]).
-export([eqArrayImpl/3]).

refEq(A) -> fun (B) -> A =:= B end.
refIneq(A) -> fun (B) -> A =/= B end.

eqArrayImpl(F, [X|Xs], [Y|Ys]) ->
  case (F(X))(Y) of
    true -> eqArrayImpl(F,Xs,Ys);
    false -> false
  end;
eqArrayImpl(_, [], []) -> true;
eqArrayImpl(_, _, _) -> false.

eqArrayImpl(F) ->
  fun (Xs) ->
    fun (Ys) ->
      eqArrayImpl(F, array:to_list(Xs), array:to_list(Ys))
    end
  end.
