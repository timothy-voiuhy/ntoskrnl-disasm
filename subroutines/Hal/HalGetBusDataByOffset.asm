HalGetBusDataByOffset proc near         ; CODE XREF: HalGetBusData+11↓p
                                        ; sub_1404D7544+26↓p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001404A3054 SIZE 0000001D BYTES

                sub     rsp, 38h
                mov     r10, r9
                mov     r11d, r8d
                test    ecx, ecx
                jz      loc_1404A3054
                cmp     edx, cs:dword_140C50890
                ja      short loc_14039F637
                cmp     ecx, 4
                jnz     short loc_14039F637
                cmp     edx, cs:dword_140CF5124
                jb      short loc_14039F637
                mov     eax, [rsp+38h+arg_28]
                mov     ecx, edx
                mov     [rsp+38h+var_10], eax
                mov     eax, [rsp+38h+arg_20]
                shr     ecx, 8
                mov     [rsp+38h+var_18], eax
                call    sub_14039F644

loc_14039F631:                          ; CODE XREF: HalGetBusDataByOffset+49↓j
                                        ; HalGetBusDataByOffset+103A7C↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039F637:                          ; CODE XREF: HalGetBusDataByOffset+18↑j
                                        ; HalGetBusDataByOffset+1D↑j ...
                xor     eax, eax
                jmp     short loc_14039F631
HalGetBusDataByOffset endp
