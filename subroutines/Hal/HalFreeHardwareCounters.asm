HalFreeHardwareCounters proc near       ; DATA XREF: .pdata:000000014011AA20↑o
                sub     rsp, 28h
                cmp     rcx, cs:qword_140C12370
                mov     rdx, rcx
                jnz     short loc_140865C65
                mov     eax, cs:dword_140CF49B8
                test    al, 1
                jz      short loc_140865C97
                lock dec cs:dword_140CF49B8
                xor     eax, eax
                jmp     short loc_140865C9C
; ---------------------------------------------------------------------------

loc_140865C65:                          ; CODE XREF: HalFreeHardwareCounters+E↑j
                lea     rax, [rcx-1]
                cmp     rax, 0FFFFFFFFFFFFFFFDh
                ja      short loc_140865C97
                mov     rax, cs:off_140C00A40
                cmp     qword ptr [rax+70h], 0
                jz      short loc_140865C97
                call    sub_1404B9360
                mov     rcx, cs:off_140C00A40
                mov     rax, [rcx+70h]
                mov     rcx, rdx
                call    sub_1404079D0
                jmp     short loc_140865C9C
; ---------------------------------------------------------------------------

loc_140865C97:                          ; CODE XREF: HalFreeHardwareCounters+18↑j
                                        ; HalFreeHardwareCounters+2D↑j ...
                mov     eax, 0C000000Dh

loc_140865C9C:                          ; CODE XREF: HalFreeHardwareCounters+23↑j
                                        ; HalFreeHardwareCounters+55↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalFreeHardwareCounters endp
