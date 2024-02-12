MmIsVerifierEnabled proc near           ; CODE XREF: sub_14099AFB0+14↑p
                                        ; DATA XREF: .rdata:000000014009E888↑o ...

; FUNCTION CHUNK AT 00000001409C6634 SIZE 0000003A BYTES

                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_1409C462F
                cmp     cs:qword_140C1D180, 0
                jnz     loc_1409C6634

loc_1409C462C:                          ; CODE XREF: MmIsVerifierEnabled+202B↓j
                                        ; MmIsVerifierEnabled+2049↓j
                and     dword ptr [rbx], 0

loc_1409C462F:                          ; CODE XREF: MmIsVerifierEnabled+C↑j
                mov     eax, 0C00000BBh

loc_1409C4634:                          ; CODE XREF: MmIsVerifierEnabled+2059↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmIsVerifierEnabled endp
