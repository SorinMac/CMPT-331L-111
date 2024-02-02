IDENTIFICATION DIVISION. 
PROGRAM-ID. Ceaser. 

DATA DIVISION.

WORKING-STORAGE SECTION.

	01 msg PIC X(6) VALUE "SORINZ".
	01 extra PIC X(6) VALUE "SORINZ".
    01 cipher PIC 9 VALUE 5. 
    01 I PIC 9 VALUE 0.
    01 ascii PIC 99 VALUE 0.
    
PROCEDURE DIVISION.
BEGIN.
    DISPLAY msg 
    DISPLAY cipher
    
    PERFORM ENCRYPT
    PERFORM SOLVE
    PERFORM DECRYPT
	
    STOP RUN.
    
ENCRYPT.

    PERFORM VARYING I FROM 1 BY 1 UNTIL I > FUNCTION LENGTH(msg)
        MOVE FUNCTION ORD (msg(I:1)) TO ascii
        SUBTRACT 65 FROM ascii
        ADD cipher TO ascii
        DIVIDE ascii BY 26 GIVING ascii REMAINDER ascii
        
        IF ascii < 0 THEN
            ADD 26 TO ascii
        END-IF
        
        ADD 65 TO ascii
        MOVE FUNCTION CHAR(ascii) TO msg(I:1)
    END-PERFORM.
    
    DISPLAY "Encrypted Message: " msg.
    
DECRYPT.

    PERFORM VARYING I FROM 1 BY 1 UNTIL I > FUNCTION LENGTH(msg)
        MOVE FUNCTION ORD (msg(I:1)) TO ascii
        SUBTRACT 65 FROM ascii
        SUBTRACT cipher FROM ascii
        DIVIDE ascii BY 26 GIVING ascii REMAINDER ascii
        
        IF ascii <= 0 THEN
            ADD 26 TO ascii
        END-IF
        
        ADD 65 TO ascii
        MOVE FUNCTION CHAR(ascii) TO msg(I:1)
    END-PERFORM.
    
    DISPLAY "Decypted Message: " msg.
    
SOLVE.
    
    
    
    
END PROGRAM Ceaser.
