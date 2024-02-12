RtlUpcaseUnicodeStringToAnsiString proc near
                                        ; DATA XREF: .pdata:0000000140121D58↑o

var_38          = dword ptr -38h
var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8b
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 40h
                mov     sil, r8b
                mov     rdi, rdx
                mov     rbx, rcx
                and     [rsp+58h+arg_18], 0
                mov     rcx, rdx
                call    RtlxUnicodeStringToAnsiSize
                mov     ecx, eax
                cmp     eax, 0FFFFh
                jbe     short loc_14091140E
                mov     eax, 0C00000F0h

loc_140911405:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+60↓j
                                        ; RtlUpcaseUnicodeStringToAnsiString+6D↓j ...
                add     rsp, 40h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14091140E:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+2E↑j
                lea     eax, [rcx-1]
                mov     [rbx], ax
                test    sil, sil
                jz      short loc_140911432
                mov     [rbx+2], cx
                call    sub_140704930
                mov     [rbx+8], rax
                test    rax, rax
                jnz     short loc_14091143F
                mov     eax, 0C0000017h
                jmp     short loc_140911405
; ---------------------------------------------------------------------------

loc_140911432:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+47↑j
                cmp     ax, [rbx+2]
                jb      short loc_14091143F
                mov     eax, 80000005h
                jmp     short loc_140911405
; ---------------------------------------------------------------------------

loc_14091143F:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+59↑j
                                        ; RtlUpcaseUnicodeStringToAnsiString+66↑j
                and     [rsp+58h+var_28], 0

loc_140911444:                          ; DATA XREF: .rdata:00000001400C0030↑o
;   __try { // __finally(loc_14091149A)
                movzx   eax, word ptr [rdi]
                movzx   edx, word ptr [rbx]
                mov     [rsp+58h+var_38], eax
                mov     r9, [rdi+8]
                lea     r8, [rsp+58h+arg_18]
                mov     rcx, [rbx+8]
                call    RtlUpcaseUnicodeToMultiByteN
                mov     edi, eax
                mov     [rsp+58h+var_28], eax
                test    eax, eax
                js      short loc_14091147C
                mov     ecx, [rsp+58h+arg_18]
                mov     rax, [rbx+8]
                mov     byte ptr [rcx+rax], 0
                xor     edi, edi
                mov     [rsp+58h+var_28], edi
;   } // starts at 140911444

loc_14091147C:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+98↑j
                                        ; DATA XREF: .rdata:00000001400C0030↑o
                test    edi, edi
                jns     short loc_140911493
                test    sil, sil
                jz      short loc_140911493
                mov     rcx, [rbx+8]
                call    ExFreePoolWithTag
                and     qword ptr [rbx+8], 0

loc_140911493:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+AE↑j
                                        ; RtlUpcaseUnicodeStringToAnsiString+B3↑j
                mov     eax, edi
                jmp     loc_140911405
; } // starts at 1409113D0
; ---------------------------------------------------------------------------

loc_14091149A:                          ; DATA XREF: .rdata:00000001400C0030↑o
                                        ; .pdata:0000000140121D58↑o ...
;   __finally // owned by 140911444
                push    rbx
                push    rbp
                sub     rsp, 38h
                mov     rbp, rdx
                movzx   eax, cl
                test    cl, cl
                jnz     short loc_1409114B1
                cmp     dword ptr [rbp+30h], 0
                jge     short loc_1409114C9

loc_1409114B1:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+D9↑j
                cmp     byte ptr [rbp+70h], 0
                jz      short loc_1409114C9
                mov     rbx, [rbp+60h]
                mov     rcx, [rbx+8]
                call    ExFreePoolWithTag
                and     qword ptr [rbx+8], 0

loc_1409114C9:                          ; CODE XREF: RtlUpcaseUnicodeStringToAnsiString+DF↑j
                                        ; RtlUpcaseUnicodeStringToAnsiString+E5↑j
                add     rsp, 38h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlUpcaseUnicodeStringToAnsiString endp
