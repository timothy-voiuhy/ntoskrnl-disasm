RtlAppendUnicodeStringToString proc near
                                        ; CODE XREF: sub_14052711C+14B↓p
                                        ; sub_1405BAB8C+1A6↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_10], rbx
                push    rdi
                sub     rsp, 20h
                movzx   edi, word ptr [rdx]
                mov     rbx, rcx
                test    di, di
                jz      short loc_140311262
                movzx   r8d, word ptr [rcx]
                movzx   eax, word ptr [rbx+2]
                lea     ecx, [r8+rdi]
                cmp     ecx, eax
                ja      short loc_140311270
                mov     rax, [rbx+8]
                mov     ecx, r8d
                mov     rdx, [rdx+8]
                mov     r8d, edi
                shr     rcx, 1

loc_140311226:                          ; DATA XREF: .rdata:00000001400766D0↑o
                                        ; .rdata:00000001400766E4↑o ...
                mov     [rsp+28h+arg_0], rsi
                mov     esi, edi
                mov     [rsp+28h+arg_8], r14
                lea     r14, [rax+rcx*2]
                mov     rcx, r14
                call    memmove
                add     [rbx], di
                movzx   ecx, word ptr [rbx]
                movzx   eax, word ptr [rbx+2]
                inc     ecx
                cmp     ecx, eax
                jnb     short loc_140311258
                shr     rsi, 1
                xor     eax, eax
                mov     [r14+rsi*2], ax

loc_140311258:                          ; CODE XREF: RtlAppendUnicodeStringToString+5C↑j
                mov     rsi, [rsp+28h+arg_0]
                mov     r14, [rsp+28h+arg_8]

loc_140311262:                          ; CODE XREF: RtlAppendUnicodeStringToString+13↑j
                                        ; DATA XREF: .pdata:00000001400D48F8↑o ...
                xor     eax, eax

loc_140311264:                          ; CODE XREF: RtlAppendUnicodeStringToString+85↓j
                mov     rbx, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140311270:                          ; CODE XREF: RtlAppendUnicodeStringToString+23↑j
                mov     eax, 0C0000023h
                jmp     short loc_140311264
RtlAppendUnicodeStringToString endp
