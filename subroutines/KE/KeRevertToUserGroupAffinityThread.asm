KeRevertToUserGroupAffinityThread proc near
                                        ; CODE XREF: sub_1402BA410+16A↑p
                                        ; sub_1403002B8+6E↓p ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404519F6 SIZE 000000D0 BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     ebp, ebp
                mov     rbx, rcx
                mov     [rsp+48h+arg_10], rbp
                mov     rdi, gs:188h
                mov     eax, [rdi+74h]
                test    al, 8
                jz      loc_1402BA726
                movzx   edx, word ptr [rcx+0Eh]
                or      dx, [rcx+0Ch]
                or      dx, [rcx+0Ah]
                jnz     loc_1402BA726
                cmp     [rcx], rbp
                jnz     loc_1402BA738

loc_1402BA669:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+138↓j
                mov     r14, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404519F6

loc_1402BA684:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+1973D8↓j
                                        ; KeRevertToUserGroupAffinityThread+1973E2↓j ...
                mov     r15, gs:20h
                mov     rsi, gs:20h
                mov     [rsp+48h+arg_8], ebp

loc_1402BA69A:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+197477↓j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_140451A38

loc_1402BA6AA:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+19741C↓j
                                        ; KeRevertToUserGroupAffinityThread+19742B↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_140451A5F
                mov     esi, [rdi+24Ch]
                cmp     [rbx], rbp
                jnz     loc_1402BA760
                mov     r8d, [rdi+0C4h]
                lea     rbx, [rdi+228h]
                and     dword ptr [rdi+74h], 0FFFFFFF7h

loc_1402BA6D8:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+146↓j
                lea     r9, [rsp+48h+arg_10]
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_1402BA908
                mov     ebp, [rdi+24Ch]
                mov     rcx, rdi
                call    sub_1403261B0
                test    dword ptr cs:xmmword_140CFC490, 8000000h
                jnz     loc_140451A9C

loc_1402BA706:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+197490↓j
                test    dword ptr cs:xmmword_140CFC480+4, 1000h
                jnz     loc_140451AB5

loc_1402BA716:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+1974A1↓j
                mov     r8b, r14b
                lea     rdx, [rsp+48h+arg_10]
                mov     rcx, r15
                call    sub_14028D950

loc_1402BA726:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+28↑j
                                        ; KeRevertToUserGroupAffinityThread+3A↑j ...
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402BA738:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+43↑j
                movzx   eax, cs:word_140CFC840
                movzx   ecx, word ptr [rcx+8]
                cmp     cx, ax
                jnb     short loc_1402BA726
                mov     eax, ecx
                lea     rcx, qword_140CFC848
                mov     rax, [rcx+rax*8]
                and     [rbx], rax
                jnz     loc_1402BA669
                jmp     short loc_1402BA726
; ---------------------------------------------------------------------------

loc_1402BA760:                          ; CODE XREF: KeRevertToUserGroupAffinityThread+A0↑j
                mov     r8d, 500h
                jmp     loc_1402BA6D8
KeRevertToUserGroupAffinityThread endp
