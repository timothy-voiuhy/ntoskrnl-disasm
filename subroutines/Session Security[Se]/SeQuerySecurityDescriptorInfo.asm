SeQuerySecurityDescriptorInfo proc near ; CODE XREF: sub_14060AC40+3CF↑p
                                        ; sub_140627718+3C↑p ...

var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __C_specific_handler
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
                sub     rsp, 80h
                mov     r10, r8
                mov     r8, rdx
                mov     r11, rcx
                xor     r15d, r15d
                mov     [rsp+0B8h+var_90], r15d
                mov     r12d, r15d
                mov     [rsp+0B8h+var_94], r15d

loc_140633C2A:                          ; DATA XREF: .rdata:00000001400513DC↑o
;   __try { // __except at loc_140634093
                mov     ecx, [r10]
                mov     [rsp+0B8h+var_70], ecx
                mov     rax, [r9]
                test    rax, rax
                jz      loc_140634012
                movups  xmm0, xmmword ptr [rax]
                movups  [rsp+0B8h+var_68], xmm0
                mov     ecx, [rax+10h]
                mov     dword ptr [rsp+0B8h+var_58], ecx
                movzx   ecx, word ptr [rax+2]
                test    cx, cx
                jns     loc_140634048
                mov     edx, [rax+4]
                test    edx, edx
                jz      loc_140634040
                lea     rsi, [rax+rdx]

loc_140633C68:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+453↓j
                                        ; SeQuerySecurityDescriptorInfo+45C↓j
                mov     qword ptr [rsp+0B8h+var_68+8], rsi
                test    cx, cx
                jns     loc_140634059
                mov     edx, [rax+8]
                test    edx, edx
                jz      loc_140634051
                lea     r14, [rax+rdx]

loc_140633C85:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+464↓j
                                        ; SeQuerySecurityDescriptorInfo+46D↓j
                mov     [rsp+0B8h+var_58], r14
                test    cl, 4
                jz      loc_140634062
                test    cx, cx
                jns     loc_140634072
                mov     edx, [rax+10h]
                test    edx, edx
                jz      loc_14063406A
                lea     rdi, [rax+rdx]

loc_140633CAB:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+475↓j
                                        ; SeQuerySecurityDescriptorInfo+47D↓j ...
                mov     [rsp+0B8h+var_48], rdi
                test    cl, 10h
                jnz     loc_140633F60
                mov     rcx, r15

loc_140633CBC:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+383↓j
                                        ; SeQuerySecurityDescriptorInfo+3D4↓j ...
                mov     [rsp+0B8h+var_88], rcx
                mov     [rsp+0B8h+var_50], rcx
                mov     rcx, qword ptr [rsp+0B8h+var_68]
                shr     rcx, 10h
                mov     eax, 7FFFh
                and     cx, ax
                mov     [rsp+0B8h+var_80], rcx
                mov     word ptr [rsp+0B8h+var_68+2], cx
                mov     ebx, 14h
                mov     [rsp+0B8h+var_98], ebx
                mov     r9d, [r11]
                mov     eax, r9d
                and     eax, 80h
                mov     edx, r9d
                and     edx, 100h
                bt      r9d, 10h
                jb      loc_140633FEB

loc_140633D09:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+40F↓j
                                        ; SeQuerySecurityDescriptorInfo+41D↓j
                test    r9b, 1
                jz      loc_140633FC9
                test    rsi, rsi
                jz      loc_140633FC9
                movzx   eax, byte ptr [rsi+1]
                lea     r15d, ds:8[rax*4]
                lea     ebx, [r15+3]
                mov     r13d, 0FFFFFFFCh
                and     ebx, r13d
                add     ebx, 14h
                mov     [rsp+0B8h+var_98], ebx

loc_140633D3C:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+3DF↓j
                test    r9b, 2
                jz      short loc_140633D66
                test    r14, r14
                jz      short loc_140633D66
                movzx   eax, byte ptr [r14+1]
                lea     r11d, ds:8[rax*4]
                mov     [rsp+0B8h+var_90], r11d
                lea     eax, [r11+3]
                and     eax, r13d
                add     ebx, eax
                mov     [rsp+0B8h+var_98], ebx

loc_140633D66:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+150↑j
                                        ; SeQuerySecurityDescriptorInfo+155↑j
                movzx   eax, byte ptr [rsp+0B8h+var_68+2]
                test    r9b, 4
                jz      short loc_140633D8D
                test    al, 4
                jz      short loc_140633D8D
                test    rdi, rdi
                jz      short loc_140633D8D
                movzx   r12d, word ptr [rdi+2]
                add     r12d, 3
                and     r12d, r13d
                add     ebx, r12d
                mov     [rsp+0B8h+var_98], ebx

loc_140633D8D:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+17F↑j
                                        ; SeQuerySecurityDescriptorInfo+183↑j ...
                and     r9d, 1F8h
                jz      short loc_140633D9E
                test    al, 10h
                jnz     loc_140633F78

loc_140633D9E:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+1A4↑j
                                        ; SeQuerySecurityDescriptorInfo+390↓j ...
                mov     [r10], ebx
                cmp     ebx, [rsp+0B8h+var_70]
                ja      loc_140633FB7
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [r8], xmm0
                mov     [r8+10h], eax
                mov     byte ptr [r8], 1
                mov     eax, 8000h
                movzx   edx, word ptr [r8+2]
                or      dx, ax
                mov     [r8+2], dx
                lea     rbx, [r8+17h]
                and     rbx, 0FFFFFFFFFFFFFFFCh
                mov     [rsp+0B8h+var_78], rbx
                mov     rax, [rsp+0B8h+arg_0]
                mov     eax, [rax]
                test    al, 1
                jz      loc_140633FD4
                test    rsi, rsi
                jz      loc_140633FD4
                mov     r8d, r15d
                mov     rdx, rsi
                mov     rcx, rbx
                call    memmove
                mov     eax, ebx
                mov     r8, [rsp+0B8h+arg_8]
                sub     eax, r8d
                mov     [r8+4], eax
                mov     rcx, [rsp+0B8h+var_80]
                movzx   eax, cx
                and     ax, 1
                or      [r8+2], ax
                movzx   edx, word ptr [r8+2]
                lea     eax, [r15+3]
                and     rax, r13
                add     rbx, rax
                mov     [rsp+0B8h+var_78], rbx
                mov     r15, [rsp+0B8h+arg_0]
                mov     eax, [r15]

loc_140633E45:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+3EC↓j
                test    al, 2
                jz      short loc_140633E98
                test    r14, r14
                jz      short loc_140633E98
                mov     esi, [rsp+0B8h+var_90]
                mov     r8d, esi
                mov     rdx, r14
                mov     rcx, rbx
                call    memmove
                mov     eax, ebx
                mov     r8, [rsp+0B8h+arg_8]
                sub     eax, r8d
                mov     [r8+8], eax
                mov     rcx, [rsp+0B8h+var_80]
                movzx   eax, cx
                and     ax, 2
                or      [r8+2], ax
                movzx   edx, word ptr [r8+2]
                lea     eax, [rsi+3]
                and     rax, r13
                add     rbx, rax
                mov     [rsp+0B8h+var_78], rbx
                mov     eax, [r15]

loc_140633E98:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+257↑j
                                        ; SeQuerySecurityDescriptorInfo+25C↑j
                test    al, 4
                jz      loc_140633FE1
                movzx   eax, cx
                mov     ecx, 140Ch
                and     ax, cx
                or      ax, dx
                mov     [r8+2], ax
                movzx   esi, byte ptr [rsp+0B8h+var_68+2]
                test    sil, 4
                jz      short loc_140633EEF
                test    rdi, rdi
                jz      short loc_140633EEF
                movzx   r8d, word ptr [rdi+2]
                mov     rdx, rdi
                mov     rcx, rbx
                call    memmove
                mov     eax, ebx
                mov     r8, [rsp+0B8h+arg_8]
                sub     eax, r8d
                mov     [r8+10h], eax
                mov     eax, r12d
                add     rbx, rax
                mov     [rsp+0B8h+var_78], rbx

loc_140633EEF:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+2CC↑j
                                        ; SeQuerySecurityDescriptorInfo+2D1↑j ...
                test    dword ptr [r15], 1F8h
                jz      loc_140634091
                mov     ecx, 2830h
                mov     rax, [rsp+0B8h+var_80]
                and     ax, cx
                or      [r8+2], ax
                test    sil, 10h
                jz      loc_140634091
                mov     rax, [rsp+0B8h+var_88]
                test    rax, rax
                jz      loc_140634091
                mov     r9d, [r15]
                and     r9d, 1F8h
                lea     r8, [rsp+0B8h+var_94]
                mov     rdx, rbx
                mov     rcx, rax
                call    sub_1406340B4
                mov     eax, ebx
                mov     rcx, [rsp+0B8h+arg_8]
                sub     eax, ecx
                mov     [rcx+0Ch], eax
                mov     eax, [rsp+0B8h+var_94]
                add     rbx, rax
                mov     [rsp+0B8h+var_78], rbx
                jmp     loc_140634091
; ---------------------------------------------------------------------------

loc_140633F60:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+C3↑j
                test    cx, cx
                jns     loc_14063407B
                mov     ecx, [rax+0Ch]
                test    ecx, ecx
                jz      short loc_140633FC1
                add     rcx, rax
                jmp     loc_140633CBC
; ---------------------------------------------------------------------------

loc_140633F78:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+1A8↑j
                mov     rax, [rsp+0B8h+var_88]
                test    rax, rax
                jz      loc_140633D9E
                lea     r8, [rsp+0B8h+var_94]
                xor     edx, edx
                mov     rcx, rax
                call    sub_1406340B4
                add     ebx, [rsp+0B8h+var_94]
                mov     [rsp+0B8h+var_98], ebx
                mov     rcx, [rsp+0B8h+var_80]
                mov     r8, [rsp+0B8h+arg_8]
                mov     r10, [rsp+0B8h+arg_10]
                jmp     loc_140633D9E
; ---------------------------------------------------------------------------

loc_140633FB7:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+1B5↑j
                mov     eax, 0C0000023h
                jmp     loc_140634097
; ---------------------------------------------------------------------------

loc_140633FC1:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+37E↑j
                mov     rcx, r15
                jmp     loc_140633CBC
; ---------------------------------------------------------------------------

loc_140633FC9:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+11D↑j
                                        ; SeQuerySecurityDescriptorInfo+126↑j
                mov     r13d, 0FFFFFFFCh
                jmp     loc_140633D3C
; ---------------------------------------------------------------------------

loc_140633FD4:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+1F7↑j
                                        ; SeQuerySecurityDescriptorInfo+200↑j
                mov     r15, [rsp+0B8h+arg_0]
                jmp     loc_140633E45
; ---------------------------------------------------------------------------

loc_140633FE1:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+2AA↑j
                movzx   esi, byte ptr [rsp+0B8h+var_68+2]
                jmp     loc_140633EEF
; ---------------------------------------------------------------------------

loc_140633FEB:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+113↑j
                or      r9d, 1FFh
                mov     [r11], r9d
                test    eax, eax
                jz      loc_140634084

loc_140633FFD:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+49C↓j
                test    edx, edx
                jnz     loc_140633D09
                btr     r9d, 8
                mov     [r11], r9d
                jmp     loc_140633D09
; ---------------------------------------------------------------------------

loc_140634012:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+47↑j
                mov     ebx, 14h
                mov     [r10], ebx
                cmp     ecx, ebx
                jb      short loc_140634039
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  xmmword ptr [rdx], xmm0
                mov     [rdx+10h], eax
                mov     byte ptr [rdx], 1
                mov     eax, 8000h
                or      [rdx+2], ax
                xor     eax, eax
                jmp     short loc_140634097
; ---------------------------------------------------------------------------

loc_140634039:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+42C↑j
                mov     eax, 0C0000023h
                jmp     short loc_140634097
; ---------------------------------------------------------------------------

loc_140634040:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+6E↑j
                mov     rsi, r15
                jmp     loc_140633C68
; ---------------------------------------------------------------------------

loc_140634048:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+63↑j
                mov     rsi, [rax+8]
                jmp     loc_140633C68
; ---------------------------------------------------------------------------

loc_140634051:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+8B↑j
                mov     r14, r15
                jmp     loc_140633C85
; ---------------------------------------------------------------------------

loc_140634059:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+80↑j
                mov     r14, [rax+10h]
                jmp     loc_140633C85
; ---------------------------------------------------------------------------

loc_140634062:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+9D↑j
                mov     rdi, r15
                jmp     loc_140633CAB
; ---------------------------------------------------------------------------

loc_14063406A:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+B1↑j
                mov     rdi, r15
                jmp     loc_140633CAB
; ---------------------------------------------------------------------------

loc_140634072:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+A6↑j
                mov     rdi, [rax+20h]
                jmp     loc_140633CAB
; ---------------------------------------------------------------------------

loc_14063407B:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+373↑j
                mov     rcx, [rax+18h]
                jmp     loc_140633CBC
; ---------------------------------------------------------------------------

loc_140634084:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+407↑j
                btr     r9d, 7
                mov     [r11], r9d
                jmp     loc_140633FFD
; ---------------------------------------------------------------------------

loc_140634091:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+306↑j
                                        ; SeQuerySecurityDescriptorInfo+322↑j ...
                jmp     short loc_140634095
;   } // starts at 140633C2A
; ---------------------------------------------------------------------------

loc_140634093:                          ; DATA XREF: .rdata:00000001400513DC↑o
;   __except(1) // owned by 140633C2A
                jmp     short loc_140634097
; ---------------------------------------------------------------------------

loc_140634095:                          ; CODE XREF: SeQuerySecurityDescriptorInfo:loc_140634091↑j
                xor     eax, eax

loc_140634097:                          ; CODE XREF: SeQuerySecurityDescriptorInfo+3CC↑j
                                        ; SeQuerySecurityDescriptorInfo+447↑j ...
                add     rsp, 80h
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
; } // starts at 140633BF0
SeQuerySecurityDescriptorInfo endp
