RtlQueryPackageIdentity proc near       ; CODE XREF: sub_1405E8898+A7↓p
                                        ; sub_1406456F0+108C↓p ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

                mov     r11, rsp
                sub     rsp, 58h
                and     qword ptr [r11-18h], 0
                lea     rax, [r11-18h]
                mov     [r11-28h], rax
                mov     rax, [rsp+58h+arg_20]
                mov     [r11-38h], rax
                call    sub_140204710
                test    eax, eax
                jns     short loc_1402046EF

loc_1402046E9:                          ; CODE XREF: RtlQueryPackageIdentity+3A↓j
                                        ; RtlQueryPackageIdentity+47↓j
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402046EF:                          ; CODE XREF: RtlQueryPackageIdentity+27↑j
                mov     rdx, [rsp+58h+arg_28]
                test    rdx, rdx
                jz      short loc_1402046E9
                cmp     [rsp+58h+var_18], 0
                setnz   cl
                mov     [rdx], cl
                jmp     short loc_1402046E9
RtlQueryPackageIdentity endp
