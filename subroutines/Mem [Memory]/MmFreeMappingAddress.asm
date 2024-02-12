MmFreeMappingAddress proc near          ; CODE XREF: sub_140331D7C+145EFE↑p
                                        ; sub_1408AEE50+2D↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014084561A SIZE 0000005F BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     edi, edx
                mov     rbx, rcx
                call    sub_14037A950
                mov     r15, rax
                cmp     [rax+28h], edi
                jnz     loc_14084561A
                mov     rbp, [rax+18h]
                mov     rsi, [rax+20h]
                mov     rcx, rbp
                call    sub_14026B560
                mov     r14, rax
                mov     rbx, rax
                lea     r12, [rax+rsi*8]
                cmp     rax, r12
                jnb     short loc_1407674CA

loc_1407674A2:                          ; CODE XREF: MmFreeMappingAddress+78↓j
                cmp     rbx, r14
                jz      short loc_140767514
                test    rbx, 0FFFh
                jz      short loc_140767514

loc_1407674B0:                          ; CODE XREF: MmFreeMappingAddress+D6↓j
                mov     rcx, rbx
                call    sub_1402805F0
                test    rax, rax
                jnz     loc_140845634
                add     rbx, 8
                cmp     rbx, r12
                jb      short loc_1407674A2

loc_1407674CA:                          ; CODE XREF: MmFreeMappingAddress+50↑j
                mov     eax, cs:dword_140CFB17C
                test    al, 1
                jnz     loc_140845666

loc_1407674D8:                          ; CODE XREF: MmFreeMappingAddress+DE224↓j
                mov     r8d, esi
                lea     rcx, qword_140C4EDC0
                mov     rdx, r14
                call    sub_14025EFB0
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140767514:                          ; CODE XREF: MmFreeMappingAddress+55↑j
                                        ; MmFreeMappingAddress+5E↑j
                mov     rcx, rbx
                call    sub_14026B560
                mov     rcx, rax
                call    sub_1402805F0
                test    al, al
                jns     short loc_1407674B0
                jmp     loc_14084564D
MmFreeMappingAddress endp
