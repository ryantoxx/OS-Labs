; Method 4 - Display character + attribute

_start:
    mov AH, 09h    ; BIOS function to display character with attribute
    mov AL, 'N'    ; ASCII code for the character to be written (in this case 'N')
    mov BL, 10     ; Display color attribute (green in this case)
    mov CX, 8     ; Number of times to display the character
    int 10h        ; Call interrupt 10h to perform the display with attribute
