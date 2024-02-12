FsRtlIsDaxVolume proc near              ; DATA XREF: .pdata:00000001400F1218↑o
                mov     rax, [rcx+10h]
                test    rax, rax
                jz      short loc_1404EF23F
                mov     rax, [rax+8]
                test    rax, rax
                jz      short loc_1404EF23F
                mov     eax, [rax+30h]
                bt      eax, 1Ch
                jnb     short loc_1404EF23F
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1404EF23F:                          ; CODE XREF: FsRtlIsDaxVolume+7↑j
                                        ; FsRtlIsDaxVolume+10↑j ...
                xor     al, al
                retn
FsRtlIsDaxVolume endp
