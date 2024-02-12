FsRtlUninitializeFileLock proc near     ; CODE XREF: FsRtlFreeFileLock+9↑p
                                        ; DATA XREF: .rdata:0000000140088F58↑o ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048BEF0 SIZE 000001D4 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                and     [rsp+58h+arg_0], 0
                mov     r13, rcx
                mov     rbx, [rcx+18h]
                test    rbx, rbx
                jz      loc_140362681
                lea     rcx, qword_140C47700
                call    KeAcquireSpinLockRaiseToDpc
                lea     r14, [rbx+18h]
                mov     bpl, al
                mov     rcx, r14
                call    KeAcquireSpinLockAtDpcLevel
                lea     rsi, [rbx+20h]

loc_14036261A:                          ; CODE XREF: FsRtlUninitializeFileLock+129959↓j
                mov     rcx, [rsi]
                test    rcx, rcx
                jnz     short loc_140362699
                lea     rsi, [rbx+28h]

loc_140362626:                          ; CODE XREF: FsRtlUninitializeFileLock+129979↓j
                mov     rdi, [rsi]
                test    rdi, rdi
                jnz     loc_14048BF2E
                or      r15, 0FFFFFFFFFFFFFFFFh

loc_140362636:                          ; CODE XREF: FsRtlUninitializeFileLock+129A8B↓j
                mov     rdi, [rbx+30h]
                mov     rcx, r14
                test    rdi, rdi
                jnz     loc_14048BF4E
                call    KeReleaseSpinLockFromDpcLevel
                lea     rcx, qword_140C47700
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048C060

loc_140362665:                          ; CODE XREF: FsRtlUninitializeFileLock+129A92↓j
                                        ; FsRtlUninitializeFileLock+129A9E↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     rdx, rbx
                lea     rcx, unk_140CDB900
                call    sub_14030D224
                and     qword ptr [r13+18h], 0

loc_140362681:                          ; CODE XREF: FsRtlUninitializeFileLock+25↑j
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140362699:                          ; CODE XREF: FsRtlUninitializeFileLock+50↑j
                lea     rdi, [rcx-18h]
                jmp     loc_14048BF05
FsRtlUninitializeFileLock endp
