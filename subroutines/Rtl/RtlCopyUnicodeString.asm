RtlCopyUnicodeString proc near          ; CODE XREF: sub_14021B6A0+1E4↑p
                                        ; sub_14030E21C:loc_14030E339↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                push    rdi
                sub     rsp, 20h
                mov     rax, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      short loc_14024CA5D
                movzx   r8d, word ptr [rax]
                movzx   eax, word ptr [rcx+2]
                mov     rdx, [rdx+8]
                cmp     r8w, ax

loc_14024CA11:                          ; DATA XREF: .rdata:0000000140058E24↑o
                                        ; .rdata:0000000140058E38↑o ...
                mov     [rsp+28h+arg_0], rbx
                cmovbe  eax, r8d
                mov     [rsp+28h+arg_8], rsi
                mov     rsi, [rcx+8]
                mov     ebx, eax
                mov     [rcx], bx
                mov     rcx, rsi
                mov     r8d, eax
                call    memmove
                movzx   ecx, word ptr [rdi]
                movzx   eax, word ptr [rdi+2]
                add     rcx, 2
                cmp     rcx, rax
                ja      short loc_14024CA4C
                shr     rbx, 1
                xor     eax, eax
                mov     [rsi+rbx*2], ax

loc_14024CA4C:                          ; CODE XREF: RtlCopyUnicodeString+51↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
byte_14024CA5C  db 0CCh                 ; DATA XREF: .pdata:00000001400CCA98↑o
                                        ; .pdata:00000001400CCAA4↑o
; ---------------------------------------------------------------------------

loc_14024CA5D:                          ; CODE XREF: RtlCopyUnicodeString+F↑j
                xor     eax, eax
                mov     [rcx], ax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCopyUnicodeString endp
