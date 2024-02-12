SeUnlockSubjectContext proc near        ; CODE XREF: sub_140248760+5F6↑p
                                        ; sub_140248760+621↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+10h]
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     rcx, [rbx]
                test    rcx, rcx
                jnz     short loc_14064A34A

loc_14064A343:                          ; CODE XREF: SeUnlockSubjectContext+38↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14064A34A:                          ; CODE XREF: SeUnlockSubjectContext+21↑j
                mov     rcx, [rcx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                jmp     short loc_14064A343
SeUnlockSubjectContext endp
