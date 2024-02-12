RtlMultiByteToUnicodeN proc near        ; CODE XREF: mbstowcs+65↑p
                                        ; RtlAnsiStringToUnicodeString+84↑p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 000000014080E6C2 SIZE 000000BC BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 40h
                mov     rbx, rcx
                mov     rsi, r9
                xor     ecx, ecx
                mov     r14, r8
                mov     edi, edx
                call    sub_140630C90
                xor     r11d, r11d
                test    al, al
                jnz     loc_14080E6C2
                shr     edi, 1
                cmp     cs:NlsMbCodePageTag, r11b
                jnz     loc_14080E6F5
                mov     ecx, [rsp+48h+arg_20]
                cmp     edi, ecx
                cmovb   ecx, edi
                test    r14, r14
                jz      short loc_140673A45
                lea     eax, [rcx+rcx]
                mov     [r14], eax

loc_140673A45:                          ; CODE XREF: RtlMultiByteToUnicodeN+4D↑j
                mov     r8, cs:qword_140D2D0F8
                test    ecx, ecx
                jz      short loc_140673A6A
                mov     edx, ecx

loc_140673A52:                          ; CODE XREF: RtlMultiByteToUnicodeN+78↓j
                movzx   eax, byte ptr [rsi]
                inc     rsi
                movzx   ecx, word ptr [r8+rax*2]
                mov     [rbx], cx
                lea     rbx, [rbx+2]
                sub     rdx, 1
                jnz     short loc_140673A52

loc_140673A6A:                          ; CODE XREF: RtlMultiByteToUnicodeN+5E↑j
                                        ; RtlMultiByteToUnicodeN+19ACE9↓j ...
                mov     rbx, [rsp+48h+arg_0]
                xor     eax, eax
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlMultiByteToUnicodeN endp
