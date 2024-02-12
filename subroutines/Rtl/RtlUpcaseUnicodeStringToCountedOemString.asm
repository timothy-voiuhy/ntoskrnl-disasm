RtlUpcaseUnicodeStringToCountedOemString proc near
                                        ; CODE XREF: RtlIsNameLegalDOS8Dot3+85↑p
                                        ; DATA XREF: .rdata:0000000140080BD0↑o ...

var_48          = dword ptr -48h
var_38          = dword ptr -38h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001407E8312 SIZE 0000003A BYTES
; FUNCTION CHUNK AT 0000000140826250 SIZE 0000005F BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], r8b
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     sil, r8b
                mov     r14, rdx
                mov     rbx, rcx
                xor     r15d, r15d
                mov     [rax+20h], r15d
                mov     rcx, rdx
                call    RtlxUnicodeStringToOemSize
                sub     eax, 1
                jz      loc_140826250
                cmp     eax, 0FFFFh
                ja      loc_14082625E
                mov     [rbx], ax
                test    sil, sil
                jnz     loc_140826268
                cmp     ax, [rbx+2]
                ja      loc_14082628A

loc_1406F8E58:                          ; CODE XREF: RtlUpcaseUnicodeStringToCountedOemString+12D47A↓j
                mov     [rsp+68h+var_38], r15d

loc_1406F8E5D:                          ; DATA XREF: .rdata:0000000140080BBC↑o
;   __try { // __finally(loc_1407E8312)
                movzx   eax, word ptr [r14]
                movzx   edx, word ptr [rbx]
                mov     [rsp+68h+var_48], eax
                mov     r9, [r14+8]
                lea     r8, [rsp+68h+arg_18]
                mov     rcx, [rbx+8]
                call    RtlUpcaseUnicodeToOemN
                mov     edi, eax
                mov     [rsp+68h+var_38], eax
                test    eax, eax
                js      short loc_1406F8EA0
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1406F8EC8
                mov     ecx, 0C0000162h
                test    al, al
                cmovz   edi, ecx
                mov     [rsp+68h+var_38], edi

loc_1406F8EA0:                          ; CODE XREF: RtlUpcaseUnicodeStringToCountedOemString+85↑j
                test    edi, edi
                cmovns  edi, r15d
                mov     [rsp+68h+var_38], edi
;   } // starts at 1406F8E5D

loc_1406F8EAA:                          ; DATA XREF: .rdata:0000000140080BBC↑o
                test    edi, edi
                js      loc_140826294

loc_1406F8EB2:                          ; CODE XREF: RtlUpcaseUnicodeStringToCountedOemString+12D497↓j
                                        ; RtlUpcaseUnicodeStringToCountedOemString+12D4AA↓j
                mov     eax, edi

loc_1406F8EB4:                          ; CODE XREF: RtlUpcaseUnicodeStringToCountedOemString+12D459↓j
                                        ; RtlUpcaseUnicodeStringToCountedOemString+12D463↓j ...
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F8E00
RtlUpcaseUnicodeStringToCountedOemString endp
