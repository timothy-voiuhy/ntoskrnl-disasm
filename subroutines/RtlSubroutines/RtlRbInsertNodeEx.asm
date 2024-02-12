RtlRbInsertNodeEx proc near             ; CODE XREF: sub_14020B918+134↑p
                                        ; sub_140239520+5D4↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014042E720 SIZE 00000017 BYTES

                push    r14
                xor     r14d, r14d
                movzx   r11d, r8b
                mov     [r9], r14
                mov     r10, rcx
                mov     [r9+8], r14
                movzx   ecx, byte ptr [rcx+8]
                movzx   eax, cl
                and     al, 1
                test    rdx, rdx
                jz      loc_14023BC71
                mov     r8, rdx
                mov     rcx, r9
                xor     r8, r9
                test    al, al
                cmovnz  rcx, r8
                mov     [rdx+r11*8], rcx
                mov     rcx, rdx
                test    byte ptr [r10+8], 1
                cmovnz  rcx, r8
                or      rcx, 1
                mov     [r9+10h], rcx
                test    r11b, r11b
                jz      loc_14023BC48

loc_14023B975:                          ; CODE XREF: RtlRbInsertNodeEx+33A↓j
                                        ; RtlRbInsertNodeEx+34C↓j ...
                test    byte ptr [rdx+10h], 1
                jnz     short loc_14023B97F

loc_14023B97B:                          ; CODE XREF: RtlRbInsertNodeEx+323↓j
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023B97F:                          ; CODE XREF: RtlRbInsertNodeEx+59↑j
                                        ; DATA XREF: .rdata:0000000140055114↑o ...
                mov     [rsp+8+arg_0], rbx
                mov     [rsp+8+arg_8], rbp
                mov     [rsp+8+arg_10], rsi
                movzx   esi, byte ptr [r10+8]
                mov     [rsp+8+arg_18], rdi

loc_14023B998:                          ; CODE XREF: RtlRbInsertNodeEx+10A↓j
                mov     r8, [rdx+10h]
                movzx   ecx, sil
                and     r8, 0FFFFFFFFFFFFFFFCh
                and     cl, 1
                jnz     loc_14023BD5D

loc_14023B9AD:                          ; CODE XREF: RtlRbInsertNodeEx+440↓j
                                        ; RtlRbInsertNodeEx+449↓j
                mov     rbx, [r8]
                test    cl, cl
                jnz     loc_14023BD6E

loc_14023B9B8:                          ; CODE XREF: RtlRbInsertNodeEx+451↓j
                                        ; RtlRbInsertNodeEx+45A↓j
                cmp     rbx, rdx
                mov     eax, r14d
                setnz   al
                mov     ebp, eax
                xor     rbp, 1
                mov     edi, eax
                mov     rbx, [r8+rbp*8]
                test    cl, cl
                jnz     short loc_14023BA35

loc_14023B9D1:                          ; CODE XREF: RtlRbInsertNodeEx+4C6↓j
                test    rbx, rbx
                jz      short loc_14023BA3E
                test    byte ptr [rbx+10h], 1
                jz      short loc_14023BA3E
                and     byte ptr [rdx+10h], 0FEh
                mov     r9, r8
                and     byte ptr [rbx+10h], 0FEh
                mov     rdx, [r8+10h]
                movzx   ecx, dl
                and     rdx, 0FFFFFFFFFFFFFFFCh
                test    byte ptr [r10+8], 1
                jnz     loc_14023BE0D

loc_14023B9FD:                          ; CODE XREF: RtlRbInsertNodeEx+4F9↓j
                test    rdx, rdx
                jz      loc_14023BC2F
                or      cl, 1
                mov     [r8+10h], cl
                movzx   esi, byte ptr [r10+8]
                mov     rax, [rdx]
                test    sil, 1
                jnz     loc_14023BE88

loc_14023BA1F:                          ; CODE XREF: RtlRbInsertNodeEx+56B↓j
                                        ; RtlRbInsertNodeEx+574↓j
                cmp     r8, rax
                setnz   r11b
                test    byte ptr [rdx+10h], 1
                jnz     loc_14023B998
                jmp     loc_14023BC2F
; ---------------------------------------------------------------------------

loc_14023BA35:                          ; CODE XREF: RtlRbInsertNodeEx+AF↑j
                test    rbx, rbx
                jnz     loc_14023BDE3

loc_14023BA3E:                          ; CODE XREF: RtlRbInsertNodeEx+B4↑j
                                        ; RtlRbInsertNodeEx+BA↑j
                movzx   eax, r11b
                cmp     eax, edi
                jz      loc_14023BB22
                mov     rax, [r9+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                movzx   r11d, sil
                and     r11d, 1
                jnz     loc_14023BE1E

loc_14023BA60:                          ; CODE XREF: RtlRbInsertNodeEx+501↓j
                                        ; RtlRbInsertNodeEx+50A↓j
                cmp     rax, rdx
                jnz     loc_14042E730
                mov     rax, [rdx+rbp*8]
                test    r11d, r11d
                jnz     loc_14023BE2F

loc_14023BA76:                          ; CODE XREF: RtlRbInsertNodeEx+512↓j
                                        ; RtlRbInsertNodeEx+51B↓j
                cmp     rax, r9
                jnz     loc_14042E730
                mov     rax, [r8+rdi*8]
                test    r11d, r11d
                jnz     loc_14023BEC5

loc_14023BA8C:                          ; CODE XREF: RtlRbInsertNodeEx+5A8↓j
                                        ; RtlRbInsertNodeEx+5B1↓j
                cmp     rax, rdx
                jnz     loc_14042E730
                mov     rax, [rdx+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    r11d, r11d
                jnz     loc_14023BED6

loc_14023BAA6:                          ; CODE XREF: RtlRbInsertNodeEx+5B9↓j
                                        ; RtlRbInsertNodeEx+5C2↓j
                cmp     rax, r8
                jnz     loc_14042E730
                mov     rcx, r9
                lea     rsi, [r9+rdi*8]
                xor     rcx, r8
                mov     rax, rcx
                test    r11d, r11d
                cmovz   rax, r9
                cmovz   rcx, r8
                mov     [r8+rdi*8], rax
                mov     eax, [r9+10h]
                and     eax, 3
                or      rcx, rax
                mov     [r9+10h], rcx
                mov     rcx, [rsi]
                test    r11d, r11d
                jnz     loc_14023BE40

loc_14023BAE5:                          ; CODE XREF: RtlRbInsertNodeEx+52C↓j
                test    rcx, rcx
                jnz     loc_14023BCFA

loc_14023BAEE:                          ; CODE XREF: RtlRbInsertNodeEx+40E↓j
                                        ; RtlRbInsertNodeEx+523↓j
                test    r11d, r11d
                jnz     loc_14023BE51

loc_14023BAF7:                          ; CODE XREF: RtlRbInsertNodeEx+534↓j
                                        ; RtlRbInsertNodeEx+53D↓j
                mov     [rdx+rbp*8], rcx
                mov     rcx, rdx
                xor     rcx, r9
                test    r11d, r11d
                mov     rax, rcx
                cmovz   rax, rdx
                cmovz   rcx, r9
                mov     [rsi], rax
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rcx, rax
                mov     [rdx+10h], rcx
                mov     rdx, r9

loc_14023BB22:                          ; CODE XREF: RtlRbInsertNodeEx+124↑j
                mov     rax, [r10+8]
                mov     rsi, [r10]
                test    al, 1
                jnz     loc_14023BD7F

loc_14023BB31:                          ; CODE XREF: RtlRbInsertNodeEx+46B↓j
                                        ; RtlRbInsertNodeEx+1F2E0B↓j
                movzx   r9d, al
                xor     edi, 1
                mov     rax, [rdx+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                and     r9d, 1
                jnz     loc_14023BD9F

loc_14023BB4A:                          ; CODE XREF: RtlRbInsertNodeEx+482↓j
                                        ; RtlRbInsertNodeEx+48B↓j
                cmp     rax, r8
                jnz     loc_14042E730
                mov     eax, edi
                xor     rax, 1
                mov     r11d, edi
                lea     rbx, [r8+rax*8]
                mov     rax, [r8+rax*8]
                test    r9d, r9d
                jnz     loc_14023BDB0

loc_14023BB6D:                          ; CODE XREF: RtlRbInsertNodeEx+493↓j
                                        ; RtlRbInsertNodeEx+49C↓j
                cmp     rax, rdx
                jnz     loc_14042E730
                mov     rcx, [r8+10h]
                and     rcx, 0FFFFFFFFFFFFFFFCh
                test    r9d, r9d
                jnz     loc_14023BDEB

loc_14023BB87:                          ; CODE XREF: RtlRbInsertNodeEx+4D7↓j
                test    rcx, rcx
                jz      loc_14023BD33
                mov     rax, [rcx+8]
                test    r9d, r9d
                jnz     loc_14023BE62

loc_14023BB9D:                          ; CODE XREF: RtlRbInsertNodeEx+545↓j
                                        ; RtlRbInsertNodeEx+54E↓j
                cmp     rax, r8
                jnz     loc_14023BCD0
                mov     rax, rdx
                xor     rax, rcx
                test    r9d, r9d
                cmovz   rax, rdx
                mov     [rcx+8], rax

loc_14023BBB7:                          ; CODE XREF: RtlRbInsertNodeEx+3D5↓j
                                        ; RtlRbInsertNodeEx+41F↓j
                test    r9d, r9d
                jnz     loc_14023BDFC

loc_14023BBC0:                          ; CODE XREF: RtlRbInsertNodeEx+4DF↓j
                                        ; RtlRbInsertNodeEx+4E8↓j
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rax, rcx
                mov     [rdx+10h], rax
                mov     rcx, [rdx+rdi*8]
                test    r9d, r9d
                jnz     loc_14023BDC1

loc_14023BBDA:                          ; CODE XREF: RtlRbInsertNodeEx+4AD↓j
                test    rcx, rcx
                jnz     loc_14023BC97

loc_14023BBE3:                          ; CODE XREF: RtlRbInsertNodeEx+3AB↓j
                                        ; RtlRbInsertNodeEx+4A4↓j
                test    r9d, r9d
                jnz     loc_14023BDD2

loc_14023BBEC:                          ; CODE XREF: RtlRbInsertNodeEx+4B5↓j
                                        ; RtlRbInsertNodeEx+4BE↓j
                mov     [rbx], rcx
                mov     rcx, rdx
                xor     rcx, r8
                test    r9d, r9d
                mov     rax, rcx
                cmovz   rax, r8
                cmovz   rcx, rdx
                mov     [rdx+r11*8], rax
                mov     eax, [r8+10h]
                and     eax, 3
                or      rcx, rax
                mov     rax, rsi
                mov     [r8+10h], rcx
                test    byte ptr [r10+8], 1
                jnz     loc_14023BD90

loc_14023BC23:                          ; CODE XREF: RtlRbInsertNodeEx+47A↓j
                mov     [r10], rax
                or      byte ptr [r8+10h], 1
                and     byte ptr [rdx+10h], 0FEh

loc_14023BC2F:                          ; CODE XREF: RtlRbInsertNodeEx+E0↑j
                                        ; RtlRbInsertNodeEx+110↑j ...
                mov     rsi, [rsp+8+arg_10]
                mov     rbp, [rsp+8+arg_8]
                mov     rbx, [rsp+8+arg_0]
                mov     rdi, [rsp+8+arg_18]
                jmp     loc_14023B97B
; ---------------------------------------------------------------------------

loc_14023BC48:                          ; CODE XREF: RtlRbInsertNodeEx+4F↑j
                                        ; DATA XREF: .pdata:00000001400CB8BC↑o ...
                mov     rax, [r10+8]
                test    al, 1
                jnz     loc_14023BD44
                mov     rcx, rax

loc_14023BC57:                          ; CODE XREF: RtlRbInsertNodeEx+438↓j
                                        ; RtlRbInsertNodeEx+1F2E03↓j
                cmp     rdx, rcx
                jnz     loc_14023B975
                test    al, 1
                jnz     loc_14023BE73
                mov     [r10+8], r9
                jmp     loc_14023B975
; ---------------------------------------------------------------------------

loc_14023BC71:                          ; CODE XREF: RtlRbInsertNodeEx+1F↑j
                mov     rdx, r9
                xor     rdx, r10
                test    al, al
                jnz     loc_14023BE99
                mov     [r10], r9

loc_14023BC82:                          ; CODE XREF: RtlRbInsertNodeEx+57C↓j
                test    cl, 1
                jnz     loc_14023BEA1
                mov     [r10+8], r9
                mov     [r9+10h], r14
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14023BC97:                          ; CODE XREF: RtlRbInsertNodeEx+2BD↑j
                                        ; DATA XREF: .pdata:00000001400CB8C8↑o ...
                mov     rdi, [rcx+10h]
                mov     rax, rdi
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    r9d, r9d
                jnz     loc_14023BEE7

loc_14023BCAB:                          ; CODE XREF: RtlRbInsertNodeEx+5CA↓j
                                        ; RtlRbInsertNodeEx+5D3↓j
                cmp     rax, rdx
                jnz     loc_14042E730
                mov     rax, r8
                xor     rax, rcx
                test    r9d, r9d
                cmovz   rax, r8
                and     edi, 3
                or      rax, rdi
                mov     [rcx+10h], rax
                jmp     loc_14023BBE3
; ---------------------------------------------------------------------------

loc_14023BCD0:                          ; CODE XREF: RtlRbInsertNodeEx+280↑j
                mov     rax, [rcx]
                test    r9d, r9d
                jnz     loc_14023BEB4

loc_14023BCDC:                          ; CODE XREF: RtlRbInsertNodeEx+597↓j
                                        ; RtlRbInsertNodeEx+5A0↓j
                cmp     rax, r8
                jnz     loc_14042E730
                mov     rax, rdx
                xor     rax, rcx
                test    r9d, r9d
                cmovz   rax, rdx
                mov     [rcx], rax
                jmp     loc_14023BBB7
; ---------------------------------------------------------------------------

loc_14023BCFA:                          ; CODE XREF: RtlRbInsertNodeEx+1C8↑j
                mov     rbx, [rcx+10h]
                mov     rax, rbx
                and     rax, 0FFFFFFFFFFFFFFFCh
                test    r11d, r11d
                jnz     loc_14023BEF8

loc_14023BD0E:                          ; CODE XREF: RtlRbInsertNodeEx+5DB↓j
                                        ; RtlRbInsertNodeEx+5E4↓j
                cmp     rax, r9
                jnz     loc_14042E730
                mov     rax, rcx
                xor     rax, rdx
                test    r11d, r11d
                cmovz   rax, rdx
                and     ebx, 3
                or      rax, rbx
                mov     [rcx+10h], rax
                jmp     loc_14023BAEE
; ---------------------------------------------------------------------------

loc_14023BD33:                          ; CODE XREF: RtlRbInsertNodeEx+26A↑j
                                        ; RtlRbInsertNodeEx+4CE↓j
                cmp     rsi, r8
                jnz     loc_14042E730
                mov     rsi, rdx
                jmp     loc_14023BBB7
; ---------------------------------------------------------------------------

loc_14023BD44:                          ; CODE XREF: RtlRbInsertNodeEx+32E↑j
                                        ; DATA XREF: .pdata:00000001400CB8D4↑o ...
                cmp     rax, 1
                jz      loc_14042E720
                mov     rcx, r10
                or      rcx, 1
                xor     rcx, rax
                jmp     loc_14023BC57
; ---------------------------------------------------------------------------

loc_14023BD5D:                          ; CODE XREF: RtlRbInsertNodeEx+87↑j
                                        ; DATA XREF: .pdata:00000001400CB8E0↑o ...
                test    r8, r8
                jz      loc_14023B9AD
                xor     r8, rdx
                jmp     loc_14023B9AD
; ---------------------------------------------------------------------------

loc_14023BD6E:                          ; CODE XREF: RtlRbInsertNodeEx+92↑j
                test    rbx, rbx
                jz      loc_14023B9B8
                xor     rbx, r8
                jmp     loc_14023B9B8
; ---------------------------------------------------------------------------

loc_14023BD7F:                          ; CODE XREF: RtlRbInsertNodeEx+20B↑j
                test    rsi, rsi
                jz      loc_14042E728
                xor     rsi, r10
                jmp     loc_14023BB31
; ---------------------------------------------------------------------------

loc_14023BD90:                          ; CODE XREF: RtlRbInsertNodeEx+2FD↑j
                xor     rax, r10
                test    rsi, rsi
                cmovz   rax, r14
                jmp     loc_14023BC23
; ---------------------------------------------------------------------------

loc_14023BD9F:                          ; CODE XREF: RtlRbInsertNodeEx+224↑j
                test    rax, rax
                jz      loc_14023BB4A
                xor     rax, rdx
                jmp     loc_14023BB4A
; ---------------------------------------------------------------------------

loc_14023BDB0:                          ; CODE XREF: RtlRbInsertNodeEx+247↑j
                test    rax, rax
                jz      loc_14023BB6D
                xor     rax, r8
                jmp     loc_14023BB6D
; ---------------------------------------------------------------------------

loc_14023BDC1:                          ; CODE XREF: RtlRbInsertNodeEx+2B4↑j
                test    rcx, rcx
                jz      loc_14023BBE3
                xor     rcx, rdx
                jmp     loc_14023BBDA
; ---------------------------------------------------------------------------

loc_14023BDD2:                          ; CODE XREF: RtlRbInsertNodeEx+2C6↑j
                test    rcx, rcx
                jz      loc_14023BBEC
                xor     rcx, r8
                jmp     loc_14023BBEC
; ---------------------------------------------------------------------------

loc_14023BDE3:                          ; CODE XREF: RtlRbInsertNodeEx+118↑j
                xor     rbx, r8
                jmp     loc_14023B9D1
; ---------------------------------------------------------------------------

loc_14023BDEB:                          ; CODE XREF: RtlRbInsertNodeEx+261↑j
                test    rcx, rcx
                jz      loc_14023BD33
                xor     rcx, r8
                jmp     loc_14023BB87
; ---------------------------------------------------------------------------

loc_14023BDFC:                          ; CODE XREF: RtlRbInsertNodeEx+29A↑j
                test    rcx, rcx
                jz      loc_14023BBC0
                xor     rcx, rdx
                jmp     loc_14023BBC0
; ---------------------------------------------------------------------------

loc_14023BE0D:                          ; CODE XREF: RtlRbInsertNodeEx+D7↑j
                test    rdx, rdx
                jz      loc_14023BC2F
                xor     rdx, r8
                jmp     loc_14023B9FD
; ---------------------------------------------------------------------------

loc_14023BE1E:                          ; CODE XREF: RtlRbInsertNodeEx+13A↑j
                test    rax, rax
                jz      loc_14023BA60
                xor     rax, r9
                jmp     loc_14023BA60
; ---------------------------------------------------------------------------

loc_14023BE2F:                          ; CODE XREF: RtlRbInsertNodeEx+150↑j
                test    rax, rax
                jz      loc_14023BA76
                xor     rax, rdx
                jmp     loc_14023BA76
; ---------------------------------------------------------------------------

loc_14023BE40:                          ; CODE XREF: RtlRbInsertNodeEx+1BF↑j
                test    rcx, rcx
                jz      loc_14023BAEE
                xor     rcx, r9
                jmp     loc_14023BAE5
; ---------------------------------------------------------------------------

loc_14023BE51:                          ; CODE XREF: RtlRbInsertNodeEx+1D1↑j
                test    rcx, rcx
                jz      loc_14023BAF7
                xor     rcx, rdx
                jmp     loc_14023BAF7
; ---------------------------------------------------------------------------

loc_14023BE62:                          ; CODE XREF: RtlRbInsertNodeEx+277↑j
                test    rax, rax
                jz      loc_14023BB9D
                xor     rax, rcx
                jmp     loc_14023BB9D
; ---------------------------------------------------------------------------

loc_14023BE73:                          ; CODE XREF: RtlRbInsertNodeEx+342↑j
                                        ; DATA XREF: .pdata:00000001400CB8EC↑o ...
                mov     rax, r10
                xor     rax, r9
                mov     [r10+8], rax
                or      al, 1
                mov     [r10+8], al
                jmp     loc_14023B975
; ---------------------------------------------------------------------------

loc_14023BE88:                          ; CODE XREF: RtlRbInsertNodeEx+F9↑j
                                        ; DATA XREF: .pdata:00000001400CB8F8↑o ...
                test    rax, rax
                jz      loc_14023BA1F
                xor     rax, rdx
                jmp     loc_14023BA1F
; ---------------------------------------------------------------------------

loc_14023BE99:                          ; CODE XREF: RtlRbInsertNodeEx+359↑j
                                        ; DATA XREF: .pdata:00000001400CB904↑o ...
                mov     [r10], rdx
                jmp     loc_14023BC82
; ---------------------------------------------------------------------------

loc_14023BEA1:                          ; CODE XREF: RtlRbInsertNodeEx+365↑j
                mov     [r10+8], rdx
                or      dl, 1
                mov     [r10+8], dl
                mov     [r9+10h], r14
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14023BEB4:                          ; CODE XREF: RtlRbInsertNodeEx+3B6↑j
                                        ; DATA XREF: .pdata:00000001400CB910↑o ...
                test    rax, rax
                jz      loc_14023BCDC
                xor     rax, rcx
                jmp     loc_14023BCDC
; ---------------------------------------------------------------------------

loc_14023BEC5:                          ; CODE XREF: RtlRbInsertNodeEx+166↑j
                test    rax, rax
                jz      loc_14023BA8C
                xor     rax, r8
                jmp     loc_14023BA8C
; ---------------------------------------------------------------------------

loc_14023BED6:                          ; CODE XREF: RtlRbInsertNodeEx+180↑j
                test    rax, rax
                jz      loc_14023BAA6
                xor     rax, rdx
                jmp     loc_14023BAA6
; ---------------------------------------------------------------------------

loc_14023BEE7:                          ; CODE XREF: RtlRbInsertNodeEx+385↑j
                test    rax, rax
                jz      loc_14023BCAB
                xor     rax, rcx
                jmp     loc_14023BCAB
; ---------------------------------------------------------------------------

loc_14023BEF8:                          ; CODE XREF: RtlRbInsertNodeEx+3E8↑j
                test    rax, rax
                jz      loc_14023BD0E
                xor     rax, rcx
                jmp     loc_14023BD0E
RtlRbInsertNodeEx endp
