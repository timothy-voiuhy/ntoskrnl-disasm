HalSetBusDataByOffset proc near         ; CODE XREF: HalSetBusData+11↓p
                                        ; sub_14099C1F0+4C3↓p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001404A2F90 SIZE 0000001D BYTES

                sub     rsp, 38h
                mov     r10, r9
                mov     r11d, r8d
                test    ecx, ecx
                jz      loc_1404A2F90
                cmp     ecx, 4
                jnz     short loc_14039F507
                mov     eax, [rsp+38h+arg_28]
                mov     ecx, edx
                mov     [rsp+38h+var_10], eax
                mov     eax, [rsp+38h+arg_20]
                shr     ecx, 8
                mov     [rsp+38h+var_18], eax
                call    sub_14039F514

loc_14039F501:                          ; CODE XREF: HalSetBusDataByOffset+39↓j
                                        ; HalSetBusDataByOffset+103AD8↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039F507:                          ; CODE XREF: HalSetBusDataByOffset+15↑j
                xor     eax, eax
                jmp     short loc_14039F501
HalSetBusDataByOffset endp
