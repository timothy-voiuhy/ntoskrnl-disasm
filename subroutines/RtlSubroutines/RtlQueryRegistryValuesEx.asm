RtlQueryRegistryValuesEx proc near      ; CODE XREF: RtlCheckPortableOperatingSystem+79↑p
                                        ; sub_1403AAC3C+17F↑p ...

var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], 1
                call    sub_14062B088
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlQueryRegistryValuesEx endp
