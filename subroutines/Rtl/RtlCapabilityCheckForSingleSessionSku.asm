RtlCapabilityCheckForSingleSessionSku proc near
                                        ; CODE XREF: sub_14067B764+194C9E↑p
                                        ; DATA XREF: .pdata:0000000140121FD4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbp, rcx
                test    r8, r8
                jnz     short loc_140914F3B
                mov     ebx, 0C000000Dh
                jmp     short loc_140914F58
; ---------------------------------------------------------------------------

loc_140914F3B:                          ; CODE XREF: RtlCapabilityCheckForSingleSessionSku+22↑j
                call    RtlIsMultiSessionSku
                test    al, al
                jz      short loc_140914F48
                mov     [rdi], bl
                jmp     short loc_140914F58
; ---------------------------------------------------------------------------

loc_140914F48:                          ; CODE XREF: RtlCapabilityCheckForSingleSessionSku+32↑j
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    RtlCapabilityCheck
                mov     ebx, eax

loc_140914F58:                          ; CODE XREF: RtlCapabilityCheckForSingleSessionSku+29↑j
                                        ; RtlCapabilityCheckForSingleSessionSku+36↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCapabilityCheckForSingleSessionSku endp
