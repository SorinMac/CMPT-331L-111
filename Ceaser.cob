
IDENTIFICATION DIVISION. 
PROGRAM-ID. Ceaser. 

DATA DIVISION.

WORKING-STORAGE SECTION.

	01 default PIC X(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ". 
    01 place PIC 9 VALUE 5. 
    
PROCEDURE DIVISION.
BEGIN.
    DISPLAY default 
    DISPLAY place

    PERFORM 
        DISPLAY 'Hello World'
    END-PERFORM.
	
    STOP RUN.
    
ENCRYPT.

	PERFORM 
        DISPLAY 'Hello World'
    END-PERFORM.

SOLVE.
	PERFORM 
	
		PERFORM 
        	DISPLAY 'Hello World'
    	END-PERFORM
    	
        DISPLAY 'Hello World'
    END-PERFORM.

DECRYPT.
	
	PERFORM 
        DISPLAY 'Hello World'
    END-PERFORM.

END PROGRAM Ceaser.

FROM rosetta code

IDENTIFICATION DIVISION.
       PROGRAM-ID. CAESAR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  MSG        PIC X(50)
           VALUE "The quick brown fox jumped over the lazy dog.".
       01  OFFSET     PIC 9(4) VALUE 7 USAGE BINARY.
       01  FROM-CHARS PIC X(52).
       01  TO-CHARS   PIC X(52).
       01  TABL.
           02         PIC X(26) VALUE "abcdefghijklmnopqrstuvwxyz".
           02         PIC X(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
           02         PIC X(26) VALUE "abcdefghijklmnopqrstuvwxyz".
           02         PIC X(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ".

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY MSG
           PERFORM ENCRYPT
           DISPLAY MSG
           PERFORM DECRYPT
           DISPLAY MSG
           STOP RUN.

       ENCRYPT.
           MOVE TABL (1:52) TO FROM-CHARS
           MOVE TABL (1 + OFFSET:52) TO TO-CHARS
           INSPECT MSG CONVERTING FROM-CHARS TO TO-CHARS.

       DECRYPT.
           MOVE TABL (1 + OFFSET:52) TO FROM-CHARS
           MOVE TABL (1:52) TO TO-CHARS
           INSPECT MSG CONVERTING FROM-CHARS TO TO-CHARS.

       END PROGRAM CAESAR.