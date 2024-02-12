IDENTIFICATION DIVISION. 
PROGRAM-ID. Ceaser. 

DATA DIVISION.

WORKING-STORAGE SECTION.

	01 msg PIC X(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
	01 extra PIC X(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
    01 cipher PIC 9 VALUE 5. 
    01 I PIC 999 VALUE 0.
    01 K PIC 999 VALUE 0.
    01 J PIC 999 VAlUE 0.
    01 ascii PIC 999 VALUE 0.
    
PROCEDURE DIVISION.
BEGIN.
    DISPLAY msg.
    DISPLAY cipher.
    
    PERFORM ENCRYPT.
    PERFORM SOLVE.
    PERFORM DECRYPT.
	
    STOP RUN.
    
ENCRYPT.

    PERFORM VARYING I FROM 1 BY 1 UNTIL I > FUNCTION LENGTH(msg)
        MOVE FUNCTION ORD (extra(I:1)) TO ascii
            SUBTRACT 65 FROM ascii
            ADD cipher TO ascii
            DIVIDE ascii BY 26 GIVING ascii REMAINDER ascii
            
            IF ascii <= 0 THEN
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

    PERFORM VARYING K FROM 0 BY 1 UNTIL K = 26
        MOVE "ABCDEFGHIJKLMNOPQRSTUVWXYZ" TO extra
         PERFORM VARYING J FROM 1 BY 1 UNTIL J > FUNCTION LENGTH(extra)
            MOVE FUNCTION ORD (extra(J:1)) TO ascii
            SUBTRACT 65 FROM ascii
            ADD K TO ascii
            DIVIDE ascii BY 26 GIVING ascii REMAINDER ascii
            
            IF ascii <= 0 THEN
                ADD 26 TO ascii
            END-IF
            
            ADD 65 TO ascii
            MOVE FUNCTION CHAR(ascii) TO extra(J:1)
        END-PERFORM
        
        DISPLAY "Solve Message: " extra
    END-PERFORM.
    
    
    
    
    
END PROGRAM Ceaser.
