IoStartNextPacketByKey proc near        ; DATA XREF: .pdata:00000001400F27E4↑o
                sub     rsp, 28h
                mov     rax, [rcx+138h]
                mov     r10d, r8d
                test    dword ptr [rax+40h], 100h
                jz      short loc_140506531
                neg     dl
                mov     edx, r10d
                sbb     r8d, r8d
                and     r8d, 80h
                add     r8d, 40h ; '@'
                call    sub_140506E18
                jmp     short loc_140506539
; ---------------------------------------------------------------------------

loc_140506531:                          ; CODE XREF: IoStartNextPacketByKey+15↑j
                movzx   edx, dl
                call    sub_140506D54

loc_140506539:                          ; CODE XREF: IoStartNextPacketByKey+2F↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoStartNextPacketByKey endp
