ExQueryPoolBlockSize proc near          ; CODE XREF: sub_140A1EEE4+18328↓p
                                        ; DATA XREF: .rdata:00000001400AD1B8↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404B47CC SIZE 00000049 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                call    sub_1402A327C
                mov     rcx, rax
                call    sub_1403CD99C
                mov     ecx, 0FFFh
                test    eax, eax
                jnz     loc_1404B47CC
                test    rcx, rbx
                jnz     loc_1404B47F0
                mov     [rdi], al
                lea     eax, [rcx+1]

loc_1403CD988:                          ; CODE XREF: ExQueryPoolBlockSize+E6E9B↓j
                                        ; ExQueryPoolBlockSize+E6EC0↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExQueryPoolBlockSize endp
