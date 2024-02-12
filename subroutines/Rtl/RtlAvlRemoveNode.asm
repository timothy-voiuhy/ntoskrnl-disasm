RtlAvlRemoveNode proc near              ; CODE XREF: sub_1402335C0+848↑p
                                        ; sub_14026DEF0+285↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r10, [rdx]
                mov     r8, rdx
                mov     r11, [rdx+8]
                test    r10, r10
                mov     r9, r11
                mov     rbx, rcx
                cmovnz  r9, r10
                xor     eax, eax
                test    r10, r10
                cmovnz  rax, r11
                test    rax, rax
                jnz     loc_140292773
                mov     rdx, [rdx+10h]
                and     rdx, 0FFFFFFFFFFFFFFFCh
                test    r9, r9
                jnz     short loc_140292733

loc_1402926B4:                          ; CODE XREF: RtlAvlRemoveNode+E1↓j
                test    rdx, rdx
                jnz     short loc_1402926E5
                cmp     [rcx], r8
                jnz     loc_140292A3B
                mov     [rcx], r9

loc_1402926C5:                          ; CODE XREF: RtlAvlRemoveNode+D1↓j
                                        ; RtlAvlRemoveNode+F1↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402926E5:                          ; CODE XREF: RtlAvlRemoveNode+57↑j
                cmp     [rdx+8], r8
                jz      short loc_14029276A
                cmp     [rdx], r8
                jnz     loc_140292A3B
                mov     r10b, 1
                mov     [rdx], r9

loc_1402926FA:                          ; CODE XREF: RtlAvlRemoveNode+111↓j
                mov     r12d, 8
                lea     r14d, [r12-7]

loc_140292705:                          ; CODE XREF: RtlAvlRemoveNode+108↓j
                                        ; RtlAvlRemoveNode+1D9↓j ...
                movzx   eax, byte ptr [rdx+10h]
                lea     rsi, [rdx+10h]
                movzx   edi, al
                movzx   ecx, r10b
                and     dil, 3
                xor     cl, 2
                cmp     dil, cl
                jz      short loc_140292746
                test    dil, dil
                jnz     loc_14029283E
                and     al, 0FCh
                or      al, r10b
                mov     [rdx+10h], al
                jmp     short loc_1402926C5
; ---------------------------------------------------------------------------

loc_140292733:                          ; CODE XREF: RtlAvlRemoveNode+52↑j
                cmp     [r9+10h], r8
                jnz     loc_140292A3B
                mov     [r9+10h], rdx
                jmp     loc_1402926B4
; ---------------------------------------------------------------------------

loc_140292746:                          ; CODE XREF: RtlAvlRemoveNode+BE↑j
                and     al, 0FCh
                mov     [rsi], al
                mov     rbp, [rsi]

loc_14029274D:                          ; CODE XREF: RtlAvlRemoveNode+330↓j
                                        ; RtlAvlRemoveNode+37F↓j ...
                and     rbp, 0FFFFFFFFFFFFFFFCh
                jz      loc_1402926C5
                cmp     [rbp+8], rdx
                mov     r10d, 3
                mov     rdx, rbp
                cmovnz  r10d, r14d
                jmp     short loc_140292705
; ---------------------------------------------------------------------------

loc_14029276A:                          ; CODE XREF: RtlAvlRemoveNode+89↑j
                mov     r10b, 3
                mov     [rdx+8], r9
                jmp     short loc_1402926FA
; ---------------------------------------------------------------------------

loc_140292773:                          ; CODE XREF: RtlAvlRemoveNode+41↑j
                movzx   eax, byte ptr [rdx+10h]
                mov     r14d, 1
                and     al, 3
                cmp     al, 3
                jz      loc_140292932
                mov     r9, [r11]
                mov     rcx, r11
                mov     rdx, r11
                mov     esi, r14d
                test    r9, r9
                jnz     loc_140292967

loc_14029279C:                          ; CODE XREF: RtlAvlRemoveNode+321↓j
                mov     rdi, [rcx+8]

loc_1402927A0:                          ; CODE XREF: RtlAvlRemoveNode+302↓j
                mov     [rcx], r10
                mov     [rcx+8], r11
                mov     r9, [r10+10h]
                mov     rax, r9
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, r8
                jnz     loc_140292A3B
                and     r9d, 3
                or      r9, rcx
                mov     [r10+10h], r9
                mov     r9, [r11+10h]
                mov     rax, r9
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, r8
                jnz     loc_140292A3B
                and     r9d, 3
                or      r9, rcx
                mov     [r11+10h], r9
                mov     rax, [rcx+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rdx
                jnz     loc_140292A3B
                mov     eax, esi
                mov     [rdx+rax*8], rdi
                test    rdi, rdi
                jnz     loc_140292902

loc_140292805:                          ; CODE XREF: RtlAvlRemoveNode+2B0↓j
                mov     rax, [r8+10h]
                test    esi, esi
                mov     [rcx+10h], rax
                mov     r10d, 3
                mov     r9, [r8+10h]
                cmovz   r10d, r14d
                mov     r12d, 8
                and     r9, 0FFFFFFFFFFFFFFFCh
                jnz     loc_140292915
                cmp     [rbx], r8
                jnz     loc_140292A3B
                mov     [rbx], rcx
                jmp     loc_140292705
; ---------------------------------------------------------------------------

loc_14029283E:                          ; CODE XREF: RtlAvlRemoveNode+C3↑j
                mov     rbp, [rsi]
                mov     r15, [rdx]
                cmp     r10b, 1
                jnz     short loc_14029284E
                mov     r15, [rdx+8]

loc_14029284E:                          ; CODE XREF: RtlAvlRemoveNode+1E8↑j
                movzx   r8d, byte ptr [r15+10h]
                and     r8b, 3
                cmp     r8b, cl
                jz      loc_140292995
                mov     rax, [r15+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rdx
                jnz     loc_140292A3B
                xor     eax, eax
                cmp     r10b, 1
                cmovz   rax, r12
                cmp     [rax+rdx], r15
                lea     r11, [rax+rdx]
                jnz     loc_140292A3B
                mov     rcx, rbp
                and     rcx, 0FFFFFFFFFFFFFFFCh
                jz      loc_140292A10
                cmp     [rcx+8], rdx
                jnz     loc_140292A03
                mov     [rcx+8], r15

loc_1402928A4:                          ; CODE XREF: RtlAvlRemoveNode+3AB↓j
                                        ; RtlAvlRemoveNode+3B8↓j
                mov     eax, [r15+10h]
                and     eax, 3
                or      rax, rcx
                mov     [r15+10h], rax
                xor     eax, eax
                cmp     r10b, 1
                cmovnz  rax, r12
                mov     rcx, [rax+r15]
                lea     r9, [rax+r15]
                test    rcx, rcx
                jnz     loc_1402929E4

loc_1402928CD:                          ; CODE XREF: RtlAvlRemoveNode+39E↓j
                mov     [r11], rcx
                mov     [r9], rdx
                mov     eax, [rsi]
                and     eax, 3
                or      rax, r15
                mov     [rsi], rax
                movzx   eax, byte ptr [r15+10h]
                and     al, 0FCh
                test    r8b, r8b
                jnz     loc_140292986
                xor     r10b, 0FEh
                and     r10b, 3
                or      r10b, al
                mov     [r15+10h], r10b
                jmp     loc_1402926C5
; ---------------------------------------------------------------------------

loc_140292902:                          ; CODE XREF: RtlAvlRemoveNode+19F↑j
                cmp     [rdi+10h], rcx
                jnz     loc_140292A3B
                mov     [rdi+10h], rdx
                jmp     loc_140292805
; ---------------------------------------------------------------------------

loc_140292915:                          ; CODE XREF: RtlAvlRemoveNode+1C7↑j
                xor     eax, eax
                cmp     [r9+8], r8
                cmovz   rax, r12
                cmp     [rax+r9], r8
                jnz     loc_140292A3B
                mov     [rax+r9], rcx
                jmp     loc_140292705
; ---------------------------------------------------------------------------

loc_140292932:                          ; CODE XREF: RtlAvlRemoveNode+121↑j
                mov     rax, [r10+8]
                xor     esi, esi
                mov     rcx, r10
                mov     rdx, r10
                test    rax, rax
                jz      short loc_14029295F
                mov     esi, r14d
                db      66h, 66h
                nop     word ptr [rax+rax+00000000h]

loc_140292950:                          ; CODE XREF: RtlAvlRemoveNode+2FD↓j
                mov     rdx, rcx
                mov     rcx, rax
                mov     rax, [rax+8]
                test    rax, rax
                jnz     short loc_140292950

loc_14029295F:                          ; CODE XREF: RtlAvlRemoveNode+2E1↑j
                mov     rdi, [rcx]
                jmp     loc_1402927A0
; ---------------------------------------------------------------------------

loc_140292967:                          ; CODE XREF: RtlAvlRemoveNode+136↑j
                xor     esi, esi
                nop     dword ptr [rax+00000000h]

loc_140292970:                          ; CODE XREF: RtlAvlRemoveNode+31F↓j
                mov     rax, [r9]
                mov     rdx, rcx
                mov     rcx, r9
                mov     r9, rax
                test    rax, rax
                jnz     short loc_140292970
                jmp     loc_14029279C
; ---------------------------------------------------------------------------

loc_140292986:                          ; CODE XREF: RtlAvlRemoveNode+288↑j
                mov     [r15+10h], al
                mov     rdx, r15
                and     byte ptr [rsi], 0FCh
                jmp     loc_14029274D
; ---------------------------------------------------------------------------

loc_140292995:                          ; CODE XREF: RtlAvlRemoveNode+1FA↑j
                xor     r9d, r9d
                mov     r8, r15
                cmp     r10b, 1
                mov     rcx, rbx
                setz    r9b
                call    sub_14032FA30
                and     byte ptr [rsi], 0FCh
                mov     rdx, rax
                movzx   r9d, byte ptr [r15+10h]
                and     r9b, 0FCh
                movzx   r8d, dil
                mov     [r15+10h], r9b
                movzx   ecx, byte ptr [rax+10h]
                mov     eax, ecx
                and     eax, 3
                cmp     r8d, eax
                jz      short loc_140292A26
                xor     ecx, 0FFFFFFFEh
                and     ecx, 3
                cmp     r8d, ecx
                jz      short loc_140292A1D

loc_1402929DB:                          ; CODE XREF: RtlAvlRemoveNode+3C4↓j
                and     byte ptr [rdx+10h], 0FCh
                jmp     loc_14029274D
; ---------------------------------------------------------------------------

loc_1402929E4:                          ; CODE XREF: RtlAvlRemoveNode+267↑j
                mov     rdi, [rcx+10h]
                mov     rax, rdi
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, r15
                jnz     short loc_140292A3B
                and     edi, 3
                or      rdi, rdx
                mov     [rcx+10h], rdi
                jmp     loc_1402928CD
; ---------------------------------------------------------------------------

loc_140292A03:                          ; CODE XREF: RtlAvlRemoveNode+23A↑j
                cmp     [rcx], rdx
                jnz     short loc_140292A3B
                mov     [rcx], r15
                jmp     loc_1402928A4
; ---------------------------------------------------------------------------

loc_140292A10:                          ; CODE XREF: RtlAvlRemoveNode+230↑j
                cmp     [rbx], rdx
                jnz     short loc_140292A3B
                mov     [rbx], r15
                jmp     loc_1402928A4
; ---------------------------------------------------------------------------

loc_140292A1D:                          ; CODE XREF: RtlAvlRemoveNode+379↑j
                or      r9b, dil
                mov     [r15+10h], r9b
                jmp     short loc_1402929DB
; ---------------------------------------------------------------------------

loc_140292A26:                          ; CODE XREF: RtlAvlRemoveNode+36E↑j
                movzx   eax, byte ptr [rsi]
                xor     al, dil
                xor     al, 0FEh
                and     al, 3
                xor     [rsi], al
                and     byte ptr [rdx+10h], 0FCh
                jmp     loc_14029274D
; ---------------------------------------------------------------------------

loc_140292A3B:                          ; CODE XREF: RtlAvlRemoveNode+5C↑j
                                        ; RtlAvlRemoveNode+8E↑j ...
                mov     ecx, 1Dh
                int     29h             ; Win8: RtlFailFast(ecx)
RtlAvlRemoveNode endp
