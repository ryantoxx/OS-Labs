; Method 5 - Display character + attribute & update cursor

_start:
; Display characters
    mov AH, 09h    ; BIOS function to display character with attribute
    mov AL, 'M'    ; ASCII code for the character to be written (in this case 'M')
    mov BL, 10     ; Display color attribute (green in this case)
    mov CX, 8      ; Number of times to display the character (4 times in this case)
    int 10h        ; Call interrupt 10h to perform the display with attribute

; Set cursor position
    mov AH, 02h    ; BIOS function for cursor position
    mov DH, 10     ; Row (vertical position on the screen)
    mov DL, 25     ; Column (horizontal position on the screen)
    int 10h        ; Call interrupt 10h to set the cursor position
