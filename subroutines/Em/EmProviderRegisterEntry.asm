EmProviderRegisterEntry proc near       ; DATA XREF: .pdata:000000014011C184↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, rdx
                mov     r14, rcx
                xor     edx, edx
                lea     rcx, qword_140C47818
                mov     r12, r9
                mov     rsi, r8
                xor     edi, edi
                xor     ebx, ebx
                call    ExAcquirePushLockExclusiveEx
                test    r15, r15
                jz      short loc_14088BAC3
                test    r14, r14
                jz      short loc_14088BAC3
                test    rsi, rsi
                jz      short loc_14088BAC3
                test    r12, r12
                jz      short loc_14088BAC3
                cmp     [rsi], rbx
                jz      short loc_14088BAC3
                cmp     [rsi+8], ebx
                jz      short loc_14088BAC3
                mov     rcx, r15
                call    sub_1403B449C
                mov     rbp, rax
                test    rax, rax
                jnz     short loc_14088BA90
                mov     ebx, 0C0000225h
                jmp     short loc_14088BAC8
; ---------------------------------------------------------------------------

loc_14088BA90:                          ; CODE XREF: EmProviderRegisterEntry+67↑j
                mov     r8d, [r14+10h]
                xor     edx, edx
                test    r8d, r8d
                jz      short loc_14088BAC3
                mov     r10, [r14+8]

loc_14088BA9F:                          ; CODE XREF: EmProviderRegisterEntry+A1↓j
                mov     r9, [r10+rdx*8]
                mov     rcx, [r9]
                sub     rcx, [r15]
                jnz     short loc_14088BAB3
                mov     rcx, [r9+8]
                sub     rcx, [r15+8]

loc_14088BAB3:                          ; CODE XREF: EmProviderRegisterEntry+89↑j
                test    rcx, rcx
                jz      loc_14088BB3E
                inc     edx
                cmp     edx, r8d
                jb      short loc_14088BA9F

loc_14088BAC3:                          ; CODE XREF: EmProviderRegisterEntry+3E↑j
                                        ; EmProviderRegisterEntry+43↑j ...
                mov     ebx, 0C000000Dh

loc_14088BAC8:                          ; CODE XREF: EmProviderRegisterEntry+6E↑j
                                        ; EmProviderRegisterEntry+141↓j ...
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C47818, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14088BAE7
                lea     rcx, qword_140C47818
                call    ExfTryToWakePushLock

loc_14088BAE7:                          ; CODE XREF: EmProviderRegisterEntry+B9↑j
                lea     rcx, qword_140C47818
                call    sub_140243660
                test    ebx, ebx
                jns     short loc_14088BB1C
                test    rdi, rdi
                jz      short loc_14088BB1C
                mov     rcx, [rdi+8]
                test    rcx, rcx
                jz      short loc_14088BB0F
                mov     edx, 72704D45h
                call    ExFreePoolWithTag

loc_14088BB0F:                          ; CODE XREF: EmProviderRegisterEntry+E3↑j
                mov     edx, 72704D45h
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14088BB1C:                          ; CODE XREF: EmProviderRegisterEntry+D5↑j
                                        ; EmProviderRegisterEntry+DA↑j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14088BB3E:                          ; CODE XREF: EmProviderRegisterEntry+96↑j
                mov     edx, 38h ; '8'
                mov     r15d, 72704D45h
                mov     r8d, r15d
                lea     ecx, [rdx-37h]
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14088BB66

loc_14088BB5C:                          ; CODE XREF: EmProviderRegisterEntry+165↓j
                mov     ebx, 0C000009Ah
                jmp     loc_14088BAC8
; ---------------------------------------------------------------------------

loc_14088BB66:                          ; CODE XREF: EmProviderRegisterEntry+13A↑j
                mov     [rax], rbp
                mov     r8d, r15d
                mov     eax, [rsi+8]
                mov     ecx, 1
                mov     edx, eax
                mov     [rdi+10h], eax
                call    ExAllocatePoolWithTag
                mov     [rdi+8], rax
                test    rax, rax
                jz      short loc_14088BB5C
                mov     r8d, [rdi+10h]
                mov     rcx, rax
                mov     rdx, [rsi]
                call    memmove
                lea     rcx, [r14+38h]
                mov     rdx, [rcx+8]
                lea     rax, [rdi+28h]
                cmp     [rdx], rcx
                jnz     short loc_14088BBFB
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                lea     rcx, [rbp+28h]
                mov     rdx, [rcx+8]
                lea     rax, [rdi+18h]
                cmp     [rdx], rcx
                jnz     short loc_14088BBFB
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                mov     rsi, [rbp+48h]
                mov     [rbp+20h], rax
                jmp     short loc_14088BBED
; ---------------------------------------------------------------------------

loc_14088BBDE:                          ; CODE XREF: EmProviderRegisterEntry+1D0↓j
                mov     rcx, [rsi-8]
                mov     rdx, rbp
                call    sub_1403B4148
                mov     rsi, [rsi]

loc_14088BBED:                          ; CODE XREF: EmProviderRegisterEntry+1BC↑j
                test    rsi, rsi
                jnz     short loc_14088BBDE
                mov     [r12], rdi
                jmp     loc_14088BAC8
; ---------------------------------------------------------------------------

loc_14088BBFB:                          ; CODE XREF: EmProviderRegisterEntry+185↑j
                                        ; EmProviderRegisterEntry+1A4↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
EmProviderRegisterEntry endp
