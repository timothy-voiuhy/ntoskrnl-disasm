RtlGetSessionProperties proc near       ; DATA XREF: .pdata:0000000140121FF8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     esi, ecx
                cmp     ecx, 0FFFFFFFFh
                jz      short loc_1409150AB
                xor     ebx, ebx
                test    rdx, rdx
                jz      short loc_1409150AB
                mov     [rdx], ebx
                call    sub_1402B95B0
                mov     r8, [rax+468h]
                mov     eax, ebx
                cmp     [r8+18h], esi
                setz    al
                mov     [rdi], eax
                jmp     short loc_1409150B0
; ---------------------------------------------------------------------------

loc_1409150AB:                          ; CODE XREF: RtlGetSessionProperties+17↑j
                                        ; RtlGetSessionProperties+1E↑j
                mov     ebx, 0C000000Dh

loc_1409150B0:                          ; CODE XREF: RtlGetSessionProperties+39↑j
                mov     rsi, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetSessionProperties endp
