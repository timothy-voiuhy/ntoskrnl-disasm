ObDereferenceSecurityDescriptor proc near
                                        ; CODE XREF: sub_1402F0A40+85↑p
                                        ; sub_1405ED834+2C8↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408001C4 SIZE 00000018 BYTES

                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                lea     rbx, [rcx-20h]
                prefetchw byte ptr [rbx+8]
                mov     rax, [rbx+8]
                mov     rcx, rax
                mov     esi, edx
                sub     rcx, rdi
                test    rcx, rcx
                jle     short loc_140624ABB

loc_140624AA3:                          ; CODE XREF: ObDereferenceSecurityDescriptor+113↓j
                lock cmpxchg [rbx+8], rcx
                mov     rcx, rax
                jnz     loc_140624B8D

loc_140624AB2:                          ; CODE XREF: ObDereferenceSecurityDescriptor+FE↓j
                add     rsp, 20h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140624ABB:                          ; CODE XREF: ObDereferenceSecurityDescriptor+21↑j
                                        ; ObDereferenceSecurityDescriptor+119↓j
                                        ; DATA XREF: ...
                mov     [rsp+38h+arg_0], rbp
                mov     [rsp+38h+arg_8], r14
                mov     [rsp+38h+arg_10], r15
                test    rcx, rcx
                jnz     loc_1408001C4

loc_140624AD3:                          ; CODE XREF: ObDereferenceSecurityDescriptor+1DB74B↓j
                mov     eax, [rbx+10h]
                mov     r15, gs:188h
                movzx   ebp, al
                lea     rax, unk_140D25A00
                shl     rbp, 4
                add     rbp, rax
                dec     word ptr [r15+1E4h]
                lea     r14, [rbp+8]
                xor     edx, edx
                mov     rcx, rbp
                call    ExAcquirePushLockExclusiveEx
                neg     edi
                movsxd  rax, edi
                lock xadd [rbx+8], rax
                sub     rax, rsi
                test    rax, rax
                jg      loc_140624B9E
                jnz     loc_1408001D0
                mov     rcx, [r14]
                cmp     rcx, rbx
                jz      short loc_140624B39

loc_140624B2B:                          ; CODE XREF: ObDereferenceSecurityDescriptor+B7↓j
                mov     rax, [rcx]
                mov     r14, rcx
                mov     rcx, rax
                cmp     rax, rbx
                jnz     short loc_140624B2B

loc_140624B39:                          ; CODE XREF: ObDereferenceSecurityDescriptor+A9↑j
                mov     rax, [rbx]
                mov     [r14], rax
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbp+0], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140624B83

loc_140624B52:                          ; CODE XREF: ObDereferenceSecurityDescriptor+10B↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                mov     edx, 6353624Fh
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_140624B6F:                          ; CODE XREF: ObDereferenceSecurityDescriptor+141↓j
                mov     r14, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_0]
                mov     r15, [rsp+38h+arg_10]
                jmp     loc_140624AB2
; ---------------------------------------------------------------------------

loc_140624B83:                          ; CODE XREF: ObDereferenceSecurityDescriptor+D0↑j
                                        ; DATA XREF: .pdata:00000001400FDDE8↑o ...
                mov     rcx, rbp
                call    ExfTryToWakePushLock
                jmp     short loc_140624B52
; ---------------------------------------------------------------------------

loc_140624B8D:                          ; CODE XREF: ObDereferenceSecurityDescriptor+2C↑j
                                        ; DATA XREF: .pdata:00000001400FDDF4↑o ...
                sub     rcx, rsi
                test    rcx, rcx
                jg      loc_140624AA3
                jmp     loc_140624ABB
; ---------------------------------------------------------------------------

loc_140624B9E:                          ; CODE XREF: ObDereferenceSecurityDescriptor+97↑j
                                        ; ObDereferenceSecurityDescriptor+1DB757↓j
                                        ; DATA XREF: ...
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbp+0], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140624BC3

loc_140624BB1:                          ; CODE XREF: ObDereferenceSecurityDescriptor+14B↓j
                mov     rcx, rbp
                call    sub_140243660
                mov     rcx, r15
                call    sub_14021E1F0
                jmp     short loc_140624B6F
; ---------------------------------------------------------------------------

loc_140624BC3:                          ; CODE XREF: ObDereferenceSecurityDescriptor+12F↑j
                mov     rcx, rbp
                call    ExfTryToWakePushLock
                jmp     short loc_140624BB1
ObDereferenceSecurityDescriptor endp
