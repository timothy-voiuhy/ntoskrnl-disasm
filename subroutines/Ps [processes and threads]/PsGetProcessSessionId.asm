PsGetProcessSessionId proc near         ; CODE XREF: sub_1405EFA5C+73↓p
                                        ; sub_1405F1014+206↓p ...
                sub     rsp, 28h
                call    sub_140245840
                mov     ecx, eax
                xor     eax, eax
                cmp     ecx, 0FFFFFFFFh
                cmovnz  eax, ecx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetProcessSessionId endp
