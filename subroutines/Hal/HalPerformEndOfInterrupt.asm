HalPerformEndOfInterrupt proc near      ; CODE XREF: sub_1403FED90+3F↓p
                                        ; sub_1403FF6E0+3F↓p ...

; FUNCTION CHUNK AT 0000000140472FDA SIZE 0000000E BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    rcx, rcx
                jnz     short loc_14032520E

loc_1403251EE:                          ; CODE XREF: HalPerformEndOfInterrupt+32↓j
                                        ; HalPerformEndOfInterrupt+39↓j
                mov     rax, cs:off_140C00A48
                call    sub_1404079D0
                cmp     cs:byte_140C49736, 0
                jnz     loc_140472FDA

loc_140325207:                          ; CODE XREF: HalPerformEndOfInterrupt+14DE03↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14032520E:                          ; CODE XREF: HalPerformEndOfInterrupt+C↑j
                cmp     byte ptr [rcx+65h], 0
                jz      short loc_1403251EE
                call    sub_1404BDDCC
                jmp     short loc_1403251EE
HalPerformEndOfInterrupt endp
