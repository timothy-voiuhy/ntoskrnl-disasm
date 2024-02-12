PsRestoreImpersonation proc near        ; CODE XREF: NtOpenThreadTokenEx+2A6↑p
                                        ; sub_14077FF64+2FF↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407FE53A SIZE 00000067 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    r13
                push    r15
                sub     rsp, 20h
                mov     r15, gs:188h
                xor     ebp, ebp

loc_14061CB67:                          ; DATA XREF: .rdata:000000014004E250↑o
                                        ; .rdata:000000014004E268↑o ...
                mov     [rsp+48h+arg_0], rdi
                mov     rsi, rcx
                mov     rdi, [rdx]
                mov     r13d, ebp

loc_14061CB75:                          ; DATA XREF: .rdata:000000014004E268↑o
                                        ; .rdata:000000014004E278↑o ...
                mov     [rsp+48h+arg_8], r12
                mov     r12d, ebp
                mov     [rsp+48h+arg_10], r14
                mov     r14, rdx
                test    rdi, rdi
                jz      loc_1407FE53A
                mov     rcx, rdi
                call    sub_14021B4A4
                test    rax, rax
                jnz     loc_14061CC73

loc_14061CB9F:                          ; CODE XREF: PsRestoreImpersonation+136↓j
                mov     ebx, [r14+0Ch]
                movzx   eax, byte ptr [r14+9]
                and     ebx, 3
                neg     al
                sbb     rcx, rcx
                and     rdi, 0FFFFFFFFFFFFFFF8h
                and     ecx, 4
                or      rbx, rcx
                or      rbx, rdi

loc_14061CBBD:                          ; CODE XREF: PsRestoreImpersonation+1E19ED↓j
                dec     word ptr [r15+1E4h]
                xor     edx, edx
                lea     rcx, [rsi+500h]
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rsi+510h]
                test    al, 8
                jnz     loc_1407FE542

loc_14061CBE1:                          ; CODE XREF: PsRestoreImpersonation+1E1A04↓j
                cmp     qword ptr [r14], 0
                jz      loc_14061CC8B
                mov     [rsi+4A8h], rbx
                mov     [rsi+5B8h], r12
                cmp     byte ptr [r14+8], 0
                jnz     short loc_14061CC66
                lock and dword ptr [rsi+510h], 0FFFFFEFFh

loc_14061CC0B:                          ; CODE XREF: PsRestoreImpersonation+121↓j
                lock or dword ptr [rsi+510h], 8

loc_14061CC13:                          ; CODE XREF: PsRestoreImpersonation+144↓j
                xor     bl, bl

loc_14061CC15:                          ; CODE XREF: PsRestoreImpersonation+14C↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rsi+500h], rax
                mov     r14, [rsp+48h+arg_10]
                mov     r12, [rsp+48h+arg_8]
                test    al, 2
                jnz     loc_1407FE559

loc_14061CC37:                          ; CODE XREF: PsRestoreImpersonation+1E1A0B↓j
                                        ; PsRestoreImpersonation+1E1A1E↓j
                                        ; DATA XREF: ...
                lea     rcx, [rsi+500h]
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                mov     rdi, [rsp+48h+arg_0]
                test    rbp, rbp
                jnz     loc_1407FE573

loc_14061CC59:                          ; CODE XREF: PsRestoreImpersonation+1E1A3A↓j
                                        ; PsRestoreImpersonation+1E1A4C↓j
                                        ; DATA XREF: ...
                add     rsp, 20h
                pop     r15
                pop     r13
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061CC66:                          ; CODE XREF: PsRestoreImpersonation+AE↑j
                                        ; DATA XREF: .pdata:00000001400FD8FC↑o ...
                lock or dword ptr [rsi+510h], 100h
                jmp     short loc_14061CC0B
; ---------------------------------------------------------------------------

loc_14061CC73:                          ; CODE XREF: PsRestoreImpersonation+49↑j
                call    sub_14021B4A4
                mov     rcx, rax
                mov     rdi, rax
                call    ObfReferenceObject
                mov     r12, [r14]
                jmp     loc_14061CB9F
; ---------------------------------------------------------------------------

loc_14061CC8B:                          ; CODE XREF: PsRestoreImpersonation+95↑j
                lock btr dword ptr [rsi+510h], 3
                jnb     loc_14061CC13
                mov     bl, 1
                jmp     loc_14061CC15
PsRestoreImpersonation endp
