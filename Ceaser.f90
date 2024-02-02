Program Ceaser

    implicit none
    
    !This is where I set up my test case
    !Very strange way to inilize a variable
    !Also no strings :() what the hell
    integer :: move = 5
    character(len=26) :: test = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    integer :: i
    
    !Calls for my functions
    CALL encrypt(test, move)
    
    CALL solve(test)
    
    CALL decrypt(test, move)
    
    !this is to test if everything actually runs through or not
    !if i see the DONE message then i know that eerything went smothly ¯\_(ツ)_/¯
    print *, "DONE"

CONTAINS
    
    !There are two
    !Funtion & SUBROUTINE
    !SUBROUTINE much better need to have multiple values to return
    !in out and inout are the stranges thing I have ever seen
    
    
    SUBROUTINE encrypt(word, move)
        !use inout cause we want to modifie the value as well as use it
        Character(len=*), Intent(inout) :: word
        !just need to use the number
        Integer, Intent(in) :: move
        
        integer :: i
        integer :: ascii
        !thank god i can get length of word
        !half guessed just typed in len and hoped all went well (saw the keyword)
        DO i = 1, LEN(word)
            !use the same names as Java 
            !weridest thing is still that MOD is a typed out word and it being
            !like a thing that takes two arguments is very strange
            
            !also ICHAR is a intersing way of handling int to char
            !also getting the index of the thing is strange where is the (i:i)
            !strange ho it makes a substring of it and that you get
            ascii = MOD(ICHAR(word(i:i)) - ICHAR('A') + move, 26)
            
            !normal math though if statments are strange as well
            IF (ascii < 0) THEN
                ascii = ascii + 26
            END IF
            
            word(i:i) = CHAR(ascii + ICHAR('A'))
        END DO
        
        PRINT *, word, ' This is Encrypted'
    END SUBROUTINE encrypt
    
    SUBROUTINE solve(word)
        !just a in cause we just need to use the value not modifie it
        Character(len=*), Intent(in) :: word
        !have to allocate the space for the duplicate if not does
        !silly pointer to the one that exists stuff
        Character(len=LEN(word)) :: dup
        
        integer :: i
        integer :: k
        integer :: ascii
        
        dup = word
        
        !thank god i can get length of word
        
        PRINT *, "This is all of them: "
        DO i = 1, 25
        dup = word
            DO k = 1, LEN(dup)
            
                !same kinda stuff as encrypt
                !just use i since we want al 26 possibilies
                ascii = MOD(ICHAR(dup(k:k)) - ICHAR('A') + i, 26)
                
                IF (ascii < 0) THEN
                    ascii = ascii + 26
                END IF
                
                dup(k:k) = CHAR(ascii + ICHAR('A'))
                
            END DO
            
            PRINT *, dup
        END DO
            
        
    END Subroutine solve
    
    SUBROUTINE decrypt(word, move)
        !use inout cause we want to modifie the value as well as use it
        Character(len=*), Intent(inout) :: word
        !just need to use the number
        Integer, Intent(in) :: move
        
        integer :: i
        integer :: ascii
        !thank god i can get length of word
        DO i = 1, LEN(word)
        
            !same as encrypt just we subtract not add this time
            ascii = MOD(ICHAR(word(i:i)) - ICHAR('A') - move, 26)
            
            IF (ascii < 0) THEN
                ascii = ascii + 26
            END IF
            
            word(i:i) = CHAR(ascii + ICHAR('A'))
            
        END DO
        
        PRINT *, word, ' This is Decrypted'
    END SUBROUTINE decrypt
    
End Program Ceaser