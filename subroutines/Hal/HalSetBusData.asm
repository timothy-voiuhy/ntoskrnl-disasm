HalSetBusData   proc near               ; DATA XREF: .pdata:00000001400EE65C↑o

var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h

                sub     rsp, 38h
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_10], eax
                and     [rsp+38h+var_18], 0
                call    HalSetBusDataByOffset
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalSetBusData   endp

byte_1404B8CBC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400EE65C↑o
; Exported entry 597. HalAllocateAdapterChannel

; =============== S U B R O U T I N E =======================================


