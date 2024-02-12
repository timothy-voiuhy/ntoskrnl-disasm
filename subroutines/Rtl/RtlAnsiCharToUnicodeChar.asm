RtlAnsiCharToUnicodeChar proc near      ; CODE XREF: mbtowc+34↑p
                                        ; toupper+1C↑p ...

var_48          = dword ptr -48h
arg_0           = word ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140803010 SIZE 000000C7 BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, rcx
                mov     eax, 20h ; ' '
                xor     ecx, ecx
                mov     [rsp+68h+arg_0], ax
                call    sub_140630C90
                mov     rdi, [rsi]
                mov     r12d, 2
                lea     r13, unk_140D2FA20
                movzx   ecx, byte ptr [rdi]
                lea     ebp, [r12-1]
                test    al, al
                jnz     loc_140803010
                cmp     word ptr [r13+rcx*2+0], 0
                mov     ebx, ebp
                cmovnz  ebx, r12d

loc_140630C15:                          ; CODE XREF: RtlAnsiCharToUnicodeChar+1D2457↓j
                                        ; RtlAnsiCharToUnicodeChar+1D2464↓j ...
                xor     ecx, ecx
                lea     r14, [rsp+68h+arg_0]
                mov     r15d, ebx
                call    sub_140630C90
                test    al, al
                jnz     loc_14080304A
                cmp     cs:NlsMbCodePageTag, al
                jnz     loc_140803069
                mov     r9, cs:qword_140D2D0F8
                lea     rdx, [rsp+68h+arg_0]
                cmp     ebx, ebp
                mov     r8d, ebx
                cmova   r8d, ebp

loc_140630C4D:                          ; CODE XREF: RtlAnsiCharToUnicodeChar+A4↓j
                movzx   eax, byte ptr [rdi]
                lea     rdx, [rdx+2]
                lea     rdi, [rdi+1]
                movzx   ecx, word ptr [r9+rax*2]
                mov     [rdx-2], cx
                sub     r8, rbp
                jnz     short loc_140630C4D

loc_140630C66:                          ; CODE XREF: RtlAnsiCharToUnicodeChar+1D24A4↓j
                                        ; RtlAnsiCharToUnicodeChar+1D24B3↓j ...
                mov     eax, ebx
                add     [rsi], rax
                movzx   eax, [rsp+68h+arg_0]
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlAnsiCharToUnicodeChar endp
