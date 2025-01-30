01  WS-AREA-1.                    PIC X(100). 
01  WS-AREA-2 REDEFINES WS-AREA-1. 
    05  WS-FIELD-1 PIC 9(5). 
    05  WS-FIELD-2 PIC X(95). 
* In this case, if WS-AREA-1 is updated before WS-AREA-2, it will cause unexpected results, data corruption, or program errors. 
MOVE '12345' TO WS-FIELD-1. 
MOVE 'Hello' TO WS-AREA-1. 
DISPLAY WS-FIELD-1, WS-FIELD-2. 