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
            
        writeln('This is encrypted');
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
        
        writeln('This is decrypted');
        writeln(word);
        Exit(word);
    end;

{will do the solve}
function solve(word: string): string;
    var
        i: integer;
        k: integer;
        ascii: integer;
    
    begin
        writeln('This is the solve');
        
        for k := 1 to 25 do
            begin
            for i := 1 to length(word) do
                begin
                    ascii := (Ord(word[i]) - 65 + k) mod 26;
                    
                    if ascii < 0 then 
                        ascii := ascii + 26;
                        
                    word[i] := Chr(ascii + 65);
                end;
            
            writeln(word);
            
        end;
        
        Exit('A');
        
    end;

{declare the variables that we will need}
var
    word : string;
    dup : string;
    move : integer;

begin

    {declaring the varaibles that we need}
    word := 'SORINZ';
    move := 5;
    
    word := encrypt(word, move);
    solve(word);
    decrypt(word, move);

end.
