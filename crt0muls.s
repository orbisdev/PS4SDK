.intel_syntax noprefix
.text

.global _start
.type _start, @function
_start:
	jmp _start_c
