RtlCheckRegistryKey proc near           ; CODE XREF: RtlCheckPortableOperatingSystem+21↑p
                                        ; sub_14095F360+25↓p
                                        ; DATA XREF: ...

arg_10          = qword ptr  18h

                push    rbx
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                lea     r9, [rsp+28h+arg_10]
                xor     r8d, r8d
                mov     ebx, ecx
                call    sub_14062CC80
                test    eax, eax
                jns     short loc_14071BA76

loc_14071BA6F:                          ; CODE XREF: RtlCheckRegistryKey+38↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14071BA76:                          ; CODE XREF: RtlCheckRegistryKey+1D↑j
                bt      ebx, 1Eh
                jb      short loc_14071BA86
                mov     rcx, [rsp+28h+arg_10]
                call    ZwClose

loc_14071BA86:                          ; CODE XREF: RtlCheckRegistryKey+2A↑j
                xor     eax, eax
                jmp     short loc_14071BA6F
RtlCheckRegistryKey endp
