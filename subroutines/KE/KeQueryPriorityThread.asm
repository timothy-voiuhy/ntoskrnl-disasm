KeQueryPriorityThread proc near         ; CODE XREF: sub_14020F010+1D6↑p
                                        ; sub_14020F26C+90↑p ...
                lea     rax, unk_140D24A00
                cmp     [rcx+220h], rax
                jz      short loc_140210219
                movsx   eax, byte ptr [rcx+0C3h]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140210219:                          ; CODE XREF: KeQueryPriorityThread+E↑j
                mov     eax, 1
                retn
KeQueryPriorityThread endp
