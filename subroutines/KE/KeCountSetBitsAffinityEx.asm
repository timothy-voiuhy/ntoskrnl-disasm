KeCountSetBitsAffinityEx proc near      ; CODE XREF: sub_1402B8E90+92↑p
                                        ; sub_1402B906C+7F↑p ...

var_8           = qword ptr -8
arg_0           = qword ptr  8

                sub     rsp, 8
                movzx   eax, word ptr [rcx]
                xor     r8d, r8d
                cmp     r8w, ax
                jnb     loc_1402B92AA

loc_1402B9224:                          ; DATA XREF: .rdata:0000000140066524↑o
                                        ; .rdata:0000000140066538↑o ...
                mov     [rsp+8+arg_0], rbx
                add     rcx, 8
                mov     [rsp+8+var_8], rdi
                mov     r9d, eax
                mov     rdi, 101010101010101h
                mov     rbx, 0F0F0F0F0F0F0F0Fh
                mov     r11, 5555555555555555h
                mov     r10, 3333333333333333h
                nop     dword ptr [rax+00h]

loc_1402B9260:                          ; CODE XREF: KeCountSetBitsAffinityEx+8F↓j
                mov     rdx, [rcx]
                lea     rcx, [rcx+8]
                mov     rax, rdx
                shr     rax, 1
                and     rax, r11
                sub     rdx, rax
                mov     rax, rdx
                and     rdx, r10
                shr     rax, 2
                and     rax, r10
                add     rax, rdx
                mov     rdx, rax
                shr     rdx, 4
                add     rdx, rax
                and     rdx, rbx
                imul    rdx, rdi
                shr     rdx, 38h
                add     r8d, edx
                sub     r9, 1
                jnz     short loc_1402B9260
                mov     rdi, [rsp+8+var_8]
                mov     rbx, [rsp+8+arg_0]

loc_1402B92AA:                          ; CODE XREF: KeCountSetBitsAffinityEx+E↑j
                                        ; DATA XREF: .pdata:00000001400D0D4C↑o ...
                mov     eax, r8d
                add     rsp, 8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeCountSetBitsAffinityEx endp
