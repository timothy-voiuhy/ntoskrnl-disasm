ExGetExclusiveWaiterCount proc near     ; CODE XREF: sub_1404ECD90+1F↑p
                                        ; DATA XREF: .pdata:00000001400F9F60↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                test    byte ptr [rcx+1Ah], 1
                jz      short loc_1405B56D5
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+0Eh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B56D5:                          ; CODE XREF: ExGetExclusiveWaiterCount+8↑j
                mov     eax, [rcx+4Ch]
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExGetExclusiveWaiterCount endp
