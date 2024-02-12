ExTryQueueWorkItem proc near            ; CODE XREF: sub_140355370+6A↓p
                                        ; sub_140381438+2F↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rax, cs:qword_140CFC760
                mov     r10, rcx
                mov     r8d, edx
                xor     r9d, r9d
                mov     rdx, r10
                mov     rcx, [rax+10h]
                call    sub_1402BEBBC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExTryQueueWorkItem endp
