IoSetActivityIdIrp proc near            ; CODE XREF: IoReuseIrp+1DC↑p
                                        ; IoReuseIrp+281↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404944EC SIZE 00000044 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rsi, rcx
                xor     edx, edx
                xor     ebx, ebx
                call    sub_1402A2A90
                mov     rdx, rax
                test    rax, rax
                jz      short loc_1403795AA
                test    rdi, rdi
                jz      loc_1404944EC
                movups  xmm0, xmmword ptr [rdi]
                movdqu  xmmword ptr [rax+18h], xmm0

loc_140379597:                          ; CODE XREF: IoSetActivityIdIrp+11AFB7↓j
                                        ; IoSetActivityIdIrp+11AFCB↓j
                mov     eax, ebx

loc_140379599:                          ; CODE XREF: IoSetActivityIdIrp+4F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403795AA:                          ; CODE XREF: IoSetActivityIdIrp+24↑j
                mov     eax, 0C000009Ah
                jmp     short loc_140379599
IoSetActivityIdIrp endp
