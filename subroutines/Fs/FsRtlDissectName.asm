FsRtlDissectName proc near              ; DATA XREF: .rdata:00000001400796F4↑o
                                        ; .rdata:0000000140079708↑o ...

arg_0           = qword ptr  8

                push    rbx
                xor     r9d, r9d
                mov     r10, r8
                mov     [rdx], r9d
                mov     r11, rdx
                mov     [rdx+8], r9
                mov     rbx, rcx
                mov     [r8], r9d
                mov     [r8+8], r9
                movzx   r8d, word ptr [rcx]
                shr     r8d, 1
                jz      loc_1403208F3
                mov     rdx, [rcx+8]
                mov     eax, r9d

loc_140320870:                          ; DATA XREF: .rdata:00000001400796F4↑o
                                        ; .rdata:0000000140079708↑o ...
                mov     [rsp+8+arg_0], rdi
                movzx   edi, word ptr [rdx]
                cmp     di, 5Ch ; '\'
                setz    al
                cmp     eax, r8d
                jnb     short loc_140320894

loc_140320884:                          ; CODE XREF: FsRtlDissectName+52↓j
                mov     ecx, eax
                cmp     word ptr [rdx+rcx*2], 5Ch ; '\'
                jz      short loc_140320894
                inc     eax
                cmp     eax, r8d
                jb      short loc_140320884

loc_140320894:                          ; CODE XREF: FsRtlDissectName+42↑j
                                        ; FsRtlDissectName+4B↑j
                mov     ecx, r9d
                cmp     di, 5Ch ; '\'
                movzx   edx, ax
                setz    cl
                sub     dx, cx
                mov     ecx, 2
                add     dx, dx
                cmp     di, 5Ch ; '\'
                mov     [r11], dx
                mov     rdi, [rsp+8+arg_0]
                cmovz   r9, rcx
                mov     [r11+2], dx
                add     r9, [rbx+8]
                mov     [r11+8], r9
                cmp     eax, r8d
                jnb     short loc_1403208F3

loc_1403208CF:                          ; DATA XREF: .pdata:00000001400D5648↑o
                                        ; .pdata:00000001400D5654↑o
                sub     r8w, ax
                add     r8w, r8w
                sub     r8w, cx
                lea     ecx, [rax+1]
                mov     [r10], r8w
                mov     [r10+2], r8w
                mov     rax, [rbx+8]
                lea     rcx, [rax+rcx*2]
                mov     [r10+8], rcx

loc_1403208F3:                          ; CODE XREF: FsRtlDissectName+23↑j
                                        ; FsRtlDissectName+8D↑j
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlDissectName endp
