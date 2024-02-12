RtlUpcaseUnicodeString proc near        ; CODE XREF: RtlDeriveCapabilitySidsFromName+6C↑p
                                        ; sub_1406961AC+102↑p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h

; FUNCTION CHUNK AT 00000001407E7340 SIZE 00000034 BYTES
; FUNCTION CHUNK AT 0000000140815E40 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_0], rcx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                mov     rdi, rdx
                mov     rbx, rcx
                movzx   eax, word ptr [rdx]
                test    r8b, r8b
                jnz     loc_140696F2B
                cmp     ax, [rcx+2]
                ja      loc_140815E40

loc_140696E93:                          ; CODE XREF: RtlUpcaseUnicodeString+E3↓j
                movzx   r11d, ax
                shr     r11d, 1

loc_140696E9A:                          ; DATA XREF: .rdata:000000014006D168↑o
;   __try { // __finally(loc_1407E7340)
                xor     r9d, r9d
                mov     r14d, 0C0h

loc_140696EA3:                          ; CODE XREF: RtlUpcaseUnicodeString+68↓j
                mov     [rsp+48h+var_28], r9d
                cmp     r9d, r11d
                jnb     short loc_140696F14
                mov     rcx, [rdi+8]
                movzx   r10d, word ptr [rcx+r9*2]
                cmp     r10d, 61h ; 'a'
                jnb     short loc_140696ECA

loc_140696EBC:                          ; CODE XREF: RtlUpcaseUnicodeString+75↓j
                                        ; RtlUpcaseUnicodeString+81↓j ...
                mov     rcx, [rbx+8]
                mov     [rcx+r9*2], r10w
                inc     r9d
                jmp     short loc_140696EA3
; ---------------------------------------------------------------------------

loc_140696ECA:                          ; CODE XREF: RtlUpcaseUnicodeString+5A↑j
                cmp     r10d, 7Ah ; 'z'
                ja      short loc_140696ED7
                sub     r10w, 20h ; ' '
                jmp     short loc_140696EBC
; ---------------------------------------------------------------------------

loc_140696ED7:                          ; CODE XREF: RtlUpcaseUnicodeString+6E↑j
                mov     rsi, cs:qword_140D2D020
                test    rsi, rsi
                jz      short loc_140696EBC
                cmp     r10w, r14w
                jb      short loc_140696EBC
                mov     r8d, r10d
                mov     rcx, r10
                shr     rcx, 8
                movzx   edx, word ptr [rsi+rcx*2]
                mov     ecx, r10d
                shr     ecx, 4
                and     ecx, 0Fh
                add     edx, ecx
                movzx   edx, word ptr [rsi+rdx*2]
                and     r8d, 0Fh
                add     edx, r8d
                add     r10w, [rsi+rdx*2]
                jmp     short loc_140696EBC
;   } // starts at 140696E9A
; ---------------------------------------------------------------------------

loc_140696F14:                          ; CODE XREF: RtlUpcaseUnicodeString+4B↑j
                                        ; DATA XREF: .rdata:000000014006D168↑o
                movzx   eax, word ptr [rdi]
                mov     [rbx], ax
                xor     eax, eax

loc_140696F1C:                          ; CODE XREF: RtlUpcaseUnicodeString+ED↓j
                                        ; RtlUpcaseUnicodeString+17EFE5↓j
                mov     rbx, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140696F2B:                          ; CODE XREF: RtlUpcaseUnicodeString+23↑j
                mov     [rcx+2], ax
                mov     rcx, rax
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jz      short loc_140696F48
                movzx   eax, word ptr [rdi]
                jmp     loc_140696E93
; ---------------------------------------------------------------------------

loc_140696F48:                          ; CODE XREF: RtlUpcaseUnicodeString+DE↑j
                mov     eax, 0C0000017h
                jmp     short loc_140696F1C
; } // starts at 140696E60
RtlUpcaseUnicodeString endp
