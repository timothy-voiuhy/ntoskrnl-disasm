FsRtlUpperOplockFsctrl proc near        ; DATA XREF: .pdata:000000014011C2F8↑o

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r10d, r9d
                xor     edi, edi
                and     r9d, 6
                mov     ebp, r8d
                mov     r8, [rdx+0B8h]
                mov     r14, rcx
                shl     r9d, 0Ch
                xor     ecx, ecx
                lea     r15d, [rdi+1]
                mov     r11, rdx
                and     r10d, r15d
                mov     sil, [r8]
                shl     r10d, 0Ch
                or      r10d, r9d
                test    sil, sil
                jnz     short loc_14088D523
                mov     edx, [r8+10h]
                bt      edx, 14h
                setb    cl
                bt      r10d, 0Eh
                setnb   al
                test    al, cl
                jz      short loc_14088D50A

loc_14088D4D4:                          ; CODE XREF: FsRtlUpperOplockFsctrl+B1↓j
                mov     ebx, 0C00000E2h

loc_14088D4D9:                          ; CODE XREF: FsRtlUpperOplockFsctrl+146↓j
                cmp     sil, 0Dh
                jnz     short loc_14088D4EE
                mov     dl, r15b
                mov     [r11+30h], ebx
                mov     rcx, r11
                call    IofCompleteRequest

loc_14088D4EE:                          ; CODE XREF: FsRtlUpperOplockFsctrl+6D↑j
                                        ; FsRtlUpperOplockFsctrl+166↓j
                mov     rbp, [rsp+48h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14088D50A:                          ; CODE XREF: FsRtlUpperOplockFsctrl+62↑j
                bt      edx, 10h
                setb    cl
                bt      r10d, 0Dh
                setnb   al
                test    al, cl
                jz      loc_14088D5BC
                jmp     short loc_14088D4D4
; ---------------------------------------------------------------------------

loc_14088D523:                          ; CODE XREF: FsRtlUpperOplockFsctrl+4B↑j
                mov     edx, [r8+18h]
                sub     edx, 90000h
                jz      short loc_14088D59B
                sub     edx, 4
                jz      short loc_14088D594
                sub     edx, 4
                jz      short loc_14088D58D
                sub     edx, 54h ; 'T'
                jz      short loc_14088D586
                cmp     edx, 1E4h
                jnz     short loc_14088D5BC
                cmp     dword ptr [r8+10h], 0Ch
                jnb     short loc_14088D554
                mov     edi, 0C0000023h
                jmp     short loc_14088D5A0
; ---------------------------------------------------------------------------

loc_14088D554:                          ; CODE XREF: FsRtlUpperOplockFsctrl+DB↑j
                mov     rdx, [r11+18h]
                cmp     [rdx], r15w
                jbe     short loc_14088D565
                mov     edi, 0C000000Dh
                jmp     short loc_14088D5A0
; ---------------------------------------------------------------------------

loc_14088D565:                          ; CODE XREF: FsRtlUpperOplockFsctrl+EC↑j
                mov     eax, [rdx+8]
                mov     ecx, 2
                test    cl, al
                jnz     short loc_14088D5BC
                mov     eax, [rdx+4]
                mov     ecx, eax
                and     ecx, r15d
                and     eax, 6
                shl     ecx, 0Ch
                shl     eax, 0Ch
                or      ecx, eax
                jmp     short loc_14088D5A0
; ---------------------------------------------------------------------------

loc_14088D586:                          ; CODE XREF: FsRtlUpperOplockFsctrl+CC↑j
                mov     ecx, 8
                jmp     short loc_14088D5A0
; ---------------------------------------------------------------------------

loc_14088D58D:                          ; CODE XREF: FsRtlUpperOplockFsctrl+C7↑j
                mov     ecx, 4
                jmp     short loc_14088D5A0
; ---------------------------------------------------------------------------

loc_14088D594:                          ; CODE XREF: FsRtlUpperOplockFsctrl+C2↑j
                mov     ecx, 10h
                jmp     short loc_14088D5A0
; ---------------------------------------------------------------------------

loc_14088D59B:                          ; CODE XREF: FsRtlUpperOplockFsctrl+BD↑j
                mov     ecx, 2

loc_14088D5A0:                          ; CODE XREF: FsRtlUpperOplockFsctrl+E2↑j
                                        ; FsRtlUpperOplockFsctrl+F3↑j ...
                mov     edx, r10d
                call    sub_14061AD94
                test    al, al
                mov     ebx, 0C00000E2h
                cmovz   edi, ebx
                mov     ebx, edi
                test    edi, edi
                jnz     loc_14088D4D9

loc_14088D5BC:                          ; CODE XREF: FsRtlUpperOplockFsctrl+AB↑j
                                        ; FsRtlUpperOplockFsctrl+D4↑j ...
                mov     r9d, [rsp+48h+arg_20]
                mov     r8d, ebp
                mov     rdx, r11
                mov     [rsp+48h+var_28], r10d
                mov     rcx, r14
                call    sub_14061ADE0
                mov     ebx, eax
                jmp     loc_14088D4EE
FsRtlUpperOplockFsctrl endp
