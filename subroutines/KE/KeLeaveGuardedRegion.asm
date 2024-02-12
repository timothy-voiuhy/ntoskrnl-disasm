KeLeaveGuardedRegion proc near          ; DATA XREF: .pdata:00000001400D4F10↑o
                                        ; sub_140A1EEE4+2D41↓o
                sub     rsp, 28h
                mov     rax, gs:188h
                add     word ptr [rax+1E6h], 1
                jnz     short loc_140318642
                add     rax, 98h
                cmp     [rax], rax
                jnz     short loc_140318648

loc_140318642:                          ; CODE XREF: KeLeaveGuardedRegion+15↑j
                                        ; KeLeaveGuardedRegion+2D↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140318648:                          ; CODE XREF: KeLeaveGuardedRegion+20↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140318642
KeLeaveGuardedRegion endp
