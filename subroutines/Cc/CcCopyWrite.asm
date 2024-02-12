CcCopyWrite     proc near               ; CODE XREF: FsRtlCopyWrite+33E↓p
                                        ; DATA XREF: .pdata:00000001400F0E58↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_20          = qword ptr  28h

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_20]
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rax
                call    CcCopyWriteEx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcCopyWrite     endp

byte_1404EA3FF  db 11h dup(0CCh)        ; DATA XREF: .pdata:00000001400F0E58↑o
; Exported entry  42. CcDeferWrite

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

