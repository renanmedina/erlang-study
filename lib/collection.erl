-module(collection).
-export([sum/1, list_length/1, avg/1, list_max/1]).

list_length([]) ->
  0;
list_length([_ | REST]) ->
  1 + list_length(REST).

sum([]) ->
  0;
sum([FIRST | REST]) -> 
  FIRST + sum(REST).

avg([]) ->
  0;
avg(LIST) ->
  sum(LIST) / list_length(LIST).

list_max([Head|Rest]) ->
  list_max(Rest, Head).

list_max([], Last) -> 
  Last;
list_max([Head|Rest], Biggest) when Head > Biggest ->
  list_max(Rest, Head);
list_max([_|Rest], Biggest) ->
  list_max(Rest, Biggest).