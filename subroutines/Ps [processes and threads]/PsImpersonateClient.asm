PsImpersonateClient proc near           ; CODE XREF: sub_1405E7548:loc_1405E771D↑p
                                        ; sub_1405F7EE0+533↑p ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140805720 SIZE 00000054 BYTES

                mov     rax, rsp
                mov     [rax+18h], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rbx, [rcx+220h]
                xor     r13d, r13d
                xor     bpl, bpl
                movzx   r12d, r9b
                mov     [rax-50h], r13
                movzx   r15d, r8b
                mov     [rax+8], bpl
                mov     rsi, rdx
                mov     [rax-58h], r13
                mov     rdi, rcx
                test    rdx, rdx
                jnz     loc_14063F667
                mov     eax, [rcx+510h]
                mov     esi, r13d
                mov     ebp, r13d
                test    al, 8
                jz      loc_14063F7A6
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E4h]
                add     rcx, 500h
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rdi+510h]
                test    al, 8
                jz      short loc_14063F621
                mov     rsi, [rdi+4A8h]
                mov     rbp, [rdi+5B8h]
                and     rsi, 0FFFFFFFFFFFFFFF8h
                mov     [rdi+5B8h], r13
                lock and dword ptr [rdi+510h], 0FFFFFFF7h

loc_14063F621:                          ; CODE XREF: PsImpersonateClient+7E↑j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi+500h], rax
                test    al, 2
                jnz     loc_140805720

loc_14063F639:                          ; CODE XREF: PsImpersonateClient+1C61A2↓j
                                        ; PsImpersonateClient+1C61B5↓j
                lea     rcx, [rdi+500h]
                call    sub_140243660
                add     word ptr [rbx+1E4h], 1
                jnz     short loc_14063F65F
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     loc_14063F8C4

loc_14063F65F:                          ; CODE XREF: PsImpersonateClient+CD↑j
                                        ; PsImpersonateClient+34C↓j ...
                mov     rdx, rbx
                jmp     loc_14063F788
; ---------------------------------------------------------------------------

loc_14063F667:                          ; CODE XREF: PsImpersonateClient+40↑j
                lea     r13, [rbx+4B8h]
                mov     rcx, r13
                call    sub_14024C570
                mov     r14, rax
                test    rax, rax
                jz      loc_14063F8DC

loc_14063F682:                          ; CODE XREF: PsImpersonateClient+3B6↓j
                mov     ebx, [rsp+88h+arg_20]
                lea     r9, [rsp+88h+arg_0]
                mov     r8d, ebx
                mov     dword ptr [rsp+88h+arg_8], ebx
                mov     rdx, rsi
                mov     rcx, r14
                call    sub_14063EF70
                test    eax, eax
                js      loc_14063F858
                cmp     [rsp+88h+arg_0], bpl
                jnz     loc_14063F806

loc_14063F6BC:                          ; CODE XREF: PsImpersonateClient+2C6↓j
                                        ; PsImpersonateClient+32B↓j ...
                mov     rdx, r14
                mov     rcx, r13
                call    sub_14024C4A0
                test    bpl, bpl
                mov     ebp, dword ptr [rsp+88h+arg_8]
                jnz     short loc_14063F6DB

loc_14063F6D3:                          ; CODE XREF: PsImpersonateClient+3C3↓j
                mov     rcx, rsi
                call    ObfReferenceObject

loc_14063F6DB:                          ; CODE XREF: PsImpersonateClient+151↑j
                mov     r14, gs:188h
                mov     rbx, r12
                and     ebx, 1
                mov     eax, ebp
                shl     rbx, 2
                and     eax, 3
                or      rbx, rax
                and     rsi, 0FFFFFFFFFFFFFFF8h
                or      rbx, rsi
                dec     word ptr [r14+1E4h]
                xor     edx, edx
                lea     rcx, [rdi+500h]
                call    ExAcquirePushLockExclusiveEx
                mov     eax, [rdi+510h]
                test    al, 8
                jnz     loc_14063F7EF
                xor     eax, eax
                mov     esi, eax
                mov     ebp, eax
                lock or dword ptr [rdi+510h], 8

loc_14063F72F:                          ; CODE XREF: PsImpersonateClient+281↓j
                mov     rax, [rsp+88h+var_58]
                mov     [rdi+5B8h], rax
                mov     [rdi+4A8h], rbx
                test    r15b, r15b
                jz      loc_14063F7DF
                lock or dword ptr [rdi+510h], 100h

loc_14063F756:                          ; CODE XREF: PsImpersonateClient+26A↓j
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rdi+500h], rax
                test    al, 2
                jnz     loc_14080575A

loc_14063F76E:                          ; CODE XREF: PsImpersonateClient+1C61DC↓j
                                        ; PsImpersonateClient+1C61EF↓j
                lea     rcx, [rdi+500h]
                call    sub_140243660
                add     word ptr [r14+1E4h], 1
                jz      short loc_14063F7C1

loc_14063F785:                          ; CODE XREF: PsImpersonateClient+24B↓j
                                        ; PsImpersonateClient+256↓j ...
                mov     rdx, r14

loc_14063F788:                          ; CODE XREF: PsImpersonateClient+E2↑j
                mov     rcx, rdi
                call    sub_14063F960
                test    rsi, rsi
                jz      short loc_14063F79D
                mov     rcx, rsi
                call    PsDereferenceSiloContext

loc_14063F79D:                          ; CODE XREF: PsImpersonateClient+213↑j
                test    rbp, rbp
                jnz     loc_14063F84B

loc_14063F7A6:                          ; CODE XREF: PsImpersonateClient+54↑j
                                        ; PsImpersonateClient+2D3↓j
                xor     eax, eax

loc_14063F7A8:                          ; CODE XREF: PsImpersonateClient+1C61D5↓j
                mov     rbx, [rsp+88h+arg_10]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14063F7C1:                          ; CODE XREF: PsImpersonateClient+203↑j
                lea     rax, [r14+98h]
                cmp     [rax], rax
                jz      short loc_14063F785
                cmp     word ptr [r14+1E6h], 0
                jnz     short loc_14063F785
                call    KiCheckForKernelApcDelivery
                jmp     short loc_14063F785
; ---------------------------------------------------------------------------

loc_14063F7DF:                          ; CODE XREF: PsImpersonateClient+1C5↑j
                lock and dword ptr [rdi+510h], 0FFFFFEFFh
                jmp     loc_14063F756
; ---------------------------------------------------------------------------

loc_14063F7EF:                          ; CODE XREF: PsImpersonateClient+19B↑j
                mov     rsi, [rdi+4A8h]
                mov     rbp, [rdi+5B8h]
                and     rsi, 0FFFFFFFFFFFFFFF8h
                jmp     loc_14063F72F
; ---------------------------------------------------------------------------

loc_14063F806:                          ; CODE XREF: PsImpersonateClient+136↑j
                mov     rcx, r14
                call    sub_14035B334
                lea     rcx, [rsp+88h+var_58]
                mov     r9b, 1
                mov     [rsp+88h+var_60], rcx
                mov     edx, ebx
                mov     rcx, rsi
                mov     [rsp+88h+var_68], rax
                call    sub_1406F706C
                mov     ebx, eax
                test    eax, eax
                js      loc_140805748
                test    r15b, r15b
                jz      short loc_14063F8B0
                mov     rcx, [rsp+88h+var_58]
                mov     rdx, rsi
                call    sub_140352548
                jmp     loc_14063F6BC
; ---------------------------------------------------------------------------

loc_14063F84B:                          ; CODE XREF: PsImpersonateClient+220↑j
                mov     rcx, rbp
                call    PsDereferenceSiloContext
                jmp     loc_14063F7A6
; ---------------------------------------------------------------------------

loc_14063F858:                          ; CODE XREF: PsImpersonateClient+128↑j
                cmp     dword ptr [rsi+0C0h], 2
                mov     ebx, 1
                mov     dword ptr [rsp+88h+arg_8], ebx
                jnz     short loc_14063F87B
                mov     eax, [rsi+0C4h]
                cmp     eax, ebx
                jl      loc_14080573A

loc_14063F87B:                          ; CODE XREF: PsImpersonateClient+2EB↑j
                                        ; PsImpersonateClient+1C61C3↓j
                lea     rax, [rsp+88h+var_50]
                xor     r9d, r9d
                mov     [rsp+88h+var_60], rax
                mov     edx, ebx
                xor     eax, eax
                mov     rcx, rsi
                mov     [rsp+88h+var_68], rax
                call    sub_1406F706C
                mov     ebx, eax
                test    eax, eax
                js      loc_140805748
                mov     rsi, [rsp+88h+var_50]
                mov     bpl, 1
                jmp     loc_14063F6BC
; ---------------------------------------------------------------------------

loc_14063F8B0:                          ; CODE XREF: PsImpersonateClient+2B7↑j
                mov     rsi, [rsp+88h+var_58]
                xor     eax, eax
                mov     [rsp+88h+var_58], rax
                mov     bpl, 1
                jmp     loc_14063F6BC
; ---------------------------------------------------------------------------

loc_14063F8C4:                          ; CODE XREF: PsImpersonateClient+D9↑j
                cmp     [rbx+1E6h], r13w
                jnz     loc_14063F65F
                call    KiCheckForKernelApcDelivery
                jmp     loc_14063F65F
; ---------------------------------------------------------------------------

loc_14063F8DC:                          ; CODE XREF: PsImpersonateClient+FC↑j
                mov     rax, gs:188h
                mov     [rsp+88h+arg_8], rax
                dec     word ptr [rax+1E4h]
                add     rbx, 438h
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockSharedEx
                mov     rcx, r13
                call    sub_14021AEA8
                mov     r14, rax
                xor     ecx, ecx
                mov     eax, 11h
                lock cmpxchg [rbx], rcx
                jnz     short loc_14063F948

loc_14063F91E:                          ; CODE XREF: PsImpersonateClient+3D0↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, [rsp+88h+arg_8]
                call    sub_14021E1F0
                test    r14, r14
                jnz     loc_14063F682
                mov     ebp, [rsp+88h+arg_20]
                jmp     loc_14063F6D3
; ---------------------------------------------------------------------------

loc_14063F948:                          ; CODE XREF: PsImpersonateClient+39C↑j
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_14063F91E
PsImpersonateClient endp
