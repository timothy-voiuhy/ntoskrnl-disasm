PsIsSystemThread proc near              ; DATA XREF: .rdata:0000000140008FB8↑o
                                        ; .pdata:00000001400D767C↑o
                mov     eax, [rcx+74h]  ; IoIsSystemThread
                shr     eax, 0Ah
                and     al, 1
                retn
PsIsSystemThread endp
