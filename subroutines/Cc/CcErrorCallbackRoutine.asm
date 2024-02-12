CcErrorCallbackRoutine proc near        ; DATA XREF: .pdata:00000001400F0E70↑o
                sub     rsp, 28h
                cmp     dword ptr [rcx+4], 0C000A008h
                jnz     short loc_1404EA682
                call    sub_1404E9C3C

loc_1404EA682:                          ; CODE XREF: CcErrorCallbackRoutine+B↑j
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcErrorCallbackRoutine endp
