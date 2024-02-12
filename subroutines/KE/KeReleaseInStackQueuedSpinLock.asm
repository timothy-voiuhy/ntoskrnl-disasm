KeReleaseInStackQueuedSpinLock proc near
                                        ; CODE XREF: sub_140260E80+24E↓p
                                        ; sub_140260E80+299↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041D4F0 SIZE 0000009A BYTES

                push    rbx
                sub     rsp, 20h
                test    byte ptr cs:xmmword_140CFC480+6, 1
                mov     rbx, rcx
                jnz     loc_14041D4F0

loc_14025FC86:                          ; DATA XREF: .rdata:000000014005ABC8↑o
                                        ; .rdata:000000014005ABDC↑o ...
                mov     [rsp+28h+arg_0], rdi
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                xor     edi, edi
                test    rax, rax
                jnz     short loc_14025FCE9
                mov     rcx, [rcx+8]
                mov     rax, rbx
                lock cmpxchg [rcx], rdi
                jnz     short loc_14025FCE1

loc_14025FCA6:                          ; CODE XREF: KeReleaseInStackQueuedSpinLock+82↓j
                mov     rdi, [rsp+28h+arg_0]

loc_14025FCAB:                          ; CODE XREF: KeReleaseInStackQueuedSpinLock+1BD88B↓j
                                        ; DATA XREF: .pdata:00000001400CD644↑o ...
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041D500

loc_14025FCC4:                          ; CODE XREF: KeReleaseInStackQueuedSpinLock+1BD894↓j
                                        ; KeReleaseInStackQueuedSpinLock+1BD8A3↓j ...
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbx+10h]
                test    eax, eax
                jnz     loc_14041D524

loc_14025FCD6:                          ; CODE XREF: KeReleaseInStackQueuedSpinLock+1BD8B6↓j
                                        ; KeReleaseInStackQueuedSpinLock+1BD8C2↓j ...
                mov     cr8, rbx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14025FCE1:                          ; CODE XREF: KeReleaseInStackQueuedSpinLock+34↑j
                                        ; DATA XREF: .pdata:00000001400CD650↑o ...
                mov     rcx, rbx
                call    sub_140313680

loc_14025FCE9:                          ; CODE XREF: KeReleaseInStackQueuedSpinLock+26↑j
                mov     [rbx], rdi
                lock xor qword ptr [rax+8], 1
                jmp     short loc_14025FCA6
KeReleaseInStackQueuedSpinLock endp
