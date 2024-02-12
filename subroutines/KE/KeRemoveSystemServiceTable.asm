KeRemoveSystemServiceTable proc near    ; DATA XREF: .pdata:000000014011DE64↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, ecx
                mov     rcx, gs:188h
                mov     rcx, [rcx+0B8h]
                call    sub_140245840
                xor     edx, edx
                test    eax, eax
                jnz     short loc_1408BC6AF
                lea     eax, [rbx-1]
                cmp     eax, 1
                ja      short loc_1408BC6D5
                cmp     qword ptr cs:xmmword_140E018E0, rdx
                jnz     short loc_1408BC696
                cmp     qword ptr cs:xmmword_140CFCA60, rdx
                jnz     short loc_1408BC696
                cmp     qword ptr cs:xmmword_140CFCC20, rdx
                jz      short loc_1408BC6D5

loc_1408BC696:                          ; CODE XREF: KeRemoveSystemServiceTable+32↑j
                                        ; KeRemoveSystemServiceTable+3B↑j
                cmp     ebx, 1
                jnz     short loc_1408BC6B8
                mov     qword ptr cs:xmmword_140CFCA60, rdx
                mov     dword ptr cs:xmmword_140CFCA70, edx
                mov     qword ptr cs:xmmword_140CFCA70+8, rdx

loc_1408BC6AF:                          ; CODE XREF: KeRemoveSystemServiceTable+21↑j
                                        ; KeRemoveSystemServiceTable+83↓j
                mov     al, 1

loc_1408BC6B1:                          ; CODE XREF: KeRemoveSystemServiceTable+87↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1408BC6B8:                          ; CODE XREF: KeRemoveSystemServiceTable+49↑j
                lea     rax, xmmword_140CFCC00
                lea     ecx, [rbx-1]
                shl     rcx, 5
                mov     [rcx+rax], rdx
                mov     [rcx+rax+10h], edx
                mov     [rcx+rax+18h], rdx
                jmp     short loc_1408BC6AF
; ---------------------------------------------------------------------------

loc_1408BC6D5:                          ; CODE XREF: KeRemoveSystemServiceTable+29↑j
                                        ; KeRemoveSystemServiceTable+44↑j
                xor     al, al
                jmp     short loc_1408BC6B1
KeRemoveSystemServiceTable endp
