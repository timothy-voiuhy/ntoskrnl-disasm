IoIrpHasFsTrackOffsetExtensionType proc near
                                        ; DATA XREF: .pdata:00000001400D6B0C↑o
                mov     rax, [rcx+0C8h]
                cmp     byte ptr [rcx+47h], 0
                jl      short loc_140338908
                test    rax, rax
                jz      short loc_140338908
                test    byte ptr [rax+2], 20h
                jnz     short loc_14033890C

loc_140338908:                          ; CODE XREF: IoIrpHasFsTrackOffsetExtensionType+B↑j
                                        ; IoIrpHasFsTrackOffsetExtensionType+10↑j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033890C:                          ; CODE XREF: IoIrpHasFsTrackOffsetExtensionType+16↑j
                mov     al, 1
                retn
IoIrpHasFsTrackOffsetExtensionType endp
