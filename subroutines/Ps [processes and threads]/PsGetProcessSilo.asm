PsGetProcessSilo proc near              ; CODE XREF: NtSetInformationThread+1C421E↓p
                                        ; PsIsProcessInAppSilo+4↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rcx, [rcx+510h]
                call    sub_140200084
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsGetProcessSilo endp
