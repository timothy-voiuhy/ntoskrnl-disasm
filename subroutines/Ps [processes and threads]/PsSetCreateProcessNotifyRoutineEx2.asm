PsSetCreateProcessNotifyRoutineEx2 proc near
                                        ; DATA XREF: .pdata:000000014010CA70↑o
                sub     rsp, 28h
                mov     rax, rdx
                test    ecx, ecx
                jnz     short loc_140799093
                neg     r8b
                mov     rcx, rax
                sbb     edx, edx
                neg     edx
                add     edx, 6
                call    sub_140799388

loc_14079908D:                          ; CODE XREF: PsSetCreateProcessNotifyRoutineEx2+28↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140799093:                          ; CODE XREF: PsSetCreateProcessNotifyRoutineEx2+9↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14079908D
PsSetCreateProcessNotifyRoutineEx2 endp
