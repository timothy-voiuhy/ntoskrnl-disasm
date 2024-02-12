VfIsVerificationEnabled proc near       ; CODE XREF: VfFailDeviceNode+18↑p
                                        ; DATA XREF: .rdata:000000014009E9D0↑o ...

; FUNCTION CHUNK AT 00000001404A780C SIZE 0000005A BYTES

                sub     rsp, 28h
                cmp     cs:dword_140C1CC48, 0
                jnz     loc_1404A780C

loc_1403A7211:                          ; CODE XREF: VfIsVerificationEnabled+100618↓j
                                        ; VfIsVerificationEnabled+100650↓j
                xor     eax, eax

loc_1403A7213:                          ; CODE XREF: VfIsVerificationEnabled+100629↓j
                                        ; VfIsVerificationEnabled+100643↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfIsVerificationEnabled endp
