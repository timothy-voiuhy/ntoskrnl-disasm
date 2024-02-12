RtlExtractBitMap proc near              ; CODE XREF: RtlShiftLeftBitMap+46↓p
                                        ; DATA XREF: .pdata:00000001400F7BF0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r10d, [rcx]
                mov     rbp, rdx
                mov     ebx, [rdx]
                sub     r10d, r8d
                cmp     r9d, r10d
                mov     eax, r9d
                mov     r14, rcx
                cmovbe  r10d, eax
                cmp     r10, rbx
                cmovbe  ebx, r10d
                test    rbx, rbx
                jz      loc_1405872B2
                mov     esi, r8d
                shr     rsi, 3
                mov     ecx, r8d
                test    r8b, 7
                jnz     short loc_1405871DB
                mov     edi, ebx
                and     ebx, 7
                shr     rdi, 3
                test    rdi, rdi
                jz      short loc_1405871A1
                mov     rdx, [r14+8]
                mov     r8, rdi
                mov     rcx, [rbp+8]
                add     rdx, rsi
                call    memmove

loc_1405871A1:                          ; CODE XREF: RtlExtractBitMap+5C↑j
                test    rbx, rbx
                jz      loc_1405872B2
                mov     rdx, [r14+8]
                mov     rcx, rbx
                mov     r9, [rbp+8]
                add     rdx, rsi
                mov     r8b, [rdx+rdi]
                mov     edx, 1
                shl     dl, cl
                dec     dl
                mov     al, dl
                and     dl, r8b
                not     al
                and     al, [rdi+r9]
                or      al, dl
                mov     [rdi+r9], al
                jmp     loc_1405872B2
; ---------------------------------------------------------------------------

loc_1405871DB:                          ; CODE XREF: RtlExtractBitMap+4E↑j
                mov     rax, [r14+8]
                mov     r8, rcx
                mov     r10, [rdx+8]
                and     r8d, 1Fh
                shr     rcx, 5
                mov     r9d, 1
                mov     r11d, 20h ; ' '
                lea     rsi, [rax+rcx*4]
                mov     ecx, r8d
                shl     r9d, cl
                cmp     rbx, r11
                jb      short loc_140587251
                mov     rdi, rbx
                lea     r15d, [r9-1]
                shr     rdi, 5
                mov     ebp, r11d
                imul    rax, rdi, -20h
                sub     rbp, r8
                mov     r14d, r15d
                add     rbx, rax
                not     r14d

loc_140587227:                          ; CODE XREF: RtlExtractBitMap+11F↓j
                mov     edx, [rsi]
                mov     rcx, r8
                and     edx, r14d
                add     rsi, 4
                shr     edx, cl
                mov     rcx, rbp
                mov     [r10], edx
                mov     eax, [rsi]
                and     eax, r15d
                shl     eax, cl
                or      eax, edx
                mov     [r10], eax
                add     r10, 4
                sub     rdi, 1
                jnz     short loc_140587227

loc_140587251:                          ; CODE XREF: RtlExtractBitMap+D7↑j
                test    rbx, rbx
                jz      short loc_1405872B2
                mov     edi, [rsi]
                mov     rcx, rbx
                mov     eax, 1
                sub     r11, r8
                shl     eax, cl
                lea     edx, [rax-1]
                not     edx
                and     edx, [r10]
                cmp     rbx, r11
                ja      short loc_140587284
                dec     eax
                mov     rcx, r8
                shl     eax, cl
                and     eax, edi
                shr     eax, cl
                or      eax, edx
                mov     [r10], eax
                jmp     short loc_1405872B2
; ---------------------------------------------------------------------------

loc_140587284:                          ; CODE XREF: RtlExtractBitMap+140↑j
                neg     r9d
                lea     ecx, [r8+0E0h]
                add     ecx, ebx
                and     r9d, edi
                mov     eax, 1
                shl     eax, cl
                mov     rcx, r11
                dec     eax
                and     eax, [rsi+4]
                shl     eax, cl
                mov     rcx, r8
                shr     r9d, cl
                or      eax, r9d
                or      edx, eax
                mov     [r10], edx

loc_1405872B2:                          ; CODE XREF: RtlExtractBitMap+3A↑j
                                        ; RtlExtractBitMap+74↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlExtractBitMap endp
