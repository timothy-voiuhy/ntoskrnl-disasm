FsRtlLookupLastLargeMcbEntry proc near  ; CODE XREF: FsRtlLookupLastMcbEntry+28↓p
                                        ; DATA XREF: .pdata:00000001400F126C↑o

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

loc_1404EF496:                          ; DATA XREF: .rdata:00000001400B54FC↑o
;   __try { // __finally(loc_1404EF4C4)
                lea     rcx, [rbx+8]
                mov     r8, rdi
                mov     rdx, rsi
                call    FsRtlLookupLastBaseMcbEntry
                mov     dil, al
;   } // starts at 1404EF496

loc_1404EF4A8:                          ; DATA XREF: .rdata:00000001400B54FC↑o
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
; } // starts at 1404EF470

loc_1404EF4C4:                          ; DATA XREF: .rdata:00000001400B54FC↑o
                                        ; .pdata:00000001400F126C↑o ...
;   __finally // owned by 1404EF496
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
FsRtlLookupLastLargeMcbEntry endp
