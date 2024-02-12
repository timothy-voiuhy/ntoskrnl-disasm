KeAcquireInStackQueuedSpinLockAtDpcLevel proc near
                                        ; CODE XREF: sub_1402D6DF0+526↓p
                                        ; sub_1403F07F8+91↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041D58A SIZE 00000024 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     [rdx+8], rcx
                mov     rbx, rcx
                mov     qword ptr [rdx], 0
                mov     rdi, rdx
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14041D58A

loc_140261914:                          ; CODE XREF: KeAcquireInStackQueuedSpinLockAtDpcLevel+1BBCAE↓j
                                        ; KeAcquireInStackQueuedSpinLockAtDpcLevel+1BBCBD↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     short loc_140261934
                mov     rdx, rdi
                xchg    rdx, [rbx]
                test    rdx, rdx
                jnz     short loc_14026194B

loc_140261928:                          ; CODE XREF: KeAcquireInStackQueuedSpinLockAtDpcLevel+73↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140261934:                          ; CODE XREF: KeAcquireInStackQueuedSpinLockAtDpcLevel+3B↑j
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14051652C
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14026194B:                          ; CODE XREF: KeAcquireInStackQueuedSpinLockAtDpcLevel+46↑j
                mov     rcx, rdi
                call    sub_14025FC20
                jmp     short loc_140261928
KeAcquireInStackQueuedSpinLockAtDpcLevel endp
