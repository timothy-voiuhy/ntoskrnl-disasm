KeBugCheck      proc near               ; CODE XREF: sub_140307890+5C↑p
                                        ; sub_14039FE04+1BF↑p ...
                sub     rsp, 28h
                call    KeBugCheckEx

loc_1403FD719:                          ; DATA XREF: KeBugCheckEx+69↓o
                                        ; KeBugCheckEx+DB↓o
                nop
                retn
KeBugCheck      endp ; sp-analysis failed

; ---------------------------------------------------------------------------
byte_1403FD71B  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400E3310↑o
                align 10h
; Exported entry 1119. KeBugCheckEx

; =============== S U B R O U T I N E =======================================


