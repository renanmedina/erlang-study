-module(temperatures).
-export([convert/2]).

convert(FAH, celsius) ->
  (FAH - 32) * 5/9;
convert(CELSIUS, fahrenheit) ->
  CELSIUS * (9/5) + 32.