KeFindFirstSetLeftAffinityEx proc near  ; CODE XREF: sub_140568430+1AC↓p
                                        ; NaptrDnsRecordConvert_1+981↓p
                                        ; DATA XREF: ...
                movzx   edx, word ptr [rcx]
                jmp     short loc_1405136C3
; ---------------------------------------------------------------------------

loc_1405136B5:                          ; CODE XREF: KeFindFirstSetLeftAffinityEx+17↓j
                movsx   rax, dx
                mov     r8, [rcx+rax*8+8]
                test    r8, r8
                jnz     short loc_1405136CE

loc_1405136C3:                          ; CODE XREF: KeFindFirstSetLeftAffinityEx+3↑j
                sub     dx, 1
                jns     short loc_1405136B5
                or      eax, 0FFFFFFFFh
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405136CE:                          ; CODE XREF: KeFindFirstSetLeftAffinityEx+11↑j
                bsr     rcx, r8
                movsx   eax, dx
                shl     eax, 6
                add     eax, ecx
                lea     rcx, dword_140D024D0
                mov     eax, [rcx+rax*4]
                retn
KeFindFirstSetLeftAffinityEx endp
