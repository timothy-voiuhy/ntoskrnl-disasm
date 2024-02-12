ExExtendZone    proc near               ; CODE XREF: ExInterlockedExtendZone+3A↓p
                                        ; DATA XREF: .pdata:00000001400FA0A4↑o
                test    dl, 7
                mov     r10, rcx
                setz    r9b
                test    r8b, 7
                setz    al
                test    al, r9b
                jz      short loc_1405B6EAD
                cmp     [rcx+10h], r8d
                ja      short loc_1405B6EAD
                mov     rax, [rcx+8]
                lea     r9, [rdx+10h]
                mov     [rdx], rax
                mov     eax, r8d
                sub     eax, [rcx+10h]
                mov     [rcx+8], rdx
                mov     edx, 10h
                cmp     eax, edx
                jb      short loc_1405B6EA5

loc_1405B6E8A:                          ; CODE XREF: ExExtendZone+53↓j
                mov     rax, [r10]
                mov     [r9], rax
                mov     eax, r8d
                mov     ecx, [r10+10h]
                mov     [r10], r9
                add     edx, ecx
                add     r9, rcx
                sub     eax, ecx
                cmp     edx, eax
                jbe     short loc_1405B6E8A

loc_1405B6EA5:                          ; CODE XREF: ExExtendZone+38↑j
                add     [r10+14h], edx
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405B6EAD:                          ; CODE XREF: ExExtendZone+14↑j
                                        ; ExExtendZone+1A↑j
                mov     eax, 0C0000001h
                retn
ExExtendZone    endp

; ---------------------------------------------------------------------------
                align 4
algn_1405B6EB4:                         ; DATA XREF: .pdata:00000001400FA0A4↑o
                align 20h
; Exported entry 247. ExInitializeZone

; =============== S U B R O U T I N E =======================================


