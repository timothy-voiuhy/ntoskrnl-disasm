RtlEnumerateGenericTableWithoutSplayingAvl proc near
                                        ; CODE XREF: RtlEnumerateGenericTableAvl+11↓p
                                        ; DATA XREF: .pdata:00000001400D4808↑o
                sub     rsp, 28h
                cmp     dword ptr [rcx+2Ch], 0
                mov     r9, rdx
                mov     rax, rcx
                jz      short loc_1403106D8
                mov     rcx, [rdx]
                test    rcx, rcx
                jz      short loc_1403106DC
                call    sub_1403108D0
                test    rax, rax
                jz      short loc_1403106C5
                mov     [r9], rax

loc_1403106C5:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplayingAvl+20↑j
                                        ; RtlEnumerateGenericTableWithoutSplayingAvl+55↓j
                lea     rcx, [rax+20h]
                neg     rax
                sbb     rax, rax
                and     rax, rcx

loc_1403106D2:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplayingAvl+3A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1403106D8:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplayingAvl+E↑j
                xor     eax, eax
                jmp     short loc_1403106D2
; ---------------------------------------------------------------------------

loc_1403106DC:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplayingAvl+16↑j
                mov     rax, [rax+10h]
                mov     rcx, [rax+8]
                jmp     short loc_1403106ED
; ---------------------------------------------------------------------------

loc_1403106E6:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplayingAvl+50↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_1403106ED:                          ; CODE XREF: RtlEnumerateGenericTableWithoutSplayingAvl+44↑j
                test    rcx, rcx
                jnz     short loc_1403106E6
                mov     [rdx], rax
                jmp     short loc_1403106C5
RtlEnumerateGenericTableWithoutSplayingAvl endp
