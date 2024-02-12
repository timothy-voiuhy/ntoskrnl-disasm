sprintf_s       proc near               ; CODE XREF: RtlIpv6AddressToStringA+102↑p
                                        ; RtlIpv6AddressToStringA+177↑p ...

arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                sub     rsp, 38h
                lea     r9, [rsp+38h+arg_18]
                call    vsprintf_s
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sprintf_s       endp

algn_1403D784E:                         ; DATA XREF: .pdata:00000001400E0E14↑o
                align 20h
; Exported entry 3067. vsprintf_s

; =============== S U B R O U T I N E =======================================


