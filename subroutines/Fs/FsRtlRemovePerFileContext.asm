FsRtlRemovePerFileContext proc near     ; DATA XREF: .pdata:00000001400F14DC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     r14, r8
                xor     eax, eax
                mov     rsi, rdx
                lock cmpxchg [rcx], r15
                mov     rbp, rax
                jz      loc_1404F15C8
                lea     rdi, [rax+8]
                cmp     [rdi], rdi
                jz      loc_1404F15C8
                mov     rcx, gs:188h
                dec     word ptr [rcx+1E4h]
                xor     edx, edx
                mov     rcx, rax
                call    ExAcquirePushLockExclusiveEx
                mov     rax, [rdi]
                mov     ebx, r15d
                test    r14, r14
                jnz     short loc_1404F15AA
                test    rsi, rsi
                jnz     short loc_1404F15BA
                cmp     rax, rdi
                jz      short loc_1404F157E

loc_1404F155D:                          ; CODE XREF: FsRtlRemovePerFileContext+B5↓j
                                        ; FsRtlRemovePerFileContext+C5↓j
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1404F157E
                mov     rax, [rax]
                cmp     [rax+8], rbx
                jnz     short loc_1404F15C1
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     short loc_1404F15C1
                mov     [rcx], rax
                mov     [rax+8], rcx

loc_1404F157E:                          ; CODE XREF: FsRtlRemovePerFileContext+6B↑j
                                        ; FsRtlRemovePerFileContext+73↑j ...
                xor     edx, edx
                mov     rcx, rbp
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rax, rbx
                jmp     short loc_1404F15CA
; ---------------------------------------------------------------------------

loc_1404F159B:                          ; CODE XREF: FsRtlRemovePerFileContext+BD↓j
                cmp     [rax+10h], rsi
                jnz     short loc_1404F15A7
                cmp     [rax+18h], r14
                jz      short loc_1404F155D

loc_1404F15A7:                          ; CODE XREF: FsRtlRemovePerFileContext+AF↑j
                mov     rax, [rax]

loc_1404F15AA:                          ; CODE XREF: FsRtlRemovePerFileContext+61↑j
                cmp     rax, rdi
                jnz     short loc_1404F159B
                jmp     short loc_1404F157E
; ---------------------------------------------------------------------------

loc_1404F15B1:                          ; CODE XREF: FsRtlRemovePerFileContext+CD↓j
                cmp     [rax+10h], rsi
                jz      short loc_1404F155D
                mov     rax, [rax]

loc_1404F15BA:                          ; CODE XREF: FsRtlRemovePerFileContext+66↑j
                cmp     rax, rdi
                jnz     short loc_1404F15B1
                jmp     short loc_1404F157E
; ---------------------------------------------------------------------------

loc_1404F15C1:                          ; CODE XREF: FsRtlRemovePerFileContext+7C↑j
                                        ; FsRtlRemovePerFileContext+85↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1404F15C8:                          ; CODE XREF: FsRtlRemovePerFileContext+2B↑j
                                        ; FsRtlRemovePerFileContext+38↑j
                xor     eax, eax

loc_1404F15CA:                          ; CODE XREF: FsRtlRemovePerFileContext+A9↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlRemovePerFileContext endp
