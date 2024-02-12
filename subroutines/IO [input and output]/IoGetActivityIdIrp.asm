IoGetActivityIdIrp proc near            ; CODE XREF: IoPropagateActivityIdToThread+17200D↓p
                                        ; sub_1403B8570+F3A10↓p
                                        ; DATA XREF: ...
                mov     rax, [rcx+0C8h]
                cmp     byte ptr [rcx+47h], 0
                jl      short loc_1403202A8
                test    rax, rax
                jz      short loc_1403202A8
                test    byte ptr [rax+2], 1
                jnz     short loc_1403202AF

loc_1403202A8:                          ; CODE XREF: IoGetActivityIdIrp+B↑j
                                        ; IoGetActivityIdIrp+10↑j
                mov     eax, 0C0000225h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403202AF:                          ; CODE XREF: IoGetActivityIdIrp+16↑j
                mov     rax, [rcx+0C8h]
                movups  xmm0, xmmword ptr [rax+18h]
                xor     eax, eax
                movups  xmmword ptr [rdx], xmm0
                retn
IoGetActivityIdIrp endp
