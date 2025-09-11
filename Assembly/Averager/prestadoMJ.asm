section .data
	; Message prompts
	message db "This program computes for the average of 3 two-digit numbers (0-55).", 10, 0
	prompt_one db "Enter the first number: ", 0
	prompt_two db "Enter the second number: ", 0
	prompt_three db "Enter the third number: ", 0

	; Printing the Average and Remainder
	output_average db "Average is: %d", 10, 0
	output_remainder db "With remainder: %d", 10, 0

	; Formatting in Decimal
	scanning_int db "%d", 0

section .bss
	; Variables to store values
	num1_int resd 1
	num2_int resd 1
	num3_int resd 1
	sum_int resd 1
	ave_int resd 1
	rem_int resd 1

section .text
	global _main
	extern _printf, _scanf

_main:
	; The initial message
	push message
	call _printf
	add esp, 4

	; First prompt
	push prompt_one
	call _printf
	add esp, 4
	
	; Get the input
	push num1_int
	push scanning_int
	call _scanf
	add esp, 8

	; Second prompt
	push prompt_two
	call _printf
	add esp, 4

	; Get the input
	push num2_int
	push scanning_int
	call _scanf
	add esp, 8

	;Third prompt
	push prompt_three
	call _printf
	add esp, 4

	; Get the input
	push num3_int
	push scanning_int
	call _scanf
	add esp, 8

	; Addition process
	; Stack Operation
	mov eax, [num1_int]
	add eax, [num2_int]
	add eax, [num3_int]

	; Store the sum in the variable
	mov [sum_int], eax

	;Division process
	mov edx, 0
	mov ecx, 3
	div ecx
	mov [ave_int], eax
	mov [rem_int], edx

	; dword format for 32 bit
	push dword [ave_int]
	push output_average
	call _printf
	add esp, 8

	push dword [rem_int]
	push output_remainder
	call _printf
	add esp, 8

	ret
