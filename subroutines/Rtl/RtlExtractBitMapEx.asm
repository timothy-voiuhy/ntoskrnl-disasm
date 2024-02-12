RtlExtractBitMapEx proc near            ; CODE XREF: RtlShiftLeftBitMapEx+49↓p
                                        ; DATA XREF: .pdata:00000001400F7BFC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbx, [rdx]
                mov     r10, r8
                mov     rax, [rcx]
                mov     r14, rdx
                sub     rax, r8
                mov     r15, rcx
                cmp     r9, rax
                cmova   r9, rax
                cmp     r9, rbx
                cmovbe  rbx, r9
                test    rbx, rbx
                jz      loc_140587479
                mov     rsi, r8
                shr     rsi, 3
                test    r10b, 7
                jnz     short loc_140587394
                mov     rdi, rbx
                and     ebx, 7
                shr     rdi, 3
                test    rdi, rdi
                jz      short loc_140587355
                mov     rdx, [rcx+8]
                mov     r8, rdi
                mov     rcx, [r14+8]
                add     rdx, rsi
                call    memmove

loc_140587355:                          ; CODE XREF: RtlExtractBitMapEx+60↑j
                test    rbx, rbx
                jz      loc_140587479
                mov     rdx, [r15+8]
                mov     r11d, 1
                mov     r9, [r14+8]
                add     rdx, rsi
                mov     rcx, rbx
                mov     r8b, [rdx+rdi]
                mov     edx, r11d
                shl     dl, cl
                sub     dl, r11b
                mov     al, dl
                and     dl, r8b
                not     al
                and     al, [rdi+r9]
                or      al, dl
                mov     [rdi+r9], al
                jmp     loc_140587479
; ---------------------------------------------------------------------------

loc_140587394:                          ; CODE XREF: RtlExtractBitMapEx+51↑j
                mov     rax, [rcx+8]
                mov     r11d, 1
                mov     rdi, [rdx+8]
                and     r8d, 3Fh
                shr     r10, 6
                mov     ecx, r8d
                lea     esi, [r11+3Fh]
                lea     r15, [rax+r10*8]
                mov     r10d, r11d
                shl     r10, cl
                cmp     rbx, rsi
                jb      short loc_14058740B
                mov     r9, rbx
                lea     r12, [r10-1]
                shr     r9, 6
                mov     ebp, esi
                imul    rax, r9, -40h
                sub     rbp, r8
                mov     r14, r12
                add     rbx, rax
                not     r14

loc_1405873DD:                          ; CODE XREF: RtlExtractBitMapEx+129↓j
                mov     rdx, [r15]
                mov     rcx, r8
                and     rdx, r14
                add     r15, 8
                shr     rdx, cl
                mov     rcx, rbp
                mov     [rdi], rdx
                mov     rax, [r15]
                and     rax, r12
                shl     rax, cl
                or      rax, rdx
                mov     [rdi], rax
                add     rdi, 8
                sub     r9, r11
                jnz     short loc_1405873DD

loc_14058740B:                          ; CODE XREF: RtlExtractBitMapEx+DE↑j
                test    rbx, rbx
                jz      short loc_140587479
                mov     rbp, [r15]
                sub     rsi, r8
                mov     rcx, rbx
                mov     rax, r11
                shl     rax, cl
                dec     rax
                mov     r9, rax
                not     r9
                and     r9, [rdi]
                cmp     rbx, rsi
                ja      short loc_140587444
                mov     rcx, r8
                shl     rax, cl
                and     rax, rbp
                shr     rax, cl
                or      rax, r9
                mov     [rdi], rax
                jmp     short loc_140587479
; ---------------------------------------------------------------------------

loc_140587444:                          ; CODE XREF: RtlExtractBitMapEx+14E↑j
                lea     ecx, [r8+0C0h]
                mov     rdx, r11
                add     ecx, ebx
                lea     rax, [r10-1]
                shl     rdx, cl
                not     rax
                sub     rdx, r11
                mov     rcx, rsi
                and     rdx, [r15+8]
                and     rax, rbp
                shl     rdx, cl
                mov     rcx, r8
                shr     rax, cl
                or      rdx, rax
                or      r9, rdx
                mov     [rdi], r9

loc_140587479:                          ; CODE XREF: RtlExtractBitMapEx+40↑j
                                        ; RtlExtractBitMapEx+78↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlExtractBitMapEx endp
