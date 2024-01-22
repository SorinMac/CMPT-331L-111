Program Ceaser

    implicit none
    
    !This is where I set up my test case
    !Very strange way to inilize a variable
    !Also no strings :() what the hell
    integer :: move = 5
    character(len=6) :: test = 'SORINZ'
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
        DO i = 1, LEN(word)
            !ascii = 
        END DO
        
        
    END SUBROUTINE encrypt
    
    SUBROUTINE solve(word)
        !just a in cause we just need to use the value not modifie it
        Character(len=*), Intent(in) :: word
        
        integer :: i
        integer :: k
        integer :: ascii
        !thank god i can get length of word
        DO i = 1, 26
            DO k = 1, LEN(word)
                !ascii =
            END DO 
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
            !ascii = 
        END DO
        
    END SUBROUTINE decrypt
    
End Program Ceaser