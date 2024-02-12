RtlUnicodeToMultiByteN proc near        ; CODE XREF: wcstombs+38↑p
                                        ; sub_1403D4174+87↑p ...

var_28          = dword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140802F26 SIZE 000000A0 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 40h
                mov     rbx, rcx
                mov     rdi, r9
                xor     ecx, ecx
                mov     r14, r8
                mov     esi, edx
                call    sub_140630C90
                test    al, al
                jnz     loc_140802F26
                mov     edx, [rsp+48h+arg_20]
                shr     edx, 1
                cmp     cs:NlsMbCodePageTag, al
                jnz     loc_140802F59
                cmp     edx, esi
                cmovb   esi, edx
                test    r14, r14
                jz      short loc_1406305FE
                mov     [r14], esi

loc_1406305FE:                          ; CODE XREF: RtlUnicodeToMultiByteN+49↑j
                mov     r8, cs:qword_140D2D168
                test    esi, esi
                jz      short loc_140630629
                mov     edx, esi
                nop     dword ptr [rax+rax+00h]

loc_140630610:                          ; CODE XREF: RtlUnicodeToMultiByteN+77↓j
                movzx   eax, word ptr [rdi]
                lea     rbx, [rbx+1]
                lea     rdi, [rdi+2]
                movzx   ecx, byte ptr [rax+r8]
                mov     [rbx-1], cl
                sub     rdx, 1
                jnz     short loc_140630610

loc_140630629:                          ; CODE XREF: RtlUnicodeToMultiByteN+57↑j
                                        ; RtlUnicodeToMultiByteN+1D298D↓j ...
                mov     rbx, [rsp+48h+arg_0]
                xor     eax, eax
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUnicodeToMultiByteN endp
