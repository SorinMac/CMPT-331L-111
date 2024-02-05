program Ceaser;
    
{will do the encrypt}
function encrypt(word: string; move: integer): string;

    var
        i: integer;
        ascii: integer;
    
    begin
        for i := 1 to length(word) do
            begin
                ascii := (Ord(word[i]) - 65 + move) mod 26;
                
                if ascii < 0 then 
                    ascii := ascii + 26;
                    
                word[i] := Chr(ascii + 65);
            end;
        
        writeln(word);
        Exit(word);
    end;

{will do the decrypt}
function decrypt(word: string; move: integer): string;

    var
        i: integer;
        ascii: integer;
    
    begin
        for i := 1 to length(word) do
            begin
                ascii := (Ord(word[i]) - 65 - move) mod 26;
                
                if ascii < 0 then 
                    ascii := ascii + 26;
                    
                word[i] := Chr(ascii + 65);
            end;
        
        writeln(word);
        Exit(word);
    end;

{will do the solve}
function solve(word: string): string;
begin
    writeln('Hello World');
    Exit('A')
end;

{declare the variables that we will need}
var
    word : string;
    move : integer;

begin

    {declaring the varaibles that we need}
    word := 'SORINZ';
    move := 5;
    
    word := encrypt(word, move);
    decrypt(word, move);

end.
