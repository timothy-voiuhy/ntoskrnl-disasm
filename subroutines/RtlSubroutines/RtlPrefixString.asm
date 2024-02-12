RtlPrefixString proc near               ; CODE XREF: sub_1403B40A8+2E↑p
                                        ; sub_1403B40A8+65↑p ...

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
                movzx   eax, word ptr [rcx]
                mov     rdi, [rcx+8]
                mov     rsi, [rdx+8]
                cmp     [rdx], ax
                jb      short loc_1406F9D7D
                lea     rbp, [rdi+rax]
                cmp     rdi, rbp
                jnb     short loc_1406F9D4C
                test    r8b, r8b
                jz      short loc_1406F9D81

loc_1406F9D37:                          ; CODE XREF: RtlPrefixString+4A↓j
                mov     r14b, [rdi]
                mov     cl, [rsi]
                cmp     r14b, cl
                jnz     short loc_1406F9D6A

loc_1406F9D41:                          ; CODE XREF: RtlPrefixString+7B↓j
                inc     rdi
                inc     rsi
                cmp     rdi, rbp
                jb      short loc_1406F9D37

loc_1406F9D4C:                          ; CODE XREF: RtlPrefixString+30↑j
                                        ; RtlPrefixString+93↓j
                mov     al, 1

loc_1406F9D4E:                          ; CODE XREF: RtlPrefixString+7F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F9D6A:                          ; CODE XREF: RtlPrefixString+3F↑j
                call    RtlUpperChar
                mov     cl, r14b
                mov     bl, al
                call    RtlUpperChar
                cmp     al, bl
                jz      short loc_1406F9D41

loc_1406F9D7D:                          ; CODE XREF: RtlPrefixString+27↑j
                                        ; RtlPrefixString+89↓j
                xor     al, al
                jmp     short loc_1406F9D4E
; ---------------------------------------------------------------------------

loc_1406F9D81:                          ; CODE XREF: RtlPrefixString+35↑j
                sub     rsi, rdi

loc_1406F9D84:                          ; CODE XREF: RtlPrefixString+91↓j
                mov     cl, [rsi+rdi]
                cmp     [rdi], cl
                jnz     short loc_1406F9D7D
                inc     rdi
                cmp     rdi, rbp
                jb      short loc_1406F9D84
                jmp     short loc_1406F9D4C
RtlPrefixString endp
