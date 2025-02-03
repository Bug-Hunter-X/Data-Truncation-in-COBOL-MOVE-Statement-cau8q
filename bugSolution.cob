01  WS-AREA-1 PIC X(100). 
01  WS-AREA-2 PIC X(100). 

PROCEDURE DIVISION.
    MOVE "Hello" TO WS-AREA-1.
    IF LENGTH OF WS-AREA-1 > LENGTH OF WS-AREA-2 THEN
        DISPLAY "Error: Sending field is longer than receiving field." 
        STOP RUN
    ELSE
        MOVE WS-AREA-1 TO WS-AREA-2
        DISPLAY WS-AREA-2
        STOP RUN
    END-IF.