FsRtlSplitBaseMcb proc near             ; CODE XREF: FsRtlSplitLargeMcb+30↓p
                                        ; DATA XREF: .pdata:00000001400F12FC↑o

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, r8
                xor     edi, edi
                lea     r8, [rax+8]
                mov     [rax+8], edi
                mov     r14, rdx
                mov     rsi, rcx
                call    sub_14032D7CC
                test    al, al
                jz      loc_1404EF8FF
                mov     ebx, [rsp+38h+arg_0]
                mov     rdx, [rsi+10h]
                cmp     dword ptr [rdx+rbx*8+4], 0FFFFFFFFh
                jz      loc_1404EF8F7
                test    ebx, ebx
                jnz     short loc_1404EF802
                mov     eax, edi
                jmp     short loc_1404EF808
; ---------------------------------------------------------------------------

loc_1404EF802:                          ; CODE XREF: FsRtlSplitBaseMcb+4C↑j
                lea     eax, [rbx-1]
                mov     eax, [rdx+rax*8]

loc_1404EF808:                          ; CODE XREF: FsRtlSplitBaseMcb+50↑j
                cmp     eax, r14d
                jnz     short loc_1404EF842
                test    ebx, ebx
                jz      short loc_1404EF846
                lea     r8d, [rbx-1]
                mov     r10d, [rdx+r8*8+4]
                cmp     r10d, 0FFFFFFFFh
                jz      short loc_1404EF83A
                test    r8d, r8d
                jnz     short loc_1404EF829
                mov     ecx, edi
                jmp     short loc_1404EF82F
; ---------------------------------------------------------------------------

loc_1404EF829:                          ; CODE XREF: FsRtlSplitBaseMcb+73↑j
                lea     eax, [rbx-2]
                mov     ecx, [rdx+rax*8]

loc_1404EF82F:                          ; CODE XREF: FsRtlSplitBaseMcb+77↑j
                mov     eax, [rdx+r8*8]
                sub     eax, ecx
                add     eax, r10d
                jnz     short loc_1404EF842

loc_1404EF83A:                          ; CODE XREF: FsRtlSplitBaseMcb+6E↑j
                mov     ebx, r8d
                jmp     loc_1404EF8F7
; ---------------------------------------------------------------------------

loc_1404EF842:                          ; CODE XREF: FsRtlSplitBaseMcb+5B↑j
                                        ; FsRtlSplitBaseMcb+88↑j
                test    ebx, ebx
                jnz     short loc_1404EF84A

loc_1404EF846:                          ; CODE XREF: FsRtlSplitBaseMcb+5F↑j
                mov     eax, edi
                jmp     short loc_1404EF850
; ---------------------------------------------------------------------------

loc_1404EF84A:                          ; CODE XREF: FsRtlSplitBaseMcb+94↑j
                lea     eax, [rbx-1]
                mov     eax, [rdx+rax*8]

loc_1404EF850:                          ; CODE XREF: FsRtlSplitBaseMcb+98↑j
                mov     edx, ebx
                mov     rcx, rsi
                cmp     eax, r14d
                jnz     short loc_1404EF87F
                mov     r8d, 1
                call    sub_14032D694
                test    al, al
                jz      short loc_1404EF88E
                mov     rax, [rsi+10h]
                lea     ecx, [r15+r14]
                or      dword ptr [rax+rbx*8+4], 0FFFFFFFFh
                mov     rax, [rsi+10h]
                mov     [rax+rbx*8], ecx
                jmp     short loc_1404EF8F5
; ---------------------------------------------------------------------------

loc_1404EF87F:                          ; CODE XREF: FsRtlSplitBaseMcb+A8↑j
                mov     r8d, 2
                call    sub_14032D694
                test    al, al
                jnz     short loc_1404EF892

loc_1404EF88E:                          ; CODE XREF: FsRtlSplitBaseMcb+B7↑j
                xor     al, al
                jmp     short loc_1404EF902
; ---------------------------------------------------------------------------

loc_1404EF892:                          ; CODE XREF: FsRtlSplitBaseMcb+DC↑j
                mov     rcx, [rsi+10h]
                lea     r8d, [rbx+1]
                lea     r11d, [rbx+2]
                mov     edx, edi
                mov     eax, [rcx+r11*8+4]
                mov     [rcx+rbx*8+4], eax
                lea     ecx, [r15+r14]
                mov     rax, [rsi+10h]
                mov     [rax+rbx*8], r14d
                mov     rax, [rsi+10h]
                or      dword ptr [rax+r8*8+4], 0FFFFFFFFh
                mov     rax, [rsi+10h]
                mov     [rax+r8*8], ecx
                mov     r9, [rsi+10h]
                test    r8d, r8d
                jz      short loc_1404EF8D4
                mov     edx, [r9+rbx*8]

loc_1404EF8D4:                          ; CODE XREF: FsRtlSplitBaseMcb+11E↑j
                test    ebx, ebx
                jz      short loc_1404EF8DF
                lea     eax, [rbx-1]
                mov     edi, [r9+rax*8]

loc_1404EF8DF:                          ; CODE XREF: FsRtlSplitBaseMcb+126↑j
                sub     edx, edi
                mov     ebx, r11d
                add     [r9+r11*8+4], edx
                jmp     short loc_1404EF8F7
; ---------------------------------------------------------------------------

loc_1404EF8EB:                          ; CODE XREF: FsRtlSplitBaseMcb+14A↓j
                mov     rax, [rsi+10h]
                mov     ecx, ebx
                add     [rax+rcx*8], r15d

loc_1404EF8F5:                          ; CODE XREF: FsRtlSplitBaseMcb+CD↑j
                inc     ebx

loc_1404EF8F7:                          ; CODE XREF: FsRtlSplitBaseMcb+44↑j
                                        ; FsRtlSplitBaseMcb+8D↑j ...
                cmp     ebx, [rsi+4]
                jb      short loc_1404EF8EB
                mov     dil, 1

loc_1404EF8FF:                          ; CODE XREF: FsRtlSplitBaseMcb+31↑j
                mov     al, dil

loc_1404EF902:                          ; CODE XREF: FsRtlSplitBaseMcb+E0↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlSplitBaseMcb endp
