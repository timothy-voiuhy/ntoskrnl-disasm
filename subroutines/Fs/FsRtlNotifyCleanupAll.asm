FsRtlNotifyCleanupAll proc near         ; DATA XREF: .pdata:000000014011C43C↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], rsi
                mov     [rax+8], rcx
                push    rdi
                sub     rsp, 20h
                mov     rsi, rdx
                mov     rbx, rcx
                and     qword ptr [rax+18h], 0
                mov     rdi, gs:188h
                cmp     rdi, [rcx+38h]
                jz      short loc_14088ED27
                call    ExAcquireFastMutexUnsafe
                mov     [rbx+38h], rdi

loc_14088ED27:                          ; CODE XREF: FsRtlNotifyCleanupAll+2C↑j
                inc     dword ptr [rbx+40h]

loc_14088ED2A:                          ; DATA XREF: .rdata:00000001400B5930↑o
;   __try { // __finally(loc_14088ED87)
                mov     rdi, [rsi]

loc_14088ED2D:                          ; CODE XREF: FsRtlNotifyCleanupAll:loc_14088ED61↓j
                cmp     rdi, rsi
                jz      short loc_14088ED63
                lea     rcx, [rdi-20h]
                mov     rdi, [rdi]
                lea     rdx, [rsp+28h+arg_10]
                call    sub_1406F477C
                cmp     [rsp+28h+arg_10], 0
                jz      short loc_14088ED61
                mov     rcx, [rsp+28h+arg_10]
                call    SeReleaseSubjectContext
                xor     edx, edx
                mov     rcx, [rsp+28h+arg_10]
                call    ExFreePoolWithTag

loc_14088ED61:                          ; CODE XREF: FsRtlNotifyCleanupAll+59↑j
                jmp     short loc_14088ED2D
;   } // starts at 14088ED2A
; ---------------------------------------------------------------------------

loc_14088ED63:                          ; CODE XREF: FsRtlNotifyCleanupAll+40↑j
                                        ; DATA XREF: .rdata:00000001400B5930↑o
                add     dword ptr [rbx+40h], 0FFFFFFFFh
                jnz     short loc_14088ED76
                and     qword ptr [rbx+38h], 0
                mov     rcx, rbx
                call    ExReleaseFastMutexUnsafe

loc_14088ED76:                          ; CODE XREF: FsRtlNotifyCleanupAll+77↑j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088ECF0
; ---------------------------------------------------------------------------

loc_14088ED87:                          ; DATA XREF: .rdata:00000001400B5930↑o
                                        ; .pdata:000000014011C43C↑o ...
;   __finally // owned by 14088ED2A
                push    rbp
                sub     rsp, 20h
                mov     rbp, rdx
                mov     rcx, [rbp+30h]
                add     dword ptr [rcx+40h], 0FFFFFFFFh
                jnz     short loc_14088EDA5
                and     qword ptr [rcx+38h], 0
                call    ExReleaseFastMutexUnsafe
                nop

loc_14088EDA5:                          ; CODE XREF: FsRtlNotifyCleanupAll+A8↑j
                add     rsp, 20h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlNotifyCleanupAll endp
