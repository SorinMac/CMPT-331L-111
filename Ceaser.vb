Function Encrypt(value As String, move As integer) As String
    'values that i will need to use for thing in this equation
    dim i as integer
    dim ascii as integer

    for i = 1 To len(value)
        
        'did it for encrypt just in case
        'have to seperate it out basic does not like having all the stuff toghether at once
        ascii = (asc(mid(value, i, 1)) - asc("A"))
        ascii = ascii + move
        ascii = ascii Mod 26

        'wrap around stuff
        if ascii < 0 then
            ascii = ascii + 26
        end if
        
        'turning it back to for the string
        Mid(value, i, 1) = Chr(ascii + Asc("A"))
    
    next i
    
    'general text stuff
    print "This is Encrypt"
    print value
    
    return "Done"

End Function


Function Decrypt(value As String, move As integer) As String
    'values that i will need to use for thing in this equation
    dim i as integer
    dim ascii as integer

    for i = 1 To len(value)
    
        'had to seperate them out BASIC did not like all that work on one line
        ascii = (asc(mid(value, i, 1)) - asc("A"))
        ascii = ascii - move
        ascii = ascii Mod 26
        
        'wrap around stuff
        if ascii < 0 then
            ascii = ascii + 26
        end if

        'general text stuff
        Mid(value, i, 1) = Chr(ascii + Asc("A"))
    
    next i
    
    'message output stuff
    print "This is Decrypt"
    print value
    
    return "Done"
    
End Function

Function Solve(value As String) As String

    'need two for the double for loop
    dim i as integer
    dim k as integer
    dim ascii as integer
    dim AS string clone = value
    
    print "This is all of them: "
    
    for i = 1 To 25
        clone = value
        for k = 1 To len(clone)

            'same kind of seperation
            ascii = (asc(mid(clone, k, 1)) - asc("A"))
            ascii = ascii + i
            ascii = ascii Mod 26
            
            'wrap around stuff
            if ascii < 0 then
                ascii = ascii + 26
            end if

            'turning it back 
            Mid(clone, k, 1) = Chr(ascii + Asc("A"))
        next k
        
        'ouput stuff
        print clone
        
    next i
    
    return "Done"
    
End Function

'These are my values that i will be useing throught this langauges project
dim move AS integer = 5
dim AS string test_case = "SORINZ"

'These are the calls to my function for the ceaser cipher
Encrypt(test_case, move)
Solve(test_case)
Decrypt(test_case, move)
