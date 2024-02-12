PsSetThreadHardErrorsAreDisabled proc near
                                        ; DATA XREF: .pdata:00000001400DCF20↑o
                test    dl, dl
                jz      short loc_14039AE0E
                lock or dword ptr [rcx+510h], 10h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14039AE0E:                          ; CODE XREF: PsSetThreadHardErrorsAreDisabled+2↑j
                lock and dword ptr [rcx+510h], 0FFFFFFEFh
                retn
PsSetThreadHardErrorsAreDisabled endp
