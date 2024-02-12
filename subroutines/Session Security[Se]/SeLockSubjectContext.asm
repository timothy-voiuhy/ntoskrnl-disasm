SeLockSubjectContext proc near          ; CODE XREF: sub_140248760+11A↑p
                                        ; sub_14033AA88+77↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbx, rcx
                dec     word ptr [rax+1E4h]
                mov     rcx, [rcx+10h]
                mov     dl, 1
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceSharedLite
                cmp     qword ptr [rbx], 0
                jnz     short loc_14064A2F5

loc_14064A2EE:                          ; CODE XREF: SeLockSubjectContext+53↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14064A2F5:                          ; CODE XREF: SeLockSubjectContext+2C↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbx]
                mov     dl, 1
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceSharedLite
                jmp     short loc_14064A2EE
SeLockSubjectContext endp
