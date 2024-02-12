VfQueryDispatchTable proc near          ; DATA XREF: .pdata:00000001400F8F94↑o
                sub     rsp, 28h
                xor     r8d, r8d
                cmp     cs:qword_140C1D180, r8
                jnz     short loc_1405A0E7D
                cmp     cs:dword_140C1CBB4, r8d
                jnz     short loc_1405A0E7D
                xor     eax, eax
                jmp     short loc_1405A0ECB
; ---------------------------------------------------------------------------

loc_1405A0E7D:                          ; CODE XREF: VfQueryDispatchTable+E↑j
                                        ; VfQueryDispatchTable+17↑j
                test    ecx, ecx
                jz      short loc_1405A0EB4
                sub     ecx, 2
                jz      short loc_1405A0E9C
                cmp     ecx, 1
                jnz     short loc_1405A0EC8
                cmp     edx, cs:dword_140C0531C
                ja      short loc_1405A0EC8
                lea     r8, unk_140C05318
                jmp     short loc_1405A0EC8
; ---------------------------------------------------------------------------

loc_1405A0E9C:                          ; CODE XREF: VfQueryDispatchTable+24↑j
                mov     rax, cs:qword_140D4A150
                test    rax, rax
                jz      short loc_1405A0EC8
                mov     ecx, 2
                call    sub_1404079D0
                jmp     short loc_1405A0EC5
; ---------------------------------------------------------------------------

loc_1405A0EB4:                          ; CODE XREF: VfQueryDispatchTable+1F↑j
                cmp     edx, cs:dword_140C05344
                lea     rax, unk_140C05340
                cmova   rax, r8

loc_1405A0EC5:                          ; CODE XREF: VfQueryDispatchTable+52↑j
                mov     r8, rax

loc_1405A0EC8:                          ; CODE XREF: VfQueryDispatchTable+29↑j
                                        ; VfQueryDispatchTable+31↑j ...
                mov     rax, r8

loc_1405A0ECB:                          ; CODE XREF: VfQueryDispatchTable+1B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfQueryDispatchTable endp
