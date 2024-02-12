IoSetFsZeroingOffsetRequired proc near  ; DATA XREF: .pdata:00000001400F294C↑o
                push    rbx
                sub     rsp, 20h
                mov     edx, 4
                mov     rbx, rcx
                call    sub_1402F17B0
                test    al, al
                jz      short loc_140507E2E
                mov     eax, 0C0000021h
                jmp     short loc_140507E5D
; ---------------------------------------------------------------------------

loc_140507E2E:                          ; CODE XREF: IoSetFsZeroingOffsetRequired+15↑j
                call    sub_140507E80
                test    al, al
                jnz     short loc_140507E3E
                mov     eax, 0C00000BBh
                jmp     short loc_140507E5D
; ---------------------------------------------------------------------------

loc_140507E3E:                          ; CODE XREF: IoSetFsZeroingOffsetRequired+25↑j
                mov     edx, 4
                mov     rcx, rbx
                call    sub_1402A2A90
                test    rax, rax
                jnz     short loc_140507E57
                mov     eax, 0C000009Ah
                jmp     short loc_140507E5D
; ---------------------------------------------------------------------------

loc_140507E57:                          ; CODE XREF: IoSetFsZeroingOffsetRequired+3E↑j
                and     dword ptr [rax+28h], 0
                xor     eax, eax

loc_140507E5D:                          ; CODE XREF: IoSetFsZeroingOffsetRequired+1C↑j
                                        ; IoSetFsZeroingOffsetRequired+2C↑j ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetFsZeroingOffsetRequired endp
