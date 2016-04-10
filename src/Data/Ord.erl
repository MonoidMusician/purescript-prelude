% module Data.Ord
-module(data_ord@foreign).
-export([ordArrayImpl/1]).
-export([ordArrayImpl/3]).

ordArrayImpl(F, [X|XS], [Y|YS]) ->
  case (F(X))(Y) of
    0 -> ordArrayImpl(F, XS, YS);
    N -> N
  end;
ordArrayImpl(_, [], []) -> 0;
ordArrayImpl(_, _, []) -> -1;
ordArrayImpl(_, [], _) -> 1.

ordArrayImpl(F) ->
  fun (XS) ->
    fun (YS) ->
      ordArrayImpl(F, array:to_list(XS), array:to_list(YS))
    end
  end.
