FsRtlAddLargeMcbEntry proc near         ; CODE XREF: FsRtlAddMcbEntry+C↓p
                                        ; DATA XREF: .pdata:00000001400D626C↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041AEC0 SIZE 0000001D BYTES

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

loc_14032CBDE:                          ; DATA XREF: .rdata:000000014007CA30↑o
;   __try { // __finally(loc_14041AEC0)
                lea     rcx, [rbx+8]
                mov     r9, rdi
                mov     r8, rsi
                mov     rdx, r14
                call    FsRtlAddBaseMcbEntryEx
                test    eax, eax
                setns   dil
;   } // starts at 14032CBDE

loc_14032CBF6:                          ; DATA XREF: .rdata:000000014007CA30↑o
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
; } // starts at 14032CBB0
FsRtlAddLargeMcbEntry endp
