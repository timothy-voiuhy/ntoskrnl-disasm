FsRtlSplitLargeMcb proc near            ; DATA XREF: .pdata:00000001400F1308↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_0], rcx
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbx, rcx
                mov     rcx, [rcx]
                call    ExAcquireFastMutex
                nop

loc_1404EF956:                          ; DATA XREF: .rdata:00000001400B5488↑o
;   __try { // __finally(loc_1404EF984)
                lea     rcx, [rbx+8]
                mov     r8, rdi
                mov     rdx, rsi
                call    FsRtlSplitBaseMcb
                mov     dil, al
;   } // starts at 1404EF956

loc_1404EF968:                          ; DATA XREF: .rdata:00000001400B5488↑o
                mov     rcx, [rbx]
                call    KeReleaseGuardedMutex
                mov     al, dil
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4
; } // starts at 1404EF930

loc_1404EF984:                          ; DATA XREF: .rdata:00000001400B5488↑o
                                        ; .pdata:00000001400F1308↑o ...
;   __finally // owned by 1404EF956
                push    rbp
                sub     rsp, 20h
                mov     rbp, rdx
                mov     rax, [rbp+30h]
                mov     rcx, [rax]
                call    KeReleaseGuardedMutex
                nop
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlSplitLargeMcb endp
