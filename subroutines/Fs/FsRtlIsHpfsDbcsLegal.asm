FsRtlIsHpfsDbcsLegal proc near          ; CODE XREF: FsRtlIsHpfsDbcsLegal+11A↓p
                                        ; DATA XREF: .pdata:000000014011C3B8↑o

var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r15
                sub     rsp, 50h
                movzx   r10d, word ptr [rcx]
                xor     esi, esi
                mov     dil, dl
                test    r10w, r10w
                jz      loc_14088E5B4
                lea     ebp, [rsi+1]
                lea     r15d, [rsi+2]
                test    dl, dl
                jz      short loc_14088E45A
                mov     r11b, 22h ; '"'
                cmp     r10w, bp
                jnz     short loc_14088E431
                mov     rax, [rcx+8]
                mov     dl, [rax]
                cmp     dl, 2Eh ; '.'
                jz      loc_14088E515
                cmp     dl, r11b
                jz      loc_14088E515

loc_14088E431:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+37↑j
                cmp     r10w, r15w
                jnz     short loc_14088E45A
                mov     rax, [rcx+8]
                mov     dl, [rax]
                cmp     dl, 2Eh ; '.'
                jnz     short loc_14088E44B
                cmp     [rax+1], dl
                jz      loc_14088E515

loc_14088E44B:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+60↑j
                cmp     dl, r11b
                jnz     short loc_14088E45A
                cmp     [rax+1], r11b
                jz      loc_14088E515

loc_14088E45A:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+2E↑j
                                        ; FsRtlIsHpfsDbcsLegal+55↑j ...
                mov     rbx, [rcx+8]
                cmp     byte ptr [rbx], 5Ch ; '\'
                jnz     short loc_14088E48E
                test    r9b, r9b
                jz      loc_14088E5B4
                cmp     r10w, bp
                jbe     loc_14088E515
                inc     rbx
                sub     r10w, bp
                mov     eax, 0FFFFh
                mov     [rcx+8], rbx
                add     [rcx+2], ax
                mov     [rcx], r10w

loc_14088E48E:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+81↑j
                test    r8b, r8b
                jz      loc_14088E51D
                movups  xmm1, xmmword ptr [rcx]
                xorps   xmm0, xmm0
                movd    eax, xmm1
                movups  [rsp+68h+var_38], xmm0
                movaps  [rsp+68h+var_48], xmm1
                test    ax, ax
                jz      short loc_14088E515

loc_14088E4B0:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+133↓j
                movdqa  xmm0, xmm1
                psrldq  xmm0, 8
                movq    rax, xmm0
                cmp     byte ptr [rax], 5Ch ; '\'
                jz      loc_14088E5B4
                lea     r8, [rsp+68h+var_48]
                movdqa  [rsp+68h+var_28], xmm1
                lea     rdx, [rsp+68h+var_38]
                lea     rcx, [rsp+68h+var_28]
                call    FsRtlDissectDbcs
                movaps  xmm0, [rsp+68h+var_38]
                lea     rcx, [rsp+68h+var_28]
                xor     r9d, r9d
                movdqa  [rsp+68h+var_28], xmm0
                xor     r8d, r8d
                mov     dl, dil
                call    FsRtlIsHpfsDbcsLegal
                test    al, al
                jz      loc_14088E5B4
                cmp     word ptr [rsp+68h+var_48], si
                jz      short loc_14088E515
                movaps  xmm1, [rsp+68h+var_48]
                jmp     short loc_14088E4B0
; ---------------------------------------------------------------------------

loc_14088E515:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+42↑j
                                        ; FsRtlIsHpfsDbcsLegal+4B↑j ...
                mov     al, bpl
                jmp     loc_14088E5B6
; ---------------------------------------------------------------------------

loc_14088E51D:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+B1↑j
                mov     eax, 0FFh
                cmp     r10w, ax
                ja      loc_14088E5B4
                movzx   r11d, r10w
                mov     r8d, esi
                test    r11d, r11d
                jz      short loc_14088E515
                lea     r10, cs:140000000h

loc_14088E53F:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+1B4↓j
                mov     eax, r8d
                movzx   r9d, byte ptr [rax+rbx]
                cmp     r9b, 80h
                jb      short loc_14088E56F
                cmp     cs:NlsMbOemCodePageTag, sil
                jz      short loc_14088E56F
                cmp     ds:rva word_140D2FC20[r10+r9*2], si
                jz      short loc_14088E56F
                lea     eax, [r11-1]
                cmp     r8d, eax
                jz      short loc_14088E5B4
                add     r8d, ebp
                jmp     short loc_14088E58E
; ---------------------------------------------------------------------------

loc_14088E56F:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+16B↑j
                                        ; FsRtlIsHpfsDbcsLegal+174↑j ...
                test    r9b, r9b
                js      short loc_14088E58E
                movzx   edx, byte ptr [r9+r10+10FB0h]
                mov     al, dil
                neg     al
                sbb     ecx, ecx
                and     ecx, 8
                add     ecx, r15d
                and     edx, ecx
                jz      short loc_14088E5B4

loc_14088E58E:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+18D↑j
                                        ; FsRtlIsHpfsDbcsLegal+192↑j
                add     r8d, ebp
                cmp     r8d, r11d
                jb      short loc_14088E53F
                cmp     r9b, 2Eh ; '.'
                ja      loc_14088E515
                mov     rcx, 400500000000h
                bt      rcx, r9
                jnb     loc_14088E515

loc_14088E5B4:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+1F↑j
                                        ; FsRtlIsHpfsDbcsLegal+86↑j ...
                xor     al, al

loc_14088E5B6:                          ; CODE XREF: FsRtlIsHpfsDbcsLegal+138↑j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlIsHpfsDbcsLegal endp
