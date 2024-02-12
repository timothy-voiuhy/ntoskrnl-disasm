HviGetEnlightenmentInformation proc near
                                        ; CODE XREF: sub_1403A91A0+25↑p
                                        ; sub_1403A91F4+24D↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014048F6EC SIZE 00000017 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    HviIsHypervisorMicrosoftCompatible
                xor     ecx, ecx
                test    al, al
                jnz     loc_14048F6EC
                mov     [rdi], rcx
                mov     [rdi+8], rcx

loc_1403A95E3:                          ; CODE XREF: HviGetEnlightenmentInformation+E613E↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HviGetEnlightenmentInformation endp
