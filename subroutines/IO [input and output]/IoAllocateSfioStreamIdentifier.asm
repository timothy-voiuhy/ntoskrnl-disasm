IoAllocateSfioStreamIdentifier proc near
                                        ; DATA XREF: .pdata:00000001400F26F4↑o

var_18          = byte ptr -18h

                sub     rsp, 38h
                test    rcx, rcx
                jnz     short loc_1405059D0
                mov     eax, 0C00000EFh
                jmp     short loc_1405059F5
; ---------------------------------------------------------------------------

loc_1405059D0:                          ; CODE XREF: IoAllocateSfioStreamIdentifier+7↑j
                lea     eax, [rdx-1]
                cmp     eax, 0FFFFFFDEh
                ja      short loc_1405059F0
                test    r8, r8
                jnz     short loc_1405059E4
                mov     eax, 0C00000F1h
                jmp     short loc_1405059F5
; ---------------------------------------------------------------------------

loc_1405059E4:                          ; CODE XREF: IoAllocateSfioStreamIdentifier+1B↑j
                mov     [rsp+38h+var_18], 1
                call    sub_140506934
                jmp     short loc_1405059F5
; ---------------------------------------------------------------------------

loc_1405059F0:                          ; CODE XREF: IoAllocateSfioStreamIdentifier+16↑j
                mov     eax, 0C00000F0h

loc_1405059F5:                          ; CODE XREF: IoAllocateSfioStreamIdentifier+E↑j
                                        ; IoAllocateSfioStreamIdentifier+22↑j ...
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoAllocateSfioStreamIdentifier endp
