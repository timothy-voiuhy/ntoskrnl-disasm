KeIsAttachedProcess proc near           ; DATA XREF: .rdata:0000000140008FC0↑o
                                        ; .pdata:00000001400D1610↑o
                mov     rax, gs:188h
                cmp     byte ptr [rax+24Ah], 1
                setz    al
                retn
KeIsAttachedProcess endp
