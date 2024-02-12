IoGetPagingIoPriority proc near         ; DATA XREF: .pdata:00000001400D7094↑o
                mov     eax, [rcx+10h]
                test    al, 2
                jz      short loc_14033EA50
                shr     eax, 11h
                and     eax, 7
                jz      short loc_14033EA49
                cmp     eax, 5
                mov     eax, 2
                jz      short locret_14033EA4E

loc_14033EA49:                          ; CODE XREF: IoGetPagingIoPriority+D↑j
                mov     eax, 1

locret_14033EA4E:                       ; CODE XREF: IoGetPagingIoPriority+17↑j
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14033EA50:                          ; CODE XREF: IoGetPagingIoPriority+5↑j
                xor     eax, eax
                retn
IoGetPagingIoPriority endp
