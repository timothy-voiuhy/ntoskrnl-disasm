IoGetAttachedDevice proc near           ; CODE XREF: NtSetInformationFile+285↑p
                                        ; sub_1402B0A60+24↓p ...
                mov     rax, [rcx+18h]
                test    rax, rax
                jz      short loc_14024CA85

loc_14024CA79:                          ; CODE XREF: IoGetAttachedDevice+13↓j
                mov     rcx, rax
                mov     rax, [rax+18h]
                test    rax, rax
                jnz     short loc_14024CA79

loc_14024CA85:                          ; CODE XREF: IoGetAttachedDevice+7↑j
                mov     rax, rcx
                retn
IoGetAttachedDevice endp
