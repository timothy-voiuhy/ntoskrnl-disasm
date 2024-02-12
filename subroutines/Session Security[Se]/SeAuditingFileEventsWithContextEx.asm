SeAuditingFileEventsWithContextEx proc near
                                        ; CODE XREF: SeAuditingFileEventsWithContext+7↓p
                                        ; DATA XREF: .pdata:00000001400F87CC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     al, cl
                mov     r14, r9
                neg     al
                mov     rbp, r8
                mov     sil, cl
                sbb     edi, edi
                xor     ebx, ebx
                and     edi, 0FFFFFFD3h
                test    r9, r9
                jz      short loc_1405970DA
                test    cl, cl
                mov     dl, cl
                mov     r9, rbp
                mov     ecx, 81h
                setz    r8b
                call    sub_140629580
                mov     [r14], al

loc_1405970DA:                          ; CODE XREF: SeAuditingFileEventsWithContextEx+30↑j
                test    sil, sil
                mov     r9, rbp
                mov     dl, sil
                mov     ecx, 74h ; 't'
                setz    r8b
                call    sub_140629580
                test    al, al
                jnz     short loc_140597109
                mov     r8, rbp
                lea     edx, [rdi+30h]
                mov     ecx, 3
                call    sub_140629600
                test    al, al
                jz      short loc_14059710B

loc_140597109:                          ; CODE XREF: SeAuditingFileEventsWithContextEx+63↑j
                mov     bl, 1

loc_14059710B:                          ; CODE XREF: SeAuditingFileEventsWithContextEx+77↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeAuditingFileEventsWithContextEx endp
