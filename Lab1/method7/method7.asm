; Method 7 - Display string & update cursor
ORG 7C00h      ; Standard bootloader origin

jmp _start     ; Jump to the start of the code

section .data
    msg db "Some cool text here"  ; Define the string to be displayed
    msg_len equ $-msg         ; Calculate the length of the string

_start:
    mov AH, 13h         ; Set the video services function to "Display String"
    mov AL, 1           ; Display the string and update the cursor position    
    mov BL, 10          ; Set the color attribute to green
    mov CX, msg_len     ; Set the count of characters to be displayed
    mov DH, 8           ; Set the row where the string will be displayed
    mov DL, 9           ; Set the column where the string will be displayed
    mov BP, msg         ; Set the offset of the string
    int 0x10            ; Call interrupt 0x10 to perform the display
