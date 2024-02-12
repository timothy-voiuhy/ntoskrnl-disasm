CcUnregisterExternalCache proc near     ; DATA XREF: .pdata:00000001400F0E40↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1404EA278
                mov     rdx, [rbx+8]
                mov     rcx, rbx
                call    CcDeductDirtyPagesFromExternalCache
                mov     edx, 43456343h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcUnregisterExternalCache endp
