IoStartTimer    proc near               ; DATA XREF: .pdata:00000001400F27FC↑o
                sub     rsp, 28h
                mov     rax, [rcx+138h]
                mov     edx, [rax+20h]
                test    dl, 0Fh
                jnz     short loc_14050670C
                mov     rcx, [rcx+28h]
                call    sub_140500A5C

loc_14050670C:                          ; CODE XREF: IoStartTimer+11↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoStartTimer    endp

algn_140506712:                         ; DATA XREF: .pdata:00000001400F27FC↑o
                align 20h
; Exported entry 1032. IoUnregisterPriorityCallback

; =============== S U B R O U T I N E =======================================


