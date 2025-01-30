01  WS-AREA-1.                    PIC X(100). 
01  WS-AREA-2 REDEFINES WS-AREA-1. 
    05  WS-FIELD-1 PIC 9(5). 
    05  WS-FIELD-2 PIC X(95). 
* To avoid the bug, always update either WS-AREA-1 or WS-AREA-2, but never both independently without considering their overlap in memory.  
MOVE '12345' TO WS-FIELD-1. 
DISPLAY WS-FIELD-1, WS-FIELD-2. 
* OR 
MOVE 'Hello' TO WS-AREA-1. 
DISPLAY WS-FIELD-1, WS-FIELD-2.