RtlFindClearBitsEx proc near            ; CODE XREF: sub_140656F00+10B↓p
                                        ; sub_1406947D0+32↓p ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h

; FUNCTION CHUNK AT 00000001404381CE SIZE 00000030 BYTES

                push    rbp
                push    rsi
                push    r12
                push    r13
                push    r14
                sub     rsp, 30h
                mov     rbp, [rcx]
                xor     r13d, r13d
                mov     r12, [rcx+8]
                cmp     r8, rbp
                mov     rsi, r8
                mov     r14, r8
                cmovnb  rsi, r13
                mov     r11, rdx
                lea     r10, [rbp-1]
                test    rdx, rdx
                jz      loc_1404381CE

loc_140259674:                          ; DATA XREF: .rdata:000000014005A298↑o
                                        ; .rdata:000000014005A2AC↑o ...
                mov     [rsp+58h+var_30], rbx
                mov     [rsp+58h+var_38], rdi
                mov     [rsp+58h+var_40], r15

loc_140259683:                          ; CODE XREF: RtlFindClearBitsEx+193↓j
                mov     rax, r10
                mov     edi, 40h ; '@'
                sub     rax, rsi
                inc     rax
                cmp     rax, r11
                jb      loc_1402597B2
                mov     r15, r10
                movzx   ecx, sil
                sub     r15, r11
                and     cl, 3Fh
                inc     r15
                mov     r8d, 1
                shl     r8, cl
                mov     rax, r15
                shr     rax, 6
                dec     r8
                lea     r9, [r12+rax*8]
                mov     rax, rsi
                shr     rax, 6
                or      r8, [r12+rax*8]
                lea     rax, [r12+rax*8]
                cmp     r11, 7Fh
                ja      loc_14025982C
                cmp     r11, 40h ; '@'
                jnb     loc_140259900
                cmp     r11, 1
                ja      short loc_140259754
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140259740

loc_1402596F0:                          ; CODE XREF: RtlFindClearBitsEx+112↓j
                mov     r10, rax
                not     r8
                bsf     rcx, r8
                sub     r10, r12
                sar     r10, 3
                mov     eax, ecx
                shl     r10, 6

loc_140259707:                          ; CODE XREF: RtlFindClearBitsEx+16D↓j
                add     r10, rax
                cmp     r10, r15
                ja      loc_1404381F2

loc_140259713:                          ; CODE XREF: RtlFindClearBitsEx+288↓j
                                        ; RtlFindClearBitsEx+2A1↓j ...
                cmp     r10, 0FFFFFFFFFFFFFFFFh
                jz      loc_1402597B9

loc_14025971D:                          ; CODE XREF: RtlFindClearBitsEx+17C↓j
                mov     r15, [rsp+58h+var_40]
                mov     rax, r10
                mov     rdi, [rsp+58h+var_38]
                mov     rbx, [rsp+58h+var_30]

loc_14025972F:                          ; CODE XREF: RtlFindClearBitsEx+1DEB95↓j
                                        ; DATA XREF: .pdata:00000001400CD284↑o ...
                add     rsp, 30h
                pop     r14
                pop     r13
                pop     r12
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140259740:                          ; CODE XREF: RtlFindClearBitsEx+AE↑j
                                        ; RtlFindClearBitsEx+110↓j
                                        ; DATA XREF: ...
                add     rax, 8
                cmp     rax, r9
                ja      short loc_1402597B2
                mov     r8, [rax]
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140259740
                jmp     short loc_1402596F0
; ---------------------------------------------------------------------------

loc_140259754:                          ; CODE XREF: RtlFindClearBitsEx+A8↑j
                shr     r10, 6
                mov     ebx, r13d
                lea     rdi, [r12+r10*8]

loc_14025975F:                          ; CODE XREF: RtlFindClearBitsEx+1B6↓j
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      loc_140259800

loc_140259769:                          ; CODE XREF: RtlFindClearBitsEx+1D5↓j
                bsf     rcx, r8
                jz      loc_140259822

loc_140259773:                          ; CODE XREF: RtlFindClearBitsEx+1E7↓j
                lea     edx, [rbx+rcx]
                cmp     rdx, r11
                jnb     loc_14025981A
                mov     r10, r8
                mov     ebx, r11d
                not     r10

loc_140259788:                          ; CODE XREF: RtlFindClearBitsEx+15C↓j
                mov     rdx, r10
                mov     ecx, ebx
                shr     ecx, 1
                shr     rdx, cl
                and     r10, rdx
                jz      short loc_1402597D8
                sub     ebx, ecx
                cmp     ebx, 1
                ja      short loc_140259788
                bsf     r10, r10

loc_1402597A2:                          ; CODE XREF: RtlFindClearBitsEx+1E0↓j
                sub     rax, r12
                sar     rax, 3
                shl     rax, 6
                jmp     loc_140259707
; ---------------------------------------------------------------------------

loc_1402597B2:                          ; CODE XREF: RtlFindClearBitsEx+54↑j
                                        ; RtlFindClearBitsEx+107↑j ...
                mov     r10, 0FFFFFFFFFFFFFFFFh

loc_1402597B9:                          ; CODE XREF: RtlFindClearBitsEx+D7↑j
                                        ; RtlFindClearBitsEx+1DEBB9↓j
                test    rsi, rsi
                jz      loc_14025971D
                lea     r10, [r11+r14]
                mov     rsi, r13
                cmp     r10, rbp
                cmova   r10, rbp
                dec     r10
                jmp     loc_140259683
; ---------------------------------------------------------------------------

loc_1402597D8:                          ; CODE XREF: RtlFindClearBitsEx+155↑j
                cmp     rax, rdi
                jz      short loc_1402597B2
                bsr     rcx, r8
                jz      loc_1404381E8
                mov     ebx, 3Fh ; '?'
                sub     ebx, ecx

loc_1402597EE:                          ; CODE XREF: RtlFindClearBitsEx+1DEBAD↓j
                mov     r8, [rax+8]
                add     rax, 8
                jmp     loc_14025975F
; ---------------------------------------------------------------------------
                align 20h

loc_140259800:                          ; CODE XREF: RtlFindClearBitsEx+123↑j
                                        ; RtlFindClearBitsEx+1D0↓j
                add     rax, 8
                cmp     rax, r9
                ja      short loc_1402597B2
                mov     r8, [rax]
                cmp     r8, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140259800
                mov     ebx, r13d
                jmp     loc_140259769
; ---------------------------------------------------------------------------

loc_14025981A:                          ; CODE XREF: RtlFindClearBitsEx+139↑j
                mov     r10d, ebx
                neg     r10
                jmp     short loc_1402597A2
; ---------------------------------------------------------------------------

loc_140259822:                          ; CODE XREF: RtlFindClearBitsEx+12D↑j
                mov     ecx, 40h ; '@'
                jmp     loc_140259773
; ---------------------------------------------------------------------------

loc_14025982C:                          ; CODE XREF: RtlFindClearBitsEx+94↑j
                test    r15b, 3Fh
                lea     rbx, [r9+8]
                cmovz   rbx, r9
                test    r8, r8
                jz      loc_14025999C
                add     rax, 8
                cmp     [rax], r13
                jz      loc_1402598E6

loc_14025984E:                          ; CODE XREF: RtlFindClearBitsEx+21E↓j
                                        ; RtlFindClearBitsEx+273↓j ...
                cmp     rax, rbx
                ja      loc_1402597B2
                add     rax, 8
                cmp     [rax], r13
                jnz     short loc_14025984E
                mov     rcx, [rax-8]
                bsr     r8, rcx
                jz      loc_1404381E1
                mov     edx, 3Fh ; '?'
                sub     edx, r8d

loc_140259876:                          ; CODE XREF: RtlFindClearBitsEx+2B7↓j
                                        ; RtlFindClearBitsEx+35F↓j ...
                mov     r10, rax
                mov     r8d, edx
                sub     r10, r12
                sar     r10, 3
                shl     r10, 6
                sub     r10, r8
                cmp     r10, r15
                ja      loc_1402597B2
                mov     rcx, r11
                sub     rcx, r8
                shr     rcx, 6
                lea     r8, [rax+rcx*8]
                add     rax, 8
                cmp     rax, r8
                jz      short loc_1402598BE
                nop     word ptr [rax+rax+00h]

loc_1402598B0:                          ; CODE XREF: RtlFindClearBitsEx+27C↓j
                cmp     [rax], r13
                jnz     short loc_14025984E
                add     rax, 8
                cmp     rax, r8
                jnz     short loc_1402598B0

loc_1402598BE:                          ; CODE XREF: RtlFindClearBitsEx+268↑j
                mov     r8d, r11d
                sub     r8d, edx
                and     r8d, 3Fh
                jz      loc_140259713
                mov     rcx, [rax]
                bsf     rdx, rcx
                cmovz   edx, edi
                cmp     edx, r8d
                jb      loc_14025984E
                jmp     loc_140259713
; ---------------------------------------------------------------------------

loc_1402598E6:                          ; CODE XREF: RtlFindClearBitsEx+208↑j
                bsr     rcx, r8
                jz      loc_1404381DA
                mov     edx, 3Fh ; '?'
                sub     edx, ecx
                jmp     loc_140259876
; ---------------------------------------------------------------------------
                align 20h

loc_140259900:                          ; CODE XREF: RtlFindClearBitsEx+9E↑j
                                        ; RtlFindClearBitsEx+34D↓j
                test    r8, r8

loc_140259903:                          ; CODE XREF: RtlFindClearBitsEx+32F↓j
                jns     short loc_140259925
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140259910:                          ; CODE XREF: RtlFindClearBitsEx+2E3↓j
                add     rax, 8
                cmp     rax, r9
                ja      loc_1402597B2
                mov     r8, [rax]
                test    r8, r8
                js      short loc_140259910

loc_140259925:                          ; CODE XREF: RtlFindClearBitsEx:loc_140259903↑j
                bsr     rdx, r8
                jz      short loc_140259998
                mov     ecx, 3Fh ; '?'
                sub     ecx, edx

loc_140259932:                          ; CODE XREF: RtlFindClearBitsEx+35A↓j
                mov     r10, rax
                mov     r8d, ecx
                sub     r10, r12
                sar     r10, 3
                inc     r10
                shl     r10, 6
                sub     r10, r8
                cmp     r10, r15
                ja      loc_1402597B2
                mov     rdx, r11
                sub     rdx, r8
                jz      loc_140259713
                mov     r8, [rax+8]
                add     rax, 8
                cmp     rdx, 40h ; '@'
                jb      short loc_140259983
                test    r8, r8
                jnz     short loc_140259903
                sub     rdx, 40h ; '@'
                jz      loc_140259713
                mov     r8, [rax+8]
                add     rax, 8

loc_140259983:                          ; CODE XREF: RtlFindClearBitsEx+32A↑j
                bsf     rcx, r8
                cmovz   ecx, edi
                cmp     rcx, rdx
                jb      loc_140259900
                jmp     loc_140259713
; ---------------------------------------------------------------------------

loc_140259998:                          ; CODE XREF: RtlFindClearBitsEx+2E9↑j
                mov     ecx, edi
                jmp     short loc_140259932
; ---------------------------------------------------------------------------

loc_14025999C:                          ; CODE XREF: RtlFindClearBitsEx+1FB↑j
                mov     edx, r13d
                jmp     loc_140259876
RtlFindClearBitsEx endp
