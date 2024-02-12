IoGetIrpExtraCreateParameter proc near  ; CODE XREF: FsRtlCheckOplockEx2+16D↑p
                                        ; sub_1403426F8+62↑p ...
                mov     eax, [rcx+10h]  ; FsRtlGetEcpListFromIrp
                test    al, al
                jns     short loc_140655BD2
                mov     rax, [rcx+70h]
                mov     [rdx], rax
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140655BD2:                          ; CODE XREF: IoGetIrpExtraCreateParameter+5↑j
                mov     eax, 0C000000Dh
                retn
IoGetIrpExtraCreateParameter endp
