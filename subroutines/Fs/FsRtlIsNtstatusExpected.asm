FsRtlIsNtstatusExpected proc near       ; CODE XREF: sub_140275F30+A3↑p
                                        ; sub_1402841E0+775↑p ...
                mov     eax, 0C0000094h
                cmp     ecx, eax
                jle     short loc_14035571D
                cmp     ecx, 0C0000096h
                jz      short loc_140355757
                cmp     ecx, 0C00000AAh
                jz      short loc_140355757
                cmp     ecx, 0C0000409h
                jz      short loc_140355757
                cmp     ecx, 0C0000420h

loc_140355717:                          ; CODE XREF: FsRtlIsNtstatusExpected+65↓j
                jz      short loc_140355757

loc_140355719:                          ; CODE XREF: FsRtlIsNtstatusExpected+35↓j
                                        ; FsRtlIsNtstatusExpected+55↓j
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14035571D:                          ; CODE XREF: FsRtlIsNtstatusExpected+7↑j
                jz      short loc_140355757
                cmp     ecx, 80000001h
                jl      short loc_140355719
                cmp     ecx, 80000003h
                jle     short loc_140355757
                cmp     ecx, 0C0000005h
                jz      short loc_140355757
                cmp     ecx, 0C000001Dh
                jz      short loc_140355757
                cmp     ecx, 0C0000045h
                jle     short loc_140355719
                cmp     ecx, 0C0000047h
                jle     short loc_140355757
                cmp     ecx, 0C000008Ch
                jmp     short loc_140355717
; ---------------------------------------------------------------------------

loc_140355757:                          ; CODE XREF: FsRtlIsNtstatusExpected+F↑j
                                        ; FsRtlIsNtstatusExpected+17↑j ...
                xor     al, al
                retn
FsRtlIsNtstatusExpected endp
