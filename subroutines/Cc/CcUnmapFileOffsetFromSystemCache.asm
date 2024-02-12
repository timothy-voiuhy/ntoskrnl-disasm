CcUnmapFileOffsetFromSystemCache proc near
                                        ; DATA XREF: .rdata:0000000140082B0C↑o
                                        ; .pdata:00000001400D7D78↑o

var_18          = qword ptr -18h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 0000000140481AB4 SIZE 0000001E BYTES

                sub     rsp, 38h
                mov     rax, [rcx+28h]
                mov     rcx, [rax+8]
                xor     eax, eax
                cmp     [rcx+4], eax
                jbe     loc_140481AB4
                mov     [rsp+38h+var_10], 1
                xor     r9d, r9d
                mov     byte ptr [rsp+38h+var_18], al
                call    sub_140264FD0
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcUnmapFileOffsetFromSystemCache endp
