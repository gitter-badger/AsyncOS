section .text
bits 32

; Our glorious boot sequence; print OK
; to the VGA buffer and then halt.
global _boot
_boot:
    mov dword [0xb8000], 0x2f4b2f4f
    hlt
