IoReportInterruptInactive proc near     ; DATA XREF: .rdata:0000000140099158↑o
                                        ; .pdata:00000001400DBFD8↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049B4B4 SIZE 00000090 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     edx, [rcx]
                mov     eax, edx
                sub     eax, 1
                jnz     loc_14049B4B4

loc_14038CBD7:                          ; CODE XREF: IoReportInterruptInactive+10E901↓j
                mov     rcx, [rcx+8]
                call    sub_14038CBF4

loc_14038CBE0:                          ; CODE XREF: IoReportInterruptInactive+10E92B↓j
                                        ; IoReportInterruptInactive+10E94B↓j ...
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReportInterruptInactive endp
