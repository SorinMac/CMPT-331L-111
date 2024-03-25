-module(prog).
-export([main/0]).

encrypt(Test,Move) ->
	io:fwrite("~p~n",[Test]),
	io:fwrite("~p~n",[Move]).
	
decrypt(Test,Move) ->
	io:fwrite("~p~n",[Test]),
	io:fwrite("~p~n",[Move]).
	
solve(Test,Move) ->
	io:fwrite("~p~n",[Test]),
	io:fwrite("~p~n",[Move]).
	
main() ->
	Test = "SORINZ",
	Move = 5,
	encrypt(Test, Move),
	decrypt(Test, Move),
	solve(Test, Move).
