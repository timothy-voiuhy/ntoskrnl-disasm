HviGetHypervisorFeatures proc near      ; CODE XREF: sub_1403A91F4+25D↑p
                                        ; sub_1403A9A40+33↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014048F704 SIZE 00000017 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    HviIsHypervisorMicrosoftCompatible
                xor     ecx, ecx
                test    al, al
                jnz     loc_14048F704
                mov     [rdi], rcx
                mov     [rdi+8], rcx

loc_1403A9623:                          ; CODE XREF: HviGetHypervisorFeatures+E6116↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HviGetHypervisorFeatures endp
