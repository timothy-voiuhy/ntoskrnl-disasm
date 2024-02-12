IoRegisterFileSystem proc near          ; CODE XREF: sub_140A6BA20+194↓p
                                        ; sub_140A6BA20+1A0↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140850F84 SIZE 0000002F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     edx, 1
                mov     rcx, [rcx+8]
                call    FsRtlSetDriverBacking
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     cl, 1
                call    sub_14039A044
                mov     dl, 1
                lea     rcx, unk_140C459A0
                call    ExAcquireResourceExclusiveLite
                mov     eax, [rbx+48h]
                cmp     eax, 14h
                jz      loc_14077F00B
                cmp     eax, 3
                jz      loc_14077EFFF
                cmp     eax, 8
                jnz     loc_14077F017
                lea     rcx, qword_140C45A90

loc_14077EF0A:                          ; CODE XREF: IoRegisterFileSystem+166↓j
                                        ; IoRegisterFileSystem+187↓j
                mov     rax, [rbx+8]
                bts     dword ptr [rax+10h], 7

loc_14077EF13:                          ; CODE XREF: IoRegisterFileSystem+172↓j
                mov     eax, [rbx+30h]
                bt      eax, 10h
                jb      loc_14077EFD7
                mov     rdx, [rcx]
                mov     r9d, 200h
                test    r9d, eax
                jnz     loc_140850F84
                mov     r8, rcx

loc_14077EF35:                          ; CODE XREF: IoRegisterFileSystem+D2107↓j
                cmp     rdx, rcx
                jz      short loc_14077EF44
                test    [rdx-20h], r9d
                jnz     loc_140850FA1

loc_14077EF44:                          ; CODE XREF: IoRegisterFileSystem+98↑j
                mov     rdx, [r8]
                lea     rax, [rbx+50h]
                cmp     [rdx+8], r8
                jnz     loc_140850FAC
                mov     [rax], rdx
                mov     [rax+8], r8
                mov     [rdx+8], rax
                mov     [r8], rax

loc_14077EF63:                          ; CODE XREF: IoRegisterFileSystem+15A↓j
                                        ; IoRegisterFileSystem+17A↓j ...
                inc     cs:dword_140C45900
                lea     rsi, qword_140C45AF0
                btr     dword ptr [rbx+30h], 7
                mov     rdi, cs:qword_140C45AF0

loc_14077EF7C:                          ; CODE XREF: IoRegisterFileSystem+135↓j
                cmp     rdi, rsi
                jnz     short loc_14077EFC4
                xor     ecx, ecx
                call    sub_14039A044
                lea     rcx, unk_140C459A0
                call    ExReleaseResourceLite
                xor     ecx, ecx
                call    sub_14039A044
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     dl, 1
                mov     rcx, rbx
                call    sub_140234540
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14077EFC4:                          ; CODE XREF: IoRegisterFileSystem+DF↑j
                mov     rax, [rdi+18h]
                mov     dl, 1
                mov     rdi, [rdi]
                mov     rcx, rbx
                call    sub_1404079D0
                jmp     short loc_14077EF7C
; ---------------------------------------------------------------------------

loc_14077EFD7:                          ; CODE XREF: IoRegisterFileSystem+7A↑j
                mov     rdx, [rcx+8]
                lea     rax, [rbx+50h]
                mov     rcx, [rdx+8]
                cmp     [rcx], rdx
                jnz     loc_140850FAC
                mov     [rax], rdx
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [rdx+8], rax
                jmp     loc_14077EF63
; ---------------------------------------------------------------------------

loc_14077EFFF:                          ; CODE XREF: IoRegisterFileSystem+54↑j
                lea     rcx, qword_140C45AE0
                jmp     loc_14077EF0A
; ---------------------------------------------------------------------------

loc_14077F00B:                          ; CODE XREF: IoRegisterFileSystem+4B↑j
                lea     rcx, qword_140C45AC0
                jmp     loc_14077EF13
; ---------------------------------------------------------------------------

loc_14077F017:                          ; CODE XREF: IoRegisterFileSystem+5D↑j
                cmp     eax, 20h ; ' '
                jnz     loc_14077EF63
                lea     rcx, qword_140C45AD0
                jmp     loc_14077EF0A
IoRegisterFileSystem endp
