PsChargeProcessPagedPoolQuota proc near ; CODE XREF: sub_140686D48+53↑p
                                        ; sub_140687114+38↑p ...
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     r9, rdx
                mov     rdx, rcx
                jz      short loc_1406871AB
                mov     rcx, [rcx+568h]
                mov     r8d, 1
                call    sub_140232470

loc_1406871A5:                          ; CODE XREF: PsChargeProcessPagedPoolQuota+2D↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406871AB:                          ; CODE XREF: PsChargeProcessPagedPoolQuota+11↑j
                xor     eax, eax
                jmp     short loc_1406871A5
PsChargeProcessPagedPoolQuota endp
