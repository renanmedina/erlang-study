-module(learning).
-export([double/1, factorial/1, convert/2, sum/1, list_length/1, avg/1]).

double(NUM) ->
  2 * NUM.

factorial(1) ->
  1;
factorial(N) -> 
  N * factorial(N - 1).

convert(KM, meters) ->
  KM * 1000;
convert(METERS, km) ->
  METERS / 1000;
convert(VAL, centimeters) ->
  convert(VAL, meters).

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