FsRtlRemoveLargeMcbEntry proc near      ; CODE XREF: FsRtlRemoveMcbEntry+9↓p
                                        ; DATA XREF: .pdata:00000001400F12CC↑o

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

loc_1404EF6F6:                          ; DATA XREF: .rdata:00000001400B5570↑o
;   __try { // __finally(loc_1404EF71E)
                mov     r8d, edi
                mov     edx, esi
                lea     rcx, [rbx+8]
                call    FsRtlRemoveBaseMcbEntry
                nop
;   } // starts at 1404EF6F6

loc_1404EF705:                          ; DATA XREF: .rdata:00000001400B5570↑o
                mov     rcx, [rbx]
                call    KeReleaseGuardedMutex
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2
; } // starts at 1404EF6D0

loc_1404EF71E:                          ; DATA XREF: .rdata:00000001400B5570↑o
                                        ; .pdata:00000001400F12CC↑o ...
;   __finally // owned by 1404EF6F6
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
FsRtlRemoveLargeMcbEntry endp
