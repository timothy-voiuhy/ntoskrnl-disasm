PsChargeProcessNonPagedPoolQuota proc near
                                        ; CODE XREF: sub_14026B8A4+1D5012↓p
                                        ; sub_140559528+DD↓p ...
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     r9, rdx
                mov     rdx, rcx
                jz      short loc_140269A08
                mov     rcx, [rcx+568h]
                xor     r8d, r8d
                call    sub_140232470

loc_140269A02:                          ; CODE XREF: PsChargeProcessNonPagedPoolQuota+2A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140269A08:                          ; CODE XREF: PsChargeProcessNonPagedPoolQuota+11↑j
                xor     eax, eax
                jmp     short loc_140269A02
PsChargeProcessNonPagedPoolQuota endp
