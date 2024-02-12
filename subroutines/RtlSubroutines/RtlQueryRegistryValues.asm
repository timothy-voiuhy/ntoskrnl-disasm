RtlQueryRegistryValues proc near        ; DATA XREF: .pdata:0000000140106B00↑o
                                        ; sub_1403C57C8+11B↑o

var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], 0
                call    sub_14062B088
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlQueryRegistryValues endp
