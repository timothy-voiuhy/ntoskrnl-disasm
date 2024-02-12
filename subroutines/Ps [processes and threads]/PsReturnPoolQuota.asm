PsReturnPoolQuota proc near             ; CODE XREF: sub_14034132C+5D↑p
                                        ; DATA XREF: .pdata:00000001400D7334↑o
                sub     rsp, 28h
                cmp     rcx, cs:PsInitialSystemProcess
                mov     eax, edx
                mov     rdx, rcx
                mov     r9, r8
                jz      short loc_1403413DB
                mov     rcx, [rcx+568h]
                xor     r8d, r8d
                cmp     eax, 1
                setz    r8b
                call    sub_14023BF10

loc_1403413DB:                          ; CODE XREF: PsReturnPoolQuota+13↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReturnPoolQuota endp
