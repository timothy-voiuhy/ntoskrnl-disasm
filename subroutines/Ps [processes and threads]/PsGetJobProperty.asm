PsGetJobProperty proc near              ; CODE XREF: PsGetThreadProperty+1D5↑p
                                        ; DATA XREF: .pdata:00000001400D5B70↑o

arg_10          = qword ptr  18h

                sub     rsp, 28h
                and     [rsp+28h+arg_10], 0
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_140325DE3
                lea     rax, [rcx-30h]
                shr     rax, 8
                lea     r8, qword_140CFCE60
                movzx   r9d, al
                movzx   eax, byte ptr [rcx-18h]
                xor     r9, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     r9, rax
                mov     rax, cs:PsJobType
                cmp     [r8+r9*8], rax
                jnz     short loc_140325DF8

loc_140325DE3:                          ; CODE XREF: PsGetJobProperty+10↑j
                lea     r8, [rsp+28h+arg_10]
                call    sub_140325E04
                mov     rax, [rsp+28h+arg_10]

loc_140325DF2:                          ; CODE XREF: PsGetJobProperty+5A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140325DF8:                          ; CODE XREF: PsGetJobProperty+41↑j
                xor     eax, eax
                jmp     short loc_140325DF2
PsGetJobProperty endp
