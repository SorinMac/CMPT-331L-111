-module(prog).
-export([main/0]).

shift1(Char, Move) ->
	Ascii = (hd(Char) - $A + Move + 26) rem (26),
	if
		Ascii < 0 ->
			Ascii = Ascii + 26;
		true ->
			Ascii
	end,
	Ascii + $A.

shift2(Char, Move) ->
	Ascii = (hd(Char) - $A - Move + 26) rem (26),
	if
		Ascii < 0 ->
			Ascii = Ascii + 26;
		true ->
			Ascii
	end,
	Ascii + $A.
	
encrypt(Test, Move) ->
    Encrypt = lists:map(fun(Char) -> shift1([Char], Move) end, Test),
    EncryptString = lists:flatten(Encrypt),
    io:fwrite("~s~n", [EncryptString]),
    EncryptString.
	
decrypt(Test, Move) ->
	Decrypt = lists:map(fun(Char) -> shift2([Char], Move) end, Test),
    io:fwrite("~p~n", [Decrypt]).
	
solve(Test, Move, Place) ->
	Solve = lists:map(fun(Char) -> shift1([Char], Move) end, Test),
	io:fwrite("~p~n",[Solve]),
	if
		Place < 25 ->
			solve("SORINZ", Move+1, Place+1);
		true ->
			true
	end.
	
main() ->
	Test = "SORINZ",
	Move = 5,
	io:fwrite("This is Encrypt:\n"),
	Test2 = encrypt(Test, Move),
	io:fwrite("This is Solve:\n"),
	solve(Test, 1, 0),
	io:fwrite("This is Decrypt:\n"),
	decrypt(Test2, Move).
