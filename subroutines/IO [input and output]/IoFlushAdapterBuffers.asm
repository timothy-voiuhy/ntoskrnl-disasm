IoFlushAdapterBuffers proc near         ; CODE XREF: sub_14032CB00+1496A6↓p
                                        ; DATA XREF: .rdata:0000000140005D08↑o ...

var_18          = dword ptr -18h
var_10          = byte ptr -10h
arg_20          = dword ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014049A568 SIZE 0000001E BYTES

                sub     rsp, 38h
                mov     r11, rdx
                mov     r10, rcx
                call    sub_140347140
                mov     rdx, r11
                mov     rcx, r10
                sub     eax, 2
                jnz     loc_14049A568
                mov     al, [rsp+38h+arg_28]
                mov     [rsp+38h+var_10], al
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], eax
                call    sub_140389B60

loc_140389B53:                          ; CODE XREF: IoFlushAdapterBuffers+110A61↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoFlushAdapterBuffers endp
