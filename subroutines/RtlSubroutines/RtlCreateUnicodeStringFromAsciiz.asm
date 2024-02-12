RtlCreateUnicodeStringFromAsciiz proc near
                                        ; CODE XREF: sub_1403B7D14+2D↑p
                                        ; sub_140892EA0+19E↓p ...

var_18          = xmmword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rsp+38h+var_18]
                movups  [rsp+38h+var_18], xmm0
                call    RtlInitAnsiStringEx
                test    eax, eax
                js      short loc_1407A6B2C
                mov     r8b, 1
                lea     rdx, [rsp+38h+var_18]
                mov     rcx, rbx
                call    RtlAnsiStringToUnicodeString
                test    eax, eax
                js      short loc_1407A6B2C
                mov     al, 1

loc_1407A6B25:                          ; CODE XREF: RtlCreateUnicodeStringFromAsciiz+3E↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407A6B2C:                          ; CODE XREF: RtlCreateUnicodeStringFromAsciiz+1D↑j
                                        ; RtlCreateUnicodeStringFromAsciiz+31↑j
                xor     al, al
                jmp     short loc_1407A6B25
RtlCreateUnicodeStringFromAsciiz endp
