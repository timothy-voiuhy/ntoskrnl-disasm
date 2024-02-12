SeAuditingAnyFileEventsWithContextEx proc near
                                        ; CODE XREF: SeAuditingAnyFileEventsWithContext+7↓p
                                        ; DATA XREF: .pdata:00000001400CA74C↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     rbx, rdx
                test    r8, r8
                jz      short loc_14021C47B
                mov     r8b, 1
                mov     r9, rdx
                movzx   edx, r8b
                mov     ecx, 81h
                call    sub_140629580
                mov     [rdi], al

loc_14021C47B:                          ; CODE XREF: SeAuditingAnyFileEventsWithContextEx+13↑j
                mov     r8b, 1
                mov     r9, rbx
                movzx   edx, r8b
                mov     ecx, 74h ; 't'
                call    sub_140629580
                test    al, al
                jnz     short loc_14021C4B3
                mov     edx, 33h ; '3'
                mov     r8, rbx
                lea     ecx, [rdx-30h]
                call    sub_140629600
                test    al, al
                jnz     short loc_14021C4B3

loc_14021C4A7:                          ; CODE XREF: SeAuditingAnyFileEventsWithContextEx+65↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021C4B3:                          ; CODE XREF: SeAuditingAnyFileEventsWithContextEx+41↑j
                                        ; SeAuditingAnyFileEventsWithContextEx+55↑j
                mov     al, 1
                jmp     short loc_14021C4A7
SeAuditingAnyFileEventsWithContextEx endp
