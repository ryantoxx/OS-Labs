; Method 6 - Display string

ORG 7C00h      ; Standard bootloader origin

jmp _start     ; Jump to the start of the code

section .data
    msg db "Some cool text here"  ; Define the string to be displayed
    msg_len equ $-msg               ; Calculate the length of the string

_start:
    mov AH, 13h         ; Set the video services function to display string
    mov AL, 0           ; Display the entire string    
    mov BL, 10          ; Set the color attribute to green
    mov CX, msg_len     ; Set the count of characters to be displayed
    mov BP, msg         ; Set the offset of the string
    int 0x10            ; Call interrupt 0x10 to perform the display
