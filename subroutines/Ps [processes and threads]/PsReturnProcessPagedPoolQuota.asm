PsReturnProcessPagedPoolQuota proc near ; CODE XREF: sub_14033E3F0+115↓p
                                        ; sub_14033E3F0+2E8↓p ...
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     r9, rdx
                mov     rdx, rcx
                jz      short loc_14026B895
                mov     rcx, [rcx+568h]
                mov     r8d, 1
                call    sub_14023BF10

loc_14026B895:                          ; CODE XREF: PsReturnProcessPagedPoolQuota+11↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReturnProcessPagedPoolQuota endp
