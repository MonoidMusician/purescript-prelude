-module(test_main@foreign).
-export([testNumberShow/1, throwErr/1]).

testNumberShow(_) -> unit.
throwErr(S) -> fun () -> error(S) end.