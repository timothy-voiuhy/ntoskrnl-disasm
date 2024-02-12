WheaRequestDeferredRecovery proc near   ; CODE XREF: sub_1404D0150+D7↑p
                                        ; sub_1404D0368+A1↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     al, cs:byte_140CDAFD1
                mov     al, cs:byte_140CDAFD1
                test    al, al
                jz      short loc_1405BD392
                mov     ebx, 1
                xor     eax, eax
                lock cmpxchg [rcx+8], ebx
                jnz     short loc_1405BD392
                mov     [rcx+20h], rdx
                jmp     short loc_1405BD35C
; ---------------------------------------------------------------------------

loc_1405BD35A:                          ; CODE XREF: WheaRequestDeferredRecovery+3F↓j
                pause

loc_1405BD35C:                          ; CODE XREF: WheaRequestDeferredRecovery+28↑j
                mov     rax, cs:qword_140CFA030
                mov     [rcx], rax
                lock cmpxchg cs:qword_140CFA030, rcx
                jnz     short loc_1405BD35A
                mov     ecx, ebx
                lock xadd cs:dword_140CFA038, ecx
                add     ecx, ebx
                cmp     ecx, ebx
                jnz     short loc_1405BD38E
                mov     ecx, ebx
                xchg    ecx, cs:dword_140CFA03C
                call    HalRequestDeferredRecoveryServiceInterrupt

loc_1405BD38E:                          ; CODE XREF: WheaRequestDeferredRecovery+4F↑j
                mov     al, bl
                jmp     short loc_1405BD394
; ---------------------------------------------------------------------------

loc_1405BD392:                          ; CODE XREF: WheaRequestDeferredRecovery+14↑j
                                        ; WheaRequestDeferredRecovery+22↑j
                xor     al, al

loc_1405BD394:                          ; CODE XREF: WheaRequestDeferredRecovery+60↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaRequestDeferredRecovery endp
