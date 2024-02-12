ExIsProcessorFeaturePresent proc near   ; CODE XREF: sub_14077C8E4+D2594↓p
                                        ; DATA XREF: .pdata:00000001400D9548↑o
                cmp     ecx, 40h ; '@'
                jnb     short loc_1403626C6
                mov     eax, ecx
                mov     rcx, 0FFFFF78000000274h
                mov     al, [rax+rcx]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403626C6:                          ; CODE XREF: ExIsProcessorFeaturePresent+3↑j
                xor     al, al
                retn
ExIsProcessorFeaturePresent endp
