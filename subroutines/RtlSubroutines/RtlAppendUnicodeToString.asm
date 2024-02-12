RtlAppendUnicodeToString proc near      ; CODE XREF: sub_1403808E8+AF↓p
                                        ; sub_1403808E8+C3↓p ...

var_28          = word ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                xor     r15d, r15d
                mov     rsi, rdx
                mov     rbx, rcx
                test    rdx, rdx
                jz      short loc_14021D4A2
                xorps   xmm0, xmm0
                lea     rcx, [rax-28h]
                movups  xmmword ptr [rax-28h], xmm0
                call    RtlInitUnicodeStringEx
                test    eax, eax
                js      short loc_14021D4BE
                movzx   edx, word ptr [rbx]
                movzx   ebp, [rsp+48h+var_28]
                movzx   eax, word ptr [rbx+2]
                lea     ecx, [rdx+rbp]
                cmp     ecx, eax
                ja      short loc_14021D4BE
                mov     rax, [rbx+8]
                mov     ecx, edx
                shr     rcx, 1
                mov     r8d, ebp
                mov     rdx, rsi
                mov     edi, ebp
                lea     r14, [rax+rcx*2]
                mov     rcx, r14
                call    memmove
                add     [rbx], bp
                movzx   ecx, word ptr [rbx]
                movzx   eax, word ptr [rbx+2]
                inc     ecx
                cmp     ecx, eax
                jnb     short loc_14021D4A2
                shr     rdi, 1
                mov     [r14+rdi*2], r15w

loc_14021D4A2:                          ; CODE XREF: RtlAppendUnicodeToString+24↑j
                                        ; RtlAppendUnicodeToString+78↑j
                xor     eax, eax

loc_14021D4A4:                          ; CODE XREF: RtlAppendUnicodeToString+A3↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14021D4BE:                          ; CODE XREF: RtlAppendUnicodeToString+38↑j
                                        ; RtlAppendUnicodeToString+4B↑j
                mov     eax, 0C0000023h
                jmp     short loc_14021D4A4
RtlAppendUnicodeToString endp
