IoIsInitiator32bitProcess proc near     ; DATA XREF: .rdata:000000014008B954↑o
                                        ; .pdata:00000001400DA340↑o

; FUNCTION CHUNK AT 000000014048E2C6 SIZE 00000032 BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+0B8h]
                mov     rcx, [rcx+30h]
                call    IoGetInitiatorProcess
                test    rax, rax
                jnz     loc_14048E2C6
                mov     rcx, rbx
                call    IoIs32bitProcess

loc_14036CA8A:                          ; CODE XREF: IoIsInitiator32bitProcess+12188C↓j
                                        ; IoIsInitiator32bitProcess+121893↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoIsInitiator32bitProcess endp
