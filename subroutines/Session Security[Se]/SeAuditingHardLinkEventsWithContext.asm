SeAuditingHardLinkEventsWithContext proc near
                                        ; DATA XREF: .pdata:00000001401063B0↑o
                push    rbx
                sub     rsp, 20h
                movzx   eax, word ptr [rdx+2]
                mov     r9, r8
                test    al, 10h
                jz      short loc_140712623
                xor     ebx, ebx
                test    ax, ax
                jns     short loc_14071262C
                mov     eax, [rdx+0Ch]
                test    eax, eax
                jz      short loc_140712623
                add     rax, rdx

loc_140712602:                          ; CODE XREF: SeAuditingHardLinkEventsWithContext+50↓j
                test    rax, rax
                jz      short loc_140712623
                cmp     bx, [rax+4]
                jz      short loc_140712623
                test    cl, cl
                mov     dl, cl
                mov     ecx, 74h ; 't'
                setz    r8b
                call    sub_140629580
                test    al, al
                jnz     short loc_140712632

loc_140712623:                          ; CODE XREF: SeAuditingHardLinkEventsWithContext+F↑j
                                        ; SeAuditingHardLinkEventsWithContext+1D↑j ...
                xor     al, al

loc_140712625:                          ; CODE XREF: SeAuditingHardLinkEventsWithContext+54↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14071262C:                          ; CODE XREF: SeAuditingHardLinkEventsWithContext+16↑j
                mov     rax, [rdx+18h]
                jmp     short loc_140712602
; ---------------------------------------------------------------------------

loc_140712632:                          ; CODE XREF: SeAuditingHardLinkEventsWithContext+41↑j
                mov     al, 1
                jmp     short loc_140712625
SeAuditingHardLinkEventsWithContext endp
