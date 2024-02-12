PsReleaseProcessWakeCounter proc near   ; CODE XREF: sub_1406142C0+84B↑p
                                        ; sub_1406767F0+64↑p ...

var_28          = dword ptr -28h
var_20          = byte ptr -20h
var_18          = qword ptr -18h

                sub     rsp, 48h
                xor     r10d, r10d
                mov     eax, ecx
                and     eax, 7
                mov     [rsp+48h+var_18], r10
                cmp     eax, 7
                mov     [rsp+48h+var_20], 1
                mov     r9, rdx
                mov     r8d, r10d
                cmovnz  r8d, eax
                lea     edx, [r10+2]
                cmovnz  edx, r10d
                or      [rsp+48h+var_28], 0FFFFFFFFh
                and     rcx, 0FFFFFFFFFFFFFFF8h
                call    sub_1406165D0
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsReleaseProcessWakeCounter endp
