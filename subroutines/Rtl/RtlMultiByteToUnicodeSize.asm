RtlMultiByteToUnicodeSize proc near     ; CODE XREF: RtlxAnsiStringToUnicodeSize+16↑p
                                        ; RtlxOemStringToUnicodeSize+16↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080E77E SIZE 00000065 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     r14, rcx
                xor     ebp, ebp
                xor     ecx, ecx
                mov     edi, ebp
                mov     ebx, r8d
                mov     rsi, rdx
                call    sub_140630C90
                test    al, al
                jnz     loc_14080E77E
                cmp     cs:NlsMbCodePageTag, bpl
                jnz     loc_14080E7A3
                lea     edi, [rbx+rbx]

loc_140673B05:                          ; CODE XREF: RtlMultiByteToUnicodeSize+19ACE5↓j
                                        ; RtlMultiByteToUnicodeSize+19AD16↓j ...
                mov     [r14], edi

loc_140673B08:                          ; CODE XREF: RtlMultiByteToUnicodeSize+19ACC5↓j
                                        ; RtlMultiByteToUnicodeSize+19ACDE↓j
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlMultiByteToUnicodeSize endp
