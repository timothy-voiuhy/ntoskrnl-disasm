RtlUnicodeStringToCountedOemString proc near
                                        ; DATA XREF: .rdata:0000000140080B54↑o
                                        ; .pdata:000000014010503C↑o

var_48          = dword ptr -48h
var_38          = dword ptr -38h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001407E82D2 SIZE 0000003A BYTES
; FUNCTION CHUNK AT 00000001408261A4 SIZE 00000060 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r14b, r8b
                mov     r15, rdx
                mov     rdi, rcx
                mov     rcx, rdx
                call    RtlxUnicodeStringToOemSize
                sub     eax, 1
                jz      loc_1408261A4
                cmp     eax, 0FFFFh
                ja      loc_1408261B3
                mov     [rdi], ax
                xor     ebx, ebx
                test    r14b, r14b
                jnz     loc_1408261BD
                cmp     ax, [rdi+2]
                ja      loc_1408261DF

loc_1406F8BE2:                          ; CODE XREF: RtlUnicodeStringToCountedOemString+12D63F↓j
                mov     [rsp+68h+var_38], ebx

loc_1406F8BE6:                          ; DATA XREF: .rdata:0000000140080B40↑o
;   __try { // __finally(loc_1407E82D2)
                movzx   eax, word ptr [r15]
                movzx   edx, word ptr [rdi]
                mov     [rsp+68h+var_48], eax
                mov     r9, [r15+8]
                lea     r8, [rsp+68h+arg_18]
                mov     rcx, [rdi+8]
                call    RtlUnicodeToOemN
                mov     esi, eax
                mov     [rsp+68h+var_38], eax
                test    eax, eax
                js      short loc_1406F8C29
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_1406F8EC8
                mov     ecx, 0C0000162h
                test    al, al
                cmovz   esi, ecx
                mov     [rsp+68h+var_38], esi

loc_1406F8C29:                          ; CODE XREF: RtlUnicodeStringToCountedOemString+7E↑j
                test    esi, esi
                cmovns  esi, ebx
                mov     [rsp+68h+var_38], esi
;   } // starts at 1406F8BE6

loc_1406F8C32:                          ; DATA XREF: .rdata:0000000140080B40↑o
                test    esi, esi
                js      loc_1408261E9

loc_1406F8C3A:                          ; CODE XREF: RtlUnicodeStringToCountedOemString+12D65C↓j
                                        ; RtlUnicodeStringToCountedOemString+12D66F↓j
                mov     eax, esi

loc_1406F8C3C:                          ; CODE XREF: RtlUnicodeStringToCountedOemString+12D61E↓j
                                        ; RtlUnicodeStringToCountedOemString+12D628↓j ...
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406F8B90
RtlUnicodeStringToCountedOemString endp
