org  0x100               ; Вказуємо, що це програма .COM

section .data
a db 5                   ; Визначаємо a = 5
b db 3                   ; Визначаємо b = 3
c db 2                   ; Визначаємо c = 2
resultMsg db 'Result: $' ; Визначення рядка для виведення результату

section .text
_start:
mov al, [b]              ; Завантажуємо b в AL
sub al, [c]              ; AL = b - c
add al, [a]              ; AL = b - c + a

add al, 30h              ; Перетворення числа в ASCII

mov ah, 09h              ; Вивести повідомлення
lea dx, resultMsg
int 21h

mov dl, al               ; Вивести сам результат
mov ah, 02h
int 21h

mov ax, 4c00h            ; Завершити програму
int 21h
