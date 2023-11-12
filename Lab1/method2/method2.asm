; Method 2 - Write character

_start:
    mov AH, 0Ah    ; BIOS function to display
    mov AL, 'N'    ; ASCII code for the character to be written (N)
    mov CX, 1      ; Display the character one time
    int 10h        ; Call interrupt 10h to perform the display
