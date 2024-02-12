RtlCompareString proc near              ; CODE XREF: sub_1408C2408+A3↓p
                                        ; DATA XREF: .rdata:0000000140050604↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140802A62 SIZE 0000001C BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   esi, word ptr [rcx]
                movzx   r12d, word ptr [rdx]
                mov     ebp, esi
                mov     rbx, [rcx+8]
                cmp     esi, r12d
                mov     rdi, [rdx+8]
                cmova   ebp, r12d
                add     rbp, rbx
                cmp     rbx, rbp
                jnb     short loc_14062E1A7
                test    r8b, r8b
                jz      short loc_14062E1EE

loc_14062E192:                          ; CODE XREF: RtlCompareString+55↓j
                mov     cl, [rbx]
                mov     r14b, [rdi]
                cmp     cl, r14b
                jnz     short loc_14062E1AE

loc_14062E19C:                          ; CODE XREF: RtlCompareString+72↓j
                inc     rbx
                inc     rdi
                cmp     rbx, rbp
                jb      short loc_14062E192

loc_14062E1A7:                          ; CODE XREF: RtlCompareString+3B↑j
                                        ; RtlCompareString+1D4929↓j
                sub     esi, r12d
                mov     eax, esi
                jmp     short loc_14062E1CE
; ---------------------------------------------------------------------------

loc_14062E1AE:                          ; CODE XREF: RtlCompareString+4A↑j
                call    RtlUpperChar
                mov     cl, r14b
                movzx   r15d, al
                call    RtlUpperChar
                cmp     r15b, al
                jz      short loc_14062E19C
                movzx   eax, al
                mov     ecx, r15d

loc_14062E1CA:                          ; CODE XREF: RtlCompareString+1D491B↓j
                sub     ecx, eax
                mov     eax, ecx

loc_14062E1CE:                          ; CODE XREF: RtlCompareString+5C↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14062E1EE:                          ; CODE XREF: RtlCompareString+40↑j
                sub     rdi, rbx
                jmp     loc_140802A62
RtlCompareString endp
