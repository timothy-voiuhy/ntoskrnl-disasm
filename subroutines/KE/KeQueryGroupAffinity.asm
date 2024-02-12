KeQueryGroupAffinity proc near          ; CODE XREF: sub_1405F1B98+3EB↓p
                                        ; sub_14060DA00+8B6↓p ...
                cmp     cx, cs:word_140CFC840
                jnb     short loc_14035BF09
                movzx   eax, cx
                lea     rcx, qword_140CFC848
                mov     rax, [rcx+rax*8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14035BF09:                          ; CODE XREF: KeQueryGroupAffinity+7↑j
                xor     eax, eax
                retn
KeQueryGroupAffinity endp
