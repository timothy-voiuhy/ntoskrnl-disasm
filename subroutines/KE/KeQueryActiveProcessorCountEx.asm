KeQueryActiveProcessorCountEx proc near ; CODE XREF: KeStallExecutionProcessor+71↓p
                                        ; sub_1402B3690+34↓p ...
                mov     eax, 0FFFFh
                cmp     cx, ax
                jnz     short loc_14023DB12
                mov     eax, cs:dword_140CFC404
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14023DB12:                          ; CODE XREF: KeQueryActiveProcessorCountEx+8↑j
                cmp     cx, cs:word_140CFB014
                jnb     short loc_14023DB84
                movzx   eax, cx
                lea     rdx, qword_140CFC848
                mov     rcx, 5555555555555555h
                mov     rdx, [rdx+rax*8]
                mov     rax, rdx
                shr     rax, 1
                and     rax, rcx
                sub     rdx, rax
                mov     rax, 3333333333333333h
                mov     rcx, rdx
                and     rdx, rax
                shr     rcx, 2
                and     rcx, rax
                add     rcx, rdx
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                mov     rcx, 0F0F0F0F0F0F0F0Fh
                and     rax, rcx
                mov     rcx, 101010101010101h
                imul    rax, rcx
                shr     rax, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14023DB84:                          ; CODE XREF: KeQueryActiveProcessorCountEx+19↑j
                xor     eax, eax
                retn
KeQueryActiveProcessorCountEx endp
