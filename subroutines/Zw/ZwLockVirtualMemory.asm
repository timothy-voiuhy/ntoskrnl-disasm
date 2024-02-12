ZwLockVirtualMemory proc near           ; CODE XREF: sub_1402B1AF0+24↑p
                                        ; sub_14059EB00+82↓p
                                        ; DATA XREF: ...
                mov     rax, rsp
                cli
                sub     rsp, 10h
                push    rax
                pushfq
                push    10h
                lea     rax, nullsub_7
                push    rax
                mov     eax, 10Eh
                jmp     sub_140410980
; ---------------------------------------------------------------------------
                retn
ZwLockVirtualMemory endp
