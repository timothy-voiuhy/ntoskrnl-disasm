RtlTraceDatabaseEnumerate proc near     ; DATA XREF: .pdata:00000001400F8130↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, r8
                mov     rdi, rdx
                mov     rsi, rcx
                call    sub_14058EF00
                mov     rax, [rdi]
                xor     ebx, ebx
                test    rax, rax
                jnz     short loc_14058ED81
                mov     [rdi], rsi
                mov     r8d, ebx
                mov     [rdi+8], ebx
                mov     rax, [rsi+78h]
                mov     rdx, [rax]
                mov     eax, ebx
                jmp     short loc_14058EDB0
; ---------------------------------------------------------------------------

loc_14058ED81:                          ; CODE XREF: RtlTraceDatabaseEnumerate+2B↑j
                cmp     rax, rsi
                jnz     short loc_14058EDDA
                mov     eax, [rdi+8]
                mov     r8d, eax
                cmp     eax, [rsi+70h]
                jnb     short loc_14058EDDA
                mov     rdx, [rdi+10h]
                jmp     short loc_14058EDB4
; ---------------------------------------------------------------------------

loc_14058ED97:                          ; CODE XREF: RtlTraceDatabaseEnumerate+77↓j
                lea     r8d, [rax+1]
                mov     [rdi+8], r8d
                cmp     r8d, [rsi+70h]
                jnb     short loc_14058EDBF
                mov     rax, [rsi+78h]
                mov     rdx, [rax+r8*8]
                mov     eax, r8d

loc_14058EDB0:                          ; CODE XREF: RtlTraceDatabaseEnumerate+3F↑j
                mov     [rdi+10h], rdx

loc_14058EDB4:                          ; CODE XREF: RtlTraceDatabaseEnumerate+55↑j
                test    rdx, rdx
                jz      short loc_14058ED97
                cmp     r8d, [rsi+70h]
                jb      short loc_14058EDC9

loc_14058EDBF:                          ; CODE XREF: RtlTraceDatabaseEnumerate+63↑j
                test    rdx, rdx
                jnz     short loc_14058EDC9
                mov     [r14], rbx
                jmp     short loc_14058EDDA
; ---------------------------------------------------------------------------

loc_14058EDC9:                          ; CODE XREF: RtlTraceDatabaseEnumerate+7D↑j
                                        ; RtlTraceDatabaseEnumerate+82↑j
                mov     [r14], rdx
                mov     bl, 1
                mov     rax, [rdi+10h]
                mov     rcx, [rax+28h]
                mov     [rdi+10h], rcx

loc_14058EDDA:                          ; CODE XREF: RtlTraceDatabaseEnumerate+44↑j
                                        ; RtlTraceDatabaseEnumerate+4F↑j ...
                mov     rcx, rsi
                call    sub_14058F1D8
                mov     rsi, [rsp+28h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlTraceDatabaseEnumerate endp
