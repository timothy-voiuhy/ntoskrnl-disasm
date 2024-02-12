IoReportInterruptActive proc near       ; DATA XREF: .rdata:0000000140098DF0↑o
                                        ; .pdata:00000001400DBF24↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014049B03C SIZE 00000090 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     edx, [rcx]
                mov     eax, edx
                sub     eax, 1
                jnz     loc_14049B03C

loc_14038C237:                          ; CODE XREF: IoReportInterruptActive+10EE29↓j
                mov     rcx, [rcx+8]
                call    sub_14038C254

loc_14038C240:                          ; CODE XREF: IoReportInterruptActive+10EE53↓j
                                        ; IoReportInterruptActive+10EE73↓j ...
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReportInterruptActive endp
