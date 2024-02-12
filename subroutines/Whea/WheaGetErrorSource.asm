WheaGetErrorSource proc near            ; CODE XREF: WheaRemoveErrorSourceDeviceDriver+39↓p
                                        ; DATA XREF: .pdata:00000001400FA2E4↑o
                sub     rsp, 28h
                mov     edx, ecx
                lea     rcx, unk_140CDAF98
                call    sub_1405BBD54
                lea     rcx, [rax+60h]
                neg     rax
                sbb     rax, rax
                and     rax, rcx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
WheaGetErrorSource endp
