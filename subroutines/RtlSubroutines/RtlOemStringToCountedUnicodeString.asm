RtlOemStringToCountedUnicodeString proc near
                                        ; DATA XREF: .pdata:0000000140121D34↑o

var_38          = dword ptr -38h
var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_0], rcx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                mov     r14b, r8b
                mov     rsi, rdx
                mov     rdi, rcx
                mov     rcx, rdx
                call    RtlxOemStringToUnicodeSize
                sub     eax, 2
                jnz     short loc_140911264
                xor     ebx, ebx
                mov     [rdi], ebx
                mov     [rdi+8], rbx

loc_140911255:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+50↓j
                                        ; RtlOemStringToCountedUnicodeString+75↓j ...
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140911264:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+2B↑j
                cmp     eax, 0FFFEh
                jbe     short loc_140911272
                mov     eax, 0C00000F0h
                jmp     short loc_140911255
; ---------------------------------------------------------------------------

loc_140911272:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+49↑j
                mov     [rdi], ax
                xor     ebx, ebx
                test    r14b, r14b
                jz      short loc_140911297
                mov     [rdi+2], ax
                mov     ecx, eax
                call    sub_140704930
                mov     [rdi+8], rax
                test    rax, rax
                jnz     short loc_1409112A4
                mov     eax, 0C0000017h
                jmp     short loc_140911255
; ---------------------------------------------------------------------------

loc_140911297:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+5A↑j
                cmp     ax, [rdi+2]
                jbe     short loc_1409112A4
                mov     eax, 80000005h
                jmp     short loc_140911255
; ---------------------------------------------------------------------------

loc_1409112A4:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+6E↑j
                                        ; RtlOemStringToCountedUnicodeString+7B↑j
                mov     [rsp+58h+var_28], ebx

loc_1409112A8:                          ; DATA XREF: .rdata:00000001400BFFF8↑o
;   __try { // __finally(loc_1409112F0)
                movzx   eax, word ptr [rsi]
                movzx   edx, word ptr [rdi]
                mov     [rsp+58h+var_38], eax
                mov     r9, [rsi+8]
                lea     r8, [rsp+58h+arg_18]
                mov     rcx, [rdi+8]
                call    RtlOemToUnicodeN
                mov     esi, eax
                mov     [rsp+58h+var_28], eax
                test    eax, eax
                cmovns  esi, ebx
                mov     [rsp+58h+var_28], esi
;   } // starts at 1409112A8

loc_1409112D3:                          ; DATA XREF: .rdata:00000001400BFFF8↑o
                test    esi, esi
                jns     short loc_1409112E9
                test    r14b, r14b
                jz      short loc_1409112E9
                mov     rcx, [rdi+8]
                call    ExFreePoolWithTag
                mov     [rdi+8], rbx

loc_1409112E9:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+B5↑j
                                        ; RtlOemStringToCountedUnicodeString+BA↑j
                mov     eax, esi
                jmp     loc_140911255
; } // starts at 140911220
; ---------------------------------------------------------------------------

loc_1409112F0:                          ; DATA XREF: .rdata:00000001400BFFF8↑o
                                        ; .pdata:0000000140121D34↑o ...
;   __finally // owned by 1409112A8
                push    rbx
                push    rbp
                sub     rsp, 38h
                mov     rbp, rdx
                movzx   eax, cl
                test    cl, cl
                jnz     short loc_140911307
                cmp     dword ptr [rbp+30h], 0
                jge     short loc_14091131F

loc_140911307:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+DF↑j
                cmp     byte ptr [rbp+70h], 0
                jz      short loc_14091131F
                mov     rbx, [rbp+60h]
                mov     rcx, [rbx+8]
                call    ExFreePoolWithTag
                and     qword ptr [rbx+8], 0

loc_14091131F:                          ; CODE XREF: RtlOemStringToCountedUnicodeString+E5↑j
                                        ; RtlOemStringToCountedUnicodeString+EB↑j
                add     rsp, 38h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlOemStringToCountedUnicodeString endp
