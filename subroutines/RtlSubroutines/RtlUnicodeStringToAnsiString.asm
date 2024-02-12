RtlUnicodeStringToAnsiString proc near  ; CODE XREF: sub_140371DF4+5D↑p
                                        ; sub_1405E8438+285↑p ...

var_48          = dword ptr -48h
var_38          = dword ptr -38h
arg_8           = dword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001407E6550 SIZE 0000003D BYTES
; FUNCTION CHUNK AT 0000000140802E8E SIZE 00000048 BYTES

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
                movzx   r14d, r8b
                mov     rdi, rdx
                mov     rbx, rcx
                xor     r15d, r15d
                mov     [rax+20h], r15d
                mov     esi, r15d
                mov     [rax+10h], r15d
                movzx   r8d, word ptr [rdx]
                mov     rdx, [rdx+8]
                lea     rcx, [rax+10h]
                call    RtlUnicodeToMultiByteSize
                mov     ecx, [rsp+68h+arg_8]
                inc     ecx
                cmp     ecx, 0FFFFh
                ja      loc_140802E8E
                lea     eax, [rcx-1]
                mov     [rbx], ax
                test    r14b, r14b
                jnz     short loc_1406302CF
                movzx   ecx, word ptr [rbx+2]
                cmp     ax, cx
                jnb     loc_140802E98

loc_140630279:                          ; CODE XREF: RtlUnicodeStringToAnsiString+CF↓j
                                        ; RtlUnicodeStringToAnsiString+1D2CA2↓j
                mov     [rsp+68h+var_38], r15d

loc_14063027E:                          ; DATA XREF: .rdata:0000000140050C60↑o
;   __try { // __finally(loc_1407E6550)
                movzx   eax, word ptr [rdi]
                movzx   edx, word ptr [rbx]
                mov     [rsp+68h+var_48], eax
                mov     r9, [rdi+8]
                lea     r8, [rsp+68h+arg_18]
                mov     rcx, [rbx+8]
                call    RtlUnicodeToMultiByteN
                mov     edi, eax
                mov     [rsp+68h+var_38], eax
                test    eax, eax
                js      short loc_1406302B6
                mov     edx, [rsp+68h+arg_18]
                mov     rcx, [rbx+8]
                mov     byte ptr [rdx+rcx], 0
;   } // starts at 14063027E

loc_1406302B6:                          ; CODE XREF: RtlUnicodeStringToAnsiString+95↑j
                                        ; DATA XREF: .rdata:0000000140050C60↑o
                test    edi, edi
                js      loc_140802EB7

loc_1406302BE:                          ; CODE XREF: RtlUnicodeStringToAnsiString+1D2CC1↓j
                mov     edi, esi

loc_1406302C0:                          ; CODE XREF: RtlUnicodeStringToAnsiString+1D2CBB↓j
                mov     eax, edi

loc_1406302C2:                          ; CODE XREF: RtlUnicodeStringToAnsiString+D6↓j
                                        ; RtlUnicodeStringToAnsiString+1D2C83↓j ...
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406302CF:                          ; CODE XREF: RtlUnicodeStringToAnsiString+5A↑j
                mov     [rbx+2], cx
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jnz     short loc_140630279
                mov     eax, 0C0000017h
                jmp     short loc_1406302C2
; } // starts at 140630210
RtlUnicodeStringToAnsiString endp
