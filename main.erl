-module(main).
-export([start/0]).

start() -> 
  io:fwrite("running main module\n"),
  NUM = 25,
  DOUBLED = learning:double(NUM),
  io:fwrite("Double of ~w is ~w\n", [NUM, DOUBLED]),
  io:fwrite("Factorial of ~w is:\n", [NUM]),
  io:fwrite("~w\n", [learning:factorial(NUM)]),
  io:fwrite("134KM in meters is ~w meters\n", [distance:convert(134, meters)]),
  io:fwrite("354645 meters km is ~wKM\n", [distance:convert(354645, km)]),
  MEASURES = [1, 2, 3, 4, 5, 6, 7],
  io:fwrite("measures count is ~w\n", [collection:list_length(MEASURES)]),
  io:fwrite("measures sum is ~w\n", [collection:sum(MEASURES)]),
  io:fwrite("measures average is ~w\n", [collection:avg(MEASURES)]),
  io:fwrite("biggest measure is ~w\n", [collection:list_max(MEASURES)]),
  XGH_COLOR = color:new(253, 186, 116, 1),
  io:fwrite("XGH Color map is ~w\n", [XGH_COLOR]),
  io:fwrite("128ºF in celsius is ~w\n", [temperature:convert(128, celsius)]),
  io:fwrite("128ºC in fahrenheit is ~w\n", [temperature:convert(128, fahrenheit)]).
  