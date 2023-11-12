; Method 3 - Write character/attribute

_start:
    mov AH, 09h    ; BIOS function to display character with attribute
    mov AL, 'N'    ; ASCII code for the character to be written (N)
    mov BL, 4      ; Display color attribute (red) 
    int 10h        ; Call interrupt 10h to perform the display with attribute
