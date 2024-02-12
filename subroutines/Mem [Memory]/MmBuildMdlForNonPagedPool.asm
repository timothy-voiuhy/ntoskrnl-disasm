MmBuildMdlForNonPagedPool proc near     ; CODE XREF: sub_1402108D4+E5↑p
                                        ; sub_14039422C:loc_1403942AC↓p ...

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140462324 SIZE 00000223 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                mov     rsi, [rcx+20h]
                lea     r15, [rcx+30h]
                mov     edx, [rcx+2Ch]
                xor     ebx, ebx
                add     rdx, rsi
                mov     qword ptr [rcx+10h], 0
                shr     rsi, 9
                mov     r11, 7FFFFFFFF8h
                and     rsi, r11
                mov     [rcx+18h], rdx
                mov     r14, rcx
                mov     [rsp+0B8h+arg_10], rbx
                mov     rdi, 0FFFFFFFFFFFFFFFFh
                mov     rax, 0FFFFF68000000000h
                xor     ebp, ebp
                mov     rax, rax
                mov     ecx, [rcx+28h]
                and     edx, 0FFFh
                add     rcx, 0FFFh
                add     rsi, rax
                add     rcx, rdx
                xor     r12d, r12d
                shr     rcx, 0Ch
                mov     [rsp+0B8h+arg_0], r12d
                lea     r13, [rsi+rcx*8]
                mov     [rsp+0B8h+arg_18], r13
                cmp     rsi, r13
                jnb     loc_1402EDE3E
                mov     r10, 0FFFFFA8000000028h
                mov     r9d, 800h

loc_1402EDDC9:                          ; CODE XREF: MmBuildMdlForNonPagedPool+11C↓j
                mov     rdx, 0FFFFF6FB7DBED000h
                mov     rax, 0FFFFFFFFFh
                test    ebp, ebp
                jz      short loc_1402EDE56
                cmp     ebp, 2
                jge     loc_1402EDF34

loc_1402EDDEA:                          ; CODE XREF: MmBuildMdlForNonPagedPool+37C↓j
                mov     [r15], rdi
                movzx   r8d, word ptr [r14+0Ah]
                test    r9w, r8w
                jnz     short loc_1402EDE1C
                cmp     rdi, rax
                ja      loc_1402EE0B9
                lea     rcx, [rdi+rdi*2]
                add     rcx, rcx
                mov     rax, r10
                mov     rdx, [rax+rcx*8]
                shr     rdx, 32h
                and     edx, 1
                jz      loc_1402EE0B9

loc_1402EDE1C:                          ; CODE XREF: MmBuildMdlForNonPagedPool+D6↑j
                                        ; MmBuildMdlForNonPagedPool+3A2↓j
                add     r15, 8
                add     rsi, 8
                test    rsi, 0FFFh
                jz      loc_1402EE0B2
                cmp     ebp, 1
                jnz     short loc_1402EDE39
                inc     rdi

loc_1402EDE39:                          ; CODE XREF: MmBuildMdlForNonPagedPool+114↑j
                                        ; MmBuildMdlForNonPagedPool+394↓j
                cmp     rsi, r13
                jb      short loc_1402EDDC9

loc_1402EDE3E:                          ; CODE XREF: MmBuildMdlForNonPagedPool+93↑j
                or      word ptr [r14+0Ah], 4
                add     rsp, 78h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EDE56:                          ; CODE XREF: MmBuildMdlForNonPagedPool+BF↑j
                mov     r12, rsi
                mov     r8, 0FFFFF68000000000h
                shl     r12, 19h
                mov     rax, r8
                shl     rax, 19h
                mov     r10d, 4
                sub     r12, rax
                mov     r9d, r10d
                sar     r12, 10h
                mov     rcx, r12
                shr     rcx, 9
                and     r11, rcx
                mov     rax, r8
                add     r11, rax
                mov     rbp, 7FFFFFFFF8h
                mov     rbx, r11
                mov     [rsp+0B8h+var_88], r11
                shr     rbx, 9
                and     rbx, rbp
                mov     rax, r8
                add     rbx, rax
                mov     rdi, rbx
                mov     [rsp+0B8h+var_80], rbx
                shr     rdi, 9
                and     rdi, rbp
                mov     rax, r8
                add     rdi, rax
                mov     rcx, rdi
                mov     [rsp+0B8h+var_78], rdi
                shr     rcx, 9
                and     rbp, rcx
                mov     rax, r8
                add     rbp, rax
                mov     [rsp+0B8h+var_70], rbp

loc_1402EDEDC:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1E7↓j
                mov     r8, [rsp+r9*8+0B8h+var_90]
                dec     r9
                dec     r10d
                mov     rcx, [r8]
                mov     rax, rdx
                cmp     r8, rax
                jnb     loc_1402EDF99

loc_1402EDEF6:                          ; CODE XREF: MmBuildMdlForNonPagedPool+289↓j
                                        ; MmBuildMdlForNonPagedPool+17460E↓j ...
                test    cl, 1
                jz      short loc_1402EDF09
                test    cl, cl
                js      loc_1402EDFB4
                cmp     r9, 1
                jnz     short loc_1402EDEDC

loc_1402EDF09:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1D9↑j
                                        ; MmBuildMdlForNonPagedPool+297↓j
                mov     rcx, rsi
                call    sub_1402805F0
                mov     rcx, r12
                mov     rbx, rax
                call    sub_140245330
                mov     [rsp+0B8h+arg_0], eax
                mov     r12d, eax
                cmp     eax, 5
                jz      loc_140462440
                mov     ebp, 2

loc_1402EDF34:                          ; CODE XREF: MmBuildMdlForNonPagedPool+C4↑j
                                        ; MmBuildMdlForNonPagedPool+174725↓j
                test    bl, 1
                jz      loc_14046252C
                cmp     ebp, 3
                jz      loc_14046244A

loc_1402EDF46:                          ; CODE XREF: MmBuildMdlForNonPagedPool+174733↓j
                mov     rcx, rsi
                call    sub_1402805F0
                mov     [rsp+0B8h+arg_10], rax
                mov     rdi, rax
                mov     rbx, rax
                test    al, 1
                jz      loc_140462511
                lea     rcx, [rsp+0B8h+arg_10]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140462458

loc_1402EDF79:                          ; CODE XREF: MmBuildMdlForNonPagedPool+174742↓j
                                        ; MmBuildMdlForNonPagedPool+1747B0↓j
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                cmp     r12d, 0Ch
                jz      loc_1404624D5
                jmp     loc_1402EE082
; ---------------------------------------------------------------------------

loc_1402EDF99:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1D0↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r8, rax
                ja      loc_1402EDEF6
                jmp     loc_140462324
; ---------------------------------------------------------------------------

loc_1402EDFB4:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1DD↑j
                test    r10d, r10d
                jz      loc_1402EDF09
                mov     [rsp+0B8h+var_50], rbp
                mov     ebp, 4
                mov     [rsp+0B8h+var_60], rbx
                mov     ebx, ebp
                mov     [rsp+0B8h+var_68], r11
                mov     [rsp+0B8h+var_58], rdi
                mov     r13, 0FFFFF6FB7DBED7F8h

loc_1402EDFE2:                          ; CODE XREF: MmBuildMdlForNonPagedPool+2EA↓j
                mov     r8, [rsp+rbx*8+0B8h+var_70]
                dec     rbx
                dec     ebp
                mov     rcx, [r8]
                mov     rax, rdx
                cmp     r8, rax
                jnb     loc_1402EE0A1

loc_1402EDFFB:                          ; CODE XREF: MmBuildMdlForNonPagedPool+387↓j
                                        ; MmBuildMdlForNonPagedPool+17469C↓j ...
                mov     [rsp+0B8h+arg_8], rcx
                test    rbx, rbx
                jz      short loc_1402EE00C
                test    cl, cl
                jns     short loc_1402EDFE2

loc_1402EE00C:                          ; CODE XREF: MmBuildMdlForNonPagedPool+2E6↑j
                lea     rcx, [rsp+0B8h+arg_8]
                call    sub_1402805F0
                mov     r13, [rsp+0B8h+arg_18]
                mov     rdi, rax
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                test    rbx, rbx
                jz      short loc_1402EE06D
                shr     r12, 0Ch
                mov     ecx, 1
                test    ebp, ebp
                jz      short loc_1402EE06D

loc_1402EE047:                          ; CODE XREF: MmBuildMdlForNonPagedPool+341↓j
                mov     rax, r12
                shr     r12, 9
                and     eax, 1FFh
                imul    rax, rcx
                shl     rcx, 9
                add     rdi, rax
                sub     ebp, 1
                jnz     short loc_1402EE047
                mov     rax, 0FFFFFFFFFh

loc_1402EE06D:                          ; CODE XREF: MmBuildMdlForNonPagedPool+318↑j
                                        ; MmBuildMdlForNonPagedPool+325↑j
                mov     rbx, [rsp+0B8h+arg_10]
                mov     ebp, 1
                mov     r12d, [rsp+0B8h+arg_0]

loc_1402EE082:                          ; CODE XREF: MmBuildMdlForNonPagedPool+274↑j
                                        ; MmBuildMdlForNonPagedPool+1747EC↓j
                mov     r9d, 800h
                mov     r10, 0FFFFFA8000000028h
                mov     r11, 7FFFFFFFF8h
                jmp     loc_1402EDDEA
; ---------------------------------------------------------------------------

loc_1402EE0A1:                          ; CODE XREF: MmBuildMdlForNonPagedPool+2D5↑j
                mov     rax, r13
                cmp     r8, rax
                ja      loc_1402EDFFB
                jmp     loc_1404623B2
; ---------------------------------------------------------------------------

loc_1402EE0B2:                          ; CODE XREF: MmBuildMdlForNonPagedPool+10B↑j
                xor     ebp, ebp
                jmp     loc_1402EDE39
; ---------------------------------------------------------------------------

loc_1402EE0B9:                          ; CODE XREF: MmBuildMdlForNonPagedPool+DB↑j
                                        ; MmBuildMdlForNonPagedPool+F6↑j
                or      r8w, r9w
                mov     [r14+0Ah], r8w
                jmp     loc_1402EDE1C
MmBuildMdlForNonPagedPool endp
