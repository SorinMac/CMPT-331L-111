Function Encrypt(value As String, move As integer) As String
    dim i as integer
    dim ascii as integer

    for i = 1 To len(value)
        
        'did it for encrypt just in case
        ascii = (asc(mid(value, i, 1)) - asc("A"))
        ascii = ascii + move
        ascii = ascii Mod 26
        
        if ascii < 0 then
            ascii = ascii + 26
        end if
        
        Mid(value, i, 1) = Chr(ascii + Asc("A"))
    
    next i
    
    print value
    
    return "Done"

End Function


Function Decrypt(value As String, move As integer) As String
    dim i as integer
    dim ascii as integer

    for i = 1 To len(value)
    
        'had to seperate them out BASIC did not like all that work on one line
        ascii = (asc(mid(value, i, 1)) - asc("A"))
        ascii = ascii - move
        ascii = ascii Mod 26
        
        if ascii < 0 then
            ascii = ascii + 26
        end if
        
        Mid(value, i, 1) = Chr(ascii + Asc("A"))
    
    next i
    
    print value
    
    return "Done"
    
End Function

Function Solve(value As String) As String
    
    print "Done"
    return "Done"
    
End Function

'These are my values that i will be useing throught this langauges project
dim move AS integer = 5
dim AS string test_case = "SORINZ"

'These are the calls to my function for the ceaser cipher
Encrypt(test_case, move)
Decrypt(test_case, move)
'build out solve
'Solve(test_case)
