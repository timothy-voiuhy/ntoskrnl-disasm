RtlAnsiStringToUnicodeString proc near  ; CODE XREF: sub_1403B7C60+7E↑p
                                        ; sub_1403B84B4+26↑p ...

var_38          = dword ptr -38h
var_28          = dword ptr -28h
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001407E6F26 SIZE 00000037 BYTES
; FUNCTION CHUNK AT 000000014080E692 SIZE 0000002F BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], r8b
                mov     [rax+8], rcx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     sil, r8b
                mov     rdi, rdx
                mov     rbx, rcx
                xor     r14d, r14d
                mov     [rax+20h], r14d
                mov     rcx, rdx
                call    RtlxAnsiStringToUnicodeSize
                cmp     eax, 0FFFEh
                ja      loc_14080E692
                movzx   ecx, ax
                lea     edx, [r14+2]
                sub     cx, dx
                mov     [rbx], cx
                test    sil, sil
                jnz     short loc_1406739C4
                movzx   ecx, cx
                add     rcx, rdx
                movzx   eax, word ptr [rbx+2]
                cmp     rcx, rax
                ja      loc_14080E6B7
                cmp     rcx, rdx
                jb      loc_14080E6B7

loc_140673968:                          ; CODE XREF: RtlAnsiStringToUnicodeString+D6↓j
                mov     [rsp+58h+var_28], r14d

loc_14067396D:                          ; DATA XREF: .rdata:0000000140064344↑o
;   __try { // __finally(loc_1407E6F26)
                movzx   eax, word ptr [rdi]
                movzx   edx, word ptr [rbx]
                mov     [rsp+58h+var_38], eax
                mov     r9, [rdi+8]
                lea     r8, [rsp+58h+arg_18]
                mov     rcx, [rbx+8]
                call    RtlMultiByteToUnicodeN
                mov     edi, eax
                mov     [rsp+58h+var_28], eax
                test    eax, eax
                js      short loc_1406739AB
                mov     ecx, [rsp+58h+arg_18]
                shr     rcx, 1
                mov     rax, [rbx+8]
                mov     [rax+rcx*2], r14w
                mov     edi, r14d
                mov     [rsp+58h+var_28], r14d
;   } // starts at 14067396D

loc_1406739AB:                          ; CODE XREF: RtlAnsiStringToUnicodeString+91↑j
                                        ; DATA XREF: .rdata:0000000140064344↑o
                test    edi, edi
                js      loc_14080E69C

loc_1406739B3:                          ; CODE XREF: RtlAnsiStringToUnicodeString+19AD9F↓j
                                        ; RtlAnsiStringToUnicodeString+19ADB2↓j
                mov     eax, edi

loc_1406739B5:                          ; CODE XREF: RtlAnsiStringToUnicodeString+DD↓j
                                        ; RtlAnsiStringToUnicodeString+19AD97↓j ...
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406739C4:                          ; CODE XREF: RtlAnsiStringToUnicodeString+4A↑j
                mov     [rbx+2], ax
                mov     ecx, eax
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jnz     short loc_140673968
                mov     eax, 0C0000017h
                jmp     short loc_1406739B5
; } // starts at 140673900
RtlAnsiStringToUnicodeString endp
