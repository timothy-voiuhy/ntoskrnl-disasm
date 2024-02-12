RtlAvlInsertNodeEx proc near            ; CODE XREF: sub_140269350+15E↑p
                                        ; sub_140269D64+BA↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                push    rbx
                sub     rsp, 30h
                xor     eax, eax
                movzx   r10d, r8b
                mov     [r9], rax
                mov     rbx, r9
                mov     [r9+8], rax
                mov     r11, rcx
                mov     [r9+10h], rdx
                test    rdx, rdx
                jz      loc_1402696C9

loc_140269596:                          ; DATA XREF: .rdata:000000014005C3B0↑o
                                        ; .rdata:000000014005C3C4↑o ...
                mov     [rsp+38h+arg_8], rdi
                lea     r9, [rdx+10h]
                movzx   eax, r10b
                mov     [rdx+r10*8], rbx
                movzx   r8d, byte ptr [r9]
                add     al, al
                mov     ecx, 0FFFFFFFFh
                movzx   edi, r8b
                sub     cl, al
                and     cl, 3
                and     dil, 3
                jnz     short loc_140269604

loc_1402695C1:                          ; CODE XREF: RtlAvlInsertNodeEx+92↓j
                and     r8b, 0FCh
                mov     rbx, rdx
                or      r8b, cl
                mov     [r9], r8b
                mov     rdx, [r9]
                and     rdx, 0FFFFFFFFFFFFFFFCh
                jz      loc_1402696AD
                cmp     [rdx], rbx
                lea     r9, [rdx+10h]
                movzx   r8d, byte ptr [r9]
                mov     ecx, 0FFFFFFFFh
                setnz   r10b
                movzx   edi, r8b
                movzx   eax, r10b
                add     al, al
                sub     cl, al
                and     cl, 3
                and     dil, 3
                jz      short loc_1402695C1

loc_140269604:                          ; CODE XREF: RtlAvlInsertNodeEx+4F↑j
                cmp     dil, cl
                jnz     loc_1402696B9
                movzx   eax, byte ptr [rbx+10h]

loc_140269611:                          ; DATA XREF: .rdata:000000014005C3C4↑o
                                        ; .rdata:000000014005C3D8↑o ...
                mov     [rsp+38h+arg_0], rsi
                and     eax, 3
                movzx   esi, dil
                movzx   r9d, r10b
                cmp     eax, esi
                jnz     loc_1402696D3
                mov     rax, [rbx+10h]
                xor     r9d, 1
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rdx
                jnz     loc_14026976B
                mov     eax, r9d
                xor     rax, 1
                mov     r8d, r9d
                cmp     [rdx+rax*8], rbx
                lea     r9, [rdx+rax*8]
                jnz     loc_14026976B
                mov     rcx, [rdx+10h]
                and     rcx, 0FFFFFFFFFFFFFFFCh
                jz      loc_140269746
                cmp     [rcx+8], rdx
                jnz     loc_140269731
                mov     [rcx+8], rbx

loc_140269672:                          ; CODE XREF: RtlAvlInsertNodeEx+1C9↓j
                                        ; RtlAvlInsertNodeEx+1DE↓j
                mov     eax, [rbx+10h]
                and     eax, 3
                or      rax, rcx
                mov     [rbx+10h], rax
                mov     rcx, [rbx+r8*8]
                test    rcx, rcx
                jnz     loc_140269711

loc_14026968C:                          ; CODE XREF: RtlAvlInsertNodeEx+1BC↓j
                mov     [r9], rcx
                mov     [rbx+r8*8], rdx
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rax, rbx
                mov     [rdx+10h], rax
                and     byte ptr [rbx+10h], 0FCh
                and     byte ptr [rdx+10h], 0FCh

loc_1402696A8:                          ; CODE XREF: RtlAvlInsertNodeEx+19F↓j
                                        ; RtlAvlInsertNodeEx+1F6↓j
                mov     rsi, [rsp+38h+arg_0]

loc_1402696AD:                          ; CODE XREF: RtlAvlInsertNodeEx+65↑j
                                        ; DATA XREF: .pdata:00000001400CDEC0↑o ...
                mov     rdi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_1402696B8  db 0CCh                 ; DATA XREF: .pdata:00000001400CDECC↑o
                                        ; .pdata:00000001400CDED8↑o
; ---------------------------------------------------------------------------

loc_1402696B9:                          ; CODE XREF: RtlAvlInsertNodeEx+97↑j
                                        ; DATA XREF: .pdata:00000001400CDED8↑o ...
                and     byte ptr [rdx+10h], 0FCh
                mov     rdi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_1402696C8  db 0CCh                 ; DATA XREF: .pdata:00000001400CDEE4↑o
                                        ; .pdata:00000001400CDEF0↑o
; ---------------------------------------------------------------------------

loc_1402696C9:                          ; CODE XREF: RtlAvlInsertNodeEx+20↑j
                mov     [rcx], rbx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402696D3:                          ; CODE XREF: RtlAvlInsertNodeEx+B3↑j
                                        ; DATA XREF: .pdata:00000001400CDEF0↑o ...
                mov     r8, rbx
                mov     rcx, r11
                call    sub_14032FA30
                and     byte ptr [rdx+10h], 0FCh
                mov     r9, rax
                movzx   eax, byte ptr [rbx+10h]
                and     al, 0FCh
                mov     [rbx+10h], al
                movzx   r8d, byte ptr [r9+10h]
                mov     ecx, r8d
                and     ecx, 3
                cmp     esi, ecx
                jz      short loc_140269753
                xor     r8d, 0FFFFFFFEh
                and     r8d, 3
                cmp     esi, r8d
                jz      short loc_14026973E

loc_14026970A:                          ; CODE XREF: RtlAvlInsertNodeEx+1D4↓j
                and     byte ptr [r9+10h], 0FCh
                jmp     short loc_1402696A8
; ---------------------------------------------------------------------------

loc_140269711:                          ; CODE XREF: RtlAvlInsertNodeEx+116↑j
                mov     r10, [rcx+10h]
                mov     rax, r10
                and     rax, 0FFFFFFFFFFFFFFFCh
                cmp     rax, rbx
                jnz     short loc_14026976B
                and     r10d, 3
                or      r10, rdx
                mov     [rcx+10h], r10
                jmp     loc_14026968C
; ---------------------------------------------------------------------------

loc_140269731:                          ; CODE XREF: RtlAvlInsertNodeEx+F8↑j
                cmp     [rcx], rdx
                jnz     short loc_14026976B
                mov     [rcx], rbx
                jmp     loc_140269672
; ---------------------------------------------------------------------------

loc_14026973E:                          ; CODE XREF: RtlAvlInsertNodeEx+198↑j
                or      al, dil
                mov     [rbx+10h], al
                jmp     short loc_14026970A
; ---------------------------------------------------------------------------

loc_140269746:                          ; CODE XREF: RtlAvlInsertNodeEx+EE↑j
                cmp     [r11], rdx
                jnz     short loc_14026976B
                mov     [r11], rbx
                jmp     loc_140269672
; ---------------------------------------------------------------------------

loc_140269753:                          ; CODE XREF: RtlAvlInsertNodeEx+18B↑j
                movzx   eax, byte ptr [rdx+10h]
                xor     al, dil
                xor     al, 0FEh
                and     al, 3
                xor     [rdx+10h], al
                and     byte ptr [r9+10h], 0FCh
                jmp     loc_1402696A8
; ---------------------------------------------------------------------------

loc_14026976B:                          ; CODE XREF: RtlAvlInsertNodeEx+C8↑j
                                        ; RtlAvlInsertNodeEx+E0↑j ...
                mov     ecx, 1Dh
                int     29h             ; Win8: RtlFailFast(ecx)
RtlAvlInsertNodeEx endp
