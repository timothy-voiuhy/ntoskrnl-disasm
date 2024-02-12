ExAllocatePoolWithTag proc near         ; CODE XREF: sub_1402013A4+CF↑p
                                        ; sub_140201C7C+C8↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001409B61EC SIZE 00000080 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rax, gs:20h
                mov     r14d, r8d
                movzx   r15d, cs:word_140CFB000
                mov     rbp, rdx
                mov     esi, ecx
                mov     r9, [rax+0C0h]
                movzx   edi, word ptr [r9+92h]
                bts     edi, 1Fh
                btr     edi, 1Fh
                xor     ebx, ebx
                mov     eax, edi
                mov     [rsp+48h+arg_18], ebx

loc_1409B6060:                          ; CODE XREF: ExAllocatePoolWithTag+1F1↓j
                mov     r9d, eax
                mov     dword ptr [rsp+48h+var_28], ebx
                mov     r8d, r14d
                mov     rdx, rbp
                mov     ecx, esi
                call    sub_1402369F0
                test    rax, rax
                jz      loc_1409B61EC
                mov     rbx, rax

loc_1409B6080:                          ; CODE XREF: ExAllocatePoolWithTag+24B↓j
                mov     rbp, [rsp+48h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExAllocatePoolWithTag endp
