PoFxRegisterCrashdumpDevice proc near   ; DATA XREF: .rdata:000000014009EC58↑o
                                        ; .pdata:000000014010C2A8↑o

; FUNCTION CHUNK AT 0000000140853C72 SIZE 00000015 BYTES

                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_14078DA21
                mov     rax, [rcx+40h]
                test    rax, rax
                jnz     loc_140853C72
                mov     eax, 0C00000BBh

loc_14078DA1B:                          ; CODE XREF: PoFxRegisterCrashdumpDevice+26↓j
                                        ; PoFxRegisterCrashdumpDevice+C6282↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14078DA21:                          ; CODE XREF: PoFxRegisterCrashdumpDevice+7↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14078DA1B
PoFxRegisterCrashdumpDevice endp
