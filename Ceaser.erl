-module(prog).
-export([main/0]).

shift(Char, Move) ->
	Ascii = (hd(Char) - 65 + Move) rem (26),
	if
		Ascii < 0 ->
			Ascii = Ascii + 26;
		true ->
			Ascii
	end,
	integer_to_list(Ascii + 65).

encrypt(Test, Move) ->
    Encrypted = lists:map(fun(Char) -> shift([Char], Move) end, Test),
    io:fwrite("~p~n", [Encrypted]).
	
decrypt(Test,Move) ->
	io:fwrite("~p~n",[Test]),
	io:fwrite("~p~n",[Move]).
	
solve(Test,Move) ->
	io:fwrite("~p~n",[Test]),
	io:fwrite("~p~n",[Move]).
	
main() ->
	Test = "SORINZ",
	Move = 5,
	encrypt(Test, Move).
