IoCheckShareAccessEx proc near          ; DATA XREF: .rdata:000000014009AC14↑o
                                        ; .pdata:000000014010B618↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014084ED66 SIZE 00000013 BYTES

                sub     rsp, 38h
                mov     rax, [rsp+38h+arg_28]
                xor     r11d, r11d
                cmp     [rsp+38h+arg_20], r11b
                mov     r10d, r11d
                setnz   r10b
                test    rax, rax
                jnz     loc_14084ED66

loc_14077C251:                          ; CODE XREF: IoCheckShareAccessEx+D2B44↓j
                mov     eax, r11d

loc_14077C254:                          ; CODE XREF: IoCheckShareAccessEx+D2B3E↓j
                or      r10d, eax
                mov     [rsp+38h+var_10], r10d
                mov     [rsp+38h+var_18], r11
                call    IoCheckLinkShareAccess
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCheckShareAccessEx endp
