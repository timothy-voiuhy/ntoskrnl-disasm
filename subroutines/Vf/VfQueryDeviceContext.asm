VfQueryDeviceContext proc near          ; DATA XREF: .pdata:00000001400F8F4C↑o
                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                mov     r9, rcx
                jz      short loc_1405A0BEA
                xor     ecx, ecx
                call    sub_1409CA544
                test    al, al
                jz      short loc_1405A0BEA
                mov     r8d, edx
                mov     rcx, r9
                xor     edx, edx
                call    sub_1409CA5B4
                jmp     short loc_1405A0BEC
; ---------------------------------------------------------------------------

loc_1405A0BEA:                          ; CODE XREF: VfQueryDeviceContext+E↑j
                                        ; VfQueryDeviceContext+19↑j
                xor     eax, eax

loc_1405A0BEC:                          ; CODE XREF: VfQueryDeviceContext+28↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfQueryDeviceContext endp
