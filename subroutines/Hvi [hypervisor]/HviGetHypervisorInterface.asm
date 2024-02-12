HviGetHypervisorInterface proc near     ; CODE XREF: HviIsHypervisorMicrosoftCompatible+20↑p
                                        ; sub_1404F2180+47↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014048F71C SIZE 00000017 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    HviIsAnyHypervisorPresent
                xor     ecx, ecx
                test    al, al
                jnz     loc_14048F71C
                mov     [rdi], rcx
                mov     [rdi+8], rcx

loc_1403A96B3:                          ; CODE XREF: HviGetHypervisorInterface+E609E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HviGetHypervisorInterface endp
