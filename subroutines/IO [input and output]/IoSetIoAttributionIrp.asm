IoSetIoAttributionIrp proc near         ; DATA XREF: .pdata:00000001400F27B4↑o
                sub     rsp, 28h
                test    r8d, r8d
                jz      short loc_14050641C
                test    r8d, 0FFFFFFFCh
                jnz     short loc_14050641C
                test    r8b, 1
                jz      short loc_140506415
                test    r8b, 2
                jnz     short loc_14050641C
                call    sub_1402A2730
                jmp     short loc_140506421
; ---------------------------------------------------------------------------

loc_140506415:                          ; CODE XREF: IoSetIoAttributionIrp+16↑j
                call    sub_140357810
                jmp     short loc_140506421
; ---------------------------------------------------------------------------

loc_14050641C:                          ; CODE XREF: IoSetIoAttributionIrp+7↑j
                                        ; IoSetIoAttributionIrp+10↑j ...
                mov     eax, 0C000000Dh

loc_140506421:                          ; CODE XREF: IoSetIoAttributionIrp+23↑j
                                        ; IoSetIoAttributionIrp+2A↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetIoAttributionIrp endp
