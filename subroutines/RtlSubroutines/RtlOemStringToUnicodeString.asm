RtlOemStringToUnicodeString proc near   ; DATA XREF: .rdata:0000000140091F84↑o
                                        ; .pdata:0000000140109DC4↑o

var_38          = dword ptr -38h
var_28          = dword ptr -28h
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001407E8DEC SIZE 00000037 BYTES
; FUNCTION CHUNK AT 000000014084219E SIZE 0000002F BYTES

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
                call    RtlxOemStringToUnicodeSize
                cmp     eax, 0FFFEh
                ja      loc_14084219E
                movzx   ecx, ax
                lea     edx, [r14+2]
                sub     cx, dx
                mov     [rbx], cx
                test    sil, sil
                jz      short loc_14075F880
                mov     [rbx+2], ax
                mov     ecx, eax
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jz      loc_1408421A8

loc_14075F824:                          ; CODE XREF: RtlOemStringToUnicodeString+D2↓j
                mov     [rsp+58h+var_28], r14d

loc_14075F829:                          ; DATA XREF: .rdata:0000000140091F70↑o
;   __try { // __finally(loc_1407E8DEC)
                movzx   eax, word ptr [rdi]
                movzx   edx, word ptr [rbx]
                mov     [rsp+58h+var_38], eax
                mov     r9, [rdi+8]
                lea     r8, [rsp+58h+arg_18]
                mov     rcx, [rbx+8]
                call    RtlOemToUnicodeN
                mov     edi, eax
                mov     [rsp+58h+var_28], eax
                test    eax, eax
                js      short loc_14075F867
                mov     ecx, [rsp+58h+arg_18]
                shr     rcx, 1
                mov     rax, [rbx+8]
                mov     [rax+rcx*2], r14w
                mov     edi, r14d
                mov     [rsp+58h+var_28], r14d
;   } // starts at 14075F829

loc_14075F867:                          ; CODE XREF: RtlOemStringToUnicodeString+8D↑j
                                        ; DATA XREF: .rdata:0000000140091F70↑o
                test    edi, edi
                js      loc_1408421B2

loc_14075F86F:                          ; CODE XREF: RtlOemStringToUnicodeString+E29F5↓j
                                        ; RtlOemStringToUnicodeString+E2A08↓j
                mov     eax, edi

loc_14075F871:                          ; CODE XREF: RtlOemStringToUnicodeString+D9↓j
                                        ; RtlOemStringToUnicodeString+E29E3↓j ...
                mov     rbx, [rsp+58h+arg_8]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14075F880:                          ; CODE XREF: RtlOemStringToUnicodeString+4A↑j
                movzx   ecx, cx
                add     rcx, rdx
                movzx   eax, word ptr [rbx+2]
                cmp     rcx, rax
                ja      short loc_14075F894
                cmp     rcx, rdx
                jnb     short loc_14075F824

loc_14075F894:                          ; CODE XREF: RtlOemStringToUnicodeString+CD↑j
                mov     eax, 80000005h
                jmp     short loc_14075F871
; } // starts at 14075F7C0
RtlOemStringToUnicodeString endp
