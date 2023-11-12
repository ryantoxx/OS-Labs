; Method 1 - Write character as TTY

_start:     
    mov AH, 0Eh    ; Set the video services function to Teletype Output
    mov AL, 4Eh    ; ASCII code for the character to be written (N)
    int 10h        ; Call interrupt 10h to perform the teletype output











    