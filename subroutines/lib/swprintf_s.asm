swprintf_s      proc near               ; CODE XREF: RtlIpv6AddressToStringW+C6↑p
                                        ; RtlIpv6AddressToStringW+F1↑p ...

arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                sub     rsp, 38h
                lea     r9, [rsp+38h+arg_18]
                call    vswprintf_s
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
swprintf_s      endp

algn_1403D654E:                         ; DATA XREF: .pdata:00000001400E0CC4↑o
                align 20h
; Exported entry 3068. vswprintf_s

; =============== S U B R O U T I N E =======================================


