KeIsEqualAffinityEx proc near           ; CODE XREF: sub_140349370+13700A↓p
                                        ; KeIsSubsetAffinityEx+4F↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404AFBCE SIZE 00000017 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                movzx   r8d, word ptr [rcx]
                mov     r9, rdx
                movzx   eax, word ptr [rdx]
                movzx   r10d, r8w
                cmp     r8w, ax
                mov     r11, rdx
                mov     rbx, rcx
                cmovnb  r10w, ax
                cmovnb  r9, rcx
                xor     edi, edi
                movzx   edx, di
                lea     r8d, [rdi+1]
                cmp     di, r10w
                jnb     short loc_1403C24B3

loc_1403C249A:                          ; CODE XREF: KeIsEqualAffinityEx+51↓j
                movzx   ecx, dx
                mov     rax, [r11+rcx*8+8]
                cmp     [rbx+rcx*8+8], rax
                jnz     short loc_1403C24CF
                add     dx, r8w
                cmp     dx, r10w
                jb      short loc_1403C249A

loc_1403C24B3:                          ; CODE XREF: KeIsEqualAffinityEx+38↑j
                movzx   ecx, word ptr [r9]

loc_1403C24B7:                          ; CODE XREF: KeIsEqualAffinityEx+ED780↓j
                cmp     dx, cx
                jb      loc_1404AFBCE
                mov     eax, r8d

loc_1403C24C3:                          ; CODE XREF: KeIsEqualAffinityEx+71↓j
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C24CF:                          ; CODE XREF: KeIsEqualAffinityEx+47↑j
                                        ; KeIsEqualAffinityEx+ED776↓j
                xor     eax, eax
                jmp     short loc_1403C24C3
KeIsEqualAffinityEx endp
