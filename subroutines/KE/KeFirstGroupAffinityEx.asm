KeFirstGroupAffinityEx proc near        ; CODE XREF: sub_1402D0C68+307↑p
                                        ; sub_1403CAF1C+95↓p ...

; FUNCTION CHUNK AT 0000000140485AF0 SIZE 00000012 BYTES

                movzx   r9d, word ptr [rdx]
                xor     r10d, r10d
                movzx   eax, r10w
                cmp     r10w, r9w
                jnb     short loc_1403557B6

loc_140355791:                          ; CODE XREF: KeFirstGroupAffinityEx+130377↓j
                movzx   r8d, ax
                cmp     [rdx+r8*8+8], r10
                jz      loc_140485AF0
                xorps   xmm0, xmm0
                movups  xmmword ptr [rcx], xmm0
                mov     [rcx+8], ax
                mov     rax, [rdx+r8*8+8]
                mov     [rcx], rax
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403557B6:                          ; CODE XREF: KeFirstGroupAffinityEx+F↑j
                                        ; KeFirstGroupAffinityEx+13037D↓j
                mov     eax, 0C0000225h
                retn
KeFirstGroupAffinityEx endp
