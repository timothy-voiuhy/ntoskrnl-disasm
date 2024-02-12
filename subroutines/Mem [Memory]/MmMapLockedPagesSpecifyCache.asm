MmMapLockedPagesSpecifyCache proc near  ; CODE XREF: sub_14020D92C+181↑p
                                        ; sub_1402990B0+41C↓p ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140438030 SIZE 000000E0 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbx, rcx
                mov     [rsp+58h+arg_8], 0
                mov     ecx, [rcx+2Ch]
                mov     r12d, r8d
                add     rcx, [rbx+20h]
                test    dl, dl
                jnz     loc_140258CCD
                mov     ebp, [rbx+28h]
                and     ecx, 0FFFh
                mov     esi, [rsp+58h+arg_28]
                add     rbp, 0FFFh
                add     rbp, rcx
                mov     eax, 800h
                shr     rbp, 0Ch
                test    sil, 20h
                jnz     short loc_140258BA5
                mov     r8, cs:qword_140C4DF28
                mov     ecx, esi
                and     ecx, 3FFFFFFFh
                mov     r10d, 200h
                cmp     ecx, 10h
                cmovnz  r10d, eax
                mov     rax, cs:qword_140C4EDF8
                shl     r8, 9
                xor     r9d, r9d
                sub     r8, rax
                shl     r8, 0Ch
                cmp     ecx, 10h
                setz    r9b
                inc     r9d
                cmp     r9d, 2
                jnz     loc_140258CAB
                mov     eax, 2000000h

loc_140258B9C:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1C5↓j
                cmp     r8, rax
                jb      loc_140438030

loc_140258BA5:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+60↑j
                                        ; MmMapLockedPagesSpecifyCache+1DF552↓j ...
                cmp     cs:dword_140CFC538, 1
                mov     r13d, ebp
                jz      loc_14043807E

loc_140258BB5:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1DF591↓j
                mov     edx, r13d
                lea     rcx, qword_140C4EDC0
                call    sub_1402583E0
                mov     r15, rax
                test    rax, rax
                jz      loc_140438086
                mov     rdi, rax
                shl     rdi, 19h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                mov     ecx, esi
                sub     rdi, rax
                sar     ecx, 1Fh
                mov     eax, [rbx+2Ch]
                and     ecx, 0FFFFFFFDh
                sar     rdi, 10h
                add     ecx, 4
                add     rdi, rax
                test    byte ptr cs:dword_140CFC400+2, 1
                jnz     loc_1404380A4

loc_140258C0A:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1DF5B9↓j
                mov     r14d, ecx
                or      r14d, 2
                and     esi, 40000000h
                cmovnz  r14d, ecx
                test    r12d, r12d
                jz      loc_140258CC4
                cmp     r12d, 2
                jz      loc_140258CEF

loc_140258C2E:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1D8↓j
                                        ; MmMapLockedPagesSpecifyCache+203↓j
                lea     rax, [rsp+58h+arg_8]
                mov     r9d, r14d
                mov     [rsp+58h+var_30], rax
                lea     r8, [rbx+30h]
                mov     rdx, rbp
                mov     [rsp+58h+var_38], 0
                mov     rcx, r15
                call    sub_140258D20
                movzx   ecx, word ptr [rbx+0Ah]
                test    eax, eax
                js      loc_1404380AE
                mov     esi, [rsp+58h+arg_8]
                or      cx, 1
                mov     [rbx+18h], rdi
                mov     [rbx+0Ah], cx
                and     esi, 1
                jnz     loc_140258CF8

loc_140258C77:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+21D↓j
                mov     eax, cs:dword_140CFB17C
                test    al, 1
                jnz     loc_1404380E3

loc_140258C85:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1DF61B↓j
                test    cl, 10h
                jnz     short loc_140258CBA

loc_140258C8A:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1D2↓j
                                        ; MmMapLockedPagesSpecifyCache+1F9↓j
                mov     rax, rdi

loc_140258C8D:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1FD↓j
                                        ; MmMapLockedPagesSpecifyCache+1DF5EE↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140258CAB:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+A1↑j
                xor     edx, edx
                mov     eax, 4000000h
                div     r9d
                jmp     loc_140258B9C
; ---------------------------------------------------------------------------

loc_140258CBA:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+198↑j
                or      cx, 20h
                mov     [rbx+0Ah], cx
                jmp     short loc_140258C8A
; ---------------------------------------------------------------------------

loc_140258CC4:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+12E↑j
                or      r14d, 8
                jmp     loc_140258C2E
; ---------------------------------------------------------------------------

loc_140258CCD:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+33↑j
                mov     eax, [rsp+58h+arg_28]
                mov     rdx, rcx
                mov     rcx, rbx
                mov     [rsp+58h+var_38], eax
                call    sub_140769E10
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_140258C8A

loc_140258CEB:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+1DF589↓j
                                        ; MmMapLockedPagesSpecifyCache+1DF59F↓j ...
                xor     eax, eax
                jmp     short loc_140258C8D
; ---------------------------------------------------------------------------

loc_140258CEF:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+138↑j
                or      r14d, 18h
                jmp     loc_140258C2E
; ---------------------------------------------------------------------------

loc_140258CF8:                          ; CODE XREF: MmMapLockedPagesSpecifyCache+181↑j
                mov     rcx, rdi
                call    sub_1402E8264
                mov     eax, 800h
                or      [rbx+0Ah], ax
                movzx   ecx, word ptr [rbx+0Ah]
                jmp     loc_140258C77
MmMapLockedPagesSpecifyCache endp
