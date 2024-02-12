IoInitializeRemoveLockEx proc near      ; CODE XREF: sub_1403BEB18+201↓p
                                        ; sub_1407B478C+2B1↓p ...

arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140496112 SIZE 00000043 BYTES

                xor     r11d, r11d
                mov     r10, rcx
                test    rcx, rcx
                jz      short locret_14037F07C
                cmp     [rsp+arg_20], 20h ; ' '
                jnz     loc_140496112

loc_14037F056:                          ; CODE XREF: IoInitializeRemoveLockEx+117110↓j
                mov     [r10], r11b
                lea     rax, [r10+10h]
                mov     dword ptr [r10+4], 1
                mov     [rax+8], rax
                mov     [rax], rax
                mov     word ptr [r10+8], 1
                mov     byte ptr [r10+0Ah], 6
                mov     [r10+0Ch], r11d

locret_14037F07C:                       ; CODE XREF: IoInitializeRemoveLockEx+9↑j
                                        ; IoInitializeRemoveLockEx+1170D7↓j
                retn
IoInitializeRemoveLockEx endp
