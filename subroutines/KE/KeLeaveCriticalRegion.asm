KeLeaveCriticalRegion proc near         ; CODE XREF: sub_140205874+AE↑p
                                        ; SeSecurityAttributePresent+95↑p ...
                sub     rsp, 28h
                mov     rax, gs:188h
                add     word ptr [rax+1E4h], 1
                jz      short loc_140245DCD

loc_140245DC7:                          ; CODE XREF: KeLeaveCriticalRegion+27↓j
                                        ; KeLeaveCriticalRegion+31↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140245DCD:                          ; CODE XREF: KeLeaveCriticalRegion+15↑j
                lea     rcx, [rax+98h]
                cmp     [rcx], rcx
                jz      short loc_140245DC7
                cmp     word ptr [rax+1E6h], 0
                jnz     short loc_140245DC7
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140245DC7
KeLeaveCriticalRegion endp
