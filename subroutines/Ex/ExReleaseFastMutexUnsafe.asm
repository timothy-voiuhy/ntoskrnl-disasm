ExReleaseFastMutexUnsafe proc near      ; CODE XREF: sub_14021A330+953↑p
                                        ; FsRtlCheckOplockEx2+B67↓p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     qword ptr [rcx+8], 0
                mov     ecx, 1
                xor     eax, eax
                lock cmpxchg [rbx], ecx
                jnz     short loc_14021DC8D

loc_14021DC7E:                          ; CODE XREF: ExReleaseFastMutexUnsafe+37↓j
                mov     rcx, rbx
                call    sub_140243660
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021DC8D:                          ; CODE XREF: ExReleaseFastMutexUnsafe+1C↑j
                mov     edx, eax
                mov     rcx, rbx
                call    sub_1402F424C
                jmp     short loc_14021DC7E
ExReleaseFastMutexUnsafe endp
