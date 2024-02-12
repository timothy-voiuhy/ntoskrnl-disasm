RtlUpcaseUnicodeStringToOemString proc near
                                        ; DATA XREF: .rdata:0000000140080B08↑o
                                        ; .pdata:0000000140105030↑o

var_38          = dword ptr -38h
var_28          = dword ptr -28h
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001407E8295 SIZE 00000037 BYTES
; FUNCTION CHUNK AT 0000000140826174 SIZE 00000030 BYTES

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
                mov     r14, rdx
                mov     rdi, rcx
                and     dword ptr [rax+20h], 0
                mov     rcx, rdx
                call    RtlxUnicodeStringToOemSize
                mov     ecx, eax
                cmp     eax, 0FFFFh
                ja      loc_140826174
                lea     eax, [rcx-1]
                mov     [rdi], ax
                test    sil, sil
                jnz     short loc_1406F8B62
                cmp     ax, [rdi+2]
                jnb     loc_14082617E

loc_1406F8AEE:                          ; CODE XREF: RtlUpcaseUnicodeStringToOemString+D2↓j
                and     [rsp+58h+var_28], 0

loc_1406F8AF3:                          ; DATA XREF: .rdata:0000000140080AF4↑o
;   __try { // __finally(loc_1407E8295)
                movzx   eax, word ptr [r14]
                movzx   edx, word ptr [rdi]
                mov     [rsp+58h+var_38], eax
                mov     r9, [r14+8]
                lea     r8, [rsp+58h+arg_18]
                mov     rcx, [rdi+8]
                call    RtlUpcaseUnicodeToOemN
                mov     ebx, eax
                mov     [rsp+58h+var_28], eax
                test    eax, eax
                js      short loc_1406F8B33
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_1406F8EC8
                mov     ecx, 0C0000162h
                test    al, al
                cmovz   ebx, ecx
                mov     [rsp+58h+var_28], ebx

loc_1406F8B33:                          ; CODE XREF: RtlUpcaseUnicodeStringToOemString+78↑j
                test    ebx, ebx
                js      short loc_1406F8B49
                mov     ecx, [rsp+58h+arg_18]
                mov     rax, [rdi+8]
                mov     byte ptr [rcx+rax], 0
                xor     ebx, ebx
                mov     [rsp+58h+var_28], ebx
;   } // starts at 1406F8AF3

loc_1406F8B49:                          ; CODE XREF: RtlUpcaseUnicodeStringToOemString+95↑j
                                        ; DATA XREF: .rdata:0000000140080AF4↑o
                test    ebx, ebx
                js      loc_140826188

loc_1406F8B51:                          ; CODE XREF: RtlUpcaseUnicodeStringToOemString+12D6EB↓j
                                        ; RtlUpcaseUnicodeStringToOemString+12D6FF↓j
                mov     eax, ebx

loc_1406F8B53:                          ; CODE XREF: RtlUpcaseUnicodeStringToOemString+DD↓j
                                        ; RtlUpcaseUnicodeStringToOemString+12D6D9↓j ...
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F8B62:                          ; CODE XREF: RtlUpcaseUnicodeStringToOemString+42↑j
                mov     [rdi+2], cx
                call    sub_140704930
                mov     [rdi+8], rax
                test    rax, rax
                jnz     loc_1406F8AEE
                mov     eax, 0C0000017h
                jmp     short loc_1406F8B53
; } // starts at 1406F8AA0
RtlUpcaseUnicodeStringToOemString endp
