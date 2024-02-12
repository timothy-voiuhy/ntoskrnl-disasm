RtlUnicodeStringToUTF8String proc near  ; DATA XREF: .pdata:0000000140122448↑o

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                mov     rsi, rdx
                xor     r14d, r14d
                movzx   edx, word ptr [rdx]
                mov     bpl, r8b
                mov     rbx, rcx
                mov     [rax+10h], r14d
                add     edx, 2
                mov     [rax+20h], r14d
                mov     rcx, [rsi+8]
                lea     r8, [rax+10h]
                mov     edi, r14d
                call    sub_14035D774
                test    eax, eax
                js      loc_14091B05C
                mov     eax, [rsp+48h+arg_8]
                cmp     eax, 0FFFFh
                jbe     short loc_14091AFCA
                mov     eax, 0C00000F0h
                jmp     loc_14091B05C
; ---------------------------------------------------------------------------

loc_14091AFCA:                          ; CODE XREF: RtlUnicodeStringToUTF8String+4E↑j
                lea     ecx, [rax-1]
                mov     [rbx], cx
                test    bpl, bpl
                jz      short loc_14091AFF6
                mov     rcx, rax
                mov     [rbx+2], ax
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jnz     short loc_14091AFF1
                mov     eax, 0C0000017h
                jmp     short loc_14091B05C
; ---------------------------------------------------------------------------

loc_14091AFF1:                          ; CODE XREF: RtlUnicodeStringToUTF8String+78↑j
                movzx   ecx, word ptr [rbx]
                jmp     short loc_14091B016
; ---------------------------------------------------------------------------

loc_14091AFF6:                          ; CODE XREF: RtlUnicodeStringToUTF8String+63↑j
                movzx   eax, word ptr [rbx+2]
                cmp     cx, ax
                jb      short loc_14091B016
                test    ax, ax
                jnz     short loc_14091B00B
                mov     eax, 80000005h
                jmp     short loc_14091B05C
; ---------------------------------------------------------------------------

loc_14091B00B:                          ; CODE XREF: RtlUnicodeStringToUTF8String+92↑j
                lea     ecx, [rax-1]
                mov     edi, 80000005h
                mov     [rbx], cx

loc_14091B016:                          ; CODE XREF: RtlUnicodeStringToUTF8String+84↑j
                                        ; RtlUnicodeStringToUTF8String+8D↑j
                movzx   eax, word ptr [rsi]
                lea     r8, [rsp+48h+arg_18]
                mov     r9, [rsi+8]
                movzx   edx, cx
                mov     rcx, [rbx+8]
                mov     [rsp+48h+var_28], eax
                call    RtlUnicodeToUTF8N
                mov     esi, eax
                test    eax, eax
                js      short loc_14091B048
                mov     ecx, [rsp+48h+arg_18]
                mov     esi, edi
                mov     rax, [rbx+8]
                mov     [rcx+rax], r14b
                jmp     short loc_14091B05A
; ---------------------------------------------------------------------------

loc_14091B048:                          ; CODE XREF: RtlUnicodeStringToUTF8String+C6↑j
                test    bpl, bpl
                jz      short loc_14091B05A
                mov     rcx, [rbx+8]
                call    ExFreePoolWithTag
                mov     [rbx+8], r14

loc_14091B05A:                          ; CODE XREF: RtlUnicodeStringToUTF8String+D6↑j
                                        ; RtlUnicodeStringToUTF8String+DB↑j
                mov     eax, esi

loc_14091B05C:                          ; CODE XREF: RtlUnicodeStringToUTF8String+3F↑j
                                        ; RtlUnicodeStringToUTF8String+55↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUnicodeStringToUTF8String endp
