RtlUpcaseUnicodeToMultiByteN proc near  ; CODE XREF: toupper+3A↑p
                                        ; RtlUpcaseUnicodeStringToAnsiString+8B↓p
                                        ; DATA XREF: ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140802FC6 SIZE 0000001E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 40h
                mov     ebx, [rsp+48h+arg_20]
                mov     r14, rcx
                xor     ecx, ecx
                shr     ebx, 1
                mov     rdi, r9
                mov     rsi, r8
                mov     ebp, edx
                call    sub_140630C90
                mov     r9, rdi
                mov     r8, rsi
                mov     edx, ebp
                mov     rcx, r14
                test    al, al
                jnz     loc_140802FC6
                cmp     cs:NlsMbCodePageTag, al
                jnz     loc_140802FD5
                mov     rax, cs:qword_140D2D0F8
                mov     [rsp+48h+var_18], rax
                mov     rax, cs:qword_140D2D168
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], ebx
                call    sub_14021D9B0

loc_1406306C2:                          ; CODE XREF: RtlUpcaseUnicodeToMultiByteN+1D2980↓j
                                        ; RtlUpcaseUnicodeToMultiByteN+1D298F↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUpcaseUnicodeToMultiByteN endp
