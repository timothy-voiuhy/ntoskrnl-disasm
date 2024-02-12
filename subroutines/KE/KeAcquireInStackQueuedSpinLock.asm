KeAcquireInStackQueuedSpinLock proc near
                                        ; CODE XREF: sub_140201F98+44↑p
                                        ; sub_140207F94+24↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041D486 SIZE 00000069 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     [rdx+8], rcx
                mov     rdi, rcx
                mov     qword ptr [rdx], 0
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041D486

loc_14025FBB6:                          ; CODE XREF: KeAcquireInStackQueuedSpinLock+1BD908↓j
                                        ; KeAcquireInStackQueuedSpinLock+1BD912↓j ...
                mov     [rbx+10h], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041D4CB

loc_14025FBD3:                          ; CODE XREF: KeAcquireInStackQueuedSpinLock+1BD94F↓j
                                        ; KeAcquireInStackQueuedSpinLock+1BD95E↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     short loc_14025FBFD
                mov     rdx, rbx
                xchg    rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_14025FBF3

loc_14025FBE7:                          ; CODE XREF: KeAcquireInStackQueuedSpinLock+7B↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14025FBF3:                          ; CODE XREF: KeAcquireInStackQueuedSpinLock+65↑j
                mov     rcx, rbx
                call    sub_14025FC20
                jmp     short loc_14025FBE7
; ---------------------------------------------------------------------------

loc_14025FBFD:                          ; CODE XREF: KeAcquireInStackQueuedSpinLock+5A↑j
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14051652C
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeAcquireInStackQueuedSpinLock endp
