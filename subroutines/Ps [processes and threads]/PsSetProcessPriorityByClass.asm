PsSetProcessPriorityByClass proc near   ; CODE XREF: NtSetInformationProcess+5E6↓p
                                        ; NtSetInformationProcess+65E↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                cmp     edx, 2
                jz      short loc_140681F6D
                cmp     edx, 1
                setz    dl
                xor     r8d, r8d
                call    sub_140681F80

loc_140681F67:                          ; CODE XREF: PsSetProcessPriorityByClass+27↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140681F6D:                          ; CODE XREF: PsSetProcessPriorityByClass+7↑j
                mov     edx, 2
                call    sub_1402B7B3C
                jmp     short loc_140681F67
PsSetProcessPriorityByClass endp
