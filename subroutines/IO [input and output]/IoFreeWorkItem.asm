IoFreeWorkItem  proc near               ; CODE XREF: sub_14037E1D0+26↓p
                                        ; DATA XREF: .rdata:00000001400843D8↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140484564 SIZE 0000001D BYTES

                sub     rsp, 38h
                cmp     qword ptr [rcx], 0
                jnz     loc_140484564
                xor     edx, edx
                call    ExFreePoolWithTag
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFreeWorkItem  endp

byte_14035217B  db 15h dup(0CCh)        ; DATA XREF: .rdata:00000001400843D8↑o
                                        ; .pdata:00000001400D8318↑o
; Exported entry 1245. KeQueryInterruptTimePrecise

; =============== S U B R O U T I N E =======================================


