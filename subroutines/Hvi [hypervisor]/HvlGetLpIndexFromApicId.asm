HvlGetLpIndexFromApicId proc near       ; CODE XREF: sub_1408F7F10+1F↓p
                                        ; sub_1408F7FE0+1D↓p ...
                sub     rsp, 28h
                mov     eax, cs:dword_140CFC40C
                test    al, 2
                jz      short loc_1404F226D
                call    sub_1404F30CC
                test    rax, rax
                jz      short loc_1404F226D
                mov     eax, [rax+4]
                jmp     short loc_1404F2270
; ---------------------------------------------------------------------------

loc_1404F226D:                          ; CODE XREF: HvlGetLpIndexFromApicId+C↑j
                                        ; HvlGetLpIndexFromApicId+16↑j
                or      eax, 0FFFFFFFFh

loc_1404F2270:                          ; CODE XREF: HvlGetLpIndexFromApicId+1B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlGetLpIndexFromApicId endp
