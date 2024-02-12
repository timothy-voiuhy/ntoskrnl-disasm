DbgSetDebugPrintCallback proc near      ; CODE XREF: sub_140793698+A7CE3↓p
                                        ; sub_14079392C+A7C51↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                test    rcx, rcx
                jnz     short loc_140585980
                mov     eax, 0C000000Dh
                jmp     short loc_140585991
; ---------------------------------------------------------------------------

loc_140585980:                          ; CODE XREF: DbgSetDebugPrintCallback+7↑j
                cmp     dl, 1
                jnz     short loc_14058598C
                call    sub_1405859D4
                jmp     short loc_140585991
; ---------------------------------------------------------------------------

loc_14058598C:                          ; CODE XREF: DbgSetDebugPrintCallback+13↑j
                call    sub_140585B2C

loc_140585991:                          ; CODE XREF: DbgSetDebugPrintCallback+E↑j
                                        ; DbgSetDebugPrintCallback+1A↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgSetDebugPrintCallback endp
