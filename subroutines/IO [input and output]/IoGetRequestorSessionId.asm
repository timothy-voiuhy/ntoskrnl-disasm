IoGetRequestorSessionId proc near       ; DATA XREF: .rdata:0000000140089724↑o
                                        ; .pdata:00000001400D96EC↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014048C86A SIZE 0000000D BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rcx, [rcx+98h]
                xor     ebx, ebx
                mov     rdi, rdx
                test    rcx, rcx
                jz      loc_14048C86A
                mov     rcx, [rcx+220h]
                call    sub_140245840
                cmp     eax, 0FFFFFFFFh
                cmovnz  ebx, eax
                xor     eax, eax
                mov     [rdi], ebx

loc_140363515:                          ; CODE XREF: IoGetRequestorSessionId+129392↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetRequestorSessionId endp
