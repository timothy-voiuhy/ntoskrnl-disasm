FsRtlLookupLastLargeMcbEntryAndIndex proc near
                                        ; DATA XREF: .pdata:00000001400F1284↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                mov     [rax+8], rcx
                push    r14
                sub     rsp, 20h
                mov     rdi, r9
                mov     rsi, r8
                mov     r14, rdx
                mov     rbx, rcx
                mov     rcx, [rcx]
                call    ExAcquireFastMutex
                nop

loc_1404EF51E:                          ; DATA XREF: .rdata:00000001400B54C4↑o
;   __try { // __finally(loc_1404EF555)
                lea     rcx, [rbx+8]
                mov     r9, rdi
                mov     r8, rsi
                mov     rdx, r14
                call    FsRtlLookupLastBaseMcbEntryAndIndex
                mov     dil, al
;   } // starts at 1404EF51E

loc_1404EF533:                          ; DATA XREF: .rdata:00000001400B54C4↑o
                mov     rcx, [rbx]
                call    KeReleaseGuardedMutex
                mov     al, dil
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404EF4F0
; ---------------------------------------------------------------------------

loc_1404EF555:                          ; DATA XREF: .rdata:00000001400B54C4↑o
                                        ; .pdata:00000001400F1284↑o ...
;   __finally // owned by 1404EF51E
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
FsRtlLookupLastLargeMcbEntryAndIndex endp
