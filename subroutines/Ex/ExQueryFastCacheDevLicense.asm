ExQueryFastCacheDevLicense proc near    ; CODE XREF: sub_14091D66C:loc_14091D6EE↓p
                                        ; DATA XREF: .pdata:00000001401068E4↑o

arg_0           = dword ptr  8

                mov     r11, rsp
                sub     rsp, 38h
                lea     rax, aAllowdevelopme ; "AllowDevelopmentWithoutDevLicense"
                mov     qword ptr [r11-18h], 440042h
                lea     rdx, [r11+8]
                mov     [r11-10h], rax
                lea     rcx, [r11-18h]
                mov     [rsp+38h+arg_0], 0FFFFh
                call    sub_140718AA8
                test    eax, eax
                js      short loc_140718A84
                mov     eax, 1
                cmp     [rsp+38h+arg_0], eax
                jnz     short loc_140718A84

loc_140718A7E:                          ; CODE XREF: ExQueryFastCacheDevLicense+46↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140718A84:                          ; CODE XREF: ExQueryFastCacheDevLicense+31↑j
                                        ; ExQueryFastCacheDevLicense+3C↑j
                xor     al, al
                jmp     short loc_140718A7E
ExQueryFastCacheDevLicense endp
