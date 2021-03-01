-module(test_utils@foreign).
-export([throwErr/1]).

throwErr(S) -> fun (_) -> error(S) end.