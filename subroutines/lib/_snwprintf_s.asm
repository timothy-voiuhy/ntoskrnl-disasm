_snwprintf_s    proc near               ; CODE XREF: RtlQueryAtomInAtomTable+160↓p
                                        ; DATA XREF: .pdata:00000001400E0D9C↑o

var_28          = qword ptr -28h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h

                mov     [rsp+arg_18], r9
                sub     rsp, 48h
                lea     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    _vsnwprintf_s
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_snwprintf_s    endp

byte_1403D6E5E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0D9C↑o
; Exported entry 2992. _vsnwprintf_s

; =============== S U B R O U T I N E =======================================


