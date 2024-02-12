InbvDisplayString proc near             ; CODE XREF: sub_140A3CC14+427↓p
                                        ; sub_140A3CC14+881↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014048F482 SIZE 00000043 BYTES

                mov     [rsp+arg_0], rcx
                sub     rsp, 28h
                cmp     cs:byte_140C509E4, 0
                jnz     loc_14048F482

loc_1403A8AC6:                          ; CODE XREF: InbvDisplayString+E69F7↓j
                                        ; InbvDisplayString+E6A04↓j
                xor     al, al

loc_1403A8AC8:                          ; CODE XREF: InbvDisplayString+E6A10↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
InbvDisplayString endp
