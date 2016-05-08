% module Control.Bind
-module(control_bind@foreign).
-export([arrayBind/1]).

arrayBind(Arr) ->
  fun (F) ->
    array:map(fun (_, X) -> F(X) end, Arr)
  end.
