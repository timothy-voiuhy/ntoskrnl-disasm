RtlIoDecodeMemIoResource proc near      ; CODE XREF: sub_1407AD51C+581↓p
                                        ; sub_1407C48D0+2C↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404953F2 SIZE 00000066 BYTES

                mov     [rsp+arg_0], rbx
                mov     r10, rcx
                xor     r11d, r11d
                xor     ecx, ecx
                mov     al, [r10+1]
                dec     al
                test    al, 0FDh
                jnz     loc_1404953F2
                mov     r11d, [r10+8]
                mov     ecx, [r10+0Ch]

loc_14037D543:                          ; CODE XREF: RtlIoDecodeMemIoResource+117EF1↓j
                                        ; RtlIoDecodeMemIoResource+117F10↓j ...
                test    rdx, rdx
                jz      short loc_14037D54B
                mov     [rdx], rcx

loc_14037D54B:                          ; CODE XREF: RtlIoDecodeMemIoResource+26↑j
                test    r8, r8
                jz      short loc_14037D557
                mov     rcx, [r10+10h]
                mov     [r8], rcx

loc_14037D557:                          ; CODE XREF: RtlIoDecodeMemIoResource+2E↑j
                test    r9, r9
                jz      short loc_14037D563
                mov     rcx, [r10+18h]
                mov     [r9], rcx

loc_14037D563:                          ; CODE XREF: RtlIoDecodeMemIoResource+3A↑j
                mov     rbx, [rsp+arg_0]
                mov     rax, r11
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIoDecodeMemIoResource endp
