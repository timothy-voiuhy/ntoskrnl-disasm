IoCheckFunctionAccess proc near         ; DATA XREF: .rdata:00000001400927F4↑o
                                        ; .pdata:0000000140109F5C↑o

arg_8           = dword ptr  10h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140842ED2 SIZE 00000067 BYTES

                sub     rsp, 28h
                xor     r8d, r8d
                mov     r10d, ecx
                movzx   ecx, dl
                mov     [rsp+28h+arg_8], r8d
                cmp     ecx, 9
                ja      short loc_140761A7D
                jz      loc_140842EFF
                test    dl, dl
                jz      short loc_140761A74
                sub     ecx, 2
                jz      short loc_140761A74
                sub     ecx, 1
                jz      short loc_140761AAA
                sub     ecx, 1
                jnz     short loc_140761AB9
                and     r10b, 6

loc_140761A64:                          ; CODE XREF: IoCheckFunctionAccess+78↓j
                neg     r10b
                sbb     r8d, r8d
                not     r8d

loc_140761A6D:                          ; CODE XREF: IoCheckFunctionAccess+87↓j
                and     r8d, 0C0000022h

loc_140761A74:                          ; CODE XREF: IoCheckFunctionAccess+1F↑j
                                        ; IoCheckFunctionAccess+24↑j ...
                mov     eax, r8d
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140761A7D:                          ; CODE XREF: IoCheckFunctionAccess+15↑j
                cmp     ecx, 0Ah
                jz      short loc_140761AE5
                cmp     ecx, 0Bh
                jz      loc_140842F16
                cmp     ecx, 0Ch
                jz      short loc_140761AAA
                jbe     loc_140842F0B
                cmp     ecx, 0Fh
                jbe     loc_140761B51
                cmp     ecx, 11h
                jnz     short loc_140761B0D
                and     r10b, 3
                jmp     short loc_140761A64
; ---------------------------------------------------------------------------

loc_140761AAA:                          ; CODE XREF: IoCheckFunctionAccess+29↑j
                                        ; IoCheckFunctionAccess+5E↑j
                not     r10d
                and     r10b, 1

loc_140761AB1:                          ; CODE XREF: IoCheckFunctionAccess+E14B3↓j
                                        ; IoCheckFunctionAccess+E14BF↓j ...
                neg     r10b

loc_140761AB4:                          ; CODE XREF: IoCheckFunctionAccess+FE↓j
                                        ; IoCheckFunctionAccess+E1504↓j
                sbb     r8d, r8d
                jmp     short loc_140761A6D
; ---------------------------------------------------------------------------

loc_140761AB9:                          ; CODE XREF: IoCheckFunctionAccess+2E↑j
                sub     ecx, 1
                jnz     short loc_140761B30
                mov     rax, [rsp+28h+arg_20]
                movsxd  rcx, dword ptr [rax]
                lea     rax, cs:140000000h
                mov     edx, ds:rva dword_140987C30[rax+rcx*4]

loc_140761AD4:                          ; CODE XREF: IoCheckFunctionAccess+11F↓j
                test    edx, edx
                jz      short loc_140761A74
                not     r10d
                test    edx, r10d
                jz      short loc_140761A74
                jmp     loc_140842EF4
; ---------------------------------------------------------------------------

loc_140761AE5:                          ; CODE XREF: IoCheckFunctionAccess+50↑j
                mov     rcx, [rsp+28h+arg_28]
                lea     rax, cs:140000000h
                not     r10d
                movsxd  rdx, dword ptr [rcx]
                test    ds:rva dword_140986680[rax+rdx*4], r10d
                mov     eax, 0C0000022h
                cmovnz  r8d, eax
                jmp     loc_140761A74
; ---------------------------------------------------------------------------

loc_140761B0D:                          ; CODE XREF: IoCheckFunctionAccess+72↑j
                cmp     ecx, 14h
                jnz     short loc_140761B6D
                mov     rax, [rsp+28h+arg_20]
                lea     rdx, [rsp+28h+arg_8]
                mov     ecx, [rax]
                call    sub_1406EC878

loc_140761B23:                          ; CODE XREF: IoCheckFunctionAccess+157↓j
                not     r10d
                and     r10d, [rsp+28h+arg_8]
                neg     r10d
                jmp     short loc_140761AB4
; ---------------------------------------------------------------------------

loc_140761B30:                          ; CODE XREF: IoCheckFunctionAccess+8C↑j
                sub     ecx, 1
                jnz     loc_140842ED2
                mov     rax, [rsp+28h+arg_20]
                movsxd  rcx, dword ptr [rax]
                lea     rax, cs:140000000h
                mov     edx, ds:rva dword_140987330[rax+rcx*4]
                jmp     short loc_140761AD4
; ---------------------------------------------------------------------------

loc_140761B51:                          ; CODE XREF: IoCheckFunctionAccess+69↑j
                shr     r9d, 0Eh
                and     r9d, 3
                jz      loc_140761A74
                test    r10d, r9d
                jnz     loc_140761A74
                jmp     loc_140842EF4
; ---------------------------------------------------------------------------

loc_140761B6D:                          ; CODE XREF: IoCheckFunctionAccess+E0↑j
                cmp     ecx, 15h
                jnz     loc_140842F0B
                mov     rax, [rsp+28h+arg_20]
                lea     rdx, [rsp+28h+arg_8]
                mov     ecx, [rax]
                call    sub_1406FB008
                jmp     short loc_140761B23
IoCheckFunctionAccess endp
