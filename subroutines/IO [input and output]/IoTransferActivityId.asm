IoTransferActivityId proc near          ; DATA XREF: .rdata:000000014009B410↑o
                                        ; .pdata:00000001400DCD34↑o

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404A073C SIZE 00000034 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rdi, rcx
                mov     rbx, rdx
                lea     rcx, qword_14000CD60
                call    sub_140399378
                test    al, al
                jnz     loc_1404A073C

loc_140399364:                          ; CODE XREF: IoTransferActivityId+10742B↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoTransferActivityId endp
