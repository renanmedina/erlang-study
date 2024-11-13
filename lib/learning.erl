-module(learning).
-export([double/1, factorial/1]).

double(NUM) ->
  2 * NUM.

factorial(1) ->
  1;
factorial(N) -> 
  N * factorial(N - 1).
