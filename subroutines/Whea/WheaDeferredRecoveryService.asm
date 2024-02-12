WheaDeferredRecoveryService proc near   ; CODE XREF: sub_1404D2850+4↑p
                                        ; DATA XREF: .pdata:00000001400FA4C4↑o

var_18          = byte ptr -18h

                sub     rsp, 38h
                xor     eax, eax
                xchg    eax, cs:dword_140CFA03C
                cmp     eax, 1
                jnz     short loc_1405BD2FA
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                xor     r8d, r8d
                lea     rcx, dword_140C15EA0
                xor     edx, edx
                call    sub_140251CB0

loc_1405BD2FA:                          ; CODE XREF: WheaDeferredRecoveryService+F↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaDeferredRecoveryService endp
