MmForceSectionClosed proc near          ; DATA XREF: .rdata:00000001400826E4↑o
                                        ; .pdata:00000001400D7BE0↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140481002 SIZE 00000016 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                neg     dl
                mov     rdi, rcx
                sbb     ebx, ebx
                and     ebx, 4
                inc     ebx
                mov     edx, ebx
                call    sub_14034A920
                test    eax, eax
                jz      loc_140481002

loc_14034A905:                          ; CODE XREF: MmForceSectionClosed+136733↓j
                mov     rbx, [rsp+28h+arg_0]
                cmp     eax, 2
                setnz   al
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmForceSectionClosed endp
