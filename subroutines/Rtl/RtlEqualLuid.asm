RtlEqualLuid    proc near               ; DATA XREF: .pdata:0000000140121FE0↑o
                mov     eax, [rdx+4]
                cmp     [rcx+4], eax
                jnz     short loc_140914F92
                mov     eax, [rdx]
                cmp     [rcx], eax
                jnz     short loc_140914F92
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140914F92:                          ; CODE XREF: RtlEqualLuid+6↑j
                                        ; RtlEqualLuid+C↑j
                xor     al, al
                retn
RtlEqualLuid    endp

; ---------------------------------------------------------------------------
                align 2
algn_140914F96:                         ; DATA XREF: .pdata:0000000140121FE0↑o
                align 20h
; Exported entry 2155. RtlGetAppContainerParent

; =============== S U B R O U T I N E =======================================


