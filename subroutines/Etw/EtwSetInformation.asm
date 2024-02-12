EtwSetInformation proc near             ; CODE XREF: sub_14039B008+212↑p
                                        ; sub_14039B008+30D↑p ...

; FUNCTION CHUNK AT 000000014084F468 SIZE 00000051 BYTES

                sub     rsp, 28h
                xor     r10d, r10d
                mov     r11, r8
                test    rcx, rcx
                jz      short loc_14077D710
                sub     edx, 2
                jnz     loc_14084F468
                test    r8, r8
                jz      short loc_14077D717
                lea     eax, [r9-3]
                cmp     eax, 7FFCh
                ja      short loc_14077D717
                movzx   r8d, r9w
                mov     rdx, r11
                call    sub_14077D728
                mov     r10d, eax

loc_14077D707:                          ; CODE XREF: EtwSetInformation+4D↓j
                                        ; EtwSetInformation+D1DA3↓j ...
                mov     eax, r10d

loc_14077D70A:                          ; CODE XREF: EtwSetInformation+45↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_14077D710:                          ; CODE XREF: EtwSetInformation+D↑j
                mov     eax, 0C0000008h
                jmp     short loc_14077D70A
; ---------------------------------------------------------------------------

loc_14077D717:                          ; CODE XREF: EtwSetInformation+1B↑j
                                        ; EtwSetInformation+26↑j ...
                mov     r10d, 0C000000Dh
                jmp     short loc_14077D707
EtwSetInformation endp
