WheaInitializeRecordHeader proc near    ; CODE XREF: sub_1404B9E88+57↑p
                                        ; sub_1404BA0FC+53↑p ...
                push    rbx
                sub     rsp, 20h
                xor     edx, edx
                mov     r8d, 80h
                mov     rbx, rcx
                call    memset
                movups  xmm0, cs:xmmword_14001F710
                or      dword ptr [rbx+6], 0FFFFFFFFh
                lea     rcx, [rbx+18h]
                or      dword ptr [rbx+10h], 2
                mov     eax, 210h
                movdqu  xmmword ptr [rbx+40h], xmm0
                mov     dword ptr [rbx], 52455043h
                mov     [rbx+4], ax
                mov     dword ptr [rbx+0Ch], 3
                call    sub_1405BCBF4
                mov     eax, 1
                lock xadd cs:qword_140CDAF90, rax
                inc     rax
                mov     [rbx+60h], rax
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaInitializeRecordHeader endp
