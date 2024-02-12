PsReturnProcessNonPagedPoolQuota proc near
                                        ; CODE XREF: sub_14026B8A4+1D503E↓p
                                        ; sub_14026B8A4+1D5078↓p ...
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     r9, rdx
                mov     rdx, rcx
                jz      short loc_14026B862
                mov     rcx, [rcx+568h]
                xor     r8d, r8d
                call    sub_14023BF10

loc_14026B862:                          ; CODE XREF: PsReturnProcessNonPagedPoolQuota+11↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReturnProcessNonPagedPoolQuota endp
