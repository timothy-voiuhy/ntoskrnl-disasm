IoPropagateActivityIdToThread proc near ; DATA XREF: .rdata:000000014006DB5C↑o
                                        ; .pdata:00000001400D3044↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014046348A SIZE 00000029 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, r8
                xor     edx, edx
                call    sub_1402F17B0
                test    al, al
                jnz     loc_14046348A
                mov     eax, 0C0000225h

loc_1402F14A4:                          ; CODE XREF: IoPropagateActivityIdToThread+17202E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoPropagateActivityIdToThread endp
