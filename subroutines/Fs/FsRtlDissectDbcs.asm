FsRtlDissectDbcs proc near              ; CODE XREF: FsRtlIsFatDbcsLegal+121B99↑p
                                        ; FsRtlIsHpfsDbcsLegal+FC↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                xor     r9d, r9d
                mov     r10, r8
                mov     [rdx], r9d
                mov     r11, rdx
                mov     [rdx+8], r9
                mov     rbx, rcx
                mov     [r8], r9d
                mov     [r8+8], r9
                movzx   r8d, word ptr [rcx]
                test    r8d, r8d
                jz      loc_14088DD2D
                mov     rdi, [rcx+8]
                lea     ebp, [r9+1]
                mov     edx, r9d
                mov     sil, [rdi]
                cmp     sil, 5Ch ; '\'
                setz    dl
                jmp     short loc_14088DCDE
; ---------------------------------------------------------------------------

loc_14088DCB1:                          ; CODE XREF: FsRtlDissectDbcs+81↓j
                mov     eax, edx
                movzx   ecx, byte ptr [rax+rdi]
                cmp     cl, 5Ch ; '\'
                jz      short loc_14088DCE3
                cmp     cl, 80h
                jb      short loc_14088DCDC
                cmp     cs:NlsMbOemCodePageTag, r9b
                jz      short loc_14088DCDC
                mov     eax, ecx
                lea     rcx, word_140D2FC20
                cmp     [rcx+rax*2], r9w
                jz      short loc_14088DCDC
                add     edx, ebp

loc_14088DCDC:                          ; CODE XREF: FsRtlDissectDbcs+5F↑j
                                        ; FsRtlDissectDbcs+68↑j ...
                add     edx, ebp

loc_14088DCDE:                          ; CODE XREF: FsRtlDissectDbcs+4F↑j
                cmp     edx, r8d
                jb      short loc_14088DCB1

loc_14088DCE3:                          ; CODE XREF: FsRtlDissectDbcs+5A↑j
                mov     eax, r9d
                cmp     sil, 5Ch ; '\'
                movzx   ecx, dx
                setz    al
                sub     cx, ax
                cmp     sil, 5Ch ; '\'
                mov     [r11], cx
                mov     [r11+2], cx
                setz    r9b
                add     r9, [rbx+8]
                mov     [r11+8], r9
                cmp     edx, r8d
                jnb     short loc_14088DD2D
                sub     r8w, dx
                lea     ecx, [rdx+1]
                sub     r8w, bp
                mov     [r10], r8w
                mov     [r10+2], r8w
                add     rcx, [rbx+8]
                mov     [r10+8], rcx

loc_14088DD2D:                          ; CODE XREF: FsRtlDissectDbcs+34↑j
                                        ; FsRtlDissectDbcs+AF↑j
                mov     rbx, [rsp+arg_0]
                mov     rbp, [rsp+arg_8]
                mov     rsi, [rsp+arg_10]
                mov     rdi, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlDissectDbcs endp
