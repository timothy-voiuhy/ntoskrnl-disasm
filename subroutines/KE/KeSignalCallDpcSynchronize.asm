KeSignalCallDpcSynchronize proc near    ; CODE XREF: sub_1409B1550+40↓p
                                        ; sub_1409B2AB0+1E↓p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                or      eax, 0FFFFFFFFh
                lock xadd [rcx], eax
                dec     eax
                mov     esi, eax
                not     esi
                and     esi, 80000000h
                test    eax, 7FFFFFFFh
                jnz     short loc_140519F8B
                mov     eax, [rcx+4]
                mov     ebx, 1
                or      eax, esi
                mov     [rcx], eax

loc_140519F78:                          ; CODE XREF: KeSignalCallDpcSynchronize+5A↓j
                mov     rsi, [rsp+28h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140519F8B:                          ; CODE XREF: KeSignalCallDpcSynchronize+2A↑j
                xor     ebx, ebx
                mov     [rsp+28h+arg_0], ebx

loc_140519F91:                          ; CODE XREF: KeSignalCallDpcSynchronize+66↓j
                mov     eax, [rdi]
                and     eax, 80000000h
                cmp     eax, esi
                jz      short loc_140519F78
                lea     rcx, [rsp+28h+arg_0]
                call    sub_1402C8C70
                jmp     short loc_140519F91
KeSignalCallDpcSynchronize endp
