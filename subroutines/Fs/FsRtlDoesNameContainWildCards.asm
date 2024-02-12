FsRtlDoesNameContainWildCards proc near ; CODE XREF: sub_1402067E0+3D9↑p
                                        ; DATA XREF: .pdata:00000001400C9654↑o
                movzx   eax, word ptr [rcx]
                test    ax, ax
                jz      short loc_140206CB8
                mov     r8, [rcx+8]
                shr     rax, 1
                dec     rax
                lea     rax, [r8+rax*2]
                cmp     rax, r8
                jb      short loc_140206CB8
                lea     r9, qword_140010FB0

loc_140206CA2:                          ; CODE XREF: FsRtlDoesNameContainWildCards+36↓j
                movzx   ecx, word ptr [rax]
                cmp     ecx, 5Ch ; '\'
                jz      short loc_140206CB8
                cmp     ecx, 40h ; '@'
                jb      short loc_140206CBC

loc_140206CAF:                          ; CODE XREF: FsRtlDoesNameContainWildCards+44↓j
                sub     rax, 2
                cmp     rax, r8
                jnb     short loc_140206CA2

loc_140206CB8:                          ; CODE XREF: FsRtlDoesNameContainWildCards+6↑j
                                        ; FsRtlDoesNameContainWildCards+19↑j ...
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140206CBC:                          ; CODE XREF: FsRtlDoesNameContainWildCards+2D↑j
                movzx   edx, byte ptr [rcx+r9]
                and     edx, 8
                jz      short loc_140206CAF
                mov     al, 1
                retn
FsRtlDoesNameContainWildCards endp
