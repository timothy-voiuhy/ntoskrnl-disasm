HvlUpdatePerformanceStateCountersForLp proc near
                                        ; CODE XREF: sub_140252B20+1E3DCE↓p
                                        ; DATA XREF: .rdata:0000000140099CB0↑o ...

arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014049D508 SIZE 0000000E BYTES

                sub     rsp, 28h
                mov     [rsp+28h+arg_8], 0EEh
                xor     r8d, r8d
                mov     edx, ecx
                mov     dword ptr [rsp+28h+arg_8], 100EEh
                mov     rcx, [rsp+28h+arg_8]
                call    HvlInvokeHypercall
                test    ax, ax
                jnz     loc_14049D508
                xor     eax, eax

loc_14039011F:                          ; CODE XREF: HvlUpdatePerformanceStateCountersForLp+10D421↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HvlUpdatePerformanceStateCountersForLp endp
