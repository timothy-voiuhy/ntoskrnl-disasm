IoAcquireRemoveLockEx proc near         ; CODE XREF: sub_1402BD16C+27↑p
                                        ; sub_140370714+C1↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140452A86 SIZE 000000C4 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebx, r9d
                mov     rbp, r8
                mov     r15, rdx
                mov     rdi, rcx
                lock inc dword ptr [rcx+4]
                xor     esi, esi
                cmp     [rcx], sil
                jnz     short loc_1402BD206
                cmp     [rsp+38h+arg_20], 78h ; 'x'
                jz      loc_140452A86

loc_1402BD1EA:                          ; CODE XREF: IoAcquireRemoveLockEx+7A↓j
                                        ; IoAcquireRemoveLockEx+1958F5↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402BD206:                          ; CODE XREF: IoAcquireRemoveLockEx+2D↑j
                or      r9, 0FFFFFFFFFFFFFFFFh
                mov     eax, r9d
                lock xadd [rcx+4], eax
                add     eax, r9d
                jnz     short loc_1402BD225
                add     rcx, 8
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent

loc_1402BD225:                          ; CODE XREF: IoAcquireRemoveLockEx+65↑j
                mov     esi, 0C0000056h
                jmp     short loc_1402BD1EA
IoAcquireRemoveLockEx endp
