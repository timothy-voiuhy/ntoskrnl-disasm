PsChargeProcessPoolQuota proc near      ; CODE XREF: PsChargePoolQuota+4↑p
                                        ; sub_14033E3F0+27B↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     eax, edx
                mov     rdx, rcx
                mov     r9, r8
                jz      short loc_14033E3E1
                mov     rcx, [rcx+568h]
                xor     r8d, r8d
                cmp     eax, 1
                setz    r8b
                call    sub_140232470

loc_14033E3DB:                          ; CODE XREF: PsChargeProcessPoolQuota+33↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033E3E1:                          ; CODE XREF: PsChargeProcessPoolQuota+13↑j
                xor     eax, eax
                jmp     short loc_14033E3DB
PsChargeProcessPoolQuota endp
