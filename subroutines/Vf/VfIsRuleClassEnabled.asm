VfIsRuleClassEnabled proc near          ; CODE XREF: sub_14037E168+11773A↑p
                                        ; sub_14037E168+117748↑p ...
                cmp     ecx, 40h ; '@'
                jb      short loc_1409C8039
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409C8039:                          ; CODE XREF: VfIsRuleClassEnabled+3↑j
                mov     al, cl
                mov     edx, ecx
                and     al, 1Fh
                shr     rdx, 5
                movzx   ecx, al
                lea     rax, qword_140CF4D00
                mov     eax, [rax+rdx*4]
                bt      eax, ecx
                setb    al
                retn
VfIsRuleClassEnabled endp
