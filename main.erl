-module(main).
-export([start/0]).

start() -> 
  io:fwrite("running main module\n"),
  DOUBLED = learning:double(25),
  io:fwrite("~w\n", [DOUBLED]).