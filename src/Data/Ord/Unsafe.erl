% module Data.Ord.Unsafe
-module(data_ord_unsafe@foreign).
-export([unsafeCompareImpl/1]).

unsafeCompareImpl(LT) ->
  fun (EQ) ->
    fun (GT) ->
      fun (X) ->
        fun (Y) ->
          if
            X < Y -> LT;
            X > Y -> GT;
            true  -> EQ
          end
        end
      end
    end
  end.
