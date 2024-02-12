HalWheaUpdateCmciPolicy proc near       ; CODE XREF: sub_14095F14C:loc_14095F326↓p
                                        ; sub_140A64DF8+134↓p ...

arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404ACA22 SIZE 00000052 BYTES

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                mov     ebx, edx
                sub     ecx, 7
                jz      short loc_1403BAA36
                sub     ecx, 1
                jz      short loc_1403BAA2E
                sub     ecx, 1
                jnz     loc_1404ACA22
                mov     cs:dword_140C50760, ebx

loc_1403BAA27:                          ; CODE XREF: HalWheaUpdateCmciPolicy+34↓j
                                        ; HalWheaUpdateCmciPolicy+3C↓j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403BAA2E:                          ; CODE XREF: HalWheaUpdateCmciPolicy+16↑j
                mov     cs:dword_140C50764, ebx
                jmp     short loc_1403BAA27
; ---------------------------------------------------------------------------

loc_1403BAA36:                          ; CODE XREF: HalWheaUpdateCmciPolicy+11↑j
                mov     cs:byte_140C5075C, bl
                jmp     short loc_1403BAA27
HalWheaUpdateCmciPolicy endp
