MmGetPhysicalAddress proc near          ; CODE XREF: sub_1403812D0+6D↓p
                                        ; sub_1403834C0+31D↓p ...

arg_10          = qword ptr  18h

                mov     rax, rsp
                sub     rsp, 28h
                and     dword ptr [rax+10h], 0
                lea     r8, [rax+10h]
                and     qword ptr [rax+18h], 0
                lea     rdx, [rax+18h]
                call    sub_14033BF54
                neg     eax
                sbb     rax, rax
                and     rax, [rsp+28h+arg_10]
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmGetPhysicalAddress endp
