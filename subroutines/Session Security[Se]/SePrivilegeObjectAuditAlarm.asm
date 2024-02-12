SePrivilegeObjectAuditAlarm proc near   ; CODE XREF: sub_14064A9E0+1362↓p
                                        ; sub_14078CBF0+81↓p ...

var_10          = byte ptr -10h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h

                mov     r11, rsp
                sub     rsp, 58h
                cmp     [rsp+58h+arg_28], 0
                jz      short loc_1406293DF
                mov     al, [rsp+58h+arg_20]
                mov     [rsp+58h+var_10], al
                mov     rax, [rdx+18h]
                mov     [r11-18h], r9
                mov     r9, rcx
                mov     [r11-20h], r8d
                lea     rcx, qword_1400019C0
                mov     [r11-28h], rax
                xor     r8d, r8d
                mov     rax, [rdx+10h]
                mov     [r11-30h], rax
                mov     rax, [rdx]
                xor     edx, edx
                mov     [r11-38h], rax
                call    sub_1406293EC

loc_1406293DF:                          ; CODE XREF: SePrivilegeObjectAuditAlarm+F↑j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SePrivilegeObjectAuditAlarm endp
