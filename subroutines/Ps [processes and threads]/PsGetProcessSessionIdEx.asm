PsGetProcessSessionIdEx proc near       ; CODE XREF: sub_14067955C+13E↓p
                                        ; sub_14067A140+A3F↓p ...
                sub     rsp, 28h
                call    sub_140245840
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetProcessSessionIdEx endp
