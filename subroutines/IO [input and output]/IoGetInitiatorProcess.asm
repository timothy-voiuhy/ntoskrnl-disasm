IoGetInitiatorProcess proc near         ; CODE XREF: sub_140341EC0+F0↑p
                                        ; IoIsInitiator32bitProcess+14↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014048CA16 SIZE 0000001E BYTES

                sub     rsp, 28h
                cmp     qword ptr [rcx+0D0h], 0
                jnz     loc_14048CA16

loc_140363D32:                          ; CODE XREF: IoGetInitiatorProcess+128D05↓j
                xor     eax, eax

loc_140363D34:                          ; CODE XREF: IoGetInitiatorProcess+128D0F↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetInitiatorProcess endp
