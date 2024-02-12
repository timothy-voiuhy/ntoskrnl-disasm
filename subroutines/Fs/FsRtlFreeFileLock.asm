FsRtlFreeFileLock proc near             ; DATA XREF: .pdata:00000001400D9530↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    FsRtlUninitializeFileLock
                mov     rdx, rbx
                lea     rcx, unk_140CDB880
                call    sub_140234500
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlFreeFileLock endp
