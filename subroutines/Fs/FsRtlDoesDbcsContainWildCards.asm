FsRtlDoesDbcsContainWildCards proc near ; CODE XREF: FsRtlIsFatDbcsLegal:loc_1408289A7↑p
                                        ; FsRtlIsDbcsInExpression+D4↓p
                                        ; DATA XREF: ...
                movzx   r8d, word ptr [rcx]
                xor     r10d, r10d
                mov     edx, r10d
                test    r8d, r8d
                jz      short loc_14088DDAA
                mov     r9, [rcx+8]
                lea     r11, cs:140000000h

loc_14088DD6A:                          ; CODE XREF: FsRtlDoesDbcsContainWildCards+58↓j
                mov     eax, edx
                movsx   rcx, byte ptr [rax+r9]
                cmp     cl, 80h
                jb      short loc_14088DD91
                cmp     cs:NlsMbOemCodePageTag, r10b
                jz      short loc_14088DD91
                movzx   eax, cl
                cmp     ds:rva word_140D2FC20[r11+rax*2], r10w
                jz      short loc_14088DD91
                inc     edx
                jmp     short loc_14088DDA3
; ---------------------------------------------------------------------------

loc_14088DD91:                          ; CODE XREF: FsRtlDoesDbcsContainWildCards+24↑j
                                        ; FsRtlDoesDbcsContainWildCards+2D↑j ...
                test    cl, cl
                js      short loc_14088DDA3
                movzx   eax, byte ptr [rcx+r11+10FB0h]
                and     eax, 8
                jnz     short loc_14088DDAE

loc_14088DDA3:                          ; CODE XREF: FsRtlDoesDbcsContainWildCards+3F↑j
                                        ; FsRtlDoesDbcsContainWildCards+43↑j
                inc     edx
                cmp     edx, r8d
                jb      short loc_14088DD6A

loc_14088DDAA:                          ; CODE XREF: FsRtlDoesDbcsContainWildCards+D↑j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14088DDAE:                          ; CODE XREF: FsRtlDoesDbcsContainWildCards+51↑j
                mov     al, 1
                retn
FsRtlDoesDbcsContainWildCards endp
