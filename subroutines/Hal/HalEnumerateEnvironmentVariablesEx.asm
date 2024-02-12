HalEnumerateEnvironmentVariablesEx proc near
                                        ; DATA XREF: .pdata:00000001400EE8D8↑o
                sub     rsp, 28h
                mov     r9, r8
                mov     r8, rdx
                xor     edx, edx
                call    sub_1404BC150
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalEnumerateEnvironmentVariablesEx endp
