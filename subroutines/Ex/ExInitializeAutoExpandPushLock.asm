ExInitializeAutoExpandPushLock proc near
                                        ; CODE XREF: sub_14067D5B0+8A↓p
                                        ; sub_1407CD904+48↓p ...
                xor     eax, eax
                mov     [rcx+8], rax
                mov     [rcx], rax
                test    dl, 1
                jz      short loc_14033AA60
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14033AA60:                          ; CODE XREF: ExInitializeAutoExpandPushLock+C↑j
                mov     dword ptr [rcx+8], 4
                retn
ExInitializeAutoExpandPushLock endp
