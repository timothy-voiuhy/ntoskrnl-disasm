KeSetBasePriorityThread proc near       ; CODE XREF: NtSetInformationThread+395↓p
                                        ; sub_1407ACA30+50↓p ...

var_58          = qword ptr -58h
var_48          = byte ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014045973A SIZE 000002D3 BYTES

                mov     r11, rsp
                push    rbx
                push    rbp
                push    rdi
                sub     rsp, 60h
                mov     rdi, [rcx+220h]
                lea     rax, unk_140D24A00
                xor     r10d, r10d
                mov     ebp, edx
                mov     [r11+8], r10d
                mov     rbx, rcx
                cmp     rdi, rax
                jz      loc_14045973A

loc_1402CDAAD:                          ; DATA XREF: .rdata:00000001400697E4↑o
                                        ; .rdata:00000001400697FC↑o ...
                mov     [r11+10h], rsi
                mov     [r11-20h], r12
                mov     [r11-28h], r13
                mov     [r11-30h], r14
                mov     [r11-38h], r15
                mov     [r11-48h], r10
                mov     r15, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140459741

loc_1402CDAE0:                          ; CODE XREF: KeSetBasePriorityThread+18BCC3↓j
                                        ; KeSetBasePriorityThread+18BCCD↓j ...
                mov     rsi, gs:20h
                mov     r14, gs:20h
                mov     [rsp+78h+arg_10], r10d
                mov     r13, [rsi+8]
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_140459786

loc_1402CDB0E:                          ; CODE XREF: KeSetBasePriorityThread+3B0↓j
                                        ; KeSetBasePriorityThread+18BD0B↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_1402CDDF7
                movsx   eax, byte ptr [rdi+280h]
                movsx   r12d, byte ptr [rbx+233h]
                mov     r14d, r12d
                sub     r14d, eax
                movsx   eax, byte ptr [rbx+285h]
                test    al, al
                jnz     loc_1402CDE87

loc_1402CDB3F:                          ; CODE XREF: KeSetBasePriorityThread+40E↓j
                mov     eax, ebp
                mov     byte ptr [rbx+285h], 0
                cdq
                xor     cl, cl
                xor     eax, edx
                sub     eax, edx
                mov     edx, 1
                cmp     eax, 10h
                jge     loc_1402CDE3B

loc_1402CDB5D:                          ; CODE XREF: KeSetBasePriorityThread+3CD↓j
                movsx   eax, byte ptr [rdi+280h]
                lea     edi, [rax+rbp]
                cmp     al, 10h
                jge     loc_1404597F2
                cmp     edi, 10h
                jge     loc_1402CDE5E
                test    edi, edi
                jle     loc_1402CDE93

loc_1402CDB80:                          ; CODE XREF: KeSetBasePriorityThread+3E3↓j
                                        ; KeSetBasePriorityThread+415↓j
                test    cl, cl
                jnz     loc_1402CDE52
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402CDEF0
                movsx   edx, al
                mov     eax, edi
                sub     eax, r12d
                add     edx, eax
                mov     [rsp+78h+arg_0], edx
                cmp     edx, 10h
                jge     loc_140459814
                test    edx, edx
                jle     loc_140459824

loc_1402CDBB4:                          ; CODE XREF: KeSetBasePriorityThread+3D9↓j
                                        ; KeSetBasePriorityThread+18BD8F↓j ...
                mov     rcx, gs:20h
                cmp     dil, [rbx+233h]
                jl      loc_1402CDC8B

loc_1402CDBCA:                          ; CODE XREF: KeSetBasePriorityThread+212↓j
                                        ; KeSetBasePriorityThread+223↓j ...
                movzx   eax, byte ptr [rbx+234h]
                mov     [rbx+233h], dil
                test    al, al
                jnz     loc_1402CDE68

loc_1402CDBE0:                          ; CODE XREF: KeSetBasePriorityThread+402↓j
                movsx   eax, byte ptr [rbx+0C3h]
                cmp     [rsp+78h+arg_0], eax
                jnz     loc_1402CDCE6

loc_1402CDBF4:                          ; CODE XREF: KeSetBasePriorityThread+2B9↓j
                mov     rcx, [rbx+0E8h]
                test    rcx, rcx
                jnz     loc_1402CDCD4

loc_1402CDC04:                          ; CODE XREF: KeSetBasePriorityThread+25B↓j
                mov     rcx, rbx
                call    sub_1403261B0

loc_1402CDC0C:                          ; CODE XREF: KeSetBasePriorityThread+18BDBD↓j
                lea     rdx, [rsp+78h+var_48]
                mov     rcx, rsi
                call    sub_14028DAE0
                cmp     r15b, 2
                jnb     loc_1404599BD
                cmp     qword ptr [rsi+10h], 0
                mov     rbp, [rsi+8]
                jnz     loc_1402CDD44
                mov     eax, [rbp+74h]
                test    al, 40h
                jnz     loc_14045990B

loc_1402CDC3D:                          ; CODE XREF: KeSetBasePriorityThread+361↓j
                                        ; KeSetBasePriorityThread+18BEDF↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140459964

loc_1402CDC4B:                          ; CODE XREF: KeSetBasePriorityThread+18BEE6↓j
                                        ; KeSetBasePriorityThread+18BEF4↓j ...
                movzx   eax, r15b
                mov     cr8, rax

loc_1402CDC53:                          ; CODE XREF: KeSetBasePriorityThread+18BF42↓j
                                        ; KeSetBasePriorityThread+18BF51↓j ...
                test    dword ptr cs:xmmword_140CFC480+4, 2000h
                mov     r15, [rsp+78h+var_38]
                mov     r13, [rsp+78h+var_28]
                mov     rsi, [rsp+78h+arg_8]
                jnz     loc_1404599E7

loc_1402CDC75:                          ; CODE XREF: KeSetBasePriorityThread+18BF88↓j
                                        ; DATA XREF: .pdata:00000001400D1CDC↑o ...
                mov     r12, [rsp+78h+var_20]
                mov     eax, r14d
                mov     r14, [rsp+78h+var_30]

loc_1402CDC82:                          ; CODE XREF: KeSetBasePriorityThread+18BCBC↓j
                                        ; DATA XREF: .pdata:00000001400D1CE8↑o ...
                add     rsp, 60h
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402CDC8B:                          ; CODE XREF: KeSetBasePriorityThread+144↑j
                                        ; DATA XREF: .pdata:00000001400D1CF4↑o ...
                cmp     byte ptr [rbx+367h], 0
                jbe     loc_1402CDBCA
                lea     rdx, [rbx+330h]
                cmp     qword ptr [rdx], 1
                jnz     loc_1402CDBCA
                lea     r8, [rcx+8770h]
                test    r8, r8
                jz      loc_1402CDBCA
                mov     rax, [r8]
                mov     [rdx], rax
                mov     [r8], rdx
                lock inc word ptr [rbx+364h]
                call    sub_14032A28C
                jmp     loc_1402CDBCA
; ---------------------------------------------------------------------------

loc_1402CDCD4:                          ; CODE XREF: KeSetBasePriorityThread+17E↑j
                movzx   eax, byte ptr [rcx]
                and     al, 7Fh
                cmp     al, 15h
                jnz     loc_1402CDC04
                jmp     loc_140459834
; ---------------------------------------------------------------------------

loc_1402CDCE6:                          ; CODE XREF: KeSetBasePriorityThread+16E↑j
                cmp     rbx, r13
                jnz     short loc_1402CDD3E
                cmp     byte ptr [rsi+20h], 0
                jnz     short loc_1402CDD3E
                cli
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402CDFD0
                mov     rdx, rax
                sti

loc_1402CDD04:                          ; CODE XREF: KeSetBasePriorityThread+2C2↓j
                movzx   ecx, byte ptr [rbx+28Bh]
                imul    ecx, cs:dword_140CFB150
                mov     eax, [rbx+78h]
                add     rcx, rdx
                test    al, 20h
                jnz     loc_1402CDDEC

loc_1402CDD20:                          ; CODE XREF: KeSetBasePriorityThread+372↓j
                mov     r8d, [rsp+78h+arg_0]
                lea     rdx, [rsp+78h+var_48]
                mov     [rbx+20h], rcx
                mov     rcx, rbx
                call    sub_14025C570
                jmp     loc_1402CDBF4
; ---------------------------------------------------------------------------

loc_1402CDD3E:                          ; CODE XREF: KeSetBasePriorityThread+269↑j
                                        ; KeSetBasePriorityThread+26F↑j
                mov     rdx, [rbx+48h]
                jmp     short loc_1402CDD04
; ---------------------------------------------------------------------------

loc_1402CDD44:                          ; CODE XREF: KeSetBasePriorityThread+1AC↑j
                xor     edx, edx
                mov     rcx, rbp
                call    sub_1402423B0
                mov     r13, gs:20h
                mov     [rsp+78h+arg_18], 0
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_140459842

loc_1402CDD72:                          ; CODE XREF: KeSetBasePriorityThread+450↓j
                                        ; KeSetBasePriorityThread+18BDC7↓j ...
                lock bts qword ptr [rsi+30h], 0
                jb      loc_1402CDE9A
                mov     r13, [rsi+10h]
                mov     qword ptr [rsi+10h], 0
                cli
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rsi
                call    sub_1402CC660
                sti
                mov     [rsi+8], r13
                movzx   eax, byte ptr [r13+184h]
                cmp     al, 1
                jz      loc_1404598AE

loc_1402CDDAF:                          ; CODE XREF: KeSetBasePriorityThread+18BE4F↓j
                mov     byte ptr [r13+184h], 2
                mov     rdx, rbp
                mov     rcx, rsi
                mov     byte ptr [rbp+283h], 20h ; ' '
                mov     [rbp+186h], r15b
                call    sub_1402CE090
                movzx   r8d, r15b
                mov     rdx, r13
                mov     rcx, rbp
                call    sub_1404058F0
                test    al, al
                jz      loc_1402CDC3D
                jmp     loc_1404598D4
; ---------------------------------------------------------------------------

loc_1402CDDEC:                          ; CODE XREF: KeSetBasePriorityThread+29A↑j
                lock btr dword ptr [rbx+78h], 5
                jmp     loc_1402CDD20
; ---------------------------------------------------------------------------

loc_1402CDDF7:                          ; CODE XREF: KeSetBasePriorityThread+95↑j
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jnz     loc_1404597AE
                nop     word ptr [rax+rax+00000000h]

loc_1402CDE10:                          ; CODE XREF: KeSetBasePriorityThread+3A4↓j
                                        ; KeSetBasePriorityThread+18BD33↓j ...
                lea     rcx, [rsp+78h+arg_10]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_1402CDE10
                mov     rcx, [r14+84B8h]
                test    rcx, rcx
                jz      loc_1402CDB0E
                jmp     loc_1404597D6
; ---------------------------------------------------------------------------

loc_1402CDE3B:                          ; CODE XREF: KeSetBasePriorityThread+D7↑j
                test    ebp, ebp
                mov     ecx, edx
                mov     eax, 0FFFFFFFFh
                cmovle  ecx, eax
                mov     [rbx+285h], cl
                jmp     loc_1402CDB5D
; ---------------------------------------------------------------------------

loc_1402CDE52:                          ; CODE XREF: KeSetBasePriorityThread+102↑j
                mov     [rsp+78h+arg_0], edi
                jmp     loc_1402CDBB4
; ---------------------------------------------------------------------------

loc_1402CDE5E:                          ; CODE XREF: KeSetBasePriorityThread+F2↑j
                mov     edi, 0Fh
                jmp     loc_1402CDB80
; ---------------------------------------------------------------------------

loc_1402CDE68:                          ; CODE XREF: KeSetBasePriorityThread+15A↑j
                test    al, 0Fh
                jz      short loc_1402CDE7B
                mov     eax, ds:0FFFFF78000000320h
                mov     [rbx+368h], eax

loc_1402CDE7B:                          ; CODE XREF: KeSetBasePriorityThread+3EA↑j
                mov     byte ptr [rbx+234h], 0
                jmp     loc_1402CDBE0
; ---------------------------------------------------------------------------

loc_1402CDE87:                          ; CODE XREF: KeSetBasePriorityThread+B9↑j
                mov     r14d, eax
                shl     r14d, 4
                jmp     loc_1402CDB3F
; ---------------------------------------------------------------------------

loc_1402CDE93:                          ; CODE XREF: KeSetBasePriorityThread+FA↑j
                mov     edi, edx
                jmp     loc_1402CDB80
; ---------------------------------------------------------------------------

loc_1402CDE9A:                          ; CODE XREF: KeSetBasePriorityThread+2F9↑j
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jnz     loc_14045986A
                nop     word ptr [rax+rax+00h]

loc_1402CDEB0:                          ; CODE XREF: KeSetBasePriorityThread+444↓j
                                        ; KeSetBasePriorityThread+18BDEF↓j ...
                lea     rcx, [rsp+78h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rsi+30h]
                test    rax, rax
                jnz     short loc_1402CDEB0
                mov     rcx, [r13+84B8h]
                test    rcx, rcx
                jz      loc_1402CDD72
                jmp     loc_140459892
KeSetBasePriorityThread endp
