erl -compile *.erl ./lib/*.erl
erl -noshell -pa lib -s main start -s init stop