PsGetCurrentThread proc near            ; DATA XREF: .rdata:0000000140008DC0↑o
                                        ; .rdata:0000000140008DD0↑o ...
                mov     rax, gs:188h    ; KeGetCurrentThread
                retn
PsGetCurrentThread endp
