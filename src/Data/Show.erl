% module Data.Show
-module(data_show@foreign).
-export([showIntImpl/1, showNumberImpl/1, showCharImpl/1]).

showIntImpl(N) -> integer_to_list(N).
showNumberImpl(N) -> float_to_list(N).
showCharImpl(C) ->
  case C of
    $b -> "'\\b'";
    $f -> "'\\f'";
    $n -> "'\\n'";
    $r -> "'\\r'";
    $t -> "'\\t'";
    $v -> "'\\v'";
    N when N < 16#20; N == 16#7F -> "'\\" ++ integer_to_list(N) ++ "'";
    C when C == $\'; C == $\\ -> "'\\" ++ [C] ++ "'";
    C -> [$\', C, $\']
  end.

% exports.showStringImpl = function (s) {
%   var l = s.length;
%   return "\"" + s.replace(
%     /[\0-\x1F\x7F"\\]/g,
%     function (c, i) { // jshint ignore:line
%       switch (c) {
%         case "\"":
%         case "\\":
%           return "\\" + c;
%         case "\x07": return "\\a";
%         case "\b": return "\\b";
%         case "\f": return "\\f";
%         case "\n": return "\\n";
%         case "\r": return "\\r";
%         case "\t": return "\\t";
%         case "\v": return "\\v";
%       }
%       var k = i + 1;
%       var empty = k < l && s[k] >= "0" && s[k] <= "9" ? "\\&" : "";
%       return "\\" + c.charCodeAt(0).toString(10) + empty;
%     }
%   ) + "\"";
% };
%
% showArrayImpl(F) -> fun (XS) ->
%
%   end.
%
% exports.showArrayImpl = function (f) {
%   return function (xs) {
%     var ss = [];
%     for (var i = 0, l = xs.length; i < l; i++) {
%       ss[i] = f(xs[i]);
%     }
%     return "[" + ss.join(",") + "]";
%   };
% };
