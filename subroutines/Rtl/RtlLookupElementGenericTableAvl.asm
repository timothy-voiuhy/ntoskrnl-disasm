RtlLookupElementGenericTableAvl proc near
                                        ; CODE XREF: sub_1406756F4+65↓p
                                        ; sub_140675DE4+1C↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     esi, esi
                mov     rbp, rdx
                mov     ebx, esi
                mov     rdi, rcx
                cmp     [rcx+2Ch], ebx
                jz      short loc_140310AB1
                mov     rbx, [rcx+10h]
                nop     word ptr [rax+rax+00000000h]

loc_140310A50:                          ; CODE XREF: RtlLookupElementGenericTableAvl+58↓j
                                        ; RtlLookupElementGenericTableAvl+66↓j
                mov     rax, [rdi+48h]
                lea     r8, [rbx+20h]
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_140310A7A
                cmp     eax, 1
                jnz     short loc_140310A88
                mov     rax, [rbx+10h]
                test    rax, rax
                jz      short loc_140310AB5
                mov     rbx, rax
                jmp     short loc_140310A50
; ---------------------------------------------------------------------------

loc_140310A7A:                          ; CODE XREF: RtlLookupElementGenericTableAvl+45↑j
                mov     rax, [rbx+8]
                test    rax, rax
                jz      short loc_140310ABC
                mov     rbx, rax
                jmp     short loc_140310A50
; ---------------------------------------------------------------------------

loc_140310A88:                          ; CODE XREF: RtlLookupElementGenericTableAvl+4A↑j
                mov     eax, 1

loc_140310A8D:                          ; CODE XREF: RtlLookupElementGenericTableAvl+93↓j
                                        ; RtlLookupElementGenericTableAvl+9A↓j ...
                mov     rbp, [rsp+28h+arg_8]
                add     rbx, 20h ; ' '
                cmp     eax, 1
                cmovz   rsi, rbx
                mov     rbx, [rsp+28h+arg_0]
                mov     rax, rsi
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140310AB1:                          ; CODE XREF: RtlLookupElementGenericTableAvl+21↑j
                mov     eax, esi
                jmp     short loc_140310A8D
; ---------------------------------------------------------------------------

loc_140310AB5:                          ; CODE XREF: RtlLookupElementGenericTableAvl+53↑j
                mov     eax, 3
                jmp     short loc_140310A8D
; ---------------------------------------------------------------------------

loc_140310ABC:                          ; CODE XREF: RtlLookupElementGenericTableAvl+61↑j
                mov     eax, 2
                jmp     short loc_140310A8D
RtlLookupElementGenericTableAvl endp
