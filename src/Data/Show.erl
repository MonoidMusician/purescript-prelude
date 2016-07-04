% module Data.Show
-module(data_show@foreign).
-export([showIntImpl/1, showNumberImpl/1, showCharImpl/1, showStringImpl/1, showArrayImpl/2]).

showIntImpl(N) -> integer_to_list(N).
showNumberImpl(N) -> float_to_list(N).
showCharImpl(C) ->
  case C of
    $\b -> "'\\b'";
    $\f -> "'\\f'";
    $\n -> "'\\n'";
    $\r -> "'\\r'";
    $\t -> "'\\t'";
    $\v -> "'\\v'";
    N when N < 16#20; N == 16#7F -> "'\\" ++ integer_to_list(N) ++ "'";
    C when C == $\'; C == $\\ -> "'\\" ++ [C] ++ "'";
    C -> [$\', C, $\']
  end.

showStringImpl(S) ->
  "\"" ++
  lists:flatmap(fun(C) ->
    case C of
      $\b -> "\\b";
      $\f -> "\\f";
      $\n -> "\\n";
      $\r -> "\\r";
      $\t -> "\\t";
      $\v -> "\\v";
      N when N < 16#20; N == 16#7F -> "\\" ++ integer_to_list(N);
      _ when C == $\'; C == $\\ -> "\\" ++ [C];
      _ -> [C]
    end
  end, S)
  ++ "\""
  .

showArrayImpl(F, XS) ->
  "[" ++
  string:join(lists:map(F, array:to_list(XS)), ",") ++
  "]".
