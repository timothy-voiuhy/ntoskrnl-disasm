RtlInsertElementGenericTableFullAvl proc near
                                        ; CODE XREF: RtlInsertElementGenericTableAvl+48↑p
                                        ; sub_1406C9DF4+173↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 000000014046D6F6 SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebp, [rsp+38h+arg_28]
                mov     r14, r9
                mov     esi, r8d
                mov     r15, rdx
                mov     rdi, rcx
                cmp     ebp, 1
                jz      loc_140310EDA
                lea     edx, [rsi+20h]
                cmp     edx, esi
                jb      loc_14046D6F6
                mov     rax, [rcx+50h]
                call    sub_1404079D0
                mov     rbx, rax
                test    rax, rax
                jz      loc_14046D6F6
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax], xmm0
                movups  xmmword ptr [rax+10h], xmm0
                inc     dword ptr [rdi+2Ch]
                test    ebp, ebp
                jz      loc_140310EB7
                mov     rcx, [rsp+38h+arg_20]
                mov     r8, rax
                cmp     ebp, 2
                jz      loc_140310EAE
                mov     [rcx+10h], rax

loc_140310E2B:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+102↓j
                mov     [rax], rcx
                mov     r9d, 1
                mov     byte ptr [rdi+18h], 0FFh
                mov     rdx, [rax]

loc_140310E3B:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+AC↓j
                cmp     [rdx+8], r8
                mov     eax, 0FFFFFFFFh
                movzx   edx, byte ptr [rcx+18h]
                cmovnz  eax, r9d
                test    dl, dl
                jnz     short loc_140310E5E
                mov     rdx, [rcx]
                mov     r8, rcx
                mov     [rcx+18h], al
                mov     rcx, rdx
                jmp     short loc_140310E3B
; ---------------------------------------------------------------------------

loc_140310E5E:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+9E↑j
                cmp     dl, al
                jz      short loc_140310EA7
                mov     byte ptr [rcx+18h], 0
                cmp     byte ptr [rdi+18h], 0
                jz      short loc_140310ED5

loc_140310E6C:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+FC↓j
                                        ; RtlInsertElementGenericTableFullAvl+118↓j ...
                mov     r8, rsi
                lea     rcx, [rbx+20h]
                mov     rdx, r15
                call    memmove

loc_140310E7B:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+12F↓j
                test    r14, r14
                jnz     short loc_140310ECA

loc_140310E80:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+123↓j
                xor     eax, eax
                mov     [rdi+28h], eax
                mov     [rdi+20h], rax
                lea     rax, [rbx+20h]

loc_140310E8D:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+15C951↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140310EA7:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+B0↑j
                call    sub_140310EE8
                jmp     short loc_140310E6C
; ---------------------------------------------------------------------------

loc_140310EAE:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+71↑j
                mov     [rcx+8], rbx
                jmp     loc_140310E2B
; ---------------------------------------------------------------------------

loc_140310EB7:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+60↑j
                mov     [rdi+10h], rbx
                mov     r9d, 1
                mov     [rax], rdi
                mov     [rdi+30h], r9d
                jmp     short loc_140310E6C
; ---------------------------------------------------------------------------

loc_140310ECA:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+CE↑j
                cmp     ebp, 1
                setnz   al
                mov     [r14], al
                jmp     short loc_140310E80
; ---------------------------------------------------------------------------

loc_140310ED5:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+BA↑j
                inc     dword ptr [rdi+30h]
                jmp     short loc_140310E6C
; ---------------------------------------------------------------------------

loc_140310EDA:                          ; CODE XREF: RtlInsertElementGenericTableFullAvl+2B↑j
                mov     rbx, [rsp+38h+arg_20]
                jmp     short loc_140310E7B
RtlInsertElementGenericTableFullAvl endp
