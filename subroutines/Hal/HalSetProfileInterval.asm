HalSetProfileInterval proc near         ; DATA XREF: .pdata:00000001400EEBA8↑o

arg_0           = dword ptr  8

                sub     rsp, 28h
                mov     rax, cs:off_140C00A40
                lea     rdx, [rsp+28h+arg_0]
                mov     [rsp+28h+arg_0], ecx
                xor     ecx, ecx
                mov     rax, [rax+18h]
                call    sub_1404079D0
                test    eax, eax
                jns     short loc_1404BEA17
                xor     eax, eax
                jmp     short loc_1404BEA1B
; ---------------------------------------------------------------------------

loc_1404BEA17:                          ; CODE XREF: HalSetProfileInterval+21↑j
                mov     eax, [rsp+28h+arg_0]

loc_1404BEA1B:                          ; CODE XREF: HalSetProfileInterval+25↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalSetProfileInterval endp
