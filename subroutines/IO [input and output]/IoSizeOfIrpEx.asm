IoSizeOfIrpEx   proc near               ; DATA XREF: .pdata:00000001400F27CC↑o
                test    rcx, rcx
                jz      short loc_140506487
                cmp     rcx, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140506484
                test    dword ptr [rcx+30h], 8000000h
                jz      short loc_140506487

loc_140506484:                          ; CODE XREF: IoSizeOfIrpEx+9↑j
                add     dl, 2

loc_140506487:                          ; CODE XREF: IoSizeOfIrpEx+3↑j
                                        ; IoSizeOfIrpEx+12↑j
                movsx   eax, dl
                movzx   ecx, ax
                shl     cx, 3
                add     ax, cx
                mov     ecx, 0D0h
                shl     ax, 3
                add     ax, cx
                retn
IoSizeOfIrpEx   endp

; ---------------------------------------------------------------------------
                align 2
algn_1405064A2:                         ; DATA XREF: .pdata:00000001400F27CC↑o
                align 10h
; Exported entry 1010. IoStartNextPacket

; =============== S U B R O U T I N E =======================================


