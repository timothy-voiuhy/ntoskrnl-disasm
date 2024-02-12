FsRtlNotifyCleanup proc near            ; DATA XREF: .rdata:000000014007FC70↑o
                                        ; .pdata:0000000140104CF4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E80DC SIZE 00000043 BYTES
; FUNCTION CHUNK AT 0000000140825AEC SIZE 00000018 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_0], rcx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, r8
                mov     r14, rdx
                mov     rbx, rcx
                and     [rsp+38h+arg_18], 0
                mov     rdi, gs:188h
                cmp     rdi, [rcx+38h]
                jz      short loc_1406F43D9
                call    ExAcquireFastMutexUnsafe
                mov     [rbx+38h], rdi

loc_1406F43D9:                          ; CODE XREF: FsRtlNotifyCleanup+2E↑j
                inc     dword ptr [rbx+40h]

loc_1406F43DC:                          ; DATA XREF: .rdata:000000014007FC5C↑o
;   __try { // __finally(loc_1407E80DC)
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_1406F4754
                test    rax, rax
                jz      short loc_1406F43FA
                lea     rdx, [rsp+38h+arg_18]
                mov     rcx, rax
                call    sub_1406F477C
                nop
;   } // starts at 1406F43DC

loc_1406F43FA:                          ; CODE XREF: FsRtlNotifyCleanup+4A↑j
                                        ; DATA XREF: .rdata:000000014007FC5C↑o
                add     dword ptr [rbx+40h], 0FFFFFFFFh
                jnz     short loc_1406F440D
                and     qword ptr [rbx+38h], 0
                mov     rcx, rbx
                call    ExReleaseFastMutexUnsafe

loc_1406F440D:                          ; CODE XREF: FsRtlNotifyCleanup+5E↑j
                mov     rbx, [rsp+38h+arg_18]
                test    rbx, rbx
                jnz     loc_140825AEC

loc_1406F441B:                          ; CODE XREF: FsRtlNotifyCleanup+13175F↓j
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F43A0
FsRtlNotifyCleanup endp
