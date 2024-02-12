RtlRestoreSystemBootStatusDefaults proc near
                                        ; DATA XREF: .pdata:000000014012210C↑o

var_38          = dword ptr -38h

                mov     r11, rsp
                sub     rsp, 58h
                xor     eax, eax
                mov     qword ptr [r11-28h], 23h ; '#'
                xor     r9d, r9d
                mov     [r11-20h], rax
                lea     rdx, [r11-28h]
                mov     [r11-18h], rax
                mov     [rsp+58h+var_38], eax
                lea     r8d, [rax+18h]
                lea     ecx, [rax+57h]
                call    ZwPowerInformation
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlRestoreSystemBootStatusDefaults endp
