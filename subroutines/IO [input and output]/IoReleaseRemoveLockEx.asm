IoReleaseRemoveLockEx proc near         ; CODE XREF: sub_1409E70D0+147↓p
                                        ; sub_1409E76C0+23↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047C70E SIZE 0000011A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r13, rdx
                mov     rbx, rcx
                cmp     r8d, 78h ; 'x'
                jz      loc_14047C70E

loc_14033EDBC:                          ; CODE XREF: IoReleaseRemoveLockEx+13DA45↓j
                                        ; IoReleaseRemoveLockEx+13DA56↓j ...
                or      eax, 0FFFFFFFFh
                lock xadd [rbx+4], eax
                cmp     eax, 1
                jz      loc_14047C814

loc_14033EDCD:                          ; CODE XREF: IoReleaseRemoveLockEx+13DA93↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReleaseRemoveLockEx endp
