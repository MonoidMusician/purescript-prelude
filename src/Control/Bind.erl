-module(control_bind@foreign).
-export([arrayBind/2]).

arrayBind(Arr, F) ->
  array:map(fun (_, X) -> F(X) end, Arr).
