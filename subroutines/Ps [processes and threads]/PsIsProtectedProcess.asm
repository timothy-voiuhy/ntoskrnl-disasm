PsIsProtectedProcess proc near          ; CODE XREF: sub_14067EC44+1EFF↓p
                                        ; NtQueryInformationProcess+735↓p
                                        ; DATA XREF: ...
                test    byte ptr [rcx+87Ah], 7
                mov     eax, 0
                setnbe  al
                retn
PsIsProtectedProcess endp
