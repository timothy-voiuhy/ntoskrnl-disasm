RtlCmDecodeMemIoResource proc near      ; CODE XREF: sub_1407ACE90+80↓p
                                        ; sub_1407ACE90+99↓p ...

; FUNCTION CHUNK AT 000000014048BCD6 SIZE 00000053 BYTES

                mov     al, [rcx]
                xor     r8d, r8d
                dec     al
                test    al, 0FDh
                jnz     loc_14048BCD6
                mov     r8d, [rcx+0Ch]

loc_140361EE3:                          ; CODE XREF: RtlCmDecodeMemIoResource+129E1E↓j
                                        ; RtlCmDecodeMemIoResource+129E37↓j ...
                test    rdx, rdx
                jz      short loc_140361EEF
                mov     rcx, [rcx+4]
                mov     [rdx], rcx

loc_140361EEF:                          ; CODE XREF: RtlCmDecodeMemIoResource+16↑j
                mov     rax, r8
                retn
RtlCmDecodeMemIoResource endp
