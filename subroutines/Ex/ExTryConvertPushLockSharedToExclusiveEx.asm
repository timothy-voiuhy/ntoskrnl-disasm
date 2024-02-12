ExTryConvertPushLockSharedToExclusiveEx proc near
                                        ; DATA XREF: .rdata:0000000140082A2C↑o
                                        ; .pdata:00000001400D7D3C↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014041E0D8 SIZE 00000019 BYTES

                sub     rsp, 38h
                test    edx, 0FFFFFFFCh
                jnz     loc_14041E0D8
                mov     edx, 1
                lea     eax, [rdx+10h]
                lock cmpxchg [rcx], rdx
                setz    al
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExTryConvertPushLockSharedToExclusiveEx endp
