PsGetCurrentThreadProcessId proc near   ; CODE XREF: NtTraceControl+3DB↓p
                                        ; sub_14064A9E0+1243↓p ...
                mov     rax, gs:188h    ; PsGetCurrentProcessId
                mov     rax, [rax+478h]
                retn
PsGetCurrentThreadProcessId endp
