.model small
.stack 100h
.386
.data
    msg  db "                                                    ",13,10
         db " ************************************************** ",13,10
         db " DISCO brings gretest customer experience with      ",13,10
         db " -  Fresh Fruit deliver                             ",13,10
         db " -  DISCO online pantry deliver service             ",13,10
         db " -  Housework service                               ",13,10
         db " ///SAME DAY DELIVERY///     365/24hrs operation    ",13,10
         db " ************************************************** ",13,10
         db "        ________  _______  ______   ______          ",13,10
         db "       |        \|       \|      \ /      \         ",13,10
         db "       | $$$$$$$$| $$$$$$$\\$$$$$$|  $$$$$$\        ",13,10
         db "       | $$__    | $$__/ $$ | $$  | $$   \$$        ",13,10
         db "       | $$  \   | $$    $$ | $$  | $$              ",13,10
         db "       | $$$$$   | $$$$$$$  | $$  | $$   __         ",13,10
         db "       | $$_____ | $$      _| $$_ | $$__/  \        ",13,10
         db "       | $$     \| $$     |   $$ \ \$$    $$        ",13,10
         db "        \$$$$$$$$ \$$      \$$$$$$  \$$$$$$         ",13,10
         db "                                                    ",13,10
         db " .~~~~.        ,--./,-.       \        /\_____/\    ",13,10
         db " i====i_      / #      \     ()()     /  o   o  \   ",13,10
         db " |cccc|_)    |          |   ()()()   ( ==  ^  == )  ",13,10
         db " |cccc|       \        /     ()()     )         (   ",13,10 
         db " `-==-'        `._,._,'       ()     (           )  ",13,10
         db "                                                    ",13,10
         

.code

main proc

    mov ah, 06h     ;Clear screen
    mov bh, 0000
    mov cx, 000h
    mov dx, 184fh
    int 10h

repeat:
    mov ax,@data    ;Get data segment
    mov es, ax      ;Point ES to data segment
    mov ah, 13h     ;BIOS print function
    mov al, 0       
    mov bh, 0       ;Print string on Screen
    mov cx, 1248    ;The length of output
    mov bl, 0Ah     ;Color
    mov dl, 0       ;Cursol allocation (column)
    mov dh, 0       ;Cursol allocation (Row)
    lea bp, msg     ;Get address for data segment
    int 10h
jmp small near ptr repeat

    mov ah, 4ch     ;End the program
    int 21h

Main endp
end main