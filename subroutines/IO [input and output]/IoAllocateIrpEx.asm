IoAllocateIrpEx proc near               ; CODE XREF: sub_1404EF0F0+43↓p
                                        ; sub_1406E98C0+55↓p ...

; FUNCTION CHUNK AT 0000000140475A84 SIZE 0000001B BYTES

                sub     rsp, 28h
                mov     eax, cs:dword_140CFC624
                mov     r9, [rsp+28h]
                test    eax, eax
                jnz     loc_140475A84
                call    sub_140235D50

loc_14032BDBC:                          ; CODE XREF: IoAllocateIrpEx+149CEF↓j
                                        ; IoAllocateIrpEx+149CFA↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateIrpEx endp
