RtlOemToUnicodeN proc near              ; CODE XREF: sub_1406F48A4+11A↑p
                                        ; sub_1406F48A4+14F↑p ...

var_28          = dword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 00000001408421CE SIZE 000000CD BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 40h
                mov     rdi, rcx
                mov     rbp, r9
                mov     cl, 1
                mov     r14, r8
                mov     esi, edx
                call    sub_140630C90
                xor     ebx, ebx
                test    al, al
                jnz     loc_1408421CE
                mov     edx, [rsp+48h+arg_20]
                shr     esi, 1
                cmp     cs:NlsMbOemCodePageTag, bl
                jnz     loc_14084220E
                cmp     esi, edx
                mov     ecx, edx
                cmovb   ecx, esi
                test    r14, r14
                jz      short loc_14075F909
                lea     eax, [rcx+rcx]
                mov     [r14], eax

loc_14075F909:                          ; CODE XREF: RtlOemToUnicodeN+51↑j
                mov     r9, cs:qword_140D2D118
                test    ecx, ecx
                jz      short loc_14075F930
                mov     r8d, ecx

loc_14075F917:                          ; CODE XREF: RtlOemToUnicodeN+7E↓j
                movzx   eax, byte ptr [rbp+0]
                inc     rbp
                movzx   ecx, word ptr [r9+rax*2]
                mov     [rdi], cx
                lea     rdi, [rdi+2]
                sub     r8, 1
                jnz     short loc_14075F917

loc_14075F930:                          ; CODE XREF: RtlOemToUnicodeN+62↑j
                                        ; RtlOemToUnicodeN+E29DA↓j ...
                cmp     esi, edx
                sbb     eax, eax
                and     eax, 80000005h

loc_14075F939:                          ; CODE XREF: RtlOemToUnicodeN+E2959↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlOemToUnicodeN endp
