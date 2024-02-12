IoStartNextPacket proc near             ; DATA XREF: .pdata:00000001400F27D8↑o
                sub     rsp, 28h
                mov     rax, [rcx+138h]
                test    dword ptr [rax+40h], 100h
                jz      short loc_1405064DD
                neg     dl
                sbb     r8d, r8d
                xor     edx, edx
                and     r8d, 80h
                add     r8d, 20h ; ' '
                call    sub_140506E18
                jmp     short loc_1405064E5
; ---------------------------------------------------------------------------

loc_1405064DD:                          ; CODE XREF: IoStartNextPacket+12↑j
                movzx   edx, dl
                call    sub_140506C94

loc_1405064E5:                          ; CODE XREF: IoStartNextPacket+2B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoStartNextPacket endp
