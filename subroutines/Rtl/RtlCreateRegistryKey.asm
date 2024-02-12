RtlCreateRegistryKey proc near          ; CODE XREF: sub_14095F360+3C↓p
                                        ; sub_14095F360+53↓p
                                        ; DATA XREF: ...

arg_10          = qword ptr  18h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                lea     r9, [rsp+28h+arg_10]
                mov     r8b, 1
                mov     ebx, ecx
                call    sub_14062CC80
                test    eax, eax
                js      short loc_1407CF631
                bt      ebx, 1Eh
                jb      short loc_1407CF62F
                mov     rcx, [rsp+28h+arg_10]
                call    ZwClose

loc_1407CF62F:                          ; CODE XREF: RtlCreateRegistryKey+23↑j
                xor     eax, eax

loc_1407CF631:                          ; CODE XREF: RtlCreateRegistryKey+1D↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCreateRegistryKey endp
