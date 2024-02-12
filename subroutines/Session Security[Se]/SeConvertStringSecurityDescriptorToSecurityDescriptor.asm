SeConvertStringSecurityDescriptorToSecurityDescriptor proc near
                                        ; CODE XREF: IoCreateDeviceSecure+CF↓p
                                        ; sub_1407BD384+16A↓p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h

; FUNCTION CHUNK AT 00000001404A2EC2 SIZE 00000012 BYTES

                sub     rsp, 38h
                test    rcx, rcx
                jz      short loc_14039F2B7
                test    r8, r8
                jz      short loc_14039F2B7
                cmp     edx, 1
                jnz     loc_1404A2EC2
                mov     [rsp+38h+var_10], r9
                mov     r9, rcx
                mov     [rsp+38h+var_18], r8
                call    sub_140786344

loc_14039F2A9:                          ; CODE XREF: SeConvertStringSecurityDescriptorToSecurityDescriptor+3C↓j
                test    eax, eax
                jg      loc_1404A2EC7

loc_14039F2B1:                          ; CODE XREF: SeConvertStringSecurityDescriptorToSecurityDescriptor+103C4F↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039F2B7:                          ; CODE XREF: SeConvertStringSecurityDescriptorToSecurityDescriptor+7↑j
                                        ; SeConvertStringSecurityDescriptorToSecurityDescriptor+C↑j
                mov     eax, 57h ; 'W'
                jmp     short loc_14039F2A9
SeConvertStringSecurityDescriptorToSecurityDescriptor endp
