RtlAddProcessTrustLabelAce proc near    ; CODE XREF: sub_1403F81A0+22A↑p
                                        ; sub_14061F5D0+1DF8B9↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140854D5C SIZE 00000028 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     qword ptr [rax+8], 0
                mov     rdi, r9
                mov     r15d, r8d
                mov     ebp, edx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_140854D7A
                call    RtlValidAcl
                test    al, al
                jz      loc_140854D7A
                cmp     [rsp+48h+arg_20], 14h
                jnz     loc_140854D70
                mov     rcx, rdi
                call    RtlValidSid
                test    al, al
                jz      loc_140854D5C
                mov     rcx, rdi
                call    sub_140219FF0
                test    al, al
                jz      loc_140854D70
                movzx   esi, byte ptr [rbx]
                mov     r13d, 4
                cmp     sil, r13b
                ja      loc_140854D66
                cmp     ebp, r13d
                ja      loc_140854D66
                test    r15d, 0FFFFFFE0h
                jnz     loc_140854D70
                mov     r14d, [rsp+48h+arg_28]
                test    r14d, 0FF000000h
                jnz     loc_140854D70
                lea     rdx, [rsp+48h+arg_0]
                mov     rcx, rbx
                call    RtlFirstFreeAce
                test    al, al
                jz      loc_140854D7A
                movzx   edx, byte ptr [rdi+1]
                mov     r8, [rsp+48h+arg_0]
                add     dx, r13w
                shl     dx, 2
                test    r8, r8
                jz      short loc_14079DB6D
                movzx   ecx, word ptr [rbx+2]
                movzx   eax, dx
                add     rcx, rbx
                add     rax, r8
                cmp     rax, rcx
                ja      short loc_14079DB6D
                mov     [r8+2], dx
                lea     rdx, [r8+8]
                mov     [r8+1], r15b
                mov     byte ptr [r8], 14h
                mov     [r8+4], r14d
                mov     r8, rdi
                movzx   ecx, byte ptr [rdi+1]
                lea     ecx, ds:8[rcx*4]
                call    RtlCopySid
                inc     word ptr [rbx+4]
                mov     ecx, esi
                cmp     esi, ebp
                movzx   eax, bpl
                cmovbe  ecx, eax
                xor     eax, eax
                mov     [rbx], cl

loc_14079DB4F:                          ; CODE XREF: RtlAddProcessTrustLabelAce+142↓j
                                        ; RtlAddProcessTrustLabelAce+B7331↓j ...
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14079DB6D:                          ; CODE XREF: RtlAddProcessTrustLabelAce+D0↑j
                                        ; RtlAddProcessTrustLabelAce+E2↑j
                mov     eax, 0C0000099h
                jmp     short loc_14079DB4F
RtlAddProcessTrustLabelAce endp
