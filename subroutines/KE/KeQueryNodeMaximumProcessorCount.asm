KeQueryNodeMaximumProcessorCount proc near
                                        ; DATA XREF: .pdata:00000001400DFDAC↑o
                cmp     cx, cs:word_140CFB000
                jnb     short loc_1403CE253
                lfence
                movzx   eax, cx
                lea     rcx, qword_140D23380
                mov     rax, [rcx+rax*8]
                movzx   eax, byte ptr [rax+0B4h]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CE253:                          ; CODE XREF: KeQueryNodeMaximumProcessorCount+7↑j
                xor     eax, eax
                retn
KeQueryNodeMaximumProcessorCount endp
