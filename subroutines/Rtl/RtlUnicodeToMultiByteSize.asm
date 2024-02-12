RtlUnicodeToMultiByteSize proc near     ; CODE XREF: wcstombs+58↑p
                                        ; RtlUnicodeStringToAnsiString+3A↑p ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140802ED6 SIZE 0000004F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rsi, rcx
                mov     ebx, r8d
                xor     ecx, ecx
                mov     rbp, rdx
                xor     edi, edi
                call    sub_140630C90
                test    al, al
                jnz     loc_140802ED6
                shr     ebx, 1
                cmp     cs:NlsMbCodePageTag, dil
                jnz     short loc_1406303E5
                mov     edi, ebx

loc_1406303CB:                          ; CODE XREF: RtlUnicodeToMultiByteSize+57↓j
                                        ; RtlUnicodeToMultiByteSize+1D2B90↓j
                mov     [rsi], edi

loc_1406303CD:                          ; CODE XREF: RtlUnicodeToMultiByteSize+1D2B4C↓j
                                        ; RtlUnicodeToMultiByteSize+1D2B65↓j
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406303E5:                          ; CODE XREF: RtlUnicodeToMultiByteSize+37↑j
                test    ebx, ebx
                jz      short loc_1406303CB
                jmp     loc_140802EFA
RtlUnicodeToMultiByteSize endp
