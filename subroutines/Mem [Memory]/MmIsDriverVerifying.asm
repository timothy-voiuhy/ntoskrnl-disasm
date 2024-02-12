MmIsDriverVerifying proc near           ; CODE XREF: sub_14037E168+12↑p
                                        ; VfIsVerificationEnabled+10063D↓p ...
                mov     rax, [rcx+28h]
                test    rax, rax
                jz      short loc_14037E1B2
                mov     eax, [rax+68h]
                bt      eax, 19h
                jb      short loc_14037E1B6

loc_14037E1B2:                          ; CODE XREF: MmIsDriverVerifying+7↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14037E1B6:                          ; CODE XREF: MmIsDriverVerifying+10↑j
                mov     eax, 1
                retn
MmIsDriverVerifying endp
