-module(color).

-export([new/4]).

-define(is_channel(V), (is_integer(V) andalso V >= 0 andalso V =< 255)).

new(R,G,B,A) when ?is_channel(R), ?is_channel(G),
                  ?is_channel(B), ?is_channel(A) ->
    #{red => R, green => G, blue => B, alpha => A}.