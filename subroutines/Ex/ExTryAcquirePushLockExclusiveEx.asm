ExTryAcquirePushLockExclusiveEx proc near
                                        ; DATA XREF: .rdata:000000014004D294↑o
                                        ; .rdata:000000014004D2A8↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041C0A2 SIZE 0000003B BYTES

                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041C0A2
                test    dl, 2
                jnz     short loc_140219AA3
                mov     [rsp+38h+arg_10], edi

loc_140219A44:                          ; DATA XREF: .rdata:000000014004D294↑o
                                        ; .rdata:000000014004D2A8↑o ...
                mov     [rsp+38h+arg_0], rbx
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jz      short loc_140219AC6
                lock bts dword ptr [rbx+78h], 10h

loc_140219A6E:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+131↓j
                                        ; ExTryAcquirePushLockExclusiveEx+179↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+38h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_140219A9E
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     loc_140219B6D

loc_140219A9E:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+6C↑j
                                        ; ExTryAcquirePushLockExclusiveEx+152↓j
                mov     rbx, [rsp+38h+arg_0]

loc_140219AA3:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+1E↑j
                                        ; DATA XREF: .pdata:00000001400CA3D4↑o ...
                lock bts qword ptr [rsi], 0
                jb      loc_140219B56
                test    rdi, rdi
                jz      short loc_140219AB8
                or      byte ptr [rdi+1Ah], 1

loc_140219AB8:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+92↑j
                mov     al, 1

loc_140219ABA:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+148↓j
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140219AC6:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+46↑j
                                        ; DATA XREF: .pdata:00000001400CA3E0↑o ...
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+38h+arg_8], edi
                test    al, al
                jz      loc_140219B77

loc_140219AD9:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+16E↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+38h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]

loc_140219AFB:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+188↓j
                                        ; ExTryAcquirePushLockExclusiveEx+2026A6↓j
                test    rdi, rdi
                jz      loc_140219B93
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_140219B35
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_14041C0CB

loc_140219B35:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+F1↑j
                mov     eax, 0FFFFFFFFh

loc_140219B3A:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+2026B8↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax
                jmp     loc_140219A6E
; ---------------------------------------------------------------------------

loc_140219B56:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+89↑j
                                        ; DATA XREF: .pdata:00000001400CA3EC↑o ...
                test    rdi, rdi
                jz      short loc_140219B66
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14031D1B0

loc_140219B66:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+139↑j
                xor     al, al
                jmp     loc_140219ABA
; ---------------------------------------------------------------------------

loc_140219B6D:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+78↑j
                                        ; DATA XREF: .pdata:00000001400CA3F8↑o ...
                call    KiCheckForKernelApcDelivery
                jmp     loc_140219A9E
; ---------------------------------------------------------------------------

loc_140219B77:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+B3↑j
                cmp     [rbx+366h], dil
                jz      short loc_140219B9E
                mov     eax, edi
                xchg    al, [rbx+366h]
                or      al, [rbx+318h]
                jmp     loc_140219AD9
; ---------------------------------------------------------------------------

loc_140219B93:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+DE↑j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_140219A6E
; ---------------------------------------------------------------------------

loc_140219B9E:                          ; CODE XREF: ExTryAcquirePushLockExclusiveEx+15E↑j
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      loc_140219AFB
                jmp     loc_14041C0BA
ExTryAcquirePushLockExclusiveEx endp
