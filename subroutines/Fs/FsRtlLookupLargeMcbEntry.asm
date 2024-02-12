FsRtlLookupLargeMcbEntry proc near      ; CODE XREF: FsRtlLookupMcbEntry+4A↓p
                                        ; DATA XREF: .pdata:00000001400F1254↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                mov     [rax+8], rcx
                push    r14
                sub     rsp, 40h
                mov     rdi, r9
                mov     rsi, r8
                mov     r14, rdx
                mov     rbx, rcx
                mov     rcx, [rcx]
                call    ExAcquireFastMutex
                nop

loc_1404EF3EE:                          ; DATA XREF: .rdata:00000001400B5538↑o
;   __try { // __finally(loc_1404EF446)
                lea     rcx, [rbx+8]
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_18], rax
                mov     rax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], rax
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                mov     r9, rdi
                mov     r8, rsi
                mov     rdx, r14
                call    FsRtlLookupBaseMcbEntry
                mov     dil, al
;   } // starts at 1404EF3EE

loc_1404EF424:                          ; DATA XREF: .rdata:00000001400B5538↑o
                mov     rcx, [rbx]
                call    KeReleaseGuardedMutex
                mov     al, dil
                mov     rbx, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2
; } // starts at 1404EF3C0

loc_1404EF446:                          ; DATA XREF: .rdata:00000001400B5538↑o
                                        ; .pdata:00000001400F1254↑o ...
;   __finally // owned by 1404EF3EE
                push    rbp
                sub     rsp, 40h
                mov     rbp, rdx
                mov     rax, [rbp+50h]
                mov     rcx, [rax]
                call    KeReleaseGuardedMutex
                nop
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlLookupLargeMcbEntry endp
