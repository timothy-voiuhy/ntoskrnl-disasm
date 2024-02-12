ntoskrnl_7      proc near               ; CODE XREF: KeExpandKernelStackAndCalloutEx+18↑p
                                        ; sub_1402E5B14+5AF↓p ...

var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_37          = byte ptr -37h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404189D0 SIZE 00000040 BYTES
; FUNCTION CHUNK AT 0000000140442AEE SIZE 00000034 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rsi, rdx
                mov     r14, rcx
                mov     rax, [rsp+68h+arg_20]
                mov     [rsp+68h+var_48], rax
                call    sub_14027C800
                cmp     eax, 0C000048Bh
                jnz     short loc_14027C7D3
                mov     r12, cr8
                movzx   r15d, r12b
                mov     [rsp+68h+var_37], r12b
                mov     rbx, gs:188h
                mov     [rsp+68h+var_30], rbx
                mov     eax, [rbx+74h]
                bt      eax, 0Ch
                jb      short loc_14027C7E9
                bts     eax, 0Ch
                mov     [rbx+74h], eax
                xor     dil, dil

loc_14027C788:                          ; CODE XREF: ntoskrnl_7+CC↓j
                mov     [rsp+68h+var_38], dil

loc_14027C78D:                          ; DATA XREF: .rdata:000000014005E35C↑o
                                        ; .rdata:000000014005E36C↑o
;   __try { // __finally(loc_1404189EE)
;     __try { // __except at loc_14027C79A
                mov     rcx, rsi
                mov     rax, r14
                call    sub_1404079D0
                jmp     short loc_14027C7B8
;     } // starts at 14027C78D
; ---------------------------------------------------------------------------

loc_14027C79A:                          ; DATA XREF: .rdata:000000014005E35C↑o
;   __except(loc_1404189D0) // owned by 14027C78D
                mov     rsi, [rsp+68h+arg_8]
                mov     r14, [rsp+68h+arg_0]
                movzx   r15d, [rsp+68h+var_37]
                movzx   edi, [rsp+68h+var_38]
                mov     rbx, [rsp+68h+var_30]
                movzx   r12d, r15b
;   } // starts at 14027C78D

loc_14027C7B8:                          ; CODE XREF: ntoskrnl_7+78↑j
                                        ; DATA XREF: .rdata:000000014005E36C↑o
                test    dil, dil
                jnz     short loc_14027C7C4
                and     dword ptr [rbx+74h], 0FFFFEFFFh

loc_14027C7C4:                          ; CODE XREF: ntoskrnl_7+9B↑j
                mov     rax, cr8
                cmp     al, r15b
                jnz     loc_140442AEE
                xor     eax, eax

loc_14027C7D3:                          ; CODE XREF: ntoskrnl_7+38↑j
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027C7E9:                          ; CODE XREF: ntoskrnl_7+5C↑j
                mov     dil, 1
                jmp     short loc_14027C788
; } // starts at 14027C720
ntoskrnl_7      endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14027C7EE:                         ; DATA XREF: .rdata:000000014005E380↑o
                                        ; .pdata:00000001400CE8B0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027C800   proc near               ; CODE XREF: ntoskrnl_7+2E↑p
                                        ; DATA XREF: .rdata:000000014005E3C4↑o ...

var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = byte ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140442B22 SIZE 00000053 BYTES

                mov     rax, rsp
                push    rbx
                push    rsi
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     r13d, r13d
                mov     esi, r9d
                mov     [rax-38h], r13
                mov     rbx, r8
                mov     [rax-30h], r13
                mov     r14, rdx
                mov     [rax+18h], r13d
                mov     r15, rcx
                cmp     r8, 11800h
                ja      loc_140442B22

loc_14027C837:                          ; DATA XREF: .rdata:000000014005E3C4↑o
                                        ; .rdata:000000014005E3D8↑o ...
                mov     [rax+8], rbp
                mov     [rax+10h], rdi
                mov     rdi, gs:188h
                mov     [rax+20h], r12
                call    sub_1403FDE10
                mov     r12, [rdi+30h]
                mov     rbp, rax
                mov     rcx, [rdi+28h]
                mov     rdi, [rcx+8]
                and     rdi, 0FFFFFFFFFFFFFFFEh
                mov     rcx, cr8
                cmp     cl, 2
                jz      loc_14027C8F9
                ja      loc_140442B2C
                mov     ecx, cs:dword_140CFB038
                cmp     rbx, rcx
                jz      short loc_14027C8F4
                cmp     rbx, 6000h
                jz      loc_140442B4C

loc_14027C88F:                          ; CODE XREF: sub_14027C800+F7↓j
                                        ; sub_14027C800+13A↓j ...
                mov     rax, rbp
                sub     rax, rdi
                cmp     rax, rbx
                jb      short loc_14027C8D4
                test    sil, 1
                jnz     short loc_14027C8D4
                mov     rax, rbp
                sub     rax, r12
                cmp     rax, rbx
                jb      loc_140442B5D

loc_14027C8AF:                          ; CODE XREF: sub_14027C800+1C6370↓j
                mov     eax, 0C000048Bh

loc_14027C8B4:                          ; CODE XREF: sub_14027C800+F2↓j
                                        ; sub_14027C800+14F↓j
                mov     rdi, [rsp+68h+arg_8]
                mov     rbp, [rsp+68h+arg_0]
                mov     r12, [rsp+68h+arg_18]

loc_14027C8C6:                          ; CODE XREF: sub_14027C800+1C6327↓j
                                        ; DATA XREF: .pdata:00000001400CE8C8↑o ...
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14027C8D4:                          ; CODE XREF: sub_14027C800+98↑j
                                        ; sub_14027C800+9E↑j ...
                mov     rax, [rsp+68h+arg_20]
                mov     r9d, esi
                mov     r8, rbx
                mov     [rsp+68h+var_48], rax
                mov     rdx, r14
                mov     rcx, r15
                call    sub_14027C960
                jmp     short loc_14027C8B4
; ---------------------------------------------------------------------------

loc_14027C8F4:                          ; CODE XREF: sub_14027C800+80↑j
                                        ; sub_14027C800+1C6358↓j
                or      esi, 5
                jmp     short loc_14027C88F
; ---------------------------------------------------------------------------

loc_14027C8F9:                          ; CODE XREF: sub_14027C800+6B↑j
                test    sil, 2
                jnz     short loc_14027C94A
                call    sub_1403FDE10
                mov     rcx, rax
                lea     r9, [rsp+68h+var_30]
                lea     r8, [rsp+68h+var_38]
                lea     rdx, [rsp+68h+arg_10]
                call    sub_14024AF20
                test    al, al
                jz      loc_140442B45
                mov     eax, [rsp+68h+arg_10]
                cmp     eax, 1
                jnz     short loc_14027C93F

loc_14027C932:                          ; CODE XREF: sub_14027C800+148↓j
                mov     r12, [rsp+68h+var_38]
                mov     rdi, r12
                jmp     loc_14027C88F
; ---------------------------------------------------------------------------

loc_14027C93F:                          ; CODE XREF: sub_14027C800+130↑j
                cmp     eax, 0Ah
                jnz     loc_14027C88F
                jmp     short loc_14027C932
; ---------------------------------------------------------------------------

loc_14027C94A:                          ; CODE XREF: sub_14027C800+FD↑j
                mov     eax, 0C00000F2h
                jmp     loc_14027C8B4
sub_14027C800   endp

; ---------------------------------------------------------------------------
algn_14027C954:                         ; DATA XREF: .pdata:00000001400CE8E0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027C960   proc near               ; CODE XREF: sub_14027C800+ED↑p
                                        ; DATA XREF: .rdata:000000014005E44C↑o ...

var_78          = qword ptr -78h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140442B76 SIZE 000000EE BYTES

                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                xor     ecx, ecx
                mov     ebx, r9d
                mov     [rsp+98h+var_60], rcx
                mov     r14, r8
                mov     rdi, gs:188h
                xor     bpl, bpl
                mov     r15d, ecx
                mov     [rsp+98h+var_68], rcx
                mov     r13, cr8
                mov     rsi, [rsp+98h+arg_20]
                cmp     r13b, 2
                jz      loc_14027CB65

loc_14027C9B1:                          ; CODE XREF: sub_14027C960+212↓j
                                        ; sub_14027C960+21B↓j
                test    bl, 8
                jnz     loc_140442B76

loc_14027C9BA:                          ; CODE XREF: sub_14027C960+1C6225↓j
                mov     eax, cs:dword_140CFB038
                mov     r12d, ecx
                cmp     r8, rax
                ja      loc_14027CC41
                or      ebx, 4
                mov     r14, rcx

loc_14027C9D2:                          ; CODE XREF: sub_14027C960+2F1↓j
                                        ; sub_14027C960+1C622D↓j ...
                mov     [rsp+98h+arg_18], r15d
                test    bpl, 0F0h
                jnz     loc_14027CB88
                mov     ecx, r12d
                mov     eax, ebx
                or      ecx, 2
                mov     r8, rdi
                and     al, 2
                mov     eax, [rdi+24Ch]
                cmovnz  ecx, r12d
                mov     r12d, ecx
                or      r12d, 10h
                and     ebx, 4
                cmovz   r12d, ecx
                lea     rcx, qword_140CFDCC0
                mov     rax, [rcx+rax*8]
                mov     rcx, [rax+0C0h]
                movzx   edx, byte ptr [rcx+92h]
                mov     ecx, r12d
                call    sub_14027CC90
                or      r15d, 4
                mov     rsi, rax
                test    ebx, ebx
                cmovz   r15d, [rsp+98h+arg_18]
                test    rax, rax
                jz      loc_14027CB80

loc_14027CA45:                          ; CODE XREF: sub_14027C960+299↓j
                                        ; sub_14027C960+2A3↓j ...
                mov     [rsi-30h], rsi
                lea     rbx, [rsi-30h]
                test    bpl, 1
                jnz     loc_14027CC6F
                mov     ecx, cs:dword_140CFB038
                mov     rax, rsi
                sub     rax, rcx
                inc     rax

loc_14027CA66:                          ; CODE XREF: sub_14027C960+316↓j
                mov     [rbx+8], rax
                mov     rax, [rdi+38h]
                mov     [rbx+10h], rax
                mov     rax, [rdi+28h]
                mov     [rbx+28h], rax
                test    r12b, 1
                jnz     loc_14027CC5C

loc_14027CA84:                          ; CODE XREF: sub_14027C960+304↓j
                                        ; sub_14027C960+1C62A4↓j
                mov     eax, [rdi+74h]
                bt      eax, 0Ch
                jnb     loc_14027CB48
                or      bpl, 2
                mov     byte ptr [rsp+98h+arg_18], 2

loc_14027CA9D:                          ; CODE XREF: sub_14027C960+1F7↓j
                xor     r12d, r12d
                mov     [rsp+98h+var_50], r12
                mov     [rsp+98h+var_58], r12
                mov     [rsp+98h+arg_10], r12d
                call    sub_1403FDE10
                mov     rcx, rax
                lea     r9, [rsp+98h+var_58]
                lea     r8, [rsp+98h+var_50]
                lea     rdx, [rsp+98h+arg_10]
                call    sub_14024AF20
                cmp     [rsp+98h+arg_10], 0Ah
                jz      loc_140442C09

loc_14027CADF:                          ; CODE XREF: sub_14027C960+1C62B8↓j
                mov     rdx, [rsp+98h+arg_0]
                mov     r9, r14
                mov     r14, [rsp+98h+arg_8]
                mov     r8, rbx
                mov     rcx, r14
                call    sub_140401CE0
                mov     ebx, eax
                test    r12d, r12d
                jnz     loc_140442C1D

loc_14027CB08:                          ; CODE XREF: sub_14027C960+1C62C6↓j
                test    bpl, 8
                jnz     loc_14027CC0E
                mov     edx, r15d
                mov     rcx, rsi
                call    sub_14027D2A0

loc_14027CB1D:                          ; CODE XREF: sub_14027C960+2DC↓j
                cmp     byte ptr [rsp+98h+arg_18], 0
                jz      short loc_14027CB5C

loc_14027CB27:                          ; CODE XREF: sub_14027C960+203↓j
                mov     rax, cr8
                cmp     al, r13b
                jnz     loc_140442C2B
                mov     eax, ebx

loc_14027CB36:                          ; CODE XREF: sub_14027C960+320↓j
                                        ; sub_14027C960+1C626D↓j
                add     rsp, 58h
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
                align 8

loc_14027CB48:                          ; CODE XREF: sub_14027C960+12B↑j
                bts     eax, 0Ch
                mov     byte ptr [rsp+98h+arg_18], 0
                mov     [rdi+74h], eax
                jmp     loc_14027CA9D
; ---------------------------------------------------------------------------

loc_14027CB5C:                          ; CODE XREF: sub_14027C960+1C5↑j
                and     dword ptr [rdi+74h], 0FFFFEFFFh
                jmp     short loc_14027CB27
; ---------------------------------------------------------------------------

loc_14027CB65:                          ; CODE XREF: sub_14027C960+4B↑j
                lea     rax, [rsp+98h+var_60]
                mov     [rsp+98h+var_68], rax
                test    rsi, rsi
                jz      loc_14027C9B1
                mov     bpl, 10h
                jmp     loc_14027C9B1
; ---------------------------------------------------------------------------

loc_14027CB80:                          ; CODE XREF: sub_14027C960+DF↑j
                mov     rsi, [rsp+98h+arg_20]

loc_14027CB88:                          ; CODE XREF: sub_14027C960+7E↑j
                test    rsi, rsi
                jz      loc_14027CC7B
                test    bpl, 1
                jnz     loc_140442B9E

loc_14027CB9B:                          ; CODE XREF: sub_14027C960+1C6248↓j
                bts     dword ptr [rdi+74h], 0Fh
                jb      loc_140442BAD

loc_14027CBA6:                          ; CODE XREF: sub_14027C960+1C6251↓j
                mov     rax, [rsp+98h+var_68]
                lea     rcx, [rsi+8]
                xor     r9d, r9d
                mov     [rsp+98h+var_78], rax
                xor     r8d, r8d
                lea     edx, [r9+19h]
                call    KeWaitForSingleObject
                cmp     eax, 102h
                jz      loc_140442BB6
                movzx   r8d, byte ptr [rsi+6]
                cmp     r8b, [rsi+5]
                jnb     loc_140442BD2
                mov     rsi, [rsi+r8*8+40h]
                or      bpl, 8
                mov     rax, [rsp+98h+arg_20]
                inc     r8b
                mov     [rax+6], r8b
                test    bpl, 1
                jnz     loc_14027CA45
                cmp     byte ptr [rax+4], 0
                jz      loc_14027CA45
                jmp     loc_140442BEB
; ---------------------------------------------------------------------------

loc_14027CC0E:                          ; CODE XREF: sub_14027C960+1AC↑j
                mov     rax, [rsp+98h+arg_20]
                add     byte ptr [rax+6], 0FFh
                jnz     short loc_14027CC29
                test    bpl, 4
                jnz     short loc_14027CC29
                and     dword ptr [rdi+74h], 0FFFF7FFFh

loc_14027CC29:                          ; CODE XREF: sub_14027C960+2BA↑j
                                        ; sub_14027C960+2C0↑j
                xor     r9d, r9d
                lea     rcx, [rax+8]
                xor     r8d, r8d
                lea     edx, [r9+1]
                call    KeReleaseMutant
                jmp     loc_14027CB1D
; ---------------------------------------------------------------------------

loc_14027CC41:                          ; CODE XREF: sub_14027C960+66↑j
                or      bpl, 1
                mov     r12d, 1
                mov     r15d, r12d
                test    rsi, rsi
                jz      loc_14027C9D2
                jmp     loc_140442B8A
; ---------------------------------------------------------------------------

loc_14027CC5C:                          ; CODE XREF: sub_14027C960+11E↑j
                or      rbx, 1
                test    r12b, 4
                jz      loc_14027CA84
                jmp     loc_140442C00
; ---------------------------------------------------------------------------

loc_14027CC6F:                          ; CODE XREF: sub_14027C960+F1↑j
                lea     rax, [rsi-11FFFh]
                jmp     loc_14027CA66
; ---------------------------------------------------------------------------

loc_14027CC7B:                          ; CODE XREF: sub_14027C960+22B↑j
                                        ; sub_14027C960+1C6242↓j ...
                mov     eax, 0C0000017h
                jmp     loc_14027CB36
sub_14027C960   endp

; ---------------------------------------------------------------------------
algn_14027CC85:                         ; DATA XREF: .rdata:000000014005E44C↑o
                                        ; .pdata:00000001400CE8EC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14027CC90   proc near               ; CODE XREF: sub_14027C960+C5↑p
                                        ; KeUserModeCallback+9F↓p ...

var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140442C64 SIZE 00000396 BYTES

                mov     [rsp+arg_0], ecx
                push    rsi
                push    rdi
                push    r12
                push    r13
                sub     rsp, 78h
                mov     r9d, ecx
                mov     esi, edx
                mov     [rsp+98h+var_50], 0
                lea     r10, unk_140C50C00
                mov     r12d, ecx
                mov     rdi, r10
                and     r9d, 10h
                jnz     loc_14027D038
                test    r8, r8
                jz      loc_14027D26F
                mov     rax, [r8+220h]
                mov     r13, r8
                mov     [rsp+98h+var_48], r8
                movzx   ecx, word ptr [rax+72Eh]
                mov     rax, cs:qword_140C4E4C8
                mov     rdi, [rax+rcx*8]

loc_14027CCED:                          ; CODE XREF: sub_14027CC90+3B7↓j
                                        ; sub_14027CC90+3D6↓j ...
                mov     [rsp+98h+arg_8], rbx
                mov     [rsp+98h+var_28], rbp
                mov     [rsp+98h+var_30], r14
                mov     [rsp+98h+var_38], r15
                test    r12b, 1
                jnz     loc_14027D24B
                movzx   r8d, cs:byte_140C4EA3C
                mov     [rsp+98h+var_60], r8
                mov     [rsp+98h+var_58], r8
                test    r9d, r9d
                jnz     loc_14027D06B
                xor     r14d, r14d

loc_14027CD2C:                          ; CODE XREF: sub_14027CC90+3FA↓j
                                        ; sub_14027CC90+40A↓j ...
                cmp     rdi, r10
                jnz     loc_14027D15B
                mov     eax, 2
                mov     ebp, r14d
                imul    r12, rsi, 0B0h
                lea     rdx, [rax-3]

loc_14027CD48:                          ; CODE XREF: sub_14027CC90+5A6↓j
                mov     rbx, rbp
                shl     rbx, 5
                add     rbx, r12
                add     rbx, cs:qword_140C4DD20
                movzx   r15d, word ptr [rbx]
                test    r15w, r15w
                jz      loc_14027D141
                cmp     rbp, 1
                jz      loc_14027D23B
                mov     rcx, cr8
                mov     [rsp+98h+var_68], rcx
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140442C7C

loc_14027CD8C:                          ; CODE XREF: sub_14027CC90+5B0↓j
                                        ; sub_14027CC90+1C5FEE↓j ...
                mov     rcx, rbx
                call    ExpInterlockedPopEntrySList
                test    rax, rax
                jz      loc_14027D117
                cmp     r15w, 1
                jz      loc_14027D101

loc_14027CDA8:                          ; CODE XREF: sub_14027CC90+475↓j
                                        ; sub_14027CC90+482↓j
                mov     r9, [rax-10h]
                lea     rcx, [rax-0FF0h]
                mov     rax, cs:qword_140C4ED48
                xor     rax, rcx
                cmp     r9, rax
                jnz     loc_140442D22
                shr     rcx, 9
                mov     rsi, 7FFFFFFFF8h
                and     rsi, rcx
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                add     rsi, rax
                mov     rbp, rsi
                shl     rbp, 19h
                mov     rax, rdx
                shl     rax, 19h
                sub     rbp, rax
                add     rbp, 10000000h
                sar     rbp, 10h
                mov     [rsp+98h+var_48], rbp
                cmp     r14d, 1
                jz      loc_14027CF4F
                movzx   eax, cs:byte_140C4EA3C
                lea     rcx, [rsp+98h+var_50]
                shl     rax, 3
                mov     r14, rsi
                sub     r14, rax
                add     r14, 8
                call    sub_1402433C0
                mov     r15d, eax
                mov     r11, 0FFFFF6FB7DBED7F8h
                mov     r10, 0FFFFFFFFFh
                mov     r9, 0FFFFFA8000000000h
                mov     r8, 0FFFFFFFFFFEh
                mov     r12, 0FFFFF6FB7DBED000h
                mov     rbp, 7FFFFFFFFFFFFFFFh

loc_14027CE70:                          ; CODE XREF: sub_14027CC90+299↓j
                mov     rbx, [rsi]
                mov     rax, r12
                cmp     rsi, rax
                jnb     loc_14027D016

loc_14027CE7F:                          ; CODE XREF: sub_14027CC90+38C↓j
                                        ; sub_14027CC90+1C60B4↓j ...
                mov     [rsp+98h+var_50], rbx
                mov     rdx, rbx
                test    r15d, r15d
                jnz     loc_14027CF83

loc_14027CE90:                          ; CODE XREF: sub_14027CC90+2FD↓j
                                        ; sub_14027CC90+31A↓j ...
                shr     rdx, 0Ch
                and     rdx, r10
                lea     rdi, [rdx+rdx*2]
                shl     rdi, 4
                mov     rax, r9
                add     rdi, rax
                mov     [rsp+98h+arg_18], 0
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      loc_140442DD3

loc_14027CEBD:                          ; CODE XREF: sub_14027CC90+1C618A↓j
                mov     rcx, [rsi]
                mov     rax, r12
                cmp     rsi, rax
                jnb     loc_14027D027

loc_14027CECC:                          ; CODE XREF: sub_14027CC90+39D↓j
                                        ; sub_14027CC90+1C6199↓j ...
                cmp     rbx, rcx
                jnz     short loc_14027CF21
                mov     rax, [rdi]
                mov     rcx, r13
                shr     rcx, 3
                xor     rcx, rax
                and     rcx, r8
                xor     rcx, rax
                mov     [rdi], rcx
                test    r13, r13
                jz      short loc_14027CEF5
                test    byte ptr [rdi], 1
                jz      loc_14027D280

loc_14027CEF5:                          ; CODE XREF: sub_14027CC90+25A↑j
                                        ; sub_14027CC90+5FD↓j
                sub     rsi, 8
                mov     r9, 0FFFFFA8000000000h
                mov     r8, 0FFFFFFFFFFEh
                mov     r11, 0FFFFF6FB7DBED7F8h
                mov     r10, 0FFFFFFFFFh

loc_14027CF21:                          ; CODE XREF: sub_14027CC90+23F↑j
                lock and [rdi+18h], rbp
                cmp     rsi, r14
                jnb     loc_14027CE70
                mov     eax, cs:dword_140CFC660
                mov     rbp, [rsp+98h+var_48]
                mov     r14, [rsp+98h+var_68]
                test    eax, eax
                jnz     loc_140442EBA

loc_14027CF47:                          ; CODE XREF: sub_14027CC90+1C622C↓j
                                        ; sub_14027CC90+1C6238↓j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_14027CF4F:                          ; CODE XREF: sub_14027CC90+17C↑j
                                        ; sub_14027CC90+456↓j ...
                mov     eax, dword ptr cs:xmmword_140CFC480+4
                test    al, 1
                jnz     loc_140442FC8

loc_14027CF5D:                          ; CODE XREF: sub_14027CC90+1C6340↓j
                                        ; sub_14027CC90+1C6365↓j
                mov     rax, rbp

loc_14027CF60:                          ; CODE XREF: sub_14027CC90+1C6333↓j
                mov     r15, [rsp+98h+var_38]
                mov     r14, [rsp+98h+var_30]
                mov     rbp, [rsp+98h+var_28]
                mov     rbx, [rsp+98h+arg_8]
                add     rsp, 78h
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
byte_14027CF82  db 0CCh                 ; DATA XREF: .pdata:00000001400CE904↑o
                                        ; .pdata:00000001400CE910↑o
; ---------------------------------------------------------------------------

loc_14027CF83:                          ; CODE XREF: sub_14027CC90+1FA↑j
                                        ; DATA XREF: .pdata:00000001400CE910↑o ...
                test    cs:dword_140CFC400, 0C00000h
                jz      loc_14027CE90
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      loc_14027CE90
                test    bl, 1
                jz      loc_14027CE90
                test    bl, 20h
                jnz     loc_14027D0EB

loc_14027CFC2:                          ; CODE XREF: sub_14027CC90+464↓j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      loc_14027D0F9
                lea     rax, [rsp+98h+var_50]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                test    al, 42h
                jz      loc_14027CE90
                or      rdx, 42h
                jmp     loc_14027CE90
; ---------------------------------------------------------------------------

loc_14027D016:                          ; CODE XREF: sub_14027CC90+1E9↑j
                mov     rax, r11
                cmp     rsi, rax
                ja      loc_14027CE7F
                jmp     loc_140442D3A
; ---------------------------------------------------------------------------

loc_14027D027:                          ; CODE XREF: sub_14027CC90+236↑j
                mov     rax, r11
                cmp     rsi, rax
                ja      loc_14027CECC
                jmp     loc_140442E1F
; ---------------------------------------------------------------------------

loc_14027D038:                          ; CODE XREF: sub_14027CC90+2D↑j
                                        ; DATA XREF: .pdata:00000001400CE91C↑o ...
                mov     r13, 0FFFFFFFFFFFFFFE0h
                mov     [rsp+98h+var_48], r13
                test    r8, r8
                jz      loc_14027CCED
                mov     rax, [r8+220h]
                movzx   ecx, word ptr [rax+72Eh]
                mov     rax, cs:qword_140C4E4C8
                mov     rdi, [rax+rcx*8]
                jmp     loc_14027CCED
; ---------------------------------------------------------------------------

loc_14027D06B:                          ; CODE XREF: sub_14027CC90+93↑j
                                        ; DATA XREF: .pdata:00000001400CE928↑o ...
                mov     rdx, gs:20h
                mov     r14d, 1
                mov     rax, [rdx+0C0h]
                movzx   ecx, word ptr [rax+92h]
                cmp     ecx, esi
                jnz     loc_14027CD2C
                mov     rax, [rdx+7F08h]
                test    rax, rax
                jz      loc_14027CD2C
                xor     eax, eax
                xchg    rax, [rdx+7F08h]
                test    rax, rax
                jz      loc_14027CD2C
                mov     r9, [rax-10h]
                lea     rbp, [rax-0FF0h]
                mov     rax, cs:qword_140C4ED48
                xor     rax, rbp
                cmp     r9, rax
                jnz     loc_140442C64
                and     rbp, 0FFFFFFFFFFFFF000h
                shl     rbp, 10h
                add     rbp, 10000000h
                sar     rbp, 10h
                jmp     loc_14027CF4F
; ---------------------------------------------------------------------------

loc_14027D0EB:                          ; CODE XREF: sub_14027CC90+32C↑j
                test    bl, 42h
                jnz     loc_14027CE90
                jmp     loc_14027CFC2
; ---------------------------------------------------------------------------

loc_14027D0F9:                          ; CODE XREF: sub_14027CC90+34C↑j
                mov     rdx, rbx
                jmp     loc_14027CE90
; ---------------------------------------------------------------------------

loc_14027D101:                          ; CODE XREF: sub_14027CC90+112↑j
                cmp     dword ptr [rbx+1Ch], 0
                jnz     loc_14027CDA8
                mov     dword ptr [rbx+1Ch], 1
                jmp     loc_14027CDA8
; ---------------------------------------------------------------------------

loc_14027D117:                          ; CODE XREF: sub_14027CC90+107↑j
                cmp     rbp, 1
                jz      short loc_14027D138
                mov     eax, cs:dword_140CFC660
                mov     r14, [rsp+98h+var_68]
                test    eax, eax
                jnz     loc_140442CB8

loc_14027D130:                          ; CODE XREF: sub_14027CC90+1C602A↓j
                                        ; sub_14027CC90+1C6036↓j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_14027D138:                          ; CODE XREF: sub_14027CC90+48B↑j
                mov     eax, 2
                lea     rdx, [rax-3]

loc_14027D141:                          ; CODE XREF: sub_14027CC90+D1↑j
                inc     dword ptr [rbx+14h]
                cmp     rbp, 1
                jz      loc_14027D231
                mov     r12d, [rsp+98h+arg_0]
                mov     r8, [rsp+98h+var_60]

loc_14027D15B:                          ; CODE XREF: sub_14027CC90+9F↑j
                                        ; sub_14027CC90+5DA↓j
                mov     ebx, r8d
                mov     rcx, rdi
                mov     r8d, r12d
                mov     edx, ebx
                shr     r8d, 1
                and     r8d, 1
                call    sub_140232160
                test    eax, eax
                jz      loc_140442FC1
                mov     r15, [rsp+98h+var_60]
                lea     rcx, unk_140C4E9D8
                lea     edx, [r15+1]
                call    sub_1402583E0
                mov     r14, rax
                test    rax, rax
                jz      loc_140442FB6
                lea     rbp, [rbx+1]
                mov     rdx, 0FFFFF68000000000h
                shl     rbp, 1Ch
                mov     rax, rdx
                shl     rax, 19h
                mov     r13, r14
                sub     rbp, rax
                mov     rax, r14
                shl     rax, 19h
                add     rbp, rax
                mov     eax, r12d
                and     al, 5
                sar     rbp, 10h
                cmp     al, 1
                jz      short loc_14027D245

loc_14027D1D1:                          ; CODE XREF: sub_14027CC90+5B9↓j
                mov     rdx, [rsp+98h+var_58]
                xor     r8d, r8d
                mov     rcx, rdi
                call    sub_1402D4174
                test    eax, eax
                jz      loc_140442FA3
                mov     r9, [rsp+98h+var_48]
                lea     rdx, [r13+8]
                mov     [rsp+98h+var_70], r12d
                mov     rcx, rdi
                mov     dword ptr [rsp+98h+var_78], esi
                mov     rsi, [rsp+98h+var_58]
                mov     r8, rsi
                call    sub_1402C6E90
                test    eax, eax
                lea     rax, unk_140C50C00
                jz      loc_140442F24
                cmp     rdi, rax
                jnz     loc_14027CF4F
                lock xadd cs:qword_140C4EE48, rbx
                jmp     loc_14027CF4F
; ---------------------------------------------------------------------------

loc_14027D231:                          ; CODE XREF: sub_14027CC90+4B8↑j
                xor     r14d, r14d
                xor     ebp, ebp
                jmp     loc_14027CD48
; ---------------------------------------------------------------------------

loc_14027D23B:                          ; CODE XREF: sub_14027CC90+DB↑j
                mov     byte ptr [rsp+98h+var_68], 11h
                jmp     loc_14027CD8C
; ---------------------------------------------------------------------------

loc_14027D245:                          ; CODE XREF: sub_14027CC90+53F↑j
                lea     r13, [r14+60h]
                jmp     short loc_14027D1D1
; ---------------------------------------------------------------------------

loc_14027D24B:                          ; CODE XREF: sub_14027CC90+78↑j
                mov     r8d, 12h
                test    r12b, 4
                mov     eax, r8d
                mov     [rsp+98h+var_60], r8
                mov     ecx, 6
                cmovz   eax, ecx
                mov     [rsp+98h+var_58], rax
                jmp     loc_14027D15B
; ---------------------------------------------------------------------------

loc_14027D26F:                          ; CODE XREF: sub_14027CC90+36↑j
                                        ; DATA XREF: .pdata:00000001400CE934↑o ...
                mov     r13, 0FFFFFFFFFFFFFFF0h
                mov     [rsp+98h+var_48], r13
                jmp     loc_14027CCED
; ---------------------------------------------------------------------------

loc_14027D280:                          ; CODE XREF: sub_14027CC90+25F↑j
                                        ; DATA XREF: .pdata:00000001400CE940↑o ...
                mov     edx, 1
                mov     rcx, rdi
                call    sub_1403032A8
                jmp     loc_14027CEF5
sub_14027CC90   endp

; ---------------------------------------------------------------------------
algn_14027D292:                         ; DATA XREF: .pdata:00000001400CE94C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027D2A0   proc near               ; CODE XREF: sub_14027C960+1B8↑p
                                        ; sub_140356280+C↓p ...

var_98          = qword ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     [rsp+arg_8], edx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                mov     eax, dword ptr cs:xmmword_140CFC480+4
                xor     r12d, r12d
                mov     [rsp+0B8h+var_88], r12
                mov     esi, edx
                mov     rbx, rcx
                test    al, 1
                jz      short loc_14027D2F5
                test    sil, 2
                jz      short loc_14027D2F5
                lea     edx, [r12+12h]
                test    sil, 1
                jnz     short loc_14027D2E3
                movzx   edx, cs:byte_140C4EA3C

loc_14027D2E3:                          ; CODE XREF: sub_14027D2A0+3A↑j
                mov     r8d, edx
                shl     r8d, 0Ch
                sub     rcx, r8
                xor     r8d, r8d
                call    sub_140546D10

loc_14027D2F5:                          ; CODE XREF: sub_14027D2A0+29↑j
                                        ; sub_14027D2A0+2F↑j
                shr     rbx, 9
                mov     rax, 7FFFFFFFF8h
                and     rbx, rax
                mov     r12, 0FFFFF68000000000h
                mov     rax, r12
                lea     r14, [rax-8]
                mov     r15, 0FFFFF6FB7DBED000h
                add     r14, rbx
                mov     [rsp+0B8h+var_60], r14
                mov     rdi, [r14]
                mov     rbx, rdi
                mov     rax, r15
                mov     rbp, 0FFFFF6FB7DBED7F8h
                cmp     r14, rax
                jb      short loc_14027D3BF
                mov     rax, rbp
                cmp     r14, rax
                ja      short loc_14027D3BF
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14027D3BF
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14027D3BF
                test    bl, 1
                jz      short loc_14027D3BF
                test    bl, 20h
                jz      short loc_14027D37D
                test    bl, 42h
                jnz     short loc_14027D3BF

loc_14027D37D:                          ; CODE XREF: sub_14027D2A0+D6↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027D3BF
                or      rbx, 20h
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   rbx, rdi
                test    al, 42h
                jz      short loc_14027D3BF
                or      rbx, 42h

loc_14027D3BF:                          ; CODE XREF: sub_14027D2A0+9F↑j
                                        ; sub_14027D2A0+A7↑j ...
                lea     rcx, [rsp+0B8h+var_70]
                mov     [rsp+0B8h+var_70], rbx
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027D450
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14027D450
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14027D450
                test    bl, 1
                jz      short loc_14027D450
                test    bl, 20h
                jz      short loc_14027D406
                test    bl, 42h
                jnz     short loc_14027D450

loc_14027D406:                          ; CODE XREF: sub_14027D2A0+15F↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027D450
                lea     rax, [rsp+0B8h+var_70]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14027D450
                or      rbx, 42h

loc_14027D450:                          ; CODE XREF: sub_14027D2A0+130↑j
                                        ; sub_14027D2A0+13C↑j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                mov     r13, 0FFFFFA8000000000h
                lea     rcx, [rbx+rbx*2]
                add     rcx, rcx
                mov     rax, r13
                mov     rcx, [rax+rcx*8+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rcx, [rax+rcx*8]
                lea     rax, unk_140C50C00
                cmp     rcx, rax
                jnz     loc_14027DE6E
                test    sil, 1
                jnz     loc_14027DE6E
                mov     rax, r15
                cmp     r14, rax
                jb      loc_14027D53C
                mov     rax, rbp
                cmp     r14, rax
                ja      short loc_14027D53C
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14027D53C
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14027D53C
                test    dil, 1
                jz      short loc_14027D53C
                test    dil, 20h
                jz      short loc_14027D4F4
                test    dil, 42h
                jnz     short loc_14027D53C

loc_14027D4F4:                          ; CODE XREF: sub_14027D2A0+24C↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027D53C
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rdi
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rdi
                mov     rdi, rdx
                test    al, 42h
                jz      short loc_14027D53C
                or      rdi, 42h

loc_14027D53C:                          ; CODE XREF: sub_14027D2A0+20F↑j
                                        ; sub_14027D2A0+21B↑j ...
                lea     rcx, [rsp+0B8h+var_68]
                mov     [rsp+0B8h+var_68], rdi
                call    sub_1402433C0
                test    eax, eax
                jz      loc_14027D5D4
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14027D5D4
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14027D5D4
                test    dil, 1
                jz      short loc_14027D5D4
                test    dil, 20h
                jz      short loc_14027D58A
                test    dil, 42h
                jnz     short loc_14027D5D4

loc_14027D58A:                          ; CODE XREF: sub_14027D2A0+2E2↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027D5D4
                lea     rax, [rsp+0B8h+var_68]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rdi
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rdi
                mov     rdi, rdx
                test    al, 42h
                jz      short loc_14027D5D4
                or      rdi, 42h

loc_14027D5D4:                          ; CODE XREF: sub_14027D2A0+2AD↑j
                                        ; sub_14027D2A0+2BD↑j ...
                shr     rdi, 0Ch
                mov     rbp, 0FFFFFFFFFh
                and     rdi, rbp
                lea     rcx, [rdi+rdi*2]
                shl     rcx, 4
                mov     rax, r13
                add     rcx, rax
                mov     rax, r13
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                sar     rdx, 3
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rcx, rdx
                call    sub_14027DEC0
                xor     r10d, r10d
                mov     ecx, r10d
                mov     [rsp+0B8h+var_78], rcx
                mov     ebx, [rax+8]
                mov     dword ptr [rsp+0B8h+arg_10], ebx
                lea     r8d, [r10+2]
                lea     r15, [r10-1]
                test    sil, 4
                jz      loc_14027D939
                lea     rcx, [rsp+0B8h+var_88]
                call    sub_1402433C0
                mov     esi, eax
                xor     r12d, r12d
                mov     rbx, 7FFFFFFFFFFFFFFFh
                nop     dword ptr [rax+00000000h]

loc_14027D660:                          ; CODE XREF: sub_14027D2A0+56B↓j
                mov     rcx, r14
                call    sub_1402805F0
                mov     [rsp+0B8h+var_88], rax
                mov     r8, rax
                test    esi, esi
                jz      loc_14027D6FA
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14027D6FA
                mov     rcx, gs:188h
                mov     rdx, [rcx+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_14027D6FA
                test    r8b, 1
                jz      short loc_14027D6FA
                mov     rdx, rax
                test    r8b, 20h
                jz      short loc_14027D6B2
                test    r8b, 42h
                jnz     short loc_14027D6FA

loc_14027D6B2:                          ; CODE XREF: sub_14027D2A0+40A↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r9, [rcx+788h]
                test    r9, r9
                jnz     short loc_14027D6D5
                mov     r8, [rsp+0B8h+var_88]
                jmp     short loc_14027D6FA
; ---------------------------------------------------------------------------

loc_14027D6D5:                          ; CODE XREF: sub_14027D2A0+42C↑j
                lea     rax, [rsp+0B8h+var_88]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r9+rax*8]
                test    al, 20h
                jz      short loc_14027D6F2
                mov     r8, rdx
                or      r8, 20h

loc_14027D6F2:                          ; CODE XREF: sub_14027D2A0+449↑j
                test    al, 42h
                jz      short loc_14027D6FA
                or      r8, 42h

loc_14027D6FA:                          ; CODE XREF: sub_14027D2A0+3D2↑j
                                        ; sub_14027D2A0+3E2↑j ...
                shr     r8, 0Ch
                and     r8, rbp
                lea     rdi, [r8+r8*2]
                shl     rdi, 4
                mov     rax, r13
                add     rdi, rax
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027D75A
                test    al, 1
                jz      short loc_14027D75A
                cmp     bpl, 0Fh
                ja      short loc_14027D75A
                mov     rax, gs:20h
                mov     rdx, r15
                movzx   ecx, bpl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14027D75A:                          ; CODE XREF: sub_14027D2A0+484↑j
                                        ; sub_14027D2A0+488↑j ...
                mov     [rsp+0B8h+arg_0], r12d
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_14027D78F
                nop     dword ptr [rax+rax+00h]

loc_14027D770:                          ; CODE XREF: sub_14027D2A0+4E4↓j
                                        ; sub_14027D2A0+4ED↓j
                lea     rcx, [rsp+0B8h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_14027D770
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_14027D770

loc_14027D78F:                          ; CODE XREF: sub_14027D2A0+4C9↑j
                mov     rcx, r14
                call    sub_1402805F0
                cmp     [rsp+0B8h+var_88], rax
                jz      short loc_14027D810
                lock and [rdi+18h], rbx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027D7F9
                test    al, 1
                jz      short loc_14027D7F9
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027D7F9
                cmp     bpl, 0Fh
                ja      short loc_14027D7F9
                cmp     al, 2
                jb      short loc_14027D7F9
                mov     r10, gs:20h
                mov     rdx, r15
                movzx   ecx, bpl
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14027D7F9
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14027D7F9:                          ; CODE XREF: sub_14027D2A0+50B↑j
                                        ; sub_14027D2A0+50F↑j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     rbp, 0FFFFFFFFFh
                jmp     loc_14027D660
; ---------------------------------------------------------------------------

loc_14027D810:                          ; CODE XREF: sub_14027D2A0+4FC↑j
                mov     rsi, [rdi]
                mov     rax, 0FFFFFFFFFFEh
                test    rax, rsi
                jnz     short loc_14027D827
                mov     rsi, r12
                jmp     short loc_14027D83C
; ---------------------------------------------------------------------------

loc_14027D827:                          ; CODE XREF: sub_14027D2A0+580↑j
                and     rsi, 0FFFFFFFFFFFFFFFEh
                mov     rax, 0FFFFF00000000000h
                or      rsi, rax
                shl     rsi, 3

loc_14027D83C:                          ; CODE XREF: sub_14027D2A0+585↑j
                mov     rax, rbx
                lock and [rdi+18h], rax
                mov     eax, cs:dword_140CFC660
                mov     ebx, dword ptr [rsp+0B8h+arg_10]
                test    eax, eax
                jz      short loc_14027D8A1
                test    al, 1
                jz      short loc_14027D8A1
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027D8A1
                cmp     bpl, 0Fh
                ja      short loc_14027D8A1
                cmp     al, 2
                jb      short loc_14027D8A1
                mov     r10, gs:20h
                mov     rdx, r15
                movzx   ecx, bpl
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14027D8A1
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14027D8A1:                          ; CODE XREF: sub_14027D2A0+5B3↑j
                                        ; sub_14027D2A0+5B7↑j ...
                movzx   eax, bpl
                mov     cr8, rax
                xor     r10d, r10d
                mov     r12, 0FFFFF68000000000h
                mov     ecx, r10d
                mov     [rsp+0B8h+var_78], rcx
                cmp     rsi, 0FFFFFFFFFFFFFFE0h
                jnz     short loc_14027D933
                mov     rdx, gs:20h
                mov     rax, [rdx+0C0h]
                movzx   ecx, word ptr [rax+92h]
                cmp     ecx, ebx
                jnz     short loc_14027D929
                mov     rax, [rdx+7F08h]
                test    rax, rax
                jnz     short loc_14027D929
                mov     rcx, r14
                shl     rcx, 19h
                mov     rax, r12
                shl     rax, 19h
                sub     rcx, rax
                mov     rax, cs:qword_140C4ED48
                sar     rcx, 10h
                xor     rax, rcx
                mov     [rcx+0FE0h], rax
                add     rcx, 0FF0h
                xor     eax, eax
                lock cmpxchg [rdx+7F08h], rcx
                jz      loc_14027DE78

loc_14027D929:                          ; CODE XREF: sub_14027D2A0+63D↑j
                                        ; sub_14027D2A0+649↑j
                mov     ecx, 1
                mov     [rsp+0B8h+var_78], rcx

loc_14027D933:                          ; CODE XREF: sub_14027D2A0+622↑j
                mov     r8d, 2

loc_14027D939:                          ; CODE XREF: sub_14027D2A0+39A↑j
                mov     eax, ebx
                imul    rax, 0B0h
                mov     [rsp+0B8h+var_58], rax
                nop     word ptr [rax+rax+00000000h]

loc_14027D950:                          ; CODE XREF: sub_14027D2A0+B3F↓j
                mov     r15, rcx
                shl     r15, 5
                add     r15, rax
                add     r15, cs:qword_140C4DD20
                movzx   eax, word ptr [r15]
                cmp     eax, [r15+10h]
                jge     loc_14027DDB7
                mov     r13, r14
                shl     r13, 19h
                mov     rax, r12
                shl     rax, 19h
                sub     r13, rax
                mov     rax, cs:qword_140C4ED48
                sar     r13, 10h
                xor     rax, r13
                mov     [r13+0FE0h], rax
                cmp     rcx, 1
                jz      loc_14027DE56
                mov     r12, cr8
                mov     cr8, r8
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027D9E9
                test    al, 1
                jz      short loc_14027D9E9
                cmp     r12b, 0Fh
                ja      short loc_14027D9E9
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r12b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14027D9E9:                          ; CODE XREF: sub_14027D2A0+70F↑j
                                        ; sub_14027D2A0+713↑j ...
                movzx   ecx, cs:byte_140C4EA3C
                mov     ebp, 1
                mov     eax, ecx
                mov     [rsp+0B8h+var_80], r10
                shl     rax, 3
                mov     edi, 0FFFFFFFFh
                sub     r14, rax
                lea     eax, [rcx+1]
                lea     rax, [r14+rax*8]
                add     r14, 8
                mov     [rsp+0B8h+arg_10], rax
                cmp     r14, rax
                jnb     loc_14027DDE4
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_14027DA30:                          ; CODE XREF: sub_14027D2A0+A9C↓j
                mov     rbx, [r14]
                mov     rcx, 0FFFFF6FB7DBED000h
                mov     rax, rcx
                mov     r8, 0FFFFF6FB7DBED7F8h
                cmp     r14, rax
                jb      short loc_14027DAC1
                mov     rax, r8
                cmp     r14, rax
                ja      short loc_14027DAC1
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027DAB7
                test    bl, 1
                jz      short loc_14027DAB7
                test    bl, 20h
                jz      short loc_14027DA6F
                test    bl, 42h
                jnz     short loc_14027DAB7

loc_14027DA6F:                          ; CODE XREF: sub_14027D2A0+7C8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027DAB7
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14027DAB7
                or      rbx, 42h

loc_14027DAB7:                          ; CODE XREF: sub_14027D2A0+7BE↑j
                                        ; sub_14027D2A0+7C3↑j ...
                mov     rcx, 0FFFFF6FB7DBED000h

loc_14027DAC1:                          ; CODE XREF: sub_14027D2A0+7AD↑j
                                        ; sub_14027D2A0+7B5↑j
                mov     [rsp+0B8h+var_80], rbx
                test    bl, 1
                jnz     short loc_14027DAD4
                add     r14, 8
                jmp     loc_14027DD34
; ---------------------------------------------------------------------------

loc_14027DAD4:                          ; CODE XREF: sub_14027D2A0+829↑j
                mov     rdx, rbx
                mov     rax, rcx
                lea     rcx, [rsp+0B8h+var_80]
                cmp     rcx, rax
                jb      short loc_14027DB50
                mov     rax, r8
                lea     rcx, [rsp+0B8h+var_80]
                cmp     rcx, rax
                ja      short loc_14027DB50
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027DB50
                test    bl, 20h
                jz      short loc_14027DB04
                test    bl, 42h
                jnz     short loc_14027DB50

loc_14027DB04:                          ; CODE XREF: sub_14027D2A0+85D↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jnz     short loc_14027DB25
                mov     rdx, rbx
                jmp     short loc_14027DB50
; ---------------------------------------------------------------------------

loc_14027DB25:                          ; CODE XREF: sub_14027D2A0+87E↑j
                lea     rax, [rsp+0B8h+var_80]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                test    al, 42h
                jz      short loc_14027DB50
                or      rdx, 42h

loc_14027DB50:                          ; CODE XREF: sub_14027D2A0+842↑j
                                        ; sub_14027D2A0+84F↑j ...
                shr     rdx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                mov     r9, 0FFFFFA8000000000h
                lea     rsi, [rdx+rdx*2]
                shl     rsi, 4
                mov     rax, r9
                add     rsi, rax
                mov     [rsp+0B8h+arg_18], r10d
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jnb     short loc_14027DBBC
                nop     word ptr [rax+rax+00h]

loc_14027DB90:                          ; CODE XREF: sub_14027D2A0+904↓j
                                        ; sub_14027D2A0+90D↓j
                lea     rcx, [rsp+0B8h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rsi+18h]
                test    rax, rax
                js      short loc_14027DB90
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jb      short loc_14027DB90
                xor     r10d, r10d
                mov     r9, 0FFFFFA8000000000h

loc_14027DBBC:                          ; CODE XREF: sub_14027D2A0+8E8↑j
                mov     rdx, [r14]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r14, rax
                jb      short loc_14027DC43
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r14, rax
                ja      short loc_14027DC43
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027DC43
                test    dl, 1
                jz      short loc_14027DC43
                test    dl, 20h
                jz      short loc_14027DBFB
                test    dl, 42h
                jnz     short loc_14027DC43

loc_14027DBFB:                          ; CODE XREF: sub_14027D2A0+954↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14027DC43
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14027DC43
                or      rdx, 42h

loc_14027DC43:                          ; CODE XREF: sub_14027D2A0+92F↑j
                                        ; sub_14027D2A0+941↑j ...
                cmp     rbx, rdx
                jnz     loc_14027DD25
                mov     rax, r9
                mov     rcx, rsi
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                mov     r8, rdx
                sar     r8, 3
                mov     rax, r8
                shr     rax, 3Fh
                add     r8, rax
                cmp     edi, 0FFFFFFFFh
                jnz     short loc_14027DC8B
                mov     rcx, r8
                call    sub_14027DEC0
                xor     r10d, r10d
                mov     edi, [rax+8]
                jmp     loc_14027DD0E
; ---------------------------------------------------------------------------

loc_14027DC8B:                          ; CODE XREF: sub_14027D2A0+9D6↑j
                movsxd  rax, cs:dword_140C4DD04
                mov     ecx, cs:dword_140C4DD08
                cmp     eax, ecx
                ja      short loc_14027DCB9
                mov     r9, rax
                shl     r9, 4
                add     r9, cs:qword_140C4DD48
                cmp     r8, [r9]
                jb      short loc_14027DCB9
                cmp     eax, ecx
                jz      short loc_14027DD06
                cmp     r8, [r9+10h]
                jb      short loc_14027DD06

loc_14027DCB9:                          ; CODE XREF: sub_14027D2A0+9FA↑j
                                        ; sub_14027D2A0+A0D↑j
                mov     edx, r10d
                nop     dword ptr [rax+00h]

loc_14027DCC0:                          ; CODE XREF: sub_14027D2A0+A4B↓j
                                        ; sub_14027D2A0+A5E↓j
                cmp     ecx, edx
                jl      loc_14027DE9F
                lea     eax, [rdx+rcx]
                sar     eax, 1
                movsxd  r9, eax
                shl     r9, 4
                add     r9, cs:qword_140C4DD48
                cmp     r8, [r9]
                jnb     short loc_14027DCED
                test    eax, eax
                jz      loc_14027DE8A
                lea     ecx, [rax-1]
                jmp     short loc_14027DCC0
; ---------------------------------------------------------------------------

loc_14027DCED:                          ; CODE XREF: sub_14027D2A0+A3E↑j
                cmp     eax, cs:dword_140C4DD08
                jz      short loc_14027DD00
                cmp     r8, [r9+10h]
                jb      short loc_14027DD00
                lea     edx, [rax+1]
                jmp     short loc_14027DCC0
; ---------------------------------------------------------------------------

loc_14027DD00:                          ; CODE XREF: sub_14027D2A0+A53↑j
                                        ; sub_14027D2A0+A59↑j
                mov     cs:dword_140C4DD04, eax

loc_14027DD06:                          ; CODE XREF: sub_14027D2A0+A11↑j
                                        ; sub_14027D2A0+A17↑j
                cmp     edi, [r9+8]
                cmovnz  ebp, r10d

loc_14027DD0E:                          ; CODE XREF: sub_14027D2A0+9E6↑j
                mov     rax, [rsi]
                mov     rcx, 0FFFFF00000000001h
                and     rax, rcx
                mov     [rsi], rax
                add     r14, 8

loc_14027DD25:                          ; CODE XREF: sub_14027D2A0+9A6↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rsi+18h], rax

loc_14027DD34:                          ; CODE XREF: sub_14027D2A0+82F↑j
                cmp     r14, [rsp+0B8h+arg_10]
                jb      loc_14027DA30
                cmp     ebp, 1
                jz      loc_14027DDE4
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027DDA5
                test    al, 1
                jz      short loc_14027DDA5
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027DDA5
                cmp     r12b, 0Fh
                ja      short loc_14027DDA5
                cmp     al, 2
                jb      short loc_14027DDA5
                mov     r10, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r12b
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14027DDA5
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14027DDA5:                          ; CODE XREF: sub_14027D2A0+AB3↑j
                                        ; sub_14027D2A0+AB7↑j ...
                movzx   eax, r12b
                mov     cr8, rax
                mov     rcx, [rsp+0B8h+var_78]
                mov     r14, [rsp+0B8h+var_60]

loc_14027DDB7:                          ; CODE XREF: sub_14027D2A0+6C9↑j
                cmp     rcx, 1
                jnz     loc_14027DE67
                mov     rax, [rsp+0B8h+var_58]
                xor     r10d, r10d
                mov     ecx, r10d
                mov     r12, 0FFFFF68000000000h
                mov     [rsp+0B8h+var_78], rcx
                lea     r8d, [r10+2]
                jmp     loc_14027D950
; ---------------------------------------------------------------------------

loc_14027DDE4:                          ; CODE XREF: sub_14027D2A0+77E↑j
                                        ; sub_14027D2A0+AA5↑j
                lea     rdx, [r13+0FF0h]
                mov     rcx, r15
                call    ExpInterlockedPushEntrySList
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027DE4C
                test    al, 1
                jz      short loc_14027DE4C
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027DE4C
                cmp     r12b, 0Fh
                ja      short loc_14027DE4C
                cmp     al, 2
                jb      short loc_14027DE4C
                mov     r9, gs:20h
                mov     rax, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, r12b
                inc     ecx
                shl     rax, cl
                mov     r8, [r9+84B8h]
                movzx   eax, ax
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14027DE4C
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14027DE4C:                          ; CODE XREF: sub_14027D2A0+B5B↑j
                                        ; sub_14027D2A0+B5F↑j ...
                movzx   eax, r12b
                mov     cr8, rax
                jmp     short loc_14027DE78
; ---------------------------------------------------------------------------

loc_14027DE56:                          ; CODE XREF: sub_14027D2A0+6F9↑j
                lea     rdx, [r13+0FF0h]
                mov     rcx, r15
                call    ExpInterlockedPushEntrySList
                jmp     short loc_14027DE78
; ---------------------------------------------------------------------------

loc_14027DE67:                          ; CODE XREF: sub_14027D2A0+B1B↑j
                mov     esi, [rsp+0B8h+arg_8]

loc_14027DE6E:                          ; CODE XREF: sub_14027D2A0+1F9↑j
                                        ; sub_14027D2A0+203↑j
                mov     edx, esi
                mov     rcx, r14
                call    sub_140213C50

loc_14027DE78:                          ; CODE XREF: sub_14027D2A0+683↑j
                                        ; sub_14027D2A0+BB4↑j ...
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

loc_14027DE8A:                          ; CODE XREF: sub_14027D2A0+A42↑j
                mov     edx, 6200h
                mov     [rsp+0B8h+var_98], r10
                mov     ecx, 1Ah
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14027DE9F:                          ; CODE XREF: sub_14027D2A0+A22↑j
                xor     r9d, r9d
                mov     [rsp+0B8h+var_98], r10
                mov     edx, 6201h
                lea     ecx, [r9+1Ah]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027D2A0   endp

algn_14027DEB6:                         ; DATA XREF: .pdata:00000001400CE958↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027DEC0   proc near               ; CODE XREF: sub_14022FC80+195↑p
                                        ; sub_14022FC80+1FA↑p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140442FFA SIZE 0000004A BYTES

                sub     rsp, 38h
                movsxd  rdx, cs:dword_140C4DD04
                mov     r8d, cs:dword_140C4DD08
                cmp     edx, r8d
                ja      short loc_14027DEFB
                mov     rax, rdx
                shl     rax, 4
                add     rax, cs:qword_140C4DD48
                cmp     rcx, [rax]
                jb      short loc_14027DEFB
                cmp     edx, r8d
                jnz     short loc_14027DEF5

loc_14027DEEF:                          ; CODE XREF: sub_14027DEC0+39↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027DEF5:                          ; CODE XREF: sub_14027DEC0+2D↑j
                cmp     rcx, [rax+10h]
                jb      short loc_14027DEEF

loc_14027DEFB:                          ; CODE XREF: sub_14027DEC0+15↑j
                                        ; sub_14027DEC0+28↑j
                xor     r9d, r9d
                test    r8d, r8d
                js      loc_140443026

loc_14027DF07:                          ; CODE XREF: sub_14027DEC0+85↓j
                lea     edx, [r9+r8]
                sar     edx, 1
                movsxd  rax, edx
                shl     rax, 4
                add     rax, cs:qword_140C4DD48
                cmp     rcx, [rax]
                jb      loc_140442FFA
                cmp     edx, cs:dword_140C4DD08
                jz      short loc_14027DF32
                cmp     rcx, [rax+10h]
                jnb     short loc_14027DF3E

loc_14027DF32:                          ; CODE XREF: sub_14027DEC0+6A↑j
                mov     cs:dword_140C4DD04, edx
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14027DF3E:                          ; CODE XREF: sub_14027DEC0+70↑j
                lea     r9d, [rdx+1]

loc_14027DF42:                          ; CODE XREF: sub_14027DEC0+1C5142↓j
                cmp     r8d, r9d
                jge     short loc_14027DF07
                jmp     loc_140443026
sub_14027DEC0   endp

; ---------------------------------------------------------------------------
algn_14027DF4C:                         ; DATA XREF: .rdata:000000014005E5BC↑o
                                        ; .pdata:00000001400CE964↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14027DF60   proc near               ; CODE XREF: sub_1402947A0+537↓p
                                        ; DATA XREF: .pdata:00000001400CE970↑o

var_B0          = qword ptr -0B0h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_38], rax
                xor     eax, eax
                mov     r15, rcx
                mov     [rbp+57h+var_50], rax
                mov     rsi, 0FFFFFFFFFFFFFFFFh
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_A0], rsi
                movups  [rbp+57h+var_60], xmm0
                mov     rax, gs:188h
                mov     rbx, r15
                shr     rbx, 9
                mov     r12, rdx
                mov     r13, rsi
                mov     rax, [rax+0B8h]
                mov     [rbp+57h+var_68], rax
                movzx   ecx, word ptr [rax+72Eh]
                mov     rax, cs:qword_140C4E4C8
                mov     rax, [rax+rcx*8]
                mov     rcx, 7FFFFFFFF8h
                and     rbx, rcx
                mov     [rbp+57h+var_80], rax
                mov     rcx, 0FFFFF68000000000h
                add     rbx, rcx
                mov     rcx, rbx
                mov     r14, [rbx]
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027E068
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027E068
                test    r14b, 1
                jz      short loc_14027E068
                test    r14b, 20h
                jz      short loc_14027E020
                test    r14b, 42h
                jnz     short loc_14027E068

loc_14027E020:                          ; CODE XREF: sub_14027DF60+B8↑j
                mov     rax, gs:188h
                mov     edx, ebx
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14027E068
                shr     rdx, 3
                and     edx, 1FFh
                mov     rax, [rax+rdx*8]
                mov     rdx, r14
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r14
                mov     r14, rdx
                test    al, 42h
                jz      short loc_14027E068
                or      r14, 42h

loc_14027E068:                          ; CODE XREF: sub_14027DF60+A3↑j
                                        ; sub_14027DF60+AC↑j ...
                lea     rcx, [rbp+57h+var_88]
                mov     [rbp+57h+var_88], r14
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027E0DD
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027E0DD
                test    r14b, 1
                jz      short loc_14027E0DD
                test    r14b, 20h
                jz      short loc_14027E094
                test    r14b, 42h
                jnz     short loc_14027E0DD

loc_14027E094:                          ; CODE XREF: sub_14027DF60+12C↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027E0DD
                lea     rax, [rbp+57h+var_88]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, r14
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r14
                mov     r14, rdx
                test    al, 42h
                jz      short loc_14027E0DD
                or      r14, 42h

loc_14027E0DD:                          ; CODE XREF: sub_14027DF60+117↑j
                                        ; sub_14027DF60+120↑j ...
                shr     r14, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     r14, rax
                mov     rdi, r15
                mov     [rbp+57h+var_70], r14
                xor     ebx, ebx

loc_14027E0F7:                          ; CODE XREF: sub_14027DF60+2FA↓j
                mov     rcx, rdi
                call    sub_1402805F0
                mov     r8, rax
                test    rax, rax
                jz      loc_14027E393
                bt      rax, 0Ah
                jnb     loc_14027E393
                or      r8, 1
                mov     rax, 0FFFFF6FB7DBED000h
                btr     r8, 0Ah
                mov     [rbp+57h+var_98], r8
                mov     rax, rax
                lea     rcx, [rbp+57h+var_98]
                cmp     rcx, rax
                jb      short loc_14027E1A7
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                lea     rcx, [rbp+57h+var_98]
                cmp     rcx, rax
                ja      short loc_14027E1A7
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027E1A7
                test    r8b, 20h
                jz      short loc_14027E164
                test    r8b, 42h
                jnz     short loc_14027E1A7

loc_14027E164:                          ; CODE XREF: sub_14027DF60+1FC↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jnz     short loc_14027E186
                mov     r8, [rbp+57h+var_98]
                jmp     short loc_14027E1A7
; ---------------------------------------------------------------------------

loc_14027E186:                          ; CODE XREF: sub_14027DF60+21E↑j
                lea     rax, [rbp+57h+var_98]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                test    al, 20h
                jz      short loc_14027E19F
                or      r8, 20h

loc_14027E19F:                          ; CODE XREF: sub_14027DF60+239↑j
                test    al, 42h
                jz      short loc_14027E1A7
                or      r8, 42h

loc_14027E1A7:                          ; CODE XREF: sub_14027DF60+1D7↑j
                                        ; sub_14027DF60+1ED↑j ...
                shr     r8, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     r8, rax
                test    rbx, rbx
                jz      short loc_14027E1C6
                cmp     r8, r13
                jnz     loc_14027E393

loc_14027E1C6:                          ; CODE XREF: sub_14027DF60+25B↑j
                lea     rcx, [r8+r8*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     rax, rax
                cmp     cs:byte_140C51EDE, 0
                lea     r9, [rcx+rax]
                jz      short loc_14027E218
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                mov     rax, cs:qword_140C52408
                shr     rdx, 9
                bt      [rax], rdx
                jb      loc_14027E393

loc_14027E218:                          ; CODE XREF: sub_14027DF60+286↑j
                mov     rcx, r9
                call    sub_1403F41D8
                test    eax, eax
                jnz     loc_14027E393
                mov     rdx, [r9+28h]
                mov     rax, cs:qword_140C4E4C8
                shr     rdx, 27h
                and     edx, 3FFh
                mov     rdx, [rax+rdx*8]
                cmp     rdx, [rbp+57h+var_80]
                jnz     loc_14027E393
                inc     rbx
                lea     r13, [r8+1]
                add     rdi, 8
                cmp     rbx, 10h
                jb      loc_14027E0F7
                mov     rcx, r12
                call    sub_140295F90
                lea     rax, [r13-10h]
                lea     rdx, [rax+rax*2]
                mov     [rbp+57h+var_78], rax
                mov     rdi, rax
                shl     rdx, 4
                mov     rax, 0FFFFFA8000000000h
                mov     rcx, rax
                lea     rbx, [rdx+rcx]
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rdx
                mov     r12, rbx
                sar     rdx, 3
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rcx, rdx
                call    sub_14027DEC0
                xorps   xmm0, xmm0
                movups  [rbp+57h+var_48], xmm0
                cmp     rdi, r13
                jnb     loc_14027E34A
                lea     rax, [r13-10h]
                mov     [rbp+57h+var_78], rax

loc_14027E2C7:                          ; CODE XREF: sub_14027DF60+3DC↓j
                mov     rcx, rbx
                cmp     rdi, rax
                jnz     short loc_14027E2D6
                call    sub_14054FB1C
                jmp     short loc_14027E2DF
; ---------------------------------------------------------------------------

loc_14027E2D6:                          ; CODE XREF: sub_14027DF60+36D↑j
                call    sub_1402D69D0
                test    eax, eax
                jz      short loc_14027E33E

loc_14027E2DF:                          ; CODE XREF: sub_14027DF60+374↑j
                mov     rsi, [rbx+8]
                mov     rcx, 8000000000000000h
                mov     rax, rsi
                mov     [rbp+57h+var_A0], rdi
                or      rax, rcx
                cmp     rax, r15
                jnz     loc_14027E60B
                movzx   ecx, byte ptr [rbx+22h]
                movzx   eax, cl
                and     al, 7
                cmp     al, 6
                jnz     loc_14027E602
                cmp     word ptr [rbx+20h], 1
                jnz     short loc_14027E344
                test    byte ptr [rbx+23h], 40h
                jnz     short loc_14027E344
                mov     eax, ecx
                inc     rdi
                shr     rax, 6
                add     rbx, 30h ; '0'
                add     r15, 8
                inc     dword ptr [rbp+rax*4+57h+var_48]
                cmp     rdi, r13
                jnb     short loc_14027E33E
                lea     rax, [r13-10h]
                jmp     short loc_14027E2C7
; ---------------------------------------------------------------------------

loc_14027E33E:                          ; CODE XREF: sub_14027DF60+37D↑j
                                        ; sub_14027DF60+3D6↑j
                mov     rsi, [rbp+57h+var_A0]
                jmp     short loc_14027E347
; ---------------------------------------------------------------------------

loc_14027E344:                          ; CODE XREF: sub_14027DF60+3B6↑j
                                        ; sub_14027DF60+3BC↑j
                mov     rsi, rdi

loc_14027E347:                          ; CODE XREF: sub_14027DF60+3E2↑j
                cmp     rdi, r13

loc_14027E34A:                          ; CODE XREF: sub_14027DF60+359↑j
                jz      short loc_14027E3BD
                cmp     rsi, 0FFFFFFFFFFFFFFFFh
                jz      short loc_14027E393
                lea     rcx, [rsi+rsi*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     rax, rax
                add     rcx, rax
                mov     rdi, 7FFFFFFFFFFFFFFFh
                cmp     rcx, r12
                jz      short loc_14027E38E
                nop     dword ptr [rax+00000000h]

loc_14027E380:                          ; CODE XREF: sub_14027DF60+42C↓j
                lock and [rcx+18h], rdi
                sub     rcx, 30h ; '0'
                cmp     rcx, r12
                jnz     short loc_14027E380

loc_14027E38E:                          ; CODE XREF: sub_14027DF60+417↑j
                lock and [rcx+18h], rdi

loc_14027E393:                          ; CODE XREF: sub_14027DF60+1A5↑j
                                        ; sub_14027DF60+1B0↑j ...
                xor     eax, eax

loc_14027E395:                          ; CODE XREF: sub_14027DF60+69D↓j
                mov     rcx, [rbp+57h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0D0h+arg_10]
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027E3BD:                          ; CODE XREF: sub_14027DF60:loc_14027E34A↑j
                mov     ecx, dword ptr [rbp+57h+var_48]
                xor     eax, eax
                mov     r13, rbx
                add     r15, 0FFFFFFFFFFFFFF80h
                sub     rbx, 300h
                lea     esi, [rax+1]
                test    ecx, ecx
                jz      short loc_14027E3DB
                mov     eax, ecx
                xor     esi, esi

loc_14027E3DB:                          ; CODE XREF: sub_14027DF60+475↑j
                mov     ecx, dword ptr [rbp+57h+var_48+4]
                cmp     eax, ecx
                jnb     short loc_14027E3E9
                mov     eax, ecx
                mov     esi, 1

loc_14027E3E9:                          ; CODE XREF: sub_14027DF60+480↑j
                mov     ecx, dword ptr [rbp+57h+var_48+8]
                mov     edx, 2
                cmp     eax, ecx
                jnb     short loc_14027E3F9
                mov     eax, ecx
                mov     esi, edx

loc_14027E3F9:                          ; CODE XREF: sub_14027DF60+493↑j
                cmp     eax, dword ptr [rbp+57h+var_48+0Ch]
                mov     ecx, 3
                mov     r14, [rbp+57h+var_80]
                mov     rdi, 7FFFFFFFFFFFFFFFh
                cmovb   esi, ecx
                nop     dword ptr [rax+00h]
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_14027E420:                          ; CODE XREF: sub_14027DF60+61A↓j
                mov     rax, [rbx+28h]
                shr     rax, 3Ch
                and     al, 7
                mov     [rbx+20h], dx
                cmp     al, 3
                jnz     short loc_14027E43F
                mov     edx, 0Ch
                mov     rcx, rbx
                call    sub_1402D69E8

loc_14027E43F:                          ; CODE XREF: sub_14027DF60+4D0↑j
                mov     rcx, [rbx+10h]
                mov     [rbp+57h+var_90], rcx
                bt      rcx, 0Ah
                jb      short loc_14027E48E
                movzx   eax, cl
                shr     al, 2
                test    al, 1
                jz      short loc_14027E463
                lea     rcx, [rbp+57h+var_90]
                call    sub_1402805F0
                jmp     short loc_14027E477
; ---------------------------------------------------------------------------

loc_14027E463:                          ; CODE XREF: sub_14027DF60+4F6↑j
                shr     cl, 1
                test    cl, 1
                jz      short loc_14027E475
                lea     rcx, [rbp+57h+var_90]
                call    sub_1402805F0
                jmp     short loc_14027E477
; ---------------------------------------------------------------------------

loc_14027E475:                          ; CODE XREF: sub_14027DF60+508↑j
                xor     eax, eax

loc_14027E477:                          ; CODE XREF: sub_14027DF60+501↑j
                                        ; sub_14027DF60+513↑j
                mov     [rbp+57h+var_90], rax
                test    rax, rax
                jz      short loc_14027E48E
                xor     r8d, r8d
                mov     rdx, rax
                mov     rcx, r14
                call    sub_14020B2C0

loc_14027E48E:                          ; CODE XREF: sub_14027DF60+4EC↑j
                                        ; sub_14027DF60+51E↑j
                mov     rax, cs:qword_14001D278
                mov     [rbx+10h], rax
                movzx   eax, byte ptr [rbx+22h]
                shr     eax, 6
                cmp     eax, esi
                jz      short loc_14027E4B4
                mov     r8d, 1
                mov     edx, esi
                mov     rcx, rbx
                call    sub_14031F848

loc_14027E4B4:                          ; CODE XREF: sub_14027DF60+542↑j
                movzx   eax, byte ptr [rbx+23h]
                test    al, 10h
                jz      short loc_14027E4C1
                and     al, 0EFh
                mov     [rbx+23h], al

loc_14027E4C1:                          ; CODE XREF: sub_14027DF60+55A↑j
                xor     r9d, r9d
                mov     rdx, r12
                mov     rcx, rbx
                lea     r8d, [r9+2]
                call    sub_1403F5A88
                cmp     rbx, r12
                jz      short loc_14027E4DD
                lock and [rbx+18h], rdi

loc_14027E4DD:                          ; CODE XREF: sub_14027DF60+576↑j
                mov     rdx, cs:qword_14001D278
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r15, rax
                jb      short loc_14027E567
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r15, rax
                ja      short loc_14027E567
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027E539
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14027E52C
                test    dl, 1
                jz      short loc_14027E52C
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14027E52C:                          ; CODE XREF: sub_14027DF60+5B8↑j
                                        ; sub_14027DF60+5BD↑j
                mov     rcx, r15
                mov     [r15], rdx
                call    sub_140349620
                jmp     short loc_14027E56A
; ---------------------------------------------------------------------------

loc_14027E539:                          ; CODE XREF: sub_14027DF60+5AF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027E567
                test    dl, 1
                jz      short loc_14027E567
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14027E567:                          ; CODE XREF: sub_14027DF60+594↑j
                                        ; sub_14027DF60+5A6↑j ...
                mov     [r15], rdx

loc_14027E56A:                          ; CODE XREF: sub_14027DF60+5D7↑j
                add     rbx, 30h ; '0'
                add     r15, 8
                mov     edx, 2
                cmp     rbx, r13
                jb      loc_14027E420
                mov     rax, [rbp+57h+var_78]
                lea     rcx, [rbp+57h+var_60]
                mov     qword ptr [rbp+57h+var_60], rax
                mov     qword ptr [rbp+57h+var_60+8], 1
                mov     byte ptr [rbp+57h+var_50], dl
                call    sub_140321040
                mov     r14, [rbp+57h+var_70]
                mov     rax, 0FFFFFA8000000000h
                lea     rbx, [r14+r14*2]
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     rcx, rbx
                call    sub_14054FB1C
                mov     rcx, [rbx+18h]
                mov     r8, 3FFFFFFFFFFFFFFFh
                lea     rdx, [rcx-10h]
                xor     rdx, rcx
                and     rdx, r8
                xor     rdx, rcx
                mov     [rbx+18h], rdx
                lock and [rbx+18h], rdi
                mov     rdx, [rbp+57h+var_68]
                mov     rcx, 0FFFFFFFFFFFFFFF0h
                lock xadd [rdx+4F8h], rcx
                mov     eax, 1
                jmp     loc_14027E395
; ---------------------------------------------------------------------------

loc_14027E602:                          ; CODE XREF: sub_14027DF60+3AB↑j
                mov     rcx, rbx
                call    sub_1403F4244
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14027E60B:                          ; CODE XREF: sub_14027DF60+39A↑j
                mov     rcx, r15
                call    sub_1402805F0
                mov     r9, rax
                mov     [rsp+0D0h+var_B0], rsi
                mov     r8, r15
                mov     edx, 403h
                mov     ecx, 1Ah
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14027DF60
sub_14027DF60   endp

algn_14027E62E:                         ; DATA XREF: .pdata:00000001400CE970↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027E640   proc near               ; CODE XREF: sub_140263560+55A↑p
                                        ; sub_14065BC40+3AC↓p ...

arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r12d, edx
                mov     r14, rcx
                mov     r15, 0FFFFFFFFFFFFFFFFh
                mov     r13, 7FFFFFFFFFFFFFFFh

loc_14027E66B:                          ; CODE XREF: sub_14027E640+3CD↓j
                mov     rdi, 0FFFFF68000000000h

loc_14027E675:                          ; CODE XREF: sub_14027E640+344↓j
                mov     rbp, 0FFFFF6FB7DBED000h
                mov     rsi, 0FFFFF6FB7DBED7F8h
                nop     dword ptr [rax+00000000h]

loc_14027E690:                          ; CODE XREF: sub_14027E640+302↓j
                mov     ebx, 2

loc_14027E695:                          ; CODE XREF: sub_14027E640+2EC↓j
                                        ; sub_14027E640+330↓j
                mov     rcx, r14
                call    sub_1402805F0
                mov     [rsp+58h+arg_18], rax
                mov     rdx, rax
                test    al, 1
                jz      loc_14027E730
                mov     rax, rbp
                lea     rcx, [rsp+58h+arg_18]
                cmp     rcx, rax
                jb      short loc_14027E729
                mov     rax, rsi
                lea     rcx, [rsp+58h+arg_18]
                cmp     rcx, rax
                ja      short loc_14027E729
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027E729
                mov     r8, rdx
                test    dl, 20h
                jz      short loc_14027E6DD
                test    dl, 42h
                jnz     short loc_14027E729

loc_14027E6DD:                          ; CODE XREF: sub_14027E640+96↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r9, [rcx+788h]
                test    r9, r9
                jnz     short loc_14027E704
                mov     rdx, [rsp+58h+arg_18]
                lea     ebp, [r9+6]
                jmp     short loc_14027E775
; ---------------------------------------------------------------------------

loc_14027E704:                          ; CODE XREF: sub_14027E640+B7↑j
                lea     rax, [rsp+58h+arg_18]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r9+rax*8]
                test    al, 20h
                jz      short loc_14027E721
                mov     rdx, r8
                or      rdx, 20h

loc_14027E721:                          ; CODE XREF: sub_14027E640+D8↑j
                test    al, 42h
                jz      short loc_14027E729
                or      rdx, 42h

loc_14027E729:                          ; CODE XREF: sub_14027E640+78↑j
                                        ; sub_14027E640+85↑j ...
                mov     ebp, 6
                jmp     short loc_14027E775
; ---------------------------------------------------------------------------

loc_14027E730:                          ; CODE XREF: sub_14027E640+67↑j
                bt      rdx, 0Ah
                jb      loc_14027EAE6
                bt      rdx, 0Bh
                jnb     loc_14027EAE6
                mov     rcx, rdx
                call    sub_140299080
                test    eax, eax
                jz      loc_14027EAE6
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14027E773
                test    dl, 10h
                jnz     short loc_14027E76F
                not     rax
                and     rdx, rax
                jmp     short loc_14027E773
; ---------------------------------------------------------------------------

loc_14027E76F:                          ; CODE XREF: sub_14027E640+125↑j
                and     rdx, 0FFFFFFFFFFFFFFEFh

loc_14027E773:                          ; CODE XREF: sub_14027E640+120↑j
                                        ; sub_14027E640+12D↑j
                mov     ebp, ebx

loc_14027E775:                          ; CODE XREF: sub_14027E640+C2↑j
                                        ; sub_14027E640+EE↑j
                mov     rax, 0FFFFFFFFFh
                shr     rdx, 0Ch
                and     rdx, rax
                mov     rax, 0FFFFFA8000000028h
                lea     r8, [rdx+rdx*2]
                add     r8, r8
                mov     rax, rax
                mov     rcx, [rax+r8*8]
                mov     rax, 4000000000000h
                test    rax, rcx
                jz      loc_14027EAE6
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                lea     rbx, [rax+r8*8]
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027E80D
                test    al, 1
                jz      short loc_14027E80D
                cmp     sil, 0Fh
                ja      short loc_14027E80D
                mov     rax, gs:20h
                mov     rdx, r15
                movzx   ecx, sil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_14027E80D:                          ; CODE XREF: sub_14027E640+197↑j
                                        ; sub_14027E640+19B↑j ...
                mov     [rsp+58h+arg_10], 0
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jnb     short loc_14027E83C
                xchg    ax, ax

loc_14027E820:                          ; CODE XREF: sub_14027E640+1F1↓j
                                        ; sub_14027E640+1FA↓j
                lea     rcx, [rsp+58h+arg_10]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_14027E820
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_14027E820

loc_14027E83C:                          ; CODE XREF: sub_14027E640+1DC↑j
                mov     rax, [rbx+8]
                mov     rcx, 8000000000000000h
                or      rax, rcx
                cmp     rax, r14
                jz      short loc_14027E884
                mov     rcx, rbx
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_14027EA86
                mov     rax, rdi
                cmp     r14, rax
                jb      loc_14027EA86
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r14, rax
                ja      loc_14027EA86

loc_14027E884:                          ; CODE XREF: sub_14027E640+210↑j
                movzx   edi, byte ptr [rbx+22h]
                movzx   eax, dil
                and     al, 7
                cmp     ebp, 6
                jnz     loc_14027E989
                cmp     al, bpl
                jz      loc_14027E99B
                lock and [rbx+18h], r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027E8FB
                test    al, 1
                jz      short loc_14027E8FB
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027E8FB
                cmp     sil, 0Fh
                ja      short loc_14027E8FB
                cmp     al, 2
                jb      short loc_14027E8FB
                mov     r10, gs:20h
                mov     rdx, r15
                movzx   ecx, sil
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14027E8FB
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14027E8FB:                          ; CODE XREF: sub_14027E640+26D↑j
                                        ; sub_14027E640+271↑j ...
                movzx   eax, sil
                mov     cr8, rax
                mov     rdi, 0FFFFF68000000000h
                mov     rax, rdi
                mov     rsi, 0FFFFF6FB7DBED7F8h
                mov     ebx, 2
                mov     rbp, 0FFFFF6FB7DBED000h
                cmp     r14, rax
                jb      loc_14027E695
                mov     rbx, 0FFFFF6FFFFFFFFFFh
                mov     rax, rbx
                cmp     r14, rax
                ja      loc_14027E690
                mov     rcx, r14
                shl     rcx, 19h
                mov     rax, rdi
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rax, rdi
                cmp     rcx, rax
                jb      short loc_14027E976
                mov     rax, rbx
                mov     ebx, 2
                cmp     rcx, rax
                jbe     loc_14027E695

loc_14027E976:                          ; CODE XREF: sub_14027E640+323↑j
                call    sub_140245330
                cmp     eax, 9
                jz      loc_14027EAE6
                jmp     loc_14027E675
; ---------------------------------------------------------------------------

loc_14027E989:                          ; CODE XREF: sub_14027E640+251↑j
                sub     al, 2
                cmp     al, 2
                ja      short loc_14027E9AA
                mov     rax, [rbx+18h]
                shr     rax, 3Eh
                test    al, 1
                jnz     short loc_14027E9AA

loc_14027E99B:                          ; CODE XREF: sub_14027E640+25A↑j
                mov     rcx, r14
                call    sub_1402805F0
                cmp     [rsp+58h+arg_18], rax
                jz      short loc_14027EA12

loc_14027E9AA:                          ; CODE XREF: sub_14027E640+34D↑j
                                        ; sub_14027E640+359↑j
                lock and [rbx+18h], r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027EA05
                test    al, 1
                jz      short loc_14027EA05
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027EA05
                cmp     sil, 0Fh
                ja      short loc_14027EA05
                cmp     al, 2
                jb      short loc_14027EA05
                mov     r10, gs:20h
                mov     rdx, r15
                movzx   ecx, sil
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14027EA05
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14027EA05:                          ; CODE XREF: sub_14027E640+377↑j
                                        ; sub_14027E640+37B↑j ...
                movzx   eax, sil
                mov     cr8, rax
                jmp     loc_14027E66B
; ---------------------------------------------------------------------------

loc_14027EA12:                          ; CODE XREF: sub_14027E640+368↑j
                movzx   ecx, byte ptr [rbx+23h]
                test    cl, 8
                jz      short loc_14027EA22
                mov     eax, 5
                jmp     short loc_14027EA27
; ---------------------------------------------------------------------------

loc_14027EA22:                          ; CODE XREF: sub_14027E640+3D9↑j
                mov     eax, ecx
                and     eax, 7

loc_14027EA27:                          ; CODE XREF: sub_14027E640+3E0↑j
                cmp     r12d, eax
                jz      short loc_14027EA86
                jb      short loc_14027EA86
                and     dil, 7
                cmp     dil, 2
                jnz     short loc_14027EA79
                test    eax, eax
                jnz     short loc_14027EA6C
                mov     eax, [rbx+10h]
                bt      rax, 0Ah
                jb      short loc_14027EA6C
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rbx+28h]
                mov     rdx, [rbx+10h]
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     rcx, [rax+rcx*8]
                call    sub_14031B1B0
                test    eax, eax
                jnz     short loc_14027EA86

loc_14027EA6C:                          ; CODE XREF: sub_14027E640+3FA↑j
                                        ; sub_14027E640+404↑j
                mov     edx, r12d
                mov     rcx, rbx
                call    sub_140213950
                jmp     short loc_14027EA86
; ---------------------------------------------------------------------------

loc_14027EA79:                          ; CODE XREF: sub_14027E640+3F6↑j
                movzx   eax, cl
                xor     al, r12b
                and     al, 7
                xor     al, cl
                mov     [rbx+23h], al

loc_14027EA86:                          ; CODE XREF: sub_14027E640+21C↑j
                                        ; sub_14027E640+228↑j ...
                lock and [rbx+18h], r13
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14027EADE
                test    al, 1
                jz      short loc_14027EADE
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14027EADE
                cmp     sil, 0Fh
                ja      short loc_14027EADE
                cmp     al, 2
                jb      short loc_14027EADE
                mov     r9, gs:20h
                movzx   ecx, sil
                inc     ecx
                shl     r15, cl
                mov     r8, [r9+84B8h]
                movzx   eax, r15w
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14027EADE
                mov     rcx, r9
                call    sub_1403F2EC4

loc_14027EADE:                          ; CODE XREF: sub_14027E640+453↑j
                                        ; sub_14027E640+457↑j ...
                movzx   eax, sil
                mov     cr8, rax

loc_14027EAE6:                          ; CODE XREF: sub_14027E640+F5↑j
                                        ; sub_14027E640+100↑j ...
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027E640   endp

byte_14027EAFC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400CE97C↑o

; =============== S U B R O U T I N E =======================================


sub_14027EB10   proc near               ; CODE XREF: sub_140265E70+41A↑p
                                        ; sub_140265E70+AA8↑p ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140443044 SIZE 000001E0 BYTES

                mov     rax, rsp
                mov     [rax+18h], r8b
                mov     [rax+10h], edx
                mov     [rax+8], rcx
                push    rbx
                push    rdi
                push    r12
                sub     rsp, 60h
                xor     edi, edi
                mov     rbx, rcx
                mov     r12d, edi
                test    edx, edx
                jz      loc_14027ED4E

loc_14027EB36:                          ; DATA XREF: .rdata:000000014005E630↑o
                                        ; .rdata:000000014005E644↑o ...
                mov     [rax-20h], rbp
                lea     rcx, [rax-58h]
                mov     [rax-28h], rsi
                mov     [rax-30h], r13
                mov     [rax-38h], r14
                mov     [rax-40h], r15
                call    sub_1402433C0
                mov     [rsp+78h+arg_18], eax
                mov     rcx, 0C000000000000000h
                mov     rsi, 0FFFFFFFFFh
                mov     r14, 0FFFFFA8000000000h
                nop     dword ptr [rax+rax+00000000h]

loc_14027EB80:                          ; CODE XREF: sub_14027EB10+21F↓j
                mov     rbx, [rbx+r12*8]
                mov     [rsp+78h+var_58], rdi
                movzx   eax, byte ptr [rbx+22h]
                and     [rbx+18h], rcx
                and     al, 0FAh
                or      al, 2
                mov     [rbx+20h], di
                mov     [rbx+22h], al
                lea     rax, [rbx+10h]
                mov     rcx, rax
                mov     [rsp+78h+var_50], rax
                call    sub_1402805F0
                mov     rdx, [rbx+28h]
                mov     rdi, rax
                mov     rbp, [rbx+8]
                and     rdx, rsi
                shr     rdi, 5
                mov     r8d, 4
                and     edi, 1Fh
                lea     rcx, [rdx+rdx*2]
                add     rcx, rcx
                mov     rax, r14
                movzx   eax, byte ptr [rax+rcx*8+22h]
                shr     eax, 6
                test    eax, eax
                jz      loc_14044304F
                cmp     eax, 3
                jz      loc_14044304F
                cmp     eax, 2
                jz      loc_140443044

loc_14027EBF4:                          ; CODE XREF: sub_14027EB10+1C453A↓j
                                        ; sub_14027EB10+1C4545↓j
                or      r8d, 0A0000000h
                xor     ecx, ecx
                call    sub_140280E60
                mov     r13, gs:20h
                mov     rbx, rax
                mov     r14, [r13+7FF8h]
                test    r14, r14
                jz      loc_14044305A
                xor     r9d, r9d
                lea     rcx, [r14+30A0h]
                lea     edx, [r9+3]
                lea     r8d, [r9+1]
                call    sub_140292240
                mov     rsi, rax
                mov     r15, rax
                mov     rax, 7FFFFFFFF8h
                shr     rsi, 9
                and     rsi, rax
                mov     rax, 0FFFFF68000000000h
                mov     rcx, rax
                add     rsi, rcx
                mov     [r14+3038h], rsi
                test    r15, r15
                jz      loc_14044305A

loc_14027EC6C:                          ; CODE XREF: sub_14027EB10+1C458C↓j
                mov     rcx, rsi
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404430A1

loc_14027EC7C:                          ; CODE XREF: sub_14027EB10+1C45E3↓j
                                        ; sub_14027EB10+1C45EC↓j ...
                mov     [rsi], rbx

loc_14027EC7F:                          ; CODE XREF: sub_14027EB10+1C45C4↓j
                shr     rbp, 3
                and     ebp, 1FFh
                lea     rsi, [r15+rbp*8]
                mov     rcx, rsi
                call    sub_1402805F0
                cmp     [rsp+78h+arg_18], 0
                mov     [rsp+78h+var_58], rax
                jnz     loc_140443114

loc_14027ECA8:                          ; CODE XREF: sub_14027EB10+1C460E↓j
                                        ; sub_14027EB10+1C462B↓j ...
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rcx, rax
                mov     edx, edi
                call    sub_1402810E0
                mov     rcx, rsi
                mov     [rsp+78h+var_58], rax
                mov     rdi, rax
                mov     rbx, rax
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404431AF

loc_14027ECDB:                          ; CODE XREF: sub_14027EB10+1C46F2↓j
                                        ; sub_14027EB10+1C46FC↓j ...
                mov     [rsi], rbx

loc_14027ECDE:                          ; CODE XREF: sub_14027EB10+1C46D3↓j
                mov     r8d, 80000000h
                mov     dl, 11h
                mov     rcx, rsi
                call    sub_1402432B0
                mov     rcx, [rsp+78h+var_50]
                xor     edx, edx
                call    sub_1402C75A0
                mov     ecx, [rsp+78h+arg_8]
                inc     r12
                mov     rbx, [rsp+78h+arg_0]
                cmp     r12, rcx
                mov     rcx, 0C000000000000000h
                mov     r14, 0FFFFFA8000000000h
                mov     rsi, 0FFFFFFFFFh
                mov     edi, edx
                jb      loc_14027EB80
                mov     r15, [rsp+78h+var_40]
                mov     r14, [rsp+78h+var_38]
                mov     r13, [rsp+78h+var_30]
                mov     rsi, [rsp+78h+var_28]
                mov     rbp, [rsp+78h+var_20]

loc_14027ED4E:                          ; CODE XREF: sub_14027EB10+20↑j
                                        ; DATA XREF: .pdata:00000001400CE994↑o ...
                movzx   r9d, [rsp+78h+arg_10]
                mov     rdx, rbx
                mov     r8d, [rsp+78h+arg_8]
                xor     ecx, ecx
                call    sub_140278930
                add     rsp, 60h
                pop     r12
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027EB10   endp

algn_14027ED73:                         ; DATA XREF: .pdata:00000001400CE9A0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027ED80   proc near               ; DATA XREF: .rdata:000000014005E6C0↑o
                                        ; .pdata:00000001400CE9AC↑o ...

var_A08         = dword ptr -0A08h
var_A00         = qword ptr -0A00h
var_9F8         = qword ptr -9F8h
var_9E8         = byte ptr -9E8h
var_9E0         = qword ptr -9E0h
var_9D8         = qword ptr -9D8h
var_9D0         = qword ptr -9D0h
var_9C8         = dword ptr -9C8h
var_9C0         = qword ptr -9C0h
var_9B8         = qword ptr -9B8h
var_9B0         = qword ptr -9B0h
var_9A8         = qword ptr -9A8h
var_9A0         = qword ptr -9A0h
var_998         = dword ptr -998h
var_990         = qword ptr -990h
var_988         = qword ptr -988h
var_980         = qword ptr -980h
var_978         = qword ptr -978h
var_970         = qword ptr -970h
var_968         = qword ptr -968h
var_960         = qword ptr -960h
var_958         = qword ptr -958h
var_950         = qword ptr -950h
var_948         = qword ptr -948h
var_940         = xmmword ptr -940h
var_930         = xmmword ptr -930h
var_920         = xmmword ptr -920h
var_908         = dword ptr -908h
var_904         = word ptr -904h
var_902         = word ptr -902h
var_900         = qword ptr -900h
var_8F8         = qword ptr -8F8h
var_8F0         = qword ptr -8F0h
var_8E8         = byte ptr -8E8h
var_848         = byte ptr -848h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140418A20 SIZE 0000002C BYTES
; FUNCTION CHUNK AT 0000000140443224 SIZE 00000277 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 9F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A28h+var_48], rax
                mov     r15, r9
                mov     r14, r8
                mov     edi, edx
                mov     [rsp+0A28h+var_9C8], edx
                mov     [rsp+0A28h+var_960], rcx
                mov     r12, [rsp+0A28h+arg_20]
                mov     [rsp+0A28h+var_958], r12
                mov     rbx, [rsp+0A28h+arg_28]
                mov     [rsp+0A28h+var_950], rbx
                mov     r13, [rsp+0A28h+arg_30]
                mov     [rsp+0A28h+var_948], r13
                xor     esi, esi
                mov     [rsp+0A28h+var_9A0], rsi
                mov     [rsp+0A28h+var_998], esi
                mov     dword ptr [rsp+0A28h+var_9E0], esi
                xorps   xmm0, xmm0
                movups  [rsp+0A28h+var_940], xmm0
                movups  [rsp+0A28h+var_930], xmm0
                movups  [rsp+0A28h+var_920], xmm0
                xor     eax, eax
                mov     [rsp+0A28h+var_902], ax
                xor     edx, edx
                mov     r8d, 98h
                lea     rcx, [rsp+0A28h+var_8E8]
                call    memset
                mov     [rsp+0A28h+var_900], 14h
                mov     eax, 1
                mov     [rsp+0A28h+var_908], eax
                mov     [rsp+0A28h+var_904], si
                mov     [rsp+0A28h+var_8F8], rsi
                mov     [rsp+0A28h+var_8F0], rsi
                test    edi, 0FFFFFFFEh
                jnz     loc_140443224
                mov     rax, gs:188h
                mov     rsi, [rax+0B8h]
                movzx   edi, byte ptr [rax+232h]

loc_14027EE8B:                          ; DATA XREF: .rdata:000000014005E698↑o
;   __try { // __except at loc_14027EF5A
                test    dil, dil
                jz      loc_14027EF4D
                mov     rax, 7FFFFFFEFFFFh
                cmp     r14, rax
                ja      short loc_14027EF1B
                mov     rdx, 7FFFFFFF0000h
                mov     rax, rdx
                sub     rax, r14
                cmp     rax, r15
                jb      short loc_14027EF25
                mov     rcx, rbx
                cmp     rbx, rdx
                jnb     short loc_14027EF2F

loc_14027EEC0:                          ; CODE XREF: sub_14027ED80+1B2↓j
                mov     rax, [rcx]
                mov     [rcx], rax
                mov     rdx, [rbx]
                mov     [rsp+0A28h+var_990], rdx
                test    rdx, rdx
                jz      short loc_14027EF34
                mov     rax, 1FFFFFFFFFFFFFFFh
                cmp     rdx, rax
                ja      short loc_14027EF3E
                lea     rdx, ds:0[rdx*8]
                mov     r8d, 8
                mov     rcx, r12
                call    ProbeForWrite
                mov     rcx, r13
                mov     rax, 7FFFFFFF0000h
                cmp     r13, rax
                jnb     short loc_14027EF48

loc_14027EF0D:                          ; CODE XREF: sub_14027ED80+1CB↓j
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     rcx, [rsp+0A28h+var_990]
                jmp     short loc_14027EF58
; ---------------------------------------------------------------------------

loc_14027EF1B:                          ; CODE XREF: sub_14027ED80+121↑j
                mov     eax, 0C00000F1h
                jmp     loc_14027F3F2
; ---------------------------------------------------------------------------

loc_14027EF25:                          ; CODE XREF: sub_14027ED80+136↑j
                mov     eax, 0C00000F2h
                jmp     loc_14027F3F2
; ---------------------------------------------------------------------------

loc_14027EF2F:                          ; CODE XREF: sub_14027ED80+13E↑j
                mov     rcx, rdx
                jmp     short loc_14027EEC0
; ---------------------------------------------------------------------------

loc_14027EF34:                          ; CODE XREF: sub_14027ED80+154↑j
                mov     eax, 0C00000F3h
                jmp     loc_14027F3F2
; ---------------------------------------------------------------------------

loc_14027EF3E:                          ; CODE XREF: sub_14027ED80+163↑j
                mov     eax, 0C00000F3h
                jmp     loc_14027F3F2
; ---------------------------------------------------------------------------

loc_14027EF48:                          ; CODE XREF: sub_14027ED80+18B↑j
                mov     rcx, rax
                jmp     short loc_14027EF0D
; ---------------------------------------------------------------------------

loc_14027EF4D:                          ; CODE XREF: sub_14027ED80+10E↑j
                mov     rcx, [rbx]
                mov     [rsp+0A28h+var_990], rcx

loc_14027EF58:                          ; CODE XREF: sub_14027ED80+199↑j
                jmp     short loc_14027EF5F
;   } // starts at 14027EE8B
; ---------------------------------------------------------------------------

loc_14027EF5A:                          ; DATA XREF: .rdata:000000014005E698↑o
;   __except(loc_140418A20) // owned by 14027EE8B
                jmp     loc_14027F3F2
; ---------------------------------------------------------------------------

loc_14027EF5F:                          ; CODE XREF: sub_14027ED80:loc_14027EF58↑j
                lea     rax, [rsp+0A28h+var_848]
                mov     [rsp+0A28h+var_9A8], rax
                lea     rdx, ds:0[rcx*8]
                cmp     rcx, 100h
                ja      loc_14027F4A7

loc_14027EF84:                          ; CODE XREF: sub_14027ED80+742↓j
                mov     r12d, 1
                xor     r13d, r13d
                mov     [rsp+0A28h+var_9B8], r13
                mov     [rsp+0A28h+var_988], rax
                mov     [rsp+0A28h+var_968], r13
                mov     ebx, r13d
                mov     rax, [rsp+0A28h+var_960]
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jnz     loc_140443238
                mov     rax, rsi

loc_14027EFBA:                          ; CODE XREF: sub_14027ED80+1C4500↓j
                mov     [rsp+0A28h+var_9A0], rax
                mov     [rsp+0A28h+var_9D8], r13
                lea     rdi, [r14-1]
                add     rdi, r15
                cmp     r14, rdi
                ja      loc_140443285
                cmp     rsi, rax
                jnz     loc_14044328F

loc_14027EFE0:                          ; CODE XREF: sub_14027ED80+1C452A↓j
                add     rax, 680h
                mov     [rsp+0A28h+var_9C0], rax
                mov     rsi, r14
                shr     rsi, 9
                mov     r8, 7FFFFFFFF8h
                and     rsi, r8
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                add     rsi, rax
                mov     rcx, rdi
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     [rsp+0A28h+var_980], rcx
                lea     r8, [rsp+0A28h+var_9E0]
                xor     edx, edx
                mov     rcx, r14
                call    sub_140232930
                mov     r13, rax
                mov     [rsp+0A28h+var_970], rax
                test    rax, rax
                jz      loc_1404432AF
                mov     [rsp+0A28h+var_968], rax
                mov     r8d, [rax+30h]
                mov     eax, r8d
                and     eax, 300000h
                cmp     eax, 300000h
                jnz     loc_14027F498
                movzx   ecx, byte ptr [r13+21h]
                shl     rcx, 20h
                mov     eax, [r13+1Ch]
                or      rcx, rax
                shl     rcx, 0Ch
                or      rcx, 0FFFh
                cmp     rdi, rcx
                ja      loc_14027F498
                mov     rcx, r13
                call    sub_14026B3E0
                mov     r12, rax
                mov     [rsp+0A28h+var_9B0], rax
                cmp     rax, 1
                ja      loc_1404432C9

loc_14027F0A7:                          ; CODE XREF: sub_14027ED80+1C456A↓j
                mov     ecx, r8d
                mov     eax, r8d
                and     eax, 500000h
                cmp     eax, 500000h
                jnz     loc_14027F48D
                shr     rcx, 12h
                and     ecx, 3
                lea     rax, qword_14002DE90
                mov     r12d, 10h
                cmp     [rax+rcx*8], r12
                mov     eax, 1
                cmovnz  r12d, eax

loc_14027F0DE:                          ; CODE XREF: sub_14027ED80+713↓j
                mov     edx, 4
                mov     rcx, r13
                call    sub_1402EBB3C
                mov     [rsp+0A28h+var_9D0], rax
                movzx   edx, byte ptr [r13+20h]
                shl     rdx, 20h
                mov     ecx, [r13+18h]
                or      rdx, rcx
                shr     r14, 0Ch
                sub     r14, rdx
                xor     edx, edx
                mov     rax, r14
                mov     r14, [rsp+0A28h+var_9B0]
                div     r14
                mov     r15, rax
                mov     rdi, [rsp+0A28h+var_9C0]
                mov     rcx, rdi
                call    sub_140231340
                mov     [rsp+0A28h+var_9E8], al
                cmp     rsi, [rsp+0A28h+var_980]
                ja      loc_14027F31E

loc_14027F136:                          ; CODE XREF: sub_14027ED80+593↓j
                mov     rdi, [rsp+0A28h+var_9B8]
                test    rdi, rdi
                jnz     loc_14027F4F8
                mov     rdi, [rsp+0A28h+var_9C0]

loc_14027F149:                          ; CODE XREF: sub_14027ED80+79E↓j
                mov     rcx, rdi
                call    sub_14029A5E0
                test    eax, eax
                jnz     loc_14027F523
                call    sub_140536BA8
                test    eax, eax
                jnz     loc_14027F523

loc_14027F166:                          ; CODE XREF: sub_14027ED80+7B8↓j
                lea     rax, [rsp+0A28h+var_998]
                mov     [rsp+0A28h+var_A00], rax
                mov     eax, 1
                mov     [rsp+0A28h+var_A08], eax
                movzx   r9d, [rsp+0A28h+var_9E8]
                xor     r8d, r8d
                mov     rdi, [rsp+0A28h+var_980]
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402A7DC0
                mov     rcx, rax
                test    rax, rax
                jz      loc_14027F565
                mov     rdx, rax
                shr     rdx, 9
                mov     rax, 7FFFFFFFF8h
                and     rdx, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     rdx, rax
                mov     [rsp+0A28h+var_9B8], rdx

loc_14027F1CD:                          ; CODE XREF: sub_14027ED80+7E9↓j
                sub     rcx, rsi
                sar     rcx, 3
                xor     edx, edx
                mov     rax, rcx
                div     r14
                mov     rdi, rax
                or      ebx, 4
                mov     rcx, r13
                call    sub_14034282C
                mov     r11, [rsp+0A28h+var_9D0]
                test    rdi, rdi
                jnz     loc_14027F540

loc_14027F1F8:                          ; CODE XREF: sub_14027ED80+7E0↓j
                mov     rax, [rsp+0A28h+var_980]
                cmp     rsi, rax
                ja      loc_14027F319
                mov     r10, rax
                mov     [rsp+0A28h+var_9E0], rax
                mov     ecx, [rsp+0A28h+var_998]
                test    ecx, ecx
                jnz     loc_140443360
                mov     rdi, r12

loc_14027F223:                          ; CODE XREF: sub_14027ED80+1C469D↓j
                xor     edx, edx
                mov     rax, rdi
                div     r14
                mov     r9, rax
                mov     [rsp+0A28h+var_978], rax
                cmp     rsi, r10
                ja      loc_14027F2D2
                nop

loc_14027F240:                          ; CODE XREF: sub_14027ED80+544↓j
                mov     rcx, rsi
                call    sub_14027F590
                mov     r13, rax
                and     ebx, 0FFFFFFFDh
                mov     rdi, rsi
                mov     rdx, [r11+10h]
                bt      [rdx], r15
                setb    cl
                cmp     cl, 1
                jz      loc_14027F56E
                xor     r14d, r14d

loc_14027F268:                          ; CODE XREF: sub_14027ED80+50F↓j
                mov     rcx, rdi
                call    sub_1402805F0
                test    al, 42h
                setnz   cl
                test    al, 1
                setnz   al
                test    al, cl
                jnz     loc_14027F416

loc_14027F282:                          ; CODE XREF: sub_14027ED80+6B4↓j
                add     rdi, 8
                inc     r14d
                mov     eax, r14d
                cmp     rax, r12
                jb      short loc_14027F268

loc_14027F291:                          ; CODE XREF: sub_14027ED80+69E↓j
                                        ; sub_14027ED80+1C46DE↓j
                mov     r9, [rsp+0A28h+var_978]
                mov     r10, [rsp+0A28h+var_9E0]
                mov     r11, [rsp+0A28h+var_9D0]
                mov     r14, [rsp+0A28h+var_9B0]

loc_14027F2A8:                          ; CODE XREF: sub_14027ED80+7F6↓j
                test    bl, 2
                jnz     loc_14027F439

loc_14027F2B1:                          ; CODE XREF: sub_14027ED80+6BE↓j
                                        ; sub_14027ED80+705↓j
                add     r15, r9
                lea     rsi, [rsi+r12*8]
                test    rsi, 0FFFh
                jz      short loc_14027F2CA
                cmp     rsi, r10
                jbe     loc_14027F240

loc_14027F2CA:                          ; CODE XREF: sub_14027ED80+53F↑j
                mov     r13, [rsp+0A28h+var_970]

loc_14027F2D2:                          ; CODE XREF: sub_14027ED80+4B9↑j
                mov     dl, 2
                mov     rcx, r13
                call    sub_140345A70
                and     ebx, 0FFFFFFFBh
                mov     rcx, rsi
                call    sub_14027F590
                mov     rsi, rax
                shr     rsi, 9
                mov     rax, 7FFFFFFFF8h
                and     rsi, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     rsi, rax
                cmp     rsi, [rsp+0A28h+var_980]
                jbe     loc_14027F136

loc_14027F319:                          ; CODE XREF: sub_14027ED80+483↑j
                                        ; sub_14027ED80+773↓j ...
                mov     rdi, [rsp+0A28h+var_9C0]

loc_14027F31E:                          ; CODE XREF: sub_14027ED80+3B0↑j
                lea     rcx, [rsp+0A28h+var_908]
                call    sub_14028EDB0
                test    bl, 4
                jnz     loc_14027F4DC

loc_14027F334:                          ; CODE XREF: sub_14027ED80+766↓j
                mov     rax, [rsp+0A28h+var_9B8]
                test    rax, rax
                jz      short loc_14027F349
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_1403B6AB0

loc_14027F349:                          ; CODE XREF: sub_14027ED80+5BC↑j
                movzx   edx, [rsp+0A28h+var_9E8]
                mov     rcx, rdi
                call    sub_140226960
                xor     edi, edi
                mov     r12, [rsp+0A28h+var_9B0]
                mov     r13, [rsp+0A28h+var_9D8]

loc_14027F362:                          ; CODE XREF: sub_14027ED80+722↓j
                                        ; sub_14027ED80+1C450A↓j ...
                mov     rcx, [rsp+0A28h+var_968]
                test    rcx, rcx
                jz      short loc_14027F374
                call    sub_140232610

loc_14027F374:                          ; CODE XREF: sub_14027ED80+5ED↑j
                test    bl, 1
                jnz     loc_140443463

loc_14027F37D:                          ; CODE XREF: sub_14027ED80+1C46F1↓j
                cmp     [rsp+0A28h+var_960], 0FFFFFFFFFFFFFFFFh
                jnz     loc_140443476

loc_14027F38C:                          ; CODE XREF: sub_14027ED80+1C4709↓j
                test    edi, edi
                jnz     loc_14044348E

loc_14027F394:                          ; DATA XREF: .rdata:000000014005E6A8↑o
;   __try { // __except at loc_14027F3D5
                mov     rcx, [rsp+0A28h+var_958]
                mov     rbx, [rsp+0A28h+var_9A8]
                test    rcx, rcx
                jz      short loc_14027F3C4
                lea     r8, ds:0[r13*8]
                mov     rdx, rbx
                call    memmove
                mov     rax, [rsp+0A28h+var_950]
                mov     [rax], r13

loc_14027F3C4:                          ; CODE XREF: sub_14027ED80+627↑j
                shl     r12d, 0Ch
                mov     rax, [rsp+0A28h+var_948]
                mov     [rax], r12d
                jmp     short loc_14027F3DF
;   } // starts at 14027F394
; ---------------------------------------------------------------------------

loc_14027F3D5:                          ; DATA XREF: .rdata:000000014005E6A8↑o
;   __except(loc_140418A36) // owned by 14027F394
                mov     edi, eax
                mov     rbx, [rsp+0A28h+var_9A8]

loc_14027F3DF:                          ; CODE XREF: sub_14027ED80+653↑j
                                        ; sub_14027ED80+1C4716↓j
                lea     rax, [rsp+0A28h+var_848]
                cmp     rbx, rax
                jnz     loc_14027F4CD

loc_14027F3F0:                          ; CODE XREF: sub_14027ED80+757↓j
                mov     eax, edi

loc_14027F3F2:                          ; CODE XREF: sub_14027ED80+1A0↑j
                                        ; sub_14027ED80+1AA↑j ...
                mov     rcx, [rsp+0A28h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 9F0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14027F416:                          ; CODE XREF: sub_14027ED80+4FC↑j
                or      ebx, 2
                test    byte ptr [rsp+0A28h+var_9C8], 1
                jz      loc_14027F291
                lea     rdx, [rsp+0A28h+var_908]
                mov     rcx, rdi
                call    sub_1402A639C
                jmp     loc_14027F282
; ---------------------------------------------------------------------------

loc_14027F439:                          ; CODE XREF: sub_14027ED80+52B↑j
                xor     eax, eax
                test    r9, r9
                jz      loc_14027F2B1
                mov     rcx, r14
                shl     rcx, 0Ch
                mov     rdx, [rsp+0A28h+var_9D8]
                mov     r8, [rsp+0A28h+var_988]
                mov     rdi, [rsp+0A28h+var_990]

loc_14027F460:                          ; CODE XREF: sub_14027ED80+70B↓j
                mov     [r8], r13
                add     r8, 8
                mov     [rsp+0A28h+var_988], r8
                inc     rdx
                mov     [rsp+0A28h+var_9D8], rdx
                cmp     rdx, rdi
                jz      short loc_14027F4EB
                inc     rax
                add     r13, rcx
                cmp     rax, r9
                jnb     loc_14027F2B1
                jmp     short loc_14027F460
; ---------------------------------------------------------------------------

loc_14027F48D:                          ; CODE XREF: sub_14027ED80+337↑j
                mov     r12d, 1
                jmp     loc_14027F0DE
; ---------------------------------------------------------------------------

loc_14027F498:                          ; CODE XREF: sub_14027ED80+2E3↑j
                                        ; sub_14027ED80+307↑j
                mov     r13, [rsp+0A28h+var_9D8]

loc_14027F49D:                          ; CODE XREF: sub_14027ED80+1C4544↓j
                mov     edi, 0C00000EFh
                jmp     loc_14027F362
; ---------------------------------------------------------------------------

loc_14027F4A7:                          ; CODE XREF: sub_14027ED80+1FE↑j
                mov     ecx, 41h ; 'A'
                mov     r8d, 63476D4Dh
                call    sub_140268720
                mov     [rsp+0A28h+var_9A8], rax
                test    rax, rax
                jnz     loc_14027EF84
                jmp     loc_14044322E
; ---------------------------------------------------------------------------

loc_14027F4CD:                          ; CODE XREF: sub_14027ED80+66A↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_14027F3F0
; ---------------------------------------------------------------------------

loc_14027F4DC:                          ; CODE XREF: sub_14027ED80+5AE↑j
                mov     dl, 2
                mov     rcx, r13
                call    sub_140345A70
                jmp     loc_14027F334
; ---------------------------------------------------------------------------

loc_14027F4EB:                          ; CODE XREF: sub_14027ED80+6FA↑j
                mov     r13, [rsp+0A28h+var_970]
                jmp     loc_14027F319
; ---------------------------------------------------------------------------

loc_14027F4F8:                          ; CODE XREF: sub_14027ED80+3BE↑j
                lea     rcx, [rsp+0A28h+var_908]
                call    sub_14028EDB0
                mov     rdx, rdi
                mov     rdi, [rsp+0A28h+var_9C0]
                mov     rcx, rdi
                call    sub_1403B6AB0
                mov     [rsp+0A28h+var_9B8], 0
                jmp     loc_14027F149
; ---------------------------------------------------------------------------

loc_14027F523:                          ; CODE XREF: sub_14027ED80+3D3↑j
                                        ; sub_14027ED80+3E0↑j
                movzx   edx, [rsp+0A28h+var_9E8]
                mov     rcx, rdi
                call    sub_140226960
                mov     rcx, rdi
                call    sub_140231340
                jmp     loc_14027F166
; ---------------------------------------------------------------------------
                align 20h

loc_14027F540:                          ; CODE XREF: sub_14027ED80+472↑j
                                        ; sub_14027ED80+7DE↓j
                mov     rcx, [r11+10h]
                bt      [rcx], r15
                setb    al
                cmp     al, 1
                jz      loc_1404432FF

loc_14027F553:                          ; CODE XREF: sub_14027ED80+1C45DB↓j
                inc     r15
                lea     rsi, [rsi+r14*8]
                sub     rdi, 1
                jnz     short loc_14027F540
                jmp     loc_14027F1F8
; ---------------------------------------------------------------------------

loc_14027F565:                          ; CODE XREF: sub_14027ED80+41E↑j
                lea     rcx, [rdi+8]
                jmp     loc_14027F1CD
; ---------------------------------------------------------------------------

loc_14027F56E:                          ; CODE XREF: sub_14027ED80+4DF↑j
                or      ebx, 2
                test    byte ptr [rsp+0A28h+var_9C8], 1
                jz      loc_14027F2A8
                jmp     loc_140443422
; } // starts at 14027ED80
sub_14027ED80   endp

; ---------------------------------------------------------------------------
algn_14027F581:                         ; DATA XREF: .rdata:000000014005E6C0↑o
                                        ; .pdata:00000001400CE9AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14027F590   proc near               ; CODE XREF: sub_140227A20+266↑p
                                        ; sub_140258D20+189↑p ...
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                cmp     rcx, rax
                jb      short loc_14027F5CE
                mov     r8, 0FFFFF6FFFFFFFFFFh

loc_14027F5AC:                          ; CODE XREF: sub_14027F590+3C↓j
                mov     rax, r8
                cmp     rcx, rax
                ja      short loc_14027F5CE
                shl     rcx, 19h
                mov     rax, rdx
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                mov     rax, rdx
                cmp     rcx, rax
                jnb     short loc_14027F5AC

loc_14027F5CE:                          ; CODE XREF: sub_14027F590+10↑j
                                        ; sub_14027F590+22↑j
                mov     rax, rcx
                retn
sub_14027F590   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14027F5D3:                         ; DATA XREF: .pdata:00000001400CE9B8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14027F5E0   proc near               ; DATA XREF: .rdata:000000014005E6FC↑o
                                        ; .rdata:000000014005E778↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                push    r12
                push    r13
                sub     rsp, 58h
                mov     r13, [rcx+0A8h]
                mov     r12, rdx
                mov     rax, [r13+10h]
                mov     [rsp+68h+var_40], rax
                test    r8d, r8d
                jnz     loc_14027FDC6
                mov     rax, [r13+18h]

loc_14027F608:                          ; DATA XREF: .rdata:000000014005E6FC↑o
                                        ; .rdata:000000014005E710↑o ...
                mov     [rsp+68h+arg_8], rbx
                xor     ebx, ebx
                mov     [rsp+68h+var_18], rbp
                mov     ebp, ebx

loc_14027F616:                          ; DATA XREF: .rdata:000000014005E710↑o
                                        ; .rdata:000000014005E72C↑o ...
                mov     [rsp+68h+var_20], rsi
                mov     esi, ebx

loc_14027F61D:                          ; DATA XREF: .rdata:000000014005E72C↑o
                                        ; .rdata:000000014005E740↑o ...
                mov     [rsp+68h+var_28], rdi
                mov     edi, ebx
                mov     [rsp+68h+var_30], r14
                mov     [rsp+68h+var_38], r15
                mov     r15d, ebx
                mov     [rsp+68h+var_48], rax

loc_14027F636:                          ; CODE XREF: sub_14027F5E0+9F↓j
                mov     rcx, r12
                call    sub_1402805F0
                mov     r14, rax
                mov     [rsp+68h+arg_18], rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                test    r14b, 1
                jnz     loc_14027F787
                bt      r14, 0Ah
                jb      loc_14027FD55
                bt      r14, 0Bh
                jnb     short loc_14027F6E0
                xor     edx, edx
                mov     rcx, r12
                call    sub_1402A886C
                mov     r15, rax
                test    rax, rax
                jz      short loc_14027F636
                movzx   eax, byte ptr [rax+22h]
                mov     edi, 1
                test    al, 28h
                jnz     loc_14027FD4B
                mov     rdx, [r15+10h]
                movzx   ecx, dl
                shr     cl, 1
                test    dil, cl
                jz      loc_14027FD4B
                mov     rsi, rdx
                cmp     [r15+20h], bx
                jnz     short loc_14027F6D3
                and     al, 7
                cmp     al, 3
                jnz     short loc_14027F6D3
                xor     edx, edx
                mov     rcx, r15
                call    sub_14022EF40
                and     qword ptr [r15+10h], 0FFFFFFFFFFFFFFFDh
                lea     edx, [rdi+7]
                mov     rcx, r15
                call    sub_140279270
                jmp     loc_14027FD4B
; ---------------------------------------------------------------------------

loc_14027F6D3:                          ; CODE XREF: sub_14027F5E0+CC↑j
                                        ; sub_14027F5E0+D2↑j
                and     rdx, 0FFFFFFFFFFFFFFFDh
                mov     [r15+10h], rdx
                jmp     loc_14027FD4B
; ---------------------------------------------------------------------------

loc_14027F6E0:                          ; CODE XREF: sub_14027F5E0+8D↑j
                movzx   eax, r14b
                shr     al, 1
                test    al, 1
                jz      loc_14027FD4B
                mov     rsi, r14
                mov     rcx, r12
                and     rsi, 0FFFFFFFFFFFFFFFDh
                mov     [rsp+68h+arg_18], rsi
                mov     rbx, rsi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14027F766
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027F737
                cmp     byte ptr cs:word_140C4DE88+1, dil
                mov     edx, 1
                jnz     short loc_14027F768
                test    dl, sil
                jz      short loc_14027F768
                mov     rax, 8000000000000000h
                or      rbx, rax
                jmp     short loc_14027F768
; ---------------------------------------------------------------------------

loc_14027F737:                          ; CODE XREF: sub_14027F5E0+133↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027F766
                test    sil, 1
                jz      short loc_14027F766
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_14027F766:                          ; CODE XREF: sub_14027F5E0+12A↑j
                                        ; sub_14027F5E0+171↑j ...
                xor     edx, edx

loc_14027F768:                          ; CODE XREF: sub_14027F5E0+141↑j
                                        ; sub_14027F5E0+146↑j ...
                mov     [r12], rbx
                mov     rsi, r14
                test    edx, edx
                jz      loc_14027FD4B
                mov     rdx, rbx
                mov     rcx, r12
                call    sub_140349620
                jmp     loc_14027FD4B
; ---------------------------------------------------------------------------

loc_14027F787:                          ; CODE XREF: sub_14027F5E0+77↑j
                mov     r11, 0FFFFF6FB7DBED000h
                mov     rax, r11
                lea     rcx, [rsp+68h+arg_18]
                mov     r10, 0FFFFF6FB7DBED7F8h
                cmp     rcx, rax
                jb      short loc_14027F81B
                mov     rax, r10
                lea     rcx, [rsp+68h+arg_18]
                cmp     rcx, rax
                ja      short loc_14027F81B
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027F81B
                test    r14b, 20h
                jz      short loc_14027F7D0
                test    r14b, 42h
                jnz     short loc_14027F81B

loc_14027F7D0:                          ; CODE XREF: sub_14027F5E0+1E8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14027F81B
                lea     rax, [rsp+68h+arg_18]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, r14
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r14
                test    al, 42h
                mov     r14, rdx
                cmovnz  r14, rdx

loc_14027F81B:                          ; CODE XREF: sub_14027F5E0+1C9↑j
                                        ; sub_14027F5E0+1D9↑j ...
                shr     r14, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     r14, rax
                lea     r14, [r14+r14*2]
                shl     r14, 4
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [r14+rax]
                shr     rax, 32h
                and     eax, 1
                jz      loc_14027FD4B
                mov     rax, 0FFFFFA8000000000h
                lea     r15, [r14+rax]
                mov     rcx, r15
                call    sub_1403F41D8
                mov     rdx, 0FFFFF68000000000h
                test    eax, eax
                jz      short loc_14027F885
                mov     rbx, [r13+8]
                test    rbx, rbx
                jz      loc_14027FD4B
                jmp     loc_14027FCBD
; ---------------------------------------------------------------------------

loc_14027F885:                          ; CODE XREF: sub_14027F5E0+291↑j
                mov     rax, 0FFFFFA8000000008h
                mov     rax, [r14+rax]
                mov     rcx, 8000000000000000h
                or      rax, rcx
                cmp     rax, r12
                jnz     loc_14027FD4B
                mov     edi, 1
                mov     [rsp+68h+arg_10], ebx
                mov     rbx, 0FFFFFA8000000018h
                lock bts qword ptr [r14+rbx], 3Fh ; '?'
                jnb     short loc_14027F90D
                nop     dword ptr [rax+rax+00000000h]

loc_14027F8D0:                          ; CODE XREF: sub_14027F5E0+304↓j
                                        ; sub_14027F5E0+30D↓j
                lea     rcx, [rsp+68h+arg_10]
                call    sub_1402C8C70
                mov     rax, [r14+rbx]
                test    rax, rax
                js      short loc_14027F8D0
                lock bts qword ptr [r14+rbx], 3Fh ; '?'
                jb      short loc_14027F8D0
                mov     r10, 0FFFFF6FB7DBED7F8h
                mov     r11, 0FFFFF6FB7DBED000h
                mov     rdx, 0FFFFF68000000000h

loc_14027F90D:                          ; CODE XREF: sub_14027F5E0+2E6↑j
                mov     r9, 0FFFFFA8000000022h
                test    byte ptr [r14+r9], 8
                jnz     loc_14027FD4B
                mov     rax, 0FFFFFA8000000010h
                mov     rcx, [r14+rax]
                lea     rbx, [r14+rax]
                movzx   eax, cl
                shr     al, 1
                test    dil, al
                jz      short loc_14027F948
                mov     rsi, rcx
                and     rcx, 0FFFFFFFFFFFFFFFDh
                mov     [rbx], rcx

loc_14027F948:                          ; CODE XREF: sub_14027F5E0+35C↑j
                cmp     [r13+90h], ebp
                jnz     loc_14027FA2C
                mov     rax, 0FFFFFA8000000020h
                cmp     [r14+rax], di
                jnz     loc_14027FD4B
                mov     rax, [rsp+68h+var_40]
                movzx   eax, byte ptr [rax+0B8h]
                test    al, 7
                jnz     loc_14027FA2C
                mov     r8, r12
                shl     r8, 19h
                mov     rax, rdx
                shl     rax, 19h
                sub     r8, rax
                mov     rax, 0FFFFFFFFF000h
                sar     r8, 10h
                and     r8, rax
                shr     r8, 9
                mov     rax, rdx
                add     r8, rax
                mov     rdx, [r8]
                mov     rax, r11
                cmp     r8, rax
                jb      short loc_14027FA1C
                mov     rax, r10
                cmp     r8, rax
                ja      short loc_14027FA1C
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027FA1C
                test    dil, dl
                jz      short loc_14027FA1C
                test    dl, 20h
                jz      short loc_14027F9D5
                test    dl, 42h
                jnz     short loc_14027FA1C

loc_14027F9D5:                          ; CODE XREF: sub_14027F5E0+3EE↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14027FA1C
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14027FA1C
                or      rdx, 42h

loc_14027FA1C:                          ; CODE XREF: sub_14027F5E0+3D3↑j
                                        ; sub_14027F5E0+3DB↑j ...
                shr     rdx, 38h
                and     dl, 0Fh
                cmp     dl, 8
                jz      loc_14027FD4B

loc_14027FA2C:                          ; CODE XREF: sub_14027F5E0+36F↑j
                                        ; sub_14027F5E0+398↑j
                test    byte ptr [rsp+68h+arg_18], 42h
                movzx   ecx, byte ptr [r14+r9]
                jnz     short loc_14027FA53
                test    cl, 10h
                jnz     short loc_14027FA53
                mov     eax, [rbx]
                shr     al, 2
                test    dil, al
                jz      loc_14027FD4B
                mov     edi, 3

loc_14027FA53:                          ; CODE XREF: sub_14027F5E0+459↑j
                                        ; sub_14027F5E0+45E↑j
                xor     edx, edx
                test    cl, 10h
                jnz     short loc_14027FA96
                mov     eax, [rbx]
                movzx   edx, cl
                bt      rax, 0Ah
                jb      short loc_14027FA8C
                test    cl, 8
                jnz     short loc_14027FA8C
                xor     r8d, r8d
                mov     rcx, rbx
                lea     edx, [r8+1]
                call    sub_140338C90
                mov     rbp, rax
                mov     r9, 0FFFFFA8000000022h
                movzx   edx, byte ptr [r14+r9]

loc_14027FA8C:                          ; CODE XREF: sub_14027F5E0+484↑j
                                        ; sub_14027F5E0+489↑j
                or      dl, 10h
                mov     [r14+r9], dl
                movzx   ecx, dl

loc_14027FA96:                          ; CODE XREF: sub_14027F5E0+478↑j
                shr     cl, 6
                cmp     cl, 1
                jz      short loc_14027FAAF
                cmp     cl, 2
                jnz     short loc_14027FAA8
                or      edi, 4
                jmp     short loc_14027FAAF
; ---------------------------------------------------------------------------

loc_14027FAA8:                          ; CODE XREF: sub_14027F5E0+4C1↑j
                test    cl, cl
                jnz     short loc_14027FAAF
                or      edi, 8

loc_14027FAAF:                          ; CODE XREF: sub_14027F5E0+4BC↑j
                                        ; sub_14027F5E0+4C6↑j ...
                cmp     dword ptr [r13+20h], 0FFFFFFFFh
                mov     r10, [rsp+68h+var_48]
                jnz     loc_14027FC1A
                mov     eax, [r10+484h]
                mov     rdx, 0FFFFFFFFFFFFFFF7h
                mov     r9, 0FFFFFFFFFFFFF7FFh
                mov     r8, [r10+rax*8+1B20h]
                mov     rax, [rbx]
                mov     rcx, rax
                and     ecx, 400h
                cmovnz  rdx, r9
                and     rdx, rax
                test    rcx, rcx
                jnz     short loc_14027FAF8
                and     rdx, 0FFFFFFFFFFFFFFF9h

loc_14027FAF8:                          ; CODE XREF: sub_14027F5E0+512↑j
                test    r8, r8
                jz      short loc_14027FB70
                movzx   r9d, word ptr [r8+0CCh]
                test    rdx, rdx
                jnz     short loc_14027FB1E
                mov     rcx, 0FFFFFFFF00000000h
                call    sub_14027C6C0
                mov     rdx, rax
                jmp     short loc_14027FB5E
; ---------------------------------------------------------------------------

loc_14027FB1E:                          ; CODE XREF: sub_14027F5E0+528↑j
                mov     rcx, cs:qword_140C4DDC0
                test    rcx, rcx
                jz      short loc_14027FB3E
                test    dl, 10h
                jnz     short loc_14027FB3A
                mov     rax, rcx
                not     rax
                and     rdx, rax
                jmp     short loc_14027FB3E
; ---------------------------------------------------------------------------

loc_14027FB3A:                          ; CODE XREF: sub_14027F5E0+54D↑j
                and     rdx, 0FFFFFFFFFFFFFFEFh

loc_14027FB3E:                          ; CODE XREF: sub_14027F5E0+548↑j
                                        ; sub_14027F5E0+558↑j
                mov     rax, 0FFFFFFFF00000000h
                or      rdx, rax
                test    rcx, rcx
                jz      short loc_14027FB5E
                test    rcx, rdx
                jnz     short loc_14027FB5A
                or      rdx, rcx
                jmp     short loc_14027FB5E
; ---------------------------------------------------------------------------

loc_14027FB5A:                          ; CODE XREF: sub_14027F5E0+573↑j
                or      rdx, 10h

loc_14027FB5E:                          ; CODE XREF: sub_14027F5E0+53C↑j
                                        ; sub_14027F5E0+56E↑j ...
                mov     rax, r9
                shl     rax, 0Ch
                xor     rax, rdx
                and     eax, 0F000h
                xor     rdx, rax

loc_14027FB70:                          ; CODE XREF: sub_14027F5E0+51B↑j
                mov     [rsp+68h+arg_18], rdx
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     rbx, rax
                jb      loc_14027FC17
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rbx, rax
                ja      short loc_14027FC17
                call    sub_140349680
                test    eax, eax
                jz      short loc_14027FBDC
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     rax, rdx
                jnz     short loc_14027FBC7
                test    dl, 1
                jz      short loc_14027FBC7
                mov     r8, 8000000000000000h
                or      rax, r8

loc_14027FBC7:                          ; CODE XREF: sub_14027F5E0+5D3↑j
                                        ; sub_14027F5E0+5D8↑j
                mov     rdx, rax
                mov     [rbx], rax
                mov     rcx, rbx
                call    sub_140349620
                mov     r10, [rsp+68h+var_48]
                jmp     short loc_14027FC1A
; ---------------------------------------------------------------------------

loc_14027FBDC:                          ; CODE XREF: sub_14027F5E0+5C7↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14027FC17
                mov     rax, rdx
                mov     r8, 8000000000000000h
                or      rax, r8
                movzx   ecx, dl
                and     cl, 1
                cmovz   rax, rdx
                mov     [rbx], rax
                jmp     short loc_14027FC1A
; ---------------------------------------------------------------------------

loc_14027FC17:                          ; CODE XREF: sub_14027F5E0+5A8↑j
                                        ; sub_14027F5E0+5BE↑j ...
                mov     [rbx], rdx

loc_14027FC1A:                          ; CODE XREF: sub_14027F5E0+4D9↑j
                                        ; sub_14027F5E0+5FA↑j ...
                mov     rax, 0FFFFFA8000000018h
                mov     rcx, 7FFFFFFFFFFFFFFFh
                lock and [r14+rax], rcx
                mov     ecx, [r13+20h]
                and     edi, 0FFFFFFFEh
                mov     rbx, [r13+0]
                cmp     ecx, 0FFFFFFFFh
                jz      short loc_14027FCB3
                mov     r14d, ecx
                shl     r14, 4
                add     r14, r13
                cmp     ecx, 5
                jnb     loc_14027FD4B
                cmp     dword ptr [r14+30h], 0
                jz      loc_14027FD4B
                lea     r9, [r14+28h]
                mov     r8d, 80h
                mov     rdx, r12
                mov     rcx, r10
                call    sub_1402C9190
                mov     rax, cs:qword_140C4DDC0
                mov     rdx, [r14+28h]
                test    rax, rax
                jz      short loc_14027FC91
                test    dl, 10h
                jnz     short loc_14027FC91
                not     rax
                and     rdx, rax

loc_14027FC91:                          ; CODE XREF: sub_14027F5E0+6A4↑j
                                        ; sub_14027F5E0+6A9↑j
                mov     rcx, [r14+28h]
                shr     rdx, 20h
                inc     rdx
                call    sub_1402C98B0
                add     dword ptr [r14+30h], 0FFFFFFFFh
                mov     [r14+28h], rax
                jnz     short loc_14027FCB0
                inc     dword ptr [r13+20h]

loc_14027FCB0:                          ; CODE XREF: sub_14027F5E0+6CA↑j
                or      edi, 10h

loc_14027FCB3:                          ; CODE XREF: sub_14027F5E0+661↑j
                mov     rdx, 0FFFFF68000000000h

loc_14027FCBD:                          ; CODE XREF: sub_14027F5E0+2A0↑j
                mov     r8, [rbx+10h]
                cmp     r8, [rbx+8]
                jnb     loc_14027FD4B
                shl     r12, 19h
                mov     rax, rdx
                shl     rax, 19h
                mov     r9, r8
                sub     r12, rax
                shl     r9, 4
                add     r9, [rbx]
                sar     r12, 10h
                test    r8, r8
                jz      short loc_14027FD00
                mov     r10, [r9-8]
                lea     rdx, [r9-8]
                mov     rcx, [r9-10h]
                add     rcx, r10
                cmp     rcx, r12
                jz      short loc_14027FD17

loc_14027FD00:                          ; CODE XREF: sub_14027F5E0+70A↑j
                lea     rax, [r8+1]
                mov     [rbx+10h], rax
                lea     rdx, [r9+8]
                xor     eax, eax
                mov     [r9], r12
                mov     [rdx], rax
                mov     r10d, eax

loc_14027FD17:                          ; CODE XREF: sub_14027F5E0+71E↑j
                lea     rax, [r10+1000h]
                mov     [rdx], rax
                inc     qword ptr [rbx+18h]
                test    dil, 2
                jz      short loc_14027FD32
                inc     qword ptr [r13+88h]

loc_14027FD32:                          ; CODE XREF: sub_14027F5E0+749↑j
                test    dil, 4
                jz      short loc_14027FD3E
                inc     qword ptr [r13+78h]
                jmp     short loc_14027FD4B
; ---------------------------------------------------------------------------

loc_14027FD3E:                          ; CODE XREF: sub_14027F5E0+756↑j
                test    dil, 8
                jz      short loc_14027FD4B
                inc     qword ptr [r13+80h]

loc_14027FD4B:                          ; CODE XREF: sub_14027F5E0+AC↑j
                                        ; sub_14027F5E0+BE↑j ...
                mov     rax, 7FFFFFFFFFFFFFFFh

loc_14027FD55:                          ; CODE XREF: sub_14027F5E0+82↑j
                mov     r14, [rsp+68h+var_30]
                test    dil, 1
                mov     rdi, [rsp+68h+var_28]
                jz      short loc_14027FD6A

loc_14027FD65:                          ; DATA XREF: .pdata:00000001400CE9E8↑o
                                        ; .pdata:00000001400CE9F4↑o
                lock and [r15+18h], rax

loc_14027FD6A:                          ; CODE XREF: sub_14027F5E0+783↑j
                mov     r15, [rsp+68h+var_38]
                mov     rbx, [rsp+68h+var_48]
                test    rsi, rsi
                jz      short loc_14027FD98

loc_14027FD79:                          ; DATA XREF: .pdata:00000001400CE9F4↑o
                                        ; .pdata:00000001400CEA00↑o
                movzx   eax, sil
                mov     rdx, rsi
                and     rdx, 0FFFFFFFFFFFFFFFBh
                shr     al, 2
                and     al, 1
                mov     rcx, rbx
                cmovz   rdx, rsi
                xor     r8d, r8d
                call    sub_14020B2C0

loc_14027FD98:                          ; CODE XREF: sub_14027F5E0+797↑j
                mov     rsi, [rsp+68h+var_20]
                test    rbp, rbp
                jz      short loc_14027FDB0

loc_14027FDA2:                          ; DATA XREF: .pdata:00000001400CEA00↑o
                                        ; .pdata:00000001400CEA0C↑o
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_14020B2C0

loc_14027FDB0:                          ; CODE XREF: sub_14027F5E0+7C0↑j
                mov     rbx, [rsp+68h+arg_8]
                xor     eax, eax
                mov     rbp, [rsp+68h+var_18]
                add     rsp, 58h
                pop     r13
                pop     r12
                retn
; ---------------------------------------------------------------------------
algn_14027FDC5:                         ; DATA XREF: .pdata:00000001400CEA0C↑o
                                        ; .pdata:00000001400CEA18↑o
                align 2

loc_14027FDC6:                          ; CODE XREF: sub_14027F5E0+1E↑j
                xor     eax, eax
                add     rsp, 58h
                pop     r13
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14027F5E0   endp

algn_14027FDD2:                         ; DATA XREF: .pdata:00000001400CEA18↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14027FDE0   proc near               ; CODE XREF: sub_14020A8C8+29D↑p
                                        ; sub_14028C190+178↓p ...

var_A0          = dword ptr -0A0h
var_9C          = byte ptr -9Ch
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_38          = qword ptr -38h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014044349C SIZE 000004E8 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_38], rax
                movzx   r12d, r9b
                mov     [rbp+57h+var_9C], r9b
                mov     r9, rdx
                mov     [rbp+57h+var_98], r8d
                shr     r9, 9
                xor     r10d, r10d
                mov     rax, 7FFFFFFFF8h
                mov     [rbp+57h+var_78], r10
                and     r9, rax
                mov     r11, 0FFFFF68000000000h
                mov     rsi, rdx
                mov     r15, rcx
                xor     r14b, r14b
                mov     rax, r11
                add     r9, rax
                mov     [rbp+57h+var_94], r10d
                mov     [rbp+57h+var_90], r9
                mov     rax, r11
                mov     rcx, 0FFFFF6FFFFFFFFFFh
                cmp     rdx, rax
                jnb     loc_1402802A1

loc_14027FE68:                          ; CODE XREF: sub_14027FDE0+4C7↓j
                movzx   eax, byte ptr [r15+0B8h]
                mov     r13d, 1
                mov     edi, r13d
                mov     [rbp+57h+var_A0], r13d

loc_14027FE7D:                          ; CODE XREF: sub_14027FDE0+4E4↓j
                                        ; sub_14027FDE0+1C36C0↓j
                and     al, 7
                cmp     al, 2
                jz      loc_140280367
                lea     rbx, [r15+100h]

loc_14027FE8E:                          ; CODE XREF: sub_14027FDE0+58E↓j
                mov     [rbp+57h+var_80], rbx
                mov     [rbp+57h+var_88], r10
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404434A5

loc_14027FEAF:                          ; CODE XREF: sub_14027FDE0+1C36C9↓j
                                        ; sub_14027FDE0+1C36D8↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_1404434D3
                lea     rdx, [rbp+57h+var_88]
                xchg    rdx, [rbx]
                test    rdx, rdx
                jnz     loc_140280478

loc_14027FECC:                          ; CODE XREF: sub_14027FDE0+6AC↓j
                cmp     r12b, 8
                jz      loc_14028040F

loc_14027FED6:                          ; CODE XREF: sub_14027FDE0+645↓j
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rdx, 0FFFFF6FB7DBED7F8h
                mov     r12, 0FFFFF6FB40000000h
                test    r8d, r8d
                jz      loc_140280170

loc_14027FEFD:                          ; CODE XREF: sub_14027FDE0+62A↓j
                test    edi, edi
                jz      loc_1402804C0
                mov     rcx, [r9]
                mov     r12, r10
                mov     rax, rax
                cmp     r9, rax
                jnb     loc_140280305

loc_14027FF17:                          ; CODE XREF: sub_14027FDE0+52B↓j
                                        ; sub_14027FDE0+1C371F↓j ...
                mov     r14, rcx
                shr     rcx, 38h
                shr     r14, 3Ch
                and     cl, 0Fh
                and     r14b, 7
                shl     r14b, 4
                or      r14b, cl
                mov     ecx, r10d
                movzx   ebx, r14b
                and     bl, 0Fh
                cmp     bl, 8
                cmovz   ecx, r13d
                mov     [rbp+57h+var_94], ecx

loc_14027FF44:                          ; CODE XREF: sub_14027FDE0+725↓j
                cmp     bl, 8
                jz      loc_140280443

loc_14027FF4D:                          ; CODE XREF: sub_14027FDE0+66B↓j
                test    ecx, ecx
                jnz     loc_14028001C
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                cmp     rsi, rax
                jnb     loc_1402802CF

loc_14027FF6B:                          ; CODE XREF: sub_14027FDE0+4FF↓j
                mov     rdx, rsi
                mov     rax, 0FFFFF6FB40000000h
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     rax, rax
                add     rdx, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rdi, [rdx]
                mov     rax, rax
                cmp     rdx, rax
                jnb     loc_140280316

loc_14027FFA1:                          ; CODE XREF: sub_14027FDE0+546↓j
                                        ; sub_14027FDE0+1C37B8↓j ...
                lea     rcx, [rbp+57h+var_70]
                mov     [rbp+57h+var_70], rdi
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140443628

loc_14027FFB6:                          ; CODE XREF: sub_14027FDE0+1C3852↓j
                                        ; sub_14027FDE0+1C386F↓j ...
                mov     rax, 0FFFFFFFFFh
                shr     rdi, 0Ch
                and     rdi, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rdx, [rdi+rdi*2]
                shl     rdx, 4
                mov     rax, rax
                add     rdx, rax
                mov     r8, [rdx]
                mov     rax, r8
                mov     rcx, r8
                shr     rax, 0Eh
                and     al, 7
                shr     rcx, 4
                and     ecx, 3FFh
                jz      short loc_140280008
                cmp     bl, al
                jz      loc_140280287
                ja      loc_1404436C5

loc_140280008:                          ; CODE XREF: sub_14027FDE0+218↑j
                                        ; sub_14027FDE0+4BC↓j ...
                mov     edi, [rbp+57h+var_A0]

loc_14028000B:                          ; CODE XREF: sub_14027FDE0+505↓j
                movzx   eax, bl
                dec     qword ptr [r15+rax*8+28h]
                cmp     bl, 7
                jz      loc_140280593

loc_14028001C:                          ; CODE XREF: sub_14027FDE0+16F↑j
                                        ; sub_14027FDE0+7C2↓j
                movzx   eax, [rbp+57h+var_9C]
                movzx   ebx, al
                dec     al
                cmp     al, 5
                ja      short loc_14028003A
                mov     rcx, [rbp+57h+var_90]
                call    sub_1402805F0
                test    al, 20h
                jnz     loc_1402805A7

loc_14028003A:                          ; CODE XREF: sub_14027FDE0+247↑j
                                        ; sub_14027FDE0+7E8↓j ...
                test    r12, r12
                jnz     loc_140280491
                mov     r8, [rbp+57h+var_90]
                movzx   eax, r14b
                xor     al, bl
                mov     r9, 80FFFFFFFFFFFFFFh
                and     al, 0Fh
                xor     r14b, al
                mov     rax, [r8]
                movzx   edx, r14b
                and     edx, 7Fh
                shl     rdx, 38h

loc_14028006A:                          ; CODE XREF: sub_14027FDE0+298↓j
                mov     rcx, rax
                and     rcx, r9
                or      rcx, rdx
                lock cmpxchg [r8], rcx
                jnz     short loc_14028006A

loc_14028007A:                          ; CODE XREF: sub_14027FDE0+6C8↓j
                cmp     bl, 8
                jnb     loc_140280430
                test    edi, edi
                jz      loc_1402804AD

loc_14028008B:                          ; CODE XREF: sub_14027FDE0+6D5↓j
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                cmp     rsi, rax
                jnb     loc_1402802EA

loc_1402800A1:                          ; CODE XREF: sub_14027FDE0+51A↓j
                mov     rdx, rsi
                mov     rax, 0FFFFF6FB40000000h
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     rax, rax
                add     rdx, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rdi, [rdx]
                mov     rax, rax
                cmp     rdx, rax
                jnb     loc_140280331

loc_1402800D7:                          ; CODE XREF: sub_14027FDE0+561↓j
                                        ; sub_14027FDE0+1C390F↓j ...
                lea     rcx, [rbp+57h+var_68]
                mov     [rbp+57h+var_68], rdi
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14044377F

loc_1402800EC:                          ; CODE XREF: sub_14027FDE0+1C39A9↓j
                                        ; sub_14027FDE0+1C39C6↓j ...
                mov     rax, 0FFFFFFFFFh
                shr     rdi, 0Ch
                and     rdi, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rdx, [rdi+rdi*2]
                shl     rdx, 4
                mov     rax, rax
                add     rdx, rax
                mov     r8, [rdx]
                mov     rax, r8
                mov     rcx, r8
                shr     rax, 0Eh
                and     al, 7
                shr     rcx, 4
                and     ecx, 3FFh
                jz      short loc_14028013E
                cmp     bl, al
                jz      loc_14028026D
                ja      loc_140280373

loc_14028013E:                          ; CODE XREF: sub_14027FDE0+34E↑j
                                        ; sub_14027FDE0+4A2↓j ...
                mov     edi, [rbp+57h+var_A0]

loc_140280141:                          ; CODE XREF: sub_14027FDE0+520↓j
                movzx   eax, bl
                inc     qword ptr [r15+rax*8+28h]
                cmp     bl, 7
                jz      loc_140280450

loc_140280152:                          ; CODE XREF: sub_14027FDE0:loc_140280430↓j
                                        ; sub_14027FDE0+65E↓j ...
                add     [rbp+57h+var_98], 0FFFFFFFFh
                mov     r10d, 0
                mov     r9, [rbp+57h+var_90]
                jnz     loc_1402803F6
                mov     r12, 0FFFFF6FB40000000h

loc_140280170:                          ; CODE XREF: sub_14027FDE0+117↑j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14044381C
                prefetchw byte ptr [rbp+57h+var_88]
                mov     rax, [rbp+57h+var_88]
                xor     ebx, ebx
                test    rax, rax
                jnz     loc_140280469
                mov     rcx, [rbp+57h+var_80]
                lea     rax, [rbp+57h+var_88]
                lock cmpxchg [rcx], rbx
                lea     rcx, [rbp+57h+var_88]
                cmp     rax, rcx
                jnz     loc_140280460

loc_1402801AA:                          ; CODE XREF: sub_14027FDE0+693↓j
                                        ; sub_14027FDE0+1C3A4A↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14044382F

loc_1402801C3:                          ; CODE XREF: sub_14027FDE0+1C3A53↓j
                                        ; sub_14027FDE0+1C3A62↓j ...
                test    edi, edi
                jz      short loc_140280242
                mov     rdx, rsi
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     rax, r12
                add     rdx, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rbx, [rdx]
                mov     rax, rax
                cmp     rdx, rax
                jnb     loc_14028034C

loc_1402801F3:                          ; CODE XREF: sub_14027FDE0+57C↓j
                                        ; sub_14027FDE0+1C3A7D↓j ...
                lea     rcx, [rbp+57h+var_60]
                mov     [rbp+57h+var_60], rbx
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404438EA

loc_140280208:                          ; CODE XREF: sub_14027FDE0+1C3B14↓j
                                        ; sub_14027FDE0+1C3B31↓j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rbx, [rbx+rbx*2]
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     eax, [rbx]
                shr     rax, 4
                test    eax, 3FFh
                jz      loc_140280393

loc_140280242:                          ; CODE XREF: sub_14027FDE0+3E5↑j
                                        ; sub_14027FDE0+5E4↓j ...
                mov     eax, r13d

loc_140280245:                          ; CODE XREF: sub_14027FDE0+1C3710↓j
                mov     rcx, [rbp+57h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0C0h+arg_10]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14028026D:                          ; CODE XREF: sub_14027FDE0+352↑j
                inc     ecx
                shl     rcx, 4
                xor     rcx, r8
                and     ecx, 3FF0h
                xor     rcx, r8
                mov     [rdx], rcx
                jmp     loc_14028013E
; ---------------------------------------------------------------------------

loc_140280287:                          ; CODE XREF: sub_14027FDE0+21C↑j
                dec     ecx
                shl     rcx, 4
                xor     rcx, r8
                and     ecx, 3FF0h
                xor     rcx, r8
                mov     [rdx], rcx
                jmp     loc_140280008
; ---------------------------------------------------------------------------

loc_1402802A1:                          ; CODE XREF: sub_14027FDE0+82↑j
                mov     rax, rcx
                cmp     rsi, rax
                ja      loc_14027FE68
                movzx   eax, byte ptr [r15+0B8h]
                mov     edi, r10d
                mov     [rbp+57h+var_A0], r10d
                mov     r13d, 1
                test    al, 7
                jz      loc_14027FE7D
                jmp     loc_14044349C
; ---------------------------------------------------------------------------

loc_1402802CF:                          ; CODE XREF: sub_14027FDE0+185↑j
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     rsi, rax
                ja      loc_14027FF6B
                jmp     loc_14028000B
; ---------------------------------------------------------------------------

loc_1402802EA:                          ; CODE XREF: sub_14027FDE0+2BB↑j
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     rsi, rax
                ja      loc_1402800A1
                jmp     loc_140280141
; ---------------------------------------------------------------------------

loc_140280305:                          ; CODE XREF: sub_14027FDE0+131↑j
                mov     rax, rdx
                cmp     r9, rax
                ja      loc_14027FF17
                jmp     loc_1404434F5
; ---------------------------------------------------------------------------

loc_140280316:                          ; CODE XREF: sub_14027FDE0+1BB↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rdx, rax
                ja      loc_14027FFA1
                jmp     loc_14044358E
; ---------------------------------------------------------------------------

loc_140280331:                          ; CODE XREF: sub_14027FDE0+2F1↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rdx, rax
                ja      loc_1402800D7
                jmp     loc_1404436E5
; ---------------------------------------------------------------------------

loc_14028034C:                          ; CODE XREF: sub_14027FDE0+40D↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rdx, rax
                ja      loc_1402801F3
                jmp     loc_140443853
; ---------------------------------------------------------------------------

loc_140280367:                          ; CODE XREF: sub_14027FDE0+A1↑j
                lea     rbx, unk_140C4F640
                jmp     loc_14027FE8E
; ---------------------------------------------------------------------------

loc_140280373:                          ; CODE XREF: sub_14027FDE0+358↑j
                movzx   eax, bl
                and     r8, 0FFFFFFFFFFFE001Fh
                and     eax, 7
                shl     rax, 0Eh
                or      rax, r8
                or      rax, 10h
                mov     [rdx], rax
                jmp     loc_14028013E
; ---------------------------------------------------------------------------

loc_140280393:                          ; CODE XREF: sub_14027FDE0+45C↑j
                lea     r8, [rbp+57h+var_58]
                mov     rdx, rsi
                call    sub_1402FD640
                mov     cl, 8
                nop     dword ptr [rax+00h]
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_1402803B0:                          ; CODE XREF: sub_14027FDE0+5E2↓j
                add     cl, 0FFh
                movzx   eax, cl
                mov     r8d, [rbp+rax*4+57h+var_58]
                test    r8d, r8d
                jnz     short loc_1402803C9
                test    cl, cl
                jnz     short loc_1402803B0
                jmp     loc_140280242
; ---------------------------------------------------------------------------

loc_1402803C9:                          ; CODE XREF: sub_14027FDE0+5DE↑j
                movzx   edx, cl
                and     r8d, 3FFh
                mov     rcx, [rbx]
                and     edx, 7
                shl     rdx, 0Ah
                and     rcx, 0FFFFFFFFFFFE000Fh
                or      rdx, r8
                shl     rdx, 4
                or      rdx, rcx
                mov     [rbx], rdx
                jmp     loc_140280242
; ---------------------------------------------------------------------------

loc_1402803F6:                          ; CODE XREF: sub_14027FDE0+380↑j
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rdx, 0FFFFF6FB7DBED7F8h
                jmp     loc_14027FEFD
; ---------------------------------------------------------------------------

loc_14028040F:                          ; CODE XREF: sub_14027FDE0+F0↑j
                mov     rax, [r15+10h]
                mov     ecx, r8d
                mov     rax, [rax+20h]
                add     rax, 6
                add     rcx, rax
                cmp     [r15+70h], rcx
                jnb     loc_14027FED6
                jmp     loc_1404434E5
; ---------------------------------------------------------------------------

loc_140280430:                          ; CODE XREF: sub_14027FDE0+29D↑j
                jnz     loc_140280152
                mov     rax, [r15+10h]
                inc     qword ptr [rax+20h]
                jmp     loc_140280152
; ---------------------------------------------------------------------------

loc_140280443:                          ; CODE XREF: sub_14027FDE0+167↑j
                mov     rax, [r15+10h]
                dec     qword ptr [rax+20h]
                jmp     loc_14027FF4D
; ---------------------------------------------------------------------------

loc_140280450:                          ; CODE XREF: sub_14027FDE0+36C↑j
                mov     rdx, r13
                mov     rcx, r15
                call    sub_1402898C0
                jmp     loc_140280152
; ---------------------------------------------------------------------------

loc_140280460:                          ; CODE XREF: sub_14027FDE0+3C4↑j
                lea     rcx, [rbp+57h+var_88]
                call    sub_140313680

loc_140280469:                          ; CODE XREF: sub_14027FDE0+3AA↑j
                mov     [rbp+57h+var_88], rbx
                lock xor qword ptr [rax+8], 1
                jmp     loc_1402801AA
; ---------------------------------------------------------------------------

loc_140280478:                          ; CODE XREF: sub_14027FDE0+E6↑j
                lea     rcx, [rbp+57h+var_88]
                call    sub_14025FC20

loc_140280481:                          ; CODE XREF: sub_14027FDE0+1C3700↓j
                mov     r8d, [rbp+57h+var_98]
                xor     r10d, r10d
                mov     r9, [rbp+57h+var_90]
                jmp     loc_14027FECC
; ---------------------------------------------------------------------------

loc_140280491:                          ; CODE XREF: sub_14027FDE0+25D↑j
                mov     rax, [r12]
                movzx   ecx, bl
                add     rcx, rcx
                xor     rcx, rax
                and     ecx, 0Eh
                xor     rcx, rax
                mov     [r12], rcx
                jmp     loc_14028007A
; ---------------------------------------------------------------------------

loc_1402804AD:                          ; CODE XREF: sub_14027FDE0+2A5↑j
                test    byte ptr [r15+0B8h], 7
                jz      loc_14028008B
                jmp     loc_140280152
; ---------------------------------------------------------------------------

loc_1402804C0:                          ; CODE XREF: sub_14027FDE0+11F↑j
                mov     rbx, [r9]
                mov     rcx, r9
                call    sub_1402433C0
                test    eax, eax
                jnz     short loc_14028050A

loc_1402804CF:                          ; CODE XREF: sub_14027FDE0+734↓j
                                        ; sub_14027FDE0+74D↓j ...
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     r12, [rbx+rbx*2]
                shl     r12, 4
                mov     rax, rax
                mov     ecx, [rbp+57h+var_94]
                add     r12, rax
                movzx   ebx, byte ptr [r12]
                shr     bl, 1
                and     bl, 7
                jmp     loc_14027FF44
; ---------------------------------------------------------------------------

loc_14028050A:                          ; CODE XREF: sub_14027FDE0+6ED↑j
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1402804CF
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_1402804CF
                test    bl, 1
                jz      short loc_1402804CF
                test    bl, 20h
                jnz     loc_1402805D5

loc_14028053D:                          ; CODE XREF: sub_14027FDE0+7FE↓j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      loc_1402804CF
                mov     rax, [rbp+57h+var_90]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      loc_1402804CF
                or      rbx, 42h
                jmp     loc_1402804CF
; ---------------------------------------------------------------------------

loc_140280593:                          ; CODE XREF: sub_14027FDE0+236↑j
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                mov     rcx, r15
                call    sub_1402898C0
                jmp     loc_14028001C
; ---------------------------------------------------------------------------

loc_1402805A7:                          ; CODE XREF: sub_14027FDE0+254↑j
                mov     rax, 7FFFFFFEFFFFh
                cmp     rsi, rax
                ja      short loc_1402805CE
                test    byte ptr [r15+0B8h], 7
                jnz     short loc_1402805CE
                cmp     qword ptr [r15+270h], 0
                jnz     loc_14028003A

loc_1402805CE:                          ; CODE XREF: sub_14027FDE0+7D4↑j
                                        ; sub_14027FDE0+7DE↑j
                xor     bl, bl
                jmp     loc_14028003A
; ---------------------------------------------------------------------------

loc_1402805D5:                          ; CODE XREF: sub_14027FDE0+757↑j
                test    bl, 42h
                jnz     loc_1402804CF
                jmp     loc_14028053D
; } // starts at 14027FDE0
sub_14027FDE0   endp

; ---------------------------------------------------------------------------
algn_1402805E3:                         ; DATA XREF: .rdata:000000014005E7B0↑o
                                        ; .pdata:00000001400CEA24↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402805F0   proc near               ; CODE XREF: sub_140207C5C+AB↑p
                                        ; sub_140207E6C+9A↑p ...

; FUNCTION CHUNK AT 000000014041D658 SIZE 00000050 BYTES

                mov     rax, [rcx]
                mov     rdx, 0FFFFF6FB7DBED000h
                cmp     rcx, rdx
                jnb     short loc_140280604

locret_140280602:                       ; CODE XREF: sub_1402805F0+21↓j
                                        ; sub_1402805F0+2D↓j ...
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140280604:                          ; CODE XREF: sub_1402805F0+10↑j
                mov     rdx, 0FFFFF6FB7DBED7F8h
                cmp     rcx, rdx
                ja      short locret_140280602
                test    cs:dword_140CFC400, 0C00000h
                jz      short locret_140280602
                mov     rdx, gs:188h
                mov     r8, [rdx+0B8h]
                cmp     byte ptr [r8+390h], 1
                jz      short locret_140280602
                test    al, 1
                jz      short locret_140280602
                test    al, 20h
                jz      loc_14041D658
                test    al, 42h
                jnz     short locret_140280602
                jmp     loc_14041D658
sub_1402805F0   endp

; ---------------------------------------------------------------------------
algn_14028064E:                         ; DATA XREF: .pdata:00000001400CEA30↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140280660   proc near               ; DATA XREF: .pdata:00000001400CEA3C↑o
                                        ; PAGE:000000014098B2E8↓o

var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_198         = byte ptr -198h
var_194         = dword ptr -194h
var_190         = dword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = dword ptr -138h
var_134         = word ptr -134h
var_132         = word ptr -132h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = xmmword ptr -118h
var_108         = xmmword ptr -108h
var_F8          = xmmword ptr -0F8h
var_E8          = xmmword ptr -0E8h
var_D8          = xmmword ptr -0D8h
var_C8          = xmmword ptr -0C8h
var_B8          = xmmword ptr -0B8h
var_A8          = xmmword ptr -0A8h
var_98          = xmmword ptr -98h
var_78          = byte ptr -78h
var_48          = qword ptr -48h

; __unwind { // __GSHandlerCheck_SEH
                mov     r11, rsp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1D8h+var_48], rax
                mov     [rsp+1D8h+var_148], r8
                mov     [rsp+1D8h+var_140], rdx
                mov     rdi, rcx
                xor     r13d, r13d
                mov     [rsp+1D8h+var_188], r13
                mov     [rsp+1D8h+var_178], r13
                mov     [rsp+1D8h+var_180], r13
                xorps   xmm0, xmm0
                movups  xmmword ptr [r11-78h], xmm0
                movups  xmmword ptr [r11-68h], xmm0
                movups  xmmword ptr [r11-58h], xmm0
                xor     ecx, ecx
                mov     [rsp+1D8h+var_132], cx
                movups  [rsp+1D8h+var_118], xmm0
                movups  [rsp+1D8h+var_108], xmm0
                movups  [rsp+1D8h+var_F8], xmm0
                movups  [rsp+1D8h+var_E8], xmm0
                movups  [rsp+1D8h+var_D8], xmm0
                movups  [rsp+1D8h+var_C8], xmm0
                movups  [rsp+1D8h+var_B8], xmm0
                movups  [rsp+1D8h+var_A8], xmm0
                movups  [rsp+1D8h+var_98], xmm0
                mov     [r11-88h], rcx
                lea     rcx, [rsp+1D8h+var_180]
                mov     [rsp+1D8h+var_1A8], rcx
                lea     rcx, [rsp+1D8h+var_188]
                mov     [rsp+1D8h+var_1B0], rcx
                lea     rcx, [rsp+1D8h+var_178]
                mov     [rsp+1D8h+var_1B8], rcx
                mov     rcx, rdi
                call    sub_1406FD5BC
                mov     r12d, eax
                mov     [rsp+1D8h+var_194], eax
                test    eax, eax
                js      loc_140280E2E
                mov     r15d, r13d
                mov     [rsp+1D8h+var_160], r13
                mov     ebx, r13d
                mov     [rsp+1D8h+var_190], ebx
                mov     r14, [rsp+1D8h+var_188]
                dec     r14
                add     r14, [rsp+1D8h+var_178]
                and     r14, 0FFFFFFFFFFFFF000h
                mov     [rsp+1D8h+var_188], r14
                mov     rax, [rsp+1D8h+var_178]
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rsp+1D8h+var_150], rax
                mov     rsi, rax
                cmp     rdi, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1402807AB
                lea     rdx, [rsp+1D8h+var_78]
                mov     rcx, [rsp+1D8h+var_180]
                call    KeStackAttachProcess
                mov     ebx, 2
                mov     [rsp+1D8h+var_190], ebx

loc_1402807AB:                          ; CODE XREF: sub_140280660+12E↑j
                mov     [rsp+1D8h+var_130], 14h
                mov     [rsp+1D8h+var_138], 1
                mov     [rsp+1D8h+var_134], 4
                mov     [rsp+1D8h+var_128], r13
                mov     [rsp+1D8h+var_120], r13
                mov     rdi, r13
                xor     r9d, r9d
                mov     r8, r14
                mov     rdx, rsi
                mov     r14, [rsp+1D8h+var_180]
                mov     rcx, r14
                call    sub_14068459C
                mov     [rsp+1D8h+var_158], rax
                test    rax, rax
                jz      loc_140280DF7
                add     r14, 680h
                mov     rcx, r14
                call    sub_140231340
                mov     [rsp+1D8h+var_198], al
                cmp     rsi, [rsp+1D8h+var_188]
                ja      loc_140280B8C
                mov     r10, 0FFFFF68000000000h
                mov     r11, 0FFFFF6FB40000000h
                nop     dword ptr [rax+rax+00000000h]

loc_140280840:                          ; CODE XREF: sub_140280660+526↓j
                mov     rax, rsi
                shr     rax, 0Ch
                inc     al
                test    al, 0Fh
                jnz     loc_1402808D3
                mov     rcx, r14
                call    sub_14029A5E0
                test    eax, eax
                jnz     short loc_14028087A
                test    r13, r13
                jz      short loc_140280871
                mov     rdx, r13
                mov     rcx, r14
                call    sub_14029F0B0
                test    eax, eax
                jnz     short loc_14028087A

loc_140280871:                          ; CODE XREF: sub_140280660+200↑j
                call    sub_140536BA8
                test    eax, eax
                jz      short loc_1402808BF

loc_14028087A:                          ; CODE XREF: sub_140280660+1FB↑j
                                        ; sub_140280660+20F↑j
                cmp     dword ptr [rsp+1D8h+var_130+4], 0
                jz      short loc_140280897
                xor     r8d, r8d
                lea     rdx, [rsp+1D8h+var_138]
                mov     rcx, r14
                call    sub_140279D90

loc_140280897:                          ; CODE XREF: sub_140280660+222↑j
                test    r13, r13
                jz      short loc_1402808AA
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1403B6AB0
                xor     r13d, r13d

loc_1402808AA:                          ; CODE XREF: sub_140280660+23A↑j
                movzx   edx, [rsp+1D8h+var_198]
                mov     rcx, r14
                call    sub_140226960
                mov     rcx, r14
                call    sub_140231340

loc_1402808BF:                          ; CODE XREF: sub_140280660+218↑j
                mov     r11, 0FFFFF6FB40000000h
                mov     r10, 0FFFFF68000000000h

loc_1402808D3:                          ; CODE XREF: sub_140280660+1EB↑j
                cmp     rsi, r15
                ja      short loc_1402808E1
                test    rdi, rdi
                jnz     loc_140280982

loc_1402808E1:                          ; CODE XREF: sub_140280660+276↑j
                test    rdi, rdi
                jnz     short loc_1402808F3
                mov     rcx, rsi
                call    sub_14026A130
                mov     rdi, rax
                jmp     short loc_140280942
; ---------------------------------------------------------------------------

loc_1402808F3:                          ; CODE XREF: sub_140280660+284↑j
                mov     rcx, rdi
                mov     rax, [rdi+8]
                test    rax, rax
                jz      short loc_140280920
                mov     rdi, rax
                mov     rcx, [rax]
                test    rcx, rcx
                jz      short loc_140280942
                nop     word ptr [rax+rax+00h]

loc_140280910:                          ; CODE XREF: sub_140280660+2BC↓j
                mov     rdi, rcx
                mov     rax, [rcx]
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_140280910
                jmp     short loc_140280942
; ---------------------------------------------------------------------------

loc_140280920:                          ; CODE XREF: sub_140280660+29D↑j
                mov     rdi, [rdi+10h]
                and     rdi, 0FFFFFFFFFFFFFFFCh
                jz      short loc_140280942
                nop     word ptr [rax+rax+00h]

loc_140280930:                          ; CODE XREF: sub_140280660+2E0↓j
                cmp     [rdi], rcx
                jz      short loc_140280942
                mov     rcx, rdi
                mov     rdi, [rdi+10h]
                and     rdi, 0FFFFFFFFFFFFFFFCh
                jnz     short loc_140280930

loc_140280942:                          ; CODE XREF: sub_140280660+291↑j
                                        ; sub_140280660+2A8↑j ...
                and     ebx, 0FFFFFFFBh
                mov     [rsp+1D8h+var_190], ebx
                mov     eax, [rdi+30h]
                and     al, 70h
                cmp     al, 40h ; '@'
                jnz     short loc_14028095B
                or      ebx, 4
                mov     [rsp+1D8h+var_190], ebx
                jmp     short loc_14028096B
; ---------------------------------------------------------------------------

loc_14028095B:                          ; CODE XREF: sub_140280660+2F0↑j
                mov     rcx, rdi
                call    sub_1402E4688
                test    eax, eax
                jz      loc_140280B8C

loc_14028096B:                          ; CODE XREF: sub_140280660+2F9↑j
                movzx   ecx, byte ptr [rdi+21h]
                shl     rcx, 20h
                mov     eax, [rdi+1Ch]
                or      rcx, rax
                shl     rcx, 0Ch
                mov     [rsp+1D8h+var_160], rcx

loc_140280982:                          ; CODE XREF: sub_140280660+27B↑j
                mov     r15, rsi
                shr     r15, 9
                mov     rax, 7FFFFFFFF8h
                and     r15, rax
                mov     rax, r10
                add     r15, rax
                mov     r12, rsi
                shr     r12, 12h
                and     r12d, 3FFFFFF8h
                mov     rax, r11
                add     r12, rax
                cmp     r13, r12
                jz      loc_140280A4D
                test    r13, r13
                jz      short loc_1402809E6
                cmp     dword ptr [rsp+1D8h+var_130+4], 0
                jz      short loc_1402809DB
                xor     r8d, r8d
                lea     rdx, [rsp+1D8h+var_138]
                mov     rcx, r14
                call    sub_140279D90

loc_1402809DB:                          ; CODE XREF: sub_140280660+366↑j
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1403B6AB0

loc_1402809E6:                          ; CODE XREF: sub_140280660+35C↑j
                lea     r8, [rsp+1D8h+var_168]
                mov     rdx, r15
                mov     rcx, r14
                call    sub_1402A82C0
                mov     r13, rax
                cmp     rax, r12
                jz      short loc_140280A4D
                mov     rdx, rax
                mov     rcx, r14
                call    sub_1403B6AB0
                xor     r13d, r13d
                mov     r10, 0FFFFF68000000000h
                mov     rax, r10
                shl     rax, 19h
                mov     rsi, r12
                shl     rsi, 19h
                sub     rsi, rax
                add     rsi, 10000000h
                sar     rsi, 10h
                shl     rsi, 19h
                sub     rsi, rax
                sar     rsi, 10h
                mov     r12d, 0C000002Ah
                mov     [rsp+1D8h+var_194], r12d
                jmp     loc_140280B72
; ---------------------------------------------------------------------------

loc_140280A4D:                          ; CODE XREF: sub_140280660+353↑j
                                        ; sub_140280660+39C↑j
                mov     rcx, r15
                call    sub_1402805F0
                mov     [rsp+1D8h+var_170], rax
                test    al, 1
                jnz     short loc_140280A6E
                mov     r12d, 0C000002Ah
                mov     [rsp+1D8h+var_194], r12d
                jmp     loc_140280B61
; ---------------------------------------------------------------------------

loc_140280A6E:                          ; CODE XREF: sub_140280660+3FC↑j
                lea     rcx, [rsp+1D8h+var_170]
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, 0FFFFFA8000000000h
                mov     rax, rax
                add     rcx, rax
                mov     [rsp+1D8h+var_170], rcx
                mov     r12, [rcx+8]
                mov     rdx, r12
                mov     rax, 8000000000000000h
                or      rdx, rax
                mov     [rsp+1D8h+var_168], rdx
                test    bl, 4
                jz      short loc_140280ADF
                mov     rcx, r15
                call    sub_140342C88
                cmp     eax, 1
                jz      loc_140280B5C
                mov     rcx, [rsp+1D8h+var_170]
                mov     rdx, [rsp+1D8h+var_168]

loc_140280ADF:                          ; CODE XREF: sub_140280660+462↑j
                mov     rax, [rcx+28h]
                mov     rcx, 1000000000h
                test    rcx, rax
                jnz     short loc_140280B07
                test    r12, r12
                js      short loc_140280B07
                jz      short loc_140280B07
                mov     r8, rdx
                mov     rdx, r15
                mov     rcx, r14
                call    sub_14036B290

loc_140280B07:                          ; CODE XREF: sub_140280660+490↑j
                                        ; sub_140280660+495↑j ...
                mov     rdx, rsi
                call    sub_1402DECC0
                and     al, 0Fh
                cmp     al, 8
                jz      short loc_140280B5C
                xor     r9d, r9d
                lea     r8d, [r9+1]
                mov     rdx, rsi
                lea     rcx, [rsp+1D8h+var_138]
                call    sub_1402882E0
                mov     eax, dword ptr [rsp+1D8h+var_130]
                cmp     dword ptr [rsp+1D8h+var_130+4], eax
                jnz     short loc_140280B4F
                xor     r8d, r8d
                lea     rdx, [rsp+1D8h+var_138]
                mov     rcx, r14
                call    sub_140279D90

loc_140280B4F:                          ; CODE XREF: sub_140280660+4DA↑j
                mov     r12d, 0C000002Ah
                mov     [rsp+1D8h+var_194], r12d
                jmp     short loc_140280B61
; ---------------------------------------------------------------------------

loc_140280B5C:                          ; CODE XREF: sub_140280660+46F↑j
                                        ; sub_140280660+4B3↑j
                mov     r12d, [rsp+1D8h+var_194]

loc_140280B61:                          ; CODE XREF: sub_140280660+409↑j
                                        ; sub_140280660+4FA↑j
                mov     r10, 0FFFFF68000000000h
                add     rsi, 1000h

loc_140280B72:                          ; CODE XREF: sub_140280660+3E8↑j
                cmp     rsi, [rsp+1D8h+var_188]
                mov     r15, [rsp+1D8h+var_160]
                mov     r11, 0FFFFF6FB40000000h
                jbe     loc_140280840

loc_140280B8C:                          ; CODE XREF: sub_140280660+1BE↑j
                                        ; sub_140280660+305↑j
                cmp     dword ptr [rsp+1D8h+var_130+4], 0
                jz      short loc_140280BA9
                xor     r8d, r8d
                lea     rdx, [rsp+1D8h+var_138]
                mov     rcx, r14
                call    sub_140279D90

loc_140280BA9:                          ; CODE XREF: sub_140280660+534↑j
                test    r13, r13
                jz      short loc_140280BBC
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1403B6AB0
                xor     r13d, r13d

loc_140280BBC:                          ; CODE XREF: sub_140280660+54C↑j
                cmp     r12d, 0C000002Ah
                jnz     short loc_140280BE4
                movzx   edx, [rsp+1D8h+var_198]
                mov     rcx, r14
                call    sub_140226960
                mov     r14, [rsp+1D8h+var_180]
                mov     rax, [rsp+1D8h+var_158]
                jmp     loc_140280DF7
; ---------------------------------------------------------------------------

loc_140280BE4:                          ; CODE XREF: sub_140280660+563↑j
                mov     r15, [rsp+1D8h+var_150]
                xor     esi, esi
                xor     edi, edi
                mov     r12, [rsp+1D8h+var_188]
                cmp     r15, r12
                ja      loc_140280D6F
                movzx   ebx, [rsp+1D8h+var_198]

loc_140280C03:                          ; CODE XREF: sub_140280660+705↓j
                cmp     r15, rsi
                ja      short loc_140280C11
                test    rdi, rdi
                jnz     loc_140280C94

loc_140280C11:                          ; CODE XREF: sub_140280660+5A6↑j
                test    rdi, rdi
                jnz     short loc_140280C23
                mov     rcx, r15
                call    sub_14026A130
                mov     rdi, rax
                jmp     short loc_140280C72
; ---------------------------------------------------------------------------

loc_140280C23:                          ; CODE XREF: sub_140280660+5B4↑j
                mov     rcx, rdi
                mov     rax, [rdi+8]
                test    rax, rax
                jz      short loc_140280C50
                mov     rdi, rax
                mov     rcx, [rax]
                test    rcx, rcx
                jz      short loc_140280C72
                nop     word ptr [rax+rax+00h]

loc_140280C40:                          ; CODE XREF: sub_140280660+5EC↓j
                mov     rdi, rcx
                mov     rax, [rcx]
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_140280C40
                jmp     short loc_140280C72
; ---------------------------------------------------------------------------

loc_140280C50:                          ; CODE XREF: sub_140280660+5CD↑j
                mov     rdi, [rdi+10h]
                and     rdi, 0FFFFFFFFFFFFFFFCh
                jz      short loc_140280C72
                nop     word ptr [rax+rax+00h]

loc_140280C60:                          ; CODE XREF: sub_140280660+610↓j
                cmp     [rdi], rcx
                jz      short loc_140280C72
                mov     rcx, rdi
                mov     rdi, [rdi+10h]
                and     rdi, 0FFFFFFFFFFFFFFFCh
                jnz     short loc_140280C60

loc_140280C72:                          ; CODE XREF: sub_140280660+5C1↑j
                                        ; sub_140280660+5D8↑j ...
                mov     rcx, rdi
                call    sub_1402E4688
                test    eax, eax
                jz      loc_140280D6B
                movzx   esi, byte ptr [rdi+21h]
                shl     rsi, 20h
                mov     eax, [rdi+1Ch]
                or      rsi, rax
                shl     rsi, 0Ch

loc_140280C94:                          ; CODE XREF: sub_140280660+5AB↑j
                mov     r12, r15
                shr     r12, 9
                mov     rax, 7FFFFFFFF8h
                and     r12, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     r12, rax
                mov     rcx, r15
                shr     rcx, 12h
                and     ecx, 3FFFFFF8h
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                add     rcx, rax
                cmp     r13, rcx
                jz      short loc_140280CFD
                test    r13, r13
                jz      short loc_140280CEA
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1403B6AB0

loc_140280CEA:                          ; CODE XREF: sub_140280660+67D↑j
                lea     r8, [rsp+1D8h+var_168]
                mov     rdx, r12
                mov     rcx, r14
                call    sub_1402A82C0
                mov     r13, rax

loc_140280CFD:                          ; CODE XREF: sub_140280660+678↑j
                mov     rdx, r15
                mov     rcx, r14
                call    sub_1402DDA7C
                add     r15, 1000h
                test    r15, 0F000h
                jnz     short loc_140280D5D
                mov     rcx, r14
                call    sub_14029A5E0
                test    eax, eax
                jnz     short loc_140280D3C
                mov     rdx, r13
                mov     rcx, r14
                call    sub_14029F0B0
                test    eax, eax
                jnz     short loc_140280D3C
                call    sub_140536BA8
                test    eax, eax
                jz      short loc_140280D5D

loc_140280D3C:                          ; CODE XREF: sub_140280660+6C2↑j
                                        ; sub_140280660+6D1↑j
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1403B6AB0
                xor     r13d, r13d
                movzx   edx, bl
                mov     rcx, r14
                call    sub_140226960
                mov     rcx, r14
                call    sub_140231340

loc_140280D5D:                          ; CODE XREF: sub_140280660+6B6↑j
                                        ; sub_140280660+6DA↑j
                mov     r12, [rsp+1D8h+var_188]
                cmp     r15, r12
                jbe     loc_140280C03

loc_140280D6B:                          ; CODE XREF: sub_140280660+61C↑j
                mov     ebx, [rsp+1D8h+var_190]

loc_140280D6F:                          ; CODE XREF: sub_140280660+598↑j
                test    r13, r13
                jz      short loc_140280D7F
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1403B6AB0

loc_140280D7F:                          ; CODE XREF: sub_140280660+712↑j
                movzx   edx, [rsp+1D8h+var_198]
                mov     rcx, r14
                call    sub_140226960
                xor     r9d, r9d
                mov     r8, [rsp+1D8h+var_158]
                mov     rdx, [rsp+1D8h+var_178]
                mov     rdi, [rsp+1D8h+var_180]
                mov     rcx, rdi
                call    sub_14068448C
                test    bl, 2
                jz      short loc_140280DBB
                lea     rcx, [rsp+1D8h+var_78]
                call    KeUnstackDetachProcess

loc_140280DBB:                          ; CODE XREF: sub_140280660+74C↑j
                mov     edx, 6D566D4Dh
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag
                nop

loc_140280DC9:                          ; DATA XREF: .rdata:000000014005E7E0↑o
;   __try { // __except at loc_140280DF5
                mov     rax, [rsp+1D8h+var_150]
                sub     r12, rax
                add     r12, 1000h
                mov     rcx, [rsp+1D8h+var_148]
                mov     [rcx], r12
                mov     rcx, [rsp+1D8h+var_140]
                mov     [rcx], rax
;   } // starts at 140280DC9

loc_140280DF1:                          ; DATA XREF: .rdata:000000014005E7E0↑o
                xor     eax, eax
                jmp     short loc_140280E2E
; ---------------------------------------------------------------------------

loc_140280DF5:                          ; DATA XREF: .rdata:000000014005E7E0↑o
;   __except(1) // owned by 140280DC9
                jmp     short loc_140280E2E
; ---------------------------------------------------------------------------

loc_140280DF7:                          ; CODE XREF: sub_140280660+1A0↑j
                                        ; sub_140280660+57F↑j
                xor     r9d, r9d
                mov     r8, rax
                mov     rdx, [rsp+1D8h+var_178]
                mov     rcx, r14
                call    sub_14068448C
                test    bl, 2
                jz      short loc_140280E1C
                lea     rcx, [rsp+1D8h+var_78]
                call    KeUnstackDetachProcess

loc_140280E1C:                          ; CODE XREF: sub_140280660+7AD↑j
                mov     edx, 6D566D4Dh
                mov     rcx, r14
                call    ObfDereferenceObjectWithTag
                mov     eax, 0C000002Ah

loc_140280E2E:                          ; CODE XREF: sub_140280660+E6↑j
                                        ; sub_140280660+793↑j ...
                mov     rcx, [rsp+1D8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140280660
sub_140280660   endp

algn_140280E52:                         ; DATA XREF: .pdata:00000001400CEA3C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140280E60   proc near               ; CODE XREF: sub_140229EE0+5D0↑p
                                        ; sub_140229EE0+6FC↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140443984 SIZE 00000030 BYTES

                mov     rax, rsp
                push    rdi
                sub     rsp, 40h

loc_140280E68:                          ; DATA XREF: .rdata:000000014005E81C↑o
                                        ; .rdata:000000014005E830↑o ...
                mov     [rax+8], rbx
                mov     edi, r8d
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     esi, r8d
                mov     [rax-10h], r12
                and     esi, 1Fh
                mov     [rax-18h], r13
                lea     r12, cs:140000000h
                mov     [rax-20h], r14
                mov     r14, rcx
                mov     [rax-28h], r15
                mov     rax, 0FFFF000000000E7Fh
                mov     rbx, ds:rva qword_140017520[r12+rsi*8]
                and     rbx, rax
                mov     r15, 0FFFFF68000000000h
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                shl     rdx, 0Ch
                or      rbx, rdx
                or      rbx, 21h
                mov     rax, r15
                cmp     rcx, rax
                jnb     loc_140280F91

loc_140280EDA:                          ; CODE XREF: sub_140280E60+141↓j
                                        ; sub_140280E60+1EA↓j
                bts     rbx, 8

loc_140280EDF:                          ; CODE XREF: sub_140280E60+1C4↓j
                                        ; sub_140280E60+1E4↓j ...
                mov     r15, [rsp+48h+var_28]
                and     sil, 5
                mov     r14, [rsp+48h+var_20]
                cmp     sil, 4
                mov     r13, [rsp+48h+var_18]
                mov     r12, [rsp+48h+var_10]
                setz    cl
                mov     rsi, [rsp+48h+arg_10]
                bt      edi, 1Fh
                mov     rbp, [rsp+48h+arg_8]
                setb    al
                and     cl, al
                mov     rax, rbx
                or      rax, 42h
                test    cl, cl
                cmovz   rax, rbx
                mov     rbx, [rsp+48h+arg_0]
                bt      edi, 1Eh
                jb      loc_1404439AB

loc_140280F2D:                          ; CODE XREF: sub_140280E60+1C2B4F↓j
                                        ; DATA XREF: .pdata:00000001400CEA54↑o ...
                bt      edi, 1Dh
                jnb     short loc_140280F4A
                movzx   ecx, byte ptr cs:word_140C4DE88
                shl     rcx, 8
                xor     rcx, rax
                and     ecx, 100h
                xor     rax, rcx

loc_140280F4A:                          ; CODE XREF: sub_140280E60+D1↑j
                mov     rdx, rax
                mov     ecx, edi
                btr     rdx, 8
                and     ecx, 8000000h
                mov     rcx, 0FAFFFFFFFFFFFFFFh
                cmovz   rdx, rax
                mov     rax, rdx
                bts     rax, 7
                and     edi, 4000000h
                cmovz   rax, rdx
                and     rax, rcx
                mov     rcx, 0A00000000000000h
                or      rax, rcx
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140280F91:                          ; CODE XREF: sub_140280E60+74↑j
                                        ; DATA XREF: .pdata:00000001400CEA60↑o ...
                mov     r13, 0FFFFF6FFFFFFFFFFh
                mov     rax, r13
                cmp     r14, rax
                ja      loc_140280EDA
                mov     rbp, r14
                shl     rbp, 19h
                mov     rax, r15
                shl     rax, 19h
                sub     rbp, rax
                sar     rbp, 10h
                mov     rax, 0FFFFF6FB40000000h
                cmp     r14, rax
                jnb     loc_14028104F

loc_140280FCF:                          ; CODE XREF: sub_140280E60+1FC↓j
                                        ; sub_140280E60+22F↓j ...
                mov     rcx, rbx
                mov     rax, r15
                or      rbx, 4
                mov     rdx, 3FFFFFFF78h
                add     rax, rdx
                cmp     r14, rax
                cmova   rbx, rcx
                bt      edi, 1Ah
                jb      loc_1402810BE

loc_140280FF7:                          ; CODE XREF: sub_140280E60+269↓j
                mov     rax, 0FFFF800000000000h
                cmp     rbp, rax
                jb      loc_1402810B5
                mov     rax, rbp
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+r12+0C4F848h], 1
                jz      loc_140280EDF
                mov     rax, r15
                cmp     rbp, rax
                jnb     short loc_14028109A

loc_140281032:                          ; CODE XREF: sub_140280E60+240↓j
                cmp     rbp, cs:qword_140C4F9B8
                jnb     short loc_1402810A7

loc_14028103B:                          ; CODE XREF: sub_140280E60+24E↓j
                movzx   eax, byte ptr cs:word_140C4DE88

loc_140281042:                          ; CODE XREF: sub_140280E60+25C↓j
                                        ; sub_140280E60+1C2B46↓j
                test    eax, eax
                jz      loc_140280EDF
                jmp     loc_140280EDA
; ---------------------------------------------------------------------------

loc_14028104F:                          ; CODE XREF: sub_140280E60+169↑j
                mov     rax, 0FFFFF6FB7FFFFFFFh
                cmp     r14, rax
                ja      loc_140280FCF
                mov     rax, 0FFFFF6FB7DBEDF68h
                cmp     r14, rax
                jz      loc_140443984
                bt      edi, 1Ah
                jb      short loc_140281088
                mov     rax, 7FFFFFFFFFFFFFFFh
                and     rbx, rax

loc_140281088:                          ; CODE XREF: sub_140280E60+219↑j
                                        ; sub_140280E60+1C2B31↓j
                call    sub_14033FA34
                test    eax, eax
                jz      loc_140280FCF
                jmp     loc_140443996
; ---------------------------------------------------------------------------

loc_14028109A:                          ; CODE XREF: sub_140280E60+1D0↑j
                mov     rax, r13
                cmp     rbp, rax
                ja      short loc_140281032
                jmp     loc_140280EDF
; ---------------------------------------------------------------------------

loc_1402810A7:                          ; CODE XREF: sub_140280E60+1D9↑j
                cmp     rbp, cs:qword_140C4E1E8
                ja      short loc_14028103B
                jmp     loc_14044399F
; ---------------------------------------------------------------------------

loc_1402810B5:                          ; CODE XREF: sub_140280E60+1A4↑j
                movzx   eax, byte ptr cs:word_140C4DE88+1
                jmp     short loc_140281042
; ---------------------------------------------------------------------------

loc_1402810BE:                          ; CODE XREF: sub_140280E60+191↑j
                mov     rcx, rbp
                call    sub_14027F590
                mov     rbp, rax
                jmp     loc_140280FF7
sub_140280E60   endp

; ---------------------------------------------------------------------------
algn_1402810CE:                         ; DATA XREF: .pdata:00000001400CEA6C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402810E0   proc near               ; CODE XREF: sub_140209860+1E2↑p
                                        ; sub_140227A20+C12↑p ...
                mov     rax, 0FFFFFFFFFh
                and     rcx, rax
                mov     eax, edx
                shl     rcx, 7
                and     eax, 1Fh
                or      rcx, rax
                mov     rax, cs:qword_140C4DDC0
                or      rcx, 40h
                shl     rcx, 5
                test    rax, rax
                jz      short loc_14028111B
                test    rcx, rax
                jnz     short loc_140281117
                or      rax, rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140281117:                          ; CODE XREF: sub_1402810E0+30↑j
                or      rcx, 10h

loc_14028111B:                          ; CODE XREF: sub_1402810E0+2B↑j
                mov     rax, rcx
                retn
sub_1402810E0   endp

; ---------------------------------------------------------------------------
                align 20h
byte_140281120  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400CEA78↑o

; =============== S U B R O U T I N E =======================================


sub_140281130   proc near               ; CODE XREF: sub_140224940+C46↑p
                                        ; sub_14029AEC0+465↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001404439B4 SIZE 00000076 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbx, r8
                mov     rsi, rdx
                mov     rdi, rcx
                mov     r8, [rax+0B8h]
                mov     eax, [r8+87Ch]
                test    al, 1
                jnz     short loc_140281185
                mov     rax, rcx
                and     rax, 0FFFFFFFFFFFFF000h
                cmp     rax, 7FFE0000h
                jz      loc_1404439B4
                cmp     rax, cs:qword_140C4DCC8
                jz      loc_1404439C6

loc_140281185:                          ; CODE XREF: sub_140281130+31↑j
                                        ; sub_140281130+1C2899↓j
                mov     eax, [rbx+30h]
                and     al, 70h
                cmp     al, 20h ; ' '
                jz      short loc_14028120C

loc_14028118E:                          ; CODE XREF: sub_140281130+E3↓j
                                        ; sub_140281130+1C28C1↓j ...
                mov     eax, [rbx+30h]
                test    al, 4
                jnz     loc_140281286
                bt      eax, 14h
                jb      loc_140281252
                mov     eax, [rbx+40h]
                bt      eax, 18h
                jb      loc_140443A0F

loc_1402811B0:                          ; CODE XREF: sub_140281130+1C28ED↓j
                shr     rdi, 0Ch
                lea     r9, [rsp+28h+arg_18]
                mov     rdx, rdi
                mov     r8d, 4
                mov     rcx, rbx
                call    sub_140283270
                mov     r8, rax
                mov     r9d, 18h
                test    rax, rax
                jz      loc_140443A22
                mov     eax, [rbx+30h]
                mov     ecx, eax
                shr     ecx, 7
                and     al, 70h
                and     ecx, 1Fh
                mov     [rsi], ecx
                cmp     al, 20h ; ' '
                jz      short loc_14028121E

loc_1402811EF:                          ; CODE XREF: sub_140281130+FB↓j
                                        ; sub_140281130+1C28F5↓j
                mov     rdx, [rbx+78h]
                test    rdx, rdx
                js      short loc_14028122D

loc_1402811F8:                          ; CODE XREF: sub_140281130+11B↓j
                                        ; sub_140281130+120↓j
                mov     rax, r8

loc_1402811FB:                          ; CODE XREF: sub_140281130+151↓j
                                        ; sub_140281130+1C2891↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14028120C:                          ; CODE XREF: sub_140281130+5C↑j
                mov     eax, [rbx+40h]
                bt      eax, 1Ch
                jnb     loc_14028118E
                jmp     loc_1404439E1
; ---------------------------------------------------------------------------

loc_14028121E:                          ; CODE XREF: sub_140281130+BD↑j
                cmp     ecx, 7
                mov     eax, 100h
                cmovz   ecx, eax
                mov     [rsi], ecx
                jmp     short loc_1402811EF
; ---------------------------------------------------------------------------

loc_14028122D:                          ; CODE XREF: sub_140281130+C6↑j
                mov     eax, [rbx+18h]
                movzx   ecx, byte ptr [rbx+20h]
                shl     rcx, 20h
                or      rcx, rax
                mov     rax, [rdx]
                dec     rax
                sub     rdi, rcx
                shr     rax, 0Ch
                cmp     rdi, rax
                jbe     short loc_1402811F8
                mov     [rsi], r9d
                jmp     short loc_1402811F8
; ---------------------------------------------------------------------------

loc_140281252:                          ; CODE XREF: sub_140281130+6D↑j
                and     eax, 70h
                cmp     eax, 10h
                jz      short loc_140281286
                cmp     eax, 30h ; '0'
                jz      short loc_140281286
                mov     rcx, rbx
                call    sub_14034027C
                test    eax, eax
                jnz     short loc_140281286
                cmp     [rbx+34h], eax
                jge     short loc_140281286
                mov     r9d, [rbx+30h]
                shr     r9d, 7
                and     r9d, 1Fh

loc_14028127C:                          ; CODE XREF: sub_140281130+15C↓j
                xor     eax, eax
                mov     [rsi], r9d
                jmp     loc_1402811FB
; ---------------------------------------------------------------------------

loc_140281286:                          ; CODE XREF: sub_140281130+63↑j
                                        ; sub_140281130+128↑j ...
                mov     r9d, 18h
                jmp     short loc_14028127C
sub_140281130   endp

; ---------------------------------------------------------------------------
algn_14028128E:                         ; DATA XREF: .rdata:000000014005E8BC↑o
                                        ; .pdata:00000001400CEA84↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=40h

sub_1402812A0   proc near               ; CODE XREF: sub_1402498E0+311↑p
                                        ; DATA XREF: .pdata:00000001400CEA90↑o

var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = xmmword ptr -110h
var_100         = xmmword ptr -100h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
arg_0           = dword ptr  10h
arg_8           = dword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-8]
                sub     rsp, 108h
                mov     rax, [rcx+8]
                xorps   xmm0, xmm0
                movups  [rsp+140h+var_110], xmm0
                xor     r12d, r12d
                mov     r15, rcx
                mov     [rbp+40h+var_A0], r12
                mov     r14, [rax]
                mov     rax, 7FFFFFFFF8h
                mov     rsi, r14
                mov     rcx, 0FFFFF68000000000h
                shr     rsi, 9
                and     rsi, rax
                movups  [rsp+140h+var_100], xmm0
                movups  [rsp+140h+var_F0], xmm0
                movups  [rsp+140h+var_E0], xmm0
                movups  [rsp+140h+var_D0], xmm0
                movups  [rbp+40h+var_C0], xmm0
                movups  [rbp+40h+var_B0], xmm0
                mov     rax, rcx
                mov     r10d, [r15+20h]
                add     rsi, rax
                mov     rbx, [r15+18h]
                mov     [rbp+40h+arg_0], r10d
                mov     r8, rcx
                shl     r8, 19h
                mov     rdx, rsi
                shl     rdx, 19h
                mov     ecx, r12d
                sub     rdx, r8
                mov     [rbp+40h+var_90], r8
                sar     rdx, 10h
                mov     r9, 7FFFFFFEFFFFh
                mov     rax, rdx
                nop     word ptr [rax+rax+00000000h]

loc_140281350:                          ; CODE XREF: sub_1402812A0+E3↓j
                mov     rdi, 0FFFFF6FB7DBED000h
                mov     r13, 8000000000000000h
                mov     r11, 0FFFFF6FB7DBED7F8h
                cmp     rax, r9
                jbe     short loc_14028138A
                shl     rax, 19h
                inc     ecx
                sub     rax, r8
                sar     rax, 10h
                cmp     ecx, 3
                jb      short loc_140281350
                jmp     loc_140281669
; ---------------------------------------------------------------------------

loc_14028138A:                          ; CODE XREF: sub_1402812A0+D1↑j
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                lea     r8, [rdx+rax]
                mov     rdx, [rdx+rax]
                mov     rax, rdi
                cmp     r8, rax
                jb      short loc_140281418
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_140281418
                call    sub_140349680
                test    eax, eax
                jz      short loc_140281418
                test    dl, 1
                jz      short loc_140281418
                test    dl, 20h
                jz      short loc_1402813D1
                test    dl, 42h
                jnz     short loc_140281418

loc_1402813D1:                          ; CODE XREF: sub_1402812A0+12A↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140281418
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140281418
                or      rdx, 42h

loc_140281418:                          ; CODE XREF: sub_1402812A0+10F↑j
                                        ; sub_1402812A0+117↑j ...
                mov     [rsp+140h+var_120], rdx
                mov     rax, rdi
                lea     rcx, [rsp+140h+var_120]
                cmp     rcx, rax
                jb      short loc_140281499
                mov     rax, r11
                lea     rcx, [rsp+140h+var_120]
                cmp     rcx, rax
                ja      short loc_140281499
                call    sub_140349680
                test    eax, eax
                jz      short loc_140281499
                test    dl, 1
                jz      short loc_140281499
                test    dl, 20h
                jz      short loc_14028144F
                test    dl, 42h
                jnz     short loc_140281499

loc_14028144F:                          ; CODE XREF: sub_1402812A0+1A8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140281499
                lea     rax, [rsp+140h+var_120]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140281499
                or      rdx, 42h

loc_140281499:                          ; CODE XREF: sub_1402812A0+188↑j
                                        ; sub_1402812A0+195↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rdx, 0Ch
                and     rdx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rdi, [rdx+rdx*2]
                shl     rdi, 4
                mov     rax, rax
                add     rdi, rax
                mov     [rbp+40h+arg_8], r12d
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_1402814F9
                nop

loc_1402814D0:                          ; CODE XREF: sub_1402812A0+240↓j
                                        ; sub_1402812A0+249↓j
                lea     rcx, [rbp+40h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_1402814D0
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_1402814D0
                mov     r10d, [rbp+40h+arg_0]
                mov     r11, 0FFFFF6FB7DBED7F8h

loc_1402814F9:                          ; CODE XREF: sub_1402812A0+22D↑j
                mov     rax, [rdi+10h]
                lea     rcx, [rax+10000h]
                xor     rcx, rax
                and     ecx, 3FF0000h
                xor     rcx, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     [rdi+10h], rcx
                lock and [rdi+18h], rax
                mov     rcx, [rdi+8]
                xorps   xmm0, xmm0
                or      rcx, r13
                mov     rax, rcx
                sar     rax, 2Fh
                inc     rax
                movups  [rbp+40h+var_88], xmm0
                movups  [rbp+40h+var_78], xmm0
                cmp     rax, 1
                ja      loc_14028165F
                shr     rcx, 9
                mov     r8, 7FFFFFFFF8h
                and     rcx, r8
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                add     rcx, rax
                mov     qword ptr [rbp+40h+var_88], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     qword ptr [rbp+40h+var_88+8], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     qword ptr [rbp+40h+var_78], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     rdi, 0FFFFF6FB7DBED000h
                mov     qword ptr [rbp+40h+var_78+8], rcx
                mov     r9d, 4

loc_1402815B1:                          ; CODE XREF: sub_1402812A0+3B7↓j
                mov     r8, [rbp+r9*8+40h+var_90]
                dec     r9
                mov     rcx, [r8]
                mov     rax, rdi
                cmp     r8, rax
                jb      loc_14028164B
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_14028164B
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14028164B
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_14028164B
                test    cl, 1
                jz      short loc_140281669
                test    cl, 20h
                jz      short loc_140281604
                test    cl, 42h
                jnz     short loc_14028164B

loc_140281604:                          ; CODE XREF: sub_1402812A0+35D↑j
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     rax, [rdx+788h]
                test    rax, rax
                jz      short loc_14028164B
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rcx
                or      r8, 20h
                movzx   edx, al
                and     dl, 20h
                cmovz   r8, rcx
                mov     rcx, r8
                test    al, 42h
                jz      short loc_14028164B
                or      rcx, 42h

loc_14028164B:                          ; CODE XREF: sub_1402812A0+322↑j
                                        ; sub_1402812A0+32E↑j ...
                test    cl, 1
                jz      short loc_140281669
                test    cl, cl
                js      short loc_140281669
                test    r9, r9
                jnz     loc_1402815B1
                jmp     short loc_140281669
; ---------------------------------------------------------------------------

loc_14028165F:                          ; CODE XREF: sub_1402812A0+2A3↑j
                mov     rdi, 0FFFFF6FB7DBED000h

loc_140281669:                          ; CODE XREF: sub_1402812A0+E5↑j
                                        ; sub_1402812A0+358↑j ...
                cmp     r10d, 100h
                jnz     short loc_140281697
                mov     rax, cs:qword_140C4DDC0
                shl     rbx, 10h
                bts     rbx, 0Ah
                test    rax, rax
                jz      short loc_1402816B0
                test    rax, rbx
                jnz     short loc_140281691
                or      rbx, rax
                jmp     short loc_1402816B0
; ---------------------------------------------------------------------------

loc_140281691:                          ; CODE XREF: sub_1402812A0+3EA↑j
                or      rbx, 10h
                jmp     short loc_1402816B0
; ---------------------------------------------------------------------------

loc_140281697:                          ; CODE XREF: sub_1402812A0+3D0↑j
                mov     ecx, r10d
                and     ecx, 1Fh
                or      rcx, 0FFFFFFFFF8000020h
                shl     rcx, 5
                call    sub_14027C6C0
                mov     rbx, rax

loc_1402816B0:                          ; CODE XREF: sub_1402812A0+3E5↑j
                                        ; sub_1402812A0+3EF↑j ...
                mov     rax, rdi
                cmp     rsi, rax
                jb      short loc_14028170E
                mov     rax, r11
                cmp     rsi, rax
                ja      short loc_14028170E
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402816EA
                cmp     byte ptr cs:word_140C4DE88+1, r12b
                jnz     short loc_1402816DA
                test    bl, 1
                jz      short loc_1402816DA
                or      rbx, r13

loc_1402816DA:                          ; CODE XREF: sub_1402812A0+430↑j
                                        ; sub_1402812A0+435↑j
                mov     rdx, rbx
                mov     [rsi], rbx
                mov     rcx, rsi
                call    sub_140349620
                jmp     short loc_140281711
; ---------------------------------------------------------------------------

loc_1402816EA:                          ; CODE XREF: sub_1402812A0+427↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14028170E
                test    bl, 1
                jz      short loc_14028170E
                or      rbx, r13

loc_14028170E:                          ; CODE XREF: sub_1402812A0+416↑j
                                        ; sub_1402812A0+41E↑j ...
                mov     [rsi], rbx

loc_140281711:                          ; CODE XREF: sub_1402812A0+448↑j
                mov     r13, [r15+40h]
                test    r13, r13
                jz      loc_140281E42
                mov     eax, [r13+18h]
                lea     r9, qword_14002DE90
                movzx   r8d, byte ptr [r13+20h]
                movzx   ecx, byte ptr [r13+21h]
                mov     edx, [r13+30h]
                shl     r8, 20h
                or      r8, rax
                shl     rcx, 20h
                mov     eax, [r13+1Ch]
                or      rcx, rax
                mov     [rbp+40h+var_98], r8
                mov     eax, edx
                shr     rax, 12h
                and     eax, 3
                cmp     qword ptr [r9+rax*8], 10h
                jnz     short loc_1402817A1
                and     r14, 0FFFFFFFFFFFF0000h
                mov     qword ptr [rsp+140h+var_110+8], 10000h
                mov     rax, r14
                mov     qword ptr [rsp+140h+var_110], r14
                shr     rax, 0Ch
                cmp     rax, r8
                jb      loc_140281E42
                lea     rax, [r14+0FFFFh]
                shr     rax, 0Ch
                cmp     rax, rcx
                ja      loc_140281E42
                mov     r9d, 10h
                jmp     loc_14028183F
; ---------------------------------------------------------------------------

loc_1402817A1:                          ; CODE XREF: sub_1402812A0+4BB↑j
                mov     eax, [r15]
                test    al, 2
                jz      short loc_140281801
                mov     rax, [r15+38h]
                mov     r9d, 100h
                shr     r14, 0Ch
                sub     rcx, r14
                mov     [rbp+40h+arg_18], r9
                inc     rcx
                movups  xmm0, xmmword ptr [rax]
                movups  xmm1, xmmword ptr [rax+10h]
                movaps  [rsp+140h+var_100], xmm0
                movaps  [rsp+140h+var_F0], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmm1, xmmword ptr [rax+30h]
                movaps  [rsp+140h+var_E0], xmm0
                movaps  [rsp+140h+var_D0], xmm1
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmm1, xmmword ptr [rax+50h]
                movaps  [rbp+40h+var_C0], xmm0
                movaps  [rbp+40h+var_B0], xmm1
                cmp     rcx, r9
                jnb     short loc_140281867
                mov     r9, rcx
                mov     [rbp+40h+arg_18], rcx
                jmp     short loc_140281867
; ---------------------------------------------------------------------------

loc_140281801:                          ; CODE XREF: sub_1402812A0+506↑j
                and     dl, 70h
                cmp     dl, 20h ; ' '
                jz      loc_140281E42
                mov     rax, r14
                mov     r9d, 8
                and     rax, 0FFFFFFFFFFFFF000h
                shr     r14, 0Ch
                sub     rcx, r14
                mov     qword ptr [rsp+140h+var_110], rax
                lea     rax, [rcx+1]
                cmp     rax, r9
                cmovb   r9, rax
                mov     rax, r9
                shl     rax, 0Ch
                mov     qword ptr [rsp+140h+var_110+8], rax

loc_14028183F:                          ; CODE XREF: sub_1402812A0+4FC↑j
                lea     rax, [rsp+140h+var_110]
                mov     qword ptr [rsp+140h+var_E0], r12
                mov     qword ptr [rsp+140h+var_100+8], rax
                mov     qword ptr [rsp+140h+var_F0+8], r12
                mov     qword ptr [rsp+140h+var_F0], 1
                mov     word ptr [rsp+140h+var_100], 2
                mov     [rbp+40h+arg_18], r9

loc_140281867:                          ; CODE XREF: sub_1402812A0+556↑j
                                        ; sub_1402812A0+55F↑j
                mov     rdx, r12
                mov     r15, r12
                test    r9, r9
                jz      loc_140281E42
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140281880:                          ; CODE XREF: sub_1402812A0+B9C↓j
                mov     r12, qword ptr [rsp+140h+var_F0+8]
                mov     rax, 7FFFFFFFF8h
                mov     r14, qword ptr [rsp+140h+var_E0]
                shl     r14, 0Ch
                shl     r12, 4
                add     r12, qword ptr [rsp+140h+var_100+8]
                add     r14, [r12]
                and     r14, 0FFFFFFFFFFFFF000h
                mov     rsi, r14
                shr     rsi, 9
                and     rsi, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     rsi, rax
                test    r15, r15
                jz      short loc_1402818E8
                lea     rax, [rdx+1000h]
                cmp     r14, rax
                jnz     loc_140281E42
                test    rsi, 0FFFh
                jz      loc_140281E42

loc_1402818E8:                          ; CODE XREF: sub_1402812A0+629↑j
                mov     rdx, [rsi]
                mov     rax, rdi
                cmp     rsi, rax
                jb      short loc_14028195B
                mov     rax, r11
                cmp     rsi, rax
                ja      short loc_14028195B
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028195B
                test    dl, 1
                jz      short loc_14028195B
                test    dl, 20h
                jz      short loc_140281913
                test    dl, 42h
                jnz     short loc_14028195B

loc_140281913:                          ; CODE XREF: sub_1402812A0+66C↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14028195B
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028195B
                or      rdx, 42h

loc_14028195B:                          ; CODE XREF: sub_1402812A0+651↑j
                                        ; sub_1402812A0+659↑j ...
                test    rdx, rdx
                jnz     loc_140281DC2
                lea     r8d, [rdx+4]
                mov     rdi, r14
                shr     rdi, 0Ch
                lea     r9, [rbp+40h+var_A0]
                mov     rdx, rdi
                mov     rcx, r13
                call    sub_140283270
                mov     rbx, rax
                test    rax, rax
                jz      loc_140281E42
                mov     rax, [r13+78h]
                test    rax, rax
                jns     short loc_1402819AA
                mov     rax, [rax]
                sub     rdi, [rbp+40h+var_98]
                dec     rax
                shr     rax, 0Ch
                cmp     rdi, rax
                ja      loc_140281E42

loc_1402819AA:                          ; CODE XREF: sub_1402812A0+6F1↑j
                mov     r8, [rbp+40h+var_90]
                mov     rdx, rsi
                shl     rdx, 19h
                mov     r9, 7FFFFFFEFFFFh
                sub     rdx, r8
                sar     rdx, 10h
                mov     rax, rdx
                xor     ecx, ecx
                nop     dword ptr [rax+rax+00h]

loc_1402819D0:                          ; CODE XREF: sub_1402812A0+745↓j
                cmp     rax, r9
                jbe     short loc_140281A25
                shl     rax, 19h
                inc     ecx
                sub     rax, r8
                sar     rax, 10h
                cmp     ecx, 3
                jb      short loc_1402819D0
                mov     r8, 8000000000000000h

loc_1402819F1:                          ; CODE XREF: sub_1402812A0+959↓j
                mov     r11, 0FFFFF6FB7DBED7F8h

loc_1402819FB:                          ; CODE XREF: sub_1402812A0+A86↓j
                mov     r10d, [rbp+40h+arg_0]
                cmp     r10d, 100h
                jnz     loc_140281D2B
                shl     rbx, 10h
                bts     rbx, 0Ah
                mov     rcx, rbx
                call    sub_14027C6C0
                mov     rdx, rax
                jmp     loc_140281D56
; ---------------------------------------------------------------------------

loc_140281A25:                          ; CODE XREF: sub_1402812A0+733↑j
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                lea     r8, [rdx+rax]
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rdx, [r8]
                mov     rax, r10
                mov     r9, 0FFFFF6FB7DBED7F8h
                cmp     r8, rax
                jb      short loc_140281AC6
                mov     rax, r9
                cmp     r8, rax
                ja      short loc_140281AC6
                call    sub_140349680
                test    eax, eax
                jz      short loc_140281AC6
                test    dl, 1
                jz      short loc_140281AC6
                test    dl, 20h
                jz      short loc_140281A7F
                test    dl, 42h
                jnz     short loc_140281AC6

loc_140281A7F:                          ; CODE XREF: sub_1402812A0+7D8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140281AC6
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140281AC6
                or      rdx, 42h

loc_140281AC6:                          ; CODE XREF: sub_1402812A0+7BD↑j
                                        ; sub_1402812A0+7C5↑j ...
                mov     [rsp+140h+var_118], rdx
                mov     rax, r10
                lea     rcx, [rsp+140h+var_118]
                cmp     rcx, rax
                jb      short loc_140281B47
                mov     rax, r9
                lea     rcx, [rsp+140h+var_118]
                cmp     rcx, rax
                ja      short loc_140281B47
                call    sub_140349680
                test    eax, eax
                jz      short loc_140281B47
                test    dl, 1
                jz      short loc_140281B47
                test    dl, 20h
                jz      short loc_140281AFD
                test    dl, 42h
                jnz     short loc_140281B47

loc_140281AFD:                          ; CODE XREF: sub_1402812A0+856↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140281B47
                lea     rax, [rsp+140h+var_118]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140281B47
                or      rdx, 42h

loc_140281B47:                          ; CODE XREF: sub_1402812A0+836↑j
                                        ; sub_1402812A0+843↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rdx, 0Ch
                and     rdx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rdi, [rdx+rdx*2]
                shl     rdi, 4
                mov     rax, rax
                add     rdi, rax
                mov     [rbp+40h+arg_10], 0
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_140281BA5

loc_140281B80:                          ; CODE XREF: sub_1402812A0+8F0↓j
                                        ; sub_1402812A0+8F9↓j
                lea     rcx, [rbp+40h+arg_10]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140281B80
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140281B80
                mov     r10, 0FFFFF6FB7DBED000h

loc_140281BA5:                          ; CODE XREF: sub_1402812A0+8DE↑j
                mov     rax, [rdi+10h]
                lea     rcx, [rax+10000h]
                xor     rcx, rax
                and     ecx, 3FF0000h
                xor     rcx, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     [rdi+10h], rcx
                lock and [rdi+18h], rax
                mov     rcx, [rdi+8]
                xorps   xmm0, xmm0
                mov     r8, 8000000000000000h
                or      rcx, r8
                mov     rax, rcx
                sar     rax, 2Fh
                inc     rax
                movups  [rbp+40h+var_68], xmm0
                movups  [rbp+40h+var_58], xmm0
                cmp     rax, 1
                ja      loc_1402819F1
                shr     rcx, 9
                mov     r8, 7FFFFFFFF8h
                and     rcx, r8
                mov     rdx, 0FFFFF68000000000h
                mov     r9d, 4
                mov     rax, rdx
                add     rcx, rax
                mov     qword ptr [rbp+40h+var_68], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     qword ptr [rbp+40h+var_68+8], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     qword ptr [rbp+40h+var_58], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     r11, 0FFFFF6FB7DBED7F8h
                mov     qword ptr [rbp+40h+var_58+8], rcx
                nop     word ptr [rax+rax+00000000h]

loc_140281C70:                          ; CODE XREF: sub_1402812A0+A76↓j
                mov     r8, qword ptr [rbp+r9*8+40h+var_78+8]
                dec     r9
                mov     rcx, [r8]
                mov     rax, r10
                cmp     r8, rax
                jb      loc_140281D0A
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_140281D0A
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140281D0A
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_140281D0A
                test    cl, 1
                jz      short loc_140281D1C
                test    cl, 20h
                jz      short loc_140281CC3
                test    cl, 42h
                jnz     short loc_140281D0A

loc_140281CC3:                          ; CODE XREF: sub_1402812A0+A1C↑j
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     rax, [rdx+788h]
                test    rax, rax
                jz      short loc_140281D0A
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rcx
                or      r8, 20h
                movzx   edx, al
                and     dl, 20h
                cmovz   r8, rcx
                mov     rcx, r8
                test    al, 42h
                jz      short loc_140281D0A
                or      rcx, 42h

loc_140281D0A:                          ; CODE XREF: sub_1402812A0+9E1↑j
                                        ; sub_1402812A0+9ED↑j ...
                test    cl, 1
                jz      short loc_140281D1C
                test    cl, cl
                js      short loc_140281D1C
                test    r9, r9
                jnz     loc_140281C70

loc_140281D1C:                          ; CODE XREF: sub_1402812A0+A17↑j
                                        ; sub_1402812A0+A6D↑j ...
                mov     r8, 8000000000000000h
                jmp     loc_1402819FB
; ---------------------------------------------------------------------------

loc_140281D2B:                          ; CODE XREF: sub_1402812A0+766↑j
                mov     rax, cs:qword_140C4DDC0
                mov     edx, r10d
                and     edx, 1Fh
                or      rdx, 0FFFFFFFFF8000020h
                shl     rdx, 5
                test    rax, rax
                jz      short loc_140281D56
                test    rdx, rax
                jnz     short loc_140281D52
                or      rdx, rax
                jmp     short loc_140281D56
; ---------------------------------------------------------------------------

loc_140281D52:                          ; CODE XREF: sub_1402812A0+AAB↑j
                or      rdx, 10h

loc_140281D56:                          ; CODE XREF: sub_1402812A0+780↑j
                                        ; sub_1402812A0+AA6↑j ...
                mov     rdi, 0FFFFF6FB7DBED000h
                mov     rax, rdi
                cmp     rsi, rax
                jb      short loc_140281DBB
                mov     rax, r11
                cmp     rsi, rax
                ja      short loc_140281DBB
                call    sub_140349680
                test    eax, eax
                jz      short loc_140281D97
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_140281D8A
                test    dl, 1
                jz      short loc_140281D8A
                or      rdx, r8

loc_140281D8A:                          ; CODE XREF: sub_1402812A0+AE0↑j
                                        ; sub_1402812A0+AE5↑j
                mov     rcx, rsi
                mov     [rsi], rdx
                call    sub_140349620
                jmp     short loc_140281DBE
; ---------------------------------------------------------------------------

loc_140281D97:                          ; CODE XREF: sub_1402812A0+AD7↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140281DBB
                test    dl, 1
                jz      short loc_140281DBB
                or      rdx, r8

loc_140281DBB:                          ; CODE XREF: sub_1402812A0+AC6↑j
                                        ; sub_1402812A0+ACE↑j ...
                mov     [rsi], rdx

loc_140281DBE:                          ; CODE XREF: sub_1402812A0+AF5↑j
                mov     r9, [rbp+40h+arg_18]

loc_140281DC2:                          ; CODE XREF: sub_1402812A0+6BE↑j
                mov     ecx, [r12]
                mov     rdx, qword ptr [rsp+140h+var_E0]
                and     ecx, 0FFFh
                mov     rax, [r12+8]
                inc     rdx
                add     rax, 0FFFh
                mov     qword ptr [rsp+140h+var_E0], rdx
                add     rcx, rax
                shr     rcx, 0Ch
                cmp     rdx, rcx
                jnz     short loc_140281E1D
                mov     rcx, qword ptr [rsp+140h+var_F0+8]
                inc     rcx
                mov     qword ptr [rsp+140h+var_E0], 0
                mov     qword ptr [rsp+140h+var_F0+8], rcx
                cmp     rcx, qword ptr [rsp+140h+var_F0]
                jnb     short loc_140281E1D
                mov     rax, qword ptr [rsp+140h+var_100+8]
                add     rcx, rcx
                cmp     qword ptr [rax+rcx*8+8], 0
                jz      short loc_140281E42

loc_140281E1D:                          ; CODE XREF: sub_1402812A0+B4E↑j
                                        ; sub_1402812A0+B6B↑j
                mov     rax, qword ptr [rsp+140h+var_F0]
                cmp     qword ptr [rsp+140h+var_F0+8], rax
                jz      short loc_140281E42
                inc     r15
                mov     r11, 0FFFFF6FB7DBED7F8h
                mov     rdx, r14
                cmp     r15, r9
                jb      loc_140281880

loc_140281E42:                          ; CODE XREF: sub_1402812A0+478↑j
                                        ; sub_1402812A0+4DC↑j ...
                add     rsp, 108h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402812A0   endp

algn_140281E57:                         ; DATA XREF: .pdata:00000001400CEA90↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=100h

sub_140281E60   proc near               ; CODE XREF: sub_1402675F0+CA↑p
                                        ; sub_1402675F0+170↑p ...

var_1E0         = qword ptr -1E0h
var_1D0         = byte ptr -1D0h
var_1CC         = word ptr -1CCh
var_1C8         = dword ptr -1C8h
var_1C4         = dword ptr -1C4h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = word ptr -1B0h
var_1AC         = dword ptr -1ACh
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = dword ptr -190h
var_188         = qword ptr -188h
var_180         = dword ptr -180h
var_17C         = dword ptr -17Ch
var_178         = qword ptr -178h
var_170         = dword ptr -170h
var_16C         = dword ptr -16Ch
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = xmmword ptr -130h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_100         = word ptr -100h
var_FE          = byte ptr -0FEh
var_FA          = byte ptr -0FAh
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = qword ptr  58h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0C8h]
                sub     rsp, 1C8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+100h+var_50], rax
                mov     rax, [rbp+100h+arg_28]
                mov     r15, rcx
                mov     [rbp+100h+var_148], rax
                movzx   r13d, r8b
                mov     rax, [rbp+100h+arg_30]
                mov     rdi, r15
                mov     [rbp+100h+var_140], rax
                mov     rax, [rbp+100h+arg_38]
                mov     [rbp+100h+var_138], rax
                mov     rax, [rbp+100h+arg_40]
                mov     [rbp+100h+var_150], rax
                mov     rax, gs:188h
                mov     [rsp+200h+var_1D0], r8b
                mov     r8, rdx
                mov     rdx, [rbp+100h+arg_48]
                mov     [rsp+200h+var_198], r9
                xor     r9d, r9d
                mov     rax, [rax+0B8h]
                add     rax, 680h
                mov     [rbp+100h+var_118], rdx
                mov     [rsp+200h+var_1C0], rax
                shr     rdi, 9
                mov     [rsp+200h+var_1A8], r9
                movzx   ecx, word ptr [rax+0AEh]
                mov     rax, cs:qword_140C4E4C8
                mov     [rbp+100h+var_178], r9
                mov     rcx, [rax+rcx*8]
                movzx   eax, word ptr [rcx]
                mov     dword ptr [rdx], 1
                mov     rdx, 7FFFFFFFF8h
                and     rdi, rdx
                mov     [rsp+200h+var_1B0], ax
                mov     [rsp+200h+var_1CC], ax
                mov     rcx, 0FFFFF68000000000h
                mov     rax, rcx
                add     rdi, rax
                shr     r8, 9
                mov     [rbp+100h+var_110], rdi
                and     r8, rdx
                mov     rax, rcx
                add     r8, rax
                mov     [rsp+200h+var_1B8], rdi
                mov     eax, 2000h
                mov     [rbp+100h+var_160], r8
                mov     [rbp+100h+var_170], eax
                mov     r12d, r9d
                mov     [rbp+100h+var_180], r9d
                mov     [rbp+100h+var_17C], r9d
                mov     [rsp+200h+var_188], r9
                mov     rbx, rcx
                shl     rbx, 19h
                mov     rax, r8
                shl     rax, 19h
                sub     rax, rbx
                mov     [rbp+100h+var_158], rbx
                sar     rax, 10h
                mov     [rbp+100h+var_120], rax
                nop     word ptr [rax+rax+00000000h]

loc_140281FA0:                          ; CODE XREF: sub_140281E60+122D↓j
                mov     [rbp+100h+var_168], r8
                lea     rcx, [rbp+100h+var_FE]
                xorps   xmm0, xmm0
                mov     [rsp+200h+var_190], r9d
                mov     r8d, 0AEh
                mov     [rsp+200h+var_1A0], r9
                xor     edx, edx
                mov     esi, r9d
                movups  [rbp+100h+var_130], xmm0
                call    memset
                mov     r14, rdi
                mov     rdx, 0FFFFF68000000000h
                shl     r14, 19h
                mov     eax, 861h
                sub     r14, rbx
                mov     [rbp+100h+var_100], ax
                sar     r14, 10h
                mov     rcx, r14
                mov     rax, rdx
                cmp     r14, rax
                jb      short loc_140282021
                mov     r13, 0FFFFF6FFFFFFFFFFh
                nop

loc_140282000:                          ; CODE XREF: sub_140281E60+1B9↓j
                mov     rax, r13
                cmp     rcx, rax
                ja      short loc_14028201B
                shl     rcx, 19h
                sub     rcx, rbx
                sar     rcx, 10h
                mov     rax, rdx
                cmp     rcx, rax
                jnb     short loc_140282000

loc_14028201B:                          ; CODE XREF: sub_140281E60+1A6↑j
                movzx   r13d, [rsp+200h+var_1D0]

loc_140282021:                          ; CODE XREF: sub_140281E60+193↑j
                mov     rax, 0FFFF800000000000h
                cmp     rcx, rax
                jb      short loc_140282051
                cmp     rcx, cs:qword_140C4F9B8
                jb      short loc_140282042
                cmp     rcx, cs:qword_140C4E1E8
                jbe     short loc_140282051

loc_140282042:                          ; CODE XREF: sub_140281E60+1D7↑j
                mov     ecx, 1
                call    sub_1402A46FC
                mov     rbx, rax
                jmp     short loc_140282068
; ---------------------------------------------------------------------------

loc_140282051:                          ; CODE XREF: sub_140281E60+1CE↑j
                                        ; sub_140281E60+1E0↑j
                mov     rax, gs:188h
                mov     rbx, [rax+0B8h]
                add     rbx, 680h

loc_140282068:                          ; CODE XREF: sub_140281E60+1EF↑j
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1402258A0
                test    eax, eax
                jz      short loc_1402820A7
                lea     edx, [rax-1]
                shr     r14, 9
                mov     r9, 7FFFFFFFF8h
                mov     dword ptr [rbp+100h+var_130], edx
                and     r14, r9
                mov     r8, 0FFFFF68000000000h
                mov     rax, r8
                add     r14, rax
                mov     qword ptr [rbp+100h+var_130+8], r14
                jmp     short loc_140282110
; ---------------------------------------------------------------------------

loc_1402820A7:                          ; CODE XREF: sub_140281E60+218↑j
                or      [rbp+100h+var_100], 4
                lea     rax, [rbp+100h+var_130]
                mov     [rbp+100h+var_58], rax
                lea     rcx, [rbp+100h+var_100]
                movzx   eax, [rbp+100h+var_FE]
                and     al, 0E7h
                mov     [rbp+100h+var_F0], 0
                or      al, 4
                mov     [rbp+100h+var_E8], rbx
                mov     [rbp+100h+var_FE], al
                lea     rax, sub_14034E280
                mov     [rbp+100h+var_60], rax
                mov     rax, [rbp+100h+var_120]
                mov     [rbp+100h+var_D8], rax
                mov     [rbp+100h+var_FA], r13b
                mov     [rbp+100h+var_E0], r14
                call    sub_140220490
                mov     edx, dword ptr [rbp+100h+var_130]
                mov     r9, 7FFFFFFFF8h
                mov     r14, qword ptr [rbp+100h+var_130+8]
                mov     r8, 0FFFFF68000000000h

loc_140282110:                          ; CODE XREF: sub_140281E60+245↑j
                test    r14, r14
                jnz     short loc_140282122
                mov     r14, [rbp+100h+var_160]
                add     r14, 8
                jmp     loc_1402821AB
; ---------------------------------------------------------------------------

loc_140282122:                          ; CODE XREF: sub_140281E60+2B3↑j
                mov     r13, r14
                shr     r13, 9
                and     r13, r9
                mov     rax, r8
                add     r13, rax
                mov     [rsp+200h+var_188], r13
                test    edx, edx
                jz      loc_140282258
                mov     rbx, r13
                cmp     edx, 1
                jbe     short loc_140282163
                lea     ecx, [rdx-1]
                nop     word ptr [rax+rax+00h]

loc_140282150:                          ; CODE XREF: sub_140281E60+301↓j
                shr     rbx, 9
                and     rbx, r9
                mov     rax, r8
                add     rbx, rax
                sub     rcx, 1
                jnz     short loc_140282150

loc_140282163:                          ; CODE XREF: sub_140281E60+2E5↑j
                mov     r13, rbx
                shr     r13, 9
                and     r13, r9
                mov     rax, r8
                add     r13, rax
                cmp     r14, rdi
                jz      loc_140283092

loc_14028217C:                          ; CODE XREF: sub_140281E60+3FB↓j
                mov     rcx, [rsp+200h+var_1C0]
                mov     rdx, r13
                call    sub_140312B40
                xor     edx, edx
                mov     r13, r14
                and     r13, 0FFFFFFFFFFFFF000h
                mov     [rsp+200h+var_188], rdx
                sub     r13, 8

loc_14028219E:                          ; CODE XREF: sub_140281E60+434↓j
                cmp     r13, [rbp+100h+var_160]
                cmova   r13, [rbp+100h+var_160]
                mov     [rbp+100h+var_168], r13

loc_1402821AB:                          ; CODE XREF: sub_140281E60+2BD↑j
                xor     r10d, r10d
                xchg    ax, ax

loc_1402821B0:                          ; CODE XREF: sub_140281E60+11E1↓j
                mov     rdx, [rsp+200h+var_1A0]
                mov     ebx, r10d
                mov     [rsp+200h+var_1C4], r10d
                mov     r13d, 2000h
                mov     [rsp+200h+var_1AC], r10d
                mov     [rsp+200h+var_1C8], ebx
                test    rdx, rdx
                jz      loc_140282356
                mov     r8, rdx
                mov     r11, 0FFFFF6FB7DBED000h
                mov     rax, r11
                lea     rcx, [rsp+200h+var_1A0]
                cmp     rcx, rax
                jb      loc_1402822BE
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                lea     rcx, [rsp+200h+var_1A0]
                cmp     rcx, rax
                ja      loc_1402822BE
                call    sub_140349680
                test    eax, eax
                jz      loc_1402822BE
                test    r8b, 1
                jz      loc_1402822BE
                test    r8b, 20h
                jz      short loc_140282235
                test    r8b, 42h
                jnz     loc_1402822BE

loc_140282235:                          ; CODE XREF: sub_140281E60+3C9↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jnz     short loc_140282299
                mov     rdx, [rsp+200h+var_1A0]
                jmp     short loc_1402822BE
; ---------------------------------------------------------------------------

loc_140282258:                          ; CODE XREF: sub_140281E60+2D9↑j
                cmp     rdi, r14
                jnz     loc_14028217C
                mov     rcx, rdi
                call    sub_1402805F0
                xor     esi, esi
                mov     [rsp+200h+var_1A0], rax
                mov     r13, rdi
                mov     [rsp+200h+var_190], 1
                and     r13, 0FFFFFFFFFFFFF000h
                lea     r14, [rdi+8]
                add     r13, 0FF8h
                test    rax, rax
                setz    sil
                jmp     loc_14028219E
; ---------------------------------------------------------------------------

loc_140282299:                          ; CODE XREF: sub_140281E60+3EF↑j
                lea     rax, [rsp+200h+var_1A0]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, r8
                test    al, 20h
                jz      short loc_1402822B6
                or      rdx, 20h

loc_1402822B6:                          ; CODE XREF: sub_140281E60+450↑j
                test    al, 42h
                jz      short loc_1402822BE
                or      rdx, 42h

loc_1402822BE:                          ; CODE XREF: sub_140281E60+38D↑j
                                        ; sub_140281E60+3A8↑j ...
                mov     rax, rdx
                and     eax, 3E0h
                cmp     rax, 200h
                jnz     short loc_1402822EE
                test    dl, 1
                jnz     short loc_1402822EE
                bt      rdx, 0Ah
                jnb     loc_140282C29
                mov     rcx, rdx
                call    sub_14031C870
                test    eax, eax
                jnz     loc_140282C29

loc_1402822EE:                          ; CODE XREF: sub_140281E60+46C↑j
                                        ; sub_140281E60+471↑j
                mov     rcx, [rsp+200h+var_198]
                lea     rax, [rsp+200h+var_1CC]
                lea     r9, [rsp+200h+var_1AC]
                mov     [rsp+200h+var_1E0], rax
                lea     r8, [rsp+200h+var_1A8]
                mov     rdx, rdi
                mov     r13d, 1000h
                call    sub_1402834D0
                mov     rbx, [rsp+200h+var_1A8]
                test    rbx, rbx
                jnz     loc_140283046
                mov     ebx, [rsp+200h+var_1C8]
                xor     r10d, r10d
                mov     rsi, [rsp+200h+var_1C0]
                mov     r15d, eax
                mov     rcx, [rbp+100h+arg_20]
                mov     r11, 0FFFFF6FB7DBED000h
                test    eax, eax
                jnz     loc_14028252C
                mov     r13d, 2000h
                jmp     loc_14028252C
; ---------------------------------------------------------------------------

loc_140282356:                          ; CODE XREF: sub_140281E60+36F↑j
                mov     rax, [rbp+100h+var_118]
                mov     r11, [rsp+200h+var_198]
                mov     [rax], r10d
                mov     r9d, [r11+30h]
                mov     eax, r9d
                and     eax, 70h
                cmp     al, 30h ; '0'
                jz      loc_140282C06
                mov     eax, r9d
                and     al, 70h
                cmp     al, 10h
                jz      loc_140282C06
                bt      r9d, 14h
                jnb     loc_140282417
                cmp     dword ptr [r11+34h], 0
                jge     short loc_1402823B2
                mov     r15d, r9d
                mov     rcx, r11
                shr     r15d, 7
                mov     r13d, 1000h
                and     r15d, 1Fh
                call    sub_140267530
                mov     [rsp+200h+var_1AC], eax
                jmp     short loc_1402823B5
; ---------------------------------------------------------------------------

loc_1402823B2:                          ; CODE XREF: sub_140281E60+531↑j
                mov     r15d, ebx

loc_1402823B5:                          ; CODE XREF: sub_140281E60+550↑j
                and     r9d, 500000h
                cmp     r9d, 500000h
                jnz     loc_140282516
                mov     edx, 10h
                mov     rcx, r11
                call    sub_1402EBB3C
                test    rax, rax
                jz      loc_140282516
                mov     r8, [rax+18h]
                test    r8, r8
                jz      loc_140282516
                mov     rcx, r8
                call    sub_1402073F0
                test    al, al
                jz      loc_140282516
                mov     rax, [r8]
                movzx   ecx, word ptr [rax]
                mov     [rsp+200h+var_1CC], cx
                mov     rcx, r8
                call    sub_1402073C8
                xor     r10d, r10d
                jmp     loc_140282516
; ---------------------------------------------------------------------------

loc_140282417:                          ; CODE XREF: sub_140281E60+526↑j
                mov     rax, [r11+48h]
                lea     r9, [rbp+100h+var_178]
                shr     r15, 0Ch
                mov     r8d, 4
                mov     rdx, r15
                mov     rcx, [rax]
                mov     rax, cs:qword_140C4E4C8
                movzx   ecx, word ptr [rcx+3Ch]
                and     ecx, 3FFh
                mov     rcx, [rax+rcx*8]
                movzx   eax, word ptr [rcx]
                mov     rcx, r11
                mov     [rsp+200h+var_1CC], ax
                call    sub_140283270
                mov     [rsp+200h+var_1A8], rax
                mov     rdi, rax
                test    rax, rax
                jnz     loc_14028257B
                mov     rcx, [rbp+100h+arg_20]
                xor     r10d, r10d
                test    rcx, rcx
                jz      short loc_1402824A4
                xor     r9d, r9d
                mov     word ptr [rsp+200h+var_1E0], r10w
                xor     r8d, r8d
                mov     edx, r13d
                call    sub_140347BD4
                test    eax, eax
                jnz     short loc_1402824A4
                mov     rdi, [rsp+200h+var_1B8]
                mov     ebx, 1
                mov     r15d, [rsp+200h+var_1C4]
                mov     r14, rdi
                mov     [rsp+200h+var_1C8], ebx
                jmp     short loc_14028251D
; ---------------------------------------------------------------------------

loc_1402824A4:                          ; CODE XREF: sub_140281E60+612↑j
                                        ; sub_140281E60+62A↑j
                mov     r11, [rsp+200h+var_198]
                mov     rcx, r11
                call    sub_140233020
                test    eax, eax
                jz      short loc_14028250A
                mov     rax, [rbp+100h+var_178]
                test    rax, rax
                jz      short loc_14028250A
                cmp     qword ptr [rax+8], 0
                jnz     short loc_14028250A
                mov     rdi, [rsp+200h+var_1B8]
                mov     r9, r14
                mov     r8, rdi
                mov     [rsp+200h+var_1E0], rax
                mov     rdx, r15
                mov     rcx, r11
                call    sub_140547920
                mov     rsi, [rsp+200h+var_1C0]
                xor     r10d, r10d
                mov     rcx, [rbp+100h+arg_20]
                mov     r14, rax
                mov     r11, 0FFFFF6FB7DBED000h
                mov     r15d, ebx
                cmp     rax, rdi
                jnz     short loc_14028252C
                lea     r14, [rdi+8]
                jmp     short loc_14028252C
; ---------------------------------------------------------------------------

loc_14028250A:                          ; CODE XREF: sub_140281E60+653↑j
                                        ; sub_140281E60+65C↑j ...
                mov     rdi, [rsp+200h+var_1B8]
                lea     r14, [rdi+8]

loc_140282513:                          ; CODE XREF: sub_140281E60+DAE↓j
                                        ; sub_140281E60+DC4↓j
                mov     r15d, ebx

loc_140282516:                          ; CODE XREF: sub_140281E60+563↑j
                                        ; sub_140281E60+579↑j ...
                mov     rcx, [rbp+100h+arg_20]

loc_14028251D:                          ; CODE XREF: sub_140281E60+642↑j
                mov     rsi, [rsp+200h+var_1C0]

loc_140282522:                          ; CODE XREF: sub_140281E60+D04↓j
                mov     r11, 0FFFFF6FB7DBED000h

loc_14028252C:                          ; CODE XREF: sub_140281E60+4E5↑j
                                        ; sub_140281E60+4F1↑j ...
                mov     r8, [rbp+100h+var_110]
                cmp     rdi, r8
                jnz     loc_140282C4F
                movzx   eax, [rsp+200h+var_1CC]
                mov     ebx, [rsp+200h+var_1AC]
                mov     [rsp+200h+var_1B0], ax
                mov     [rbp+100h+var_170], r13d
                mov     [rbp+100h+var_180], r15d
                mov     [rbp+100h+var_17C], ebx
                test    rcx, rcx
                jz      loc_140282F64
                mov     r9d, ebx
                mov     word ptr [rsp+200h+var_1E0], ax
                mov     r8d, r15d
                mov     edx, r13d
                call    sub_140347BD4
                test    eax, eax
                jz      loc_1402831F8
                jmp     loc_140282F64
; ---------------------------------------------------------------------------

loc_14028257B:                          ; CODE XREF: sub_140281E60+5FF↑j
                mov     rbx, [rbp+100h+var_178]
                test    esi, esi
                jz      loc_1402826D8
                mov     ecx, [rbx+34h]
                mov     eax, 20h ; ' '
                mov     rdx, [rbp+100h+var_168]
                mov     rsi, [rsp+200h+var_1B8]
                mov     r8, [rbx+8]
                sub     rdx, rsi
                sar     rdx, 3
                inc     rdx
                cmp     rdx, 20h ; ' '
                cmovg   rdx, rax
                mov     eax, [rbx+2Ch]
                and     ecx, 3FFFFFFFh
                sub     rax, rcx
                test    byte ptr [rbx+22h], 2
                lea     rcx, [r8+rax*8]
                jnz     short loc_1402825E3
                cmp     rdi, r8
                jb      short loc_1402825E3
                cmp     rdi, rcx
                jnb     short loc_1402825E3
                lea     rax, [rdi+rdx*8]
                cmp     rax, rcx
                jbe     short loc_1402825E7
                mov     rdx, rcx
                sub     rdx, rdi
                sar     rdx, 3
                jmp     short loc_1402825E7
; ---------------------------------------------------------------------------

loc_1402825E3:                          ; CODE XREF: sub_140281E60+762↑j
                                        ; sub_140281E60+767↑j ...
                xor     eax, eax
                mov     edx, eax

loc_1402825E7:                          ; CODE XREF: sub_140281E60+775↑j
                                        ; sub_140281E60+781↑j
                lea     r9, [rsi-8]
                lea     r9, [r9+rdx*8]
                lea     r14, [rsi+8]
                cmp     r14, r9
                ja      loc_1402826A3
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rsi, 0FFFFF6FB7DBED7F8h

loc_140282610:                          ; CODE XREF: sub_140281E60+82F↓j
                mov     rdx, [r14]
                mov     rax, r10
                cmp     r14, rax
                jb      short loc_140282683
                mov     rax, rsi
                cmp     r14, rax
                ja      short loc_140282683
                call    sub_140349680
                test    eax, eax
                jz      short loc_140282683
                test    dl, 1
                jz      short loc_140282683
                test    dl, 20h
                jz      short loc_14028263B
                test    dl, 42h
                jnz     short loc_140282683

loc_14028263B:                          ; CODE XREF: sub_140281E60+7D4↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140282683
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140282683
                or      rdx, 42h

loc_140282683:                          ; CODE XREF: sub_140281E60+7B9↑j
                                        ; sub_140281E60+7C1↑j ...
                test    rdx, rdx
                jnz     short loc_140282695
                add     r14, 8
                cmp     r14, r9
                jbe     loc_140282610

loc_140282695:                          ; CODE XREF: sub_140281E60+826↑j
                mov     rdi, [rsp+200h+var_1A8]
                mov     rbx, [rbp+100h+var_178]
                mov     rsi, [rsp+200h+var_1B8]

loc_1402826A3:                          ; CODE XREF: sub_140281E60+796↑j
                cmp     [rsp+200h+var_190], 0
                jz      loc_140282731

loc_1402826AE:                          ; CODE XREF: sub_140281E60+87D↓j
                mov     r11, [rsp+200h+var_198]

loc_1402826B3:                          ; CODE XREF: sub_140281E60+8E0↓j
                                        ; sub_140281E60+903↓j
                xor     r10d, r10d

loc_1402826B6:                          ; CODE XREF: sub_140281E60+91F↓j
                mov     rdx, [r11+78h]
                test    rdx, rdx
                jns     loc_140282784
                mov     rdx, [rdx]
                mov     r8d, 1
                dec     rdx
                shr     rdx, 0Ch
                jmp     loc_14028278E
; ---------------------------------------------------------------------------

loc_1402826D8:                          ; CODE XREF: sub_140281E60+721↑j
                cmp     [rsp+200h+var_190], 0
                jnz     short loc_1402826AE
                mov     ecx, [rbx+34h]
                mov     rsi, [rsp+200h+var_1B8]
                and     ecx, 3FFFFFFFh
                mov     eax, [rbx+2Ch]
                sub     r14, rsi
                mov     rdx, [rbx+8]
                sub     rax, rcx
                sar     r14, 3
                test    byte ptr [rbx+22h], 2
                lea     rcx, [rdx+rax*8]
                jnz     short loc_140282727
                cmp     rdi, rdx
                jb      short loc_140282727
                cmp     rdi, rcx
                jnb     short loc_140282727
                lea     rax, [rdi+r14*8]
                cmp     rax, rcx
                jbe     short loc_14028272D
                mov     r14, rcx
                sub     r14, rdi
                sar     r14, 3
                jmp     short loc_14028272D
; ---------------------------------------------------------------------------

loc_140282727:                          ; CODE XREF: sub_140281E60+8A6↑j
                                        ; sub_140281E60+8AB↑j ...
                mov     r14d, 1

loc_14028272D:                          ; CODE XREF: sub_140281E60+8B9↑j
                                        ; sub_140281E60+8C5↑j
                lea     r14, [rsi+r14*8]

loc_140282731:                          ; CODE XREF: sub_140281E60+848↑j
                mov     r11, [rsp+200h+var_198]
                mov     rcx, r11
                call    sub_140233020
                test    eax, eax
                jz      loc_1402826B3
                mov     r8, r14
                mov     rdx, rbx
                sub     r8, rsi
                mov     rcx, rdi
                sar     r8, 3
                call    sub_140355C68
                mov     r11, [rsp+200h+var_198]
                cmp     rax, rdi
                jz      loc_1402826B3
                sub     rax, rdi
                sar     rax, 3
                xor     r10d, r10d
                mov     edi, r10d
                mov     [rsp+200h+var_1A8], r10
                lea     r14, [rsi+rax*8]
                jmp     loc_1402826B6
; ---------------------------------------------------------------------------

loc_140282784:                          ; CODE XREF: sub_140281E60+85D↑j
                mov     r8d, r10d
                mov     rdx, 0FFFFFFFFFFFFFFFFh

loc_14028278E:                          ; CODE XREF: sub_140281E60+873↑j
                test    rdi, rdi
                jz      loc_140282C3D
                mov     r10d, [r11+30h]
                mov     eax, r10d
                and     al, 70h
                cmp     al, 20h ; ' '
                jnz     loc_14028289A
                mov     rbx, [r11+48h]
                xor     r10d, r10d
                mov     edx, r10d
                test    rbx, rbx
                jz      short loc_14028281C

loc_1402827B7:                          ; CODE XREF: sub_140281E60+9B2↓j
                test    byte ptr [rbx+22h], 2
                jz      short loc_1402827F6
                mov     rsi, [rbx]
                test    dword ptr [rsi+38h], 4000000h
                jz      short loc_1402827F6
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                call    sub_140245840
                mov     r8, rbx
                mov     edx, eax
                mov     rcx, rsi
                call    sub_1403A61F8
                mov     rdi, [rsp+200h+var_1A8]
                mov     rdx, [rax+48h]
                jmp     short loc_1402827FA
; ---------------------------------------------------------------------------

loc_1402827F6:                          ; CODE XREF: sub_140281E60+95B↑j
                                        ; sub_140281E60+967↑j
                mov     rdx, [rbx+8]

loc_1402827FA:                          ; CODE XREF: sub_140281E60+994↑j
                cmp     rdi, rdx
                jb      short loc_14028280B
                mov     eax, [rbx+2Ch]
                lea     rcx, [rdx+rax*8]
                cmp     rdi, rcx
                jb      short loc_140282814

loc_14028280B:                          ; CODE XREF: sub_140281E60+99D↑j
                mov     rbx, [rbx+10h]
                test    rbx, rbx
                jnz     short loc_1402827B7

loc_140282814:                          ; CODE XREF: sub_140281E60+9A9↑j
                mov     r11, [rsp+200h+var_198]
                xor     r10d, r10d

loc_14028281C:                          ; CODE XREF: sub_140281E60+955↑j
                mov     ecx, [rbx+34h]
                sub     rdi, rdx
                mov     eax, [rbx+2Ch]
                and     ecx, 3FFFFFFFh
                sub     eax, ecx
                sar     rdi, 3
                mov     ecx, eax
                cmp     rdi, rcx
                jb      short loc_140282849
                mov     rdi, [rsp+200h+var_1B8]
                mov     r15d, r10d
                mov     ebx, [rsp+200h+var_1C8]
                jmp     loc_140282516
; ---------------------------------------------------------------------------

loc_140282849:                          ; CODE XREF: sub_140281E60+9D6↑j
                mov     r15d, [r11+30h]
                shr     r15d, 7
                and     r15d, 1Fh
                cmp     r15d, 7
                jnz     short loc_140282867
                movzx   r15d, word ptr [rbx+20h]
                shr     r15d, 1
                and     r15d, 1Fh

loc_140282867:                          ; CODE XREF: sub_140281E60+9F9↑j
                mov     rdi, [rsp+200h+var_1B8]
                mov     ebx, [rsp+200h+var_1C8]
                mov     rsi, [rsp+200h+var_1C0]
                mov     rcx, [rbp+100h+arg_20]
                mov     r11, 0FFFFF6FB7DBED000h
                test    r15d, r15d
                jz      loc_14028252C
                mov     r13d, 1000h
                jmp     loc_14028252C
; ---------------------------------------------------------------------------

loc_14028289A:                          ; CODE XREF: sub_140281E60+942↑j
                mov     rax, [rbx]
                mov     esi, r13d
                cmp     qword ptr [rax+40h], 0
                jnz     loc_140282B69
                mov     eax, [rax+38h]
                test    r13d, eax
                jnz     loc_140282B69
                mov     r15, [rsp+200h+var_188]
                test    r15, r15
                jz      short loc_1402828D5
                mov     rcx, [rsp+200h+var_1C0]
                mov     rdx, r15
                call    sub_140312B40
                xor     eax, eax
                mov     [rsp+200h+var_188], rax

loc_1402828D5:                          ; CODE XREF: sub_140281E60+A5F↑j
                movzx   edx, [rsp+200h+var_1D0]
                mov     rcx, [rsp+200h+var_1C0]
                call    sub_140226960
                mov     eax, [rbx+34h]
                mov     ecx, [rbx+2Ch]
                and     eax, 3FFFFFFFh
                sub     r14, [rsp+200h+var_1B8]
                sub     rcx, rax
                mov     rax, [rbx+8]
                mov     rbx, [rdi]
                sar     r14, 3
                lea     rsi, [rax+rcx*8]
                mov     rcx, rdi
                sub     rsi, rdi
                sar     rsi, 3
                cmp     rsi, r14
                cmova   rsi, r14
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_140282985
                call    sub_140349680
                test    eax, eax
                jz      short loc_140282985
                test    bl, 1
                jz      short loc_140282985
                test    bl, 20h
                jz      short loc_140282938
                test    bl, 42h
                jnz     short loc_140282985

loc_140282938:                          ; CODE XREF: sub_140281E60+AD1↑j
                mov     rax, gs:188h
                mov     rdi, [rsp+200h+var_1A8]
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140282985
                mov     rax, rdi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_140282985
                or      rbx, 42h

loc_140282985:                          ; CODE XREF: sub_140281E60+ABE↑j
                                        ; sub_140281E60+AC7↑j ...
                test    rbx, rbx
                jz      short loc_1402829A3
                mov     rax, [rsp+200h+var_198]
                mov     r13d, 1000h
                mov     r15d, [rax+30h]
                shr     r15d, 7
                and     r15d, 1Fh
                jmp     short loc_1402829A8
; ---------------------------------------------------------------------------

loc_1402829A3:                          ; CODE XREF: sub_140281E60+B28↑j
                mov     r15d, [rsp+200h+var_1C4]

loc_1402829A8:                          ; CODE XREF: sub_140281E60+B41↑j
                mov     rcx, [rbp+100h+arg_20]
                test    rcx, rcx
                jz      short loc_1402829E3
                movzx   eax, [rsp+200h+var_1CC]
                xor     r9d, r9d
                mov     r8d, r15d
                mov     word ptr [rsp+200h+var_1E0], ax
                mov     edx, r13d
                call    sub_140347BD4
                test    eax, eax
                jnz     short loc_1402829E3
                mov     ebx, 1
                xor     eax, eax
                mov     [rsp+200h+var_1C8], ebx
                mov     r12d, eax
                jmp     loc_140282B44
; ---------------------------------------------------------------------------

loc_1402829E3:                          ; CODE XREF: sub_140281E60+B52↑j
                                        ; sub_140281E60+B6E↑j
                test    rsi, rsi
                jz      loc_140282B40
                nop     dword ptr [rax+00h]

loc_1402829F0:                          ; CODE XREF: sub_140281E60+C5A↓j
                                        ; sub_140281E60+CCC↓j
                mov     rdx, [rdi]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     rdi, rax
                jb      short loc_140282A7C
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rdi, rax
                ja      short loc_140282A7C
                call    sub_140349680
                test    eax, eax
                jz      short loc_140282A7C
                test    dl, 1
                jz      short loc_140282A7C
                test    dl, 20h
                jz      short loc_140282A2F
                test    dl, 42h
                jnz     short loc_140282A7C

loc_140282A2F:                          ; CODE XREF: sub_140281E60+BC8↑j
                mov     rax, gs:188h
                mov     rdi, [rsp+200h+var_1A8]
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140282A7C
                mov     rax, rdi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140282A7C
                or      rdx, 42h

loc_140282A7C:                          ; CODE XREF: sub_140281E60+BA3↑j
                                        ; sub_140281E60+BB5↑j ...
                test    rdx, rdx
                jz      short loc_140282A90
                cmp     r13d, 1000h
                jnz     loc_140282B40
                jmp     short loc_140282A9D
; ---------------------------------------------------------------------------

loc_140282A90:                          ; CODE XREF: sub_140281E60+C1F↑j
                cmp     r13d, 1000h
                jz      loc_140282B40

loc_140282A9D:                          ; CODE XREF: sub_140281E60+C2E↑j
                add     rdi, 8
                inc     r12
                mov     [rsp+200h+var_1A8], rdi
                sub     rsi, 1
                jz      loc_140282B40

loc_140282AB3:                          ; CODE XREF: sub_140281E60+CC1↓j
                test    rdi, 0FFFh
                jnz     loc_1402829F0
                mov     rax, 7FFFFFFFF8h
                mov     rcx, rdi
                shr     rcx, 9
                and     rcx, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     rcx, rax
                call    sub_1402805F0
                test    al, 1
                jnz     short loc_140282B25
                test    rax, 3E0h
                jnz     short loc_140282B25
                cmp     r13d, 1000h
                jz      short loc_140282B40
                cmp     rsi, 200h
                jbe     short loc_140282B34
                add     rdi, 1000h
                add     r12, 200h
                mov     [rsp+200h+var_1A8], rdi
                sub     rsi, 200h
                jnz     short loc_140282AB3
                jmp     short loc_140282B40
; ---------------------------------------------------------------------------

loc_140282B25:                          ; CODE XREF: sub_140281E60+C8B↑j
                                        ; sub_140281E60+C93↑j
                cmp     r13d, 1000h
                jz      loc_1402829F0
                jmp     short loc_140282B40
; ---------------------------------------------------------------------------

loc_140282B34:                          ; CODE XREF: sub_140281E60+CA5↑j
                lea     rax, [rdi+rsi*8]
                add     r12, rsi
                mov     [rsp+200h+var_1A8], rax

loc_140282B40:                          ; CODE XREF: sub_140281E60+B86↑j
                                        ; sub_140281E60+C28↑j ...
                mov     ebx, [rsp+200h+var_1C8]

loc_140282B44:                          ; CODE XREF: sub_140281E60+B7E↑j
                mov     rdi, [rsp+200h+var_1B8]
                mov     rsi, [rsp+200h+var_1C0]
                mov     rcx, rsi
                lea     r14, [rdi+r12*8]
                call    sub_140231340
                mov     rcx, [rbp+100h+arg_20]
                xor     r10d, r10d
                jmp     loc_140282522
; ---------------------------------------------------------------------------

loc_140282B69:                          ; CODE XREF: sub_140281E60+A45↑j
                                        ; sub_140281E60+A51↑j
                mov     eax, [rbx+34h]
                mov     ecx, [rbx+2Ch]
                and     eax, 3FFFFFFFh
                sub     rcx, rax
                mov     rax, [rbx+8]
                lea     r12, [rax+rcx*8]
                sub     r12, rdi
                mov     rdi, [rsp+200h+var_1B8]
                sub     r14, rdi
                sar     r12, 3
                sar     r14, 3
                cmp     r12, r14
                cmova   r12, r14
                mov     r9, r12
                test    r8d, r8d
                jz      short loc_140282BD2
                mov     eax, [r11+18h]
                movzx   ecx, byte ptr [r11+20h]
                shl     rcx, 20h
                or      rcx, rax
                mov     rax, r15
                sub     rax, rcx
                cmp     rax, rdx
                ja      short loc_140282BD2
                sub     rcx, r15
                lea     r12, [rdx+1]
                add     r12, rcx
                xor     eax, eax
                cmp     r9, r12
                mov     r8d, eax
                cmovbe  r12, r9

loc_140282BD2:                          ; CODE XREF: sub_140281E60+D3F↑j
                                        ; sub_140281E60+D5A↑j
                lea     r14, [rdi+r12*8]
                test    r8d, r8d
                jnz     short loc_140282BE8
                mov     r15d, r10d
                shr     r15d, 7
                and     r15d, 1Fh
                jmp     short loc_140282BED
; ---------------------------------------------------------------------------

loc_140282BE8:                          ; CODE XREF: sub_140281E60+D79↑j
                mov     r15d, [rsp+200h+var_1C4]

loc_140282BED:                          ; CODE XREF: sub_140281E60+D86↑j
                mov     ebx, [rsp+200h+var_1C8]
                test    r8d, r8d
                mov     r13d, 1000h
                cmovnz  r13d, esi
                xor     r10d, r10d
                jmp     loc_140282516
; ---------------------------------------------------------------------------

loc_140282C06:                          ; CODE XREF: sub_140281E60+50E↑j
                                        ; sub_140281E60+51B↑j
                and     r9d, 70h
                cmp     r9b, 30h ; '0'
                jnz     loc_140282513
                mov     rcx, r11
                call    sub_14054C650
                movzx   ecx, word ptr [rax]
                mov     [rsp+200h+var_1CC], cx
                jmp     loc_140282513
; ---------------------------------------------------------------------------

loc_140282C29:                          ; CODE XREF: sub_140281E60+478↑j
                                        ; sub_140281E60+488↑j
                mov     rsi, [rsp+200h+var_1C0]
                mov     r15d, ebx
                mov     rcx, [rbp+100h+arg_20]
                jmp     loc_14028252C
; ---------------------------------------------------------------------------

loc_140282C3D:                          ; CODE XREF: sub_140281E60+931↑j
                mov     r15d, [rsp+200h+var_1C4]
                mov     ebx, r15d
                mov     rdi, [rsp+200h+var_1B8]
                jmp     loc_140282516
; ---------------------------------------------------------------------------

loc_140282C4F:                          ; CODE XREF: sub_140281E60+6D3↑j
                mov     edx, [rbp+100h+var_170]
                movzx   eax, [rsp+200h+var_1B0]
                cmp     r13d, edx
                jnz     loc_1402831E5
                cmp     [rsp+200h+var_1CC], ax
                jnz     loc_1402831E5
                cmp     r15d, [rbp+100h+var_180]
                jnz     loc_1402831E5
                mov     ecx, [rbp+100h+var_17C]
                cmp     [rsp+200h+var_1AC], ecx
                jnz     loc_1402831E5
                test    r12, r12
                jnz     loc_140282F64
                cmp     ebx, 1
                jz      loc_140282F64
                mov     rax, rdi
                sub     rax, r8
                and     rax, 0FFFFFFFFFFFFFFF8h
                cmp     rax, 100h
                jl      loc_140282F64
                mov     r9, [rsp+200h+var_188]
                test    r9, r9
                jz      loc_140282E55
                movzx   edx, byte ptr [rsi+0B8h]
                and     dl, 7
                mov     [rbp+100h+var_16C], r10d
                mov     rax, 0FFFFF6FB7DBEDF68h
                mov     rax, rax
                cmp     r9, rax
                jnz     short loc_140282D33
                mov     rax, gs:20h
                test    dl, dl
                jnz     short loc_140282CF6
                add     rax, 8D70h
                mov     rax, [rax]
                test    rax, rax
                jmp     loc_140282E4F
; ---------------------------------------------------------------------------

loc_140282CF6:                          ; CODE XREF: sub_140281E60+E83↑j
                cmp     dl, 7
                jnz     short loc_140282D0C
                add     rax, 8D58h
                mov     rax, [rax]
                test    rax, rax
                jmp     loc_140282E4F
; ---------------------------------------------------------------------------

loc_140282D0C:                          ; CODE XREF: sub_140281E60+E99↑j
                cmp     dl, 5
                jnz     short loc_140282D22
                add     rax, 8D40h
                mov     rax, [rax]
                test    rax, rax
                jmp     loc_140282E4F
; ---------------------------------------------------------------------------

loc_140282D22:                          ; CODE XREF: sub_140281E60+EAF↑j
                add     rax, 8D88h
                mov     rax, [rax]
                test    rax, rax
                jmp     loc_140282E4F
; ---------------------------------------------------------------------------

loc_140282D33:                          ; CODE XREF: sub_140281E60+E76↑j
                test    dl, dl
                jnz     short loc_140282D8D
                mov     rax, r11
                mov     rcx, 0FFFFF6FB7DBEDFFFh
                cmp     r9, rax
                jb      short loc_140282D97
                mov     rax, rcx
                cmp     r9, rax
                ja      short loc_140282D97
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+690h]
                mov     rcx, [rax+260h]
                test    rcx, rcx
                jz      short loc_140282D8D
                mov     eax, r9d
                shr     eax, 3
                and     eax, 1FFh
                mov     edx, [rcx+rax*4]
                shr     edx, 1Eh
                and     edx, 1
                jmp     loc_140282E4D
; ---------------------------------------------------------------------------

loc_140282D8D:                          ; CODE XREF: sub_140281E60+ED5↑j
                                        ; sub_140281E60+F12↑j
                mov     rcx, 0FFFFF6FB7DBEDFFFh

loc_140282D97:                          ; CODE XREF: sub_140281E60+EE7↑j
                                        ; sub_140281E60+EEF↑j
                test    dl, dl
                jz      short loc_140282DC9
                mov     rax, r11
                cmp     r9, rax
                jb      short loc_140282DC9
                mov     rax, rcx
                cmp     r9, rax
                ja      short loc_140282DC9
                lea     r8, [rbp+100h+var_16C]
                mov     rdx, r9
                mov     rcx, rsi
                call    sub_140312D68
                mov     edx, [rax]
                mov     ecx, [rbp+100h+var_16C]
                shr     edx, cl
                test    dl, 2
                jmp     loc_140282E4F
; ---------------------------------------------------------------------------

loc_140282DC9:                          ; CODE XREF: sub_140281E60+F39↑j
                                        ; sub_140281E60+F41↑j ...
                mov     rdx, [r9]
                mov     rax, r11
                cmp     r9, rax
                jb      short loc_140282E46
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r9, rax
                ja      short loc_140282E46
                call    sub_140349680
                test    eax, eax
                jz      short loc_140282E46
                test    dl, 1
                jz      short loc_140282E46
                test    dl, 20h
                jz      short loc_140282DFE
                test    dl, 42h
                jnz     short loc_140282E46

loc_140282DFE:                          ; CODE XREF: sub_140281E60+F97↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140282E46
                mov     rax, r9
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140282E46
                or      rdx, 42h

loc_140282E46:                          ; CODE XREF: sub_140281E60+F72↑j
                                        ; sub_140281E60+F84↑j ...
                shr     rdx, 3Ch
                and     edx, 2

loc_140282E4D:                          ; CODE XREF: sub_140281E60+F28↑j
                test    edx, edx

loc_140282E4F:                          ; CODE XREF: sub_140281E60+E91↑j
                                        ; sub_140281E60+EA7↑j ...
                jnz     loc_1402831DF

loc_140282E55:                          ; CODE XREF: sub_140281E60+E52↑j
                movzx   eax, byte ptr [rsi+0B8h]
                and     al, 7
                cmp     al, 2
                lea     rax, unk_140C4F600
                jz      short loc_140282E70
                lea     rax, [rsi+0C0h]

loc_140282E70:                          ; CODE XREF: sub_140281E60+1007↑j
                mov     eax, [rax]
                bt      eax, 1Eh
                jb      loc_1402831DF
                cmp     [rsp+200h+var_1D0], 2
                jnb     loc_140282F64
                mov     rcx, gs:20h
                mov     r8d, [rcx+312Ch]
                mov     edi, [rcx+7BECh]
                mov     esi, [rcx+7E9Ch]
                test    r8b, 1
                jz      short loc_140282EC2
                mov     edx, 1
                cmp     esi, 7
                jbe     short loc_140282EFA
                movzx   eax, byte ptr [rcx+3129h]
                test    al, al
                jz      short loc_140282F03
                mov     ebx, edx
                jmp     short loc_140282F3C
; ---------------------------------------------------------------------------

loc_140282EC2:                          ; CODE XREF: sub_140281E60+1047↑j
                mov     edx, r10d
                test    r8b, 1Eh
                jz      short loc_140282ED2
                mov     ebx, 2
                jmp     short loc_140282F3C
; ---------------------------------------------------------------------------

loc_140282ED2:                          ; CODE XREF: sub_140281E60+1069↑j
                movzx   eax, byte ptr [rcx+3129h]
                test    al, al
                jz      short loc_140282EE4
                mov     ebx, 3
                jmp     short loc_140282F3C
; ---------------------------------------------------------------------------

loc_140282EE4:                          ; CODE XREF: sub_140281E60+107B↑j
                mov     rax, [rcx+10h]
                test    rax, rax
                jz      short loc_140282EFA
                cmp     rax, [rcx+8]
                jz      short loc_140282EFA
                mov     ebx, 4
                jmp     short loc_140282F3C
; ---------------------------------------------------------------------------

loc_140282EFA:                          ; CODE XREF: sub_140281E60+1051↑j
                                        ; sub_140281E60+108B↑j ...
                cmp     edi, 7
                jbe     short loc_140282F5F
                test    edx, edx
                jz      short loc_140282F21

loc_140282F03:                          ; CODE XREF: sub_140281E60+105C↑j
                test    r8b, 1Eh
                jz      short loc_140282F10
                mov     ebx, 5
                jmp     short loc_140282F3C
; ---------------------------------------------------------------------------

loc_140282F10:                          ; CODE XREF: sub_140281E60+10A7↑j
                mov     rax, [rcx+18h]
                cmp     [rcx+8], rax
                jz      short loc_140282F21
                mov     ebx, 6
                jmp     short loc_140282F3C
; ---------------------------------------------------------------------------

loc_140282F21:                          ; CODE XREF: sub_140281E60+10A1↑j
                                        ; sub_140281E60+10B8↑j
                cli
                mov     [rcx+7BECh], r10d
                mov     [rcx+7E9Ch], r10d
                call    sub_140326178
                sti
                xor     r10d, r10d
                mov     ebx, r10d

loc_140282F3C:                          ; CODE XREF: sub_140281E60+1060↑j
                                        ; sub_140281E60+1070↑j ...
                test    dword ptr cs:xmmword_140CFC480+4, 4000000h
                jz      short loc_140282F57
                mov     r8d, esi
                mov     edx, edi
                mov     ecx, ebx
                call    sub_1405A83BC
                xor     r10d, r10d

loc_140282F57:                          ; CODE XREF: sub_140281E60+10E6↑j
                test    ebx, ebx
                jnz     loc_1402831DA

loc_140282F5F:                          ; CODE XREF: sub_140281E60+109D↑j
                mov     rdi, [rsp+200h+var_1B8]

loc_140282F64:                          ; CODE XREF: sub_140281E60+6F5↑j
                                        ; sub_140281E60+716↑j ...
                cmp     [rsp+200h+var_1C8], 0
                jnz     loc_1402831FB
                test    r12, r12
                jnz     loc_1402831FB
                add     rdi, 8
                mov     [rsp+200h+var_1B8], rdi
                cmp     r14, rdi
                jnz     loc_1402831FB
                cmp     r14, [rbp+100h+var_168]
                ja      loc_1402831FB
                cmp     [rsp+200h+var_190], r12d
                jz      loc_14028302B
                mov     rdx, [rdi]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     rdi, rax
                jb      short loc_140283026
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rdi, rax
                ja      short loc_140283026
                call    sub_140349680
                test    eax, eax
                jz      short loc_140283026
                test    dl, 1
                jz      short loc_140283026
                test    dl, 20h
                jz      short loc_140282FDE
                test    dl, 42h
                jnz     short loc_140283026

loc_140282FDE:                          ; CODE XREF: sub_140281E60+1177↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140283026
                mov     rax, rdi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140283026
                or      rdx, 42h

loc_140283026:                          ; CODE XREF: sub_140281E60+1152↑j
                                        ; sub_140281E60+1164↑j ...
                mov     [rsp+200h+var_1A0], rdx

loc_14028302B:                          ; CODE XREF: sub_140281E60+1139↑j
                mov     r15, rdi
                mov     esi, r10d
                shl     r15, 19h
                sub     r15, [rbp+100h+var_158]
                sar     r15, 10h
                add     r14, 8
                jmp     loc_1402821B0
; ---------------------------------------------------------------------------

loc_140283046:                          ; CODE XREF: sub_140281E60+4BD↑j
                mov     r13, [rsp+200h+var_1C0]
                mov     rdx, [rsp+200h+var_188]
                mov     rcx, r13
                call    sub_140312B40
                movzx   edx, [rsp+200h+var_1D0]
                xor     eax, eax
                mov     rcx, r13
                mov     [rsp+200h+var_188], rax
                call    sub_140226960
                mov     rcx, rbx
                call    sub_14052D2E4
                mov     rcx, r13
                call    sub_140231340
                mov     r8, [rbp+100h+var_160]
                xor     r9d, r9d
                mov     rbx, [rbp+100h+var_158]
                movzx   r13d, [rsp+200h+var_1D0]
                jmp     loc_140281FA0
; ---------------------------------------------------------------------------

loc_140283092:                          ; CODE XREF: sub_140281E60+316↑j
                mov     rcx, rbx
                call    sub_1402805F0
                mov     [rsp+200h+var_1A0], rax
                mov     rdi, rax
                test    al, 1
                jz      short loc_14028311A
                lea     rcx, [rsp+200h+var_1A0]
                call    sub_1402433C0
                test    eax, eax
                jz      loc_140283138
                call    sub_140349680
                test    eax, eax
                jz      short loc_140283138
                mov     rdx, rdi
                test    dil, 20h
                jz      short loc_1402830D0
                test    dil, 42h
                jnz     short loc_140283138

loc_1402830D0:                          ; CODE XREF: sub_140281E60+1268↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jnz     short loc_1402830F3
                mov     rdi, [rsp+200h+var_1A0]
                jmp     short loc_140283138
; ---------------------------------------------------------------------------

loc_1402830F3:                          ; CODE XREF: sub_140281E60+128A↑j
                lea     rax, [rsp+200h+var_1A0]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                test    al, 20h
                jz      short loc_140283110
                mov     rdi, rdx
                or      rdi, 20h

loc_140283110:                          ; CODE XREF: sub_140281E60+12A7↑j
                test    al, 42h
                jz      short loc_140283138
                or      rdi, 42h
                jmp     short loc_140283138
; ---------------------------------------------------------------------------

loc_14028311A:                          ; CODE XREF: sub_140281E60+1244↑j
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_140283138
                test    dil, 10h
                jnz     short loc_140283134
                not     rax
                and     rdi, rax
                jmp     short loc_140283138
; ---------------------------------------------------------------------------

loc_140283134:                          ; CODE XREF: sub_140281E60+12CA↑j
                and     rdi, 0FFFFFFFFFFFFFFEFh

loc_140283138:                          ; CODE XREF: sub_140281E60+1252↑j
                                        ; sub_140281E60+125F↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rdi, 0Ch
                and     rdi, rax
                lea     rax, [rdi+rdi*2]
                add     rax, rax
                mov     rdi, 0FFFFFA8000000028h
                mov     rdi, [rdi+rax*8]
                mov     eax, 3FFh
                mov     r8, [rsp+200h+var_198]
                shr     rdi, 27h
                and     di, ax
                mov     ecx, [r8+30h]
                mov     eax, ecx
                and     eax, 70h
                cmp     al, 30h ; '0'
                jz      short loc_140283192
                mov     eax, ecx
                and     eax, 500000h
                cmp     eax, 500000h
                jz      short loc_140283192
                shr     ecx, 7
                and     ecx, 1Fh
                jmp     short loc_1402831A1
; ---------------------------------------------------------------------------

loc_140283192:                          ; CODE XREF: sub_140281E60+131A↑j
                                        ; sub_140281E60+1328↑j
                mov     rdx, [rsp+200h+var_1A0]
                mov     rcx, r8
                call    sub_1403F3E60
                mov     ecx, eax

loc_1402831A1:                          ; CODE XREF: sub_140281E60+1330↑j
                mov     rdx, [rbp+100h+var_148]
                mov     [rdx], ecx
                mov     rdx, r13
                mov     rcx, [rsp+200h+var_1C0]
                call    sub_140312B40
                mov     rdx, [rbp+100h+var_140]
                lea     rcx, [rbx+8]
                xor     eax, eax
                mov     [rdx], eax
                mov     rdx, [rbp+100h+var_138]
                mov     [rdx], di
                call    sub_14027F590
                mov     rcx, [rbp+100h+var_150]
                mov     [rcx], rax
                mov     eax, 1000h
                jmp     short loc_140283242
; ---------------------------------------------------------------------------

loc_1402831DA:                          ; CODE XREF: sub_140281E60+10F9↑j
                mov     rdi, [rsp+200h+var_1B8]

loc_1402831DF:                          ; CODE XREF: sub_140281E60:loc_140282E4F↑j
                                        ; sub_140281E60+1016↑j
                lea     r14, [rdi+8]
                jmp     short loc_1402831FB
; ---------------------------------------------------------------------------

loc_1402831E5:                          ; CODE XREF: sub_140281E60+DFA↑j
                                        ; sub_140281E60+E05↑j ...
                mov     r15d, [rbp+100h+var_180]
                mov     r13d, edx
                mov     [rsp+200h+var_1CC], ax
                mov     eax, [rbp+100h+var_17C]
                mov     [rsp+200h+var_1AC], eax

loc_1402831F8:                          ; CODE XREF: sub_140281E60+710↑j
                mov     r14, rdi

loc_1402831FB:                          ; CODE XREF: sub_140281E60+1109↑j
                                        ; sub_140281E60+1112↑j ...
                mov     rdx, [rsp+200h+var_188]
                test    rdx, rdx
                jz      short loc_14028320F
                mov     rcx, [rsp+200h+var_1C0]
                call    sub_140312B40

loc_14028320F:                          ; CODE XREF: sub_140281E60+13A3↑j
                mov     rcx, [rbp+100h+var_150]
                mov     eax, r13d
                mov     rdx, [rbp+100h+var_148]
                shl     r14, 19h
                sub     r14, [rbp+100h+var_158]
                sar     r14, 10h
                mov     [rcx], r14
                mov     ecx, [rsp+200h+var_1AC]
                mov     [rdx], r15d
                mov     rdx, [rbp+100h+var_140]
                mov     [rdx], ecx
                mov     rdx, [rbp+100h+var_138]
                movzx   ecx, [rsp+200h+var_1CC]
                mov     [rdx], cx

loc_140283242:                          ; CODE XREF: sub_140281E60+1378↑j
                mov     rcx, [rbp+100h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 1C8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140281E60
sub_140281E60   endp

algn_140283266:                         ; DATA XREF: .pdata:00000001400CEA9C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140283270   proc near               ; CODE XREF: sub_140224260+59B↑p
                                        ; sub_1402335C0+443↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140443A2A SIZE 0000004E BYTES

                mov     [rsp+arg_18], rsi
                push    r14
                sub     rsp, 20h
                mov     eax, [rcx+18h]
                mov     r14, r9
                movzx   r10d, byte ptr [rcx+20h]
                mov     esi, r8d
                shl     r10, 20h
                mov     r11, rdx
                or      r10, rax
                mov     eax, [rcx+30h]
                and     al, 70h
                cmp     al, 20h ; ' '
                jnz     short loc_1402832AC
                mov     rax, [rcx+48h]
                mov     rdx, [rax]
                test    dword ptr [rdx+38h], 4000000h
                jnz     short loc_1402832CD

loc_1402832AC:                          ; CODE XREF: sub_140283270+2A↑j
                mov     rdx, [rcx+58h]
                mov     r8, r11
                sub     rdx, [rcx+50h]
                sub     r8, r10
                sar     rdx, 3
                cmp     rdx, r8
                jb      short loc_1402832CD
                test    sil, 4
                jz      loc_140283389

loc_1402832CD:                          ; CODE XREF: sub_140283270+3A↑j
                                        ; sub_140283270+51↑j
                                        ; DATA XREF: ...
                mov     [rsp+28h+arg_0], rbx
                xor     r9d, r9d
                mov     [r14], r9
                mov     rbx, [rcx+48h]
                mov     [rsp+28h+arg_8], rbp
                mov     [rsp+28h+arg_10], rdi
                mov     rdi, [rcx+50h]
                sub     rdi, [rbx+8]
                mov     rbp, [rbx]
                sar     rdi, 3
                sub     rdi, r10
                add     rdi, r11
                cmp     [rbp+40h], r9
                jz      loc_1402833A5
                mov     eax, [rbx+2Ch]
                mov     r8d, r9d
                mov     rdx, rdi
                mov     rcx, rbx
                cmp     rdi, rax
                jb      short loc_14028333B

loc_140283316:                          ; CODE XREF: sub_140283270+C9↓j
                mov     rcx, [rcx+10h]
                sub     rdx, rax
                inc     r8
                cmp     r8, 3
                jz      loc_1402833EC

loc_14028332A:                          ; CODE XREF: sub_140283270+181↓j
                test    rcx, rcx
                jz      loc_1402833F7
                mov     eax, [rcx+2Ch]
                cmp     rdx, rax
                jnb     short loc_140283316

loc_14028333B:                          ; CODE XREF: sub_140283270+A4↑j
                mov     rdi, rdx
                mov     rbx, rcx

loc_140283341:                          ; CODE XREF: sub_140283270+1E4↓j
                mov     eax, [rbx+2Ch]
                mov     ecx, [rbx+34h]
                and     ecx, 3FFFFFFFh
                sub     eax, ecx
                cmp     rdi, rax
                jnb     loc_1402834AD
                mov     rcx, [rbx+8]
                mov     [r14], rbx

loc_14028335F:                          ; CODE XREF: sub_140283270+172↓j
                test    byte ptr [rbx+22h], 2
                jnz     loc_140443A34

loc_140283369:                          ; CODE XREF: sub_140283270+1C07D7↓j
                                        ; sub_140283270+1C0803↓j
                lea     rax, [rcx+rdi*8]

loc_14028336D:                          ; CODE XREF: sub_140283270+17A↓j
                                        ; sub_140283270+23F↓j
                mov     rbp, [rsp+28h+arg_8]
                mov     rbx, [rsp+28h+arg_0]
                mov     rdi, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
byte_140283388  db 0CCh                 ; DATA XREF: .pdata:00000001400CEAB4↑o
                                        ; .pdata:00000001400CEAC0↑o
; ---------------------------------------------------------------------------

loc_140283389:                          ; CODE XREF: sub_140283270+57↑j
                mov     rax, [rcx+48h]
                mov     rsi, [rsp+28h+arg_18]
                mov     [r9], rax
                mov     rax, [rcx+50h]
                lea     rax, [rax+r8*8]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402833A5:                          ; CODE XREF: sub_140283270+8F↑j
                                        ; DATA XREF: .pdata:00000001400CEAC0↑o ...
                test    dword ptr [rbp+38h], 1000h
                mov     r8d, [rbp+60h]
                jnz     loc_140283459
                cmp     dword ptr [rbx+30h], 40000000h
                jnb     loc_140283459
                mov     eax, [rbx+2Ch]
                cmp     rdi, rax
                jnb     loc_1402834AD

loc_1402833CF:                          ; CODE XREF: sub_140283270+237↓j
                test    rbx, rbx
                jz      loc_1402834AD
                mov     [r14], rbx
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jnz     loc_14028335F
                xor     eax, eax
                jmp     short loc_14028336D
; ---------------------------------------------------------------------------

loc_1402833EC:                          ; CODE XREF: sub_140283270+B4↑j
                mov     eax, [rbp+38h]
                test    al, 20h
                jnz     loc_14028332A

loc_1402833F7:                          ; CODE XREF: sub_140283270+BD↑j
                mov     eax, [rbp+38h]
                test    al, 20h
                jnz     loc_1402834AD
                movzx   ecx, word ptr [rbx+20h]
                mov     eax, [rbx+24h]
                and     rcx, 0FFFFFFFFFFFFFFC0h
                shl     rcx, 1Ah
                or      rcx, rax
                add     rdi, rcx
                shl     rdi, 0Ch
                test    sil, 1
                jnz     loc_1402834BE

loc_140283425:                          ; CODE XREF: sub_140283270+254↓j
                mov     r8d, r9d
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_140269B00
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402834AD
                movzx   edx, word ptr [rax+20h]
                mov     ecx, [rax+24h]
                and     rdx, 0FFFFFFFFFFFFFFC0h
                shl     rdx, 1Ah
                or      rdx, rcx
                shr     rdi, 0Ch
                sub     rdi, rdx
                jmp     loc_140283341
; ---------------------------------------------------------------------------

loc_140283459:                          ; CODE XREF: sub_140283270+140↑j
                                        ; sub_140283270+14D↑j
                cmp     dword ptr [rbx+30h], 40000000h
                mov     ecx, 100000h
                jnb     loc_140443A2A

loc_14028346B:                          ; CODE XREF: sub_140283270+1C07BF↓j
                shr     rcx, 3
                mov     rax, rdi
                cmp     rcx, 20000h
                jnz     short loc_1402834B4
                shr     rax, 11h
                and     edi, 1FFFFh

loc_140283485:                          ; CODE XREF: sub_140283270+24C↓j
                mov     ecx, eax
                test    rdi, rdi
                lea     rdx, [rcx+1]
                cmovz   rdx, rcx
                cmp     rdx, r8
                ja      short loc_1402834AD
                imul    rax, 58h ; 'X'
                add     rax, rbx
                mov     rbx, rax
                mov     eax, [rax+2Ch]
                cmp     rdi, rax
                jb      loc_1402833CF

loc_1402834AD:                          ; CODE XREF: sub_140283270+E2↑j
                                        ; sub_140283270+159↑j ...
                xor     eax, eax
                jmp     loc_14028336D
; ---------------------------------------------------------------------------

loc_1402834B4:                          ; CODE XREF: sub_140283270+209↑j
                xor     edx, edx
                div     rcx
                mov     rdi, rdx
                jmp     short loc_140283485
; ---------------------------------------------------------------------------

loc_1402834BE:                          ; CODE XREF: sub_140283270+1AF↑j
                mov     r9d, 1
                jmp     loc_140283425
sub_140283270   endp

; ---------------------------------------------------------------------------
algn_1402834C9:                         ; DATA XREF: .pdata:00000001400CEACC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402834D0   proc near               ; CODE XREF: sub_140230420+CC9↑p
                                        ; sub_140281E60+4B0↑p ...

var_58          = qword ptr -58h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 38h
                mov     r12, [rsp+78h+arg_20]
                xor     ebp, ebp
                mov     rdi, [rdx]
                mov     r14, r9
                mov     rsi, rdx
                mov     [rax+10h], rbp
                mov     r15, rcx
                mov     [rax+8], rbp
                mov     [r12], bp
                mov     [r8], rbp
                mov     [r9], ebp
                mov     r11, 0FFFFF6FB7DBED000h
                mov     rax, r11
                mov     r10, 0FFFFF6FB7DBED7F8h
                cmp     rdx, rax
                jb      short loc_14028359B
                mov     rax, r10
                cmp     rdx, rax
                ja      short loc_14028359B
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028359B
                test    dil, 1
                jz      short loc_14028359B
                test    dil, 20h
                jz      short loc_140283553
                test    dil, 42h
                jnz     short loc_14028359B

loc_140283553:                          ; CODE XREF: sub_1402834D0+7B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028359B
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rdi
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rdi
                mov     rdi, rdx
                test    al, 42h
                jz      short loc_14028359B
                or      rdi, 42h

loc_14028359B:                          ; CODE XREF: sub_1402834D0+5E↑j
                                        ; sub_1402834D0+66↑j ...
                mov     ebx, [r15+30h]
                mov     r13d, ebx
                and     r13d, 70h
                mov     [rsp+78h+arg_20], rdi
                cmp     r13d, 30h ; '0'
                jnz     short loc_1402835E3
                bt      ebx, 14h
                jnb     short loc_1402835C6
                bt      ebx, 18h
                jb      short loc_1402835C6
                bt      ebx, 19h
                jb      short loc_1402835E3

loc_1402835C6:                          ; CODE XREF: sub_1402834D0+E8↑j
                                        ; sub_1402834D0+EE↑j
                mov     rcx, rdi
                call    sub_14054C6D0
                mov     rdx, rdi
                mov     [r12], ax
                mov     rcx, r15
                call    sub_14054C7F8
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_1402835E3:                          ; CODE XREF: sub_1402834D0+E2↑j
                                        ; sub_1402834D0+F4↑j
                test    dil, 1
                jz      loc_14028396B
                mov     rax, r11
                lea     rcx, [rsp+78h+arg_20]
                cmp     rcx, rax
                jb      short loc_140283671
                mov     rax, r10
                lea     rcx, [rsp+78h+arg_20]
                cmp     rcx, rax
                ja      short loc_140283671
                mov     rdx, rdi
                call    sub_140349680
                test    eax, eax
                jz      short loc_140283674
                test    dil, 20h
                jz      short loc_140283625
                test    dil, 42h
                jnz     short loc_140283674

loc_140283625:                          ; CODE XREF: sub_1402834D0+14D↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140283671
                lea     rax, [rsp+78h+arg_20]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rdi
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rdi
                test    al, 42h
                jz      short loc_140283674
                or      rdx, 42h
                jmp     short loc_140283674
; ---------------------------------------------------------------------------

loc_140283671:                          ; CODE XREF: sub_1402834D0+12B↑j
                                        ; sub_1402834D0+13B↑j ...
                mov     rdx, rdi

loc_140283674:                          ; CODE XREF: sub_1402834D0+147↑j
                                        ; sub_1402834D0+153↑j ...
                shr     rdx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                lea     r14, [rdx+rdx*2]
                shl     r14, 4
                mov     rax, 0FFFFFA8000000000h
                add     r14, rax
                cmp     r13d, 10h
                jnz     short loc_1402836CE
                mov     rcx, rdx
                call    sub_140243B30
                test    eax, eax
                jz      short loc_1402836C1
                mov     rcx, [r14+28h]
                mov     edx, 3FFh
                shr     rcx, 27h
                and     cx, dx
                mov     [r12], cx

loc_1402836C1:                          ; CODE XREF: sub_1402834D0+1DA↑j
                shr     ebx, 7
                and     ebx, 1Fh
                mov     eax, ebx
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_1402836CE:                          ; CODE XREF: sub_1402834D0+1CE↑j
                cmp     r13d, 40h ; '@'
                jnz     short loc_14028373D
                mov     rcx, rsi
                call    sub_140342C88
                test    eax, eax
                jz      short loc_140283729
                bt      rdi, 0Bh
                mov     eax, 1
                mov     r8d, 4
                cmovnb  r8d, eax
                mov     eax, ebx
                and     eax, 0C00h
                cmp     eax, 0C00h
                jnz     short loc_140283716
                test    ebx, 380h
                jz      short loc_140283716
                or      r8d, 18h
                mov     eax, r8d
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_140283716:                          ; CODE XREF: sub_1402834D0+230↑j
                                        ; sub_1402834D0+238↑j
                cmp     eax, 400h
                jnz     short loc_140283721
                or      r8d, 8

loc_140283721:                          ; CODE XREF: sub_1402834D0+24B↑j
                mov     eax, r8d
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_140283729:                          ; CODE XREF: sub_1402834D0+20E↑j
                mov     r10, 0FFFFF6FB7DBED7F8h
                mov     r11, 0FFFFF6FB7DBED000h

loc_14028373D:                          ; CODE XREF: sub_1402834D0+202↑j
                mov     rcx, [r14+28h]
                mov     edx, 3FFh
                mov     rax, rcx
                shr     rax, 27h
                and     ax, dx
                mov     [r12], ax
                mov     rax, 1000000000h
                test    rax, rcx
                jz      short loc_140283794
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_1403F3E60
                mov     ecx, [r15+30h]
                and     ecx, 1100000h
                cmp     ecx, 1100000h
                jnz     loc_140283BF1
                mov     rcx, [rsp+78h+arg_18]
                mov     [rcx], ebp
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_140283794:                          ; CODE XREF: sub_1402834D0+292↑j
                mov     rcx, r14
                call    sub_1403F41D8
                test    eax, eax
                jnz     short loc_1402837B0
                mov     eax, [r14+10h]
                shr     rax, 5
                and     eax, 1Fh
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_1402837B0:                          ; CODE XREF: sub_1402834D0+2CE↑j
                shl     rsi, 19h
                mov     rcx, 0FFFFF68000000000h
                mov     rax, rcx
                shl     rax, 19h
                mov     r9, 0FFFFFFFFF000h
                sub     rsi, rax
                sar     rsi, 10h
                and     r9, rsi
                shr     r9, 9
                mov     rax, rcx
                add     r9, rax
                mov     rdx, [r9]
                mov     rax, r11
                cmp     r9, rax
                jb      short loc_140283856
                mov     rax, r10
                cmp     r9, rax
                ja      short loc_140283856
                call    sub_140349680
                test    eax, eax
                jz      short loc_140283856
                test    dl, 1
                jz      short loc_140283856
                test    dl, 20h
                jz      short loc_14028380E
                test    dl, 42h
                jnz     short loc_140283856

loc_14028380E:                          ; CODE XREF: sub_1402834D0+337↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140283856
                mov     rax, r9
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140283856
                or      rdx, 42h

loc_140283856:                          ; CODE XREF: sub_1402834D0+31C↑j
                                        ; sub_1402834D0+324↑j ...
                shr     rdx, 3Ch
                and     edx, 7
                jz      short loc_140283884
                mov     rcx, [r9]
                mov     rax, rcx
                and     eax, 10h
                jnz     short loc_140283874
                test    cl, 8
                jz      short loc_140283874
                or      edx, 18h
                jmp     short loc_14028387C
; ---------------------------------------------------------------------------

loc_140283874:                          ; CODE XREF: sub_1402834D0+398↑j
                                        ; sub_1402834D0+39D↑j
                test    rax, rax
                jz      short loc_14028387C
                or      edx, 8

loc_14028387C:                          ; CODE XREF: sub_1402834D0+3A2↑j
                                        ; sub_1402834D0+3A7↑j
                test    edx, edx
                jnz     loc_140283964

loc_140283884:                          ; CODE XREF: sub_1402834D0+38D↑j
                mov     r8, [r14+10h]
                lea     rdx, [r14+10h]
                mov     rax, r11
                cmp     rdx, rax
                jb      short loc_1402838FD
                mov     rax, r10
                cmp     rdx, rax
                ja      short loc_1402838FD
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402838FD
                test    r8b, 1
                jz      short loc_1402838FD
                test    r8b, 20h
                jz      short loc_1402838B7
                test    r8b, 42h
                jnz     short loc_1402838FD

loc_1402838B7:                          ; CODE XREF: sub_1402834D0+3DF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_1402838FD
                shr     rdx, 3
                and     edx, 1FFh
                mov     rax, [rax+rdx*8]
                mov     rdx, r8
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_1402838FD
                or      r8, 42h

loc_1402838FD:                          ; CODE XREF: sub_1402834D0+3C2↑j
                                        ; sub_1402834D0+3CA↑j ...
                mov     rax, [r14+8]
                shr     r8, 5
                and     r8d, 1Fh
                test    rax, rax
                js      short loc_140283922
                jz      short loc_140283922
                lea     rax, dword_1400174A0
                mov     edx, [rax+r8*4]
                mov     eax, edx
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_140283922:                          ; CODE XREF: sub_1402834D0+43C↑j
                                        ; sub_1402834D0+43E↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rcx+4F0h], rbp
                jz      short loc_140283961
                mov     rdx, [r14+8]
                mov     rax, 8000000000000000h
                or      rdx, rax
                call    sub_1402C6E74
                test    rax, rax
                jz      short loc_140283961
                lea     rax, dword_1400174A0
                mov     r8d, [rax+r8*4]

loc_140283961:                          ; CODE XREF: sub_1402834D0+469↑j
                                        ; sub_1402834D0+484↑j
                mov     edx, r8d

loc_140283964:                          ; CODE XREF: sub_1402834D0+3AE↑j
                mov     eax, edx
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_14028396B:                          ; CODE XREF: sub_1402834D0+117↑j
                bt      rdi, 0Ah
                jnb     loc_140283B7A
                mov     rcx, rdi
                call    sub_14031C870
                test    eax, eax
                jz      loc_140283AA2
                shr     rdi, 5
                and     edi, 1Fh
                bt      ebx, 14h
                jb      loc_140283BEF
                mov     rax, [r15+48h]
                mov     edx, 3FFh
                shl     rsi, 19h
                mov     rcx, [rax]
                mov     rax, cs:qword_140C4E4C8
                movzx   ecx, word ptr [rcx+3Ch]
                and     rcx, rdx
                mov     rcx, [rax+rcx*8]
                movzx   eax, word ptr [rcx]
                mov     [r12], ax
                mov     rcx, 0FFFFF68000000000h
                mov     rax, rcx
                shl     rax, 19h
                lea     r9, [rsp+78h+arg_0]
                sub     rsi, rax
                mov     r8d, 4
                sar     rsi, 10h
                mov     rcx, r15
                shr     rsi, 0Ch
                mov     rdx, rsi
                call    sub_140283270
                mov     rbx, rax
                test    rax, rax
                jz      loc_140283A86
                mov     rdx, [r15+78h]
                test    rdx, rdx
                jns     short loc_140283A2D
                mov     eax, [r15+18h]
                movzx   ecx, byte ptr [r15+20h]
                shl     rcx, 20h
                or      rcx, rax
                mov     rax, [rdx]
                dec     rax
                sub     rsi, rcx
                shr     rax, 0Ch
                cmp     rsi, rax
                ja      short loc_140283A86

loc_140283A2D:                          ; CODE XREF: sub_1402834D0+539↑j
                mov     rax, [rsp+78h+arg_0]
                mov     rcx, [rax]
                cmp     [rcx+40h], rbp
                jnz     loc_140283BEF
                test    dword ptr [rcx+38h], 2000h
                jnz     loc_140283BEF
                xor     r9d, r9d
                lea     r8, [rsp+78h+arg_8]
                mov     rcx, rbx
                call    sub_1402DBC80
                test    eax, eax
                js      short loc_140283A8D
                mov     rcx, rbx
                call    sub_1402805F0
                mov     rcx, [rsp+78h+arg_8]
                mov     dl, 2
                mov     rbx, rax
                call    sub_140297330
                test    rbx, rbx
                cmovnz  ebp, edi

loc_140283A86:                          ; CODE XREF: sub_1402834D0+52C↑j
                                        ; sub_1402834D0+55B↑j
                mov     edi, ebp
                jmp     loc_140283BEF
; ---------------------------------------------------------------------------

loc_140283A8D:                          ; CODE XREF: sub_1402834D0+594↑j
                mov     rax, [rsp+78h+arg_10]
                mov     edi, 100h
                mov     [rax], rbx
                jmp     loc_140283BEF
; ---------------------------------------------------------------------------

loc_140283AA2:                          ; CODE XREF: sub_1402834D0+4B0↑j
                mov     rax, cs:qword_140C4DDC0
                mov     rbp, rdi
                test    rax, rax
                jz      short loc_140283AC0
                test    dil, 10h
                jnz     short loc_140283AC0
                mov     rbp, rax
                not     rbp
                and     rbp, rdi

loc_140283AC0:                          ; CODE XREF: sub_1402834D0+5DF↑j
                                        ; sub_1402834D0+5E5↑j
                mov     rcx, rdi
                sar     rbp, 10h
                call    sub_14031C5E8
                test    al, al
                jz      short loc_140283AE3
                lea     rax, [rbp-30h]
                and     rax, 0FFFFFFFFFFFFF000h
                mov     rax, [rax+10h]
                mov     rcx, [rax]
                jmp     short loc_140283B0A
; ---------------------------------------------------------------------------

loc_140283AE3:                          ; CODE XREF: sub_1402834D0+5FE↑j
                call    PsGetCurrentProcess
                cmp     qword ptr [rax+4F0h], 0
                jz      short loc_140283B2B
                mov     rdx, rbp
                mov     rcx, rax
                call    sub_1402C6E74
                test    rax, rax
                jz      short loc_140283B2B
                mov     rax, [rax+38h]
                mov     rcx, [rax+18h]

loc_140283B0A:                          ; CODE XREF: sub_1402834D0+611↑j
                movzx   eax, word ptr [rcx]
                mov     rcx, rbp
                mov     [r12], ax
                call    sub_14036C490
                mov     ecx, eax
                lea     rax, dword_1400174A0
                mov     eax, [rax+rcx*4]
                jmp     loc_140283BF1
; ---------------------------------------------------------------------------

loc_140283B2B:                          ; CODE XREF: sub_1402834D0+620↑j
                                        ; sub_1402834D0+630↑j
                cmp     r13d, 20h ; ' '
                jnz     loc_140283C03
                and     ebx, 0F80h
                cmp     ebx, 380h
                jnz     loc_140283C03
                mov     rax, [r15+48h]
                mov     edx, 3FFh
                mov     rcx, [rax]
                mov     rax, cs:qword_140C4E4C8
                movzx   ecx, word ptr [rcx+3Ch]
                and     rcx, rdx
                mov     rdx, rbp
                mov     rcx, [rax+rcx*8]
                movzx   eax, word ptr [rcx]
                mov     rcx, r15
                mov     [r12], ax
                call    sub_14034DFE0
                jmp     short loc_140283BF1
; ---------------------------------------------------------------------------

loc_140283B7A:                          ; CODE XREF: sub_1402834D0+4A0↑j
                bt      rdi, 0Bh
                jnb     short loc_140283BB6
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402A886C
                test    rax, rax
                jz      short loc_140283BB6
                mov     rcx, [rax+28h]
                mov     edx, 3FFh
                shr     rcx, 27h
                and     cx, dx
                mov     [r12], cx
                mov     rcx, 7FFFFFFFFFFFFFFFh
                lock and [rax+18h], rcx
                jmp     short loc_140283BD5
; ---------------------------------------------------------------------------

loc_140283BB6:                          ; CODE XREF: sub_1402834D0+6AF↑j
                                        ; sub_1402834D0+6BE↑j
                call    PsGetCurrentProcess
                movzx   ecx, word ptr [rax+72Eh]
                mov     rax, cs:qword_140C4E4C8
                mov     rcx, [rax+rcx*8]
                movzx   eax, word ptr [rcx]
                mov     [r12], ax

loc_140283BD5:                          ; CODE XREF: sub_1402834D0+6E4↑j
                mov     eax, [r15+30h]
                shr     rdi, 5
                and     eax, 1100000h
                and     edi, 1Fh
                cmp     eax, 1100000h
                jnz     short loc_140283BEF
                mov     [r14], ebp

loc_140283BEF:                          ; CODE XREF: sub_1402834D0+4C1↑j
                                        ; sub_1402834D0+56C↑j ...
                mov     eax, edi

loc_140283BF1:                          ; CODE XREF: sub_1402834D0+10E↑j
                                        ; sub_1402834D0+1F9↑j ...
                add     rsp, 38h
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_140283C03:                          ; CODE XREF: sub_1402834D0+65F↑j
                                        ; sub_1402834D0+671↑j
                mov     r9, rdi
                mov     [rsp+78h+var_58], r15
                mov     r8, rsi
                mov     edx, 41202h
                mov     ecx, 1Ah
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402834D0   endp

byte_140283C1E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400CEAD8↑o

; =============== S U B R O U T I N E =======================================


sub_140283C30   proc near               ; CODE XREF: sub_1402841E0+417↓p
                                        ; DATA XREF: .rdata:000000014005EAB8↑o ...

var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_88          = byte ptr -88h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140418A60 SIZE 00000024 BYTES
; FUNCTION CHUNK AT 0000000140443A78 SIZE 000005F8 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     r14, r9
                mov     esi, r8d
                mov     r12, rdx
                mov     r13, rcx
                xor     eax, eax
                mov     [rsp+0C8h+var_78], rax
                mov     [rsp+0C8h+var_84], eax
                mov     [rsp+0C8h+var_70], rax
                mov     [rsp+0C8h+var_68], rax
                mov     rdx, rcx
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     rcx, 0FFFFF6FB40000000h
                add     rdx, rcx
                mov     rbx, [rdx]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                mov     rdi, 0FFFFF6FB7DBED7F8h
                cmp     rdx, rax
                jnb     loc_140283F75

loc_140283CB4:                          ; CODE XREF: sub_140283C30+34B↓j
                                        ; sub_140283C30+1BFE52↓j ...
                mov     [rsp+0C8h+var_58], rbx
                lea     rcx, [rsp+0C8h+var_58]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140283EDF

loc_140283CCB:                          ; CODE XREF: sub_140283C30+2B9↓j
                                        ; sub_140283C30+2D6↓j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                lea     rcx, [rbx+rbx*2]
                add     rcx, rcx
                mov     rbx, 0FFFFFA8000000000h
                mov     rax, rbx
                mov     rdx, [rax+rcx*8+10h]
                test    rdx, rdx
                jz      short loc_140283D0C
                mov     rax, r13
                shr     rax, 12h
                and     eax, 7
                lea     rax, [rax+rax*4]
                lea     rdx, [rdx+rax*8]

loc_140283D0C:                          ; CODE XREF: sub_140283C30+C8↑j
                mov     rdx, [rdx+18h]
                movzx   eax, dl
                mov     rcx, rdx
                and     rcx, 0FFFFFFFFFFFFFFFEh
                and     al, 1
                cmovz   rcx, rdx
                mov     rax, [rcx]
                mov     [rsp+0C8h+var_48], rax
                movzx   ecx, word ptr [rax+3Ch]
                and     ecx, 3FFh
                mov     rax, cs:qword_140C4E4C8
                mov     r9, [rax+rcx*8]
                add     r9, 1C40h
                mov     [rsp+0C8h+var_50], r9
                lea     rax, [rsi+r14]
                cmp     rax, 1000h
                ja      loc_140444055
                cmp     rax, r14
                jb      loc_140444055
                mov     rsi, r13
                shr     rsi, 9
                mov     rcx, 7FFFFFFFF8h
                and     rsi, rcx
                mov     rcx, 0FFFFF68000000000h
                add     rsi, rcx
                mov     r15d, [rsp+0C8h+arg_20]
                test    r15b, 4
                jnz     loc_140443B0F

loc_140283D98:                          ; CODE XREF: sub_140283C30+1BFEF3↓j
                test    r15b, 8
                jnz     loc_140443B33
                xor     ecx, ecx
                mov     [rsp+0C8h+var_80], rcx

loc_140283DA9:                          ; CODE XREF: sub_140283C30+1BFF30↓j
                mov     r8, [rsi]
                mov     rdx, 0FFFFF6FB7DBED000h
                mov     rax, rdx
                cmp     rsi, rax
                jnb     loc_140283F86

loc_140283DC2:                          ; CODE XREF: sub_140283C30+35C↓j
                                        ; sub_140283C30+1BFF3F↓j ...
                test    r8b, 1
                jnz     loc_140284169

loc_140283DCC:                          ; CODE XREF: sub_140283C30+1BFFF4↓j
                                        ; DATA XREF: .rdata:000000014005EA94↑o
;   __try { // __except at loc_140283DD3
                movzx   eax, byte ptr [r12]
                jmp     short loc_140283DFC
;   } // starts at 140283DCC
; ---------------------------------------------------------------------------

loc_140283DD3:                          ; DATA XREF: .rdata:000000014005EA94↑o
;   __except(1) // owned by 140283DCC
                mov     edi, eax
                mov     [rsp+0C8h+var_84], eax
                mov     r14, 0FFFFFFFFFh
                mov     r15, 0FFFFFA8000000000h
                mov     r12, 7FFFFFFFFFFFFFFFh
                jmp     loc_140284154
; ---------------------------------------------------------------------------

loc_140283DFC:                          ; CODE XREF: sub_140283C30+1A1↑j
                mov     rbx, [rsi]
                mov     rax, rdx
                cmp     rsi, rax
                jnb     loc_140283FA2

loc_140283E0B:                          ; CODE XREF: sub_140283C30+378↓j
                                        ; sub_140283C30+1C0003↓j ...
                test    bl, 1
                jnz     loc_140443CB3

loc_140283E14:                          ; CODE XREF: sub_140283C30+1C009E↓j
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_140283E2D
                test    bl, 10h
                jz      loc_140283F97
                and     rbx, 0FFFFFFFFFFFFFFEFh

loc_140283E2D:                          ; CODE XREF: sub_140283C30+1EE↑j
                                        ; sub_140283C30+36D↓j
                sar     rbx, 10h
                mov     r12, 7FFFFFFFFFFFFFFFh

loc_140283E3B:                          ; CODE XREF: sub_140283C30+462↓j
                                        ; sub_140283C30+1C0114↓j ...
                xor     edi, edi
                mov     r14b, 11h
                mov     [rsp+0C8h+var_88], r14b
                mov     rcx, rbx
                call    sub_1402805F0
                mov     [rsp+0C8h+var_78], rax
                test    al, 1
                jnz     loc_140283FC1
                bt      rax, 0Ah
                jnb     loc_140283FC1

loc_140283E65:                          ; CODE XREF: sub_140283C30+1C0198↓j
                test    rdi, rdi
                jnz     loc_140443DCD

loc_140283E6E:                          ; CODE XREF: sub_140283C30+1C01AA↓j
                mov     rcx, [rsp+0C8h+var_48]
                call    sub_1402851C0
                test    eax, eax
                jnz     loc_140443DDF
                lea     rax, [rsp+0C8h+var_84]
                mov     [rsp+0C8h+var_98], rax
                lea     rax, [rsp+0C8h+var_78]
                mov     [rsp+0C8h+var_A0], rax
                mov     dword ptr [rsp+0C8h+var_A8], r15d
                mov     r14, [rsp+0C8h+arg_18]
                mov     r9, r14
                mov     r8d, [rsp+0C8h+arg_10]
                mov     rdx, [rsp+0C8h+arg_8]
                mov     rcx, rbx
                call    sub_140276AE0
                test    eax, eax
                jnz     loc_140443E16
                mov     eax, [rsp+0C8h+var_84]

loc_140283ECB:                          ; CODE XREF: sub_140283C30+534↓j
                                        ; sub_140283C30+1BFEFE↓j ...
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140283EDF:                          ; CODE XREF: sub_140283C30+95↑j
                test    cs:dword_140CFC400, 0C00000h
                jz      loc_140283CCB
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      loc_140283CCB
                test    bl, 1
                jz      loc_140283CCB
                test    bl, 20h
                jnz     loc_140283FB3

loc_140283F1E:                          ; CODE XREF: sub_140283C30+38C↓j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      loc_140283CCB
                lea     rax, [rsp+0C8h+var_58]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                mov     rdx, rbx
                or      rdx, 20h
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      loc_140283CCB
                or      rbx, 42h
                jmp     loc_140283CCB
; ---------------------------------------------------------------------------

loc_140283F75:                          ; CODE XREF: sub_140283C30+7E↑j
                mov     rax, rdi
                cmp     rdx, rax
                ja      loc_140283CB4
                jmp     loc_140443A78
; ---------------------------------------------------------------------------

loc_140283F86:                          ; CODE XREF: sub_140283C30+18C↑j
                mov     rax, rdi
                cmp     rsi, rax
                ja      loc_140283DC2
                jmp     loc_140443B65
; ---------------------------------------------------------------------------

loc_140283F97:                          ; CODE XREF: sub_140283C30+1F3↑j
                not     rax
                and     rbx, rax
                jmp     loc_140283E2D
; ---------------------------------------------------------------------------

loc_140283FA2:                          ; CODE XREF: sub_140283C30+1D5↑j
                mov     rax, rdi
                cmp     rsi, rax
                ja      loc_140283E0B
                jmp     loc_140443C29
; ---------------------------------------------------------------------------

loc_140283FB3:                          ; CODE XREF: sub_140283C30+2E8↑j
                test    bl, 42h
                jnz     loc_140283CCB
                jmp     loc_140283F1E
; ---------------------------------------------------------------------------

loc_140283FC1:                          ; CODE XREF: sub_140283C30+224↑j
                                        ; sub_140283C30+22F↑j ...
                lea     rdx, [rsp+0C8h+var_88]
                mov     rcx, rbx
                call    sub_140299CD0
                mov     rdi, rax
                test    rax, rax
                jz      loc_140443CEA
                xor     edx, edx
                mov     rcx, rbx
                call    sub_14032EF40
                mov     r13, rax
                mov     rcx, rbx
                call    sub_1402805F0
                mov     [rsp+0C8h+var_78], rax
                test    r13, r13
                jz      loc_140443DBA
                test    al, 1
                jnz     loc_140284196
                mov     rax, [r13+10h]
                bt      rax, 0Ah
                jnb     loc_1402841C5
                shr     rax, 0Bh

loc_140284018:                          ; CODE XREF: sub_140283C30+599↓j
                test    al, 1
                jnz     loc_140443D02

loc_140284020:                          ; CODE XREF: sub_140283C30+1C00E8↓j
                mov     edx, r15d
                mov     rcx, rbx
                call    sub_140342FE0
                mov     r14d, eax
                test    eax, eax
                jnz     short loc_14028403F
                mov     rcx, rbx
                call    sub_1402805F0
                mov     [rsp+0C8h+var_78], rax

loc_14028403F:                          ; CODE XREF: sub_140283C30+400↑j
                                        ; sub_140283C30+590↓j
                mov     [rsp+0C8h+var_84], 0
                xor     r15d, r15d
                cmp     [rsp+0C8h+var_80], r15
                jnz     loc_140443D49

loc_140284055:                          ; CODE XREF: sub_140283C30+1C011C↓j
                                        ; sub_140283C30+1C012E↓j ...
                lock and [r13+18h], r12
                movzx   edx, [rsp+0C8h+var_88]
                mov     rcx, rdi
                call    sub_140297330
                mov     rdi, [rsp+0C8h+var_68]
                test    rdi, rdi
                jnz     loc_140443D77

loc_140284075:                          ; CODE XREF: sub_140283C30+1C015E↓j
                test    r15d, r15d
                js      loc_140443EEA
                cmp     r14d, 1
                mov     r15d, [rsp+0C8h+arg_20]
                mov     r13, [rsp+0C8h+arg_0]
                jz      loc_140283E3B
                cmp     r14d, 2
                jz      loc_140443D93
                mov     r14, [rsp+0C8h+var_80]
                test    r14, r14
                jnz     loc_140443E3B

loc_1402840B0:                          ; CODE XREF: sub_140283C30+1C02B5↓j
                mov     r13, [rsp+0C8h+arg_0]
                mov     r14, [rsp+0C8h+arg_18]
                mov     ebx, 1

loc_1402840C5:                          ; CODE XREF: sub_140283C30+1C0206↓j
                                        ; sub_140283C30+1C02C5↓j
                mov     r9d, r15d
                mov     r8, [rsp+0C8h+var_78]
                mov     rdx, rsi
                mov     rcx, [rsp+0C8h+var_50]
                call    sub_1402A4FB0
                mov     rcx, [rsp+0C8h+var_70]

loc_1402840DF:                          ; CODE XREF: sub_140283C30+561↓j
                xor     edi, edi
                mov     [rsp+0C8h+var_84], edi
                test    ebx, ebx
                jz      loc_140443DFD
                mov     eax, [rsp+0C8h+arg_10]
                test    rcx, rcx
                jnz     short loc_1402840FC
                mov     rcx, r13

loc_1402840FC:                          ; CODE XREF: sub_140283C30+4C7↑j
                                        ; DATA XREF: .rdata:000000014005EAA4↑o
;   __try { // __except at loc_140284132
                add     rcx, rax
                mov     r8, r14
                mov     rdx, [rsp+0C8h+arg_8]
                test    r15b, 4
                jnz     short loc_140284117
                call    memmove
                jmp     short loc_14028411C
; ---------------------------------------------------------------------------

loc_140284117:                          ; CODE XREF: sub_140283C30+4DE↑j
                call    RtlCopyMemoryNonTemporal

loc_14028411C:                          ; CODE XREF: sub_140283C30+4E5↑j
                mov     r14, 0FFFFFFFFFh
                mov     r15, 0FFFFFA8000000000h
                jmp     short loc_140284154
;   } // starts at 1402840FC
; ---------------------------------------------------------------------------

loc_140284132:                          ; DATA XREF: .rdata:000000014005EAA4↑o
;   __except(loc_140418A60) // owned by 1402840FC
                mov     r14, 0FFFFFFFFFh
                mov     r15, 0FFFFFA8000000000h
                mov     r12, 7FFFFFFFFFFFFFFFh
                mov     edi, [rsp+0C8h+var_84]

loc_140284154:                          ; CODE XREF: sub_140283C30+1C7↑j
                                        ; sub_140283C30+500↑j ...
                mov     rsi, [rsp+0C8h+var_80]
                test    rsi, rsi
                jnz     loc_140443EFA

loc_140284162:                          ; CODE XREF: sub_140283C30+1C02F2↓j
                                        ; sub_140283C30+1C0420↓j
                mov     eax, edi
                jmp     loc_140283ECB
; ---------------------------------------------------------------------------

loc_140284169:                          ; CODE XREF: sub_140283C30+196↑j
                mov     rdx, rsi
                test    rcx, rcx
                jnz     loc_140443BFC
                mov     rcx, r9
                call    sub_14034EEF8
                mov     r12, 7FFFFFFFFFFFFFFFh

loc_140284187:                          ; CODE XREF: sub_140283C30+1C01FB↓j
                mov     rcx, [rsp+0C8h+var_70]

loc_14028418C:                          ; CODE XREF: sub_140283C30+1C00B5↓j
                mov     ebx, 1
                jmp     loc_1402840DF
; ---------------------------------------------------------------------------

loc_140284196:                          ; CODE XREF: sub_140283C30+3CF↑j
                mov     rdx, [r13+18h]
                mov     rax, rdx
                mov     r8, 3FFFFFFFFFFFFFFFh
                and     rax, r8
                inc     rax
                mov     rcx, rdx
                xor     rcx, rax
                and     rcx, r8
                xor     rcx, rdx
                mov     [r13+18h], rcx
                xor     r14d, r14d
                jmp     loc_14028403F
; ---------------------------------------------------------------------------

loc_1402841C5:                          ; CODE XREF: sub_140283C30+3DE↑j
                shr     rax, 3
                jmp     loc_140284018
; } // starts at 140283C30
sub_140283C30   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_1402841CE:                         ; DATA XREF: .rdata:000000014005EAB8↑o
                                        ; .pdata:00000001400CEAE4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402841E0   proc near               ; CODE XREF: CcCopyWriteEx+E5↓p
                                        ; DATA XREF: .rdata:000000014005EB18↑o ...

var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = byte ptr -168h
var_167         = byte ptr -167h
var_166         = byte ptr -166h
var_165         = byte ptr -165h
var_164         = byte ptr -164h
var_163         = byte ptr -163h
var_160         = dword ptr -160h
var_15C         = byte ptr -15Ch
var_15B         = byte ptr -15Bh
var_15A         = byte ptr -15Ah
var_159         = byte ptr -159h
var_158         = byte ptr -158h
var_157         = byte ptr -157h
var_154         = dword ptr -154h
var_14C         = dword ptr -14Ch
var_148         = dword ptr -148h
var_144         = dword ptr -144h
var_140         = qword ptr -140h
var_134         = dword ptr -134h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = dword ptr -120h
var_11C         = dword ptr -11Ch
var_118         = dword ptr -118h
var_114         = dword ptr -114h
var_110         = dword ptr -110h
var_10C         = dword ptr -10Ch
var_108         = xmmword ptr -108h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = xmmword ptr -0E8h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 0000000140418A90 SIZE 00000234 BYTES
; FUNCTION CHUNK AT 0000000140444070 SIZE 000002C6 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_18], r9d
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 160h
                mov     [rsp+198h+var_118], r9d
                mov     r12, rcx
                movzx   r10d, [rsp+198h+arg_38]
                xor     r15d, r15d
                mov     [rsp+198h+var_144], r15d
                mov     [rsp+198h+var_154], r15d
                mov     [rsp+198h+var_F8], r15
                xorps   xmm0, xmm0
                movups  [rsp+198h+var_108], xmm0
                mov     r14, [rsp+198h+arg_28]
                mov     eax, [r14+50h]
                test    al, 10h
                jnz     loc_140284D61
                xor     bl, bl

loc_140284250:                          ; CODE XREF: sub_1402841E0+B83↓j
                mov     [rsp+198h+var_168], bl
                mov     [rsp+198h+var_C4], r9d
                mov     eax, [r8]
                and     eax, 0FFFh
                mov     [rsp+198h+var_14C], eax
                mov     [rsp+198h+var_128], r15
                mov     rdx, gs:188h
                mov     [rsp+198h+var_F0], rdx
                mov     r13d, r15d
                mov     [rsp+198h+var_160], r15d
                mov     [rsp+198h+var_159], r13b
                mov     [rsp+198h+var_165], r13b
                mov     rdi, r15
                mov     [rsp+198h+var_A0], r15
                mov     [rsp+198h+var_15C], 1
                mov     [rsp+198h+var_166], dil
                mov     [rsp+198h+var_163], dil
                xor     eax, eax
                movups  [rsp+198h+var_E8], xmm0
                mov     [rsp+198h+var_D8], rax
                xorps   xmm1, xmm1
                movups  [rsp+198h+var_98], xmm1
                mov     [rsp+198h+var_88], rax
                mov     ecx, 1000h
                test    [r12+98h], ecx
                jnz     loc_140444070
                mov     [rsp+198h+var_164], al

loc_1402842E6:                          ; CODE XREF: sub_1402841E0+1BFE95↓j
                mov     rax, [r8]
                mov     [rsp+198h+var_140], rax
                movzx   ecx, byte ptr [rdx+51Ch]
                mov     eax, [rdx+508h]
                lea     eax, [rcx+rax*4]
                mov     [rsp+198h+var_11C], eax
                mov     [rsp+198h+var_C8], eax
                movzx   esi, bl
                mov     [rsp+198h+var_15A], bl
                mov     [rsp+198h+var_157], bl
                test    bl, bl
                jnz     loc_1402843A8
                mov     [rsp+198h+var_15A], bl
                xor     eax, eax
                movups  [rsp+198h+var_60], xmm0
                mov     [rsp+198h+var_50], rax
                mov     rbx, [r12+210h]
                cmp     [r12+0A8h], rax
                jz      short loc_140284360
                mov     rcx, [r12+60h]
                and     rcx, 0FFFFFFFFFFFFFFF0h
                mov     rcx, [rcx+28h]
                call    sub_140285080
                cmp     rbx, [rax+8]
                jnz     loc_14044407A

loc_140284360:                          ; CODE XREF: sub_1402841E0+162↑j
                test    dword ptr [r14+50h], 1000000h
                jnz     loc_140284F3B

loc_14028436E:                          ; CODE XREF: sub_1402841E0+D7D↓j
                mov     rdx, gs:188h
                mov     rcx, rdx
                call    sub_140310190
                cmp     eax, 2
                jl      loc_140284D3E

loc_140284388:                          ; CODE XREF: sub_1402841E0+B6A↓j
                                        ; sub_1402841E0+B76↓j
                test    eax, eax
                jle     loc_140284DC5

loc_140284390:                          ; CODE XREF: sub_1402841E0+B7C↓j
                                        ; sub_1402841E0+BED↓j
                mov     r13d, [rsp+198h+var_160]

loc_140284395:                          ; CODE XREF: sub_1402841E0+C0C↓j
                                        ; sub_1402841E0+C59↓j
                mov     [rsp+198h+var_157], sil
                movzx   ebx, [rsp+198h+var_168]
                movzx   r10d, [rsp+198h+arg_38]

loc_1402843A8:                          ; CODE XREF: sub_1402841E0+136↑j
                mov     r14, 0FFFFFFFFFFFFFFFFh
                test    sil, sil
                jnz     loc_140284C6F

loc_1402843B8:                          ; CODE XREF: sub_1402841E0+A92↓j
                mov     eax, 6
                mov     ecx, 4
                test    r10b, r10b
                cmovnz  eax, ecx
                mov     [rsp+198h+var_D0], eax
                mov     rsi, [r12+210h]
                mov     [rsp+198h+var_70], rsi
                cmp     [r12+0A8h], rdi
                jz      short loc_140284405
                mov     rcx, [r12+60h]
                and     rcx, 0FFFFFFFFFFFFFFF0h
                mov     rcx, [rcx+28h]
                call    sub_140285080
                cmp     rsi, [rax+8]
                jnz     loc_14044410D

loc_140284405:                          ; CODE XREF: sub_1402841E0+207↑j
                mov     [rsp+198h+var_68], rsi
                test    bl, bl
                jnz     loc_140284D68

loc_140284415:                          ; CODE XREF: sub_1402841E0+BE0↓j
                test    rdi, rdi
                jnz     loc_14028504A

loc_14028441E:                          ; CODE XREF: sub_1402841E0+E72↓j
                mov     r14, [rsp+198h+arg_40]
                test    r14, r14
                jnz     short loc_140284441
                mov     r14, gs:188h
                mov     [rsp+198h+arg_40], r14
                mov     r13d, [rsp+198h+var_160]

loc_140284441:                          ; CODE XREF: sub_1402841E0+249↑j
                mov     rdi, [r14+5C0h]
                mov     [rsp+198h+var_114], r15d
                test    rdi, rdi
                jnz     loc_140284C43

loc_140284459:                          ; CODE XREF: sub_1402841E0+A7D↓j
                mov     rbx, [r14+220h]

loc_140284460:                          ; CODE XREF: sub_1402841E0+A8A↓j
                cmp     [rbx+958h], r15
                jnz     loc_140284E3E
                mov     ebx, 0C0000225h

loc_140284472:                          ; CODE XREF: sub_1402841E0+CC8↓j
                                        ; sub_1402841E0+1C0092↓j
                cmp     [rsp+198h+var_114], r15d
                jnz     loc_140284F2E

loc_140284480:                          ; CODE XREF: sub_1402841E0+D56↓j
                mov     [rsp+198h+var_148], ebx
                test    ebx, ebx
                jns     loc_140284EAD

loc_14028448C:                          ; CODE XREF: sub_1402841E0+CF3↓j
                                        ; DATA XREF: .rdata:000000014005EB04↑o
;   __try { // __finally(loc_140418AB1)
                mov     rbx, [rsp+198h+var_128]
                mov     esi, [rsp+198h+var_154]
                jmp     loc_140284770
; ---------------------------------------------------------------------------

loc_14028449A:                          ; CODE XREF: sub_1402841E0+598↓j
                mov     [rsp+198h+var_167], 0
                cmp     [rsp+198h+var_164], 0
                jnz     loc_140284A25
                mov     r14d, [rsp+198h+arg_20]

loc_1402844B2:                          ; CODE XREF: sub_1402841E0+850↓j
                mov     [rsp+198h+var_154], r15d
                mov     dword ptr [rsp+198h+var_170], r15d
                mov     dword ptr [rsp+198h+var_178], r15d
                lea     r9, [rsp+198h+var_144]
                lea     r8, [rsp+198h+var_128]
                mov     rdx, [rsp+198h+var_140]
                mov     rcx, r12
                call    sub_140273980
                mov     r10, rax
                mov     [rsp+198h+var_130], rax
                mov     esi, [rsp+198h+var_144]
                mov     ecx, [rsp+198h+arg_18]
                cmp     esi, ecx
                jbe     short loc_1402844F5
                mov     esi, ecx
                mov     [rsp+198h+var_144], ecx

loc_1402844F5:                          ; CODE XREF: sub_1402841E0+30D↑j
                mov     [rsp+198h+var_154], esi
                sub     [rsp+198h+arg_18], esi
                mov     edx, [rsp+198h+var_14C]
                sub     r10, rdx
                mov     [rsp+198h+var_130], r10
                add     esi, edx
                mov     [rsp+198h+var_120], esi
                mov     [rsp+198h+var_144], esi
                mov     eax, 1
                mov     [rsp+198h+var_134], eax
                mov     rbx, [rsp+198h+var_140]
                mov     [rsp+198h+var_F8], rbx
                sub     ebx, edx
                mov     dword ptr [rsp+198h+var_F8], ebx
                mov     [rsp+198h+var_166], 0
                mov     [rsp+198h+var_167], 0
                mov     ecx, esi
                mov     r8d, 1000h

loc_140284547:                          ; CODE XREF: sub_1402841E0+4D3↓j
                mov     [rsp+198h+var_15C], 1
                mov     edi, r15d
                cmp     ecx, r8d
                setnbe  dil
                mov     [rsp+198h+var_CC], edi
                mov     [rsp+198h+var_80], edi
                mov     [rsp+198h+var_148], r15d
                test    r14d, eax
                jz      loc_1402847C3
                mov     rax, [rsp+198h+arg_30]
                mov     rax, [rax]
                cmp     [rsp+198h+var_F8], rax
                jl      short loc_140284590
                or      r13d, 1
                mov     [rsp+198h+var_160], r13d

loc_140284590:                          ; CODE XREF: sub_1402841E0+3A5↑j
                mov     eax, [r12+98h]
                test    al, 40h
                jnz     loc_1402847A2

loc_1402845A0:                          ; CODE XREF: sub_1402841E0+5CB↓j
                bt      eax, 1Eh
                jb      loc_140284A35

loc_1402845AA:                          ; CODE XREF: sub_1402841E0+874↓j
                                        ; sub_1402841E0+883↓j ...
                test    edi, edi
                mov     r12d, r8d
                jz      loc_140284788

loc_1402845B5:                          ; CODE XREF: sub_1402841E0+5AB↓j
                sub     r12d, edx
                mov     esi, r13d
                mov     [rsp+198h+var_B8], r13d
                mov     edi, r15d
                mov     [rsp+198h+var_C0], r15d
                mov     r14d, 1
                mov     [rsp+198h+var_B0], r14d

loc_1402845DC:                          ; CODE XREF: sub_1402841E0+8C4↓j
                cmp     r14d, 2
                ja      short loc_140284613
                mov     r9d, r12d
                mov     dword ptr [rsp+198h+var_178], esi
                mov     r8d, edx
                mov     rdx, [rsp+198h+arg_8]
                mov     rcx, r10
                call    sub_140283C30
                mov     edi, eax
                mov     [rsp+198h+var_C0], eax
                test    sil, 8
                jnz     loc_140284A7B

loc_14028460F:                          ; CODE XREF: sub_1402841E0+8A0↓j
                mov     edx, [rsp+198h+var_14C]

loc_140284613:                          ; CODE XREF: sub_1402841E0+400↑j
                test    sil, 4
                jnz     loc_140284AA9
                mov     al, 1

loc_14028461F:                          ; CODE XREF: sub_1402841E0+8CB↓j
                mov     [rsp+198h+var_15B], al
                mov     [rsp+198h+var_148], edi
                test    edi, edi
                js      loc_140284AB0
                mov     [rsp+198h+var_166], 1
                cmp     [rsp+198h+var_167], 0
                jz      loc_140284790

loc_14028463F:                          ; CODE XREF: sub_1402841E0+5B2↓j
                                        ; sub_1402841E0+5BD↓j
                mov     r12, [rsp+198h+arg_0]

loc_140284647:                          ; CODE XREF: sub_1402841E0+7BC↓j
                mov     r8d, 1000h
                mov     eax, r8d
                sub     eax, edx
                add     [rsp+198h+arg_8], rax
                mov     edx, r15d
                mov     [rsp+198h+var_14C], edx
                cmp     [rsp+198h+var_CC], edx
                jz      short loc_1402846B8
                mov     r10, [rsp+198h+var_130]
                add     r10, r8
                mov     [rsp+198h+var_130], r10
                mov     esi, [rsp+198h+var_120]
                add     esi, 0FFFFF000h
                mov     [rsp+198h+var_120], esi
                mov     ecx, esi
                mov     [rsp+198h+var_144], esi
                add     ebx, r8d
                mov     dword ptr [rsp+198h+var_F8], ebx
                cmp     [rsp+198h+arg_18], edx
                jz      loc_1402847B0
                mov     eax, 2

loc_1402846A7:                          ; CODE XREF: sub_1402841E0+5DE↓j
                                        ; sub_1402841E0+7C6↓j
                mov     [rsp+198h+var_134], eax
                mov     r14d, [rsp+198h+arg_20]
                jmp     loc_140284547
; ---------------------------------------------------------------------------

loc_1402846B8:                          ; CODE XREF: sub_1402841E0+488↑j
                mov     [rsp+198h+var_166], dl
                mov     rax, [rsp+198h+var_128]
                mov     rbx, [rax+8]
                mov     ecx, 0FFFFFFFFh
                lock xadd [rax+10h], ecx
                dec     ecx
                test    cx, cx
                jnz     short loc_1402846ED
                mov     rcx, [rbx+0B8h]
                test    rcx, rcx
                jnz     loc_140284B4C

loc_1402846E6:                          ; CODE XREF: sub_1402841E0+974↓j
                lock dec dword ptr [rbx+220h]

loc_1402846ED:                          ; CODE XREF: sub_1402841E0+4F4↑j
                mov     rbx, r15
                mov     [rsp+198h+var_128], rbx
                mov     r14, [rsp+198h+arg_40]
                mov     r9, r14
                mov     esi, [rsp+198h+var_154]
                mov     r8d, esi
                lea     rdx, [rsp+198h+var_140]
                mov     rcx, r12
                call    sub_1402889E0
                mov     ecx, [r12+98h]
                and     ecx, 40000000h
                jnz     short loc_14028473D
                mov     eax, [rsp+198h+var_118]
                sub     eax, [rsp+198h+arg_18]
                cmp     eax, 1000000h
                ja      loc_140284B63

loc_14028473D:                          ; CODE XREF: sub_1402841E0+542↑j
                test    ecx, ecx
                jnz     loc_140284B59

loc_140284745:                          ; CODE XREF: sub_1402841E0+97D↓j
                                        ; sub_1402841E0+9BE↓j
                mov     eax, 1000h
                cmp     [rsp+198h+arg_18], eax
                mov     eax, [rsp+198h+arg_20]
                jnb     loc_1402849ED
                test    al, 4
                jz      loc_1402849E0

loc_140284766:                          ; CODE XREF: sub_1402841E0+808↓j
                                        ; sub_1402841E0+817↓j
                add     [rsp+198h+var_140], rsi
                mov     r13d, [rsp+198h+var_160]

loc_140284770:                          ; CODE XREF: sub_1402841E0+2B5↑j
                cmp     [rsp+198h+arg_18], 0
                jnz     loc_14028449A
                mov     [rsp+198h+var_158], 1
                jmp     loc_140284BBB
; ---------------------------------------------------------------------------

loc_140284788:                          ; CODE XREF: sub_1402841E0+3CF↑j
                mov     r12d, esi
                jmp     loc_1402845B5
; ---------------------------------------------------------------------------

loc_140284790:                          ; CODE XREF: sub_1402841E0+459↑j
                test    al, al
                jz      loc_14028463F
                mov     [rsp+198h+var_167], 1
                jmp     loc_14028463F
; ---------------------------------------------------------------------------

loc_1402847A2:                          ; CODE XREF: sub_1402841E0+3BA↑j
                or      r13d, 2
                mov     [rsp+198h+var_160], r13d
                jmp     loc_1402845A0
; ---------------------------------------------------------------------------

loc_1402847B0:                          ; CODE XREF: sub_1402841E0+4BC↑j
                cmp     ecx, r8d
                jbe     loc_1402849A1
                mov     eax, 2
                jmp     loc_1402846A7
; ---------------------------------------------------------------------------

loc_1402847C3:                          ; CODE XREF: sub_1402841E0+38C↑j
                test    edi, edi
                jnz     loc_1402849AB

loc_1402847CB:                          ; CODE XREF: sub_1402841E0+7CF↓j
                                        ; sub_1402841E0+7EB↓j ...
                lea     r9, [rsp+198h+var_15C]
                mov     r8d, [rsp+198h+var_D0]
                mov     edx, 1
                mov     rcx, r10
                call    sub_140274000
                mov     [rsp+198h+var_7C], eax
                cmp     [rsp+198h+var_15C], 0
                jz      loc_1402849FC

loc_1402847F7:                          ; CODE XREF: sub_1402841E0+824↓j
                mov     r14, r15
                mov     [rsp+198h+var_A8], r15
                mov     rcx, r15
                mov     [rsp+198h+var_78], rcx
                mov     [rsp+198h+var_110], r15d
                test    eax, eax
                js      loc_140284AC6
                movzx   r8d, [rsp+198h+var_164]
                test    r8b, r8b
                jnz     loc_140284ACD

loc_14028482C:                          ; CODE XREF: sub_1402841E0+94A↓j
                                        ; DATA XREF: .rdata:000000014005EAF4↑o
;     __try { // __except at loc_14028493C
                mov     edx, [rsp+198h+var_14C]
                test    r8b, r8b
                jnz     loc_1402848C3
                mov     r10, [rsp+198h+var_130]
                add     r10, rdx

loc_140284841:                          ; CODE XREF: sub_1402841E0+6E7↓j
                test    edi, edi
                jnz     short loc_1402848BC
                mov     ecx, esi

loc_140284847:                          ; CODE XREF: sub_1402841E0+6E1↓j
                sub     ecx, edx
                mov     esi, r15d
                mov     [rsp+198h+var_10C], r15d
                test    dword ptr [r12+98h], 40000000h
                jnz     short loc_1402848CC
                xor     dil, dil

loc_140284865:                          ; CODE XREF: sub_1402841E0+6EF↓j
                test    r8b, r8b
                jnz     short loc_1402848D1
                mov     r8d, ecx
                test    dil, dil
                jnz     loc_1402848FB
                mov     rdx, [rsp+198h+arg_8]
                mov     rcx, r10
                call    memmove

loc_140284886:                          ; CODE XREF: sub_1402841E0+712↓j
                                        ; sub_1402841E0+719↓j ...
                test    esi, esi
                js      loc_14028492B
                test    dil, dil
                jnz     loc_140284933
                mov     al, 1

loc_140284899:                          ; CODE XREF: sub_1402841E0+755↓j
                mov     [rsp+198h+var_15B], al
                mov     [rsp+198h+var_166], 1
                cmp     [rsp+198h+var_167], 0
                jnz     loc_14028493A
                test    al, al
                jz      loc_14028493A
                mov     [rsp+198h+var_167], 1
                jmp     short loc_14028493A
; ---------------------------------------------------------------------------

loc_1402848BC:                          ; CODE XREF: sub_1402841E0+663↑j
                mov     ecx, 1000h
                jmp     short loc_140284847
; ---------------------------------------------------------------------------

loc_1402848C3:                          ; CODE XREF: sub_1402841E0+653↑j
                lea     r10, [rdx+rcx]
                jmp     loc_140284841
; ---------------------------------------------------------------------------

loc_1402848CC:                          ; CODE XREF: sub_1402841E0+680↑j
                mov     dil, 1
                jmp     short loc_140284865
; ---------------------------------------------------------------------------

loc_1402848D1:                          ; CODE XREF: sub_1402841E0+688↑j
                mov     r8d, ecx
                mov     rdx, [rsp+198h+arg_8]
                mov     rcx, r10
                test    dil, dil
                jz      short loc_1402848F4
                call    sub_1405948E0
                mov     esi, eax
                mov     [rsp+198h+var_10C], eax
                jmp     short loc_140284886
; ---------------------------------------------------------------------------

loc_1402848F4:                          ; CODE XREF: sub_1402841E0+702↑j
                call    sub_140594864
                jmp     short loc_140284886
; ---------------------------------------------------------------------------

loc_1402848FB:                          ; CODE XREF: sub_1402841E0+690↑j
                mov     dword ptr [rsp+198h+var_178], 2
                mov     r9, r8
                mov     r8, [rsp+198h+arg_8]
                mov     rdx, r10
                mov     rcx, 0FFFFFFFFFFFFFFFFh
                call    RtlWriteNonVolatileMemory
                mov     esi, eax
                mov     [rsp+198h+var_10C], eax
                jmp     loc_140284886
; ---------------------------------------------------------------------------

loc_14028492B:                          ; CODE XREF: sub_1402841E0+6A8↑j
                mov     ecx, esi
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140284933:                          ; CODE XREF: sub_1402841E0+6B1↑j
                xor     al, al
                jmp     loc_140284899
; ---------------------------------------------------------------------------

loc_14028493A:                          ; CODE XREF: sub_1402841E0+6C7↑j
                                        ; sub_1402841E0+6CF↑j ...
                jmp     short loc_14028496D
;     } // starts at 14028482C
; ---------------------------------------------------------------------------

loc_14028493C:                          ; DATA XREF: .rdata:000000014005EAF4↑o
;   __except(loc_140418A90) // owned by 14028482C
                mov     eax, [rsp+198h+var_148]
                cmp     eax, 0C0000005h
                jnz     short loc_140284951
                mov     ecx, 0C00000E8h
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_140284951:                          ; CODE XREF: sub_1402841E0+765↑j
                mov     ecx, [rsp+198h+var_148]
                call    FsRtlIsNtstatusExpected
                test    al, al
                mov     ecx, [rsp+198h+var_148]
                jnz     short loc_140284967
                mov     ecx, 0C00000E9h

loc_140284967:                          ; CODE XREF: sub_1402841E0+780↑j
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
; ---------------------------------------------------------------------------

loc_14028496D:                          ; CODE XREF: sub_1402841E0:loc_14028493A↑j
                test    r14, r14
                jnz     loc_140284B2F

loc_140284976:                          ; CODE XREF: sub_1402841E0+967↓j
                mov     ecx, [rsp+198h+var_11C]
                movzx   eax, cl
                and     al, 3
                mov     rdx, [rsp+198h+var_F0]
                mov     [rdx+51Ch], al
                mov     eax, ecx
                shr     eax, 2
                mov     [rdx+508h], eax
                mov     edx, [rsp+198h+var_14C]
                jmp     loc_140284647
; ---------------------------------------------------------------------------

loc_1402849A1:                          ; CODE XREF: sub_1402841E0+5D3↑j
                mov     eax, 4
                jmp     loc_1402846A7
; ---------------------------------------------------------------------------

loc_1402849AB:                          ; CODE XREF: sub_1402841E0+5E5↑j
                test    r14b, 4
                jz      loc_1402847CB
                mov     rax, [rsp+198h+var_F0]
                mov     byte ptr [rax+51Ch], 1
                cmp     dword ptr [rax+508h], 1
                jnb     loc_1402847CB
                mov     dword ptr [rax+508h], 1
                jmp     loc_1402847CB
; ---------------------------------------------------------------------------

loc_1402849E0:                          ; CODE XREF: sub_1402841E0+580↑j
                mov     [rsp+198h+arg_20], r15d
                jmp     loc_140284766
; ---------------------------------------------------------------------------

loc_1402849ED:                          ; CODE XREF: sub_1402841E0+578↑j
                or      eax, 1
                mov     [rsp+198h+arg_20], eax
                jmp     loc_140284766
; ---------------------------------------------------------------------------

loc_1402849FC:                          ; CODE XREF: sub_1402841E0+611↑j
                cmp     [rsp+198h+arg_38], 0
                jnz     loc_1402847F7
                mov     [rsp+198h+var_158], 0
                mov     rbx, [rsp+198h+var_128]
                mov     r14, [rsp+198h+arg_40]
                mov     esi, [rsp+198h+var_154]
                jmp     loc_140284BBB
; ---------------------------------------------------------------------------

loc_140284A25:                          ; CODE XREF: sub_1402841E0+2C4↑j
                mov     r14d, r15d
                mov     [rsp+198h+arg_20], r15d
                jmp     loc_1402844B2
; ---------------------------------------------------------------------------

loc_140284A35:                          ; CODE XREF: sub_1402841E0+3C4↑j
                test    edi, edi
                mov     eax, r8d
                jnz     short loc_140284A3E
                mov     eax, esi

loc_140284A3E:                          ; CODE XREF: sub_1402841E0+85A↑j
                sub     eax, edx
                or      eax, edx
                test    al, 3Fh
                jnz     short loc_140284A68
                or      r13d, 4
                mov     [rsp+198h+var_160], r13d
                cmp     [rsp+198h+var_168], 0
                jz      loc_1402845AA
                or      r13d, 8
                mov     [rsp+198h+var_160], r13d
                jmp     loc_1402845AA
; ---------------------------------------------------------------------------

loc_140284A68:                          ; CODE XREF: sub_1402841E0+864↑j
                and     r13d, 0FFFFFFF3h
                mov     [rsp+198h+var_160], r13d
                mov     [rsp+198h+var_167], 1
                jmp     loc_1402845AA
; ---------------------------------------------------------------------------

loc_140284A7B:                          ; CODE XREF: sub_1402841E0+429↑j
                cmp     eax, 0C000009Ah
                jnz     loc_14028460F
                and     esi, 0FFFFFFF3h
                mov     [rsp+198h+var_B8], esi
                inc     r14d
                mov     [rsp+198h+var_B0], r14d
                mov     edx, [rsp+198h+var_14C]
                mov     r10, [rsp+198h+var_130]
                jmp     loc_1402845DC
; ---------------------------------------------------------------------------

loc_140284AA9:                          ; CODE XREF: sub_1402841E0+437↑j
                xor     al, al
                jmp     loc_14028461F
; ---------------------------------------------------------------------------

loc_140284AB0:                          ; CODE XREF: sub_1402841E0+449↑j
                mov     ecx, edi
                call    FsRtlIsNtstatusExpected
                mov     ecx, 0C00000E8h
                test    al, al
                cmovnz  ecx, edi
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_140284AC6:                          ; CODE XREF: sub_1402841E0+637↑j
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_140284ACD:                          ; CODE XREF: sub_1402841E0+646↑j
                mov     r8d, esi
                test    edi, edi
                mov     eax, 1000h
                cmovnz  r8d, eax
                lea     rax, [rsp+198h+var_110]
                mov     [rsp+198h+var_178], rax
                mov     r9d, 1
                lea     rdx, [rsp+198h+var_A8]
                mov     rcx, [rsp+198h+var_130]
                call    sub_1404EA878
                mov     rcx, rax
                mov     [rsp+198h+var_78], rax
                test    rax, rax
                jnz     short loc_140284B1C
                mov     ecx, [rsp+198h+var_110]
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_140284B1C:                          ; CODE XREF: sub_1402841E0+92E↑j
                mov     r14, [rsp+198h+var_A8]
                movzx   r8d, [rsp+198h+var_164]
                jmp     loc_14028482C
; ---------------------------------------------------------------------------

loc_140284B2F:                          ; CODE XREF: sub_1402841E0+790↑j
                mov     rcx, r14
                call    MmUnlockPages
                mov     rcx, r14
                call    IoFreeMdl
                mov     [rsp+198h+var_A8], r15
                jmp     loc_140284976
; ---------------------------------------------------------------------------

loc_140284B4C:                          ; CODE XREF: sub_1402841E0+500↑j
                xor     r8d, r8d
                call    KeSetEvent
                jmp     loc_1402846E6
; ---------------------------------------------------------------------------

loc_140284B59:                          ; CODE XREF: sub_1402841E0+55F↑j
                cmp     [rsp+198h+var_167], bl
                jz      loc_140284745

loc_140284B63:                          ; CODE XREF: sub_1402841E0+557↑j
                lea     rax, [rsp+198h+var_108]
                mov     [rsp+198h+var_170], rax
                movzx   eax, [rsp+198h+var_168]
                mov     byte ptr [rsp+198h+var_178], al
                xor     r9d, r9d
                mov     r8d, esi
                lea     rdx, [rsp+198h+var_140]
                mov     rcx, [rsp+198h+arg_28]
                mov     rcx, [rcx+28h]
                call    sub_140260E80
                mov     edi, dword ptr [rsp+198h+var_108]
                test    edi, edi
                jns     loc_140284745
                mov     ecx, edi
                call    FsRtlIsNtstatusExpected
                mov     ecx, 0C00000E9h
                test    al, al
                cmovnz  ecx, edi
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 90h
;   } // starts at 14028448C
; ---------------------------------------------------------------------------

loc_140284BBB:                          ; CODE XREF: sub_1402841E0+5A3↑j
                                        ; sub_1402841E0+840↑j
                                        ; DATA XREF: ...
                mov     ecx, [rsp+198h+var_11C]
                movzx   eax, cl
                and     al, 3
                mov     rdx, [rsp+198h+var_F0]
                mov     [rdx+51Ch], al
                shr     ecx, 2
                mov     [rdx+508h], ecx
                mov     r13, 0FFFFFFFFFFFFFFFFh
                test    rbx, rbx
                jnz     loc_140284FE6

loc_140284BEB:                          ; CODE XREF: sub_1402841E0+E1D↓j
                cmp     [rsp+198h+var_166], 0
                jnz     loc_140444287

loc_140284BF6:                          ; CODE XREF: sub_1402841E0+1C00A9↓j
                                        ; sub_1402841E0+1C00C3↓j
                mov     ecx, cs:dword_140C0F3D0
                mov     r10, [rsp+198h+arg_28]
                movzx   edx, [rsp+198h+var_168]
                cmp     ecx, 0FFFFFFFFh
                jz      short loc_140284C1C
                test    dword ptr [r10+50h], 1000000h
                jnz     loc_140284F68

loc_140284C1C:                          ; CODE XREF: sub_1402841E0+A2C↑j
                                        ; sub_1402841E0+D8A↓j ...
                cmp     [rsp+198h+var_15A], 0
                jnz     short loc_140284C7D
                cmp     [rsp+198h+var_163], 0
                jnz     short loc_140284C7D

loc_140284C2A:                          ; CODE XREF: sub_1402841E0+B53↓j
                movzx   eax, [rsp+198h+var_158]

loc_140284C2F:                          ; CODE XREF: sub_1402841E0+1BFF28↓j
                add     rsp, 160h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140284C43:                          ; CODE XREF: sub_1402841E0+273↑j
                mov     rax, gs:188h
                cmp     r14, rax
                jnz     loc_140284ED8

loc_140284C55:                          ; CODE XREF: sub_1402841E0+D49↓j
                mov     r13d, [rsp+198h+var_160]
                test    rdi, rdi
                jz      loc_140284459
                mov     rbx, [rdi+220h]
                jmp     loc_140284460
; ---------------------------------------------------------------------------

loc_140284C6F:                          ; CODE XREF: sub_1402841E0+1D2↑j
                test    r10b, r10b
                jnz     loc_1402843B8
                jmp     loc_140444106
; ---------------------------------------------------------------------------

loc_140284C7D:                          ; CODE XREF: sub_1402841E0+A41↑j
                                        ; sub_1402841E0+A48↑j
                mov     dword ptr [rsp+198h+var_108], r15d
                test    dl, dl
                jz      short loc_140284C97
                test    dword ptr [r12+98h], 40000000h
                jnz     short loc_140284CD9

loc_140284C97:                          ; CODE XREF: sub_1402841E0+AA7↑j
                mov     r8d, r15d
                cmp     [rsp+198h+var_165], r8b
                cmovz   r8d, [rsp+198h+var_118]
                cmovz   r15, [rsp+198h+arg_10]
                lea     rax, [rsp+198h+var_108]
                mov     [rsp+198h+var_170], rax
                mov     byte ptr [rsp+198h+var_178], dl
                xor     r9d, r9d
                mov     rdx, r15
                mov     rcx, [r10+28h]
                call    sub_140260E80
                mov     r15d, dword ptr [rsp+198h+var_108]

loc_140284CD9:                          ; CODE XREF: sub_1402841E0+AB5↑j
                cmp     [rsp+198h+var_159], 0
                jz      short loc_140284D30
                mov     rcx, [rsp+198h+var_70]
                sub     rcx, 0FFFFFFFFFFFFFF80h
                lea     rdx, [rsp+198h+var_E8]
                call    KeAcquireInStackQueuedSpinLock
                dec     dword ptr [r12+204h]
                lea     rcx, [rsp+198h+var_E8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                movzx   ebx, byte ptr [rsp+198h+var_D8]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404442B7

loc_140284D24:                          ; CODE XREF: sub_1402841E0+1C00D9↓j
                                        ; sub_1402841E0+1C00E5↓j ...
                mov     cr8, rbx
                mov     r15d, dword ptr [rsp+198h+var_108]

loc_140284D30:                          ; CODE XREF: sub_1402841E0+AFE↑j
                test    r15d, r15d
                jns     loc_140284C2A
                jmp     loc_14044431D
; ---------------------------------------------------------------------------

loc_140284D3E:                          ; CODE XREF: sub_1402841E0+1A2↑j
                mov     rcx, gs:188h
                cmp     rdx, rcx
                jnz     loc_140284388
                cmp     [rdx+550h], edi
                jz      loc_140284388
                jmp     loc_140284390
; ---------------------------------------------------------------------------

loc_140284D61:                          ; CODE XREF: sub_1402841E0+68↑j
                mov     bl, 1
                jmp     loc_140284250
; ---------------------------------------------------------------------------

loc_140284D68:                          ; CODE XREF: sub_1402841E0+22F↑j
                lea     rcx, [rsi+80h]
                lea     rdx, [rsp+198h+var_E8]
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, [r12+98h]
                test    al, 20h
                jnz     loc_140284F80

loc_140284D8C:                          ; CODE XREF: sub_1402841E0+E65↓j
                inc     dword ptr [r12+204h]
                mov     [rsp+198h+var_159], 1
                lea     rcx, [rsp+198h+var_E8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                movzx   ebx, byte ptr [rsp+198h+var_D8]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14044412B

loc_140284DBC:                          ; CODE XREF: sub_1402841E0+1BFF4D↓j
                                        ; sub_1402841E0+1BFF59↓j ...
                mov     cr8, rbx
                jmp     loc_140284415
; ---------------------------------------------------------------------------

loc_140284DC5:                          ; CODE XREF: sub_1402841E0+1AA↑j
                test    dword ptr [r14+50h], 8000h
                jnz     loc_140284390
                mov     r13d, [rsp+198h+var_160]

loc_140284DD8:                          ; CODE XREF: sub_1402841E0+D83↓j
                mov     sil, 1
                mov     [rsp+198h+var_15A], sil
                test    dword ptr [r12+98h], 400h
                jnz     loc_140284395
                lea     rcx, [rbx+80h]
                lea     rdx, [rsp+198h+var_60]
                call    KeAcquireInStackQueuedSpinLock
                or      dword ptr [r12+98h], 400h
                lea     rcx, [rsp+198h+var_60]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                movzx   ebx, byte ptr [rsp+198h+var_50]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140444098

loc_140284E35:                          ; CODE XREF: sub_1402841E0+1BFEBB↓j
                                        ; sub_1402841E0+1BFEC7↓j ...
                mov     cr8, rbx
                jmp     loc_140284395
; ---------------------------------------------------------------------------

loc_140284E3E:                          ; CODE XREF: sub_1402841E0+287↑j
                lea     rcx, unk_140C458EC
                call    ExAcquireSpinLockShared
                movzx   esi, al
                mov     rbx, [rbx+958h]
                test    rbx, rbx
                jz      short loc_140284E7E
                mov     edx, 1
                lock xadd [rbx+20h], rdx
                inc     rdx
                cmp     rdx, 1
                jle     loc_1404441FA

loc_140284E71:                          ; CODE XREF: sub_1402841E0+1C0021↓j
                mov     [rsp+198h+var_A0], rbx
                mov     r13d, [rsp+198h+var_160]

loc_140284E7E:                          ; CODE XREF: sub_1402841E0+C77↑j
                lea     rcx, unk_140C458EC
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140444206

loc_140284E98:                          ; CODE XREF: sub_1402841E0+1C0028↓j
                                        ; sub_1402841E0+1C0034↓j ...
                mov     cr8, rsi
                test    rbx, rbx
                jz      loc_14044426D
                mov     ebx, r15d
                jmp     loc_140284472
; ---------------------------------------------------------------------------

loc_140284EAD:                          ; CODE XREF: sub_1402841E0+2A6↑j
                mov     rdx, [rsp+198h+var_A0]
                mov     rcx, [rsp+198h+arg_28]
                mov     rcx, [rcx+28h]
                call    sub_140319508
                mov     rcx, [rsp+198h+var_A0]
                call    sub_140319B24
                jmp     loc_14028448C
; ---------------------------------------------------------------------------

loc_140284ED8:                          ; CODE XREF: sub_1402841E0+A6F↑j
                lea     rcx, dword_140C1DF40
                call    ExAcquireSpinLockShared
                movzx   ebx, al
                mov     rdi, [r14+5C0h]
                test    rdi, rdi
                jz      short loc_140284F0B
                mov     edx, 746C6644h
                mov     rcx, rdi
                call    ObfReferenceObjectWithTag
                mov     [rsp+198h+var_114], 1

loc_140284F0B:                          ; CODE XREF: sub_1402841E0+D11↑j
                lea     rcx, dword_140C1DF40
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140444194

loc_140284F25:                          ; CODE XREF: sub_1402841E0+1BFFB6↓j
                                        ; sub_1402841E0+1BFFC2↓j ...
                mov     cr8, rbx
                jmp     loc_140284C55
; ---------------------------------------------------------------------------

loc_140284F2E:                          ; CODE XREF: sub_1402841E0+29A↑j
                mov     rcx, rdi
                call    ObDereferenceObjectDeferDelete
                jmp     loc_140284480
; ---------------------------------------------------------------------------

loc_140284F3B:                          ; CODE XREF: sub_1402841E0+188↑j
                mov     [rsp+198h+var_170], r15
                mov     dword ptr [rsp+198h+var_178], r15d
                xor     r9d, r9d
                mov     r8d, [rsp+198h+arg_18]
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_140265630
                test    al, al
                jnz     loc_14028436E
                jmp     loc_140284DD8
; ---------------------------------------------------------------------------

loc_140284F68:                          ; CODE XREF: sub_1402841E0+A36↑j
                test    dl, dl
                jnz     loc_140284C1C
                cmp     [r12+70h], ecx
                jb      loc_140284C1C
                jmp     loc_1404442A8
; ---------------------------------------------------------------------------

loc_140284F80:                          ; CODE XREF: sub_1402841E0+BA6↑j
                lea     rdx, [rsi+0C0h]
                mov     qword ptr [rsp+198h+var_98+8], rdx
                mov     qword ptr [rsp+198h+var_98], r15
                lea     rcx, [rsp+198h+var_98]
                call    sub_14024B3F0
                mov     rdi, [r12+1F0h]
                test    rdi, rdi
                jnz     short loc_140285002
                lea     rcx, [rsp+198h+var_98]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                lea     rcx, [rsp+198h+var_E8]
                call    KeReleaseInStackQueuedSpinLock
                lea     r8, unk_140C11088
                xor     edx, edx
                xor     ecx, ecx
                call    KeDelayExecutionThread
                mov     ecx, 0C00000D8h
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                align 2

loc_140284FE6:                          ; CODE XREF: sub_1402841E0+A05↑j
                mov     rdi, [rbx+8]
                mov     eax, r13d
                lock xadd [rbx+10h], eax
                dec     eax
                test    ax, ax
                jz      short loc_140285057

loc_140284FF9:                          ; CODE XREF: sub_1402841E0+E8E↓j
                mov     esi, [rsp+198h+var_154]
                jmp     loc_140284BEB
; ---------------------------------------------------------------------------

loc_140285002:                          ; CODE XREF: sub_1402841E0+DCF↑j
                mov     rcx, [rdi]
                mov     rax, [rdi+8]
                cmp     [rcx+8], rdi
                jnz     short loc_140285070
                cmp     [rax], rdi
                jnz     short loc_140285070
                mov     [rax], rcx
                mov     [rcx+8], rax
                mov     [rdi+8], r15
                mov     [rdi], r15
                mov     [r12+1F0h], r15
                and     dword ptr [r12+98h], 0FFFFFFDFh
                mov     [rsp+198h+var_165], 1
                lea     rcx, [rsp+198h+var_98]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                jmp     loc_140284D8C
; ---------------------------------------------------------------------------

loc_14028504A:                          ; CODE XREF: sub_1402841E0+238↑j
                mov     rcx, rdi
                call    sub_1402F9F3C
                jmp     loc_14028441E
; ---------------------------------------------------------------------------

loc_140285057:                          ; CODE XREF: sub_1402841E0+E17↑j
                mov     rcx, [rdi+0B8h]
                test    rcx, rcx
                jnz     loc_140444277

loc_140285067:                          ; CODE XREF: sub_1402841E0+1C00A2↓j
                lock dec dword ptr [rdi+220h]
                jmp     short loc_140284FF9
; ---------------------------------------------------------------------------

loc_140285070:                          ; CODE XREF: sub_1402841E0+E2D↑j
                                        ; sub_1402841E0+E32↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 1402841E0
sub_1402841E0   endp

; ---------------------------------------------------------------------------
algn_140285077:                         ; DATA XREF: .rdata:000000014005EB18↑o
                                        ; .pdata:00000001400CEAF0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140285080   proc near               ; CODE XREF: sub_1402841E0+171↑p
                                        ; sub_1402841E0+216↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140444336 SIZE 0000018B BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rdi, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rbp, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140444336

loc_1402850B4:                          ; CODE XREF: sub_140285080+1BF2B8↓j
                                        ; sub_140285080+1BF2C2↓j ...
                xor     r14d, r14d
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140444377
                mov     rbx, gs:20h
                mov     [rsp+38h+arg_0], r14d
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14044438D

loc_1402850E2:                          ; CODE XREF: sub_140285080+1BF311↓j
                                        ; sub_140285080+1BF320↓j ...
                lock bts cs:dword_140C4C800, 1Fh
                jb      loc_140285188

loc_1402850F1:                          ; CODE XREF: sub_140285080+12C↓j
                mov     edx, cs:dword_140C4C800
                mov     ecx, edx
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jnz     loc_1404443DB

loc_140285109:                          ; CODE XREF: sub_140285080+1BF308↓j
                                        ; sub_140285080+1BF392↓j
                mov     rax, [rdi]
                test    rax, rax
                jz      loc_140444417
                movzx   edx, word ptr [rax+3Ch]
                mov     rax, cs:qword_140C4E4C8
                and     edx, 3FFh
                mov     rbx, [rax+rdx*8]

loc_14028512A:                          ; CODE XREF: sub_140285080+1BF39E↓j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_140444423
                mov     cs:dword_140C4C800, r14d

loc_14028513E:                          ; CODE XREF: sub_140285080+1BF3B5↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14044443A

loc_140285157:                          ; CODE XREF: sub_140285080+1BF3BE↓j
                                        ; sub_140285080+1BF3CD↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14044445E

loc_140285165:                          ; CODE XREF: sub_140285080+1BF3E0↓j
                                        ; sub_140285080+1BF3EC↓j ...
                movzx   ecx, sil
                mov     cr8, rcx
                mov     rax, [rbx+0B0h]
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140285188:                          ; CODE XREF: sub_140285080+6B↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_1404443B4

loc_140285198:                          ; CODE XREF: sub_140285080+1BF338↓j
                                        ; sub_140285080+1BF347↓j ...
                movzx   edx, sil
                lea     rcx, dword_140C4C800
                call    sub_14028EAE0
                mov     [rsp+38h+arg_0], eax
                jmp     loc_1402850F1
sub_140285080   endp

; ---------------------------------------------------------------------------
algn_1402851B1:                         ; DATA XREF: .rdata:000000014005EB60↑o
                                        ; .pdata:00000001400CEAFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402851C0   proc near               ; CODE XREF: sub_140231440+81E↑p
                                        ; sub_14026BC98+81↑p ...
                test    dword ptr [rcx+38h], 40000000h
                jnz     short loc_1402851CD
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402851CD:                          ; CODE XREF: sub_1402851C0+7↑j
                mov     eax, 1
                retn
sub_1402851C0   endp

; ---------------------------------------------------------------------------
                align 4
algn_1402851D4:                         ; DATA XREF: .pdata:00000001400CEB08↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=200h

sub_1402851E0   proc near               ; CODE XREF: sub_14063CB90+77A↓p
                                        ; sub_14063E5A0+30F↓p ...

var_2E0         = qword ptr -2E0h
var_2D8         = qword ptr -2D8h
var_2D0         = qword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A8         = dword ptr -2A8h
var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = qword ptr -290h
var_288         = dword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = dword ptr -270h
var_26C         = dword ptr -26Ch
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = dword ptr -258h
var_254         = word ptr -254h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = dword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = dword ptr -228h
var_224         = dword ptr -224h
var_220         = dword ptr -220h
var_21C         = dword ptr -21Ch
var_218         = dword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = dword ptr -1D0h
var_1CC         = word ptr -1CCh
var_1CA         = word ptr -1CAh
var_1C8         = qword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = xmmword ptr -1B0h
var_1A0         = xmmword ptr -1A0h
var_190         = xmmword ptr -190h
var_180         = xmmword ptr -180h
var_170         = xmmword ptr -170h
var_160         = xmmword ptr -160h
var_150         = xmmword ptr -150h
var_140         = xmmword ptr -140h
var_130         = xmmword ptr -130h
var_120         = qword ptr -120h
var_110         = dword ptr -110h
var_10C         = word ptr -10Ch
var_10A         = word ptr -10Ah
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_20          = dword ptr  30h
arg_28          = dword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rsi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-1E0h]
                sub     rsp, 2E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+200h+var_50], rax
                mov     rax, [rbp+200h+arg_38]
                xorps   xmm0, xmm0
                mov     r12, [rbp+200h+arg_30]
                mov     rsi, r9
                xor     r9d, r9d
                mov     [rbp+200h+var_1D8], rax
                xor     eax, eax
                mov     [rsp+300h+var_298], rdx
                mov     [rbp+200h+var_1CA], ax
                mov     r15, r8
                mov     [rbp+200h+var_120], rax
                mov     r14, rdx
                mov     [rbp+200h+var_10A], ax
                mov     r8, rcx
                mov     [rbp+200h+var_60], rax
                mov     eax, [rdx+30h]
                and     al, 70h
                mov     [rsp+300h+var_2B0], rcx
                mov     [rbp+200h+var_228], r9d
                mov     [rbp+200h+var_1E8], r9
                mov     [rbp+200h+var_200], r9
                mov     [rsp+300h+var_2A8], r9d
                mov     [rbp+200h+var_224], r9d
                mov     [rbp+200h+var_278], r9
                mov     [rbp+200h+var_254], r9w
                movups  [rbp+200h+var_1B0], xmm0
                movups  [rbp+200h+var_1A0], xmm0
                movups  [rbp+200h+var_190], xmm0
                movups  [rbp+200h+var_180], xmm0
                movups  [rbp+200h+var_170], xmm0
                movups  [rbp+200h+var_160], xmm0
                movups  [rbp+200h+var_150], xmm0
                movups  [rbp+200h+var_140], xmm0
                movups  [rbp+200h+var_130], xmm0
                movups  [rbp+200h+var_F0], xmm0
                movups  [rbp+200h+var_E0], xmm0
                movups  [rbp+200h+var_D0], xmm0
                movups  [rbp+200h+var_C0], xmm0
                movups  [rbp+200h+var_B0], xmm0
                movups  [rbp+200h+var_A0], xmm0
                movups  [rbp+200h+var_90], xmm0
                movups  [rbp+200h+var_80], xmm0
                movups  [rbp+200h+var_70], xmm0
                cmp     al, 20h ; ' '
                jnz     short loc_14028530C
                mov     rcx, rdx
                call    sub_14065E1F8
                test    eax, eax
                jz      short loc_140285307
                mov     rcx, r14
                call    sub_1408CB8A8
                cmp     rax, rsi
                jbe     short loc_140285321

loc_140285307:                          ; CODE XREF: sub_1402851E0+118↑j
                mov     r8, [rsp+300h+var_2B0]

loc_14028530C:                          ; CODE XREF: sub_1402851E0+10C↑j
                mov     ecx, [rbp+200h+arg_20]
                call    sub_1402320B0
                mov     [rbp+200h+var_258], eax
                mov     ecx, eax
                cmp     eax, 0FFFFFFFFh
                jnz     short loc_14028532B

loc_140285321:                          ; CODE XREF: sub_1402851E0+125↑j
                mov     eax, 0C0000045h
                jmp     loc_1402867A8
; } // starts at 1402851E0
; ---------------------------------------------------------------------------

loc_14028532B:                          ; CODE XREF: sub_1402851E0+13F↑j
                                        ; DATA XREF: .rdata:000000014005EB98↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+300h+var_28], rbx
                mov     edx, ecx
                and     edx, 0FFFFFFFEh
                mov     [rsp+300h+var_30], rdi
                and     eax, 5
                mov     [rsp+300h+var_38], r13
                cmp     eax, 5
                mov     [rbp+200h+var_238], r9
                mov     rbx, r15
                mov     [rbp+200h+var_208], r9
                cmovnz  edx, ecx
                mov     [rbp+200h+var_108], 14h
                shr     rbx, 9
                mov     r10, 7FFFFFFFF8h
                mov     [rbp+200h+var_26C], edx
                and     rbx, r10
                mov     rdx, 0FFFFF68000000000h
                mov     rdi, r9
                mov     [rbp+200h+var_110], 1
                mov     [rbp+200h+var_10C], r9w
                mov     [rbp+200h+var_100], r9
                mov     [rbp+200h+var_F8], r9
                mov     [rsp+300h+var_288], eax
                mov     rax, rdx
                mov     rcx, rsi
                add     rbx, rax
                shr     rcx, 9
                and     rcx, r10
                mov     [rsp+300h+var_2A0], rbx
                mov     rax, rdx
                lea     rdx, [rcx+rax]
                mov     [rbp+200h+var_240], r9d
                mov     rax, gs:188h
                lea     r13, [r8+680h]
                mov     [rbp+200h+var_210], rax
                mov     rax, [r8+690h]
                mov     [rbp+200h+var_1C8], 14h
                mov     [rbp+200h+var_1D0], 1
                mov     [rbp+200h+var_1CC], 4
                mov     [rbp+200h+var_1C0], r9
                mov     [rbp+200h+var_1B8], r9
                mov     [rbp+200h+var_248], rdx
                mov     [rbp+200h+var_268], r9
                mov     [rbp+200h+var_260], r13
                cmp     [rax+168h], r9
                jz      short loc_14028548A
                mov     eax, [r14+34h]
                movzx   ecx, byte ptr [r14+22h]
                btr     eax, 1Fh
                shl     rcx, 1Fh
                or      rcx, rax
                jz      short loc_14028548A
                mov     rcx, r13
                call    sub_140231340
                movzx   ebx, al
                xor     ecx, ecx
                lea     rax, [rbp+200h+var_268]
                movzx   r9d, bl
                mov     [rsp+300h+var_2D8], rax
                mov     r8, r14
                mov     dword ptr [rsp+300h+var_2E0], ecx
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1402A5AD0
                movzx   edx, bl
                mov     rcx, r13
                call    sub_140226960
                mov     rdx, [rbp+200h+var_268]
                test    rdx, rdx
                jz      short loc_140285481
                mov     rcx, [rsp+300h+var_2B0]
                call    sub_14063D610
                test    eax, eax
                js      loc_140286790

loc_140285481:                          ; CODE XREF: sub_1402851E0+28D↑j
                mov     rdx, [rbp+200h+var_248]
                mov     rbx, [rsp+300h+var_2A0]

loc_14028548A:                          ; CODE XREF: sub_1402851E0+237↑j
                                        ; sub_1402851E0+24D↑j
                cmp     [rsp+300h+var_288], 5
                movzx   ecx, word ptr [r13+0AEh]
                mov     rax, cs:qword_140C4E4C8
                mov     rax, [rax+rcx*8]
                mov     [rbp+200h+var_230], rax
                jnz     short loc_140285512
                mov     r8, rdx
                mov     rcx, r14
                mov     rdx, rbx
                call    sub_14031B800
                cmp     [rbp+200h+arg_28], 1
                mov     rdi, rax
                jnz     loc_1402855C0
                mov     rax, [rbp+200h+var_248]
                sub     rax, rbx
                sar     rax, 3
                sub     rax, rdi
                add     rax, 1
                mov     [rbp+200h+var_238], rax
                jz      short loc_14028550E
                mov     rcx, [rbp+200h+var_230]
                xor     r8d, r8d
                mov     rdx, rax
                call    sub_140232160
                test    eax, eax
                jnz     short loc_14028550E
                mov     rdx, [rbp+200h+var_268]
                test    rdx, rdx
                jz      short loc_140285504
                mov     rcx, [rsp+300h+var_2B0]
                call    sub_14065C6A8

loc_140285504:                          ; CODE XREF: sub_1402851E0+318↑j
                mov     eax, 0C000012Dh
                jmp     loc_140286790
; ---------------------------------------------------------------------------

loc_14028550E:                          ; CODE XREF: sub_1402851E0+2FC↑j
                                        ; sub_1402851E0+30F↑j
                xor     eax, eax
                mov     edi, eax

loc_140285512:                          ; CODE XREF: sub_1402851E0+2C6↑j
                                        ; sub_1402851E0+3E3↓j ...
                mov     rcx, r14
                call    sub_140233020
                cmp     eax, 1
                jnz     loc_140285616
                mov     [rbp+200h+var_240], eax
                mov     rax, [rbp+200h+var_210]
                dec     word ptr [rax+1E6h]
                mov     rbx, [rsp+300h+var_2B0]
                xor     edx, edx
                add     rbx, 4D0h
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                mov     r8, rsi
                mov     rdx, r15
                mov     rcx, r14
                call    sub_14063D6E0
                mov     r14d, eax
                test    eax, eax
                jns     loc_140285611
                mov     rsi, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx], rsi
                and     sil, 6
                cmp     sil, 2
                jnz     short loc_14028557E
                mov     rcx, rbx
                call    ExfTryToWakePushLock

loc_14028557E:                          ; CODE XREF: sub_1402851E0+394↑j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, [rbp+200h+var_210]
                call    sub_140245770
                cmp     [rbp+200h+var_238], 0
                jz      short loc_1402855FA
                mov     rcx, [rbp+200h+var_230]
                mov     rdx, rdi
                call    sub_14026B700

loc_1402855A2:                          ; CODE XREF: sub_1402851E0+41D↓j
                mov     rbx, [rsp+300h+var_2B0]

loc_1402855A7:                          ; CODE XREF: sub_1402851E0+42F↓j
                mov     rdx, [rbp+200h+var_268]
                test    rdx, rdx
                jz      short loc_1402855B8
                mov     rcx, rbx
                call    sub_14065C6A8

loc_1402855B8:                          ; CODE XREF: sub_1402851E0+3CE↑j
                mov     eax, r14d
                jmp     loc_140286790
; ---------------------------------------------------------------------------

loc_1402855C0:                          ; CODE XREF: sub_1402851E0+2E0↑j
                test    rdi, rdi
                jz      loc_140285512
                mov     rcx, [rsp+300h+var_2B0]
                mov     rdx, rdi
                call    sub_14063D610
                mov     ebx, eax
                test    eax, eax
                jns     loc_140285512
                mov     rdx, [rbp+200h+var_268]
                test    rdx, rdx
                jz      short loc_1402855F3
                mov     rcx, [rsp+300h+var_2B0]
                call    sub_14065C6A8

loc_1402855F3:                          ; CODE XREF: sub_1402851E0+407↑j
                mov     eax, ebx
                jmp     loc_140286790
; ---------------------------------------------------------------------------

loc_1402855FA:                          ; CODE XREF: sub_1402851E0+3B4↑j
                test    rdi, rdi
                jz      short loc_1402855A2
                mov     rbx, [rsp+300h+var_2B0]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14065C6A8
                jmp     short loc_1402855A7
; ---------------------------------------------------------------------------

loc_140285611:                          ; CODE XREF: sub_1402851E0+37A↑j
                mov     r14, [rsp+300h+var_298]

loc_140285616:                          ; CODE XREF: sub_1402851E0+33D↑j
                test    rdi, rdi
                jz      short loc_14028564D
                mov     r8d, [r14+34h]
                mov     edx, r8d
                movzx   eax, byte ptr [r14+22h]
                btr     edx, 1Fh
                shl     rax, 1Fh
                or      rdx, rax
                add     rdx, rdi
                mov     eax, edx
                xor     eax, r8d
                btr     eax, 1Fh
                xor     eax, r8d
                shr     rdx, 1Fh
                mov     [r14+34h], eax
                mov     [r14+22h], dl

loc_14028564D:                          ; CODE XREF: sub_1402851E0+439↑j
                movzx   eax, byte ptr [r13+0B8h]
                xor     edi, edi
                and     al, 7
                mov     [rbp+200h+var_270], 1
                mov     [rbp+200h+var_250], rdi
                mov     ebx, edi
                mov     [rsp+300h+var_290], rbx
                lea     rsi, [rdi-1]
                cmp     al, 6
                jb      short loc_1402856D9
                mov     rdi, cr8
                mov     [rbp+200h+var_280], rdi
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      loc_1402857D8
                test    al, 1
                jz      loc_1402857D8
                cmp     dil, 0Fh
                ja      loc_1402857D8
                mov     rax, gs:20h
                mov     edx, 1
                movzx   ecx, dil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                dec     edx
                not     edx
                and     edx, 4
                mov     r8d, [r9+14h]
                or      edx, r8d
                mov     [r9+14h], edx
                jmp     loc_1402857D8
; ---------------------------------------------------------------------------

loc_1402856D9:                          ; CODE XREF: sub_1402851E0+491↑j
                lea     rbx, unk_140C4F600
                cmp     al, 2
                jz      short loc_1402856EB
                lea     rbx, [r13+0C0h]

loc_1402856EB:                          ; CODE XREF: sub_1402851E0+502↑j
                mov     r14, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140285736
                test    al, 1
                jz      short loc_140285736
                cmp     r14b, 0Fh
                ja      short loc_140285736
                mov     rax, gs:20h
                mov     rdx, rsi
                movzx   ecx, r14b
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140285736:                          ; CODE XREF: sub_1402851E0+520↑j
                                        ; sub_1402851E0+524↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_14028574D
                movzx   edx, r14b
                mov     rcx, rbx
                call    sub_1405B5F24
                jmp     short loc_1402857C0
; ---------------------------------------------------------------------------

loc_14028574D:                          ; CODE XREF: sub_1402851E0+55D↑j
                mov     rdi, gs:20h
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      short loc_14028577B
                cmp     byte ptr [rdi+20h], 1
                ja      short loc_14028577B
                mov     eax, [rcx+18h]
                add     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_14028577B
                mov     rcx, rdi
                call    sub_1403F2EC4

loc_14028577B:                          ; CODE XREF: sub_1402851E0+580↑j
                                        ; sub_1402851E0+586↑j ...
                prefetchw byte ptr [rbx]
                mov     eax, [rbx]
                btr     eax, 1Fh
                lea     ecx, [rax+1]
                lock cmpxchg [rbx], ecx
                jz      short loc_1402857BE
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      short loc_1402857B2
                cmp     byte ptr [rdi+20h], 1
                ja      short loc_1402857B2
                mov     eax, [rcx+18h]
                sub     eax, 1
                mov     [rcx+18h], eax
                jnz     short loc_1402857B2
                mov     rcx, rdi
                call    sub_1403F2EC4

loc_1402857B2:                          ; CODE XREF: sub_1402851E0+5B7↑j
                                        ; sub_1402851E0+5BD↑j ...
                movzx   edx, r14b
                mov     rcx, rbx
                call    sub_140329420

loc_1402857BE:                          ; CODE XREF: sub_1402851E0+5AB↑j
                xor     edi, edi

loc_1402857C0:                          ; CODE XREF: sub_1402851E0+56B↑j
                cmp     dword ptr [rbx+4], 0
                jz      short loc_1402857CB
                mov     eax, edi
                xchg    eax, [rbx+4]

loc_1402857CB:                          ; CODE XREF: sub_1402851E0+5E4↑j
                mov     rbx, [rsp+300h+var_290]
                movzx   edi, r14b
                mov     [rbp+200h+var_280], rdi

loc_1402857D8:                          ; CODE XREF: sub_1402851E0+4AC↑j
                                        ; sub_1402851E0+4B4↑j ...
                mov     r9, [rsp+300h+var_298]
                lea     rax, [rbp+200h+var_228]
                mov     [rsp+300h+var_2B8], rax
                movzx   r8d, dil
                lea     rax, [rbp+200h+var_1E8]
                mov     rdx, r15
                mov     [rsp+300h+var_2C0], rax
                mov     rcx, r15
                lea     rax, [rbp+200h+var_254]
                mov     [rsp+300h+var_2C8], rax
                lea     rax, [rbp+200h+var_224]
                mov     [rsp+300h+var_2D0], rax
                lea     rax, [rsp+300h+var_2A8]
                mov     [rsp+300h+var_2D8], rax
                xor     eax, eax
                mov     [rsp+300h+var_2E0], rax
                call    sub_140281E60
                mov     eax, [rsp+300h+var_2A8]
                lea     rcx, cs:140000000h
                mov     r15, [rsp+300h+var_298]
                mov     eax, ds:rva dword_140011250[rcx+rax*4]
                mov     [r12], eax
                mov     r14d, [r15+30h]
                mov     r12, [rsp+300h+var_2A0]
                shr     r14d, 0Ch
                and     r14d, 3Fh
                mov     [rbp+200h+var_21C], r14d

loc_140285851:                          ; CODE XREF: sub_1402851E0+AB8↓j
                                        ; sub_1402851E0+F50↓j ...
                cmp     r12, [rbp+200h+var_248]
                ja      loc_140286693
                mov     r11, 0FFFFFA8000000000h
                mov     r8, 8000000000000000h
                mov     r9, 0FFFFF6FB7DBED7F8h
                mov     rcx, 0FFFFF6FB7DBED000h
                test    r12, 0FFFh
                jz      short loc_140285896
                cmp     [rbp+200h+var_270], 1
                jnz     loc_140285A68

loc_140285896:                          ; CODE XREF: sub_1402851E0+6AA↑j
                xor     eax, eax
                mov     [rbp+200h+var_270], eax
                test    rbx, rbx
                jz      short loc_1402858B7
                lea     rcx, [rbp+200h+var_110]
                call    sub_14028EDB0
                mov     rdx, rbx
                mov     rcx, r13
                call    sub_140312B40

loc_1402858B7:                          ; CODE XREF: sub_1402851E0+6BE↑j
                movzx   eax, byte ptr [r13+0B8h]
                and     al, 7
                cmp     al, 2
                lea     rax, unk_140C4F600
                jz      short loc_1402858D3
                lea     rax, [r13+0C0h]

loc_1402858D3:                          ; CODE XREF: sub_1402851E0+6EA↑j
                mov     eax, [rax]
                bt      eax, 1Eh
                jb      short loc_1402858E4
                call    KeShouldYieldProcessor
                test    eax, eax
                jz      short loc_1402858F8

loc_1402858E4:                          ; CODE XREF: sub_1402851E0+6F9↑j
                movzx   edx, dil
                mov     rcx, r13
                call    sub_140226960
                mov     rcx, r13
                call    sub_140231340

loc_1402858F8:                          ; CODE XREF: sub_1402851E0+702↑j
                mov     rdi, r12
                mov     rdx, 0FFFFF68000000000h
                shr     rdi, 9
                mov     rax, 7FFFFFFFF8h
                and     rdi, rax
                mov     rax, rdx
                add     rdi, rax
                xor     ecx, ecx
                mov     rax, gs:188h
                mov     r15, r12
                mov     [rsp+300h+var_290], rdi
                mov     [rbp+200h+var_1E0], rcx
                shl     r15, 19h
                mov     r13, [rax+0B8h]
                lea     rbx, [r13+680h]
                mov     rax, rdx
                shl     rax, 19h
                sub     r15, rax
                sar     r15, 10h
                mov     rax, rdx
                cmp     r15, rax
                jb      short loc_140285970
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                mov     r12d, ecx
                cmp     r15, rax
                jbe     short loc_140285976

loc_140285970:                          ; CODE XREF: sub_1402851E0+779↑j
                mov     r12d, 1

loc_140285976:                          ; CODE XREF: sub_1402851E0+78E↑j
                                        ; sub_1402851E0+851↓j
                test    r12d, r12d
                jz      short loc_1402859B9
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_1402258A0
                test    eax, eax
                jz      short loc_1402859B9
                cmp     eax, 1
                jz      loc_140285A36
                mov     rdx, 0FFFFF68000000000h

loc_1402859A0:                          ; CODE XREF: sub_1402851E0+7D7↓j
                shr     rdi, 9
                mov     rax, 7FFFFFFFF8h
                and     rdi, rax
                mov     rax, rdx
                add     rdi, rax
                jmp     short loc_1402859A0
; ---------------------------------------------------------------------------

loc_1402859B9:                          ; CODE XREF: sub_1402851E0+799↑j
                                        ; sub_1402851E0+7AB↑j
                mov     rdi, [rsp+300h+var_2A0]
                lea     r8, [rbp+200h+var_1E0]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402A82C0
                cmp     rax, [rsp+300h+var_290]
                jz      short loc_140285A36
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140312B40
                lea     rcx, [rbp+200h+var_110]
                call    sub_14028EDB0
                movzx   edx, byte ptr [rbp+200h+var_280]
                mov     rcx, rbx
                call    sub_140226960
                mov     rax, 100000000000002h
                mov     ecx, r14d
                shl     rcx, 39h
                xor     r9d, r9d
                or      rcx, rax
                xor     r8d, r8d
                mov     rdx, rdi
                call    sub_140224260
                movsxd  rdi, eax
                test    eax, eax
                js      loc_1402867C8
                mov     rcx, rbx
                call    sub_140231340
                mov     rdi, [rsp+300h+var_290]
                jmp     loc_140285976
; ---------------------------------------------------------------------------

loc_140285A36:                          ; CODE XREF: sub_1402851E0+7B0↑j
                                        ; sub_1402851E0+7F2↑j
                mov     r12, [rsp+300h+var_2A0]
                mov     r8, 8000000000000000h
                mov     r15, [rsp+300h+var_298]
                mov     r9, 0FFFFF6FB7DBED7F8h
                mov     r11, 0FFFFFA8000000000h
                mov     rcx, 0FFFFF6FB7DBED000h

loc_140285A68:                          ; CODE XREF: sub_1402851E0+6B0↑j
                mov     r13, r12
                mov     r10, 0FFFFF68000000000h
                shl     r13, 19h
                mov     rax, r10
                mov     rbx, [r12]
                shl     rax, 19h
                sub     r13, rax
                sar     r13, 10h
                mov     rax, rcx
                cmp     r12, rax
                jb      loc_140285B09
                mov     rax, r9
                cmp     r12, rax
                ja      short loc_140285B09
                call    sub_140349680
                test    eax, eax
                jz      short loc_140285AFF
                test    bl, 1
                jz      short loc_140285AFF
                test    bl, 20h
                jz      short loc_140285AB7
                test    bl, 42h
                jnz     short loc_140285AFF

loc_140285AB7:                          ; CODE XREF: sub_1402851E0+8D0↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140285AFF
                mov     rax, r12
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_140285AFF
                or      rbx, 42h

loc_140285AFF:                          ; CODE XREF: sub_1402851E0+8C6↑j
                                        ; sub_1402851E0+8CB↑j ...
                mov     rcx, 0FFFFF6FB7DBED000h

loc_140285B09:                          ; CODE XREF: sub_1402851E0+8B1↑j
                                        ; sub_1402851E0+8BD↑j
                mov     [rbp+200h+var_278], rbx
                test    bl, 1
                jz      loc_140286135
                mov     r15, rbx
                mov     rax, rcx
                lea     rcx, [rbp+200h+var_278]
                cmp     rcx, rax
                jb      short loc_140285B87
                mov     rax, r9
                lea     rcx, [rbp+200h+var_278]
                cmp     rcx, rax
                ja      short loc_140285B87
                call    sub_140349680
                test    eax, eax
                jz      short loc_140285B87
                test    bl, 20h
                jz      short loc_140285B44
                test    bl, 42h
                jnz     short loc_140285B87

loc_140285B44:                          ; CODE XREF: sub_1402851E0+95D↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140285B87
                or      r15, 20h
                lea     rax, [rbp+200h+var_278]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   r15, rbx
                test    al, 42h
                jz      short loc_140285B87
                or      r15, 42h

loc_140285B87:                          ; CODE XREF: sub_1402851E0+943↑j
                                        ; sub_1402851E0+94F↑j ...
                shr     r15, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     r15, rax
                mov     [rbp+200h+var_1F0], r15
                lea     rdi, [r15+r15*2]
                shl     rdi, 4
                mov     rax, r11
                add     rdi, rax
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_140285CBD
                mov     r15, [rdi+8]
                lea     r9, [rbp+200h+var_200]
                mov     rcx, [rsp+300h+var_298]
                mov     r12, r15
                or      r12, r8
                mov     rdx, r13
                xor     r8d, r8d
                shr     rdx, 0Ch
                call    sub_140283270
                cmp     r12, rax
                jz      loc_140285CAF
                xor     r9d, r9d
                mov     rcx, 1000000000h
                mov     ebx, r9d
                test    [rdi+28h], rcx
                jnz     short loc_140285C02
                test    r15, r15
                js      short loc_140285C02
                jnz     short loc_140285C28

loc_140285C02:                          ; CODE XREF: sub_1402851E0+A19↑j
                                        ; sub_1402851E0+A1E↑j
                mov     rcx, [rsp+300h+var_2B0]
                mov     rdx, r12
                call    sub_1402C6E74
                mov     r8, [rcx+690h]
                mov     rbx, rax
                mov     rdx, [rax+60h]
                cmp     [r8+168h], rdx
                cmovbe  rbx, r9

loc_140285C28:                          ; CODE XREF: sub_1402851E0+A20↑j
                lea     rcx, [rbp+200h+var_110]
                call    sub_14028EDB0
                mov     r12, [rsp+300h+var_2A0]
                xor     r9d, r9d
                mov     rdx, r12
                mov     r8, rsi
                mov     rcx, r13
                call    sub_1402C50E0
                mov     edi, eax
                test    eax, eax
                jns     short loc_140285C9D
                mov     r13, [rbp+200h+var_260]
                mov     rdx, [rsp+300h+var_290]
                mov     rcx, r13
                call    sub_140312B40
                movzx   edx, byte ptr [rbp+200h+var_280]
                mov     rcx, r13
                call    sub_140226960
                mov     edx, edi
                mov     rcx, r13
                call    sub_14055C0F8
                xor     eax, eax
                mov     [rbp+200h+var_270], 1
                mov     rcx, r13
                mov     [rsp+300h+var_290], rax
                mov     ebx, eax
                call    sub_140231340
                mov     rdi, [rbp+200h+var_280]
                mov     r15, [rsp+300h+var_298]
                jmp     loc_140285851
; ---------------------------------------------------------------------------

loc_140285C9D:                          ; CODE XREF: sub_1402851E0+A6E↑j
                test    rbx, rbx
                jz      loc_14028667C
                dec     [rbp+200h+var_268]
                jmp     loc_14028667C
; ---------------------------------------------------------------------------

loc_140285CAF:                          ; CODE XREF: sub_1402851E0+9FF↑j
                mov     r15, [rbp+200h+var_1F0]
                mov     r10, 0FFFFF68000000000h

loc_140285CBD:                          ; CODE XREF: sub_1402851E0+9D4↑j
                mov     r12d, [rbp+200h+arg_20]
                and     r12d, 101h
                jnz     loc_140285FE3
                cmp     [rbp+200h+arg_28], 1
                jnz     short loc_140285CEA
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_140285FE3

loc_140285CEA:                          ; CODE XREF: sub_1402851E0+AF8↑j
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_140285F32
                cmp     [rsp+300h+var_288], 5
                jz      short loc_140285D0C
                bt      rbx, 9
                jnb     short loc_140285D0C
                inc     [rbp+200h+var_250]

loc_140285D0C:                          ; CODE XREF: sub_1402851E0+B1F↑j
                                        ; sub_1402851E0+B26↑j
                shr     r13, 9
                mov     rbx, 7FFFFFFFF8h
                and     rbx, r13
                mov     rax, r10
                add     rbx, rax
                mov     r12, 0FFFFF6FB7DBED000h
                mov     rdx, [rbx]
                mov     rax, r12
                mov     r13, 0FFFFF6FB7DBED7F8h
                cmp     rbx, rax
                jb      short loc_140285DAA
                mov     rax, r13
                cmp     rbx, rax
                ja      short loc_140285DAA
                call    sub_140349680
                test    eax, eax
                jz      short loc_140285DAA
                test    dl, 1
                jz      short loc_140285DAA
                test    dl, 20h
                jz      short loc_140285D62
                test    dl, 42h
                jnz     short loc_140285DAA

loc_140285D62:                          ; CODE XREF: sub_1402851E0+B7B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140285DAA
                mov     rax, rbx
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140285DAA
                or      rdx, 42h

loc_140285DAA:                          ; CODE XREF: sub_1402851E0+B60↑j
                                        ; sub_1402851E0+B68↑j ...
                shr     rdx, 3Ch
                and     edx, 7
                jz      short loc_140285DD2
                mov     rax, [rbx]
                test    al, 10h
                jnz     short loc_140285DC7
                test    al, 8
                jz      short loc_140285DC3
                or      edx, 18h
                jmp     short loc_140285DCA
; ---------------------------------------------------------------------------

loc_140285DC3:                          ; CODE XREF: sub_1402851E0+BDC↑j
                test    al, 10h
                jz      short loc_140285DCA

loc_140285DC7:                          ; CODE XREF: sub_1402851E0+BD8↑j
                or      edx, 8

loc_140285DCA:                          ; CODE XREF: sub_1402851E0+BE1↑j
                                        ; sub_1402851E0+BE5↑j
                test    edx, edx
                jnz     loc_140285E59

loc_140285DD2:                          ; CODE XREF: sub_1402851E0+BD1↑j
                lea     rcx, [rdi+10h]
                call    sub_1402805F0
                mov     r8, rax
                mov     rax, 1000000000h
                shr     r8, 5
                and     r8d, 1Fh
                test    [rdi+28h], rax
                jnz     short loc_140285E12
                mov     rax, [rdi+8]
                test    rax, rax
                js      short loc_140285E12
                jz      short loc_140285E12
                lea     rax, cs:140000000h
                mov     edx, ds:rva dword_1400174A0[rax+r8*4]
                jmp     short loc_140285E59
; ---------------------------------------------------------------------------

loc_140285E12:                          ; CODE XREF: sub_1402851E0+C14↑j
                                        ; sub_1402851E0+C1D↑j ...
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     qword ptr [rcx+4F0h], 0
                jz      short loc_140285E56
                mov     rdx, [rdi+8]
                mov     rax, 8000000000000000h
                or      rdx, rax
                call    sub_1402C6E74
                test    rax, rax
                jz      short loc_140285E56
                lea     rcx, cs:140000000h
                mov     r8d, ds:rva dword_1400174A0[rcx+r8*4]

loc_140285E56:                          ; CODE XREF: sub_1402851E0+C4A↑j
                                        ; sub_1402851E0+C65↑j
                mov     edx, r8d

loc_140285E59:                          ; CODE XREF: sub_1402851E0+BEC↑j
                                        ; sub_1402851E0+C30↑j
                mov     r8d, [rbp+200h+var_258]
                mov     rcx, [rsp+300h+var_298]
                mov     [rsp+300h+var_2A8], edx
                call    sub_140286800
                mov     rdx, [rbx]
                mov     r10d, eax
                mov     rax, r12
                cmp     rbx, rax
                jb      short loc_140285EE1
                mov     rax, r13
                cmp     rbx, rax
                ja      short loc_140285EE1
                call    sub_140349680
                test    eax, eax
                jz      short loc_140285EE1
                test    dl, 1
                jz      short loc_140285EE1
                test    dl, 20h
                jz      short loc_140285E99
                test    dl, 42h
                jnz     short loc_140285EE1

loc_140285E99:                          ; CODE XREF: sub_1402851E0+CB2↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140285EE1
                mov     rax, rbx
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140285EE1
                or      rdx, 42h

loc_140285EE1:                          ; CODE XREF: sub_1402851E0+C97↑j
                                        ; sub_1402851E0+C9F↑j ...
                mov     rax, [rbx]
                mov     rcx, 0F00000000000000h
                and     rdx, rcx
                mov     r8, r10
                shl     r8, 3Ch
                mov     rcx, 7F00000000000000h
                or      r8, rdx
                mov     rdx, 80FFFFFFFFFFFFFFh
                and     r8, rcx
                nop     dword ptr [rax+00h]
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140285F20:                          ; CODE XREF: sub_1402851E0+D4E↓j
                mov     rcx, rax
                and     rcx, rdx
                or      rcx, r8
                lock cmpxchg [rbx], rcx
                jnz     short loc_140285F20
                jmp     short loc_140285FB1
; ---------------------------------------------------------------------------

loc_140285F32:                          ; CODE XREF: sub_1402851E0+B14↑j
                xor     eax, eax
                mov     [rbp+200h+var_220], eax
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jnb     short loc_140285F5B

loc_140285F40:                          ; CODE XREF: sub_1402851E0+D70↓j
                                        ; sub_1402851E0+D79↓j
                lea     rcx, [rbp+200h+var_220]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_140285F40
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_140285F40

loc_140285F5B:                          ; CODE XREF: sub_1402851E0+D5E↑j
                mov     r9, [rdi+10h]
                mov     r8d, [rbp+200h+var_26C]
                mov     rdx, r9
                mov     rcx, [rsp+300h+var_298]
                shr     rdx, 5
                and     edx, 1Fh
                call    sub_140286800
                mov     r10d, eax
                and     eax, 1Fh
                shl     rax, 5
                test    r9, r9
                jnz     short loc_140285F94
                mov     rcx, rax
                call    sub_14027C6C0
                mov     [rdi+10h], rax
                jmp     short loc_140285FA2
; ---------------------------------------------------------------------------

loc_140285F94:                          ; CODE XREF: sub_1402851E0+DA4↑j
                and     r9, 0FFFFFFFFFFFFFC1Fh
                or      r9, rax
                mov     [rdi+10h], r9

loc_140285FA2:                          ; CODE XREF: sub_1402851E0+DB2↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax

loc_140285FB1:                          ; CODE XREF: sub_1402851E0+D50↑j
                mov     r12, [rsp+300h+var_2A0]
                lea     rax, [rbp+200h+var_110]
                mov     rcx, [rsp+300h+var_298]
                mov     rdx, r12
                mov     r9, r15
                mov     [rsp+300h+var_2E0], rax
                mov     r8d, r10d
                call    sub_140286870
                add     r12, 8
                mov     [rsp+300h+var_2A0], r12
                jmp     loc_14028667C
; ---------------------------------------------------------------------------

loc_140285FE3:                          ; CODE XREF: sub_1402851E0+AEB↑j
                                        ; sub_1402851E0+B04↑j
                mov     rdx, [rsp+300h+var_2A0]
                mov     rax, [rbp+200h+var_248]
                mov     rcx, rdx
                and     rcx, 0FFFFFFFFFFFFF000h
                and     rax, 0FFFFFFFFFFFFF000h
                cmp     rcx, rax
                mov     rdi, rdx
                lea     r15, [rcx+0FF8h]
                cmovz   r15, [rbp+200h+var_248]
                xor     bl, bl
                cmp     rdx, r15
                ja      loc_140286100
                mov     r14, [rbp+200h+var_260]
                mov     rsi, [rbp+200h+var_1D8]

loc_140286021:                          ; CODE XREF: sub_1402851E0+F0F↓j
                mov     rcx, rdi
                call    sub_1402805F0
                mov     [rbp+200h+var_278], rax
                test    al, 1
                jz      loc_1402860F5
                test    r12d, r12d
                jnz     short loc_140286082
                cmp     [rbp+200h+arg_28], 1
                jnz     loc_1402860F5
                lea     rcx, [rbp+200h+var_278]
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                lea     rcx, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rcx, 4
                mov     rax, rax
                add     rcx, rax
                call    sub_1403F41D8
                test    eax, eax
                jnz     short loc_1402860F5

loc_140286082:                          ; CODE XREF: sub_1402851E0+E58↑j
                mov     rdx, r13
                call    sub_1402DECC0
                and     al, 0Fh
                cmp     al, 8
                jnz     short loc_14028609A
                mov     bl, 1
                mov     dword ptr [rsi], 1
                jmp     short loc_1402860BA
; ---------------------------------------------------------------------------

loc_14028609A:                          ; CODE XREF: sub_1402851E0+EAE↑j
                xor     r9d, r9d
                lea     rcx, [rbp+200h+var_1D0]
                mov     rdx, r13
                lea     r8d, [r9+1]
                call    sub_1402882E0
                cmp     bl, 1
                jz      short loc_1402860BA
                mov     eax, dword ptr [rbp+200h+var_1C8]
                cmp     dword ptr [rbp+200h+var_1C8+4], eax
                jnz     short loc_1402860E1

loc_1402860BA:                          ; CODE XREF: sub_1402851E0+EB8↑j
                                        ; sub_1402851E0+ED0↑j
                cmp     dword ptr [rbp+200h+var_1C8+4], 0
                jz      short loc_1402860CF
                xor     r8d, r8d
                lea     rdx, [rbp+200h+var_1D0]
                mov     rcx, r14
                call    sub_140279D90

loc_1402860CF:                          ; CODE XREF: sub_1402851E0+EDE↑j
                cmp     bl, 1
                jnz     short loc_1402860E1
                mov     rdx, r13
                mov     rcx, r14
                call    sub_1402DDA7C
                xor     bl, bl

loc_1402860E1:                          ; CODE XREF: sub_1402851E0+ED8↑j
                                        ; sub_1402851E0+EF2↑j
                add     rdi, 8
                add     r13, 1000h
                cmp     rdi, r15
                jbe     loc_140286021

loc_1402860F5:                          ; CODE XREF: sub_1402851E0+E4F↑j
                                        ; sub_1402851E0+E61↑j ...
                mov     r14d, [rbp+200h+var_21C]
                mov     rsi, 0FFFFFFFFFFFFFFFFh

loc_140286100:                          ; CODE XREF: sub_1402851E0+E33↑j
                cmp     dword ptr [rbp+200h+var_1C8+4], 0
                jz      loc_140286677
                mov     r13, [rbp+200h+var_260]
                lea     rdx, [rbp+200h+var_1D0]
                mov     rcx, r13
                xor     r8d, r8d
                call    sub_140279D90
                mov     r12, [rsp+300h+var_2A0]
                mov     rbx, [rsp+300h+var_290]
                mov     rdi, [rbp+200h+var_280]
                mov     r15, [rsp+300h+var_298]
                jmp     loc_140285851
; ---------------------------------------------------------------------------

loc_140286135:                          ; CODE XREF: sub_1402851E0+930↑j
                bt      rbx, 0Ah
                jnb     loc_14028626D
                mov     rcx, rbx
                call    sub_14031C870
                test    eax, eax
                jnz     loc_1402861D4
                mov     rax, cs:qword_140C4DDC0
                mov     rdi, rbx
                test    rax, rax
                jz      short loc_14028616D
                test    bl, 10h
                jnz     short loc_14028616D
                mov     rdi, rax
                not     rdi
                and     rdi, rbx

loc_14028616D:                          ; CODE XREF: sub_1402851E0+F7D↑j
                                        ; sub_1402851E0+F82↑j
                shr     r13, 0Ch
                lea     r9, [rbp+200h+var_200]
                mov     rdx, r13
                xor     r8d, r8d
                mov     rcx, r15
                call    sub_140283270
                sar     rdi, 10h
                cmp     rdi, rax
                jz      short loc_1402861D4
                lea     rcx, [rbp+200h+var_110]
                call    sub_14028EDB0
                mov     rdi, [rbp+200h+var_280]
                mov     edx, 1
                movzx   r8d, dil
                mov     rcx, r12
                call    sub_14034F194
                test    eax, eax
                jns     short loc_1402861BA
                add     r12, 8
                mov     [rsp+300h+var_2A0], r12

loc_1402861BA:                          ; CODE XREF: sub_1402851E0+FCF↑j
                mov     rbx, [rsp+300h+var_290]
                mov     r13, [rbp+200h+var_260]
                mov     r15, [rsp+300h+var_298]
                mov     [rbp+200h+var_270], 1
                jmp     loc_140285851
; ---------------------------------------------------------------------------

loc_1402861D4:                          ; CODE XREF: sub_1402851E0+F6A↑j
                                        ; sub_1402851E0+FAA↑j
                cmp     [rsp+300h+var_288], 5
                jz      short loc_1402861F4
                mov     rcx, rbx
                call    sub_14031C870
                test    eax, eax
                jz      short loc_1402861F4
                movzx   eax, bl
                and     al, 0A0h
                cmp     al, 0A0h
                jnz     short loc_1402861F4
                inc     [rbp+200h+var_250]

loc_1402861F4:                          ; CODE XREF: sub_1402851E0+FF9↑j
                                        ; sub_1402851E0+1005↑j ...
                mov     rcx, rbx
                call    sub_14031C870
                test    eax, eax
                jz      short loc_140286206
                shr     rbx, 5
                jmp     short loc_140286210
; ---------------------------------------------------------------------------

loc_140286206:                          ; CODE XREF: sub_1402851E0+101E↑j
                mov     rax, [r15+48h]
                movzx   ebx, word ptr [rax+20h]
                shr     ebx, 1

loc_140286210:                          ; CODE XREF: sub_1402851E0+1024↑j
                mov     r8d, [rbp+200h+var_258]
                and     ebx, 1Fh
                mov     edx, ebx
                mov     [rsp+300h+var_2A8], ebx
                mov     rcx, r15
                call    sub_140286800
                mov     ecx, eax
                and     ecx, 1Fh
                or      rcx, 0FFFFFFFFF8000020h
                shl     rcx, 5
                call    sub_14027C6C0
                mov     rcx, r12
                mov     [rbp+200h+var_278], rax
                mov     rdi, rax
                mov     rbx, rax
                call    sub_1402433C0
                test    eax, eax
                jz      loc_140286668
                call    sub_140349680
                test    eax, eax
                jz      loc_140286639
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jmp     loc_14028660A
; ---------------------------------------------------------------------------

loc_14028626D:                          ; CODE XREF: sub_1402851E0+F5A↑j
                bt      rbx, 0Bh
                jnb     short loc_1402862CE
                cmp     [rbp+200h+arg_28], 1
                jnz     short loc_1402862AC
                mov     rcx, r12
                call    sub_14034E3D4
                cmp     eax, 3
                jnz     short loc_140286290
                inc     [rbp+200h+var_208]
                jmp     short loc_140286299
; ---------------------------------------------------------------------------

loc_140286290:                          ; CODE XREF: sub_1402851E0+10A8↑j
                cmp     eax, 1
                jz      loc_14028667C

loc_140286299:                          ; CODE XREF: sub_1402851E0+10AE↑j
                mov     rbx, [rsp+300h+var_2B0]
                mov     rax, rsi
                lock xadd [rbx+4F8h], rax
                jmp     short loc_14028630E
; ---------------------------------------------------------------------------

loc_1402862AC:                          ; CODE XREF: sub_1402851E0+109B↑j
                mov     r8d, [rbp+200h+var_26C]
                mov     r9d, 1
                mov     rdx, r12
                mov     rcx, r15
                call    sub_1402A877C
                test    eax, eax
                jz      loc_14028666C
                jmp     loc_14028667C
; ---------------------------------------------------------------------------

loc_1402862CE:                          ; CODE XREF: sub_1402851E0+1092↑j
                xor     r15b, r15b
                cmp     [rbp+200h+arg_28], 1
                jnz     short loc_140286328
                test    rbx, rbx
                jz      short loc_140286331
                mov     rcx, [rbp+200h+var_230]
                mov     r8d, 1
                mov     rdx, rbx
                call    sub_1402D9B64
                mov     rcx, rbx
                call    sub_1402CA91C
                test    eax, eax
                jz      short loc_14028630E
                mov     rcx, [rsp+300h+var_2B0]
                mov     rax, rsi
                lock xadd [rcx+4F8h], rax

loc_14028630E:                          ; CODE XREF: sub_1402851E0+10CA↑j
                                        ; sub_1402851E0+111B↑j
                mov     rcx, r13
                call    sub_14029BB60
                mov     edx, 1
                mov     rcx, rax
                call    sub_1403548C4
                mov     r15b, 1
                jmp     short loc_140286331
; ---------------------------------------------------------------------------

loc_140286328:                          ; CODE XREF: sub_1402851E0+10F8↑j
                test    rbx, rbx
                jnz     loc_1402865B4

loc_140286331:                          ; CODE XREF: sub_1402851E0+10FD↑j
                                        ; sub_1402851E0+1146↑j
                shr     r13, 12h
                and     r13d, 3FFFFFF8h
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                mov     rbx, [rax+r13]
                lea     rdi, [rax+r13]
                mov     rcx, rdi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1402863BD
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402863BD
                test    bl, 1
                jz      short loc_1402863BD
                test    bl, 20h
                jz      short loc_140286375
                test    bl, 42h
                jnz     short loc_1402863BD

loc_140286375:                          ; CODE XREF: sub_1402851E0+118E↑j
                mov     rax, gs:188h
                mov     edx, edi
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_1402863BD
                shr     rdx, 3
                and     edx, 1FFh
                mov     rax, [rax+rdx*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_1402863BD
                or      rbx, 42h

loc_1402863BD:                          ; CODE XREF: sub_1402851E0+117B↑j
                                        ; sub_1402851E0+1184↑j ...
                lea     rcx, [rbp+200h+var_1F8]
                mov     [rbp+200h+var_1F8], rbx
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14028642F
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028642F
                test    bl, 1
                jz      short loc_14028642F
                test    bl, 20h
                jz      short loc_1402863E6
                test    bl, 42h
                jnz     short loc_14028642F

loc_1402863E6:                          ; CODE XREF: sub_1402851E0+11FF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028642F
                lea     rax, [rbp+200h+var_1F8]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14028642F
                or      rbx, 42h

loc_14028642F:                          ; CODE XREF: sub_1402851E0+11EC↑j
                                        ; sub_1402851E0+11F5↑j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rbx, [rbx+rbx*2]
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                xor     eax, eax
                mov     [rbp+200h+var_218], eax
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jnb     short loc_140286481

loc_140286466:                          ; CODE XREF: sub_1402851E0+1296↓j
                                        ; sub_1402851E0+129F↓j
                lea     rcx, [rbp+200h+var_218]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_140286466
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_140286466

loc_140286481:                          ; CODE XREF: sub_1402851E0+1284↑j
                mov     rax, [rbx+10h]
                lea     rcx, [rax+10000h]
                xor     rcx, rax
                and     ecx, 3FF0000h
                xor     rcx, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     [rbx+10h], rcx
                lock and [rbx+18h], rax
                mov     rcx, [rbx+8]
                mov     rbx, 8000000000000000h
                or      rcx, rbx
                call    sub_14029B5F0
                cmp     [rsp+300h+var_288], 5
                jz      short loc_1402864E3
                cmp     r15b, 1
                jz      short loc_1402864DF
                mov     rcx, [rsp+300h+var_298]
                mov     rdx, r12
                call    sub_14031BD38
                test    eax, eax
                jnz     short loc_1402864E3

loc_1402864DF:                          ; CODE XREF: sub_1402851E0+12EC↑j
                inc     [rbp+200h+var_250]

loc_1402864E3:                          ; CODE XREF: sub_1402851E0+12E6↑j
                                        ; sub_1402851E0+12FD↑j
                mov     rax, [rsp+300h+var_298]
                xor     ecx, ecx
                mov     r8d, [rbp+200h+var_258]
                mov     rax, [rax+48h]
                movzx   edx, word ptr [rax+20h]
                shr     edx, 1
                and     edx, 1Fh
                mov     [rsp+300h+var_2A8], edx
                call    sub_140286800
                mov     ecx, eax
                and     ecx, 1Fh
                or      rcx, 0FFFFFFFFF8000020h
                shl     rcx, 5
                call    sub_14027C6C0
                mov     rdx, rax
                mov     [rbp+200h+var_278], rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r12, rax
                jb      short loc_1402865A2
                mov     r13, 0FFFFF6FB7DBED7F8h
                mov     rax, r13
                cmp     r12, rax
                ja      short loc_1402865A2
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028657E
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     rax, rdx
                jnz     short loc_140286561
                test    dl, 1
                jz      short loc_140286561
                or      rax, rbx

loc_140286561:                          ; CODE XREF: sub_1402851E0+1377↑j
                                        ; sub_1402851E0+137C↑j
                mov     rdx, rax
                mov     [r12], rax
                mov     rcx, r12
                call    sub_140349620
                add     r12, 8
                mov     [rsp+300h+var_2A0], r12
                jmp     loc_14028667C
; ---------------------------------------------------------------------------

loc_14028657E:                          ; CODE XREF: sub_1402851E0+136B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_1402865A2
                test    dl, 1
                jz      short loc_1402865A2
                or      rdx, rbx

loc_1402865A2:                          ; CODE XREF: sub_1402851E0+1350↑j
                                        ; sub_1402851E0+1362↑j ...
                mov     [r12], rdx
                add     r12, 8
                mov     [rsp+300h+var_2A0], r12
                jmp     loc_14028667C
; ---------------------------------------------------------------------------

loc_1402865B4:                          ; CODE XREF: sub_1402851E0+114B↑j
                mov     r8d, [rbp+200h+var_26C]
                mov     rax, rbx
                mov     rcx, [rsp+300h+var_298]
                shr     rax, 5
                and     eax, 1Fh
                mov     edx, eax
                mov     [rsp+300h+var_2A8], eax
                call    sub_140286800
                mov     edi, eax
                mov     rcx, r12
                shl     rdi, 5
                xor     rdi, rbx
                mov     [rbp+200h+var_26C], eax
                and     edi, 3E0h
                xor     rdi, rbx
                mov     [rbp+200h+var_278], rdi
                mov     rbx, rdi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_140286668
                call    sub_140349680
                test    eax, eax
                jz      short loc_140286639
                cmp     byte ptr cs:word_140C4DE88+1, r15b

loc_14028660A:                          ; CODE XREF: sub_1402851E0+1088↑j
                mov     rdx, rdi
                jnz     short loc_140286622
                test    dil, 1
                jz      short loc_140286622
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_140286622:                          ; CODE XREF: sub_1402851E0+142D↑j
                                        ; sub_1402851E0+1433↑j
                mov     rcx, r12
                mov     [r12], rdx
                call    sub_140349620
                add     r12, 8
                mov     [rsp+300h+var_2A0], r12
                jmp     short loc_14028667C
; ---------------------------------------------------------------------------

loc_140286639:                          ; CODE XREF: sub_1402851E0+107B↑j
                                        ; sub_1402851E0+1421↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140286668
                test    dil, 1
                jz      short loc_140286668
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_140286668:                          ; CODE XREF: sub_1402851E0+106E↑j
                                        ; sub_1402851E0+1418↑j ...
                mov     [r12], rbx

loc_14028666C:                          ; CODE XREF: sub_1402851E0+10E3↑j
                add     r12, 8
                mov     [rsp+300h+var_2A0], r12
                jmp     short loc_14028667C
; ---------------------------------------------------------------------------

loc_140286677:                          ; CODE XREF: sub_1402851E0+F24↑j
                mov     r12, [rsp+300h+var_2A0]

loc_14028667C:                          ; CODE XREF: sub_1402851E0+AC0↑j
                                        ; sub_1402851E0+ACA↑j ...
                mov     r13, [rbp+200h+var_260]
                mov     rbx, [rsp+300h+var_290]
                mov     rdi, [rbp+200h+var_280]
                mov     r15, [rsp+300h+var_298]
                jmp     loc_140285851
; ---------------------------------------------------------------------------

loc_140286693:                          ; CODE XREF: sub_1402851E0+675↑j
                lea     rcx, [rbp+200h+var_110]
                call    sub_14028EDB0
                test    rbx, rbx
                jz      short loc_1402866AF
                mov     rdx, rbx
                mov     rcx, r13
                call    sub_140312B40

loc_1402866AF:                          ; CODE XREF: sub_1402851E0+14C2↑j
                movzx   edx, dil
                mov     rcx, r13
                call    sub_140226960
                cmp     [rbp+200h+var_240], 1
                mov     rdi, [rsp+300h+var_2B0]
                jnz     short loc_1402866FA
                lock xadd [rdi+4D0h], rsi
                and     sil, 6
                cmp     sil, 2
                jnz     short loc_1402866E5
                lea     rcx, [rdi+4D0h]
                call    ExfTryToWakePushLock

loc_1402866E5:                          ; CODE XREF: sub_1402851E0+14F7↑j
                lea     rcx, [rdi+4D0h]
                call    sub_140243660
                mov     rcx, [rbp+200h+var_210]
                call    sub_140245770

loc_1402866FA:                          ; CODE XREF: sub_1402851E0+14E4↑j
                mov     rsi, [rbp+200h+var_208]
                mov     rax, [rbp+200h+var_238]
                test    rsi, rsi
                jz      short loc_140286715
                cmp     [rsp+300h+var_288], 5
                jnz     short loc_140286715
                sub     rax, rsi
                xor     ecx, ecx
                mov     esi, ecx

loc_140286715:                          ; CODE XREF: sub_1402851E0+1525↑j
                                        ; sub_1402851E0+152C↑j
                mov     r14, [rbp+200h+var_230]
                test    rax, rax
                jz      short loc_140286729
                mov     rdx, rax
                mov     rcx, r14
                call    sub_14026B700

loc_140286729:                          ; CODE XREF: sub_1402851E0+153C↑j
                mov     rbx, [rbp+200h+var_250]
                test    rbx, rbx
                jz      short loc_14028677D
                mov     ecx, [r15+34h]
                mov     rdx, rbx
                movzx   eax, byte ptr [r15+22h]
                mov     r8d, ecx
                shl     rax, 1Fh
                btr     r8d, 1Fh
                or      r8, rax
                sub     rdx, rsi
                sub     r8, rbx
                mov     eax, r8d
                shr     r8, 1Fh
                xor     eax, ecx
                btr     eax, 1Fh
                xor     eax, ecx
                mov     rcx, r14
                mov     [r15+34h], eax
                mov     [r15+22h], r8b
                call    sub_14026B700
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14026B7D0

loc_14028677D:                          ; CODE XREF: sub_1402851E0+1550↑j
                mov     rdx, [rbp+200h+var_268]
                test    rdx, rdx
                jz      short loc_14028678E
                mov     rcx, rdi
                call    sub_14065C6A8

loc_14028678E:                          ; CODE XREF: sub_1402851E0+15A4↑j
                xor     eax, eax

loc_140286790:                          ; CODE XREF: sub_1402851E0+29B↑j
                                        ; sub_1402851E0+329↑j ...
                mov     rdi, [rsp+300h+var_30]
                mov     rbx, [rsp+300h+var_28]
                mov     r13, [rsp+300h+var_38]
; } // starts at 14028532B

loc_1402867A8:                          ; CODE XREF: sub_1402851E0+146↑j
                                        ; DATA XREF: .pdata:00000001400CEB20↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rbp+200h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 2E0h
                pop     r15
                pop     r14
                pop     r12
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8
; } // starts at 1402867A8

loc_1402867C8:                          ; CODE XREF: sub_1402851E0+83E↑j
                                        ; DATA XREF: .pdata:00000001400CEB2C↑o ...
; __unwind { // __GSHandlerCheck
                mov     ecx, 1
                call    sub_140535798
                mov     rdx, [rsp+300h+var_2A0]
                mov     r8, rdi
                mov     [rsp+300h+var_2E0], rdx
                mov     r9, r13
                mov     edx, 1
                lea     ecx, [rdx+79h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402867C8
sub_1402851E0   endp

algn_1402867F0:                         ; DATA XREF: .pdata:00000001400CEB38↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140286800   proc near               ; CODE XREF: sub_14026CF00+26B↑p
                                        ; sub_1402851E0+C86↑p ...

; FUNCTION CHUNK AT 00000001404444C2 SIZE 00000022 BYTES

                cmp     r8d, 18h
                jz      short loc_140286825
                cmp     edx, 18h
                jz      short loc_14028682C

loc_14028680B:                          ; CODE XREF: sub_140286800+45↓j
                                        ; sub_140286800+49↓j
                and     edx, 18h
                jnz     short loc_140286850
                mov     eax, r8d
                and     eax, 18h
                cmp     eax, 18h
                jz      short loc_14028685F
                cmp     eax, 8
                jz      short loc_140286859

loc_140286820:                          ; CODE XREF: sub_140286800+5D↓j
                                        ; sub_140286800+63↓j ...
                mov     eax, r8d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140286825:                          ; CODE XREF: sub_140286800+4↑j
                mov     eax, 18h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14028682C:                          ; CODE XREF: sub_140286800+9↑j
                mov     edx, [rcx+30h]
                bt      edx, 14h
                jb      short loc_14028684B
                mov     rax, [rcx+48h]
                movzx   edx, word ptr [rax+20h]
                shr     edx, 1

loc_14028683F:                          ; CODE XREF: sub_140286800+4E↓j
                and     edx, 1Fh
                cmp     edx, 18h
                jnz     short loc_14028680B
                xor     edx, edx
                jmp     short loc_14028680B
; ---------------------------------------------------------------------------

loc_14028684B:                          ; CODE XREF: sub_140286800+33↑j
                shr     edx, 7
                jmp     short loc_14028683F
; ---------------------------------------------------------------------------

loc_140286850:                          ; CODE XREF: sub_140286800+E↑j
                cmp     edx, 10h
                jnz     loc_1404444C2

loc_140286859:                          ; CODE XREF: sub_140286800+1E↑j
                and     r8d, 0FFFFFFF7h
                jmp     short loc_140286820
; ---------------------------------------------------------------------------

loc_14028685F:                          ; CODE XREF: sub_140286800+19↑j
                and     r8d, 0FFFFFFE7h
                jmp     short loc_140286820
sub_140286800   endp

; ---------------------------------------------------------------------------
algn_140286865:                         ; DATA XREF: .pdata:00000001400CEB44↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140286870   proc near               ; CODE XREF: sub_1402851E0+DF0↑p
                                        ; sub_1402A6A10+6CB↓p ...

var_78          = dword ptr -78h
var_74          = dword ptr -74h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404444E4 SIZE 000005EF BYTES

                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                mov     r10d, [rcx+30h]
                mov     r15, rdx
                xor     edx, edx
                mov     eax, r10d
                and     eax, 500000h
                mov     [rsp+98h+arg_18], edx
                mov     r11, rcx
                mov     r12, r9
                lea     rcx, cs:140000000h
                mov     edi, r8d
                cmp     eax, 500000h
                jz      loc_1404444E4
                mov     ecx, 1
                mov     r9d, 3
                mov     [rsp+98h+arg_10], r9d
                mov     r14d, ecx
                mov     [rsp+98h+var_60], rcx

loc_1402868D8:                          ; CODE XREF: sub_140286870+1BDCC7↓j
                mov     r13, r15
                mov     [rsp+98h+var_68], rcx
                shl     r13, 19h
                mov     rbp, 0FFFFF68000000000h
                mov     rax, rbp
                mov     rsi, [r15]
                shl     rax, 19h
                sub     r13, rax
                mov     [rsp+98h+var_58], rsi
                sar     r13, 10h
                mov     [rsp+98h+var_50], r13
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                mov     rcx, 0FFFFF6FB7DBED7F8h
                cmp     r15, rax
                jnb     loc_14044453C

loc_140286929:                          ; CODE XREF: sub_140286870+1BDCD2↓j
                                        ; sub_140286870+1BDD5E↓j
                mov     eax, r8d
                movzx   ecx, sil
                and     eax, 18h
                and     cl, 18h
                cmp     cl, 8
                jz      loc_140286C4E
                test    sil, 10h
                jnz     loc_1404445D3
                test    eax, eax
                jnz     loc_1404445E7

loc_140286951:                          ; CODE XREF: sub_140286870+3E8↓j
                                        ; sub_140286870+1BDD66↓j ...
                mov     r10, 0FFFFFFFFFh
                cmp     r12, r10
                ja      loc_1404446CA
                lea     rcx, [r12+r12*2]
                shl     rcx, 4
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [rcx+rax]
                mov     r8, 4000000000000h
                test    r8, rax
                jz      loc_1404446CA
                mov     rax, 0FFFFFA8000000000h
                add     rcx, rax
                test    cs:dword_140CFC400, 40000h
                mov     [rsp+98h+var_70], rcx
                jnz     loc_1404445EF

loc_1402869AF:                          ; CODE XREF: sub_140286870+1BDD83↓j
                                        ; sub_140286870+1BDE62↓j
                mov     r8, 7FFFFFFFFFFFFFFFh

loc_1402869B9:                          ; CODE XREF: sub_140286870+1BDE55↓j
                cmp     r9d, 1
                jbe     loc_1404446D7

loc_1402869C3:                          ; CODE XREF: sub_140286870+1BDE6B↓j
                mov     r14d, edi
                lea     rax, cs:140000000h
                and     r14d, 1Fh
                mov     rbx, ds:rva qword_140017520[rax+r14*8]
                mov     rax, 0FFFF000000000E7Fh
                and     rbx, rax
                mov     rax, r12
                and     rax, r10
                shl     rax, 0Ch
                or      rbx, rax
                or      rbx, 21h
                mov     rax, rbp
                mov     r9, 8000000000000000h
                cmp     r15, rax
                jb      loc_1404447B0
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r15, rax
                ja      loc_1404447B0
                mov     rax, 0FFFFF6FB40000000h
                cmp     r15, rax
                jnb     loc_1404446E0

loc_140286A36:                          ; CODE XREF: sub_140286870+1BDE7D↓j
                                        ; sub_140286870+1BDEBF↓j
                mov     rax, rbp
                mov     r8, 3FFFFFFF78h
                add     rax, r8
                cmp     r15, rax
                ja      short loc_140286A4F
                or      rbx, 4

loc_140286A4F:                          ; CODE XREF: sub_140286870+1D9↑j
                bt      edi, 1Ah
                jb      loc_140444734
                mov     rbp, r13

loc_140286A5C:                          ; CODE XREF: sub_140286870+1BDED6↓j
                mov     rax, 0FFFF800000000000h
                cmp     rbp, rax
                jnb     loc_14044474B
                movzx   eax, byte ptr cs:word_140C4DE88+1

loc_140286A76:                          ; CODE XREF: sub_140286870+1BDF3B↓j
                test    eax, eax
                jnz     loc_1404447B0

loc_140286A7E:                          ; CODE XREF: sub_140286870+1BDF45↓j
                                        ; sub_140286870+1BDF59↓j
                test    edi, edi
                js      loc_1404447CE

loc_140286A86:                          ; CODE XREF: sub_140286870+1BDF66↓j
                                        ; sub_140286870+1BDF70↓j
                bt      edi, 1Eh
                jb      loc_1404447E5

loc_140286A90:                          ; CODE XREF: sub_140286870+1BDF79↓j
                bt      edi, 1Dh
                jb      loc_1404447EE

loc_140286A9A:                          ; CODE XREF: sub_140286870+1BDF94↓j
                bt      edi, 1Bh
                jb      loc_140444809

loc_140286AA4:                          ; CODE XREF: sub_140286870+1BDF9E↓j
                bt      edi, 1Ah
                jb      loc_140444813

loc_140286AAE:                          ; CODE XREF: sub_140286870+1BDFA8↓j
                mov     rax, 0FAFFFFFFFFFFFFFFh
                and     rbx, rax
                mov     rax, 0A00000000000000h
                or      rbx, rax
                test    rcx, rcx
                jz      loc_14044481D
                test    cs:dword_140CFC400, 2000000h
                jnz     loc_140444834

loc_140286AE1:                          ; CODE XREF: sub_140286870+1BDFBF↓j
                                        ; sub_140286870+1BDFCC↓j ...
                mov     eax, [r11+30h]
                mov     r14, r15
                mov     esi, [rsp+98h+arg_10]
                xor     r15d, r15d
                and     eax, 300000h
                mov     r13d, r15d
                cmp     eax, 300000h
                mov     ebp, edx
                mov     rdi, 0FFFFFFFFF000h
                mov     r8, 0F00000000000000h
                setz    r13b
                mov     r9, 7000000000000000h

loc_140286B23:                          ; CODE XREF: sub_140286870+39F↓j
                test    r13d, r13d
                jnz     loc_140286D29

loc_140286B2C:                          ; CODE XREF: sub_140286870+4D9↓j
                mov     rax, r12
                shl     rax, 0Ch
                xor     rax, rbx
                and     rax, rdi
                xor     rbx, rax
                test    ebp, ebp
                jnz     loc_140444850
                mov     eax, cs:dword_140CFC400
                bt      eax, 8
                jb      short loc_140286B5A
                bt      eax, 9
                jnb     loc_14044484B

loc_140286B5A:                          ; CODE XREF: sub_140286870+2DE↑j
                mov     rcx, [r14]
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rdx, r10
                cmp     r14, rdx
                jnb     loc_14044485F

loc_140286B73:                          ; CODE XREF: sub_140286870+1BDFFF↓j
                                        ; sub_140286870+1BE00A↓j ...
                test    cl, 40h
                setnz   dl
                test    bl, 40h
                setz    al
                test    al, dl
                jnz     short loc_140286B93
                test    cl, 2
                setnz   dl
                test    bl, 2
                setz    al
                test    al, dl
                jz      short loc_140286B9A

loc_140286B93:                          ; CODE XREF: sub_140286870+311↑j
                                        ; sub_140286870+332↓j
                mov     ebp, 1
                jmp     short loc_140286BA4
; ---------------------------------------------------------------------------

loc_140286B9A:                          ; CODE XREF: sub_140286870+321↑j
                test    rbx, rbx
                jns     short loc_140286BA4
                test    rcx, rcx
                jns     short loc_140286B93

loc_140286BA4:                          ; CODE XREF: sub_140286870+328↑j
                                        ; sub_140286870+32D↑j ...
                inc     r12
                cmp     esi, 1
                jbe     loc_14044490B
                mov     rdi, [r14]
                mov     rax, r10
                cmp     r14, rax
                jnb     loc_140444933

loc_140286BBF:                          ; CODE XREF: sub_140286870+1BE0D3↓j
                                        ; sub_140286870+1BE0E3↓j ...
                mov     rax, rdi
                mov     rcx, r14
                xor     rax, rbx
                and     rax, r8
                xor     rax, rbx
                xor     rdi, rax
                and     rdi, r9
                xor     rdi, rax
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404449E5

loc_140286BE4:                          ; CODE XREF: sub_140286870+1BE1C8↓j
                                        ; sub_140286870+1BE1D2↓j ...
                mov     [r14], rdi

loc_140286BE7:                          ; CODE XREF: sub_140286870+1BE1A9↓j
                mov     rdi, 0FFFFFFFFF000h

loc_140286BF1:                          ; CODE XREF: sub_140286870+1BE0BE↓j
                add     r14, 8
                mov     r8, 0F00000000000000h
                sub     [rsp+98h+var_60], 1
                mov     r9, 7000000000000000h
                jnz     loc_140286B23
                mov     rsi, [rsp+98h+var_58]
                mov     r15, [rsp+98h+arg_8]
                mov     r13, [rsp+98h+var_50]
                test    ebp, ebp
                jnz     short loc_140286C5D

loc_140286C2B:                          ; CODE XREF: sub_140286870+1BE1F3↓j
                mov     rbx, [rsp+98h+var_68]

loc_140286C30:                          ; CODE XREF: sub_140286870+417↓j
                cmp     rbx, 1
                jnz     short loc_140286C3C
                test    sil, 42h
                jnz     short loc_140286C89

loc_140286C3C:                          ; CODE XREF: sub_140286870+3C4↑j
                                        ; sub_140286870+421↓j ...
                add     rsp, 58h
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

loc_140286C4E:                          ; CODE XREF: sub_140286870+C9↑j
                or      edi, 18h
                cmp     eax, 18h
                cmovz   edi, r8d
                jmp     loc_140286951
; ---------------------------------------------------------------------------

loc_140286C5D:                          ; CODE XREF: sub_140286870+3B9↑j
                mov     edx, [rsp+98h+arg_18]
                mov     rcx, [rsp+98h+arg_20]
                test    edx, edx
                jnz     loc_140444A5A
                mov     rbx, [rsp+98h+var_68]
                xor     r9d, r9d
                mov     r8, rbx
                mov     rdx, r13
                call    sub_1402882E0
                jmp     short loc_140286C30
; ---------------------------------------------------------------------------

loc_140286C89:                          ; CODE XREF: sub_140286870+3CA↑j
                mov     rbx, [rsp+98h+var_70]
                test    rbx, rbx
                jz      short loc_140286C3C
                mov     rax, [rsp+98h+arg_0]
                mov     eax, [rax+30h]
                and     al, 70h
                cmp     al, 40h ; '@'
                jz      loc_140444A68

loc_140286CA8:                          ; CODE XREF: sub_140286870+1BE208↓j
                xor     edi, edi
                mov     [rsp+98h+var_74], edi
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      loc_140444A7D

loc_140286CBB:                          ; CODE XREF: sub_140286870+1BE229↓j
                movzx   r9d, byte ptr [rbx+22h]
                mov     rax, rdi
                test    r9b, 10h
                jz      short loc_140286CE6

loc_140286CC9:                          ; CODE XREF: sub_140286870+4B2↓j
                                        ; sub_140286870+1BE247↓j
                mov     rcx, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rcx
                test    rax, rax
                jz      loc_140286C3C
                jmp     loc_140444ABC
; ---------------------------------------------------------------------------

loc_140286CE6:                          ; CODE XREF: sub_140286870+457↑j
                movzx   r8d, r9b
                lea     rcx, [rbx+10h]
                shr     r8b, 3
                bt      qword ptr [rcx], 0Ah
                not     r8b
                setnb   dl
                and     r8b, dl
                test    r8b, 1
                jz      short loc_140286D17
                xor     r8d, r8d
                lea     edx, [r8+1]
                call    sub_140338C90
                movzx   r9d, byte ptr [rbx+22h]

loc_140286D17:                          ; CODE XREF: sub_140286870+494↑j
                or      r9b, 10h
                mov     [rbx+22h], r9b
                test    rax, rax
                jz      short loc_140286CC9
                jmp     loc_140444A9E
; ---------------------------------------------------------------------------

loc_140286D29:                          ; CODE XREF: sub_140286870+2B6↑j
                mov     rcx, r14
                call    sub_1402805F0
                test    al, 42h
                jnz     short loc_140286D4E

loc_140286D35:                          ; CODE XREF: sub_140286870+509↓j
                mov     r9, 7000000000000000h
                mov     r8, 0F00000000000000h
                jmp     loc_140286B2C
; ---------------------------------------------------------------------------

loc_140286D4E:                          ; CODE XREF: sub_140286870+4C3↑j
                mov     rcx, r14
                call    sub_14027F590
                mov     rcx, gs:188h
                mov     rdx, rax
                mov     r8, [rsp+98h+arg_0]
                mov     rcx, [rcx+0B8h]
                call    sub_14026BA68
                mov     r13d, r15d
                jmp     short loc_140286D35
sub_140286870   endp

; ---------------------------------------------------------------------------
byte_140286D7B  db 15h dup(0CCh)        ; DATA XREF: .rdata:000000014005EBF4↑o
                                        ; .pdata:00000001400CEB50↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0AC0h

sub_140286D90   proc near               ; CODE XREF: sub_140362E04+A3↓p
                                        ; sub_14065C460+78↓p ...

var_BA0         = qword ptr -0BA0h
var_B90         = dword ptr -0B90h
var_B88         = qword ptr -0B88h
var_B80         = qword ptr -0B80h
var_B78         = qword ptr -0B78h
var_B70         = dword ptr -0B70h
var_B68         = qword ptr -0B68h
var_B60         = dword ptr -0B60h
var_B58         = qword ptr -0B58h
var_B50         = qword ptr -0B50h
var_B48         = dword ptr -0B48h
var_B40         = qword ptr -0B40h
var_B38         = qword ptr -0B38h
var_B30         = qword ptr -0B30h
var_B28         = qword ptr -0B28h
var_B20         = dword ptr -0B20h
var_B1C         = dword ptr -0B1Ch
var_B18         = qword ptr -0B18h
var_B10         = qword ptr -0B10h
var_B08         = qword ptr -0B08h
var_B00         = qword ptr -0B00h
var_AF8         = qword ptr -0AF8h
var_AF0         = qword ptr -0AF0h
var_AE8         = qword ptr -0AE8h
var_AE0         = xmmword ptr -0AE0h
var_AD0         = xmmword ptr -0AD0h
var_AC0         = xmmword ptr -0AC0h
var_AA0         = word ptr -0AA0h
var_A9E         = byte ptr -0A9Eh
var_A9A         = byte ptr -0A9Ah
var_A90         = qword ptr -0A90h
var_A88         = qword ptr -0A88h
var_A80         = qword ptr -0A80h
var_A78         = qword ptr -0A78h
var_A00         = qword ptr -0A00h
var_9F8         = qword ptr -9F8h
var_9F0         = dword ptr -9F0h
var_9EC         = word ptr -9ECh
var_9EA         = word ptr -9EAh
var_9E8         = qword ptr -9E8h
var_9E0         = qword ptr -9E0h
var_9D8         = qword ptr -9D8h
var_9D0         = xmmword ptr -9D0h
var_9C0         = xmmword ptr -9C0h
var_9B0         = xmmword ptr -9B0h
var_9A0         = xmmword ptr -9A0h
var_990         = xmmword ptr -990h
var_980         = xmmword ptr -980h
var_970         = xmmword ptr -970h
var_960         = xmmword ptr -960h
var_950         = xmmword ptr -950h
var_940         = qword ptr -940h
var_930         = dword ptr -930h
var_92C         = word ptr -92Ch
var_928         = dword ptr -928h
var_920         = qword ptr -920h
var_918         = qword ptr -918h
var_870         = dword ptr -870h
var_86C         = word ptr -86Ch
var_86A         = word ptr -86Ah
var_868         = qword ptr -868h
var_860         = qword ptr -860h
var_858         = qword ptr -858h
var_850         = byte ptr -850h
var_50          = qword ptr -50h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0A88h]
                sub     rsp, 0B88h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0AC0h+var_50], rax
                mov     r15, [rbp+0AC0h+arg_28]
                mov     rbx, rcx
                mov     [rsp+0BC0h+var_B80], r8
                lea     rcx, [rbp+0AC0h+var_850]
                mov     [rbp+0AC0h+var_B28], rdx
                xor     eax, eax
                xor     r12d, r12d
                mov     [rsp+0BC0h+var_B68], r15
                xor     edx, edx
                mov     [rbp+0AC0h+var_B10], r12
                mov     r8d, 7F8h
                mov     [rbp+0AC0h+var_86A], ax
                mov     rdi, r9
                mov     [rbp+0AC0h+var_B18], r9
                call    memset
                xorps   xmm0, xmm0
                mov     [rbp+0AC0h+var_868], 100h
                mov     r11d, 1
                mov     [rbp+0AC0h+var_86C], r12w
                mov     r9d, 2
                mov     [rbp+0AC0h+var_870], r11d
                movups  [rbp+0AC0h+var_AC0], xmm0
                mov     ecx, 200h
                mov     dword ptr [rbp+0AC0h+var_AC0+8], r9d
                movups  [rbp+0AC0h+var_AD0], xmm0
                mov     [rbp+0AC0h+var_860], r12
                mov     [rbp+0AC0h+var_858], r12
                mov     [rsp+0BC0h+var_B88], r11
                mov     [rsp+0BC0h+var_B48], r12d
                call    sub_14027C6C0
                movzx   ecx, byte ptr [rdi+21h]
                mov     r14, rax
                mov     [rbp+0AC0h+var_AF0], rax
                mov     rsi, rax
                mov     eax, [rdi+1Ch]
                shl     rcx, 20h
                or      rcx, rax
                mov     r10, 0FFFFF68000000000h
                mov     rax, 0FFFFFFFFFh
                and     rcx, rax
                mov     rax, r10
                mov     edx, [rdi+34h]
                lea     r8, [rax+rcx*8]
                movzx   ecx, byte ptr [rdi+22h]
                mov     eax, edx
                btr     eax, 1Fh
                shl     rcx, 1Fh
                or      rcx, rax
                mov     [rbp+0AC0h+var_B00], r8
                mov     rax, 7FFFFFFFEh
                cmp     rcx, rax
                jnz     short loc_140286ED2
                mov     ecx, [rdi+30h]
                shr     ecx, 7
                and     ecx, 1Fh
                shl     rcx, 5
                call    sub_14027C6C0
                mov     r14, rax
                mov     [rbp+0AC0h+var_AF0], rax
                mov     rsi, rax
                jmp     short loc_140286EFE
; ---------------------------------------------------------------------------

loc_140286ED2:                          ; CODE XREF: sub_140286D90+122↑j
                test    edx, edx
                js      short loc_140286EFE
                mov     eax, [rdi+30h]
                bt      eax, 14h
                jnb     short loc_140286EEB
                bt      eax, 18h
                jb      short loc_140286EEB
                bt      eax, 19h
                jb      short loc_140286EEE

loc_140286EEB:                          ; CODE XREF: sub_140286D90+14D↑j
                                        ; sub_140286D90+153↑j
                mov     rsi, r12

loc_140286EEE:                          ; CODE XREF: sub_140286D90+159↑j
                mov     rcx, rdi
                mov     [rbp+0AC0h+var_B00], r12
                call    sub_140233020
                mov     [rsp+0BC0h+var_B48], eax

loc_140286EFE:                          ; CODE XREF: sub_140286D90+140↑j
                                        ; sub_140286D90+144↑j
                mov     edx, [rdi+30h]
                mov     ecx, edx
                and     ecx, 500000h
                mov     [rbp+0AC0h+var_AF8], r11
                mov     [rsp+0BC0h+var_B60], 3
                cmp     ecx, 500000h
                jnz     short loc_140286F5A
                shr     rdx, 12h
                lea     rax, cs:140000000h
                and     edx, 3
                mov     r9d, 10h
                mov     r8, ds:rva qword_14002DE90[rax+rdx*8]
                mov     ecx, ds:rva dword_14002DE50[rax+rdx*4]
                cmp     r8, r9
                mov     [rsp+0BC0h+var_B88], r8
                cmovnz  r9, r11
                mov     [rsp+0BC0h+var_B60], ecx
                mov     [rbp+0AC0h+var_AF8], r9
                mov     r9d, 2

loc_140286F5A:                          ; CODE XREF: sub_140286D90+18B↑j
                cmp     [rbp+0AC0h+arg_20], r12d
                mov     eax, r9d
                mov     r13, rbx
                mov     [rsp+0BC0h+var_B50], r12
                cmovnz  eax, r12d
                mov     rdx, 7FFFFFFFF8h
                shr     r13, 9
                mov     rdi, r12
                and     r13, rdx
                mov     [rbp+0AC0h+var_B20], eax
                mov     rax, r10
                add     r13, rax
                mov     [rsp+0BC0h+var_B70], r11d
                mov     rax, cs:qword_140C4E4C8
                and     rbx, 0FFFFFFFFFFFFF000h
                mov     [rsp+0BC0h+var_B58], rbx
                mov     r10d, r11d
                mov     rbx, [rsp+0BC0h+var_B80]
                add     rbx, 680h
                mov     [rsp+0BC0h+var_B90], r12d
                mov     [rsp+0BC0h+var_B78], rbx
                movzx   ecx, word ptr [rbx+0AEh]
                mov     rax, [rax+rcx*8]
                mov     [rbp+0AC0h+var_B38], rax
                movzx   eax, byte ptr [rbx+0B8h]
                and     al, 7
                cmp     al, 6
                jb      short loc_140287029
                mov     rcx, cr8
                mov     [rbp+0AC0h+var_B30], rcx
                mov     cr8, r9
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140287063
                test    r10b, al
                jz      short loc_140287063
                cmp     cl, 0Fh
                ja      short loc_140287063
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, cl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     short loc_140287063
; ---------------------------------------------------------------------------

loc_140287029:                          ; CODE XREF: sub_140286D90+248↑j
                cmp     al, 2
                jnz     short loc_140287036
                lea     rbx, unk_140C4F600
                jmp     short loc_14028703D
; ---------------------------------------------------------------------------

loc_140287036:                          ; CODE XREF: sub_140286D90+29B↑j
                add     rbx, 0C0h

loc_14028703D:                          ; CODE XREF: sub_140286D90+2A4↑j
                mov     rcx, rbx
                call    ExAcquireSpinLockShared
                cmp     [rbx+4], r12d
                jz      short loc_140287050
                xor     ecx, ecx
                xchg    ecx, [rbx+4]

loc_140287050:                          ; CODE XREF: sub_140286D90+2B9↑j
                mov     r10d, [rsp+0BC0h+var_B70]
                mov     r11d, 1
                mov     rbx, [rsp+0BC0h+var_B78]
                mov     byte ptr [rbp+0AC0h+var_B30], al

loc_140287063:                          ; CODE XREF: sub_140286D90+25E↑j
                                        ; sub_140286D90+263↑j ...
                cmp     r13, [rbp+0AC0h+var_B28]
                ja      loc_140287ECC
                nop     dword ptr [rax]

loc_140287070:                          ; CODE XREF: sub_140286D90+111A↓j
                xor     edx, edx
                mov     rdi, r13
                cmp     r10d, 1
                jnz     loc_14028715E
                mov     edx, r11d

loc_140287082:                          ; CODE XREF: sub_140286D90+3D5↓j
                mov     r9, 7FFFFFFFF8h
                mov     r8, 0FFFFF68000000000h

loc_140287096:                          ; CODE XREF: sub_140286D90+413↓j
                test    rdi, 0FFFh
                jz      short loc_1402870A7
                test    edx, edx
                jz      loc_140287464

loc_1402870A7:                          ; CODE XREF: sub_140286D90+30D↑j
                xor     edx, edx
                lea     rcx, [rbp+0AC0h+var_930]
                mov     r8d, 0B8h
                call    memset
                mov     rdx, qword ptr [rbp+0AC0h+var_AD0+8]
                mov     eax, 1
                test    rdx, rdx
                jz      loc_1402871A8
                xor     edi, edi
                mov     [rbp+0AC0h+var_930], eax
                mov     [rbp+0AC0h+var_920], rdi
                mov     [rbp+0AC0h+var_918], rdi
                mov     [rbp+0AC0h+var_92C], 0
                mov     [rbp+0AC0h+var_928], 14h
                shl     rdx, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                mov     r8, qword ptr [rbp+0AC0h+var_AC0]
                lea     rcx, [rbp+0AC0h+var_930]
                shl     rax, 19h
                xor     r9d, r9d
                sub     rdx, rax
                sar     rdx, 10h
                call    sub_1402882E0
                lea     rcx, [rbp+0AC0h+var_AD0]
                call    sub_14028E340
                mov     dword ptr [rsp+0BC0h+var_BA0], edi
                lea     rcx, [rbp+0AC0h+var_930]
                mov     rdi, [rsp+0BC0h+var_B80]
                mov     r9, r15
                mov     rdx, rdi
                mov     r8, rsi
                call    sub_14028F360
                test    eax, eax
                mov     eax, 1
                cmovnz  r12d, eax
                mov     [rsp+0BC0h+var_B90], r12d
                jmp     short loc_1402871AD
; ---------------------------------------------------------------------------

loc_14028715E:                          ; CODE XREF: sub_140286D90+2E9↑j
                mov     ecx, [rsp+0BC0h+var_B60]
                cmp     ecx, 1
                ja      loc_140287082
                mov     eax, 2
                mov     r8, 0FFFFF68000000000h
                sub     eax, ecx
                mov     r9, 7FFFFFFFF8h
                mov     ecx, eax
                nop     dword ptr [rax+rax+00000000h]

loc_140287190:                          ; CODE XREF: sub_140286D90+411↓j
                shr     rdi, 9
                and     rdi, r9
                mov     rax, r8
                add     rdi, rax
                sub     rcx, 1
                jnz     short loc_140287190
                jmp     loc_140287096
; ---------------------------------------------------------------------------

loc_1402871A8:                          ; CODE XREF: sub_140286D90+337↑j
                mov     rdi, [rsp+0BC0h+var_B80]

loc_1402871AD:                          ; CODE XREF: sub_140286D90+3CC↑j
                cmp     dword ptr [rbp+0AC0h+var_868+4], 0
                jz      short loc_1402871DF
                mov     r9, r15
                mov     dword ptr [rsp+0BC0h+var_BA0], eax
                mov     r8, rsi
                lea     rcx, [rbp+0AC0h+var_870]
                mov     rdx, rdi
                call    sub_14028F360
                test    eax, eax
                mov     eax, 1
                cmovnz  r12d, eax
                mov     [rsp+0BC0h+var_B90], r12d

loc_1402871DF:                          ; CODE XREF: sub_140286D90+424↑j
                mov     rax, [rsp+0BC0h+var_B50]
                test    rax, rax
                jz      short loc_1402871FD
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140312B40
                mov     [rsp+0BC0h+var_B50], 0

loc_1402871FD:                          ; CODE XREF: sub_140286D90+457↑j
                cmp     [rsp+0BC0h+var_B48], 0
                jz      loc_1402873CA
                xorps   xmm0, xmm0
                lea     rcx, [rbp+0AC0h+var_A9E]
                xor     edx, edx
                mov     r8d, 0AEh
                movups  [rbp+0AC0h+var_AE0], xmm0
                call    memset
                mov     rax, 0FFFFF68000000000h
                mov     r15, rax
                mov     rdi, [rbp+0AC0h+var_B28]
                mov     eax, 861h
                shl     r15, 19h
                mov     r9, r13
                shl     r9, 19h
                shl     rdi, 19h
                sub     r9, r15
                sar     r9, 10h
                sub     rdi, r15
                mov     rcx, r9
                mov     [rsp+0BC0h+var_B58], r9
                sar     rdi, 10h
                mov     [rbp+0AC0h+var_AA0], ax
                call    sub_14027F590
                mov     rcx, 0FFFF800000000000h
                cmp     rax, rcx
                jb      short loc_140287294
                cmp     rax, cs:qword_140C4F9B8
                jb      short loc_140287285
                cmp     rax, cs:qword_140C4E1E8
                jbe     short loc_140287294

loc_140287285:                          ; CODE XREF: sub_140286D90+4EA↑j
                mov     ecx, 1
                call    sub_1402A46FC
                mov     rbx, rax
                jmp     short loc_1402872AB
; ---------------------------------------------------------------------------

loc_140287294:                          ; CODE XREF: sub_140286D90+4E1↑j
                                        ; sub_140286D90+4F3↑j
                mov     rax, gs:188h
                mov     rbx, [rax+0B8h]
                add     rbx, 680h

loc_1402872AB:                          ; CODE XREF: sub_140286D90+502↑j
                xor     r8d, r8d
                mov     rdx, r9
                mov     rcx, rbx
                call    sub_1402258A0
                test    eax, eax
                jz      short loc_1402872EF
                mov     rbx, [rsp+0BC0h+var_B58]
                lea     ecx, [rax-1]
                shr     rbx, 9
                mov     r9, 7FFFFFFFF8h
                and     rbx, r9
                mov     dword ptr [rbp+0AC0h+var_AE0], ecx
                mov     r8, 0FFFFF68000000000h
                mov     rax, r8
                add     rbx, rax
                mov     qword ptr [rbp+0AC0h+var_AE0+8], rbx
                jmp     short loc_14028735C
; ---------------------------------------------------------------------------

loc_1402872EF:                          ; CODE XREF: sub_140286D90+52B↑j
                or      [rbp+0AC0h+var_AA0], 4
                lea     rax, [rbp+0AC0h+var_AE0]
                mov     [rbp+0AC0h+var_9F8], rax
                lea     rcx, [rbp+0AC0h+var_AA0]
                movzx   eax, [rbp+0AC0h+var_A9E]
                and     al, 0E7h
                mov     [rbp+0AC0h+var_A90], 0
                or      al, 4
                mov     [rbp+0AC0h+var_A88], rbx
                mov     [rbp+0AC0h+var_A9E], al
                lea     rax, sub_14034E280
                mov     [rbp+0AC0h+var_A00], rax
                mov     rax, [rbp+0AC0h+var_B30]
                mov     [rbp+0AC0h+var_A9A], al
                mov     rax, [rsp+0BC0h+var_B58]
                mov     [rbp+0AC0h+var_A80], rax
                mov     [rbp+0AC0h+var_A78], rdi
                call    sub_140220490
                mov     ecx, dword ptr [rbp+0AC0h+var_AE0]
                mov     r9, 7FFFFFFFF8h
                mov     rbx, qword ptr [rbp+0AC0h+var_AE0+8]
                mov     r8, 0FFFFF68000000000h

loc_14028735C:                          ; CODE XREF: sub_140286D90+55D↑j
                mov     rdi, [rsp+0BC0h+var_B68]
                mov     rdx, [rdi+18h]
                test    rbx, rbx
                jz      loc_140287EAF
                mov     rax, rbx
                sub     rax, r13
                mov     r13, rbx
                sar     rax, 3
                add     rax, rdx
                mov     [rdi+18h], rax
                mov     rdi, rbx
                test    ecx, ecx
                jz      short loc_1402873B3
                shr     rdi, 9
                and     rdi, r9
                mov     rax, r8
                add     rdi, rax
                cmp     ecx, 1
                jbe     short loc_1402873B3
                dec     ecx
                nop     dword ptr [rax]

loc_1402873A0:                          ; CODE XREF: sub_140286D90+621↓j
                shr     rdi, 9
                and     rdi, r9
                mov     rax, r8
                add     rdi, rax
                sub     rcx, 1
                jnz     short loc_1402873A0

loc_1402873B3:                          ; CODE XREF: sub_140286D90+5F7↑j
                                        ; sub_140286D90+609↑j
                shl     rbx, 19h
                sub     rbx, r15
                mov     r15, [rsp+0BC0h+var_B68]
                sar     rbx, 10h
                mov     [rsp+0BC0h+var_B58], rbx
                jmp     short loc_140287431
; ---------------------------------------------------------------------------

loc_1402873CA:                          ; CODE XREF: sub_140286D90+472↑j
                mov     ecx, [rsp+0BC0h+var_B60]
                mov     rdi, r13
                cmp     ecx, 1
                ja      short loc_14028740B
                mov     eax, 2
                mov     r15, 0FFFFF68000000000h
                sub     eax, ecx
                mov     rdx, 7FFFFFFFF8h
                mov     ecx, eax

loc_1402873F3:                          ; CODE XREF: sub_140286D90+674↓j
                shr     rdi, 9
                and     rdi, rdx
                mov     rax, r15
                add     rdi, rax
                sub     rcx, 1
                jnz     short loc_1402873F3
                mov     r15, [rsp+0BC0h+var_B68]

loc_14028740B:                          ; CODE XREF: sub_140286D90+644↑j
                mov     rax, [rbp+0AC0h+var_B18]
                xor     edx, edx
                movzx   r9d, byte ptr [rbp+0AC0h+var_B30]
                mov     rcx, rdi
                mov     r8d, [rax+30h]
                mov     eax, [rbp+0AC0h+var_B20]
                shr     r8d, 0Ch
                and     r8d, 3Fh
                mov     dword ptr [rsp+0BC0h+var_BA0], eax
                call    sub_1402A73A0

loc_140287431:                          ; CODE XREF: sub_140286D90+638↑j
                mov     r10, rdi
                mov     r8, 0FFFFF68000000000h
                shr     r10, 9
                mov     r9, 7FFFFFFFF8h
                and     r10, r9
                mov     rax, r8
                add     r10, rax
                mov     [rsp+0BC0h+var_B50], r10
                xor     r10d, r10d
                mov     [rsp+0BC0h+var_B70], r10d
                jmp     short loc_140287467
; ---------------------------------------------------------------------------

loc_140287464:                          ; CODE XREF: sub_140286D90+311↑j
                xor     r10d, r10d

loc_140287467:                          ; CODE XREF: sub_140286D90+6D2↑j
                mov     rbx, [rdi]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                mov     r11, 0FFFFF6FB7DBED7F8h
                cmp     rdi, rax
                jb      short loc_1402874EE
                mov     rax, r11
                cmp     rdi, rax
                ja      short loc_1402874EE
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402874EE
                test    bl, 1
                jz      short loc_1402874EE
                test    bl, 20h
                jz      short loc_1402874A6
                test    bl, 42h
                jnz     short loc_1402874EE

loc_1402874A6:                          ; CODE XREF: sub_140286D90+70F↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1402874EE
                mov     rax, rdi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_1402874EE
                or      rbx, 42h

loc_1402874EE:                          ; CODE XREF: sub_140286D90+6F4↑j
                                        ; sub_140286D90+6FC↑j ...
                mov     [rbp+0AC0h+var_AE8], rbx
                test    rbx, rbx
                jnz     loc_140287649
                cmp     r13, [rbp+0AC0h+var_B00]
                jbe     short loc_14028750A
                mov     rax, [rsp+0BC0h+var_B88]
                add     [r15+18h], rax

loc_14028750A:                          ; CODE XREF: sub_140286D90+76F↑j
                test    rsi, rsi
                jz      loc_1402875C0
                mov     rcx, rdi
                shl     rcx, 19h
                mov     rax, r8
                shl     rax, 19h
                sub     rcx, rax
                sar     rcx, 10h
                call    sub_14029BB60
                mov     rbx, [rbp+0AC0h+var_AF8]
                mov     rcx, rax
                mov     edx, ebx
                call    sub_14029DD54
                mov     r15, rbx
                mov     r14, 8000000000000000h
                nop     dword ptr [rax+rax+00000000h]

loc_140287550:                          ; CODE XREF: sub_140286D90+82A↓j
                mov     rcx, rdi
                mov     rbx, rsi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1402875AF
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028758A
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14028757A
                test    sil, 1
                jz      short loc_14028757A
                or      rbx, r14

loc_14028757A:                          ; CODE XREF: sub_140286D90+7DF↑j
                                        ; sub_140286D90+7E5↑j
                mov     rdx, rbx
                mov     [rdi], rbx
                mov     rcx, rdi
                call    sub_140349620
                jmp     short loc_1402875B2
; ---------------------------------------------------------------------------

loc_14028758A:                          ; CODE XREF: sub_140286D90+7D6↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_1402875AF
                test    sil, 1
                jz      short loc_1402875AF
                or      rbx, r14

loc_1402875AF:                          ; CODE XREF: sub_140286D90+7CD↑j
                                        ; sub_140286D90+814↑j ...
                mov     [rdi], rbx

loc_1402875B2:                          ; CODE XREF: sub_140286D90+7F8↑j
                add     rdi, 8
                sub     r15, 1
                jnz     short loc_140287550
                mov     r14, [rbp+0AC0h+var_AF0]

loc_1402875C0:                          ; CODE XREF: sub_140286D90+77D↑j
                                        ; sub_140286D90+A45↓j
                mov     rax, [rsp+0BC0h+var_B88]

loc_1402875C5:                          ; CODE XREF: sub_140286D90+D75↓j
                mov     ebx, 1

loc_1402875CA:                          ; CODE XREF: sub_140286D90+D4D↓j
                                        ; sub_140286D90+D5A↓j ...
                lea     r13, [r13+rax*8+0]
                test    r13b, 78h
                jnz     short loc_140287602
                mov     r15, [rsp+0BC0h+var_B78]
                movzx   eax, byte ptr [r15+0B8h]
                and     al, 7
                cmp     al, 2
                lea     rax, unk_140C4F600
                jz      short loc_1402875F6
                lea     rax, [r15+0C0h]

loc_1402875F6:                          ; CODE XREF: sub_140286D90+85D↑j
                mov     eax, [rax]
                bt      eax, 1Eh
                jb      loc_140287DE6

loc_140287602:                          ; CODE XREF: sub_140286D90+843↑j
                mov     rcx, gs:20h
                mov     r8d, [rcx+312Ch]
                mov     edi, [rcx+7BECh]
                mov     r15d, [rcx+7E9Ch]
                test    r8b, 1
                jz      loc_140287D4C
                mov     edx, ebx
                cmp     r15d, 7
                jbe     loc_140287D81
                movzx   eax, byte ptr [rcx+3129h]
                test    al, al
                jz      loc_140287D8E
                jmp     loc_140287DC1
; ---------------------------------------------------------------------------

loc_140287649:                          ; CODE XREF: sub_140286D90+765↑j
                test    bl, 1
                jz      loc_140287824
                cmp     [rsp+0BC0h+var_B88], 1
                jz      short loc_140287682

loc_14028765A:                          ; CODE XREF: sub_140286D90+BAF↓j
                mov     rcx, [rbp+0AC0h+var_B18]
                lea     rax, [rbp+0AC0h+var_870]
                mov     r9, r15
                mov     [rsp+0BC0h+var_BA0], rax
                mov     r8, rsi
                mov     rdx, rdi
                call    sub_14053CDB0
                mov     ebx, 1
                jmp     loc_140287AD6
; ---------------------------------------------------------------------------

loc_140287682:                          ; CODE XREF: sub_140286D90+8C8↑j
                mov     rdi, [rsp+0BC0h+var_B58]
                mov     rcx, rdi
                mov     [rbp+0AC0h+var_B1C], r10d
                shr     rcx, 9
                and     rcx, r9
                mov     rax, r8
                mov     rdx, [rcx+rax]
                lea     r8, [rcx+rax]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r8, rax
                jb      short loc_140287719
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_140287719
                call    sub_140349680
                test    eax, eax
                jz      short loc_140287719
                test    dl, 1
                jz      short loc_140287719
                test    dl, 20h
                jz      short loc_1402876D2
                test    dl, 42h
                jnz     short loc_140287719

loc_1402876D2:                          ; CODE XREF: sub_140286D90+93B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140287719
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140287719
                or      rdx, 42h

loc_140287719:                          ; CODE XREF: sub_140286D90+920↑j
                                        ; sub_140286D90+928↑j ...
                shr     rdx, 38h
                and     dl, 0Fh
                cmp     dl, 8
                jz      short loc_14028773E
                mov     rdx, [rsp+0BC0h+var_B78]
                lea     rcx, [rbp+0AC0h+var_AD0]
                mov     r8, r13
                call    sub_140288040
                test    eax, eax
                jnz     loc_1402877C7

loc_14028773E:                          ; CODE XREF: sub_140286D90+993↑j
                mov     rcx, [rsp+0BC0h+var_B78]
                lea     r9, [rbp+0AC0h+var_B1C]
                xor     r8d, r8d
                mov     rdx, rdi
                call    sub_140289320
                xor     r9d, r9d
                lea     rcx, [rbp+0AC0h+var_870]
                mov     rdx, rdi
                lea     r8d, [r9+1]
                call    sub_1402882E0
                and     rbx, 0FFFFFFFFFFFFFFFEh
                mov     rax, 0FFFFF6FB7DBED000h
                bts     rbx, 0Ah
                mov     [rbp+0AC0h+var_AE8], rbx
                mov     rax, rax
                cmp     r13, rax
                jb      short loc_1402877C3
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r13, rax
                ja      short loc_1402877C3
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402877BA
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     rcx, r13
                mov     rdx, rbx
                mov     [r13+0], rbx
                call    sub_140349620
                jmp     short loc_1402877C7
; ---------------------------------------------------------------------------

loc_1402877BA:                          ; CODE XREF: sub_140286D90+A10↑j
                mov     rax, gs:188h

loc_1402877C3:                          ; CODE XREF: sub_140286D90+9F5↑j
                                        ; sub_140286D90+A07↑j
                mov     [r13+0], rbx

loc_1402877C7:                          ; CODE XREF: sub_140286D90+9A8↑j
                                        ; sub_140286D90+A28↑j
                mov     eax, dword ptr [rbp+0AC0h+var_868]
                dec     eax
                cmp     dword ptr [rbp+0AC0h+var_868+4], eax
                jnz     loc_1402875C0
                mov     rdx, [rsp+0BC0h+var_B80]
                lea     rcx, [rbp+0AC0h+var_AD0]
                mov     r9, r15
                mov     r8, rsi
                call    sub_140354078
                mov     rdx, [rsp+0BC0h+var_B80]
                lea     rcx, [rbp+0AC0h+var_870]
                test    eax, eax
                mov     r9, r15
                mov     eax, 1
                mov     r8, rsi
                cmovnz  r12d, eax
                mov     dword ptr [rsp+0BC0h+var_BA0], eax
                mov     [rsp+0BC0h+var_B90], r12d
                call    sub_14028F360
                mov     ebx, 1
                jmp     loc_140287AD6
; ---------------------------------------------------------------------------

loc_140287824:                          ; CODE XREF: sub_140286D90+8BC↑j
                bt      rbx, 0Ah
                jnb     loc_14028792E
                mov     rax, cs:qword_140C4DDC0
                mov     r9, rbx
                test    rax, rax
                jz      short loc_14028784C
                test    bl, 10h
                jnz     short loc_14028784C
                mov     r9, rax
                not     r9
                and     r9, rbx

loc_14028784C:                          ; CODE XREF: sub_140286D90+AAC↑j
                                        ; sub_140286D90+AB1↑j
                mov     rcx, rbx
                sar     r9, 10h
                call    sub_14031C5E8
                test    al, al
                jz      short loc_14028786B
                mov     rcx, [rsp+0BC0h+var_B78]
                mov     rdx, r9
                call    sub_140366EF4
                jmp     short loc_140287894
; ---------------------------------------------------------------------------

loc_14028786B:                          ; CODE XREF: sub_140286D90+ACA↑j
                mov     rcx, rbx
                call    sub_14031C870
                test    eax, eax
                jnz     short loc_1402878A8
                mov     rcx, [rsp+0BC0h+var_B80]
                mov     rdx, r9
                call    sub_1402C6E74
                test    rax, rax
                jz      short loc_1402878A8
                mov     r8, rcx
                mov     rcx, rax
                call    sub_14055A088

loc_140287894:                          ; CODE XREF: sub_140286D90+AD9↑j
                cmp     eax, 3
                jnz     short loc_14028789F
                inc     qword ptr [r15+8]
                jmp     short loc_1402878A8
; ---------------------------------------------------------------------------

loc_14028789F:                          ; CODE XREF: sub_140286D90+B07↑j
                cmp     eax, 5
                jnz     short loc_1402878A8
                inc     qword ptr [r15+10h]

loc_1402878A8:                          ; CODE XREF: sub_140286D90+AE5↑j
                                        ; sub_140286D90+AF7↑j ...
                mov     rcx, r13
                mov     rbx, rsi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_140287922
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402878F3
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_1402878DC
                test    sil, 1
                jz      short loc_1402878DC
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_1402878DC:                          ; CODE XREF: sub_140286D90+B37↑j
                                        ; sub_140286D90+B3D↑j
                mov     rdx, rbx
                mov     [r13+0], rbx
                mov     rcx, r13
                call    sub_140349620
                test    rsi, rsi
                jmp     loc_140287AC1
; ---------------------------------------------------------------------------

loc_1402878F3:                          ; CODE XREF: sub_140286D90+B2E↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140287922
                test    sil, 1
                jz      short loc_140287922
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_140287922:                          ; CODE XREF: sub_140286D90+B25↑j
                                        ; sub_140286D90+B7D↑j ...
                mov     [r13+0], rbx
                test    rsi, rsi
                jmp     loc_140287AC1
; ---------------------------------------------------------------------------

loc_14028792E:                          ; CODE XREF: sub_140286D90+A99↑j
                bt      rbx, 0Bh
                jnb     loc_140287AEF
                cmp     [rsp+0BC0h+var_B88], 1
                jnz     loc_14028765A
                xor     edx, edx
                mov     [rbp+0AC0h+var_B10], r10
                mov     rcx, r13
                mov     rdi, r10
                call    sub_1402A886C
                mov     r10, rax
                test    rax, rax
                jz      loc_140287E8F
                xor     ebx, ebx
                lea     r15d, [rbx+1]
                cmp     [rax+20h], bx
                jnz     short loc_1402879B1
                mov     rdi, [rax+10h]
                mov     rcx, [rax+28h]
                mov     rbx, rdi
                mov     rax, cs:qword_140C4E4C8
                shr     rcx, 27h
                and     ecx, 3FFh
                mov     [rbp+0AC0h+var_B10], rdi
                mov     rcx, [rax+rcx*8]
                movzx   eax, dil
                shr     al, 1
                mov     [rbp+0AC0h+var_B38], rcx
                test    r15b, al
                jz      short loc_1402879B1
                lea     rdx, [rbp+0AC0h+var_B10]
                call    sub_140340134
                test    eax, eax
                jnz     short loc_1402879B1
                xor     r15d, r15d

loc_1402879B1:                          ; CODE XREF: sub_140286D90+BDC↑j
                                        ; sub_140286D90+C0F↑j ...
                xor     r9d, r9d
                mov     r8b, 11h
                mov     rdx, r10
                mov     rcx, r13
                call    sub_140296370
                cmp     eax, 3
                jnz     short loc_1402879D0
                mov     rax, [rsp+0BC0h+var_B68]
                inc     qword ptr [rax+8]

loc_1402879D0:                          ; CODE XREF: sub_140286D90+C35↑j
                test    rbx, rbx
                jz      short loc_1402879E4
                mov     rcx, [rbp+0AC0h+var_B38]
                mov     r8d, r15d
                mov     rdx, rdi
                call    sub_1402D9B64

loc_1402879E4:                          ; CODE XREF: sub_140286D90+C43↑j
                mov     rcx, [rsp+0BC0h+var_B80]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rcx+4F8h], rax
                mov     rdi, rsi
                test    r15d, r15d
                jnz     short loc_140287A46
                mov     rcx, [rbp+0AC0h+var_B38]
                mov     rax, rbx
                shr     rax, 0Ch
                and     eax, 0Fh
                mov     rdx, [rcx+rax*8+1B20h]
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_140287A2E
                test    bl, 10h
                jnz     short loc_140287A2E
                not     rax
                and     rbx, rax

loc_140287A2E:                          ; CODE XREF: sub_140286D90+C91↑j
                                        ; sub_140286D90+C96↑j
                shr     rbx, 20h
                mov     r9d, 2
                mov     r8d, ebx
                mov     rcx, r14
                call    sub_1402CB2D4
                mov     rdi, rax

loc_140287A46:                          ; CODE XREF: sub_140286D90+C6F↑j
                mov     rcx, r13
                mov     rbx, rdi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_140287ABA
                call    sub_140349680
                test    eax, eax
                jz      short loc_140287A8B
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_140287A7A
                test    dil, 1
                jz      short loc_140287A7A
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_140287A7A:                          ; CODE XREF: sub_140286D90+CD5↑j
                                        ; sub_140286D90+CDB↑j
                mov     rdx, rbx
                mov     [r13+0], rbx
                mov     rcx, r13
                call    sub_140349620
                jmp     short loc_140287ABE
; ---------------------------------------------------------------------------

loc_140287A8B:                          ; CODE XREF: sub_140286D90+CCC↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140287ABA
                test    dil, 1
                jz      short loc_140287ABA
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_140287ABA:                          ; CODE XREF: sub_140286D90+CC3↑j
                                        ; sub_140286D90+D15↑j ...
                mov     [r13+0], rbx

loc_140287ABE:                          ; CODE XREF: sub_140286D90+CF9↑j
                test    rdi, rdi

loc_140287AC1:                          ; CODE XREF: sub_140286D90+B5E↑j
                                        ; sub_140286D90+B99↑j
                mov     ebx, 1
                jnz     loc_140287D42
                mov     edx, ebx
                mov     rcx, r13
                call    sub_1403F3EF0

loc_140287AD6:                          ; CODE XREF: sub_140286D90+8ED↑j
                                        ; sub_140286D90+A8F↑j
                test    eax, eax
                mov     rax, [rsp+0BC0h+var_B88]
                jz      loc_1402875CA
                mov     r12d, ebx
                mov     [rsp+0BC0h+var_B90], ebx
                jmp     loc_1402875CA
; ---------------------------------------------------------------------------

loc_140287AEF:                          ; CODE XREF: sub_140286D90+BA3↑j
                mov     rax, rbx
                shr     rax, 5
                and     al, 1Fh
                cmp     al, 10h
                jnz     short loc_140287B0A
                mov     rax, [rsp+0BC0h+var_B88]
                add     [r15+18h], rax
                jmp     loc_1402875C5
; ---------------------------------------------------------------------------

loc_140287B0A:                          ; CODE XREF: sub_140286D90+D6A↑j
                mov     rcx, cs:qword_140C4DDC0
                mov     rax, rbx
                test    rcx, rcx
                jz      short loc_140287B27
                test    bl, 10h
                jnz     short loc_140287B27
                mov     rax, rcx
                not     rax
                and     rax, rbx

loc_140287B27:                          ; CODE XREF: sub_140286D90+D87↑j
                                        ; sub_140286D90+D8C↑j
                bt      rax, 0Ah
                jb      short loc_140287B39
                bt      rax, 0Bh
                jb      short loc_140287B39
                test    al, 4
                jz      short loc_140287B4E

loc_140287B39:                          ; CODE XREF: sub_140286D90+D9C↑j
                                        ; sub_140286D90+DA3↑j
                mov     rcx, [rsp+0BC0h+var_B80]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rcx+4F8h], rax

loc_140287B4E:                          ; CODE XREF: sub_140286D90+DA7↑j
                mov     rax, [rsp+0BC0h+var_B78]
                mov     r15, rbx
                mov     r12d, 1
                shr     r15, 1
                mov     rdi, rsi
                movzx   ecx, word ptr [rax+0AEh]
                mov     rax, cs:qword_140C4E4C8
                mov     r9, [rax+rcx*8]
                mov     [rbp+0AC0h+var_B38], r9
                and     r15d, r12d
                jz      loc_140287C33
                lea     rdx, [rbp+0AC0h+var_AE8]
                mov     rcx, r9
                call    sub_140340134
                test    eax, eax
                jnz     loc_140287C33
                mov     rax, rbx
                mov     r12d, r10d
                shr     rax, 0Ch
                mov     r10, rbx
                and     eax, 0Fh
                mov     r11, [r9+rax*8+1B20h]
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_140287BC7
                test    bl, 10h
                jnz     short loc_140287BC7
                mov     r10, rax
                not     r10
                and     r10, rbx

loc_140287BC7:                          ; CODE XREF: sub_140286D90+E27↑j
                                        ; sub_140286D90+E2C↑j
                xor     edx, edx
                shr     r10, 20h
                lea     rcx, [rbp+0AC0h+var_B40]
                mov     [rbp+0AC0h+var_B40], r14
                call    sub_1402C75A0
                mov     rdi, [rbp+0AC0h+var_B40]
                bt      r14, 0Ah
                jb      short loc_140287BED
                and     rdi, 0FFFFFFFFFFFFFFF9h
                mov     [rbp+0AC0h+var_B40], rdi

loc_140287BED:                          ; CODE XREF: sub_140286D90+E53↑j
                test    r11, r11
                jz      short loc_140287C33
                movzx   r8d, word ptr [r11+0CCh]
                test    rdi, rdi
                jnz     short loc_140287C0D
                shl     r10, 20h
                mov     rcx, r10
                call    sub_14027C6C0
                jmp     short loc_140287C18
; ---------------------------------------------------------------------------

loc_140287C0D:                          ; CODE XREF: sub_140286D90+E6D↑j
                mov     rdx, r10
                mov     rcx, rdi
                call    sub_1402C98B0

loc_140287C18:                          ; CODE XREF: sub_140286D90+E7B↑j
                mov     rdi, r8
                shl     rdi, 0Ch
                xor     rdi, rax
                and     edi, 0F000h
                xor     rdi, rax
                or      rdi, 2
                mov     [rbp+0AC0h+var_B40], rdi

loc_140287C33:                          ; CODE XREF: sub_140286D90+DEB↑j
                                        ; sub_140286D90+DFF↑j ...
                mov     rdx, rdi
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     r13, rax
                jb      short loc_140287CBC
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r13, rax
                ja      short loc_140287CBC
                call    sub_140349680
                test    eax, eax
                jz      short loc_140287C8D
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_140287C7F
                test    dil, 1
                jz      short loc_140287C7F
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_140287C7F:                          ; CODE XREF: sub_140286D90+EDA↑j
                                        ; sub_140286D90+EE0↑j
                mov     rcx, r13
                mov     [r13+0], rdx
                call    sub_140349620
                jmp     short loc_140287CC0
; ---------------------------------------------------------------------------

loc_140287C8D:                          ; CODE XREF: sub_140286D90+ED1↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140287CBC
                test    dil, 1
                jz      short loc_140287CBC
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_140287CBC:                          ; CODE XREF: sub_140286D90+EB6↑j
                                        ; sub_140286D90+EC8↑j ...
                mov     [r13+0], rdx

loc_140287CC0:                          ; CODE XREF: sub_140286D90+EFB↑j
                mov     [rbp+0AC0h+var_B08], rbx
                shr     bl, 2
                test    bl, 1
                jz      short loc_140287CE0
                lea     rcx, [rbp+0AC0h+var_B08]
                call    sub_1402805F0
                test    r12d, r12d
                jnz     short loc_140287CF7
                and     rax, 0FFFFFFFFFFFFFFFDh
                jmp     short loc_140287CF7
; ---------------------------------------------------------------------------

loc_140287CE0:                          ; CODE XREF: sub_140286D90+F3A↑j
                test    r12d, r12d
                jz      short loc_140287CF5
                test    r15d, r15d
                jz      short loc_140287CF5
                lea     rcx, [rbp+0AC0h+var_B08]
                call    sub_1402805F0
                jmp     short loc_140287CF7
; ---------------------------------------------------------------------------

loc_140287CF5:                          ; CODE XREF: sub_140286D90+F53↑j
                                        ; sub_140286D90+F58↑j
                xor     eax, eax

loc_140287CF7:                          ; CODE XREF: sub_140286D90+F48↑j
                                        ; sub_140286D90+F4E↑j ...
                mov     [rbp+0AC0h+var_B08], rax
                test    rax, rax
                jz      short loc_140287D0F
                mov     rcx, [rbp+0AC0h+var_B38]
                xor     r8d, r8d
                mov     rdx, rax
                call    sub_14020B2C0

loc_140287D0F:                          ; CODE XREF: sub_140286D90+F6E↑j
                mov     ebx, 1
                test    rdi, rdi
                jnz     short loc_140287D3D
                mov     edx, ebx
                mov     rcx, r13
                call    sub_1403F3EF0
                mov     r12d, [rsp+0BC0h+var_B90]
                test    eax, eax
                mov     rax, [rsp+0BC0h+var_B88]
                cmovnz  r12d, ebx
                mov     [rsp+0BC0h+var_B90], r12d
                jmp     loc_1402875CA
; ---------------------------------------------------------------------------

loc_140287D3D:                          ; CODE XREF: sub_140286D90+F87↑j
                mov     r12d, [rsp+0BC0h+var_B90]

loc_140287D42:                          ; CODE XREF: sub_140286D90+D36↑j
                mov     rax, [rsp+0BC0h+var_B88]
                jmp     loc_1402875CA
; ---------------------------------------------------------------------------

loc_140287D4C:                          ; CODE XREF: sub_140286D90+893↑j
                xor     edx, edx
                test    r8b, 1Eh
                jz      short loc_140287D59
                lea     ebx, [rdx+2]
                jmp     short loc_140287DC1
; ---------------------------------------------------------------------------

loc_140287D59:                          ; CODE XREF: sub_140286D90+FC2↑j
                movzx   eax, byte ptr [rcx+3129h]
                test    al, al
                jz      short loc_140287D6B
                mov     ebx, 3
                jmp     short loc_140287DC1
; ---------------------------------------------------------------------------

loc_140287D6B:                          ; CODE XREF: sub_140286D90+FD2↑j
                mov     rax, [rcx+10h]
                test    rax, rax
                jz      short loc_140287D81
                cmp     rax, [rcx+8]
                jz      short loc_140287D81
                mov     ebx, 4
                jmp     short loc_140287DC1
; ---------------------------------------------------------------------------

loc_140287D81:                          ; CODE XREF: sub_140286D90+89F↑j
                                        ; sub_140286D90+FE2↑j ...
                cmp     edi, 7
                jbe     loc_140287E81
                test    edx, edx
                jz      short loc_140287DAC

loc_140287D8E:                          ; CODE XREF: sub_140286D90+8AE↑j
                test    r8b, 1Eh
                jz      short loc_140287D9B
                mov     ebx, 5
                jmp     short loc_140287DC1
; ---------------------------------------------------------------------------

loc_140287D9B:                          ; CODE XREF: sub_140286D90+1002↑j
                mov     rax, [rcx+18h]
                cmp     [rcx+8], rax
                jz      short loc_140287DAC
                mov     ebx, 6
                jmp     short loc_140287DC1
; ---------------------------------------------------------------------------

loc_140287DAC:                          ; CODE XREF: sub_140286D90+FFC↑j
                                        ; sub_140286D90+1013↑j
                cli
                xor     ebx, ebx
                mov     [rcx+7BECh], ebx
                mov     [rcx+7E9Ch], ebx
                call    sub_140326178
                sti

loc_140287DC1:                          ; CODE XREF: sub_140286D90+8B4↑j
                                        ; sub_140286D90+FC7↑j ...
                test    dword ptr cs:xmmword_140CFC480+4, 4000000h
                jz      short loc_140287DD9
                mov     r8d, r15d
                mov     edx, edi
                mov     ecx, ebx
                call    sub_1405A83BC

loc_140287DD9:                          ; CODE XREF: sub_140286D90+103B↑j
                test    ebx, ebx
                jz      loc_140287E81
                mov     r15, [rsp+0BC0h+var_B78]

loc_140287DE6:                          ; CODE XREF: sub_140286D90+86C↑j
                mov     rdi, [rsp+0BC0h+var_B68]
                lea     rcx, [rbp+0AC0h+var_AD0]
                mov     rbx, [rsp+0BC0h+var_B80]
                mov     r9, rdi
                mov     rdx, rbx
                mov     r8, rsi
                call    sub_140354078
                test    eax, eax
                mov     eax, 1
                cmovnz  r12d, eax
                cmp     dword ptr [rbp+0AC0h+var_868+4], 0
                mov     [rsp+0BC0h+var_B90], r12d
                jz      short loc_140287E46
                mov     r9, rdi
                mov     dword ptr [rsp+0BC0h+var_BA0], eax
                mov     r8, rsi
                lea     rcx, [rbp+0AC0h+var_870]
                mov     rdx, rbx
                call    sub_14028F360
                test    eax, eax
                mov     edi, 1
                cmovnz  r12d, edi
                mov     [rsp+0BC0h+var_B90], r12d
                jmp     short loc_140287E4B
; ---------------------------------------------------------------------------

loc_140287E46:                          ; CODE XREF: sub_140286D90+1089↑j
                mov     edi, 1

loc_140287E4B:                          ; CODE XREF: sub_140286D90+10B4↑j
                mov     rbx, [rsp+0BC0h+var_B50]
                test    rbx, rbx
                jz      short loc_140287E69
                mov     rdx, rbx
                mov     rcx, r15
                call    sub_140312B40
                mov     [rsp+0BC0h+var_B50], 0

loc_140287E69:                          ; CODE XREF: sub_140286D90+10C3↑j
                movzx   edx, byte ptr [rbp+0AC0h+var_B30]
                mov     rcx, r15
                call    sub_140226960
                mov     rcx, r15
                mov     [rsp+0BC0h+var_B70], edi
                call    sub_140231340

loc_140287E81:                          ; CODE XREF: sub_140286D90+FF4↑j
                                        ; sub_140286D90+104B↑j
                mov     rax, [rsp+0BC0h+var_B88]
                shl     rax, 0Ch
                add     [rsp+0BC0h+var_B58], rax

loc_140287E8F:                          ; CODE XREF: sub_140286D90+BCC↑j
                mov     r15, [rsp+0BC0h+var_B68]
                cmp     r13, [rbp+0AC0h+var_B28]
                ja      short loc_140287EC7
                mov     r10d, [rsp+0BC0h+var_B70]
                mov     r11d, 1
                mov     rbx, [rsp+0BC0h+var_B78]
                jmp     loc_140287070
; ---------------------------------------------------------------------------

loc_140287EAF:                          ; CODE XREF: sub_140286D90+5D8↑j
                mov     rax, [rbp+0AC0h+var_B28]
                mov     r15, rdi
                sub     rax, r13
                sar     rax, 3
                inc     rax
                add     rax, rdx
                mov     [rdi+18h], rax

loc_140287EC7:                          ; CODE XREF: sub_140286D90+1108↑j
                mov     rdi, [rsp+0BC0h+var_B50]

loc_140287ECC:                          ; CODE XREF: sub_140286D90+2D7↑j
                mov     rdx, qword ptr [rbp+0AC0h+var_AD0+8]
                xorps   xmm0, xmm0
                xor     eax, eax
                mov     [rbp+0AC0h+var_9EA], ax
                mov     [rbp+0AC0h+var_940], rax
                movups  [rbp+0AC0h+var_9D0], xmm0
                lea     r14d, [rax+1]
                movups  [rbp+0AC0h+var_9C0], xmm0
                movups  [rbp+0AC0h+var_9B0], xmm0
                movups  [rbp+0AC0h+var_9A0], xmm0
                movups  [rbp+0AC0h+var_990], xmm0
                movups  [rbp+0AC0h+var_980], xmm0
                movups  [rbp+0AC0h+var_970], xmm0
                movups  [rbp+0AC0h+var_960], xmm0
                movups  [rbp+0AC0h+var_950], xmm0
                test    rdx, rdx
                jz      loc_140287FB6
                xor     ebx, ebx
                mov     [rbp+0AC0h+var_9EC], ax
                mov     [rbp+0AC0h+var_9E0], rbx
                mov     [rbp+0AC0h+var_9D8], rbx
                mov     [rbp+0AC0h+var_9E8], 14h
                mov     [rbp+0AC0h+var_9F0], r14d
                shl     rdx, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                mov     r8, qword ptr [rbp+0AC0h+var_AC0]
                lea     rcx, [rbp+0AC0h+var_9F0]
                shl     rax, 19h
                xor     r9d, r9d
                sub     rdx, rax
                sar     rdx, 10h
                call    sub_1402882E0
                lea     rcx, [rbp+0AC0h+var_AD0]
                call    sub_14028E340
                mov     dword ptr [rsp+0BC0h+var_BA0], ebx
                lea     rcx, [rbp+0AC0h+var_9F0]
                mov     rbx, [rsp+0BC0h+var_B80]
                mov     r9, r15
                mov     rdx, rbx
                mov     r8, rsi
                call    sub_14028F360
                test    eax, eax
                cmovnz  r12d, r14d
                jmp     short loc_140287FBB
; ---------------------------------------------------------------------------

loc_140287FB6:                          ; CODE XREF: sub_140286D90+1199↑j
                mov     rbx, [rsp+0BC0h+var_B80]

loc_140287FBB:                          ; CODE XREF: sub_140286D90+1224↑j
                cmp     dword ptr [rbp+0AC0h+var_868+4], 0
                jz      short loc_140287FE4
                mov     r9, r15
                mov     dword ptr [rsp+0BC0h+var_BA0], r14d
                mov     r8, rsi
                lea     rcx, [rbp+0AC0h+var_870]
                mov     rdx, rbx
                call    sub_14028F360
                test    eax, eax
                cmovnz  r12d, r14d

loc_140287FE4:                          ; CODE XREF: sub_140286D90+1232↑j
                test    rdi, rdi
                jz      short loc_140287FF6
                mov     rcx, [rsp+0BC0h+var_B78]
                mov     rdx, rdi
                call    sub_140312B40

loc_140287FF6:                          ; CODE XREF: sub_140286D90+1257↑j
                movzx   edx, byte ptr [rbp+0AC0h+var_B30]
                mov     rcx, [rsp+0BC0h+var_B78]
                call    sub_140226960
                mov     eax, r12d
                mov     rcx, [rbp+0AC0h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0B88h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140286D90
sub_140286D90   endp

algn_14028802B:                         ; DATA XREF: .pdata:00000001400CEB5C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140288040   proc near               ; CODE XREF: sub_140286D90+9A1↑p
                                        ; sub_14029E340+2C9↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     r14, r8
                mov     rbx, rcx
                shl     r8, 19h
                mov     rbp, rdx
                mov     rcx, 0FFFFF68000000000h
                mov     rax, rcx
                shl     rax, 19h
                sub     r8, rax
                mov     rax, 0FFFFFFFFF000h
                sar     r8, 10h
                and     r8, rax
                shr     r8, 9
                mov     rax, rcx
                add     r8, rax
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rdx, [r8]
                mov     rax, r10
                mov     r9, 0FFFFF6FB7DBED7F8h
                cmp     r8, rax
                jb      short loc_140288114
                mov     rax, r9
                cmp     r8, rax
                ja      short loc_140288114
                call    sub_140349680
                test    eax, eax
                jz      short loc_140288114
                test    dl, 1
                jz      short loc_140288114
                test    dl, 20h
                jz      short loc_1402880CD
                test    dl, 42h
                jnz     short loc_140288114

loc_1402880CD:                          ; CODE XREF: sub_140288040+86↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_140288114
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140288114
                or      rdx, 42h

loc_140288114:                          ; CODE XREF: sub_140288040+6B↑j
                                        ; sub_140288040+73↑j ...
                mov     rdi, rdx
                shr     rdx, 38h
                shr     rdi, 3Ch
                and     dl, 0Fh
                and     dil, 7
                shl     dil, 4
                or      dil, dl
                mov     rdx, [r14]
                mov     rax, r10
                cmp     r14, rax
                jb      short loc_1402881A0
                mov     rax, r9
                cmp     r14, rax
                ja      short loc_1402881A0
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402881A0
                test    dl, 1
                jz      short loc_1402881A0
                test    dl, 20h
                jz      short loc_140288158
                test    dl, 42h
                jnz     short loc_1402881A0

loc_140288158:                          ; CODE XREF: sub_140288040+111↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_1402881A0
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_1402881A0
                or      rdx, 42h

loc_1402881A0:                          ; CODE XREF: sub_140288040+F6↑j
                                        ; sub_140288040+FE↑j ...
                mov     [rsp+38h+arg_0], rdx
                mov     rax, r10
                lea     rcx, [rsp+38h+arg_0]
                cmp     rcx, rax
                jb      short loc_140288221
                mov     rax, r9
                lea     rcx, [rsp+38h+arg_0]
                cmp     rcx, rax
                ja      short loc_140288221
                call    sub_140349680
                test    eax, eax
                jz      short loc_140288221
                test    dl, 1
                jz      short loc_140288221
                test    dl, 20h
                jz      short loc_1402881D7
                test    dl, 42h
                jnz     short loc_140288221

loc_1402881D7:                          ; CODE XREF: sub_140288040+190↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_140288221
                lea     rax, [rsp+38h+arg_0]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_140288221
                or      rdx, 42h

loc_140288221:                          ; CODE XREF: sub_140288040+170↑j
                                        ; sub_140288040+17D↑j ...
                shr     rdx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                lea     rcx, [rdx+rdx*2]
                shl     rcx, 4
                mov     rax, 0FFFFFA8000000000h
                add     rcx, rax
                call    sub_1403F41D8
                xor     esi, esi
                test    eax, eax
                mov     rax, [rbx+8]
                setz    sil
                test    rax, rax
                jz      short loc_140288297
                mov     rcx, [rbx+10h]
                lea     rax, [rax+rcx*8]
                cmp     r14, rax
                jnz     short loc_140288284
                cmp     dil, [rbx+1Ch]
                jnz     short loc_140288284
                mov     eax, [rbx+18h]
                and     eax, 1
                cmp     esi, eax
                jnz     short loc_140288284
                lea     rax, [rcx+1]
                mov     [rbx+10h], rax
                jmp     short loc_1402882B5
; ---------------------------------------------------------------------------

loc_140288284:                          ; CODE XREF: sub_140288040+228↑j
                                        ; sub_140288040+22E↑j ...
                mov     eax, [rbx+18h]
                test    al, 2
                jz      short loc_14028828F
                xor     eax, eax
                jmp     short loc_1402882BA
; ---------------------------------------------------------------------------

loc_14028828F:                          ; CODE XREF: sub_140288040+249↑j
                mov     rcx, rbx
                call    sub_14028E340

loc_140288297:                          ; CODE XREF: sub_140288040+21B↑j
                mov     eax, [rbx+18h]
                and     eax, 0FFFFFFFEh
                mov     [rbx], rbp
                or      eax, esi
                mov     [rbx+8], r14
                mov     [rbx+18h], eax
                mov     qword ptr [rbx+10h], 1
                mov     [rbx+1Ch], dil

loc_1402882B5:                          ; CODE XREF: sub_140288040+242↑j
                mov     eax, 1

loc_1402882BA:                          ; CODE XREF: sub_140288040+24D↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140288040   endp

algn_1402882CE:                         ; DATA XREF: .pdata:00000001400CEB68↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402882E0   proc near               ; CODE XREF: sub_140209860+3DC↑p
                                        ; sub_14025BAF0+183↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140444AD4 SIZE 0000000D BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 20h
                mov     rbx, rcx
                mov     edi, 1000h
                lea     ecx, [r9+r9*8]
                mov     rsi, r8
                shl     rdi, cl
                mov     r14, rdx
                cmp     dword ptr [rbx], 1
                jnz     loc_1402884C3

loc_140288313:                          ; CODE XREF: sub_1402882E0+1E9↓j
                                        ; sub_1402882E0+1FC↓j ...
                mov     r8d, [rbx+0Ch]
                mov     r10d, 1
                test    r8d, r8d
                jz      short loc_140288378
                test    byte ptr [rbx+4], 4
                jnz     short loc_140288378
                lea     eax, [r8-1]
                mov     ecx, r9d
                mov     rax, [rbx+rax*8+18h]
                mov     rdx, rax
                shr     rdx, 0Ah
                and     edx, 3
                cmp     rdx, rcx
                jnz     short loc_140288382
                mov     rdx, rax
                and     rax, 0FFFFFFFFFFFFF000h
                and     edx, 3FFh
                lea     rcx, [rdx+1]
                imul    rcx, rdi
                add     rcx, rax
                cmp     rcx, r14
                jnz     short loc_140288382
                lea     rax, [rdx+rsi]
                cmp     rax, 3FFh
                ja      short loc_140288382
                cmp     rax, rdx
                jbe     short loc_140288382
                mov     eax, r10d
                jmp     short loc_14028837A
; ---------------------------------------------------------------------------

loc_140288378:                          ; CODE XREF: sub_1402882E0+40↑j
                                        ; sub_1402882E0+46↑j
                xor     eax, eax

loc_14028837A:                          ; CODE XREF: sub_1402882E0+96↑j
                test    eax, eax
                jnz     loc_140288431

loc_140288382:                          ; CODE XREF: sub_1402882E0+61↑j
                                        ; sub_1402882E0+80↑j ...
                test    r8d, r8d
                jnz     loc_140288458

loc_14028838B:                          ; CODE XREF: sub_1402882E0+17C↓j
                xor     r10d, r10d
                mov     r11, rsi
                imul    r11, rdi

loc_140288395:                          ; CODE XREF: sub_1402882E0+1D8↓j
                test    r10d, r10d
                jnz     loc_140288544

loc_14028839E:                          ; CODE XREF: sub_1402882E0+19B↓j
                                        ; sub_1402882E0+1B9↓j ...
                cmp     r8d, [rbx+8]
                jnb     loc_140288571
                test    rsi, rsi
                jz      short loc_14028841A

loc_1402883AD:                          ; DATA XREF: .rdata:000000014005EC58↑o
                                        ; .rdata:000000014005EC6C↑o ...
                mov     [rsp+28h+arg_0], rbp
                mov     ebp, r9d
                and     ebp, 3
                shl     rbp, 0Ah

loc_1402883BC:                          ; CODE XREF: sub_1402882E0+133↓j
                lea     rax, [rsi-1]
                mov     rcx, r14
                cmp     rax, 3FFh
                mov     edx, 400h
                cmovbe  rdx, rsi
                and     rcx, 0FFFFFFFFFFFFF000h
                sub     rsi, rdx
                lea     rax, [rdx-1]
                and     eax, 3FFh
                or      rax, rcx
                mov     rcx, rdi
                imul    rcx, rdx
                or      rax, rbp
                add     r14, rcx
                mov     ecx, [rbx+0Ch]
                mov     [rbx+rcx*8+18h], rax
                inc     dword ptr [rbx+0Ch]
                mov     ecx, [rbx+0Ch]
                add     [rbx+10h], rdx
                cmp     ecx, [rbx+8]
                jz      loc_1402884FF

loc_140288410:                          ; CODE XREF: sub_1402882E0+223↓j
                                        ; sub_1402882E0+250↓j
                test    rsi, rsi
                jnz     short loc_1402883BC

loc_140288415:                          ; CODE XREF: sub_1402882E0+259↓j
                                        ; sub_1402882E0+1BC7FC↓j
                mov     rbp, [rsp+28h+arg_0]

loc_14028841A:                          ; CODE XREF: sub_1402882E0+CB↑j
                                        ; sub_1402882E0+176↓j ...
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140288431:                          ; CODE XREF: sub_1402882E0+9C↑j
                lea     eax, [r8-1]
                lea     rdx, [rbx+rax*8]
                mov     rax, [rbx+rax*8+18h]
                add     [rbx+10h], rsi
                lea     rcx, [rax+rsi]
                xor     rcx, rax
                and     ecx, 3FFh
                xor     rcx, rax
                mov     [rdx+18h], rcx
                jmp     short loc_14028841A
; ---------------------------------------------------------------------------

loc_140288458:                          ; CODE XREF: sub_1402882E0+A5↑j
                test    byte ptr [rbx+4], 4
                jnz     loc_14028838B
                lea     eax, [r8-1]
                mov     ecx, r9d
                mov     rax, [rbx+rax*8+18h]
                mov     rdx, rax
                shr     rdx, 0Ah
                and     edx, 3
                cmp     rdx, rcx
                jnz     loc_14028839E
                mov     r11, rdi
                mov     rcx, rax
                imul    r11, rsi
                and     rcx, 0FFFFFFFFFFFFF000h
                lea     rdx, [r11+r14]
                cmp     rcx, rdx
                jnz     loc_14028839E
                and     eax, 3FFh
                lea     rcx, [rax+rsi]
                cmp     rcx, rax
                jbe     loc_14028839E
                cmp     rcx, 3FFh
                jbe     loc_140288395
                jmp     loc_14028839E
; ---------------------------------------------------------------------------

loc_1402884C3:                          ; CODE XREF: sub_1402882E0+2D↑j
                movzx   eax, byte ptr [rbx+4]
                test    al, 8
                jnz     loc_140288313
                mov     rcx, 0FFFFF68000000000h
                cmp     r14, rcx
                jb      loc_140288313
                mov     rcx, 0FFFFF6FFFFFFFFFFh
                cmp     r14, rcx
                ja      loc_140288313
                or      al, 8
                mov     [rbx+4], al
                jmp     loc_140288313
; ---------------------------------------------------------------------------

loc_1402884FF:                          ; CODE XREF: sub_1402882E0+12A↑j
                                        ; DATA XREF: .pdata:00000001400CEB8C↑o ...
                test    byte ptr [rbx+4], 4
                jnz     loc_140288410
                mov     rdx, rcx
                lea     r9, sub_14033B080
                lea     rcx, [rbx+18h]
                mov     r8d, 8
                call    qsort
                mov     rcx, rbx
                call    sub_14033A660
                mov     eax, [rbx+0Ch]
                cmp     eax, [rbx+8]
                jnz     loc_140288410
                test    rsi, rsi
                jz      loc_140288415
                jmp     loc_140444AD4
; ---------------------------------------------------------------------------

loc_140288544:                          ; CODE XREF: sub_1402882E0+B8↑j
                                        ; DATA XREF: .pdata:00000001400CEB98↑o ...
                lea     eax, [r8-1]
                lea     rdx, [rbx+rax*8]
                mov     rax, [rbx+rax*8+18h]
                add     [rbx+10h], rsi
                sub     rax, r11
                lea     rcx, [rax+rsi]
                xor     rcx, rax
                and     ecx, 3FFh
                xor     rcx, rax
                mov     [rdx+18h], rcx
                jmp     loc_14028841A
; ---------------------------------------------------------------------------

loc_140288571:                          ; CODE XREF: sub_1402882E0+C2↑j
                mov     byte ptr [rbx+5], 1
                jmp     loc_14028841A
sub_1402882E0   endp

; ---------------------------------------------------------------------------
algn_14028857A:                         ; DATA XREF: .pdata:00000001400CEBA4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140288580   proc near               ; CODE XREF: sub_1402583E0+2EC↑p
                                        ; sub_14029A350+60↓p
                                        ; DATA XREF: ...

var_118         = qword ptr -118h
var_108         = dword ptr -108h
var_104         = word ptr -104h
var_102         = word ptr -102h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = byte ptr -0E8h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140444AE2 SIZE 0000012C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_48], rax
                mov     ebx, r8d
                mov     r14, rdx
                mov     rsi, rcx
                xor     eax, eax
                xor     edx, edx
                mov     [rsp+138h+var_102], ax
                mov     r8d, 98h
                lea     rcx, [rsp+138h+var_E8]
                mov     r13d, r9d
                call    memset
                xor     eax, eax
                mov     [rsp+138h+var_100], 14h
                mov     [rsp+138h+var_108], ebx
                mov     r12d, eax
                mov     [rsp+138h+var_104], ax
                mov     r15d, eax
                mov     [rsp+138h+var_F8], rax
                mov     ebp, eax
                mov     [rsp+138h+var_F0], rax
                test    r14, r14
                jz      loc_140288692

loc_1402885FD:                          ; CODE XREF: sub_140288580+10C↓j
                mov     rbx, [rsi]
                mov     rcx, 0FFFFF6FB7DBED7F8h
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     rsi, rax
                jnb     loc_1402886C8

loc_140288620:                          ; CODE XREF: sub_140288580+14E↓j
                                        ; sub_140288580+1BC56C↓j ...
                test    rbx, 0C01h
                setz    cl
                test    rbx, 3E0h
                setz    al
                test    al, cl
                jnz     short loc_140288643
                test    r13d, r13d
                jz      loc_140444BF0
                jmp     short loc_140288682
; ---------------------------------------------------------------------------

loc_140288643:                          ; CODE XREF: sub_140288580+B6↑j
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14028865A
                test    bl, 10h
                jnz     short loc_14028865A
                not     rax
                and     rbx, rax

loc_14028865A:                          ; CODE XREF: sub_140288580+CD↑j
                                        ; sub_140288580+D2↑j
                mov     rdi, cs:qword_14001D278
                mov     rcx, rsi
                shr     rbx, 20h
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140444B7B

loc_140288675:                          ; CODE XREF: sub_140288580+1BC64E↓j
                                        ; sub_140288580+1BC658↓j ...
                mov     [rsi], rdi

loc_140288678:                          ; CODE XREF: sub_140288580+1BC62F↓j
                test    ebx, ebx
                jnz     short loc_1402886D9
                xor     r15d, r15d
                xor     r12d, r12d

loc_140288682:                          ; CODE XREF: sub_140288580+C1↑j
                                        ; sub_140288580+162↓j ...
                inc     rbp
                add     rsi, 8
                cmp     rbp, r14
                jb      loc_1402885FD

loc_140288692:                          ; CODE XREF: sub_140288580+77↑j
                lea     rcx, [rsp+138h+var_108]
                call    sub_14028EDB0
                mov     rcx, [rsp+138h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+138h+arg_10]
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402886C8:                          ; CODE XREF: sub_140288580+9A↑j
                mov     rax, rcx
                cmp     rsi, rax
                ja      loc_140288620
                jmp     loc_140444AE2
; ---------------------------------------------------------------------------

loc_1402886D9:                          ; CODE XREF: sub_140288580+FA↑j
                cmp     ebx, r12d
                jnz     short loc_140288718
                cmp     r15d, 1
                jnz     short loc_140288682
                mov     rdx, rsi
                mov     rax, 0FFFFF68000000000h
                shl     rdx, 19h
                mov     rax, rax
                shl     rax, 19h
                lea     rcx, [rsp+138h+var_108]
                sub     rdx, rax
                xor     r9d, r9d
                sar     rdx, 10h
                mov     r8d, r15d
                call    sub_1402882E0
                jmp     loc_140288682
; ---------------------------------------------------------------------------

loc_140288718:                          ; CODE XREF: sub_140288580+15C↑j
                mov     edx, 0FFFFFFFFh
                mov     ecx, ebx
                call    sub_14031FAEC
                test    al, al
                jnz     short loc_140288733
                xor     r15d, r15d
                mov     r12d, ebx
                jmp     loc_140288682
; ---------------------------------------------------------------------------

loc_140288733:                          ; CODE XREF: sub_140288580+1A6↑j
                mov     rdx, rsi
                mov     rax, 0FFFFF68000000000h
                shl     rdx, 19h
                mov     rax, rax
                xor     r9d, r9d
                shl     rax, 19h
                sub     rdx, rax
                lea     rcx, [rsp+138h+var_108]
                sar     rdx, 10h
                lea     r8d, [r9+1]
                call    sub_1402882E0
                mov     r15d, 1
                mov     r12d, ebx
                jmp     loc_140288682
; } // starts at 140288580
sub_140288580   endp

; ---------------------------------------------------------------------------
algn_140288771:                         ; DATA XREF: .rdata:000000014005ECDC↑o
                                        ; .pdata:00000001400CEBB0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140288780   proc near               ; CODE XREF: sub_1402889E0+397↓p
                                        ; CcSetDirtyPinnedData+436↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140444C0E SIZE 0000007F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 30h
                mov     esi, r9d
                mov     rbp, r8
                mov     r14, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14028887D
                cmp     qword ptr [rcx+0A8h], 0
                mov     rdi, [rcx+210h]
                jz      short loc_1402887DB
                mov     rcx, [rcx+60h]
                and     rcx, 0FFFFFFFFFFFFFFF0h
                mov     rcx, [rcx+28h]
                call    sub_140285080
                cmp     rdi, [rax+8]
                jnz     loc_140444C0E

loc_1402887DB:                          ; CODE XREF: sub_140288780+3E↑j
                                        ; sub_140288780+108↓j
                mov     rdx, rsi
                add     [rdi+280h], rdx
                test    r14, r14
                jz      short loc_1402887EE
                add     [r14+8], esi

loc_1402887EE:                          ; CODE XREF: sub_140288780+68↑j
                test    rbp, rbp
                jz      short loc_1402887F6
                add     [rbp+20h], esi

loc_1402887F6:                          ; CODE XREF: sub_140288780+71↑j
                test    rbx, rbx
                jz      short loc_14028881A
                add     [rbx+70h], esi
                mov     rax, rdx
                mov     rcx, [rbx+1F8h]
                lock xadd [rcx+20h], rax
                test    dword ptr [rbx+98h], 1000000h
                jnz     short loc_14028885A

loc_14028881A:                          ; CODE XREF: sub_140288780+79↑j
                                        ; sub_140288780+F6↓j ...
                cmp     byte ptr [rdi+3C4h], 0
                jnz     loc_140444C50

loc_140288827:                          ; CODE XREF: sub_140288780+1BC4DB↓j
                                        ; sub_140288780+1BC4EF↓j
                cmp     byte ptr [rdi+8Ch], 0
                jnz     loc_140444C74

loc_140288834:                          ; CODE XREF: sub_140288780+1BC508↓j
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1402888A0
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14028885A:                          ; CODE XREF: sub_140288780+98↑j
                mov     rax, [rbx+0F0h]
                lock xadd [rax+18h], rdx
                mov     rax, [rbx+0F0h]
                cmp     qword ptr [rax+88h], 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14028881A
                jmp     loc_140444C30
; ---------------------------------------------------------------------------

loc_14028887D:                          ; CODE XREF: sub_140288780+29↑j
                mov     rax, cs:qword_140CFC760
                mov     rdi, [rax+8]
                jmp     loc_1402887DB
sub_140288780   endp

; ---------------------------------------------------------------------------
algn_14028888D:                         ; DATA XREF: .rdata:000000014005ED08↑o
                                        ; .pdata:00000001400CEBBC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402888A0   proc near               ; CODE XREF: sub_140288780+B9↑p
                                        ; sub_1403B9320+13E↓p ...

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140444C8E SIZE 00000077 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                xor     eax, eax
                xor     sil, sil
                cmp     byte ptr cs:dword_140CFB19C, al
                xorps   xmm0, xmm0
                movzx   edi, dl
                mov     [rsp+48h+var_18], rax
                mov     rbx, rcx
                movups  [rsp+48h+var_28], xmm0
                jz      short loc_1402888E0

loc_1402888CF:                          ; CODE XREF: sub_1402888A0+DD↓j
                                        ; sub_1402888A0+E9↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402888E0:                          ; CODE XREF: sub_1402888A0+2D↑j
                add     rcx, 0C0h
                lea     rdx, [rsp+48h+var_28]
                call    KeAcquireInStackQueuedSpinLock
                cmp     dword ptr [rbx+164h], 0
                ja      loc_1402889BB
                cmp     qword ptr [rbx+280h], 2000h
                ja      loc_14028899E
                test    dil, dil
                jnz     loc_14028899E
                cmp     dword ptr [rbx+170h], 0
                jnz     short loc_140288959
                cmp     dword ptr [rbx+158h], 0
                jnz     short loc_140288959
                lea     rax, [rbx+100h]
                cmp     [rax], rax
                jnz     short loc_140288959
                lea     rax, [rbx+120h]
                cmp     [rax], rax
                jnz     short loc_140288959
                mov     dword ptr [rbx+3C0h], 1
                cmp     [rbx+308h], sil
                jnz     loc_140444C8E

loc_140288959:                          ; CODE XREF: sub_1402888A0+7F↑j
                                        ; sub_1402888A0+88↑j ...
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, byte ptr [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_140444C9A

loc_140288976:                          ; CODE XREF: sub_1402888A0+1BC3FC↓j
                                        ; sub_1402888A0+1BC408↓j ...
                mov     cr8, rdi
                test    sil, sil
                jz      loc_1402888CF
                mov     rax, cr8
                cmp     al, 2
                jnb     loc_1402888CF
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1403221C0
                jmp     loc_1402888CF
; ---------------------------------------------------------------------------

loc_14028899E:                          ; CODE XREF: sub_1402888A0+69↑j
                                        ; sub_1402888A0+72↑j
                mov     eax, [rbx+0C8h]
                cmp     [rbx+3C0h], eax
                jnb     short loc_140288959
                xor     edx, edx
                mov     rcx, rbx
                call    sub_140381708
                mov     sil, 1
                jmp     short loc_140288959
; ---------------------------------------------------------------------------

loc_1402889BB:                          ; CODE XREF: sub_1402888A0+58↑j
                mov     eax, [rbx+0C8h]
                cmp     [rbx+3C0h], eax
                jnb     short loc_140288959
                xor     edx, edx
                mov     rcx, rbx
                mov     sil, 1
                call    sub_140381708
                jmp     short loc_140288959
sub_1402888A0   endp

; ---------------------------------------------------------------------------
algn_1402889D8:                         ; DATA XREF: .rdata:000000014005ED2C↑o
                                        ; .pdata:00000001400CEBC8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1402889E0   proc near               ; CODE XREF: sub_1402841E0+52F↑p
                                        ; sub_1402E4724+14F↓p ...

var_90          = qword ptr -90h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = dword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140444D06 SIZE 000003C8 BYTES

                mov     [rsp-8+arg_18], r9
                mov     [rsp-8+arg_8], rdx
                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rdi
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-37h]
                sub     rsp, 90h
                mov     r14, [rdx]
                xor     r10d, r10d
                mov     rdi, rcx
                mov     [rbp+57h+var_68], r10
                xor     ecx, ecx
                mov     [rbp+57h+arg_10], r10d
                mov     [rbp+57h+var_48], rcx
                xorps   xmm0, xmm0
                mov     ecx, r8d
                mov     [rbp+57h+var_60], rcx
                add     rcx, r14
                mov     [rbp+57h+var_80], r10d
                movups  [rbp+57h+var_58], xmm0
                lea     r15, [rcx-1]
                mov     rax, r15
                xor     rax, r14
                test    rax, 0FFFFFFFFFE000000h
                jnz     loc_1404450B0
                test    dword ptr [rdi+98h], 40000000h
                jnz     loc_140444D06

loc_140288A55:                          ; CODE XREF: sub_1402889E0+1BC330↓j
                mov     rax, [rdi+20h]
                cqo
                sar     r14, 0Ch
                and     edx, 0FFFh
                sar     r15, 0Ch
                add     rax, rdx
                sar     rax, 0Ch
                cmp     rax, r15
                jle     loc_140445092

loc_140288A79:                          ; DATA XREF: .rdata:000000014005ED5C↑o
                                        ; .rdata:000000014005ED70↑o ...
                mov     [rsp+0B0h+var_28], rbx
                mov     rbx, [rdi+210h]
                mov     [rbp+57h+var_70], rbx
                cmp     [rdi+0A8h], r10
                jz      short loc_140288AB3
                mov     rcx, [rdi+60h]
                and     rcx, 0FFFFFFFFFFFFFFF0h
                mov     rcx, [rcx+28h]
                call    sub_140285080
                cmp     rbx, [rax+8]
                jnz     loc_140444D15
                xor     r10d, r10d

loc_140288AB3:                          ; CODE XREF: sub_1402889E0+B3↑j
                test    dword ptr [rdi+98h], 40000000h
                mov     r13d, 1
                mov     [rsp+0B0h+var_30], rsi
                mov     [rsp+0B0h+var_38], r12
                lea     r12, [r13-2]
                jnz     loc_140444D34

loc_140288ADA:                          ; CODE XREF: sub_1402889E0+41E↓j
                mov     esi, [rbp+57h+arg_10]

loc_140288ADD:                          ; CODE XREF: sub_1402889E0+6FD↓j
                cmp     qword ptr [rdi+20h], 300000h
                mov     r12, 7FFFFFFFFFFFFFFCh
                jbe     short loc_140288B13
                inc     cs:dword_140CDB5D4
                lea     rcx, word_140CDB5C0
                call    ExpInterlockedPopEntrySList
                test    rax, rax
                jz      loc_1402890E2

loc_140288B0C:                          ; CODE XREF: sub_1402889E0+72A↓j
                mov     [rbp+57h+var_68], rax
                xor     r10d, r10d

loc_140288B13:                          ; CODE XREF: sub_1402889E0+10F↑j
                mov     [rbp+57h+var_78], r10d
                lea     rsi, [rdi+118h]
                mov     rbx, gs:188h
                mov     [rbp+57h+arg_10], r13d
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_140288ECA
                movzx   ecx, byte ptr [rbx+318h]
                mov     [rbp+57h+var_7C], r10d
                test    cl, cl
                jz      loc_140444D46

loc_140288B58:                          ; CODE XREF: sub_1402889E0+1BC381↓j
                mov     eax, r13d
                movzx   edx, cl
                bsf     ecx, edx
                shl     al, cl
                not     al
                mov     [rbp+57h+var_7C], ecx
                and     al, dl
                lea     r13, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     r13, 5
                add     r13, [rbx+320h]
                jz      loc_140444D80
                mov     rcx, rsi
                call    sub_140245330
                cmp     eax, 1
                jz      loc_140444D8B
                mov     eax, 0FFFFFFFFh

loc_140288B9B:                          ; CODE XREF: sub_1402889E0+1BC3B8↓j
                mov     [r13+28h], eax
                mov     rax, rsi
                and     rax, r12
                mov     [r13+20h], rax

loc_140288BA9:                          ; CODE XREF: sub_1402889E0+1BC3A6↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+57h+var_78]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_140288BD8
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     loc_140288FDD

loc_140288BD8:                          ; CODE XREF: sub_1402889E0+1E6↑j
                                        ; sub_1402889E0+602↓j
                mov     rbx, cr8
                mov     eax, 1
                mov     cr8, rax
                lock btr dword ptr [rsi], 0
                jnb     loc_140289124

loc_140288BF0:                          ; CODE XREF: sub_1402889E0+74F↓j
                test    r13, r13
                jz      short loc_140288BFA
                or      byte ptr [r13+1Ah], 1

loc_140288BFA:                          ; CODE XREF: sub_1402889E0+213↑j
                mov     rax, gs:188h
                mov     [rsi+8], rax
                movzx   eax, bl
                mov     [rsi+30h], eax
                mov     r12, [rdi+0A0h]
                test    r12, r12
                jz      loc_140288F81

loc_140288C1D:                          ; CODE XREF: sub_1402889E0+5B9↓j
                cmp     r14, r15
                jnz     short loc_140288C2D
                cmp     r14, [r12+28h]
                jz      loc_140288EE8

loc_140288C2D:                          ; CODE XREF: sub_1402889E0+240↑j
                cmp     r15, 300h
                jb      short loc_140288C47
                mov     r13d, 2F9h
                cmp     [r12], r13w
                jnz     loc_140288FE7

loc_140288C47:                          ; CODE XREF: sub_1402889E0+254↑j
                lea     r8, [rbp+57h+var_68]
                mov     rdx, r14
                mov     rcx, r12
                call    sub_140289158
                mov     rsi, rax
                test    rax, rax
                jz      loc_140444F73
                mov     rdx, [rax+10h]
                mov     ecx, [rax+18h]
                mov     r8d, edx
                add     rcx, rdx
                cmp     r14, rcx
                jl      loc_140288F47

loc_140288C78:                          ; CODE XREF: sub_1402889E0+56F↓j
                mov     eax, [rsi+1Ch]
                add     rax, rdx
                cmp     r15, rax
                jle     short loc_140288C8C
                mov     eax, r15d
                sub     eax, r8d
                mov     [rsi+1Ch], eax

loc_140288C8C:                          ; CODE XREF: sub_1402889E0+2A1↑j
                mov     r9, [rbp+57h+var_70]
                xor     eax, eax
                mov     qword ptr [rbp+57h+var_58], rax
                lea     rbx, [r9+80h]
                mov     qword ptr [rbp+57h+var_58+8], rbx
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140444D9D

loc_140288CBC:                          ; CODE XREF: sub_1402889E0+1BC3BF↓j
                                        ; sub_1402889E0+1BC3C9↓j ...
                mov     byte ptr [rbp+57h+var_48], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140444DE6

loc_140288CD9:                          ; CODE XREF: sub_1402889E0+1BC40A↓j
                                        ; sub_1402889E0+1BC419↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140444E0D
                lea     rdx, [rbp+57h+var_58]
                xchg    rdx, [rbx]
                test    rdx, rdx
                jnz     loc_140288FB9

loc_140288CF6:                          ; CODE XREF: sub_1402889E0+5E6↓j
                cmp     dword ptr [rdi+70h], 0
                jz      loc_140288F54

loc_140288D00:                          ; CODE XREF: sub_1402889E0+57C↓j
                                        ; sub_1402889E0+59C↓j
                mov     rax, [rsi+28h]
                mov     ecx, r14d
                sub     ecx, [rsi+10h]
                mov     r9d, 1
                shr     rcx, 5
                mov     ebx, r9d
                lea     rdx, [rax+rcx*4]
                mov     ecx, r14d
                and     ecx, 1Fh
                shl     ebx, cl
                cmp     r14, r15
                jg      short loc_140288D67
                mov     edi, [rbp+57h+var_80]
                mov     rcx, r15
                sub     rcx, r14
                inc     rcx
                add     r14, rcx

loc_140288D37:                          ; CODE XREF: sub_1402889E0+37E↓j
                mov     eax, [rdx]
                mov     r8, rdx
                test    ebx, eax
                jnz     short loc_140288D46
                or      eax, ebx
                mov     [rdx], eax
                inc     edi

loc_140288D46:                          ; CODE XREF: sub_1402889E0+35E↑j
                lea     eax, [rbx+rbx]
                mov     ebx, r9d
                test    eax, eax
                cmovnz  ebx, eax
                add     rdx, 4
                test    eax, eax
                cmovnz  rdx, r8
                sub     rcx, r9
                jnz     short loc_140288D37
                mov     [rbp+57h+var_80], edi
                mov     rdi, [rbp+57h+arg_0]

loc_140288D67:                          ; CODE XREF: sub_1402889E0+346↑j
                mov     r13d, [rbp+57h+var_80]
                mov     r8, rsi
                mov     r9d, r13d
                mov     rdx, r12
                mov     rcx, rdi
                call    sub_140288780
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_140444E1F
                prefetchw byte ptr [rbp+57h+var_58]
                mov     rax, qword ptr [rbp+57h+var_58]
                test    rax, rax
                jnz     loc_140288FA7
                mov     rcx, qword ptr [rbp+57h+var_58+8]
                lea     rax, [rbp+57h+var_58]
                xor     r10d, r10d
                lock cmpxchg [rcx], r10
                lea     rcx, [rbp+57h+var_58]
                cmp     rax, rcx
                jnz     loc_140288F9E

loc_140288DB7:                          ; CODE XREF: sub_1402889E0+5D4↓j
                                        ; sub_1402889E0+1BC44F↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140444E34

loc_140288DD0:                          ; CODE XREF: sub_1402889E0+1BC458↓j
                                        ; sub_1402889E0+1BC467↓j ...
                mov     eax, cs:dword_140CFC660
                movzx   esi, byte ptr [rbp+57h+var_48]
                test    eax, eax
                jnz     loc_140444E5A

loc_140288DE2:                          ; CODE XREF: sub_1402889E0+1BC47C↓j
                                        ; sub_1402889E0+1BC488↓j ...
                mov     cr8, rsi
                test    dword ptr [rdi+98h], 10000000h
                jnz     loc_140288EF3

loc_140288DF6:                          ; CODE XREF: sub_1402889E0+516↓j
                                        ; sub_1402889E0+543↓j
                mov     r13d, 1

loc_140288DFC:                          ; CODE XREF: sub_1402889E0+562↓j
                test    ebx, ebx
                jz      loc_140288ADA
                mov     [r12+28h], r15

loc_140288E09:                          ; CODE XREF: sub_1402889E0+50E↓j
                mov     rbx, [rbp+57h+var_70]
                mov     r12, 0FFFFFFFFFFFFFFFFh

loc_140288E14:                          ; CODE XREF: sub_1402889E0+1BC361↓j
                mov     rax, [rbp+57h+arg_8]
                mov     rcx, [rbp+57h+var_60]
                mov     rax, [rax]
                add     rcx, rax
                cmp     rcx, [rdi+30h]
                jle     short loc_140288E3C
                test    dword ptr [rdi+98h], 40000000h
                mov     [rdi+30h], rcx
                jnz     loc_140444ECD

loc_140288E3C:                          ; CODE XREF: sub_1402889E0+446↑j
                                        ; sub_1402889E0+1BC58E↓j ...
                add     rdi, 118h
                xor     eax, eax
                movzx   ebx, byte ptr [rdi+30h]
                mov     [rdi+8], rax
                lock cmpxchg [rdi], r13d
                jnz     loc_140289115

loc_140288E58:                          ; CODE XREF: sub_1402889E0+73F↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140445033

loc_140288E66:                          ; CODE XREF: sub_1402889E0+1BC655↓j
                                        ; sub_1402889E0+1BC661↓j ...
                mov     cr8, rbx
                mov     rcx, rdi
                call    sub_140243660

loc_140288E72:                          ; CODE XREF: sub_1402889E0+1BC648↓j
                mov     rcx, [rbp+57h+var_68]
                test    rcx, rcx
                jz      short loc_140288EA4
                inc     cs:dword_140CDB5DC
                movzx   eax, cs:word_140CDB5D0
                cmp     cs:word_140CDB5C0, ax
                jnb     loc_140289134
                mov     rdx, rcx
                lea     rcx, word_140CDB5C0
                call    ExpInterlockedPushEntrySList

loc_140288EA4:                          ; CODE XREF: sub_1402889E0+499↑j
                                        ; sub_1402889E0+766↓j
                mov     rsi, [rsp+0B0h+var_30]
                mov     r12, [rsp+0B0h+var_38]
                mov     rbx, [rsp+0B0h+var_28]

loc_140288EB9:                          ; CODE XREF: sub_1402889E0+1BC32A↓j
                                        ; DATA XREF: .pdata:00000001400CEBE0↑o ...
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140288ECA:                          ; CODE XREF: sub_1402889E0+15F↑j
                                        ; DATA XREF: .pdata:00000001400CEBEC↑o ...
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+0B0h+var_90], r10
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140288EE8:                          ; CODE XREF: sub_1402889E0+247↑j
                mov     r13d, 1
                jmp     loc_140288E09
; ---------------------------------------------------------------------------

loc_140288EF3:                          ; CODE XREF: sub_1402889E0+410↑j
                test    r13d, r13d
                jz      loc_140288DF6
                mov     r9, [rbp+57h+arg_18]
                test    r9, r9
                jz      loc_140288FCB

loc_140288F09:                          ; CODE XREF: sub_1402889E0+5F8↓j
                mov     rcx, [r9+220h]
                mov     eax, r13d
                shl     eax, 0Ch
                mov     r8d, eax
                mov     rdx, [rcx+8B8h]
                test    rdx, rdx
                jz      loc_140288DF6
                test    eax, eax
                jz      short loc_140288F33
                lock xadd [rdx+8], r8

loc_140288F33:                          ; CODE XREF: sub_1402889E0+54B↑j
                mov     r13d, 1
                mov     eax, r13d
                lock xadd [rdx+18h], rax
                jmp     loc_140288DFC
; ---------------------------------------------------------------------------

loc_140288F47:                          ; CODE XREF: sub_1402889E0+292↑j
                mov     eax, r14d
                sub     eax, edx
                mov     [rsi+18h], eax
                jmp     loc_140288C78
; ---------------------------------------------------------------------------

loc_140288F54:                          ; CODE XREF: sub_1402889E0+31A↑j
                mov     eax, [rdi+98h]
                test    al, 2
                jnz     loc_140288D00
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r9
                call    sub_1402F9FDC
                mov     rcx, rdi
                call    sub_1402FA068
                mov     [r12+20h], r14
                jmp     loc_140288D00
; ---------------------------------------------------------------------------

loc_140288F81:                          ; CODE XREF: sub_1402889E0+237↑j
                call    sub_140351BF0
                mov     r12, rax
                test    rax, rax
                jz      loc_140444F73
                mov     [rdi+0A0h], rax
                jmp     loc_140288C1D
; ---------------------------------------------------------------------------

loc_140288F9E:                          ; CODE XREF: sub_1402889E0+3D1↑j
                lea     rcx, [rbp+57h+var_58]
                call    sub_140313680

loc_140288FA7:                          ; CODE XREF: sub_1402889E0+3B4↑j
                xor     r10d, r10d
                mov     qword ptr [rbp+57h+var_58], r10
                lock xor qword ptr [rax+8], 1
                jmp     loc_140288DB7
; ---------------------------------------------------------------------------

loc_140288FB9:                          ; CODE XREF: sub_1402889E0+310↑j
                lea     rcx, [rbp+57h+var_58]
                call    sub_14025FC20

loc_140288FC2:                          ; CODE XREF: sub_1402889E0+1BC43A↓j
                mov     r9, [rbp+57h+var_70]
                jmp     loc_140288CF6
; ---------------------------------------------------------------------------

loc_140288FCB:                          ; CODE XREF: sub_1402889E0+523↑j
                mov     r9, gs:188h
                mov     [rbp+57h+arg_18], r9
                jmp     loc_140288F09
; ---------------------------------------------------------------------------

loc_140288FDD:                          ; CODE XREF: sub_1402889E0+1F2↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_140288BD8
; ---------------------------------------------------------------------------

loc_140288FE7:                          ; CODE XREF: sub_1402889E0+261↑j
                mov     rbx, [rbp+57h+var_68]
                xor     edx, edx
                mov     rcx, rbx
                mov     r8d, 400h
                call    memset
                cmp     dword ptr [r12+50h], 0
                jz      short loc_140289046
                mov     rax, [r12+58h]
                xor     edx, edx
                movups  xmm0, xmmword ptr [rax]
                lea     r8d, [rdx+60h]
                movups  xmmword ptr [rbx], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rbx+10h], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [rbx+20h], xmm0
                movups  xmm1, xmmword ptr [rax+30h]
                movups  xmmword ptr [rbx+30h], xmm1
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmmword ptr [rbx+40h], xmm0
                movups  xmm1, xmmword ptr [rax+50h]
                movups  xmmword ptr [rbx+50h], xmm1
                mov     rcx, [r12+58h]
                call    memset

loc_140289046:                          ; CODE XREF: sub_1402889E0+621↑j
                xor     eax, eax
                mov     [r12+58h], rbx
                mov     rdx, [r12+18h]
                lea     rcx, [r12+60h]
                mov     [rbp+57h+var_68], rax
                lea     rax, [r12+10h]
                cmp     [rdx], rax
                jnz     loc_14028914B
                mov     [rcx], rax
                mov     rbx, 7FFFFFFFFFFFFFFFh
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx
                lea     rcx, [r12+90h]
                mov     [r12+70h], rbx
                mov     dword ptr [r12+78h], 0FFFFFFFFh
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     loc_14028914B
                mov     [rcx], rax
                mov     [rcx+8], rdx
                mov     [rdx], rcx
                mov     [rax+8], rcx
                mov     rcx, rsi
                mov     [r12+0A0h], rbx
                mov     dword ptr [r12+0A8h], 0FFFFFFFFh
                mov     [r12], r13w
                call    KeReleaseGuardedMutex
                xor     r10d, r10d
                mov     esi, r10d
                lea     r13d, [r10+1]
                jmp     loc_140288ADD
; ---------------------------------------------------------------------------

loc_1402890E2:                          ; CODE XREF: sub_1402889E0+126↑j
                mov     edx, cs:dword_140CDB5EC
                mov     rax, cs:qword_140CDB5F0
                mov     r8d, cs:dword_140CDB5E8
                mov     ecx, cs:dword_140CDB5E4
                inc     cs:dword_140CDB5D8
                call    sub_1404079D0
                test    rax, rax
                jnz     loc_140288B0C
                jmp     loc_140444EC2
; ---------------------------------------------------------------------------

loc_140289115:                          ; CODE XREF: sub_1402889E0+472↑j
                mov     edx, eax
                mov     rcx, rdi
                call    sub_1402F424C
                jmp     loc_140288E58
; ---------------------------------------------------------------------------

loc_140289124:                          ; CODE XREF: sub_1402889E0+20A↑j
                mov     rdx, r13
                mov     rcx, rsi
                call    sub_1402F5E40
                jmp     loc_140288BF0
; ---------------------------------------------------------------------------

loc_140289134:                          ; CODE XREF: sub_1402889E0+4AF↑j
                inc     cs:dword_140CDB5E0
                mov     rax, cs:qword_140CDB5F8
                call    sub_1404079D0
                jmp     loc_140288EA4
; ---------------------------------------------------------------------------

loc_14028914B:                          ; CODE XREF: sub_1402889E0+683↑j
                                        ; sub_1402889E0+6BE↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1402889E0   endp

; ---------------------------------------------------------------------------
algn_140289152:                         ; DATA XREF: .pdata:00000001400CEBF8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140289158   proc near               ; CODE XREF: sub_1402889E0+271↑p
                                        ; DATA XREF: .rdata:000000014005EE04↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404450CE SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, rdx
                xor     edi, edi
                lea     rdx, [rcx+10h]
                mov     r14, r8
                mov     rax, [rdx]
                mov     rbx, rdx
                and     rsi, 0FFFFFFFFFFFFE000h

loc_140289186:                          ; CODE XREF: sub_140289158+6B↓j
                                        ; sub_140289158+70↓j
                mov     rcx, [rax+10h]
                cmp     rsi, rcx
                jnz     short loc_1402891A6

loc_14028918F:                          ; CODE XREF: sub_140289158+C4↓j
                                        ; sub_140289158:loc_14028927F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402891A6:                          ; CODE XREF: sub_140289158+35↑j
                cmp     dword ptr [rax+20h], 0
                jz      short loc_140289221

loc_1402891AC:                          ; CODE XREF: sub_140289158+CC↓j
                cmp     rsi, rcx
                cmovg   rbx, rax

loc_1402891B3:                          ; CODE XREF: sub_140289158+D1↓j
                mov     rax, [rax]
                cmp     rax, rdx
                jz      loc_140289248
                cmp     rsi, [rax+10h]
                jge     short loc_140289186
                test    rdi, rdi
                jz      short loc_140289186

loc_1402891CA:                          ; CODE XREF: sub_140289158+F3↓j
                mov     rax, [rdi]
                cmp     [rax+8], rdi
                jnz     FatalListEntryError_11
                mov     rcx, [rdi+8]
                cmp     [rcx], rdi
                jnz     FatalListEntryError_11
                mov     [rcx], rax
                mov     [rax+8], rcx

loc_1402891EB:                          ; CODE XREF: sub_140289158+122↓j
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     FatalListEntryError_11
                mov     [rdi], rax
                mov     [rdi+8], rbx
                mov     [rax+8], rdi
                mov     [rbx], rdi
                or      dword ptr [rdi+18h], 0FFFFFFFFh
                and     dword ptr [rdi+1Ch], 0
                cmp     qword ptr [rdi+28h], 0
                mov     [rdi+10h], rsi
                jz      short loc_14028922B

loc_140289219:                          ; CODE XREF: sub_140289158+EE↓j
                mov     rax, rdi
                jmp     loc_14028918F
; ---------------------------------------------------------------------------

loc_140289221:                          ; CODE XREF: sub_140289158+52↑j
                test    rdi, rdi
                jnz     short loc_1402891AC
                mov     rdi, rax
                jmp     short loc_1402891B3
; ---------------------------------------------------------------------------

loc_14028922B:                          ; CODE XREF: sub_140289158+BF↑j
                mov     rbx, [r14]
                xor     edx, edx
                mov     rcx, rbx
                mov     r8d, 400h
                call    memset
                and     qword ptr [r14], 0
                mov     [rdi+28h], rbx
                jmp     short loc_140289219
; ---------------------------------------------------------------------------

loc_140289248:                          ; CODE XREF: sub_140289158+61↑j
                test    rdi, rdi
                jnz     loc_1402891CA
                lea     edx, [rdi+30h]
                mov     ecx, 200h
                mov     r8d, 72426343h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14028927F
                xorps   xmm0, xmm0
                movups  xmmword ptr [rax], xmm0
                movups  xmmword ptr [rax+10h], xmm0
                movups  xmmword ptr [rax+20h], xmm0
                jmp     loc_1402891EB
; ---------------------------------------------------------------------------

loc_14028927F:                          ; CODE XREF: sub_140289158+112↑j
                jmp     loc_14028918F
sub_140289158   endp

; ---------------------------------------------------------------------------
algn_140289284:                         ; DATA XREF: .rdata:000000014005EE04↑o
                                        ; .pdata:00000001400CEC04↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140289290   proc near               ; CODE XREF: sub_140289320+25B↓p
                                        ; sub_14036A080+7E3↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404450D6 SIZE 000000A6 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                mov     rdi, rcx
                mov     rdx, [rcx]
                mov     rax, 0FFFFF6FB7DBED000h
                cmp     rcx, rax
                jnb     loc_1404450D6

loc_1402892B6:                          ; CODE XREF: sub_140289290+1BBE53↓j
                                        ; sub_140289290+1BBE60↓j ...
                mov     eax, cs:dword_140CFC400
                bt      eax, 0Bh
                jb      loc_1404450FF
                bt      eax, 1Ah
                jb      short loc_14028930F

loc_1402892CC:                          ; CODE XREF: sub_140289290+82↓j
                                        ; sub_140289290+1BBE74↓j
                mov     rcx, rdi
                test    dl, 20h
                jz      short loc_1402892F5
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140445109

loc_1402892E1:                          ; CODE XREF: sub_140289290+1BBECB↓j
                                        ; sub_140289290+1BBED4↓j ...
                mov     [rdi], rbx

loc_1402892E4:                          ; CODE XREF: sub_140289290+6F↓j
                                        ; sub_140289290+1BBEAC↓j
                mov     eax, 1
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402892F5:                          ; CODE XREF: sub_140289290+42↑j
                mov     rdx, rbx
                call    sub_14034E08C
                test    al, 20h
                jnz     short loc_1402892E4
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14028930F:                          ; CODE XREF: sub_140289290+3A↑j
                lfence
                jmp     short loc_1402892CC
sub_140289290   endp

; ---------------------------------------------------------------------------
algn_140289314:                         ; DATA XREF: .rdata:000000014005EE28↑o
                                        ; .pdata:00000001400CEC10↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140289320   proc near               ; CODE XREF: sub_140286D90+9BD↑p
                                        ; sub_140354D98+6E↓p ...

var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_48], rax
                mov     edi, 1
                mov     [rsp+0B8h+var_70], r9
                mov     rax, 7FFFFFFFF8h
                mov     [rsp+0B8h+var_88], r8d
                mov     r13, rdx
                mov     [rsp+0B8h+var_80], rcx
                shr     r13, 9
                mov     rbp, rdx
                and     r13, rax
                lea     r14d, [rdi+9]
                mov     rax, 0FFFFF68000000000h
                mov     r15d, edi
                xor     esi, esi
                mov     rax, rax
                add     r13, rax
                mov     rcx, r13
                mov     r12d, r13d
                mov     rbx, [r13+0]
                call    sub_1402433C0
                mov     r8d, eax
                test    eax, eax
                jz      short loc_140289400
                call    sub_140349680
                test    eax, eax
                jz      short loc_140289400
                test    dil, bl
                jz      short loc_140289400
                test    bl, 20h
                jz      short loc_1402893B8
                test    bl, 42h
                jnz     short loc_140289400

loc_1402893B8:                          ; CODE XREF: sub_140289320+91↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_140289400
                mov     rax, r12
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_140289400
                or      rbx, 42h

loc_140289400:                          ; CODE XREF: sub_140289320+7E↑j
                                        ; sub_140289320+87↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     r9, [rbx+rbx*2]
                shl     r9, 4
                mov     rax, rax
                add     r9, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                cmp     rbp, rax
                jb      short loc_140289498
                mov     rax, 0FFFFF6FFFFFFFFFFh
                cmp     rbp, rax
                ja      short loc_140289498
                movzx   ebx, byte ptr [r9]
                mov     edi, esi
                shr     bl, 1
                and     bl, 7

loc_140289455:                          ; CODE XREF: sub_140289320+21D↓j
                mov     r12, [rsp+0B8h+var_80]

loc_14028945A:                          ; CODE XREF: sub_140289320+241↓j
                test    byte ptr [rsp+0B8h+var_88], 3
                jnz     loc_14028958E
                test    edi, edi
                jnz     loc_140289571
                mov     r8, cs:qword_14001D278
                xor     r9d, r9d
                mov     rdx, r13
                mov     rcx, r12
                call    sub_14029B720
                test    eax, eax
                jnz     loc_140289566
                mov     rax, [rsp+0B8h+var_70]
                mov     [rax], esi
                xor     eax, eax
                jmp     loc_140289748
; ---------------------------------------------------------------------------

loc_140289498:                          ; CODE XREF: sub_140289320+119↑j
                                        ; sub_140289320+128↑j
                mov     eax, [rsp+0B8h+var_88]
                mov     rdx, [r13+0]
                and     al, 2
                neg     al
                sbb     r14d, r14d
                add     r14d, 0Ah
                test    r8d, r8d
                jz      short loc_14028950F
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028950F
                test    dil, dl
                jz      short loc_14028950F
                test    dl, 20h
                jz      short loc_1402894C8
                test    dl, 42h
                jnz     short loc_14028950F

loc_1402894C8:                          ; CODE XREF: sub_140289320+1A1↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14028950F
                shr     r12, 3
                mov     r8, rdx
                and     r12d, 1FFh
                or      r8, 20h
                mov     rax, [rax+r12*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028950F
                or      rdx, 42h

loc_14028950F:                          ; CODE XREF: sub_140289320+18E↑j
                                        ; sub_140289320+197↑j ...
                mov     rbx, rdx
                mov     rcx, r9
                shr     rbx, 3Ch
                and     bl, 7
                shr     rdx, 38h
                shl     bl, 4
                and     dl, 0Fh
                or      bl, dl
                call    sub_1403F41D8
                test    eax, eax
                mov     r15d, esi
                movzx   eax, bl
                setz    r15b
                and     al, 0Fh
                cmp     al, 8
                jnz     loc_140289455
                mov     r12, [rsp+0B8h+var_80]
                mov     r8, r9
                mov     rcx, r12
                mov     rdx, rbp
                call    sub_1402DDB98
                mov     rdx, rbp
                call    sub_1402DECC0
                movzx   ebx, al
                jmp     loc_14028945A
; ---------------------------------------------------------------------------

loc_140289566:                          ; CODE XREF: sub_140289320+164↑j
                mov     r13d, 1
                mov     esi, r13d
                jmp     short loc_140289594
; ---------------------------------------------------------------------------

loc_140289571:                          ; CODE XREF: sub_140289320+147↑j
                mov     rdx, cs:qword_14001D278
                mov     rcx, r13
                call    sub_140289290
                test    eax, eax
                mov     r13d, 1
                cmovnz  esi, r13d
                jmp     short loc_140289594
; ---------------------------------------------------------------------------

loc_14028958E:                          ; CODE XREF: sub_140289320+13F↑j
                mov     r13d, 1

loc_140289594:                          ; CODE XREF: sub_140289320+24F↑j
                                        ; sub_140289320+26C↑j
                mov     [rsp+0B8h+var_90], r15d
                movzx   r9d, bl
                mov     r8, r13
                mov     [rsp+0B8h+var_98], r14d
                mov     rdx, rbp
                mov     rcx, r12
                call    sub_14028B7E0
                test    edi, edi
                jz      loc_14028973E
                mov     rax, rbp
                shr     rax, 12h
                and     eax, 3FFFFFF8h
                mov     rcx, 0FFFFF6FB40000000h
                add     rcx, rax
                mov     edi, ecx
                mov     rbx, [rcx]
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14028963D
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028963D
                test    bl, 1
                jz      short loc_14028963D
                test    bl, 20h
                jz      short loc_1402895F7
                test    bl, 42h
                jnz     short loc_14028963D

loc_1402895F7:                          ; CODE XREF: sub_140289320+2D0↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14028963D
                shr     rdi, 3
                mov     rdx, rbx
                and     edi, 1FFh
                or      rdx, 20h
                mov     rax, [rax+rdi*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14028963D
                or      rbx, 42h

loc_14028963D:                          ; CODE XREF: sub_140289320+2BD↑j
                                        ; sub_140289320+2C6↑j ...
                lea     rcx, [rsp+0B8h+var_78]
                mov     [rsp+0B8h+var_78], rbx
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1402896B2
                call    sub_140349680
                test    eax, eax
                jz      short loc_1402896B2
                test    bl, 1
                jz      short loc_1402896B2
                test    bl, 20h
                jz      short loc_140289668
                test    bl, 42h
                jnz     short loc_1402896B2

loc_140289668:                          ; CODE XREF: sub_140289320+341↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_1402896B2
                lea     rax, [rsp+0B8h+var_78]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_1402896B2
                or      rbx, 42h

loc_1402896B2:                          ; CODE XREF: sub_140289320+32E↑j
                                        ; sub_140289320+337↑j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rbx, [rbx+rbx*2]
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     eax, [rbx]
                shr     rax, 4
                test    eax, 3FFh
                jnz     short loc_14028973E
                lea     r8, [rsp+0B8h+var_68]
                mov     rdx, rbp
                call    sub_1402FD640
                mov     cl, 8
                nop     word ptr [rax+rax+00000000h]

loc_140289700:                          ; CODE XREF: sub_140289320+3F2↓j
                add     cl, 0FFh
                movzx   eax, cl
                mov     r8d, [rsp+rax*4+0B8h+var_68]
                test    r8d, r8d
                jnz     short loc_140289716
                test    cl, cl
                jnz     short loc_140289700
                jmp     short loc_14028973E
; ---------------------------------------------------------------------------

loc_140289716:                          ; CODE XREF: sub_140289320+3EE↑j
                movzx   edx, cl
                and     r8d, 3FFh
                mov     rcx, [rbx]
                and     edx, 7
                shl     rdx, 0Ah
                and     rcx, 0FFFFFFFFFFFE000Fh
                or      rdx, r8
                shl     rdx, 4
                or      rdx, rcx
                mov     [rbx], rdx

loc_14028973E:                          ; CODE XREF: sub_140289320+292↑j
                                        ; sub_140289320+3C6↑j ...
                mov     rax, [rsp+0B8h+var_70]
                mov     [rax], esi
                mov     eax, r13d

loc_140289748:                          ; CODE XREF: sub_140289320+173↑j
                mov     rcx, [rsp+0B8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B8h+arg_10]
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140289320
sub_140289320   endp

algn_140289771:                         ; DATA XREF: .pdata:00000001400CEC1C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140289778   proc near               ; CODE XREF: sub_14020A054+FC↑p
                                        ; sub_140220920+638↑p ...
                mov     al, [rcx+0B8h]
                and     al, 7
                jnz     short loc_140289789
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140289789:                          ; CODE XREF: sub_140289778+8↑j
                cmp     al, 2
                sbb     eax, eax
                and     eax, 2
                retn
sub_140289778   endp

; ---------------------------------------------------------------------------
                align 2
algn_140289792:                         ; DATA XREF: .pdata:00000001400CEC28↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402897A0   proc near               ; CODE XREF: sub_14023E510+DBE↑p
                                        ; DATA XREF: .pdata:00000001400CEC34↑o

; FUNCTION CHUNK AT 000000014044517C SIZE 0000008E BYTES

                mov     eax, cs:dword_140CFC450
                test    al, 2
                jz      short locret_1402897BA
                mov     rax, [rdx+84B8h]
                test    rax, rax
                jnz     loc_14044517C

locret_1402897BA:                       ; CODE XREF: sub_1402897A0+8↑j
                                        ; sub_1402897A0+1BB9E4↓j ...
                retn
sub_1402897A0   endp

; ---------------------------------------------------------------------------
                align 4
byte_1402897BC  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400CEC34↑o

; =============== S U B R O U T I N E =======================================


sub_1402897D0   proc near               ; CODE XREF: sub_14025C570+178↑p
                                        ; sub_14025C570+2EF↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014044520C SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     edi, r8d
                mov     rbx, rdx
                mov     rsi, rcx
                test    rdx, rdx
                jz      short loc_14028982D
                movsx   eax, byte ptr [rdx+0C3h]
                cmp     al, 1Fh
                jz      loc_14044520C
                mov     r10d, eax
                test    dil, 2
                jnz     short loc_140289808
                inc     r10d

loc_140289808:                          ; CODE XREF: sub_1402897D0+33↑j
                mov     rdx, [rdx+68h]
                test    rdx, rdx
                jnz     short loc_140289856

loc_140289811:                          ; CODE XREF: sub_1402897D0+8F↓j
                                        ; sub_1402897D0+B5↓j
                mov     ecx, r10d

loc_140289814:                          ; CODE XREF: sub_1402897D0+84↓j
                mov     rdx, rsi
                call    sub_140242060

loc_14028981C:                          ; CODE XREF: sub_1402897D0+6D↓j
                                        ; sub_1402897D0+7A↓j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14028982D:                          ; CODE XREF: sub_1402897D0+1B↑j
                mov     rdx, rsi
                mov     ecx, 1
                call    sub_140242060
                test    rax, rax
                jnz     short loc_14028981C
                mov     rcx, rsi
                call    sub_1402CEC74
                test    rax, rax
                jnz     short loc_14028981C
                test    dil, 1
                jnz     short loc_14028981C
                xor     ecx, ecx
                jmp     short loc_140289814
; ---------------------------------------------------------------------------

loc_140289856:                          ; CODE XREF: sub_1402897D0+3F↑j
                mov     eax, [rcx+0D8h]
                add     rdx, rax
                jz      short loc_140289811
                mov     rax, gs:20h
                cmp     rsi, rax
                jnz     short loc_1402898A6

loc_14028986F:                          ; CODE XREF: sub_1402897D0+DA↓j
                mov     r9b, 1

loc_140289872:                          ; CODE XREF: sub_1402897D0+DF↓j
                mov     rcx, rbx
                mov     [rsp+38h+var_18], 0
                call    sub_1402D0A30
                test    eax, eax
                jz      short loc_140289811
                mov     r8d, r10d
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14030B1EC
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402898A6:                          ; CODE XREF: sub_1402897D0+9D↑j
                cmp     rbx, [rcx+8]
                jnz     short loc_14028986F
                xor     r9b, r9b
                jmp     short loc_140289872
sub_1402897D0   endp

; ---------------------------------------------------------------------------
algn_1402898B1:                         ; DATA XREF: .rdata:000000014005EE74↑o
                                        ; .pdata:00000001400CEC40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402898C0   proc near               ; CODE XREF: sub_14027FDE0+676↑p
                                        ; sub_14027FDE0+7BD↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140445214 SIZE 00000020 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     rax, cs:qword_140C4E4C8
                xor     r9d, r9d
                movzx   r8d, word ptr [rcx+0AEh]
                mov     [rsp+48h+var_18], r9
                mov     rbx, [rax+r8*8]
                mov     rdi, [rbx+1AC0h]
                mov     rax, [rdi+38h]
                cmp     [rcx+60h], rax
                jnb     short loc_14028992E
                test    rdx, rdx
                jg      short loc_140289918
                cmp     [rcx+18h], r9
                lea     rsi, [rcx+18h]
                jz      short loc_140289918
                cmp     [rbx+1AD0h], rsi
                jnz     short loc_14028994D

loc_140289918:                          ; CODE XREF: sub_1402898C0+43↑j
                                        ; sub_1402898C0+4D↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14028992E:                          ; CODE XREF: sub_1402898C0+3E↑j
                test    rdx, rdx
                js      short loc_140289918
                cmp     [rcx+18h], r9
                lea     rsi, [rcx+18h]
                jz      short loc_140289918
                cmp     [rbx+1AC8h], rsi
                jz      short loc_140289918
                mov     ebp, 1
                jmp     short loc_140289952
; ---------------------------------------------------------------------------

loc_14028994D:                          ; CODE XREF: sub_1402898C0+56↑j
                mov     ebp, 2

loc_140289952:                          ; CODE XREF: sub_1402898C0+8B↑j
                lea     rdx, qword_140C4ECC0
                mov     [rsp+48h+var_28], r9
                lea     rcx, [rsp+48h+var_28]
                mov     [rsp+48h+var_20], rdx
                call    sub_14024B3F0
                cmp     byte ptr [rdi+35h], 0
                jz      short loc_140289983

loc_140289973:                          ; CODE XREF: sub_1402898C0+C9↓j
                mov     byte ptr [rdi+36h], 1

loc_140289977:                          ; CODE XREF: sub_1402898C0+1BB96F↓j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                jmp     short loc_140289918
; ---------------------------------------------------------------------------

loc_140289983:                          ; CODE XREF: sub_1402898C0+B1↑j
                mov     rax, [rsi]
                test    rax, rax
                jz      short loc_140289973
                cmp     [rax+8], rsi
                jnz     short loc_1402899D7
                mov     rcx, [rsi+8]
                cmp     [rcx], rsi
                jnz     short loc_1402899D7
                add     rbx, 1AC8h
                mov     [rcx], rax
                mov     [rax+8], rcx
                cmp     ebp, 1
                jz      loc_140445214
                mov     rax, [rbx+8]
                cmp     [rax], rbx
                jnz     short loc_1402899D7
                mov     [rsi], rbx
                lea     rcx, [rsp+48h+var_28]
                mov     [rsi+8], rax
                mov     [rax], rsi
                mov     [rbx+8], rsi
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                jmp     loc_140289918
; ---------------------------------------------------------------------------

loc_1402899D7:                          ; CODE XREF: sub_1402898C0+CF↑j
                                        ; sub_1402898C0+D8↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
sub_1402898C0   endp

; ---------------------------------------------------------------------------
byte_1402899DE  db 12h dup(0CCh)        ; DATA XREF: .rdata:000000014005EE9C↑o
                                        ; .pdata:00000001400CEC4C↑o

; =============== S U B R O U T I N E =======================================


sub_1402899F0   proc near               ; CODE XREF: sub_140234C00+94↑p
                                        ; DATA XREF: .rdata:000000014005EEC4↑o ...

var_28          = qword ptr -28h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140445234 SIZE 000000EB BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                xor     ebp, ebp
                mov     rbx, rcx
                mov     [rsp+48h+arg_8], rbp
                mov     rsi, cr8
                mov     r14d, 2
                mov     cr8, r14
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140445234

loc_140289A28:                          ; CODE XREF: sub_1402899F0+1BB846↓j
                                        ; sub_1402899F0+1BB850↓j ...
                mov     rdi, gs:20h
                mov     [rsp+48h+arg_0], ebp
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_140445279

loc_140289A45:                          ; CODE XREF: sub_1402899F0+15D↓j
                                        ; sub_1402899F0+1BB88D↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140289B18
                movsx   rcx, byte ptr [rbx+31Bh]
                movzx   eax, byte ptr [rcx+rbx+338h]
                test    al, al
                jz      loc_1404452E2
                sub     al, 1
                mov     [rcx+rbx+338h], al
                jnz     short loc_140289AB6
                mov     edx, [rbx+358h]
                mov     eax, 1
                btc     edx, ecx
                shl     eax, cl
                mov     [rbx+358h], edx
                cmp     edx, eax
                jnb     short loc_140289AB6
                movzx   edx, byte ptr [rbx+0C3h]
                cmp     dl, 10h
                jge     short loc_140289AB6
                movzx   eax, byte ptr [rbx+234h]
                movzx   ecx, al
                and     al, 0Fh
                shr     cl, 4
                add     cl, al
                add     cl, [rbx+233h]
                cmp     cl, dl
                jl      short loc_140289B05

loc_140289AB6:                          ; CODE XREF: sub_1402899F0+83↑j
                                        ; sub_1402899F0+9D↑j ...
                mov     [rbx+31Bh], bpl
                mov     [rbx+40h], rbp
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404452FB

loc_140289ADA:                          ; CODE XREF: sub_1402899F0+1BB90F↓j
                                        ; sub_1402899F0+1BB91E↓j ...
                mov     rcx, gs:20h
                lea     rdx, [rsp+48h+arg_8]
                movzx   r8d, sil
                call    sub_14028D950
                mov     rbx, [rsp+48h+arg_10]
                mov     rbp, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140289B05:                          ; CODE XREF: sub_1402899F0+C4↑j
                movsx   r8d, cl
                lea     rdx, [rsp+48h+arg_8]
                mov     rcx, rbx
                call    sub_14025C570
                jmp     short loc_140289AB6
; ---------------------------------------------------------------------------

loc_140289B18:                          ; CODE XREF: sub_1402899F0+5C↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_1404452A0
                nop     dword ptr [rax+rax+00000000h]

loc_140289B30:                          ; CODE XREF: sub_1402899F0+151↓j
                                        ; sub_1402899F0+1BB8B4↓j ...
                lea     rcx, [rsp+48h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140289B30
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jz      loc_140289A45
                jmp     loc_1404452C7
sub_1402899F0   endp

; ---------------------------------------------------------------------------
algn_140289B58:                         ; DATA XREF: .rdata:000000014005EEC4↑o
                                        ; .pdata:00000001400CEC58↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=200h

sub_140289B60   proc near               ; CODE XREF: sub_1402335C0+35B↑p
                                        ; sub_1402EBCF0+43↓p ...

var_2E0         = byte ptr -2E0h
var_2DC         = dword ptr -2DCh
var_2D8         = dword ptr -2D8h
var_2D4         = dword ptr -2D4h
var_2D0         = dword ptr -2D0h
var_2CC         = dword ptr -2CCh
var_2C8         = dword ptr -2C8h
var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A0         = xmmword ptr -2A0h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_260         = xmmword ptr -260h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = xmmword ptr -230h
var_220         = xmmword ptr -220h
var_210         = xmmword ptr -210h
var_200         = xmmword ptr -200h
var_1F0         = xmmword ptr -1F0h
var_1E0         = xmmword ptr -1E0h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = qword ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = xmmword ptr -1B0h
var_1A0         = xmmword ptr -1A0h
var_190         = xmmword ptr -190h
var_180         = xmmword ptr -180h
var_170         = xmmword ptr -170h
var_160         = xmmword ptr -160h
var_150         = xmmword ptr -150h
var_140         = xmmword ptr -140h
var_130         = xmmword ptr -130h
var_120         = qword ptr -120h
var_110         = dword ptr -110h
var_10C         = word ptr -10Ch
var_10A         = word ptr -10Ah
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_50          = qword ptr -50h
arg_20          = byte ptr  30h
arg_28          = dword ptr  38h
arg_30          = qword ptr  40h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1C8h]
                sub     rsp, 2C8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+200h+var_50], rax
                mov     r12d, [rbp+200h+arg_28]
                xorps   xmm0, xmm0
                mov     r13, [rbp+200h+arg_30]
                mov     r14, rcx
                xor     ecx, ecx
                mov     [rsp+300h+var_2B0], r8
                mov     [rbp+200h+var_10A], cx
                mov     r15, r8
                mov     [rbp+200h+var_60], rcx
                movzx   eax, dl
                mov     [rsp+300h+var_290], rcx
                mov     r11d, r12d
                movzx   ecx, [rbp+200h+arg_20]
                mov     r8d, r12d
                and     cl, 7
                mov     [rsp+300h+var_2E0], dl
                shl     cl, 2
                and     r8d, 200h
                mov     [rbp+200h+arg_20], cl
                mov     edx, r12d
                mov     ecx, 800h
                mov     [rsp+300h+var_2C0], r9
                and     r11d, ecx
                mov     [rsp+300h+var_2D4], r8d
                and     edx, 100h
                mov     [rsp+300h+var_2C8], r11d
                mov     ecx, r12d
                mov     [rsp+300h+var_2D8], edx
                and     ecx, 80h
                xor     bl, bl
                mov     r10d, r12d
                mov     [rsp+300h+var_2CC], ecx
                and     r10d, 10h
                mov     [rsp+300h+var_2D0], r10d
                movups  [rbp+200h+var_F0], xmm0
                movups  [rbp+200h+var_E0], xmm0
                movups  [rbp+200h+var_D0], xmm0
                movups  [rbp+200h+var_C0], xmm0
                movups  [rbp+200h+var_B0], xmm0
                movups  [rbp+200h+var_A0], xmm0
                movups  [rbp+200h+var_90], xmm0
                movups  [rbp+200h+var_80], xmm0
                movups  [rbp+200h+var_70], xmm0
                movups  [rsp+300h+var_2A0], xmm0

loc_140289C68:                          ; CODE XREF: sub_140289B60+6EB↓j
                mov     [rsp+300h+var_2DC], ebx
                nop     dword ptr [rax+00h]
                xorps   xmm0, xmm0
                movzx   esi, al
                xor     eax, eax
                xorps   xmm1, xmm1
                mov     [rbp+200h+var_120], rax
                mov     rcx, r14
                or      dword ptr [rbp+200h+var_120], 2
                xor     dil, dil
                movups  [rbp+200h+var_1A0], xmm0
                mov     [rbp+200h+var_1D0], rax
                movups  [rbp+200h+var_150], xmm0
                mov     qword ptr [rbp+200h+var_1A0], r13
                movups  [rbp+200h+var_1B0], xmm0
                mov     dword ptr [rbp+200h+var_150+8], r12d
                movups  [rbp+200h+var_190], xmm0
                movups  [rbp+200h+var_180], xmm0
                movups  [rbp+200h+var_170], xmm0
                movups  [rbp+200h+var_160], xmm0
                movups  [rbp+200h+var_140], xmm0
                movups  [rbp+200h+var_130], xmm0
                movaps  [rbp+200h+var_260], xmm1
                movups  [rbp+200h+var_230], xmm0
                movups  [rbp+200h+var_220], xmm0
                movups  [rbp+200h+var_210], xmm0
                movups  [rbp+200h+var_200], xmm0
                movups  [rbp+200h+var_1F0], xmm0
                movups  [rbp+200h+var_1E0], xmm0
                call    sub_140289778
                mov     [rbp+200h+var_110], eax
                xor     ecx, ecx
                test    byte ptr cs:xmmword_140CFC480+4, 1
                lea     rax, [rbp+200h+var_110]
                mov     [rbp+200h+var_250], rax
                movzx   eax, byte ptr [rbp+200h+var_150+0Ch]
                mov     [rbp+200h+var_10C], cx
                mov     [rbp+200h+var_100], rcx
                mov     [rbp+200h+var_F8], rcx
                mov     ecx, 1
                cmovnz  eax, ecx
                psrldq  xmm1, 2
                mov     byte ptr [rbp+200h+var_150+0Ch], al
                movd    eax, xmm1
                mov     [rbp+200h+var_108], 14h
                and     al, 0E3h
                or      al, [rbp+200h+arg_20]
                mov     byte ptr [rbp+200h+var_260+2], al
                lea     rax, [rbp+200h+var_1B0]
                mov     [rbp+200h+var_1B8], rax
                mov     eax, 27h ; '''
                mov     word ptr [rbp+200h+var_260], ax
                test    r8d, r8d
                jz      short loc_140289D77
                mov     eax, 423h
                mov     word ptr [rbp+200h+var_260], ax

loc_140289D77:                          ; CODE XREF: sub_140289B60+20C↑j
                test    edx, edx
                jz      short loc_140289D87
                mov     ecx, 800h
                or      ax, cx
                mov     word ptr [rbp+200h+var_260], ax

loc_140289D87:                          ; CODE XREF: sub_140289B60+219↑j
                movzx   ecx, byte ptr [rbp+200h+var_260+5]
                test    r11d, r11d
                mov     edx, 3Fh ; '?'
                mov     [rbp+200h+var_240], r15
                cmovnz  ecx, edx
                mov     [rbp+200h+var_238], r9
                mov     byte ptr [rbp+200h+var_260+5], cl
                xor     r12b, r12b
                mov     [rbp+200h+var_248], r14
                lea     rcx, sub_14028A280
                mov     [rbp+200h+var_1C8], rcx
                lea     rcx, sub_14028E9D0
                mov     [rbp+200h+var_1C0], rcx
                test    r10d, r10d
                jz      short loc_140289DEA
                mov     rax, [r13+20h]
                mov     rcx, [rax+20h]
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                add     rcx, 38h ; '8'
                xor     edx, edx
                call    ExAcquireAutoExpandPushLockExclusive
                movzx   eax, word ptr [rbp+200h+var_260]

loc_140289DEA:                          ; CODE XREF: sub_140289B60+261↑j
                cmp     [rsp+300h+var_2E0], 11h
                jz      short loc_140289E05
                mov     ecx, 0FFFDh
                mov     r12b, 1
                and     ax, cx
                mov     word ptr [rbp+200h+var_260], ax
                jmp     loc_140289EC3
; ---------------------------------------------------------------------------

loc_140289E05:                          ; CODE XREF: sub_140289B60+28F↑j
                test    byte ptr [rbp+200h+var_260], 4
                jz      loc_140289E99
                movzx   eax, byte ptr [r14+0B8h]
                and     al, 7
                cmp     al, 6
                jb      short loc_140289E72
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      loc_140289EBA
                test    al, 1
                jz      short loc_140289EBA
                cmp     sil, 0Fh
                ja      short loc_140289EBA
                mov     rax, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, sil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     short loc_140289EBA
; ---------------------------------------------------------------------------

loc_140289E72:                          ; CODE XREF: sub_140289B60+2BB↑j
                lea     rbx, unk_140C4F600
                cmp     al, 2
                jz      short loc_140289E84
                lea     rbx, [r14+0C0h]

loc_140289E84:                          ; CODE XREF: sub_140289B60+31B↑j
                mov     rcx, rbx
                call    ExAcquireSpinLockShared
                cmp     dword ptr [rbx+4], 0
                jz      short loc_140289EB3
                xor     ecx, ecx
                xchg    ecx, [rbx+4]
                jmp     short loc_140289EB3
; ---------------------------------------------------------------------------

loc_140289E99:                          ; CODE XREF: sub_140289B60+2A9↑j
                mov     rcx, r14
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                mov     dword ptr [rbx+4], 0

loc_140289EB3:                          ; CODE XREF: sub_140289B60+330↑j
                                        ; sub_140289B60+337↑j
                mov     ebx, [rsp+300h+var_2DC]
                movzx   esi, al

loc_140289EBA:                          ; CODE XREF: sub_140289B60+2D2↑j
                                        ; sub_140289B60+2DA↑j ...
                movzx   eax, word ptr [rbp+200h+var_260]
                mov     ecx, 0FFFDh

loc_140289EC3:                          ; CODE XREF: sub_140289B60+2A0↑j
                cmp     [rsp+300h+var_2D8], 0
                mov     byte ptr [rbp+200h+var_260+6], sil
                jz      short loc_140289F10
                cmp     [rsp+300h+var_2D4], 0
                jnz     short loc_140289EE5
                mov     edx, 0FFFBh
                and     ax, dx
                mov     edx, 1000h
                or      ax, dx

loc_140289EE5:                          ; CODE XREF: sub_140289B60+373↑j
                and     ax, cx
                mov     rcx, r14
                mov     word ptr [rbp+200h+var_260], ax
                call    sub_1402325E0
                lea     rcx, [rsp+300h+var_2A0]
                mov     qword ptr [rsp+300h+var_2A0], 0
                lea     rdx, [rax+40h]
                mov     qword ptr [rsp+300h+var_2A0+8], rdx
                call    sub_14024B3F0

loc_140289F10:                          ; CODE XREF: sub_140289B60+36C↑j
                cmp     [rsp+300h+var_2CC], 0
                jz      loc_14028A048
                test    bl, bl
                jnz     loc_14028A048
                mov     rax, r15
                mov     rcx, 0FFFFFFE00000h
                xor     rax, [rsp+300h+var_2C0]
                test    rcx, rax
                jnz     loc_14028A048
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, r14
                call    sub_1402258A0
                movsxd  rdx, eax
                test    eax, eax
                jz      loc_14028A048
                mov     rbx, r15
                mov     r8, 0FFFFF68000000000h
                shr     rbx, 9
                mov     r9, 7FFFFFFFF8h
                and     rbx, r9
                mov     rcx, r8
                add     rbx, rcx
                mov     rcx, rbx
                mov     [rsp+300h+var_288], rbx
                shr     rcx, 9
                and     rcx, r9
                mov     rax, r8
                add     rcx, rax
                mov     [rbp+200h+var_280], rcx
                shr     rcx, 9
                and     rcx, r9
                mov     rax, r8
                add     rcx, rax
                mov     [rbp+200h+var_278], rcx
                shr     rcx, 9
                and     rcx, r9
                mov     rax, r8
                add     rcx, rax
                mov     [rbp+200h+var_270], rcx
                mov     r15, [rsp+rdx*8+300h+var_288]
                cmp     edx, 1
                jnz     short loc_14028A038
                mov     rdi, [rsp+300h+var_2C0]
                shr     rdi, 9
                and     rdi, r9
                mov     rax, r8
                add     rdi, rax
                cmp     rbx, rdi
                ja      short loc_14028A002
                nop     word ptr [rax+rax+00000000h]

loc_140289FE0:                          ; CODE XREF: sub_140289B60+4A0↓j
                xor     r8d, r8d
                lea     rcx, [rbp+200h+var_260]
                mov     rdx, rbx
                call    sub_14028A280
                movzx   eax, byte ptr [rbp+200h+var_260+3]
                inc     eax
                mov     byte ptr [rbp+200h+var_260+3], 0
                lea     rbx, [rbx+rax*8]
                cmp     rbx, rdi
                jbe     short loc_140289FE0

loc_14028A002:                          ; CODE XREF: sub_140289B60+475↑j
                lea     rcx, [rbp+200h+var_260]
                call    sub_14028E9D0
                mov     rcx, [rsp+300h+var_2B0]
                call    sub_14029BB60
                mov     ecx, [rax+10h]
                mov     eax, [rsp+300h+var_2DC]
                shr     rcx, 10h
                and     ecx, 3FFh
                movzx   eax, al
                mov     ecx, 1
                cmovz   eax, ecx
                movzx   edi, cl
                mov     [rsp+300h+var_2DC], eax

loc_14028A038:                          ; CODE XREF: sub_140289B60+45E↑j
                mov     rdx, r15
                mov     rcx, r14
                call    sub_140312B40
                test    dil, dil
                jnz     short loc_14028A051

loc_14028A048:                          ; CODE XREF: sub_140289B60+3B5↑j
                                        ; sub_140289B60+3BD↑j ...
                lea     rcx, [rbp+200h+var_260]
                call    sub_140220490

loc_14028A051:                          ; CODE XREF: sub_140289B60+4E6↑j
                cmp     [rsp+300h+var_2D8], 0
                jz      short loc_14028A06E
                lea     rcx, [rsp+300h+var_2A0]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                cmp     [rsp+300h+var_2D4], 0
                jnz     short loc_14028A06E
                or      word ptr [rbp+200h+var_260], 4

loc_14028A06E:                          ; CODE XREF: sub_140289B60+4F6↑j
                                        ; sub_140289B60+507↑j
                test    r12b, r12b
                jnz     loc_14028A1A2
                test    byte ptr [rbp+200h+var_260], 4
                jz      loc_14028A196
                movzx   eax, byte ptr [r14+0B8h]
                and     al, 7
                cmp     al, 6
                jnb     loc_14028A132
                mov     eax, [r14+0B8h]
                mov     ecx, eax
                shr     ecx, 18h
                test    cl, 8
                jnz     short loc_14028A0AE
                test    cl, 4
                jnz     short loc_14028A0AE
                test    cl, 10h
                jz      short loc_14028A0C2

loc_14028A0AE:                          ; CODE XREF: sub_140289B60+542↑j
                                        ; sub_140289B60+547↑j
                movzx   edx, sil
                mov     rcx, r14
                call    sub_1403580AC
                movzx   eax, byte ptr [r14+0B8h]

loc_14028A0C2:                          ; CODE XREF: sub_140289B60+54C↑j
                and     al, 7
                lea     rbx, unk_140C4F600
                cmp     al, 2
                jz      short loc_14028A0D6
                lea     rbx, [r14+0C0h]

loc_14028A0D6:                          ; CODE XREF: sub_140289B60+56D↑j
                mov     edx, 1
                mov     rcx, r14
                call    sub_140226A50
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_14028A0FD
                mov     rdx, [rbp+208h]
                mov     rcx, rbx
                call    sub_1405B6074
                jmp     short loc_14028A107
; ---------------------------------------------------------------------------

loc_14028A0FD:                          ; CODE XREF: sub_140289B60+58A↑j
                lock and dword ptr [rbx], 0BFFFFFFFh
                lock dec dword ptr [rbx]

loc_14028A107:                          ; CODE XREF: sub_140289B60+59B↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14028A132
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14028A132
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14028A132
                call    sub_1403F2EC4

loc_14028A132:                          ; CODE XREF: sub_140289B60+52D↑j
                                        ; sub_140289B60+5BA↑j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14028A18C
                test    al, 1
                jz      short loc_14028A18C
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14028A18C
                cmp     sil, 0Fh
                ja      short loc_14028A18C
                cmp     al, 2
                jb      short loc_14028A18C
                mov     r10, gs:20h
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, sil
                inc     ecx
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14028A18C
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14028A18C:                          ; CODE XREF: sub_140289B60+5DA↑j
                                        ; sub_140289B60+5DE↑j ...
                movzx   eax, sil
                mov     cr8, rax
                jmp     short loc_14028A1A2
; ---------------------------------------------------------------------------

loc_14028A196:                          ; CODE XREF: sub_140289B60+51B↑j
                movzx   edx, sil
                mov     rcx, r14
                call    sub_140234180

loc_14028A1A2:                          ; CODE XREF: sub_140289B60+511↑j
                                        ; sub_140289B60+634↑j
                mov     rcx, [r13+28h]
                test    rcx, rcx
                jns     short loc_14028A1CB
                lea     rdx, [rsp+300h+var_2B8]
                mov     [rsp+300h+var_2B8], 0
                call    sub_14055E698
                mov     [r13+8], rax
                mov     rax, [rsp+300h+var_2B8]
                mov     [r13+28h], rax

loc_14028A1CB:                          ; CODE XREF: sub_140289B60+649↑j
                mov     rcx, [r13+20h]
                test    rcx, rcx
                jz      short loc_14028A1EB
                mov     rdx, qword ptr [rbp+200h+var_140]
                test    rdx, rdx
                jz      short loc_14028A1EB
                mov     r8d, 1
                call    sub_14054BDB8

loc_14028A1EB:                          ; CODE XREF: sub_140289B60+672↑j
                                        ; sub_140289B60+67E↑j
                mov     r10d, [rsp+300h+var_2D0]
                test    r10d, r10d
                jz      short loc_14028A21E
                mov     rbx, gs:188h
                mov     rax, [r13+20h]
                xor     edx, edx
                mov     rcx, [rax+20h]
                add     rcx, 38h ; '8'
                call    ExReleaseAutoExpandPushLockExclusive
                mov     rcx, rbx
                call    sub_140245770
                mov     r10d, [rsp+300h+var_2D0]

loc_14028A21E:                          ; CODE XREF: sub_140289B60+693↑j
                cmp     byte ptr [rsp+300h+var_2DC], 1
                jnz     short loc_14028A250
                mov     r15, [rsp+300h+var_2B0]
                mov     bl, 2
                mov     edx, [rsp+300h+var_2D8]
                mov     r8d, [rsp+300h+var_2D4]
                mov     r9, [rsp+300h+var_2C0]
                movzx   eax, [rsp+300h+var_2E0]
                mov     r11d, [rsp+300h+var_2C8]
                mov     r12d, [rbp+200h+arg_28]
                jmp     loc_140289C68
; ---------------------------------------------------------------------------

loc_14028A250:                          ; CODE XREF: sub_140289B60+6C3↑j
                mov     rcx, [rbp+200h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 2C8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140289B60
sub_140289B60   endp

algn_14028A274:                         ; DATA XREF: .pdata:00000001400CEC64↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14028A280   proc near               ; CODE XREF: sub_140289B60+48A↑p
                                        ; DATA XREF: .rdata:0000000140009160↑o ...

var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B4          = dword ptr -0B4h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_18          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                lea     rbp, [rsp-3Fh]
                sub     rsp, 0D8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_40], rax
                mov     rbx, [rdx]
                mov     rsi, rdx
                mov     rdx, 0FFFFF6FB7DBED000h
                mov     r9d, r8d
                mov     [rbp+57h+var_B4], r8d
                mov     rdi, rcx
                mov     rax, rdx
                mov     r11, 0FFFFF6FB7DBED7F8h
                cmp     rsi, rax
                jb      loc_14028A361
                mov     rax, r11
                cmp     rsi, rax
                ja      loc_14028A361
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14028A357
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14028A357
                test    bl, 1
                jz      short loc_14028A357
                test    bl, 20h
                jz      short loc_14028A30F
                test    bl, 42h
                jnz     short loc_14028A357

loc_14028A30F:                          ; CODE XREF: sub_14028A280+88↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028A357
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14028A357
                or      rbx, 42h

loc_14028A357:                          ; CODE XREF: sub_14028A280+65↑j
                                        ; sub_14028A280+7E↑j ...
                mov     rdx, 0FFFFF6FB7DBED000h
; } // starts at 14028A280

loc_14028A361:                          ; CODE XREF: sub_14028A280+49↑j
                                        ; sub_14028A280+55↑j
                                        ; DATA XREF: ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+0F0h+arg_18], r12
                mov     [rsp+0F0h+var_20], r13
                mov     [rsp+0F0h+var_28], r14
                mov     [rsp+0F0h+var_30], r15
                mov     [rbp+57h+var_80], rbx
                test    rbx, rbx
                jnz     loc_14028A486
                test    r9d, r9d
                jnz     loc_14028B39F
                mov     r10, [rdi+58h]
                mov     rax, rsi
                and     rax, 0FFFFFFFFFFFFF000h
                mov     r9b, 1
                add     rax, 0FF8h
                cmp     r10, rax
                cmova   r10, rax
                add     rsi, 8
                cmp     rsi, r10
                ja      loc_14028A47A

loc_14028A3C1:                          ; CODE XREF: sub_14028A280+1F4↓j
                mov     rcx, [rsi]
                mov     rax, rdx
                cmp     rsi, rax
                jb      loc_14028A462
                mov     rax, r11
                cmp     rsi, rax
                ja      loc_14028A462
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14028A458
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_14028A458
                test    cl, 1
                jz      short loc_14028A458
                test    cl, 20h
                jz      short loc_14028A410
                test    cl, 42h
                jnz     short loc_14028A458

loc_14028A410:                          ; CODE XREF: sub_14028A280+189↑j
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     r8, [rdx+788h]
                test    r8, r8
                jz      short loc_14028A458
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rcx
                or      r8, 20h
                movzx   edx, al
                and     dl, 20h
                cmovz   r8, rcx
                mov     rcx, r8
                test    al, 42h
                jz      short loc_14028A458
                or      rcx, 42h

loc_14028A458:                          ; CODE XREF: sub_14028A280+166↑j
                                        ; sub_14028A280+17F↑j ...
                mov     rdx, 0FFFFF6FB7DBED000h

loc_14028A462:                          ; CODE XREF: sub_14028A280+14A↑j
                                        ; sub_14028A280+156↑j
                test    rcx, rcx
                jnz     short loc_14028A47A
                add     r9b, 1
                jz      short loc_14028A47A
                add     rsi, 8
                cmp     rsi, r10
                jbe     loc_14028A3C1

loc_14028A47A:                          ; CODE XREF: sub_14028A280+13B↑j
                                        ; sub_14028A280+1E5↑j ...
                dec     r9b
                mov     [rdi+3], r9b
                jmp     loc_14028B39F
; ---------------------------------------------------------------------------

loc_14028A486:                          ; CODE XREF: sub_14028A280+108↑j
                mov     r13, [rdi+0A8h]
                mov     r15, rsi
                mov     r8, [rdi+18h]
                mov     r14, [rdi+10h]
                mov     [rbp+57h+var_A8], r13
                mov     r12d, [r13+68h]
                mov     [rbp+57h+var_C0], r8
                shl     r15, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                shl     rax, 19h
                sub     r15, rax
                sar     r15, 10h
                test    bl, 1
                jz      loc_14028B3DA
                cmp     r9d, 1
                jl      short loc_14028A4FB
                mov     rdx, rsi
                mov     rcx, rdi
                test    bl, bl
                jns     short loc_14028A4E6
                mov     r8d, r9d
                call    sub_14054FB5C
                jmp     loc_14028B39F
; ---------------------------------------------------------------------------

loc_14028A4E6:                          ; CODE XREF: sub_14028A280+257↑j
                call    sub_1402A8050
                test    eax, eax
                jz      loc_14028B39F
                mov     r8, [rbp+57h+var_C0]
                mov     r9d, [rbp+57h+var_B4]

loc_14028A4FB:                          ; CODE XREF: sub_14028A280+24D↑j
                test    byte ptr [r8+0B8h], 7
                jnz     loc_14028B269
                mov     rcx, 0FFFFF6FFFFFFFFFFh
                mov     rax, 7FFFFFFFF8h
                test    r9d, r9d
                jnz     loc_14028A832
                bt      r12d, 0Bh
                jnb     short loc_14028A54A
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14054FB5C
                xor     edx, edx
                mov     rcx, r14
                call    sub_14033B0A4
                jmp     loc_14028B39F
; ---------------------------------------------------------------------------

loc_14028A54A:                          ; CODE XREF: sub_14028A280+2AB↑j
                test    r12b, 10h
                jz      short loc_14028A57A
                mov     rcx, [r13+10h]
                lea     r8, [r13+70h]
                mov     rdx, rsi
                mov     rcx, [rcx+20h]
                call    sub_14054BD04
                xor     r9d, r9d
                mov     r8, rax
                mov     rdx, r15
                mov     rcx, r14
                call    sub_1402882E0
                jmp     loc_14028B326
; ---------------------------------------------------------------------------

loc_14028A57A:                          ; CODE XREF: sub_14028A280+2CE↑j
                test    r12b, 60h
                jz      short loc_14028A590
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14037E9A8
                jmp     loc_14028B326
; ---------------------------------------------------------------------------

loc_14028A590:                          ; CODE XREF: sub_14028A280+2FE↑j
                test    r12b, 8
                jz      short loc_14028A5E0
                mov     rcx, rsi
                call    sub_140342C88
                cmp     eax, 1
                jnz     short loc_14028A5D2
                xor     eax, eax
                lea     r9, [rbp+57h+var_68]
                xor     r8d, r8d
                mov     [rbp+57h+var_68], rax
                mov     rcx, rsi
                lea     edx, [rax+3]
                call    sub_140353B08
                xor     r9d, r9d
                mov     rdx, r15
                mov     rcx, r14
                lea     r8d, [r9+1]
                call    sub_1402882E0
                jmp     loc_14028B326
; ---------------------------------------------------------------------------

loc_14028A5D2:                          ; CODE XREF: sub_14028A280+321↑j
                mov     r8, [rbp+57h+var_C0]
                mov     rcx, 0FFFFF6FFFFFFFFFFh

loc_14028A5E0:                          ; CODE XREF: sub_14028A280+314↑j
                mov     eax, r12d
                and     al, 90h
                cmp     al, 80h
                jnz     loc_14028A828
                test    r12b, 2
                jz      loc_14028A710
                test    byte ptr [r8+0BBh], 1
                jnz     loc_14028A710
                cmp     cs:dword_140C4E6A8, 0
                jz      loc_14028A710
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                cmp     r15, rax
                jb      short loc_14028A630
                mov     rax, rcx
                cmp     r15, rax
                jbe     loc_14028A700

loc_14028A630:                          ; CODE XREF: sub_14028A280+3A2↑j
                mov     r8, r15
                mov     rax, 7FFFFFFFF8h
                shr     r8, 9
                and     r8, rax
                mov     rax, rdx
                add     r8, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rcx, [r8]
                mov     rax, rax
                cmp     r8, rax
                jb      loc_14028A6F0
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r8, rax
                ja      short loc_14028A6F0
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14028A6F0
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jz      short loc_14028A6F0
                test    cl, 1
                jz      short loc_14028A6F0
                test    cl, 20h
                jz      short loc_14028A6A9
                test    cl, 42h
                jnz     short loc_14028A6F0

loc_14028A6A9:                          ; CODE XREF: sub_14028A280+422↑j
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     rax, [rdx+788h]
                test    rax, rax
                jz      short loc_14028A6F0
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rcx
                or      r8, 20h
                movzx   edx, al
                and     dl, 20h
                cmovz   r8, rcx
                mov     rcx, r8
                test    al, 42h
                jz      short loc_14028A6F0
                or      rcx, 42h

loc_14028A6F0:                          ; CODE XREF: sub_14028A280+3DD↑j
                                        ; sub_14028A280+3F3↑j ...
                shr     rcx, 38h
                and     cl, 0Fh
                cmp     cl, 7
                jz      short loc_14028A710
                mov     r8, [rbp+57h+var_C0]

loc_14028A700:                          ; CODE XREF: sub_14028A280+3AA↑j
                test    byte ptr [rsi], 20h
                jz      short loc_14028A710
                mov     rdx, rsi
                mov     rcx, r8
                call    sub_14028CE50

loc_14028A710:                          ; CODE XREF: sub_14028A280+371↑j
                                        ; sub_14028A280+37F↑j ...
                lea     rcx, [rbp+57h+var_80]
                mov     rdi, rbx
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_14028A792
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14028A792
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14028A792
                test    bl, 20h
                jz      short loc_14028A74F
                test    bl, 42h
                jnz     short loc_14028A792

loc_14028A74F:                          ; CODE XREF: sub_14028A280+4C8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028A792
                or      rdi, 20h
                lea     rax, [rbp+57h+var_80]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdi, rbx
                test    al, 42h
                jz      short loc_14028A792
                or      rdi, 42h

loc_14028A792:                          ; CODE XREF: sub_14028A280+49E↑j
                                        ; sub_14028A280+4AA↑j ...
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                mov     rax, 0FFFFFA8000000000h
                lea     rdi, [rdi+rdi*2]
                shl     rdi, 4
                mov     rax, rax
                add     rdi, rax
                mov     rcx, 3FFFFFFFFFFFFFFFh
                mov     rax, [rdi+18h]
                and     rax, rcx
                cmp     rax, 1
                jnz     short loc_14028A828
                test    al, r12b
                jz      short loc_14028A7F1
                mov     rcx, rdi
                call    sub_14022FC60
                sub     eax, 3
                cmp     eax, 2
                ja      short loc_14028A7F1
                mov     edx, 2
                call    sub_14031B1DC

loc_14028A7F1:                          ; CODE XREF: sub_14028A280+555↑j
                                        ; sub_14028A280+565↑j
                test    r12b, 4
                jz      short loc_14028A828
                cmp     qword ptr [r13+58h], 0
                jnz     short loc_14028A828
                test    bl, 42h
                jnz     short loc_14028A828
                mov     rcx, rdi
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_14028A828
                test    byte ptr [rdi+22h], 10h
                jnz     short loc_14028A828
                call    sub_14022FC60
                cmp     eax, 5
                jnb     short loc_14028A828
                call    sub_140341438
                mov     [r13+58h], rax

loc_14028A828:                          ; CODE XREF: sub_14028A280+367↑j
                                        ; sub_14028A280+550↑j ...
                mov     rax, 7FFFFFFFF8h

loc_14028A832:                          ; CODE XREF: sub_14028A280+2A0↑j
                bt      r12d, 8
                jnb     short loc_14028A884
                xor     r9d, r9d
                mov     rdx, r15
                mov     rcx, r14
                lea     r8d, [r9+1]
                call    sub_1402882E0

loc_14028A84B:                          ; CODE XREF: sub_14028A280+1000↓j
                                        ; sub_14028A280+1016↓j ...
                mov     r13, [rbp+57h+var_C0]

loc_14028A84F:                          ; CODE XREF: sub_14028A280+DFF↓j
                                        ; sub_14028A280+EBA↓j ...
                and     rbx, 0FFFFFFFFFFFFFFFEh
                bts     rbx, 0Ah
                cmp     [rbp+57h+var_B4], 3
                mov     [rbp+57h+var_80], rbx
                jnz     loc_14028B2DF
                test    byte ptr [r13+0B8h], 7
                jz      loc_14028B2DF
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_14039EB7C
                jmp     loc_14028B326
; ---------------------------------------------------------------------------

loc_14028A884:                          ; CODE XREF: sub_14028A280+5B7↑j
                xor     r10d, r10d
                mov     [rbp+57h+var_88], r10
                cmp     [rbp+57h+var_B4], r10d
                jnz     loc_14028ABA6
                mov     r8, r15
                mov     r9, 0FFFFF68000000000h
                shr     r8, 9
                and     r8, rax
                mov     rax, r9
                add     r8, rax
                mov     rdi, 0FFFFF6FB7DBED000h
                mov     rdx, [r8]
                mov     rax, rdi
                mov     r11, 0FFFFF6FB7DBED7F8h
                cmp     r8, rax
                jb      short loc_14028A935
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_14028A935
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028A935
                test    dl, 1
                jz      short loc_14028A935
                test    dl, 20h
                jz      short loc_14028A8EE
                test    dl, 42h
                jnz     short loc_14028A935

loc_14028A8EE:                          ; CODE XREF: sub_14028A280+667↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14028A935
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028A935
                or      rdx, 42h

loc_14028A935:                          ; CODE XREF: sub_14028A280+64C↑j
                                        ; sub_14028A280+654↑j ...
                shr     rdx, 38h
                and     dl, 0Fh
                cmp     dl, 8
                jz      loc_14028ABA6
                mov     r8, r15
                lea     r12, [r13+78h]
                shr     r8, 9
                mov     rax, 7FFFFFFFF8h
                and     r8, rax
                mov     rax, r9
                add     r8, rax
                mov     rdx, [r8]
                mov     rax, rdi
                cmp     r8, rax
                jb      short loc_14028A9D5
                mov     rax, r11
                cmp     r8, rax
                ja      short loc_14028A9D5
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028A9D5
                test    dl, 1
                jz      short loc_14028A9D5
                test    dl, 20h
                jz      short loc_14028A98E
                test    dl, 42h
                jnz     short loc_14028A9D5

loc_14028A98E:                          ; CODE XREF: sub_14028A280+707↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14028A9D5
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028A9D5
                or      rdx, 42h

loc_14028A9D5:                          ; CODE XREF: sub_14028A280+6EC↑j
                                        ; sub_14028A280+6F4↑j ...
                mov     r9, rdx
                shr     rdx, 38h
                shr     r9, 3Ch
                and     dl, 0Fh
                and     r9b, 7
                shl     r9b, 4
                or      r9b, dl
                mov     rdx, [rsi]
                mov     [rbp+57h+var_B0], r9
                mov     rax, rdi
                cmp     rsi, rax
                jb      short loc_14028AA65
                mov     rax, r11
                cmp     rsi, rax
                ja      short loc_14028AA65
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028AA65
                test    dl, 1
                jz      short loc_14028AA65
                test    dl, 20h
                jz      short loc_14028AA1D
                test    dl, 42h
                jnz     short loc_14028AA65

loc_14028AA1D:                          ; CODE XREF: sub_14028A280+796↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14028AA65
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028AA65
                or      rdx, 42h

loc_14028AA65:                          ; CODE XREF: sub_14028A280+77B↑j
                                        ; sub_14028A280+783↑j ...
                mov     [rbp+57h+var_98], rdx
                mov     rax, rdi
                lea     rcx, [rbp+57h+var_98]
                cmp     rcx, rax
                jb      short loc_14028AAE2
                mov     rax, r11
                lea     rcx, [rbp+57h+var_98]
                cmp     rcx, rax
                ja      short loc_14028AAE2
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028AAE2
                test    dl, 1
                jz      short loc_14028AAE2
                test    dl, 20h
                jz      short loc_14028AA99
                test    dl, 42h
                jnz     short loc_14028AAE2

loc_14028AA99:                          ; CODE XREF: sub_14028A280+812↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14028AAE2
                lea     rax, [rbp+57h+var_98]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028AAE2
                or      rdx, 42h

loc_14028AAE2:                          ; CODE XREF: sub_14028A280+7F3↑j
                                        ; sub_14028A280+7FF↑j ...
                shr     rdx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                mov     r11, 0FFFFFA8000000000h
                lea     rcx, [rdx+rdx*2]
                shl     rcx, 4
                mov     rax, r11
                add     rcx, rax
                call    sub_1403F41D8
                test    eax, eax
                mov     r13d, r10d
                mov     rax, [r12+8]
                setz    r13b
                test    rax, rax
                jz      short loc_14028AB6E
                mov     rdi, [r12+10h]
                lea     rax, [rax+rdi*8]
                cmp     rsi, rax
                jnz     short loc_14028AB59
                cmp     r9b, [r12+1Ch]
                jnz     short loc_14028AB59
                mov     eax, [r12+18h]
                and     eax, 1
                cmp     r13d, eax
                jnz     short loc_14028AB59
                inc     rdi
                mov     [r12+10h], rdi
                mov     rax, [rsi]
                mov     [rbp+57h+var_68], rax
                jmp     loc_14028B326
; ---------------------------------------------------------------------------

loc_14028AB59:                          ; CODE XREF: sub_14028A280+8AF↑j
                                        ; sub_14028A280+8B6↑j ...
                mov     eax, [r12+18h]
                test    al, 2
                jnz     short loc_14028ABB0
                mov     rcx, r12
                call    sub_14028E340
                mov     r9, [rbp+57h+var_B0]

loc_14028AB6E:                          ; CODE XREF: sub_14028A280+8A1↑j
                mov     rax, [rbp+57h+var_C0]
                mov     edi, 1
                mov     [r12], rax
                mov     eax, [r12+18h]
                and     eax, 0FFFFFFFEh
                mov     [r12+8], rsi
                or      eax, r13d
                mov     [r12+1Ch], r9b
                mov     [r12+18h], eax
                mov     [r12+10h], rdi
                mov     rax, [rsi]
                mov     [rbp+57h+var_68], rax
                jmp     loc_14028B326
; ---------------------------------------------------------------------------

loc_14028ABA6:                          ; CODE XREF: sub_14028A280+60F↑j
                                        ; sub_14028A280+6BF↑j
                mov     r11, 0FFFFFA8000000000h

loc_14028ABB0:                          ; CODE XREF: sub_14028A280+8E0↑j
                mov     r12, r15
                mov     r13, 0FFFFF68000000000h
                shr     r12, 9
                mov     edi, 1
                mov     rax, 7FFFFFFFF8h
                mov     [rbp+57h+var_B8], edi
                and     r12, rax
                mov     rax, r13
                add     r12, rax
                mov     r8, 0FFFFF6FB7DBED000h
                mov     rdx, [r12]
                mov     rax, r8
                mov     rcx, 0FFFFF6FB7DBED7F8h
                cmp     r12, rax
                jb      short loc_14028AC78
                mov     rax, rcx
                cmp     r12, rax
                ja      short loc_14028AC78
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028AC64
                test    dil, dl
                jz      short loc_14028AC64
                test    dl, 20h
                jz      short loc_14028AC1C
                test    dl, 42h
                jnz     short loc_14028AC64

loc_14028AC1C:                          ; CODE XREF: sub_14028A280+995↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14028AC64
                mov     rax, r12
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028AC64
                or      rdx, 42h

loc_14028AC64:                          ; CODE XREF: sub_14028A280+98B↑j
                                        ; sub_14028A280+990↑j ...
                mov     rcx, 0FFFFF6FB7DBED7F8h
                mov     r8, 0FFFFF6FB7DBED000h

loc_14028AC78:                          ; CODE XREF: sub_14028A280+97A↑j
                                        ; sub_14028A280+982↑j
                shr     rdx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                lea     r9, [rdx+rdx*2]
                shl     r9, 4
                mov     rax, r11
                add     r9, rax
                mov     rax, r13
                cmp     r15, rax
                jb      short loc_14028ACE3
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r15, rax
                ja      short loc_14028ACE3
                movzx   r13d, byte ptr [r9]
                mov     rdx, r12
                mov     r8, cs:qword_14001D278
                xor     r9d, r9d
                mov     rcx, [rbp+57h+var_C0]
                shr     r13b, 1
                and     r13b, 7
                mov     dword ptr [rbp+57h+var_B0], r10d
                call    sub_14029B720
                test    eax, eax
                jz      loc_14028B39F
                jmp     loc_14028AEA5
; ---------------------------------------------------------------------------

loc_14028ACE3:                          ; CODE XREF: sub_14028A280+A1D↑j
                                        ; sub_14028A280+A2F↑j
                mov     rdx, [r12]
                mov     dword ptr [rbp+57h+var_B0], edi
                mov     rax, r8
                cmp     r12, rax
                jb      short loc_14028AD5A
                mov     rax, rcx
                cmp     r12, rax
                ja      short loc_14028AD5A
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028AD5A
                test    dil, dl
                jz      short loc_14028AD5A
                test    dl, 20h
                jz      short loc_14028AD12
                test    dl, 42h
                jnz     short loc_14028AD5A

loc_14028AD12:                          ; CODE XREF: sub_14028A280+A8B↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14028AD5A
                mov     rax, r12
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028AD5A
                or      rdx, 42h

loc_14028AD5A:                          ; CODE XREF: sub_14028A280+A70↑j
                                        ; sub_14028A280+A78↑j ...
                mov     r13, rdx
                mov     rcx, r9
                shr     r13, 3Ch
                and     r13b, 7
                shr     rdx, 38h
                shl     r13b, 4
                and     dl, 0Fh
                or      r13b, dl
                call    sub_1403F41D8
                test    eax, eax
                mov     ecx, r10d
                movzx   eax, r13b
                setz    cl
                and     al, 0Fh
                mov     [rbp+57h+var_B8], ecx
                cmp     al, 8
                jnz     short loc_14028ADAB
                mov     rcx, [rbp+57h+var_C0]
                mov     r8, r9
                mov     rdx, r15
                call    sub_1402DDB98
                mov     rdx, r15
                call    sub_1402DECC0
                movzx   r13d, al

loc_14028ADAB:                          ; CODE XREF: sub_14028A280+B0E↑j
                mov     rdx, cs:qword_14001D278
                mov     r8, [r12]
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rcx, r10
                mov     r9, 0FFFFF6FB7DBED7F8h
                cmp     r12, rcx
                jb      short loc_14028ADE7
                mov     rcx, r9
                cmp     r12, rcx
                ja      short loc_14028ADE7
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028ADE7
                or      r8, 20h

loc_14028ADE7:                          ; CODE XREF: sub_14028A280+B50↑j
                                        ; sub_14028A280+B58↑j ...
                mov     eax, cs:dword_140CFC400
                bt      eax, 0Bh
                jnb     short loc_14028ADFB
                mov     r8d, 20h ; ' '
                jmp     short loc_14028AE04
; ---------------------------------------------------------------------------

loc_14028ADFB:                          ; CODE XREF: sub_14028A280+B71↑j
                bt      eax, 1Ah
                jnb     short loc_14028AE04
                lfence

loc_14028AE04:                          ; CODE XREF: sub_14028A280+B79↑j
                                        ; sub_14028A280+B7F↑j
                test    r8b, 20h
                jnz     short loc_14028AE31
                mov     r11, rdx
                xchg    r11, [r12]
                mov     rax, r10
                cmp     r12, rax
                jb      short loc_14028AE29
                mov     rax, r9
                cmp     r12, rax
                ja      short loc_14028AE29
                mov     rcx, r12
                call    sub_140349620

loc_14028AE29:                          ; CODE XREF: sub_14028A280+B97↑j
                                        ; sub_14028A280+B9F↑j
                test    r11b, 20h
                jnz     short loc_14028AEA5
                jmp     short loc_14028AEA8
; ---------------------------------------------------------------------------

loc_14028AE31:                          ; CODE XREF: sub_14028A280+B88↑j
                mov     rax, r10
                cmp     r12, rax
                jb      short loc_14028AEA1
                mov     rax, r9
                cmp     r12, rax
                ja      short loc_14028AEA1
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028AE73
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14028AE65
                test    dil, dl
                jz      short loc_14028AE65
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14028AE65:                          ; CODE XREF: sub_14028A280+BD1↑j
                                        ; sub_14028A280+BD6↑j
                mov     rcx, r12
                mov     [r12], rdx
                call    sub_140349620
                jmp     short loc_14028AEA5
; ---------------------------------------------------------------------------

loc_14028AE73:                          ; CODE XREF: sub_14028A280+BC8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14028AEA1
                test    dil, dl
                jz      short loc_14028AEA1
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14028AEA1:                          ; CODE XREF: sub_14028A280+BB7↑j
                                        ; sub_14028A280+BBF↑j ...
                mov     [r12], rdx

loc_14028AEA5:                          ; CODE XREF: sub_14028A280+A5E↑j
                                        ; sub_14028A280+BAD↑j ...
                mov     dword ptr [rbp+57h+var_88], edi

loc_14028AEA8:                          ; CODE XREF: sub_14028A280+BAF↑j
                mov     eax, [rbp+57h+var_B8]
                movzx   r9d, r13b
                mov     r13, [rbp+57h+var_C0]
                mov     r8, rdi
                mov     [rsp+0F0h+var_C8], eax
                mov     rcx, r13
                mov     rdx, r15
                mov     dword ptr [rsp+0F0h+var_D0], 0Ah
                call    sub_14028B7E0
                cmp     dword ptr [rbp+57h+var_B0], 0
                jz      loc_14028B07C
                mov     r8, r15
                mov     rax, 0FFFFF6FB40000000h
                shr     r8, 12h
                and     r8d, 3FFFFFF8h
                mov     rax, rax
                add     r8, rax
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rdx, [r8]
                mov     rax, r10
                mov     r9, 0FFFFF6FB7DBED7F8h
                cmp     r8, rax
                jb      short loc_14028AF7B
                mov     rax, r9
                cmp     r8, rax
                ja      short loc_14028AF7B
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028AF7B
                test    dil, dl
                jz      short loc_14028AF7B
                test    dl, 20h
                jz      short loc_14028AF34
                test    dl, 42h
                jnz     short loc_14028AF7B

loc_14028AF34:                          ; CODE XREF: sub_14028A280+CAD↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14028AF7B
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028AF7B
                or      rdx, 42h

loc_14028AF7B:                          ; CODE XREF: sub_14028A280+C92↑j
                                        ; sub_14028A280+C9A↑j ...
                mov     [rbp+57h+var_90], rdx
                mov     rax, r10
                lea     rcx, [rbp+57h+var_90]
                cmp     rcx, rax
                jb      short loc_14028AFF8
                mov     rax, r9
                lea     rcx, [rbp+57h+var_90]
                cmp     rcx, rax
                ja      short loc_14028AFF8
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028AFF8
                test    dil, dl
                jz      short loc_14028AFF8
                test    dl, 20h
                jz      short loc_14028AFAF
                test    dl, 42h
                jnz     short loc_14028AFF8

loc_14028AFAF:                          ; CODE XREF: sub_14028A280+D28↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14028AFF8
                lea     rax, [rbp+57h+var_90]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028AFF8
                or      rdx, 42h

loc_14028AFF8:                          ; CODE XREF: sub_14028A280+D09↑j
                                        ; sub_14028A280+D15↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rdx, 0Ch
                and     rdx, rax
                mov     rax, 0FFFFFA8000000000h
                lea     r12, [rdx+rdx*2]
                shl     r12, 4
                mov     rax, rax
                add     r12, rax
                mov     eax, [r12]
                shr     rax, 4
                test    eax, 3FFh
                jnz     short loc_14028B07C
                lea     r8, [rbp+57h+var_60]
                mov     rdx, r15
                call    sub_1402FD640
                mov     cl, 8
                xchg    ax, ax

loc_14028B040:                          ; CODE XREF: sub_14028A280+DD0↓j
                add     cl, 0FFh
                movzx   eax, cl
                mov     edx, [rbp+rax*4+57h+var_60]
                test    edx, edx
                jnz     short loc_14028B054
                test    cl, cl
                jnz     short loc_14028B040
                jmp     short loc_14028B07C
; ---------------------------------------------------------------------------

loc_14028B054:                          ; CODE XREF: sub_14028A280+DCC↑j
                mov     rax, [r12]
                and     edx, 3FFh
                movzx   ecx, cl
                and     rax, 0FFFFFFFFFFFE000Fh
                and     ecx, 7
                shl     rcx, 0Ah
                or      rcx, rdx
                shl     rcx, 4
                or      rcx, rax
                mov     [r12], rcx

loc_14028B07C:                          ; CODE XREF: sub_14028A280+C51↑j
                                        ; sub_14028A280+DAE↑j ...
                cmp     dword ptr [rbp+57h+var_88], edi
                jnz     loc_14028A84F
                cmp     [r14], edi
                jz      short loc_14028B0BF
                movzx   ecx, byte ptr [r14+4]
                test    cl, 8
                jnz     short loc_14028B0BF
                mov     r9, 0FFFFF68000000000h
                mov     rax, r9
                cmp     r15, rax
                jb      short loc_14028B0BF
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r15, rax
                ja      short loc_14028B0BF
                or      cl, 8
                mov     [r14+4], cl

loc_14028B0BF:                          ; CODE XREF: sub_14028A280+E08↑j
                                        ; sub_14028A280+E12↑j ...
                mov     r10d, [r14+0Ch]
                movzx   r8d, byte ptr [r14+4]
                test    r10d, r10d
                jz      loc_14028B1B3
                test    r8b, 4
                jnz     short loc_14028B13F
                lea     eax, [r10-1]
                lea     r11, [r14+rax*8]
                mov     rax, [r14+rax*8+18h]
                test    rax, 0C00h
                jnz     short loc_14028B13F
                mov     r9, rax
                mov     rcx, rax
                and     r9d, 3FFh
                and     rcx, 0FFFFFFFFFFFFF000h
                lea     rdx, [r9+1]
                shl     rdx, 0Ch
                add     rdx, rcx
                cmp     rdx, r15
                jnz     short loc_14028B13F
                lea     rcx, [r9+1]
                cmp     rcx, r9
                jbe     short loc_14028B13F
                cmp     rcx, 3FFh
                ja      short loc_14028B13F
                inc     qword ptr [r14+10h]
                lea     rcx, [rax+1]
                xor     rcx, rax
                and     ecx, 3FFh
                xor     rcx, rax
                mov     [r11+18h], rcx
                jmp     loc_14028A84F
; ---------------------------------------------------------------------------

loc_14028B13F:                          ; CODE XREF: sub_14028A280+E55↑j
                                        ; sub_14028A280+E6A↑j ...
                test    r10d, r10d
                jz      short loc_14028B1B3
                test    r8b, 4
                jnz     short loc_14028B1B3
                lea     eax, [r10-1]
                lea     r8, [r14+rax*8]
                mov     rax, [r14+rax*8+18h]
                test    rax, 0C00h
                jnz     short loc_14028B1B3
                mov     rdx, rax
                lea     rcx, [r15+1000h]
                and     rdx, 0FFFFFFFFFFFFF000h
                cmp     rdx, rcx
                jnz     short loc_14028B1B3
                mov     rcx, rax
                and     ecx, 3FFh
                lea     rdx, [rcx+1]
                cmp     rdx, rcx
                jbe     short loc_14028B1B3
                cmp     rdx, 3FFh
                ja      short loc_14028B1B3
                inc     qword ptr [r14+10h]
                add     rax, 0FFFFFFFFFFFFF000h
                lea     rcx, [rax+1]
                xor     rcx, rax
                and     ecx, 3FFh
                xor     rcx, rax
                mov     [r8+18h], rcx
                jmp     loc_14028A84F
; ---------------------------------------------------------------------------

loc_14028B1B3:                          ; CODE XREF: sub_14028A280+E4B↑j
                                        ; sub_14028A280+EC2↑j ...
                cmp     r10d, [r14+8]
                jb      short loc_14028B1C2
                mov     [r14+5], dil
                jmp     loc_14028A84F
; ---------------------------------------------------------------------------

loc_14028B1C2:                          ; CODE XREF: sub_14028A280+F37↑j
                                        ; sub_14028A280+FC7↓j
                lea     rax, [rdi-1]
                mov     rcx, r15
                cmp     rax, 3FFh
                mov     edx, 400h
                cmovbe  rdx, rdi
                and     rcx, 0FFFFFFFFFFFFF000h
                sub     rdi, rdx
                lea     rax, [rdx-1]
                and     eax, 3FFh
                or      rax, rcx
                mov     rcx, rdx
                shl     rcx, 0Ch
                add     r15, rcx
                mov     ecx, [r14+0Ch]
                mov     [r14+rcx*8+18h], rax
                inc     dword ptr [r14+0Ch]
                mov     ecx, [r14+0Ch]
                add     [r14+10h], rdx
                cmp     ecx, [r14+8]
                jnz     short loc_14028B244
                test    byte ptr [r14+4], 4
                jnz     short loc_14028B244
                mov     edx, ecx
                lea     r9, sub_14033B080
                lea     rcx, [r14+18h]
                mov     r8d, 8
                call    qsort
                mov     rcx, r14
                call    sub_14033A660
                mov     eax, [r14+0Ch]
                cmp     eax, [r14+8]
                jz      short loc_14028B252

loc_14028B244:                          ; CODE XREF: sub_14028A280+F91↑j
                                        ; sub_14028A280+F98↑j
                test    rdi, rdi
                jnz     loc_14028B1C2
                jmp     loc_14028A84F
; ---------------------------------------------------------------------------

loc_14028B252:                          ; CODE XREF: sub_14028A280+FC2↑j
                test    rdi, rdi
                jz      loc_14028A84F
                mov     byte ptr [r14+5], 1
                mov     [r14+10h], rax
                jmp     loc_14028A84F
; ---------------------------------------------------------------------------

loc_14028B269:                          ; CODE XREF: sub_14028A280+283↑j
                xor     r9d, r9d
                mov     rdx, r15
                mov     rcx, r14
                lea     r8d, [r9+1]
                call    sub_1402882E0
                bt      r12d, 8
                jb      loc_14028A84B
                mov     r9, 0FFFFF68000000000h
                mov     rax, r9
                cmp     r15, rax
                jb      loc_14028A84B
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r15, rax
                ja      loc_14028A84B
                mov     rcx, [rbp+57h+var_C0]
                xor     eax, eax
                and     rbx, 0FFFFFFFFFFFFFFFEh
                mov     rdx, rsi
                bts     rbx, 0Ah
                cmp     [rbp+57h+var_B4], 1
                mov     r8, rbx
                setnle  al
                mov     r9d, eax
                call    sub_14029B720
                test    eax, eax
                jnz     short loc_14028B326
                jmp     loc_14028B39F
; ---------------------------------------------------------------------------

loc_14028B2DF:                          ; CODE XREF: sub_14028A280+5E0↑j
                                        ; sub_14028A280+5EE↑j
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     rsi, rax
                jb      short loc_14028B323
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rsi, rax
                ja      short loc_14028B323
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028B323
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     rcx, rsi
                mov     rdx, rbx
                mov     [rsi], rbx
                call    sub_140349620
                jmp     short loc_14028B326
; ---------------------------------------------------------------------------

loc_14028B323:                          ; CODE XREF: sub_14028A280+106F↑j
                                        ; sub_14028A280+1081↑j ...
                mov     [rsi], rbx

loc_14028B326:                          ; CODE XREF: sub_14028A280+2F5↑j
                                        ; sub_14028A280+30B↑j ...
                test    byte ptr [r14+4], 2
                mov     rdx, cs:qword_140C4DE10
                jnz     short loc_14028B35D
                cmp     dword ptr [r14], 1
                jnz     short loc_14028B35D
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                cmp     qword ptr [rcx+8F0h], 0
                cmovnz  rdx, rax

loc_14028B35D:                          ; CODE XREF: sub_14028A280+10B2↑j
                                        ; sub_14028A280+10B8↑j
                mov     eax, [r14+8]
                cmp     [r14+0Ch], eax
                jnb     short loc_14028B374
                cmp     byte ptr [r14+5], 0
                jnz     short loc_14028B374
                cmp     [r14+10h], rdx
                jbe     short loc_14028B38C

loc_14028B374:                          ; CODE XREF: sub_14028A280+10E5↑j
                                        ; sub_14028A280+10EC↑j
                cmp     rdx, 400h
                jb      short loc_14028B38C
                cmp     byte ptr [r14+5], 0
                jnz     short loc_14028B38C
                mov     rcx, r14
                call    sub_14028EDB0

loc_14028B38C:                          ; CODE XREF: sub_14028A280+10F2↑j
                                        ; sub_14028A280+10FB↑j ...
                mov     r13, [rbp+57h+var_A8]

loc_14028B390:                          ; CODE XREF: sub_14028A280+14EE↓j
                                        ; sub_14028A280+1501↓j ...
                cmp     qword ptr [r13+0], 0
                jnz     short loc_14028B39B
                mov     [r13+0], rsi

loc_14028B39B:                          ; CODE XREF: sub_14028A280+1115↑j
                mov     [r13+8], rsi

loc_14028B39F:                          ; CODE XREF: sub_14028A280+111↑j
                                        ; sub_14028A280+201↑j ...
                mov     r15, [rsp+0F0h+var_30]
                xor     eax, eax
                mov     r14, [rsp+0F0h+var_28]
                mov     r13, [rsp+0F0h+var_20]
                mov     r12, [rsp+0F0h+arg_18]
                mov     rcx, [rbp+57h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0D8h
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; } // starts at 14028A361
; ---------------------------------------------------------------------------
; __unwind { // __GSHandlerCheck
algn_14028B3D9:                         ; DATA XREF: .pdata:00000001400CEC7C↑o
                                        ; .pdata:00000001400CEC88↑o
                align 2
; } // starts at 14028B3D9

loc_14028B3DA:                          ; CODE XREF: sub_14028A280+243↑j
                                        ; DATA XREF: .pdata:00000001400CEC88↑o ...
                xor     r14d, r14d
                bt      rbx, 0Ah
                jnb     loc_14028B4C3
                mov     rcx, cs:qword_140C4DDC0
                mov     rdx, rbx
                test    rcx, rcx
                jz      short loc_14028B405
                test    bl, 10h
                jnz     short loc_14028B405
                mov     rdx, rcx
                not     rdx
                and     rdx, rbx

loc_14028B405:                          ; CODE XREF: sub_14028A280+1175↑j
                                        ; sub_14028A280+117A↑j
                sar     rdx, 10h
                mov     rax, rbx
                test    rcx, rcx
                jz      short loc_14028B41F
                test    bl, 10h
                jnz     short loc_14028B41F
                mov     rax, rcx
                not     rax
                and     rax, rbx

loc_14028B41F:                          ; CODE XREF: sub_14028A280+118F↑j
                                        ; sub_14028A280+1194↑j
                shr     rax, 20h
                mov     ecx, 0FFFFFFFFh
                cmp     rax, rcx
                jz      short loc_14028B43E
                bt      rbx, 0Bh
                jnb     short loc_14028B43E
                mov     rcx, r8
                call    sub_140366EF4
                jmp     short loc_14028B478
; ---------------------------------------------------------------------------

loc_14028B43E:                          ; CODE XREF: sub_14028A280+11AB↑j
                                        ; sub_14028A280+11B2↑j
                mov     rax, gs:188h
                mov     r8, [rax+0B8h]
                cmp     [r8+4F0h], r14
                jz      short loc_14028B49E
                mov     rcx, rbx
                call    sub_14031C870
                test    eax, eax
                jnz     short loc_14028B49E
                mov     rcx, r8
                call    sub_1402C6E74
                test    rax, rax
                jz      short loc_14028B49E
                mov     rcx, rax
                call    sub_14055A088

loc_14028B478:                          ; CODE XREF: sub_14028A280+11BC↑j
                cmp     eax, 3
                jnz     short loc_14028B487
                mov     rax, [r13+10h]
                inc     qword ptr [rax+8]
                jmp     short loc_14028B494
; ---------------------------------------------------------------------------

loc_14028B487:                          ; CODE XREF: sub_14028A280+11FB↑j
                cmp     eax, 5
                jnz     short loc_14028B494
                mov     rax, [r13+10h]
                inc     qword ptr [rax+10h]

loc_14028B494:                          ; CODE XREF: sub_14028A280+1205↑j
                                        ; sub_14028A280+120A↑j
                mov     r11, 0FFFFF6FB7DBED7F8h

loc_14028B49E:                          ; CODE XREF: sub_14028A280+11D5↑j
                                        ; sub_14028A280+11E1↑j ...
                mov     rdx, cs:qword_14001D278
                mov     r9, 0FFFFF6FB7DBED000h
                mov     rax, r9
                cmp     rsi, rax
                jb      loc_14028B60F
                mov     rax, r11
                jmp     loc_14028B5A1
; ---------------------------------------------------------------------------

loc_14028B4C3:                          ; CODE XREF: sub_14028A280+1162↑j
                bt      rbx, 0Bh
                jb      loc_14028B750
                test    rbx, 3E0h
                jz      loc_14028B7A0
                mov     rax, cs:qword_140C4E4C8
                movzx   ecx, word ptr [r8+0AEh]
                mov     [rbp+57h+var_78], rbx
                mov     rdi, [rax+rcx*8]
                movzx   eax, bl
                shr     al, 2
                test    al, 1
                jz      short loc_14028B507
                lea     rcx, [rbp+57h+var_78]
                call    sub_1402805F0
                jmp     short loc_14028B51E
; ---------------------------------------------------------------------------

loc_14028B507:                          ; CODE XREF: sub_14028A280+127A↑j
                movzx   eax, bl
                shr     al, 1
                test    al, 1
                jz      short loc_14028B51B
                lea     rcx, [rbp+57h+var_78]
                call    sub_1402805F0
                jmp     short loc_14028B51E
; ---------------------------------------------------------------------------

loc_14028B51B:                          ; CODE XREF: sub_14028A280+128E↑j
                mov     rax, r14

loc_14028B51E:                          ; CODE XREF: sub_14028A280+1285↑j
                                        ; sub_14028A280+1299↑j
                mov     [rbp+57h+var_78], rax
                test    rax, rax
                jz      short loc_14028B535
                xor     r8d, r8d
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_14020B2C0

loc_14028B535:                          ; CODE XREF: sub_14028A280+12A5↑j
                mov     rax, [rbp+57h+var_C0]
                movzx   eax, byte ptr [rax+0B8h]
                test    al, 7
                jnz     short loc_14028B573
                test    r12b, r12b
                jns     short loc_14028B57B
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14028B560
                test    bl, 10h
                jnz     short loc_14028B560
                not     rax
                and     rbx, rax

loc_14028B560:                          ; CODE XREF: sub_14028A280+12D3↑j
                                        ; sub_14028A280+12D8↑j
                bt      rbx, 0Ah
                jb      short loc_14028B573
                bt      rbx, 0Bh
                jb      short loc_14028B573
                test    bl, 4
                jz      short loc_14028B57B

loc_14028B573:                          ; CODE XREF: sub_14028A280+12C2↑j
                                        ; sub_14028A280+12E5↑j ...
                mov     rax, [r13+10h]
                inc     qword ptr [rax+18h]

loc_14028B57B:                          ; CODE XREF: sub_14028A280+12C7↑j
                                        ; sub_14028A280+12F1↑j
                mov     rdx, cs:qword_14001D278
                mov     r9, 0FFFFF6FB7DBED000h
                mov     rax, r9
                cmp     rsi, rax
                jb      short loc_14028B60F
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax

loc_14028B5A1:                          ; CODE XREF: sub_14028A280+123E↑j
                cmp     rsi, rax
                ja      short loc_14028B60F
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028B5E1
                cmp     byte ptr cs:word_140C4DE88+1, r14b
                jnz     short loc_14028B5CA
                test    dl, 1
                jz      short loc_14028B5CA
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14028B5CA:                          ; CODE XREF: sub_14028A280+1336↑j
                                        ; sub_14028A280+133B↑j
                mov     rcx, rsi
                mov     [rsi], rdx
                call    sub_140349620
                mov     r9, 0FFFFF6FB7DBED000h
                jmp     short loc_14028B612
; ---------------------------------------------------------------------------

loc_14028B5E1:                          ; CODE XREF: sub_14028A280+132D↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14028B60F
                test    dl, 1
                jz      short loc_14028B60F
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14028B60F:                          ; CODE XREF: sub_14028A280+1235↑j
                                        ; sub_14028A280+1312↑j ...
                mov     [rsi], rdx

loc_14028B612:                          ; CODE XREF: sub_14028A280+135F↑j
                test    r12b, r12b
                jns     loc_14028B39F
                mov     rax, r9
                cmp     rsi, rax
                jb      short loc_14028B636
                mov     rax, 0FFFFF6FB7DBEDFFFh
                cmp     rsi, rax
                jbe     loc_14028B39F

loc_14028B636:                          ; CODE XREF: sub_14028A280+13A1↑j
                shr     r15, 12h
                and     r15d, 3FFFFFF8h
                mov     rax, 0FFFFF6FB40000000h
                mov     rax, rax
                add     r15, rax
                mov     rax, [r15]
                mov     rdx, r9
                mov     r8, 0FFFFF6FB7DBED7F8h
                cmp     r15, rdx
                jb      short loc_14028B683
                mov     rdx, r8
                cmp     r15, rdx
                ja      short loc_14028B683
                mov     rdx, rax
                mov     rcx, r15
                call    sub_1402A8730
                mov     r8, 0FFFFF6FB7DBED7F8h

loc_14028B683:                          ; CODE XREF: sub_14028A280+13E4↑j
                                        ; sub_14028A280+13EC↑j
                mov     [rbp+57h+var_70], rax
                mov     rcx, r9
                lea     rdx, [rbp+57h+var_70]
                cmp     rdx, rcx
                jb      short loc_14028B6AB
                mov     rcx, r8
                lea     rdx, [rbp+57h+var_70]
                cmp     rdx, rcx
                ja      short loc_14028B6AB
                mov     rdx, rax
                lea     rcx, [rbp+57h+var_70]
                call    sub_1402A8730

loc_14028B6AB:                          ; CODE XREF: sub_14028A280+1411↑j
                                        ; sub_14028A280+141D↑j
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                lea     rbx, [rax+rax*2]
                mov     rax, 0FFFFFA8000000000h
                shl     rbx, 4
                mov     rax, rax
                add     rbx, rax
                mov     r9d, [rbx+10h]
                shr     r9, 10h
                and     r9d, 3FFh
                cmp     r9, 1
                jb      loc_14028B7BB
                mov     [rbp+57h+var_A0], r14d
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jnb     short loc_14028B71B
                nop     word ptr [rax+rax+00h]

loc_14028B700:                          ; CODE XREF: sub_14028A280+1490↓j
                                        ; sub_14028A280+1499↓j
                lea     rcx, [rbp+57h+var_A0]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_14028B700
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_14028B700

loc_14028B71B:                          ; CODE XREF: sub_14028A280+1478↑j
                mov     rdx, [rbx+10h]
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     rcx, rdx
                shr     rcx, 10h
                dec     ecx
                shl     rcx, 10h
                xor     rcx, rdx
                and     ecx, 3FF0000h
                xor     rcx, rdx
                mov     [rbx+10h], rcx
                lock and [rbx+18h], rax
                jmp     loc_14028B39F
; ---------------------------------------------------------------------------

loc_14028B750:                          ; CODE XREF: sub_14028A280+1248↑j
                bt      r12d, 0Bh
                jnb     short loc_14028B76A
                mov     r8d, r9d
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14054FB5C
                jmp     loc_14028B39F
; ---------------------------------------------------------------------------

loc_14028B76A:                          ; CODE XREF: sub_14028A280+14D5↑j
                test    r12b, 10h
                jz      loc_14028B390
                and     ebx, 3E0h
                cmp     rbx, 300h
                jnz     loc_14028B390
                mov     rcx, [r13+10h]
                lea     r8, [r13+70h]
                mov     rdx, rsi
                mov     rcx, [rcx+20h]
                call    sub_14054BD04
                jmp     loc_14028B390
; ---------------------------------------------------------------------------

loc_14028B7A0:                          ; CODE XREF: sub_14028A280+1255↑j
                xor     eax, eax
                mov     r9, rbx
                mov     r8, rsi
                mov     [rsp+0F0h+var_D0], rax
                mov     edx, 41792h
                lea     ecx, [rax+1Ah]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14028B7BB:                          ; CODE XREF: sub_14028A280+1467↑j
                mov     edi, 1
                mov     r8, rbx
                mov     edx, 41790h
                mov     [rsp+0F0h+var_D0], rdi
                lea     ecx, [rdi+19h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_14028A280   endp

algn_14028B7D6:                         ; DATA XREF: .pdata:00000001400CEC94↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14028B7E0   proc near               ; CODE XREF: sub_140289320+28B↑p
                                        ; sub_14028A280+C48↑p ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 0000000140445320 SIZE 0000022D BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                movzx   eax, byte ptr [rcx+0B8h]
                xor     r14d, r14d
                and     al, 7
                mov     [rsp+88h+var_58], r14
                movzx   edi, r9b
                mov     r15, r8
                mov     rbp, rdx
                mov     rbx, rcx
                cmp     al, 2
                jz      loc_14028BC2B
                lea     rsi, [rcx+100h]

loc_14028B826:                          ; CODE XREF: sub_14028B7E0+452↓j
                mov     [rsp+88h+var_60], rsi
                mov     [rsp+88h+var_68], r14
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140445320

loc_14028B849:                          ; CODE XREF: sub_14028B7E0+1B9B44↓j
                                        ; sub_14028B7E0+1B9B53↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140445344
                lea     rdx, [rsp+88h+var_68]
                xchg    rdx, [rsi]
                test    rdx, rdx
                jnz     loc_14028BC02

loc_14028B867:                          ; CODE XREF: sub_14028B7E0+42C↓j
                                        ; sub_14028B7E0+1B9B72↓j
                mov     r13, 0FFFFF68000000000h
                mov     rdx, 0FFFFF6FFFFFFFFFFh
                cmp     [rsp+88h+arg_28], r14d
                jnz     loc_14028BA84

loc_14028B889:                          ; CODE XREF: sub_14028B7E0+2C9↓j
                                        ; sub_14028B7E0+320↓j
                movzx   eax, byte ptr [rbx+0B8h]
                mov     rsi, 7FFFFFFFF8h
                and     al, 7
                cmp     al, 4
                jz      loc_14028BB76

loc_14028B8A4:                          ; CODE XREF: sub_14028B7E0+3FC↓j
                                        ; sub_14028B7E0+1B9B7E↓j
                movzx   ecx, byte ptr [rbx+0B8h]
                sub     [rbx+88h], r15
                and     cl, 7
                mov     rax, r13
                cmp     rbp, rax
                jnb     loc_14028BAC9

loc_14028B8C1:                          ; CODE XREF: sub_14028B7E0+2EF↓j
                sub     [rbx+78h], r15
                and     dil, 0Fh
                mov     r12d, 1
                cmp     dil, 8
                jz      loc_14028B9B7

loc_14028B8D9:                          ; CODE XREF: sub_14028B7E0+304↓j
                mov     rsi, r15
                neg     rsi
                mov     rax, r13
                cmp     rbp, rax
                jnb     loc_14028BAE9

loc_14028B8EB:                          ; CODE XREF: sub_14028B7E0+315↓j
                mov     rdx, rbp
                shr     rdx, 12h
                and     edx, 3FFFFFF8h
                mov     rcx, 0FFFFF6FB40000000h
                add     rdx, rcx
                mov     r14, [rdx]
                mov     rax, 0FFFFF6FB7DBED000h
                cmp     rdx, rax
                jnb     loc_14028BB5E

loc_14028B91B:                          ; CODE XREF: sub_14028B7E0+38B↓j
                                        ; sub_14028B7E0+1B9B8D↓j ...
                lea     rcx, [rsp+88h+arg_8]
                mov     [rsp+88h+arg_8], r14
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404453FD

loc_14028B938:                          ; CODE XREF: sub_14028B7E0+1B9C27↓j
                                        ; sub_14028B7E0+1B9C44↓j ...
                shr     r14, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     r14, rax
                lea     rdx, [r14+r14*2]
                shl     rdx, 4
                mov     rax, 0FFFFFA8000000000h
                add     rdx, rax
                mov     r8, [rdx]
                mov     rax, r8
                mov     rcx, r8
                shr     rax, 0Eh
                and     al, 7
                shr     rcx, 4
                and     ecx, 3FFh
                jz      short loc_14028B997
                cmp     dil, al
                jnz     loc_14028BAAE
                add     ecx, esi
                shl     rcx, 4
                xor     rcx, r8
                and     ecx, 3FF0h
                xor     rcx, r8

loc_14028B994:                          ; CODE XREF: sub_14028B7E0+1B9CE2↓j
                mov     [rdx], rcx

loc_14028B997:                          ; CODE XREF: sub_14028B7E0+197↑j
                                        ; sub_14028B7E0:loc_14028BAAE↓j
                xor     r14d, r14d

loc_14028B99A:                          ; CODE XREF: sub_14028B7E0+30F↓j
                movzx   eax, dil
                add     [rbx+rax*8+28h], rsi
                cmp     dil, 7
                jz      loc_14028BAB9

loc_14028B9AD:                          ; CODE XREF: sub_14028B7E0+2E4↓j
                mov     rsi, 7FFFFFFFF8h

loc_14028B9B7:                          ; CODE XREF: sub_14028B7E0+F3↑j
                                        ; sub_14028B7E0+2FA↓j
                movzx   eax, byte ptr [rbx+0B8h]
                and     al, 7
                cmp     al, 2
                jz      loc_1404454C7

loc_14028B9C8:                          ; CODE XREF: sub_14028B7E0+1B9CF2↓j
                                        ; sub_14028B7E0+1B9CFF↓j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_1404454E4
                prefetchw byte ptr [rsp+88h+var_68]
                mov     rax, [rsp+88h+var_68]
                test    rax, rax
                jnz     loc_14028BC1B
                mov     rcx, [rsp+88h+var_60]
                lea     rax, [rsp+88h+var_68]
                lock cmpxchg [rcx], r14
                lea     rcx, [rsp+88h+var_68]
                cmp     rax, rcx
                jnz     loc_14028BC11

loc_14028BA05:                          ; CODE XREF: sub_14028B7E0+446↓j
                                        ; sub_14028B7E0+1B9D17↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404454FC

loc_14028BA1E:                          ; CODE XREF: sub_14028B7E0+1B9D20↓j
                                        ; sub_14028B7E0+1B9D2F↓j ...
                cmp     r12d, 1
                jnz     short loc_14028BA53
                mov     edi, [rsp+88h+arg_20]
                cmp     edi, 9
                jz      loc_14028BB08
                cmp     edi, 0Ah
                jnz     short loc_14028BA53
                mov     rcx, rbp
                shr     rcx, 9
                and     rcx, rsi
                mov     rax, r13
                movzx   ecx, byte ptr [rcx+rax]
                test    r12b, cl
                jnz     loc_14028BB08

loc_14028BA53:                          ; CODE XREF: sub_14028B7E0+242↑j
                                        ; sub_14028B7E0+257↑j ...
                test    dword ptr cs:xmmword_140CFC480+4, 8000000h
                mov     rbx, [rsp+88h+arg_0]
                jnz     loc_140445520

loc_14028BA6B:                          ; CODE XREF: sub_14028B7E0+1B9D43↓j
                                        ; sub_14028B7E0+1B9D68↓j
                mov     rbx, [rsp+88h+arg_10]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14028BA84:                          ; CODE XREF: sub_14028B7E0+A3↑j
                sub     [rbx+90h], r15
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+88h+var_50], xmm0
                mov     [rsp+88h+var_40], rax
                mov     rax, r13
                cmp     rbp, rax
                jnb     short loc_14028BAFA

loc_14028BAA2:                          ; CODE XREF: sub_14028B7E0+326↓j
                sub     [rbx+80h], r15
                jmp     loc_14028B889
; ---------------------------------------------------------------------------

loc_14028BAAE:                          ; CODE XREF: sub_14028B7E0+19C↑j
                jbe     loc_14028B997
                jmp     loc_14044549E
; ---------------------------------------------------------------------------

loc_14028BAB9:                          ; CODE XREF: sub_14028B7E0+1C7↑j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402898C0
                jmp     loc_14028B9AD
; ---------------------------------------------------------------------------

loc_14028BAC9:                          ; CODE XREF: sub_14028B7E0+DB↑j
                mov     rax, rdx
                cmp     rbp, rax
                ja      loc_14028B8C1
                mov     r12d, r14d
                test    cl, cl
                jnz     loc_14028B9B7
                and     dil, 0Fh
                jmp     loc_14028B8D9
; ---------------------------------------------------------------------------

loc_14028BAE9:                          ; CODE XREF: sub_14028B7E0+105↑j
                mov     rax, rdx
                cmp     rbp, rax
                jbe     loc_14028B99A
                jmp     loc_14028B8EB
; ---------------------------------------------------------------------------

loc_14028BAFA:                          ; CODE XREF: sub_14028B7E0+2C0↑j
                mov     rax, rdx
                cmp     rbp, rax
                jbe     loc_14028B889
                jmp     short loc_14028BAA2
; ---------------------------------------------------------------------------

loc_14028BB08:                          ; CODE XREF: sub_14028B7E0+24E↑j
                                        ; sub_14028B7E0+26D↑j
                and     dil, 0Fh
                test    r15, r15
                jz      loc_14028BA53
                mov     rsi, rbp
                mov     r14, r15
                mov     ebx, 80000000h
                mov     r12, 7FFFFFFFF8h
                nop     word ptr [rax+rax+00h]

loc_14028BB30:                          ; CODE XREF: sub_14028B7E0+377↓j
                mov     rcx, rsi
                shr     rcx, 9
                and     rcx, r12
                mov     rax, r13
                add     rcx, rax
                movzx   r8d, dil
                mov     rdx, rbx
                call    sub_1402C67E0
                add     rsi, 1000h
                sub     r14, 1
                jnz     short loc_14028BB30
                jmp     loc_14028BA53
; ---------------------------------------------------------------------------

loc_14028BB5E:                          ; CODE XREF: sub_14028B7E0+135↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                cmp     rdx, rax
                ja      loc_14028B91B
                jmp     loc_140445363
; ---------------------------------------------------------------------------

loc_14028BB76:                          ; CODE XREF: sub_14028B7E0+BE↑j
                mov     rax, cs:qword_140CFC470
                test    rax, rax
                jz      short loc_14028BB94
                cmp     rbp, cs:qword_140CFC640
                jb      short loc_14028BBE1

loc_14028BB8B:                          ; CODE XREF: sub_14028B7E0+404↓j
                cmp     rbp, cs:qword_140CFC648
                jb      short loc_14028BBF4

loc_14028BB94:                          ; CODE XREF: sub_14028B7E0+3A0↑j
                                        ; sub_14028B7E0+41B↓j
                mov     rcx, rbp
                call    sub_140245330
                cmp     eax, 0Ch
                jnz     short loc_14028BBD2
                mov     rcx, rbp
                shr     rcx, 9
                and     rcx, rsi
                mov     rax, r13
                add     rcx, rax
                shl     rcx, 19h
                mov     rax, r13
                shl     rax, 19h
                mov     edx, 2
                sub     rcx, rax
                sar     rcx, 10h
                call    sub_14033EE44
                test    rax, rax
                jnz     short loc_14028BBEB

loc_14028BBD2:                          ; CODE XREF: sub_14028B7E0+3BF↑j
                                        ; sub_14028B7E0+412↓j
                mov     rdx, 0FFFFF6FFFFFFFFFFh
                jmp     loc_14028B8A4
; ---------------------------------------------------------------------------

loc_14028BBE1:                          ; CODE XREF: sub_14028B7E0+3A9↑j
                cmp     rbp, rax
                jb      short loc_14028BB8B
                jmp     loc_140445357
; ---------------------------------------------------------------------------

loc_14028BBEB:                          ; CODE XREF: sub_14028B7E0+3F0↑j
                sub     dword ptr cs:xmmword_140C4CBC8+4, r15d
                jmp     short loc_14028BBD2
; ---------------------------------------------------------------------------

loc_14028BBF4:                          ; CODE XREF: sub_14028B7E0+3B2↑j
                cmp     rbp, cs:qword_140CFC500
                jb      short loc_14028BB94
                jmp     loc_140445357
; ---------------------------------------------------------------------------

loc_14028BC02:                          ; CODE XREF: sub_14028B7E0+81↑j
                lea     rcx, [rsp+88h+var_68]
                call    sub_14025FC20
                jmp     loc_14028B867
; ---------------------------------------------------------------------------

loc_14028BC11:                          ; CODE XREF: sub_14028B7E0+21F↑j
                lea     rcx, [rsp+88h+var_68]
                call    sub_140313680

loc_14028BC1B:                          ; CODE XREF: sub_14028B7E0+202↑j
                mov     [rsp+88h+var_68], r14
                lock xor qword ptr [rax+8], 1
                jmp     loc_14028BA05
; ---------------------------------------------------------------------------

loc_14028BC2B:                          ; CODE XREF: sub_14028B7E0+39↑j
                lea     rsi, unk_140C4F640
                jmp     loc_14028B826
sub_14028B7E0   endp

; ---------------------------------------------------------------------------
algn_14028BC37:                         ; DATA XREF: .rdata:000000014005EF80↑o
                                        ; .pdata:00000001400CECA0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14028BC40   proc near               ; DATA XREF: .rdata:00000001400090E0↑o
                                        ; .pdata:00000001400CECAC↑o ...

var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_8], rdx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                mov     rdi, [rcx+0A8h]
                mov     r14, rdx
                mov     r13, [rcx+18h]
                mov     r12, rcx
                cmp     byte ptr [rdi+6], 1
                mov     r15, [r13+10h]
                jnz     loc_14028BE58
                mov     byte ptr [rdi+6], 0
                mov     r15, [r13+10h]
                mov     rsi, [r13+88h]
                mov     rax, [r15+20h]
                cmp     rsi, rax
                jbe     loc_14028C16D
                mov     r14d, [rdi]
                sub     rsi, rax
                mov     r12d, [rdi+0Ch]
                xor     ebx, ebx
                test    r14b, 4
                jnz     loc_14028BDF6
                movzx   eax, byte ptr [r13+0B8h]
                lea     rbp, unk_140C4F640
                and     al, 7
                mov     [rsp+98h+var_58], rbx
                cmp     al, 2
                jz      short loc_14028BCD1
                lea     rbp, [r13+100h]

loc_14028BCD1:                          ; CODE XREF: sub_14028BC40+88↑j
                mov     [rsp+98h+var_60], rbp
                mov     [rsp+98h+var_68], rbx
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14028BD06
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14028BD06
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14028BD06
                call    sub_1403F2EC4

loc_14028BD06:                          ; CODE XREF: sub_14028BC40+AE↑j
                                        ; sub_14028BC40+B4↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_14028BD1E
                mov     rdx, rbp
                lea     rcx, [rsp+98h+var_68]
                call    sub_14051652C
                jmp     short loc_14028BD36
; ---------------------------------------------------------------------------

loc_14028BD1E:                          ; CODE XREF: sub_14028BC40+CD↑j
                lea     rdx, [rsp+98h+var_68]
                xchg    rdx, [rbp+0]
                test    rdx, rdx
                jz      short loc_14028BD36
                lea     rcx, [rsp+98h+var_68]
                call    sub_14025FC20

loc_14028BD36:                          ; CODE XREF: sub_14028BC40+DC↑j
                                        ; sub_14028BC40+EA↑j
                xor     edx, edx
                mov     rcx, r12
                test    r14b, 2
                jz      short loc_14028BD55
                mov     r14d, [r15+18h]
                lea     rbp, [r14+rsi]
                mov     rax, rbp
                div     rcx
                mov     [r15+18h], edx
                jmp     short loc_14028BD67
; ---------------------------------------------------------------------------

loc_14028BD55:                          ; CODE XREF: sub_14028BC40+FF↑j
                mov     r14d, [r15+1Ch]
                lea     rbp, [r14+rsi]
                mov     rax, rbp
                div     rcx
                mov     [r15+1Ch], edx

loc_14028BD67:                          ; CODE XREF: sub_14028BC40+113↑j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_14028BD84
                mov     rdx, [rsp+98h]
                lea     rcx, [rsp+98h+var_68]
                call    sub_1405165EC
                jmp     short loc_14028BDC1
; ---------------------------------------------------------------------------

loc_14028BD84:                          ; CODE XREF: sub_14028BC40+12E↑j
                prefetchw byte ptr [rsp+98h+var_68]
                mov     rax, [rsp+98h+var_68]
                test    rax, rax
                jnz     short loc_14028BDB6
                mov     rcx, [rsp+98h+var_60]
                lea     rax, [rsp+98h+var_68]
                lock cmpxchg [rcx], rbx
                lea     rcx, [rsp+98h+var_68]
                cmp     rax, rcx
                jz      short loc_14028BDC1
                lea     rcx, [rsp+98h+var_68]
                call    sub_140313680

loc_14028BDB6:                          ; CODE XREF: sub_14028BC40+151↑j
                mov     [rsp+98h+var_68], rbx
                lock xor qword ptr [rax+8], 1

loc_14028BDC1:                          ; CODE XREF: sub_14028BC40+142↑j
                                        ; sub_14028BC40+16A↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14028BDEC
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14028BDEC
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14028BDEC
                call    sub_1403F2EC4

loc_14028BDEC:                          ; CODE XREF: sub_14028BC40+194↑j
                                        ; sub_14028BC40+19A↑j ...
                cmp     rbp, rsi
                cmovb   r14, rbx
                mov     rbx, r14

loc_14028BDF6:                          ; CODE XREF: sub_14028BC40+6A↑j
                lea     rcx, [rbx+rsi]
                mov     r9, 624DD2F1A9FBE77h
                imul    rcx, r12
                mov     rax, r9
                mul     rcx
                sub     rcx, rdx
                shr     rcx, 1
                add     rcx, rdx
                shr     rcx, 9
                cmp     rcx, rsi
                jbe     short loc_14028BE3A
                mov     rcx, r12
                mov     rax, r9
                imul    rcx, rsi
                mul     rcx
                sub     rcx, rdx
                shr     rcx, 1
                add     rcx, rdx
                shr     rcx, 9

loc_14028BE3A:                          ; CODE XREF: sub_14028BC40+1DE↑j
                mov     [rdi+30h], rcx
                cmp     [rdi+28h], rcx
                jnb     loc_14028C16D
                mov     r14, [rsp+98h+arg_8]
                mov     r12, [rsp+98h+arg_0]

loc_14028BE58:                          ; CODE XREF: sub_14028BC40+38↑j
                mov     rdx, 0FFFFF68000000000h
                mov     rbp, rdx
                shl     r14, 19h
                mov     rax, 7FFFFFFFF8h
                shl     rbp, 19h
                sub     r14, rbp
                sar     r14, 10h
                mov     rsi, r14
                shr     rsi, 9
                and     rsi, rax
                mov     rax, rdx
                add     rsi, rax
                mov     rbx, [rsi]
                mov     rax, 0FFFFF6FB7DBED000h
                cmp     rsi, rax
                jb      loc_14028BF2F
                mov     rax, 0FFFFF6FB7DBED7F8h
                cmp     rsi, rax
                ja      short loc_14028BF2F
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14028BF2F
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14028BF2F
                test    bl, 1
                jz      short loc_14028BF2F
                test    bl, 20h
                jz      short loc_14028BEE7
                test    bl, 42h
                jnz     short loc_14028BF2F

loc_14028BEE7:                          ; CODE XREF: sub_14028BC40+2A0↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028BF2F
                mov     rax, rsi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14028BF2F
                or      rbx, 42h

loc_14028BF2F:                          ; CODE XREF: sub_14028BC40+25E↑j
                                        ; sub_14028BC40+271↑j ...
                lea     rcx, [rsp+98h+arg_18]
                mov     [rsp+98h+arg_18], rbx
                call    sub_1402433C0
                test    eax, eax
                jz      loc_14028BFCD
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_14028BFCD
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      short loc_14028BFCD
                test    bl, 1
                jz      short loc_14028BFCD
                test    bl, 20h
                jz      short loc_14028BF80
                test    bl, 42h
                jnz     short loc_14028BFCD

loc_14028BF80:                          ; CODE XREF: sub_14028BC40+339↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028BFCD
                lea     rax, [rsp+98h+arg_18]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, rbx
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, rbx
                mov     rbx, rdx
                test    al, 42h
                jz      short loc_14028BFCD
                or      rbx, 42h

loc_14028BFCD:                          ; CODE XREF: sub_14028BC40+306↑j
                                        ; sub_14028BC40+316↑j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                lea     rbx, [rbx+rbx*2]
                shl     rbx, 4
                mov     rax, 0FFFFFA8000000000h
                mov     r8d, [rsp+98h+arg_10]
                add     rbx, rax
                test    r8d, r8d
                jnz     short loc_14028C006
                lea     rdx, [rsi+8]
                jmp     short loc_14028C063
; ---------------------------------------------------------------------------

loc_14028C006:                          ; CODE XREF: sub_14028BC40+3BE↑j
                mov     rdx, rsi
                mov     r10, 0FFFFF68000000000h
                shl     rdx, 19h
                sub     rdx, rbp
                add     rdx, 10000000h
                sar     rdx, 10h
                mov     rcx, rdx
                shl     rcx, 19h
                sub     rcx, rbp
                sar     rcx, 10h
                mov     rax, r10
                cmp     rcx, rax
                jb      short loc_14028C063
                mov     r9, 0FFFFF6FFFFFFFFFFh

loc_14028C045:                          ; CODE XREF: sub_14028BC40+421↓j
                mov     rax, r9
                cmp     rcx, rax
                ja      short loc_14028C063
                mov     rdx, rcx
                shl     rcx, 19h
                sub     rcx, rbp
                sar     rcx, 10h
                mov     rax, r10
                cmp     rcx, rax
                jnb     short loc_14028C045

loc_14028C063:                          ; CODE XREF: sub_14028BC40+3C4↑j
                                        ; sub_14028BC40+3F9↑j ...
                mov     eax, [rdi]
                test    al, 2
                jz      short loc_14028C06F
                mov     [r15+10h], rdx
                jmp     short loc_14028C077
; ---------------------------------------------------------------------------

loc_14028C06F:                          ; CODE XREF: sub_14028BC40+427↑j
                test    al, 4
                jnz     short loc_14028C077
                mov     [r15+8], rdx

loc_14028C077:                          ; CODE XREF: sub_14028BC40+42D↑j
                                        ; sub_14028BC40+431↑j
                test    r8d, r8d
                jz      short loc_14028C0AA
                mov     rax, [rbx+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                cmp     rax, 1
                jnz     loc_14028C174
                mov     rdx, rsi
                mov     rcx, r13
                call    sub_14034381C
                test    eax, eax
                jnz     loc_14028C174

loc_14028C0AA:                          ; CODE XREF: sub_14028BC40+43A↑j
                mov     rcx, 1000000000h
                test    [rbx+28h], rcx
                jnz     short loc_14028C0F2
                mov     r8, [rbx+8]
                test    r8, r8
                js      short loc_14028C0F2
                jz      short loc_14028C0F2
                mov     rax, 8000000000000000h
                mov     rdx, rsi
                or      r8, rax
                mov     rcx, r13
                call    sub_14036B290
                cmp     eax, 1
                jnz     short loc_14028C0F2
                mov     rcx, rsi
                call    sub_1402805F0
                mov     [rsp+98h+arg_18], rax

loc_14028C0F2:                          ; CODE XREF: sub_14028BC40+478↑j
                                        ; sub_14028BC40+481↑j ...
                mov     r9, [rsp+98h+arg_18]
                shr     r9, 5
                and     r9d, 1
                jz      short loc_14028C135
                mov     rcx, [rdi+0F8h]
                test    rcx, rcx
                jz      short loc_14028C135
                mov     rax, 7FFFFFFEFFFFh
                cmp     r14, rax
                ja      short loc_14028C135
                mov     rdx, r14
                call    sub_14053B5D0
                test    eax, eax
                jz      short loc_14028C15F
                mov     rcx, r12
                call    sub_14031FBD0
                jmp     short loc_14028C176
; ---------------------------------------------------------------------------

loc_14028C135:                          ; CODE XREF: sub_14028BC40+4C2↑j
                                        ; sub_14028BC40+4CE↑j ...
                mov     eax, [rdi]
                mov     r8d, r9d
                or      r8d, 2
                mov     rdx, rsi
                and     al, 3
                mov     rcx, r13
                cmovz   r8d, r9d
                mov     r9, rbx
                mov     [rsp+98h+var_70], r8d
                mov     r8, r14
                mov     [rsp+98h+var_78], rdi
                call    sub_14028C190

loc_14028C15F:                          ; CODE XREF: sub_14028BC40+4E9↑j
                inc     qword ptr [rdi+28h]
                mov     rax, [rdi+28h]
                cmp     rax, [rdi+30h]
                jb      short loc_14028C174

loc_14028C16D:                          ; CODE XREF: sub_14028BC40+54↑j
                                        ; sub_14028BC40+202↑j
                mov     eax, 3
                jmp     short loc_14028C176
; ---------------------------------------------------------------------------

loc_14028C174:                          ; CODE XREF: sub_14028BC40+451↑j
                                        ; sub_14028BC40+464↑j ...
                xor     eax, eax

loc_14028C176:                          ; CODE XREF: sub_14028BC40+4F3↑j
                                        ; sub_14028BC40+532↑j
                add     rsp, 58h
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
                db 0CCh
sub_14028BC40   endp

algn_14028C188:                         ; DATA XREF: .pdata:00000001400CECAC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14028C190   proc near               ; CODE XREF: sub_14028BC40+51A↑p
                                        ; sub_14053ADA0+135↓p ...

var_38          = dword ptr -38h
var_30          = dword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                mov     [rsp+arg_8], rdx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, rdx
                mov     rbp, r9
                mov     rdx, 0FFFFF68000000000h
                mov     r14, r8
                mov     r13, rcx
                mov     rax, rdx
                mov     r9, 0FFFFF6FB7DBED000h
                mov     r15, 0FFFFFFFFFh
                mov     r8, 0FFFFF6FB7DBED7F8h
                mov     rbx, 0FFFFFA8000000000h
                mov     rcx, 0FFFFF6FFFFFFFFFFh
                cmp     r14, rax
                jb      short loc_14028C244
                mov     rax, rcx
                cmp     r14, rax
                ja      short loc_14028C244
                mov     rdi, r14
                mov     rax, 7FFFFFFFF8h
                shr     rdi, 9
                and     rdi, rax
                mov     rax, rdx
                add     rdi, rax
                mov     rcx, rdi
                call    sub_1402805F0
                shr     rax, 0Ch
                and     rax, r15
                lea     rdx, [rax+rax*2]
                add     rdx, rdx
                mov     rax, rbx
                movzx   edx, byte ptr [rax+rdx*8]
                shr     dl, 1
                and     dl, 7
                jmp     loc_14028C2D8
; ---------------------------------------------------------------------------

loc_14028C244:                          ; CODE XREF: sub_14028C190+69↑j
                                        ; sub_14028C190+71↑j
                mov     rdi, r14
                mov     rax, 7FFFFFFFF8h
                shr     rdi, 9
                and     rdi, rax
                mov     rax, rdx
                add     rdi, rax
                mov     rdx, [rdi]
                mov     rax, r9
                cmp     rdi, rax
                jb      short loc_14028C2D1
                mov     rax, r8
                cmp     rdi, rax
                ja      short loc_14028C2D1
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028C2D1
                test    dl, 1
                jz      short loc_14028C2D1
                test    dl, 20h
                jz      short loc_14028C289
                test    dl, 42h
                jnz     short loc_14028C2D1

loc_14028C289:                          ; CODE XREF: sub_14028C190+F2↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jz      short loc_14028C2D1
                mov     rax, rdi
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028C2D1
                or      rdx, 42h

loc_14028C2D1:                          ; CODE XREF: sub_14028C190+D7↑j
                                        ; sub_14028C190+DF↑j ...
                shr     rdx, 38h
                and     dl, 0Fh

loc_14028C2D8:                          ; CODE XREF: sub_14028C190+AF↑j
                mov     r15d, [rsp+58h+arg_28]

loc_14028C2E0:                          ; DATA XREF: .rdata:000000014005EFCC↑o
                                        ; .rdata:000000014005EFDC↑o ...
                mov     [rsp+58h+arg_0], r12
                test    r15b, 1
                jz      loc_14028C3F7
                lea     eax, [rdx-1]
                mov     r12d, 1
                cmp     al, 5
                ja      short loc_14028C30F
                xor     r9d, r9d
                mov     r8d, r12d
                mov     rdx, r14
                mov     rcx, r13
                call    sub_14027FDE0
                jmp     short loc_14028C314
; ---------------------------------------------------------------------------

loc_14028C30F:                          ; CODE XREF: sub_14028C190+16A↑j
                cmp     dl, 7
                jz      short loc_14028C336

loc_14028C314:                          ; CODE XREF: sub_14028C190+17D↑j
                movzx   eax, byte ptr [rbp+23h]
                test    al, 8
                jnz     short loc_14028C336
                and     eax, 7
                cmp     eax, 5
                jnb     short loc_14028C336
                mov     edx, 5
                mov     rcx, rbp
                call    sub_14031B1DC
                mov     rsi, [rsp+58h+arg_8]

loc_14028C336:                          ; CODE XREF: sub_14028C190+182↑j
                                        ; sub_14028C190+18A↑j ...
                mov     rdi, [rsp+58h+arg_20]
                xor     ebx, ebx
                mov     eax, ebx
                test    r15b, 2
                jz      short loc_14028C34E
                mov     rbx, [rdi+38h]
                jmp     short loc_14028C356
; ---------------------------------------------------------------------------

loc_14028C34E:                          ; CODE XREF: sub_14028C190+1B6↑j
                test    r15b, 4
                cmovnz  eax, r12d

loc_14028C356:                          ; CODE XREF: sub_14028C190+1BC↑j
                mov     [rsp+58h+var_30], eax
                mov     r9, rbx
                mov     eax, cs:dword_140C4E6A8
                mov     r8, rsi
                mov     rdx, rbp
                mov     [rsp+58h+var_38], eax
                mov     rcx, r13
                call    sub_14028C600
                test    eax, eax
                jz      short loc_14028C37D
                inc     qword ptr [rdi+18h]

loc_14028C37D:                          ; CODE XREF: sub_14028C190+1E7↑j
                test    rbx, rbx
                jz      loc_14028C5D4
                test    byte ptr [rbx+4], 2
                mov     rdx, cs:qword_140C4DE10
                jnz     short loc_14028C3BB
                cmp     [rbx], r12d
                jnz     short loc_14028C3BB
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, 0FFFFFFFFFFFFFFFFh
                cmp     qword ptr [rcx+8F0h], 0
                cmovnz  rdx, rax

loc_14028C3BB:                          ; CODE XREF: sub_14028C190+201↑j
                                        ; sub_14028C190+206↑j
                mov     eax, [rbx+8]
                cmp     [rbx+0Ch], eax
                jnb     short loc_14028C3D3
                cmp     byte ptr [rbx+5], 0
                jnz     short loc_14028C3D3
                cmp     [rbx+10h], rdx
                jbe     loc_14028C5D4

loc_14028C3D3:                          ; CODE XREF: sub_14028C190+231↑j
                                        ; sub_14028C190+237↑j
                cmp     rdx, 400h
                jb      loc_14028C5D4
                cmp     byte ptr [rbx+5], 0
                jnz     loc_14028C5D4
                mov     rcx, rbx
                call    sub_14028EDB0
                jmp     loc_14028C5D4
; ---------------------------------------------------------------------------

loc_14028C3F7:                          ; CODE XREF: sub_14028C190+159↑j
                movzx   eax, byte ptr [rbp+23h]
                test    al, 8
                jz      short loc_14028C406
                mov     esi, 5
                jmp     short loc_14028C40B
; ---------------------------------------------------------------------------

loc_14028C406:                          ; CODE XREF: sub_14028C190+26D↑j
                mov     esi, eax
                and     esi, 7

loc_14028C40B:                          ; CODE XREF: sub_14028C190+274↑j
                mov     rbx, [rsp+58h+arg_20]
                mov     r12d, 1
                cmp     dl, 6
                jnb     short loc_14028C446
                cmp     esi, 5
                jnb     short loc_14028C427
                mov     dl, 6
                jmp     short loc_14028C430
; ---------------------------------------------------------------------------

loc_14028C427:                          ; CODE XREF: sub_14028C190+291↑j
                mov     eax, [rbx]
                test    r12b, al
                jz      short loc_14028C446
                inc     dl

loc_14028C430:                          ; CODE XREF: sub_14028C190+295↑j
                movzx   r9d, dl
                mov     r8d, r12d
                mov     rdx, r14
                mov     rcx, r13
                call    sub_14027FDE0
                inc     qword ptr [rbx+10h]

loc_14028C446:                          ; CODE XREF: sub_14028C190+28C↑j
                                        ; sub_14028C190+29C↑j
                mov     rcx, rbp
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_14028C458
                movzx   eax, byte ptr [rbx+5]
                jmp     short loc_14028C45C
; ---------------------------------------------------------------------------

loc_14028C458:                          ; CODE XREF: sub_14028C190+2C0↑j
                movzx   eax, byte ptr [rbx+4]

loc_14028C45C:                          ; CODE XREF: sub_14028C190+2C6↑j
                test    al, al
                movzx   r15d, al
                movzx   eax, byte ptr [r13+0B8h]
                mov     ecx, 7
                cmovz   r15d, ecx
                and     al, cl
                cmp     al, 3
                jnz     short loc_14028C4A8
                mov     rax, [rbp+28h]
                shr     rax, 3Ch
                and     al, cl
                cmp     al, 4
                jnz     short loc_14028C4A8
                mov     rax, [rbp+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                cmp     rax, r12
                jnz     short loc_14028C4A8
                cmp     [rbp+20h], r12w
                jz      loc_14028C5A7

loc_14028C4A8:                          ; CODE XREF: sub_14028C190+2E7↑j
                                        ; sub_14028C190+2F5↑j ...
                mov     eax, [rbx]
                test    al, 3
                jz      loc_14028C5D4
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                cmp     r14, rax
                jb      short loc_14028C511
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     r14, rax
                ja      short loc_14028C511
                mov     rcx, rdi
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                mov     rcx, 0FFFFFA8000000000h
                lea     rax, [rax+rax*2]
                add     rax, rax
                mov     rdx, rcx
                movzx   edx, byte ptr [rdx+rax*8]
                shr     dl, 1
                and     dl, 7
                jmp     loc_14028C59D
; ---------------------------------------------------------------------------

loc_14028C511:                          ; CODE XREF: sub_14028C190+332↑j
                                        ; sub_14028C190+344↑j
                mov     rdx, [rdi]
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rax, rax
                cmp     rdi, rax
                jb      short loc_14028C596
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     rdi, rax
                ja      short loc_14028C596
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028C596
                test    r12b, dl
                jz      short loc_14028C596
                test    dl, 20h
                jz      short loc_14028C550
                test    dl, 42h
                jnz     short loc_14028C596

loc_14028C550:                          ; CODE XREF: sub_14028C190+3B9↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14028C596
                shr     rdi, 3
                mov     r8, rdx
                and     edi, 1FFh
                or      r8, 20h
                mov     rax, [rax+rdi*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028C596
                or      rdx, 42h

loc_14028C596:                          ; CODE XREF: sub_14028C190+394↑j
                                        ; sub_14028C190+3A6↑j ...
                shr     rdx, 38h
                and     dl, 0Fh

loc_14028C59D:                          ; CODE XREF: sub_14028C190+37C↑j
                cmp     dl, r15b
                jnb     short loc_14028C5A7
                cmp     esi, [rbx+8]
                jnb     short loc_14028C5D4

loc_14028C5A7:                          ; CODE XREF: sub_14028C190+312↑j
                                        ; sub_14028C190+410↑j
                inc     qword ptr [rbx+20h]
                lea     rcx, [rbx+40h]
                xor     r9d, r9d
                mov     r8, r12
                mov     rdx, r14
                call    sub_1402882E0
                mov     eax, [rbx+48h]
                cmp     [rbx+4Ch], eax
                jnz     short loc_14028C5D4
                xor     r8d, r8d
                lea     rdx, [rbx+40h]
                mov     rcx, r13
                call    sub_140279D90

loc_14028C5D4:                          ; CODE XREF: sub_14028C190+1F0↑j
                                        ; sub_14028C190+23D↑j ...
                mov     r12, [rsp+58h+arg_0]
                mov     rbx, [rsp+58h+arg_10]
                mov     rbp, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
algn_14028C5F0:                         ; DATA XREF: .pdata:00000001400CECC4↑o
                                        ; .pdata:00000001400CECD0↑o ...
                align 20h
sub_14028C190   endp


; =============== S U B R O U T I N E =======================================


sub_14028C600   proc near               ; CODE XREF: sub_14028C190+1E0↑p
                                        ; sub_140367BA4+24E↓p ...

var_58          = dword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     eax, eax
                mov     rsi, r8
                xorps   xmm0, xmm0
                mov     [rsp+78h+var_40], rax
                mov     r14, r8
                mov     [rsp+78h+arg_10], eax
                movups  [rsp+78h+var_50], xmm0
                shl     rsi, 19h
                mov     rdi, r9
                mov     rbx, rdx
                mov     r8, 0FFFFF68000000000h
                mov     r12, rcx
                xor     r13d, r13d
                xor     ebp, ebp
                xor     r15d, r15d
                mov     rax, r8
                movzx   ecx, byte ptr [rcx+0B8h]
                shl     rax, 19h
                sub     rsi, rax
                mov     r9, 0FFFFF6FFFFFFFFFFh
                sar     rsi, 10h
                and     cl, 7
                jz      short loc_14028C68C
                mov     rax, r8
                cmp     rsi, rax
                jb      short loc_14028C68C
                mov     rax, r9
                cmp     rsi, rax
                jbe     loc_14028C85A

loc_14028C68C:                          ; CODE XREF: sub_14028C600+76↑j
                                        ; sub_14028C600+7E↑j
                mov     rdx, 3FFFFFFFFFFFFFFFh
                mov     r10, 7FFFFFFFF8h
                test    cl, cl
                jz      short loc_14028C707
                mov     rax, [rbx+18h]
                and     rax, rdx
                cmp     rax, 1
                jbe     short loc_14028C6C1
                mov     rcx, rbx
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_14028C85A

loc_14028C6C1:                          ; CODE XREF: sub_14028C600+AF↑j
                cmp     word ptr [rbx+20h], 1
                ja      loc_14028C85A
                mov     ebp, 1
                test    rdi, rdi
                jz      short loc_14028C74E
                mov     rax, r8
                cmp     rsi, rax
                jb      short loc_14028C707
                mov     rax, r9
                cmp     rsi, rax
                ja      short loc_14028C707
                mov     rcx, r14
                shr     rcx, 9
                and     rcx, r10
                mov     rax, r8
                add     rcx, rax
                mov     rax, 0FFFFF6FB7DBEDF68h
                cmp     rcx, rax
                setz    r13b

loc_14028C707:                          ; CODE XREF: sub_14028C600+A2↑j
                                        ; sub_14028C600+DC↑j ...
                test    rdi, rdi
                jz      short loc_14028C730
                mov     rax, r8
                cmp     rsi, rax
                jb      short loc_14028C730
                mov     rax, r9
                cmp     rsi, rax
                ja      short loc_14028C730
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, r12
                mov     r15d, 1
                call    sub_140225CC0

loc_14028C730:                          ; CODE XREF: sub_14028C600+10A↑j
                                        ; sub_14028C600+112↑j ...
                test    ebp, ebp
                jz      loc_14028C861
                test    r13d, r13d
                jz      short loc_14028C74E
                lea     rdx, [rsp+78h+var_50]
                lea     rcx, qword_140C4ECC0
                call    KeAcquireInStackQueuedSpinLock

loc_14028C74E:                          ; CODE XREF: sub_14028C600+D4↑j
                                        ; sub_14028C600+13B↑j
                mov     [rsp+78h+var_58], 0
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                mov     [rsp+78h+arg_10], 1
                jnb     short loc_14028C78C
                nop     word ptr [rax+rax+00h]

loc_14028C770:                          ; CODE XREF: sub_14028C600+181↓j
                                        ; sub_14028C600+18A↓j
                lea     rcx, [rsp+78h+var_58]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_14028C770
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_14028C770

loc_14028C78C:                          ; CODE XREF: sub_14028C600+168↑j
                mov     rax, [rbx+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                cmp     rax, 1
                jbe     short loc_14028C7AF
                mov     rcx, rbx
                call    sub_1403F41D8
                test    eax, eax
                jz      short loc_14028C7C9

loc_14028C7AF:                          ; CODE XREF: sub_14028C600+1A1↑j
                test    byte ptr [r12+0B8h], 7
                jz      loc_14028C861
                cmp     word ptr [rbx+20h], 1
                jbe     loc_14028C861

loc_14028C7C9:                          ; CODE XREF: sub_14028C600+1AD↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                test    r13d, r13d
                jz      short loc_14028C84A
                lea     rcx, [rsp+78h+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+78h+var_40]
                test    eax, eax
                jz      short loc_14028C846
                test    al, 1
                jz      short loc_14028C846
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14028C846
                cmp     bl, 0Fh
                ja      short loc_14028C846
                cmp     al, 2
                jb      short loc_14028C846
                mov     r10, gs:20h
                mov     r9, 0FFFFFFFFFFFFFFFFh
                mov     r8, [r10+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rsp+78h+var_40]
                inc     ecx
                shl     r9, cl
                movzx   eax, r9w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14028C846
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14028C846:                          ; CODE XREF: sub_14028C600+1F4↑j
                                        ; sub_14028C600+1F8↑j ...
                mov     cr8, rbx

loc_14028C84A:                          ; CODE XREF: sub_14028C600+1DB↑j
                test    r15d, r15d
                jz      short loc_14028C85A
                mov     rdx, r14
                mov     rcx, r12
                call    sub_140312B40

loc_14028C85A:                          ; CODE XREF: sub_14028C600+86↑j
                                        ; sub_14028C600+BB↑j ...
                xor     eax, eax
                jmp     loc_14028CE2E
; ---------------------------------------------------------------------------

loc_14028C861:                          ; CODE XREF: sub_14028C600+132↑j
                                        ; sub_14028C600+1B8↑j ...
                mov     r10, 0FFFFF6FB7DBED000h
                mov     rbp, 0FFFFF6FB7DBED7F8h
                test    rdi, rdi
                jz      loc_14028CD45
                test    r15d, r15d
                jz      short loc_14028C8AB
                mov     rcx, r14
                call    sub_1402805F0
                mov     r8, 0CFFFFFFFFFFFFFDFh
                mov     r9d, r13d
                and     r8, rax
                mov     rdx, r14
                mov     rcx, r12
                call    sub_14029B94C
                jmp     loc_14028CA33
; ---------------------------------------------------------------------------

loc_14028C8AB:                          ; CODE XREF: sub_14028C600+281↑j
                mov     rdx, [r14]
                mov     r8, rdx
                mov     rax, r10
                cmp     r14, rax
                jb      short loc_14028C91E
                mov     rax, rbp
                cmp     r14, rax
                ja      short loc_14028C91E
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028C91E
                test    r8b, 1
                jz      short loc_14028C91E
                test    r8b, 20h
                jz      short loc_14028C8DC
                test    r8b, 42h
                jnz     short loc_14028C91E

loc_14028C8DC:                          ; CODE XREF: sub_14028C600+2D4↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r9, [rcx+788h]
                test    r9, r9
                jz      short loc_14028C91E
                or      r8, 20h
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r9+rax*8]
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                test    al, 42h
                jz      short loc_14028C91E
                or      r8, 42h

loc_14028C91E:                          ; CODE XREF: sub_14028C600+2B7↑j
                                        ; sub_14028C600+2BF↑j ...
                mov     rax, r10
                cmp     r14, rax
                jb      short loc_14028C98E
                mov     rax, rbp
                cmp     r14, rax
                ja      short loc_14028C98E
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028C98E
                test    dl, 1
                jz      short loc_14028C98E
                test    dl, 20h
                jz      short loc_14028C946
                test    dl, 42h
                jnz     short loc_14028C98E

loc_14028C946:                          ; CODE XREF: sub_14028C600+33F↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r9, [rcx+788h]
                test    r9, r9
                jz      short loc_14028C98E
                mov     rax, r14
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r9+rax*8]
                mov     r9, rdx
                or      r9, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r9, rdx
                mov     rdx, r9
                test    al, 42h
                jz      short loc_14028C98E
                or      rdx, 42h

loc_14028C98E:                          ; CODE XREF: sub_14028C600+324↑j
                                        ; sub_14028C600+32C↑j ...
                mov     rax, rdx
                mov     rcx, 0F00000000000000h
                and     rax, rcx
                mov     rcx, 0F0FFFFFFFFFFFFDFh
                and     r8, rcx
                mov     rcx, 7000000000000000h
                or      rax, r8
                xor     rdx, rax
                and     rdx, rcx
                xor     rdx, rax
                mov     rax, r10
                cmp     r14, rax
                jb      short loc_14028CA30
                mov     rax, rbp
                cmp     r14, rax
                ja      short loc_14028CA30
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028CA02
                cmp     byte ptr cs:word_140C4DE88+1, 0
                jnz     short loc_14028C9F5
                test    dl, 1
                jz      short loc_14028C9F5
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14028C9F5:                          ; CODE XREF: sub_14028C600+3E1↑j
                                        ; sub_14028C600+3E6↑j
                mov     rcx, r14
                mov     [r14], rdx
                call    sub_140349620
                jmp     short loc_14028CA33
; ---------------------------------------------------------------------------

loc_14028CA02:                          ; CODE XREF: sub_14028C600+3D8↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_14028CA30
                test    dl, 1
                jz      short loc_14028CA30
                mov     rax, 8000000000000000h
                or      rdx, rax

loc_14028CA30:                          ; CODE XREF: sub_14028C600+3C7↑j
                                        ; sub_14028C600+3CF↑j ...
                mov     [r14], rdx

loc_14028CA33:                          ; CODE XREF: sub_14028C600+2A6↑j
                                        ; sub_14028C600+400↑j
                mov     ebp, 1
                mov     r15, rsi
                mov     r12d, ebp
                cmp     [rdi], ebp
                jz      short loc_14028CA75
                movzx   ecx, byte ptr [rdi+4]
                test    cl, 8
                jnz     short loc_14028CA75
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                cmp     rsi, rax
                jb      short loc_14028CA75
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     rsi, rax
                ja      short loc_14028CA75
                or      cl, 8
                mov     [rdi+4], cl

loc_14028CA75:                          ; CODE XREF: sub_14028C600+440↑j
                                        ; sub_14028C600+449↑j ...
                mov     r8d, [rdi+0Ch]
                test    r8d, r8d
                jz      loc_14028CC90
                test    byte ptr [rdi+4], 4
                jnz     loc_14028CC1C
                lea     eax, [r8-1]
                lea     r10, [rdi+rax*8]
                mov     rax, [rdi+rax*8+18h]
                test    rax, 0C00h
                jnz     loc_14028CC1C
                mov     r9, rax
                mov     rcx, rax
                and     r9d, 3FFh
                and     rcx, 0FFFFFFFFFFFFF000h
                lea     rdx, [r9+1]
                shl     rdx, 0Ch
                add     rdx, rcx
                cmp     rdx, rsi
                jnz     loc_14028CC1C
                lea     rcx, [r9+1]
                cmp     rcx, r9
                jbe     loc_14028CC1C
                cmp     rcx, 3FFh
                ja      loc_14028CC1C
                lea     rcx, [rax+1]
                xor     rcx, rax
                and     ecx, 3FFh
                xor     rax, rcx
                inc     qword ptr [rdi+10h]
                mov     [r10+18h], rax

loc_14028CAFF:                          ; CODE XREF: sub_14028C600+68B↓j
                                        ; sub_14028C600+69A↓j ...
                mov     rbp, 0FFFFF6FB7DBED7F8h

loc_14028CB09:                          ; CODE XREF: sub_14028C600+732↓j
                                        ; sub_14028C600+740↓j ...
                cmp     [rsp+78h+arg_10], 1
                jnz     loc_14028CB98
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                test    r13d, r13d
                jz      short loc_14028CB98
                lea     rcx, [rsp+78h+var_50]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rsp+78h+var_40]
                test    eax, eax
                jz      short loc_14028CB94
                test    al, 1
                jz      short loc_14028CB94
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_14028CB94
                cmp     bl, 0Fh
                ja      short loc_14028CB94
                cmp     al, 2
                jb      short loc_14028CB94
                mov     r10, gs:20h
                mov     r9, 0FFFFFFFFFFFFFFFFh
                mov     r8, [r10+84B8h]
                mov     edx, [r8+14h]
                movzx   ecx, byte ptr [rsp+78h+var_40]
                inc     ecx
                shl     r9, cl
                movzx   eax, r9w
                not     eax
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_14028CB94
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14028CB94:                          ; CODE XREF: sub_14028C600+542↑j
                                        ; sub_14028C600+546↑j ...
                mov     cr8, rbx

loc_14028CB98:                          ; CODE XREF: sub_14028C600+511↑j
                                        ; sub_14028C600+529↑j
                test    r12d, r12d
                jz      loc_14028CE29
                mov     rdx, 0FFFFF68000000000h
                mov     rax, rdx
                cmp     rsi, rax
                jb      loc_14028CD52
                mov     rax, 0FFFFF6FFFFFFFFFFh
                mov     rax, rax
                cmp     rsi, rax
                ja      loc_14028CD52
                mov     rcx, rsi
                mov     rax, 7FFFFFFFF8h
                shr     rcx, 9
                and     rcx, rax
                mov     rax, rdx
                add     rcx, rax
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                lea     rax, [rax+rax*2]
                add     rax, rax
                mov     rbx, 0FFFFFA8000000000h
                mov     ebx, [rbx+rax*8]
                shr     rbx, 1
                and     ebx, 7
                jmp     loc_14028CDF1
; ---------------------------------------------------------------------------

loc_14028CC1C:                          ; CODE XREF: sub_14028C600+486↑j
                                        ; sub_14028C600+49F↑j ...
                test    r8d, r8d
                jz      short loc_14028CC90
                test    byte ptr [rdi+4], 4
                jnz     short loc_14028CC90
                lea     eax, [r8-1]
                lea     r9, [rdi+rax*8]
                mov     rax, [rdi+rax*8+18h]
                test    rax, 0C00h
                jnz     short loc_14028CC90
                mov     rdx, rax
                lea     rcx, [rsi+1000h]
                and     rdx, 0FFFFFFFFFFFFF000h
                cmp     rdx, rcx
                jnz     short loc_14028CC90
                mov     rcx, rax
                and     ecx, 3FFh
                lea     rdx, [rcx+1]
                cmp     rdx, rcx
                jbe     short loc_14028CC90
                cmp     rdx, 3FFh
                ja      short loc_14028CC90
                add     rax, 0FFFFFFFFFFFFF000h
                lea     rcx, [rax+1]
                xor     rcx, rax
                and     ecx, 3FFh
                xor     rax, rcx
                inc     qword ptr [rdi+10h]
                mov     [r9+18h], rax
                jmp     loc_14028CAFF
; ---------------------------------------------------------------------------

loc_14028CC90:                          ; CODE XREF: sub_14028C600+47C↑j
                                        ; sub_14028C600+61F↑j ...
                cmp     r8d, [rdi+8]
                jb      short loc_14028CCA0
                mov     [rdi+5], bpl
                jmp     loc_14028CAFF
; ---------------------------------------------------------------------------
                align 20h

loc_14028CCA0:                          ; CODE XREF: sub_14028C600+694↑j
                                        ; sub_14028C600+71E↓j
                lea     rax, [rbp-1]
                mov     rcx, r15
                cmp     rax, 3FFh
                mov     edx, 400h
                cmovbe  rdx, rbp
                and     rcx, 0FFFFFFFFFFFFF000h
                sub     rbp, rdx
                lea     rax, [rdx-1]
                and     eax, 3FFh
                or      rax, rcx
                mov     rcx, rdx
                shl     rcx, 0Ch
                add     r15, rcx
                mov     ecx, [rdi+0Ch]
                mov     [rdi+rcx*8+18h], rax
                inc     dword ptr [rdi+0Ch]
                mov     ecx, [rdi+0Ch]
                add     [rdi+10h], rdx
                cmp     ecx, [rdi+8]
                jnz     short loc_14028CD1B
                test    byte ptr [rdi+4], 4
                jnz     short loc_14028CD1B
                mov     edx, ecx
                lea     r9, sub_14033B080
                lea     rcx, [rdi+18h]
                mov     r8d, 8
                call    qsort
                mov     rcx, rdi
                call    sub_14033A660
                mov     eax, [rdi+0Ch]
                cmp     eax, [rdi+8]
                jz      short loc_14028CD25

loc_14028CD1B:                          ; CODE XREF: sub_14028C600+6EB↑j
                                        ; sub_14028C600+6F1↑j
                test    rbp, rbp
                jnz     short loc_14028CCA0
                jmp     loc_14028CAFF
; ---------------------------------------------------------------------------

loc_14028CD25:                          ; CODE XREF: sub_14028C600+719↑j
                test    rbp, rbp
                mov     rbp, 0FFFFF6FB7DBED7F8h
                jz      loc_14028CB09
                mov     [rdi+5], r12b
                mov     [rdi+10h], rax
                jmp     loc_14028CB09
; ---------------------------------------------------------------------------

loc_14028CD45:                          ; CODE XREF: sub_14028C600+278↑j
                mov     r12d, [rsp+78h+arg_28]
                jmp     loc_14028CB09
; ---------------------------------------------------------------------------

loc_14028CD52:                          ; CODE XREF: sub_14028C600+5B1↑j
                                        ; sub_14028C600+5C7↑j
                mov     r8, rsi
                mov     rax, 7FFFFFFFF8h
                shr     r8, 9
                and     r8, rax
                mov     rax, rdx
                add     r8, rax
                mov     rax, 0FFFFF6FB7DBED000h
                mov     rdx, [r8]
                mov     rax, rax
                cmp     r8, rax
                jb      short loc_14028CDE8
                mov     rax, rbp
                cmp     r8, rax
                ja      short loc_14028CDE8
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028CDE8
                test    dl, 1
                jz      short loc_14028CDE8
                test    dl, 20h
                jz      short loc_14028CDA1
                test    dl, 42h
                jnz     short loc_14028CDE8

loc_14028CDA1:                          ; CODE XREF: sub_14028C600+79A↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+788h]
                test    rax, rax
                jz      short loc_14028CDE8
                shr     r8, 3
                and     r8d, 1FFh
                mov     rax, [rax+r8*8]
                mov     r8, rdx
                or      r8, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   r8, rdx
                mov     rdx, r8
                test    al, 42h
                jz      short loc_14028CDE8
                or      rdx, 42h

loc_14028CDE8:                          ; CODE XREF: sub_14028C600+77F↑j
                                        ; sub_14028C600+787↑j ...
                shr     rdx, 38h
                and     edx, 0Fh
                mov     ebx, edx

loc_14028CDF1:                          ; CODE XREF: sub_14028C600+617↑j
                cmp     [rsp+78h+arg_20], 0
                mov     rdi, [rsp+78h+arg_0]
                jz      short loc_14028CE13
                cmp     ebx, 7
                jz      short loc_14028CE13
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_14028CE50

loc_14028CE13:                          ; CODE XREF: sub_14028C600+801↑j
                                        ; sub_14028C600+806↑j
                test    ebx, ebx
                jnz     short loc_14028CE29
                mov     r9b, 1
                lea     r8d, [rbx+1]
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14027FDE0

loc_14028CE29:                          ; CODE XREF: sub_14028C600+59B↑j
                                        ; sub_14028C600+815↑j
                mov     eax, 1

loc_14028CE2E:                          ; CODE XREF: sub_14028C600+25C↑j
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14028C600   endp

algn_14028CE47:                         ; DATA XREF: .pdata:00000001400CECDC↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14028CE50   proc near               ; CODE XREF: sub_140265E70+983↑p
                                        ; sub_14026E700+4AE↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  48h
arg_8           = dword ptr  50h
arg_C           = dword ptr  54h
arg_10          = qword ptr  58h
arg_18          = qword ptr  60h

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 48h
                movzx   r9d, byte ptr [rcx+0B8h]
                lea     r15, unk_140C4F628
                xor     r12d, r12d
                mov     [rbp+arg_C], 3
                and     r9b, 7
                mov     [rbp+var_10], r12
                mov     [rbp+arg_8], r12d
                mov     rbx, rdx
                mov     rsi, rcx
                cmp     r9b, 2
                jz      short loc_14028CE9C
                lea     r15, [rcx+0E8h]

loc_14028CE9C:                          ; CODE XREF: sub_14028CE50+43↑j
                mov     r13, rbx
                and     r13d, 1
                mov     [rbp+var_28], r13
                jz      short loc_14028CEAD
                and     rbx, 0FFFFFFFFFFFFFFFEh

loc_14028CEAD:                          ; CODE XREF: sub_14028CE50+57↑j
                mov     r8, [rbx]
                mov     r11, 0FFFFF6FB7DBED000h
                mov     rax, r11
                mov     r10, 0FFFFF6FB7DBED7F8h
                cmp     rbx, rax
                jb      short loc_14028CF37
                mov     rax, r10
                cmp     rbx, rax
                ja      short loc_14028CF37
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028CF37
                test    r8b, 1
                jz      short loc_14028CF37
                test    r8b, 20h
                jz      short loc_14028CEEF
                test    r8b, 42h
                jnz     short loc_14028CF37

loc_14028CEEF:                          ; CODE XREF: sub_14028CE50+97↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028CF37
                mov     rax, rbx
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, r8
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_14028CF37
                or      r8, 42h

loc_14028CF37:                          ; CODE XREF: sub_14028CE50+7A↑j
                                        ; sub_14028CE50+82↑j ...
                mov     [rbp+arg_0], r8
                mov     rax, r11
                lea     rcx, [rbp+arg_0]
                cmp     rcx, rax
                jb      short loc_14028CFB7
                mov     rax, r10
                lea     rcx, [rbp+arg_0]
                cmp     rcx, rax
                ja      short loc_14028CFB7
                call    sub_140349680
                test    eax, eax
                jz      short loc_14028CFB7
                test    r8b, 1
                jz      short loc_14028CFB7
                test    r8b, 20h
                jz      short loc_14028CF6E
                test    r8b, 42h
                jnz     short loc_14028CFB7

loc_14028CF6E:                          ; CODE XREF: sub_14028CE50+116↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      short loc_14028CFB7
                lea     rax, [rbp+arg_0]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                mov     rdx, r8
                or      rdx, 20h
                movzx   ecx, al
                and     cl, 20h
                cmovz   rdx, r8
                mov     r8, rdx
                test    al, 42h
                jz      short loc_14028CFB7
                or      r8, 42h

loc_14028CFB7:                          ; CODE XREF: sub_14028CE50+F5↑j
                                        ; sub_14028CE50+101↑j ...
                shr     r8, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     r8, rax
                lea     r14, [r8+r8*2]
                shl     r14, 4
                mov     rax, 0FFFFFA8000000000h
                add     r14, rax
                lea     rdi, unk_140C4F640
                cmp     r9b, 2
                jz      short loc_14028CFF1
                lea     rdi, [rsi+100h]

loc_14028CFF1:                          ; CODE XREF: sub_14028CE50+198↑j
                mov     [rbp+var_18], rdi
                mov     [rbp+var_20], r12
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14028D024
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14028D024
                mov     eax, [rdx+18h]
                add     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14028D024
                call    sub_1403F2EC4

loc_14028D024:                          ; CODE XREF: sub_14028CE50+1BC↑j
                                        ; sub_14028CE50+1C2↑j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jz      short loc_14028D03B
                mov     rdx, rdi
                lea     rcx, [rbp+var_20]
                call    sub_14051652C
                jmp     short loc_14028D050
; ---------------------------------------------------------------------------

loc_14028D03B:                          ; CODE XREF: sub_14028CE50+1DB↑j
                lea     rdx, [rbp+var_20]
                xchg    rdx, [rdi]
                test    rdx, rdx
                jz      short loc_14028D050
                lea     rcx, [rbp+var_20]
                call    sub_14025FC20

loc_14028D050:                          ; CODE XREF: sub_14028CE50+1E9↑j
                                        ; sub_14028CE50+1F5↑j
                mov     rdi, [r15]
                test    rdi, rdi
                jz      short loc_14028D066
                mov     rax, [rdi+20h]
                add     rax, 8
                cmp     rax, [rdi+28h]
                jbe     short loc_14028D07A

loc_14028D066:                          ; CODE XREF: sub_14028CE50+206↑j
                mov     rcx, rsi
                call    sub_1402685E0
                mov     rdi, rax
                test    rax, rax
                jz      loc_14028D307

loc_14028D07A:                          ; CODE XREF: sub_14028CE50+214↑j
                mov     rcx, r14
                call    sub_1403F41D8
                test    eax, eax
                jz      loc_14028D272
                mov     rsi, [r14+10h]
                bt      rsi, 0Ah
                jnb     loc_14028D272
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_14028D0B1
                test    sil, 10h
                jnz     short loc_14028D0B1
                not     rax
                and     rsi, rax

loc_14028D0B1:                          ; CODE XREF: sub_14028CE50+253↑j
                                        ; sub_14028CE50+259↑j
                mov     rax, [r14+8]
                mov     rcx, 8000000000000000h
                mov     r12, [rdi+30h]
                or      rax, rcx
                mov     rcx, rax
                sar     rsi, 10h
                shl     rcx, 10h
                cmp     qword ptr [rdi+38h], 1
                mov     [rbp+arg_18], rax
                jbe     short loc_14028D0E4
                mov     rbx, rsi
                jmp     loc_14028D219
; ---------------------------------------------------------------------------

loc_14028D0E4:                          ; CODE XREF: sub_14028CE50+28A↑j
                test    byte ptr [rsi+22h], 2
                mov     r13, [rsi]
                mov     [rbp+arg_10], r13
                jz      short loc_14028D0FF
                test    dword ptr [r13+38h], 4000000h
                jnz     loc_14028D307

loc_14028D0FF:                          ; CODE XREF: sub_14028CE50+29F↑j
                lea     r14, [r13+40h]
                mov     rcx, r14
                call    sub_14024C570
                mov     r15, rax
                test    rax, rax
                jnz     loc_14028D19C
                lea     rbx, [r13+48h]
                mov     rcx, rbx
                call    ExAcquireSpinLockShared
                mov     rcx, r14
                movzx   r13d, al
                call    sub_14021AEA8
                mov     rcx, rbx
                mov     r15, rax
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_14028D194
                test    al, 1
                jz      short loc_14028D194
                mov     rcx, cr8
                cmp     cl, 0Fh
                ja      short loc_14028D194
                cmp     r13b, 0Fh
                ja      short loc_14028D194
                cmp     cl, 2
                jb      short loc_14028D194
                mov     r10, gs:20h
                lea     ecx, [r13+1]
                mov     rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_14028D194
                mov     rcx, r10
                call    sub_1403F2EC4

loc_14028D194:                          ; CODE XREF: sub_14028CE50+2F2↑j
                                        ; sub_14028CE50+2F6↑j ...
                mov     cr8, r13
                mov     r13, [rbp+arg_10]

loc_14028D19C:                          ; CODE XREF: sub_14028CE50+2C1↑j
                mov     rbx, [r15+18h]
                prefetchw byte ptr [r14]
                mov     rax, [r14]
                mov     rcx, rax
                xor     rcx, r15
                cmp     rcx, 0Fh
                jnb     short loc_14028D1CA

loc_14028D1B3:                          ; CODE XREF: sub_14028CE50+378↓j
                lea     rcx, [rax+1]
                lock cmpxchg [r14], rcx
                jz      short loc_14028D1D2
                mov     r8, rax
                xor     r8, r15
                cmp     r8, 0Fh
                jb      short loc_14028D1B3

loc_14028D1CA:                          ; CODE XREF: sub_14028CE50+361↑j
                mov     rcx, r15
                call    ObDereferenceObjectDeferDelete

loc_14028D1D2:                          ; CODE XREF: sub_14028CE50+36C↑j
                mov     rdx, [rbp+arg_18]
                mov     r8d, 0FFFFFFFFh
                mov     rcx, rsi
                call    sub_140270E80
                mov     edx, [r13+38h]
                mov     ecx, edx
                mov     r13, [rbp+var_28]
                shr     rcx, 5
                shl     edx, 5
                and     ecx, 1
                movzx   ecx, byte ptr [rbp+rcx*4+arg_8]
                shl     rax, cl
                xor     edx, eax
                mov     [rbp+arg_10], rax
                and     edx, 400h
                xor     edx, eax
                mov     dword ptr [rbp+arg_10], edx
                sub     r12, 8
                mov     rcx, [rbp+arg_10]

loc_14028D219:                          ; CODE XREF: sub_14028CE50+28F↑j
                mov     rax, [rdi+28h]
                lea     rdx, [rax+8]
                cmp     rdx, r12
                ja      short loc_14028D23B

loc_14028D226:                          ; CODE XREF: sub_14028CE50+3E2↓j
                cmp     [rdx], rbx
                jz      short loc_14028D236
                add     rdx, 8
                cmp     rdx, r12
                jbe     short loc_14028D226
                jmp     short loc_14028D23B
; ---------------------------------------------------------------------------

loc_14028D236:                          ; CODE XREF: sub_14028CE50+3D9↑j
                cmp     rdx, r12
                jbe     short loc_14028D249

loc_14028D23B:                          ; CODE XREF: sub_14028CE50+3D4↑j
                                        ; sub_14028CE50+3E4↑j
                mov     rdx, rax
                add     rax, 0FFFFFFFFFFFFFFF8h
                mov     [rdi+28h], rax
                mov     [rdx], rbx

loc_14028D249:                          ; CODE XREF: sub_14028CE50+3E9↑j
                mov     rax, [rdi+30h]
                and     rcx, 0FFFFFFFFFFFFFC00h
                sub     rax, rdx
                mov     edx, r13d
                sar     rax, 3
                and     eax, 1FFh
                shl     rdx, 9
                or      rax, rdx
                or      rax, rcx
                xor     r12d, r12d
                jmp     short loc_14028D280
; ---------------------------------------------------------------------------

loc_14028D272:                          ; CODE XREF: sub_14028CE50+234↑j
                                        ; sub_14028CE50+243↑j
                mov     eax, r13d
                shl     rax, 9
                shl     rbx, 10h
                or      rax, rbx

loc_14028D280:                          ; CODE XREF: sub_14028CE50+420↑j
                mov     rcx, [rdi+20h]
                mov     [rcx], rax
                add     qword ptr [rdi+20h], 8
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jz      short loc_14028D2A4
                mov     rdx, [rbp+40h]
                lea     rcx, [rbp+var_20]
                call    sub_1405165EC
                jmp     short loc_14028D2DA
; ---------------------------------------------------------------------------

loc_14028D2A4:                          ; CODE XREF: sub_14028CE50+443↑j
                prefetchw byte ptr [rbp+var_20]
                mov     rax, [rbp+var_20]
                test    rax, rax
                jnz     short loc_14028D2D0
                mov     rcx, [rbp+var_18]
                lea     rax, [rbp+var_20]
                lock cmpxchg [rcx], r12
                lea     rcx, [rbp+var_20]
                cmp     rax, rcx
                jz      short loc_14028D2DA
                lea     rcx, [rbp+var_20]
                call    sub_140313680

loc_14028D2D0:                          ; CODE XREF: sub_14028CE50+45F↑j
                mov     [rbp+var_20], r12
                lock xor qword ptr [rax+8], 1

loc_14028D2DA:                          ; CODE XREF: sub_14028CE50+452↑j
                                        ; sub_14028CE50+475↑j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jz      short loc_14028D310
                cmp     byte ptr [rcx+20h], 1
                ja      short loc_14028D310
                mov     eax, [rdx+18h]
                sub     eax, 1
                mov     [rdx+18h], eax
                jnz     short loc_14028D310
                call    sub_1403F2EC4
                jmp     short loc_14028D310
; ---------------------------------------------------------------------------

loc_14028D307:                          ; CODE XREF: sub_14028CE50+224↑j
                                        ; sub_14028CE50+2A9↑j
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_14028D310:                          ; CODE XREF: sub_14028CE50+49D↑j
                                        ; sub_14028CE50+4A3↑j ...
                add     rsp, 48h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14028CE50   endp

algn_14028D322:                         ; DATA XREF: .pdata:00000001400CECE8↑o
                align 10h
; Exported entry 1311. KeSetActualBasePriorityThread

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

