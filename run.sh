# https://erlang.org/documentation/doc-4.9.1/erts-4.9.1/doc/html/erl.html
erl -compile *.erl ./lib/*.erl
erl -noshell -pa lib -s main start -s init stop
rm -rf ./*.beam