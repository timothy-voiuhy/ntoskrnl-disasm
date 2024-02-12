KeQueryMaximumProcessorCountEx proc near
                                        ; CODE XREF: sub_1403120E0+2D↑p
                                        ; KeQueryLogicalProcessorRelationship+492↑p ...

; FUNCTION CHUNK AT 000000014046DF9A SIZE 00000026 BYTES

                cmp     cs:KeDynamicPartitioningSupported, 0
                movzx   eax, cx
                mov     ecx, 0FFFFh
                jnz     short loc_140312AAE
                cmp     ax, cx
                jnz     short loc_140312ABF
                mov     eax, cs:dword_140CFC404
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140312AAE:                          ; CODE XREF: KeQueryMaximumProcessorCountEx+F↑j
                cmp     ax, cx
                jnz     loc_14046DF9A

loc_140312AB7:                          ; CODE XREF: KeQueryMaximumProcessorCountEx+15B517↓j
                mov     eax, cs:dword_140CFC46C
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140312ABF:                          ; CODE XREF: KeQueryMaximumProcessorCountEx+14↑j
                cmp     ax, cs:word_140CFB014
                jnb     short loc_140312B2E
                mov     rcx, 5555555555555555h
                lea     rdx, qword_140CFC848
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
                align 2

loc_140312B2E:                          ; CODE XREF: KeQueryMaximumProcessorCountEx+36↑j
                xor     edx, edx
                mov     eax, edx
                retn
KeQueryMaximumProcessorCountEx endp
