IoSetIrpExtraCreateParameter proc near  ; CODE XREF: sub_140702C60+89↓p
                                        ; DATA XREF: .pdata:0000000140104A54↑o
                mov     eax, [rcx+10h]  ; FsRtlSetEcpListIntoIrp
                test    al, al
                jns     short loc_1406ED99A
                cmp     qword ptr [rcx+70h], 0
                jnz     short loc_1406ED9A1
                mov     [rcx+70h], rdx
                or      dword ptr [rdx+4], 8
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406ED99A:                          ; CODE XREF: IoSetIrpExtraCreateParameter+5↑j
                mov     eax, 0C00000EFh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406ED9A1:                          ; CODE XREF: IoSetIrpExtraCreateParameter+C↑j
                mov     eax, 0C00000F0h
                retn
IoSetIrpExtraCreateParameter endp
