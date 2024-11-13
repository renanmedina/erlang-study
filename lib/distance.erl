-module(distance).
-export([convert/2]).

convert(KM, meters) ->
  KM * 1000;
convert(METERS, km) ->
  METERS / 1000;
convert(VAL, centimeters) ->
  convert(VAL, meters).