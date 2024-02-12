SeMarkLogonSessionForTerminationNotificationEx proc near
                                        ; CODE XREF: SeMarkLogonSessionForTerminationNotification+6↑p
                                        ; DATA XREF: .pdata:00000001401074FC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                imul    r8d, [rcx], 5B250A24h
                mov     rsi, rdx
                mov     rax, cs:qword_140D2E6F8
                mov     rdi, rcx
                shr     r8d, 1Ch
                lea     rbx, [rax+r8*8]
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                and     r8d, 3
                lea     rcx, unk_140CEC7A0
                imul    rbp, r8, 68h ; 'h'
                mov     dl, 1
                add     rbp, rcx
                mov     rcx, rbp
                call    ExAcquireResourceExclusiveLite

loc_14072213C:                          ; CODE XREF: SeMarkLogonSessionForTerminationNotificationEx+72↓j
                                        ; SeMarkLogonSessionForTerminationNotificationEx+7A↓j ...
                mov     rbx, [rbx]
                test    rbx, rbx
                jz      short loc_140722160
                cmp     [rbx+0A0h], rsi
                jnz     short loc_140722198

loc_14072214D:                          ; CODE XREF: SeMarkLogonSessionForTerminationNotificationEx+BD↓j
                mov     eax, [rbx+8]
                cmp     [rdi], eax
                jnz     short loc_14072213C
                mov     eax, [rbx+0Ch]
                cmp     [rdi+4], eax
                jnz     short loc_14072213C
                or      dword ptr [rbx+20h], 1

loc_140722160:                          ; CODE XREF: SeMarkLogonSessionForTerminationNotificationEx+62↑j
                mov     rcx, rbp
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbp, [rsp+28h+arg_8]
                neg     rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                sbb     eax, eax
                not     eax
                and     eax, 0C0000225h
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140722198:                          ; CODE XREF: SeMarkLogonSessionForTerminationNotificationEx+6B↑j
                test    rsi, rsi
                jnz     short loc_14072213C
                jmp     short loc_14072214D
SeMarkLogonSessionForTerminationNotificationEx endp
