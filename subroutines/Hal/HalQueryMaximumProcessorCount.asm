HalQueryMaximumProcessorCount proc near ; CODE XREF: sub_140259F00:loc_14025A3A8↑p
                                        ; sub_14037B234+42↑p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140494E06 SIZE 00000024 BYTES

                sub     rsp, 38h
                mov     r8d, cs:dword_140C50784
                xor     edx, edx
                test    r8d, r8d
                jz      loc_140494E06
                cmp     cs:byte_140C496D4, dl
                jz      loc_140494E06
                call    sub_14037B664
                dec     eax
                cmp     eax, 3
                ja      short loc_14037B64D
                mov     rax, cs:qword_140C496E0
                test    rax, rax
                jz      short loc_14037B64D
                mov     edx, [rax+3Ch]

loc_14037B64D:                          ; CODE XREF: HalQueryMaximumProcessorCount+2C↑j
                                        ; HalQueryMaximumProcessorCount+38↑j
                cmp     edx, r8d
                cmovb   edx, r8d
                mov     eax, edx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalQueryMaximumProcessorCount endp
