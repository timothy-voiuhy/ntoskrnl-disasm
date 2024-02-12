IoSetMasterIrpStatus proc near          ; DATA XREF: .pdata:00000001400D6218↑o
                mov     r9, rcx

loc_14032CAA3:                          ; CODE XREF: IoSetMasterIrpStatus+4D↓j
                mov     r8d, [r9+30h]
                cmp     edx, 80000016h
                jz      short loc_14032CADF
                cmp     r8d, 80000016h
                jz      short locret_14032CADD
                cmp     r8d, 40000035h
                jz      short loc_14032CADF
                cmp     edx, 40000035h
                jz      short locret_14032CADD
                mov     ecx, r8d
                mov     eax, edx
                and     ecx, 0C0000000h
                and     eax, 0C0000000h
                cmp     eax, ecx
                ja      short loc_14032CADF

locret_14032CADD:                       ; CODE XREF: IoSetMasterIrpStatus+16↑j
                                        ; IoSetMasterIrpStatus+27↑j ...
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032CADF:                          ; CODE XREF: IoSetMasterIrpStatus+D↑j
                                        ; IoSetMasterIrpStatus+1F↑j ...
                mov     eax, r8d
                lock cmpxchg [r9+30h], edx
                cmp     r8d, eax
                jz      short locret_14032CADD
                jmp     short loc_14032CAA3
IoSetMasterIrpStatus endp
