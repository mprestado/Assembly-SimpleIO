section .data
    ; To be printed to prompt user name
    promptName db 'Enter your name: ', 0
    ; To be printed to prompt user age
    promptAge db 'Enter your age: ', 0
    ; To be printed to prompt user fav food
    promptFood db 'Enter your favorite food: ', 0
    ; To be printed to prompt user hobby
    promptHobby db 'Enter your hobby: ', 0
    ; To be printed to prompt user dream job
    promptJob db 'Enter your dream job: ', 0

    ; For newline space
    spacingForm db ' ', 10, 0

    ; The format for String inputs
    string_format db '%s', 0

    ; The paragraph output format
    outputOne db 'Hello, my name is %s. I am %s years old.', 10, 0
    outputTwo db 'My favorite food is %s and I enjoy %s.', 10, 0
    outputThree db 'In the future, I want to be a/an %s.', 10, 0
    
section .bss
    ; Buffers to store user input
    userName resb 100
    userAge resb 25
    userFood resb 100
    userHobby resb 100
    userJob resb 100

section .text
    global _main
    extern _printf
    extern _scanf

_main:
    ; Display the name prompt
    push promptName
    call _printf
    add esp, 4

    ; Read user input name
    push userName
    push string_format
    call _scanf
    add esp, 8

    ; Display the age prompt
    push promptAge
    call _printf
    add esp, 4

    ; Read user input age
    push userAge
    push string_format
    call _scanf
    add esp, 8

    ; Display the food prompt
    push promptFood
    call _printf
    add esp, 4

    ; Read user input food
    push userFood
    push string_format
    call _scanf
    add esp, 8

    ; Display the hobby prompt
    push promptHobby
    call _printf
    add esp, 4

    ; Read user input hobby
    push userHobby
    push string_format
    call _scanf
    add esp, 8

    ; Display the dream job prompt
    push promptJob
    call _printf
    add esp, 4

    ; Read user input dream job
    push userJob
    push string_format
    call _scanf
    add esp, 8

    ; Display the paragraph output
    push spacingForm
    call _printf
    call _printf
    add esp, 4

    push userAge
    push userName
    push outputOne
    call _printf
    add esp, 12

    push userHobby
    push userFood
    push outputTwo
    call _printf
    add esp, 12

    push userJob
    push outputThree
    call _printf
    add esp, 8

    ret